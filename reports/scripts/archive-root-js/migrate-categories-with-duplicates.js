import { createClient } from '@supabase/supabase-js';
import dotenv from 'dotenv';
import crypto from 'crypto';

dotenv.config();

const supabaseUrl = process.env.VITE_SUPABASE_URL;
const supabaseKey = process.env.VITE_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseKey) {
  console.error('❌ Variables d\'environnement Supabase manquantes');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseKey);

class MigrationResult {
  constructor(success, categoryId = null, error = null) {
    this.success = success;
    this.categoryId = categoryId;
    this.error = error;
  }
}

async function checkCategoryExists(slug) {
  try {
    const { data, error } = await supabase
      .from('categories')
      .select('id, id_uuid, name')
      .eq('slug', slug)
      .single();

    if (error && error.code !== 'PGRST116') { // PGRST116 = no rows returned
      throw error;
    }

    return data;
  } catch (error) {
    console.error(`❌ Erreur lors de la vérification de la catégorie ${slug}:`, error);
    return null;
  }
}

async function updateCategory(existingCategory, newCategoryData) {
  try {
    const { data, error } = await supabase
      .from('categories')
      .update({
        name: newCategoryData.name,
        updated_at: new Date().toISOString()
      })
      .eq('id', existingCategory.id)
      .select()
      .single();

    if (error) {
      console.error(`❌ Erreur lors de la mise à jour de la catégorie ${newCategoryData.name}:`, error);
      return new MigrationResult(false, null, error.message);
    }

    console.log(`✅ Catégorie mise à jour: ${newCategoryData.name} (UUID: ${existingCategory.id_uuid})`);
    return new MigrationResult(true, existingCategory.id);
  } catch (error) {
    console.error(`❌ Exception lors de la mise à jour de la catégorie ${newCategoryData.name}:`, error);
    return new MigrationResult(false, null, error.message);
  }
}

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
      console.error(`❌ Erreur lors de la création de la catégorie ${category.name}:`, error);
      return new MigrationResult(false, null, error.message);
    }

    console.log(`✅ Catégorie créée: ${category.name} (UUID: ${data.id_uuid})`);
    return new MigrationResult(true, data.id);
  } catch (error) {
    console.error(`❌ Exception lors de la création de la catégorie ${category.name}:`, error);
    return new MigrationResult(false, null, error.message);
  }
}

async function migrateCategory(category) {
  console.log(`\n🔄 Traitement de la catégorie: ${category.name} (${category.slug})`);

  // Vérifier si la catégorie existe déjà
  const existingCategory = await checkCategoryExists(category.slug);
  
  if (existingCategory) {
    console.log(`⚠️  La catégorie existe déjà: ${existingCategory.name} (UUID: ${existingCategory.id_uuid})`);
    
    // Optionnel : Mettre à jour la catégorie existante si le nom est différent
    if (existingCategory.name !== category.name) {
      console.log(`📝 Mise à jour du nom: "${existingCategory.name}" → "${category.name}"`);
      return await updateCategory(existingCategory, category);
    } else {
      console.log(`⏭️  Aucune modification nécessaire`);
      return new MigrationResult(true, existingCategory.id);
    }
  }

  // Créer la catégorie si elle n'existe pas
  return await createCategory(category);
}

async function migrateAllCategories() {
  console.log('🚀 Début de la migration des catégories principales...');
  
  const results = [];
  
  // Migrer d'abord les catégories principales (sans parent_id)
  const mainCategories = refactoredCategories.filter(cat => !cat.parent_id);
  
  for (const category of mainCategories) {
    const result = await migrateCategory(category);
    results.push({ category: category.name, result });
  }

  // Ensuite migrer les sous-catégories (avec parent_id)
  console.log('\n🚀 Migration des sous-catégories...');
  const subCategories = refactoredCategories.filter(cat => cat.parent_id);
  
  for (const category of subCategories) {
    const result = await migrateCategory(category);
    results.push({ category: category.name, result });
  }

  // Afficher le résumé
  console.log('\n📊 Résumé de la migration:');
  const successful = results.filter(r => r.result.success).length;
  const failed = results.filter(r => !r.result.success).length;
  
  console.log(`✅ Succès: ${successful}`);
  console.log(`❌ Échecs: ${failed}`);
  
  if (failed > 0) {
    console.log('\n❌ Détails des échecs:');
    results.filter(r => !r.result.success).forEach(r => {
      console.log(`  • ${r.category}: ${r.result.error}`);
    });
  }

  return results;
}

// Exécuter la migration
migrateAllCategories().catch(console.error);