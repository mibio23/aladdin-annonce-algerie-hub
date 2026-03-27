import { MenuCategory } from "@/data/categoryTypes";

export const artisanatTraditionnelAlgerienEn: MenuCategory = {
  id: "artisanat-traditionnel-algerien",
  name: "Algerian Traditional Crafts",
  slug: "artisanat-traditionnel-algerien",
  
  subcategories: [
    {
      id: "poterie-ceramique",
      name: "Pottery & ceramics",
      slug: "poterie-ceramique",
      subcategories: [
        { id: "poterie-traditionnelle", name: "traditional pottery", slug: "poterie-traditionnelle" },
        { id: "poterie-kabyle", name: "Kabyle pottery", slug: "poterie-kabyle" },
        { id: "poterie-chaouie", name: "Chaoui pottery", slug: "poterie-chaouie" },
        { id: "ceramiques-decoratives", name: "decorative ceramics", slug: "ceramiques-decoratives" }
      ]
    },
    {
      id: "artisanats-regionaux",
      name: "Regional crafts",
      slug: "artisanats-regionaux",
      subcategories: [
        { id: "mozabite", name: "Mozabite craft", slug: "mozabite" },
        { id: "touareg", name: "Tuareg craft", slug: "touareg" },
        { id: "berbere", name: "Berber craft", slug: "berbere" }
      ]
    },
    {
      id: "tissage-tapis",
      name: "Weaving & rugs",
      slug: "tissage-tapis",
      subcategories: [
        { id: "tissage-traditionnel", name: "traditional weaving", slug: "tissage-traditionnel" },
        { id: "tissage-kabyle", name: "Kabyle weaving", slug: "tissage-kabyle" },
        { id: "tapis-kilims", name: "rugs & kilims", slug: "tapis-kilims" },
        { id: "tapis-chaouis", name: "Chaoui rugs", slug: "tapis-chaouis" },
        { id: "tapis-mozabites", name: "Mozabite rugs", slug: "tapis-mozabites" },
        { id: "tissages-sahariens", name: "Saharan weaves", slug: "tissages-sahariens" },
        { id: "accessoires-tisses", name: "woven accessories", slug: "accessoires-tisses" }
      ]
    },
    {
      id: "bijoux-metaux",
      name: "Jewelry & metals",
      slug: "bijoux-metaux",
      subcategories: [
        { id: "bijoux-argent", name: "silver jewelry", slug: "bijoux-argent" },
        { id: "bijoux-kabyles", name: "Kabyle jewelry", slug: "bijoux-kabyles" },
        { id: "bijoux-touareg", name: "Tuareg jewelry", slug: "bijoux-touareg" },
        { id: "croix-agadez", name: "Agadez cross (tanaghelt)", slug: "croix-agadez" },
        { id: "talhakimt", name: "Talhakimt", slug: "talhakimt" },
        { id: "objets-cuivre", name: "copper objects", slug: "objets-cuivre" }
      ]
    },
    {
      id: "broderie-vetements",
      name: "Embroidery & traditional attire",
      slug: "broderie-vetements",
      subcategories: [
        { id: "karakou", name: "karakou", slug: "karakou" },
        { id: "gandoura", name: "gandoura", slug: "gandoura" },
        { id: "burnous", name: "burnous", slug: "burnous" },
        { id: "blousa", name: "blousa", slug: "blousa" },
        { id: "tenue-kabyle", name: "Kabyle attire", slug: "tenue-kabyle" },
        { id: "tenue-chaouie", name: "Chaoui attire", slug: "tenue-chaouie" },
        { id: "tenues-targuies", name: "Tuareg attire", slug: "tenues-targuies" },
        { id: "gandoura-saharienne", name: "Saharan gandoura", slug: "gandoura-saharienne" },
        { id: "broderies-artisanales", name: "hand embroidery", slug: "broderies-artisanales" },
        { id: "confection-sur-mesure", name: "tailor-made", slug: "confection-sur-mesure" }
      ]
    },
    {
      id: "cuir-maroquinerie",
      name: "Leather & marquetry",
      slug: "cuir-maroquinerie",
      subcategories: [
        { id: "babouches", name: "babouches", slug: "babouches" },
        { id: "sandales-artisanales", name: "artisan sandals", slug: "sandales-artisanales" },
        { id: "articles-cuir", name: "leather items", slug: "articles-cuir" },
        { id: "maroquinerie-artisanale", name: "artisan leatherworks", slug: "maroquinerie-artisanale" }
      ]
    },
    {
      id: "bois-sculpture",
      name: "Wood & sculpture",
      slug: "bois-sculpture",
      subcategories: [
        { id: "objets-bois", name: "wood objects", slug: "objets-bois" },
        { id: "sculpture-bois", name: "wood carving", slug: "sculpture-bois" },
        { id: "lampes-artisanales", name: "artisan lamps", slug: "lampes-artisanales" },
        { id: "coffres-anciens", name: "antique chests", slug: "coffres-anciens" },
        { id: "mobilier-traditionnel", name: "traditional furniture", slug: "mobilier-traditionnel" }
      ]
    },
    {
      id: "vannerie-fibres",
      name: "Basketry & natural fibers",
      slug: "vannerie-fibres",
      subcategories: [
        { id: "vannerie", name: "basketry", slug: "vannerie" },
        { id: "paniers-tresses", name: "woven baskets", slug: "paniers-tresses" },
        { id: "nattes-traditionnelles", name: "traditional mats", slug: "nattes-traditionnelles" },
        { id: "objets-alfa-palmier", name: "alfa & palm objects", slug: "objets-alfa-palmier" }
      ]
    },
    {
      id: "decoration-berbere",
      name: "Berber decor & objects",
      slug: "decoration-berbere",
      subcategories: [
        { id: "decorations-murales", name: "traditional wall decor", slug: "decorations-murales" },
        { id: "objets-decoratifs-berberes", name: "Berber decorative objects", slug: "objets-decoratifs-berberes" },
        { id: "tableaux-traditionnels", name: "traditional paintings", slug: "tableaux-traditionnels" },
        { id: "calligraphie-artistique", name: "artistic calligraphy", slug: "calligraphie-artistique" },
        { id: "calligraphie-tifinagh", name: "Tifinagh calligraphy", slug: "calligraphie-tifinagh" },
        { id: "souvenirs-touristes", name: "souvenirs for tourists", slug: "souvenirs-touristes" },
        { id: "artisanat-contemporain", name: "heritage-inspired contemporary craft", slug: "artisanat-contemporain" }
      ]
    },
    {
      id: "instruments-musique",
      name: "Handmade musical instruments",
      slug: "instruments-musique",
      subcategories: [
        { id: "bendir", name: "bendir", slug: "bendir" },
        { id: "goumbri", name: "goumbri", slug: "goumbri" },
        { id: "gasba", name: "gasba", slug: "gasba" },
        { id: "karkabou", name: "karkabou", slug: "karkabou" }
        ,{ id: "imzad", name: "imzad", slug: "imzad" }
      ]
    },
    {
      id: "produits-naturels",
      name: "Handmade natural products",
      slug: "produits-naturels",
      subcategories: [
        { id: "huile-olive-artisanale", name: "olive oil", slug: "huile-olive-artisanale" },
        { id: "henne", name: "henna", slug: "henne" },
        { id: "savon-artisanal", name: "artisan soap", slug: "savon-artisanal" },
        { id: "encens", name: "incense", slug: "encens" },
        { id: "melasse", name: "molasses", slug: "melasse" }
      ]
    },
    {
      id: "articles-culturels",
      name: "Cultural & heritage items",
      slug: "articles-culturels",
      subcategories: [
        { id: "objets-culturels", name: "cultural objects", slug: "objets-culturels" }
      ]
    },
    {
      id: "services-coutumes",
      name: "Services & traditional customs",
      slug: "services-coutumes",
      subcategories: [
        { id: "henne-artistique", name: "artistic henna", slug: "henne-artistique" },
        { id: "tatouage-traditionnel", name: "traditional tattoo", slug: "tatouage-traditionnel" },
        { id: "trousseau-mariage", name: "wedding trousseau preparation (cheddat)", slug: "trousseau-mariage" },
        { id: "location-tenues", name: "traditional attire rental", slug: "location-tenues" },
        { id: "ceremonies-traditionnelles", name: "traditional ceremonies preparation", slug: "ceremonies-traditionnelles" },
        { id: "musique-folklorique", name: "folk music (Chaoui, Kabyle, Tuareg, Gnawa)", slug: "musique-folklorique" },
        { id: "danse-traditionnelle", name: "traditional dance", slug: "danse-traditionnelle" },
        { id: "patisserie-traditionnelle-services", name: "traditional pastry services", slug: "patisserie-traditionnelle-services" },
        { id: "decoration-fetes", name: "traditional decor for festivities & weddings", slug: "decoration-fetes" },
        { id: "repas-traditionnels", name: "traditional meals preparation", slug: "repas-traditionnels" },
        { id: "organisation-mariages", name: "Algerian traditional wedding organization", slug: "organisation-mariages" },
        { id: "accessoires-fetes", name: "party accessories supply", slug: "accessoires-fetes" },
        { id: "broderie-personnalisee", name: "custom embroidery", slug: "broderie-personnalisee" },
        { id: "couture-artisanale", name: "artisan sewing", slug: "couture-artisanale" },
        { id: "cadeaux-personnalises", name: "custom gift making", slug: "cadeaux-personnalises" },
        { id: "ateliers-apprentissage", name: "learning workshops (pottery, weaving, engraving)", slug: "ateliers-apprentissage" },
        { id: "transmission-coutumes", name: "transmission of local customs", slug: "transmission-coutumes" },
        { id: "initiation-arts", name: "traditional arts initiation", slug: "initiation-arts" },
        { id: "ceremonies-religieuses", name: "religious and cultural ceremonies", slug: "ceremonies-religieuses" }
      ]
    },
    {
      id: "produits-locaux",
      name: "Algerian local products",
      slug: "produits-locaux",
      subcategories: [
        { id: "huile-olive-terroir", name: "terroir olive oil", slug: "huile-olive-terroir" },
        { id: "dattes-deglet-nour", name: "Deglet Nour dates", slug: "dattes-deglet-nour" },
        { id: "dattes-fourrees", name: "artisan stuffed dates", slug: "dattes-fourrees" },
        { id: "miel-naturel", name: "natural honey", slug: "miel-naturel" },
        { id: "couscous-traditionnel", name: "traditional couscous", slug: "couscous-traditionnel" },
        { id: "semoule-artisanale", name: "artisan semolina", slug: "semoule-artisanale" },
        { id: "epices-locales", name: "local spices", slug: "epices-locales" },
        { id: "olives-artisanales", name: "artisan olives", slug: "olives-artisanales" },
        { id: "conserves-traditionnelles", name: "traditional preserves", slug: "conserves-traditionnelles" },
        { id: "harissa-maison", name: "homemade harissa", slug: "harissa-maison" },
        { id: "fromages-locaux", name: "local cheeses", slug: "fromages-locaux" },
        { id: "smen", name: "traditional butter (smen)", slug: "smen" },
        { id: "confitures-artisanales", name: "artisan jams", slug: "confitures-artisanales" },
        { id: "fruits-secs", name: "dried fruits", slug: "fruits-secs" },
        { id: "plantes-medicinales", name: "medicinal plants", slug: "plantes-medicinales" },
        { id: "herbes-aromatiques", name: "aromatic herbs", slug: "herbes-aromatiques" },
        { id: "the-saharien", name: "Saharan tea", slug: "the-saharien" },
        { id: "cafe-algerien", name: "Algerian coffee", slug: "cafe-algerien" },
        { id: "farine-traditionnelle", name: "traditional flour", slug: "farine-traditionnelle" },
        { id: "pates-artisanales", name: "artisan pasta", slug: "pates-artisanales" },
        { id: "produits-apicoles", name: "beekeeping products", slug: "produits-apicoles" },
        { id: "huiles-vegetales", name: "natural vegetable oils", slug: "huiles-vegetales" },
        { id: "produits-sahariens", name: "Saharan terroir products", slug: "produits-sahariens" },
        { id: "produits-agricoles", name: "local agricultural products", slug: "produits-agricoles" },
        { id: "conserves-bio", name: "organic preserves", slug: "conserves-bio" },
        { id: "vinaigre-naturel", name: "natural vinegar", slug: "vinaigre-naturel" },
        { id: "caroube", name: "carob-based products", slug: "caroube" },
        { id: "sirop-dattes", name: "date syrup (rob)", slug: "sirop-dattes" },
        { id: "gateaux-dattes", name: "artisan date cakes", slug: "gateaux-dattes" }
      ]
    },
    {
      id: "plats-traditionnels",
      name: "Algerian traditional dishes",
      slug: "plats-traditionnels",
      subcategories: [
        { id: "couscous-regions", name: "couscous (Kabyle, Chaoui, Constantinois, Oranais)", slug: "couscous-regions" },
        { id: "rechta", name: "rechta", slug: "rechta" },
        { id: "chakhchoukha", name: "chakhchoukha", slug: "chakhchoukha" },
        { id: "trid", name: "trid", slug: "trid" },
        { id: "dolma", name: "dolma", slug: "dolma" },
        { id: "tajine-zitoune", name: "tajine zitoune", slug: "tajine-zitoune" },
        { id: "tajine-lahlou", name: "tajine lahlou", slug: "tajine-lahlou" },
        { id: "chorba-frik", name: "chorba frik", slug: "chorba-frik" },
        { id: "hrira", name: "hrira", slug: "hrira" },
        { id: "lham-lahlou", name: "lham lahlou", slug: "lham-lahlou" },
        { id: "bourek-sale", name: "bourek", slug: "bourek-sale" },
        { id: "mhadjeb", name: "mhadjeb", slug: "mhadjeb" },
        { id: "kesra", name: "kesra", slug: "kesra" },
        { id: "baghrir-sale", name: "savory baghrir", slug: "baghrir-sale" },
        { id: "chtitha-djedj", name: "chtitha djedj", slug: "chtitha-djedj" },
        { id: "chtitha-kofta", name: "chtitha kofta", slug: "chtitha-kofta" },
        { id: "berkoukes", name: "berkoukes", slug: "berkoukes" },
        { id: "mahjouba", name: "mahjouba", slug: "mahjouba" },
        { id: "seffa", name: "seffa", slug: "seffa" },
        { id: "plats-sahariens", name: "Saharan dishes", slug: "plats-sahariens" },
        { id: "plats-kabyles", name: "Kabyle dishes", slug: "plats-kabyles" },
        { id: "plats-chaouis", name: "Chaoui dishes", slug: "plats-chaouis" },
        { id: "plats-oranais", name: "Oran dishes", slug: "plats-oranais" },
        { id: "plats-constantinois", name: "Constantine dishes", slug: "plats-constantinois" },
        { id: "grillades", name: "traditional grills", slug: "grillades" },
        { id: "poissons-algeriens", name: "Algerian-style fish", slug: "poissons-algeriens" },
        { id: "plats-mijotes", name: "slow-cooked stews", slug: "plats-mijotes" },
        { id: "legumes-terroir", name: "terroir vegetable dishes", slug: "legumes-terroir" },
        { id: "tajines-regionaux", name: "regional tajines", slug: "tajines-regionaux" },
        { id: "specialites-familiales", name: "traditional family specialties", slug: "specialites-familiales" }
        ,{ id: "taguella", name: "taguella (Tuareg bread)", slug: "taguella" }
      ]
    },
    {
      id: "patisseries-traditionnelles",
      name: "Algerian traditional pastries",
      slug: "patisseries-traditionnelles",
      subcategories: [
        { id: "makroud", name: "makroud", slug: "makroud" },
        { id: "baklawa", name: "baklawa", slug: "baklawa" },
        { id: "kalb-ellouz", name: "kalb ellouz", slug: "kalb-ellouz" },
        { id: "dziriette", name: "dziriette", slug: "dziriette" },
        { id: "tcharek-el-ariane", name: "tcharek el ariane", slug: "tcharek-el-ariane" },
        { id: "griouech", name: "griouech", slug: "griouech" },
        { id: "samsa", name: "samsa", slug: "samsa" },
        { id: "msemen-sucre", name: "sweet msemen", slug: "msemen-sucre" },
        { id: "baghrir-miel", name: "baghrir with honey", slug: "baghrir-miel" },
        { id: "bourek-hlou", name: "bourek hlou", slug: "bourek-hlou" },
        { id: "tamina", name: "tamina", slug: "tamina" },
        { id: "zlabia", name: "zlabia", slug: "zlabia" },
        { id: "khfaf", name: "khfaf", slug: "khfaf" },
        { id: "mlawi-miel", name: "mlawi with honey", slug: "mlawi-miel" },
        { id: "khobz-el-bey", name: "khobz el bey", slug: "khobz-el-bey" },
        { id: "boussou-la-tmessou", name: "boussou la tmessou", slug: "boussou-la-tmessou" },
        { id: "mouna-oranaise", name: "mouna oranaise", slug: "mouna-oranaise" },
        { id: "mkhabaz", name: "mkhabaz", slug: "mkhabaz" },
        { id: "halwat-tabaa", name: "halwat tabaa", slug: "halwat-tabaa" },
        { id: "harcha-sucree", name: "sweet harcha", slug: "harcha-sucree" },
        { id: "kaak-annaba", name: "kaak annaba", slug: "kaak-annaba" },
        { id: "kaak-oranais", name: "kaak oranais", slug: "kaak-oranais" },
        { id: "gateaux-secs", name: "traditional dry cakes", slug: "gateaux-secs" },
        { id: "gateaux-miel", name: "honey cakes", slug: "gateaux-miel" },
        { id: "gateaux-amandes", name: "almond cakes", slug: "gateaux-amandes" },
        { id: "patisseries-kabyles", name: "Kabyle pastries", slug: "patisseries-kabyles" },
        { id: "patisseries-chaouies", name: "Chaoui pastries", slug: "patisseries-chaouies" },
        { id: "patisseries-sahariennes", name: "Saharan pastries", slug: "patisseries-sahariennes" },
        { id: "kaab-ghzal", name: "kaab ghzal", slug: "kaab-ghzal" },
        { id: "arayech", name: "arayech", slug: "arayech" },
        { id: "bradj", name: "bradj", slug: "bradj" },
        { id: "ghribia", name: "ghribia", slug: "ghribia" },
        { id: "sables-artisanaux", name: "artisan cookies", slug: "sables-artisanaux" },
        { id: "assortiments-festifs", name: "traditional festive assortments", slug: "assortiments-festifs" }
      ]
    }
  ]
};