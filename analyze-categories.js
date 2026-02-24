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

async function analyzeCategories() {
  console.log('🔍 Analyse approfondie des catégories...\n');

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

    console.log(`📊 Nombre total de catégories: ${categories.length}\n`);

    // Analyser les slugs en double
    const slugGroups = {};
    categories.forEach(cat => {
      if (!slugGroups[cat.slug]) slugGroups[cat.slug] = [];
      slugGroups[cat.slug].push(cat);
    });

    const duplicateSlugs = Object.entries(slugGroups)
      .filter(([slug, cats]) => cats.length > 1);

    if (duplicateSlugs.length > 0) {
      console.log('⚠️  Slugs en détail:');
      duplicateSlugs.forEach(([slug, cats]) => {
        console.log(`   - "${slug}" (${cats.length} occurrences):`);
        cats.forEach(cat => {
          console.log(`     * ${cat.name} (UUID: ${cat.id_uuid.substring(0, 8)}..., parent: ${cat.parent_id_uuid || 'null'})`);
        });
      });
      console.log('');
    }

    // Identifier les catégories racine (sans parent)
    const rootCategories = categories.filter(cat => !cat.parent_id_uuid);
    console.log(`🏠 Catégories racine (${rootCategories.length}):`);
    rootCategories.forEach(cat => {
      console.log(`   - ${cat.name} (${cat.slug}) - UUID: ${cat.id_uuid.substring(0, 8)}...`);
    });
    console.log('');

    // Identifier les catégories orphelines (avec parent_id_uuid mais le parent n'existe pas)
    const allUuids = new Set(categories.map(cat => cat.id_uuid));
    const orphanCategories = categories.filter(cat => 
      cat.parent_id_uuid && !allUuids.has(cat.parent_id_uuid)
    );

    if (orphanCategories.length > 0) {
      console.log(`👻 Catégories orphelines (${orphanCategories.length}):`);
      orphanCategories.forEach(cat => {
        console.log(`   - ${cat.name} (${cat.slug}) - Parent UUID: ${cat.parent_id_uuid.substring(0, 8)}...`);
      });
      console.log('');
    } else {
      console.log('✅ Aucune catégorie orpheline trouvée');
      console.log('');
    }

    // Afficher la structure hiérarchique
    console.log('🌳 Structure hiérarchique:');
    
    function displayHierarchy(categories, parentId = null, indent = 0) {
      const children = categories.filter(cat => cat.parent_id_uuid === parentId);
      children.forEach(child => {
        const prefix = '  '.repeat(indent);
        console.log(`${prefix}- ${child.name} (${child.slug})`);
        displayHierarchy(categories, child.id_uuid, indent + 1);
      });
    }
    
    displayHierarchy(categories);

    console.log('\n✅ Analyse terminée');

  } catch (error) {
    console.error('❌ Erreur:', error.message);
  }
}

analyzeCategories();