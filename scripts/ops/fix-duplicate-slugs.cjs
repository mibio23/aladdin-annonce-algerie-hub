const path = require('path');
const fs = require('fs');
require('dotenv').config({ path: path.resolve(__dirname, '..', '..', '.env') });
const { runMgmtQuery } = require('./supabase-http.cjs');

function flattenCategoriesWithUniqueSlugs(menuCategories) {
  const flat = [];
  const slugCount = new Map();

  for (const cat of menuCategories) {
    const catUuid = crypto.randomUUID();
    const baseSlug = cat.categorySlug;
    const slug = getUniqueSlug(baseSlug, slugCount);
    slugCount.set(baseSlug, slugCount.get(baseSlug) + 1);

    flat.push({
      slug,
      originalSlug: cat.categorySlug,
      name: cat.categoryName,
      category_uuid: catUuid,
      parent_id: null,
      level: 1,
      sort_order: flat.length
    });

    if (cat.directSubcategories) {
      for (const sub of cat.directSubcategories) {
        const subBaseSlug = sub.slug;
        const subSlug = getUniqueSlug(subBaseSlug, slugCount);
        slugCount.set(subBaseSlug, (slugCount.get(subBaseSlug) || 0) + 1);
        const subUuid = crypto.randomUUID();

        flat.push({
          slug: subSlug,
          originalSlug: sub.slug,
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
        const descBaseSlug = desc.slug;
        const descSlug = getUniqueSlug(descBaseSlug, slugCount);
        slugCount.set(descBaseSlug, (slugCount.get(descBaseSlug) || 0) + 1);
        const descUuid = crypto.randomUUID();

        flat.push({
          slug: descSlug,
          originalSlug: desc.slug,
          name: desc.name,
          category_uuid: descUuid,
          parent_id: null,
          level: desc.level,
          sort_order: flat.length
        });
      }
    }
  }

  return { flat, slugCount };
}

function getUniqueSlug(baseSlug, slugCount) {
  const count = slugCount.get(baseSlug) || 0;
  if (count === 0) return baseSlug;
  return `${baseSlug}-${count}`;
}

async function main() {
  console.log('=== FIX DUPLICATE SLUGS ===\n');

  const dataPath = path.join(__dirname, '..', '..', 'menu-form-supabase-audit.json');
  const data = JSON.parse(fs.readFileSync(dataPath, 'utf8'));

  const menuCategories = data.menuCategories || [];
  console.log(`Top-level categories: ${menuCategories.length}`);

  const { flat, slugCount } = flattenCategoriesWithUniqueSlugs(menuCategories);
  console.log(`Total flattened categories: ${flat.length}`);
  console.log(`Duplicate slugs processed: ${[...slugCount.entries()].filter(([k,v])=>v>1).length}`);

  console.log('\n--- PHASE 1: Get existing slugs in DB ---');
  const existingResult = await runMgmtQuery('SELECT slug FROM categories;');
  const existingSlugs = new Set();
  if (existingResult.status < 400) {
    try {
      const existing = JSON.parse(existingResult.body);
      existing.forEach(r => existingSlugs.add(r.slug));
      console.log(`Existing slugs in DB: ${existingSlugs.size}`);
    } catch {
      console.log('Could not parse existing slugs');
    }
  }

  console.log('\n--- PHASE 2: Filter and insert missing categories ---');

  const toInsert = flat.filter(c => !existingSlugs.has(c.slug));
  console.log(`Categories to insert: ${toInsert.length}`);

  let totalOk = 0;
  let totalErrors = 0;

  for (let i = 0; i < toInsert.length; i += 50) {
    const chunk = toInsert.slice(i, i + 50);
    const lotNum = Math.floor(i / 50) + 1;
    const totalLots = Math.ceil(toInsert.length / 50);

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
) AS u(slug, name, category_uuid, parent_id, level, sort_order)
ON CONFLICT (slug) DO NOTHING;
`.trim();

    const result = await runMgmtQuery(sql);

    if (result.status >= 400) {
      console.error(`  Lot ${lotNum}/${totalLots}: ERROR ${result.status} - ${result.body.substring(0, 150)}`);
      totalErrors += chunk.length;
    } else {
      totalOk += chunk.length;
      process.stdout.write(`.`);
    }

    if (lotNum % 10 === 0 || lotNum === totalLots) {
      process.stdout.write(` ${lotNum}/${totalLots}\n`);
    }
  }

  console.log(`\n\n--- PHASE 3: SUMMARY ---`);
  console.log(`Total inserted: ${totalOk}`);
  console.log(`Total errors: ${totalErrors}`);

  console.log('\n--- PHASE 4: Final verification ---');
  const countResult = await runMgmtQuery('SELECT COUNT(*) as total FROM categories;');
  if (countResult.status < 400) {
    try {
      const parsed = JSON.parse(countResult.body);
      console.log(`Categories in DB now: ${JSON.stringify(parsed)}`);
    } catch {
      console.log(`Count result: ${countResult.body}`);
    }
  }

  console.log('\n--- PHASE 5: Level distribution ---');
  const levelResult = await runMgmtQuery('SELECT level, COUNT(*) as count FROM categories GROUP BY level ORDER BY level;');
  if (levelResult.status < 400) {
    try {
      const parsed = JSON.parse(levelResult.body);
      parsed.forEach(r => console.log(`  Level ${r.level}: ${r.count}`));
    } catch {
      console.log(`Level result: ${levelResult.body}`);
    }
  }
}

main().catch(console.error);