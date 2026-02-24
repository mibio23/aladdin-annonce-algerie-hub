
require('dotenv').config();
const { createClient } = require('@supabase/supabase-js');

const supabase = createClient(process.env.VITE_SUPABASE_URL, process.env.VITE_SUPABASE_ANON_KEY);

async function inspectCategory() {
  const { data, error } = await supabase
    .from('categories')
    .select('*')
    .eq('id', 'education-loisirs');

  if (error) {
    console.error('Erreur:', error);
  } else {
    console.log('Entrées pour ID "education-loisirs":');
    console.log(JSON.stringify(data, null, 2));
  }
}

inspectCategory();
