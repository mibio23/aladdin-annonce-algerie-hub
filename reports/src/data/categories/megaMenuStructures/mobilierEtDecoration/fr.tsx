import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Armchair } from "lucide-react";

export const mobilierEtDecorationFr: MenuCategory = {
  id: "mobilier-et-decoration",
  name: "Mobilier & Décoration",
  slug: "mobilier-et-decoration",
  icon: <Armchair className="w-4 h-4" />,
  subcategories: [
    {
      id: "mobilier-salon-sejour",
      name: "Mobilier Salon & Séjour",
      slug: "mobilier-salon-sejour",
      subcategories: [
        {
          id: "canapes",
          name: "Canapés",
          slug: "canapes",
          subcategories: [
            { id: "angle", name: "Angle", slug: "angle" },
            { id: "droit", name: "Droit", slug: "droit" },
            { id: "convertible", name: "Convertible", slug: "convertible" },
            { id: "modulaires", name: "Modulaires", slug: "modulaires" }
          ]
        },
        {
          id: "fauteuils-poufs",
          name: "Fauteuils & poufs",
          slug: "fauteuils-poufs",
          subcategories: [
            { id: "fauteuils", name: "Fauteuils", slug: "fauteuils" },
            { id: "poufs", name: "Poufs", slug: "poufs" }
          ]
        },
        {
          id: "tables-basses",
          name: "Tables basses",
          slug: "tables-basses",
          subcategories: [
            { id: "bois", name: "Bois", slug: "bois" },
            { id: "verre", name: "Verre", slug: "verre" },
            { id: "metal", name: "Métal", slug: "metal" }
          ]
        },
        { id: "meubles-tv", name: "Meubles TV", slug: "meubles-tv" },
        { id: "etagères-bibliotheques", name: "Étagères & bibliothèques", slug: "etageres-bibliotheques" },
        { id: "meubles-rangement", name: "Meubles de rangement", slug: "meubles-rangement" },
        { id: "consoles-entree", name: "Consoles d’entrée", slug: "consoles-entree" },
        { id: "banquettes", name: "Banquettes", slug: "banquettes" },
        { id: "paravents", name: "Paravents", slug: "paravents" },
        { id: "tables-d-appoint", name: "Tables d’appoint", slug: "tables-d-appoint" }
      ]
    },
    {
      id: "mobilier-chambre",
      name: "Mobilier Chambre",
      slug: "mobilier-chambre",
      subcategories: [
        {
          id: "lits",
          name: "Lits",
          slug: "lits",
          subcategories: [
            { id: "simple", name: "Simple", slug: "simple" },
            { id: "double", name: "Double", slug: "double" },
            { id: "king", name: "King", slug: "king" },
            { id: "coffre", name: "Coffre", slug: "coffre" }
          ]
        },
        {
          id: "sommier-matelas",
          name: "Sommier & matelas",
          slug: "sommier-matelas",
          subcategories: [
            { id: "sommier", name: "Sommier", slug: "sommier" },
            { id: "matelas", name: "Matelas", slug: "matelas" }
          ]
        },
        { id: "tables-de-chevet", name: "Tables de chevet", slug: "tables-de-chevet" },
        {
          id: "armoires-penderies",
          name: "Armoires & penderies",
          slug: "armoires-penderies",
          subcategories: [
            { id: "armoires", name: "Armoires", slug: "armoires" },
            { id: "penderies", name: "Penderies", slug: "penderies" }
          ]
        },
        { id: "commode", name: "Commode", slug: "commode" },
        { id: "coiffeuses", name: "Coiffeuses", slug: "coiffeuses" },
        { id: "bancs-de-lit", name: "Bancs de lit", slug: "bancs-de-lit" },
        { id: "tetes-de-lit", name: "Têtes de lit", slug: "tetes-de-lit" },
        { id: "rangement-chaussures", name: "Rangement chaussures", slug: "rangement-chaussures" }
      ]
    },
    {
      id: "mobilier-salle-a-manger",
      name: "Mobilier Salle à Manger",
      slug: "mobilier-salle-a-manger",
      subcategories: [
        {
          id: "tables-a-manger",
          name: "Tables à manger",
          slug: "tables-a-manger",
          subcategories: [
            { id: "bois", name: "Bois", slug: "bois" },
            { id: "extensibles", name: "Extensibles", slug: "extensibles" },
            { id: "verre", name: "Verre", slug: "verre" }
          ]
        },
        {
          id: "chaises-fauteuils-salle-a-manger",
          name: "Chaises & fauteuils de salle à manger",
          slug: "chaises-fauteuils-salle-a-manger",
          subcategories: [
            { id: "chaises", name: "Chaises", slug: "chaises" },
            { id: "fauteuils", name: "Fauteuils", slug: "fauteuils" }
          ]
        },
        {
          id: "buffets-bahuts",
          name: "Buffets & bahuts",
          slug: "buffets-bahuts",
          subcategories: [
            { id: "buffets", name: "Buffets", slug: "buffets" },
            { id: "bahuts", name: "Bahuts", slug: "bahuts" }
          ]
        },
        { id: "vaisseliers", name: "Vaisseliers", slug: "vaisseliers" },
        { id: "meubles-bar", name: "Meubles bar", slug: "meubles-bar" },
        {
          id: "tabourets-chaises-hautes",
          name: "Tabourets & chaises hautes",
          slug: "tabourets-chaises-hautes",
          subcategories: [
            { id: "tabourets", name: "Tabourets", slug: "tabourets" },
            { id: "chaises-hautes", name: "Chaises hautes", slug: "chaises-hautes" }
          ]
        }
      ]
    },
    {
      id: "mobilier-cuisine",
      name: "Mobilier Cuisine",
      slug: "mobilier-cuisine",
      subcategories: [
        { id: "meubles-cuisine-modulaires", name: "Meubles cuisine modulaires", slug: "meubles-cuisine-modulaires" },
        { id: "plans-de-travail", name: "Plans de travail", slug: "plans-de-travail" },
        {
          id: "ilots-dessertes-cuisine",
          name: "Îlots & dessertes cuisine",
          slug: "ilots-dessertes-cuisine",
          subcategories: [
            { id: "ilots", name: "Îlots", slug: "ilots" },
            { id: "dessertes", name: "Dessertes", slug: "dessertes" }
          ]
        },
        { id: "rangement-cuisine", name: "Rangement cuisine", slug: "rangement-cuisine" },
        {
          id: "chariots-dessertes-roulettes",
          name: "Chariots & desserte à roulettes",
          slug: "chariots-dessertes-roulettes",
          subcategories: [
            { id: "chariots", name: "Chariots", slug: "chariots" },
            { id: "dessertes-a-roulettes", name: "Dessertes à roulettes", slug: "dessertes-a-roulettes" }
          ]
        },
        { id: "tabourets-cuisine", name: "Tabourets cuisine", slug: "tabourets-cuisine" },
        {
          id: "racks-epices-etageres-murales",
          name: "Racks épices & étagères murales",
          slug: "racks-epices-etageres-murales",
          subcategories: [
            { id: "racks-epices", name: "Racks épices", slug: "racks-epices" },
            { id: "etageres-murales", name: "Étagères murales", slug: "etageres-murales" }
          ]
        }
      ]
    },
    {
      id: "mobilier-bureau",
      name: "Mobilier Bureau",
      slug: "mobilier-bureau",
      subcategories: [
        { id: "bureaux-classiques", name: "Bureaux classiques", slug: "bureaux-classiques" },
        { id: "bureaux-gaming", name: "Bureaux gaming", slug: "bureaux-gaming" },
        { id: "chaises-bureau-ergonomiques", name: "Chaises de bureau ergonomiques", slug: "chaises-bureau-ergonomiques" },
        {
          id: "caissons-rangements",
          name: "Caissons & rangements",
          slug: "caissons-rangements",
          subcategories: [
            { id: "caissons", name: "Caissons", slug: "caissons" },
            { id: "rangements", name: "Rangements", slug: "rangements" }
          ]
        },
        { id: "bibliotheques-pro", name: "Bibliothèques pro", slug: "bibliotheques-pro" },
        {
          id: "support-ecrans-accessoires-bureau",
          name: "Support écrans & accessoires bureau",
          slug: "support-ecrans-accessoires-bureau",
          subcategories: [
            { id: "support-ecrans", name: "Support écrans", slug: "support-ecrans" },
            { id: "accessoires-bureau", name: "Accessoires bureau", slug: "accessoires-bureau" }
          ]
        },
        { id: "tables-dessin-architecte", name: "Tables dessin & architecte", slug: "tables-dessin-architecte" }
      ]
    },
    {
      id: "mobilier-salle-de-bain",
      name: "Mobilier Salle de Bain",
      slug: "mobilier-salle-de-bain",
      subcategories: [
        { id: "meubles-sous-vasques", name: "Meubles sous-vasques", slug: "meubles-sous-vasques" },
        {
          id: "colonnes-rangements-bain",
          name: "Colonnes & rangements",
          slug: "colonnes-rangements-bain",
          subcategories: [
            { id: "colonnes", name: "Colonnes", slug: "colonnes" },
            { id: "rangements", name: "Rangements", slug: "rangements" }
          ]
        },
        { id: "etageres-murales-bain", name: "Étagères murales", slug: "etageres-murales-bain" },
        { id: "armoires-miroir", name: "Armoires miroir", slug: "armoires-miroir" },
        {
          id: "bancs-tabourets-bain",
          name: "Bancs & tabourets bain",
          slug: "bancs-tabourets-bain",
          subcategories: [
            { id: "bancs", name: "Bancs", slug: "bancs" },
            { id: "tabourets", name: "Tabourets", slug: "tabourets" }
          ]
        },
        { id: "paniers-linge", name: "Paniers linge", slug: "paniers-linge" },
        { id: "porte-serviettes", name: "Porte-serviettes", slug: "porte-serviettes" },
        { id: "accessoires-bain", name: "Accessoires bain", slug: "accessoires-bain" }
      ]
    },
    {
      id: "mobilier-exterieur-jardin",
      name: "Mobilier Extérieur & Jardin",
      slug: "mobilier-exterieur-jardin",
      subcategories: [
        {
          id: "salons-de-jardin",
          name: "Salons de jardin",
          slug: "salons-de-jardin",
          subcategories: [
            { id: "resine", name: "Résine", slug: "resine" },
            { id: "aluminium", name: "Aluminium", slug: "aluminium" },
            { id: "bois", name: "Bois", slug: "bois" }
          ]
        },
        {
          id: "tables-chaises-exterieures",
          name: "Tables & chaises extérieures",
          slug: "tables-chaises-exterieures",
          subcategories: [
            { id: "tables", name: "Tables", slug: "tables" },
            { id: "chaises", name: "Chaises", slug: "chaises" }
          ]
        },
        {
          id: "transats-bains-de-soleil",
          name: "Transats & bains de soleil",
          slug: "transats-bains-de-soleil",
          subcategories: [
            { id: "transats", name: "Transats", slug: "transats" },
            { id: "bains-de-soleil", name: "Bains de soleil", slug: "bains-de-soleil" }
          ]
        },
        {
          id: "hamacs-balancelles",
          name: "Hamacs & balancelles",
          slug: "hamacs-balancelles",
          subcategories: [
            { id: "hamacs", name: "Hamacs", slug: "hamacs" },
            { id: "balancelles", name: "Balancelles", slug: "balancelles" }
          ]
        },
        { id: "pergolas", name: "Pergolas", slug: "pergolas" },
        { id: "parasols", name: "Parasols", slug: "parasols" },
        { id: "coffres-rangement-exterieur", name: "Coffres de rangement extérieur", slug: "coffres-rangement-exterieur" },
        {
          id: "barbecue-cuisine-exterieure",
          name: "Barbecue & cuisine d’extérieur",
          slug: "barbecue-cuisine-exterieure",
          subcategories: [
            { id: "barbecue", name: "Barbecue", slug: "barbecue" },
            { id: "cuisine-exterieure", name: "Cuisine d’extérieur", slug: "cuisine-exterieure" }
          ]
        }
      ]
    },
    {
      id: "decoration-murale",
      name: "Décoration Murale",
      slug: "decoration-murale",
      subcategories: [
        {
          id: "tableaux",
          name: "Tableaux",
          slug: "tableaux",
          subcategories: [
            { id: "abstraits", name: "Abstraits", slug: "abstraits" },
            { id: "modernes", name: "Modernes", slug: "modernes" },
            { id: "islamiques", name: "Islamiques", slug: "islamiques" }
          ]
        },
        {
          id: "affiches-posters",
          name: "Affiches & posters",
          slug: "affiches-posters",
          subcategories: [
            { id: "affiches", name: "Affiches", slug: "affiches" },
            { id: "posters", name: "Posters", slug: "posters" }
          ]
        },
        { id: "miroirs-decoratifs", name: "Miroirs décoratifs", slug: "miroirs-decoratifs" },
        { id: "horloges-murales", name: "Horloges murales", slug: "horloges-murales" },
        { id: "stickers-muraux", name: "Stickers muraux", slug: "stickers-muraux" },
        { id: "decorations-metal", name: "Décorations en métal", slug: "decorations-metal" },
        { id: "panneaux-muraux-3d", name: "Panneaux muraux 3D", slug: "panneaux-muraux-3d" },
        {
          id: "tapisseries-toiles-imprimees",
          name: "Tapisseries & toiles imprimées",
          slug: "tapisseries-toiles-imprimees",
          subcategories: [
            { id: "tapisseries", name: "Tapisseries", slug: "tapisseries" },
            { id: "toiles-imprimees", name: "Toiles imprimées", slug: "toiles-imprimees" }
          ]
        }
      ]
    },
    {
      id: "luminaires-eclairage",
      name: "Luminaires & Éclairage",
      slug: "luminaires-eclairage",
      subcategories: [
        { id: "lampes-de-table", name: "Lampes de table", slug: "lampes-de-table" },
        { id: "lampadaires", name: "Lampadaires", slug: "lampadaires" },
        {
          id: "suspensions-lustres",
          name: "Suspensions & lustres",
          slug: "suspensions-lustres",
          subcategories: [
            { id: "suspensions", name: "Suspensions", slug: "suspensions" },
            { id: "lustres", name: "Lustres", slug: "lustres" }
          ]
        },
        { id: "appliques-murales", name: "Appliques murales", slug: "appliques-murales" },
        { id: "luminaires-led", name: "Luminaires LED", slug: "luminaires-led" },
        { id: "lampes-de-bureau", name: "Lampes de bureau", slug: "lampes-de-bureau" },
        { id: "guirlandes-lumineuses", name: "Guirlandes lumineuses", slug: "guirlandes-lumineuses" },
        { id: "rubans-led", name: "Rubans LED", slug: "rubans-led" },
        { id: "eclairage-exterieur", name: "Éclairage extérieur", slug: "eclairage-exterieur" }
      ]
    },
    {
      id: "tapis-textiles-maison",
      name: "Tapis & Textiles Maison",
      slug: "tapis-textiles-maison",
      subcategories: [
        {
          id: "tapis",
          name: "Tapis",
          slug: "tapis",
          subcategories: [
            { id: "salon", name: "Salon", slug: "salon" },
            { id: "chambre", name: "Chambre", slug: "chambre" },
            { id: "orientaux", name: "Orientaux", slug: "orientaux" },
            { id: "modernes", name: "Modernes", slug: "modernes" }
          ]
        },
        {
          id: "rideaux-voilages",
          name: "Rideaux & voilages",
          slug: "rideaux-voilages",
          subcategories: [
            { id: "rideaux", name: "Rideaux", slug: "rideaux" },
            { id: "voilages", name: "Voilages", slug: "voilages" }
          ]
        },
        {
          id: "stores",
          name: "Stores",
          slug: "stores",
          subcategories: [
            { id: "rouleaux", name: "Rouleaux", slug: "rouleaux" },
            { id: "venitiens", name: "Vénitiens", slug: "venitiens" },
            { id: "bambou", name: "Bambou", slug: "bambou" }
          ]
        },
        {
          id: "coussins-housses",
          name: "Coussins & housses",
          slug: "coussins-housses",
          subcategories: [
            { id: "coussins", name: "Coussins", slug: "coussins" },
            { id: "housses", name: "Housses", slug: "housses" }
          ]
        },
        {
          id: "jetes-plaids",
          name: "Jetés & plaids",
          slug: "jetes-plaids",
          subcategories: [
            { id: "jetes", name: "Jetés", slug: "jetes" },
            { id: "plaids", name: "Plaids", slug: "plaids" }
          ]
        },
        { id: "linge-de-lit", name: "Linge de lit", slug: "linge-de-lit" },
        { id: "linge-de-bain", name: "Linge de bain", slug: "linge-de-bain" },
        {
          id: "nappes-textiles-cuisine",
          name: "Nappes & textiles cuisine",
          slug: "nappes-textiles-cuisine",
          subcategories: [
            { id: "nappes", name: "Nappes", slug: "nappes" },
            { id: "textiles-cuisine", name: "Textiles cuisine", slug: "textiles-cuisine" }
          ]
        }
      ]
    },
    {
      id: "decoration-art-maison",
      name: "Décoration & Art de Maison",
      slug: "decoration-art-maison",
      subcategories: [
        {
          id: "vases-pots-decoratifs",
          name: "Vases & pots décoratifs",
          slug: "vases-pots-decoratifs",
          subcategories: [
            { id: "vases", name: "Vases", slug: "vases" },
            { id: "pots", name: "Pots", slug: "pots" }
          ]
        },
        {
          id: "bougies-photophores",
          name: "Bougies & photophores",
          slug: "bougies-photophores",
          subcategories: [
            { id: "bougies", name: "Bougies", slug: "bougies" },
            { id: "photophores", name: "Photophores", slug: "photophores" }
          ]
        },
        {
          id: "sculptures-statuettes",
          name: "Sculptures & statuettes",
          slug: "sculptures-statuettes",
          subcategories: [
            { id: "sculptures", name: "Sculptures", slug: "sculptures" },
            { id: "statuettes", name: "Statuettes", slug: "statuettes" }
          ]
        },
        { id: "articles-artisanaux", name: "Articles artisanaux", slug: "articles-artisanaux" },
        {
          id: "objets-decoratifs",
          name: "Objets décoratifs",
          slug: "objets-decoratifs",
          subcategories: [
            { id: "bois", name: "Bois", slug: "bois" },
            { id: "metal", name: "Métal", slug: "metal" },
            { id: "verre", name: "Verre", slug: "verre" }
          ]
        },
        { id: "plateaux-decoratifs", name: "Plateaux décoratifs", slug: "plateaux-decoratifs" },
        {
          id: "coffrets-boites",
          name: "Coffrets & boîtes",
          slug: "coffrets-boites",
          subcategories: [
            { id: "coffrets", name: "Coffrets", slug: "coffrets" },
            { id: "boites", name: "Boîtes", slug: "boites" }
          ]
        }
      ]
    },
    {
      id: "rangement-organisation",
      name: "Rangement & Organisation",
      slug: "rangement-organisation",
      subcategories: [
        {
          id: "boites-paniers",
          name: "Boîtes & paniers",
          slug: "boites-paniers",
          subcategories: [
            { id: "boites", name: "Boîtes", slug: "boites" },
            { id: "paniers", name: "Paniers", slug: "paniers" }
          ]
        },
        { id: "organiseurs-tiroirs", name: "Organiseurs tiroirs", slug: "organiseurs-tiroirs" },
        { id: "etageres-modulaires", name: "Étagères modulaires", slug: "etageres-modulaires" },
        {
          id: "meubles-rangement-materiaux",
          name: "Meubles de rangement plastique/bois/métal",
          slug: "meubles-rangement-materiaux",
          subcategories: [
            { id: "plastique", name: "Plastique", slug: "plastique" },
            { id: "bois", name: "Bois", slug: "bois" },
            { id: "metal", name: "Métal", slug: "metal" }
          ]
        },
        { id: "portemanteaux", name: "Portemanteaux", slug: "portemanteaux" },
        {
          id: "pateres-crochets",
          name: "Patères & crochets",
          slug: "pateres-crochets",
          subcategories: [
            { id: "pateres", name: "Patères", slug: "pateres" },
            { id: "crochets", name: "Crochets", slug: "crochets" }
          ]
        },
        { id: "armoires-pliables", name: "Armoires pliables", slug: "armoires-pliables" },
        { id: "rayonnages", name: "Rayonnages", slug: "rayonnages" }
      ]
    },
    {
      id: "maison-intelligente",
      name: "Maison Intelligente (Smart Home)",
      slug: "maison-intelligente",
      subcategories: [
        { id: "ampoules-connectees", name: "Ampoules connectées", slug: "ampoules-connectees" },
        { id: "prises-intelligentes", name: "Prises intelligentes", slug: "prises-intelligentes" },
        {
          id: "capteurs-detecteurs",
          name: "Capteurs & détecteurs",
          slug: "capteurs-detecteurs",
          subcategories: [
            { id: "capteurs", name: "Capteurs", slug: "capteurs" },
            { id: "detecteurs", name: "Détecteurs", slug: "detecteurs" }
          ]
        },
        { id: "commandes-distance", name: "Commandes à distance", slug: "commandes-distance" },
        { id: "gadgets-domotiques-decoratifs", name: "Gadgets domotiques décoratifs", slug: "gadgets-domotiques-decoratifs" }
      ]
    },
    {
      id: "decoration-vegetale-plantes",
      name: "Décoration Végétale & Plantes",
      slug: "decoration-vegetale-plantes",
      subcategories: [
        { id: "plantes-naturelles", name: "Plantes naturelles", slug: "plantes-naturelles" },
        { id: "plantes-artificielles", name: "Plantes artificielles", slug: "plantes-artificielles" },
        { id: "pots-de-fleurs", name: "Pots de fleurs", slug: "pots-de-fleurs" },
        { id: "jardinieres", name: "Jardinières", slug: "jardinieres" },
        { id: "support-plantes", name: "Support plantes", slug: "support-plantes" },
        { id: "terrariums", name: "Terrariums", slug: "terrariums" },
        { id: "decoration-botanique", name: "Décoration botanique", slug: "decoration-botanique" }
      ]
    },
    {
      id: "decoration-enfant-bebe",
      name: "Décoration Enfant & Bébé",
      slug: "decoration-enfant-bebe",
      subcategories: [
        { id: "mobilier-chambre-enfant", name: "Mobilier chambre enfant", slug: "mobilier-chambre-enfant" },
        { id: "luminaires-enfant", name: "Luminaires enfant", slug: "luminaires-enfant" },
        {
          id: "stickers-posters-enfant",
          name: "Stickers & posters enfant",
          slug: "stickers-posters-enfant",
          subcategories: [
            { id: "stickers-enfant", name: "Stickers enfant", slug: "stickers-enfant" },
            { id: "posters-enfant", name: "Posters enfant", slug: "posters-enfant" }
          ]
        },
        { id: "rangements-jouets", name: "Rangements jouets", slug: "rangements-jouets" },
        {
          id: "petits-fauteuils-poufs",
          name: "Petits fauteuils & poufs",
          slug: "petits-fauteuils-poufs",
          subcategories: [
            { id: "petits-fauteuils", name: "Petits fauteuils", slug: "petits-fauteuils" },
            { id: "poufs", name: "Poufs", slug: "poufs" }
          ]
        }
      ]
    },
    {
      id: "styles-decoratifs",
      name: "Styles Décoratifs",
      slug: "styles-decoratifs",
      subcategories: [
        { id: "scandinave", name: "Scandinave", slug: "scandinave" },
        { id: "moderne", name: "Moderne", slug: "moderne" },
        { id: "minimaliste", name: "Minimaliste", slug: "minimaliste" },
        { id: "industriel", name: "Industriel", slug: "industriel" },
        { id: "boheme", name: "Bohème", slug: "boheme" },
        { id: "vintage", name: "Vintage", slug: "vintage" },
        { id: "art-deco", name: "Art déco", slug: "art-deco" },
        { id: "rustique-campagne", name: "Rustique & campagne", slug: "rustique-campagne" },
        { id: "oriental-marocain", name: "Oriental & marocain", slug: "oriental-marocain" },
        { id: "contemporain", name: "Contemporain", slug: "contemporain" },
        { id: "classique", name: "Classique", slug: "classique" },
        { id: "luxe-premium", name: "Luxe & premium", slug: "luxe-premium" }
      ]
    },
    {
      id: "materiaux",
      name: "Matériaux",
      slug: "materiaux",
      subcategories: [
        { id: "bois-massif", name: "Bois massif", slug: "bois-massif" },
        { id: "mdf", name: "MDF", slug: "mdf" },
        { id: "metal", name: "Métal", slug: "metal" },
        { id: "aluminium", name: "Aluminium", slug: "aluminium" },
        { id: "verre", name: "Verre", slug: "verre" },
        { id: "rotin", name: "Rotin", slug: "rotin" },
        { id: "bambou", name: "Bambou", slug: "bambou" },
        { id: "resine-tressee", name: "Résine tressée", slug: "resine-tressee" },
        { id: "marbre", name: "Marbre", slug: "marbre" },
        { id: "ceramique", name: "Céramique", slug: "ceramique" },
        { id: "tissu", name: "Tissu", slug: "tissu" },
        { id: "velours", name: "Velours", slug: "velours" },
        {
          id: "cuir-simili",
          name: "Cuir & simili",
          slug: "cuir-simili",
          subcategories: [
            { id: "cuir", name: "Cuir", slug: "cuir" },
            { id: "simili", name: "Simili", slug: "simili" }
          ]
        },
        { id: "beton-decoratif", name: "Béton décoratif", slug: "beton-decoratif" }
      ]
    },
    {
      id: "accessoires-maison",
      name: "Accessoires de Maison",
      slug: "accessoires-maison",
      subcategories: [
        {
          id: "horloges-reveils",
          name: "Horloges & réveils",
          slug: "horloges-reveils",
          subcategories: [
            { id: "horloges", name: "Horloges", slug: "horloges" },
            { id: "reveils", name: "Réveils", slug: "reveils" }
          ]
        },
        { id: "cadres-photo", name: "Cadres photo", slug: "cadres-photo" },
        { id: "parfums-interieur", name: "Parfums d’intérieur", slug: "parfums-interieur" },
        { id: "fontaines-decoratives", name: "Fontaines décoratives", slug: "fontaines-decoratives" },
        { id: "distributeurs-savon-design", name: "Distributeurs savon design", slug: "distributeurs-savon-design" },
        {
          id: "cintres-porte-accessoires",
          name: "Cintres & porte-accessoires",
          slug: "cintres-porte-accessoires",
          subcategories: [
            { id: "cintres", name: "Cintres", slug: "cintres" },
            { id: "porte-accessoires", name: "Porte-accessoires", slug: "porte-accessoires" }
          ]
        },
        { id: "accessoires-cheminee", name: "Accessoires cheminée", slug: "accessoires-cheminee" }
      ]
    },
    {
      id: "objets-artisanaux-locaux",
      name: "Objets Artisanaux & Locaux",
      slug: "objets-artisanaux-locaux",
      subcategories: [
        { id: "decorations-traditionnelles", name: "Décorations traditionnelles", slug: "decorations-traditionnelles" },
        {
          id: "articles-berberes-orientaux",
          name: "Articles berbères & orientaux",
          slug: "articles-berberes-orientaux",
          subcategories: [
            { id: "berberes", name: "Berbères", slug: "berberes" },
            { id: "orientaux", name: "Orientaux", slug: "orientaux" }
          ]
        },
        { id: "paniers-tresses", name: "Paniers tressés", slug: "paniers-tresses" },
        { id: "poufs-artisanaux", name: "Poufs artisanaux", slug: "poufs-artisanaux" },
        { id: "art-mural-local", name: "Art mural local", slug: "art-mural-local" }
      ]
    }
  ]
};