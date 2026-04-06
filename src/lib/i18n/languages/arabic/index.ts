import { arabicAuth } from './auth';
import { arabicEcoCarousel } from './ecoCarousel';
import { arabicIntelligentAssistant } from './intelligentAssistant';
import { arabicPwa } from './pwa';
import arabicNavigation from './navigation';
import arabicCommon from './common';
import { arabicReviews } from './reviews';
import { userMenuTranslations } from './userMenu';
import { profileTranslations } from './profile';
import { parametresTranslations } from './parametres';
import { search, arabicSearch } from './search';
import { arabicFooter } from './footer';
import { arabicCategories } from './categories';
import { createAd } from './createAd';
import { arabicSections } from './sections';
import { arabicAnnouncements } from './announcements';
import homeAr from './home';

const arabicTranslations = {
  ...arabicAuth,
  ...arabicEcoCarousel,
  ...arabicIntelligentAssistant,
  ...arabicPwa,
  ...arabicNavigation,
  ...arabicCommon,
  reviews: arabicReviews,
  ...userMenuTranslations,
  ...profileTranslations,
  ...parametresTranslations,
  ...search,
  ...arabicSearch,
  ...arabicFooter,
  ...arabicCategories,
  ...createAd,
  ...arabicSections,
  ...arabicAnnouncements,
  ...homeAr,

  // Messages translations
  'messages.title': 'الرسائل',
  'messages.subtitle': 'إدارة محادثاتك مع البائعين والمشترين',
  'messages.conversations': 'المحادثات',
  'messages.noConversations': 'لا توجد محادثات',
  'messages.noConversationsDesc': 'ليس لديك محادثات بعد. اتصل ببائع للبدء.',
  'messages.aboutAd': 'حول الإعلان',
  'messages.typeMessage': 'اكتب رسالتك...',
  'messages.selectConversation': 'حدد محادثة',
  'messages.selectConversationDesc': 'اختر محادثة من القائمة لبدء الدردشة.',
  'messages.errorFetchingMessages': 'فشل تحميل الرسائل',
  'messages.noMessages': 'لا توجد رسائل',
  'messages.errorFetchingConversations': 'فشل تحميل المحادثات',
  'messages.errorSending': 'فشل إرسال الرسالة',
  'messages.loginRequiredDesc': 'يجب تسجيل الدخول للوصول إلى رسائلك',

  // Messages Tabs
  'messages.tabs.all.title': 'جميع المحادثات',
  'messages.tabs.all.desc': 'إدارة جميع محادثاتك في مكان واحد',
  'messages.tabs.ad.title': 'إعلانات',
  'messages.tabs.ad.desc': 'رسائل متعلقة ببيع أو شراء العناصر',
  'messages.tabs.shop.title': 'متاجر',
  'messages.tabs.shop.desc': 'مراسلات مع المتاجر الاحترافية',
  'messages.tabs.job_offer.title': 'مهن',
  'messages.tabs.job_offer.desc': 'جهات اتصال للخدمات والإصلاحات',
};
export default arabicTranslations;
