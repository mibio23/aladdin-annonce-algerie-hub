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

  // Messages translations
  'messages.title': 'Nachrichten',
  'messages.subtitle': 'Verwalten Sie Ihre Gespräche mit Verkäufern und Käufern',
  'messages.conversations': 'Gespräche',
  'messages.noConversations': 'Keine Gespräche',
  'messages.noConversationsDesc': 'Sie haben noch keine Gespräche. Kontaktieren Sie einen Verkäufer, um zu beginnen.',
  'messages.aboutAd': 'Über die Anzeige',
  'messages.typeMessage': 'Schreiben Sie Ihre Nachricht...',
  'messages.selectConversation': 'Wählen Sie ein Gespräch',
  'messages.selectConversationDesc': 'Wählen Sie ein Gespräch aus der Liste, um zu chatten.',
  'messages.errorFetchingMessages': 'Fehler beim Laden der Nachrichten',
  'messages.noMessages': 'Keine Nachrichten',
  'messages.errorFetchingConversations': 'Fehler beim Laden der Gespräche',
  'messages.errorSending': 'Fehler beim Senden der Nachricht',
  'messages.loginRequiredDesc': 'Sie müssen angemeldet sein, um auf Ihre Nachrichten zuzugreifen',

  // Messages Tabs
  'messages.tabs.all.title': 'Alle Diskussionen',
  'messages.tabs.all.desc': 'Verwalten Sie alle Ihre Chats an einem Ort',
  'messages.tabs.ad.title': 'Anzeigen',
  'messages.tabs.ad.desc': 'Nachrichten zum Kauf oder Verkauf von Artikeln',
  'messages.tabs.shop.title': 'Geschäfte',
  'messages.tabs.shop.desc': 'Austausch mit professionellen Geschäften',
  'messages.tabs.job_offer.title': 'Dienstleistungen',
  'messages.tabs.job_offer.desc': 'Kontakte für Dienstleistungen und Reparaturen',
};

export default germanTranslations;