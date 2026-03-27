import { MenuCategory } from "@/data/categoryTypes";

export const emploiCarriereEs: MenuCategory = {
  id: "emploi-carriere",
  name: "Empleo y Carrera",
  slug: "emploi-carriere",
  subcategories: [
    {
      id: "offres-emploi",
      name: "Ofertas de Empleo",
      slug: "offres-emploi",
      subcategories: [
        { id: "cdi", name: "Contrato indefinido", slug: "cdi" },
        { id: "cdd", name: "Contrato temporal", slug: "cdd" },
        { id: "temps-plein", name: "Tiempo completo", slug: "temps-plein" },
        { id: "temps-partiel", name: "Medio tiempo", slug: "temps-partiel" },
        { id: "emplois-saisonniers", name: "Trabajos de temporada", slug: "emplois-saisonniers" },
        { id: "interim", name: "Trabajo temporal", slug: "interim" },
        { id: "stages", name: "Prácticas", slug: "stages" },
        { id: "apprentissage", name: "Aprendizaje", slug: "apprentissage" },
        { id: "freelance", name: "Freelance", slug: "freelance" },
        { id: "teletravail", name: "Teletrabajo", slug: "teletravail" },
        { id: "missions-ponctuelles", name: "Misiones puntuales", slug: "missions-ponctuelles" }
      ]
    },
    {
      id: "secteurs-professionnels",
      name: "Sectores Profesionales",
      slug: "secteurs-professionnels",
      subcategories: [
        { id: "administratif", name: "Administrativo", slug: "administratif" },
        { id: "commerce", name: "Comercio", slug: "commerce" },
        { id: "ventes", name: "Ventas", slug: "ventes" },
        { id: "marketing", name: "Marketing", slug: "marketing" },
        { id: "communication", name: "Comunicación", slug: "communication" },
        { id: "informatique", name: "Informática", slug: "informatique" },
        { id: "telecommunications", name: "Telecomunicaciones", slug: "telecommunications" },
        { id: "sante", name: "Salud", slug: "sante" },
        { id: "paramedical", name: "Paramédico", slug: "paramedical" },
        { id: "industrie", name: "Industria", slug: "industrie" },
        { id: "construction", name: "Construcción", slug: "construction" },
        { id: "transport", name: "Transporte", slug: "transport" },
        { id: "logistique", name: "Logística", slug: "logistique" },
        { id: "hotellerie", name: "Hostelería", slug: "hotellerie" },
        { id: "restauration", name: "Restauración", slug: "restauration" },
        { id: "finance", name: "Finanzas", slug: "finance" },
        { id: "comptabilite", name: "Contabilidad", slug: "comptabilite" },
        { id: "banque", name: "Banca", slug: "banque" },
        { id: "assurance", name: "Seguros", slug: "assurance" },
        { id: "education", name: "Educación", slug: "education" },
        { id: "formation", name: "Formación", slug: "formation" },
        { id: "agriculture", name: "Agricultura", slug: "agriculture" },
        { id: "environnement", name: "Medio ambiente", slug: "environnement" },
        { id: "securite", name: "Seguridad", slug: "securite" },
        { id: "services-publics", name: "Servicios públicos", slug: "services-publics" },
        { id: "artisanat", name: "Artesanía", slug: "artisanat" }
      ]
    },
    {
      id: "metiers-qualifies-techniques",
      name: "Oficios Calificados & Técnicos",
      slug: "metiers-qualifies-techniques",
      subcategories: [
        { id: "electriciens", name: "Electricistas", slug: "electriciens" },
        { id: "plombiers", name: "Fontaneros", slug: "plombiers" },
        { id: "mecaniciens", name: "Mecánicos", slug: "mecaniciens" },
        { id: "charpentiers", name: "Carpinteros", slug: "charpentiers" },
        { id: "soudeurs", name: "Soldadores", slug: "soudeurs" },
        { id: "techniciens-reseaux", name: "Técnicos de redes", slug: "techniciens-reseaux" },
        { id: "techniciens-maintenance", name: "Técnicos de mantenimiento", slug: "techniciens-maintenance" },
        { id: "chauffagistes", name: "Técnicos de calefacción", slug: "chauffagistes" },
        { id: "menuisiers", name: "Ebanistas", slug: "menuisiers" },
        { id: "artisans-specialises", name: "Artesanos especializados", slug: "artisans-specialises" }
      ]
    },
    {
      id: "metiers-du-digital",
      name: "Profesiones Digitales",
      slug: "metiers-du-digital",
      subcategories: [
        { id: "developpeurs-web", name: "Desarrolladores web", slug: "developpeurs-web" },
        { id: "designers-graphiques", name: "Diseñadores gráficos", slug: "designers-graphiques" },
        { id: "community-managers", name: "Community managers", slug: "community-managers" },
        { id: "specialistes-seo", name: "Especialistas SEO", slug: "specialistes-seo" },
        { id: "data-analysts", name: "Analistas de datos", slug: "data-analysts" },
        { id: "ingenieurs-ia", name: "Ingenieros IA", slug: "ingenieurs-ia" },
        { id: "administrateurs-systemes", name: "Administradores de sistemas", slug: "administrateurs-systemes" }
      ]
    },
    {
      id: "metiers-de-la-sante",
      name: "Profesiones de la Salud",
      slug: "metiers-de-la-sante",
      subcategories: [
        { id: "medecins", name: "Médicos", slug: "medecins" },
        { id: "infirmiers", name: "Enfermeros", slug: "infirmiers" },
        { id: "pharmaciens", name: "Farmacéuticos", slug: "pharmaciens" },
        { id: "techniciens-laboratoire", name: "Técnicos de laboratorio", slug: "techniciens-laboratoire" },
        { id: "sages-femmes", name: "Matronas", slug: "sages-femmes" },
        { id: "aides-soignants", name: "Auxiliares de enfermería", slug: "aides-soignants" },
        { id: "specialistes-reeducation", name: "Especialistas en rehabilitación", slug: "specialistes-reeducation" }
      ]
    },
    {
      id: "metiers-de-leducation",
      name: "Profesiones de la Educación",
      slug: "metiers-de-leducation",
      subcategories: [
        { id: "enseignants", name: "Docentes", slug: "enseignants" },
        { id: "educateurs", name: "Educadores", slug: "educateurs" },
        { id: "formateurs", name: "Formadores", slug: "formateurs" },
        { id: "moniteurs", name: "Monitores", slug: "moniteurs" },
        { id: "assistants-pedagogiques", name: "Asistentes pedagógicos", slug: "assistants-pedagogiques" }
      ]
    },
    {
      id: "services-aide-a-la-personne",
      name: "Servicios y Ayuda a la Persona",
      slug: "services-aide-a-la-personne",
      subcategories: [
        { id: "garde-denfants", name: "Cuidado de niños", slug: "garde-denfants" },
        { id: "aide-menageres", name: "Empleadas del hogar", slug: "aide-menageres" },
        { id: "assistants-familiaux", name: "Asistentes familiares", slug: "assistants-familiaux" },
        { id: "soins-a-domicile", name: "Cuidados a domicilio", slug: "soins-a-domicile" },
        { id: "accompagnement-personnes-agees", name: "Apoyo a personas mayores", slug: "accompagnement-personnes-agees" }
      ]
    },
    {
      id: "hotellerie-restauration",
      name: "Hostelería & Restauración",
      slug: "hotellerie-restauration",
      subcategories: [
        { id: "cuisiniers", name: "Cocineros", slug: "cuisiniers" },
        { id: "serveurs", name: "Camareros", slug: "serveurs" },
        { id: "patissiers", name: "Pasteleros", slug: "patissiers" },
        { id: "boulangers", name: "Panaderos", slug: "boulangers" },
        { id: "receptionnistes", name: "Recepcionistas", slug: "receptionnistes" },
        { id: "gestion-hoteliere", name: "Gestión hotelera", slug: "gestion-hoteliere" }
      ]
    },
    {
      id: "transport-logistique",
      name: "Transporte & Logística",
      slug: "transport-logistique",
      subcategories: [
        { id: "chauffeurs", name: "Conductores", slug: "chauffeurs" },
        { id: "livreurs", name: "Repartidores", slug: "livreurs" },
        { id: "caristes", name: "Carretilleros", slug: "caristes" },
        { id: "agents-logistiques", name: "Agentes logísticos", slug: "agents-logistiques" },
        { id: "manutentionnaires", name: "Operarios de almacén", slug: "manutentionnaires" },
        { id: "gestion-stock", name: "Gestión de stock", slug: "gestion-stock" }
      ]
    },
    {
      id: "agriculture-elevage",
      name: "Agricultura & Ganadería",
      slug: "agriculture-elevage",
      subcategories: [
        { id: "ouvriers-agricoles", name: "Trabajadores agrícolas", slug: "ouvriers-agricoles" },
        { id: "techniciens-agricoles", name: "Técnicos agrícolas", slug: "techniciens-agricoles" },
        { id: "eleveurs", name: "Ganaderos", slug: "eleveurs" },
        { id: "specialistes-irrigation", name: "Especialistas en riego", slug: "specialistes-irrigation" }
      ]
    },
    {
      id: "appels-offres-marches-publics",
      name: "Licitaciones & Contratos Públicos",
      slug: "appels-offres-marches-publics",
      subcategories: [
        { id: "consultations", name: "Consultas", slug: "consultations" },
        { id: "marches-professionnels", name: "Mercados profesionales", slug: "marches-professionnels" },
        { id: "services-entreprises", name: "Servicios empresariales", slug: "services-entreprises" },
        { id: "sous-traitance", name: "Subcontratación", slug: "sous-traitance" }
      ]
    },
    {
      id: "formation-developpement-professionnel",
      name: "Formación & Desarrollo Profesional",
      slug: "formation-developpement-professionnel",
      subcategories: [
        { id: "formations-qualifiantes", name: "Formaciones cualificantes", slug: "formations-qualifiantes" },
        { id: "certifications", name: "Certificaciones", slug: "certifications" },
        { id: "formations-professionnelles", name: "Formaciones profesionales", slug: "formations-professionnelles" },
        { id: "ateliers-techniques", name: "Talleres técnicos", slug: "ateliers-techniques" },
        { id: "coaching-carriere", name: "Coaching de carrera", slug: "coaching-carriere" }
      ]
    },
    {
      id: "entrepreneuriat-business",
      name: "Emprendimiento & Negocios",
      slug: "entrepreneuriat-business",
      subcategories: [
        { id: "creation-entreprise", name: "Creación de empresa", slug: "creation-entreprise" },
        { id: "conseils-entrepreneurs", name: "Consejos para emprendedores", slug: "conseils-entrepreneurs" },
        { id: "services-comptables", name: "Servicios contables", slug: "services-comptables" },
        { id: "assistance-juridique", name: "Asistencia jurídica", slug: "assistance-juridique" },
        { id: "business-plan", name: "Plan de negocio", slug: "business-plan" }
      ]
    },
    {
      id: "cv-services-recrutement",
      name: "CV & Servicios de Reclutamiento",
      slug: "cv-services-recrutement",
      subcategories: [
        { id: "redaction-cv", name: "Redacción de CV", slug: "redaction-cv" },
        { id: "lettres-motivation", name: "Cartas de motivación", slug: "lettres-motivation" },
        { id: "coaching-entretien", name: "Coaching de entrevista", slug: "coaching-entretien" },
        { id: "traduction-professionnelle", name: "Traducción profesional", slug: "traduction-professionnelle" },
        { id: "optimisation-profil-linkedin", name: "Optimización perfil LinkedIn", slug: "optimisation-profil-linkedin" }
      ]
    },
    {
      id: "stages-opportunites-jeunes",
      name: "Prácticas & Oportunidades Jóvenes",
      slug: "stages-opportunites-jeunes",
      subcategories: [
        { id: "stages-universitaires", name: "Prácticas universitarias", slug: "stages-universitaires" },
        { id: "stages-ete", name: "Prácticas de verano", slug: "stages-ete" },
        { id: "opportunites-etudiants", name: "Oportunidades para estudiantes", slug: "opportunites-etudiants" },
        { id: "programmes-jeunes-diplomes", name: "Programas para recién graduados", slug: "programmes-jeunes-diplomes" }
      ]
    },
    {
      id: "job-temps-partiel-etudiant",
      name: "Trabajo a Tiempo Parcial & Estudiantes",
      slug: "job-temps-partiel-etudiant",
      subcategories: [
        { id: "petits-boulots", name: "Trabajos ocasionales", slug: "petits-boulots" },
        { id: "aide-scolaire", name: "Ayuda escolar", slug: "aide-scolaire" },
        { id: "jobs-week-end", name: "Trabajos de fin de semana", slug: "jobs-week-end" },
        { id: "travail-soiree", name: "Trabajo nocturno", slug: "travail-soiree" },
        { id: "missions-temporaires", name: "Misiones temporales", slug: "missions-temporaires" }
      ]
    }
  ]
};