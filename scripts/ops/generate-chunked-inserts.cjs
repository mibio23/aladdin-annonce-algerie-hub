const fs = require('fs');
const path = require('path');

const rootDir = path.resolve(__dirname, '..', '..');
const auditReportPath = path.join(rootDir, 'menu-form-supabase-audit.json');
const dupReportPath = path.join(rootDir, 'subcategory-duplicate-slugs-audit.json');
const outputDir = path.join(rootDir, 'supabase', 'migrations');
const CHUNK_SIZE = 100;

if (!fs.existsSync(outputDir)) {
  fs.mkdirSync(outputDir, { recursive: true });
}

const report = JSON.parse(fs.readFileSync(auditReportPath, 'utf8'));
const dupReport = fs.existsSync(dupReportPath)
  ? JSON.parse(fs.readFileSync(dupReportPath, 'utf8'))
  : null;

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
    slug: cat.categorySlug,
    name: cat.categoryName,
    parent_id: null,
    level: 1,
    category_uuid: slugToUuid[cat.categorySlug],
    is_active: true,
    created_at: new Date().toISOString(),
    updated_at: new Date().toISOString()
  });

  for (const sub of cat.directSubcategories) {
    const isDup = dupSlugs.has(sub.slug);
    const finalSlug = isDup ? `${cat.categorySlug}-${sub.slug}` : sub.slug;
    if (!slugToUuid[finalSlug]) slugToUuid[finalSlug] = uuidv4();

    allEntries.push({
      slug: finalSlug,
      name: sub.name,
      parent_id: slugToUuid[cat.categorySlug] || null,
      level: 2,
      category_uuid: slugToUuid[finalSlug],
      is_active: true,
      created_at: new Date().toISOString(),
      updated_at: new Date().toISOString()
    });
  }

  for (const node of cat.allDescendants || []) {
    if (node.level < 3) continue;
    const isDup = dupSlugs.has(node.slug);
    const parentKey = node.parentSlug || cat.categorySlug;
    const finalSlug = isDup ? `${parentKey}-${node.slug}` : node.slug;
    if (!slugToUuid[finalSlug]) slugToUuid[finalSlug] = uuidv4();

    allEntries.push({
      slug: finalSlug,
      name: node.name,
      parent_id: slugToUuid[parentKey] || null,
      level: node.level,
      category_uuid: slugToUuid[finalSlug],
      is_active: true,
      created_at: new Date().toISOString(),
      updated_at: new Date().toISOString()
    });
  }
}

const totalEntries = allEntries.length;
const chunks = [];
for (let i = 0; i < allEntries.length; i += CHUNK_SIZE) {
  chunks.push(allEntries.slice(i, i + CHUNK_SIZE));
}
const totalChunks = chunks.length;

console.log(`Total entrées: ${totalEntries}`);
console.log(`Taille lot: ${CHUNK_SIZE}`);
console.log(`Nombre de lots: ${totalChunks}`);

const dateStr = '20260403000000';

for (let i = 0; i < chunks.length; i++) {
  const chunk = chunks[i];
  const chunkNum = String(i + 1).padStart(3, '0');
  const outputPath = path.join(outputDir, `${dateStr}_chunk_${chunkNum}_of_${totalChunks}_categories.sql`);

  const values = chunk.map((entry) => {
    const slug = entry.slug.replace(/'/g, "''");
    const name = entry.name.replace(/'/g, "''");
    const parentUuid = entry.parent_id || 'NULL';
    const uuid = entry.category_uuid;
    return `SELECT '${uuid}'::uuid AS category_uuid, '${slug}' AS slug, '${name}' AS name, ${parentUuid}::uuid AS parent_id, ${entry.level} AS level, ${entry.is_active} AS is_active, '${entry.created_at}' AS created_at, '${entry.updated_at}' AS updated_at`;
  }).join('\n  UNION ALL\n  ');

  let sql = `-- ============================================================\n`;
  sql += `-- CHUNK ${i + 1}/${totalChunks} — ${chunk.length} catégories\n`;
  sql += `-- Total: ${totalEntries} catégories\n`;
  sql += `-- Exécuter dans l'ordre dans Supabase SQL Editor\n`;
  sql += `-- ============================================================\n\n`;
  sql += `INSERT INTO public.categories\n`;
  sql += `  (category_uuid, slug, name, parent_id, level, is_active, created_at, updated_at)\n`;
  sql += `VALUES\n`;
  sql += `  ${values}\n`;
  sql += `ON CONFLICT (slug) DO UPDATE SET\n`;
  sql += `  name = EXCLUDED.name,\n`;
  sql += `  parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),\n`;
  sql += `  level = EXCLUDED.level,\n`;
  sql += `  category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),\n`;
  sql += `  updated_at = NOW();\n\n`;
  sql += `-- Lot ${i + 1} terminé: ${chunk.length} entrées\n`;

  fs.writeFileSync(outputPath, sql, 'utf8');
  process.stdout.write(`Lot ${i + 1}/${totalChunks}: ${chunk.length} entrées → ${path.basename(outputPath)}\n`);
}

fs.writeFileSync(
  path.join(rootDir, 'slug-to-uuid-map.json'),
  JSON.stringify(slugToUuid, null, 2),
  'utf8'
);

console.log('\n✅ Tous les lots SQL générés');
console.log(`📁 Répertoire: supabase/migrations/`);
console.log(`📊 Total lots: ${totalChunks}`);
console.log(`📊 Total entrées: ${totalEntries}`);
console.log(`📄 Mapping slug→uuid: slug-to-uuid-map.json`);
console.log('\n📋 ORDRE D\'EXÉCUTION:');
console.log('  1. Exécutez d\'abord le DDL (si pas encore fait):');
console.log('     supabase/migrations/20260402133000_sync_missing_menu_categories.sql');
console.log('  2. Exécutez les chunks dans l\'ordre numérique:');
console.log(`     20260403000000_chunk_001_of_${totalChunks}_categories.sql`);
console.log(`     ... jusqu'à 20260403000000_chunk_${String(totalChunks).padStart(3,'0')}_of_${totalChunks}_categories.sql`);
console.log('  3. Vérifiez: SELECT COUNT(*) FROM public.categories;');
