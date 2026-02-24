import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Wheat } from "lucide-react";

export const agricultureAgroalimentaireIt: MenuCategory = {
  id: "agriculture-agroalimentaire",
  name: "Agricoltura & Agroalimentare",
  slug: "agriculture-agroalimentaire",
  icon: <Wheat className="w-4 h-4" />,
  description: "Categoria dedicata all’agricoltura e all’agroalimentare: attrezzature, input, allevamento, trasformazione e logistica.",
  subcategories: [
    { id: "materiel-agricole", name: "Attrezzature agricole", slug: "materiel-agricole", description: "Macchinari e attrezzature per lavorazione del suolo, semina, raccolta e movimentazione.", subcategories: [
      { id: "tracteurs-agricoles", name: "Trattori agricoli", slug: "tracteurs-agricoles" },
      { id: "micro-tracteurs", name: "Micro‑trattori", slug: "micro-tracteurs" },
      { id: "motoculteurs", name: "Motozappe", slug: "motoculteurs" },
      { id: "moissonneuses-batteuses", name: "Mietitrebbie", slug: "moissonneuses-batteuses" },
      { id: "charrues", name: "Aratri", slug: "charrues" },
      { id: "herses", name: "Erpici", slug: "herses" },
      { id: "semoirs", name: "Seminatrici", slug: "semoirs" },
      { id: "pulverisateurs-agricoles", name: "Irroratrici agricole", slug: "pulverisateurs-agricoles" },
      { id: "remorques-agricoles", name: "Rimorchi agricoli", slug: "remorques-agricoles" },
      { id: "broyeurs-agricoles", name: "Trituratori", slug: "broyeurs-agricoles" },
      { id: "epandeurs-agricoles", name: "Spandiconcime", slug: "epandeurs-agricoles" },
      { id: "tarieres-mecaniques", name: "Trivelle meccaniche", slug: "tarieres-mecaniques" },
      { id: "presses-a-balles", name: "Presse per balle", slug: "presses-a-balles" },
      { id: "elevateurs-agricoles", name: "Sollevatori agricoli", slug: "elevateurs-agricoles" }
    ] },
    { id: "outils-equipements-de-culture", name: "Strumenti & attrezzature di coltivazione", slug: "outils-equipements-de-culture", description: "Strumenti manuali e accessori per la cura delle colture e il giardinaggio.", subcategories: [
      { id: "beches", name: "Zappe a punta", slug: "beches" },
      { id: "pelles", name: "Pale", slug: "pelles" },
      { id: "rateaux", name: "Rastrelli", slug: "rateaux" },
      { id: "houes", name: "Zappe", slug: "houes" },
      { id: "sarcleuses", name: "Sarchiatrici", slug: "sarcleuses" },
      { id: "binettes", name: "Zappe manuali", slug: "binettes" },
      { id: "secateurs", name: "Cesoie da potatura", slug: "secateurs" },
      { id: "cisailles", name: "Cesoie lunghe", slug: "cisailles" },
      { id: "arrosoirs", name: "Annaffiatoi", slug: "arrosoirs" },
      { id: "pulverisateurs-manuels", name: "Irroratrici manuali", slug: "pulverisateurs-manuels" },
      { id: "brouettes", name: "Carriole", slug: "brouettes" },
      { id: "gants-de-jardin", name: "Guanti da giardino", slug: "gants-de-jardin" },
      { id: "lames-agricoles", name: "Lame agricole", slug: "lames-agricoles" },
      { id: "filets-de-recolte", name: "Reti da raccolta", slug: "filets-de-recolte" }
    ] },
    { id: "systemes-irrigation", name: "Sistemi di irrigazione", slug: "systemes-irrigation", description: "Soluzioni di irrigazione e aspersione per ottimizzare l’apporto idrico.", subcategories: [
      { id: "tuyaux-d-arrosage", name: "Tubi per irrigazione", slug: "tuyaux-d-arrosage" },
      { id: "goutte-a-goutte", name: "Irrigazione a goccia", slug: "goutte-a-goutte" },
      { id: "programmateurs-irrigation", name: "Programmatore d'irrigazione", slug: "programmateurs-irrigation" },
      { id: "aspersions", name: "Irrigatori", slug: "aspersions" },
      { id: "pompes-a-eau", name: "Pompe dell'acqua", slug: "pompes-a-eau" },
      { id: "motopompes", name: "Motopompe", slug: "motopompes" },
      { id: "raccords-irrigation", name: "Raccordi per irrigazione", slug: "raccords-irrigation" },
      { id: "filtres-d-eau", name: "Filtri dell'acqua", slug: "filtres-d-eau" },
      { id: "arroseurs", name: "Spruzzatori", slug: "arroseurs" },
      { id: "reservoirs-d-eau", name: "Serbatoi d'acqua", slug: "reservoirs-d-eau" }
    ] },
    { id: "semences-plants", name: "Semi & piantine", slug: "semences-plants", description: "Semi, piantine e bulbi per colture orticole, cerealicole e arboree.", subcategories: [
      { id: "semences-potageres", name: "Semi orticoli", slug: "semences-potageres" },
      { id: "semences-cerealieres", name: "Semi cerealicoli", slug: "semences-cerealieres" },
      { id: "semences-fourrageres", name: "Semi foraggeri", slug: "semences-fourrageres" },
      { id: "plants-de-legumes", name: "Piantine di verdure", slug: "plants-de-legumes" },
      { id: "plants-fruitiers", name: "Piantine di frutta", slug: "plants-fruitiers" },
      { id: "plants-d-arbres", name: "Piantine di alberi", slug: "plants-d-arbres" },
      { id: "graines-biologiques", name: "Semi biologici", slug: "graines-biologiques" },
      { id: "graines-hybrides", name: "Semi ibridi", slug: "graines-hybrides" },
      { id: "bulbes", name: "Bulbi", slug: "bulbes" },
      { id: "jeunes-pousses", name: "Germogli", slug: "jeunes-pousses" }
    ] },
    { id: "engrais-fertilisants", name: "Fertilizzanti & ammendanti", slug: "engrais-fertilisants", description: "Ammendanti del suolo e nutrienti per migliorare fertilità e crescita.", subcategories: [
      { id: "engrais-chimiques", name: "Fertilizzanti chimici", slug: "engrais-chimiques" },
      { id: "engrais-organiques", name: "Fertilizzanti organici", slug: "engrais-organiques" },
      { id: "compost", name: "Compost", slug: "compost" },
      { id: "fumiers", name: "Letame", slug: "fumiers" },
      { id: "amendements-calcaires", name: "Ammendanti calcarei", slug: "amendements-calcaires" },
      { id: "stimulateurs-de-croissance", name: "Stimolatori di crescita", slug: "stimulateurs-de-croissance" },
      { id: "terreaux", name: "Terriccio", slug: "terreaux" },
      { id: "substrats-agricoles", name: "Substrati agricoli", slug: "substrats-agricoles" },
      { id: "additifs-nutritifs", name: "Additivi nutritivi", slug: "additifs-nutritifs" }
    ] },
    { id: "produits-phytosanitaires", name: "Prodotti fitosanitari", slug: "produits-phytosanitaires", description: "Prodotti per la protezione delle colture e trattamenti biologici.", subcategories: [
      { id: "insecticides-agricoles", name: "Insetticidi agricoli", slug: "insecticides-agricoles" },
      { id: "fongicides", name: "Fungicidi", slug: "fongicides" },
      { id: "herbicides", name: "Erbicidi", slug: "herbicides" },
      { id: "traitements-biologiques", name: "Trattamenti biologici", slug: "traitements-biologiques" },
      { id: "repulsifs-naturels", name: "Repellenti naturali", slug: "repulsifs-naturels" },
      { id: "pieges-anti-nuisibles", name: "Trappole anti‑parassiti", slug: "pieges-anti-nuisibles" },
      { id: "protections-pour-cultures", name: "Protezione delle colture", slug: "protections-pour-cultures" }
    ] },
    { id: "elevage-soins-animaux", name: "Allevamento & cura degli animali", slug: "elevage-soins-animaux", description: "Alimentazione, cura e attrezzature per animali da allevamento.", subcategories: [
      { id: "aliments-pour-betail", name: "Mangimi per bovini", slug: "aliments-pour-betail" },
      { id: "aliments-pour-volailles", name: "Mangimi per pollame", slug: "aliments-pour-volailles" },
      { id: "aliments-pour-ovins-caprins", name: "Mangimi per ovini e caprini", slug: "aliments-pour-ovins-caprins" },
      { id: "complements-nutritionnels", name: "Integratori nutrizionali", slug: "complements-nutritionnels" },
      { id: "produits-veterinaires", name: "Prodotti veterinari", slug: "produits-veterinaires" },
      { id: "mangeoires", name: "Mangiatoie", slug: "mangeoires" },
      { id: "abreuvoirs", name: "Abbeveratoi", slug: "abreuvoirs" },
      { id: "clotures-electriques", name: "Recinzioni elettriche", slug: "clotures-electriques" },
      { id: "parcs-cages", name: "Recinti & gabbie", slug: "parcs-cages" },
      { id: "couveuses", name: "Incubatrici", slug: "couveuses" },
      { id: "nichoirs", name: "Nidi artificiali", slug: "nichoirs" },
      { id: "equipements-de-traite", name: "Attrezzature per mungitura", slug: "equipements-de-traite" },
      { id: "tondeuses-animales", name: "Tosatrici per animali", slug: "tondeuses-animales" }
    ] },
    { id: "materiel-elevage", name: "Attrezzature per allevamento", slug: "materiel-elevage", description: "Attrezzature specializzate per allevamento, mungitura e stoccaggio.", subcategories: [
      { id: "machines-a-traire", name: "Mungitrici", slug: "machines-a-traire" },
      { id: "tanks-a-lait", name: "Serbatoi del latte", slug: "tanks-a-lait" },
      { id: "broyeurs-a-grains", name: "Mulini per cereali", slug: "broyeurs-a-grains" },
      { id: "distributeurs-automatiques-d-aliments", name: "Distributori automatici di mangime", slug: "distributeurs-automatiques-d-aliments" },
      { id: "enrubanneuses", name: "Fasciatrici", slug: "enrubanneuses" },
      { id: "systemes-de-ventilation-elevage", name: "Sistemi di ventilazione", slug: "systemes-de-ventilation-elevage" },
      { id: "tapis-d-elevage", name: "Pavimentazioni per stalle", slug: "tapis-d-elevage" },
      { id: "abris-metalliques", name: "Ripari in metallo", slug: "abris-metalliques" }
    ] },
    { id: "produits-agricoles-bruts", name: "Prodotti agricoli grezzi", slug: "produits-agricoles-bruts", description: "Prodotti agricoli non trasformati provenienti dai raccolti.", subcategories: [
      { id: "cereales-ble-orge-mais", name: "Cereali (grano, orzo, mais)", slug: "cereales-ble-orge-mais" },
      { id: "legumes-frais", name: "Verdure fresche", slug: "legumes-frais" },
      { id: "fruits-de-saison", name: "Frutta di stagione", slug: "fruits-de-saison" },
      { id: "herbes-aromatiques", name: "Erbe aromatiche", slug: "herbes-aromatiques" },
      { id: "plantes-medicinales", name: "Piante medicinali", slug: "plantes-medicinales" },
      { id: "fourrage", name: "Foraggio", slug: "fourrage" },
      { id: "foin", name: "Fieno", slug: "foin" },
      { id: "luzerne", name: "Erba medica", slug: "luzerne" },
      { id: "paille", name: "Paglia", slug: "paille" }
    ] },
    { id: "produits-agroalimentaires-transformes", name: "Prodotti agroalimentari trasformati", slug: "produits-agroalimentaires-transformes", description: "Prodotti alimentari trasformati di origine agricola.", subcategories: [
      { id: "farine", name: "Farina", slug: "farine" },
      { id: "couscous", name: "Couscous", slug: "couscous" },
      { id: "semoule", name: "Semola", slug: "semoule" },
      { id: "huile-d-olive", name: "Olio d'oliva", slug: "huile-d-olive" },
      { id: "huiles-vegetales", name: "Oli vegetali", slug: "huiles-vegetales" },
      { id: "conserves", name: "Conserve", slug: "conserves" },
      { id: "confitures", name: "Confetture", slug: "confitures" },
      { id: "produits-laitiers", name: "Prodotti lattiero‑caseari", slug: "produits-laitiers" },
      { id: "fromages", name: "Formaggi", slug: "fromages" },
      { id: "miel", name: "Miele", slug: "miel" },
      { id: "dattes", name: "Datteri", slug: "dattes" },
      { id: "produits-secs", name: "Prodotti secchi", slug: "produits-secs" },
      { id: "legumineuses", name: "Legumi", slug: "legumineuses" }
    ] },
    { id: "equipements-agroalimentaires", name: "Attrezzature agroalimentari", slug: "equipements-agroalimentaires", description: "Macchinari e attrezzature per la trasformazione e il confezionamento.", subcategories: [
      { id: "moulins-agro", name: "Mulini", slug: "moulins-agro" },
      { id: "concasseurs", name: "Frantoi", slug: "concasseurs" },
      { id: "presses-a-huile", name: "Spremitrici per olio", slug: "presses-a-huile" },
      { id: "petrins", name: "Impastatrici", slug: "petrins" },
      { id: "machines-d-emballage", name: "Macchine per confezionamento", slug: "machines-d-emballage" },
      { id: "pasteurisateurs", name: "Pastorizzatori", slug: "pasteurisateurs" },
      { id: "machines-de-transformation", name: "Macchine di trasformazione alimentare", slug: "machines-de-transformation" },
      { id: "sterilisateurs", name: "Sterilizzatori", slug: "sterilisateurs" },
      { id: "broyeurs-alimentaires", name: "Mulini alimentari", slug: "broyeurs-alimentaires" }
    ] },
    { id: "serres-solutions-de-culture", name: "Serre & soluzioni di coltivazione", slug: "serres-solutions-de-culture", description: "Serre e sistemi tecnici per la coltivazione controllata.", subcategories: [
      { id: "serres-tunnel", name: "Serre a tunnel", slug: "serres-tunnel" },
      { id: "serres-metalliques", name: "Serre metalliche", slug: "serres-metalliques" },
      { id: "baches-de-serre", name: "Teli per serre", slug: "baches-de-serre" },
      { id: "systemes-hydroponiques", name: "Sistemi idroponici", slug: "systemes-hydroponiques" },
      { id: "systemes-aquaponiques", name: "Sistemi di acquaponica", slug: "systemes-aquaponiques" },
      { id: "lampes-horticoles", name: "Lampade orticole", slug: "lampes-horticoles" },
      { id: "tables-de-culture", name: "Tavoli di coltivazione", slug: "tables-de-culture" },
      { id: "capteurs-d-humidite", name: "Sensori di umidità", slug: "capteurs-d-humidite" }
    ] },
    { id: "amenagement-agricole", name: "Allestimenti agricoli", slug: "amenagement-agricole", description: "Dotazioni e forniture per l’infrastruttura delle aziende agricole.", subcategories: [
      { id: "clotures-metalliques", name: "Recinzioni metalliche", slug: "clotures-metalliques" },
      { id: "grillages", name: "Reti metalliche", slug: "grillages" },
      { id: "baches-agricoles", name: "Teli agricoli", slug: "baches-agricoles" },
      { id: "filets-d-ombrage", name: "Reti ombreggianti", slug: "filets-d-ombrage" },
      { id: "paillages", name: "Pacciamature", slug: "paillages" },
      { id: "tuteurs", name: "Tutor per piante", slug: "tuteurs" },
      { id: "piquets", name: "Picchetti", slug: "piquets" },
      { id: "abris-agricoles", name: "Ricoveri agricoli", slug: "abris-agricoles" },
      { id: "hangars-demontables", name: "Capannoni smontabili", slug: "hangars-demontables" }
    ] },
    { id: "transport-logistique-agricole", name: "Trasporto & logistica agricola", slug: "transport-logistique-agricole", description: "Materiali per stoccaggio, movimentazione e trasporto agricolo.", subcategories: [
      { id: "sacs-de-stockage", name: "Sacchi di stoccaggio", slug: "sacs-de-stockage" },
      { id: "big-bags", name: "Big bags", slug: "big-bags" },
      { id: "caisses-de-recolte", name: "Cassette per raccolta", slug: "caisses-de-recolte" },
      { id: "palettes", name: "Pallet", slug: "palettes" },
      { id: "conteneurs", name: "Container", slug: "conteneurs" },
      { id: "charrettes-agricoles", name: "Carri agricoli", slug: "charrettes-agricoles" },
      { id: "bennes-basculantes", name: "Cassoni ribaltabili", slug: "bennes-basculantes" }
    ] },
    { id: "equipement-ruchers-apiculture", name: "Attrezzature per apicoltura", slug: "equipement-ruchers-apiculture", description: "Attrezzature e materiali di consumo per la pratica apistica.", subcategories: [
      { id: "ruches", name: "Arnie", slug: "ruches" },
      { id: "cadres-de-ruche", name: "Telaini", slug: "cadres-de-ruche" },
      { id: "cire-gaufree", name: "Fogli cerei", slug: "cire-gaufree" },
      { id: "enfumoirs", name: "Affumicatori", slug: "enfumoirs" },
      { id: "extracteurs-de-miel", name: "Smielatori", slug: "extracteurs-de-miel" },
      { id: "equipements-apiculteurs", name: "Attrezzatura apistica", slug: "equipements-apiculteurs" },
      { id: "pieges-a-essaims", name: "Trappole per sciami", slug: "pieges-a-essaims" }
    ] },
    { id: "controle-sanitaire-outils-produits", name: "Strumenti & prodotti sanitari", slug: "controle-sanitaire-outils-produits", description: "Strumenti e prodotti per igiene e biosicurezza delle colture.", subcategories: [
      { id: "desinfectants-agricoles", name: "Disinfettanti agricoli", slug: "desinfectants-agricoles" },
      { id: "pulverisateurs-sanitaires", name: "Irroratrici sanitarie", slug: "pulverisateurs-sanitaires" },
      { id: "pieges-a-insectes", name: "Trappole per insetti", slug: "pieges-a-insectes" },
      { id: "filets-anti-oiseaux", name: "Reti anti‑uccelli", slug: "filets-anti-oiseaux" },
      { id: "systemes-protection-cultures", name: "Sistemi di protezione delle colture", slug: "systemes-protection-cultures" },
      { id: "stations-meteo-agricoles", name: "Stazioni meteo agricole", slug: "stations-meteo-agricoles" }
    ] },
    { id: "accessoires-consommables", name: "Accessori & consumabili", slug: "accessoires-consommables", description: "Accessori e materiali di consumo comuni per l’attività agricola.", subcategories: [
      { id: "ficelles-agricoles", name: "Spaghi agricoli", slug: "ficelles-agricoles" },
      { id: "cordages", name: "Corde", slug: "cordages" },
      { id: "sangles", name: "Cinghie", slug: "sangles" },
      { id: "attaches-pour-plants", name: "Fissaggi per piante", slug: "attaches-pour-plants" },
      { id: "boites-d-emballage", name: "Scatole per imballaggio", slug: "boites-d-emballage" },
      { id: "sacs-alimentaires", name: "Sacchetti alimentari", slug: "sacs-alimentaires" },
      { id: "etiquettes-agricoles", name: "Etichette agricole", slug: "etiquettes-agricoles" }
    ] }
  ]
};