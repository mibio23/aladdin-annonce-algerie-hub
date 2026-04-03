const path = require('path');
require('dotenv').config({ path: path.resolve(__dirname, '..', '..', '.env') });
const { runMgmtQuery } = require('./supabase-http.cjs');

async function main() {
  console.log('=== RECREATE ANNOUNCEMENTS FK ===\n');

  console.log('--- Checking announcements table ---');
  const annResult = await runMgmtQuery('SELECT id, category_id FROM announcements LIMIT 5;');
  if (annResult.status < 400) {
    console.log('Sample announcements:', annResult.body);
  }

  console.log('\n--- Drop existing FKs ---');
  await runMgmtQuery('ALTER TABLE announcements DROP CONSTRAINT IF EXISTS announcements_category_id_fkey;');
  await runMgmtQuery('ALTER TABLE announcements DROP CONSTRAINT IF EXISTS fk_announcements_category;');
  console.log('✓ FKs dropped');

  console.log('\n--- Recreate with ON DELETE SET NULL ---');
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

  console.log('\n--- Final verification ---');
  const countResult = await runMgmtQuery('SELECT COUNT(*) as total FROM categories;');
  console.log('Categories:', countResult.status < 400 ? JSON.parse(countResult.body)[0].total : 'error');

  const constraintsResult = await runMgmtQuery(`
    SELECT conname FROM pg_constraint WHERE conrelid = 'announcements'::regclass AND contype = 'f';
  `);
  if (constraintsResult.status < 400) {
    console.log('FK constraints on announcements:', JSON.parse(constraintsResult.body).map(c => c.conname).join(', '));
  }
}

main().catch(console.error);