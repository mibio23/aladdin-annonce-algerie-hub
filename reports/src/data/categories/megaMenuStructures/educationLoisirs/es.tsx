import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { BookOpen } from "lucide-react";

export const educationLoisirsEs: MenuCategory = {
  id: "education-loisirs",
  name: "Deporte, Educación y Ocio",
  slug: "education-loisirs",
  icon: <BookOpen className="w-4 h-4" />,
  subcategories: [
    {
      id: "cours-formations",
      name: "Cursos y Formaciones",
      slug: "cours-formations",
      attributes: {
        mode: ["en_ligne", "presentiel", "domicile"],
        level: ["primaire", "cem", "lycee", "universitaire", "adulte"],
        type: ["soutien_scolaire", "langues", "musique", "informatique"]
      },
      subcategories: [
        { id: "cours-particuliers", name: "clases particulares", slug: "cours-particuliers", 
          attributes: {
            subject: ["maths", "physique", "sciences", "arabe", "francais", "anglais", "philosophie", "histoire_geo", "economie", "gestion", "autre"],
            level: ["primaire", "cem", "lycee", "universitaire"],
            mode: ["presentiel", "en_ligne", "domicile"]
          },
          subcategories: [
          { id: "cours-maths", name: "matemáticas", slug: "cours-maths" },
          { id: "cours-sciences", name: "ciencias", slug: "cours-sciences" },
          { id: "cours-langues", name: "idiomas", slug: "cours-langues" }
        ] },
        { id: "soutien-scolaire", name: "apoyo escolar", slug: "soutien-scolaire", 
          attributes: {
            subject: ["maths", "physique", "sciences", "arabe", "francais", "anglais", "autre"],
            level: ["primaire", "cem", "lycee"],
            mode: ["presentiel", "en_ligne"]
          },
          subcategories: [
          { id: "soutien-primaire", name: "primaria", slug: "soutien-primaire" },
          { id: "soutien-college", name: "secundaria", slug: "soutien-college" },
          { id: "soutien-lycee", name: "bachillerato", slug: "soutien-lycee" }
        ] },
        { id: "preparation-examens", name: "preparación de exámenes (BEM/BAC)", slug: "preparation-examens", subcategories: [
          { id: "prep-methodologie", name: "metodología", slug: "prep-methodologie" },
          { id: "prep-sujets-corriges", name: "exámenes resueltos", slug: "prep-sujets-corriges" },
          { id: "prep-coaching", name: "coaching", slug: "prep-coaching" }
        ] },
        { id: "formations-professionnelles", name: "formaciones profesionales", slug: "formations-professionnelles", subcategories: [
          { id: "form-informatique", name: "informática", slug: "form-informatique" },
          { id: "form-commerce", name: "comercio", slug: "form-commerce" },
          { id: "form-gestion", name: "gestión", slug: "form-gestion" }
        ] },
        { id: "ateliers-pedagogiques", name: "talleres pedagógicos", slug: "ateliers-pedagogiques", subcategories: [
          { id: "atelier-stem", name: "STEM", slug: "atelier-stem" },
          { id: "atelier-creativite", name: "creatividad", slug: "atelier-creativite" },
          { id: "atelier-remediation", name: "refuerzo", slug: "atelier-remediation" }
        ] },
        { id: "formations-en-ligne", name: "formaciones en línea", slug: "formations-en-ligne", subcategories: [
          { id: "online-mooc", name: "MOOC", slug: "online-mooc" },
          { id: "online-certifications", name: "certificaciones", slug: "online-certifications" },
          { id: "online-tutoriels", name: "tutoriales", slug: "online-tutoriels" }
        ] }
      ]
    },
    {
      id: "livres-supports-educatifs",
      name: "Libros y Material Educativo",
      slug: "livres-supports-educatifs",
      attributes: {
        condition: ["neuf", "bon_etat", "etat_moyen"],
        language: ["arabe", "francais", "anglais"],
        genre: ["scolaire", "roman", "bd", "scientifique"]
      },
      subcategories: [
        { id: "livres-scolaires", name: "libros escolares", slug: "livres-scolaires", subcategories: [
          { id: "livres-primaire", name: "primaria", slug: "livres-primaire" },
          { id: "livres-college", name: "secundaria", slug: "livres-college" },
          { id: "livres-lycee", name: "bachillerato", slug: "livres-lycee" }
        ] },
        { id: "manuels-universitaires", name: "manuales universitarios", slug: "manuels-universitaires", subcategories: [
          { id: "manuels-sciences", name: "ciencias", slug: "manuels-sciences" },
          { id: "manuels-medecine", name: "medicina", slug: "manuels-medecine" },
          { id: "manuels-droit", name: "derecho", slug: "manuels-droit" }
        ] },
        { id: "romans", name: "novelas", slug: "romans", subcategories: [
          { id: "romans-contemporains", name: "contemporáneas", slug: "romans-contemporains" },
          { id: "romans-classiques", name: "clásicos", slug: "romans-classiques" },
          { id: "romans-jeunesse", name: "juveniles", slug: "romans-jeunesse" }
        ] },
        { id: "bd-mangas", name: "cómics y manga", slug: "bd-mangas", subcategories: [
          { id: "bd-franco-belge", name: "franco-belga", slug: "bd-franco-belge" },
          { id: "mangas", name: "manga", slug: "mangas" },
          { id: "comics", name: "cómics", slug: "comics" }
        ] },
        { id: "encyclopedies", name: "enciclopedias", slug: "encyclopedies", subcategories: [
          { id: "encyclopedies-generalistes", name: "generales", slug: "encyclopedies-generalistes" },
          { id: "encyclopedies-specialisees", name: "especializadas", slug: "encyclopedies-specialisees" },
          { id: "encyclopedies-enfants", name: "infantiles", slug: "encyclopedies-enfants" }
        ] },
        { id: "documents-pedagogiques", name: "documentos pedagógicos", slug: "documents-pedagogiques", subcategories: [
          { id: "docs-fiches", name: "fichas", slug: "docs-fiches" },
          { id: "docs-exercices", name: "ejercicios", slug: "docs-exercices" },
          { id: "docs-cours", name: "lecciones", slug: "docs-cours" }
        ] }
      ]
    },
    {
      id: "arts-musique",
      name: "Artes y Música",
      slug: "arts-musique",
      attributes: {
        category_type: ["instruments", "cours", "art", "materiel", "ateliers"]
      },
      subcategories: [
        { id: "instruments-musique", name: "instrumentos musicales", slug: "instruments-musique", 
          attributes: {
            instrument_type: ["guitare", "piano", "percussion", "violon", "instruments_vent", "accessoires", "autre"],
            condition: ["neuf", "bon_etat", "occasion"],
            brand: ["yamaha", "roland", "fender", "ibanez", "autre"]
          },
          subcategories: [
          { id: "guitare", name: "guitarra", slug: "guitare" },
          { id: "piano", name: "piano", slug: "piano" },
          { id: "percussion", name: "percusión", slug: "percussion" }
        ] },
        { id: "cours-chant", name: "clases de canto", slug: "cours-chant", 
          attributes: {
            skill_level: ["debutant", "intermediaire", "avance", "professionnel"],
            format: ["individuel", "groupe", "en_ligne", "presentiel"]
          },
          subcategories: [
          { id: "chant-debutant", name: "principiante", slug: "chant-debutant" },
          { id: "chant-avance", name: "avanzado", slug: "chant-avance" },
          { id: "chant-chorale", name: "coral", slug: "chant-chorale" }
        ] },
        { id: "peinture-dessin", name: "pintura y dibujo", slug: "peinture-dessin", subcategories: [
          { id: "aquarelle", name: "acuarela", slug: "aquarelle" },
          { id: "peinture-huile", name: "óleo", slug: "peinture-huile" },
          { id: "croquis", name: "bocetos", slug: "croquis" }
        ] },
        { id: "materiel-artistique", name: "material artístico", slug: "materiel-artistique", subcategories: [
          { id: "pinceaux", name: "pinceles", slug: "pinceaux" },
          { id: "toiles", name: "lienzos", slug: "toiles" },
          { id: "pigments", name: "pigmentos", slug: "pigments" }
        ] },
        { id: "ateliers-creatifs", name: "talleres creativos", slug: "ateliers-creatifs", subcategories: [
          { id: "poterie", name: "cerámica", slug: "poterie" },
          { id: "artisanat-creatif", name: "artesanía", slug: "artisanat-creatif" },
          { id: "mosaique", name: "mosaico", slug: "mosaique" }
        ] },
        { id: "oeuvres-art", name: "obras de arte", slug: "oeuvres-art", subcategories: [
          { id: "tableaux", name: "cuadros", slug: "tableaux" },
          { id: "sculptures", name: "esculturas", slug: "sculptures" },
          { id: "photographies", name: "fotos", slug: "photographies" }
        ] }
      ]
    },
    {
      id: "sports-loisirs",
      name: "Deportes y Ocio",
      slug: "sports-loisirs",
      attributes: {
        item_type: ["equipement", "vetement", "accessoire"],
        sport_type: ["football", "fitness", "randonnee", "combat"]
      },
      subcategories: [
        { id: "equipements-sportifs", name: "equipamiento deportivo", slug: "equipements-sportifs", 
          attributes: {
             sport_type: ["football", "fitness", "cyclisme", "combat", "randonnee", "autre"],
             condition: ["neuf", "bon_etat", "occasion"],
             brand: ["nike", "adidas", "decathlon", "puma", "autre"]
          },
          subcategories: [
          { id: "sport-football", name: "fútbol", slug: "sport-football" },
          { id: "sport-fitness", name: "fitness", slug: "sport-fitness" },
          { id: "sport-cyclisme", name: "ciclismo", slug: "sport-cyclisme" }
        ] },
        { id: "salles-de-sport", name: "gimnasios", slug: "salles-de-sport", 
          attributes: {
            subscription_type: ["mensuel", "trimestriel", "semestriel", "annuel", "seance"],
            access_type: ["hommes", "femmes", "mixte"]
          },
          subcategories: [
          { id: "salle-abonnements", name: "suscripciones", slug: "salle-abonnements" },
          { id: "salle-coaching", name: "coaching", slug: "salle-coaching" },
          { id: "salle-cours-collectifs", name: "clases colectivas", slug: "salle-cours-collectifs" }
        ] },
        { id: "cours-danse-arts-martiaux", name: "danza y artes marciales", slug: "cours-danse-arts-martiaux", subcategories: [
          { id: "danse-orientale", name: "danza oriental", slug: "danse-orientale" },
          { id: "hip-hop", name: "hip-hop", slug: "hip-hop" },
          { id: "karate", name: "karate", slug: "karate" }
        ] },
        { id: "activites-outdoor", name: "actividades al aire libre", slug: "activites-outdoor", subcategories: [
          { id: "randonnee", name: "senderismo", slug: "randonnee" },
          { id: "escalade", name: "escalada", slug: "escalade" },
          { id: "vtt", name: "BTT", slug: "vtt" }
        ] },
        { id: "camping-randonnee", name: "camping y senderismo", slug: "camping-randonnee", subcategories: [
          { id: "tentes", name: "tiendas", slug: "tentes" },
          { id: "sacs-de-couchage", name: "sacos de dormir", slug: "sacs-de-couchage" },
          { id: "accessoires-camping", name: "accesorios", slug: "accessoires-camping" }
        ] },
        { id: "jeux-de-societe", name: "juegos de mesa", slug: "jeux-de-societe", subcategories: [
          { id: "jeux-strategie", name: "estrategia", slug: "jeux-strategie" },
          { id: "jeux-famille", name: "familia", slug: "jeux-famille" },
          { id: "jeux-cartes", name: "cartas", slug: "jeux-cartes" }
        ] }
      ]
    },
    {
      id: "enfance-activites-familiales",
      name: "Infancia y Actividades Familiares",
      slug: "enfance-activites-familiales",
      attributes: {
        activity_type: ["jouets", "eveil", "parascolaire", "ateliers", "anniversaire", "colonies"]
      },
      subcategories: [
        { 
          id: "jouets-educatifs", 
          name: "juguetes educativos", 
          slug: "jouets-educatifs",
          attributes: {
            age_group: ["0-3", "3-6", "6-12", "12+"],
            material: ["bois", "plastique", "tissu", "mixte"]
          },
          subcategories: [
          { id: "jouets-montessori", name: "Montessori", slug: "jouets-montessori" },
          { id: "jouets-puzzles", name: "puzzles", slug: "jouets-puzzles" },
          { id: "jouets-sciences", name: "ciencia", slug: "jouets-sciences" }
        ] },
        { id: "jeux-eveil", name: "juegos de estimulación", slug: "jeux-eveil", subcategories: [
          { id: "eveil-0-12", name: "0-12 meses", slug: "eveil-0-12" },
          { id: "eveil-1-3", name: "1-3 años", slug: "eveil-1-3" },
          { id: "eveil-3-6", name: "3-6 años", slug: "eveil-3-6" }
        ] },
        { id: "activites-parascolaires", name: "actividades extraescolares", slug: "activites-parascolaires", subcategories: [
          { id: "parascolaire-clubs", name: "clubes escolares", slug: "parascolaire-clubs" },
          { id: "parascolaire-sport", name: "deporte", slug: "parascolaire-sport" },
          { id: "parascolaire-arts", name: "artes", slug: "parascolaire-arts" }
        ] },
        { id: "ateliers-enfants", name: "talleres para niños", slug: "ateliers-enfants", subcategories: [
          { id: "enfants-robotique", name: "robótica", slug: "enfants-robotique" },
          { id: "enfants-coding", name: "programación", slug: "enfants-coding" },
          { id: "enfants-cuisine", name: "cocina", slug: "enfants-cuisine" }
        ] },
        { id: "animations-anniversaire", name: "animaciones de cumpleaños", slug: "animations-anniversaire", subcategories: [
          { id: "anniv-clowns", name: "payasos", slug: "anniv-clowns" },
          { id: "anniv-magiciens", name: "magos", slug: "anniv-magiciens" },
          { id: "anniv-decorations", name: "decoraciones", slug: "anniv-decorations" }
        ] },
        { 
          id: "colonies-vacances", 
          name: "campamentos de verano", 
          slug: "colonies-vacances",
          attributes: {
            destination_type: ["mer", "montagne", "campagne", "etranger"],
            duration: ["1_semaine", "2_semaines", "1_mois"],
            season: ["ete", "hiver", "printemps"]
          },
          subcategories: [
          { id: "colonies-mer", name: "mar", slug: "colonies-mer" },
          { id: "colonies-montagne", name: "montaña", slug: "colonies-montagne" },
          { id: "colonies-culture", name: "cultura", slug: "colonies-culture" }
        ] }
      ]
    },
    {
      id: "clubs-associations",
      name: "Clubes y Asociaciones",
      slug: "clubs-associations",
      subcategories: [
        { id: "clubs-sportifs", name: "clubes deportivos", slug: "clubs-sportifs", subcategories: [
          { id: "club-football", name: "fútbol", slug: "club-football" },
          { id: "club-judo", name: "judo", slug: "club-judo" },
          { id: "club-natation", name: "natación", slug: "club-natation" }
        ] },
        { id: "associations-culturelles", name: "asociaciones culturales", slug: "associations-culturelles", subcategories: [
          { id: "asso-musique", name: "música", slug: "asso-musique" },
          { id: "asso-theatre", name: "teatro", slug: "asso-theatre" },
          { id: "asso-patrimoine", name: "patrimonio", slug: "asso-patrimoine" }
        ] },
        { id: "ateliers-communautaires", name: "talleres comunitarios", slug: "ateliers-communautaires", subcategories: [
          { id: "comm-solidarite", name: "solidaridad", slug: "comm-solidarite" },
          { id: "comm-environnement", name: "medio ambiente", slug: "comm-environnement" },
          { id: "comm-insertion", name: "inclusión", slug: "comm-insertion" }
        ] },
        { id: "clubs-lecture", name: "clubes de lectura", slug: "clubs-lecture", subcategories: [
          { id: "lecture-adultes", name: "adultos", slug: "lecture-adultes" },
          { id: "lecture-jeunesse", name: "juvenil", slug: "lecture-jeunesse" },
          { id: "lecture-thematiques", name: "temáticos", slug: "lecture-thematiques" }
        ] },
        { id: "evenements-educatifs", name: "eventos educativos", slug: "evenements-educatifs", subcategories: [
          { id: "edu-conferences", name: "conferencias", slug: "edu-conferences" },
          { id: "edu-salons", name: "ferias", slug: "edu-salons" },
          { id: "edu-forums", name: "foros", slug: "edu-forums" }
        ] },
        { id: "conferences", name: "conferencias", slug: "conferences", subcategories: [
          { id: "conf-academiques", name: "académicas", slug: "conf-academiques" },
          { id: "conf-professionnelles", name: "profesionales", slug: "conf-professionnelles" },
          { id: "conf-grand-public", name: "público general", slug: "conf-grand-public" }
        ] }
      ]
    }
  ]
};
