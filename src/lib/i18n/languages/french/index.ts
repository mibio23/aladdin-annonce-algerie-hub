import frenchNavigation from './navigation';
import { frenchAuth } from './auth';
import { frenchIntelligentAssistant } from './intelligentAssistant';
import { frenchPwa } from './pwa';
import frenchCommon from './common';
import homeFr from './home';
import { frenchReviews } from './reviews';
import { userMenuTranslations } from './userMenu';
import { profileTranslations } from './profile';
import { parametresTranslations } from './parametres';
import { frenchSections } from './sections';
import { frenchAnnouncements } from './announcements';
import { frenchCategories } from './categories';
import { search, frenchSearch } from './search';
import { frenchFooter } from './footer';
import { createAd } from './createAd';
import { attributes } from './attributes';

const frenchTranslations = {
  ...frenchAuth,
  ...frenchIntelligentAssistant,
  ...frenchNavigation,
  ...frenchPwa,
  ...frenchCommon,
  ...homeFr,
  reviews: frenchReviews,
  ...userMenuTranslations,
  ...profileTranslations,
  ...parametresTranslations,
  ...frenchSections,
  ...frenchAnnouncements,
  ...frenchCategories,
  ...search,
  ...frenchSearch,
  ...frenchFooter,
  ...createAd,
  ...attributes,

  // Mega-menu
  'megaMenu.title': 'Toutes les catégories',
  'megaMenu.loadingCategories': 'Chargement des catégories...',
  'megaMenu.aria.categoriesMenu': 'Menu des catégories',

  'megaMenu.search.placeholder': 'Rechercher des produits, des catégories...',
  'megaMenu.search.button': 'Rechercher',
  'megaMenu.search.inputAria': 'Rechercher une catégorie',

  'megaMenu.nav.prevCategory': 'Catégorie précédente',
  'megaMenu.nav.nextCategory': 'Catégorie suivante',
  'megaMenu.nav.scrollLeft': 'Défiler vers la gauche',
  'megaMenu.nav.scrollRight': 'Défiler vers la droite',

  'megaMenu.empty.noCategories': 'Aucune catégorie disponible',

  'megaMenu.search.noResultsTitle': 'Aucune catégorie trouvée',
  'megaMenu.search.noResultsHint': "Essayez avec d'autres mots-clés",
  'megaMenu.search.resultsTitle': 'Résultats de recherche',
  'megaMenu.search.countSuffix': 'catégories trouvées',
  'megaMenu.search.matchingSubcategories': 'Sous-catégories correspondantes',
  
  // S'assurer que toutes les clés footer sont disponibles
  "footer.legal.authentication": "Authentification",
  "footer.useful.safetyTips": "Conseils de sécurité",
  "footer.useful.proBusiness": "Espace Pro",
  "footer.useful.helpCenter": "Centre d'aide",

  // Messages Tabs
  'messages.tabs.all.title': 'Toutes les discussions',
  'messages.tabs.all.desc': 'Gérez tous vos échanges en un seul endroit',
  'messages.tabs.ad.title': 'Annonces',
  'messages.tabs.ad.desc': 'Messages liés à l\'achat ou vente d\'articles',
  'messages.tabs.shop.title': 'Boutiques',
  'messages.tabs.shop.desc': 'Échanges avec les magasins professionnels',
  'messages.tabs.job_offer.title': 'Métiers',
  'messages.tabs.job_offer.desc': 'Contacts pour des services et réparations',
};

export default frenchTranslations;