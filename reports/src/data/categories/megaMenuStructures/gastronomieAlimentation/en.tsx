import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Utensils } from "lucide-react";

export const gastronomieAlimentationEn: MenuCategory = {
  id: "gastronomie-alimentation",
  name: "Gastronomy & Food",
  slug: "gastronomie-alimentation",
  icon: <Utensils className="w-4 h-4" />,
  subcategories: [
    { id: "epicerie-salee", name: "Savory Grocery", slug: "epicerie-salee", subcategories: [
      { id: "pates", name: "pasta", slug: "pates" },
      { id: "riz", name: "rice", slug: "riz" },
      { id: "semoule", name: "semolina", slug: "semoule" },
      { id: "couscous", name: "couscous", slug: "couscous" },
      { id: "lentilles", name: "lentils", slug: "lentilles" },
      { id: "pois-chiches", name: "chickpeas", slug: "pois-chiches" },
      { id: "haricots-secs", name: "dried beans", slug: "haricots-secs" },
      { id: "farines", name: "flours", slug: "farines" },
      { id: "boulghour", name: "bulgur", slug: "boulghour" },
      { id: "cereales", name: "cereals", slug: "cereales" },
      { id: "conserves-salees", name: "savory canned goods", slug: "conserves-salees" },
      { id: "sauces-salees", name: "savory sauces", slug: "sauces-salees" }
    ]},
    { id: "epicerie-sucree", name: "Sweet Grocery", slug: "epicerie-sucree", subcategories: [
      { id: "sucre", name: "sugar", slug: "sucre" },
      { id: "miel", name: "honey", slug: "miel" },
      { id: "confitures", name: "jams", slug: "confitures" },
      { id: "pate-a-tartiner", name: "spreads", slug: "pate-a-tartiner" },
      { id: "biscuits", name: "cookies", slug: "biscuits" },
      { id: "gateaux", name: "cakes", slug: "gateaux" },
      { id: "cereales-sucrees", name: "sweet cereals", slug: "cereales-sucrees" },
      { id: "sirops", name: "syrups", slug: "sirops" },
      { id: "desserts-instantanes", name: "instant desserts", slug: "desserts-instantanes" }
    ]},
    { id: "conserves-boites", name: "Canned Foods", slug: "conserves-boites", subcategories: [
      { id: "thon", name: "tuna", slug: "thon" },
      { id: "sardines", name: "sardines", slug: "sardines" },
      { id: "maquereaux", name: "mackerel", slug: "maquereaux" },
      { id: "mais", name: "corn", slug: "mais" },
      { id: "petits-pois", name: "peas", slug: "petits-pois" },
      { id: "haricots", name: "beans", slug: "haricots" },
      { id: "tomates-pelees", name: "peeled tomatoes", slug: "tomates-pelees" },
      { id: "sauces-conserve", name: "canned sauces", slug: "sauces-conserve" },
      { id: "plats-prepares", name: "ready meals", slug: "plats-prepares" }
    ]},
    { id: "produits-frais", name: "Fresh Products", slug: "produits-frais", subcategories: [
      { id: "yaourts", name: "yogurts", slug: "yaourts" },
      { id: "fromages-frais", name: "fresh cheeses", slug: "fromages-frais" },
      { id: "lait", name: "milk", slug: "lait" },
      { id: "beurre", name: "butter", slug: "beurre" },
      { id: "creme", name: "cream", slug: "creme" },
      { id: "oeufs", name: "eggs", slug: "oeufs" },
      { id: "jus-frais", name: "fresh juices", slug: "jus-frais" },
      { id: "charcuterie-frais", name: "cold cuts", slug: "charcuterie-frais" },
      { id: "produits-traiteurs", name: "deli products", slug: "produits-traiteurs" }
    ]},
    { id: "produits-surgeles", name: "Frozen Foods", slug: "produits-surgeles", subcategories: [
      { id: "legumes-surgeles", name: "frozen vegetables", slug: "legumes-surgeles" },
      { id: "viandes-surgeles", name: "meats", slug: "viandes-surgeles" },
      { id: "poissons-surgeles", name: "fish", slug: "poissons-surgeles" },
      { id: "fruits-surgeles", name: "fruits", slug: "fruits-surgeles" },
      { id: "pizzas-surgeles", name: "pizzas", slug: "pizzas-surgeles" },
      { id: "nuggets", name: "nuggets", slug: "nuggets" },
      { id: "patisseries-surgeles", name: "pastries", slug: "patisseries-surgeles" },
      { id: "glaces", name: "ice cream", slug: "glaces" }
    ]},
    { id: "viandes-volailles", name: "Meat & Poultry", slug: "viandes-volailles", subcategories: [
      { id: "viande-rouge", name: "red meat", slug: "viande-rouge" },
      { id: "viande-blanche", name: "white meat", slug: "viande-blanche" },
      { id: "volaille", name: "poultry", slug: "volaille" },
      { id: "dinde", name: "turkey", slug: "dinde" },
      { id: "merguez", name: "merguez", slug: "merguez" },
      { id: "charcuterie", name: "charcuterie", slug: "charcuterie" },
      { id: "abats", name: "offal", slug: "abats" },
      { id: "viandes-marinees", name: "marinated meats", slug: "viandes-marinees" }
    ]},
    { id: "poissons-fruits-de-mer", name: "Fish & Seafood", slug: "poissons-fruits-de-mer", subcategories: [
      { id: "poissons-frais", name: "fresh fish", slug: "poissons-frais" },
      { id: "poissons-congeles", name: "frozen fish", slug: "poissons-congeles" },
      { id: "crustaces", name: "shellfish", slug: "crustaces" },
      { id: "mollusques", name: "mollusks", slug: "mollusques" },
      { id: "fruits-de-mer-prepares", name: "prepared seafood", slug: "fruits-de-mer-prepares" },
      { id: "saumon", name: "salmon", slug: "saumon" },
      { id: "thon-poisson", name: "tuna", slug: "thon-poisson" }
    ]},
    { id: "fruits-legumes", name: "Fruits & Vegetables", slug: "fruits-legumes", subcategories: [
      { id: "fruits-frais", name: "fresh fruits", slug: "fruits-frais" },
      { id: "legumes-frais", name: "fresh vegetables", slug: "legumes-frais" },
      { id: "fruits-secs", name: "dried fruits", slug: "fruits-secs" },
      { id: "fruits-deshydrates", name: "dehydrated fruits", slug: "fruits-deshydrates" },
      { id: "legumes-bio", name: "organic vegetables", slug: "legumes-bio" },
      { id: "produits-de-saison", name: "seasonal produce", slug: "produits-de-saison" }
    ]},
    { id: "boulangerie-patisserie", name: "Bakery & Pastry", slug: "boulangerie-patisserie", subcategories: [
      { id: "pains", name: "breads", slug: "pains" },
      { id: "baguettes", name: "baguettes", slug: "baguettes" },
      { id: "croissants", name: "croissants", slug: "croissants" },
      { id: "brioches", name: "brioche", slug: "brioches" },
      { id: "patisseries-locales", name: "local pastries", slug: "patisseries-locales" },
      { id: "gateaux-patisserie", name: "cakes", slug: "gateaux-patisserie" },
      { id: "biscuits-artisanaux", name: "artisanal biscuits", slug: "biscuits-artisanaux" },
      { id: "viennoiseries", name: "viennoiseries", slug: "viennoiseries" }
    ]},
    { id: "produits-laitiers", name: "Dairy Products", slug: "produits-laitiers", subcategories: [
      { id: "lait-produit", name: "milk", slug: "lait-produit" },
      { id: "fromage", name: "cheese", slug: "fromage" },
      { id: "yaourt", name: "yogurt", slug: "yaourt" },
      { id: "creme-fraiche", name: "crème fraîche", slug: "creme-fraiche" },
      { id: "beurre-produit", name: "butter", slug: "beurre-produit" },
      { id: "fromages-locaux", name: "local cheeses", slug: "fromages-locaux" },
      { id: "fromages-europeens", name: "European cheeses", slug: "fromages-europeens" }
    ]},
    { id: "huiles-condiments", name: "Oils & Condiments", slug: "huiles-condiments", subcategories: [
      { id: "huile-olive", name: "olive oil", slug: "huile-olive" },
      { id: "huile-tournesol", name: "sunflower oil", slug: "huile-tournesol" },
      { id: "vinaigre", name: "vinegar", slug: "vinaigre" },
      { id: "moutarde", name: "mustard", slug: "moutarde" },
      { id: "mayonnaise", name: "mayonnaise", slug: "mayonnaise" },
      { id: "sauces-condiments", name: "sauces", slug: "sauces-condiments" },
      { id: "epices-condiments", name: "spices", slug: "epices-condiments" },
      { id: "herbes", name: "herbs", slug: "herbes" },
      { id: "aromates", name: "aromatics", slug: "aromates" },
      { id: "bouillons", name: "broths", slug: "bouillons" }
    ]},
    { id: "epices-assaisonnements", name: "Spices & Seasonings", slug: "epices-assaisonnements", subcategories: [
      { id: "sel", name: "salt", slug: "sel" },
      { id: "poivre", name: "pepper", slug: "poivre" },
      { id: "paprika", name: "paprika", slug: "paprika" },
      { id: "cumin", name: "cumin", slug: "cumin" },
      { id: "curcuma", name: "turmeric", slug: "curcuma" },
      { id: "epices-orientales", name: "oriental spices", slug: "epices-orientales" },
      { id: "melanges-prets", name: "ready blends", slug: "melanges-prets" },
      { id: "assaisonnements-barbecue", name: "barbecue seasonings", slug: "assaisonnements-barbecue" }
    ]},
    { id: "boissons", name: "Beverages", slug: "boissons", subcategories: [
      { id: "eaux-minerales", name: "mineral water", slug: "eaux-minerales" },
      { id: "boissons-gazeuses", name: "soft drinks", slug: "boissons-gazeuses" },
      { id: "jus", name: "juices", slug: "jus" },
      { id: "boissons-energetiques", name: "energy drinks", slug: "boissons-energetiques" },
      { id: "thes-glaces", name: "iced teas", slug: "thes-glaces" },
      { id: "infusions-prêtes", name: "ready-to-drink infusions", slug: "infusions-pretes-a-boire" }
    ]},
    { id: "cafe-the", name: "Coffee & Tea", slug: "cafe-the", subcategories: [
      { id: "cafe-moulu", name: "ground coffee", slug: "cafe-moulu" },
      { id: "cafe-en-grains", name: "coffee beans", slug: "cafe-en-grains" },
      { id: "capsules", name: "capsules", slug: "capsules" },
      { id: "cafe-instantane", name: "instant coffee", slug: "cafe-instantane" },
      { id: "thes-verts", name: "green teas", slug: "thes-verts" },
      { id: "thes-noirs", name: "black teas", slug: "thes-noirs" },
      { id: "infusions", name: "infusions", slug: "infusions" },
      { id: "tisanes", name: "herbal teas", slug: "tisanes" },
      { id: "accessoires-cafe-the", name: "coffee/tea accessories", slug: "accessoires-cafe-the" }
    ]},
    { id: "produits-bio-naturels", name: "Organic & Natural", slug: "produits-bio-naturels", subcategories: [
      { id: "aliments-bio", name: "organic foods", slug: "aliments-bio" },
      { id: "graines", name: "seeds", slug: "graines" },
      { id: "superfoods", name: "superfoods", slug: "superfoods" },
      { id: "farines-bio", name: "organic flours", slug: "farines-bio" },
      { id: "huiles-naturelles", name: "natural oils", slug: "huiles-naturelles" },
      { id: "produits-sans-additifs", name: "additive-free products", slug: "produits-sans-additifs" }
    ]},
    { id: "produits-orientaux-traditionnels", name: "Oriental & Traditional", slug: "produits-orientaux-traditionnels", subcategories: [
      { id: "patisseries-orientales", name: "oriental pastries", slug: "patisseries-orientales" },
      { id: "dattes", name: "dates", slug: "dattes" },
      { id: "semoule-speciale", name: "special semolina", slug: "semoule-speciale" },
      { id: "epices-orientales-trad", name: "oriental spices", slug: "epices-orientales-trad" },
      { id: "couscous-artisanal", name: "artisanal couscous", slug: "couscous-artisanal" },
      { id: "produits-ramadan", name: "Ramadan products", slug: "produits-ramadan" }
    ]},
    { id: "snacks-aperitifs", name: "Snacks & Appetizers", slug: "snacks-aperitifs", subcategories: [
      { id: "chips", name: "chips", slug: "chips" },
      { id: "biscuits-sales", name: "savory biscuits", slug: "biscuits-sales" },
      { id: "cacahuetes", name: "peanuts", slug: "cacahuetes" },
      { id: "amandes", name: "almonds", slug: "amandes" },
      { id: "pistaches", name: "pistachios", slug: "pistaches" },
      { id: "noix-de-cajou", name: "cashew nuts", slug: "noix-de-cajou" },
      { id: "popcorn", name: "popcorn", slug: "popcorn" },
      { id: "olives-assaisonnees", name: "seasoned olives", slug: "olives-assaisonnees" }
    ]},
    { id: "cuisine-internationale", name: "International Cooking Products", slug: "cuisine-internationale", subcategories: [
      { id: "produits-asiatiques", name: "Asian products", slug: "produits-asiatiques" },
      { id: "produits-turcs", name: "Turkish products", slug: "produits-turcs" },
      { id: "produits-indiens", name: "Indian products", slug: "produits-indiens" },
      { id: "sauces-internationales", name: "international sauces", slug: "sauces-internationales" },
      { id: "nouilles-asiatiques", name: "Asian noodles", slug: "nouilles-asiatiques" }
    ]},
    { id: "produits-halal", name: "Halal Products", slug: "produits-halal", subcategories: [
      { id: "charcuterie-halal", name: "halal deli", slug: "charcuterie-halal" },
      { id: "viandes-halal", name: "halal meats", slug: "viandes-halal" },
      { id: "snacks-halal", name: "halal snacks", slug: "snacks-halal" },
      { id: "plats-prepares-halal", name: "halal ready meals", slug: "plats-prepares-halal" },
      { id: "surgeles-halal", name: "halal frozen", slug: "surgeles-halal" }
    ]},
    { id: "nutrition-sportive", name: "Sports Nutrition", slug: "nutrition-sportive", subcategories: [
      { id: "proteines", name: "proteins", slug: "proteines" },
      { id: "gainers", name: "gainers", slug: "gainers" },
      { id: "creatine", name: "creatine", slug: "creatine" },
      { id: "aminoacides", name: "amino acids", slug: "aminoacides" },
      { id: "bars-protein", name: "protein bars", slug: "bars-proteinees" },
      { id: "boissons-isotoniques", name: "isotonic drinks", slug: "boissons-isotoniques" },
      { id: "meal-replacement", name: "meal replacement", slug: "meal-replacement" }
    ]},
    { id: "dietetique-sante", name: "Diet & Health", slug: "dietetique-sante", subcategories: [
      { id: "sans-sucre", name: "sugar-free products", slug: "sans-sucre" },
      { id: "sans-gluten", name: "gluten-free products", slug: "sans-gluten" },
      { id: "sans-lactose", name: "lactose-free products", slug: "sans-lactose" },
      { id: "faible-calories", name: "low-calorie foods", slug: "faible-calories" },
      { id: "thes-detox", name: "detox teas", slug: "thes-detox" },
      { id: "complements-alimentaires", name: "dietary supplements", slug: "complements-alimentaires" }
    ]},
    { id: "produits-patisserie", name: "Pastry Essentials", slug: "produits-patisserie", subcategories: [
      { id: "chocolat", name: "chocolate", slug: "chocolat" },
      { id: "levure", name: "yeast", slug: "levure" },
      { id: "cacao", name: "cocoa", slug: "cacao" },
      { id: "aromes", name: "flavorings", slug: "aromes" },
      { id: "colorants", name: "colorants", slug: "colorants" },
      { id: "decorations-patisserie", name: "pastry decorations", slug: "decorations-patisserie" },
      { id: "ustensiles-patisserie", name: "pastry utensils", slug: "ustensiles-patisserie" }
    ]},
    { id: "produits-cuisine", name: "Cooking Essentials", slug: "produits-cuisine", subcategories: [
      { id: "sauces-soja", name: "soy sauces", slug: "sauces-soja" },
      { id: "sauces-piquantes", name: "hot sauces", slug: "sauces-piquantes" },
      { id: "ketchup", name: "ketchup", slug: "ketchup" },
      { id: "moutarde-cuisine", name: "mustard", slug: "moutarde-cuisine" },
      { id: "marinade", name: "marinade", slug: "marinade" },
      { id: "bouillons-cuisine", name: "broths", slug: "bouillons-cuisine" },
      { id: "aides-de-cuisine", name: "cooking aids", slug: "aides-de-cuisine" }
    ]},
    { id: "gourmandises-douceurs", name: "Sweets & Delicacies", slug: "gourmandises-douceurs", subcategories: [
      { id: "chocolats", name: "chocolates", slug: "chocolats" },
      { id: "bonbons", name: "candies", slug: "bonbons" },
      { id: "dragees", name: "sugared almonds", slug: "dragees" },
      { id: "fruits-confits", name: "candied fruits", slug: "fruits-confits" },
      { id: "patisserie-fine", name: "fine pastry", slug: "patisserie-fine" },
      { id: "coffrets-cadeaux", name: "gift boxes", slug: "coffrets-cadeaux" }
    ]},
    { id: "produits-bebe", name: "Baby Food", slug: "produits-bebe", subcategories: [
      { id: "lait-infantile", name: "infant milk", slug: "lait-infantile" },
      { id: "petits-pots", name: "baby jars", slug: "petits-pots" },
      { id: "compotes", name: "compotes", slug: "compotes" },
      { id: "biscuits-bebe", name: "baby biscuits", slug: "biscuits-bebe" },
      { id: "cereales-bebe", name: "baby cereals", slug: "cereales-bebe" },
      { id: "yaourts-bebe", name: "baby yogurts", slug: "yaourts-bebe" }
    ]},
    { id: "eaux-hydratation", name: "Water & Hydration", slug: "eaux-hydratation", subcategories: [
      { id: "eau-plate", name: "still water", slug: "eau-plate" },
      { id: "eau-gazeuse", name: "sparkling water", slug: "eau-gazeuse" },
      { id: "eau-aromatisee", name: "flavored water", slug: "eau-aromatisee" },
      { id: "packs-famille", name: "family packs", slug: "packs-famille" },
      { id: "bouteilles-sport", name: "sport bottles", slug: "bouteilles-sport" }
    ]},
    { id: "accessoires-culinaires", name: "Kitchen Accessories", slug: "accessoires-culinaires", subcategories: [
      { id: "boites-alimentaire", name: "food boxes", slug: "boites-alimentaire" },
      { id: "contenants-hermetiques", name: "airtight containers", slug: "contenants-hermetiques" },
      { id: "sacs-congelation", name: "freezer bags", slug: "sacs-congelation" },
      { id: "accessoires-de-cuisine", name: "kitchen accessories", slug: "accessoires-de-cuisine" }
    ]}
  ]
};