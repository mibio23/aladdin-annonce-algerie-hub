const fs = require('fs');
const path = require('path');
const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const SUPABASE_URL = process.env.VITE_SUPABASE_URL || process.env.SUPABASE_URL;
const SUPABASE_SERVICE_KEY =
  process.env.SUPABASE_SERVICE_KEY ||
  process.env.SUPABASE_SERVICE_ROLE_KEY ||
  process.env.SUPABASE_SERVICE_ROLE ||
  process.env.VITE_SUPABASE_ANON_KEY;

if (!SUPABASE_URL || !SUPABASE_SERVICE_KEY) {
  console.error('❌ Variables d\'environnement Supabase manquantes');
  process.exit(1);
}

const supabase = createClient(SUPABASE_URL, SUPABASE_SERVICE_KEY);

function splitSqlStatements(sql) {
  const statements = [];
  let current = '';
  let inSingle = false;
  let inDouble = false;
  let inDollar = false;
  let dollarTag = '';
  for (let i = 0; i < sql.length; i++) {
    const char = sql[i];
    const nextTwo = sql.slice(i, i + 2);

    if (!inSingle && !inDouble && !inDollar && nextTwo === '--') {
      while (i < sql.length && sql[i] !== '\n') i++;
      continue;
    }

    if (!inSingle && !inDouble && !inDollar && char === '$') {
      const tagMatch = sql.slice(i).match(/^\$[A-Za-z0-9_]*\$/);
      if (tagMatch) {
        inDollar = true;
        dollarTag = tagMatch[0];
        current += dollarTag;
        i += dollarTag.length - 1;
        continue;
      }
    } else if (inDollar && char === '$') {
      if (sql.slice(i, i + dollarTag.length) === dollarTag) {
        inDollar = false;
        current += dollarTag;
        i += dollarTag.length - 1;
        continue;
      }
    }

    if (!inDouble && !inDollar && char === "'" && sql[i - 1] !== '\\') {
      inSingle = !inSingle;
    } else if (!inSingle && !inDollar && char === '"') {
      inDouble = !inDouble;
    }

    if (!inSingle && !inDouble && !inDollar && char === ';') {
      const trimmed = current.trim();
      if (trimmed) statements.push(trimmed);
      current = '';
      continue;
    }

    current += char;
  }

  const last = current.trim();
  if (last) statements.push(last);
  return statements;
}

async function executeSQL(sql) {
  try {
    const { error } = await supabase.rpc('exec_sql', { sql });
    if (!error) return { ok: true };
    const message = error.message || '';
    if (message.includes('already exists') || message.includes('duplicate')) {
      return { ok: true, skipped: true };
    }
    return { ok: false, error: message };
  } catch (error) {
    return { ok: false, error: error.message };
  }
}

