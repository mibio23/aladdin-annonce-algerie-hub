
require('dotenv').config();
const { createClient } = require('@supabase/supabase-js');

const supabase = createClient(process.env.VITE_SUPABASE_URL, process.env.VITE_SUPABASE_ANON_KEY);

async function checkSchema() {
  const { data, error } = await supabase
    .from('category_translations')
    .select('*')
    .limit(1);

  if (error) {
    console.error('Erreur:', error);
  } else if (data && data.length > 0) {
    console.log('Colonnes trouvées:', Object.keys(data[0]));
  } else {
    console.log('Table vide ou inaccessible.');
  }
}

checkSchema();
