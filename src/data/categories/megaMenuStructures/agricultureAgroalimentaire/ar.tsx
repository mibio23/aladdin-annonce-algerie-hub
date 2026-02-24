import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Wheat } from "lucide-react";

export const agricultureAgroalimentaireAr: MenuCategory = {
  id: "agriculture-agroalimentaire",
  name: "الزراعة والأغذية الزراعية",
  slug: "agriculture-agroalimentaire",
  icon: <Wheat className="w-4 h-4" />,
  description: "فئة الزراعة والصناعات الغذائية: المعدات والمدخلات والتربية والمعالجة واللوجستيات.",
  subcategories: [
    { id: "materiel-agricole", name: "معدات زراعية", slug: "materiel-agricole", description: "آلات ومعدات لتهيئة التربة والبذر والحصاد والمناولة.", subcategories: [
      { id: "tracteurs-agricoles", name: "جرارات زراعية", slug: "tracteurs-agricoles" },
      { id: "micro-tracteurs", name: "جرارات صغيرة", slug: "micro-tracteurs" },
      { id: "motoculteurs", name: "محاريث آلية", slug: "motoculteurs" },
      { id: "moissonneuses-batteuses", name: "حصادات", slug: "moissonneuses-batteuses" },
      { id: "charrues", name: "محاريث", slug: "charrues" },
      { id: "herses", name: "أمشاط زراعية", slug: "herses" },
      { id: "semoirs", name: "بذارات", slug: "semoirs" },
      { id: "pulverisateurs-agricoles", name: "مرشات زراعية", slug: "pulverisateurs-agricoles" },
      { id: "remorques-agricoles", name: "مقطورات زراعية", slug: "remorques-agricoles" },
      { id: "broyeurs-agricoles", name: "فرّامات", slug: "broyeurs-agricoles" },
      { id: "epandeurs-agricoles", name: "موزعات", slug: "epandeurs-agricoles" },
      { id: "tarieres-mecaniques", name: "مثاقب ميكانيكية", slug: "tarieres-mecaniques" },
      { id: "presses-a-balles", name: "مكابس بالات", slug: "presses-a-balles" },
      { id: "elevateurs-agricoles", name: "رافعات زراعية", slug: "elevateurs-agricoles" }
    ] },
    { id: "outils-equipements-de-culture", name: "أدوات ومعدات الزراعة", slug: "outils-equipements-de-culture", description: "أدوات يدوية ولوازم للعناية بالمحاصيل والبستنة.", subcategories: [
      { id: "beches", name: "معاول", slug: "beches" },
      { id: "pelles", name: "مجارف", slug: "pelles" },
      { id: "rateaux", name: "أمشاط", slug: "rateaux" },
      { id: "houes", name: "معازق", slug: "houes" },
      { id: "sarcleuses", name: "أدوات إزالة الأعشاب", slug: "sarcleuses" },
      { id: "binettes", name: "معاول يدوية", slug: "binettes" },
      { id: "secateurs", name: "مقصات تقليم", slug: "secateurs" },
      { id: "cisailles", name: "مقصات حدائق", slug: "cisailles" },
      { id: "arrosoirs", name: "أوعية سقي", slug: "arrosoirs" },
      { id: "pulverisateurs-manuels", name: "مرشات يدوية", slug: "pulverisateurs-manuels" },
      { id: "brouettes", name: "عربات يد", slug: "brouettes" },
      { id: "gants-de-jardin", name: "قفازات حدائق", slug: "gants-de-jardin" },
      { id: "lames-agricoles", name: "شفرات زراعية", slug: "lames-agricoles" },
      { id: "filets-de-recolte", name: "شبكات حصاد", slug: "filets-de-recolte" }
    ] },
    { id: "systemes-irrigation", name: "أنظمة الري", slug: "systemes-irrigation", description: "حلول ري وسقي لتحسين إمداد المياه.", subcategories: [
      { id: "tuyaux-d-arrosage", name: "خراطيم سقي", slug: "tuyaux-d-arrosage" },
      { id: "goutte-a-goutte", name: "الري بالتنقيط", slug: "goutte-a-goutte" },
      { id: "programmateurs-irrigation", name: "مبرمجات الري", slug: "programmateurs-irrigation" },
      { id: "aspersions", name: "رشاشات", slug: "aspersions" },
      { id: "pompes-a-eau", name: "مضخات مياه", slug: "pompes-a-eau" },
      { id: "motopompes", name: "مضخات محركة", slug: "motopompes" },
      { id: "raccords-irrigation", name: "وصلات الري", slug: "raccords-irrigation" },
      { id: "filtres-d-eau", name: "مرشحات مياه", slug: "filtres-d-eau" },
      { id: "arroseurs", name: "مرشات", slug: "arroseurs" },
      { id: "reservoirs-d-eau", name: "خزانات مياه", slug: "reservoirs-d-eau" }
    ] },
    { id: "semences-plants", name: "بذور ونباتات", slug: "semences-plants", description: "بذور وشتلات وبصيلات للمحاصيل الخضرية والحبوب والأشجار.", subcategories: [
      { id: "semences-potageres", name: "بذور خضر", slug: "semences-potageres" },
      { id: "semences-cerealieres", name: "بذور حبوب", slug: "semences-cerealieres" },
      { id: "semences-fourrageres", name: "بذور أعلاف", slug: "semences-fourrageres" },
      { id: "plants-de-legumes", name: "شتلات خضر", slug: "plants-de-legumes" },
      { id: "plants-fruitiers", name: "شتلات فواكه", slug: "plants-fruitiers" },
      { id: "plants-d-arbres", name: "شتلات أشجار", slug: "plants-d-arbres" },
      { id: "graines-biologiques", name: "بذور عضوية", slug: "graines-biologiques" },
      { id: "graines-hybrides", name: "بذور هجينة", slug: "graines-hybrides" },
      { id: "bulbes", name: "بصيلات", slug: "bulbes" },
      { id: "jeunes-pousses", name: "براعم صغيرة", slug: "jeunes-pousses" }
    ] },
    { id: "engrais-fertilisants", name: "أسمدة ومحسنات التربة", slug: "engrais-fertilisants", description: "محسنات التربة ومغذيات لتحسين الخصوبة والنمو.", subcategories: [
      { id: "engrais-chimiques", name: "أسمدة كيميائية", slug: "engrais-chimiques" },
      { id: "engrais-organiques", name: "أسمدة عضوية", slug: "engrais-organiques" },
      { id: "compost", name: "كمبوست", slug: "compost" },
      { id: "fumiers", name: "سماد حيواني", slug: "fumiers" },
      { id: "amendements-calcaires", name: "محسنات كلسية", slug: "amendements-calcaires" },
      { id: "stimulateurs-de-croissance", name: "محفزات نمو", slug: "stimulateurs-de-croissance" },
      { id: "terreaux", name: "تربة زراعية", slug: "terreaux" },
      { id: "substrats-agricoles", name: "ركائز زراعية", slug: "substrats-agricoles" },
      { id: "additifs-nutritifs", name: "مضافات غذائية", slug: "additifs-nutritifs" }
    ] },
    { id: "produits-phytosanitaires", name: "منتجات وقاية النبات", slug: "produits-phytosanitaires", description: "منتجات وقاية النباتات ومعالجات بيولوجية.", subcategories: [
      { id: "insecticides-agricoles", name: "مبيدات حشرية زراعية", slug: "insecticides-agricoles" },
      { id: "fongicides", name: "مبيدات فطرية", slug: "fongicides" },
      { id: "herbicides", name: "مبيدات أعشاب", slug: "herbicides" },
      { id: "traitements-biologiques", name: "معالجات بيولوجية", slug: "traitements-biologiques" },
      { id: "repulsifs-naturels", name: "مواد طاردة طبيعية", slug: "repulsifs-naturels" },
      { id: "pieges-anti-nuisibles", name: "مصائد للآفات", slug: "pieges-anti-nuisibles" },
      { id: "protections-pour-cultures", name: "وسائل حماية المحاصيل", slug: "protections-pour-cultures" }
    ] },
    { id: "elevage-soins-animaux", name: "تربية الحيوانات والعناية بها", slug: "elevage-soins-animaux", description: "أعلاف وعناية ومعدات لتربية الحيوانات.", subcategories: [
      { id: "aliments-pour-betail", name: "أعلاف الماشية", slug: "aliments-pour-betail" },
      { id: "aliments-pour-volailles", name: "أعلاف الدواجن", slug: "aliments-pour-volailles" },
      { id: "aliments-pour-ovins-caprins", name: "أعلاف الأغنام والماعز", slug: "aliments-pour-ovins-caprins" },
      { id: "complements-nutritionnels", name: "مكملات غذائية", slug: "complements-nutritionnels" },
      { id: "produits-veterinaires", name: "منتجات بيطرية", slug: "produits-veterinaires" },
      { id: "mangeoires", name: "مغذات", slug: "mangeoires" },
      { id: "abreuvoirs", name: "مساقي", slug: "abreuvoirs" },
      { id: "clotures-electriques", name: "أسوار كهربائية", slug: "clotures-electriques" },
      { id: "parcs-cages", name: "حظائر وأقفاص", slug: "parcs-cages" },
      { id: "couveuses", name: "حاضنات", slug: "couveuses" },
      { id: "nichoirs", name: "بيوت طيور", slug: "nichoirs" },
      { id: "equipements-de-traite", name: "معدات الحلب", slug: "equipements-de-traite" },
      { id: "tondeuses-animales", name: "ماكينات جز", slug: "tondeuses-animales" }
    ] },
    { id: "materiel-elevage", name: "معدات التربية", slug: "materiel-elevage", description: "معدات متخصصة للتربية والحلب والتخزين.", subcategories: [
      { id: "machines-a-traire", name: "آلات حلب", slug: "machines-a-traire" },
      { id: "tanks-a-lait", name: "خزانات حليب", slug: "tanks-a-lait" },
      { id: "broyeurs-a-grains", name: "طواحين حبوب", slug: "broyeurs-a-grains" },
      { id: "distributeurs-automatiques-d-aliments", name: "موزعات علف آلية", slug: "distributeurs-automatiques-d-aliments" },
      { id: "enrubanneuses", name: "مغلفات الأعلاف", slug: "enrubanneuses" },
      { id: "systemes-de-ventilation-elevage", name: "أنظمة تهوية التربية", slug: "systemes-de-ventilation-elevage" },
      { id: "tapis-d-elevage", name: "أرضيات تربية", slug: "tapis-d-elevage" },
      { id: "abris-metalliques", name: "ملاجئ معدنية", slug: "abris-metalliques" }
    ] },
    { id: "produits-agricoles-bruts", name: "منتجات زراعية خام", slug: "produits-agricoles-bruts", description: "منتجات زراعية خام من الحصاد.", subcategories: [
      { id: "cereales-ble-orge-mais", name: "حبوب (قمح، شعير، ذرة)", slug: "cereales-ble-orge-mais" },
      { id: "legumes-frais", name: "خضروات طازجة", slug: "legumes-frais" },
      { id: "fruits-de-saison", name: "فواكه موسمية", slug: "fruits-de-saison" },
      { id: "herbes-aromatiques", name: "أعشاب عطرية", slug: "herbes-aromatiques" },
      { id: "plantes-medicinales", name: "نباتات طبية", slug: "plantes-medicinales" },
      { id: "fourrage", name: "علف", slug: "fourrage" },
      { id: "foin", name: "تبن", slug: "foin" },
      { id: "luzerne", name: "الفصفصة", slug: "luzerne" },
      { id: "paille", name: "قش", slug: "paille" }
    ] },
    { id: "produits-agroalimentaires-transformes", name: "منتجات غذائية مصنّعة", slug: "produits-agroalimentaires-transformes", description: "منتجات غذائية مصنّعة من أصل زراعي.", subcategories: [
      { id: "farine", name: "دقيق", slug: "farine" },
      { id: "couscous", name: "كسكس", slug: "couscous" },
      { id: "semoule", name: "سميد", slug: "semoule" },
      { id: "huile-d-olive", name: "زيت زيتون", slug: "huile-d-olive" },
      { id: "huiles-vegetales", name: "زيوت نباتية", slug: "huiles-vegetales" },
      { id: "conserves", name: "معلبات", slug: "conserves" },
      { id: "confitures", name: "مربى", slug: "confitures" },
      { id: "produits-laitiers", name: "منتجات ألبان", slug: "produits-laitiers" },
      { id: "fromages", name: "أجبان", slug: "fromages" },
      { id: "miel", name: "عسل", slug: "miel" },
      { id: "dattes", name: "تمر", slug: "dattes" },
      { id: "produits-secs", name: "منتجات جافة", slug: "produits-secs" },
      { id: "legumineuses", name: "بقوليات", slug: "legumineuses" }
    ] },
    { id: "equipements-agroalimentaires", name: "معدات الصناعات الغذائية", slug: "equipements-agroalimentaires", description: "آلات ومعدات لمعالجة وتعبئة الأغذية.", subcategories: [
      { id: "moulins-agro", name: "مطاحن", slug: "moulins-agro" },
      { id: "concasseurs", name: "كسارات", slug: "concasseurs" },
      { id: "presses-a-huile", name: "معاصر زيت", slug: "presses-a-huile" },
      { id: "petrins", name: "عجانات", slug: "petrins" },
      { id: "machines-d-emballage", name: "آلات تعبئة وتغليف", slug: "machines-d-emballage" },
      { id: "pasteurisateurs", name: "مبسترات", slug: "pasteurisateurs" },
      { id: "machines-de-transformation", name: "آلات معالجة غذائية", slug: "machines-de-transformation" },
      { id: "sterilisateurs", name: "معقمات", slug: "sterilisateurs" },
      { id: "broyeurs-alimentaires", name: "مطاحن غذائية", slug: "broyeurs-alimentaires" }
    ] },
    { id: "serres-solutions-de-culture", name: "بيوت بلاستيكية وحلول الزراعة", slug: "serres-solutions-de-culture", description: "بيوت زجاجية وأنظمة تقنية للزراعة المُتحكم بها.", subcategories: [
      { id: "serres-tunnel", name: "بيوت أنفاق", slug: "serres-tunnel" },
      { id: "serres-metalliques", name: "بيوت معدنية", slug: "serres-metalliques" },
      { id: "baches-de-serre", name: "أغطية بيوت بلاستيكية", slug: "baches-de-serre" },
      { id: "systemes-hydroponiques", name: "أنظمة الزراعة المائية", slug: "systemes-hydroponiques" },
      { id: "systemes-aquaponiques", name: "أنظمة الأكوابونيك", slug: "systemes-aquaponiques" },
      { id: "lampes-horticoles", name: "مصابيح زراعية", slug: "lampes-horticoles" },
      { id: "tables-de-culture", name: "طاولات زراعة", slug: "tables-de-culture" },
      { id: "capteurs-d-humidite", name: "حساسات رطوبة", slug: "capteurs-d-humidite" }
    ] },
    { id: "amenagement-agricole", name: "تهيئة زراعية", slug: "amenagement-agricole", description: "معدات ولوازم للبنية التحتية للمزارع.", subcategories: [
      { id: "clotures-metalliques", name: "أسوار معدنية", slug: "clotures-metalliques" },
      { id: "grillages", name: "شبك معدني", slug: "grillages" },
      { id: "baches-agricoles", name: "أغطية زراعية", slug: "baches-agricoles" },
      { id: "filets-d-ombrage", name: "شبكات ظل", slug: "filets-d-ombrage" },
      { id: "paillages", name: "مفارش عضوية", slug: "paillages" },
      { id: "tuteurs", name: "دعامات النباتات", slug: "tuteurs" },
      { id: "piquets", name: "أوتاد", slug: "piquets" },
      { id: "abris-agricoles", name: "ملاجئ زراعية", slug: "abris-agricoles" },
      { id: "hangars-demontables", name: "مخازن قابلة للتفكيك", slug: "hangars-demontables" }
    ] },
    { id: "transport-logistique-agricole", name: "النقل واللوجستيك الزراعي", slug: "transport-logistique-agricole", description: "مواد للتخزين والمناولة والنقل الزراعي.", subcategories: [
      { id: "sacs-de-stockage", name: "أكياس تخزين", slug: "sacs-de-stockage" },
      { id: "big-bags", name: "أكياس كبيرة", slug: "big-bags" },
      { id: "caisses-de-recolte", name: "صناديق حصاد", slug: "caisses-de-recolte" },
      { id: "palettes", name: "طبالي", slug: "palettes" },
      { id: "conteneurs", name: "حاويات", slug: "conteneurs" },
      { id: "charrettes-agricoles", name: "عربات زراعية", slug: "charrettes-agricoles" },
      { id: "bennes-basculantes", name: "حاويات قابلة للإمالة", slug: "bennes-basculantes" }
    ] },
    { id: "equipement-ruchers-apiculture", name: "معدات المناحل وتربية النحل", slug: "equipement-ruchers-apiculture", description: "معدات ولوازم لتربية النحل.", subcategories: [
      { id: "ruches", name: "خلايا نحل", slug: "ruches" },
      { id: "cadres-de-ruche", name: "إطارات الخلية", slug: "cadres-de-ruche" },
      { id: "cire-gaufree", name: "شمع مضغوط", slug: "cire-gaufree" },
      { id: "enfumoirs", name: "مدخنات", slug: "enfumoirs" },
      { id: "extracteurs-de-miel", name: "عصارات عسل", slug: "extracteurs-de-miel" },
      { id: "equipements-apiculteurs", name: "معدات النحالين", slug: "equipements-apiculteurs" },
      { id: "pieges-a-essaims", name: "مصائد أسراب", slug: "pieges-a-essaims" }
    ] },
    { id: "controle-sanitaire-outils-produits", name: "أدوات ومنتجات الرقابة الصحية", slug: "controle-sanitaire-outils-produits", description: "أدوات ومنتجات للنظافة وأمن المحاصيل الحيوي.", subcategories: [
      { id: "desinfectants-agricoles", name: "مطهرات زراعية", slug: "desinfectants-agricoles" },
      { id: "pulverisateurs-sanitaires", name: "مرشات صحية", slug: "pulverisateurs-sanitaires" },
      { id: "pieges-a-insectes", name: "مصائد حشرات", slug: "pieges-a-insectes" },
      { id: "filets-anti-oiseaux", name: "شبكات ضد الطيور", slug: "filets-anti-oiseaux" },
      { id: "systemes-protection-cultures", name: "أنظمة حماية المحاصيل", slug: "systemes-protection-cultures" },
      { id: "stations-meteo-agricoles", name: "محطات طقس زراعية", slug: "stations-meteo-agricoles" }
    ] },
    { id: "accessoires-consommables", name: "إكسسوارات ومستهلكات", slug: "accessoires-consommables", description: "إكسسوارات ومواد مستهلكة شائعة للعمل الزراعي.", subcategories: [
      { id: "ficelles-agricoles", name: "خيوط زراعية", slug: "ficelles-agricoles" },
      { id: "cordages", name: "حبال", slug: "cordages" },
      { id: "sangles", name: "أحزمة", slug: "sangles" },
      { id: "attaches-pour-plants", name: "روابط للنباتات", slug: "attaches-pour-plants" },
      { id: "boites-d-emballage", name: "علب تغليف", slug: "boites-d-emballage" },
      { id: "sacs-alimentaires", name: "أكياس غذائية", slug: "sacs-alimentaires" },
      { id: "etiquettes-agricoles", name: "ملصقات زراعية", slug: "etiquettes-agricoles" }
    ] }
  ]
};