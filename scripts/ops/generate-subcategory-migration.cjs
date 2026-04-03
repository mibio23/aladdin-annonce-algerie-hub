const fs = require('fs');
const path = require('path');

const rootDir = path.resolve(__dirname, '..', '..');
const auditReportPath = path.join(rootDir, 'menu-form-supabase-audit.json');
const dupReportPath = path.join(rootDir, 'subcategory-duplicate-slugs-audit.json');
const outputMigrationPath = path.join(rootDir, 'supabase', 'migrations', '20260403000000_migrate_subcategories_to_uuid.sql');
const outputAnnouncementPath = path.join(rootDir, 'supabase', 'migrations', '20260403000001_migrate_announcements_subcategory_to_uuid.sql');

if (!fs.existsSync(auditReportPath)) {
  console.error('❌ Rapport menu-form-supabase-audit.json introuvable');
  process.exit(1);
}

const report = JSON.parse(fs.readFileSync(auditReportPath, 'utf8'));
const dupReport = fs.existsSync(dupReportPath)
  ? JSON.parse(fs.readFileSync(dupReportPath, 'utf8'))
  : null;

const slugToParent = {};
for (const cat of report.menuCategories) {
  for (const sub of cat.directSubcategories) {
    const key = `${cat.categorySlug}::${sub.slug}`;
    slugToParent[key] = { rootSlug: cat.categorySlug, rootName: cat.categoryName, name: sub.name, level: 2 };
  }
  for (const node of cat.allDescendants || []) {
    const key = `${cat.categorySlug}::${node.slug}`;
    if (!slugToParent[key]) {
      slugToParent[key] = { rootSlug: cat.categorySlug, rootName: cat.categoryName, name: node.name, level: node.level };
    }
  }
}

const globalSlugToRoots = {};
for (const [key, info] of Object.entries(slugToParent)) {
  const slug = key.split('::')[1];
  if (!globalSlugToRoots[slug]) globalSlugToRoots[slug] = [];
  globalSlugToRoots[slug].push(info);
}

const dupSlugs = new Set();
if (dupReport) {
  for (const d of dupReport.directDuplicates || []) dupSlugs.add(d.slug);
  for (const d of dupReport.allDuplicates || []) dupSlugs.add(d.slug);
}

const migrationRows = [];
const warnings = [];

for (const cat of report.menuCategories) {
  const parentSlug = cat.categorySlug;

  if (!dupSlugs.has(parentSlug)) {
    migrationRows.push({
      slug: parentSlug,
      name: cat.categoryName,
      parent_slug: null,
      level: 1,
      is_duplicate: false,
      ambiguity_note: null
    });
  } else {
    warnings.push(`⚠️ Catégorie racine DUPLIQUÉE ignorée : ${parentSlug}`);
  }

  for (const sub of cat.directSubcategories) {
    const key = `${parentSlug}::${sub.slug}`;
    const isDup = dupSlugs.has(sub.slug);
    const roots = globalSlugToRoots[sub.slug] || [];
    const ambiguityNote = isDup
      ? `AMBIGU — existe dans : ${roots.map(r => r.rootSlug).join(', ')}`
      : null;
    if (isDup) {
      warnings.push(`⚠️ Sous-catégorie DUPLIQUÉE : ${sub.slug} — ${ambiguityNote}`);
    }
    migrationRows.push({
      slug: sub.slug,
      name: sub.name,
      parent_slug: parentSlug,
      level: 2,
      is_duplicate: isDup,
      ambiguity_note: ambiguityNote
    });
  }

  for (const node of cat.allDescendants || []) {
    if (node.level < 3) continue;
    const isDup = dupSlugs.has(node.slug);
    const roots = globalSlugToRoots[node.slug] || [];
    const ambiguityNote = isDup
      ? `AMBIGU — existe dans : ${roots.map(r => r.rootSlug).join(', ')}`
      : null;
    if (isDup) {
      warnings.push(`⚠️ L3 DUPLIQUÉE : ${node.slug} — ${ambiguityNote}`);
    }
    migrationRows.push({
      slug: node.slug,
      name: node.name,
      parent_slug: node.parentSlug || parentSlug,
      level: node.level,
      is_duplicate: isDup,
      ambiguity_note: ambiguityNote
    });
  }
}

function uuidv4() {
  return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, c => {
    const r = Math.random() * 16 | 0;
    return (c === 'x' ? r : (r & 0x3 | 0x8)).toString(16);
  });
}

const slugToUuid = {};
for (const row of migrationRows) {
  slugToUuid[row.slug] = uuidv4();
}

