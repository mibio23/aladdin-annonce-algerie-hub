import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Utensils } from "lucide-react";

export const gastronomieAlimentationDe: MenuCategory = {
  id: "gastronomie-alimentation",
  name: "Gastronomie & Ernährung",
  slug: "gastronomie-alimentation",
  icon: <Utensils className="w-4 h-4" />,
  subcategories: [
    { id: "epicerie-salee", name: "Herzhafte Lebensmittel", slug: "epicerie-salee", subcategories: [
      { id: "pates", name: "Nudeln", slug: "pates" },
      { id: "riz", name: "Reis", slug: "riz" },
      { id: "semoule", name: "Grieß", slug: "semoule" },
      { id: "couscous", name: "couscous", slug: "couscous" },
      { id: "lentilles", name: "Linsen", slug: "lentilles" },
      { id: "pois-chiches", name: "Kichererbsen", slug: "pois-chiches" },
      { id: "haricots-secs", name: "getrocknete Bohnen", slug: "haricots-secs" },
      { id: "farines", name: "Mehle", slug: "farines" },
      { id: "boulghour", name: "Bulgur", slug: "boulghour" },
      { id: "cereales", name: "Cerealien", slug: "cereales" },
      { id: "conserves-salees", name: "herzhafte Konserven", slug: "conserves-salees" },
      { id: "sauces-salees", name: "herzhafte Soßen", slug: "sauces-salees" }
    ]},
    { id: "epicerie-sucree", name: "Süße Lebensmittel", slug: "epicerie-sucree", subcategories: [
      { id: "sucre", name: "Zucker", slug: "sucre" },
      { id: "miel", name: "Honig", slug: "miel" },
      { id: "confitures", name: "Konfitüren", slug: "confitures" },
      { id: "pate-a-tartiner", name: "Aufstriche", slug: "pate-a-tartiner" },
      { id: "biscuits", name: "Kekse", slug: "biscuits" },
      { id: "gateaux", name: "Kuchen", slug: "gateaux" },
      { id: "cereales-sucrees", name: "süße Cerealien", slug: "cereales-sucrees" },
      { id: "sirops", name: "Sirupe", slug: "sirops" },
      { id: "desserts-instantanes", name: "Instant-Desserts", slug: "desserts-instantanes" }
    ]},
    { id: "conserves-boites", name: "Konserven & Dosenprodukte", slug: "conserves-boites", subcategories: [
      { id: "thon", name: "Thunfisch", slug: "thon" },
      { id: "sardines", name: "Sardinen", slug: "sardines" },
      { id: "maquereaux", name: "Makrelen", slug: "maquereaux" },
      { id: "mais", name: "Mais", slug: "mais" },
      { id: "petits-pois", name: "Erbsen", slug: "petits-pois" },
      { id: "haricots", name: "Bohnen", slug: "haricots" },
      { id: "tomates-pelees", name: "geschälte Tomaten", slug: "tomates-pelees" },
      { id: "sauces-conserve", name: "Konservensaucen", slug: "sauces-conserve" },
      { id: "plats-prepares", name: "Fertiggerichte", slug: "plats-prepares" }
    ]},
    { id: "produits-frais", name: "Frische Produkte", slug: "produits-frais", subcategories: [
      { id: "yaourts", name: "Joghurts", slug: "yaourts" },
      { id: "fromages-frais", name: "Frischkäse", slug: "fromages-frais" },
      { id: "lait", name: "Milch", slug: "lait" },
      { id: "beurre", name: "Butter", slug: "beurre" },
      { id: "creme", name: "Sahne", slug: "creme" },
      { id: "oeufs", name: "Eier", slug: "oeufs" },
      { id: "jus-frais", name: "frische Säfte", slug: "jus-frais" },
      { id: "charcuterie-frais", name: "Aufschnitt", slug: "charcuterie-frais" },
      { id: "produits-traiteurs", name: "Feinkostprodukte", slug: "produits-traiteurs" }
    ]},
    { id: "produits-surgeles", name: "Tiefkühlprodukte", slug: "produits-surgeles", subcategories: [
      { id: "legumes-surgeles", name: "Tiefkühlgemüse", slug: "legumes-surgeles" },
      { id: "viandes-surgeles", name: "Fleisch", slug: "viandes-surgeles" },
      { id: "poissons-surgeles", name: "Fisch", slug: "poissons-surgeles" },
      { id: "fruits-surgeles", name: "Früchte", slug: "fruits-surgeles" },
      { id: "pizzas-surgeles", name: "Pizzen", slug: "pizzas-surgeles" },
      { id: "nuggets", name: "nuggets", slug: "nuggets" },
      { id: "patisseries-surgeles", name: "Gebäck", slug: "patisseries-surgeles" },
      { id: "glaces", name: "Eis", slug: "glaces" }
    ]},
    { id: "viandes-volailles", name: "Fleisch & Geflügel", slug: "viandes-volailles", subcategories: [
      { id: "viande-rouge", name: "rotes Fleisch", slug: "viande-rouge" },
      { id: "viande-blanche", name: "weißes Fleisch", slug: "viande-blanche" },
      { id: "volaille", name: "Geflügel", slug: "volaille" },
      { id: "dinde", name: "Truthahn", slug: "dinde" },
      { id: "merguez", name: "merguez", slug: "merguez" },
      { id: "charcuterie", name: "Wurstwaren", slug: "charcuterie" },
      { id: "abats", name: "Innereien", slug: "abats" },
      { id: "viandes-marinees", name: "marinierte Fleischwaren", slug: "viandes-marinees" }
    ]},
    { id: "poissons-fruits-de-mer", name: "Fisch & Meeresfrüchte", slug: "poissons-fruits-de-mer", subcategories: [
      { id: "poissons-frais", name: "frischer Fisch", slug: "poissons-frais" },
      { id: "poissons-congeles", name: "Tiefkühlfisch", slug: "poissons-congeles" },
      { id: "crustaces", name: "Krustentiere", slug: "crustaces" },
      { id: "mollusques", name: "Weichtiere", slug: "mollusques" },
      { id: "fruits-de-mer-prepares", name: "zubereitete Meeresfrüchte", slug: "fruits-de-mer-prepares" },
      { id: "saumon", name: "Lachs", slug: "saumon" },
      { id: "thon-poisson", name: "Thunfisch", slug: "thon-poisson" }
    ]},
    { id: "fruits-legumes", name: "Obst & Gemüse", slug: "fruits-legumes", subcategories: [
      { id: "fruits-frais", name: "frisches Obst", slug: "fruits-frais" },
      { id: "legumes-frais", name: "frisches Gemüse", slug: "legumes-frais" },
      { id: "fruits-secs", name: "Trockenfrüchte", slug: "fruits-secs" },
      { id: "fruits-deshydrates", name: "dehydrierte Früchte", slug: "fruits-deshydrates" },
      { id: "legumes-bio", name: "Bio-Gemüse", slug: "legumes-bio" },
      { id: "produits-de-saison", name: "Saisonprodukte", slug: "produits-de-saison" }
    ]},
    { id: "boulangerie-patisserie", name: "Bäckerei & Konditorei", slug: "boulangerie-patisserie", subcategories: [
      { id: "pains", name: "Brote", slug: "pains" },
      { id: "baguettes", name: "baguettes", slug: "baguettes" },
      { id: "croissants", name: "croissants", slug: "croissants" },
      { id: "brioches", name: "Brioche", slug: "brioches" },
      { id: "patisseries-locales", name: "lokales Gebäck", slug: "patisseries-locales" },
      { id: "gateaux-patisserie", name: "Kuchen", slug: "gateaux-patisserie" },
      { id: "biscuits-artisanaux", name: "handwerkliche Kekse", slug: "biscuits-artisanaux" },
      { id: "viennoiseries", name: "feine Backwaren", slug: "viennoiseries" }
    ]},
    { id: "produits-laitiers", name: "Milchprodukte", slug: "produits-laitiers", subcategories: [
      { id: "lait-produit", name: "Milch", slug: "lait-produit" },
      { id: "fromage", name: "Käse", slug: "fromage" },
      { id: "yaourt", name: "Joghurt", slug: "yaourt" },
      { id: "creme-fraiche", name: "Crème fraîche", slug: "creme-fraiche" },
      { id: "beurre-produit", name: "Butter", slug: "beurre-produit" },
      { id: "fromages-locaux", name: "lokale Käsesorten", slug: "fromages-locaux" },
      { id: "fromages-europeens", name: "europäische Käsesorten", slug: "fromages-europeens" }
    ]},
    { id: "huiles-condiments", name: "Öle & Würzmittel", slug: "huiles-condiments", subcategories: [
      { id: "huile-olive", name: "Olivenöl", slug: "huile-olive" },
      { id: "huile-tournesol", name: "Sonnenblumenöl", slug: "huile-tournesol" },
      { id: "vinaigre", name: "Essig", slug: "vinaigre" },
      { id: "moutarde", name: "Senf", slug: "moutarde" },
      { id: "mayonnaise", name: "Mayonnaise", slug: "mayonnaise" },
      { id: "sauces-condiments", name: "Saucen", slug: "sauces-condiments" },
      { id: "epices-condiments", name: "Gewürze", slug: "epices-condiments" },
      { id: "herbes", name: "Kräuter", slug: "herbes" },
      { id: "aromates", name: "Aromen", slug: "aromates" },
      { id: "bouillons", name: "Brühen", slug: "bouillons" }
    ]},
    { id: "epices-assaisonnements", name: "Gewürze & Würzungen", slug: "epices-assaisonnements", subcategories: [
      { id: "sel", name: "Salz", slug: "sel" },
      { id: "poivre", name: "Pfeffer", slug: "poivre" },
      { id: "paprika", name: "paprika", slug: "paprika" },
      { id: "cumin", name: "Kreuzkümmel", slug: "cumin" },
      { id: "curcuma", name: "Kurkuma", slug: "curcuma" },
      { id: "epices-orientales", name: "orientalische Gewürze", slug: "epices-orientales" },
      { id: "melanges-prets", name: "Gewürzmischungen", slug: "melanges-prets" },
      { id: "assaisonnements-barbecue", name: "Barbecue-Würzungen", slug: "assaisonnements-barbecue" }
    ]},
    { id: "boissons", name: "Getränke", slug: "boissons", subcategories: [
      { id: "eaux-minerales", name: "Mineralwasser", slug: "eaux-minerales" },
      { id: "boissons-gazeuses", name: "Erfrischungsgetränke", slug: "boissons-gazeuses" },
      { id: "jus", name: "Säfte", slug: "jus" },
      { id: "boissons-energetiques", name: "Energy-Drinks", slug: "boissons-energetiques" },
      { id: "thes-glaces", name: "Eistees", slug: "thes-glaces" },
      { id: "infusions-prêtes", name: "Trinkfertige Aufgüsse", slug: "infusions-pretes-a-boire" }
    ]},
    { id: "cafe-the", name: "Kaffee & Tee", slug: "cafe-the", subcategories: [
      { id: "cafe-moulu", name: "gemahlener Kaffee", slug: "cafe-moulu" },
      { id: "cafe-en-grains", name: "Kaffeebohnen", slug: "cafe-en-grains" },
      { id: "capsules", name: "capsules", slug: "capsules" },
      { id: "cafe-instantane", name: "Instantkaffee", slug: "cafe-instantane" },
      { id: "thes-verts", name: "Grüntees", slug: "thes-verts" },
      { id: "thes-noirs", name: "Schwarztees", slug: "thes-noirs" },
      { id: "infusions", name: "Aufgüsse", slug: "infusions" },
      { id: "tisanes", name: "Kräutertees", slug: "tisanes" },
      { id: "accessoires-cafe-the", name: "Kaffee/Tee Zubehör", slug: "accessoires-cafe-the" }
    ]},
    { id: "produits-bio-naturels", name: "Bio & Naturprodukte", slug: "produits-bio-naturels", subcategories: [
      { id: "aliments-bio", name: "Bio-Lebensmittel", slug: "aliments-bio" },
      { id: "graines", name: "Samen", slug: "graines" },
      { id: "superfoods", name: "superfoods", slug: "superfoods" },
      { id: "farines-bio", name: "Bio-Mehle", slug: "farines-bio" },
      { id: "huiles-naturelles", name: "natürliche Öle", slug: "huiles-naturelles" },
      { id: "produits-sans-additifs", name: "Produkte ohne Zusatzstoffe", slug: "produits-sans-additifs" }
    ]},
    { id: "produits-orientaux-traditionnels", name: "Orientalische & traditionelle Produkte", slug: "produits-orientaux-traditionnels", subcategories: [
      { id: "patisseries-orientales", name: "orientalische Gebäcke", slug: "patisseries-orientales" },
      { id: "dattes", name: "Datteln", slug: "dattes" },
      { id: "semoule-speciale", name: "spezieller Grieß", slug: "semoule-speciale" },
      { id: "epices-orientales-trad", name: "orientalische Gewürze", slug: "epices-orientales-trad" },
      { id: "couscous-artisanal", name: "handwerklicher Couscous", slug: "couscous-artisanal" },
      { id: "produits-ramadan", name: "Ramadan-Produkte", slug: "produits-ramadan" }
    ]},
    { id: "snacks-aperitifs", name: "Snacks & Aperitifs", slug: "snacks-aperitifs", subcategories: [
      { id: "chips", name: "chips", slug: "chips" },
      { id: "biscuits-sales", name: "herzhafte Kekse", slug: "biscuits-sales" },
      { id: "cacahuetes", name: "Erdnüsse", slug: "cacahuetes" },
      { id: "amandes", name: "Mandeln", slug: "amandes" },
      { id: "pistaches", name: "Pistazien", slug: "pistaches" },
      { id: "noix-de-cajou", name: "Cashewnüsse", slug: "noix-de-cajou" },
      { id: "popcorn", name: "popcorn", slug: "popcorn" },
      { id: "olives-assaisonnees", name: "gewürzte Oliven", slug: "olives-assaisonnees" }
    ]},
    { id: "cuisine-internationale", name: "Internationale Kochprodukte", slug: "cuisine-internationale", subcategories: [
      { id: "produits-asiatiques", name: "asiatische Produkte", slug: "produits-asiatiques" },
      { id: "produits-turcs", name: "türkische Produkte", slug: "produits-turcs" },
      { id: "produits-indiens", name: "indische Produkte", slug: "produits-indiens" },
      { id: "sauces-internationales", name: "internationale Saucen", slug: "sauces-internationales" },
      { id: "nouilles-asiatiques", name: "asiatische Nudeln", slug: "nouilles-asiatiques" }
    ]},
    { id: "produits-halal", name: "Halal-Produkte", slug: "produits-halal", subcategories: [
      { id: "charcuterie-halal", name: "Halal-Wurstwaren", slug: "charcuterie-halal" },
      { id: "viandes-halal", name: "Halal-Fleisch", slug: "viandes-halal" },
      { id: "snacks-halal", name: "Halal-Snacks", slug: "snacks-halal" },
      { id: "plats-prepares-halal", name: "Halal-Fertiggerichte", slug: "plats-prepares-halal" },
      { id: "surgeles-halal", name: "Halal-Tiefkühl", slug: "surgeles-halal" }
    ]},
    { id: "nutrition-sportive", name: "Sporternährung", slug: "nutrition-sportive", subcategories: [
      { id: "proteines", name: "Proteine", slug: "proteines" },
      { id: "gainers", name: "Weight Gainer", slug: "gainers" },
      { id: "creatine", name: "Kreatin", slug: "creatine" },
      { id: "aminoacides", name: "Aminosäuren", slug: "aminoacides" },
      { id: "bars-protein", name: "Proteinriegel", slug: "bars-proteinees" },
      { id: "boissons-isotoniques", name: "isotonische Getränke", slug: "boissons-isotoniques" },
      { id: "meal-replacement", name: "Mahlzeitenersatz", slug: "meal-replacement" }
    ]},
    { id: "dietetique-sante", name: "Diät & Gesundheit", slug: "dietetique-sante", subcategories: [
      { id: "sans-sucre", name: "zuckerfreie Produkte", slug: "sans-sucre" },
      { id: "sans-gluten", name: "glutenfreie Produkte", slug: "sans-gluten" },
      { id: "sans-lactose", name: "laktosefreie Produkte", slug: "sans-lactose" },
      { id: "faible-calories", name: "kalorienarme Lebensmittel", slug: "faible-calories" },
      { id: "thes-detox", name: "Detox-Tees", slug: "thes-detox" },
      { id: "complements-alimentaires", name: "Nahrungsergänzungsmittel", slug: "complements-alimentaires" }
    ]},
    { id: "produits-patisserie", name: "Backzutaten", slug: "produits-patisserie", subcategories: [
      { id: "chocolat", name: "Schokolade", slug: "chocolat" },
      { id: "levure", name: "Hefe", slug: "levure" },
      { id: "cacao", name: "Kakao", slug: "cacao" },
      { id: "aromes", name: "Aromen", slug: "aromes" },
      { id: "colorants", name: "Farbstoffe", slug: "colorants" },
      { id: "decorations-patisserie", name: "Konditorei-Dekorationen", slug: "decorations-patisserie" },
      { id: "ustensiles-patisserie", name: "Backutensilien", slug: "ustensiles-patisserie" }
    ]},
    { id: "produits-cuisine", name: "Kochgrundlagen", slug: "produits-cuisine", subcategories: [
      { id: "sauces-soja", name: "Sojasaucen", slug: "sauces-soja" },
      { id: "sauces-piquantes", name: "scharfe Saucen", slug: "sauces-piquantes" },
      { id: "ketchup", name: "ketchup", slug: "ketchup" },
      { id: "moutarde-cuisine", name: "Senf", slug: "moutarde-cuisine" },
      { id: "marinade", name: "Marinaden", slug: "marinade" },
      { id: "bouillons-cuisine", name: "Brühen", slug: "bouillons-cuisine" },
      { id: "aides-de-cuisine", name: "Küchenhilfen", slug: "aides-de-cuisine" }
    ]},
    { id: "gourmandises-douceurs", name: "Süßwaren & Köstlichkeiten", slug: "gourmandises-douceurs", subcategories: [
      { id: "chocolats", name: "Schokoladen", slug: "chocolats" },
      { id: "bonbons", name: "Bonbons", slug: "bonbons" },
      { id: "dragees", name: "Dragées", slug: "dragees" },
      { id: "fruits-confits", name: "kandierte Früchte", slug: "fruits-confits" },
      { id: "patisserie-fine", name: "feine Konditorei", slug: "patisserie-fine" },
      { id: "coffrets-cadeaux", name: "Geschenkboxen", slug: "coffrets-cadeaux" }
    ]},
    { id: "produits-bebe", name: "Babynahrung", slug: "produits-bebe", subcategories: [
      { id: "lait-infantile", name: "Babymilch", slug: "lait-infantile" },
      { id: "petits-pots", name: "Babygläschen", slug: "petits-pots" },
      { id: "compotes", name: "Kompotte", slug: "compotes" },
      { id: "biscuits-bebe", name: "Baby-Kekse", slug: "biscuits-bebe" },
      { id: "cereales-bebe", name: "Baby-Cerealien", slug: "cereales-bebe" },
      { id: "yaourts-bebe", name: "Babyjoghurts", slug: "yaourts-bebe" }
    ]},
    { id: "eaux-hydratation", name: "Wasser & Hydration", slug: "eaux-hydratation", subcategories: [
      { id: "eau-plate", name: "Stillwasser", slug: "eau-plate" },
      { id: "eau-gazeuse", name: "Sprudelwasser", slug: "eau-gazeuse" },
      { id: "eau-aromatisee", name: "aromatisiertes Wasser", slug: "eau-aromatisee" },
      { id: "packs-famille", name: "Familienpacks", slug: "packs-famille" },
      { id: "bouteilles-sport", name: "Sportflaschen", slug: "bouteilles-sport" }
    ]},
    { id: "accessoires-culinaires", name: "Küchenzubehör", slug: "accessoires-culinaires", subcategories: [
      { id: "boites-alimentaire", name: "Lebensmittelboxen", slug: "boites-alimentaire" },
      { id: "contenants-hermetiques", name: "luftdichte Behälter", slug: "contenants-hermetiques" },
      { id: "sacs-congelation", name: "Gefrierbeutel", slug: "sacs-congelation" },
      { id: "accessoires-de-cuisine", name: "Küchenzubehör", slug: "accessoires-de-cuisine" }
    ]}
  ]
};