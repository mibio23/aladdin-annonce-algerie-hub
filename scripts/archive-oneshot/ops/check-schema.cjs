const path = require('path');
require('dotenv').config({ path: path.resolve(__dirname, '..', '..', '.env') });
const { runMgmtQuery } = require('./supabase-http.cjs');

async function main() {
  console.log('=== CHECKING categories TABLE SCHEMA ===\n');

  const result = await runMgmtQuery(`
    SELECT column_name, data_type, is_nullable, column_default
    FROM information_schema.columns
    WHERE table_name = 'categories'
    ORDER BY ordinal_position;
  `);

  if (result.status < 400) {
    try {
      const columns = JSON.parse(result.body);
      console.log('Columns in categories table:');
      columns.forEach(c => console.log(`  ${c.column_name}: ${c.data_type} (nullable: ${c.is_nullable})`));
    } catch {
      console.log('Raw:', result.body);
    }
  } else {
    console.error('Error:', result.body);
  }
}

main().catch(console.error);