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
    parent_id: null,
    level: 0,
    subcategories: [
      {
        id: 'voitures',
        name: 'Voitures',
        slug: 'voitures',
        parent_id: 'vehicules',
        level: 1,
        subcategories: [
          { id: 'berlines', name: 'Berlines', slug: 'berlines', parent_id: 'voitures', level: 2 },
          { id: 'citadines', name: 'Citadines', slug: 'citadines', parent_id: 'voitures', level: 2 },
          { id: 'suv-4x4', name: 'SUV & 4x4', slug: 'suv-4x4', parent_id: 'voitures', level: 2 },
          { id: 'breaks', name: 'Breaks', slug: 'breaks', parent_id: 'voitures', level: 2 },
          { id: 'coupes-cabriolets', name: 'Coupés & Cabriolets', slug: 'coupes-cabriolets', parent_id: 'voitures', level: 2 },
          { id: 'voitures-occasion', name: 'Voitures d\'occasion', slug: 'voitures-occasion', parent_id: 'voitures', level: 2 },
          { id: 'voitures-neuves', name: 'Voitures neuves', slug: 'voitures-neuves', parent_id: 'voitures', level: 2 }
        ]
      },
      {
        id: 'motos-scooters',
        name: 'Motos & Scooters',
        slug: 'motos-scooters',
        parent_id: 'vehicules',
        level: 1,
        subcategories: [
          { id: 'motos-route', name: 'Motos route', slug: 'motos-route', parent_id: 'motos-scooters', level: 2 },
          { id: 'scooters', name: 'Scooters', slug: 'scooters', parent_id: 'motos-scooters', level: 2 },
          { id: 'motos-cross', name: 'Motos cross', slug: 'motos-cross', parent_id: 'motos-scooters', level: 2 },
          { id: 'motos-occasion', name: 'Motos occasion', slug: 'motos-occasion', parent_id: 'motos-scooters', level: 2 }
        ]
      },
      {
        id: 'velos',
        name: 'Vélos',
        slug: 'velos',
        parent_id: 'vehicules',
        level: 1,
        subcategories: [
          { id: 'velos-ville', name: 'Vélos ville', slug: 'velos-ville', parent_id: 'velos', level: 2 },
          { id: 'velos-route', name: 'Vélos route', slug: 'velos-route', parent_id: 'velos', level: 2 },
          { id: 'velos-ttb', name: 'Vélos TTB', slug: 'velos-ttb', parent_id: 'velos', level: 2 },
          { id: 'velos-electriques', name: 'Vélos électriques', slug: 'velos-electriques', parent_id: 'velos', level: 2 }
        ]
      },
      {
        id: 'utilitaires',
        name: 'Utilitaires',
        slug: 'utilitaires',
        parent_id: 'vehicules',
        level: 1,
        subcategories: [
          { id: 'fourgons', name: 'Fourgons', slug: 'fourgons', parent_id: 'utilitaires', level: 2 },
          { id: 'camionnettes', name: 'Camionnettes', slug: 'camionnettes', parent_id: 'utilitaires', level: 2 },
          { id: 'camions', name: 'Camions', slug: 'camions', parent_id: 'utilitaires', level: 2 }
        ]
      }
    ]
  },

  // 2. Immobilier & Maison
  {
    id: 'immobilier-maison',
    name: 'Immobilier & Maison',
    slug: 'immobilier-maison',
    parent_id: null,
    level: 0,
    subcategories: [
      {
        id: 'ventes-immobilieres',
        name: 'Ventes Immobilières',
        slug: 'ventes-immobilieres',
        parent_id: 'immobilier-maison',
        level: 1,
        subcategories: [
          { id: 'appartements-vente', name: 'Appartements à vendre', slug: 'appartements-vente', parent_id: 'ventes-immobilieres', level: 2 },
          { id: 'studios-vente', name: 'Studios', slug: 'studios-vente', parent_id: 'ventes-immobilieres', level: 2 },
          { id: 'maisons-vente', name: 'Maisons à vendre', slug: 'maisons-vente', parent_id: 'ventes-immobilieres', level: 2 },
          { id: 'villas-vente', name: 'Villas', slug: 'villas-vente', parent_id: 'ventes-immobilieres', level: 2 },
          { id: 'terrains-vente', name: 'Terrains à vendre', slug: 'terrains-vente', parent_id: 'ventes-immobilieres', level: 2 }
        ]
      },
      {
        id: 'locations-immobilieres',
        name: 'Locations Immobilières',
        slug: 'locations-immobilieres',
        parent_id: 'immobilier-maison',
        level: 1,
        subcategories: [
          { id: 'appartements-location', name: 'Appartements en location', slug: 'appartements-location', parent_id: 'locations-immobilieres', level: 2 },
          { id: 'studios-location', name: 'Studios', slug: 'studios-location', parent_id: 'locations-immobilieres', level: 2 },
          { id: 'maisons-location', name: 'Maisons en location', slug: 'maisons-location', parent_id: 'locations-immobilieres', level: 2 }
        ]
      }
    ]
  },

  // 3. Informatique & Électronique
  {
    id: 'informatique-electronique',
    name: 'Informatique & Électronique',
    slug: 'informatique-electronique',
    parent_id: null,
    level: 0,
    subcategories: [
      {
        id: 'ordinateurs',
        name: 'Ordinateurs',
        slug: 'ordinateurs',
        parent_id: 'informatique-electronique',
        level: 1,
        subcategories: [
          { id: 'pc-portables', name: 'PC Portables', slug: 'pc-portables', parent_id: 'ordinateurs', level: 2 },
          { id: 'pc-bureau', name: 'PC de Bureau', slug: 'pc-bureau', parent_id: 'ordinateurs', level: 2 },
          { id: 'macbooks', name: 'MacBooks', slug: 'macbooks', parent_id: 'ordinateurs', level: 2 },
          { id: 'composants-pc', name: 'Composants PC', slug: 'composants-pc', parent_id: 'ordinateurs', level: 2 }
        ]
      },
      {
        id: 'telephones',
        name: 'Téléphones',
        slug: 'telephones',
        parent_id: 'informatique-electronique',
        level: 1,
        subcategories: [
          { id: 'smartphones', name: 'Smartphones', slug: 'smartphones', parent_id: 'telephones', level: 2 },
          { id: 'iphone', name: 'iPhone', slug: 'iphone', parent_id: 'telephones', level: 2 },
          { id: 'telephones-portables', name: 'Téléphones portables', slug: 'telephones-portables', parent_id: 'telephones', level: 2 }
        ]
      }
    ]
  },

  // 4. Maison & Jardin
  {
    id: 'maison-jardin',
    name: 'Maison & Jardin',
    slug: 'maison-jardin',
    parent_id: null,
    level: 0,
    subcategories: [
      {
        id: 'electromenager',
        name: 'Électroménager',
        slug: 'electromenager',
        parent_id: 'maison-jardin',
        level: 1,
        subcategories: [
          { id: 'refrigerateurs', name: 'Réfrigérateurs', slug: 'refrigerateurs', parent_id: 'electromenager', level: 2 },
          { id: 'lave-linge', name: 'Lave-linge', slug: 'lave-linge', parent_id: 'electromenager', level: 2 },
          { id: 'four', name: 'Fours', slug: 'four', parent_id: 'electromenager', level: 2 }
        ]
      },
      {
        id: 'meubles',
        name: 'Meubles',
        slug: 'meubles',
        parent_id: 'maison-jardin',
        level: 1,
        subcategories: [
          { id: 'canapes', name: 'Canapés', slug: 'canapes', parent_id: 'meubles', level: 2 },
          { id: 'tables-manger', name: 'Tables à manger', slug: 'tables-manger', parent_id: 'meubles', level: 2 },
          { id: 'lits', name: 'Lits', slug: 'lits', parent_id: 'meubles', level: 2 }
        ]
      }
    ]
  },

  // 5. Mode & Accessoires
  {
    id: 'mode-accessoires',
    name: 'Mode & Accessoires',
    slug: 'mode-accessoires',
    parent_id: null,
    level: 0,
    subcategories: [
      {
        id: 'vetements-femme',
        name: 'Vêtements Femme',
        slug: 'vetements-femme',
        parent_id: 'mode-accessoires',
        level: 1,
        subcategories: [
          { id: 'robes', name: 'Robes', slug: 'robes', parent_id: 'vetements-femme', level: 2 },
          { id: 'vestes-femme', name: 'Vestes', slug: 'vestes-femme', parent_id: 'vetements-femme', level: 2 },
          { id: 'jeans-femme', name: 'Jeans', slug: 'jeans-femme', parent_id: 'vetements-femme', level: 2 }
        ]
      },
      {
        id: 'vetements-homme',
        name: 'Vêtements Homme',
        slug: 'vetements-homme',
        parent_id: 'mode-accessoires',
        level: 1,
        subcategories: [
          { id: 'chemises', name: 'Chemises', slug: 'chemises', parent_id: 'vetements-homme', level: 2 },
          { id: 'vestes-homme', name: 'Vestes', slug: 'vestes-homme', parent_id: 'vetements-homme', level: 2 },
          { id: 'jeans-homme', name: 'Jeans', slug: 'jeans-homme', parent_id: 'vetements-homme', level: 2 }
        ]
      }
    ]
  },

  // 6. Emploi & Carrière
  {
    id: 'emploi-carriere',
    name: 'Emploi & Carrière',
    slug: 'emploi-carriere',
    parent_id: null,
    level: 0,
    subcategories: [
      {
        id: 'offres-emploi',
        name: 'Offres d\'emploi',
        slug: 'offres-emploi',
        parent_id: 'emploi-carriere',
        level: 1,
        subcategories: [
          { id: 'emploi-cdi', name: 'CDI', slug: 'emploi-cdi', parent_id: 'offres-emploi', level: 2 },
          { id: 'emploi-cdd', name: 'CDD', slug: 'emploi-cdd', parent_id: 'offres-emploi', level: 2 },
          { id: 'emploi-interim', name: 'Intérim', slug: 'emploi-interim', parent_id: 'offres-emploi', level: 2 }
        ]
      },
      {
        id: 'stages',
        name: 'Stages',
        slug: 'stages',
        parent_id: 'emploi-carriere',
        level: 1,
        subcategories: [
          { id: 'stages-etudiants', name: 'Stages étudiants', slug: 'stages-etudiants', parent_id: 'stages', level: 2 },
          { id: 'stages-professionnels', name: 'Stages professionnels', slug: 'stages-professionnels', parent_id: 'stages', level: 2 }
        ]
      }
    ]
  },

  // 7. Services
  {
    id: 'services',
    name: 'Services',
    slug: 'services',
    parent_id: null,
    level: 0,
    subcategories: [
      {
        id: 'services-maison',
        name: 'Services Maison',
        slug: 'services-maison',
        parent_id: 'services',
        level: 1,
        subcategories: [
          { id: 'menage-repassage', name: 'Ménage & Repassage', slug: 'menage-repassage', parent_id: 'services-maison', level: 2 },
          { id: 'jardinage-bricolage', name: 'Jardinage & Bricolage', slug: 'jardinage-bricolage', parent_id: 'services-maison', level: 2 },
          { id: 'cuisine-traiteur', name: 'Cuisine & Traiteur', slug: 'cuisine-traiteur', parent_id: 'services-maison', level: 2 }
        ]
      },
      {
        id: 'services-professionnels',
        name: 'Services Professionnels',
        slug: 'services-professionnels',
        parent_id: 'services',
        level: 1,
        subcategories: [
          { id: 'comptabilite-finance', name: 'Comptabilité & Finance', slug: 'comptabilite-finance', parent_id: 'services-professionnels', level: 2 },
          { id: 'marketing-communication', name: 'Marketing & Communication', slug: 'marketing-communication', parent_id: 'services-professionnels', level: 2 },
          { id: 'informatique-web', name: 'Informatique & Web', slug: 'informatique-web', parent_id: 'services-professionnels', level: 2 }
        ]
      }
    ]
  },

  // 8. Loisirs & Divertissement
  {
    id: 'loisirs-divertissement',
    name: 'Loisirs & Divertissement',
    slug: 'loisirs-divertissement',
    parent_id: null,
    level: 0,
    subcategories: [
      {
        id: 'jeux-jouets',
        name: 'Jeux & Jouets',
        slug: 'jeux-jouets',
        parent_id: 'loisirs-divertissement',
        level: 1,
        subcategories: [
          { id: 'jeux-societe', name: 'Jeux de société', slug: 'jeux-societe', parent_id: 'jeux-jouets', level: 2 },
          { id: 'jeux-video', name: 'Jeux vidéo', slug: 'jeux-video', parent_id: 'jeux-jouets', level: 2 },
          { id: 'jouets-enfants', name: 'Jouets pour enfants', slug: 'jouets-enfants', parent_id: 'jeux-jouets', level: 2 }
        ]
      },
      {
        id: 'livres-bd',
        name: 'Livres & BD',
        slug: 'livres-bd',
        parent_id: 'loisirs-divertissement',
        level: 1,
        subcategories: [
          { id: 'romans', name: 'Romans', slug: 'romans', parent_id: 'livres-bd', level: 2 },
          { id: 'bd-mangas', name: 'BD & Mangas', slug: 'bd-mangas', parent_id: 'livres-bd', level: 2 },
          { id: 'livres-scolaires', name: 'Livres scolaires', slug: 'livres-scolaires', parent_id: 'livres-bd', level: 2 }
        ]
      }
    ]
  },

  // 9. Animaux & Accessoires
  {
    id: 'animaux-accessoires',
    name: 'Animaux & Accessoires',
    slug: 'animaux-accessoires',
    parent_id: null,
    level: 0,
    subcategories: [
      {
        id: 'chiens',
        name: 'Chiens',
        slug: 'chiens',
        parent_id: 'animaux-accessoires',
        level: 1,
        subcategories: [
          { id: 'chiots', name: 'Chiots', slug: 'chiots', parent_id: 'chiens', level: 2 },
          { id: 'accessoires-chiens', name: 'Accessoires chiens', slug: 'accessoires-chiens', parent_id: 'chiens', level: 2 },
          { id: 'alimentation-chiens', name: 'Alimentation chiens', slug: 'alimentation-chiens', parent_id: 'chiens', level: 2 }
        ]
      },
      {
        id: 'chats',
        name: 'Chats',
        slug: 'chats',
        parent_id: 'animaux-accessoires',
        level: 1,
        subcategories: [
          { id: 'chatons', name: 'Chatons', slug: 'chatons', parent_id: 'chats', level: 2 },
          { id: 'accessoires-chats', name: 'Accessoires chats', slug: 'accessoires-chats', parent_id: 'chats', level: 2 },
          { id: 'alimentation-chats', name: 'Alimentation chats', slug: 'alimentation-chats', parent_id: 'chats', level: 2 }
        ]
      }
    ]
  },

  // 10. Sports & Fitness
  {
    id: 'sports-fitness',
    name: 'Sports & Fitness',
    slug: 'sports-fitness',
    parent_id: null,
    level: 0,
    subcategories: [
      {
        id: 'materiel-sport',
        name: 'Matériel de sport',
        slug: 'materiel-sport',
        parent_id: 'sports-fitness',
        level: 1,
        subcategories: [
          { id: 'velos-appartement', name: 'Vélos d\'appartement', slug: 'velos-appartement', parent_id: 'materiel-sport', level: 2 },
          { id: 'tapis-course', name: 'Tapis de course', slug: 'tapis-course', parent_id: 'materiel-sport', level: 2 },
          { id: 'haltères-musculation', name: 'Haltères & Musculation', slug: 'haltères-musculation', parent_id: 'materiel-sport', level: 2 }
        ]
      },
      {
        id: 'sports-exterieur',
        name: 'Sports en extérieur',
        slug: 'sports-exterieur',
        parent_id: 'sports-fitness',
        level: 1,
        subcategories: [
          { id: 'velos-ttb', name: 'Vélos TTB', slug: 'velos-ttb', parent_id: 'sports-exterieur', level: 2 },
          { id: 'skis-snowboard', name: 'Skis & Snowboard', slug: 'skis-snowboard', parent_id: 'sports-exterieur', level: 2 },
          { id: 'surf-planche-voile', name: 'Surf & Planche à voile', slug: 'surf-planche-voile', parent_id: 'sports-exterieur', level: 2 }
        ]
      }
    ]
  }
];

