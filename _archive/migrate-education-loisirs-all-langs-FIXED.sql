-- Migration script for Education & Loisirs category
-- Handles full 3-level hierarchy with 6 languages (FR, EN, AR, DE, ES, IT)
-- Uses idempotent operations to prevent duplicates

DO $$
DECLARE
    root_id UUID;
    -- Level 1 IDs
    cours_id UUID;
    livres_id UUID;
    arts_id UUID;
    sports_id UUID;
    enfance_id UUID;
    clubs_id UUID;
    -- Level 2 IDs (Cours & Formations)
    cours_part_id UUID;
    soutien_id UUID;
    prep_exam_id UUID;
    form_pro_id UUID;
    ateliers_ped_id UUID;
    form_online_id UUID;
    -- Level 2 IDs (Livres & Supports)
    livres_scol_id UUID;
    manuels_univ_id UUID;
    romans_id UUID;
    bd_mangas_id UUID;
    encyclo_id UUID;
    docs_ped_id UUID;
    -- Level 2 IDs (Arts & Musique)
    instruments_id UUID;
    cours_chant_id UUID;
    peinture_id UUID;
    materiel_art_id UUID;
    ateliers_creat_id UUID;
    oeuvres_id UUID;
    -- Level 2 IDs (Sports & Loisirs)
    equip_sport_id UUID;
    salles_id UUID;
    danse_arts_id UUID;
    outdoor_id UUID;
    camping_id UUID;
    jeux_soc_id UUID;
    -- Level 2 IDs (Enfance & Activités)
    jouets_educ_id UUID;
    jeux_eveil_id UUID;
    parascolaire_id UUID;
    ateliers_enf_id UUID;
    anim_anniv_id UUID;
    colonies_id UUID;
    -- Level 2 IDs (Clubs & Associations)
    clubs_sport_id UUID;
    asso_cult_id UUID;
    ateliers_comm_id UUID;
    clubs_lect_id UUID;
    event_educ_id UUID;
    conf_id UUID;

