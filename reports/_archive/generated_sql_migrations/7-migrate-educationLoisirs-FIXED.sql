-- Migration: Éducation & Loisirs (Generated Recursive)
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

    -- Level 0: education-loisirs
    INSERT INTO categories (id, slug, level, name)
    VALUES ('education-loisirs', 'education-loisirs', 0, 'Sport, Éducation & Loisirs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 0, name = EXCLUDED.name
    RETURNING id INTO root_id;
    PERFORM insert_category_translations('education-loisirs', 'fr', 'Sport, Éducation & Loisirs');
    PERFORM insert_category_translations('education-loisirs', 'ar', 'الرياضة، التعليم والترفيه');
    PERFORM insert_category_translations('education-loisirs', 'en', 'Sport, Education & Leisure');
    PERFORM insert_category_translations('education-loisirs', 'de', 'Sport, Bildung & Freizeit');
    PERFORM insert_category_translations('education-loisirs', 'es', 'Deporte, Educación y Ocio');
    PERFORM insert_category_translations('education-loisirs', 'it', 'Sport, Educazione & Tempo Libero');

        -- Level 1: cours-formations
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cours-formations', 'cours-formations', 1, root_id, 'Cours & Formations')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('cours-formations', 'fr', 'Cours & Formations');
        PERFORM insert_category_translations('cours-formations', 'ar', 'الدورات والتكوين');
        PERFORM insert_category_translations('cours-formations', 'en', 'Courses & Training');
        PERFORM insert_category_translations('cours-formations', 'de', 'Kurse & Ausbildungen');
        PERFORM insert_category_translations('cours-formations', 'es', 'Cursos y Formaciones');
        PERFORM insert_category_translations('cours-formations', 'it', 'Corsi & Formazioni');

            -- Level 2: cours-particuliers
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cours-particuliers', 'cours-particuliers', 2, l1_id, 'cours particuliers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cours-particuliers', 'fr', 'cours particuliers');
            PERFORM insert_category_translations('cours-particuliers', 'ar', 'دروس خاصة');
            PERFORM insert_category_translations('cours-particuliers', 'en', 'private lessons');
            PERFORM insert_category_translations('cours-particuliers', 'de', 'Privatunterricht');
            PERFORM insert_category_translations('cours-particuliers', 'es', 'clases particulares');
            PERFORM insert_category_translations('cours-particuliers', 'it', 'lezioni private');

                -- Level 3: cours-maths
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cours-maths', 'cours-maths', 3, l2_id, 'maths')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('cours-maths', 'fr', 'maths');
                PERFORM insert_category_translations('cours-maths', 'ar', 'رياضيات');
                PERFORM insert_category_translations('cours-maths', 'en', 'mathematics');
                PERFORM insert_category_translations('cours-maths', 'de', 'Mathematik');
                PERFORM insert_category_translations('cours-maths', 'es', 'matemáticas');
                PERFORM insert_category_translations('cours-maths', 'it', 'matematica');

                -- Level 3: cours-sciences
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cours-sciences', 'cours-sciences', 3, l2_id, 'sciences')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('cours-sciences', 'fr', 'sciences');
                PERFORM insert_category_translations('cours-sciences', 'ar', 'علوم');
                PERFORM insert_category_translations('cours-sciences', 'en', 'science');
                PERFORM insert_category_translations('cours-sciences', 'de', 'Naturwissenschaften');
                PERFORM insert_category_translations('cours-sciences', 'es', 'ciencias');
                PERFORM insert_category_translations('cours-sciences', 'it', 'scienze');

                -- Level 3: cours-langues
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cours-langues', 'cours-langues', 3, l2_id, 'langues')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('cours-langues', 'fr', 'langues');
                PERFORM insert_category_translations('cours-langues', 'ar', 'لغات');
                PERFORM insert_category_translations('cours-langues', 'en', 'languages');
                PERFORM insert_category_translations('cours-langues', 'de', 'Sprachen');
                PERFORM insert_category_translations('cours-langues', 'es', 'idiomas');
                PERFORM insert_category_translations('cours-langues', 'it', 'lingue');

            -- Level 2: soutien-scolaire
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soutien-scolaire', 'soutien-scolaire', 2, l1_id, 'soutien scolaire')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('soutien-scolaire', 'fr', 'soutien scolaire');
            PERFORM insert_category_translations('soutien-scolaire', 'ar', 'دعم مدرسي');
            PERFORM insert_category_translations('soutien-scolaire', 'en', 'tutoring');
            PERFORM insert_category_translations('soutien-scolaire', 'de', 'Nachhilfe');
            PERFORM insert_category_translations('soutien-scolaire', 'es', 'apoyo escolar');
            PERFORM insert_category_translations('soutien-scolaire', 'it', 'sostegno scolastico');

                -- Level 3: soutien-primaire
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soutien-primaire', 'soutien-primaire', 3, l2_id, 'primaire')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('soutien-primaire', 'fr', 'primaire');
                PERFORM insert_category_translations('soutien-primaire', 'ar', 'ابتدائي');
                PERFORM insert_category_translations('soutien-primaire', 'en', 'primary');
                PERFORM insert_category_translations('soutien-primaire', 'de', 'Grundschule');
                PERFORM insert_category_translations('soutien-primaire', 'es', 'primaria');
                PERFORM insert_category_translations('soutien-primaire', 'it', 'primaria');

                -- Level 3: soutien-college
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soutien-college', 'soutien-college', 3, l2_id, 'collège')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('soutien-college', 'fr', 'collège');
                PERFORM insert_category_translations('soutien-college', 'ar', 'متوسط');
                PERFORM insert_category_translations('soutien-college', 'en', 'middle school');
                PERFORM insert_category_translations('soutien-college', 'de', 'Sekundarstufe I');
                PERFORM insert_category_translations('soutien-college', 'es', 'secundaria');
                PERFORM insert_category_translations('soutien-college', 'it', 'medie');

                -- Level 3: soutien-lycee
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soutien-lycee', 'soutien-lycee', 3, l2_id, 'lycée')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('soutien-lycee', 'fr', 'lycée');
                PERFORM insert_category_translations('soutien-lycee', 'ar', 'ثانوي');
                PERFORM insert_category_translations('soutien-lycee', 'en', 'high school');
                PERFORM insert_category_translations('soutien-lycee', 'de', 'Sekundarstufe II');
                PERFORM insert_category_translations('soutien-lycee', 'es', 'bachillerato');
                PERFORM insert_category_translations('soutien-lycee', 'it', 'superiori');

            -- Level 2: preparation-examens
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('preparation-examens', 'preparation-examens', 2, l1_id, 'préparation examens (BEM/BAC)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('preparation-examens', 'fr', 'préparation examens (BEM/BAC)');
            PERFORM insert_category_translations('preparation-examens', 'ar', 'تحضير الامتحانات (BEM/BAC)');
            PERFORM insert_category_translations('preparation-examens', 'en', 'exam preparation (BEM/BAC)');
            PERFORM insert_category_translations('preparation-examens', 'de', 'Prüfungsvorbereitung (BEM/BAC)');
            PERFORM insert_category_translations('preparation-examens', 'es', 'preparación de exámenes (BEM/BAC)');
            PERFORM insert_category_translations('preparation-examens', 'it', 'preparazione esami (BEM/BAC)');

                -- Level 3: prep-methodologie
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('prep-methodologie', 'prep-methodologie', 3, l2_id, 'méthodologie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('prep-methodologie', 'fr', 'méthodologie');
                PERFORM insert_category_translations('prep-methodologie', 'ar', 'منهجية');
                PERFORM insert_category_translations('prep-methodologie', 'en', 'methodology');
                PERFORM insert_category_translations('prep-methodologie', 'de', 'Methodik');
                PERFORM insert_category_translations('prep-methodologie', 'es', 'metodología');
                PERFORM insert_category_translations('prep-methodologie', 'it', 'metodologia');

                -- Level 3: prep-sujets-corriges
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('prep-sujets-corriges', 'prep-sujets-corriges', 3, l2_id, 'sujets corrigés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('prep-sujets-corriges', 'fr', 'sujets corrigés');
                PERFORM insert_category_translations('prep-sujets-corriges', 'ar', 'مواضيع محلولة');
                PERFORM insert_category_translations('prep-sujets-corriges', 'en', 'past papers');
                PERFORM insert_category_translations('prep-sujets-corriges', 'de', 'Übungsaufgaben');
                PERFORM insert_category_translations('prep-sujets-corriges', 'es', 'exámenes resueltos');
                PERFORM insert_category_translations('prep-sujets-corriges', 'it', 'prove svolte');

                -- Level 3: prep-coaching
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('prep-coaching', 'prep-coaching', 3, l2_id, 'coaching')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('prep-coaching', 'fr', 'coaching');
                PERFORM insert_category_translations('prep-coaching', 'ar', 'توجيه');
                PERFORM insert_category_translations('prep-coaching', 'en', 'coaching');
                PERFORM insert_category_translations('prep-coaching', 'de', 'Coaching');
                PERFORM insert_category_translations('prep-coaching', 'es', 'coaching');
                PERFORM insert_category_translations('prep-coaching', 'it', 'coaching');

            -- Level 2: formations-professionnelles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('formations-professionnelles', 'formations-professionnelles', 2, l1_id, 'formations professionnelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('formations-professionnelles', 'fr', 'formations professionnelles');
            PERFORM insert_category_translations('formations-professionnelles', 'ar', 'تكوين مهني');
            PERFORM insert_category_translations('formations-professionnelles', 'en', 'professional training');
            PERFORM insert_category_translations('formations-professionnelles', 'de', 'Berufliche Weiterbildungen');
            PERFORM insert_category_translations('formations-professionnelles', 'es', 'formaciones profesionales');
            PERFORM insert_category_translations('formations-professionnelles', 'it', 'formazioni professionali');

                -- Level 3: form-informatique
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('form-informatique', 'form-informatique', 3, l2_id, 'informatique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('form-informatique', 'fr', 'informatique');
                PERFORM insert_category_translations('form-informatique', 'ar', 'إعلام آلي');
                PERFORM insert_category_translations('form-informatique', 'en', 'IT');
                PERFORM insert_category_translations('form-informatique', 'de', 'Informatik');
                PERFORM insert_category_translations('form-informatique', 'es', 'informática');
                PERFORM insert_category_translations('form-informatique', 'it', 'informatica');

                -- Level 3: form-commerce
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('form-commerce', 'form-commerce', 3, l2_id, 'commerce')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('form-commerce', 'fr', 'commerce');
                PERFORM insert_category_translations('form-commerce', 'ar', 'تجارة');
                PERFORM insert_category_translations('form-commerce', 'en', 'commerce');
                PERFORM insert_category_translations('form-commerce', 'de', 'Handel');
                PERFORM insert_category_translations('form-commerce', 'es', 'comercio');
                PERFORM insert_category_translations('form-commerce', 'it', 'commercio');

                -- Level 3: form-gestion
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('form-gestion', 'form-gestion', 3, l2_id, 'gestion')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('form-gestion', 'fr', 'gestion');
                PERFORM insert_category_translations('form-gestion', 'ar', 'تسيير');
                PERFORM insert_category_translations('form-gestion', 'en', 'management');
                PERFORM insert_category_translations('form-gestion', 'de', 'Management');
                PERFORM insert_category_translations('form-gestion', 'es', 'gestión');
                PERFORM insert_category_translations('form-gestion', 'it', 'management');

            -- Level 2: ateliers-pedagogiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ateliers-pedagogiques', 'ateliers-pedagogiques', 2, l1_id, 'ateliers pédagogiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ateliers-pedagogiques', 'fr', 'ateliers pédagogiques');
            PERFORM insert_category_translations('ateliers-pedagogiques', 'ar', 'ورشات تربوية');
            PERFORM insert_category_translations('ateliers-pedagogiques', 'en', 'educational workshops');
            PERFORM insert_category_translations('ateliers-pedagogiques', 'de', 'Pädagogische Workshops');
            PERFORM insert_category_translations('ateliers-pedagogiques', 'es', 'talleres pedagógicos');
            PERFORM insert_category_translations('ateliers-pedagogiques', 'it', 'laboratori pedagogici');

                -- Level 3: atelier-stem
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('atelier-stem', 'atelier-stem', 3, l2_id, 'STEM')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('atelier-stem', 'fr', 'STEM');
                PERFORM insert_category_translations('atelier-stem', 'ar', 'STEM');
                PERFORM insert_category_translations('atelier-stem', 'en', 'STEM');
                PERFORM insert_category_translations('atelier-stem', 'de', 'MINT');
                PERFORM insert_category_translations('atelier-stem', 'es', 'STEM');
                PERFORM insert_category_translations('atelier-stem', 'it', 'STEM');

                -- Level 3: atelier-creativite
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('atelier-creativite', 'atelier-creativite', 3, l2_id, 'créativité')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('atelier-creativite', 'fr', 'créativité');
                PERFORM insert_category_translations('atelier-creativite', 'ar', 'إبداع');
                PERFORM insert_category_translations('atelier-creativite', 'en', 'creativity');
                PERFORM insert_category_translations('atelier-creativite', 'de', 'Kreativität');
                PERFORM insert_category_translations('atelier-creativite', 'es', 'creatividad');
                PERFORM insert_category_translations('atelier-creativite', 'it', 'creatività');

                -- Level 3: atelier-remediation
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('atelier-remediation', 'atelier-remediation', 3, l2_id, 'remédiation')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('atelier-remediation', 'fr', 'remédiation');
                PERFORM insert_category_translations('atelier-remediation', 'ar', 'دعم');
                PERFORM insert_category_translations('atelier-remediation', 'en', 'remediation');
                PERFORM insert_category_translations('atelier-remediation', 'de', 'Förderung');
                PERFORM insert_category_translations('atelier-remediation', 'es', 'refuerzo');
                PERFORM insert_category_translations('atelier-remediation', 'it', 'recupero');

            -- Level 2: formations-en-ligne
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('formations-en-ligne', 'formations-en-ligne', 2, l1_id, 'formations en ligne')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('formations-en-ligne', 'fr', 'formations en ligne');
            PERFORM insert_category_translations('formations-en-ligne', 'ar', 'تكوين عبر الإنترنت');
            PERFORM insert_category_translations('formations-en-ligne', 'en', 'online training');
            PERFORM insert_category_translations('formations-en-ligne', 'de', 'Online-Schulungen');
            PERFORM insert_category_translations('formations-en-ligne', 'es', 'formaciones en línea');
            PERFORM insert_category_translations('formations-en-ligne', 'it', 'formazioni online');

                -- Level 3: online-mooc
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('online-mooc', 'online-mooc', 3, l2_id, 'MOOC')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('online-mooc', 'fr', 'MOOC');
                PERFORM insert_category_translations('online-mooc', 'ar', 'MOOC');
                PERFORM insert_category_translations('online-mooc', 'en', 'MOOCs');
                PERFORM insert_category_translations('online-mooc', 'de', 'MOOCs');
                PERFORM insert_category_translations('online-mooc', 'es', 'MOOC');
                PERFORM insert_category_translations('online-mooc', 'it', 'MOOC');

                -- Level 3: online-certifications
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('online-certifications', 'online-certifications', 3, l2_id, 'certifications')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('online-certifications', 'fr', 'certifications');
                PERFORM insert_category_translations('online-certifications', 'ar', 'شهادات');
                PERFORM insert_category_translations('online-certifications', 'en', 'certifications');
                PERFORM insert_category_translations('online-certifications', 'de', 'Zertifizierungen');
                PERFORM insert_category_translations('online-certifications', 'es', 'certificaciones');
                PERFORM insert_category_translations('online-certifications', 'it', 'certificazioni');

                -- Level 3: online-tutoriels
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('online-tutoriels', 'online-tutoriels', 3, l2_id, 'tutoriels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('online-tutoriels', 'fr', 'tutoriels');
                PERFORM insert_category_translations('online-tutoriels', 'ar', 'شروحات');
                PERFORM insert_category_translations('online-tutoriels', 'en', 'tutorials');
                PERFORM insert_category_translations('online-tutoriels', 'de', 'Tutorials');
                PERFORM insert_category_translations('online-tutoriels', 'es', 'tutoriales');
                PERFORM insert_category_translations('online-tutoriels', 'it', 'tutorial');

        -- Level 1: livres-supports-educatifs
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('livres-supports-educatifs', 'livres-supports-educatifs', 1, root_id, 'Livres & Supports Éducatifs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('livres-supports-educatifs', 'fr', 'Livres & Supports Éducatifs');
        PERFORM insert_category_translations('livres-supports-educatifs', 'ar', 'كتب ومواد تعليمية');
        PERFORM insert_category_translations('livres-supports-educatifs', 'en', 'Books & Educational Materials');
        PERFORM insert_category_translations('livres-supports-educatifs', 'de', 'Bücher & Lehrmaterialien');
        PERFORM insert_category_translations('livres-supports-educatifs', 'es', 'Libros y Material Educativo');
        PERFORM insert_category_translations('livres-supports-educatifs', 'it', 'Libri & Materiale Educativo');

            -- Level 2: livres-scolaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('livres-scolaires', 'livres-scolaires', 2, l1_id, 'livres scolaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('livres-scolaires', 'fr', 'livres scolaires');
            PERFORM insert_category_translations('livres-scolaires', 'ar', 'كتب مدرسية');
            PERFORM insert_category_translations('livres-scolaires', 'en', 'school books');
            PERFORM insert_category_translations('livres-scolaires', 'de', 'Schulbücher');
            PERFORM insert_category_translations('livres-scolaires', 'es', 'libros escolares');
            PERFORM insert_category_translations('livres-scolaires', 'it', 'libri scolastici');

                -- Level 3: livres-primaire
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('livres-primaire', 'livres-primaire', 3, l2_id, 'primaire')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('livres-primaire', 'fr', 'primaire');
                PERFORM insert_category_translations('livres-primaire', 'ar', 'ابتدائي');
                PERFORM insert_category_translations('livres-primaire', 'en', 'primary');
                PERFORM insert_category_translations('livres-primaire', 'de', 'Grundschule');
                PERFORM insert_category_translations('livres-primaire', 'es', 'primaria');
                PERFORM insert_category_translations('livres-primaire', 'it', 'primaria');

                -- Level 3: livres-college
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('livres-college', 'livres-college', 3, l2_id, 'collège')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('livres-college', 'fr', 'collège');
                PERFORM insert_category_translations('livres-college', 'ar', 'متوسط');
                PERFORM insert_category_translations('livres-college', 'en', 'middle school');
                PERFORM insert_category_translations('livres-college', 'de', 'Sekundarstufe I');
                PERFORM insert_category_translations('livres-college', 'es', 'secundaria');
                PERFORM insert_category_translations('livres-college', 'it', 'medie');

                -- Level 3: livres-lycee
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('livres-lycee', 'livres-lycee', 3, l2_id, 'lycée')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('livres-lycee', 'fr', 'lycée');
                PERFORM insert_category_translations('livres-lycee', 'ar', 'ثانوي');
                PERFORM insert_category_translations('livres-lycee', 'en', 'high school');
                PERFORM insert_category_translations('livres-lycee', 'de', 'Sekundarstufe II');
                PERFORM insert_category_translations('livres-lycee', 'es', 'bachillerato');
                PERFORM insert_category_translations('livres-lycee', 'it', 'superiori');

            -- Level 2: manuels-universitaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('manuels-universitaires', 'manuels-universitaires', 2, l1_id, 'manuels universitaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('manuels-universitaires', 'fr', 'manuels universitaires');
            PERFORM insert_category_translations('manuels-universitaires', 'ar', 'مراجع جامعية');
            PERFORM insert_category_translations('manuels-universitaires', 'en', 'university textbooks');
            PERFORM insert_category_translations('manuels-universitaires', 'de', 'Universitätslehrbücher');
            PERFORM insert_category_translations('manuels-universitaires', 'es', 'manuales universitarios');
            PERFORM insert_category_translations('manuels-universitaires', 'it', 'manuali universitari');

                -- Level 3: manuels-sciences
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('manuels-sciences', 'manuels-sciences', 3, l2_id, 'sciences')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('manuels-sciences', 'fr', 'sciences');
                PERFORM insert_category_translations('manuels-sciences', 'ar', 'علوم');
                PERFORM insert_category_translations('manuels-sciences', 'en', 'science');
                PERFORM insert_category_translations('manuels-sciences', 'de', 'Wissenschaften');
                PERFORM insert_category_translations('manuels-sciences', 'es', 'ciencias');
                PERFORM insert_category_translations('manuels-sciences', 'it', 'scienze');

                -- Level 3: manuels-medecine
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('manuels-medecine', 'manuels-medecine', 3, l2_id, 'médecine')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('manuels-medecine', 'fr', 'médecine');
                PERFORM insert_category_translations('manuels-medecine', 'ar', 'طب');
                PERFORM insert_category_translations('manuels-medecine', 'en', 'medicine');
                PERFORM insert_category_translations('manuels-medecine', 'de', 'Medizin');
                PERFORM insert_category_translations('manuels-medecine', 'es', 'medicina');
                PERFORM insert_category_translations('manuels-medecine', 'it', 'medicina');

                -- Level 3: manuels-droit
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('manuels-droit', 'manuels-droit', 3, l2_id, 'droit')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('manuels-droit', 'fr', 'droit');
                PERFORM insert_category_translations('manuels-droit', 'ar', 'قانون');
                PERFORM insert_category_translations('manuels-droit', 'en', 'law');
                PERFORM insert_category_translations('manuels-droit', 'de', 'Recht');
                PERFORM insert_category_translations('manuels-droit', 'es', 'derecho');
                PERFORM insert_category_translations('manuels-droit', 'it', 'giurisprudenza');

            -- Level 2: romans
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('romans', 'romans', 2, l1_id, 'romans')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('romans', 'fr', 'romans');
            PERFORM insert_category_translations('romans', 'ar', 'روايات');
            PERFORM insert_category_translations('romans', 'en', 'novels');
            PERFORM insert_category_translations('romans', 'de', 'Romane');
            PERFORM insert_category_translations('romans', 'es', 'novelas');
            PERFORM insert_category_translations('romans', 'it', 'romanzi');

                -- Level 3: romans-contemporains
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('romans-contemporains', 'romans-contemporains', 3, l2_id, 'contemporains')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('romans-contemporains', 'fr', 'contemporains');
                PERFORM insert_category_translations('romans-contemporains', 'ar', 'حديثة');
                PERFORM insert_category_translations('romans-contemporains', 'en', 'contemporary');
                PERFORM insert_category_translations('romans-contemporains', 'de', 'Zeitgenössisch');
                PERFORM insert_category_translations('romans-contemporains', 'es', 'contemporáneas');
                PERFORM insert_category_translations('romans-contemporains', 'it', 'contemporanei');

                -- Level 3: romans-classiques
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('romans-classiques', 'romans-classiques', 3, l2_id, 'classiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('romans-classiques', 'fr', 'classiques');
                PERFORM insert_category_translations('romans-classiques', 'ar', 'كلاسيكية');
                PERFORM insert_category_translations('romans-classiques', 'en', 'classics');
                PERFORM insert_category_translations('romans-classiques', 'de', 'Klassiker');
                PERFORM insert_category_translations('romans-classiques', 'es', 'clásicos');
                PERFORM insert_category_translations('romans-classiques', 'it', 'classici');

                -- Level 3: romans-jeunesse
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('romans-jeunesse', 'romans-jeunesse', 3, l2_id, 'jeunesse')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('romans-jeunesse', 'fr', 'jeunesse');
                PERFORM insert_category_translations('romans-jeunesse', 'ar', 'شباب');
                PERFORM insert_category_translations('romans-jeunesse', 'en', 'young adult');
                PERFORM insert_category_translations('romans-jeunesse', 'de', 'Jugend');
                PERFORM insert_category_translations('romans-jeunesse', 'es', 'juveniles');
                PERFORM insert_category_translations('romans-jeunesse', 'it', 'giovani');

            -- Level 2: bd-mangas
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bd-mangas', 'bd-mangas', 2, l1_id, 'BD & mangas')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bd-mangas', 'fr', 'BD & mangas');
            PERFORM insert_category_translations('bd-mangas', 'ar', 'كوميكس ومانغا');
            PERFORM insert_category_translations('bd-mangas', 'en', 'comics & manga');
            PERFORM insert_category_translations('bd-mangas', 'de', 'Comics & Manga');
            PERFORM insert_category_translations('bd-mangas', 'es', 'cómics y manga');
            PERFORM insert_category_translations('bd-mangas', 'it', 'fumetti & manga');

                -- Level 3: bd-franco-belge
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bd-franco-belge', 'bd-franco-belge', 3, l2_id, 'BD franco-belge')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('bd-franco-belge', 'fr', 'BD franco-belge');
                PERFORM insert_category_translations('bd-franco-belge', 'ar', 'فرانكو-بلجيكي');
                PERFORM insert_category_translations('bd-franco-belge', 'en', 'franco-belgian');
                PERFORM insert_category_translations('bd-franco-belge', 'de', 'Franco-belgisch');
                PERFORM insert_category_translations('bd-franco-belge', 'es', 'franco-belga');
                PERFORM insert_category_translations('bd-franco-belge', 'it', 'franco-belga');

                -- Level 3: mangas
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mangas', 'mangas', 3, l2_id, 'mangas')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('mangas', 'fr', 'mangas');
                PERFORM insert_category_translations('mangas', 'ar', 'مانغا');
                PERFORM insert_category_translations('mangas', 'en', 'manga');
                PERFORM insert_category_translations('mangas', 'de', 'Manga');
                PERFORM insert_category_translations('mangas', 'es', 'manga');
                PERFORM insert_category_translations('mangas', 'it', 'manga');

                -- Level 3: comics
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('comics', 'comics', 3, l2_id, 'comics')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('comics', 'fr', 'comics');
                PERFORM insert_category_translations('comics', 'ar', 'كوميكس');
                PERFORM insert_category_translations('comics', 'en', 'comics');
                PERFORM insert_category_translations('comics', 'de', 'Comics');
                PERFORM insert_category_translations('comics', 'es', 'cómics');
                PERFORM insert_category_translations('comics', 'it', 'comics');

            -- Level 2: encyclopedies
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('encyclopedies', 'encyclopedies', 2, l1_id, 'encyclopédies')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('encyclopedies', 'fr', 'encyclopédies');
            PERFORM insert_category_translations('encyclopedies', 'ar', 'موسوعات');
            PERFORM insert_category_translations('encyclopedies', 'en', 'encyclopedias');
            PERFORM insert_category_translations('encyclopedies', 'de', 'Enzyklopädien');
            PERFORM insert_category_translations('encyclopedies', 'es', 'enciclopedias');
            PERFORM insert_category_translations('encyclopedies', 'it', 'enciclopedie');

                -- Level 3: encyclopedies-generalistes
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('encyclopedies-generalistes', 'encyclopedies-generalistes', 3, l2_id, 'généralistes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('encyclopedies-generalistes', 'fr', 'généralistes');
                PERFORM insert_category_translations('encyclopedies-generalistes', 'ar', 'عامة');
                PERFORM insert_category_translations('encyclopedies-generalistes', 'en', 'general');
                PERFORM insert_category_translations('encyclopedies-generalistes', 'de', 'Allgemein');
                PERFORM insert_category_translations('encyclopedies-generalistes', 'es', 'generales');
                PERFORM insert_category_translations('encyclopedies-generalistes', 'it', 'generali');

                -- Level 3: encyclopedies-specialisees
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('encyclopedies-specialisees', 'encyclopedies-specialisees', 3, l2_id, 'spécialisées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('encyclopedies-specialisees', 'fr', 'spécialisées');
                PERFORM insert_category_translations('encyclopedies-specialisees', 'ar', 'متخصصة');
                PERFORM insert_category_translations('encyclopedies-specialisees', 'en', 'specialized');
                PERFORM insert_category_translations('encyclopedies-specialisees', 'de', 'Spezialisiert');
                PERFORM insert_category_translations('encyclopedies-specialisees', 'es', 'especializadas');
                PERFORM insert_category_translations('encyclopedies-specialisees', 'it', 'specializzate');

                -- Level 3: encyclopedies-enfants
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('encyclopedies-enfants', 'encyclopedies-enfants', 3, l2_id, 'enfants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('encyclopedies-enfants', 'fr', 'enfants');
                PERFORM insert_category_translations('encyclopedies-enfants', 'ar', 'أطفال');
                PERFORM insert_category_translations('encyclopedies-enfants', 'en', 'children');
                PERFORM insert_category_translations('encyclopedies-enfants', 'de', 'Kinder');
                PERFORM insert_category_translations('encyclopedies-enfants', 'es', 'infantiles');
                PERFORM insert_category_translations('encyclopedies-enfants', 'it', 'bambini');

            -- Level 2: documents-pedagogiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('documents-pedagogiques', 'documents-pedagogiques', 2, l1_id, 'documents pédagogiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('documents-pedagogiques', 'fr', 'documents pédagogiques');
            PERFORM insert_category_translations('documents-pedagogiques', 'ar', 'وثائق تربوية');
            PERFORM insert_category_translations('documents-pedagogiques', 'en', 'educational documents');
            PERFORM insert_category_translations('documents-pedagogiques', 'de', 'Lehrunterlagen');
            PERFORM insert_category_translations('documents-pedagogiques', 'es', 'documentos pedagógicos');
            PERFORM insert_category_translations('documents-pedagogiques', 'it', 'documenti didattici');

                -- Level 3: docs-fiches
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('docs-fiches', 'docs-fiches', 3, l2_id, 'fiches')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('docs-fiches', 'fr', 'fiches');
                PERFORM insert_category_translations('docs-fiches', 'ar', 'ملفات');
                PERFORM insert_category_translations('docs-fiches', 'en', 'sheets');
                PERFORM insert_category_translations('docs-fiches', 'de', 'Arbeitsblätter');
                PERFORM insert_category_translations('docs-fiches', 'es', 'fichas');
                PERFORM insert_category_translations('docs-fiches', 'it', 'schede');

                -- Level 3: docs-exercices
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('docs-exercices', 'docs-exercices', 3, l2_id, 'exercices')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('docs-exercices', 'fr', 'exercices');
                PERFORM insert_category_translations('docs-exercices', 'ar', 'تمارين');
                PERFORM insert_category_translations('docs-exercices', 'en', 'exercises');
                PERFORM insert_category_translations('docs-exercices', 'de', 'Übungen');
                PERFORM insert_category_translations('docs-exercices', 'es', 'ejercicios');
                PERFORM insert_category_translations('docs-exercices', 'it', 'esercizi');

                -- Level 3: docs-cours
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('docs-cours', 'docs-cours', 3, l2_id, 'cours')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('docs-cours', 'fr', 'cours');
                PERFORM insert_category_translations('docs-cours', 'ar', 'دروس');
                PERFORM insert_category_translations('docs-cours', 'en', 'lessons');
                PERFORM insert_category_translations('docs-cours', 'de', 'Unterricht');
                PERFORM insert_category_translations('docs-cours', 'es', 'lecciones');
                PERFORM insert_category_translations('docs-cours', 'it', 'lezioni');

        -- Level 1: arts-musique
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('arts-musique', 'arts-musique', 1, root_id, 'Arts & Musique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('arts-musique', 'fr', 'Arts & Musique');
        PERFORM insert_category_translations('arts-musique', 'ar', 'الفنون والموسيقى');
        PERFORM insert_category_translations('arts-musique', 'en', 'Arts & Music');
        PERFORM insert_category_translations('arts-musique', 'de', 'Kunst & Musik');
        PERFORM insert_category_translations('arts-musique', 'es', 'Artes y Música');
        PERFORM insert_category_translations('arts-musique', 'it', 'Arti & Musica');

            -- Level 2: instruments-musique
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('instruments-musique', 'instruments-musique', 2, l1_id, 'instruments de musique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('instruments-musique', 'fr', 'instruments de musique');
            PERFORM insert_category_translations('instruments-musique', 'ar', 'آلات موسيقية');
            PERFORM insert_category_translations('instruments-musique', 'en', 'musical instruments');
            PERFORM insert_category_translations('instruments-musique', 'de', 'Musikinstrumente');
            PERFORM insert_category_translations('instruments-musique', 'es', 'instrumentos musicales');
            PERFORM insert_category_translations('instruments-musique', 'it', 'strumenti musicali');

                -- Level 3: guitare
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('guitare', 'guitare', 3, l2_id, 'guitare')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('guitare', 'fr', 'guitare');
                PERFORM insert_category_translations('guitare', 'ar', 'غيتار');
                PERFORM insert_category_translations('guitare', 'en', 'guitar');
                PERFORM insert_category_translations('guitare', 'de', 'Gitarre');
                PERFORM insert_category_translations('guitare', 'es', 'guitarra');
                PERFORM insert_category_translations('guitare', 'it', 'chitarra');

                -- Level 3: piano
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('piano', 'piano', 3, l2_id, 'piano')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('piano', 'fr', 'piano');
                PERFORM insert_category_translations('piano', 'ar', 'بيانو');
                PERFORM insert_category_translations('piano', 'en', 'piano');
                PERFORM insert_category_translations('piano', 'de', 'Klavier');
                PERFORM insert_category_translations('piano', 'es', 'piano');
                PERFORM insert_category_translations('piano', 'it', 'pianoforte');

                -- Level 3: percussion
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('percussion', 'percussion', 3, l2_id, 'percussion')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('percussion', 'fr', 'percussion');
                PERFORM insert_category_translations('percussion', 'ar', 'إيقاع');
                PERFORM insert_category_translations('percussion', 'en', 'percussion');
                PERFORM insert_category_translations('percussion', 'de', 'Perkussion');
                PERFORM insert_category_translations('percussion', 'es', 'percusión');
                PERFORM insert_category_translations('percussion', 'it', 'percussioni');

            -- Level 2: cours-chant
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cours-chant', 'cours-chant', 2, l1_id, 'cours de chant')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cours-chant', 'fr', 'cours de chant');
            PERFORM insert_category_translations('cours-chant', 'ar', 'دروس غناء');
            PERFORM insert_category_translations('cours-chant', 'en', 'singing lessons');
            PERFORM insert_category_translations('cours-chant', 'de', 'Gesangsunterricht');
            PERFORM insert_category_translations('cours-chant', 'es', 'clases de canto');
            PERFORM insert_category_translations('cours-chant', 'it', 'lezioni di canto');

                -- Level 3: chant-debutant
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chant-debutant', 'chant-debutant', 3, l2_id, 'débutant')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('chant-debutant', 'fr', 'débutant');
                PERFORM insert_category_translations('chant-debutant', 'ar', 'مبتدئ');
                PERFORM insert_category_translations('chant-debutant', 'en', 'beginner');
                PERFORM insert_category_translations('chant-debutant', 'de', 'Anfänger');
                PERFORM insert_category_translations('chant-debutant', 'es', 'principiante');
                PERFORM insert_category_translations('chant-debutant', 'it', 'principiante');

                -- Level 3: chant-avance
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chant-avance', 'chant-avance', 3, l2_id, 'avancé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('chant-avance', 'fr', 'avancé');
                PERFORM insert_category_translations('chant-avance', 'ar', 'متقدم');
                PERFORM insert_category_translations('chant-avance', 'en', 'advanced');
                PERFORM insert_category_translations('chant-avance', 'de', 'Fortgeschritten');
                PERFORM insert_category_translations('chant-avance', 'es', 'avanzado');
                PERFORM insert_category_translations('chant-avance', 'it', 'avanzato');

                -- Level 3: chant-chorale
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chant-chorale', 'chant-chorale', 3, l2_id, 'chorale')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('chant-chorale', 'fr', 'chorale');
                PERFORM insert_category_translations('chant-chorale', 'ar', 'جوقة');
                PERFORM insert_category_translations('chant-chorale', 'en', 'choir');
                PERFORM insert_category_translations('chant-chorale', 'de', 'Chor');
                PERFORM insert_category_translations('chant-chorale', 'es', 'coral');
                PERFORM insert_category_translations('chant-chorale', 'it', 'coro');

            -- Level 2: peinture-dessin
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('peinture-dessin', 'peinture-dessin', 2, l1_id, 'peinture & dessin')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('peinture-dessin', 'fr', 'peinture & dessin');
            PERFORM insert_category_translations('peinture-dessin', 'ar', 'رسم وتصوير');
            PERFORM insert_category_translations('peinture-dessin', 'en', 'painting & drawing');
            PERFORM insert_category_translations('peinture-dessin', 'de', 'Malerei & Zeichnen');
            PERFORM insert_category_translations('peinture-dessin', 'es', 'pintura y dibujo');
            PERFORM insert_category_translations('peinture-dessin', 'it', 'pittura & disegno');

                -- Level 3: aquarelle
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('aquarelle', 'aquarelle', 3, l2_id, 'aquarelle')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('aquarelle', 'fr', 'aquarelle');
                PERFORM insert_category_translations('aquarelle', 'ar', 'ألوان مائية');
                PERFORM insert_category_translations('aquarelle', 'en', 'watercolor');
                PERFORM insert_category_translations('aquarelle', 'de', 'Aquarell');
                PERFORM insert_category_translations('aquarelle', 'es', 'acuarela');
                PERFORM insert_category_translations('aquarelle', 'it', 'acquerello');

                -- Level 3: peinture-huile
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('peinture-huile', 'peinture-huile', 3, l2_id, 'huile')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('peinture-huile', 'fr', 'huile');
                PERFORM insert_category_translations('peinture-huile', 'ar', 'زيت');
                PERFORM insert_category_translations('peinture-huile', 'en', 'oil');
                PERFORM insert_category_translations('peinture-huile', 'de', 'Öl');
                PERFORM insert_category_translations('peinture-huile', 'es', 'óleo');
                PERFORM insert_category_translations('peinture-huile', 'it', 'olio');

                -- Level 3: croquis
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('croquis', 'croquis', 3, l2_id, 'croquis')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('croquis', 'fr', 'croquis');
                PERFORM insert_category_translations('croquis', 'ar', 'اسكتش');
                PERFORM insert_category_translations('croquis', 'en', 'sketching');
                PERFORM insert_category_translations('croquis', 'de', 'Skizzieren');
                PERFORM insert_category_translations('croquis', 'es', 'bocetos');
                PERFORM insert_category_translations('croquis', 'it', 'schizzi');

            -- Level 2: materiel-artistique
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('materiel-artistique', 'materiel-artistique', 2, l1_id, 'matériel artistique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('materiel-artistique', 'fr', 'matériel artistique');
            PERFORM insert_category_translations('materiel-artistique', 'ar', 'معدات فنية');
            PERFORM insert_category_translations('materiel-artistique', 'en', 'art supplies');
            PERFORM insert_category_translations('materiel-artistique', 'de', 'Künstlerbedarf');
            PERFORM insert_category_translations('materiel-artistique', 'es', 'material artístico');
            PERFORM insert_category_translations('materiel-artistique', 'it', 'materiale artistico');

                -- Level 3: pinceaux
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pinceaux', 'pinceaux', 3, l2_id, 'pinceaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('pinceaux', 'fr', 'pinceaux');
                PERFORM insert_category_translations('pinceaux', 'ar', 'فرش');
                PERFORM insert_category_translations('pinceaux', 'en', 'brushes');
                PERFORM insert_category_translations('pinceaux', 'de', 'Pinsel');
                PERFORM insert_category_translations('pinceaux', 'es', 'pinceles');
                PERFORM insert_category_translations('pinceaux', 'it', 'pennelli');

                -- Level 3: toiles
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('toiles', 'toiles', 3, l2_id, 'toiles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('toiles', 'fr', 'toiles');
                PERFORM insert_category_translations('toiles', 'ar', 'لوحات');
                PERFORM insert_category_translations('toiles', 'en', 'canvases');
                PERFORM insert_category_translations('toiles', 'de', 'Leinwände');
                PERFORM insert_category_translations('toiles', 'es', 'lienzos');
                PERFORM insert_category_translations('toiles', 'it', 'tele');

                -- Level 3: pigments
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pigments', 'pigments', 3, l2_id, 'pigments')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('pigments', 'fr', 'pigments');
                PERFORM insert_category_translations('pigments', 'ar', 'أصباغ');
                PERFORM insert_category_translations('pigments', 'en', 'pigments');
                PERFORM insert_category_translations('pigments', 'de', 'Pigmente');
                PERFORM insert_category_translations('pigments', 'es', 'pigmentos');
                PERFORM insert_category_translations('pigments', 'it', 'pigmenti');

            -- Level 2: ateliers-creatifs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ateliers-creatifs', 'ateliers-creatifs', 2, l1_id, 'ateliers créatifs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ateliers-creatifs', 'fr', 'ateliers créatifs');
            PERFORM insert_category_translations('ateliers-creatifs', 'ar', 'ورشات إبداعية');
            PERFORM insert_category_translations('ateliers-creatifs', 'en', 'creative workshops');
            PERFORM insert_category_translations('ateliers-creatifs', 'de', 'Kreativ-Workshops');
            PERFORM insert_category_translations('ateliers-creatifs', 'es', 'talleres creativos');
            PERFORM insert_category_translations('ateliers-creatifs', 'it', 'laboratori creativi');

                -- Level 3: poterie
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('poterie', 'poterie', 3, l2_id, 'poterie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('poterie', 'fr', 'poterie');
                PERFORM insert_category_translations('poterie', 'ar', 'خزف');
                PERFORM insert_category_translations('poterie', 'en', 'pottery');
                PERFORM insert_category_translations('poterie', 'de', 'Töpferei');
                PERFORM insert_category_translations('poterie', 'es', 'cerámica');
                PERFORM insert_category_translations('poterie', 'it', 'ceramica');

                -- Level 3: artisanat-creatif
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('artisanat-creatif', 'artisanat-creatif', 3, l2_id, 'artisanat')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('artisanat-creatif', 'fr', 'artisanat');
                PERFORM insert_category_translations('artisanat-creatif', 'ar', 'حرف');
                PERFORM insert_category_translations('artisanat-creatif', 'en', 'crafts');
                PERFORM insert_category_translations('artisanat-creatif', 'de', 'Handwerk');
                PERFORM insert_category_translations('artisanat-creatif', 'es', 'artesanía');
                PERFORM insert_category_translations('artisanat-creatif', 'it', 'artigianato');

                -- Level 3: mosaique
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mosaique', 'mosaique', 3, l2_id, 'mosaïque')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('mosaique', 'fr', 'mosaïque');
                PERFORM insert_category_translations('mosaique', 'ar', 'فسيفساء');
                PERFORM insert_category_translations('mosaique', 'en', 'mosaic');
                PERFORM insert_category_translations('mosaique', 'de', 'Mosaik');
                PERFORM insert_category_translations('mosaique', 'es', 'mosaico');
                PERFORM insert_category_translations('mosaique', 'it', 'mosaico');

            -- Level 2: oeuvres-art
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('oeuvres-art', 'oeuvres-art', 2, l1_id, 'œuvres d’art')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('oeuvres-art', 'fr', 'œuvres d’art');
            PERFORM insert_category_translations('oeuvres-art', 'ar', 'أعمال فنية');
            PERFORM insert_category_translations('oeuvres-art', 'en', 'artworks');
            PERFORM insert_category_translations('oeuvres-art', 'de', 'Kunstwerke');
            PERFORM insert_category_translations('oeuvres-art', 'es', 'obras de arte');
            PERFORM insert_category_translations('oeuvres-art', 'it', 'opere d’arte');

                -- Level 3: tableaux
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tableaux', 'tableaux', 3, l2_id, 'tableaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('tableaux', 'fr', 'tableaux');
                PERFORM insert_category_translations('tableaux', 'ar', 'لوحات');
                PERFORM insert_category_translations('tableaux', 'en', 'paintings');
                PERFORM insert_category_translations('tableaux', 'de', 'Gemälde');
                PERFORM insert_category_translations('tableaux', 'es', 'cuadros');
                PERFORM insert_category_translations('tableaux', 'it', 'quadri');

                -- Level 3: sculptures
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sculptures', 'sculptures', 3, l2_id, 'sculptures')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('sculptures', 'fr', 'sculptures');
                PERFORM insert_category_translations('sculptures', 'ar', 'منحوتات');
                PERFORM insert_category_translations('sculptures', 'en', 'sculptures');
                PERFORM insert_category_translations('sculptures', 'de', 'Skulpturen');
                PERFORM insert_category_translations('sculptures', 'es', 'esculturas');
                PERFORM insert_category_translations('sculptures', 'it', 'sculture');

                -- Level 3: photographies
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('photographies', 'photographies', 3, l2_id, 'photos')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('photographies', 'fr', 'photos');
                PERFORM insert_category_translations('photographies', 'ar', 'صور');
                PERFORM insert_category_translations('photographies', 'en', 'photos');
                PERFORM insert_category_translations('photographies', 'de', 'Fotos');
                PERFORM insert_category_translations('photographies', 'es', 'fotos');
                PERFORM insert_category_translations('photographies', 'it', 'foto');

        -- Level 1: sports-loisirs
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sports-loisirs', 'sports-loisirs', 1, root_id, 'Sports & Loisirs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('sports-loisirs', 'fr', 'Sports & Loisirs');
        PERFORM insert_category_translations('sports-loisirs', 'ar', 'الرياضة والترفيه');
        PERFORM insert_category_translations('sports-loisirs', 'en', 'Sports & Leisure');
        PERFORM insert_category_translations('sports-loisirs', 'de', 'Sport & Freizeit');
        PERFORM insert_category_translations('sports-loisirs', 'es', 'Deportes y Ocio');
        PERFORM insert_category_translations('sports-loisirs', 'it', 'Sport & Tempo Libero');

            -- Level 2: equipements-sportifs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('equipements-sportifs', 'equipements-sportifs', 2, l1_id, 'équipements sportifs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('equipements-sportifs', 'fr', 'équipements sportifs');
            PERFORM insert_category_translations('equipements-sportifs', 'ar', 'معدات رياضية');
            PERFORM insert_category_translations('equipements-sportifs', 'en', 'sports equipment');
            PERFORM insert_category_translations('equipements-sportifs', 'de', 'Sportausrüstung');
            PERFORM insert_category_translations('equipements-sportifs', 'es', 'equipamiento deportivo');
            PERFORM insert_category_translations('equipements-sportifs', 'it', 'attrezzature sportive');

                -- Level 3: sport-football
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sport-football', 'sport-football', 3, l2_id, 'football')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('sport-football', 'fr', 'football');
                PERFORM insert_category_translations('sport-football', 'ar', 'كرة قدم');
                PERFORM insert_category_translations('sport-football', 'en', 'football');
                PERFORM insert_category_translations('sport-football', 'de', 'Fußball');
                PERFORM insert_category_translations('sport-football', 'es', 'fútbol');
                PERFORM insert_category_translations('sport-football', 'it', 'calcio');

                -- Level 3: sport-fitness
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sport-fitness', 'sport-fitness', 3, l2_id, 'fitness')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('sport-fitness', 'fr', 'fitness');
                PERFORM insert_category_translations('sport-fitness', 'ar', 'لياقة');
                PERFORM insert_category_translations('sport-fitness', 'en', 'fitness');
                PERFORM insert_category_translations('sport-fitness', 'de', 'Fitness');
                PERFORM insert_category_translations('sport-fitness', 'es', 'fitness');
                PERFORM insert_category_translations('sport-fitness', 'it', 'fitness');

                -- Level 3: sport-cyclisme
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sport-cyclisme', 'sport-cyclisme', 3, l2_id, 'cyclisme')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('sport-cyclisme', 'fr', 'cyclisme');
                PERFORM insert_category_translations('sport-cyclisme', 'ar', 'دراجات');
                PERFORM insert_category_translations('sport-cyclisme', 'en', 'cycling');
                PERFORM insert_category_translations('sport-cyclisme', 'de', 'Radsport');
                PERFORM insert_category_translations('sport-cyclisme', 'es', 'ciclismo');
                PERFORM insert_category_translations('sport-cyclisme', 'it', 'ciclismo');

            -- Level 2: salles-de-sport
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('salles-de-sport', 'salles-de-sport', 2, l1_id, 'salles de sport')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('salles-de-sport', 'fr', 'salles de sport');
            PERFORM insert_category_translations('salles-de-sport', 'ar', 'قاعات رياضية');
            PERFORM insert_category_translations('salles-de-sport', 'en', 'gyms');
            PERFORM insert_category_translations('salles-de-sport', 'de', 'Fitnessstudios');
            PERFORM insert_category_translations('salles-de-sport', 'es', 'gimnasios');
            PERFORM insert_category_translations('salles-de-sport', 'it', 'palestre');

                -- Level 3: salle-abonnements
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('salle-abonnements', 'salle-abonnements', 3, l2_id, 'abonnements')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('salle-abonnements', 'fr', 'abonnements');
                PERFORM insert_category_translations('salle-abonnements', 'ar', 'اشتراكات');
                PERFORM insert_category_translations('salle-abonnements', 'en', 'subscriptions');
                PERFORM insert_category_translations('salle-abonnements', 'de', 'Mitgliedschaften');
                PERFORM insert_category_translations('salle-abonnements', 'es', 'suscripciones');
                PERFORM insert_category_translations('salle-abonnements', 'it', 'abbonamenti');

                -- Level 3: salle-coaching
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('salle-coaching', 'salle-coaching', 3, l2_id, 'coaching')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('salle-coaching', 'fr', 'coaching');
                PERFORM insert_category_translations('salle-coaching', 'ar', 'تدريب');
                PERFORM insert_category_translations('salle-coaching', 'en', 'coaching');
                PERFORM insert_category_translations('salle-coaching', 'de', 'Coaching');
                PERFORM insert_category_translations('salle-coaching', 'es', 'coaching');
                PERFORM insert_category_translations('salle-coaching', 'it', 'coaching');

                -- Level 3: salle-cours-collectifs
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('salle-cours-collectifs', 'salle-cours-collectifs', 3, l2_id, 'cours collectifs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('salle-cours-collectifs', 'fr', 'cours collectifs');
                PERFORM insert_category_translations('salle-cours-collectifs', 'ar', 'دروس جماعية');
                PERFORM insert_category_translations('salle-cours-collectifs', 'en', 'group classes');
                PERFORM insert_category_translations('salle-cours-collectifs', 'de', 'Gruppenkurse');
                PERFORM insert_category_translations('salle-cours-collectifs', 'es', 'clases colectivas');
                PERFORM insert_category_translations('salle-cours-collectifs', 'it', 'corsi di gruppo');

            -- Level 2: cours-danse-arts-martiaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cours-danse-arts-martiaux', 'cours-danse-arts-martiaux', 2, l1_id, 'cours de danse & arts martiaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cours-danse-arts-martiaux', 'fr', 'cours de danse & arts martiaux');
            PERFORM insert_category_translations('cours-danse-arts-martiaux', 'ar', 'رقص وفنون قتالية');
            PERFORM insert_category_translations('cours-danse-arts-martiaux', 'en', 'dance & martial arts');
            PERFORM insert_category_translations('cours-danse-arts-martiaux', 'de', 'Tanz & Kampfkünste');
            PERFORM insert_category_translations('cours-danse-arts-martiaux', 'es', 'danza y artes marciales');
            PERFORM insert_category_translations('cours-danse-arts-martiaux', 'it', 'danza & arti marziali');

                -- Level 3: danse-orientale
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('danse-orientale', 'danse-orientale', 3, l2_id, 'danse orientale')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('danse-orientale', 'fr', 'danse orientale');
                PERFORM insert_category_translations('danse-orientale', 'ar', 'رقص شرقي');
                PERFORM insert_category_translations('danse-orientale', 'en', 'oriental dance');
                PERFORM insert_category_translations('danse-orientale', 'de', 'Orientalischer Tanz');
                PERFORM insert_category_translations('danse-orientale', 'es', 'danza oriental');
                PERFORM insert_category_translations('danse-orientale', 'it', 'danza orientale');

                -- Level 3: hip-hop
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('hip-hop', 'hip-hop', 3, l2_id, 'hip-hop')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('hip-hop', 'fr', 'hip-hop');
                PERFORM insert_category_translations('hip-hop', 'ar', 'هيب هوب');
                PERFORM insert_category_translations('hip-hop', 'en', 'hip-hop');
                PERFORM insert_category_translations('hip-hop', 'de', 'Hip-Hop');
                PERFORM insert_category_translations('hip-hop', 'es', 'hip-hop');
                PERFORM insert_category_translations('hip-hop', 'it', 'hip-hop');

                -- Level 3: karate
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('karate', 'karate', 3, l2_id, 'karaté')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('karate', 'fr', 'karaté');
                PERFORM insert_category_translations('karate', 'ar', 'كاراتيه');
                PERFORM insert_category_translations('karate', 'en', 'karate');
                PERFORM insert_category_translations('karate', 'de', 'Karate');
                PERFORM insert_category_translations('karate', 'es', 'karate');
                PERFORM insert_category_translations('karate', 'it', 'karate');

            -- Level 2: activites-outdoor
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('activites-outdoor', 'activites-outdoor', 2, l1_id, 'activités outdoor')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('activites-outdoor', 'fr', 'activités outdoor');
            PERFORM insert_category_translations('activites-outdoor', 'ar', 'نشاطات خارجية');
            PERFORM insert_category_translations('activites-outdoor', 'en', 'outdoor activities');
            PERFORM insert_category_translations('activites-outdoor', 'de', 'Outdoor-Aktivitäten');
            PERFORM insert_category_translations('activites-outdoor', 'es', 'actividades al aire libre');
            PERFORM insert_category_translations('activites-outdoor', 'it', 'attività outdoor');

                -- Level 3: randonnee
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('randonnee', 'randonnee', 3, l2_id, 'randonnée')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('randonnee', 'fr', 'randonnée');
                PERFORM insert_category_translations('randonnee', 'ar', 'مشاة');
                PERFORM insert_category_translations('randonnee', 'en', 'hiking');
                PERFORM insert_category_translations('randonnee', 'de', 'Wandern');
                PERFORM insert_category_translations('randonnee', 'es', 'senderismo');
                PERFORM insert_category_translations('randonnee', 'it', 'trekking');

                -- Level 3: escalade
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('escalade', 'escalade', 3, l2_id, 'escalade')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('escalade', 'fr', 'escalade');
                PERFORM insert_category_translations('escalade', 'ar', 'تسلق');
                PERFORM insert_category_translations('escalade', 'en', 'climbing');
                PERFORM insert_category_translations('escalade', 'de', 'Klettern');
                PERFORM insert_category_translations('escalade', 'es', 'escalada');
                PERFORM insert_category_translations('escalade', 'it', 'arrampicata');

                -- Level 3: vtt
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vtt', 'vtt', 3, l2_id, 'VTT')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('vtt', 'fr', 'VTT');
                PERFORM insert_category_translations('vtt', 'ar', 'دراجات جبلية');
                PERFORM insert_category_translations('vtt', 'en', 'mountain biking');
                PERFORM insert_category_translations('vtt', 'de', 'Mountainbike');
                PERFORM insert_category_translations('vtt', 'es', 'BTT');
                PERFORM insert_category_translations('vtt', 'it', 'MTB');

            -- Level 2: camping-randonnee
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('camping-randonnee', 'camping-randonnee', 2, l1_id, 'camping & randonnée')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('camping-randonnee', 'fr', 'camping & randonnée');
            PERFORM insert_category_translations('camping-randonnee', 'ar', 'تخييم ومشي');
            PERFORM insert_category_translations('camping-randonnee', 'en', 'camping & hiking');
            PERFORM insert_category_translations('camping-randonnee', 'de', 'Camping & Wandern');
            PERFORM insert_category_translations('camping-randonnee', 'es', 'camping y senderismo');
            PERFORM insert_category_translations('camping-randonnee', 'it', 'campeggio & trekking');

                -- Level 3: tentes
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tentes', 'tentes', 3, l2_id, 'tentes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('tentes', 'fr', 'tentes');
                PERFORM insert_category_translations('tentes', 'ar', 'خيام');
                PERFORM insert_category_translations('tentes', 'en', 'tents');
                PERFORM insert_category_translations('tentes', 'de', 'Zelte');
                PERFORM insert_category_translations('tentes', 'es', 'tiendas');
                PERFORM insert_category_translations('tentes', 'it', 'tende');

                -- Level 3: sacs-de-couchage
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-de-couchage', 'sacs-de-couchage', 3, l2_id, 'sacs de couchage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('sacs-de-couchage', 'fr', 'sacs de couchage');
                PERFORM insert_category_translations('sacs-de-couchage', 'ar', 'أكياس نوم');
                PERFORM insert_category_translations('sacs-de-couchage', 'en', 'sleeping bags');
                PERFORM insert_category_translations('sacs-de-couchage', 'de', 'Schlafsäcke');
                PERFORM insert_category_translations('sacs-de-couchage', 'es', 'sacos de dormir');
                PERFORM insert_category_translations('sacs-de-couchage', 'it', 'sacchi a pelo');

                -- Level 3: accessoires-camping
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-camping', 'accessoires-camping', 3, l2_id, 'accessoires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('accessoires-camping', 'fr', 'accessoires');
                PERFORM insert_category_translations('accessoires-camping', 'ar', 'إكسسوارات');
                PERFORM insert_category_translations('accessoires-camping', 'en', 'accessories');
                PERFORM insert_category_translations('accessoires-camping', 'de', 'Zubehör');
                PERFORM insert_category_translations('accessoires-camping', 'es', 'accesorios');
                PERFORM insert_category_translations('accessoires-camping', 'it', 'accessori');

            -- Level 2: jeux-de-societe
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jeux-de-societe', 'jeux-de-societe', 2, l1_id, 'jeux de société')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('jeux-de-societe', 'fr', 'jeux de société');
            PERFORM insert_category_translations('jeux-de-societe', 'ar', 'ألعاب الطاولة');
            PERFORM insert_category_translations('jeux-de-societe', 'en', 'board games');
            PERFORM insert_category_translations('jeux-de-societe', 'de', 'Brettspiele');
            PERFORM insert_category_translations('jeux-de-societe', 'es', 'juegos de mesa');
            PERFORM insert_category_translations('jeux-de-societe', 'it', 'giochi da tavolo');

                -- Level 3: jeux-strategie
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jeux-strategie', 'jeux-strategie', 3, l2_id, 'stratégie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('jeux-strategie', 'fr', 'stratégie');
                PERFORM insert_category_translations('jeux-strategie', 'ar', 'استراتيجية');
                PERFORM insert_category_translations('jeux-strategie', 'en', 'strategy');
                PERFORM insert_category_translations('jeux-strategie', 'de', 'Strategie');
                PERFORM insert_category_translations('jeux-strategie', 'es', 'estrategia');
                PERFORM insert_category_translations('jeux-strategie', 'it', 'strategia');

                -- Level 3: jeux-famille
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jeux-famille', 'jeux-famille', 3, l2_id, 'famille')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('jeux-famille', 'fr', 'famille');
                PERFORM insert_category_translations('jeux-famille', 'ar', 'عائلية');
                PERFORM insert_category_translations('jeux-famille', 'en', 'family');
                PERFORM insert_category_translations('jeux-famille', 'de', 'Familie');
                PERFORM insert_category_translations('jeux-famille', 'es', 'familia');
                PERFORM insert_category_translations('jeux-famille', 'it', 'famiglia');

                -- Level 3: jeux-cartes
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jeux-cartes', 'jeux-cartes', 3, l2_id, 'cartes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('jeux-cartes', 'fr', 'cartes');
                PERFORM insert_category_translations('jeux-cartes', 'ar', 'بطاقات');
                PERFORM insert_category_translations('jeux-cartes', 'en', 'cards');
                PERFORM insert_category_translations('jeux-cartes', 'de', 'Karten');
                PERFORM insert_category_translations('jeux-cartes', 'es', 'cartas');
                PERFORM insert_category_translations('jeux-cartes', 'it', 'carte');

        -- Level 1: enfance-activites-familiales
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('enfance-activites-familiales', 'enfance-activites-familiales', 1, root_id, 'Enfance & Activités Familiales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('enfance-activites-familiales', 'fr', 'Enfance & Activités Familiales');
        PERFORM insert_category_translations('enfance-activites-familiales', 'ar', 'الطفولة والأنشطة العائلية');
        PERFORM insert_category_translations('enfance-activites-familiales', 'en', 'Childhood & Family Activities');
        PERFORM insert_category_translations('enfance-activites-familiales', 'de', 'Kindheit & Familienaktivitäten');
        PERFORM insert_category_translations('enfance-activites-familiales', 'es', 'Infancia y Actividades Familiares');
        PERFORM insert_category_translations('enfance-activites-familiales', 'it', 'Infanzia & Attività Familiari');

            -- Level 2: jouets-educatifs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jouets-educatifs', 'jouets-educatifs', 2, l1_id, 'jouets éducatifs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('jouets-educatifs', 'fr', 'jouets éducatifs');
            PERFORM insert_category_translations('jouets-educatifs', 'ar', 'ألعاب تعليمية');
            PERFORM insert_category_translations('jouets-educatifs', 'en', 'educational toys');
            PERFORM insert_category_translations('jouets-educatifs', 'de', 'Lernspielzeug');
            PERFORM insert_category_translations('jouets-educatifs', 'es', 'juguetes educativos');
            PERFORM insert_category_translations('jouets-educatifs', 'it', 'giochi educativi');

                -- Level 3: jouets-montessori
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jouets-montessori', 'jouets-montessori', 3, l2_id, 'Montessori')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('jouets-montessori', 'fr', 'Montessori');
                PERFORM insert_category_translations('jouets-montessori', 'ar', 'مونتيسوري');
                PERFORM insert_category_translations('jouets-montessori', 'en', 'Montessori');
                PERFORM insert_category_translations('jouets-montessori', 'de', 'Montessori');
                PERFORM insert_category_translations('jouets-montessori', 'es', 'Montessori');
                PERFORM insert_category_translations('jouets-montessori', 'it', 'Montessori');

                -- Level 3: jouets-puzzles
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jouets-puzzles', 'jouets-puzzles', 3, l2_id, 'puzzles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('jouets-puzzles', 'fr', 'puzzles');
                PERFORM insert_category_translations('jouets-puzzles', 'ar', 'ألغاز');
                PERFORM insert_category_translations('jouets-puzzles', 'en', 'puzzles');
                PERFORM insert_category_translations('jouets-puzzles', 'de', 'Puzzle');
                PERFORM insert_category_translations('jouets-puzzles', 'es', 'puzzles');
                PERFORM insert_category_translations('jouets-puzzles', 'it', 'puzzle');

                -- Level 3: jouets-sciences
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jouets-sciences', 'jouets-sciences', 3, l2_id, 'sciences')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('jouets-sciences', 'fr', 'sciences');
                PERFORM insert_category_translations('jouets-sciences', 'ar', 'علوم');
                PERFORM insert_category_translations('jouets-sciences', 'en', 'science');
                PERFORM insert_category_translations('jouets-sciences', 'de', 'Wissenschaft');
                PERFORM insert_category_translations('jouets-sciences', 'es', 'ciencia');
                PERFORM insert_category_translations('jouets-sciences', 'it', 'scienza');

            -- Level 2: jeux-eveil
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jeux-eveil', 'jeux-eveil', 2, l1_id, 'jeux d’éveil')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('jeux-eveil', 'fr', 'jeux d’éveil');
            PERFORM insert_category_translations('jeux-eveil', 'ar', 'ألعاب تنمية');
            PERFORM insert_category_translations('jeux-eveil', 'en', 'early learning games');
            PERFORM insert_category_translations('jeux-eveil', 'de', 'Frühförderungsspiele');
            PERFORM insert_category_translations('jeux-eveil', 'es', 'juegos de estimulación');
            PERFORM insert_category_translations('jeux-eveil', 'it', 'giochi di sviluppo');

                -- Level 3: eveil-0-12
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('eveil-0-12', 'eveil-0-12', 3, l2_id, '0-12 mois')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('eveil-0-12', 'fr', '0-12 mois');
                PERFORM insert_category_translations('eveil-0-12', 'ar', '0-12 شهرًا');
                PERFORM insert_category_translations('eveil-0-12', 'en', '0-12 months');
                PERFORM insert_category_translations('eveil-0-12', 'de', '0–12 Monate');
                PERFORM insert_category_translations('eveil-0-12', 'es', '0-12 meses');
                PERFORM insert_category_translations('eveil-0-12', 'it', '0-12 mesi');

                -- Level 3: eveil-1-3
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('eveil-1-3', 'eveil-1-3', 3, l2_id, '1-3 ans')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('eveil-1-3', 'fr', '1-3 ans');
                PERFORM insert_category_translations('eveil-1-3', 'ar', '1-3 سنوات');
                PERFORM insert_category_translations('eveil-1-3', 'en', '1-3 years');
                PERFORM insert_category_translations('eveil-1-3', 'de', '1–3 Jahre');
                PERFORM insert_category_translations('eveil-1-3', 'es', '1-3 años');
                PERFORM insert_category_translations('eveil-1-3', 'it', '1-3 anni');

                -- Level 3: eveil-3-6
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('eveil-3-6', 'eveil-3-6', 3, l2_id, '3-6 ans')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('eveil-3-6', 'fr', '3-6 ans');
                PERFORM insert_category_translations('eveil-3-6', 'ar', '3-6 سنوات');
                PERFORM insert_category_translations('eveil-3-6', 'en', '3-6 years');
                PERFORM insert_category_translations('eveil-3-6', 'de', '3–6 Jahre');
                PERFORM insert_category_translations('eveil-3-6', 'es', '3-6 años');
                PERFORM insert_category_translations('eveil-3-6', 'it', '3-6 anni');

            -- Level 2: activites-parascolaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('activites-parascolaires', 'activites-parascolaires', 2, l1_id, 'activités parascolaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('activites-parascolaires', 'fr', 'activités parascolaires');
            PERFORM insert_category_translations('activites-parascolaires', 'ar', 'نشاطات لا صفية');
            PERFORM insert_category_translations('activites-parascolaires', 'en', 'extracurricular activities');
            PERFORM insert_category_translations('activites-parascolaires', 'de', 'Außerschulische Aktivitäten');
            PERFORM insert_category_translations('activites-parascolaires', 'es', 'actividades extraescolares');
            PERFORM insert_category_translations('activites-parascolaires', 'it', 'attività extrascolastiche');

                -- Level 3: parascolaire-clubs
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('parascolaire-clubs', 'parascolaire-clubs', 3, l2_id, 'clubs scolaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('parascolaire-clubs', 'fr', 'clubs scolaires');
                PERFORM insert_category_translations('parascolaire-clubs', 'ar', 'نوادي مدرسية');
                PERFORM insert_category_translations('parascolaire-clubs', 'en', 'school clubs');
                PERFORM insert_category_translations('parascolaire-clubs', 'de', 'Schulklubs');
                PERFORM insert_category_translations('parascolaire-clubs', 'es', 'clubes escolares');
                PERFORM insert_category_translations('parascolaire-clubs', 'it', 'club scolastici');

                -- Level 3: parascolaire-sport
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('parascolaire-sport', 'parascolaire-sport', 3, l2_id, 'sport')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('parascolaire-sport', 'fr', 'sport');
                PERFORM insert_category_translations('parascolaire-sport', 'ar', 'رياضة');
                PERFORM insert_category_translations('parascolaire-sport', 'en', 'sport');
                PERFORM insert_category_translations('parascolaire-sport', 'de', 'Sport');
                PERFORM insert_category_translations('parascolaire-sport', 'es', 'deporte');
                PERFORM insert_category_translations('parascolaire-sport', 'it', 'sport');

                -- Level 3: parascolaire-arts
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('parascolaire-arts', 'parascolaire-arts', 3, l2_id, 'arts')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('parascolaire-arts', 'fr', 'arts');
                PERFORM insert_category_translations('parascolaire-arts', 'ar', 'فنون');
                PERFORM insert_category_translations('parascolaire-arts', 'en', 'arts');
                PERFORM insert_category_translations('parascolaire-arts', 'de', 'Kunst');
                PERFORM insert_category_translations('parascolaire-arts', 'es', 'artes');
                PERFORM insert_category_translations('parascolaire-arts', 'it', 'arti');

            -- Level 2: ateliers-enfants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ateliers-enfants', 'ateliers-enfants', 2, l1_id, 'ateliers pour enfants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ateliers-enfants', 'fr', 'ateliers pour enfants');
            PERFORM insert_category_translations('ateliers-enfants', 'ar', 'ورش للأطفال');
            PERFORM insert_category_translations('ateliers-enfants', 'en', 'children''s workshops');
            PERFORM insert_category_translations('ateliers-enfants', 'de', 'Kinderworkshops');
            PERFORM insert_category_translations('ateliers-enfants', 'es', 'talleres para niños');
            PERFORM insert_category_translations('ateliers-enfants', 'it', 'laboratori per bambini');

                -- Level 3: enfants-robotique
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('enfants-robotique', 'enfants-robotique', 3, l2_id, 'robotique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('enfants-robotique', 'fr', 'robotique');
                PERFORM insert_category_translations('enfants-robotique', 'ar', 'روبوتيك');
                PERFORM insert_category_translations('enfants-robotique', 'en', 'robotics');
                PERFORM insert_category_translations('enfants-robotique', 'de', 'Robotik');
                PERFORM insert_category_translations('enfants-robotique', 'es', 'robótica');
                PERFORM insert_category_translations('enfants-robotique', 'it', 'robotica');

                -- Level 3: enfants-coding
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('enfants-coding', 'enfants-coding', 3, l2_id, 'coding')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('enfants-coding', 'fr', 'coding');
                PERFORM insert_category_translations('enfants-coding', 'ar', 'برمجة');
                PERFORM insert_category_translations('enfants-coding', 'en', 'coding');
                PERFORM insert_category_translations('enfants-coding', 'de', 'Coding');
                PERFORM insert_category_translations('enfants-coding', 'es', 'programación');
                PERFORM insert_category_translations('enfants-coding', 'it', 'coding');

                -- Level 3: enfants-cuisine
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('enfants-cuisine', 'enfants-cuisine', 3, l2_id, 'cuisine')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('enfants-cuisine', 'fr', 'cuisine');
                PERFORM insert_category_translations('enfants-cuisine', 'ar', 'طبخ');
                PERFORM insert_category_translations('enfants-cuisine', 'en', 'cooking');
                PERFORM insert_category_translations('enfants-cuisine', 'de', 'Kochen');
                PERFORM insert_category_translations('enfants-cuisine', 'es', 'cocina');
                PERFORM insert_category_translations('enfants-cuisine', 'it', 'cucina');

            -- Level 2: animations-anniversaire
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('animations-anniversaire', 'animations-anniversaire', 2, l1_id, 'animations d’anniversaire')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('animations-anniversaire', 'fr', 'animations d’anniversaire');
            PERFORM insert_category_translations('animations-anniversaire', 'ar', 'حفلات عيد ميلاد');
            PERFORM insert_category_translations('animations-anniversaire', 'en', 'birthday entertainment');
            PERFORM insert_category_translations('animations-anniversaire', 'de', 'Geburtstagsanimationen');
            PERFORM insert_category_translations('animations-anniversaire', 'es', 'animaciones de cumpleaños');
            PERFORM insert_category_translations('animations-anniversaire', 'it', 'animazioni di compleanno');

                -- Level 3: anniv-clowns
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('anniv-clowns', 'anniv-clowns', 3, l2_id, 'clowns')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('anniv-clowns', 'fr', 'clowns');
                PERFORM insert_category_translations('anniv-clowns', 'ar', 'مهرجون');
                PERFORM insert_category_translations('anniv-clowns', 'en', 'clowns');
                PERFORM insert_category_translations('anniv-clowns', 'de', 'Clowns');
                PERFORM insert_category_translations('anniv-clowns', 'es', 'payasos');
                PERFORM insert_category_translations('anniv-clowns', 'it', 'clown');

                -- Level 3: anniv-magiciens
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('anniv-magiciens', 'anniv-magiciens', 3, l2_id, 'magiciens')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('anniv-magiciens', 'fr', 'magiciens');
                PERFORM insert_category_translations('anniv-magiciens', 'ar', 'سحرة');
                PERFORM insert_category_translations('anniv-magiciens', 'en', 'magicians');
                PERFORM insert_category_translations('anniv-magiciens', 'de', 'Zauberer');
                PERFORM insert_category_translations('anniv-magiciens', 'es', 'magos');
                PERFORM insert_category_translations('anniv-magiciens', 'it', 'maghi');

                -- Level 3: anniv-decorations
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('anniv-decorations', 'anniv-decorations', 3, l2_id, 'décorations')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('anniv-decorations', 'fr', 'décorations');
                PERFORM insert_category_translations('anniv-decorations', 'ar', 'زينة');
                PERFORM insert_category_translations('anniv-decorations', 'en', 'decorations');
                PERFORM insert_category_translations('anniv-decorations', 'de', 'Dekorationen');
                PERFORM insert_category_translations('anniv-decorations', 'es', 'decoraciones');
                PERFORM insert_category_translations('anniv-decorations', 'it', 'decorazioni');

            -- Level 2: colonies-vacances
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('colonies-vacances', 'colonies-vacances', 2, l1_id, 'colonies de vacances')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('colonies-vacances', 'fr', 'colonies de vacances');
            PERFORM insert_category_translations('colonies-vacances', 'ar', 'مخيمات صيفية');
            PERFORM insert_category_translations('colonies-vacances', 'en', 'holiday camps');
            PERFORM insert_category_translations('colonies-vacances', 'de', 'Ferienlager');
            PERFORM insert_category_translations('colonies-vacances', 'es', 'campamentos de verano');
            PERFORM insert_category_translations('colonies-vacances', 'it', 'campi estivi');

                -- Level 3: colonies-mer
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('colonies-mer', 'colonies-mer', 3, l2_id, 'mer')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('colonies-mer', 'fr', 'mer');
                PERFORM insert_category_translations('colonies-mer', 'ar', 'بحر');
                PERFORM insert_category_translations('colonies-mer', 'en', 'sea');
                PERFORM insert_category_translations('colonies-mer', 'de', 'Meer');
                PERFORM insert_category_translations('colonies-mer', 'es', 'mar');
                PERFORM insert_category_translations('colonies-mer', 'it', 'mare');

                -- Level 3: colonies-montagne
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('colonies-montagne', 'colonies-montagne', 3, l2_id, 'montagne')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('colonies-montagne', 'fr', 'montagne');
                PERFORM insert_category_translations('colonies-montagne', 'ar', 'جبال');
                PERFORM insert_category_translations('colonies-montagne', 'en', 'mountain');
                PERFORM insert_category_translations('colonies-montagne', 'de', 'Berge');
                PERFORM insert_category_translations('colonies-montagne', 'es', 'montaña');
                PERFORM insert_category_translations('colonies-montagne', 'it', 'montagna');

                -- Level 3: colonies-culture
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('colonies-culture', 'colonies-culture', 3, l2_id, 'culture')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('colonies-culture', 'fr', 'culture');
                PERFORM insert_category_translations('colonies-culture', 'ar', 'ثقافة');
                PERFORM insert_category_translations('colonies-culture', 'en', 'culture');
                PERFORM insert_category_translations('colonies-culture', 'de', 'Kultur');
                PERFORM insert_category_translations('colonies-culture', 'es', 'cultura');
                PERFORM insert_category_translations('colonies-culture', 'it', 'cultura');

        -- Level 1: clubs-associations
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('clubs-associations', 'clubs-associations', 1, root_id, 'Clubs & Associations')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('clubs-associations', 'fr', 'Clubs & Associations');
        PERFORM insert_category_translations('clubs-associations', 'ar', 'نوادٍ وجمعيات');
        PERFORM insert_category_translations('clubs-associations', 'en', 'Clubs & Associations');
        PERFORM insert_category_translations('clubs-associations', 'de', 'Klubs & Vereine');
        PERFORM insert_category_translations('clubs-associations', 'es', 'Clubes y Asociaciones');
        PERFORM insert_category_translations('clubs-associations', 'it', 'Club & Associazioni');

            -- Level 2: clubs-sportifs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('clubs-sportifs', 'clubs-sportifs', 2, l1_id, 'clubs sportifs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('clubs-sportifs', 'fr', 'clubs sportifs');
            PERFORM insert_category_translations('clubs-sportifs', 'ar', 'نوادٍ رياضية');
            PERFORM insert_category_translations('clubs-sportifs', 'en', 'sports clubs');
            PERFORM insert_category_translations('clubs-sportifs', 'de', 'Sportklubs');
            PERFORM insert_category_translations('clubs-sportifs', 'es', 'clubes deportivos');
            PERFORM insert_category_translations('clubs-sportifs', 'it', 'club sportivi');

                -- Level 3: club-football
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('club-football', 'club-football', 3, l2_id, 'football')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('club-football', 'fr', 'football');
                PERFORM insert_category_translations('club-football', 'ar', 'كرة القدم');
                PERFORM insert_category_translations('club-football', 'en', 'football');
                PERFORM insert_category_translations('club-football', 'de', 'Fußball');
                PERFORM insert_category_translations('club-football', 'es', 'fútbol');
                PERFORM insert_category_translations('club-football', 'it', 'calcio');

                -- Level 3: club-judo
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('club-judo', 'club-judo', 3, l2_id, 'judo')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('club-judo', 'fr', 'judo');
                PERFORM insert_category_translations('club-judo', 'ar', 'جودو');
                PERFORM insert_category_translations('club-judo', 'en', 'judo');
                PERFORM insert_category_translations('club-judo', 'de', 'Judo');
                PERFORM insert_category_translations('club-judo', 'es', 'judo');
                PERFORM insert_category_translations('club-judo', 'it', 'judo');

                -- Level 3: club-natation
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('club-natation', 'club-natation', 3, l2_id, 'natation')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('club-natation', 'fr', 'natation');
                PERFORM insert_category_translations('club-natation', 'ar', 'سباحة');
                PERFORM insert_category_translations('club-natation', 'en', 'swimming');
                PERFORM insert_category_translations('club-natation', 'de', 'Schwimmen');
                PERFORM insert_category_translations('club-natation', 'es', 'natación');
                PERFORM insert_category_translations('club-natation', 'it', 'nuoto');

            -- Level 2: associations-culturelles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('associations-culturelles', 'associations-culturelles', 2, l1_id, 'associations culturelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('associations-culturelles', 'fr', 'associations culturelles');
            PERFORM insert_category_translations('associations-culturelles', 'ar', 'جمعيات ثقافية');
            PERFORM insert_category_translations('associations-culturelles', 'en', 'cultural associations');
            PERFORM insert_category_translations('associations-culturelles', 'de', 'Kulturelle Vereine');
            PERFORM insert_category_translations('associations-culturelles', 'es', 'asociaciones culturales');
            PERFORM insert_category_translations('associations-culturelles', 'it', 'associazioni culturali');

                -- Level 3: asso-musique
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('asso-musique', 'asso-musique', 3, l2_id, 'musique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('asso-musique', 'fr', 'musique');
                PERFORM insert_category_translations('asso-musique', 'ar', 'موسيقى');
                PERFORM insert_category_translations('asso-musique', 'en', 'music');
                PERFORM insert_category_translations('asso-musique', 'de', 'Musik');
                PERFORM insert_category_translations('asso-musique', 'es', 'música');
                PERFORM insert_category_translations('asso-musique', 'it', 'musica');

                -- Level 3: asso-theatre
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('asso-theatre', 'asso-theatre', 3, l2_id, 'théâtre')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('asso-theatre', 'fr', 'théâtre');
                PERFORM insert_category_translations('asso-theatre', 'ar', 'مسرح');
                PERFORM insert_category_translations('asso-theatre', 'en', 'theatre');
                PERFORM insert_category_translations('asso-theatre', 'de', 'Theater');
                PERFORM insert_category_translations('asso-theatre', 'es', 'teatro');
                PERFORM insert_category_translations('asso-theatre', 'it', 'teatro');

                -- Level 3: asso-patrimoine
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('asso-patrimoine', 'asso-patrimoine', 3, l2_id, 'patrimoine')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('asso-patrimoine', 'fr', 'patrimoine');
                PERFORM insert_category_translations('asso-patrimoine', 'ar', 'تراث');
                PERFORM insert_category_translations('asso-patrimoine', 'en', 'heritage');
                PERFORM insert_category_translations('asso-patrimoine', 'de', 'Kulturerbe');
                PERFORM insert_category_translations('asso-patrimoine', 'es', 'patrimonio');
                PERFORM insert_category_translations('asso-patrimoine', 'it', 'patrimonio');

            -- Level 2: ateliers-communautaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ateliers-communautaires', 'ateliers-communautaires', 2, l1_id, 'ateliers communautaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ateliers-communautaires', 'fr', 'ateliers communautaires');
            PERFORM insert_category_translations('ateliers-communautaires', 'ar', 'ورش مجتمعية');
            PERFORM insert_category_translations('ateliers-communautaires', 'en', 'community workshops');
            PERFORM insert_category_translations('ateliers-communautaires', 'de', 'Gemeinschaftsworkshops');
            PERFORM insert_category_translations('ateliers-communautaires', 'es', 'talleres comunitarios');
            PERFORM insert_category_translations('ateliers-communautaires', 'it', 'laboratori comunitari');

                -- Level 3: comm-solidarite
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('comm-solidarite', 'comm-solidarite', 3, l2_id, 'solidarité')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('comm-solidarite', 'fr', 'solidarité');
                PERFORM insert_category_translations('comm-solidarite', 'ar', 'تضامن');
                PERFORM insert_category_translations('comm-solidarite', 'en', 'solidarity');
                PERFORM insert_category_translations('comm-solidarite', 'de', 'Solidarität');
                PERFORM insert_category_translations('comm-solidarite', 'es', 'solidaridad');
                PERFORM insert_category_translations('comm-solidarite', 'it', 'solidarietà');

                -- Level 3: comm-environnement
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('comm-environnement', 'comm-environnement', 3, l2_id, 'environnement')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('comm-environnement', 'fr', 'environnement');
                PERFORM insert_category_translations('comm-environnement', 'ar', 'بيئة');
                PERFORM insert_category_translations('comm-environnement', 'en', 'environment');
                PERFORM insert_category_translations('comm-environnement', 'de', 'Umwelt');
                PERFORM insert_category_translations('comm-environnement', 'es', 'medio ambiente');
                PERFORM insert_category_translations('comm-environnement', 'it', 'ambiente');

                -- Level 3: comm-insertion
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('comm-insertion', 'comm-insertion', 3, l2_id, 'insertion')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('comm-insertion', 'fr', 'insertion');
                PERFORM insert_category_translations('comm-insertion', 'ar', 'إدماج');
                PERFORM insert_category_translations('comm-insertion', 'en', 'inclusion');
                PERFORM insert_category_translations('comm-insertion', 'de', 'Integration');
                PERFORM insert_category_translations('comm-insertion', 'es', 'inclusión');
                PERFORM insert_category_translations('comm-insertion', 'it', 'inclusione');

            -- Level 2: clubs-lecture
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('clubs-lecture', 'clubs-lecture', 2, l1_id, 'clubs de lecture')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('clubs-lecture', 'fr', 'clubs de lecture');
            PERFORM insert_category_translations('clubs-lecture', 'ar', 'نوادي القراءة');
            PERFORM insert_category_translations('clubs-lecture', 'en', 'book clubs');
            PERFORM insert_category_translations('clubs-lecture', 'de', 'Lesekreise');
            PERFORM insert_category_translations('clubs-lecture', 'es', 'clubes de lectura');
            PERFORM insert_category_translations('clubs-lecture', 'it', 'club di lettura');

                -- Level 3: lecture-adultes
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lecture-adultes', 'lecture-adultes', 3, l2_id, 'adultes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('lecture-adultes', 'fr', 'adultes');
                PERFORM insert_category_translations('lecture-adultes', 'ar', 'بالغون');
                PERFORM insert_category_translations('lecture-adultes', 'en', 'adults');
                PERFORM insert_category_translations('lecture-adultes', 'de', 'Erwachsene');
                PERFORM insert_category_translations('lecture-adultes', 'es', 'adultos');
                PERFORM insert_category_translations('lecture-adultes', 'it', 'adulti');

                -- Level 3: lecture-jeunesse
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lecture-jeunesse', 'lecture-jeunesse', 3, l2_id, 'jeunesse')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('lecture-jeunesse', 'fr', 'jeunesse');
                PERFORM insert_category_translations('lecture-jeunesse', 'ar', 'شباب');
                PERFORM insert_category_translations('lecture-jeunesse', 'en', 'youth');
                PERFORM insert_category_translations('lecture-jeunesse', 'de', 'Jugend');
                PERFORM insert_category_translations('lecture-jeunesse', 'es', 'juvenil');
                PERFORM insert_category_translations('lecture-jeunesse', 'it', 'giovani');

                -- Level 3: lecture-thematiques
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lecture-thematiques', 'lecture-thematiques', 3, l2_id, 'thématiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('lecture-thematiques', 'fr', 'thématiques');
                PERFORM insert_category_translations('lecture-thematiques', 'ar', 'موضوعية');
                PERFORM insert_category_translations('lecture-thematiques', 'en', 'themes');
                PERFORM insert_category_translations('lecture-thematiques', 'de', 'Themenbezogen');
                PERFORM insert_category_translations('lecture-thematiques', 'es', 'temáticos');
                PERFORM insert_category_translations('lecture-thematiques', 'it', 'tematici');

            -- Level 2: evenements-educatifs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('evenements-educatifs', 'evenements-educatifs', 2, l1_id, 'événements éducatifs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('evenements-educatifs', 'fr', 'événements éducatifs');
            PERFORM insert_category_translations('evenements-educatifs', 'ar', 'فعاليات تعليمية');
            PERFORM insert_category_translations('evenements-educatifs', 'en', 'educational events');
            PERFORM insert_category_translations('evenements-educatifs', 'de', 'Bildungsveranstaltungen');
            PERFORM insert_category_translations('evenements-educatifs', 'es', 'eventos educativos');
            PERFORM insert_category_translations('evenements-educatifs', 'it', 'eventi educativi');

                -- Level 3: edu-conferences
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('edu-conferences', 'edu-conferences', 3, l2_id, 'conférences')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('edu-conferences', 'fr', 'conférences');
                PERFORM insert_category_translations('edu-conferences', 'ar', 'مؤتمرات');
                PERFORM insert_category_translations('edu-conferences', 'en', 'conferences');
                PERFORM insert_category_translations('edu-conferences', 'de', 'Konferenzen');
                PERFORM insert_category_translations('edu-conferences', 'es', 'conferencias');
                PERFORM insert_category_translations('edu-conferences', 'it', 'conferenze');

                -- Level 3: edu-salons
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('edu-salons', 'edu-salons', 3, l2_id, 'salons')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('edu-salons', 'fr', 'salons');
                PERFORM insert_category_translations('edu-salons', 'ar', 'معارض');
                PERFORM insert_category_translations('edu-salons', 'en', 'fairs');
                PERFORM insert_category_translations('edu-salons', 'de', 'Messen');
                PERFORM insert_category_translations('edu-salons', 'es', 'ferias');
                PERFORM insert_category_translations('edu-salons', 'it', 'fiere');

                -- Level 3: edu-forums
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('edu-forums', 'edu-forums', 3, l2_id, 'forums')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('edu-forums', 'fr', 'forums');
                PERFORM insert_category_translations('edu-forums', 'ar', 'منتديات');
                PERFORM insert_category_translations('edu-forums', 'en', 'forums');
                PERFORM insert_category_translations('edu-forums', 'de', 'Foren');
                PERFORM insert_category_translations('edu-forums', 'es', 'foros');
                PERFORM insert_category_translations('edu-forums', 'it', 'forum');

            -- Level 2: conferences
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('conferences', 'conferences', 2, l1_id, 'conférences')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('conferences', 'fr', 'conférences');
            PERFORM insert_category_translations('conferences', 'ar', 'مؤتمرات');
            PERFORM insert_category_translations('conferences', 'en', 'conferences');
            PERFORM insert_category_translations('conferences', 'de', 'Konferenzen');
            PERFORM insert_category_translations('conferences', 'es', 'conferencias');
            PERFORM insert_category_translations('conferences', 'it', 'conferenze');

                -- Level 3: conf-academiques
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('conf-academiques', 'conf-academiques', 3, l2_id, 'académiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('conf-academiques', 'fr', 'académiques');
                PERFORM insert_category_translations('conf-academiques', 'ar', 'أكاديمية');
                PERFORM insert_category_translations('conf-academiques', 'en', 'academic');
                PERFORM insert_category_translations('conf-academiques', 'de', 'Akademisch');
                PERFORM insert_category_translations('conf-academiques', 'es', 'académicas');
                PERFORM insert_category_translations('conf-academiques', 'it', 'accademiche');

                -- Level 3: conf-professionnelles
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('conf-professionnelles', 'conf-professionnelles', 3, l2_id, 'professionnelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('conf-professionnelles', 'fr', 'professionnelles');
                PERFORM insert_category_translations('conf-professionnelles', 'ar', 'مهنية');
                PERFORM insert_category_translations('conf-professionnelles', 'en', 'professional');
                PERFORM insert_category_translations('conf-professionnelles', 'de', 'Professionell');
                PERFORM insert_category_translations('conf-professionnelles', 'es', 'profesionales');
                PERFORM insert_category_translations('conf-professionnelles', 'it', 'professionali');

                -- Level 3: conf-grand-public
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('conf-grand-public', 'conf-grand-public', 3, l2_id, 'grand public')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('conf-grand-public', 'fr', 'grand public');
                PERFORM insert_category_translations('conf-grand-public', 'ar', 'عامة');
                PERFORM insert_category_translations('conf-grand-public', 'en', 'public');
                PERFORM insert_category_translations('conf-grand-public', 'de', 'Öffentlich');
                PERFORM insert_category_translations('conf-grand-public', 'es', 'público general');
                PERFORM insert_category_translations('conf-grand-public', 'it', 'pubblico');
END $$;