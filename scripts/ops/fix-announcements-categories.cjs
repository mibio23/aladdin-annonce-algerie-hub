const path = require('path');
require('dotenv').config({ path: path.resolve(__dirname, '..', '..', '.env') });
const { runMgmtQuery } = require('./supabase-http.cjs');

async function main() {
  console.log('=== FIX ANNOUNCEMENTS CATEGORIES ===\n');

  console.log('--- Step 1: Make category_id nullable ---');
  const alterResult = await runMgmtQuery(`
    ALTER TABLE announcements ALTER COLUMN category_id DROP NOT NULL;
  `);
  console.log(alterResult.status < 400 ? '✓ category_id is now nullable' : `Note: ${alterResult.status}`);

  console.log('\n--- Step 2: Find valid category for each announcement ---');

  const validCategories = await runMgmtQuery(`
    SELECT id, slug, name FROM categories
    WHERE slug IN ('immobilier-maison', 'smartphones', 'telephonie')
    ORDER BY level;
  `);

  let validCat = {};
  if (validCategories.status < 400) {
    JSON.parse(validCategories.body).forEach(c => {
      if (!validCat.main) validCat.main = c;
      if (c.slug === 'smartphones') validCat.smartphones = c;
    });
    console.log('Valid categories found:', JSON.stringify(validCat));
  }

  console.log('\n--- Step 3: Update each announcement with correct category ---');

  const updateQueries = [
    {
      id: '645bac72-986d-4a53-b91d-8fdd273a59d3',
      slug: 'ventes-immobilieres',
      name: 'Ventes Immobilières'
    },
    {
      id: 'dbb0d464-aa43-4a13-9478-ba12fec0e9c3',
      slug: 'ventes-immobilieres',
      name: 'Ventes Immobilières'
    },
    {
      id: '364fdcbc-4b4f-460f-8531-61067073c3c7',
      slug: 'ventes-immobilieres',
      name: 'Ventes Immobilières'
    },
    {
      id: '23a0dce5-c791-43a2-b93a-7507af905548',
      slug: 'smartphones',
      name: 'Smartphones'
    }
  ];

  for (const upd of updateQueries) {
    const catResult = await runMgmtQuery(`SELECT id FROM categories WHERE slug = '${upd.slug}' LIMIT 1;`);
    if (catResult.status < 400 && JSON.parse(catResult.body).length > 0) {
      const newCatId = JSON.parse(catResult.body)[0].id;
      const updateResult = await runMgmtQuery(`
        UPDATE announcements SET category_id = '${newCatId}' WHERE id = '${upd.id}';
      `);
      console.log(`✓ Updated ${upd.id} (${upd.name}) -> ${upd.slug} (${newCatId})`);
    } else {
      console.log(`✗ Could not find category for ${upd.name}`);
    }
  }

  console.log('\n--- Step 4: Recreate FK constraint ---');
  await runMgmtQuery('ALTER TABLE announcements DROP CONSTRAINT IF EXISTS announcements_category_id_fkey;');
  await runMgmtQuery('ALTER TABLE announcements DROP CONSTRAINT IF EXISTS fk_announcements_category;');

  const createResult = await runMgmtQuery(`
    ALTER TABLE announcements ADD CONSTRAINT announcements_category_id_fkey
      FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE SET NULL;
  `);
  console.log(createResult.status < 400 ? '✓ FK created' : `Error: ${createResult.body}`);

  const createResult2 = await runMgmtQuery(`
    ALTER TABLE announcements ADD CONSTRAINT fk_announcements_category
      FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE SET NULL;
  `);
  console.log(createResult2.status < 400 ? '✓ fk_announcements_category created' : `Note: ${createResult2.body.substring(0, 50)}`);

  console.log('\n--- Verify ---');
  const constraintsResult = await runMgmtQuery(`
    SELECT conname FROM pg_constraint WHERE conrelid = 'announcements'::regclass AND contype = 'f';
  `);
  if (constraintsResult.status < 400) {
    console.log('FK constraints on announcements:', JSON.parse(constraintsResult.body).map(c => c.conname).join(', '));
  }

  const countResult = await runMgmtQuery('SELECT COUNT(*) as total FROM categories;');
  console.log('Categories:', countResult.status < 400 ? JSON.parse(countResult.body)[0].total : 'error');

  const annCatResult = await runMgmtQuery('SELECT id, category_id FROM announcements;');
  if (annCatResult.status < 400) {
    console.log('Announcements category_ids:', annCatResult.body);
  }
}

main().catch(console.error);