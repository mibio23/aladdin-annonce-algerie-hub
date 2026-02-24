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

async function checkCategories() {
  console.log('🔍 Vérification des catégories créées...\n');

  try {
    // Récupérer toutes les catégories
    const { data: categories, error } = await supabase
      .from('categories')
      .select('*')
      .order('name');

    if (error) {
      console.error('❌ Erreur lors de la récupération des catégories:', error.message);
      return;
    }

    if (!categories || categories.length === 0) {
      console.log('📊 Aucune catégorie trouvée dans la base de données');
      return;
    }

    console.log(`📊 Nombre total de catégories: ${categories.length}\n`);

    // Grouper par niveau
    const byLevel = {};
    categories.forEach(cat => {
      const level = cat.level || 0;
      if (!byLevel[level]) byLevel[level] = [];
      byLevel[level].push(cat);
    });

    // Afficher par niveau
    Object.keys(byLevel).sort().forEach(level => {
      console.log(`🏷️  Niveau ${level} (${byLevel[level].length} catégories):`);
      byLevel[level].forEach(cat => {
        const parentInfo = cat.parent_id_uuid ? ` (parent: ${cat.parent_id_uuid.substring(0, 8)}...)` : '';
        console.log(`   - ${cat.name} (${cat.slug})${parentInfo}`);
      });
      console.log('');
    });

    // Vérifier les slugs uniques
    const slugCounts = {};
    categories.forEach(cat => {
      slugCounts[cat.slug] = (slugCounts[cat.slug] || 0) + 1;
    });

    const duplicateSlugs = Object.entries(slugCounts)
      .filter(([slug, count]) => count > 1)
      .map(([slug, count]) => `${slug} (${count}x)`);

    if (duplicateSlugs.length > 0) {
      console.log('⚠️  Slugs en double trouvés:');
      duplicateSlugs.forEach(slug => console.log(`   - ${slug}`));
    } else {
      console.log('✅ Tous les slugs sont uniques');
    }

    console.log('\n✅ Vérification terminée');

  } catch (error) {
    console.error('❌ Erreur:', error.message);
  }
}

checkCategories();