// Fonction pour transformer la structure hiérarchique en tableau plat
function flattenCategories(categories) {
  const result = [];
  
  function processCategory(category, parentId = null) {
    const { subcategories, ...categoryData } = category;
    
    result.push({
      ...categoryData,
      parent_id: parentId,
      id_uuid: crypto.randomUUID()
    });
    
    if (subcategories && subcategories.length > 0) {
      subcategories.forEach(subcategory => {
        processCategory(subcategory, category.id);
      });
    }
  }
  
  categories.forEach(category => {
    processCategory(category);
  });
  
  return result;
}

class MigrationResult {
  constructor(success, categoryId = null, error = null) {
    this.success = success;
    this.categoryId = categoryId;
    this.error = error;
  }
}

async function createCategory(category) {
  try {
    const { data, error } = await supabase
      .from('categories')
      .insert({
        name: category.name,
        slug: category.slug,
        id_uuid: category.id_uuid,
        parent_id: category.parent_id,
        level: category.level,
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

async function migrateAllCategories() {
  console.log('🚀 Début de la migration des catégories structurées...');
  
  // Transformer la structure hiérarchique en tableau plat
  const flatCategories = flattenCategories(menuCategories);
  
  console.log(`📊 Nombre total de catégories à migrer: ${flatCategories.length}`);
  
  const results = [];
  
  // Trier par niveau pour créer d'abord les catégories principales
  const sortedCategories = flatCategories.sort((a, b) => a.level - b.level);
  
  for (const category of sortedCategories) {
    const result = await createCategory(category);
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