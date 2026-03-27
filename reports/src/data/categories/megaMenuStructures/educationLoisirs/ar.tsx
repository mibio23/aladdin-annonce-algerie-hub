import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { BookOpen } from "lucide-react";

export const educationLoisirsAr: MenuCategory = {
  id: "education-loisirs",
  name: "الرياضة، التعليم والترفيه",
  slug: "education-loisirs",
  icon: <BookOpen className="w-4 h-4" />,
  subcategories: [
    {
      id: "cours-formations",
      name: "الدورات والتكوين",
      slug: "cours-formations",
      attributes: {
        mode: ["en_ligne", "presentiel", "domicile"],
        level: ["primaire", "cem", "lycee", "universitaire", "adulte"],
        type: ["soutien_scolaire", "langues", "musique", "informatique"]
      },
      subcategories: [
        { 
          id: "cours-particuliers", 
          name: "دروس خاصة", 
          slug: "cours-particuliers", 
          attributes: {
            subject: ["maths", "physique", "sciences", "arabe", "francais", "anglais", "philosophie", "histoire_geo", "economie", "gestion", "autre"],
            level: ["primaire", "cem", "lycee", "universitaire"],
            mode: ["presentiel", "en_ligne", "domicile"]
          },
          subcategories: [
          { id: "cours-maths", name: "رياضيات", slug: "cours-maths" },
          { id: "cours-sciences", name: "علوم", slug: "cours-sciences" },
          { id: "cours-langues", name: "لغات", slug: "cours-langues" }
        ] },
        { 
          id: "soutien-scolaire", 
          name: "دعم مدرسي", 
          slug: "soutien-scolaire", 
          attributes: {
            subject: ["maths", "physique", "sciences", "arabe", "francais", "anglais", "autre"],
            level: ["primaire", "cem", "lycee"],
            mode: ["presentiel", "en_ligne"]
          },
          subcategories: [
          { id: "soutien-primaire", name: "ابتدائي", slug: "soutien-primaire" },
          { id: "soutien-college", name: "متوسط", slug: "soutien-college" },
          { id: "soutien-lycee", name: "ثانوي", slug: "soutien-lycee" }
        ] },
        { id: "preparation-examens", name: "تحضير الامتحانات (BEM/BAC)", slug: "preparation-examens", subcategories: [
          { id: "prep-methodologie", name: "منهجية", slug: "prep-methodologie" },
          { id: "prep-sujets-corriges", name: "مواضيع محلولة", slug: "prep-sujets-corriges" },
          { id: "prep-coaching", name: "توجيه", slug: "prep-coaching" }
        ] },
        { id: "formations-professionnelles", name: "تكوين مهني", slug: "formations-professionnelles", subcategories: [
          { id: "form-informatique", name: "إعلام آلي", slug: "form-informatique" },
          { id: "form-commerce", name: "تجارة", slug: "form-commerce" },
          { id: "form-gestion", name: "تسيير", slug: "form-gestion" }
        ] },
        { id: "ateliers-pedagogiques", name: "ورشات تربوية", slug: "ateliers-pedagogiques", subcategories: [
          { id: "atelier-stem", name: "STEM", slug: "atelier-stem" },
          { id: "atelier-creativite", name: "إبداع", slug: "atelier-creativite" },
          { id: "atelier-remediation", name: "دعم", slug: "atelier-remediation" }
        ] },
        { id: "formations-en-ligne", name: "تكوين عبر الإنترنت", slug: "formations-en-ligne", subcategories: [
          { id: "online-mooc", name: "MOOC", slug: "online-mooc" },
          { id: "online-certifications", name: "شهادات", slug: "online-certifications" },
          { id: "online-tutoriels", name: "شروحات", slug: "online-tutoriels" }
        ] }
      ]
    },
    {
      id: "livres-supports-educatifs",
      name: "كتب ومواد تعليمية",
      slug: "livres-supports-educatifs",
      attributes: {
        condition: ["neuf", "bon_etat", "etat_moyen"],
        language: ["arabe", "francais", "anglais"],
        genre: ["scolaire", "roman", "bd", "scientifique"]
      },
      subcategories: [
        { id: "livres-scolaires", name: "كتب مدرسية", slug: "livres-scolaires", subcategories: [
          { id: "livres-primaire", name: "ابتدائي", slug: "livres-primaire" },
          { id: "livres-college", name: "متوسط", slug: "livres-college" },
          { id: "livres-lycee", name: "ثانوي", slug: "livres-lycee" }
        ] },
        { id: "manuels-universitaires", name: "مراجع جامعية", slug: "manuels-universitaires", subcategories: [
          { id: "manuels-sciences", name: "علوم", slug: "manuels-sciences" },
          { id: "manuels-medecine", name: "طب", slug: "manuels-medecine" },
          { id: "manuels-droit", name: "قانون", slug: "manuels-droit" }
        ] },
        { id: "romans", name: "روايات", slug: "romans", subcategories: [
          { id: "romans-contemporains", name: "حديثة", slug: "romans-contemporains" },
          { id: "romans-classiques", name: "كلاسيكية", slug: "romans-classiques" },
          { id: "romans-jeunesse", name: "شباب", slug: "romans-jeunesse" }
        ] },
        { id: "bd-mangas", name: "كوميكس ومانغا", slug: "bd-mangas", subcategories: [
          { id: "bd-franco-belge", name: "فرانكو-بلجيكي", slug: "bd-franco-belge" },
          { id: "mangas", name: "مانغا", slug: "mangas" },
          { id: "comics", name: "كوميكس", slug: "comics" }
        ] },
        { id: "encyclopedies", name: "موسوعات", slug: "encyclopedies", subcategories: [
          { id: "encyclopedies-generalistes", name: "عامة", slug: "encyclopedies-generalistes" },
          { id: "encyclopedies-specialisees", name: "متخصصة", slug: "encyclopedies-specialisees" },
          { id: "encyclopedies-enfants", name: "أطفال", slug: "encyclopedies-enfants" }
        ] },
        { id: "documents-pedagogiques", name: "وثائق تربوية", slug: "documents-pedagogiques", subcategories: [
          { id: "docs-fiches", name: "ملفات", slug: "docs-fiches" },
          { id: "docs-exercices", name: "تمارين", slug: "docs-exercices" },
          { id: "docs-cours", name: "دروس", slug: "docs-cours" }
        ] }
      ]
    },
    {
      id: "arts-musique",
      name: "الفنون والموسيقى",
      slug: "arts-musique",
      attributes: {
        category_type: ["instruments", "cours", "art", "materiel", "ateliers"]
      },
      subcategories: [
        { 
          id: "instruments-musique", 
          name: "آلات موسيقية", 
          slug: "instruments-musique",
          attributes: {
            instrument_type: ["guitare", "piano", "percussion", "violon", "instruments_vent", "accessoires", "autre"],
            condition: ["neuf", "bon_etat", "occasion"],
            brand: ["yamaha", "roland", "fender", "ibanez", "autre"]
          },
          subcategories: [
          { id: "guitare", name: "غيتار", slug: "guitare" },
          { id: "piano", name: "بيانو", slug: "piano" },
          { id: "percussion", name: "إيقاع", slug: "percussion" }
        ] },
        { 
          id: "cours-chant", 
          name: "دروس غناء", 
          slug: "cours-chant",
          attributes: {
            skill_level: ["debutant", "intermediaire", "avance", "professionnel"],
            format: ["individuel", "groupe", "en_ligne", "presentiel"]
          },
          subcategories: [
          { id: "chant-debutant", name: "مبتدئ", slug: "chant-debutant" },
          { id: "chant-avance", name: "متقدم", slug: "chant-avance" },
          { id: "chant-chorale", name: "جوقة", slug: "chant-chorale" }
        ] },
        { id: "peinture-dessin", name: "رسم وتصوير", slug: "peinture-dessin", subcategories: [
          { id: "aquarelle", name: "ألوان مائية", slug: "aquarelle" },
          { id: "peinture-huile", name: "زيت", slug: "peinture-huile" },
          { id: "croquis", name: "اسكتش", slug: "croquis" }
        ] },
        { id: "materiel-artistique", name: "معدات فنية", slug: "materiel-artistique", subcategories: [
          { id: "pinceaux", name: "فرش", slug: "pinceaux" },
          { id: "toiles", name: "لوحات", slug: "toiles" },
          { id: "pigments", name: "أصباغ", slug: "pigments" }
        ] },
        { id: "ateliers-creatifs", name: "ورشات إبداعية", slug: "ateliers-creatifs", subcategories: [
          { id: "poterie", name: "خزف", slug: "poterie" },
          { id: "artisanat-creatif", name: "حرف", slug: "artisanat-creatif" },
          { id: "mosaique", name: "فسيفساء", slug: "mosaique" }
        ] },
        { id: "oeuvres-art", name: "أعمال فنية", slug: "oeuvres-art", subcategories: [
          { id: "tableaux", name: "لوحات", slug: "tableaux" },
          { id: "sculptures", name: "منحوتات", slug: "sculptures" },
          { id: "photographies", name: "صور", slug: "photographies" }
        ] }
      ]
    },
    {
      id: "sports-loisirs",
      name: "الرياضة والترفيه",
      slug: "sports-loisirs",
      attributes: {
        item_type: ["equipement", "vetement", "accessoire"],
        sport_type: ["football", "fitness", "randonnee", "combat"]
      },
      subcategories: [
        { 
          id: "equipements-sportifs", 
          name: "معدات رياضية", 
          slug: "equipements-sportifs",
          attributes: {
             sport_type: ["football", "fitness", "cyclisme", "combat", "randonnee", "autre"],
             condition: ["neuf", "bon_etat", "occasion"],
             brand: ["nike", "adidas", "decathlon", "puma", "autre"]
          },
          subcategories: [
          { id: "sport-football", name: "كرة قدم", slug: "sport-football" },
          { id: "sport-fitness", name: "لياقة", slug: "sport-fitness" },
          { id: "sport-cyclisme", name: "دراجات", slug: "sport-cyclisme" }
        ] },
        { 
          id: "salles-de-sport", 
          name: "قاعات رياضية", 
          slug: "salles-de-sport",
          attributes: {
            subscription_type: ["mensuel", "trimestriel", "semestriel", "annuel", "seance"],
            access_type: ["hommes", "femmes", "mixte"]
          },
          subcategories: [
          { id: "salle-abonnements", name: "اشتراكات", slug: "salle-abonnements" },
          { id: "salle-coaching", name: "تدريب", slug: "salle-coaching" },
          { id: "salle-cours-collectifs", name: "دروس جماعية", slug: "salle-cours-collectifs" }
        ] },
        { id: "cours-danse-arts-martiaux", name: "رقص وفنون قتالية", slug: "cours-danse-arts-martiaux", subcategories: [
          { id: "danse-orientale", name: "رقص شرقي", slug: "danse-orientale" },
          { id: "hip-hop", name: "هيب هوب", slug: "hip-hop" },
          { id: "karate", name: "كاراتيه", slug: "karate" }
        ] },
        { id: "activites-outdoor", name: "نشاطات خارجية", slug: "activites-outdoor", subcategories: [
          { id: "randonnee", name: "مشاة", slug: "randonnee" },
          { id: "escalade", name: "تسلق", slug: "escalade" },
          { id: "vtt", name: "دراجات جبلية", slug: "vtt" }
        ] },
        { id: "camping-randonnee", name: "تخييم ومشي", slug: "camping-randonnee", subcategories: [
          { id: "tentes", name: "خيام", slug: "tentes" },
          { id: "sacs-de-couchage", name: "أكياس نوم", slug: "sacs-de-couchage" },
          { id: "accessoires-camping", name: "إكسسوارات", slug: "accessoires-camping" }
        ] },
        { id: "jeux-de-societe", name: "ألعاب الطاولة", slug: "jeux-de-societe", subcategories: [
          { id: "jeux-strategie", name: "استراتيجية", slug: "jeux-strategie" },
          { id: "jeux-famille", name: "عائلية", slug: "jeux-famille" },
          { id: "jeux-cartes", name: "بطاقات", slug: "jeux-cartes" }
        ] }
      ]
    },
    {
      id: "enfance-activites-familiales",
      name: "الطفولة والأنشطة العائلية",
      slug: "enfance-activites-familiales",
      attributes: {
        activity_type: ["jouets", "eveil", "parascolaire", "ateliers", "anniversaire", "colonies"]
      },
      subcategories: [
        { 
          id: "jouets-educatifs", 
          name: "ألعاب تعليمية", 
          slug: "jouets-educatifs",
          attributes: {
            age_group: ["0-3", "3-6", "6-12", "12+"],
            material: ["bois", "plastique", "tissu", "mixte"]
          },
          subcategories: [
          { id: "jouets-montessori", name: "مونتيسوري", slug: "jouets-montessori" },
          { id: "jouets-puzzles", name: "ألغاز", slug: "jouets-puzzles" },
          { id: "jouets-sciences", name: "علوم", slug: "jouets-sciences" }
        ] },
        { id: "jeux-eveil", name: "ألعاب تنمية", slug: "jeux-eveil", subcategories: [
          { id: "eveil-0-12", name: "0-12 شهرًا", slug: "eveil-0-12" },
          { id: "eveil-1-3", name: "1-3 سنوات", slug: "eveil-1-3" },
          { id: "eveil-3-6", name: "3-6 سنوات", slug: "eveil-3-6" }
        ] },
        { id: "activites-parascolaires", name: "نشاطات لا صفية", slug: "activites-parascolaires", subcategories: [
          { id: "parascolaire-clubs", name: "نوادي مدرسية", slug: "parascolaire-clubs" },
          { id: "parascolaire-sport", name: "رياضة", slug: "parascolaire-sport" },
          { id: "parascolaire-arts", name: "فنون", slug: "parascolaire-arts" }
        ] },
        { id: "ateliers-enfants", name: "ورش للأطفال", slug: "ateliers-enfants", subcategories: [
          { id: "enfants-robotique", name: "روبوتيك", slug: "enfants-robotique" },
          { id: "enfants-coding", name: "برمجة", slug: "enfants-coding" },
          { id: "enfants-cuisine", name: "طبخ", slug: "enfants-cuisine" }
        ] },
        { id: "animations-anniversaire", name: "حفلات عيد ميلاد", slug: "animations-anniversaire", subcategories: [
          { id: "anniv-clowns", name: "مهرجون", slug: "anniv-clowns" },
          { id: "anniv-magiciens", name: "سحرة", slug: "anniv-magiciens" },
          { id: "anniv-decorations", name: "زينة", slug: "anniv-decorations" }
        ] },
        { 
          id: "colonies-vacances", 
          name: "مخيمات صيفية", 
          slug: "colonies-vacances",
          attributes: {
            destination_type: ["mer", "montagne", "campagne", "etranger"],
            duration: ["1_semaine", "2_semaines", "1_mois"],
            season: ["ete", "hiver", "printemps"]
          },
          subcategories: [
          { id: "colonies-mer", name: "بحر", slug: "colonies-mer" },
          { id: "colonies-montagne", name: "جبال", slug: "colonies-montagne" },
          { id: "colonies-culture", name: "ثقافة", slug: "colonies-culture" }
        ] }
      ]
    },
    {
      id: "clubs-associations",
      name: "نوادٍ وجمعيات",
      slug: "clubs-associations",
      subcategories: [
        { id: "clubs-sportifs", name: "نوادٍ رياضية", slug: "clubs-sportifs", subcategories: [
          { id: "club-football", name: "كرة القدم", slug: "club-football" },
          { id: "club-judo", name: "جودو", slug: "club-judo" },
          { id: "club-natation", name: "سباحة", slug: "club-natation" }
        ] },
        { id: "associations-culturelles", name: "جمعيات ثقافية", slug: "associations-culturelles", subcategories: [
          { id: "asso-musique", name: "موسيقى", slug: "asso-musique" },
          { id: "asso-theatre", name: "مسرح", slug: "asso-theatre" },
          { id: "asso-patrimoine", name: "تراث", slug: "asso-patrimoine" }
        ] },
        { id: "ateliers-communautaires", name: "ورش مجتمعية", slug: "ateliers-communautaires", subcategories: [
          { id: "comm-solidarite", name: "تضامن", slug: "comm-solidarite" },
          { id: "comm-environnement", name: "بيئة", slug: "comm-environnement" },
          { id: "comm-insertion", name: "إدماج", slug: "comm-insertion" }
        ] },
        { id: "clubs-lecture", name: "نوادي القراءة", slug: "clubs-lecture", subcategories: [
          { id: "lecture-adultes", name: "بالغون", slug: "lecture-adultes" },
          { id: "lecture-jeunesse", name: "شباب", slug: "lecture-jeunesse" },
          { id: "lecture-thematiques", name: "موضوعية", slug: "lecture-thematiques" }
        ] },
        { id: "evenements-educatifs", name: "فعاليات تعليمية", slug: "evenements-educatifs", subcategories: [
          { id: "edu-conferences", name: "مؤتمرات", slug: "edu-conferences" },
          { id: "edu-salons", name: "معارض", slug: "edu-salons" },
          { id: "edu-forums", name: "منتديات", slug: "edu-forums" }
        ] },
        { id: "conferences", name: "مؤتمرات", slug: "conferences", subcategories: [
          { id: "conf-academiques", name: "أكاديمية", slug: "conf-academiques" },
          { id: "conf-professionnelles", name: "مهنية", slug: "conf-professionnelles" },
          { id: "conf-grand-public", name: "عامة", slug: "conf-grand-public" }
        ] }
      ]
    }
  ]
};