function extractCreatedTables(sql) {
  const results = new Set();
  const regex = /create\s+table\s+(if\s+not\s+exists\s+)?([a-zA-Z0-9_".]+)\s*\(/gi;
  let match;
  while ((match = regex.exec(sql))) {
    const raw = match[2].replace(/"/g, '');
    const name = raw.includes('.') ? raw.split('.').pop() : raw;
    if (name) results.add(name);
  }
  return Array.from(results);
}

function shouldExecuteStatement(statement) {
  const normalized = statement.trim().toLowerCase();
  const allowList = [
    /^create\s+table\b/,
    /^create\s+type\b/,
    /^create\s+extension\b/,
    /^create\s+(or\s+replace\s+)?view\b/,
    /^create\s+(or\s+replace\s+)?function\b/,
    /^create\s+policy\b/,
    /^create\s+index\b/,
    /^create\s+sequence\b/,
    /^create\s+trigger\b/,
    /^alter\s+table\b/,
    /^drop\s+policy\b/,
    /^drop\s+trigger\b/,
    /^insert\s+into\b/,
    /^update\b/,
    /^grant\b/,
    /^do\s+\$\$/,
  ];
  return allowList.some((pattern) => pattern.test(normalized));
}

async function verifyTable(tableName) {
  try {
    const { error } = await supabase.from(tableName).select('id').limit(1);
    if (!error) return { status: 'ok' };
    const msg = error.message || '';
    if (error.code === 'PGRST116' || msg.includes('does not exist')) return { status: 'missing' };
    if (msg.includes('permission') || msg.includes('401') || msg.includes('403')) return { status: 'forbidden' };
    return { status: 'error', detail: msg };
  } catch (err) {
    return { status: 'error', detail: err.message };
  }
}

async function migrateAllFiles() {
  console.log('🚀 Reconstruction des tables via migrations Supabase...\n');

  const migrationsDir = path.join(__dirname, 'supabase', 'migrations');
  const integrationsMigrationsDir = path.join(__dirname, 'src', 'integrations', 'supabase', 'migrations');
  const extraSqlFiles = [
    path.join(__dirname, 'supabase_new_categories.sql'),
    path.join(__dirname, 'create_missing_tables_safe.sql'),
    path.join(__dirname, 'create_truly_missing_tables.sql')
  ];
  const listSqlFiles = (dir) => {
    if (!fs.existsSync(dir)) return [];
    return fs.readdirSync(dir)
      .filter(file => file.endsWith('.sql'))
      .sort()
      .map(file => path.join(dir, file));
  };
  const sqlFiles = [
    path.join(__dirname, 'scripts', 'init-db.sql'),
    ...listSqlFiles(migrationsDir),
    ...listSqlFiles(integrationsMigrationsDir),
    ...extraSqlFiles.filter(file => fs.existsSync(file))
  ];

  console.log(`📁 ${sqlFiles.length} fichiers SQL trouvés`);

  const results = {
    applied: [],
    failed: [],
    tableChecks: [],
    fileTables: {}
  };

  for (const fullPath of sqlFiles) {
    if (!fs.existsSync(fullPath)) continue;
    const sql = fs.readFileSync(fullPath, 'utf8');
    const createdTables = extractCreatedTables(sql);
    const fileKey = path.relative(__dirname, fullPath).replace(/\\/g, '/');
    results.fileTables[fileKey] = createdTables;

    console.log(`\n📄 Exécution: ${fileKey}`);
    const statements = splitSqlStatements(sql);
    let fileFailed = false;

    for (const statement of statements) {
      const normalized = statement.trim();
      if (!normalized) continue;
      if (/^(begin|commit|rollback)\b/i.test(normalized)) continue;
      if (/^comment\s+on\b/i.test(normalized)) continue;

      if (!shouldExecuteStatement(normalized)) continue;

      const isCreateTable = /^create\s+table\b/i.test(normalized);

      const exec = await executeSQL(normalized);
      if (!exec.ok) {
        console.log(`❌ Échec: ${exec.error}`);
        fileFailed = true;
        if (isCreateTable) {
          const tableNames = extractCreatedTables(normalized);
          for (const tableName of tableNames) {
            results.tableChecks.push({ file: fileKey, table: tableName, status: { status: 'error', detail: exec.error } });
          }
        }
        continue;
      }

      if (isCreateTable) {
        const tableNames = extractCreatedTables(normalized);
        for (const tableName of tableNames) {
          const status = await verifyTable(tableName);
          results.tableChecks.push({ file: fileKey, table: tableName, status });
          if (status.status === 'ok') {
            console.log(`✅ ${tableName} existe`);
          } else {
            console.log(`⚠️ ${tableName} → ${status.status}`);
          }
        }
      }
    }

    if (fileFailed) {
      results.failed.push({ file: fileKey, error: 'erreur d’exécution' });
    } else {
      results.applied.push(fileKey);
    }
  }

  console.log('\n' + '='.repeat(60));
  console.log('📊 RÉCAPITULATIF RECONSTRUCTION');
  console.log('='.repeat(60));
  console.log(`✅ Fichiers exécutés: ${results.applied.length}/${sqlFiles.length}`);
  console.log(`❌ Fichiers en échec: ${results.failed.length}`);

  const okTables = results.tableChecks.filter(t => t.status.status === 'ok').length;
  const missingTables = results.tableChecks.filter(t => t.status.status === 'missing').length;
  const forbiddenTables = results.tableChecks.filter(t => t.status.status === 'forbidden').length;
  const errorTables = results.tableChecks.filter(t => t.status.status === 'error').length;

  console.log(`✅ Tables vérifiées OK: ${okTables}`);
  console.log(`⚠️ Tables manquantes: ${missingTables}`);
  console.log(`⚠️ Tables interdites: ${forbiddenTables}`);
  console.log(`⚠️ Tables en erreur: ${errorTables}`);

  if (results.failed.length) {
    console.log('\n❌ Fichiers en échec:');
    results.failed.forEach(item => console.log(`- ${item.file} → ${item.error}`));
  }

  const issues = results.tableChecks.filter(t => t.status.status !== 'ok');
  if (issues.length) {
    console.log('\n⚠️ Tables à vérifier:');
    issues.forEach(item => console.log(`- ${item.table} (${item.status.status}) via ${item.file}`));
  }

  return results;
}

/**
 * Fonction alternative sans RPC (utilisation directe de l'API)
 */
async function migrateUsingDirectAPI() {
    console.log('🚀 Début de la migration via API directe...\n');
    
    // Pour chaque fichier, on va créer les catégories une par une
    const sqlFiles = fs.readdirSync('.')
        .filter(file => file.startsWith('migrate-') && file.endsWith('-all-langs.sql'))
        .sort();
    
    const results = {
        successful: 0,
        failed: 0,
        categoriesCreated: 0
    };
    
    for (const file of sqlFiles) {
        console.log(`\n📄 Traitement: ${file}`);
        
        try {
            const content = fs.readFileSync(file, 'utf8');
            
            // Extraire les INSERT statements
            const insertStatements = content.match(/INSERT INTO categories \([^)]+\) VALUES \([^)]+\);/g) || [];
            
            for (const statement of insertStatements) {
                // Parser les valeurs manuellement
                const valuesMatch = statement.match(/VALUES \('([^']*)',\s*'([^']*)',\s*'([^']*)',\s*([^,]*),\s*(\d+),\s*'([^']*)'\)/);
                
                if (valuesMatch) {
                    const [, id, name, slug, parentId, level, language] = valuesMatch;
                    
                    const { data, error } = await supabase
                        .from('categories')
                        .insert([{
                            id: id,
                            name: name,
                            slug: slug,
                            parent_id: parentId === 'NULL' ? null : parentId,
                            level: parseInt(level),
                            language: language
                        }]);
                    
                    if (error) {
                        console.error(`❌ Erreur insertion:`, error);
                        results.failed++;
                    } else {
                        results.categoriesCreated++;
                        process.stdout.write(`✅ Catégorie créée: ${id} (${language})\r`);
                    }
                }
            }
            
            results.successful++;
            console.log(`\n✅ ${file} - Migration réussie`);
            
        } catch (error) {
            results.failed++;
            console.error(`❌ ${file} - Erreur:`, error.message);
        }
    }
    
    console.log('\n' + '='.repeat(60));
    console.log('📊 RÉSUMÉ DE LA MIGRATION');
    console.log('='.repeat(60));
    console.log(`✅ Fichiers réussis: ${results.successful}`);
    console.log(`❌ Fichiers échoués: ${results.failed}`);
    console.log(`📝 Catégories créées: ${results.categoriesCreated}`);
    
    return results;
}

// Exécution
if (require.main === module) {
  migrateAllFiles().then(() => {
    console.log('\n✅ Reconstruction terminée');
    process.exit(0);
  }).catch(error => {
    console.error('❌ Erreur lors de la reconstruction:', error);
    process.exit(1);
  });
}

module.exports = { migrateAllFiles, migrateUsingDirectAPI };
