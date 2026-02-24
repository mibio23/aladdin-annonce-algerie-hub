import { MenuCategory } from "../../../categoryTypes";
import { PawPrint } from "lucide-react";

export const animauxAccessoiresAr: MenuCategory = {
  id: "animaux-accessoires",
  name: "الحيوانات والإكسسوارات",
  slug: "animaux-accessoires",
  icon: <PawPrint className="w-4 h-4" />,
  subcategories: [
    {
      id: "animaux-domestiques",
      name: "الحيوانات الأليفة",
      slug: "animaux-domestiques",
      subcategories: [
        {
          id: "chiens",
          name: "الكلاب",
          slug: "chiens",
          subcategories: [
            { id: "chiots-races", name: "جراء سلالة", slug: "chiots-races" },
            { id: "chiens-adultes", name: "كلاب بالغة", slug: "chiens-adultes" },
            { id: "chiens-dresses", name: "كلاب مدربة", slug: "chiens-dresses" }
          ]
        },
        {
          id: "chats",
          name: "القطط",
          slug: "chats",
          subcategories: [
            { id: "chatons-races", name: "قطط صغيرة سلالة", slug: "chatons-races" },
            { id: "chats-adultes", name: "قطط بالغة", slug: "chats-adultes" }
          ]
        },
        { id: "oiseaux", name: "طيور", slug: "oiseaux", subcategories: [
          { id: "oiseaux-rares", name: "طيور نادرة", slug: "oiseaux-rares" },
          { id: "canaris", name: "كناري", slug: "canaris" }
        ] },
        { id: "poissons", name: "أسماك", slug: "poissons", subcategories: [
          { id: "poissons-aquarium", name: "أسماك زينة", slug: "poissons-aquarium" }
        ] },
        { id: "rongeurs", name: "قوارض", slug: "rongeurs", subcategories: [
          { id: "lapins", name: "أرانب", slug: "lapins" },
          { id: "hamsters", name: "هامستر", slug: "hamsters" }
        ] },
        { id: "reptiles", name: "زواحف", slug: "reptiles", subcategories: [
          { id: "tortues", name: "سلاحف", slug: "tortues" }
        ] }
      ]
    },
    {
      id: "animaux-elevage",
      name: "حيوانات المزرعة",
      slug: "animaux-elevage",
      subcategories: [
        { id: "ovins", name: "أغنام", slug: "ovins" },
        { id: "bovins", name: "أبقار", slug: "bovins" },
        { id: "caprins", name: "ماعز", slug: "caprins" },
        { id: "volailles", name: "دواجن", slug: "volailles" },
        { id: "equides", name: "خيول", slug: "equides" }
      ]
    },
    {
      id: "nourriture-soins",
      name: "غذاء وعناية",
      slug: "nourriture-soins",
      subcategories: [
        {
          id: "alimentation-chiens-chats",
          name: "غذاء الكلاب والقطط",
          slug: "alimentation-chiens-chats",
          subcategories: [
            { id: "croquettes", name: "كروكيت", slug: "croquettes" },
            { id: "patees", name: "باتيه", slug: "patees" },
            { id: "friandises", name: "مكافآت", slug: "friandises" }
          ]
        },
        {
          id: "alimentation-oiseaux",
          name: "غذاء الطيور",
          slug: "alimentation-oiseaux",
          subcategories: [
            { id: "melanges-oiseaux", name: "خلطات الطيور", slug: "melanges-oiseaux" }
          ]
        },
        {
          id: "alimentation-poissons",
          name: "غذاء الأسماك",
          slug: "alimentation-poissons",
          subcategories: [
            { id: "aliments-poissons", name: "طعام الأسماك", slug: "aliments-poissons" }
          ]
        },
        {
          id: "soins-hygiene",
          name: "عناية ونظافة",
          slug: "soins-hygiene",
          subcategories: [
            { id: "produits-hygiene", name: "منتجات نظافة", slug: "produits-hygiene" },
            { id: "shampoings", name: "شامبو", slug: "shampoings" },
            { id: "antiparasitaires", name: "مضادات الطفيليات", slug: "antiparasitaires" },
            { id: "anti-tiques", name: "مضادات القراد", slug: "anti-tiques" },
            { id: "produits-veterinaires", name: "منتجات بيطرية", slug: "produits-veterinaires" }
          ]
        },
        {
          id: "complements-alimentaires",
          name: "مكملات غذائية",
          slug: "complements-alimentaires",
          subcategories: [
            { id: "vitamines", name: "فيتامينات", slug: "vitamines" }
          ]
        }
      ]
    },
    {
      id: "accessoires-equipements",
      name: "إكسسوارات ومعدات",
      slug: "accessoires-equipements",
      subcategories: [
        {
          id: "accessoires-promenade",
          name: "إكسسوارات المشي",
          slug: "accessoires-promenade",
          subcategories: [
            { id: "laisses", name: "مقاود", slug: "laisses" },
            { id: "colliers", name: "أطواق", slug: "colliers" },
            { id: "harnais", name: "حمالات", slug: "harnais" }
          ]
        },
        {
          id: "habitats",
          name: "مساكن",
          slug: "habitats",
          subcategories: [
            { id: "cages", name: "أقفاص", slug: "cages" },
            { id: "volières", name: "أقفاص كبيرة", slug: "volières" },
            { id: "niches", name: "بيوت كلاب", slug: "niches" },
            { id: "aquariums", name: "أحواض سمك", slug: "aquariums" },
            { id: "terrariums", name: "أحواض زواحف", slug: "terrariums" }
          ]
        },
        {
          id: "confort-dodo",
          name: "راحة ونوم",
          slug: "confort-dodo",
          subcategories: [
            { id: "paniers", name: "سلال", slug: "paniers" },
            { id: "coussins", name: "وسائد", slug: "coussins" },
            { id: "arbres-chat", name: "أشجار قطط", slug: "arbres-chat" }
          ]
        },
        {
          id: "alimentation-accessoires",
          name: "إكسسوارات الطعام",
          slug: "alimentation-accessoires",
          subcategories: [
            { id: "gamelles", name: "أوعية", slug: "gamelles" },
            { id: "distributeurs-auto", name: "موزعات آلية", slug: "distributeurs-auto" },
            { id: "fontaines-eau", name: "نوافير مياه", slug: "fontaines-eau" }
          ]
        },
        {
          id: "litières-hygiene",
          name: "فضلات ونظافة",
          slug: "litières-hygiene",
          subcategories: [
            { id: "litières", name: "رمال فضلات", slug: "litières" },
            { id: "bacs-litiere", name: "صناديق فضلات", slug: "bacs-litiere" }
          ]
        },
        {
          id: "jouets-loisirs",
          name: "ألعاب وترفيه",
          slug: "jouets-loisirs",
          subcategories: [
            { id: "jouets", name: "ألعاب", slug: "jouets" }
          ]
        },
        {
          id: "transport",
          name: "نقل",
          slug: "transport",
          subcategories: [
            { id: "paniers-transport", name: "أقفاص نقل", slug: "paniers-transport" }
          ]
        }
      ]
    },
    {
      id: "elevage-reproduction",
      name: "تربية وتكاثر",
      slug: "elevage-reproduction",
      subcategories: [
        {
          id: "materiel-elevage",
          name: "معدات تربية",
          slug: "materiel-elevage",
          subcategories: [
            { id: "incubateurs", name: "حاضنات", slug: "incubateurs" },
            { id: "couveuses", name: "فقاسات", slug: "couveuses" },
            { id: "cages-elevage", name: "أقفاص تربية", slug: "cages-elevage" }
          ]
        },
        {
          id: "accessoires-reproduction",
          name: "إكسسوارات تكاثر",
          slug: "accessoires-reproduction",
          subcategories: [
            { id: "accessoires-accouplement", name: "إكسسوارات تزاوج", slug: "accessoires-accouplement" }
          ]
        },
        {
          id: "reproducteurs-selectionnes",
          name: "حيوانات تكاثر مختارة",
          slug: "reproducteurs-selectionnes",
          subcategories: [
            { id: "reproducteurs", name: "حيوانات تكاثر", slug: "reproducteurs" }
          ]
        },
        {
          id: "jeunes-animaux",
          name: "حيوانات صغيرة",
          slug: "jeunes-animaux",
          subcategories: [
            { id: "poussins", name: "صيصان", slug: "poussins" },
            { id: "agneaux", name: "حملان", slug: "agneaux" },
            { id: "chevreaux", name: "جديان", slug: "chevreaux" }
          ]
        },
        {
          id: "services-elevage",
          name: "خدمات تربية",
          slug: "services-elevage",
          subcategories: [
            { id: "assistance-elevage", name: "مساعدة تربية", slug: "assistance-elevage" },
            { id: "conseils-specialises", name: "نصائح متخصصة", slug: "conseils-specialises" },
            { id: "genetique-selection", name: "وراثة وانتقاء", slug: "genetique-selection" }
          ]
        }
      ]
    },
    {
      id: "services-animaliers",
      name: "خدمات حيوانات",
      slug: "services-animaliers",
      subcategories: [
        {
          id: "toilettage",
          name: "حلاقة وتنظيف",
          slug: "toilettage",
          subcategories: [
            { id: "toilettage-chiens", name: "حلاقة كلاب", slug: "toilettage-chiens" },
            { id: "toilettage-chats", name: "حلاقة قطط", slug: "toilettage-chats" }
          ]
        },
        {
          id: "dressage-education",
          name: "تدريب وتعليم",
          slug: "dressage-education",
          subcategories: [
            { id: "dressage-canin", name: "تدريب كلاب", slug: "dressage-canin" },
            { id: "education-canine", name: "تعليم كلاب", slug: "education-canine" }
          ]
        },
        {
          id: "pension-garde",
          name: "إيواء وحراسة",
          slug: "pension-garde",
          subcategories: [
            { id: "pension-animaux", name: "نزل وحراسة حيوانات", slug: "pension-animaux" }
          ]
        },
        {
          id: "promenades-soins",
          name: "مشي وعناية",
          slug: "promenades-soins",
          subcategories: [
            { id: "promenades", name: "مشي", slug: "promenades" },
            { id: "soins-domicile", name: "عناية منزلية", slug: "soins-domicile" }
          ]
        },
        {
          id: "comportement-adoption",
          name: "سلوك وتبني",
          slug: "comportement-adoption",
          subcategories: [
            { id: "consultation-comportementaliste", name: "استشارة سلوكية", slug: "consultation-comportementaliste" },
            { id: "adoption", name: "تبني", slug: "adoption" }
          ]
        },
        {
          id: "services-speciaux",
          name: "خدمات خاصة",
          slug: "services-speciaux",
          subcategories: [
            { id: "photographie-animaliere", name: "تصوير حيوانات", slug: "photographie-animaliere" },
            { id: "transport-animaux", name: "نقل حيوانات", slug: "transport-animaux" },
            { id: "services-veterinaires", name: "خدمات بيطرية خاصة", slug: "services-veterinaires" }
          ]
        }
      ]
    },
    {
      id: "produits-exterieurs",
      name: "منتجات خارجية",
      slug: "produits-exterieurs",
      subcategories: [
        {
          id: "clotures-enclos",
          name: "أسوار وحظائر",
          slug: "clotures-enclos",
          subcategories: [
            { id: "clotures-animaux", name: "أسوار حيوانات", slug: "clotures-animaux" },
            { id: "enclos", name: "حظائر", slug: "enclos" }
          ]
        },
        {
          id: "abris-exterieurs",
          name: "ملاجئ خارجية",
          slug: "abris-exterieurs",
          subcategories: [
            { id: "abris-exterieurs-animaux", name: "ملاجئ خارجية", slug: "abris-exterieurs-animaux" }
          ]
        },
        {
          id: "alimentation-automatique",
          name: "تغذية آلية",
          slug: "alimentation-automatique",
          subcategories: [
            { id: "mangeoires-auto", name: "معالف آلية", slug: "mangeoires-auto" },
            { id: "systemes-abreuvement", name: "أنظمة شرب", slug: "systemes-abreuvement" }
          ]
        },
        {
          id: "equipements-elevage-exterieur",
          name: "معدات تربية خارجية",
          slug: "equipements-elevage-exterieur",
          subcategories: [
            { id: "materiel-plein-air", name: "معدات الهواء الطلق", slug: "materiel-plein-air" }
          ]
        },
        {
          id: "confort-thermique",
          name: "راحة حرارية",
          slug: "confort-thermique",
          subcategories: [
            { id: "lampes-chauffantes", name: "مصابيح تدفئة", slug: "lampes-chauffantes" }
          ]
        },
        {
          id: "accessoires-volières",
          name: "إكسسوارات أقفاص كبيرة",
          slug: "accessoires-volières",
          subcategories: [
            { id: "materiel-volières", name: "معدات أقفاص وساحات", slug: "materiel-volières" }
          ]
        }
      ]
    }
  ]
};
