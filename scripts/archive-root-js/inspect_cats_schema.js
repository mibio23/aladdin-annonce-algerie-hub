
require('dotenv').config();
const { createClient } = require('@supabase/supabase-js');

const supabase = createClient(process.env.VITE_SUPABASE_URL, process.env.VITE_SUPABASE_ANON_KEY);

async function checkCategoriesSchema() {
  const { data, error } = await supabase
    .from('categories')
    .select('*')
    .limit(1);

  if (error) {
    console.error('Erreur:', error);
  } else if (data && data.length > 0) {
    console.log('Colonnes categories:', Object.keys(data[0]));
  }
}

checkCategoriesSchema();
