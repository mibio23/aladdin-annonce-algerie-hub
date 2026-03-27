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
          { id: 'motos-cross', name: 'Motos cross', slug: 'motos-cross', parent_id: 'motos-scooters', level: 2 },
          { id: 'scooters', name: 'Scooters', slug: 'scooters', parent_id: 'motos-scooters', level: 2 },
          { id: 'cyclomoteurs', name: 'Cyclomoteurs', slug: 'cyclomoteurs', parent_id: 'motos-scooters', level: 2 }
        ]
      },
      {
        id: 'velos',
        name: 'Vélos',
        slug: 'velos',
        parent_id: 'vehicules',
        level: 1,
        subcategories: [
          { id: 'velos-route', name: 'Vélos route', slug: 'velos-route', parent_id: 'velos', level: 2 },
          { id: 'velos-ville', name: 'Vélos ville', slug: 'velos-ville', parent_id: 'velos', level: 2 },
          { id: 'velos-montagne', name: 'Vélos montagne', slug: 'velos-montagne', parent_id: 'velos', level: 2 },
          { id: 'velos-enfants', name: 'Vélos enfants', slug: 'velos-enfants', parent_id: 'velos', level: 2 }
        ]
      },
      {
        id: 'caravanes-camping-cars',
        name: 'Caravanes & Camping-cars',
        slug: 'caravanes-camping-cars',
        parent_id: 'vehicules',
        level: 1,
        subcategories: [
          { id: 'caravanes', name: 'Caravanes', slug: 'caravanes', parent_id: 'caravanes-camping-cars', level: 2 },
          { id: 'camping-cars', name: 'Camping-cars', slug: 'camping-cars', parent_id: 'caravanes-camping-cars', level: 2 }
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
      },
      {
        id: 'equipement-vehicules',
        name: 'Équipement véhicules',
        slug: 'equipement-vehicules',
        parent_id: 'vehicules',
        level: 1,
        subcategories: [
          { id: 'pieces-detachees', name: 'Pièces détachées', slug: 'pieces-detachees', parent_id: 'equipement-vehicules', level: 2 },
          { id: 'accessoires-auto', name: 'Accessoires auto', slug: 'accessoires-auto', parent_id: 'equipement-vehicules', level: 2 },
          { id: 'pneus-jantes', name: 'Pneus & Jantes', slug: 'pneus-jantes', parent_id: 'equipement-vehicules', level: 2 }
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
          { id: 'appartements-a-vendre', name: 'Appartements à vendre', slug: 'appartements-a-vendre', parent_id: 'ventes-immobilieres', level: 2 },
          { id: 'maisons-a-vendre', name: 'Maisons à vendre', slug: 'maisons-a-vendre', parent_id: 'ventes-immobilieres', level: 2 },
          { id: 'terrains-a-vendre', name: 'Terrains à vendre', slug: 'terrains-a-vendre', parent_id: 'ventes-immobilieres', level: 2 },
          { id: 'bureaux-a-vendre', name: 'Bureaux à vendre', slug: 'bureaux-a-vendre', parent_id: 'ventes-immobilieres', level: 2 },
          { id: 'commerces-a-vendre', name: 'Commerces à vendre', slug: 'commerces-a-vendre', parent_id: 'ventes-immobilieres', level: 2 }
        ]
      },
      {
        id: 'locations-immobilieres',
        name: 'Locations Immobilières',
        slug: 'locations-immobilieres',
        parent_id: 'immobilier-maison',
        level: 1,
        subcategories: [
          { id: 'appartements-a-louer', name: 'Appartements à louer', slug: 'appartements-a-louer', parent_id: 'locations-immobilieres', level: 2 },
          { id: 'maisons-a-louer', name: 'Maisons à louer', slug: 'maisons-a-louer', parent_id: 'locations-immobilieres', level: 2 },
          { id: 'studios-a-louer', name: 'Studios à louer', slug: 'studios-a-louer', parent_id: 'locations-immobilieres', level: 2 },
          { id: 'chambres-a-louer', name: 'Chambres à louer', slug: 'chambres-a-louer', parent_id: 'locations-immobilieres', level: 2 },
          { id: 'parkings-a-louer', name: 'Parkings à louer', slug: 'parkings-a-louer', parent_id: 'locations-immobilieres', level: 2 }
        ]
      },
      {
        id: 'colocation',
        name: 'Colocation',
        slug: 'colocation',
        parent_id: 'immobilier-maison',
        level: 1,
        subcategories: [
          { id: 'chambres-colocation', name: 'Chambres en colocation', slug: 'chambres-colocation', parent_id: 'colocation', level: 2 },
          { id: 'appartements-colocation', name: 'Appartements en colocation', slug: 'appartements-colocation', parent_id: 'colocation', level: 2 }
        ]
      },
      {
        id: 'meubles-decoration',
        name: 'Meubles & Décoration',
        slug: 'meubles-decoration',
        parent_id: 'immobilier-maison',
        level: 1,
        subcategories: [
          { id: 'canapes', name: 'Canapés', slug: 'canapes', parent_id: 'meubles-decoration', level: 2 },
          { id: 'tables-chaises', name: 'Tables & Chaises', slug: 'tables-chaises', parent_id: 'meubles-decoration', level: 2 },
          { id: 'literie', name: 'Literie', slug: 'literie', parent_id: 'meubles-decoration', level: 2 },
          { id: 'rangement', name: 'Rangement', slug: 'rangement', parent_id: 'meubles-decoration', level: 2 },
          { id: 'decoration-interieure', name: 'Décoration intérieure', slug: 'decoration-interieure', parent_id: 'meubles-decoration', level: 2 }
        ]
      },
      {
        id: 'electromenager',
        name: 'Électroménager',
        slug: 'electromenager',
        parent_id: 'immobilier-maison',
        level: 1,
        subcategories: [
          { id: 'refrigerateurs', name: 'Réfrigérateurs', slug: 'refrigerateurs', parent_id: 'electromenager', level: 2 },
          { id: 'lave-linge', name: 'Lave-linge', slug: 'lave-linge', parent_id: 'electromenager', level: 2 },
          { id: 'lave-vaisselle', name: 'Lave-vaisselle', slug: 'lave-vaisselle', parent_id: 'electromenager', level: 2 },
          { id: 'cuisinieres', name: 'Cuisinières', slug: 'cuisinieres', parent_id: 'electromenager', level: 2 },
          { id: 'micro-ondes', name: 'Micro-ondes', slug: 'micro-ondes', parent_id: 'electromenager', level: 2 }
        ]
      },
      {
        id: 'bricolage-jardin',
        name: 'Bricolage & Jardin',
        slug: 'bricolage-jardin',
        parent_id: 'immobilier-maison',
        level: 1,
        subcategories: [
          { id: 'outils-bricolage', name: 'Outils de bricolage', slug: 'outils-bricolage', parent_id: 'bricolage-jardin', level: 2 },
          { id: 'materiaux-construction', name: 'Matériaux de construction', slug: 'materiaux-construction', parent_id: 'bricolage-jardin', level: 2 },
          { id: 'jardinage', name: 'Jardinage', slug: 'jardinage', parent_id: 'bricolage-jardin', level: 2 },
          { id: 'mobilier-jardin', name: 'Mobilier de jardin', slug: 'mobilier-jardin', parent_id: 'bricolage-jardin', level: 2 },
          { id: 'barbecues', name: 'Barbecues', slug: 'barbecues', parent_id: 'bricolage-jardin', level: 2 }
        ]
      }
    ]
  },
  // 3. Emploi & Services
  {
    id: 'emploi-services',
    name: 'Emploi & Services',
    slug: 'emploi-services',
    parent_id: null,
    level: 0,
    subcategories: [
      {
        id: 'offres-emploi',
        name: 'Offres d\'emploi',
        slug: 'offres-emploi',
        parent_id: 'emploi-services',
        level: 1,
        subcategories: [
          { id: 'informatique-telecom', name: 'Informatique & Télécom', slug: 'informatique-telecom', parent_id: 'offres-emploi', level: 2 },
          { id: 'vente-commerce', name: 'Vente & Commerce', slug: 'vente-commerce', parent_id: 'offres-emploi', level: 2 },
          { id: 'tourisme-hotellerie', name: 'Tourisme & Hôtellerie', slug: 'tourisme-hotellerie', parent_id: 'offres-emploi', level: 2 },
          { id: 'sante-medical', name: 'Santé & Médical', slug: 'sante-medical', parent_id: 'offres-emploi', level: 2 },
          { id: 'education-formation', name: 'Éducation & Formation', slug: 'education-formation', parent_id: 'offres-emploi', level: 2 },
          { id: 'transport-logistique', name: 'Transport & Logistique', slug: 'transport-logistique', parent_id: 'offres-emploi', level: 2 },
          { id: 'batiment-travaux', name: 'Bâtiment & Travaux', slug: 'batiment-travaux', parent_id: 'offres-emploi', level: 2 }
        ]
      },
      {
        id: 'demandes-emploi',
        name: 'Demandes d\'emploi',
        slug: 'demandes-emploi',
        parent_id: 'emploi-services',
        level: 1,
        subcategories: [
          { id: 'cv-candidats', name: 'CV & Candidats', slug: 'cv-candidats', parent_id: 'demandes-emploi', level: 2 },
          { id: 'stages-alternance', name: 'Stages & Alternance', slug: 'stages-alternance', parent_id: 'demandes-emploi', level: 2 }
        ]
      },
      {
        id: 'services-divers',
        name: 'Services Divers',
        slug: 'services-divers',
        parent_id: 'emploi-services',
        level: 1,
        subcategories: [
          { id: 'services-menagers', name: 'Services ménagers', slug: 'services-menagers', parent_id: 'services-divers', level: 2 },
          { id: 'jardinage-paysage', name: 'Jardinage & Paysage', slug: 'jardinage-paysage', parent_id: 'services-divers', level: 2 },
          { id: 'demenagement-transport', name: 'Déménagement & Transport', slug: 'demenagement-transport', parent_id: 'services-divers', level: 2 },
          { id: 'reparation-maintenance', name: 'Réparation & Maintenance', slug: 'reparation-maintenance', parent_id: 'services-divers', level: 2 },
          { id: 'cours-particuliers', name: 'Cours particuliers', slug: 'cours-particuliers', parent_id: 'services-divers', level: 2 },
          { id: 'garde-enfants', name: 'Garde d\'enfants', slug: 'garde-enfants', parent_id: 'services-divers', level: 2 },
          { id: 'soins-animaux', name: 'Soins aux animaux', slug: 'soins-animaux', parent_id: 'services-divers', level: 2 }
        ]
      },
      {
        id: 'evenements',
        name: 'Événements',
        slug: 'evenements',
        parent_id: 'emploi-services',
        level: 1,
        subcategories: [
          { id: 'organisation-mariages', name: 'Organisation de mariages', slug: 'organisation-mariages', parent_id: 'evenements', level: 2 },
          { id: 'animation-soirees', name: 'Animation de soirées', slug: 'animation-soirees', parent_id: 'evenements', level: 2 },
          { id: 'location-materiel-fete', name: 'Location matériel fête', slug: 'location-materiel-fete', parent_id: 'evenements', level: 2 },
          { id: 'traiteur-evenements', name: 'Traiteur événements', slug: 'traiteur-evenements', parent_id: 'evenements', level: 2 }
        ]
      }
    ]
  },
  // 4. Informatique & Multimedia
  {
    id: 'informatique-multimedia',
    name: 'Informatique & Multimédia',
    slug: 'informatique-multimedia',
    parent_id: null,
    level: 0,
    subcategories: [
      {
        id: 'ordinateurs',
        name: 'Ordinateurs',
        slug: 'ordinateurs',
        parent_id: 'informatique-multimedia',
        level: 1,
        subcategories: [
          { id: 'ordinateurs-portables', name: 'Ordinateurs portables', slug: 'ordinateurs-portables', parent_id: 'ordinateurs', level: 2 },
          { id: 'ordinateurs-bureau', name: 'Ordinateurs de bureau', slug: 'ordinateurs-bureau', parent_id: 'ordinateurs', level: 2 },
          { id: 'tablettes', name: 'Tablettes', slug: 'tablettes', parent_id: 'ordinateurs', level: 2 },
          { id: 'accessoires-informatique', name: 'Accessoires informatique', slug: 'accessoires-informatique', parent_id: 'ordinateurs', level: 2 }
        ]
      },
      {
        id: 'telephones',
        name: 'Téléphones',
        slug: 'telephones',
        parent_id: 'informatique-multimedia',
        level: 1,
        subcategories: [
          { id: 'smartphones', name: 'Smartphones', slug: 'smartphones', parent_id: 'telephones', level: 2 },
          { id: 'telephones-portables', name: 'Téléphones portables', slug: 'telephones-portables', parent_id: 'telephones', level: 2 },
          { id: 'accessoires-telephone', name: 'Accessoires téléphone', slug: 'accessoires-telephone', parent_id: 'telephones', level: 2 }
        ]
      },
      {
        id: 'photo-video',
        name: 'Photo & Vidéo',
        slug: 'photo-video',
        parent_id: 'informatique-multimedia',
        level: 1,
        subcategories: [
          { id: 'appareils-photo', name: 'Appareils photo', slug: 'appareils-photo', parent_id: 'photo-video', level: 2 },
          { id: 'cameras-video', name: 'Caméras vidéo', slug: 'cameras-video', parent_id: 'photo-video', level: 2 },
          { id: 'objectifs', name: 'Objectifs', slug: 'objectifs', parent_id: 'photo-video', level: 2 },
          { id: 'accessoires-photo', name: 'Accessoires photo', slug: 'accessoires-photo', parent_id: 'photo-video', level: 2 }
        ]
      },
      {
        id: 'tv-son',
        name: 'TV & Son',
        slug: 'tv-son',
        parent_id: 'informatique-multimedia',
        level: 1,
        subcategories: [
          { id: 'televiseurs', name: 'Téléviseurs', slug: 'televiseurs', parent_id: 'tv-son', level: 2 },
          { id: 'home-cinema', name: 'Home cinéma', slug: 'home-cinema', parent_id: 'tv-son', level: 2 },
          { id: 'chaines-hi-fi', name: 'Chaines Hi-Fi', slug: 'chaines-hi-fi', parent_id: 'tv-son', level: 2 },
          { id: 'casques-audio', name: 'Casques audio', slug: 'casques-audio', parent_id: 'tv-son', level: 2 },
          { id: 'enceintes', name: 'Enceintes', slug: 'enceintes', parent_id: 'tv-son', level: 2 }
        ]
      },
      {
        id: 'consoles-jeux',
        name: 'Consoles & Jeux',
        slug: 'consoles-jeux',
        parent_id: 'informatique-multimedia',
        level: 1,
        subcategories: [
          { id: 'consoles', name: 'Consoles', slug: 'consoles', parent_id: 'consoles-jeux', level: 2 },
          { id: 'jeux-video', name: 'Jeux vidéo', slug: 'jeux-video', parent_id: 'consoles-jeux', level: 2 },
          { id: 'accessoires-gaming', name: 'Accessoires gaming', slug: 'accessoires-gaming', parent_id: 'consoles-jeux', level: 2 }
        ]
      }
    ]
  },
  // 5. Loisirs & Divertissement
  {
    id: 'loisirs-divertissement',
    name: 'Loisirs & Divertissement',
    slug: 'loisirs-divertissement',
    parent_id: null,
    level: 0,
    subcategories: [
      {
        id: 'sport-fitness',
        name: 'Sport & Fitness',
        slug: 'sport-fitness',
        parent_id: 'loisirs-divertissement',
        level: 1,
        subcategories: [
          { id: 'materiel-sport', name: 'Matériel de sport', slug: 'materiel-sport', parent_id: 'sport-fitness', level: 2 },
          { id: 'vetements-sport', name: 'Vêtements de sport', slug: 'vetements-sport', parent_id: 'sport-fitness', level: 2 },
          { id: 'musculation-fitness', name: 'Musculation & Fitness', slug: 'musculation-fitness', parent_id: 'sport-fitness', level: 2 },
          { id: 'velos-cyclisme', name: 'Vélos & Cyclisme', slug: 'velos-cyclisme', parent_id: 'sport-fitness', level: 2 },
          { id: 'randonnee-escalade', name: 'Randonnée & Escalade', slug: 'randonnee-escalade', parent_id: 'sport-fitness', level: 2 }
        ]
      },
      {
        id: 'musique-instruments',
        name: 'Musique & Instruments',
        slug: 'musique-instruments',
        parent_id: 'loisirs-divertissement',
        level: 1,
        subcategories: [
          { id: 'instruments-musique', name: 'Instruments de musique', slug: 'instruments-musique', parent_id: 'musique-instruments', level: 2 },
          { id: 'materiel-audio-pro', name: 'Matériel audio pro', slug: 'materiel-audio-pro', parent_id: 'musique-instruments', level: 2 },
          { id: 'partitions-musique', name: 'Partitions & Musique', slug: 'partitions-musique', parent_id: 'musique-instruments', level: 2 }
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
          { id: 'bandes-dessinees', name: 'Bandes dessinées', slug: 'bandes-dessinees', parent_id: 'livres-bd', level: 2 },
          { id: 'mangas', name: 'Mangas', slug: 'mangas', parent_id: 'livres-bd', level: 2 },
          { id: 'livres-scolaires', name: 'Livres scolaires', slug: 'livres-scolaires', parent_id: 'livres-bd', level: 2 },
          { id: 'revues-magazines', name: 'Revues & Magazines', slug: 'revues-magazines', parent_id: 'livres-bd', level: 2 }
        ]
      },
      {
        id: 'collections',
        name: 'Collections',
        slug: 'collections',
        parent_id: 'loisirs-divertissement',
        level: 1,
        subcategories: [
          { id: 'pieces-monnaie', name: 'Pièces de monnaie', slug: 'pieces-monnaie', parent_id: 'collections', level: 2 },
          { id: 'timbres', name: 'Timbres', slug: 'timbres', parent_id: 'collections', level: 2 },
          { id: 'cartes-postales', name: 'Cartes postales', slug: 'cartes-postales', parent_id: 'collections', level: 2 },
          { id: 'figurines', name: 'Figurines', slug: 'figurines', parent_id: 'collections', level: 2 },
          { id: 'objets-anciens', name: 'Objets anciens', slug: 'objets-anciens', parent_id: 'collections', level: 2 }
        ]
      },
      {
        id: 'voyages-tourisme',
        name: 'Voyages & Tourisme',
        slug: 'voyages-tourisme',
        parent_id: 'loisirs-divertissement',
        level: 1,
        subcategories: [
          { id: 'voyages-organises', name: 'Voyages organisés', slug: 'voyages-organises', parent_id: 'voyages-tourisme', level: 2 },
          { id: 'hebergements', name: 'Hébergements', slug: 'hebergements', parent_id: 'voyages-tourisme', level: 2 },
          { id: 'activites-loisirs', name: 'Activités & Loisirs', slug: 'activites-loisirs', parent_id: 'voyages-tourisme', level: 2 }
        ]
      }
    ]
  },
  // 6. Mode & Beauté
  {
    id: 'mode-beaute',
    name: 'Mode & Beauté',
    slug: 'mode-beaute',
    parent_id: null,
    level: 0,
    subcategories: [
      {
        id: 'vetements',
        name: 'Vêtements',
        slug: 'vetements',
        parent_id: 'mode-beaute',
        level: 1,
        subcategories: [
          { id: 'vetements-homme', name: 'Vêtements homme', slug: 'vetements-homme', parent_id: 'vetements', level: 2 },
          { id: 'vetements-femme', name: 'Vêtements femme', slug: 'vetements-femme', parent_id: 'vetements', level: 2 },
          { id: 'vetements-enfant', name: 'Vêtements enfant', slug: 'vetements-enfant', parent_id: 'vetements', level: 2 },
          { id: 'vetements-bebe', name: 'Vêtements bébé', slug: 'vetements-bebe', parent_id: 'vetements', level: 2 },
          { id: 'manteaux-vestes', name: 'Manteaux & Vestes', slug: 'manteaux-vestes', parent_id: 'vetements', level: 2 }
        ]
      },
      {
        id: 'chaussures',
        name: 'Chaussures',
        slug: 'chaussures',
        parent_id: 'mode-beaute',
        level: 1,
        subcategories: [
          { id: 'chaussures-homme', name: 'Chaussures homme', slug: 'chaussures-homme', parent_id: 'chaussures', level: 2 },
          { id: 'chaussures-femme', name: 'Chaussures femme', slug: 'chaussures-femme', parent_id: 'chaussures', level: 2 },
          { id: 'chaussures-enfant', name: 'Chaussures enfant', slug: 'chaussures-enfant', parent_id: 'chaussures', level: 2 },
          { id: 'chaussures-sport', name: 'Chaussures de sport', slug: 'chaussures-sport', parent_id: 'chaussures', level: 2 },
          { id: 'chaussures-sorte', name: 'Chaussures de sortie', slug: 'chaussures-sorte', parent_id: 'chaussures', level: 2 }
        ]
      },
      {
        id: 'accessoires-mode',
        name: 'Accessoires & Mode',
        slug: 'accessoires-mode',
        parent_id: 'mode-beaute',
        level: 1,
        subcategories: [
          { id: 'sacs-main', name: 'Sacs à main', slug: 'sacs-main', parent_id: 'accessoires-mode', level: 2 },
          { id: 'ceintures', name: 'Ceintures', slug: 'ceintures', parent_id: 'accessoires-mode', level: 2 },
          { id: 'bijoux', name: 'Bijoux', slug: 'bijoux', parent_id: 'accessoires-mode', level: 2 },
          { id: 'montres', name: 'Montres', slug: 'montres', parent_id: 'accessoires-mode', level: 2 },
          { id: 'lunettes-soleil', name: 'Lunettes de soleil', slug: 'lunettes-soleil', parent_id: 'accessoires-mode', level: 2 }
        ]
      },
      {
        id: 'cosmetiques-soins',
        name: 'Cosmétiques & Soins',
        slug: 'cosmetiques-soins',
        parent_id: 'mode-beaute',
        level: 1,
        subcategories: [
          { id: 'maquillage', name: 'Maquillage', slug: 'maquillage', parent_id: 'cosmetiques-soins', level: 2 },
          { id: 'soins-visage', name: 'Soins du visage', slug: 'soins-visage', parent_id: 'cosmetiques-soins', level: 2 },
          { id: 'soins-corps', name: 'Soins du corps', slug: 'soins-corps', parent_id: 'cosmetiques-soins', level: 2 },
          { id: 'parfums', name: 'Parfums', slug: 'parfums', parent_id: 'cosmetiques-soins', level: 2 },
          { id: 'produits-cheveux', name: 'Produits cheveux', slug: 'produits-cheveux', parent_id: 'cosmetiques-soins', level: 2 }
        ]
      }
    ]
  },
  // 7. Animaux
  {
    id: 'animaux',
    name: 'Animaux',
    slug: 'animaux',
    parent_id: null,
    level: 0,
    subcategories: [
      {
        id: 'animaux-compagnie',
        name: 'Animaux de compagnie',
        slug: 'animaux-compagnie',
        parent_id: 'animaux',
        level: 1,
        subcategories: [
          { id: 'chiens', name: 'Chiens', slug: 'chiens', parent_id: 'animaux-compagnie', level: 2 },
          { id: 'chats', name: 'Chats', slug: 'chats', parent_id: 'animaux-compagnie', level: 2 },
          { id: 'oiseaux', name: 'Oiseaux', slug: 'oiseaux', parent_id: 'animaux-compagnie', level: 2 },
          { id: 'poissons', name: 'Poissons', slug: 'poissons', parent_id: 'animaux-compagnie', level: 2 },
          { id: 'rongeurs', name: 'Rongeurs', slug: 'rongeurs', parent_id: 'animaux-compagnie', level: 2 }
        ]
      },
      {
        id: 'accessoires-animaux',
        name: 'Accessoires animaux',
        slug: 'accessoires-animaux',
        parent_id: 'animaux',
        level: 1,
        subcategories: [
          { id: 'aliments-animaux', name: 'Aliments pour animaux', slug: 'aliments-animaux', parent_id: 'accessoires-animaux', level: 2 },
          { id: 'jouets-animaux', name: 'Jouets pour animaux', slug: 'jouets-animaux', parent_id: 'accessoires-animaux', level: 2 },
          { id: 'panier-cages', name: 'Paniers & Cages', slug: 'panier-cages', parent_id: 'accessoires-animaux', level: 2 },
          { id: 'soins-animaux', name: 'Soins pour animaux', slug: 'soins-animaux', parent_id: 'accessoires-animaux', level: 2 }
        ]
      },
      {
        id: 'services-animaux',
        name: 'Services pour animaux',
        slug: 'services-animaux',
        parent_id: 'animaux',
        level: 1,
        subcategories: [
          { id: 'pensions-animaux', name: 'Pensions pour animaux', slug: 'pensions-animaux', parent_id: 'services-animaux', level: 2 },
          { id: 'toilettage-animaux', name: 'Toilettage', slug: 'toilettage-animaux', parent_id: 'services-animaux', level: 2 },
          { id: 'veterinaires', name: 'Vétérinaires', slug: 'veterinaires', parent_id: 'services-animaux', level: 2 },
          { id: 'dressage-animaux', name: 'Dressage', slug: 'dressage-animaux', parent_id: 'services-animaux', level: 2 }
        ]
      }
    ]
  },
  // 8. Matériel Professionnel
  {
    id: 'materiel-professionnel',
    name: 'Matériel Professionnel',
    slug: 'materiel-professionnel',
    parent_id: null,
    level: 0,
    subcategories: [
      {
        id: 'materiel-agricole',
        name: 'Matériel agricole',
        slug: 'materiel-agricole',
        parent_id: 'materiel-professionnel',
        level: 1,
        subcategories: [
          { id: 'tracteurs', name: 'Tracteurs', slug: 'tracteurs', parent_id: 'materiel-agricole', level: 2 },
          { id: 'machines-agricoles', name: 'Machines agricoles', slug: 'machines-agricoles', parent_id: 'materiel-agricole', level: 2 },
          { id: 'outils-agricoles', name: 'Outils agricoles', slug: 'outils-agricoles', parent_id: 'materiel-agricole', level: 2 }
        ]
      },
      {
        id: 'materiel-btp',
        name: 'Matériel BTP',
        slug: 'materiel-btp',
        parent_id: 'materiel-professionnel',
        level: 1,
        subcategories: [
          { id: 'engins-btp', name: 'Engins BTP', slug: 'engins-btp', parent_id: 'materiel-btp', level: 2 },
          { id: 'echafaudages', name: 'Échafaudages', slug: 'echafaudages', parent_id: 'materiel-btp', level: 2 },
          { id: 'outils-batiment', name: 'Outils du bâtiment', slug: 'outils-batiment', parent_id: 'materiel-btp', level: 2 }
        ]
      },
      {
        id: 'materiel-bureau',
        name: 'Matériel de bureau',
        slug: 'materiel-bureau',
        parent_id: 'materiel-professionnel',
        level: 1,
        subcategories: [
          { id: 'mobilier-bureau', name: 'Mobilier de bureau', slug: 'mobilier-bureau', parent_id: 'materiel-bureau', level: 2 },
          { id: 'imprimantes-scanners', name: 'Imprimantes & Scanners', slug: 'imprimantes-scanners', parent_id: 'materiel-bureau', level: 2 },
          { id: 'fournitures-bureau', name: 'Fournitures de bureau', slug: 'fournitures-bureau', parent_id: 'materiel-bureau', level: 2 }
        ]
      },
      {
        id: 'equipement-commerce',
        name: 'Équipement commerce',
        slug: 'equipement-commerce',
        parent_id: 'materiel-professionnel',
        level: 1,
        subcategories: [
          { id: 'mobilier-commercial', name: 'Mobilier commercial', slug: 'mobilier-commercial', parent_id: 'equipement-commerce', level: 2 },
          { id: 'equipement-restauration', name: 'Équipement restauration', slug: 'equipement-restauration', parent_id: 'equipement-commerce', level: 2 },
          { id: 'caisses-enregistreuses', name: 'Caisses enregistreuses', slug: 'caisses-enregistreuses', parent_id: 'equipement-commerce', level: 2 }
        ]
      }
    ]
  },
  // 9. Autres
  {
    id: 'autres',
    name: 'Autres',
    slug: 'autres',
    parent_id: null,
    level: 0,
    subcategories: [
      {
        id: 'divers',
        name: 'Divers',
        slug: 'divers',
        parent_id: 'autres',
        level: 1,
        subcategories: [
          { id: 'objets-divers', name: 'Objets divers', slug: 'objets-divers', parent_id: 'divers', level: 2 },
          { id: 'donations', name: 'Donations', slug: 'donations', parent_id: 'divers', level: 2 },
          { id: 'recherches-diverses', name: 'Recherches diverses', slug: 'recherches-diverses', parent_id: 'divers', level: 2 }
        ]
      },
      {
        id: 'perdu-trouve',
        name: 'Perdu & Trouvé',
        slug: 'perdu-trouve',
        parent_id: 'autres',
        level: 1,
        subcategories: [
          { id: 'objets-perdus', name: 'Objets perdus', slug: 'objets-perdus', parent_id: 'perdu-trouve', level: 2 },
          { id: 'objets-trouves', name: 'Objets trouvés', slug: 'objets-trouves', parent_id: 'perdu-trouve', level: 2 },
          { id: 'animaux-perdus', name: 'Animaux perdus', slug: 'animaux-perdus', parent_id: 'perdu-trouve', level: 2 }
        ]
      }
    ]
  }
];