let sql = `-- ============================================================\n`;
sql += `-- MIGRATION : Structure sous-catégories UUID\n`;
sql += `-- Généré automatiquement le ${new Date().toISOString()}\n`;
sql += `-- ============================================================\n\n`;

sql += `-- ============================================================\n`;
sql += `-- PHASE 1 : Ajouter la colonne category_uuid\n`;
sql += `-- ============================================================\n\n`;
sql += `ALTER TABLE public.categories\n`;
sql += `  ADD COLUMN IF NOT EXISTS category_uuid UUID DEFAULT gen_random_uuid();\n\n`;
sql += `UPDATE public.categories\n`;
sql += `  SET category_uuid = gen_random_uuid()\n`;
sql += `  WHERE category_uuid IS NULL;\n\n`;
sql += `ALTER TABLE public.categories\n`;
sql += `  ALTER COLUMN category_uuid SET NOT NULL;\n\n`;

sql += `-- ============================================================\n`;
sql += `-- PHASE 2 : Remplir category_uuid pour les catégories existantes\n`;
sql += `-- à partir de l'id si c'est un UUID, sinon générer\n`;
sql += `-- ============================================================\n\n`;
sql += `UPDATE public.categories\n`;
sql += `  SET category_uuid = id\n`;
sql += `  WHERE id::text ~ '^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$';\n\n`;
sql += `UPDATE public.categories\n`;
sql += `  SET category_uuid = gen_random_uuid()\n`;
sql += `  WHERE category_uuid IS NULL;\n\n`;

sql += `-- ============================================================\n`;
sql += `-- PHASE 3 : Ajouter la colonne subcategory_uuid\n`;
sql += `-- Announcements.subcategory_id reste en TEXT (slug) pour\n`;
sql += `-- la compatibilité URL, mais subcategory_uuid stocke l'UUID\n`;
sql += `-- ============================================================\n\n`;
sql += `ALTER TABLE public.announcements\n`;
sql += `  ADD COLUMN IF NOT EXISTS subcategory_uuid UUID;\n\n`;

sql += `-- ============================================================\n`;
sql += `-- PHASE 4 : Synchroniser les catégories depuis le MegaMenu\n`;
sql += `-- Stratégie : INSERT avec ON CONFLICT (slug)\n`;
sql += `-- Les slugs DUPLIQUÉS sont signalés + traités en Phase 5\n`;
sql += `-- ============================================================\n\n`;

const uniqueRows = migrationRows.filter(r => !r.is_duplicate);
const dupRows = migrationRows.filter(r => r.is_duplicate);

sql += `-- --- 4a. Catégories NON dupliquées (procédure safe) ---\n\n`;
sql += `DO $$\n`;
sql += `BEGIN\n`;

for (const row of uniqueRows) {
  const uuid = slugToUuid[row.slug];
  const parentUuid = row.parent_slug ? slugToUuid[row.parent_slug] : null;
  sql += `\n  -- ${row.name} (level ${row.level})`;
  if (row.ambiguity_note) sql += ` — ${row.ambiguity_note}`;
  sql += `\n`;
  sql += `  INSERT INTO public.categories (slug, name, parent_id, level, category_uuid, is_active, created_at, updated_at)\n`;
  sql += `  VALUES (\n`;
  sql += `    '${row.slug}',\n`;
  sql += `    '${row.name.replace(/'/g, "''")}',\n`;
  sql += `    ${parentUuid ? `'${parentUuid}'` : 'NULL'},\n`;
  sql += `    ${row.level},\n`;
  sql += `    '${uuid}'::uuid,\n`;
  sql += `    true,\n`;
  sql += `    NOW(),\n`;
  sql += `    NOW()\n`;
  sql += `  )\n`;
  sql += `  ON CONFLICT (slug) DO UPDATE SET\n`;
  sql += `    name = EXCLUDED.name,\n`;
  sql += `    parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),\n`;
  sql += `    level = EXCLUDED.level,\n`;
  sql += `    category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),\n`;
  sql += `    updated_at = NOW();\n`;
}

sql += `\nEXCEPTION WHEN OTHERS THEN\n`;
sql += `  RAISE NOTICE 'Erreur insertion catégories safe: %', SQLERRM;\n`;
sql += `END $$;\n\n`;

