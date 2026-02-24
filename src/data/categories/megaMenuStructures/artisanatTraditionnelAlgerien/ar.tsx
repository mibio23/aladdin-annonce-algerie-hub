import { MenuCategory } from "@/data/categoryTypes";

export const artisanatTraditionnelAlgerienAr: MenuCategory = {
  id: "artisanat-traditionnel-algerien",
  name: "الحرف التقليدية الجزائرية",
  slug: "artisanat-traditionnel-algerien",
  
  subcategories: [
    {
      id: "poterie-ceramique",
      name: "فخار وخزف",
      slug: "poterie-ceramique",
      subcategories: [
        { id: "poterie-traditionnelle", name: "فخار تقليدي", slug: "poterie-traditionnelle" },
        { id: "poterie-kabyle", name: "فخار قبائلي", slug: "poterie-kabyle" },
        { id: "poterie-chaouie", name: "فخار شاوي", slug: "poterie-chaouie" },
        { id: "ceramiques-decoratives", name: "خزف زخرفي", slug: "ceramiques-decoratives" }
      ]
    },
    {
      id: "artisanats-regionaux",
      name: "حرف محلية",
      slug: "artisanats-regionaux",
      subcategories: [
        { id: "mozabite", name: "حرف ميزابية", slug: "mozabite" },
        { id: "touareg", name: "حرف طوارقية", slug: "touareg" },
        { id: "berbere", name: "حرف أمازيغية", slug: "berbere" }
      ]
    },
    {
      id: "tissage-tapis",
      name: "نسج وسجاد",
      slug: "tissage-tapis",
      subcategories: [
        { id: "tissage-traditionnel", name: "نسج تقليدي", slug: "tissage-traditionnel" },
        { id: "tissage-kabyle", name: "نسج قبائلي", slug: "tissage-kabyle" },
        { id: "tapis-kilims", name: "سجاد وكليم", slug: "tapis-kilims" },
        { id: "tapis-chaouis", name: "سجاد شاوي", slug: "tapis-chaouis" },
        { id: "tapis-mozabites", name: "سجاد ميزابي", slug: "tapis-mozabites" },
        { id: "tissages-sahariens", name: "منسوجات صحراوية", slug: "tissages-sahariens" },
        { id: "accessoires-tisses", name: "إكسسوارات منسوجة", slug: "accessoires-tisses" }
      ]
    },
    {
      id: "bijoux-metaux",
      name: "حلي ومعادن",
      slug: "bijoux-metaux",
      subcategories: [
        { id: "bijoux-argent", name: "حلي فضة", slug: "bijoux-argent" },
        { id: "bijoux-kabyles", name: "حلي قبائلية", slug: "bijoux-kabyles" },
        { id: "bijoux-touareg", name: "حلي طوارقية", slug: "bijoux-touareg" },
        { id: "croix-agadez", name: "صليب أغاديز (تاناغلت)", slug: "croix-agadez" },
        { id: "talhakimt", name: "تلحكيمت", slug: "talhakimt" },
        { id: "objets-cuivre", name: "مصنوعات نحاسية", slug: "objets-cuivre" }
      ]
    },
    {
      id: "broderie-vetements",
      name: "تطريز وملابس تقليدية",
      slug: "broderie-vetements",
      subcategories: [
        { id: "karakou", name: "كراكو", slug: "karakou" },
        { id: "gandoura", name: "قندورة", slug: "gandoura" },
        { id: "burnous", name: "برنوس", slug: "burnous" },
        { id: "blousa", name: "بلوزة", slug: "blousa" },
        { id: "tenue-kabyle", name: "لباس قبائلي", slug: "tenue-kabyle" },
        { id: "tenue-chaouie", name: "لباس شاوي", slug: "tenue-chaouie" },
        { id: "tenues-targuies", name: "ملابس طوارقية", slug: "tenues-targuies" },
        { id: "gandoura-saharienne", name: "قندورة صحراوية", slug: "gandoura-saharienne" },
        { id: "broderies-artisanales", name: "تطريز يدوي", slug: "broderies-artisanales" },
        { id: "confection-sur-mesure", name: "خياطة وتفصيل حسب الطلب", slug: "confection-sur-mesure" }
      ]
    },
    {
      id: "cuir-maroquinerie",
      name: "جلد ومصنوعات يدوية",
      slug: "cuir-maroquinerie",
      subcategories: [
        { id: "babouches", name: "بلغة", slug: "babouches" },
        { id: "sandales-artisanales", name: "صنادل تقليدية", slug: "sandales-artisanales" },
        { id: "articles-cuir", name: "منتجات جلدية", slug: "articles-cuir" },
        { id: "maroquinerie-artisanale", name: "منتجات جلدية يدوية", slug: "maroquinerie-artisanale" }
      ]
    },
    {
      id: "bois-sculpture",
      name: "خشب ونحت",
      slug: "bois-sculpture",
      subcategories: [
        { id: "objets-bois", name: "مصنوعات خشبية", slug: "objets-bois" },
        { id: "sculpture-bois", name: "نحت على الخشب", slug: "sculpture-bois" },
        { id: "lampes-artisanales", name: "مصابيح يدوية", slug: "lampes-artisanales" },
        { id: "coffres-anciens", name: "صناديق قديمة", slug: "coffres-anciens" },
        { id: "mobilier-traditionnel", name: "أثاث تقليدي", slug: "mobilier-traditionnel" }
      ]
    },
    {
      id: "vannerie-fibres",
      name: "سلال وألياف طبيعية",
      slug: "vannerie-fibres",
      subcategories: [
        { id: "vannerie", name: "سلال يدوية", slug: "vannerie" },
        { id: "paniers-tresses", name: "سلال منسوجة", slug: "paniers-tresses" },
        { id: "nattes-traditionnelles", name: "حصير تقليدي", slug: "nattes-traditionnelles" },
        { id: "objets-alfa-palmier", name: "مصنوعات من الحلفاء والنخيل", slug: "objets-alfa-palmier" }
      ]
    },
    {
      id: "decoration-berbere",
      name: "زخارف وأشياء أمازيغية",
      slug: "decoration-berbere",
      subcategories: [
        { id: "decorations-murales", name: "زخارف حائط تقليدية", slug: "decorations-murales" },
        { id: "objets-decoratifs-berberes", name: "أشياء زخرفية أمازيغية", slug: "objets-decoratifs-berberes" },
        { id: "tableaux-traditionnels", name: "لوحات تقليدية", slug: "tableaux-traditionnels" },
        { id: "calligraphie-artistique", name: "خط فني", slug: "calligraphie-artistique" },
        { id: "calligraphie-tifinagh", name: "خط تفيناغ", slug: "calligraphie-tifinagh" },
        { id: "souvenirs-touristes", name: "تذكارات سياحية", slug: "souvenirs-touristes" },
        { id: "artisanat-contemporain", name: "حرف معاصرة مستوحاة من التراث", slug: "artisanat-contemporain" }
      ]
    },
    {
      id: "instruments-musique",
      name: "آلات موسيقية يدوية",
      slug: "instruments-musique",
      subcategories: [
        { id: "bendir", name: "بندير", slug: "bendir" },
        { id: "goumbri", name: "قنبري", slug: "goumbri" },
        { id: "gasba", name: "قصبة", slug: "gasba" },
        { id: "karkabou", name: "قرقبو", slug: "karkabou" }
        ,{ id: "imzad", name: "إمزاد", slug: "imzad" }
      ]
    },
    {
      id: "produits-naturels",
      name: "منتجات طبيعية يدوية",
      slug: "produits-naturels",
      subcategories: [
        { id: "huile-olive-artisanale", name: "زيت زيتون", slug: "huile-olive-artisanale" },
        { id: "henne", name: "حناء", slug: "henne" },
        { id: "savon-artisanal", name: "صابون يدوي", slug: "savon-artisanal" },
        { id: "encens", name: "بخور", slug: "encens" },
        { id: "melasse", name: "دبس", slug: "melasse" }
      ]
    },
    {
      id: "articles-culturels",
      name: "منتجات ثقافية وتراثية",
      slug: "articles-culturels",
      subcategories: [
        { id: "objets-culturels", name: "أشياء ثقافية", slug: "objets-culturels" }
      ]
    },
    {
      id: "services-coutumes",
      name: "خدمات وعادات تقليدية",
      slug: "services-coutumes",
      subcategories: [
        { id: "henne-artistique", name: "حناء فنية", slug: "henne-artistique" },
        { id: "tatouage-traditionnel", name: "وشم تقليدي", slug: "tatouage-traditionnel" },
        { id: "trousseau-mariage", name: "تحضير جهاز العروس (الشدة)", slug: "trousseau-mariage" },
        { id: "location-tenues", name: "كراء الملابس التقليدية", slug: "location-tenues" },
        { id: "ceremonies-traditionnelles", name: "تحضير المراسم التقليدية", slug: "ceremonies-traditionnelles" },
        { id: "musique-folklorique", name: "موسيقى فولكلورية (شاوي، قبائلي، طارقي، كناوي)", slug: "musique-folklorique" },
        { id: "danse-traditionnelle", name: "رقص تقليدي", slug: "danse-traditionnelle" },
        { id: "patisserie-traditionnelle-services", name: "خدمات الحلويات التقليدية", slug: "patisserie-traditionnelle-services" },
        { id: "decoration-fetes", name: "تزيين تقليدي للمناسبات والأعراس", slug: "decoration-fetes" },
        { id: "repas-traditionnels", name: "تحضير وجبات تقليدية", slug: "repas-traditionnels" },
        { id: "organisation-mariages", name: "تنظيم الأعراس التقليدية الجزائرية", slug: "organisation-mariages" },
        { id: "accessoires-fetes", name: "توفير مستلزمات المناسبات", slug: "accessoires-fetes" },
        { id: "broderie-personnalisee", name: "تطريز مخصص", slug: "broderie-personnalisee" },
        { id: "couture-artisanale", name: "خياطة تقليدية", slug: "couture-artisanale" },
        { id: "cadeaux-personnalises", name: "هدايا مخصصة", slug: "cadeaux-personnalises" },
        { id: "ateliers-apprentissage", name: "ورش تعلم (فخار، نسج، نقش)", slug: "ateliers-apprentissage" },
        { id: "transmission-coutumes", name: "نقل العادات المحلية", slug: "transmission-coutumes" },
        { id: "initiation-arts", name: "التعرف على الفنون التقليدية", slug: "initiation-arts" },
        { id: "ceremonies-religieuses", name: "تحضير المراسم الدينية والثقافية", slug: "ceremonies-religieuses" }
      ]
    },
    {
      id: "produits-locaux",
      name: "منتجات محلية جزائرية",
      slug: "produits-locaux",
      subcategories: [
        { id: "huile-olive-terroir", name: "زيت زيتون من terroir", slug: "huile-olive-terroir" },
        { id: "dattes-deglet-nour", name: "تمر دقلة نور", slug: "dattes-deglet-nour" },
        { id: "dattes-fourrees", name: "تمر محشو يدويًا", slug: "dattes-fourrees" },
        { id: "miel-naturel", name: "عسل طبيعي", slug: "miel-naturel" },
        { id: "couscous-traditionnel", name: "كسكس تقليدي", slug: "couscous-traditionnel" },
        { id: "semoule-artisanale", name: "سميد يدوي", slug: "semoule-artisanale" },
        { id: "epices-locales", name: "توابل محلية", slug: "epices-locales" },
        { id: "olives-artisanales", name: "زيتون يدوي", slug: "olives-artisanales" },
        { id: "conserves-traditionnelles", name: "معلبات تقليدية", slug: "conserves-traditionnelles" },
        { id: "harissa-maison", name: "هريسة منزلية", slug: "harissa-maison" },
        { id: "fromages-locaux", name: "أجبان محلية", slug: "fromages-locaux" },
        { id: "smen", name: "سمن تقليدي", slug: "smen" },
        { id: "confitures-artisanales", name: "مربيات يدوية", slug: "confitures-artisanales" },
        { id: "fruits-secs", name: "فواكه جافة", slug: "fruits-secs" },
        { id: "plantes-medicinales", name: "نباتات طبية", slug: "plantes-medicinales" },
        { id: "herbes-aromatiques", name: "أعشاب عطرية", slug: "herbes-aromatiques" },
        { id: "the-saharien", name: "شاي صحراوي", slug: "the-saharien" },
        { id: "cafe-algerien", name: "قهوة جزائرية", slug: "cafe-algerien" },
        { id: "farine-traditionnelle", name: "دقيق تقليدي", slug: "farine-traditionnelle" },
        { id: "pates-artisanales", name: "معكرونة يدوية", slug: "pates-artisanales" },
        { id: "produits-apicoles", name: "منتجات نحل", slug: "produits-apicoles" },
        { id: "huiles-vegetales", name: "زيوت نباتية طبيعية", slug: "huiles-vegetales" },
        { id: "produits-sahariens", name: "منتجات صحراوية محلية", slug: "produits-sahariens" },
        { id: "produits-agricoles", name: "منتجات زراعية محلية", slug: "produits-agricoles" },
        { id: "conserves-bio", name: "معلبات عضوية", slug: "conserves-bio" },
        { id: "vinaigre-naturel", name: "خل طبيعي", slug: "vinaigre-naturel" },
        { id: "caroube", name: "منتجات الخروب", slug: "caroube" },
        { id: "sirop-dattes", name: "دبس التمر (روب)", slug: "sirop-dattes" },
        { id: "gateaux-dattes", name: "حلويات تمر يدوية", slug: "gateaux-dattes" }
      ]
    },
    {
      id: "plats-traditionnels",
      name: "أطباق تقليدية جزائرية",
      slug: "plats-traditionnels",
      subcategories: [
        { id: "couscous-regions", name: "كسكس (قبائلي، شاوي، قسنطيني، وهراني)", slug: "couscous-regions" },
        { id: "rechta", name: "رشتة", slug: "rechta" },
        { id: "chakhchoukha", name: "شخشوخة", slug: "chakhchoukha" },
        { id: "trid", name: "طريد", slug: "trid" },
        { id: "dolma", name: "دولمة", slug: "dolma" },
        { id: "tajine-zitoune", name: "طاجين الزيتون", slug: "tajine-zitoune" },
        { id: "tajine-lahlou", name: "طاجين الحلو", slug: "tajine-lahlou" },
        { id: "chorba-frik", name: "شوربة فريك", slug: "chorba-frik" },
        { id: "hrira", name: "حريرة", slug: "hrira" },
        { id: "lham-lahlou", name: "لحم الحلو", slug: "lham-lahlou" },
        { id: "bourek-sale", name: "بوراك", slug: "bourek-sale" },
        { id: "mhadjeb", name: "محاجب", slug: "mhadjeb" },
        { id: "kesra", name: "كسرة", slug: "kesra" },
        { id: "baghrir-sale", name: "بغرير مالح", slug: "baghrir-sale" },
        { id: "chtitha-djedj", name: "شطِيطة دجاج", slug: "chtitha-djedj" },
        { id: "chtitha-kofta", name: "شطِيطة كفتة", slug: "chtitha-kofta" },
        { id: "berkoukes", name: "بركوكس", slug: "berkoukes" },
        { id: "mahjouba", name: "محجوبة", slug: "mahjouba" },
        { id: "seffa", name: "سفة", slug: "seffa" },
        { id: "plats-sahariens", name: "أطباق صحراوية", slug: "plats-sahariens" },
        { id: "plats-kabyles", name: "أطباق قبائلية", slug: "plats-kabyles" },
        { id: "plats-chaouis", name: "أطباق شاوية", slug: "plats-chaouis" },
        { id: "plats-oranais", name: "أطباق وهرانية", slug: "plats-oranais" },
        { id: "plats-constantinois", name: "أطباق قسنطينية", slug: "plats-constantinois" },
        { id: "grillades", name: "مشويات تقليدية", slug: "grillades" },
        { id: "poissons-algeriens", name: "أسماك على الطريقة الجزائرية", slug: "poissons-algeriens" },
        { id: "plats-mijotes", name: "أطباق مطهية على نار هادئة", slug: "plats-mijotes" },
        { id: "legumes-terroir", name: "أطباق بخضروات محلية", slug: "legumes-terroir" },
        { id: "tajines-regionaux", name: "طواجن محلية", slug: "tajines-regionaux" },
        { id: "specialites-familiales", name: "تخصصات عائلية تقليدية", slug: "specialites-familiales" }
        ,{ id: "taguella", name: "تاغولا (خبز طوارقي)", slug: "taguella" }
      ]
    },
    {
      id: "patisseries-traditionnelles",
      name: "حلويات تقليدية جزائرية",
      slug: "patisseries-traditionnelles",
      subcategories: [
        { id: "makroud", name: "مقروط", slug: "makroud" },
        { id: "baklawa", name: "بقلاوة", slug: "baklawa" },
        { id: "kalb-ellouz", name: "قلب اللوز", slug: "kalb-ellouz" },
        { id: "dziriette", name: "زيرية", slug: "dziriette" },
        { id: "tcharek-el-ariane", name: "شاراك العريان", slug: "tcharek-el-ariane" },
        { id: "griouech", name: "غريوش", slug: "griouech" },
        { id: "samsa", name: "سمصة", slug: "samsa" },
        { id: "msemen-sucre", name: "مسمن حلو", slug: "msemen-sucre" },
        { id: "baghrir-miel", name: "بغرير بالعسل", slug: "baghrir-miel" },
        { id: "bourek-hlou", name: "بوراك حلو", slug: "bourek-hlou" },
        { id: "tamina", name: "طمينة", slug: "tamina" },
        { id: "zlabia", name: "زلابية", slug: "zlabia" },
        { id: "khfaf", name: "خفاف", slug: "khfaf" },
        { id: "mlawi-miel", name: "ملوي بالعسل", slug: "mlawi-miel" },
        { id: "khobz-el-bey", name: "خبز الباي", slug: "khobz-el-bey" },
        { id: "boussou-la-tmessou", name: "بوصو لا تمسو", slug: "boussou-la-tmessou" },
        { id: "mouna-oranaise", name: "مونة وهرانية", slug: "mouna-oranaise" },
        { id: "mkhabaz", name: "مخباز", slug: "mkhabaz" },
        { id: "halwat-tabaa", name: "حلوة الطابع", slug: "halwat-tabaa" },
        { id: "harcha-sucree", name: "حرشة حلوة", slug: "harcha-sucree" },
        { id: "kaak-annaba", name: "كعك عنابة", slug: "kaak-annaba" },
        { id: "kaak-oranais", name: "كعك وهران", slug: "kaak-oranais" },
        { id: "gateaux-secs", name: "حلويات جافة تقليدية", slug: "gateaux-secs" },
        { id: "gateaux-miel", name: "حلويات بالعسل", slug: "gateaux-miel" },
        { id: "gateaux-amandes", name: "حلويات باللوز", slug: "gateaux-amandes" },
        { id: "patisseries-kabyles", name: "حلويات قبائلية", slug: "patisseries-kabyles" },
        { id: "patisseries-chaouies", name: "حلويات شاوية", slug: "patisseries-chaouies" },
        { id: "patisseries-sahariennes", name: "حلويات صحراوية", slug: "patisseries-sahariennes" },
        { id: "kaab-ghzal", name: "كعب غزال", slug: "kaab-ghzal" },
        { id: "arayech", name: "عرايش", slug: "arayech" },
        { id: "bradj", name: "بردج", slug: "bradj" },
        { id: "ghribia", name: "غريبية", slug: "ghribia" },
        { id: "sables-artisanaux", name: "سابليه يدوي", slug: "sables-artisanaux" },
        { id: "assortiments-festifs", name: "تشكيلات احتفالية تقليدية", slug: "assortiments-festifs" }
      ]
    }
  ]
};