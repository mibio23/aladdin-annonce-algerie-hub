const path = require('path');
require('dotenv').config({ path: path.resolve(__dirname, '..', '..', '.env') });
const { runMgmtQuery } = require('./supabase-http.cjs');

async function main() {
  console.log('=== FIX PARENT_ID REFERENCES ===\n');

  console.log('--- PHASE 1: Drop FK constraint ---');
  const dropResult = await runMgmtQuery(`
    ALTER TABLE categories DROP CONSTRAINT IF EXISTS categories_parent_id_fkey;
  `);
  console.log(dropResult.status < 400 ? '✓ FK dropped' : `Note: ${dropResult.status}`);

  console.log('\n--- PHASE 2: Update parent_id with correct UUIDs ---');

  const updateResult = await runMgmtQuery(`
    UPDATE categories c
    SET parent_id = p.id
    FROM categories p,
         LATERAL (
           SELECT slug, category_uuid
           FROM categories
           WHERE slug = (
             SELECT DISTINCT sub.parent_slug
             FROM categories sub
             WHERE sub.category_uuid = c.category_uuid
             LIMIT 1
           )
           LIMIT 1
         ) AS sub
    WHERE c.parent_id IS NOT NULL
      AND p.slug = sub.slug
      AND p.category_uuid = sub.category_uuid
      AND c.id != p.id;
  `);

  if (updateResult.status < 400) {
    console.log('✓ parent_id updated successfully');
    console.log(`Update result: ${updateResult.body}`);
  } else {
    console.error(`Error: ${updateResult.body}`);
  }

  console.log('\n--- PHASE 3: Recreate FK constraint ---');
  const recreateResult = await runMgmtQuery(`
    ALTER TABLE categories ADD CONSTRAINT categories_parent_id_fkey
      FOREIGN KEY (parent_id) REFERENCES categories(id) ON DELETE SET NULL;
  `);
  console.log(recreateResult.status < 400 ? '✓ FK recreated' : `Note: ${recreateResult.status} - ${recreateResult.body.substring(0, 200)}`);

  console.log('\n--- PHASE 4: Verify ---');
  const countResult = await runMgmtQuery('SELECT COUNT(*) as total, COUNT(parent_id) as with_parent FROM categories;');
  if (countResult.status < 400) {
    try {
      const parsed = JSON.parse(countResult.body);
      console.log(`Total categories: ${JSON.stringify(parsed)}`);
    } catch {
      console.log(`Count: ${countResult.body}`);
    }
  }

  const levelResult = await runMgmtQuery('SELECT level, COUNT(*) as count, COUNT(parent_id) as with_parent FROM categories GROUP BY level ORDER BY level;');
  if (levelResult.status < 400) {
    try {
      const parsed = JSON.parse(levelResult.body);
      console.log('\nLevel distribution:');
      parsed.forEach(r => console.log(`  Level ${r.level}: ${r.count} (with parent: ${r.with_parent})`));
    } catch {
      console.log(`Level: ${levelResult.body}`);
    }
  }
}

main().catch(console.error);