// Script de vérification post-migration CORRIGÉ
// Ce script vérifie que toutes les catégories et leurs traductions existent

const dotenv = require('dotenv');
dotenv.config({ path: '.env' });
dotenv.config({ path: '.env.local', override: true });
dotenv.config({ path: '.env.development', override: true });
dotenv.config({ path: '.env.production', override: true });
const { createClient } = require('@supabase/supabase-js');
const crypto = require('crypto');

const SUPABASE_URL = process.env.VITE_SUPABASE_URL;
const SUPABASE_PUBLISHABLE_KEY =
  process.env.VITE_SUPABASE_PUBLISHABLE_KEY || process.env.VITE_SUPABASE_ANON_KEY;
const SUPABASE_SERVICE_KEY =
  process.env.SUPABASE_SERVICE_KEY ||
  process.env.SUPABASE_SERVICE_ROLE_KEY ||
  process.env.SUPABASE_SERVICE_ROLE;

if (!SUPABASE_URL || !SUPABASE_PUBLISHABLE_KEY) {
  console.error('❌ Variables Supabase manquantes');
  console.error('Requis: VITE_SUPABASE_URL et VITE_SUPABASE_PUBLISHABLE_KEY (ou VITE_SUPABASE_ANON_KEY)');
  process.exit(1);
}

const supabase = createClient(SUPABASE_URL, SUPABASE_PUBLISHABLE_KEY);
const supabaseAdmin = SUPABASE_SERVICE_KEY
  ? createClient(SUPABASE_URL, SUPABASE_SERVICE_KEY)
  : null;

const expectedStructure = {
    languages: ['fr', 'ar', 'en', 'es', 'de', 'it'],
    categories: [
        { id: 'immobilier-maison', name: 'Immobilier & Maison' },
        { id: 'telephonie', name: 'Téléphonie' },
        { id: 'informatique-electronique', name: 'Informatique & Électronique' },
        { id: 'services-support', name: 'Services & Support' },
        { id: 'echanges-partage', name: 'Échanges & Partage' },
        { id: 'finance', name: 'Finance' },
        { id: 'education-loisirs', name: 'Éducation & Loisirs' },
        { id: 'emploi-carriere', name: 'Emploi & Carrière' },
        { id: 'evenements-billetterie', name: 'Événements & Billetterie' },
        { id: 'voyages-tourisme', name: 'Voyages & Tourisme' },
        { id: 'artisanat-traditionnel-algerien', name: 'Artisanat Traditionnel Algérien' },
        { id: 'gastronomie-alimentation', name: 'Gastronomie & Alimentation' },
        { id: 'sante-beaute', name: 'Santé & Beauté' },
        { id: 'parapharmacie-produit-chimique', name: 'Parapharmacie & Produits Chimiques' },
        { id: 'quincaillerie-generale', name: 'Quincaillerie Générale' },
        { id: 'jeux-video-consoles', name: 'Jeux Vidéo & Consoles' },
        { id: 'image-son-equipement-musique', name: 'Image, Son & Équipement Musique' },
        { id: 'mobilier-et-decoration', name: 'Mobilier & Décoration' },
        { id: 'nautisme', name: 'Nautisme & Bateaux' },
        { id: 'velo-cyclisme-equipements', name: 'Vélo, Cyclisme & Équipements' },
        { id: 'mode-accessoires', name: 'Vêtement Homme/Femme & Sous-vêtement' },
        { id: 'sacs-et-bagages', name: 'Sacs & Bagages' },
        { id: 'electromenager', name: 'Électroménager' },
        { id: 'bebe-puericulture', name: 'Bébé & Puériculture' },
        { id: 'btp-engins-construction', name: 'BTP, Engins & Construction' },
        { id: 'animaux-accessoires', name: 'Animaux & Accessoires' },
        { id: 'mode-et-accessoires', name: 'Mode & Accessoires' },
        { id: 'vehicules-equipements', name: 'Véhicules & Équipements' },
        { id: 'agriculture-agroalimentaire', name: 'Agriculture & Agroalimentaire' }
    ]
};

