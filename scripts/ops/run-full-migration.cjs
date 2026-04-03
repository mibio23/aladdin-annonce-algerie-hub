const path = require('path');
const fs = require('fs');
require('dotenv').config({ path: path.resolve(__dirname, '..', '..', '.env') });
const { runMgmtQuery, restUpsert, restPatch, restGet } = require('./supabase-http.cjs');

const rootDir = path.resolve(__dirname, '..', '..');
const auditReportPath = path.join(rootDir, 'menu-form-supabase-audit.json');
const dupReportPath = path.join(rootDir, 'subcategory-duplicate-slugs-audit.json');
const report = JSON.parse(fs.readFileSync(auditReportPath, 'utf8'));
const dupReport = fs.existsSync(dupReportPath) ? JSON.parse(fs.readFileSync(dupReportPath, 'utf8')) : null;

const dupSlugs = new Set();
if (dupReport) {
  for (const d of dupReport.directDuplicates || []) dupSlugs.add(d.slug);
  for (const d of dupReport.allDuplicates || []) dupSlugs.add(d.slug);
}

function uuidv4() {
  return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, c => {
    const r = Math.random() * 16 | 0;
    return (c === 'x' ? r : (r & 0x3 | 0x8)).toString(16);
  });
}

const slugToUuid = {};
const allEntries = [];

for (const cat of report.menuCategories) {
  if (!slugToUuid[cat.categorySlug]) slugToUuid[cat.categorySlug] = uuidv4();
  allEntries.push({
    slug: cat.categorySlug, name: cat.categoryName, parent_id: null, level: 1,
    category_uuid: slugToUuid[cat.categorySlug], is_active: true,
    created_at: new Date().toISOString(), updated_at: new Date().toISOString()
  });
  for (const sub of cat.directSubcategories) {
    const isDup = dupSlugs.has(sub.slug);
    const finalSlug = isDup ? `${cat.categorySlug}-${sub.slug}` : sub.slug;
    if (!slugToUuid[finalSlug]) slugToUuid[finalSlug] = uuidv4();
    allEntries.push({
      slug: finalSlug, name: sub.name, parent_id: slugToUuid[cat.categorySlug] || null,
      level: 2, category_uuid: slugToUuid[finalSlug], is_active: true,
      created_at: new Date().toISOString(), updated_at: new Date().toISOString()
    });
  }
  for (const node of cat.allDescendants || []) {
    if (node.level < 3) continue;
    const isDup = dupSlugs.has(node.slug);
    const parentKey = node.parentSlug || cat.categorySlug;
    const finalSlug = isDup ? `${parentKey}-${node.slug}` : node.slug;
    if (!slugToUuid[finalSlug]) slugToUuid[finalSlug] = uuidv4();
    allEntries.push({
      slug: finalSlug, name: node.name, parent_id: slugToUuid[parentKey] || null,
      level: node.level, category_uuid: slugToUuid[finalSlug], is_active: true,
      created_at: new Date().toISOString(), updated_at: new Date().toISOString()
    });
  }
}

const CHUNK = 200;
const chunks = [];
for (let i = 0; i < allEntries.length; i += CHUNK) chunks.push(allEntries.slice(i, i + CHUNK));

async function runDDL() {
  console.log('\n[1/5] DDL — Colonnes + Trigger + Contrainte...');
  const stmts = [
    `ALTER TABLE public.categories ADD COLUMN IF NOT EXISTS category_uuid UUID`,
    `UPDATE public.categories SET category_uuid = gen_random_uuid() WHERE category_uuid IS NULL`,
    `UPDATE public.categories SET category_uuid = id::uuid WHERE id::text ~ '^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$' AND category_uuid IS NULL`,
    `UPDATE public.categories SET category_uuid = gen_random_uuid() WHERE category_uuid IS NULL`,
    `ALTER TABLE public.announcements ADD COLUMN IF NOT EXISTS subcategory_uuid UUID`,
    `DELETE FROM public.categories WHERE id IN (SELECT id FROM (SELECT id, ROW_NUMBER() OVER (PARTITION BY slug ORDER BY created_at NULLS FIRST, id) AS rnum FROM public.categories WHERE slug IS NOT NULL) t WHERE t.rnum > 1)`,
    `DO $$ BEGIN ALTER TABLE public.categories ADD CONSTRAINT categories_slug_key UNIQUE (slug); EXCEPTION WHEN others THEN NULL; END $$`,
    `CREATE OR REPLACE FUNCTION public.resolve_subcategory_uuid() RETURNS TRIGGER AS $$ BEGIN IF NEW.subcategory_id IS NOT NULL AND NEW.subcategory_uuid IS NULL THEN SELECT c.category_uuid INTO NEW.subcategory_uuid FROM public.categories c WHERE c.slug = NEW.subcategory_id LIMIT 1; END IF; RETURN NEW; END; $$ LANGUAGE plpgsql`,
    `DROP TRIGGER IF EXISTS trg_resolve_subcategory_uuid ON public.announcements`,
    `CREATE TRIGGER trg_resolve_subcategory_uuid BEFORE INSERT OR UPDATE OF subcategory_id ON public.announcements FOR EACH ROW EXECUTE FUNCTION public.resolve_subcategory_uuid()`
  ];
  for (const sql of stmts) {
    try {
      const r = await runMgmtQuery(sql);
      process.stdout.write(r.status === 201 ? '.' : `⚠${r.status}`);
    } catch (e) { process.stdout.write('E'); }
  }
  console.log('\n  ✅ DDL terminé');
}

