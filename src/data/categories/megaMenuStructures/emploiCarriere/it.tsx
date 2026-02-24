import { MenuCategory } from "@/data/categoryTypes";

export const emploiCarriereIt: MenuCategory = {
  id: "emploi-carriere",
  name: "Lavoro & Carriera",
  slug: "emploi-carriere",
  subcategories: [
    {
      id: "offres-emploi",
      name: "Offerte di Lavoro",
      slug: "offres-emploi",
      subcategories: [
        { id: "cdi", name: "Tempo indeterminato", slug: "cdi" },
        { id: "cdd", name: "Tempo determinato", slug: "cdd" },
        { id: "temps-plein", name: "Full-time", slug: "temps-plein" },
        { id: "temps-partiel", name: "Part-time", slug: "temps-partiel" },
        { id: "emplois-saisonniers", name: "Lavori stagionali", slug: "emplois-saisonniers" },
        { id: "interim", name: "Interim", slug: "interim" },
        { id: "stages", name: "Stage", slug: "stages" },
        { id: "apprentissage", name: "Apprendistato", slug: "apprentissage" },
        { id: "freelance", name: "Freelance", slug: "freelance" },
        { id: "teletravail", name: "Lavoro da remoto", slug: "teletravail" },
        { id: "missions-ponctuelles", name: "Missioni occasionali", slug: "missions-ponctuelles" }
      ]
    },
    {
      id: "secteurs-professionnels",
      name: "Settori Professionali",
      slug: "secteurs-professionnels",
      subcategories: [
        { id: "administratif", name: "Amministrativo", slug: "administratif" },
        { id: "commerce", name: "Commercio", slug: "commerce" },
        { id: "ventes", name: "Vendite", slug: "ventes" },
        { id: "marketing", name: "Marketing", slug: "marketing" },
        { id: "communication", name: "Comunicazione", slug: "communication" },
        { id: "informatique", name: "Informatica", slug: "informatique" },
        { id: "telecommunications", name: "Telecomunicazioni", slug: "telecommunications" },
        { id: "sante", name: "Sanità", slug: "sante" },
        { id: "paramedical", name: "Paramedico", slug: "paramedical" },
        { id: "industrie", name: "Industria", slug: "industrie" },
        { id: "construction", name: "Edilizia", slug: "construction" },
        { id: "transport", name: "Trasporti", slug: "transport" },
        { id: "logistique", name: "Logistica", slug: "logistique" },
        { id: "hotellerie", name: "Hotellerie", slug: "hotellerie" },
        { id: "restauration", name: "Ristorazione", slug: "restauration" },
        { id: "finance", name: "Finanza", slug: "finance" },
        { id: "comptabilite", name: "Contabilità", slug: "comptabilite" },
        { id: "banque", name: "Banca", slug: "banque" },
        { id: "assurance", name: "Assicurazioni", slug: "assurance" },
        { id: "education", name: "Educazione", slug: "education" },
        { id: "formation", name: "Formazione", slug: "formation" },
        { id: "agriculture", name: "Agricoltura", slug: "agriculture" },
        { id: "environnement", name: "Ambiente", slug: "environnement" },
        { id: "securite", name: "Sicurezza", slug: "securite" },
        { id: "services-publics", name: "Servizi pubblici", slug: "services-publics" },
        { id: "artisanat", name: "Artigianato", slug: "artisanat" }
      ]
    },
    {
      id: "metiers-qualifies-techniques",
      name: "Mestieri Qualificati & Tecnici",
      slug: "metiers-qualifies-techniques",
      subcategories: [
        { id: "electriciens", name: "Elettricisti", slug: "electriciens" },
        { id: "plombiers", name: "Idraulici", slug: "plombiers" },
        { id: "mecaniciens", name: "Meccanici", slug: "mecaniciens" },
        { id: "charpentiers", name: "Carpentieri", slug: "charpentiers" },
        { id: "soudeurs", name: "Saldatori", slug: "soudeurs" },
        { id: "techniciens-reseaux", name: "Tecnici di rete", slug: "techniciens-reseaux" },
        { id: "techniciens-maintenance", name: "Tecnici manutentori", slug: "techniciens-maintenance" },
        { id: "chauffagistes", name: "Tecnici del riscaldamento", slug: "chauffagistes" },
        { id: "menuisiers", name: "Falegnami", slug: "menuisiers" },
        { id: "artisans-specialises", name: "Artigiani specializzati", slug: "artisans-specialises" }
      ]
    },
    {
      id: "metiers-du-digital",
      name: "Professioni Digitali",
      slug: "metiers-du-digital",
      subcategories: [
        { id: "developpeurs-web", name: "Sviluppatori web", slug: "developpeurs-web" },
        { id: "designers-graphiques", name: "Graphic designer", slug: "designers-graphiques" },
        { id: "community-managers", name: "Community manager", slug: "community-managers" },
        { id: "specialistes-seo", name: "Specialisti SEO", slug: "specialistes-seo" },
        { id: "data-analysts", name: "Data analyst", slug: "data-analysts" },
        { id: "ingenieurs-ia", name: "Ingegneri IA", slug: "ingenieurs-ia" },
        { id: "administrateurs-systemes", name: "Amministratori di sistema", slug: "administrateurs-systemes" }
      ]
    },
    {
      id: "metiers-de-la-sante",
      name: "Professioni della Salute",
      slug: "metiers-de-la-sante",
      subcategories: [
        { id: "medecins", name: "Medici", slug: "medecins" },
        { id: "infirmiers", name: "Infermieri", slug: "infirmiers" },
        { id: "pharmaciens", name: "Farmacisti", slug: "pharmaciens" },
        { id: "techniciens-laboratoire", name: "Tecnici di laboratorio", slug: "techniciens-laboratoire" },
        { id: "sages-femmes", name: "Ostetriche", slug: "sages-femmes" },
        { id: "aides-soignants", name: "Operatori socio-sanitari", slug: "aides-soignants" },
        { id: "specialistes-reeducation", name: "Specialisti della riabilitazione", slug: "specialistes-reeducation" }
      ]
    },
    {
      id: "metiers-de-leducation",
      name: "Professioni dell’Istruzione",
      slug: "metiers-de-leducation",
      subcategories: [
        { id: "enseignants", name: "Insegnanti", slug: "enseignants" },
        { id: "educateurs", name: "Educatori", slug: "educateurs" },
        { id: "formateurs", name: "Formatori", slug: "formateurs" },
        { id: "moniteurs", name: "Istruttori", slug: "moniteurs" },
        { id: "assistants-pedagogiques", name: "Assistenti pedagogici", slug: "assistants-pedagogiques" }
      ]
    },
    {
      id: "services-aide-a-la-personne",
      name: "Servizi & Assistenza alla Persona",
      slug: "services-aide-a-la-personne",
      subcategories: [
        { id: "garde-denfants", name: "Baby-sitting", slug: "garde-denfants" },
        { id: "aide-menageres", name: "Colf", slug: "aide-menageres" },
        { id: "assistants-familiaux", name: "Assistenti familiari", slug: "assistants-familiaux" },
        { id: "soins-a-domicile", name: "Cure a domicilio", slug: "soins-a-domicile" },
        { id: "accompagnement-personnes-agees", name: "Supporto anziani", slug: "accompagnement-personnes-agees" }
      ]
    },
    {
      id: "hotellerie-restauration",
      name: "Hotellerie & Ristorazione",
      slug: "hotellerie-restauration",
      subcategories: [
        { id: "cuisiniers", name: "Cuochi", slug: "cuisiniers" },
        { id: "serveurs", name: "Camerieri", slug: "serveurs" },
        { id: "patissiers", name: "Pasticceri", slug: "patissiers" },
        { id: "boulangers", name: "Panettieri", slug: "boulangers" },
        { id: "receptionnistes", name: "Receptionist", slug: "receptionnistes" },
        { id: "gestion-hoteliere", name: "Gestione alberghiera", slug: "gestion-hoteliere" }
      ]
    },
    {
      id: "transport-logistique",
      name: "Trasporti & Logistica",
      slug: "transport-logistique",
      subcategories: [
        { id: "chauffeurs", name: "Autisti", slug: "chauffeurs" },
        { id: "livreurs", name: "Fattorini", slug: "livreurs" },
        { id: "caristes", name: "Carrellisti", slug: "caristes" },
        { id: "agents-logistiques", name: "Operatori logistici", slug: "agents-logistiques" },
        { id: "manutentionnaires", name: "Magazzinieri", slug: "manutentionnaires" },
        { id: "gestion-stock", name: "Gestione stock", slug: "gestion-stock" }
      ]
    },
    {
      id: "agriculture-elevage",
      name: "Agricoltura & Allevamento",
      slug: "agriculture-elevage",
      subcategories: [
        { id: "ouvriers-agricoles", name: "Operai agricoli", slug: "ouvriers-agricoles" },
        { id: "techniciens-agricoles", name: "Tecnici agricoli", slug: "techniciens-agricoles" },
        { id: "eleveurs", name: "Allevatori", slug: "eleveurs" },
        { id: "specialistes-irrigation", name: "Specialisti irrigazione", slug: "specialistes-irrigation" }
      ]
    },
    {
      id: "appels-offres-marches-publics",
      name: "Bandi & Appalti Pubblici",
      slug: "appels-offres-marches-publics",
      subcategories: [
        { id: "consultations", name: "Consultazioni", slug: "consultations" },
        { id: "marches-professionnels", name: "Mercati professionali", slug: "marches-professionnels" },
        { id: "services-entreprises", name: "Servizi per aziende", slug: "services-entreprises" },
        { id: "sous-traitance", name: "Subappalto", slug: "sous-traitance" }
      ]
    },
    {
      id: "formation-developpement-professionnel",
      name: "Formazione & Sviluppo Professionale",
      slug: "formation-developpement-professionnel",
      subcategories: [
        { id: "formations-qualifiantes", name: "Formazioni qualificanti", slug: "formations-qualifiantes" },
        { id: "certifications", name: "Certificazioni", slug: "certifications" },
        { id: "formations-professionnelles", name: "Formazioni professionali", slug: "formations-professionnelles" },
        { id: "ateliers-techniques", name: "Workshop tecnici", slug: "ateliers-techniques" },
        { id: "coaching-carriere", name: "Coaching di carriera", slug: "coaching-carriere" }
      ]
    },
    {
      id: "entrepreneuriat-business",
      name: "Imprenditoria & Business",
      slug: "entrepreneuriat-business",
      subcategories: [
        { id: "creation-entreprise", name: "Creazione d’impresa", slug: "creation-entreprise" },
        { id: "conseils-entrepreneurs", name: "Consigli per imprenditori", slug: "conseils-entrepreneurs" },
        { id: "services-comptables", name: "Servizi contabili", slug: "services-comptables" },
        { id: "assistance-juridique", name: "Assistenza legale", slug: "assistance-juridique" },
        { id: "business-plan", name: "Business plan", slug: "business-plan" }
      ]
    },
    {
      id: "cv-services-recrutement",
      name: "CV & Servizi di Reclutamento",
      slug: "cv-services-recrutement",
      subcategories: [
        { id: "redaction-cv", name: "Scrittura CV", slug: "redaction-cv" },
        { id: "lettres-motivation", name: "Lettere di motivazione", slug: "lettres-motivation" },
        { id: "coaching-entretien", name: "Coaching colloqui", slug: "coaching-entretien" },
        { id: "traduction-professionnelle", name: "Traduzione professionale", slug: "traduction-professionnelle" },
        { id: "optimisation-profil-linkedin", name: "Ottimizzazione profilo LinkedIn", slug: "optimisation-profil-linkedin" }
      ]
    },
    {
      id: "stages-opportunites-jeunes",
      name: "Tirocini & Opportunità Giovani",
      slug: "stages-opportunites-jeunes",
      subcategories: [
        { id: "stages-universitaires", name: "Tirocini universitari", slug: "stages-universitaires" },
        { id: "stages-ete", name: "Tirocini estivi", slug: "stages-ete" },
        { id: "opportunites-etudiants", name: "Opportunità studenti", slug: "opportunites-etudiants" },
        { id: "programmes-jeunes-diplomes", name: "Programmi giovani laureati", slug: "programmes-jeunes-diplomes" }
      ]
    },
    {
      id: "job-temps-partiel-etudiant",
      name: "Lavori Part-time & Studenteschi",
      slug: "job-temps-partiel-etudiant",
      subcategories: [
        { id: "petits-boulots", name: "Lavoretti", slug: "petits-boulots" },
        { id: "aide-scolaire", name: "Aiuto scolastico", slug: "aide-scolaire" },
        { id: "jobs-week-end", name: "Lavori nel weekend", slug: "jobs-week-end" },
        { id: "travail-soiree", name: "Lavoro serale", slug: "travail-soiree" },
        { id: "missions-temporaires", name: "Missioni temporanee", slug: "missions-temporaires" }
      ]
    }
  ]
};