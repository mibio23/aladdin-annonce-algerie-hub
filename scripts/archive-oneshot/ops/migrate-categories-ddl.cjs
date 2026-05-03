const path = require('path');
const fs = require('fs');
require('dotenv').config({ path: path.resolve(__dirname, '..', '..', '.env') });
const { runMgmtQuery } = require('./supabase-http.cjs');

async function main() {
  console.log('=== SUPABASE CATEGORY MIGRATION (DDL + BULK INSERT) ===\n');

  const dataPath = path.join(__dirname, '..', '..', 'menu-form-supabase-audit.json');
  const data = JSON.parse(fs.readFileSync(dataPath, 'utf8'));

  const categories = data.categories || [];
  console.log(`Total categories to migrate: ${categories.length}`);

  console.log('\n--- PHASE 1: DELETE existing categories ---');
  const deleteResult = await runMgmtQuery('DELETE FROM categories;');
  if (deleteResult.status >= 400) {
    console.error(`ERROR deleting categories: ${deleteResult.status} - ${deleteResult.body}`);
    return;
  }
  console.log('✓ All existing categories deleted');

  console.log('\n--- PHASE 2: BULK INSERT via UNNEST ---');

  const chunkSize = 200;
  let totalOk = 0;
  let totalErrors = 0;

  for (let i = 0; i < categories.length; i += chunkSize) {
    const chunk = categories.slice(i, i + chunkSize);
    const lotNum = Math.floor(i / chunkSize) + 1;
    const totalLots = Math.ceil(categories.length / chunkSize);

    const slugs = chunk.map(c => c.slug);
    const names = chunk.map(c => c.name.replace(/'/g, "''"));
    const uuids = chunk.map(c => c.category_uuid);
    const parentIds = chunk.map(c => c.parent_id || null);
    const levels = chunk.map(c => c.level);
    const isSubcats = chunk.map(c => c.is_subcategory ? 't' : 'f');
    const hasAdv = chunk.map(c => c.has_advanced_fields ? 't' : 'f');
    const sortOrders = chunk.map(c => c.sort_order || 0);

    const sql = `
INSERT INTO categories (slug, name, category_uuid, parent_id, level, is_subcategory, has_advanced_fields, sort_order, created_at, updated_at)
SELECT
  u.slug,
  u.name,
  u.category_uuid::uuid,
  u.parent_id::uuid,
  u.level::integer,
  u.is_subcategory::boolean,
  u.has_advanced_fields::boolean,
  u.sort_order::integer,
  NOW(),
  NOW()
FROM UNNEST(
  ARRAY[${slugs.map(s => `'${s}'`).join(',')}],
  ARRAY[${names.map(n => `'${n}'`).join(',')}],
  ARRAY[${uuids.map(u => `'${u}'`).join(',')}],
  ARRAY[${parentIds.map(p => p ? `'${p}'` : 'NULL').join(',')}],
  ARRAY[${levels.join(',')}],
  ARRAY[${isSubcats.join(',')}],
  ARRAY[${hasAdv.join(',')}],
  ARRAY[${sortOrders.join(',')}]
) AS u(slug, name, category_uuid, parent_id, level, is_subcategory, has_advanced_fields, sort_order);
`.trim();

    const result = await runMgmtQuery(sql);

    if (result.status >= 400) {
      console.error(`  Lot ${lotNum}/${totalLots}: ERROR ${result.status} - ${result.body.substring(0, 300)}`);
      totalErrors += chunk.length;
    } else {
      totalOk += chunk.length;
      process.stdout.write(`.`);
    }

    if (lotNum % 10 === 0 || lotNum === totalLots) {
      process.stdout.write(` ${lotNum}/${totalLots}\n`);
    }
  }

  console.log(`\n\n--- PHASE 3: SUMMARY ---`);
  console.log(`Total inserted: ${totalOk}`);
  console.log(`Total errors: ${totalErrors}`);

  console.log('\n--- PHASE 4: VERIFY ---');
  const countResult = await runMgmtQuery('SELECT COUNT(*) as total FROM categories;');
  if (countResult.status < 400) {
    try {
      const parsed = JSON.parse(countResult.body);
      console.log(`Categories in DB now: ${JSON.stringify(parsed)}`);
    } catch {
      console.log(`Count result: ${countResult.body}`);
    }
  }

  console.log('\n--- PHASE 5: VERIFY SAMPLE ---');
  const sampleResult = await runMgmtQuery("SELECT slug, name, level, parent_id IS NOT NULL as has_parent FROM categories ORDER BY level, slug LIMIT 20;");
  if (sampleResult.status < 400) {
    try {
      const parsed = JSON.parse(sampleResult.body);
      console.log('Sample categories:');
      parsed.forEach(c => console.log(`  [L${c.level}] ${c.slug} (parent: ${c.has_parent})`));
    } catch {
      console.log(`Sample result: ${sampleResult.body}`);
    }
  }
}

main().catch(console.error);