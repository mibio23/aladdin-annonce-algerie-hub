import { MenuCategory } from "../../categoryTypes";
import { Wrench, Settings, Phone, Home, Hammer, Truck, FileText, Briefcase, GraduationCap, Calendar, Heart, Users, Car, Palette } from "lucide-react";

export const servicesSupportAr: MenuCategory = {
  id: "services-support",
  name: "الخدمات والدعم",
  slug: "services-support",
  icon: <Wrench className="h-5 w-5 text-blue-600" />,
  subcategories: [
    {
      id: "services-informatiques",
      name: "خدمات الحاسوب",
      slug: "services-informatiques",
      icon: <Settings className="h-4 w-4 text-purple-600" />,
      subcategories: [
        { id: "depannage-pc", name: "إصلاح أجهزة الكمبيوتر", slug: "depannage-pc" },
        { id: "maintenance-reseau", name: "صيانة الشبكات", slug: "maintenance-reseau" },
        { id: "installation-logiciels", name: "تثبيت البرامج", slug: "installation-logiciels" },
        { id: "recuperation-donnees", name: "استعادة البيانات", slug: "recuperation-donnees" },
        { id: "securite-informatique", name: "الأمن السيبراني", slug: "securite-informatique" },
        { id: "configuration-systeme", name: "تكوين النظام", slug: "configuration-systeme" },
        { id: "assistance-ligne", name: "دعم عبر الإنترنت", slug: "assistance-ligne" },
        { id: "optimisation-ordinateur", name: "تحسين أداء الكمبيوتر", slug: "optimisation-ordinateur" }
      ]
    },
    {
      id: "services-telecom",
      name: "خدمات الاتصالات",
      slug: "services-telecom",
      icon: <Phone className="h-4 w-4 text-green-600" />,
      subcategories: [
        { id: "installation-modem", name: "تركيب المودم", slug: "installation-modem" },
        { id: "configuration-routeur", name: "إعداد الراوتر", slug: "configuration-routeur" },
        { id: "reparation-telephone", name: "تصليح الهواتف", slug: "reparation-telephone" },
        { id: "debloquage-mobile", name: "فك تشفير الهواتف", slug: "debloquage-mobile" },
        { id: "optimisation-internet", name: "تحسين الإنترنت", slug: "optimisation-internet" },
        { id: "parametrage-apn", name: "إعدادات APN", slug: "parametrage-apn" }
      ]
    },
    {
      id: "services-electromenager",
      name: "خدمات الأجهزة المنزلية",
      slug: "services-electromenager",
      icon: <Settings className="h-4 w-4 text-orange-600" />,
      subcategories: [
        { id: "reparation-machines", name: "إصلاح الآلات", slug: "reparation-machines" },
        { id: "installation-electromenager", name: "تركيب الأجهزة", slug: "installation-electromenager" },
        { id: "maintenance-appareils", name: "صيانة الأجهزة", slug: "maintenance-appareils" },
        { id: "depannage-urgent", name: "إصلاح طارئ", slug: "depannage-urgent-electromenager" },
        { id: "diagnostic-panne", name: "تشخيص الأعطال", slug: "diagnostic-panne" }
      ]
    },
    {
      id: "services-maison",
      name: "خدمات منزلية",
      slug: "services-maison",
      icon: <Home className="h-4 w-4 text-blue-600" />,
      subcategories: [
        { id: "nettoyage-maison", name: "تنظيف المنازل", slug: "nettoyage-maison" },
        { id: "menage-pro", name: "تنظيف احترافي", slug: "menage-pro" },
        { id: "repassage-domicile", name: "كي الملابس في المنزل", slug: "repassage-domicile" },
        { id: "entretien-jardin", name: "العناية بالحدائق", slug: "entretien-jardin" },
        { id: "desinfection-locaux", name: "تطهير الأماكن", slug: "desinfection-locaux" },
        { id: "gestion-dechets", name: "إدارة النفايات", slug: "gestion-dechets" },
        { id: "maintenance-maison", name: "صيانة المنزل", slug: "maintenance-maison" }
      ]
    },
    {
      id: "services-artisanaux",
      name: "خدمات حرفية",
      slug: "services-artisanaux",
      icon: <Hammer className="h-4 w-4 text-brown-600" />,
      subcategories: [
        { id: "plomberie-rapide", name: "سباكة سريعة", slug: "plomberie-rapide" },
        { id: "electricite-maison", name: "كهرباء منزلية", slug: "electricite-maison" },
        { id: "reparation-meubles", name: "إصلاح الأثاث", slug: "reparation-meubles" },
        { id: "peinture-batiment", name: "دهان المباني", slug: "peinture-batiment" },
        { id: "menuiserie-bois", name: "نجارة", slug: "menuiserie-bois" },
        { id: "travaux-divers", name: "أعمال متنوعة", slug: "travaux-divers" },
        { id: "bricolage-domicile", name: "أعمال يدوية منزلية", slug: "bricolage-domicile" }
      ]
    },
    {
      id: "transport-livraison",
      name: "نقل وتوصيل",
      slug: "transport-livraison",
      icon: <Truck className="h-4 w-4 text-red-600" />,
      subcategories: [
        { id: "livraison-colis", name: "توصيل الطرود", slug: "livraison-colis" },
        { id: "taxi-prive", name: "تاكسي خاص", slug: "taxi-prive" },
        { id: "transport-marchandises", name: "نقل البضائع", slug: "transport-marchandises" },
        { id: "demenagement-rapide", name: "ترحيل سريع", slug: "demenagement-rapide" },
        { id: "courses-express", name: "مشاوير سريعة", slug: "courses-express" },
        { id: "location-utilitaire", name: "تأجير شاحنات", slug: "location-utilitaire" }
      ]
    },
    {
      id: "services-administratifs",
      name: "خدمات إدارية",
      slug: "services-administratifs",
      icon: <FileText className="h-4 w-4 text-gray-600" />,
      subcategories: [
        { id: "redaction-documents", name: "كتابة الوثائق", slug: "redaction-documents" },
        { id: "traduction-pro", name: "ترجمة احترافية", slug: "traduction-pro" },
        { id: "impression-pro", name: "طباعة احترافية", slug: "impression-pro" },
        { id: "numerisation-documents", name: "رقمنة الوثائق", slug: "numerisation-documents" },
        { id: "assistance-dossiers", name: "مساعدة في الملفات", slug: "assistance-dossiers" },
        { id: "creation-cv", name: "إنشاء سيرة ذاتية", slug: "creation-cv" }
      ]
    },
    {
      id: "support-business",
      name: "دعم الأعمال",
      slug: "support-business",
      icon: <Briefcase className="h-4 w-4 text-indigo-600" />,
      subcategories: [
        { id: "gestion-clients", name: "إدارة العملاء", slug: "gestion-clients" },
        { id: "assistance-commerciale", name: "مساعدة تجارية", slug: "assistance-commerciale" },
        { id: "creation-devis", name: "إنشاء فواتير", slug: "creation-devis" },
        { id: "service-comptable", name: "خدمات محاسبة", slug: "service-comptable" },
        { id: "conseils-gestion", name: "استشارات إدارية", slug: "conseils-gestion" },
        { id: "audits-internes", name: "تدقيق داخلي", slug: "audits-internes" },
        { id: "support-marketing", name: "دعم تسويقي", slug: "support-marketing" }
      ]
    },
    {
      id: "services-formation",
      name: "خدمات التدريب",
      slug: "services-formation",
      icon: <GraduationCap className="h-4 w-4 text-teal-600" />,
      subcategories: [
        { id: "cours-particuliers", name: "دروس خصوصية", slug: "cours-particuliers" },
        { id: "formation-pro", name: "تدريب مهني", slug: "formation-pro" },
        { id: "soutien-scolaire", name: "دعم مدرسي", slug: "soutien-scolaire" },
        { id: "ateliers-pratiques", name: "ورش عمل تطبيقية", slug: "ateliers-pratiques" },
        { id: "coaching-personnel", name: "تدريب شخصي", slug: "coaching-personnel" },
        { id: "developpement-personnel", name: "تطوير الذات", slug: "developpement-personnel" }
      ]
    },
    {
      id: "services-evenementiels",
      name: "خدمات المناسبات",
      slug: "services-evenementiels",
      icon: <Calendar className="h-4 w-4 text-pink-600" />,
      subcategories: [
        { id: "organisation-fetes", name: "تنظيم حفلات", slug: "organisation-fetes" },
        { id: "decoration-evenement", name: "زينة المناسبات", slug: "decoration-evenement" },
        { id: "location-materiel", name: "تأجير معدات", slug: "location-materiel" },
        { id: "animation-soiree", name: "تنشيط سهرات", slug: "animation-soiree" },
        { id: "gestion-invitations", name: "إدارة الدعوات", slug: "gestion-invitations" }
      ]
    },
    {
      id: "services-sante-bienetre",
      name: "خدمات الصحة والرفاهية",
      slug: "services-sante-bienetre",
      icon: <Heart className="h-4 w-4 text-red-500" />,
      subcategories: [
        { id: "massage-bienetre", name: "تدليك واسترخاء", slug: "massage-bienetre" },
        { id: "soins-esthetiques", name: "عناية تجميلية", slug: "soins-esthetiques" },
        { id: "coaching-sportif", name: "تدريب رياضي", slug: "coaching-sportif" },
        { id: "dietetique-personnalisee", name: "تغذية مخصصة", slug: "dietetique-personnalisee" },
        { id: "suivi-bienetre", name: "متابعة صحية", slug: "suivi-bienetre" }
      ]
    },
    {
      id: "aide-personne",
      name: "مساعدة شخصية",
      slug: "aide-personne",
      icon: <Users className="h-4 w-4 text-green-500" />,
      subcategories: [
        { id: "garde-enfants", name: "رعاية الأطفال", slug: "garde-enfants" },
        { id: "assistance-personnes", name: "مساعدة الأشخاص", slug: "assistance-personnes" },
        { id: "aide-domicile", name: "مساعدة منزلية", slug: "aide-domicile" },
        { id: "accompagnement-senior", name: "مرافقة كبار السن", slug: "accompagnement-senior" },
        { id: "soutien-mobilite", name: "دعم التنقل", slug: "soutien-mobilite" }
      ]
    },
    {
      id: "services-automobiles",
      name: "خدمات السيارات",
      slug: "services-automobiles",
      icon: <Car className="h-4 w-4 text-blue-500" />,
      subcategories: [
        { id: "lavage-auto", name: "غسيل سيارات", slug: "lavage-auto" },
        { id: "vidange-rapide", name: "تغيير زيت سريع", slug: "vidange-rapide" },
        { id: "diagnostic-auto", name: "فحص السيارات", slug: "diagnostic-auto" },
        { id: "assistance-route", name: "مساعدة على الطريق", slug: "assistance-route" },
        { id: "entretien-moteur", name: "صيانة المحرك", slug: "entretien-moteur" },
        { id: "reparation-pneus", name: "إصلاح الإطارات", slug: "reparation-pneus" }
      ]
    },
    {
      id: "services-creatifs",
      name: "خدمات إبداعية",
      slug: "services-creatifs",
      icon: <Palette className="h-4 w-4 text-purple-500" />,
      subcategories: [
        { id: "design-graphique", name: "تصميم جرافيك", slug: "design-graphique" },
        { id: "creation-logo", name: "تصميم شعار", slug: "creation-logo" },
        { id: "montage-video", name: "مونتاج فيديو", slug: "montage-video" },
        { id: "retouche-photo", name: "تعديل صور", slug: "retouche-photo" },
        { id: "creation-contenu", name: "إنشاء محتوى", slug: "creation-contenu" },
        { id: "impression-3d", name: "طباعة ثلاثية الأبعاد", slug: "impression-3d" }
      ]
    }
  ]
};
