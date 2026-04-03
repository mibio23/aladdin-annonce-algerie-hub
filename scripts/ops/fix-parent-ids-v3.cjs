const path = require('path');
require('dotenv').config({ path: path.resolve(__dirname, '..', '..', '.env') });
const fs = require('fs');
const { runMgmtQuery } = require('./supabase-http.cjs');

async function main() {
  console.log('=== FIX PARENT_ID v3 ===\n');

  console.log('--- PHASE 1: Load menu data with original relationships ---');
  const data = JSON.parse(fs.readFileSync(path.join(__dirname, '..', '..', 'menu-form-supabase-audit.json'), 'utf8'));
  const menuCategories = data.menuCategories || [];

  const slugToParentSlug = new Map();

  function processCategory(cat) {
    if (cat.categorySlug) {
      if (!slugToParentSlug.has(cat.categorySlug)) {
        slugToParentSlug.set(cat.categorySlug, null);
      }
    }
    if (cat.directSubcategories) {
      cat.directSubcategories.forEach(sub => {
        if (!slugToParentSlug.has(sub.slug)) {
          slugToParentSlug.set(sub.slug, cat.categorySlug);
        }
      });
    }
    if (cat.allDescendants) {
      cat.allDescendants.forEach(desc => {
        if (!slugToParentSlug.has(desc.slug)) {
          slugToParentSlug.set(desc.slug, desc.parentSlug);
        }
      });
    }
  }

  menuCategories.forEach(cat => {
    processCategory(cat);
    if (cat.directSubcategories) cat.directSubcategories.forEach(sub => processCategory(sub));
    if (cat.allDescendants) cat.allDescendants.forEach(desc => processCategory(desc));
  });

  console.log(`Built ${slugToParentSlug.size} slug-to-parent relationships`);

  console.log('\n--- PHASE 2: Load DB slug -> id mapping ---');
  const dbResult = await runMgmtQuery('SELECT id, slug FROM categories;');
  if (dbResult.status >= 400) {
    console.error('Error loading DB:', dbResult.body);
    return;
  }
  const dbCategories = JSON.parse(dbResult.body);
  const slugToId = new Map();
  dbCategories.forEach(c => slugToId.set(c.slug, c.id));
  console.log(`Loaded ${dbCategories.length} DB categories`);

  console.log('\n--- PHASE 3: Drop FK constraint ---');
  await runMgmtQuery('ALTER TABLE categories DROP CONSTRAINT IF EXISTS categories_parent_id_fkey;');
  console.log('✓ FK dropped');

  console.log('\n--- PHASE 4: Batch update parent_id ---');

  const updates = [];
  for (const [slug, parentSlug] of slugToParentSlug.entries()) {
    if (!parentSlug) continue;

    const childId = slugToId.get(slug);
    const parentId = slugToId.get(parentSlug);

    if (childId && parentId) {
      updates.push({ childId, parentId, slug, parentSlug });
    }
  }

  console.log(`Valid updates: ${updates.length}`);

  const batchSize = 100;
  let updated = 0;
  let errors = 0;

  for (let i = 0; i < updates.length; i += batchSize) {
    const batch = updates.slice(i, i + batchSize);
    const conditions = batch.map(u =>
      `(id = '${u.childId}' AND parent_id IS DISTINCT FROM '${u.parentId}')`
    ).join(' OR ');

    const sql = `UPDATE categories SET parent_id = CASE ${batch.map(u => `WHEN id = '${u.childId}' THEN '${u.parentId}'`).join(' ')} END WHERE ${conditions};`;

    const result = await runMgmtQuery(sql);

    if (result.status < 400) {
      updated += batch.length;
      process.stdout.write('.');
    } else {
      errors += batch.length;
    }

    if ((i / batchSize + 1) % 20 === 0) {
      process.stdout.write(` ${Math.floor(i / batchSize + 1)}/${Math.ceil(updates.length / batchSize)}\n`);
    }
  }

  console.log(`\n\nUpdated: ${updated}, Errors: ${errors}`);

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

  const sampleResult = await runMgmtQuery(`
    SELECT c.slug, p.slug as parent_slug
    FROM categories c
    LEFT JOIN categories p ON c.parent_id = p.id
    WHERE c.parent_id IS NOT NULL
    LIMIT 10;
  `);
  if (sampleResult.status < 400) {
    console.log('\nSample parent-child relationships:');
    JSON.parse(sampleResult.body).forEach(r => console.log(`  ${r.parent_slug} -> ${r.slug}`));
  }
}

main().catch(console.error);