BEGIN
    -- Helper function to insert category with translations
    -- (Logic embedded directly to ensure portability)

    -- 1. Root Category: Education & Loisirs
    INSERT INTO categories (id, slug, level)
    VALUES ('education-loisirs', 'education-loisirs', 0)
    ON CONFLICT (id) DO NOTHING;

    -- Translations for Root
    INSERT INTO category_translations (category_id, language, name)
    VALUES
    ('education-loisirs', 'fr', 'Sport, Éducation & Loisirs'),
    ('education-loisirs', 'en', 'Sport, Education & Leisure'),
    ('education-loisirs', 'ar', 'الرياضة، التعليم والترفيه'),
    ('education-loisirs', 'de', 'Sport, Bildung & Freizeit'),
    ('education-loisirs', 'es', 'Deporte, Educación y Ocio'),
    ('education-loisirs', 'it', 'Sport, Educazione & Tempo Libero')
    ON CONFLICT (category_id, language) DO UPDATE SET name = EXCLUDED.name;


    -- ==========================================
    -- LEVEL 1: Cours & Formations
    -- ==========================================
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('cours-formations', 'cours-formations', 'education-loisirs', 1)
    ON CONFLICT (id) DO NOTHING;

    INSERT INTO category_translations (category_id, language, name)
    VALUES
    ('cours-formations', 'fr', 'Cours & Formations'),
    ('cours-formations', 'en', 'Courses & Training'),
    ('cours-formations', 'ar', 'الدورات والتكوين'),
    ('cours-formations', 'de', 'Kurse & Ausbildungen'),
    ('cours-formations', 'es', 'Cursos y Formaciones'),
    ('cours-formations', 'it', 'Corsi & Formazioni')
    ON CONFLICT (category_id, language) DO UPDATE SET name = EXCLUDED.name;

        -- Level 2: Cours particuliers
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('cours-particuliers', 'cours-particuliers', 'cours-formations', 2)
        ON CONFLICT (id) DO NOTHING;

        INSERT INTO category_translations (category_id, language, name)
        VALUES
        ('cours-particuliers', 'fr', 'Cours particuliers'),
        ('cours-particuliers', 'en', 'Private lessons'),
        ('cours-particuliers', 'ar', 'دروس خاصة'),
        ('cours-particuliers', 'de', 'Privatunterricht'),
        ('cours-particuliers', 'es', 'Clases particulares'),
        ('cours-particuliers', 'it', 'Lezioni private')
        ON CONFLICT (category_id, language) DO UPDATE SET name = EXCLUDED.name;

            -- Level 3
            PERFORM insert_category_with_translations('cours-maths', 'cours-maths', 'cours-particuliers', 3,
                '{"fr": "Maths", "en": "Mathematics", "ar": "رياضيات", "de": "Mathematik", "es": "Matemáticas", "it": "Matematica"}'::jsonb);
            PERFORM insert_category_with_translations('cours-sciences', 'cours-sciences', 'cours-particuliers', 3,
                '{"fr": "Sciences", "en": "Sciences", "ar": "علوم", "de": "Naturwissenschaften", "es": "Ciencias", "it": "Scienze"}'::jsonb);
            PERFORM insert_category_with_translations('cours-langues', 'cours-langues', 'cours-particuliers', 3,
                '{"fr": "Langues", "en": "Languages", "ar": "لغات", "de": "Sprachen", "es": "Idiomas", "it": "Lingue"}'::jsonb);

        -- Level 2: Soutien scolaire
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('soutien-scolaire', 'soutien-scolaire', 'cours-formations', 2)
        ON CONFLICT (id) DO NOTHING;

        INSERT INTO category_translations (category_id, language, name)
        VALUES
        ('soutien-scolaire', 'fr', 'Soutien scolaire'),
        ('soutien-scolaire', 'en', 'Tutoring'),
        ('soutien-scolaire', 'ar', 'دعم مدرسي'),
        ('soutien-scolaire', 'de', 'Nachhilfe'),
        ('soutien-scolaire', 'es', 'Apoyo escolar'),
        ('soutien-scolaire', 'it', 'Sostegno scolastico')
        ON CONFLICT (category_id, language) DO UPDATE SET name = EXCLUDED.name;

            -- Level 3
            PERFORM insert_category_with_translations('soutien-primaire', 'soutien-primaire', 'soutien-scolaire', 3,
                '{"fr": "Primaire", "en": "Primary school", "ar": "ابتدائي", "de": "Grundschule", "es": "Primaria", "it": "Primaria"}'::jsonb);
            PERFORM insert_category_with_translations('soutien-college', 'soutien-college', 'soutien-scolaire', 3,
                '{"fr": "Collège", "en": "Middle school", "ar": "متوسط", "de": "Sekundarstufe I", "es": "Secundaria", "it": "Medie"}'::jsonb);
            PERFORM insert_category_with_translations('soutien-lycee', 'soutien-lycee', 'soutien-scolaire', 3,
                '{"fr": "Lycée", "en": "High school", "ar": "ثانوي", "de": "Sekundarstufe II", "es": "Bachillerato", "it": "Superiori"}'::jsonb);

        -- Level 2: Préparation examens
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('preparation-examens', 'preparation-examens', 'cours-formations', 2)
        ON CONFLICT (id) DO NOTHING;

        INSERT INTO category_translations (category_id, language, name)
        VALUES
        ('preparation-examens', 'fr', 'Préparation examens (BEM/BAC)'),
        ('preparation-examens', 'en', 'Exam preparation (BEM/BAC)'),
        ('preparation-examens', 'ar', 'تحضير الامتحانات (BEM/BAC)'),
        ('preparation-examens', 'de', 'Prüfungsvorbereitung (BEM/BAC)'),
        ('preparation-examens', 'es', 'Preparación de exámenes (BEM/BAC)'),
        ('preparation-examens', 'it', 'Preparazione esami (BEM/BAC)')
        ON CONFLICT (category_id, language) DO UPDATE SET name = EXCLUDED.name;

            -- Level 3
            PERFORM insert_category_with_translations('prep-methodologie', 'prep-methodologie', 'preparation-examens', 3,
                '{"fr": "Méthodologie", "en": "Methodology", "ar": "منهجية", "de": "Methodik", "es": "Metodología", "it": "Metodologia"}'::jsonb);
            PERFORM insert_category_with_translations('prep-sujets-corriges', 'prep-sujets-corriges', 'preparation-examens', 3,
                '{"fr": "Sujets corrigés", "en": "Solved exams", "ar": "مواضيع مصححة", "de": "Übungsaufgaben", "es": "Exámenes resueltos", "it": "Prove svolte"}'::jsonb);
            PERFORM insert_category_with_translations('prep-coaching', 'prep-coaching', 'preparation-examens', 3,
                '{"fr": "Coaching", "en": "Coaching", "ar": "توجيه", "de": "Coaching", "es": "Coaching", "it": "Coaching"}'::jsonb);

        -- Level 2: Formations professionnelles
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('formations-professionnelles', 'formations-professionnelles', 'cours-formations', 2)
        ON CONFLICT (id) DO NOTHING;

        INSERT INTO category_translations (category_id, language, name)
        VALUES
        ('formations-professionnelles', 'fr', 'Formations professionnelles'),
        ('formations-professionnelles', 'en', 'Professional training'),
        ('formations-professionnelles', 'ar', 'تكوين مهني'),
        ('formations-professionnelles', 'de', 'Berufliche Weiterbildungen'),
        ('formations-professionnelles', 'es', 'Formaciones profesionales'),
        ('formations-professionnelles', 'it', 'Formazioni professionali')
        ON CONFLICT (category_id, language) DO UPDATE SET name = EXCLUDED.name;

            -- Level 3
            PERFORM insert_category_with_translations('form-informatique', 'form-informatique', 'formations-professionnelles', 3,
                '{"fr": "Informatique", "en": "IT", "ar": "إعلام آلي", "de": "Informatik", "es": "Informática", "it": "Informatica"}'::jsonb);
            PERFORM insert_category_with_translations('form-commerce', 'form-commerce', 'formations-professionnelles', 3,
                '{"fr": "Commerce", "en": "Business", "ar": "تجارة", "de": "Handel", "es": "Comercio", "it": "Commercio"}'::jsonb);
            PERFORM insert_category_with_translations('form-gestion', 'form-gestion', 'formations-professionnelles', 3,
                '{"fr": "Gestion", "en": "Management", "ar": "تسيير", "de": "Management", "es": "Gestión", "it": "Management"}'::jsonb);

        -- Level 2: Ateliers pédagogiques
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('ateliers-pedagogiques', 'ateliers-pedagogiques', 'cours-formations', 2)
        ON CONFLICT (id) DO NOTHING;

        INSERT INTO category_translations (category_id, language, name)
        VALUES
        ('ateliers-pedagogiques', 'fr', 'Ateliers pédagogiques'),
        ('ateliers-pedagogiques', 'en', 'Educational workshops'),
        ('ateliers-pedagogiques', 'ar', 'ورشات تربوية'),
        ('ateliers-pedagogiques', 'de', 'Pädagogische Workshops'),
        ('ateliers-pedagogiques', 'es', 'Talleres pedagógicos'),
        ('ateliers-pedagogiques', 'it', 'Laboratori pedagogici')
        ON CONFLICT (category_id, language) DO UPDATE SET name = EXCLUDED.name;

            -- Level 3
            PERFORM insert_category_with_translations('atelier-stem', 'atelier-stem', 'ateliers-pedagogiques', 3,
                '{"fr": "STEM", "en": "STEM", "ar": "STEM", "de": "MINT", "es": "STEM", "it": "STEM"}'::jsonb);
            PERFORM insert_category_with_translations('atelier-creativite', 'atelier-creativite', 'ateliers-pedagogiques', 3,
                '{"fr": "Créativité", "en": "Creativity", "ar": "إبداع", "de": "Kreativität", "es": "Creatividad", "it": "Creatività"}'::jsonb);
            PERFORM insert_category_with_translations('atelier-remediation', 'atelier-remediation', 'ateliers-pedagogiques', 3,
                '{"fr": "Remédiation", "en": "Remediation", "ar": "استدراك", "de": "Förderung", "es": "Refuerzo", "it": "Recupero"}'::jsonb);

        -- Level 2: Formations en ligne
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('formations-en-ligne', 'formations-en-ligne', 'cours-formations', 2)
        ON CONFLICT (id) DO NOTHING;

        INSERT INTO category_translations (category_id, language, name)
        VALUES
        ('formations-en-ligne', 'fr', 'Formations en ligne'),
        ('formations-en-ligne', 'en', 'Online courses'),
        ('formations-en-ligne', 'ar', 'تكوين عبر الإنترنت'),
        ('formations-en-ligne', 'de', 'Online-Schulungen'),
        ('formations-en-ligne', 'es', 'Formaciones en línea'),
        ('formations-en-ligne', 'it', 'Formazioni online')
        ON CONFLICT (category_id, language) DO UPDATE SET name = EXCLUDED.name;

            -- Level 3
            PERFORM insert_category_with_translations('online-mooc', 'online-mooc', 'formations-en-ligne', 3,
                '{"fr": "MOOC", "en": "MOOC", "ar": "MOOC", "de": "MOOCs", "es": "MOOC", "it": "MOOC"}'::jsonb);
            PERFORM insert_category_with_translations('online-certifications', 'online-certifications', 'formations-en-ligne', 3,
                '{"fr": "Certifications", "en": "Certifications", "ar": "شهادات", "de": "Zertifizierungen", "es": "Certificaciones", "it": "Certificazioni"}'::jsonb);
            PERFORM insert_category_with_translations('online-tutoriels', 'online-tutoriels', 'formations-en-ligne', 3,
                '{"fr": "Tutoriels", "en": "Tutorials", "ar": "دروس تعليمية", "de": "Tutorials", "es": "Tutoriales", "it": "Tutorial"}'::jsonb);


    -- ==========================================
    -- LEVEL 1: Livres & Supports Éducatifs
    -- ==========================================
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('livres-supports-educatifs', 'livres-supports-educatifs', 'education-loisirs', 1)
    ON CONFLICT (id) DO NOTHING;

    INSERT INTO category_translations (category_id, language, name)
    VALUES
    ('livres-supports-educatifs', 'fr', 'Livres & Supports Éducatifs'),
    ('livres-supports-educatifs', 'en', 'Books & Educational Materials'),
    ('livres-supports-educatifs', 'ar', 'كتب ومستلزمات تعليمية'),
    ('livres-supports-educatifs', 'de', 'Bücher & Lehrmaterialien'),
    ('livres-supports-educatifs', 'es', 'Libros y Material Educativo'),
    ('livres-supports-educatifs', 'it', 'Libri & Materiale Educativo')
    ON CONFLICT (category_id, language) DO UPDATE SET name = EXCLUDED.name;

        -- Level 2: Livres scolaires
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('livres-scolaires', 'livres-scolaires', 'livres-supports-educatifs', 2)
        ON CONFLICT (id) DO NOTHING;

        INSERT INTO category_translations (category_id, language, name)
        VALUES
        ('livres-scolaires', 'fr', 'Livres scolaires'),
        ('livres-scolaires', 'en', 'School books'),
        ('livres-scolaires', 'ar', 'كتب مدرسية'),
        ('livres-scolaires', 'de', 'Schulbücher'),
        ('livres-scolaires', 'es', 'Libros escolares'),
        ('livres-scolaires', 'it', 'Libri scolastici')
        ON CONFLICT (category_id, language) DO UPDATE SET name = EXCLUDED.name;

            -- Level 3
            PERFORM insert_category_with_translations('livres-primaire', 'livres-primaire', 'livres-scolaires', 3,
                '{"fr": "Primaire", "en": "Primary", "ar": "ابتدائي", "de": "Grundschule", "es": "Primaria", "it": "Primaria"}'::jsonb);
            PERFORM insert_category_with_translations('livres-college', 'livres-college', 'livres-scolaires', 3,
                '{"fr": "Collège", "en": "Middle School", "ar": "متوسط", "de": "Sekundarstufe I", "es": "Secundaria", "it": "Medie"}'::jsonb);
            PERFORM insert_category_with_translations('livres-lycee', 'livres-lycee', 'livres-scolaires', 3,
                '{"fr": "Lycée", "en": "High School", "ar": "ثانوي", "de": "Sekundarstufe II", "es": "Bachillerato", "it": "Superiori"}'::jsonb);

        -- Level 2: Manuels universitaires
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('manuels-universitaires', 'manuels-universitaires', 'livres-supports-educatifs', 2)
        ON CONFLICT (id) DO NOTHING;

        INSERT INTO category_translations (category_id, language, name)
        VALUES
        ('manuels-universitaires', 'fr', 'Manuels universitaires'),
        ('manuels-universitaires', 'en', 'University textbooks'),
        ('manuels-universitaires', 'ar', 'كتب جامعية'),
        ('manuels-universitaires', 'de', 'Universitätslehrbücher'),
        ('manuels-universitaires', 'es', 'Manuales universitarios'),
        ('manuels-universitaires', 'it', 'Manuali universitari')
        ON CONFLICT (category_id, language) DO UPDATE SET name = EXCLUDED.name;

            -- Level 3
            PERFORM insert_category_with_translations('manuels-sciences', 'manuels-sciences', 'manuels-universitaires', 3,
                '{"fr": "Sciences", "en": "Sciences", "ar": "علوم", "de": "Wissenschaften", "es": "Ciencias", "it": "Scienze"}'::jsonb);
            PERFORM insert_category_with_translations('manuels-medecine', 'manuels-medecine', 'manuels-universitaires', 3,
                '{"fr": "Médecine", "en": "Medicine", "ar": "طب", "de": "Medizin", "es": "Medicina", "it": "Medicina"}'::jsonb);
            PERFORM insert_category_with_translations('manuels-droit', 'manuels-droit', 'manuels-universitaires', 3,
                '{"fr": "Droit", "en": "Law", "ar": "حقوق", "de": "Recht", "es": "Derecho", "it": "Giurisprudenza"}'::jsonb);

        -- Level 2: Romans
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('romans', 'romans', 'livres-supports-educatifs', 2)
        ON CONFLICT (id) DO NOTHING;

        INSERT INTO category_translations (category_id, language, name)
        VALUES
        ('romans', 'fr', 'Romans'),
        ('romans', 'en', 'Novels'),
        ('romans', 'ar', 'روايات'),
        ('romans', 'de', 'Romane'),
        ('romans', 'es', 'Novelas'),
        ('romans', 'it', 'Romanzi')
        ON CONFLICT (category_id, language) DO UPDATE SET name = EXCLUDED.name;

            -- Level 3
            PERFORM insert_category_with_translations('romans-contemporains', 'romans-contemporains', 'romans', 3,
                '{"fr": "Contemporains", "en": "Contemporary", "ar": "معاصرة", "de": "Zeitgenössisch", "es": "Contemporáneas", "it": "Contemporanei"}'::jsonb);
            PERFORM insert_category_with_translations('romans-classiques', 'romans-classiques', 'romans', 3,
                '{"fr": "Classiques", "en": "Classics", "ar": "كلاسيكية", "de": "Klassiker", "es": "Clásicos", "it": "Classici"}'::jsonb);
            PERFORM insert_category_with_translations('romans-jeunesse', 'romans-jeunesse', 'romans', 3,
                '{"fr": "Jeunesse", "en": "Youth", "ar": "شباب", "de": "Jugend", "es": "Juveniles", "it": "Giovani"}'::jsonb);

        -- Level 2: BD & Mangas
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('bd-mangas', 'bd-mangas', 'livres-supports-educatifs', 2)
        ON CONFLICT (id) DO NOTHING;

        INSERT INTO category_translations (category_id, language, name)
        VALUES
        ('bd-mangas', 'fr', 'BD & Mangas'),
        ('bd-mangas', 'en', 'Comics & Manga'),
        ('bd-mangas', 'ar', 'قصص مصورة ومانغا'),
        ('bd-mangas', 'de', 'Comics & Manga'),
        ('bd-mangas', 'es', 'Cómics y Manga'),
        ('bd-mangas', 'it', 'Fumetti & Manga')
        ON CONFLICT (category_id, language) DO UPDATE SET name = EXCLUDED.name;

            -- Level 3
            PERFORM insert_category_with_translations('bd-franco-belge', 'bd-franco-belge', 'bd-mangas', 3,
                '{"fr": "Franco-belge", "en": "Franco-Belgian", "ar": "فرنكو-بلجيكية", "de": "Franco-belgisch", "es": "Franco-belga", "it": "Franco-belga"}'::jsonb);
            PERFORM insert_category_with_translations('mangas', 'mangas', 'bd-mangas', 3,
                '{"fr": "Mangas", "en": "Manga", "ar": "مانغا", "de": "Manga", "es": "Manga", "it": "Manga"}'::jsonb);
            PERFORM insert_category_with_translations('comics', 'comics', 'bd-mangas', 3,
                '{"fr": "Comics", "en": "Comics", "ar": "كوميكس", "de": "Comics", "es": "Cómics", "it": "Comics"}'::jsonb);

        -- Level 2: Encyclopédies
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('encyclopedies', 'encyclopedies', 'livres-supports-educatifs', 2)
        ON CONFLICT (id) DO NOTHING;

        INSERT INTO category_translations (category_id, language, name)
        VALUES
        ('encyclopedies', 'fr', 'Encyclopédies'),
        ('encyclopedies', 'en', 'Encyclopedias'),
        ('encyclopedies', 'ar', 'موسوعات'),
        ('encyclopedies', 'de', 'Enzyklopädien'),
        ('encyclopedies', 'es', 'Enciclopedias'),
        ('encyclopedies', 'it', 'Enciclopedie')
        ON CONFLICT (category_id, language) DO UPDATE SET name = EXCLUDED.name;

            -- Level 3
            PERFORM insert_category_with_translations('encyclopedies-generalistes', 'encyclopedies-generalistes', 'encyclopedies', 3,
                '{"fr": "Généralistes", "en": "General", "ar": "عامة", "de": "Allgemein", "es": "Generales", "it": "Generali"}'::jsonb);
            PERFORM insert_category_with_translations('encyclopedies-specialisees', 'encyclopedies-specialisees', 'encyclopedies', 3,
                '{"fr": "Spécialisées", "en": "Specialized", "ar": "متخصصة", "de": "Spezialisiert", "es": "Especializadas", "it": "Specializzate"}'::jsonb);
            PERFORM insert_category_with_translations('encyclopedies-enfants', 'encyclopedies-enfants', 'encyclopedies', 3,
                '{"fr": "Enfants", "en": "Children", "ar": "أطفال", "de": "Kinder", "es": "Infantiles", "it": "Bambini"}'::jsonb);

        -- Level 2: Documents pédagogiques
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('documents-pedagogiques', 'documents-pedagogiques', 'livres-supports-educatifs', 2)
        ON CONFLICT (id) DO NOTHING;

        INSERT INTO category_translations (category_id, language, name)
        VALUES
        ('documents-pedagogiques', 'fr', 'Documents pédagogiques'),
        ('documents-pedagogiques', 'en', 'Educational documents'),
        ('documents-pedagogiques', 'ar', 'وثائق تربوية'),
        ('documents-pedagogiques', 'de', 'Lehrunterlagen'),
        ('documents-pedagogiques', 'es', 'Documentos pedagógicos'),
        ('documents-pedagogiques', 'it', 'Documenti didattici')
        ON CONFLICT (category_id, language) DO UPDATE SET name = EXCLUDED.name;

            -- Level 3
            PERFORM insert_category_with_translations('docs-fiches', 'docs-fiches', 'documents-pedagogiques', 3,
                '{"fr": "Fiches", "en": "Worksheets", "ar": "بطاقات", "de": "Arbeitsblätter", "es": "Fichas", "it": "Schede"}'::jsonb);
            PERFORM insert_category_with_translations('docs-exercices', 'docs-exercices', 'documents-pedagogiques', 3,
                '{"fr": "Exercices", "en": "Exercises", "ar": "تمارين", "de": "Übungen", "es": "Ejercicios", "it": "Esercizi"}'::jsonb);
            PERFORM insert_category_with_translations('docs-cours', 'docs-cours', 'documents-pedagogiques', 3,
                '{"fr": "Cours", "en": "Lessons", "ar": "دروس", "de": "Unterricht", "es": "Lecciones", "it": "Lezioni"}'::jsonb);


    -- ==========================================
    -- LEVEL 1: Arts & Musique
    -- ==========================================
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('arts-musique', 'arts-musique', 'education-loisirs', 1)
    ON CONFLICT (id) DO NOTHING;

    INSERT INTO category_translations (category_id, language, name)
    VALUES
    ('arts-musique', 'fr', 'Arts & Musique'),
    ('arts-musique', 'en', 'Arts & Music'),
    ('arts-musique', 'ar', 'فنون وموسيقى'),
    ('arts-musique', 'de', 'Kunst & Musik'),
    ('arts-musique', 'es', 'Artes y Música'),
    ('arts-musique', 'it', 'Arti & Musica')
    ON CONFLICT (category_id, language) DO UPDATE SET name = EXCLUDED.name;

        -- Level 2: Instruments de musique
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('instruments-musique', 'instruments-musique', 'arts-musique', 2)
        ON CONFLICT (id) DO NOTHING;

        INSERT INTO category_translations (category_id, language, name)
        VALUES
        ('instruments-musique', 'fr', 'Instruments de musique'),
        ('instruments-musique', 'en', 'Musical instruments'),
        ('instruments-musique', 'ar', 'آلات موسيقية'),
        ('instruments-musique', 'de', 'Musikinstrumente'),
        ('instruments-musique', 'es', 'Instrumentos musicales'),
        ('instruments-musique', 'it', 'Strumenti musicali')
        ON CONFLICT (category_id, language) DO UPDATE SET name = EXCLUDED.name;

            -- Level 3
            PERFORM insert_category_with_translations('guitare', 'guitare', 'instruments-musique', 3,
                '{"fr": "Guitare", "en": "Guitar", "ar": "غيتار", "de": "Gitarre", "es": "Guitarra", "it": "Chitarra"}'::jsonb);
            PERFORM insert_category_with_translations('piano', 'piano', 'instruments-musique', 3,
                '{"fr": "Piano", "en": "Piano", "ar": "بيانو", "de": "Klavier", "es": "Piano", "it": "Pianoforte"}'::jsonb);
            PERFORM insert_category_with_translations('percussion', 'percussion', 'instruments-musique', 3,
                '{"fr": "Percussion", "en": "Percussion", "ar": "إيقاع", "de": "Perkussion", "es": "Percusión", "it": "Percussioni"}'::jsonb);

        -- Level 2: Cours de chant
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('cours-chant', 'cours-chant', 'arts-musique', 2)
        ON CONFLICT (id) DO NOTHING;

        INSERT INTO category_translations (category_id, language, name)
        VALUES
        ('cours-chant', 'fr', 'Cours de chant'),
        ('cours-chant', 'en', 'Singing lessons'),
        ('cours-chant', 'ar', 'دروس غناء'),
        ('cours-chant', 'de', 'Gesangsunterricht'),
        ('cours-chant', 'es', 'Clases de canto'),
        ('cours-chant', 'it', 'Lezioni di canto')
        ON CONFLICT (category_id, language) DO UPDATE SET name = EXCLUDED.name;

            -- Level 3
            PERFORM insert_category_with_translations('chant-debutant', 'chant-debutant', 'cours-chant', 3,
                '{"fr": "Débutant", "en": "Beginner", "ar": "مبتدئ", "de": "Anfänger", "es": "Principiante", "it": "Principiante"}'::jsonb);
            PERFORM insert_category_with_translations('chant-avance', 'chant-avance', 'cours-chant', 3,
                '{"fr": "Avancé", "en": "Advanced", "ar": "متقدم", "de": "Fortgeschritten", "es": "Avanzado", "it": "Avanzato"}'::jsonb);
            PERFORM insert_category_with_translations('chant-chorale', 'chant-chorale', 'cours-chant', 3,
                '{"fr": "Chorale", "en": "Choir", "ar": "جوقة", "de": "Chor", "es": "Coral", "it": "Coro"}'::jsonb);

        -- Level 2: Peinture & Dessin
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('peinture-dessin', 'peinture-dessin', 'arts-musique', 2)
        ON CONFLICT (id) DO NOTHING;

        INSERT INTO category_translations (category_id, language, name)
        VALUES
        ('peinture-dessin', 'fr', 'Peinture & Dessin'),
        ('peinture-dessin', 'en', 'Painting & Drawing'),
        ('peinture-dessin', 'ar', 'رسم وتلوين'),
        ('peinture-dessin', 'de', 'Malerei & Zeichnen'),
        ('peinture-dessin', 'es', 'Pintura y Dibujo'),
        ('peinture-dessin', 'it', 'Pittura & Disegno')
        ON CONFLICT (category_id, language) DO UPDATE SET name = EXCLUDED.name;

            -- Level 3
            PERFORM insert_category_with_translations('aquarelle', 'aquarelle', 'peinture-dessin', 3,
                '{"fr": "Aquarelle", "en": "Watercolor", "ar": "ألوان مائية", "de": "Aquarell", "es": "Acuarela", "it": "Acquerello"}'::jsonb);
            PERFORM insert_category_with_translations('peinture-huile', 'peinture-huile', 'peinture-dessin', 3,
                '{"fr": "Huile", "en": "Oil", "ar": "زيتي", "de": "Öl", "es": "Óleo", "it": "Olio"}'::jsonb);
            PERFORM insert_category_with_translations('croquis', 'croquis', 'peinture-dessin', 3,
                '{"fr": "Croquis", "en": "Sketching", "ar": "تخطيط", "de": "Skizzieren", "es": "Bocetos", "it": "Schizzi"}'::jsonb);

        -- Level 2: Matériel artistique
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('materiel-artistique', 'materiel-artistique', 'arts-musique', 2)
        ON CONFLICT (id) DO NOTHING;

        INSERT INTO category_translations (category_id, language, name)
        VALUES
        ('materiel-artistique', 'fr', 'Matériel artistique'),
        ('materiel-artistique', 'en', 'Art supplies'),
        ('materiel-artistique', 'ar', 'مستلزمات فنية'),
        ('materiel-artistique', 'de', 'Künstlerbedarf'),
        ('materiel-artistique', 'es', 'Material artístico'),
        ('materiel-artistique', 'it', 'Materiale artistico')
        ON CONFLICT (category_id, language) DO UPDATE SET name = EXCLUDED.name;

            -- Level 3
            PERFORM insert_category_with_translations('pinceaux', 'pinceaux', 'materiel-artistique', 3,
                '{"fr": "Pinceaux", "en": "Brushes", "ar": "فرش", "de": "Pinsel", "es": "Pinceles", "it": "Pennelli"}'::jsonb);
            PERFORM insert_category_with_translations('toiles', 'toiles', 'materiel-artistique', 3,
                '{"fr": "Toiles", "en": "Canvases", "ar": "لوحات", "de": "Leinwände", "es": "Lienzos", "it": "Tele"}'::jsonb);
            PERFORM insert_category_with_translations('pigments', 'pigments', 'materiel-artistique', 3,
                '{"fr": "Pigments", "en": "Pigments", "ar": "أصباغ", "de": "Pigmente", "es": "Pigmentos", "it": "Pigmenti"}'::jsonb);

        -- Level 2: Ateliers créatifs
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('ateliers-creatifs', 'ateliers-creatifs', 'arts-musique', 2)
        ON CONFLICT (id) DO NOTHING;

        INSERT INTO category_translations (category_id, language, name)
        VALUES
        ('ateliers-creatifs', 'fr', 'Ateliers créatifs'),
        ('ateliers-creatifs', 'en', 'Creative workshops'),
        ('ateliers-creatifs', 'ar', 'ورشات إبداعية'),
        ('ateliers-creatifs', 'de', 'Kreativ-Workshops'),
        ('ateliers-creatifs', 'es', 'Talleres creativos'),
        ('ateliers-creatifs', 'it', 'Laboratori creativi')
        ON CONFLICT (category_id, language) DO UPDATE SET name = EXCLUDED.name;

            -- Level 3
            PERFORM insert_category_with_translations('poterie', 'poterie', 'ateliers-creatifs', 3,
                '{"fr": "Poterie", "en": "Pottery", "ar": "فخار", "de": "Töpferei", "es": "Cerámica", "it": "Ceramica"}'::jsonb);
            PERFORM insert_category_with_translations('artisanat-creatif', 'artisanat-creatif', 'ateliers-creatifs', 3,
                '{"fr": "Artisanat", "en": "Crafts", "ar": "حرف يدوية", "de": "Handwerk", "es": "Artesanía", "it": "Artigianato"}'::jsonb);
            PERFORM insert_category_with_translations('mosaique', 'mosaique', 'ateliers-creatifs', 3,
                '{"fr": "Mosaïque", "en": "Mosaic", "ar": "فسيفساء", "de": "Mosaik", "es": "Mosaico", "it": "Mosaico"}'::jsonb);

        -- Level 2: Œuvres d'art
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('oeuvres-art', 'oeuvres-art', 'arts-musique', 2)
        ON CONFLICT (id) DO NOTHING;

        INSERT INTO category_translations (category_id, language, name)
        VALUES
        ('oeuvres-art', 'fr', 'Œuvres d''art'),
        ('oeuvres-art', 'en', 'Artworks'),
        ('oeuvres-art', 'ar', 'أعمال فنية'),
        ('oeuvres-art', 'de', 'Kunstwerke'),
        ('oeuvres-art', 'es', 'Obras de arte'),
        ('oeuvres-art', 'it', 'Opere d''arte')
        ON CONFLICT (category_id, language) DO UPDATE SET name = EXCLUDED.name;

            -- Level 3
            PERFORM insert_category_with_translations('tableaux', 'tableaux', 'oeuvres-art', 3,
                '{"fr": "Tableaux", "en": "Paintings", "ar": "لوحات", "de": "Gemälde", "es": "Cuadros", "it": "Quadri"}'::jsonb);
            PERFORM insert_category_with_translations('sculptures', 'sculptures', 'oeuvres-art', 3,
                '{"fr": "Sculptures", "en": "Sculptures", "ar": "منحوتات", "de": "Skulpturen", "es": "Esculturas", "it": "Sculture"}'::jsonb);
            PERFORM insert_category_with_translations('photographies', 'photographies', 'oeuvres-art', 3,
                '{"fr": "Photographies", "en": "Photographs", "ar": "صور", "de": "Fotos", "es": "Fotos", "it": "Foto"}'::jsonb);


    -- ==========================================
    -- LEVEL 1: Sports & Loisirs
    -- ==========================================
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('sports-loisirs', 'sports-loisirs', 'education-loisirs', 1)
    ON CONFLICT (id) DO NOTHING;

    INSERT INTO category_translations (category_id, language, name)
    VALUES
    ('sports-loisirs', 'fr', 'Sports & Loisirs'),
    ('sports-loisirs', 'en', 'Sports & Leisure'),
    ('sports-loisirs', 'ar', 'رياضة وترفيه'),
    ('sports-loisirs', 'de', 'Sport & Freizeit'),
    ('sports-loisirs', 'es', 'Deportes y Ocio'),
    ('sports-loisirs', 'it', 'Sport & Tempo Libero')
    ON CONFLICT (category_id, language) DO UPDATE SET name = EXCLUDED.name;

        -- Level 2: Équipements sportifs
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('equipements-sportifs', 'equipements-sportifs', 'sports-loisirs', 2)
        ON CONFLICT (id) DO NOTHING;

        INSERT INTO category_translations (category_id, language, name)
        VALUES
        ('equipements-sportifs', 'fr', 'Équipements sportifs'),
        ('equipements-sportifs', 'en', 'Sports equipment'),
        ('equipements-sportifs', 'ar', 'معدات رياضية'),
        ('equipements-sportifs', 'de', 'Sportausrüstung'),
        ('equipements-sportifs', 'es', 'Equipamiento deportivo'),
        ('equipements-sportifs', 'it', 'Attrezzature sportive')
        ON CONFLICT (category_id, language) DO UPDATE SET name = EXCLUDED.name;

            -- Level 3
            PERFORM insert_category_with_translations('sport-football', 'sport-football', 'equipements-sportifs', 3,
                '{"fr": "Football", "en": "Football", "ar": "كرة قدم", "de": "Fußball", "es": "Fútbol", "it": "Calcio"}'::jsonb);
            PERFORM insert_category_with_translations('sport-fitness', 'sport-fitness', 'equipements-sportifs', 3,
                '{"fr": "Fitness", "en": "Fitness", "ar": "لياقة", "de": "Fitness", "es": "Fitness", "it": "Fitness"}'::jsonb);
            PERFORM insert_category_with_translations('sport-cyclisme', 'sport-cyclisme', 'equipements-sportifs', 3,
                '{"fr": "Cyclisme", "en": "Cycling", "ar": "ركوب دراجات", "de": "Radsport", "es": "Ciclismo", "it": "Ciclismo"}'::jsonb);

        -- Level 2: Salles de sport
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('salles-de-sport', 'salles-de-sport', 'sports-loisirs', 2)
        ON CONFLICT (id) DO NOTHING;

        INSERT INTO category_translations (category_id, language, name)
        VALUES
        ('salles-de-sport', 'fr', 'Salles de sport'),
        ('salles-de-sport', 'en', 'Gyms'),
        ('salles-de-sport', 'ar', 'قاعات رياضة'),
        ('salles-de-sport', 'de', 'Fitnessstudios'),
        ('salles-de-sport', 'es', 'Gimnasios'),
        ('salles-de-sport', 'it', 'Palestre')
        ON CONFLICT (category_id, language) DO UPDATE SET name = EXCLUDED.name;

            -- Level 3
            PERFORM insert_category_with_translations('salle-abonnements', 'salle-abonnements', 'salles-de-sport', 3,
                '{"fr": "Abonnements", "en": "Memberships", "ar": "اشتراكات", "de": "Mitgliedschaften", "es": "Suscripciones", "it": "Abbonamenti"}'::jsonb);
            PERFORM insert_category_with_translations('salle-coaching', 'salle-coaching', 'salles-de-sport', 3,
                '{"fr": "Coaching", "en": "Coaching", "ar": "تدريب", "de": "Coaching", "es": "Coaching", "it": "Coaching"}'::jsonb);
            PERFORM insert_category_with_translations('salle-cours-collectifs', 'salle-cours-collectifs', 'salles-de-sport', 3,
                '{"fr": "Cours collectifs", "en": "Group classes", "ar": "دروس جماعية", "de": "Gruppenkurse", "es": "Clases colectivas", "it": "Corsi di gruppo"}'::jsonb);

        -- Level 2: Cours de danse & arts martiaux
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('cours-danse-arts-martiaux', 'cours-danse-arts-martiaux', 'sports-loisirs', 2)
        ON CONFLICT (id) DO NOTHING;

        INSERT INTO category_translations (category_id, language, name)
        VALUES
        ('cours-danse-arts-martiaux', 'fr', 'Cours de danse & arts martiaux'),
        ('cours-danse-arts-martiaux', 'en', 'Dance & Martial Arts'),
        ('cours-danse-arts-martiaux', 'ar', 'رقص وفنون قتالية'),
        ('cours-danse-arts-martiaux', 'de', 'Tanz & Kampfkünste'),
        ('cours-danse-arts-martiaux', 'es', 'Danza y artes marciales'),
        ('cours-danse-arts-martiaux', 'it', 'Danza & arti marziali')
        ON CONFLICT (category_id, language) DO UPDATE SET name = EXCLUDED.name;

            -- Level 3
            PERFORM insert_category_with_translations('danse-orientale', 'danse-orientale', 'cours-danse-arts-martiaux', 3,
                '{"fr": "Danse orientale", "en": "Oriental dance", "ar": "رقص شرقي", "de": "Orientalischer Tanz", "es": "Danza oriental", "it": "Danza orientale"}'::jsonb);
            PERFORM insert_category_with_translations('hip-hop', 'hip-hop', 'cours-danse-arts-martiaux', 3,
                '{"fr": "Hip-hop", "en": "Hip-hop", "ar": "هيب هوب", "de": "Hip-Hop", "es": "Hip-hop", "it": "Hip-hop"}'::jsonb);
            PERFORM insert_category_with_translations('karate', 'karate', 'cours-danse-arts-martiaux', 3,
                '{"fr": "Karaté", "en": "Karate", "ar": "كاراتيه", "de": "Karate", "es": "Karate", "it": "Karate"}'::jsonb);

        -- Level 2: Activités outdoor
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('activites-outdoor', 'activites-outdoor', 'sports-loisirs', 2)
        ON CONFLICT (id) DO NOTHING;

        INSERT INTO category_translations (category_id, language, name)
        VALUES
        ('activites-outdoor', 'fr', 'Activités outdoor'),
        ('activites-outdoor', 'en', 'Outdoor activities'),
        ('activites-outdoor', 'ar', 'نشاطات خارجية'),
        ('activites-outdoor', 'de', 'Outdoor-Aktivitäten'),
        ('activites-outdoor', 'es', 'Actividades al aire libre'),
        ('activites-outdoor', 'it', 'Attività outdoor')
        ON CONFLICT (category_id, language) DO UPDATE SET name = EXCLUDED.name;

            -- Level 3
            PERFORM insert_category_with_translations('randonnee', 'randonnee', 'activites-outdoor', 3,
                '{"fr": "Randonnée", "en": "Hiking", "ar": "تجوال", "de": "Wandern", "es": "Senderismo", "it": "Trekking"}'::jsonb);
            PERFORM insert_category_with_translations('escalade', 'escalade', 'activites-outdoor', 3,
                '{"fr": "Escalade", "en": "Climbing", "ar": "تسلق", "de": "Klettern", "es": "Escalada", "it": "Arrampicata"}'::jsonb);
            PERFORM insert_category_with_translations('vtt', 'vtt', 'activites-outdoor', 3,
                '{"fr": "VTT", "en": "Mountain biking", "ar": "دراجات جبلية", "de": "Mountainbike", "es": "BTT", "it": "MTB"}'::jsonb);

        -- Level 2: Camping & Randonnée
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('camping-randonnee', 'camping-randonnee', 'sports-loisirs', 2)
        ON CONFLICT (id) DO NOTHING;

        INSERT INTO category_translations (category_id, language, name)
        VALUES
        ('camping-randonnee', 'fr', 'Camping & Randonnée'),
        ('camping-randonnee', 'en', 'Camping & Hiking'),
        ('camping-randonnee', 'ar', 'تخييم وتجوال'),
        ('camping-randonnee', 'de', 'Camping & Wandern'),
        ('camping-randonnee', 'es', 'Camping y senderismo'),
        ('camping-randonnee', 'it', 'Campeggio & trekking')
        ON CONFLICT (category_id, language) DO UPDATE SET name = EXCLUDED.name;

            -- Level 3
            PERFORM insert_category_with_translations('tentes', 'tentes', 'camping-randonnee', 3,
                '{"fr": "Tentes", "en": "Tents", "ar": "خيام", "de": "Zelte", "es": "Tiendas", "it": "Tende"}'::jsonb);
            PERFORM insert_category_with_translations('sacs-de-couchage', 'sacs-de-couchage', 'camping-randonnee', 3,
                '{"fr": "Sacs de couchage", "en": "Sleeping bags", "ar": "أكياس نوم", "de": "Schlafsäcke", "es": "Sacos de dormir", "it": "Sacchi a pelo"}'::jsonb);
            PERFORM insert_category_with_translations('accessoires-camping', 'accessoires-camping', 'camping-randonnee', 3,
                '{"fr": "Accessoires", "en": "Accessories", "ar": "إكسسوارات", "de": "Zubehör", "es": "Accesorios", "it": "Accessori"}'::jsonb);

        -- Level 2: Jeux de société
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('jeux-de-societe', 'jeux-de-societe', 'sports-loisirs', 2)
        ON CONFLICT (id) DO NOTHING;

        INSERT INTO category_translations (category_id, language, name)
        VALUES
        ('jeux-de-societe', 'fr', 'Jeux de société'),
        ('jeux-de-societe', 'en', 'Board games'),
        ('jeux-de-societe', 'ar', 'ألعاب لوحية'),
        ('jeux-de-societe', 'de', 'Brettspiele'),
        ('jeux-de-societe', 'es', 'Juegos de mesa'),
        ('jeux-de-societe', 'it', 'Giochi da tavolo')
        ON CONFLICT (category_id, language) DO UPDATE SET name = EXCLUDED.name;

            -- Level 3
            PERFORM insert_category_with_translations('jeux-strategie', 'jeux-strategie', 'jeux-de-societe', 3,
                '{"fr": "Stratégie", "en": "Strategy", "ar": "استراتيجية", "de": "Strategie", "es": "Estrategia", "it": "Strategia"}'::jsonb);
            PERFORM insert_category_with_translations('jeux-famille', 'jeux-famille', 'jeux-de-societe', 3,
                '{"fr": "Famille", "en": "Family", "ar": "عائلة", "de": "Familie", "es": "Familia", "it": "Famiglia"}'::jsonb);
            PERFORM insert_category_with_translations('jeux-cartes', 'jeux-cartes', 'jeux-de-societe', 3,
                '{"fr": "Cartes", "en": "Cards", "ar": "أوراق", "de": "Karten", "es": "Cartas", "it": "Carte"}'::jsonb);


    -- ==========================================
    -- LEVEL 1: Enfance & Activités Familiales
    -- ==========================================
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('enfance-activites-familiales', 'enfance-activites-familiales', 'education-loisirs', 1)
    ON CONFLICT (id) DO NOTHING;

    INSERT INTO category_translations (category_id, language, name)
    VALUES
    ('enfance-activites-familiales', 'fr', 'Enfance & Activités Familiales'),
    ('enfance-activites-familiales', 'en', 'Childhood & Family Activities'),
    ('enfance-activites-familiales', 'ar', 'طفولة وأنشطة عائلية'),
    ('enfance-activites-familiales', 'de', 'Kindheit & Familienaktivitäten'),
    ('enfance-activites-familiales', 'es', 'Infancia y Actividades Familiares'),
    ('enfance-activites-familiales', 'it', 'Infanzia & Attività Familiari')
    ON CONFLICT (category_id, language) DO UPDATE SET name = EXCLUDED.name;

        -- Level 2: Jouets éducatifs
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('jouets-educatifs', 'jouets-educatifs', 'enfance-activites-familiales', 2)
        ON CONFLICT (id) DO NOTHING;

        INSERT INTO category_translations (category_id, language, name)
        VALUES
        ('jouets-educatifs', 'fr', 'Jouets éducatifs'),
        ('jouets-educatifs', 'en', 'Educational toys'),
        ('jouets-educatifs', 'ar', 'ألعاب تعليمية'),
        ('jouets-educatifs', 'de', 'Lernspielzeug'),
        ('jouets-educatifs', 'es', 'Juguetes educativos'),
        ('jouets-educatifs', 'it', 'Giochi educativi')
        ON CONFLICT (category_id, language) DO UPDATE SET name = EXCLUDED.name;

            -- Level 3
            PERFORM insert_category_with_translations('jouets-montessori', 'jouets-montessori', 'jouets-educatifs', 3,
                '{"fr": "Montessori", "en": "Montessori", "ar": "مونتيسوري", "de": "Montessori", "es": "Montessori", "it": "Montessori"}'::jsonb);
            PERFORM insert_category_with_translations('jouets-puzzles', 'jouets-puzzles', 'jouets-educatifs', 3,
                '{"fr": "Puzzles", "en": "Puzzles", "ar": "ألغاز", "de": "Puzzle", "es": "Puzzles", "it": "Puzzle"}'::jsonb);
            PERFORM insert_category_with_translations('jouets-sciences', 'jouets-sciences', 'jouets-educatifs', 3,
                '{"fr": "Sciences", "en": "Science", "ar": "علوم", "de": "Wissenschaft", "es": "Ciencia", "it": "Scienza"}'::jsonb);

        -- Level 2: Jeux d'éveil
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('jeux-eveil', 'jeux-eveil', 'enfance-activites-familiales', 2)
        ON CONFLICT (id) DO NOTHING;

        INSERT INTO category_translations (category_id, language, name)
        VALUES
        ('jeux-eveil', 'fr', 'Jeux d''éveil'),
        ('jeux-eveil', 'en', 'Early learning games'),
        ('jeux-eveil', 'ar', 'ألعاب تنمية'),
        ('jeux-eveil', 'de', 'Frühförderungsspiele'),
        ('jeux-eveil', 'es', 'Juegos de estimulación'),
        ('jeux-eveil', 'it', 'Giochi di sviluppo')
        ON CONFLICT (category_id, language) DO UPDATE SET name = EXCLUDED.name;

            -- Level 3
            PERFORM insert_category_with_translations('eveil-0-12', 'eveil-0-12', 'jeux-eveil', 3,
                '{"fr": "0-12 mois", "en": "0-12 months", "ar": "0-12 شهر", "de": "0–12 Monate", "es": "0-12 meses", "it": "0-12 mesi"}'::jsonb);
            PERFORM insert_category_with_translations('eveil-1-3', 'eveil-1-3', 'jeux-eveil', 3,
                '{"fr": "1-3 ans", "en": "1-3 years", "ar": "1-3 سنوات", "de": "1–3 Jahre", "es": "1-3 años", "it": "1-3 anni"}'::jsonb);
            PERFORM insert_category_with_translations('eveil-3-6', 'eveil-3-6', 'jeux-eveil', 3,
                '{"fr": "3-6 ans", "en": "3-6 years", "ar": "3-6 سنوات", "de": "3–6 Jahre", "es": "3-6 años", "it": "3-6 anni"}'::jsonb);

        -- Level 2: Activités parascolaires
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('activites-parascolaires', 'activites-parascolaires', 'enfance-activites-familiales', 2)
        ON CONFLICT (id) DO NOTHING;

        INSERT INTO category_translations (category_id, language, name)
        VALUES
        ('activites-parascolaires', 'fr', 'Activités parascolaires'),
        ('activites-parascolaires', 'en', 'Extracurricular activities'),
        ('activites-parascolaires', 'ar', 'أنشطة لاصفية'),
        ('activites-parascolaires', 'de', 'Außerschulische Aktivitäten'),
        ('activites-parascolaires', 'es', 'Actividades extraescolares'),
        ('activites-parascolaires', 'it', 'Attività extrascolastiche')
        ON CONFLICT (category_id, language) DO UPDATE SET name = EXCLUDED.name;

            -- Level 3
            PERFORM insert_category_with_translations('parascolaire-clubs', 'parascolaire-clubs', 'activites-parascolaires', 3,
                '{"fr": "Clubs", "en": "Clubs", "ar": "نوادي", "de": "Schulklubs", "es": "Clubes escolares", "it": "Club scolastici"}'::jsonb);
            PERFORM insert_category_with_translations('parascolaire-sport', 'parascolaire-sport', 'activites-parascolaires', 3,
                '{"fr": "Sport", "en": "Sport", "ar": "رياضة", "de": "Sport", "es": "Deporte", "it": "Sport"}'::jsonb);
            PERFORM insert_category_with_translations('parascolaire-arts', 'parascolaire-arts', 'activites-parascolaires', 3,
                '{"fr": "Arts", "en": "Arts", "ar": "فنون", "de": "Kunst", "es": "Artes", "it": "Arti"}'::jsonb);

        -- Level 2: Ateliers enfants
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('ateliers-enfants', 'ateliers-enfants', 'enfance-activites-familiales', 2)
        ON CONFLICT (id) DO NOTHING;

        INSERT INTO category_translations (category_id, language, name)
        VALUES
        ('ateliers-enfants', 'fr', 'Ateliers enfants'),
        ('ateliers-enfants', 'en', 'Children''s workshops'),
        ('ateliers-enfants', 'ar', 'ورشات أطفال'),
        ('ateliers-enfants', 'de', 'Kinderworkshops'),
        ('ateliers-enfants', 'es', 'Talleres para niños'),
        ('ateliers-enfants', 'it', 'Laboratori per bambini')
        ON CONFLICT (category_id, language) DO UPDATE SET name = EXCLUDED.name;

            -- Level 3
            PERFORM insert_category_with_translations('enfants-robotique', 'enfants-robotique', 'ateliers-enfants', 3,
                '{"fr": "Robotique", "en": "Robotics", "ar": "روبوتيك", "de": "Robotik", "es": "Robótica", "it": "Robotica"}'::jsonb);
            PERFORM insert_category_with_translations('enfants-coding', 'enfants-coding', 'ateliers-enfants', 3,
                '{"fr": "Coding", "en": "Coding", "ar": "برمجة", "de": "Coding", "es": "Programación", "it": "Coding"}'::jsonb);
            PERFORM insert_category_with_translations('enfants-cuisine', 'enfants-cuisine', 'ateliers-enfants', 3,
                '{"fr": "Cuisine", "en": "Cooking", "ar": "طبخ", "de": "Kochen", "es": "Cocina", "it": "Cucina"}'::jsonb);

        -- Level 2: Animations anniversaire
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('animations-anniversaire', 'animations-anniversaire', 'enfance-activites-familiales', 2)
        ON CONFLICT (id) DO NOTHING;

        INSERT INTO category_translations (category_id, language, name)
        VALUES
        ('animations-anniversaire', 'fr', 'Animations anniversaire'),
        ('animations-anniversaire', 'en', 'Birthday animations'),
        ('animations-anniversaire', 'ar', 'تنشيط أعياد الميلاد'),
        ('animations-anniversaire', 'de', 'Geburtstagsanimationen'),
        ('animations-anniversaire', 'es', 'Animaciones de cumpleaños'),
        ('animations-anniversaire', 'it', 'Animazioni di compleanno')
        ON CONFLICT (category_id, language) DO UPDATE SET name = EXCLUDED.name;

            -- Level 3
            PERFORM insert_category_with_translations('anniv-clowns', 'anniv-clowns', 'animations-anniversaire', 3,
                '{"fr": "Clowns", "en": "Clowns", "ar": "مهرجون", "de": "Clowns", "es": "Payasos", "it": "Clown"}'::jsonb);
            PERFORM insert_category_with_translations('anniv-magiciens', 'anniv-magiciens', 'animations-anniversaire', 3,
                '{"fr": "Magiciens", "en": "Magicians", "ar": "سحرة", "de": "Zauberer", "es": "Magos", "it": "Maghi"}'::jsonb);
            PERFORM insert_category_with_translations('anniv-decorations', 'anniv-decorations', 'animations-anniversaire', 3,
                '{"fr": "Décorations", "en": "Decorations", "ar": "زينة", "de": "Dekorationen", "es": "Decoraciones", "it": "Decorazioni"}'::jsonb);

        -- Level 2: Colonies de vacances
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('colonies-vacances', 'colonies-vacances', 'enfance-activites-familiales', 2)
        ON CONFLICT (id) DO NOTHING;

        INSERT INTO category_translations (category_id, language, name)
        VALUES
        ('colonies-vacances', 'fr', 'Colonies de vacances'),
        ('colonies-vacances', 'en', 'Summer camps'),
        ('colonies-vacances', 'ar', 'مخيمات صيفية'),
        ('colonies-vacances', 'de', 'Ferienlager'),
        ('colonies-vacances', 'es', 'Campamentos de verano'),
        ('colonies-vacances', 'it', 'Campi estivi')
        ON CONFLICT (category_id, language) DO UPDATE SET name = EXCLUDED.name;

            -- Level 3
            PERFORM insert_category_with_translations('colonies-mer', 'colonies-mer', 'colonies-vacances', 3,
                '{"fr": "Mer", "en": "Sea", "ar": "بحر", "de": "Meer", "es": "Mar", "it": "Mare"}'::jsonb);
            PERFORM insert_category_with_translations('colonies-montagne', 'colonies-montagne', 'colonies-vacances', 3,
                '{"fr": "Montagne", "en": "Mountain", "ar": "جبل", "de": "Berge", "es": "Montaña", "it": "Montagna"}'::jsonb);
            PERFORM insert_category_with_translations('colonies-culture', 'colonies-culture', 'colonies-vacances', 3,
                '{"fr": "Culture", "en": "Culture", "ar": "ثقافة", "de": "Kultur", "es": "Cultura", "it": "Cultura"}'::jsonb);


    -- ==========================================
    -- LEVEL 1: Clubs & Associations
    -- ==========================================
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('clubs-associations', 'clubs-associations', 'education-loisirs', 1)
    ON CONFLICT (id) DO NOTHING;

    INSERT INTO category_translations (category_id, language, name)
    VALUES
    ('clubs-associations', 'fr', 'Clubs & Associations'),
    ('clubs-associations', 'en', 'Clubs & Associations'),
    ('clubs-associations', 'ar', 'نوادي وجمعيات'),
    ('clubs-associations', 'de', 'Klubs & Vereine'),
    ('clubs-associations', 'es', 'Clubes y Asociaciones'),
    ('clubs-associations', 'it', 'Club & Associazioni')
    ON CONFLICT (category_id, language) DO UPDATE SET name = EXCLUDED.name;

        -- Level 2: Clubs sportifs
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('clubs-sportifs', 'clubs-sportifs', 'clubs-associations', 2)
        ON CONFLICT (id) DO NOTHING;

        INSERT INTO category_translations (category_id, language, name)
        VALUES
        ('clubs-sportifs', 'fr', 'Clubs sportifs'),
        ('clubs-sportifs', 'en', 'Sports clubs'),
        ('clubs-sportifs', 'ar', 'نوادي رياضية'),
        ('clubs-sportifs', 'de', 'Sportklubs'),
        ('clubs-sportifs', 'es', 'Clubes deportivos'),
        ('clubs-sportifs', 'it', 'Club sportivi')
        ON CONFLICT (category_id, language) DO UPDATE SET name = EXCLUDED.name;

            -- Level 3
            PERFORM insert_category_with_translations('club-football', 'club-football', 'clubs-sportifs', 3,
                '{"fr": "Football", "en": "Football", "ar": "كرة قدم", "de": "Fußball", "es": "Fútbol", "it": "Calcio"}'::jsonb);
            PERFORM insert_category_with_translations('club-judo', 'club-judo', 'clubs-sportifs', 3,
                '{"fr": "Judo", "en": "Judo", "ar": "جودو", "de": "Judo", "es": "Judo", "it": "Judo"}'::jsonb);
            PERFORM insert_category_with_translations('club-natation', 'club-natation', 'clubs-sportifs', 3,
                '{"fr": "Natation", "en": "Swimming", "ar": "سباحة", "de": "Schwimmen", "es": "Natación", "it": "Nuoto"}'::jsonb);

        -- Level 2: Associations culturelles
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('associations-culturelles', 'associations-culturelles', 'clubs-associations', 2)
        ON CONFLICT (id) DO NOTHING;

        INSERT INTO category_translations (category_id, language, name)
        VALUES
        ('associations-culturelles', 'fr', 'Associations culturelles'),
        ('associations-culturelles', 'en', 'Cultural associations'),
        ('associations-culturelles', 'ar', 'جمعيات ثقافية'),
        ('associations-culturelles', 'de', 'Kulturelle Vereine'),
        ('associations-culturelles', 'es', 'Asociaciones culturales'),
        ('associations-culturelles', 'it', 'Associazioni culturali')
        ON CONFLICT (category_id, language) DO UPDATE SET name = EXCLUDED.name;

            -- Level 3
            PERFORM insert_category_with_translations('asso-musique', 'asso-musique', 'associations-culturelles', 3,
                '{"fr": "Musique", "en": "Music", "ar": "موسيقى", "de": "Musik", "es": "Música", "it": "Musica"}'::jsonb);
            PERFORM insert_category_with_translations('asso-theatre', 'asso-theatre', 'associations-culturelles', 3,
                '{"fr": "Théâtre", "en": "Theater", "ar": "مسرح", "de": "Theater", "es": "Teatro", "it": "Teatro"}'::jsonb);
            PERFORM insert_category_with_translations('asso-patrimoine', 'asso-patrimoine', 'associations-culturelles', 3,
                '{"fr": "Patrimoine", "en": "Heritage", "ar": "تراث", "de": "Kulturerbe", "es": "Patrimonio", "it": "Patrimonio"}'::jsonb);

        -- Level 2: Ateliers communautaires
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('ateliers-communautaires', 'ateliers-communautaires', 'clubs-associations', 2)
        ON CONFLICT (id) DO NOTHING;

        INSERT INTO category_translations (category_id, language, name)
        VALUES
        ('ateliers-communautaires', 'fr', 'Ateliers communautaires'),
        ('ateliers-communautaires', 'en', 'Community workshops'),
        ('ateliers-communautaires', 'ar', 'ورشات مجتمعية'),
        ('ateliers-communautaires', 'de', 'Gemeinschaftsworkshops'),
        ('ateliers-communautaires', 'es', 'Talleres comunitarios'),
        ('ateliers-communautaires', 'it', 'Laboratori comunitari')
        ON CONFLICT (category_id, language) DO UPDATE SET name = EXCLUDED.name;

            -- Level 3
            PERFORM insert_category_with_translations('comm-solidarite', 'comm-solidarite', 'ateliers-communautaires', 3,
                '{"fr": "Solidarité", "en": "Solidarity", "ar": "تضامن", "de": "Solidarität", "es": "Solidaridad", "it": "Solidarietà"}'::jsonb);
            PERFORM insert_category_with_translations('comm-environnement', 'comm-environnement', 'ateliers-communautaires', 3,
                '{"fr": "Environnement", "en": "Environment", "ar": "بيئة", "de": "Umwelt", "es": "Medio ambiente", "it": "Ambiente"}'::jsonb);
            PERFORM insert_category_with_translations('comm-insertion', 'comm-insertion', 'ateliers-communautaires', 3,
                '{"fr": "Insertion", "en": "Integration", "ar": "إدماج", "de": "Integration", "es": "Inclusión", "it": "Inclusione"}'::jsonb);

        -- Level 2: Clubs de lecture
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('clubs-lecture', 'clubs-lecture', 'clubs-associations', 2)
        ON CONFLICT (id) DO NOTHING;

        INSERT INTO category_translations (category_id, language, name)
        VALUES
        ('clubs-lecture', 'fr', 'Clubs de lecture'),
        ('clubs-lecture', 'en', 'Book clubs'),
        ('clubs-lecture', 'ar', 'نوادي مطالعة'),
        ('clubs-lecture', 'de', 'Lesekreise'),
        ('clubs-lecture', 'es', 'Clubes de lectura'),
        ('clubs-lecture', 'it', 'Club di lettura')
        ON CONFLICT (category_id, language) DO UPDATE SET name = EXCLUDED.name;

            -- Level 3
            PERFORM insert_category_with_translations('lecture-adultes', 'lecture-adultes', 'clubs-lecture', 3,
                '{"fr": "Adultes", "en": "Adults", "ar": "كبار", "de": "Erwachsene", "es": "Adultos", "it": "Adulti"}'::jsonb);
            PERFORM insert_category_with_translations('lecture-jeunesse', 'lecture-jeunesse', 'clubs-lecture', 3,
                '{"fr": "Jeunesse", "en": "Youth", "ar": "شباب", "de": "Jugend", "es": "Juvenil", "it": "Giovani"}'::jsonb);
            PERFORM insert_category_with_translations('lecture-thematiques', 'lecture-thematiques', 'clubs-lecture', 3,
                '{"fr": "Thématiques", "en": "Thematic", "ar": "مواضيعية", "de": "Themenbezogen", "es": "Temáticos", "it": "Tematici"}'::jsonb);

        -- Level 2: Événements éducatifs
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('evenements-educatifs', 'evenements-educatifs', 'clubs-associations', 2)
        ON CONFLICT (id) DO NOTHING;

        INSERT INTO category_translations (category_id, language, name)
        VALUES
        ('evenements-educatifs', 'fr', 'Événements éducatifs'),
        ('evenements-educatifs', 'en', 'Educational events'),
        ('evenements-educatifs', 'ar', 'فعاليات تعليمية'),
        ('evenements-educatifs', 'de', 'Bildungsveranstaltungen'),
        ('evenements-educatifs', 'es', 'Eventos educativos'),
        ('evenements-educatifs', 'it', 'Eventi educativi')
        ON CONFLICT (category_id, language) DO UPDATE SET name = EXCLUDED.name;

            -- Level 3
            PERFORM insert_category_with_translations('edu-conferences', 'edu-conferences', 'evenements-educatifs', 3,
                '{"fr": "Conférences", "en": "Conferences", "ar": "محاضرات", "de": "Konferenzen", "es": "Conferencias", "it": "Conferenze"}'::jsonb);
            PERFORM insert_category_with_translations('edu-salons', 'edu-salons', 'evenements-educatifs', 3,
                '{"fr": "Salons", "en": "Fairs", "ar": "معارض", "de": "Messen", "es": "Ferias", "it": "Fiere"}'::jsonb);
            PERFORM insert_category_with_translations('edu-forums', 'edu-forums', 'evenements-educatifs', 3,
                '{"fr": "Forums", "en": "Forums", "ar": "منتديات", "de": "Foren", "es": "Foros", "it": "Forum"}'::jsonb);

        -- Level 2: Conférences
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('conferences', 'conferences', 'clubs-associations', 2)
        ON CONFLICT (id) DO NOTHING;

        INSERT INTO category_translations (category_id, language, name)
        VALUES
        ('conferences', 'fr', 'Conférences'),
        ('conferences', 'en', 'Conferences'),
        ('conferences', 'ar', 'مؤتمرات'),
        ('conferences', 'de', 'Konferenzen'),
        ('conferences', 'es', 'Conferencias'),
        ('conferences', 'it', 'Conferenze')
        ON CONFLICT (category_id, language) DO UPDATE SET name = EXCLUDED.name;

            -- Level 3
            PERFORM insert_category_with_translations('conf-academiques', 'conf-academiques', 'conferences', 3,
                '{"fr": "Académiques", "en": "Academic", "ar": "أكاديمية", "de": "Akademisch", "es": "Académicas", "it": "Accademiche"}'::jsonb);
            PERFORM insert_category_with_translations('conf-professionnelles', 'conf-professionnelles', 'conferences', 3,
                '{"fr": "Professionnelles", "en": "Professional", "ar": "مهنية", "de": "Professionell", "es": "Profesionales", "it": "Professionali"}'::jsonb);
            PERFORM insert_category_with_translations('conf-grand-public', 'conf-grand-public', 'conferences', 3,
                '{"fr": "Grand public", "en": "General public", "ar": "عامة", "de": "Öffentlich", "es": "Público general", "it": "Pubblico"}'::jsonb);

END $$;
