import React, { useState, useEffect, useCallback } from 'react';
import { useNavigate, useParams } from 'react-router-dom';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { Label } from '@/components/ui/label';
import { Textarea } from '@/components/ui/textarea';
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '@/components/ui/select';
import { Switch } from '@/components/ui/switch';
import { Upload, Plus, MapPin, AlertCircle, Loader2, Camera, Star, Phone, Mail, Globe, Check, Clock, DollarSign, Eye, Save, Trash2, Car, Home, Video, CalendarDays, FileText, Tag, ShoppingBag, Shirt, Baby, Tv, Gamepad2, WashingMachine, Hammer, Tractor, Pill, Heart, Utensils, Palette, Plane, Ticket, Briefcase, Truck } from 'lucide-react';
import { useToast } from '@/hooks/use-toast';
import { Alert, AlertDescription } from '@/components/ui/alert';
import { Badge } from '@/components/ui/badge';
import { motion, AnimatePresence } from 'framer-motion';
import { supabase } from '@/integrations/supabase/client';
import { useAuth } from '@/contexts/useAuth';
import { useSafeI18nWithRouter } from '@/lib/i18n/i18nContextWithRouter';
import { Category } from '@/data/categories';
import { SimpleSubCategory, getSubcategoriesByCategoryId } from '@/data/subcategories';
import { wilayas } from '@/data/wilayaData';
import { communes } from '@/data/communeData';
import { logger } from '@/utils/silentLogger';
import { useCategories } from '@/services/supabaseCategoriesService';
import { MenuCategory } from '@/data/categoryTypes';
import { CATEGORY_REFERENCE_IMAGES } from '@/data/categoryReferenceImages';
import { invalidateCache } from '@/hooks/useAnnouncements';
import { LocalizedLink } from '@/utils/linkUtils';
import GeolocationPicker from '@/components/geolocation/GeolocationPicker';
import { GeolocationCoords } from '@/hooks/useGeolocation';
import { Dialog, DialogContent, DialogHeader, DialogTitle, DialogFooter } from "@/components/ui/dialog";
import { ScrollArea } from "@/components/ui/scroll-area";
import { compressImage, optimizeVideo, getMediaSettings } from '@/utils/mediaCompression';

import { useLanguageNavigation } from '@/hooks/useLanguageNavigation';

// Liste exhaustive des IDs de catégories immobilières pour exclusion des détails produits génériques
// et inclusion des détails immobiliers spécifiques
const REAL_ESTATE_LISTING_IDS = [
  // Legacy/Refactored IDs
  'immobilier', 'appartements', 'maisons', 'terrains', 'locations', 'locations-immobilier', 'immobilier-commercial', 'garages-parkings',
  
  // Mega Menu Parents
  // 'immobilier-maison', // Retiré pour permettre l'affichage générique pour les sous-catégories non immobilières (ex: Meubles)

  
  // Mega Menu Subcategories (Level 1)
  'ventes-immobilieres', 'locations-immobilieres', 'immobilier-professionnel', 'investissement-immobilier', 'services-maison-immobilier',
  
  // Mega Menu Subcategories (Level 2 - Ventes)
  'appartements-a-vendre', 'studios', 'f2', 'f3', 'f4', 'f5-plus', 'appartements-neufs', 'appartements-promotion-immobiliere',
  'maisons-a-vendre', 'villas', 'duplex', 'triplex', 'maisons-plain-pied', 'fermes-proprietes-rurales',
  'terrains-constructibles', 'terrains-agricoles',
  'locaux-commerciaux', 'bureaux', 'immeubles', 'garages-a-vendre',
  
  // Mega Menu Subcategories (Level 2 - Locations)
  'appartements-en-location', 'studios-location', 'f2-location', 'f3-location', 'f4-location', 
  'maisons-en-location', 'villas-location', 'duplex-location', 'triplex-location', 
  'chambres-en-location', 'colocation', 'locations-meublees', 'locations-non-meublees', 
  'locations-saisonnieres', 'locations-vacances', 'bureaux-a-louer', 'locaux-commerciaux-a-louer', 
  'garages-parkings-a-louer',
  
  // Mega Menu Subcategories (Level 2 - Professionnel & Investissement)
  'entrepots', 'hangars', 'locaux-industriels', 'ateliers', 'zones-logistiques', 'bureaux-professionnels', 
  'open-spaces', 'magasins', 'restaurants-cafes', 'pharmacies', 'cabinets-medicaux',
  'programmes-neufs', 'logements-promotionnels', 'immobiliers-lpp', 'logements-sociaux', 
  'residences-etudiantes', 'residences-seniors', 'biens-locatifs', 'immeubles-de-rapport', 
  'terrains-promotionnels',
  
  // Services
  'agences-immobilieres', 'services-architecture', 'artisans-plomberie-electricite-peinture', 
  'demenagement', 'nettoyage', 'entretien-jardin', 'renovation', 'gestion-locative', 'diagnostics-immobiliers'
];

// Groupes d'IDs pour l'affichage conditionnel des champs spécifiques
const APPARTEMENT_IDS = ['appartements', 'appartements-a-vendre', 'studios', 'f2', 'f3', 'f4', 'f5-plus', 'appartements-neufs', 'appartements-promotion-immobiliere', 'duplex', 'triplex', 'appartements-en-location', 'studios-location', 'f2-location', 'f3-location', 'f4-location', 'duplex-location', 'triplex-location'];
const MAISON_IDS = ['maisons', 'maisons-a-vendre', 'villas', 'maisons-plain-pied', 'fermes-proprietes-rurales', 'maisons-en-location', 'villas-location'];
const TERRAIN_IDS = ['terrains', 'terrains-constructibles', 'terrains-agricoles', 'terrains-promotionnels'];
const LOCATION_IDS = ['locations', 'locations-immobilier', 'locations-immobilieres', 'appartements-en-location', 'studios-location', 'f2-location', 'f3-location', 'f4-location', 'maisons-en-location', 'villas-location', 'duplex-location', 'triplex-location', 'chambres-en-location', 'colocation', 'locations-meublees', 'locations-non-meublees', 'locations-saisonnieres', 'locations-vacances', 'bureaux-a-louer', 'locaux-commerciaux-a-louer', 'garages-parkings-a-louer'];
const COMMERCIAL_IDS = ['immobilier-commercial', 'immobilier-professionnel', 'locaux-commerciaux', 'bureaux', 'immeubles', 'entrepots', 'hangars', 'locaux-industriels', 'ateliers', 'zones-logistiques', 'bureaux-professionnels', 'open-spaces', 'magasins', 'restaurants-cafes', 'pharmacies', 'cabinets-medicaux', 'bureaux-a-louer', 'locaux-commerciaux-a-louer'];
const GARAGE_IDS = ['garages-parkings', 'garages-a-vendre', 'garages-parkings-a-louer'];

// Nouveaux groupes d'IDs pour les catégories spécifiques
const COMPUTER_IDS = ['informatique-electronique'];
const PHONE_IDS = ['telephonie'];
const HOME_IDS = ['mobilier-et-decoration'];
const BIKE_IDS = ['velo-cyclisme-equipements'];
const BOAT_IDS = ['nautisme'];
const CONSTRUCTION_IDS = ['btp-engins-construction'];
const CLOTHING_IDS = ['mode-accessoires']; // Keeping existing but maybe unused? Or I should use my new one. 
// Note: User asked for "Mode & Accessoires" which matches 'mode-et-accessoires' in my analysis. 
// 'mode-accessoires' might be an old ID or typo in existing code. 
// I will use my analyzed IDs.

const BABY_IDS = ['bebe-puericulture'];
const FASHION_IDS = ['mode-et-accessoires']; 
const BAGS_IDS = ['sacs-et-bagages'];
const APPLIANCES_IDS = ['electromenager'];
const MULTIMEDIA_IDS = ['image-son-equipement-musique'];
const GAMING_IDS = ['jeux-video-consoles'];

const HARDWARE_IDS = ['quincaillerie-generale', 'bricolage-materiaux', 'quincaillerie'];
const AGRICULTURE_IDS = ['agriculture-agroalimentaire'];
const PARAPHARMACY_IDS = ['parapharmacie-produit-chimique', 'sante-medical'];
const BEAUTY_IDS = ['beaute-sante-bien-etre', 'sante-beaute'];
const GASTRONOMY_IDS = ['gastronomie-produits-terroir', 'gastronomie', 'gastronomie-alimentation'];
const CRAFTS_IDS = ['artisanat-produits-traditionnels', 'artisanat-traditionnel-algerien'];
const TRAVEL_IDS = [
  'vacances-voyages', 'voyages-tourisme',
  'voyages-decouvertes', 'hebergement-sejour', 'transport-touristique', 'activites-loisirs-touristiques', 'tourisme-culturel-historique', 'services-assistance-voyageurs', 'produits-accessoires-voyage', 'gastronomie-decouvertes-touristiques',
  'agences-de-voyage', 'sejours-organises', 'voyages-organises', 'circuits-touristiques', 'excursions-locales', 'excursions-sahariennes', 'randonnees-guidees', 'voyages-culturels', 'voyages-religieux', 'visites-historiques', 'circuits-archeologiques', 'tours-en-ville', 'city-tours', 'tours-gastronomiques', 'voyages-en-groupe', 'voyages-individuels', 'voyages-aventure', 'trekking', 'expeditions-sahariennes', 'circuits-4x4', 'bivouacs-sahariens', 'camping-touristique', 'hebergement-insolite', 'tourisme-rural', 'tourisme-ecologique', 'ecotourisme', 'tourisme-saharien', 'tourisme-cotier', 'tourisme-montagnard', 'circuits-nature', 'visites-guidees', 'excursions-en-mer', 'sorties-bateau', 'croisieres-locales', 'croisieres-mediterraneennes',
  'hotels', 'hotels-luxe', 'hotels-economiques', 'auberges', 'maisons-hotes', 'gites-touristiques', 'residences-vacances', 'appartements-meubles', 'locations-saisonnieres', 'bungalows', 'campings', 'campements-sahariens', 'hebergements-traditionnels', 'hebergements-familiaux', 'locations-chez-habitant', 'chambres-hotes',
  'locations-voitures', 'locations-4x4', 'locations-motos', 'locations-quads', 'transport-prive', 'navettes-aeroport', 'transferts-intervilles', 'chauffeurs-prives', 'bus-touristiques', 'minibus-voyage', 'taxis-touristiques', 'location-velos', 'location-trottinettes', 'bateaux-touristiques',
  'sports-aventure', 'escalade', 'parapente', 'plongee', 'snorkeling', 'sports-nautiques', 'jet-ski', 'kayak', 'paddle', 'randonnees-pedestres', 'randonnees-equestres', 'equitation', 'parcs-naturels', 'safaris-sahariens', 'observation-etoiles', 'photographie-touristique', 'circuits-gastronomiques', 'ateliers-cuisine-locale', 'spas-bien-etre', 'thalassotherapie', 'hammam-traditionnel',
  'musees', 'sites-archeologiques', 'monuments-historiques', 'patrimoine-unesco', 'casbahs', 'ksour', 'oasis-sahariennes', 'villages-traditionnels', 'mausolees', 'mosquees-historiques', 'medinas-anciennes', 'circuits-artisanat', 'circuits-patrimoine', 'festivals-culturels', 'evenements-folkloriques',
  'guides-touristiques', 'interpretes', 'services-traduction', 'assurance-voyage', 'conseils-voyage', 'formalites-visas', 'preparation-itineraires', 'organisation-sejours-sur-mesure', 'reservation-hotels', 'reservation-billets', 'services-vip', 'location-materiel-voyage', 'transferts-urgents', 'aide-touristes-etrangers',
  'valises', 'sacs-voyage', 'sacs-dos', 'accessoires-trekking', 'equipements-outdoor', 'cartes-touristiques', 'guides-papier', 'equipements-plage', 'accessoires-securite', 'trousses-voyage', 'kits-medicaux-voyage', 'materiels-camping', 'lampes-frontales', 'gourdes', 'equipements-sahariens',
  'restaurants-locaux', 'specialites-regionales', 'degustations-traditionnelles', 'repas-typiques', 'visites-fermes', 'visites-plantations', 'routes-gastronomiques', 'produits-terroir', 'experiences-culinaires'
];
const EVENTS_IDS = [
  'evenements-billetterie', 'loisirs-collections',
  'concerts-spectacles', 'evenements-sportifs', 'cinema-avant-premieres', 'theatre-arts-sceniques', 'conferences-formations', 'festivals-fetes', 'parcs-loisirs', 'evenements-familiaux', 'gala-receptions', 'salons-expositions', 'billetterie-transport', 'evenements-religieux-traditionnels', 'services-evenementiels', 'packages-offres-speciales',
  'concerts-live', 'festivals-musicaux', 'spectacles-humoristiques', 'one-man-show', 'comedies-musicales', 'soirees-artistiques', 'performances-culturelles', 'recitals',
  'matchs-football', 'competitions-sportives', 'tournois', 'sports-mecaniques', 'arts-martiaux', 'marathons', 'evenements-e-sport',
  'billets-cinema', 'projections-speciales', 'avant-premieres', 'festivals-film', 'seances-vip',
  'pieces-theatre', 'operas', 'ballets', 'danse-contemporaine', 'representations-culturelles',
  'conferences-professionnelles', 'seminaires', 'formations', 'ateliers-pratiques', 'masterclass', 'salons',
  'festivals-culturels', 'fetes-locales', 'evenements-traditionnels', 'carnavals', 'celebrations-nationales',
  'parcs-attraction', 'parcs-aquatiques', 'jardins-zoologiques', 'circuits-decouvertes', 'activites-loisirs',
  'spectacles-enfants', 'animations', 'ateliers-creatifs', 'evenements-educatifs', 'shows-interactifs',
  'soirees-gala', 'diners-caritatifs', 'evenements-vip', 'soirees-privees', 'evenements-prestige',
  'salons-professionnels', 'foires-commerciales', 'expositions-artistiques', 'expositions-scientifiques',
  'billets-autocar', 'billets-train', 'billets-ferry', 'traversees-maritimes', 'bus-interwilayas', 'billets-touristiques',
  'mawlid', 'fetes-religieuses', 'rassemblements-culturels', 'ceremonies-traditionnelles',
  'organisation-evenements', 'location-sono', 'eclairage', 'decoration-evenementielle', 'photographes', 'videastes', 'animateurs',
  'packs-fetes', 'acces-vip', 'pass-multi-evenements', 'offres-saisonnieres', 'promotions'
];
const JOBS_IDS = [
  'emploi-carriere',
  'offres-emploi', 'secteurs-professionnels', 'metiers-qualifies-techniques', 'metiers-du-digital', 'metiers-de-la-sante', 'metiers-de-leducation', 'services-aide-a-la-personne', 'hotellerie-restauration', 'transport-logistique', 'agriculture-elevage', 'appels-offres-marches-publics', 'formation-developpement-professionnel', 'entrepreneuriat-business', 'cv-services-recrutement', 'stages-opportunites-jeunes', 'job-temps-partiel-etudiant',
  'cdi', 'cdd', 'temps-plein', 'temps-partiel', 'emplois-saisonniers', 'interim', 'stages', 'apprentissage', 'freelance', 'teletravail', 'missions-ponctuelles',
  'administratif', 'commerce', 'ventes', 'marketing', 'communication', 'informatique', 'telecommunications', 'sante', 'paramedical', 'industrie', 'construction', 'transport', 'logistique', 'hotellerie', 'restauration', 'comptabilite', 'banque', 'assurance', 'education', 'formation', 'agriculture', 'environnement', 'securite', 'services-publics', 'artisanat',
  'electriciens', 'plombiers', 'mecaniciens', 'charpentiers', 'soudeurs', 'techniciens-reseaux', 'techniciens-maintenance', 'chauffagistes', 'menuisiers', 'artisans-specialises',
  'developpeurs-web', 'designers-graphiques', 'community-managers', 'specialistes-seo', 'data-analysts', 'ingenieurs-ia', 'administrateurs-systemes',
  'medecins', 'infirmiers', 'pharmaciens', 'techniciens-laboratoire', 'sages-femmes', 'aides-soignants', 'specialistes-reeducation',
  'enseignants', 'educateurs', 'formateurs', 'moniteurs', 'assistants-pedagogiques',
  'garde-denfants', 'aide-menageres', 'assistants-familiaux', 'soins-a-domicile', 'accompagnement-personnes-agees',
  'cuisiniers', 'serveurs', 'patissiers', 'boulangers', 'receptionnistes', 'gestion-hoteliere',
  'chauffeurs', 'livreurs', 'caristes', 'agents-logistiques', 'manutentionnaires', 'gestion-stock',
  'ouvriers-agricoles', 'techniciens-agricoles', 'eleveurs', 'specialistes-irrigation',
  'consultations', 'marches-professionnels', 'services-entreprises', 'sous-traitance',
  'formations-qualifiantes', 'certifications', 'formations-professionnelles', 'ateliers-techniques', 'coaching-carriere',
  'creation-entreprise', 'conseils-entrepreneurs', 'services-comptables', 'assistance-juridique', 'business-plan',
  'redaction-cv', 'lettres-motivation', 'coaching-entretien', 'traduction-professionnelle', 'optimisation-profil-linkedin',
  'stages-universitaires', 'stages-ete', 'opportunites-etudiants', 'programmes-jeunes-diplomes',
  'petits-boulots', 'aide-scolaire', 'jobs-week-end', 'travail-soiree', 'missions-temporaires'
];

const ANIMALS_IDS = [
  'animaux-accessoires', 'animaux-domestiques', 'chiens', 'chiots-races', 'chiens-adultes', 'chiens-dresses', 'chats', 'chatons-races', 'chats-adultes', 'oiseaux', 'oiseaux-rares', 'canaris', 'poissons', 'poissons-aquarium', 'rongeurs', 'lapins', 'hamsters', 'reptiles', 'tortues', 'animaux-elevage', 'ovins', 'bovins', 'caprins', 'volailles', 'equides', 'nourriture-soins', 'alimentation-chiens-chats', 'croquettes', 'patees', 'friandises', 'alimentation-oiseaux', 'melanges-oiseaux', 'alimentation-poissons', 'aliments-poissons', 'soins-hygiene', 'produits-hygiene', 'shampoings', 'antiparasitaires', 'anti-tiques', 'produits-veterinaires', 'complements-alimentaires', 'vitamines', 'accessoires-equipements', 'accessoires-promenade', 'laisses', 'colliers', 'harnais', 'habitats', 'cages', 'volières', 'niches', 'aquariums', 'terrariums', 'confort-dodo', 'paniers', 'coussins', 'arbres-chat', 'alimentation-accessoires', 'gamelles', 'distributeurs-auto', 'fontaines-eau', 'litières-hygiene', 'litières', 'bacs-litiere', 'jouets-loisirs', 'jouets', 'transport', 'paniers-transport', 'elevage-reproduction', 'materiel-elevage', 'incubateurs', 'couveuses', 'cages-elevage', 'accessoires-reproduction', 'accessoires-accouplement', 'reproducteurs-selectionnes', 'reproducteurs', 'jeunes-animaux', 'poussins', 'agneaux', 'chevreaux', 'services-elevage', 'assistance-elevage', 'conseils-specialises', 'genetique-selection', 'services-animaliers', 'toilettage', 'toilettage-chiens', 'toilettage-chats', 'dressage-education', 'dressage-canin', 'education-canine', 'pension-garde', 'pension-animaux', 'promenades-soins', 'promenades', 'soins-domicile', 'comportement-adoption', 'consultation-comportementaliste', 'adoption', 'services-speciaux', 'photographie-animaliere', 'transport-animaux', 'services-veterinaires', 'produits-exterieurs', 'clotures-enclos', 'clotures-animaux', 'enclos', 'abris-exterieurs', 'abris-exterieurs-animaux', 'alimentation-automatique', 'mangeoires-auto', 'systemes-abreuvement', 'equipements-elevage-exterieur', 'materiel-plein-air', 'confort-thermique', 'lampes-chauffantes', 'accessoires-volières', 'materiel-volières'
];

const FINANCE_IDS = [
  'finance', 'monnaie-fiduciaire', 'billets-algeriens', 'pieces-algeriennes', 'monnaies-anciennes', 'billets-rares', 'pieces-commemoratives', 'monnaies-etrangeres', 'monnaies-or', 'monnaies-argent', 'series-numismatiques', 'collections-completes', 'services-financiers', 'change-devises', 'estimation-valeur', 'expertise-numismatique', 'transfert-argent', 'conseil-financier', 'conversion-monnaie', 'authentification-billets', 'evaluation-pieces', 'monnaie-internationale', 'dollars-usd', 'euros', 'livres-gbp', 'dirhams-aed', 'dinars-tnd', 'francs-cfa', 'yuan-cny', 'riyals-sar', 'billets-etrangers', 'pieces-etrangeres', 'or-metaux-precieux', 'lingots-or', 'pieces-or', 'pieces-argent', 'metal-precieux', 'or-investissement', 'argent-pur', 'valeurs-rares', 'or-numismatique', 'metaux-rares', 'accessoires-numismatiques', 'albums-monnaies', 'etuis-protection', 'boites-numismatiques', 'classeurs-pieces', 'vitrines-collection', 'gants-numismatiques', 'loupes-inspection', 'sachets-securises', 'aide-collection', 'tri-monnaies', 'nettoyage-billets', 'restauration-pieces', 'grade-etat', 'conseils-achat', 'conseils-vente', 'organisation-collection', 'certification-experts'
];

const SERVICES_IDS = [
  'services-support', 'services-informatiques', 'depannage-pc', 'maintenance-reseau', 'installation-logiciels', 'recuperation-donnees', 'securite-informatique', 'configuration-systeme', 'assistance-ligne', 'optimisation-ordinateur', 'services-telecom', 'installation-modem', 'configuration-routeur', 'reparation-telephone', 'debloquage-mobile', 'optimisation-internet', 'parametrage-apn', 'services-electromenager', 'reparation-machines', 'installation-electromenager', 'maintenance-appareils', 'depannage-urgent-electromenager', 'diagnostic-panne', 'services-maison', 'nettoyage-maison', 'menage-pro', 'repassage-domicile', 'entretien-jardin', 'desinfection-locaux', 'gestion-dechets', 'maintenance-maison', 'services-artisanaux', 'plomberie-rapide', 'electricite-maison', 'reparation-meubles', 'peinture-batiment', 'menuiserie-bois', 'travaux-divers', 'bricolage-domicile', 'transport-livraison', 'livraison-colis', 'taxi-prive', 'transport-marchandises', 'demenagement-rapide', 'courses-express', 'location-utilitaire', 'services-administratifs', 'redaction-documents', 'traduction-pro', 'impression-pro', 'numerisation-documents', 'assistance-dossiers', 'creation-cv', 'support-business', 'gestion-clients', 'assistance-commerciale', 'creation-devis', 'service-comptable', 'conseils-gestion', 'audits-internes', 'support-marketing', 'services-formation', 'cours-particuliers', 'formation-pro', 'soutien-scolaire', 'ateliers-pratiques', 'coaching-personnel', 'developpement-personnel', 'services-evenementiels', 'organisation-fetes', 'decoration-evenement', 'location-materiel', 'animation-soiree', 'gestion-invitations', 'services-sante-bienetre', 'massage-bienetre', 'soins-esthetiques', 'coaching-sportif', 'dietetique-personnalisee', 'suivi-bienetre', 'aide-personne', 'garde-enfants', 'assistance-personnes', 'aide-domicile', 'accompagnement-senior', 'soutien-mobilite', 'services-automobiles', 'lavage-auto', 'vidange-rapide', 'diagnostic-auto', 'assistance-route', 'entretien-moteur', 'reparation-pneus', 'services-creatifs', 'design-graphique', 'creation-logo', 'montage-video', 'retouche-photo', 'creation-contenu', 'impression-3d'
];

// IDs pour Sport, Éducation & Loisirs par domaine
const EDUCATION_IDS = ['cours-formations', 'cours-particuliers', 'soutien-scolaire', 'preparation-examens', 'formations-professionnelles', 'ateliers-pedagogiques', 'formations-en-ligne'];
const LIVRES_IDS = ['livres-supports-educatifs', 'livres-scolaires', 'manuels-universitaires', 'romans', 'bd-mangas', 'encyclopedies', 'documents-pedagogiques'];
const ARTS_MUSIQUE_IDS = ['arts-musique', 'instruments-musique', 'cours-chant', 'peinture-dessin', 'materiel-artistique', 'ateliers-creatifs', 'oeuvres-art'];
const SPORTS_IDS = ['sports-loisirs', 'equipements-sportifs', 'salles-de-sport', 'cours-danse-arts-martiaux', 'activites-outdoor', 'camping-randonnee'];
const JEUX_IDS = ['jeux-de-societe'];
const JOUETS_IDS = ['enfance-activites-familiales', 'jouets-educatifs', 'jeux-eveil', 'activites-parascolaires', 'ateliers-enfants', 'animations-anniversaire', 'colonies-vacances'];
const CLUBS_ASSOCIATIONS_IDS = ['clubs-associations', 'clubs-sportifs', 'associations-culturelles', 'ateliers-communautaires', 'clubs-lecture', 'club-football', 'club-judo', 'club-natation', 'asso-musique', 'asso-theatre', 'asso-patrimoine', 'comm-solidarite', 'comm-environnement', 'comm-insertion'];

// IDs globaux pour Sport, Éducation & Loisirs
const EDUCATION_LOISIRS_IDS = ['education-loisirs', ...EDUCATION_IDS, ...LIVRES_IDS, ...ARTS_MUSIQUE_IDS, ...SPORTS_IDS, ...JEUX_IDS, ...JOUETS_IDS, ...CLUBS_ASSOCIATIONS_IDS];

const EXCHANGE_IDS = [
  'echanges-partage', 'troc-objets', 'echange-vetements', 'troc-electromenager', 'echange-telephones', 'troc-meubles', 'echange-livres', 'troc-jouets', 'echange-outils', 'don-gratuit', 'objets-gratuits', 'vetements-gratuits', 'dons-meubles', 'dons-electro', 'dons-jouets', 'dons-divers', 'pret-objets', 'pret-outils', 'pret-appareils', 'pret-velos', 'pret-materiel-pro', 'pret-equipements-maison', 'partage-competences', 'cours-gratuits', 'echanges-competences', 'ateliers-partages', 'bricolage-entraide', 'soutien-scolaire', 'carpooling-deplacements', 'covoiturage-local', 'partage-trajet', 'transport-solidaire', 'livraison-solidaire', 'partage-habitat', 'cohabitation-solidaire', 'colocation-echange', 'accueil-temporaire', 'echange-maison', 'echange-services', 'service-contre-service', 'aide-mutuelle', 'reparation-echange', 'menage-contre-aide', 'communaute-entraide', 'entraide-quartier', 'recuperation-objets', 'partage-alimentaire', 'solidarite-locale', 'echange-culturel', 'echange-livres', 'partage-musique', 'partage-jeux', 'activites-communes', 'sorties-partagees', 'recuperation-reemploi', 'recyclage-objets', 'recuperation-materiaux', 'recuperation-meubles', 'upcycling-creatif'
];


const INITIAL_FORM_DATA = {
    title: '',
    description: '',
    price: '',
    currency: 'DZD',
    condition: '',
    location: '',
    addressLine2: '',
    commune: '',
    wilaya: '',
    phones: [''],
    whatsappStatus: [false] as boolean[],
    landline: '',
    email: '',
    website: '',
    category_id: '',
    subcategory_id: '',
    images: [] as File[],
    existingImages: [] as string[],
    is_urgent: false,
    isPremium: false,
    expires_at: '',
    
    // Géolocalisation précise
    latitude: null as number | null,
    longitude: null as number | null,
    
    // Nouveaux champs - Détails du produit
    brand: '',
    model: '',
    color: '',
    dimensions: '',
    weight: '',
    purchaseYear: '',
    
    // Champs spécifiques Véhicules
    vehicleVersion: '',
    vehicleRegistrationMonth: '',
    vehicleRegistrationYear: '',
    vehicleMileage: '',
    vehicleFuelType: '',
    vehicleFiscalPower: '',
    vehicleGearbox: '',
    vehicleEquipment: [] as string[],
    vehicleTechnicalControl: '',
    vehicleGreyCardCrossed: '',

    // Nouveaux champs - Immobilier
    realEstateType: '',
    realEstateSurface: '',
    realEstateRooms: '',
    realEstateBedrooms: '',
    realEstateBathrooms: '',
    realEstateFloor: '',
    realEstateTotalFloors: '',
    realEstateFurnished: false,
    realEstateParking: false,
    realEstateGarage: false,
    realEstateGarden: false,
    realEstatePool: false,
    realEstateElevator: false,
    realEstateBalcony: false,
    realEstateTerrace: false,
    realEstateView: '',
    realEstateFacades: '',
    realEstateZoning: '',
    realEstateWithPermit: false,
    realEstateCapacity: '',
    realEstatePapers: [] as string[],
    realEstatePaymentPeriod: '',
    realEstateSpecifications: [] as string[],

    // Nouveaux champs - Historique et état
    hasInvoice: false,
    warrantyDuration: '',
    includedAccessories: [] as string[],
    sellingReason: '',
    
    // Nouveaux champs - Prix et négociation
    isNegotiable: false,
    cashDiscount: '',
    exchangePossible: false,
    originalPrice: '',
    
    // Nouveaux champs - Logistique et livraison
    deliveryAvailable: false,
    deliveryMethod: 'hand_to_hand',
    deliveryAreas: [] as string[],
    deliveryFees: '',
    deliveryLocationName: '',
    packagingInfo: '',
    availabilityDate: '',
    
    // Nouveaux champs - Visuels et documentation
    productVideos: [] as string[],
    productVideoFiles: [] as File[],
    detailPhotos: [] as File[],
    documentation: [] as string[],

    // Champs spécifiques Informatique
    computerProcessor: '',
    computerRam: '',
    computerStorage: '',
    computerScreenSize: '',
    computerGraphicsCard: '',
    computerOs: '',

    // Champs spécifiques Téléphonie
    phoneBrand: '',
    phoneModel: '',
    phoneStorage: '',
    phoneRam: '',
    phoneScreenSize: '',
    phoneOs: '',
    phoneColor: '',

    // Champs spécifiques Mobilier
    furnitureMaterial: '',
    furnitureType: '',
    furnitureColor: '',
    furnitureDimensions: '',
    furnitureWeight: '',

    // Champs spécifiques Vélo
    bikeType: '',
    bikeFrameSize: '',
    bikeWheelSize: '',
    bikeFrameMaterial: '',
    bikeElectric: false,
    bikeMotorized: false,

    // Champs spécifiques Bateau
    boatType: '',
    boatLength: '',
    boatWidth: '',
    boatMotorType: '',
    boatMotorPower: '',
    boatHours: '',
    boatCabin: false,

    // Champs spécifiques Sport, Éducation & Loisirs
    educationSubject: '',
    educationLevel: '',
    educationMode: '',
    sportType: '',
    sportBrand: '',
    sportCondition: '',
    artType: '',
    artMaterial: '',
    bookType: '',
    bookLanguage: '',
    bookCondition: '',
    gameType: '',
    gamePlayers: '',
    toyAgeGroup: '',
    toyMaterial: '',
    // Champs spécifiques Clubs & Associations
    clubAssociationType: '',
    clubActivityType: '',
    clubSportType: '',
    clubAgeGroup: '',
    clubAudience: '',
    clubTheme: '',
    clubFormat: '',
    clubGenre: '',

    // Champs spécifiques BTP
    constructionType: '',
    constructionBrand: '',
    constructionModel: '',
    constructionYear: '',
    constructionHours: '',
    constructionWeight: '',
    constructionPower: '',

    // Champs spécifiques Vêtements
    clothingType: '',
    clothingSize: '',
    clothingBrand: '',
    clothingGender: '',
    clothingMaterial: '',
    clothingCondition: '',
    
    // Champs spécifiques Bébé
    babyType: '',
    babySize: '',
    babyBrand: '',
    babyConditionDetail: '',

    // Champs spécifiques Mode (Nouveau)
    fashionClothingType: '',
    fashionSize: '',
    fashionGender: '',
    fashionMaterial: '',
    fashionBrand: '',

    // Champs spécifiques Sacs
    bagType: '',
    bagMaterial: '',
    bagBrand: '',

    // Champs spécifiques Électroménager
    applianceType: '',
    applianceBrand: '',
    applianceEnergyClass: '',
    applianceConditionDetail: '',

    // Champs spécifiques Multimédia
    multimediaDeviceType: '',
    multimediaBrand: '',
    multimediaTechnology: '',

    // Champs spécifiques Gaming
    gamingProductType: '',
    gamingPlatform: '',
    gamingGenre: '',

    // Quincaillerie
    hardwareType: '',
    hardwareBrand: '',
    
    // Agriculture
    agricultureType: '',
    agricultureOrigin: '',
    
    // Parapharmacie
    parapharmacyType: '',
    parapharmacyBrand: '',
    
    // Santé & Beauté
    beautyType: '',
    beautyBrand: '',
    beautyGender: '',
    
    // Gastronomie
    gastronomyType: '',
    gastronomyOrigin: '',
    gastronomyDiet: '',
    gastronomyUnit: '',
    gastronomyOrder: '',
    
    // Artisanat
    craftsType: '',
    craftsMaterial: '',
    craftsOrigin: '',

    // Voyages & Tourisme
    travelType: '',
    travelDestination: '',
    travelServices: [] as string[],
    travelAmenities: [] as string[],
    travelStars: '',

    // Événements
    eventType: '',
    eventFormat: '',
    eventAccess: '',

    // Emploi
    jobOfferType: '',
    jobContract: '',
    jobExperience: '',
    jobRegime: '',

    // Animaux
    animalsType: '',
    animalsBreed: '',
    animalsAge: '',
    animalsAgeUnit: 'months',
    animalsGender: '',
    animalsVaccinated: false,
    animalsDewormed: false,
    animalsPedigree: false,
    animalsSterilized: false,

    // Finance
    financeServiceType: '',
    financeCurrency: '',
    financeAmount: '',
    financeExchangeRate: '',
    financePaymentMethods: [] as string[],

    // Services
    servicesServiceType: '',
    servicesAvailability: '',
    servicesExperience: '',
    servicesPriceModel: '',
    servicesLocationType: '',

    // Échanges
    exchangeType: '',
    exchangeOffered: '',
    exchangeWanted: '',
    exchangeCondition: '',
    exchangeValue: ''
  };

const normalizeStringArray = (value: unknown): string[] => {
  if (Array.isArray(value)) {
    return value
      .filter((v): v is string => typeof v === 'string')
      .map(v => v.trim())
      .filter(Boolean);
  }

  if (typeof value === 'string') {
    const trimmed = value.trim();
    if (!trimmed) return [];

    if (trimmed.startsWith('[')) {
      let parsed: unknown = null;
      try {
        parsed = JSON.parse(trimmed) as unknown;
      } catch (e) {
        void e;
        parsed = null;
      }
      if (Array.isArray(parsed)) {
        return parsed
          .filter((v): v is string => typeof v === 'string')
          .map(v => v.trim())
          .filter(Boolean);
      }
    }

    if (trimmed.includes(',')) {
      return trimmed
        .split(',')
        .map(s => s.trim())
        .filter(Boolean);
    }

    return [trimmed];
  }

  return [];
};

const CreateAnnouncementPage: React.FC = () => {
  const { t, language, isRTL } = useSafeI18nWithRouter();
  const navigate = useNavigate();
  const { navigateWithLanguage } = useLanguageNavigation();
  const { id } = useParams();
  const isEditing = !!id;
  const { toast } = useToast();
  const { user } = useAuth();
  const tr = (key: string, fallback: string) => {
    const s = t(key);
    return s && s !== key ? s : fallback;
  };

  const [formData, setFormData] = useState(INITIAL_FORM_DATA);
  const [isVideoEnabled, setIsVideoEnabled] = useState(true);

  useEffect(() => {
    const fetchSettings = async () => {
      const settings = await getMediaSettings();
      setIsVideoEnabled(settings.isVideoEnabled);
    };
    fetchSettings();
  }, []);

  const [categories, setCategories] = useState<Category[]>([]);
  const [hoveredCategoryId, setHoveredCategoryId] = useState<string | null>(null);
  const [subcategories, setSubcategories] = useState<SimpleSubCategory[]>([]);
  const [loading, setLoading] = useState(false);
  const [_createdAnnouncementId, _setCreatedAnnouncementId] = useState<string | null>(null);
  const { data: fetchedCategories } = useCategories(language);
  const [menuCategories, setMenuCategories] = useState<MenuCategory[]>([]);
  const [referralPoints, setReferralPoints] = useState<number>(0);
  
  const [isSubcategoriesInitialized, setIsSubcategoriesInitialized] = useState(false);

  useEffect(() => {
    if (id) setIsSubcategoriesInitialized(false);
  }, [id]);

  // Effect to populate subcategories when editing an existing announcement
  useEffect(() => {
    if (isEditing && !isSubcategoriesInitialized && menuCategories.length > 0 && formData.category_id) {
      const categorySubcategories = getSubcategoriesByCategoryId(formData.category_id, menuCategories);
      setSubcategories(categorySubcategories);
      setIsSubcategoriesInitialized(true);
    }
  }, [isEditing, isSubcategoriesInitialized, menuCategories, formData.category_id]);

  const [_errors, setErrors] = useState<Record<string, string>>({});
  const [showPreview, setShowPreview] = useState(false);
  const [draftSaved, setDraftSaved] = useState(false);
  const [lastSaved, setLastSaved] = useState<Date | null>(null);
  const [missingRequired, setMissingRequired] = useState({ wilaya: false, phone: false });
  const [lockedPrimaryPhone, setLockedPrimaryPhone] = useState('');

  const handleLocationSelect = (coords: GeolocationCoords) => {
    setFormData(prev => ({
      ...prev,
      location: coords.address || prev.location,
      latitude: coords.latitude,
      longitude: coords.longitude,
      wilaya: coords.wilaya || prev.wilaya // Auto-detect wilaya if possible (needs GeolocationCoords to support it, assuming address might contain it or user sets it manually)
    }));
  };

  // Validation en temps réel
  const validateField = (name: string, value: any): string => {
    switch (name) {
      case 'title':
        return value.length < 3 ? (t('createAd.validation.titleMinLength') || 'Le titre doit contenir au moins 3 caractères') : '';
      case 'description':
        return value.length < 10 ? (t('createAd.validation.descriptionMinLength') || 'La description doit contenir au moins 10 caractères') : '';
      case 'price':
        return value && parseFloat(value) < 0 ? 'Le prix doit être positif' : '';
      default:
        return '';
    }
  };

  // Sauvegarde automatique des brouillons (chaque 60 secondes)
  // Utilisation d'une ref pour accéder au state le plus récent dans le setInterval
  const formDataRef = React.useRef(formData);
  
  useEffect(() => {
    formDataRef.current = formData;
  }, [formData]);

  useEffect(() => {
    if (!user) return;

    const interval = setInterval(() => {
      const currentData = formDataRef.current;
      
      // Sauvegarder uniquement si on a au moins un titre ou une description
      if (currentData.title || currentData.description) {
        const draftData = {
          ...currentData,
          images: [],
          productVideoFiles: [],
          detailPhotos: [],
        };
        localStorage.setItem(`announcement_draft_${user.id}`, JSON.stringify(draftData));
        
        // Mise à jour discrète de la date de sauvegarde
        setLastSaved(new Date());
        // On ne déclenche plus setDraftSaved(true) pour éviter le popup intrusif
      }
    }, 60000); // 60 secondes

    return () => clearInterval(interval);
  }, [user]);

  // Anciennes fonctions utilitaires pour le brouillon
  const loadDraft = useCallback(() => {
    if (!user) return null;
    const saved = localStorage.getItem(`announcement_draft_${user.id}`);
    if (saved) {
      try {
        return JSON.parse(saved);
      } catch (e) {
        console.error("Erreur lecture brouillon", e);
        return null;
      }
    }
    return null;
  }, [user]);

  const clearDraft = useCallback(() => {
    if (user) {
      localStorage.removeItem(`announcement_draft_${user.id}`);
      setLastSaved(null);
      toast({ title: "Brouillon supprimé", description: "Le brouillon a été effacé." });
    }
  }, [user, toast]);

  const handleManualSave = useCallback(() => {
    if (user) {
        const draftData = {
          ...formData,
          images: [],
          productVideoFiles: [],
          detailPhotos: [],
        };
        localStorage.setItem(`announcement_draft_${user.id}`, JSON.stringify(draftData));
        setLastSaved(new Date());
        setDraftSaved(true);
        setTimeout(() => setDraftSaved(false), 3000);
        toast({ title: t('createAd.draftSaved') || "Brouillon sauvegardé", description: t('createAd.draftSavedDesc') || "Brouillon sauvegardé manuellement." });
    }
  }, [formData, user, toast, t]);

  const handleReset = useCallback(() => {
    if (window.confirm(t('createAd.confirmReset') || "Êtes-vous sûr de vouloir réinitialiser tout le formulaire ?")) {
        setFormData(INITIAL_FORM_DATA);
        clearDraft();
        window.scrollTo({ top: 0, behavior: 'smooth' });
        toast({ title: t('createAd.formReset') || "Formulaire réinitialisé", description: t('createAd.formResetDesc') || "Le formulaire a été réinitialisé." });
    }
  }, [clearDraft, toast, t]);

  const [_formIsValid, _setFormIsValid] = useState(false);
  
  // Définir les conditions avec des clés de traduction appropriées
  const getConditions = useCallback(() => [
    { value: 'new', label: t('search.advanced.new') },
    { value: 'like_new', label: t('announcements.condition.likeNew') || 'Comme neuf' },
    { value: 'good', label: t('announcements.condition.bon') },
    { value: 'fair', label: t('announcements.condition.correct') },
    { value: 'poor', label: t('announcements.condition.poor') || 'À rénover' },
  ], [t]);

  const [conditions, setConditions] = useState(getConditions());

  // Mettre à jour les conditions lorsque la langue change
  useEffect(() => {
    setConditions(getConditions());
  }, [language, getConditions]);
  
  // Règles de validation
  const _validationRules = [
    {
      field: 'title',
      validate: (value: string) => value.trim().length >= 3,
      message: t('createAd.validation.titleMinLength') || 'Le titre doit contenir au moins 3 caractères'
    },
    {
      field: 'description',
      validate: (value: string) => value.trim().length >= 10,
      message: t('createAd.validation.descriptionMinLength') || 'La description doit contenir au moins 10 caractères'
    },
    {
      field: 'category_id',
      validate: (value: string) => value.trim().length > 0,
      message: t('createAd.validation.categoryRequired') || 'Veuillez sélectionner une catégorie'
    }
  ];

  useEffect(() => {
    if (!user) {
      navigate('/connexion');
      return;
    }
    const load = async () => {
      const draft = await loadDraft();
      if (draft) {
        setFormData(prev => {
          const normalizeOr = (candidate: unknown, fallback: string[]) =>
            candidate === undefined ? fallback : normalizeStringArray(candidate);

          const phonesCandidate = (draft as { phones?: unknown }).phones;
          const videosCandidate = (draft as { productVideos?: unknown }).productVideos;
          const includedAccessoriesCandidate = (draft as { includedAccessories?: unknown }).includedAccessories;
          const deliveryAreasCandidate = (draft as { deliveryAreas?: unknown }).deliveryAreas;
          const documentationCandidate = (draft as { documentation?: unknown }).documentation;
          const realEstateSpecificationsCandidate = (draft as { realEstateSpecifications?: unknown }).realEstateSpecifications;
          const realEstatePapersCandidate = (draft as { realEstatePapers?: unknown }).realEstatePapers;
          const financePaymentMethodsCandidate = (draft as { financePaymentMethods?: unknown }).financePaymentMethods;
          const existingImagesCandidate = (draft as { existingImages?: unknown }).existingImages;
          const travelServicesCandidate = (draft as { travelServices?: unknown }).travelServices;
          const travelAmenitiesCandidate = (draft as { travelAmenities?: unknown }).travelAmenities;

          return {
            ...prev,
            ...draft,
            phones: Array.isArray(phonesCandidate) ? (phonesCandidate as string[]) : (prev.phones ?? ['']),
            productVideos: Array.isArray(videosCandidate) ? (videosCandidate as string[]) : (prev.productVideos ?? []),
            includedAccessories: normalizeOr(includedAccessoriesCandidate, prev.includedAccessories ?? []),
            deliveryAreas: normalizeOr(deliveryAreasCandidate, prev.deliveryAreas ?? []),
            documentation: normalizeOr(documentationCandidate, prev.documentation ?? []),
            realEstateSpecifications: normalizeOr(realEstateSpecificationsCandidate, prev.realEstateSpecifications ?? []),
            realEstatePapers: normalizeOr(realEstatePapersCandidate, prev.realEstatePapers ?? []),
            financePaymentMethods: normalizeOr(financePaymentMethodsCandidate, prev.financePaymentMethods ?? []),
            existingImages: normalizeOr(existingImagesCandidate, prev.existingImages ?? []),
            travelServices: normalizeOr(travelServicesCandidate, prev.travelServices ?? []),
            travelAmenities: normalizeOr(travelAmenitiesCandidate, prev.travelAmenities ?? []),
          };
        });
      }
    };
    load();
  }, [user, navigate, loadDraft]);

  useEffect(() => {
    if (fetchedCategories && fetchedCategories.length) {
      const mc = fetchedCategories as MenuCategory[];
      setMenuCategories(mc);
      setCategories(mc.map(c => ({ id: c.id, name: c.name, slug: c.slug })));
    }
  }, [fetchedCategories]);

  // Mettre à jour les sous-catégories lorsque les données de menu changent (changement de langue)
  useEffect(() => {
    if (menuCategories.length > 0 && formData.category_id) {
      const categorySubcategories = getSubcategoriesByCategoryId(formData.category_id, menuCategories);
      setSubcategories(categorySubcategories);
    }
  }, [menuCategories, formData.category_id]);

  useEffect(() => {
    // Note: referral_points and referral_count columns don't exist in profiles table yet
    // Using placeholder values until the migration is applied
    setReferralPoints(0);
  }, [user]);

  const mapDBToCondition = (c: string | null) => {
    switch (c) {
      case 'neuf': return 'new';
      case 'tres-bon-etat': return 'like_new';
      case 'bon-etat': return 'good';
      case 'etat-moyen': return 'fair';
      case 'pour-pieces': return 'poor';
      default: return '';
    }
  };

  useEffect(() => {
    if (!isEditing || !id || !user) return;

    const fetchAnnouncement = async () => {
      setLoading(true);
      const { data, error } = await supabase
        .from('announcements')
        .select('*')
        .eq('id', id)
        .single();

      if (error) {
        console.error('Error fetching announcement:', error);
        toast({
          title: "Erreur",
          description: "Impossible de charger l'annonce",
          variant: "destructive"
        });
        setLoading(false);
        return;
      }

      if (data.user_id !== user.id) {
        toast({
          title: "Accès refusé",
          description: "Vous n'avez pas la permission de modifier cette annonce",
          variant: "destructive"
        });
        setLoading(false);
        navigateWithLanguage('/mes-annonces');
        return;
      }

      const normalizedExistingImages = (() => {
        const urls = normalizeStringArray((data as any).image_urls);
        if (urls.length > 0) return urls;
        const single = (data as any).image_url;
        if (typeof single === 'string' && single.trim()) return [single.trim()];
        return [];
      })();

      const extractedPhonesData = data.phone_number
        ? (() => {
            const phoneStrings = data.phone_number
              .split(', ')
              .filter((p: string) => !['02', '03', '04', '09'].some(prefix => p.startsWith(prefix)));
            
            if (phoneStrings.length === 0) return { numbers: [''], whatsapp: [false] };
            
            return {
              numbers: phoneStrings.map((p: string) => p.replace(' (WhatsApp)', '').trim()),
              whatsapp: phoneStrings.map((p: string) => p.includes('(WhatsApp)'))
            };
          })()
        : { numbers: [''], whatsapp: [false] };

      const extractedLandline = data.phone_number
        ? data.phone_number.split(', ').find((p: string) => ['02', '03', '04', '09'].some(prefix => p.startsWith(prefix))) || ''
        : '';

      setLockedPrimaryPhone(extractedPhonesData.numbers[0] || '');

      setFormData(prev => ({
        ...prev,
        title: data.title || '',
        description: data.description || '',
        price: data.price?.toString() || '',
        currency: data.currency || 'DZD',
        condition: mapDBToCondition(data.condition),
        location: data.address ? data.address.split(', ')[0] : '',
        addressLine2: data.address && data.address.includes(', ') ? data.address.split(', ').slice(1).join(', ') : '',
        wilaya: data.wilaya || '',
        commune: data.commune || '',
        address: data.address || '',
        latitude: data.latitude || null,
        longitude: data.longitude || null,
        phones: extractedPhonesData.numbers,
        whatsappStatus: extractedPhonesData.whatsapp,
        landline: extractedLandline,
        email: data.email || '',
        website: (data as any).website || '',
        category_id: data.category_id || '',
        subcategory_id: data.subcategory_id || '',
        existingImages: normalizedExistingImages,
        is_urgent: data.is_urgent || false,
        isPremium: data.is_featured || false,
        expires_at: data.expires_at || '',
        
        brand: data.brand || '',
        model: data.model || '',
        color: data.color || '',
        dimensions: data.dimensions || '',
        weight: (data as any).weight_info || (data as any).weight || '',
        purchaseYear: data.purchase_year?.toString() || '',
        
        hasInvoice: data.has_invoice || false,
        warrantyDuration: data.warranty_duration || '',
        includedAccessories: normalizeStringArray(data.included_accessories),
        sellingReason: data.selling_reason || '',
        
        isNegotiable: data.is_negotiable || false,
        cashDiscount: data.cash_discount?.toString() || '',
        exchangePossible: data.exchange_possible || false,
        originalPrice: data.original_price?.toString() || '',
        
        deliveryMethod: (() => {
          const raw = data.delivery_location_name;
          if (typeof raw === 'string' && raw.trim().startsWith('{')) {
            try {
              const parsed = JSON.parse(raw);
              const method = typeof parsed?.method === 'string' ? parsed.method : null;
              if (method === 'hand_to_hand' || method === 'delivery_agency' || method === 'mobile_courier') {
                return method;
              }
            } catch (e) {
              void e;
            }
          }
          if (data.delivery_available) {
            return raw ? 'delivery_agency' : 'mobile_courier';
          }
          return 'hand_to_hand';
        })(),
        deliveryAvailable: (() => {
          const raw = data.delivery_location_name;
          if (typeof raw === 'string' && raw.trim().startsWith('{')) {
            try {
              const parsed = JSON.parse(raw);
              const method = typeof parsed?.method === 'string' ? parsed.method : null;
              if (method === 'hand_to_hand') return false;
              if (method === 'delivery_agency' || method === 'mobile_courier') return true;
            } catch (e) {
              void e;
            }
          }
          return data.delivery_available || false;
        })(),
        deliveryAreas: normalizeStringArray(data.delivery_areas),
        deliveryFees: data.delivery_fees?.toString() || '',
        deliveryLocationName: (() => {
          const raw = data.delivery_location_name;
          if (typeof raw === 'string' && raw.trim().startsWith('{')) {
            try {
              const parsed = JSON.parse(raw);
              const agencyName = typeof parsed?.agencyName === 'string' ? parsed.agencyName : '';
              return agencyName;
            } catch {
              return '';
            }
          }
          if (data.delivery_available && typeof raw === 'string') return raw;
          return '';
        })(),
        packagingInfo: data.packaging_info || '',
        availabilityDate: data.availability_date || '',
        
        productVideos: data.product_video ? data.product_video.split(', ') : [],
        productVideoFiles: [],
        detailPhotos: [],
        documentation: normalizeStringArray(data.documentation),
        realEstatePapers: normalizeStringArray((data as any).real_estate_papers ?? (data as any).papers ?? prev.realEstatePapers),
        realEstateSpecifications: normalizeStringArray((data as any).real_estate_specifications ?? (data as any).specifications ?? prev.realEstateSpecifications),
      }));
      
      setLoading(false);
    };

    fetchAnnouncement();
  }, [id, user, isEditing, navigate, toast, navigateWithLanguage]);


  const handleInputChange = (e: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement>) => {
    const { name, value } = e.target;
    
    // Validation temps réel
    const error = validateField(name, value);
    setErrors(prev => ({ ...prev, [name]: error }));
    
    // Gérer les champs de type tableau
    if (name === 'includedAccessories' || name === 'deliveryAreas' || name === 'documentation') {
      setFormData(prev => ({
        ...prev,
        [name]: value.split(',').map(item => item.trim()).filter(item => item !== '')
      }));
    } else if (name.startsWith('phones[')) {
      const match = name.match(/phones\[(\d+)\]/);
      if (match) {
        const index = parseInt(match[1], 10);
        setFormData(prev => {
          const next = [...prev.phones];
          next[index] = value;
          return { ...prev, phones: next };
        });
      }
    } else {
      setFormData(prev => ({ ...prev, [name]: value }));
    }
  };

  const handleSelectChange = (name: string, value: string | string[]) => {
    setFormData(prev => ({ ...prev, [name]: value }));
  };

  const _handleCategoryChange = (categoryId: string) => {
    setFormData(prev => ({ ...prev, category_id: categoryId, subcategory_id: '' }));
    const categorySubcategories = getSubcategoriesByCategoryId(categoryId, menuCategories);
    setSubcategories(categorySubcategories);
  };

  const _handleSubcategoryChange = (subcategoryId: string) => {
    setFormData(prev => ({ ...prev, subcategory_id: subcategoryId }));
  };

  // Gestion des changements dans les champs imbriqués
  const _handleNestedChange = (category: string, field: string, value: unknown) => {
    setFormData(prev => ({
      ...prev,
      [category]: {
        ...((prev as unknown as Record<string, Record<string, unknown>>)[category] || {}),
        [field]: value
      }
    }));
  };

  const toggleRealEstateSpecification = (value: string) => {
    setFormData(prev => {
      const current = prev.realEstateSpecifications;
      const exists = current.includes(value);
      if (exists) {
        return { ...prev, realEstateSpecifications: current.filter(i => i !== value) };
      } else {
        return { ...prev, realEstateSpecifications: [...current, value] };
      }
    });
  };

  const toggleRealEstatePaper = (value: string) => {
    setFormData(prev => {
      const current = prev.realEstatePapers;
      const exists = current.includes(value);
      if (exists) {
        return { ...prev, realEstatePapers: current.filter(i => i !== value) };
      } else {
        return { ...prev, realEstatePapers: [...current, value] };
      }
    });
  };

  const handleImageUpload = async (e: React.ChangeEvent<HTMLInputElement>) => {
    if (e.target.files) {
      const newImages = Array.from(e.target.files);
      
      const currentCount = formData.existingImages.length + formData.images.length;
      const remainingSlots = 10 - currentCount;
      
      if (remainingSlots <= 0) {
        toast({
          title: t('createAd.images'),
          description: t('createAd.maxImagesReached') || "Vous avez atteint la limite de 10 photos",
          variant: "destructive"
        });
        return;
      }

      const allowedImages = newImages.slice(0, remainingSlots);
      
      const compressedFiles = await Promise.all(
        allowedImages.map(async (file) => {
          try {
            return await compressImage(file);
          } catch (err) {
            logger.error('Erreur compression image:', err);
            return file;
          }
        })
      );

      setFormData(prev => ({ 
        ...prev, 
        images: [...prev.images, ...compressedFiles]
      }));
    }
  };

  const removeImage = (index: number) => {
    setFormData(prev => ({
      ...prev,
      images: prev.images.filter((_, i) => i !== index)
    }));
  };

  const removeExistingImage = (index: number) => {
    setFormData(prev => ({
      ...prev,
      existingImages: prev.existingImages.filter((_, i) => i !== index)
    }));
  };

  const handleVideoUpload = async (e: React.ChangeEvent<HTMLInputElement>) => {
    if (e.target.files) {
      const newVideos = Array.from(e.target.files);
      const currentCount = formData.productVideoFiles.length;
      const remainingSlots = 2 - currentCount;

      if (remainingSlots <= 0) {
         toast({
          title: t('createAd.videos'),
          description: t('createAd.maxVideosReached') || "Vous avez atteint la limite de 2 vidéos",
          variant: "destructive"
        });
        return;
      }

      const allowedVideos = newVideos.slice(0, remainingSlots);
      
      const optimizedVideos = await Promise.all(
        allowedVideos.map(file => optimizeVideo(file))
      );

      setFormData(prev => ({
        ...prev,
        productVideoFiles: [...prev.productVideoFiles, ...optimizedVideos]
      }));
    }
  };

  const removeVideoFile = (index: number) => {
    setFormData(prev => ({
      ...prev,
      productVideoFiles: prev.productVideoFiles.filter((_, i) => i !== index)
    }));
  };

  const applyWatermarkToFile = (file: File): Promise<Blob> => {
    return new Promise((resolve, reject) => {
      const img = new Image();
      img.onload = () => {
        const canvas = document.createElement('canvas');
        canvas.width = img.width;
        canvas.height = img.height;
        const ctx = canvas.getContext('2d');
        if (!ctx) {
          reject(new Error('ctx'));
          return;
        }
        ctx.drawImage(img, 0, 0);
        const text = 'Aladdin';
        const opacity = 0.3;
        const size = Math.max(12, Math.floor(Math.min(canvas.width, canvas.height) * 0.04));
        ctx.globalAlpha = opacity;
        ctx.fillStyle = '#ffffff';
        ctx.font = `${size}px sans-serif`;
        ctx.textBaseline = 'bottom';
        const padding = Math.max(8, Math.floor(size * 0.6));
        const textWidth = ctx.measureText(text).width;
        const x = canvas.width - textWidth - padding;
        const y = canvas.height - padding;
        ctx.fillText(text, x, y);
        const type = file.type.includes('png') ? 'image/png' : 'image/jpeg';
        canvas.toBlob(blob => {
          if (blob) resolve(blob);
          else reject(new Error('blob'));
        }, type, 0.92);
      };
      img.onerror = () => reject(new Error('img'));
      img.src = URL.createObjectURL(file);
    });
  };

  const uploadImages = async (images: File[]): Promise<string[]> => {
    const imageUrls: string[] = [];
    const startTs = performance.now();

    for (const image of images) {
      const fileExt = image.name.split('.').pop();
      const fileName = `${Math.random()}.${fileExt}`;
      const uid = user?.id ?? 'guest';
      const filePath = `${uid}/${fileName}`;

      const payload = await applyWatermarkToFile(image);
      const { error: uploadError } = await supabase.storage
        .from('announcement-images')
        .upload(filePath, payload);

      if (uploadError) {
        logger.error('Upload error:', uploadError);
        continue;
      }

      const { data: { publicUrl } } = supabase.storage
        .from('announcement-images')
        .getPublicUrl(filePath);

      imageUrls.push(publicUrl);
    }

    const durationMs = performance.now() - startTs;
    logger.info('watermark_upload_duration', { count: images.length, durationMs });
    return imageUrls;
  };

  const uploadVideos = async (videos: File[]): Promise<string[]> => {
    const videoUrls: string[] = [];

    for (const video of videos) {
      const fileExt = video.name.split('.').pop();
      const fileName = `${Math.random()}.${fileExt}`;
      const uid = user?.id ?? 'guest';
      const filePath = `${uid}/${fileName}`;

      const { error: uploadError } = await supabase.storage
        .from('announcement-images')
        .upload(filePath, video);

      if (uploadError) {
        logger.error('Upload error:', uploadError);
        continue;
      }

      const { data: { publicUrl } } = supabase.storage
        .from('announcement-images')
        .getPublicUrl(filePath);

      videoUrls.push(publicUrl);
    }

    return videoUrls;
  };

  const addPhoneField = () => {
    setFormData(prev => {
      const phones = Array.isArray(prev.phones) ? prev.phones : [''];
      const whatsappStatus = Array.isArray(prev.whatsappStatus) ? prev.whatsappStatus : [false];
      if (phones.length >= 3) return { ...prev, phones, whatsappStatus };
      return { 
        ...prev, 
        phones: [...phones, ''],
        whatsappStatus: [...whatsappStatus, false]
      };
    });
  };

  const removePhoneField = (index: number) => {
    setFormData(prev => {
      const phones = Array.isArray(prev.phones) ? prev.phones : [''];
      const whatsappStatus = Array.isArray(prev.whatsappStatus) ? prev.whatsappStatus : [false];
      if (isEditing && index === 0) return { ...prev, phones, whatsappStatus };
      const nextPhones = phones.filter((_, i) => i !== index);
      const nextWhatsapp = whatsappStatus.filter((_, i) => i !== index);
      return { 
        ...prev, 
        phones: nextPhones.length > 0 ? nextPhones : [''],
        whatsappStatus: nextWhatsapp.length > 0 ? nextWhatsapp : [false]
      };
    });
  };

  const mapConditionToDB = (c: string | undefined) => {
    switch (c) {
      case 'new':
        return 'neuf';
      case 'like_new':
        return 'tres-bon-etat';
      case 'good':
        return 'bon-etat';
      case 'fair':
        return 'etat-moyen';
      case 'poor':
        return 'pour-pieces';
      default:
        return null;
    }
  };

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    
    if (!user) {
      toast({
        title: t('auth.errors.loginFailed') || "Erreur",
        description: t('auth.errors.loginRequired') || "Vous devez être connecté",
        variant: "destructive"
      });
      return;
    }

    if (isEditing && lockedPrimaryPhone && formData.phones[0]?.trim() !== lockedPrimaryPhone.trim()) {
      toast({
        title: t('createAd.phoneRequired') || "Numéro de téléphone requis",
        description: "Le premier numéro de téléphone ne peut pas être modifié.",
        variant: "destructive"
      });
      setFormData(prev => ({
        ...prev,
        phones: [lockedPrimaryPhone, ...(Array.isArray(prev.phones) ? prev.phones.slice(1) : [])]
      }));
      return;
    }

    const isFirstPhoneMissing = !formData.phones[0] || formData.phones[0].trim() === '';
    const isWilayaMissing = !formData.wilaya;
    setMissingRequired({ phone: isFirstPhoneMissing, wilaya: isWilayaMissing });

    // Validation du premier numéro de téléphone
    if (!formData.phones[0] || formData.phones[0].trim() === '') {
      toast({
        title: t('createAd.phoneRequired') || "Numéro de téléphone requis",
        description: t('createAd.phoneRequiredDesc') || "Veuillez saisir au moins un numéro de téléphone",
        variant: "destructive"
      });
      return;
    }

    if (!formData.title || !formData.description || !formData.category_id) {
      toast({
        title: t('createAd.errors.createFailed') || "Erreur",
        description: t('createAd.errors.createFailedDesc') || "Veuillez remplir tous les champs obligatoires",
        variant: "destructive"
      });
      return;
    }

    if (!formData.wilaya) {
      toast({
        title: t('createAd.errors.createFailed') || "Erreur",
        description: "Veuillez sélectionner une wilaya",
        variant: "destructive"
      });
      return;
    }

    const deliveryMethod =
      formData.deliveryMethod === 'hand_to_hand' ||
      formData.deliveryMethod === 'delivery_agency' ||
      formData.deliveryMethod === 'mobile_courier'
        ? formData.deliveryMethod
        : 'hand_to_hand';

    if (deliveryMethod === 'delivery_agency' && (!formData.deliveryLocationName || formData.deliveryLocationName.trim() === '')) {
      toast({
        title: t('createAd.errors.createFailed') || "Erreur",
        description: t('createAd.delivery.agencyName') || "Nom de l'agence requis",
        variant: "destructive"
      });
      return;
    }

    try {
      setLoading(true);

      // Upload images
      const uploadedImageUrls = formData.images.length > 0 ? await uploadImages(formData.images) : [];
      // Combine existing and new images
      const imageUrls = [...(formData.existingImages || []), ...uploadedImageUrls];

      // Upload detail photos
      const detailPhotoUrls = formData.detailPhotos.length > 0
        ? await uploadImages(formData.detailPhotos)
        : [];

      // Upload videos
      const videoUrls = formData.productVideoFiles.length > 0
        ? await uploadVideos(formData.productVideoFiles)
        : [];
        
      // If editing, keep existing videos if needed (logic not fully implemented for existing videos separation, assuming replace or add)
      // Ideally we should handle existing videos too, but let's stick to images for now as per critical path.
      
      // Préparer les données pour Supabase
      const deliveryLocationNamePayload = JSON.stringify({
        method: deliveryMethod,
        agencyName: deliveryMethod === 'delivery_agency' ? formData.deliveryLocationName.trim() : null
      });

      const attributesPayload = (() => {
        const isBike = BIKE_IDS.includes(formData.category_id);
        if (!isBike) return undefined;
        const obj: Record<string, any> = {};
        if (formData.bikeFrameSize && formData.bikeFrameSize.trim()) obj.frame_size = formData.bikeFrameSize.trim();
        if (formData.bikeWheelSize && formData.bikeWheelSize.trim()) obj.wheel_size = formData.bikeWheelSize.trim();
        if (formData.bikeFrameMaterial && formData.bikeFrameMaterial.trim()) obj.frame_material = formData.bikeFrameMaterial.trim();
        if (formData.bikeType && formData.bikeType.trim()) obj.bike_type = formData.bikeType.trim();
        if (typeof formData.bikeElectric === 'boolean') obj.electric = formData.bikeElectric;
        if (typeof formData.bikeMotorized === 'boolean') obj.motorized = formData.bikeMotorized;
        if (formData.weight && formData.weight.trim()) obj.weight = formData.weight.trim();
        return Object.keys(obj).length ? obj : undefined;
      })();
      const announcementData = {
        title: formData.title,
        description: formData.description,
        price: formData.price ? parseFloat(formData.price) : null,
        currency: formData.currency,
        condition: mapConditionToDB(formData.condition),
        category_id: formData.category_id,
        subcategory_id: formData.subcategory_id || null,
        user_id: user.id, 
        wilaya: formData.wilaya,
        commune: formData.commune,
        address: formData.location + (formData.addressLine2 ? ', ' + formData.addressLine2 : ''),
        latitude: formData.latitude,
        longitude: formData.longitude,
        phone_number: [
          (isEditing && lockedPrimaryPhone ? lockedPrimaryPhone : formData.phones[0]) + (formData.whatsappStatus?.[0] ? ' (WhatsApp)' : ''),
          ...(Array.isArray(formData.phones) ? formData.phones.slice(1).map((p, i) => p + (formData.whatsappStatus?.[i + 1] ? ' (WhatsApp)' : '')) : []),
          formData.landline
        ].filter(p => p && p.trim()).join(', '),
        email: formData.email,
        website: formData.website ? formData.website.trim() : null,
        images: imageUrls,
        image_urls: imageUrls.length > 0 ? imageUrls : null,
        image_url: imageUrls.length > 0 ? imageUrls[0] : null,
        is_urgent: formData.is_urgent,
        is_negotiable: formData.isNegotiable,
        expires_at: formData.expires_at ? new Date(formData.expires_at).toISOString() : null,
        attributes: attributesPayload,
        
        // Nouveaux champs - Détails du produit
        brand: formData.brand || formData.babyBrand || formData.fashionBrand || formData.bagBrand || formData.applianceBrand || formData.multimediaBrand || null,
        model: formData.model || null,
        color: formData.color || null,
        dimensions: formData.dimensions || null,
        weight: formData.weight || null,
        purchase_year: formData.purchaseYear ? parseInt(formData.purchaseYear) || null : null,
        
        // Nouveaux champs - Historique et état
        has_invoice: formData.hasInvoice || false,
        warranty_duration: formData.warrantyDuration || null,
        included_accessories: formData.includedAccessories && formData.includedAccessories.length > 0 ? formData.includedAccessories : null,
        selling_reason: formData.sellingReason || null,
        
        // Nouveaux champs - Prix et négociation
        cash_discount: formData.cashDiscount ? parseFloat(formData.cashDiscount) || null : null,
        exchange_possible: formData.exchangePossible || false,
        original_price: formData.originalPrice ? parseFloat(formData.originalPrice) || null : null,
        
        // Nouveaux champs - Logistique et livraison
        delivery_available: deliveryMethod !== 'hand_to_hand',
        delivery_areas: formData.deliveryAreas && formData.deliveryAreas.length > 0 ? formData.deliveryAreas : null,
        delivery_fees: formData.deliveryFees ? parseFloat(formData.deliveryFees) || null : null,
        delivery_location_name: deliveryLocationNamePayload,
        packaging_info: formData.packagingInfo || null,
        availability_date: formData.availabilityDate ? formData.availabilityDate : null,
        
        // Nouveaux champs - Visuels et documentation
        product_video: videoUrls.length > 0 ? videoUrls.join(', ') : null,
        detail_photos: detailPhotoUrls.length > 0 ? detailPhotoUrls : null,
        documentation: formData.documentation && formData.documentation.length > 0 ? formData.documentation : null,

        // Champs Animaux
        animal_species: formData.animalsType || null,
        animal_breed: formData.animalsBreed || null,
        animal_age: formData.animalsAge ? parseInt(formData.animalsAge) : null,
        animal_age_unit: formData.animalsAgeUnit || 'months',
        animal_gender: formData.animalsGender || null,
        animal_vaccinated: formData.animalsVaccinated || false,
        animal_dewormed: formData.animalsDewormed || false,
        animal_pedigree: formData.animalsPedigree || false,
        animal_sterilized: formData.animalsSterilized || false,

        // Champs Finance
        finance_service_type: formData.financeServiceType || null,
        finance_currency: formData.financeCurrency || null,
        finance_amount: formData.financeAmount ? parseFloat(formData.financeAmount) : null,
        finance_exchange_rate: formData.financeExchangeRate ? parseFloat(formData.financeExchangeRate) : null,
        finance_payment_methods: formData.financePaymentMethods && formData.financePaymentMethods.length > 0 ? formData.financePaymentMethods : null,

        // Champs Services
        service_type: formData.servicesServiceType || null,
        service_availability: formData.servicesAvailability || null,
        service_experience: formData.servicesExperience ? parseInt(formData.servicesExperience) : null,
        service_price_model: formData.servicesPriceModel || null,
        service_location_type: formData.servicesLocationType || null,

        // Champs Échanges
        exchange_type: formData.exchangeType || null,
        exchange_offered: formData.exchangeOffered || null,
        exchange_wanted: formData.exchangeWanted || null,
        exchange_condition: formData.exchangeCondition || null,
        exchange_value: formData.exchangeValue ? parseFloat(formData.exchangeValue) : null,

        updated_at: new Date().toISOString(),
      };

      if (isEditing && id) {
         // Prepare update payload - remove fields that shouldn't be updated or cause RLS issues
         const updatePayload = {
            ...announcementData,
            user_id: undefined, // Explicitly remove user_id
            created_at: undefined, // Never update created_at
            view_count: undefined, // Prevent resetting counters
            contact_count: undefined,
            status: undefined, // Status should be handled via state transitions, not edit form
            
            // Handle image fields carefully - prioritize image_urls
            images: undefined, // Avoid redundancy if image_urls is the main column
            // Keep image_urls and image_url as they are likely the DB columns
         };

         // Remove undefined keys
         Object.keys(updatePayload).forEach(key => 
            (updatePayload as any)[key] === undefined && delete (updatePayload as any)[key]
         );

         console.log('Sending update payload:', updatePayload);

         const { error } = await supabase
            .from('announcements')
            .update(updatePayload)
            .eq('id', id);
         
         if (error) {
            console.error('Error updating announcement:', error);
            toast({
               title: t('common.error'), 
               description: `Erreur lors de la mise à jour: ${error.message || 'Erreur inconnue'}`,
               variant: "destructive" 
            });
            throw error;
         }

         toast({ title: t('common.success'), description: t('mesAnnonces.updated') || "Annonce mise à jour avec succès" });
         navigateWithLanguage('/mes-annonces');
         return;
      }

      // Create logic continues here...
      // L'ID est maintenant le slug (TEXT), on l'utilise directement
      console.log('Traitement de l\'ID de catégorie:', formData.category_id);
      const categoryId = formData.category_id;
      
      // Récupérer l'ID de la sous-catégorie si présente
      let subcategoryId = null;
      if (formData.subcategory_id) {
        console.log('Traitement de l\'ID de sous-catégorie:', formData.subcategory_id);
        subcategoryId = formData.subcategory_id;
      }

      // VERIFICATION DE SECURITE: Vérifier que la catégorie existe dans la base de données
      // Ceci évite l'erreur 409 (Conflict) si la catégorie locale n'existe pas dans Supabase
      const { count: categoryCount, error: categoryCheckError } = await supabase
        .from('categories')
        .select('id', { count: 'exact', head: true })
        .eq('id', categoryId);
        
      if (categoryCheckError) {
        console.error('Erreur lors de la vérification de la catégorie:', categoryCheckError);
        // On continue quand même, ça pourrait être une erreur réseau
      } else if (categoryCount === 0) {
        console.error(`Catégorie introuvable dans la base de données: ${categoryId}`);
        toast({
          title: "Erreur de catégorie",
          description: `La catégorie sélectionnée (${categoryId}) n'est pas synchronisée avec le serveur. Veuillez contacter le support.`,
          variant: "destructive"
        });
        setLoading(false);
        return;
      }

      // Vérification de la sous-catégorie si elle existe
      if (subcategoryId) {
        const { count: subCount, error: subCheckError } = await supabase
          .from('categories')
          .select('id', { count: 'exact', head: true })
          .eq('id', subcategoryId);
          
        if (!subCheckError && subCount === 0) {
          console.warn(`Sous-catégorie introuvable dans la base de données: ${subcategoryId}. On l'ignore pour éviter l'erreur.`);
          // On ignore la sous-catégorie pour permettre la création de l'annonce dans la catégorie parente
          subcategoryId = null;
        }
      }

      const { data: premiumSettingsData } = await supabase
        .from('site_settings')
        .select('setting_value')
        .eq('setting_key', 'premium_settings')
        .maybeSingle();

      const premiumSettingValue = premiumSettingsData?.setting_value as { premium_duration_days?: unknown } | null | undefined;
      const premiumDays = typeof premiumSettingValue?.premium_duration_days === 'number'
        ? premiumSettingValue.premium_duration_days
        : 30;
      const premiumEndAt = new Date(Date.now() + premiumDays * 24 * 60 * 60 * 1000).toISOString();

      // Create announcement - Using full data payload instead of minimal test data
      const insertPayload = {
         ...announcementData,
         // Ensure required fields for insert are present
         created_at: new Date().toISOString(),
         status: 'active',
         contact_count: 0,
         view_count: 0,
         type: formData.isPremium ? 'premium' : 'normal',
         premium_end_at: formData.isPremium ? premiumEndAt : null,
         
         // Handle category/subcategory logic which might differ slightly from announcementData
         category_id: categoryId,
         subcategory_id: subcategoryId, // Explicitly use the verified subcategoryId

         // Handle image fields carefully - prioritize image_urls but include fallback if needed
         // announcementData already has images, image_urls, image_url
         // We remove 'images' to avoid redundancy if it's not needed, sticking to image_urls
         images: undefined, 
      };

      // Remove undefined keys
      Object.keys(insertPayload).forEach(key => 
         (insertPayload as any)[key] === undefined && delete (insertPayload as any)[key]
      );
      
      console.log('Sending insert payload:', insertPayload);
      
      // 🚀 OPTIMISTIC UI : Afficher l'annonce instantanément dans l'UI
      // Invalider le cache pour forcer le rafraîchissement
      if (formData.category_id) {
        invalidateCache(formData.category_id);
      }
      
      // Notifier les autres composants qu'une nouvelle annonce arrive
      window.dispatchEvent(new CustomEvent('optimisticAnnouncement', { 
        detail: {
          ...insertPayload,
          id: 'temp-' + Date.now(), // ID temporaire
          is_optimistic: true
        }
      }));
      
      const { data, error } = await supabase
        .from('announcements')
        // eslint-disable-next-line @typescript-eslint/no-explicit-any
        .insert(insertPayload as any)
        .select()
        .single();

      if (error) {
        console.error('Erreur Supabase détaillée:', error);
        console.error('Message d\'erreur:', error.message);
        console.error('Détails de l\'erreur:', error.details);
        console.error('Code d\'erreur:', error.code);
        
        // En cas d'erreur, notifier pour retirer l'annonce optimiste
        window.dispatchEvent(new CustomEvent('optimisticAnnouncementFailed', { 
          detail: { categoryId: formData.category_id }
        }));
        
        throw error;
      }

      _setCreatedAnnouncementId(data.id);

      // Pour Informatique & Électronique, certains sous-catégories sont des téléphones
      const effectiveSubcategoryId = subcategoryId || '';

      const isPhone = PHONE_IDS.includes(categoryId) || 
        (categoryId === 'informatique-electronique' && ['smartphones', 'telephones-classiques-fixes', 'tablettes-appareils-mobiles'].includes(formData.subcategory_id));
      
      const isComputer = !isPhone && COMPUTER_IDS.includes(categoryId) && 
        !['accessoires-telephones', 'batteries-charge', 'audio-mobile'].includes(effectiveSubcategoryId);

      const isFurniture = HOME_IDS.includes(categoryId);

      // Insert computer details
      if (isComputer) {
         const { error: computerError } = await supabase
           .from('computer_details')
           .insert({
             announcement_id: data.id,
             processor: formData.computerProcessor,
             ram: formData.computerRam,
             storage: formData.computerStorage,
             screen_size: formData.computerScreenSize,
             graphics_card: formData.computerGraphicsCard,
             os: formData.computerOs
           });
           
         if (computerError) {
           console.error('Error inserting computer details:', computerError);
         }
      }

      // Insert phone details
      if (isPhone) {
         const { error: phoneError } = await supabase
           .from('phone_details')
           .insert({
             announcement_id: data.id,
             brand: formData.phoneBrand || formData.brand, // Fallback to generic brand if set
             model: formData.phoneModel || formData.model,
             storage: formData.phoneStorage,
             ram: formData.phoneRam,
             screen_size: formData.phoneScreenSize,
             os: formData.phoneOs,
             color: formData.phoneColor || formData.color
           });
           
         if (phoneError) {
           console.error('Error inserting phone details:', phoneError);
         }
      }

      // Insert furniture details
      if (isFurniture) {
         const { error: furnitureError } = await supabase
           .from('home_furniture_details')
           .insert({
             announcement_id: data.id,
             material: formData.furnitureMaterial,
             type: formData.furnitureType,
             color: formData.furnitureColor || formData.color,
             dimensions: formData.furnitureDimensions || formData.dimensions,
             weight: formData.furnitureWeight || formData.weight
           });
           
         if (furnitureError) {
           console.error('Error inserting furniture details:', furnitureError);
         }
      }

      // Insert bike details
      if (BIKE_IDS.includes(categoryId)) {
         const { error: bikeError } = await supabase
           .from('bike_details')
           .insert({
             announcement_id: data.id,
             type: formData.bikeType,
             frame_size: formData.bikeFrameSize,
             wheel_size: formData.bikeWheelSize,
             frame_material: formData.bikeFrameMaterial,
             electric: formData.bikeElectric,
            motorized: formData.bikeMotorized,
             brand: formData.brand,
             model: formData.model
           });
           
         if (bikeError) {
           console.error('Error inserting bike details:', bikeError);
         }
      }

      // Insert boat details
      if (BOAT_IDS.includes(categoryId)) {
         const { error: boatError } = await supabase
           .from('boat_details')
           .insert({
             announcement_id: data.id,
             type: formData.boatType,
             length: formData.boatLength ? parseFloat(formData.boatLength) : null,
             width: formData.boatWidth ? parseFloat(formData.boatWidth) : null,
             motor_type: formData.boatMotorType,
             motor_power: formData.boatMotorPower ? parseInt(formData.boatMotorPower) : null,
             hours: formData.boatHours ? parseInt(formData.boatHours) : null,
             cabin: formData.boatCabin,
             brand: formData.brand,
             model: formData.model
           });
           
         if (boatError) {
           console.error('Error inserting boat details:', boatError);
         }
      }

      // Insert education and leisure details
      if (EDUCATION_LOISIRS_IDS.includes(subcategoryId || categoryId)) {
         const { error: educationError } = await supabase
           .from('education_loisirs_details')
           .insert({
             announcement_id: data.id,
             education_subject: formData.educationSubject,
             education_level: formData.educationLevel,
             education_mode: formData.educationMode,
             sport_type: formData.sportType,
             sport_brand: formData.sportBrand,
             sport_condition: formData.sportCondition,
             art_type: formData.artType,
             art_material: formData.artMaterial,
             book_type: formData.bookType,
             book_language: formData.bookLanguage,
             book_condition: formData.bookCondition,
             game_type: formData.gameType,
             game_players: formData.gamePlayers,
             toy_age_group: formData.toyAgeGroup,
             toy_material: formData.toyMaterial,
             // Champs Clubs & Associations
             club_association_type: formData.clubAssociationType,
             club_activity_type: formData.clubActivityType,
             club_sport_type: formData.clubSportType,
             club_age_group: formData.clubAgeGroup,
             club_audience: formData.clubAudience,
             club_theme: formData.clubTheme,
             club_format: formData.clubFormat,
             club_genre: formData.clubGenre
           });
           
         if (educationError) {
           console.error('Error inserting education and leisure details:', educationError);
         }
      }

      // Insert construction details
      if (CONSTRUCTION_IDS.includes(categoryId)) {
         const { error: constructionError } = await supabase
           .from('construction_details')
           .insert({
             announcement_id: data.id,
             type: formData.constructionType,
             brand: formData.constructionBrand,
             model: formData.constructionModel,
             year: formData.constructionYear ? parseInt(formData.constructionYear) : null,
             hours: formData.constructionHours ? parseInt(formData.constructionHours) : null,
             weight: formData.constructionWeight ? parseFloat(formData.constructionWeight) : null,
             power: formData.constructionPower ? parseInt(formData.constructionPower) : null
           });
           
         if (constructionError) {
           console.error('Error inserting construction details:', constructionError);
         }
      }

      // Insert clothing details
      if (CLOTHING_IDS.includes(categoryId)) {
         const { error: clothingError } = await supabase
           .from('clothing_details')
           .insert({
             announcement_id: data.id,
             type: formData.clothingType,
             size: formData.clothingSize,
             brand: formData.clothingBrand,
             gender: formData.clothingGender,
             material: formData.clothingMaterial,
             condition: formData.clothingCondition
           });
           
         if (clothingError) {
           console.error('Error inserting clothing details:', clothingError);
         }
      }

      // Insert vehicle details if category is vehicles
      if (['vehicules', 'vehicules-equipements'].includes(categoryId)) {
         const registrationDate = formData.vehicleRegistrationYear 
           ? `${formData.vehicleRegistrationYear}-${(formData.vehicleRegistrationMonth || '01').toString().padStart(2, '0')}-01`
           : null;

         const { error: vehicleError } = await supabase
           .from('vehicle_details')
           .insert({
             announcement_id: data.id,
             brand: formData.brand,
             model: formData.model,
             version: formData.vehicleVersion,
             registration_date: registrationDate,
             purchase_year: formData.purchaseYear ? parseInt(formData.purchaseYear) : null,
             mileage: formData.vehicleMileage ? parseInt(formData.vehicleMileage) : null,
             fuel_type: formData.vehicleFuelType,
             fiscal_power: formData.vehicleFiscalPower,
             gearbox: formData.vehicleGearbox,
             equipment: Array.isArray(formData.vehicleEquipment) ? formData.vehicleEquipment : [],
             technical_control: formData.vehicleTechnicalControl === 'true',
             grey_card_crossed: formData.vehicleGreyCardCrossed === 'true'
           });
           
         if (vehicleError) {
           console.error('Error inserting vehicle details:', vehicleError);
           // Non-blocking error, we continue
         }
      }

      // Insert real estate details
      if (REAL_ESTATE_LISTING_IDS.some(id => id === categoryId || id === subcategoryId)) {
         const { error: realEstateError } = await supabase
           .from('real_estate_details')
           .insert({
             announcement_id: data.id,
             property_type: formData.realEstateType || null,
             surface: formData.realEstateSurface ? parseFloat(formData.realEstateSurface) : null,
             rooms: formData.realEstateRooms ? parseInt(formData.realEstateRooms) : null,
             bedrooms: formData.realEstateBedrooms ? parseInt(formData.realEstateBedrooms) : null,
             bathrooms: formData.realEstateBathrooms ? parseInt(formData.realEstateBathrooms) : null,
             floor: formData.realEstateFloor ? parseInt(formData.realEstateFloor) : null,
             total_floors: formData.realEstateTotalFloors ? parseInt(formData.realEstateTotalFloors) : null,
             furnished: formData.realEstateFurnished,
             parking: formData.realEstateSpecifications.includes('parking') || formData.realEstateSpecifications.includes('garage_parking'),
             garage: formData.realEstateSpecifications.includes('garage_parking'),
             garden: formData.realEstateSpecifications.includes('jardin'),
             pool: formData.realEstateSpecifications.includes('piscine'),
             elevator: formData.realEstateSpecifications.includes('ascenseur'),
             balcony: formData.realEstateSpecifications.includes('balcon_terrasse'),
             terrace: formData.realEstateSpecifications.includes('balcon_terrasse'),
             view_type: formData.realEstateView || null,
             facades: formData.realEstateFacades ? parseInt(formData.realEstateFacades) : null,
             zoning: formData.realEstateZoning || null,
             with_permit: formData.realEstateWithPermit || formData.realEstateSpecifications.includes('permis_construire'),
             capacity: formData.realEstateCapacity ? parseInt(formData.realEstateCapacity) : null,
             papers: Array.isArray(formData.realEstatePapers) ? formData.realEstatePapers : [],
             payment_period: formData.realEstatePaymentPeriod || null,
             specifications: Array.isArray(formData.realEstateSpecifications) ? formData.realEstateSpecifications : []
           });
           
         if (realEstateError) {
           console.error('Error inserting real estate details:', realEstateError);
         }
      }

      // Insert baby details
      if (BABY_IDS.includes(categoryId)) {
         const { error: babyError } = await supabase
           .from('baby_details')
           .insert({
             announcement_id: data.id,
             type: formData.babyType,
             size: formData.babySize,
             brand: formData.babyBrand || formData.brand,
             condition_detail: formData.babyConditionDetail
           });
           
         if (babyError) {
           console.error('Error inserting baby details:', babyError);
         }
      }

      // Insert fashion details
      if (FASHION_IDS.includes(categoryId)) {
         const { error: fashionError } = await supabase
           .from('fashion_details')
           .insert({
             announcement_id: data.id,
             clothing_type: formData.fashionClothingType,
             size: formData.fashionSize,
             gender: formData.fashionGender,
             material: formData.fashionMaterial,
             brand: formData.fashionBrand || formData.brand
           });
           
         if (fashionError) {
           console.error('Error inserting fashion details:', fashionError);
         }
      }

      // Insert bags details
      if (BAGS_IDS.includes(categoryId)) {
         const { error: bagsError } = await supabase
           .from('bags_details')
           .insert({
             announcement_id: data.id,
             type: formData.bagType,
             material: formData.bagMaterial,
             brand: formData.bagBrand || formData.brand
           });
           
         if (bagsError) {
           console.error('Error inserting bags details:', bagsError);
         }
      }

      // Insert appliances details
      if (APPLIANCES_IDS.includes(categoryId)) {
         const { error: appliancesError } = await supabase
           .from('appliances_details')
           .insert({
             announcement_id: data.id,
             type: formData.applianceType,
             brand: formData.applianceBrand || formData.brand,
             energy_class: formData.applianceEnergyClass,
             condition_detail: formData.applianceConditionDetail
           });
           
         if (appliancesError) {
           console.error('Error inserting appliances details:', appliancesError);
         }
      }

      // Insert multimedia details
      if (MULTIMEDIA_IDS.includes(categoryId)) {
         const { error: multimediaError } = await supabase
           .from('multimedia_details')
           .insert({
             announcement_id: data.id,
             device_type: formData.multimediaDeviceType,
             brand: formData.multimediaBrand || formData.brand,
             technology: formData.multimediaTechnology
           });
           
         if (multimediaError) {
           console.error('Error inserting multimedia details:', multimediaError);
         }
      }

      // Insert gaming details
      if (GAMING_IDS.includes(categoryId)) {
         const { error: gamingError } = await supabase
           .from('gaming_details')
           .insert({
             announcement_id: data.id,
             product_type: formData.gamingProductType,
             platform: formData.gamingPlatform,
             genre: formData.gamingGenre
           });
           
         if (gamingError) {
           console.error('Error inserting gaming details:', gamingError);
         }
      }

      // Insert hardware details
      if (HARDWARE_IDS.includes(categoryId)) {
         const { error: hardwareError } = await supabase
           .from('hardware_details')
           .insert({
             announcement_id: data.id,
             type: formData.hardwareType,
             brand: formData.hardwareBrand || formData.brand
           });
           
         if (hardwareError) {
           console.error('Error inserting hardware details:', hardwareError);
         }
      }

      // Insert agriculture details
      if (AGRICULTURE_IDS.includes(categoryId)) {
         const { error: agricultureError } = await supabase
           .from('agriculture_details')
           .insert({
             announcement_id: data.id,
             type: formData.agricultureType,
             origin: formData.agricultureOrigin
           });
           
         if (agricultureError) {
           console.error('Error inserting agriculture details:', agricultureError);
         }
      }

      // Insert parapharmacy details
      if (PARAPHARMACY_IDS.includes(categoryId)) {
         const { error: parapharmacyError } = await supabase
           .from('parapharmacy_details')
           .insert({
             announcement_id: data.id,
             type: formData.parapharmacyType,
             brand: formData.parapharmacyBrand || formData.brand
           });
           
         if (parapharmacyError) {
           console.error('Error inserting parapharmacy details:', parapharmacyError);
         }
      }

      // Insert beauty details
      if (BEAUTY_IDS.includes(categoryId)) {
         const { error: beautyError } = await supabase
           .from('beauty_details')
           .insert({
             announcement_id: data.id,
             type: formData.beautyType,
             brand: formData.beautyBrand || formData.brand,
             gender: formData.beautyGender
           });
           
         if (beautyError) {
           console.error('Error inserting beauty details:', beautyError);
         }
      }

      // Insert gastronomy details
      if (GASTRONOMY_IDS.includes(categoryId)) {
         const { error: gastronomyError } = await supabase
           .from('gastronomy_details')
           .insert({
             announcement_id: data.id,
             type: formData.gastronomyType,
             origin: formData.gastronomyOrigin,
             diet: formData.gastronomyDiet || null,
             unit: formData.gastronomyUnit || null,
             order_mode: formData.gastronomyOrder || null
           });
           
         if (gastronomyError) {
           console.error('Error inserting gastronomy details:', gastronomyError);
         }
      }

      // Insert crafts details
      if (CRAFTS_IDS.includes(categoryId)) {
         const { error: craftsError } = await supabase
           .from('crafts_details')
           .insert({
             announcement_id: data.id,
             type: formData.craftsType,
             material: formData.craftsMaterial,
             origin: formData.craftsOrigin
           });
           
         if (craftsError) {
           console.error('Error inserting crafts details:', craftsError);
         }
      }

      // Insert travel details
      if (TRAVEL_IDS.includes(categoryId)) {
         const { error: travelError } = await supabase
           .from('travel_details')
           .insert({
             announcement_id: data.id,
             travel_type: formData.travelType,
             destination: formData.travelDestination,
             services: formData.travelServices,
             amenities: formData.travelAmenities,
             stars: formData.travelStars ? parseInt(formData.travelStars) : null
           });
           
         if (travelError) {
           console.error('Error inserting travel details:', travelError);
         }
      }

      // Insert events details
      if (EVENTS_IDS.includes(categoryId)) {
         const { error: eventsError } = await supabase
           .from('event_details')
           .insert({
             announcement_id: data.id,
             event_type: formData.eventType,
             format: formData.eventFormat,
             access_type: formData.eventAccess
           });
           
         if (eventsError) {
           console.error('Error inserting events details:', eventsError);
         }
      }

      // Insert jobs details
      if (JOBS_IDS.includes(categoryId)) {
         const { error: jobsError } = await supabase
           .from('job_details')
           .insert({
             announcement_id: data.id,
             job_type: formData.jobOfferType,
             contract_type: formData.jobContract,
             experience_level: formData.jobExperience,
             work_regime: formData.jobRegime
           });
           
         if (jobsError) {
           console.error('Error inserting jobs details:', jobsError);
         }
      }

      // Note: Premium feature with referral points not yet implemented
      // if (formData.isPremium && referralPoints >= 100) {
      //   const newPoints = referralPoints - 100;
      //   await supabase.from('profiles').update({ referral_points: newPoints }).eq('user_id', user.id);
      //   setReferralPoints(newPoints);
      // }

      // Succès : La nouvelle annonce va apparaître automatiquement grâce au realtime
      toast({
        title: t('createAd.success.title'),
        description: t('createAd.success.description'),
      });

      // Reset form - use type assertion since we're resetting to initial values
      setFormData(prev => ({
        ...prev,
        title: '',
        description: '',
        price: '',
        currency: 'DZD',
        condition: '',
        location: '',
        wilaya: '',
        phones: [''],
        email: '',
        category_id: '',
        subcategory_id: '',
        images: [],
        existingImages: [],
        is_urgent: false,
        isPremium: false,
        expires_at: '',
        
        // Nouveaux champs
        brand: '',
        model: '',
        color: '',
        dimensions: '',
        weight: '',
        purchaseYear: '',

        // Reset Vehicle fields
        vehicleVersion: '',
        vehicleRegistrationMonth: '',
        vehicleRegistrationYear: '',
        vehicleMileage: '',
        vehicleFuelType: '',
        vehicleFiscalPower: '',
        vehicleGearbox: '',
        vehicleEquipment: [],
        vehicleTechnicalControl: '',
        vehicleGreyCardCrossed: '',

        // Reset New Categories
        babyType: '',
        babySize: '',
        babyBrand: '',
        babyConditionDetail: '',
        
        fashionClothingType: '',
        fashionSize: '',
        fashionGender: '',
        fashionMaterial: '',
        fashionBrand: '',
        
        bagType: '',
        bagMaterial: '',
        bagBrand: '',
        
        applianceType: '',
        applianceBrand: '',
        applianceEnergyClass: '',
        applianceConditionDetail: '',
        
        multimediaDeviceType: '',
        multimediaBrand: '',
        multimediaTechnology: '',
        
        gamingProductType: '',
        gamingPlatform: '',
        gamingGenre: '',
        
        // Reset Hardware
        hardwareType: '',
        hardwareBrand: '',
        
        // Reset Agriculture
        agricultureType: '',
        agricultureOrigin: '',
        
        // Reset Parapharmacy
        parapharmacyType: '',
        parapharmacyBrand: '',
        
        // Reset Beauty
        beautyType: '',
        beautyBrand: '',
        beautyGender: '',
        
        // Reset Gastronomy
        gastronomyType: '',
        gastronomyOrigin: '',
        gastronomyDiet: '',
        gastronomyUnit: '',
        gastronomyOrder: '',
        
        // Reset Crafts
        craftsType: '',
        craftsMaterial: '',
        craftsOrigin: '',

        // Reset Real Estate fields
        realEstateType: '',
        realEstateSurface: '',
        realEstateRooms: '',
        realEstateBedrooms: '',
        realEstateBathrooms: '',
        realEstateFloor: '',
        realEstateTotalFloors: '',
        realEstateFurnished: false,
        realEstateParking: false,
        realEstateGarage: false,
        realEstateGarden: false,
        realEstatePool: false,
        realEstateElevator: false,
        realEstateBalcony: false,
        realEstateTerrace: false,
        realEstateView: '',
        realEstateFacades: '',
        realEstateZoning: '',
        realEstateWithPermit: false,
        realEstatePapers: [],
        realEstatePaymentPeriod: '',
        realEstateSpecifications: [],

        hasInvoice: false,
        warrantyDuration: '',
        includedAccessories: [],
        sellingReason: '',
        isNegotiable: false,
        cashDiscount: '',
        exchangePossible: false,
        originalPrice: '',
        deliveryAvailable: false,
        deliveryAreas: [],
        deliveryFees: '',
        deliveryLocationName: '',
        packagingInfo: '',
        availabilityDate: '',
        productVideos: [],
        productVideoFiles: [],
        detailPhotos: [],
        documentation: [],
        
        computerProcessor: '',
        computerRam: '',
        computerStorage: '',
        computerScreenSize: '',
        computerGraphicsCard: '',
        computerOs: '',
        
        phoneBrand: '',
        phoneModel: '',
        phoneStorage: '',
        phoneRam: '',
        phoneScreenSize: '',
        phoneOs: '',
        phoneColor: '',
        
        furnitureMaterial: '',
        furnitureType: '',
        furnitureColor: '',
        furnitureDimensions: '',
        furnitureWeight: ''
      }));

    } catch (error) {
      logger.error('Error creating announcement:', error);
      
      let errorMessage = t('createAd.errors.createFailedDesc') || "Une erreur est survenue lors de la publication de votre annonce";
      
      // Cast explicite pour gérer les erreurs Supabase qui ne sont pas toujours instance de Error
      const err = error as any;

      // Gestion spécifique des erreurs connues
      if (err?.code === '22003' || (err?.message && err?.message.includes('numeric field overflow'))) {
        errorMessage = "Le prix indiqué est trop élevé. Veuillez vérifier le montant ou contacter le support.";
      }
      else if (error instanceof Error) {
        errorMessage = error.message;
        
        // Si c'est une erreur Supabase, ajouter plus de détails
        if ('details' in error && error.details) {
          errorMessage += ` - Détails: ${error.details}`;
        }
        if ('code' in error && error.code) {
          errorMessage += ` (Code: ${error.code})`;
        }
        if ('hint' in error && error.hint) {
          errorMessage += ` - Hint: ${error.hint}`;
        }
      } else if (err?.message) {
        // Cas où ce n'est pas une instance de Error mais un objet avec message (erreur Supabase brute)
        errorMessage = err.message;
        if (err.details) errorMessage += ` - ${err.details}`;
        if (err.code) errorMessage += ` (Code: ${err.code})`;
      }
      
      console.error('Erreur finale affichée:', errorMessage);
      
      toast({
        title: t('createAd.errors.createFailed') || "Erreur",
        description: errorMessage,
        variant: "destructive"
      });
    } finally {
      setLoading(false);
    }
  };

  if (!user) {
    return null; // Will redirect to auth
  }

  return (
    <div className="min-h-screen bg-gradient-to-br from-slate-100 via-slate-200 to-slate-300 dark:from-slate-900 dark:via-slate-900 dark:to-black py-12" dir={isRTL ? 'rtl' : 'ltr'}>
      <div className="container mx-auto px-4">
        <div className="max-w-5xl mx-auto">
          {/* Main Card with Glassmorphism/3D effect */}
          <div className="bg-white/80 dark:bg-slate-800/80 backdrop-blur-xl rounded-[2rem] shadow-[0_20px_60px_-15px_rgba(0,0,0,0.3)] border border-white/50 dark:border-slate-700/50 overflow-hidden relative">
            
            {/* 3D Header */}
            <div className="relative bg-gradient-to-br from-emerald-600 via-emerald-500 to-teal-600 p-8 text-white shadow-lg z-10">
              <div className="absolute inset-0 bg-[url('https://grainy-gradients.vercel.app/noise.svg')] opacity-20 mix-blend-soft-light"></div>
              <div className="absolute -bottom-10 -right-10 w-64 h-64 bg-white/10 rounded-full blur-3xl"></div>
              <div className="relative flex items-center gap-6">
                <div className="bg-white/20 backdrop-blur-md p-4 rounded-2xl shadow-[inset_0_0_20px_rgba(255,255,255,0.2)] border border-white/30 transform transition-transform hover:scale-105 duration-300">
                  <Plus className="h-10 w-10 text-white drop-shadow-md" />
                </div>
                <div>
                  <h1 className="text-4xl font-black tracking-tight drop-shadow-sm">
                    {isEditing ? (t('createAd.editTitle') || 'Modifier l\'annonce') : t('createAd.title')}
                  </h1>
                  <p className="text-emerald-50 mt-2 text-lg font-medium opacity-90">
                    {t('createAd.subtitle')}
                  </p>
                </div>
              </div>
            </div>


            <div className="p-6 md:p-8">
              <div className="bg-green-50 border-green-200 rounded-lg p-4 mb-6">
                <h3 className="font-semibold text-green-900 mb-2 flex items-center gap-2">
                  <AlertCircle className="h-5 w-5" />
                  {t('createAd.tips.title') || 'Conseils pour une annonce réussie :'}
                </h3>
                <ul className="text-sm text-green-800 space-y-1">
                  <li>• {t('createAd.tips.clearTitle') || 'Utilisez un titre clair et précis'}</li>
                  <li>• {t('createAd.tips.qualityPhotos') || 'Ajoutez plusieurs photos de qualité'}</li>
                  <li>• {t('createAd.tips.honestCondition') || 'Décrivez l\'état du produit honnêtement'}</li>
                  <li>• {t('createAd.tips.fairPrice') || 'Indiquez un prix juste et réaliste'}</li>
                  <li>• {t('createAd.tips.preciseLocation') || 'Précisez votre localisation'}</li>
                  <li>• {t('createAd.tips.primaryPhoneLocked')}</li>
                </ul>
              </div>
              
              <form onSubmit={handleSubmit} noValidate>
                <div className="space-y-2 mb-6" dir={isRTL ? 'rtl' : 'ltr'}>
                  <Label
                    htmlFor="title"
                    className="text-lg font-bold flex items-center gap-2 w-full"
                  >
                    {isRTL ? (
                      <div className="flex items-center gap-2 ml-auto">
                        <span className="text-slate-700 dark:text-slate-200">{t('createAd.title')}</span>
                        <Plus className="h-5 w-5 text-emerald-600" />
                        <span
                          dir="ltr"
                          className={`text-sm font-medium px-2 py-0.5 rounded-md ${formData.title.length > 90 ? 'bg-red-100 text-red-600' : 'bg-slate-100 text-slate-600 dark:bg-slate-800 dark:text-slate-400'}`}
                        >
                          {formData.title.length}/100
                        </span>
                      </div>
                    ) : (
                      <>
                        <div className="flex items-center gap-2">
                          <Plus className="h-5 w-5 text-emerald-600" />
                          <span className="text-slate-700 dark:text-slate-200">{t('createAd.title')}</span>
                        </div>
                        <span
                          dir="ltr"
                          className={`text-sm font-medium px-2 py-0.5 rounded-md ml-auto ${formData.title.length > 90 ? 'bg-red-100 text-red-600' : 'bg-slate-100 text-slate-600 dark:bg-slate-800 dark:text-slate-400'}`}
                        >
                          {formData.title.length}/100
                        </span>
                      </>
                    )}
                  </Label>
                  <div className="relative group">
                    <Input
                      id="title"
                      name="title"
                      dir={isRTL ? 'rtl' : 'ltr'}
                      className={`text-base h-14 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300 ${isRTL ? 'text-right' : ''}`}
                      value={formData.title}
                      onChange={handleInputChange}
                      placeholder={t('createAd.titlePlaceholder')}
                      required
                      maxLength={100}
                    />
                  </div>
                </div>
                <div className="space-y-2 mb-6">
                  <Label htmlFor="description" className="text-lg font-bold">
                    <span className="text-slate-700 dark:text-slate-200">{t('createAd.description')}</span>
                  </Label>
                  <div className="text-sm text-muted-foreground mb-1 font-medium bg-slate-100 dark:bg-slate-800 inline-block px-2 py-0.5 rounded-md">
                    {formData.description.length}/3000 {t('createAd.characters')}
                  </div>
                  <Textarea
                    id="description"
                    name="description"
                    value={formData.description}
                    onChange={handleInputChange}
                    placeholder={t('createAd.descriptionPlaceholder')}
                    rows={6}
                    required
                    maxLength={3000}
                    className="text-base rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300 resize-none"
                  />
                </div>
                <div className="grid grid-cols-1 md:grid-cols-2 gap-8">
                  {/* Colonne droite */}
                  <div className="space-y-6 row-start-2 md:row-start-1 md:col-start-2">
                    <div className="flex flex-col sm:flex-row gap-3">
                      <Button 
                        type="button" 
                        variant="secondary" 
                        onClick={handleReset}
                        className="flex-1 gap-2 h-12 rounded-full bg-slate-200 dark:bg-slate-700 hover:bg-slate-300 dark:hover:bg-slate-600 text-slate-900 dark:text-white shadow-[inset_0_2px_6px_rgba(255,255,255,0.7),0_10px_18px_rgba(15,23,42,0.16)] hover:shadow-[inset_0_2px_6px_rgba(255,255,255,0.7),0_14px_22px_rgba(15,23,42,0.18)] active:translate-y-0.5 active:shadow-[inset_0_2px_6px_rgba(255,255,255,0.7),0_6px_14px_rgba(15,23,42,0.14)] transition-all duration-300"
                      >
                        <Trash2 className="h-5 w-5" />
                        {t('createAd.reset') || "Réinitialiser"}
                      </Button>
                      
                      <Button 
                        type="button" 
                        variant="secondary" 
                        onClick={handleManualSave}
                        className="flex-1 gap-2 h-12 rounded-full bg-slate-200 dark:bg-slate-700 hover:bg-slate-300 dark:hover:bg-slate-600 text-slate-900 dark:text-white shadow-[inset_0_2px_6px_rgba(255,255,255,0.7),0_10px_18px_rgba(15,23,42,0.16)] hover:shadow-[inset_0_2px_6px_rgba(255,255,255,0.7),0_14px_22px_rgba(15,23,42,0.18)] active:translate-y-0.5 active:shadow-[inset_0_2px_6px_rgba(255,255,255,0.7),0_6px_14px_rgba(15,23,42,0.14)] transition-all duration-300"
                      >
                        <Save className="h-5 w-5" />
                        {t('createAd.saveDraft') || "Sauvegarder"}
                      </Button>
                    </div>

                    <div className="bg-white dark:bg-slate-800 rounded-2xl shadow-xl overflow-hidden border border-slate-100 dark:border-slate-700 transition-all duration-300 hover:shadow-2xl">
                      <div className="bg-gradient-to-r from-emerald-500/20 to-white dark:from-emerald-500/20 dark:to-slate-900 p-6 relative overflow-hidden [&_*]:!text-slate-900 dark:[&_*]:!text-white">
                        <div className="absolute inset-0 bg-[url('https://grainy-gradients.vercel.app/noise.svg')] opacity-20 mix-blend-soft-light"></div>
                        <div className="flex items-center gap-3 relative z-10">
                          <div className="bg-white/20 backdrop-blur-sm p-3 rounded-xl shadow-inner">
                            <Star className="h-6 w-6 text-white" />
                          </div>
                          <div>
                            <h3 className="text-xl font-bold tracking-tight text-white drop-shadow-sm">{t('createAd.condition')}</h3>
                            {(() => { const s = t('createAd.conditionSubtitle'); return s && s !== 'createAd.conditionSubtitle' ? (<p className="text-blue-100 text-sm font-medium">{s}</p>) : null; })()}
                          </div>
                        </div>
                      </div>
                      
                      <div className="p-6">
                        <Select onValueChange={(value) => handleSelectChange('condition', value)}>
                          <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-green-500 focus:ring-4 focus:ring-green-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-green-500">
                            <SelectValue placeholder={t('createAd.selectCondition') || 'Sélectionner l\'état'} />
                          </SelectTrigger>
                          <SelectContent className="rounded-xl shadow-xl border-slate-100">
                            {conditions.map((condition) => (
                              <SelectItem key={condition.value} value={condition.value}>
                                {condition.label}
                              </SelectItem>
                            ))}
                          </SelectContent>
                        </Select>
                      </div>
                    </div>

                    <div className="bg-white dark:bg-slate-800 rounded-2xl shadow-xl overflow-hidden border border-slate-100 dark:border-slate-700 transition-all duration-300 hover:shadow-2xl">
                      <div className="bg-gradient-to-r from-emerald-500/20 to-white dark:from-emerald-500/20 dark:to-slate-900 p-6 relative overflow-hidden [&_*]:!text-slate-900 dark:[&_*]:!text-white">
                        <div className="absolute inset-0 bg-[url('https://grainy-gradients.vercel.app/noise.svg')] opacity-20 mix-blend-soft-light"></div>
                        <div className="flex items-center gap-3 relative z-10">
                          <div className="bg-white/20 backdrop-blur-sm p-3 rounded-xl shadow-inner">
                            <DollarSign className="h-6 w-6 text-white" />
                          </div>
                          <div>
                            {(() => { const s = t('createAd.priceSubtitle'); return s && s !== 'createAd.priceSubtitle' ? (<p className="text-xl font-bold tracking-tight text-white drop-shadow-sm">{s}</p>) : null; })()}
                          </div>
                        </div>
                      </div>
                      
                      <div className="p-6">
                        <div className="grid grid-cols-3 gap-4">
                          <div className="col-span-2 space-y-2">
                            <Input
                              id="price"
                              name="price"
                              type="number"
                              value={formData.price}
                              onChange={handleInputChange}
                              placeholder="0"
                              disabled={formData.isNegotiable}
                              required={!formData.isNegotiable}
                              className="text-lg h-14 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300 font-bold text-slate-800 dark:text-slate-100"
                            />
                            {/* Switch Prix à négocier */}
                            <div className="flex items-center justify-between p-4 bg-slate-50 dark:bg-slate-900/50 rounded-xl border-2 border-slate-100 dark:border-slate-700 transition-all duration-300 hover:border-emerald-200 mt-3">
                              <Label htmlFor="isNegotiable" className="text-base font-bold text-slate-700 dark:text-slate-200 cursor-pointer">
                                {t('createAd.priceNegotiable') || 'Prix à négocier'}
                              </Label>
                              <Switch
                                id="isNegotiable"
                                checked={formData.isNegotiable}
                                onCheckedChange={(checked) => {
                                  const isNegotiable = checked === true;
                                  setFormData(prev => ({
                                    ...prev,
                                    isNegotiable,
                                    price: isNegotiable ? '' : prev.price
                                  }));
                                }}
                                className="data-[state=checked]:bg-emerald-500 data-[state=unchecked]:bg-slate-400"
                              />
                            </div>
                            {/* Switch Échange possible */}
                            <div className="flex items-center justify-between p-4 bg-slate-50 dark:bg-slate-900/50 rounded-xl border-2 border-slate-100 dark:border-slate-700 transition-all duration-300 hover:border-green-500 mt-3">
                              <Label htmlFor="exchangePossible" className="text-base font-bold text-slate-700 dark:text-slate-200 cursor-pointer">
                                {t('createAd.exchangePossible') || 'Échange possible'}
                              </Label>
                              <Switch
                                id="exchangePossible"
                                checked={formData.exchangePossible}
                                onCheckedChange={(checked) => {
                                  setFormData(prev => ({
                                    ...prev,
                                    exchangePossible: checked === true
                                  }));
                                }}
                                className="data-[state=checked]:bg-green-600 data-[state=unchecked]:bg-slate-400"
                              />
                            </div>
                          </div>
                          <div className="space-y-2">
                            <Select onValueChange={(value) => handleSelectChange('currency', value)} defaultValue="DZD">
                              <SelectTrigger className="text-lg h-14 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300 font-bold">
                                <SelectValue />
                              </SelectTrigger>
                              <SelectContent className="rounded-xl shadow-xl border-slate-100">
                                <SelectItem value="DZD" className="font-bold">DZD</SelectItem>
                                <SelectItem value="EUR" className="font-bold">EUR</SelectItem>
                              <SelectItem value="USD" className="font-bold">USD</SelectItem>
                              </SelectContent>
                            </Select>
                        </div>
                      </div>
                    </div>

                  </div>

                    <div className="bg-white dark:bg-slate-800 rounded-2xl shadow-xl overflow-hidden mt-8 transition-all duration-300 hover:shadow-2xl border border-slate-100 dark:border-slate-700">
                      <div className="bg-gradient-to-r from-emerald-500/20 to-white dark:from-emerald-500/20 dark:to-slate-900 p-6 relative overflow-hidden [&_*]:!text-slate-900 dark:[&_*]:!text-white">
                        <div className="absolute inset-0 bg-[url('https://grainy-gradients.vercel.app/noise.svg')] opacity-20 mix-blend-soft-light"></div>
                        <div className="flex items-center gap-3 relative z-10">
                          <div className="bg-white/20 backdrop-blur-sm p-3 rounded-xl shadow-inner">
                            <Truck className="h-8 w-8 text-white" />
                          </div>
                          <div>
                            <h3 className="text-xl font-bold tracking-tight text-white drop-shadow-sm">{t('createAd.delivery') || 'Livraison'}</h3>
                          </div>
                        </div>
                      </div>

                      <div className="p-6 md:p-8 space-y-6">
                        <div className="space-y-2">
                          <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.delivery') || 'Livraison'}</Label>
                          <Select
                            onValueChange={(value) => {
                              const nextMethod =
                                value === 'hand_to_hand' || value === 'delivery_agency' || value === 'mobile_courier'
                                  ? value
                                  : 'hand_to_hand';
                              setFormData(prev => ({
                                ...prev,
                                deliveryMethod: nextMethod,
                                deliveryAvailable: nextMethod !== 'hand_to_hand',
                                deliveryLocationName: nextMethod === 'delivery_agency' ? prev.deliveryLocationName : ''
                              }));
                            }}
                            value={formData.deliveryMethod}
                          >
                            <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-green-500 focus:ring-4 focus:ring-green-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-green-500">
                              <SelectValue placeholder={t('createAd.delivery.select') || 'Choisir une option'} />
                            </SelectTrigger>
                            <SelectContent className="rounded-xl shadow-xl border-slate-100">
                              <SelectItem value="hand_to_hand">{t('createAd.delivery.methods.handToHand') || 'Remise en main propre'}</SelectItem>
                              <SelectItem value="delivery_agency">{t('createAd.delivery.methods.deliveryAgency') || 'Agence de livraison'}</SelectItem>
                              <SelectItem value="mobile_courier">{t('createAd.delivery.methods.mobileCourier') || 'Livreur ambulant'}</SelectItem>
                            </SelectContent>
                          </Select>
                        </div>

                        {formData.deliveryMethod === 'delivery_agency' && (
                          <div className="space-y-2">
                            <Label htmlFor="deliveryLocationName" className="text-base font-semibold text-slate-700 dark:text-slate-300">
                              {t('createAd.delivery.agencyName') || "Nom de l'agence"}
                            </Label>
                            <Input
                              id="deliveryLocationName"
                              name="deliveryLocationName"
                              value={formData.deliveryLocationName}
                              onChange={handleInputChange}
                              placeholder={t('createAd.delivery.agencyPlaceholder') || "Ex: Yalidine, ZR Express..."}
                              className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-green-500 focus:ring-4 focus:ring-green-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-green-500"
                            />
                          </div>
                        )}
                      </div>
                    </div>

                    <div className="bg-white dark:bg-slate-800 rounded-2xl shadow-xl overflow-hidden mt-8 transition-all duration-300 hover:shadow-2xl border border-slate-100 dark:border-slate-700">
                      <div className="bg-gradient-to-r from-emerald-500/20 to-white dark:from-emerald-500/20 dark:to-slate-900 p-6 relative overflow-hidden [&_*]:!text-slate-900 dark:[&_*]:!text-white">
                        <div className="absolute inset-0 bg-[url('https://grainy-gradients.vercel.app/noise.svg')] opacity-20 mix-blend-soft-light"></div>
                        <div className="flex items-center gap-3 relative z-10">
                          <div className="bg-white/20 backdrop-blur-sm p-3 rounded-xl shadow-inner">
                            <MapPin className="h-8 w-8 text-white" />
                          </div>
                          <div>
                            <h3 className="text-xl font-bold tracking-tight text-white drop-shadow-sm">{t('createAd.location')}</h3>
                            {(() => { const s = t('createAd.locationSubtitle'); return s && s !== 'createAd.locationSubtitle' ? (<p className="text-emerald-100 text-sm font-medium">{s}</p>) : null; })()}
                          </div>
                        </div>
                      </div>

                      <div className="p-6 md:p-8 space-y-6">
                        <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                          <div className="space-y-2">
                            <Label htmlFor="wilaya" className="text-base font-semibold text-slate-700 dark:text-slate-300"><span className="text-red-600 font-bold">*</span> {t('createAd.wilaya')}</Label>
                            <Select onValueChange={(value) => {
                              handleSelectChange('wilaya', value);
                              setFormData(prev => ({ ...prev, commune: '' }));
                              setMissingRequired(prev => ({ ...prev, wilaya: false }));
                            }} value={formData.wilaya}>
                              <SelectTrigger className={`text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300 ${missingRequired.wilaya ? 'border-red-500 focus:border-red-600 focus:ring-red-500/30 ring-4 ring-red-500/20 animate-pulse' : ''}`}>
                                <SelectValue placeholder={t('createAd.selectWilaya')} />
                              </SelectTrigger>
                              <SelectContent className="rounded-xl shadow-xl border-slate-100">
                                {wilayas.map((wilaya) => (
                                  <SelectItem key={wilaya.code} value={wilaya.name}>
                                    {wilaya.code.toString().padStart(2, '0')} - {isRTL ? (wilaya.name_ar || wilaya.name) : wilaya.name}
                                  </SelectItem>
                                ))}
                              </SelectContent>
                            </Select>
                          </div>
                          <div className="space-y-2">
                            <Label htmlFor="commune" className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.commune') || 'Commune'}</Label>
                            {(() => {
                              const selectedWilayaObj = wilayas.find(w => w.name === formData.wilaya);
                              const availableCommunes = selectedWilayaObj ? communes[selectedWilayaObj.code.toString()] : undefined;
                              
                              if (availableCommunes && availableCommunes.length > 0) {
                                return (
                                  <Select onValueChange={(value) => handleSelectChange('commune', value)} value={formData.commune}>
                                    <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300">
                                      <SelectValue placeholder={t('createAd.communePlaceholder') || 'Sélectionner une commune'} />
                                    </SelectTrigger>
                                    <SelectContent className="rounded-xl shadow-xl border-slate-100">
                                      {availableCommunes.map((commune) => (
                                        <SelectItem key={commune.fr} value={commune.fr}>
                                          {isRTL ? (commune.ar || commune.fr) : commune.fr}
                                        </SelectItem>
                                      ))}
                                    </SelectContent>
                                  </Select>
                                );
                              }
                              
                              return (
                                <Input
                                  id="commune"
                                  name="commune"
                                  value={formData.commune}
                                  onChange={handleInputChange}
                                  placeholder={t('createAd.communePlaceholder') || 'Votre commune'}
                                  className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300"
                                />
                              );
                            })()}
                          </div>
                        </div>

                        <div className="space-y-2">
                          <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.location') || 'Adresse'}</Label>
                          <div className="space-y-3">
                            <Input
                              id="location"
                              name="location"
                              value={formData.location}
                              onChange={handleInputChange}
                              placeholder={t('createAd.addressLine1Placeholder') || 'Adresse (Rue, Boulevard...)'}
                              className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300"
                            />
                            <Input
                              id="addressLine2"
                              name="addressLine2"
                              value={formData.addressLine2}
                              onChange={handleInputChange}
                              placeholder={t('createAd.addressLine2Placeholder') || 'Complément d\'adresse (Bâtiment, Étage...)'}
                              className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300"
                            />
                          </div>
                          <div className="mt-4 bg-slate-50 dark:bg-slate-900/50 p-4 rounded-xl border border-slate-100 dark:border-slate-700">
                            <Label className="text-sm font-semibold text-slate-600 dark:text-slate-400 mb-2 block">{t('createAd.mapPositionLabel')}</Label>
                            <GeolocationPicker 
                              onLocationSelect={handleLocationSelect}
                              selectedLocation={formData.location}
                            />
                          </div>
                          {formData.latitude && formData.longitude && (
                            <p className="text-sm text-emerald-600 flex items-center gap-2 mt-2 font-medium bg-emerald-50 dark:bg-emerald-900/20 p-2 rounded-lg border border-emerald-100 dark:border-emerald-900/30">
                               <Check className="h-4 w-4" /> Position GPS précise enregistrée
                            </p>
                          )}
                        </div>
                      </div>
                    </div>
                    {/* Contact */}
                    <div className="bg-white dark:bg-slate-800 rounded-2xl shadow-xl overflow-hidden border border-slate-100 dark:border-slate-700 transition-all duration-300 hover:shadow-2xl">
                      <div className="bg-gradient-to-r from-emerald-500/20 to-white dark:from-emerald-500/20 dark:to-slate-900 p-6 relative overflow-hidden [&_*]:!text-slate-900 dark:[&_*]:!text-white">
                        <div className="absolute inset-0 bg-[url('https://grainy-gradients.vercel.app/noise.svg')] opacity-20 mix-blend-soft-light"></div>
                        <div className="flex items-center gap-3 relative z-10">
                          <div className="bg-white/20 backdrop-blur-sm p-3 rounded-xl shadow-inner">
                            <Phone className="h-6 w-6 text-white" />
                          </div>
                          <div>
                            <h3 className="text-xl font-bold tracking-tight text-white drop-shadow-sm">{t('createAd.contactInfo') || 'Contact'}</h3>
                            {(() => { const s = t('createAd.contactSubtitle'); return s && s !== 'createAd.contactSubtitle' ? (<p className="text-cyan-100 text-sm font-medium">{s}</p>) : null; })()}
                          </div>
                        </div>
                      </div>
                      
                      <div className="p-6 space-y-6">
                        <div className="space-y-4">
                          <Label className="text-base font-semibold text-slate-700 dark:text-slate-300 flex items-center gap-2">
                             {t('createAd.phone')} <span className="text-red-500">*</span>
                          </Label>
                          {formData.phones.map((phone, index) => (
                            <div className="space-y-2" key={index}>
                              <div className="relative group">
                                <Phone className="absolute left-4 top-1/2 transform -translate-y-1/2 h-5 w-5 text-slate-400 group-focus-within:text-emerald-600 transition-colors" />
                                <Input
                                  id={`phones-${index}`}
                                  name={`phones[${index}]`}
                                  value={phone}
                                  onChange={(e) => {
                                    if (isEditing && index === 0) return;
                                    handleInputChange(e);
                                    if (index === 0 && missingRequired.phone) setMissingRequired(prev => ({ ...prev, phone: false }));
                                  }}
                                  placeholder={t('createAd.phonePlaceholder')}
                                  className={`pl-12 h-12 rounded-xl border-2 bg-slate-50 dark:bg-slate-900/50 transition-all duration-300 hover:shadow-md ${
                                    index === 0 && missingRequired.phone ? 'border-red-500 focus:border-red-600 focus:ring-red-500/30 ring-4 ring-red-500/20 animate-pulse' : 'border-slate-100 dark:border-slate-700 focus:border-emerald-500 focus:ring-emerald-500/20 hover:border-emerald-300'
                                  }`}
                                  required={index === 0}
                                  readOnly={isEditing && index === 0}
                                />
                                {formData.phones.length > 1 && !(isEditing && index === 0) && (
                                  <button
                                    type="button"
                                    onClick={() => removePhoneField(index)}
                                    className="absolute top-1/2 -translate-y-1/2 right-3 bg-red-100 text-red-600 hover:bg-red-200 rounded-full w-6 h-6 flex items-center justify-center text-xs transition-colors"
                                    aria-label="remove phone"
                                  >
                                    ×
                                  </button>
                                )}
                              </div>
                              
                              {/* Option WhatsApp */}
                              <div className="flex items-center gap-2 ml-1">
                                <Switch
                                  id={`whatsapp-${index}`}
                                  checked={formData.whatsappStatus?.[index] || false}
                                  onCheckedChange={(checked) => {
                                    setFormData(prev => {
                                      const nextStatus = [...(prev.whatsappStatus || [false])];
                                      nextStatus[index] = checked;
                                      return { ...prev, whatsappStatus: nextStatus };
                                    });
                                  }}
                                  className="scale-75 data-[state=checked]:bg-green-500"
                                />
                                <Label htmlFor={`whatsapp-${index}`} className="text-xs font-medium text-slate-500 dark:text-slate-400 cursor-pointer flex items-center gap-1">
                                  <svg className="w-3 h-3 fill-green-500" viewBox="0 0 24 24"><path d="M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.5-.669-.51-.173-.008-.371-.01-.57-.01-.198 0-.52.074-.792.372-.272.297-1.04 1.016-1.04 2.479 0 1.462 1.065 2.875 1.213 3.074.149.198 2.096 3.2 5.077 4.487.709.306 1.262.489 1.694.625.712.227 1.36.195 1.871.118.571-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347m-5.421 7.403h-.004a9.87 9.87 0 01-5.031-1.378l-.361-.214-3.741.982.998-3.648-.235-.374a9.86 9.86 0 01-1.51-5.26c.001-5.45 4.436-9.884 9.888-9.884 2.64 0 5.122 1.03 6.988 2.898a9.825 9.825 0 012.893 6.994c-.003 5.45-4.437 9.884-9.885 9.884m8.413-18.297A11.815 11.815 0 0012.05 0C5.495 0 .16 5.335.157 11.892c0 2.096.547 4.142 1.588 5.945L.057 24l6.305-1.654a11.882 11.882 0 005.683 1.448h.005c6.554 0 11.89-5.335 11.893-11.893a11.821 11.821 0 00-3.48-8.413Z"/></svg>
                                  {t('createAd.availableOnWhatsApp') || 'Disponible sur WhatsApp'}
                                </Label>
                              </div>

                              {index === 0 && missingRequired.phone && (
                                <p className="text-xs text-red-500 font-medium ml-1">{t('createAd.phoneRequired') || 'Numéro de téléphone requis'}</p>
                              )}
                            </div>
                          ))}
                          {formData.phones.length < 3 && (
                            <Button type="button" variant="outline" onClick={addPhoneField} className="h-10 border-dashed border-2 hover:border-emerald-500 hover:text-emerald-600 transition-all">
                              + {t('createAd.addAnotherPhone') || 'Ajouter un autre numéro'}
                            </Button>
                          )}
                          
                          <div className="space-y-2 pt-2">
                            <Label htmlFor="landline" className="text-base font-semibold text-slate-700 dark:text-slate-300 flex items-center gap-2">
                              {t('createAd.landline') || 'Téléphone Fixe'} <span className="text-slate-400 font-normal text-sm">(facultatif)</span>
                            </Label>
                            <div className="relative group">
                              <Phone className="absolute left-4 top-1/2 transform -translate-y-1/2 h-5 w-5 text-slate-400 group-focus-within:text-emerald-600 transition-colors" />
                              <Input
                                id="landline"
                                name="landline"
                                value={formData.landline}
                                onChange={handleInputChange}
                                placeholder={t('createAd.landlinePlaceholder') || 'Ex: 021 XX XX XX'}
                                className="pl-12 h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300"
                              />
                            </div>
                          </div>
                          
                          <div className="space-y-2 pt-2">
                            <Label htmlFor="email" className="text-base font-semibold text-slate-700 dark:text-slate-300 flex items-center gap-2">
                              {t('createAd.email')}
                            </Label>
                            <div className="relative group">
                              <Mail className="absolute left-4 top-1/2 transform -translate-y-1/2 h-5 w-5 text-slate-400 group-focus-within:text-emerald-600 transition-colors" />
                              <Input
                                id="email"
                                name="email"
                                type="email"
                                value={formData.email}
                                onChange={handleInputChange}
                                placeholder="exemple@email.com"
                                className="pl-12 h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300"
                              />
                            </div>
                          </div>

                          <div className="space-y-2 pt-2">
                            <Label htmlFor="website" className="text-base font-semibold text-slate-700 dark:text-slate-300 flex items-center gap-2">
                              {t('createAd.website') || 'Site web'} <span className="text-slate-400 font-normal text-sm">({t('createAd.optional') || 'Facultatif'})</span>
                            </Label>
                            <div className="relative group">
                              <Globe className="absolute left-4 top-1/2 transform -translate-y-1/2 h-5 w-5 text-slate-400 group-focus-within:text-emerald-600 transition-colors" />
                              <Input
                                id="website"
                                name="website"
                                type="url"
                                value={formData.website}
                                onChange={handleInputChange}
                                placeholder={t('createAd.websitePlaceholder') || 'https://exemple.com'}
                                className="pl-12 h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300"
                              />
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>

                  {/* Colonne gauche */}
                  <div className="space-y-6 row-start-1 md:row-start-1 md:col-start-1">
                    <div className="bg-white dark:bg-slate-800 p-6 rounded-2xl shadow-[0_8px_30px_rgb(0,0,0,0.04)] border border-slate-100 dark:border-slate-700 space-y-4">
                      <div className="space-y-2">
                        <Label htmlFor="category_id" className="text-lg font-bold">
                          <span className="text-slate-700 dark:text-slate-200">{t('createAd.category')}</span>
                          <span className="ml-2 text-red-600 animate-pulse font-bold text-sm uppercase tracking-wider">
                            {t('createAd.categoryRequiredLabel')}
                          </span>
                        </Label>
                        <Select onValueChange={(value) => {
                          handleSelectChange('category_id', value);
                          _handleCategoryChange(value);
                        }} value={formData.category_id}>
                          <SelectTrigger className="text-base h-14 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300">
                            <SelectValue placeholder={t('createAd.selectCategory')} />
                          </SelectTrigger>
                          <SelectContent className="rounded-xl shadow-2xl border-slate-100 min-w-[240px]">
                            {categories.map((category) => (
                              <SelectItem 
                                key={category.id} 
                                value={category.id} 
                                className="h-10 cursor-pointer transition-colors duration-200"
                                onMouseEnter={() => setHoveredCategoryId(category.id)}
                                onMouseLeave={() => setHoveredCategoryId(null)}
                              >
                                {category.slug === 'education-loisirs' ? t('categories.education-loisirs') : category.name}
                              </SelectItem>
                            ))}
                          </SelectContent>
                        </Select>
                      </div>
                      
                      {subcategories.length > 0 && (
                        <div className="space-y-2 animate-in slide-in-from-top-2 duration-300">
                          <Label className="text-lg font-bold">
                            <span className="text-slate-700 dark:text-slate-200">{t('createAd.subcategory') || 'Sous-catégorie'}</span>
                            <span className="ml-2 text-slate-500 dark:text-slate-400 font-bold text-sm uppercase tracking-wider">
                              ({t('createAd.optional') || 'Facultatif'})
                            </span>
                          </Label>
                          <Select onValueChange={(value) => {
                            handleSelectChange('subcategory_id', value);
                          }} value={formData.subcategory_id}>
                            <SelectTrigger className="text-base h-14 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300">
                              <SelectValue placeholder={t('createAd.selectSubcategory') || 'Sélectionner une sous-catégorie'} />
                            </SelectTrigger>
                            <SelectContent className="rounded-xl shadow-2xl border-slate-100">
                              {subcategories.map((subcategory) => (
                                <SelectItem key={subcategory.id} value={subcategory.id} className="h-10 cursor-pointer">
                                  {subcategory.name}
                                </SelectItem>
                              ))}
                            </SelectContent>
                          </Select>
                        </div>
                      )}
                    </div>

                    {COMPUTER_IDS.includes(formData.category_id) && 
                     !['smartphones', 'telephones-classiques-fixes', 'tablettes-appareils-mobiles', 'accessoires-telephones', 'batteries-charge', 'audio-mobile'].includes(formData.subcategory_id) && 
                     !PHONE_IDS.includes(formData.category_id) && (
                      <div className="bg-white dark:bg-slate-800 rounded-2xl shadow-xl overflow-hidden mt-8 transition-all duration-300 hover:shadow-2xl border border-slate-100 dark:border-slate-700">
                        <div className="bg-gradient-to-r from-emerald-500/20 to-white dark:from-emerald-500/20 dark:to-slate-900 p-6 relative overflow-hidden [&_*]:!text-slate-900 dark:[&_*]:!text-white">
                          <div className="flex items-center gap-3 relative z-10">
                            <h2 className="text-2xl font-bold tracking-tight text-white drop-shadow-sm">{t('createAd.computer.title')}</h2>
                          </div>
                        </div>
                        <div className="p-6 md:p-8 grid grid-cols-1 md:grid-cols-2 gap-6">
                           <div className="space-y-2">
                             <Label>{t('createAd.computer.processor')}</Label>
                             <Input name="computerProcessor" value={formData.computerProcessor} onChange={handleInputChange} placeholder="Ex: Intel Core i7 12700K" />
                           </div>
                           <div className="space-y-2">
                             <Label>{t('createAd.specs.memory')}</Label>
                             <Input name="computerRam" value={formData.computerRam} onChange={handleInputChange} placeholder="Ex: 16 GB DDR4" />
                           </div>
                           <div className="space-y-2">
                             <Label>{t('createAd.specs.storage')}</Label>
                             <Input name="computerStorage" value={formData.computerStorage} onChange={handleInputChange} placeholder="Ex: 1 TB SSD" />
                           </div>
                           <div className="space-y-2">
                             <Label>{t('createAd.computer.gpu')}</Label>
                             <Input name="computerGraphicsCard" value={formData.computerGraphicsCard} onChange={handleInputChange} placeholder="Ex: NVIDIA RTX 3060" />
                           </div>
                           <div className="space-y-2">
                             <Label>{t('createAd.specs.screenSize')}</Label>
                             <Input name="computerScreenSize" value={formData.computerScreenSize} onChange={handleInputChange} placeholder="Ex: 15.6 pouces" />
                           </div>
                           <div className="space-y-2">
                             <Label>{t('createAd.specs.os')}</Label>
                             <Input name="computerOs" value={formData.computerOs} onChange={handleInputChange} placeholder="Ex: Windows 11" />
                           </div>
                        </div>
                      </div>
                    )}

                    {/* Détails Téléphonie (inclut les smartphones dans informatique) */}
                    {(PHONE_IDS.includes(formData.category_id) || (formData.category_id === 'informatique-electronique' && ['smartphones', 'telephones-classiques-fixes', 'tablettes-appareils-mobiles'].includes(formData.subcategory_id))) && (
                      <div className="bg-white dark:bg-slate-800 rounded-2xl shadow-xl overflow-hidden mt-8 transition-all duration-300 hover:shadow-2xl border border-slate-100 dark:border-slate-700">
                        <div className="bg-gradient-to-r from-emerald-500/20 to-white dark:from-emerald-500/20 dark:to-slate-900 p-6 relative overflow-hidden [&_*]:!text-slate-900 dark:[&_*]:!text-white">
                          <div className="flex items-center gap-3 relative z-10">
                            <h2 className="text-2xl font-bold tracking-tight text-white drop-shadow-sm">{t('createAd.phone.title')}</h2>
                          </div>
                        </div>
                        <div className="p-6 md:p-8 grid grid-cols-1 md:grid-cols-2 gap-6">
                           <div className="space-y-2">
                             <Label>{t('createAd.brand')}</Label>
                             <Input name="phoneBrand" value={formData.phoneBrand} onChange={handleInputChange} placeholder="Ex: Apple, Samsung" />
                           </div>
                           <div className="space-y-2">
                             <Label>{t('createAd.model')}</Label>
                             <Input name="phoneModel" value={formData.phoneModel} onChange={handleInputChange} placeholder="Ex: iPhone 14 Pro" />
                           </div>
                           <div className="space-y-2">
                             <Label>{t('createAd.specs.storage')}</Label>
                             <Input name="phoneStorage" value={formData.phoneStorage} onChange={handleInputChange} placeholder="Ex: 128 GB" />
                           </div>
                           <div className="space-y-2">
                             <Label>{t('createAd.specs.ram')}</Label>
                             <Input name="phoneRam" value={formData.phoneRam} onChange={handleInputChange} placeholder="Ex: 8 GB" />
                           </div>
                           <div className="space-y-2">
                             <Label>{t('createAd.specs.screenSize')}</Label>
                             <Input name="phoneScreenSize" value={formData.phoneScreenSize} onChange={handleInputChange} placeholder="Ex: 6.1 pouces" />
                           </div>
                           <div className="space-y-2">
                             <Label>{t('createAd.color')}</Label>
                             <Input name="phoneColor" value={formData.phoneColor} onChange={handleInputChange} placeholder="Ex: Noir Sidéral" />
                           </div>
                        </div>
                      </div>
                    )}

                    {/* Détails Mobilier */}
                    {HOME_IDS.includes(formData.category_id) && (
                      <div className="bg-white dark:bg-slate-800 rounded-2xl shadow-xl overflow-hidden mt-8 transition-all duration-300 hover:shadow-2xl border border-slate-100 dark:border-slate-700">
                        <div className="bg-gradient-to-r from-emerald-500/20 to-white dark:from-emerald-500/20 dark:to-slate-900 p-6 relative overflow-hidden [&_*]:!text-slate-900 dark:[&_*]:!text-white">
                          <div className="flex items-center gap-3 relative z-10">
                            <h2 className="text-2xl font-bold tracking-tight text-white drop-shadow-sm">{t('createAd.furniture.title')}</h2>
                          </div>
                        </div>
                        <div className="p-6 md:p-8 grid grid-cols-1 md:grid-cols-2 gap-6">
                           <div className="space-y-2">
                             <Label>{t('createAd.furniture.type')}</Label>
                             <Input name="furnitureType" value={formData.furnitureType} onChange={handleInputChange} placeholder="Ex: Canapé, Table, Armoire" />
                           </div>
                           <div className="space-y-2">
                             <Label>{t('createAd.furniture.material')}</Label>
                             <Input name="furnitureMaterial" value={formData.furnitureMaterial} onChange={handleInputChange} placeholder="Ex: Bois, Cuir, Métal" />
                           </div>
                           <div className="space-y-2">
                             <Label>{t('createAd.color')}</Label>
                             <Input name="furnitureColor" value={formData.furnitureColor} onChange={handleInputChange} placeholder="Ex: Chêne clair, Blanc" />
                           </div>
                           <div className="space-y-2">
                             <Label>{t('createAd.furniture.dimensions')}</Label>
                             <Input name="furnitureDimensions" value={formData.furnitureDimensions} onChange={handleInputChange} placeholder="Ex: 200x100x75 cm" />
                           </div>
                        </div>
                      </div>
                    )}

                    {/* Détails Vélo */}
                    {BIKE_IDS.includes(formData.category_id) && (
                      <div className="bg-white dark:bg-slate-800 rounded-2xl shadow-xl overflow-hidden mt-8 transition-all duration-300 hover:shadow-2xl border border-slate-100 dark:border-slate-700">
                        <div className="bg-gradient-to-r from-emerald-500/20 to-white dark:from-emerald-500/20 dark:to-slate-900 p-6 relative overflow-hidden [&_*]:!text-slate-900 dark:[&_*]:!text-white">
                          <div className="flex items-center gap-3 relative z-10">
                            <h2 className="text-2xl font-bold tracking-tight text-white drop-shadow-sm">{t('createAd.bike.title') || 'Détails Vélo'}</h2>
                          </div>
                        </div>
                        <div className="p-6 md:p-8 grid grid-cols-1 md:grid-cols-2 gap-6">
                           <div className="space-y-2">
                             <Label>{t('createAd.bike.type') || 'Type de vélo'}</Label>
                             <Input name="bikeType" value={formData.bikeType} onChange={handleInputChange} placeholder="Ex: VTT, Route, Ville" />
                           </div>
                           <div className="space-y-2">
                             <Label>{t('createAd.brand') || 'Marque'}</Label>
                             <Input name="brand" value={formData.brand} onChange={handleInputChange} placeholder="Ex: B'Twin, Giant" />
                           </div>
                           <div className="space-y-2">
                             <Label>{t('createAd.model') || 'Modèle'}</Label>
                             <Input name="model" value={formData.model} onChange={handleInputChange} placeholder="Ex: Rockrider 520" />
                           </div>
                           <div className="space-y-2">
                             <Label>{t('createAd.bike.frameSize') || 'Taille du cadre'}</Label>
                             <Input name="bikeFrameSize" value={formData.bikeFrameSize} onChange={handleInputChange} placeholder="Ex: M, L, 54cm" />
                           </div>
                           <div className="space-y-2">
                             <Label>{t('createAd.bike.wheelSize') || 'Taille des roues'}</Label>
                             <Input name="bikeWheelSize" value={formData.bikeWheelSize} onChange={handleInputChange} placeholder="Ex: 26 pouces, 29 pouces" />
                           </div>
                           <div className="space-y-2">
                             <Label>{t('createAd.bike.frameMaterial') || 'Matériau du cadre'}</Label>
                             <Input name="bikeFrameMaterial" value={formData.bikeFrameMaterial} onChange={handleInputChange} placeholder="Ex: Aluminium, Carbone" />
                           </div>
                           <div className="flex items-center justify-between bg-slate-50 dark:bg-slate-900/50 p-3 rounded-lg border border-slate-100 dark:border-slate-700 hover:border-emerald-300 transition-colors">
                             <Label htmlFor="bikeElectric" className="cursor-pointer font-medium text-slate-700 dark:text-slate-200">{t('createAd.bike.electric') || 'Vélo électrique'}</Label>
                             <Switch 
                                id="bikeElectric" 
                                checked={formData.bikeElectric} 
                                onCheckedChange={(checked) => setFormData(prev => ({ ...prev, bikeElectric: !!checked }))} 
                                className="data-[state=checked]:bg-emerald-500 data-[state=unchecked]:bg-slate-400"
                             />
                           </div>
                           <div className="flex items-center justify-between bg-slate-50 dark:bg-slate-900/50 p-3 rounded-lg border border-slate-100 dark:border-slate-700 hover:border-emerald-300 transition-colors">
                             <Label htmlFor="bikeMotorized" className="cursor-pointer font-medium text-slate-700 dark:text-slate-200">{t('createAd.bike.motorized') || 'Vélo motorisé'}</Label>
                             <Switch 
                                id="bikeMotorized" 
                                checked={formData.bikeMotorized} 
                                onCheckedChange={(checked) => setFormData(prev => ({ ...prev, bikeMotorized: !!checked }))} 
                                className="data-[state=checked]:bg-emerald-500 data-[state=unchecked]:bg-slate-400"
                             />
                           </div>
                        </div>
                      </div>
                    )}

                    {/* Détails Bateau */}
                    {BOAT_IDS.includes(formData.category_id) && (
                      <div className="bg-white dark:bg-slate-800 rounded-2xl shadow-xl overflow-hidden mt-8 transition-all duration-300 hover:shadow-2xl border border-slate-100 dark:border-slate-700">
                        <div className="bg-gradient-to-r from-emerald-500/20 to-white dark:from-emerald-500/20 dark:to-slate-900 p-6 relative overflow-hidden [&_*]:!text-slate-900 dark:[&_*]:!text-white">
                          <div className="flex items-center gap-3 relative z-10">
                            <h2 className="text-2xl font-bold tracking-tight text-white drop-shadow-sm">{t('createAd.boat.title') || 'Détails Bateau'}</h2>
                          </div>
                        </div>
                        <div className="p-6 md:p-8 grid grid-cols-1 md:grid-cols-2 gap-6">
                           <div className="space-y-2">
                             <Label>{t('createAd.boat.type') || 'Type de bateau'}</Label>
                             <Input name="boatType" value={formData.boatType} onChange={handleInputChange} placeholder="Ex: Voilier, Moteur, Zodiac" />
                           </div>
                           <div className="space-y-2">
                             <Label>{t('createAd.brand') || 'Marque'}</Label>
                             <Input name="brand" value={formData.brand} onChange={handleInputChange} placeholder="Ex: Beneteau, Yamaha" />
                           </div>
                           <div className="space-y-2">
                             <Label>{t('createAd.model') || 'Modèle'}</Label>
                             <Input name="model" value={formData.model} onChange={handleInputChange} placeholder="Ex: Oceanis 35" />
                           </div>
                           <div className="space-y-2">
                             <Label>{t('createAd.boat.length') || 'Longueur (m)'}</Label>
                             <Input name="boatLength" value={formData.boatLength} onChange={handleInputChange} placeholder="Ex: 10.5" />
                           </div>
                           <div className="space-y-2">
                             <Label>{t('createAd.boat.width') || 'Largeur (m)'}</Label>
                             <Input name="boatWidth" value={formData.boatWidth} onChange={handleInputChange} placeholder="Ex: 3.5" />
                           </div>
                           <div className="space-y-2">
                             <Label>{t('createAd.boat.motorType') || 'Type de moteur'}</Label>
                             <Input name="boatMotorType" value={formData.boatMotorType} onChange={handleInputChange} placeholder="Ex: Hors-bord, In-board" />
                           </div>
                           <div className="space-y-2">
                             <Label>{t('createAd.boat.motorPower') || 'Puissance moteur (CV)'}</Label>
                             <Input name="boatMotorPower" value={formData.boatMotorPower} onChange={handleInputChange} placeholder="Ex: 150 CV" />
                           </div>
                           <div className="space-y-2">
                             <Label>{t('createAd.boat.hours') || 'Heures moteur'}</Label>
                             <Input name="boatHours" value={formData.boatHours} onChange={handleInputChange} placeholder="Ex: 500 h" />
                           </div>
                           <div className="flex items-center justify-between bg-slate-50 dark:bg-slate-900/50 p-3 rounded-lg border border-slate-100 dark:border-slate-700 hover:border-emerald-300 transition-colors">
                             <Label htmlFor="boatCabin" className="cursor-pointer font-medium text-slate-700 dark:text-slate-200">{t('createAd.boat.cabin') || 'Cabine'}</Label>
                             <Switch 
                                id="boatCabin" 
                                checked={formData.boatCabin} 
                                onCheckedChange={(checked) => setFormData(prev => ({ ...prev, boatCabin: !!checked }))} 
                                className="data-[state=checked]:bg-emerald-500 data-[state=unchecked]:bg-slate-400"
                             />
                           </div>
                        </div>
                      </div>
                    )}

                    {/* Détails Éducation */}
                    {EDUCATION_IDS.includes(formData.subcategory_id) && (
                      <div className="bg-white dark:bg-slate-800 rounded-2xl shadow-xl overflow-hidden mt-8 transition-all duration-300 hover:shadow-2xl border border-slate-100 dark:border-slate-700">
                        <div className="bg-gradient-to-r from-emerald-500/20 to-white dark:from-emerald-500/20 dark:to-slate-900 p-6 relative overflow-hidden [&_*]:!text-slate-900 dark:[&_*]:!text-white">
                          <div className="flex items-center gap-3 relative z-10">
                            <h2 className="text-2xl font-bold tracking-tight text-white drop-shadow-sm">{tr('createAd.education.title', 'Détails Éducation')}</h2>
                          </div>
                        </div>
                        <div className="p-6 md:p-8 grid grid-cols-1 md:grid-cols-2 gap-6">
                          <div className="space-y-2">
                            <Label>{t('createAd.educationLoisirs.subject') || 'Matière'}</Label>
                            <Input name="educationSubject" value={formData.educationSubject} onChange={handleInputChange} placeholder="Ex: Mathématiques, Physique, Français" />
                          </div>
                          <div className="space-y-2">
                            <Label>{t('createAd.educationLoisirs.level') || 'Niveau'}</Label>
                            <Input name="educationLevel" value={formData.educationLevel} onChange={handleInputChange} placeholder="Ex: Primaire, Collège, Lycée, Université" />
                          </div>
                          <div className="space-y-2">
                            <Label>{t('createAd.educationLoisirs.mode') || 'Mode d\'enseignement'}</Label>
                            <Select onValueChange={(v) => handleSelectChange('educationMode', v)} value={formData.educationMode}>
                              <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-green-500 focus:ring-4 focus:ring-green-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-green-500">
                                <SelectValue placeholder={t('select') || 'Sélectionner'} />
                              </SelectTrigger>
                              <SelectContent className="rounded-xl shadow-xl border-slate-100">
                                <SelectItem value="presentiel">{t('createAd.educationLoisirs.presential') || 'En présentiel'}</SelectItem>
                                <SelectItem value="en-ligne">{t('createAd.educationLoisirs.online') || 'En ligne'}</SelectItem>
                                <SelectItem value="hybride">{t('createAd.educationLoisirs.hybrid') || 'Hybride'}</SelectItem>
                              </SelectContent>
                            </Select>
                          </div>
                        </div>
                      </div>
                    )}

                    {/* Détails Sport */}
                    {SPORTS_IDS.includes(formData.subcategory_id) && (
                      <div className="bg-white dark:bg-slate-800 rounded-2xl shadow-xl overflow-hidden mt-8 transition-all duration-300 hover:shadow-2xl border border-slate-100 dark:border-slate-700">
                        <div className="bg-gradient-to-r from-emerald-500/20 to-white dark:from-emerald-500/20 dark:to-slate-900 p-6 relative overflow-hidden [&_*]:!text-slate-900 dark:[&_*]:!text-white">
                          <div className="flex items-center gap-3 relative z-10">
                            <h2 className="text-2xl font-bold tracking-tight text-white drop-shadow-sm">{tr('createAd.sport.title', 'Détails Sport')}</h2>
                          </div>
                        </div>
                        <div className="p-6 md:p-8 grid grid-cols-1 md:grid-cols-2 gap-6">
                          <div className="space-y-2">
                            <Label>{t('createAd.educationLoisirs.sportType') || 'Type de sport'}</Label>
                            <Input name="sportType" value={formData.sportType} onChange={handleInputChange} placeholder="Ex: Football, Tennis, Basketball" />
                          </div>
                          <div className="space-y-2">
                            <Label>{t('createAd.educationLoisirs.sportBrand') || 'Marque du matériel'}</Label>
                            <Input name="sportBrand" value={formData.sportBrand} onChange={handleInputChange} placeholder="Ex: Nike, Adidas, Wilson" />
                          </div>
                          <div className="space-y-2">
                            <Label>{t('createAd.educationLoisirs.sportCondition') || 'État du matériel'}</Label>
                            <Input name="sportCondition" value={formData.sportCondition} onChange={handleInputChange} placeholder="Ex: Neuf, Très bon état, Bon état" />
                          </div>
                        </div>
                      </div>
                    )}

                    {/* Détails Arts & Musique */}
                    {ARTS_MUSIQUE_IDS.includes(formData.subcategory_id) && (
                      <div className="bg-white dark:bg-slate-800 rounded-2xl shadow-xl overflow-hidden mt-8 transition-all duration-300 hover:shadow-2xl border border-slate-100 dark:border-slate-700">
                        <div className="bg-gradient-to-r from-emerald-500/20 to-white dark:from-emerald-500/20 dark:to-slate-900 p-6 relative overflow-hidden [&_*]:!text-slate-900 dark:[&_*]:!text-white">
                          <div className="flex items-center gap-3 relative z-10">
                            <h2 className="text-2xl font-bold tracking-tight text-white drop-shadow-sm">{tr('createAd.art.title', 'Détails Arts & Musique')}</h2>
                          </div>
                        </div>
                        <div className="p-6 md:p-8 grid grid-cols-1 md:grid-cols-2 gap-6">
                          <div className="space-y-2">
                            <Label>{t('createAd.educationLoisirs.artType') || 'Type d\'art'}</Label>
                            <Input name="artType" value={formData.artType} onChange={handleInputChange} placeholder="Ex: Musique, Peinture, Danse" />
                          </div>
                          <div className="space-y-2">
                            <Label>{t('createAd.educationLoisirs.artMaterial') || 'Matériel artistique'}</Label>
                            <Input name="artMaterial" value={formData.artMaterial} onChange={handleInputChange} placeholder="Ex: Toiles, Pinceaux, Instruments" />
                          </div>
                        </div>
                      </div>
                    )}

                    {/* Détails Livres */}
                    {LIVRES_IDS.includes(formData.subcategory_id) && (
                      <div className="bg-white dark:bg-slate-800 rounded-2xl shadow-xl overflow-hidden mt-8 transition-all duration-300 hover:shadow-2xl border border-slate-100 dark:border-slate-700">
                        <div className="bg-gradient-to-r from-emerald-500/20 to-white dark:from-emerald-500/20 dark:to-slate-900 p-6 relative overflow-hidden [&_*]:!text-slate-900 dark:[&_*]:!text-white">
                          <div className="flex items-center gap-3 relative z-10">
                            <h2 className="text-2xl font-bold tracking-tight text-white drop-shadow-sm">{tr('createAd.books.title', 'Détails Livres')}</h2>
                          </div>
                        </div>
                        <div className="p-6 md:p-8 grid grid-cols-1 md:grid-cols-2 gap-6">
                          <div className="space-y-2">
                            <Label>{t('createAd.educationLoisirs.bookType') || 'Type de livre'}</Label>
                            <Input name="bookType" value={formData.bookType} onChange={handleInputChange} placeholder="Ex: Roman, Manuel scolaire, BD" />
                          </div>
                          <div className="space-y-2">
                            <Label>{t('createAd.educationLoisirs.bookLanguage') || 'Langue'}</Label>
                            <Input name="bookLanguage" value={formData.bookLanguage} onChange={handleInputChange} placeholder="Ex: Français, Anglais, Arabe" />
                          </div>
                          <div className="space-y-2">
                            <Label>{t('createAd.educationLoisirs.bookCondition') || 'État du livre'}</Label>
                            <Input name="bookCondition" value={formData.bookCondition} onChange={handleInputChange} placeholder="Ex: Neuf, Très bon état" />
                          </div>
                        </div>
                      </div>
                    )}

                    {/* Détails Jeux */}
                    {JEUX_IDS.includes(formData.subcategory_id) && (
                      <div className="bg-white dark:bg-slate-800 rounded-2xl shadow-xl overflow-hidden mt-8 transition-all duration-300 hover:shadow-2xl border border-slate-100 dark:border-slate-700">
                        <div className="bg-gradient-to-r from-emerald-500/20 to-white dark:from-emerald-500/20 dark:to-slate-900 p-6 relative overflow-hidden [&_*]:!text-slate-900 dark:[&_*]:!text-white">
                          <div className="flex items-center gap-3 relative z-10">
                            <h2 className="text-2xl font-bold tracking-tight text-white drop-shadow-sm">{tr('createAd.games.title', 'Détails Jeux')}</h2>
                          </div>
                        </div>
                        <div className="p-6 md:p-8 grid grid-cols-1 md:grid-cols-2 gap-6">
                          <div className="space-y-2">
                            <Label>{t('createAd.educationLoisirs.gameType') || 'Type de jeu'}</Label>
                            <Input name="gameType" value={formData.gameType} onChange={handleInputChange} placeholder="Ex: Jeu de société, Puzzle, Jeu vidéo" />
                          </div>
                          <div className="space-y-2">
                            <Label>{t('createAd.educationLoisirs.gamePlayers') || 'Nombre de joueurs'}</Label>
                            <Input name="gamePlayers" value={formData.gamePlayers} onChange={handleInputChange} placeholder="Ex: 1, 2-4, 5+" />
                          </div>
                        </div>
                      </div>
                    )}

                    {/* Détails Jouets */}
                    {JOUETS_IDS.includes(formData.subcategory_id) && (
                      <div className="bg-white dark:bg-slate-800 rounded-2xl shadow-xl overflow-hidden mt-8 transition-all duration-300 hover:shadow-2xl border border-slate-100 dark:border-slate-700">
                        <div className="bg-gradient-to-r from-emerald-500/20 to-white dark:from-emerald-500/20 dark:to-slate-900 p-6 relative overflow-hidden [&_*]:!text-slate-900 dark:[&_*]:!text-white">
                          <div className="flex items-center gap-3 relative z-10">
                            <h2 className="text-2xl font-bold tracking-tight text-white drop-shadow-sm">{tr('createAd.toys.title', 'Détails Jouets')}</h2>
                          </div>
                        </div>
                        <div className="p-6 md:p-8 grid grid-cols-1 md:grid-cols-2 gap-6">
                          <div className="space-y-2">
                            <Label>{t('createAd.educationLoisirs.toyAgeGroup') || 'Tranche d\'âge'}</Label>
                            <Input name="toyAgeGroup" value={formData.toyAgeGroup} onChange={handleInputChange} placeholder="Ex: 0-3 ans, 3-6 ans, 6+ ans" />
                          </div>
                          <div className="space-y-2">
                            <Label>{t('createAd.educationLoisirs.toyMaterial') || 'Matériau'}</Label>
                            <Input name="toyMaterial" value={formData.toyMaterial} onChange={handleInputChange} placeholder="Ex: Plastique, Bois, Tissu" />
                          </div>
                        </div>
                      </div>
                    )}

                    {/* Détails Clubs & Associations */}
                    {CLUBS_ASSOCIATIONS_IDS.includes(formData.subcategory_id) && (
                      <div className="bg-white dark:bg-slate-800 rounded-2xl shadow-xl overflow-hidden mt-8 transition-all duration-300 hover:shadow-2xl border border-slate-100 dark:border-slate-700">
                        <div className="bg-gradient-to-r from-emerald-500/20 to-white dark:from-emerald-500/20 dark:to-slate-900 p-6 relative overflow-hidden [&_*]:!text-slate-900 dark:[&_*]:!text-white">
                          <div className="flex items-center gap-3 relative z-10">
                            <h2 className="text-2xl font-bold tracking-tight text-white drop-shadow-sm">{tr('createAd.clubs.title', 'Détails Clubs & Associations')}</h2>
                          </div>
                        </div>
                        <div className="p-6 md:p-8 grid grid-cols-1 md:grid-cols-2 gap-6">
                          <div className="space-y-2">
                            <Label>{t('createAd.educationLoisirs.clubType') || 'Type de club'}</Label>
                            <Select onValueChange={(v) => handleSelectChange('clubAssociationType', v)} value={formData.clubAssociationType}>
                              <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-green-500 focus:ring-4 focus:ring-green-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-green-500">
                                <SelectValue placeholder={t('select') || 'Sélectionner'} />
                              </SelectTrigger>
                              <SelectContent className="rounded-xl shadow-xl border-slate-100">
                                <SelectItem value="sportif">{t('createAd.educationLoisirs.sportClub') || 'Club sportif'}</SelectItem>
                                <SelectItem value="culturel">{t('createAd.educationLoisirs.culturalAssociation') || 'Association culturelle'}</SelectItem>
                                <SelectItem value="communautaire">{t('createAd.educationLoisirs.communityWorkshop') || 'Atelier communautaire'}</SelectItem>
                                <SelectItem value="lecture">{t('createAd.educationLoisirs.readingClub') || 'Club de lecture'}</SelectItem>
                              </SelectContent>
                            </Select>
                          </div>
                          <div className="space-y-2">
                            <Label>{t('createAd.educationLoisirs.clubActivity') || 'Activité principale'}</Label>
                            <Input name="clubActivityType" value={formData.clubActivityType} onChange={handleInputChange} placeholder="Ex: Football, Musique, Théâtre" />
                          </div>
                          <div className="space-y-2">
                            <Label>{t('createAd.educationLoisirs.clubAgeGroup') || 'Tranche d\'âge'}</Label>
                            <Select onValueChange={(v) => handleSelectChange('clubAgeGroup', v)} value={formData.clubAgeGroup}>
                              <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-green-500 focus:ring-4 focus:ring-green-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-green-500">
                                <SelectValue placeholder={t('select') || 'Sélectionner'} />
                              </SelectTrigger>
                              <SelectContent className="rounded-xl shadow-xl border-slate-100">
                                <SelectItem value="6-12">{tr('createAd.educationLoisirs.age6-12', '6-12 ans')}</SelectItem>
                                <SelectItem value="12-18">{tr('createAd.educationLoisirs.age12-18', '12-18 ans')}</SelectItem>
                                <SelectItem value="adultes">{tr('createAd.educationLoisirs.adults', 'Adultes')}</SelectItem>
                                <SelectItem value="seniors">{tr('createAd.educationLoisirs.seniors', 'Seniors')}</SelectItem>
                                <SelectItem value="tout-public">{tr('createAd.educationLoisirs.allPublic', 'Tout public')}</SelectItem>
                              </SelectContent>
                            </Select>
                          </div>
                          <div className="space-y-2">
                            <Label>{t('createAd.educationLoisirs.clubAudience') || 'Public cible'}</Label>
                            <Input name="clubAudience" value={formData.clubAudience} onChange={handleInputChange} placeholder="Ex: Jeunesse, Adultes, Familles" />
                          </div>
                        </div>
                      </div>
                    )}

                    {/* Détails BTP */}
                    {CONSTRUCTION_IDS.includes(formData.category_id) && (
                      <div className="bg-white dark:bg-slate-800 rounded-2xl shadow-xl overflow-hidden mt-8 transition-all duration-300 hover:shadow-2xl border border-slate-100 dark:border-slate-700">
                        <div className="bg-gradient-to-r from-emerald-500/20 to-white dark:from-emerald-500/20 dark:to-slate-900 p-6 relative overflow-hidden [&_*]:!text-slate-900 dark:[&_*]:!text-white">
                          <div className="flex items-center gap-3 relative z-10">
                            <h2 className="text-2xl font-bold tracking-tight text-white drop-shadow-sm">{t('createAd.construction.title') || 'Détails Engins BTP'}</h2>
                          </div>
                        </div>
                        <div className="p-6 md:p-8 grid grid-cols-1 md:grid-cols-2 gap-6">
                           <div className="space-y-2">
                             <Label>{t('createAd.construction.type') || 'Type d\'engin'}</Label>
                             <Input name="constructionType" value={formData.constructionType} onChange={handleInputChange} placeholder="Ex: Pelle hydraulique, Grue" />
                           </div>
                           <div className="space-y-2">
                             <Label>{t('createAd.construction.brand') || 'Marque'}</Label>
                             <Input name="constructionBrand" value={formData.constructionBrand} onChange={handleInputChange} placeholder="Ex: Caterpillar, Komatsu" />
                           </div>
                           <div className="space-y-2">
                             <Label>{t('createAd.construction.model') || 'Modèle'}</Label>
                             <Input name="constructionModel" value={formData.constructionModel} onChange={handleInputChange} placeholder="Ex: 320 GC" />
                           </div>
                           <div className="space-y-2">
                             <Label>{t('createAd.construction.year') || 'Année'}</Label>
                             <Input name="constructionYear" value={formData.constructionYear} onChange={handleInputChange} placeholder="Ex: 2018" />
                           </div>
                           <div className="space-y-2">
                             <Label>{t('createAd.construction.hours') || 'Heures d\'utilisation'}</Label>
                             <Input name="constructionHours" value={formData.constructionHours} onChange={handleInputChange} placeholder="Ex: 5000 h" />
                           </div>
                           <div className="space-y-2">
                             <Label>{t('createAd.construction.weight') || 'Poids (tonnes)'}</Label>
                             <Input name="constructionWeight" value={formData.constructionWeight} onChange={handleInputChange} placeholder="Ex: 20 t" />
                           </div>
                           <div className="space-y-2">
                             <Label>{t('createAd.construction.power') || 'Puissance'}</Label>
                             <Input name="constructionPower" value={formData.constructionPower} onChange={handleInputChange} placeholder="Ex: 150 kW" />
                           </div>
                        </div>
                      </div>
                    )}

                    {/* Détails Vêtements */}
                    {CLOTHING_IDS.includes(formData.category_id) && (
                      <div className="bg-white dark:bg-slate-800 rounded-2xl shadow-xl overflow-hidden mt-8 transition-all duration-300 hover:shadow-2xl border border-slate-100 dark:border-slate-700">
                        <div className="bg-gradient-to-r from-emerald-500/20 to-white dark:from-emerald-500/20 dark:to-slate-900 p-6 relative overflow-hidden [&_*]:!text-slate-900 dark:[&_*]:!text-white">
                          <div className="flex items-center gap-3 relative z-10">
                            <h2 className="text-2xl font-bold tracking-tight text-white drop-shadow-sm">{t('createAd.clothing.title') || 'Détails Vêtements'}</h2>
                          </div>
                        </div>
                        <div className="p-6 md:p-8 grid grid-cols-1 md:grid-cols-2 gap-6">
                           <div className="space-y-2">
                             <Label>{t('createAd.clothing.type') || 'Type de vêtement'}</Label>
                             <Input name="clothingType" value={formData.clothingType} onChange={handleInputChange} placeholder="Ex: Robe, Pantalon, Veste" />
                           </div>
                           <div className="space-y-2">
                             <Label>{t('createAd.clothing.size') || 'Taille'}</Label>
                             <Input name="clothingSize" value={formData.clothingSize} onChange={handleInputChange} placeholder="Ex: M, 42, XL" />
                           </div>
                           <div className="space-y-2">
                             <Label>{t('createAd.clothing.brand') || 'Marque'}</Label>
                             <Input name="clothingBrand" value={formData.clothingBrand} onChange={handleInputChange} placeholder="Ex: Zara, H&M" />
                           </div>
                           <div className="space-y-2">
                             <Label>{t('createAd.clothing.gender') || 'Genre'}</Label>
                             <Select onValueChange={(v) => handleSelectChange('clothingGender', v)} value={formData.clothingGender}>
                               <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-green-500 focus:ring-4 focus:ring-green-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-green-500"><SelectValue placeholder={t('select') || 'Sélectionner'} /></SelectTrigger>
                                <SelectContent className="rounded-xl shadow-xl border-slate-100">
                                  <SelectItem value="homme">{t('createAd.clothing.gender.men') || 'Homme'}</SelectItem>
                                  <SelectItem value="femme">{t('createAd.clothing.gender.women') || 'Femme'}</SelectItem>
                                  <SelectItem value="enfant">{t('createAd.clothing.gender.kids') || 'Enfant'}</SelectItem>
                                  <SelectItem value="unisexe">{t('createAd.clothing.gender.unisex') || 'Unisexe'}</SelectItem>
                                </SelectContent>
                             </Select>
                           </div>
                           <div className="space-y-2">
                             <Label>{t('createAd.clothing.material') || 'Matière'}</Label>
                             <Input name="clothingMaterial" value={formData.clothingMaterial} onChange={handleInputChange} placeholder="Ex: Coton, Lin, Cuir" />
                           </div>
                           <div className="space-y-2">
                             <Label>{t('createAd.clothing.condition') || 'État'}</Label>
                             <Input name="clothingCondition" value={formData.clothingCondition} onChange={handleInputChange} placeholder="Ex: Neuf avec étiquette" />
                           </div>
                        </div>
                      </div>
                    )}

                    {/* Section Animaux */}
                    {ANIMALS_IDS.includes(formData.category_id) && (
                      <div className="bg-white dark:bg-slate-800 rounded-2xl shadow-xl overflow-hidden mt-8 transition-all duration-300 hover:shadow-2xl border border-slate-100 dark:border-slate-700">
                        <div className="bg-gradient-to-r from-emerald-500/20 to-white dark:from-emerald-500/20 dark:to-slate-900 p-6 relative overflow-hidden [&_*]:!text-slate-900 dark:[&_*]:!text-white">
                          <div className="absolute inset-0 bg-[url('https://grainy-gradients.vercel.app/noise.svg')] opacity-20 mix-blend-soft-light"></div>
                          <div className="flex items-center gap-3 relative z-10">
                            <div className="bg-white/20 backdrop-blur-sm p-3 rounded-xl shadow-inner">
                              <Heart className="h-8 w-8 text-white" />
                            </div>
                            <div>
                              <h2 className="text-2xl font-bold tracking-tight text-white drop-shadow-sm">{t('createAd.animals.title') || 'Détails Animal'}</h2>
                            </div>
                          </div>
                        </div>
                        <div className="p-6 md:p-8 space-y-6">
                           <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                             <div className="space-y-2">
                               <Label>{t('createAd.animals.type') || "Type d'animal"}</Label>
                               <Select onValueChange={(v) => handleSelectChange('animalsType', v)} value={formData.animalsType}>
                                 <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50"><SelectValue placeholder={t('createAd.animals.selectType') || 'Sélectionner le type'} /></SelectTrigger>
                                 <SelectContent>
                                    <SelectItem value="chien">{t('createAd.animals.types.dog') || 'Chien'}</SelectItem>
                                    <SelectItem value="chat">{t('createAd.animals.types.cat') || 'Chat'}</SelectItem>
                                    <SelectItem value="oiseau">{t('createAd.animals.types.bird') || 'Oiseau'}</SelectItem>
                                    <SelectItem value="autre">{t('createAd.animals.types.other') || 'Autre'}</SelectItem>
                                 </SelectContent>
                               </Select>
                             </div>
                             <div className="space-y-2">
                               <Label>{t('createAd.animals.breed') || 'Race'}</Label>
                               <Input name="animalsBreed" value={formData.animalsBreed} onChange={handleInputChange} className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50" />
                             </div>
                             <div className="space-y-2">
                               <Label>{t('createAd.animals.age') || 'Âge'}</Label>
                               <div className="flex gap-2">
                                 <Input type="number" name="animalsAge" value={formData.animalsAge} onChange={handleInputChange} className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 flex-1" />
                                 <Select onValueChange={(v) => handleSelectChange('animalsAgeUnit', v)} value={formData.animalsAgeUnit}>
                                   <SelectTrigger className="w-[100px] text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50"><SelectValue /></SelectTrigger>
                                   <SelectContent>
                                     <SelectItem value="months">{t('createAd.animals.ageUnit.months') || 'Mois'}</SelectItem>
                                     <SelectItem value="years">{t('createAd.animals.ageUnit.years') || 'Ans'}</SelectItem>
                                   </SelectContent>
                                 </Select>
                               </div>
                             </div>
                             <div className="space-y-2">
                               <Label>{t('createAd.animals.gender') || 'Sexe'}</Label>
                               <Select onValueChange={(v) => handleSelectChange('animalsGender', v)} value={formData.animalsGender}>
                                 <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50"><SelectValue placeholder={t('select') || 'Sélectionner'} /></SelectTrigger>
                                 <SelectContent>
                                   <SelectItem value="male">{t('createAd.animals.gender.male') || 'Mâle'}</SelectItem>
                                   <SelectItem value="female">{t('createAd.animals.gender.female') || 'Femelle'}</SelectItem>
                                   <SelectItem value="pair">{t('createAd.animals.gender.pair') || 'Couple'}</SelectItem>
                                 </SelectContent>
                               </Select>
                             </div>
                           </div>
                           <div className="space-y-4 pt-4 border-t border-slate-100 dark:border-slate-700">
                             <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.animals.health') || 'Santé & Documents'}</Label>
                             <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                               <div className="flex items-center justify-between bg-slate-50 dark:bg-slate-900/50 p-3 rounded-lg border border-slate-100 dark:border-slate-700 hover:border-emerald-300 transition-colors">
                                 <Label htmlFor="animalsVaccinated" className="cursor-pointer font-medium text-slate-700 dark:text-slate-200">{t('createAd.animals.vaccinated') || 'Vacciné'}</Label>
                                 <Switch id="animalsVaccinated" checked={formData.animalsVaccinated} onCheckedChange={(c) => setFormData(prev => ({ ...prev, animalsVaccinated: !!c }))} className="data-[state=checked]:bg-emerald-500 data-[state=unchecked]:bg-slate-400" />
                               </div>
                               <div className="flex items-center justify-between bg-slate-50 dark:bg-slate-900/50 p-3 rounded-lg border border-slate-100 dark:border-slate-700 hover:border-emerald-300 transition-colors">
                                 <Label htmlFor="animalsDewormed" className="cursor-pointer font-medium text-slate-700 dark:text-slate-200">{t('createAd.animals.dewormed') || 'Vermifugé'}</Label>
                                 <Switch id="animalsDewormed" checked={formData.animalsDewormed} onCheckedChange={(c) => setFormData(prev => ({ ...prev, animalsDewormed: !!c }))} className="data-[state=checked]:bg-emerald-500 data-[state=unchecked]:bg-slate-400" />
                               </div>
                               <div className="flex items-center justify-between bg-slate-50 dark:bg-slate-900/50 p-3 rounded-lg border border-slate-100 dark:border-slate-700 hover:border-emerald-300 transition-colors">
                                 <Label htmlFor="animalsPedigree" className="cursor-pointer font-medium text-slate-700 dark:text-slate-200">{t('createAd.animals.pedigree') || 'Pédigrée / LOF'}</Label>
                                 <Switch id="animalsPedigree" checked={formData.animalsPedigree} onCheckedChange={(c) => setFormData(prev => ({ ...prev, animalsPedigree: !!c }))} className="data-[state=checked]:bg-emerald-500 data-[state=unchecked]:bg-slate-400" />
                               </div>
                               <div className="flex items-center justify-between bg-slate-50 dark:bg-slate-900/50 p-3 rounded-lg border border-slate-100 dark:border-slate-700 hover:border-emerald-300 transition-colors">
                                 <Label htmlFor="animalsSterilized" className="cursor-pointer font-medium text-slate-700 dark:text-slate-200">{t('createAd.animals.sterilized') || 'Stérilisé'}</Label>
                                 <Switch id="animalsSterilized" checked={formData.animalsSterilized} onCheckedChange={(c) => setFormData(prev => ({ ...prev, animalsSterilized: !!c }))} className="data-[state=checked]:bg-emerald-500 data-[state=unchecked]:bg-slate-400" />
                               </div>
                             </div>
                           </div>
                        </div>
                      </div>
                    )}

                    {/* Section Finance */}
                    {FINANCE_IDS.includes(formData.category_id) && (
                      <div className="bg-white dark:bg-slate-800 rounded-2xl shadow-xl overflow-hidden mt-8 transition-all duration-300 hover:shadow-2xl border border-slate-100 dark:border-slate-700">
                        <div className="bg-gradient-to-r from-emerald-500/20 to-white dark:from-emerald-500/20 dark:to-slate-900 p-6 relative overflow-hidden [&_*]:!text-slate-900 dark:[&_*]:!text-white">
                          <div className="absolute inset-0 bg-[url('https://grainy-gradients.vercel.app/noise.svg')] opacity-20 mix-blend-soft-light"></div>
                          <div className="flex items-center gap-3 relative z-10">
                            <div className="bg-white/20 backdrop-blur-sm p-3 rounded-xl shadow-inner">
                              <DollarSign className="h-8 w-8 text-white" />
                            </div>
                            <div>
                              <h2 className="text-2xl font-bold tracking-tight text-white drop-shadow-sm">{t('createAd.finance.title') || 'Détails Financiers'}</h2>
                            </div>
                          </div>
                        </div>
                        <div className="p-6 md:p-8 space-y-6">
                           <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                             <div className="space-y-2">
                               <Label>{t('createAd.finance.serviceType') || 'Type de Service'}</Label>
                               <Input name="financeServiceType" value={formData.financeServiceType} onChange={handleInputChange} className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50" />
                             </div>
                             <div className="space-y-2">
                               <Label>{t('createAd.finance.currency') || 'Devise'}</Label>
                               <Input name="financeCurrency" value={formData.financeCurrency} onChange={handleInputChange} className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50" />
                             </div>
                             <div className="space-y-2">
                               <Label>{t('createAd.finance.amount') || 'Montant'}</Label>
                               <Input type="number" name="financeAmount" value={formData.financeAmount} onChange={handleInputChange} className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50" />
                             </div>
                             <div className="space-y-2">
                               <Label>{t('createAd.finance.exchangeRate') || 'Taux de change'}</Label>
                               <Input type="number" name="financeExchangeRate" value={formData.financeExchangeRate} onChange={handleInputChange} className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50" />
                             </div>
                           </div>
                        </div>
                      </div>
                    )}

                    {/* Section Services */}
                    {SERVICES_IDS.includes(formData.category_id) && (
                      <div className="bg-white dark:bg-slate-800 rounded-2xl shadow-xl overflow-hidden mt-8 transition-all duration-300 hover:shadow-2xl border border-slate-100 dark:border-slate-700">
                        <div className="bg-gradient-to-r from-emerald-500/20 to-white dark:from-emerald-500/20 dark:to-slate-900 p-6 relative overflow-hidden [&_*]:!text-slate-900 dark:[&_*]:!text-white">
                          <div className="absolute inset-0 bg-[url('https://grainy-gradients.vercel.app/noise.svg')] opacity-20 mix-blend-soft-light"></div>
                          <div className="flex items-center gap-3 relative z-10">
                            <div className="bg-white/20 backdrop-blur-sm p-3 rounded-xl shadow-inner">
                              <Briefcase className="h-8 w-8 text-white" />
                            </div>
                            <div>
                              <h2 className="text-2xl font-bold tracking-tight text-white drop-shadow-sm">{t('createAd.services.title') || 'Détails du Service'}</h2>
                            </div>
                          </div>
                        </div>
                        <div className="p-6 md:p-8 space-y-6">
                           <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                             <div className="space-y-2">
                               <Label>{t('createAd.services.serviceType') || 'Type de Service'}</Label>
                               <Input name="servicesServiceType" value={formData.servicesServiceType} onChange={handleInputChange} className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50" />
                             </div>
                             <div className="space-y-2">
                               <Label>{t('createAd.services.availability') || 'Disponibilité'}</Label>
                               <Input name="servicesAvailability" value={formData.servicesAvailability} onChange={handleInputChange} className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50" />
                             </div>
                             <div className="space-y-2">
                               <Label>{t('createAd.services.experience') || 'Expérience (Années)'}</Label>
                               <Input type="number" name="servicesExperience" value={formData.servicesExperience} onChange={handleInputChange} className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50" />
                             </div>
                             <div className="space-y-2">
                               <Label>{t('createAd.services.priceModel') || 'Modèle de prix'}</Label>
                               <Select onValueChange={(v) => handleSelectChange('servicesPriceModel', v)} value={formData.servicesPriceModel}>
                                 <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50"><SelectValue placeholder={t('select') || 'Sélectionner'} /></SelectTrigger>
                                 <SelectContent>
                                   <SelectItem value="hourly">{t('createAd.services.priceModel.hourly') || 'Horaire'}</SelectItem>
                                   <SelectItem value="fixed">{t('createAd.services.priceModel.fixed') || 'Fixe'}</SelectItem>
                                   <SelectItem value="quote">{t('createAd.services.priceModel.quote') || 'Sur devis'}</SelectItem>
                                 </SelectContent>
                               </Select>
                             </div>
                             <div className="space-y-2">
                               <Label>{t('createAd.services.locationType') || 'Lieu'}</Label>
                               <Select onValueChange={(v) => handleSelectChange('servicesLocationType', v)} value={formData.servicesLocationType}>
                                 <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50"><SelectValue placeholder={t('select') || 'Sélectionner'} /></SelectTrigger>
                                 <SelectContent>
                                   <SelectItem value="onsite">{t('createAd.services.locationType.onsite') || 'Sur site'}</SelectItem>
                                   <SelectItem value="remote">{t('createAd.services.locationType.remote') || 'À distance'}</SelectItem>
                                   <SelectItem value="office">{t('createAd.services.locationType.office') || 'Bureau'}</SelectItem>
                                 </SelectContent>
                               </Select>
                             </div>
                           </div>
                        </div>
                      </div>
                    )}

                    {/* Section Échanges */}
                    {EXCHANGE_IDS.includes(formData.category_id) && (
                      <div className="bg-white dark:bg-slate-800 rounded-2xl shadow-xl overflow-hidden mt-8 transition-all duration-300 hover:shadow-2xl border border-slate-100 dark:border-slate-700">
                        <div className="bg-gradient-to-r from-emerald-500/20 to-white dark:from-emerald-500/20 dark:to-slate-900 p-6 relative overflow-hidden [&_*]:!text-slate-900 dark:[&_*]:!text-white">
                          <div className="absolute inset-0 bg-[url('https://grainy-gradients.vercel.app/noise.svg')] opacity-20 mix-blend-soft-light"></div>
                          <div className="flex items-center gap-3 relative z-10">
                            <div className="bg-white/20 backdrop-blur-sm p-3 rounded-xl shadow-inner">
                              <Loader2 className="h-8 w-8 text-white" />
                            </div>
                            <div>
                              <h2 className="text-2xl font-bold tracking-tight text-white drop-shadow-sm">{t('createAd.exchange.title') || "Détails de l'Échange"}</h2>
                            </div>
                          </div>
                        </div>
                        <div className="p-6 md:p-8 space-y-6">
                           <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                             <div className="space-y-2">
                               <Label>{t('createAd.exchange.type') || "Type d'échange"}</Label>
                               <Select onValueChange={(v) => handleSelectChange('exchangeType', v)} value={formData.exchangeType}>
                                 <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50"><SelectValue placeholder={t('select') || 'Sélectionner'} /></SelectTrigger>
                                 <SelectContent>
                                   <SelectItem value="swap">{t('createAd.exchange.type.swap') || 'Troc'}</SelectItem>
                                   <SelectItem value="loan">{t('createAd.exchange.type.loan') || 'Prêt'}</SelectItem>
                                   <SelectItem value="donation">{t('createAd.exchange.type.donation') || 'Don'}</SelectItem>
                                   <SelectItem value="rent">{t('createAd.exchange.type.rent') || 'Location'}</SelectItem>
                                 </SelectContent>
                               </Select>
                             </div>
                             <div className="space-y-2">
                               <Label>{t('createAd.exchange.value') || 'Valeur estimée'}</Label>
                               <Input type="number" name="exchangeValue" value={formData.exchangeValue} onChange={handleInputChange} className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50" />
                             </div>
                           </div>
                           <div className="space-y-2">
                               <Label>{t('createAd.exchange.offered') || 'Ce que je propose'}</Label>
                               <Textarea name="exchangeOffered" value={formData.exchangeOffered} onChange={handleInputChange} className="text-base min-h-[100px] rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50" />
                           </div>
                           <div className="space-y-2">
                               <Label>{t('createAd.exchange.wanted') || 'Ce que je recherche'}</Label>
                               <Textarea name="exchangeWanted" value={formData.exchangeWanted} onChange={handleInputChange} className="text-base min-h-[100px] rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50" />
                           </div>
                        </div>
                      </div>
                    )}

                    {/* Champs spécifiques Véhicules */}
                    {['vehicules', 'vehicules-equipements'].includes(formData.category_id) && (
                      <div className="bg-white dark:bg-slate-800 rounded-2xl shadow-xl overflow-hidden mt-8 transition-all duration-300 hover:shadow-2xl border border-slate-100 dark:border-slate-700">
                        <div className="bg-gradient-to-r from-emerald-500/20 to-white dark:from-emerald-500/20 dark:to-slate-900 p-6 relative overflow-hidden [&_*]:!text-slate-900 dark:[&_*]:!text-white">
                          <div className="absolute inset-0 bg-[url('https://grainy-gradients.vercel.app/noise.svg')] opacity-20 mix-blend-soft-light"></div>
                          <div className="flex items-center gap-3 relative z-10">
                            <div className="bg-white/20 backdrop-blur-sm p-3 rounded-xl shadow-inner">
                              <Car className="h-8 w-8 text-white" />
                            </div>
                            <div>
                              <h2 className="text-2xl font-bold tracking-tight text-white drop-shadow-sm">{t('createAd.vehicle.title') || 'Détails du véhicule'}</h2>
                              <p className="text-blue-100 mt-1 font-medium">{t('createAd.vehicle.subtitle') || 'Spécifications techniques du véhicule'}</p>
                            </div>
                          </div>
                        </div>
                        
                        <div className="p-6 md:p-8 space-y-8">
                          
                        {/* Identification */}
                        <div className="space-y-6">
                          <h4 className="font-bold text-xl text-slate-800 dark:text-slate-200 border-b border-slate-200 dark:border-slate-700 pb-3 flex items-center gap-2">
                             <span className="bg-blue-100 dark:bg-blue-900/30 text-blue-600 dark:text-blue-400 px-3 py-1 rounded-lg text-sm uppercase tracking-wider">1</span>
                             {t('createAd.vehicle.identification') || 'Identification'}
                          </h4>
                          <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                            <div className="space-y-2">
                              <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.vehicle.brand') || 'Marque'}</Label>
                              <Input 
                                name="brand" 
                                value={formData.brand} 
                                onChange={handleInputChange} 
                                placeholder={t('createAd.vehicle.brandPlaceholder') || "Ex: Renault, Peugeot..."}
                                className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-green-500 focus:ring-4 focus:ring-green-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-green-500"
                              />
                            </div>
                            <div className="space-y-2">
                              <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.vehicle.model') || 'Modèle'}</Label>
                              <Input 
                                name="model" 
                                value={formData.model} 
                                onChange={handleInputChange} 
                                placeholder={t('createAd.vehicle.modelPlaceholder') || "Ex: Clio, 208..."}
                                className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-green-500 focus:ring-4 focus:ring-green-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-green-500"
                              />
                            </div>
                            <div className="space-y-2">
                              <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.vehicle.version') || 'Version'}</Label>
                              <Input 
                                name="vehicleVersion" 
                                value={formData.vehicleVersion} 
                                onChange={handleInputChange} 
                                placeholder={t('createAd.vehicle.versionPlaceholder') || "Ex: GT Line, Allure..."}
                                className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-green-500 focus:ring-4 focus:ring-green-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-green-500"
                              />
                            </div>
                            <div className="space-y-2">
                              <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.vehicle.year') || 'Année de mise en circulation'}</Label>
                              <div className="grid grid-cols-2 gap-3">
                                <Input 
                                  type="number" 
                                  name="vehicleRegistrationMonth" 
                                  value={formData.vehicleRegistrationMonth} 
                                  onChange={handleInputChange} 
                                  placeholder={t('createAd.vehicle.month') || "Mois (1-12)"} 
                                  min="1" 
                                  max="12"
                                  className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-green-500 focus:ring-4 focus:ring-green-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-green-500"
                                />
                                <Input 
                                  type="number" 
                                  name="vehicleRegistrationYear" 
                                  value={formData.vehicleRegistrationYear} 
                                  onChange={handleInputChange} 
                                  placeholder="Année" 
                                  min="1900" 
                                  max="2025"
                                  className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-green-500 focus:ring-4 focus:ring-green-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-green-500"
                                />
                              </div>
                              <div className="space-y-2 pt-3">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.purchaseYear') || "Année d'achat/fabrication"}</Label>
                                <Input
                                  type="number"
                                  name="purchaseYear"
                                  value={formData.purchaseYear}
                                  onChange={handleInputChange}
                                  placeholder={t('createAd.purchaseYearPlaceholder') || "Ex: 2023"}
                                  min="1900"
                                  max={new Date().getFullYear()}
                                  className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-green-500 focus:ring-4 focus:ring-green-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-green-500"
                                />
                              </div>
                            </div>
                          </div>
                        </div>

                        {/* Caractéristiques techniques */}
                        <div className="space-y-6">
                          <h4 className="font-bold text-xl text-slate-800 dark:text-slate-200 border-b border-slate-200 dark:border-slate-700 pb-3 flex items-center gap-2">
                             <span className="bg-blue-100 dark:bg-blue-900/30 text-blue-600 dark:text-blue-400 px-3 py-1 rounded-lg text-sm uppercase tracking-wider">2</span>
                             {t('createAd.vehicle.technical') || 'Caractéristiques techniques'}
                          </h4>
                          <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                            <div className="space-y-2">
                              <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.vehicle.mileage') || 'Kilométrage (km)'}</Label>
                              <Input 
                                type="number" 
                                name="vehicleMileage" 
                                value={formData.vehicleMileage} 
                                onChange={handleInputChange} 
                                placeholder={t('createAd.vehicle.mileagePlaceholder') || "Ex: 120000"}
                                className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-green-500 focus:ring-4 focus:ring-green-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-green-500"
                              />
                            </div>
                            <div className="space-y-2">
                              <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.vehicle.fuel') || 'Carburant / Énergie'}</Label>
                              <Select onValueChange={(v) => handleSelectChange('vehicleFuelType', v)} value={formData.vehicleFuelType}>
                                <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-green-500 focus:ring-4 focus:ring-green-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-green-500"><SelectValue placeholder={t('select') || "Sélectionner"} /></SelectTrigger>
                                <SelectContent className="rounded-xl shadow-xl border-slate-100">
                                  <SelectItem value="essence">{t('createAd.vehicle.fuel.essence') || 'Essence'}</SelectItem>
                                  <SelectItem value="diesel">{t('createAd.vehicle.fuel.diesel') || 'Diesel'}</SelectItem>
                                  <SelectItem value="electrique">{t('createAd.vehicle.fuel.electric') || 'Électrique'}</SelectItem>
                                  <SelectItem value="hybride">{t('createAd.vehicle.fuel.hybrid') || 'Hybride'}</SelectItem>
                                  <SelectItem value="gpl">{t('createAd.vehicle.fuel.lpg') || 'GPL'}</SelectItem>
                                </SelectContent>
                              </Select>
                            </div>
                            <div className="space-y-2">
                              <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.vehicle.fiscalPower') || 'Puissance fiscale (CV)'}</Label>
                              <Input 
                                name="vehicleFiscalPower" 
                                value={formData.vehicleFiscalPower} 
                                onChange={handleInputChange} 
                                placeholder={t('createAd.vehicle.fiscalPowerPlaceholder') || "Ex: 6 CV"}
                                className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-green-500 focus:ring-4 focus:ring-green-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-green-500"
                              />
                            </div>
                            <div className="space-y-2">
                              <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.vehicle.gearbox') || 'Boite de vitesses'}</Label>
                              <Select onValueChange={(v) => handleSelectChange('vehicleGearbox', v)} value={formData.vehicleGearbox}>
                                <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-green-500 focus:ring-4 focus:ring-green-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-green-500"><SelectValue placeholder={t('select') || "Sélectionner"} /></SelectTrigger>
                                <SelectContent className="rounded-xl shadow-xl border-slate-100">
                                  <SelectItem value="manuelle">{t('createAd.vehicle.gearbox.manual') || 'Manuelle'}</SelectItem>
                                  <SelectItem value="automatique">{t('createAd.vehicle.gearbox.automatic') || 'Automatique'}</SelectItem>
                                </SelectContent>
                              </Select>
                            </div>
                          </div>
                        </div>

                        {/* État et Documents */}
                        <div className="space-y-6">
                          <h4 className="font-bold text-xl text-slate-800 dark:text-slate-200 border-b border-slate-200 dark:border-slate-700 pb-3 flex items-center gap-2">
                             <span className="bg-blue-100 dark:bg-blue-900/30 text-blue-600 dark:text-blue-400 px-3 py-1 rounded-lg text-sm uppercase tracking-wider">3</span>
                             {t('createAd.vehicle.state') || 'État et Documents'}
                          </h4>
                          <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                            <div className="space-y-2">
                              <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.vehicle.technicalControl') || 'Contrôle technique'}</Label>
                              <Select onValueChange={(v) => handleSelectChange('vehicleTechnicalControl', v)} value={formData.vehicleTechnicalControl}>
                                <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-green-500 focus:ring-4 focus:ring-green-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-green-500"><SelectValue placeholder={t('select') || "Sélectionner"} /></SelectTrigger>
                                <SelectContent className="rounded-xl shadow-xl border-slate-100">
                                  <SelectItem value="true">{t('createAd.vehicle.technicalControl.valid') || 'Claire à 100%'}</SelectItem>
                                  <SelectItem value="false">{t('createAd.vehicle.technicalControl.invalid') || 'Pas claire / À prévoir'}</SelectItem>
                                </SelectContent>
                              </Select>
                            </div>
                            <div className="space-y-2">
                              <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.vehicle.greyCard') || 'Carte grise barrée'}</Label>
                              <Select onValueChange={(v) => handleSelectChange('vehicleGreyCardCrossed', v)} value={formData.vehicleGreyCardCrossed}>
                                <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-green-500 focus:ring-4 focus:ring-green-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-green-500"><SelectValue placeholder={t('select') || "Sélectionner"} /></SelectTrigger>
                                <SelectContent className="rounded-xl shadow-xl border-slate-100">
                                  <SelectItem value="true">{t('createAd.vehicle.greyCard.clear') || 'Claire à 100% (Non barrée)'}</SelectItem>
                                  <SelectItem value="false">{t('createAd.vehicle.greyCard.crossed') || 'Barrée'}</SelectItem>
                                </SelectContent>
                              </Select>
                            </div>
                          </div>
                        </div>

                        {/* Équipements */}
                        <div className="space-y-3">
                          <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.vehicle.options') || 'Équipements et options (séparés par des virgules)'}</Label>
                          <Textarea 
                            name="vehicleEquipment" 
                            value={Array.isArray(formData.vehicleEquipment) ? formData.vehicleEquipment.join(', ') : formData.vehicleEquipment} 
                            onChange={(e) => setFormData(prev => ({ ...prev, vehicleEquipment: e.target.value.split(',').map(s => s.trim()) }))} 
                            placeholder={t('createAd.vehicle.optionsPlaceholder') || "Climatisation, GPS, Toit ouvrant, Régulateur de vitesse..."} 
                            className="text-base min-h-[100px] rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-green-500 focus:ring-4 focus:ring-green-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-green-500"
                          />
                        </div>
                        </div>
                      </div>
                    )}

                    {/* Champs spécifiques Immobilier */}
                    {REAL_ESTATE_LISTING_IDS.some(id => id === formData.category_id || id === formData.subcategory_id) && (
                      <div className="bg-white dark:bg-slate-800 rounded-2xl shadow-xl overflow-hidden mt-8 transition-all duration-300 hover:shadow-2xl border border-slate-100 dark:border-slate-700">
                        <div className="bg-gradient-to-r from-emerald-500/20 to-white dark:from-emerald-500/20 dark:to-slate-900 p-6 relative overflow-hidden [&_*]:!text-slate-900 dark:[&_*]:!text-white">
                          <div className="absolute inset-0 bg-[url('https://grainy-gradients.vercel.app/noise.svg')] opacity-20 mix-blend-soft-light"></div>
                          <div className="flex items-center gap-3 relative z-10">
                            <div className="bg-white/20 backdrop-blur-sm p-3 rounded-xl shadow-inner">
                              <Home className="h-8 w-8 text-white" />
                            </div>
                            <div>
                              <h2 className="text-2xl font-bold tracking-tight text-white drop-shadow-sm">{t('createAd.realEstate.title') || 'Détails Immobilier'}</h2>
                              <p className="text-blue-100 mt-1 font-medium">{t('createAd.realEstate.subtitle') || 'Caractéristiques du bien immobilier'}</p>
                            </div>
                          </div>
                        </div>

                        <div className="p-6 md:p-8 space-y-8">
                          <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                            {/* Surface - Common to all */}
                            <div className="space-y-2">
                              <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.realEstate.surface') || 'Surface (m²)'}</Label>
                              <Input 
                                type="number" 
                                name="realEstateSurface" 
                                value={formData.realEstateSurface} 
                                onChange={handleInputChange} 
                                placeholder="Ex: 120"
                                className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300"
                              />
                            </div>

                            {/* Type de bien - Locations & Ventes Immobilières */}
                            {(LOCATION_IDS.includes(formData.subcategory_id || formData.category_id) || formData.subcategory_id === 'ventes-immobilieres') && (
                              <div className="space-y-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.realEstate.propertyType') || 'Type de bien'}</Label>
                                <Select onValueChange={(v) => handleSelectChange('realEstateType', v)} value={formData.realEstateType}>
                                  <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300"><SelectValue placeholder={t('select') || "Sélectionner"} /></SelectTrigger>
                                  <SelectContent className="rounded-xl shadow-xl border-slate-100">
                                    <SelectItem value="appartement">{t('createAd.realEstate.type.apartment') || 'Appartement'}</SelectItem>
                                    <SelectItem value="maison">{t('createAd.realEstate.type.house') || 'Maison'}</SelectItem>
                                    <SelectItem value="villa">{t('createAd.realEstate.type.villa') || 'Villa'}</SelectItem>
                                    <SelectItem value="studio">{t('createAd.realEstate.type.studio') || 'Studio'}</SelectItem>
                                    <SelectItem value="niveau_villa">{t('createAd.realEstate.type.villaLevel') || 'Niveau de Villa'}</SelectItem>
                                    <SelectItem value="bungalow">{t('createAd.realEstate.type.bungalow') || 'Bungalow'}</SelectItem>
                                    <SelectItem value="local">{t('createAd.realEstate.type.commercial') || 'Local Commercial'}</SelectItem>
                                  </SelectContent>
                                </Select>
                              </div>
                            )}
                            
                            {/* Type de local - Immobilier Commercial */}
                            {COMMERCIAL_IDS.includes(formData.subcategory_id || formData.category_id) && (
                              <div className="space-y-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.realEstate.commercialType') || 'Type de local'}</Label>
                                <Select onValueChange={(v) => handleSelectChange('realEstateType', v)} value={formData.realEstateType}>
                                  <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300"><SelectValue placeholder={t('select') || "Sélectionner"} /></SelectTrigger>
                                  <SelectContent className="rounded-xl shadow-xl border-slate-100">
                                    <SelectItem value="bureau">{t('createAd.realEstate.type.office') || 'Bureau'}</SelectItem>
                                    <SelectItem value="local">{t('createAd.realEstate.type.commercial') || 'Local Commercial'}</SelectItem>
                                    <SelectItem value="hangar">{t('createAd.realEstate.type.hangar') || 'Hangar'}</SelectItem>
                                    <SelectItem value="entrepot">{t('createAd.realEstate.type.warehouse') || 'Entrepôt'}</SelectItem>
                                    <SelectItem value="usine">{t('createAd.realEstate.type.factory') || 'Usine'}</SelectItem>
                                  </SelectContent>
                                </Select>
                              </div>
                            )}

                            {/* Type - Garages & Parkings */}
                            {GARAGE_IDS.includes(formData.subcategory_id || formData.category_id) && (
                              <div className="space-y-2">
                                 <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.realEstate.garageType') || 'Type'}</Label>
                                 <Select onValueChange={(v) => handleSelectChange('realEstateType', v)} value={formData.realEstateType}>
                                   <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300"><SelectValue placeholder={t('select') || "Sélectionner"} /></SelectTrigger>
                                   <SelectContent className="rounded-xl shadow-xl border-slate-100">
                                     <SelectItem value="garage_ferme">{t('createAd.realEstate.type.garageClosed') || 'Garage fermé'}</SelectItem>
                                     <SelectItem value="place_parking">{t('createAd.realEstate.type.parkingSpot') || 'Place de parking'}</SelectItem>
                                     <SelectItem value="box">{t('createAd.realEstate.type.box') || 'Box'}</SelectItem>
                                   </SelectContent>
                                 </Select>
                              </div>
                            )}

                            {/* Rooms (F1-F5+) - Appartements & Maisons */}
                            {(APPARTEMENT_IDS.includes(formData.subcategory_id || formData.category_id) || MAISON_IDS.includes(formData.subcategory_id || formData.category_id)) && (
                              <div className="space-y-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.realEstate.rooms') || 'Nombre de pièces'}</Label>
                                <Select onValueChange={(v) => handleSelectChange('realEstateRooms', v)} value={formData.realEstateRooms}>
                                  <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300"><SelectValue placeholder={t('select') || "Sélectionner"} /></SelectTrigger>
                                  <SelectContent className="rounded-xl shadow-xl border-slate-100">
                                    <SelectItem value="1">F1</SelectItem>
                                    <SelectItem value="2">F2</SelectItem>
                                    <SelectItem value="3">F3</SelectItem>
                                    <SelectItem value="4">F4</SelectItem>
                                    <SelectItem value="5">F5</SelectItem>
                                    <SelectItem value="6">F6+</SelectItem>
                                  </SelectContent>
                                </Select>
                              </div>
                            )}
                            
                            {/* Bedrooms - Appartements & Maisons */}
                            {(APPARTEMENT_IDS.includes(formData.subcategory_id || formData.category_id) || MAISON_IDS.includes(formData.subcategory_id || formData.category_id)) && (
                              <div className="space-y-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.realEstate.bedrooms') || 'Nombre de chambres'}</Label>
                                <Input 
                                  type="number" 
                                  name="realEstateBedrooms" 
                                  value={formData.realEstateBedrooms} 
                                  onChange={handleInputChange} 
                                  placeholder="Ex: 2"
                                  className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300"
                                />
                              </div>
                            )}

                            {/* Floor - Appartements, Immobilier Commercial */}
                            {(APPARTEMENT_IDS.includes(formData.subcategory_id || formData.category_id) || COMMERCIAL_IDS.includes(formData.subcategory_id || formData.category_id)) && (
                              <div className="space-y-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.realEstate.floor') || 'Étage'}</Label>
                                <Input 
                                  type="number" 
                                  name="realEstateFloor" 
                                  value={formData.realEstateFloor} 
                                  onChange={handleInputChange} 
                                  placeholder="Ex: 2"
                                  className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300"
                                />
                              </div>
                            )}

                            {/* Total Floors - Appartements & Maisons */}
                            {(APPARTEMENT_IDS.includes(formData.subcategory_id || formData.category_id) || MAISON_IDS.includes(formData.subcategory_id || formData.category_id)) && (
                              <div className="space-y-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.realEstate.totalFloors') || 'Nombre d\'étages immeuble'}</Label>
                                <Input 
                                  type="number" 
                                  name="realEstateTotalFloors" 
                                  value={formData.realEstateTotalFloors} 
                                  onChange={handleInputChange} 
                                  placeholder="Ex: 5"
                                  className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300"
                                />
                              </div>
                            )}
                            
                            {/* Facades - Terrains */}
                            {TERRAIN_IDS.includes(formData.subcategory_id || formData.category_id) && (
                              <div className="space-y-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.realEstate.facades') || 'Façade (mètres linéaires)'}</Label>
                                <Input 
                                  type="number" 
                                  name="realEstateFacades" 
                                  value={formData.realEstateFacades} 
                                  onChange={handleInputChange} 
                                  placeholder="Ex: 15"
                                  className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300"
                                />
                              </div>
                            )}

                            {/* Capacity - Garages */}
                            {GARAGE_IDS.includes(formData.subcategory_id || formData.category_id) && (
                              <div className="space-y-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.realEstate.capacity') || 'Capacité (véhicules)'}</Label>
                                <Input 
                                  type="number" 
                                  name="realEstateCapacity" 
                                  value={formData.realEstateCapacity} 
                                  onChange={handleInputChange} 
                                  placeholder="Ex: 2"
                                  className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300"
                                />
                              </div>
                            )}

                            {/* Zoning (Vocation) - Terrains */}
                            {TERRAIN_IDS.includes(formData.subcategory_id || formData.category_id) && (
                              <div className="space-y-2">
                                  <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.realEstate.zoning') || 'Vocation'}</Label>
                                  <Select onValueChange={(v) => handleSelectChange('realEstateZoning', v)} value={formData.realEstateZoning}>
                                    <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300"><SelectValue placeholder={t('select') || "Sélectionner"} /></SelectTrigger>
                                    <SelectContent className="rounded-xl shadow-xl border-slate-100">
                                      <SelectItem value="urbain">{t('createAd.realEstate.zoning.urban') || 'Urbain'}</SelectItem>
                                      <SelectItem value="agricole">{t('createAd.realEstate.zoning.agricultural') || 'Agricole'}</SelectItem>
                                      <SelectItem value="industriel">{t('createAd.realEstate.zoning.industrial') || 'Industriel'}</SelectItem>
                                      <SelectItem value="touristique">{t('createAd.realEstate.zoning.touristic') || 'Touristique'}</SelectItem>
                                    </SelectContent>
                                  </Select>
                              </div>
                            )}

                            {/* Payment Period - Locations */}
                            {LOCATION_IDS.includes(formData.subcategory_id || formData.category_id) && (
                              <div className="space-y-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.realEstate.paymentPeriod') || 'Durée / Période'}</Label>
                                <Select onValueChange={(v) => handleSelectChange('realEstatePaymentPeriod', v)} value={formData.realEstatePaymentPeriod}>
                                  <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300"><SelectValue placeholder={t('select') || "Sélectionner"} /></SelectTrigger>
                                  <SelectContent className="rounded-xl shadow-xl border-slate-100">
                                    <SelectItem value="daily">{t('createAd.realEstate.payment.daily') || 'Par jour (Vacances)'}</SelectItem>
                                    <SelectItem value="monthly">{t('createAd.realEstate.payment.monthly') || 'Par mois'}</SelectItem>
                                    <SelectItem value="yearly">{t('createAd.realEstate.payment.yearly') || 'Par an'}</SelectItem>
                                  </SelectContent>
                                </Select>
                              </div>
                            )}
                          </div>
                          
                          {/* Checkboxes - Spécificités & Commodités */}
                          <div className="space-y-4 pt-4 border-t border-slate-200 dark:border-slate-700">
                            <Label className="text-lg font-bold text-slate-800 dark:text-slate-200">{t('createAd.realEstate.specifications') || 'Spécificités & Commodités'}</Label>
                            <div className="grid grid-cols-2 md:grid-cols-3 gap-4">
                              
                              {/* Meublé - Appartements, Maisons, Locations, Ventes */}
                              {(APPARTEMENT_IDS.includes(formData.subcategory_id || formData.category_id) || MAISON_IDS.includes(formData.subcategory_id || formData.category_id) || LOCATION_IDS.includes(formData.subcategory_id || formData.category_id) || formData.subcategory_id === 'ventes-immobilieres') && (
                                <div className="flex items-center justify-between bg-slate-50 dark:bg-slate-900/50 p-3 rounded-lg border border-slate-100 dark:border-slate-700 hover:border-emerald-300 transition-colors">
                                  <Label htmlFor="furnished" className="cursor-pointer font-medium text-slate-700 dark:text-slate-200">{t('createAd.realEstate.furnished') || 'Meublé'}</Label>
                                  <Switch id="furnished" checked={formData.realEstateFurnished} onCheckedChange={(c) => setFormData(prev => ({ ...prev, realEstateFurnished: !!c }))} className="data-[state=checked]:bg-emerald-500 data-[state=unchecked]:bg-slate-400" />
                                </div>
                              )}

                              {/* Appartements & Maisons & Locations & Ventes - Amenities */}
                              {(APPARTEMENT_IDS.includes(formData.subcategory_id || formData.category_id) || MAISON_IDS.includes(formData.subcategory_id || formData.category_id) || LOCATION_IDS.includes(formData.subcategory_id || formData.category_id) || formData.subcategory_id === 'ventes-immobilieres') && (
                                <>
                                  <div className="flex items-center justify-between bg-slate-50 dark:bg-slate-900/50 p-3 rounded-lg border border-slate-100 dark:border-slate-700 hover:border-emerald-300 transition-colors">
                                    <Label htmlFor="spec_heating" className="cursor-pointer font-medium text-slate-700 dark:text-slate-200">{t('createAd.realEstate.centralHeating') || 'Chauffage central'}</Label>
                                    <Switch id="spec_heating" checked={formData.realEstateSpecifications.includes('chauffage_central')} onCheckedChange={() => toggleRealEstateSpecification('chauffage_central')} className="data-[state=checked]:bg-emerald-500 data-[state=unchecked]:bg-slate-400" />
                                  </div>
                                  <div className="flex items-center justify-between bg-slate-50 dark:bg-slate-900/50 p-3 rounded-lg border border-slate-100 dark:border-slate-700 hover:border-emerald-300 transition-colors">
                                    <Label htmlFor="spec_ac" className="cursor-pointer font-medium text-slate-700 dark:text-slate-200">{t('createAd.realEstate.ac') || 'Climatisation'}</Label>
                                    <Switch id="spec_ac" checked={formData.realEstateSpecifications.includes('climatisation')} onCheckedChange={() => toggleRealEstateSpecification('climatisation')} className="data-[state=checked]:bg-emerald-500 data-[state=unchecked]:bg-slate-400" />
                                  </div>
                                  <div className="flex items-center justify-between bg-slate-50 dark:bg-slate-900/50 p-3 rounded-lg border border-slate-100 dark:border-slate-700 hover:border-emerald-300 transition-colors">
                                    <Label htmlFor="spec_kitchen" className="cursor-pointer font-medium text-slate-700 dark:text-slate-200">{t('createAd.realEstate.equippedKitchen') || 'Cuisine équipée'}</Label>
                                    <Switch id="spec_kitchen" checked={formData.realEstateSpecifications.includes('cuisine_equipee')} onCheckedChange={() => toggleRealEstateSpecification('cuisine_equipee')} className="data-[state=checked]:bg-emerald-500 data-[state=unchecked]:bg-slate-400" />
                                  </div>
                                </>
                              )}

                              {/* Appartements & Maisons - More Amenities */}
                              {(APPARTEMENT_IDS.includes(formData.subcategory_id || formData.category_id) || MAISON_IDS.includes(formData.subcategory_id || formData.category_id)) && (
                                  <>
                                    <div className="flex items-center justify-between bg-slate-50 dark:bg-slate-900/50 p-3 rounded-lg border border-slate-100 dark:border-slate-700 hover:border-emerald-300 transition-colors">
                                      <Label htmlFor="spec_elevator" className="cursor-pointer font-medium text-slate-700 dark:text-slate-200">{t('createAd.realEstate.elevator') || 'Ascenseur'}</Label>
                                      <Switch id="spec_elevator" checked={formData.realEstateSpecifications.includes('ascenseur')} onCheckedChange={() => toggleRealEstateSpecification('ascenseur')} className="data-[state=checked]:bg-emerald-500 data-[state=unchecked]:bg-slate-400" />
                                    </div>
                                    <div className="flex items-center justify-between bg-slate-50 dark:bg-slate-900/50 p-3 rounded-lg border border-slate-100 dark:border-slate-700 hover:border-emerald-300 transition-colors">
                                      <Label htmlFor="spec_balcony" className="cursor-pointer font-medium text-slate-700 dark:text-slate-200">{t('createAd.realEstate.balconyTerrace') || 'Balcon / Terrasse'}</Label>
                                      <Switch id="spec_balcony" checked={formData.realEstateSpecifications.includes('balcon_terrasse')} onCheckedChange={() => toggleRealEstateSpecification('balcon_terrasse')} className="data-[state=checked]:bg-emerald-500 data-[state=unchecked]:bg-slate-400" />
                                    </div>
                                    <div className="flex items-center justify-between bg-slate-50 dark:bg-slate-900/50 p-3 rounded-lg border border-slate-100 dark:border-slate-700 hover:border-emerald-300 transition-colors">
                                      <Label htmlFor="spec_garage" className="cursor-pointer font-medium text-slate-700 dark:text-slate-200">{t('createAd.realEstate.garageParking') || 'Garage / Parking'}</Label>
                                      <Switch id="spec_garage" checked={formData.realEstateSpecifications.includes('garage_parking')} onCheckedChange={() => toggleRealEstateSpecification('garage_parking')} className="data-[state=checked]:bg-emerald-500 data-[state=unchecked]:bg-slate-400" />
                                    </div>
                                    <div className="flex items-center justify-between bg-slate-50 dark:bg-slate-900/50 p-3 rounded-lg border border-slate-100 dark:border-slate-700 hover:border-emerald-300 transition-colors">
                                      <Label htmlFor="spec_garden" className="cursor-pointer font-medium text-slate-700 dark:text-slate-200">{t('createAd.realEstate.garden') || 'Jardin'}</Label>
                                      <Switch id="spec_garden" checked={formData.realEstateSpecifications.includes('jardin')} onCheckedChange={() => toggleRealEstateSpecification('jardin')} className="data-[state=checked]:bg-emerald-500 data-[state=unchecked]:bg-slate-400" />
                                    </div>
                                    <div className="flex items-center justify-between bg-slate-50 dark:bg-slate-900/50 p-3 rounded-lg border border-slate-100 dark:border-slate-700 hover:border-emerald-300 transition-colors">
                                      <Label htmlFor="spec_pool" className="cursor-pointer font-medium text-slate-700 dark:text-slate-200">{t('createAd.realEstate.pool') || 'Piscine'}</Label>
                                      <Switch id="spec_pool" checked={formData.realEstateSpecifications.includes('piscine')} onCheckedChange={() => toggleRealEstateSpecification('piscine')} className="data-[state=checked]:bg-emerald-500 data-[state=unchecked]:bg-slate-400" />
                                    </div>
                                  </>
                              )}

                              {/* Terrains - Viabilisation */}
                              {TERRAIN_IDS.includes(formData.subcategory_id || formData.category_id) && (
                                  <>
                                    <div className="flex items-center justify-between bg-slate-50 dark:bg-slate-900/50 p-3 rounded-lg border border-slate-100 dark:border-slate-700 hover:border-emerald-300 transition-colors">
                                      <Label htmlFor="viab_water" className="cursor-pointer font-medium text-slate-700 dark:text-slate-200">{t('createAd.realEstate.water') || 'Eau'}</Label>
                                      <Switch id="viab_water" checked={formData.realEstateSpecifications.includes('eau')} onCheckedChange={() => toggleRealEstateSpecification('eau')} className="data-[state=checked]:bg-emerald-500 data-[state=unchecked]:bg-slate-400" />
                                    </div>
                                    <div className="flex items-center justify-between bg-slate-50 dark:bg-slate-900/50 p-3 rounded-lg border border-slate-100 dark:border-slate-700 hover:border-emerald-300 transition-colors">
                                      <Label htmlFor="viab_elec" className="cursor-pointer font-medium text-slate-700 dark:text-slate-200">{t('createAd.realEstate.electricity') || 'Électricité'}</Label>
                                      <Switch id="viab_elec" checked={formData.realEstateSpecifications.includes('electricite')} onCheckedChange={() => toggleRealEstateSpecification('electricite')} className="data-[state=checked]:bg-emerald-500 data-[state=unchecked]:bg-slate-400" />
                                    </div>
                                    <div className="flex items-center justify-between bg-slate-50 dark:bg-slate-900/50 p-3 rounded-lg border border-slate-100 dark:border-slate-700 hover:border-emerald-300 transition-colors">
                                      <Label htmlFor="viab_gas" className="cursor-pointer font-medium text-slate-700 dark:text-slate-200">{t('createAd.realEstate.gas') || 'Gaz'}</Label>
                                      <Switch id="viab_gas" checked={formData.realEstateSpecifications.includes('gaz')} onCheckedChange={() => toggleRealEstateSpecification('gaz')} className="data-[state=checked]:bg-emerald-500 data-[state=unchecked]:bg-slate-400" />
                                    </div>
                                    <div className="flex items-center justify-between bg-slate-50 dark:bg-slate-900/50 p-3 rounded-lg border border-slate-100 dark:border-slate-700 hover:border-emerald-300 transition-colors">
                                      <Label htmlFor="viab_sewer" className="cursor-pointer font-medium text-slate-700 dark:text-slate-200">{t('createAd.realEstate.sewerage') || 'Assainissement'}</Label>
                                      <Switch id="viab_sewer" checked={formData.realEstateSpecifications.includes('assainissement')} onCheckedChange={() => toggleRealEstateSpecification('assainissement')} className="data-[state=checked]:bg-emerald-500 data-[state=unchecked]:bg-slate-400" />
                                    </div>
                                    <div className="flex items-center justify-between bg-slate-50 dark:bg-slate-900/50 p-3 rounded-lg border border-slate-100 dark:border-slate-700 hover:border-emerald-300 transition-colors">
                                      <Label htmlFor="viab_permit" className="cursor-pointer font-medium text-slate-700 dark:text-slate-200">{t('createAd.realEstate.permit') || 'Permis de construire'}</Label>
                                      <Switch id="viab_permit" checked={formData.realEstateSpecifications.includes('permis_construire')} onCheckedChange={() => toggleRealEstateSpecification('permis_construire')} className="data-[state=checked]:bg-emerald-500 data-[state=unchecked]:bg-slate-400" />
                                    </div>
                                  </>
                              )}

                              {/* Locations & Ventes - Equipements */}
                              {(LOCATION_IDS.includes(formData.subcategory_id || formData.category_id) || formData.subcategory_id === 'ventes-immobilieres') && (
                                  <>
                                    <div className="flex items-center justify-between bg-slate-50 dark:bg-slate-900/50 p-3 rounded-lg border border-slate-100 dark:border-slate-700 hover:border-emerald-300 transition-colors">
                                      <Label htmlFor="equip_wifi" className="cursor-pointer font-medium text-slate-700 dark:text-slate-200">{t('createAd.realEstate.wifi') || 'Wifi / Internet'}</Label>
                                      <Switch id="equip_wifi" checked={formData.realEstateSpecifications.includes('wifi')} onCheckedChange={() => toggleRealEstateSpecification('wifi')} className="data-[state=checked]:bg-emerald-500 data-[state=unchecked]:bg-slate-400" />
                                    </div>
                                    <div className="flex items-center justify-between bg-slate-50 dark:bg-slate-900/50 p-3 rounded-lg border border-slate-100 dark:border-slate-700 hover:border-emerald-300 transition-colors">
                                      <Label htmlFor="equip_tv" className="cursor-pointer font-medium text-slate-700 dark:text-slate-200">{t('createAd.realEstate.tv') || 'Télévision'}</Label>
                                      <Switch id="equip_tv" checked={formData.realEstateSpecifications.includes('television')} onCheckedChange={() => toggleRealEstateSpecification('television')} className="data-[state=checked]:bg-emerald-500 data-[state=unchecked]:bg-slate-400" />
                                    </div>
                                    <div className="flex items-center justify-between bg-slate-50 dark:bg-slate-900/50 p-3 rounded-lg border border-slate-100 dark:border-slate-700 hover:border-emerald-300 transition-colors">
                                      <Label htmlFor="equip_washing" className="cursor-pointer font-medium text-slate-700 dark:text-slate-200">{t('createAd.realEstate.washingMachine') || 'Machine à laver'}</Label>
                                      <Switch id="equip_washing" checked={formData.realEstateSpecifications.includes('machine_laver')} onCheckedChange={() => toggleRealEstateSpecification('machine_laver')} className="data-[state=checked]:bg-emerald-500 data-[state=unchecked]:bg-slate-400" />
                                    </div>
                                    <div className="flex items-center justify-between bg-slate-50 dark:bg-slate-900/50 p-3 rounded-lg border border-slate-100 dark:border-slate-700 hover:border-emerald-300 transition-colors">
                                      <Label htmlFor="equip_parking" className="cursor-pointer font-medium text-slate-700 dark:text-slate-200">{t('createAd.realEstate.parking') || 'Place de parking'}</Label>
                                      <Switch id="equip_parking" checked={formData.realEstateSpecifications.includes('parking')} onCheckedChange={() => toggleRealEstateSpecification('parking')} className="data-[state=checked]:bg-emerald-500 data-[state=unchecked]:bg-slate-400" />
                                    </div>
                                  </>
                              )}

                              {/* Ventes Immobilières - Additional Amenities */}
                              {formData.subcategory_id === 'ventes-immobilieres' && (
                                  <>
                                    <div className="flex items-center justify-between bg-slate-50 dark:bg-slate-900/50 p-3 rounded-lg border border-slate-100 dark:border-slate-700 hover:border-emerald-300 transition-colors">
                                      <Label htmlFor="spec_water_tank" className="cursor-pointer font-medium text-slate-700 dark:text-slate-200">{t('createAd.realEstate.waterTank') || "Réservoir D'eau"}</Label>
                                      <Switch id="spec_water_tank" checked={formData.realEstateSpecifications.includes('reservoir_eau')} onCheckedChange={() => toggleRealEstateSpecification('reservoir_eau')} className="data-[state=checked]:bg-emerald-500 data-[state=unchecked]:bg-slate-400" />
                                    </div>
                                    <div className="flex items-center justify-between bg-slate-50 dark:bg-slate-900/50 p-3 rounded-lg border border-slate-100 dark:border-slate-700 hover:border-emerald-300 transition-colors">
                                      <Label htmlFor="spec_surveillance_cam" className="cursor-pointer font-medium text-slate-700 dark:text-slate-200">{t('createAd.realEstate.surveillanceCamera') || 'Caméra de surveillance'}</Label>
                                      <Switch id="spec_surveillance_cam" checked={formData.realEstateSpecifications.includes('camera_surveillance')} onCheckedChange={() => toggleRealEstateSpecification('camera_surveillance')} className="data-[state=checked]:bg-emerald-500 data-[state=unchecked]:bg-slate-400" />
                                    </div>
                                    <div className="flex items-center justify-between bg-slate-50 dark:bg-slate-900/50 p-3 rounded-lg border border-slate-100 dark:border-slate-700 hover:border-emerald-300 transition-colors">
                                      <Label htmlFor="spec_electricity" className="cursor-pointer font-medium text-slate-700 dark:text-slate-200">{t('createAd.realEstate.electricity') || 'Electricité'}</Label>
                                      <Switch id="spec_electricity" checked={formData.realEstateSpecifications.includes('electricite')} onCheckedChange={() => toggleRealEstateSpecification('electricite')} className="data-[state=checked]:bg-emerald-500 data-[state=unchecked]:bg-slate-400" />
                                    </div>
                                    <div className="flex items-center justify-between bg-slate-50 dark:bg-slate-900/50 p-3 rounded-lg border border-slate-100 dark:border-slate-700 hover:border-emerald-300 transition-colors">
                                      <Label htmlFor="spec_gas" className="cursor-pointer font-medium text-slate-700 dark:text-slate-200">{t('createAd.realEstate.gas') || 'Gaz'}</Label>
                                      <Switch id="spec_gas" checked={formData.realEstateSpecifications.includes('gaz')} onCheckedChange={() => toggleRealEstateSpecification('gaz')} className="data-[state=checked]:bg-emerald-500 data-[state=unchecked]:bg-slate-400" />
                                    </div>
                                  </>
                              )}

                              {/* Immobilier Commercial - Commodités */}
                              {COMMERCIAL_IDS.includes(formData.subcategory_id || formData.category_id) && (
                                  <>
                                    <div className="flex items-center justify-between bg-slate-50 dark:bg-slate-900/50 p-3 rounded-lg border border-slate-100 dark:border-slate-700 hover:border-emerald-300 transition-colors">
                                      <Label htmlFor="comm_shutter" className="cursor-pointer font-medium text-slate-700 dark:text-slate-200">{t('createAd.realEstate.electricShutter') || 'Rideau électrique'}</Label>
                                      <Switch id="comm_shutter" checked={formData.realEstateSpecifications.includes('rideau_electrique')} onCheckedChange={() => toggleRealEstateSpecification('rideau_electrique')} className="data-[state=checked]:bg-emerald-500 data-[state=unchecked]:bg-slate-400" />
                                    </div>
                                    <div className="flex items-center justify-between bg-slate-50 dark:bg-slate-900/50 p-3 rounded-lg border border-slate-100 dark:border-slate-700 hover:border-emerald-300 transition-colors">
                                      <Label htmlFor="comm_sanitary" className="cursor-pointer font-medium text-slate-700 dark:text-slate-200">{t('createAd.realEstate.sanitary') || 'Sanitaires'}</Label>
                                      <Switch id="comm_sanitary" checked={formData.realEstateSpecifications.includes('sanitaires')} onCheckedChange={() => toggleRealEstateSpecification('sanitaires')} className="data-[state=checked]:bg-emerald-500 data-[state=unchecked]:bg-slate-400" />
                                    </div>
                                    <div className="flex items-center justify-between bg-slate-50 dark:bg-slate-900/50 p-3 rounded-lg border border-slate-100 dark:border-slate-700 hover:border-emerald-300 transition-colors">
                                      <Label htmlFor="comm_lift" className="cursor-pointer font-medium text-slate-700 dark:text-slate-200">{t('createAd.realEstate.freightElevator') || 'Monte-charge'}</Label>
                                      <Switch id="comm_lift" checked={formData.realEstateSpecifications.includes('monte_charge')} onCheckedChange={() => toggleRealEstateSpecification('monte_charge')} className="data-[state=checked]:bg-emerald-500 data-[state=unchecked]:bg-slate-400" />
                                    </div>
                                    <div className="flex items-center justify-between bg-slate-50 dark:bg-slate-900/50 p-3 rounded-lg border border-slate-100 dark:border-slate-700 hover:border-emerald-300 transition-colors">
                                      <Label htmlFor="comm_parking" className="cursor-pointer font-medium text-slate-700 dark:text-slate-200">{t('createAd.realEstate.parking') || 'Parking'}</Label>
                                      <Switch id="comm_parking" checked={formData.realEstateSpecifications.includes('parking')} onCheckedChange={() => toggleRealEstateSpecification('parking')} className="data-[state=checked]:bg-emerald-500 data-[state=unchecked]:bg-slate-400" />
                                    </div>
                                  </>
                              )}
                            </div>
                          </div>
                          
                          {/* Papiers / Documents - Multi-select Checkboxes */}
                          {(APPARTEMENT_IDS.includes(formData.subcategory_id || formData.category_id) || MAISON_IDS.includes(formData.subcategory_id || formData.category_id) || TERRAIN_IDS.includes(formData.subcategory_id || formData.category_id)) && (
                              <div className="space-y-4 pt-4 border-t border-slate-200 dark:border-slate-700">
                                 <Label className="text-lg font-bold text-slate-800 dark:text-slate-200">{t('createAd.realEstate.papers') || 'Documents & Papiers'}</Label>
                                 <div className="grid grid-cols-2 md:grid-cols-3 gap-4">
                                    <div className="flex items-center justify-between bg-slate-50 dark:bg-slate-900/50 p-3 rounded-lg border border-slate-100 dark:border-slate-700 hover:border-emerald-300 transition-colors">
                                      <Label htmlFor="doc_acte" className="cursor-pointer font-medium text-slate-700 dark:text-slate-200">{t('createAd.realEstate.notaryAct') || 'Acte notarié'}</Label>
                                      <Switch id="doc_acte" checked={formData.realEstatePapers.includes('acte_notarie')} onCheckedChange={() => toggleRealEstatePaper('acte_notarie')} className="data-[state=checked]:bg-emerald-500 data-[state=unchecked]:bg-slate-400" />
                                    </div>
                                    <div className="flex items-center justify-between bg-slate-50 dark:bg-slate-900/50 p-3 rounded-lg border border-slate-100 dark:border-slate-700 hover:border-emerald-300 transition-colors">
                                      <Label htmlFor="doc_livret" className="cursor-pointer font-medium text-slate-700 dark:text-slate-200">{t('createAd.realEstate.landBook') || 'Livret foncier'}</Label>
                                      <Switch id="doc_livret" checked={formData.realEstatePapers.includes('livret_foncier')} onCheckedChange={() => toggleRealEstatePaper('livret_foncier')} className="data-[state=checked]:bg-emerald-500 data-[state=unchecked]:bg-slate-400" />
                                    </div>
                                    
                                    {(APPARTEMENT_IDS.includes(formData.subcategory_id || formData.category_id) || MAISON_IDS.includes(formData.subcategory_id || formData.category_id)) && (
                                      <>
                                        <div className="flex items-center justify-between bg-slate-50 dark:bg-slate-900/50 p-3 rounded-lg border border-slate-100 dark:border-slate-700 hover:border-emerald-300 transition-colors">
                                          <Label htmlFor="doc_promesse" className="cursor-pointer font-medium text-slate-700 dark:text-slate-200">{t('createAd.realEstate.promiseSale') || 'Promesse de vente'}</Label>
                                          <Switch id="doc_promesse" checked={formData.realEstatePapers.includes('promesse_vente')} onCheckedChange={() => toggleRealEstatePaper('promesse_vente')} className="data-[state=checked]:bg-emerald-500 data-[state=unchecked]:bg-slate-400" />
                                        </div>
                                        <div className="flex items-center justify-between bg-slate-50 dark:bg-slate-900/50 p-3 rounded-lg border border-slate-100 dark:border-slate-700 hover:border-emerald-300 transition-colors">
                                          <Label htmlFor="doc_decision" className="cursor-pointer font-medium text-slate-700 dark:text-slate-200">{t('createAd.realEstate.decision') || 'Décision d\'affectation'}</Label>
                                          <Switch id="doc_decision" checked={formData.realEstatePapers.includes('decision_affectation')} onCheckedChange={() => toggleRealEstatePaper('decision_affectation')} className="data-[state=checked]:bg-emerald-500 data-[state=unchecked]:bg-slate-400" />
                                        </div>
                                        <div className="flex items-center justify-between bg-slate-50 dark:bg-slate-900/50 p-3 rounded-lg border border-slate-100 dark:border-slate-700 hover:border-emerald-300 transition-colors">
                                          <Label htmlFor="doc_papier" className="cursor-pointer font-medium text-slate-700 dark:text-slate-200">{t('createAd.realEstate.stampedPaper') || 'Papier timbré'}</Label>
                                          <Switch id="doc_papier" checked={formData.realEstatePapers.includes('papier_timbre')} onCheckedChange={() => toggleRealEstatePaper('papier_timbre')} className="data-[state=checked]:bg-emerald-500 data-[state=unchecked]:bg-slate-400" />
                                        </div>
                                      </>
                                    )}

                                    {['terrains'].includes(formData.subcategory_id || formData.category_id) && (
                                      <>
                                        <div className="flex items-center justify-between bg-slate-50 dark:bg-slate-900/50 p-3 rounded-lg border border-slate-100 dark:border-slate-700 hover:border-emerald-300 transition-colors">
                                          <Label htmlFor="doc_certif" className="cursor-pointer font-medium text-slate-700 dark:text-slate-200">{t('createAd.realEstate.possessionCert') || 'Certificat de possession'}</Label>
                                          <Switch id="doc_certif" checked={formData.realEstatePapers.includes('certificat_possession')} onCheckedChange={() => toggleRealEstatePaper('certificat_possession')} className="data-[state=checked]:bg-emerald-500 data-[state=unchecked]:bg-slate-400" />
                                        </div>
                                        <div className="flex items-center justify-between bg-slate-50 dark:bg-slate-900/50 p-3 rounded-lg border border-slate-100 dark:border-slate-700 hover:border-emerald-300 transition-colors">
                                          <Label htmlFor="doc_indivision" className="cursor-pointer font-medium text-slate-700 dark:text-slate-200">{t('createAd.realEstate.indivision') || 'Dans l\'indivision'}</Label>
                                          <Switch id="doc_indivision" checked={formData.realEstatePapers.includes('dans_indivision')} onCheckedChange={() => toggleRealEstatePaper('dans_indivision')} className="data-[state=checked]:bg-emerald-500 data-[state=unchecked]:bg-slate-400" />
                                        </div>
                                      </>
                                    )}
                                 </div>
                              </div>
                          )}
                      </div>
                    </div>
                  )}

                    {/* Champs spécifiques Bébé */}
                    {BABY_IDS.includes(formData.category_id) && (
                      <div className="bg-white dark:bg-slate-800 rounded-2xl shadow-xl overflow-hidden mt-8 transition-all duration-300 hover:shadow-2xl border border-slate-100 dark:border-slate-700">
                        <div className="bg-gradient-to-r from-emerald-500/20 to-white dark:from-emerald-500/20 dark:to-slate-900 p-6 relative overflow-hidden [&_*]:!text-slate-900 dark:[&_*]:!text-white">
                          <div className="absolute inset-0 bg-[url('https://grainy-gradients.vercel.app/noise.svg')] opacity-20 mix-blend-soft-light"></div>
                          <div className="flex items-center gap-3 relative z-10">
                            <div className="bg-white/20 backdrop-blur-sm p-3 rounded-xl shadow-inner">
                              <Baby className="h-8 w-8 text-white" />
                            </div>
                            <div>
                              <h2 className="text-2xl font-bold tracking-tight text-white drop-shadow-sm">{t('createAd.baby.title') || 'Univers Bébé'}</h2>
                              <p className="text-pink-100 mt-1 font-medium">{t('createAd.baby.subtitle') || 'Caractéristiques de l\'article bébé'}</p>
                            </div>
                          </div>
                        </div>
                        <div className="p-6 md:p-8 space-y-6">
                           <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                              <div className="space-y-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.baby.type') || 'Type d\'article'}</Label>
                                <Select onValueChange={(v) => handleSelectChange('babyType', v)} value={formData.babyType}>
                                  <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300"><SelectValue placeholder={t('select')} /></SelectTrigger>
                                  <SelectContent>
                                    <SelectItem value="poussettes">{t('createAd.baby.types.strollers') || 'Poussettes & Landaus'}</SelectItem>
                                    <SelectItem value="vetements">{t('createAd.baby.types.clothes') || 'Vêtements Bébé'}</SelectItem>
                                    <SelectItem value="meubles">{t('createAd.baby.types.furniture') || 'Chambre & Meubles'}</SelectItem>
                                    <SelectItem value="jouets">{t('createAd.baby.types.toys') || 'Jouets & Éveil'}</SelectItem>
                                    <SelectItem value="repas">{t('createAd.baby.types.feeding') || 'Repas & Allaitement'}</SelectItem>
                                    <SelectItem value="bain">{t('createAd.baby.types.bathing') || 'Bain & Soin'}</SelectItem>
                                    <SelectItem value="securite">{t('createAd.baby.types.security') || 'Sécurité'}</SelectItem>
                                    <SelectItem value="autre">{t('createAd.baby.types.other') || 'Autre'}</SelectItem>
                                  </SelectContent>
                                </Select>
                              </div>
                              <div className="space-y-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.baby.brand') || 'Marque'}</Label>
                                <Input name="babyBrand" value={formData.babyBrand} onChange={handleInputChange} placeholder="Ex: Chicco, Bébé Confort..." className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300" />
                              </div>
                              {formData.babyType === 'vetements' && (
                                <div className="space-y-2">
                                  <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.baby.size') || 'Taille'}</Label>
                                  <Select onValueChange={(v) => handleSelectChange('babySize', v)} value={formData.babySize}>
                                    <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300"><SelectValue placeholder={t('select')} /></SelectTrigger>
                                    <SelectContent>
                                      <SelectItem value="premature">Prématuré</SelectItem>
                                      <SelectItem value="0-3m">0-3 mois</SelectItem>
                                      <SelectItem value="3-6m">3-6 mois</SelectItem>
                                      <SelectItem value="6-9m">6-9 mois</SelectItem>
                                      <SelectItem value="9-12m">9-12 mois</SelectItem>
                                      <SelectItem value="12-18m">12-18 mois</SelectItem>
                                      <SelectItem value="18-24m">18-24 mois</SelectItem>
                                      <SelectItem value="24-36m">24-36 mois</SelectItem>
                                      <SelectItem value="3ans+">3 ans et plus</SelectItem>
                                    </SelectContent>
                                  </Select>
                                </div>
                              )}
                           </div>
                        </div>
                      </div>
                    )}

                    {/* Champs spécifiques Mode */}
                    {FASHION_IDS.includes(formData.category_id) && (
                      <div className="bg-white dark:bg-slate-800 rounded-2xl shadow-xl overflow-hidden mt-8 transition-all duration-300 hover:shadow-2xl border border-slate-100 dark:border-slate-700">
                        <div className="bg-gradient-to-r from-emerald-500/20 to-white dark:from-emerald-500/20 dark:to-slate-900 p-6 relative overflow-hidden [&_*]:!text-slate-900 dark:[&_*]:!text-white">
                          <div className="absolute inset-0 bg-[url('https://grainy-gradients.vercel.app/noise.svg')] opacity-20 mix-blend-soft-light"></div>
                          <div className="flex items-center gap-3 relative z-10">
                            <div className="bg-white/20 backdrop-blur-sm p-3 rounded-xl shadow-inner">
                              <Shirt className="h-8 w-8 text-white" />
                            </div>
                            <div>
                              <h2 className="text-2xl font-bold tracking-tight text-white drop-shadow-sm">{t('createAd.fashion.title') || 'Mode & Accessoires'}</h2>
                              <p className="text-violet-100 mt-1 font-medium">{t('createAd.fashion.subtitle') || 'Détails du vêtement ou accessoire'}</p>
                            </div>
                          </div>
                        </div>
                        <div className="p-6 md:p-8 space-y-6">
                           <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                              <div className="space-y-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.fashion.type') || 'Type de vêtement'}</Label>
                                <Select onValueChange={(v) => handleSelectChange('fashionClothingType', v)} value={formData.fashionClothingType}>
                                  <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300"><SelectValue placeholder={t('select')} /></SelectTrigger>
                                  <SelectContent>
                                    <SelectItem value="hauts">{t('createAd.fashion.types.tops') || 'Hauts (T-shirts, Chemises...)'}</SelectItem>
                                    <SelectItem value="bas">{t('createAd.fashion.types.bottoms') || 'Bas (Pantalons, Jupes...)'}</SelectItem>
                                    <SelectItem value="robes">{t('createAd.fashion.types.dresses') || 'Robes & Combinaisons'}</SelectItem>
                                    <SelectItem value="manteaux">{t('createAd.fashion.types.coats') || 'Manteaux & Vestes'}</SelectItem>
                                    <SelectItem value="chaussures">{t('createAd.fashion.types.shoes') || 'Chaussures'}</SelectItem>
                                    <SelectItem value="accessoires">{t('createAd.fashion.types.accessories') || 'Accessoires'}</SelectItem>
                                    <SelectItem value="montres">{t('createAd.fashion.types.watches') || 'Montres & Bijoux'}</SelectItem>
                                  </SelectContent>
                                </Select>
                              </div>
                              <div className="space-y-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.fashion.gender') || 'Genre'}</Label>
                                <Select onValueChange={(v) => handleSelectChange('fashionGender', v)} value={formData.fashionGender}>
                                  <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300"><SelectValue placeholder={t('select')} /></SelectTrigger>
                                  <SelectContent>
                                    <SelectItem value="femme">{t('createAd.fashion.genders.female') || 'Femme'}</SelectItem>
                                    <SelectItem value="homme">{t('createAd.fashion.genders.male') || 'Homme'}</SelectItem>
                                    <SelectItem value="unisexe">{t('createAd.fashion.genders.unisex') || 'Unisexe'}</SelectItem>
                                    <SelectItem value="enfant">{t('createAd.fashion.genders.child') || 'Enfant'}</SelectItem>
                                  </SelectContent>
                                </Select>
                              </div>
                              <div className="space-y-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.fashion.size') || 'Taille'}</Label>
                                <Input name="fashionSize" value={formData.fashionSize} onChange={handleInputChange} placeholder="Ex: M, 42, 38..." className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300" />
                              </div>
                              <div className="space-y-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.fashion.brand') || 'Marque'}</Label>
                                <Input name="fashionBrand" value={formData.fashionBrand} onChange={handleInputChange} placeholder="Ex: Zara, Nike..." className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300" />
                              </div>
                           </div>
                        </div>
                      </div>
                    )}

                    {/* Champs spécifiques Sacs */}
                    {BAGS_IDS.includes(formData.category_id) && (
                      <div className="bg-white dark:bg-slate-800 rounded-2xl shadow-xl overflow-hidden mt-8 transition-all duration-300 hover:shadow-2xl border border-slate-100 dark:border-slate-700">
                        <div className="bg-gradient-to-r from-emerald-500/20 to-white dark:from-emerald-500/20 dark:to-slate-900 p-6 relative overflow-hidden [&_*]:!text-slate-900 dark:[&_*]:!text-white">
                          <div className="absolute inset-0 bg-[url('https://grainy-gradients.vercel.app/noise.svg')] opacity-20 mix-blend-soft-light"></div>
                          <div className="flex items-center gap-3 relative z-10">
                            <div className="bg-white/20 backdrop-blur-sm p-3 rounded-xl shadow-inner">
                              <ShoppingBag className="h-8 w-8 text-white" />
                            </div>
                            <div>
                              <h2 className="text-2xl font-bold tracking-tight text-white drop-shadow-sm">{t('createAd.bags.title') || 'Sacs & Bagages'}</h2>
                              <p className="text-amber-100 mt-1 font-medium">{t('createAd.bags.subtitle') || 'Détails de la bagagerie'}</p>
                            </div>
                          </div>
                        </div>
                        <div className="p-6 md:p-8 space-y-6">
                           <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                              <div className="space-y-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.bags.type') || 'Type de sac'}</Label>
                                <Select onValueChange={(v) => handleSelectChange('bagType', v)} value={formData.bagType}>
                                  <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300"><SelectValue placeholder={t('select')} /></SelectTrigger>
                                  <SelectContent>
                                    <SelectItem value="sac_main">{t('createAd.bags.types.handbag') || 'Sac à main'}</SelectItem>
                                    <SelectItem value="sac_dos">{t('createAd.bags.types.backpack') || 'Sac à dos'}</SelectItem>
                                    <SelectItem value="valise">{t('createAd.bags.types.suitcase') || 'Valise & Bagage'}</SelectItem>
                                    <SelectItem value="sac_sport">{t('createAd.bags.types.sport') || 'Sac de sport'}</SelectItem>
                                    <SelectItem value="portefeuille">{t('createAd.bags.types.wallet') || 'Portefeuille'}</SelectItem>
                                    <SelectItem value="autre">{t('createAd.bags.types.other') || 'Autre'}</SelectItem>
                                  </SelectContent>
                                </Select>
                              </div>
                              <div className="space-y-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.bags.brand') || 'Marque'}</Label>
                                <Input name="bagBrand" value={formData.bagBrand} onChange={handleInputChange} placeholder="Ex: Samsonite, Louis Vuitton..." className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300" />
                              </div>
                              <div className="space-y-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.bags.material') || 'Matière'}</Label>
                                <Input name="bagMaterial" value={formData.bagMaterial} onChange={handleInputChange} placeholder="Ex: Cuir, Toile..." className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300" />
                              </div>
                           </div>
                        </div>
                      </div>
                    )}

                    {/* Champs spécifiques Électroménager */}
                    {APPLIANCES_IDS.includes(formData.category_id) && (
                      <div className="bg-white dark:bg-slate-800 rounded-2xl shadow-xl overflow-hidden mt-8 transition-all duration-300 hover:shadow-2xl border border-slate-100 dark:border-slate-700">
                        <div className="bg-gradient-to-r from-emerald-500/20 to-white dark:from-emerald-500/20 dark:to-slate-900 p-6 relative overflow-hidden [&_*]:!text-slate-900 dark:[&_*]:!text-white">
                          <div className="absolute inset-0 bg-[url('https://grainy-gradients.vercel.app/noise.svg')] opacity-20 mix-blend-soft-light"></div>
                          <div className="flex items-center gap-3 relative z-10">
                            <div className="bg-white/20 backdrop-blur-sm p-3 rounded-xl shadow-inner">
                              <WashingMachine className="h-8 w-8 text-white" />
                            </div>
                            <div>
                              <h2 className="text-2xl font-bold tracking-tight text-white drop-shadow-sm">{t('createAd.appliances.title') || 'Électroménager'}</h2>
                              <p className="text-cyan-100 mt-1 font-medium">{t('createAd.appliances.subtitle') || 'Caractéristiques de l\'appareil'}</p>
                            </div>
                          </div>
                        </div>
                        <div className="p-6 md:p-8 space-y-6">
                           <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                              <div className="space-y-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.appliances.type') || 'Type d\'appareil'}</Label>
                                <Select onValueChange={(v) => handleSelectChange('applianceType', v)} value={formData.applianceType}>
                                  <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300"><SelectValue placeholder={t('select')} /></SelectTrigger>
                                  <SelectContent>
                                    <SelectItem value="refrigerateur">{t('createAd.appliances.types.fridge') || 'Réfrigérateur / Congélateur'}</SelectItem>
                                    <SelectItem value="lave_linge">{t('createAd.appliances.types.washing') || 'Lave-linge / Sèche-linge'}</SelectItem>
                                    <SelectItem value="lave_vaisselle">{t('createAd.appliances.types.dishwasher') || 'Lave-vaisselle'}</SelectItem>
                                    <SelectItem value="cuisson">{t('createAd.appliances.types.cooking') || 'Four / Cuisinière / Micro-ondes'}</SelectItem>
                                    <SelectItem value="climatisation">{t('createAd.appliances.types.ac') || 'Climatisation / Chauffage'}</SelectItem>
                                    <SelectItem value="petit_electro">{t('createAd.appliances.types.small') || 'Petit Électroménager'}</SelectItem>
                                    <SelectItem value="aspirateur">{t('createAd.appliances.types.vacuum') || 'Aspirateur / Nettoyage'}</SelectItem>
                                  </SelectContent>
                                </Select>
                              </div>
                              <div className="space-y-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.appliances.brand') || 'Marque'}</Label>
                                <Input name="applianceBrand" value={formData.applianceBrand} onChange={handleInputChange} placeholder="Ex: Samsung, LG, Bosch..." className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300" />
                              </div>
                              <div className="space-y-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.appliances.energy') || 'Classe énergétique'}</Label>
                                <Select onValueChange={(v) => handleSelectChange('applianceEnergyClass', v)} value={formData.applianceEnergyClass}>
                                  <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300"><SelectValue placeholder={t('select')} /></SelectTrigger>
                                  <SelectContent>
                                    <SelectItem value="A+++">A+++</SelectItem>
                                    <SelectItem value="A++">A++</SelectItem>
                                    <SelectItem value="A+">A+</SelectItem>
                                    <SelectItem value="A">A</SelectItem>
                                    <SelectItem value="B">B</SelectItem>
                                    <SelectItem value="C">C</SelectItem>
                                    <SelectItem value="D">D ou moins</SelectItem>
                                  </SelectContent>
                                </Select>
                              </div>
                           </div>
                        </div>
                      </div>
                    )}

                    {/* Champs spécifiques Multimédia */}
                    {MULTIMEDIA_IDS.includes(formData.category_id) && (
                      <div className="bg-white dark:bg-slate-800 rounded-2xl shadow-xl overflow-hidden mt-8 transition-all duration-300 hover:shadow-2xl border border-slate-100 dark:border-slate-700">
                        <div className="bg-gradient-to-r from-emerald-500/20 to-white dark:from-emerald-500/20 dark:to-slate-900 p-6 relative overflow-hidden [&_*]:!text-slate-900 dark:[&_*]:!text-white">
                          <div className="absolute inset-0 bg-[url('https://grainy-gradients.vercel.app/noise.svg')] opacity-20 mix-blend-soft-light"></div>
                          <div className="flex items-center gap-3 relative z-10">
                            <div className="bg-white/20 backdrop-blur-sm p-3 rounded-xl shadow-inner">
                              <Tv className="h-8 w-8 text-white" />
                            </div>
                            <div>
                              <h2 className="text-2xl font-bold tracking-tight text-white drop-shadow-sm">{t('createAd.multimedia.title') || 'Image, Son & Vidéo'}</h2>
                              <p className="text-indigo-100 mt-1 font-medium">{t('createAd.multimedia.subtitle') || 'Détails de l\'équipement'}</p>
                            </div>
                          </div>
                        </div>
                        <div className="p-6 md:p-8 space-y-6">
                           <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                              <div className="space-y-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.multimedia.type') || 'Type d\'équipement'}</Label>
                                <Select onValueChange={(v) => handleSelectChange('multimediaDeviceType', v)} value={formData.multimediaDeviceType}>
                                  <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300"><SelectValue placeholder={t('select')} /></SelectTrigger>
                                  <SelectContent>
                                    <SelectItem value="tv">{t('createAd.multimedia.types.tv') || 'Téléviseur'}</SelectItem>
                                    <SelectItem value="son">{t('createAd.multimedia.types.audio') || 'Audio & Hi-Fi'}</SelectItem>
                                    <SelectItem value="photo">{t('createAd.multimedia.types.photo') || 'Appareil Photo & Caméra'}</SelectItem>
                                    <SelectItem value="projection">{t('createAd.multimedia.types.projector') || 'Vidéoprojecteur'}</SelectItem>
                                    <SelectItem value="accessoire">{t('createAd.multimedia.types.accessory') || 'Accessoire Image & Son'}</SelectItem>
                                  </SelectContent>
                                </Select>
                              </div>
                              <div className="space-y-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.multimedia.brand') || 'Marque'}</Label>
                                <Input name="multimediaBrand" value={formData.multimediaBrand} onChange={handleInputChange} placeholder="Ex: Sony, Canon, JBL..." className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300" />
                              </div>
                              <div className="space-y-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.multimedia.tech') || 'Technologie / Résolution'}</Label>
                                <Input name="multimediaTechnology" value={formData.multimediaTechnology} onChange={handleInputChange} placeholder="Ex: 4K, OLED, Bluetooth..." className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300" />
                              </div>
                           </div>
                        </div>
                      </div>
                    )}

                    {/* Champs spécifiques Gaming */}
                    {GAMING_IDS.includes(formData.category_id) && (
                      <div className="bg-white dark:bg-slate-800 rounded-2xl shadow-xl overflow-hidden mt-8 transition-all duration-300 hover:shadow-2xl border border-slate-100 dark:border-slate-700">
                        <div className="bg-gradient-to-r from-emerald-500/20 to-white dark:from-emerald-500/20 dark:to-slate-900 p-6 relative overflow-hidden [&_*]:!text-slate-900 dark:[&_*]:!text-white">
                          <div className="absolute inset-0 bg-[url('https://grainy-gradients.vercel.app/noise.svg')] opacity-20 mix-blend-soft-light"></div>
                          <div className="flex items-center gap-3 relative z-10">
                            <div className="bg-white/20 backdrop-blur-sm p-3 rounded-xl shadow-inner">
                              <Gamepad2 className="h-8 w-8 text-white" />
                            </div>
                            <div>
                              <h2 className="text-2xl font-bold tracking-tight text-white drop-shadow-sm">{t('createAd.gaming.title') || 'Jeux Vidéo & Consoles'}</h2>
                              <p className="text-purple-100 mt-1 font-medium">{t('createAd.gaming.subtitle') || 'Plateforme et détails du jeu'}</p>
                            </div>
                          </div>
                        </div>
                        <div className="p-6 md:p-8 space-y-6">
                           <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                              <div className="space-y-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.gaming.type') || 'Type de produit'}</Label>
                                <Select onValueChange={(v) => handleSelectChange('gamingProductType', v)} value={formData.gamingProductType}>
                                  <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300"><SelectValue placeholder={t('select')} /></SelectTrigger>
                                  <SelectContent>
                                    <SelectItem value="console">{t('createAd.gaming.types.console') || 'Console'}</SelectItem>
                                    <SelectItem value="jeu">{t('createAd.gaming.types.game') || 'Jeu Vidéo'}</SelectItem>
                                    <SelectItem value="accessoire">{t('createAd.gaming.types.accessory') || 'Accessoire Gaming'}</SelectItem>
                                    <SelectItem value="pc_gamer">{t('createAd.gaming.types.pc') || 'PC Gamer / Composant'}</SelectItem>
                                  </SelectContent>
                                </Select>
                              </div>
                              <div className="space-y-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.gaming.platform') || 'Plateforme'}</Label>
                                <Select onValueChange={(v) => handleSelectChange('gamingPlatform', v)} value={formData.gamingPlatform}>
                                  <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300"><SelectValue placeholder={t('select')} /></SelectTrigger>
                                  <SelectContent>
                                    <SelectItem value="ps5">PlayStation 5</SelectItem>
                                    <SelectItem value="ps4">PlayStation 4</SelectItem>
                                    <SelectItem value="xbox_series">Xbox Series X/S</SelectItem>
                                    <SelectItem value="xbox_one">Xbox One</SelectItem>
                                    <SelectItem value="switch">Nintendo Switch</SelectItem>
                                    <SelectItem value="pc">PC</SelectItem>
                                    <SelectItem value="retro">{t('createAd.gaming.platforms.retro') || 'Rétrogaming'}</SelectItem>
                                    <SelectItem value="autre">{t('createAd.gaming.platforms.other') || 'Autre'}</SelectItem>
                                  </SelectContent>
                                </Select>
                              </div>
                              {formData.gamingProductType === 'jeu' && (
                                <div className="space-y-2">
                                  <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.gaming.genre') || 'Genre'}</Label>
                                  <Input name="gamingGenre" value={formData.gamingGenre} onChange={handleInputChange} placeholder="Ex: Action, RPG, Sport..." className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300" />
                                </div>
                              )}
                           </div>
                        </div>
                      </div>
                    )}

                    {/* Champs spécifiques Quincaillerie */}
                    {HARDWARE_IDS.includes(formData.category_id) && (
                      <div className="bg-white dark:bg-slate-800 rounded-2xl shadow-xl overflow-hidden mt-8 transition-all duration-300 hover:shadow-2xl border border-slate-100 dark:border-slate-700">
                        <div className="bg-gradient-to-r from-emerald-500/20 to-white dark:from-emerald-500/20 dark:to-slate-900 p-6 relative overflow-hidden [&_*]:!text-slate-900 dark:[&_*]:!text-white">
                          <div className="absolute inset-0 bg-[url('https://grainy-gradients.vercel.app/noise.svg')] opacity-20 mix-blend-soft-light"></div>
                          <div className="flex items-center gap-3 relative z-10">
                            <div className="bg-white/20 backdrop-blur-sm p-3 rounded-xl shadow-inner">
                              <Hammer className="h-8 w-8 text-white" />
                            </div>
                            <div>
                              <h2 className="text-2xl font-bold tracking-tight text-white drop-shadow-sm">{t('createAd.hardware.title') || 'Quincaillerie Générale'}</h2>
                              <p className="text-orange-100 mt-1 font-medium">{t('createAd.hardware.subtitle') || 'Détails de l\'outillage ou matériel'}</p>
                            </div>
                          </div>
                        </div>
                        <div className="p-6 md:p-8 space-y-6">
                           <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                              <div className="space-y-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.hardware.type') || 'Type de matériel'}</Label>
                                <Select onValueChange={(v) => handleSelectChange('hardwareType', v)} value={formData.hardwareType}>
                                  <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300"><SelectValue placeholder={t('select')} /></SelectTrigger>
                                  <SelectContent>
                                    <SelectItem value="outillage">{t('createAd.hardware.types.tools') || 'Outillage'}</SelectItem>
                                    <SelectItem value="plomberie">{t('createAd.hardware.types.plumbing') || 'Plomberie'}</SelectItem>
                                    <SelectItem value="electricite">{t('createAd.hardware.types.electricity') || 'Électricité'}</SelectItem>
                                    <SelectItem value="peinture">{t('createAd.hardware.types.painting') || 'Peinture'}</SelectItem>
                                    <SelectItem value="securite">{t('createAd.hardware.types.security') || 'Sécurité'}</SelectItem>
                                    <SelectItem value="autre">{t('createAd.hardware.types.other') || 'Autre'}</SelectItem>
                                  </SelectContent>
                                </Select>
                              </div>
                              <div className="space-y-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.hardware.brand') || 'Marque'}</Label>
                                <Input name="hardwareBrand" value={formData.hardwareBrand} onChange={handleInputChange} placeholder="Ex: Bosch, Stanley, Makita..." className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300" />
                              </div>
                           </div>
                        </div>
                      </div>
                    )}

                    {/* Champs spécifiques Agriculture */}
                    {AGRICULTURE_IDS.includes(formData.category_id) && (
                      <div className="bg-white dark:bg-slate-800 rounded-2xl shadow-xl overflow-hidden mt-8 transition-all duration-300 hover:shadow-2xl border border-slate-100 dark:border-slate-700">
                        <div className="bg-gradient-to-r from-emerald-500/20 to-white dark:from-emerald-500/20 dark:to-slate-900 p-6 relative overflow-hidden [&_*]:!text-slate-900 dark:[&_*]:!text-white">
                          <div className="absolute inset-0 bg-[url('https://grainy-gradients.vercel.app/noise.svg')] opacity-20 mix-blend-soft-light"></div>
                          <div className="flex items-center gap-3 relative z-10">
                            <div className="bg-white/20 backdrop-blur-sm p-3 rounded-xl shadow-inner">
                              <Tractor className="h-8 w-8 text-white" />
                            </div>
                            <div>
                              <h2 className="text-2xl font-bold tracking-tight text-white drop-shadow-sm">{t('createAd.agriculture.title') || 'Agriculture & Agroalimentaire'}</h2>
                              <p className="text-green-100 mt-1 font-medium">{t('createAd.agriculture.subtitle') || 'Détails du produit agricole'}</p>
                            </div>
                          </div>
                        </div>
                        <div className="p-6 md:p-8 space-y-6">
                           <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                              <div className="space-y-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.agriculture.type') || 'Type de produit'}</Label>
                                <Select onValueChange={(v) => handleSelectChange('agricultureType', v)} value={formData.agricultureType}>
                                  <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-green-500 focus:ring-4 focus:ring-green-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-green-300"><SelectValue placeholder={t('select')} /></SelectTrigger>
                                  <SelectContent>
                                    <SelectItem value="semences">{t('createAd.agriculture.types.seeds') || 'Semences & Plants'}</SelectItem>
                                    <SelectItem value="materiel">{t('createAd.agriculture.types.equipment') || 'Matériel Agricole'}</SelectItem>
                                    <SelectItem value="engrais">{t('createAd.agriculture.types.fertilizer') || 'Engrais & Phytosanitaire'}</SelectItem>
                                    <SelectItem value="terroir">{t('createAd.agriculture.types.harvest') || 'Produits du Terroir'}</SelectItem>
                                    <SelectItem value="elevage">{t('createAd.agriculture.types.livestock') || 'Élevage'}</SelectItem>
                                    <SelectItem value="alimentation">{t('createAd.agriculture.types.feed') || 'Alimentation Animale'}</SelectItem>
                                  </SelectContent>
                                </Select>
                              </div>
                              <div className="space-y-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.agriculture.origin') || 'Origine'}</Label>
                                <Input name="agricultureOrigin" value={formData.agricultureOrigin} onChange={handleInputChange} placeholder="Ex: Local, Importé, Bio..." className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-green-500 focus:ring-4 focus:ring-green-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-green-300" />
                              </div>
                           </div>
                        </div>
                      </div>
                    )}

                    {/* Champs spécifiques Parapharmacie */}
                    {PARAPHARMACY_IDS.includes(formData.category_id) && (
                      <div className="bg-white dark:bg-slate-800 rounded-2xl shadow-xl overflow-hidden mt-8 transition-all duration-300 hover:shadow-2xl border border-slate-100 dark:border-slate-700">
                        <div className="bg-gradient-to-r from-emerald-500/20 to-white dark:from-emerald-500/20 dark:to-slate-900 p-6 relative overflow-hidden [&_*]:!text-slate-900 dark:[&_*]:!text-white">
                          <div className="absolute inset-0 bg-[url('https://grainy-gradients.vercel.app/noise.svg')] opacity-20 mix-blend-soft-light"></div>
                          <div className="flex items-center gap-3 relative z-10">
                            <div className="bg-white/20 backdrop-blur-sm p-3 rounded-xl shadow-inner">
                              <Pill className="h-8 w-8 text-white" />
                            </div>
                            <div>
                              <h2 className="text-2xl font-bold tracking-tight text-white drop-shadow-sm">{t('createAd.parapharmacy.title') || 'Parapharmacie & Chimie'}</h2>
                              <p className="text-teal-100 mt-1 font-medium">{t('createAd.parapharmacy.subtitle') || 'Détails du produit'}</p>
                            </div>
                          </div>
                        </div>
                        <div className="p-6 md:p-8 space-y-6">
                           <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                              <div className="space-y-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.parapharmacy.type') || 'Type de produit'}</Label>
                                <Select onValueChange={(v) => handleSelectChange('parapharmacyType', v)} value={formData.parapharmacyType}>
                                  <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300"><SelectValue placeholder={t('select')} /></SelectTrigger>
                                  <SelectContent>
                                    <SelectItem value="soin">{t('createAd.parapharmacy.types.care') || 'Soin & Hygiène'}</SelectItem>
                                    <SelectItem value="medical">{t('createAd.parapharmacy.types.medical') || 'Matériel Médical'}</SelectItem>
                                    <SelectItem value="chimique">{t('createAd.parapharmacy.types.chemical') || 'Produit Chimique'}</SelectItem>
                                    <SelectItem value="orthopedie">{t('createAd.parapharmacy.types.orthopedics') || 'Orthopédie'}</SelectItem>
                                  </SelectContent>
                                </Select>
                              </div>
                              <div className="space-y-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.parapharmacy.brand') || 'Marque'}</Label>
                                <Input name="parapharmacyBrand" value={formData.parapharmacyBrand} onChange={handleInputChange} placeholder="Ex: La Roche-Posay, Vichy..." className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300" />
                              </div>
                           </div>
                        </div>
                      </div>
                    )}

                    {/* Champs spécifiques Santé & Beauté */}
                    {BEAUTY_IDS.includes(formData.category_id) && (
                      <div className="bg-white dark:bg-slate-800 rounded-2xl shadow-xl overflow-hidden mt-8 transition-all duration-300 hover:shadow-2xl border border-slate-100 dark:border-slate-700">
                        <div className="bg-gradient-to-r from-emerald-500/20 to-white dark:from-emerald-500/20 dark:to-slate-900 p-6 relative overflow-hidden [&_*]:!text-slate-900 dark:[&_*]:!text-white">
                          <div className="absolute inset-0 bg-[url('https://grainy-gradients.vercel.app/noise.svg')] opacity-20 mix-blend-soft-light"></div>
                          <div className="flex items-center gap-3 relative z-10">
                            <div className="bg-white/20 backdrop-blur-sm p-3 rounded-xl shadow-inner">
                              <Heart className="h-8 w-8 text-white" />
                            </div>
                            <div>
                              <h2 className="text-2xl font-bold tracking-tight text-white drop-shadow-sm">{t('createAd.beauty.title') || 'Santé & Beauté'}</h2>
                              <p className="text-pink-100 mt-1 font-medium">{t('createAd.beauty.subtitle') || 'Détails du produit cosmétique'}</p>
                            </div>
                          </div>
                        </div>
                        <div className="p-6 md:p-8 space-y-6">
                           <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                              <div className="space-y-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.beauty.type') || 'Type de produit'}</Label>
                                <Select onValueChange={(v) => handleSelectChange('beautyType', v)} value={formData.beautyType}>
                                  <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300"><SelectValue placeholder={t('select')} /></SelectTrigger>
                                  <SelectContent>
                                    <SelectItem value="maquillage">{t('createAd.beauty.types.makeup') || 'Maquillage'}</SelectItem>
                                    <SelectItem value="parfum">{t('createAd.beauty.types.perfume') || 'Parfum'}</SelectItem>
                                    <SelectItem value="soin">{t('createAd.beauty.types.skincare') || 'Soin Visage & Corps'}</SelectItem>
                                    <SelectItem value="appareil">{t('createAd.beauty.types.device') || 'Appareil Beauté'}</SelectItem>
                                  </SelectContent>
                                </Select>
                              </div>
                              <div className="space-y-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.beauty.gender') || 'Genre'}</Label>
                                <Select onValueChange={(v) => handleSelectChange('beautyGender', v)} value={formData.beautyGender}>
                                  <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300"><SelectValue placeholder={t('select')} /></SelectTrigger>
                                  <SelectContent>
                                    <SelectItem value="femme">{t('createAd.fashion.genders.female') || 'Femme'}</SelectItem>
                                    <SelectItem value="homme">{t('createAd.fashion.genders.male') || 'Homme'}</SelectItem>
                                    <SelectItem value="unisexe">{t('createAd.fashion.genders.unisex') || 'Unisexe'}</SelectItem>
                                  </SelectContent>
                                </Select>
                              </div>
                              <div className="space-y-2 md:col-span-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.beauty.brand') || 'Marque'}</Label>
                                <Input name="beautyBrand" value={formData.beautyBrand} onChange={handleInputChange} placeholder="Ex: L'Oréal, Dior, Nivea..." className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300" />
                              </div>
                           </div>
                        </div>
                      </div>
                    )}

                    {/* Champs spécifiques Gastronomie */}
                    {GASTRONOMY_IDS.includes(formData.category_id) && (
                      <div className="bg-white dark:bg-slate-800 rounded-2xl shadow-xl overflow-hidden mt-8 transition-all duration-300 hover:shadow-2xl border border-slate-100 dark:border-slate-700">
                        <div className="bg-gradient-to-r from-emerald-500/20 to-white dark:from-emerald-500/20 dark:to-slate-900 p-6 relative overflow-hidden [&_*]:!text-slate-900 dark:[&_*]:!text-white">
                          <div className="absolute inset-0 bg-[url('https://grainy-gradients.vercel.app/noise.svg')] opacity-20 mix-blend-soft-light"></div>
                          <div className="flex items-center gap-3 relative z-10">
                            <div className="bg-white/20 backdrop-blur-sm p-3 rounded-xl shadow-inner">
                              <Utensils className="h-8 w-8 text-white" />
                            </div>
                            <div>
                              <h2 className="text-2xl font-bold tracking-tight text-white drop-shadow-sm">{t('createAd.gastronomy.title') || 'Gastronomie & Alimentation'}</h2>
                              <p className="text-yellow-100 mt-1 font-medium">{t('createAd.gastronomy.subtitle') || 'Détails du produit alimentaire'}</p>
                            </div>
                          </div>
                        </div>
                        <div className="p-6 md:p-8 space-y-6">
                           <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                              <div className="space-y-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.gastronomy.type') || 'Type de produit'}</Label>
                                <Select onValueChange={(v) => handleSelectChange('gastronomyType', v)} value={formData.gastronomyType}>
                                  <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300"><SelectValue placeholder={t('select')} /></SelectTrigger>
                                  <SelectContent>
                                    <SelectItem value="plat">{t('createAd.gastronomy.types.dish') || 'Plat Cuisiné / Traiteur'}</SelectItem>
                                    <SelectItem value="gateau">{t('createAd.gastronomy.types.sweet') || 'Gâteaux & Pâtisserie'}</SelectItem>
                                    <SelectItem value="miel">{t('createAd.gastronomy.types.honey') || 'Miel & Produits de la Ruche'}</SelectItem>
                                    <SelectItem value="huile">{t('createAd.gastronomy.types.oil') || 'Huile d\'Olive & Condiments'}</SelectItem>
                                    <SelectItem value="pates">{t('createAd.gastronomy.types.pasta') || 'Pâtes & Couscous Traditionnel'}</SelectItem>
                                    <SelectItem value="conserve">{t('createAd.gastronomy.types.canned') || 'Conserves & Confitures'}</SelectItem>
                                    <SelectItem value="epices">{t('createAd.gastronomy.types.spices') || 'Épices & Herbes'}</SelectItem>
                                    <SelectItem value="fromage">{t('createAd.gastronomy.types.cheese') || 'Fromages & Produits Laitiers'}</SelectItem>
                                    <SelectItem value="dattes">{t('createAd.gastronomy.types.dates') || 'Dattes & Fruits Secs'}</SelectItem>
                                    <SelectItem value="jus">{t('createAd.gastronomy.types.juice') || 'Jus & Boissons Artisanales'}</SelectItem>
                                  </SelectContent>
                                </Select>
                              </div>
                              <div className="space-y-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.gastronomy.origin') || 'Origine / Fabrication'}</Label>
                                <Select onValueChange={(v) => handleSelectChange('gastronomyOrigin', v)} value={formData.gastronomyOrigin}>
                                  <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300"><SelectValue placeholder={t('select')} /></SelectTrigger>
                                  <SelectContent>
                                    <SelectItem value="maison">{t('createAd.gastronomy.origins.homemade') || 'Fait Maison (Home Made)'}</SelectItem>
                                    <SelectItem value="artisanale">{t('createAd.gastronomy.origins.artisanal') || 'Production Artisanale'}</SelectItem>
                                    <SelectItem value="terroir">{t('createAd.gastronomy.origins.local') || 'Produit du Terroir (AOC)'}</SelectItem>
                                    <SelectItem value="bio">{t('createAd.gastronomy.origins.bio') || 'Agriculture Biologique'}</SelectItem>
                                    <SelectItem value="industriel">{t('createAd.gastronomy.origins.industrial') || 'Industriel'}</SelectItem>
                                  </SelectContent>
                                </Select>
                              </div>
                              <div className="space-y-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.gastronomy.diet') || 'Spécificité Alimentaire'}</Label>
                                <Select onValueChange={(v) => handleSelectChange('gastronomyDiet', v)} value={formData.gastronomyDiet}>
                                  <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300"><SelectValue placeholder={t('select')} /></SelectTrigger>
                                  <SelectContent>
                                    <SelectItem value="standard">{t('createAd.gastronomy.diets.standard') || 'Standard'}</SelectItem>
                                    <SelectItem value="sans_sucre">{t('createAd.gastronomy.diets.sugarfree') || 'Sans Sucre (Diabétique)'}</SelectItem>
                                    <SelectItem value="sans_gluten">{t('createAd.gastronomy.diets.glutenfree') || 'Sans Gluten'}</SelectItem>
                                    <SelectItem value="vegan">{t('createAd.gastronomy.diets.vegan') || 'Végétarien / Vegan'}</SelectItem>
                                    <SelectItem value="halal">{t('createAd.gastronomy.diets.halal') || 'Halal Certifié'}</SelectItem>
                                  </SelectContent>
                                </Select>
                              </div>
                              <div className="space-y-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.gastronomy.order') || 'Disponibilité / Commande'}</Label>
                                <Select onValueChange={(v) => handleSelectChange('gastronomyOrder', v)} value={formData.gastronomyOrder}>
                                  <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300"><SelectValue placeholder={t('select')} /></SelectTrigger>
                                  <SelectContent>
                                    <SelectItem value="immediat">{t('createAd.gastronomy.orders.immediate') || 'Disponible Immédiatement'}</SelectItem>
                                    <SelectItem value="commande">{t('createAd.gastronomy.orders.preorder') || 'Sur Commande (Prévoir délai)'}</SelectItem>
                                    <SelectItem value="evenement">{t('createAd.gastronomy.orders.event') || 'Traiteur Événementiel'}</SelectItem>
                                  </SelectContent>
                                </Select>
                              </div>
                           </div>
                        </div>
                      </div>
                    )}

                    {/* Champs spécifiques Artisanat */}
                    {CRAFTS_IDS.includes(formData.category_id) && (
                      <div className="bg-white dark:bg-slate-800 rounded-2xl shadow-xl overflow-hidden mt-8 transition-all duration-300 hover:shadow-2xl border border-slate-100 dark:border-slate-700">
                        <div className="bg-gradient-to-r from-emerald-500/20 to-white dark:from-emerald-500/20 dark:to-slate-900 p-6 relative overflow-hidden [&_*]:!text-slate-900 dark:[&_*]:!text-white">
                          <div className="absolute inset-0 bg-[url('https://grainy-gradients.vercel.app/noise.svg')] opacity-20 mix-blend-soft-light"></div>
                          <div className="flex items-center gap-3 relative z-10">
                            <div className="bg-white/20 backdrop-blur-sm p-3 rounded-xl shadow-inner">
                              <Palette className="h-8 w-8 text-white" />
                            </div>
                            <div>
                              <h2 className="text-2xl font-bold tracking-tight text-white drop-shadow-sm">{t('createAd.crafts.title') || 'Artisanat Traditionnel'}</h2>
                              <p className="text-amber-100 mt-1 font-medium">{t('createAd.crafts.subtitle') || 'Détails de l\'objet artisanal'}</p>
                            </div>
                          </div>
                        </div>
                        <div className="p-6 md:p-8 space-y-6">
                           <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                              <div className="space-y-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.crafts.type') || 'Type d\'objet'}</Label>
                                <Select onValueChange={(v) => handleSelectChange('craftsType', v)} value={formData.craftsType}>
                                  <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300"><SelectValue placeholder={t('select')} /></SelectTrigger>
                                  <SelectContent>
                                    <SelectItem value="tapis">{t('createAd.crafts.types.rug') || 'Tapis & Tissage (Zarbia)'}</SelectItem>
                                    <SelectItem value="bijoux">{t('createAd.crafts.types.jewelry') || 'Bijoux Traditionnels'}</SelectItem>
                                    <SelectItem value="poterie">{t('createAd.crafts.types.pottery') || 'Poterie & Céramique'}</SelectItem>
                                    <SelectItem value="tenue">{t('createAd.crafts.types.clothes') || 'Tenues Traditionnelles'}</SelectItem>
                                    <SelectItem value="vannerie">{t('createAd.crafts.types.basketry') || 'Vannerie (Alfa/Osier)'}</SelectItem>
                                    <SelectItem value="cuir">{t('createAd.crafts.types.leather') || 'Maroquinerie & Cuir'}</SelectItem>
                                    <SelectItem value="bois">{t('createAd.crafts.types.wood') || 'Bois & Sculpture'}</SelectItem>
                                    <SelectItem value="cuivre">{t('createAd.crafts.types.copper') || 'Dinanderie (Cuivre)'}</SelectItem>
                                    <SelectItem value="verre">{t('createAd.crafts.types.glass') || 'Verrerie & Mosaïque'}</SelectItem>
                                  </SelectContent>
                                </Select>
                              </div>
                              <div className="space-y-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.crafts.material') || 'Matière Principale'}</Label>
                                <Select onValueChange={(v) => handleSelectChange('craftsMaterial', v)} value={formData.craftsMaterial}>
                                  <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300"><SelectValue placeholder={t('select')} /></SelectTrigger>
                                  <SelectContent>
                                    <SelectItem value="laine">{t('createAd.crafts.materials.wool') || 'Laine'}</SelectItem>
                                    <SelectItem value="argent">{t('createAd.crafts.materials.silver') || 'Argent'}</SelectItem>
                                    <SelectItem value="or">{t('createAd.crafts.materials.gold') || 'Or'}</SelectItem>
                                    <SelectItem value="argile">{t('createAd.crafts.materials.clay') || 'Argile / Terre Cuite'}</SelectItem>
                                    <SelectItem value="cuir">{t('createAd.crafts.materials.leather') || 'Cuir'}</SelectItem>
                                    <SelectItem value="bois">{t('createAd.crafts.materials.wood') || 'Bois'}</SelectItem>
                                    <SelectItem value="cuivre">{t('createAd.crafts.materials.copper') || 'Cuivre'}</SelectItem>
                                    <SelectItem value="alfa">{t('createAd.crafts.materials.alfa') || 'Alfa / Palmier'}</SelectItem>
                                    <SelectItem value="tissu">{t('createAd.crafts.materials.fabric') || 'Tissu / Soie / Velours'}</SelectItem>
                                    <SelectItem value="corail">{t('createAd.crafts.materials.coral') || 'Corail'}</SelectItem>
                                  </SelectContent>
                                </Select>
                              </div>
                              <div className="space-y-2 md:col-span-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.crafts.origin') || 'Région / Style'}</Label>
                                <Select onValueChange={(v) => handleSelectChange('craftsOrigin', v)} value={formData.craftsOrigin}>
                                  <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300"><SelectValue placeholder={t('select')} /></SelectTrigger>
                                  <SelectContent>
                                    <SelectItem value="algerois">{t('createAd.crafts.styles.algiers') || 'Algérois (Casbah)'}</SelectItem>
                                    <SelectItem value="kabyle">{t('createAd.crafts.styles.kabyle') || 'Kabyle (Berbère)'}</SelectItem>
                                    <SelectItem value="chaoui">{t('createAd.crafts.styles.chaoui') || 'Chaoui (Aurès)'}</SelectItem>
                                    <SelectItem value="constantinois">{t('createAd.crafts.styles.constantine') || 'Constantinois'}</SelectItem>
                                    <SelectItem value="tlemcenien">{t('createAd.crafts.styles.tlemcen') || 'Tlemcenien (Andalou)'}</SelectItem>
                                    <SelectItem value="saharien">{t('createAd.crafts.styles.sahara') || 'Saharien / Touareg (Sud)'}</SelectItem>
                                    <SelectItem value="mozabite">{t('createAd.crafts.styles.mzab') || 'Mozabite (Ghardaïa)'}</SelectItem>
                                    <SelectItem value="oranais">{t('createAd.crafts.styles.oran') || 'Oranais'}</SelectItem>
                                    <SelectItem value="moderne">{t('createAd.crafts.styles.modern') || 'Moderne / Stylisé'}</SelectItem>
                                  </SelectContent>
                                </Select>
                              </div>
                           </div>
                        </div>
                      </div>
                    )}

                    {/* Champs spécifiques Voyages & Tourisme - Block removed to avoid duplication */}

                    {/* Champs spécifiques Voyages & Tourisme */}
                    {TRAVEL_IDS.includes(formData.category_id) && (
                      <div className="bg-white dark:bg-slate-800 rounded-2xl shadow-xl overflow-hidden mt-8 transition-all duration-300 hover:shadow-2xl border border-slate-100 dark:border-slate-700">
                        <div className="bg-gradient-to-r from-emerald-500/20 to-white dark:from-emerald-500/20 dark:to-slate-900 p-6 relative overflow-hidden [&_*]:!text-slate-900 dark:[&_*]:!text-white">
                          <div className="absolute inset-0 bg-[url('https://grainy-gradients.vercel.app/noise.svg')] opacity-20 mix-blend-soft-light"></div>
                          <div className="flex items-center gap-3 relative z-10">
                            <div className="bg-white/20 backdrop-blur-sm p-3 rounded-xl shadow-inner">
                              <Plane className="h-8 w-8 text-white" />
                            </div>
                            <div>
                              <h2 className="text-2xl font-bold tracking-tight text-white drop-shadow-sm">{t('createAd.travel.title') || 'Voyages & Tourisme'}</h2>
                              <p className="text-sky-100 mt-1 font-medium">{t('createAd.travel.subtitle') || 'Détails du voyage'}</p>
                            </div>
                          </div>
                        </div>
                        <div className="p-6 md:p-8 space-y-6">
                           <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                              <div className="space-y-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.travel.type') || 'Type de voyage'}</Label>
                                <Select onValueChange={(v) => handleSelectChange('travelType', v)} value={formData.travelType}>
                                  <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300"><SelectValue placeholder={t('select')} /></SelectTrigger>
                                  <SelectContent>
                                    <SelectItem value="organized">{t('createAd.travel.types.organized') || 'Voyage organisé'}</SelectItem>
                                    <SelectItem value="omra">{t('createAd.travel.types.omra') || 'Omra & Hajj'}</SelectItem>
                                    <SelectItem value="rental">{t('createAd.travel.types.rental') || 'Location vacances'}</SelectItem>
                                    <SelectItem value="hotel">{t('createAd.travel.types.hotel') || 'Hôtel / Auberge'}</SelectItem>
                                    <SelectItem value="camping">{t('createAd.travel.types.camping') || 'Camping & Randonnée'}</SelectItem>
                                    <SelectItem value="other">{t('createAd.travel.types.other') || 'Autre'}</SelectItem>
                                  </SelectContent>
                                </Select>
                              </div>
                              <div className="space-y-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.travel.destination') || 'Destination'}</Label>
                                <Select onValueChange={(v) => handleSelectChange('travelDestination', v)} value={formData.travelDestination}>
                                  <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300"><SelectValue placeholder={t('select')} /></SelectTrigger>
                                  <SelectContent>
                                    <SelectItem value="local">{t('createAd.travel.destinations.local') || 'Local (Algérie)'}</SelectItem>
                                    <SelectItem value="international">{t('createAd.travel.destinations.international') || 'International'}</SelectItem>
                                  </SelectContent>
                                </Select>
                              </div>
                              <div className="space-y-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.travel.stars') || 'Classement (Étoiles)'}</Label>
                                <div className="flex items-center gap-2 mt-2">
                                  {[1, 2, 3, 4, 5].map((star) => (
                                    <button
                                      key={star}
                                      type="button"
                                      onClick={() => {
                                        // If clicking the current rating, toggle it off (deselect all)
                                        // Otherwise select the clicked rating
                                        if (formData.travelStars === star.toString()) {
                                          handleSelectChange('travelStars', '');
                                        } else {
                                          handleSelectChange('travelStars', star.toString());
                                        }
                                      }}
                                      className="focus:outline-none transition-transform hover:scale-110 active:scale-95"
                                      title={`${star} Étoile${star > 1 ? 's' : ''}`}
                                    >
                                      <Star
                                        className={`h-8 w-8 transition-colors duration-200 ${
                                          star <= parseInt(formData.travelStars || '0')
                                            ? 'fill-yellow-400 text-yellow-400'
                                            : 'text-slate-300 dark:text-slate-600'
                                        }`}
                                      />
                                    </button>
                                  ))}
                                  <span className="ml-3 text-sm font-medium text-slate-600 dark:text-slate-400 min-w-[4rem]">
                                    {formData.travelStars 
                                      ? `${formData.travelStars} Étoile${parseInt(formData.travelStars) > 1 ? 's' : ''}` 
                                      : t('createAd.travel.stars.select') || 'Sélectionner'}
                                  </span>
                                </div>
                              </div>
                           </div>
                           
                           {/* Services Checkboxes */}
                           <div className="space-y-3">
                              <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.travel.services') || 'Services inclus'}</Label>
                              <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                                <div className="flex items-center justify-between bg-slate-50 dark:bg-slate-900/50 p-3 rounded-lg border border-slate-100 dark:border-slate-700 hover:border-emerald-300 transition-colors">
                                  <Label htmlFor="service-flight" className="cursor-pointer font-medium text-slate-700 dark:text-slate-200">{t('createAd.travel.services.flight') || 'Billet d\'avion'}</Label>
                                  <Switch id="service-flight" 
                                    checked={formData.travelServices?.includes('flight')}
                                    onCheckedChange={(checked) => {
                                      const current = formData.travelServices || [];
                                      const updated = checked 
                                        ? [...current, 'flight']
                                        : current.filter(i => i !== 'flight');
                                      handleSelectChange('travelServices', updated);
                                    }}
                                    className="data-[state=checked]:bg-emerald-500 data-[state=unchecked]:bg-slate-400"
                                  />
                                </div>
                                <div className="flex items-center justify-between bg-slate-50 dark:bg-slate-900/50 p-3 rounded-lg border border-slate-100 dark:border-slate-700 hover:border-emerald-300 transition-colors">
                                  <Label htmlFor="service-visa" className="cursor-pointer font-medium text-slate-700 dark:text-slate-200">{t('createAd.travel.services.visa') || 'Visa'}</Label>
                                  <Switch id="service-visa" 
                                    checked={formData.travelServices?.includes('visa')}
                                    onCheckedChange={(checked) => {
                                      const current = formData.travelServices || [];
                                      const updated = checked 
                                        ? [...current, 'visa']
                                        : current.filter(i => i !== 'visa');
                                      handleSelectChange('travelServices', updated);
                                    }}
                                    className="data-[state=checked]:bg-emerald-500 data-[state=unchecked]:bg-slate-400"
                                  />
                                </div>
                                <div className="flex items-center justify-between bg-slate-50 dark:bg-slate-900/50 p-3 rounded-lg border border-slate-100 dark:border-slate-700 hover:border-emerald-300 transition-colors">
                                  <Label htmlFor="service-guide" className="cursor-pointer font-medium text-slate-700 dark:text-slate-200">{t('createAd.travel.services.guide') || 'Guide'}</Label>
                                  <Switch id="service-guide" 
                                    checked={formData.travelServices?.includes('guide')}
                                    onCheckedChange={(checked) => {
                                      const current = formData.travelServices || [];
                                      const updated = checked 
                                        ? [...current, 'guide']
                                        : current.filter(i => i !== 'guide');
                                      handleSelectChange('travelServices', updated);
                                    }}
                                    className="data-[state=checked]:bg-emerald-500 data-[state=unchecked]:bg-slate-400"
                                  />
                                </div>
                              </div>
                           </div>

                           {/* Amenities Checkboxes */}
                           <div className="space-y-3">
                              <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.travel.amenities') || 'Équipements & Options'}</Label>
                              <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                                <div className="flex items-center justify-between bg-slate-50 dark:bg-slate-900/50 p-3 rounded-lg border border-slate-100 dark:border-slate-700 hover:border-emerald-300 transition-colors">
                                  <Label htmlFor="amenity-pool" className="cursor-pointer font-medium text-slate-700 dark:text-slate-200">{t('createAd.travel.amenities.pool') || 'Piscine'}</Label>
                                  <Switch id="amenity-pool" 
                                    checked={formData.travelAmenities?.includes('pool')}
                                    onCheckedChange={(checked) => {
                                      const current = formData.travelAmenities || [];
                                      const updated = checked 
                                        ? [...current, 'pool']
                                        : current.filter(i => i !== 'pool');
                                      handleSelectChange('travelAmenities', updated);
                                    }}
                                    className="data-[state=checked]:bg-emerald-500 data-[state=unchecked]:bg-slate-400"
                                  />
                                </div>
                                <div className="flex items-center justify-between bg-slate-50 dark:bg-slate-900/50 p-3 rounded-lg border border-slate-100 dark:border-slate-700 hover:border-emerald-300 transition-colors">
                                  <Label htmlFor="amenity-seaview" className="cursor-pointer font-medium text-slate-700 dark:text-slate-200">{t('createAd.travel.amenities.seaView') || 'Vue sur mer'}</Label>
                                  <Switch id="amenity-seaview" 
                                    checked={formData.travelAmenities?.includes('seaView')}
                                    onCheckedChange={(checked) => {
                                      const current = formData.travelAmenities || [];
                                      const updated = checked 
                                        ? [...current, 'seaView']
                                        : current.filter(i => i !== 'seaView');
                                      handleSelectChange('travelAmenities', updated);
                                    }}
                                    className="data-[state=checked]:bg-emerald-500 data-[state=unchecked]:bg-slate-400"
                                  />
                                </div>
                                <div className="flex items-center justify-between bg-slate-50 dark:bg-slate-900/50 p-3 rounded-lg border border-slate-100 dark:border-slate-700 hover:border-emerald-300 transition-colors">
                                  <Label htmlFor="amenity-family" className="cursor-pointer font-medium text-slate-700 dark:text-slate-200">{t('createAd.travel.amenities.family') || 'Livret de famille exigé'}</Label>
                                  <Switch id="amenity-family" 
                                    checked={formData.travelAmenities?.includes('family')}
                                    onCheckedChange={(checked) => {
                                      const current = formData.travelAmenities || [];
                                      const updated = checked 
                                        ? [...current, 'family']
                                        : current.filter(i => i !== 'family');
                                      handleSelectChange('travelAmenities', updated);
                                    }}
                                    className="data-[state=checked]:bg-emerald-500 data-[state=unchecked]:bg-slate-400"
                                  />
                                </div>
                              </div>
                           </div>
                        </div>
                      </div>
                    )}

                    {/* Champs spécifiques Événements */}
                    {EVENTS_IDS.includes(formData.category_id) && (
                      <div className="bg-white dark:bg-slate-800 rounded-2xl shadow-xl overflow-hidden mt-8 transition-all duration-300 hover:shadow-2xl border border-slate-100 dark:border-slate-700">
                        <div className="bg-gradient-to-r from-emerald-500/20 to-white dark:from-emerald-500/20 dark:to-slate-900 p-6 relative overflow-hidden [&_*]:!text-slate-900 dark:[&_*]:!text-white">
                          <div className="absolute inset-0 bg-[url('https://grainy-gradients.vercel.app/noise.svg')] opacity-20 mix-blend-soft-light"></div>
                          <div className="flex items-center gap-3 relative z-10">
                            <div className="bg-white/20 backdrop-blur-sm p-3 rounded-xl shadow-inner">
                              <Ticket className="h-8 w-8 text-white" />
                            </div>
                            <div>
                              <h2 className="text-2xl font-bold tracking-tight text-white drop-shadow-sm">{t('createAd.events.title') || 'Événements & Billetterie'}</h2>
                              <p className="text-purple-100 mt-1 font-medium">{t('createAd.events.subtitle') || 'Détails de l\'événement'}</p>
                            </div>
                          </div>
                        </div>
                        <div className="p-6 md:p-8 space-y-6">
                           <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                              <div className="space-y-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.events.type') || 'Type d\'événement'}</Label>
                                <Select onValueChange={(v) => handleSelectChange('eventType', v)} value={formData.eventType}>
                                  <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300"><SelectValue placeholder={t('select')} /></SelectTrigger>
                                  <SelectContent>
                                    <SelectItem value="wedding">{t('createAd.events.types.wedding') || 'Mariage & Fêtes'}</SelectItem>
                                    <SelectItem value="concert">{t('createAd.events.types.concert') || 'Concert & Spectacle'}</SelectItem>
                                    <SelectItem value="sport">{t('createAd.events.types.sport') || 'Sport & Match'}</SelectItem>
                                    <SelectItem value="training">{t('createAd.events.types.training') || 'Formation & Atelier'}</SelectItem>
                                    <SelectItem value="outing">{t('createAd.events.types.outing') || 'Sortie & Loisir'}</SelectItem>
                                  </SelectContent>
                                </Select>
                              </div>
                              <div className="space-y-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.events.format') || 'Format'}</Label>
                                <Select onValueChange={(v) => handleSelectChange('eventFormat', v)} value={formData.eventFormat}>
                                  <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300"><SelectValue placeholder={t('select')} /></SelectTrigger>
                                  <SelectContent>
                                    <SelectItem value="physical">{t('createAd.events.formats.physical') || 'Physique (Présentiel)'}</SelectItem>
                                    <SelectItem value="online">{t('createAd.events.formats.online') || 'En ligne (Virtuel)'}</SelectItem>
                                  </SelectContent>
                                </Select>
                              </div>
                              <div className="space-y-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.events.access') || 'Accès'}</Label>
                                <Select onValueChange={(v) => handleSelectChange('eventAccess', v)} value={formData.eventAccess}>
                                  <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300"><SelectValue placeholder={t('select')} /></SelectTrigger>
                                  <SelectContent>
                                    <SelectItem value="free">{t('createAd.events.access.free') || 'Gratuit'}</SelectItem>
                                    <SelectItem value="paid">{t('createAd.events.access.paid') || 'Payant'}</SelectItem>
                                    <SelectItem value="vip">{t('createAd.events.access.vip') || 'VIP'}</SelectItem>
                                  </SelectContent>
                                </Select>
                              </div>
                           </div>
                        </div>
                      </div>
                    )}

                    {/* Champs spécifiques Emploi */}
                    {JOBS_IDS.includes(formData.category_id) && (
                      <div className="bg-white dark:bg-slate-800 rounded-2xl shadow-xl overflow-hidden mt-8 transition-all duration-300 hover:shadow-2xl border border-slate-100 dark:border-slate-700">
                        <div className="bg-gradient-to-r from-emerald-500/20 to-white dark:from-emerald-500/20 dark:to-slate-900 p-6 relative overflow-hidden [&_*]:!text-slate-900 dark:[&_*]:!text-white">
                          <div className="absolute inset-0 bg-[url('https://grainy-gradients.vercel.app/noise.svg')] opacity-20 mix-blend-soft-light"></div>
                          <div className="flex items-center gap-3 relative z-10">
                            <div className="bg-white/20 backdrop-blur-sm p-3 rounded-xl shadow-inner">
                              <Briefcase className="h-8 w-8 text-white" />
                            </div>
                            <div>
                              <h2 className="text-2xl font-bold tracking-tight text-white drop-shadow-sm">{t('createAd.jobs.title') || 'Emploi & Carrière'}</h2>
                              <p className="text-slate-200 mt-1 font-medium">{t('createAd.jobs.subtitle') || 'Détails de l\'offre'}</p>
                            </div>
                          </div>
                        </div>
                        <div className="p-6 md:p-8 space-y-6">
                           <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                              <div className="space-y-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.jobs.offerType') || 'Type d\'annonce'}</Label>
                                <Select onValueChange={(v) => handleSelectChange('jobOfferType', v)} value={formData.jobOfferType}>
                                  <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-slate-500 focus:ring-4 focus:ring-slate-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-slate-300"><SelectValue placeholder={t('select')} /></SelectTrigger>
                                  <SelectContent>
                                    <SelectItem value="offer">{t('createAd.jobs.offerTypes.offer') || 'Offre d\'emploi'}</SelectItem>
                                    <SelectItem value="demand">{t('createAd.jobs.offerTypes.demand') || 'Demande d\'emploi'}</SelectItem>
                                    <SelectItem value="internship">{t('createAd.jobs.offerTypes.internship') || 'Stage / Apprentissage'}</SelectItem>
                                    <SelectItem value="freelance">{t('createAd.jobs.offerTypes.freelance') || 'Freelance'}</SelectItem>
                                  </SelectContent>
                                </Select>
                              </div>
                              <div className="space-y-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.jobs.contract') || 'Type de contrat'}</Label>
                                <Select onValueChange={(v) => handleSelectChange('jobContract', v)} value={formData.jobContract}>
                                  <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-slate-500 focus:ring-4 focus:ring-slate-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-slate-300"><SelectValue placeholder={t('select')} /></SelectTrigger>
                                  <SelectContent>
                                    <SelectItem value="cdi">{t('createAd.jobs.contracts.cdi') || 'CDI'}</SelectItem>
                                    <SelectItem value="cdd">{t('createAd.jobs.contracts.cdd') || 'CDD'}</SelectItem>
                                    <SelectItem value="freelance">{t('createAd.jobs.contracts.freelance') || 'Freelance'}</SelectItem>
                                    <SelectItem value="internship">{t('createAd.jobs.contracts.internship') || 'Stage'}</SelectItem>
                                  </SelectContent>
                                </Select>
                              </div>
                              <div className="space-y-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.jobs.experience') || 'Expérience'}</Label>
                                <Select onValueChange={(v) => handleSelectChange('jobExperience', v)} value={formData.jobExperience}>
                                  <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-slate-500 focus:ring-4 focus:ring-slate-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-slate-300"><SelectValue placeholder={t('select')} /></SelectTrigger>
                                  <SelectContent>
                                    <SelectItem value="junior">{t('createAd.jobs.experiences.junior') || 'Junior (0-2 ans)'}</SelectItem>
                                    <SelectItem value="mid">{t('createAd.jobs.experiences.mid') || 'Confirmé (2-5 ans)'}</SelectItem>
                                    <SelectItem value="senior">{t('createAd.jobs.experiences.senior') || 'Senior (5+ ans)'}</SelectItem>
                                  </SelectContent>
                                </Select>
                              </div>
                              <div className="space-y-2">
                                <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.jobs.regime') || 'Régime de travail'}</Label>
                                <Select onValueChange={(v) => handleSelectChange('jobRegime', v)} value={formData.jobRegime}>
                                  <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-slate-500 focus:ring-4 focus:ring-slate-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-slate-300"><SelectValue placeholder={t('select')} /></SelectTrigger>
                                  <SelectContent>
                                    <SelectItem value="fullTime">{t('createAd.jobs.regimes.fullTime') || 'Temps plein'}</SelectItem>
                                    <SelectItem value="partTime">{t('createAd.jobs.regimes.partTime') || 'Temps partiel'}</SelectItem>
                                    <SelectItem value="remote">{t('createAd.jobs.regimes.remote') || 'Télétravail'}</SelectItem>
                                  </SelectContent>
                                </Select>
                              </div>
                           </div>
                        </div>
                      </div>
                    )}

                    {/* Images */}
                    <div className="bg-white dark:bg-slate-800 rounded-2xl shadow-xl overflow-hidden border border-slate-100 dark:border-slate-700 transition-all duration-300 hover:shadow-2xl">
                      <div className="bg-gradient-to-r from-emerald-500/20 to-white dark:from-emerald-500/20 dark:to-slate-900 p-6 relative overflow-hidden [&_*]:!text-slate-900 dark:[&_*]:!text-white">
                        <div className="absolute inset-0 bg-[url('https://grainy-gradients.vercel.app/noise.svg')] opacity-20 mix-blend-soft-light"></div>
                        <div className="flex items-center gap-3 relative z-10">
                          <div className="bg-white/20 backdrop-blur-sm p-3 rounded-xl shadow-inner">
                            <Camera className="h-6 w-6 text-white" />
                          </div>
                          <div>
                            <h3 className="text-xl font-bold tracking-tight text-white drop-shadow-sm">{t('createAd.images')}</h3>
                            {(() => { const s = t('createAd.imagesSubtitle'); return s && s !== 'createAd.imagesSubtitle' ? (<p className="text-purple-100 text-sm font-medium">{s}</p>) : null; })()}
                          </div>
                        </div>
                      </div>
                      
                      <div className="p-6">
                        <div className="mt-2">
                          <input
                            type="file"
                            multiple
                            accept="image/*"
                            onChange={handleImageUpload}
                            className="hidden"
                            id="image-upload"
                          />
                          <label
                            htmlFor="image-upload"
                            className="flex flex-col items-center justify-center w-full h-40 border-2 border-dashed border-slate-300 dark:border-slate-600 rounded-2xl cursor-pointer hover:bg-emerald-50 dark:hover:bg-emerald-900/10 hover:border-emerald-500 dark:hover:border-emerald-400 transition-all duration-300 group"
                          >
                            <div className="text-center p-4">
                              <div className="w-12 h-12 bg-emerald-100 dark:bg-emerald-900/30 rounded-full flex items-center justify-center mx-auto mb-3 group-hover:scale-110 transition-transform duration-300">
                                <Upload className="h-6 w-6 text-emerald-600 dark:text-emerald-400" />
                              </div>
                              <span className="block text-base font-semibold text-slate-700 dark:text-slate-200 group-hover:text-emerald-700 dark:group-hover:text-emerald-300">
                                {t('createAd.uploadImages')}
                              </span>
                              <span className="block text-sm text-slate-500 dark:text-slate-400 mt-1">
                                PNG, JPG, WEBP (Max 5MB)
                              </span>
                            </div>
                          </label>
                        </div>
                        
                        {((formData.existingImages && formData.existingImages.length > 0) || (formData.images && formData.images.length > 0)) && (
                          <div className="mt-6 grid grid-cols-2 sm:grid-cols-4 gap-4">
                            {formData.existingImages?.map((image, index) => (
                              <div key={`existing-${index}`} className="relative group">
                                <img
                                  src={image}
                                  alt={`Existing ${index + 1}`}
                                  className={`w-full h-24 object-cover rounded-xl border shadow-sm ${index === 0 ? 'border-purple-500 ring-2 ring-purple-500/20' : 'border-slate-200 dark:border-slate-700'}`}
                                />
                                {index === 0 && (
                                  <div className="absolute top-2 left-2 bg-purple-600 text-white text-[10px] font-bold px-1.5 py-0.5 rounded-md shadow-lg z-10 uppercase tracking-wider">
                                    {t('createAd.mainImage') || 'Principal'}
                                  </div>
                                )}
                                <button
                                  type="button"
                                  onClick={() => removeExistingImage(index)}
                                  className="absolute -top-2 -right-2 bg-red-500 text-white rounded-full w-6 h-6 flex items-center justify-center text-xs shadow-md transform hover:scale-110 transition-transform z-20"
                                >
                                  ×
                                </button>
                                <div className="absolute inset-0 bg-black/0 group-hover:bg-black/10 transition-colors rounded-xl pointer-events-none" />
                              </div>
                            ))}
                            {formData.images.map((image, index) => (
                              <div key={`new-${index}`} className="relative group">
                                <img
                                  src={URL.createObjectURL(image)}
                                  alt={`Preview ${index + 1}`}
                                  className={`w-full h-24 object-cover rounded-xl border shadow-sm ${(!formData.existingImages || formData.existingImages.length === 0) && index === 0 ? 'border-purple-500 ring-2 ring-purple-500/20' : 'border-slate-200 dark:border-slate-700'}`}
                                />
                                {(!formData.existingImages || formData.existingImages.length === 0) && index === 0 && (
                                  <div className="absolute top-2 left-2 bg-purple-600 text-white text-[10px] font-bold px-1.5 py-0.5 rounded-md shadow-lg z-10 uppercase tracking-wider">
                                    {t('createAd.mainImage') || 'Principal'}
                                  </div>
                                )}
                                <button
                                  type="button"
                                  onClick={() => removeImage(index)}
                                  className="absolute -top-2 -right-2 bg-red-500 text-white rounded-full w-6 h-6 flex items-center justify-center text-xs shadow-md transform hover:scale-110 transition-transform z-20"
                                >
                                  ×
                                </button>
                                <div className="absolute inset-0 bg-black/0 group-hover:bg-black/10 transition-colors rounded-xl pointer-events-none" />
                              </div>
                            ))}
                          </div>
                        )}
                      </div>
                    </div>

                    {/* Vidéos */}
                    {isVideoEnabled && (
                      <div className="bg-white dark:bg-slate-800 rounded-2xl shadow-xl overflow-hidden border border-slate-100 dark:border-slate-700 transition-all duration-300 hover:shadow-2xl">
                        <div className="bg-gradient-to-r from-emerald-500/20 to-white dark:from-emerald-500/20 dark:to-slate-900 p-6 relative overflow-hidden [&_*]:!text-slate-900 dark:[&_*]:!text-white">
                          <div className="absolute inset-0 bg-[url('https://grainy-gradients.vercel.app/noise.svg')] opacity-20 mix-blend-soft-light"></div>
                          <div className="flex items-center gap-3 relative z-10">
                            <div className="bg-white/20 backdrop-blur-sm p-3 rounded-xl shadow-inner">
                              <Video className="h-6 w-6 text-white" />
                            </div>
                            <div>
                              <h3 className="text-xl font-bold tracking-tight text-white drop-shadow-sm">{t('createAd.videos')}</h3>
                              {(() => { const s = t('createAd.videosSubtitle'); return s && s !== 'createAd.videosSubtitle' ? (<p className="text-pink-100 text-sm font-medium">{s}</p>) : null; })()}
                            </div>
                          </div>
                        </div>
                        
                        <div className="p-6">
                          <div className="mt-2">
                            <input
                              type="file"
                              multiple
                              accept="video/*"
                              onChange={handleVideoUpload}
                              className="hidden"
                              id="video-upload"
                            />
                            <label
                              htmlFor="video-upload"
                              className="flex flex-col items-center justify-center w-full h-32 border-2 border-dashed border-slate-300 dark:border-slate-600 rounded-2xl cursor-pointer hover:bg-emerald-50 dark:hover:bg-emerald-900/10 hover:border-emerald-500 dark:hover:border-emerald-400 transition-all duration-300 group"
                            >
                              <div className="text-center p-4">
                                <div className="w-10 h-10 bg-emerald-100 dark:bg-emerald-900/30 rounded-full flex items-center justify-center mx-auto mb-2 group-hover:scale-110 transition-transform duration-300">
                                  <Upload className="h-5 w-5 text-emerald-600 dark:text-emerald-400" />
                                </div>
                                <span className="block text-sm font-semibold text-slate-700 dark:text-slate-200 group-hover:text-emerald-700 dark:group-hover:text-emerald-300">
                                  {t('createAd.addVideo') || 'Ajouter une vidéo'}
                                </span>
                              </div>
                            </label>
                          </div>
                          {formData.productVideoFiles.length > 0 && (
                            <div className="mt-4 space-y-2">
                              {formData.productVideoFiles.map((video, index) => (
                                <div key={index} className="flex items-center justify-between bg-slate-50 dark:bg-slate-900/50 p-3 rounded-xl border border-slate-100 dark:border-slate-700">
                                  <div className="flex items-center gap-3 overflow-hidden">
                                    <div className="bg-pink-100 dark:bg-pink-900/30 p-2 rounded-lg">
                                      <Video className="h-4 w-4 text-pink-600 dark:text-pink-400" />
                                    </div>
                                    <div className="text-sm font-medium text-slate-700 dark:text-slate-200 truncate">{video.name}</div>
                                  </div>
                                  <button
                                    type="button"
                                    onClick={() => removeVideoFile(index)}
                                    className="bg-red-100 text-red-600 hover:bg-red-200 rounded-full w-8 h-8 flex items-center justify-center transition-colors"
                                  >
                                    ×
                                  </button>
                                </div>
                              ))}
                            </div>
                          )}
                        </div>
                      </div>
                    )}

                    {/* Options */}
                    <div className="bg-white dark:bg-slate-800 rounded-2xl shadow-xl overflow-hidden border border-slate-100 dark:border-slate-700 transition-all duration-300 hover:shadow-2xl">
                    <div className="bg-gradient-to-r from-emerald-500/20 to-white dark:from-emerald-500/20 dark:to-slate-900 p-6 relative overflow-hidden [&_*]:!text-slate-900 dark:[&_*]:!text-white">
                        <div className="absolute inset-0 bg-[url('https://grainy-gradients.vercel.app/noise.svg')] opacity-20 mix-blend-soft-light"></div>
                        <div className="flex items-center gap-3 relative z-10">
                          <div className="bg-white/20 backdrop-blur-sm p-3 rounded-xl shadow-inner">
                            <Clock className="h-8 w-8 text-white" />
                          </div>
                          <div>
                            <h3 className="text-xl font-bold tracking-tight text-white drop-shadow-sm">{t('createAd.options')}</h3>
                            {(() => { const s = t('createAd.optionsSubtitle'); return s && s !== 'createAd.optionsSubtitle' ? (<p className="text-amber-100 text-sm font-medium">{s}</p>) : null; })()}
                          </div>
                        </div>
                      </div>
                      
                      <div className="p-8 space-y-6">
                        {/* Urgent Option */}
                        <div className="group relative overflow-hidden rounded-2xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 p-5 transition-all duration-300 hover:border-emerald-300 hover:shadow-md hover:bg-white dark:hover:bg-slate-800">
                          <div className="flex items-center justify-between gap-4">
                            <div className="flex-1">
                              <div className="flex items-center gap-3 mb-1">
                                <Label
                                  htmlFor="is_urgent"
                                  className={`text-lg font-bold cursor-pointer transition-colors ${formData.is_urgent ? 'text-red-600 dark:text-red-300' : 'text-slate-900 dark:text-white'} group-hover:text-red-600 dark:group-hover:text-red-300`}
                                >
                                  {t('createAd.urgent')}
                                </Label>
                                <Badge
                                  variant="outline"
                                  className={`animate-pulse shadow-sm transition-colors ${formData.is_urgent ? 'bg-red-100 text-red-800 border-red-200 dark:bg-red-900/30 dark:text-red-200 dark:border-red-800' : 'bg-emerald-100 text-emerald-800 border-emerald-200 dark:bg-emerald-900/30 dark:text-emerald-200 dark:border-emerald-800'} group-hover:bg-red-100 group-hover:text-red-800 group-hover:border-red-200 dark:group-hover:bg-red-900/30 dark:group-hover:text-red-200 dark:group-hover:border-red-800`}
                                >
                                  <Clock className="h-3 w-3 mr-1" />
                                  Urgent
                                </Badge>
                              </div>
                              <p className="text-sm text-slate-500 dark:text-slate-400 leading-relaxed">
                                {t('createAd.urgentDescription') || 'Attirez l\'attention avec le badge "Urgent". Votre annonce sera mise en avant.'}
                              </p>
                            </div>
                            <div className="pt-1">
                              <Switch
                                id="is_urgent"
                                checked={formData.is_urgent}
                                onCheckedChange={(checked) =>
                                  setFormData(prev => ({ ...prev, is_urgent: !!checked }))
                                }
                                className="data-[state=checked]:bg-red-500 data-[state=unchecked]:bg-slate-400"
                              />
                            </div>
                          </div>
                        </div>

                        {/* Premium Option */}
                        <div className="group relative overflow-hidden rounded-2xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 p-5 transition-all duration-300 hover:border-emerald-300 hover:shadow-md hover:bg-white dark:hover:bg-slate-800">
                          <div className="flex items-center justify-between gap-4">
                            <div className="flex-1">
                              <div className="flex items-center justify-between mb-1">
                                <Label htmlFor="is_premium" className="text-lg font-bold text-slate-900 dark:text-white cursor-pointer group-hover:text-amber-600 transition-colors">
                                  {t('announcements.premium') || 'Premium'}
                                </Label>
                                <Badge variant="secondary" className="bg-amber-100 text-amber-800 border-amber-200 shadow-sm">
                                  <Star className="h-3 w-3 mr-1 fill-amber-600 text-amber-600" />
                                  Premium
                                </Badge>
                              </div>
                              <p className="text-sm text-slate-500 dark:text-slate-400 leading-relaxed mb-3">
                                {t('createAd.premiumDescription') || 'Apparaissez en tête de liste et obtenez jusqu\'à 10x plus de vues.'}
                              </p>
                              <div className="inline-flex items-center gap-2 px-3 py-1.5 rounded-full bg-slate-100 dark:bg-slate-800 text-xs font-medium text-slate-600 dark:text-slate-300 border border-slate-200 dark:border-slate-700">
                                <span className="font-bold text-emerald-600 dark:text-emerald-400">{referralPoints} pts</span>
                                <span>•</span>
                                <LocalizedLink to="/parrainage" className="hover:text-blue-600 hover:underline transition-colors">
                                  {t('parrainage.earnPoints') || 'Gagner des points'}
                                </LocalizedLink>
                              </div>
                            </div>
                            <div className="pt-1">
                              <Switch
                                id="is_premium"
                                checked={formData.isPremium}
                                onCheckedChange={(checked) => {
                                  const wantPremium = !!checked;
                                  if (wantPremium) {
                                    if (referralPoints >= 100) {
                                      setFormData(prev => ({ ...prev, isPremium: true }));
                                    } else {
                                      toast({
                                        title: 'Premium indisponible',
                                        description: 'Vous avez besoin de 100 points ou d’un paiement',
                                        variant: 'destructive'
                                      });
                                      setFormData(prev => ({ ...prev, isPremium: false }));
                                    }
                                  } else {
                                    setFormData(prev => ({ ...prev, isPremium: false }));
                                  }
                                }}
                                className="data-[state=checked]:bg-amber-500 data-[state=unchecked]:bg-slate-400"
                              />
                            </div>
                          </div>
                        </div>

                        {/* Expiration Date */}
                        <div className="space-y-3 pt-2">
                          <Label htmlFor="expires_at" className="text-base font-semibold text-slate-700 dark:text-slate-200 flex items-center gap-2">
                            <CalendarDays className="h-5 w-5 text-slate-400" />
                            {t('createAd.expiresAt')} <span className="text-slate-400 font-normal text-sm">(optionnel)</span>
                          </Label>
                          <div className="relative group">
                            <div className="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                              <CalendarDays className="h-5 w-5 text-slate-400 group-focus-within:text-emerald-600 transition-colors" />
                            </div>
                              <Input
                                id="expires_at"
                                name="expires_at"
                                type="date"
                                value={formData.expires_at}
                                onChange={handleInputChange}
                              className="pl-10 h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-emerald-500 focus:ring-4 focus:ring-emerald-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-emerald-300"
                              />
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <div className="border-t border-slate-200 dark:border-slate-700 pt-8 mt-8">
                  <Alert className="bg-emerald-50 dark:bg-emerald-900/20 border-emerald-200 dark:border-emerald-800 text-emerald-800 dark:text-emerald-200 rounded-xl shadow-sm mb-8">
                    <Check className="h-5 w-5 text-emerald-600 dark:text-emerald-400" />
                    <AlertDescription className="ml-2 font-medium">
                      {t('createAd.termsNotice')}
                    </AlertDescription>
                  </Alert>

                  <div className="flex flex-col md:flex-row gap-4">
                    <Button
                      type="button"
                      variant="outline"
                      onClick={() => {
                        if (confirm("Voulez-vous vraiment supprimer ce brouillon et annuler ?")) {
                          clearDraft();
                          navigate('/');
                        }
                      }}
                      className="flex-1 h-14 rounded-full border-2 border-red-100 dark:border-red-900/30 text-red-600 dark:text-red-400 hover:bg-red-50 dark:hover:bg-red-900/20 hover:border-red-200 dark:hover:border-red-800 shadow-[inset_0_2px_6px_rgba(255,255,255,0.6),0_10px_18px_rgba(15,23,42,0.14)] hover:shadow-[inset_0_2px_6px_rgba(255,255,255,0.6),0_14px_22px_rgba(15,23,42,0.16)] active:translate-y-0.5 active:shadow-[inset_0_2px_6px_rgba(255,255,255,0.6),0_6px_14px_rgba(15,23,42,0.12)] transition-all duration-300"
                    >
                      <div className="flex flex-col items-center gap-1">
                        <div className="flex items-center gap-2 font-bold">
                          <Trash2 className="h-4 w-4" />
                          {t('common.cancel') || 'Annuler'}
                        </div>
                        {lastSaved && (
                          <span className="text-[10px] opacity-70 font-normal">
                            Sauvegardé à {lastSaved.toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' })}
                          </span>
                        )}
                      </div>
                    </Button>

                    <Button
                      type="button"
                      variant="secondary"
                      onClick={() => setShowPreview(true)}
                      className="flex-1 h-14 rounded-full bg-slate-100 dark:bg-slate-800 text-slate-700 dark:text-slate-200 hover:bg-slate-200 dark:hover:bg-slate-700 border-2 border-slate-200 dark:border-slate-700 shadow-[inset_0_2px_6px_rgba(255,255,255,0.7),0_10px_18px_rgba(15,23,42,0.14)] hover:shadow-[inset_0_2px_6px_rgba(255,255,255,0.7),0_14px_22px_rgba(15,23,42,0.16)] active:translate-y-0.5 active:shadow-[inset_0_2px_6px_rgba(255,255,255,0.7),0_6px_14px_rgba(15,23,42,0.12)] transition-all duration-300 font-bold"
                    >
                      <Eye className="mr-2 h-5 w-5" />
                      {t('createAd.previewButton')}
                    </Button>

                    <Button
                      type="submit"
                      disabled={loading}
                      className="flex-[1.5] h-14 text-lg font-bold rounded-full bg-gradient-to-r from-emerald-500 to-teal-600 hover:from-emerald-600 hover:to-teal-700 text-white shadow-[inset_0_2px_8px_rgba(255,255,255,0.35),0_14px_26px_rgba(16,185,129,0.32)] hover:shadow-[inset_0_2px_8px_rgba(255,255,255,0.35),0_18px_32px_rgba(16,185,129,0.36)] active:translate-y-0.5 active:shadow-[inset_0_2px_8px_rgba(255,255,255,0.35),0_10px_18px_rgba(16,185,129,0.26)] transition-all duration-300 hover:-translate-y-0.5"
                    >
                      {loading && <Loader2 className="mr-2 h-5 w-5 animate-spin" />}
                      {isEditing ? tr('createAd.update', 'Mettre à jour') : tr('createAd.publish', 'Publier l\'annonce')}
                    </Button>
                  </div>
                </div>
              </form>
            </div>
          </div>
          

        </div>
      </div>

      {/* Preview Modal */}
        <Dialog open={showPreview} onOpenChange={setShowPreview}>
          <DialogContent className="max-w-4xl h-[90vh] p-0 overflow-hidden flex flex-col bg-slate-50 dark:bg-slate-950 border-none shadow-2xl">
            <DialogHeader className="p-6 pb-4 border-b border-slate-200 dark:border-slate-800 bg-white dark:bg-slate-900 z-10 shadow-sm">
              <DialogTitle className="text-2xl font-bold flex items-center gap-2 text-slate-800 dark:text-white">
                <div className="bg-blue-100 dark:bg-blue-900/30 p-2 rounded-lg">
                  <Eye className="h-6 w-6 text-blue-600 dark:text-blue-400" />
                </div>
                {t('preview.title')}
              </DialogTitle>
            </DialogHeader>
            
            <ScrollArea className="flex-1 p-6">
              <div className="max-w-3xl mx-auto space-y-8 pb-10">
                {/* Header Preview */}
                <div className="bg-white dark:bg-slate-800 p-8 rounded-3xl shadow-xl border border-slate-100 dark:border-slate-700 relative overflow-hidden">
                  <div className="absolute top-0 left-0 w-full h-2 bg-gradient-to-r from-blue-500 to-indigo-600"></div>
                  <h1 className="text-2xl md:text-4xl font-extrabold text-slate-900 dark:text-white mb-6 leading-tight">
                    {formData.title || t('preview.noTitle')}
                  </h1>
                  <div className="flex flex-wrap items-center gap-4 text-sm font-medium text-slate-600 dark:text-slate-300">
                    <div className="flex items-center gap-2 bg-slate-100 dark:bg-slate-700/50 px-3 py-1.5 rounded-full">
                      <MapPin className="h-4 w-4 text-emerald-500" />
                      {formData.wilaya ? `${formData.wilaya}${formData.commune ? ' - ' + formData.commune : ''}${formData.location ? ', ' + formData.location : ''}` : t('preview.location')}
                    </div>
                    <div className="flex items-center gap-2 bg-slate-100 dark:bg-slate-700/50 px-3 py-1.5 rounded-full">
                      <Clock className="h-4 w-4 text-blue-500" />
                      {t('preview.today')}
                    </div>
                  </div>
                  <div className="mt-8 flex items-center">
                    <div className="text-4xl font-black text-transparent bg-clip-text bg-gradient-to-r from-emerald-600 to-teal-500 drop-shadow-sm">
                      {formData.price ? `${Number(formData.price).toLocaleString()} ${formData.currency}` : t('preview.priceUndefined')}
                    </div>
                  </div>
                </div>

                {/* Images Preview */}
                <div className="grid grid-cols-2 md:grid-cols-4 gap-4">
                   {(formData.images.length > 0 || formData.existingImages.length > 0) ? (
                     <>
                       {formData.existingImages.map((img, i) => (
                         <div key={`existing-${i}`} className="aspect-square rounded-2xl overflow-hidden bg-slate-100 dark:bg-slate-800 relative shadow-md group border-2 border-transparent hover:border-emerald-500 transition-all duration-300">
                            <img src={img} alt={`Preview ${i}`} className="w-full h-full object-cover group-hover:scale-110 transition-transform duration-500" />
                            <Badge className="absolute top-2 right-2 bg-blue-500 shadow-lg">{t('preview.existing')}</Badge>
                         </div>
                       ))}
                       {formData.images.map((file, i) => (
                         <div key={`new-${i}`} className="aspect-square rounded-2xl overflow-hidden bg-slate-100 dark:bg-slate-800 relative shadow-md group border-2 border-transparent hover:border-green-500 transition-all duration-300">
                            <img src={URL.createObjectURL(file)} alt={`Preview new ${i}`} className="w-full h-full object-cover group-hover:scale-110 transition-transform duration-500" />
                            <Badge className="absolute top-2 right-2 bg-green-500 shadow-lg">{t('preview.new')}</Badge>
                         </div>
                       ))}
                     </>
                   ) : (
                     <div className="col-span-full h-64 bg-slate-100 dark:bg-slate-800/50 border-2 border-dashed border-slate-300 dark:border-slate-600 rounded-3xl flex items-center justify-center text-slate-400 flex-col gap-4">
                       <div className="bg-slate-200 dark:bg-slate-700 p-4 rounded-full">
                         <Camera className="h-10 w-10" />
                       </div>
                       <p className="font-medium">{t('preview.noImage')}</p>
                     </div>
                   )}
                </div>

                {/* Description Preview */}
                <div className="bg-white dark:bg-slate-800 p-8 rounded-3xl shadow-xl border border-slate-100 dark:border-slate-700">
                  <h3 className="text-xl font-bold mb-6 flex items-center gap-3 text-slate-900 dark:text-white">
                    <div className="bg-indigo-100 dark:bg-indigo-900/30 p-2 rounded-lg">
                      <FileText className="h-6 w-6 text-indigo-600 dark:text-indigo-400" />
                    </div>
                    {t('preview.description')}
                  </h3>
                  <div className="prose dark:prose-invert max-w-none">
                    <p className="whitespace-pre-wrap text-slate-700 dark:text-slate-300 leading-relaxed text-lg">
                      {formData.description || t('preview.noDescription')}
                    </p>
                  </div>
                </div>

                {/* Details Preview */}
                {formData.category_id && (
                  <div className="bg-white dark:bg-slate-800 p-8 rounded-3xl shadow-xl border border-slate-100 dark:border-slate-700">
                    <h3 className="text-xl font-bold mb-6 flex items-center gap-3 text-slate-900 dark:text-white">
                      <div className="bg-violet-100 dark:bg-violet-900/30 p-2 rounded-lg">
                        <Tag className="h-6 w-6 text-violet-600 dark:text-violet-400" />
                      </div>
                      {t('preview.features')}
                    </h3>
                    <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                       <div className="flex items-center justify-between p-4 bg-slate-50 dark:bg-slate-900/50 rounded-2xl border border-slate-100 dark:border-slate-800">
                          <span className="text-slate-500 dark:text-slate-400 font-medium">{t('preview.condition')}</span>
                          <span className="font-bold text-slate-900 dark:text-white">{conditions.find(c => c.value === formData.condition)?.label || formData.condition || "-"}</span>
                       </div>
                       {formData.brand && (
                         <div className="flex items-center justify-between p-4 bg-slate-50 dark:bg-slate-900/50 rounded-2xl border border-slate-100 dark:border-slate-800">
                            <span className="text-slate-500 dark:text-slate-400 font-medium">{t('preview.brand')}</span>
                            <span className="font-bold text-slate-900 dark:text-white">{formData.brand}</span>
                         </div>
                       )}
                       {formData.model && (
                         <div className="flex items-center justify-between p-4 bg-slate-50 dark:bg-slate-900/50 rounded-2xl border border-slate-100 dark:border-slate-800">
                            <span className="text-slate-500 dark:text-slate-400 font-medium">{t('preview.model')}</span>
                            <span className="font-bold text-slate-900 dark:text-white">{formData.model}</span>
                         </div>
                       )}
                    </div>
                  </div>
                )}

                {/* Travel Details Preview */}
                {TRAVEL_IDS.includes(formData.category_id) && (
                  <div className="bg-white dark:bg-slate-800 p-8 rounded-3xl shadow-xl border border-slate-100 dark:border-slate-700">
                    <h3 className="text-xl font-bold mb-6 flex items-center gap-3 text-slate-900 dark:text-white">
                      <div className="bg-blue-100 dark:bg-blue-900/30 p-2 rounded-lg">
                        <Plane className="h-6 w-6 text-blue-600 dark:text-blue-400" />
                      </div>
                      {t('createAd.travel.title') || 'Détails Voyage'}
                    </h3>
                    <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                       {formData.travelType && (
                         <div className="flex items-center justify-between p-4 bg-slate-50 dark:bg-slate-900/50 rounded-2xl border border-slate-100 dark:border-slate-800">
                            <span className="text-slate-500 dark:text-slate-400 font-medium">{t('createAd.travel.type') || 'Type de voyage'}</span>
                            <span className="font-bold text-slate-900 dark:text-white">{t(`createAd.travel.types.${formData.travelType}`) || formData.travelType}</span>
                         </div>
                       )}
                       {formData.travelDestination && (
                         <div className="flex items-center justify-between p-4 bg-slate-50 dark:bg-slate-900/50 rounded-2xl border border-slate-100 dark:border-slate-800">
                            <span className="text-slate-500 dark:text-slate-400 font-medium">{t('createAd.travel.destination') || 'Destination'}</span>
                            <span className="font-bold text-slate-900 dark:text-white">{formData.travelDestination}</span>
                         </div>
                       )}
                       {formData.travelStars && (
                         <div className="flex items-center justify-between p-4 bg-slate-50 dark:bg-slate-900/50 rounded-2xl border border-slate-100 dark:border-slate-800">
                            <span className="text-slate-500 dark:text-slate-400 font-medium">{t('createAd.travel.stars') || 'Classement'}</span>
                            <div className="flex items-center gap-1">
                              <span className="font-bold text-slate-900 dark:text-white">{formData.travelStars}</span>
                              <Star className="h-4 w-4 fill-yellow-400 text-yellow-400" />
                            </div>
                         </div>
                       )}
                    </div>
                    
                    {(formData.travelServices?.length > 0 || formData.travelAmenities?.length > 0) && (
                      <div className="mt-6 space-y-4">
                        {formData.travelServices?.length > 0 && (
                          <div>
                            <h4 className="font-semibold text-slate-700 dark:text-slate-300 mb-2">{t('createAd.travel.services') || 'Services inclus'}</h4>
                            <div className="flex flex-wrap gap-2">
                              {formData.travelServices.map((service: string) => (
                                <Badge key={service} variant="secondary" className="bg-emerald-50 text-emerald-700 border-emerald-200">
                                  {t(`createAd.travel.servicesList.${service}`) || service}
                                </Badge>
                              ))}
                            </div>
                          </div>
                        )}
                        
                        {formData.travelAmenities?.length > 0 && (
                          <div>
                            <h4 className="font-semibold text-slate-700 dark:text-slate-300 mb-2">{t('createAd.travel.amenities') || 'Équipements & Options'}</h4>
                            <div className="flex flex-wrap gap-2">
                              {formData.travelAmenities.map((amenity: string) => (
                                <Badge key={amenity} variant="secondary" className="bg-blue-50 text-blue-700 border-blue-200">
                                  {t(`createAd.travel.amenitiesList.${amenity}`) || amenity}
                                </Badge>
                              ))}
                            </div>
                          </div>
                        )}
                      </div>
                    )}
                  </div>
                )}

                {/* Real Estate Details Preview */}
                {['immobilier', 'appartements', 'maisons', 'terrains', 'locations-immobilier', 'immobilier-commercial', 'garages-parkings'].includes(formData.category_id) && (
                  <div className="bg-white dark:bg-slate-800 p-8 rounded-3xl shadow-xl border border-slate-100 dark:border-slate-700">
                    <h3 className="text-xl font-bold mb-6 flex items-center gap-3 text-slate-900 dark:text-white">
                      <div className="bg-blue-100 dark:bg-blue-900/30 p-2 rounded-lg">
                        <Home className="h-6 w-6 text-blue-600 dark:text-blue-400" />
                      </div>
                      {t('createAd.realEstate.details') || 'Détails Immobilier'}
                    </h3>
                    <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                      {formData.realEstateType && (
                        <div className="flex items-center justify-between p-4 bg-slate-50 dark:bg-slate-900/50 rounded-2xl border border-slate-100 dark:border-slate-800">
                           <span className="text-slate-500 dark:text-slate-400 font-medium">{t('createAd.realEstate.propertyType')}</span>
                           <span className="font-bold text-slate-900 dark:text-white capitalize">{t(`createAd.realEstate.type.${formData.realEstateType}`) || formData.realEstateType}</span>
                        </div>
                      )}
                      {formData.realEstateSurface && (
                        <div className="flex items-center justify-between p-4 bg-slate-50 dark:bg-slate-900/50 rounded-2xl border border-slate-100 dark:border-slate-800">
                           <span className="text-slate-500 dark:text-slate-400 font-medium">{t('createAd.realEstate.surface')}</span>
                           <span className="font-bold text-slate-900 dark:text-white">{formData.realEstateSurface} m²</span>
                        </div>
                      )}
                      {formData.realEstateRooms && (
                        <div className="flex items-center justify-between p-4 bg-slate-50 dark:bg-slate-900/50 rounded-2xl border border-slate-100 dark:border-slate-800">
                           <span className="text-slate-500 dark:text-slate-400 font-medium">{t('createAd.realEstate.rooms')}</span>
                           <span className="font-bold text-slate-900 dark:text-white">{formData.realEstateRooms}</span>
                        </div>
                      )}
                       {formData.realEstateBedrooms && (
                        <div className="flex items-center justify-between p-4 bg-slate-50 dark:bg-slate-900/50 rounded-2xl border border-slate-100 dark:border-slate-800">
                           <span className="text-slate-500 dark:text-slate-400 font-medium">{t('createAd.realEstate.bedrooms')}</span>
                           <span className="font-bold text-slate-900 dark:text-white">{formData.realEstateBedrooms}</span>
                        </div>
                      )}
                       {formData.realEstateBathrooms && (
                        <div className="flex items-center justify-between p-4 bg-slate-50 dark:bg-slate-900/50 rounded-2xl border border-slate-100 dark:border-slate-800">
                           <span className="text-slate-500 dark:text-slate-400 font-medium">{t('createAd.realEstate.bathrooms')}</span>
                           <span className="font-bold text-slate-900 dark:text-white">{formData.realEstateBathrooms}</span>
                        </div>
                      )}
                      {formData.realEstateFloor && (
                        <div className="flex items-center justify-between p-4 bg-slate-50 dark:bg-slate-900/50 rounded-2xl border border-slate-100 dark:border-slate-800">
                           <span className="text-slate-500 dark:text-slate-400 font-medium">{t('createAd.realEstate.floor')}</span>
                           <span className="font-bold text-slate-900 dark:text-white">{formData.realEstateFloor}</span>
                        </div>
                      )}
                      {formData.realEstateView && (
                        <div className="flex items-center justify-between p-4 bg-slate-50 dark:bg-slate-900/50 rounded-2xl border border-slate-100 dark:border-slate-800">
                           <span className="text-slate-500 dark:text-slate-400 font-medium">{t('createAd.realEstate.view')}</span>
                           <span className="font-bold text-slate-900 dark:text-white capitalize">{t(`createAd.realEstate.viewType.${formData.realEstateView}`) || formData.realEstateView}</span>
                        </div>
                      )}
                    </div>

                    {/* Amenities / Booleans */}
                    <div className="mt-6 flex flex-wrap gap-3">
                        {formData.realEstateFurnished && <Badge variant="secondary" className="px-3 py-1 text-sm bg-blue-50 text-blue-700 border-blue-200">{t('createAd.realEstate.furnished')}</Badge>}
                        {formData.realEstateParking && <Badge variant="secondary" className="px-3 py-1 text-sm bg-blue-50 text-blue-700 border-blue-200">{t('createAd.realEstate.parking')}</Badge>}
                        {formData.realEstateGarage && <Badge variant="secondary" className="px-3 py-1 text-sm bg-blue-50 text-blue-700 border-blue-200">{t('createAd.realEstate.garage')}</Badge>}
                        {formData.realEstateGarden && <Badge variant="secondary" className="px-3 py-1 text-sm bg-blue-50 text-blue-700 border-blue-200">{t('createAd.realEstate.garden')}</Badge>}
                        {formData.realEstatePool && <Badge variant="secondary" className="px-3 py-1 text-sm bg-blue-50 text-blue-700 border-blue-200">{t('createAd.realEstate.pool')}</Badge>}
                        {formData.realEstateElevator && <Badge variant="secondary" className="px-3 py-1 text-sm bg-blue-50 text-blue-700 border-blue-200">{t('createAd.realEstate.elevator')}</Badge>}
                        {formData.realEstateBalcony && <Badge variant="secondary" className="px-3 py-1 text-sm bg-blue-50 text-blue-700 border-blue-200">{t('createAd.realEstate.balcony')}</Badge>}
                        {formData.realEstateTerrace && <Badge variant="secondary" className="px-3 py-1 text-sm bg-blue-50 text-blue-700 border-blue-200">{t('createAd.realEstate.terrace')}</Badge>}
                        {formData.realEstateWithPermit && <Badge variant="secondary" className="px-3 py-1 text-sm bg-green-50 text-green-700 border-green-200">{t('createAd.realEstate.withPermit')}</Badge>}
                    </div>
                  </div>
                )}

                {/* Computer Details Preview */}
                {COMPUTER_IDS.includes(formData.category_id) && !PHONE_IDS.includes(formData.category_id) && (
                  <div className="bg-white dark:bg-slate-800 p-8 rounded-3xl shadow-xl border border-slate-100 dark:border-slate-700">
                    <h3 className="text-xl font-bold mb-6 flex items-center gap-3 text-slate-900 dark:text-white">
                      <div className="bg-blue-100 dark:bg-blue-900/30 p-2 rounded-lg">
                        <Tag className="h-6 w-6 text-blue-600 dark:text-blue-400" />
                      </div>
                      Configuration Informatique
                    </h3>
                    <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                      {formData.computerProcessor && <div className="flex justify-between p-4 bg-slate-50 dark:bg-slate-900/50 rounded-2xl border border-slate-100 dark:border-slate-800"><span className="text-slate-500 font-medium">Processeur</span><span className="font-bold text-slate-900 dark:text-white">{formData.computerProcessor}</span></div>}
                      {formData.computerRam && <div className="flex justify-between p-4 bg-slate-50 dark:bg-slate-900/50 rounded-2xl border border-slate-100 dark:border-slate-800"><span className="text-slate-500 font-medium">RAM</span><span className="font-bold text-slate-900 dark:text-white">{formData.computerRam}</span></div>}
                      {formData.computerStorage && <div className="flex justify-between p-4 bg-slate-50 dark:bg-slate-900/50 rounded-2xl border border-slate-100 dark:border-slate-800"><span className="text-slate-500 font-medium">Stockage</span><span className="font-bold text-slate-900 dark:text-white">{formData.computerStorage}</span></div>}
                      {formData.computerGraphicsCard && <div className="flex justify-between p-4 bg-slate-50 dark:bg-slate-900/50 rounded-2xl border border-slate-100 dark:border-slate-800"><span className="text-slate-500 font-medium">Carte Graphique</span><span className="font-bold text-slate-900 dark:text-white">{formData.computerGraphicsCard}</span></div>}
                      {formData.computerScreenSize && <div className="flex justify-between p-4 bg-slate-50 dark:bg-slate-900/50 rounded-2xl border border-slate-100 dark:border-slate-800"><span className="text-slate-500 font-medium">Écran</span><span className="font-bold text-slate-900 dark:text-white">{formData.computerScreenSize}</span></div>}
                      {formData.computerOs && <div className="flex justify-between p-4 bg-slate-50 dark:bg-slate-900/50 rounded-2xl border border-slate-100 dark:border-slate-800"><span className="text-slate-500 font-medium">OS</span><span className="font-bold text-slate-900 dark:text-white">{formData.computerOs}</span></div>}
                    </div>
                  </div>
                )}

                {/* Phone Details Preview */}
                {(PHONE_IDS.includes(formData.category_id) || (formData.category_id === 'informatique-electronique' && ['smartphones', 'telephones-classiques-fixes', 'tablettes-appareils-mobiles'].includes(formData.subcategory_id))) && (
                  <div className="bg-white dark:bg-slate-800 p-8 rounded-3xl shadow-xl border border-slate-100 dark:border-slate-700">
                    <h3 className="text-xl font-bold mb-6 flex items-center gap-3 text-slate-900 dark:text-white">
                      <div className="bg-violet-100 dark:bg-violet-900/30 p-2 rounded-lg">
                        <Tag className="h-6 w-6 text-violet-600 dark:text-violet-400" />
                      </div>
                      Détails Appareil
                    </h3>
                    <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                      {formData.phoneBrand && <div className="flex justify-between p-4 bg-slate-50 dark:bg-slate-900/50 rounded-2xl border border-slate-100 dark:border-slate-800"><span className="text-slate-500 font-medium">Marque</span><span className="font-bold text-slate-900 dark:text-white">{formData.phoneBrand}</span></div>}
                      {formData.phoneModel && <div className="flex justify-between p-4 bg-slate-50 dark:bg-slate-900/50 rounded-2xl border border-slate-100 dark:border-slate-800"><span className="text-slate-500 font-medium">Modèle</span><span className="font-bold text-slate-900 dark:text-white">{formData.phoneModel}</span></div>}
                      {formData.phoneStorage && <div className="flex justify-between p-4 bg-slate-50 dark:bg-slate-900/50 rounded-2xl border border-slate-100 dark:border-slate-800"><span className="text-slate-500 font-medium">Stockage</span><span className="font-bold text-slate-900 dark:text-white">{formData.phoneStorage}</span></div>}
                      {formData.phoneRam && <div className="flex justify-between p-4 bg-slate-50 dark:bg-slate-900/50 rounded-2xl border border-slate-100 dark:border-slate-800"><span className="text-slate-500 font-medium">RAM</span><span className="font-bold text-slate-900 dark:text-white">{formData.phoneRam}</span></div>}
                      {formData.phoneScreenSize && <div className="flex justify-between p-4 bg-slate-50 dark:bg-slate-900/50 rounded-2xl border border-slate-100 dark:border-slate-800"><span className="text-slate-500 font-medium">Écran</span><span className="font-bold text-slate-900 dark:text-white">{formData.phoneScreenSize}</span></div>}
                      {formData.phoneColor && <div className="flex justify-between p-4 bg-slate-50 dark:bg-slate-900/50 rounded-2xl border border-slate-100 dark:border-slate-800"><span className="text-slate-500 font-medium">Couleur</span><span className="font-bold text-slate-900 dark:text-white">{formData.phoneColor}</span></div>}
                    </div>
                  </div>
                )}

                {/* Furniture Details Preview */}
                {HOME_IDS.includes(formData.category_id) && (
                  <div className="bg-white dark:bg-slate-800 p-8 rounded-3xl shadow-xl border border-slate-100 dark:border-slate-700">
                    <h3 className="text-xl font-bold mb-6 flex items-center gap-3 text-slate-900 dark:text-white">
                      <div className="bg-amber-100 dark:bg-amber-900/30 p-2 rounded-lg">
                        <Tag className="h-6 w-6 text-amber-600 dark:text-amber-400" />
                      </div>
                      Caractéristiques
                    </h3>
                    <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                      {formData.furnitureType && <div className="flex justify-between p-4 bg-slate-50 dark:bg-slate-900/50 rounded-2xl border border-slate-100 dark:border-slate-800"><span className="text-slate-500 font-medium">Type</span><span className="font-bold text-slate-900 dark:text-white">{formData.furnitureType}</span></div>}
                      {formData.furnitureMaterial && <div className="flex justify-between p-4 bg-slate-50 dark:bg-slate-900/50 rounded-2xl border border-slate-100 dark:border-slate-800"><span className="text-slate-500 font-medium">Matière</span><span className="font-bold text-slate-900 dark:text-white">{formData.furnitureMaterial}</span></div>}
                      {formData.furnitureColor && <div className="flex justify-between p-4 bg-slate-50 dark:bg-slate-900/50 rounded-2xl border border-slate-100 dark:border-slate-800"><span className="text-slate-500 font-medium">Couleur</span><span className="font-bold text-slate-900 dark:text-white">{formData.furnitureColor}</span></div>}
                      {formData.furnitureDimensions && <div className="flex justify-between p-4 bg-slate-50 dark:bg-slate-900/50 rounded-2xl border border-slate-100 dark:border-slate-800"><span className="text-slate-500 font-medium">Dimensions</span><span className="font-bold text-slate-900 dark:text-white">{formData.furnitureDimensions}</span></div>}
                    </div>
                  </div>
                )}

                {/* Vehicle Details Preview */}
                {['vehicules', 'vehicules-equipements'].includes(formData.category_id) && (
                  <div className="bg-white dark:bg-slate-800 p-8 rounded-3xl shadow-xl border border-slate-100 dark:border-slate-700">
                    <h3 className="text-xl font-bold mb-6 flex items-center gap-3 text-slate-900 dark:text-white">
                      <div className="bg-red-100 dark:bg-red-900/30 p-2 rounded-lg">
                        <Car className="h-6 w-6 text-red-600 dark:text-red-400" />
                      </div>
                      {t('preview.vehicleDetails')}
                    </h3>
                    <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                      {formData.vehicleVersion && (
                        <div className="flex items-center justify-between p-4 bg-slate-50 dark:bg-slate-900/50 rounded-2xl border border-slate-100 dark:border-slate-800">
                           <span className="text-slate-500 dark:text-slate-400 font-medium">{t('preview.version')}</span>
                           <span className="font-bold text-slate-900 dark:text-white">{formData.vehicleVersion}</span>
                        </div>
                      )}
                      {(formData.vehicleRegistrationYear || formData.vehicleRegistrationMonth) && (
                        <div className="flex items-center justify-between p-4 bg-slate-50 dark:bg-slate-900/50 rounded-2xl border border-slate-100 dark:border-slate-800">
                           <span className="text-slate-500 dark:text-slate-400 font-medium">{t('preview.year')}</span>
                           <span className="font-bold text-slate-900 dark:text-white">
                             {formData.vehicleRegistrationMonth ? `${formData.vehicleRegistrationMonth}/` : ''}
                             {formData.vehicleRegistrationYear}
                           </span>
                        </div>
                      )}
                      {formData.vehicleMileage && (
                        <div className="flex items-center justify-between p-4 bg-slate-50 dark:bg-slate-900/50 rounded-2xl border border-slate-100 dark:border-slate-800">
                           <span className="text-slate-500 dark:text-slate-400 font-medium">{t('preview.mileage')}</span>
                           <span className="font-bold text-slate-900 dark:text-white">{formData.vehicleMileage} km</span>
                        </div>
                      )}
                      {formData.vehicleFuelType && (
                        <div className="flex items-center justify-between p-4 bg-slate-50 dark:bg-slate-900/50 rounded-2xl border border-slate-100 dark:border-slate-800">
                           <span className="text-slate-500 dark:text-slate-400 font-medium">{t('preview.fuel')}</span>
                           <span className="font-bold text-slate-900 dark:text-white capitalize">{formData.vehicleFuelType}</span>
                        </div>
                      )}
                      {formData.vehicleGearbox && (
                        <div className="flex items-center justify-between p-4 bg-slate-50 dark:bg-slate-900/50 rounded-2xl border border-slate-100 dark:border-slate-800">
                           <span className="text-slate-500 dark:text-slate-400 font-medium">{t('preview.gearbox')}</span>
                           <span className="font-bold text-slate-900 dark:text-white capitalize">{formData.vehicleGearbox}</span>
                        </div>
                      )}
                      {formData.vehicleFiscalPower && (
                        <div className="flex items-center justify-between p-4 bg-slate-50 dark:bg-slate-900/50 rounded-2xl border border-slate-100 dark:border-slate-800">
                           <span className="text-slate-500 dark:text-slate-400 font-medium">{t('preview.power')}</span>
                           <span className="font-bold text-slate-900 dark:text-white">{formData.vehicleFiscalPower}</span>
                        </div>
                      )}
                    </div>
                  </div>
                )}
              </div>
            </ScrollArea>
            <DialogFooter className="p-6 border-t border-slate-200 dark:border-slate-800 bg-white dark:bg-slate-900 z-10">
              <Button variant="outline" onClick={() => setShowPreview(false)} className="h-12 px-6 rounded-xl border-2 hover:bg-slate-50 text-slate-700 font-bold">{t('preview.close')}</Button>
              <Button onClick={() => { setShowPreview(false); document.querySelector('form')?.requestSubmit(); }} className="h-12 px-8 rounded-full bg-gradient-to-r from-emerald-500 to-teal-600 hover:from-emerald-600 hover:to-teal-700 text-white font-bold shadow-[inset_0_2px_8px_rgba(255,255,255,0.35),0_14px_26px_rgba(16,185,129,0.32)] hover:shadow-[inset_0_2px_8px_rgba(255,255,255,0.35),0_18px_32px_rgba(16,185,129,0.36)] active:translate-y-0.5 active:shadow-[inset_0_2px_8px_rgba(255,255,255,0.35),0_10px_18px_rgba(16,185,129,0.26)]">
                {t('preview.publishNow')}
              </Button>
            </DialogFooter>
          </DialogContent>
        </Dialog>

        {/* Draft Indicator Toast - Fixed Position */}
        {draftSaved && (
           <div className="fixed bottom-6 right-6 z-50 bg-slate-900 text-white px-4 py-2 rounded-lg shadow-lg flex items-center gap-2 animate-in fade-in slide-in-from-bottom-4">
             <Save className="h-4 w-4 text-green-400" />
             <span className="text-sm font-medium">{t('preview.draftSaved')}</span>
           </div>
        )}

        {/* Floating Category Preview */}
        <AnimatePresence>
          {hoveredCategoryId && CATEGORY_REFERENCE_IMAGES[hoveredCategoryId] && (
            <motion.div
              initial={{ opacity: 0, x: 20, scale: 0.95 }}
              animate={{ opacity: 1, x: 0, scale: 1 }}
              exit={{ opacity: 0, x: 20, scale: 0.95 }}
              transition={{ duration: 0.2, ease: "easeOut" }}
              className={`fixed top-1/2 -translate-y-1/2 z-[10000] pointer-events-none hidden xl:block ${isRTL ? 'right-1/2 mr-[34rem]' : 'left-1/2 ml-[34rem]'}`}
            >
              <div className="bg-white/15 dark:bg-slate-900/15 backdrop-blur-xl p-4 rounded-[2.5rem] border border-white/20 dark:border-slate-700/30 shadow-[0_32px_64px_-16px_rgba(0,0,0,0.1)] w-[320px] overflow-hidden relative group">
                <div className="grid grid-cols-2 gap-3 relative z-10">
                  {CATEGORY_REFERENCE_IMAGES[hoveredCategoryId].slice(0, 4).map((img, idx) => (
                    <div key={idx} className="relative aspect-square rounded-2xl overflow-hidden shadow-sm border border-white/10">
                      <img 
                        src={img} 
                        alt="" 
                        className="w-full h-full object-cover transition-transform duration-700 group-hover:scale-110" 
                      />
                      <div className="absolute inset-0 bg-gradient-to-t from-black/10 to-transparent"></div>
                    </div>
                  ))}
                </div>
              </div>
            </motion.div>
          )}
        </AnimatePresence>
    </div>
  );
};

export default CreateAnnouncementPage;
