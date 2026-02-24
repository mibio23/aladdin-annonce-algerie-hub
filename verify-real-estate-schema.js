require('dotenv').config();
const { createClient } = require('@supabase/supabase-js');

const supabaseUrl = process.env.VITE_SUPABASE_URL;
const supabaseKey = process.env.VITE_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseKey) {
  console.error('❌ Variables d\'environnement Supabase manquantes');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseKey);

async function verifyRealEstateSchema() {
  console.log('🔍 Démarrage de la vérification du schéma real_estate_details...');

  // Try using Service Role Key if available (bypasses RLS)
  const serviceRoleKey = process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.VITE_SUPABASE_SERVICE_ROLE_KEY;
  const adminSupabase = serviceRoleKey ? createClient(supabaseUrl, serviceRoleKey) : null;
  
  if (adminSupabase) {
      console.log('🔑 Clé Service Role détectée - Utilisation du mode administrateur (Bypass RLS).');
  } else {
      console.log('👤 Clé Anon utilisée - Soumis aux règles RLS.');
  }

  const client = adminSupabase || supabase;

  try {
    // 1. Vérification des colonnes via information_schema (Correct way)
    // Note: This often requires permissions even for service role, depending on setup
    const { data: columns, error: schemaError } = await client
      .schema('information_schema')
      .from('columns')
      .select('column_name, data_type, udt_name')
      .eq('table_name', 'real_estate_details')
      .eq('table_schema', 'public');

    if (schemaError) {
      console.warn('⚠️  Impossible de lire information_schema:', schemaError.message);
    } else if (columns && columns.length > 0) {
        // ... (rest of the logic same as before)
        console.log(`✅ Table 'real_estate_details' trouvée (${columns.length} colonnes) via information_schema.`);
        // ...
        const requiredColumns = [
            { name: 'property_type', type: 'text' },
            { name: 'specifications', type: 'ARRAY' }
        ];
        // ...
        let allGood = true;
        requiredColumns.forEach(req => {
            const col = columns.find(c => c.column_name === req.name);
            if (col) {
                console.log(`  ✅ Colonne '${req.name}' présente (Type: ${col.data_type}, UDT: ${col.udt_name})`);
            } else {
                console.error(`  ❌ Colonne '${req.name}' MANQUANTE !`);
                allGood = false;
            }
        });
        
        if (allGood) console.log('🎉 Validation de structure RÉUSSIE.');
    } else {
        console.warn("⚠️  Table non trouvée dans information_schema (ou vide). Tentative par SELECT spécifique...");
    }

    // 2. Test par SELECT spécifique (Works even with RLS if we just want to check column existence via error message)
    console.log('\n🧪 Test de sélection des colonnes spécifiques...');
    const { data: selectData, error: selectError } = await client
        .from('real_estate_details')
        .select('property_type, specifications')
        .limit(1);

    if (selectError) {
        if (selectError.message.includes('does not exist')) {
            console.error('❌ CRITIQUE: Une des colonnes demandées n\'existe pas !');
            console.error('   Erreur:', selectError.message);
        } else if (selectError.message.includes('RLS') || selectError.message.includes('policy')) {
            console.log('✅ Les colonnes semblent exister (L\'erreur RLS est survenue APRES la résolution des colonnes).');
        } else {
             console.log('ℹ️  Erreur inattendue lors du SELECT:', selectError.message);
        }
    } else {
        console.log('✅ SELECT réussi (Colonnes existantes).');
    }

    // 3. Test d'insertion (Uniquement si on a les droits ou pour tester le rejet de type)
    console.log('\n🧪 Test de simulation d\'insertion...');
    // ...
    const dummyData = {
      announcement_id: '00000000-0000-0000-0000-000000000000', // ID fictif
      property_type: 'appartement', // Test Type de bien
      specifications: ['reservoir_eau', 'camera_surveillance', 'electricite', 'gaz', 'meuble'] // Test Nouvelles commodités
    };

    const { error: insertError } = await supabase
      .from('real_estate_details')
      .insert(dummyData);

    if (insertError) {
      if (insertError.message.includes('foreign key constraint') || insertError.code === '23503') {
        console.log('✅ Validation réussie : La table accepte les colonnes property_type et specifications (Erreur attendue de clé étrangère reçue).');
        console.log('   -> Les colonnes existent et acceptent les types de données envoyés.');
      } else if (insertError.message.includes('column') && insertError.message.includes('does not exist')) {
        console.error('❌ ÉCHEC : Une colonne n\'existe pas dans la table !');
        console.error('   Erreur:', insertError.message);
      } else {
        console.log('ℹ️  Autre réponse de la base de données:', insertError.message);
        // Sometimes RLS might block it before schema check, but usually schema check comes first or RLS error is distinct.
        if (insertError.message.includes('policy') || insertError.message.includes('RLS')) {
            console.log('   (Ceci est probablement dû aux règles de sécurité RLS, ce qui est normal sans utilisateur connecté)');
        }
      }
    }

  } catch (error) {
    console.error('❌ Erreur inattendue:', error);
  }
}

verifyRealEstateSchema();
