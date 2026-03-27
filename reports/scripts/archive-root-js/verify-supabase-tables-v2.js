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
  
  // Vérifier les colonnes dans la table shops
  console.log('📋 Vérification des colonnes dans shops:');
  try {
    const { data: columns, error } = await supabase
      .rpc('information_schema.columns', {
        table_schema: 'public',
        table_name: 'shops'
      });
    
    if (!error && columns) {
      const columnNames = columns.map(col => col.column_name);
      console.log('Colonnes disponibles:', columnNames);
      
      const hasFollowersCount = columnNames.includes('followers_count');
      console.log(`followers_count existe: ${hasFollowersCount ? '✅' : '❌'}`);
      
      const hasShopFavorites = columnNames.includes('shop_favorites');
      console.log(`shop_favorites existe: ${hasShopFavorites ? '✅' : '❌'}`);
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
}

verifyTables().catch(console.error);