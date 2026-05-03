const fs = require('fs');
const path = require('path');
const dotenv = require('dotenv');
const { createClient } = require('@supabase/supabase-js');
const { Pool } = require('pg');

dotenv.config();

const rootDir = path.resolve(__dirname, '..', '..');
const auditReportPath = path.join(rootDir, 'menu-form-supabase-audit.json');
const dupReportPath = path.join(rootDir, 'subcategory-duplicate-slugs-audit.json');

const supabaseUrl = process.env.VITE_SUPABASE_URL || process.env.SUPABASE_URL;
const supabaseKey =
  process.env.SUPABASE_SERVICE_KEY ||
  process.env.SUPABASE_SERVICE_ROLE_KEY ||
  process.env.SUPABASE_SERVICE_ROLE ||
  process.env.VITE_SUPABASE_ANON_KEY ||
  process.env.VITE_SUPABASE_PUBLISHABLE_KEY;

const PG_CONNECTION_STRING =
  process.env.PG_CONNECTION_STRING ||
  `postgresql://postgres:${encodeURIComponent(supabaseKey)}@db.${supabaseUrl.replace('https://', '')}:5432/postgres`;

const DRY_RUN = process.argv.includes('--dry-run');
const CHUNK_SIZE = parseInt(process.argv.find(a => a.startsWith('--chunk='))?.split('=')[1] || '200', 10);
const SKIP_DDL = process.argv.includes('--skip-ddl');

if (!supabaseUrl || !supabaseKey) {
  console.error('❌ Variables Supabase manquantes dans .env');
  console.error('   Attendu: VITE_SUPABASE_URL + SUPABASE_SERVICE_KEY');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseKey);
let pool = null;

async function getPool() {
  if (!pool) {
    pool = new Pool({ connectionString: PG_CONNECTION_STRING, ssl: { rejectUnauthorized: false } });
  }
  return pool;
}

async function runDDL(sql) {
  const p = await getPool();
  try {
    await p.query(sql);
  } catch (e) {
    throw new Error(`DDL Error: ${e.message}`);
  }
}

const report = JSON.parse(fs.readFileSync(auditReportPath, 'utf8'));
const dupReport = fs.existsSync(dupReportPath)
  ? JSON.parse(fs.readFileSync(dupReportPath, 'utf8'))
  : null;

const dupSlugs = new Set();
if (dupReport) {
  for (const d of dupReport.directDuplicates || []) dupSlugs.add(d.slug);
  for (const d of dupReport.allDuplicates || []) dupSlugs.add(d.slug);
}

function uuidv4() {
  return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, c => {
    const r = Math.random() * 16 | 0;
    return (c === 'x' ? r : (r & 0x3 | 0x8)).toString(16);
  });
}

const slugToUuid = {};
const allEntries = [];

for (const cat of report.menuCategories) {
  if (!slugToUuid[cat.categorySlug]) slugToUuid[cat.categorySlug] = uuidv4();

  allEntries.push({
    slug: cat.categorySlug,
    name: cat.categoryName,
    parent_id: null,
    level: 1,
    category_uuid: slugToUuid[cat.categorySlug],
    is_active: true,
    created_at: new Date().toISOString(),
    updated_at: new Date().toISOString(),
    _originalSlug: cat.categorySlug,
    _isDuplicated: false,
    _parentSlug: null
  });

  for (const sub of cat.directSubcategories) {
    const isDup = dupSlugs.has(sub.slug);
    const finalSlug = isDup ? `${cat.categorySlug}-${sub.slug}` : sub.slug;
    if (!slugToUuid[finalSlug]) slugToUuid[finalSlug] = uuidv4();

    allEntries.push({
      slug: finalSlug,
      name: sub.name,
      parent_id: slugToUuid[cat.categorySlug] || null,
      level: 2,
      category_uuid: slugToUuid[finalSlug],
      is_active: true,
      created_at: new Date().toISOString(),
      updated_at: new Date().toISOString(),
      _originalSlug: sub.slug,
      _isDuplicated: isDup,
      _parentSlug: cat.categorySlug
    });
  }

  for (const node of cat.allDescendants || []) {
    if (node.level < 3) continue;
    const isDup = dupSlugs.has(node.slug);
    const parentKey = node.parentSlug || cat.categorySlug;
    const finalSlug = isDup ? `${parentKey}-${node.slug}` : node.slug;
    if (!slugToUuid[finalSlug]) slugToUuid[finalSlug] = uuidv4();

    allEntries.push({
      slug: finalSlug,
      name: node.name,
      parent_id: slugToUuid[parentKey] || null,
      level: node.level,
      category_uuid: slugToUuid[finalSlug],
      is_active: true,
      created_at: new Date().toISOString(),
      updated_at: new Date().toISOString(),
      _originalSlug: node.slug,
      _isDuplicated: isDup,
      _parentSlug: parentKey
    });
  }
}

