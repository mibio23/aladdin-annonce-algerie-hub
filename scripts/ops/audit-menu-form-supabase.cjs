const fs = require('fs');
const path = require('path');
const dotenv = require('dotenv');
const { createClient } = require('@supabase/supabase-js');

dotenv.config();

const rootDir = path.resolve(__dirname, '..', '..');
const srcDir = path.join(rootDir, 'src');
const categoryMenuPath = path.join(srcDir, 'data', 'megaMenu', 'categoryMenu.ts');
const depositFormPath = path.join(srcDir, 'pages', 'DeposerAnnonce.tsx');
const completeFormPath = path.join(srcDir, 'pages', 'CreateAnnouncementComplete.tsx');
const reportJsonPath = path.join(rootDir, 'menu-form-supabase-audit.json');
const reportMdPath = path.join(rootDir, 'menu-form-supabase-audit.md');

const supabaseUrl = process.env.VITE_SUPABASE_URL || process.env.SUPABASE_URL;
const supabaseKey =
  process.env.SUPABASE_SERVICE_KEY ||
  process.env.SUPABASE_SERVICE_ROLE_KEY ||
  process.env.SUPABASE_SERVICE_ROLE ||
  process.env.VITE_SUPABASE_PUBLISHABLE_KEY ||
  process.env.VITE_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseKey) {
  console.error("❌ Variables d'environnement Supabase manquantes");
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseKey);

function extractImportMap(content) {
  const importMap = new Map();
  const regex = /import\s+\{\s*([A-Za-z0-9_]+)\s*\}\s+from\s+"(@\/[^"]+)";/g;
  let match;
  while ((match = regex.exec(content))) {
    importMap.set(match[1], match[2]);
  }
  return importMap;
}

function extractFrenchAliases(content) {
  const frMatch = content.match(/fr:\s*\[([\s\S]*?)\],\s*en:/);
  if (!frMatch) return [];
  return frMatch[1]
    .split(',')
    .map((item) => item.trim())
    .filter(Boolean);
}

