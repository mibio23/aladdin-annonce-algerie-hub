import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Briefcase } from "lucide-react";

export const sacsEtBagagesAr: MenuCategory = {
  id: "sacs-et-bagages",
  name: "حقائب وأمتعة",
  slug: "sacs-et-bagages",
  icon: <Briefcase className="w-4 h-4" />,
  subcategories: [
    {
      id: "sacs-a-main",
      name: "حقائب يد (نساء & للجنسين)",
      slug: "sacs-a-main",
      subcategories: [
        { id: "cabas-grand", name: "حقائب تسوق كبيرة", slug: "cabas-grand" },
        { id: "cabas-moyen", name: "حقائب تسوق متوسطة", slug: "cabas-moyen" },
        { id: "cabas-rigide", name: "حقائب تسوق صلبة", slug: "cabas-rigide" },
        { id: "cabas-souple", name: "حقائب تسوق مرنة", slug: "cabas-souple" },
        { id: "bandouliere-mini", name: "حقائب كتف صغيرة", slug: "bandouliere-mini" },
        { id: "bandouliere-moyen", name: "حقائب كتف متوسطة", slug: "bandouliere-moyen" },
        { id: "bandouliere-matelasse", name: "حقائب كتف مبطنة", slug: "bandouliere-matelasse" },
        { id: "bandouliere-sport", name: "حقائب كتف رياضية", slug: "bandouliere-sport" },
        { id: "sacs-seau", name: "حقائب دلو", slug: "sacs-seau" },
        { id: "sacs-tote", name: "حقائب توت", slug: "sacs-tote" },
        { id: "sacs-hobo", name: "حقائب هوبو", slug: "sacs-hobo" },
        { id: "sacs-bowling", name: "حقائب بولينغ", slug: "sacs-bowling" },
        { id: "pochettes-soiree", name: "حقائب كلاتش للمساء", slug: "pochettes-soiree" },
        { id: "pochettes-mariage", name: "حقائب كلاتش للزفاف", slug: "pochettes-mariage" },
        { id: "pochettes-minimalistes", name: "حقائب كلاتش بسيطة", slug: "pochettes-minimalistes" },
        { id: "mini-bags-ville", name: "حقائب صغيرة للمدينة", slug: "mini-bags-ville" },
        { id: "mini-bags-luxe", name: "حقائب صغيرة فاخرة", slug: "mini-bags-luxe" },
        { id: "sacs-demi-lune", name: "حقائب نصف قمر", slug: "sacs-demi-lune" },
        { id: "sacs-en-cuir-veritable", name: "حقائب من الجلد الطبيعي", slug: "sacs-en-cuir-veritable" },
        { id: "sacs-en-cuir-synthetique", name: "حقائب من الجلد الصناعي", slug: "sacs-en-cuir-synthetique" },
        { id: "sacs-en-cuir-artisanal", name: "حقائب جلد مصنوعة يدويًا", slug: "sacs-en-cuir-artisanal" },
        { id: "sacs-en-toile-tissu", name: "حقائب من القماش والنسيج", slug: "sacs-en-toile-tissu" }
      ]
    },
    {
      id: "sacs-a-dos",
      name: "حقائب ظهر",
      slug: "sacs-a-dos",
      subcategories: [
        { id: "urbains", name: "حقائب ظهر حضرية", slug: "urbains" },
        { id: "antivol", name: "حقائب ظهر مضادة للسرقة", slug: "antivol" },
        { id: "business-porte-pc", name: "حقائب ظهر للأعمال (لابتوب)", slug: "business-porte-pc" },
        { id: "sport", name: "حقائب ظهر رياضية", slug: "sport" },
        { id: "randonnee-20l", name: "حقائب رحلات وتريك 20 لتر", slug: "randonnee-20l" },
        { id: "randonnee-30l", name: "حقائب رحلات وتريك 30 لتر", slug: "randonnee-30l" },
        { id: "randonnee-50l-plus", name: "حقائب رحلات وتريك 50 لتر+", slug: "randonnee-50l-plus" },
        { id: "tactiques-militaires", name: "حقائب تكتيكية وعسكرية", slug: "tactiques-militaires" },
        { id: "scolaires-enfant-ado", name: "حقائب ظهر مدرسية (أطفال/مراهقون)", slug: "scolaires-enfant-ado" },
        { id: "minimalistes", name: "حقائب ظهر بسيطة", slug: "minimalistes" },
        { id: "voyage-cabine", name: "حقائب ظهر سفر بحجم المقصورة", slug: "voyage-cabine" }
      ]
    },
    {
      id: "sacs-voyage-week-end",
      name: "حقائب سفر ونهاية الأسبوع",
      slug: "sacs-voyage-week-end",
      subcategories: [
        { id: "voyage-souples", name: "حقائب سفر مرنة", slug: "voyage-souples" },
        { id: "voyage-semi-rigides", name: "حقائب سفر شبه صلبة", slug: "voyage-semi-rigides" },
        { id: "duffle-bags", name: "حقائب دفل", slug: "duffle-bags" },
        { id: "polochon", name: "حقائب أسطوانية", slug: "polochon" },
        { id: "week-end", name: "حقائب عطلة نهاية الأسبوع", slug: "week-end" },
        { id: "pliables", name: "حقائب قابلة للطي", slug: "pliables" },
        { id: "transport-longue-distance", name: "حقائب نقل لمسافات طويلة", slug: "transport-longue-distance" },
        { id: "multi-poches", name: "حقائب متعددة الجيوب", slug: "multi-poches" },
        { id: "compartiment-chaussures", name: "حقائب بحجرة للأحذية", slug: "compartiment-chaussures" }
      ]
    },
    {
      id: "valises-bagages",
      name: "حقائب سفر وحقائب",
      slug: "valises-bagages",
      subcategories: [
        { id: "cabine-rigides", name: "حقائب مقصورة صلبة", slug: "cabine-rigides" },
        { id: "cabine-souples", name: "حقائب مقصورة مرنة", slug: "cabine-souples" },
        { id: "cabine-extensibles", name: "حقائب مقصورة قابلة للتوسعة", slug: "cabine-extensibles" },
        { id: "valises-medium", name: "حقائب متوسطة", slug: "valises-medium" },
        { id: "valises-grandes", name: "حقائب كبيرة", slug: "valises-grandes" },
        { id: "valises-aluminium", name: "حقائب ألمنيوم", slug: "valises-aluminium" },
        { id: "sets-valises", name: "مجموعات حقائب", slug: "sets-valises" },
        { id: "valises-enfants", name: "حقائب أطفال", slug: "valises-enfants" },
        { id: "valises-connectees", name: "حقائب ذكية", slug: "valises-connectees" },
        { id: "valises-professionnelles", name: "حقائب مهنية", slug: "valises-professionnelles" },
        { id: "bagages-certifies-iata", name: "أمتعة معتمدة من IATA", slug: "bagages-certifies-iata" },
        { id: "valises-securisees-tsa", name: "حقائب آمنة بنظام TSA", slug: "valises-securisees-tsa" }
      ]
    },
    {
      id: "maroquinerie",
      name: "منتجات جلدية",
      slug: "maroquinerie",
      subcategories: [
        { id: "portefeuilles-zippe", name: "محافظ بسحّاب", slug: "portefeuilles-zippe" },
        { id: "portefeuilles-pliable", name: "محافظ قابلة للطي", slug: "portefeuilles-pliable" },
        { id: "portefeuilles-compact", name: "محافظ مدمجة", slug: "portefeuilles-compact" },
        { id: "porte-cartes-metal", name: "حافظات بطاقات معدنية", slug: "porte-cartes-metal" },
        { id: "porte-cartes-cuir", name: "حافظات بطاقات جلد", slug: "porte-cartes-cuir" },
        { id: "porte-cartes-rfid", name: "حافظات بطاقات RFID", slug: "porte-cartes-rfid" },
        { id: "porte-monnaie", name: "حافظات نقود", slug: "porte-monnaie" },
        { id: "etuis-pochettes-passeport", name: "أغلفة جواز سفر", slug: "etuis-pochettes-passeport" },
        { id: "etuis-documents", name: "أغلفة مستندات", slug: "etuis-documents" },
        { id: "etuis-billets", name: "أغلفة تذاكر", slug: "etuis-billets" },
        { id: "mini-sacs-cuir", name: "حقائب جلد صغيرة", slug: "mini-sacs-cuir" },
        { id: "accessoires-luxe", name: "إكسسوارات فاخرة", slug: "accessoires-luxe" },
        { id: "petite-maroquinerie-artisanale", name: "منتجات جلدية صغيرة يدوية", slug: "petite-maroquinerie-artisanale" }
      ]
    },
    {
      id: "sacs-professionnels",
      name: "حقائب مهنية",
      slug: "sacs-professionnels",
      subcategories: [
        { id: "porte-ordinateur-13", name: "حقائب للابتوب 13\"", slug: "porte-ordinateur-13" },
        { id: "porte-ordinateur-15", name: "حقائب للابتوب 15\"", slug: "porte-ordinateur-15" },
        { id: "porte-ordinateur-17", name: "حقائب للابتوب 17\"", slug: "porte-ordinateur-17" },
        { id: "sacs-business", name: "حقائب أعمال", slug: "sacs-business" },
        { id: "sacs-documents", name: "حقائب مستندات", slug: "sacs-documents" },
        { id: "serviettes-attaches-case", name: "حقائب يد و attaché-case", slug: "serviettes-attaches-case" },
        { id: "sacs-infirmiers-paramedicaux", name: "حقائب تمريض/مسعفين", slug: "sacs-infirmiers-paramedicaux" },
        { id: "sacs-architectes-artistes-tubes", name: "أنابيب حمل للمعماريين والفنانين", slug: "sacs-architectes-artistes-tubes" },
        { id: "sacs-portfolios-a3-a2", name: "بورتفوليو A3/A2", slug: "sacs-portfolios-a3-a2" },
        { id: "sacs-techniciens-outils", name: "حقائب فنيين وأدوات", slug: "sacs-techniciens-outils" },
        { id: "sacs-livraison-coursiers", name: "حقائب توصيل وسعاة", slug: "sacs-livraison-coursiers" }
      ]
    },
    {
      id: "sacs-tech-mobilite",
      name: "حقائب التقنية والتنقل",
      slug: "sacs-tech-mobilite",
      subcategories: [
        { id: "etuis-laptop", name: "حافظات لابتوب", slug: "etuis-laptop" },
        { id: "housses-tablettes", name: "أغلفة تابلت", slug: "housses-tablettes" },
        { id: "housses-disques-durs", name: "أغلفة أقراص صلبة", slug: "housses-disques-durs" },
        { id: "sacs-photo-reflex", name: "حقائب كاميرا ريفلكس", slug: "sacs-photo-reflex" },
        { id: "sacs-photo-mirrorless", name: "حقائب كاميرا ميرورلس", slug: "sacs-photo-mirrorless" },
        { id: "sacs-drone", name: "حقائب درون", slug: "sacs-drone" },
        { id: "sacs-camera-video", name: "حقائب كاميرات وإكسسوارات فيديو", slug: "sacs-camera-video" },
        { id: "sacs-gamers-console", name: "حقائب لاعبين ووحدات ألعاب", slug: "sacs-gamers-console" },
        { id: "sacs-anti-choc", name: "حقائب مقاومة للصدمات", slug: "sacs-anti-choc" },
        { id: "sacs-connectes", name: "حقائب متصلة", slug: "sacs-connectes" }
      ]
    },
    {
      id: "sacs-de-sport",
      name: "حقائب رياضية",
      slug: "sacs-de-sport",
      subcategories: [
        { id: "sacs-gym", name: "حقائب صالة رياضية", slug: "sacs-gym" },
        { id: "sacs-fitness", name: "حقائب لياقة", slug: "sacs-fitness" },
        { id: "sacs-football", name: "حقائب كرة قدم", slug: "sacs-football" },
        { id: "sacs-arts-martiaux", name: "حقائب فنون قتالية (حجرة للقفازات)", slug: "sacs-arts-martiaux" },
        { id: "sacs-natation", name: "حقائب سباحة (مقاومة للماء)", slug: "sacs-natation" },
        { id: "sacs-tennis-1-raquette", name: "حقائب تنس (1 مضرب)", slug: "sacs-tennis-1-raquette" },
        { id: "sacs-tennis-multi-raquettes", name: "حقائب تنس (عدة مضارب)", slug: "sacs-tennis-multi-raquettes" },
        { id: "sacs-tactiques-militaires-sport", name: "حقائب تكتيكية عسكرية", slug: "sacs-tactiques-militaires-sport" },
        { id: "sacs-tir-airsoft", name: "حقائب رماية و Airsoft", slug: "sacs-tir-airsoft" }
      ]
    },
    {
      id: "sacs-enfants",
      name: "حقائب أطفال",
      slug: "sacs-enfants",
      subcategories: [
        { id: "sacs-a-dos-bebe", name: "حقائب ظهر للرضّع", slug: "sacs-a-dos-bebe" },
        { id: "sacs-creche", name: "حقائب حضانة", slug: "sacs-creche" },
        { id: "cartables", name: "حقائب مدرسية", slug: "cartables" },
        { id: "sacs-a-roulettes-scolaire", name: "حقائب مدرسية بعجلات", slug: "sacs-a-roulettes-scolaire" },
        { id: "sacs-a-gouter", name: "حقائب وجبة خفيفة", slug: "sacs-a-gouter" },
        { id: "sacs-enfant-licence", name: "حقائب أطفال بشخصيات/ترخيص", slug: "sacs-enfant-licence" },
        { id: "sacs-activites", name: "حقائب للأنشطة (رقص، رياضة)", slug: "sacs-activites" },
        { id: "sacs-anti-perte", name: "حقائب ضد الفقدان", slug: "sacs-anti-perte" }
      ]
    },
    {
      id: "sacs-specialises",
      name: "حقائب متخصصة",
      slug: "sacs-specialises",
      subcategories: [
        { id: "isothermes-repas", name: "حقائب حرارية للوجبات", slug: "isothermes-repas" },
        { id: "isothermes-pique-nique", name: "حقائب حرارية للنزهات", slug: "isothermes-pique-nique" },
        { id: "isothermes-medicaments", name: "حقائب حرارية للأدوية", slug: "isothermes-medicaments" },
        { id: "photo-video", name: "حقائب تصوير وفيديو", slug: "photo-video" },
        { id: "drones", name: "حقائب درون", slug: "drones" },
        { id: "peche-chasse", name: "حقائب صيد وصيد الأسماك", slug: "peche-chasse" },
        { id: "trekking-hydratation", name: "حقائب ترِكينغ مع ترطيب", slug: "trekking-hydratation" },
        { id: "moto-cuir", name: "حقائب دراجات نارية جلد", slug: "moto-cuir" },
        { id: "moto-textile", name: "حقائب دراجات نارية قماش", slug: "moto-textile" },
        { id: "sacoches-velo-avant", name: "حقائب أمامية للدراجات", slug: "sacoches-velo-avant" },
        { id: "sacoches-velo-arriere", name: "حقائب خلفية للدراجات", slug: "sacoches-velo-arriere" },
        { id: "sacoches-velo-cadre", name: "حقائب إطار للدراجات", slug: "sacoches-velo-cadre" },
        { id: "plongee", name: "حقائب غوص", slug: "plongee" },
        { id: "equipement-btp", name: "حقائب معدات البناء", slug: "equipement-btp" },
        { id: "instruments-musicaux", name: "حقائب للآلات الموسيقية", slug: "instruments-musicaux" },
        { id: "medicaux-urgences", name: "حقائب طبية/طوارئ", slug: "medicaux-urgences" }
      ]
    },
    {
      id: "bagagerie-professionnelle-voyage",
      name: "أمتعة مهنية وسفر",
      slug: "bagagerie-professionnelle-voyage",
      subcategories: [
        { id: "cabine-pro", name: "حقائب مقصورة للمحترفين", slug: "cabine-pro" },
        { id: "pilotes", name: "حقائب للطيارين", slug: "pilotes" },
        { id: "trolley-medical", name: "عربة طبية", slug: "trolley-medical" },
        { id: "echantillons-commerciaux", name: "أمتعة عينات تجارية", slug: "echantillons-commerciaux" },
        { id: "trolley-cabine-organisation", name: "عربة مقصورة بتنظيم متعدد الجيوب", slug: "trolley-cabine-organisation" },
        { id: "triangulaires-specifiques", name: "حقائب مثلثة لنقل تخصصي", slug: "triangulaires-specifiques" }
      ]
    },
    {
      id: "housses-protections",
      name: "أغطية وحماية",
      slug: "housses-protections",
      subcategories: [
        { id: "housses-valises", name: "أغطية حقائب", slug: "housses-valises" },
        { id: "housses-vetements-costumes", name: "أغطية ملابس وبدلات", slug: "housses-vetements-costumes" },
        { id: "housses-chaussures", name: "أغطية أحذية", slug: "housses-chaussures" },
        { id: "housses-sacs-a-main", name: "أغطية حقائب يد", slug: "housses-sacs-a-main" },
        { id: "sangles-valise", name: "أحزمة للحقائب", slug: "sangles-valise" },
        { id: "etiquettes-bagages", name: "علامات الأمتعة", slug: "etiquettes-bagages" },
        { id: "filets-organiseurs", name: "شبكات ومنظمات", slug: "filets-organiseurs" },
        { id: "cubes-rangement", name: "مكعبات تنظيم", slug: "cubes-rangement" },
        { id: "filets-voiture", name: "شبكات للسيارات", slug: "filets-voiture" },
        { id: "protections-anti-pluie", name: "واقيات ضد المطر", slug: "protections-anti-pluie" }
      ]
    },
    {
      id: "accessoires-bagagerie",
      name: "إكسسوارات الأمتعة",
      slug: "accessoires-bagagerie",
      subcategories: [
        { id: "cadenas-tsa", name: "أقفال TSA", slug: "cadenas-tsa" },
        { id: "ceintures-valise", name: "أحزمة للحقائب", slug: "ceintures-valise" },
        { id: "porte-passeport", name: "حاملات جواز سفر", slug: "porte-passeport" },
        { id: "porte-billets", name: "حاملات تذاكر", slug: "porte-billets" },
        { id: "porte-etiquettes", name: "حاملات بطاقات", slug: "porte-etiquettes" },
        { id: "kits-voyage-bouteilles", name: "مجموعات سفر (قوارير)", slug: "kits-voyage-bouteilles" },
        { id: "kits-voyage-oreillers", name: "مجموعات سفر (وسائد)", slug: "kits-voyage-oreillers" },
        { id: "kits-voyage-masques", name: "مجموعات سفر (أقنعة نوم)", slug: "kits-voyage-masques" },
        { id: "organiseurs-electroniques", name: "منظمات إلكترونية", slug: "organiseurs-electroniques" },
        { id: "pese-bagage", name: "ميزان أمتعة", slug: "pese-bagage" },
        { id: "sangles-renfort", name: "أحزمة تقوية", slug: "sangles-renfort" }
      ]
    },
    {
      id: "sacs-mode-luxe",
      name: "حقائب موضة وفخامة",
      slug: "sacs-mode-luxe",
      subcategories: [
        { id: "sacs-createurs", name: "حقائب مصممين", slug: "sacs-createurs" },
        { id: "edition-limitee", name: "حقائب بإصدار محدود", slug: "edition-limitee" },
        { id: "haute-couture", name: "حقائب هوت كوتور", slug: "haute-couture" },
        { id: "vintage-certifies", name: "حقائب عتيقة معتمدة", slug: "vintage-certifies" },
        { id: "collection-dior", name: "مجموعة ديور", slug: "collection-dior" },
        { id: "collection-chanel", name: "مجموعة شانيل", slug: "collection-chanel" },
        { id: "collection-lv", name: "مجموعة لويس فويتون", slug: "collection-lv" },
        { id: "collection-ysl", name: "مجموعة إيف سان لوران", slug: "collection-ysl" },
        { id: "expertise-authentification", name: "خبرة وتوثيق", slug: "expertise-authentification" }
      ]
    },
    {
      id: "sacs-artisanaux-locaux",
      name: "حقائب حرفية ومحلية",
      slug: "sacs-artisanaux-locaux",
      subcategories: [
        { id: "cuir-artisanal", name: "حقائب جلد حرفية", slug: "cuir-artisanal" },
        { id: "sacs-tresses", name: "حقائب منسوجة", slug: "sacs-tresses" },
        { id: "sacs-berberes", name: "حقائب بربرية", slug: "sacs-berberes" },
        { id: "sacs-traditionnels", name: "حقائب تقليدية", slug: "sacs-traditionnels" },
        { id: "sacs-faits-main", name: "حقائب مصنوعة يدويًا", slug: "sacs-faits-main" },
        { id: "creations-locales", name: "إبداعات محلية وقطع فريدة", slug: "creations-locales" }
      ]
    },
    {
      id: "materiaux-fabrication",
      name: "مواد وتصنيع",
      slug: "materiaux-fabrication",
      subcategories: [
        { id: "cuir-veritable", name: "جلد طبيعي", slug: "cuir-veritable" },
        { id: "cuir-vegan", name: "جلد نباتي", slug: "cuir-vegan" },
        { id: "cuir-recycle", name: "جلد معاد تدويره", slug: "cuir-recycle" },
        { id: "nylon", name: "نايلون", slug: "nylon" },
        { id: "polyester", name: "بوليستر", slug: "polyester" },
        { id: "toile", name: "قماش", slug: "toile" },
        { id: "canevas", name: "كانفاس", slug: "canevas" },
        { id: "abs", name: "ABS", slug: "abs" },
        { id: "polycarbonate", name: "بوليكربونات", slug: "polycarbonate" },
        { id: "aluminium", name: "ألمنيوم", slug: "aluminium" },
        { id: "paille-fibres-naturelles", name: "قش وألياف طبيعية", slug: "paille-fibres-naturelles" },
        { id: "waterproof-impermeables", name: "مقاوم للماء ومضاد للمطر", slug: "waterproof-impermeables" },
        { id: "anti-dechirure", name: "مضاد للتمزق", slug: "anti-dechirure" },
        { id: "resistants-aux-chocs", name: "مقاوم للصدمات", slug: "resistants-aux-chocs" }
      ]
    },
    {
      id: "segments-usages",
      name: "الفئات والاستخدامات",
      slug: "segments-usages",
      subcategories: [
        { id: "voyage", name: "سفر", slug: "voyage" },
        { id: "quotidien", name: "يومي", slug: "quotidien" },
        { id: "etude-scolaire", name: "دراسة/مدرسة", slug: "etude-scolaire" },
        { id: "travail-business", name: "عمل وأعمال", slug: "travail-business" },
        { id: "sport-usage", name: "رياضة", slug: "sport-usage" },
        { id: "outdoor", name: "هواء الطلق", slug: "outdoor" },
        { id: "professionnels", name: "مهني", slug: "professionnels" },
        { id: "luxe", name: "فخامة", slug: "luxe" },
        { id: "artisanal", name: "حرفي", slug: "artisanal" },
        { id: "casual", name: "كاجوال", slug: "casual" },
        { id: "urban-tech", name: "تقنية حضرية", slug: "urban-tech" }
      ]
    }
  ]
};