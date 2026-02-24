import { createClient } from '@supabase/supabase-js';
import dotenv from 'dotenv';

dotenv.config();

const supabaseUrl = process.env.VITE_SUPABASE_URL;
const supabaseKey = process.env.VITE_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseKey) {
  console.error('❌ Variables d\'environnement Supabase manquantes');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseKey);

async function checkExistingCategories() {
  try {
    console.log('🔍 Vérification des catégories existantes dans Supabase...');
    
    const { data, error } = await supabase
      .from('categories')
      .select('id, name, slug, id_uuid, parent_id, created_at')
      .order('name');

    if (error) {
      console.error('❌ Erreur lors de la récupération des catégories:', error);
      return;
    }

    if (!data || data.length === 0) {
      console.log('📭 Aucune catégorie trouvée dans la base de données');
      return;
    }

    console.log(`📊 Nombre total de catégories: ${data.length}`);
    console.log('\n📋 Catégories existantes:');
    
    data.forEach(category => {
      console.log(`  • ${category.name} (${category.slug}) - UUID: ${category.id_uuid}`);
      if (category.parent_id) {
        console.log(`    └─ Sous-catégorie de: ${category.parent_id}`);
      }
    });

    // Vérifier les slugs conflictuels potentiels
    const slugs = data.map(cat => cat.slug);
    const duplicateSlugs = slugs.filter((slug, index) => slugs.indexOf(slug) !== index);
    
    if (duplicateSlugs.length > 0) {
      console.log(`\n⚠️  Slugs en double trouvés: ${duplicateSlugs.join(', ')}`);
    }

    return data;

  } catch (error) {
    console.error('❌ Erreur lors de la vérification:', error);
  }
}

checkExistingCategories();