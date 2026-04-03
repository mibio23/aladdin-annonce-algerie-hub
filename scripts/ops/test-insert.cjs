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

const CHUNK = 50;
const chunks = [];
for (let i = 0; i < allEntries.length; i += CHUNK) chunks.push(allEntries.slice(i, i + CHUNK));

async function runInserts() {
  console.log(`Insertion en lots de ${CHUNK}...`);
  let ok = 0, err = 0;
  const errors = [];
  for (let i = 0; i < chunks.length; i++) {
    const chunk = chunks[i];
    const clean = chunk.map(e => ({
      category_uuid: e.category_uuid, slug: e.slug, name: e.name,
      parent_id: e.parent_id, level: e.level, is_active: e.is_active,
      created_at: e.created_at, updated_at: e.updated_at
    }));
    try {
      const r = await restUpsert('categories', clean);
      if (r.status === 201) { ok += chunk.length; console.log(`Lot ${i+1}/${chunks.length}: ✅ +${chunk.length}`); }
      else {
        err += chunk.length;
        console.log(`Lot ${i+1}/${chunks.length}: ❌ HTTP ${r.status} ${r.body.substring(0, 100)}`);
        errors.push({ lot: i+1, status: r.status, body: r.body.substring(0, 200) });
      }
    } catch (e) { err++; console.log(`Lot ${i+1}: ERR: ${e.message}`); }
    if (i < chunks.length - 1) await new Promise(res => setTimeout(res, 100));
  }
  return { ok, err, errors };
}

async function main() {
  console.log('============================================================');
  console.log(`Total: ${allEntries.length} catégories | ${chunks.length} lots`);
  console.log('============================================================');
  const result = await runInserts();
  console.log(`\nRésultat: ${result.ok} OK, ${result.err} erreurs`);
  if (result.errors.length > 0) {
    console.log('\nErreurs:');
    result.errors.forEach(e => console.log(`  Lot ${e.lot}: HTTP ${e.status} — ${e.body}`));
  }
}

main().catch(e => console.error('❌', e.message));
