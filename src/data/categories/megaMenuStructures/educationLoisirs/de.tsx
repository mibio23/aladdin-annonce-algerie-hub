import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { BookOpen } from "lucide-react";

export const educationLoisirsDe: MenuCategory = {
  id: "education-loisirs",
  name: "Sport, Bildung & Freizeit",
  slug: "education-loisirs",
  icon: <BookOpen className="w-4 h-4" />,
  subcategories: [
    {
      id: "cours-formations",
      name: "Kurse & Ausbildungen",
      slug: "cours-formations",
      attributes: {
        mode: ["en_ligne", "presentiel", "domicile"],
        level: ["primaire", "cem", "lycee", "universitaire", "adulte"],
        type: ["soutien_scolaire", "langues", "musique", "informatique"]
      },
      subcategories: [
        { id: "cours-particuliers", name: "Privatunterricht", slug: "cours-particuliers", 
          attributes: {
            subject: ["maths", "physique", "sciences", "arabe", "francais", "anglais", "philosophie", "histoire_geo", "economie", "gestion", "autre"],
            level: ["primaire", "cem", "lycee", "universitaire"],
            mode: ["presentiel", "en_ligne", "domicile"]
          },
          subcategories: [
          { id: "cours-maths", name: "Mathematik", slug: "cours-maths" },
          { id: "cours-sciences", name: "Naturwissenschaften", slug: "cours-sciences" },
          { id: "cours-langues", name: "Sprachen", slug: "cours-langues" }
        ] },
        { id: "soutien-scolaire", name: "Nachhilfe", slug: "soutien-scolaire", 
          attributes: {
            subject: ["maths", "physique", "sciences", "arabe", "francais", "anglais", "autre"],
            level: ["primaire", "cem", "lycee"],
            mode: ["presentiel", "en_ligne"]
          },
          subcategories: [
          { id: "soutien-primaire", name: "Grundschule", slug: "soutien-primaire" },
          { id: "soutien-college", name: "Sekundarstufe I", slug: "soutien-college" },
          { id: "soutien-lycee", name: "Sekundarstufe II", slug: "soutien-lycee" }
        ] },
        { id: "preparation-examens", name: "Prüfungsvorbereitung (BEM/BAC)", slug: "preparation-examens", subcategories: [
          { id: "prep-methodologie", name: "Methodik", slug: "prep-methodologie" },
          { id: "prep-sujets-corriges", name: "Übungsaufgaben", slug: "prep-sujets-corriges" },
          { id: "prep-coaching", name: "Coaching", slug: "prep-coaching" }
        ] },
        { id: "formations-professionnelles", name: "Berufliche Weiterbildungen", slug: "formations-professionnelles", subcategories: [
          { id: "form-informatique", name: "Informatik", slug: "form-informatique" },
          { id: "form-commerce", name: "Handel", slug: "form-commerce" },
          { id: "form-gestion", name: "Management", slug: "form-gestion" }
        ] },
        { id: "ateliers-pedagogiques", name: "Pädagogische Workshops", slug: "ateliers-pedagogiques", subcategories: [
          { id: "atelier-stem", name: "MINT", slug: "atelier-stem" },
          { id: "atelier-creativite", name: "Kreativität", slug: "atelier-creativite" },
          { id: "atelier-remediation", name: "Förderung", slug: "atelier-remediation" }
        ] },
        { id: "formations-en-ligne", name: "Online-Schulungen", slug: "formations-en-ligne", subcategories: [
          { id: "online-mooc", name: "MOOCs", slug: "online-mooc" },
          { id: "online-certifications", name: "Zertifizierungen", slug: "online-certifications" },
          { id: "online-tutoriels", name: "Tutorials", slug: "online-tutoriels" }
        ] }
      ]
    },
    {
      id: "livres-supports-educatifs",
      name: "Bücher & Lehrmaterialien",
      slug: "livres-supports-educatifs",
      attributes: {
        condition: ["neuf", "bon_etat", "etat_moyen"],
        language: ["arabe", "francais", "anglais"],
        genre: ["scolaire", "roman", "bd", "scientifique"]
      },
      subcategories: [
        { id: "livres-scolaires", name: "Schulbücher", slug: "livres-scolaires", subcategories: [
          { id: "livres-primaire", name: "Grundschule", slug: "livres-primaire" },
          { id: "livres-college", name: "Sekundarstufe I", slug: "livres-college" },
          { id: "livres-lycee", name: "Sekundarstufe II", slug: "livres-lycee" }
        ] },
        { id: "manuels-universitaires", name: "Universitätslehrbücher", slug: "manuels-universitaires", subcategories: [
          { id: "manuels-sciences", name: "Wissenschaften", slug: "manuels-sciences" },
          { id: "manuels-medecine", name: "Medizin", slug: "manuels-medecine" },
          { id: "manuels-droit", name: "Recht", slug: "manuels-droit" }
        ] },
        { id: "romans", name: "Romane", slug: "romans", subcategories: [
          { id: "romans-contemporains", name: "Zeitgenössisch", slug: "romans-contemporains" },
          { id: "romans-classiques", name: "Klassiker", slug: "romans-classiques" },
          { id: "romans-jeunesse", name: "Jugend", slug: "romans-jeunesse" }
        ] },
        { id: "bd-mangas", name: "Comics & Manga", slug: "bd-mangas", subcategories: [
          { id: "bd-franco-belge", name: "Franco-belgisch", slug: "bd-franco-belge" },
          { id: "mangas", name: "Manga", slug: "mangas" },
          { id: "comics", name: "Comics", slug: "comics" }
        ] },
        { id: "encyclopedies", name: "Enzyklopädien", slug: "encyclopedies", subcategories: [
          { id: "encyclopedies-generalistes", name: "Allgemein", slug: "encyclopedies-generalistes" },
          { id: "encyclopedies-specialisees", name: "Spezialisiert", slug: "encyclopedies-specialisees" },
          { id: "encyclopedies-enfants", name: "Kinder", slug: "encyclopedies-enfants" }
        ] },
        { id: "documents-pedagogiques", name: "Lehrunterlagen", slug: "documents-pedagogiques", subcategories: [
          { id: "docs-fiches", name: "Arbeitsblätter", slug: "docs-fiches" },
          { id: "docs-exercices", name: "Übungen", slug: "docs-exercices" },
          { id: "docs-cours", name: "Unterricht", slug: "docs-cours" }
        ] }
      ]
    },
    {
      id: "arts-musique",
      name: "Kunst & Musik",
      slug: "arts-musique",
      attributes: {
        category_type: ["instruments", "cours", "art", "materiel", "ateliers"]
      },
      subcategories: [
        { id: "instruments-musique", name: "Musikinstrumente", slug: "instruments-musique", 
          attributes: {
            instrument_type: ["guitare", "piano", "percussion", "violon", "instruments_vent", "accessoires", "autre"],
            condition: ["neuf", "bon_etat", "occasion"],
            brand: ["yamaha", "roland", "fender", "ibanez", "autre"]
          },
          subcategories: [
          { id: "guitare", name: "Gitarre", slug: "guitare" },
          { id: "piano", name: "Klavier", slug: "piano" },
          { id: "percussion", name: "Perkussion", slug: "percussion" }
        ] },
        { id: "cours-chant", name: "Gesangsunterricht", slug: "cours-chant", 
          attributes: {
            skill_level: ["debutant", "intermediaire", "avance", "professionnel"],
            format: ["individuel", "groupe", "en_ligne", "presentiel"]
          },
          subcategories: [
          { id: "chant-debutant", name: "Anfänger", slug: "chant-debutant" },
          { id: "chant-avance", name: "Fortgeschritten", slug: "chant-avance" },
          { id: "chant-chorale", name: "Chor", slug: "chant-chorale" }
        ] },
        { id: "peinture-dessin", name: "Malerei & Zeichnen", slug: "peinture-dessin", subcategories: [
          { id: "aquarelle", name: "Aquarell", slug: "aquarelle" },
          { id: "peinture-huile", name: "Öl", slug: "peinture-huile" },
          { id: "croquis", name: "Skizzieren", slug: "croquis" }
        ] },
        { id: "materiel-artistique", name: "Künstlerbedarf", slug: "materiel-artistique", subcategories: [
          { id: "pinceaux", name: "Pinsel", slug: "pinceaux" },
          { id: "toiles", name: "Leinwände", slug: "toiles" },
          { id: "pigments", name: "Pigmente", slug: "pigments" }
        ] },
        { id: "ateliers-creatifs", name: "Kreativ-Workshops", slug: "ateliers-creatifs", subcategories: [
          { id: "poterie", name: "Töpferei", slug: "poterie" },
          { id: "artisanat-creatif", name: "Handwerk", slug: "artisanat-creatif" },
          { id: "mosaique", name: "Mosaik", slug: "mosaique" }
        ] },
        { id: "oeuvres-art", name: "Kunstwerke", slug: "oeuvres-art", subcategories: [
          { id: "tableaux", name: "Gemälde", slug: "tableaux" },
          { id: "sculptures", name: "Skulpturen", slug: "sculptures" },
          { id: "photographies", name: "Fotos", slug: "photographies" }
        ] }
      ]
    },
    {
      id: "sports-loisirs",
      name: "Sport & Freizeit",
      slug: "sports-loisirs",
      attributes: {
        item_type: ["equipement", "vetement", "accessoire"],
        sport_type: ["football", "fitness", "randonnee", "combat"]
      },
      subcategories: [
        { id: "equipements-sportifs", name: "Sportausrüstung", slug: "equipements-sportifs", 
          attributes: {
             sport_type: ["football", "fitness", "cyclisme", "combat", "randonnee", "autre"],
             condition: ["neuf", "bon_etat", "occasion"],
             brand: ["nike", "adidas", "decathlon", "puma", "autre"]
          },
          subcategories: [
          { id: "sport-football", name: "Fußball", slug: "sport-football" },
          { id: "sport-fitness", name: "Fitness", slug: "sport-fitness" },
          { id: "sport-cyclisme", name: "Radsport", slug: "sport-cyclisme" }
        ] },
        { id: "salles-de-sport", name: "Fitnessstudios", slug: "salles-de-sport", 
          attributes: {
            subscription_type: ["mensuel", "trimestriel", "semestriel", "annuel", "seance"],
            access_type: ["hommes", "femmes", "mixte"]
          },
          subcategories: [
          { id: "salle-abonnements", name: "Mitgliedschaften", slug: "salle-abonnements" },
          { id: "salle-coaching", name: "Coaching", slug: "salle-coaching" },
          { id: "salle-cours-collectifs", name: "Gruppenkurse", slug: "salle-cours-collectifs" }
        ] },
        { id: "cours-danse-arts-martiaux", name: "Tanz & Kampfkünste", slug: "cours-danse-arts-martiaux", subcategories: [
          { id: "danse-orientale", name: "Orientalischer Tanz", slug: "danse-orientale" },
          { id: "hip-hop", name: "Hip-Hop", slug: "hip-hop" },
          { id: "karate", name: "Karate", slug: "karate" }
        ] },
        { id: "activites-outdoor", name: "Outdoor-Aktivitäten", slug: "activites-outdoor", subcategories: [
          { id: "randonnee", name: "Wandern", slug: "randonnee" },
          { id: "escalade", name: "Klettern", slug: "escalade" },
          { id: "vtt", name: "Mountainbike", slug: "vtt" }
        ] },
        { id: "camping-randonnee", name: "Camping & Wandern", slug: "camping-randonnee", subcategories: [
          { id: "tentes", name: "Zelte", slug: "tentes" },
          { id: "sacs-de-couchage", name: "Schlafsäcke", slug: "sacs-de-couchage" },
          { id: "accessoires-camping", name: "Zubehör", slug: "accessoires-camping" }
        ] },
        { id: "jeux-de-societe", name: "Brettspiele", slug: "jeux-de-societe", subcategories: [
          { id: "jeux-strategie", name: "Strategie", slug: "jeux-strategie" },
          { id: "jeux-famille", name: "Familie", slug: "jeux-famille" },
          { id: "jeux-cartes", name: "Karten", slug: "jeux-cartes" }
        ] }
      ]
    },
    {
      id: "enfance-activites-familiales",
      name: "Kindheit & Familienaktivitäten",
      slug: "enfance-activites-familiales",
      attributes: {
        activity_type: ["jouets", "eveil", "parascolaire", "ateliers", "anniversaire", "colonies"]
      },
      subcategories: [
        { 
          id: "jouets-educatifs", 
          name: "Lernspielzeug", 
          slug: "jouets-educatifs",
          attributes: {
            age_group: ["0-3", "3-6", "6-12", "12+"],
            material: ["bois", "plastique", "tissu", "mixte"]
          },
          subcategories: [
          { id: "jouets-montessori", name: "Montessori", slug: "jouets-montessori" },
          { id: "jouets-puzzles", name: "Puzzle", slug: "jouets-puzzles" },
          { id: "jouets-sciences", name: "Wissenschaft", slug: "jouets-sciences" }
        ] },
        { id: "jeux-eveil", name: "Frühförderungsspiele", slug: "jeux-eveil", subcategories: [
          { id: "eveil-0-12", name: "0–12 Monate", slug: "eveil-0-12" },
          { id: "eveil-1-3", name: "1–3 Jahre", slug: "eveil-1-3" },
          { id: "eveil-3-6", name: "3–6 Jahre", slug: "eveil-3-6" }
        ] },
        { id: "activites-parascolaires", name: "Außerschulische Aktivitäten", slug: "activites-parascolaires", subcategories: [
          { id: "parascolaire-clubs", name: "Schulklubs", slug: "parascolaire-clubs" },
          { id: "parascolaire-sport", name: "Sport", slug: "parascolaire-sport" },
          { id: "parascolaire-arts", name: "Kunst", slug: "parascolaire-arts" }
        ] },
        { id: "ateliers-enfants", name: "Kinderworkshops", slug: "ateliers-enfants", subcategories: [
          { id: "enfants-robotique", name: "Robotik", slug: "enfants-robotique" },
          { id: "enfants-coding", name: "Coding", slug: "enfants-coding" },
          { id: "enfants-cuisine", name: "Kochen", slug: "enfants-cuisine" }
        ] },
        { id: "animations-anniversaire", name: "Geburtstagsanimationen", slug: "animations-anniversaire", subcategories: [
          { id: "anniv-clowns", name: "Clowns", slug: "anniv-clowns" },
          { id: "anniv-magiciens", name: "Zauberer", slug: "anniv-magiciens" },
          { id: "anniv-decorations", name: "Dekorationen", slug: "anniv-decorations" }
        ] },
        { 
          id: "colonies-vacances", 
          name: "Ferienlager", 
          slug: "colonies-vacances",
          attributes: {
            destination_type: ["mer", "montagne", "campagne", "etranger"],
            duration: ["1_semaine", "2_semaines", "1_mois"],
            season: ["ete", "hiver", "printemps"]
          },
          subcategories: [
          { id: "colonies-mer", name: "Meer", slug: "colonies-mer" },
          { id: "colonies-montagne", name: "Berge", slug: "colonies-montagne" },
          { id: "colonies-culture", name: "Kultur", slug: "colonies-culture" }
        ] }
      ]
    },
    {
      id: "clubs-associations",
      name: "Klubs & Vereine",
      slug: "clubs-associations",
      subcategories: [
        { id: "clubs-sportifs", name: "Sportklubs", slug: "clubs-sportifs", subcategories: [
          { id: "club-football", name: "Fußball", slug: "club-football" },
          { id: "club-judo", name: "Judo", slug: "club-judo" },
          { id: "club-natation", name: "Schwimmen", slug: "club-natation" }
        ] },
        { id: "associations-culturelles", name: "Kulturelle Vereine", slug: "associations-culturelles", subcategories: [
          { id: "asso-musique", name: "Musik", slug: "asso-musique" },
          { id: "asso-theatre", name: "Theater", slug: "asso-theatre" },
          { id: "asso-patrimoine", name: "Kulturerbe", slug: "asso-patrimoine" }
        ] },
        { id: "ateliers-communautaires", name: "Gemeinschaftsworkshops", slug: "ateliers-communautaires", subcategories: [
          { id: "comm-solidarite", name: "Solidarität", slug: "comm-solidarite" },
          { id: "comm-environnement", name: "Umwelt", slug: "comm-environnement" },
          { id: "comm-insertion", name: "Integration", slug: "comm-insertion" }
        ] },
        { id: "clubs-lecture", name: "Lesekreise", slug: "clubs-lecture", subcategories: [
          { id: "lecture-adultes", name: "Erwachsene", slug: "lecture-adultes" },
          { id: "lecture-jeunesse", name: "Jugend", slug: "lecture-jeunesse" },
          { id: "lecture-thematiques", name: "Themenbezogen", slug: "lecture-thematiques" }
        ] },
        { id: "evenements-educatifs", name: "Bildungsveranstaltungen", slug: "evenements-educatifs", subcategories: [
          { id: "edu-conferences", name: "Konferenzen", slug: "edu-conferences" },
          { id: "edu-salons", name: "Messen", slug: "edu-salons" },
          { id: "edu-forums", name: "Foren", slug: "edu-forums" }
        ] },
        { id: "conferences", name: "Konferenzen", slug: "conferences", subcategories: [
          { id: "conf-academiques", name: "Akademisch", slug: "conf-academiques" },
          { id: "conf-professionnelles", name: "Professionell", slug: "conf-professionnelles" },
          { id: "conf-grand-public", name: "Öffentlich", slug: "conf-grand-public" }
        ] }
      ]
    }
  ]
};
