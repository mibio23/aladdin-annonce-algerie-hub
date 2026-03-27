import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Tv } from "lucide-react";

export const imageSonEquipementMusiqueAr: MenuCategory = {
  id: "image-son-equipement-musique",
  name: "الصورة والصوت ومعدات الموسيقى",
  slug: "image-son-equipement-musique",
  icon: <Tv className="w-4 h-4" />,
  subcategories: [
    { id: "televiseurs-affichage", name: "أجهزة التلفاز والعرض", slug: "televiseurs-affichage",
      subcategories: [
        { id: "tv-led", name: "تلفاز LED", slug: "tv-led" },
        { id: "tv-oled", name: "تلفاز OLED", slug: "tv-oled" },
        { id: "tv-qled", name: "تلفاز QLED", slug: "tv-qled" },
        { id: "tv-4k", name: "تلفاز 4K", slug: "tv-4k" },
        { id: "tv-8k", name: "تلفاز 8K", slug: "tv-8k" },
        { id: "tv-smart-android", name: "تلفاز أندرويد ذكي", slug: "tv-smart-android" },
        { id: "tv-connectees", name: "تلفاز متصل", slug: "tv-connectees" },
        { id: "moniteurs-streaming", name: "شاشات البث", slug: "moniteurs-streaming" },
        { id: "videoprojecteurs", name: "بروجكتور", slug: "videoprojecteurs" },
        { id: "mini-projecteurs", name: "بروجكتور صغير", slug: "mini-projecteurs" },
        { id: "ecrans-portables", name: "شاشات محمولة", slug: "ecrans-portables" },
        { id: "supports-tv-muraux", name: "حوامل تلفاز حائطية", slug: "supports-tv-muraux" },
        { id: "pieds-tv", name: "حوامل تلفاز", slug: "pieds-tv" }
      ]
    },
    { id: "audio-home-cinema", name: "الصوت والسينما المنزلية", slug: "audio-home-cinema",
      subcategories: [
        { id: "barres-de-son", name: "مكبرات الصوت الشريطية", slug: "barres-de-son" },
        { id: "home-cinema-5-1", name: "سينما منزلية 5.1", slug: "home-cinema-5-1" },
        { id: "systemes-audio-2-1", name: "أنظمة صوت 2.1", slug: "systemes-audio-2-1" },
        { id: "caissons-de-basses", name: "مضخمات الجهير", slug: "caissons-de-basses" },
        { id: "amplificateurs", name: "مضخمات", slug: "amplificateurs" },
        { id: "recepteurs-av", name: "مستقبلات AV", slug: "recepteurs-av" },
        { id: "enceintes-hifi", name: "سماعات هاي فاي", slug: "enceintes-hifi" },
        { id: "enceintes-bluetooth", name: "سماعات بلوتوث", slug: "enceintes-bluetooth" },
        { id: "enceintes-intelligentes", name: "سماعات ذكية", slug: "enceintes-intelligentes" },
        { id: "multiroom-audio", name: "صوت متعدد الغرف", slug: "multiroom-audio" },
        { id: "soundbars-gaming", name: "مكبرات صوت للألعاب", slug: "soundbars-gaming" }
      ]
    },
    { id: "casques-ecouteurs", name: "سماعات الرأس وسماعات الأذن", slug: "casques-ecouteurs",
      subcategories: [
        { id: "casques-filaires", name: "سماعات سلكية", slug: "casques-filaires" },
        { id: "casques-bluetooth", name: "سماعات بلوتوث", slug: "casques-bluetooth" },
        { id: "casques-gaming", name: "سماعات ألعاب", slug: "casques-gaming" },
        { id: "casques-antibruit", name: "سماعات عزل الضوضاء", slug: "casques-antibruit" },
        { id: "ecouteurs-intra-auriculaires", name: "سماعات داخل الأذن", slug: "ecouteurs-intra-auriculaires" },
        { id: "ecouteurs-tws", name: "سماعات لاسلكية TWS", slug: "ecouteurs-tws" },
        { id: "ecouteurs-sport", name: "سماعات رياضية", slug: "ecouteurs-sport" },
        { id: "casques-studio", name: "سماعات استوديو", slug: "casques-studio" },
        { id: "casques-dj", name: "سماعات DJ", slug: "casques-dj" }
      ]
    },
    { id: "photo-video", name: "تصوير وفيديو", slug: "photo-video",
      subcategories: [
        { id: "appareils-photo-reflex", name: "كاميرات DSLR", slug: "appareils-photo-reflex" },
        { id: "appareils-photo-hybrides", name: "كاميرات بدون مرآة", slug: "appareils-photo-hybrides" },
        { id: "appareils-compacts", name: "كاميرات مدمجة", slug: "appareils-compacts" },
        { id: "camescopes", name: "كاميرات فيديو", slug: "camescopes" },
        { id: "action-cams", name: "كاميرات أكشن", slug: "action-cams" },
        { id: "drones-camera", name: "طائرات بدون طيار بكاميرا", slug: "drones-camera" },
        { id: "objectifs-photo", name: "عدسات تصوير", slug: "objectifs-photo" },
        { id: "trepieds", name: "حوامل ثلاثية", slug: "trepieds" },
        { id: "stabilisateurs", name: "موازنات", slug: "stabilisateurs" },
        { id: "gimbals", name: "جيمبل", slug: "gimbals" },
        { id: "flashes-eclairages", name: "فلاش وإضاءة", slug: "flashes-eclairages" },
        { id: "cartes-memoire", name: "بطاقات ذاكرة", slug: "cartes-memoire" },
        { id: "fonds-photo", name: "خلفيات تصوير", slug: "fonds-photo" }
      ]
    },
    { id: "studios-audio-enregistrement", name: "استوديو صوت وتسجيل", slug: "studios-audio-enregistrement",
      subcategories: [
        { id: "microphones-usb", name: "ميكروفونات USB", slug: "microphones-usb" },
        { id: "microphones-xlr", name: "ميكروفونات XLR", slug: "microphones-xlr" },
        { id: "interfaces-audio", name: "واجهات صوتية", slug: "interfaces-audio" },
        { id: "casques-studio-2", name: "سماعات استوديو", slug: "casques-studio-2" },
        { id: "moniteurs-de-studio", name: "مراقبات استوديو", slug: "moniteurs-de-studio" },
        { id: "mixeurs-audio", name: "ميكسرات صوتية", slug: "mixeurs-audio" },
        { id: "preamplis", name: "مضخمات أولية", slug: "preamplis" },
        { id: "enregistreurs-portables", name: "مسجلات محمولة", slug: "enregistreurs-portables" },
        { id: "cartes-son-externes", name: "بطاقات صوت خارجية", slug: "cartes-son-externes" },
        { id: "shields-acoustiques", name: "حواجز صوتية", slug: "shields-acoustiques" },
        { id: "accessoires-studio", name: "إكسسوارات الاستوديو", slug: "accessoires-studio" }
      ]
    },
    { id: "sonorisation-evenementiel", name: "الصوتيات والفعاليات", slug: "sonorisation-evenementiel",
      subcategories: [
        { id: "enceintes-professionnelles", name: "سماعات احترافية", slug: "enceintes-professionnelles" },
        { id: "caissons-de-basses-pro", name: "مضخمات جهير احترافية", slug: "caissons-de-basses-pro" },
        { id: "amplis-de-puissance", name: "مضخمات قدرة", slug: "amplis-de-puissance" },
        { id: "mixeurs-tables-de-mixage", name: "طاولات مزج", slug: "mixeurs-tables-de-mixage" },
        { id: "micros-hf-sans-fil", name: "ميكروفونات لاسلكية", slug: "micros-hf-sans-fil" },
        { id: "systemes-karaoke", name: "أنظمة كاراوكي", slug: "systemes-karaoke" },
        { id: "jeux-de-lumiere", name: "إضاءات حفل", slug: "jeux-de-lumiere" },
        { id: "lasers", name: "ليزر", slug: "lasers" },
        { id: "machines-a-fumee", name: "ماكينات دخان", slug: "machines-a-fumee" },
        { id: "stands-et-trepieds", name: "حوامل وحوامل ثلاثية", slug: "stands-et-trepieds" },
        { id: "cablage-audio-xlr", name: "كوابل صوت وXLR", slug: "cablage-audio-xlr" }
      ]
    },
    { id: "equipement-musique", name: "معدات موسيقية", slug: "equipement-musique",
      subcategories: [
        { id: "guitares-acoustiques", name: "غيتارات صوتية", slug: "guitares-acoustiques" },
        { id: "guitares-electriques", name: "غيتارات كهربائية", slug: "guitares-electriques" },
        { id: "guitares-basses", name: "غيتارات باس", slug: "guitares-basses" },
        { id: "violons", name: "كمانات", slug: "violons" },
        { id: "mandolines", name: "ماندولين", slug: "mandolines" },
        { id: "oud-instruments-orientaux", name: "عود وآلات شرقية", slug: "oud-instruments-orientaux" },
        { id: "pianos-numeriques", name: "بيانو رقمي", slug: "pianos-numeriques" },
        { id: "claviers-arrangeurs", name: "كيبورد منظِّم", slug: "claviers-arrangeurs" },
        { id: "synthetiseurs", name: "سِنتيسايزر", slug: "synthetiseurs" },
        { id: "batteries-acoustiques", name: "طبول صوتية", slug: "batteries-acoustiques" },
        { id: "batteries-electroniques", name: "طبول إلكترونية", slug: "batteries-electroniques" },
        { id: "percussions", name: "إيقاعات", slug: "percussions" },
        { id: "harmonicas", name: "هارمونيكا", slug: "harmonicas" }
      ]
    },
    { id: "equipement-dj", name: "معدات دي جي", slug: "equipement-dj",
      subcategories: [
        { id: "platines-dj", name: "مشغلات DJ", slug: "platines-dj" },
        { id: "controleurs-dj", name: "أجهزة تحكم DJ", slug: "controleurs-dj" },
        { id: "mixeurs-dj", name: "ميكسرات DJ", slug: "mixeurs-dj" },
        { id: "casques-dj-2", name: "سماعات DJ", slug: "casques-dj-2" },
        { id: "eclairage-dj", name: "إضاءة DJ", slug: "eclairage-dj" },
        { id: "pads-boites-rythmes", name: "لوحات وإيقاعات", slug: "pads-boites-rythmes" },
        { id: "logiciels-dj", name: "برامج DJ", slug: "logiciels-dj" },
        { id: "interfaces-dj", name: "واجهات DJ", slug: "interfaces-dj" }
      ]
    },
    { id: "accessoires-instruments", name: "إكسسوارات الآلات", slug: "accessoires-instruments",
      subcategories: [
        { id: "cordes-guitare-violon", name: "أوتار الغيتار والكمان", slug: "cordes-guitare-violon" },
        { id: "mediators", name: "ريش العزف", slug: "mediators" },
        { id: "capodastres", name: "كبوداستر", slug: "capodastres" },
        { id: "stands-instruments", name: "حوامل الآلات", slug: "stands-instruments" },
        { id: "housses-etuis", name: "حقائب وأغطية", slug: "housses-etuis" },
        { id: "accordeurs-electroniques", name: "مضبطات إلكترونية", slug: "accordeurs-electroniques" },
        { id: "metronome", name: "مترونوم", slug: "metronome" },
        { id: "batteries-peaux", name: "طبول وجلود", slug: "batteries-peaux" },
        { id: "baguettes", name: "عصي الطبول", slug: "baguettes" },
        { id: "ampli-guitare-basse", name: "أمبليفيرات الغيتار والباس", slug: "ampli-guitare-basse" },
        { id: "cables-jack-xlr", name: "كوابل جاك وXLR", slug: "cables-jack-xlr" }
      ]
    },
    { id: "streaming-creation-contenu", name: "البث وصناعة المحتوى", slug: "streaming-creation-contenu",
      subcategories: [
        { id: "cameras-streaming", name: "كاميرات بث", slug: "cameras-streaming" },
        { id: "webcams-hd", name: "كاميرات ويب HD", slug: "webcams-hd" },
        { id: "micros-streaming", name: "ميكروفونات البث", slug: "micros-streaming" },
        { id: "anneaux-lumineux", name: "إضاءات حلقية", slug: "anneaux-lumineux" },
        { id: "lampes-led-createurs", name: "مصابيح LED", slug: "lampes-led-createurs" },
        { id: "green-screen", name: "شاشة خضراء", slug: "green-screen" },
        { id: "pupitres-streaming", name: "وحدات تحكم البث", slug: "pupitres-streaming" },
        { id: "cartes-acquisition-video", name: "بطاقات التقاط فيديو", slug: "cartes-acquisition-video" },
        { id: "equipement-podcast", name: "معدات البودكاست", slug: "equipement-podcast" }
      ]
    },
    { id: "radios-multimedia", name: "راديو ووسائط متعددة", slug: "radios-multimedia",
      subcategories: [
        { id: "radios-fm", name: "راديو FM", slug: "radios-fm" },
        { id: "radios-digitaux", name: "راديو رقمي", slug: "radios-digitaux" },
        { id: "lecteurs-mp3", name: "مشغلات MP3", slug: "lecteurs-mp3" },
        { id: "enceintes-nomades", name: "سماعات محمولة", slug: "enceintes-nomades" },
        { id: "autoradios", name: "راديو سيارة", slug: "autoradios" },
        { id: "amplificateurs-voiture", name: "مضخمات سيارة", slug: "amplificateurs-voiture" },
        { id: "subwoofers-voiture", name: "مضخمات جهير سيارة", slug: "subwoofers-voiture" },
        { id: "ecrans-android-voiture", name: "شاشات أندرويد للسيارة", slug: "ecrans-android-voiture" }
      ]
    },
    { id: "equipements-cinema-maison", name: "معدات سينما منزلية", slug: "equipements-cinema-maison",
      subcategories: [
        { id: "videoprojecteurs-4k", name: "بروجكتور 4K", slug: "videoprojecteurs-4k" },
        { id: "ecrans-de-projection", name: "شاشات عرض", slug: "ecrans-de-projection" },
        { id: "supports-plafond", name: "حوامل سقفية", slug: "supports-plafond" },
        { id: "systemes-audio-surround", name: "أنظمة صوت محيطي", slug: "systemes-audio-surround" },
        { id: "cablage-hdmi", name: "كوابل HDMI", slug: "cablage-hdmi" },
        { id: "convertisseurs-audio-video", name: "محولات صوت/فيديو", slug: "convertisseurs-audio-video" }
      ]
    },
    { id: "electroniques-portables", name: "إلكترونيات محمولة", slug: "electroniques-portables",
      subcategories: [
        { id: "mini-projecteurs-portables", name: "بروجكتورات محمولة صغيرة", slug: "mini-projecteurs-portables" },
        { id: "enceintes-outdoor", name: "سماعات خارجية", slug: "enceintes-outdoor" },
        { id: "casques-sport", name: "سماعات رياضية", slug: "casques-sport" },
        { id: "amplis-nomades", name: "مضخمات متنقلة", slug: "amplis-nomades" },
        { id: "enregistreurs-de-terrain", name: "مسجلات ميدانية", slug: "enregistreurs-de-terrain" }
      ]
    },
    { id: "accessoires-image-son", name: "إكسسوارات الصورة والصوت", slug: "accessoires-image-son",
      subcategories: [
        { id: "cables-hdmi", name: "كوابل HDMI", slug: "cables-hdmi" },
        { id: "cables-audio-jack-rca", name: "كوابل جاك وRCA", slug: "cables-audio-jack-rca" },
        { id: "adaptateurs", name: "محولات", slug: "adaptateurs" },
        { id: "batteries-chargeurs", name: "بطاريات وشواحن", slug: "batteries-chargeurs" },
        { id: "nettoyants-lentilles", name: "منظفات العدسات", slug: "nettoyants-lentilles" },
        { id: "filtres-photo", name: "مرشحات تصوير", slug: "filtres-photo" },
        { id: "cartes-sd", name: "بطاقات SD", slug: "cartes-sd" },
        { id: "boitiers-transport", name: "حقائب نقل", slug: "boitiers-transport" },
        { id: "pieds-camera", name: "حوامل كاميرا", slug: "pieds-camera" }
      ]
    },
    { id: "marques-populaires", name: "ماركات شائعة", slug: "marques-populaires",
      subcategories: [
        { id: "sony", name: "Sony", slug: "sony" },
        { id: "samsung", name: "Samsung", slug: "samsung" },
        { id: "lg", name: "LG", slug: "lg" },
        { id: "panasonic", name: "Panasonic", slug: "panasonic" },
        { id: "canon", name: "Canon", slug: "canon" },
        { id: "nikon", name: "Nikon", slug: "nikon" },
        { id: "fujifilm", name: "Fujifilm", slug: "fujifilm" },
        { id: "jbl", name: "JBL", slug: "jbl" },
        { id: "bose", name: "Bose", slug: "bose" },
        { id: "yamaha", name: "Yamaha", slug: "yamaha" },
        { id: "pioneer", name: "Pioneer", slug: "pioneer" },
        { id: "shure", name: "Shure", slug: "shure" },
        { id: "rode", name: "Rode", slug: "rode" },
        { id: "behringer", name: "Behringer", slug: "behringer" },
        { id: "sennheiser", name: "Sennheiser", slug: "sennheiser" },
        { id: "marshall", name: "Marshall", slug: "marshall" },
        { id: "roland", name: "Roland", slug: "roland" },
        { id: "casio", name: "Casio", slug: "casio" },
        { id: "alesis", name: "Alesis", slug: "alesis" },
        { id: "numark", name: "Numark", slug: "numark" }
      ]
    },
    { id: "segments-usage", name: "قطاعات الاستخدام", slug: "segments-usage",
      subcategories: [
        { id: "image-domestique", name: "صورة منزلية", slug: "image-domestique" },
        { id: "son-domestique", name: "صوت منزلي", slug: "son-domestique" },
        { id: "audio-professionnel", name: "صوت احترافي", slug: "audio-professionnel" },
        { id: "studio-enregistrement", name: "استوديو تسجيل", slug: "studio-enregistrement" },
        { id: "dj-evenementiel", name: "DJ وفعاليات", slug: "dj-evenementiel" },
        { id: "creation-contenu", name: "صناعة المحتوى", slug: "creation-contenu" },
        { id: "musique-amateur", name: "موسيقى هواة", slug: "musique-amateur" },
        { id: "musique-professionnelle", name: "موسيقى محترفة", slug: "musique-professionnelle" }
      ]
    }
  ]
};