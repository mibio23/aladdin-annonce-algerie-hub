
require('dotenv').config();
const { createClient } = require('@supabase/supabase-js');

const supabase = createClient(process.env.VITE_SUPABASE_URL, process.env.VITE_SUPABASE_ANON_KEY);

async function inspectTranslations() {
  const { data, error } = await supabase
    .from('category_translations')
    .select('*')
    .eq('category_id', 'education-loisirs');

  if (error) {
    console.error('Erreur:', error);
  } else {
    console.log('Traductions pour "education-loisirs":');
    console.log(JSON.stringify(data, null, 2));
  }
}

inspectTranslations();
