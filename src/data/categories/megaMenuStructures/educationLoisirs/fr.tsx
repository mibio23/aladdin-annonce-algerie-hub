import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { BookOpen } from "lucide-react";

export const educationLoisirsFr: MenuCategory = {
  id: "education-loisirs",
  name: "Sport, Éducation & Loisirs",
  slug: "education-loisirs",
  icon: <BookOpen className="w-4 h-4" />,
  subcategories: [
    {
      id: "cours-formations",
      name: "Cours & Formations",
      slug: "cours-formations",
      attributes: {
        mode: ["en_ligne", "presentiel", "domicile"],
        level: ["primaire", "cem", "lycee", "universitaire", "adulte"],
        type: ["soutien_scolaire", "langues", "musique", "informatique"]
      },
      subcategories: [
        { 
          id: "cours-particuliers", 
          name: "cours particuliers", 
          slug: "cours-particuliers", 
          attributes: {
            subject: ["maths", "physique", "sciences", "arabe", "francais", "anglais", "philosophie", "histoire_geo", "economie", "gestion", "autre"],
            level: ["primaire", "cem", "lycee", "universitaire"],
            mode: ["presentiel", "en_ligne", "domicile"]
          },
          subcategories: [
          { id: "cours-maths", name: "maths", slug: "cours-maths" },
          { id: "cours-sciences", name: "sciences", slug: "cours-sciences" },
          { id: "cours-langues", name: "langues", slug: "cours-langues" }
        ] },
        { 
          id: "soutien-scolaire", 
          name: "soutien scolaire", 
          slug: "soutien-scolaire", 
          attributes: {
            subject: ["maths", "physique", "sciences", "arabe", "francais", "anglais", "autre"],
            level: ["primaire", "cem", "lycee"],
            mode: ["presentiel", "en_ligne"]
          },
          subcategories: [
          { id: "soutien-primaire", name: "primaire", slug: "soutien-primaire" },
          { id: "soutien-college", name: "collège", slug: "soutien-college" },
          { id: "soutien-lycee", name: "lycée", slug: "soutien-lycee" }
        ] },
        { 
          id: "preparation-examens", 
          name: "préparation examens (BEM/BAC)", 
          slug: "preparation-examens", 
          attributes: {
            subject: ["maths", "physique", "sciences", "arabe", "francais", "anglais", "autre"],
            level: ["cem", "lycee"],
            mode: ["presentiel", "en_ligne"]
          },
          subcategories: [
          { id: "prep-methodologie", name: "méthodologie", slug: "prep-methodologie" },
          { id: "prep-sujets-corriges", name: "sujets corrigés", slug: "prep-sujets-corriges" },
          { id: "prep-coaching", name: "coaching", slug: "prep-coaching" }
        ] },
        { 
          id: "formations-professionnelles", 
          name: "formations professionnelles", 
          slug: "formations-professionnelles", 
          attributes: {
            domain: ["informatique", "commerce", "gestion", "marketing", "design", "autre"],
            mode: ["presentiel", "en_ligne"],
            duration: ["1_semaine", "1_mois", "trimestriel"]
          },
          subcategories: [
          { id: "form-informatique", name: "informatique", slug: "form-informatique" },
          { id: "form-commerce", name: "commerce", slug: "form-commerce" },
          { id: "form-gestion", name: "gestion", slug: "form-gestion" }
        ] },
        { 
          id: "ateliers-pedagogiques", 
          name: "ateliers pédagogiques", 
          slug: "ateliers-pedagogiques", 
          attributes: {
            topic: ["science", "technologie", "art", "langues"],
            age_group: ["6-12", "12-18", "adultes"],
            mode: ["presentiel", "en_ligne"]
          },
          subcategories: [
          { id: "atelier-stem", name: "STEM", slug: "atelier-stem" },
          { id: "atelier-creativite", name: "créativité", slug: "atelier-creativite" },
          { id: "atelier-remediation", name: "remédiation", slug: "atelier-remediation" }
        ] },
        { 
          id: "formations-en-ligne", 
          name: "formations en ligne", 
          slug: "formations-en-ligne", 
          attributes: {
            domain: ["informatique", "langues", "business", "developpement_personnel"],
            level: ["debutant", "intermediaire", "avance"],
            price_type: ["gratuit", "payant"]
          },
          subcategories: [
          { id: "online-mooc", name: "MOOC", slug: "online-mooc" },
          { id: "online-certifications", name: "certifications", slug: "online-certifications" },
          { id: "online-tutoriels", name: "tutoriels", slug: "online-tutoriels" }
        ] }
      ]
    },
    {
      id: "livres-supports-educatifs",
      name: "Livres & Supports Éducatifs",
      slug: "livres-supports-educatifs",
      attributes: {
        condition: ["neuf", "bon_etat", "etat_moyen"],
        language: ["arabe", "francais", "anglais"],
        genre: ["scolaire", "roman", "bd", "scientifique"]
      },
      subcategories: [
        { 
          id: "livres-scolaires", 
          name: "livres scolaires", 
          slug: "livres-scolaires", 
          attributes: {
            level: ["primaire", "cem", "lycee"],
            subject: ["maths", "sciences", "arabe", "francais", "anglais", "autre"],
            condition: ["neuf", "bon_etat", "occasion"]
          },
          subcategories: [
          { id: "livres-primaire", name: "primaire", slug: "livres-primaire" },
          { id: "livres-college", name: "collège", slug: "livres-college" },
          { id: "livres-lycee", name: "lycée", slug: "livres-lycee" }
        ] },
        { 
          id: "manuels-universitaires", 
          name: "manuels universitaires", 
          slug: "manuels-universitaires", 
          attributes: {
            domain: ["sciences", "medecine", "droit", "economie", "technologie", "autre"],
            condition: ["neuf", "bon_etat", "occasion"],
            language: ["francais", "arabe", "anglais"]
          },
          subcategories: [
          { id: "manuels-sciences", name: "sciences", slug: "manuels-sciences" },
          { id: "manuels-medecine", name: "médecine", slug: "manuels-medecine" },
          { id: "manuels-droit", name: "droit", slug: "manuels-droit" }
        ] },
        { 
          id: "romans", 
          name: "romans", 
          slug: "romans", 
          attributes: {
            genre: ["roman", "thriller", "sf", "biographie", "autre"],
            language: ["arabe", "francais", "anglais", "autre"],
            condition: ["neuf", "bon_etat", "occasion"]
          },
          subcategories: [
          { id: "romans-contemporains", name: "contemporains", slug: "romans-contemporains" },
          { id: "romans-classiques", name: "classiques", slug: "romans-classiques" },
          { id: "romans-jeunesse", name: "jeunesse", slug: "romans-jeunesse" }
        ] },
        { 
          id: "bd-mangas", 
          name: "BD & mangas", 
          slug: "bd-mangas", 
          attributes: {
            genre: ["shonen", "shojo", "seinen", "comics", "bd_europeenne"],
            language: ["francais", "anglais", "arabe"],
            condition: ["neuf", "bon_etat", "occasion"]
          },
          subcategories: [
          { id: "bd-franco-belge", name: "BD franco-belge", slug: "bd-franco-belge" },
          { id: "mangas", name: "mangas", slug: "mangas" },
          { id: "comics", name: "comics", slug: "comics" }
        ] },
        { 
          id: "encyclopedies", 
          name: "encyclopédies", 
          slug: "encyclopedies", 
          attributes: {
            topic: ["general", "science", "histoire", "nature", "art"],
            audience: ["enfants", "adultes", "etudiants"],
            condition: ["neuf", "bon_etat", "occasion"]
          },
          subcategories: [
          { id: "encyclopedies-generalistes", name: "généralistes", slug: "encyclopedies-generalistes" },
          { id: "encyclopedies-specialisees", name: "spécialisées", slug: "encyclopedies-specialisees" },
          { id: "encyclopedies-enfants", name: "enfants", slug: "encyclopedies-enfants" }
        ] },
        { 
          id: "documents-pedagogiques", 
          name: "documents pédagogiques", 
          slug: "documents-pedagogiques", 
          attributes: {
            type: ["fiche_revision", "exercice", "examen_corrige", "cours_resume"],
            level: ["primaire", "cem", "lycee", "universitaire"],
            subject: ["maths", "physique", "arabe", "francais", "autre"]
          },
          subcategories: [
          { id: "docs-fiches", name: "fiches", slug: "docs-fiches" },
          { id: "docs-exercices", name: "exercices", slug: "docs-exercices" },
          { id: "docs-cours", name: "cours", slug: "docs-cours" }
        ] }
      ]
    },
    {
      id: "arts-musique",
      name: "Arts & Musique",
      slug: "arts-musique",
      attributes: {
        category_type: ["instruments", "cours", "art", "materiel", "ateliers"]
      },
      subcategories: [
        { 
          id: "instruments-musique", 
          name: "instruments de musique", 
          slug: "instruments-musique",
          attributes: {
            instrument_type: ["guitare", "piano", "percussion", "violon", "instruments_vent", "accessoires", "autre"],
            condition: ["neuf", "bon_etat", "occasion"],
            brand: ["yamaha", "roland", "fender", "ibanez", "autre"]
          },
          subcategories: [
          { id: "guitare", name: "guitare", slug: "guitare" },
          { id: "piano", name: "piano", slug: "piano" },
          { id: "percussion", name: "percussion", slug: "percussion" }
        ] },
        { 
          id: "cours-chant", 
          name: "cours de chant", 
          slug: "cours-chant",
          attributes: {
            skill_level: ["debutant", "intermediaire", "avance", "professionnel"],
            format: ["individuel", "groupe", "en_ligne", "presentiel"]
          },
          subcategories: [
          { id: "chant-debutant", name: "débutant", slug: "chant-debutant" },
          { id: "chant-avance", name: "avancé", slug: "chant-avance" },
          { id: "chant-chorale", name: "chorale", slug: "chant-chorale" }
        ] },
        { 
          id: "peinture-dessin", 
          name: "peinture & dessin", 
          slug: "peinture-dessin", 
          attributes: {
            technique: ["huile", "aquarelle", "acrylique", "crayon", "charbon", "autre"],
            brand: ["faber_castell", "winsor_newton", "autre"],
            condition: ["neuf", "bon_etat"]
          },
          subcategories: [
          { id: "aquarelle", name: "aquarelle", slug: "aquarelle" },
          { id: "peinture-huile", name: "huile", slug: "peinture-huile" },
          { id: "croquis", name: "croquis", slug: "croquis" }
        ] },
        { 
          id: "materiel-artistique", 
          name: "matériel artistique", 
          slug: "materiel-artistique", 
          attributes: {
            type: ["pinceaux", "toiles", "pigments", "chevalet", "papier"],
            brand: ["canson", "pebeo", "autre"],
            condition: ["neuf", "bon_etat"]
          },
          subcategories: [
          { id: "pinceaux", name: "pinceaux", slug: "pinceaux" },
          { id: "toiles", name: "toiles", slug: "toiles" },
          { id: "pigments", name: "pigments", slug: "pigments" }
        ] },
        { 
          id: "ateliers-creatifs", 
          name: "ateliers créatifs", 
          slug: "ateliers-creatifs", 
          attributes: {
            activity_type: ["poterie", "artisanat", "mosaique", "couture", "bijoux"],
            age_group: ["enfants", "adultes", "tout_public"],
            format: ["atelier", "stage", "cours_hebdo"]
          },
          subcategories: [
          { id: "poterie", name: "poterie", slug: "poterie" },
          { id: "artisanat-creatif", name: "artisanat", slug: "artisanat-creatif" },
          { id: "mosaique", name: "mosaïque", slug: "mosaique" }
        ] },
        { 
          id: "oeuvres-art", 
          name: "œuvres d’art", 
          slug: "oeuvres-art", 
          attributes: {
            style: ["moderne", "classique", "abstrait", "contemporain"],
            type: ["tableau", "sculpture", "photo", "dessin"],
            price_type: ["fixe", "negociable"]
          },
          subcategories: [
          { id: "tableaux", name: "tableaux", slug: "tableaux" },
          { id: "sculptures", name: "sculptures", slug: "sculptures" },
          { id: "photographies", name: "photos", slug: "photographies" }
        ] }
      ]
    },
    {
      id: "sports-loisirs",
      name: "Sports & Loisirs",
      slug: "sports-loisirs",
      attributes: {
        item_type: ["equipement", "vetement", "accessoire"],
        sport_type: ["football", "fitness", "randonnee", "combat"]
      },
      subcategories: [
        { 
          id: "equipements-sportifs", 
          name: "équipements sportifs", 
          slug: "equipements-sportifs",
          attributes: {
             sport_type: ["football", "fitness", "cyclisme", "combat", "randonnee", "autre"],
             condition: ["neuf", "bon_etat", "occasion"],
             brand: ["nike", "adidas", "decathlon", "puma", "autre"]
          },
          subcategories: [
          { id: "sport-football", name: "football", slug: "sport-football" },
          { id: "sport-fitness", name: "fitness", slug: "sport-fitness" },
          { id: "sport-cyclisme", name: "cyclisme", slug: "sport-cyclisme" }
        ] },
        { 
          id: "salles-de-sport", 
          name: "salles de sport", 
          slug: "salles-de-sport",
          attributes: {
            subscription_type: ["mensuel", "trimestriel", "semestriel", "annuel", "seance"],
            access_type: ["hommes", "femmes", "mixte"]
          },
          subcategories: [
          { id: "salle-abonnements", name: "abonnements", slug: "salle-abonnements" },
          { id: "salle-coaching", name: "coaching", slug: "salle-coaching" },
          { id: "salle-cours-collectifs", name: "cours collectifs", slug: "salle-cours-collectifs" }
        ] },
        { 
          id: "cours-danse-arts-martiaux", 
          name: "cours de danse & arts martiaux", 
          slug: "cours-danse-arts-martiaux", 
          attributes: {
            activity_type: ["danse", "karate", "judo", "boxe", "yoga"],
            level: ["debutant", "intermediaire", "avance"],
            audience: ["enfants", "adultes", "femmes_uniquement"]
          },
          subcategories: [
          { id: "danse-orientale", name: "danse orientale", slug: "danse-orientale" },
          { id: "hip-hop", name: "hip-hop", slug: "hip-hop" },
          { id: "karate", name: "karaté", slug: "karate" }
        ] },
        { 
          id: "activites-outdoor", 
          name: "activités outdoor", 
          slug: "activites-outdoor", 
          attributes: {
            activity_type: ["randonnee", "escalade", "vtt", "kayak"],
            difficulty: ["facile", "moyen", "difficile"],
            duration: ["demi_journee", "journee", "weekend"]
          },
          subcategories: [
          { id: "randonnee", name: "randonnée", slug: "randonnee" },
          { id: "escalade", name: "escalade", slug: "escalade" },
          { id: "vtt", name: "VTT", slug: "vtt" }
        ] },
        { 
          id: "camping-randonnee", 
          name: "camping & randonnée", 
          slug: "camping-randonnee", 
          attributes: {
            item_type: ["tente", "sac_couchage", "sac_a_dos", "chaussures", "accessoire"],
            brand: ["quechua", "thenorthface", "columbia", "autre"],
            condition: ["neuf", "bon_etat", "occasion"]
          },
          subcategories: [
          { id: "tentes", name: "tentes", slug: "tentes" },
          { id: "sacs-de-couchage", name: "sacs de couchage", slug: "sacs-de-couchage" },
          { id: "accessoires-camping", name: "accessoires", slug: "accessoires-camping" }
        ] },
        { 
          id: "jeux-de-societe", 
          name: "jeux de société", 
          slug: "jeux-de-societe", 
          attributes: {
            type: ["strategie", "ambiance", "educatif", "cartes", "plateau"],
            players_count: ["1_joueur", "2_joueurs", "multi_joueurs"],
            age_group: ["enfants", "adultes", "famille"],
            condition: ["neuf", "bon_etat", "occasion"]
          },
          subcategories: [
          { id: "jeux-strategie", name: "stratégie", slug: "jeux-strategie" },
          { id: "jeux-famille", name: "famille", slug: "jeux-famille" },
          { id: "jeux-cartes", name: "cartes", slug: "jeux-cartes" }
        ] }
      ]
    },
    {
      id: "enfance-activites-familiales",
      name: "Enfance & Activités Familiales",
      slug: "enfance-activites-familiales",
      attributes: {
        activity_type: ["jouets", "eveil", "parascolaire", "ateliers", "anniversaire", "colonies"]
      },
      subcategories: [
        { 
          id: "jouets-educatifs", 
          name: "jouets éducatifs", 
          slug: "jouets-educatifs",
          attributes: {
            age_group: ["0-3", "3-6", "6-12", "12+"],
            material: ["bois", "plastique", "tissu", "mixte"]
          },
          subcategories: [
          { id: "jouets-montessori", name: "Montessori", slug: "jouets-montessori" },
          { id: "jouets-puzzles", name: "puzzles", slug: "jouets-puzzles" },
          { id: "jouets-sciences", name: "sciences", slug: "jouets-sciences" }
        ] },
        { 
          id: "jeux-eveil", 
          name: "jeux d’éveil", 
          slug: "jeux-eveil", 
          attributes: {
            age_group: ["0-3", "3-6"],
            material: ["bois", "tissu", "plastique", "silicone"],
            condition: ["neuf", "bon_etat"]
          },
          subcategories: [
          { id: "eveil-0-12", name: "0-12 mois", slug: "eveil-0-12" },
          { id: "eveil-1-3", name: "1-3 ans", slug: "eveil-1-3" },
          { id: "eveil-3-6", name: "3-6 ans", slug: "eveil-3-6" }
        ] },
        { 
          id: "activites-parascolaires", 
          name: "activités parascolaires", 
          slug: "activites-parascolaires", 
          attributes: {
            activity_type: ["sport", "musique", "langues", "art", "soutien"],
            schedule: ["mercredi", "weekend", "vacances", "soir"],
            age_group: ["primaire", "college", "lycee"]
          },
          subcategories: [
          { id: "parascolaire-clubs", name: "clubs scolaires", slug: "parascolaire-clubs" },
          { id: "parascolaire-sport", name: "sport", slug: "parascolaire-sport" },
          { id: "parascolaire-arts", name: "arts", slug: "parascolaire-arts" }
        ] },
        { 
          id: "ateliers-enfants", 
          name: "ateliers pour enfants", 
          slug: "ateliers-enfants", 
          attributes: {
            theme: ["cuisine", "jardinage", "bricolage", "science", "robotique"],
            age_group: ["3-6", "6-12", "12+"],
            format: ["atelier_unique", "cycle", "stage"]
          },
          subcategories: [
          { id: "enfants-robotique", name: "robotique", slug: "enfants-robotique" },
          { id: "enfants-coding", name: "coding", slug: "enfants-coding" },
          { id: "enfants-cuisine", name: "cuisine", slug: "enfants-cuisine" }
        ] },
        { 
          id: "animations-anniversaire", 
          name: "animations d’anniversaire", 
          slug: "animations-anniversaire", 
          attributes: {
            service_type: ["clown", "magicien", "maquillage", "decoration", "gateau"],
            theme: ["super_heros", "princesse", "pirate", "animaux", "autre"],
            price_type: ["forfait", "sur_devis"]
          },
          subcategories: [
          { id: "anniv-clowns", name: "clowns", slug: "anniv-clowns" },
          { id: "anniv-magiciens", name: "magiciens", slug: "anniv-magiciens" },
          { id: "anniv-decorations", name: "décorations", slug: "anniv-decorations" }
        ] },
        { 
          id: "colonies-vacances", 
          name: "colonies de vacances", 
          slug: "colonies-vacances",
          attributes: {
            destination_type: ["mer", "montagne", "campagne", "etranger"],
            duration: ["1_semaine", "2_semaines", "1_mois"],
            season: ["ete", "hiver", "printemps"]
          },
          subcategories: [
          { id: "colonies-mer", name: "mer", slug: "colonies-mer" },
          { id: "colonies-montagne", name: "montagne", slug: "colonies-montagne" },
          { id: "colonies-culture", name: "culture", slug: "colonies-culture" }
        ] }
      ]
    },
    {
      id: "clubs-associations",
      name: "Clubs & Associations",
      slug: "clubs-associations",
      subcategories: [
        { 
          id: "clubs-sportifs", 
          name: "clubs sportifs", 
          slug: "clubs-sportifs", 
          attributes: {
            sport_type: ["football", "judo", "natation", "autre"],
            age_group: ["6-12", "12-18", "adultes", "seniors"]
          },
          subcategories: [
          { id: "club-football", name: "football", slug: "club-football" },
          { id: "club-judo", name: "judo", slug: "club-judo" },
          { id: "club-natation", name: "natation", slug: "club-natation" }
        ] },
        { 
          id: "associations-culturelles", 
          name: "associations culturelles", 
          slug: "associations-culturelles", 
          attributes: {
            activity_type: ["musique", "theatre", "patrimoine", "autre"],
            audience: ["jeunesse", "adulte", "tout_public"]
          },
          subcategories: [
          { id: "asso-musique", name: "musique", slug: "asso-musique" },
          { id: "asso-theatre", name: "théâtre", slug: "asso-theatre" },
          { id: "asso-patrimoine", name: "patrimoine", slug: "asso-patrimoine" }
        ] },
        { 
          id: "ateliers-communautaires", 
          name: "ateliers communautaires", 
          slug: "ateliers-communautaires", 
          attributes: {
            theme: ["solidarite", "environnement", "insertion", "autre"],
            format: ["presentiel", "en_ligne"]
          },
          subcategories: [
          { id: "comm-solidarite", name: "solidarité", slug: "comm-solidarite" },
          { id: "comm-environnement", name: "environnement", slug: "comm-environnement" },
          { id: "comm-insertion", name: "insertion", slug: "comm-insertion" }
        ] },
        { 
          id: "clubs-lecture", 
          name: "clubs de lecture", 
          slug: "clubs-lecture", 
          attributes: {
            genre: ["roman", "essai", "poesie", "autre"],
            audience: ["adulte", "jeunesse"]
          },
          subcategories: [
          { id: "lecture-adultes", name: "adultes", slug: "lecture-adultes" },
          { id: "lecture-jeunesse", name: "jeunesse", slug: "lecture-jeunesse" },
          { id: "lecture-thematiques", name: "thématiques", slug: "lecture-thematiques" }
        ] },
        { 
          id: "evenements-educatifs", 
          name: "événements éducatifs", 
          slug: "evenements-educatifs", 
          attributes: {
            event_type: ["conference", "salon", "forum"],
            price_type: ["gratuit", "payant"]
          },
          subcategories: [
          { id: "edu-conferences", name: "conférences", slug: "edu-conferences" },
          { id: "edu-salons", name: "salons", slug: "edu-salons" },
          { id: "edu-forums", name: "forums", slug: "edu-forums" }
        ] },
        { 
          id: "conferences", 
          name: "conférences", 
          slug: "conferences", 
          attributes: {
            topic: ["science", "histoire", "technologie", "sante", "autre"],
            format: ["presentiel", "en_ligne"]
          },
          subcategories: [
          { id: "conf-academiques", name: "académiques", slug: "conf-academiques" },
          { id: "conf-professionnelles", name: "professionnelles", slug: "conf-professionnelles" },
          { id: "conf-grand-public", name: "grand public", slug: "conf-grand-public" }
        ] }
      ]
    }
  ]
};