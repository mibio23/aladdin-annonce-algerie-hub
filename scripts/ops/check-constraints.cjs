const path = require('path');
require('dotenv').config({ path: path.resolve(__dirname, '..', '..', '.env') });
const { runMgmtQuery } = require('./supabase-http.cjs');

async function main() {
  console.log('=== CHECKING CONSTRAINTS ===\n');

  const result = await runMgmtQuery(`
    SELECT conname, contype, confrelid::regclass as referenced_table
    FROM pg_constraint
    WHERE conrelid = 'announcements'::regclass;
  `);

  if (result.status < 400) {
    try {
      const constraints = JSON.parse(result.body);
      console.log('Constraints on announcements table:');
      console.log(JSON.stringify(constraints, null, 2));
    } catch {
      console.log('Raw:', result.body);
    }
  } else {
    console.error('Error:', result.body);
  }
}

main().catch(console.error);