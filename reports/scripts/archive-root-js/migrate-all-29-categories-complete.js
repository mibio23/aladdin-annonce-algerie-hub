import { createClient } from '@supabase/supabase-js';
import dotenv from 'dotenv';
dotenv.config();

const supabase = createClient(process.env.VITE_SUPABASE_URL, process.env.VITE_SUPABASE_ANON_KEY);

// Function to generate UUID (fixed to ensure proper UUID format)
function generateUUID() {
  return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
    const r = Math.random() * 16 | 0;
    const v = c === 'x' ? r : (r & 0x3 | 0x8);
    return v.toString(16);
  });
}

// Alternative: Let Supabase generate UUIDs automatically
function generateUUIDAlternative() {
  return null; // Let Supabase generate the UUID
}

// Function to convert hierarchical structure to flat array
function convertToFlatArray(categories, lang, parentPath = '') {
  const flatArray = [];

  function flattenCategories(categories, parentId = null, level = 0, currentPath = '') {
    categories.forEach(category => {
      // Create unique slug by including parent path
      const uniqueSlug = currentPath ? `${currentPath}-${category.slug}-${lang}` : `${category.slug}-${lang}`;
      
      const categoryData = {
        name: category.name,
        slug: uniqueSlug,
        position_order: level,
        is_active: true,
        // We'll handle parent-child relationships after insertion
        original_id: `${category.id}-${lang}`,
        parent_original_id: parentId ? `${parentId}-${lang}` : null
      };
      
      flatArray.push(categoryData);
      
      if (category.subcategories) {
        const newPath = currentPath ? `${currentPath}-${category.slug}` : category.slug;
        flattenCategories(category.subcategories, category.id, level + 1, newPath);
      }
    });
  }

  flattenCategories(categories);
  
  return flatArray;
}

// Delete all existing categories
async function deleteAllCategories() {
  console.log('🗑️ Deleting all existing categories...');
  
  try {
    const { data: existingCategories } = await supabase
      .from('categories')
      .select('id_uuid');
    
    console.log(`📊 Found ${existingCategories.length} categories to delete`);
    
    if (existingCategories.length === 0) {
      console.log('✅ No categories to delete');
      return true;
    }
    
    const { error } = await supabase
      .from('categories')
      .delete()
      .neq('id_uuid', '00000000-0000-0000-0000-000000000000');
    
    if (error) {
      console.error('❌ Error deleting categories:', error);
      return false;
    }
    
    console.log('✅ All categories deleted successfully');
    return true;
    
  } catch (error) {
    console.error('❌ Deletion failed:', error);
    return false;
  }
}

