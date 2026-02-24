import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Plug } from "lucide-react";

export const electromenagerEn: MenuCategory = {
  id: "electromenager",
  name: "Home Appliances",
  slug: "electromenager",
  icon: <Plug className="w-4 h-4" />,
  subcategories: [
    {
      id: "refrigerateurs-congelateurs",
      name: "Refrigerators & Freezers",
      slug: "refrigerateurs-congelateurs",
      subcategories: [
        { id: "refrigerateurs-combines", name: "Combi refrigerators", slug: "refrigerateurs-combines" },
        { id: "refrigerateurs-simples", name: "Single-door refrigerators", slug: "refrigerateurs-simples" },
        { id: "refrigerateurs-americains", name: "American-style (side-by-side)", slug: "refrigerateurs-americains" },
        { id: "refrigerateurs-multi-portes", name: "Multi-door refrigerators", slug: "refrigerateurs-multi-portes" },
        { id: "refrigerateurs-encastrables", name: "Built-in refrigerators", slug: "refrigerateurs-encastrables" },
        { id: "mini-frigos", name: "Mini fridges", slug: "mini-frigos" },
        { id: "congelateurs-coffre", name: "Chest freezers", slug: "congelateurs-coffre" },
        { id: "congelateurs-armoires", name: "Upright freezers", slug: "congelateurs-armoires" },
        { id: "congelateurs-compacts", name: "Compact freezers", slug: "congelateurs-compacts" },
        { id: "refrigerateurs-boissons", name: "Beverage refrigerators", slug: "refrigerateurs-boissons" },
        { id: "refrigerateurs-vitres", name: "Glass-door refrigerators", slug: "refrigerateurs-vitres" },
        { id: "refrigerateurs-professionnels", name: "Professional refrigerators", slug: "refrigerateurs-professionnels" }
      ]
    },
    {
      id: "lavage-sechage",
      name: "Washing & Drying",
      slug: "lavage-sechage",
      subcategories: [
        { id: "lave-linge-frontal", name: "Front-load washing machines", slug: "lave-linge-frontal" },
        { id: "lave-linge-top", name: "Top-load washing machines", slug: "lave-linge-top" },
        { id: "lave-linge-grande-capacite", name: "Large-capacity washers", slug: "lave-linge-grande-capacite" },
        { id: "lave-linge-connecte", name: "Smart washers", slug: "lave-linge-connecte" },
        { id: "seche-linge-condensation", name: "Condenser dryers", slug: "seche-linge-condensation" },
        { id: "seche-linge-pompe-a-chaleur", name: "Heat pump dryers", slug: "seche-linge-pompe-a-chaleur" },
        { id: "seche-linge-evacuation", name: "Vented dryers", slug: "seche-linge-evacuation" },
        { id: "lave-linge-sechant", name: "Washer-dryers", slug: "lave-linge-sechant" },
        { id: "mini-lave-linge", name: "Mini washers", slug: "mini-lave-linge" },
        { id: "machines-professionnelles-lavage", name: "Professional machines", slug: "machines-professionnelles-lavage" }
      ]
    },
    {
      id: "cuisson-cuisine",
      name: "Cooking & Kitchen",
      slug: "cuisson-cuisine",
      subcategories: [
        {
          id: "cuisinieres",
          name: "Cookers",
          slug: "cuisinieres",
          subcategories: [
            { id: "gaz", name: "Gas", slug: "gaz" },
            { id: "electrique", name: "Electric", slug: "electrique" },
            { id: "mixte", name: "Dual-fuel", slug: "mixte" }
          ]
        },
        {
          id: "fours-encastrables",
          name: "Built-in ovens",
          slug: "fours-encastrables",
          subcategories: [
            { id: "pyrolyse", name: "Pyrolysis", slug: "pyrolyse" },
            { id: "catalyse", name: "Catalytic", slug: "catalyse" },
            { id: "vapeur", name: "Steam", slug: "vapeur" }
          ]
        },
        {
          id: "micro-ondes",
          name: "Microwave ovens",
          slug: "micro-ondes",
          subcategories: [
            { id: "grill", name: "Grill", slug: "grill" },
            { id: "combine", name: "Combination", slug: "combine" }
          ]
        },
        {
          id: "plaques-de-cuisson",
          name: "Cooktops",
          slug: "plaques-de-cuisson",
          subcategories: [
            { id: "gaz-plaques", name: "Gas", slug: "gaz-plaques" },
            { id: "induction", name: "Induction", slug: "induction" },
            { id: "vitroceramique", name: "Ceramic", slug: "vitroceramique" }
          ]
        },
        { id: "tables-de-cuisson-portatives", name: "Portable cooktops", slug: "tables-de-cuisson-portatives" },
        {
          id: "friteuses",
          name: "Fryers",
          slug: "friteuses",
          subcategories: [
            { id: "classiques", name: "Classic", slug: "classiques" },
            { id: "air-fryer", name: "Air fryer", slug: "air-fryer" }
          ]
        },
        { id: "multicuiseurs", name: "Multi-cookers", slug: "multicuiseurs" },
        { id: "autocuiseurs-cocottes", name: "Pressure cookers & Dutch ovens", slug: "autocuiseurs-cocottes" },
        { id: "machines-sous-vide", name: "Vacuum sealing machines", slug: "machines-sous-vide" },
        { id: "chauffe-plats", name: "Warming trays", slug: "chauffe-plats" }
      ]
    },
    {
      id: "petits-appareils-cuisine",
      name: "Small Kitchen Appliances",
      slug: "petits-appareils-cuisine",
      subcategories: [
        { id: "mixeurs", name: "Hand mixers", slug: "mixeurs" },
        { id: "blenders", name: "Blenders", slug: "blenders" },
        { id: "robots-cuiseurs", name: "Cooking robots", slug: "robots-cuiseurs" },
        { id: "robots-patissier", name: "Stand mixers", slug: "robots-patissier" },
        { id: "extracteurs-jus", name: "Juice extractors", slug: "extracteurs-jus" },
        { id: "centrifugeuses", name: "Centrifugal juicers", slug: "centrifugeuses" },
        { id: "batteurs", name: "Electric beaters", slug: "batteurs" },
        { id: "hachoirs", name: "Choppers", slug: "hachoirs" },
        { id: "grill-panini", name: "Grills & panini makers", slug: "grill-panini" },
        { id: "gaufriers", name: "Waffle makers", slug: "gaufriers" },
        { id: "crepieres", name: "Crepe makers", slug: "crepieres" },
        { id: "cuiseurs-vapeur", name: "Steam cookers", slug: "cuiseurs-vapeur" },
        { id: "cuiseurs-riz", name: "Rice cookers", slug: "cuiseurs-riz" },
        { id: "moulins-cafe", name: "Coffee grinders", slug: "moulins-cafe" },
        {
          id: "cafetieres",
          name: "Coffee makers",
          slug: "cafetieres",
          subcategories: [
            { id: "expresso", name: "Espresso", slug: "expresso" },
            { id: "filtre", name: "Filter", slug: "filtre" },
            { id: "capsules", name: "Capsule", slug: "capsules" }
          ]
        },
        { id: "bouilloires", name: "Kettles", slug: "bouilloires" },
        { id: "grille-pain", name: "Toasters", slug: "grille-pain" },
        { id: "machines-sandwich", name: "Sandwich makers", slug: "machines-sandwich" },
        { id: "fondue-raclette", name: "Fondue & raclette appliances", slug: "fondue-raclette" }
      ]
    },
    {
      id: "entretien-maison",
      name: "Home Care",
      slug: "entretien-maison",
      subcategories: [
        { id: "aspirateurs-traineaux", name: "Canister vacuums", slug: "aspirateurs-traineaux" },
        { id: "aspirateurs-balais", name: "Stick vacuums", slug: "aspirateurs-balais" },
        { id: "aspirateurs-robot", name: "Robot vacuums", slug: "aspirateurs-robot" },
        { id: "aspirateurs-eau-poussiere", name: "Wet & dry vacuums", slug: "aspirateurs-eau-poussiere" },
        { id: "nettoyeurs-vapeur", name: "Steam cleaners", slug: "nettoyeurs-vapeur" },
        { id: "nettoyeurs-haute-pression", name: "Home pressure washers", slug: "nettoyeurs-haute-pression" },
        { id: "balais-electriques", name: "Electric brooms", slug: "balais-electriques" },
        { id: "nettoyeurs-vitres", name: "Window cleaners", slug: "nettoyeurs-vitres" },
        { id: "purificateurs-air", name: "Air purifiers", slug: "purificateurs-air" },
        { id: "deshumidificateurs", name: "Dehumidifiers", slug: "deshumidificateurs" },
        { id: "humidificateurs", name: "Humidifiers", slug: "humidificateurs" }
      ]
    },
    {
      id: "climatisation-chauffage",
      name: "Air Conditioning & Heating",
      slug: "climatisation-chauffage",
      subcategories: [
        { id: "climatiseurs-split", name: "Split air conditioners", slug: "climatiseurs-split" },
        { id: "climatiseurs-mobiles", name: "Portable air conditioners", slug: "climatiseurs-mobiles" },
        {
          id: "ventilateurs",
          name: "Fans",
          slug: "ventilateurs",
          subcategories: [
            { id: "tour", name: "Tower", slug: "tour" },
            { id: "mural", name: "Wall", slug: "mural" },
            { id: "de-table", name: "Tabletop", slug: "de-table" }
          ]
        },
        { id: "radiateurs-electriques", name: "Electric radiators", slug: "radiateurs-electriques" },
        { id: "chauffages-soufflants", name: "Fan heaters", slug: "chauffages-soufflants" },
        { id: "chauffages-gaz", name: "Gas heaters", slug: "chauffages-gaz" },
        { id: "poeles-petrole", name: "Kerosene stoves", slug: "poeles-petrole" },
        { id: "chauffe-eau-electriques", name: "Electric water heaters", slug: "chauffe-eau-electriques" },
        { id: "chauffe-eau-gaz", name: "Gas water heaters", slug: "chauffe-eau-gaz" },
        { id: "chauffage-solaire-domestique", name: "Home solar heating", slug: "chauffage-solaire-domestique" },
        { id: "defroisseurs-vapeur", name: "Garment steamers", slug: "defroisseurs-vapeur" }
      ]
    },
    {
      id: "electromenager-salle-de-bain",
      name: "Bathroom Appliances",
      slug: "electromenager-salle-de-bain",
      subcategories: [
        { id: "seche-cheveux", name: "Hair dryers", slug: "seche-cheveux" },
        { id: "lisseurs-boucleurs", name: "Hair straighteners & curlers", slug: "lisseurs-boucleurs" },
        { id: "tondeuses-rasoirs", name: "Trimmers & electric shavers", slug: "tondeuses-rasoirs" },
        { id: "epilateurs", name: "Epilators", slug: "epilateurs" },
        { id: "brosse-visage", name: "Electric facial brush", slug: "brosse-visage" },
        { id: "miroirs-lumineux", name: "Lighted mirrors", slug: "miroirs-lumineux" },
        { id: "sterilisateurs-desinfecteurs", name: "Sterilizers & disinfectors", slug: "sterilisateurs-desinfecteurs" }
      ]
    },
    {
      id: "traitement-eau",
      name: "Water Treatment",
      slug: "traitement-eau",
      subcategories: [
        { id: "filtres-eau", name: "Water filters", slug: "filtres-eau" },
        { id: "purificateurs-eau", name: "Purifiers", slug: "purificateurs-eau" },
        { id: "fontaines-eau", name: "Water dispensers", slug: "fontaines-eau" },
        { id: "distributeurs-eau-chaude-froide", name: "Hot/cold water dispensers", slug: "distributeurs-eau-chaude-froide" },
        { id: "osmose-inverse", name: "Reverse osmosis systems", slug: "osmose-inverse" }
      ]
    },
    {
      id: "appareils-specialises",
      name: "Specialized Appliances",
      slug: "appareils-specialises",
      subcategories: [
        { id: "machines-pain", name: "Bread makers", slug: "machines-pain" },
        { id: "machines-pates", name: "Pasta makers", slug: "machines-pates" },
        { id: "machines-glace", name: "Ice cream makers", slug: "machines-glace" },
        { id: "hot-dog", name: "Hot dog machines", slug: "hot-dog" },
        { id: "sorbetieres", name: "Sorbet makers", slug: "sorbetieres" },
        { id: "deshydrateurs-alimentaires", name: "Food dehydrators", slug: "deshydrateurs-alimentaires" },
        { id: "fumoir", name: "Smokers", slug: "fumoir" },
        { id: "plateaux-chauffants", name: "Electric warming trays", slug: "plateaux-chauffants" }
      ]
    },
    {
      id: "froid-congelation-pro",
      name: "Professional Refrigeration & Freezing",
      slug: "froid-congelation-pro",
      subcategories: [
        { id: "armoires-refrigerees", name: "Refrigerated cabinets", slug: "armoires-refrigerees" },
        { id: "congelateurs-pro", name: "Professional freezers", slug: "congelateurs-pro" },
        { id: "vitrines-refrigerees", name: "Refrigerated display cases", slug: "vitrines-refrigerees" },
        { id: "comptoirs-froids", name: "Cold counters", slug: "comptoirs-froids" },
        { id: "machines-glacons", name: "Ice makers", slug: "machines-glacons" },
        { id: "cellules-refroidissement", name: "Blast chillers", slug: "cellules-refroidissement" }
      ]
    },
    {
      id: "cuisson-professionnelle",
      name: "Professional Cooking",
      slug: "cuisson-professionnelle",
      subcategories: [
        {
          id: "fours-pro",
          name: "Professional ovens",
          slug: "fours-pro",
          subcategories: [
            { id: "pizza", name: "Pizza", slug: "pizza" },
            { id: "pain", name: "Bread", slug: "pain" },
            { id: "convection", name: "Convection", slug: "convection" }
          ]
        },
        { id: "plaques-gaz-pro", name: "Professional gas cooktops", slug: "plaques-gaz-pro" },
        { id: "grillades-planchas", name: "Grills & planchas", slug: "grillades-planchas" },
        { id: "marmites-electriques", name: "Electric kettles/pots", slug: "marmites-electriques" },
        { id: "friteuses-pro", name: "Professional fryers", slug: "friteuses-pro" },
        { id: "bain-maries", name: "Bain-maries", slug: "bain-maries" }
      ]
    },
    {
      id: "accessoires-pieces-detachees",
      name: "Accessories & Spare Parts",
      slug: "accessoires-pieces-detachees",
      subcategories: [
        { id: "filtres-aspirateurs", name: "Vacuum filters", slug: "filtres-aspirateurs" },
        { id: "filtres-frigos", name: "Fridge filters", slug: "filtres-frigos" },
        { id: "bacs-legumes", name: "Crisper drawers", slug: "bacs-legumes" },
        { id: "bouteilles-cartouches-gaz", name: "Gas bottles & cartridges", slug: "bouteilles-cartouches-gaz" },
        { id: "tuyaux-arrivee-evacuation", name: "Inlet & drain hoses", slug: "tuyaux-arrivee-evacuation" },
        { id: "poignees-boutons", name: "Handles & knobs", slug: "poignees-boutons" },
        { id: "plateaux-micro-ondes", name: "Microwave trays", slug: "plateaux-micro-ondes" },
        { id: "batteries-cuisine-compatibles", name: "Compatible cookware", slug: "batteries-cuisine-compatibles" },
        { id: "grilles-plaques", name: "Grates & plates", slug: "grilles-plaques" },
        { id: "accessoires-robot-cuisine", name: "Kitchen robot accessories", slug: "accessoires-robot-cuisine" },
        { id: "lames-de-coupe", name: "Cutting blades", slug: "lames-de-coupe" },
        { id: "pieces-chauffe-eau", name: "Water heater parts", slug: "pieces-chauffe-eau" }
      ]
    },
    {
      id: "electromenager-nomade-mini",
      name: "Portable & Mini Appliances",
      slug: "electromenager-nomade-mini",
      subcategories: [
        { id: "mini-glacieres-electriques", name: "Mini electric coolers", slug: "mini-glacieres-electriques" },
        { id: "mini-cuiseurs", name: "Mini cookers", slug: "mini-cuiseurs" },
        { id: "appareils-portables-batterie", name: "Battery-powered portable devices", slug: "appareils-portables-batterie" },
        { id: "mini-ventilateurs", name: "Mini fans", slug: "mini-ventilateurs" },
        { id: "mini-fers-vapeur", name: "Mini steam irons", slug: "mini-fers-vapeur" },
        { id: "appareils-camping", name: "Small camping appliances", slug: "appareils-camping" }
      ]
    },
    {
      id: "securite-energie",
      name: "Safety & Energy",
      slug: "securite-energie",
      subcategories: [
        { id: "parafoudres", name: "Surge protectors", slug: "parafoudres" },
        { id: "multiprises-intelligentes", name: "Smart power strips", slug: "multiprises-intelligentes" },
        { id: "regulateurs-tension", name: "Voltage regulators", slug: "regulateurs-tension" },
        { id: "onduleurs-domestiques", name: "Home UPS", slug: "onduleurs-domestiques" }
      ]
    },
    {
      id: "marques-populaires",
      name: "Popular Brands",
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
      name: "Usage Segments",
      slug: "segments-usage",
      subcategories: [
        { id: "appareils-menagers-classiques", name: "Standard household appliances", slug: "appareils-menagers-classiques" },
        { id: "appareils-professionnels", name: "Professional appliances", slug: "appareils-professionnels" },
        { id: "appareils-petites-cuisines", name: "Small-kitchen appliances", slug: "appareils-petites-cuisines" },
        { id: "appareils-energetiques-a-plus-plus", name: "Energy-efficient A+ to A++", slug: "appareils-energetiques-a-plus-plus" },
        { id: "appareils-connectes-smart-home", name: "Smart-home connected appliances", slug: "appareils-connectes-smart-home" },
        { id: "appareils-economiques-compacts", name: "Economy & compact appliances", slug: "appareils-economiques-compacts" }
      ]
    }
  ]
};