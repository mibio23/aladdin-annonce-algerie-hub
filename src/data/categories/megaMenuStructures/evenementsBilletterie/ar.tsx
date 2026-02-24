import { MenuCategory } from "@/data/categoryTypes";

export const evenementsBilletterieAr: MenuCategory = {
  id: "evenements-billetterie",
  name: "الفعاليات والتذاكر",
  slug: "evenements-billetterie",
  subcategories: [
    {
      id: "concerts-spectacles",
      name: "حفلات وعروض",
      slug: "concerts-spectacles",
      subcategories: [
        { id: "concerts-live", name: "حفلات مباشرة", slug: "concerts-live" },
        { id: "festivals-musicaux", name: "مهرجانات موسيقية", slug: "festivals-musicaux" },
        { id: "spectacles-humoristiques", name: "عروض كوميدية", slug: "spectacles-humoristiques" },
        { id: "one-man-show", name: "عرض فردي", slug: "one-man-show" },
        { id: "comedies-musicales", name: "كوميديا موسيقية", slug: "comedies-musicales" },
        { id: "soirees-artistiques", name: "أمسيات فنية", slug: "soirees-artistiques" },
        { id: "performances-culturelles", name: "عروض ثقافية", slug: "performances-culturelles" },
        { id: "recitals", name: "ريسيطال", slug: "recitals" }
      ]
    },
    {
      id: "evenements-sportifs",
      name: "فعاليات رياضية",
      slug: "evenements-sportifs",
      subcategories: [
        { id: "matchs-football", name: "مباريات كرة قدم", slug: "matchs-football" },
        { id: "competitions-sportives", name: "مسابقات رياضية", slug: "competitions-sportives" },
        { id: "tournois", name: "بطولات", slug: "tournois" },
        { id: "sports-mecaniques", name: "رياضات ميكانيكية", slug: "sports-mecaniques" },
        { id: "arts-martiaux", name: "فنون قتالية", slug: "arts-martiaux" },
        { id: "marathons", name: "ماراثونات", slug: "marathons" },
        { id: "evenements-e-sport", name: "فعاليات الرياضات الإلكترونية", slug: "evenements-e-sport" }
      ]
    },
    {
      id: "cinema-avant-premieres",
      name: "سينما وعروض أولى",
      slug: "cinema-avant-premieres",
      subcategories: [
        { id: "billets-cinema", name: "تذاكر سينما", slug: "billets-cinema" },
        { id: "projections-speciales", name: "عروض خاصة", slug: "projections-speciales" },
        { id: "avant-premieres", name: "عروض أولى", slug: "avant-premieres" },
        { id: "festivals-film", name: "مهرجانات الفيلم", slug: "festivals-film" },
        { id: "seances-vip", name: "جلسات كبار الشخصيات", slug: "seances-vip" }
      ]
    },
    {
      id: "theatre-arts-sceniques",
      name: "مسرح وفنون استعراضية",
      slug: "theatre-arts-sceniques",
      subcategories: [
        { id: "pieces-theatre", name: "مسرحيات", slug: "pieces-theatre" },
        { id: "operas", name: "أوبرا", slug: "operas" },
        { id: "ballets", name: "باليه", slug: "ballets" },
        { id: "danse-contemporaine", name: "رقص معاصر", slug: "danse-contemporaine" },
        { id: "representations-culturelles", name: "عروض ثقافية", slug: "representations-culturelles" }
      ]
    },
    {
      id: "conferences-formations",
      name: "مؤتمرات وتكوينات",
      slug: "conferences-formations",
      subcategories: [
        { id: "conferences-professionnelles", name: "مؤتمرات مهنية", slug: "conferences-professionnelles" },
        { id: "seminaires", name: "ندوات", slug: "seminaires" },
        { id: "formations", name: "تكوينات", slug: "formations" },
        { id: "ateliers-pratiques", name: "ورشات عملية", slug: "ateliers-pratiques" },
        { id: "masterclass", name: "ماستر كلاس", slug: "masterclass" },
        { id: "salons", name: "معارض", slug: "salons" }
      ]
    },
    {
      id: "festivals-fetes",
      name: "مهرجانات واحتفالات",
      slug: "festivals-fetes",
      subcategories: [
        { id: "festivals-culturels", name: "مهرجانات ثقافية", slug: "festivals-culturels" },
        { id: "fetes-locales", name: "حفلات محلية", slug: "fetes-locales" },
        { id: "evenements-traditionnels", name: "فعاليات تقليدية", slug: "evenements-traditionnels" },
        { id: "carnavals", name: "كرنفالات", slug: "carnavals" },
        { id: "celebrations-nationales", name: "احتفالات وطنية", slug: "celebrations-nationales" }
      ]
    },
    {
      id: "parcs-loisirs",
      name: "منتزهات وترفيه",
      slug: "parcs-loisirs",
      subcategories: [
        { id: "parcs-attraction", name: "تذاكر ملاهي", slug: "parcs-attraction" },
        { id: "parcs-aquatiques", name: "منتزهات مائية", slug: "parcs-aquatiques" },
        { id: "jardins-zoologiques", name: "حدائق حيوان", slug: "jardins-zoologiques" },
        { id: "circuits-decouvertes", name: "جولات اكتشاف", slug: "circuits-decouvertes" },
        { id: "activites-loisirs", name: "أنشطة ترفيهية", slug: "activites-loisirs" }
      ]
    },
    {
      id: "evenements-familiaux",
      name: "فعاليات عائلية",
      slug: "evenements-familiaux",
      subcategories: [
        { id: "spectacles-enfants", name: "عروض للأطفال", slug: "spectacles-enfants" },
        { id: "animations", name: "تنشيطات", slug: "animations" },
        { id: "ateliers-creatifs", name: "ورشات إبداعية", slug: "ateliers-creatifs" },
        { id: "evenements-educatifs", name: "فعاليات تعليمية", slug: "evenements-educatifs" },
        { id: "shows-interactifs", name: "عروض تفاعلية", slug: "shows-interactifs" }
      ]
    },
    {
      id: "gala-receptions",
      name: "حفلات راقية واستقبالات",
      slug: "gala-receptions",
      subcategories: [
        { id: "soirees-gala", name: "أمسيات غالا", slug: "soirees-gala" },
        { id: "diners-caritatifs", name: "عشاء خيري", slug: "diners-caritatifs" },
        { id: "evenements-vip", name: "فعاليات لكبار الشخصيات", slug: "evenements-vip" },
        { id: "soirees-privees", name: "سهرات خاصة", slug: "soirees-privees" },
        { id: "evenements-prestige", name: "فعاليات فاخرة", slug: "evenements-prestige" }
      ]
    },
    {
      id: "salons-expositions",
      name: "معارض وملتقيات",
      slug: "salons-expositions",
      subcategories: [
        { id: "salons-professionnels", name: "ملتقيات مهنية", slug: "salons-professionnels" },
        { id: "foires-commerciales", name: "معارض تجارية", slug: "foires-commerciales" },
        { id: "expositions-artistiques", name: "معارض فنية", slug: "expositions-artistiques" },
        { id: "expositions-scientifiques", name: "معارض علمية", slug: "expositions-scientifiques" }
      ]
    },
    {
      id: "billetterie-transport",
      name: "تذاكر النقل",
      slug: "billetterie-transport",
      subcategories: [
        { id: "billets-autocar", name: "تذاكر حافلات", slug: "billets-autocar" },
        { id: "billets-train", name: "تذاكر قطار", slug: "billets-train" },
        { id: "billets-ferry", name: "تذاكر عبّارة", slug: "billets-ferry" },
        { id: "traversees-maritimes", name: "رحلات بحرية", slug: "traversees-maritimes" },
        { id: "bus-interwilayas", name: "حافلات بين الولايات", slug: "bus-interwilayas" },
        { id: "billets-touristiques", name: "تذاكر سياحية", slug: "billets-touristiques" }
      ]
    },
    {
      id: "evenements-religieux-traditionnels",
      name: "فعاليات دينية وتقليدية",
      slug: "evenements-religieux-traditionnels",
      subcategories: [
        { id: "mawlid", name: "المولد النبوي", slug: "mawlid" },
        { id: "fetes-religieuses", name: "أعياد دينية", slug: "fetes-religieuses" },
        { id: "rassemblements-culturels", name: "تجمعات ثقافية", slug: "rassemblements-culturels" },
        { id: "ceremonies-traditionnelles", name: "مراسم تقليدية", slug: "ceremonies-traditionnelles" }
      ]
    },
    {
      id: "services-evenementiels",
      name: "خدمات تنظيم الفعاليات",
      slug: "services-evenementiels",
      subcategories: [
        { id: "organisation-evenements", name: "تنظيم فعاليات", slug: "organisation-evenements" },
        { id: "location-sono", name: "كراء أجهزة الصوت", slug: "location-sono" },
        { id: "eclairage", name: "إضاءة", slug: "eclairage" },
        { id: "decoration-evenementielle", name: "زينة الفعاليات", slug: "decoration-evenementielle" },
        { id: "photographes", name: "مصوّرون", slug: "photographes" },
        { id: "videastes", name: "مصوّرو فيديو", slug: "videastes" },
        { id: "animateurs", name: "منشّطون", slug: "animateurs" }
      ]
    },
    {
      id: "packages-offres-speciales",
      name: "باقات وعروض خاصة",
      slug: "packages-offres-speciales",
      subcategories: [
        { id: "packs-fetes", name: "باقات حفلات", slug: "packs-fetes" },
        { id: "acces-vip", name: "دخول كبار الشخصيات", slug: "acces-vip" },
        { id: "pass-multi-evenements", name: "بطاقات متعددة الفعاليات", slug: "pass-multi-evenements" },
        { id: "offres-saisonnieres", name: "عروض موسمية", slug: "offres-saisonnieres" },
        { id: "promotions", name: "تخفيضات", slug: "promotions" }
      ]
    }
  ]
};