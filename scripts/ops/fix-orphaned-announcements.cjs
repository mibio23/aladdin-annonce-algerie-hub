const path = require('path');
require('dotenv').config({ path: path.resolve(__dirname, '..', '..', '.env') });
const { runMgmtQuery } = require('./supabase-http.cjs');

async function main() {
  console.log('=== FIX ORPHANED ANNOUNCEMENT CATEGORIES ===\n');

  console.log('--- Step 1: Find orphaned category_ids ---');
  const orphanResult = await runMgmtQuery(`
    SELECT a.id, a.category_id
    FROM announcements a
    WHERE a.category_id IS NOT NULL
      AND NOT EXISTS (SELECT 1 FROM categories c WHERE c.id = a.category_id);
  `);

  if (orphanResult.status < 400) {
    const orphans = JSON.parse(orphanResult.body);
    console.log(`Found ${orphans.length} announcements with orphaned category_id`);

    if (orphans.length > 0) {
      console.log('Sample:', orphans.slice(0, 3));
    }
  }

  console.log('\n--- Step 2: Set orphaned category_ids to NULL ---');
  const fixResult = await runMgmtQuery(`
    UPDATE announcements
    SET category_id = NULL
    WHERE category_id IS NOT NULL
      AND NOT EXISTS (SELECT 1 FROM categories c WHERE c.id = announcements.category_id);
  `);

  if (fixResult.status < 400) {
    console.log(`✓ Fixed orphaned references`);
    console.log(`Result: ${fixResult.body}`);
  } else {
    console.error(`Error: ${fixResult.body}`);
  }

  console.log('\n--- Step 3: Recreate FK constraint ---');
  const createResult = await runMgmtQuery(`
    ALTER TABLE announcements ADD CONSTRAINT announcements_category_id_fkey
      FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE SET NULL;
  `);

  if (createResult.status < 400) {
    console.log('✓ announcements_category_id_fkey created');
  } else {
    console.error('Error:', createResult.body);
  }

  const createResult2 = await runMgmtQuery(`
    ALTER TABLE announcements ADD CONSTRAINT fk_announcements_category
      FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE SET NULL;
  `);

  if (createResult2.status < 400) {
    console.log('✓ fk_announcements_category created');
  } else {
    console.log('Note (may already exist):', createResult2.body.substring(0, 100));
  }

  console.log('\n--- Verify ---');
  const constraintsResult = await runMgmtQuery(`
    SELECT conname FROM pg_constraint WHERE conrelid = 'announcements'::regclass AND contype = 'f';
  `);
  if (constraintsResult.status < 400) {
    console.log('FK constraints on announcements:', JSON.parse(constraintsResult.body).map(c => c.conname).join(', '));
  }

  const countResult = await runMgmtQuery('SELECT COUNT(*) as total FROM categories;');
  console.log('Categories:', countResult.status < 400 ? JSON.parse(countResult.body)[0].total : 'error');
}

main().catch(console.error);