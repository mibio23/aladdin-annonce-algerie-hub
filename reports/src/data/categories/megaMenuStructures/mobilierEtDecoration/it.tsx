import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Armchair } from "lucide-react";

export const mobilierEtDecorationIt: MenuCategory = {
  id: "mobilier-et-decoration",
  name: "Arredamento & Decorazione",
  slug: "mobilier-et-decoration",
  icon: <Armchair className="w-4 h-4" />,
  subcategories: [
    {
      id: "mobilier-salon-sejour",
      name: "Arredi soggiorno",
      slug: "mobilier-salon-sejour",
      subcategories: [
        {
          id: "canapes",
          name: "Divani",
          slug: "canapes",
          subcategories: [
            { id: "angle", name: "Ad angolo", slug: "angle" },
            { id: "droit", name: "Lineari", slug: "droit" },
            { id: "convertible", name: "Divani letto", slug: "convertible" },
            { id: "modulaires", name: "Modulari", slug: "modulaires" }
          ]
        },
        {
          id: "fauteuils-poufs",
          name: "Poltrone e pouf",
          slug: "fauteuils-poufs",
          subcategories: [
            { id: "fauteuils", name: "Poltrone", slug: "fauteuils" },
            { id: "poufs", name: "Pouf", slug: "poufs" }
          ]
        },
        {
          id: "tables-basses",
          name: "Tavolini",
          slug: "tables-basses",
          subcategories: [
            { id: "bois", name: "Legno", slug: "bois" },
            { id: "verre", name: "Vetro", slug: "verre" },
            { id: "metal", name: "Metallo", slug: "metal" }
          ]
        },
        { id: "meubles-tv", name: "Mobili TV", slug: "meubles-tv" },
        { id: "etagères-bibliotheques", name: "Mensole e librerie", slug: "etageres-bibliotheques" },
        { id: "meubles-rangement", name: "Mobili contenitori", slug: "meubles-rangement" },
        { id: "consoles-entree", name: "Consolle d’ingresso", slug: "consoles-entree" },
        { id: "banquettes", name: "Panche", slug: "banquettes" },
        { id: "paravents", name: "Paraventi", slug: "paravents" },
        { id: "tables-d-appoint", name: "Tavolini d’appoggio", slug: "tables-d-appoint" }
      ]
    },
    {
      id: "mobilier-chambre",
      name: "Arredi camera",
      slug: "mobilier-chambre",
      subcategories: [
        {
          id: "lits",
          name: "Letti",
          slug: "lits",
          subcategories: [
            { id: "simple", name: "Singolo", slug: "simple" },
            { id: "double", name: "Matrimoniale", slug: "double" },
            { id: "king", name: "King", slug: "king" },
            { id: "coffre", name: "Con contenitore", slug: "coffre" }
          ]
        },
        {
          id: "sommier-matelas",
          name: "Rete e materasso",
          slug: "sommier-matelas",
          subcategories: [
            { id: "sommier", name: "Rete", slug: "sommier" },
            { id: "matelas", name: "Materasso", slug: "matelas" }
          ]
        },
        { id: "tables-de-chevet", name: "Comodini", slug: "tables-de-chevet" },
        {
          id: "armoires-penderies",
          name: "Armadi e guardaroba",
          slug: "armoires-penderies",
          subcategories: [
            { id: "armoires", name: "Armadi", slug: "armoires" },
            { id: "penderies", name: "Guardaroba", slug: "penderies" }
          ]
        },
        { id: "commode", name: "Cassettiere", slug: "commode" },
        { id: "coiffeuses", name: "Toeletta", slug: "coiffeuses" },
        { id: "bancs-de-lit", name: "Panche da letto", slug: "bancs-de-lit" },
        { id: "tetes-de-lit", name: "Testiere", slug: "tetes-de-lit" },
        { id: "rangement-chaussures", name: "Portascarpe", slug: "rangement-chaussures" }
      ]
    },
    {
      id: "mobilier-salle-a-manger",
      name: "Sala da pranzo",
      slug: "mobilier-salle-a-manger",
      subcategories: [
        {
          id: "tables-a-manger",
          name: "Tavoli da pranzo",
          slug: "tables-a-manger",
          subcategories: [
            { id: "bois", name: "Legno", slug: "bois" },
            { id: "extensibles", name: "Allungabili", slug: "extensibles" },
            { id: "verre", name: "Vetro", slug: "verre" }
          ]
        },
        {
          id: "chaises-fauteuils-salle-a-manger",
          name: "Sedie e poltrone da pranzo",
          slug: "chaises-fauteuils-salle-a-manger",
          subcategories: [
            { id: "chaises", name: "Sedie", slug: "chaises" },
            { id: "fauteuils", name: "Poltrone", slug: "fauteuils" }
          ]
        },
        {
          id: "buffets-bahuts",
          name: "Credenze e madie",
          slug: "buffets-bahuts",
          subcategories: [
            { id: "buffets", name: "Credenze", slug: "buffets" },
            { id: "bahuts", name: "Madie", slug: "bahuts" }
          ]
        },
        { id: "vaisseliers", name: "Vetrine", slug: "vaisseliers" },
        { id: "meubles-bar", name: "Mobili bar", slug: "meubles-bar" },
        {
          id: "tabourets-chaises-hautes",
          name: "Sgabelli e sedie alte",
          slug: "tabourets-chaises-hautes",
          subcategories: [
            { id: "tabourets", name: "Sgabelli", slug: "tabourets" },
            { id: "chaises-hautes", name: "Sedie alte", slug: "chaises-hautes" }
          ]
        }
      ]
    },
    {
      id: "mobilier-cuisine",
      name: "Mobili cucina",
      slug: "mobilier-cuisine",
      subcategories: [
        { id: "meubles-cuisine-modulaires", name: "Mobili cucina modulari", slug: "meubles-cuisine-modulaires" },
        { id: "plans-de-travail", name: "Piani di lavoro", slug: "plans-de-travail" },
        {
          id: "ilots-dessertes-cuisine",
          name: "Isole e carrelli cucina",
          slug: "ilots-dessertes-cuisine",
          subcategories: [
            { id: "ilots", name: "Isole", slug: "ilots" },
            { id: "dessertes", name: "Carrelli", slug: "dessertes" }
          ]
        },
        { id: "rangement-cuisine", name: "Organizzazione cucina", slug: "rangement-cuisine" },
        {
          id: "chariots-dessertes-roulettes",
          name: "Carrelli e tavolini con ruote",
          slug: "chariots-dessertes-roulettes",
          subcategories: [
            { id: "chariots", name: "Carrelli", slug: "chariots" },
            { id: "dessertes-a-roulettes", name: "Tavolini con ruote", slug: "dessertes-a-roulettes" }
          ]
        },
        { id: "tabourets-cuisine", name: "Sgabelli cucina", slug: "tabourets-cuisine" },
        {
          id: "racks-epices-etageres-murales",
          name: "Portaspezie e mensole a parete",
          slug: "racks-epices-etageres-murales",
          subcategories: [
            { id: "racks-epices", name: "Portaspezie", slug: "racks-epices" },
            { id: "etageres-murales", name: "Mensole a parete", slug: "etageres-murales" }
          ]
        }
      ]
    },
    {
      id: "mobilier-bureau",
      name: "Arredi ufficio",
      slug: "mobilier-bureau",
      subcategories: [
        { id: "bureaux-classiques", name: "Scrivanie classiche", slug: "bureaux-classiques" },
        { id: "bureaux-gaming", name: "Scrivanie gaming", slug: "bureaux-gaming" },
        { id: "chaises-bureau-ergonomiques", name: "Sedie da ufficio ergonomiche", slug: "chaises-bureau-ergonomiques" },
        {
          id: "caissons-rangements",
          name: "Cassettiere e contenitori",
          slug: "caissons-rangements",
          subcategories: [
            { id: "caissons", name: "Cassettiere", slug: "caissons" },
            { id: "rangements", name: "Contenitori", slug: "rangements" }
          ]
        },
        { id: "bibliotheques-pro", name: "Librerie professionali", slug: "bibliotheques-pro" },
        {
          id: "support-ecrans-accessoires-bureau",
          name: "Supporti monitor e accessori ufficio",
          slug: "support-ecrans-accessoires-bureau",
          subcategories: [
            { id: "support-ecrans", name: "Supporti monitor", slug: "support-ecrans" },
            { id: "accessoires-bureau", name: "Accessori ufficio", slug: "accessoires-bureau" }
          ]
        },
        { id: "tables-dessin-architecte", name: "Tavoli da disegno e architetto", slug: "tables-dessin-architecte" }
      ]
    },
    {
      id: "mobilier-salle-de-bain",
      name: "Arredi bagno",
      slug: "mobilier-salle-de-bain",
      subcategories: [
        { id: "meubles-sous-vasques", name: "Mobili sottolavabo", slug: "meubles-sous-vasques" },
        {
          id: "colonnes-rangements-bain",
          name: "Colonne e contenitori",
          slug: "colonnes-rangements-bain",
          subcategories: [
            { id: "colonnes", name: "Colonne", slug: "colonnes" },
            { id: "rangements", name: "Contenitori", slug: "rangements" }
          ]
        },
        { id: "etageres-murales-bain", name: "Mensole a parete", slug: "etageres-murales-bain" },
        { id: "armoires-miroir", name: "Armadi a specchio", slug: "armoires-miroir" },
        {
          id: "bancs-tabourets-bain",
          name: "Panche e sgabelli",
          slug: "bancs-tabourets-bain",
          subcategories: [
            { id: "bancs", name: "Panche", slug: "bancs" },
            { id: "tabourets", name: "Sgabelli", slug: "tabourets" }
          ]
        },
        { id: "paniers-linge", name: "Ceste per biancheria", slug: "paniers-linge" },
        { id: "porte-serviettes", name: "Portasciugamani", slug: "porte-serviettes" },
        { id: "accessoires-bain", name: "Accessori bagno", slug: "accessoires-bain" }
      ]
    },
    {
      id: "mobilier-exterieur-jardin",
      name: "Arredi esterni e giardino",
      slug: "mobilier-exterieur-jardin",
      subcategories: [
        {
          id: "salons-de-jardin",
          name: "Salotti da giardino",
          slug: "salons-de-jardin",
          subcategories: [
            { id: "resine", name: "Resina", slug: "resine" },
            { id: "aluminium", name: "Alluminio", slug: "aluminium" },
            { id: "bois", name: "Legno", slug: "bois" }
          ]
        },
        {
          id: "tables-chaises-exterieures",
          name: "Tavoli e sedie da esterno",
          slug: "tables-chaises-exterieures",
          subcategories: [
            { id: "tables", name: "Tavoli", slug: "tables" },
            { id: "chaises", name: "Sedie", slug: "chaises" }
          ]
        },
        {
          id: "transats-bains-de-soleil",
          name: "Lettini e chaise longue",
          slug: "transats-bains-de-soleil",
          subcategories: [
            { id: "transats", name: "Lettini", slug: "transats" },
            { id: "bains-de-soleil", name: "Chaise longue", slug: "bains-de-soleil" }
          ]
        },
        {
          id: "hamacs-balancelles",
          name: "Amache e dondoli",
          slug: "hamacs-balancelles",
          subcategories: [
            { id: "hamacs", name: "Amache", slug: "hamacs" },
            { id: "balancelles", name: "Dondoli", slug: "balancelles" }
          ]
        },
        { id: "pergolas", name: "Pergole", slug: "pergolas" },
        { id: "parasols", name: "Ombrelloni", slug: "parasols" },
        { id: "coffres-rangement-exterieur", name: "Bauli da esterno", slug: "coffres-rangement-exterieur" },
        {
          id: "barbecue-cuisine-exterieure",
          name: "Barbecue e cucine da esterno",
          slug: "barbecue-cuisine-exterieure",
          subcategories: [
            { id: "barbecue", name: "Barbecue", slug: "barbecue" },
            { id: "cuisine-exterieure", name: "Cucine da esterno", slug: "cuisine-exterieure" }
          ]
        }
      ]
    },
    {
      id: "decoration-murale",
      name: "Decorazioni da parete",
      slug: "decoration-murale",
      subcategories: [
        {
          id: "tableaux",
          name: "Quadri",
          slug: "tableaux",
          subcategories: [
            { id: "abstraits", name: "Astratti", slug: "abstraits" },
            { id: "modernes", name: "Moderni", slug: "modernes" },
            { id: "islamiques", name: "Islamici", slug: "islamiques" }
          ]
        },
        {
          id: "affiches-posters",
          name: "Poster e locandine",
          slug: "affiches-posters",
          subcategories: [
            { id: "affiches", name: "Locandine", slug: "affiches" },
            { id: "posters", name: "Poster", slug: "posters" }
          ]
        },
        { id: "miroirs-decoratifs", name: "Specchi decorativi", slug: "miroirs-decoratifs" },
        { id: "horloges-murales", name: "Orologi da parete", slug: "horloges-murales" },
        { id: "stickers-muraux", name: "Adesivi da parete", slug: "stickers-muraux" },
        { id: "decorations-metal", name: "Decorazioni in metallo", slug: "decorations-metal" },
        { id: "panneaux-muraux-3d", name: "Pannelli 3D da parete", slug: "panneaux-muraux-3d" },
        {
          id: "tapisseries-toiles-imprimees",
          name: "Arazzi e tele stampate",
          slug: "tapisseries-toiles-imprimees",
          subcategories: [
            { id: "tapisseries", name: "Arazzi", slug: "tapisseries" },
            { id: "toiles-imprimees", name: "Tele stampate", slug: "toiles-imprimees" }
          ]
        }
      ]
    },
    {
      id: "luminaires-eclairage",
      name: "Illuminazione",
      slug: "luminaires-eclairage",
      subcategories: [
        { id: "lampes-de-table", name: "Lampade da tavolo", slug: "lampes-de-table" },
        { id: "lampadaires", name: "Lampade da terra", slug: "lampadaires" },
        {
          id: "suspensions-lustres",
          name: "Sospensioni e lampadari",
          slug: "suspensions-lustres",
          subcategories: [
            { id: "suspensions", name: "Sospensioni", slug: "suspensions" },
            { id: "lustres", name: "Lampadari", slug: "lustres" }
          ]
        },
        { id: "appliques-murales", name: "Applique da parete", slug: "appliques-murales" },
        { id: "luminaires-led", name: "Illuminazione LED", slug: "luminaires-led" },
        { id: "lampes-de-bureau", name: "Lampade da ufficio", slug: "lampes-de-bureau" },
        { id: "guirlandes-lumineuses", name: "Ghirlande luminose", slug: "guirlandes-lumineuses" },
        { id: "rubans-led", name: "Strisce LED", slug: "rubans-led" },
        { id: "eclairage-exterieur", name: "Illuminazione esterna", slug: "eclairage-exterieur" }
      ]
    },
    {
      id: "tapis-textiles-maison",
      name: "Tappeti e tessili casa",
      slug: "tapis-textiles-maison",
      subcategories: [
        {
          id: "tapis",
          name: "Tappeti",
          slug: "tapis",
          subcategories: [
            { id: "salon", name: "Soggiorno", slug: "salon" },
            { id: "chambre", name: "Camera da letto", slug: "chambre" },
            { id: "orientaux", name: "Orientali", slug: "orientaux" },
            { id: "modernes", name: "Moderni", slug: "modernes" }
          ]
        },
        {
          id: "rideaux-voilages",
          name: "Tende e tendaggi",
          slug: "rideaux-voilages",
          subcategories: [
            { id: "rideaux", name: "Tende", slug: "rideaux" },
            { id: "voilages", name: "Tendaggi", slug: "voilages" }
          ]
        },
        {
          id: "stores",
          name: "Tende",
          slug: "stores",
          subcategories: [
            { id: "rouleaux", name: "A rullo", slug: "rouleaux" },
            { id: "venitiens", name: "Veneziane", slug: "venitiens" },
            { id: "bambou", name: "Bambù", slug: "bambou" }
          ]
        },
        {
          id: "coussins-housses",
          name: "Cuscini e fodere",
          slug: "coussins-housses",
          subcategories: [
            { id: "coussins", name: "Cuscini", slug: "coussins" },
            { id: "housses", name: "Fodere", slug: "housses" }
          ]
        },
        {
          id: "jetes-plaids",
          name: "Copertine e plaid",
          slug: "jetes-plaids",
          subcategories: [
            { id: "jetes", name: "Copertine", slug: "jetes" },
            { id: "plaids", name: "Plaid", slug: "plaids" }
          ]
        },
        { id: "linge-de-lit", name: "Biancheria da letto", slug: "linge-de-lit" },
        { id: "linge-de-bain", name: "Biancheria da bagno", slug: "linge-de-bain" },
        {
          id: "nappes-textiles-cuisine",
          name: "Tovaglie e tessili cucina",
          slug: "nappes-textiles-cuisine",
          subcategories: [
            { id: "nappes", name: "Tovaglie", slug: "nappes" },
            { id: "textiles-cuisine", name: "Tessili cucina", slug: "textiles-cuisine" }
          ]
        }
      ]
    },
    {
      id: "decoration-art-maison",
      name: "Decorazione e arte per la casa",
      slug: "decoration-art-maison",
      subcategories: [
        {
          id: "vases-pots-decoratifs",
          name: "Vasi e cachepot decorativi",
          slug: "vases-pots-decoratifs",
          subcategories: [
            { id: "vases", name: "Vasi", slug: "vases" },
            { id: "pots", name: "Cachepot", slug: "pots" }
          ]
        },
        {
          id: "bougies-photophores",
          name: "Candele e portacandele",
          slug: "bougies-photophores",
          subcategories: [
            { id: "bougies", name: "Candele", slug: "bougies" },
            { id: "photophores", name: "Portacandele", slug: "photophores" }
          ]
        },
        {
          id: "sculptures-statuettes",
          name: "Sculture e statuette",
          slug: "sculptures-statuettes",
          subcategories: [
            { id: "sculptures", name: "Sculture", slug: "sculptures" },
            { id: "statuettes", name: "Statuette", slug: "statuettes" }
          ]
        },
        { id: "articles-artisanaux", name: "Articoli artigianali", slug: "articles-artisanaux" },
        {
          id: "objets-decoratifs",
          name: "Oggetti decorativi",
          slug: "objets-decoratifs",
          subcategories: [
            { id: "bois", name: "Legno", slug: "bois" },
            { id: "metal", name: "Metallo", slug: "metal" },
            { id: "verre", name: "Vetro", slug: "verre" }
          ]
        },
        { id: "plateaux-decoratifs", name: "Vassoi decorativi", slug: "plateaux-decoratifs" },
        {
          id: "coffrets-boites",
          name: "Cofanetti e scatole",
          slug: "coffrets-boites",
          subcategories: [
            { id: "coffrets", name: "Cofanetti", slug: "coffrets" },
            { id: "boites", name: "Scatole", slug: "boites" }
          ]
        }
      ]
    },
    {
      id: "rangement-organisation",
      name: "Organizzazione e contenitori",
      slug: "rangement-organisation",
      subcategories: [
        {
          id: "boites-paniers",
          name: "Scatole e cesti",
          slug: "boites-paniers",
          subcategories: [
            { id: "boites", name: "Scatole", slug: "boites" },
            { id: "paniers", name: "Cesti", slug: "paniers" }
          ]
        },
        { id: "organiseurs-tiroirs", name: "Organizer per cassetti", slug: "organiseurs-tiroirs" },
        { id: "etageres-modulaires", name: "Scaffali modulari", slug: "etageres-modulaires" },
        {
          id: "meubles-rangement-materiaux",
          name: "Mobili contenitori in plastica/legno/metallo",
          slug: "meubles-rangement-materiaux",
          subcategories: [
            { id: "plastique", name: "Plastica", slug: "plastique" },
            { id: "bois", name: "Legno", slug: "bois" },
            { id: "metal", name: "Metallo", slug: "metal" }
          ]
        },
        { id: "portemanteaux", name: "Appendiabiti", slug: "portemanteaux" },
        {
          id: "pateres-crochets",
          name: "Ganci e attaccapanni",
          slug: "pateres-crochets",
          subcategories: [
            { id: "pateres", name: "Appendini", slug: "pateres" },
            { id: "crochets", name: "Ganci", slug: "crochets" }
          ]
        },
        { id: "armoires-pliables", name: "Armadi pieghevoli", slug: "armoires-pliables" },
        { id: "rayonnages", name: "Scaffalature", slug: "rayonnages" }
      ]
    },
    {
      id: "maison-intelligente",
      name: "Smart Home",
      slug: "maison-intelligente",
      subcategories: [
        { id: "ampoules-connectees", name: "Lampadine smart", slug: "ampoules-connectees" },
        { id: "prises-intelligentes", name: "Prese intelligenti", slug: "prises-intelligentes" },
        {
          id: "capteurs-detecteurs",
          name: "Sensori & rilevatori",
          slug: "capteurs-detecteurs",
          subcategories: [
            { id: "capteurs", name: "Sensori", slug: "capteurs" },
            { id: "detecteurs", name: "Rilevatori", slug: "detecteurs" }
          ]
        },
        { id: "commandes-distance", name: "Telecomandi", slug: "commandes-distance" },
        { id: "gadgets-domotiques-decoratifs", name: "Gadget domotici decorativi", slug: "gadgets-domotiques-decoratifs" }
      ]
    },
    {
      id: "decoration-vegetale-plantes",
      name: "Decorazione vegetale e piante",
      slug: "decoration-vegetale-plantes",
      subcategories: [
        { id: "plantes-naturelles", name: "Piante naturali", slug: "plantes-naturelles" },
        { id: "plantes-artificielles", name: "Piante artificiali", slug: "plantes-artificielles" },
        { id: "pots-de-fleurs", name: "Vasi per fiori", slug: "pots-de-fleurs" },
        { id: "jardinieres", name: "Fioriere", slug: "jardinieres" },
        { id: "support-plantes", name: "Supporti per piante", slug: "support-plantes" },
        { id: "terrariums", name: "Terrari", slug: "terrariums" },
        { id: "decoration-botanique", name: "Decorazioni botaniche", slug: "decoration-botanique" }
      ]
    },
    {
      id: "decoration-enfant-bebe",
      name: "Decorazione bambino e bebè",
      slug: "decoration-enfant-bebe",
      subcategories: [
        { id: "mobilier-chambre-enfant", name: "Arredo cameretta", slug: "mobilier-chambre-enfant" },
        { id: "luminaires-enfant", name: "Illuminazione per bambini", slug: "luminaires-enfant" },
        {
          id: "stickers-posters-enfant",
          name: "Adesivi e poster per bambini",
          slug: "stickers-posters-enfant",
          subcategories: [
            { id: "stickers-enfant", name: "Adesivi per bambini", slug: "stickers-enfant" },
            { id: "posters-enfant", name: "Poster per bambini", slug: "posters-enfant" }
          ]
        },
        { id: "rangements-jouets", name: "Organizzatori per giocattoli", slug: "rangements-jouets" },
        {
          id: "petits-fauteuils-poufs",
          name: "Piccole poltrone e pouf",
          slug: "petits-fauteuils-poufs",
          subcategories: [
            { id: "petits-fauteuils", name: "Piccole poltrone", slug: "petits-fauteuils" },
            { id: "poufs", name: "Pouf", slug: "poufs" }
          ]
        }
      ]
    },
    {
      id: "styles-decoratifs",
      name: "Stili decorativi",
      slug: "styles-decoratifs",
      subcategories: [
        { id: "scandinave", name: "Scandinavo", slug: "scandinave" },
        { id: "moderne", name: "Moderno", slug: "moderne" },
        { id: "minimaliste", name: "Minimalista", slug: "minimaliste" },
        { id: "industriel", name: "Industriale", slug: "industriel" },
        { id: "boheme", name: "Boho", slug: "boheme" },
        { id: "vintage", name: "Vintage", slug: "vintage" },
        { id: "art-deco", name: "Art déco", slug: "art-deco" },
        { id: "rustique-campagne", name: "Rustico & country", slug: "rustique-campagne" },
        { id: "oriental-marocain", name: "Orientale & marocchino", slug: "oriental-marocain" },
        { id: "contemporain", name: "Contemporaneo", slug: "contemporain" },
        { id: "classique", name: "Classico", slug: "classique" },
        { id: "luxe-premium", name: "Lusso & premium", slug: "luxe-premium" }
      ]
    },
    {
      id: "materiaux",
      name: "Materiali",
      slug: "materiaux",
      subcategories: [
        { id: "bois-massif", name: "Legno massello", slug: "bois-massif" },
        { id: "mdf", name: "MDF", slug: "mdf" },
        { id: "metal", name: "Metallo", slug: "metal" },
        { id: "aluminium", name: "Alluminio", slug: "aluminium" },
        { id: "verre", name: "Vetro", slug: "verre" },
        { id: "rotin", name: "Rattan", slug: "rotin" },
        { id: "bambou", name: "Bambù", slug: "bambou" },
        { id: "resine-tressee", name: "Resina intrecciata", slug: "resine-tressee" },
        { id: "marbre", name: "Marmo", slug: "marbre" },
        { id: "ceramique", name: "Ceramica", slug: "ceramique" },
        { id: "tissu", name: "Tessuto", slug: "tissu" },
        { id: "velours", name: "Velluto", slug: "velours" },
        {
          id: "cuir-simili",
          name: "Pelle & similpelle",
          slug: "cuir-simili",
          subcategories: [
            { id: "cuir", name: "Pelle", slug: "cuir" },
            { id: "simili", name: "Similpelle", slug: "simili" }
          ]
        },
        { id: "beton-decoratif", name: "Cemento decorativo", slug: "beton-decoratif" }
      ]
    },
    {
      id: "accessoires-maison",
      name: "Accessori casa",
      slug: "accessoires-maison",
      subcategories: [
        {
          id: "horloges-reveils",
          name: "Orologi & sveglie",
          slug: "horloges-reveils",
          subcategories: [
            { id: "horloges", name: "Orologi", slug: "horloges" },
            { id: "reveils", name: "Sveglie", slug: "reveils" }
          ]
        },
        { id: "cadres-photo", name: "Cornici fotografiche", slug: "cadres-photo" },
        { id: "parfums-interieur", name: "Profumi d’ambiente", slug: "parfums-interieur" },
        { id: "fontaines-decoratives", name: "Fontane decorative", slug: "fontaines-decoratives" },
        { id: "distributeurs-savon-design", name: "Dispenser sapone design", slug: "distributeurs-savon-design" },
        {
          id: "cintres-porte-accessoires",
          name: "Grucce & porta-accessori",
          slug: "cintres-porte-accessoires",
          subcategories: [
            { id: "cintres", name: "Grucce", slug: "cintres" },
            { id: "porte-accessoires", name: "Porta-accessori", slug: "porte-accessoires" }
          ]
        },
        { id: "accessoires-cheminee", name: "Accessori camino", slug: "accessoires-cheminee" }
      ]
    },
    {
      id: "objets-artisanaux-locaux",
      name: "Oggetti artigianali e locali",
      slug: "objets-artisanaux-locaux",
      subcategories: [
        { id: "decorations-traditionnelles", name: "Decorazioni tradizionali", slug: "decorations-traditionnelles" },
        {
          id: "articles-berberes-orientaux",
          name: "Articoli berberi & orientali",
          slug: "articles-berberes-orientaux",
          subcategories: [
            { id: "berberes", name: "Berberi", slug: "berberes" },
            { id: "orientaux", name: "Orientali", slug: "orientaux" }
          ]
        },
        { id: "paniers-tresses", name: "Cesti intrecciati", slug: "paniers-tresses" },
        { id: "poufs-artisanaux", name: "Pouf artigianali", slug: "poufs-artisanaux" },
        { id: "art-mural-local", name: "Arte murale locale", slug: "art-mural-local" }
      ]
    }
  ]
};