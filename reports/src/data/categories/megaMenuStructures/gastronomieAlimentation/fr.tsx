import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Utensils } from "lucide-react";

export const gastronomieAlimentationFr: MenuCategory = {
  id: "gastronomie-alimentation",
  name: "Gastronomie & Alimentation",
  slug: "gastronomie-alimentation",
  icon: <Utensils className="w-4 h-4" />,
  subcategories: [
    {
      id: "epicerie-salee",
      name: "Épicerie salée",
      slug: "epicerie-salee",
      subcategories: [
        { id: "pates", name: "pâtes", slug: "pates" },
        { id: "riz", name: "riz", slug: "riz" },
        { id: "semoule", name: "semoule", slug: "semoule" },
        { id: "couscous", name: "couscous", slug: "couscous" },
        { id: "lentilles", name: "lentilles", slug: "lentilles" },
        { id: "pois-chiches", name: "pois chiches", slug: "pois-chiches" },
        { id: "haricots-secs", name: "haricots secs", slug: "haricots-secs" },
        { id: "farines", name: "farines", slug: "farines" },
        { id: "boulghour", name: "boulghour", slug: "boulghour" },
        { id: "cereales", name: "céréales", slug: "cereales" },
        { id: "conserves-salees", name: "conserves salées", slug: "conserves-salees" },
        { id: "sauces-salees", name: "sauces salées", slug: "sauces-salees" }
      ]
    },
    {
      id: "epicerie-sucree",
      name: "Épicerie sucrée",
      slug: "epicerie-sucree",
      subcategories: [
        { id: "sucre", name: "sucre", slug: "sucre" },
        { id: "miel", name: "miel", slug: "miel" },
        { id: "confitures", name: "confitures", slug: "confitures" },
        { id: "pate-a-tartiner", name: "pâte à tartiner", slug: "pate-a-tartiner" },
        { id: "biscuits", name: "biscuits", slug: "biscuits" },
        { id: "gateaux", name: "gâteaux", slug: "gateaux" },
        { id: "cereales-sucrees", name: "céréales sucrées", slug: "cereales-sucrees" },
        { id: "sirops", name: "sirops", slug: "sirops" },
        { id: "desserts-instantanes", name: "desserts instantanés", slug: "desserts-instantanes" }
      ]
    },
    {
      id: "conserves-boites",
      name: "Conserves & produits en boîte",
      slug: "conserves-boites",
      subcategories: [
        { id: "thon", name: "thon", slug: "thon" },
        { id: "sardines", name: "sardines", slug: "sardines" },
        { id: "maquereaux", name: "maquereaux", slug: "maquereaux" },
        { id: "mais", name: "maïs", slug: "mais" },
        { id: "petits-pois", name: "petits pois", slug: "petits-pois" },
        { id: "haricots", name: "haricots", slug: "haricots" },
        { id: "tomates-pelees", name: "tomates pelées", slug: "tomates-pelees" },
        { id: "sauces-conserve", name: "sauces en conserve", slug: "sauces-conserve" },
        { id: "plats-prepares", name: "plats préparés", slug: "plats-prepares" }
      ]
    },
    {
      id: "produits-frais",
      name: "Produits frais",
      slug: "produits-frais",
      subcategories: [
        { id: "yaourts", name: "yaourts", slug: "yaourts" },
        { id: "fromages-frais", name: "fromages frais", slug: "fromages-frais" },
        { id: "lait", name: "lait", slug: "lait" },
        { id: "beurre", name: "beurre", slug: "beurre" },
        { id: "creme", name: "crème", slug: "creme" },
        { id: "oeufs", name: "œufs", slug: "oeufs" },
        { id: "jus-frais", name: "jus frais", slug: "jus-frais" },
        { id: "charcuterie-frais", name: "charcuterie", slug: "charcuterie-frais" },
        { id: "produits-traiteurs", name: "produits traiteurs", slug: "produits-traiteurs" }
      ]
    },
    {
      id: "produits-surgeles",
      name: "Produits surgelés",
      slug: "produits-surgeles",
      subcategories: [
        { id: "legumes-surgeles", name: "légumes surgelés", slug: "legumes-surgeles" },
        { id: "viandes-surgeles", name: "viandes", slug: "viandes-surgeles" },
        { id: "poissons-surgeles", name: "poissons", slug: "poissons-surgeles" },
        { id: "fruits-surgeles", name: "fruits", slug: "fruits-surgeles" },
        { id: "pizzas-surgeles", name: "pizzas", slug: "pizzas-surgeles" },
        { id: "nuggets", name: "nuggets", slug: "nuggets" },
        { id: "patisseries-surgeles", name: "pâtisseries", slug: "patisseries-surgeles" },
        { id: "glaces", name: "glaces", slug: "glaces" }
      ]
    },
    {
      id: "viandes-volailles",
      name: "Viandes & volailles",
      slug: "viandes-volailles",
      subcategories: [
        { id: "viande-rouge", name: "viande rouge", slug: "viande-rouge" },
        { id: "viande-blanche", name: "viande blanche", slug: "viande-blanche" },
        { id: "volaille", name: "volaille", slug: "volaille" },
        { id: "dinde", name: "dinde", slug: "dinde" },
        { id: "merguez", name: "merguez", slug: "merguez" },
        { id: "charcuterie", name: "charcuterie", slug: "charcuterie" },
        { id: "abats", name: "abats", slug: "abats" },
        { id: "viandes-marinees", name: "viandes marinées", slug: "viandes-marinees" }
      ]
    },
    {
      id: "poissons-fruits-de-mer",
      name: "Poissons & fruits de mer",
      slug: "poissons-fruits-de-mer",
      subcategories: [
        { id: "poissons-frais", name: "poissons frais", slug: "poissons-frais" },
        { id: "poissons-congeles", name: "poissons congelés", slug: "poissons-congeles" },
        { id: "crustaces", name: "crustacés", slug: "crustaces" },
        { id: "mollusques", name: "mollusques", slug: "mollusques" },
        { id: "fruits-de-mer-prepares", name: "fruits de mer préparés", slug: "fruits-de-mer-prepares" },
        { id: "saumon", name: "saumon", slug: "saumon" },
        { id: "thon-poisson", name: "thon", slug: "thon-poisson" }
      ]
    },
    {
      id: "fruits-legumes",
      name: "Fruits & légumes",
      slug: "fruits-legumes",
      subcategories: [
        { id: "fruits-frais", name: "fruits frais", slug: "fruits-frais" },
        { id: "legumes-frais", name: "légumes frais", slug: "legumes-frais" },
        { id: "fruits-secs", name: "fruits secs", slug: "fruits-secs" },
        { id: "fruits-deshydrates", name: "fruits déshydratés", slug: "fruits-deshydrates" },
        { id: "legumes-bio", name: "légumes biologiques", slug: "legumes-bio" },
        { id: "produits-de-saison", name: "produits de saison", slug: "produits-de-saison" }
      ]
    },
    {
      id: "boulangerie-patisserie",
      name: "Boulangerie & pâtisserie",
      slug: "boulangerie-patisserie",
      subcategories: [
        { id: "pains", name: "pains", slug: "pains" },
        { id: "baguettes", name: "baguettes", slug: "baguettes" },
        { id: "croissants", name: "croissants", slug: "croissants" },
        { id: "brioches", name: "brioches", slug: "brioches" },
        { id: "patisseries-locales", name: "pâtisseries locales", slug: "patisseries-locales" },
        { id: "gateaux-patisserie", name: "gâteaux", slug: "gateaux-patisserie" },
        { id: "biscuits-artisanaux", name: "biscuits artisanaux", slug: "biscuits-artisanaux" },
        { id: "viennoiseries", name: "viennoiseries", slug: "viennoiseries" }
      ]
    },
    {
      id: "produits-laitiers",
      name: "Produits laitiers",
      slug: "produits-laitiers",
      subcategories: [
        { id: "lait-produit", name: "lait", slug: "lait-produit" },
        { id: "fromage", name: "fromage", slug: "fromage" },
        { id: "yaourt", name: "yaourt", slug: "yaourt" },
        { id: "creme-fraiche", name: "crème fraîche", slug: "creme-fraiche" },
        { id: "beurre-produit", name: "beurre", slug: "beurre-produit" },
        { id: "fromages-locaux", name: "fromages locaux", slug: "fromages-locaux" },
        { id: "fromages-europeens", name: "fromages européens", slug: "fromages-europeens" }
      ]
    },
    {
      id: "huiles-condiments",
      name: "Huiles & condiments",
      slug: "huiles-condiments",
      subcategories: [
        { id: "huile-olive", name: "huile d’olive", slug: "huile-olive" },
        { id: "huile-tournesol", name: "huile de tournesol", slug: "huile-tournesol" },
        { id: "vinaigre", name: "vinaigre", slug: "vinaigre" },
        { id: "moutarde", name: "moutarde", slug: "moutarde" },
        { id: "mayonnaise", name: "mayonnaise", slug: "mayonnaise" },
        { id: "sauces-condiments", name: "sauces", slug: "sauces-condiments" },
        { id: "epices-condiments", name: "épices", slug: "epices-condiments" },
        { id: "herbes", name: "herbes", slug: "herbes" },
        { id: "aromates", name: "aromates", slug: "aromates" },
        { id: "bouillons", name: "bouillons", slug: "bouillons" }
      ]
    },
    {
      id: "epices-assaisonnements",
      name: "Épices & assaisonnements",
      slug: "epices-assaisonnements",
      subcategories: [
        { id: "sel", name: "sel", slug: "sel" },
        { id: "poivre", name: "poivre", slug: "poivre" },
        { id: "paprika", name: "paprika", slug: "paprika" },
        { id: "cumin", name: "cumin", slug: "cumin" },
        { id: "curcuma", name: "curcuma", slug: "curcuma" },
        { id: "epices-orientales", name: "épices orientales", slug: "epices-orientales" },
        { id: "melanges-prets", name: "mélanges prêts", slug: "melanges-prets" },
        { id: "assaisonnements-barbecue", name: "assaisonnements barbecue", slug: "assaisonnements-barbecue" }
      ]
    },
    {
      id: "boissons",
      name: "Boissons",
      slug: "boissons",
      subcategories: [
        { id: "eaux-minerales", name: "eaux minérales", slug: "eaux-minerales" },
        { id: "boissons-gazeuses", name: "boissons gazeuses", slug: "boissons-gazeuses" },
        { id: "jus", name: "jus", slug: "jus" },
        { id: "boissons-energetiques", name: "boissons énergétiques", slug: "boissons-energetiques" },
        { id: "thes-glaces", name: "thés glacés", slug: "thes-glaces" },
        { id: "infusions-prêtes", name: "infusions prêtes à boire", slug: "infusions-pretes-a-boire" }
      ]
    },
    {
      id: "cafe-the",
      name: "Café & thé",
      slug: "cafe-the",
      subcategories: [
        { id: "cafe-moulu", name: "café moulu", slug: "cafe-moulu" },
        { id: "cafe-en-grains", name: "café en grains", slug: "cafe-en-grains" },
        { id: "capsules", name: "capsules", slug: "capsules" },
        { id: "cafe-instantane", name: "café instantané", slug: "cafe-instantane" },
        { id: "thes-verts", name: "thés verts", slug: "thes-verts" },
        { id: "thes-noirs", name: "thés noirs", slug: "thes-noirs" },
        { id: "infusions", name: "infusions", slug: "infusions" },
        { id: "tisanes", name: "tisanes", slug: "tisanes" },
        { id: "accessoires-cafe-the", name: "accessoires café/thé", slug: "accessoires-cafe-the" }
      ]
    },
    {
      id: "produits-bio-naturels",
      name: "Produits bio & naturels",
      slug: "produits-bio-naturels",
      subcategories: [
        { id: "aliments-bio", name: "aliments bio", slug: "aliments-bio" },
        { id: "graines", name: "graines", slug: "graines" },
        { id: "superfoods", name: "superfoods", slug: "superfoods" },
        { id: "farines-bio", name: "farines bio", slug: "farines-bio" },
        { id: "huiles-naturelles", name: "huiles naturelles", slug: "huiles-naturelles" },
        { id: "produits-sans-additifs", name: "produits naturels sans additifs", slug: "produits-sans-additifs" }
      ]
    },
    {
      id: "produits-orientaux-traditionnels",
      name: "Produits orientaux & traditionnels",
      slug: "produits-orientaux-traditionnels",
      subcategories: [
        { id: "patisseries-orientales", name: "pâtisseries orientales", slug: "patisseries-orientales" },
        { id: "dattes", name: "dattes", slug: "dattes" },
        { id: "semoule-speciale", name: "semoule spéciale", slug: "semoule-speciale" },
        { id: "epices-orientales-trad", name: "épices orientales", slug: "epices-orientales-trad" },
        { id: "couscous-artisanal", name: "couscous artisanal", slug: "couscous-artisanal" },
        { id: "produits-ramadan", name: "produits Ramadan", slug: "produits-ramadan" }
      ]
    },
    {
      id: "snacks-aperitifs",
      name: "Snacks & apéritifs",
      slug: "snacks-aperitifs",
      subcategories: [
        { id: "chips", name: "chips", slug: "chips" },
        { id: "biscuits-sales", name: "biscuits salés", slug: "biscuits-sales" },
        { id: "cacahuetes", name: "cacahuètes", slug: "cacahuetes" },
        { id: "amandes", name: "amandes", slug: "amandes" },
        { id: "pistaches", name: "pistaches", slug: "pistaches" },
        { id: "noix-de-cajou", name: "noix de cajou", slug: "noix-de-cajou" },
        { id: "popcorn", name: "popcorn", slug: "popcorn" },
        { id: "olives-assaisonnees", name: "olives assaisonnées", slug: "olives-assaisonnees" }
      ]
    },
    {
      id: "cuisine-internationale",
      name: "Produits pour cuisine internationale",
      slug: "cuisine-internationale",
      subcategories: [
        { id: "produits-asiatiques", name: "produits asiatiques", slug: "produits-asiatiques" },
        { id: "produits-turcs", name: "produits turcs", slug: "produits-turcs" },
        { id: "produits-indiens", name: "produits indiens", slug: "produits-indiens" },
        { id: "sauces-internationales", name: "sauces internationales", slug: "sauces-internationales" },
        { id: "nouilles-asiatiques", name: "nouilles asiatiques", slug: "nouilles-asiatiques" }
      ]
    },
    {
      id: "produits-halal",
      name: "Produits halal",
      slug: "produits-halal",
      subcategories: [
        { id: "charcuterie-halal", name: "charcuterie halal", slug: "charcuterie-halal" },
        { id: "viandes-halal", name: "viandes halal", slug: "viandes-halal" },
        { id: "snacks-halal", name: "snacks halal", slug: "snacks-halal" },
        { id: "plats-prepares-halal", name: "plats préparés halal", slug: "plats-prepares-halal" },
        { id: "surgeles-halal", name: "surgelés halal", slug: "surgeles-halal" }
      ]
    },
    {
      id: "nutrition-sportive",
      name: "Nutrition sportive",
      slug: "nutrition-sportive",
      subcategories: [
        { id: "proteines", name: "protéines", slug: "proteines" },
        { id: "gainers", name: "gainers", slug: "gainers" },
        { id: "creatine", name: "creatine", slug: "creatine" },
        { id: "aminoacides", name: "aminoacides", slug: "aminoacides" },
        { id: "bars-protein", name: "bars protéinées", slug: "bars-proteinees" },
        { id: "boissons-isotoniques", name: "boissons isotoniques", slug: "boissons-isotoniques" },
        { id: "meal-replacement", name: "meal-replacement", slug: "meal-replacement" }
      ]
    },
    {
      id: "dietetique-sante",
      name: "Diététique & santé",
      slug: "dietetique-sante",
      subcategories: [
        { id: "sans-sucre", name: "produits sans sucre", slug: "sans-sucre" },
        { id: "sans-gluten", name: "produits sans gluten", slug: "sans-gluten" },
        { id: "sans-lactose", name: "produits sans lactose", slug: "sans-lactose" },
        { id: "faible-calories", name: "aliments faibles en calories", slug: "faible-calories" },
        { id: "thes-detox", name: "thés detox", slug: "thes-detox" },
        { id: "complements-alimentaires", name: "compléments alimentaires", slug: "complements-alimentaires" }
      ]
    },
    {
      id: "produits-patisserie",
      name: "Produits pour pâtisserie",
      slug: "produits-patisserie",
      subcategories: [
        { id: "chocolat", name: "chocolat", slug: "chocolat" },
        { id: "levure", name: "levure", slug: "levure" },
        { id: "cacao", name: "cacao", slug: "cacao" },
        { id: "aromes", name: "arômes", slug: "aromes" },
        { id: "colorants", name: "colorants", slug: "colorants" },
        { id: "decorations-patisserie", name: "décorations pâtissières", slug: "decorations-patisserie" },
        { id: "ustensiles-patisserie", name: "ustensiles pâtisserie", slug: "ustensiles-patisserie" }
      ]
    },
    {
      id: "produits-cuisine",
      name: "Produits pour cuisine",
      slug: "produits-cuisine",
      subcategories: [
        { id: "sauces-soja", name: "sauces soja", slug: "sauces-soja" },
        { id: "sauces-piquantes", name: "sauces piquantes", slug: "sauces-piquantes" },
        { id: "ketchup", name: "ketchup", slug: "ketchup" },
        { id: "moutarde-cuisine", name: "moutarde", slug: "moutarde-cuisine" },
        { id: "marinade", name: "marinade", slug: "marinade" },
        { id: "bouillons-cuisine", name: "bouillons", slug: "bouillons-cuisine" },
        { id: "aides-de-cuisine", name: "aides de cuisine", slug: "aides-de-cuisine" }
      ]
    },
    {
      id: "gourmandises-douceurs",
      name: "Gourmandises & douceurs",
      slug: "gourmandises-douceurs",
      subcategories: [
        { id: "chocolats", name: "chocolats", slug: "chocolats" },
        { id: "bonbons", name: "bonbons", slug: "bonbons" },
        { id: "dragees", name: "dragées", slug: "dragees" },
        { id: "fruits-confits", name: "fruits confits", slug: "fruits-confits" },
        { id: "patisserie-fine", name: "pâtisserie fine", slug: "patisserie-fine" },
        { id: "coffrets-cadeaux", name: "coffrets cadeaux", slug: "coffrets-cadeaux" }
      ]
    },
    {
      id: "produits-bebe",
      name: "Produits pour bébé",
      slug: "produits-bebe",
      subcategories: [
        { id: "lait-infantile", name: "lait infantile", slug: "lait-infantile" },
        { id: "petits-pots", name: "petits pots", slug: "petits-pots" },
        { id: "compotes", name: "compotes", slug: "compotes" },
        { id: "biscuits-bebe", name: "biscuits bébé", slug: "biscuits-bebe" },
        { id: "cereales-bebe", name: "céréales bébé", slug: "cereales-bebe" },
        { id: "yaourts-bebe", name: "yaourts bébé", slug: "yaourts-bebe" }
      ]
    },
    {
      id: "eaux-hydratation",
      name: "Eaux & hydratation",
      slug: "eaux-hydratation",
      subcategories: [
        { id: "eau-plate", name: "eau plate", slug: "eau-plate" },
        { id: "eau-gazeuse", name: "eau gazeuse", slug: "eau-gazeuse" },
        { id: "eau-aromatisee", name: "eau aromatisée", slug: "eau-aromatisee" },
        { id: "packs-famille", name: "packs famille", slug: "packs-famille" },
        { id: "bouteilles-sport", name: "bouteilles sport", slug: "bouteilles-sport" }
      ]
    },
    {
      id: "accessoires-culinaires",
      name: "Accessoires culinaires",
      slug: "accessoires-culinaires",
      subcategories: [
        { id: "boites-alimentaire", name: "boîtes alimentaire", slug: "boites-alimentaire" },
        { id: "contenants-hermetiques", name: "contenants hermétiques", slug: "contenants-hermetiques" },
        { id: "sacs-congelation", name: "sacs congélation", slug: "sacs-congelation" },
        { id: "accessoires-de-cuisine", name: "accessoires de cuisine", slug: "accessoires-de-cuisine" }
      ]
    }
  ]
};