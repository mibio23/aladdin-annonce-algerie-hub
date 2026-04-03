const fs = require('fs');
const path = require('path');

const rootDir = path.resolve(__dirname, '..', '..');
const auditReportPath = path.join(rootDir, 'menu-form-supabase-audit.json');
const outputPath = path.join(rootDir, 'supabase', 'migrations', '20260402133000_sync_missing_menu_categories.sql');

if (!fs.existsSync(auditReportPath)) {
  console.error('❌ Rapport menu-form-supabase-audit.json introuvable');
  process.exit(1);
}

const report = JSON.parse(fs.readFileSync(auditReportPath, 'utf8'));

const escapeSql = (value) => String(value || '').replace(/'/g, "''");

const level2Rows = [];
const level3Rows = [];

for (const category of report.menuCategories || []) {
  for (const sub of category.directSubcategories || []) {
    level2Rows.push({
      name: sub.name,
      slug: sub.slug,
      root_slug: category.categorySlug,
    });
  }

  for (const node of category.allDescendants || []) {
    if (node.level === 3) {
      level3Rows.push({
        name: node.name,
        slug: node.slug,
        root_slug: category.categorySlug,
        parent_slug: node.parentSlug,
      });
    }
  }
}

const level2Values = level2Rows
  .map((r) => `  ('${escapeSql(r.name)}','${escapeSql(r.slug)}','${escapeSql(r.root_slug)}')`)
  .join(',\n');

const level3Values = level3Rows
  .map((r) => `  ('${escapeSql(r.name)}','${escapeSql(r.slug)}','${escapeSql(r.root_slug)}','${escapeSql(r.parent_slug)}')`)
  .join(',\n');

const sql = [
  'WITH level2(name, slug, root_slug) AS (',
  'VALUES',
  level2Values || "  ('','', '')",
  ')',
  'INSERT INTO public.categories (name, slug, parent_id, level, is_active, position_order)',
  'SELECT',
  '  l2.name,',
  '  l2.slug,',
  '  root.id AS parent_id,',
  '  2 AS level,',
  '  true AS is_active,',
  '  0 AS position_order',
  'FROM level2 l2',
  'JOIN public.categories root ON root.slug = l2.root_slug AND root.parent_id IS NULL',
  "WHERE l2.slug <> ''",
  '  AND NOT EXISTS (',
  '    SELECT 1 FROM public.categories c',
  '    WHERE c.slug = l2.slug AND c.parent_id = root.id',
  '  );',
  '',
  'WITH level3(name, slug, root_slug, parent_slug) AS (',
  'VALUES',
  level3Values || "  ('','', '', '')",
  ')',
  'INSERT INTO public.categories (name, slug, parent_id, level, is_active, position_order)',
  'SELECT',
  '  l3.name,',
  '  l3.slug,',
  '  parent.id AS parent_id,',
  '  3 AS level,',
  '  true AS is_active,',
  '  0 AS position_order',
  'FROM level3 l3',
  'JOIN public.categories root ON root.slug = l3.root_slug AND root.parent_id IS NULL',
  'JOIN public.categories parent ON parent.slug = l3.parent_slug AND parent.parent_id = root.id',
  "WHERE l3.slug <> ''",
  '  AND NOT EXISTS (',
  '    SELECT 1 FROM public.categories c',
  '    WHERE c.slug = l3.slug AND c.parent_id = parent.id',
  '  );',
  '',
].join('\n');

fs.writeFileSync(outputPath, sql, 'utf8');

console.log('✅ Migration SQL générée');
console.log(`📄 Fichier: ${path.basename(outputPath)}`);
console.log(`📊 L2: ${level2Rows.length} | L3: ${level3Rows.length}`);
