import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Wheat } from "lucide-react";

export const agricultureAgroalimentaireFr: MenuCategory = {
  id: "agriculture-agroalimentaire",
  name: "Agriculture & Agroalimentaire",
  slug: "agriculture-agroalimentaire",
  icon: <Wheat className="w-4 h-4" />,
  description: "Catégorie dédiée à l’agriculture et à l’agroalimentaire: matériel, intrants, élevage, transformation et logistique.",
  subcategories: [
    {
      id: "materiel-agricole",
      name: "Matériel agricole",
      slug: "materiel-agricole",
      description: "Machines et équipements pour travailler le sol, semer, récolter et manutentionner.",
      subcategories: [
        { id: "tracteurs-agricoles", name: "Tracteurs agricoles", slug: "tracteurs-agricoles" },
        { id: "micro-tracteurs", name: "Micro-tracteurs", slug: "micro-tracteurs" },
        { id: "motoculteurs", name: "Motoculteurs", slug: "motoculteurs" },
        { id: "moissonneuses-batteuses", name: "Moissonneuses-batteuses", slug: "moissonneuses-batteuses" },
        { id: "charrues", name: "Charrues", slug: "charrues" },
        { id: "herses", name: "Herses", slug: "herses" },
        { id: "semoirs", name: "Semoirs", slug: "semoirs" },
        { id: "pulverisateurs-agricoles", name: "Pulvérisateurs agricoles", slug: "pulverisateurs-agricoles" },
        { id: "remorques-agricoles", name: "Remorques agricoles", slug: "remorques-agricoles" },
        { id: "broyeurs-agricoles", name: "Broyeurs", slug: "broyeurs-agricoles" },
        { id: "epandeurs-agricoles", name: "Épandeurs", slug: "epandeurs-agricoles" },
        { id: "tarieres-mecaniques", name: "Tarières mécaniques", slug: "tarieres-mecaniques" },
        { id: "presses-a-balles", name: "Presses à balles", slug: "presses-a-balles" },
        { id: "elevateurs-agricoles", name: "Élévateurs agricoles", slug: "elevateurs-agricoles" }
      ]
    },
    {
      id: "outils-equipements-de-culture",
      name: "Outils & équipements de culture",
      slug: "outils-equipements-de-culture",
      description: "Outils manuels et accessoires pour l’entretien des cultures et du jardin.",
      subcategories: [
        { id: "beches", name: "Bêches", slug: "beches" },
        { id: "pelles", name: "Pelles", slug: "pelles" },
        { id: "rateaux", name: "Râteaux", slug: "rateaux" },
        { id: "houes", name: "Houes", slug: "houes" },
        { id: "sarcleuses", name: "Sarcleuses", slug: "sarcleuses" },
        { id: "binettes", name: "Binettes", slug: "binettes" },
        { id: "secateurs", name: "Sécateurs", slug: "secateurs" },
        { id: "cisailles", name: "Cisailles", slug: "cisailles" },
        { id: "arrosoirs", name: "Arrosoirs", slug: "arrosoirs" },
        { id: "pulverisateurs-manuels", name: "Pulvérisateurs manuels", slug: "pulverisateurs-manuels" },
        { id: "brouettes", name: "Brouettes", slug: "brouettes" },
        { id: "gants-de-jardin", name: "Gants de jardin", slug: "gants-de-jardin" },
        { id: "lames-agricoles", name: "Lames agricoles", slug: "lames-agricoles" },
        { id: "filets-de-recolte", name: "Filets de récolte", slug: "filets-de-recolte" }
      ]
    },
    {
      id: "systemes-irrigation",
      name: "Systèmes d’irrigation",
      slug: "systemes-irrigation",
      description: "Solutions d’arrosage et d’irrigation pour optimiser l’apport en eau.",
      subcategories: [
        { id: "tuyaux-d-arrosage", name: "Tuyaux d’arrosage", slug: "tuyaux-d-arrosage" },
        { id: "goutte-a-goutte", name: "Systèmes goutte-à-goutte", slug: "goutte-a-goutte" },
        { id: "programmateurs-irrigation", name: "Programmateurs d’irrigation", slug: "programmateurs-irrigation" },
        { id: "aspersions", name: "Aspersions", slug: "aspersions" },
        { id: "pompes-a-eau", name: "Pompes à eau", slug: "pompes-a-eau" },
        { id: "motopompes", name: "Motopompes", slug: "motopompes" },
        { id: "raccords-irrigation", name: "Raccords d’irrigation", slug: "raccords-irrigation" },
        { id: "filtres-d-eau", name: "Filtres d’eau", slug: "filtres-d-eau" },
        { id: "arroseurs", name: "Arroseurs", slug: "arroseurs" },
        { id: "reservoirs-d-eau", name: "Réservoirs d’eau", slug: "reservoirs-d-eau" }
      ]
    },
    {
      id: "semences-plants",
      name: "Semences & plants",
      slug: "semences-plants",
      description: "Semences, plants et bulbes pour cultures potagères, céréalières et arboricoles.",
      subcategories: [
        { id: "semences-potageres", name: "Semences potagères", slug: "semences-potageres" },
        { id: "semences-cerealieres", name: "Semences céréalières", slug: "semences-cerealieres" },
        { id: "semences-fourrageres", name: "Semences fourragères", slug: "semences-fourrageres" },
        { id: "plants-de-legumes", name: "Plants de légumes", slug: "plants-de-legumes" },
        { id: "plants-fruitiers", name: "Plants fruitiers", slug: "plants-fruitiers" },
        { id: "plants-d-arbres", name: "Plants d’arbres", slug: "plants-d-arbres" },
        { id: "graines-biologiques", name: "Graines biologiques", slug: "graines-biologiques" },
        { id: "graines-hybrides", name: "Graines hybrides", slug: "graines-hybrides" },
        { id: "bulbes", name: "Bulbes", slug: "bulbes" },
        { id: "jeunes-pousses", name: "Jeunes pousses", slug: "jeunes-pousses" }
      ]
    },
    {
      id: "engrais-fertilisants",
      name: "Engrais & fertilisants",
      slug: "engrais-fertilisants",
      description: "Amendements et nutriments pour améliorer la fertilité des sols et la croissance.",
      subcategories: [
        { id: "engrais-chimiques", name: "Engrais chimiques", slug: "engrais-chimiques" },
        { id: "engrais-organiques", name: "Engrais organiques", slug: "engrais-organiques" },
        { id: "compost", name: "Compost", slug: "compost" },
        { id: "fumiers", name: "Fumiers", slug: "fumiers" },
        { id: "amendements-calcaires", name: "Amendements calcaires", slug: "amendements-calcaires" },
        { id: "stimulateurs-de-croissance", name: "Stimulateurs de croissance", slug: "stimulateurs-de-croissance" },
        { id: "terreaux", name: "Terreaux", slug: "terreaux" },
        { id: "substrats-agricoles", name: "Substrats agricoles", slug: "substrats-agricoles" },
        { id: "additifs-nutritifs", name: "Additifs nutritifs", slug: "additifs-nutritifs" }
      ]
    },
    {
      id: "produits-phytosanitaires",
      name: "Produits phytosanitaires",
      slug: "produits-phytosanitaires",
      description: "Produits de protection des cultures et traitements biologiques.",
      subcategories: [
        { id: "insecticides-agricoles", name: "Insecticides agricoles", slug: "insecticides-agricoles" },
        { id: "fongicides", name: "Fongicides", slug: "fongicides" },
        { id: "herbicides", name: "Herbicides", slug: "herbicides" },
        { id: "traitements-biologiques", name: "Traitements biologiques", slug: "traitements-biologiques" },
        { id: "repulsifs-naturels", name: "Répulsifs naturels", slug: "repulsifs-naturels" },
        { id: "pieges-anti-nuisibles", name: "Pièges anti-nuisibles", slug: "pieges-anti-nuisibles" },
        { id: "protections-pour-cultures", name: "Protections pour cultures", slug: "protections-pour-cultures" }
      ]
    },
    {
      id: "elevage-soins-animaux",
      name: "Élevage & soins des animaux",
      slug: "elevage-soins-animaux",
      description: "Alimentation, soins et équipements pour animaux d’élevage.",
      subcategories: [
        { id: "aliments-pour-betail", name: "Aliments pour bétail", slug: "aliments-pour-betail" },
        { id: "aliments-pour-volailles", name: "Aliments pour volailles", slug: "aliments-pour-volailles" },
        { id: "aliments-pour-ovins-caprins", name: "Aliments pour ovins & caprins", slug: "aliments-pour-ovins-caprins" },
        { id: "complements-nutritionnels", name: "Compléments nutritionnels", slug: "complements-nutritionnels" },
        { id: "produits-veterinaires", name: "Produits vétérinaires", slug: "produits-veterinaires" },
        { id: "mangeoires", name: "Mangeoires", slug: "mangeoires" },
        { id: "abreuvoirs", name: "Abreuvoirs", slug: "abreuvoirs" },
        { id: "clotures-electriques", name: "Clôtures électriques", slug: "clotures-electriques" },
        { id: "parcs-cages", name: "Parcs & cages", slug: "parcs-cages" },
        { id: "couveuses", name: "Couveuses", slug: "couveuses" },
        { id: "nichoirs", name: "Nichoirs", slug: "nichoirs" },
        { id: "equipements-de-traite", name: "Équipements de traite", slug: "equipements-de-traite" },
        { id: "tondeuses-animales", name: "Tondeuses animales", slug: "tondeuses-animales" }
      ]
    },
    {
      id: "materiel-elevage",
      name: "Matériel d’élevage",
      slug: "materiel-elevage",
      description: "Matériel spécialisé pour l’élevage, la traite et la conservation.",
      subcategories: [
        { id: "machines-a-traire", name: "Machines à traire", slug: "machines-a-traire" },
        { id: "tanks-a-lait", name: "Tanks à lait", slug: "tanks-a-lait" },
        { id: "broyeurs-a-grains", name: "Broyeurs à grains", slug: "broyeurs-a-grains" },
        { id: "distributeurs-automatiques-d-aliments", name: "Distributeurs automatiques d’aliments", slug: "distributeurs-automatiques-d-aliments" },
        { id: "enrubanneuses", name: "Enrubanneuses", slug: "enrubanneuses" },
        { id: "systemes-de-ventilation-elevage", name: "Systèmes de ventilation d’élevage", slug: "systemes-de-ventilation-elevage" },
        { id: "tapis-d-elevage", name: "Tapis d’élevage", slug: "tapis-d-elevage" },
        { id: "abris-metalliques", name: "Abris métalliques", slug: "abris-metalliques" }
      ]
    },
    {
      id: "produits-agricoles-bruts",
      name: "Produits agricoles bruts",
      slug: "produits-agricoles-bruts",
      description: "Produits agricoles non transformés issus des récoltes.",
      subcategories: [
        { id: "cereales-ble-orge-mais", name: "Céréales (blé, orge, maïs)", slug: "cereales-ble-orge-mais" },
        { id: "legumes-frais", name: "Légumes frais", slug: "legumes-frais" },
        { id: "fruits-de-saison", name: "Fruits de saison", slug: "fruits-de-saison" },
        { id: "herbes-aromatiques", name: "Herbes aromatiques", slug: "herbes-aromatiques" },
        { id: "plantes-medicinales", name: "Plantes médicinales", slug: "plantes-medicinales" },
        { id: "fourrage", name: "Fourrage", slug: "fourrage" },
        { id: "foin", name: "Foin", slug: "foin" },
        { id: "luzerne", name: "Luzerne", slug: "luzerne" },
        { id: "paille", name: "Paille", slug: "paille" }
      ]
    },
    {
      id: "produits-agroalimentaires-transformes",
      name: "Produits agroalimentaires transformés",
      slug: "produits-agroalimentaires-transformes",
      description: "Produits alimentaires transformés issus de l’agriculture.",
      subcategories: [
        { id: "farine", name: "Farine", slug: "farine" },
        { id: "couscous", name: "Couscous", slug: "couscous" },
        { id: "semoule", name: "Semoule", slug: "semoule" },
        { id: "huile-d-olive", name: "Huile d’olive", slug: "huile-d-olive" },
        { id: "huiles-vegetales", name: "Huiles végétales", slug: "huiles-vegetales" },
        { id: "conserves", name: "Conserves", slug: "conserves" },
        { id: "confitures", name: "Confitures", slug: "confitures" },
        { id: "produits-laitiers", name: "Produits laitiers", slug: "produits-laitiers" },
        { id: "fromages", name: "Fromages", slug: "fromages" },
        { id: "miel", name: "Miel", slug: "miel" },
        { id: "dattes", name: "Dattes", slug: "dattes" },
        { id: "produits-secs", name: "Produits secs", slug: "produits-secs" },
        { id: "legumineuses", name: "Légumineuses", slug: "legumineuses" }
      ]
    },
    {
      id: "equipements-agroalimentaires",
      name: "Équipements agroalimentaires",
      slug: "equipements-agroalimentaires",
      description: "Machines et équipements pour la transformation et l’emballage.",
      subcategories: [
        { id: "moulins-agro", name: "Moulins", slug: "moulins-agro" },
        { id: "concasseurs", name: "Concasseurs", slug: "concasseurs" },
        { id: "presses-a-huile", name: "Presses à huile", slug: "presses-a-huile" },
        { id: "petrins", name: "Pétrins", slug: "petrins" },
        { id: "machines-d-emballage", name: "Machines d’emballage", slug: "machines-d-emballage" },
        { id: "pasteurisateurs", name: "Pasteurisateurs", slug: "pasteurisateurs" },
        { id: "machines-de-transformation", name: "Machines de transformation alimentaire", slug: "machines-de-transformation" },
        { id: "sterilisateurs", name: "Stérilisateurs", slug: "sterilisateurs" },
        { id: "broyeurs-alimentaires", name: "Broyeurs alimentaires", slug: "broyeurs-alimentaires" }
      ]
    },
    {
      id: "serres-solutions-de-culture",
      name: "Serres & solutions de culture",
      slug: "serres-solutions-de-culture",
      description: "Serres et systèmes techniques pour la culture contrôlée.",
      subcategories: [
        { id: "serres-tunnel", name: "Serres tunnel", slug: "serres-tunnel" },
        { id: "serres-metalliques", name: "Serres métalliques", slug: "serres-metalliques" },
        { id: "baches-de-serre", name: "Bâches de serre", slug: "baches-de-serre" },
        { id: "systemes-hydroponiques", name: "Systèmes hydroponiques", slug: "systemes-hydroponiques" },
        { id: "systemes-aquaponiques", name: "Systèmes aquaponiques", slug: "systemes-aquaponiques" },
        { id: "lampes-horticoles", name: "Lampes horticoles", slug: "lampes-horticoles" },
        { id: "tables-de-culture", name: "Tables de culture", slug: "tables-de-culture" },
        { id: "capteurs-d-humidite", name: "Capteurs d’humidité", slug: "capteurs-d-humidite" }
      ]
    },
    {
      id: "amenagement-agricole",
      name: "Aménagement agricole",
      slug: "amenagement-agricole",
      description: "Équipements et fournitures pour l’infrastructure des exploitations.",
      subcategories: [
        { id: "clotures-metalliques", name: "Clôtures métalliques", slug: "clotures-metalliques" },
        { id: "grillages", name: "Grillages", slug: "grillages" },
        { id: "baches-agricoles", name: "Bâches agricoles", slug: "baches-agricoles" },
        { id: "filets-d-ombrage", name: "Filets d’ombrage", slug: "filets-d-ombrage" },
        { id: "paillages", name: "Paillages", slug: "paillages" },
        { id: "tuteurs", name: "Tuteurs", slug: "tuteurs" },
        { id: "piquets", name: "Piquets", slug: "piquets" },
        { id: "abris-agricoles", name: "Abris agricoles", slug: "abris-agricoles" },
        { id: "hangars-demontables", name: "Hangars démontables", slug: "hangars-demontables" }
      ]
    },
    {
      id: "transport-logistique-agricole",
      name: "Transport & logistique agricole",
      slug: "transport-logistique-agricole",
      description: "Matériels de manutention, stockage et transport agricoles.",
      subcategories: [
        { id: "sacs-de-stockage", name: "Sacs de stockage", slug: "sacs-de-stockage" },
        { id: "big-bags", name: "Big-bags", slug: "big-bags" },
        { id: "caisses-de-recolte", name: "Caisses de récolte", slug: "caisses-de-recolte" },
        { id: "palettes", name: "Palettes", slug: "palettes" },
        { id: "conteneurs", name: "Conteneurs", slug: "conteneurs" },
        { id: "charrettes-agricoles", name: "Charrettes agricoles", slug: "charrettes-agricoles" },
        { id: "bennes-basculantes", name: "Bennes basculantes", slug: "bennes-basculantes" }
      ]
    },
    {
      id: "equipement-ruchers-apiculture",
      name: "Équipement pour ruchers & apiculture",
      slug: "equipement-ruchers-apiculture",
      description: "Matériel et consommables pour la conduite des ruchers.",
      subcategories: [
        { id: "ruches", name: "Ruches", slug: "ruches" },
        { id: "cadres-de-ruche", name: "Cadres de ruche", slug: "cadres-de-ruche" },
        { id: "cire-gaufree", name: "Cire gaufrée", slug: "cire-gaufree" },
        { id: "enfumoirs", name: "Enfumoirs", slug: "enfumoirs" },
        { id: "extracteurs-de-miel", name: "Extracteurs de miel", slug: "extracteurs-de-miel" },
        { id: "equipements-apiculteurs", name: "Équipements pour apiculteurs", slug: "equipements-apiculteurs" },
        { id: "pieges-a-essaims", name: "Pièges à essaims", slug: "pieges-a-essaims" }
      ]
    },
    {
      id: "controle-sanitaire-outils-produits",
      name: "Outils et produits de contrôle sanitaire",
      slug: "controle-sanitaire-outils-produits",
      description: "Outils et produits pour l’hygiène et la biosécurité des cultures.",
      subcategories: [
        { id: "desinfectants-agricoles", name: "Désinfectants agricoles", slug: "desinfectants-agricoles" },
        { id: "pulverisateurs-sanitaires", name: "Pulvérisateurs sanitaires", slug: "pulverisateurs-sanitaires" },
        { id: "pieges-a-insectes", name: "Pièges à insectes", slug: "pieges-a-insectes" },
        { id: "filets-anti-oiseaux", name: "Filets anti-oiseaux", slug: "filets-anti-oiseaux" },
        { id: "systemes-protection-cultures", name: "Systèmes de protection des cultures", slug: "systemes-protection-cultures" },
        { id: "stations-meteo-agricoles", name: "Stations météo agricoles", slug: "stations-meteo-agricoles" }
      ]
    },
    {
      id: "accessoires-consommables",
      name: "Accessoires & consommables",
      slug: "accessoires-consommables",
      description: "Accessoires et consommables courants pour l’activité agricole.",
      subcategories: [
        { id: "ficelles-agricoles", name: "Ficelles agricoles", slug: "ficelles-agricoles" },
        { id: "cordages", name: "Cordages", slug: "cordages" },
        { id: "sangles", name: "Sangles", slug: "sangles" },
        { id: "attaches-pour-plants", name: "Attaches pour plants", slug: "attaches-pour-plants" },
        { id: "boites-d-emballage", name: "Boîtes d’emballage", slug: "boites-d-emballage" },
        { id: "sacs-alimentaires", name: "Sacs alimentaires", slug: "sacs-alimentaires" },
        { id: "etiquettes-agricoles", name: "Étiquettes agricoles", slug: "etiquettes-agricoles" }
      ]
    }
  ]
};