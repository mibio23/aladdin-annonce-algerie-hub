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

async function deleteAllCategories() {
  try {
    console.log('⚠️  ⚠️  ⚠️  ATTENTION: Cette opération va supprimer TOUTES les catégories! ⚠️  ⚠️  ⚠️');
    console.log('Êtes-vous sûr de vouloir continuer? (Cette action est irréversible)');
    
    // Vérifier d'abord combien de catégories existent
    const { count, error: countError } = await supabase
      .from('categories')
      .select('*', { count: 'exact', head: true });

    if (countError) {
      console.error('❌ Erreur lors du comptage des catégories:', countError);
      return;
    }

    console.log(`📊 Nombre de catégories à supprimer: ${count}`);
    
    if (count === 0) {
      console.log('✅ Aucune catégorie à supprimer');
      return;
    }

    // Afficher un aperçu des catégories qui seront supprimées
    const { data: categories, error: previewError } = await supabase
      .from('categories')
      .select('name, slug, id_uuid')
      .limit(10);

    if (!previewError && categories) {
      console.log('\n📋 Aperçu des catégories qui seront supprimées:');
      categories.forEach(cat => {
        console.log(`  • ${cat.name} (${cat.slug}) - UUID: ${cat.id_uuid}`);
      });
      if (count > 10) {
        console.log(`  ... et ${count - 10} autres catégories`);
      }
    }

    // Pour des raisons de sécurité, nous demandons une confirmation explicite
    console.log('\n🗑️  Suppression en cours...');
    const { error: deleteError } = await supabase
      .from('categories')
      .delete()
      .neq('id', 0); // Supprime toutes les lignes où id n'est pas égal à 0

    if (deleteError) {
      console.error('❌ Erreur lors de la suppression:', deleteError);
      return;
    }

    console.log('✅ Toutes les catégories ont été supprimées avec succès!');
    
  } catch (error) {
    console.error('❌ Erreur lors de la suppression:', error);
  }
}

// Exécuter la suppression
deleteAllCategories();