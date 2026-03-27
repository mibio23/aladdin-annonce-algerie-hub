import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { HeartPulse, Sparkles, Droplets, Sun, Leaf, Shield, Pill, Microscope, Beaker, Package, Palette, Sprout, Heart } from "lucide-react";

export const santeBeauteAr: MenuCategory = {
  id: "sante-beaute",
  name: "الصحة والجمال",
  slug: "sante-beaute",
  icon: <HeartPulse className="w-4 h-4" />,
  subcategories: [
    { id: "soins-visage", name: "العناية بالوجه", slug: "soins-visage", icon: <Sparkles className="w-4 h-4" />, subcategories: [
      { id: "cremes-hydratantes", name: "كريمات مرطبة", slug: "cremes-hydratantes" },
      { id: "cremes-anti-age", name: "كريمات مضادة للشيخوخة", slug: "cremes-anti-age" },
      { id: "serums", name: "سيروم", slug: "serums" },
      { id: "soins-anti-acne", name: "علاجات حب الشباب", slug: "soins-anti-acne" },
      { id: "masques", name: "أقنعة", slug: "masques" },
      { id: "exfoliants", name: "مقشرات", slug: "exfoliants" },
      { id: "nettoyants-visage", name: "منظفات الوجه", slug: "nettoyants-visage" },
      { id: "toniques", name: "تونر", slug: "toniques" },
      { id: "soins-anti-taches", name: "مضادات البقع", slug: "soins-anti-taches" },
      { id: "cremes-contour-yeux", name: "كريمات محيط العين", slug: "cremes-contour-yeux" },
      { id: "patchs-yeux", name: "لاصقات العين", slug: "patchs-yeux" }
    ]},
    { id: "soins-corps", name: "العناية بالجسم", slug: "soins-corps", icon: <Droplets className="w-4 h-4" />, subcategories: [
      { id: "laits-corporels", name: "لوشن للجسم", slug: "laits-corporels" },
      { id: "cremes-nourrissantes", name: "كريمات مغذية", slug: "cremes-nourrissantes" },
      { id: "gommages-corps", name: "مقشرات الجسم", slug: "gommages-corps" },
      { id: "huiles-corporelles", name: "زيوت للجسم", slug: "huiles-corporelles" },
      { id: "gels-minceur", name: "جل للتنحيف", slug: "gels-minceur" },
      { id: "soins-anti-vergetures", name: "علاجات لعلامات التمدد", slug: "soins-anti-vergetures" },
      { id: "soins-raffermissants", name: "علاجات شد البشرة", slug: "soins-raffermissants" },
      { id: "lotions-parfumees", name: "لوشن معطر", slug: "lotions-parfumees" }
    ]},
    { id: "hygiene-corporelle", name: "النظافة الشخصية", slug: "hygiene-corporelle", icon: <Droplets className="w-4 h-4" />, subcategories: [
      { id: "gels-douche", name: "جل استحمام", slug: "gels-douche" },
      { id: "savons-solides", name: "صابون صلب", slug: "savons-solides" },
      { id: "savons-liquides", name: "صابون سائل", slug: "savons-liquides" },
      { id: "deodorants", name: "مزيلات العرق", slug: "deodorants" },
      { id: "lingettes", name: "مناديل مبللة", slug: "lingettes" },
      { id: "soins-intimes", name: "عناية حميمة", slug: "soins-intimes" },
      { id: "bains-moussants", name: "حمامات رغوية", slug: "bains-moussants" },
      { id: "sels-de-bain", name: "أملاح الاستحمام", slug: "sels-de-bain" },
      { id: "huiles-de-bain", name: "زيوت الاستحمام", slug: "huiles-de-bain" }
    ]},
    { id: "soins-capillaires", name: "العناية بالشعر", slug: "soins-capillaires", icon: <Leaf className="w-4 h-4" />, subcategories: [
      { id: "shampoings", name: "شامبو", slug: "shampoings" },
      { id: "apres-shampoings", name: "بلسم", slug: "apres-shampoings" },
      { id: "masques-capillaires", name: "أقنعة الشعر", slug: "masques-capillaires" },
      { id: "serums-capillaires", name: "سيروم الشعر", slug: "serums-capillaires" },
      { id: "soins-keratine", name: "علاجات الكيراتين", slug: "soins-keratine" },
      { id: "huiles-capillaires", name: "زيوت الشعر", slug: "huiles-capillaires" },
      { id: "soins-antichute", name: "علاجات تساقط الشعر", slug: "soins-antichute" },
      { id: "shampoings-medicaux", name: "شامبو طبي", slug: "shampoings-medicaux" },
      { id: "produits-coiffants", name: "منتجات تصفيف", slug: "produits-coiffants" }
    ]},
    { id: "coiffure-styling", name: "تصفيف الشعر", slug: "coiffure-styling", icon: <Palette className="w-4 h-4" />, subcategories: [
      { id: "fers-a-lisser", name: "مكواة تمليس", slug: "fers-a-lisser" },
      { id: "seche-cheveux", name: "مجففات الشعر", slug: "seche-cheveux" },
      { id: "tondeuses", name: "آلات حلاقة", slug: "tondeuses" },
      { id: "brosses-chauffantes", name: "فرش ساخنة", slug: "brosses-chauffantes" },
      { id: "bigoudis", name: "بكرات", slug: "bigoudis" },
      { id: "peignes", name: "أمشاط", slug: "peignes" },
      { id: "brosses-professionnelles", name: "فرش احترافية", slug: "brosses-professionnelles" },
      { id: "sprays-coiffants", name: "بخاخات تصفيف", slug: "sprays-coiffants" },
      { id: "mousses-volume", name: "رغوات حجم", slug: "mousses-volume" },
      { id: "gels", name: "جيل", slug: "gels" }
    ]},
    { id: "parfums-fragrances", name: "العطور والروائح", slug: "parfums-fragrances", icon: <Sun className="w-4 h-4" />, subcategories: [
      { id: "parfums-homme", name: "عطور رجالية", slug: "parfums-homme" },
      { id: "parfums-femme", name: "عطور نسائية", slug: "parfums-femme" },
      { id: "eaux-de-toilette", name: "ماء تواليت", slug: "eaux-de-toilette" },
      { id: "eaux-de-parfum", name: "ماء عطر", slug: "eaux-de-parfum" },
      { id: "brumes-corporelles", name: "رذاذ للجسم", slug: "brumes-corporelles" },
      { id: "parfums-orientaux", name: "عطور شرقية", slug: "parfums-orientaux" },
      { id: "parfums-de-luxe", name: "عطور فاخرة", slug: "parfums-de-luxe" },
      { id: "coffrets-parfum", name: "مجموعات عطر", slug: "coffrets-parfum" }
    ]},
    { id: "maquillage", name: "مكياج", slug: "maquillage", icon: <Palette className="w-4 h-4" />, subcategories: [
      { id: "fonds-de-teint", name: "كريم أساس", slug: "fonds-de-teint" },
      { id: "poudres", name: "بودرة", slug: "poudres" },
      { id: "anticernes", name: "خافي عيوب", slug: "anticernes" },
      { id: "blush", name: "أحمر خدود", slug: "blush" },
      { id: "highlighters", name: "هايلايتر", slug: "highlighters" },
      { id: "palettes-yeux", name: "لوحات عيون", slug: "palettes-yeux" },
      { id: "mascaras", name: "ماسكارا", slug: "mascaras" },
      { id: "eyeliners", name: "أيلانير", slug: "eyeliners" },
      { id: "crayons-levres", name: "أقلام شفاه", slug: "crayons-levres" },
      { id: "rouges-a-levres", name: "أحمر شفاه", slug: "rouges-a-levres" },
      { id: "gloss", name: "غلوس", slug: "gloss" },
      { id: "fixateurs-makeup", name: "مثبت مكياج", slug: "fixateurs-makeup" }
    ]},
    { id: "accessoires-beaute", name: "إكسسوارات الجمال", slug: "accessoires-beaute", icon: <Package className="w-4 h-4" />, subcategories: [
      { id: "pinceaux-maquillage", name: "فرش مكياج", slug: "pinceaux-maquillage" },
      { id: "beauty-blenders", name: "بيوتي بلندرز", slug: "beauty-blenders" },
      { id: "miroirs", name: "مرايا", slug: "miroirs" },
      { id: "trousses-beaute", name: "حقائب تجميل", slug: "trousses-beaute" },
      { id: "eponges-de-bain", name: "إسفنجات استحمام", slug: "eponges-de-bain" },
      { id: "gants-exfoliants", name: "قفازات تقشير", slug: "gants-exfoliants" },
      { id: "limes", name: "مبارد", slug: "limes" },
      { id: "coupe-ongles", name: "مقصات أظافر", slug: "coupe-ongles" },
      { id: "pinces-a-epiler", name: "ملقط", slug: "pinces-a-epiler" }
    ]},
    { id: "manucure-pedicure", name: "العناية بالأظافر والأقدام", slug: "manucure-pedicure", icon: <Sparkles className="w-4 h-4" />, subcategories: [
      { id: "vernis", name: "طلاء أظافر", slug: "vernis" },
      { id: "vernis-semi-permanent", name: "طلاء شبه دائم", slug: "vernis-semi-permanent" },
      { id: "gels-uv", name: "جل UV", slug: "gels-uv" },
      { id: "lampes-uv", name: "مصابيح UV", slug: "lampes-uv" },
      { id: "kits-manucure", name: "مجموعات مانيكير", slug: "kits-manucure" },
      { id: "dissolvants", name: "مزيلات", slug: "dissolvants" },
      { id: "soins-des-ongles", name: "عناية بالأظافر", slug: "soins-des-ongles" },
      { id: "faux-ongles", name: "أظافر صناعية", slug: "faux-ongles" },
      { id: "colle-pour-nails", name: "لاصق أظافر", slug: "colle-pour-nails" },
      { id: "outils-pro", name: "أدوات احترافية", slug: "outils-pro" }
    ]},
    { id: "produits-solaires", name: "منتجات الشمس", slug: "produits-solaires", icon: <Sun className="w-4 h-4" />, subcategories: [
      { id: "cremes-spf", name: "كريمات SPF", slug: "cremes-spf" },
      { id: "sprays-solaires", name: "بخاخات", slug: "sprays-solaires" },
      { id: "huiles-solaires", name: "زيوت الشمس", slug: "huiles-solaires" },
      { id: "protections-enfants", name: "حماية الأطفال", slug: "protections-enfants" },
      { id: "sticks-solaires", name: "أقلام الشمس", slug: "sticks-solaires" },
      { id: "apres-soleil", name: "بعد الشمس", slug: "apres-soleil" },
      { id: "cremes-teintees-spf", name: "كريمات ملونة SPF", slug: "cremes-teintees-spf" }
    ]},
    { id: "beaute-naturelle-bio", name: "الجمال الطبيعي والعضوي", slug: "beaute-naturelle-bio", icon: <Leaf className="w-4 h-4" />, subcategories: [
      { id: "huiles-naturelles", name: "زيوت طبيعية", slug: "huiles-naturelles" },
      { id: "beurres-vegetaux", name: "زبد نباتي", slug: "beurres-vegetaux" },
      { id: "eau-florale", name: "ماء زهري", slug: "eau-florale" },
      { id: "hydrolats", name: "هيدروسول", slug: "hydrolats" },
      { id: "savons-artisanaux", name: "صابون حرفي", slug: "savons-artisanaux" },
      { id: "cosmetiques-bio", name: "مستحضرات تجميل عضوية", slug: "cosmetiques-bio" },
      { id: "soins-solides", name: "عناية صلبة", slug: "soins-solides" },
      { id: "produits-vegan", name: "منتجات نباتية", slug: "produits-vegan" }
    ]},
    { id: "aromatherapie", name: "العلاج بالروائح", slug: "aromatherapie", icon: <Leaf className="w-4 h-4" />, subcategories: [
      { id: "huiles-essentielles", name: "زيوت أساسية", slug: "huiles-essentielles" },
      { id: "diffuseurs", name: "ناشرات", slug: "diffuseurs" },
      { id: "synergies-bien-etre", name: "خلاصات الرفاهية", slug: "synergies-bien-etre" },
      { id: "roll-on-relaxants", name: "رول-أون مهدئ", slug: "roll-on-relaxants" },
      { id: "brumes-parfumees", name: "رذاذ معطر", slug: "brumes-parfumees" },
      { id: "huiles-massage-relaxantes", name: "زيوت تدليك مهدئة", slug: "huiles-massage-relaxantes" }
    ]},
    { id: "phytotherapie", name: "العلاج بالنباتات", slug: "phytotherapie", icon: <Sprout className="w-4 h-4" />, subcategories: [
      { id: "plantes-medicinales", name: "نباتات طبية", slug: "plantes-medicinales" },
      { id: "extraits-naturels", name: "مستخلصات طبيعية", slug: "extraits-naturels" },
      { id: "tisanes-sante", name: "شاي صحي", slug: "tisanes-sante" },
      { id: "complements-naturels", name: "مكملات طبيعية", slug: "complements-naturels" },
      { id: "poudres-de-plantes", name: "مساحيق نباتية", slug: "poudres-de-plantes" },
      { id: "gelules-phytotherapie", name: "كبسولات عشبية", slug: "gelules-phytotherapie" }
    ]},
    { id: "sante-generale", name: "الصحة العامة", slug: "sante-generale", icon: <Pill className="w-4 h-4" />, subcategories: [
      { id: "vitamines", name: "فيتامينات", slug: "vitamines" },
      { id: "complements-alimentaires", name: "مكملات غذائية", slug: "complements-alimentaires" },
      { id: "mineraux", name: "معادن", slug: "mineraux" },
      { id: "probiotiques", name: "بروبيوتيك", slug: "probiotiques" },
      { id: "produits-immunite", name: "تقوية المناعة", slug: "produits-immunite" },
      { id: "antioxydants", name: "مضادات الأكسدة", slug: "antioxydants" },
      { id: "omega-3", name: "أوميغا-3", slug: "omega-3" },
      { id: "produits-detox", name: "منظفات الجسم", slug: "produits-detox" },
      { id: "supplements-sportifs", name: "مكملات رياضية", slug: "supplements-sportifs" }
    ]},
    { id: "medicaments-sans-ordonnance", name: "أدوية بدون وصفة", slug: "medicaments-sans-ordonnance", icon: <Shield className="w-4 h-4" />, subcategories: [
      { id: "antalgiques", name: "مسكنات", slug: "antalgiques" },
      { id: "produits-orl", name: "منتجات الأنف والأذن والحنجرة", slug: "produits-orl" },
      { id: "digestifs", name: "هضم", slug: "digestifs" },
      { id: "anti-acides", name: "مضادات الحموضة", slug: "anti-acides" },
      { id: "sirops", name: "شرابات", slug: "sirops" },
      { id: "pastilles", name: "أقراص", slug: "pastilles" },
      { id: "antihistaminiques", name: "مضادات الهيستامين", slug: "antihistaminiques" },
      { id: "rhume", name: "نزلات البرد", slug: "rhume" }
    ]},
    { id: "premiers-secours", name: "الإسعافات الأولية", slug: "premiers-secours", icon: <Shield className="w-4 h-4" />, subcategories: [
      { id: "pansements", name: "ضمادات", slug: "pansements" },
      { id: "bandes", name: "لفافات", slug: "bandes" },
      { id: "compresses", name: "كمّادات", slug: "compresses" },
      { id: "antiseptiques", name: "مطهرات", slug: "antiseptiques" },
      { id: "solutions-iodées", name: "محاليل اليود", slug: "solutions-iodees" },
      { id: "sprays-cicatrisants", name: "بخاخات التئام", slug: "sprays-cicatrisants" },
      { id: "trousses-premiers-secours", name: "حقائب إسعاف أولي", slug: "trousses-premiers-secours" }
    ]},
    { id: "materiel-medical-leger", name: "معدات طبية خفيفة", slug: "materiel-medical-leger", icon: <Microscope className="w-4 h-4" />, subcategories: [
      { id: "tensiometres", name: "أجهزة ضغط", slug: "tensiometres" },
      { id: "thermometres", name: "مقاييس حرارة", slug: "thermometres" },
      { id: "glucometres", name: "أجهزة سكر", slug: "glucometres" },
      { id: "oxymetres", name: "أجهزة أكسجة", slug: "oxymetres" },
      { id: "nebuliseurs", name: "أجهزة رذاذ", slug: "nebuliseurs" },
      { id: "tests-rapides", name: "اختبارات سريعة", slug: "tests-rapides" },
      { id: "coussins-chauffants", name: "وسادات حرارية", slug: "coussins-chauffants" },
      { id: "ceintures-lombaires", name: "أحزمة ظهر", slug: "ceintures-lombaires" }
    ]},
    { id: "hygiene-bucco-dentaire", name: "نظافة الفم", slug: "hygiene-bucco-dentaire", icon: <Droplets className="w-4 h-4" />, subcategories: [
      { id: "dentifrices", name: "معاجين أسنان", slug: "dentifrices" },
      { id: "bains-de-bouche", name: "غسول فم", slug: "bains-de-bouche" },
      { id: "brosses-a-dents", name: "فرش أسنان", slug: "brosses-a-dents" },
      { id: "fils-dentaires", name: "خيوط أسنان", slug: "fils-dentaires" },
      { id: "blanchiment-dentaire", name: "تبييض الأسنان", slug: "blanchiment-dentaire" },
      { id: "kits-orthodontiques", name: "أطقم تقويم", slug: "kits-orthodontiques" }
    ]},
    { id: "hygiene-feminine", name: "نظافة نسائية", slug: "hygiene-feminine", icon: <Heart className="w-4 h-4" />, subcategories: [
      { id: "serviettes", name: "فوط", slug: "serviettes" },
      { id: "tampons", name: "سدادات", slug: "tampons" },
      { id: "coupes-menstruelles", name: "أكواب حيض", slug: "coupes-menstruelles" },
      { id: "gels-intimes", name: "جل حميمي", slug: "gels-intimes" },
      { id: "soins-post-partum", name: "رعاية بعد الولادة", slug: "soins-post-partum" },
      { id: "protections-urinaires", name: "حماية بولية", slug: "protections-urinaires" }
    ]},
    { id: "hygiene-masculine", name: "نظافة رجالية", slug: "hygiene-masculine", icon: <Heart className="w-4 h-4" />, subcategories: [
      { id: "soins-barbe", name: "عناية اللحية", slug: "soins-barbe" },
      { id: "mousses-a-raser", name: "رغوة حلاقة", slug: "mousses-a-raser" },
      { id: "gels-de-rasage", name: "جل حلاقة", slug: "gels-de-rasage" },
      { id: "huiles-barbe", name: "زيوت اللحية", slug: "huiles-barbe" },
      { id: "lotions-apres-rasage", name: "لوشن بعد الحلاقة", slug: "lotions-apres-rasage" },
      { id: "soins-visage-homme", name: "عناية وجه الرجال", slug: "soins-visage-homme" }
    ]},
    { id: "materiel-esthetique-pro", name: "معدات تجميل احترافية", slug: "materiel-esthetique-pro", icon: <Beaker className="w-4 h-4" />, subcategories: [
      { id: "appareils-led", name: "أجهزة LED", slug: "appareils-led" },
      { id: "appareils-massage-visage", name: "أجهزة تدليك الوجه", slug: "appareils-massage-visage" },
      { id: "microdermabrasion", name: "تقشير دقيق", slug: "microdermabrasion" },
      { id: "epilateurs-pro", name: "آلات إزالة شعر احترافية", slug: "epilateurs-pro" },
      { id: "lits-esthetique", name: "أسرة تجميل", slug: "lits-esthetique" },
      { id: "tabourets", name: "مقاعد", slug: "tabourets" },
      { id: "sterilisateurs-uv", name: "مطهرات UV", slug: "sterilisateurs-uv" }
    ]},
    { id: "epilation", name: "إزالة الشعر", slug: "epilation", icon: <Sparkles className="w-4 h-4" />, subcategories: [
      { id: "cire-chaude", name: "شمع ساخن", slug: "cire-chaude" },
      { id: "cire-froide", name: "شمع بارد", slug: "cire-froide" },
      { id: "bandes", name: "شرائط", slug: "bandes" },
      { id: "epilateurs-electriques", name: "آلات إزالة كهربائية", slug: "epilateurs-electriques" },
      { id: "cremes-depilatoires", name: "كريمات إزالة الشعر", slug: "cremes-depilatoires" },
      { id: "kits-de-cire", name: "مجموعات شمع", slug: "kits-de-cire" }
    ]},
    { id: "massage-bien-etre", name: "التدليك والرفاهية", slug: "massage-bien-etre", icon: <HeartPulse className="w-4 h-4" />, subcategories: [
      { id: "huiles-massage", name: "زيوت", slug: "huiles-massage" },
      { id: "cremes-chauffantes", name: "كريمات تسخين", slug: "cremes-chauffantes" },
      { id: "balles-massage", name: "كرات تدليك", slug: "balles-massage" },
      { id: "appareils-anti-douleur", name: "أجهزة تخفيف الألم", slug: "appareils-anti-douleur" },
      { id: "masseurs-electriques", name: "مدلكات كهربائية", slug: "masseurs-electriques" }
    ]},
    { id: "beaute-du-regard", name: "جمال العيون", slug: "beaute-du-regard", icon: <Sparkles className="w-4 h-4" />, subcategories: [
      { id: "extensions-de-cils", name: "رموش صناعية", slug: "extensions-de-cils" },
      { id: "colles-pour-cils", name: "مواد لاصقة للرموش", slug: "colles-pour-cils" },
      { id: "serums-cils", name: "سيروم للرموش", slug: "serums-cils" },
      { id: "faux-cils", name: "رموش مزيفة", slug: "faux-cils" },
      { id: "kits-professionnels", name: "مجموعات احترافية", slug: "kits-professionnels" }
    ]},
    { id: "produits-spa-domicile", name: "منتجات السبا المنزلية", slug: "produits-spa-domicile", icon: <Droplets className="w-4 h-4" />, subcategories: [
      { id: "diffuseurs-huiles", name: "ناشرات زيوت", slug: "diffuseurs-huiles" },
      { id: "bougies-parfumees", name: "شموع معطرة", slug: "bougies-parfumees" },
      { id: "sels-de-bain-spa", name: "أملاح الاستحمام", slug: "sels-de-bain-spa" },
      { id: "gommages-spa", name: "مقشرات سبا", slug: "gommages-spa" },
      { id: "soins-relaxants", name: "علاجات مهدئة", slug: "soins-relaxants" }
    ]},
    { id: "dermatologie-specialisee", name: "منتجات جلدية متخصصة", slug: "dermatologie-specialisee", icon: <Shield className="w-4 h-4" />, subcategories: [
      { id: "cremes-medicales", name: "كريمات طبية", slug: "cremes-medicales" },
      { id: "peaux-sensibles", name: "عناية بالبشرة الحساسة", slug: "peaux-sensibles" },
      { id: "produits-hypoallergenique", name: "منتجات منخفضة التحسس", slug: "produits-hypoallergenique" },
      { id: "traitements-non-prescrits", name: "علاجات غير موصوفة", slug: "traitements-non-prescrits" }
    ]},
    { id: "nutrition-beaute", name: "تغذية الجمال", slug: "nutrition-beaute", icon: <Pill className="w-4 h-4" />, subcategories: [
      { id: "collagene", name: "كولاجين", slug: "collagene" },
      { id: "acide-hyaluronique", name: "حمض الهيالورونيك", slug: "acide-hyaluronique" },
      { id: "complements-peau-ongles-cheveux", name: "مكملات للبشرة والأظافر والشعر", slug: "complements-peau-ongles-cheveux" },
      { id: "gummies-beaute", name: "حلويات جمالية", slug: "gummies-beaute" }
    ]},
    { id: "accessoires-salle-de-bain", name: "إكسسوارات الحمام", slug: "accessoires-salle-de-bain", icon: <Package className="w-4 h-4" />, subcategories: [
      { id: "porte-savons", name: "حاملات صابون", slug: "porte-savons" },
      { id: "rangements-cosmetiques", name: "تخزين مستحضرات التجميل", slug: "rangements-cosmetiques" },
      { id: "organisateurs", name: "منظمات", slug: "organisateurs" },
      { id: "flacons-rechargeables", name: "عبوات قابلة لإعادة التعبئة", slug: "flacons-rechargeables" },
      { id: "distributeurs", name: "موزعات", slug: "distributeurs" }
    ]},
    { id: "blanchiment-dentaire", name: "منتجات تبييض الأسنان", slug: "blanchiment-dentaire", icon: <Sparkles className="w-4 h-4" />, subcategories: [
      { id: "strips-blanchissants", name: "شرائط تبييض", slug: "strips-blanchissants" },
      { id: "gels-blanchissants", name: "جل تبييض", slug: "gels-blanchissants" },
      { id: "kits-led", name: "أطقم LED", slug: "kits-led" },
      { id: "mousses-blanchissantes", name: "رغوات تبييض", slug: "mousses-blanchissantes" }
    ]}
  ]
};