// Complete structure for all 29 categories in all 6 languages
const completeCategoryStructure = {
  fr: [
    {
      id: 'immobilier-maison',
      name: 'Immobilier & Maison',
      slug: 'immobilier-maison',
      subcategories: [
        {
          id: 'ventes-immobilieres',
          name: 'Ventes Immobilières',
          slug: 'ventes-immobilieres',
          subcategories: [
            { id: 'appartements-a-vendre', name: 'Appartements à vendre', slug: 'appartements-a-vendre' },
            { id: 'studios', name: 'Studios', slug: 'studios' },
            { id: 'f2', name: 'F2', slug: 'f2' },
            { id: 'f3', name: 'F3', slug: 'f3' },
            { id: 'f4', name: 'F4', slug: 'f4' },
            { id: 'f5-plus', name: 'F5+', slug: 'f5-plus' },
            { id: 'maisons-a-vendre', name: 'Maisons à vendre', slug: 'maisons-a-vendre' },
            { id: 'villas', name: 'Villas', slug: 'villas' },
            { id: 'duplex', name: 'Duplex', slug: 'duplex' },
            { id: 'terrains-constructibles', name: 'Terrains constructibles', slug: 'terrains-constructibles' }
          ]
        },
        {
          id: 'locations-immobilieres',
          name: 'Locations Immobilières',
          slug: 'locations-immobilieres',
          subcategories: [
            { id: 'appartements-en-location', name: 'Appartements en location', slug: 'appartements-en-location' },
            { id: 'studios-location', name: 'Studios', slug: 'studios' },
            { id: 'maisons-en-location', name: 'Maisons en location', slug: 'maisons-en-location' },
            { id: 'colocation', name: 'Colocation', slug: 'colocation' },
            { id: 'locations-saisonnieres', name: 'Locations saisonnières', slug: 'locations-saisonnieres' }
          ]
        }
      ]
    },
    {
      id: 'telephonie',
      name: 'Téléphonie',
      slug: 'telephonie',
      subcategories: [
        {
          id: 'smartphones',
          name: 'Smartphones',
          slug: 'smartphones',
          subcategories: [
            { id: 'smartphones-android', name: 'Smartphones Android', slug: 'smartphones-android' },
            { id: 'iphone', name: 'iPhone', slug: 'iphone' },
            { id: 'smartphones-5g', name: 'Smartphones 5G', slug: 'smartphones-5g' },
            { id: 'smartphones-gaming', name: 'Smartphones gaming', slug: 'smartphones-gaming' },
            { id: 'smartphones-pliables', name: 'Smartphones pliables', slug: 'smartphones-pliables' },
            { id: 'smartphones-entree-de-gamme', name: 'Smartphones d\'entrée de gamme', slug: 'smartphones-entree-de-gamme' },
            { id: 'smartphones-milieu-de-gamme', name: 'Smartphones milieu de gamme', slug: 'smartphones-milieu-de-gamme' },
            { id: 'smartphones-haut-de-gamme', name: 'Smartphones haut de gamme', slug: 'smartphones-haut-de-gamme' },
            { id: 'smartphones-reconditionnes', name: 'Smartphones reconditionnés', slug: 'smartphones-reconditionnes' },
            { id: 'telephones-robustes-rugged', name: 'Téléphones robustes (rugged)', slug: 'telephones-robustes-rugged' },
            { id: 'mini-smartphones', name: 'Mini smartphones', slug: 'mini-smartphones' },
            { id: 'smartphones-professionnels', name: 'Smartphones professionnels', slug: 'smartphones-professionnels' }
          ]
        },
        {
          id: 'telephones-classiques-fixes',
          name: 'Téléphones Classiques & Fixes',
          slug: 'telephones-classiques-fixes',
          subcategories: [
            { id: 'telephones-portables-classiques', name: 'Téléphones portables classiques', slug: 'telephones-portables-classiques' },
            { id: 'telephones-a-clapet', name: 'Téléphones à clapet', slug: 'telephones-a-clapet' },
            { id: 'telephones-seniors', name: 'Téléphones seniors', slug: 'telephones-seniors' },
            { id: 'telephones-fixes-filaires', name: 'Téléphones fixes filaires', slug: 'telephones-fixes-filaires' },
            { id: 'telephones-fixes-sans-fil', name: 'Téléphones fixes sans fil', slug: 'telephones-fixes-sans-fil' },
            { id: 'combines-dect', name: 'Combinés DECT', slug: 'combines-dect' },
            { id: 'telephones-voip', name: 'Téléphones VoIP', slug: 'telephones-voip' }
          ]
        }
      ]
    },
    {
      id: 'informatique-electronique',
      name: 'Informatique & Électronique',
      slug: 'informatique-electronique',
      subcategories: [
        {
          id: 'ordinateurs-portables',
          name: 'Ordinateurs Portables',
          slug: 'ordinateurs-portables',
          subcategories: [
            { id: 'laptops', name: 'Laptops', slug: 'laptops' },
            { id: 'macbook', name: 'MacBook', slug: 'macbook' },
            { id: 'pc-portables-gaming', name: 'PC Portables Gaming', slug: 'pc-portables-gaming' },
            { id: 'ultrabooks', name: 'Ultrabooks', slug: 'ultrabooks' }
          ]
        },
        {
          id: 'composants-informatique',
          name: 'Composants Informatique',
          slug: 'composants-informatique',
          subcategories: [
            { id: 'processeurs', name: 'Processeurs', slug: 'processeurs' },
            { id: 'cartes-meres', name: 'Cartes Mères', slug: 'cartes-meres' },
            { id: 'memoires-ram', name: 'Mémoires RAM', slug: 'memoires-ram' },
            { id: 'disques-durs', name: 'Disques Durs', slug: 'disques-durs' }
          ]
        }
      ]
    },
    {
      id: 'vehicules-equipements',
      name: 'Véhicules, Camions, Motos & Équipements',
      slug: 'vehicules-equipements',
      subcategories: [
        {
          id: 'voitures-vehicules-legers',
          name: 'Voitures & Véhicules Légers',
          slug: 'voitures-vehicules-legers',
          subcategories: [
            { id: 'voitures-citadines', name: 'Voitures citadines', slug: 'voitures-citadines' },
            { id: 'berlines', name: 'Berlines', slug: 'berlines' },
            { id: 'compactes', name: 'Compactes', slug: 'compactes' },
            { id: 'suv', name: 'SUV', slug: 'suv' },
            { id: 'crossovers', name: 'Crossovers', slug: 'crossovers' },
            { id: '4x4', name: '4x4', slug: '4x4' },
            { id: 'coupes', name: 'Coupés', slug: 'coupes' },
            { id: 'cabriolets', name: 'Cabriolets', slug: 'cabriolets' },
            { id: 'breaks', name: 'Breaks', slug: 'breaks' },
            { id: 'voitures-familiales', name: 'Voitures familiales', slug: 'voitures-familiales' },
            { id: 'vul', name: 'Véhicules utilitaires légers', slug: 'vehicules-utilitaires-legers' },
            { id: 'vans', name: 'Vans', slug: 'vans' },
            { id: 'voitures-hybrides', name: 'Voitures hybrides', slug: 'voitures-hybrides' },
            { id: 'voitures-electriques', name: 'Voitures électriques', slug: 'voitures-electriques' },
            { id: 'voitures-sportives', name: 'Voitures sportives', slug: 'voitures-sportives' },
            { id: 'voitures-anciennes-collection', name: 'Voitures anciennes & de collection', slug: 'voitures-anciennes-collection' },
            { id: 'voitures-reconditionnees', name: 'Voitures reconditionnées', slug: 'voitures-reconditionnees' }
          ]
        },
        {
          id: 'camions-vehicules-professionnels',
          name: 'Camions & Véhicules Professionnels',
          slug: 'camions-vehicules-professionnels',
          subcategories: [
            { id: 'camions-legers', name: 'Camions légers', slug: 'camions-legers' },
            { id: 'poids-lourds', name: 'Poids lourds', slug: 'poids-lourds' },
            { id: 'semi-remorques', name: 'Semi-remorques', slug: 'semi-remorques' },
            { id: 'tracteurs-routiers', name: 'Tracteurs routiers', slug: 'tracteurs-routiers' },
            { id: 'camions-bennes', name: 'Camions-bennes', slug: 'camions-bennes' },
            { id: 'camions-frigorifiques', name: 'Camions frigorifiques', slug: 'camions-frigorifiques' },
            { id: 'camions-plateaux', name: 'Camions plateaux', slug: 'camions-plateaux' },
            { id: 'fourgons-professionnels', name: 'Fourgons professionnels', slug: 'fourgons-professionnels' },
            { id: 'fourgonnettes', name: 'Fourgonnettes', slug: 'fourgonnettes' },
            { id: 'minibus', name: 'Minibus', slug: 'minibus' },
            { id: 'bus', name: 'Bus', slug: 'bus' }
          ]
        }
      ]
    },
    {
      id: 'velo-cyclisme-equipements',
      name: 'Vélo, Cyclisme & Équipements',
      slug: 'velo-cyclisme-equipements',
      subcategories: [
        {
          id: 'types-de-velos',
          name: 'Types de vélos',
          slug: 'types-de-velos',
          subcategories: [
            { id: 'velos-de-route', name: 'Vélos de route', slug: 'velos-de-route' },
            { id: 'velos-de-montagne-vtt', name: 'Vélos de montagne (VTT)', slug: 'velos-de-montagne-vtt' },
            { id: 'velos-hybrides', name: 'Vélos hybrides', slug: 'velos-hybrides' },
            { id: 'velos-gravel', name: 'Vélos gravel', slug: 'velos-gravel' },
            { id: 'velos-de-ville', name: 'Vélos de ville', slug: 'velos-de-ville' },
            { id: 'velos-pliants', name: 'Vélos pliants', slug: 'velos-pliants' },
            { id: 'velos-bmx', name: 'Vélos BMX', slug: 'velos-bmx' },
            { id: 'velos-electriques-vae', name: 'Vélos électriques (VAE)', slug: 'velos-electriques-vae' },
            { id: 'velos-cargo', name: 'Vélos cargo', slug: 'velos-cargo' },
            { id: 'tandems', name: 'Tandems', slug: 'tandems' },
            { id: 'velos-enfants', name: 'Vélos enfants', slug: 'velos-enfants' },
            { id: 'draisiennes', name: 'Draisiennes', slug: 'draisiennes' }
          ]
        },
        {
          id: 'equipements-cyclistes',
          name: 'Équipements cyclistes',
          slug: 'equipements-cyclistes',
          subcategories: [
            { id: 'casques', name: 'Casques', slug: 'casques' },
            { id: 'gants', name: 'Gants', slug: 'gants' },
            { id: 'lunettes-de-cyclisme', name: 'Lunettes de cyclisme', slug: 'lunettes-de-cyclisme' },
            { id: 'maillots', name: 'Maillots', slug: 'maillots' },
            { id: 'cuissards', name: 'Cuissards', slug: 'cuissards' },
            { id: 'chaussures-de-cyclisme', name: 'Chaussures de cyclisme', slug: 'chaussures-de-cyclisme' },
            { id: 'protections-genouilleres-coudieres', name: 'Protections (genouillères, coudières)', slug: 'protections-genouilleres-coudieres' },
            { id: 'gilets-reflechissants', name: 'Gilets réfléchissants', slug: 'gilets-reflechissants' },
            { id: 'sacs-a-dos-velo', name: 'Sacs à dos vélo', slug: 'sacs-a-dos-velo' },
            { id: 'gourdes-porte-gourdes', name: 'Gourdes & porte-gourdes', slug: 'gourdes-porte-gourdes' }
          ]
        },
        {
          id: 'composants-pieces-detachees',
          name: 'Composants & pièces détachées',
          slug: 'composants-pieces-detachees',
          subcategories: [
            { id: 'groupes', name: 'Groupes', slug: 'groupes' },
            { id: 'pedalier', name: 'Pédalier', slug: 'pedalier' },
            { id: 'plateaux', name: 'Plateaux', slug: 'plateaux' },
            { id: 'chaines', name: 'Chaînes', slug: 'chaines' },
            { id: 'cassettes-pignons', name: 'Cassettes & pignons', slug: 'cassettes-pignons' },
            { id: 'derailleurs-avant', name: 'Dérailleurs avant', slug: 'derailleurs-avant' },
            { id: 'derailleurs-arriere', name: 'Dérailleurs arrière', slug: 'derailleurs-arriere' },
            { id: 'freins', name: 'Freins', slug: 'freins' },
            { id: 'etriers-de-frein', name: 'Étriers de frein', slug: 'etriers-de-frein' },
            { id: 'disques-de-frein', name: 'Disques de frein', slug: 'disques-de-frein' },
            { id: 'roues', name: 'Roues', slug: 'roues' },
            { id: 'jantes', name: 'Jantes', slug: 'jantes' },
            { id: 'rayons', name: 'Rayons', slug: 'rayons' },
            { id: 'pneus', name: 'Pneus', slug: 'pneus' },
            { id: 'chambres-a-air', name: 'Chambres à air', slug: 'chambres-a-air' },
            { id: 'guidons', name: 'Guidons', slug: 'guidons' },
            { id: 'potences', name: 'Potences', slug: 'potences' },
            { id: 'selles', name: 'Selles', slug: 'selles' },
            { id: 'tiges-de-selle', name: 'Tiges de selle', slug: 'tiges-de-selle' },
            { id: 'suspensions', name: 'Suspensions', slug: 'suspensions' }
          ]
        }
      ]
    },
    {
      id: 'nautisme',
      name: 'Nautisme',
      slug: 'nautisme',
      subcategories: [
        {
          id: 'bateaux-navires',
          name: 'Bateaux & Navires',
          slug: 'bateaux-navires',
          subcategories: [
            { id: 'voiliers', name: 'Voiliers', slug: 'voiliers' },
            { id: 'bateaux-moteur', name: 'Bateaux moteur', slug: 'bateaux-moteur' },
            { id: 'bateaux-de-plaisance', name: 'Bateaux de plaisance', slug: 'bateaux-de-plaisance' },
            { id: 'yachts', name: 'Yachts', slug: 'yachts' },
            { id: 'vedettes', name: 'Vedettes', slug: 'vedettes' },
            { id: 'bateaux-de-peche', name: 'Bateaux de pêche', slug: 'bateaux-de-peche' },
            { id: 'bateaux-de-transport', name: 'Bateaux de transport', slug: 'bateaux-de-transport' },
            { id: 'catamarans', name: 'Catamarans', slug: 'catamarans' },
            { id: 'trimarans', name: 'Trimarans', slug: 'trimarans' },
            { id: 'bateaux-de-course', name: 'Bateaux de course', slug: 'bateaux-de-course' }
          ]
        },
        {
          id: 'equipements-nautiques',
          name: 'Équipements nautiques',
          slug: 'equipements-nautiques',
          subcategories: [
            { id: 'moteurs-hors-bord', name: 'Moteurs hors-bord', slug: 'moteurs-hors-bord' },
            { id: 'moteurs-intrabord', name: 'Moteurs intrabord', slug: 'moteurs-intrabord' },
            { id: 'voiles', name: 'Voiles', slug: 'voiles' },
            { id: 'accastillage', name: 'Accastillage', slug: 'accastillage' },
            { id: 'electronique-de-navigation', name: 'Électronique de navigation', slug: 'electronique-de-navigation' },
            { id: 'gps-marins', name: 'GPS marins', slug: 'gps-marins' },
            { id: 'radars', name: 'Radars', slug: 'radars' },
            { id: 'sondeurs', name: 'Sondeurs', slug: 'sondeurs' },
            { id: 'vhf-marine', name: 'VHF marine', slug: 'vhf-marine' },
            { id: 'ancres', name: 'Ancres', slug: 'ancres' },
            { id: 'chaines-dancre', name: 'Chaînes d\'ancre', slug: 'chaines-dancre' },
            { id: 'amarres', name: 'Amarres', slug: 'amarres' }
          ]
        }
      ]
    },
    {
      id: 'btp-engins-construction',
      name: 'BTP, Engins de Construction & Industriels',
      slug: 'btp-engins-construction',
      subcategories: [
        {
          id: 'engins-de-construction',
          name: 'Engins de Construction',
          slug: 'engins-de-construction',
          subcategories: [
            { id: 'bulldozers', name: 'Bulldozers', slug: 'bulldozers' },
            { id: 'pelleteuses', name: 'Pelleteuses', slug: 'pelleteuses' },
            { id: 'chargeuses', name: 'Chargeuses', slug: 'chargeuses' },
            { id: 'niveleuses', name: 'Niveleuses', slug: 'niveleuses' },
            { id: 'compacteurs', name: 'Compacteurs', slug: 'compacteurs' },
            { id: 'grues', name: 'Grues', slug: 'grues' },
            { id: 'grues-mobiles', name: 'Grues mobiles', slug: 'grues-mobiles' },
            { id: 'grues-a-tour', name: 'Grues à tour', slug: 'grues-a-tour' },
            { id: 'betonnieres', name: 'Bétonnières', slug: 'betonnieres' },
            { id: 'pompees-a-beton', name: 'Pompes à béton', slug: 'pompees-a-beton' },
            { id: 'chariots-elevateurs', name: 'Chariots élévateurs', slug: 'chariots-elevateurs' }
          ]
        },
        {
          id: 'materiels-btp',
          name: 'Matériels BTP',
          slug: 'materiels-btp',
          subcategories: [
            { id: 'beton', name: 'Béton', slug: 'beton' },
            { id: 'ciment', name: 'Ciment', slug: 'ciment' },
            { id: 'acier-de-construction', name: 'Acier de construction', slug: 'acier-de-construction' },
            { id: 'bois-de-charpente', name: 'Bois de charpente', slug: 'bois-de-charpente' },
            { id: 'carreaux-ceramiques', name: 'Carreaux céramiques', slug: 'carreaux-ceramiques' },
            { id: 'tuiles', name: 'Tuiles', slug: 'tuiles' },
            { id: 'ardoises', name: 'Ardoises', slug: 'ardoises' },
            { id: 'parpaings', name: 'Parpaings', slug: 'parpaings' },
            { id: 'briques', name: 'Briques', slug: 'briques' },
            { id: 'platre', name: 'Plâtre', slug: 'platre' }
          ]
        }
      ]
    },
    {
      id: 'mode-accessoires',
      name: 'Mode & Accessoires',
      slug: 'mode-accessoires',
      subcategories: [
        {
          id: 'vetements-homme',
          name: 'Vêtements Homme',
          slug: 'vetements-homme',
          subcategories: [
            { id: 'costumes', name: 'Costumes', slug: 'costumes' },
            { id: 'chemises', name: 'Chemises', slug: 'chemises' },
            { id: 'pantalons-homme', name: 'Pantalons', slug: 'pantalons-homme' },
            { id: 'jeans-homme', name: 'Jeans', slug: 'jeans-homme' },
            { id: 'pulls-gilets-homme', name: 'Pulls & gilets', slug: 'pulls-gilets-homme' },
            { id: 'vestes-manteaux-homme', name: 'Vestes & manteaux', slug: 'vestes-manteaux-homme' },
            { id: 'polos', name: 'Polos', slug: 'polos' },
            { id: 't-shirts-homme', name: 'T-shirts', slug: 't-shirts-homme' },
            { id: 'shorts-homme', name: 'Shorts', slug: 'shorts-homme' },
            { id: 'sous-vetements-homme', name: 'Sous-vêtements', slug: 'sous-vetements-homme' }
          ]
        },
        {
          id: 'vetements-femme',
          name: 'Vêtements Femme',
          slug: 'vetements-femme',
          subcategories: [
            { id: 'robes', name: 'Robes', slug: 'robes' },
            { id: 'jupes', name: 'Jupes', slug: 'jupes' },
            { id: 'costumes-femme', name: 'Costumes', slug: 'costumes-femme' },
            { id: 'chemisiers', name: 'Chemisiers', slug: 'chemisiers' },
            { id: 'pantalons-femme', name: 'Pantalons', slug: 'pantalons-femme' },
            { id: 'jeans-femme', name: 'Jeans', slug: 'jeans-femme' },
            { id: 'pulls-gilets-femme', name: 'Pulls & gilets', slug: 'pulls-gilets-femme' },
            { id: 'vestes-manteaux-femme', name: 'Vestes & manteaux', slug: 'vestes-manteaux-femme' },
            { id: 't-shirts-femme', name: 'T-shirts', slug: 't-shirts-femme' },
            { id: 'shorts-femme', name: 'Shorts', slug: 'shorts-femme' }
          ]
        }
      ]
    },
    {
      id: 'bebe-puericulture',
      name: 'Bébé & Puériculture',
      slug: 'bebe-puericulture',
      subcategories: [
        {
          id: 'vetements-bebe',
          name: 'Vêtements bébé',
          slug: 'vetements-bebe',
          subcategories: [
            { id: 'corporals-0-3-mois', name: 'Corporals 0-3 mois', slug: 'corporals-0-3-mois' },
            { id: 'corporals-3-6-mois', name: 'Corporals 3-6 mois', slug: 'corporals-3-6-mois' },
            { id: 'corporals-6-12-mois', name: 'Corporals 6-12 mois', slug: 'corporals-6-12-mois' },
            { id: 'corporals-12-24-mois', name: 'Corporals 12-24 mois', slug: 'corporals-12-24-mois' },
            { id: 'corporals-2-3-ans', name: 'Corporals 2-3 ans', slug: 'corporals-2-3-ans' },
            { id: 'corporals-3-4-ans', name: 'Corporals 3-4 ans', slug: 'corporals-3-4-ans' }
          ]
        },
        {
          id: 'puericulture',
          name: 'Puériculture',
          slug: 'puericulture',
          subcategories: [
            { id: 'poussettes', name: 'Poussettes', slug: 'poussettes' },
            { id: 'sieges-auto', name: 'Sièges auto', slug: 'sieges-auto' },
            { id: 'lits-bebe', name: 'Lits bébé', slug: 'lits-bebe' },
            { id: 'chaises-hautes', name: 'Chaises hautes', slug: 'chaises-hautes' },
            { id: 'table-a-langer', name: 'Table à langer', slug: 'table-a-langer' },
            { id: 'portes-bebe', name: 'Portes-bébé', slug: 'portes-bebe' },
            { id: 'moniteurs-bebe', name: 'Moniteurs bébé', slug: 'moniteurs-bebe' },
            { id: 'thermometres-bebe', name: 'Thermomètres bébé', slug: 'thermometres-bebe' },
            { id: 'biberons', name: 'Biberons', slug: 'biberons' },
            { id: 'sterilisateurs', name: 'Stérilisateurs', slug: 'sterilisateurs' }
          ]
        }
      ]
    },
    {
      id: 'mode-et-accessoires',
      name: 'Mode et Accessoires',
      slug: 'mode-et-accessoires',
      subcategories: [
        {
          id: 'sacs-main',
          name: 'Sacs à main',
          slug: 'sacs-main',
          subcategories: [
            { id: 'sacs-a-bandouliere', name: 'Sacs à bandoulière', slug: 'sacs-a-bandouliere' },
            { id: 'sacs-a-dos-mode', name: 'Sacs à dos mode', slug: 'sacs-a-dos-mode' },
            { id: 'sacs-de-voyage', name: 'Sacs de voyage', slug: 'sacs-de-voyage' },
            { id: 'porte-documents', name: 'Porte-documents', slug: 'porte-documents' },
            { id: 'sacs-de-sport', name: 'Sacs de sport', slug: 'sacs-de-sport' },
            { id: 'sacs-de-plage', name: 'Sacs de plage', slug: 'sacs-de-plage' },
            { id: 'pochettes', name: 'Pochettes', slug: 'pochettes' },
            { id: 'cartables', name: 'Cartables', slug: 'cartables' },
            { id: 'sacs-a-main-luxe', name: 'Sacs à main luxe', slug: 'sacs-a-main-luxe' }
          ]
        },
        {
          id: 'accessoires-mode',
          name: 'Accessoires de mode',
          slug: 'accessoires-mode',
          subcategories: [
            { id: 'ceintures', name: 'Ceintures', slug: 'ceintures' },
            { id: 'portefeuilles', name: 'Portefeuilles', slug: 'portefeuilles' },
            { id: 'lunettes-de-soleil', name: 'Lunettes de soleil', slug: 'lunettes-de-soleil' },
            { id: 'montres', name: 'Montres', slug: 'montres' },
            { id: 'bijoux', name: 'Bijoux', slug: 'bijoux' },
            { id: 'cravates', name: 'Cravates', slug: 'cravates' },
            { id: 'echarpes', name: 'Écharpes', slug: 'echarpes' },
            { id: 'chapeaux', name: 'Chapeaux', slug: 'chapeaux' },
            { id: 'casquettes', name: 'Casquettes', slug: 'casquettes' },
            { id: 'gants-mode', name: 'Gants', slug: 'gants-mode' }
          ]
        }
      ]
    },
    {
      id: 'sacs-et-bagages',
      name: 'Sacs et Bagages',
      slug: 'sacs-et-bagages',
      subcategories: [
        {
          id: 'bagages-voyage',
          name: 'Bagages de voyage',
          slug: 'bagages-voyage',
          subcategories: [
            { id: 'valises-souples', name: 'Valises souples', slug: 'valises-souples' },
            { id: 'valises-rigides', name: 'Valises rigides', slug: 'valises-rigides' },
            { id: 'cabines-bagages', name: 'Cabines bagages', slug: 'cabines-bagages' },
            { id: 'sacs-de-voyage-roulants', name: 'Sacs de voyage roulants', slug: 'sacs-de-voyage-roulants' },
            { id: 'sacs-de-sport-voyage', name: 'Sacs de sport voyage', slug: 'sacs-de-sport-voyage' },
            { id: 'trousses-de-toilette', name: 'Trousses de toilette', slug: 'trousses-de-toilette' },
            { id: 'housses-bagages', name: 'Housses bagages', slug: 'housses-bagages' },
            { id: 'etiquettes-bagages', name: 'Étiquettes bagages', slug: 'etiquettes-bagages' },
            { id: 'cadenas-bagages', name: 'Cadenas bagages', slug: 'cadenas-bagages' }
          ]
        },
        {
          id: 'sacs-professionnels',
          name: 'Sacs professionnels',
          slug: 'sacs-professionnels',
          subcategories: [
            { id: 'sacs-ordinateur', name: 'Sacs ordinateur', slug: 'sacs-ordinateur' },
            { id: 'sacs-tablette', name: 'Sacs tablette', slug: 'sacs-tablette' },
            { id: 'trousses-outils', name: 'Trousses outils', slug: 'trousses-outils' },
            { id: 'sacs-camera', name: 'Sacs caméra', slug: 'sacs-camera' },
            { id: 'sacs-ecole', name: 'Sacs école', slug: 'sacs-ecole' },
            { id: 'sacs-musique', name: 'Sacs musique', slug: 'sacs-musique' },
            { id: 'sacs-art', name: 'Sacs art', slug: 'sacs-art' },
            { id: 'sacs-medical', name: 'Sacs médical', slug: 'sacs-medical' },
            { id: 'sacs-securite', name: 'Sacs sécurité', slug: 'sacs-securite' }
          ]
        }
      ]
    },
    {
      id: 'electromenager',
      name: 'Électroménager',
      slug: 'electromenager',
      subcategories: [
        {
          id: 'gros-electromenager',
          name: 'Gros électroménager',
          slug: 'gros-electromenager',
          subcategories: [
            { id: 'refrigerateurs', name: 'Réfrigérateurs', slug: 'refrigerateurs' },
            { id: 'congelateurs', name: 'Congélateurs', slug: 'congelateurs' },
            { id: 'lave-linge', name: 'Lave-linge', slug: 'lave-linge' },
            { id: 'seche-linge', name: 'Sèche-linge', slug: 'seche-linge' },
            { id: 'lave-vaisselle', name: 'Lave-vaisselle', slug: 'lave-vaisselle' },
            { id: 'cuisinieres', name: 'Cuisinières', slug: 'cuisinieres' },
            { id: 'fours-encastrement', name: 'Fours encastrables', slug: 'fours-encastrement' },
            { id: 'plaques-cuisson', name: 'Plaques de cuisson', slug: 'plaques-cuisson' },
            { id: 'hotte-cuisine', name: 'Hottes de cuisine', slug: 'hotte-cuisine' },
            { id: 'micro-ondes-encastrement', name: 'Micro-ondes encastrables', slug: 'micro-ondes-encastrement' }
          ]
        },
        {
          id: 'petit-electromenager',
          name: 'Petit électroménager',
          slug: 'petit-electromenager',
          subcategories: [
            { id: 'aspirateurs', name: 'Aspirateurs', slug: 'aspirateurs' },
            { id: 'robots-culinaires', name: 'Robots culinaires', slug: 'robots-culinaires' },
            { id: 'mixeurs-plongeants', name: 'Mixeurs plongeants', slug: 'mixeurs-plongeants' },
            { id: 'cafeieres', name: 'Caféières', slug: 'cafeieres' },
            { id: 'grille-pain', name: 'Grilles-pain', slug: 'grille-pain' },
            { id: 'fer-a-repasser', name: 'Fers à repasser', slug: 'fer-a-repasser' },
            { id: 'centrales-vapeur', name: 'Centrales vapeur', slug: 'centrales-vapeur' },
            { id: 'machines-a-coudre', name: 'Machines à coudre', slug: 'machines-a-coudre' },
            { id: 'climatiseurs', name: 'Climatiseurs', slug: 'climatiseurs' },
            { id: 'ventilateurs', name: 'Ventilateurs', slug: 'ventilateurs' }
          ]
        }
      ]
    },
    {
      id: 'mobilier-et-decoration',
      name: 'Mobilier et Décoration',
      slug: 'mobilier-et-decoration',
      subcategories: [
        {
          id: 'mobilier-interieur',
          name: 'Mobilier intérieur',
          slug: 'mobilier-interieur',
          subcategories: [
            { id: 'canapes', name: 'Canapés', slug: 'canapes' },
            { id: 'fauteuils', name: 'Fauteuils', slug: 'fauteuils' },
            { id: 'tables-basses', name: 'Tables basses', slug: 'tables-basses' },
            { id: 'tables-manger', name: 'Tables à manger', slug: 'tables-manger' },
            { id: 'chaises', name: 'Chaises', slug: 'chaises' },
            { id: 'lits', name: 'Lits', slug: 'lits' },
            { id: 'sommiers', name: 'Sommiers', slug: 'sommiers' },
            { id: 'matelas', name: 'Matelas', slug: 'matelas' },
            { id: 'armoires', name: 'Armoires', slug: 'armoires' },
            { id: 'commodes', name: 'Commodes', slug: 'commodes' }
          ]
        },
        {
          id: 'decoration-interieure',
          name: 'Décoration intérieure',
          slug: 'decoration-interieure',
          subcategories: [
            { id: 'rideaux', name: 'Rideaux', slug: 'rideaux' },
            { id: 'stores', name: 'Stores', slug: 'stores' },
            { id: 'tapis', name: 'Tapis', slug: 'tapis' },
            { id: 'luminaires', name: 'Luminaires', slug: 'luminaires' },
            { id: 'miroirs', name: 'Miroirs', slug: 'miroirs' },
            { id: 'tableaux', name: 'Tableaux', slug: 'tableaux' },
            { id: 'decoration-murale', name: 'Décoration murale', slug: 'decoration-murale' },
            { id: 'vases', name: 'Vases', slug: 'vases' },
            { id: 'bougies', name: 'Bougies', slug: 'bougies' },
            { id: 'horloges', name: 'Horloges', slug: 'horloges' }
          ]
        }
      ]
    },
    {
      id: 'image-son-equipement-musique',
      name: 'Image, Son et Équipement Musique',
      slug: 'image-son-equipement-musique',
      subcategories: [
        {
          id: 'televisions',
          name: 'Télévisions',
          slug: 'televisions',
          subcategories: [
            { id: 'tv-led', name: 'TV LED', slug: 'tv-led' },
            { id: 'tv-oled', name: 'TV OLED', slug: 'tv-oled' },
            { id: 'tv-qled', name: 'TV QLED', slug: 'tv-qled' },
            { id: 'tv-4k', name: 'TV 4K', slug: 'tv-4k' },
            { id: 'tv-8k', name: 'TV 8K', slug: 'tv-8k' },
            { id: 'tv-smart', name: 'TV Smart', slug: 'tv-smart' },
            { id: 'tv-curves', name: 'TV incurvées', slug: 'tv-curves' },
            { id: 'projecteurs', name: 'Projecteurs', slug: 'projecteurs' },
            { id: 'ecrans-de-projection', name: 'Écrans de projection', slug: 'ecrans-de-projection' },
            { id: 'supports-tv', name: 'Supports TV', slug: 'supports-tv' }
          ]
        },
        {
          id: 'audio-hifi',
          name: 'Audio Hi-Fi',
          slug: 'audio-hifi',
          subcategories: [
            { id: 'chaines-hifi', name: 'Chaînes Hi-Fi', slug: 'chaines-hifi' },
            { id: 'amplificateurs', name: 'Amplificateurs', slug: 'amplificateurs' },
            { id: 'enceintes', name: 'Enceintes', slug: 'enceintes' },
            { id: 'enceintes-bluetooth', name: 'Enceintes Bluetooth', slug: 'enceintes-bluetooth' },
            { id: 'casques-audio', name: 'Casques audio', slug: 'casques-audio' },
            { id: 'ecouteurs', name: 'Écouteurs', slug: 'ecouteurs' },
            { id: 'platines-vinyle', name: 'Platines vinyle', slug: 'platines-vinyle' },
            { id: 'tuners-radio', name: 'Tuners radio', slug: 'tuners-radio' },
            { id: 'lecteurs-cd', name: 'Lecteurs CD', slug: 'lecteurs-cd' },
            { id: 'lecteurs-dvd-blu-ray', name: 'Lecteurs DVD & Blu-ray', slug: 'lecteurs-dvd-blu-ray' }
          ]
        }
      ]
    },
    {
      id: 'jeux-video-consoles',
      name: 'Jeux Vidéo & Consoles',
      slug: 'jeux-video-consoles',
      subcategories: [
        {
          id: 'consoles-de-jeux',
          name: 'Consoles de jeux',
          slug: 'consoles-de-jeux',
          subcategories: [
            { id: 'playstation-5', name: 'PlayStation 5', slug: 'playstation-5' },
            { id: 'playstation-4', name: 'PlayStation 4', slug: 'playstation-4' },
            { id: 'xbox-series-x-s', name: 'Xbox Series X/S', slug: 'xbox-series-x-s' },
            { id: 'xbox-one', name: 'Xbox One', slug: 'xbox-one' },
            { id: 'nintendo-switch', name: 'Nintendo Switch', slug: 'nintendo-switch' },
            { id: 'nintendo-switch-lite', name: 'Nintendo Switch Lite', slug: 'nintendo-switch-lite' },
            { id: 'pc-gaming', name: 'PC Gaming', slug: 'pc-gaming' },
            { id: 'accessoires-consoles', name: 'Accessoires consoles', slug: 'accessoires-consoles' },
            { id: 'manettes', name: 'Manettes', slug: 'manettes' },
            { id: 'casques-gaming', name: 'Casques gaming', slug: 'casques-gaming' }
          ]
        },
        {
          id: 'jeux-video',
          name: 'Jeux vidéo',
          slug: 'jeux-video',
          subcategories: [
            { id: 'jeux-ps5', name: 'Jeux PS5', slug: 'jeux-ps5' },
            { id: 'jeux-ps4', name: 'Jeux PS4', slug: 'jeux-ps4' },
            { id: 'jeux-xbox-series', name: 'Jeux Xbox Series', slug: 'jeux-xbox-series' },
            { id: 'jeux-xbox-one', name: 'Jeux Xbox One', slug: 'jeux-xbox-one' },
            { id: 'jeux-switch', name: 'Jeux Switch', slug: 'jeux-switch' },
            { id: 'jeux-pc', name: 'Jeux PC', slug: 'jeux-pc' },
            { id: 'jeux-occasions', name: 'Jeux d\'occasion', slug: 'jeux-occasions' },
            { id: 'abonnements-jeux', name: 'Abonnements jeux', slug: 'abonnements-jeux' },
            { id: 'cartes-prepayees', name: 'Cartes prépayées', slug: 'cartes-prepayees' }
          ]
        }
      ]
    },
    {
      id: 'quincaillerie-generale',
      name: 'Quincaillerie Générale',
      slug: 'quincaillerie-generale',
      subcategories: [
        {
          id: 'outils-maine',
          name: 'Outils à main',
          slug: 'outils-maine',
          subcategories: [
            { id: 'marteaux', name: 'Marteaux', slug: 'marteaux' },
            { id: 'tournevis', name: 'Tournevis', slug: 'tournevis' },
            { id: 'cles', name: 'Clés', slug: 'cles' },
            { id: 'pinces', name: 'Pinces', slug: 'pinces' },
            { id: 'scies-maine', name: 'Scies à main', slug: 'scies-maine' },
            { id: 'ciseaux-tole', name: 'Ciseaux à tôle', slug: 'ciseaux-tole' },
            { id: 'niveaux', name: 'Niveaux', slug: 'niveaux' },
            { id: 'metres-rubans', name: 'Mètres rubans', slug: 'metres-rubans' },
            { id: 'couteaux-outils', name: 'Couteaux & outils', slug: 'couteaux-outils' },
            { id: 'faucilles', name: 'Faucilles', slug: 'faucilles' }
          ]
        },
        {
          id: 'quincaillerie-batiment',
          name: 'Quincaillerie du bâtiment',
          slug: 'quincaillerie-batiment',
          subcategories: [
            { id: 'vis', name: 'Vis', slug: 'vis' },
            { id: 'boulons', name: 'Boulons', slug: 'boulons' },
            { id: 'ecrous', name: 'Écrous', slug: 'ecrous' },
            { id: 'rondelles', name: 'Rondelles', slug: 'rondelles' },
            { id: 'chevilles', name: 'Chevilles', slug: 'chevilles' },
            { id: 'clous', name: 'Clous', slug: 'clous' },
            { id: 'pointes', name: 'Pointes', slug: 'pointes' },
            { id: 'agrafees', name: 'Agrafées', slug: 'agrafees' },
            { id: 'charnieres', name: 'Charnières', slug: 'charnieres' },
            { id: 'serrures', name: 'Serrures', slug: 'serrures' }
          ]
        }
      ]
    },
    {
      id: 'agriculture-agroalimentaire',
      name: 'Agriculture & Agroalimentaire',
      slug: 'agriculture-agroalimentaire',
      subcategories: [
        {
          id: 'materiel-agricole',
          name: 'Matériel agricole',
          slug: 'materiel-agricole',
          subcategories: [
            { id: 'tracteurs', name: 'Tracteurs', slug: 'tracteurs' },
            { id: 'moissonneuses-batteuses', name: 'Moissonneuses-batteuses', slug: 'moissonneuses-batteuses' },
            { id: 'ensileuses', name: 'Ensileuses', slug: 'ensileuses' },
            { id: 'pulverisateurs', name: 'Pulvérisateurs', slug: 'pulverisateurs' },
            { id: 'charrues', name: 'Charrues', slug: 'charrues' },
            { id: 'hersees', name: 'Hersees', slug: 'hersees' },
            { id: 'semoirs', name: 'Semoirs', slug: 'semoirs' },
            { id: 'faucheuses', name: 'Faucheuses', slug: 'faucheuses' },
            { id: 'tondeuses-foin', name: 'Tondeuses à foin', slug: 'tondeuses-foin' },
            { id: 'broyeurs-vegetaux', name: 'Broyeurs végétaux', slug: 'broyeurs-vegetaux' }
          ]
        },
        {
          id: 'produits-agroalimentaires',
          name: 'Produits agroalimentaires',
          slug: 'produits-agroalimentaires',
          subcategories: [
            { id: 'cereales', name: 'Céréales', slug: 'cereales' },
            { id: 'legumes-frais', name: 'Légumes frais', slug: 'legumes-frais' },
            { id: 'fruits-frais', name: 'Fruits frais', slug: 'fruits-frais' },
            { id: 'viande-bovine', name: 'Viande bovine', slug: 'viande-bovine' },
            { id: 'viande-ovine', name: 'Viande ovine', slug: 'viande-ovine' },
            { id: 'volaille', name: 'Volaille', slug: 'volaille' },
            { id: 'produits-laitiers', name: 'Produits laitiers', slug: 'produits-laitiers' },
            { id: 'huiles-olive', name: 'Huiles d\'olive', slug: 'huiles-olive' },
            { id: 'miel', name: 'Miel', slug: 'miel' },
            { id: 'epices-condiments', name: 'Épices & condiments', slug: 'epices-condiments' }
          ]
        }
      ]
    },
    {
      id: 'parapharmacie-produits-chimiques',
      name: 'Parapharmacie & Produits Chimiques',
      slug: 'parapharmacie-produits-chimiques',
      subcategories: [
        {
          id: 'produits-parapharmaceutiques',
          name: 'Produits parapharmaceutiques',
          slug: 'produits-parapharmaceutiques',
          subcategories: [
            { id: 'complements-alimentaires', name: 'Compléments alimentaires', slug: 'complements-alimentaires' },
            { id: 'vitamines', name: 'Vitamines', slug: 'vitamines' },
            { id: 'mineraux', name: 'Minéraux', slug: 'mineraux' },
            { id: 'probiotiques', name: 'Probiotiques', slug: 'probiotiques' },
            { id: 'produits-minceur', name: 'Produits minceur', slug: 'produits-minceur' },
            { id: 'produits-solaires', name: 'Produits solaires', slug: 'produits-solaires' },
            { id: 'produits-insectifuges', name: 'Produits insectifuges', slug: 'produits-insectifuges' },
            { id: 'pansements', name: 'Pansements', slug: 'pansements' },
            { id: 'desinfectants', name: 'Désinfectants', slug: 'desinfectants' },
            { id: 'test-diagnostiques', name: 'Tests diagnostiques', slug: 'test-diagnostiques' }
          ]
        },
        {
          id: 'produits-chimiques-industriels',
          name: 'Produits chimiques industriels',
          slug: 'produits-chimiques-industriels',
          subcategories: [
            { id: 'acides-industriels', name: 'Acides industriels', slug: 'acides-industriels' },
            { id: 'solvants', name: 'Solvants', slug: 'solvants' },
            { id: 'peintures-industrielles', name: 'Peintures industrielles', slug: 'peintures-industrielles' },
            { id: 'resines', name: 'Résines', slug: 'resines' },
            { id: 'colles-industrielles', name: 'Colles industrielles', slug: 'colles-industrielles' },
            { id: 'engrais-chimiques', name: 'Engrais chimiques', slug: 'engrais-chimiques' },
            { id: 'pesticides', name: 'Pesticides', slug: 'pesticides' },
            { id: 'herbicides', name: 'Herbicides', slug: 'herbicides' },
            { id: 'nettoyants-industriels', name: 'Nettoyants industriels', slug: 'nettoyants-industriels' },
            { id: 'lubrifiants-industriels', name: 'Lubrifiants industriels', slug: 'lubrifiants-industriels' }
          ]
        }
      ]
    },
    {
      id: 'sante-beaute',
      name: 'Santé & Beauté',
      slug: 'sante-beaute',
      subcategories: [
        {
          id: 'soins-corps',
          name: 'Soins du corps',
          slug: 'soins-corps',
          subcategories: [
            { id: 'cremes-corps', name: 'Crèmes corps', slug: 'cremes-corps' },
            { id: 'laits-corps', name: 'Laits corps', slug: 'laits-corps' },
            { id: 'gels-douche', name: 'Gels douche', slug: 'gels-douche' },
            { id: 'savons', name: 'Savons', slug: 'savons' },
            { id: 'desodorants', name: 'Déodorants', slug: 'desodorants' },
            { id: 'produits-rasage', name: 'Produits de rasage', slug: 'produits-rasage' },
            { id: 'produits-epilation', name: 'Produits d\'épilation', slug: 'produits-epilation' },
            { id: 'huiles-massage', name: 'Huiles de massage', slug: 'huiles-massage' },
            { id: 'produits-solaires-corps', name: 'Produits solaires corps', slug: 'produits-solaires-corps' },
            { id: 'produits-minceur-corps', name: 'Produits minceur corps', slug: 'produits-minceur-corps' }
          ]
        },
        {
          id: 'soins-visage',
          name: 'Soins du visage',
          slug: 'soins-visage',
          subcategories: [
            { id: 'nettoyants-visage', name: 'Nettoyants visage', slug: 'nettoyants-visage' },
            { id: 'cremes-jour', name: 'Crèmes de jour', slug: 'cremes-jour' },
            { id: 'cremes-nuit', name: 'Crèmes de nuit', slug: 'cremes-nuit' },
            { id: 'serums', name: 'Sérums', slug: 'serums' },
            { id: 'masques-visage', name: 'Masques visage', slug: 'masques-visage' },
            { id: 'gommages-visage', name: 'Gommages visage', slug: 'gommages-visage' },
            { id: 'contour-yeux', name: 'Contour des yeux', slug: 'contour-yeux' },
            { id: 'produits-anti-age', name: 'Produits anti-âge', slug: 'produits-anti-age' },
            { id: 'produits-hydratants', name: 'Produits hydratants', slug: 'produits-hydratants' },
            { id: 'produits-matifiants', name: 'Produits matifiants', slug: 'produits-matifiants' }
          ]
        }
      ]
    },
    {
      id: 'gastronomie-alimentation',
      name: 'Gastronomie & Alimentation',
      slug: 'gastronomie-alimentation',
      subcategories: [
        {
          id: 'produits-alimentaires',
          name: 'Produits alimentaires',
          slug: 'produits-alimentaires',
          subcategories: [
            { id: 'fruits-legumes', name: 'Fruits & légumes', slug: 'fruits-legumes' },
            { id: 'viandes', name: 'Viandes', slug: 'viandes' },
            { id: 'poissons', name: 'Poissons', slug: 'poissons' },
            { id: 'produits-laitiers-alimentation', name: 'Produits laitiers', slug: 'produits-laitiers-alimentation' },
            { id: 'pains-viennoiseries', name: 'Pains & viennoiseries', slug: 'pains-viennoiseries' },
            { id: 'pates-riz-cereales', name: 'Pâtes, riz & céréales', slug: 'pates-riz-cereales' },
            { id: 'epices-condiments-alimentation', name: 'Épices & condiments', slug: 'epices-condiments-alimentation' },
            { id: 'huiles-vinaigres', name: 'Huiles & vinaigres', slug: 'huiles-vinaigres' },
            { id: 'confitures-miels', name: 'Confitures & miels', slug: 'confitures-miels' },
            { id: 'chocolats-bonbons', name: 'Chocolats & bonbons', slug: 'chocolats-bonbons' }
          ]
        },
        {
          id: 'produits-gastronomiques',
          name: 'Produits gastronomiques',
          slug: 'produits-gastronomiques',
          subcategories: [
            { id: 'specialites-regionales', name: 'Spécialités régionales', slug: 'specialites-regionales' },
            { id: 'produits-artisanaux', name: 'Produits artisanaux', slug: 'produits-artisanaux' },
            { id: 'produits-bio-gastronomie', name: 'Produits bio', slug: 'produits-bio-gastronomie' },
            { id: 'produits-du-terroir', name: 'Produits du terroir', slug: 'produits-du-terroir' },
            { id: 'specialites-de-noel', name: 'Spécialités de Noël', slug: 'specialites-de-noel' },
            { id: 'specialites-ramadan', name: 'Spécialités Ramadan', slug: 'specialites-ramadan' },
            { id: 'plats-prepared-gastronomie', name: 'Plats préparés', slug: 'plats-prepared-gastronomie' },
            { id: 'sauces-gastronomiques', name: 'Sauces gastronomiques', slug: 'sauces-gastronomiques' },
            { id: 'desserts-gastronomiques', name: 'Desserts gastronomiques', slug: 'desserts-gastronomiques' }
          ]
        }
      ]
    },
    {
      id: 'artisanat-traditionnel-algerien',
      name: 'Artisanat Traditionnel Algérien',
      slug: 'artisanat-traditionnel-algerien',
      subcategories: [
        {
          id: 'poteries-ceramiques',
          name: 'Poteries & Céramiques',
          slug: 'poteries-ceramiques',
          subcategories: [
            { id: 'jarres-algeriennes', name: 'Jarres algériennes', slug: 'jarres-algeriennes' },
            { id: 'plats-en-terre', name: 'Plats en terre', slug: 'plats-en-terre' },
            { id: 'coupes-decoration', name: 'Coupes décoratives', slug: 'coupes-decoration' },
            { id: 'vases-en-terre-cuite', name: 'Vases en terre cuite', slug: 'vases-en-terre-cuite' },
            { id: 'poteries-berberes', name: 'Poteries berbères', slug: 'poteries-berberes' },
            { id: 'ceramiques-kabyles', name: 'Céramiques kabyles', slug: 'ceramiques-kabyles' },
            { id: 'poteries-sahariennes', name: 'Poteries sahariennes', slug: 'poteries-sahariennes' },
            { id: 'plats-a-couscous', name: 'Plats à couscous', slug: 'plats-a-couscous' },
            { id: 'tagines-algeriens', name: 'Tagines algériens', slug: 'tagines-algeriens' },
            { id: 'poteries-tunisiennes', name: 'Poteries tunisiennes', slug: 'poteries-tunisiennes' }
          ]
        },
        {
          id: 'textiles-artisanaux',
          name: 'Textiles artisanaux',
          slug: 'textiles-artisanaux',
          subcategories: [
            { id: 'tapis-algeriens', name: 'Tapis algériens', slug: 'tapis-algeriens' },
            { id: 'tapis-berberes', name: 'Tapis berbères', slug: 'tapis-berberes' },
            { id: 'tapis-kabyles', name: 'Tapis kabyles', slug: 'tapis-kabyles' },
            { id: 'couvertures-algeriennes', name: 'Couvertures algériennes', slug: 'couvertures-algeriennes' },
            { id: 'broderies-algeriennes', name: 'Broderies algériennes', slug: 'broderies-algeriennes' },
            { id: 'tissages-artisanaux', name: 'Tissages artisanaux', slug: 'tissages-artisanaux' },
            { id: 'vetements-traditionnels', name: 'Vêtements traditionnels', slug: 'vetements-traditionnels' },
            { id: 'accessoires-textiles', name: 'Accessoires textiles', slug: 'accessoires-textiles' },
            { id: 'laine-algerienne', name: 'Laine algérienne', slug: 'laine-algerienne' },
            { id: 'coton-algerien', name: 'Coton algérien', slug: 'coton-algerien' }
          ]
        }
      ]
    },
    {
      id: 'voyages-tourisme',
      name: 'Voyages & Tourisme',
      slug: 'voyages-tourisme',
      subcategories: [
        {
          id: 'voyages-organises',
          name: 'Voyages organisés',
          slug: 'voyages-organises',
          subcategories: [
            { id: 'circuits-touristiques', name: 'Circuits touristiques', slug: 'circuits-touristiques' },
            { id: 'voyages-culturels', name: 'Voyages culturels', slug: 'voyages-culturels' },
            { id: 'voyages-religieux', name: 'Voyages religieux', slug: 'voyages-religieux' },
            { id: 'voyages-omra', name: 'Voyages Omra', slug: 'voyages-omra' },
            { id: 'voyages-hadj', name: 'Voyages Hadj', slug: 'voyages-hadj' },
            { id: 'sejours-balneaires', name: 'Séjours balnéaires', slug: 'sejours-balneaires' },
            { id: 'sejours-montagne', name: 'Séjours montagne', slug: 'sejours-montagne' },
            { id: 'sejours-desert', name: 'Séjours désert', slug: 'sejours-desert' },
            { id: 'circuits-sahariens', name: 'Circuits sahariens', slug: 'circuits-sahariens' },
            { id: 'voyages-aventure', name: 'Voyages aventure', slug: 'voyages-aventure' }
          ]
        },
        {
          id: 'services-touristiques',
          name: 'Services touristiques',
          slug: 'services-touristiques',
          subcategories: [
            { id: 'reservations-hotels', name: 'Réservations hôtels', slug: 'reservations-hotels' },
            { id: 'locations-voitures-tourisme', name: 'Locations voitures', slug: 'locations-voitures-tourisme' },
            { id: 'transferts-aeroport', name: 'Transferts aéroport', slug: 'transferts-aeroport' },
            { id: 'guides-touristiques', name: 'Guides touristiques', slug: 'guides-touristiques' },
            { id: 'excursions', name: 'Excursions', slug: 'excursions' },
            { id: 'activites-loisirs', name: 'Activités loisirs', slug: 'activites-loisirs' },
            { id: 'restaurants-tourisme', name: 'Restaurants', slug: 'restaurants-tourisme' },
            { id: 'billets-avion', name: 'Billets d\'avion', slug: 'billets-avion' },
            { id: 'assurances-voyage', name: 'Assurances voyage', slug: 'assurances-voyage' }
          ]
        }
      ]
    },
    {
      id: 'evenements-billetterie',
      name: 'Événements & Billetterie',
      slug: 'evenements-billetterie',
      subcategories: [
        {
          id: 'evenements-culturels',
          name: 'Événements culturels',
          slug: 'evenements-culturels',
          subcategories: [
            { id: 'concerts', name: 'Concerts', slug: 'concerts' },
            { id: 'festivals', name: 'Festivals', slug: 'festivals' },
            { id: 'spectacles', name: 'Spectacles', slug: 'spectacles' },
            { id: 'theatre', name: 'Théâtre', slug: 'theatre' },
            { id: 'comedies-musicales', name: 'Comédies musicales', slug: 'comedies-musicales' },
            { id: 'expositions', name: 'Expositions', slug: 'expositions' },
            { id: 'musees', name: 'Musées', slug: 'musees' },
            { id: 'conferences', name: 'Conférences', slug: 'conferences' },
            { id: 'ateliers-culturels', name: 'Ateliers culturels', slug: 'ateliers-culturels' },
            { id: 'evenements-literaires', name: 'Événements littéraires', slug: 'evenements-literaires' }
          ]
        },
        {
          id: 'evenements-sportifs',
          name: 'Événements sportifs',
          slug: 'evenements-sportifs',
          subcategories: [
            { id: 'matchs-football', name: 'Matchs de football', slug: 'matchs-football' },
            { id: 'matchs-basketball', name: 'Matchs de basketball', slug: 'matchs-basketball' },
            { id: 'matchs-handball', name: 'Matchs de handball', slug: 'matchs-handball' },
            { id: 'matchs-volleyball', name: 'Matchs de volleyball', slug: 'matchs-volleyball' },
            { id: 'competitions-athletisme', name: 'Compétitions d\'athlétisme', slug: 'competitions-athletisme' },
            { id: 'tournois-sportifs', name: 'Tournois sportifs', slug: 'tournois-sportifs' },
            { id: 'marathons', name: 'Marathons', slug: 'marathons' },
            { id: 'courses-cyclistes', name: 'Courses cyclistes', slug: 'courses-cyclistes' },
            { id: 'competitions-equestres', name: 'Compétitions équestres', slug: 'competitions-equestres' }
          ]
        }
      ]
    },
    {
      id: 'emploi-carriere',
      name: 'Emploi & Carrière',
      slug: 'emploi-carriere',
      subcategories: [
        {
          id: 'offres-emploi',
          name: 'Offres d\'emploi',
          slug: 'offres-emploi',
          subcategories: [
            { id: 'emploi-informatique', name: 'Emploi informatique', slug: 'emploi-informatique' },
            { id: 'emploi-commerce', name: 'Emploi commerce', slug: 'emploi-commerce' },
            { id: 'emploi-vente', name: 'Emploi vente', slug: 'emploi-vente' },
            { id: 'emploi-marketing', name: 'Emploi marketing', slug: 'emploi-marketing' },
            { id: 'emploi-finance', name: 'Emploi finance', slug: 'emploi-finance' },
            { id: 'emploi-ressources-humaines', name: 'Emploi RH', slug: 'emploi-ressources-humaines' },
            { id: 'emploi-administration', name: 'Emploi administration', slug: 'emploi-administration' },
            { id: 'emploi-technique', name: 'Emploi technique', slug: 'emploi-technique' },
            { id: 'emploi-ingenierie', name: 'Emploi ingénierie', slug: 'emploi-ingenierie' },
            { id: 'emploi-sante', name: 'Emploi santé', slug: 'emploi-sante' }
          ]
        },
        {
          id: 'services-carriere',
          name: 'Services carrière',
          slug: 'services-carriere',
          subcategories: [
            { id: 'cv-redaction', name: 'Rédaction CV', slug: 'cv-redaction' },
            { id: 'lettre-motivation', name: 'Lettres de motivation', slug: 'lettre-motivation' },
            { id: 'coaching-carriere', name: 'Coaching carrière', slug: 'coaching-carriere' },
            { id: 'preparation-entretiens', name: 'Préparation entretiens', slug: 'preparation-entretiens' },
            { id: 'evaluation-competences', name: 'Évaluation compétences', slug: 'evaluation-competences' },
            { id: 'formations-professionnelles', name: 'Formations professionnelles', slug: 'formations-professionnelles' },
            { id: 'services-recrutement', name: 'Services recrutement', slug: 'services-recrutement' },
            { id: 'conseils-carriere', name: 'Conseils carrière', slug: 'conseils-carriere' }
          ]
        }
      ]
    },
    {
      id: 'education-loisirs',
      name: 'Éducation & Loisirs',
      slug: 'education-loisirs',
      subcategories: [
        {
          id: 'education-scolaire',
          name: 'Éducation scolaire',
          slug: 'education-scolaire',
          subcategories: [
            { id: 'cours-particuliers', name: 'Cours particuliers', slug: 'cours-particuliers' },
            { id: 'soutien-scolaire', name: 'Soutien scolaire', slug: 'soutien-scolaire' },
            { id: 'cours-mathematiques', name: 'Cours de mathématiques', slug: 'cours-mathematiques' },
            { id: 'cours-physique', name: 'Cours de physique', slug: 'cours-physique' },
            { id: 'cours-chimie', name: 'Cours de chimie', slug: 'cours-chimie' },
            { id: 'cours-informatique', name: 'Cours d\'informatique', slug: 'cours-informatique' },
            { id: 'cours-langues', name: 'Cours de langues', slug: 'cours-langues' },
            { id: 'cours-musique', name: 'Cours de musique', slug: 'cours-musique' },
            { id: 'cours-art', name: 'Cours d\'art', slug: 'cours-art' },
            { id: 'preparation-examens', name: 'Préparation examens', slug: 'preparation-examens' }
          ]
        },
        {
          id: 'activites-loisirs',
          name: 'Activités de loisirs',
          slug: 'activites-loisirs',
          subcategories: [
            { id: 'loisirs-creatifs', name: 'Loisirs créatifs', slug: 'loisirs-creatifs' },
            { id: 'bricolage-loisirs', name: 'Bricolage', slug: 'bricolage-loisirs' },
            { id: 'jardinage-loisirs', name: 'Jardinage', slug: 'jardinage-loisirs' },
            { id: 'peche-loisirs', name: 'Pêche', slug: 'peche-loisirs' },
            { id: 'campisme', name: 'Campisme', slug: 'campisme' },
            { id: 'randonnee-loisirs', name: 'Randonnée', slug: 'randonnee-loisirs' },
            { id: 'sports-loisirs', name: 'Sports', slug: 'sports-loisirs' },
            { id: 'jeux-societe', name: 'Jeux de société', slug: 'jeux-societe' },
            { id: 'puzzles', name: 'Puzzles', slug: 'puzzles' },
            { id: 'maquettes', name: 'Maquettes', slug: 'maquettes' }
          ]
        }
      ]
    },
    {
      id: 'animaux-accessoires',
      name: 'Animaux & Accessoires',
      slug: 'animaux-accessoires',
      subcategories: [
        {
          id: 'animaux-domestiques',
          name: 'Animaux domestiques',
          slug: 'animaux-domestiques',
          subcategories: [
            { id: 'chiots', name: 'Chiots', slug: 'chiots' },
            { id: 'chats-chaton', name: 'Chats & chatons', slug: 'chats-chaton' },
            { id: 'oiseaux-domestiques', name: 'Oiseaux domestiques', slug: 'oiseaux-domestiques' },
            { id: 'poissons-aquarium', name: 'Poissons d\'aquarium', slug: 'poissons-aquarium' },
            { id: 'rongeurs', name: 'Rongeurs', slug: 'rongeurs' },
            { id: 'lapins', name: 'Lapins', slug: 'lapins' },
            { id: 'cochons-dinde', name: 'Cochons d\'Inde', slug: 'cochons-dinde' },
            { id: 'hamsters', name: 'Hamsters', slug: 'hamsters' },
            { id: 'perruches', name: 'Perruches', slug: 'perruches' },
            { id: 'canaris', name: 'Canaris', slug: 'canaris' }
          ]
        },
        {
          id: 'accessoires-animaux',
          name: 'Accessoires animaux',
          slug: 'accessoires-animaux',
          subcategories: [
            { id: 'aliments-animaux', name: 'Aliments animaux', slug: 'aliments-animaux' },
            { id: 'jouets-animaux', name: 'Jouets animaux', slug: 'jouets-animaux' },
            { id: 'litiere-chats', name: 'Litière chats', slug: 'litiere-chats' },
            { id: 'cages-oiseaux', name: 'Cages oiseaux', slug: 'cages-oiseaux' },
            { id: 'aquariums', name: 'Aquariums', slug: 'aquariums' },
            { id: 'accessoires-aquarium', name: 'Accessoires aquarium', slug: 'accessoires-aquarium' },
            { id: 'colliers-laisses', name: 'Colliers & laisses', slug: 'colliers-laisses' },
            { id: 'vetements-animaux', name: 'Vêtements animaux', slug: 'vetements-animaux' },
            { id: 'panier-chiens', name: 'Panier chiens', slug: 'panier-chiens' },
            { id: 'transport-animaux', name: 'Transport animaux', slug: 'transport-animaux' }
          ]
        }
      ]
    },
    {
      id: 'finance',
      name: 'Finance',
      slug: 'finance',
      subcategories: [
        {
          id: 'services-bancaires',
          name: 'Services bancaires',
          slug: 'services-bancaires',
          subcategories: [
            { id: 'comptes-courants', name: 'Comptes courants', slug: 'comptes-courants' },
            { id: 'comptes-epargne', name: 'Comptes épargne', slug: 'comptes-epargne' },
            { id: 'cartes-bancaires', name: 'Cartes bancaires', slug: 'cartes-bancaires' },
            { id: 'credits-personnels', name: 'Crédits personnels', slug: 'credits-personnels' },
            { id: 'credits-immobiliers', name: 'Crédits immobiliers', slug: 'credits-immobiliers' },
            { id: 'assurances-vie', name: 'Assurances vie', slug: 'assurances-vie' },
            { id: 'assurances-automobile', name: 'Assurances automobile', slug: 'assurances-automobile' },
            { id: 'assurances-habitation', name: 'Assurances habitation', slug: 'assurances-habitation' },
            { id: ' placements-financiers', name: 'Placements financiers', slug: 'placements-financiers' },
            { id: 'services-investissement', name: 'Services investissement', slug: 'services-investissement' }
          ]
        },
        {
          id: 'services-financiers',
          name: 'Services financiers',
          slug: 'services-financiers',
          subcategories: [
            { id: 'transferts-argent', name: 'Transferts d\'argent', slug: 'transferts-argent' },
            { id: 'change-devises', name: 'Change de devises', slug: 'change-devises' },
            { id: 'services-western-union', name: 'Services Western Union', slug: 'services-western-union' },
            { id: 'services-moneygram', name: 'Services MoneyGram', slug: 'services-moneygram' },
            { id: 'paiements-internationaux', name: 'Paiements internationaux', slug: 'paiements-internationaux' },
            { id: 'services-paiement-mobile', name: 'Services paiement mobile', slug: 'services-paiement-mobile' },
            { id: 'conseils-financiers', name: 'Conseils financiers', slug: 'conseils-financiers' },
            { id: 'gestion-patrimoine', name: 'Gestion de patrimoine', slug: 'gestion-patrimoine' }
          ]
        }
      ]
    },
    {
      id: 'services-support',
      name: 'Services & Support',
      slug: 'services-support',
      subcategories: [
        {
          id: 'services-techniques',
          name: 'Services techniques',
          slug: 'services-techniques',
          subcategories: [
            { id: 'depannage-informatique', name: 'Dépannage informatique', slug: 'depannage-informatique' },
            { id: 'reparation-telephones', name: 'Réparation téléphones', slug: 'reparation-telephones' },
            { id: 'reparation-electromenager', name: 'Réparation électroménager', slug: 'reparation-electromenager' },
            { id: 'installation-logiciels', name: 'Installation logiciels', slug: 'installation-logiciels' },
            { id: 'configuration-reseaux', name: 'Configuration réseaux', slug: 'configuration-reseaux' },
            { id: 'maintenance-preventive', name: 'Maintenance préventive', slug: 'maintenance-preventive' },
            { id: 'services-depannage-urgent', name: 'Services dépannage urgent', slug: 'services-depannage-urgent' },
            { id: 'conseils-techniques', name: 'Conseils techniques', slug: 'conseils-techniques' },
            { id: 'formation-technologie', name: 'Formation technologie', slug: 'formation-technologie' }
          ]
        },
        {
          id: 'services-administratifs',
          name: 'Services administratifs',
          slug: 'services-administratifs',
          subcategories: [
            { id: 'services-traduction', name: 'Services traduction', slug: 'services-traduction' },
            { id: 'services-secretariat', name: 'Services secrétariat', slug: 'services-secretariat' },
            { id: 'services-comptabilite', name: 'Services comptabilité', slug: 'services-comptabilite' },
            { id: 'conseils-juridiques', name: 'Conseils juridiques', slug: 'conseils-juridiques' },
            { id: 'services-creation-entreprise', name: 'Création d\'entreprise', slug: 'services-creation-entreprise' },
            { id: 'services-demarches-administratives', name: 'Démarches administratives', slug: 'services-demarches-administratives' }
          ]
        },
        {
          id: 'services-menagers',
          name: 'Services ménagers',
          slug: 'services-menagers',
          subcategories: [
            { id: 'menage-repassage', name: 'Ménage & repassage', slug: 'menage-repassage' },
            { id: 'services-cuisine', name: 'Services cuisine', slug: 'services-cuisine' },
            { id: 'services-jardinage', name: 'Services jardinage', slug: 'services-jardinage' },
            { id: 'services-bricolage', name: 'Services bricolage', slug: 'services-bricolage' },
            { id: 'services-gardiennage', name: 'Services gardiennage', slug: 'services-gardiennage' },
            { id: 'services-demenagement', name: 'Services déménagement', slug: 'services-demenagement' }
          ]
        },
        {
          id: 'services-livraison',
          name: 'Services livraison',
          slug: 'services-livraison',
          subcategories: [
            { id: 'livraison-domicile', name: 'Livraison à domicile', slug: 'livraison-domicile' },
            { id: 'services-colis', name: 'Services colis', slug: 'services-colis' },
            { id: 'services-courses', name: 'Services courses', slug: 'services-courses' },
            { id: 'transport-marchandises', name: 'Transport marchandises', slug: 'transport-marchandises' },
            { id: 'services-deplacement-professionnels', name: 'Déplacements professionnels', slug: 'services-deplacement-professionnels' },
            { id: 'services-navette', name: 'Services navette', slug: 'services-navette' }
          ]
        },
        {
          id: 'services-evenementiels',
          name: 'Services événementiels',
          slug: 'services-evenementiels',
          subcategories: [
            { id: 'organisation-evenements', name: 'Organisation événements', slug: 'organisation-evenements' },
            { id: 'services-catering', name: 'Services catering', slug: 'services-catering' },
            { id: 'location-materiel-evenements', name: 'Location matériel', slug: 'location-materiel-evenements' },
            { id: 'services-animation', name: 'Services animation', slug: 'services-animation' },
            { id: 'services-photographie', name: 'Services photographie', slug: 'services-photographie' },
            { id: 'services-video', name: 'Services vidéo', slug: 'services-video' }
          ]
        }
      ]
    },
    {
      id: 'echanges-partage',
      name: 'Échanges & Partage',
      slug: 'echanges-partage',
      subcategories: [
        {
          id: 'echanges-biens',
          name: 'Échanges de biens',
          slug: 'echanges-biens',
          subcategories: [
            { id: 'troc-objets', name: 'Troc d\'objets', slug: 'troc-objets' },
            { id: 'echange-livres', name: 'Échange de livres', slug: 'echange-livres' },
            { id: 'echange-vetements', name: 'Échange de vêtements', slug: 'echange-vetements' },
            { id: 'echange-electronique', name: 'Échange électronique', slug: 'echange-electronique' },
            { id: 'echange-mobilier', name: 'Échange mobilier', slug: 'echange-mobilier' },
            { id: 'echange-vehicules', name: 'Échange véhicules', slug: 'echange-vehicules' }
          ]
        },
        {
          id: 'partage-services',
          name: 'Partage de services',
          slug: 'partage-services',
          subcategories: [
            { id: 'covoiturage', name: 'Covoiturage', slug: 'covoiturage' },
            { id: 'co-location', name: 'Co-location', slug: 'co-location' },
            { id: 'partage-bureaux', name: 'Partage de bureaux', slug: 'partage-bureaux' },
            { id: 'services-collaboratifs', name: 'Services collaboratifs', slug: 'services-collaboratifs' },
            { id: 'partage-competences', name: 'Partage de compétences', slug: 'partage-competences' },
            { id: 'partage-ressources', name: 'Partage de ressources', slug: 'partage-ressources' }
          ]
        },
        {
          id: 'donations',
          name: 'Dons',
          slug: 'donations',
          subcategories: [
            { id: 'don-objets', name: 'Don d\'objets', slug: 'don-objets' },
            { id: 'don-vetements', name: 'Don de vêtements', slug: 'don-vetements' },
            { id: 'don-meubles', name: 'Don de meubles', slug: 'don-meubles' },
            { id: 'don-electronique', name: 'Don électronique', slug: 'don-electronique' },
            { id: 'don-livres', name: 'Don de livres', slug: 'don-livres' },
            { id: 'don-alimentaire', name: 'Don alimentaire', slug: 'don-alimentaire' }
          ]
        }
      ]
    }
  ]
};

