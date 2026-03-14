import { germanAuth } from './auth';
import { navigationDe } from './navigation';
import { germanPwa } from './pwa';
import germanCommon from './common';
import { germanReviews } from './reviews';
import { userMenuTranslations } from './userMenu';
import { profileTranslations } from './profile';
import { parametresTranslations } from './parametres';
import { search, germanSearch } from './search';
import { germanFooter } from './footer';
import { germanCategories } from './categories';
import { createAd } from './createAd';
import { germanSections } from './sections';
import { germanAnnouncements } from './announcements';
import homeDe from './home';

const germanTranslations = {
  ...germanAuth,
  ...navigationDe,
  ...germanPwa,
  ...germanCommon,
  reviews: germanReviews,
  ...userMenuTranslations,
  ...profileTranslations,
  ...parametresTranslations,
  ...search,
  ...germanSearch,
  ...germanFooter,
  ...germanCategories,
  ...createAd,
  ...germanSections,
  ...germanAnnouncements,
  ...homeDe,
};

export default germanTranslations;