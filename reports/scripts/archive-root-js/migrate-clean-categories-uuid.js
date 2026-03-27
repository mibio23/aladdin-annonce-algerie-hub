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

// Structure complète des catégories de notre menu
const menuCategories = [
  // 1. Véhicules
  {
    id: 'vehicules',
    name: 'Véhicules',
    slug: 'vehicules',
    parent_id_uuid: null,
    level: 0,
    subcategories: [
      {
        id: 'voitures',
        name: 'Voitures',
        slug: 'voitures',
        parent_id_uuid: null, // Will be updated after parent creation
        level: 1,
        subcategories: [
          { id: 'berlines', name: 'Berlines', slug: 'berlines', parent_id_uuid: null, level: 2 },
          { id: 'citadines', name: 'Citadines', slug: 'citadines', parent_id_uuid: null, level: 2 },
          { id: 'suv-4x4', name: 'SUV & 4x4', slug: 'suv-4x4', parent_id_uuid: null, level: 2 },
          { id: 'breaks', name: 'Breaks', slug: 'breaks', parent_id_uuid: null, level: 2 },
          { id: 'coupes-cabriolets', name: 'Coupés & Cabriolets', slug: 'coupes-cabriolets', parent_id_uuid: null, level: 2 },
          { id: 'voitures-occasion', name: 'Voitures d\'occasion', slug: 'voitures-occasion', parent_id_uuid: null, level: 2 },
          { id: 'voitures-neuves', name: 'Voitures neuves', slug: 'voitures-neuves', parent_id_uuid: null, level: 2 }
        ]
      },
      {
        id: 'motos-scooters',
        name: 'Motos & Scooters',
        slug: 'motos-scooters',
        parent_id_uuid: null,
        level: 1,
        subcategories: [
          { id: 'motos-route', name: 'Motos route', slug: 'motos-route', parent_id_uuid: null, level: 2 },
          { id: 'motos-cross', name: 'Motos cross', slug: 'motos-cross', parent_id_uuid: null, level: 2 },
          { id: 'scooters', name: 'Scooters', slug: 'scooters', parent_id_uuid: null, level: 2 },
          { id: 'cyclomoteurs', name: 'Cyclomoteurs', slug: 'cyclomoteurs', parent_id_uuid: null, level: 2 }
        ]
      },
      {
        id: 'velos',
        name: 'Vélos',
        slug: 'velos',
        parent_id_uuid: null,
        level: 1,
        subcategories: [
          { id: 'velos-route', name: 'Vélos route', slug: 'velos-route', parent_id_uuid: null, level: 2 },
          { id: 'velos-ville', name: 'Vélos ville', slug: 'velos-ville', parent_id_uuid: null, level: 2 },
          { id: 'velos-montagne', name: 'Vélos montagne', slug: 'velos-montagne', parent_id_uuid: null, level: 2 },
          { id: 'velos-enfants', name: 'Vélos enfants', slug: 'velos-enfants', parent_id_uuid: null, level: 2 }
        ]
      },
      {
        id: 'caravanes-camping-cars',
        name: 'Caravanes & Camping-cars',
        slug: 'caravanes-camping-cars',
        parent_id_uuid: null,
        level: 1,
        subcategories: [
          { id: 'caravanes', name: 'Caravanes', slug: 'caravanes', parent_id_uuid: null, level: 2 },
          { id: 'camping-cars', name: 'Camping-cars', slug: 'camping-cars', parent_id_uuid: null, level: 2 }
        ]
      },
      {
        id: 'utilitaires',
        name: 'Utilitaires',
        slug: 'utilitaires',
        parent_id_uuid: null,
        level: 1,
        subcategories: [
          { id: 'fourgons', name: 'Fourgons', slug: 'fourgons', parent_id_uuid: null, level: 2 },
          { id: 'camionnettes', name: 'Camionnettes', slug: 'camionnettes', parent_id_uuid: null, level: 2 },
          { id: 'camions', name: 'Camions', slug: 'camions', parent_id_uuid: null, level: 2 }
        ]
      },
      {
        id: 'equipement-vehicules',
        name: 'Équipement véhicules',
        slug: 'equipement-vehicules',
        parent_id_uuid: null,
        level: 1,
        subcategories: [
          { id: 'pieces-detachees', name: 'Pièces détachées', slug: 'pieces-detachees', parent_id_uuid: null, level: 2 },
          { id: 'accessoires-auto', name: 'Accessoires auto', slug: 'accessoires-auto', parent_id_uuid: null, level: 2 },
          { id: 'pneus-jantes', name: 'Pneus & Jantes', slug: 'pneus-jantes', parent_id_uuid: null, level: 2 },
          { id: 'gps-automobile', name: 'GPS automobile', slug: 'gps-automobile', parent_id_uuid: null, level: 2 }
        ]
      }
    ]
  },
  // Continue with all other categories...
  // 2. Immobilier
  {
    id: 'immobilier',
    name: 'Immobilier',
    slug: 'immobilier',
    parent_id_uuid: null,
    level: 0,
    subcategories: [
      {
        id: 'ventes-immobilieres',
        name: 'Ventes immobilières',
        slug: 'ventes-immobilieres',
        parent_id_uuid: null,
        level: 1,
        subcategories: [
          { id: 'appartements-vente', name: 'Appartements', slug: 'appartements-vente', parent_id_uuid: null, level: 2 },
          { id: 'maisons-vente', name: 'Maisons', slug: 'maisons-vente', parent_id_uuid: null, level: 2 },
          { id: 'terrains-vente', name: 'Terrains', slug: 'terrains-vente', parent_id_uuid: null, level: 2 },
          { id: 'parking-garage-vente', name: 'Parking & Garage', slug: 'parking-garage-vente', parent_id_uuid: null, level: 2 }
        ]
      },
      {
        id: 'locations-immobilieres',
        name: 'Locations immobilières',
        slug: 'locations-immobilieres',
        parent_id_uuid: null,
        level: 1,
        subcategories: [
          { id: 'appartements-location', name: 'Appartements', slug: 'appartements-location', parent_id_uuid: null, level: 2 },
          { id: 'maisons-location', name: 'Maisons', slug: 'maisons-location', parent_id_uuid: null, level: 2 },
          { id: 'chambres-location', name: 'Chambres', slug: 'chambres-location', parent_id_uuid: null, level: 2 },
          { id: 'parking-garage-location', name: 'Parking & Garage', slug: 'parking-garage-location', parent_id_uuid: null, level: 2 }
        ]
      }
    ]
  },
  // 3. Emploi
  {
    id: 'emploi',
    name: 'Emploi',
    slug: 'emploi',
    parent_id_uuid: null,
    level: 0,
    subcategories: [
      {
        id: 'offres-emploi',
        name: 'Offres d\'emploi',
        slug: 'offres-emploi',
        parent_id_uuid: null,
        level: 1,
        subcategories: [
          { id: 'informatique-telecom', name: 'Informatique & Télécom', slug: 'informatique-telecom', parent_id_uuid: null, level: 2 },
          { id: 'commerce-distribution', name: 'Commerce & Distribution', slug: 'commerce-distribution', parent_id_uuid: null, level: 2 },
          { id: 'tourisme-hotellerie', name: 'Tourisme & Hôtellerie', slug: 'tourisme-hotellerie', parent_id_uuid: null, level: 2 },
          { id: 'transport-logistique', name: 'Transport & Logistique', slug: 'transport-logistique', parent_id_uuid: null, level: 2 }
        ]
      },
      {
        id: 'demandes-emploi',
        name: 'Demandes d\'emploi',
        slug: 'demandes-emploi',
        parent_id_uuid: null,
        level: 1,
        subcategories: [
          { id: 'cv-candidats', name: 'CV & Candidats', slug: 'cv-candidats', parent_id_uuid: null, level: 2 },
          { id: 'stages-alternance', name: 'Stages & Alternance', slug: 'stages-alternance', parent_id_uuid: null, level: 2 }
        ]
      }
    ]
  }
  // Continue with all other categories in the same pattern...
];