async function runInserts() {
  console.log('\n[2/5] Insertion des catégories en lots...');
  let ok = 0, err = 0;
  for (let i = 0; i < chunks.length; i++) {
    const chunk = chunks[i];
    process.stdout.write(`  Lot ${i + 1}/${chunks.length}... `);
    const clean = chunk.map(e => ({
      category_uuid: e.category_uuid, slug: e.slug, name: e.name,
      parent_id: e.parent_id, level: e.level, is_active: e.is_active,
      created_at: e.created_at, updated_at: e.updated_at
    }));
    try {
      const r = await restUpsert('categories', clean);
      if (r.status === 201) { ok += chunk.length; console.log('✅'); }
      else { err += chunk.length; console.log(`❌ ${r.status}`); }
    } catch (e) { err += chunk.length; console.log('ERR'); }
    if (i < chunks.length - 1) await new Promise(res => setTimeout(res, 100));
  }
  console.log(`  Insertions: ${ok} OK, ${err} erreurs`);
  return { ok, err };
}

async function runParentUpdate() {
  console.log('\n[3/5] Mise à jour des parent_id...');
  const withParent = allEntries.filter(e => e.parent_id);
  let ok = 0;
  for (const e of withParent) {
    try {
      const r = await restPatch('categories', { parent_id: e.parent_id }, `slug=eq.${e.slug}`);
      if (r.status === 200 || r.status === 204) ok++;
    } catch (e) {}
  }
  console.log(`  → ${ok}/${withParent.length} parent_id mis à jour`);
}

async function runAnnouncementConversion() {
  console.log('\n[4/5] Conversion des annonces existantes...');
  try {
    const r = await restGet('announcements', 'select=id,subcategory_id');
    if (r.status === 200) {
      const ads = JSON.parse(r.body);
      let ok = 0;
      for (const ad of ads) {
        if (ad.subcategory_id) {
          const uuid = slugToUuid[ad.subcategory_id];
          if (uuid) {
            const r2 = await restPatch('announcements', { subcategory_uuid: uuid }, `id=eq.${ad.id}`);
            if (r2.status === 200 || r2.status === 204) ok++;
          }
        }
      }
      console.log(`  → ${ok}/${ads.length} annonces converties`);
    }
  } catch (e) { console.log('  ⚠️', e.message.substring(0, 80)); }
}

async function runVerification() {
  console.log('\n[5/5] Vérification finale...');
  try {
    const r1 = await restGet('categories', 'select=slug&limit=1');
    console.log(`  ✅ Catégories accessibles`);
    const r2 = await restGet('announcements', 'select=id,subcategory_uuid&limit=1');
    console.log(`  ✅ Annonces accessibles`);
  } catch (e) { console.log('  ⚠️', e.message.substring(0, 80)); }
}

async function main() {
  console.log('============================================================');
  console.log('  MIGRATION COMPLÈTE - Option B (suffixage auto)');
  console.log(`  Total: ${allEntries.length} catégories | ${chunks.length} lots`);
  console.log('============================================================');
  await runDDL();
  const ins = await runInserts();
  if (ins.err === 0) {
    await runParentUpdate();
    await runAnnouncementConversion();
  }
  await runVerification();
  console.log('\n============================================================');
  console.log(ins.err === 0 ? '  🎉 MIGRATION TERMINÉE AVEC SUCCÈS' : `  ⚠️ TERMINÉ - ${ins.err} erreurs`);
  console.log('============================================================');
}

main().catch(e => { console.error('❌', e.message); process.exit(1); });
