import { MenuCategory } from "@/data/categoryTypes";

export const emploiCarriereEn: MenuCategory = {
  id: "emploi-carriere",
  name: "Jobs & Career",
  slug: "emploi-carriere",
  subcategories: [
    {
      id: "offres-emploi",
      name: "Job Offers",
      slug: "offres-emploi",
      subcategories: [
        { id: "cdi", name: "Permanent", slug: "cdi" },
        { id: "cdd", name: "Fixed-term", slug: "cdd" },
        { id: "temps-plein", name: "Full-time", slug: "temps-plein" },
        { id: "temps-partiel", name: "Part-time", slug: "temps-partiel" },
        { id: "emplois-saisonniers", name: "Seasonal jobs", slug: "emplois-saisonniers" },
        { id: "interim", name: "Temporary", slug: "interim" },
        { id: "stages", name: "Internships", slug: "stages" },
        { id: "apprentissage", name: "Apprenticeship", slug: "apprentissage" },
        { id: "freelance", name: "Freelance", slug: "freelance" },
        { id: "teletravail", name: "Remote work", slug: "teletravail" },
        { id: "missions-ponctuelles", name: "One-off missions", slug: "missions-ponctuelles" }
      ]
    },
    {
      id: "secteurs-professionnels",
      name: "Professional Sectors",
      slug: "secteurs-professionnels",
      subcategories: [
        { id: "administratif", name: "Administrative", slug: "administratif" },
        { id: "commerce", name: "Commerce", slug: "commerce" },
        { id: "ventes", name: "Sales", slug: "ventes" },
        { id: "marketing", name: "Marketing", slug: "marketing" },
        { id: "communication", name: "Communication", slug: "communication" },
        { id: "informatique", name: "IT", slug: "informatique" },
        { id: "telecommunications", name: "Telecommunications", slug: "telecommunications" },
        { id: "sante", name: "Health", slug: "sante" },
        { id: "paramedical", name: "Paramedical", slug: "paramedical" },
        { id: "industrie", name: "Industry", slug: "industrie" },
        { id: "construction", name: "Construction", slug: "construction" },
        { id: "transport", name: "Transport", slug: "transport" },
        { id: "logistique", name: "Logistics", slug: "logistique" },
        { id: "hotellerie", name: "Hospitality", slug: "hotellerie" },
        { id: "restauration", name: "Food service", slug: "restauration" },
        { id: "finance", name: "Finance", slug: "finance" },
        { id: "comptabilite", name: "Accounting", slug: "comptabilite" },
        { id: "banque", name: "Banking", slug: "banque" },
        { id: "assurance", name: "Insurance", slug: "assurance" },
        { id: "education", name: "Education", slug: "education" },
        { id: "formation", name: "Training", slug: "formation" },
        { id: "agriculture", name: "Agriculture", slug: "agriculture" },
        { id: "environnement", name: "Environment", slug: "environnement" },
        { id: "securite", name: "Security", slug: "securite" },
        { id: "services-publics", name: "Public services", slug: "services-publics" },
        { id: "artisanat", name: "Crafts", slug: "artisanat" }
      ]
    },
    {
      id: "metiers-qualifies-techniques",
      name: "Qualified & Technical Trades",
      slug: "metiers-qualifies-techniques",
      subcategories: [
        { id: "electriciens", name: "Electricians", slug: "electriciens" },
        { id: "plombiers", name: "Plumbers", slug: "plombiers" },
        { id: "mecaniciens", name: "Mechanics", slug: "mecaniciens" },
        { id: "charpentiers", name: "Carpenters", slug: "charpentiers" },
        { id: "soudeurs", name: "Welders", slug: "soudeurs" },
        { id: "techniciens-reseaux", name: "Network technicians", slug: "techniciens-reseaux" },
        { id: "techniciens-maintenance", name: "Maintenance technicians", slug: "techniciens-maintenance" },
        { id: "chauffagistes", name: "Heating engineers", slug: "chauffagistes" },
        { id: "menuisiers", name: "Joiners", slug: "menuisiers" },
        { id: "artisans-specialises", name: "Specialized artisans", slug: "artisans-specialises" }
      ]
    },
    {
      id: "metiers-du-digital",
      name: "Digital Professions",
      slug: "metiers-du-digital",
      subcategories: [
        { id: "developpeurs-web", name: "Web developers", slug: "developpeurs-web" },
        { id: "designers-graphiques", name: "Graphic designers", slug: "designers-graphiques" },
        { id: "community-managers", name: "Community managers", slug: "community-managers" },
        { id: "specialistes-seo", name: "SEO specialists", slug: "specialistes-seo" },
        { id: "data-analysts", name: "Data analysts", slug: "data-analysts" },
        { id: "ingenieurs-ia", name: "AI Engineers", slug: "ingenieurs-ia" },
        { id: "administrateurs-systemes", name: "System administrators", slug: "administrateurs-systemes" }
      ]
    },
    {
      id: "metiers-de-la-sante",
      name: "Health Professions",
      slug: "metiers-de-la-sante",
      subcategories: [
        { id: "medecins", name: "Doctors", slug: "medecins" },
        { id: "infirmiers", name: "Nurses", slug: "infirmiers" },
        { id: "pharmaciens", name: "Pharmacists", slug: "pharmaciens" },
        { id: "techniciens-laboratoire", name: "Laboratory technicians", slug: "techniciens-laboratoire" },
        { id: "sages-femmes", name: "Midwives", slug: "sages-femmes" },
        { id: "aides-soignants", name: "Care assistants", slug: "aides-soignants" },
        { id: "specialistes-reeducation", name: "Rehabilitation specialists", slug: "specialistes-reeducation" }
      ]
    },
    {
      id: "metiers-de-leducation",
      name: "Education Professions",
      slug: "metiers-de-leducation",
      subcategories: [
        { id: "enseignants", name: "Teachers", slug: "enseignants" },
        { id: "educateurs", name: "Educators", slug: "educateurs" },
        { id: "formateurs", name: "Trainers", slug: "formateurs" },
        { id: "moniteurs", name: "Instructors", slug: "moniteurs" },
        { id: "assistants-pedagogiques", name: "Teaching assistants", slug: "assistants-pedagogiques" }
      ]
    },
    {
      id: "services-aide-a-la-personne",
      name: "Personal Services & Care",
      slug: "services-aide-a-la-personne",
      subcategories: [
        { id: "garde-denfants", name: "Childcare", slug: "garde-denfants" },
        { id: "aide-menageres", name: "Housekeepers", slug: "aide-menageres" },
        { id: "assistants-familiaux", name: "Family assistants", slug: "assistants-familiaux" },
        { id: "soins-a-domicile", name: "Home care", slug: "soins-a-domicile" },
        { id: "accompagnement-personnes-agees", name: "Elderly support", slug: "accompagnement-personnes-agees" }
      ]
    },
    {
      id: "hotellerie-restauration",
      name: "Hospitality & Food Service",
      slug: "hotellerie-restauration",
      subcategories: [
        { id: "cuisiniers", name: "Cooks", slug: "cuisiniers" },
        { id: "serveurs", name: "Waiters", slug: "serveurs" },
        { id: "patissiers", name: "Pastry chefs", slug: "patissiers" },
        { id: "boulangers", name: "Bakers", slug: "boulangers" },
        { id: "receptionnistes", name: "Receptionists", slug: "receptionnistes" },
        { id: "gestion-hoteliere", name: "Hotel management", slug: "gestion-hoteliere" }
      ]
    },
    {
      id: "transport-logistique",
      name: "Transport & Logistics",
      slug: "transport-logistique",
      subcategories: [
        { id: "chauffeurs", name: "Drivers", slug: "chauffeurs" },
        { id: "livreurs", name: "Couriers", slug: "livreurs" },
        { id: "caristes", name: "Forklift operators", slug: "caristes" },
        { id: "agents-logistiques", name: "Logistics agents", slug: "agents-logistiques" },
        { id: "manutentionnaires", name: "Handlers", slug: "manutentionnaires" },
        { id: "gestion-stock", name: "Stock management", slug: "gestion-stock" }
      ]
    },
    {
      id: "agriculture-elevage",
      name: "Agriculture & Livestock",
      slug: "agriculture-elevage",
      subcategories: [
        { id: "ouvriers-agricoles", name: "Farm workers", slug: "ouvriers-agricoles" },
        { id: "techniciens-agricoles", name: "Agricultural technicians", slug: "techniciens-agricoles" },
        { id: "eleveurs", name: "Breeders", slug: "eleveurs" },
        { id: "specialistes-irrigation", name: "Irrigation specialists", slug: "specialistes-irrigation" }
      ]
    },
    {
      id: "appels-offres-marches-publics",
      name: "Tenders & Public Contracts",
      slug: "appels-offres-marches-publics",
      subcategories: [
        { id: "consultations", name: "Consultations", slug: "consultations" },
        { id: "marches-professionnels", name: "Professional markets", slug: "marches-professionnels" },
        { id: "services-entreprises", name: "Business services", slug: "services-entreprises" },
        { id: "sous-traitance", name: "Subcontracting", slug: "sous-traitance" }
      ]
    },
    {
      id: "formation-developpement-professionnel",
      name: "Training & Professional Development",
      slug: "formation-developpement-professionnel",
      subcategories: [
        { id: "formations-qualifiantes", name: "Qualifying trainings", slug: "formations-qualifiantes" },
        { id: "certifications", name: "Certifications", slug: "certifications" },
        { id: "formations-professionnelles", name: "Professional trainings", slug: "formations-professionnelles" },
        { id: "ateliers-techniques", name: "Technical workshops", slug: "ateliers-techniques" },
        { id: "coaching-carriere", name: "Career coaching", slug: "coaching-carriere" }
      ]
    },
    {
      id: "entrepreneuriat-business",
      name: "Entrepreneurship & Business",
      slug: "entrepreneuriat-business",
      subcategories: [
        { id: "creation-entreprise", name: "Company creation", slug: "creation-entreprise" },
        { id: "conseils-entrepreneurs", name: "Entrepreneur advice", slug: "conseils-entrepreneurs" },
        { id: "services-comptables", name: "Accounting services", slug: "services-comptables" },
        { id: "assistance-juridique", name: "Legal assistance", slug: "assistance-juridique" },
        { id: "business-plan", name: "Business plan", slug: "business-plan" }
      ]
    },
    {
      id: "cv-services-recrutement",
      name: "CV & Recruitment Services",
      slug: "cv-services-recrutement",
      subcategories: [
        { id: "redaction-cv", name: "CV writing", slug: "redaction-cv" },
        { id: "lettres-motivation", name: "Cover letters", slug: "lettres-motivation" },
        { id: "coaching-entretien", name: "Interview coaching", slug: "coaching-entretien" },
        { id: "traduction-professionnelle", name: "Professional translation", slug: "traduction-professionnelle" },
        { id: "optimisation-profil-linkedin", name: "LinkedIn profile optimization", slug: "optimisation-profil-linkedin" }
      ]
    },
    {
      id: "stages-opportunites-jeunes",
      name: "Internships & Youth Opportunities",
      slug: "stages-opportunites-jeunes",
      subcategories: [
        { id: "stages-universitaires", name: "University internships", slug: "stages-universitaires" },
        { id: "stages-ete", name: "Summer internships", slug: "stages-ete" },
        { id: "opportunites-etudiants", name: "Student opportunities", slug: "opportunites-etudiants" },
        { id: "programmes-jeunes-diplomes", name: "Graduate programs", slug: "programmes-jeunes-diplomes" }
      ]
    },
    {
      id: "job-temps-partiel-etudiant",
      name: "Part-time & Student Jobs",
      slug: "job-temps-partiel-etudiant",
      subcategories: [
        { id: "petits-boulots", name: "Odd jobs", slug: "petits-boulots" },
        { id: "aide-scolaire", name: "Tutoring", slug: "aide-scolaire" },
        { id: "jobs-week-end", name: "Weekend jobs", slug: "jobs-week-end" },
        { id: "travail-soiree", name: "Evening work", slug: "travail-soiree" },
        { id: "missions-temporaires", name: "Temporary missions", slug: "missions-temporaires" }
      ]
    }
  ]
};