const fs = require('fs');
const path = require('path');

const rootDir = path.resolve(__dirname, '..', '..');
const auditReportPath = path.join(rootDir, 'menu-form-supabase-audit.json');
const outputJsonPath = path.join(rootDir, 'subcategory-duplicate-slugs-audit.json');
const outputMdPath = path.join(rootDir, 'subcategory-duplicate-slugs-audit.md');

if (!fs.existsSync(auditReportPath)) {
  console.error('❌ Rapport menu-form-supabase-audit.json introuvable');
  process.exit(1);
}

const report = JSON.parse(fs.readFileSync(auditReportPath, 'utf8'));
const directMap = new Map();
const allMap = new Map();

for (const category of report.menuCategories || []) {
  for (const sub of category.directSubcategories || []) {
    if (!directMap.has(sub.slug)) directMap.set(sub.slug, []);
    directMap.get(sub.slug).push({
      rootCategory: category.categoryName,
      rootSlug: category.categorySlug,
      name: sub.name,
      slug: sub.slug,
      level: 2,
    });
  }

  for (const node of category.allDescendants || []) {
    if (!allMap.has(node.slug)) allMap.set(node.slug, []);
    allMap.get(node.slug).push({
      rootCategory: category.categoryName,
      rootSlug: category.categorySlug,
      name: node.name,
      slug: node.slug,
      level: node.level,
      parentSlug: node.parentSlug,
    });
  }
}

const directDuplicates = [...directMap.entries()]
  .filter(([, items]) => items.length > 1)
  .map(([slug, items]) => ({ slug, count: items.length, items }))
  .sort((a, b) => b.count - a.count || a.slug.localeCompare(b.slug));

const allDuplicates = [...allMap.entries()]
  .filter(([, items]) => items.length > 1)
  .map(([slug, items]) => ({ slug, count: items.length, items }))
  .sort((a, b) => b.count - a.count || a.slug.localeCompare(b.slug));

const result = {
  summary: {
    directDuplicateCount: directDuplicates.length,
    allDuplicateCount: allDuplicates.length,
  },
  directDuplicates,
  allDuplicates,
};

const mdLines = [
  '# Audit des slugs dupliqués',
  '',
  `- Slugs dupliqués au niveau des sous-catégories directes : ${directDuplicates.length}`,
  `- Slugs dupliqués dans toute l’arborescence : ${allDuplicates.length}`,
  '',
  '## Duplicats directs',
  '',
];

for (const duplicate of directDuplicates.slice(0, 100)) {
  mdLines.push(`### ${duplicate.slug} (${duplicate.count})`);
  for (const item of duplicate.items) {
    mdLines.push(`- ${item.rootSlug} → ${item.name}`);
  }
  mdLines.push('');
}

fs.writeFileSync(outputJsonPath, JSON.stringify(result, null, 2), 'utf8');
fs.writeFileSync(outputMdPath, mdLines.join('\n'), 'utf8');

console.log('✅ Audit des slugs dupliqués généré');
console.log(`📄 JSON: ${path.basename(outputJsonPath)}`);
console.log(`📄 Markdown: ${path.basename(outputMdPath)}`);
console.log(`📊 Duplicats directs: ${directDuplicates.length}`);
console.log(`📊 Duplicats globaux: ${allDuplicates.length}`);
