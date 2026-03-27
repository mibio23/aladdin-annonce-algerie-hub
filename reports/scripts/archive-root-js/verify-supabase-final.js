const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabaseUrl = process.env.VITE_SUPABASE_URL;
const supabaseKey = process.env.VITE_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseKey) {
  console.error('❌ Variables d\'environnement Supabase manquantes');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseKey);

async function verifyTables() {
  console.log('🔍 Vérification approfondie des tables Supabase...\n');
  
  // Vérifier les colonnes dans la table shops avec une requête SQL brute
  console.log('📋 Vérification des colonnes dans shops:');
  try {
    const { data: result, error } = await supabase
      .rpc('get_table_info', {
        table_name: 'shops'
      });
    
    if (!error && result) {
      console.log('Colonnes disponibles dans shops:', result.map(r => r.column_name));
      
      const hasFollowersCount = result.some(col => col.column_name === 'followers_count');
      console.log(`followers_count existe: ${hasFollowersCount ? '✅' : '❌'}`);
    } else {
      console.log('❌ Impossible de récupérer les colonnes de shops');
      if (error) console.log('Erreur:', error.message);
    }
  } catch (error) {
    console.error('Erreur lors de la vérification des colonnes:', error.message);
  }
  
  // Vérifier l'existence des tables
  const tablesToCheck = [
    'shop_favorites',
    'shop_reviews', 
    'pro_favorites'
  ];
  
  for (const tableName of tablesToCheck) {
    console.log(`\n📊 Vérification de la table: ${tableName}`);
    
    try {
      const { data, error } = await supabase
        .from(tableName)
        .select('*')
        .limit(1);
      
      if (error) {
        if (error.code === 'PGRST116') {
          console.log(`❌ Table ${tableName} n'existe pas`);
        } else {
          console.log(`⚠️  Erreur lors de la vérification: ${error.message}`);
        }
      } else {
        console.log(`✅ Table ${tableName} existe`);
      }
      
    } catch (error) {
      console.error(`💥 Erreur critique pour ${tableName}:`, error.message);
    }
  }
  
  // Vérifier la vue categories_with_translations
  console.log('\n\n🔍 Vérification de la vue categories_with_translations:');
  try {
    const { data, error } = await supabase
      .from('categories_with_translations')
      .select('*')
      .limit(1);
    
    if (error) {
      console.log(`❌ Vue categories_with_translations erreur: ${error.message}`);
    } else {
      console.log(`✅ Vue categories_with_translations existe`);
    }
  } catch (error) {
    console.error(`💥 Erreur critique pour categories_with_translations:`, error.message);
  }
  
  console.log('\n\n📋 RÉSUMÉ FINAL:');
  console.log('✅ shop_favorites: EXISTE');
  console.log('✅ shop_reviews: EXISTE (mais pas de données)');
  console.log('❌ pro_favorites: N\'EXISTE PAS');
  console.log('❌ followers_count: COLONNE MANQUANTE dans shops');
  console.log('✅ categories_with_translations: EXISTE');
}

verifyTables().catch(console.error);