import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { BookOpen } from "lucide-react";

export const educationLoisirsIt: MenuCategory = {
  id: "education-loisirs",
  name: "Sport, Educazione & Tempo Libero",
  slug: "education-loisirs",
  icon: <BookOpen className="w-4 h-4" />,
  subcategories: [
    {
      id: "cours-formations",
      name: "Corsi & Formazioni",
      slug: "cours-formations",
      subcategories: [
        { id: "cours-particuliers", name: "lezioni private", slug: "cours-particuliers", subcategories: [
          { id: "cours-maths", name: "matematica", slug: "cours-maths" },
          { id: "cours-sciences", name: "scienze", slug: "cours-sciences" },
          { id: "cours-langues", name: "lingue", slug: "cours-langues" }
        ] },
        { id: "soutien-scolaire", name: "sostegno scolastico", slug: "soutien-scolaire", subcategories: [
          { id: "soutien-primaire", name: "primaria", slug: "soutien-primaire" },
          { id: "soutien-college", name: "medie", slug: "soutien-college" },
          { id: "soutien-lycee", name: "superiori", slug: "soutien-lycee" }
        ] },
        { id: "preparation-examens", name: "preparazione esami (BEM/BAC)", slug: "preparation-examens", subcategories: [
          { id: "prep-methodologie", name: "metodologia", slug: "prep-methodologie" },
          { id: "prep-sujets-corriges", name: "prove svolte", slug: "prep-sujets-corriges" },
          { id: "prep-coaching", name: "coaching", slug: "prep-coaching" }
        ] },
        { id: "formations-professionnelles", name: "formazioni professionali", slug: "formations-professionnelles", subcategories: [
          { id: "form-informatique", name: "informatica", slug: "form-informatique" },
          { id: "form-commerce", name: "commercio", slug: "form-commerce" },
          { id: "form-gestion", name: "management", slug: "form-gestion" }
        ] },
        { id: "ateliers-pedagogiques", name: "laboratori pedagogici", slug: "ateliers-pedagogiques", subcategories: [
          { id: "atelier-stem", name: "STEM", slug: "atelier-stem" },
          { id: "atelier-creativite", name: "creatività", slug: "atelier-creativite" },
          { id: "atelier-remediation", name: "recupero", slug: "atelier-remediation" }
        ] },
        { id: "formations-en-ligne", name: "formazioni online", slug: "formations-en-ligne", subcategories: [
          { id: "online-mooc", name: "MOOC", slug: "online-mooc" },
          { id: "online-certifications", name: "certificazioni", slug: "online-certifications" },
          { id: "online-tutoriels", name: "tutorial", slug: "online-tutoriels" }
        ] }
      ]
    },
    {
      id: "livres-supports-educatifs",
      name: "Libri & Materiale Educativo",
      slug: "livres-supports-educatifs",
      subcategories: [
        { id: "livres-scolaires", name: "libri scolastici", slug: "livres-scolaires", subcategories: [
          { id: "livres-primaire", name: "primaria", slug: "livres-primaire" },
          { id: "livres-college", name: "medie", slug: "livres-college" },
          { id: "livres-lycee", name: "superiori", slug: "livres-lycee" }
        ] },
        { id: "manuels-universitaires", name: "manuali universitari", slug: "manuels-universitaires", subcategories: [
          { id: "manuels-sciences", name: "scienze", slug: "manuels-sciences" },
          { id: "manuels-medecine", name: "medicina", slug: "manuels-medecine" },
          { id: "manuels-droit", name: "giurisprudenza", slug: "manuels-droit" }
        ] },
        { id: "romans", name: "romanzi", slug: "romans", subcategories: [
          { id: "romans-contemporains", name: "contemporanei", slug: "romans-contemporains" },
          { id: "romans-classiques", name: "classici", slug: "romans-classiques" },
          { id: "romans-jeunesse", name: "giovani", slug: "romans-jeunesse" }
        ] },
        { id: "bd-mangas", name: "fumetti & manga", slug: "bd-mangas", subcategories: [
          { id: "bd-franco-belge", name: "franco-belga", slug: "bd-franco-belge" },
          { id: "mangas", name: "manga", slug: "mangas" },
          { id: "comics", name: "comics", slug: "comics" }
        ] },
        { id: "encyclopedies", name: "enciclopedie", slug: "encyclopedies", subcategories: [
          { id: "encyclopedies-generalistes", name: "generali", slug: "encyclopedies-generalistes" },
          { id: "encyclopedies-specialisees", name: "specializzate", slug: "encyclopedies-specialisees" },
          { id: "encyclopedies-enfants", name: "bambini", slug: "encyclopedies-enfants" }
        ] },
        { id: "documents-pedagogiques", name: "documenti didattici", slug: "documents-pedagogiques", subcategories: [
          { id: "docs-fiches", name: "schede", slug: "docs-fiches" },
          { id: "docs-exercices", name: "esercizi", slug: "docs-exercices" },
          { id: "docs-cours", name: "lezioni", slug: "docs-cours" }
        ] }
      ]
    },
    {
      id: "arts-musique",
      name: "Arti & Musica",
      slug: "arts-musique",
      subcategories: [
        { id: "instruments-musique", name: "strumenti musicali", slug: "instruments-musique", subcategories: [
          { id: "guitare", name: "chitarra", slug: "guitare" },
          { id: "piano", name: "pianoforte", slug: "piano" },
          { id: "percussion", name: "percussioni", slug: "percussion" }
        ] },
        { id: "cours-chant", name: "lezioni di canto", slug: "cours-chant", subcategories: [
          { id: "chant-debutant", name: "principiante", slug: "chant-debutant" },
          { id: "chant-avance", name: "avanzato", slug: "chant-avance" },
          { id: "chant-chorale", name: "coro", slug: "chant-chorale" }
        ] },
        { id: "peinture-dessin", name: "pittura & disegno", slug: "peinture-dessin", subcategories: [
          { id: "aquarelle", name: "acquerello", slug: "aquarelle" },
          { id: "peinture-huile", name: "olio", slug: "peinture-huile" },
          { id: "croquis", name: "schizzi", slug: "croquis" }
        ] },
        { id: "materiel-artistique", name: "materiale artistico", slug: "materiel-artistique", subcategories: [
          { id: "pinceaux", name: "pennelli", slug: "pinceaux" },
          { id: "toiles", name: "tele", slug: "toiles" },
          { id: "pigments", name: "pigmenti", slug: "pigments" }
        ] },
        { id: "ateliers-creatifs", name: "laboratori creativi", slug: "ateliers-creatifs", subcategories: [
          { id: "poterie", name: "ceramica", slug: "poterie" },
          { id: "artisanat-creatif", name: "artigianato", slug: "artisanat-creatif" },
          { id: "mosaique", name: "mosaico", slug: "mosaique" }
        ] },
        { id: "oeuvres-art", name: "opere d’arte", slug: "oeuvres-art", subcategories: [
          { id: "tableaux", name: "quadri", slug: "tableaux" },
          { id: "sculptures", name: "sculture", slug: "sculptures" },
          { id: "photographies", name: "foto", slug: "photographies" }
        ] }
      ]
    },
    {
      id: "sports-loisirs",
      name: "Sport & Tempo Libero",
      slug: "sports-loisirs",
      subcategories: [
        { id: "equipements-sportifs", name: "attrezzature sportive", slug: "equipements-sportifs", subcategories: [
          { id: "sport-football", name: "calcio", slug: "sport-football" },
          { id: "sport-fitness", name: "fitness", slug: "sport-fitness" },
          { id: "sport-cyclisme", name: "ciclismo", slug: "sport-cyclisme" }
        ] },
        { id: "salles-de-sport", name: "palestre", slug: "salles-de-sport", subcategories: [
          { id: "salle-abonnements", name: "abbonamenti", slug: "salle-abonnements" },
          { id: "salle-coaching", name: "coaching", slug: "salle-coaching" },
          { id: "salle-cours-collectifs", name: "corsi di gruppo", slug: "salle-cours-collectifs" }
        ] },
        { id: "cours-danse-arts-martiaux", name: "danza & arti marziali", slug: "cours-danse-arts-martiaux", subcategories: [
          { id: "danse-orientale", name: "danza orientale", slug: "danse-orientale" },
          { id: "hip-hop", name: "hip-hop", slug: "hip-hop" },
          { id: "karate", name: "karate", slug: "karate" }
        ] },
        { id: "activites-outdoor", name: "attività outdoor", slug: "activites-outdoor", subcategories: [
          { id: "randonnee", name: "trekking", slug: "randonnee" },
          { id: "escalade", name: "arrampicata", slug: "escalade" },
          { id: "vtt", name: "MTB", slug: "vtt" }
        ] },
        { id: "camping-randonnee", name: "campeggio & trekking", slug: "camping-randonnee", subcategories: [
          { id: "tentes", name: "tende", slug: "tentes" },
          { id: "sacs-de-couchage", name: "sacchi a pelo", slug: "sacs-de-couchage" },
          { id: "accessoires-camping", name: "accessori", slug: "accessoires-camping" }
        ] },
        { id: "jeux-de-societe", name: "giochi da tavolo", slug: "jeux-de-societe", subcategories: [
          { id: "jeux-strategie", name: "strategia", slug: "jeux-strategie" },
          { id: "jeux-famille", name: "famiglia", slug: "jeux-famille" },
          { id: "jeux-cartes", name: "carte", slug: "jeux-cartes" }
        ] }
      ]
    },
    {
      id: "enfance-activites-familiales",
      name: "Infanzia & Attività Familiari",
      slug: "enfance-activites-familiales",
      subcategories: [
        { id: "jouets-educatifs", name: "giochi educativi", slug: "jouets-educatifs", subcategories: [
          { id: "jouets-montessori", name: "Montessori", slug: "jouets-montessori" },
          { id: "jouets-puzzles", name: "puzzle", slug: "jouets-puzzles" },
          { id: "jouets-sciences", name: "scienza", slug: "jouets-sciences" }
        ] },
        { id: "jeux-eveil", name: "giochi di sviluppo", slug: "jeux-eveil", subcategories: [
          { id: "eveil-0-12", name: "0-12 mesi", slug: "eveil-0-12" },
          { id: "eveil-1-3", name: "1-3 anni", slug: "eveil-1-3" },
          { id: "eveil-3-6", name: "3-6 anni", slug: "eveil-3-6" }
        ] },
        { id: "activites-parascolaires", name: "attività extrascolastiche", slug: "activites-parascolaires", subcategories: [
          { id: "parascolaire-clubs", name: "club scolastici", slug: "parascolaire-clubs" },
          { id: "parascolaire-sport", name: "sport", slug: "parascolaire-sport" },
          { id: "parascolaire-arts", name: "arti", slug: "parascolaire-arts" }
        ] },
        { id: "ateliers-enfants", name: "laboratori per bambini", slug: "ateliers-enfants", subcategories: [
          { id: "enfants-robotique", name: "robotica", slug: "enfants-robotique" },
          { id: "enfants-coding", name: "coding", slug: "enfants-coding" },
          { id: "enfants-cuisine", name: "cucina", slug: "enfants-cuisine" }
        ] },
        { id: "animations-anniversaire", name: "animazioni di compleanno", slug: "animations-anniversaire", subcategories: [
          { id: "anniv-clowns", name: "clown", slug: "anniv-clowns" },
          { id: "anniv-magiciens", name: "maghi", slug: "anniv-magiciens" },
          { id: "anniv-decorations", name: "decorazioni", slug: "anniv-decorations" }
        ] },
        { id: "colonies-vacances", name: "campi estivi", slug: "colonies-vacances", subcategories: [
          { id: "colonies-mer", name: "mare", slug: "colonies-mer" },
          { id: "colonies-montagne", name: "montagna", slug: "colonies-montagne" },
          { id: "colonies-culture", name: "cultura", slug: "colonies-culture" }
        ] }
      ]
    },
    {
      id: "clubs-associations",
      name: "Club & Associazioni",
      slug: "clubs-associations",
      subcategories: [
        { id: "clubs-sportifs", name: "club sportivi", slug: "clubs-sportifs", subcategories: [
          { id: "club-football", name: "calcio", slug: "club-football" },
          { id: "club-judo", name: "judo", slug: "club-judo" },
          { id: "club-natation", name: "nuoto", slug: "club-natation" }
        ] },
        { id: "associations-culturelles", name: "associazioni culturali", slug: "associations-culturelles", subcategories: [
          { id: "asso-musique", name: "musica", slug: "asso-musique" },
          { id: "asso-theatre", name: "teatro", slug: "asso-theatre" },
          { id: "asso-patrimoine", name: "patrimonio", slug: "asso-patrimoine" }
        ] },
        { id: "ateliers-communautaires", name: "laboratori comunitari", slug: "ateliers-communautaires", subcategories: [
          { id: "comm-solidarite", name: "solidarietà", slug: "comm-solidarite" },
          { id: "comm-environnement", name: "ambiente", slug: "comm-environnement" },
          { id: "comm-insertion", name: "inclusione", slug: "comm-insertion" }
        ] },
        { id: "clubs-lecture", name: "club di lettura", slug: "clubs-lecture", subcategories: [
          { id: "lecture-adultes", name: "adulti", slug: "lecture-adultes" },
          { id: "lecture-jeunesse", name: "giovani", slug: "lecture-jeunesse" },
          { id: "lecture-thematiques", name: "tematici", slug: "lecture-thematiques" }
        ] },
        { id: "evenements-educatifs", name: "eventi educativi", slug: "evenements-educatifs", subcategories: [
          { id: "edu-conferences", name: "conferenze", slug: "edu-conferences" },
          { id: "edu-salons", name: "fiere", slug: "edu-salons" },
          { id: "edu-forums", name: "forum", slug: "edu-forums" }
        ] },
        { id: "conferences", name: "conferenze", slug: "conferences", subcategories: [
          { id: "conf-academiques", name: "accademiche", slug: "conf-academiques" },
          { id: "conf-professionnelles", name: "professionali", slug: "conf-professionnelles" },
          { id: "conf-grand-public", name: "pubblico", slug: "conf-grand-public" }
        ] }
      ]
    }
  ]
};