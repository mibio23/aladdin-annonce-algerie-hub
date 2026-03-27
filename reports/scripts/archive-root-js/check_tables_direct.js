const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

// Utiliser le service key pour avoir les permissions nécessaires
const supabase = createClient(
  process.env.VITE_SUPABASE_URL,
  process.env.VITE_SUPABASE_SERVICE_KEY || process.env.VITE_SUPABASE_ANON_KEY
);

async function checkAndCreateTables() {
  try {
    // Vérifier si la table pro_favorites existe
    const { data: proFavoritesExists, error: checkError1 } = await supabase
      .rpc('table_exists', { table_name: 'pro_favorites' });
    
    if (checkError1) {
      console.log('Erreur lors de la vérification de pro_favorites:', checkError1.message);
      // Essayer de créer la table directement
      const { error: createError1 } = await supabase
        .from('pro_favorites')
        .select('*')
        .limit(1);
      
      if (createError1 && createError1.code === '42P01') {
        console.log('Table pro_favorites n\'existe pas, création nécessaire');
      }
    } else {
      console.log('pro_favorites existe:', proFavoritesExists);
    }

    // Vérifier la colonne followers_count dans shops
    const { data: shopsData, error: shopsError } = await supabase
      .from('shops')
      .select('followers_count')
      .limit(1);
    
    if (shopsError) {
      console.log('followers_count n\'existe pas dans shops:', shopsError.message);
    } else {
      console.log('followers_count existe dans shops');
    }

    console.log('🔍 Vérification terminée');
    
  } catch (err) {
    console.error('Erreur:', err);
  }
}

checkAndCreateTables();