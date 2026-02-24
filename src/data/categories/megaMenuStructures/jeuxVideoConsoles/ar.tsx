import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Gamepad2 } from "lucide-react";

export const jeuxVideoConsolesAr: MenuCategory = {
  id: "jeux-video-consoles",
  name: "ألعاب فيديو ووحدات التحكم",
  slug: "jeux-video-consoles",
  icon: <Gamepad2 className="w-4 h-4" />,
  subcategories: [
    {
      id: "consoles-de-salon",
      name: "أجهزة الألعاب المنزلية",
      slug: "consoles-de-salon",
      subcategories: [
        { id: "playstation", name: "بلايستيشن", slug: "playstation" },
        { id: "xbox", name: "إكس بوكس", slug: "xbox" },
        { id: "nintendo-switch", name: "نينتندو سويتش", slug: "nintendo-switch" },
        { id: "atari", name: "أتاري", slug: "atari" },
        { id: "sega", name: "سيغا", slug: "sega" },
        { id: "autres-consoles-retro", name: "أجهزة ريترو أخرى", slug: "autres-consoles-retro" },
        {
          id: "accessoires-consoles-de-salon",
          name: "ملحقات الأجهزة المنزلية",
          slug: "accessoires-consoles-de-salon",
          subcategories: [
            { id: "manettes", name: "وحدات تحكم", slug: "manettes" },
            { id: "cables-hdmi", name: "كابلات HDMI", slug: "cables-hdmi" },
            { id: "alimentations", name: "مزودات طاقة", slug: "alimentations" },
            { id: "stations-de-charge", name: "قواعد شحن", slug: "stations-de-charge" },
            { id: "telecommandes-multimedia", name: "أجهزة تحكم وسائط", slug: "telecommandes-multimedia" }
          ]
        }
      ]
    },
    {
      id: "consoles-portables",
      name: "أجهزة محمولة",
      slug: "consoles-portables",
      subcategories: [
        { id: "nintendo-switch-lite", name: "نينتندو سويتش لايت", slug: "nintendo-switch-lite" },
        { id: "nintendo-3ds-2ds", name: "نينتندو 3DS/2DS", slug: "nintendo-3ds-2ds" },
        { id: "psp", name: "PSP", slug: "psp" },
        { id: "ps-vita", name: "PS Vita", slug: "ps-vita" },
        { id: "consoles-retro-portables", name: "أجهزة ريترو محمولة", slug: "consoles-retro-portables" },
        { id: "consoles-android", name: "أجهزة أندرويد", slug: "consoles-android" },
        {
          id: "accessoires-consoles-portables",
          name: "ملحقات الأجهزة المحمولة",
          slug: "accessoires-consoles-portables",
          subcategories: [
            { id: "housses", name: "حافظات", slug: "housses" },
            { id: "batteries", name: "بطاريات", slug: "batteries" },
            { id: "protections-ecran", name: "واقيات شاشة", slug: "protections-ecran" }
          ]
        }
      ]
    },
    {
      id: "jeux-playstation",
      name: "ألعاب بلايستيشن",
      slug: "jeux-playstation",
      subcategories: [
        { id: "ps5", name: "PS5", slug: "ps5" },
        { id: "ps4", name: "PS4", slug: "ps4" },
        { id: "ps3", name: "PS3", slug: "ps3" },
        { id: "ps2", name: "PS2", slug: "ps2" },
        { id: "ps1", name: "PS1", slug: "ps1" },
        { id: "editions-limitees", name: "إصدارات محدودة", slug: "editions-limitees" },
        { id: "jeux-neufs", name: "جديدة", slug: "jeux-neufs" },
        { id: "jeux-occasion", name: "مستعملة", slug: "jeux-occasion" }
      ]
    },
    {
      id: "jeux-xbox",
      name: "ألعاب إكس بوكس",
      slug: "jeux-xbox",
      subcategories: [
        { id: "xbox-series-xs", name: "Xbox Series X|S", slug: "xbox-series-xs" },
        { id: "xbox-one", name: "Xbox One", slug: "xbox-one" },
        { id: "xbox-360", name: "Xbox 360", slug: "xbox-360" },
        { id: "editions-collector", name: "إصدارات مجمّعين", slug: "editions-collector" },
        { id: "jeux-neufs-xbox", name: "جديدة", slug: "jeux-neufs-xbox" },
        { id: "jeux-occasion-xbox", name: "مستعملة", slug: "jeux-occasion-xbox" }
      ]
    },
    {
      id: "jeux-nintendo",
      name: "ألعاب نينتندو",
      slug: "jeux-nintendo",
      subcategories: [
        { id: "switch-jeux", name: "سويتش", slug: "switch-jeux" },
        { id: "wii-u", name: "وي يو", slug: "wii-u" },
        { id: "wii", name: "وي", slug: "wii" },
        { id: "gamecube", name: "جيم كيوب", slug: "gamecube" },
        { id: "3ds-2ds-jeux", name: "3DS/2DS", slug: "3ds-2ds-jeux" },
        { id: "jeux-retro-nintendo", name: "ألعاب ريترو نينتندو", slug: "jeux-retro-nintendo" }
      ]
    },
    {
      id: "jeux-pc-mac",
      name: "ألعاب PC و Mac",
      slug: "jeux-pc-mac",
      subcategories: [
        { id: "jeux-physiques", name: "نسخ مادية", slug: "jeux-physiques" },
        { id: "jeux-steam", name: "Steam", slug: "jeux-steam" },
        { id: "jeux-epic-games", name: "Epic Games", slug: "jeux-epic-games" },
        { id: "jeux-blizzard", name: "Blizzard", slug: "jeux-blizzard" },
        { id: "comptes-gaming", name: "حسابات ألعاب", slug: "comptes-gaming" }
      ]
    },
    {
      id: "jeux-retro-collections",
      name: "ألعاب ريترو ومقتنيات",
      slug: "jeux-retro-collections",
      subcategories: [
        { id: "cartouches-nes", name: "خرطوشات NES", slug: "cartouches-nes" },
        { id: "cartouches-snes", name: "خرطوشات SNES", slug: "cartouches-snes" },
        { id: "sega-retro", name: "سيغا", slug: "sega-retro" },
        { id: "gameboy", name: "جيم بوي", slug: "gameboy" },
        { id: "atari-retro", name: "أتاري", slug: "atari-retro" },
        { id: "neo-geo", name: "نيو جيو", slug: "neo-geo" },
        { id: "editions-rares", name: "إصدارات نادرة", slug: "editions-rares" },
        {
          id: "objets-collectors",
          name: "مقتنيات",
          slug: "objets-collectors",
          subcategories: [
            { id: "figurines-collector", name: "مجسمات", slug: "figurines-collector" },
            { id: "ost", name: "موسيقى تصويرية", slug: "ost" },
            { id: "artbooks", name: "كتب فنية", slug: "artbooks" }
          ]
        }
      ]
    },
    {
      id: "accessoires-gaming",
      name: "ملحقات الألعاب",
      slug: "accessoires-gaming",
      subcategories: [
        { id: "manettes-gaming", name: "وحدات تحكم", slug: "manettes-gaming" },
        { id: "casques-gaming", name: "سماعات ألعاب", slug: "casques-gaming" },
        { id: "tapis-rgb", name: "حصائر RGB", slug: "tapis-rgb" },
        { id: "claviers-gaming", name: "لوحات مفاتيح ألعاب", slug: "claviers-gaming" },
        { id: "souris-gaming", name: "فأرات ألعاب", slug: "souris-gaming" },
        { id: "volants-pedaliers", name: "مقود ودواسات سباق", slug: "volants-pedaliers" },
        { id: "joysticks", name: "عصا التحكم", slug: "joysticks" },
        { id: "flight-sticks", name: "عصي الطيران", slug: "flight-sticks" }
      ]
    },
    {
      id: "equipements-vr-ar",
      name: "أجهزة الواقع الافتراضي والمعزز",
      slug: "equipements-vr-ar",
      subcategories: [
        { id: "ps-vr", name: "PS VR", slug: "ps-vr" },
        { id: "oculus-quest", name: "Oculus Quest", slug: "oculus-quest" },
        { id: "htc-vive", name: "HTC Vive", slug: "htc-vive" },
        {
          id: "accessoires-vr",
          name: "ملحقات VR",
          slug: "accessoires-vr",
          subcategories: [
            { id: "capteurs", name: "حساسات", slug: "capteurs" },
            { id: "sangles", name: "أحزمة", slug: "sangles" },
            { id: "adaptateurs", name: "محولات", slug: "adaptateurs" }
          ]
        }
      ]
    },
    {
      id: "composants-e-sport",
      name: "مكوّنات ومعدات الرياضات الإلكترونية",
      slug: "composants-e-sport",
      subcategories: [
        { id: "ecrans-gaming", name: "شاشات ألعاب", slug: "ecrans-gaming" },
        { id: "chaises-gaming", name: "كراسي ألعاب", slug: "chaises-gaming" },
        { id: "bureaux-gamer", name: "مكاتب ألعاب", slug: "bureaux-gamer" },
        { id: "cartes-graphiques", name: "بطاقات رسومية", slug: "cartes-graphiques" },
        { id: "ram", name: "ذاكرة RAM", slug: "ram" },
        { id: "ssd", name: "SSD", slug: "ssd" },
        { id: "refroidissement", name: "تبريد", slug: "refroidissement" }
      ]
    },
    {
      id: "cartes-abonnements",
      name: "بطاقات واشتراكات",
      slug: "cartes-abonnements",
      subcategories: [
        { id: "ps-plus", name: "PS Plus", slug: "ps-plus" },
        { id: "xbox-game-pass", name: "Xbox Game Pass", slug: "xbox-game-pass" },
        { id: "nintendo-online", name: "Nintendo Online", slug: "nintendo-online" },
        {
          id: "cartes-prepayees",
          name: "بطاقات مسبقة الدفع",
          slug: "cartes-prepayees",
          subcategories: [
            { id: "playstation-store", name: "PlayStation Store", slug: "playstation-store" },
            { id: "xbox-live", name: "Xbox Live", slug: "xbox-live" },
            { id: "steam", name: "Steam", slug: "steam" }
          ]
        }
      ]
    },
    {
      id: "streaming-capture-video",
      name: "البث والتقاط الفيديو",
      slug: "streaming-capture-video",
      subcategories: [
        {
          id: "cartes-acquisition",
          name: "بطاقات التقاط",
          slug: "cartes-acquisition",
          subcategories: [
            { id: "elgato", name: "Elgato", slug: "elgato" },
            { id: "avermedia", name: "AverMedia", slug: "avermedia" }
          ]
        },
        { id: "cameras-streaming", name: "كاميرات البث", slug: "cameras-streaming" },
        { id: "micros-professionnels", name: "ميكروفونات احترافية", slug: "micros-professionnels" },
        { id: "eclairage", name: "إضاءة", slug: "eclairage" },
        { id: "fonds-verts", name: "شاشات خضراء", slug: "fonds-verts" }
      ]
    },
    {
      id: "merchandising-gaming",
      name: "منتجات وأزياء الألعاب",
      slug: "merchandising-gaming",
      subcategories: [
        { id: "figurines", name: "مجسمات", slug: "figurines" },
        { id: "posters", name: "ملصقات", slug: "posters" },
        { id: "vetements-gaming", name: "ملابس الألعاب", slug: "vetements-gaming" },
        { id: "accessoires-cosplay", name: "إكسسوارات تقمص شخصية", slug: "accessoires-cosplay" },
        { id: "collections-officielles", name: "مجموعات رسمية", slug: "collections-officielles" }
      ]
    }
  ]
};