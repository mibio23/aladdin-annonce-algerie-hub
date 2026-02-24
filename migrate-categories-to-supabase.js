// Script de migration pour pousser toutes les catégories vers Supabase avec UUIDs
// Ce script crée les catégories principales, sous-catégories et sous-sous-catégories dans Supabase

import { createClient } from '@supabase/supabase-js';
import { refactoredCategories } from './src/data/categories/index.js';

// Configuration Supabase - à adapter avec vos variables d'environnement
const supabaseUrl = process.env.VITE_SUPABASE_URL || 'https://smsvybphkdxzvgawzoru.supabase.co';
const supabaseKey = process.env.VITE_SUPABASE_ANON_KEY || 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNtc3Z5YnBoa2R4enZnYXd6b3J1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzA0ODI1NzEsImV4cCI6MjA0NjA1ODU3MX0.1Lk7dLRG3y9Uc5vO2j6a6Fq0dQ5Z7c8Y9bN0mP3qRsT';

const supabase = createClient(supabaseUrl, supabaseKey);

// Structure de résultat pour la migration
class MigrationResult {
  constructor(success, categoryId = null, error = null) {
    this.success = success;
    this.categoryId = categoryId;
    this.error = error;
  }
}

// Fonction pour créer une catégorie principale
async function createMainCategory(category) {
  try {
    const { data, error } = await supabase
      .from('categories')
      .insert({
        name: category.name,
        slug: category.slug,
        id_uuid: crypto.randomUUID(), // Générer un UUID unique
        level: 0,
        is_active: category.isActive,
        sort_order: category.sortOrder,
        created_at: new Date().toISOString(),
        updated_at: new Date().toISOString()
      })
      .select()
      .single();

    if (error) {
      console.error(`Erreur lors de la création de la catégorie ${category.name}:`, error);
      return new MigrationResult(false, null, error.message);
    }

    console.log(`✅ Catégorie principale créée: ${category.name} (UUID: ${data.id_uuid})`);
    return new MigrationResult(true, data.id);
  } catch (error) {
    console.error(`Exception lors de la création de la catégorie ${category.name}:`, error);
    return new MigrationResult(false, null, error.message);
  }
}

// Fonction pour créer une sous-catégorie
async function createSubcategory(subcategory, parentId) {
  try {
    const { data, error } = await supabase
      .from('categories')
      .insert({
        name: subcategory.name,
        slug: subcategory.slug,
        id_uuid: crypto.randomUUID(),
        parent_id: parentId,
        level: 1,
        is_active: subcategory.isActive,
        sort_order: subcategory.sortOrder,
        created_at: new Date().toISOString(),
        updated_at: new Date().toISOString()
      })
      .select()
      .single();

    if (error) {
      console.error(`Erreur lors de la création de la sous-catégorie ${subcategory.name}:`, error);
      return new MigrationResult(false, null, error.message);
    }

    console.log(`✅ Sous-catégorie créée: ${subcategory.name} (UUID: ${data.id_uuid})`);
    return new MigrationResult(true, data.id);
  } catch (error) {
    console.error(`Exception lors de la création de la sous-catégorie ${subcategory.name}:`, error);
    return new MigrationResult(false, null, error.message);
  }
}

// Fonction pour créer une sous-sous-catégorie
async function createSubSubcategory(subSubcategory, parentId) {
  try {
    const { data, error } = await supabase
      .from('categories')
      .insert({
        name: subSubcategory.name,
        slug: subSubcategory.slug,
        id_uuid: crypto.randomUUID(),
        parent_id: parentId,
        level: 2,
        is_active: subSubcategory.isActive,
        sort_order: subSubcategory.sortOrder,
        created_at: new Date().toISOString(),
        updated_at: new Date().toISOString()
      })
      .select()
      .single();

    if (error) {
      console.error(`Erreur lors de la création de la sous-sous-catégorie ${subSubcategory.name}:`, error);
      return new MigrationResult(false, null, error.message);
    }

    console.log(`✅ Sous-sous-catégorie créée: ${subSubcategory.name} (UUID: ${data.id_uuid})`);
    return new MigrationResult(true, data.id);
  } catch (error) {
    console.error(`Exception lors de la création de la sous-sous-catégorie ${subSubcategory.name}:`, error);
    return new MigrationResult(false, null, error.message);
  }
}

// Fonction principale de migration
async function migrateCategories() {
  console.log('🚀 Démarrage de la migration des catégories vers Supabase...');
  
  let totalCategories = 0;
  let successfulCategories = 0;
  let failedCategories = 0;

  for (const module of refactoredCategories) {
    console.log(`\n📁 Traitement du module: ${module.name}`);
    
    for (const category of module.categories) {
      totalCategories++;
      
      // Créer la catégorie principale
      const mainResult = await createMainCategory(category);
      if (!mainResult.success) {
        failedCategories++;
        continue;
      }
      successfulCategories++;

      if (!mainResult.categoryId) continue;

      // Créer les sous-catégories si elles existent
      if (category.subcategories && category.subcategories.length > 0) {
        for (const subcategory of category.subcategories) {
          totalCategories++;
          
          const subResult = await createSubcategory(subcategory, mainResult.categoryId);
          if (!subResult.success) {
            failedCategories++;
            continue;
          }
          successfulCategories++;

          if (!subResult.categoryId) continue;

          // Créer les sous-sous-catégories si elles existent
          if (subcategory.subcategories && subcategory.subcategories.length > 0) {
            for (const subSubcategory of subcategory.subcategories) {
              totalCategories++;
              
              const subSubResult = await createSubSubcategory(subSubcategory, subResult.categoryId);
              if (!subSubResult.success) {
                failedCategories++;
                continue;
              }
              successfulCategories++;
            }
          }
        }
      }
    }
  }

  console.log('\n📊 Résumé de la migration:');
  console.log(`Total de catégories traitées: ${totalCategories}`);
  console.log(`✅ Catégories créées avec succès: ${successfulCategories}`);
  console.log(`❌ Catégories en échec: ${failedCategories}`);
  
  if (failedCategories > 0) {
    console.log('\n⚠️  Certaines catégories ont échoué. Vérifiez les logs ci-dessus.');
  } else {
    console.log('\n🎉 Migration terminée avec succès !');
  }
}

// Exécuter la migration
migrateCategories().catch(console.error);