sql += `-- --- 4b. AVERTISSEMENT : Catégories DUPLIQUÉES ---\n`;
sql += `-- Ces ${dupRows.length} entrées ont des slugs en double dans le MegaMenu.\n`;
sql += `-- Elles nécesitent un traitement MANUEL ou une resolution d'ambiguité.\n\n`;
sql += `-- Liste des slugs dupliqués à traiter manuellement :\n`;
const dupSlugNames = [...new Set(dupRows.map(r => r.slug))];
for (const slug of dupSlugNames) {
  const examples = dupRows.filter(r => r.slug === slug);
  sql += `--   ${slug} → ${examples.map(e => `${e.parent_slug}::${e.name}`).join(' | ')}\n`;
}
sql += `\n`;

sql += `-- ============================================================\n`;
sql += `-- PHASE 5 : Résoudre les sous-catégories dupliquées manuellement\n`;
sql += `--.stratégie recommandée : suffixer le slug avec le parent\n`;
sql += `-- Ex : smartphones (telephonie) + smartphones (info-electronique)\n`;
sql += `-- → telephonie-smartphones + info-electronique-smartphones\n`;
sql += `-- ============================================================\n\n`;

for (const slug of dupSlugNames) {
  const examples = dupRows.filter(r => r.slug === slug);
  sql += `-- --- ${slug} ---\n`;
  sql += `-- Ambigu : ${examples.map(e => `${e.parent_slug}::${e.name}`).join(' | ')}\n`;
  for (const ex of examples) {
    const newSlug = `${ex.parent_slug}-${ex.slug}`;
    const uuid = slugToUuid[`${ex.parent_slug}-${ex.slug}`] || uuidv4();
    sql += `  -- vers ${newSlug}\n`;
    sql += `  INSERT INTO public.categories (slug, name, parent_id, level, category_uuid, is_active, created_at, updated_at)\n`;
    sql += `  VALUES (\n`;
    sql += `    '${newSlug}',\n`;
    sql += `    '${ex.name.replace(/'/g, "''")}',\n`;
    sql += `    ${ex.parent_slug ? `'${slugToUuid[ex.parent_slug]}'` : 'NULL'},\n`;
    sql += `    ${ex.level},\n`;
    sql += `    '${uuid}'::uuid,\n`;
    sql += `    true, NOW(), NOW()\n`;
    sql += `  )\n`;
    sql += `  ON CONFLICT (slug) DO NOTHING; -- déja inséré peut-être\n\n`;
  }
}

sql += `-- ============================================================\n`;
sql += `-- PHASE 6 : Index et contraintes\n`;
sql += `-- ============================================================\n\n`;
sql += `CREATE UNIQUE INDEX IF NOT EXISTS idx_categories_category_uuid ON public.categories(category_uuid);\n`;
sql += `CREATE INDEX IF NOT EXISTS idx_categories_parent_uuid ON public.categories(parent_id);\n`;
sql += `CREATE INDEX IF NOT EXISTS idx_categories_slug ON public.categories(slug);\n`;
sql += `CREATE INDEX IF NOT EXISTS idx_announcements_subcategory_uuid ON public.announcements(subcategory_uuid);\n\n`;

sql += `-- ============================================================\n`;
sql += `-- PHASE 7 : Trigger de sync auto subcategory_uuid\n`;
sql += `-- Quand on insère une annonce avec subcategory_id (slug),\n`;
sql += `-- on resolve automatiquement le subcategory_uuid\n`;
sql += `-- ============================================================\n\n`;
sql += `CREATE OR REPLACE FUNCTION public.resolve_subcategory_uuid()\n`;
sql += `RETURNS TRIGGER AS $$\n`;
sql += `BEGIN\n`;
sql += `  IF NEW.subcategory_id IS NOT NULL AND NEW.subcategory_uuid IS NULL THEN\n`;
sql += `    SELECT c.category_uuid INTO NEW.subcategory_uuid\n`;
sql += `    FROM public.categories c\n`;
sql += `    WHERE c.slug = NEW.subcategory_id\n`;
sql += `    LIMIT 1;\n`;
sql += `  END IF;\n`;
sql += `  RETURN NEW;\n`;
sql += `END;\n`;
sql += `$$ LANGUAGE plpgsql;\n\n`;
sql += `DROP TRIGGER IF EXISTS trg_resolve_subcategory_uuid ON public.announcements;\n`;
sql += `CREATE TRIGGER trg_resolve_subcategory_uuid\n`;
sql += `  BEFORE INSERT OR UPDATE OF subcategory_id ON public.announcements\n`;
sql += `  FOR EACH ROW\n`;
sql += `  EXECUTE FUNCTION public.resolve_subcategory_uuid();\n\n`;

