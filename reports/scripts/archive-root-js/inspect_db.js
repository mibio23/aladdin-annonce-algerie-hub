
require('dotenv').config();
const { createClient } = require('@supabase/supabase-js');

const SUPABASE_URL = process.env.VITE_SUPABASE_URL;
const SUPABASE_ANON_KEY = process.env.VITE_SUPABASE_ANON_KEY;

const supabase = createClient(SUPABASE_URL, SUPABASE_ANON_KEY);

async function inspectDB() {
  console.log('🔍 Inspection de la base de données...');

  // 1. Vérifier la table 'categories'
  console.log('\n--- Table: categories (Top 5) ---');
  const { data: cats, error: errCats } = await supabase
    .from('categories')
    .select('*')
    .limit(5);
  
  if (errCats) console.error('Erreur categories:', errCats.message);
  else console.log(JSON.stringify(cats, null, 2));

  // 2. Vérifier la table 'category_translations' (si elle existe)
  console.log('\n--- Table: category_translations (Top 5) ---');
  const { data: trans, error: errTrans } = await supabase
    .from('category_translations')
    .select('*')
    .limit(5);

  if (errTrans) {
      console.log('Table category_translations non accessible ou inexistante:', errTrans.message);
  } else {
      console.log(JSON.stringify(trans, null, 2));
  }

  // 3. Vérifier s'il y a des colonnes de langue dans categories
  if (cats && cats.length > 0) {
      const keys = Object.keys(cats[0]);
      console.log('\nColonnes détectées dans categories:', keys.join(', '));
  }
}

inspectDB();
