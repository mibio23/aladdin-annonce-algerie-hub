import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { BookOpen } from "lucide-react";

export const educationLoisirsEn: MenuCategory = {
  id: "education-loisirs",
  name: "Sport, Education & Leisure",
  slug: "education-loisirs",
  icon: <BookOpen className="w-4 h-4" />,
  subcategories: [
    {
      id: "cours-formations",
      name: "Courses & Training",
      slug: "cours-formations",
      attributes: {
        mode: ["en_ligne", "presentiel", "domicile"],
        level: ["primaire", "cem", "lycee", "universitaire", "adulte"],
        type: ["soutien_scolaire", "langues", "musique", "informatique"]
      },
      subcategories: [
        { 
          id: "cours-particuliers", 
          name: "private lessons", 
          slug: "cours-particuliers", 
          attributes: {
            subject: ["maths", "physique", "sciences", "arabe", "francais", "anglais", "philosophie", "histoire_geo", "economie", "gestion", "autre"],
            level: ["primaire", "cem", "lycee", "universitaire"],
            mode: ["presentiel", "en_ligne", "domicile"]
          },
          subcategories: [
          { id: "cours-maths", name: "mathematics", slug: "cours-maths" },
          { id: "cours-sciences", name: "science", slug: "cours-sciences" },
          { id: "cours-langues", name: "languages", slug: "cours-langues" }
        ] },
        { 
          id: "soutien-scolaire", 
          name: "tutoring", 
          slug: "soutien-scolaire", 
          attributes: {
            subject: ["maths", "physique", "sciences", "arabe", "francais", "anglais", "autre"],
            level: ["primaire", "cem", "lycee"],
            mode: ["presentiel", "en_ligne"]
          },
          subcategories: [
          { id: "soutien-primaire", name: "primary", slug: "soutien-primaire" },
          { id: "soutien-college", name: "middle school", slug: "soutien-college" },
          { id: "soutien-lycee", name: "high school", slug: "soutien-lycee" }
        ] },
        { id: "preparation-examens", name: "exam preparation (BEM/BAC)", slug: "preparation-examens", subcategories: [
          { id: "prep-methodologie", name: "methodology", slug: "prep-methodologie" },
          { id: "prep-sujets-corriges", name: "past papers", slug: "prep-sujets-corriges" },
          { id: "prep-coaching", name: "coaching", slug: "prep-coaching" }
        ] },
        { id: "formations-professionnelles", name: "professional training", slug: "formations-professionnelles", subcategories: [
          { id: "form-informatique", name: "IT", slug: "form-informatique" },
          { id: "form-commerce", name: "commerce", slug: "form-commerce" },
          { id: "form-gestion", name: "management", slug: "form-gestion" }
        ] },
        { id: "ateliers-pedagogiques", name: "educational workshops", slug: "ateliers-pedagogiques", subcategories: [
          { id: "atelier-stem", name: "STEM", slug: "atelier-stem" },
          { id: "atelier-creativite", name: "creativity", slug: "atelier-creativite" },
          { id: "atelier-remediation", name: "remediation", slug: "atelier-remediation" }
        ] },
        { id: "formations-en-ligne", name: "online training", slug: "formations-en-ligne", subcategories: [
          { id: "online-mooc", name: "MOOCs", slug: "online-mooc" },
          { id: "online-certifications", name: "certifications", slug: "online-certifications" },
          { id: "online-tutoriels", name: "tutorials", slug: "online-tutoriels" }
        ] }
      ]
    },
    {
      id: "livres-supports-educatifs",
      name: "Books & Educational Materials",
      slug: "livres-supports-educatifs",
      attributes: {
        condition: ["neuf", "bon_etat", "etat_moyen"],
        language: ["arabe", "francais", "anglais"],
        genre: ["scolaire", "roman", "bd", "scientifique"]
      },
      subcategories: [
        { id: "livres-scolaires", name: "school books", slug: "livres-scolaires", subcategories: [
          { id: "livres-primaire", name: "primary", slug: "livres-primaire" },
          { id: "livres-college", name: "middle school", slug: "livres-college" },
          { id: "livres-lycee", name: "high school", slug: "livres-lycee" }
        ] },
        { id: "manuels-universitaires", name: "university textbooks", slug: "manuels-universitaires", subcategories: [
          { id: "manuels-sciences", name: "science", slug: "manuels-sciences" },
          { id: "manuels-medecine", name: "medicine", slug: "manuels-medecine" },
          { id: "manuels-droit", name: "law", slug: "manuels-droit" }
        ] },
        { id: "romans", name: "novels", slug: "romans", subcategories: [
          { id: "romans-contemporains", name: "contemporary", slug: "romans-contemporains" },
          { id: "romans-classiques", name: "classics", slug: "romans-classiques" },
          { id: "romans-jeunesse", name: "young adult", slug: "romans-jeunesse" }
        ] },
        { id: "bd-mangas", name: "comics & manga", slug: "bd-mangas", subcategories: [
          { id: "bd-franco-belge", name: "franco-belgian", slug: "bd-franco-belge" },
          { id: "mangas", name: "manga", slug: "mangas" },
          { id: "comics", name: "comics", slug: "comics" }
        ] },
        { id: "encyclopedies", name: "encyclopedias", slug: "encyclopedies", subcategories: [
          { id: "encyclopedies-generalistes", name: "general", slug: "encyclopedies-generalistes" },
          { id: "encyclopedies-specialisees", name: "specialized", slug: "encyclopedies-specialisees" },
          { id: "encyclopedies-enfants", name: "children", slug: "encyclopedies-enfants" }
        ] },
        { id: "documents-pedagogiques", name: "educational documents", slug: "documents-pedagogiques", subcategories: [
          { id: "docs-fiches", name: "sheets", slug: "docs-fiches" },
          { id: "docs-exercices", name: "exercises", slug: "docs-exercices" },
          { id: "docs-cours", name: "lessons", slug: "docs-cours" }
        ] }
      ]
    },
    {
      id: "arts-musique",
      name: "Arts & Music",
      slug: "arts-musique",
      attributes: {
        category_type: ["instruments", "cours", "art", "materiel", "ateliers"]
      },
      subcategories: [
        { 
          id: "instruments-musique", 
          name: "musical instruments", 
          slug: "instruments-musique",
          attributes: {
            instrument_type: ["guitare", "piano", "percussion", "violon", "instruments_vent", "accessoires", "autre"],
            condition: ["neuf", "bon_etat", "occasion"],
            brand: ["yamaha", "roland", "fender", "ibanez", "autre"]
          },
          subcategories: [
          { id: "guitare", name: "guitar", slug: "guitare" },
          { id: "piano", name: "piano", slug: "piano" },
          { id: "percussion", name: "percussion", slug: "percussion" }
        ] },
        { 
          id: "cours-chant", 
          name: "singing lessons", 
          slug: "cours-chant",
          attributes: {
            skill_level: ["debutant", "intermediaire", "avance", "professionnel"],
            format: ["individuel", "groupe", "en_ligne", "presentiel"]
          },
          subcategories: [
          { id: "chant-debutant", name: "beginner", slug: "chant-debutant" },
          { id: "chant-avance", name: "advanced", slug: "chant-avance" },
          { id: "chant-chorale", name: "choir", slug: "chant-chorale" }
        ] },
        { id: "peinture-dessin", name: "painting & drawing", slug: "peinture-dessin", subcategories: [
          { id: "aquarelle", name: "watercolor", slug: "aquarelle" },
          { id: "peinture-huile", name: "oil", slug: "peinture-huile" },
          { id: "croquis", name: "sketching", slug: "croquis" }
        ] },
        { id: "materiel-artistique", name: "art supplies", slug: "materiel-artistique", subcategories: [
          { id: "pinceaux", name: "brushes", slug: "pinceaux" },
          { id: "toiles", name: "canvases", slug: "toiles" },
          { id: "pigments", name: "pigments", slug: "pigments" }
        ] },
        { id: "ateliers-creatifs", name: "creative workshops", slug: "ateliers-creatifs", subcategories: [
          { id: "poterie", name: "pottery", slug: "poterie" },
          { id: "artisanat-creatif", name: "crafts", slug: "artisanat-creatif" },
          { id: "mosaique", name: "mosaic", slug: "mosaique" }
        ] },
        { id: "oeuvres-art", name: "artworks", slug: "oeuvres-art", subcategories: [
          { id: "tableaux", name: "paintings", slug: "tableaux" },
          { id: "sculptures", name: "sculptures", slug: "sculptures" },
          { id: "photographies", name: "photos", slug: "photographies" }
        ] }
      ]
    },
    {
      id: "sports-loisirs",
      name: "Sports & Leisure",
      slug: "sports-loisirs",
      attributes: {
        item_type: ["equipement", "vetement", "accessoire"],
        sport_type: ["football", "fitness", "randonnee", "combat"]
      },
      subcategories: [
        { 
          id: "equipements-sportifs", 
          name: "sports equipment", 
          slug: "equipements-sportifs",
          attributes: {
             sport_type: ["football", "fitness", "cyclisme", "combat", "randonnee", "autre"],
             condition: ["neuf", "bon_etat", "occasion"],
             brand: ["nike", "adidas", "decathlon", "puma", "autre"]
          },
          subcategories: [
          { id: "sport-football", name: "football", slug: "sport-football" },
          { id: "sport-fitness", name: "fitness", slug: "sport-fitness" },
          { id: "sport-cyclisme", name: "cycling", slug: "sport-cyclisme" }
        ] },
        { 
          id: "salles-de-sport", 
          name: "gyms", 
          slug: "salles-de-sport",
          attributes: {
            subscription_type: ["mensuel", "trimestriel", "semestriel", "annuel", "seance"],
            access_type: ["hommes", "femmes", "mixte"]
          },
          subcategories: [
          { id: "salle-abonnements", name: "subscriptions", slug: "salle-abonnements" },
          { id: "salle-coaching", name: "coaching", slug: "salle-coaching" },
          { id: "salle-cours-collectifs", name: "group classes", slug: "salle-cours-collectifs" }
        ] },
        { id: "cours-danse-arts-martiaux", name: "dance & martial arts", slug: "cours-danse-arts-martiaux", subcategories: [
          { id: "danse-orientale", name: "oriental dance", slug: "danse-orientale" },
          { id: "hip-hop", name: "hip-hop", slug: "hip-hop" },
          { id: "karate", name: "karate", slug: "karate" }
        ] },
        { id: "activites-outdoor", name: "outdoor activities", slug: "activites-outdoor", subcategories: [
          { id: "randonnee", name: "hiking", slug: "randonnee" },
          { id: "escalade", name: "climbing", slug: "escalade" },
          { id: "vtt", name: "mountain biking", slug: "vtt" }
        ] },
        { id: "camping-randonnee", name: "camping & hiking", slug: "camping-randonnee", subcategories: [
          { id: "tentes", name: "tents", slug: "tentes" },
          { id: "sacs-de-couchage", name: "sleeping bags", slug: "sacs-de-couchage" },
          { id: "accessoires-camping", name: "accessories", slug: "accessoires-camping" }
        ] },
        { id: "jeux-de-societe", name: "board games", slug: "jeux-de-societe", subcategories: [
          { id: "jeux-strategie", name: "strategy", slug: "jeux-strategie" },
          { id: "jeux-famille", name: "family", slug: "jeux-famille" },
          { id: "jeux-cartes", name: "cards", slug: "jeux-cartes" }
        ] }
      ]
    },
    {
      id: "enfance-activites-familiales",
      name: "Childhood & Family Activities",
      slug: "enfance-activites-familiales",
      attributes: {
        activity_type: ["jouets", "eveil", "parascolaire", "ateliers", "anniversaire", "colonies"]
      },
      subcategories: [
        { 
          id: "jouets-educatifs", 
          name: "educational toys", 
          slug: "jouets-educatifs",
          attributes: {
            age_group: ["0-3", "3-6", "6-12", "12+"],
            material: ["bois", "plastique", "tissu", "mixte"]
          },
          subcategories: [
          { id: "jouets-montessori", name: "Montessori", slug: "jouets-montessori" },
          { id: "jouets-puzzles", name: "puzzles", slug: "jouets-puzzles" },
          { id: "jouets-sciences", name: "science", slug: "jouets-sciences" }
        ] },
        { id: "jeux-eveil", name: "early learning games", slug: "jeux-eveil", subcategories: [
          { id: "eveil-0-12", name: "0-12 months", slug: "eveil-0-12" },
          { id: "eveil-1-3", name: "1-3 years", slug: "eveil-1-3" },
          { id: "eveil-3-6", name: "3-6 years", slug: "eveil-3-6" }
        ] },
        { id: "activites-parascolaires", name: "extracurricular activities", slug: "activites-parascolaires", subcategories: [
          { id: "parascolaire-clubs", name: "school clubs", slug: "parascolaire-clubs" },
          { id: "parascolaire-sport", name: "sport", slug: "parascolaire-sport" },
          { id: "parascolaire-arts", name: "arts", slug: "parascolaire-arts" }
        ] },
        { id: "ateliers-enfants", name: "children's workshops", slug: "ateliers-enfants", subcategories: [
          { id: "enfants-robotique", name: "robotics", slug: "enfants-robotique" },
          { id: "enfants-coding", name: "coding", slug: "enfants-coding" },
          { id: "enfants-cuisine", name: "cooking", slug: "enfants-cuisine" }
        ] },
        { id: "animations-anniversaire", name: "birthday entertainment", slug: "animations-anniversaire", subcategories: [
          { id: "anniv-clowns", name: "clowns", slug: "anniv-clowns" },
          { id: "anniv-magiciens", name: "magicians", slug: "anniv-magiciens" },
          { id: "anniv-decorations", name: "decorations", slug: "anniv-decorations" }
        ] },
        { 
          id: "colonies-vacances", 
          name: "summer camps", 
          slug: "colonies-vacances",
          attributes: {
            destination_type: ["mer", "montagne", "campagne", "etranger"],
            duration: ["1_semaine", "2_semaines", "1_mois"],
            season: ["ete", "hiver", "printemps"]
          },
          subcategories: [
          { id: "colonies-mer", name: "sea", slug: "colonies-mer" },
          { id: "colonies-montagne", name: "mountain", slug: "colonies-montagne" },
          { id: "colonies-culture", name: "culture", slug: "colonies-culture" }
        ] }
      ]
    },
    {
      id: "clubs-associations",
      name: "Clubs & Associations",
      slug: "clubs-associations",
      subcategories: [
        { id: "clubs-sportifs", name: "sports clubs", slug: "clubs-sportifs", subcategories: [
          { id: "club-football", name: "football", slug: "club-football" },
          { id: "club-judo", name: "judo", slug: "club-judo" },
          { id: "club-natation", name: "swimming", slug: "club-natation" }
        ] },
        { id: "associations-culturelles", name: "cultural associations", slug: "associations-culturelles", subcategories: [
          { id: "asso-musique", name: "music", slug: "asso-musique" },
          { id: "asso-theatre", name: "theatre", slug: "asso-theatre" },
          { id: "asso-patrimoine", name: "heritage", slug: "asso-patrimoine" }
        ] },
        { id: "ateliers-communautaires", name: "community workshops", slug: "ateliers-communautaires", subcategories: [
          { id: "comm-solidarite", name: "solidarity", slug: "comm-solidarite" },
          { id: "comm-environnement", name: "environment", slug: "comm-environnement" },
          { id: "comm-insertion", name: "inclusion", slug: "comm-insertion" }
        ] },
        { id: "clubs-lecture", name: "book clubs", slug: "clubs-lecture", subcategories: [
          { id: "lecture-adultes", name: "adults", slug: "lecture-adultes" },
          { id: "lecture-jeunesse", name: "youth", slug: "lecture-jeunesse" },
          { id: "lecture-thematiques", name: "themes", slug: "lecture-thematiques" }
        ] },
        { id: "evenements-educatifs", name: "educational events", slug: "evenements-educatifs", subcategories: [
          { id: "edu-conferences", name: "conferences", slug: "edu-conferences" },
          { id: "edu-salons", name: "fairs", slug: "edu-salons" },
          { id: "edu-forums", name: "forums", slug: "edu-forums" }
        ] },
        { id: "conferences", name: "conferences", slug: "conferences", subcategories: [
          { id: "conf-academiques", name: "academic", slug: "conf-academiques" },
          { id: "conf-professionnelles", name: "professional", slug: "conf-professionnelles" },
          { id: "conf-grand-public", name: "public", slug: "conf-grand-public" }
        ] }
      ]
    }
  ]
};