const totalEntries = allEntries.length;
const chunks = [];
for (let i = 0; i < allEntries.length; i += CHUNK_SIZE) {
  chunks.push(allEntries.slice(i, i + CHUNK_SIZE));
}

const dupCount = allEntries.filter(e => e._isDuplicated).length;
const safeCount = allEntries.filter(e => !e._isDuplicated).length;

console.log('============================================================');
console.log('  SUPABASE DIRECT INSERT - Option B (suffixage auto)');
console.log('============================================================');
console.log(`Mode: ${DRY_RUN ? '🔸 DRY-RUN' : '🔴 RÉEL'}`);
console.log(`Total entrées: ${totalEntries}`);
console.log(`  - Uniques: ${safeCount}`);
console.log(`  - Dupliqués suffixés: ${dupCount}`);
console.log(`Taille lot: ${CHUNK_SIZE}`);
console.log(`Nombre de lots: ${chunks.length}`);
console.log('------------------------------------------------------------');

async function run() {
  console.log('\n[1/6] PHASE DDL — Nettoyage + Structure + Trigger...');

  if (!SKIP_DDL && !DRY_RUN) {
    try {
      console.log('  → Suppression des doublons existants...');
      await runDDL(`
        DELETE FROM public.categories
        WHERE id IN (
          SELECT id FROM (
            SELECT id, ROW_NUMBER() OVER (PARTITION BY slug ORDER BY created_at NULLS FIRST, id) AS rnum
            FROM public.categories
            WHERE slug IS NOT NULL
          ) t
          WHERE t.rnum > 1
        );
      `);
      console.log('  ✅ Doublons supprimés');
    } catch (e) {
      console.log('  ⚠️  Doublons: ' + e.message.substring(0, 100));
    }

    try {
      console.log('  → Ajout colonne category_uuid...');
      await runDDL(`ALTER TABLE public.categories ADD COLUMN IF NOT EXISTS category_uuid UUID;`);
      await runDDL(`UPDATE public.categories SET category_uuid = gen_random_uuid() WHERE category_uuid IS NULL;`);
      await runDDL(`UPDATE public.categories SET category_uuid = id::uuid WHERE id::text ~ '^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$' AND category_uuid IS NULL;`);
      await runDDL(`UPDATE public.categories SET category_uuid = gen_random_uuid() WHERE category_uuid IS NULL;`);
      console.log('  ✅ Colonne category_uuid');
    } catch (e) {
      console.log('  ⚠️  category_uuid: ' + e.message.substring(0, 100));
    }

    try {
      console.log('  → Ajout colonne subcategory_uuid sur announcements...');
      await runDDL(`ALTER TABLE public.announcements ADD COLUMN IF NOT EXISTS subcategory_uuid UUID;`);
      console.log('  ✅ subcategory_uuid');
    } catch (e) {
      console.log('  ⚠️  subcategory_uuid: ' + e.message.substring(0, 100));
    }

    try {
      console.log('  → Trigger subcategory_uuid...');
      await runDDL(`
        CREATE OR REPLACE FUNCTION public.resolve_subcategory_uuid()
        RETURNS TRIGGER AS $$
        BEGIN
          IF NEW.subcategory_id IS NOT NULL AND NEW.subcategory_uuid IS NULL THEN
            SELECT c.category_uuid INTO NEW.subcategory_uuid
            FROM public.categories c
            WHERE c.slug = NEW.subcategory_id
            LIMIT 1;
          END IF;
          RETURN NEW;
        END;
        $$ LANGUAGE plpgsql;
      `);
      await runDDL(`
        DROP TRIGGER IF EXISTS trg_resolve_subcategory_uuid ON public.announcements;
        CREATE TRIGGER trg_resolve_subcategory_uuid
          BEFORE INSERT OR UPDATE OF subcategory_id ON public.announcements
          FOR EACH ROW
          EXECUTE FUNCTION public.resolve_subcategory_uuid();
      `);
      console.log('  ✅ Trigger créé');
    } catch (e) {
      console.log('  ⚠️  Trigger: ' + e.message.substring(0, 100));
    }

    try {
      console.log('  → Contrainte UNIQUE sur slug...');
      await runDDL(`
        DO $$
        BEGIN
          IF NOT EXISTS (SELECT 1 FROM pg_constraint WHERE conname = 'categories_slug_key') THEN
            ALTER TABLE public.categories ADD CONSTRAINT categories_slug_key UNIQUE (slug);
          END IF;
        END $$;
      `);
      console.log('  ✅ Contrainte UNIQUE créée');
    } catch (e) {
      console.log('  ⚠️  Contrainte: ' + e.message.substring(0, 100));
    }
  } else if (SKIP_DDL) {
    console.log('  ⏭️  DDL sauté (--skip-ddl)');
  }

  console.log('\n[2/6] PHASE DML — Insertion des catégories en lots...');
  let successCount = 0;
  let errorCount = 0;
  const errors = [];

  for (let i = 0; i < chunks.length; i++) {
    const chunk = chunks[i];
    const chunkNum = i + 1;

    if (DRY_RUN) {
      const dupInChunk = chunk.filter(e => e._isDuplicated).length;
      console.log(`  Lot ${chunkNum}/${chunks.length}: 🔸 SKIP — ${chunk.length} entrées (dont ${dupInChunk} suffixées)`);
      successCount += chunk.length;
    } else {
      process.stdout.write(`  Lot ${chunkNum}/${chunks.length}: ${chunk.length} entrées... `);

      const cleanChunk = chunk.map(({ _originalSlug, _isDuplicated, _parentSlug, ...rest }) => rest);

      const { data, error } = await supabase
        .from('categories')
        .upsert(cleanChunk, { onConflict: 'slug', ignoreDuplicates: false })
        .select('slug');

      if (error) {
        process.stdout.write(`❌ ERREUR\n`);
        errorCount += chunk.length;
        errors.push({ lot: chunkNum, error: error.message.substring(0, 120), samples: chunk.slice(0, 2).map(r => r.slug) });
      } else {
        process.stdout.write(`✅ OK (${data?.length || 0})\n`);
        successCount += data?.length || chunk.length;
      }
    }

    if (!DRY_RUN && i < chunks.length - 1) {
      await new Promise(r => setTimeout(r, 30));
    }
  }

  console.log('\n[3/6] PHASE DML — Mise à jour parent_id pour les catégories insérées...');

  if (!DRY_RUN) {
    try {
      let updated = 0;
      for (const entry of allEntries) {
        if (entry.parent_id) {
          const { error } = await supabase
            .from('categories')
            .update({ parent_id: entry.parent_id })
            .eq('slug', entry.slug)
            .is('parent_id', null);
          if (!error) updated++;
        }
      }
      console.log(`  → ${updated} parent_id mis à jour`);
    } catch (e) {
      console.log('  ⚠️  parent_id: ' + (e.message || e.code || 'non critique').substring(0, 100));
    }
  }

  console.log('\n[4/6] Conversion des annonces existantes...');

  if (!DRY_RUN) {
    try {
      const { data: annData, error: annErr } = await supabase
        .from('announcements')
        .select('id, subcategory_id')
        .not('subcategory_id', 'is', null)
        .not('subcategory_id', 'eq', '');

      if (!annErr && annData) {
        let converted = 0;
        for (const ann of annData) {
          const resolvedUuid = slugToUuid[ann.subcategory_id];
          if (resolvedUuid) {
            await supabase
              .from('announcements')
              .update({ subcategory_uuid: resolvedUuid })
              .eq('id', ann.id);
            converted++;
          }
        }
        console.log(`  → ${converted}/${annData.length} annonces converties`);
      } else {
        console.log('  ⚠️  Aucune annonce à convertir ou erreur: ' + (annErr?.message || '').substring(0, 80));
      }
    } catch (e) {
      console.log('  ⚠️  Conversion: ' + (e.message || e.code || '').substring(0, 100));
    }
  }

  console.log('\n[5/6] Vérification de la structure...');

  if (!DRY_RUN) {
    try {
      const { count: totalCount } = await supabase
        .from('categories')
        .select('*', { count: 'exact', head: true });

      const { count: level1Count } = await supabase
        .from('categories')
        .select('*', { count: 'exact', head: true })
        .is('parent_id', null);

      const { count: level2PlusCount } = await supabase
        .from('categories')
        .select('*', { count: 'exact', head: true })
        .not('parent_id', 'is', null);

      const { count: annWithUuid } = await supabase
        .from('announcements')
        .select('*', { count: 'exact', head: true })
        .not('subcategory_uuid', 'is', null);

      const { count: noUuid } = await supabase
        .from('announcements')
        .select('*', { count: 'exact', head: true })
        .not('subcategory_uuid', 'is', null)
        .not('subcategory_id', 'is', null)
        .not('subcategory_id', 'eq', '');

      console.log('  Résultat base:');
      console.log(`    Total catégories: ${totalCount}`);
      console.log(`    Principales (level 1): ${level1Count}`);
      console.log(`    Sous-catégories (level 2+): ${level2PlusCount}`);
      console.log(`    Annonces avec subcategory_uuid: ${annWithUuid}`);
      console.log(`    Annonces sans conversion: ${noUuid}`);
      console.log(`    Inscriptions réussies (estimé): ${successCount}`);
      if (errorCount > 0) console.log(`    Erreurs: ${errorCount}`);

      if (level1Count >= 29) {
        console.log('\n  ✅ Au moins 29 catégories principales insérées');
      }
    } catch (e) {
      console.log('  ⚠️  Vérification: ' + (e.message || e.code || '').substring(0, 100));
    }
  }

  if (pool) { await pool.end(); pool = null; }

  console.log('\n============================================================');
  console.log(`  RÉSULTAT: ${DRY_RUN ? 'DRY-RUN' : 'EXÉCUTÉ'}`);
  console.log(`  Entrées traitées: ${successCount} / ${totalEntries}`);
  if (errorCount > 0) console.log(`  Erreurs: ${errorCount}`);
  console.log('============================================================');

  if (errors.length > 0) {
    console.log('\nErreurs (échantillon):');
    errors.slice(0, 5).forEach(e => {
      console.log(`  Lot ${e.lot}: ${e.error}`);
      console.log(`    Exemples: ${e.samples.join(', ')}`);
    });
  }

  if (!DRY_RUN) {
    if (errorCount === 0) {
      console.log('\n🎉 Insertion terminée avec succès');
    } else {
      console.log(`\n⚠️  Terminé avec ${errorCount} erreurs`);
      console.log('   Relancez avec --skip-ddl pour réessayer uniquement les insertions');
    }
  }
}

run().catch(e => {
  console.error('❌ Script échoué:', e.message || e.code || e);
  if (pool) { pool.end().catch(() => {}); }
  process.exit(1);
});
