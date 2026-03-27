import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Laptop } from "lucide-react";

export const informatiqueElectroniqueAr: MenuCategory = {
  id: "informatique-electronique",
  name: "إعلام آلي وإلكترونيات",
  slug: "informatique-electronique",
  icon: <Laptop className="w-4 h-4" />,
  subcategories: [
    {
      id: "ordinateurs-pc",
      name: "أجهزة كمبيوتر و PC",
      slug: "ordinateurs-pc",
      subcategories: [
        { id: "pc-de-bureau", name: "كمبيوتر مكتبي", slug: "pc-de-bureau" },
        { id: "pc-gaming", name: "كمبيوتر للألعاب", slug: "pc-gaming" },
        { id: "pc-professionnels", name: "كمبيوتر احترافي", slug: "pc-professionnels" },
        { id: "mini-pc", name: "كمبيوتر مصغر (Mini PC)", slug: "mini-pc" },
        { id: "pc-tout-en-un", name: "كمبيوتر الكل في واحد", slug: "pc-tout-en-un" },
        { id: "ordinateurs-portables", name: "لابتوب", slug: "ordinateurs-portables" },
        { id: "ultrabooks", name: "ألترابوك", slug: "ultrabooks" },
        { id: "laptops-professionnels", name: "لابتوب احترافي", slug: "laptops-professionnels" },
        { id: "laptops-gaming", name: "لابتوب للألعاب", slug: "laptops-gaming" },
        { id: "laptops-etudiants", name: "لابتوب للطلاب", slug: "laptops-etudiants" },
        { id: "macbook", name: "ماك بوك", slug: "macbook" },
        { id: "chromebook", name: "كروم بوك", slug: "chromebook" },
        { id: "stations-travail-portables", name: "محطات عمل محمولة", slug: "stations-travail-portables" },
        { id: "pc-reconditionnes", name: "كمبيوتر مجدد", slug: "pc-reconditionnes" }
      ]
    },
    {
      id: "smartphones",
      name: "هواتف ذكية",
      slug: "smartphones",
      subcategories: [
        { id: "smartphones-android", name: "هواتف أندرويد", slug: "smartphones-android" },
        { id: "iphone", name: "آيفون", slug: "iphone" },
        { id: "smartphones-5g", name: "هواتف 5G", slug: "smartphones-5g" },
        { id: "smartphones-gaming", name: "هواتف للألعاب", slug: "smartphones-gaming" },
        { id: "smartphones-pliables", name: "هواتف قابلة للطي", slug: "smartphones-pliables" },
        { id: "smartphones-entree-de-gamme", name: "هواتف اقتصادية", slug: "smartphones-entree-de-gamme" },
        { id: "smartphones-milieu-de-gamme", name: "هواتف متوسطة المدى", slug: "smartphones-milieu-de-gamme" },
        { id: "smartphones-haut-de-gamme", name: "هواتف راقية", slug: "smartphones-haut-de-gamme" },
        { id: "smartphones-reconditionnes", name: "هواتف مجددة", slug: "smartphones-reconditionnes" },
        { id: "telephones-robustes-rugged", name: "هواتف صلبة (Rugged)", slug: "telephones-robustes-rugged" },
        { id: "mini-smartphones", name: "هواتف صغيرة", slug: "mini-smartphones" },
        { id: "smartphones-professionnels", name: "هواتف احترافية", slug: "smartphones-professionnels" }
      ]
    },
    {
      id: "telephones-classiques-fixes",
      name: "هواتف كلاسيكية وثابتة",
      slug: "telephones-classiques-fixes",
      subcategories: [
        { id: "telephones-portables-classiques", name: "هواتف محمولة كلاسيكية", slug: "telephones-portables-classiques" },
        { id: "telephones-a-clapet", name: "هواتف قابلة للطي (Clamshell)", slug: "telephones-a-clapet" },
        { id: "telephones-seniors", name: "هواتف لكبار السن", slug: "telephones-seniors" },
        { id: "telephones-fixes-filaires", name: "هواتف ثابتة سلكية", slug: "telephones-fixes-filaires" },
        { id: "telephones-fixes-sans-fil", name: "هواتف ثابتة لاسلكية", slug: "telephones-fixes-sans-fil" },
        { id: "combines-dect", name: "أجهزة DECT", slug: "combines-dect" },
        { id: "telephones-voip", name: "هواتف VoIP", slug: "telephones-voip" }
      ]
    },
    {
      id: "tablettes-appareils-mobiles",
      name: "أجهزة لوحية وأجهزة محمولة",
      slug: "tablettes-appareils-mobiles",
      subcategories: [
        { id: "tablettes-android", name: "أجهزة لوحية أندرويد", slug: "tablettes-android" },
        { id: "ipad", name: "آيباد", slug: "ipad" },
        { id: "tablettes-graphiques", name: "أجهزة لوحية للرسم", slug: "tablettes-graphiques" },
        { id: "tablettes-enfants", name: "أجهزة لوحية للأطفال", slug: "tablettes-enfants" },
        { id: "liseuses-electroniques", name: "أجهزة القراءة الإلكترونية", slug: "liseuses-electroniques" },
        { id: "phablettes", name: "فابلت", slug: "phablettes" },
        { id: "mini-tablettes", name: "أجهزة لوحية صغيرة", slug: "mini-tablettes" },
        { id: "tablettes-professionnelles", name: "أجهزة لوحية احترافية", slug: "tablettes-professionnelles" }
      ]
    },
    {
      id: "accessoires-telephones",
      name: "إكسسوارات الهواتف",
      slug: "accessoires-telephones",
      subcategories: [
        { id: "coques-protection", name: "أغطية حماية", slug: "coques-protection" },
        { id: "housses", name: "حافظات", slug: "housses" },
        { id: "etuis", name: "حقائب صغيرة", slug: "etuis" },
        { id: "bumpers", name: "مصدات صدمات", slug: "bumpers" },
        { id: "vitres-protections-ecran", name: "زجاج وحماية شاشة", slug: "vitres-protections-ecran" },
        { id: "supports-telephones", name: "حوامل هواتف", slug: "supports-telephones" },
        { id: "supports-voiture", name: "حوامل للسيارة", slug: "supports-voiture" },
        { id: "stylos-tactiles", name: "أقلام لمس", slug: "stylos-tactiles" },
        { id: "anneaux-grips", name: "حلقات ومقابض", slug: "anneaux-grips" },
        { id: "pochettes-impermeables", name: "أكياس مقاومة للماء", slug: "pochettes-impermeables" }
      ]
    },
    {
      id: "batteries-charge",
      name: "بطاريات وشحن",
      slug: "batteries-charge",
      subcategories: [
        { id: "chargeurs-standard", name: "شواحن قياسية", slug: "chargeurs-standard" },
        { id: "chargeurs-rapides-fast-quick", name: "شواحن سريعة", slug: "chargeurs-rapides-fast-quick" },
        { id: "chargeurs-sans-fil", name: "شواحن لاسلكية", slug: "chargeurs-sans-fil" },
        { id: "stations-recharge", name: "محطات شحن", slug: "stations-recharge" },
        { id: "powerbanks", name: "بطاريات خارجية (Powerbanks)", slug: "powerbanks" },
        { id: "batteries-externes-haute-capacite", name: "بطاريات خارجية عالية السعة", slug: "batteries-externes-haute-capacite" },
        { id: "cables-usb", name: "كابلات USB", slug: "cables-usb" },
        { id: "adaptateurs-secteur", name: "محولات طاقة", slug: "adaptateurs-secteur" },
        { id: "chargeurs-voiture", name: "شواحن سيارة", slug: "chargeurs-voiture" },
        { id: "hubs-usb-multiprises-intelligentes", name: "موزعات USB ومقابس ذكية", slug: "hubs-usb-multiprises-intelligentes" }
      ]
    },
    {
      id: "audio-mobile",
      name: "صوتيات الهواتف",
      slug: "audio-mobile",
      subcategories: [
        { id: "ecouteurs-filaires", name: "سماعات سلكية", slug: "ecouteurs-filaires" },
        { id: "ecouteurs-bluetooth", name: "سماعات بلوتوث", slug: "ecouteurs-bluetooth" },
        { id: "airpods", name: "AirPods", slug: "airpods" },
        { id: "casques-sans-fil", name: "سماعات رأس لاسلكية", slug: "casques-sans-fil" },
        { id: "casques-filaires", name: "سماعات رأس سلكية", slug: "casques-filaires" },
        { id: "enceintes-bluetooth", name: "مكبرات صوت بلوتوث", slug: "enceintes-bluetooth" },
        { id: "kits-mains-libres", name: "مجموعات التحدث الحر", slug: "kits-mains-libres" },
        { id: "micros-mobiles", name: "ميكروفونات للجوال", slug: "micros-mobiles" },
        { id: "adaptateurs-audio", name: "محولات صوتية", slug: "adaptateurs-audio" }
      ]
    },
    {
      id: "pieces-reparation-telephone",
      name: "قطع غيار وتصليح الهواتف",
      slug: "pieces-reparation-telephone",
      subcategories: [
        { id: "ecrans-lcd-oled", name: "شاشات LCD و OLED", slug: "ecrans-lcd-oled" },
        { id: "batteries-internes", name: "بطاريات داخلية", slug: "batteries-internes" },
        { id: "connecteurs-charge", name: "موصلات الشحن", slug: "connecteurs-charge" },
        { id: "nappes-circuits", name: "كابلات ودوائر", slug: "nappes-circuits" },
        { id: "cameras-avant-arriere", name: "كاميرات أمامية وخلفية", slug: "cameras-avant-arriere" },
        { id: "chassis-coques-arriere", name: "هياكل وأغطية خلفية", slug: "chassis-coques-arriere" },
        { id: "boutons-flex", name: "أزرار وكابلات مرنة", slug: "boutons-flex" },
        { id: "haut-parleurs-micros", name: "مكبرات صوت وميكروفونات", slug: "haut-parleurs-micros" },
        { id: "vitres-arriere", name: "زجاج خلفي", slug: "vitres-arriere" },
        { id: "kits-reparation", name: "أطقم إصلاح", slug: "kits-reparation" },
        { id: "outils-demontage", name: "أدوات تفكيك", slug: "outils-demontage" },
        { id: "stations-soudure", name: "محطات لحام", slug: "stations-soudure" },
        { id: "ecrans-reconditionnes", name: "شاشات مجددة", slug: "ecrans-reconditionnes" }
      ]
    },
    {
      id: "objets-connectes-mobile",
      name: "أجهزة متصلة (جوال)",
      slug: "objets-connectes-mobile",
      subcategories: [
        { id: "montres-connectees", name: "ساعات ذكية", slug: "montres-connectees" },
        { id: "bracelets-connectes", name: "أساور ذكية", slug: "bracelets-connectes" },
        { id: "trackers-gps", name: "أجهزة تتبع GPS", slug: "trackers-gps" },
        { id: "ecouteurs-intelligents", name: "سماعات ذكية", slug: "ecouteurs-intelligents" },
        { id: "lunettes-connectees", name: "نظارات ذكية", slug: "lunettes-connectees" },
        { id: "balises-bluetooth", name: "إشارات بلوتوث", slug: "balises-bluetooth" },
        { id: "assistants-vocaux-portables", name: "مساعدات صوتية محمولة", slug: "assistants-vocaux-portables" }
      ]
    },
    {
      id: "reseau-communication-mobile",
      name: "شبكات واتصالات جوالة",
      slug: "reseau-communication-mobile",
      subcategories: [
        { id: "cartes-sim", name: "بطاقات SIM", slug: "cartes-sim" },
        { id: "esim", name: "eSIM", slug: "esim" },
        { id: "routeurs-4g-5g", name: "أجهزة راوتر 4G/5G", slug: "routeurs-4g-5g" },
        { id: "modems-portables", name: "أجهزة مودم محمولة", slug: "modems-portables" },
        { id: "antennes-amplificateurs-reseau", name: "هوائيات ومقويات شبكة", slug: "antennes-amplificateurs-reseau" },
        { id: "repeteurs-gsm", name: "مكررات إشارة GSM", slug: "repeteurs-gsm" },
        { id: "boitiers-wifi-mobiles", name: "أجهزة واي فاي متنقلة", slug: "boitiers-wifi-mobiles" },
        { id: "adaptateurs-reseau-telephone", name: "محولات شبكة للهاتف", slug: "adaptateurs-reseau-telephone" }
      ]
    },
    {
      id: "securite-protection-mobile",
      name: "حماية وأمان",
      slug: "securite-protection",
      subcategories: [
        { id: "antivols-telephone", name: "أنظمة ضد السرقة", slug: "antivols-telephone" },
        { id: "etuis-renforces", name: "حقائب مقواة", slug: "etuis-renforces" },
        { id: "coques-anti-chute", name: "أغطية ضد السقوط", slug: "coques-anti-chute" },
        { id: "protections-etanches-ip68", name: "حماية مقاومة للماء IP68", slug: "protections-etanches-ip68" },
        { id: "housses-anti-choc", name: "حافظات مضادة للصدمات", slug: "housses-anti-choc" },
        { id: "verres-trempes-haute-resistance", name: "زجاج مقوى عالي المقاومة", slug: "verres-trempes-haute-resistance" },
        { id: "accessoires-confidentialite", name: "إكسسوارات الخصوصية", slug: "accessoires-confidentialite" }
      ]
    },
    {
      id: "applications-services-mobiles",
      name: "تطبيقات وخدمات",
      slug: "applications-services",
      subcategories: [
        { id: "services-reparation-mobile", name: "خدمات إصلاح الهواتف", slug: "services-reparation-mobile" },
        { id: "debloquage-desimlockage", name: "فك تشفير وفتح الشبكة", slug: "debloquage-desimlockage" },
        { id: "transfert-donnees", name: "نقل البيانات", slug: "transfert-donnees" },
        { id: "diagnostics-mobiles", name: "تشخيص الأعطال", slug: "diagnostics-mobiles" },
        { id: "accessoires-sur-mesure", name: "إكسسوارات مخصصة", slug: "accessoires-sur-mesure" },
        { id: "personnalisation-mobile", name: "تخصيص الهواتف", slug: "personnalisation-mobile" }
      ]
    },
    {
      id: "marques-populaires-mobiles",
      name: "ماركات مشهورة (جوال)",
      slug: "marques-populaires-mobiles",
      subcategories: [
        { id: "apple", name: "Apple", slug: "apple" },
        { id: "samsung", name: "Samsung", slug: "samsung" },
        { id: "xiaomi", name: "Xiaomi", slug: "xiaomi" },
        { id: "huawei", name: "Huawei", slug: "huawei" },
        { id: "oppo", name: "Oppo", slug: "oppo" },
        { id: "vivo", name: "Vivo", slug: "vivo" },
        { id: "realme", name: "Realme", slug: "realme" },
        { id: "infinix", name: "Infinix", slug: "infinix" },
        { id: "tecno", name: "Tecno", slug: "tecno" },
        { id: "oneplus", name: "OnePlus", slug: "oneplus" },
        { id: "sony", name: "Sony", slug: "sony" },
        { id: "nokia", name: "Nokia", slug: "nokia" },
        { id: "honor", name: "Honor", slug: "honor" },
        { id: "motorola", name: "Motorola", slug: "motorola" },
        { id: "lenovo", name: "Lenovo", slug: "lenovo" },
        { id: "asus", name: "Asus", slug: "asus" },
        { id: "zte", name: "ZTE", slug: "zte" },
        { id: "google-pixel", name: "Google Pixel", slug: "google-pixel" }
      ]
    },
    {
      id: "operateurs-mobiles-algerie",
      name: "متعاملو الهاتف النقال في الجزائر",
      slug: "operateurs-mobiles-algerie",
      subcategories: [
        { id: "djezzy", name: "جازي", slug: "djezzy" },
        { id: "ooredoo", name: "أوريدو", slug: "ooredoo" },
        { id: "mobilis", name: "موبيليس", slug: "mobilis" },
        { id: "algerie-telecom", name: "اتصالات الجزائر", slug: "algerie-telecom" }
      ]
    },
    {
      id: "composants-informatiques",
      name: "مكونات الكمبيوتر",
      slug: "composants-informatiques",
      subcategories: [
        { id: "processeurs", name: "معالجات (Intel, AMD)", slug: "processeurs" },
        { id: "cartes-graphiques", name: "بطاقات رسومية (NVIDIA, AMD)", slug: "cartes-graphiques" },
        { id: "cartes-meres", name: "لوحات أم", slug: "cartes-meres" },
        { id: "memoires-ram", name: "ذاكرة عشوائية (RAM)", slug: "memoires-ram" },
        { id: "ssd", name: "أقراص SSD", slug: "ssd" },
        { id: "disques-durs-hdd", name: "أقراص صلبة HDD", slug: "disques-durs-hdd" },
        { id: "alimentation-pc", name: "وحدات تغذية الطاقة", slug: "alimentation-pc" },
        { id: "boitiers-pc", name: "علب الكمبيوتر (Cases)", slug: "boitiers-pc" },
        { id: "refroidissement-liquide", name: "تبريد مائي", slug: "refroidissement-liquide" },
        { id: "ventilateurs-air", name: "مراوح وتبريد هوائي", slug: "ventilateurs-air" },
        { id: "pates-thermiques", name: "معجون حراري", slug: "pates-thermiques" },
        { id: "cartes-son", name: "بطاقات صوت", slug: "cartes-son" },
        { id: "cartes-reseau", name: "بطاقات شبكة", slug: "cartes-reseau" },
        { id: "cartes-acquisition-video", name: "بطاقات التقاط الفيديو", slug: "cartes-acquisition-video" }
      ]
    },
    {
      id: "peripheriques-pc",
      name: "ملحقات الكمبيوتر",
      slug: "peripheriques-pc",
      subcategories: [
        { id: "ecrans-moniteurs", name: "شاشات ومراقب", slug: "ecrans-moniteurs" },
        { id: "moniteurs-gaming", name: "شاشات ألعاب", slug: "moniteurs-gaming" },
        { id: "moniteurs-incurves", name: "شاشات منحنية", slug: "moniteurs-incurves" },
        {
          id: "claviers",
          name: "لوحات مفاتيح",
          slug: "claviers",
          subcategories: [
            { id: "claviers-mecaniques", name: "ميكانيكية", slug: "claviers-mecaniques" },
            { id: "claviers-sans-fil", name: "لاسلكية", slug: "claviers-sans-fil" },
            { id: "claviers-gaming", name: "للألعاب", slug: "claviers-gaming" }
          ]
        },
        {
          id: "souris",
          name: "فأرات",
          slug: "souris",
          subcategories: [
            { id: "souris-filaire", name: "سلكية", slug: "souris-filaire" },
            { id: "souris-sans-fil", name: "لاسلكية", slug: "souris-sans-fil" },
            { id: "souris-gaming", name: "للألعاب", slug: "souris-gaming" }
          ]
        },
        { id: "tapis-souris", name: "وسادات فأرة", slug: "tapis-souris" },
        { id: "webcams", name: "كاميرات ويب", slug: "webcams" },
        { id: "microphones", name: "ميكروفونات", slug: "microphones" },
        { id: "enceintes-pc", name: "مكبرات صوت للكمبيوتر", slug: "enceintes-pc" },
        { id: "casques-audio", name: "سماعات رأس", slug: "casques-audio" },
        { id: "disques-durs-externes", name: "أقراص صلبة خارجية", slug: "disques-durs-externes" },
        { id: "cles-usb", name: "ذاكرة فلاش USB", slug: "cles-usb" },
        { id: "lecteurs-cartes-memoire", name: "قارئات بطاقات الذاكرة", slug: "lecteurs-cartes-memoire" },
        { id: "stations-accueil", name: "محطات إرساء", slug: "stations-accueil" },
        { id: "imprimantes", name: "طابعات", slug: "imprimantes" },
        { id: "scanners", name: "ماسحات ضوئية", slug: "scanners" },
        { id: "videoprojecteurs", name: "أجهزة عرض فيديو", slug: "videoprojecteurs" }
      ]
    },
    {
      id: "reseau-internet",
      name: "شبكات وإنترنت",
      slug: "reseau-internet",
      subcategories: [
        { id: "routeurs-wifi", name: "أجهزة راوتر واي فاي", slug: "routeurs-wifi" },
        { id: "wifi-mesh", name: "أنظمة واي فاي Mesh", slug: "wifi-mesh" },
        { id: "modems", name: "أجهزة مودم", slug: "modems" },
        { id: "repeteurs", name: "مكررات إشارة", slug: "repeteurs" },
        { id: "points-acces", name: "نقاط وصول", slug: "points-acces" },
        { id: "switches", name: "محولات شبكة (Switches)", slug: "switches" },
        { id: "cables-ethernet", name: "كابلات إيثرنت", slug: "cables-ethernet" },
        { id: "fibre-optique", name: "معدات الألياف البصرية", slug: "fibre-optique" },
        { id: "routeurs-4g-5g", name: "أجهزة راوتر 4G/5G", slug: "routeurs-4g-5g" },
        { id: "antennes-reseau", name: "هوائيات شبكة", slug: "antennes-reseau" },
        { id: "adaptateurs-usb-wifi", name: "محولات واي فاي USB", slug: "adaptateurs-usb-wifi" },
        { id: "routeurs-vpn", name: "أجهزة راوتر VPN", slug: "routeurs-vpn" }
      ]
    },
    {
      id: "equipement-bureau",
      name: "معدات مكتبية",
      slug: "equipement-bureau",
      subcategories: [
        { id: "imprimantes-laser", name: "طابعات ليزر", slug: "imprimantes-laser" },
        { id: "imprimantes-jet-encre", name: "طابعات نفث الحبر", slug: "imprimantes-jet-encre" },
        { id: "photocopieurs", name: "آلات تصوير", slug: "photocopieurs" },
        { id: "scanners-pro", name: "ماسحات ضوئية احترافية", slug: "scanners-pro" },
        { id: "fax", name: "فاكس", slug: "fax" },
        { id: "multifonctions", name: "طابعات متعددة الوظائف", slug: "multifonctions" },
        { id: "cartouches-encre", name: "خراطيش حبر", slug: "cartouches-encre" },
        { id: "toners", name: "أحبار (Toners)", slug: "toners" },
        { id: "plastifieuses", name: "آلات تغليف", slug: "plastifieuses" },
        { id: "destructeurs-documents", name: "آلات إتلاف المستندات", slug: "destructeurs-documents" },
        { id: "videoprojecteurs-pro", name: "أجهزة عرض احترافية", slug: "videoprojecteurs-pro" },
        { id: "tableaux-blancs", name: "سبورات بيضاء", slug: "tableaux-blancs" },
        { id: "equipements-conference", name: "معدات مؤتمرات", slug: "equipements-conference" }
      ]
    },
    {
      id: "electronique-gadgets",
      name: "إلكترونيات وأدوات ذكية",
      slug: "electronique-gadgets",
      subcategories: [
        { id: "montres-connectees", name: "ساعات ذكية", slug: "montres-connectees" },
        { id: "bracelets-connectes", name: "أساور ذكية", slug: "bracelets-connectes" },
        { id: "lunettes-intelligentes", name: "نظارات ذكية", slug: "lunettes-intelligentes" },
        { id: "action-cams", name: "كاميرات الحركة", slug: "action-cams" },
        { id: "drones", name: "طائرات بدون طيار", slug: "drones" },
        { id: "mini-projecteurs", name: "أجهزة عرض صغيرة", slug: "mini-projecteurs" },
        { id: "casques-vr", name: "نظارات الواقع الافتراضي", slug: "casques-vr" },
        { id: "dispositifs-ar", name: "أجهزة الواقع المعزز", slug: "dispositifs-ar" },
        { id: "liseuses", name: "قارئات إلكترونية", slug: "liseuses" },
        { id: "radios", name: "أجهزة راديو", slug: "radios" },
        { id: "talkie-walkies", name: "أجهزة اتصال لاسلكي", slug: "talkie-walkies" },
        { id: "gps-portables", name: "أجهزة GPS محمولة", slug: "gps-portables" },
        { id: "stylos-numeriques", name: "أقلام رقمية", slug: "stylos-numeriques" }
      ]
    },
    {
      id: "maison-intelligente",
      name: "المنزل الذكي والأتمتة",
      slug: "maison-intelligente",
      subcategories: [
        { id: "ampoules-connectees", name: "مصابيح ذكية", slug: "ampoules-connectees" },
        { id: "bandes-led", name: "أشرطة LED", slug: "bandes-led" },
        { id: "prises-intelligentes", name: "مقابس ذكية", slug: "prises-intelligentes" },
        { id: "cameras-securite", name: "كاميرات مراقبة", slug: "cameras-securite" },
        { id: "cameras-ip", name: "كاميرات IP", slug: "cameras-ip" },
        { id: "systemes-alarme", name: "أنظمة إنذار", slug: "systemes-alarme" },
        { id: "serrures-connectees", name: "أقفال ذكية", slug: "serrures-connectees" },
        { id: "thermostats", name: "منظمات حرارة", slug: "thermostats" },
        {
          id: "capteurs",
          name: "مستشعرات",
          slug: "capteurs",
          subcategories: [
            { id: "mouvement", name: "حركة", slug: "mouvement" },
            { id: "fumee", name: "دخان", slug: "fumee" },
            { id: "fuite-eau", name: "تسرب مياه", slug: "fuite-eau" }
          ]
        },
        { id: "interrupteurs-intelligents", name: "مفاتيح ذكية", slug: "interrupteurs-intelligents" },
        { id: "assistants-vocaux", name: "مساعدات صوتية", slug: "assistants-vocaux" },
        { id: "sonnettes-video", name: "أجراس فيديو", slug: "sonnettes-video" }
      ]
    },
    {
      id: "tv-divertissement",
      name: "تلفزيون وترفيه",
      slug: "tv-divertissement",
      subcategories: [
        { id: "televiseurs-led", name: "تلفزيونات LED", slug: "televiseurs-led" },
        { id: "televiseurs-oled", name: "تلفزيونات OLED", slug: "televiseurs-oled" },
        { id: "qled", name: "QLED", slug: "qled" },
        { id: "smart-tv", name: "تلفزيون ذكي", slug: "smart-tv" },
        { id: "android-tv", name: "أندرويد TV", slug: "android-tv" },
        { id: "recepteurs-tv", name: "مستقبلات تلفزيون", slug: "recepteurs-tv" },
        { id: "decodeurs-satellites", name: "أجهزة فك التشفير الفضائية", slug: "decodeurs-satellites" },
        { id: "box-tv-multimedia", name: "صناديق تلفزيون ووسائط", slug: "box-tv-multimedia" },
        { id: "lecteurs-multimedias", name: "مشغلات وسائط", slug: "lecteurs-multimedias" },
        { id: "barres-de-son", name: "مكبرات صوت (Soundbars)", slug: "barres-de-son" },
        { id: "home-cinema", name: "سينما منزلية", slug: "home-cinema" },
        { id: "lecteurs-blu-ray", name: "مشغلات بلو راي", slug: "lecteurs-blu-ray" }
      ]
    },
    {
      id: "accessoires-mobiles",
      name: "إكسسوارات المحمول (إلكترونيات)",
      slug: "accessoires-mobiles",
      subcategories: [
        { id: "chargeurs", name: "شواحن", slug: "chargeurs" },
        { id: "chargeurs-rapides", name: "شواحن سريعة", slug: "chargeurs-rapides" },
        { id: "powerbanks", name: "بنوك طاقة", slug: "powerbanks" },
        { id: "cables-adaptateurs", name: "كابلات ومحولات", slug: "cables-adaptateurs" },
        { id: "chargeurs-sans-fil", name: "شواحن لاسلكية", slug: "chargeurs-sans-fil" },
        { id: "chargeurs-voiture", name: "شواحن سيارة", slug: "chargeurs-voiture" },
        { id: "hubs-usb", name: "موزعات USB", slug: "hubs-usb" },
        { id: "protections-ecran", name: "حماية الشاشة", slug: "protections-ecran" },
        { id: "claviers-tablettes", name: "لوحات مفاتيح للأجهزة اللوحية", slug: "claviers-tablettes" },
        { id: "stylets-tactiles", name: "أقلام لمس", slug: "stylets-tactiles" },
        { id: "stations-accueil-mobiles", name: "محطات إرساء", slug: "stations-accueil-mobiles" }
      ]
    },
    {
      id: "informatique-professionnelle",
      name: "حوسبة احترافية",
      slug: "informatique-professionnelle",
      subcategories: [
        { id: "serveurs", name: "خوادم", slug: "serveurs" },
        { id: "baies-serveurs", name: "رفوف خوادم", slug: "baies-serveurs" },
        { id: "nas", name: "تخزين شبكي (NAS)", slug: "nas" },
        { id: "onduleurs-ups", name: "مزودات طاقة غير منقطعة (UPS)", slug: "onduleurs-ups" },
        { id: "switches-professionnels", name: "محولات شبكة احترافية", slug: "switches-professionnels" },
        { id: "pare-feux-reseau", name: "جدران حماية الشبكة", slug: "pare-feux-reseau" },
        { id: "equipements-cloud", name: "معدات سحابية", slug: "equipements-cloud" },
        { id: "appliances-sauvegarde", name: "أجهزة نسخ احتياطي", slug: "appliances-sauvegarde" },
        { id: "dispositifs-biometriques", name: "أجهزة بيومترية", slug: "dispositifs-biometriques" },
        { id: "systemes-conference-haut-de-gamme", name: "أنظمة مؤتمرات راقية", slug: "systemes-conference-haut-de-gamme" }
      ]
    },
    {
      id: "composants-electroniques-outils",
      name: "مكونات إلكترونية وأدوات إصلاح",
      slug: "composants-electroniques-outils",
      subcategories: [
        { id: "capteurs-electroniques", name: "مستشعرات إلكترونية", slug: "capteurs-electroniques" },
        { id: "resistances", name: "مقاومات", slug: "resistances" },
        { id: "condensateurs", name: "مكثفات", slug: "condensateurs" },
        { id: "diodes", name: "ثنائيات (Diodes)", slug: "diodes" },
        { id: "transistors", name: "ترانزستورات", slug: "transistors" },
        { id: "microcontroleurs", name: "متحكمات دقيقة", slug: "microcontroleurs" },
        { id: "cartes-arduino", name: "لوحات أردوينو", slug: "cartes-arduino" },
        { id: "raspberry-pi", name: "راسبيري باي", slug: "raspberry-pi" },
        { id: "breadboards", name: "لوحات تجارب", slug: "breadboards" },
        { id: "stations-soudage", name: "محطات لحام", slug: "stations-soudage" },
        { id: "multimetres", name: "مقاييس متعددة", slug: "multimetres" },
        { id: "outils-reparation", name: "أدوات إصلاح", slug: "outils-reparation" },
        { id: "cables-connecteurs", name: "كابلات وموصلات", slug: "cables-connecteurs" },
        { id: "testeurs-electroniques", name: "أجهزة اختبار إلكترونية", slug: "testeurs-electroniques" },
        { id: "cameras-thermiques", name: "كاميرات حرارية", slug: "cameras-thermiques" }
      ]
    },
    {
      id: "marques-populaires",
      name: "ماركات مشهورة",
      slug: "marques-populaires",
      subcategories: [
        { id: "apple", name: "Apple", slug: "apple" },
        { id: "dell", name: "Dell", slug: "dell" },
        { id: "hp", name: "HP", slug: "hp" },
        { id: "lenovo", name: "Lenovo", slug: "lenovo" },
        { id: "asus", name: "Asus", slug: "asus" },
        { id: "acer", name: "Acer", slug: "acer" },
        { id: "msi", name: "MSI", slug: "msi" },
        { id: "razer", name: "Razer", slug: "razer" },
        { id: "samsung", name: "Samsung", slug: "samsung" },
        { id: "huawei", name: "Huawei", slug: "huawei" },
        { id: "xiaomi", name: "Xiaomi", slug: "xiaomi" },
        { id: "lg", name: "LG", slug: "lg" },
        { id: "toshiba", name: "Toshiba", slug: "toshiba" },
        { id: "western-digital", name: "Western Digital", slug: "western-digital" },
        { id: "seagate", name: "Seagate", slug: "seagate" },
        { id: "kingston", name: "Kingston", slug: "kingston" },
        { id: "corsair", name: "Corsair", slug: "corsair" },
        { id: "gigabyte", name: "Gigabyte", slug: "gigabyte" },
        { id: "asus-rog", name: "Asus ROG", slug: "asus-rog" },
        { id: "nvidia", name: "NVIDIA", slug: "nvidia" },
        { id: "amd", name: "AMD", slug: "amd" },
        { id: "jbl", name: "JBL", slug: "jbl" },
        { id: "logitech", name: "Logitech", slug: "logitech" },
        { id: "steelseries", name: "SteelSeries", slug: "steelseries" },
        { id: "tp-link", name: "TP‑Link", slug: "tp-link" },
        { id: "netgear", name: "Netgear", slug: "netgear" },
        { id: "ubiquiti", name: "Ubiquiti", slug: "ubiquiti" }
      ]
    }
  ]
};
