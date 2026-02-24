import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Armchair } from "lucide-react";

export const mobilierEtDecorationAr: MenuCategory = {
  id: "mobilier-et-decoration",
  name: "الأثاث والديكور",
  slug: "mobilier-et-decoration",
  icon: <Armchair className="w-4 h-4" />,
  subcategories: [
    {
      id: "mobilier-salon-sejour",
      name: "أثاث غرفة المعيشة",
      slug: "mobilier-salon-sejour",
      subcategories: [
        {
          id: "canapes",
          name: "أرائك",
          slug: "canapes",
          subcategories: [
            { id: "angle", name: "ركنية", slug: "angle" },
            { id: "droit", name: "مستقيمة", slug: "droit" },
            { id: "convertible", name: "أريكة سرير", slug: "convertible" },
            { id: "modulaires", name: "موديولية", slug: "modulaires" }
          ]
        },
        {
          id: "fauteuils-poufs",
          name: "كراسي بذراعين وبوفات",
          slug: "fauteuils-poufs",
          subcategories: [
            { id: "fauteuils", name: "كراسي بذراعين", slug: "fauteuils" },
            { id: "poufs", name: "بوفات", slug: "poufs" }
          ]
        },
        {
          id: "tables-basses",
          name: "طاولات قهوة",
          slug: "tables-basses",
          subcategories: [
            { id: "bois", name: "خشب", slug: "bois" },
            { id: "verre", name: "زجاج", slug: "verre" },
            { id: "metal", name: "معدن", slug: "metal" }
          ]
        },
        { id: "meubles-tv", name: "خزائن التلفاز", slug: "meubles-tv" },
        { id: "etagères-bibliotheques", name: "رفوف ومكتبات", slug: "etageres-bibliotheques" },
        { id: "meubles-rangement", name: "أثاث تخزين", slug: "meubles-rangement" },
        { id: "consoles-entree", name: "كونسولات المدخل", slug: "consoles-entree" },
        { id: "banquettes", name: "مقاعد طويلة", slug: "banquettes" },
        { id: "paravents", name: "فواصل", slug: "paravents" },
        { id: "tables-d-appoint", name: "طاولات جانبية", slug: "tables-d-appoint" }
      ]
    },
    {
      id: "mobilier-chambre",
      name: "أثاث غرفة النوم",
      slug: "mobilier-chambre",
      subcategories: [
        {
          id: "lits",
          name: "أسرة",
          slug: "lits",
          subcategories: [
            { id: "simple", name: "مفرد", slug: "simple" },
            { id: "double", name: "مزدوج", slug: "double" },
            { id: "king", name: "كينغ", slug: "king" },
            { id: "coffre", name: "بصندوق تخزين", slug: "coffre" }
          ]
        },
        {
          id: "sommier-matelas",
          name: "قاعدة سرير وفرشة",
          slug: "sommier-matelas",
          subcategories: [
            { id: "sommier", name: "قاعدة سرير", slug: "sommier" },
            { id: "matelas", name: "فرشة", slug: "matelas" }
          ]
        },
        { id: "tables-de-chevet", name: "طاولات جانبية للسرير", slug: "tables-de-chevet" },
        {
          id: "armoires-penderies",
          name: "خزائن ودواليب",
          slug: "armoires-penderies",
          subcategories: [
            { id: "armoires", name: "خزائن", slug: "armoires" },
            { id: "penderies", name: "دواليب", slug: "penderies" }
          ]
        },
        { id: "commode", name: "خزانة أدراج", slug: "commode" },
        { id: "coiffeuses", name: "طاولات زينة", slug: "coiffeuses" },
        { id: "bancs-de-lit", name: "مقاعد عند السرير", slug: "bancs-de-lit" },
        { id: "tetes-de-lit", name: "لوحات أمامية للسرير", slug: "tetes-de-lit" },
        { id: "rangement-chaussures", name: "تخزين الأحذية", slug: "rangement-chaussures" }
      ]
    },
    {
      id: "mobilier-salle-a-manger",
      name: "أثاث غرفة الطعام",
      slug: "mobilier-salle-a-manger",
      subcategories: [
        {
          id: "tables-a-manger",
          name: "طاولات طعام",
          slug: "tables-a-manger",
          subcategories: [
            { id: "bois", name: "خشب", slug: "bois" },
            { id: "extensibles", name: "قابلة للتمديد", slug: "extensibles" },
            { id: "verre", name: "زجاج", slug: "verre" }
          ]
        },
        {
          id: "chaises-fauteuils-salle-a-manger",
          name: "كراسي وكراسي بذراعين لغرفة الطعام",
          slug: "chaises-fauteuils-salle-a-manger",
          subcategories: [
            { id: "chaises", name: "كراسي", slug: "chaises" },
            { id: "fauteuils", name: "كراسي بذراعين", slug: "fauteuils" }
          ]
        },
        {
          id: "buffets-bahuts",
          name: "بوفيهات وخزائن جانبية",
          slug: "buffets-bahuts",
          subcategories: [
            { id: "buffets", name: "بوفيهات", slug: "buffets" },
            { id: "bahuts", name: "خزائن جانبية", slug: "bahuts" }
          ]
        },
        { id: "vaisseliers", name: "خزائن عرض للأواني", slug: "vaisseliers" },
        { id: "meubles-bar", name: "أثاث بار", slug: "meubles-bar" },
        {
          id: "tabourets-chaises-hautes",
          name: "مقاعد مرتفعة وكراسي عالية",
          slug: "tabourets-chaises-hautes",
          subcategories: [
            { id: "tabourets", name: "مقاعد", slug: "tabourets" },
            { id: "chaises-hautes", name: "كراسي عالية", slug: "chaises-hautes" }
          ]
        }
      ]
    },
    {
      id: "mobilier-cuisine",
      name: "أثاث المطبخ",
      slug: "mobilier-cuisine",
      subcategories: [
        { id: "meubles-cuisine-modulaires", name: "أثاث مطبخ وحدات", slug: "meubles-cuisine-modulaires" },
        { id: "plans-de-travail", name: "أسطح عمل", slug: "plans-de-travail" },
        {
          id: "ilots-dessertes-cuisine",
          name: "جزر المطبخ وعربات تقديم",
          slug: "ilots-dessertes-cuisine",
          subcategories: [
            { id: "ilots", name: "جزر المطبخ", slug: "ilots" },
            { id: "dessertes", name: "عربات تقديم", slug: "dessertes" }
          ]
        },
        { id: "rangement-cuisine", name: "تخزين المطبخ", slug: "rangement-cuisine" },
        {
          id: "chariots-dessertes-roulettes",
          name: "عربات مطبخ ومتحركة",
          slug: "chariots-dessertes-roulettes",
          subcategories: [
            { id: "chariots", name: "عربات مطبخ", slug: "chariots" },
            { id: "dessertes-a-roulettes", name: "عربات متحركة", slug: "dessertes-a-roulettes" }
          ]
        },
        { id: "tabourets-cuisine", name: "مقاعد مطبخ", slug: "tabourets-cuisine" },
        {
          id: "racks-epices-etageres-murales",
          name: "حوامل توابل ورفوف حائط",
          slug: "racks-epices-etageres-murales",
          subcategories: [
            { id: "racks-epices", name: "حوامل توابل", slug: "racks-epices" },
            { id: "etageres-murales", name: "رفوف حائط", slug: "etageres-murales" }
          ]
        }
      ]
    },
    {
      id: "mobilier-bureau",
      name: "أثاث المكتب",
      slug: "mobilier-bureau",
      subcategories: [
        { id: "bureaux-classiques", name: "مكاتب كلاسيكية", slug: "bureaux-classiques" },
        { id: "bureaux-gaming", name: "مكاتب ألعاب", slug: "bureaux-gaming" },
        { id: "chaises-bureau-ergonomiques", name: "كراسي مكتب مريحة", slug: "chaises-bureau-ergonomiques" },
        {
          id: "caissons-rangements",
          name: "خزائن متحركة وتخزين",
          slug: "caissons-rangements",
          subcategories: [
            { id: "caissons", name: "خزائن متحركة", slug: "caissons" },
            { id: "rangements", name: "تخزين", slug: "rangements" }
          ]
        },
        { id: "bibliotheques-pro", name: "مكتبات للمكتب", slug: "bibliotheques-pro" },
        {
          id: "support-ecrans-accessoires-bureau",
          name: "حاملات شاشات وإكسسوارات المكتب",
          slug: "support-ecrans-accessoires-bureau",
          subcategories: [
            { id: "support-ecrans", name: "حاملات شاشات", slug: "support-ecrans" },
            { id: "accessoires-bureau", name: "إكسسوارات المكتب", slug: "accessoires-bureau" }
          ]
        },
        { id: "tables-dessin-architecte", name: "طاولات رسم ومعمار", slug: "tables-dessin-architecte" }
      ]
    },
    {
      id: "mobilier-salle-de-bain",
      name: "أثاث الحمام",
      slug: "mobilier-salle-de-bain",
      subcategories: [
        { id: "meubles-sous-vasques", name: "خزائن تحت المغاسل", slug: "meubles-sous-vasques" },
        {
          id: "colonnes-rangements-bain",
          name: "خزائن عمودية وتخزين",
          slug: "colonnes-rangements-bain",
          subcategories: [
            { id: "colonnes", name: "خزائن عمودية", slug: "colonnes" },
            { id: "rangements", name: "تخزين", slug: "rangements" }
          ]
        },
        { id: "etageres-murales-bain", name: "رفوف حائط", slug: "etageres-murales-bain" },
        { id: "armoires-miroir", name: "خزائن مرايا", slug: "armoires-miroir" },
        {
          id: "bancs-tabourets-bain",
          name: "مقاعد وكراسي صغيرة",
          slug: "bancs-tabourets-bain",
          subcategories: [
            { id: "bancs", name: "مقاعد", slug: "bancs" },
            { id: "tabourets", name: "كراسي صغيرة", slug: "tabourets" }
          ]
        },
        { id: "paniers-linge", name: "سلال الغسيل", slug: "paniers-linge" },
        { id: "porte-serviettes", name: "حوامل المناشف", slug: "porte-serviettes" },
        { id: "accessoires-bain", name: "إكسسوارات الحمام", slug: "accessoires-bain" }
      ]
    },
    {
      id: "mobilier-exterieur-jardin",
      name: "أثاث خارجي وحدائق",
      slug: "mobilier-exterieur-jardin",
      subcategories: [
        {
          id: "salons-de-jardin",
          name: "طقم أثاث حدائق",
          slug: "salons-de-jardin",
          subcategories: [
            { id: "resine", name: "راتنج", slug: "resine" },
            { id: "aluminium", name: "ألمنيوم", slug: "aluminium" },
            { id: "bois", name: "خشب", slug: "bois" }
          ]
        },
        {
          id: "tables-chaises-exterieures",
          name: "طاولات وكراسي خارجية",
          slug: "tables-chaises-exterieures",
          subcategories: [
            { id: "tables", name: "طاولات", slug: "tables" },
            { id: "chaises", name: "كراسي", slug: "chaises" }
          ]
        },
        {
          id: "transats-bains-de-soleil",
          name: "كراسي استرخاء وأسِرّة شمس",
          slug: "transats-bains-de-soleil",
          subcategories: [
            { id: "transats", name: "كراسي استرخاء", slug: "transats" },
            { id: "bains-de-soleil", name: "أسِرّة شمس", slug: "bains-de-soleil" }
          ]
        },
        {
          id: "hamacs-balancelles",
          name: "أراجيح وأرجوحات حدائق",
          slug: "hamacs-balancelles",
          subcategories: [
            { id: "hamacs", name: "أراجيح", slug: "hamacs" },
            { id: "balancelles", name: "أرجوحات", slug: "balancelles" }
          ]
        },
        { id: "pergolas", name: "برجولات", slug: "pergolas" },
        { id: "parasols", name: "مظلات", slug: "parasols" },
        { id: "coffres-rangement-exterieur", name: "صناديق تخزين خارجية", slug: "coffres-rangement-exterieur" },
        {
          id: "barbecue-cuisine-exterieure",
          name: "شوايات ومطابخ خارجية",
          slug: "barbecue-cuisine-exterieure",
          subcategories: [
            { id: "barbecue", name: "شوايات", slug: "barbecue" },
            { id: "cuisine-exterieure", name: "مطابخ خارجية", slug: "cuisine-exterieure" }
          ]
        }
      ]
    },
    {
      id: "decoration-murale",
      name: "ديكور جداري",
      slug: "decoration-murale",
      subcategories: [
        {
          id: "tableaux",
          name: "لوحات",
          slug: "tableaux",
          subcategories: [
            { id: "abstraits", name: "مجردة", slug: "abstraits" },
            { id: "modernes", name: "حديثة", slug: "modernes" },
            { id: "islamiques", name: "إسلامية", slug: "islamiques" }
          ]
        },
        {
          id: "affiches-posters",
          name: "ملصقات وبوسترات",
          slug: "affiches-posters",
          subcategories: [
            { id: "affiches", name: "ملصقات", slug: "affiches" },
            { id: "posters", name: "بوسترات", slug: "posters" }
          ]
        },
        { id: "miroirs-decoratifs", name: "مرايا زخرفية", slug: "miroirs-decoratifs" },
        { id: "horloges-murales", name: "ساعات حائط", slug: "horloges-murales" },
        { id: "stickers-muraux", name: "ملصقات حائط", slug: "stickers-muraux" },
        { id: "decorations-metal", name: "ديكورات معدنية", slug: "decorations-metal" },
        { id: "panneaux-muraux-3d", name: "ألواح جدارية ثلاثية الأبعاد", slug: "panneaux-muraux-3d" },
        {
          id: "tapisseries-toiles-imprimees",
          name: "منسوجات جدارية ولوحات مطبوعة",
          slug: "tapisseries-toiles-imprimees",
          subcategories: [
            { id: "tapisseries", name: "منسوجات جدارية", slug: "tapisseries" },
            { id: "toiles-imprimees", name: "لوحات مطبوعة", slug: "toiles-imprimees" }
          ]
        }
      ]
    },
    {
      id: "luminaires-eclairage",
      name: "إضاءة",
      slug: "luminaires-eclairage",
      subcategories: [
        { id: "lampes-de-table", name: "مصابيح طاولة", slug: "lampes-de-table" },
        { id: "lampadaires", name: "مصابيح أرضية", slug: "lampadaires" },
        {
          id: "suspensions-lustres",
          name: "مصابيح معلقة وثريات",
          slug: "suspensions-lustres",
          subcategories: [
            { id: "suspensions", name: "مصابيح معلقة", slug: "suspensions" },
            { id: "lustres", name: "ثريات", slug: "lustres" }
          ]
        },
        { id: "appliques-murales", name: "مصابيح حائط", slug: "appliques-murales" },
        { id: "luminaires-led", name: "إضاءة LED", slug: "luminaires-led" },
        { id: "lampes-de-bureau", name: "مصابيح مكتب", slug: "lampes-de-bureau" },
        { id: "guirlandes-lumineuses", name: "سلاسل ضوئية", slug: "guirlandes-lumineuses" },
        { id: "rubans-led", name: "شرائط LED", slug: "rubans-led" },
        { id: "eclairage-exterieur", name: "إضاءة خارجية", slug: "eclairage-exterieur" }
      ]
    },
    {
      id: "tapis-textiles-maison",
      name: "سجاد ومنسوجات منزلية",
      slug: "tapis-textiles-maison",
      subcategories: [
        {
          id: "tapis",
          name: "سجاد",
          slug: "tapis",
          subcategories: [
            { id: "salon", name: "غرفة المعيشة", slug: "salon" },
            { id: "chambre", name: "غرفة النوم", slug: "chambre" },
            { id: "orientaux", name: "شرقية", slug: "orientaux" },
            { id: "modernes", name: "حديثة", slug: "modernes" }
          ]
        },
        {
          id: "rideaux-voilages",
          name: "ستائر وشيفون",
          slug: "rideaux-voilages",
          subcategories: [
            { id: "rideaux", name: "ستائر", slug: "rideaux" },
            { id: "voilages", name: "شيفون", slug: "voilages" }
          ]
        },
        {
          id: "stores",
          name: "ستائر",
          slug: "stores",
          subcategories: [
            { id: "rouleaux", name: "رول", slug: "rouleaux" },
            { id: "venitiens", name: "معدنية/فينيسية", slug: "venitiens" },
            { id: "bambou", name: "بامبو", slug: "bambou" }
          ]
        },
        {
          id: "coussins-housses",
          name: "وسائد وأغطية",
          slug: "coussins-housses",
          subcategories: [
            { id: "coussins", name: "وسائد", slug: "coussins" },
            { id: "housses", name: "أغطية", slug: "housses" }
          ]
        },
        {
          id: "jetes-plaids",
          name: "شالات وبطانيات خفيفة",
          slug: "jetes-plaids",
          subcategories: [
            { id: "jetes", name: "شالات", slug: "jetes" },
            { id: "plaids", name: "بطانيات خفيفة", slug: "plaids" }
          ]
        },
        { id: "linge-de-lit", name: "مفروشات سرير", slug: "linge-de-lit" },
        { id: "linge-de-bain", name: "مفروشات حمام", slug: "linge-de-bain" },
        {
          id: "nappes-textiles-cuisine",
          name: "مفارش ومنسوجات المطبخ",
          slug: "nappes-textiles-cuisine",
          subcategories: [
            { id: "nappes", name: "مفارش", slug: "nappes" },
            { id: "textiles-cuisine", name: "منسوجات المطبخ", slug: "textiles-cuisine" }
          ]
        }
      ]
    },
    {
      id: "decoration-art-maison",
      name: "ديكور وفنون منزلية",
      slug: "decoration-art-maison",
      subcategories: [
        {
          id: "vases-pots-decoratifs",
          name: "مزهرية وأواني زخرفية",
          slug: "vases-pots-decoratifs",
          subcategories: [
            { id: "vases", name: "مزهرية", slug: "vases" },
            { id: "pots", name: "أواني", slug: "pots" }
          ]
        },
        {
          id: "bougies-photophores",
          name: "شموع وحاملات شموع",
          slug: "bougies-photophores",
          subcategories: [
            { id: "bougies", name: "شموع", slug: "bougies" },
            { id: "photophores", name: "حاملات شموع", slug: "photophores" }
          ]
        },
        {
          id: "sculptures-statuettes",
          name: "منحوتات وتماثيل صغيرة",
          slug: "sculptures-statuettes",
          subcategories: [
            { id: "sculptures", name: "منحوتات", slug: "sculptures" },
            { id: "statuettes", name: "تماثيل صغيرة", slug: "statuettes" }
          ]
        },
        { id: "articles-artisanaux", name: "منتجات حرفية", slug: "articles-artisanaux" },
        {
          id: "objets-decoratifs",
          name: "أشياء زخرفية",
          slug: "objets-decoratifs",
          subcategories: [
            { id: "bois", name: "خشب", slug: "bois" },
            { id: "metal", name: "معدن", slug: "metal" },
            { id: "verre", name: "زجاج", slug: "verre" }
          ]
        },
        { id: "plateaux-decoratifs", name: "صواني زخرفية", slug: "plateaux-decoratifs" },
        {
          id: "coffrets-boites",
          name: "صناديق وحاويات",
          slug: "coffrets-boites",
          subcategories: [
            { id: "coffrets", name: "صناديق", slug: "coffrets" },
            { id: "boites", name: "حاويات", slug: "boites" }
          ]
        }
      ]
    },
    {
      id: "rangement-organisation",
      name: "تنظيم وتخزين",
      slug: "rangement-organisation",
      subcategories: [
        {
          id: "boites-paniers",
          name: "صناديق وسلال",
          slug: "boites-paniers",
          subcategories: [
            { id: "boites", name: "صناديق", slug: "boites" },
            { id: "paniers", name: "سلال", slug: "paniers" }
          ]
        },
        { id: "organiseurs-tiroirs", name: "منظِّمات الأدراج", slug: "organiseurs-tiroirs" },
        { id: "etageres-modulaires", name: "رفوف معيارية", slug: "etageres-modulaires" },
        {
          id: "meubles-rangement-materiaux",
          name: "أثاث تخزين بلاستيك/خشب/معدن",
          slug: "meubles-rangement-materiaux",
          subcategories: [
            { id: "plastique", name: "بلاستيك", slug: "plastique" },
            { id: "bois", name: "خشب", slug: "bois" },
            { id: "metal", name: "معدن", slug: "metal" }
          ]
        },
        { id: "portemanteaux", name: "شماعات", slug: "portemanteaux" },
        {
          id: "pateres-crochets",
          name: "علاقات ومشابك",
          slug: "pateres-crochets",
          subcategories: [
            { id: "pateres", name: "علاقات", slug: "pateres" },
            { id: "crochets", name: "مشابك", slug: "crochets" }
          ]
        },
        { id: "armoires-pliables", name: "خزائن قابلة للطي", slug: "armoires-pliables" },
        { id: "rayonnages", name: "أرفف تخزين", slug: "rayonnages" }
      ]
    },
    {
      id: "maison-intelligente",
      name: "منزل ذكي",
      slug: "maison-intelligente",
      subcategories: [
        { id: "ampoules-connectees", name: "مصابيح ذكية متصلة", slug: "ampoules-connectees" },
        { id: "prises-intelligentes", name: "مقابس ذكية", slug: "prises-intelligentes" },
        {
          id: "capteurs-detecteurs",
          name: "حساسات وكواشف",
          slug: "capteurs-detecteurs",
          subcategories: [
            { id: "capteurs", name: "حساسات", slug: "capteurs" },
            { id: "detecteurs", name: "كواشف", slug: "detecteurs" }
          ]
        },
        { id: "commandes-distance", name: "أجهزة تحكم عن بعد", slug: "commandes-distance" },
        { id: "gadgets-domotiques-decoratifs", name: "أدوات منزلية ذكية زخرفية", slug: "gadgets-domotiques-decoratifs" }
      ]
    },
    {
      id: "decoration-vegetale-plantes",
      name: "ديكور نباتي ونباتات",
      slug: "decoration-vegetale-plantes",
      subcategories: [
        { id: "plantes-naturelles", name: "نباتات طبيعية", slug: "plantes-naturelles" },
        { id: "plantes-artificielles", name: "نباتات صناعية", slug: "plantes-artificielles" },
        { id: "pots-de-fleurs", name: "أصص زهور", slug: "pots-de-fleurs" },
        { id: "jardinieres", name: "أحواض زراعة", slug: "jardinieres" },
        { id: "support-plantes", name: "حوامل نباتات", slug: "support-plantes" },
        { id: "terrariums", name: "تراريوم", slug: "terrariums" },
        { id: "decoration-botanique", name: "ديكور نباتي", slug: "decoration-botanique" }
      ]
    },
    {
      id: "decoration-enfant-bebe",
      name: "ديكور للأطفال والرضع",
      slug: "decoration-enfant-bebe",
      subcategories: [
        { id: "mobilier-chambre-enfant", name: "أثاث غرفة الأطفال", slug: "mobilier-chambre-enfant" },
        { id: "luminaires-enfant", name: "إضاءة للأطفال", slug: "luminaires-enfant" },
        {
          id: "stickers-posters-enfant",
          name: "ملصقات وبوسترات للأطفال",
          slug: "stickers-posters-enfant",
          subcategories: [
            { id: "stickers-enfant", name: "ملصقات للأطفال", slug: "stickers-enfant" },
            { id: "posters-enfant", name: "بوسترات للأطفال", slug: "posters-enfant" }
          ]
        },
        { id: "rangements-jouets", name: "تنظيم الألعاب", slug: "rangements-jouets" },
        {
          id: "petits-fauteuils-poufs",
          name: "كراسي صغيرة وبوفات",
          slug: "petits-fauteuils-poufs",
          subcategories: [
            { id: "petits-fauteuils", name: "كراسي صغيرة", slug: "petits-fauteuils" },
            { id: "poufs", name: "بوفات", slug: "poufs" }
          ]
        }
      ]
    },
    {
      id: "styles-decoratifs",
      name: "أنماط ديكور",
      slug: "styles-decoratifs",
      subcategories: [
        { id: "scandinave", name: "اسكندنافي", slug: "scandinave" },
        { id: "moderne", name: "حديث", slug: "moderne" },
        { id: "minimaliste", name: "بسيط", slug: "minimaliste" },
        { id: "industriel", name: "صناعي", slug: "industriel" },
        { id: "boheme", name: "بوهيمي", slug: "boheme" },
        { id: "vintage", name: "كلاسيكي قديم", slug: "vintage" },
        { id: "art-deco", name: "آرت ديكو", slug: "art-deco" },
        { id: "rustique-campagne", name: "ريفي وبلدي", slug: "rustique-campagne" },
        { id: "oriental-marocain", name: "شرقي ومغربي", slug: "oriental-marocain" },
        { id: "contemporain", name: "معاصر", slug: "contemporain" },
        { id: "classique", name: "كلاسيكي", slug: "classique" },
        { id: "luxe-premium", name: "فاخر ومتميز", slug: "luxe-premium" }
      ]
    },
    {
      id: "materiaux",
      name: "مواد",
      slug: "materiaux",
      subcategories: [
        { id: "bois-massif", name: "خشب مصمت", slug: "bois-massif" },
        { id: "mdf", name: "MDF", slug: "mdf" },
        { id: "metal", name: "معدن", slug: "metal" },
        { id: "aluminium", name: "ألمنيوم", slug: "aluminium" },
        { id: "verre", name: "زجاج", slug: "verre" },
        { id: "rotin", name: "راتان", slug: "rotin" },
        { id: "bambou", name: "بامبو", slug: "bambou" },
        { id: "resine-tressee", name: "راتنج منسوج", slug: "resine-tressee" },
        { id: "marbre", name: "رخام", slug: "marbre" },
        { id: "ceramique", name: "سيراميك", slug: "ceramique" },
        { id: "tissu", name: "قماش", slug: "tissu" },
        { id: "velours", name: "مخمل", slug: "velours" },
        {
          id: "cuir-simili",
          name: "جلد وبديل جلد",
          slug: "cuir-simili",
          subcategories: [
            { id: "cuir", name: "جلد", slug: "cuir" },
            { id: "simili", name: "بديل جلد", slug: "simili" }
          ]
        },
        { id: "beton-decoratif", name: "خرسانة زخرفية", slug: "beton-decoratif" }
      ]
    },
    {
      id: "accessoires-maison",
      name: "إكسسوارات المنزل",
      slug: "accessoires-maison",
      subcategories: [
        {
          id: "horloges-reveils",
          name: "ساعات ومنبهات",
          slug: "horloges-reveils",
          subcategories: [
            { id: "horloges", name: "ساعات", slug: "horloges" },
            { id: "reveils", name: "منبهات", slug: "reveils" }
          ]
        },
        { id: "cadres-photo", name: "إطارات صور", slug: "cadres-photo" },
        { id: "parfums-interieur", name: "عطور منزلية", slug: "parfums-interieur" },
        { id: "fontaines-decoratives", name: "نافورات زخرفية", slug: "fontaines-decoratives" },
        { id: "distributeurs-savon-design", name: "موزعات صابون بتصميم", slug: "distributeurs-savon-design" },
        {
          id: "cintres-porte-accessoires",
          name: "علاقات ورفوف ملحقات",
          slug: "cintres-porte-accessoires",
          subcategories: [
            { id: "cintres", name: "علاقات", slug: "cintres" },
            { id: "porte-accessoires", name: "حوامل ملحقات", slug: "porte-accessoires" }
          ]
        },
        { id: "accessoires-cheminee", name: "ملحقات المدفأة", slug: "accessoires-cheminee" }
      ]
    },
    {
      id: "objets-artisanaux-locaux",
      name: "منتجات حرفية ومحلية",
      slug: "objets-artisanaux-locaux",
      subcategories: [
        { id: "decorations-traditionnelles", name: "زخارف تقليدية", slug: "decorations-traditionnelles" },
        {
          id: "articles-berberes-orientaux",
          name: "منتجات أمازيغية وشرقية",
          slug: "articles-berberes-orientaux",
          subcategories: [
            { id: "berberes", name: "أمازيغية", slug: "berberes" },
            { id: "orientaux", name: "شرقية", slug: "orientaux" }
          ]
        },
        { id: "paniers-tresses", name: "سلال منسوجة", slug: "paniers-tresses" },
        { id: "poufs-artisanaux", name: "بوفات يدوية الصنع", slug: "poufs-artisanaux" },
        { id: "art-mural-local", name: "فن جداري محلي", slug: "art-mural-local" }
      ]
    }
  ]
};