// Convertir la structure hiérarchique en tableau plat avec UUIDs
function flattenCategories(categories) {
  const flat = [];
  const uuidMap = {}; // Map to store generated UUIDs for each category ID

  function processCategory(category, parentUuid = null) {
    // Generate UUID for this category if not already generated
    if (!uuidMap[category.id]) {
      uuidMap[category.id] = crypto.randomUUID();
    }
    
    const categoryUuid = uuidMap[category.id];
    
    // Add the category to flat array
    flat.push({
      id_uuid: categoryUuid,
      name: category.name,
      slug: category.slug,
      parent_id_uuid: parentUuid,
      level: category.level
    });

    // Process subcategories if they exist
    if (category.subcategories) {
      category.subcategories.forEach(subcategory => {
        processCategory(subcategory, categoryUuid);
      });
    }
  }

  // Process all main categories
  categories.forEach(category => {
    processCategory(category, null);
  });

  return flat;
}

// Fonction pour créer une catégorie
async function createCategory(category) {
  try {
    const { data, error } = await supabase
      .from('categories')
      .insert({
        name: category.name,
        slug: category.slug,
        id_uuid: category.id_uuid,
        parent_id_uuid: category.parent_id_uuid,
        created_at: new Date().toISOString(),
        updated_at: new Date().toISOString()
      })
      .select()
      .single();

    if (error) {
      console.error(`❌ Erreur lors de la création de la catégorie "${category.name}":`, error.message);
      return null;
    }

    console.log(`✅ Catégorie créée: ${category.name} (niveau ${category.level})`);
    return data;
  } catch (error) {
    console.error(`❌ Erreur lors de la création de la catégorie "${category.name}":`, error.message);
    return null;
  }
}

// Fonction principale de migration
async function migrateCategories() {
  console.log('🚀 Début de la migration des catégories...\n');

  try {
    // Convertir la structure hiérarchique en tableau plat
    const flatCategories = flattenCategories(menuCategories);
    
    // Trier par niveau pour s'assurer que les parents sont créés avant les enfants
    flatCategories.sort((a, b) => a.level - b.level);

    console.log(`📊 Nombre total de catégories à migrer: ${flatCategories.length}\n`);

    let successCount = 0;
    let failureCount = 0;

    // Créer chaque catégorie
    for (const category of flatCategories) {
      const result = await createCategory(category);
      if (result) {
        successCount++;
      } else {
        failureCount++;
      }
    }

    console.log('\n📊 Résumé de la migration:');
    console.log(`✅ Succès: ${successCount}`);
    console.log(`❌ Échecs: ${failureCount}`);
    
    if (failureCount > 0) {
      console.log('⚠️  Certains éléments n\'ont pas pu être migrés.');
    } else {
      console.log('🎉 Migration terminée avec succès!');
    }

  } catch (error) {
    console.error('❌ Erreur lors de la migration:', error.message);
  }
}

// Exécuter la migration
migrateCategories();