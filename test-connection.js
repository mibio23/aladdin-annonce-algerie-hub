const dotenv = require('dotenv');
dotenv.config({ path: '.env' });
dotenv.config({ path: '.env.local', override: true });
dotenv.config({ path: '.env.development', override: true });
dotenv.config({ path: '.env.production', override: true });
const { createClient } = require('@supabase/supabase-js');

const supabaseUrl =
  process.env.VITE_SUPABASE_URL || 'https://smsvybphkdxzvgawzoru.supabase.co';
const supabaseKey =
  process.env.VITE_SUPABASE_PUBLISHABLE_KEY ||
  process.env.VITE_SUPABASE_ANON_KEY ||
  'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNtc3Z5YnBoa2R4enZnYXd6b3J1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDcyMTk1MDYsImV4cCI6MjA2Mjc5NTUwNn0.BnS7qmTl1a4htjiv3qN7zyjZ04DZgdV7N6Z0a0AU40g';

const supabase = createClient(supabaseUrl, supabaseKey);

function getPgConfig() {
  const connectionString = process.env.DATABASE_URL || process.env.SUPABASE_DB_URL;
  if (connectionString) {
    return {
      connectionString,
      ssl: process.env.DB_SSL === 'false' ? false : { rejectUnauthorized: false },
    };
  }

  const host = process.env.DB_HOST;
  const port = process.env.DB_PORT ? Number(process.env.DB_PORT) : 5432;
  const database = process.env.DB_NAME || 'postgres';
  const user = process.env.DB_USER;
  const password = process.env.DB_PASSWORD;

  if (!host || !user || !password) return null;

  return {
    host,
    port,
    database,
    user,
    password,
    ssl: process.env.DB_SSL === 'false' ? false : { rejectUnauthorized: false },
  };
}

async function runRpcSqlChecks() {
  const rpcCandidates = ['exec_sql_readonly', 'exec_sql', 'execute_sql'];
  const paramCandidates = ['sql', 'query', 'sql_query', 'sqlQuery', 'sql_statement'];

  let rpcName = null;
  let paramName = null;

  for (const candidateRpc of rpcCandidates) {
    for (const candidateParam of paramCandidates) {
      const { error } = await supabase.rpc(candidateRpc, { [candidateParam]: 'SELECT 1 AS ok;' });
      if (!error) {
        rpcName = candidateRpc;
        paramName = candidateParam;
        break;
      }
    }
    if (rpcName) break;
  }

  console.log('\n=== RPC SQL (si disponible) ===');
  if (!rpcName || !paramName) {
    console.log('⚠️  Aucune RPC SQL disponible (exec_sql_readonly/exec_sql/execute_sql).');
    return;
  }

  console.log(`✅ RPC disponible: ${rpcName} (paramètre: ${paramName})`);
  const execSql = (sql) => supabase.rpc(rpcName, { [paramName]: sql });

  const { data: tables, error: tablesErr } = await execSql(
    `
      SELECT table_name
      FROM information_schema.tables
      WHERE table_schema='public'
        AND table_type='BASE TABLE'
      ORDER BY table_name;
    `
  );
  if (tablesErr) {
    console.log('❌ Liste tables (SQL):', tablesErr.message);
    return;
  }

  const tableNames = (tables || []).map((r) => r.table_name).filter(Boolean);
  console.log(`✅ Tables (public): ${tableNames.length}`);
  tableNames.forEach((t) => console.log(`  - ${t}`));

  const { data: colCounts, error: colErr } = await execSql(
    `
      SELECT table_name, COUNT(*)::int AS column_count
      FROM information_schema.columns
      WHERE table_schema='public'
      GROUP BY table_name
      ORDER BY table_name;
    `
  );

  if (colErr) {
    console.log('❌ Comptage colonnes (SQL):', colErr.message);
    return;
  }

  const totalColumns = (colCounts || []).reduce((sum, r) => sum + (r.column_count || 0), 0);
  console.log(`\n✅ Total colonnes (public): ${totalColumns}`);

  const announcementsCols = (colCounts || []).find((r) => r.table_name === 'announcements');
  if (announcementsCols) console.log(`✅ Colonnes announcements: ${announcementsCols.column_count}`);

  const detailsTables = (colCounts || [])
    .filter((r) => typeof r.table_name === 'string' && r.table_name.endsWith('_details'))
    .map((r) => ({ table: r.table_name, columns: r.column_count }));

  if (detailsTables.length > 0) {
    console.log(`\n✅ Tables *_details: ${detailsTables.length}`);
    detailsTables.forEach((t) => console.log(`  - ${t.table} (${t.columns} colonnes)`));
  }

  const { data: fkRows, error: fkErr } = await execSql(
    `
      SELECT
        tc.table_name AS source_table,
        kcu.column_name AS source_column,
        ccu.table_name AS target_table,
        ccu.column_name AS target_column,
        rc.delete_rule AS delete_rule
      FROM information_schema.table_constraints tc
      JOIN information_schema.key_column_usage kcu
        ON tc.constraint_name = kcu.constraint_name
       AND tc.table_schema = kcu.table_schema
      JOIN information_schema.constraint_column_usage ccu
        ON ccu.constraint_name = tc.constraint_name
       AND ccu.table_schema = tc.table_schema
      JOIN information_schema.referential_constraints rc
        ON rc.constraint_name = tc.constraint_name
       AND rc.constraint_schema = tc.table_schema
      WHERE tc.constraint_type = 'FOREIGN KEY'
        AND tc.table_schema = 'public'
        AND ccu.table_name = 'announcements'
      ORDER BY tc.table_name, kcu.column_name;
    `
  );

  if (fkErr) {
    console.log('\n❌ FK vers announcements (SQL):', fkErr.message);
    return;
  }

  const fkToAnnouncements = (fkRows || []).filter(
    (r) => typeof r.source_table === 'string' && r.source_table.endsWith('_details')
  );

  console.log(`\n✅ FK vers announcements (tables *_details): ${fkToAnnouncements.length}`);
  fkToAnnouncements.forEach((r) =>
    console.log(
      `  - ${r.source_table}.${r.source_column} -> ${r.target_table}.${r.target_column} (ON DELETE ${r.delete_rule})`
    )
  );

  const fkSourceSet = new Set(fkToAnnouncements.map((r) => r.source_table));
  const detailsMissingFk = detailsTables.map((t) => t.table).filter((t) => !fkSourceSet.has(t));
  if (detailsMissingFk.length > 0) {
    console.log('\n❌ Tables *_details sans FK vers announcements:');
    detailsMissingFk.forEach((t) => console.log(`  - ${t}`));
  }
}

