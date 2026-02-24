import { MenuCategory } from "@/data/categoryTypes";

export const artisanatTraditionnelAlgerienDe: MenuCategory = {
  id: "artisanat-traditionnel-algerien",
  name: "Algerisches traditionelles Handwerk",
  slug: "artisanat-traditionnel-algerien",
  
  subcategories: [
    {
      id: "poterie-ceramique",
      name: "Töpferei & Keramik",
      slug: "poterie-ceramique",
      subcategories: [
        { id: "poterie-traditionnelle", name: "traditionelle Töpferei", slug: "poterie-traditionnelle" },
        { id: "poterie-kabyle", name: "kabylische Töpferei", slug: "poterie-kabyle" },
        { id: "poterie-chaouie", name: "chaouische Töpferei", slug: "poterie-chaouie" },
        { id: "ceramiques-decoratives", name: "dekorative Keramik", slug: "ceramiques-decoratives" }
      ]
    },
    {
      id: "artisanats-regionaux",
      name: "Regionale Handwerke",
      slug: "artisanats-regionaux",
      subcategories: [
        { id: "mozabite", name: "Mozabiten-Handwerk", slug: "mozabite" },
        { id: "touareg", name: "Tuareg-Handwerk", slug: "touareg" },
        { id: "berbere", name: "Berber-Handwerk", slug: "berbere" }
      ]
    },
    {
      id: "tissage-tapis",
      name: "Weberei & Teppiche",
      slug: "tissage-tapis",
      subcategories: [
        { id: "tissage-traditionnel", name: "traditionelle Weberei", slug: "tissage-traditionnel" },
        { id: "tissage-kabyle", name: "kabylische Weberei", slug: "tissage-kabyle" },
        { id: "tapis-kilims", name: "Teppiche & Kilims", slug: "tapis-kilims" },
        { id: "tapis-chaouis", name: "Chaoui-Teppiche", slug: "tapis-chaouis" },
        { id: "tapis-mozabites", name: "Mozabiten-Teppiche", slug: "tapis-mozabites" },
        { id: "tissages-sahariens", name: "saharische Webarbeiten", slug: "tissages-sahariens" },
        { id: "accessoires-tisses", name: "gewebte Accessoires", slug: "accessoires-tisses" }
      ]
    },
    {
      id: "bijoux-metaux",
      name: "Schmuck & Metalle",
      slug: "bijoux-metaux",
      subcategories: [
        { id: "bijoux-argent", name: "Silberschmuck", slug: "bijoux-argent" },
        { id: "bijoux-kabyles", name: "kabylischer Schmuck", slug: "bijoux-kabyles" },
        { id: "bijoux-touareg", name: "Tuareg-Schmuck", slug: "bijoux-touareg" },
        { id: "croix-agadez", name: "Agadez-Kreuz (Tanaghelt)", slug: "croix-agadez" },
        { id: "talhakimt", name: "Talhakimt", slug: "talhakimt" },
        { id: "objets-cuivre", name: "Kupferobjekte", slug: "objets-cuivre" }
      ]
    },
    {
      id: "broderie-vetements",
      name: "Stickerei & traditionelle Kleidung",
      slug: "broderie-vetements",
      subcategories: [
        { id: "karakou", name: "karakou", slug: "karakou" },
        { id: "gandoura", name: "gandoura", slug: "gandoura" },
        { id: "burnous", name: "burnous", slug: "burnous" },
        { id: "blousa", name: "blousa", slug: "blousa" },
        { id: "tenue-kabyle", name: "kabylische Kleidung", slug: "tenue-kabyle" },
        { id: "tenue-chaouie", name: "chaouische Kleidung", slug: "tenue-chaouie" },
        { id: "tenues-targuies", name: "Tuareg-Kleidung", slug: "tenues-targuies" },
        { id: "gandoura-saharienne", name: "saharische Gandoura", slug: "gandoura-saharienne" },
        { id: "broderies-artisanales", name: "handgefertigte Stickerei", slug: "broderies-artisanales" },
        { id: "confection-sur-mesure", name: "Maßanfertigung", slug: "confection-sur-mesure" }
      ]
    },
    {
      id: "cuir-maroquinerie",
      name: "Leder & Maroquinerie",
      slug: "cuir-maroquinerie",
      subcategories: [
        { id: "babouches", name: "Babouches", slug: "babouches" },
        { id: "sandales-artisanales", name: "handgefertigte Sandalen", slug: "sandales-artisanales" },
        { id: "articles-cuir", name: "Lederartikel", slug: "articles-cuir" },
        { id: "maroquinerie-artisanale", name: "handgefertigte Lederwaren", slug: "maroquinerie-artisanale" }
      ]
    },
    {
      id: "bois-sculpture",
      name: "Holz & Skulptur",
      slug: "bois-sculpture",
      subcategories: [
        { id: "objets-bois", name: "Holzobjekte", slug: "objets-bois" },
        { id: "sculpture-bois", name: "Holzschnitzerei", slug: "sculpture-bois" },
        { id: "lampes-artisanales", name: "handgefertigte Lampen", slug: "lampes-artisanales" },
        { id: "coffres-anciens", name: "antik Truhen", slug: "coffres-anciens" },
        { id: "mobilier-traditionnel", name: "traditionelle Möbel", slug: "mobilier-traditionnel" }
      ]
    },
    {
      id: "vannerie-fibres",
      name: "Flechtkunst & Naturfasern",
      slug: "vannerie-fibres",
      subcategories: [
        { id: "vannerie", name: "Flechtkunst", slug: "vannerie" },
        { id: "paniers-tresses", name: "geflochtene Körbe", slug: "paniers-tresses" },
        { id: "nattes-traditionnelles", name: "traditionelle Matten", slug: "nattes-traditionnelles" },
        { id: "objets-alfa-palmier", name: "Alfa- & Palm-Objekte", slug: "objets-alfa-palmier" }
      ]
    },
    {
      id: "decoration-berbere",
      name: "Berberische Dekoration & Objekte",
      slug: "decoration-berbere",
      subcategories: [
        { id: "decorations-murales", name: "traditionelle Wanddekoration", slug: "decorations-murales" },
        { id: "objets-decoratifs-berberes", name: "berberische Dekorobjekte", slug: "objets-decoratifs-berberes" },
        { id: "tableaux-traditionnels", name: "traditionelle Gemälde", slug: "tableaux-traditionnels" },
        { id: "calligraphie-artistique", name: "künstlerische Kalligraphie", slug: "calligraphie-artistique" },
        { id: "calligraphie-tifinagh", name: "Tifinagh-Kalligraphie", slug: "calligraphie-tifinagh" },
        { id: "souvenirs-touristes", name: "Souvenirs", slug: "souvenirs-touristes" },
        { id: "artisanat-contemporain", name: "zeitgenössisches, vom Erbe inspiriertes Handwerk", slug: "artisanat-contemporain" }
      ]
    },
    {
      id: "instruments-musique",
      name: "Handgefertigte Musikinstrumente",
      slug: "instruments-musique",
      subcategories: [
        { id: "bendir", name: "Bendir", slug: "bendir" },
        { id: "goumbri", name: "Goumbri", slug: "goumbri" },
        { id: "gasba", name: "Gasba", slug: "gasba" },
        { id: "karkabou", name: "Karkabou", slug: "karkabou" }
        ,{ id: "imzad", name: "Imzad", slug: "imzad" }
      ]
    },
    {
      id: "produits-naturels",
      name: "Handgemachte Naturprodukte",
      slug: "produits-naturels",
      subcategories: [
        { id: "huile-olive-artisanale", name: "Olivenöl", slug: "huile-olive-artisanale" },
        { id: "henne", name: "Henna", slug: "henne" },
        { id: "savon-artisanal", name: "handgemachte Seife", slug: "savon-artisanal" },
        { id: "encens", name: "Weihrauch", slug: "encens" },
        { id: "melasse", name: "Melasse", slug: "melasse" }
      ]
    },
    {
      id: "articles-culturels",
      name: "Kulturelle & Erbe-Artikel",
      slug: "articles-culturels",
      subcategories: [
        { id: "objets-culturels", name: "kulturelle Objekte", slug: "objets-culturels" }
      ]
    },
    {
      id: "services-coutumes",
      name: "Dienste & traditionelle Bräuche",
      slug: "services-coutumes",
      subcategories: [
        { id: "henne-artistique", name: "künstlerisches Henna", slug: "henne-artistique" },
        { id: "tatouage-traditionnel", name: "traditionelle Tätowierung", slug: "tatouage-traditionnel" },
        { id: "trousseau-mariage", name: "Hochzeitsaussteuer (Cheddat)", slug: "trousseau-mariage" },
        { id: "location-tenues", name: "Verleih traditioneller Kleidung", slug: "location-tenues" },
        { id: "ceremonies-traditionnelles", name: "Vorbereitung traditioneller Zeremonien", slug: "ceremonies-traditionnelles" },
        { id: "musique-folklorique", name: "Folklore-Musik (Chaoui, Kabyle, Tuareg, Gnawa)", slug: "musique-folklorique" },
        { id: "danse-traditionnelle", name: "traditioneller Tanz", slug: "danse-traditionnelle" },
        { id: "patisserie-traditionnelle-services", name: "traditionelle Konditorei-Dienste", slug: "patisserie-traditionnelle-services" },
        { id: "decoration-fetes", name: "traditionelle Deko für Feste & Hochzeiten", slug: "decoration-fetes" },
        { id: "repas-traditionnels", name: "Zubereitung traditioneller Mahlzeiten", slug: "repas-traditionnels" },
        { id: "organisation-mariages", name: "Organisation traditioneller Hochzeiten", slug: "organisation-mariages" },
        { id: "accessoires-fetes", name: "Bereitstellung von Fest-Accessoires", slug: "accessoires-fetes" },
        { id: "broderie-personnalisee", name: "personalisierte Stickerei", slug: "broderie-personnalisee" },
        { id: "couture-artisanale", name: "handwerkliches Nähen", slug: "couture-artisanale" },
        { id: "cadeaux-personnalises", name: "personalisierte Geschenke", slug: "cadeaux-personnalises" },
        { id: "ateliers-apprentissage", name: "Workshops (Töpferei, Weberei, Gravur)", slug: "ateliers-apprentissage" },
        { id: "transmission-coutumes", name: "Weitergabe lokaler Bräuche", slug: "transmission-coutumes" },
        { id: "initiation-arts", name: "Einführung in traditionelle Künste", slug: "initiation-arts" },
        { id: "ceremonies-religieuses", name: "religiöse & kulturelle Zeremonien", slug: "ceremonies-religieuses" }
      ]
    },
    {
      id: "produits-locaux",
      name: "Algerische lokale Produkte",
      slug: "produits-locaux",
      subcategories: [
        { id: "huile-olive-terroir", name: "Terroir-Olivenöl", slug: "huile-olive-terroir" },
        { id: "dattes-deglet-nour", name: "Deglet Nour Datteln", slug: "dattes-deglet-nour" },
        { id: "dattes-fourrees", name: "handgefüllte Datteln", slug: "dattes-fourrees" },
        { id: "miel-naturel", name: "Naturhonig", slug: "miel-naturel" },
        { id: "couscous-traditionnel", name: "traditioneller Couscous", slug: "couscous-traditionnel" },
        { id: "semoule-artisanale", name: "handwerklicher Grieß", slug: "semoule-artisanale" },
        { id: "epices-locales", name: "lokale Gewürze", slug: "epices-locales" },
        { id: "olives-artisanales", name: "handwerkliche Oliven", slug: "olives-artisanales" },
        { id: "conserves-traditionnelles", name: "traditionelle Konserven", slug: "conserves-traditionnelles" },
        { id: "harissa-maison", name: "hausgemachte Harissa", slug: "harissa-maison" },
        { id: "fromages-locaux", name: "lokale Käse", slug: "fromages-locaux" },
        { id: "smen", name: "traditionelle Butter (Smen)", slug: "smen" },
        { id: "confitures-artisanales", name: "handwerkliche Konfitüren", slug: "confitures-artisanales" },
        { id: "fruits-secs", name: "Trockenfrüchte", slug: "fruits-secs" },
        { id: "plantes-medicinales", name: "Heilpflanzen", slug: "plantes-medicinales" },
        { id: "herbes-aromatiques", name: "Aromatische Kräuter", slug: "herbes-aromatiques" },
        { id: "the-saharien", name: "Sahara-Tee", slug: "the-saharien" },
        { id: "cafe-algerien", name: "algerischer Kaffee", slug: "cafe-algerien" },
        { id: "farine-traditionnelle", name: "traditionelles Mehl", slug: "farine-traditionnelle" },
        { id: "pates-artisanales", name: "handwerkliche Pasta", slug: "pates-artisanales" },
        { id: "produits-apicoles", name: "Imkereierzeugnisse", slug: "produits-apicoles" },
        { id: "huiles-vegetales", name: "natürliche Pflanzenöle", slug: "huiles-vegetales" },
        { id: "produits-sahariens", name: "Sahara-Terroir-Produkte", slug: "produits-sahariens" },
        { id: "produits-agricoles", name: "lokale Agrarprodukte", slug: "produits-agricoles" },
        { id: "conserves-bio", name: "Bio-Konserven", slug: "conserves-bio" },
        { id: "vinaigre-naturel", name: "natürlicher Essig", slug: "vinaigre-naturel" },
        { id: "caroube", name: "Johannisbrot-Produkte", slug: "caroube" },
        { id: "sirop-dattes", name: "Dattelsirup (Rob)", slug: "sirop-dattes" },
        { id: "gateaux-dattes", name: "handwerkliche Dattelgebäck", slug: "gateaux-dattes" }
      ]
    },
    {
      id: "plats-traditionnels",
      name: "Algerische traditionelle Gerichte",
      slug: "plats-traditionnels",
      subcategories: [
        { id: "couscous-regions", name: "Couscous (Kabyle, Chaoui, Constantine, Oran)", slug: "couscous-regions" },
        { id: "rechta", name: "Rechta", slug: "rechta" },
        { id: "chakhchoukha", name: "Chakhchoukha", slug: "chakhchoukha" },
        { id: "trid", name: "Trid", slug: "trid" },
        { id: "dolma", name: "Dolma", slug: "dolma" },
        { id: "tajine-zitoune", name: "Tajine Zitoune", slug: "tajine-zitoune" },
        { id: "tajine-lahlou", name: "Tajine Lahlou", slug: "tajine-lahlou" },
        { id: "chorba-frik", name: "Chorba Frik", slug: "chorba-frik" },
        { id: "hrira", name: "Hrira", slug: "hrira" },
        { id: "lham-lahlou", name: "Lham Lahlou", slug: "lham-lahlou" },
        { id: "bourek-sale", name: "Bourek", slug: "bourek-sale" },
        { id: "mhadjeb", name: "Mhadjeb", slug: "mhadjeb" },
        { id: "kesra", name: "Kesra", slug: "kesra" },
        { id: "baghrir-sale", name: "herzhafter Baghrir", slug: "baghrir-sale" },
        { id: "chtitha-djedj", name: "Chtitha Djedj", slug: "chtitha-djedj" },
        { id: "chtitha-kofta", name: "Chtitha Kofta", slug: "chtitha-kofta" },
        { id: "berkoukes", name: "Berkoukes", slug: "berkoukes" },
        { id: "mahjouba", name: "Mahjouba", slug: "mahjouba" },
        { id: "seffa", name: "Seffa", slug: "seffa" },
        { id: "plats-sahariens", name: "saharische Gerichte", slug: "plats-sahariens" },
        { id: "plats-kabyles", name: "kabylische Gerichte", slug: "plats-kabyles" },
        { id: "plats-chaouis", name: "chaouische Gerichte", slug: "plats-chaouis" },
        { id: "plats-oranais", name: "oranische Gerichte", slug: "plats-oranais" },
        { id: "plats-constantinois", name: "constantinische Gerichte", slug: "plats-constantinois" },
        { id: "grillades", name: "traditionelle Grills", slug: "grillades" },
        { id: "poissons-algeriens", name: "Fisch auf algerische Art", slug: "poissons-algeriens" },
        { id: "plats-mijotes", name: "Schmorgerichte", slug: "plats-mijotes" },
        { id: "legumes-terroir", name: "Gerichte mit regionalem Gemüse", slug: "legumes-terroir" },
        { id: "tajines-regionaux", name: "regionale Tajines", slug: "tajines-regionaux" },
        { id: "specialites-familiales", name: "traditionelle Familiengerichte", slug: "specialites-familiales" }
        ,{ id: "taguella", name: "Taguella (Tuareg-Brot)", slug: "taguella" }
      ]
    },
    {
      id: "patisseries-traditionnelles",
      name: "Algerische traditionelle Backwaren",
      slug: "patisseries-traditionnelles",
      subcategories: [
        { id: "makroud", name: "Makroud", slug: "makroud" },
        { id: "baklawa", name: "Baklawa", slug: "baklawa" },
        { id: "kalb-ellouz", name: "Kalb Ellouz", slug: "kalb-ellouz" },
        { id: "dziriette", name: "Dziriette", slug: "dziriette" },
        { id: "tcharek-el-ariane", name: "Tcharek El Arian", slug: "tcharek-el-ariane" },
        { id: "griouech", name: "Griouech", slug: "griouech" },
        { id: "samsa", name: "Samsa", slug: "samsa" },
        { id: "msemen-sucre", name: "süßer Msemen", slug: "msemen-sucre" },
        { id: "baghrir-miel", name: "Baghrir mit Honig", slug: "baghrir-miel" },
        { id: "bourek-hlou", name: "Bourek Hlou", slug: "bourek-hlou" },
        { id: "tamina", name: "Tamina", slug: "tamina" },
        { id: "zlabia", name: "Zlabia", slug: "zlabia" },
        { id: "khfaf", name: "Khfaf", slug: "khfaf" },
        { id: "mlawi-miel", name: "Mlawi mit Honig", slug: "mlawi-miel" },
        { id: "khobz-el-bey", name: "Khobz El Bey", slug: "khobz-el-bey" },
        { id: "boussou-la-tmessou", name: "Boussou La Tmessou", slug: "boussou-la-tmessou" },
        { id: "mouna-oranaise", name: "Mouna Oranaise", slug: "mouna-oranaise" },
        { id: "mkhabaz", name: "Mkhabez", slug: "mkhabaz" },
        { id: "halwat-tabaa", name: "Halwat Tabaa", slug: "halwat-tabaa" },
        { id: "harcha-sucree", name: "süße Harcha", slug: "harcha-sucree" },
        { id: "kaak-annaba", name: "Kaak Annaba", slug: "kaak-annaba" },
        { id: "kaak-oranais", name: "Kaak Oranais", slug: "kaak-oranais" },
        { id: "gateaux-secs", name: "traditionelle Trockengebäck", slug: "gateaux-secs" },
        { id: "gateaux-miel", name: "Honiggebäck", slug: "gateaux-miel" },
        { id: "gateaux-amandes", name: "Mandelgebäck", slug: "gateaux-amandes" },
        { id: "patisseries-kabyles", name: "kabylische Backwaren", slug: "patisseries-kabyles" },
        { id: "patisseries-chaouies", name: "chaouische Backwaren", slug: "patisseries-chaouies" },
        { id: "patisseries-sahariennes", name: "saharische Backwaren", slug: "patisseries-sahariennes" },
        { id: "kaab-ghzal", name: "Kaab Ghzal", slug: "kaab-ghzal" },
        { id: "arayech", name: "Arayech", slug: "arayech" },
        { id: "bradj", name: "Bradj", slug: "bradj" },
        { id: "ghribia", name: "Ghribia", slug: "ghribia" },
        { id: "sables-artisanaux", name: "handwerkliche Plätzchen", slug: "sables-artisanaux" },
        { id: "assortiments-festifs", name: "traditionelle Festmischungen", slug: "assortiments-festifs" }
      ]
    }
  ]
};