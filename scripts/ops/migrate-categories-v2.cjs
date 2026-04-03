const path = require('path');
const fs = require('fs');
require('dotenv').config({ path: path.resolve(__dirname, '..', '..', '.env') });
const { runMgmtQuery } = require('./supabase-http.cjs');

function flattenCategories(menuCategories) {
  const flat = [];
  const slugToUuid = new Map();

  for (const cat of menuCategories) {
    const catUuid = crypto.randomUUID();
    slugToUuid.set(cat.categorySlug, catUuid);

    flat.push({
      slug: cat.categorySlug,
      name: cat.categoryName,
      category_uuid: catUuid,
      parent_id: null,
      level: 1,
      sort_order: flat.length
    });

    if (cat.directSubcategories) {
      for (const sub of cat.directSubcategories) {
        if (slugToUuid.has(sub.slug)) continue;
        const subUuid = crypto.randomUUID();
        slugToUuid.set(sub.slug, subUuid);

        flat.push({
          slug: sub.slug,
          name: sub.name,
          category_uuid: subUuid,
          parent_id: catUuid,
          level: 2,
          sort_order: flat.length
        });
      }
    }

    if (cat.allDescendants) {
      for (const desc of cat.allDescendants) {
        if (slugToUuid.has(desc.slug)) continue;
        const descUuid = crypto.randomUUID();
        slugToUuid.set(desc.slug, descUuid);

        const parentUuid = desc.parentSlug ? slugToUuid.get(desc.parentSlug) || null : null;

        flat.push({
          slug: desc.slug,
          name: desc.name,
          category_uuid: descUuid,
          parent_id: parentUuid,
          level: desc.level,
          sort_order: flat.length
        });
      }
    }
  }

  return { flat, slugToUuid };
}

async function main() {
  console.log('=== SUPABASE CATEGORY MIGRATION v4 ===\n');

  const dataPath = path.join(__dirname, '..', '..', 'menu-form-supabase-audit.json');
  const data = JSON.parse(fs.readFileSync(dataPath, 'utf8'));

  const menuCategories = data.menuCategories || [];
  console.log(`Top-level categories: ${menuCategories.length}`);

  const { flat, slugToUuid } = flattenCategories(menuCategories);
  console.log(`Total flattened categories: ${flat.length}`);

  console.log('\n--- PHASE 1: Drop ALL FK constraints from announcements ---');
  const dropResult = await runMgmtQuery(`
    ALTER TABLE announcements DROP CONSTRAINT IF EXISTS announcements_category_id_fkey;
    ALTER TABLE announcements DROP CONSTRAINT IF EXISTS fk_announcements_category;
  `);
  if (dropResult.status >= 400) {
    console.log(`Note dropping FK: ${dropResult.status} - ${dropResult.body.substring(0, 200)}`);
  } else {
    console.log('✓ Both FK constraints dropped');
  }

  console.log('\n--- PHASE 2: DELETE existing categories ---');
  const deleteResult = await runMgmtQuery('DELETE FROM categories;');
  if (deleteResult.status >= 400) {
    console.error(`ERROR deleting categories: ${deleteResult.status} - ${deleteResult.body}`);
    return;
  }
  console.log('✓ All existing categories deleted');

  console.log('\n--- PHASE 3: BULK INSERT via UNNEST ---');

  const chunkSize = 200;
  let totalOk = 0;
  let totalErrors = 0;

  for (let i = 0; i < flat.length; i += chunkSize) {
    const chunk = flat.slice(i, i + chunkSize);
    const lotNum = Math.floor(i / chunkSize) + 1;
    const totalLots = Math.ceil(flat.length / chunkSize);

    const slugs = chunk.map(c => c.slug);
    const names = chunk.map(c => c.name.replace(/'/g, "''"));
    const uuids = chunk.map(c => c.category_uuid);
    const parentIds = chunk.map(c => c.parent_id || null);
    const levels = chunk.map(c => c.level);
    const sortOrders = chunk.map(c => c.sort_order || 0);

    const sql = `
INSERT INTO categories (id, slug, name, category_uuid, parent_id, level, sort_order, is_active, created_at, updated_at)
SELECT
  u.category_uuid::uuid,
  u.slug,
  u.name,
  u.category_uuid::uuid,
  u.parent_id::uuid,
  u.level::integer,
  u.sort_order::integer,
  true,
  NOW(),
  NOW()
FROM UNNEST(
  ARRAY[${slugs.map(s => `'${s}'`).join(',')}],
  ARRAY[${names.map(n => `'${n}'`).join(',')}],
  ARRAY[${uuids.map(u => `'${u}'`).join(',')}],
  ARRAY[${parentIds.map(p => p ? `'${p}'` : 'NULL').join(',')}],
  ARRAY[${levels.join(',')}],
  ARRAY[${sortOrders.join(',')}]
) AS u(slug, name, category_uuid, parent_id, level, sort_order);
`.trim();

    const result = await runMgmtQuery(sql);

    if (result.status >= 400) {
      console.error(`  Lot ${lotNum}/${totalLots}: ERROR ${result.status} - ${result.body.substring(0, 200)}`);
      totalErrors += chunk.length;
    } else {
      totalOk += chunk.length;
      process.stdout.write(`.`);
    }

    if (lotNum % 10 === 0 || lotNum === totalLots) {
      process.stdout.write(` ${lotNum}/${totalLots}\n`);
    }
  }

  console.log(`\n\n--- PHASE 4: Recreate FK with ON DELETE SET NULL ---`);
  const recreateResult = await runMgmtQuery(`
    ALTER TABLE announcements ADD CONSTRAINT announcements_category_id_fkey
      FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE SET NULL;
    ALTER TABLE announcements ADD CONSTRAINT fk_announcements_category
      FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE SET NULL;
  `);
  if (recreateResult.status >= 400) {
    console.log(`Note recreating FK: ${recreateResult.status} - ${recreateResult.body.substring(0, 200)}`);
  } else {
    console.log('✓ Both FK constraints recreated with ON DELETE SET NULL');
  }

  console.log(`\n--- PHASE 5: SUMMARY ---`);
  console.log(`Total inserted: ${totalOk}`);
  console.log(`Total errors: ${totalErrors}`);

  console.log('\n--- PHASE 6: VERIFY ---');
  const countResult = await runMgmtQuery('SELECT COUNT(*) as total FROM categories;');
  if (countResult.status < 400) {
    try {
      const parsed = JSON.parse(countResult.body);
      console.log(`Categories in DB now: ${JSON.stringify(parsed)}`);
    } catch {
      console.log(`Count result: ${countResult.body}`);
    }
  }

  console.log('\n--- PHASE 7: Sample verification ---');
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

  console.log('\n--- PHASE 8: Level distribution ---');
  const levelResult = await runMgmtQuery('SELECT level, COUNT(*) as count FROM categories GROUP BY level ORDER BY level;');
  if (levelResult.status < 400) {
    try {
      const parsed = JSON.parse(levelResult.body);
      parsed.forEach(r => console.log(`  Level ${r.level}: ${r.count}`));
    } catch {
      console.log(`Level result: ${levelResult.body}`);
    }
  }

  fs.writeFileSync(
    path.join(__dirname, '..', '..', 'slug-to-uuid-map.json'),
    JSON.stringify(Object.fromEntries(slugToUuid), null, 2)
  );
  console.log('\n✓ slug-to-uuid-map.json saved');
}

main().catch(console.error);