import { MenuCategory } from "@/data/categoryTypes";

export const artisanatTraditionnelAlgerienEs: MenuCategory = {
  id: "artisanat-traditionnel-algerien",
  name: "Artesanía Tradicional Argelina",
  slug: "artisanat-traditionnel-algerien",
  
  subcategories: [
    {
      id: "poterie-ceramique",
      name: "Cerámica y alfarería",
      slug: "poterie-ceramique",
      subcategories: [
        { id: "poterie-traditionnelle", name: "alfarería tradicional", slug: "poterie-traditionnelle" },
        { id: "poterie-kabyle", name: "alfarería cabila", slug: "poterie-kabyle" },
        { id: "poterie-chaouie", name: "alfarería chaoui", slug: "poterie-chaouie" },
        { id: "ceramiques-decoratives", name: "cerámicas decorativas", slug: "ceramiques-decoratives" }
      ]
    },
    {
      id: "artisanats-regionaux",
      name: "Artesanías regionales",
      slug: "artisanats-regionaux",
      subcategories: [
        { id: "mozabite", name: "artesanía mozabita", slug: "mozabite" },
        { id: "touareg", name: "artesanía tuareg", slug: "touareg" },
        { id: "berbere", name: "artesanía bereber", slug: "berbere" }
      ]
    },
    {
      id: "tissage-tapis",
      name: "Tejido y alfombras",
      slug: "tissage-tapis",
      subcategories: [
        { id: "tissage-traditionnel", name: "tejido tradicional", slug: "tissage-traditionnel" },
        { id: "tissage-kabyle", name: "tejido cabila", slug: "tissage-kabyle" },
        { id: "tapis-kilims", name: "alfombras y kilims", slug: "tapis-kilims" },
        { id: "tapis-chaouis", name: "alfombras chaoui", slug: "tapis-chaouis" },
        { id: "tapis-mozabites", name: "alfombras mozabitas", slug: "tapis-mozabites" },
        { id: "tissages-sahariens", name: "tejidos del Sahara", slug: "tissages-sahariens" },
        { id: "accessoires-tisses", name: "accesorios tejidos", slug: "accessoires-tisses" }
      ]
    },
    {
      id: "bijoux-metaux",
      name: "Joyas y metales",
      slug: "bijoux-metaux",
      subcategories: [
        { id: "bijoux-argent", name: "joyas de plata", slug: "bijoux-argent" },
        { id: "bijoux-kabyles", name: "joyas cabiles", slug: "bijoux-kabyles" },
        { id: "bijoux-touareg", name: "joyas tuareg", slug: "bijoux-touareg" },
        { id: "croix-agadez", name: "cruz de Agadez (tanaghelt)", slug: "croix-agadez" },
        { id: "talhakimt", name: "Talhakimt", slug: "talhakimt" },
        { id: "objets-cuivre", name: "objetos de cobre", slug: "objets-cuivre" }
      ]
    },
    {
      id: "broderie-vetements",
      name: "Bordado y vestimenta tradicional",
      slug: "broderie-vetements",
      subcategories: [
        { id: "karakou", name: "karakou", slug: "karakou" },
        { id: "gandoura", name: "gandoura", slug: "gandoura" },
        { id: "burnous", name: "burnous", slug: "burnous" },
        { id: "blousa", name: "blousa", slug: "blousa" },
        { id: "tenue-kabyle", name: "atuendo cabilio", slug: "tenue-kabyle" },
        { id: "tenue-chaouie", name: "atuendo chaoui", slug: "tenue-chaouie" },
        { id: "tenues-targuies", name: "atuendos tuareg", slug: "tenues-targuies" },
        { id: "gandoura-saharienne", name: "gandoura sahariana", slug: "gandoura-saharienne" },
        { id: "broderies-artisanales", name: "bordados artesanales", slug: "broderies-artisanales" },
        { id: "confection-sur-mesure", name: "confección a medida", slug: "confection-sur-mesure" }
      ]
    },
    {
      id: "cuir-maroquinerie",
      name: "Cuero y marroquinería",
      slug: "cuir-maroquinerie",
      subcategories: [
        { id: "babouches", name: "babuchas", slug: "babouches" },
        { id: "sandales-artisanales", name: "sandalias artesanales", slug: "sandales-artisanales" },
        { id: "articles-cuir", name: "artículos de cuero", slug: "articles-cuir" },
        { id: "maroquinerie-artisanale", name: "marroquinería artesanal", slug: "maroquinerie-artisanale" }
      ]
    },
    {
      id: "bois-sculpture",
      name: "Madera y escultura",
      slug: "bois-sculpture",
      subcategories: [
        { id: "objets-bois", name: "objetos de madera", slug: "objets-bois" },
        { id: "sculpture-bois", name: "talla en madera", slug: "sculpture-bois" },
        { id: "lampes-artisanales", name: "lámparas artesanales", slug: "lampes-artisanales" },
        { id: "coffres-anciens", name: "baúles antiguos", slug: "coffres-anciens" },
        { id: "mobilier-traditionnel", name: "mobiliario tradicional", slug: "mobilier-traditionnel" }
      ]
    },
    {
      id: "vannerie-fibres",
      name: "Cestería y fibras naturales",
      slug: "vannerie-fibres",
      subcategories: [
        { id: "vannerie", name: "cestería", slug: "vannerie" },
        { id: "paniers-tresses", name: "cestas tejidas", slug: "paniers-tresses" },
        { id: "nattes-traditionnelles", name: "esteras tradicionales", slug: "nattes-traditionnelles" },
        { id: "objets-alfa-palmier", name: "objetos de alfa y palmera", slug: "objets-alfa-palmier" }
      ]
    },
    {
      id: "decoration-berbere",
      name: "Decoración y objetos bereberes",
      slug: "decoration-berbere",
      subcategories: [
        { id: "decorations-murales", name: "decoración mural tradicional", slug: "decorations-murales" },
        { id: "objets-decoratifs-berberes", name: "objetos decorativos bereberes", slug: "objets-decoratifs-berberes" },
        { id: "tableaux-traditionnels", name: "cuadros tradicionales", slug: "tableaux-traditionnels" },
        { id: "calligraphie-artistique", name: "caligrafía artística", slug: "calligraphie-artistique" },
        { id: "calligraphie-tifinagh", name: "caligrafía tifinagh", slug: "calligraphie-tifinagh" },
        { id: "souvenirs-touristes", name: "souvenirs para turistas", slug: "souvenirs-touristes" },
        { id: "artisanat-contemporain", name: "artesanía contemporánea inspirada en el patrimonio", slug: "artisanat-contemporain" }
      ]
    },
    {
      id: "instruments-musique",
      name: "Instrumentos musicales artesanales",
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
      name: "Productos naturales artesanales",
      slug: "produits-naturels",
      subcategories: [
        { id: "huile-olive-artisanale", name: "aceite de oliva", slug: "huile-olive-artisanale" },
        { id: "henne", name: "henna", slug: "henne" },
        { id: "savon-artisanal", name: "jabón artesanal", slug: "savon-artisanal" },
        { id: "encens", name: "incienso", slug: "encens" },
        { id: "melasse", name: "melaza", slug: "melasse" }
      ]
    },
    {
      id: "articles-culturels",
      name: "Artículos culturales y patrimoniales",
      slug: "articles-culturels",
      subcategories: [
        { id: "objets-culturels", name: "objetos culturales", slug: "objets-culturels" }
      ]
    },
    {
      id: "services-coutumes",
      name: "Servicios y costumbres tradicionales",
      slug: "services-coutumes",
      subcategories: [
        { id: "henne-artistique", name: "henna artístico", slug: "henne-artistique" },
        { id: "tatouage-traditionnel", name: "tatuaje tradicional", slug: "tatouage-traditionnel" },
        { id: "trousseau-mariage", name: "preparación del ajuar de boda (cheddat)", slug: "trousseau-mariage" },
        { id: "location-tenues", name: "alquiler de vestimenta tradicional", slug: "location-tenues" },
        { id: "ceremonies-traditionnelles", name: "preparación de ceremonias tradicionales", slug: "ceremonies-traditionnelles" },
        { id: "musique-folklorique", name: "música folclórica (chaoui, cabila, tuareg, gnawa)", slug: "musique-folklorique" },
        { id: "danse-traditionnelle", name: "danza tradicional", slug: "danse-traditionnelle" },
        { id: "patisserie-traditionnelle-services", name: "servicios de repostería tradicional", slug: "patisserie-traditionnelle-services" },
        { id: "decoration-fetes", name: "decoración tradicional para fiestas y bodas", slug: "decoration-fetes" },
        { id: "repas-traditionnels", name: "preparación de comidas tradicionales", slug: "repas-traditionnels" },
        { id: "organisation-mariages", name: "organización de bodas tradicionales argelinas", slug: "organisation-mariages" },
        { id: "accessoires-fetes", name: "suministro de accesorios para fiestas", slug: "accessoires-fetes" },
        { id: "broderie-personnalisee", name: "bordado personalizado", slug: "broderie-personnalisee" },
        { id: "couture-artisanale", name: "costura artesanal", slug: "couture-artisanale" },
        { id: "cadeaux-personnalises", name: "regalos personalizados", slug: "cadeaux-personnalises" },
        { id: "ateliers-apprentissage", name: "talleres de aprendizaje (cerámica, tejido, grabado)", slug: "ateliers-apprentissage" },
        { id: "transmission-coutumes", name: "transmisión de costumbres locales", slug: "transmission-coutumes" },
        { id: "initiation-arts", name: "iniciación a las artes tradicionales", slug: "initiation-arts" },
        { id: "ceremonies-religieuses", name: "ceremonias religiosas y culturales", slug: "ceremonies-religieuses" }
      ]
    },
    {
      id: "produits-locaux",
      name: "Productos locales argelinos",
      slug: "produits-locaux",
      subcategories: [
        { id: "huile-olive-terroir", name: "aceite de oliva de terroir", slug: "huile-olive-terroir" },
        { id: "dattes-deglet-nour", name: "dátiles Deglet Nour", slug: "dattes-deglet-nour" },
        { id: "dattes-fourrees", name: "dátiles rellenos artesanales", slug: "dattes-fourrees" },
        { id: "miel-naturel", name: "miel natural", slug: "miel-naturel" },
        { id: "couscous-traditionnel", name: "cuscús tradicional", slug: "couscous-traditionnel" },
        { id: "semoule-artisanale", name: "sémola artesanal", slug: "semoule-artisanale" },
        { id: "epices-locales", name: "especias locales", slug: "epices-locales" },
        { id: "olives-artisanales", name: "aceitunas artesanales", slug: "olives-artisanales" },
        { id: "conserves-traditionnelles", name: "conservas tradicionales", slug: "conserves-traditionnelles" },
        { id: "harissa-maison", name: "harissa casera", slug: "harissa-maison" },
        { id: "fromages-locaux", name: "quesos locales", slug: "fromages-locaux" },
        { id: "smen", name: "mantequilla tradicional (smen)", slug: "smen" },
        { id: "confitures-artisanales", name: "mermeladas artesanales", slug: "confitures-artisanales" },
        { id: "fruits-secs", name: "frutos secos", slug: "fruits-secs" },
        { id: "plantes-medicinales", name: "plantas medicinales", slug: "plantes-medicinales" },
        { id: "herbes-aromatiques", name: "hierbas aromáticas", slug: "herbes-aromatiques" },
        { id: "the-saharien", name: "té sahariano", slug: "the-saharien" },
        { id: "cafe-algerien", name: "café argelino", slug: "cafe-algerien" },
        { id: "farine-traditionnelle", name: "harina tradicional", slug: "farine-traditionnelle" },
        { id: "pates-artisanales", name: "pastas artesanales", slug: "pates-artisanales" },
        { id: "produits-apicoles", name: "productos apícolas", slug: "produits-apicoles" },
        { id: "huiles-vegetales", name: "aceites vegetales naturales", slug: "huiles-vegetales" },
        { id: "produits-sahariens", name: "productos del terroir sahariano", slug: "produits-sahariens" },
        { id: "produits-agricoles", name: "productos agrícolas locales", slug: "produits-agricoles" },
        { id: "conserves-bio", name: "conservas orgánicas", slug: "conserves-bio" },
        { id: "vinaigre-naturel", name: "vinagre natural", slug: "vinaigre-naturel" },
        { id: "caroube", name: "productos de algarrobo", slug: "caroube" },
        { id: "sirop-dattes", name: "jarabe de dátiles (rob)", slug: "sirop-dattes" },
        { id: "gateaux-dattes", name: "pasteles de dátiles artesanales", slug: "gateaux-dattes" }
      ]
    },
    {
      id: "plats-traditionnels",
      name: "Platos tradicionales argelinos",
      slug: "plats-traditionnels",
      subcategories: [
        { id: "couscous-regions", name: "cuscús (cabila, chaoui, constantina, oran)", slug: "couscous-regions" },
        { id: "rechta", name: "rechta", slug: "rechta" },
        { id: "chakhchoukha", name: "chakhchoukha", slug: "chakhchoukha" },
        { id: "trid", name: "trid", slug: "trid" },
        { id: "dolma", name: "dolma", slug: "dolma" },
        { id: "tajine-zitoune", name: "tajín zitoune", slug: "tajine-zitoune" },
        { id: "tajine-lahlou", name: "tajín dulce", slug: "tajine-lahlou" },
        { id: "chorba-frik", name: "chorba frik", slug: "chorba-frik" },
        { id: "hrira", name: "hrira", slug: "hrira" },
        { id: "lham-lahlou", name: "lham lahlou", slug: "lham-lahlou" },
        { id: "bourek-sale", name: "bourek", slug: "bourek-sale" },
        { id: "mhadjeb", name: "mhadjeb", slug: "mhadjeb" },
        { id: "kesra", name: "kesra", slug: "kesra" },
        { id: "baghrir-sale", name: "baghrir salado", slug: "baghrir-sale" },
        { id: "chtitha-djedj", name: "chtitha djedj", slug: "chtitha-djedj" },
        { id: "chtitha-kofta", name: "chtitha kofta", slug: "chtitha-kofta" },
        { id: "berkoukes", name: "berkoukes", slug: "berkoukes" },
        { id: "mahjouba", name: "mahjouba", slug: "mahjouba" },
        { id: "seffa", name: "seffa", slug: "seffa" },
        { id: "plats-sahariens", name: "platos saharianos", slug: "plats-sahariens" },
        { id: "plats-kabyles", name: "platos cabiles", slug: "plats-kabyles" },
        { id: "plats-chaouis", name: "platos chaoui", slug: "plats-chaouis" },
        { id: "plats-oranais", name: "platos oraneses", slug: "plats-oranais" },
        { id: "plats-constantinois", name: "platos de constantina", slug: "plats-constantinois" },
        { id: "grillades", name: "parrilladas tradicionales", slug: "grillades" },
        { id: "poissons-algeriens", name: "pescados al estilo argelino", slug: "poissons-algeriens" },
        { id: "plats-mijotes", name: "guisos", slug: "plats-mijotes" },
        { id: "legumes-terroir", name: "platos con verduras del terroir", slug: "legumes-terroir" },
        { id: "tajines-regionaux", name: "tajines regionales", slug: "tajines-regionaux" },
        { id: "specialites-familiales", name: "especialidades familiares tradicionales", slug: "specialites-familiales" }
        ,{ id: "taguella", name: "taguella (pan tuareg)", slug: "taguella" }
      ]
    },
    {
      id: "patisseries-traditionnelles",
      name: "Repostería tradicional argelina",
      slug: "patisseries-traditionnelles",
      subcategories: [
        { id: "makroud", name: "makroud", slug: "makroud" },
        { id: "baklawa", name: "baklawa", slug: "baklawa" },
        { id: "kalb-ellouz", name: "kalb ellouz", slug: "kalb-ellouz" },
        { id: "dziriette", name: "dziriette", slug: "dziriette" },
        { id: "tcharek-el-ariane", name: "tcharek el ariane", slug: "tcharek-el-ariane" },
        { id: "griouech", name: "griouech", slug: "griouech" },
        { id: "samsa", name: "samsa", slug: "samsa" },
        { id: "msemen-sucre", name: "msemen dulce", slug: "msemen-sucre" },
        { id: "baghrir-miel", name: "baghrir con miel", slug: "baghrir-miel" },
        { id: "bourek-hlou", name: "bourek hlou", slug: "bourek-hlou" },
        { id: "tamina", name: "tamina", slug: "tamina" },
        { id: "zlabia", name: "zlabia", slug: "zlabia" },
        { id: "khfaf", name: "khfaf", slug: "khfaf" },
        { id: "mlawi-miel", name: "mlawi con miel", slug: "mlawi-miel" },
        { id: "khobz-el-bey", name: "khobz el bey", slug: "khobz-el-bey" },
        { id: "boussou-la-tmessou", name: "boussou la tmessou", slug: "boussou-la-tmessou" },
        { id: "mouna-oranaise", name: "mouna oranaise", slug: "mouna-oranaise" },
        { id: "mkhabaz", name: "mkhabaz", slug: "mkhabaz" },
        { id: "halwat-tabaa", name: "halwat tabaa", slug: "halwat-tabaa" },
        { id: "harcha-sucree", name: "harcha dulce", slug: "harcha-sucree" },
        { id: "kaak-annaba", name: "kaak annaba", slug: "kaak-annaba" },
        { id: "kaak-oranais", name: "kaak oranais", slug: "kaak-oranais" },
        { id: "gateaux-secs", name: "pastas secas tradicionales", slug: "gateaux-secs" },
        { id: "gateaux-miel", name: "pasteles con miel", slug: "gateaux-miel" },
        { id: "gateaux-amandes", name: "pasteles de almendra", slug: "gateaux-amandes" },
        { id: "patisseries-kabyles", name: "repostería cabila", slug: "patisseries-kabyles" },
        { id: "patisseries-chaouies", name: "repostería chaoui", slug: "patisseries-chaouies" },
        { id: "patisseries-sahariennes", name: "repostería sahariana", slug: "patisseries-sahariennes" },
        { id: "kaab-ghzal", name: "kaab ghzal", slug: "kaab-ghzal" },
        { id: "arayech", name: "arayech", slug: "arayech" },
        { id: "bradj", name: "bradj", slug: "bradj" },
        { id: "ghribia", name: "ghribia", slug: "ghribia" },
        { id: "sables-artisanaux", name: "galletas artesanales", slug: "sables-artisanaux" },
        { id: "assortiments-festifs", name: "surtidos festivos tradicionales", slug: "assortiments-festifs" }
      ]
    }
  ]
};