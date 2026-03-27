import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Armchair } from "lucide-react";

export const mobilierEtDecorationEs: MenuCategory = {
  id: "mobilier-et-decoration",
  name: "Muebles y Decoración",
  slug: "mobilier-et-decoration",
  icon: <Armchair className="w-4 h-4" />,
  subcategories: [
    {
      id: "mobilier-salon-sejour",
      name: "Muebles de salón",
      slug: "mobilier-salon-sejour",
      subcategories: [
        {
          id: "canapes",
          name: "Sofás",
          slug: "canapes",
          subcategories: [
            { id: "angle", name: "Esquinero", slug: "angle" },
            { id: "droit", name: "Estándar", slug: "droit" },
            { id: "convertible", name: "Sofá cama", slug: "convertible" },
            { id: "modulaires", name: "Modulares", slug: "modulaires" }
          ]
        },
        {
          id: "fauteuils-poufs",
          name: "Sillones y pufs",
          slug: "fauteuils-poufs",
          subcategories: [
            { id: "fauteuils", name: "Sillones", slug: "fauteuils" },
            { id: "poufs", name: "Pufs", slug: "poufs" }
          ]
        },
        {
          id: "tables-basses",
          name: "Mesas de centro",
          slug: "tables-basses",
          subcategories: [
            { id: "bois", name: "Madera", slug: "bois" },
            { id: "verre", name: "Vidrio", slug: "verre" },
            { id: "metal", name: "Metal", slug: "metal" }
          ]
        },
        { id: "meubles-tv", name: "Muebles de TV", slug: "meubles-tv" },
        { id: "etagères-bibliotheques", name: "Estanterías y librerías", slug: "etageres-bibliotheques" },
        { id: "meubles-rangement", name: "Muebles de almacenamiento", slug: "meubles-rangement" },
        { id: "consoles-entree", name: "Consolas de entrada", slug: "consoles-entree" },
        { id: "banquettes", name: "Banquetas", slug: "banquettes" },
        { id: "paravents", name: "Biombos", slug: "paravents" },
        { id: "tables-d-appoint", name: "Mesas auxiliares", slug: "tables-d-appoint" }
      ]
    },
    {
      id: "mobilier-chambre",
      name: "Muebles de dormitorio",
      slug: "mobilier-chambre",
      subcategories: [
        {
          id: "lits",
          name: "Camas",
          slug: "lits",
          subcategories: [
            { id: "simple", name: "Individual", slug: "simple" },
            { id: "double", name: "Doble", slug: "double" },
            { id: "king", name: "King", slug: "king" },
            { id: "coffre", name: "Con arcón", slug: "coffre" }
          ]
        },
        {
          id: "sommier-matelas",
          name: "Somier y colchón",
          slug: "sommier-matelas",
          subcategories: [
            { id: "sommier", name: "Somier", slug: "sommier" },
            { id: "matelas", name: "Colchón", slug: "matelas" }
          ]
        },
        { id: "tables-de-chevet", name: "Mesitas de noche", slug: "tables-de-chevet" },
        {
          id: "armoires-penderies",
          name: "Armarios y guardarropas",
          slug: "armoires-penderies",
          subcategories: [
            { id: "armoires", name: "Armarios", slug: "armoires" },
            { id: "penderies", name: "Guardarropas", slug: "penderies" }
          ]
        },
        { id: "commode", name: "Cómodas", slug: "commode" },
        { id: "coiffeuses", name: "Tocadores", slug: "coiffeuses" },
        { id: "bancs-de-lit", name: "Bancos de cama", slug: "bancs-de-lit" },
        { id: "tetes-de-lit", name: "Cabeceros", slug: "tetes-de-lit" },
        { id: "rangement-chaussures", name: "Almacenamiento de zapatos", slug: "rangement-chaussures" }
      ]
    },
    {
      id: "mobilier-salle-a-manger",
      name: "Comedor",
      slug: "mobilier-salle-a-manger",
      subcategories: [
        {
          id: "tables-a-manger",
          name: "Mesas de comedor",
          slug: "tables-a-manger",
          subcategories: [
            { id: "bois", name: "Madera", slug: "bois" },
            { id: "extensibles", name: "Extensibles", slug: "extensibles" },
            { id: "verre", name: "Vidrio", slug: "verre" }
          ]
        },
        {
          id: "chaises-fauteuils-salle-a-manger",
          name: "Sillas y sillones de comedor",
          slug: "chaises-fauteuils-salle-a-manger",
          subcategories: [
            { id: "chaises", name: "Sillas", slug: "chaises" },
            { id: "fauteuils", name: "Sillones", slug: "fauteuils" }
          ]
        },
        {
          id: "buffets-bahuts",
          name: "Buffets y aparadores",
          slug: "buffets-bahuts",
          subcategories: [
            { id: "buffets", name: "Buffets", slug: "buffets" },
            { id: "bahuts", name: "Aparadores", slug: "bahuts" }
          ]
        },
        { id: "vaisseliers", name: "Vitrinas", slug: "vaisseliers" },
        { id: "meubles-bar", name: "Muebles bar", slug: "meubles-bar" },
        {
          id: "tabourets-chaises-hautes",
          name: "Taburetes y sillas altas",
          slug: "tabourets-chaises-hautes",
          subcategories: [
            { id: "tabourets", name: "Taburetes", slug: "tabourets" },
            { id: "chaises-hautes", name: "Sillas altas", slug: "chaises-hautes" }
          ]
        }
      ]
    },
    {
      id: "mobilier-cuisine",
      name: "Muebles de cocina",
      slug: "mobilier-cuisine",
      subcategories: [
        { id: "meubles-cuisine-modulaires", name: "Muebles de cocina modulares", slug: "meubles-cuisine-modulaires" },
        { id: "plans-de-travail", name: "Encimeras", slug: "plans-de-travail" },
        {
          id: "ilots-dessertes-cuisine",
          name: "Islas y carritos de cocina",
          slug: "ilots-dessertes-cuisine",
          subcategories: [
            { id: "ilots", name: "Islas", slug: "ilots" },
            { id: "dessertes", name: "Carritos", slug: "dessertes" }
          ]
        },
        { id: "rangement-cuisine", name: "Almacenamiento de cocina", slug: "rangement-cuisine" },
        {
          id: "chariots-dessertes-roulettes",
          name: "Carritos y mesas con ruedas",
          slug: "chariots-dessertes-roulettes",
          subcategories: [
            { id: "chariots", name: "Carritos", slug: "chariots" },
            { id: "dessertes-a-roulettes", name: "Mesas con ruedas", slug: "dessertes-a-roulettes" }
          ]
        },
        { id: "tabourets-cuisine", name: "Taburetes de cocina", slug: "tabourets-cuisine" },
        {
          id: "racks-epices-etageres-murales",
          name: "Especieros y estantes de pared",
          slug: "racks-epices-etageres-murales",
          subcategories: [
            { id: "racks-epices", name: "Especieros", slug: "racks-epices" },
            { id: "etageres-murales", name: "Estantes de pared", slug: "etageres-murales" }
          ]
        }
      ]
    },
    {
      id: "mobilier-bureau",
      name: "Muebles de oficina",
      slug: "mobilier-bureau",
      subcategories: [
        { id: "bureaux-classiques", name: "Escritorios clásicos", slug: "bureaux-classiques" },
        { id: "bureaux-gaming", name: "Escritorios gaming", slug: "bureaux-gaming" },
        { id: "chaises-bureau-ergonomiques", name: "Sillas de oficina ergonómicas", slug: "chaises-bureau-ergonomiques" },
        {
          id: "caissons-rangements",
          name: "Cajoneras y almacenamiento",
          slug: "caissons-rangements",
          subcategories: [
            { id: "caissons", name: "Cajoneras", slug: "caissons" },
            { id: "rangements", name: "Almacenamiento", slug: "rangements" }
          ]
        },
        { id: "bibliotheques-pro", name: "Bibliotecas profesionales", slug: "bibliotheques-pro" },
        {
          id: "support-ecrans-accessoires-bureau",
          name: "Soportes de monitor y accesorios",
          slug: "support-ecrans-accessoires-bureau",
          subcategories: [
            { id: "support-ecrans", name: "Soportes de monitor", slug: "support-ecrans" },
            { id: "accessoires-bureau", name: "Accesorios de oficina", slug: "accessoires-bureau" }
          ]
        },
        { id: "tables-dessin-architecte", name: "Mesas de dibujo y arquitecto", slug: "tables-dessin-architecte" }
      ]
    },
    {
      id: "mobilier-salle-de-bain",
      name: "Muebles de baño",
      slug: "mobilier-salle-de-bain",
      subcategories: [
        { id: "meubles-sous-vasques", name: "Muebles bajo lavabo", slug: "meubles-sous-vasques" },
        {
          id: "colonnes-rangements-bain",
          name: "Columnas y almacenamiento",
          slug: "colonnes-rangements-bain",
          subcategories: [
            { id: "colonnes", name: "Columnas", slug: "colonnes" },
            { id: "rangements", name: "Almacenamiento", slug: "rangements" }
          ]
        },
        { id: "etageres-murales-bain", name: "Estantes de pared", slug: "etageres-murales-bain" },
        { id: "armoires-miroir", name: "Armarios con espejo", slug: "armoires-miroir" },
        {
          id: "bancs-tabourets-bain",
          name: "Bancos y taburetes",
          slug: "bancs-tabourets-bain",
          subcategories: [
            { id: "bancs", name: "Bancos", slug: "bancs" },
            { id: "tabourets", name: "Taburetes", slug: "tabourets" }
          ]
        },
        { id: "paniers-linge", name: "Cestas para ropa", slug: "paniers-linge" },
        { id: "porte-serviettes", name: "Toalleros", slug: "porte-serviettes" },
        { id: "accessoires-bain", name: "Accesorios de baño", slug: "accessoires-bain" }
      ]
    },
    {
      id: "mobilier-exterieur-jardin",
      name: "Muebles de exterior y jardín",
      slug: "mobilier-exterieur-jardin",
      subcategories: [
        {
          id: "salons-de-jardin",
          name: "Conjuntos de jardín",
          slug: "salons-de-jardin",
          subcategories: [
            { id: "resine", name: "Resina", slug: "resine" },
            { id: "aluminium", name: "Aluminio", slug: "aluminium" },
            { id: "bois", name: "Madera", slug: "bois" }
          ]
        },
        {
          id: "tables-chaises-exterieures",
          name: "Mesas y sillas de exterior",
          slug: "tables-chaises-exterieures",
          subcategories: [
            { id: "tables", name: "Mesas", slug: "tables" },
            { id: "chaises", name: "Sillas", slug: "chaises" }
          ]
        },
        {
          id: "transats-bains-de-soleil",
          name: "Tumbonas y camas solares",
          slug: "transats-bains-de-soleil",
          subcategories: [
            { id: "transats", name: "Tumbonas", slug: "transats" },
            { id: "bains-de-soleil", name: "Camas solares", slug: "bains-de-soleil" }
          ]
        },
        {
          id: "hamacs-balancelles",
          name: "Hamacas y columpios",
          slug: "hamacs-balancelles",
          subcategories: [
            { id: "hamacs", name: "Hamacas", slug: "hamacs" },
            { id: "balancelles", name: "Columpios", slug: "balancelles" }
          ]
        },
        { id: "pergolas", name: "Pérgolas", slug: "pergolas" },
        { id: "parasols", name: "Sombrillas", slug: "parasols" },
        { id: "coffres-rangement-exterieur", name: "Baúles de almacenamiento exterior", slug: "coffres-rangement-exterieur" },
        {
          id: "barbecue-cuisine-exterieure",
          name: "Barbacoas y cocinas exteriores",
          slug: "barbecue-cuisine-exterieure",
          subcategories: [
            { id: "barbecue", name: "Barbacoas", slug: "barbecue" },
            { id: "cuisine-exterieure", name: "Cocinas exteriores", slug: "cuisine-exterieure" }
          ]
        }
      ]
    },
    {
      id: "decoration-murale",
      name: "Decoración de pared",
      slug: "decoration-murale",
      subcategories: [
        {
          id: "tableaux",
          name: "Cuadros",
          slug: "tableaux",
          subcategories: [
            { id: "abstraits", name: "Abstractos", slug: "abstraits" },
            { id: "modernes", name: "Modernos", slug: "modernes" },
            { id: "islamiques", name: "Islámicos", slug: "islamiques" }
          ]
        },
        {
          id: "affiches-posters",
          name: "Carteles y pósters",
          slug: "affiches-posters",
          subcategories: [
            { id: "affiches", name: "Carteles", slug: "affiches" },
            { id: "posters", name: "Pósters", slug: "posters" }
          ]
        },
        { id: "miroirs-decoratifs", name: "Espejos decorativos", slug: "miroirs-decoratifs" },
        { id: "horloges-murales", name: "Relojes de pared", slug: "horloges-murales" },
        { id: "stickers-muraux", name: "Pegatinas de pared", slug: "stickers-muraux" },
        { id: "decorations-metal", name: "Decoraciones de metal", slug: "decorations-metal" },
        { id: "panneaux-muraux-3d", name: "Paneles de pared 3D", slug: "panneaux-muraux-3d" },
        {
          id: "tapisseries-toiles-imprimees",
          name: "Tapices y lienzos impresos",
          slug: "tapisseries-toiles-imprimees",
          subcategories: [
            { id: "tapisseries", name: "Tapices", slug: "tapisseries" },
            { id: "toiles-imprimees", name: "Lienzos impresos", slug: "toiles-imprimees" }
          ]
        }
      ]
    },
    {
      id: "luminaires-eclairage",
      name: "Iluminación",
      slug: "luminaires-eclairage",
      subcategories: [
        { id: "lampes-de-table", name: "Lámparas de mesa", slug: "lampes-de-table" },
        { id: "lampadaires", name: "Lámparas de pie", slug: "lampadaires" },
        {
          id: "suspensions-lustres",
          name: "Lámparas colgantes y candelabros",
          slug: "suspensions-lustres",
          subcategories: [
            { id: "suspensions", name: "Lámparas colgantes", slug: "suspensions" },
            { id: "lustres", name: "Candelabros", slug: "lustres" }
          ]
        },
        { id: "appliques-murales", name: "Apliques de pared", slug: "appliques-murales" },
        { id: "luminaires-led", name: "Iluminación LED", slug: "luminaires-led" },
        { id: "lampes-de-bureau", name: "Lámparas de escritorio", slug: "lampes-de-bureau" },
        { id: "guirlandes-lumineuses", name: "Guirnaldas luminosas", slug: "guirlandes-lumineuses" },
        { id: "rubans-led", name: "Tiras LED", slug: "rubans-led" },
        { id: "eclairage-exterieur", name: "Iluminación exterior", slug: "eclairage-exterieur" }
      ]
    },
    {
      id: "tapis-textiles-maison",
      name: "Alfombras y textiles para el hogar",
      slug: "tapis-textiles-maison",
      subcategories: [
        {
          id: "tapis",
          name: "Alfombras",
          slug: "tapis",
          subcategories: [
            { id: "salon", name: "Salón", slug: "salon" },
            { id: "chambre", name: "Dormitorio", slug: "chambre" },
            { id: "orientaux", name: "Orientales", slug: "orientaux" },
            { id: "modernes", name: "Modernas", slug: "modernes" }
          ]
        },
        {
          id: "rideaux-voilages",
          name: "Cortinas y visillos",
          slug: "rideaux-voilages",
          subcategories: [
            { id: "rideaux", name: "Cortinas", slug: "rideaux" },
            { id: "voilages", name: "Visillos", slug: "voilages" }
          ]
        },
        {
          id: "stores",
          name: "Persianas",
          slug: "stores",
          subcategories: [
            { id: "rouleaux", name: "Enrollables", slug: "rouleaux" },
            { id: "venitiens", name: "Venecianas", slug: "venitiens" },
            { id: "bambou", name: "Bambú", slug: "bambou" }
          ]
        },
        {
          id: "coussins-housses",
          name: "Cojines y fundas",
          slug: "coussins-housses",
          subcategories: [
            { id: "coussins", name: "Cojines", slug: "coussins" },
            { id: "housses", name: "Fundas", slug: "housses" }
          ]
        },
        {
          id: "jetes-plaids",
          name: "Mantas y plaids",
          slug: "jetes-plaids",
          subcategories: [
            { id: "jetes", name: "Mantas", slug: "jetes" },
            { id: "plaids", name: "Plaids", slug: "plaids" }
          ]
        },
        { id: "linge-de-lit", name: "Ropa de cama", slug: "linge-de-lit" },
        { id: "linge-de-bain", name: "Ropa de baño", slug: "linge-de-bain" },
        {
          id: "nappes-textiles-cuisine",
          name: "Manteles y textiles de cocina",
          slug: "nappes-textiles-cuisine",
          subcategories: [
            { id: "nappes", name: "Manteles", slug: "nappes" },
            { id: "textiles-cuisine", name: "Textiles de cocina", slug: "textiles-cuisine" }
          ]
        }
      ]
    },
    {
      id: "decoration-art-maison",
      name: "Decoración y arte para el hogar",
      slug: "decoration-art-maison",
      subcategories: [
        {
          id: "vases-pots-decoratifs",
          name: "Jarrones y macetas decorativas",
          slug: "vases-pots-decoratifs",
          subcategories: [
            { id: "vases", name: "Jarrones", slug: "vases" },
            { id: "pots", name: "Macetas", slug: "pots" }
          ]
        },
        {
          id: "bougies-photophores",
          name: "Velas y portavelas",
          slug: "bougies-photophores",
          subcategories: [
            { id: "bougies", name: "Velas", slug: "bougies" },
            { id: "photophores", name: "Portavelas", slug: "photophores" }
          ]
        },
        {
          id: "sculptures-statuettes",
          name: "Esculturas y estatuillas",
          slug: "sculptures-statuettes",
          subcategories: [
            { id: "sculptures", name: "Esculturas", slug: "sculptures" },
            { id: "statuettes", name: "Estatuillas", slug: "statuettes" }
          ]
        },
        { id: "articles-artisanaux", name: "Artículos artesanales", slug: "articles-artisanaux" },
        {
          id: "objets-decoratifs",
          name: "Objetos decorativos",
          slug: "objets-decoratifs",
          subcategories: [
            { id: "bois", name: "Madera", slug: "bois" },
            { id: "metal", name: "Metal", slug: "metal" },
            { id: "verre", name: "Vidrio", slug: "verre" }
          ]
        },
        { id: "plateaux-decoratifs", name: "Bandejas decorativas", slug: "plateaux-decoratifs" },
        {
          id: "coffrets-boites",
          name: "Cajas y cofres",
          slug: "coffrets-boites",
          subcategories: [
            { id: "coffrets", name: "Cofres", slug: "coffrets" },
            { id: "boites", name: "Cajas", slug: "boites" }
          ]
        }
      ]
    },
    {
      id: "rangement-organisation",
      name: "Almacenamiento y organización",
      slug: "rangement-organisation",
      subcategories: [
        {
          id: "boites-paniers",
          name: "Cajas y cestas",
          slug: "boites-paniers",
          subcategories: [
            { id: "boites", name: "Cajas", slug: "boites" },
            { id: "paniers", name: "Cestas", slug: "paniers" }
          ]
        },
        { id: "organiseurs-tiroirs", name: "Organizadores de cajones", slug: "organiseurs-tiroirs" },
        { id: "etageres-modulaires", name: "Estanterías modulares", slug: "etageres-modulaires" },
        {
          id: "meubles-rangement-materiaux",
          name: "Muebles de almacenamiento de plástico/madera/metal",
          slug: "meubles-rangement-materiaux",
          subcategories: [
            { id: "plastique", name: "Plástico", slug: "plastique" },
            { id: "bois", name: "Madera", slug: "bois" },
            { id: "metal", name: "Metal", slug: "metal" }
          ]
        },
        { id: "portemanteaux", name: "Percheros", slug: "portemanteaux" },
        {
          id: "pateres-crochets",
          name: "Perchas y ganchos",
          slug: "pateres-crochets",
          subcategories: [
            { id: "pateres", name: "Perchas", slug: "pateres" },
            { id: "crochets", name: "Ganchos", slug: "crochets" }
          ]
        },
        { id: "armoires-pliables", name: "Armarios plegables", slug: "armoires-pliables" },
        { id: "rayonnages", name: "Estanterías", slug: "rayonnages" }
      ]
    },
    {
      id: "maison-intelligente",
      name: "Hogar inteligente",
      slug: "maison-intelligente",
      subcategories: [
        { id: "ampoules-connectees", name: "Bombillas conectadas", slug: "ampoules-connectees" },
        { id: "prises-intelligentes", name: "Enchufes inteligentes", slug: "prises-intelligentes" },
        {
          id: "capteurs-detecteurs",
          name: "Sensores y detectores",
          slug: "capteurs-detecteurs",
          subcategories: [
            { id: "capteurs", name: "Sensores", slug: "capteurs" },
            { id: "detecteurs", name: "Detectores", slug: "detecteurs" }
          ]
        },
        { id: "commandes-distance", name: "Mandos a distancia", slug: "commandes-distance" },
        { id: "gadgets-domotiques-decoratifs", name: "Gadgets domóticos decorativos", slug: "gadgets-domotiques-decoratifs" }
      ]
    },
    {
      id: "decoration-vegetale-plantes",
      name: "Decoración vegetal y plantas",
      slug: "decoration-vegetale-plantes",
      subcategories: [
        { id: "plantes-naturelles", name: "Plantas naturales", slug: "plantes-naturelles" },
        { id: "plantes-artificielles", name: "Plantas artificiales", slug: "plantes-artificielles" },
        { id: "pots-de-fleurs", name: "Macetas", slug: "pots-de-fleurs" },
        { id: "jardinieres", name: "Jardineras", slug: "jardinieres" },
        { id: "support-plantes", name: "Soportes para plantas", slug: "support-plantes" },
        { id: "terrariums", name: "Terrarios", slug: "terrariums" },
        { id: "decoration-botanique", name: "Decoración botánica", slug: "decoration-botanique" }
      ]
    },
    {
      id: "decoration-enfant-bebe",
      name: "Decoración infantil y bebé",
      slug: "decoration-enfant-bebe",
      subcategories: [
        { id: "mobilier-chambre-enfant", name: "Muebles de habitación infantil", slug: "mobilier-chambre-enfant" },
        { id: "luminaires-enfant", name: "Iluminación infantil", slug: "luminaires-enfant" },
        {
          id: "stickers-posters-enfant",
          name: "Pegatinas y pósters infantiles",
          slug: "stickers-posters-enfant",
          subcategories: [
            { id: "stickers-enfant", name: "Pegatinas infantiles", slug: "stickers-enfant" },
            { id: "posters-enfant", name: "Pósters infantiles", slug: "posters-enfant" }
          ]
        },
        { id: "rangements-jouets", name: "Organizadores de juguetes", slug: "rangements-jouets" },
        {
          id: "petits-fauteuils-poufs",
          name: "Pequeños sillones y pufs",
          slug: "petits-fauteuils-poufs",
          subcategories: [
            { id: "petits-fauteuils", name: "Pequeños sillones", slug: "petits-fauteuils" },
            { id: "poufs", name: "Pufs", slug: "poufs" }
          ]
        }
      ]
    },
    {
      id: "styles-decoratifs",
      name: "Estilos decorativos",
      slug: "styles-decoratifs",
      subcategories: [
        { id: "scandinave", name: "Escandinavo", slug: "scandinave" },
        { id: "moderne", name: "Moderno", slug: "moderne" },
        { id: "minimaliste", name: "Minimalista", slug: "minimaliste" },
        { id: "industriel", name: "Industrial", slug: "industriel" },
        { id: "boheme", name: "Bohemio", slug: "boheme" },
        { id: "vintage", name: "Vintage", slug: "vintage" },
        { id: "art-deco", name: "Art déco", slug: "art-deco" },
        { id: "rustique-campagne", name: "Rústico y campestre", slug: "rustique-campagne" },
        { id: "oriental-marocain", name: "Oriental y marroquí", slug: "oriental-marocain" },
        { id: "contemporain", name: "Contemporáneo", slug: "contemporain" },
        { id: "classique", name: "Clásico", slug: "classique" },
        { id: "luxe-premium", name: "Lujo y premium", slug: "luxe-premium" }
      ]
    },
    {
      id: "materiaux",
      name: "Materiales",
      slug: "materiaux",
      subcategories: [
        { id: "bois-massif", name: "Madera maciza", slug: "bois-massif" },
        { id: "mdf", name: "MDF", slug: "mdf" },
        { id: "metal", name: "Metal", slug: "metal" },
        { id: "aluminium", name: "Aluminio", slug: "aluminium" },
        { id: "verre", name: "Vidrio", slug: "verre" },
        { id: "rotin", name: "Ratán", slug: "rotin" },
        { id: "bambou", name: "Bambú", slug: "bambou" },
        { id: "resine-tressee", name: "Resina trenzada", slug: "resine-tressee" },
        { id: "marbre", name: "Mármol", slug: "marbre" },
        { id: "ceramique", name: "Cerámica", slug: "ceramique" },
        { id: "tissu", name: "Tela", slug: "tissu" },
        { id: "velours", name: "Terciopelo", slug: "velours" },
        {
          id: "cuir-simili",
          name: "Cuero y cuero sintético",
          slug: "cuir-simili",
          subcategories: [
            { id: "cuir", name: "Cuero", slug: "cuir" },
            { id: "simili", name: "Cuero sintético", slug: "simili" }
          ]
        },
        { id: "beton-decoratif", name: "Hormigón decorativo", slug: "beton-decoratif" }
      ]
    },
    {
      id: "accessoires-maison",
      name: "Accesorios para el hogar",
      slug: "accessoires-maison",
      subcategories: [
        {
          id: "horloges-reveils",
          name: "Relojes y despertadores",
          slug: "horloges-reveils",
          subcategories: [
            { id: "horloges", name: "Relojes", slug: "horloges" },
            { id: "reveils", name: "Despertadores", slug: "reveils" }
          ]
        },
        { id: "cadres-photo", name: "Marcos de fotos", slug: "cadres-photo" },
        { id: "parfums-interieur", name: "Aromas para interiores", slug: "parfums-interieur" },
        { id: "fontaines-decoratives", name: "Fuentes decorativas", slug: "fontaines-decoratives" },
        { id: "distributeurs-savon-design", name: "Dispensadores de jabón de diseño", slug: "distributeurs-savon-design" },
        {
          id: "cintres-porte-accessoires",
          name: "Perchas y soportes",
          slug: "cintres-porte-accessoires",
          subcategories: [
            { id: "cintres", name: "Perchas", slug: "cintres" },
            { id: "porte-accessoires", name: "Soportes", slug: "porte-accessoires" }
          ]
        },
        { id: "accessoires-cheminee", name: "Accesorios para chimenea", slug: "accessoires-cheminee" }
      ]
    },
    {
      id: "objets-artisanaux-locaux",
      name: "Objetos artesanales y locales",
      slug: "objets-artisanaux-locaux",
      subcategories: [
        { id: "decorations-traditionnelles", name: "Decoraciones tradicionales", slug: "decorations-traditionnelles" },
        {
          id: "articles-berberes-orientaux",
          name: "Artículos bereberes y orientales",
          slug: "articles-berberes-orientaux",
          subcategories: [
            { id: "berberes", name: "Bereberes", slug: "berberes" },
            { id: "orientaux", name: "Orientales", slug: "orientaux" }
          ]
        },
        { id: "paniers-tresses", name: "Cestas trenzadas", slug: "paniers-tresses" },
        { id: "poufs-artisanaux", name: "Pufs artesanales", slug: "poufs-artisanaux" },
        { id: "art-mural-local", name: "Arte mural local", slug: "art-mural-local" }
      ]
    }
  ]
};