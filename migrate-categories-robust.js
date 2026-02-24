// Script de migration robuste pour les catégories (sans colonne level)
// Ce script fonctionne avec la structure actuelle de Supabase

import { createClient } from '@supabase/supabase-js';

// Configuration Supabase
const supabaseUrl = process.env.VITE_SUPABASE_URL || 'https://smsvybphkdxzvgawzoru.supabase.co';
const supabaseKey = process.env.VITE_SUPABASE_ANON_KEY || 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNtc3Z5YnBoa2R4enZnYXd6b3J1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDcyMTk1MDYsImV4cCI6MjA2Mjc5NTUwNn0.BnS7qmTl1a4htjiv3qN7zyjZ04DZgdV7N6Z0a0AU40g';

const supabase = createClient(supabaseUrl, supabaseKey);

// Données des catégories principales
const mainCategories = [
  {
    id: 'vehicules',
    name: 'Véhicules',
    slug: 'vehicules',
    isActive: true,
    sortOrder: 1,
    subcategories: [
      {
        id: 'voitures',
        name: 'Voitures',
        slug: 'voitures',
        isActive: true,
        sortOrder: 1,
        subcategories: [
          { id: 'berlines', name: 'Berlines', slug: 'berlines', isActive: true, sortOrder: 1 },
          { id: '4x4-suv', name: '4x4 & SUV', slug: '4x4-suv', isActive: true, sortOrder: 2 }
        ]
      },
      {
        id: 'motos',
        name: 'Motos',
        slug: 'motos',
        isActive: true,
        sortOrder: 2,
        subcategories: [
          { id: 'sportives', name: 'Sportives', slug: 'sportives', isActive: true, sortOrder: 1 }
        ]
      }
    ]
  },
  {
    id: 'immobilier',
    name: 'Immobilier',
    slug: 'immobilier',
    isActive: true,
    sortOrder: 2,
    subcategories: [
      {
        id: 'ventes-immobilieres',
        name: 'Ventes immobilières',
        slug: 'ventes-immobilieres',
        isActive: true,
        sortOrder: 1,
        subcategories: [
          { id: 'appartements', name: 'Appartements', slug: 'appartements', isActive: true, sortOrder: 1 },
          { id: 'maisons', name: 'Maisons', slug: 'maisons', isActive: true, sortOrder: 2 }
        ]
      }
    ]
  },
  {
    id: 'informatique-electronique',
    name: 'Informatique & Électronique',
    slug: 'informatique-electronique',
    isActive: true,
    sortOrder: 3,
    subcategories: [
      {
        id: 'ordinateurs-peripheriques',
        name: 'Ordinateurs & Périphériques',
        slug: 'ordinateurs-peripheriques',
        isActive: true,
        sortOrder: 1,
        subcategories: [
          { id: 'pc-portables', name: 'PC Portables', slug: 'pc-portables', isActive: true, sortOrder: 1 }
        ]
      },
      {
        id: 'telephonie-mobile',
        name: 'Téléphonie Mobile',
        slug: 'telephonie-mobile',
        isActive: true,
        sortOrder: 2,
        subcategories: [
          { id: 'smartphones', name: 'Smartphones', slug: 'smartphones', isActive: true, sortOrder: 1 }
        ]
      }
    ]
  },
  {
    id: 'maison-jardin',
    name: 'Maison & Jardin',
    slug: 'maison-jardin',
    isActive: true,
    sortOrder: 4,
    subcategories: [
      {
        id: 'meubles',
        name: 'Meubles',
        slug: 'meubles',
        isActive: true,
        sortOrder: 1,
        subcategories: [
          { id: 'canapes', name: 'Canapés', slug: 'canapes', isActive: true, sortOrder: 1 },
          { id: 'tables-chaises', name: 'Tables & Chaises', slug: 'tables-chaises', isActive: true, sortOrder: 2 }
        ]
      },
      {
        id: 'electromenager',
        name: 'Électroménager',
        slug: 'electromenager',
        isActive: true,
        sortOrder: 2,
        subcategories: [
          { id: 'refrigerateurs', name: 'Réfrigérateurs', slug: 'refrigerateurs', isActive: true, sortOrder: 1 },
          { id: 'lave-linge', name: 'Lave-linge', slug: 'lave-linge', isActive: true, sortOrder: 2 }
        ]
      }
    ]
  },
  {
    id: 'mode-accessoires',
    name: 'Mode & Accessoires',
    slug: 'mode-accessoires',
    isActive: true,
    sortOrder: 5,
    subcategories: [
      {
        id: 'vetements-femme',
        name: 'Vêtements Femme',
        slug: 'vetements-femme',
        isActive: true,
        sortOrder: 1,
        subcategories: [
          { id: 'robes', name: 'Robes', slug: 'robes', isActive: true, sortOrder: 1 },
          { id: 'vestes', name: 'Vestes', slug: 'vestes', isActive: true, sortOrder: 2 }
        ]
      },
      {
        id: 'vetements-homme',
        name: 'Vêtements Homme',
        slug: 'vetements-homme',
        isActive: true,
        sortOrder: 2,
        subcategories: [
          { id: 'costumes', name: 'Costumes', slug: 'costumes', isActive: true, sortOrder: 1 },
          { id: 'chemises', name: 'Chemises', slug: 'chemises', isActive: true, sortOrder: 2 }
        ]
      }
    ]
  }
];

// Classe pour les résultats de migration
class MigrationResult {
  constructor(success, categoryId = null, error = null) {
    this.success = success;
    this.categoryId = categoryId;
    this.error = error;
  }
}

// Fonction pour créer une catégorie principale (sans level)
async function createMainCategory(category) {
  try {
    const { data, error } = await supabase
      .from('categories')
      .insert({
        name: category.name,
        slug: category.slug,
        id_uuid: crypto.randomUUID(),
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

// Fonction pour créer une sous-catégorie (sans level)
async function createSubcategory(subcategory, parentId) {
  try {
    const { data, error } = await supabase
      .from('categories')
      .insert({
        name: subcategory.name,
        slug: subcategory.slug,
        id_uuid: crypto.randomUUID(),
        parent_id: parentId,
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

// Fonction pour créer une sous-sous-catégorie (sans level)
async function createSubSubcategory(subSubcategory, parentId) {
  try {
    const { data, error } = await supabase
      .from('categories')
      .insert({
        name: subSubcategory.name,
        slug: subSubcategory.slug,
        id_uuid: crypto.randomUUID(),
        parent_id: parentId,
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
  console.log('📌 Utilisation de la structure de base (sans colonne level)');
  
  let totalCategories = 0;
  let successfulCategories = 0;
  let failedCategories = 0;

  for (const category of mainCategories) {
    console.log(`\n📁 Traitement de la catégorie: ${category.name}`);
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
            if (subSubResult.success) {
              successfulCategories++;
            } else {
              failedCategories++;
            }
          }
        }
      }
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
  }
}

// Exécuter la migration
migrateCategories().catch(console.error);