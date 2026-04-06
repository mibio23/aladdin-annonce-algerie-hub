import { spanishAuth } from './auth';
import { spanishIntelligentAssistant } from './intelligentAssistant';
import spanishNavigation from './navigation';
import { spanishPwa } from './pwa';
import spanishCommon from './common';
import { spanishReviews } from './reviews';
import { userMenuTranslations } from './userMenu';
import { profileTranslations } from './profile';
import { parametresTranslations } from './parametres';
import { search, spanishSearch } from './search';
import { spanishCategories } from './categories';
import { spanishFooter } from './footer';
import { createAd } from './createAd';
import { shop } from './shop';
import { spanishSections } from './sections';
import { spanishAnnouncements } from './announcements';
import homeEs from './home';

const spanishTranslations = {
  ...spanishAuth,
  ...spanishIntelligentAssistant,
  ...spanishNavigation,
  ...spanishPwa,
  ...spanishCommon,
  reviews: spanishReviews,
  ...userMenuTranslations,
  ...profileTranslations,
  ...parametresTranslations,
  ...search,
  ...spanishSearch,
  ...spanishFooter,
  ...spanishCategories,
  ...createAd,
  ...shop,
  ...spanishSections,
  ...spanishAnnouncements,
  ...homeEs,

  // Messages translations
  'messages.title': 'Mensajes',
  'messages.subtitle': 'Gestiona tus conversaciones con vendedores y compradores',
  'messages.conversations': 'Conversaciones',
  'messages.noConversations': 'Sin conversaciones',
  'messages.noConversationsDesc': 'Aún no tienes conversaciones. Contacta a un vendedor para empezar.',
  'messages.aboutAd': 'Acerca del anuncio',
  'messages.typeMessage': 'Escribe tu mensaje...',
  'messages.selectConversation': 'Selecciona una conversación',
  'messages.selectConversationDesc': 'Elige una conversación de la lista para empezar a chatear.',
  'messages.errorFetchingMessages': 'Error al cargar los mensajes',
  'messages.noMessages': 'Sin mensajes',
  'messages.errorFetchingConversations': 'Error al cargar las conversaciones',
  'messages.errorSending': 'Error al enviar el mensaje',
  'messages.loginRequiredDesc': 'Debes iniciar sesión para acceder a tus mensajes',

  // Messages Tabs
  'messages.tabs.all.title': 'Todas las discusiones',
  'messages.tabs.all.desc': 'Gestiona todos tus chats en un solo lugar',
  'messages.tabs.ad.title': 'Anuncios',
  'messages.tabs.ad.desc': 'Mensajes relacionados con compra o venta de artículos',
  'messages.tabs.shop.title': 'Tiendas',
  'messages.tabs.shop.desc': 'Intercambios con tiendas profesionales',
  'messages.tabs.job_offer.title': 'Servicios',
  'messages.tabs.job_offer.desc': 'Contactos para servicios y reparaciones',
};

export default spanishTranslations;