import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Plug } from "lucide-react";

export const electromenagerAr: MenuCategory = {
  id: "electromenager",
  name: "الأجهزة المنزلية",
  slug: "electromenager",
  icon: <Plug className="w-4 h-4" />,
  subcategories: [
    {
      id: "refrigerateurs-congelateurs",
      name: "ثلاجات ومجمدات",
      slug: "refrigerateurs-congelateurs",
      subcategories: [
        { id: "refrigerateurs-combines", name: "ثلاجات مشتركة (ثلاجة+مجمد)", slug: "refrigerateurs-combines" },
        { id: "refrigerateurs-simples", name: "ثلاجات باب واحد", slug: "refrigerateurs-simples" },
        { id: "refrigerateurs-americains", name: "ثلاجات أمريكية (بابين متقابلين)", slug: "refrigerateurs-americains" },
        { id: "refrigerateurs-multi-portes", name: "ثلاجات متعددة الأبواب", slug: "refrigerateurs-multi-portes" },
        { id: "refrigerateurs-encastrables", name: "ثلاجات مدمجة", slug: "refrigerateurs-encastrables" },
        { id: "mini-frigos", name: "ثلاجات صغيرة", slug: "mini-frigos" },
        { id: "congelateurs-coffre", name: "مجمدات صندوقية", slug: "congelateurs-coffre" },
        { id: "congelateurs-armoires", name: "مجمدات عمودية", slug: "congelateurs-armoires" },
        { id: "congelateurs-compacts", name: "مجمدات مدمجة صغيرة", slug: "congelateurs-compacts" },
        { id: "refrigerateurs-boissons", name: "ثلاجات للمشروبات", slug: "refrigerateurs-boissons" },
        { id: "refrigerateurs-vitres", name: "ثلاجات بأبواب زجاجية", slug: "refrigerateurs-vitres" },
        { id: "refrigerateurs-professionnels", name: "ثلاجات احترافية", slug: "refrigerateurs-professionnels" }
      ]
    },
    {
      id: "lavage-sechage",
      name: "الغسيل والتجفيف",
      slug: "lavage-sechage",
      subcategories: [
        { id: "lave-linge-frontal", name: "غسالات أمامية", slug: "lave-linge-frontal" },
        { id: "lave-linge-top", name: "غسالات علوية", slug: "lave-linge-top" },
        { id: "lave-linge-grande-capacite", name: "غسالات سعة كبيرة", slug: "lave-linge-grande-capacite" },
        { id: "lave-linge-connecte", name: "غسالات ذكية", slug: "lave-linge-connecte" },
        { id: "seche-linge-condensation", name: "مجففات تكثيف", slug: "seche-linge-condensation" },
        { id: "seche-linge-pompe-a-chaleur", name: "مجففات بمضخة حرارة", slug: "seche-linge-pompe-a-chaleur" },
        { id: "seche-linge-evacuation", name: "مجففات تهوية", slug: "seche-linge-evacuation" },
        { id: "lave-linge-sechant", name: "غسالة-مجفف", slug: "lave-linge-sechant" },
        { id: "mini-lave-linge", name: "غسالات صغيرة", slug: "mini-lave-linge" },
        { id: "machines-professionnelles-lavage", name: "أجهزة احترافية", slug: "machines-professionnelles-lavage" }
      ]
    },
    {
      id: "cuisson-cuisine",
      name: "الطهي والمطبخ",
      slug: "cuisson-cuisine",
      subcategories: [
        {
          id: "cuisinieres",
          name: "أفران الطبخ",
          slug: "cuisinieres",
          subcategories: [
            { id: "gaz", name: "غاز", slug: "gaz" },
            { id: "electrique", name: "كهرباء", slug: "electrique" },
            { id: "mixte", name: "مزدوج", slug: "mixte" }
          ]
        },
        {
          id: "fours-encastrables",
          name: "أفران مدمجة",
          slug: "fours-encastrables",
          subcategories: [
            { id: "pyrolyse", name: "بيروليز", slug: "pyrolyse" },
            { id: "catalyse", name: "تحفيز", slug: "catalyse" },
            { id: "vapeur", name: "بخار", slug: "vapeur" }
          ]
        },
        {
          id: "micro-ondes",
          name: "أفران مايكروويف",
          slug: "micro-ondes",
          subcategories: [
            { id: "grill", name: "شواية", slug: "grill" },
            { id: "combine", name: "مركّب", slug: "combine" }
          ]
        },
        {
          id: "plaques-de-cuisson",
          name: "أسطح الطهي",
          slug: "plaques-de-cuisson",
          subcategories: [
            { id: "gaz-plaques", name: "غاز", slug: "gaz-plaques" },
            { id: "induction", name: "حثّ", slug: "induction" },
            { id: "vitroceramique", name: "سيراميك", slug: "vitroceramique" }
          ]
        },
        { id: "tables-de-cuisson-portatives", name: "طاولات طهي محمولة", slug: "tables-de-cuisson-portatives" },
        {
          id: "friteuses",
          name: "قلايات",
          slug: "friteuses",
          subcategories: [
            { id: "classiques", name: "كلاسيكية", slug: "classiques" },
            { id: "air-fryer", name: "هوائية", slug: "air-fryer" }
          ]
        },
        { id: "multicuiseurs", name: "أجهزة طبخ متعددة", slug: "multicuiseurs" },
        { id: "autocuiseurs-cocottes", name: "قدور ضغط وكوكوت", slug: "autocuiseurs-cocottes" },
        { id: "machines-sous-vide", name: "أجهزة تفريغ الهواء", slug: "machines-sous-vide" },
        { id: "chauffe-plats", name: "صواني تسخين", slug: "chauffe-plats" }
      ]
    },
    {
      id: "petits-appareils-cuisine",
      name: "أجهزة مطبخ صغيرة",
      slug: "petits-appareils-cuisine",
      subcategories: [
        { id: "mixeurs", name: "خلاطات يد", slug: "mixeurs" },
        { id: "blenders", name: "خلاطات", slug: "blenders" },
        { id: "robots-cuiseurs", name: "روبوتات الطبخ", slug: "robots-cuiseurs" },
        { id: "robots-patissier", name: "عجّانات", slug: "robots-patissier" },
        { id: "extracteurs-jus", name: "عصارات", slug: "extracteurs-jus" },
        { id: "centrifugeuses", name: "عصارات طرد مركزي", slug: "centrifugeuses" },
        { id: "batteurs", name: "خفاقات كهربائية", slug: "batteurs" },
        { id: "hachoirs", name: "مفرمات", slug: "hachoirs" },
        { id: "grill-panini", name: "شوايات وصانعات بانيني", slug: "grill-panini" },
        { id: "gaufriers", name: "صانعات وافل", slug: "gaufriers" },
        { id: "crepieres", name: "صانعات كريب", slug: "crepieres" },
        { id: "cuiseurs-vapeur", name: "طباخات بالبخار", slug: "cuiseurs-vapeur" },
        { id: "cuiseurs-riz", name: "طباخات الأرز", slug: "cuiseurs-riz" },
        { id: "moulins-cafe", name: "مطاحن قهوة", slug: "moulins-cafe" },
        {
          id: "cafetieres",
          name: "ماكينات قهوة",
          slug: "cafetieres",
          subcategories: [
            { id: "expresso", name: "إسبريسو", slug: "expresso" },
            { id: "filtre", name: "فلتر", slug: "filtre" },
            { id: "capsules", name: "كبسولات", slug: "capsules" }
          ]
        },
        { id: "bouilloires", name: "غلايات ماء", slug: "bouilloires" },
        { id: "grille-pain", name: "محامص خبز", slug: "grille-pain" },
        { id: "machines-sandwich", name: "صانعات ساندويتش", slug: "machines-sandwich" },
        { id: "fondue-raclette", name: "أجهزة فوندو وراكليت", slug: "fondue-raclette" }
      ]
    },
    {
      id: "entretien-maison",
      name: "العناية بالمنزل",
      slug: "entretien-maison",
      subcategories: [
        { id: "aspirateurs-traineaux", name: "مكانس أسطوانية", slug: "aspirateurs-traineaux" },
        { id: "aspirateurs-balais", name: "مكانس عصا", slug: "aspirateurs-balais" },
        { id: "aspirateurs-robot", name: "مكانس روبوت", slug: "aspirateurs-robot" },
        { id: "aspirateurs-eau-poussiere", name: "مكانس ماء وغبار", slug: "aspirateurs-eau-poussiere" },
        { id: "nettoyeurs-vapeur", name: "منظفات بالبخار", slug: "nettoyeurs-vapeur" },
        { id: "nettoyeurs-haute-pression", name: "آلات ضغط منزلي", slug: "nettoyeurs-haute-pression" },
        { id: "balais-electriques", name: "مكانس كهربائية عمودية", slug: "balais-electriques" },
        { id: "nettoyeurs-vitres", name: "منظفات الزجاج", slug: "nettoyeurs-vitres" },
        { id: "purificateurs-air", name: "منقّيات هواء", slug: "purificateurs-air" },
        { id: "deshumidificateurs", name: "مزيلات الرطوبة", slug: "deshumidificateurs" },
        { id: "humidificateurs", name: "مرطّبات", slug: "humidificateurs" }
      ]
    },
    {
      id: "climatisation-chauffage",
      name: "التكييف والتدفئة",
      slug: "climatisation-chauffage",
      subcategories: [
        { id: "climatiseurs-split", name: "مكيفات سبليت", slug: "climatiseurs-split" },
        { id: "climatiseurs-mobiles", name: "مكيفات متنقلة", slug: "climatiseurs-mobiles" },
        {
          id: "ventilateurs",
          name: "مراوح",
          slug: "ventilateurs",
          subcategories: [
            { id: "tour", name: "برج", slug: "tour" },
            { id: "mural", name: "جداري", slug: "mural" },
            { id: "de-table", name: "طاولة", slug: "de-table" }
          ]
        },
        { id: "radiateurs-electriques", name: "مشعّات كهربائية", slug: "radiateurs-electriques" },
        { id: "chauffages-soufflants", name: "دفّايات هواء", slug: "chauffages-soufflants" },
        { id: "chauffages-gaz", name: "دفّايات غاز", slug: "chauffages-gaz" },
        { id: "poeles-petrole", name: "مدافئ كيروسين", slug: "poeles-petrole" },
        { id: "chauffe-eau-electriques", name: "سخّانات ماء كهربائية", slug: "chauffe-eau-electriques" },
        { id: "chauffe-eau-gaz", name: "سخّانات ماء غاز", slug: "chauffe-eau-gaz" },
        { id: "chauffage-solaire-domestique", name: "تدفئة شمسية منزليّة", slug: "chauffage-solaire-domestique" },
        { id: "defroisseurs-vapeur", name: "مملّسات بخار", slug: "defroisseurs-vapeur" }
      ]
    },
    {
      id: "electromenager-salle-de-bain",
      name: "أجهزة الحمّام",
      slug: "electromenager-salle-de-bain",
      subcategories: [
        { id: "seche-cheveux", name: "مجففات شعر", slug: "seche-cheveux" },
        { id: "lisseurs-boucleurs", name: "مملّسات ومجعّدات شعر", slug: "lisseurs-boucleurs" },
        { id: "tondeuses-rasoirs", name: "ماكينات حلاقة وتشذيب كهربائية", slug: "tondeuses-rasoirs" },
        { id: "epilateurs", name: "أجهزة إزالة الشعر", slug: "epilateurs" },
        { id: "brosse-visage", name: "فرشاة وجه كهربائية", slug: "brosse-visage" },
        { id: "miroirs-lumineux", name: "مرايا مضيئة", slug: "miroirs-lumineux" },
        { id: "sterilisateurs-desinfecteurs", name: "أجهزة تعقيم وتطهير", slug: "sterilisateurs-desinfecteurs" }
      ]
    },
    {
      id: "traitement-eau",
      name: "معالجة المياه",
      slug: "traitement-eau",
      subcategories: [
        { id: "filtres-eau", name: "فلاتر مياه", slug: "filtres-eau" },
        { id: "purificateurs-eau", name: "أجهزة تنقية", slug: "purificateurs-eau" },
        { id: "fontaines-eau", name: "موزّعات/نوافير مياه", slug: "fontaines-eau" },
        { id: "distributeurs-eau-chaude-froide", name: "موزّعات ماء ساخن/بارد", slug: "distributeurs-eau-chaude-froide" },
        { id: "osmose-inverse", name: "أجهزة التناضح العكسي", slug: "osmose-inverse" }
      ]
    },
    {
      id: "appareils-specialises",
      name: "أجهزة متخصصة",
      slug: "appareils-specialises",
      subcategories: [
        { id: "machines-pain", name: "آلات خبز", slug: "machines-pain" },
        { id: "machines-pates", name: "آلات معكرونة", slug: "machines-pates" },
        { id: "machines-glace", name: "آلات آيس كريم", slug: "machines-glace" },
        { id: "hot-dog", name: "أجهزة هوت دوغ", slug: "hot-dog" },
        { id: "sorbetieres", name: "سوربيتية", slug: "sorbetieres" },
        { id: "deshydrateurs-alimentaires", name: "مجففات غذائية", slug: "deshydrateurs-alimentaires" },
        { id: "fumoir", name: "أجهزة تدخين", slug: "fumoir" },
        { id: "plateaux-chauffants", name: "صواني تسخين كهربائية", slug: "plateaux-chauffants" }
      ]
    },
    {
      id: "froid-congelation-pro",
      name: "تبريد وتجميد احترافي",
      slug: "froid-congelation-pro",
      subcategories: [
        { id: "armoires-refrigerees", name: "خزائن مبردة", slug: "armoires-refrigerees" },
        { id: "congelateurs-pro", name: "مجمدات احترافية", slug: "congelateurs-pro" },
        { id: "vitrines-refrigerees", name: "واجهات عرض مبردة", slug: "vitrines-refrigerees" },
        { id: "comptoirs-froids", name: "كاونترات باردة", slug: "comptoirs-froids" },
        { id: "machines-glacons", name: "آلات صنع الثلج", slug: "machines-glacons" },
        { id: "cellules-refroidissement", name: "خلايا تبريد سريعة", slug: "cellules-refroidissement" }
      ]
    },
    {
      id: "cuisson-professionnelle",
      name: "طبخ احترافي",
      slug: "cuisson-professionnelle",
      subcategories: [
        {
          id: "fours-pro",
          name: "أفران احترافية",
          slug: "fours-pro",
          subcategories: [
            { id: "pizza", name: "بيتزا", slug: "pizza" },
            { id: "pain", name: "خبز", slug: "pain" },
            { id: "convection", name: "هواء ساخن", slug: "convection" }
          ]
        },
        { id: "plaques-gaz-pro", name: "ألواح غاز احترافية", slug: "plaques-gaz-pro" },
        { id: "grillades-planchas", name: "مشاوي وبلانشا", slug: "grillades-planchas" },
        { id: "marmites-electriques", name: "قدور كهربائية", slug: "marmites-electriques" },
        { id: "friteuses-pro", name: "قلايات احترافية", slug: "friteuses-pro" },
        { id: "bain-maries", name: "حاويات تسخين (بان-ماري)", slug: "bain-maries" }
      ]
    },
    {
      id: "accessoires-pieces-detachees",
      name: "ملحقات وقطع غيار",
      slug: "accessoires-pieces-detachees",
      subcategories: [
        { id: "filtres-aspirateurs", name: "فلاتر مكانس", slug: "filtres-aspirateurs" },
        { id: "filtres-frigos", name: "فلاتر ثلاجات", slug: "filtres-frigos" },
        { id: "bacs-legumes", name: "أدراج خضار", slug: "bacs-legumes" },
        { id: "bouteilles-cartouches-gaz", name: "زجاجات وكارتوشات غاز", slug: "bouteilles-cartouches-gaz" },
        { id: "tuyaux-arrivee-evacuation", name: "خراطيم دخول وخروج", slug: "tuyaux-arrivee-evacuation" },
        { id: "poignees-boutons", name: "مقابض وأزرار", slug: "poignees-boutons" },
        { id: "plateaux-micro-ondes", name: "صواني ميكروويف", slug: "plateaux-micro-ondes" },
        { id: "batteries-cuisine-compatibles", name: "أواني طبخ متوافقة", slug: "batteries-cuisine-compatibles" },
        { id: "grilles-plaques", name: "شوايات وصفائح", slug: "grilles-plaques" },
        { id: "accessoires-robot-cuisine", name: "ملحقات روبوت المطبخ", slug: "accessoires-robot-cuisine" },
        { id: "lames-de-coupe", name: "شفرات قطع", slug: "lames-de-coupe" },
        { id: "pieces-chauffe-eau", name: "قطع سخّانات ماء", slug: "pieces-chauffe-eau" }
      ]
    },
    {
      id: "electromenager-nomade-mini",
      name: "أجهزة متنقلة وميني",
      slug: "electromenager-nomade-mini",
      subcategories: [
        { id: "mini-glacieres-electriques", name: "مبرّدات كهربائية صغيرة", slug: "mini-glacieres-electriques" },
        { id: "mini-cuiseurs", name: "طباخات صغيرة", slug: "mini-cuiseurs" },
        { id: "appareils-portables-batterie", name: "أجهزة محمولة تعمل بالبطارية", slug: "appareils-portables-batterie" },
        { id: "mini-ventilateurs", name: "مراوح صغيرة", slug: "mini-ventilateurs" },
        { id: "mini-fers-vapeur", name: "مكاوي بخارية صغيرة", slug: "mini-fers-vapeur" },
        { id: "appareils-camping", name: "أجهزة تخييم صغيرة", slug: "appareils-camping" }
      ]
    },
    {
      id: "securite-energie",
      name: "السلامة والطاقة",
      slug: "securite-energie",
      subcategories: [
        { id: "parafoudres", name: "حمايات ضد الصواعق", slug: "parafoudres" },
        { id: "multiprises-intelligentes", name: "مقابس متعددة ذكية", slug: "multiprises-intelligentes" },
        { id: "regulateurs-tension", name: "منظمات جهد", slug: "regulateurs-tension" },
        { id: "onduleurs-domestiques", name: "مزودات طاقة غير منقطعة منزلية", slug: "onduleurs-domestiques" }
      ]
    },
    {
      id: "marques-populaires",
      name: "ماركات شائعة",
      slug: "marques-populaires",
      subcategories: [
        { id: "samsung", name: "Samsung", slug: "samsung" },
        { id: "lg", name: "LG", slug: "lg" },
        { id: "beko", name: "Beko", slug: "beko" },
        { id: "bosch", name: "Bosch", slug: "bosch" },
        { id: "siemens", name: "Siemens", slug: "siemens" },
        { id: "whirlpool", name: "Whirlpool", slug: "whirlpool" },
        { id: "brandt", name: "Brandt", slug: "brandt" },
        { id: "kenwood", name: "Kenwood", slug: "kenwood" },
        { id: "moulinex", name: "Moulinex", slug: "moulinex" },
        { id: "philips", name: "Philips", slug: "philips" },
        { id: "hisense", name: "Hisense", slug: "hisense" },
        { id: "haier", name: "Haier", slug: "haier" },
        { id: "candy", name: "Candy", slug: "candy" },
        { id: "indesit", name: "Indesit", slug: "indesit" },
        { id: "midea", name: "Midea", slug: "midea" },
        { id: "delonghi", name: "Delonghi", slug: "delonghi" },
        { id: "severin", name: "Severin", slug: "severin" },
        { id: "rowenta", name: "Rowenta", slug: "rowenta" }
      ]
    },
    {
      id: "segments-usage",
      name: "شرائح الاستخدام",
      slug: "segments-usage",
      subcategories: [
        { id: "appareils-menagers-classiques", name: "أجهزة منزلية تقليدية", slug: "appareils-menagers-classiques" },
        { id: "appareils-professionnels", name: "أجهزة احترافية", slug: "appareils-professionnels" },
        { id: "appareils-petites-cuisines", name: "أجهزة للمطابخ الصغيرة", slug: "appareils-petites-cuisines" },
        { id: "appareils-energetiques-a-plus-plus", name: "أجهزة عالية الكفاءة A+ إلى A++", slug: "appareils-energetiques-a-plus-plus" },
        { id: "appareils-connectes-smart-home", name: "أجهزة ذكية متصلة بالمنزل", slug: "appareils-connectes-smart-home" },
        { id: "appareils-economiques-compacts", name: "أجهزة اقتصادية ومضغوطة", slug: "appareils-economiques-compacts" }
      ]
    }
  ]
};