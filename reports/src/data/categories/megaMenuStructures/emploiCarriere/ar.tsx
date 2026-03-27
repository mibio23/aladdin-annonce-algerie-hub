import { MenuCategory } from "@/data/categoryTypes";

export const emploiCarriereAr: MenuCategory = {
  id: "emploi-carriere",
  name: "الوظائف والمسار المهني",
  slug: "emploi-carriere",
  subcategories: [
    {
      id: "offres-emploi",
      name: "عروض العمل",
      slug: "offres-emploi",
      subcategories: [
        { id: "cdi", name: "عقد دائم", slug: "cdi" },
        { id: "cdd", name: "عقد مؤقت", slug: "cdd" },
        { id: "temps-plein", name: "دوام كامل", slug: "temps-plein" },
        { id: "temps-partiel", name: "دوام جزئي", slug: "temps-partiel" },
        { id: "emplois-saisonniers", name: "وظائف موسمية", slug: "emplois-saisonniers" },
        { id: "interim", name: "عمل مؤقت", slug: "interim" },
        { id: "stages", name: "تدريبات", slug: "stages" },
        { id: "apprentissage", name: "تعليم مهني", slug: "apprentissage" },
        { id: "freelance", name: "عمل حر", slug: "freelance" },
        { id: "teletravail", name: "عمل عن بعد", slug: "teletravail" },
        { id: "missions-ponctuelles", name: "مهام مؤقتة", slug: "missions-ponctuelles" }
      ]
    },
    {
      id: "secteurs-professionnels",
      name: "القطاعات المهنية",
      slug: "secteurs-professionnels",
      subcategories: [
        { id: "administratif", name: "إداري", slug: "administratif" },
        { id: "commerce", name: "تجارة", slug: "commerce" },
        { id: "ventes", name: "مبيعات", slug: "ventes" },
        { id: "marketing", name: "تسويق", slug: "marketing" },
        { id: "communication", name: "اتصال", slug: "communication" },
        { id: "informatique", name: "معلوماتية", slug: "informatique" },
        { id: "telecommunications", name: "اتصالات", slug: "telecommunications" },
        { id: "sante", name: "صحة", slug: "sante" },
        { id: "paramedical", name: "شبه طبي", slug: "paramedical" },
        { id: "industrie", name: "صناعة", slug: "industrie" },
        { id: "construction", name: "بناء", slug: "construction" },
        { id: "transport", name: "نقل", slug: "transport" },
        { id: "logistique", name: "لوجستيات", slug: "logistique" },
        { id: "hotellerie", name: "فندقة", slug: "hotellerie" },
        { id: "restauration", name: "مطاعم", slug: "restauration" },
        { id: "finance", name: "مالية", slug: "finance" },
        { id: "comptabilite", name: "محاسبة", slug: "comptabilite" },
        { id: "banque", name: "بنوك", slug: "banque" },
        { id: "assurance", name: "تأمين", slug: "assurance" },
        { id: "education", name: "تعليم", slug: "education" },
        { id: "formation", name: "تكوين", slug: "formation" },
        { id: "agriculture", name: "زراعة", slug: "agriculture" },
        { id: "environnement", name: "بيئة", slug: "environnement" },
        { id: "securite", name: "أمن", slug: "securite" },
        { id: "services-publics", name: "خدمات عمومية", slug: "services-publics" },
        { id: "artisanat", name: "حرف", slug: "artisanat" }
      ]
    },
    {
      id: "metiers-qualifies-techniques",
      name: "مهن مؤهلة وتقنية",
      slug: "metiers-qualifies-techniques",
      subcategories: [
        { id: "electriciens", name: "كهربائيون", slug: "electriciens" },
        { id: "plombiers", name: "سباكون", slug: "plombiers" },
        { id: "mecaniciens", name: "ميكانيكيون", slug: "mecaniciens" },
        { id: "charpentiers", name: "نجارون", slug: "charpentiers" },
        { id: "soudeurs", name: "لحامون", slug: "soudeurs" },
        { id: "techniciens-reseaux", name: "تقنيو الشبكات", slug: "techniciens-reseaux" },
        { id: "techniciens-maintenance", name: "تقنيو الصيانة", slug: "techniciens-maintenance" },
        { id: "chauffagistes", name: "تقنيو التدفئة", slug: "chauffagistes" },
        { id: "menuisiers", name: "خراطون", slug: "menuisiers" },
        { id: "artisans-specialises", name: "حرفيون متخصصون", slug: "artisans-specialises" }
      ]
    },
    {
      id: "metiers-du-digital",
      name: "مهن رقمية",
      slug: "metiers-du-digital",
      subcategories: [
        { id: "developpeurs-web", name: "مطورو ويب", slug: "developpeurs-web" },
        { id: "designers-graphiques", name: "مصممو جرافيك", slug: "designers-graphiques" },
        { id: "community-managers", name: "مديرو المجتمعات", slug: "community-managers" },
        { id: "specialistes-seo", name: "خبراء تحسين محركات البحث", slug: "specialistes-seo" },
        { id: "data-analysts", name: "محللو بيانات", slug: "data-analysts" },
        { id: "ingenieurs-ia", name: "مهندسو الذكاء الاصطناعي", slug: "ingenieurs-ia" },
        { id: "administrateurs-systemes", name: "مديرو الأنظمة", slug: "administrateurs-systemes" }
      ]
    },
    {
      id: "metiers-de-la-sante",
      name: "مهن الصحة",
      slug: "metiers-de-la-sante",
      subcategories: [
        { id: "medecins", name: "أطباء", slug: "medecins" },
        { id: "infirmiers", name: "ممرضون", slug: "infirmiers" },
        { id: "pharmaciens", name: "صيادلة", slug: "pharmaciens" },
        { id: "techniciens-laboratoire", name: "تقنيو مختبر", slug: "techniciens-laboratoire" },
        { id: "sages-femmes", name: "قابلات", slug: "sages-femmes" },
        { id: "aides-soignants", name: "مساعدو تمريض", slug: "aides-soignants" },
        { id: "specialistes-reeducation", name: "مختصو إعادة التأهيل", slug: "specialistes-reeducation" }
      ]
    },
    {
      id: "metiers-de-leducation",
      name: "مهن التعليم",
      slug: "metiers-de-leducation",
      subcategories: [
        { id: "enseignants", name: "معلمون", slug: "enseignants" },
        { id: "educateurs", name: "مربون", slug: "educateurs" },
        { id: "formateurs", name: "مدربون", slug: "formateurs" },
        { id: "moniteurs", name: "مراقبون", slug: "moniteurs" },
        { id: "assistants-pedagogiques", name: "مساعدون تربويون", slug: "assistants-pedagogiques" }
      ]
    },
    {
      id: "services-aide-a-la-personne",
      name: "خدمات ومساعدة الأشخاص",
      slug: "services-aide-a-la-personne",
      subcategories: [
        { id: "garde-denfants", name: "رعاية الأطفال", slug: "garde-denfants" },
        { id: "aide-menageres", name: "عاملات منزليات", slug: "aide-menageres" },
        { id: "assistants-familiaux", name: "مساعدون عائليون", slug: "assistants-familiaux" },
        { id: "soins-a-domicile", name: "رعاية منزلية", slug: "soins-a-domicile" },
        { id: "accompagnement-personnes-agees", name: "مرافقة كبار السن", slug: "accompagnement-personnes-agees" }
      ]
    },
    {
      id: "hotellerie-restauration",
      name: "فندقة ومطاعم",
      slug: "hotellerie-restauration",
      subcategories: [
        { id: "cuisiniers", name: "طباخون", slug: "cuisiniers" },
        { id: "serveurs", name: "نُدُل", slug: "serveurs" },
        { id: "patissiers", name: "حلوانيون", slug: "patissiers" },
        { id: "boulangers", name: "خبازون", slug: "boulangers" },
        { id: "receptionnistes", name: "موظفو استقبال", slug: "receptionnistes" },
        { id: "gestion-hoteliere", name: "إدارة فندقية", slug: "gestion-hoteliere" }
      ]
    },
    {
      id: "transport-logistique",
      name: "نقل ولوجستيات",
      slug: "transport-logistique",
      subcategories: [
        { id: "chauffeurs", name: "سائقون", slug: "chauffeurs" },
        { id: "livreurs", name: "موزعون", slug: "livreurs" },
        { id: "caristes", name: "مشغلو الرافعات", slug: "caristes" },
        { id: "agents-logistiques", name: "وكلاء لوجستيون", slug: "agents-logistiques" },
        { id: "manutentionnaires", name: "عمال مناولة", slug: "manutentionnaires" },
        { id: "gestion-stock", name: "إدارة المخزون", slug: "gestion-stock" }
      ]
    },
    {
      id: "agriculture-elevage",
      name: "زراعة وتربية",
      slug: "agriculture-elevage",
      subcategories: [
        { id: "ouvriers-agricoles", name: "عمال زراعيون", slug: "ouvriers-agricoles" },
        { id: "techniciens-agricoles", name: "تقنيو زراعة", slug: "techniciens-agricoles" },
        { id: "eleveurs", name: "مربو مواشي", slug: "eleveurs" },
        { id: "specialistes-irrigation", name: "مختصو الري", slug: "specialistes-irrigation" }
      ]
    },
    {
      id: "appels-offres-marches-publics",
      name: "مناقصات وعقود عمومية",
      slug: "appels-offres-marches-publics",
      subcategories: [
        { id: "consultations", name: "استشارات", slug: "consultations" },
        { id: "marches-professionnels", name: "أسواق مهنية", slug: "marches-professionnels" },
        { id: "services-entreprises", name: "خدمات الشركات", slug: "services-entreprises" },
        { id: "sous-traitance", name: "مقاولة من الباطن", slug: "sous-traitance" }
      ]
    },
    {
      id: "formation-developpement-professionnel",
      name: "تكوين وتطوير مهني",
      slug: "formation-developpement-professionnel",
      subcategories: [
        { id: "formations-qualifiantes", name: "تكوينات مؤهلة", slug: "formations-qualifiantes" },
        { id: "certifications", name: "شهادات", slug: "certifications" },
        { id: "formations-professionnelles", name: "تكوينات مهنية", slug: "formations-professionnelles" },
        { id: "ateliers-techniques", name: "ورشات تقنية", slug: "ateliers-techniques" },
        { id: "coaching-carriere", name: "تدريب مهني", slug: "coaching-carriere" }
      ]
    },
    {
      id: "entrepreneuriat-business",
      name: "ريادة الأعمال والأعمال",
      slug: "entrepreneuriat-business",
      subcategories: [
        { id: "creation-entreprise", name: "إنشاء شركة", slug: "creation-entreprise" },
        { id: "conseils-entrepreneurs", name: "نصائح لرواد الأعمال", slug: "conseils-entrepreneurs" },
        { id: "services-comptables", name: "خدمات محاسبية", slug: "services-comptables" },
        { id: "assistance-juridique", name: "مساعدة قانونية", slug: "assistance-juridique" },
        { id: "business-plan", name: "خطة عمل", slug: "business-plan" }
      ]
    },
    {
      id: "cv-services-recrutement",
      name: "السير الذاتية وخدمات التوظيف",
      slug: "cv-services-recrutement",
      subcategories: [
        { id: "redaction-cv", name: "كتابة السيرة الذاتية", slug: "redaction-cv" },
        { id: "lettres-motivation", name: "رسائل تحفيزية", slug: "lettres-motivation" },
        { id: "coaching-entretien", name: "تدريب على المقابلة", slug: "coaching-entretien" },
        { id: "traduction-professionnelle", name: "ترجمة احترافية", slug: "traduction-professionnelle" },
        { id: "optimisation-profil-linkedin", name: "تحسين ملف LinkedIn", slug: "optimisation-profil-linkedin" }
      ]
    },
    {
      id: "stages-opportunites-jeunes",
      name: "تدريبات وفرص للشباب",
      slug: "stages-opportunites-jeunes",
      subcategories: [
        { id: "stages-universitaires", name: "تدريبات جامعية", slug: "stages-universitaires" },
        { id: "stages-ete", name: "تدريبات صيفية", slug: "stages-ete" },
        { id: "opportunites-etudiants", name: "فرص للطلاب", slug: "opportunites-etudiants" },
        { id: "programmes-jeunes-diplomes", name: "برامج للخريجين الجدد", slug: "programmes-jeunes-diplomes" }
      ]
    },
    {
      id: "job-temps-partiel-etudiant",
      name: "وظائف بدوام جزئي وطلاب",
      slug: "job-temps-partiel-etudiant",
      subcategories: [
        { id: "petits-boulots", name: "وظائف صغيرة", slug: "petits-boulots" },
        { id: "aide-scolaire", name: "مساعدة مدرسية", slug: "aide-scolaire" },
        { id: "jobs-week-end", name: "وظائف نهاية الأسبوع", slug: "jobs-week-end" },
        { id: "travail-soiree", name: "عمل مسائي", slug: "travail-soiree" },
        { id: "missions-temporaires", name: "مهام مؤقتة", slug: "missions-temporaires" }
      ]
    }
  ]
};