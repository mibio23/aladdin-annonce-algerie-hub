import { MenuCategory } from "@/data/categoryTypes";

export const artisanatTraditionnelAlgerienIt: MenuCategory = {
  id: "artisanat-traditionnel-algerien",
  name: "Artigianato Tradizionale Algerino",
  slug: "artisanat-traditionnel-algerien",
  
  subcategories: [
    {
      id: "poterie-ceramique",
      name: "Ceramica e terracotta",
      slug: "poterie-ceramique",
      subcategories: [
        { id: "poterie-traditionnelle", name: "terracotta tradizionale", slug: "poterie-traditionnelle" },
        { id: "poterie-kabyle", name: "terracotta kabyle", slug: "poterie-kabyle" },
        { id: "poterie-chaouie", name: "terracotta chaoui", slug: "poterie-chaouie" },
        { id: "ceramiques-decoratives", name: "ceramiche decorative", slug: "ceramiques-decoratives" }
      ]
    },
    {
      id: "artisanats-regionaux",
      name: "Arti regionali",
      slug: "artisanats-regionaux",
      subcategories: [
        { id: "mozabite", name: "artigianato mozabita", slug: "mozabite" },
        { id: "touareg", name: "artigianato tuareg", slug: "touareg" },
        { id: "berbere", name: "artigianato berbero", slug: "berbere" }
      ]
    },
    {
      id: "tissage-tapis",
      name: "Tessitura e tappeti",
      slug: "tissage-tapis",
      subcategories: [
        { id: "tissage-traditionnel", name: "tessitura tradizionale", slug: "tissage-traditionnel" },
        { id: "tissage-kabyle", name: "tessitura kabyle", slug: "tissage-kabyle" },
        { id: "tapis-kilims", name: "tappeti e kilim", slug: "tapis-kilims" },
        { id: "tapis-chaouis", name: "tappeti chaoui", slug: "tapis-chaouis" },
        { id: "tapis-mozabites", name: "tappeti mozabiti", slug: "tapis-mozabites" },
        { id: "tissages-sahariens", name: "tessiture sahariane", slug: "tissages-sahariens" },
        { id: "accessoires-tisses", name: "accessori tessuti", slug: "accessoires-tisses" }
      ]
    },
    {
      id: "bijoux-metaux",
      name: "Gioielli e metalli",
      slug: "bijoux-metaux",
      subcategories: [
        { id: "bijoux-argent", name: "gioielli in argento", slug: "bijoux-argent" },
        { id: "bijoux-kabyles", name: "gioielli kabyle", slug: "bijoux-kabyles" },
        { id: "bijoux-touareg", name: "gioielli tuareg", slug: "bijoux-touareg" },
        { id: "croix-agadez", name: "croce di Agadez (tanaghelt)", slug: "croix-agadez" },
        { id: "talhakimt", name: "Talhakimt", slug: "talhakimt" },
        { id: "objets-cuivre", name: "oggetti in rame", slug: "objets-cuivre" }
      ]
    },
    {
      id: "broderie-vetements",
      name: "Ricamo e abiti tradizionali",
      slug: "broderie-vetements",
      subcategories: [
        { id: "karakou", name: "karakou", slug: "karakou" },
        { id: "gandoura", name: "gandoura", slug: "gandoura" },
        { id: "burnous", name: "burnous", slug: "burnous" },
        { id: "blousa", name: "blousa", slug: "blousa" },
        { id: "tenue-kabyle", name: "abito kabyle", slug: "tenue-kabyle" },
        { id: "tenue-chaouie", name: "abito chaoui", slug: "tenue-chaouie" },
        { id: "tenues-targuies", name: "abiti tuareg", slug: "tenues-targuies" },
        { id: "gandoura-saharienne", name: "gandoura sahariana", slug: "gandoura-saharienne" },
        { id: "broderies-artisanales", name: "ricami artigianali", slug: "broderies-artisanales" },
        { id: "confection-sur-mesure", name: "confezione su misura", slug: "confection-sur-mesure" }
      ]
    },
    {
      id: "cuir-maroquinerie",
      name: "Pelle e pelletteria",
      slug: "cuir-maroquinerie",
      subcategories: [
        { id: "babouches", name: "babucce", slug: "babouches" },
        { id: "sandales-artisanales", name: "sandali artigianali", slug: "sandales-artisanales" },
        { id: "articles-cuir", name: "articoli in pelle", slug: "articles-cuir" },
        { id: "maroquinerie-artisanale", name: "pelletteria artigianale", slug: "maroquinerie-artisanale" }
      ]
    },
    {
      id: "bois-sculpture",
      name: "Legno e scultura",
      slug: "bois-sculpture",
      subcategories: [
        { id: "objets-bois", name: "oggetti in legno", slug: "objets-bois" },
        { id: "sculpture-bois", name: "intaglio del legno", slug: "sculpture-bois" },
        { id: "lampes-artisanales", name: "lampade artigianali", slug: "lampes-artisanales" },
        { id: "coffres-anciens", name: "bauli antichi", slug: "coffres-anciens" },
        { id: "mobilier-traditionnel", name: "arredi tradizionali", slug: "mobilier-traditionnel" }
      ]
    },
    {
      id: "vannerie-fibres",
      name: "Cesteria e fibre naturali",
      slug: "vannerie-fibres",
      subcategories: [
        { id: "vannerie", name: "cesteria", slug: "vannerie" },
        { id: "paniers-tresses", name: "cesti intrecciati", slug: "paniers-tresses" },
        { id: "nattes-traditionnelles", name: "stuoie tradizionali", slug: "nattes-traditionnelles" },
        { id: "objets-alfa-palmier", name: "oggetti in alfa e palma", slug: "objets-alfa-palmier" }
      ]
    },
    {
      id: "decoration-berbere",
      name: "Decorazioni e oggetti berberi",
      slug: "decoration-berbere",
      subcategories: [
        { id: "decorations-murales", name: "decorazioni murali tradizionali", slug: "decorations-murales" },
        { id: "objets-decoratifs-berberes", name: "oggetti decorativi berberi", slug: "objets-decoratifs-berberes" },
        { id: "tableaux-traditionnels", name: "quadri tradizionali", slug: "tableaux-traditionnels" },
        { id: "calligraphie-artistique", name: "calligrafia artistica", slug: "calligraphie-artistique" },
        { id: "calligraphie-tifinagh", name: "calligrafia tifinagh", slug: "calligraphie-tifinagh" },
        { id: "souvenirs-touristes", name: "souvenir per turisti", slug: "souvenirs-touristes" },
        { id: "artisanat-contemporain", name: "artigianato contemporaneo ispirato al patrimonio", slug: "artisanat-contemporain" }
      ]
    },
    {
      id: "instruments-musique",
      name: "Strumenti musicali artigianali",
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
      name: "Prodotti naturali artigianali",
      slug: "produits-naturels",
      subcategories: [
        { id: "huile-olive-artisanale", name: "olio d’oliva", slug: "huile-olive-artisanale" },
        { id: "henne", name: "henné", slug: "henne" },
        { id: "savon-artisanal", name: "sapone artigianale", slug: "savon-artisanal" },
        { id: "encens", name: "incenso", slug: "encens" },
        { id: "melasse", name: "melassa", slug: "melasse" }
      ]
    },
    {
      id: "articles-culturels",
      name: "Articoli culturali e patrimoniali",
      slug: "articles-culturels",
      subcategories: [
        { id: "objets-culturels", name: "oggetti culturali", slug: "objets-culturels" }
      ]
    },
    {
      id: "services-coutumes",
      name: "Servizi e usanze tradizionali",
      slug: "services-coutumes",
      subcategories: [
        { id: "henne-artistique", name: "henné artistico", slug: "henne-artistique" },
        { id: "tatouage-traditionnel", name: "tatuaggio tradizionale", slug: "tatouage-traditionnel" },
        { id: "trousseau-mariage", name: "preparazione del corredo nuziale (cheddat)", slug: "trousseau-mariage" },
        { id: "location-tenues", name: "noleggio abiti tradizionali", slug: "location-tenues" },
        { id: "ceremonies-traditionnelles", name: "preparazione di cerimonie tradizionali", slug: "ceremonies-traditionnelles" },
        { id: "musique-folklorique", name: "musica folkloristica (chaoui, kabyle, tuareg, gnawa)", slug: "musique-folklorique" },
        { id: "danse-traditionnelle", name: "danza tradizionale", slug: "danse-traditionnelle" },
        { id: "patisserie-traditionnelle-services", name: "servizi di pasticceria tradizionale", slug: "patisserie-traditionnelle-services" },
        { id: "decoration-fetes", name: "decorazioni tradizionali per feste e matrimoni", slug: "decoration-fetes" },
        { id: "repas-traditionnels", name: "preparazione di pasti tradizionali", slug: "repas-traditionnels" },
        { id: "organisation-mariages", name: "organizzazione matrimoni tradizionali algerini", slug: "organisation-mariages" },
        { id: "accessoires-fetes", name: "fornitura accessori per feste", slug: "accessoires-fetes" },
        { id: "broderie-personnalisee", name: "ricamo personalizzato", slug: "broderie-personnalisee" },
        { id: "couture-artisanale", name: "cucito artigianale", slug: "couture-artisanale" },
        { id: "cadeaux-personnalises", name: "regali personalizzati", slug: "cadeaux-personnalises" },
        { id: "ateliers-apprentissage", name: "laboratori (ceramica, tessitura, incisione)", slug: "ateliers-apprentissage" },
        { id: "transmission-coutumes", name: "trasmissione delle usanze locali", slug: "transmission-coutumes" },
        { id: "initiation-arts", name: "iniziazione alle arti tradizionali", slug: "initiation-arts" },
        { id: "ceremonies-religieuses", name: "cerimonie religiose e culturali", slug: "ceremonies-religieuses" }
      ]
    },
    {
      id: "produits-locaux",
      name: "Prodotti locali algerini",
      slug: "produits-locaux",
      subcategories: [
        { id: "huile-olive-terroir", name: "olio d’oliva del terroir", slug: "huile-olive-terroir" },
        { id: "dattes-deglet-nour", name: "datteri Deglet Nour", slug: "dattes-deglet-nour" },
        { id: "dattes-fourrees", name: "datteri farciti artigianali", slug: "dattes-fourrees" },
        { id: "miel-naturel", name: "miele naturale", slug: "miel-naturel" },
        { id: "couscous-traditionnel", name: "couscous tradizionale", slug: "couscous-traditionnel" },
        { id: "semoule-artisanale", name: "semola artigianale", slug: "semoule-artisanale" },
        { id: "epices-locales", name: "spezie locali", slug: "epices-locales" },
        { id: "olives-artisanales", name: "olive artigianali", slug: "olives-artisanales" },
        { id: "conserves-traditionnelles", name: "conserve tradizionali", slug: "conserves-traditionnelles" },
        { id: "harissa-maison", name: "harissa casalinga", slug: "harissa-maison" },
        { id: "fromages-locaux", name: "formaggi locali", slug: "fromages-locaux" },
        { id: "smen", name: "burro tradizionale (smen)", slug: "smen" },
        { id: "confitures-artisanales", name: "confetture artigianali", slug: "confitures-artisanales" },
        { id: "fruits-secs", name: "frutta secca", slug: "fruits-secs" },
        { id: "plantes-medicinales", name: "piante medicinali", slug: "plantes-medicinales" },
        { id: "herbes-aromatiques", name: "erbe aromatiche", slug: "herbes-aromatiques" },
        { id: "the-saharien", name: "tè sahariano", slug: "the-saharien" },
        { id: "cafe-algerien", name: "caffè algerino", slug: "cafe-algerien" },
        { id: "farine-traditionnelle", name: "farina tradizionale", slug: "farine-traditionnelle" },
        { id: "pates-artisanales", name: "pasta artigianale", slug: "pates-artisanales" },
        { id: "produits-apicoles", name: "prodotti apistici", slug: "produits-apicoles" },
        { id: "huiles-vegetales", name: "oli vegetali naturali", slug: "huiles-vegetales" },
        { id: "produits-sahariens", name: "prodotti del terroir sahariano", slug: "produits-sahariens" },
        { id: "produits-agricoles", name: "prodotti agricoli locali", slug: "produits-agricoles" },
        { id: "conserves-bio", name: "conserve biologiche", slug: "conserves-bio" },
        { id: "vinaigre-naturel", name: "aceto naturale", slug: "vinaigre-naturel" },
        { id: "caroube", name: "prodotti a base di carruba", slug: "caroube" },
        { id: "sirop-dattes", name: "sciroppo di datteri (rob)", slug: "sirop-dattes" },
        { id: "gateaux-dattes", name: "dolci ai datteri artigianali", slug: "gateaux-dattes" }
      ]
    },
    {
      id: "plats-traditionnels",
      name: "Piatti tradizionali algerini",
      slug: "plats-traditionnels",
      subcategories: [
        { id: "couscous-regions", name: "couscous (kabyle, chaoui, costantino, oranese)", slug: "couscous-regions" },
        { id: "rechta", name: "rechta", slug: "rechta" },
        { id: "chakhchoukha", name: "chakhchoukha", slug: "chakhchoukha" },
        { id: "trid", name: "trid", slug: "trid" },
        { id: "dolma", name: "dolma", slug: "dolma" },
        { id: "tajine-zitoune", name: "tajine zitoune", slug: "tajine-zitoune" },
        { id: "tajine-lahlou", name: "tajine dolce", slug: "tajine-lahlou" },
        { id: "chorba-frik", name: "chorba frik", slug: "chorba-frik" },
        { id: "hrira", name: "hrira", slug: "hrira" },
        { id: "lham-lahlou", name: "lham lahlou", slug: "lham-lahlou" },
        { id: "bourek-sale", name: "bourek", slug: "bourek-sale" },
        { id: "mhadjeb", name: "mhadjeb", slug: "mhadjeb" },
        { id: "kesra", name: "kesra", slug: "kesra" },
        { id: "baghrir-sale", name: "baghrir salato", slug: "baghrir-sale" },
        { id: "chtitha-djedj", name: "chtitha djedj", slug: "chtitha-djedj" },
        { id: "chtitha-kofta", name: "chtitha kofta", slug: "chtitha-kofta" },
        { id: "berkoukes", name: "berkoukes", slug: "berkoukes" },
        { id: "mahjouba", name: "mahjouba", slug: "mahjouba" },
        { id: "seffa", name: "seffa", slug: "seffa" },
        { id: "plats-sahariens", name: "piatti sahariani", slug: "plats-sahariens" },
        { id: "plats-kabyles", name: "piatti kabyle", slug: "plats-kabyles" },
        { id: "plats-chaouis", name: "piatti chaoui", slug: "plats-chaouis" },
        { id: "plats-oranais", name: "piatti oranese", slug: "plats-oranais" },
        { id: "plats-constantinois", name: "piatti costantinesi", slug: "plats-constantinois" },
        { id: "grillades", name: "grigliate tradizionali", slug: "grillades" },
        { id: "poissons-algeriens", name: "pesce alla algerina", slug: "poissons-algeriens" },
        { id: "plats-mijotes", name: "piatti in umido", slug: "plats-mijotes" },
        { id: "legumes-terroir", name: "piatti con verdure del territorio", slug: "legumes-terroir" },
        { id: "tajines-regionaux", name: "tajine regionali", slug: "tajines-regionaux" },
        { id: "specialites-familiales", name: "specialità familiari tradizionali", slug: "specialites-familiales" }
        ,{ id: "taguella", name: "taguella (pane tuareg)", slug: "taguella" }
      ]
    },
    {
      id: "patisseries-traditionnelles",
      name: "Pasticceria tradizionale algerina",
      slug: "patisseries-traditionnelles",
      subcategories: [
        { id: "makroud", name: "makroud", slug: "makroud" },
        { id: "baklawa", name: "baklawa", slug: "baklawa" },
        { id: "kalb-ellouz", name: "kalb ellouz", slug: "kalb-ellouz" },
        { id: "dziriette", name: "dziriette", slug: "dziriette" },
        { id: "tcharek-el-ariane", name: "tcharek el ariane", slug: "tcharek-el-ariane" },
        { id: "griouech", name: "griouech", slug: "griouech" },
        { id: "samsa", name: "samsa", slug: "samsa" },
        { id: "msemen-sucre", name: "msemen dolce", slug: "msemen-sucre" },
        { id: "baghrir-miel", name: "baghrir al miele", slug: "baghrir-miel" },
        { id: "bourek-hlou", name: "bourek hlou", slug: "bourek-hlou" },
        { id: "tamina", name: "tamina", slug: "tamina" },
        { id: "zlabia", name: "zlabia", slug: "zlabia" },
        { id: "khfaf", name: "khfaf", slug: "khfaf" },
        { id: "mlawi-miel", name: "mlawi al miele", slug: "mlawi-miel" },
        { id: "khobz-el-bey", name: "khobz el bey", slug: "khobz-el-bey" },
        { id: "boussou-la-tmessou", name: "boussou la tmessou", slug: "boussou-la-tmessou" },
        { id: "mouna-oranaise", name: "mouna oranaise", slug: "mouna-oranaise" },
        { id: "mkhabaz", name: "mkhabaz", slug: "mkhabaz" },
        { id: "halwat-tabaa", name: "halwat tabaa", slug: "halwat-tabaa" },
        { id: "harcha-sucree", name: "harcha dolce", slug: "harcha-sucree" },
        { id: "kaak-annaba", name: "kaak annaba", slug: "kaak-annaba" },
        { id: "kaak-oranais", name: "kaak oranais", slug: "kaak-oranais" },
        { id: "gateaux-secs", name: "biscotti secchi tradizionali", slug: "gateaux-secs" },
        { id: "gateaux-miel", name: "dolci al miele", slug: "gateaux-miel" },
        { id: "gateaux-amandes", name: "dolci alle mandorle", slug: "gateaux-amandes" },
        { id: "patisseries-kabyles", name: "pasticceria kabyle", slug: "patisseries-kabyles" },
        { id: "patisseries-chaouies", name: "pasticceria chaoui", slug: "patisseries-chaouies" },
        { id: "patisseries-sahariennes", name: "pasticceria sahariana", slug: "patisseries-sahariennes" },
        { id: "kaab-ghzal", name: "kaab ghzal", slug: "kaab-ghzal" },
        { id: "arayech", name: "arayech", slug: "arayech" },
        { id: "bradj", name: "bradj", slug: "bradj" },
        { id: "ghribia", name: "ghribia", slug: "ghribia" },
        { id: "sables-artisanaux", name: "biscotti artigianali", slug: "sables-artisanaux" },
        { id: "assortiments-festifs", name: "assortimenti festivi tradizionali", slug: "assortiments-festifs" }
      ]
    }
  ]
};