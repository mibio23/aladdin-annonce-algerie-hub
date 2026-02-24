// Script de migration ultra-simple pour les catégories
// Utilise uniquement les colonnes de base : name, slug, id_uuid, parent_id

import { createClient } from '@supabase/supabase-js';

// Configuration Supabase
const supabaseUrl = process.env.VITE_SUPABASE_URL || 'https://smsvybphkdxzvgawzoru.supabase.co';
const supabaseKey = process.env.VITE_SUPABASE_ANON_KEY || 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNtc3Z5YnBoa2R4enZnYXd6b3J1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDcyMTk1MDYsImV4cCI6MjA2Mjc5NTUwNn0.BnS7qmTl1a4htjiv3qN7zyjZ04DZgdV7N6Z0a0AU40g';

const supabase = createClient(supabaseUrl, supabaseKey);

// Données essentielles des catégories
const categoriesData = [
  // Catégories principales
  { name: 'Véhicules', slug: 'vehicules', parent_id: null },
  { name: 'Immobilier', slug: 'immobilier', parent_id: null },
  { name: 'Informatique & Électronique', slug: 'informatique-electronique', parent_id: null },
  { name: 'Maison & Jardin', slug: 'maison-jardin', parent_id: null },
  { name: 'Mode & Accessoires', slug: 'mode-accessoires', parent_id: null },
  { name: 'Emploi & Carrière', slug: 'emploi-carriere', parent_id: null },
  { name: 'Services', slug: 'services', parent_id: null },
  { name: 'Loisirs & Divertissement', slug: 'loisirs-divertissement', parent_id: null },
  { name: 'Animaux & Accessoires', slug: 'animaux-accessoires', parent_id: null },
  { name: 'Sports & Fitness', slug: 'sports-fitness', parent_id: null }
];

// Classe pour les résultats de migration
class MigrationResult {
  constructor(success, categoryId = null, error = null) {
    this.success = success;
    this.categoryId = categoryId;
    this.error = error;
  }
}

// Fonction pour créer une catégorie avec uniquement les champs essentiels
async function createCategory(category) {
  try {
    const { data, error } = await supabase
      .from('categories')
      .insert({
        name: category.name,
        slug: category.slug,
        id_uuid: crypto.randomUUID(),
        parent_id: category.parent_id,
        created_at: new Date().toISOString(),
        updated_at: new Date().toISOString()
      })
      .select()
      .single();

    if (error) {
      console.error(`Erreur lors de la création de la catégorie ${category.name}:`, error);
      return new MigrationResult(false, null, error.message);
    }

    console.log(`✅ Catégorie créée: ${category.name} (UUID: ${data.id_uuid})`);
    return new MigrationResult(true, data.id);
  } catch (error) {
    console.error(`Exception lors de la création de la catégorie ${category.name}:`, error);
    return new MigrationResult(false, null, error.message);
  }
}

// Fonction principale de migration
async function migrateCategories() {
  console.log('🚀 Démarrage de la migration ultra-simple des catégories...');
  console.log('📌 Utilisation uniquement des colonnes essentielles');
  
  let totalCategories = 0;
  let successfulCategories = 0;
  let failedCategories = 0;

  // D'abord, créer toutes les catégories principales (sans parent)
  console.log('\n📁 Création des catégories principales...');
  
  for (const category of categoriesData) {
    totalCategories++;
    
    const result = await createCategory(category);
    if (result.success) {
      successfulCategories++;
    } else {
      failedCategories++;
    }
  }

  console.log('\n📊 Résumé de la migration:');
  console.log(`Total des catégories traitées: ${totalCategories}`);
  console.log(`Catégories créées avec succès: ${successfulCategories}`);
  console.log(`Catégories échouées: ${failedCategories}`);
  
  if (failedCategories > 0) {
    console.log('\n⚠️  Certaines catégories ont échoué. Vérifiez les logs ci-dessus.');
  } else {
    console.log('\n✅ Migration terminée avec succès!');
    console.log('\n💡 Prochaine étape: Vous pouvez maintenant créer des sous-catégories');
    console.log('   en utilisant les UUID générés comme parent_id.');
  }
}

// Exécuter la migration
migrateCategories().catch(console.error);