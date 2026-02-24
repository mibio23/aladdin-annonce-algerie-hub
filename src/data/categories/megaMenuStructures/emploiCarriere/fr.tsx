import { MenuCategory } from "@/data/categoryTypes";

export const emploiCarriereFr: MenuCategory = {
  id: "emploi-carriere",
  name: "Emploi & Carrière",
  slug: "emploi-carriere",
  subcategories: [
    {
      id: "offres-emploi",
      name: "Offres d’Emploi",
      slug: "offres-emploi",
      subcategories: [
        { id: "cdi", name: "CDI", slug: "cdi" },
        { id: "cdd", name: "CDD", slug: "cdd" },
        { id: "temps-plein", name: "temps plein", slug: "temps-plein" },
        { id: "temps-partiel", name: "temps partiel", slug: "temps-partiel" },
        { id: "emplois-saisonniers", name: "emplois saisonniers", slug: "emplois-saisonniers" },
        { id: "interim", name: "intérim", slug: "interim" },
        { id: "stages", name: "stages", slug: "stages" },
        { id: "apprentissage", name: "apprentissage", slug: "apprentissage" },
        { id: "freelance", name: "freelance", slug: "freelance" },
        { id: "teletravail", name: "télétravail", slug: "teletravail" },
        { id: "missions-ponctuelles", name: "missions ponctuelles", slug: "missions-ponctuelles" }
      ]
    },
    {
      id: "secteurs-professionnels",
      name: "Secteurs Professionnels",
      slug: "secteurs-professionnels",
      subcategories: [
        { id: "administratif", name: "administratif", slug: "administratif" },
        { id: "commerce", name: "commerce", slug: "commerce" },
        { id: "ventes", name: "ventes", slug: "ventes" },
        { id: "marketing", name: "marketing", slug: "marketing" },
        { id: "communication", name: "communication", slug: "communication" },
        { id: "informatique", name: "informatique", slug: "informatique" },
        { id: "telecommunications", name: "télécommunications", slug: "telecommunications" },
        { id: "sante", name: "santé", slug: "sante" },
        { id: "paramedical", name: "paramédical", slug: "paramedical" },
        { id: "industrie", name: "industrie", slug: "industrie" },
        { id: "construction", name: "construction", slug: "construction" },
        { id: "transport", name: "transport", slug: "transport" },
        { id: "logistique", name: "logistique", slug: "logistique" },
        { id: "hotellerie", name: "hôtellerie", slug: "hotellerie" },
        { id: "restauration", name: "restauration", slug: "restauration" },
        { id: "finance", name: "finance", slug: "finance" },
        { id: "comptabilite", name: "comptabilité", slug: "comptabilite" },
        { id: "banque", name: "banque", slug: "banque" },
        { id: "assurance", name: "assurance", slug: "assurance" },
        { id: "education", name: "éducation", slug: "education" },
        { id: "formation", name: "formation", slug: "formation" },
        { id: "agriculture", name: "agriculture", slug: "agriculture" },
        { id: "environnement", name: "environnement", slug: "environnement" },
        { id: "securite", name: "sécurité", slug: "securite" },
        { id: "services-publics", name: "services publics", slug: "services-publics" },
        { id: "artisanat", name: "artisanat", slug: "artisanat" }
      ]
    },
    {
      id: "metiers-qualifies-techniques",
      name: "Métiers Qualifiés & Techniques",
      slug: "metiers-qualifies-techniques",
      subcategories: [
        { id: "electriciens", name: "électriciens", slug: "electriciens" },
        { id: "plombiers", name: "plombiers", slug: "plombiers" },
        { id: "mecaniciens", name: "mécaniciens", slug: "mecaniciens" },
        { id: "charpentiers", name: "charpentiers", slug: "charpentiers" },
        { id: "soudeurs", name: "soudeurs", slug: "soudeurs" },
        { id: "techniciens-reseaux", name: "techniciens réseaux", slug: "techniciens-reseaux" },
        { id: "techniciens-maintenance", name: "techniciens maintenance", slug: "techniciens-maintenance" },
        { id: "chauffagistes", name: "chauffagistes", slug: "chauffagistes" },
        { id: "menuisiers", name: "menuisiers", slug: "menuisiers" },
        { id: "artisans-specialises", name: "artisans spécialisés", slug: "artisans-specialises" }
      ]
    },
    {
      id: "metiers-du-digital",
      name: "Métiers du Digital",
      slug: "metiers-du-digital",
      subcategories: [
        { id: "developpeurs-web", name: "développeurs web", slug: "developpeurs-web" },
        { id: "designers-graphiques", name: "designers graphiques", slug: "designers-graphiques" },
        { id: "community-managers", name: "community managers", slug: "community-managers" },
        { id: "specialistes-seo", name: "spécialistes SEO", slug: "specialistes-seo" },
        { id: "data-analysts", name: "data analysts", slug: "data-analysts" },
        { id: "ingenieurs-ia", name: "ingénieurs IA", slug: "ingenieurs-ia" },
        { id: "administrateurs-systemes", name: "administrateurs systèmes", slug: "administrateurs-systemes" }
      ]
    },
    {
      id: "metiers-de-la-sante",
      name: "Métiers de la Santé",
      slug: "metiers-de-la-sante",
      subcategories: [
        { id: "medecins", name: "médecins", slug: "medecins" },
        { id: "infirmiers", name: "infirmiers", slug: "infirmiers" },
        { id: "pharmaciens", name: "pharmaciens", slug: "pharmaciens" },
        { id: "techniciens-laboratoire", name: "techniciens de laboratoire", slug: "techniciens-laboratoire" },
        { id: "sages-femmes", name: "sages-femmes", slug: "sages-femmes" },
        { id: "aides-soignants", name: "aides-soignants", slug: "aides-soignants" },
        { id: "specialistes-reeducation", name: "spécialistes rééducation", slug: "specialistes-reeducation" }
      ]
    },
    {
      id: "metiers-de-leducation",
      name: "Métiers de l’Éducation",
      slug: "metiers-de-leducation",
      subcategories: [
        { id: "enseignants", name: "enseignants", slug: "enseignants" },
        { id: "educateurs", name: "éducateurs", slug: "educateurs" },
        { id: "formateurs", name: "formateurs", slug: "formateurs" },
        { id: "moniteurs", name: "moniteurs", slug: "moniteurs" },
        { id: "assistants-pedagogiques", name: "assistants pédagogiques", slug: "assistants-pedagogiques" }
      ]
    },
    {
      id: "services-aide-a-la-personne",
      name: "Services & Aide à la Personne",
      slug: "services-aide-a-la-personne",
      subcategories: [
        { id: "garde-denfants", name: "garde d’enfants", slug: "garde-denfants" },
        { id: "aide-menageres", name: "aide-ménagères", slug: "aide-menageres" },
        { id: "assistants-familiaux", name: "assistants familiaux", slug: "assistants-familiaux" },
        { id: "soins-a-domicile", name: "soins à domicile", slug: "soins-a-domicile" },
        { id: "accompagnement-personnes-agees", name: "accompagnement pour personnes âgées", slug: "accompagnement-personnes-agees" }
      ]
    },
    {
      id: "hotellerie-restauration",
      name: "Hôtellerie & Restauration",
      slug: "hotellerie-restauration",
      subcategories: [
        { id: "cuisiniers", name: "cuisiniers", slug: "cuisiniers" },
        { id: "serveurs", name: "serveurs", slug: "serveurs" },
        { id: "patissiers", name: "pâtissiers", slug: "patissiers" },
        { id: "boulangers", name: "boulangers", slug: "boulangers" },
        { id: "receptionnistes", name: "réceptionnistes", slug: "receptionnistes" },
        { id: "gestion-hoteliere", name: "gestion hôtelière", slug: "gestion-hoteliere" }
      ]
    },
    {
      id: "transport-logistique",
      name: "Transport & Logistique",
      slug: "transport-logistique",
      subcategories: [
        { id: "chauffeurs", name: "chauffeurs", slug: "chauffeurs" },
        { id: "livreurs", name: "livreurs", slug: "livreurs" },
        { id: "caristes", name: "caristes", slug: "caristes" },
        { id: "agents-logistiques", name: "agents logistiques", slug: "agents-logistiques" },
        { id: "manutentionnaires", name: "manutentionnaires", slug: "manutentionnaires" },
        { id: "gestion-stock", name: "gestion stock", slug: "gestion-stock" }
      ]
    },
    {
      id: "agriculture-elevage",
      name: "Agriculture & Élevage",
      slug: "agriculture-elevage",
      subcategories: [
        { id: "ouvriers-agricoles", name: "ouvriers agricoles", slug: "ouvriers-agricoles" },
        { id: "techniciens-agricoles", name: "techniciens agricoles", slug: "techniciens-agricoles" },
        { id: "eleveurs", name: "éleveurs", slug: "eleveurs" },
        { id: "specialistes-irrigation", name: "spécialistes irrigation", slug: "specialistes-irrigation" }
      ]
    },
    {
      id: "appels-offres-marches-publics",
      name: "Appels d’Offres & Marchés Publics",
      slug: "appels-offres-marches-publics",
      subcategories: [
        { id: "consultations", name: "consultations", slug: "consultations" },
        { id: "marches-professionnels", name: "marchés professionnels", slug: "marches-professionnels" },
        { id: "services-entreprises", name: "services entreprises", slug: "services-entreprises" },
        { id: "sous-traitance", name: "sous-traitance", slug: "sous-traitance" }
      ]
    },
    {
      id: "formation-developpement-professionnel",
      name: "Formation & Développement Professionnel",
      slug: "formation-developpement-professionnel",
      subcategories: [
        { id: "formations-qualifiantes", name: "formations qualifiantes", slug: "formations-qualifiantes" },
        { id: "certifications", name: "certifications", slug: "certifications" },
        { id: "formations-professionnelles", name: "formations professionnelles", slug: "formations-professionnelles" },
        { id: "ateliers-techniques", name: "ateliers techniques", slug: "ateliers-techniques" },
        { id: "coaching-carriere", name: "coaching carrière", slug: "coaching-carriere" }
      ]
    },
    {
      id: "entrepreneuriat-business",
      name: "Entrepreneuriat & Business",
      slug: "entrepreneuriat-business",
      subcategories: [
        { id: "creation-entreprise", name: "création d’entreprise", slug: "creation-entreprise" },
        { id: "conseils-entrepreneurs", name: "conseils entrepreneurs", slug: "conseils-entrepreneurs" },
        { id: "services-comptables", name: "services comptables", slug: "services-comptables" },
        { id: "assistance-juridique", name: "assistance juridique", slug: "assistance-juridique" },
        { id: "business-plan", name: "business plan", slug: "business-plan" }
      ]
    },
    {
      id: "cv-services-recrutement",
      name: "CV & Services Recrutement",
      slug: "cv-services-recrutement",
      subcategories: [
        { id: "redaction-cv", name: "rédaction de CV", slug: "redaction-cv" },
        { id: "lettres-motivation", name: "lettres de motivation", slug: "lettres-motivation" },
        { id: "coaching-entretien", name: "coaching d’entretien", slug: "coaching-entretien" },
        { id: "traduction-professionnelle", name: "traduction professionnelle", slug: "traduction-professionnelle" },
        { id: "optimisation-profil-linkedin", name: "optimisation profil LinkedIn", slug: "optimisation-profil-linkedin" }
      ]
    },
    {
      id: "stages-opportunites-jeunes",
      name: "Stages & Opportunités Jeunes",
      slug: "stages-opportunites-jeunes",
      subcategories: [
        { id: "stages-universitaires", name: "stages universitaires", slug: "stages-universitaires" },
        { id: "stages-ete", name: "stages d’été", slug: "stages-ete" },
        { id: "opportunites-etudiants", name: "opportunités étudiants", slug: "opportunites-etudiants" },
        { id: "programmes-jeunes-diplomes", name: "programmes jeunes diplômés", slug: "programmes-jeunes-diplomes" }
      ]
    },
    {
      id: "job-temps-partiel-etudiant",
      name: "Job à Temps Partiel & Étudiant",
      slug: "job-temps-partiel-etudiant",
      subcategories: [
        { id: "petits-boulots", name: "petits boulots", slug: "petits-boulots" },
        { id: "aide-scolaire", name: "aide scolaire", slug: "aide-scolaire" },
        { id: "jobs-week-end", name: "jobs week-end", slug: "jobs-week-end" },
        { id: "travail-soiree", name: "travail en soirée", slug: "travail-soiree" },
        { id: "missions-temporaires", name: "missions temporaires", slug: "missions-temporaires" }
      ]
    }
  ]
};