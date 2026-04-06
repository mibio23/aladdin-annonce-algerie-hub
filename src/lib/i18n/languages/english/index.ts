
import { englishAuth } from './auth';
import { navigationEn } from './navigation';
import { englishPwa } from './pwa';
import englishCommon from './common';
import { englishReviews } from './reviews';
import { userMenuTranslations } from './userMenu';
import { profileTranslations } from './profile';
import { parametresTranslations } from './parametres';
import { englishAnnouncements } from './announcements';
import { englishCategories } from './categories';
import { search, englishSearch } from './search';
import { englishAuthentification } from './authentification';
import { englishSections } from './sections';
import { englishHero } from './hero';
import { englishFooter } from './footer';
import { createAd } from './createAd';
import { englishStats } from './stats';
import { englishNotifications } from './notifications';
import { englishBanner } from './banner';

const englishTranslations = {
  ...englishAuth,
  ...navigationEn,
  ...englishPwa,
  ...englishCommon,
  reviews: englishReviews,
  ...userMenuTranslations,
  ...profileTranslations,
  ...parametresTranslations,
  ...englishAnnouncements,
  ...englishCategories,
  ...englishAuthentification,
  ...englishSections,
  ...englishHero,
  ...englishFooter,
  ...createAd,
  ...englishStats,
  ...englishNotifications,
  
  // Import search translations
  ...search,
  ...englishSearch,

  // Banner button translations
  ...englishBanner,

  // Messages Tabs
  'messages.tabs.all.title': 'All discussions',
  'messages.tabs.all.desc': 'Manage all your chats in one place',
  'messages.tabs.ad.title': 'Classified Ads',
  'messages.tabs.ad.desc': 'Messages related to buying or selling items',
  'messages.tabs.shop.title': 'Shops',
  'messages.tabs.shop.desc': 'Chats with professional stores',
  'messages.tabs.job_offer.title': 'Services',
  'messages.tabs.job_offer.desc': 'Contacts for services and repairs',
};

export default englishTranslations;