async function runDirectPostgresChecks() {
  const pgConfig = getPgConfig();
  if (!pgConfig) {
    console.log('\n=== Connexion Postgres directe ===');
    console.log(
      '⚠️  Variables DB manquantes (DATABASE_URL/SUPABASE_DB_URL ou DB_HOST/DB_USER/DB_PASSWORD).'
    );
    return;
  }

  let Client;
  try {
    ({ Client } = require('pg'));
  } catch (e) {
    console.log('\n=== Connexion Postgres directe ===');
    console.log('❌ Dépendance manquante: installez `pg` (ex: `npm i pg`).');
    return;
  }

  console.log('\n=== Connexion Postgres directe ===');
  const client = new Client(pgConfig);
  await client.connect();

  const tablesRes = await client.query(
    `
      SELECT table_name
      FROM information_schema.tables
      WHERE table_schema = 'public'
        AND table_type = 'BASE TABLE'
      ORDER BY table_name;
    `
  );
  const tableNames = tablesRes.rows.map((r) => r.table_name);
  console.log(`✅ Tables (public): ${tableNames.length}`);
  tableNames.forEach((t) => console.log(`  - ${t}`));

  const colsRes = await client.query(
    `
      SELECT table_name, COUNT(*)::int AS column_count
      FROM information_schema.columns
      WHERE table_schema = 'public'
      GROUP BY table_name
      ORDER BY table_name;
    `
  );
  const totalColumns = colsRes.rows.reduce((sum, r) => sum + r.column_count, 0);
  console.log(`\n✅ Total colonnes (public): ${totalColumns}`);

  const announcementsCols = colsRes.rows.find((r) => r.table_name === 'announcements');
  if (announcementsCols) {
    console.log(`✅ Colonnes announcements: ${announcementsCols.column_count}`);
  }

  const detailsTables = colsRes.rows
    .filter((r) => r.table_name.endsWith('_details'))
    .map((r) => ({ table: r.table_name, columns: r.column_count }));
  if (detailsTables.length > 0) {
    console.log(`\n✅ Tables *_details: ${detailsTables.length}`);
    detailsTables.forEach((t) => console.log(`  - ${t.table} (${t.columns} colonnes)`));
  } else {
    console.log('\n⚠️  Aucune table *_details trouvée dans public.');
  }

  const fkRes = await client.query(
    `
      SELECT
        tc.table_name AS source_table,
        kcu.column_name AS source_column,
        ccu.table_name AS target_table,
        ccu.column_name AS target_column
      FROM information_schema.table_constraints tc
      JOIN information_schema.key_column_usage kcu
        ON tc.constraint_name = kcu.constraint_name
       AND tc.table_schema = kcu.table_schema
      JOIN information_schema.constraint_column_usage ccu
        ON ccu.constraint_name = tc.constraint_name
       AND ccu.table_schema = tc.table_schema
      WHERE tc.constraint_type = 'FOREIGN KEY'
        AND tc.table_schema = 'public'
        AND ccu.table_name = 'announcements'
      ORDER BY tc.table_name, kcu.column_name;
    `
  );
  const fkToAnnouncements = fkRes.rows.filter((r) => r.source_table.endsWith('_details'));
  console.log(`\n✅ FK vers announcements (tables *_details): ${fkToAnnouncements.length}`);
  fkToAnnouncements.forEach((r) =>
    console.log(`  - ${r.source_table}.${r.source_column} -> ${r.target_table}.${r.target_column}`)
  );

  await client.end();
}

async function testConnection() {
  console.log('=== Test Supabase (API) ===');

  try {
    const { count: profileCount, error: profileErr } = await supabase
      .from('profiles')
      .select('*', { count: 'exact', head: true });

    if (profileErr) console.log('❌ Accès profiles:', profileErr.message);
    else console.log(`✅ profiles: ${profileCount}`);

    const { count: announcementCount, error: announcementErr } = await supabase
      .from('announcements')
      .select('*', { count: 'exact', head: true });

    if (announcementErr) console.log('❌ Accès announcements:', announcementErr.message);
    else console.log(`✅ announcements: ${announcementCount}`);

    const { data: announcementSample, error: sampleErr } = await supabase
      .from('announcements')
      .select('*')
      .limit(1);

    if (!sampleErr && announcementSample && announcementSample.length > 0) {
      console.log(`✅ Colonnes announcements (via sample): ${Object.keys(announcementSample[0]).length}`);
    }

  } catch (error) {
    console.error('❌ Erreur générale:', error.message);
  }

  await runRpcSqlChecks();
  await runDirectPostgresChecks();
}

testConnection();
