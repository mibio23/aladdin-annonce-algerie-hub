-- Migration: Emploi & Carrière (Generated Recursive)
-- Handles arbitrary depth and 6 languages

DO $$
DECLARE
    root_id TEXT;
    l1_id TEXT;
    l2_id TEXT;
    l3_id TEXT;
    l4_id TEXT;
    l5_id TEXT;
    l6_id TEXT;
    l7_id TEXT;
    l8_id TEXT;
    l9_id TEXT;
    l10_id TEXT;
BEGIN

    -- Level 0: emploi-carriere
    INSERT INTO categories (id, slug, level, name)
    VALUES ('emploi-carriere', 'emploi-carriere', 0, 'Emploi & Carrière')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 0, name = EXCLUDED.name
    RETURNING id INTO root_id;
    PERFORM insert_category_translations('emploi-carriere', 'fr', 'Emploi & Carrière');
    PERFORM insert_category_translations('emploi-carriere', 'ar', 'الوظائف والمسار المهني');
    PERFORM insert_category_translations('emploi-carriere', 'en', 'Jobs & Career');
    PERFORM insert_category_translations('emploi-carriere', 'de', 'Arbeit & Karriere');
    PERFORM insert_category_translations('emploi-carriere', 'es', 'Empleo y Carrera');
    PERFORM insert_category_translations('emploi-carriere', 'it', 'Lavoro & Carriera');

        -- Level 1: offres-emploi
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('offres-emploi', 'offres-emploi', 1, root_id, 'Offres d’Emploi')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('offres-emploi', 'fr', 'Offres d’Emploi');
        PERFORM insert_category_translations('offres-emploi', 'ar', 'عروض العمل');
        PERFORM insert_category_translations('offres-emploi', 'en', 'Job Offers');
        PERFORM insert_category_translations('offres-emploi', 'de', 'Stellenangebote');
        PERFORM insert_category_translations('offres-emploi', 'es', 'Ofertas de Empleo');
        PERFORM insert_category_translations('offres-emploi', 'it', 'Offerte di Lavoro');

            -- Level 2: cdi
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cdi', 'cdi', 2, l1_id, 'CDI')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cdi', 'fr', 'CDI');
            PERFORM insert_category_translations('cdi', 'ar', 'عقد دائم');
            PERFORM insert_category_translations('cdi', 'en', 'Permanent');
            PERFORM insert_category_translations('cdi', 'de', 'Unbefristet');
            PERFORM insert_category_translations('cdi', 'es', 'Contrato indefinido');
            PERFORM insert_category_translations('cdi', 'it', 'Tempo indeterminato');

            -- Level 2: cdd
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cdd', 'cdd', 2, l1_id, 'CDD')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cdd', 'fr', 'CDD');
            PERFORM insert_category_translations('cdd', 'ar', 'عقد مؤقت');
            PERFORM insert_category_translations('cdd', 'en', 'Fixed-term');
            PERFORM insert_category_translations('cdd', 'de', 'Befristet');
            PERFORM insert_category_translations('cdd', 'es', 'Contrato temporal');
            PERFORM insert_category_translations('cdd', 'it', 'Tempo determinato');

            -- Level 2: temps-plein
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('temps-plein', 'temps-plein', 2, l1_id, 'temps plein')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('temps-plein', 'fr', 'temps plein');
            PERFORM insert_category_translations('temps-plein', 'ar', 'دوام كامل');
            PERFORM insert_category_translations('temps-plein', 'en', 'Full-time');
            PERFORM insert_category_translations('temps-plein', 'de', 'Vollzeit');
            PERFORM insert_category_translations('temps-plein', 'es', 'Tiempo completo');
            PERFORM insert_category_translations('temps-plein', 'it', 'Full-time');

            -- Level 2: temps-partiel
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('temps-partiel', 'temps-partiel', 2, l1_id, 'temps partiel')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('temps-partiel', 'fr', 'temps partiel');
            PERFORM insert_category_translations('temps-partiel', 'ar', 'دوام جزئي');
            PERFORM insert_category_translations('temps-partiel', 'en', 'Part-time');
            PERFORM insert_category_translations('temps-partiel', 'de', 'Teilzeit');
            PERFORM insert_category_translations('temps-partiel', 'es', 'Medio tiempo');
            PERFORM insert_category_translations('temps-partiel', 'it', 'Part-time');

            -- Level 2: emplois-saisonniers
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('emplois-saisonniers', 'emplois-saisonniers', 2, l1_id, 'emplois saisonniers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('emplois-saisonniers', 'fr', 'emplois saisonniers');
            PERFORM insert_category_translations('emplois-saisonniers', 'ar', 'وظائف موسمية');
            PERFORM insert_category_translations('emplois-saisonniers', 'en', 'Seasonal jobs');
            PERFORM insert_category_translations('emplois-saisonniers', 'de', 'Saisonarbeit');
            PERFORM insert_category_translations('emplois-saisonniers', 'es', 'Trabajos de temporada');
            PERFORM insert_category_translations('emplois-saisonniers', 'it', 'Lavori stagionali');

            -- Level 2: interim
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('interim', 'interim', 2, l1_id, 'intérim')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('interim', 'fr', 'intérim');
            PERFORM insert_category_translations('interim', 'ar', 'عمل مؤقت');
            PERFORM insert_category_translations('interim', 'en', 'Temporary');
            PERFORM insert_category_translations('interim', 'de', 'Zeitarbeit');
            PERFORM insert_category_translations('interim', 'es', 'Trabajo temporal');
            PERFORM insert_category_translations('interim', 'it', 'Interim');

            -- Level 2: stages
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('stages', 'stages', 2, l1_id, 'stages')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('stages', 'fr', 'stages');
            PERFORM insert_category_translations('stages', 'ar', 'تدريبات');
            PERFORM insert_category_translations('stages', 'en', 'Internships');
            PERFORM insert_category_translations('stages', 'de', 'Praktika');
            PERFORM insert_category_translations('stages', 'es', 'Prácticas');
            PERFORM insert_category_translations('stages', 'it', 'Stage');

            -- Level 2: apprentissage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('apprentissage', 'apprentissage', 2, l1_id, 'apprentissage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('apprentissage', 'fr', 'apprentissage');
            PERFORM insert_category_translations('apprentissage', 'ar', 'تعليم مهني');
            PERFORM insert_category_translations('apprentissage', 'en', 'Apprenticeship');
            PERFORM insert_category_translations('apprentissage', 'de', 'Ausbildung');
            PERFORM insert_category_translations('apprentissage', 'es', 'Aprendizaje');
            PERFORM insert_category_translations('apprentissage', 'it', 'Apprendistato');

            -- Level 2: freelance
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('freelance', 'freelance', 2, l1_id, 'freelance')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('freelance', 'fr', 'freelance');
            PERFORM insert_category_translations('freelance', 'ar', 'عمل حر');
            PERFORM insert_category_translations('freelance', 'en', 'Freelance');
            PERFORM insert_category_translations('freelance', 'de', 'Freiberuflich');
            PERFORM insert_category_translations('freelance', 'es', 'Freelance');
            PERFORM insert_category_translations('freelance', 'it', 'Freelance');

            -- Level 2: teletravail
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('teletravail', 'teletravail', 2, l1_id, 'télétravail')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('teletravail', 'fr', 'télétravail');
            PERFORM insert_category_translations('teletravail', 'ar', 'عمل عن بعد');
            PERFORM insert_category_translations('teletravail', 'en', 'Remote work');
            PERFORM insert_category_translations('teletravail', 'de', 'Fernarbeit');
            PERFORM insert_category_translations('teletravail', 'es', 'Teletrabajo');
            PERFORM insert_category_translations('teletravail', 'it', 'Lavoro da remoto');

            -- Level 2: missions-ponctuelles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('missions-ponctuelles', 'missions-ponctuelles', 2, l1_id, 'missions ponctuelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('missions-ponctuelles', 'fr', 'missions ponctuelles');
            PERFORM insert_category_translations('missions-ponctuelles', 'ar', 'مهام مؤقتة');
            PERFORM insert_category_translations('missions-ponctuelles', 'en', 'One-off missions');
            PERFORM insert_category_translations('missions-ponctuelles', 'de', 'Einmalige Einsätze');
            PERFORM insert_category_translations('missions-ponctuelles', 'es', 'Misiones puntuales');
            PERFORM insert_category_translations('missions-ponctuelles', 'it', 'Missioni occasionali');

        -- Level 1: secteurs-professionnels
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('secteurs-professionnels', 'secteurs-professionnels', 1, root_id, 'Secteurs Professionnels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('secteurs-professionnels', 'fr', 'Secteurs Professionnels');
        PERFORM insert_category_translations('secteurs-professionnels', 'ar', 'القطاعات المهنية');
        PERFORM insert_category_translations('secteurs-professionnels', 'en', 'Professional Sectors');
        PERFORM insert_category_translations('secteurs-professionnels', 'de', 'Berufliche Bereiche');
        PERFORM insert_category_translations('secteurs-professionnels', 'es', 'Sectores Profesionales');
        PERFORM insert_category_translations('secteurs-professionnels', 'it', 'Settori Professionali');

            -- Level 2: administratif
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('administratif', 'administratif', 2, l1_id, 'administratif')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('administratif', 'fr', 'administratif');
            PERFORM insert_category_translations('administratif', 'ar', 'إداري');
            PERFORM insert_category_translations('administratif', 'en', 'Administrative');
            PERFORM insert_category_translations('administratif', 'de', 'Verwaltung');
            PERFORM insert_category_translations('administratif', 'es', 'Administrativo');
            PERFORM insert_category_translations('administratif', 'it', 'Amministrativo');

            -- Level 2: commerce
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('commerce', 'commerce', 2, l1_id, 'commerce')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('commerce', 'fr', 'commerce');
            PERFORM insert_category_translations('commerce', 'ar', 'تجارة');
            PERFORM insert_category_translations('commerce', 'en', 'Commerce');
            PERFORM insert_category_translations('commerce', 'de', 'Handel');
            PERFORM insert_category_translations('commerce', 'es', 'Comercio');
            PERFORM insert_category_translations('commerce', 'it', 'Commercio');

            -- Level 2: ventes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ventes', 'ventes', 2, l1_id, 'ventes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ventes', 'fr', 'ventes');
            PERFORM insert_category_translations('ventes', 'ar', 'مبيعات');
            PERFORM insert_category_translations('ventes', 'en', 'Sales');
            PERFORM insert_category_translations('ventes', 'de', 'Vertrieb');
            PERFORM insert_category_translations('ventes', 'es', 'Ventas');
            PERFORM insert_category_translations('ventes', 'it', 'Vendite');

            -- Level 2: marketing
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('marketing', 'marketing', 2, l1_id, 'marketing')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('marketing', 'fr', 'marketing');
            PERFORM insert_category_translations('marketing', 'ar', 'تسويق');
            PERFORM insert_category_translations('marketing', 'en', 'Marketing');
            PERFORM insert_category_translations('marketing', 'de', 'Marketing');
            PERFORM insert_category_translations('marketing', 'es', 'Marketing');
            PERFORM insert_category_translations('marketing', 'it', 'Marketing');

            -- Level 2: communication
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('communication', 'communication', 2, l1_id, 'communication')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('communication', 'fr', 'communication');
            PERFORM insert_category_translations('communication', 'ar', 'اتصال');
            PERFORM insert_category_translations('communication', 'en', 'Communication');
            PERFORM insert_category_translations('communication', 'de', 'Kommunikation');
            PERFORM insert_category_translations('communication', 'es', 'Comunicación');
            PERFORM insert_category_translations('communication', 'it', 'Comunicazione');

            -- Level 2: informatique
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('informatique', 'informatique', 2, l1_id, 'informatique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('informatique', 'fr', 'informatique');
            PERFORM insert_category_translations('informatique', 'ar', 'معلوماتية');
            PERFORM insert_category_translations('informatique', 'en', 'IT');
            PERFORM insert_category_translations('informatique', 'de', 'IT');
            PERFORM insert_category_translations('informatique', 'es', 'Informática');
            PERFORM insert_category_translations('informatique', 'it', 'Informatica');

            -- Level 2: telecommunications
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('telecommunications', 'telecommunications', 2, l1_id, 'télécommunications')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('telecommunications', 'fr', 'télécommunications');
            PERFORM insert_category_translations('telecommunications', 'ar', 'اتصالات');
            PERFORM insert_category_translations('telecommunications', 'en', 'Telecommunications');
            PERFORM insert_category_translations('telecommunications', 'de', 'Telekommunikation');
            PERFORM insert_category_translations('telecommunications', 'es', 'Telecomunicaciones');
            PERFORM insert_category_translations('telecommunications', 'it', 'Telecomunicazioni');

            -- Level 2: sante
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sante', 'sante', 2, l1_id, 'santé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sante', 'fr', 'santé');
            PERFORM insert_category_translations('sante', 'ar', 'صحة');
            PERFORM insert_category_translations('sante', 'en', 'Health');
            PERFORM insert_category_translations('sante', 'de', 'Gesundheit');
            PERFORM insert_category_translations('sante', 'es', 'Salud');
            PERFORM insert_category_translations('sante', 'it', 'Sanità');

            -- Level 2: paramedical
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('paramedical', 'paramedical', 2, l1_id, 'paramédical')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('paramedical', 'fr', 'paramédical');
            PERFORM insert_category_translations('paramedical', 'ar', 'شبه طبي');
            PERFORM insert_category_translations('paramedical', 'en', 'Paramedical');
            PERFORM insert_category_translations('paramedical', 'de', 'Paramedizin');
            PERFORM insert_category_translations('paramedical', 'es', 'Paramédico');
            PERFORM insert_category_translations('paramedical', 'it', 'Paramedico');

            -- Level 2: industrie
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('industrie', 'industrie', 2, l1_id, 'industrie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('industrie', 'fr', 'industrie');
            PERFORM insert_category_translations('industrie', 'ar', 'صناعة');
            PERFORM insert_category_translations('industrie', 'en', 'Industry');
            PERFORM insert_category_translations('industrie', 'de', 'Industrie');
            PERFORM insert_category_translations('industrie', 'es', 'Industria');
            PERFORM insert_category_translations('industrie', 'it', 'Industria');

            -- Level 2: construction
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('construction', 'construction', 2, l1_id, 'construction')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('construction', 'fr', 'construction');
            PERFORM insert_category_translations('construction', 'ar', 'بناء');
            PERFORM insert_category_translations('construction', 'en', 'Construction');
            PERFORM insert_category_translations('construction', 'de', 'Bau');
            PERFORM insert_category_translations('construction', 'es', 'Construcción');
            PERFORM insert_category_translations('construction', 'it', 'Edilizia');

            -- Level 2: transport
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('transport', 'transport', 2, l1_id, 'transport')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('transport', 'fr', 'transport');
            PERFORM insert_category_translations('transport', 'ar', 'نقل');
            PERFORM insert_category_translations('transport', 'en', 'Transport');
            PERFORM insert_category_translations('transport', 'de', 'Transport');
            PERFORM insert_category_translations('transport', 'es', 'Transporte');
            PERFORM insert_category_translations('transport', 'it', 'Trasporti');

            -- Level 2: logistique
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('logistique', 'logistique', 2, l1_id, 'logistique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('logistique', 'fr', 'logistique');
            PERFORM insert_category_translations('logistique', 'ar', 'لوجستيات');
            PERFORM insert_category_translations('logistique', 'en', 'Logistics');
            PERFORM insert_category_translations('logistique', 'de', 'Logistik');
            PERFORM insert_category_translations('logistique', 'es', 'Logística');
            PERFORM insert_category_translations('logistique', 'it', 'Logistica');

            -- Level 2: hotellerie
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('hotellerie', 'hotellerie', 2, l1_id, 'hôtellerie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('hotellerie', 'fr', 'hôtellerie');
            PERFORM insert_category_translations('hotellerie', 'ar', 'فندقة');
            PERFORM insert_category_translations('hotellerie', 'en', 'Hospitality');
            PERFORM insert_category_translations('hotellerie', 'de', 'Hotellerie');
            PERFORM insert_category_translations('hotellerie', 'es', 'Hostelería');
            PERFORM insert_category_translations('hotellerie', 'it', 'Hotellerie');

            -- Level 2: restauration
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('restauration', 'restauration', 2, l1_id, 'restauration')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('restauration', 'fr', 'restauration');
            PERFORM insert_category_translations('restauration', 'ar', 'مطاعم');
            PERFORM insert_category_translations('restauration', 'en', 'Food service');
            PERFORM insert_category_translations('restauration', 'de', 'Gastronomie');
            PERFORM insert_category_translations('restauration', 'es', 'Restauración');
            PERFORM insert_category_translations('restauration', 'it', 'Ristorazione');

            -- Level 2: finance
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('finance', 'finance', 2, l1_id, 'finance')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('finance', 'fr', 'finance');
            PERFORM insert_category_translations('finance', 'ar', 'مالية');
            PERFORM insert_category_translations('finance', 'en', 'Finance');
            PERFORM insert_category_translations('finance', 'de', 'Finanzen');
            PERFORM insert_category_translations('finance', 'es', 'Finanzas');
            PERFORM insert_category_translations('finance', 'it', 'Finanza');

            -- Level 2: comptabilite
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('comptabilite', 'comptabilite', 2, l1_id, 'comptabilité')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('comptabilite', 'fr', 'comptabilité');
            PERFORM insert_category_translations('comptabilite', 'ar', 'محاسبة');
            PERFORM insert_category_translations('comptabilite', 'en', 'Accounting');
            PERFORM insert_category_translations('comptabilite', 'de', 'Buchhaltung');
            PERFORM insert_category_translations('comptabilite', 'es', 'Contabilidad');
            PERFORM insert_category_translations('comptabilite', 'it', 'Contabilità');

            -- Level 2: banque
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('banque', 'banque', 2, l1_id, 'banque')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('banque', 'fr', 'banque');
            PERFORM insert_category_translations('banque', 'ar', 'بنوك');
            PERFORM insert_category_translations('banque', 'en', 'Banking');
            PERFORM insert_category_translations('banque', 'de', 'Bankwesen');
            PERFORM insert_category_translations('banque', 'es', 'Banca');
            PERFORM insert_category_translations('banque', 'it', 'Banca');

            -- Level 2: assurance
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('assurance', 'assurance', 2, l1_id, 'assurance')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('assurance', 'fr', 'assurance');
            PERFORM insert_category_translations('assurance', 'ar', 'تأمين');
            PERFORM insert_category_translations('assurance', 'en', 'Insurance');
            PERFORM insert_category_translations('assurance', 'de', 'Versicherung');
            PERFORM insert_category_translations('assurance', 'es', 'Seguros');
            PERFORM insert_category_translations('assurance', 'it', 'Assicurazioni');

            -- Level 2: education
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('education', 'education', 2, l1_id, 'éducation')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('education', 'fr', 'éducation');
            PERFORM insert_category_translations('education', 'ar', 'تعليم');
            PERFORM insert_category_translations('education', 'en', 'Education');
            PERFORM insert_category_translations('education', 'de', 'Bildung');
            PERFORM insert_category_translations('education', 'es', 'Educación');
            PERFORM insert_category_translations('education', 'it', 'Educazione');

            -- Level 2: formation
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('formation', 'formation', 2, l1_id, 'formation')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('formation', 'fr', 'formation');
            PERFORM insert_category_translations('formation', 'ar', 'تكوين');
            PERFORM insert_category_translations('formation', 'en', 'Training');
            PERFORM insert_category_translations('formation', 'de', 'Fortbildung');
            PERFORM insert_category_translations('formation', 'es', 'Formación');
            PERFORM insert_category_translations('formation', 'it', 'Formazione');

            -- Level 2: agriculture
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('agriculture', 'agriculture', 2, l1_id, 'agriculture')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('agriculture', 'fr', 'agriculture');
            PERFORM insert_category_translations('agriculture', 'ar', 'زراعة');
            PERFORM insert_category_translations('agriculture', 'en', 'Agriculture');
            PERFORM insert_category_translations('agriculture', 'de', 'Landwirtschaft');
            PERFORM insert_category_translations('agriculture', 'es', 'Agricultura');
            PERFORM insert_category_translations('agriculture', 'it', 'Agricoltura');

            -- Level 2: environnement
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('environnement', 'environnement', 2, l1_id, 'environnement')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('environnement', 'fr', 'environnement');
            PERFORM insert_category_translations('environnement', 'ar', 'بيئة');
            PERFORM insert_category_translations('environnement', 'en', 'Environment');
            PERFORM insert_category_translations('environnement', 'de', 'Umwelt');
            PERFORM insert_category_translations('environnement', 'es', 'Medio ambiente');
            PERFORM insert_category_translations('environnement', 'it', 'Ambiente');

            -- Level 2: securite
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('securite', 'securite', 2, l1_id, 'sécurité')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('securite', 'fr', 'sécurité');
            PERFORM insert_category_translations('securite', 'ar', 'أمن');
            PERFORM insert_category_translations('securite', 'en', 'Security');
            PERFORM insert_category_translations('securite', 'de', 'Sicherheit');
            PERFORM insert_category_translations('securite', 'es', 'Seguridad');
            PERFORM insert_category_translations('securite', 'it', 'Sicurezza');

            -- Level 2: services-publics
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('services-publics', 'services-publics', 2, l1_id, 'services publics')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('services-publics', 'fr', 'services publics');
            PERFORM insert_category_translations('services-publics', 'ar', 'خدمات عمومية');
            PERFORM insert_category_translations('services-publics', 'en', 'Public services');
            PERFORM insert_category_translations('services-publics', 'de', 'Öffentliche Dienste');
            PERFORM insert_category_translations('services-publics', 'es', 'Servicios públicos');
            PERFORM insert_category_translations('services-publics', 'it', 'Servizi pubblici');

            -- Level 2: artisanat
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('artisanat', 'artisanat', 2, l1_id, 'artisanat')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('artisanat', 'fr', 'artisanat');
            PERFORM insert_category_translations('artisanat', 'ar', 'حرف');
            PERFORM insert_category_translations('artisanat', 'en', 'Crafts');
            PERFORM insert_category_translations('artisanat', 'de', 'Handwerk');
            PERFORM insert_category_translations('artisanat', 'es', 'Artesanía');
            PERFORM insert_category_translations('artisanat', 'it', 'Artigianato');

        -- Level 1: metiers-qualifies-techniques
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('metiers-qualifies-techniques', 'metiers-qualifies-techniques', 1, root_id, 'Métiers Qualifiés & Techniques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('metiers-qualifies-techniques', 'fr', 'Métiers Qualifiés & Techniques');
        PERFORM insert_category_translations('metiers-qualifies-techniques', 'ar', 'مهن مؤهلة وتقنية');
        PERFORM insert_category_translations('metiers-qualifies-techniques', 'en', 'Qualified & Technical Trades');
        PERFORM insert_category_translations('metiers-qualifies-techniques', 'de', 'Qualifizierte & Technische Berufe');
        PERFORM insert_category_translations('metiers-qualifies-techniques', 'es', 'Oficios Calificados & Técnicos');
        PERFORM insert_category_translations('metiers-qualifies-techniques', 'it', 'Mestieri Qualificati & Tecnici');

            -- Level 2: electriciens
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('electriciens', 'electriciens', 2, l1_id, 'électriciens')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('electriciens', 'fr', 'électriciens');
            PERFORM insert_category_translations('electriciens', 'ar', 'كهربائيون');
            PERFORM insert_category_translations('electriciens', 'en', 'Electricians');
            PERFORM insert_category_translations('electriciens', 'de', 'Elektriker');
            PERFORM insert_category_translations('electriciens', 'es', 'Electricistas');
            PERFORM insert_category_translations('electriciens', 'it', 'Elettricisti');

            -- Level 2: plombiers
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('plombiers', 'plombiers', 2, l1_id, 'plombiers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('plombiers', 'fr', 'plombiers');
            PERFORM insert_category_translations('plombiers', 'ar', 'سباكون');
            PERFORM insert_category_translations('plombiers', 'en', 'Plumbers');
            PERFORM insert_category_translations('plombiers', 'de', 'Installateure');
            PERFORM insert_category_translations('plombiers', 'es', 'Fontaneros');
            PERFORM insert_category_translations('plombiers', 'it', 'Idraulici');

            -- Level 2: mecaniciens
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mecaniciens', 'mecaniciens', 2, l1_id, 'mécaniciens')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mecaniciens', 'fr', 'mécaniciens');
            PERFORM insert_category_translations('mecaniciens', 'ar', 'ميكانيكيون');
            PERFORM insert_category_translations('mecaniciens', 'en', 'Mechanics');
            PERFORM insert_category_translations('mecaniciens', 'de', 'Mechaniker');
            PERFORM insert_category_translations('mecaniciens', 'es', 'Mecánicos');
            PERFORM insert_category_translations('mecaniciens', 'it', 'Meccanici');

            -- Level 2: charpentiers
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('charpentiers', 'charpentiers', 2, l1_id, 'charpentiers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('charpentiers', 'fr', 'charpentiers');
            PERFORM insert_category_translations('charpentiers', 'ar', 'نجارون');
            PERFORM insert_category_translations('charpentiers', 'en', 'Carpenters');
            PERFORM insert_category_translations('charpentiers', 'de', 'Zimmerer');
            PERFORM insert_category_translations('charpentiers', 'es', 'Carpinteros');
            PERFORM insert_category_translations('charpentiers', 'it', 'Carpentieri');

            -- Level 2: soudeurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soudeurs', 'soudeurs', 2, l1_id, 'soudeurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('soudeurs', 'fr', 'soudeurs');
            PERFORM insert_category_translations('soudeurs', 'ar', 'لحامون');
            PERFORM insert_category_translations('soudeurs', 'en', 'Welders');
            PERFORM insert_category_translations('soudeurs', 'de', 'Schweißer');
            PERFORM insert_category_translations('soudeurs', 'es', 'Soldadores');
            PERFORM insert_category_translations('soudeurs', 'it', 'Saldatori');

            -- Level 2: techniciens-reseaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('techniciens-reseaux', 'techniciens-reseaux', 2, l1_id, 'techniciens réseaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('techniciens-reseaux', 'fr', 'techniciens réseaux');
            PERFORM insert_category_translations('techniciens-reseaux', 'ar', 'تقنيو الشبكات');
            PERFORM insert_category_translations('techniciens-reseaux', 'en', 'Network technicians');
            PERFORM insert_category_translations('techniciens-reseaux', 'de', 'Netzwerktechniker');
            PERFORM insert_category_translations('techniciens-reseaux', 'es', 'Técnicos de redes');
            PERFORM insert_category_translations('techniciens-reseaux', 'it', 'Tecnici di rete');

            -- Level 2: techniciens-maintenance
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('techniciens-maintenance', 'techniciens-maintenance', 2, l1_id, 'techniciens maintenance')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('techniciens-maintenance', 'fr', 'techniciens maintenance');
            PERFORM insert_category_translations('techniciens-maintenance', 'ar', 'تقنيو الصيانة');
            PERFORM insert_category_translations('techniciens-maintenance', 'en', 'Maintenance technicians');
            PERFORM insert_category_translations('techniciens-maintenance', 'de', 'Wartungstechniker');
            PERFORM insert_category_translations('techniciens-maintenance', 'es', 'Técnicos de mantenimiento');
            PERFORM insert_category_translations('techniciens-maintenance', 'it', 'Tecnici manutentori');

            -- Level 2: chauffagistes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chauffagistes', 'chauffagistes', 2, l1_id, 'chauffagistes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chauffagistes', 'fr', 'chauffagistes');
            PERFORM insert_category_translations('chauffagistes', 'ar', 'تقنيو التدفئة');
            PERFORM insert_category_translations('chauffagistes', 'en', 'Heating engineers');
            PERFORM insert_category_translations('chauffagistes', 'de', 'Heizungsbauer');
            PERFORM insert_category_translations('chauffagistes', 'es', 'Técnicos de calefacción');
            PERFORM insert_category_translations('chauffagistes', 'it', 'Tecnici del riscaldamento');

            -- Level 2: menuisiers
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('menuisiers', 'menuisiers', 2, l1_id, 'menuisiers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('menuisiers', 'fr', 'menuisiers');
            PERFORM insert_category_translations('menuisiers', 'ar', 'خراطون');
            PERFORM insert_category_translations('menuisiers', 'en', 'Joiners');
            PERFORM insert_category_translations('menuisiers', 'de', 'Tischler');
            PERFORM insert_category_translations('menuisiers', 'es', 'Ebanistas');
            PERFORM insert_category_translations('menuisiers', 'it', 'Falegnami');

            -- Level 2: artisans-specialises
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('artisans-specialises', 'artisans-specialises', 2, l1_id, 'artisans spécialisés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('artisans-specialises', 'fr', 'artisans spécialisés');
            PERFORM insert_category_translations('artisans-specialises', 'ar', 'حرفيون متخصصون');
            PERFORM insert_category_translations('artisans-specialises', 'en', 'Specialized artisans');
            PERFORM insert_category_translations('artisans-specialises', 'de', 'Spezialisierte Handwerker');
            PERFORM insert_category_translations('artisans-specialises', 'es', 'Artesanos especializados');
            PERFORM insert_category_translations('artisans-specialises', 'it', 'Artigiani specializzati');

        -- Level 1: metiers-du-digital
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('metiers-du-digital', 'metiers-du-digital', 1, root_id, 'Métiers du Digital')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('metiers-du-digital', 'fr', 'Métiers du Digital');
        PERFORM insert_category_translations('metiers-du-digital', 'ar', 'مهن رقمية');
        PERFORM insert_category_translations('metiers-du-digital', 'en', 'Digital Professions');
        PERFORM insert_category_translations('metiers-du-digital', 'de', 'Digitale Berufe');
        PERFORM insert_category_translations('metiers-du-digital', 'es', 'Profesiones Digitales');
        PERFORM insert_category_translations('metiers-du-digital', 'it', 'Professioni Digitali');

            -- Level 2: developpeurs-web
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('developpeurs-web', 'developpeurs-web', 2, l1_id, 'développeurs web')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('developpeurs-web', 'fr', 'développeurs web');
            PERFORM insert_category_translations('developpeurs-web', 'ar', 'مطورو ويب');
            PERFORM insert_category_translations('developpeurs-web', 'en', 'Web developers');
            PERFORM insert_category_translations('developpeurs-web', 'de', 'Webentwickler');
            PERFORM insert_category_translations('developpeurs-web', 'es', 'Desarrolladores web');
            PERFORM insert_category_translations('developpeurs-web', 'it', 'Sviluppatori web');

            -- Level 2: designers-graphiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('designers-graphiques', 'designers-graphiques', 2, l1_id, 'designers graphiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('designers-graphiques', 'fr', 'designers graphiques');
            PERFORM insert_category_translations('designers-graphiques', 'ar', 'مصممو جرافيك');
            PERFORM insert_category_translations('designers-graphiques', 'en', 'Graphic designers');
            PERFORM insert_category_translations('designers-graphiques', 'de', 'Grafikdesigner');
            PERFORM insert_category_translations('designers-graphiques', 'es', 'Diseñadores gráficos');
            PERFORM insert_category_translations('designers-graphiques', 'it', 'Graphic designer');

            -- Level 2: community-managers
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('community-managers', 'community-managers', 2, l1_id, 'community managers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('community-managers', 'fr', 'community managers');
            PERFORM insert_category_translations('community-managers', 'ar', 'مديرو المجتمعات');
            PERFORM insert_category_translations('community-managers', 'en', 'Community managers');
            PERFORM insert_category_translations('community-managers', 'de', 'Community Manager');
            PERFORM insert_category_translations('community-managers', 'es', 'Community managers');
            PERFORM insert_category_translations('community-managers', 'it', 'Community manager');

            -- Level 2: specialistes-seo
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('specialistes-seo', 'specialistes-seo', 2, l1_id, 'spécialistes SEO')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('specialistes-seo', 'fr', 'spécialistes SEO');
            PERFORM insert_category_translations('specialistes-seo', 'ar', 'خبراء تحسين محركات البحث');
            PERFORM insert_category_translations('specialistes-seo', 'en', 'SEO specialists');
            PERFORM insert_category_translations('specialistes-seo', 'de', 'SEO-Spezialisten');
            PERFORM insert_category_translations('specialistes-seo', 'es', 'Especialistas SEO');
            PERFORM insert_category_translations('specialistes-seo', 'it', 'Specialisti SEO');

            -- Level 2: data-analysts
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('data-analysts', 'data-analysts', 2, l1_id, 'data analysts')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('data-analysts', 'fr', 'data analysts');
            PERFORM insert_category_translations('data-analysts', 'ar', 'محللو بيانات');
            PERFORM insert_category_translations('data-analysts', 'en', 'Data analysts');
            PERFORM insert_category_translations('data-analysts', 'de', 'Datenanalysten');
            PERFORM insert_category_translations('data-analysts', 'es', 'Analistas de datos');
            PERFORM insert_category_translations('data-analysts', 'it', 'Data analyst');

            -- Level 2: ingenieurs-ia
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ingenieurs-ia', 'ingenieurs-ia', 2, l1_id, 'ingénieurs IA')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ingenieurs-ia', 'fr', 'ingénieurs IA');
            PERFORM insert_category_translations('ingenieurs-ia', 'ar', 'مهندسو الذكاء الاصطناعي');
            PERFORM insert_category_translations('ingenieurs-ia', 'en', 'AI Engineers');
            PERFORM insert_category_translations('ingenieurs-ia', 'de', 'KI-Ingenieure');
            PERFORM insert_category_translations('ingenieurs-ia', 'es', 'Ingenieros IA');
            PERFORM insert_category_translations('ingenieurs-ia', 'it', 'Ingegneri IA');

            -- Level 2: administrateurs-systemes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('administrateurs-systemes', 'administrateurs-systemes', 2, l1_id, 'administrateurs systèmes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('administrateurs-systemes', 'fr', 'administrateurs systèmes');
            PERFORM insert_category_translations('administrateurs-systemes', 'ar', 'مديرو الأنظمة');
            PERFORM insert_category_translations('administrateurs-systemes', 'en', 'System administrators');
            PERFORM insert_category_translations('administrateurs-systemes', 'de', 'Systemadministratoren');
            PERFORM insert_category_translations('administrateurs-systemes', 'es', 'Administradores de sistemas');
            PERFORM insert_category_translations('administrateurs-systemes', 'it', 'Amministratori di sistema');

        -- Level 1: metiers-de-la-sante
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('metiers-de-la-sante', 'metiers-de-la-sante', 1, root_id, 'Métiers de la Santé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('metiers-de-la-sante', 'fr', 'Métiers de la Santé');
        PERFORM insert_category_translations('metiers-de-la-sante', 'ar', 'مهن الصحة');
        PERFORM insert_category_translations('metiers-de-la-sante', 'en', 'Health Professions');
        PERFORM insert_category_translations('metiers-de-la-sante', 'de', 'Gesundheitsberufe');
        PERFORM insert_category_translations('metiers-de-la-sante', 'es', 'Profesiones de la Salud');
        PERFORM insert_category_translations('metiers-de-la-sante', 'it', 'Professioni della Salute');

            -- Level 2: medecins
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('medecins', 'medecins', 2, l1_id, 'médecins')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('medecins', 'fr', 'médecins');
            PERFORM insert_category_translations('medecins', 'ar', 'أطباء');
            PERFORM insert_category_translations('medecins', 'en', 'Doctors');
            PERFORM insert_category_translations('medecins', 'de', 'Ärzte');
            PERFORM insert_category_translations('medecins', 'es', 'Médicos');
            PERFORM insert_category_translations('medecins', 'it', 'Medici');

            -- Level 2: infirmiers
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('infirmiers', 'infirmiers', 2, l1_id, 'infirmiers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('infirmiers', 'fr', 'infirmiers');
            PERFORM insert_category_translations('infirmiers', 'ar', 'ممرضون');
            PERFORM insert_category_translations('infirmiers', 'en', 'Nurses');
            PERFORM insert_category_translations('infirmiers', 'de', 'Pflegekräfte');
            PERFORM insert_category_translations('infirmiers', 'es', 'Enfermeros');
            PERFORM insert_category_translations('infirmiers', 'it', 'Infermieri');

            -- Level 2: pharmaciens
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pharmaciens', 'pharmaciens', 2, l1_id, 'pharmaciens')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pharmaciens', 'fr', 'pharmaciens');
            PERFORM insert_category_translations('pharmaciens', 'ar', 'صيادلة');
            PERFORM insert_category_translations('pharmaciens', 'en', 'Pharmacists');
            PERFORM insert_category_translations('pharmaciens', 'de', 'Apotheker');
            PERFORM insert_category_translations('pharmaciens', 'es', 'Farmacéuticos');
            PERFORM insert_category_translations('pharmaciens', 'it', 'Farmacisti');

            -- Level 2: techniciens-laboratoire
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('techniciens-laboratoire', 'techniciens-laboratoire', 2, l1_id, 'techniciens de laboratoire')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('techniciens-laboratoire', 'fr', 'techniciens de laboratoire');
            PERFORM insert_category_translations('techniciens-laboratoire', 'ar', 'تقنيو مختبر');
            PERFORM insert_category_translations('techniciens-laboratoire', 'en', 'Laboratory technicians');
            PERFORM insert_category_translations('techniciens-laboratoire', 'de', 'Labortechniker');
            PERFORM insert_category_translations('techniciens-laboratoire', 'es', 'Técnicos de laboratorio');
            PERFORM insert_category_translations('techniciens-laboratoire', 'it', 'Tecnici di laboratorio');

            -- Level 2: sages-femmes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sages-femmes', 'sages-femmes', 2, l1_id, 'sages-femmes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sages-femmes', 'fr', 'sages-femmes');
            PERFORM insert_category_translations('sages-femmes', 'ar', 'قابلات');
            PERFORM insert_category_translations('sages-femmes', 'en', 'Midwives');
            PERFORM insert_category_translations('sages-femmes', 'de', 'Hebammen');
            PERFORM insert_category_translations('sages-femmes', 'es', 'Matronas');
            PERFORM insert_category_translations('sages-femmes', 'it', 'Ostetriche');

            -- Level 2: aides-soignants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('aides-soignants', 'aides-soignants', 2, l1_id, 'aides-soignants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('aides-soignants', 'fr', 'aides-soignants');
            PERFORM insert_category_translations('aides-soignants', 'ar', 'مساعدو تمريض');
            PERFORM insert_category_translations('aides-soignants', 'en', 'Care assistants');
            PERFORM insert_category_translations('aides-soignants', 'de', 'Pflegehelfer');
            PERFORM insert_category_translations('aides-soignants', 'es', 'Auxiliares de enfermería');
            PERFORM insert_category_translations('aides-soignants', 'it', 'Operatori socio-sanitari');

            -- Level 2: specialistes-reeducation
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('specialistes-reeducation', 'specialistes-reeducation', 2, l1_id, 'spécialistes rééducation')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('specialistes-reeducation', 'fr', 'spécialistes rééducation');
            PERFORM insert_category_translations('specialistes-reeducation', 'ar', 'مختصو إعادة التأهيل');
            PERFORM insert_category_translations('specialistes-reeducation', 'en', 'Rehabilitation specialists');
            PERFORM insert_category_translations('specialistes-reeducation', 'de', 'Reha-Spezialisten');
            PERFORM insert_category_translations('specialistes-reeducation', 'es', 'Especialistas en rehabilitación');
            PERFORM insert_category_translations('specialistes-reeducation', 'it', 'Specialisti della riabilitazione');

        -- Level 1: metiers-de-leducation
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('metiers-de-leducation', 'metiers-de-leducation', 1, root_id, 'Métiers de l’Éducation')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('metiers-de-leducation', 'fr', 'Métiers de l’Éducation');
        PERFORM insert_category_translations('metiers-de-leducation', 'ar', 'مهن التعليم');
        PERFORM insert_category_translations('metiers-de-leducation', 'en', 'Education Professions');
        PERFORM insert_category_translations('metiers-de-leducation', 'de', 'Bildungsberufe');
        PERFORM insert_category_translations('metiers-de-leducation', 'es', 'Profesiones de la Educación');
        PERFORM insert_category_translations('metiers-de-leducation', 'it', 'Professioni dell’Istruzione');

            -- Level 2: enseignants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('enseignants', 'enseignants', 2, l1_id, 'enseignants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('enseignants', 'fr', 'enseignants');
            PERFORM insert_category_translations('enseignants', 'ar', 'معلمون');
            PERFORM insert_category_translations('enseignants', 'en', 'Teachers');
            PERFORM insert_category_translations('enseignants', 'de', 'Lehrer');
            PERFORM insert_category_translations('enseignants', 'es', 'Docentes');
            PERFORM insert_category_translations('enseignants', 'it', 'Insegnanti');

            -- Level 2: educateurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('educateurs', 'educateurs', 2, l1_id, 'éducateurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('educateurs', 'fr', 'éducateurs');
            PERFORM insert_category_translations('educateurs', 'ar', 'مربون');
            PERFORM insert_category_translations('educateurs', 'en', 'Educators');
            PERFORM insert_category_translations('educateurs', 'de', 'Pädagogen');
            PERFORM insert_category_translations('educateurs', 'es', 'Educadores');
            PERFORM insert_category_translations('educateurs', 'it', 'Educatori');

            -- Level 2: formateurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('formateurs', 'formateurs', 2, l1_id, 'formateurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('formateurs', 'fr', 'formateurs');
            PERFORM insert_category_translations('formateurs', 'ar', 'مدربون');
            PERFORM insert_category_translations('formateurs', 'en', 'Trainers');
            PERFORM insert_category_translations('formateurs', 'de', 'Trainer');
            PERFORM insert_category_translations('formateurs', 'es', 'Formadores');
            PERFORM insert_category_translations('formateurs', 'it', 'Formatori');

            -- Level 2: moniteurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('moniteurs', 'moniteurs', 2, l1_id, 'moniteurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('moniteurs', 'fr', 'moniteurs');
            PERFORM insert_category_translations('moniteurs', 'ar', 'مراقبون');
            PERFORM insert_category_translations('moniteurs', 'en', 'Instructors');
            PERFORM insert_category_translations('moniteurs', 'de', 'Instruktoren');
            PERFORM insert_category_translations('moniteurs', 'es', 'Monitores');
            PERFORM insert_category_translations('moniteurs', 'it', 'Istruttori');

            -- Level 2: assistants-pedagogiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('assistants-pedagogiques', 'assistants-pedagogiques', 2, l1_id, 'assistants pédagogiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('assistants-pedagogiques', 'fr', 'assistants pédagogiques');
            PERFORM insert_category_translations('assistants-pedagogiques', 'ar', 'مساعدون تربويون');
            PERFORM insert_category_translations('assistants-pedagogiques', 'en', 'Teaching assistants');
            PERFORM insert_category_translations('assistants-pedagogiques', 'de', 'Lehrassistenten');
            PERFORM insert_category_translations('assistants-pedagogiques', 'es', 'Asistentes pedagógicos');
            PERFORM insert_category_translations('assistants-pedagogiques', 'it', 'Assistenti pedagogici');

        -- Level 1: services-aide-a-la-personne
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('services-aide-a-la-personne', 'services-aide-a-la-personne', 1, root_id, 'Services & Aide à la Personne')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('services-aide-a-la-personne', 'fr', 'Services & Aide à la Personne');
        PERFORM insert_category_translations('services-aide-a-la-personne', 'ar', 'خدمات ومساعدة الأشخاص');
        PERFORM insert_category_translations('services-aide-a-la-personne', 'en', 'Personal Services & Care');
        PERFORM insert_category_translations('services-aide-a-la-personne', 'de', 'Dienstleistungen & Personenhilfe');
        PERFORM insert_category_translations('services-aide-a-la-personne', 'es', 'Servicios y Ayuda a la Persona');
        PERFORM insert_category_translations('services-aide-a-la-personne', 'it', 'Servizi & Assistenza alla Persona');

            -- Level 2: garde-denfants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('garde-denfants', 'garde-denfants', 2, l1_id, 'garde d’enfants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('garde-denfants', 'fr', 'garde d’enfants');
            PERFORM insert_category_translations('garde-denfants', 'ar', 'رعاية الأطفال');
            PERFORM insert_category_translations('garde-denfants', 'en', 'Childcare');
            PERFORM insert_category_translations('garde-denfants', 'de', 'Kinderbetreuung');
            PERFORM insert_category_translations('garde-denfants', 'es', 'Cuidado de niños');
            PERFORM insert_category_translations('garde-denfants', 'it', 'Baby-sitting');

            -- Level 2: aide-menageres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('aide-menageres', 'aide-menageres', 2, l1_id, 'aide-ménagères')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('aide-menageres', 'fr', 'aide-ménagères');
            PERFORM insert_category_translations('aide-menageres', 'ar', 'عاملات منزليات');
            PERFORM insert_category_translations('aide-menageres', 'en', 'Housekeepers');
            PERFORM insert_category_translations('aide-menageres', 'de', 'Haushaltshilfen');
            PERFORM insert_category_translations('aide-menageres', 'es', 'Empleadas del hogar');
            PERFORM insert_category_translations('aide-menageres', 'it', 'Colf');

            -- Level 2: assistants-familiaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('assistants-familiaux', 'assistants-familiaux', 2, l1_id, 'assistants familiaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('assistants-familiaux', 'fr', 'assistants familiaux');
            PERFORM insert_category_translations('assistants-familiaux', 'ar', 'مساعدون عائليون');
            PERFORM insert_category_translations('assistants-familiaux', 'en', 'Family assistants');
            PERFORM insert_category_translations('assistants-familiaux', 'de', 'Familienassistenten');
            PERFORM insert_category_translations('assistants-familiaux', 'es', 'Asistentes familiares');
            PERFORM insert_category_translations('assistants-familiaux', 'it', 'Assistenti familiari');

            -- Level 2: soins-a-domicile
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soins-a-domicile', 'soins-a-domicile', 2, l1_id, 'soins à domicile')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('soins-a-domicile', 'fr', 'soins à domicile');
            PERFORM insert_category_translations('soins-a-domicile', 'ar', 'رعاية منزلية');
            PERFORM insert_category_translations('soins-a-domicile', 'en', 'Home care');
            PERFORM insert_category_translations('soins-a-domicile', 'de', 'Pflege zu Hause');
            PERFORM insert_category_translations('soins-a-domicile', 'es', 'Cuidados a domicilio');
            PERFORM insert_category_translations('soins-a-domicile', 'it', 'Cure a domicilio');

            -- Level 2: accompagnement-personnes-agees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accompagnement-personnes-agees', 'accompagnement-personnes-agees', 2, l1_id, 'accompagnement pour personnes âgées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('accompagnement-personnes-agees', 'fr', 'accompagnement pour personnes âgées');
            PERFORM insert_category_translations('accompagnement-personnes-agees', 'ar', 'مرافقة كبار السن');
            PERFORM insert_category_translations('accompagnement-personnes-agees', 'en', 'Elderly support');
            PERFORM insert_category_translations('accompagnement-personnes-agees', 'de', 'Seniorenbegleitung');
            PERFORM insert_category_translations('accompagnement-personnes-agees', 'es', 'Apoyo a personas mayores');
            PERFORM insert_category_translations('accompagnement-personnes-agees', 'it', 'Supporto anziani');

        -- Level 1: hotellerie-restauration
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('hotellerie-restauration', 'hotellerie-restauration', 1, root_id, 'Hôtellerie & Restauration')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('hotellerie-restauration', 'fr', 'Hôtellerie & Restauration');
        PERFORM insert_category_translations('hotellerie-restauration', 'ar', 'فندقة ومطاعم');
        PERFORM insert_category_translations('hotellerie-restauration', 'en', 'Hospitality & Food Service');
        PERFORM insert_category_translations('hotellerie-restauration', 'de', 'Hotellerie & Gastronomie');
        PERFORM insert_category_translations('hotellerie-restauration', 'es', 'Hostelería & Restauración');
        PERFORM insert_category_translations('hotellerie-restauration', 'it', 'Hotellerie & Ristorazione');

            -- Level 2: cuisiniers
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cuisiniers', 'cuisiniers', 2, l1_id, 'cuisiniers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cuisiniers', 'fr', 'cuisiniers');
            PERFORM insert_category_translations('cuisiniers', 'ar', 'طباخون');
            PERFORM insert_category_translations('cuisiniers', 'en', 'Cooks');
            PERFORM insert_category_translations('cuisiniers', 'de', 'Köche');
            PERFORM insert_category_translations('cuisiniers', 'es', 'Cocineros');
            PERFORM insert_category_translations('cuisiniers', 'it', 'Cuochi');

            -- Level 2: serveurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('serveurs', 'serveurs', 2, l1_id, 'serveurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('serveurs', 'fr', 'serveurs');
            PERFORM insert_category_translations('serveurs', 'ar', 'نُدُل');
            PERFORM insert_category_translations('serveurs', 'en', 'Waiters');
            PERFORM insert_category_translations('serveurs', 'de', 'Servicekräfte');
            PERFORM insert_category_translations('serveurs', 'es', 'Camareros');
            PERFORM insert_category_translations('serveurs', 'it', 'Camerieri');

            -- Level 2: patissiers
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('patissiers', 'patissiers', 2, l1_id, 'pâtissiers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('patissiers', 'fr', 'pâtissiers');
            PERFORM insert_category_translations('patissiers', 'ar', 'حلوانيون');
            PERFORM insert_category_translations('patissiers', 'en', 'Pastry chefs');
            PERFORM insert_category_translations('patissiers', 'de', 'Konditoren');
            PERFORM insert_category_translations('patissiers', 'es', 'Pasteleros');
            PERFORM insert_category_translations('patissiers', 'it', 'Pasticceri');

            -- Level 2: boulangers
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('boulangers', 'boulangers', 2, l1_id, 'boulangers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('boulangers', 'fr', 'boulangers');
            PERFORM insert_category_translations('boulangers', 'ar', 'خبازون');
            PERFORM insert_category_translations('boulangers', 'en', 'Bakers');
            PERFORM insert_category_translations('boulangers', 'de', 'Bäcker');
            PERFORM insert_category_translations('boulangers', 'es', 'Panaderos');
            PERFORM insert_category_translations('boulangers', 'it', 'Panettieri');

            -- Level 2: receptionnistes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('receptionnistes', 'receptionnistes', 2, l1_id, 'réceptionnistes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('receptionnistes', 'fr', 'réceptionnistes');
            PERFORM insert_category_translations('receptionnistes', 'ar', 'موظفو استقبال');
            PERFORM insert_category_translations('receptionnistes', 'en', 'Receptionists');
            PERFORM insert_category_translations('receptionnistes', 'de', 'Rezeptionisten');
            PERFORM insert_category_translations('receptionnistes', 'es', 'Recepcionistas');
            PERFORM insert_category_translations('receptionnistes', 'it', 'Receptionist');

            -- Level 2: gestion-hoteliere
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gestion-hoteliere', 'gestion-hoteliere', 2, l1_id, 'gestion hôtelière')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gestion-hoteliere', 'fr', 'gestion hôtelière');
            PERFORM insert_category_translations('gestion-hoteliere', 'ar', 'إدارة فندقية');
            PERFORM insert_category_translations('gestion-hoteliere', 'en', 'Hotel management');
            PERFORM insert_category_translations('gestion-hoteliere', 'de', 'Hotelmanagement');
            PERFORM insert_category_translations('gestion-hoteliere', 'es', 'Gestión hotelera');
            PERFORM insert_category_translations('gestion-hoteliere', 'it', 'Gestione alberghiera');

        -- Level 1: transport-logistique
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('transport-logistique', 'transport-logistique', 1, root_id, 'Transport & Logistique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('transport-logistique', 'fr', 'Transport & Logistique');
        PERFORM insert_category_translations('transport-logistique', 'ar', 'نقل ولوجستيات');
        PERFORM insert_category_translations('transport-logistique', 'en', 'Transport & Logistics');
        PERFORM insert_category_translations('transport-logistique', 'de', 'Transport & Logistik');
        PERFORM insert_category_translations('transport-logistique', 'es', 'Transporte & Logística');
        PERFORM insert_category_translations('transport-logistique', 'it', 'Trasporti & Logistica');

            -- Level 2: chauffeurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chauffeurs', 'chauffeurs', 2, l1_id, 'chauffeurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chauffeurs', 'fr', 'chauffeurs');
            PERFORM insert_category_translations('chauffeurs', 'ar', 'سائقون');
            PERFORM insert_category_translations('chauffeurs', 'en', 'Drivers');
            PERFORM insert_category_translations('chauffeurs', 'de', 'Fahrer');
            PERFORM insert_category_translations('chauffeurs', 'es', 'Conductores');
            PERFORM insert_category_translations('chauffeurs', 'it', 'Autisti');

            -- Level 2: livreurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('livreurs', 'livreurs', 2, l1_id, 'livreurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('livreurs', 'fr', 'livreurs');
            PERFORM insert_category_translations('livreurs', 'ar', 'موزعون');
            PERFORM insert_category_translations('livreurs', 'en', 'Couriers');
            PERFORM insert_category_translations('livreurs', 'de', 'Zusteller');
            PERFORM insert_category_translations('livreurs', 'es', 'Repartidores');
            PERFORM insert_category_translations('livreurs', 'it', 'Fattorini');

            -- Level 2: caristes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('caristes', 'caristes', 2, l1_id, 'caristes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('caristes', 'fr', 'caristes');
            PERFORM insert_category_translations('caristes', 'ar', 'مشغلو الرافعات');
            PERFORM insert_category_translations('caristes', 'en', 'Forklift operators');
            PERFORM insert_category_translations('caristes', 'de', 'Gabelstaplerfahrer');
            PERFORM insert_category_translations('caristes', 'es', 'Carretilleros');
            PERFORM insert_category_translations('caristes', 'it', 'Carrellisti');

            -- Level 2: agents-logistiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('agents-logistiques', 'agents-logistiques', 2, l1_id, 'agents logistiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('agents-logistiques', 'fr', 'agents logistiques');
            PERFORM insert_category_translations('agents-logistiques', 'ar', 'وكلاء لوجستيون');
            PERFORM insert_category_translations('agents-logistiques', 'en', 'Logistics agents');
            PERFORM insert_category_translations('agents-logistiques', 'de', 'Logistikmitarbeiter');
            PERFORM insert_category_translations('agents-logistiques', 'es', 'Agentes logísticos');
            PERFORM insert_category_translations('agents-logistiques', 'it', 'Operatori logistici');

            -- Level 2: manutentionnaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('manutentionnaires', 'manutentionnaires', 2, l1_id, 'manutentionnaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('manutentionnaires', 'fr', 'manutentionnaires');
            PERFORM insert_category_translations('manutentionnaires', 'ar', 'عمال مناولة');
            PERFORM insert_category_translations('manutentionnaires', 'en', 'Handlers');
            PERFORM insert_category_translations('manutentionnaires', 'de', 'Lagerarbeiter');
            PERFORM insert_category_translations('manutentionnaires', 'es', 'Operarios de almacén');
            PERFORM insert_category_translations('manutentionnaires', 'it', 'Magazzinieri');

            -- Level 2: gestion-stock
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gestion-stock', 'gestion-stock', 2, l1_id, 'gestion stock')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gestion-stock', 'fr', 'gestion stock');
            PERFORM insert_category_translations('gestion-stock', 'ar', 'إدارة المخزون');
            PERFORM insert_category_translations('gestion-stock', 'en', 'Stock management');
            PERFORM insert_category_translations('gestion-stock', 'de', 'Bestandsmanagement');
            PERFORM insert_category_translations('gestion-stock', 'es', 'Gestión de stock');
            PERFORM insert_category_translations('gestion-stock', 'it', 'Gestione stock');

        -- Level 1: agriculture-elevage
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('agriculture-elevage', 'agriculture-elevage', 1, root_id, 'Agriculture & Élevage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('agriculture-elevage', 'fr', 'Agriculture & Élevage');
        PERFORM insert_category_translations('agriculture-elevage', 'ar', 'زراعة وتربية');
        PERFORM insert_category_translations('agriculture-elevage', 'en', 'Agriculture & Livestock');
        PERFORM insert_category_translations('agriculture-elevage', 'de', 'Landwirtschaft & Viehzucht');
        PERFORM insert_category_translations('agriculture-elevage', 'es', 'Agricultura & Ganadería');
        PERFORM insert_category_translations('agriculture-elevage', 'it', 'Agricoltura & Allevamento');

            -- Level 2: ouvriers-agricoles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ouvriers-agricoles', 'ouvriers-agricoles', 2, l1_id, 'ouvriers agricoles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ouvriers-agricoles', 'fr', 'ouvriers agricoles');
            PERFORM insert_category_translations('ouvriers-agricoles', 'ar', 'عمال زراعيون');
            PERFORM insert_category_translations('ouvriers-agricoles', 'en', 'Farm workers');
            PERFORM insert_category_translations('ouvriers-agricoles', 'de', 'Landarbeiter');
            PERFORM insert_category_translations('ouvriers-agricoles', 'es', 'Trabajadores agrícolas');
            PERFORM insert_category_translations('ouvriers-agricoles', 'it', 'Operai agricoli');

            -- Level 2: techniciens-agricoles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('techniciens-agricoles', 'techniciens-agricoles', 2, l1_id, 'techniciens agricoles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('techniciens-agricoles', 'fr', 'techniciens agricoles');
            PERFORM insert_category_translations('techniciens-agricoles', 'ar', 'تقنيو زراعة');
            PERFORM insert_category_translations('techniciens-agricoles', 'en', 'Agricultural technicians');
            PERFORM insert_category_translations('techniciens-agricoles', 'de', 'Landwirtschaftstechniker');
            PERFORM insert_category_translations('techniciens-agricoles', 'es', 'Técnicos agrícolas');
            PERFORM insert_category_translations('techniciens-agricoles', 'it', 'Tecnici agricoli');

            -- Level 2: eleveurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('eleveurs', 'eleveurs', 2, l1_id, 'éleveurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('eleveurs', 'fr', 'éleveurs');
            PERFORM insert_category_translations('eleveurs', 'ar', 'مربو مواشي');
            PERFORM insert_category_translations('eleveurs', 'en', 'Breeders');
            PERFORM insert_category_translations('eleveurs', 'de', 'Viehzüchter');
            PERFORM insert_category_translations('eleveurs', 'es', 'Ganaderos');
            PERFORM insert_category_translations('eleveurs', 'it', 'Allevatori');

            -- Level 2: specialistes-irrigation
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('specialistes-irrigation', 'specialistes-irrigation', 2, l1_id, 'spécialistes irrigation')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('specialistes-irrigation', 'fr', 'spécialistes irrigation');
            PERFORM insert_category_translations('specialistes-irrigation', 'ar', 'مختصو الري');
            PERFORM insert_category_translations('specialistes-irrigation', 'en', 'Irrigation specialists');
            PERFORM insert_category_translations('specialistes-irrigation', 'de', 'Bewässerungsspezialisten');
            PERFORM insert_category_translations('specialistes-irrigation', 'es', 'Especialistas en riego');
            PERFORM insert_category_translations('specialistes-irrigation', 'it', 'Specialisti irrigazione');

        -- Level 1: appels-offres-marches-publics
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('appels-offres-marches-publics', 'appels-offres-marches-publics', 1, root_id, 'Appels d’Offres & Marchés Publics')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('appels-offres-marches-publics', 'fr', 'Appels d’Offres & Marchés Publics');
        PERFORM insert_category_translations('appels-offres-marches-publics', 'ar', 'مناقصات وعقود عمومية');
        PERFORM insert_category_translations('appels-offres-marches-publics', 'en', 'Tenders & Public Contracts');
        PERFORM insert_category_translations('appels-offres-marches-publics', 'de', 'Ausschreibungen & Öffentliche Aufträge');
        PERFORM insert_category_translations('appels-offres-marches-publics', 'es', 'Licitaciones & Contratos Públicos');
        PERFORM insert_category_translations('appels-offres-marches-publics', 'it', 'Bandi & Appalti Pubblici');

            -- Level 2: consultations
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('consultations', 'consultations', 2, l1_id, 'consultations')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('consultations', 'fr', 'consultations');
            PERFORM insert_category_translations('consultations', 'ar', 'استشارات');
            PERFORM insert_category_translations('consultations', 'en', 'Consultations');
            PERFORM insert_category_translations('consultations', 'de', 'Beratungen');
            PERFORM insert_category_translations('consultations', 'es', 'Consultas');
            PERFORM insert_category_translations('consultations', 'it', 'Consultazioni');

            -- Level 2: marches-professionnels
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('marches-professionnels', 'marches-professionnels', 2, l1_id, 'marchés professionnels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('marches-professionnels', 'fr', 'marchés professionnels');
            PERFORM insert_category_translations('marches-professionnels', 'ar', 'أسواق مهنية');
            PERFORM insert_category_translations('marches-professionnels', 'en', 'Professional markets');
            PERFORM insert_category_translations('marches-professionnels', 'de', 'Professionelle Märkte');
            PERFORM insert_category_translations('marches-professionnels', 'es', 'Mercados profesionales');
            PERFORM insert_category_translations('marches-professionnels', 'it', 'Mercati professionali');

            -- Level 2: services-entreprises
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('services-entreprises', 'services-entreprises', 2, l1_id, 'services entreprises')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('services-entreprises', 'fr', 'services entreprises');
            PERFORM insert_category_translations('services-entreprises', 'ar', 'خدمات الشركات');
            PERFORM insert_category_translations('services-entreprises', 'en', 'Business services');
            PERFORM insert_category_translations('services-entreprises', 'de', 'Unternehmensdienstleistungen');
            PERFORM insert_category_translations('services-entreprises', 'es', 'Servicios empresariales');
            PERFORM insert_category_translations('services-entreprises', 'it', 'Servizi per aziende');

            -- Level 2: sous-traitance
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sous-traitance', 'sous-traitance', 2, l1_id, 'sous-traitance')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sous-traitance', 'fr', 'sous-traitance');
            PERFORM insert_category_translations('sous-traitance', 'ar', 'مقاولة من الباطن');
            PERFORM insert_category_translations('sous-traitance', 'en', 'Subcontracting');
            PERFORM insert_category_translations('sous-traitance', 'de', 'Subunternehmer');
            PERFORM insert_category_translations('sous-traitance', 'es', 'Subcontratación');
            PERFORM insert_category_translations('sous-traitance', 'it', 'Subappalto');

        -- Level 1: formation-developpement-professionnel
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('formation-developpement-professionnel', 'formation-developpement-professionnel', 1, root_id, 'Formation & Développement Professionnel')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('formation-developpement-professionnel', 'fr', 'Formation & Développement Professionnel');
        PERFORM insert_category_translations('formation-developpement-professionnel', 'ar', 'تكوين وتطوير مهني');
        PERFORM insert_category_translations('formation-developpement-professionnel', 'en', 'Training & Professional Development');
        PERFORM insert_category_translations('formation-developpement-professionnel', 'de', 'Fortbildung & Berufliche Entwicklung');
        PERFORM insert_category_translations('formation-developpement-professionnel', 'es', 'Formación & Desarrollo Profesional');
        PERFORM insert_category_translations('formation-developpement-professionnel', 'it', 'Formazione & Sviluppo Professionale');

            -- Level 2: formations-qualifiantes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('formations-qualifiantes', 'formations-qualifiantes', 2, l1_id, 'formations qualifiantes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('formations-qualifiantes', 'fr', 'formations qualifiantes');
            PERFORM insert_category_translations('formations-qualifiantes', 'ar', 'تكوينات مؤهلة');
            PERFORM insert_category_translations('formations-qualifiantes', 'en', 'Qualifying trainings');
            PERFORM insert_category_translations('formations-qualifiantes', 'de', 'Qualifizierende Kurse');
            PERFORM insert_category_translations('formations-qualifiantes', 'es', 'Formaciones cualificantes');
            PERFORM insert_category_translations('formations-qualifiantes', 'it', 'Formazioni qualificanti');

            -- Level 2: certifications
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('certifications', 'certifications', 2, l1_id, 'certifications')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('certifications', 'fr', 'certifications');
            PERFORM insert_category_translations('certifications', 'ar', 'شهادات');
            PERFORM insert_category_translations('certifications', 'en', 'Certifications');
            PERFORM insert_category_translations('certifications', 'de', 'Zertifizierungen');
            PERFORM insert_category_translations('certifications', 'es', 'Certificaciones');
            PERFORM insert_category_translations('certifications', 'it', 'Certificazioni');

            -- Level 2: formations-professionnelles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('formations-professionnelles', 'formations-professionnelles', 2, l1_id, 'formations professionnelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('formations-professionnelles', 'fr', 'formations professionnelles');
            PERFORM insert_category_translations('formations-professionnelles', 'ar', 'تكوينات مهنية');
            PERFORM insert_category_translations('formations-professionnelles', 'en', 'Professional trainings');
            PERFORM insert_category_translations('formations-professionnelles', 'de', 'Berufliche Schulungen');
            PERFORM insert_category_translations('formations-professionnelles', 'es', 'Formaciones profesionales');
            PERFORM insert_category_translations('formations-professionnelles', 'it', 'Formazioni professionali');

            -- Level 2: ateliers-techniques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ateliers-techniques', 'ateliers-techniques', 2, l1_id, 'ateliers techniques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ateliers-techniques', 'fr', 'ateliers techniques');
            PERFORM insert_category_translations('ateliers-techniques', 'ar', 'ورشات تقنية');
            PERFORM insert_category_translations('ateliers-techniques', 'en', 'Technical workshops');
            PERFORM insert_category_translations('ateliers-techniques', 'de', 'Technische Workshops');
            PERFORM insert_category_translations('ateliers-techniques', 'es', 'Talleres técnicos');
            PERFORM insert_category_translations('ateliers-techniques', 'it', 'Workshop tecnici');

            -- Level 2: coaching-carriere
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('coaching-carriere', 'coaching-carriere', 2, l1_id, 'coaching carrière')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('coaching-carriere', 'fr', 'coaching carrière');
            PERFORM insert_category_translations('coaching-carriere', 'ar', 'تدريب مهني');
            PERFORM insert_category_translations('coaching-carriere', 'en', 'Career coaching');
            PERFORM insert_category_translations('coaching-carriere', 'de', 'Karrierecoaching');
            PERFORM insert_category_translations('coaching-carriere', 'es', 'Coaching de carrera');
            PERFORM insert_category_translations('coaching-carriere', 'it', 'Coaching di carriera');

        -- Level 1: entrepreneuriat-business
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('entrepreneuriat-business', 'entrepreneuriat-business', 1, root_id, 'Entrepreneuriat & Business')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('entrepreneuriat-business', 'fr', 'Entrepreneuriat & Business');
        PERFORM insert_category_translations('entrepreneuriat-business', 'ar', 'ريادة الأعمال والأعمال');
        PERFORM insert_category_translations('entrepreneuriat-business', 'en', 'Entrepreneurship & Business');
        PERFORM insert_category_translations('entrepreneuriat-business', 'de', 'Unternehmertum & Business');
        PERFORM insert_category_translations('entrepreneuriat-business', 'es', 'Emprendimiento & Negocios');
        PERFORM insert_category_translations('entrepreneuriat-business', 'it', 'Imprenditoria & Business');

            -- Level 2: creation-entreprise
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('creation-entreprise', 'creation-entreprise', 2, l1_id, 'création d’entreprise')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('creation-entreprise', 'fr', 'création d’entreprise');
            PERFORM insert_category_translations('creation-entreprise', 'ar', 'إنشاء شركة');
            PERFORM insert_category_translations('creation-entreprise', 'en', 'Company creation');
            PERFORM insert_category_translations('creation-entreprise', 'de', 'Unternehmensgründung');
            PERFORM insert_category_translations('creation-entreprise', 'es', 'Creación de empresa');
            PERFORM insert_category_translations('creation-entreprise', 'it', 'Creazione d’impresa');

            -- Level 2: conseils-entrepreneurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('conseils-entrepreneurs', 'conseils-entrepreneurs', 2, l1_id, 'conseils entrepreneurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('conseils-entrepreneurs', 'fr', 'conseils entrepreneurs');
            PERFORM insert_category_translations('conseils-entrepreneurs', 'ar', 'نصائح لرواد الأعمال');
            PERFORM insert_category_translations('conseils-entrepreneurs', 'en', 'Entrepreneur advice');
            PERFORM insert_category_translations('conseils-entrepreneurs', 'de', 'Unternehmerberatung');
            PERFORM insert_category_translations('conseils-entrepreneurs', 'es', 'Consejos para emprendedores');
            PERFORM insert_category_translations('conseils-entrepreneurs', 'it', 'Consigli per imprenditori');

            -- Level 2: services-comptables
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('services-comptables', 'services-comptables', 2, l1_id, 'services comptables')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('services-comptables', 'fr', 'services comptables');
            PERFORM insert_category_translations('services-comptables', 'ar', 'خدمات محاسبية');
            PERFORM insert_category_translations('services-comptables', 'en', 'Accounting services');
            PERFORM insert_category_translations('services-comptables', 'de', 'Buchhaltungsdienste');
            PERFORM insert_category_translations('services-comptables', 'es', 'Servicios contables');
            PERFORM insert_category_translations('services-comptables', 'it', 'Servizi contabili');

            -- Level 2: assistance-juridique
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('assistance-juridique', 'assistance-juridique', 2, l1_id, 'assistance juridique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('assistance-juridique', 'fr', 'assistance juridique');
            PERFORM insert_category_translations('assistance-juridique', 'ar', 'مساعدة قانونية');
            PERFORM insert_category_translations('assistance-juridique', 'en', 'Legal assistance');
            PERFORM insert_category_translations('assistance-juridique', 'de', 'Rechtliche Unterstützung');
            PERFORM insert_category_translations('assistance-juridique', 'es', 'Asistencia jurídica');
            PERFORM insert_category_translations('assistance-juridique', 'it', 'Assistenza legale');

            -- Level 2: business-plan
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('business-plan', 'business-plan', 2, l1_id, 'business plan')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('business-plan', 'fr', 'business plan');
            PERFORM insert_category_translations('business-plan', 'ar', 'خطة عمل');
            PERFORM insert_category_translations('business-plan', 'en', 'Business plan');
            PERFORM insert_category_translations('business-plan', 'de', 'Businessplan');
            PERFORM insert_category_translations('business-plan', 'es', 'Plan de negocio');
            PERFORM insert_category_translations('business-plan', 'it', 'Business plan');

        -- Level 1: cv-services-recrutement
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cv-services-recrutement', 'cv-services-recrutement', 1, root_id, 'CV & Services Recrutement')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('cv-services-recrutement', 'fr', 'CV & Services Recrutement');
        PERFORM insert_category_translations('cv-services-recrutement', 'ar', 'السير الذاتية وخدمات التوظيف');
        PERFORM insert_category_translations('cv-services-recrutement', 'en', 'CV & Recruitment Services');
        PERFORM insert_category_translations('cv-services-recrutement', 'de', 'Lebenslauf & Recruiting-Dienste');
        PERFORM insert_category_translations('cv-services-recrutement', 'es', 'CV & Servicios de Reclutamiento');
        PERFORM insert_category_translations('cv-services-recrutement', 'it', 'CV & Servizi di Reclutamento');

            -- Level 2: redaction-cv
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('redaction-cv', 'redaction-cv', 2, l1_id, 'rédaction de CV')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('redaction-cv', 'fr', 'rédaction de CV');
            PERFORM insert_category_translations('redaction-cv', 'ar', 'كتابة السيرة الذاتية');
            PERFORM insert_category_translations('redaction-cv', 'en', 'CV writing');
            PERFORM insert_category_translations('redaction-cv', 'de', 'Lebenslauf-Erstellung');
            PERFORM insert_category_translations('redaction-cv', 'es', 'Redacción de CV');
            PERFORM insert_category_translations('redaction-cv', 'it', 'Scrittura CV');

            -- Level 2: lettres-motivation
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lettres-motivation', 'lettres-motivation', 2, l1_id, 'lettres de motivation')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lettres-motivation', 'fr', 'lettres de motivation');
            PERFORM insert_category_translations('lettres-motivation', 'ar', 'رسائل تحفيزية');
            PERFORM insert_category_translations('lettres-motivation', 'en', 'Cover letters');
            PERFORM insert_category_translations('lettres-motivation', 'de', 'Motivationsschreiben');
            PERFORM insert_category_translations('lettres-motivation', 'es', 'Cartas de motivación');
            PERFORM insert_category_translations('lettres-motivation', 'it', 'Lettere di motivazione');

            -- Level 2: coaching-entretien
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('coaching-entretien', 'coaching-entretien', 2, l1_id, 'coaching d’entretien')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('coaching-entretien', 'fr', 'coaching d’entretien');
            PERFORM insert_category_translations('coaching-entretien', 'ar', 'تدريب على المقابلة');
            PERFORM insert_category_translations('coaching-entretien', 'en', 'Interview coaching');
            PERFORM insert_category_translations('coaching-entretien', 'de', 'Interview-Coaching');
            PERFORM insert_category_translations('coaching-entretien', 'es', 'Coaching de entrevista');
            PERFORM insert_category_translations('coaching-entretien', 'it', 'Coaching colloqui');

            -- Level 2: traduction-professionnelle
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('traduction-professionnelle', 'traduction-professionnelle', 2, l1_id, 'traduction professionnelle')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('traduction-professionnelle', 'fr', 'traduction professionnelle');
            PERFORM insert_category_translations('traduction-professionnelle', 'ar', 'ترجمة احترافية');
            PERFORM insert_category_translations('traduction-professionnelle', 'en', 'Professional translation');
            PERFORM insert_category_translations('traduction-professionnelle', 'de', 'Professionelle Übersetzung');
            PERFORM insert_category_translations('traduction-professionnelle', 'es', 'Traducción profesional');
            PERFORM insert_category_translations('traduction-professionnelle', 'it', 'Traduzione professionale');

            -- Level 2: optimisation-profil-linkedin
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('optimisation-profil-linkedin', 'optimisation-profil-linkedin', 2, l1_id, 'optimisation profil LinkedIn')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('optimisation-profil-linkedin', 'fr', 'optimisation profil LinkedIn');
            PERFORM insert_category_translations('optimisation-profil-linkedin', 'ar', 'تحسين ملف LinkedIn');
            PERFORM insert_category_translations('optimisation-profil-linkedin', 'en', 'LinkedIn profile optimization');
            PERFORM insert_category_translations('optimisation-profil-linkedin', 'de', 'LinkedIn-Profiloptimierung');
            PERFORM insert_category_translations('optimisation-profil-linkedin', 'es', 'Optimización perfil LinkedIn');
            PERFORM insert_category_translations('optimisation-profil-linkedin', 'it', 'Ottimizzazione profilo LinkedIn');

        -- Level 1: stages-opportunites-jeunes
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('stages-opportunites-jeunes', 'stages-opportunites-jeunes', 1, root_id, 'Stages & Opportunités Jeunes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('stages-opportunites-jeunes', 'fr', 'Stages & Opportunités Jeunes');
        PERFORM insert_category_translations('stages-opportunites-jeunes', 'ar', 'تدريبات وفرص للشباب');
        PERFORM insert_category_translations('stages-opportunites-jeunes', 'en', 'Internships & Youth Opportunities');
        PERFORM insert_category_translations('stages-opportunites-jeunes', 'de', 'Praktika & Chancen für Junge');
        PERFORM insert_category_translations('stages-opportunites-jeunes', 'es', 'Prácticas & Oportunidades Jóvenes');
        PERFORM insert_category_translations('stages-opportunites-jeunes', 'it', 'Tirocini & Opportunità Giovani');

            -- Level 2: stages-universitaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('stages-universitaires', 'stages-universitaires', 2, l1_id, 'stages universitaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('stages-universitaires', 'fr', 'stages universitaires');
            PERFORM insert_category_translations('stages-universitaires', 'ar', 'تدريبات جامعية');
            PERFORM insert_category_translations('stages-universitaires', 'en', 'University internships');
            PERFORM insert_category_translations('stages-universitaires', 'de', 'Universitätspraktika');
            PERFORM insert_category_translations('stages-universitaires', 'es', 'Prácticas universitarias');
            PERFORM insert_category_translations('stages-universitaires', 'it', 'Tirocini universitari');

            -- Level 2: stages-ete
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('stages-ete', 'stages-ete', 2, l1_id, 'stages d’été')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('stages-ete', 'fr', 'stages d’été');
            PERFORM insert_category_translations('stages-ete', 'ar', 'تدريبات صيفية');
            PERFORM insert_category_translations('stages-ete', 'en', 'Summer internships');
            PERFORM insert_category_translations('stages-ete', 'de', 'Sommerpraktika');
            PERFORM insert_category_translations('stages-ete', 'es', 'Prácticas de verano');
            PERFORM insert_category_translations('stages-ete', 'it', 'Tirocini estivi');

            -- Level 2: opportunites-etudiants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('opportunites-etudiants', 'opportunites-etudiants', 2, l1_id, 'opportunités étudiants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('opportunites-etudiants', 'fr', 'opportunités étudiants');
            PERFORM insert_category_translations('opportunites-etudiants', 'ar', 'فرص للطلاب');
            PERFORM insert_category_translations('opportunites-etudiants', 'en', 'Student opportunities');
            PERFORM insert_category_translations('opportunites-etudiants', 'de', 'Studentische Möglichkeiten');
            PERFORM insert_category_translations('opportunites-etudiants', 'es', 'Oportunidades para estudiantes');
            PERFORM insert_category_translations('opportunites-etudiants', 'it', 'Opportunità studenti');

            -- Level 2: programmes-jeunes-diplomes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('programmes-jeunes-diplomes', 'programmes-jeunes-diplomes', 2, l1_id, 'programmes jeunes diplômés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('programmes-jeunes-diplomes', 'fr', 'programmes jeunes diplômés');
            PERFORM insert_category_translations('programmes-jeunes-diplomes', 'ar', 'برامج للخريجين الجدد');
            PERFORM insert_category_translations('programmes-jeunes-diplomes', 'en', 'Graduate programs');
            PERFORM insert_category_translations('programmes-jeunes-diplomes', 'de', 'Programme für Absolventen');
            PERFORM insert_category_translations('programmes-jeunes-diplomes', 'es', 'Programas para recién graduados');
            PERFORM insert_category_translations('programmes-jeunes-diplomes', 'it', 'Programmi giovani laureati');

        -- Level 1: job-temps-partiel-etudiant
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('job-temps-partiel-etudiant', 'job-temps-partiel-etudiant', 1, root_id, 'Job à Temps Partiel & Étudiant')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('job-temps-partiel-etudiant', 'fr', 'Job à Temps Partiel & Étudiant');
        PERFORM insert_category_translations('job-temps-partiel-etudiant', 'ar', 'وظائف بدوام جزئي وطلاب');
        PERFORM insert_category_translations('job-temps-partiel-etudiant', 'en', 'Part-time & Student Jobs');
        PERFORM insert_category_translations('job-temps-partiel-etudiant', 'de', 'Teilzeit- & Studentenjobs');
        PERFORM insert_category_translations('job-temps-partiel-etudiant', 'es', 'Trabajo a Tiempo Parcial & Estudiantes');
        PERFORM insert_category_translations('job-temps-partiel-etudiant', 'it', 'Lavori Part-time & Studenteschi');

            -- Level 2: petits-boulots
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('petits-boulots', 'petits-boulots', 2, l1_id, 'petits boulots')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('petits-boulots', 'fr', 'petits boulots');
            PERFORM insert_category_translations('petits-boulots', 'ar', 'وظائف صغيرة');
            PERFORM insert_category_translations('petits-boulots', 'en', 'Odd jobs');
            PERFORM insert_category_translations('petits-boulots', 'de', 'Nebenjobs');
            PERFORM insert_category_translations('petits-boulots', 'es', 'Trabajos ocasionales');
            PERFORM insert_category_translations('petits-boulots', 'it', 'Lavoretti');

            -- Level 2: aide-scolaire
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('aide-scolaire', 'aide-scolaire', 2, l1_id, 'aide scolaire')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('aide-scolaire', 'fr', 'aide scolaire');
            PERFORM insert_category_translations('aide-scolaire', 'ar', 'مساعدة مدرسية');
            PERFORM insert_category_translations('aide-scolaire', 'en', 'Tutoring');
            PERFORM insert_category_translations('aide-scolaire', 'de', 'Nachhilfe');
            PERFORM insert_category_translations('aide-scolaire', 'es', 'Ayuda escolar');
            PERFORM insert_category_translations('aide-scolaire', 'it', 'Aiuto scolastico');

            -- Level 2: jobs-week-end
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jobs-week-end', 'jobs-week-end', 2, l1_id, 'jobs week-end')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('jobs-week-end', 'fr', 'jobs week-end');
            PERFORM insert_category_translations('jobs-week-end', 'ar', 'وظائف نهاية الأسبوع');
            PERFORM insert_category_translations('jobs-week-end', 'en', 'Weekend jobs');
            PERFORM insert_category_translations('jobs-week-end', 'de', 'Wochenendjobs');
            PERFORM insert_category_translations('jobs-week-end', 'es', 'Trabajos de fin de semana');
            PERFORM insert_category_translations('jobs-week-end', 'it', 'Lavori nel weekend');

            -- Level 2: travail-soiree
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('travail-soiree', 'travail-soiree', 2, l1_id, 'travail en soirée')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('travail-soiree', 'fr', 'travail en soirée');
            PERFORM insert_category_translations('travail-soiree', 'ar', 'عمل مسائي');
            PERFORM insert_category_translations('travail-soiree', 'en', 'Evening work');
            PERFORM insert_category_translations('travail-soiree', 'de', 'Abendarbeit');
            PERFORM insert_category_translations('travail-soiree', 'es', 'Trabajo nocturno');
            PERFORM insert_category_translations('travail-soiree', 'it', 'Lavoro serale');

            -- Level 2: missions-temporaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('missions-temporaires', 'missions-temporaires', 2, l1_id, 'missions temporaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('missions-temporaires', 'fr', 'missions temporaires');
            PERFORM insert_category_translations('missions-temporaires', 'ar', 'مهام مؤقتة');
            PERFORM insert_category_translations('missions-temporaires', 'en', 'Temporary missions');
            PERFORM insert_category_translations('missions-temporaires', 'de', 'Zeitlich befristete Einsätze');
            PERFORM insert_category_translations('missions-temporaires', 'es', 'Misiones temporales');
            PERFORM insert_category_translations('missions-temporaires', 'it', 'Missioni temporanee');
END $$;