import { MenuCategory } from "@/data/categoryTypes";

export const emploiCarriereDe: MenuCategory = {
  id: "emploi-carriere",
  name: "Arbeit & Karriere",
  slug: "emploi-carriere",
  subcategories: [
    {
      id: "offres-emploi",
      name: "Stellenangebote",
      slug: "offres-emploi",
      subcategories: [
        { id: "cdi", name: "Unbefristet", slug: "cdi" },
        { id: "cdd", name: "Befristet", slug: "cdd" },
        { id: "temps-plein", name: "Vollzeit", slug: "temps-plein" },
        { id: "temps-partiel", name: "Teilzeit", slug: "temps-partiel" },
        { id: "emplois-saisonniers", name: "Saisonarbeit", slug: "emplois-saisonniers" },
        { id: "interim", name: "Zeitarbeit", slug: "interim" },
        { id: "stages", name: "Praktika", slug: "stages" },
        { id: "apprentissage", name: "Ausbildung", slug: "apprentissage" },
        { id: "freelance", name: "Freiberuflich", slug: "freelance" },
        { id: "teletravail", name: "Fernarbeit", slug: "teletravail" },
        { id: "missions-ponctuelles", name: "Einmalige Einsätze", slug: "missions-ponctuelles" }
      ]
    },
    {
      id: "secteurs-professionnels",
      name: "Berufliche Bereiche",
      slug: "secteurs-professionnels",
      subcategories: [
        { id: "administratif", name: "Verwaltung", slug: "administratif" },
        { id: "commerce", name: "Handel", slug: "commerce" },
        { id: "ventes", name: "Vertrieb", slug: "ventes" },
        { id: "marketing", name: "Marketing", slug: "marketing" },
        { id: "communication", name: "Kommunikation", slug: "communication" },
        { id: "informatique", name: "IT", slug: "informatique" },
        { id: "telecommunications", name: "Telekommunikation", slug: "telecommunications" },
        { id: "sante", name: "Gesundheit", slug: "sante" },
        { id: "paramedical", name: "Paramedizin", slug: "paramedical" },
        { id: "industrie", name: "Industrie", slug: "industrie" },
        { id: "construction", name: "Bau", slug: "construction" },
        { id: "transport", name: "Transport", slug: "transport" },
        { id: "logistique", name: "Logistik", slug: "logistique" },
        { id: "hotellerie", name: "Hotellerie", slug: "hotellerie" },
        { id: "restauration", name: "Gastronomie", slug: "restauration" },
        { id: "finance", name: "Finanzen", slug: "finance" },
        { id: "comptabilite", name: "Buchhaltung", slug: "comptabilite" },
        { id: "banque", name: "Bankwesen", slug: "banque" },
        { id: "assurance", name: "Versicherung", slug: "assurance" },
        { id: "education", name: "Bildung", slug: "education" },
        { id: "formation", name: "Fortbildung", slug: "formation" },
        { id: "agriculture", name: "Landwirtschaft", slug: "agriculture" },
        { id: "environnement", name: "Umwelt", slug: "environnement" },
        { id: "securite", name: "Sicherheit", slug: "securite" },
        { id: "services-publics", name: "Öffentliche Dienste", slug: "services-publics" },
        { id: "artisanat", name: "Handwerk", slug: "artisanat" }
      ]
    },
    {
      id: "metiers-qualifies-techniques",
      name: "Qualifizierte & Technische Berufe",
      slug: "metiers-qualifies-techniques",
      subcategories: [
        { id: "electriciens", name: "Elektriker", slug: "electriciens" },
        { id: "plombiers", name: "Installateure", slug: "plombiers" },
        { id: "mecaniciens", name: "Mechaniker", slug: "mecaniciens" },
        { id: "charpentiers", name: "Zimmerer", slug: "charpentiers" },
        { id: "soudeurs", name: "Schweißer", slug: "soudeurs" },
        { id: "techniciens-reseaux", name: "Netzwerktechniker", slug: "techniciens-reseaux" },
        { id: "techniciens-maintenance", name: "Wartungstechniker", slug: "techniciens-maintenance" },
        { id: "chauffagistes", name: "Heizungsbauer", slug: "chauffagistes" },
        { id: "menuisiers", name: "Tischler", slug: "menuisiers" },
        { id: "artisans-specialises", name: "Spezialisierte Handwerker", slug: "artisans-specialises" }
      ]
    },
    {
      id: "metiers-du-digital",
      name: "Digitale Berufe",
      slug: "metiers-du-digital",
      subcategories: [
        { id: "developpeurs-web", name: "Webentwickler", slug: "developpeurs-web" },
        { id: "designers-graphiques", name: "Grafikdesigner", slug: "designers-graphiques" },
        { id: "community-managers", name: "Community Manager", slug: "community-managers" },
        { id: "specialistes-seo", name: "SEO-Spezialisten", slug: "specialistes-seo" },
        { id: "data-analysts", name: "Datenanalysten", slug: "data-analysts" },
        { id: "ingenieurs-ia", name: "KI-Ingenieure", slug: "ingenieurs-ia" },
        { id: "administrateurs-systemes", name: "Systemadministratoren", slug: "administrateurs-systemes" }
      ]
    },
    {
      id: "metiers-de-la-sante",
      name: "Gesundheitsberufe",
      slug: "metiers-de-la-sante",
      subcategories: [
        { id: "medecins", name: "Ärzte", slug: "medecins" },
        { id: "infirmiers", name: "Pflegekräfte", slug: "infirmiers" },
        { id: "pharmaciens", name: "Apotheker", slug: "pharmaciens" },
        { id: "techniciens-laboratoire", name: "Labortechniker", slug: "techniciens-laboratoire" },
        { id: "sages-femmes", name: "Hebammen", slug: "sages-femmes" },
        { id: "aides-soignants", name: "Pflegehelfer", slug: "aides-soignants" },
        { id: "specialistes-reeducation", name: "Reha-Spezialisten", slug: "specialistes-reeducation" }
      ]
    },
    {
      id: "metiers-de-leducation",
      name: "Bildungsberufe",
      slug: "metiers-de-leducation",
      subcategories: [
        { id: "enseignants", name: "Lehrer", slug: "enseignants" },
        { id: "educateurs", name: "Pädagogen", slug: "educateurs" },
        { id: "formateurs", name: "Trainer", slug: "formateurs" },
        { id: "moniteurs", name: "Instruktoren", slug: "moniteurs" },
        { id: "assistants-pedagogiques", name: "Lehrassistenten", slug: "assistants-pedagogiques" }
      ]
    },
    {
      id: "services-aide-a-la-personne",
      name: "Dienstleistungen & Personenhilfe",
      slug: "services-aide-a-la-personne",
      subcategories: [
        { id: "garde-denfants", name: "Kinderbetreuung", slug: "garde-denfants" },
        { id: "aide-menageres", name: "Haushaltshilfen", slug: "aide-menageres" },
        { id: "assistants-familiaux", name: "Familienassistenten", slug: "assistants-familiaux" },
        { id: "soins-a-domicile", name: "Pflege zu Hause", slug: "soins-a-domicile" },
        { id: "accompagnement-personnes-agees", name: "Seniorenbegleitung", slug: "accompagnement-personnes-agees" }
      ]
    },
    {
      id: "hotellerie-restauration",
      name: "Hotellerie & Gastronomie",
      slug: "hotellerie-restauration",
      subcategories: [
        { id: "cuisiniers", name: "Köche", slug: "cuisiniers" },
        { id: "serveurs", name: "Servicekräfte", slug: "serveurs" },
        { id: "patissiers", name: "Konditoren", slug: "patissiers" },
        { id: "boulangers", name: "Bäcker", slug: "boulangers" },
        { id: "receptionnistes", name: "Rezeptionisten", slug: "receptionnistes" },
        { id: "gestion-hoteliere", name: "Hotelmanagement", slug: "gestion-hoteliere" }
      ]
    },
    {
      id: "transport-logistique",
      name: "Transport & Logistik",
      slug: "transport-logistique",
      subcategories: [
        { id: "chauffeurs", name: "Fahrer", slug: "chauffeurs" },
        { id: "livreurs", name: "Zusteller", slug: "livreurs" },
        { id: "caristes", name: "Gabelstaplerfahrer", slug: "caristes" },
        { id: "agents-logistiques", name: "Logistikmitarbeiter", slug: "agents-logistiques" },
        { id: "manutentionnaires", name: "Lagerarbeiter", slug: "manutentionnaires" },
        { id: "gestion-stock", name: "Bestandsmanagement", slug: "gestion-stock" }
      ]
    },
    {
      id: "agriculture-elevage",
      name: "Landwirtschaft & Viehzucht",
      slug: "agriculture-elevage",
      subcategories: [
        { id: "ouvriers-agricoles", name: "Landarbeiter", slug: "ouvriers-agricoles" },
        { id: "techniciens-agricoles", name: "Landwirtschaftstechniker", slug: "techniciens-agricoles" },
        { id: "eleveurs", name: "Viehzüchter", slug: "eleveurs" },
        { id: "specialistes-irrigation", name: "Bewässerungsspezialisten", slug: "specialistes-irrigation" }
      ]
    },
    {
      id: "appels-offres-marches-publics",
      name: "Ausschreibungen & Öffentliche Aufträge",
      slug: "appels-offres-marches-publics",
      subcategories: [
        { id: "consultations", name: "Beratungen", slug: "consultations" },
        { id: "marches-professionnels", name: "Professionelle Märkte", slug: "marches-professionnels" },
        { id: "services-entreprises", name: "Unternehmensdienstleistungen", slug: "services-entreprises" },
        { id: "sous-traitance", name: "Subunternehmer", slug: "sous-traitance" }
      ]
    },
    {
      id: "formation-developpement-professionnel",
      name: "Fortbildung & Berufliche Entwicklung",
      slug: "formation-developpement-professionnel",
      subcategories: [
        { id: "formations-qualifiantes", name: "Qualifizierende Kurse", slug: "formations-qualifiantes" },
        { id: "certifications", name: "Zertifizierungen", slug: "certifications" },
        { id: "formations-professionnelles", name: "Berufliche Schulungen", slug: "formations-professionnelles" },
        { id: "ateliers-techniques", name: "Technische Workshops", slug: "ateliers-techniques" },
        { id: "coaching-carriere", name: "Karrierecoaching", slug: "coaching-carriere" }
      ]
    },
    {
      id: "entrepreneuriat-business",
      name: "Unternehmertum & Business",
      slug: "entrepreneuriat-business",
      subcategories: [
        { id: "creation-entreprise", name: "Unternehmensgründung", slug: "creation-entreprise" },
        { id: "conseils-entrepreneurs", name: "Unternehmerberatung", slug: "conseils-entrepreneurs" },
        { id: "services-comptables", name: "Buchhaltungsdienste", slug: "services-comptables" },
        { id: "assistance-juridique", name: "Rechtliche Unterstützung", slug: "assistance-juridique" },
        { id: "business-plan", name: "Businessplan", slug: "business-plan" }
      ]
    },
    {
      id: "cv-services-recrutement",
      name: "Lebenslauf & Recruiting-Dienste",
      slug: "cv-services-recrutement",
      subcategories: [
        { id: "redaction-cv", name: "Lebenslauf-Erstellung", slug: "redaction-cv" },
        { id: "lettres-motivation", name: "Motivationsschreiben", slug: "lettres-motivation" },
        { id: "coaching-entretien", name: "Interview-Coaching", slug: "coaching-entretien" },
        { id: "traduction-professionnelle", name: "Professionelle Übersetzung", slug: "traduction-professionnelle" },
        { id: "optimisation-profil-linkedin", name: "LinkedIn-Profiloptimierung", slug: "optimisation-profil-linkedin" }
      ]
    },
    {
      id: "stages-opportunites-jeunes",
      name: "Praktika & Chancen für Junge",
      slug: "stages-opportunites-jeunes",
      subcategories: [
        { id: "stages-universitaires", name: "Universitätspraktika", slug: "stages-universitaires" },
        { id: "stages-ete", name: "Sommerpraktika", slug: "stages-ete" },
        { id: "opportunites-etudiants", name: "Studentische Möglichkeiten", slug: "opportunites-etudiants" },
        { id: "programmes-jeunes-diplomes", name: "Programme für Absolventen", slug: "programmes-jeunes-diplomes" }
      ]
    },
    {
      id: "job-temps-partiel-etudiant",
      name: "Teilzeit- & Studentenjobs",
      slug: "job-temps-partiel-etudiant",
      subcategories: [
        { id: "petits-boulots", name: "Nebenjobs", slug: "petits-boulots" },
        { id: "aide-scolaire", name: "Nachhilfe", slug: "aide-scolaire" },
        { id: "jobs-week-end", name: "Wochenendjobs", slug: "jobs-week-end" },
        { id: "travail-soiree", name: "Abendarbeit", slug: "travail-soiree" },
        { id: "missions-temporaires", name: "Zeitlich befristete Einsätze", slug: "missions-temporaires" }
      ]
    }
  ]
};