// Main migration function
async function migrateCompleteStructure() {
  console.log('🔄 Starting complete category migration...');
  
  try {
    // Delete existing categories first
    const deletionSuccess = await deleteAllCategories();
    if (!deletionSuccess) {
      throw new Error('Failed to delete existing categories');
    }
    
    console.log('\n📋 Starting migration of complete category structure...');
    
    // Languages to migrate
    const languages = ['fr', 'en', 'ar', 'de', 'es', 'it'];
    let totalInserted = 0;
    
    for (const lang of languages) {
      console.log(`\n🌍 Migrating categories for language: ${lang}`);
      
      if (!completeCategoryStructure[lang]) {
        console.log(`⚠️ No structure defined for ${lang}, skipping...`);
        continue;
      }
      
      const categoriesToInsert = convertToFlatArray(completeCategoryStructure[lang], lang);
      console.log(`📊 Found ${categoriesToInsert.length} categories for ${lang}`);
      
      if (categoriesToInsert.length === 0) {
        console.log(`⚠️ No categories to insert for ${lang}`);
        continue;
      }
      
      // Sort by position_order to ensure parent categories are created first
      categoriesToInsert.sort((a, b) => a.position_order - b.position_order);
      
      // Create a mapping to track inserted categories
      const insertedCategories = {};
      
      // Insert categories one by one to handle parent-child relationships
      for (const category of categoriesToInsert) {
        const categoryData = {
          name: category.name,
          slug: category.slug,
          position_order: category.position_order,
          is_active: category.is_active
        };
        
        // If this category has a parent, set the parent_id
        if (category.parent_original_id && insertedCategories[category.parent_original_id]) {
          categoryData.parent_id = insertedCategories[category.parent_original_id].id;
        }
        
        const { data, error } = await supabase
          .from('categories')
          .insert(categoryData)
          .select();
        
        if (error) {
          console.error(`❌ Error inserting category ${category.name} for ${lang}:`, error);
          throw error;
        }
        
        if (data && data.length > 0) {
          insertedCategories[category.original_id] = data[0];
        }
      }
      
      totalInserted += categoriesToInsert.length;
      console.log(`✅ Successfully migrated ${categoriesToInsert.length} categories for ${lang}`);
    }
    
    console.log(`\n✅ Migration completed successfully!`);
    console.log(`📈 Total categories inserted: ${totalInserted}`);
    
    // Show final summary
    const { data: finalCategories } = await supabase
      .from('categories')
      .select('*');
    
    console.log(`\n📊 Final summary:`);
    console.log(`Total categories in database: ${finalCategories.length}`);
    
    // Group by language based on slug suffix
    languages.forEach(lang => {
      const langCategories = finalCategories.filter(cat => cat.slug.endsWith(`-${lang}`));
      console.log(`  ${lang}: ${langCategories.length} categories`);
    });
    
  } catch (error) {
    console.error('❌ Migration failed:', error);
    process.exit(1);
  }
}

// Run the migration
migrateCompleteStructure().catch(console.error);