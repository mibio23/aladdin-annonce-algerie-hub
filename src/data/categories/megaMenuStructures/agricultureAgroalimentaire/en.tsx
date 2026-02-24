import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Wheat } from "lucide-react";

export const agricultureAgroalimentaireEn: MenuCategory = {
  id: "agriculture-agroalimentaire",
  name: "Agriculture & Agri‑food",
  slug: "agriculture-agroalimentaire",
  icon: <Wheat className="w-4 h-4" />,
  description: "Agriculture and agri‑food: equipment, inputs, livestock, processing and logistics.",
  subcategories: [
    { id: "materiel-agricole", name: "Agricultural Equipment", slug: "materiel-agricole", description: "Machinery and equipment for tillage, seeding, harvesting and handling.", subcategories: [
      { id: "tracteurs-agricoles", name: "Agricultural tractors", slug: "tracteurs-agricoles" },
      { id: "micro-tracteurs", name: "Micro‑tractors", slug: "micro-tracteurs" },
      { id: "motoculteurs", name: "Tillers", slug: "motoculteurs" },
      { id: "moissonneuses-batteuses", name: "Combine harvesters", slug: "moissonneuses-batteuses" },
      { id: "charrues", name: "Ploughs", slug: "charrues" },
      { id: "herses", name: "Harrows", slug: "herses" },
      { id: "semoirs", name: "Seeders", slug: "semoirs" },
      { id: "pulverisateurs-agricoles", name: "Agricultural sprayers", slug: "pulverisateurs-agricoles" },
      { id: "remorques-agricoles", name: "Agricultural trailers", slug: "remorques-agricoles" },
      { id: "broyeurs-agricoles", name: "Shredders", slug: "broyeurs-agricoles" },
      { id: "epandeurs-agricoles", name: "Spreaders", slug: "epandeurs-agricoles" },
      { id: "tarieres-mecaniques", name: "Mechanical augers", slug: "tarieres-mecaniques" },
      { id: "presses-a-balles", name: "Bale presses", slug: "presses-a-balles" },
      { id: "elevateurs-agricoles", name: "Agricultural elevators", slug: "elevateurs-agricoles" }
    ]},
    { id: "outils-equipements-de-culture", name: "Cultivation tools & equipment", slug: "outils-equipements-de-culture", description: "Hand tools and accessories for crop care and gardening.", subcategories: [
      { id: "beches", name: "Spades", slug: "beches" },
      { id: "pelles", name: "Shovels", slug: "pelles" },
      { id: "rateaux", name: "Rakes", slug: "rateaux" },
      { id: "houes", name: "Hoes", slug: "houes" },
      { id: "sarcleuses", name: "Weeders", slug: "sarcleuses" },
      { id: "binettes", name: "Hand hoes", slug: "binettes" },
      { id: "secateurs", name: "Pruning shears", slug: "secateurs" },
      { id: "cisailles", name: "Loppers", slug: "cisailles" },
      { id: "arrosoirs", name: "Watering cans", slug: "arrosoirs" },
      { id: "pulverisateurs-manuels", name: "Hand sprayers", slug: "pulverisateurs-manuels" },
      { id: "brouettes", name: "Wheelbarrows", slug: "brouettes" },
      { id: "gants-de-jardin", name: "Garden gloves", slug: "gants-de-jardin" },
      { id: "lames-agricoles", name: "Agricultural blades", slug: "lames-agricoles" },
      { id: "filets-de-recolte", name: "Harvest nets", slug: "filets-de-recolte" }
    ]},
    { id: "systemes-irrigation", name: "Irrigation systems", slug: "systemes-irrigation", description: "Irrigation and watering solutions to optimize water supply.", subcategories: [
      { id: "tuyaux-d-arrosage", name: "Watering hoses", slug: "tuyaux-d-arrosage" },
      { id: "goutte-a-goutte", name: "Drip systems", slug: "goutte-a-goutte" },
      { id: "programmateurs-irrigation", name: "Irrigation timers", slug: "programmateurs-irrigation" },
      { id: "aspersions", name: "Sprinklers", slug: "aspersions" },
      { id: "pompes-a-eau", name: "Water pumps", slug: "pompes-a-eau" },
      { id: "motopompes", name: "Motor pumps", slug: "motopompes" },
      { id: "raccords-irrigation", name: "Irrigation fittings", slug: "raccords-irrigation" },
      { id: "filtres-d-eau", name: "Water filters", slug: "filtres-d-eau" },
      { id: "arroseurs", name: "Sprayers", slug: "arroseurs" },
      { id: "reservoirs-d-eau", name: "Water tanks", slug: "reservoirs-d-eau" }
    ]},
    { id: "semences-plants", name: "Seeds & seedlings", slug: "semences-plants", description: "Seeds, seedlings and bulbs for vegetable, cereal and tree crops.", subcategories: [
      { id: "semences-potageres", name: "Vegetable seeds", slug: "semences-potageres" },
      { id: "semences-cerealieres", name: "Cereal seeds", slug: "semences-cerealieres" },
      { id: "semences-fourrageres", name: "Forage seeds", slug: "semences-fourrageres" },
      { id: "plants-de-legumes", name: "Vegetable seedlings", slug: "plants-de-legumes" },
      { id: "plants-fruitiers", name: "Fruit tree seedlings", slug: "plants-fruitiers" },
      { id: "plants-d-arbres", name: "Tree seedlings", slug: "plants-d-arbres" },
      { id: "graines-biologiques", name: "Organic seeds", slug: "graines-biologiques" },
      { id: "graines-hybrides", name: "Hybrid seeds", slug: "graines-hybrides" },
      { id: "bulbes", name: "Bulbs", slug: "bulbes" },
      { id: "jeunes-pousses", name: "Seedlings", slug: "jeunes-pousses" }
    ]},
    { id: "engrais-fertilisants", name: "Fertilizers & soil amendments", slug: "engrais-fertilisants", description: "Soil amendments and nutrients to improve fertility and growth.", subcategories: [
      { id: "engrais-chimiques", name: "Chemical fertilizers", slug: "engrais-chimiques" },
      { id: "engrais-organiques", name: "Organic fertilizers", slug: "engrais-organiques" },
      { id: "compost", name: "Compost", slug: "compost" },
      { id: "fumiers", name: "Manure", slug: "fumiers" },
      { id: "amendements-calcaires", name: "Lime amendments", slug: "amendements-calcaires" },
      { id: "stimulateurs-de-croissance", name: "Growth stimulators", slug: "stimulateurs-de-croissance" },
      { id: "terreaux", name: "Potting soil", slug: "terreaux" },
      { id: "substrats-agricoles", name: "Agricultural substrates", slug: "substrats-agricoles" },
      { id: "additifs-nutritifs", name: "Nutrient additives", slug: "additifs-nutritifs" }
    ]},
    { id: "produits-phytosanitaires", name: "Crop protection products", slug: "produits-phytosanitaires", description: "Crop protection products and biological treatments.", subcategories: [
      { id: "insecticides-agricoles", name: "Agricultural insecticides", slug: "insecticides-agricoles" },
      { id: "fongicides", name: "Fungicides", slug: "fongicides" },
      { id: "herbicides", name: "Herbicides", slug: "herbicides" },
      { id: "traitements-biologiques", name: "Biological treatments", slug: "traitements-biologiques" },
      { id: "repulsifs-naturels", name: "Natural repellents", slug: "repulsifs-naturels" },
      { id: "pieges-anti-nuisibles", name: "Pest traps", slug: "pieges-anti-nuisibles" },
      { id: "protections-pour-cultures", name: "Crop protection systems", slug: "protections-pour-cultures" }
    ]},
    { id: "elevage-soins-animaux", name: "Livestock & animal care", slug: "elevage-soins-animaux", description: "Feed, care and equipment for livestock.", subcategories: [
      { id: "aliments-pour-betail", name: "Cattle feed", slug: "aliments-pour-betail" },
      { id: "aliments-pour-volailles", name: "Poultry feed", slug: "aliments-pour-volailles" },
      { id: "aliments-pour-ovins-caprins", name: "Sheep & goats feed", slug: "aliments-pour-ovins-caprins" },
      { id: "complements-nutritionnels", name: "Nutritional supplements", slug: "complements-nutritionnels" },
      { id: "produits-veterinaires", name: "Veterinary products", slug: "produits-veterinaires" },
      { id: "mangeoires", name: "Feeders", slug: "mangeoires" },
      { id: "abreuvoirs", name: "Waterers", slug: "abreuvoirs" },
      { id: "clotures-electriques", name: "Electric fences", slug: "clotures-electriques" },
      { id: "parcs-cages", name: "Pens & cages", slug: "parcs-cages" },
      { id: "couveuses", name: "Incubators", slug: "couveuses" },
      { id: "nichoirs", name: "Nest boxes", slug: "nichoirs" },
      { id: "equipements-de-traite", name: "Milking equipment", slug: "equipements-de-traite" },
      { id: "tondeuses-animales", name: "Animal clippers", slug: "tondeuses-animales" }
    ]},
    { id: "materiel-elevage", name: "Livestock equipment", slug: "materiel-elevage", description: "Specialized equipment for livestock, milking and storage.", subcategories: [
      { id: "machines-a-traire", name: "Milking machines", slug: "machines-a-traire" },
      { id: "tanks-a-lait", name: "Milk tanks", slug: "tanks-a-lait" },
      { id: "broyeurs-a-grains", name: "Grain grinders", slug: "broyeurs-a-grains" },
      { id: "distributeurs-automatiques-d-aliments", name: "Automatic feeders", slug: "distributeurs-automatiques-d-aliments" },
      { id: "enrubanneuses", name: "Balers/wrappers", slug: "enrubanneuses" },
      { id: "systemes-de-ventilation-elevage", name: "Ventilation systems", slug: "systemes-de-ventilation-elevage" },
      { id: "tapis-d-elevage", name: "Livestock mats", slug: "tapis-d-elevage" },
      { id: "abris-metalliques", name: "Metal shelters", slug: "abris-metalliques" }
    ]},
    { id: "produits-agricoles-bruts", name: "Raw agricultural products", slug: "produits-agricoles-bruts", description: "Unprocessed agricultural products from harvests.", subcategories: [
      { id: "cereales-ble-orge-mais", name: "Cereals (wheat, barley, corn)", slug: "cereales-ble-orge-mais" },
      { id: "legumes-frais", name: "Fresh vegetables", slug: "legumes-frais" },
      { id: "fruits-de-saison", name: "Seasonal fruits", slug: "fruits-de-saison" },
      { id: "herbes-aromatiques", name: "Aromatic herbs", slug: "herbes-aromatiques" },
      { id: "plantes-medicinales", name: "Medicinal plants", slug: "plantes-medicinales" },
      { id: "fourrage", name: "Forage", slug: "fourrage" },
      { id: "foin", name: "Hay", slug: "foin" },
      { id: "luzerne", name: "Alfalfa", slug: "luzerne" },
      { id: "paille", name: "Straw", slug: "paille" }
    ]},
    { id: "produits-agroalimentaires-transformes", name: "Processed agri‑food products", slug: "produits-agroalimentaires-transformes", description: "Processed agri‑food products derived from agriculture.", subcategories: [
      { id: "farine", name: "Flour", slug: "farine" },
      { id: "couscous", name: "Couscous", slug: "couscous" },
      { id: "semoule", name: "Semolina", slug: "semoule" },
      { id: "huile-d-olive", name: "Olive oil", slug: "huile-d-olive" },
      { id: "huiles-vegetales", name: "Vegetable oils", slug: "huiles-vegetales" },
      { id: "conserves", name: "Canned goods", slug: "conserves" },
      { id: "confitures", name: "Jams", slug: "confitures" },
      { id: "produits-laitiers", name: "Dairy products", slug: "produits-laitiers" },
      { id: "fromages", name: "Cheeses", slug: "fromages" },
      { id: "miel", name: "Honey", slug: "miel" },
      { id: "dattes", name: "Dates", slug: "dattes" },
      { id: "produits-secs", name: "Dry products", slug: "produits-secs" },
      { id: "legumineuses", name: "Legumes/pulses", slug: "legumineuses" }
    ]},
    { id: "equipements-agroalimentaires", name: "Agri‑food equipment", slug: "equipements-agroalimentaires", description: "Machines and equipment for food processing and packaging.", subcategories: [
      { id: "moulins-agro", name: "Mills", slug: "moulins-agro" },
      { id: "concasseurs", name: "Crushers", slug: "concasseurs" },
      { id: "presses-a-huile", name: "Oil presses", slug: "presses-a-huile" },
      { id: "petrins", name: "Mixers/kneaders", slug: "petrins" },
      { id: "machines-d-emballage", name: "Packaging machines", slug: "machines-d-emballage" },
      { id: "pasteurisateurs", name: "Pasteurizers", slug: "pasteurisateurs" },
      { id: "machines-de-transformation", name: "Food processing machines", slug: "machines-de-transformation" },
      { id: "sterilisateurs", name: "Sterilizers", slug: "sterilisateurs" },
      { id: "broyeurs-alimentaires", name: "Food grinders", slug: "broyeurs-alimentaires" }
    ]},
    { id: "serres-solutions-de-culture", name: "Greenhouses & growing solutions", slug: "serres-solutions-de-culture", description: "Greenhouses and technical systems for controlled cultivation.", subcategories: [
      { id: "serres-tunnel", name: "Tunnel greenhouses", slug: "serres-tunnel" },
      { id: "serres-metalliques", name: "Metal greenhouses", slug: "serres-metalliques" },
      { id: "baches-de-serre", name: "Greenhouse covers", slug: "baches-de-serre" },
      { id: "systemes-hydroponiques", name: "Hydroponic systems", slug: "systemes-hydroponiques" },
      { id: "systemes-aquaponiques", name: "Aquaponic systems", slug: "systemes-aquaponiques" },
      { id: "lampes-horticoles", name: "Grow lights", slug: "lampes-horticoles" },
      { id: "tables-de-culture", name: "Planting tables", slug: "tables-de-culture" },
      { id: "capteurs-d-humidite", name: "Humidity sensors", slug: "capteurs-d-humidite" }
    ]},
    { id: "amenagement-agricole", name: "Agricultural amenities", slug: "amenagement-agricole", description: "Equipment and supplies for farm infrastructure.", subcategories: [
      { id: "clotures-metalliques", name: "Metal fences", slug: "clotures-metalliques" },
      { id: "grillages", name: "Wire meshes", slug: "grillages" },
      { id: "baches-agricoles", name: "Agricultural tarpaulins", slug: "baches-agricoles" },
      { id: "filets-d-ombrage", name: "Shade nets", slug: "filets-d-ombrage" },
      { id: "paillages", name: "Mulches", slug: "paillages" },
      { id: "tuteurs", name: "Plant stakes", slug: "tuteurs" },
      { id: "piquets", name: "Posts", slug: "piquets" },
      { id: "abris-agricoles", name: "Farm shelters", slug: "abris-agricoles" },
      { id: "hangars-demontables", name: "Detachable hangars", slug: "hangars-demontables" }
    ]},
    { id: "transport-logistique-agricole", name: "Agricultural transport & logistics", slug: "transport-logistique-agricole", description: "Materials for agricultural storage, handling and transport.", subcategories: [
      { id: "sacs-de-stockage", name: "Storage bags", slug: "sacs-de-stockage" },
      { id: "big-bags", name: "Big‑bags", slug: "big-bags" },
      { id: "caisses-de-recolte", name: "Harvest crates", slug: "caisses-de-recolte" },
      { id: "palettes", name: "Pallets", slug: "palettes" },
      { id: "conteneurs", name: "Containers", slug: "conteneurs" },
      { id: "charrettes-agricoles", name: "Farm carts", slug: "charrettes-agricoles" },
      { id: "bennes-basculantes", name: "Tipper bins", slug: "bennes-basculantes" }
    ]},
    { id: "equipement-ruchers-apiculture", name: "Beekeeping equipment", slug: "equipement-ruchers-apiculture", description: "Equipment and consumables for beekeeping.", subcategories: [
      { id: "ruches", name: "Beehives", slug: "ruches" },
      { id: "cadres-de-ruche", name: "Hive frames", slug: "cadres-de-ruche" },
      { id: "cire-gaufree", name: "Embossed wax", slug: "cire-gaufree" },
      { id: "enfumoirs", name: "Smokers", slug: "enfumoirs" },
      { id: "extracteurs-de-miel", name: "Honey extractors", slug: "extracteurs-de-miel" },
      { id: "equipements-apiculteurs", name: "Beekeeper equipment", slug: "equipements-apiculteurs" },
      { id: "pieges-a-essaims", name: "Swarm traps", slug: "pieges-a-essaims" }
    ]},
    { id: "controle-sanitaire-outils-produits", name: "Sanitary control tools & products", slug: "controle-sanitaire-outils-produits", description: "Tools and products for hygiene and crop biosecurity.", subcategories: [
      { id: "desinfectants-agricoles", name: "Agricultural disinfectants", slug: "desinfectants-agricoles" },
      { id: "pulverisateurs-sanitaires", name: "Sanitary sprayers", slug: "pulverisateurs-sanitaires" },
      { id: "pieges-a-insectes", name: "Insect traps", slug: "pieges-a-insectes" },
      { id: "filets-anti-oiseaux", name: "Bird nets", slug: "filets-anti-oiseaux" },
      { id: "systemes-protection-cultures", name: "Crop protection systems", slug: "systemes-protection-cultures" },
      { id: "stations-meteo-agricoles", name: "Agricultural weather stations", slug: "stations-meteo-agricoles" }
    ]},
    { id: "accessoires-consommables", name: "Accessories & consumables", slug: "accessoires-consommables", description: "Common accessories and consumables for farm operations.", subcategories: [
      { id: "ficelles-agricoles", name: "Agricultural twines", slug: "ficelles-agricoles" },
      { id: "cordages", name: "Ropes", slug: "cordages" },
      { id: "sangles", name: "Straps", slug: "sangles" },
      { id: "attaches-pour-plants", name: "Plant ties", slug: "attaches-pour-plants" },
      { id: "boites-d-emballage", name: "Packaging boxes", slug: "boites-d-emballage" },
      { id: "sacs-alimentaires", name: "Food‑grade bags", slug: "sacs-alimentaires" },
      { id: "etiquettes-agricoles", name: "Agricultural labels", slug: "etiquettes-agricoles" }
    ]}
  ]
};