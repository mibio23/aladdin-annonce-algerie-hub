const fs = require('fs');
const path = require('path');

const root = path.resolve(__dirname, '..');

function walk(dir, out = []) {
  for (const entry of fs.readdirSync(dir, { withFileTypes: true })) {
    const fullPath = path.join(dir, entry.name);
    if (entry.isDirectory()) {
      walk(fullPath, out);
    } else {
      out.push(fullPath);
    }
  }
  return out;
}

function collectSlugs() {
  const dataDir = path.join(root, 'src', 'data', 'categories');
  const files = walk(dataDir).filter((f) => /\.(ts|tsx|js|jsx)$/.test(f));
  const slugRegex = /slug\s*:\s*['"]([^'"]+)['"]/g;
  const slugs = new Set();

  for (const file of files) {
    const content = fs.readFileSync(file, 'utf8');
    let match;
    while ((match = slugRegex.exec(content))) {
      slugs.add(match[1]);
    }
  }

  return [...slugs].sort();
}

function collectLanguageKeys(filePath) {
  const content = fs.readFileSync(filePath, 'utf8');
  const keyRegex = /['"]categories\.([^'"]+)['"]\s*:/g;
  const keys = new Set();

  let match;
  while ((match = keyRegex.exec(content))) {
    keys.add(match[1]);
  }

  return keys;
}

function main() {
  const slugs = collectSlugs();
  const langFiles = {
    ar: path.join(root, 'src', 'lib', 'i18n', 'categories', 'arabicCategories.ts'),
    en: path.join(root, 'src', 'lib', 'i18n', 'categories', 'englishCategories.ts'),
    es: path.join(root, 'src', 'lib', 'i18n', 'categories', 'spanishCategories.ts'),
    de: path.join(root, 'src', 'lib', 'i18n', 'categories', 'germanCategories.ts'),
    it: path.join(root, 'src', 'lib', 'i18n', 'categories', 'italianCategories.ts'),
  };

  const report = {
    totalSlugs: slugs.length,
    missingByLanguage: {},
  };

  for (const [lang, filePath] of Object.entries(langFiles)) {
    const keys = collectLanguageKeys(filePath);
    report.missingByLanguage[lang] = slugs.filter((slug) => !keys.has(slug));
  }

  fs.writeFileSync(
    path.join(root, 'scripts', 'audit-category-i18n-report.json'),
    JSON.stringify(report, null, 2),
    'utf8'
  );

  console.log(JSON.stringify(report, null, 2));
}

main();