// Fonction pour aplatir la hiérarchie des catégories
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

// Fonction pour créer une catégorie (sans la colonne level)
async function createCategory(category) {
  try {
    const categoryData = {
      name: category.name,
      slug: category.slug,
      id_uuid: category.id_uuid,
      parent_id: category.parent_id,
      created_at: new Date().toISOString(),
      updated_at: new Date().toISOString()
    };

    // Si la colonne level existe, l'ajouter
    if (await checkColumnExists('level')) {
      categoryData.level = category.level;
    }

    const { data, error } = await supabase
      .from('categories')
      .insert(categoryData)
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

// Fonction pour vérifier si une colonne existe
async function checkColumnExists(columnName) {
  try {
    const { data, error } = await supabase
      .from('categories')
      .select(columnName)
      .limit(1);

    return !error || error.code !== 'PGRST204';
  } catch (error) {
    return false;
  }
}

// Fonction principale de migration
async function migrateCategories() {
  console.log('🚀 Début de la migration des catégories...');
  
  try {
    // Vérifier si la colonne level existe
    const levelColumnExists = await checkColumnExists('level');
    if (!levelColumnExists) {
      console.log('⚠️  La colonne "level" n\'existe pas encore.');
      console.log('📝 La migration va continuer sans cette colonne.');
      console.log('💡 Pour ajouter la colonne level:');
      console.log('   1. Allez dans le tableau de bord Supabase');
      console.log('   2. Table Editor → categories');
      console.log('   3. New Column: level (int8, default: 0)');
      console.log('');
    }

    // Aplatir la hiérarchie
    const flatCategories = flattenCategories(menuCategories);
    
    console.log(`📊 Nombre total de catégories à créer: ${flatCategories.length}`);
    
    // Trier par niveau pour créer les catégories parentes d'abord
    const sortedCategories = flatCategories.sort((a, b) => a.level - b.level);
    
    let successCount = 0;
    let failureCount = 0;
    
    // Créer les catégories une par une
    for (const category of sortedCategories) {
      const result = await createCategory(category);
      if (result) {
        successCount++;
      } else {
        failureCount++;
      }
      
      // Petite pause pour éviter de surcharger l'API
      await new Promise(resolve => setTimeout(resolve, 100));
    }
    
    console.log('\n📊 Résumé de la migration:');
    console.log(`✅ Succès: ${successCount}`);
    console.log(`❌ Échecs: ${failureCount}`);
    
    if (failureCount === 0) {
      console.log('🎉 Migration terminée avec succès!');
    } else {
      console.log('⚠️  Certains éléments n\'ont pas pu être migrés.');
    }
    
  } catch (error) {
    console.error('❌ Erreur lors de la migration:', error);
  }
}

// Exécuter la migration
migrateCategories();