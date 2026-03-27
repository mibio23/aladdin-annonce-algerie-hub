import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Armchair } from "lucide-react";

export const mobilierEtDecorationEn: MenuCategory = {
  id: "mobilier-et-decoration",
  name: "Furniture & Decor",
  slug: "mobilier-et-decoration",
  icon: <Armchair className="w-4 h-4" />,
  subcategories: [
    {
      id: "mobilier-salon-sejour",
      name: "Living Room Furniture",
      slug: "mobilier-salon-sejour",
      subcategories: [
        {
          id: "canapes",
          name: "Sofas",
          slug: "canapes",
          subcategories: [
            { id: "angle", name: "Sectional", slug: "angle" },
            { id: "droit", name: "Standard", slug: "droit" },
            { id: "convertible", name: "Sofa bed", slug: "convertible" },
            { id: "modulaires", name: "Modular", slug: "modulaires" }
          ]
        },
        {
          id: "fauteuils-poufs",
          name: "Armchairs & ottomans",
          slug: "fauteuils-poufs",
          subcategories: [
            { id: "fauteuils", name: "Armchairs", slug: "fauteuils" },
            { id: "poufs", name: "Ottomans", slug: "poufs" }
          ]
        },
        {
          id: "tables-basses",
          name: "Coffee tables",
          slug: "tables-basses",
          subcategories: [
            { id: "bois", name: "Wood", slug: "bois" },
            { id: "verre", name: "Glass", slug: "verre" },
            { id: "metal", name: "Metal", slug: "metal" }
          ]
        },
        { id: "meubles-tv", name: "TV stands", slug: "meubles-tv" },
        { id: "etagères-bibliotheques", name: "Shelves & bookcases", slug: "etageres-bibliotheques" },
        { id: "meubles-rangement", name: "Storage furniture", slug: "meubles-rangement" },
        { id: "consoles-entree", name: "Entry consoles", slug: "consoles-entree" },
        { id: "banquettes", name: "Benches", slug: "banquettes" },
        { id: "paravents", name: "Room dividers", slug: "paravents" },
        { id: "tables-d-appoint", name: "Side tables", slug: "tables-d-appoint" }
      ]
    },
    {
      id: "mobilier-chambre",
      name: "Bedroom Furniture",
      slug: "mobilier-chambre",
      subcategories: [
        {
          id: "lits",
          name: "Beds",
          slug: "lits",
          subcategories: [
            { id: "simple", name: "Single", slug: "simple" },
            { id: "double", name: "Double", slug: "double" },
            { id: "king", name: "King", slug: "king" },
            { id: "coffre", name: "Storage", slug: "coffre" }
          ]
        },
        {
          id: "sommier-matelas",
          name: "Bed bases & mattresses",
          slug: "sommier-matelas",
          subcategories: [
            { id: "sommier", name: "Bed bases", slug: "sommier" },
            { id: "matelas", name: "Mattresses", slug: "matelas" }
          ]
        },
        { id: "tables-de-chevet", name: "Bedside tables", slug: "tables-de-chevet" },
        {
          id: "armoires-penderies",
          name: "Wardrobes & closets",
          slug: "armoires-penderies",
          subcategories: [
            { id: "armoires", name: "Wardrobes", slug: "armoires" },
            { id: "penderies", name: "Closets", slug: "penderies" }
          ]
        },
        { id: "commode", name: "Dressers", slug: "commode" },
        { id: "coiffeuses", name: "Vanity tables", slug: "coiffeuses" },
        { id: "bancs-de-lit", name: "Bed benches", slug: "bancs-de-lit" },
        { id: "tetes-de-lit", name: "Headboards", slug: "tetes-de-lit" },
        { id: "rangement-chaussures", name: "Shoe storage", slug: "rangement-chaussures" }
      ]
    },
    {
      id: "mobilier-salle-a-manger",
      name: "Dining Room Furniture",
      slug: "mobilier-salle-a-manger",
      subcategories: [
        {
          id: "tables-a-manger",
          name: "Dining tables",
          slug: "tables-a-manger",
          subcategories: [
            { id: "bois", name: "Wood", slug: "bois" },
            { id: "extensibles", name: "Extendable", slug: "extensibles" },
            { id: "verre", name: "Glass", slug: "verre" }
          ]
        },
        {
          id: "chaises-fauteuils-salle-a-manger",
          name: "Dining chairs & armchairs",
          slug: "chaises-fauteuils-salle-a-manger",
          subcategories: [
            { id: "chaises", name: "Chairs", slug: "chaises" },
            { id: "fauteuils", name: "Armchairs", slug: "fauteuils" }
          ]
        },
        {
          id: "buffets-bahuts",
          name: "Sideboards & buffets",
          slug: "buffets-bahuts",
          subcategories: [
            { id: "buffets", name: "Buffets", slug: "buffets" },
            { id: "bahuts", name: "Sideboards", slug: "bahuts" }
          ]
        },
        { id: "vaisseliers", name: "China cabinets", slug: "vaisseliers" },
        { id: "meubles-bar", name: "Bar furniture", slug: "meubles-bar" },
        {
          id: "tabourets-chaises-hautes",
          name: "Stools & high chairs",
          slug: "tabourets-chaises-hautes",
          subcategories: [
            { id: "tabourets", name: "Stools", slug: "tabourets" },
            { id: "chaises-hautes", name: "High chairs", slug: "chaises-hautes" }
          ]
        }
      ]
    },
    {
      id: "mobilier-cuisine",
      name: "Kitchen Furniture",
      slug: "mobilier-cuisine",
      subcategories: [
        { id: "meubles-cuisine-modulaires", name: "Modular kitchen units", slug: "meubles-cuisine-modulaires" },
        { id: "plans-de-travail", name: "Countertops", slug: "plans-de-travail" },
        {
          id: "ilots-dessertes-cuisine",
          name: "Kitchen islands & servers",
          slug: "ilots-dessertes-cuisine",
          subcategories: [
            { id: "ilots", name: "Islands", slug: "ilots" },
            { id: "dessertes", name: "Servers", slug: "dessertes" }
          ]
        },
        { id: "rangement-cuisine", name: "Kitchen storage", slug: "rangement-cuisine" },
        {
          id: "chariots-dessertes-roulettes",
          name: "Carts & rolling servers",
          slug: "chariots-dessertes-roulettes",
          subcategories: [
            { id: "chariots", name: "Carts", slug: "chariots" },
            { id: "dessertes-a-roulettes", name: "Rolling servers", slug: "dessertes-a-roulettes" }
          ]
        },
        { id: "tabourets-cuisine", name: "Kitchen stools", slug: "tabourets-cuisine" },
        {
          id: "racks-epices-etageres-murales",
          name: "Spice racks & wall shelves",
          slug: "racks-epices-etageres-murales",
          subcategories: [
            { id: "racks-epices", name: "Spice racks", slug: "racks-epices" },
            { id: "etageres-murales", name: "Wall shelves", slug: "etageres-murales" }
          ]
        }
      ]
    },
    {
      id: "mobilier-bureau",
      name: "Office Furniture",
      slug: "mobilier-bureau",
      subcategories: [
        { id: "bureaux-classiques", name: "Traditional desks", slug: "bureaux-classiques" },
        { id: "bureaux-gaming", name: "Gaming desks", slug: "bureaux-gaming" },
        { id: "chaises-bureau-ergonomiques", name: "Ergonomic office chairs", slug: "chaises-bureau-ergonomiques" },
        {
          id: "caissons-rangements",
          name: "Pedestals & storage",
          slug: "caissons-rangements",
          subcategories: [
            { id: "caissons", name: "Pedestals", slug: "caissons" },
            { id: "rangements", name: "Storage", slug: "rangements" }
          ]
        },
        { id: "bibliotheques-pro", name: "Professional bookcases", slug: "bibliotheques-pro" },
        {
          id: "support-ecrans-accessoires-bureau",
          name: "Monitor stands & office accessories",
          slug: "support-ecrans-accessoires-bureau",
          subcategories: [
            { id: "support-ecrans", name: "Monitor stands", slug: "support-ecrans" },
            { id: "accessoires-bureau", name: "Office accessories", slug: "accessoires-bureau" }
          ]
        },
        { id: "tables-dessin-architecte", name: "Drafting & architect tables", slug: "tables-dessin-architecte" }
      ]
    },
    {
      id: "mobilier-salle-de-bain",
      name: "Bathroom Furniture",
      slug: "mobilier-salle-de-bain",
      subcategories: [
        { id: "meubles-sous-vasques", name: "Vanity base cabinets", slug: "meubles-sous-vasques" },
        {
          id: "colonnes-rangements-bain",
          name: "Tall units & storage",
          slug: "colonnes-rangements-bain",
          subcategories: [
            { id: "colonnes", name: "Tall units", slug: "colonnes" },
            { id: "rangements", name: "Storage", slug: "rangements" }
          ]
        },
        { id: "etageres-murales-bain", name: "Wall shelves", slug: "etageres-murales-bain" },
        { id: "armoires-miroir", name: "Mirror cabinets", slug: "armoires-miroir" },
        {
          id: "bancs-tabourets-bain",
          name: "Bathroom benches & stools",
          slug: "bancs-tabourets-bain",
          subcategories: [
            { id: "bancs", name: "Benches", slug: "bancs" },
            { id: "tabourets", name: "Stools", slug: "tabourets" }
          ]
        },
        { id: "paniers-linge", name: "Laundry baskets", slug: "paniers-linge" },
        { id: "porte-serviettes", name: "Towel racks", slug: "porte-serviettes" },
        { id: "accessoires-bain", name: "Bathroom accessories", slug: "accessoires-bain" }
      ]
    },
    {
      id: "mobilier-exterieur-jardin",
      name: "Outdoor & Garden Furniture",
      slug: "mobilier-exterieur-jardin",
      subcategories: [
        {
          id: "salons-de-jardin",
          name: "Garden lounge sets",
          slug: "salons-de-jardin",
          subcategories: [
            { id: "resine", name: "Resin", slug: "resine" },
            { id: "aluminium", name: "Aluminum", slug: "aluminium" },
            { id: "bois", name: "Wood", slug: "bois" }
          ]
        },
        {
          id: "tables-chaises-exterieures",
          name: "Outdoor tables & chairs",
          slug: "tables-chaises-exterieures",
          subcategories: [
            { id: "tables", name: "Tables", slug: "tables" },
            { id: "chaises", name: "Chairs", slug: "chaises" }
          ]
        },
        {
          id: "transats-bains-de-soleil",
          name: "Sun loungers & daybeds",
          slug: "transats-bains-de-soleil",
          subcategories: [
            { id: "transats", name: "Sun loungers", slug: "transats" },
            { id: "bains-de-soleil", name: "Daybeds", slug: "bains-de-soleil" }
          ]
        },
        {
          id: "hamacs-balancelles",
          name: "Hammocks & swings",
          slug: "hamacs-balancelles",
          subcategories: [
            { id: "hamacs", name: "Hammocks", slug: "hamacs" },
            { id: "balancelles", name: "Swings", slug: "balancelles" }
          ]
        },
        { id: "pergolas", name: "Pergolas", slug: "pergolas" },
        { id: "parasols", name: "Parasols", slug: "parasols" },
        { id: "coffres-rangement-exterieur", name: "Outdoor storage boxes", slug: "coffres-rangement-exterieur" },
        {
          id: "barbecue-cuisine-exterieure",
          name: "Barbecues & outdoor kitchens",
          slug: "barbecue-cuisine-exterieure",
          subcategories: [
            { id: "barbecue", name: "Barbecues", slug: "barbecue" },
            { id: "cuisine-exterieure", name: "Outdoor kitchens", slug: "cuisine-exterieure" }
          ]
        }
      ]
    },
    {
      id: "decoration-murale",
      name: "Wall Decoration",
      slug: "decoration-murale",
      subcategories: [
        {
          id: "tableaux",
          name: "Paintings",
          slug: "tableaux",
          subcategories: [
            { id: "abstraits", name: "Abstract", slug: "abstraits" },
            { id: "modernes", name: "Modern", slug: "modernes" },
            { id: "islamiques", name: "Islamic", slug: "islamiques" }
          ]
        },
        {
          id: "affiches-posters",
          name: "Prints & posters",
          slug: "affiches-posters",
          subcategories: [
            { id: "affiches", name: "Prints", slug: "affiches" },
            { id: "posters", name: "Posters", slug: "posters" }
          ]
        },
        { id: "miroirs-decoratifs", name: "Decorative mirrors", slug: "miroirs-decoratifs" },
        { id: "horloges-murales", name: "Wall clocks", slug: "horloges-murales" },
        { id: "stickers-muraux", name: "Wall stickers", slug: "stickers-muraux" },
        { id: "decorations-metal", name: "Metal decor", slug: "decorations-metal" },
        { id: "panneaux-muraux-3d", name: "3D wall panels", slug: "panneaux-muraux-3d" },
        {
          id: "tapisseries-toiles-imprimees",
          name: "Tapestries & prints",
          slug: "tapisseries-toiles-imprimees",
          subcategories: [
            { id: "tapisseries", name: "Tapestries", slug: "tapisseries" },
            { id: "toiles-imprimees", name: "Printed canvases", slug: "toiles-imprimees" }
          ]
        }
      ]
    },
    {
      id: "luminaires-eclairage",
      name: "Lighting",
      slug: "luminaires-eclairage",
      subcategories: [
        { id: "lampes-de-table", name: "Table lamps", slug: "lampes-de-table" },
        { id: "lampadaires", name: "Floor lamps", slug: "lampadaires" },
        {
          id: "suspensions-lustres",
          name: "Pendant lights & chandeliers",
          slug: "suspensions-lustres",
          subcategories: [
            { id: "suspensions", name: "Pendant lights", slug: "suspensions" },
            { id: "lustres", name: "Chandeliers", slug: "lustres" }
          ]
        },
        { id: "appliques-murales", name: "Wall lights", slug: "appliques-murales" },
        { id: "luminaires-led", name: "LED lighting", slug: "luminaires-led" },
        { id: "lampes-de-bureau", name: "Desk lamps", slug: "lampes-de-bureau" },
        { id: "guirlandes-lumineuses", name: "String lights", slug: "guirlandes-lumineuses" },
        { id: "rubans-led", name: "LED strips", slug: "rubans-led" },
        { id: "eclairage-exterieur", name: "Outdoor lighting", slug: "eclairage-exterieur" }
      ]
    },
    {
      id: "tapis-textiles-maison",
      name: "Rugs & Home Textiles",
      slug: "tapis-textiles-maison",
      subcategories: [
        {
          id: "tapis",
          name: "Rugs",
          slug: "tapis",
          subcategories: [
            { id: "salon", name: "Living room", slug: "salon" },
            { id: "chambre", name: "Bedroom", slug: "chambre" },
            { id: "orientaux", name: "Oriental", slug: "orientaux" },
            { id: "modernes", name: "Modern", slug: "modernes" }
          ]
        },
        {
          id: "rideaux-voilages",
          name: "Curtains & sheers",
          slug: "rideaux-voilages",
          subcategories: [
            { id: "rideaux", name: "Curtains", slug: "rideaux" },
            { id: "voilages", name: "Sheers", slug: "voilages" }
          ]
        },
        {
          id: "stores",
          name: "Blinds",
          slug: "stores",
          subcategories: [
            { id: "rouleaux", name: "Roller", slug: "rouleaux" },
            { id: "venitiens", name: "Venetian", slug: "venitiens" },
            { id: "bambou", name: "Bamboo", slug: "bambou" }
          ]
        },
        {
          id: "coussins-housses",
          name: "Cushions & covers",
          slug: "coussins-housses",
          subcategories: [
            { id: "coussins", name: "Cushions", slug: "coussins" },
            { id: "housses", name: "Covers", slug: "housses" }
          ]
        },
        {
          id: "jetes-plaids",
          name: "Throws & blankets",
          slug: "jetes-plaids",
          subcategories: [
            { id: "jetes", name: "Throws", slug: "jetes" },
            { id: "plaids", name: "Blankets", slug: "plaids" }
          ]
        },
        { id: "linge-de-lit", name: "Bed linen", slug: "linge-de-lit" },
        { id: "linge-de-bain", name: "Bath linen", slug: "linge-de-bain" },
        {
          id: "nappes-textiles-cuisine",
          name: "Tablecloths & kitchen textiles",
          slug: "nappes-textiles-cuisine",
          subcategories: [
            { id: "nappes", name: "Tablecloths", slug: "nappes" },
            { id: "textiles-cuisine", name: "Kitchen textiles", slug: "textiles-cuisine" }
          ]
        }
      ]
    },
    {
      id: "decoration-art-maison",
      name: "Home Decor & Art",
      slug: "decoration-art-maison",
      subcategories: [
        {
          id: "vases-pots-decoratifs",
          name: "Decorative vases & pots",
          slug: "vases-pots-decoratifs",
          subcategories: [
            { id: "vases", name: "Vases", slug: "vases" },
            { id: "pots", name: "Pots", slug: "pots" }
          ]
        },
        {
          id: "bougies-photophores",
          name: "Candles & tealight holders",
          slug: "bougies-photophores",
          subcategories: [
            { id: "bougies", name: "Candles", slug: "bougies" },
            { id: "photophores", name: "Tealight holders", slug: "photophores" }
          ]
        },
        {
          id: "sculptures-statuettes",
          name: "Sculptures & figurines",
          slug: "sculptures-statuettes",
          subcategories: [
            { id: "sculptures", name: "Sculptures", slug: "sculptures" },
            { id: "statuettes", name: "Figurines", slug: "statuettes" }
          ]
        },
        { id: "articles-artisanaux", name: "Handcrafted items", slug: "articles-artisanaux" },
        {
          id: "objets-decoratifs",
          name: "Decorative objects",
          slug: "objets-decoratifs",
          subcategories: [
            { id: "bois", name: "Wood", slug: "bois" },
            { id: "metal", name: "Metal", slug: "metal" },
            { id: "verre", name: "Glass", slug: "verre" }
          ]
        },
        { id: "plateaux-decoratifs", name: "Decorative trays", slug: "plateaux-decoratifs" },
        {
          id: "coffrets-boites",
          name: "Boxes & cases",
          slug: "coffrets-boites",
          subcategories: [
            { id: "coffrets", name: "Cases", slug: "coffrets" },
            { id: "boites", name: "Boxes", slug: "boites" }
          ]
        }
      ]
    },
    {
      id: "rangement-organisation",
      name: "Storage & Organization",
      slug: "rangement-organisation",
      subcategories: [
        {
          id: "boites-paniers",
          name: "Boxes & baskets",
          slug: "boites-paniers",
          subcategories: [
            { id: "boites", name: "Boxes", slug: "boites" },
            { id: "paniers", name: "Baskets", slug: "paniers" }
          ]
        },
        { id: "organiseurs-tiroirs", name: "Drawer organizers", slug: "organiseurs-tiroirs" },
        { id: "etageres-modulaires", name: "Modular shelves", slug: "etageres-modulaires" },
        {
          id: "meubles-rangement-materiaux",
          name: "Storage units (plastic/wood/metal)",
          slug: "meubles-rangement-materiaux",
          subcategories: [
            { id: "plastique", name: "Plastic", slug: "plastique" },
            { id: "bois", name: "Wood", slug: "bois" },
            { id: "metal", name: "Metal", slug: "metal" }
          ]
        },
        { id: "portemanteaux", name: "Coat racks", slug: "portemanteaux" },
        {
          id: "pateres-crochets",
          name: "Hooks & pegs",
          slug: "pateres-crochets",
          subcategories: [
            { id: "pateres", name: "Pegs", slug: "pateres" },
            { id: "crochets", name: "Hooks", slug: "crochets" }
          ]
        },
        { id: "armoires-pliables", name: "Foldable wardrobes", slug: "armoires-pliables" },
        { id: "rayonnages", name: "Racking", slug: "rayonnages" }
      ]
    },
    {
      id: "maison-intelligente",
      name: "Smart Home",
      slug: "maison-intelligente",
      subcategories: [
        { id: "ampoules-connectees", name: "Smart bulbs", slug: "ampoules-connectees" },
        { id: "prises-intelligentes", name: "Smart plugs", slug: "prises-intelligentes" },
        {
          id: "capteurs-detecteurs",
          name: "Sensors & detectors",
          slug: "capteurs-detecteurs",
          subcategories: [
            { id: "capteurs", name: "Sensors", slug: "capteurs" },
            { id: "detecteurs", name: "Detectors", slug: "detecteurs" }
          ]
        },
        { id: "commandes-distance", name: "Remote controls", slug: "commandes-distance" },
        { id: "gadgets-domotiques-decoratifs", name: "Decorative smart gadgets", slug: "gadgets-domotiques-decoratifs" }
      ]
    },
    {
      id: "decoration-vegetale-plantes",
      name: "Botanical Decor & Plants",
      slug: "decoration-vegetale-plantes",
      subcategories: [
        { id: "plantes-naturelles", name: "Natural plants", slug: "plantes-naturelles" },
        { id: "plantes-artificielles", name: "Artificial plants", slug: "plantes-artificielles" },
        { id: "pots-de-fleurs", name: "Flower pots", slug: "pots-de-fleurs" },
        { id: "jardinieres", name: "Planters", slug: "jardinieres" },
        { id: "support-plantes", name: "Plant stands", slug: "support-plantes" },
        { id: "terrariums", name: "Terrariums", slug: "terrariums" },
        { id: "decoration-botanique", name: "Botanical decor", slug: "decoration-botanique" }
      ]
    },
    {
      id: "decoration-enfant-bebe",
      name: "Kids & Baby Decor",
      slug: "decoration-enfant-bebe",
      subcategories: [
        { id: "mobilier-chambre-enfant", name: "Kids bedroom furniture", slug: "mobilier-chambre-enfant" },
        { id: "luminaires-enfant", name: "Kids lighting", slug: "luminaires-enfant" },
        {
          id: "stickers-posters-enfant",
          name: "Kids stickers & posters",
          slug: "stickers-posters-enfant",
          subcategories: [
            { id: "stickers-enfant", name: "Stickers", slug: "stickers-enfant" },
            { id: "posters-enfant", name: "Posters", slug: "posters-enfant" }
          ]
        },
        { id: "rangements-jouets", name: "Toy storage", slug: "rangements-jouets" },
        {
          id: "petits-fauteuils-poufs",
          name: "Kids armchairs & poufs",
          slug: "petits-fauteuils-poufs",
          subcategories: [
            { id: "petits-fauteuils", name: "Armchairs", slug: "petits-fauteuils" },
            { id: "poufs", name: "Poufs", slug: "poufs" }
          ]
        }
      ]
    },
    {
      id: "styles-decoratifs",
      name: "Decor Styles",
      slug: "styles-decoratifs",
      subcategories: [
        { id: "scandinave", name: "Scandinavian", slug: "scandinave" },
        { id: "moderne", name: "Modern", slug: "moderne" },
        { id: "minimaliste", name: "Minimalist", slug: "minimaliste" },
        { id: "industriel", name: "Industrial", slug: "industriel" },
        { id: "boheme", name: "Bohemian", slug: "boheme" },
        { id: "vintage", name: "Vintage", slug: "vintage" },
        { id: "art-deco", name: "Art deco", slug: "art-deco" },
        { id: "rustique-campagne", name: "Rustic & country", slug: "rustique-campagne" },
        { id: "oriental-marocain", name: "Oriental & Moroccan", slug: "oriental-marocain" },
        { id: "contemporain", name: "Contemporary", slug: "contemporain" },
        { id: "classique", name: "Classic", slug: "classique" },
        { id: "luxe-premium", name: "Luxury & premium", slug: "luxe-premium" }
      ]
    },
    {
      id: "materiaux",
      name: "Materials",
      slug: "materiaux",
      subcategories: [
        { id: "bois-massif", name: "Solid wood", slug: "bois-massif" },
        { id: "mdf", name: "MDF", slug: "mdf" },
        { id: "metal", name: "Metal", slug: "metal" },
        { id: "aluminium", name: "Aluminum", slug: "aluminium" },
        { id: "verre", name: "Glass", slug: "verre" },
        { id: "rotin", name: "Rattan", slug: "rotin" },
        { id: "bambou", name: "Bamboo", slug: "bambou" },
        { id: "resine-tressee", name: "Woven resin", slug: "resine-tressee" },
        { id: "marbre", name: "Marble", slug: "marbre" },
        { id: "ceramique", name: "Ceramic", slug: "ceramique" },
        { id: "tissu", name: "Fabric", slug: "tissu" },
        { id: "velours", name: "Velvet", slug: "velours" },
        {
          id: "cuir-simili",
          name: "Leather & faux",
          slug: "cuir-simili",
          subcategories: [
            { id: "cuir", name: "Leather", slug: "cuir" },
            { id: "simili", name: "Faux", slug: "simili" }
          ]
        },
        { id: "beton-decoratif", name: "Decorative concrete", slug: "beton-decoratif" }
      ]
    },
    {
      id: "accessoires-maison",
      name: "Home Accessories",
      slug: "accessoires-maison",
      subcategories: [
        {
          id: "horloges-reveils",
          name: "Clocks & alarm clocks",
          slug: "horloges-reveils",
          subcategories: [
            { id: "horloges", name: "Clocks", slug: "horloges" },
            { id: "reveils", name: "Alarm clocks", slug: "reveils" }
          ]
        },
        { id: "cadres-photo", name: "Photo frames", slug: "cadres-photo" },
        { id: "parfums-interieur", name: "Home fragrances", slug: "parfums-interieur" },
        { id: "fontaines-decoratives", name: "Decorative fountains", slug: "fontaines-decoratives" },
        { id: "distributeurs-savon-design", name: "Designer soap dispensers", slug: "distributeurs-savon-design" },
        {
          id: "cintres-porte-accessoires",
          name: "Hangers & accessory holders",
          slug: "cintres-porte-accessoires",
          subcategories: [
            { id: "cintres", name: "Hangers", slug: "cintres" },
            { id: "porte-accessoires", name: "Accessory holders", slug: "porte-accessoires" }
          ]
        },
        { id: "accessoires-cheminee", name: "Fireplace accessories", slug: "accessoires-cheminee" }
      ]
    },
    {
      id: "objets-artisanaux-locaux",
      name: "Handcrafted & Local Objects",
      slug: "objets-artisanaux-locaux",
      subcategories: [
        { id: "decorations-traditionnelles", name: "Traditional decorations", slug: "decorations-traditionnelles" },
        {
          id: "articles-berberes-orientaux",
          name: "Berber & oriental items",
          slug: "articles-berberes-orientaux",
          subcategories: [
            { id: "berberes", name: "Berber", slug: "berberes" },
            { id: "orientaux", name: "Oriental", slug: "orientaux" }
          ]
        },
        { id: "paniers-tresses", name: "Woven baskets", slug: "paniers-tresses" },
        { id: "poufs-artisanaux", name: "Handcrafted poufs", slug: "poufs-artisanaux" },
        { id: "art-mural-local", name: "Local wall art", slug: "art-mural-local" }
      ]
    }
  ]
};