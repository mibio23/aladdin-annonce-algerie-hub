import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Pill, Heart, Droplets, Sparkles, Shield, Baby, HeartPulse, Microscope, Sun, Leaf, TestTube, PaintBucket, Sprout, Beaker, Package, Palette } from "lucide-react";

export const parapharmacieProduitChimiqueAr: MenuCategory = {
  id: "parapharmacie-produit-chimique",
  name: "الصيدلة الموازية والمنتجات الكيميائية",
  slug: "parapharmacie-produit-chimique",
  icon: <Pill className="w-4 h-4" />,
  subcategories: [
    {
      id: "parapharmacie-generale",
      name: "الصيدلة الموازية العامة",
      slug: "parapharmacie-generale",
      icon: <Heart className="w-4 h-4" />,
      subcategories: [
        { id: "vitamines", name: "الفيتامينات", slug: "vitamines" },
        { id: "complements-alimentaires", name: "المكملات الغذائية", slug: "complements-alimentaires" },
        { id: "produits-immunite", name: "منتجات المناعة", slug: "produits-immunite" },
        { id: "supplements-sportifs", name: "المكملات الرياضية", slug: "supplements-sportifs" },
        { id: "soins-essentiels", name: "العناية الأساسية", slug: "soins-essentiels" },
        { id: "boosters-energie", name: "معززات الطاقة", slug: "boosters-energie" },
        { id: "probiotiques", name: "البروبيوتيك", slug: "probiotiques" },
        { id: "mineraux", name: "المعادن", slug: "mineraux" },
        { id: "omega-3", name: "أوميغا 3", slug: "omega-3" },
        { id: "multivitamines", name: "فيتامينات متعددة", slug: "multivitamines" }
      ]
    },
    {
      id: "soins-visage",
      name: "العناية بالوجه",
      slug: "soins-visage",
      icon: <Sparkles className="w-4 h-4" />,
      subcategories: [
        { id: "cremes-hydratantes", name: "كريمات مرطبة", slug: "cremes-hydratantes" },
        { id: "cremes-anti-age", name: "كريمات مكافحة الشيخوخة", slug: "cremes-anti-age" },
        { id: "serums", name: "أمصال (سيروم)", slug: "serums" },
        { id: "soins-anti-acne", name: "علاج حب الشباب", slug: "soins-anti-acne" },
        { id: "exfoliants", name: "مقشرات", slug: "exfoliants" },
        { id: "masques-visage", name: "أقنعة الوجه", slug: "masques-visage" },
        { id: "nettoyants-dermatologiques", name: "منظفات جلدية", slug: "nettoyants-dermatologiques" },
        { id: "cremes-depigmentantes", name: "كريمات إزالة التصبغ", slug: "cremes-depigmentantes" },
        { id: "soins-anti-taches", name: "علاج البقع", slug: "soins-anti-taches" },
        { id: "soins-contour-yeux", name: "علاج محيط العينين", slug: "soins-contour-yeux" }
      ]
    },
    {
      id: "soins-corps",
      name: "العناية بالجسم",
      slug: "soins-corps",
      icon: <Droplets className="w-4 h-4" />,
      subcategories: [
        { id: "laits-corporels", name: "حليب الجسم", slug: "laits-corporels" },
        { id: "huiles-essentielles", name: "زيوت أساسية", slug: "huiles-essentielles" },
        { id: "huiles-massage", name: "زيوت التدليك", slug: "huiles-massage" },
        { id: "gommages-corporels", name: "مقشرات الجسم", slug: "gommages-corporels" },
        { id: "soins-raffermissants", name: "عناية لشد البشرة", slug: "soins-raffermissants" },
        { id: "soins-anti-vergetures", name: "علاج علامات التمدد", slug: "soins-anti-vergetures" },
        { id: "cremes-nourrissantes", name: "كريمات مغذية", slug: "cremes-nourrissantes" },
        { id: "gels-raffermissants", name: "جل لشد البشرة", slug: "gels-raffermissants" },
        { id: "soins-anticellulite", name: "علاج السيلوليت", slug: "soins-anticellulite" }
      ]
    },
    {
      id: "soins-capillaires",
      name: "العناية بالشعر",
      slug: "soins-capillaires",
      icon: <Heart className="w-4 h-4" />,
      subcategories: [
        { id: "shampoings", name: "شامبو", slug: "shampoings" },
        { id: "apres-shampoings", name: "بلسم", slug: "apres-shampoings" },
        { id: "masques-capillaires", name: "أقنعة للشعر", slug: "masques-capillaires" },
        { id: "huiles-capillaires", name: "زيوت للشعر", slug: "huiles-capillaires" },
        { id: "serums-capillaires", name: "أمصال للشعر", slug: "serums-capillaires" },
        { id: "lotions-antichute", name: "لوشن ضد تساقط الشعر", slug: "lotions-antichute" },
        { id: "soins-keratine", name: "علاج الكيراتين", slug: "soins-keratine" },
        { id: "traitements-cuir-chevelu", name: "علاجات فروة الرأس", slug: "traitements-cuir-chevelu" },
        { id: "shampoings-medicaux", name: "شامبو طبي", slug: "shampoings-medicaux" },
        { id: "soins-antipelliculaires", name: "علاج القشرة", slug: "soins-antipelliculaires" }
      ]
    },
    {
      id: "hygiene-corporelle",
      name: "نظافة الجسم",
      slug: "hygiene-corporelle",
      icon: <Droplets className="w-4 h-4" />,
      subcategories: [
        { id: "savons", name: "صابون", slug: "savons" },
        { id: "gels-douche", name: "جل الاستحمام", slug: "gels-douche" },
        { id: "deodorants", name: "مزيلات العرق", slug: "deodorants" },
        { id: "lingettes", name: "مناديل مبللة", slug: "lingettes" },
        { id: "soins-intimes", name: "عناية حميمة", slug: "soins-intimes" },
        { id: "produits-antibacteriens", name: "منتجات مضادة للبكتيريا", slug: "produits-antibacteriens" },
        { id: "bains-bouche", name: "غسول الفم", slug: "bains-bouche" },
        { id: "dentifrices", name: "معجون أسنان", slug: "dentifrices" },
        { id: "brosses-dents", name: "فرشاة أسنان", slug: "brosses-dents" },
        { id: "gels-mains", name: "جل اليدين", slug: "gels-mains" }
      ]
    },
    {
      id: "hygiene-feminine",
      name: "نظافة نسائية",
      slug: "hygiene-feminine",
      icon: <Heart className="w-4 h-4" />,
      subcategories: [
        { id: "serviettes", name: "فوط صحية", slug: "serviettes" },
        { id: "tampons", name: "تامبون", slug: "tampons" },
        { id: "coupes-menstruelles", name: "أكواب الحيض", slug: "coupes-menstruelles" },
        { id: "gels-intimes", name: "جل حميمي", slug: "gels-intimes" },
        { id: "traitements-gynecologiques", name: "علاجات نسائية (بدون وصفة)", slug: "traitements-gynecologiques" },
        { id: "protege-slips", name: "فوط يومية", slug: "protege-slips" },
        { id: "produits-post-partum", name: "منتجات ما بعد الولادة", slug: "produits-post-partum" }
      ]
    },
    {
      id: "hygiene-masculine",
      name: "نظافة رجالية",
      slug: "hygiene-masculine",
      icon: <Shield className="w-4 h-4" />,
      subcategories: [
        { id: "soins-barbe", name: "عناية باللحية", slug: "soins-barbe" },
        { id: "mousses-raser", name: "رغوة الحلاقة", slug: "mousses-raser" },
        { id: "gels-rasage", name: "جل الحلاقة", slug: "gels-rasage" },
        { id: "lotions-apres-rasage", name: "لوشن بعد الحلاقة", slug: "lotions-apres-rasage" },
        { id: "soins-visage-homme", name: "عناية بالوجه للرجال", slug: "soins-visage-homme" },
        { id: "baumes-barbe", name: "بلسم اللحية", slug: "baumes-barbe" },
        { id: "huiles-barbe", name: "زيوت اللحية", slug: "huiles-barbe" }
      ]
    },
    {
      id: "produits-bebe",
      name: "منتجات الأطفال",
      slug: "produits-bebe",
      icon: <Baby className="w-4 h-4" />,
      subcategories: [
        { id: "laits-infantiles", name: "حليب الأطفال", slug: "laits-infantiles" },
        { id: "soins-corps-bebe", name: "عناية بجسم الطفل", slug: "soins-corps-bebe" },
        { id: "lingettes-bebe", name: "مناديل أطفال", slug: "lingettes-bebe" },
        { id: "gels-lavants-bebe", name: "جل استحمام للأطفال", slug: "gels-lavants-bebe" },
        { id: "cremes-protectrices-bebe", name: "كريمات واقية", slug: "cremes-protectrices-bebe" },
        { id: "accessoires-hygiene-bebe", name: "إكسسوارات النظافة", slug: "accessoires-hygiene-bebe" },
        { id: "huiles-bebe", name: "زيوت للأطفال", slug: "huiles-bebe" },
        { id: "poudres-bebe", name: "بودرة أطفال", slug: "poudres-bebe" },
        { id: "soins-erytheme-fessier", name: "علاج طفح الحفاض", slug: "soins-erytheme-fessier" }
      ]
    },
    {
      id: "premiers-secours",
      name: "الإسعافات الأولية",
      slug: "premiers-secours",
      icon: <HeartPulse className="w-4 h-4" />,
      subcategories: [
        { id: "pansements", name: "ضمادات", slug: "pansements" },
        { id: "compresses", name: "كمادات", slug: "compresses" },
        { id: "bandes", name: "أربطة", slug: "bandes" },
        { id: "antiseptiques", name: "مطهرات", slug: "antiseptiques" },
        { id: "solutions-iodees", name: "محاليل اليود", slug: "solutions-iodees" },
        { id: "desinfectants", name: "معقمات", slug: "desinfectants" },
        { id: "trousses-secours", name: "حقائب إسعافات أولية", slug: "trousses-secours" },
        { id: "sutures-adhesives", name: "غرز لاصقة", slug: "sutures-adhesives" },
        { id: "sprays-cicatrisants", name: "بخاخات التئام الجروح", slug: "sprays-cicatrisants" }
      ]
    },
    {
      id: "materiel-medical-leger",
      name: "معدات طبية خفيفة",
      slug: "materiel-medical-leger",
      icon: <Microscope className="w-4 h-4" />,
      subcategories: [
        { id: "tensiometres", name: "أجهزة قياس الضغط", slug: "tensiometres" },
        { id: "thermometres", name: "موازين حرارة", slug: "thermometres" },
        { id: "oxymetres", name: "أجهزة قياس الأكسجين", slug: "oxymetres" },
        { id: "glucometres", name: "أجهزة قياس السكر", slug: "glucometres" },
        { id: "nebuliseurs", name: "أجهزة استنشاق", slug: "nebuliseurs" },
        { id: "tests-rapides", name: "اختبارات سريعة", slug: "tests-rapides" },
        { id: "aerosols", name: "بخاصات", slug: "aerosols" },
        { id: "pulverisateurs-medicaux", name: "رشاشات طبية", slug: "pulverisateurs-medicaux" }
      ]
    },
    {
      id: "produits-solaires",
      name: "منتجات الوقاية من الشمس",
      slug: "produits-solaires",
      icon: <Sun className="w-4 h-4" />,
      subcategories: [
        { id: "cremes-spf", name: "كريمات واقية من الشمس", slug: "cremes-spf" },
        { id: "sprays-solaires", name: "بخاخات واقية من الشمس", slug: "sprays-solaires" },
        { id: "cremes-teintees", name: "كريمات ملونة", slug: "cremes-teintees" },
        { id: "protections-enfants", name: "حماية للأطفال", slug: "protections-enfants" },
        { id: "soins-apres-soleil", name: "عناية بعد التعرض للشمس", slug: "soins-apres-soleil" },
        { id: "huiles-solaires", name: "زيوت شمسية", slug: "huiles-solaires" },
        { id: "sticks-spf", name: "أصابع واقية من الشمس", slug: "sticks-spf" }
      ]
    },
    {
      id: "phytotherapie",
      name: "التداوي بالأعشاب",
      slug: "phytotherapie",
      icon: <Leaf className="w-4 h-4" />,
      subcategories: [
        { id: "extraits-naturels", name: "مستخلصات طبيعية", slug: "extraits-naturels" },
        { id: "plantes-medicinales", name: "نباتات طبية", slug: "plantes-medicinales" },
        { id: "tisanes-therapeutiques", name: "شاي علاجي", slug: "tisanes-therapeutiques" },
        { id: "gelules-naturelles", name: "كبسولات طبيعية", slug: "gelules-naturelles" },
        { id: "poudres-plantes", name: "مسحوق نباتات", slug: "poudres-plantes" },
        { id: "macerats", name: "منقوعات", slug: "macerats" }
      ]
    },
    {
      id: "aromatherapie",
      name: "العلاج بالروائح",
      slug: "aromatherapie",
      icon: <TestTube className="w-4 h-4" />,
      subcategories: [
        { id: "diffuseurs", name: "ناشرات العطر", slug: "diffuseurs" },
        { id: "huiles-essentielles-pures", name: "زيوت أساسية نقية", slug: "huiles-essentielles-pures" },
        { id: "melanges-therapeutiques", name: "خلطات علاجية", slug: "melanges-therapeutiques" },
        { id: "brumes-aromatiques", name: "رذاذ عطري", slug: "brumes-aromatiques" },
        { id: "synergies-huiles", name: "مزيج زيوت", slug: "synergies-huiles" },
        { id: "roll-on-bien-etre", name: "رول أون للرفاهية", slug: "roll-on-bien-etre" }
      ]
    },
    {
      id: "produits-dietetiques",
      name: "منتجات حمية غذائية",
      slug: "produits-dietetiques",
      icon: <Heart className="w-4 h-4" />,
      subcategories: [
        { id: "proteines", name: "بروتينات", slug: "proteines" },
        { id: "gainers", name: "مكملات زيادة الوزن", slug: "gainers" },
        { id: "bruleurs-graisse", name: "حوارق الدهون", slug: "bruleurs-graisse" },
        { id: "substituts-repas", name: "بدائل الوجبات", slug: "substituts-repas" },
        { id: "produits-detox", name: "منتجات ديتوكس", slug: "produits-detox" },
        { id: "boissons-energetiques", name: "مشروبات طاقة", slug: "boissons-energetiques" },
        { id: "fibres-nutritionnelles", name: "ألياف غذائية", slug: "fibres-nutritionnelles" },
        { id: "super-aliments", name: "أغذية خارقة", slug: "super-aliments" }
      ]
    },
    {
      id: "desinfection-antiseptiques",
      name: "تطهير وتعقيم",
      slug: "desinfection-antiseptiques",
      icon: <Shield className="w-4 h-4" />,
      subcategories: [
        { id: "gels-hydroalcooliques", name: "جل كحولي", slug: "gels-hydroalcooliques" },
        { id: "sprays-desinfectants", name: "بخاخات مطهرة", slug: "sprays-desinfectants" },
        { id: "lingettes-virucides", name: "مناديل قاتلة للفيروسات", slug: "lingettes-virucides" },
        { id: "solutions-antiseptiques-pro", name: "محاليل مطهرة احترافية", slug: "solutions-antiseptiques-pro" },
        { id: "desinfectants-surfaces", name: "مطهرات أسطح", slug: "desinfectants-surfaces" }
      ]
    },
    {
      id: "produits-menagers-chimiques",
      name: "منتجات تنظيف كيميائية",
      slug: "produits-menagers-chimiques",
      icon: <PaintBucket className="w-4 h-4" />,
      subcategories: [
        { id: "detergents-multi-usages", name: "منظفات متعددة الاستعمالات", slug: "detergents-multi-usages" },
        { id: "degraissants", name: "مزيلا شحوم", slug: "degraissants" },
        { id: "desodorisants", name: "معطرات جو", slug: "desodorisants" },
        { id: "nettoyants-sanitaires", name: "منظفات صحية", slug: "nettoyants-sanitaires" },
        { id: "nettoyants-vitres", name: "منظفات زجاج", slug: "nettoyants-vitres" },
        { id: "anticalcaire", name: "مضاد للكلس", slug: "anticalcaire" }
      ]
    },
    {
      id: "produits-entretien-industriels",
      name: "منتجات صيانة صناعية",
      slug: "produits-entretien-industriels",
      icon: <Sprout className="w-4 h-4" />,
      subcategories: [
        { id: "decapants", name: "مذيبات طلاء", slug: "decapants" },
        { id: "solvants-professionnels", name: "مذيبات احترافية", slug: "solvants-professionnels" },
        { id: "agents-degraissants-puissants", name: "مزيلا شحوم قوية", slug: "agents-degraissants-puissants" },
        { id: "nettoyants-machines", name: "منظفات آلات", slug: "nettoyants-machines" },
        { id: "detartrants-industriels", name: "مزيلا ترسبات صناعية", slug: "detartrants-industriels" }
      ]
    },
    {
      id: "peintures-solvants",
      name: "دهانات ومذيبات",
      slug: "peintures-solvants",
      icon: <Palette className="w-4 h-4" />,
      subcategories: [
        { id: "peintures-chimiques", name: "دهانات كيميائية", slug: "peintures-chimiques" },
        { id: "resines", name: "راتنجات", slug: "resines" },
        { id: "diluants", name: "مخففات", slug: "diluants" },
        { id: "acetone", name: "أسيتون", slug: "acetone" },
        { id: "white-spirit", name: "وايت سبيريت", slug: "white-spirit" },
        { id: "vernis-techniques", name: "ورنيش تقني", slug: "vernis-techniques" },
        { id: "durcisseurs", name: "مصلبات", slug: "durcisseurs" },
        { id: "solvants-specialises", name: "مذيبات متخصصة", slug: "solvants-specialises" }
      ]
    },
    {
      id: "produits-piscine",
      name: "منتجات المسابح",
      slug: "produits-piscine",
      icon: <Droplets className="w-4 h-4" />,
      subcategories: [
        { id: "chlore", name: "كلور", slug: "chlore" },
        { id: "ph-plus", name: "رافع pH", slug: "ph-plus" },
        { id: "ph-moins", name: "خافض pH", slug: "ph-moins" },
        { id: "floculants", name: "مواد تلبد", slug: "floculants" },
        { id: "algicides", name: "مبيدات طحالب", slug: "algicides" },
        { id: "stabilisateurs", name: "مثبتات", slug: "stabilisateurs" },
        { id: "kits-analyse-eau", name: "أطقم تحليل مياه", slug: "kits-analyse-eau" },
        { id: "clarifiants", name: "مروقات", slug: "clarifiants" },
        { id: "produits-hivernage", name: "منتجات التشتية", slug: "produits-hivernage" }
      ]
    },
    {
      id: "produits-agricoles-chimiques",
      name: "منتجات زراعية كيميائية",
      slug: "produits-agricoles-chimiques",
      icon: <Sprout className="w-4 h-4" />,
      subcategories: [
        { id: "engrais-npk", name: "أسمدة NPK", slug: "engrais-npk" },
        { id: "pesticides", name: "مبيدات حشرية", slug: "pesticides" },
        { id: "herbicides", name: "مبيدات أعشاب", slug: "herbicides" },
        { id: "fongicides", name: "مبيدات فطريات", slug: "fongicides" },
        { id: "stimulateurs-croissance", name: "محفزات نمو", slug: "stimulateurs-croissance" },
        { id: "regulateurs", name: "منظمات", slug: "regulateurs" },
        { id: "adjuvants-agricoles", name: "مواد مساعدة زراعية", slug: "adjuvants-agricoles" }
      ]
    },
    {
      id: "produits-laboratoires",
      name: "منتجات مخبرية",
      slug: "produits-laboratoires",
      icon: <Beaker className="w-4 h-4" />,
      subcategories: [
        { id: "reactifs-chimiques", name: "كواشف كيميائية", slug: "reactifs-chimiques" },
        { id: "solutions-tampons", name: "محاليل منظمة", slug: "solutions-tampons" },
        { id: "alcools", name: "كحوليات", slug: "alcools" },
        { id: "gels-specifiques", name: "أنواع جل محددة", slug: "gels-specifiques" },
        { id: "kits-analyse", name: "أطقم تحليل", slug: "kits-analyse" },
        { id: "acides", name: "أحماض", slug: "acides" },
        { id: "bases", name: "قواعد", slug: "bases" },
        { id: "solvants-laboratoire", name: "مذيبات مخبرية", slug: "solvants-laboratoire" }
      ]
    },
    {
      id: "equipements-securite-chimique",
      name: "معدات السلامة الكيميائية",
      slug: "equipements-securite-chimique",
      icon: <Shield className="w-4 h-4" />,
      subcategories: [
        { id: "gants-nitrile", name: "قفازات نيتريل", slug: "gants-nitrile" },
        { id: "lunettes-protection", name: "نظارات حماية", slug: "lunettes-protection" },
        { id: "masques-respiratoires", name: "أقنعة تنفس", slug: "masques-respiratoires" },
        { id: "combinaisons-anti-chimiques", name: "بدلات واقية من الكيماويات", slug: "combinaisons-anti-chimiques" },
        { id: "protections-faciales", name: "حماية للوجه", slug: "protections-faciales" },
        { id: "chaussures-anti-produits-corrosifs", name: "أحذية مقاومة للمواد الأكالة", slug: "chaussures-anti-produits-corrosifs" }
      ]
    },
    {
      id: "emballages-chimiques",
      name: "تغليف المواد الكيميائية",
      slug: "emballages-chimiques",
      icon: <Package className="w-4 h-4" />,
      subcategories: [
        { id: "bidons", name: "بيدونات", slug: "bidons" },
        { id: "flacons-resistants", name: "قوارير مقاومة", slug: "flacons-resistants" },
        { id: "bouteilles-securisees", name: "زجاجات آمنة", slug: "bouteilles-securisees" },
        { id: "contenants-anti-corrosifs", name: "حاويات مضادة للتآكل", slug: "contenants-anti-corrosifs" },
        { id: "cuves", name: "خزانات", slug: "cuves" },
        { id: "petits-contenants-dosage", name: "حاويات جرعات صغيرة", slug: "petits-contenants-dosage" }
      ]
    },
    {
      id: "hygiene-professionnelle",
      name: "نظافة مهنية",
      slug: "hygiene-professionnelle",
      icon: <Droplets className="w-4 h-4" />,
      subcategories: [
        { id: "savons-industriels", name: "صابون صناعي", slug: "savons-industriels" },
        { id: "desinfectants-pro", name: "مطهرا ت احترافية", slug: "desinfectants-pro" },
        { id: "nettoyants-sols-hopitaux", name: "منظفات أرضيات المستشفيات", slug: "nettoyants-sols-hopitaux" },
        { id: "produits-haccp", name: "منتجات HACCP", slug: "produits-haccp" },
        { id: "detergents-alimentaires", name: "منظفات غذائية", slug: "detergents-alimentaires" }
      ]
    },
    {
      id: "cosmetiques-specialises",
      name: "مستحضرات تجميل متخصصة",
      slug: "cosmetiques-specialises",
      icon: <Sparkles className="w-4 h-4" />,
      subcategories: [
        { id: "soins-hypoallergeniques", name: "عناية مضادة للحساسية", slug: "soins-hypoallergeniques" },
        { id: "cremes-medicales", name: "كريمات طبية", slug: "cremes-medicales" },
        { id: "soins-dermatologiques-specialises", name: "عناية جلدية متخصصة", slug: "soins-dermatologiques-specialises" },
        { id: "cremes-cicatrisantes", name: "كريمات التئام الجروح", slug: "cremes-cicatrisantes" },
        { id: "protections-cutanees-medicales", name: "حماية جلدية طبية", slug: "protections-cutanees-medicales" }
      ]
    }
  ]
};
