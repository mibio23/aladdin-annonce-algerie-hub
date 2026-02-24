-- =====================================================
-- EMPLOI & CARRIÈRE - MIGRATION MULTILINGUE
-- =====================================================

-- NIVEAU 0 : Emploi & Carrière (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('emploi-carriere', 'Emploi & Carrière', 'emploi-carriere', NULL, 0, 'fr');

-- NIVEAU 1 : Offres d'emploi (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('offres-emploi', 'Offres d\'emploi', 'offres-emploi', 'emploi-carriere', 1, 'fr');

-- NIVEAU 1 : Services carrière (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-carriere', 'Services carrière', 'services-carriere', 'emploi-carriere', 1, 'fr');

-- NIVEAU 2 : Niveau 2 pour Offres d'emploi (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('emploi-informatique', 'Emploi informatique', 'emploi-informatique', 'offres-emploi', 2, 'fr'),
('emploi-commerce', 'Emploi commerce', 'emploi-commerce', 'offres-emploi', 2, 'fr'),
('emploi-vente', 'Emploi vente', 'emploi-vente', 'offres-emploi', 2, 'fr'),
('emploi-marketing', 'Emploi marketing', 'emploi-marketing', 'offres-emploi', 2, 'fr'),
('emploi-finance', 'Emploi finance', 'emploi-finance', 'offres-emploi', 2, 'fr'),
('emploi-ressources-humaines', 'Emploi RH', 'emploi-ressources-humaines', 'offres-emploi', 2, 'fr'),
('emploi-administration', 'Emploi administration', 'emploi-administration', 'offres-emploi', 2, 'fr'),
('emploi-technique', 'Emploi technique', 'emploi-technique', 'offres-emploi', 2, 'fr'),
('emploi-ingenierie', 'Emploi ingénierie', 'emploi-ingenierie', 'offres-emploi', 2, 'fr'),
('emploi-sante', 'Emploi santé', 'emploi-sante', 'offres-emploi', 2, 'fr');

-- NIVEAU 2 : Niveau 2 pour Services carrière (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('cv-redaction', 'Rédaction CV', 'cv-redaction', 'services-carriere', 2, 'fr'),
('lettre-motivation', 'Lettres de motivation', 'lettre-motivation', 'services-carriere', 2, 'fr'),
('coaching-carriere', 'Coaching carrière', 'coaching-carriere', 'services-carriere', 2, 'fr'),
('preparation-entretiens', 'Préparation entretiens', 'preparation-entretiens', 'services-carriere', 2, 'fr'),
('evaluation-competences', 'Évaluation compétences', 'evaluation-competences', 'services-carriere', 2, 'fr'),
('formations-professionnelles', 'Formations professionnelles', 'formations-professionnelles', 'services-carriere', 2, 'fr'),
('services-recrutement', 'Services recrutement', 'services-recrutement', 'services-carriere', 2, 'fr'),
('conseils-carriere', 'Conseils carrière', 'conseils-carriere', 'services-carriere', 2, 'fr');

-- =====================================================

-- NIVEAU 0 : Emploi & Carrière (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('emploi-carriere', 'Jobs & Career', 'emploi-carriere', NULL, 0, 'en');

-- NIVEAU 1 : Offres d'emploi (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('offres-emploi', 'Job Offers', 'offres-emploi', 'emploi-carriere', 1, 'en');

-- NIVEAU 1 : Services carrière (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-carriere', 'Career Services', 'services-carriere', 'emploi-carriere', 1, 'en');

-- NIVEAU 2 : Niveau 2 pour Offres d'emploi (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('emploi-informatique', 'IT Jobs', 'emploi-informatique', 'offres-emploi', 2, 'en'),
('emploi-commerce', 'Commerce Jobs', 'emploi-commerce', 'offres-emploi', 2, 'en'),
('emploi-vente', 'Sales Jobs', 'emploi-vente', 'offres-emploi', 2, 'en'),
('emploi-marketing', 'Marketing Jobs', 'emploi-marketing', 'offres-emploi', 2, 'en'),
('emploi-finance', 'Finance Jobs', 'emploi-finance', 'offres-emploi', 2, 'en'),
('emploi-ressources-humaines', 'HR Jobs', 'emploi-ressources-humaines', 'offres-emploi', 2, 'en'),
('emploi-administration', 'Administration Jobs', 'emploi-administration', 'offres-emploi', 2, 'en'),
('emploi-technique', 'Technical Jobs', 'emploi-technique', 'offres-emploi', 2, 'en'),
('emploi-ingenierie', 'Engineering Jobs', 'emploi-ingenierie', 'offres-emploi', 2, 'en'),
('emploi-sante', 'Healthcare Jobs', 'emploi-sante', 'offres-emploi', 2, 'en');

-- NIVEAU 2 : Niveau 2 pour Services carrière (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('cv-redaction', 'CV Writing', 'cv-redaction', 'services-carriere', 2, 'en'),
('lettre-motivation', 'Cover Letters', 'lettre-motivation', 'services-carriere', 2, 'en'),
('coaching-carriere', 'Career Coaching', 'coaching-carriere', 'services-carriere', 2, 'en'),
('preparation-entretiens', 'Interview Preparation', 'preparation-entretiens', 'services-carriere', 2, 'en'),
('evaluation-competences', 'Skills Assessment', 'evaluation-competences', 'services-carriere', 2, 'en'),
('formations-professionnelles', 'Professional Training', 'formations-professionnelles', 'services-carriere', 2, 'en'),
('services-recrutement', 'Recruitment Services', 'services-recrutement', 'services-carriere', 2, 'en'),
('conseils-carriere', 'Career Advice', 'conseils-carriere', 'services-carriere', 2, 'en');

-- =====================================================

-- NIVEAU 0 : Emploi & Carrière (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('emploi-carriere', 'الوظائف والمهنة', 'emploi-carriere', NULL, 0, 'ar');

-- NIVEAU 1 : Offres d'emploi (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('offres-emploi', 'عروض العمل', 'offres-emploi', 'emploi-carriere', 1, 'ar');

-- NIVEAU 1 : Services carrière (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-carriere', 'خدمات المهنة', 'services-carriere', 'emploi-carriere', 1, 'ar');

-- NIVEAU 2 : Niveau 2 pour Offres d'emploi (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('emploi-informatique', 'وظائف تقنية المعلومات', 'emploi-informatique', 'offres-emploi', 2, 'ar'),
('emploi-commerce', 'وظائف التجارة', 'emploi-commerce', 'offres-emploi', 2, 'ar'),
('emploi-vente', 'وظائف المبيعات', 'emploi-vente', 'offres-emploi', 2, 'ar'),
('emploi-marketing', 'وظائف التسويق', 'emploi-marketing', 'offres-emploi', 2, 'ar'),
('emploi-finance', 'وظائف المالية', 'emploi-finance', 'offres-emploi', 2, 'ar'),
('emploi-ressources-humaines', 'وظائف الموارد البشرية', 'emploi-ressources-humaines', 'offres-emploi', 2, 'ar'),
('emploi-administration', 'وظائف الإدارة', 'emploi-administration', 'offres-emploi', 2, 'ar'),
('emploi-technique', 'وظائف تقنية', 'emploi-technique', 'offres-emploi', 2, 'ar'),
('emploi-ingenierie', 'وظائف الهندسة', 'emploi-ingenierie', 'offres-emploi', 2, 'ar'),
('emploi-sante', 'وظائف الرعاية الصحية', 'emploi-sante', 'offres-emploi', 2, 'ar');

-- NIVEAU 2 : Niveau 2 pour Services carrière (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('cv-redaction', 'كتابة السيرة الذاتية', 'cv-redaction', 'services-carriere', 2, 'ar'),
('lettre-motivation', 'خطابات التحفيز', 'lettre-motivation', 'services-carriere', 2, 'ar'),
('coaching-carriere', 'تدريب المهنة', 'coaching-carriere', 'services-carriere', 2, 'ar'),
('preparation-entretiens', 'تحضير المقابلات', 'preparation-entretiens', 'services-carriere', 2, 'ar'),
('evaluation-competences', 'تقييم المهارات', 'evaluation-competences', 'services-carriere', 2, 'ar'),
('formations-professionnelles', 'التدريب المهني', 'formations-professionnelles', 'services-carriere', 2, 'ar'),
('services-recrutement', 'خدمات التوظيف', 'services-recrutement', 'services-carriere', 2, 'ar'),
('conseils-carriere', 'نصائح المهنة', 'conseils-carriere', 'services-carriere', 2, 'ar');

-- =====================================================

-- NIVEAU 0 : Emploi & Carrière (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('emploi-carriere', 'Jobs & Karriere', 'emploi-carriere', NULL, 0, 'de');

-- NIVEAU 1 : Offres d'emploi (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('offres-emploi', 'Stellenangebote', 'offres-emploi', 'emploi-carriere', 1, 'de');

-- NIVEAU 1 : Services carrière (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-carriere', 'Karrieredienste', 'services-carriere', 'emploi-carriere', 1, 'de');

-- NIVEAU 2 : Niveau 2 pour Offres d'emploi (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('emploi-informatique', 'IT-Jobs', 'emploi-informatique', 'offres-emploi', 2, 'de'),
('emploi-commerce', 'Handelsjobs', 'emploi-commerce', 'offres-emploi', 2, 'de'),
('emploi-vente', 'Verkaufsjobs', 'emploi-vente', 'offres-emploi', 2, 'de'),
('emploi-marketing', 'Marketing-Jobs', 'emploi-marketing', 'offres-emploi', 2, 'de'),
('emploi-finance', 'Finanzjobs', 'emploi-finance', 'offres-emploi', 2, 'de'),
('emploi-ressources-humaines', 'Personalwesen-Jobs', 'emploi-ressources-humaines', 'offres-emploi', 2, 'de'),
('emploi-administration', 'Verwaltungsjobs', 'emploi-administration', 'offres-emploi', 2, 'de'),
('emploi-technique', 'Technische Jobs', 'emploi-technique', 'offres-emploi', 2, 'de'),
('emploi-ingenierie', 'Ingenieurjobs', 'emploi-ingenierie', 'offres-emploi', 2, 'de'),
('emploi-sante', 'Gesundheitsjobs', 'emploi-sante', 'offres-emploi', 2, 'de');

-- NIVEAU 2 : Niveau 2 pour Services carrière (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('cv-redaction', 'Lebenslauf schreiben', 'cv-redaction', 'services-carriere', 2, 'de'),
('lettre-motivation', 'Anschreiben', 'lettre-motivation', 'services-carriere', 2, 'de'),
('coaching-carriere', 'Karrierecoaching', 'coaching-carriere', 'services-carriere', 2, 'de'),
('preparation-entretiens', 'Vorbereitung auf Vorstellungsgespräche', 'preparation-entretiens', 'services-carriere', 2, 'de'),
('evaluation-competences', 'Kompetenzbewertung', 'evaluation-competences', 'services-carriere', 2, 'de'),
('formations-professionnelles', 'Berufliche Weiterbildung', 'formations-professionnelles', 'services-carriere', 2, 'de'),
('services-recrutement', 'Personalvermittlung', 'services-recrutement', 'services-carriere', 2, 'de'),
('conseils-carriere', 'Karriereberatung', 'conseils-carriere', 'services-carriere', 2, 'de');

-- =====================================================

-- NIVEAU 0 : Emploi & Carrière (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('emploi-carriere', 'Empleo y Carrera', 'emploi-carriere', NULL, 0, 'es');

-- NIVEAU 1 : Offres d'emploi (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('offres-emploi', 'Ofertas de Empleo', 'offres-emploi', 'emploi-carriere', 1, 'es');

-- NIVEAU 1 : Services carrière (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-carriere', 'Servicios de Carrera', 'services-carriere', 'emploi-carriere', 1, 'es');

-- NIVEAU 2 : Niveau 2 pour Offres d'emploi (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('emploi-informatique', 'Trabajos en TI', 'emploi-informatique', 'offres-emploi', 2, 'es'),
('emploi-commerce', 'Trabajos en Comercio', 'emploi-commerce', 'offres-emploi', 2, 'es'),
('emploi-vente', 'Trabajos en Ventas', 'emploi-vente', 'offres-emploi', 2, 'es'),
('emploi-marketing', 'Trabajos en Marketing', 'emploi-marketing', 'offres-emploi', 2, 'es'),
('emploi-finance', 'Trabajos en Finanzas', 'emploi-finance', 'offres-emploi', 2, 'es'),
('emploi-ressources-humaines', 'Trabajos en RRHH', 'emploi-ressources-humaines', 'offres-emploi', 2, 'es'),
('emploi-administration', 'Trabajos en Administración', 'emploi-administration', 'offres-emploi', 2, 'es'),
('emploi-technique', 'Trabajos Técnicos', 'emploi-technique', 'offres-emploi', 2, 'es'),
('emploi-ingenierie', 'Trabajos de Ingeniería', 'emploi-ingenierie', 'offres-emploi', 2, 'es'),
('emploi-sante', 'Trabajos en Salud', 'emploi-sante', 'offres-emploi', 2, 'es');

-- NIVEAU 2 : Niveau 2 pour Services carrière (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('cv-redaction', 'Redacción de CV', 'cv-redaction', 'services-carriere', 2, 'es'),
('lettre-motivation', 'Cartas de Presentación', 'lettre-motivation', 'services-carriere', 2, 'es'),
('coaching-carriere', 'Coaching de Carrera', 'coaching-carriere', 'services-carriere', 2, 'es'),
('preparation-entretiens', 'Preparación de Entrevistas', 'preparation-entretiens', 'services-carriere', 2, 'es'),
('evaluation-competences', 'Evaluación de Competencias', 'evaluation-competences', 'services-carriere', 2, 'es'),
('formations-professionnelles', 'Formación Profesional', 'formations-professionnelles', 'services-carriere', 2, 'es'),
('services-recrutement', 'Servicios de Reclutamiento', 'services-recrutement', 'services-carriere', 2, 'es'),
('conseils-carriere', 'Asesoramiento de Carrera', 'conseils-carriere', 'services-carriere', 2, 'es');

-- =====================================================

-- NIVEAU 0 : Emploi & Carrière (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('emploi-carriere', 'Lavoro e Carriera', 'emploi-carriere', NULL, 0, 'it');

-- NIVEAU 1 : Offres d'emploi (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('offres-emploi', 'Offerte di Lavoro', 'offres-emploi', 'emploi-carriere', 1, 'it');

-- NIVEAU 1 : Services carrière (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-carriere', 'Servizi di Carriera', 'services-carriere', 'emploi-carriere', 1, 'it');

-- NIVEAU 2 : Niveau 2 pour Offres d'emploi (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('emploi-informatique', 'Lavori IT', 'emploi-informatique', 'offres-emploi', 2, 'it'),
('emploi-commerce', 'Lavori nel Commercio', 'emploi-commerce', 'offres-emploi', 2, 'it'),
('emploi-vente', 'Lavori di Vendita', 'emploi-vente', 'offres-emploi', 2, 'it'),
('emploi-marketing', 'Lavori di Marketing', 'emploi-marketing', 'offres-emploi', 2, 'it'),
('emploi-finance', 'Lavori Finanziari', 'emploi-finance', 'offres-emploi', 2, 'it'),
('emploi-ressources-humaines', 'Lavori HR', 'emploi-ressources-humaines', 'offres-emploi', 2, 'it'),
('emploi-administration', 'Lavori Amministrativi', 'emploi-administration', 'offres-emploi', 2, 'it'),
('emploi-technique', 'Lavori Tecnici', 'emploi-technique', 'offres-emploi', 2, 'it'),
('emploi-ingenierie', 'Lavori di Ingegneria', 'emploi-ingenierie', 'offres-emploi', 2, 'it'),
('emploi-sante', 'Lavori Sanitari', 'emploi-sante', 'offres-emploi', 2, 'it');

-- NIVEAU 2 : Niveau 2 pour Services carrière (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('cv-redaction', 'Scrittura CV', 'cv-redaction', 'services-carriere', 2, 'it'),
('lettre-motivation', 'Lettere di Presentazione', 'lettre-motivation', 'services-carriere', 2, 'it'),
('coaching-carriere', 'Coaching di Carriera', 'coaching-carriere', 'services-carriere', 2, 'it'),
('preparation-entretiens', 'Preparazione Colloqui', 'preparation-entretiens', 'services-carriere', 2, 'it'),
('evaluation-competences', 'Valutazione Competenze', 'evaluation-competences', 'services-carriere', 2, 'it'),
('formations-professionnelles', 'Formazione Professionale', 'formations-professionnelles', 'services-carriere', 2, 'it'),
('services-recrutement', 'Servizi di Reclutamento', 'services-recrutement', 'services-carriere', 2, 'it'),
('conseils-carriere', 'Consulenza di Carriera', 'conseils-carriere', 'services-carriere', 2, 'it');