fs.writeFileSync(outputMigrationPath, sql, 'utf8');
console.log('✅ Migration categories UUID générée');
console.log(`📄 Fichier: ${path.basename(outputMigrationPath)}`);
console.log(`📊 Total entrées: ${migrationRows.length}`);
console.log(`📊 Uniques (safe): ${uniqueRows.length}`);
console.log(`📊 Dupliqués (manuels): ${dupRows.length}`);
console.log(`⚠️ Avertissements: ${warnings.length}`);

let annSql = `-- ============================================================\n`;
annSql += `-- MIGRATION : Converter announcements.subcategory_id slug → UUID\n`;
annSql += `-- Généré automatiquement le ${new Date().toISOString()}\n`;
annSql += `-- ============================================================\n\n`;

annSql += `-- Ce script converts existing announcements.subcategory_id (slug text)\n`;
annSql += `-- to use category_uuid via the newly populated categories table.\n`;
annSql += `-- Run AFTER the categories migration above.\n\n`;

annSql += `-- Vérification avant migration\n`;
annSql += `SELECT\n`;
annSql += `  COUNT(*) FILTER (WHERE subcategory_id IS NOT NULL AND subcategory_id != '') AS avec_slug,\n`;
annSql += `  COUNT(*) FILTER (WHERE subcategory_uuid IS NOT NULL) AS avec_uuid,\n`;
annSql += `  COUNT(*) FILTER (WHERE subcategory_id IS NOT NULL AND subcategory_id != '' AND subcategory_uuid IS NULL) AS a_convertir\n`;
annSql += `FROM public.announcements;\n\n`;

annSql += `-- Conversion slug → UUID pour les annonces existantes\n`;
annSql += `UPDATE public.announcements a\n`;
annSql += `SET subcategory_uuid = c.category_uuid\n`;
annSql += `FROM public.categories c\n`;
annSql += `WHERE a.subcategory_id = c.slug\n`;
annSql += `  AND a.subcategory_uuid IS NULL\n`;
annSql += `  AND a.subcategory_id IS NOT NULL\n`;
annSql += `  AND a.subcategory_id != '';\n\n`;

annSql += `-- Vérification après migration\n`;
annSql += `SELECT\n`;
annSql += `  COUNT(*) FILTER (WHERE subcategory_id IS NOT NULL AND subcategory_id != '') AS restant_avec_slug,\n`;
annSql += `  COUNT(*) FILTER (WHERE subcategory_uuid IS NOT NULL) AS avec_uuid,\n`;
annSql += `  COUNT(*) FILTER (WHERE subcategory_id IS NOT NULL AND subcategory_id != '' AND subcategory_uuid IS NULL) AS non_converti\n`;
annSql += `FROM public.announcements;\n\n`;

annSql += `-- Annonces non converties (slug introuvable dans categories)\n`;
annSql += `-- Ces cas doivent être traités manuellement\n`;
annSql += `SELECT id, title, subcategory_id, category_id\n`;
annSql += `FROM public.announcements\n`;
annSql += `WHERE subcategory_id IS NOT NULL\n`;
annSql += `  AND subcategory_id != ''\n`;
annSql += `  AND subcategory_uuid IS NULL\n`;
annSql += `ORDER BY created_at DESC;\n\n`;

annSql += `-- Nettoyage optionnel : une fois TOUTES les annonces converties,\n`;
annSql += `-- vous pouvez DROP la colonne subcategory_id si vous êtes sûr\n`;
annSql += `-- que plus aucune ancienne данные ne reste\n`;
annSql += `-- ALTER TABLE public.announcements DROP COLUMN IF EXISTS subcategory_id;\n\n`;

annSql += `-- IMPORTANT : Gardez subcategory_id en l'état pour l'instant\n`;
annSql += `-- car les URLs du site utilisent les slugs.\n`;
annSql += `-- La colonne subcategory_uuid est un champ technique de référence.\n`;
annSql += `-- Une future étape de refonte d'URL pourra remplacer\n`;
annSql += `-- les slugs par des UUIDs ou une autre clé stable.\n\n`;

fs.writeFileSync(outputAnnouncementPath, annSql, 'utf8');
console.log('✅ Migration announcements subcategory UUID générée');
console.log(`📄 Fichier: ${path.basename(outputAnnouncementPath)}`);

if (warnings.length > 0) {
  console.log('\n⚠️ AVERTISSEMENTS À CONSIDÉRER :');
  warnings.slice(0, 20).forEach(w => console.log(w));
  if (warnings.length > 20) console.log(`... et ${warnings.length - 20} autres`);
}
