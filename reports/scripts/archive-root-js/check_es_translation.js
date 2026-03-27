
require('dotenv').config();
const { createClient } = require('@supabase/supabase-js');

const supabaseUrl = process.env.VITE_SUPABASE_URL;
const supabaseKey = process.env.VITE_SUPABASE_ANON_KEY;
const supabase = createClient(supabaseUrl, supabaseKey);

async function checkTranslation() {
  console.log('🔍 Vérification de la traduction Espagnole pour "education-loisirs"...');

  // 1. Vérifier la catégorie
  const { data: category, error: catError } = await supabase
    .from('categories')
    .select('*')
    .eq('id', 'education-loisirs')
    .single();

  if (catError) {
    console.error('❌ Erreur récupération catégorie:', catError.message);
    return;
  }
  
  if (!category) {
    console.error('❌ Catégorie "education-loisirs" introuvable !');
    return;
  }
  
  console.log('✅ Catégorie trouvée:', category.name);

  // 2. Vérifier la traduction ES
  const { data: translation, error: transError } = await supabase
    .from('category_translations')
    .select('*')
    .eq('category_id', 'education-loisirs')
    .eq('lang', 'es')
    .single();

  if (transError && transError.code !== 'PGRST116') { // PGRST116 = not found
    console.error('❌ Erreur récupération traduction:', transError.message);
  } else if (!translation) {
    console.log('⚠️  Traduction Espagnole (ES) MANQUANTE !');
    
    // Proposer la correction
    console.log('\n🛠️  Tentative de correction automatique...');
    const { error: insertError } = await supabase
      .from('category_translations')
      .insert({
        category_id: 'education-loisirs',
        lang: 'es',
        name: 'Deportes, Educación y Ocio' // Traduction proposée
      });
      
    if (insertError) {
      console.error('❌ Echec de la correction:', insertError.message);
    } else {
      console.log('✅ Correction appliquée avec succès : "Deportes, Educación y Ocio"');
    }
    
  } else {
    console.log(`✅ Traduction Espagnole existante : "${translation.name}"`);
  }
}

checkTranslation();
