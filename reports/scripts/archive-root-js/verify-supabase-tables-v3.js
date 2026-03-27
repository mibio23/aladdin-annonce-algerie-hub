const { createClient } = require('@supabase/supabase-js');
const fs = require('fs');
const path = require('path');
require('dotenv').config();

const supabaseUrl = process.env.VITE_SUPABASE_URL;
const supabaseKey = process.env.SUPABASE_SERVICE_KEY || process.env.VITE_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseKey) {
  console.error('❌ Variables d\'environnement Supabase manquantes');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseKey);

function extractSection(lines, startMarker, endMarker) {
  const startIndex = lines.findIndex(line => line.includes(startMarker));
  const endIndex = lines.findIndex(line => line.includes(endMarker));
  if (startIndex === -1 || endIndex === -1 || endIndex <= startIndex) return [];
  return lines.slice(startIndex + 1, endIndex);
}

function extractNames(lines) {
  const results = [];
  for (const line of lines) {
    const match = line.match(/^\s{6}([a-zA-Z0-9_]+):/);
    if (match) results.push(match[1]);
  }
  return Array.from(new Set(results)).sort();
}

function collectPageTables(pagesRoot) {
  const files = [];
  const walk = (dir) => {
    for (const entry of fs.readdirSync(dir)) {
      const full = path.join(dir, entry);
      const stat = fs.statSync(full);
      if (stat.isDirectory()) {
        walk(full);
      } else if (full.endsWith('.ts') || full.endsWith('.tsx')) {
        files.push(full);
      }
    }
  };
  walk(pagesRoot);

  const pageTables = new Map();
  const fromRegex = /\.from\(\s*['"]([^'"]+)['"]/g;
  const bucketRegex = /\.storage\s*\.from\(\s*['"]([^'"]+)['"]/g;

  for (const file of files) {
    const content = fs.readFileSync(file, 'utf8');
    const tables = new Set();
    const buckets = new Set();
    let match;
    while ((match = fromRegex.exec(content))) tables.add(match[1]);
    while ((match = bucketRegex.exec(content))) buckets.add(match[1]);
    pageTables.set(
      path.relative(__dirname, file).replace(/\\/g, '/'),
      { tables: Array.from(tables).sort(), buckets: Array.from(buckets).sort() }
    );
  }
  return pageTables;
}

async function checkRelation(name) {
  try {
    const { error } = await supabase
      .from(name)
      .select('id')
      .limit(1);
    if (error) {
      const message = error.message || '';
      if (error.code === 'PGRST116' || message.includes('does not exist')) {
        return { status: 'missing' };
      }
      if (message.includes('permission') || message.includes('401') || message.includes('403')) {
        return { status: 'forbidden' };
      }
      return { status: 'error', detail: message };
    }
    return { status: 'ok' };
  } catch (err) {
    return { status: 'error', detail: err.message };
  }
}

async function verifyTables() {
  console.log('🔍 Vérification exhaustive des tables et vues Supabase...\n');

  const typesPath = path.join(__dirname, 'src', 'integrations', 'supabase', 'types.ts');
  const typesContent = fs.readFileSync(typesPath, 'utf8').split('\n');
  const tablesSection = extractSection(typesContent, 'Tables:', 'Views:');
  const viewsSection = extractSection(typesContent, 'Views:', 'Functions:');
  const tablesToCheck = extractNames(tablesSection);
  const viewsToCheck = extractNames(viewsSection);

  const okTables = [];
  const missingTables = [];
  const forbiddenTables = [];
  const errorTables = [];

  for (const tableName of tablesToCheck) {
    const result = await checkRelation(tableName);
    if (result.status === 'ok') okTables.push(tableName);
    else if (result.status === 'missing') missingTables.push(tableName);
    else if (result.status === 'forbidden') forbiddenTables.push(tableName);
    else errorTables.push(`${tableName} → ${result.detail || 'unknown error'}`);
  }

  const okViews = [];
  const missingViews = [];
  const forbiddenViews = [];
  const errorViews = [];

  for (const viewName of viewsToCheck) {
    const result = await checkRelation(viewName);
    if (result.status === 'ok') okViews.push(viewName);
    else if (result.status === 'missing') missingViews.push(viewName);
    else if (result.status === 'forbidden') forbiddenViews.push(viewName);
    else errorViews.push(`${viewName} → ${result.detail || 'unknown error'}`);
  }

  console.log(`Tables OK: ${okTables.length}`);
  console.log(`Tables manquantes: ${missingTables.length}`);
  console.log(`Tables interdites: ${forbiddenTables.length}`);
  console.log(`Tables en erreur: ${errorTables.length}`);
  if (missingTables.length) {
    console.log('\nTables manquantes:');
    missingTables.forEach(t => console.log(`- ${t}`));
  }
  if (forbiddenTables.length) {
    console.log('\nTables interdites:');
    forbiddenTables.forEach(t => console.log(`- ${t}`));
  }
  if (errorTables.length) {
    console.log('\nTables en erreur:');
    errorTables.forEach(t => console.log(`- ${t}`));
  }

  console.log(`\nVues OK: ${okViews.length}`);
  console.log(`Vues manquantes: ${missingViews.length}`);
  console.log(`Vues interdites: ${forbiddenViews.length}`);
  console.log(`Vues en erreur: ${errorViews.length}`);
  if (missingViews.length) {
    console.log('\nVues manquantes:');
    missingViews.forEach(v => console.log(`- ${v}`));
  }
  if (forbiddenViews.length) {
    console.log('\nVues interdites:');
    forbiddenViews.forEach(v => console.log(`- ${v}`));
  }
  if (errorViews.length) {
    console.log('\nVues en erreur:');
    errorViews.forEach(v => console.log(`- ${v}`));
  }

  const pagesRoot = path.join(__dirname, 'src', 'pages');
  const pageTables = collectPageTables(pagesRoot);
  const allPageTables = new Set();
  for (const entry of pageTables.values()) {
    entry.tables.forEach(t => allPageTables.add(t));
  }

  const tableStatus = {};
  for (const tableName of Array.from(allPageTables).sort()) {
    tableStatus[tableName] = await checkRelation(tableName);
  }

  console.log('\n\n📄 Rapport par page (tables + statut):');
  for (const [page, entry] of Array.from(pageTables.entries()).sort()) {
    if (entry.tables.length === 0 && entry.buckets.length === 0) continue;
    const tableItems = entry.tables.map(name => `${name}:${tableStatus[name]?.status || 'unknown'}`).join(', ');
    const bucketItems = entry.buckets.length ? ` | buckets: ${entry.buckets.join(', ')}` : '';
    console.log(`- ${page} => ${tableItems}${bucketItems}`);
  }
}

verifyTables().catch(console.error);
