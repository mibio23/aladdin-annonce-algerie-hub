const path = require('path');
require('dotenv').config({ path: path.resolve(__dirname, '..', '..', '.env') });
const fs = require('fs');
const { runMgmtQuery } = require('./supabase-http.cjs');

async function main() {
  console.log('=== FIX PARENT_ID v2 ===\n');

  console.log('--- PHASE 1: Load DB slugs ---');
  const dbResult = await runMgmtQuery('SELECT id, slug, category_uuid FROM categories;');
  if (dbResult.status >= 400) {
    console.error('Error loading DB:', dbResult.body);
    return;
  }
  const dbCategories = JSON.parse(dbResult.body);
  const slugToUuid = new Map();
  const uuidToId = new Map();
  dbCategories.forEach(c => {
    slugToUuid.set(c.slug, c.category_uuid);
    uuidToId.set(c.category_uuid, c.id);
  });
  console.log(`Loaded ${dbCategories.length} categories from DB`);

  console.log('\n--- PHASE 2: Load menu data and build parent relationships ---');
  const data = JSON.parse(fs.readFileSync(path.join(__dirname, '..', '..', 'menu-form-supabase-audit.json'), 'utf8'));
  const menuCategories = data.menuCategories || [];

  const parentSlugToCatUuid = new Map();

  function processCategory(cat, parentSlug) {
    if (cat.categorySlug) {
      parentSlugToCatUuid.set(cat.categorySlug, { uuid: cat.category_uuid, parentSlug: parentSlug });
    }
    if (cat.directSubcategories) {
      cat.directSubcategories.forEach(sub => {
        parentSlugToCatUuid.set(sub.slug, { uuid: sub.category_uuid, parentSlug: cat.categorySlug });
      });
    }
    if (cat.allDescendants) {
      cat.allDescendants.forEach(desc => {
        parentSlugToCatUuid.set(desc.slug, { uuid: desc.category_uuid, parentSlug: desc.parentSlug });
      });
    }
  }

  menuCategories.forEach(cat => {
    processCategory(cat, null);
    if (cat.directSubcategories) {
      cat.directSubcategories.forEach(sub => processCategory(sub, cat.categorySlug));
    }
    if (cat.allDescendants) {
      cat.allDescendants.forEach(desc => processCategory(desc, desc.parentSlug));
    }
  });

  console.log(`Built ${parentSlugToCatUuid.size} parent relationships`);

  console.log('\n--- PHASE 3: Drop FK constraint ---');
  await runMgmtQuery('ALTER TABLE categories DROP CONSTRAINT IF EXISTS categories_parent_id_fkey;');
  console.log('✓ FK dropped');

  console.log('\n--- PHASE 4: Update parent_id correctly ---');
  let updateCount = 0;
  let errorCount = 0;

  for (const [slug, info] of parentSlugToCatUuid.entries()) {
    if (!info.parentSlug) continue;

    const childDbUuid = slugToUuid.get(slug);
    const parentDbUuid = slugToUuid.get(info.parentSlug);

    if (!childDbUuid || !parentDbUuid) continue;

    const childDbId = uuidToId.get(childDbUuid);
    const parentDbId = uuidToId.get(parentDbUuid);

    if (!childDbId || !parentDbId) continue;

    const updateResult = await runMgmtQuery(`
      UPDATE categories SET parent_id = '${parentDbId}' WHERE id = '${childDbId}' AND parent_id IS DISTINCT FROM '${parentDbId}';
    `);

    if (updateResult.status < 400) {
      updateCount++;
    } else {
      errorCount++;
    }
  }

  console.log(`Updated: ${updateCount}, Errors: ${errorCount}`);

  console.log('\n--- PHASE 5: Recreate FK ---');
  const recreateResult = await runMgmtQuery(`
    ALTER TABLE categories ADD CONSTRAINT categories_parent_id_fkey
      FOREIGN KEY (parent_id) REFERENCES categories(id) ON DELETE SET NULL;
  `);
  console.log(recreateResult.status < 400 ? '✓ FK recreated' : `Note: ${recreateResult.status}`);

  console.log('\n--- PHASE 6: Verify ---');
  const countResult = await runMgmtQuery('SELECT COUNT(*) as total, COUNT(parent_id) as with_parent FROM categories;');
  if (countResult.status < 400) {
    console.log(`Categories: ${countResult.body}`);
  }

  const levelResult = await runMgmtQuery('SELECT level, COUNT(*) as count, COUNT(parent_id) as with_parent FROM categories GROUP BY level ORDER BY level;');
  if (levelResult.status < 400) {
    console.log('\nLevel distribution:');
    JSON.parse(levelResult.body).forEach(r => console.log(`  Level ${r.level}: ${r.count} (parent: ${r.with_parent})`));
  }
}

main().catch(console.error);