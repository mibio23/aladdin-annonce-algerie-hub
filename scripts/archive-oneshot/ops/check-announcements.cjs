const path = require('path');
require('dotenv').config({ path: path.resolve(__dirname, '..', '..', '.env') });
const { runMgmtQuery } = require('./supabase-http.cjs');

async function main() {
  console.log('=== CHECKING ANNOUNCEMENT CATEGORIES ===\n');

  const annResult = await runMgmtQuery(`
    SELECT id, title, category_id FROM announcements;
  `);

  if (annResult.status < 400) {
    const announcements = JSON.parse(annResult.body);
    console.log(`Total announcements: ${announcements.length}`);
    console.log('\nAnnouncements:');
    announcements.forEach(a => {
      console.log(`  ID: ${a.id}`);
      console.log(`  Title: ${a.title}`);
      console.log(`  category_id: ${a.category_id}`);
      console.log('');
    });
  }
}

main().catch(console.error);