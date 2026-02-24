import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Utensils } from "lucide-react";

export const gastronomieAlimentationEs: MenuCategory = {
  id: "gastronomie-alimentation",
  name: "Gastronomía y Alimentación",
  slug: "gastronomie-alimentation",
  icon: <Utensils className="w-4 h-4" />,
  subcategories: [
    { id: "epicerie-salee", name: "Abarrotes salados", slug: "epicerie-salee", subcategories: [
      { id: "pates", name: "pasta", slug: "pates" },
      { id: "riz", name: "arroz", slug: "riz" },
      { id: "semoule", name: "sémola", slug: "semoule" },
      { id: "couscous", name: "couscous", slug: "couscous" },
      { id: "lentilles", name: "lentejas", slug: "lentilles" },
      { id: "pois-chiches", name: "garbanzos", slug: "pois-chiches" },
      { id: "haricots-secs", name: "frijoles secos", slug: "haricots-secs" },
      { id: "farines", name: "harinas", slug: "farines" },
      { id: "boulghour", name: "bulgur", slug: "boulghour" },
      { id: "cereales", name: "cereales", slug: "cereales" },
      { id: "conserves-salees", name: "conservas saladas", slug: "conserves-salees" },
      { id: "sauces-salees", name: "salsas saladas", slug: "sauces-salees" }
    ]},
    { id: "epicerie-sucree", name: "Abarrotes dulces", slug: "epicerie-sucree", subcategories: [
      { id: "sucre", name: "azúcar", slug: "sucre" },
      { id: "miel", name: "miel", slug: "miel" },
      { id: "confitures", name: "mermeladas", slug: "confitures" },
      { id: "pate-a-tartiner", name: "cremas para untar", slug: "pate-a-tartiner" },
      { id: "biscuits", name: "galletas", slug: "biscuits" },
      { id: "gateaux", name: "pasteles", slug: "gateaux" },
      { id: "cereales-sucrees", name: "cereales dulces", slug: "cereales-sucrees" },
      { id: "sirops", name: "jarabes", slug: "sirops" },
      { id: "desserts-instantanes", name: "postres instantáneos", slug: "desserts-instantanes" }
    ]},
    { id: "conserves-boites", name: "Conservas y enlatados", slug: "conserves-boites", subcategories: [
      { id: "thon", name: "atún", slug: "thon" },
      { id: "sardines", name: "sardinas", slug: "sardines" },
      { id: "maquereaux", name: "caballa", slug: "maquereaux" },
      { id: "mais", name: "maíz", slug: "mais" },
      { id: "petits-pois", name: "guisantes", slug: "petits-pois" },
      { id: "haricots", name: "frijoles", slug: "haricots" },
      { id: "tomates-pelees", name: "tomates pelados", slug: "tomates-pelees" },
      { id: "sauces-conserve", name: "salsas en lata", slug: "sauces-conserve" },
      { id: "plats-prepares", name: "platos preparados", slug: "plats-prepares" }
    ]},
    { id: "produits-frais", name: "Productos frescos", slug: "produits-frais", subcategories: [
      { id: "yaourts", name: "yogures", slug: "yaourts" },
      { id: "fromages-frais", name: "quesos frescos", slug: "fromages-frais" },
      { id: "lait", name: "leche", slug: "lait" },
      { id: "beurre", name: "mantequilla", slug: "beurre" },
      { id: "creme", name: "crema", slug: "creme" },
      { id: "oeufs", name: "huevos", slug: "oeufs" },
      { id: "jus-frais", name: "jugos frescos", slug: "jus-frais" },
      { id: "charcuterie-frais", name: "embutidos", slug: "charcuterie-frais" },
      { id: "produits-traiteurs", name: "productos de delicatessen", slug: "produits-traiteurs" }
    ]},
    { id: "produits-surgeles", name: "Congelados", slug: "produits-surgeles", subcategories: [
      { id: "legumes-surgeles", name: "verduras congeladas", slug: "legumes-surgeles" },
      { id: "viandes-surgeles", name: "carnes", slug: "viandes-surgeles" },
      { id: "poissons-surgeles", name: "pescados", slug: "poissons-surgeles" },
      { id: "fruits-surgeles", name: "frutas", slug: "fruits-surgeles" },
      { id: "pizzas-surgeles", name: "pizzas", slug: "pizzas-surgeles" },
      { id: "nuggets", name: "nuggets", slug: "nuggets" },
      { id: "patisseries-surgeles", name: "repostería", slug: "patisseries-surgeles" },
      { id: "glaces", name: "helados", slug: "glaces" }
    ]},
    { id: "viandes-volailles", name: "Carnes y aves", slug: "viandes-volailles", subcategories: [
      { id: "viande-rouge", name: "carne roja", slug: "viande-rouge" },
      { id: "viande-blanche", name: "carne blanca", slug: "viande-blanche" },
      { id: "volaille", name: "aves", slug: "volaille" },
      { id: "dinde", name: "pavo", slug: "dinde" },
      { id: "merguez", name: "merguez", slug: "merguez" },
      { id: "charcuterie", name: "embutidos", slug: "charcuterie" },
      { id: "abats", name: "vísceras", slug: "abats" },
      { id: "viandes-marinees", name: "carnes marinadas", slug: "viandes-marinees" }
    ]},
    { id: "poissons-fruits-de-mer", name: "Pescados y mariscos", slug: "poissons-fruits-de-mer", subcategories: [
      { id: "poissons-frais", name: "pescado fresco", slug: "poissons-frais" },
      { id: "poissons-congeles", name: "pescado congelado", slug: "poissons-congeles" },
      { id: "crustaces", name: "crustáceos", slug: "crustaces" },
      { id: "mollusques", name: "moluscos", slug: "mollusques" },
      { id: "fruits-de-mer-prepares", name: "mariscos preparados", slug: "fruits-de-mer-prepares" },
      { id: "saumon", name: "salmón", slug: "saumon" },
      { id: "thon-poisson", name: "atún", slug: "thon-poisson" }
    ]},
    { id: "fruits-legumes", name: "Frutas y verduras", slug: "fruits-legumes", subcategories: [
      { id: "fruits-frais", name: "frutas frescas", slug: "fruits-frais" },
      { id: "legumes-frais", name: "verduras frescas", slug: "legumes-frais" },
      { id: "fruits-secs", name: "frutos secos", slug: "fruits-secs" },
      { id: "fruits-deshydrates", name: "frutas deshidratadas", slug: "fruits-deshydrates" },
      { id: "legumes-bio", name: "verduras orgánicas", slug: "legumes-bio" },
      { id: "produits-de-saison", name: "productos de temporada", slug: "produits-de-saison" }
    ]},
    { id: "boulangerie-patisserie", name: "Panadería y pastelería", slug: "boulangerie-patisserie", subcategories: [
      { id: "pains", name: "panes", slug: "pains" },
      { id: "baguettes", name: "baguettes", slug: "baguettes" },
      { id: "croissants", name: "croissants", slug: "croissants" },
      { id: "brioches", name: "brioche", slug: "brioches" },
      { id: "patisseries-locales", name: "pastelería local", slug: "patisseries-locales" },
      { id: "gateaux-patisserie", name: "pasteles", slug: "gateaux-patisserie" },
      { id: "biscuits-artisanaux", name: "galletas artesanales", slug: "biscuits-artisanaux" },
      { id: "viennoiseries", name: "bollería", slug: "viennoiseries" }
    ]},
    { id: "produits-laitiers", name: "Lácteos", slug: "produits-laitiers", subcategories: [
      { id: "lait-produit", name: "leche", slug: "lait-produit" },
      { id: "fromage", name: "queso", slug: "fromage" },
      { id: "yaourt", name: "yogur", slug: "yaourt" },
      { id: "creme-fraiche", name: "crema fresca", slug: "creme-fraiche" },
      { id: "beurre-produit", name: "mantequilla", slug: "beurre-produit" },
      { id: "fromages-locaux", name: "quesos locales", slug: "fromages-locaux" },
      { id: "fromages-europeens", name: "quesos europeos", slug: "fromages-europeens" }
    ]},
    { id: "huiles-condiments", name: "Aceites y condimentos", slug: "huiles-condiments", subcategories: [
      { id: "huile-olive", name: "aceite de oliva", slug: "huile-olive" },
      { id: "huile-tournesol", name: "aceite de girasol", slug: "huile-tournesol" },
      { id: "vinaigre", name: "vinagre", slug: "vinaigre" },
      { id: "moutarde", name: "mostaza", slug: "moutarde" },
      { id: "mayonnaise", name: "mayonesa", slug: "mayonnaise" },
      { id: "sauces-condiments", name: "salsas", slug: "sauces-condiments" },
      { id: "epices-condiments", name: "especias", slug: "epices-condiments" },
      { id: "herbes", name: "hierbas", slug: "herbes" },
      { id: "aromates", name: "aromatizantes", slug: "aromates" },
      { id: "bouillons", name: "caldos", slug: "bouillons" }
    ]},
    { id: "epices-assaisonnements", name: "Especias y sazonadores", slug: "epices-assaisonnements", subcategories: [
      { id: "sel", name: "sal", slug: "sel" },
      { id: "poivre", name: "pimienta", slug: "poivre" },
      { id: "paprika", name: "paprika", slug: "paprika" },
      { id: "cumin", name: "comino", slug: "cumin" },
      { id: "curcuma", name: "cúrcuma", slug: "curcuma" },
      { id: "epices-orientales", name: "especias orientales", slug: "epices-orientales" },
      { id: "melanges-prets", name: "mezclas preparadas", slug: "melanges-prets" },
      { id: "assaisonnements-barbecue", name: "sazonadores para barbacoa", slug: "assaisonnements-barbecue" }
    ]},
    { id: "boissons", name: "Bebidas", slug: "boissons", subcategories: [
      { id: "eaux-minerales", name: "agua mineral", slug: "eaux-minerales" },
      { id: "boissons-gazeuses", name: "refrescos", slug: "boissons-gazeuses" },
      { id: "jus", name: "jugos", slug: "jus" },
      { id: "boissons-energetiques", name: "bebidas energéticas", slug: "boissons-energetiques" },
      { id: "thes-glaces", name: "tés helados", slug: "thes-glaces" },
      { id: "infusions-prêtes", name: "infusiones listas para beber", slug: "infusions-pretes-a-boire" }
    ]},
    { id: "cafe-the", name: "Café y té", slug: "cafe-the", subcategories: [
      { id: "cafe-moulu", name: "café molido", slug: "cafe-moulu" },
      { id: "cafe-en-grains", name: "café en grano", slug: "cafe-en-grains" },
      { id: "capsules", name: "capsules", slug: "capsules" },
      { id: "cafe-instantane", name: "café instantáneo", slug: "cafe-instantane" },
      { id: "thes-verts", name: "tés verdes", slug: "thes-verts" },
      { id: "thes-noirs", name: "tés negros", slug: "thes-noirs" },
      { id: "infusions", name: "infusiones", slug: "infusions" },
      { id: "tisanes", name: "tisanas", slug: "tisanes" },
      { id: "accessoires-cafe-the", name: "accesorios de café/té", slug: "accessoires-cafe-the" }
    ]},
    { id: "produits-bio-naturels", name: "Orgánicos y naturales", slug: "produits-bio-naturels", subcategories: [
      { id: "aliments-bio", name: "alimentos orgánicos", slug: "aliments-bio" },
      { id: "graines", name: "semillas", slug: "graines" },
      { id: "superfoods", name: "superfoods", slug: "superfoods" },
      { id: "farines-bio", name: "harinas orgánicas", slug: "farines-bio" },
      { id: "huiles-naturelles", name: "aceites naturales", slug: "huiles-naturelles" },
      { id: "produits-sans-additifs", name: "productos sin aditivos", slug: "produits-sans-additifs" }
    ]},
    { id: "produits-orientaux-traditionnels", name: "Orientales y tradicionales", slug: "produits-orientaux-traditionnels", subcategories: [
      { id: "patisseries-orientales", name: "pastelería oriental", slug: "patisseries-orientales" },
      { id: "dattes", name: "dátiles", slug: "dattes" },
      { id: "semoule-speciale", name: "sémola especial", slug: "semoule-speciale" },
      { id: "epices-orientales-trad", name: "especias orientales", slug: "epices-orientales-trad" },
      { id: "couscous-artisanal", name: "cuscús artesanal", slug: "couscous-artisanal" },
      { id: "produits-ramadan", name: "productos de Ramadán", slug: "produits-ramadan" }
    ]},
    { id: "snacks-aperitifs", name: "Snacks y aperitivos", slug: "snacks-aperitifs", subcategories: [
      { id: "chips", name: "chips", slug: "chips" },
      { id: "biscuits-sales", name: "galletas saladas", slug: "biscuits-sales" },
      { id: "cacahuetes", name: "cacahuetes", slug: "cacahuetes" },
      { id: "amandes", name: "almendras", slug: "amandes" },
      { id: "pistaches", name: "pistachos", slug: "pistaches" },
      { id: "noix-de-cajou", name: "anacardos", slug: "noix-de-cajou" },
      { id: "popcorn", name: "popcorn", slug: "popcorn" },
      { id: "olives-assaisonnees", name: "aceitunas sazonadas", slug: "olives-assaisonnees" }
    ]},
    { id: "cuisine-internationale", name: "Productos para cocina internacional", slug: "cuisine-internationale", subcategories: [
      { id: "produits-asiatiques", name: "productos asiáticos", slug: "produits-asiatiques" },
      { id: "produits-turcs", name: "productos turcos", slug: "produits-turcs" },
      { id: "produits-indiens", name: "productos indios", slug: "produits-indiens" },
      { id: "sauces-internationales", name: "salsas internacionales", slug: "sauces-internationales" },
      { id: "nouilles-asiatiques", name: "fideos asiáticos", slug: "nouilles-asiatiques" }
    ]},
    { id: "produits-halal", name: "Productos halal", slug: "produits-halal", subcategories: [
      { id: "charcuterie-halal", name: "charcutería halal", slug: "charcuterie-halal" },
      { id: "viandes-halal", name: "carnes halal", slug: "viandes-halal" },
      { id: "snacks-halal", name: "snacks halal", slug: "snacks-halal" },
      { id: "plats-prepares-halal", name: "platos preparados halal", slug: "plats-prepares-halal" },
      { id: "surgeles-halal", name: "congelados halal", slug: "surgeles-halal" }
    ]},
    { id: "nutrition-sportive", name: "Nutrición deportiva", slug: "nutrition-sportive", subcategories: [
      { id: "proteines", name: "proteínas", slug: "proteines" },
      { id: "gainers", name: "gainers", slug: "gainers" },
      { id: "creatine", name: "creatina", slug: "creatine" },
      { id: "aminoacides", name: "aminoácidos", slug: "aminoacides" },
      { id: "bars-protein", name: "barras proteicas", slug: "bars-proteinees" },
      { id: "boissons-isotoniques", name: "bebidas isotónicas", slug: "boissons-isotoniques" },
      { id: "meal-replacement", name: "sustitutos de comida", slug: "meal-replacement" }
    ]},
    { id: "dietetique-sante", name: "Dietética y salud", slug: "dietetique-sante", subcategories: [
      { id: "sans-sucre", name: "productos sin azúcar", slug: "sans-sucre" },
      { id: "sans-gluten", name: "productos sin gluten", slug: "sans-gluten" },
      { id: "sans-lactose", name: "productos sin lactosa", slug: "sans-lactose" },
      { id: "faible-calories", name: "alimentos bajos en calorías", slug: "faible-calories" },
      { id: "thes-detox", name: "tés detox", slug: "thes-detox" },
      { id: "complements-alimentaires", name: "suplementos alimenticios", slug: "complements-alimentaires" }
    ]},
    { id: "produits-patisserie", name: "Ingredientes de repostería", slug: "produits-patisserie", subcategories: [
      { id: "chocolat", name: "chocolate", slug: "chocolat" },
      { id: "levure", name: "levadura", slug: "levure" },
      { id: "cacao", name: "cacao", slug: "cacao" },
      { id: "aromes", name: "aromatizantes", slug: "aromes" },
      { id: "colorants", name: "colorantes", slug: "colorants" },
      { id: "decorations-patisserie", name: "decoraciones de repostería", slug: "decorations-patisserie" },
      { id: "ustensiles-patisserie", name: "utensilios de repostería", slug: "ustensiles-patisserie" }
    ]},
    { id: "produits-cuisine", name: "Esenciales de cocina", slug: "produits-cuisine", subcategories: [
      { id: "sauces-soja", name: "salsas de soja", slug: "sauces-soja" },
      { id: "sauces-piquantes", name: "salsas picantes", slug: "sauces-piquantes" },
      { id: "ketchup", name: "ketchup", slug: "ketchup" },
      { id: "moutarde-cuisine", name: "mostaza", slug: "moutarde-cuisine" },
      { id: "marinade", name: "marinados", slug: "marinade" },
      { id: "bouillons-cuisine", name: "caldos", slug: "bouillons-cuisine" },
      { id: "aides-de-cuisine", name: "ayudas de cocina", slug: "aides-de-cuisine" }
    ]},
    { id: "gourmandises-douceurs", name: "Dulces y delicias", slug: "gourmandises-douceurs", subcategories: [
      { id: "chocolats", name: "chocolates", slug: "chocolats" },
      { id: "bonbons", name: "caramelos", slug: "bonbons" },
      { id: "dragees", name: "grageas", slug: "dragees" },
      { id: "fruits-confits", name: "frutas confitadas", slug: "fruits-confits" },
      { id: "patisserie-fine", name: "pastelería fina", slug: "patisserie-fine" },
      { id: "coffrets-cadeaux", name: "cajas de regalo", slug: "coffrets-cadeaux" }
    ]},
    { id: "produits-bebe", name: "Alimentación para bebé", slug: "produits-bebe", subcategories: [
      { id: "lait-infantile", name: "leche infantil", slug: "lait-infantile" },
      { id: "petits-pots", name: "potitos", slug: "petits-pots" },
      { id: "compotes", name: "compotas", slug: "compotes" },
      { id: "biscuits-bebe", name: "galletas para bebé", slug: "biscuits-bebe" },
      { id: "cereales-bebe", name: "cereales para bebé", slug: "cereales-bebe" },
      { id: "yaourts-bebe", name: "yogures para bebé", slug: "yaourts-bebe" }
    ]},
    { id: "eaux-hydratation", name: "Agua e hidratación", slug: "eaux-hydratation", subcategories: [
      { id: "eau-plate", name: "agua sin gas", slug: "eau-plate" },
      { id: "eau-gazeuse", name: "agua con gas", slug: "eau-gazeuse" },
      { id: "eau-aromatisee", name: "agua aromatizada", slug: "eau-aromatisee" },
      { id: "packs-famille", name: "packs familiares", slug: "packs-famille" },
      { id: "bouteilles-sport", name: "botellas deportivas", slug: "bouteilles-sport" }
    ]},
    { id: "accessoires-culinaires", name: "Accesorios de cocina", slug: "accessoires-culinaires", subcategories: [
      { id: "boites-alimentaire", name: "cajas de comida", slug: "boites-alimentaire" },
      { id: "contenants-hermetiques", name: "recipientes herméticos", slug: "contenants-hermetiques" },
      { id: "sacs-congelation", name: "bolsas de congelación", slug: "sacs-congelation" },
      { id: "accessoires-de-cuisine", name: "accesorios de cocina", slug: "accessoires-de-cuisine" }
    ]}
  ]
};