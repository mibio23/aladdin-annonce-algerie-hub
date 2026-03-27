import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Armchair } from "lucide-react";

export const mobilierEtDecorationDe: MenuCategory = {
  id: "mobilier-et-decoration",
  name: "Möbel & Dekoration",
  slug: "mobilier-et-decoration",
  icon: <Armchair className="w-4 h-4" />,
  subcategories: [
    {
      id: "mobilier-salon-sejour",
      name: "Wohnzimmermöbel",
      slug: "mobilier-salon-sejour",
      subcategories: [
        {
          id: "canapes",
          name: "Sofas",
          slug: "canapes",
          subcategories: [
            { id: "angle", name: "Ecksofas", slug: "angle" },
            { id: "droit", name: "Standardsofas", slug: "droit" },
            { id: "convertible", name: "Schlafsofas", slug: "convertible" },
            { id: "modulaires", name: "Modular", slug: "modulaires" }
          ]
        },
        {
          id: "fauteuils-poufs",
          name: "Sessel & Sitzhocker",
          slug: "fauteuils-poufs",
          subcategories: [
            { id: "fauteuils", name: "Sessel", slug: "fauteuils" },
            { id: "poufs", name: "Sitzhocker", slug: "poufs" }
          ]
        },
        {
          id: "tables-basses",
          name: "Couchtische",
          slug: "tables-basses",
          subcategories: [
            { id: "bois", name: "Holz", slug: "bois" },
            { id: "verre", name: "Glas", slug: "verre" },
            { id: "metal", name: "Metall", slug: "metal" }
          ]
        },
        { id: "meubles-tv", name: "TV-Möbel", slug: "meubles-tv" },
        { id: "etagères-bibliotheques", name: "Regale & Bücherregale", slug: "etageres-bibliotheques" },
        { id: "meubles-rangement", name: "Aufbewahrungsmöbel", slug: "meubles-rangement" },
        { id: "consoles-entree", name: "Eingangskonsolen", slug: "consoles-entree" },
        { id: "banquettes", name: "Sitzbänke", slug: "banquettes" },
        { id: "paravents", name: "Raumteiler", slug: "paravents" },
        { id: "tables-d-appoint", name: "Beistelltische", slug: "tables-d-appoint" }
      ]
    },
    {
      id: "mobilier-chambre",
      name: "Schlafzimmermöbel",
      slug: "mobilier-chambre",
      subcategories: [
        {
          id: "lits",
          name: "Betten",
          slug: "lits",
          subcategories: [
            { id: "simple", name: "Einzelbett", slug: "simple" },
            { id: "double", name: "Doppelbett", slug: "double" },
            { id: "king", name: "King-Size", slug: "king" },
            { id: "coffre", name: "Mit Bettkasten", slug: "coffre" }
          ]
        },
        {
          id: "sommier-matelas",
          name: "Lattenroste & Matratzen",
          slug: "sommier-matelas",
          subcategories: [
            { id: "sommier", name: "Lattenrost", slug: "sommier" },
            { id: "matelas", name: "Matratze", slug: "matelas" }
          ]
        },
        { id: "tables-de-chevet", name: "Nachttische", slug: "tables-de-chevet" },
        {
          id: "armoires-penderies",
          name: "Kleiderschränke & Garderoben",
          slug: "armoires-penderies",
          subcategories: [
            { id: "armoires", name: "Kleiderschränke", slug: "armoires" },
            { id: "penderies", name: "Garderoben", slug: "penderies" }
          ]
        },
        { id: "commode", name: "Kommoden", slug: "commode" },
        { id: "coiffeuses", name: "Schminktische", slug: "coiffeuses" },
        { id: "bancs-de-lit", name: "Bettbänke", slug: "bancs-de-lit" },
        { id: "tetes-de-lit", name: "Kopfteile", slug: "tetes-de-lit" },
        { id: "rangement-chaussures", name: "Schuhaufbewahrung", slug: "rangement-chaussures" }
      ]
    },
    {
      id: "mobilier-salle-a-manger",
      name: "Esszimmermöbel",
      slug: "mobilier-salle-a-manger",
      subcategories: [
        {
          id: "tables-a-manger",
          name: "Esstische",
          slug: "tables-a-manger",
          subcategories: [
            { id: "bois", name: "Holz", slug: "bois" },
            { id: "extensibles", name: "Ausziehbar", slug: "extensibles" },
            { id: "verre", name: "Glas", slug: "verre" }
          ]
        },
        {
          id: "chaises-fauteuils-salle-a-manger",
          name: "Esszimmerstühle & Sessel",
          slug: "chaises-fauteuils-salle-a-manger",
          subcategories: [
            { id: "chaises", name: "Stühle", slug: "chaises" },
            { id: "fauteuils", name: "Sessel", slug: "fauteuils" }
          ]
        },
        {
          id: "buffets-bahuts",
          name: "Buffets & Anrichten",
          slug: "buffets-bahuts",
          subcategories: [
            { id: "buffets", name: "Buffets", slug: "buffets" },
            { id: "bahuts", name: "Anrichten", slug: "bahuts" }
          ]
        },
        { id: "vaisseliers", name: "Geschirrschränke", slug: "vaisseliers" },
        { id: "meubles-bar", name: "Bar-Möbel", slug: "meubles-bar" },
        {
          id: "tabourets-chaises-hautes",
          name: "Barhocker & Hochstühle",
          slug: "tabourets-chaises-hautes",
          subcategories: [
            { id: "tabourets", name: "Hocker", slug: "tabourets" },
            { id: "chaises-hautes", name: "Hochstühle", slug: "chaises-hautes" }
          ]
        }
      ]
    },
    {
      id: "mobilier-cuisine",
      name: "Küchenmöbel",
      slug: "mobilier-cuisine",
      subcategories: [
        { id: "meubles-cuisine-modulaires", name: "Modulare Küchenmöbel", slug: "meubles-cuisine-modulaires" },
        { id: "plans-de-travail", name: "Arbeitsplatten", slug: "plans-de-travail" },
        {
          id: "ilots-dessertes-cuisine",
          name: "Kücheninseln & Servierwagen",
          slug: "ilots-dessertes-cuisine",
          subcategories: [
            { id: "ilots", name: "Kücheninseln", slug: "ilots" },
            { id: "dessertes", name: "Servierwagen", slug: "dessertes" }
          ]
        },
        { id: "rangement-cuisine", name: "Küchenaufbewahrung", slug: "rangement-cuisine" },
        {
          id: "chariots-dessertes-roulettes",
          name: "Küchenwagen & Rollwagen",
          slug: "chariots-dessertes-roulettes",
          subcategories: [
            { id: "chariots", name: "Küchenwagen", slug: "chariots" },
            { id: "dessertes-a-roulettes", name: "Rollwagen", slug: "dessertes-a-roulettes" }
          ]
        },
        { id: "tabourets-cuisine", name: "Küchenhocker", slug: "tabourets-cuisine" },
        {
          id: "racks-epices-etageres-murales",
          name: "Gewürzregale & Wandregale",
          slug: "racks-epices-etageres-murales",
          subcategories: [
            { id: "racks-epices", name: "Gewürzregale", slug: "racks-epices" },
            { id: "etageres-murales", name: "Wandregale", slug: "etageres-murales" }
          ]
        }
      ]
    },
    {
      id: "mobilier-bureau",
      name: "Büromöbel",
      slug: "mobilier-bureau",
      subcategories: [
        { id: "bureaux-classiques", name: "Klassische Schreibtische", slug: "bureaux-classiques" },
        { id: "bureaux-gaming", name: "Gaming-Schreibtische", slug: "bureaux-gaming" },
        { id: "chaises-bureau-ergonomiques", name: "Ergonomische Bürostühle", slug: "chaises-bureau-ergonomiques" },
        {
          id: "caissons-rangements",
          name: "Rollcontainer & Aufbewahrung",
          slug: "caissons-rangements",
          subcategories: [
            { id: "caissons", name: "Rollcontainer", slug: "caissons" },
            { id: "rangements", name: "Aufbewahrung", slug: "rangements" }
          ]
        },
        { id: "bibliotheques-pro", name: "Büro-Bücherregale", slug: "bibliotheques-pro" },
        {
          id: "support-ecrans-accessoires-bureau",
          name: "Monitorhalterungen & Büroaccessoires",
          slug: "support-ecrans-accessoires-bureau",
          subcategories: [
            { id: "support-ecrans", name: "Monitorhalterungen", slug: "support-ecrans" },
            { id: "accessoires-bureau", name: "Büroaccessoires", slug: "accessoires-bureau" }
          ]
        },
        { id: "tables-dessin-architecte", name: "Zeichentische & Architektentische", slug: "tables-dessin-architecte" }
      ]
    },
    {
      id: "mobilier-salle-de-bain",
      name: "Badezimmermöbel",
      slug: "mobilier-salle-de-bain",
      subcategories: [
        { id: "meubles-sous-vasques", name: "Waschbeckenunterschränke", slug: "meubles-sous-vasques" },
        {
          id: "colonnes-rangements-bain",
          name: "Hochschränke & Aufbewahrung",
          slug: "colonnes-rangements-bain",
          subcategories: [
            { id: "colonnes", name: "Hochschränke", slug: "colonnes" },
            { id: "rangements", name: "Aufbewahrung", slug: "rangements" }
          ]
        },
        { id: "etageres-murales-bain", name: "Wandregale", slug: "etageres-murales-bain" },
        { id: "armoires-miroir", name: "Spiegelschränke", slug: "armoires-miroir" },
        {
          id: "bancs-tabourets-bain",
          name: "Bänke & Hocker",
          slug: "bancs-tabourets-bain",
          subcategories: [
            { id: "bancs", name: "Bänke", slug: "bancs" },
            { id: "tabourets", name: "Hocker", slug: "tabourets" }
          ]
        },
        { id: "paniers-linge", name: "Wäschekörbe", slug: "paniers-linge" },
        { id: "porte-serviettes", name: "Handtuchhalter", slug: "porte-serviettes" },
        { id: "accessoires-bain", name: "Badezimmer-Accessoires", slug: "accessoires-bain" }
      ]
    },
    {
      id: "mobilier-exterieur-jardin",
      name: "Außen- & Gartenmöbel",
      slug: "mobilier-exterieur-jardin",
      subcategories: [
        {
          id: "salons-de-jardin",
          name: "Gartenmöbelsets",
          slug: "salons-de-jardin",
          subcategories: [
            { id: "resine", name: "Kunstharz", slug: "resine" },
            { id: "aluminium", name: "Aluminium", slug: "aluminium" },
            { id: "bois", name: "Holz", slug: "bois" }
          ]
        },
        {
          id: "tables-chaises-exterieures",
          name: "Außentische & -Stühle",
          slug: "tables-chaises-exterieures",
          subcategories: [
            { id: "tables", name: "Tische", slug: "tables" },
            { id: "chaises", name: "Stühle", slug: "chaises" }
          ]
        },
        {
          id: "transats-bains-de-soleil",
          name: "Liegestühle & Sonnenliegen",
          slug: "transats-bains-de-soleil",
          subcategories: [
            { id: "transats", name: "Liegestühle", slug: "transats" },
            { id: "bains-de-soleil", name: "Sonnenliegen", slug: "bains-de-soleil" }
          ]
        },
        {
          id: "hamacs-balancelles",
          name: "Hängematten & Gartenschaukeln",
          slug: "hamacs-balancelles",
          subcategories: [
            { id: "hamacs", name: "Hängematten", slug: "hamacs" },
            { id: "balancelles", name: "Gartenschaukeln", slug: "balancelles" }
          ]
        },
        { id: "pergolas", name: "Pergolen", slug: "pergolas" },
        { id: "parasols", name: "Sonnenschirme", slug: "parasols" },
        { id: "coffres-rangement-exterieur", name: "Aufbewahrungstruhen für draußen", slug: "coffres-rangement-exterieur" },
        {
          id: "barbecue-cuisine-exterieure",
          name: "Grills & Außenküchen",
          slug: "barbecue-cuisine-exterieure",
          subcategories: [
            { id: "barbecue", name: "Grills", slug: "barbecue" },
            { id: "cuisine-exterieure", name: "Außenküchen", slug: "cuisine-exterieure" }
          ]
        }
      ]
    },
    {
      id: "decoration-murale",
      name: "Wanddekoration",
      slug: "decoration-murale",
      subcategories: [
        {
          id: "tableaux",
          name: "Gemälde",
          slug: "tableaux",
          subcategories: [
            { id: "abstraits", name: "Abstrakt", slug: "abstraits" },
            { id: "modernes", name: "Modern", slug: "modernes" },
            { id: "islamiques", name: "Islamisch", slug: "islamiques" }
          ]
        },
        {
          id: "affiches-posters",
          name: "Plakate & Poster",
          slug: "affiches-posters",
          subcategories: [
            { id: "affiches", name: "Plakate", slug: "affiches" },
            { id: "posters", name: "Poster", slug: "posters" }
          ]
        },
        { id: "miroirs-decoratifs", name: "Dekorative Spiegel", slug: "miroirs-decoratifs" },
        { id: "horloges-murales", name: "Wanduhren", slug: "horloges-murales" },
        { id: "stickers-muraux", name: "Wandsticker", slug: "stickers-muraux" },
        { id: "decorations-metal", name: "Metalldekorationen", slug: "decorations-metal" },
        { id: "panneaux-muraux-3d", name: "3D-Wandpaneele", slug: "panneaux-muraux-3d" },
        {
          id: "tapisseries-toiles-imprimees",
          name: "Wandteppiche & Druckleinwände",
          slug: "tapisseries-toiles-imprimees",
          subcategories: [
            { id: "tapisseries", name: "Wandteppiche", slug: "tapisseries" },
            { id: "toiles-imprimees", name: "Druckleinwände", slug: "toiles-imprimees" }
          ]
        }
      ]
    },
    {
      id: "luminaires-eclairage",
      name: "Leuchten & Beleuchtung",
      slug: "luminaires-eclairage",
      subcategories: [
        { id: "lampes-de-table", name: "Tischlampen", slug: "lampes-de-table" },
        { id: "lampadaires", name: "Stehlampen", slug: "lampadaires" },
        {
          id: "suspensions-lustres",
          name: "Pendelleuchten & Kronleuchter",
          slug: "suspensions-lustres",
          subcategories: [
            { id: "suspensions", name: "Pendelleuchten", slug: "suspensions" },
            { id: "lustres", name: "Kronleuchter", slug: "lustres" }
          ]
        },
        { id: "appliques-murales", name: "Wandleuchten", slug: "appliques-murales" },
        { id: "luminaires-led", name: "LED-Leuchten", slug: "luminaires-led" },
        { id: "lampes-de-bureau", name: "Schreibtischlampen", slug: "lampes-de-bureau" },
        { id: "guirlandes-lumineuses", name: "Lichterketten", slug: "guirlandes-lumineuses" },
        { id: "rubans-led", name: "LED-Streifen", slug: "rubans-led" },
        { id: "eclairage-exterieur", name: "Außenbeleuchtung", slug: "eclairage-exterieur" }
      ]
    },
    {
      id: "tapis-textiles-maison",
      name: "Teppiche & Heimtextilien",
      slug: "tapis-textiles-maison",
      subcategories: [
        {
          id: "tapis",
          name: "Teppiche",
          slug: "tapis",
          subcategories: [
            { id: "salon", name: "Wohnzimmer", slug: "salon" },
            { id: "chambre", name: "Schlafzimmer", slug: "chambre" },
            { id: "orientaux", name: "Orientalisch", slug: "orientaux" },
            { id: "modernes", name: "Modern", slug: "modernes" }
          ]
        },
        {
          id: "rideaux-voilages",
          name: "Vorhänge & Gardinen",
          slug: "rideaux-voilages",
          subcategories: [
            { id: "rideaux", name: "Vorhänge", slug: "rideaux" },
            { id: "voilages", name: "Gardinen", slug: "voilages" }
          ]
        },
        {
          id: "stores",
          name: "Rollos & Jalousien",
          slug: "stores",
          subcategories: [
            { id: "rouleaux", name: "Rollos", slug: "rouleaux" },
            { id: "venitiens", name: "Jalousien", slug: "venitiens" },
            { id: "bambou", name: "Bambus", slug: "bambou" }
          ]
        },
        {
          id: "coussins-housses",
          name: "Kissen & Bezüge",
          slug: "coussins-housses",
          subcategories: [
            { id: "coussins", name: "Kissen", slug: "coussins" },
            { id: "housses", name: "Bezüge", slug: "housses" }
          ]
        },
        {
          id: "jetes-plaids",
          name: "Überwürfe & Plaids",
          slug: "jetes-plaids",
          subcategories: [
            { id: "jetes", name: "Überwürfe", slug: "jetes" },
            { id: "plaids", name: "Plaids", slug: "plaids" }
          ]
        },
        { id: "linge-de-lit", name: "Bettwäsche", slug: "linge-de-lit" },
        { id: "linge-de-bain", name: "Badwäsche", slug: "linge-de-bain" },
        {
          id: "nappes-textiles-cuisine",
          name: "Tischdecken & Küchentextilien",
          slug: "nappes-textiles-cuisine",
          subcategories: [
            { id: "nappes", name: "Tischdecken", slug: "nappes" },
            { id: "textiles-cuisine", name: "Küchentextilien", slug: "textiles-cuisine" }
          ]
        }
      ]
    },
    {
      id: "decoration-art-maison",
      name: "Dekoration & Hauskunst",
      slug: "decoration-art-maison",
      subcategories: [
        {
          id: "vases-pots-decoratifs",
          name: "Dekorative Vasen & Töpfe",
          slug: "vases-pots-decoratifs",
          subcategories: [
            { id: "vases", name: "Vasen", slug: "vases" },
            { id: "pots", name: "Töpfe", slug: "pots" }
          ]
        },
        {
          id: "bougies-photophores",
          name: "Kerzen & Windlichter",
          slug: "bougies-photophores",
          subcategories: [
            { id: "bougies", name: "Kerzen", slug: "bougies" },
            { id: "photophores", name: "Windlichter", slug: "photophores" }
          ]
        },
        {
          id: "sculptures-statuettes",
          name: "Skulpturen & Statuen",
          slug: "sculptures-statuettes",
          subcategories: [
            { id: "sculptures", name: "Skulpturen", slug: "sculptures" },
            { id: "statuettes", name: "Statuen", slug: "statuettes" }
          ]
        },
        { id: "articles-artisanaux", name: "Handgefertigte Artikel", slug: "articles-artisanaux" },
        {
          id: "objets-decoratifs",
          name: "Dekorative Objekte",
          slug: "objets-decoratifs",
          subcategories: [
            { id: "bois", name: "Holz", slug: "bois" },
            { id: "metal", name: "Metall", slug: "metal" },
            { id: "verre", name: "Glas", slug: "verre" }
          ]
        },
        { id: "plateaux-decoratifs", name: "Dekorative Tabletts", slug: "plateaux-decoratifs" },
        {
          id: "coffrets-boites",
          name: "Kästchen & Boxen",
          slug: "coffrets-boites",
          subcategories: [
            { id: "coffrets", name: "Kästchen", slug: "coffrets" },
            { id: "boites", name: "Boxen", slug: "boites" }
          ]
        }
      ]
    },
    {
      id: "rangement-organisation",
      name: "Aufbewahrung & Organisation",
      slug: "rangement-organisation",
      subcategories: [
        {
          id: "boites-paniers",
          name: "Boxen & Körbe",
          slug: "boites-paniers",
          subcategories: [
            { id: "boites", name: "Boxen", slug: "boites" },
            { id: "paniers", name: "Körbe", slug: "paniers" }
          ]
        },
        { id: "organiseurs-tiroirs", name: "Schubladen-Organizer", slug: "organiseurs-tiroirs" },
        { id: "etageres-modulaires", name: "Modulare Regale", slug: "etageres-modulaires" },
        {
          id: "meubles-rangement-materiaux",
          name: "Aufbewahrungsmöbel aus Kunststoff/Holz/Metall",
          slug: "meubles-rangement-materiaux",
          subcategories: [
            { id: "plastique", name: "Kunststoff", slug: "plastique" },
            { id: "bois", name: "Holz", slug: "bois" },
            { id: "metal", name: "Metall", slug: "metal" }
          ]
        },
        { id: "portemanteaux", name: "Garderobenständer", slug: "portemanteaux" },
        {
          id: "pateres-crochets",
          name: "Wandhaken & Haken",
          slug: "pateres-crochets",
          subcategories: [
            { id: "pateres", name: "Wandhaken", slug: "pateres" },
            { id: "crochets", name: "Haken", slug: "crochets" }
          ]
        },
        { id: "armoires-pliables", name: "Faltbare Schränke", slug: "armoires-pliables" },
        { id: "rayonnages", name: "Regalsysteme", slug: "rayonnages" }
      ]
    },
    {
      id: "maison-intelligente",
      name: "Smart Home",
      slug: "maison-intelligente",
      subcategories: [
        { id: "ampoules-connectees", name: "Smarte Glühbirnen", slug: "ampoules-connectees" },
        { id: "prises-intelligentes", name: "Intelligente Steckdosen", slug: "prises-intelligentes" },
        {
          id: "capteurs-detecteurs",
          name: "Sensoren & Detektoren",
          slug: "capteurs-detecteurs",
          subcategories: [
            { id: "capteurs", name: "Sensoren", slug: "capteurs" },
            { id: "detecteurs", name: "Detektoren", slug: "detecteurs" }
          ]
        },
        { id: "commandes-distance", name: "Fernbedienungen", slug: "commandes-distance" },
        { id: "gadgets-domotiques-decoratifs", name: "Dekorative Smart-Home-Gadgets", slug: "gadgets-domotiques-decoratifs" }
      ]
    },
    {
      id: "decoration-vegetale-plantes",
      name: "Pflanzendekoration & Pflanzen",
      slug: "decoration-vegetale-plantes",
      subcategories: [
        { id: "plantes-naturelles", name: "Natürliche Pflanzen", slug: "plantes-naturelles" },
        { id: "plantes-artificielles", name: "Künstliche Pflanzen", slug: "plantes-artificielles" },
        { id: "pots-de-fleurs", name: "Blumentöpfe", slug: "pots-de-fleurs" },
        { id: "jardinieres", name: "Pflanzkübel", slug: "jardinieres" },
        { id: "support-plantes", name: "Pflanzenständer", slug: "support-plantes" },
        { id: "terrariums", name: "Terrarien", slug: "terrariums" },
        { id: "decoration-botanique", name: "Botanische Dekoration", slug: "decoration-botanique" }
      ]
    },
    {
      id: "decoration-enfant-bebe",
      name: "Kinder- & Babydekoration",
      slug: "decoration-enfant-bebe",
      subcategories: [
        { id: "mobilier-chambre-enfant", name: "Kinderzimmermöbel", slug: "mobilier-chambre-enfant" },
        { id: "luminaires-enfant", name: "Kinderlampen", slug: "luminaires-enfant" },
        {
          id: "stickers-posters-enfant",
          name: "Kinder-Sticker & Poster",
          slug: "stickers-posters-enfant",
          subcategories: [
            { id: "stickers-enfant", name: "Kinder-Sticker", slug: "stickers-enfant" },
            { id: "posters-enfant", name: "Kinder-Poster", slug: "posters-enfant" }
          ]
        },
        { id: "rangements-jouets", name: "Spielzeugaufbewahrung", slug: "rangements-jouets" },
        {
          id: "petits-fauteuils-poufs",
          name: "Kleine Sessel & Sitzhocker",
          slug: "petits-fauteuils-poufs",
          subcategories: [
            { id: "petits-fauteuils", name: "Kleine Sessel", slug: "petits-fauteuils" },
            { id: "poufs", name: "Sitzhocker", slug: "poufs" }
          ]
        }
      ]
    },
    {
      id: "styles-decoratifs",
      name: "Dekorationsstile",
      slug: "styles-decoratifs",
      subcategories: [
        { id: "scandinave", name: "Skandinavisch", slug: "scandinave" },
        { id: "moderne", name: "Modern", slug: "moderne" },
        { id: "minimaliste", name: "Minimalistisch", slug: "minimaliste" },
        { id: "industriel", name: "Industriell", slug: "industriel" },
        { id: "boheme", name: "Boho", slug: "boheme" },
        { id: "vintage", name: "Vintage", slug: "vintage" },
        { id: "art-deco", name: "Art déco", slug: "art-deco" },
        { id: "rustique-campagne", name: "Rustikal & Landhaus", slug: "rustique-campagne" },
        { id: "oriental-marocain", name: "Oriental & Marokkanisch", slug: "oriental-marocain" },
        { id: "contemporain", name: "Zeitgenössisch", slug: "contemporain" },
        { id: "classique", name: "Klassisch", slug: "classique" },
        { id: "luxe-premium", name: "Luxus & Premium", slug: "luxe-premium" }
      ]
    },
    {
      id: "materiaux",
      name: "Materialien",
      slug: "materiaux",
      subcategories: [
        { id: "bois-massif", name: "Massivholz", slug: "bois-massif" },
        { id: "mdf", name: "MDF", slug: "mdf" },
        { id: "metal", name: "Metall", slug: "metal" },
        { id: "aluminium", name: "Aluminium", slug: "aluminium" },
        { id: "verre", name: "Glas", slug: "verre" },
        { id: "rotin", name: "Rattan", slug: "rotin" },
        { id: "bambou", name: "Bambus", slug: "bambou" },
        { id: "resine-tressee", name: "Geflochtenes Harz", slug: "resine-tressee" },
        { id: "marbre", name: "Marmor", slug: "marbre" },
        { id: "ceramique", name: "Keramik", slug: "ceramique" },
        { id: "tissu", name: "Stoff", slug: "tissu" },
        { id: "velours", name: "Samt", slug: "velours" },
        {
          id: "cuir-simili",
          name: "Leder & Kunstleder",
          slug: "cuir-simili",
          subcategories: [
            { id: "cuir", name: "Leder", slug: "cuir" },
            { id: "simili", name: "Kunstleder", slug: "simili" }
          ]
        },
        { id: "beton-decoratif", name: "Dekorbeton", slug: "beton-decoratif" }
      ]
    },
    {
      id: "accessoires-maison",
      name: "Wohnaccessoires",
      slug: "accessoires-maison",
      subcategories: [
        {
          id: "horloges-reveils",
          name: "Uhren & Wecker",
          slug: "horloges-reveils",
          subcategories: [
            { id: "horloges", name: "Uhren", slug: "horloges" },
            { id: "reveils", name: "Wecker", slug: "reveils" }
          ]
        },
        { id: "cadres-photo", name: "Bilderrahmen", slug: "cadres-photo" },
        { id: "parfums-interieur", name: "Raumdüfte", slug: "parfums-interieur" },
        { id: "fontaines-decoratives", name: "Dekorative Brunnen", slug: "fontaines-decoratives" },
        { id: "distributeurs-savon-design", name: "Design-Seifenspender", slug: "distributeurs-savon-design" },
        {
          id: "cintres-porte-accessoires",
          name: "Kleiderbügel & Halter",
          slug: "cintres-porte-accessoires",
          subcategories: [
            { id: "cintres", name: "Kleiderbügel", slug: "cintres" },
            { id: "porte-accessoires", name: "Halter", slug: "porte-accessoires" }
          ]
        },
        { id: "accessoires-cheminee", name: "Kaminzubehör", slug: "accessoires-cheminee" }
      ]
    },
    {
      id: "objets-artisanaux-locaux",
      name: "Handwerks- & Lokalobjekte",
      slug: "objets-artisanaux-locaux",
      subcategories: [
        { id: "decorations-traditionnelles", name: "Traditionelle Dekorationen", slug: "decorations-traditionnelles" },
        {
          id: "articles-berberes-orientaux",
          name: "Berberische & orientalische Artikel",
          slug: "articles-berberes-orientaux",
          subcategories: [
            { id: "berberes", name: "Berberisch", slug: "berberes" },
            { id: "orientaux", name: "Orientalisch", slug: "orientaux" }
          ]
        },
        { id: "paniers-tresses", name: "Geflochtene Körbe", slug: "paniers-tresses" },
        { id: "poufs-artisanaux", name: "Handgefertigte Poufs", slug: "poufs-artisanaux" },
        { id: "art-mural-local", name: "Lokale Wandkunst", slug: "art-mural-local" }
      ]
    }
  ]
};