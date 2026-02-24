import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Plug } from "lucide-react";

export const electromenagerDe: MenuCategory = {
  id: "electromenager",
  name: "Haushaltsgeräte",
  slug: "electromenager",
  icon: <Plug className="w-4 h-4" />,
  subcategories: [
    {
      id: "refrigerateurs-congelateurs",
      name: "Kühlschränke & Gefriergeräte",
      slug: "refrigerateurs-congelateurs",
      subcategories: [
        { id: "refrigerateurs-combines", name: "Kühl-Gefrier-Kombinationen", slug: "refrigerateurs-combines" },
        { id: "refrigerateurs-simples", name: "Ein-Tür-Kühlschränke", slug: "refrigerateurs-simples" },
        { id: "refrigerateurs-americains", name: "Side-by-Side-Kühlschränke", slug: "refrigerateurs-americains" },
        { id: "refrigerateurs-multi-portes", name: "Mehrtürige Kühlschränke", slug: "refrigerateurs-multi-portes" },
        { id: "refrigerateurs-encastrables", name: "Einbaukühlschränke", slug: "refrigerateurs-encastrables" },
        { id: "mini-frigos", name: "Minikühlschränke", slug: "mini-frigos" },
        { id: "congelateurs-coffre", name: "Truhen-Gefriergeräte", slug: "congelateurs-coffre" },
        { id: "congelateurs-armoires", name: "Stand-Gefrierschränke", slug: "congelateurs-armoires" },
        { id: "congelateurs-compacts", name: "Kompakt-Gefriergeräte", slug: "congelateurs-compacts" },
        { id: "refrigerateurs-boissons", name: "Getränkekühlschränke", slug: "refrigerateurs-boissons" },
        { id: "refrigerateurs-vitres", name: "Glastür-Kühlschränke", slug: "refrigerateurs-vitres" },
        { id: "refrigerateurs-professionnels", name: "Profi-Kühlschränke", slug: "refrigerateurs-professionnels" }
      ]
    },
    {
      id: "lavage-sechage",
      name: "Waschen & Trocknen",
      slug: "lavage-sechage",
      subcategories: [
        { id: "lave-linge-frontal", name: "Frontlader-Waschmaschinen", slug: "lave-linge-frontal" },
        { id: "lave-linge-top", name: "Toplader-Waschmaschinen", slug: "lave-linge-top" },
        { id: "lave-linge-grande-capacite", name: "Waschmaschinen mit großer Kapazität", slug: "lave-linge-grande-capacite" },
        { id: "lave-linge-connecte", name: "Vernetzte Waschmaschinen", slug: "lave-linge-connecte" },
        { id: "seche-linge-condensation", name: "Kondensationstrockner", slug: "seche-linge-condensation" },
        { id: "seche-linge-pompe-a-chaleur", name: "Wärmepumpentrockner", slug: "seche-linge-pompe-a-chaleur" },
        { id: "seche-linge-evacuation", name: "Ablufttrockner", slug: "seche-linge-evacuation" },
        { id: "lave-linge-sechant", name: "Waschtrockner", slug: "lave-linge-sechant" },
        { id: "mini-lave-linge", name: "Mini-Waschmaschinen", slug: "mini-lave-linge" },
        { id: "machines-professionnelles-lavage", name: "Professionelle Maschinen", slug: "machines-professionnelles-lavage" }
      ]
    },
    {
      id: "cuisson-cuisine",
      name: "Kochen & Küche",
      slug: "cuisson-cuisine",
      subcategories: [
        {
          id: "cuisinieres",
          name: "Herde",
          slug: "cuisinieres",
          subcategories: [
            { id: "gaz", name: "Gas", slug: "gaz" },
            { id: "electrique", name: "Elektro", slug: "electrique" },
            { id: "mixte", name: "Mischbetrieb", slug: "mixte" }
          ]
        },
        {
          id: "fours-encastrables",
          name: "Einbauöfen",
          slug: "fours-encastrables",
          subcategories: [
            { id: "pyrolyse", name: "Pyrolyse", slug: "pyrolyse" },
            { id: "catalyse", name: "Katalyse", slug: "catalyse" },
            { id: "vapeur", name: "Dampf", slug: "vapeur" }
          ]
        },
        {
          id: "micro-ondes",
          name: "Mikrowellen",
          slug: "micro-ondes",
          subcategories: [
            { id: "grill", name: "Grill", slug: "grill" },
            { id: "combine", name: "Kombi", slug: "combine" }
          ]
        },
        {
          id: "plaques-de-cuisson",
          name: "Kochfelder",
          slug: "plaques-de-cuisson",
          subcategories: [
            { id: "gaz-plaques", name: "Gas", slug: "gaz-plaques" },
            { id: "induction", name: "Induktion", slug: "induction" },
            { id: "vitroceramique", name: "Glaskeramik", slug: "vitroceramique" }
          ]
        },
        { id: "tables-de-cuisson-portatives", name: "Tragbare Kochplatten", slug: "tables-de-cuisson-portatives" },
        {
          id: "friteuses",
          name: "Fritteusen",
          slug: "friteuses",
          subcategories: [
            { id: "classiques", name: "Klassisch", slug: "classiques" },
            { id: "air-fryer", name: "Heißluftfritteuse", slug: "air-fryer" }
          ]
        },
        { id: "multicuiseurs", name: "Multikocher", slug: "multicuiseurs" },
        { id: "autocuiseurs-cocottes", name: "Schnellkochtöpfe & Schmortöpfe", slug: "autocuiseurs-cocottes" },
        { id: "machines-sous-vide", name: "Vakuumiergeräte", slug: "machines-sous-vide" },
        { id: "chauffe-plats", name: "Warmhalteplatten", slug: "chauffe-plats" }
      ]
    },
    {
      id: "petits-appareils-cuisine",
      name: "Kleine Küchenmaschinen",
      slug: "petits-appareils-cuisine",
      subcategories: [
        { id: "mixeurs", name: "Handmixer", slug: "mixeurs" },
        { id: "blenders", name: "Standmixer", slug: "blenders" },
        { id: "robots-cuiseurs", name: "Kochroboter", slug: "robots-cuiseurs" },
        { id: "robots-patissier", name: "Küchenmaschinen", slug: "robots-patissier" },
        { id: "extracteurs-jus", name: "Entsafter", slug: "extracteurs-jus" },
        { id: "centrifugeuses", name: "Zentrifugen", slug: "centrifugeuses" },
        { id: "batteurs", name: "Rührgeräte", slug: "batteurs" },
        { id: "hachoirs", name: "Zerkleinerer", slug: "hachoirs" },
        { id: "grill-panini", name: "Kontaktgrills & Panini-Maker", slug: "grill-panini" },
        { id: "gaufriers", name: "Waffeleisen", slug: "gaufriers" },
        { id: "crepieres", name: "Crêpe-Maker", slug: "crepieres" },
        { id: "cuiseurs-vapeur", name: "Dampfgarer", slug: "cuiseurs-vapeur" },
        { id: "cuiseurs-riz", name: "Reiskocher", slug: "cuiseurs-riz" },
        { id: "moulins-cafe", name: "Kaffeemühlen", slug: "moulins-cafe" },
        {
          id: "cafetieres",
          name: "Kaffeemaschinen",
          slug: "cafetieres",
          subcategories: [
            { id: "expresso", name: "Espresso", slug: "expresso" },
            { id: "filtre", name: "Filter", slug: "filtre" },
            { id: "capsules", name: "Kapseln", slug: "capsules" }
          ]
        },
        { id: "bouilloires", name: "Wasserkocher", slug: "bouilloires" },
        { id: "grille-pain", name: "Toaster", slug: "grille-pain" },
        { id: "machines-sandwich", name: "Sandwichmaker", slug: "machines-sandwich" },
        { id: "fondue-raclette", name: "Fondue- & Raclette-Geräte", slug: "fondue-raclette" }
      ]
    },
    {
      id: "entretien-maison",
      name: "Hauspflege",
      slug: "entretien-maison",
      subcategories: [
        { id: "aspirateurs-traineaux", name: "Bodenstaubsauger", slug: "aspirateurs-traineaux" },
        { id: "aspirateurs-balais", name: "Stielstaubsauger", slug: "aspirateurs-balais" },
        { id: "aspirateurs-robot", name: "Saugroboter", slug: "aspirateurs-robot" },
        { id: "aspirateurs-eau-poussiere", name: "Nass-/Trockensauger", slug: "aspirateurs-eau-poussiere" },
        { id: "nettoyeurs-vapeur", name: "Dampfreiniger", slug: "nettoyeurs-vapeur" },
        { id: "nettoyeurs-haute-pression", name: "Haus-Hochdruckreiniger", slug: "nettoyeurs-haute-pression" },
        { id: "balais-electriques", name: "Elektrische Besen", slug: "balais-electriques" },
        { id: "nettoyeurs-vitres", name: "Fensterreiniger", slug: "nettoyeurs-vitres" },
        { id: "purificateurs-air", name: "Luftreiniger", slug: "purificateurs-air" },
        { id: "deshumidificateurs", name: "Luftentfeuchter", slug: "deshumidificateurs" },
        { id: "humidificateurs", name: "Luftbefeuchter", slug: "humidificateurs" }
      ]
    },
    {
      id: "climatisation-chauffage",
      name: "Klimatisierung & Heizung",
      slug: "climatisation-chauffage",
      subcategories: [
        { id: "climatiseurs-split", name: "Split-Klimaanlagen", slug: "climatiseurs-split" },
        { id: "climatiseurs-mobiles", name: "Mobile Klimageräte", slug: "climatiseurs-mobiles" },
        {
          id: "ventilateurs",
          name: "Ventilatoren",
          slug: "ventilateurs",
          subcategories: [
            { id: "tour", name: "Turm", slug: "tour" },
            { id: "mural", name: "Wand", slug: "mural" },
            { id: "de-table", name: "Tisch", slug: "de-table" }
          ]
        },
        { id: "radiateurs-electriques", name: "Elektrische Heizkörper", slug: "radiateurs-electriques" },
        { id: "chauffages-soufflants", name: "Heizlüfter", slug: "chauffages-soufflants" },
        { id: "chauffages-gaz", name: "Gasheizer", slug: "chauffages-gaz" },
        { id: "poeles-petrole", name: "Petroleumöfen", slug: "poeles-petrole" },
        { id: "chauffe-eau-electriques", name: "Elektrische Warmwasserbereiter", slug: "chauffe-eau-electriques" },
        { id: "chauffe-eau-gaz", name: "Gas-Warmwasserbereiter", slug: "chauffe-eau-gaz" },
        { id: "chauffage-solaire-domestique", name: "Solarheizung für Zuhause", slug: "chauffage-solaire-domestique" },
        { id: "defroisseurs-vapeur", name: "Dampfglätter", slug: "defroisseurs-vapeur" }
      ]
    },
    {
      id: "electromenager-salle-de-bain",
      name: "Badgeräte",
      slug: "electromenager-salle-de-bain",
      subcategories: [
        { id: "seche-cheveux", name: "Haartrockner", slug: "seche-cheveux" },
        { id: "lisseurs-boucleurs", name: "Glätteisen & Lockenstäbe", slug: "lisseurs-boucleurs" },
        { id: "tondeuses-rasoirs", name: "Trimmer & Elektrorasierer", slug: "tondeuses-rasoirs" },
        { id: "epilateurs", name: "Epilierer", slug: "epilateurs" },
        { id: "brosse-visage", name: "Elektrische Gesichtsreinigungsbürsten", slug: "brosse-visage" },
        { id: "miroirs-lumineux", name: "Beleuchtete Spiegel", slug: "miroirs-lumineux" },
        { id: "sterilisateurs-desinfecteurs", name: "Sterilisatoren & Desinfektionsgeräte", slug: "sterilisateurs-desinfecteurs" }
      ]
    },
    {
      id: "traitement-eau",
      name: "Wasseraufbereitung",
      slug: "traitement-eau",
      subcategories: [
        { id: "filtres-eau", name: "Wasserfilter", slug: "filtres-eau" },
        { id: "purificateurs-eau", name: "Reiniger", slug: "purificateurs-eau" },
        { id: "fontaines-eau", name: "Wasserspender", slug: "fontaines-eau" },
        { id: "distributeurs-eau-chaude-froide", name: "Heiß-/Kaltwasserspender", slug: "distributeurs-eau-chaude-froide" },
        { id: "osmose-inverse", name: "Umkehrosmosegeräte", slug: "osmose-inverse" }
      ]
    },
    {
      id: "appareils-specialises",
      name: "Spezialisierte Geräte",
      slug: "appareils-specialises",
      subcategories: [
        { id: "machines-pain", name: "Brotbackautomaten", slug: "machines-pain" },
        { id: "machines-pates", name: "Nudelmaschinen", slug: "machines-pates" },
        { id: "machines-glace", name: "Speiseeismaschinen", slug: "machines-glace" },
        { id: "hot-dog", name: "Hot-Dog-Geräte", slug: "hot-dog" },
        { id: "sorbetieres", name: "Sorbetmaschinen", slug: "sorbetieres" },
        { id: "deshydrateurs-alimentaires", name: "Lebensmitteltrockner", slug: "deshydrateurs-alimentaires" },
        { id: "fumoir", name: "Räuchergeräte", slug: "fumoir" },
        { id: "plateaux-chauffants", name: "Elektrische Warmhalteplatten", slug: "plateaux-chauffants" }
      ]
    },
    {
      id: "froid-congelation-pro",
      name: "Gewerbliche Kühlung & Gefrierung",
      slug: "froid-congelation-pro",
      subcategories: [
        { id: "armoires-refrigerees", name: "Kühlmöbel (Schränke)", slug: "armoires-refrigerees" },
        { id: "congelateurs-pro", name: "Profi-Gefriergeräte", slug: "congelateurs-pro" },
        { id: "vitrines-refrigerees", name: "Kühlvitrinen", slug: "vitrines-refrigerees" },
        { id: "comptoirs-froids", name: "Kalttheken", slug: "comptoirs-froids" },
        { id: "machines-glacons", name: "Eiswürfelbereiter", slug: "machines-glacons" },
        { id: "cellules-refroidissement", name: "Schnellkühler", slug: "cellules-refroidissement" }
      ]
    },
    {
      id: "cuisson-professionnelle",
      name: "Gewerbliches Kochen",
      slug: "cuisson-professionnelle",
      subcategories: [
        {
          id: "fours-pro",
          name: "Profi-Öfen",
          slug: "fours-pro",
          subcategories: [
            { id: "pizza", name: "Pizza", slug: "pizza" },
            { id: "pain", name: "Brot", slug: "pain" },
            { id: "convection", name: "Umluft", slug: "convection" }
          ]
        },
        { id: "plaques-gaz-pro", name: "Profi-Gaskochfelder", slug: "plaques-gaz-pro" },
        { id: "grillades-planchas", name: "Grills & Plancha", slug: "grillades-planchas" },
        { id: "marmites-electriques", name: "Elektrische Kochkessel", slug: "marmites-electriques" },
        { id: "friteuses-pro", name: "Gewerbliche Fritteusen", slug: "friteuses-pro" },
        { id: "bain-maries", name: "Bain-Marie", slug: "bain-maries" }
      ]
    },
    {
      id: "accessoires-pieces-detachees",
      name: "Zubehör & Ersatzteile",
      slug: "accessoires-pieces-detachees",
      subcategories: [
        { id: "filtres-aspirateurs", name: "Staubsaugerfilter", slug: "filtres-aspirateurs" },
        { id: "filtres-frigos", name: "Kühlschrankfilter", slug: "filtres-frigos" },
        { id: "bacs-legumes", name: "Gemüseschubladen", slug: "bacs-legumes" },
        { id: "bouteilles-cartouches-gaz", name: "Gasflaschen & Kartuschen", slug: "bouteilles-cartouches-gaz" },
        { id: "tuyaux-arrivee-evacuation", name: "Zulauf- & Ablaufschläuche", slug: "tuyaux-arrivee-evacuation" },
        { id: "poignees-boutons", name: "Griffe & Knöpfe", slug: "poignees-boutons" },
        { id: "plateaux-micro-ondes", name: "Mikrowellenplatten", slug: "plateaux-micro-ondes" },
        { id: "batteries-cuisine-compatibles", name: "Kompatibles Kochgeschirr", slug: "batteries-cuisine-compatibles" },
        { id: "grilles-plaques", name: "Roste & Bleche", slug: "grilles-plaques" },
        { id: "accessoires-robot-cuisine", name: "Küchenmaschinen-Zubehör", slug: "accessoires-robot-cuisine" },
        { id: "lames-de-coupe", name: "Schneidmesser", slug: "lames-de-coupe" },
        { id: "pieces-chauffe-eau", name: "Boiler-Ersatzteile", slug: "pieces-chauffe-eau" }
      ]
    },
    {
      id: "electromenager-nomade-mini",
      name: "Mobile & Mini-Geräte",
      slug: "electromenager-nomade-mini",
      subcategories: [
        { id: "mini-glacieres-electriques", name: "Elektrische Minikühlboxen", slug: "mini-glacieres-electriques" },
        { id: "mini-cuiseurs", name: "Mini-Kocher", slug: "mini-cuiseurs" },
        { id: "appareils-portables-batterie", name: "Akku-betriebene Geräte", slug: "appareils-portables-batterie" },
        { id: "mini-ventilateurs", name: "Mini-Ventilatoren", slug: "mini-ventilateurs" },
        { id: "mini-fers-vapeur", name: "Mini-Dampfbügeleisen", slug: "mini-fers-vapeur" },
        { id: "appareils-camping", name: "Camping-Kleingeräte", slug: "appareils-camping" }
      ]
    },
    {
      id: "securite-energie",
      name: "Sicherheit & Energie",
      slug: "securite-energie",
      subcategories: [
        { id: "parafoudres", name: "Überspannungsschutz", slug: "parafoudres" },
        { id: "multiprises-intelligentes", name: "Intelligente Steckdosenleisten", slug: "multiprises-intelligentes" },
        { id: "regulateurs-tension", name: "Spannungsregler", slug: "regulateurs-tension" },
        { id: "onduleurs-domestiques", name: "USV für Zuhause", slug: "onduleurs-domestiques" }
      ]
    },
    {
      id: "marques-populaires",
      name: "Beliebte Marken",
      slug: "marques-populaires",
      subcategories: [
        { id: "samsung", name: "Samsung", slug: "samsung" },
        { id: "lg", name: "LG", slug: "lg" },
        { id: "beko", name: "Beko", slug: "beko" },
        { id: "bosch", name: "Bosch", slug: "bosch" },
        { id: "siemens", name: "Siemens", slug: "siemens" },
        { id: "whirlpool", name: "Whirlpool", slug: "whirlpool" },
        { id: "brandt", name: "Brandt", slug: "brandt" },
        { id: "kenwood", name: "Kenwood", slug: "kenwood" },
        { id: "moulinex", name: "Moulinex", slug: "moulinex" },
        { id: "philips", name: "Philips", slug: "philips" },
        { id: "hisense", name: "Hisense", slug: "hisense" },
        { id: "haier", name: "Haier", slug: "haier" },
        { id: "candy", name: "Candy", slug: "candy" },
        { id: "indesit", name: "Indesit", slug: "indesit" },
        { id: "midea", name: "Midea", slug: "midea" },
        { id: "delonghi", name: "Delonghi", slug: "delonghi" },
        { id: "severin", name: "Severin", slug: "severin" },
        { id: "rowenta", name: "Rowenta", slug: "rowenta" }
      ]
    },
    {
      id: "segments-usage",
      name: "Nutzungskategorien",
      slug: "segments-usage",
      subcategories: [
        { id: "appareils-menagers-classiques", name: "Standard-Haushaltsgeräte", slug: "appareils-menagers-classiques" },
        { id: "appareils-professionnels", name: "Professionelle Geräte", slug: "appareils-professionnels" },
        { id: "appareils-petites-cuisines", name: "Geräte für kleine Küchen", slug: "appareils-petites-cuisines" },
        { id: "appareils-energetiques-a-plus-plus", name: "Energieeffizient A+ bis A++", slug: "appareils-energetiques-a-plus-plus" },
        { id: "appareils-connectes-smart-home", name: "Smart-Home-fähige Geräte", slug: "appareils-connectes-smart-home" },
        { id: "appareils-economiques-compacts", name: "Sparsame & kompakte Geräte", slug: "appareils-economiques-compacts" }
      ]
    }
  ]
};