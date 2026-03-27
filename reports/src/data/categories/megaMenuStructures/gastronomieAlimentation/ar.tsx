import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Utensils } from "lucide-react";

export const gastronomieAlimentationAr: MenuCategory = {
  id: "gastronomie-alimentation",
  name: "المأكولات و التغذية",
  slug: "gastronomie-alimentation",
  icon: <Utensils className="w-4 h-4" />,
  subcategories: [
    { id: "epicerie-salee", name: "بقالة مالحة", slug: "epicerie-salee", subcategories: [
      { id: "pates", name: "معكرونة", slug: "pates" },
      { id: "riz", name: "أرز", slug: "riz" },
      { id: "semoule", name: "سميد", slug: "semoule" },
      { id: "couscous", name: "couscous", slug: "couscous" },
      { id: "lentilles", name: "عدس", slug: "lentilles" },
      { id: "pois-chiches", name: "حمص", slug: "pois-chiches" },
      { id: "haricots-secs", name: "فاصوليا جافة", slug: "haricots-secs" },
      { id: "farines", name: "دقيق", slug: "farines" },
      { id: "boulghour", name: "برغل", slug: "boulghour" },
      { id: "cereales", name: "حبوب", slug: "cereales" },
      { id: "conserves-salees", name: "معلبات مالحة", slug: "conserves-salees" },
      { id: "sauces-salees", name: "صلصات مالحة", slug: "sauces-salees" }
    ]},
    { id: "epicerie-sucree", name: "بقالة حلوة", slug: "epicerie-sucree", subcategories: [
      { id: "sucre", name: "سكر", slug: "sucre" },
      { id: "miel", name: "عسل", slug: "miel" },
      { id: "confitures", name: "مربيات", slug: "confitures" },
      { id: "pate-a-tartiner", name: "كريمة قابلة للدهن", slug: "pate-a-tartiner" },
      { id: "biscuits", name: "بسكويت", slug: "biscuits" },
      { id: "gateaux", name: "كعك", slug: "gateaux" },
      { id: "cereales-sucrees", name: "حبوب محلاة", slug: "cereales-sucrees" },
      { id: "sirops", name: "شراب", slug: "sirops" },
      { id: "desserts-instantanes", name: "حلويات فورية", slug: "desserts-instantanes" }
    ]},
    { id: "conserves-boites", name: "معلبات ومنتجات معلبة", slug: "conserves-boites", subcategories: [
      { id: "thon", name: "تونة", slug: "thon" },
      { id: "sardines", name: "سردين", slug: "sardines" },
      { id: "maquereaux", name: "إسقمري", slug: "maquereaux" },
      { id: "mais", name: "ذرة", slug: "mais" },
      { id: "petits-pois", name: "بازلاء", slug: "petits-pois" },
      { id: "haricots", name: "فاصوليا", slug: "haricots" },
      { id: "tomates-pelees", name: "طماطم مقشرة", slug: "tomates-pelees" },
      { id: "sauces-conserve", name: "صلصات معلبة", slug: "sauces-conserve" },
      { id: "plats-prepares", name: "وجبات جاهزة", slug: "plats-prepares" }
    ]},
    { id: "produits-frais", name: "منتجات طازجة", slug: "produits-frais", subcategories: [
      { id: "yaourts", name: "زبادي", slug: "yaourts" },
      { id: "fromages-frais", name: "أجبان طازجة", slug: "fromages-frais" },
      { id: "lait", name: "حليب", slug: "lait" },
      { id: "beurre", name: "زبدة", slug: "beurre" },
      { id: "creme", name: "كريمة", slug: "creme" },
      { id: "oeufs", name: "بيض", slug: "oeufs" },
      { id: "jus-frais", name: "عصائر طازجة", slug: "jus-frais" },
      { id: "charcuterie-frais", name: "لحوم باردة", slug: "charcuterie-frais" },
      { id: "produits-traiteurs", name: "منتجات مطبخ جاهزة", slug: "produits-traiteurs" }
    ]},
    { id: "produits-surgeles", name: "منتجات مجمّدة", slug: "produits-surgeles", subcategories: [
      { id: "legumes-surgeles", name: "خضروات مجمّدة", slug: "legumes-surgeles" },
      { id: "viandes-surgeles", name: "لحوم", slug: "viandes-surgeles" },
      { id: "poissons-surgeles", name: "أسماك", slug: "poissons-surgeles" },
      { id: "fruits-surgeles", name: "فواكه", slug: "fruits-surgeles" },
      { id: "pizzas-surgeles", name: "بيتزا", slug: "pizzas-surgeles" },
      { id: "nuggets", name: "nuggets", slug: "nuggets" },
      { id: "patisseries-surgeles", name: "مخبوزات", slug: "patisseries-surgeles" },
      { id: "glaces", name: "مثلجات", slug: "glaces" }
    ]},
    { id: "viandes-volailles", name: "لحوم و دواجن", slug: "viandes-volailles", subcategories: [
      { id: "viande-rouge", name: "لحوم حمراء", slug: "viande-rouge" },
      { id: "viande-blanche", name: "لحوم بيضاء", slug: "viande-blanche" },
      { id: "volaille", name: "دواجن", slug: "volaille" },
      { id: "dinde", name: "ديك رومي", slug: "dinde" },
      { id: "merguez", name: "merguez", slug: "merguez" },
      { id: "charcuterie", name: "لحوم مصنّعة", slug: "charcuterie" },
      { id: "abats", name: "أحشاء", slug: "abats" },
      { id: "viandes-marinees", name: "لحوم متبلة", slug: "viandes-marinees" }
    ]},
    { id: "poissons-fruits-de-mer", name: "أسماك و مأكولات بحرية", slug: "poissons-fruits-de-mer", subcategories: [
      { id: "poissons-frais", name: "أسماك طازجة", slug: "poissons-frais" },
      { id: "poissons-congeles", name: "أسماك مجمّدة", slug: "poissons-congeles" },
      { id: "crustaces", name: "قشريات", slug: "crustaces" },
      { id: "mollusques", name: "رخويات", slug: "mollusques" },
      { id: "fruits-de-mer-prepares", name: "مأكولات بحرية محضّرة", slug: "fruits-de-mer-prepares" },
      { id: "saumon", name: "سلمون", slug: "saumon" },
      { id: "thon-poisson", name: "تونة", slug: "thon-poisson" }
    ]},
    { id: "fruits-legumes", name: "فواكه وخضروات", slug: "fruits-legumes", subcategories: [
      { id: "fruits-frais", name: "فواكه طازجة", slug: "fruits-frais" },
      { id: "legumes-frais", name: "خضروات طازجة", slug: "legumes-frais" },
      { id: "fruits-secs", name: "فواكه مجففة", slug: "fruits-secs" },
      { id: "fruits-deshydrates", name: "فواكه منزوعة الرطوبة", slug: "fruits-deshydrates" },
      { id: "legumes-bio", name: "خضروات عضوية", slug: "legumes-bio" },
      { id: "produits-de-saison", name: "منتجات موسمية", slug: "produits-de-saison" }
    ]},
    { id: "boulangerie-patisserie", name: "مخبوزات و حلويات", slug: "boulangerie-patisserie", subcategories: [
      { id: "pains", name: "خبز", slug: "pains" },
      { id: "baguettes", name: "باغيت", slug: "baguettes" },
      { id: "croissants", name: "كرواسون", slug: "croissants" },
      { id: "brioches", name: "بريوش", slug: "brioches" },
      { id: "patisseries-locales", name: "حلويات محلية", slug: "patisseries-locales" },
      { id: "gateaux-patisserie", name: "كعك", slug: "gateaux-patisserie" },
      { id: "biscuits-artisanaux", name: "بسكويت مصنوع يدويًا", slug: "biscuits-artisanaux" },
      { id: "viennoiseries", name: "معجنات", slug: "viennoiseries" }
    ]},
    { id: "produits-laitiers", name: "منتجات ألبان", slug: "produits-laitiers", subcategories: [
      { id: "lait-produit", name: "حليب", slug: "lait-produit" },
      { id: "fromage", name: "جبن", slug: "fromage" },
      { id: "yaourt", name: "زبادي", slug: "yaourt" },
      { id: "creme-fraiche", name: "كريمة طازجة", slug: "creme-fraiche" },
      { id: "beurre-produit", name: "زبدة", slug: "beurre-produit" },
      { id: "fromages-locaux", name: "أجبان محلية", slug: "fromages-locaux" },
      { id: "fromages-europeens", name: "أجبان أوروبية", slug: "fromages-europeens" }
    ]},
    { id: "huiles-condiments", name: "زيوت وتوابل", slug: "huiles-condiments", subcategories: [
      { id: "huile-olive", name: "زيت زيتون", slug: "huile-olive" },
      { id: "huile-tournesol", name: "زيت دوّار الشمس", slug: "huile-tournesol" },
      { id: "vinaigre", name: "خل", slug: "vinaigre" },
      { id: "moutarde", name: "خردل", slug: "moutarde" },
      { id: "mayonnaise", name: "مايونيز", slug: "mayonnaise" },
      { id: "sauces-condiments", name: "صلصات", slug: "sauces-condiments" },
      { id: "epices-condiments", name: "توابل", slug: "epices-condiments" },
      { id: "herbes", name: "أعشاب", slug: "herbes" },
      { id: "aromates", name: "منكّهات", slug: "aromates" },
      { id: "bouillons", name: "مرق", slug: "bouillons" }
    ]},
    { id: "epices-assaisonnements", name: "بهارات وتتبيلات", slug: "epices-assaisonnements", subcategories: [
      { id: "sel", name: "ملح", slug: "sel" },
      { id: "poivre", name: "فلفل", slug: "poivre" },
      { id: "paprika", name: "paprika", slug: "paprika" },
      { id: "cumin", name: "كمون", slug: "cumin" },
      { id: "curcuma", name: "كركم", slug: "curcuma" },
      { id: "epices-orientales", name: "توابل شرقية", slug: "epices-orientales" },
      { id: "melanges-prets", name: "خلطات جاهزة", slug: "melanges-prets" },
      { id: "assaisonnements-barbecue", name: "تتبيلات شواء", slug: "assaisonnements-barbecue" }
    ]},
    { id: "boissons", name: "مشروبات", slug: "boissons", subcategories: [
      { id: "eaux-minerales", name: "مياه معدنية", slug: "eaux-minerales" },
      { id: "boissons-gazeuses", name: "مشروبات غازية", slug: "boissons-gazeuses" },
      { id: "jus", name: "عصائر", slug: "jus" },
      { id: "boissons-energetiques", name: "مشروبات الطاقة", slug: "boissons-energetiques" },
      { id: "thes-glaces", name: "شاي مثلج", slug: "thes-glaces" },
      { id: "infusions-prêtes", name: "مشروبات عشبية جاهزة", slug: "infusions-pretes-a-boire" }
    ]},
    { id: "cafe-the", name: "قهوة و شاي", slug: "cafe-the", subcategories: [
      { id: "cafe-moulu", name: "قهوة مطحونة", slug: "cafe-moulu" },
      { id: "cafe-en-grains", name: "حبوب قهوة", slug: "cafe-en-grains" },
      { id: "capsules", name: "كبسولات", slug: "capsules" },
      { id: "cafe-instantane", name: "قهوة سريعة التحضير", slug: "cafe-instantane" },
      { id: "thes-verts", name: "شاي أخضر", slug: "thes-verts" },
      { id: "thes-noirs", name: "شاي أسود", slug: "thes-noirs" },
      { id: "infusions", name: "منقوعات", slug: "infusions" },
      { id: "tisanes", name: "أعشاب", slug: "tisanes" },
      { id: "accessoires-cafe-the", name: "مستلزمات القهوة/الشاي", slug: "accessoires-cafe-the" }
    ]},
    { id: "produits-bio-naturels", name: "منتجات عضوية وطبيعية", slug: "produits-bio-naturels", subcategories: [
      { id: "aliments-bio", name: "أطعمة عضوية", slug: "aliments-bio" },
      { id: "graines", name: "بذور", slug: "graines" },
      { id: "superfoods", name: "superfoods", slug: "superfoods" },
      { id: "farines-bio", name: "دقيق عضوي", slug: "farines-bio" },
      { id: "huiles-naturelles", name: "زيوت طبيعية", slug: "huiles-naturelles" },
      { id: "produits-sans-additifs", name: "منتجات بلا إضافات", slug: "produits-sans-additifs" }
    ]},
    { id: "produits-orientaux-traditionnels", name: "منتجات شرقية وتقليدية", slug: "produits-orientaux-traditionnels", subcategories: [
      { id: "patisseries-orientales", name: "حلويات شرقية", slug: "patisseries-orientales" },
      { id: "dattes", name: "تمر", slug: "dattes" },
      { id: "semoule-speciale", name: "سميد خاص", slug: "semoule-speciale" },
      { id: "epices-orientales-trad", name: "توابل شرقية", slug: "epices-orientales-trad" },
      { id: "couscous-artisanal", name: "كسكس تقليدي", slug: "couscous-artisanal" },
      { id: "produits-ramadan", name: "منتجات رمضان", slug: "produits-ramadan" }
    ]},
    { id: "snacks-aperitifs", name: "سناكات ومقبلات", slug: "snacks-aperitifs", subcategories: [
      { id: "chips", name: "chips", slug: "chips" },
      { id: "biscuits-sales", name: "بسكويت مالح", slug: "biscuits-sales" },
      { id: "cacahuetes", name: "فول سوداني", slug: "cacahuetes" },
      { id: "amandes", name: "لوز", slug: "amandes" },
      { id: "pistaches", name: "فستق", slug: "pistaches" },
      { id: "noix-de-cajou", name: "كاجو", slug: "noix-de-cajou" },
      { id: "popcorn", name: "popcorn", slug: "popcorn" },
      { id: "olives-assaisonnees", name: "زيتون متبل", slug: "olives-assaisonnees" }
    ]},
    { id: "cuisine-internationale", name: "منتجات مطابخ عالمية", slug: "cuisine-internationale", subcategories: [
      { id: "produits-asiatiques", name: "منتجات آسيوية", slug: "produits-asiatiques" },
      { id: "produits-turcs", name: "منتجات تركية", slug: "produits-turcs" },
      { id: "produits-indiens", name: "منتجات هندية", slug: "produits-indiens" },
      { id: "sauces-internationales", name: "صلصات عالمية", slug: "sauces-internationales" },
      { id: "nouilles-asiatiques", name: "نودلز آسيوية", slug: "nouilles-asiatiques" }
    ]},
    { id: "produits-halal", name: "منتجات حلال", slug: "produits-halal", subcategories: [
      { id: "charcuterie-halal", name: "لحوم حلال معلبة", slug: "charcuterie-halal" },
      { id: "viandes-halal", name: "لحوم حلال", slug: "viandes-halal" },
      { id: "snacks-halal", name: "سناكات حلال", slug: "snacks-halal" },
      { id: "plats-prepares-halal", name: "وجبات جاهزة حلال", slug: "plats-prepares-halal" },
      { id: "surgeles-halal", name: "مجمدات حلال", slug: "surgeles-halal" }
    ]},
    { id: "nutrition-sportive", name: "تغذية رياضية", slug: "nutrition-sportive", subcategories: [
      { id: "proteines", name: "بروتينات", slug: "proteines" },
      { id: "gainers", name: "جاينرز", slug: "gainers" },
      { id: "creatine", name: "كرياتين", slug: "creatine" },
      { id: "aminoacides", name: "أحماض أمينية", slug: "aminoacides" },
      { id: "bars-protein", name: "ألواح بروتين", slug: "bars-proteinees" },
      { id: "boissons-isotoniques", name: "مشروبات متساوية التوتر", slug: "boissons-isotoniques" },
      { id: "meal-replacement", name: "بدائل وجبة", slug: "meal-replacement" }
    ]},
    { id: "dietetique-sante", name: "حمية وصحة", slug: "dietetique-sante", subcategories: [
      { id: "sans-sucre", name: "منتجات بدون سكر", slug: "sans-sucre" },
      { id: "sans-gluten", name: "منتجات خالية من الغلوتين", slug: "sans-gluten" },
      { id: "sans-lactose", name: "منتجات خالية من اللاكتوز", slug: "sans-lactose" },
      { id: "faible-calories", name: "أطعمة قليلة السعرات", slug: "faible-calories" },
      { id: "thes-detox", name: "شاي ديتوكس", slug: "thes-detox" },
      { id: "complements-alimentaires", name: "مكملات غذائية", slug: "complements-alimentaires" }
    ]},
    { id: "produits-patisserie", name: "مستلزمات الحلويات", slug: "produits-patisserie", subcategories: [
      { id: "chocolat", name: "شوكولاتة", slug: "chocolat" },
      { id: "levure", name: "خميرة", slug: "levure" },
      { id: "cacao", name: "كاكاو", slug: "cacao" },
      { id: "aromes", name: "منكهات", slug: "aromes" },
      { id: "colorants", name: "ملونات", slug: "colorants" },
      { id: "decorations-patisserie", name: "زينة الحلويات", slug: "decorations-patisserie" },
      { id: "ustensiles-patisserie", name: "أدوات الحلويات", slug: "ustensiles-patisserie" }
    ]},
    { id: "produits-cuisine", name: "مستلزمات الطبخ", slug: "produits-cuisine", subcategories: [
      { id: "sauces-soja", name: "صلصات الصويا", slug: "sauces-soja" },
      { id: "sauces-piquantes", name: "صلصات حارة", slug: "sauces-piquantes" },
      { id: "ketchup", name: "ketchup", slug: "ketchup" },
      { id: "moutarde-cuisine", name: "خردل", slug: "moutarde-cuisine" },
      { id: "marinade", name: "تتبيلة", slug: "marinade" },
      { id: "bouillons-cuisine", name: "مرق", slug: "bouillons-cuisine" },
      { id: "aides-de-cuisine", name: "مساعدات الطبخ", slug: "aides-de-cuisine" }
    ]},
    { id: "gourmandises-douceurs", name: "حلويات ومشتهيات", slug: "gourmandises-douceurs", subcategories: [
      { id: "chocolats", name: "شوكولاتات", slug: "chocolats" },
      { id: "bonbons", name: "حلويات", slug: "bonbons" },
      { id: "dragees", name: "دراجيه", slug: "dragees" },
      { id: "fruits-confits", name: "فواكه مسكرة", slug: "fruits-confits" },
      { id: "patisserie-fine", name: "حلويات فاخرة", slug: "patisserie-fine" },
      { id: "coffrets-cadeaux", name: "علب هدايا", slug: "coffrets-cadeaux" }
    ]},
    { id: "produits-bebe", name: "منتجات للرضّع", slug: "produits-bebe", subcategories: [
      { id: "lait-infantile", name: "حليب أطفال", slug: "lait-infantile" },
      { id: "petits-pots", name: "وجبات أطفال معلبة", slug: "petits-pots" },
      { id: "compotes", name: "كومبوت", slug: "compotes" },
      { id: "biscuits-bebe", name: "بسكويت أطفال", slug: "biscuits-bebe" },
      { id: "cereales-bebe", name: "حبوب أطفال", slug: "cereales-bebe" },
      { id: "yaourts-bebe", name: "زبادي أطفال", slug: "yaourts-bebe" }
    ]},
    { id: "eaux-hydratation", name: "مياه وترطيب", slug: "eaux-hydratation", subcategories: [
      { id: "eau-plate", name: "ماء عادي", slug: "eau-plate" },
      { id: "eau-gazeuse", name: "ماء غازي", slug: "eau-gazeuse" },
      { id: "eau-aromatisee", name: "ماء بنكهة", slug: "eau-aromatisee" },
      { id: "packs-famille", name: "عبوات عائلية", slug: "packs-famille" },
      { id: "bouteilles-sport", name: "زجاجات رياضية", slug: "bouteilles-sport" }
    ]},
    { id: "accessoires-culinaires", name: "إكسسوارات المطبخ", slug: "accessoires-culinaires", subcategories: [
      { id: "boites-alimentaire", name: "علب طعام", slug: "boites-alimentaire" },
      { id: "contenants-hermetiques", name: "حاويات محكمة الإغلاق", slug: "contenants-hermetiques" },
      { id: "sacs-congelation", name: "أكياس تجميد", slug: "sacs-congelation" },
      { id: "accessoires-de-cuisine", name: "مستلزمات المطبخ", slug: "accessoires-de-cuisine" }
    ]}
  ]
};