import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Plug } from "lucide-react";

export const electromenagerFr: MenuCategory = {
  id: "electromenager",
  name: "Électroménager",
  slug: "electromenager",
  icon: <Plug className="w-4 h-4" />,
  subcategories: [
    {
      id: "refrigerateurs-congelateurs",
      name: "Réfrigérateurs & Congélateurs",
      slug: "refrigerateurs-congelateurs",
      subcategories: [
        { id: "refrigerateurs-combines", name: "Réfrigérateurs combinés", slug: "refrigerateurs-combines" },
        { id: "refrigerateurs-simples", name: "Réfrigérateurs simples", slug: "refrigerateurs-simples" },
        { id: "refrigerateurs-americains", name: "Réfrigérateurs américains", slug: "refrigerateurs-americains" },
        { id: "refrigerateurs-multi-portes", name: "Réfrigérateurs multi-portes", slug: "refrigerateurs-multi-portes" },
        { id: "refrigerateurs-encastrables", name: "Réfrigérateurs encastrables", slug: "refrigerateurs-encastrables" },
        { id: "mini-frigos", name: "Mini-frigos", slug: "mini-frigos" },
        { id: "congelateurs-coffre", name: "Congélateurs coffre", slug: "congelateurs-coffre" },
        { id: "congelateurs-armoires", name: "Congélateurs armoires", slug: "congelateurs-armoires" },
        { id: "congelateurs-compacts", name: "Congélateurs compacts", slug: "congelateurs-compacts" },
        { id: "refrigerateurs-boissons", name: "Réfrigérateurs à boissons", slug: "refrigerateurs-boissons" },
        { id: "refrigerateurs-vitres", name: "Réfrigérateurs vitrés", slug: "refrigerateurs-vitres" },
        { id: "refrigerateurs-professionnels", name: "Réfrigérateurs professionnels", slug: "refrigerateurs-professionnels" }
      ]
    },
    {
      id: "lavage-sechage",
      name: "Lavage & Séchage",
      slug: "lavage-sechage",
      subcategories: [
        { id: "lave-linge-frontal", name: "Machines à laver frontales", slug: "lave-linge-frontal" },
        { id: "lave-linge-top", name: "Machines à laver top", slug: "lave-linge-top" },
        { id: "lave-linge-grande-capacite", name: "Lave-linges grande capacité", slug: "lave-linge-grande-capacite" },
        { id: "lave-linge-connecte", name: "Lave-linges connectés", slug: "lave-linge-connecte" },
        { id: "seche-linge-condensation", name: "Sèche-linges à condensation", slug: "seche-linge-condensation" },
        { id: "seche-linge-pompe-a-chaleur", name: "Sèche-linges pompe à chaleur", slug: "seche-linge-pompe-a-chaleur" },
        { id: "seche-linge-evacuation", name: "Sèche-linges évacuation", slug: "seche-linge-evacuation" },
        { id: "lave-linge-sechant", name: "Lave-linge séchant", slug: "lave-linge-sechant" },
        { id: "mini-lave-linge", name: "Mini lave-linges", slug: "mini-lave-linge" },
        { id: "machines-professionnelles-lavage", name: "Machines professionnelles", slug: "machines-professionnelles-lavage" }
      ]
    },
    {
      id: "cuisson-cuisine",
      name: "Cuisson & Cuisine",
      slug: "cuisson-cuisine",
      subcategories: [
        {
          id: "cuisinieres",
          name: "Cuisinières",
          slug: "cuisinieres",
          subcategories: [
            { id: "gaz", name: "Gaz", slug: "gaz" },
            { id: "electrique", name: "Électrique", slug: "electrique" },
            { id: "mixte", name: "Mixte", slug: "mixte" }
          ]
        },
        {
          id: "fours-encastrables",
          name: "Fours encastrables",
          slug: "fours-encastrables",
          subcategories: [
            { id: "pyrolyse", name: "Pyrolyse", slug: "pyrolyse" },
            { id: "catalyse", name: "Catalyse", slug: "catalyse" },
            { id: "vapeur", name: "Vapeur", slug: "vapeur" }
          ]
        },
        {
          id: "micro-ondes",
          name: "Micro-ondes",
          slug: "micro-ondes",
          subcategories: [
            { id: "grill", name: "Grill", slug: "grill" },
            { id: "combine", name: "Combiné", slug: "combine" }
          ]
        },
        {
          id: "plaques-de-cuisson",
          name: "Plaques de cuisson",
          slug: "plaques-de-cuisson",
          subcategories: [
            { id: "gaz-plaques", name: "Gaz", slug: "gaz-plaques" },
            { id: "induction", name: "Induction", slug: "induction" },
            { id: "vitroceramique", name: "Vitrocéramique", slug: "vitroceramique" }
          ]
        },
        { id: "tables-de-cuisson-portatives", name: "Tables de cuisson portatives", slug: "tables-de-cuisson-portatives" },
        {
          id: "friteuses",
          name: "Friteuses",
          slug: "friteuses",
          subcategories: [
            { id: "classiques", name: "Classiques", slug: "classiques" },
            { id: "air-fryer", name: "Air fryer", slug: "air-fryer" }
          ]
        },
        { id: "multicuiseurs", name: "Multicuiseurs", slug: "multicuiseurs" },
        { id: "autocuiseurs-cocottes", name: "Autocuiseurs & cocottes", slug: "autocuiseurs-cocottes" },
        { id: "machines-sous-vide", name: "Machines sous-vide", slug: "machines-sous-vide" },
        { id: "chauffe-plats", name: "Chauffe-plats", slug: "chauffe-plats" }
      ]
    },
    {
      id: "petits-appareils-cuisine",
      name: "Petits Appareils de Cuisine",
      slug: "petits-appareils-cuisine",
      subcategories: [
        { id: "mixeurs", name: "Mixeurs", slug: "mixeurs" },
        { id: "blenders", name: "Blenders", slug: "blenders" },
        { id: "robots-cuiseurs", name: "Robots cuiseurs", slug: "robots-cuiseurs" },
        { id: "robots-patissier", name: "Robots pâtissier", slug: "robots-patissier" },
        { id: "extracteurs-jus", name: "Extracteurs de jus", slug: "extracteurs-jus" },
        { id: "centrifugeuses", name: "Centrifugeuses", slug: "centrifugeuses" },
        { id: "batteurs", name: "Batteurs", slug: "batteurs" },
        { id: "hachoirs", name: "Hachoirs", slug: "hachoirs" },
        { id: "grill-panini", name: "Grill & panini makers", slug: "grill-panini" },
        { id: "gaufriers", name: "Gaufriers", slug: "gaufriers" },
        { id: "crepieres", name: "Crêpières", slug: "crepieres" },
        { id: "cuiseurs-vapeur", name: "Cuiseurs vapeur", slug: "cuiseurs-vapeur" },
        { id: "cuiseurs-riz", name: "Cuiseurs riz", slug: "cuiseurs-riz" },
        { id: "moulins-cafe", name: "Moulins à café", slug: "moulins-cafe" },
        {
          id: "cafetieres",
          name: "Cafetières",
          slug: "cafetieres",
          subcategories: [
            { id: "expresso", name: "Expresso", slug: "expresso" },
            { id: "filtre", name: "Filtre", slug: "filtre" },
            { id: "capsules", name: "Capsules", slug: "capsules" }
          ]
        },
        { id: "bouilloires", name: "Bouilloires", slug: "bouilloires" },
        { id: "grille-pain", name: "Grille-pain", slug: "grille-pain" },
        { id: "machines-sandwich", name: "Machines à sandwich", slug: "machines-sandwich" },
        { id: "fondue-raclette", name: "Appareils à fondue & raclette", slug: "fondue-raclette" }
      ]
    },
    {
      id: "entretien-maison",
      name: "Entretien de la Maison",
      slug: "entretien-maison",
      subcategories: [
        { id: "aspirateurs-traineaux", name: "Aspirateurs traîneaux", slug: "aspirateurs-traineaux" },
        { id: "aspirateurs-balais", name: "Aspirateurs balais", slug: "aspirateurs-balais" },
        { id: "aspirateurs-robot", name: "Aspirateurs robot", slug: "aspirateurs-robot" },
        { id: "aspirateurs-eau-poussiere", name: "Aspirateurs eau & poussière", slug: "aspirateurs-eau-poussiere" },
        { id: "nettoyeurs-vapeur", name: "Nettoyeurs vapeurs", slug: "nettoyeurs-vapeur" },
        { id: "nettoyeurs-haute-pression", name: "Nettoyeurs haute pression domestiques", slug: "nettoyeurs-haute-pression" },
        { id: "balais-electriques", name: "Balais électriques", slug: "balais-electriques" },
        { id: "nettoyeurs-vitres", name: "Nettoyeurs de vitres", slug: "nettoyeurs-vitres" },
        { id: "purificateurs-air", name: "Purificateurs d’air", slug: "purificateurs-air" },
        { id: "deshumidificateurs", name: "Déshumidificateurs", slug: "deshumidificateurs" },
        { id: "humidificateurs", name: "Humidificateurs", slug: "humidificateurs" }
      ]
    },
    {
      id: "climatisation-chauffage",
      name: "Climatisation & Chauffage",
      slug: "climatisation-chauffage",
      subcategories: [
        { id: "climatiseurs-split", name: "Climatiseurs split", slug: "climatiseurs-split" },
        { id: "climatiseurs-mobiles", name: "Climatiseurs mobiles", slug: "climatiseurs-mobiles" },
        {
          id: "ventilateurs",
          name: "Ventilateurs",
          slug: "ventilateurs",
          subcategories: [
            { id: "tour", name: "Tour", slug: "tour" },
            { id: "mural", name: "Mural", slug: "mural" },
            { id: "de-table", name: "De table", slug: "de-table" }
          ]
        },
        { id: "radiateurs-electriques", name: "Radiateurs électriques", slug: "radiateurs-electriques" },
        { id: "chauffages-soufflants", name: "Chauffages soufflants", slug: "chauffages-soufflants" },
        { id: "chauffages-gaz", name: "Chauffages à gaz", slug: "chauffages-gaz" },
        { id: "poeles-petrole", name: "Poêles à pétrole", slug: "poeles-petrole" },
        { id: "chauffe-eau-electriques", name: "Chauffe-eau électriques", slug: "chauffe-eau-electriques" },
        { id: "chauffe-eau-gaz", name: "Chauffe-eau gaz", slug: "chauffe-eau-gaz" },
        { id: "chauffage-solaire-domestique", name: "Chauffage solaire domestique", slug: "chauffage-solaire-domestique" },
        { id: "defroisseurs-vapeur", name: "Défroisseurs vapeur", slug: "defroisseurs-vapeur" }
      ]
    },
    {
      id: "electromenager-salle-de-bain",
      name: "Électroménager pour Salle de Bain",
      slug: "electromenager-salle-de-bain",
      subcategories: [
        { id: "seche-cheveux", name: "Sèche-cheveux", slug: "seche-cheveux" },
        { id: "lisseurs-boucleurs", name: "Lisseurs & boucleurs", slug: "lisseurs-boucleurs" },
        { id: "tondeuses-rasoirs", name: "Tondeuses & rasoirs électriques", slug: "tondeuses-rasoirs" },
        { id: "epilateurs", name: "Épilateurs", slug: "epilateurs" },
        { id: "brosse-visage", name: "Brosse visage électrique", slug: "brosse-visage" },
        { id: "miroirs-lumineux", name: "Miroirs lumineux", slug: "miroirs-lumineux" },
        { id: "sterilisateurs-desinfecteurs", name: "Stérilisateurs & désinfecteurs", slug: "sterilisateurs-desinfecteurs" }
      ]
    },
    {
      id: "traitement-eau",
      name: "Traitement de l’Eau",
      slug: "traitement-eau",
      subcategories: [
        { id: "filtres-eau", name: "Filtres à eau", slug: "filtres-eau" },
        { id: "purificateurs-eau", name: "Purificateurs", slug: "purificateurs-eau" },
        { id: "fontaines-eau", name: "Fontaines à eau", slug: "fontaines-eau" },
        { id: "distributeurs-eau-chaude-froide", name: "Distributeurs eau chaude/froide", slug: "distributeurs-eau-chaude-froide" },
        { id: "osmose-inverse", name: "Appareils osmose inverse", slug: "osmose-inverse" }
      ]
    },
    {
      id: "appareils-specialises",
      name: "Appareils Spécialisés",
      slug: "appareils-specialises",
      subcategories: [
        { id: "machines-pain", name: "Machines à pain", slug: "machines-pain" },
        { id: "machines-pates", name: "Machines à pâtes", slug: "machines-pates" },
        { id: "machines-glace", name: "Machines à glace", slug: "machines-glace" },
        { id: "hot-dog", name: "Appareils à hot-dog", slug: "hot-dog" },
        { id: "sorbetieres", name: "Sorbetières", slug: "sorbetieres" },
        { id: "deshydrateurs-alimentaires", name: "Déshydrateurs alimentaires", slug: "deshydrateurs-alimentaires" },
        { id: "fumoir", name: "Appareils fumoir", slug: "fumoir" },
        { id: "plateaux-chauffants", name: "Plateaux chauffants électriques", slug: "plateaux-chauffants" }
      ]
    },
    {
      id: "froid-congelation-pro",
      name: "Froid & Congélation Professionnel",
      slug: "froid-congelation-pro",
      subcategories: [
        { id: "armoires-refrigerees", name: "Armoires réfrigérées", slug: "armoires-refrigerees" },
        { id: "congelateurs-pro", name: "Congélateurs pro", slug: "congelateurs-pro" },
        { id: "vitrines-refrigerees", name: "Vitrines réfrigérées", slug: "vitrines-refrigerees" },
        { id: "comptoirs-froids", name: "Comptoirs froids", slug: "comptoirs-froids" },
        { id: "machines-glacons", name: "Machines à glaçons", slug: "machines-glacons" },
        { id: "cellules-refroidissement", name: "Cellules de refroidissement", slug: "cellules-refroidissement" }
      ]
    },
    {
      id: "cuisson-professionnelle",
      name: "Cuisson Professionnelle",
      slug: "cuisson-professionnelle",
      subcategories: [
        {
          id: "fours-pro",
          name: "Fours pro",
          slug: "fours-pro",
          subcategories: [
            { id: "pizza", name: "Pizza", slug: "pizza" },
            { id: "pain", name: "Pain", slug: "pain" },
            { id: "convection", name: "Convection", slug: "convection" }
          ]
        },
        { id: "plaques-gaz-pro", name: "Plaques gaz pro", slug: "plaques-gaz-pro" },
        { id: "grillades-planchas", name: "Grillades & planchas", slug: "grillades-planchas" },
        { id: "marmites-electriques", name: "Marmites électriques", slug: "marmites-electriques" },
        { id: "friteuses-pro", name: "Friteuses professionnelles", slug: "friteuses-pro" },
        { id: "bain-maries", name: "Bain-maries", slug: "bain-maries" }
      ]
    },
    {
      id: "accessoires-pieces-detachees",
      name: "Accessoires & Pièces Détachées",
      slug: "accessoires-pieces-detachees",
      subcategories: [
        { id: "filtres-aspirateurs", name: "Filtres aspirateurs", slug: "filtres-aspirateurs" },
        { id: "filtres-frigos", name: "Filtres frigos", slug: "filtres-frigos" },
        { id: "bacs-legumes", name: "Bacs à légumes", slug: "bacs-legumes" },
        { id: "bouteilles-cartouches-gaz", name: "Bouteilles & cartouches gaz", slug: "bouteilles-cartouches-gaz" },
        { id: "tuyaux-arrivee-evacuation", name: "Tuyaux d'arrivée & évacuation", slug: "tuyaux-arrivee-evacuation" },
        { id: "poignees-boutons", name: "Poignées & boutons", slug: "poignees-boutons" },
        { id: "plateaux-micro-ondes", name: "Plateaux micro-ondes", slug: "plateaux-micro-ondes" },
        { id: "batteries-cuisine-compatibles", name: "Batteries de cuisine compatibles appareils", slug: "batteries-cuisine-compatibles" },
        { id: "grilles-plaques", name: "Grilles & plaques", slug: "grilles-plaques" },
        { id: "accessoires-robot-cuisine", name: "Accessoires robot cuisine", slug: "accessoires-robot-cuisine" },
        { id: "lames-de-coupe", name: "Lames de coupe", slug: "lames-de-coupe" },
        { id: "pieces-chauffe-eau", name: "Pièces chauffe-eau", slug: "pieces-chauffe-eau" }
      ]
    },
    {
      id: "electromenager-nomade-mini",
      name: "Électroménager Nomade & Mini",
      slug: "electromenager-nomade-mini",
      subcategories: [
        { id: "mini-glacieres-electriques", name: "Mini glaçières électriques", slug: "mini-glacieres-electriques" },
        { id: "mini-cuiseurs", name: "Mini cuiseurs", slug: "mini-cuiseurs" },
        { id: "appareils-portables-batterie", name: "Appareils portables à batterie", slug: "appareils-portables-batterie" },
        { id: "mini-ventilateurs", name: "Mini ventilateurs", slug: "mini-ventilateurs" },
        { id: "mini-fers-vapeur", name: "Mini fers à vapeur", slug: "mini-fers-vapeur" },
        { id: "appareils-camping", name: "Petits appareils de camping", slug: "appareils-camping" }
      ]
    },
    {
      id: "securite-energie",
      name: "Sécurité & Énergie",
      slug: "securite-energie",
      subcategories: [
        { id: "parafoudres", name: "Parafoudres", slug: "parafoudres" },
        { id: "multiprises-intelligentes", name: "Multiprises intelligentes", slug: "multiprises-intelligentes" },
        { id: "regulateurs-tension", name: "Régulateurs de tension", slug: "regulateurs-tension" },
        { id: "onduleurs-domestiques", name: "Onduleurs domestiques", slug: "onduleurs-domestiques" }
      ]
    },
    {
      id: "marques-populaires",
      name: "Marques Populaires",
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
      name: "Segments d’Usage",
      slug: "segments-usage",
      subcategories: [
        { id: "appareils-menagers-classiques", name: "Appareils ménagers classiques", slug: "appareils-menagers-classiques" },
        { id: "appareils-professionnels", name: "Appareils professionnels", slug: "appareils-professionnels" },
        { id: "appareils-petites-cuisines", name: "Appareils pour petites cuisines", slug: "appareils-petites-cuisines" },
        { id: "appareils-energetiques-a-plus-plus", name: "Appareils énergétiques bas & A++", slug: "appareils-energetiques-a-plus-plus" },
        { id: "appareils-connectes-smart-home", name: "Appareils connectés smart-home", slug: "appareils-connectes-smart-home" },
        { id: "appareils-economiques-compacts", name: "Appareils économiques & compacts", slug: "appareils-economiques-compacts" }
      ]
    }
  ]
};