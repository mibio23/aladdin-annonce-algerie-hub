import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Wheat } from "lucide-react";

export const agricultureAgroalimentaireDe: MenuCategory = {
  id: "agriculture-agroalimentaire",
  name: "Landwirtschaft & Lebensmittelindustrie",
  slug: "agriculture-agroalimentaire",
  icon: <Wheat className="w-4 h-4" />,
  description: "Kategorie für Landwirtschaft und Lebensmittel: Geräte, Betriebsmittel, Viehzucht, Verarbeitung und Logistik.",
  subcategories: [
    { id: "materiel-agricole", name: "Landwirtschaftliche Ausrüstung", slug: "materiel-agricole", description: "Maschinen und Geräte für Bodenbearbeitung, Aussaat, Ernte und Handhabung.", subcategories: [
      { id: "tracteurs-agricoles", name: "Landwirtschaftliche Traktoren", slug: "tracteurs-agricoles" },
      { id: "micro-tracteurs", name: "Kleintraktoren", slug: "micro-tracteurs" },
      { id: "motoculteurs", name: "Motorhacken", slug: "motoculteurs" },
      { id: "moissonneuses-batteuses", name: "Mähdrescher", slug: "moissonneuses-batteuses" },
      { id: "charrues", name: "Pflüge", slug: "charrues" },
      { id: "herses", name: "Eggen", slug: "herses" },
      { id: "semoirs", name: "Sämaschinen", slug: "semoirs" },
      { id: "pulverisateurs-agricoles", name: "Landwirtschaftliche Sprühgeräte", slug: "pulverisateurs-agricoles" },
      { id: "remorques-agricoles", name: "Landwirtschaftliche Anhänger", slug: "remorques-agricoles" },
      { id: "broyeurs-agricoles", name: "Schredder", slug: "broyeurs-agricoles" },
      { id: "epandeurs-agricoles", name: "Streuer", slug: "epandeurs-agricoles" },
      { id: "tarieres-mecaniques", name: "Mechanische Erdbohrer", slug: "tarieres-mecaniques" },
      { id: "presses-a-balles", name: "Ballenpressen", slug: "presses-a-balles" },
      { id: "elevateurs-agricoles", name: "Landwirtschaftliche Hebegeräte", slug: "elevateurs-agricoles" }
    ] },
    { id: "outils-equipements-de-culture", name: "Werkzeuge & Anbaugeräte", slug: "outils-equipements-de-culture", description: "Handwerkzeuge und Zubehör für Pflege von Kulturen und Garten.", subcategories: [
      { id: "beches", name: "Spaten", slug: "beches" },
      { id: "pelles", name: "Schaufeln", slug: "pelles" },
      { id: "rateaux", name: "Rechen", slug: "rateaux" },
      { id: "houes", name: "Hacken", slug: "houes" },
      { id: "sarcleuses", name: "Unkrautjäter", slug: "sarcleuses" },
      { id: "binettes", name: "Handhacken", slug: "binettes" },
      { id: "secateurs", name: "Gartenscheren", slug: "secateurs" },
      { id: "cisailles", name: "Astscheren", slug: "cisailles" },
      { id: "arrosoirs", name: "Gießkannen", slug: "arrosoirs" },
      { id: "pulverisateurs-manuels", name: "Handsprühgeräte", slug: "pulverisateurs-manuels" },
      { id: "brouettes", name: "Schubkarren", slug: "brouettes" },
      { id: "gants-de-jardin", name: "Gartenhandschuhe", slug: "gants-de-jardin" },
      { id: "lames-agricoles", name: "Landwirtschaftliche Klingen", slug: "lames-agricoles" },
      { id: "filets-de-recolte", name: "Erntenetze", slug: "filets-de-recolte" }
    ] },
    { id: "systemes-irrigation", name: "Bewässerungssysteme", slug: "systemes-irrigation", description: "Bewässerungs‑ und Gießlösungen zur Optimierung der Wasserversorgung.", subcategories: [
      { id: "tuyaux-d-arrosage", name: "Bewässerungsschläuche", slug: "tuyaux-d-arrosage" },
      { id: "goutte-a-goutte", name: "Tropfbewässerung", slug: "goutte-a-goutte" },
      { id: "programmateurs-irrigation", name: "Bewässerungssteuerungen", slug: "programmateurs-irrigation" },
      { id: "aspersions", name: "Sprinkler", slug: "aspersions" },
      { id: "pompes-a-eau", name: "Wasserpumpen", slug: "pompes-a-eau" },
      { id: "motopompes", name: "Motorpumpen", slug: "motopompes" },
      { id: "raccords-irrigation", name: "Bewässerungsanschlüsse", slug: "raccords-irrigation" },
      { id: "filtres-d-eau", name: "Wasserfilter", slug: "filtres-d-eau" },
      { id: "arroseurs", name: "Sprühgeräte", slug: "arroseurs" },
      { id: "reservoirs-d-eau", name: "Wassertanks", slug: "reservoirs-d-eau" }
    ] },
    { id: "semences-plants", name: "Samen & Setzlinge", slug: "semences-plants", description: "Samen, Setzlinge und Zwiebeln für Gemüse‑, Getreide‑ und Baumkulturen.", subcategories: [
      { id: "semences-potageres", name: "Gemüsesamen", slug: "semences-potageres" },
      { id: "semences-cerealieres", name: "Getreidesamen", slug: "semences-cerealieres" },
      { id: "semences-fourrageres", name: "Futtersamen", slug: "semences-fourrageres" },
      { id: "plants-de-legumes", name: "Gemüsesetzlinge", slug: "plants-de-legumes" },
      { id: "plants-fruitiers", name: "Obstbaumsetzlinge", slug: "plants-fruitiers" },
      { id: "plants-d-arbres", name: "Baumsetzlinge", slug: "plants-d-arbres" },
      { id: "graines-biologiques", name: "Bio‑Samen", slug: "graines-biologiques" },
      { id: "graines-hybrides", name: "Hybrid‑Samen", slug: "graines-hybrides" },
      { id: "bulbes", name: "Zwiebeln", slug: "bulbes" },
      { id: "jeunes-pousses", name: "Junge Triebe", slug: "jeunes-pousses" }
    ] },
    { id: "engrais-fertilisants", name: "Dünger & Bodenverbesserer", slug: "engrais-fertilisants", description: "Bodenverbesserer und Nährstoffe zur Erhöhung der Fruchtbarkeit und des Wachstums.", subcategories: [
      { id: "engrais-chimiques", name: "Chemische Dünger", slug: "engrais-chimiques" },
      { id: "engrais-organiques", name: "Organische Dünger", slug: "engrais-organiques" },
      { id: "compost", name: "Kompost", slug: "compost" },
      { id: "fumiers", name: "Mist", slug: "fumiers" },
      { id: "amendements-calcaires", name: "Kalkhaltige Bodenverbesserer", slug: "amendements-calcaires" },
      { id: "stimulateurs-de-croissance", name: "Wachstumsstimulatoren", slug: "stimulateurs-de-croissance" },
      { id: "terreaux", name: "Pflanzerde", slug: "terreaux" },
      { id: "substrats-agricoles", name: "Landwirtschaftliche Substrate", slug: "substrats-agricoles" },
      { id: "additifs-nutritifs", name: "Nährstoffzusätze", slug: "additifs-nutritifs" }
    ] },
    { id: "produits-phytosanitaires", name: "Pflanzenschutzmittel", slug: "produits-phytosanitaires", description: "Pflanzenschutzmittel und biologische Behandlungen.", subcategories: [
      { id: "insecticides-agricoles", name: "Landwirtschaftliche Insektizide", slug: "insecticides-agricoles" },
      { id: "fongicides", name: "Fungizide", slug: "fongicides" },
      { id: "herbicides", name: "Herbizide", slug: "herbicides" },
      { id: "traitements-biologiques", name: "Biologische Behandlungen", slug: "traitements-biologiques" },
      { id: "repulsifs-naturels", name: "Natürliche Abwehrmittel", slug: "repulsifs-naturels" },
      { id: "pieges-anti-nuisibles", name: "Schädlingsfallen", slug: "pieges-anti-nuisibles" },
      { id: "protections-pour-cultures", name: "Kulturschutzsysteme", slug: "protections-pour-cultures" }
    ] },
    { id: "elevage-soins-animaux", name: "Viehzucht & Tierpflege", slug: "elevage-soins-animaux", description: "Futter, Pflege und Ausrüstung für Nutztiere.", subcategories: [
      { id: "aliments-pour-betail", name: "Rinderfutter", slug: "aliments-pour-betail" },
      { id: "aliments-pour-volailles", name: "Geflügelfutter", slug: "aliments-pour-volailles" },
      { id: "aliments-pour-ovins-caprins", name: "Schaf‑ & Ziegenfutter", slug: "aliments-pour-ovins-caprins" },
      { id: "complements-nutritionnels", name: "Nahrungsergänzungen", slug: "complements-nutritionnels" },
      { id: "produits-veterinaires", name: "Veterinärprodukte", slug: "produits-veterinaires" },
      { id: "mangeoires", name: "Futtertröge", slug: "mangeoires" },
      { id: "abreuvoirs", name: "Tränken", slug: "abreuvoirs" },
      { id: "clotures-electriques", name: "Elektrozäune", slug: "clotures-electriques" },
      { id: "parcs-cages", name: "Ställe & Käfige", slug: "parcs-cages" },
      { id: "couveuses", name: "Brutapparate", slug: "couveuses" },
      { id: "nichoirs", name: "Nistkästen", slug: "nichoirs" },
      { id: "equipements-de-traite", name: "Melkausrüstung", slug: "equipements-de-traite" },
      { id: "tondeuses-animales", name: "Tier‑Schermaschinen", slug: "tondeuses-animales" }
    ] },
    { id: "materiel-elevage", name: "Ausrüstung für Viehzucht", slug: "materiel-elevage", description: "Spezialisierte Ausrüstung für Viehzucht, Melken und Lagerung.", subcategories: [
      { id: "machines-a-traire", name: "Melkmaschinen", slug: "machines-a-traire" },
      { id: "tanks-a-lait", name: "Milchtanks", slug: "tanks-a-lait" },
      { id: "broyeurs-a-grains", name: "Getreidemühlen", slug: "broyeurs-a-grains" },
      { id: "distributeurs-automatiques-d-aliments", name: "Automatische Futterspender", slug: "distributeurs-automatiques-d-aliments" },
      { id: "enrubanneuses", name: "Ballenwickler", slug: "enrubanneuses" },
      { id: "systemes-de-ventilation-elevage", name: "Lüftungssysteme", slug: "systemes-de-ventilation-elevage" },
      { id: "tapis-d-elevage", name: "Stallmatten", slug: "tapis-d-elevage" },
      { id: "abris-metalliques", name: "Metallunterstände", slug: "abris-metalliques" }
    ] },
    { id: "produits-agricoles-bruts", name: "Rohlandwirtschaftliche Produkte", slug: "produits-agricoles-bruts", description: "Unverarbeitete landwirtschaftliche Erzeugnisse aus Ernten.", subcategories: [
      { id: "cereales-ble-orge-mais", name: "Getreide (Weizen, Gerste, Mais)", slug: "cereales-ble-orge-mais" },
      { id: "legumes-frais", name: "Frisches Gemüse", slug: "legumes-frais" },
      { id: "fruits-de-saison", name: "Saisonfrüchte", slug: "fruits-de-saison" },
      { id: "herbes-aromatiques", name: "Aromatische Kräuter", slug: "herbes-aromatiques" },
      { id: "plantes-medicinales", name: "Heilpflanzen", slug: "plantes-medicinales" },
      { id: "fourrage", name: "Futter", slug: "fourrage" },
      { id: "foin", name: "Heu", slug: "foin" },
      { id: "luzerne", name: "Luzerne", slug: "luzerne" },
      { id: "paille", name: "Stroh", slug: "paille" }
    ] },
    { id: "produits-agroalimentaires-transformes", name: "Verarbeitete Lebensmittelprodukte", slug: "produits-agroalimentaires-transformes", description: "Verarbeitete Lebensmittelprodukte landwirtschaftlichen Ursprungs.", subcategories: [
      { id: "farine", name: "Mehl", slug: "farine" },
      { id: "couscous", name: "Couscous", slug: "couscous" },
      { id: "semoule", name: "Grieß", slug: "semoule" },
      { id: "huile-d-olive", name: "Olivenöl", slug: "huile-d-olive" },
      { id: "huiles-vegetales", name: "Pflanzenöle", slug: "huiles-vegetales" },
      { id: "conserves", name: "Konserven", slug: "conserves" },
      { id: "confitures", name: "Marmeladen", slug: "confitures" },
      { id: "produits-laitiers", name: "Milchprodukte", slug: "produits-laitiers" },
      { id: "fromages", name: "Käse", slug: "fromages" },
      { id: "miel", name: "Honig", slug: "miel" },
      { id: "dattes", name: "Datteln", slug: "dattes" },
      { id: "produits-secs", name: "Trockenprodukte", slug: "produits-secs" },
      { id: "legumineuses", name: "Hülsenfrüchte", slug: "legumineuses" }
    ] },
    { id: "equipements-agroalimentaires", name: "Lebensmitteltechnik", slug: "equipements-agroalimentaires", description: "Maschinen und Geräte für Lebensmittelverarbeitung und Verpackung.", subcategories: [
      { id: "moulins-agro", name: "Mühlen", slug: "moulins-agro" },
      { id: "concasseurs", name: "Brecher", slug: "concasseurs" },
      { id: "presses-a-huile", name: "Ölpressen", slug: "presses-a-huile" },
      { id: "petrins", name: "Teigkneter", slug: "petrins" },
      { id: "machines-d-emballage", name: "Verpackungsmaschinen", slug: "machines-d-emballage" },
      { id: "pasteurisateurs", name: "Pasteurisierer", slug: "pasteurisateurs" },
      { id: "machines-de-transformation", name: "Lebensmittelverarbeitungsmaschinen", slug: "machines-de-transformation" },
      { id: "sterilisateurs", name: "Sterilisatoren", slug: "sterilisateurs" },
      { id: "broyeurs-alimentaires", name: "Lebensmittelmühlen", slug: "broyeurs-alimentaires" }
    ] },
    { id: "serres-solutions-de-culture", name: "Gewächshäuser & Anbaulösungen", slug: "serres-solutions-de-culture", description: "Gewächshäuser und technische Systeme für kontrollierten Anbau.", subcategories: [
      { id: "serres-tunnel", name: "Tunnelgewächshäuser", slug: "serres-tunnel" },
      { id: "serres-metalliques", name: "Metallgewächshäuser", slug: "serres-metalliques" },
      { id: "baches-de-serre", name: "Gewächshausfolien", slug: "baches-de-serre" },
      { id: "systemes-hydroponiques", name: "Hydroponische Systeme", slug: "systemes-hydroponiques" },
      { id: "systemes-aquaponiques", name: "Aquaponik‑Systeme", slug: "systemes-aquaponiques" },
      { id: "lampes-horticoles", name: "Pflanzenlampen", slug: "lampes-horticoles" },
      { id: "tables-de-culture", name: "Anbautische", slug: "tables-de-culture" },
      { id: "capteurs-d-humidite", name: "Feuchtigkeitssensoren", slug: "capteurs-d-humidite" }
    ] },
    { id: "amenagement-agricole", name: "Landwirtschaftliche Ausstattung", slug: "amenagement-agricole", description: "Ausrüstung und Materialien für die Infrastruktur von Betrieben.", subcategories: [
      { id: "clotures-metalliques", name: "Metallzäune", slug: "clotures-metalliques" },
      { id: "grillages", name: "Drahtgeflechte", slug: "grillages" },
      { id: "baches-agricoles", name: "Landwirtschaftliche Planen", slug: "baches-agricoles" },
      { id: "filets-d-ombrage", name: "Schattiernetze", slug: "filets-d-ombrage" },
      { id: "paillages", name: "Mulch", slug: "paillages" },
      { id: "tuteurs", name: "Pflanzstützen", slug: "tuteurs" },
      { id: "piquets", name: "Pfosten", slug: "piquets" },
      { id: "abris-agricoles", name: "Landwirtschaftliche Unterstände", slug: "abris-agricoles" },
      { id: "hangars-demontables", name: "Demontierbare Hallen", slug: "hangars-demontables" }
    ] },
    { id: "transport-logistique-agricole", name: "Transport & Logistik", slug: "transport-logistique-agricole", description: "Materialien für landwirtschaftliche Lagerung, Handhabung und Transport.", subcategories: [
      { id: "sacs-de-stockage", name: "Lagerungssäcke", slug: "sacs-de-stockage" },
      { id: "big-bags", name: "Big‑Bags", slug: "big-bags" },
      { id: "caisses-de-recolte", name: "Erntekisten", slug: "caisses-de-recolte" },
      { id: "palettes", name: "Paletten", slug: "palettes" },
      { id: "conteneurs", name: "Container", slug: "conteneurs" },
      { id: "charrettes-agricoles", name: "Ackerwagen", slug: "charrettes-agricoles" },
      { id: "bennes-basculantes", name: "Kippmulden", slug: "bennes-basculantes" }
    ] },
    { id: "equipement-ruchers-apiculture", name: "Imkerei‑Ausrüstung", slug: "equipement-ruchers-apiculture", description: "Ausrüstung und Verbrauchsmaterialien für die Imkerei.", subcategories: [
      { id: "ruches", name: "Bienenstöcke", slug: "ruches" },
      { id: "cadres-de-ruche", name: "Rähmchen", slug: "cadres-de-ruche" },
      { id: "cire-gaufree", name: "Mittelwände", slug: "cire-gaufree" },
      { id: "enfumoirs", name: "Smoker", slug: "enfumoirs" },
      { id: "extracteurs-de-miel", name: "Honigschleudern", slug: "extracteurs-de-miel" },
      { id: "equipements-apiculteurs", name: "Imker‑Ausrüstung", slug: "equipements-apiculteurs" },
      { id: "pieges-a-essaims", name: "Schwarmfallen", slug: "pieges-a-essaims" }
    ] },
    { id: "controle-sanitaire-outils-produits", name: "Sanitätskontrolle Werkzeuge & Produkte", slug: "controle-sanitaire-outils-produits", description: "Werkzeuge und Produkte für Hygiene und Pflanzengesundheit.", subcategories: [
      { id: "desinfectants-agricoles", name: "Landwirtschaftliche Desinfektionsmittel", slug: "desinfectants-agricoles" },
      { id: "pulverisateurs-sanitaires", name: "Sanitäre Sprühgeräte", slug: "pulverisateurs-sanitaires" },
      { id: "pieges-a-insectes", name: "Insektenfallen", slug: "pieges-a-insectes" },
      { id: "filets-anti-oiseaux", name: "Vogelschutznetze", slug: "filets-anti-oiseaux" },
      { id: "systemes-protection-cultures", name: "Kulturschutzsysteme", slug: "systemes-protection-cultures" },
      { id: "stations-meteo-agricoles", name: "Landwirtschaftliche Wetterstationen", slug: "stations-meteo-agricoles" }
    ] },
    { id: "accessoires-consommables", name: "Zubehör & Verbrauchsmaterial", slug: "accessoires-consommables", description: "Häufige Zubehörteile und Verbrauchsmaterialien für landwirtschaftliche Tätigkeiten.", subcategories: [
      { id: "ficelles-agricoles", name: "Landwirtschaftliche Schnüre", slug: "ficelles-agricoles" },
      { id: "cordages", name: "Seile", slug: "cordages" },
      { id: "sangles", name: "Gurte", slug: "sangles" },
      { id: "attaches-pour-plants", name: "Pflanzenbinder", slug: "attaches-pour-plants" },
      { id: "boites-d-emballage", name: "Verpackungskartons", slug: "boites-d-emballage" },
      { id: "sacs-alimentaires", name: "Lebensmittelbeutel", slug: "sacs-alimentaires" },
      { id: "etiquettes-agricoles", name: "Landwirtschaftliche Etiketten", slug: "etiquettes-agricoles" }
    ] }
  ]
};