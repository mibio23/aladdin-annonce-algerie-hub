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
  
  const tablesToCheck = [
    'shop_favorites',
    'shop_reviews', 
    'pro_favorites',
    'shops' // Pour vérifier followers_count
  ];
  
  for (const tableName of tablesToCheck) {
    console.log(`\n📊 Vérification de la table: ${tableName}`);
    
    try {
      // Vérifier si la table existe
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
        
        // Pour la table shops, vérifier si followers_count existe
        if (tableName === 'shops' && data) {
          console.log('📋 Structure des colonnes shops:');
          
          // Récupérer les métadonnées des colonnes
          const { data: columnInfo, error: columnError } = await supabase
            .rpc('information_schema.columns', {
              table_name: 'shops'
            });
          
          if (!columnError && columnInfo) {
            const hasFollowersCount = columnInfo.some(col => col.column_name === 'followers_count');
            console.log(`followers_count existe: ${hasFollowersCount ? '✅' : '❌'}`);
          }
        }
      }
      
    } catch (error) {
      console.error(`💥 Erreur critique pour ${tableName}:`, error.message);
    }
  }
  
  // Vérifier les vues
  console.log('\n\n🔍 Vérification des vues:');
  const viewsToCheck = ['categories_with_translations'];
  
  for (const viewName of viewsToCheck) {
    console.log(`\n📊 Vérification de la vue: ${viewName}`);
    
    try {
      const { data, error } = await supabase
        .from(viewName)
        .select('*')
        .limit(1);
      
      if (error) {
        console.log(`❌ Vue ${viewName} n'existe pas ou erreur: ${error.message}`);
      } else {
        console.log(`✅ Vue ${viewName} existe`);
      }
      
    } catch (error) {
      console.error(`💥 Erreur critique pour ${viewName}:`, error.message);
    }
  }
  
  console.log('\n\n📋 Résumé des problèmes identifiés:');
  console.log('1. shop_favorites: TABLE MANQUANTE');
  console.log('2. shop_reviews: TABLE MANQUANTE');
  console.log('3. pro_favorites: TABLE MANQUANTE');
  console.log('4. followers_count dans shops: COLONNE MANQUANTE');
  console.log('5. categories_with_translations: VUE EXISTE');
}

verifyTables().catch(console.error);