async function verifyMigration() {
    console.log('🚀 Démarrage de la vérification Supabase (Mode Translations)...');
    console.log(`🎯 URL: ${SUPABASE_URL}`);
    
    let totalErrors = 0;
    let totalSuccess = 0;

    for (const category of expectedStructure.categories) {
        console.log(`\n📂 Vérification Catégorie: ${category.name} (${category.id})`);

        const categoriesClient = supabaseAdmin || supabase;
        const { data: mainCat, error: mainErr } = await categoriesClient
            .from('categories')
            .select('id, name, slug')
            .eq('slug', category.id)
            .maybeSingle();

        if (mainErr || !mainCat) {
            console.log(`  ❌ Base (categories table): MANQUANTE`);
            totalErrors++;
            continue; // Pas la peine de vérifier les traductions si la catégorie n'existe pas
        } else {
            console.log(`  ✅ Base (categories table): OK`);
        }

        if (supabaseAdmin) {
            const { data: anonCat } = await supabase
                .from('categories')
                .select('id')
                .eq('slug', category.id)
                .maybeSingle();

            if (!anonCat) {
                console.log(`  ⚠️ Visible anon: NON`);
            }
        }

        const mainCategoryId = mainCat.id;

        // 2. Vérifier les traductions dans 'category_translations'
        // On vérifie pour chaque langue (sauf peut-être FR qui est souvent la base, mais on vérifie tout)
        const missingLangs = [];
        const foundLangs = [];

        for (const lang of expectedStructure.languages) {
            // Pour le français, on considère que c'est bon si c'est dans la table principale OU traductions
            if (lang === 'fr') {
                foundLangs.push('fr'); 
                continue;
            }

            const { data: trans, error: transErr } = await supabase
                .from('category_translations')
                .select('language_code')
                .eq('category_id', mainCategoryId)
                .eq('language_code', lang)
                .maybeSingle();

            if (trans) {
                foundLangs.push(lang);
            } else {
                missingLangs.push(lang);
            }
        }

        if (missingLangs.length === 0) {
            console.log(`  ✅ Traductions: TOUTES PRÉSENTES (${foundLangs.join(', ')})`);
            totalSuccess++;
        } else {
            console.log(`  ⚠️ Traductions manquantes: ${missingLangs.join(', ')}`);
            console.log(`  ✅ Traductions trouvées: ${foundLangs.join(', ')}`);
            totalErrors++;
        }

        // 3. Vérifier les sous-catégories (optionnel mais utile)
        const { count: subCount } = await supabase
            .from('categories')
            .select('id', { count: 'exact', head: true })
            .eq('parent_id', mainCategoryId);
            
        if (subCount > 0) {
             console.log(`  ✅ Sous-catégories: ${subCount} trouvées`);
        } else {
             console.log(`  ⚠️ Sous-catégories: 0 trouvées (Est-ce normal ?)`);
        }
    }

    console.log('\n==================================================');
    console.log('🔎 Vérification détaillée: Tables de détails (toutes catégories)');

    const detailTableSpecs = {
      computer_details: ['announcement_id', 'processor', 'ram', 'storage', 'screen_size', 'graphics_card', 'os'],
      phone_details: ['announcement_id', 'brand', 'model', 'storage', 'ram', 'screen_size', 'os', 'color'],
      home_furniture_details: ['announcement_id', 'material', 'type', 'color', 'dimensions', 'weight'],
      bike_details: ['announcement_id', 'type', 'frame_size', 'wheel_size', 'frame_material', 'electric', 'brand', 'model'],
      boat_details: ['announcement_id', 'type', 'length', 'width', 'motor_type', 'motor_power', 'hours', 'cabin', 'brand', 'model'],
      education_loisirs_details: [
        'announcement_id',
        'education_subject',
        'education_level',
        'education_mode',
        'sport_type',
        'sport_brand',
        'sport_condition',
        'art_type',
        'art_material',
        'book_type',
        'book_language',
        'book_condition',
        'game_type',
        'game_players',
        'toy_age_group',
        'toy_material',
        'club_association_type',
        'club_activity_type',
        'club_sport_type',
        'club_age_group',
        'club_audience',
        'club_theme',
        'club_format',
        'club_genre',
      ],
      construction_details: ['announcement_id', 'type', 'brand', 'model', 'year', 'hours', 'weight', 'power'],
      clothing_details: ['announcement_id', 'type', 'size', 'brand', 'gender', 'material', 'condition'],
      vehicle_details: [
        'announcement_id',
        'brand',
        'model',
        'version',
        'registration_date',
        'mileage',
        'fuel_type',
        'fiscal_power',
        'gearbox',
        'equipment',
        'technical_control',
        'grey_card_crossed',
      ],
      real_estate_details: [
        'announcement_id',
        'property_type',
        'surface',
        'rooms',
        'bedrooms',
        'bathrooms',
        'floor',
        'total_floors',
        'furnished',
        'parking',
        'garage',
        'garden',
        'pool',
        'elevator',
        'balcony',
        'terrace',
        'view_type',
        'facades',
        'zoning',
        'with_permit',
        'capacity',
        'papers',
        'payment_period',
        'specifications',
      ],
      baby_details: ['announcement_id', 'type', 'size', 'brand', 'condition_detail'],
      fashion_details: ['announcement_id', 'clothing_type', 'size', 'gender', 'material', 'brand'],
      bags_details: ['announcement_id', 'type', 'material', 'brand'],
      appliances_details: ['announcement_id', 'type', 'brand', 'energy_class', 'condition_detail'],
      multimedia_details: ['announcement_id', 'device_type', 'brand', 'technology'],
      gaming_details: ['announcement_id', 'product_type', 'platform', 'genre'],
      hardware_details: ['announcement_id', 'type', 'brand'],
      agriculture_details: ['announcement_id', 'type', 'origin'],
      parapharmacy_details: ['announcement_id', 'type', 'brand'],
      beauty_details: ['announcement_id', 'type', 'brand', 'gender'],
      gastronomy_details: ['announcement_id', 'type', 'origin', 'diet', 'unit', 'order_mode'],
      crafts_details: ['announcement_id', 'type', 'material', 'origin'],
      travel_details: ['announcement_id', 'travel_type', 'destination', 'services', 'amenities', 'stars'],
      event_details: ['announcement_id', 'event_type', 'format', 'access_type'],
      job_details: ['announcement_id', 'job_type', 'contract_type', 'experience_level', 'work_regime'],
    };

    const detailTables = Object.keys(detailTableSpecs);
    let detailTablesOk = 0;
    let detailTablesErrors = 0;

    for (const tableName of detailTables) {
      const selectColumns = (detailTableSpecs[tableName] || ['announcement_id']).join(',');

      const { error: columnsError } = await supabase
        .from(tableName)
        .select(selectColumns, { head: true });

      if (columnsError) {
        console.log(`  ❌ ${tableName}: colonnes/table invalides`);
        console.log(`     - Code: ${columnsError.code || 'N/A'}`);
        console.log(`     - Message: ${columnsError.message}`);
        detailTablesErrors++;
        continue;
      }

      const { count, error: countError } = await supabase
        .from(tableName)
        .select('announcement_id', { count: 'exact', head: true });

      if (countError) {
        console.log(`  ⚠️ ${tableName}: accessible mais count indisponible`);
        console.log(`     - Code: ${countError.code || 'N/A'}`);
        console.log(`     - Message: ${countError.message}`);
        detailTablesOk++;
        continue;
      }

      console.log(`  ✅ ${tableName}: OK (${count ?? 0} lignes)`);
      detailTablesOk++;
    }

    if (detailTablesErrors > 0) totalErrors += detailTablesErrors;

    console.log('\n==================================================');
    console.log('🔐 Vérification RLS (anon): INSERT doit être refusé sans auth');
    for (const tableName of detailTables) {
      const { error: insertError } = await supabase
        .from(tableName)
        .insert({ announcement_id: crypto.randomUUID() });

      if (!insertError) {
        console.log(`  ❌ ${tableName}: INSERT autorisé sans auth (RLS à vérifier)`);
        totalErrors++;
        continue;
      }

      const message = String(insertError.message || '');
      const isExpected =
        !message ||
        message.toLowerCase().includes('row-level security') ||
        message.toLowerCase().includes('permission denied') ||
        message.toLowerCase().includes('not allowed') ||
        message.toLowerCase().includes('jwt') ||
        message.toLowerCase().includes('auth') ||
        String(insertError.code || '').toUpperCase() === '42501';

      if (isExpected) {
        console.log(`  ✅ ${tableName}: INSERT refusé (OK)`);
      } else {
        console.log(`  ⚠️ ${tableName}: INSERT refusé (à confirmer)`);
        console.log(`     - Code: ${insertError.code || 'N/A'}`);
        console.log(`     - Message: ${insertError.message}`);
      }
    }

    console.log('\n==================================================');
    console.log('🔗 Compatibilité frontend: embedding annonces → détails');
    for (const rel of detailTables) {
      const { error: embedError } = await supabase
        .from('announcements')
        .select(`id, ${rel}(announcement_id)`)
        .limit(1);

      if (embedError) {
        console.log(`  ❌ announcements.${rel}: embedding KO`);
        console.log(`     - Code: ${embedError.code || 'N/A'}`);
        console.log(`     - Message: ${embedError.message || 'N/A'}`);
        totalErrors++;
      } else {
        console.log(`  ✅ announcements.${rel}: embedding OK`);
      }
    }

    if (!supabaseAdmin) {
      console.log('  ⚠️ Schéma (SQL): SUPABASE_SERVICE_KEY non configurée, vérification SQL ignorée');
    } else {
      const execSqlRpcCandidates = ['exec_sql_readonly', 'exec_sql'];
      const execSqlParamVariants = ['sql', 'query', 'sql_query', 'sqlQuery'];
      let execSqlRpc = null;
      let execSqlParam = null;
      let execSqlProbeData = null;

      for (const rpcName of execSqlRpcCandidates) {
        for (const variant of execSqlParamVariants) {
          const { data, error: paramError } = await supabaseAdmin.rpc(rpcName, { [variant]: 'SELECT 1 AS ok;' });
          if (!paramError) {
            execSqlRpc = rpcName;
            execSqlParam = variant;
            execSqlProbeData = data;
            break;
          }
        }
        if (execSqlRpc) break;
      }

      if (!execSqlRpc || !execSqlParam) {
        console.log('  ⚠️ Schéma (SQL): RPC exec_sql_readonly/exec_sql indisponible pour ce projet');
      } else {
        const isReadonlyRpc = Array.isArray(execSqlProbeData);
        if (!isReadonlyRpc) {
          console.log(`  ⚠️ Schéma (SQL): RPC ${execSqlRpc} ne retourne pas de résultats, vérification SQL ignorée`);
        } else {
          console.log(`  ✅ RPC ${execSqlRpc}: disponible (paramètre: ${execSqlParam})`);
          const execSql = (sql) => supabaseAdmin.rpc(execSqlRpc, { [execSqlParam]: sql });

          const { data: priceColumnData, error: priceColumnError } = await execSql(
            "SELECT column_name, data_type, udt_name, is_nullable, numeric_precision, numeric_scale FROM information_schema.columns WHERE table_schema='public' AND table_name='announcements' AND column_name='price';"
          );

          if (priceColumnError) {
            console.log('  ❌ Announcements.price: échec récupération type');
            console.log(`     - Message: ${priceColumnError.message}`);
          } else {
            const row = Array.isArray(priceColumnData) ? priceColumnData[0] : null;
            if (row) {
              console.log(
                `  ✅ Announcements.price: ${row.data_type} (${row.udt_name}), nullable=${row.is_nullable}`
              );
            } else {
              console.log('  ⚠️ Announcements.price: colonne introuvable');
              totalErrors++;
            }
          }

          console.log('  🔎 RLS & contraintes: aperçu par table');
          for (const tableName of detailTables) {
            const safeTable = tableName.replace(/[^a-z0-9_]/gi, '');

            const { data: existsData, error: existsError } = await execSql(
              `SELECT to_regclass('public.${safeTable}') IS NOT NULL AS exists;`
            );

            if (existsError) {
              console.log(`  ⚠️ ${tableName}: échec vérification existence`);
              continue;
            }

            const existsRow = Array.isArray(existsData) ? existsData[0] : null;
            if (!existsRow?.exists) {
              console.log(`  ❌ ${tableName}: absente (SQL)`);
              continue;
            }

            const { data: policiesData, error: policiesError } = await execSql(
              `SELECT policyname FROM pg_policies WHERE schemaname='public' AND tablename='${safeTable}' ORDER BY policyname;`
            );

            const policyCount = policiesError ? null : (Array.isArray(policiesData) ? policiesData.length : 0);

            const { data: constraintsData, error: constraintsError } = await execSql(
              `SELECT pg_get_constraintdef(oid) AS constraint_def FROM pg_constraint WHERE conrelid='public.${safeTable}'::regclass ORDER BY conname;`
            );

            const constraintDefs = constraintsError || !Array.isArray(constraintsData)
              ? []
              : constraintsData.map((c) => c.constraint_def).filter(Boolean);

            const hasUniqueAnnouncementId = constraintDefs.some((d) =>
              String(d).toLowerCase().includes('unique') && String(d).toLowerCase().includes('announcement_id')
            );

            console.log(
              `  ✅ ${tableName}: policies=${policyCount ?? 'N/A'}, unique(announcement_id)=${hasUniqueAnnouncementId ? 'yes' : 'no'}`
            );
          }
        }
      }
    }

    console.log('\n==================================================');
    console.log(`Rapport Final: ${totalSuccess} catégories complètes / ${expectedStructure.categories.length}`);
    if (totalErrors > 0) {
        console.log(`❌ Il y a des éléments manquants. La migration n'est pas complète à 100%.`);
    } else {
        console.log(`✅ SUCCÈS TOTAL : Tout est synchronisé !`);
    }
}

verifyMigration();
