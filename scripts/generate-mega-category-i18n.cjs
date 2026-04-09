const fs = require('fs');
const path = require('path');

const root = path.resolve(__dirname, '..');
const megaRoot = path.join(root, 'src', 'data', 'categories', 'megaMenuStructures');
const outputPath = path.join(root, 'src', 'lib', 'i18n', 'categories', 'generatedMegaCategoryKeys.ts');

const targetLangs = ['ar', 'en', 'es', 'de', 'it', 'fr'];

function walk(dir, out = []) {
  for (const entry of fs.readdirSync(dir, { withFileTypes: true })) {
    const full = path.join(dir, entry.name);
    if (entry.isDirectory()) walk(full, out);
    else out.push(full);
  }
  return out;
}

function collectPairs(fileContent) {
  const pairs = [];
  const regex = /name\s*:\s*"([^"]+)"[\s\S]{0,200}?slug\s*:\s*"([^"]+)"/g;
  let m;
  while ((m = regex.exec(fileContent))) {
    pairs.push({ name: m[1].trim(), slug: m[2].trim() });
  }
  return pairs;
}

function buildForLang(lang) {
  const allFiles = walk(megaRoot).filter((f) => f.endsWith(`${path.sep}${lang}.tsx`));
  const map = new Map();

  for (const file of allFiles) {
    const content = fs.readFileSync(file, 'utf8');
    const pairs = collectPairs(content);
    for (const { name, slug } of pairs) {
      if (!slug) continue;
      if (!map.has(slug)) map.set(slug, name);
    }
  }

  return map;
}

function tsObjectFromMap(varName, map) {
  const lines = [];
  lines.push(`export const ${varName}: Record<string, string> = {`);
  for (const [slug, name] of [...map.entries()].sort((a, b) => a[0].localeCompare(b[0]))) {
    const escaped = name.replace(/\\/g, '\\\\').replace(/'/g, "\\'");
    lines.push(`  'categories.${slug}': '${escaped}',`);
  }
  lines.push('};');
  return lines.join('\n');
}

function main() {
  const maps = {
    ar: buildForLang('ar'),
    en: buildForLang('en'),
    es: buildForLang('es'),
    de: buildForLang('de'),
    it: buildForLang('it'),
    fr: buildForLang('fr'),
  };

  const output = [
    '// Auto-generated from src/data/categories/megaMenuStructures/*/{lang}.tsx',
    '// Do not edit manually.',
    '',
    tsObjectFromMap('megaCategoryKeysAr', maps.ar),
    '',
    tsObjectFromMap('megaCategoryKeysEn', maps.en),
    '',
    tsObjectFromMap('megaCategoryKeysEs', maps.es),
    '',
    tsObjectFromMap('megaCategoryKeysDe', maps.de),
    '',
    tsObjectFromMap('megaCategoryKeysIt', maps.it),
    '',
    tsObjectFromMap('megaCategoryKeysFr', maps.fr),
    '',
  ].join('\n');

  fs.writeFileSync(outputPath, output, 'utf8');
  console.log(`Generated: ${outputPath}`);
  console.log(
    JSON.stringify(
      {
        ar: maps.ar.size,
        en: maps.en.size,
        es: maps.es.size,
        de: maps.de.size,
        it: maps.it.size,
        fr: maps.fr.size,
      },
      null,
      2
    )
  );
}

main();
