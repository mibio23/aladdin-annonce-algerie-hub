import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Utensils } from "lucide-react";

export const gastronomieAlimentationIt: MenuCategory = {
  id: "gastronomie-alimentation",
  name: "Gastronomia e Alimentazione",
  slug: "gastronomie-alimentation",
  icon: <Utensils className="w-4 h-4" />,
  subcategories: [
    { id: "epicerie-salee", name: "Dispensa salata", slug: "epicerie-salee", subcategories: [
      { id: "pates", name: "pasta", slug: "pates" },
      { id: "riz", name: "riso", slug: "riz" },
      { id: "semoule", name: "semola", slug: "semoule" },
      { id: "couscous", name: "couscous", slug: "couscous" },
      { id: "lentilles", name: "lenticchie", slug: "lentilles" },
      { id: "pois-chiches", name: "ceci", slug: "pois-chiches" },
      { id: "haricots-secs", name: "fagioli secchi", slug: "haricots-secs" },
      { id: "farines", name: "farine", slug: "farines" },
      { id: "boulghour", name: "bulgur", slug: "boulghour" },
      { id: "cereales", name: "cereali", slug: "cereales" },
      { id: "conserves-salees", name: "conserve salate", slug: "conserves-salees" },
      { id: "sauces-salees", name: "salse salate", slug: "sauces-salees" }
    ]},
    { id: "epicerie-sucree", name: "Dispensa dolce", slug: "epicerie-sucree", subcategories: [
      { id: "sucre", name: "zucchero", slug: "sucre" },
      { id: "miel", name: "miele", slug: "miel" },
      { id: "confitures", name: "marmellate", slug: "confitures" },
      { id: "pate-a-tartiner", name: "creme spalmabili", slug: "pate-a-tartiner" },
      { id: "biscuits", name: "biscotti", slug: "biscuits" },
      { id: "gateaux", name: "torte", slug: "gateaux" },
      { id: "cereales-sucrees", name: "cereali dolci", slug: "cereales-sucrees" },
      { id: "sirops", name: "sciroppi", slug: "sirops" },
      { id: "desserts-instantanes", name: "dessert istantanei", slug: "desserts-instantanes" }
    ]},
    { id: "conserves-boites", name: "Conserve e prodotti in scatola", slug: "conserves-boites", subcategories: [
      { id: "thon", name: "tonno", slug: "thon" },
      { id: "sardines", name: "sardine", slug: "sardines" },
      { id: "maquereaux", name: "sgombro", slug: "maquereaux" },
      { id: "mais", name: "mais", slug: "mais" },
      { id: "petits-pois", name: "piselli", slug: "petits-pois" },
      { id: "haricots", name: "fagioli", slug: "haricots" },
      { id: "tomates-pelees", name: "pomodori pelati", slug: "tomates-pelees" },
      { id: "sauces-conserve", name: "salse in scatola", slug: "sauces-conserve" },
      { id: "plats-prepares", name: "piatti pronti", slug: "plats-prepares" }
    ]},
    { id: "produits-frais", name: "Prodotti freschi", slug: "produits-frais", subcategories: [
      { id: "yaourts", name: "yogurt", slug: "yaourts" },
      { id: "fromages-frais", name: "formaggi freschi", slug: "fromages-frais" },
      { id: "lait", name: "latte", slug: "lait" },
      { id: "beurre", name: "burro", slug: "beurre" },
      { id: "creme", name: "panna", slug: "creme" },
      { id: "oeufs", name: "uova", slug: "oeufs" },
      { id: "jus-frais", name: "succhi freschi", slug: "jus-frais" },
      { id: "charcuterie-frais", name: "salumi", slug: "charcuterie-frais" },
      { id: "produits-traiteurs", name: "prodotti gastronomia", slug: "produits-traiteurs" }
    ]},
    { id: "produits-surgeles", name: "Surgelati", slug: "produits-surgeles", subcategories: [
      { id: "legumes-surgeles", name: "verdure surgelate", slug: "legumes-surgeles" },
      { id: "viandes-surgeles", name: "carni", slug: "viandes-surgeles" },
      { id: "poissons-surgeles", name: "pesce", slug: "poissons-surgeles" },
      { id: "fruits-surgeles", name: "frutta", slug: "fruits-surgeles" },
      { id: "pizzas-surgeles", name: "pizze", slug: "pizzas-surgeles" },
      { id: "nuggets", name: "nuggets", slug: "nuggets" },
      { id: "patisseries-surgeles", name: "pasticceria", slug: "patisseries-surgeles" },
      { id: "glaces", name: "gelati", slug: "glaces" }
    ]},
    { id: "viandes-volailles", name: "Carni e pollame", slug: "viandes-volailles", subcategories: [
      { id: "viande-rouge", name: "carne rossa", slug: "viande-rouge" },
      { id: "viande-blanche", name: "carne bianca", slug: "viande-blanche" },
      { id: "volaille", name: "pollame", slug: "volaille" },
      { id: "dinde", name: "tacchino", slug: "dinde" },
      { id: "merguez", name: "merguez", slug: "merguez" },
      { id: "charcuterie", name: "salumi", slug: "charcuterie" },
      { id: "abats", name: "frattaglie", slug: "abats" },
      { id: "viandes-marinees", name: "carni marinate", slug: "viandes-marinees" }
    ]},
    { id: "poissons-fruits-de-mer", name: "Pesce e frutti di mare", slug: "poissons-fruits-de-mer", subcategories: [
      { id: "poissons-frais", name: "pesce fresco", slug: "poissons-frais" },
      { id: "poissons-congeles", name: "pesce congelato", slug: "poissons-congeles" },
      { id: "crustaces", name: "crostacei", slug: "crustaces" },
      { id: "mollusques", name: "molluschi", slug: "mollusques" },
      { id: "fruits-de-mer-prepares", name: "frutti di mare preparati", slug: "fruits-de-mer-prepares" },
      { id: "saumon", name: "salmone", slug: "saumon" },
      { id: "thon-poisson", name: "tonno", slug: "thon-poisson" }
    ]},
    { id: "fruits-legumes", name: "Frutta e verdura", slug: "fruits-legumes", subcategories: [
      { id: "fruits-frais", name: "frutta fresca", slug: "fruits-frais" },
      { id: "legumes-frais", name: "verdura fresca", slug: "legumes-frais" },
      { id: "fruits-secs", name: "frutta secca", slug: "fruits-secs" },
      { id: "fruits-deshydrates", name: "frutta disidratata", slug: "fruits-deshydrates" },
      { id: "legumes-bio", name: "verdure biologiche", slug: "legumes-bio" },
      { id: "produits-de-saison", name: "prodotti di stagione", slug: "produits-de-saison" }
    ]},
    { id: "boulangerie-patisserie", name: "Panetteria e pasticceria", slug: "boulangerie-patisserie", subcategories: [
      { id: "pains", name: "pani", slug: "pains" },
      { id: "baguettes", name: "baguettes", slug: "baguettes" },
      { id: "croissants", name: "croissants", slug: "croissants" },
      { id: "brioches", name: "brioche", slug: "brioches" },
      { id: "patisseries-locales", name: "pasticceria locale", slug: "patisseries-locales" },
      { id: "gateaux-patisserie", name: "torte", slug: "gateaux-patisserie" },
      { id: "biscuits-artisanaux", name: "biscotti artigianali", slug: "biscuits-artisanaux" },
      { id: "viennoiseries", name: "viennoiserie", slug: "viennoiseries" }
    ]},
    { id: "produits-laitiers", name: "Prodotti lattiero-caseari", slug: "produits-laitiers", subcategories: [
      { id: "lait-produit", name: "latte", slug: "lait-produit" },
      { id: "fromage", name: "formaggio", slug: "fromage" },
      { id: "yaourt", name: "yogurt", slug: "yaourt" },
      { id: "creme-fraiche", name: "crème fraîche", slug: "creme-fraiche" },
      { id: "beurre-produit", name: "burro", slug: "beurre-produit" },
      { id: "fromages-locaux", name: "formaggi locali", slug: "fromages-locaux" },
      { id: "fromages-europeens", name: "formaggi europei", slug: "fromages-europeens" }
    ]},
    { id: "huiles-condiments", name: "Oli e condimenti", slug: "huiles-condiments", subcategories: [
      { id: "huile-olive", name: "olio d’oliva", slug: "huile-olive" },
      { id: "huile-tournesol", name: "olio di girasole", slug: "huile-tournesol" },
      { id: "vinaigre", name: "aceto", slug: "vinaigre" },
      { id: "moutarde", name: "senape", slug: "moutarde" },
      { id: "mayonnaise", name: "maionese", slug: "mayonnaise" },
      { id: "sauces-condiments", name: "salse", slug: "sauces-condiments" },
      { id: "epices-condiments", name: "spezie", slug: "epices-condiments" },
      { id: "herbes", name: "erbe", slug: "herbes" },
      { id: "aromates", name: "aromi", slug: "aromates" },
      { id: "bouillons", name: "brodi", slug: "bouillons" }
    ]},
    { id: "epices-assaisonnements", name: "Spezie e condimenti", slug: "epices-assaisonnements", subcategories: [
      { id: "sel", name: "sale", slug: "sel" },
      { id: "poivre", name: "pepe", slug: "poivre" },
      { id: "paprika", name: "paprika", slug: "paprika" },
      { id: "cumin", name: "cumino", slug: "cumin" },
      { id: "curcuma", name: "curcuma", slug: "curcuma" },
      { id: "epices-orientales", name: "spezie orientali", slug: "epices-orientales" },
      { id: "melanges-prets", name: "miscele pronte", slug: "melanges-prets" },
      { id: "assaisonnements-barbecue", name: "condimenti barbecue", slug: "assaisonnements-barbecue" }
    ]},
    { id: "boissons", name: "Bevande", slug: "boissons", subcategories: [
      { id: "eaux-minerales", name: "acqua minerale", slug: "eaux-minerales" },
      { id: "boissons-gazeuses", name: "bibite gassate", slug: "boissons-gazeuses" },
      { id: "jus", name: "succhi", slug: "jus" },
      { id: "boissons-energetiques", name: "bevande energetiche", slug: "boissons-energetiques" },
      { id: "thes-glaces", name: "tè freddi", slug: "thes-glaces" },
      { id: "infusions-prêtes", name: "infusi pronti da bere", slug: "infusions-pretes-a-boire" }
    ]},
    { id: "cafe-the", name: "Caffè e tè", slug: "cafe-the", subcategories: [
      { id: "cafe-moulu", name: "caffè macinato", slug: "cafe-moulu" },
      { id: "cafe-en-grains", name: "chicchi di caffè", slug: "cafe-en-grains" },
      { id: "capsules", name: "capsules", slug: "capsules" },
      { id: "cafe-instantane", name: "caffè solubile", slug: "cafe-instantane" },
      { id: "thes-verts", name: "tè verdi", slug: "thes-verts" },
      { id: "thes-noirs", name: "tè neri", slug: "thes-noirs" },
      { id: "infusions", name: "infusi", slug: "infusions" },
      { id: "tisanes", name: "tisane", slug: "tisanes" },
      { id: "accessoires-cafe-the", name: "accessori per caffè/tè", slug: "accessoires-cafe-the" }
    ]},
    { id: "produits-bio-naturels", name: "Bio e naturali", slug: "produits-bio-naturels", subcategories: [
      { id: "aliments-bio", name: "alimenti biologici", slug: "aliments-bio" },
      { id: "graines", name: "semi", slug: "graines" },
      { id: "superfoods", name: "superfoods", slug: "superfoods" },
      { id: "farines-bio", name: "farine biologiche", slug: "farines-bio" },
      { id: "huiles-naturelles", name: "oli naturali", slug: "huiles-naturelles" },
      { id: "produits-sans-additifs", name: "prodotti senza additivi", slug: "produits-sans-additifs" }
    ]},
    { id: "produits-orientaux-traditionnels", name: "Orientali e tradizionali", slug: "produits-orientaux-traditionnels", subcategories: [
      { id: "patisseries-orientales", name: "pasticceria orientale", slug: "patisseries-orientales" },
      { id: "dattes", name: "datteri", slug: "dattes" },
      { id: "semoule-speciale", name: "semola speciale", slug: "semoule-speciale" },
      { id: "epices-orientales-trad", name: "spezie orientali", slug: "epices-orientales-trad" },
      { id: "couscous-artisanal", name: "couscous artigianale", slug: "couscous-artisanal" },
      { id: "produits-ramadan", name: "prodotti Ramadan", slug: "produits-ramadan" }
    ]},
    { id: "snacks-aperitifs", name: "Snack e antipasti", slug: "snacks-aperitifs", subcategories: [
      { id: "chips", name: "chips", slug: "chips" },
      { id: "biscuits-sales", name: "biscotti salati", slug: "biscuits-sales" },
      { id: "cacahuetes", name: "arachidi", slug: "cacahuetes" },
      { id: "amandes", name: "mandorle", slug: "amandes" },
      { id: "pistaches", name: "pistacchi", slug: "pistaches" },
      { id: "noix-de-cajou", name: "anacardi", slug: "noix-de-cajou" },
      { id: "popcorn", name: "popcorn", slug: "popcorn" },
      { id: "olives-assaisonnees", name: "olive condite", slug: "olives-assaisonnees" }
    ]},
    { id: "cuisine-internationale", name: "Prodotti per cucina internazionale", slug: "cuisine-internationale", subcategories: [
      { id: "produits-asiatiques", name: "prodotti asiatici", slug: "produits-asiatiques" },
      { id: "produits-turcs", name: "prodotti turchi", slug: "produits-turcs" },
      { id: "produits-indiens", name: "prodotti indiani", slug: "produits-indiens" },
      { id: "sauces-internationales", name: "salse internazionali", slug: "sauces-internationales" },
      { id: "nouilles-asiatiques", name: "noodles asiatici", slug: "nouilles-asiatiques" }
    ]},
    { id: "produits-halal", name: "Prodotti halal", slug: "produits-halal", subcategories: [
      { id: "charcuterie-halal", name: "salumi halal", slug: "charcuterie-halal" },
      { id: "viandes-halal", name: "carni halal", slug: "viandes-halal" },
      { id: "snacks-halal", name: "snack halal", slug: "snacks-halal" },
      { id: "plats-prepares-halal", name: "piatti pronti halal", slug: "plats-prepares-halal" },
      { id: "surgeles-halal", name: "surgelati halal", slug: "surgeles-halal" }
    ]},
    { id: "nutrition-sportive", name: "Nutrizione sportiva", slug: "nutrition-sportive", subcategories: [
      { id: "proteines", name: "proteine", slug: "proteines" },
      { id: "gainers", name: "gainer", slug: "gainers" },
      { id: "creatine", name: "creatina", slug: "creatine" },
      { id: "aminoacides", name: "aminoacidi", slug: "aminoacides" },
      { id: "bars-protein", name: "barrette proteiche", slug: "bars-proteinees" },
      { id: "boissons-isotoniques", name: "bevande isotoniche", slug: "boissons-isotoniques" },
      { id: "meal-replacement", name: "sostitutivi del pasto", slug: "meal-replacement" }
    ]},
    { id: "dietetique-sante", name: "Dietetica e salute", slug: "dietetique-sante", subcategories: [
      { id: "sans-sucre", name: "prodotti senza zucchero", slug: "sans-sucre" },
      { id: "sans-gluten", name: "prodotti senza glutine", slug: "sans-gluten" },
      { id: "sans-lactose", name: "prodotti senza lattosio", slug: "sans-lactose" },
      { id: "faible-calories", name: "alimenti a basso contenuto calorico", slug: "faible-calories" },
      { id: "thes-detox", name: "tè detox", slug: "thes-detox" },
      { id: "complements-alimentaires", name: "integratori alimentari", slug: "complements-alimentaires" }
    ]},
    { id: "produits-patisserie", name: "Essenziali per pasticceria", slug: "produits-patisserie", subcategories: [
      { id: "chocolat", name: "cioccolato", slug: "chocolat" },
      { id: "levure", name: "lievito", slug: "levure" },
      { id: "cacao", name: "cacao", slug: "cacao" },
      { id: "aromes", name: "aromi", slug: "aromes" },
      { id: "colorants", name: "coloranti", slug: "colorants" },
      { id: "decorations-patisserie", name: "decorazioni per pasticceria", slug: "decorations-patisserie" },
      { id: "ustensiles-patisserie", name: "utensili per pasticceria", slug: "ustensiles-patisserie" }
    ]},
    { id: "produits-cuisine", name: "Essenziali per cucina", slug: "produits-cuisine", subcategories: [
      { id: "sauces-soja", name: "salse di soia", slug: "sauces-soja" },
      { id: "sauces-piquantes", name: "salse piccanti", slug: "sauces-piquantes" },
      { id: "ketchup", name: "ketchup", slug: "ketchup" },
      { id: "moutarde-cuisine", name: "senape", slug: "moutarde-cuisine" },
      { id: "marinade", name: "marinature", slug: "marinade" },
      { id: "bouillons-cuisine", name: "brodi", slug: "bouillons-cuisine" },
      { id: "aides-de-cuisine", name: "aiuti di cucina", slug: "aides-de-cuisine" }
    ]},
    { id: "gourmandises-douceurs", name: "Golosità e dolci", slug: "gourmandises-douceurs", subcategories: [
      { id: "chocolats", name: "cioccolatini", slug: "chocolats" },
      { id: "bonbons", name: "caramelle", slug: "bonbons" },
      { id: "dragees", name: "confetti", slug: "dragees" },
      { id: "fruits-confits", name: "frutta candita", slug: "fruits-confits" },
      { id: "patisserie-fine", name: "pasticceria fine", slug: "patisserie-fine" },
      { id: "coffrets-cadeaux", name: "cofanetti regalo", slug: "coffrets-cadeaux" }
    ]},
    { id: "produits-bebe", name: "Alimentazione per bebè", slug: "produits-bebe", subcategories: [
      { id: "lait-infantile", name: "latte per neonati", slug: "lait-infantile" },
      { id: "petits-pots", name: "omogeneizzati", slug: "petits-pots" },
      { id: "compotes", name: "composte", slug: "compotes" },
      { id: "biscuits-bebe", name: "biscotti per bebè", slug: "biscuits-bebe" },
      { id: "cereales-bebe", name: "cereali per bebè", slug: "cereales-bebe" },
      { id: "yaourts-bebe", name: "yogurt per bebè", slug: "yaourts-bebe" }
    ]},
    { id: "eaux-hydratation", name: "Acqua e idratazione", slug: "eaux-hydratation", subcategories: [
      { id: "eau-plate", name: "acqua naturale", slug: "eau-plate" },
      { id: "eau-gazeuse", name: "acqua frizzante", slug: "eau-gazeuse" },
      { id: "eau-aromatisee", name: "acqua aromatizzata", slug: "eau-aromatisee" },
      { id: "packs-famille", name: "confezioni famiglia", slug: "packs-famille" },
      { id: "bouteilles-sport", name: "bottiglie sportive", slug: "bouteilles-sport" }
    ]},
    { id: "accessoires-culinaires", name: "Accessori cucina", slug: "accessoires-culinaires", subcategories: [
      { id: "boites-alimentaire", name: "contenitori per alimenti", slug: "boites-alimentaire" },
      { id: "contenants-hermetiques", name: "contenitori ermetici", slug: "contenants-hermetiques" },
      { id: "sacs-congelation", name: "sacchetti per congelazione", slug: "sacs-congelation" },
      { id: "accessoires-de-cuisine", name: "accessori da cucina", slug: "accessoires-de-cuisine" }
    ]}
  ]
};