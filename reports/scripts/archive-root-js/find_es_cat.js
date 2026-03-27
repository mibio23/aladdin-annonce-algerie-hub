
require('dotenv').config();
const { createClient } = require('@supabase/supabase-js');

const supabase = createClient(process.env.VITE_SUPABASE_URL, process.env.VITE_SUPABASE_ANON_KEY);

async function findSpanishCategory() {
  console.log('Recherche de catégories espagnoles...');
  
  // 1. Chercher par langue 'es' et mot clé 'Deportes' ou 'Educación' ou 'Ocio'
  const { data, error } = await supabase
    .from('categories')
    .select('id, name, slug, langue, parent_id')
    .eq('langue', 'es')
    .or('name.ilike.%Deporte%,name.ilike.%Educación%,name.ilike.%Ocio%');

  if (error) {
    console.error('Erreur:', error);
  } else {
    console.log(`Trouvé ${data.length} résultats :`);
    data.forEach(c => console.log(`- ID: ${c.id} | Name: "${c.name}" | Slug: ${c.slug}`));
  }

  // 2. Vérifier si 'education-loisirs' existe en ES
  const { data: catEs, error: errEs } = await supabase
    .from('categories')
    .select('id, name, slug, langue')
    .eq('id', 'education-loisirs')
    .eq('langue', 'es');
    
  if (catEs && catEs.length > 0) {
     console.log('ID "education-loisirs" existe en ES:', catEs[0]);
  } else {
     console.log('ID "education-loisirs" n\'existe PAS en ES (ou pas avec cet ID).');
  }
}

findSpanishCategory();
