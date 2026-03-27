import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Wrench, Hammer, Drill, Shield, Lock, Plug, Droplet, Ruler, Paintbrush, Box } from "lucide-react";

export const quincaillerieGeneraleAr: MenuCategory = {
  id: "quincaillerie-generale",
  name: "العتاد العام",
  slug: "quincaillerie-generale",
  icon: <Wrench className="w-4 h-4" />,
  subcategories: [
    {
      id: "outils-manuels",
      name: "أدوات يدوية",
      slug: "outils-manuels",
      icon: <Hammer className="w-3 h-3" />,
      subcategories: [
        { id: "tournevis-plats", name: "مفكات مسطحة", slug: "tournevis-plats" },
        { id: "tournevis-cruciformes", name: "مفكات فيليبس", slug: "tournevis-cruciformes" },
        { id: "tournevis-de-precision", name: "مفكات دقيقة", slug: "tournevis-de-precision" },
        { id: "marteaux-de-menuisier", name: "مطارق نجار", slug: "marteaux-de-menuisier" },
        { id: "marteaux-de-macon", name: "مطارق بناء", slug: "marteaux-de-macon" },
        { id: "pinces-universelles", name: "كماشات متعددة", slug: "pinces-universelles" },
        { id: "pinces-coupantes", name: "كماشات قطع", slug: "pinces-coupantes" },
        { id: "pinces-multiprises", name: "كماشات قابلة للتعديل", slug: "pinces-multiprises" },
        { id: "cles-plates", name: "مفاتيح مسطحة", slug: "cles-plates" },
        { id: "cles-mixtes", name: "مفاتيح مركبة", slug: "cles-mixtes" },
        { id: "cle-a-molette", name: "مفتاح قابل للتعديل", slug: "cle-a-molette" },
        { id: "cles-allen", name: "مفاتيح ألن", slug: "cles-allen" },
        { id: "scies-manuelles", name: "مناشير يدوية", slug: "scies-manuelles" },
        { id: "scies-a-metaux", name: "مناشير معدنية", slug: "scies-a-metaux" },
        { id: "cutters", name: "قطاعات", slug: "cutters" },
        { id: "grattoirs", name: "كاشطات", slug: "grattoirs" },
        { id: "ciseaux-a-bois", name: "إزميل خشب", slug: "ciseaux-a-bois" },
        { id: "jeux-de-douilles", name: "طقم رؤوس", slug: "jeux-de-douilles" },
        { id: "cliquets", name: "مفاتيح ترّاس", slug: "cliquets" },
        { id: "niveaux-a-bulle", name: "ميزان فقاعات", slug: "niveaux-a-bulle" },
        { id: "serre-joints", name: "مماسكات", slug: "serre-joints" },
        { id: "limes", name: "مبارد", slug: "limes" },
        { id: "rabots", name: "مقاشط", slug: "rabots" },
        { id: "maillets", name: "مطارق مطاط", slug: "maillets" },
        { id: "scies-egoines", name: "مناشير ألواح", slug: "scies-egoines" },
        { id: "scies-japonaises", name: "مناشير يابانية", slug: "scies-japonaises" }
      ]
    },
    {
      id: "outils-electriques-electroportatifs",
      name: "أدوات كهربائية",
      slug: "outils-electriques-electroportatifs",
      icon: <Drill className="w-3 h-3" />,
      subcategories: [
        { id: "perceuses", name: "مثاقب", slug: "perceuses" },
        { id: "perceuses-a-percussion", name: "مثاقب مطرقة", slug: "perceuses-a-percussion" },
        { id: "perceuses-sans-fil", name: "مثاقب لاسلكية", slug: "perceuses-sans-fil" },
        { id: "visseuses", name: "مفكات كهربائية", slug: "visseuses" },
        { id: "visseuses-a-choc", name: "مفكات صدمة", slug: "visseuses-a-choc" },
        { id: "meuleuses", name: "جلاخات", slug: "meuleuses" },
        { id: "meuleuses-d-angle", name: "جلاخات زاوية", slug: "meuleuses-d-angle" },
        { id: "scies-electriques", name: "مناشير كهربائية", slug: "scies-electriques" },
        { id: "scies-circulaires", name: "مناشير دائرية", slug: "scies-circulaires" },
        { id: "scies-sauteuses", name: "مناشير ترددية", slug: "scies-sauteuses" },
        { id: "scies-sabres", name: "مناشير سيف", slug: "scies-sabres" },
        { id: "ponceuses-orbitales", name: "صنّافات مدارية", slug: "ponceuses-orbitales" },
        { id: "ponceuses-vibrantes", name: "صنّافات اهتزازية", slug: "ponceuses-vibrantes" },
        { id: "ponceuses-a-bande", name: "صنّافات شريطية", slug: "ponceuses-a-bande" },
        { id: "marteaux-perforateurs", name: "مطارق دوارة", slug: "marteaux-perforateurs" },
        { id: "defonceuses", name: "موجهات", slug: "defonceuses" },
        { id: "pistolets-a-chaleur", name: "مسدسات حرارة", slug: "pistolets-a-chaleur" },
        { id: "pistolets-a-colle", name: "مسدسات غراء", slug: "pistolets-a-colle" },
        { id: "agrafeuses-electriques", name: "دبّاسات كهربائية", slug: "agrafeuses-electriques" },
        { id: "decoupeurs-multifonctions", name: "قواطع متعددة", slug: "decoupeurs-multifonctions" }
      ]
    },
    {
      id: "materiel-de-fixation",
      name: "مواد التثبيت",
      slug: "materiel-de-fixation",
      icon: <Wrench className="w-3 h-3" />,
      subcategories: [
        { id: "vis-bois", name: "مسامير خشب", slug: "vis-bois" },
        { id: "vis-metal", name: "مسامير معدن", slug: "vis-metal" },
        { id: "vis-auto-perceuses", name: "مسامير ذاتية الثقب", slug: "vis-auto-perceuses" },
        { id: "vis-placo", name: "مسامير جبس", slug: "vis-placo" },
        { id: "boulons", name: "براغي", slug: "boulons" },
        { id: "ecrous", name: "صواميل", slug: "ecrous" },
        { id: "rondelles-plates", name: "وردات مسطحة", slug: "rondelles-plates" },
        { id: "rondelles-frein", name: "وردات زنبركية", slug: "rondelles-frein" },
        { id: "chevilles-classiques", name: "بلاكات عادية", slug: "chevilles-classiques" },
        { id: "chevilles-molly", name: "بلاكات مولّي", slug: "chevilles-molly" },
        { id: "chevilles-metalliques", name: "بلاكات معدنية", slug: "chevilles-metalliques" },
        { id: "chevilles-chimiques", name: "بلاكات كيميائية", slug: "chevilles-chimiques" },
        { id: "rivets", name: "مسامير برشام", slug: "rivets" },
        { id: "clous", name: "مسامير", slug: "clous" },
        { id: "pointes", name: "دبابيس", slug: "pointes" },
        { id: "crochets-muraux", name: "خطافات جدارية", slug: "crochets-muraux" },
        { id: "equerres-renforcees", name: "زوايا مقوّاة", slug: "equerres-renforcees" },
        { id: "pitons", name: "خطافات براغي", slug: "pitons" },
        { id: "serre-cables", name: "أربطة كابلات", slug: "serre-cables" }
      ]
    },
    {
      id: "quincaillerie-porte-fenetre",
      name: "مستلزمات الأبواب والنوافذ",
      slug: "quincaillerie-porte-fenetre",
      icon: <Lock className="w-3 h-3" />,
      subcategories: [
        { id: "serrures-a-cle", name: "أقفال بمفتاح", slug: "serrures-a-cle" },
        { id: "serrures-multipoints", name: "أقفال متعددة النقاط", slug: "serrures-multipoints" },
        { id: "cylindres-europeens", name: "أسطوانات أوروبية", slug: "cylindres-europeens" },
        { id: "poignees-de-porte", name: "مقابض أبواب", slug: "poignees-de-porte" },
        { id: "poignees-de-fenetre", name: "مقابض نوافذ", slug: "poignees-de-fenetre" },
        { id: "paumelles", name: "مفصلات", slug: "paumelles" },
        { id: "charnieres-renforcees", name: "مفصلات معززة", slug: "charnieres-renforcees" },
        { id: "verrous", name: "مزاليج", slug: "verrous" },
        { id: "loquets", name: "مصاريع", slug: "loquets" },
        { id: "cremones", name: "كريمونات", slug: "cremones" },
        { id: "butees-de-porte", name: "مصدات أبواب", slug: "butees-de-porte" },
        { id: "heurtoirs", name: "مطارق أبواب", slug: "heurtoirs" },
        { id: "arrets-de-porte-magnetiques", name: "مصدات مغناطيسية", slug: "arrets-de-porte-magnetiques" },
        { id: "joints-detancheite", name: "حشوات مانعة للتسرب", slug: "joints-detancheite" }
      ]
    },
    {
      id: "securite-protection",
      name: "أمان وحماية",
      slug: "securite-protection",
      icon: <Shield className="w-3 h-3" />,
      subcategories: [
        { id: "cadenas-standards", name: "أقفال قياسية", slug: "cadenas-standards" },
        { id: "cadenas-haute-securite", name: "أقفال عالية الأمان", slug: "cadenas-haute-securite" },
        { id: "antivols-portes-portails", name: "مضادات سرقة للأبواب والبوابات", slug: "antivols-portes-portails" },
        { id: "chaines-renforcees", name: "سلاسل معززة", slug: "chaines-renforcees" },
        { id: "gants-de-protection", name: "قفازات وقاية", slug: "gants-de-protection" },
        { id: "gants-anti-coupure", name: "قفازات ضد القطع", slug: "gants-anti-coupure" },
        { id: "lunettes-de-securite", name: "نظارات حماية", slug: "lunettes-de-securite" },
        { id: "visieres", name: "واجهات واقية", slug: "visieres" },
        { id: "casques-de-chantier", name: "خوذات موقع", slug: "casques-de-chantier" },
        { id: "chaussures-de-securite", name: "أحذية أمان", slug: "chaussures-de-securite" },
        { id: "genouilleres", name: "ركب واقية", slug: "genouilleres" },
        { id: "masques-anti-poussiere", name: "كمامات ضد الغبار", slug: "masques-anti-poussiere" },
        { id: "harnais-de-securite", name: "أحزمة أمان", slug: "harnais-de-securite" }
      ]
    },
    {
      id: "materiel-de-plomberie",
      name: "سباكة",
      slug: "materiel-de-plomberie",
      icon: <Droplet className="w-3 h-3" />,
      subcategories: [
        { id: "robinets", name: "حنفيات", slug: "robinets" },
        { id: "mitigeurs", name: "مزجيات", slug: "mitigeurs" },
        { id: "flexibles", name: "خراطيم", slug: "flexibles" },
        { id: "raccords-pvc", name: "وصلات PVC", slug: "raccords-pvc" },
        { id: "raccords-multicouches", name: "وصلات متعددة الطبقات", slug: "raccords-multicouches" },
        { id: "raccords-laiton", name: "وصلات نحاسية", slug: "raccords-laiton" },
        { id: "tuyaux-pvc", name: "أنابيب PVC", slug: "tuyaux-pvc" },
        { id: "tuyaux-per", name: "أنابيب PER", slug: "tuyaux-per" },
        { id: "siphons", name: "مصافي", slug: "siphons" },
        { id: "joints-fibre", name: "حشوات من الألياف", slug: "joints-fibre" },
        { id: "joints-caoutchouc", name: "حشوات مطاطية", slug: "joints-caoutchouc" },
        { id: "colliers-de-serrage", name: "مشابك", slug: "colliers-de-serrage" },
        { id: "vannes-d-arret", name: "صمامات إيقاف", slug: "vannes-d-arret" },
        { id: "bondes", name: "مصارف", slug: "bondes" },
        { id: "filtres-anti-calcaire", name: "فلاتر ضد الترسبات", slug: "filtres-anti-calcaire" },
        { id: "tubes-devacuation", name: "أنابيب تصريف", slug: "tubes-devacuation" },
        { id: "coudes", name: "أكواع", slug: "coudes" },
        { id: "tes", name: "وصلات T", slug: "tes" },
        { id: "reductions", name: "مخفضات", slug: "reductions" }
      ]
    },
    {
      id: "materiel-electrique",
      name: "كهرباء",
      slug: "materiel-electrique",
      icon: <Plug className="w-3 h-3" />,
      subcategories: [
        { id: "prises-murales", name: "مآخذ حائط", slug: "prises-murales" },
        { id: "prises-renforcees", name: "مآخذ قوية", slug: "prises-renforcees" },
        { id: "interrupteurs-simples", name: "قواطع", slug: "interrupteurs-simples" },
        { id: "interrupteurs-va-et-vient", name: "قواطع مزدوجة", slug: "interrupteurs-va-et-vient" },
        { id: "interrupteurs-automatiques", name: "قواطع تلقائية", slug: "interrupteurs-automatiques" },
        { id: "cables-electriques-rigides", name: "كابلات صلبة", slug: "cables-electriques-rigides" },
        { id: "cables-souples", name: "كابلات مرنة", slug: "cables-souples" },
        { id: "gaines-isolantes", name: "أغلفة عازلة", slug: "gaines-isolantes" },
        { id: "gaines-icta", name: "قنوات ICTA", slug: "gaines-icta" },
        { id: "disjoncteurs", name: "قواطع كهربائية", slug: "disjoncteurs" },
        { id: "tableaux-electriques", name: "لوحات كهربائية", slug: "tableaux-electriques" },
        { id: "coffrets", name: "صناديق", slug: "coffrets" },
        { id: "transformateurs", name: "محولات", slug: "transformateurs" },
        { id: "multiprises", name: "مشتركات", slug: "multiprises" },
        { id: "rallonges", name: "أسلاك تمديد", slug: "rallonges" },
        { id: "connecteurs-rapides", name: "موصلات سريعة", slug: "connecteurs-rapides" },
        { id: "dominos", name: "أطراف توصيل", slug: "dominos" },
        { id: "goulottes-murales", name: "قنوات كابلات", slug: "goulottes-murales" }
      ]
    },
    {
      id: "colles-adhesifs",
      name: "مواد لصق وشرائط",
      slug: "colles-adhesifs",
      icon: <Box className="w-3 h-3" />,
      subcategories: [
        { id: "colles-fortes", name: "غراء قوي", slug: "colles-fortes" },
        { id: "colles-universelles", name: "غراء شامل", slug: "colles-universelles" },
        { id: "colles-pvc", name: "غراء PVC", slug: "colles-pvc" },
        { id: "colles-a-bois", name: "غراء خشب", slug: "colles-a-bois" },
        { id: "epoxy", name: "إيبوكسي", slug: "epoxy" },
        { id: "silicone", name: "سيليكون", slug: "silicone" },
        { id: "mastic", name: "معجون", slug: "mastic" },
        { id: "adhesifs-double-face", name: "شرائط لاصقة مزدوجة", slug: "adhesifs-double-face" },
        { id: "ruban-isolant", name: "شريط عازل", slug: "ruban-isolant" },
        { id: "ruban-toile", name: "شريط قماشي", slug: "ruban-toile" },
        { id: "ruban-arme", name: "شريط مدعم", slug: "ruban-arme" },
        { id: "ruban-de-masquage", name: "شريط إخفاء", slug: "ruban-de-masquage" },
        { id: "colles-de-montage", name: "غراء تركيب", slug: "colles-de-montage" }
      ]
    },
    {
      id: "produits-soudure-brasage",
      name: "لحام وبرازيج",
      slug: "produits-soudure-brasage",
      icon: <Wrench className="w-3 h-3" />,
      subcategories: [
        { id: "fers-a-souder", name: "كاويات لحام", slug: "fers-a-souder" },
        { id: "stations-de-soudure", name: "محطات لحام", slug: "stations-de-soudure" },
        { id: "etain", name: "قصدير", slug: "etain" },
        { id: "chalumeaux-gaz", name: "مشاعل غاز", slug: "chalumeaux-gaz" },
        { id: "baguettes-de-soudure", name: "أعواد لحام", slug: "baguettes-de-soudure" },
        { id: "baguettes-de-brasage", name: "أعواد برازيج", slug: "baguettes-de-brasage" },
        { id: "masques-de-soudure", name: "أقنعة لحام", slug: "masques-de-soudure" },
        { id: "visieres-de-protection", name: "واقيات وجه", slug: "visieres-de-protection" },
        { id: "flux-decapants", name: "فلكس مزيل", slug: "flux-decapants" }
      ]
    },
    {
      id: "outillage-de-mesure",
      name: "أدوات قياس",
      slug: "outillage-de-mesure",
      icon: <Ruler className="w-3 h-3" />,
      subcategories: [
        { id: "metres-ruban", name: "أشرطة قياس", slug: "metres-ruban" },
        { id: "metres-laser", name: "مقاييس ليزر", slug: "metres-laser" },
        { id: "telemetres-laser", name: "تيلميتر ليزر", slug: "telemetres-laser" },
        { id: "niveaux-laser", name: "مستويات ليزر", slug: "niveaux-laser" },
        { id: "niveaux-a-bulle", name: "مستويات فقاعات", slug: "niveaux-a-bulle" },
        { id: "equerres-metalliques", name: "مساطر معدنية", slug: "equerres-metalliques" },
        { id: "rapporteurs", name: "منقلة", slug: "rapporteurs" },
        { id: "pieds-a-coulisse", name: "قدم منزلق", slug: "pieds-a-coulisse" },
        { id: "detecteurs-de-cables", name: "كواشف كابلات", slug: "detecteurs-de-cables" },
        { id: "detecteurs-de-metaux", name: "كواشف معادن", slug: "detecteurs-de-metaux" }
      ]
    },
    {
      id: "rangements-organisation",
      name: "تخزين وتنظيم",
      slug: "rangements-organisation",
      icon: <Box className="w-3 h-3" />,
      subcategories: [
        { id: "boites-a-outils", name: "صناديق أدوات", slug: "boites-a-outils" },
        { id: "boites-compartimentees", name: "صناديق مقسمة", slug: "boites-compartimentees" },
        { id: "caisses-metalliques", name: "صناديق معدنية", slug: "caisses-metalliques" },
        { id: "organiseurs", name: "منظمون", slug: "organiseurs" },
        { id: "valises-de-rangement", name: "حقائب تخزين", slug: "valises-de-rangement" },
        { id: "chariots-de-manutention", name: "عربات نقل", slug: "chariots-de-manutention" },
        { id: "etagieres-metalliques", name: "رفوف معدنية", slug: "etagieres-metalliques" },
        { id: "coffres-de-chantier", name: "صناديق موقع", slug: "coffres-de-chantier" },
        { id: "supports-muraux", name: "حوامل حائط", slug: "supports-muraux" }
      ]
    },
    {
      id: "materiaux-metalliques-accessoires",
      name: "مواد معدنية وإكسسوارات",
      slug: "materiaux-metalliques-accessoires",
      icon: <Wrench className="w-3 h-3" />,
      subcategories: [
        { id: "barres-metalliques", name: "قضبان معدنية", slug: "barres-metalliques" },
        { id: "barres-dacier", name: "قضبان فولاذ", slug: "barres-dacier" },
        { id: "profils-aluminium", name: "بروفيلات ألومنيوم", slug: "profils-aluminium" },
        { id: "profils-inox", name: "بروفيلات ستانلس", slug: "profils-inox" },
        { id: "grillages-soudes", name: "شبكات ملحومة", slug: "grillages-soudes" },
        { id: "panneaux-grillages", name: "ألواح شبكية", slug: "panneaux-grillages" },
        { id: "chaines-metalliques", name: "سلاسل معدنية", slug: "chaines-metalliques" },
        { id: "cables-acier", name: "كوابل فولاذ", slug: "cables-acier" },
        { id: "tendeurs", name: "مشدات", slug: "tendeurs" },
        { id: "cornieres", name: "زوايا", slug: "cornieres" },
        { id: "tubes-metalliques", name: "أنابيب معدنية", slug: "tubes-metalliques" }
      ]
    },
    {
      id: "peinture-preparation",
      name: "دهان وتحضير",
      slug: "peinture-preparation",
      icon: <Paintbrush className="w-3 h-3" />,
      subcategories: [
        { id: "pinceaux-plats", name: "فرش مسطحة", slug: "pinceaux-plats" },
        { id: "pinceaux-ronds", name: "فرش دائرية", slug: "pinceaux-ronds" },
        { id: "rouleaux-anti-goutte", name: "رولات مانعة للتقطير", slug: "rouleaux-anti-goutte" },
        { id: "rouleaux-laqueurs", name: "رولات للطلاء", slug: "rouleaux-laqueurs" },
        { id: "bacs-a-peinture", name: "صواني طلاء", slug: "bacs-a-peinture" },
        { id: "grilles", name: "شبكات", slug: "grilles" },
        { id: "abrasifs", name: "مواد كاشطة", slug: "abrasifs" },
        { id: "papiers-de-verre", name: "ورق زجاج", slug: "papiers-de-verre" },
        { id: "enduits-de-finition", name: "معاجين تشطيب", slug: "enduits-de-finition" },
        { id: "apprets", name: "برايمر", slug: "apprets" },
        { id: "baches-de-protection", name: "أغطية حماية", slug: "baches-de-protection" },
        { id: "rubans-de-masquage", name: "أشرطة تغطية", slug: "rubans-de-masquage" },
        { id: "solvants", name: "مذيبات", slug: "solvants" }
      ]
    },
    {
      id: "jardinerie-bricolage-leger",
      name: "بستنة وأعمال خفيفة",
      slug: "jardinerie-bricolage-leger",
      icon: <Wrench className="w-3 h-3" />,
      subcategories: [
        { id: "petits-outils-de-jardin", name: "أدوات حدائق صغيرة", slug: "petits-outils-de-jardin" },
        { id: "secateurs", name: "مقصات تقليم", slug: "secateurs" },
        { id: "elagueurs", name: "مناشير تقليم", slug: "elagueurs" },
        { id: "pulverisateurs", name: "مرشات", slug: "pulverisateurs" },
        { id: "arrosoirs", name: "مرشات مياه", slug: "arrosoirs" },
        { id: "mini-outils-de-plantation", name: "أدوات زرع صغيرة", slug: "mini-outils-de-plantation" },
        { id: "rateaux", name: "مجارف", slug: "rateaux" },
        { id: "griffes", name: "مشاكط", slug: "griffes" },
        { id: "kits-de-reparation-jardin", name: "عدة إصلاح حدائق", slug: "kits-de-reparation-jardin" },
        { id: "gants-de-jardinage", name: "قفازات حدائق", slug: "gants-de-jardinage" }
      ]
    },
    {
      id: "accessoires-divers",
      name: "إكسسوارات متنوعة",
      slug: "accessoires-divers",
      icon: <Wrench className="w-3 h-3" />,
      subcategories: [
        { id: "joints-varies", name: "حشوات متنوعة", slug: "joints-varies" },
        { id: "poignees-diverses", name: "مقابض متنوعة", slug: "poignees-diverses" },
        { id: "boutons-de-meuble", name: "أزرار أثاث", slug: "boutons-de-meuble" },
        { id: "pieds-de-meubles", name: "أقدام أثاث", slug: "pieds-de-meubles" },
        { id: "roulettes-de-deplacement", name: "عجلات نقل", slug: "roulettes-de-deplacement" },
        { id: "ressorts", name: "نوابض", slug: "ressorts" },
        { id: "aimants", name: "مغناطيس", slug: "aimants" },
        { id: "patins-anti-derapants", name: "وسادات ضد الانزلاق", slug: "patins-anti-derapants" },
        { id: "embouts-divers", name: "نهايات متنوعة", slug: "embouts-divers" },
        { id: "cales", name: "أوتاد", slug: "cales" },
        { id: "supports-multi-usages", name: "حوامل متعددة", slug: "supports-multi-usages" }
      ]
    }
  ]
};