function resolveAliasImport(importPath) {
  return path.join(srcDir, importPath.replace('@/', '').replace(/\//g, path.sep)) + '.tsx';
}

function findMatchingBracket(text, startIndex, openChar, closeChar) {
  let depth = 0;
  for (let i = startIndex; i < text.length; i++) {
    const char = text[i];
    if (char === openChar) depth++;
    if (char === closeChar) depth--;
    if (depth === 0) return i;
  }
  return -1;
}

function extractTopLevelField(block, fieldName) {
  const regex = new RegExp(`${fieldName}:\\s*["'\`](.*?)["'\`]`);
  return block.match(regex)?.[1] || '';
}

function extractDirectObjects(arrayContent) {
  const objects = [];
  let depth = 0;
  let start = -1;

  for (let i = 0; i < arrayContent.length; i++) {
    const char = arrayContent[i];
    if (char === '{') {
      if (depth === 0) start = i;
      depth++;
    } else if (char === '}') {
      depth--;
      if (depth === 0 && start !== -1) {
        objects.push(arrayContent.slice(start, i + 1));
        start = -1;
      }
    }
  }

  return objects;
}

function extractNodesFromArrayContent(arrayContent, level = 2, parentSlug = null) {
  return extractDirectObjects(arrayContent).map((subBlock) => {
    const node = {
      name: extractTopLevelField(subBlock, 'name'),
      slug: extractTopLevelField(subBlock, 'slug'),
      level,
      parentSlug,
      children: [],
    };

    const subcategoriesIndex = subBlock.indexOf('subcategories:');
    if (subcategoriesIndex !== -1) {
      const arrayStart = subBlock.indexOf('[', subcategoriesIndex);
      if (arrayStart !== -1) {
        const arrayEnd = findMatchingBracket(subBlock, arrayStart, '[', ']');
        if (arrayEnd !== -1) {
          const nestedContent = subBlock.slice(arrayStart + 1, arrayEnd);
          node.children = extractNodesFromArrayContent(nestedContent, level + 1, node.slug);
        }
      }
    }

    return node;
  }).filter((item) => item.slug);
}

function flattenNodes(nodes) {
  const result = [];
  for (const node of nodes) {
    result.push({
      name: node.name,
      slug: node.slug,
      level: node.level,
      parentSlug: node.parentSlug,
    });
    result.push(...flattenNodes(node.children || []));
  }
  return result;
}

function extractCategoryStructure(filePath) {
  const content = fs.readFileSync(filePath, 'utf8');
  const exportConstIndex = content.search(/export\s+const\s+[A-Za-z0-9_]+\s*:\s*MenuCategory\s*=\s*\{/);
  if (exportConstIndex === -1) {
    throw new Error(`Export MenuCategory introuvable dans ${filePath}`);
  }
  const exportStart = content.indexOf('{', exportConstIndex);
  const exportEnd = findMatchingBracket(content, exportStart, '{', '}');
  const objectBlock = content.slice(exportStart, exportEnd + 1);
  const categoryName = extractTopLevelField(objectBlock, 'name');
  const categorySlug = extractTopLevelField(objectBlock, 'slug');
  const subcategoriesIndex = objectBlock.indexOf('subcategories:');
  const arrayStart = objectBlock.indexOf('[', subcategoriesIndex);
  const arrayEnd = findMatchingBracket(objectBlock, arrayStart, '[', ']');
  const subcategoriesBlock = objectBlock.slice(arrayStart + 1, arrayEnd);
  const subcategoryTree = extractNodesFromArrayContent(subcategoriesBlock, 2, categorySlug);
  const directSubcategories = subcategoryTree.map((item) => ({ name: item.name, slug: item.slug }));
  const allDescendants = flattenNodes(subcategoryTree);

  return {
    filePath,
    categoryName,
    categorySlug,
    directSubcategories,
    allDescendants,
  };
}

function extractFormSignals(filePath) {
  const content = fs.readFileSync(filePath, 'utf8');
  return {
    hasRequiredStarOnSubcategory: /createAd\.subcategory[\s\S]{0,200}\*/.test(content),
    validatesSubcategoryAsRequired: /missingFields\.push\('subcategory_id'\)|missingRequired\.subcategory_id|newMissingFields\.push\('subcategory_id'\)/.test(content),
    storesCategorySlug: /category_slug:/.test(content),
    storesSubcategoryId: /subcategory_id:/.test(content),
  };
}

function buildMarkdown(report) {
  const lines = [];
  lines.push('# Audit Menu / Formulaire / Supabase');
  lines.push('');
  lines.push(`- Catégories principales du MegaMenu: ${report.summary.menuTopLevelCount}`);
  lines.push(`- Sous-catégories directes du MegaMenu: ${report.summary.menuDirectSubcategoryCount}`);
  lines.push(`- Sous-catégories totales du MegaMenu: ${report.summary.menuAllDescendantCount}`);
  lines.push(`- Catégories en base: ${report.summary.dbCategoryCount}`);
  lines.push(`- Sous-catégories en base: ${report.summary.dbSubcategoryCount}`);
  lines.push(`- Catégories principales manquantes en base: ${report.missing.topLevel.length}`);
  lines.push(`- Sous-catégories directes manquantes en base: ${report.missing.directSubcategories.length}`);
  lines.push(`- Sous-catégories totales manquantes en base: ${report.missing.allDescendants.length}`);
  lines.push('');
  lines.push('## Tableau maître');
  lines.push('');
  for (const category of report.menuCategories) {
    lines.push(`### ${category.categoryName} (${category.categorySlug})`);
    if (!category.directSubcategories.length) {
      lines.push('- Aucune sous-catégorie directe');
    } else {
      for (const sub of category.directSubcategories) {
        lines.push(`- ${sub.name} (${sub.slug})`);
      }
    }
    lines.push('');
  }
  lines.push('## Manques détectés côté base');
  lines.push('');
  if (!report.missing.topLevel.length && !report.missing.directSubcategories.length) {
    lines.push('- Aucun manque détecté');
  } else {
    for (const item of report.missing.topLevel) {
      lines.push(`- Catégorie principale manquante: ${item.categoryName} (${item.categorySlug})`);
    }
    for (const item of report.missing.directSubcategories) {
      lines.push(`- Sous-catégorie manquante: ${item.parentSlug} > ${item.slug}`);
    }
  }
  lines.push('');
  return lines.join('\n');
}

async function run() {
  const categoryMenuContent = fs.readFileSync(categoryMenuPath, 'utf8');
  const importMap = extractImportMap(categoryMenuContent);
  const frenchAliases = extractFrenchAliases(categoryMenuContent);

  const menuCategories = frenchAliases.map((alias) => {
    const importPath = importMap.get(alias);
    if (!importPath) {
      throw new Error(`Import introuvable pour ${alias}`);
    }
    const filePath = resolveAliasImport(importPath);
    return extractCategoryStructure(filePath);
  });

  const { data: dbCategories, error: dbError } = await supabase
    .from('categories')
    .select('id, name, slug, parent_id, is_active, level')
    .order('name');

  if (dbError) {
    throw dbError;
  }

  const dbCategoryList = dbCategories || [];
  const dbTopLevel = dbCategoryList.filter((cat) => !cat.parent_id);
  const dbBySlug = new Map(dbCategoryList.map((cat) => [cat.slug, cat]));
  const dbChildrenByParentId = new Map();

  for (const cat of dbCategoryList) {
    const parentKey = cat.parent_id || '__root__';
    if (!dbChildrenByParentId.has(parentKey)) dbChildrenByParentId.set(parentKey, []);
    dbChildrenByParentId.get(parentKey).push(cat);
  }

  const missingTopLevel = [];
  const missingDirectSubcategories = [];
  const missingAllDescendants = [];

  for (const category of menuCategories) {
    const dbTop = dbBySlug.get(category.categorySlug);
    if (!dbTop) {
      missingTopLevel.push({
        categoryName: category.categoryName,
        categorySlug: category.categorySlug,
      });
      continue;
    }

    const children = dbChildrenByParentId.get(dbTop.id) || [];
    const childSlugSet = new Set(children.map((item) => item.slug));

    for (const sub of category.directSubcategories) {
      if (!childSlugSet.has(sub.slug)) {
        missingDirectSubcategories.push({
          parentName: category.categoryName,
          parentSlug: category.categorySlug,
          name: sub.name,
          slug: sub.slug,
        });
      }
    }

    const knownSlugs = new Set(dbCategoryList.map((item) => item.slug));
    for (const node of category.allDescendants) {
      if (!knownSlugs.has(node.slug)) {
        missingAllDescendants.push({
          rootCategorySlug: category.categorySlug,
          parentSlug: node.parentSlug,
          name: node.name,
          slug: node.slug,
          level: node.level,
        });
      }
    }
  }

  const depositFormSignals = extractFormSignals(depositFormPath);
  const completeFormSignals = extractFormSignals(completeFormPath);

  const report = {
    summary: {
      menuTopLevelCount: menuCategories.length,
      menuDirectSubcategoryCount: menuCategories.reduce((sum, category) => sum + category.directSubcategories.length, 0),
      menuAllDescendantCount: menuCategories.reduce((sum, category) => sum + category.allDescendants.length, 0),
      dbCategoryCount: dbCategoryList.length,
      dbSubcategoryCount: dbCategoryList.filter((cat) => !!cat.parent_id).length,
    },
    form: {
      deposit: depositFormSignals,
      complete: completeFormSignals,
    },
    menuCategories,
    missing: {
      topLevel: missingTopLevel,
      directSubcategories: missingDirectSubcategories,
      allDescendants: missingAllDescendants,
    },
  };

  fs.writeFileSync(reportJsonPath, JSON.stringify(report, null, 2), 'utf8');
  fs.writeFileSync(reportMdPath, buildMarkdown(report), 'utf8');

  console.log('\n📊 AUDIT MENU / FORMULAIRE / SUPABASE');
  console.log('='.repeat(70));
  console.log(`Catégories principales du MegaMenu: ${report.summary.menuTopLevelCount}`);
  console.log(`Sous-catégories directes du MegaMenu: ${report.summary.menuDirectSubcategoryCount}`);
  console.log(`Sous-catégories totales du MegaMenu: ${report.summary.menuAllDescendantCount}`);
  console.log(`Catégories en base: ${report.summary.dbCategoryCount}`);
  console.log(`Sous-catégories en base: ${report.summary.dbSubcategoryCount}`);
  console.log(`Catégories principales manquantes en base: ${report.missing.topLevel.length}`);
  console.log(`Sous-catégories directes manquantes en base: ${report.missing.directSubcategories.length}`);
  console.log(`Sous-catégories totales manquantes en base: ${report.missing.allDescendants.length}`);
  console.log(`Formulaire dépôt → étoile rouge sous-catégorie: ${report.form.deposit.hasRequiredStarOnSubcategory ? 'OUI' : 'NON'}`);
  console.log(`Formulaire complet → étoile rouge sous-catégorie: ${report.form.complete.hasRequiredStarOnSubcategory ? 'OUI' : 'NON'}`);
  console.log(`Formulaire dépôt → sous-catégorie validée obligatoire: ${report.form.deposit.validatesSubcategoryAsRequired ? 'OUI' : 'NON'}`);
  console.log(`Formulaire complet → sous-catégorie validée obligatoire: ${report.form.complete.validatesSubcategoryAsRequired ? 'OUI' : 'NON'}`);
  console.log(`\n💾 Rapport JSON: ${path.basename(reportJsonPath)}`);
  console.log(`💾 Rapport Markdown: ${path.basename(reportMdPath)}`);

  if (report.missing.topLevel.length > 0) {
    console.log('\n⚠️ Catégories principales manquantes:');
    report.missing.topLevel.slice(0, 10).forEach((item) => {
      console.log(`- ${item.categoryName} (${item.categorySlug})`);
    });
  }

  if (report.missing.directSubcategories.length > 0) {
    console.log('\n⚠️ Exemples de sous-catégories manquantes:');
    report.missing.directSubcategories.slice(0, 20).forEach((item) => {
      console.log(`- ${item.parentSlug} > ${item.slug}`);
    });
  }
}

run().catch((error) => {
  console.error('❌ Audit échoué:', error.message);
  process.exit(1);
});
