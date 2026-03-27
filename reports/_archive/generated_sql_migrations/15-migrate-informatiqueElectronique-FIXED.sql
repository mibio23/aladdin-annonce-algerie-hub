-- Migration: Informatique & Électronique (Generated Recursive)
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

    -- Level 0: informatique-electronique
    INSERT INTO categories (id, slug, level, name)
    VALUES ('informatique-electronique', 'informatique-electronique', 0, 'Informatique & Électronique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 0, name = EXCLUDED.name
    RETURNING id INTO root_id;
    PERFORM insert_category_translations('informatique-electronique', 'fr', 'Informatique & Électronique');
    PERFORM insert_category_translations('informatique-electronique', 'ar', 'إعلام آلي وإلكترونيات');
    PERFORM insert_category_translations('informatique-electronique', 'en', 'Computers & Electronics');
    PERFORM insert_category_translations('informatique-electronique', 'de', 'Computer & Elektronik');
    PERFORM insert_category_translations('informatique-electronique', 'es', 'Informática & Electrónica');
    PERFORM insert_category_translations('informatique-electronique', 'it', 'Informatica ed Elettronica');

        -- Level 1: ordinateurs-pc
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ordinateurs-pc', 'ordinateurs-pc', 1, root_id, 'Ordinateurs & PC')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('ordinateurs-pc', 'fr', 'Ordinateurs & PC');
        PERFORM insert_category_translations('ordinateurs-pc', 'ar', 'أجهزة كمبيوتر و PC');
        PERFORM insert_category_translations('ordinateurs-pc', 'en', 'Computers & PCs');
        PERFORM insert_category_translations('ordinateurs-pc', 'de', 'Computer & PCs');
        PERFORM insert_category_translations('ordinateurs-pc', 'es', 'Ordenadores & PC');
        PERFORM insert_category_translations('ordinateurs-pc', 'it', 'Computer & PC');

            -- Level 2: pc-de-bureau
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pc-de-bureau', 'pc-de-bureau', 2, l1_id, 'PC de bureau')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pc-de-bureau', 'fr', 'PC de bureau');
            PERFORM insert_category_translations('pc-de-bureau', 'ar', 'كمبيوتر مكتبي');
            PERFORM insert_category_translations('pc-de-bureau', 'en', 'Desktop PCs');
            PERFORM insert_category_translations('pc-de-bureau', 'de', 'Desktop-PCs');
            PERFORM insert_category_translations('pc-de-bureau', 'es', 'PC de escritorio');
            PERFORM insert_category_translations('pc-de-bureau', 'it', 'PC Desktop');

            -- Level 2: pc-gaming
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pc-gaming', 'pc-gaming', 2, l1_id, 'PC gaming')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pc-gaming', 'fr', 'PC gaming');
            PERFORM insert_category_translations('pc-gaming', 'ar', 'كمبيوتر للألعاب');
            PERFORM insert_category_translations('pc-gaming', 'en', 'Gaming PCs');
            PERFORM insert_category_translations('pc-gaming', 'de', 'Gaming-PCs');
            PERFORM insert_category_translations('pc-gaming', 'es', 'PC gaming');
            PERFORM insert_category_translations('pc-gaming', 'it', 'PC Gaming');

            -- Level 2: pc-professionnels
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pc-professionnels', 'pc-professionnels', 2, l1_id, 'PC professionnels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pc-professionnels', 'fr', 'PC professionnels');
            PERFORM insert_category_translations('pc-professionnels', 'ar', 'كمبيوتر احترافي');
            PERFORM insert_category_translations('pc-professionnels', 'en', 'Professional PCs');
            PERFORM insert_category_translations('pc-professionnels', 'de', 'Business-PCs');
            PERFORM insert_category_translations('pc-professionnels', 'es', 'PC profesionales');
            PERFORM insert_category_translations('pc-professionnels', 'it', 'PC Professionali');

            -- Level 2: mini-pc
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mini-pc', 'mini-pc', 2, l1_id, 'Mini PC')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mini-pc', 'fr', 'Mini PC');
            PERFORM insert_category_translations('mini-pc', 'ar', 'كمبيوتر مصغر (Mini PC)');
            PERFORM insert_category_translations('mini-pc', 'en', 'Mini PCs');
            PERFORM insert_category_translations('mini-pc', 'de', 'Mini-PCs');
            PERFORM insert_category_translations('mini-pc', 'es', 'Mini PC');
            PERFORM insert_category_translations('mini-pc', 'it', 'Mini PC');

            -- Level 2: pc-tout-en-un
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pc-tout-en-un', 'pc-tout-en-un', 2, l1_id, 'PC tout-en-un')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pc-tout-en-un', 'fr', 'PC tout-en-un');
            PERFORM insert_category_translations('pc-tout-en-un', 'ar', 'كمبيوتر الكل في واحد');
            PERFORM insert_category_translations('pc-tout-en-un', 'en', 'All-in-One PCs');
            PERFORM insert_category_translations('pc-tout-en-un', 'de', 'All-in-One-PCs');
            PERFORM insert_category_translations('pc-tout-en-un', 'es', 'PC todo-en-uno');
            PERFORM insert_category_translations('pc-tout-en-un', 'it', 'PC All-in-One');

            -- Level 2: ordinateurs-portables
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ordinateurs-portables', 'ordinateurs-portables', 2, l1_id, 'Ordinateurs portables')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ordinateurs-portables', 'fr', 'Ordinateurs portables');
            PERFORM insert_category_translations('ordinateurs-portables', 'ar', 'لابتوب');
            PERFORM insert_category_translations('ordinateurs-portables', 'en', 'Laptops');
            PERFORM insert_category_translations('ordinateurs-portables', 'de', 'Laptops');
            PERFORM insert_category_translations('ordinateurs-portables', 'es', 'Ordenadores portátiles');
            PERFORM insert_category_translations('ordinateurs-portables', 'it', 'Computer Portatili');

            -- Level 2: ultrabooks
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ultrabooks', 'ultrabooks', 2, l1_id, 'Ultrabooks')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ultrabooks', 'fr', 'Ultrabooks');
            PERFORM insert_category_translations('ultrabooks', 'ar', 'ألترابوك');
            PERFORM insert_category_translations('ultrabooks', 'en', 'Ultrabooks');
            PERFORM insert_category_translations('ultrabooks', 'de', 'Ultrabooks');
            PERFORM insert_category_translations('ultrabooks', 'es', 'Ultrabooks');
            PERFORM insert_category_translations('ultrabooks', 'it', 'Ultrabook');

            -- Level 2: laptops-professionnels
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('laptops-professionnels', 'laptops-professionnels', 2, l1_id, 'Laptops professionnels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('laptops-professionnels', 'fr', 'Laptops professionnels');
            PERFORM insert_category_translations('laptops-professionnels', 'ar', 'لابتوب احترافي');
            PERFORM insert_category_translations('laptops-professionnels', 'en', 'Professional Laptops');
            PERFORM insert_category_translations('laptops-professionnels', 'de', 'Business-Laptops');
            PERFORM insert_category_translations('laptops-professionnels', 'es', 'Portátiles profesionales');
            PERFORM insert_category_translations('laptops-professionnels', 'it', 'Laptop Professionali');

            -- Level 2: laptops-gaming
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('laptops-gaming', 'laptops-gaming', 2, l1_id, 'Laptops gaming')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('laptops-gaming', 'fr', 'Laptops gaming');
            PERFORM insert_category_translations('laptops-gaming', 'ar', 'لابتوب للألعاب');
            PERFORM insert_category_translations('laptops-gaming', 'en', 'Gaming Laptops');
            PERFORM insert_category_translations('laptops-gaming', 'de', 'Gaming-Laptops');
            PERFORM insert_category_translations('laptops-gaming', 'es', 'Portátiles gaming');
            PERFORM insert_category_translations('laptops-gaming', 'it', 'Laptop Gaming');

            -- Level 2: laptops-etudiants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('laptops-etudiants', 'laptops-etudiants', 2, l1_id, 'Laptops étudiants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('laptops-etudiants', 'fr', 'Laptops étudiants');
            PERFORM insert_category_translations('laptops-etudiants', 'ar', 'لابتوب للطلاب');
            PERFORM insert_category_translations('laptops-etudiants', 'en', 'Student Laptops');
            PERFORM insert_category_translations('laptops-etudiants', 'de', 'Studenten-Laptops');
            PERFORM insert_category_translations('laptops-etudiants', 'es', 'Portátiles para estudiantes');
            PERFORM insert_category_translations('laptops-etudiants', 'it', 'Laptop per Studenti');

            -- Level 2: macbook
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('macbook', 'macbook', 2, l1_id, 'MacBook')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('macbook', 'fr', 'MacBook');
            PERFORM insert_category_translations('macbook', 'ar', 'ماك بوك');
            PERFORM insert_category_translations('macbook', 'en', 'MacBook');
            PERFORM insert_category_translations('macbook', 'de', 'MacBook');
            PERFORM insert_category_translations('macbook', 'es', 'MacBook');
            PERFORM insert_category_translations('macbook', 'it', 'MacBook');

            -- Level 2: chromebook
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chromebook', 'chromebook', 2, l1_id, 'Chromebook')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chromebook', 'fr', 'Chromebook');
            PERFORM insert_category_translations('chromebook', 'ar', 'كروم بوك');
            PERFORM insert_category_translations('chromebook', 'en', 'Chromebook');
            PERFORM insert_category_translations('chromebook', 'de', 'Chromebook');
            PERFORM insert_category_translations('chromebook', 'es', 'Chromebook');
            PERFORM insert_category_translations('chromebook', 'it', 'Chromebook');

            -- Level 2: stations-travail-portables
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('stations-travail-portables', 'stations-travail-portables', 2, l1_id, 'Stations de travail portables')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('stations-travail-portables', 'fr', 'Stations de travail portables');
            PERFORM insert_category_translations('stations-travail-portables', 'ar', 'محطات عمل محمولة');
            PERFORM insert_category_translations('stations-travail-portables', 'en', 'Portable Workstations');
            PERFORM insert_category_translations('stations-travail-portables', 'de', 'Mobile Workstations');
            PERFORM insert_category_translations('stations-travail-portables', 'es', 'Estaciones de trabajo portátiles');
            PERFORM insert_category_translations('stations-travail-portables', 'it', 'Workstation Portatili');

            -- Level 2: pc-reconditionnes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pc-reconditionnes', 'pc-reconditionnes', 2, l1_id, 'PC reconditionnés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pc-reconditionnes', 'fr', 'PC reconditionnés');
            PERFORM insert_category_translations('pc-reconditionnes', 'ar', 'كمبيوتر مجدد');
            PERFORM insert_category_translations('pc-reconditionnes', 'en', 'Refurbished PCs');
            PERFORM insert_category_translations('pc-reconditionnes', 'de', 'Generalüberholte PCs');
            PERFORM insert_category_translations('pc-reconditionnes', 'es', 'PC reacondicionados');
            PERFORM insert_category_translations('pc-reconditionnes', 'it', 'PC Ricondizionati');

        -- Level 1: smartphones
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('smartphones', 'smartphones', 1, root_id, 'Smartphones')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('smartphones', 'fr', 'Smartphones');
        PERFORM insert_category_translations('smartphones', 'ar', 'هواتف ذكية');
        PERFORM insert_category_translations('smartphones', 'en', 'Smartphones');
        PERFORM insert_category_translations('smartphones', 'de', 'Smartphones');
        PERFORM insert_category_translations('smartphones', 'es', 'Smartphones');
        PERFORM insert_category_translations('smartphones', 'it', 'Smartphone');

            -- Level 2: smartphones-android
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('smartphones-android', 'smartphones-android', 2, l1_id, 'Smartphones Android')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('smartphones-android', 'fr', 'Smartphones Android');
            PERFORM insert_category_translations('smartphones-android', 'ar', 'هواتف أندرويد');
            PERFORM insert_category_translations('smartphones-android', 'en', 'Android Smartphones');
            PERFORM insert_category_translations('smartphones-android', 'de', 'Android-Smartphones');
            PERFORM insert_category_translations('smartphones-android', 'es', 'Smartphones Android');
            PERFORM insert_category_translations('smartphones-android', 'it', 'Smartphone Android');

            -- Level 2: iphone
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('iphone', 'iphone', 2, l1_id, 'iPhone')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('iphone', 'fr', 'iPhone');
            PERFORM insert_category_translations('iphone', 'ar', 'آيفون');
            PERFORM insert_category_translations('iphone', 'en', 'iPhone');
            PERFORM insert_category_translations('iphone', 'de', 'iPhone');
            PERFORM insert_category_translations('iphone', 'es', 'iPhone');
            PERFORM insert_category_translations('iphone', 'it', 'iPhone');

            -- Level 2: smartphones-5g
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('smartphones-5g', 'smartphones-5g', 2, l1_id, 'Smartphones 5G')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('smartphones-5g', 'fr', 'Smartphones 5G');
            PERFORM insert_category_translations('smartphones-5g', 'ar', 'هواتف 5G');
            PERFORM insert_category_translations('smartphones-5g', 'en', '5G Smartphones');
            PERFORM insert_category_translations('smartphones-5g', 'de', '5G-Smartphones');
            PERFORM insert_category_translations('smartphones-5g', 'es', 'Smartphones 5G');
            PERFORM insert_category_translations('smartphones-5g', 'it', 'Smartphone 5G');

            -- Level 2: smartphones-gaming
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('smartphones-gaming', 'smartphones-gaming', 2, l1_id, 'Smartphones gaming')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('smartphones-gaming', 'fr', 'Smartphones gaming');
            PERFORM insert_category_translations('smartphones-gaming', 'ar', 'هواتف للألعاب');
            PERFORM insert_category_translations('smartphones-gaming', 'en', 'Gaming Smartphones');
            PERFORM insert_category_translations('smartphones-gaming', 'de', 'Gaming-Smartphones');
            PERFORM insert_category_translations('smartphones-gaming', 'es', 'Smartphones gaming');
            PERFORM insert_category_translations('smartphones-gaming', 'it', 'Smartphone Gaming');

            -- Level 2: smartphones-pliables
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('smartphones-pliables', 'smartphones-pliables', 2, l1_id, 'Smartphones pliables')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('smartphones-pliables', 'fr', 'Smartphones pliables');
            PERFORM insert_category_translations('smartphones-pliables', 'ar', 'هواتف قابلة للطي');
            PERFORM insert_category_translations('smartphones-pliables', 'en', 'Foldable Smartphones');
            PERFORM insert_category_translations('smartphones-pliables', 'de', 'Faltbare Smartphones');
            PERFORM insert_category_translations('smartphones-pliables', 'es', 'Smartphones plegables');
            PERFORM insert_category_translations('smartphones-pliables', 'it', 'Smartphone Pieghevoli');

            -- Level 2: smartphones-entree-de-gamme
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('smartphones-entree-de-gamme', 'smartphones-entree-de-gamme', 2, l1_id, 'Smartphones d’entrée de gamme')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('smartphones-entree-de-gamme', 'fr', 'Smartphones d’entrée de gamme');
            PERFORM insert_category_translations('smartphones-entree-de-gamme', 'ar', 'هواتف اقتصادية');
            PERFORM insert_category_translations('smartphones-entree-de-gamme', 'en', 'Entry-level Smartphones');
            PERFORM insert_category_translations('smartphones-entree-de-gamme', 'de', 'Einsteiger-Smartphones');
            PERFORM insert_category_translations('smartphones-entree-de-gamme', 'es', 'Smartphones de gama de entrada');
            PERFORM insert_category_translations('smartphones-entree-de-gamme', 'it', 'Smartphone Entry Level');

            -- Level 2: smartphones-milieu-de-gamme
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('smartphones-milieu-de-gamme', 'smartphones-milieu-de-gamme', 2, l1_id, 'Smartphones milieu de gamme')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('smartphones-milieu-de-gamme', 'fr', 'Smartphones milieu de gamme');
            PERFORM insert_category_translations('smartphones-milieu-de-gamme', 'ar', 'هواتف متوسطة المدى');
            PERFORM insert_category_translations('smartphones-milieu-de-gamme', 'en', 'Mid-range Smartphones');
            PERFORM insert_category_translations('smartphones-milieu-de-gamme', 'de', 'Mittelklasse-Smartphones');
            PERFORM insert_category_translations('smartphones-milieu-de-gamme', 'es', 'Smartphones de gama media');
            PERFORM insert_category_translations('smartphones-milieu-de-gamme', 'it', 'Smartphone Fascia Media');

            -- Level 2: smartphones-haut-de-gamme
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('smartphones-haut-de-gamme', 'smartphones-haut-de-gamme', 2, l1_id, 'Smartphones haut de gamme')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('smartphones-haut-de-gamme', 'fr', 'Smartphones haut de gamme');
            PERFORM insert_category_translations('smartphones-haut-de-gamme', 'ar', 'هواتف راقية');
            PERFORM insert_category_translations('smartphones-haut-de-gamme', 'en', 'High-end Smartphones');
            PERFORM insert_category_translations('smartphones-haut-de-gamme', 'de', 'High-End-Smartphones');
            PERFORM insert_category_translations('smartphones-haut-de-gamme', 'es', 'Smartphones de gama alta');
            PERFORM insert_category_translations('smartphones-haut-de-gamme', 'it', 'Smartphone Fascia Alta');

            -- Level 2: smartphones-reconditionnes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('smartphones-reconditionnes', 'smartphones-reconditionnes', 2, l1_id, 'Smartphones reconditionnés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('smartphones-reconditionnes', 'fr', 'Smartphones reconditionnés');
            PERFORM insert_category_translations('smartphones-reconditionnes', 'ar', 'هواتف مجددة');
            PERFORM insert_category_translations('smartphones-reconditionnes', 'en', 'Refurbished Smartphones');
            PERFORM insert_category_translations('smartphones-reconditionnes', 'de', 'Generalüberholte Smartphones');
            PERFORM insert_category_translations('smartphones-reconditionnes', 'es', 'Smartphones reacondicionados');
            PERFORM insert_category_translations('smartphones-reconditionnes', 'it', 'Smartphone Ricondizionati');

            -- Level 2: telephones-robustes-rugged
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('telephones-robustes-rugged', 'telephones-robustes-rugged', 2, l1_id, 'Téléphones robustes (rugged)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('telephones-robustes-rugged', 'fr', 'Téléphones robustes (rugged)');
            PERFORM insert_category_translations('telephones-robustes-rugged', 'ar', 'هواتف صلبة (Rugged)');
            PERFORM insert_category_translations('telephones-robustes-rugged', 'en', 'Rugged Phones');
            PERFORM insert_category_translations('telephones-robustes-rugged', 'de', 'Robuste Smartphones (Rugged)');
            PERFORM insert_category_translations('telephones-robustes-rugged', 'es', 'Teléfonos robustos (rugged)');
            PERFORM insert_category_translations('telephones-robustes-rugged', 'it', 'Telefoni Rugged');

            -- Level 2: mini-smartphones
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mini-smartphones', 'mini-smartphones', 2, l1_id, 'Mini smartphones')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mini-smartphones', 'fr', 'Mini smartphones');
            PERFORM insert_category_translations('mini-smartphones', 'ar', 'هواتف صغيرة');
            PERFORM insert_category_translations('mini-smartphones', 'en', 'Mini Smartphones');
            PERFORM insert_category_translations('mini-smartphones', 'de', 'Mini-Smartphones');
            PERFORM insert_category_translations('mini-smartphones', 'es', 'Mini smartphones');
            PERFORM insert_category_translations('mini-smartphones', 'it', 'Mini Smartphone');

            -- Level 2: smartphones-professionnels
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('smartphones-professionnels', 'smartphones-professionnels', 2, l1_id, 'Smartphones professionnels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('smartphones-professionnels', 'fr', 'Smartphones professionnels');
            PERFORM insert_category_translations('smartphones-professionnels', 'ar', 'هواتف احترافية');
            PERFORM insert_category_translations('smartphones-professionnels', 'en', 'Professional Smartphones');
            PERFORM insert_category_translations('smartphones-professionnels', 'de', 'Business-Smartphones');
            PERFORM insert_category_translations('smartphones-professionnels', 'es', 'Smartphones profesionales');
            PERFORM insert_category_translations('smartphones-professionnels', 'it', 'Smartphone Professionali');

        -- Level 1: telephones-classiques-fixes
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('telephones-classiques-fixes', 'telephones-classiques-fixes', 1, root_id, 'Téléphones Classiques & Fixes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('telephones-classiques-fixes', 'fr', 'Téléphones Classiques & Fixes');
        PERFORM insert_category_translations('telephones-classiques-fixes', 'ar', 'هواتف كلاسيكية وثابتة');
        PERFORM insert_category_translations('telephones-classiques-fixes', 'en', 'Classic & Landline Phones');
        PERFORM insert_category_translations('telephones-classiques-fixes', 'de', 'Klassische & Festnetztelefone');
        PERFORM insert_category_translations('telephones-classiques-fixes', 'es', 'Teléfonos Clásicos & Fijos');
        PERFORM insert_category_translations('telephones-classiques-fixes', 'it', 'Telefoni Classici e Fissi');

            -- Level 2: telephones-portables-classiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('telephones-portables-classiques', 'telephones-portables-classiques', 2, l1_id, 'Téléphones portables classiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('telephones-portables-classiques', 'fr', 'Téléphones portables classiques');
            PERFORM insert_category_translations('telephones-portables-classiques', 'ar', 'هواتف محمولة كلاسيكية');
            PERFORM insert_category_translations('telephones-portables-classiques', 'en', 'Classic Mobile Phones');
            PERFORM insert_category_translations('telephones-portables-classiques', 'de', 'Klassische Handys');
            PERFORM insert_category_translations('telephones-portables-classiques', 'es', 'Teléfonos móviles clásicos');
            PERFORM insert_category_translations('telephones-portables-classiques', 'it', 'Cellulari Classici');

            -- Level 2: telephones-a-clapet
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('telephones-a-clapet', 'telephones-a-clapet', 2, l1_id, 'Téléphones à clapet')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('telephones-a-clapet', 'fr', 'Téléphones à clapet');
            PERFORM insert_category_translations('telephones-a-clapet', 'ar', 'هواتف قابلة للطي (Clamshell)');
            PERFORM insert_category_translations('telephones-a-clapet', 'en', 'Flip Phones');
            PERFORM insert_category_translations('telephones-a-clapet', 'de', 'Klapphandys');
            PERFORM insert_category_translations('telephones-a-clapet', 'es', 'Teléfonos de tapa');
            PERFORM insert_category_translations('telephones-a-clapet', 'it', 'Telefoni a Conchiglia');

            -- Level 2: telephones-seniors
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('telephones-seniors', 'telephones-seniors', 2, l1_id, 'Téléphones seniors')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('telephones-seniors', 'fr', 'Téléphones seniors');
            PERFORM insert_category_translations('telephones-seniors', 'ar', 'هواتف لكبار السن');
            PERFORM insert_category_translations('telephones-seniors', 'en', 'Senior Phones');
            PERFORM insert_category_translations('telephones-seniors', 'de', 'Seniorenhandys');
            PERFORM insert_category_translations('telephones-seniors', 'es', 'Teléfonos para mayores');
            PERFORM insert_category_translations('telephones-seniors', 'it', 'Telefoni per Anziani');

            -- Level 2: telephones-fixes-filaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('telephones-fixes-filaires', 'telephones-fixes-filaires', 2, l1_id, 'Téléphones fixes filaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('telephones-fixes-filaires', 'fr', 'Téléphones fixes filaires');
            PERFORM insert_category_translations('telephones-fixes-filaires', 'ar', 'هواتف ثابتة سلكية');
            PERFORM insert_category_translations('telephones-fixes-filaires', 'en', 'Wired Landline Phones');
            PERFORM insert_category_translations('telephones-fixes-filaires', 'de', 'Schnurgebundene Festnetztelefone');
            PERFORM insert_category_translations('telephones-fixes-filaires', 'es', 'Teléfonos fijos con cable');
            PERFORM insert_category_translations('telephones-fixes-filaires', 'it', 'Telefoni Fissi con Filo');

            -- Level 2: telephones-fixes-sans-fil
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('telephones-fixes-sans-fil', 'telephones-fixes-sans-fil', 2, l1_id, 'Téléphones fixes sans fil')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('telephones-fixes-sans-fil', 'fr', 'Téléphones fixes sans fil');
            PERFORM insert_category_translations('telephones-fixes-sans-fil', 'ar', 'هواتف ثابتة لاسلكية');
            PERFORM insert_category_translations('telephones-fixes-sans-fil', 'en', 'Cordless Landline Phones');
            PERFORM insert_category_translations('telephones-fixes-sans-fil', 'de', 'Schnurlose Festnetztelefone');
            PERFORM insert_category_translations('telephones-fixes-sans-fil', 'es', 'Teléfonos fijos inalámbricos');
            PERFORM insert_category_translations('telephones-fixes-sans-fil', 'it', 'Telefoni Cordless');

            -- Level 2: combines-dect
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('combines-dect', 'combines-dect', 2, l1_id, 'Combinés DECT')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('combines-dect', 'fr', 'Combinés DECT');
            PERFORM insert_category_translations('combines-dect', 'ar', 'أجهزة DECT');
            PERFORM insert_category_translations('combines-dect', 'en', 'DECT Handsets');
            PERFORM insert_category_translations('combines-dect', 'de', 'DECT-Telefone');
            PERFORM insert_category_translations('combines-dect', 'es', 'Auriculares DECT');
            PERFORM insert_category_translations('combines-dect', 'it', 'Portatili DECT');

            -- Level 2: telephones-voip
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('telephones-voip', 'telephones-voip', 2, l1_id, 'Téléphones VoIP')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('telephones-voip', 'fr', 'Téléphones VoIP');
            PERFORM insert_category_translations('telephones-voip', 'ar', 'هواتف VoIP');
            PERFORM insert_category_translations('telephones-voip', 'en', 'VoIP Phones');
            PERFORM insert_category_translations('telephones-voip', 'de', 'VoIP-Telefone');
            PERFORM insert_category_translations('telephones-voip', 'es', 'Teléfonos VoIP');
            PERFORM insert_category_translations('telephones-voip', 'it', 'Telefoni VoIP');

        -- Level 1: tablettes-appareils-mobiles
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tablettes-appareils-mobiles', 'tablettes-appareils-mobiles', 1, root_id, 'Tablettes & Appareils Mobiles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('tablettes-appareils-mobiles', 'fr', 'Tablettes & Appareils Mobiles');
        PERFORM insert_category_translations('tablettes-appareils-mobiles', 'ar', 'أجهزة لوحية وأجهزة محمولة');
        PERFORM insert_category_translations('tablettes-appareils-mobiles', 'en', 'Tablets & Mobile Devices');
        PERFORM insert_category_translations('tablettes-appareils-mobiles', 'de', 'Tablets & Mobile Geräte');
        PERFORM insert_category_translations('tablettes-appareils-mobiles', 'es', 'Tablets & Dispositivos Móviles');
        PERFORM insert_category_translations('tablettes-appareils-mobiles', 'it', 'Tablet e Dispositivi Mobili');

            -- Level 2: tablettes-android
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tablettes-android', 'tablettes-android', 2, l1_id, 'Tablettes Android')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tablettes-android', 'fr', 'Tablettes Android');
            PERFORM insert_category_translations('tablettes-android', 'ar', 'أجهزة لوحية أندرويد');
            PERFORM insert_category_translations('tablettes-android', 'en', 'Android Tablets');
            PERFORM insert_category_translations('tablettes-android', 'de', 'Android-Tablets');
            PERFORM insert_category_translations('tablettes-android', 'es', 'Tablets Android');
            PERFORM insert_category_translations('tablettes-android', 'it', 'Tablet Android');

            -- Level 2: ipad
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ipad', 'ipad', 2, l1_id, 'iPad')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ipad', 'fr', 'iPad');
            PERFORM insert_category_translations('ipad', 'ar', 'آيباد');
            PERFORM insert_category_translations('ipad', 'en', 'iPad');
            PERFORM insert_category_translations('ipad', 'de', 'iPad');
            PERFORM insert_category_translations('ipad', 'es', 'iPad');
            PERFORM insert_category_translations('ipad', 'it', 'iPad');

            -- Level 2: tablettes-graphiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tablettes-graphiques', 'tablettes-graphiques', 2, l1_id, 'Tablettes graphiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tablettes-graphiques', 'fr', 'Tablettes graphiques');
            PERFORM insert_category_translations('tablettes-graphiques', 'ar', 'أجهزة لوحية للرسم');
            PERFORM insert_category_translations('tablettes-graphiques', 'en', 'Graphics Tablets');
            PERFORM insert_category_translations('tablettes-graphiques', 'de', 'Grafiktabletts');
            PERFORM insert_category_translations('tablettes-graphiques', 'es', 'Tabletas gráficas');
            PERFORM insert_category_translations('tablettes-graphiques', 'it', 'Tavolette Grafiche');

            -- Level 2: tablettes-enfants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tablettes-enfants', 'tablettes-enfants', 2, l1_id, 'Tablettes enfants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tablettes-enfants', 'fr', 'Tablettes enfants');
            PERFORM insert_category_translations('tablettes-enfants', 'ar', 'أجهزة لوحية للأطفال');
            PERFORM insert_category_translations('tablettes-enfants', 'en', 'Kids Tablets');
            PERFORM insert_category_translations('tablettes-enfants', 'de', 'Kinder-Tablets');
            PERFORM insert_category_translations('tablettes-enfants', 'es', 'Tablets para niños');
            PERFORM insert_category_translations('tablettes-enfants', 'it', 'Tablet per Bambini');

            -- Level 2: liseuses-electroniques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('liseuses-electroniques', 'liseuses-electroniques', 2, l1_id, 'Liseuses électroniques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('liseuses-electroniques', 'fr', 'Liseuses électroniques');
            PERFORM insert_category_translations('liseuses-electroniques', 'ar', 'أجهزة القراءة الإلكترونية');
            PERFORM insert_category_translations('liseuses-electroniques', 'en', 'E-readers');
            PERFORM insert_category_translations('liseuses-electroniques', 'de', 'E-Book-Reader');
            PERFORM insert_category_translations('liseuses-electroniques', 'es', 'Lectores electrónicos');
            PERFORM insert_category_translations('liseuses-electroniques', 'it', 'E-reader');

            -- Level 2: phablettes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('phablettes', 'phablettes', 2, l1_id, 'Phablettes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('phablettes', 'fr', 'Phablettes');
            PERFORM insert_category_translations('phablettes', 'ar', 'فابلت');
            PERFORM insert_category_translations('phablettes', 'en', 'Phablets');
            PERFORM insert_category_translations('phablettes', 'de', 'Phablets');
            PERFORM insert_category_translations('phablettes', 'es', 'Phablets');
            PERFORM insert_category_translations('phablettes', 'it', 'Phablet');

            -- Level 2: mini-tablettes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mini-tablettes', 'mini-tablettes', 2, l1_id, 'Mini tablettes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mini-tablettes', 'fr', 'Mini tablettes');
            PERFORM insert_category_translations('mini-tablettes', 'ar', 'أجهزة لوحية صغيرة');
            PERFORM insert_category_translations('mini-tablettes', 'en', 'Mini Tablets');
            PERFORM insert_category_translations('mini-tablettes', 'de', 'Mini-Tablets');
            PERFORM insert_category_translations('mini-tablettes', 'es', 'Mini tablets');
            PERFORM insert_category_translations('mini-tablettes', 'it', 'Mini Tablet');

            -- Level 2: tablettes-professionnelles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tablettes-professionnelles', 'tablettes-professionnelles', 2, l1_id, 'Tablettes professionnelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tablettes-professionnelles', 'fr', 'Tablettes professionnelles');
            PERFORM insert_category_translations('tablettes-professionnelles', 'ar', 'أجهزة لوحية احترافية');
            PERFORM insert_category_translations('tablettes-professionnelles', 'en', 'Professional Tablets');
            PERFORM insert_category_translations('tablettes-professionnelles', 'de', 'Business-Tablets');
            PERFORM insert_category_translations('tablettes-professionnelles', 'es', 'Tablets profesionales');
            PERFORM insert_category_translations('tablettes-professionnelles', 'it', 'Tablet Professionali');

        -- Level 1: accessoires-telephones
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-telephones', 'accessoires-telephones', 1, root_id, 'Accessoires Téléphones')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('accessoires-telephones', 'fr', 'Accessoires Téléphones');
        PERFORM insert_category_translations('accessoires-telephones', 'ar', 'إكسسوارات الهواتف');
        PERFORM insert_category_translations('accessoires-telephones', 'en', 'Phone Accessories');
        PERFORM insert_category_translations('accessoires-telephones', 'de', 'Handy-Zubehör');
        PERFORM insert_category_translations('accessoires-telephones', 'es', 'Accesorios para Teléfonos');
        PERFORM insert_category_translations('accessoires-telephones', 'it', 'Accessori Telefonia');

            -- Level 2: coques-protection
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('coques-protection', 'coques-protection', 2, l1_id, 'Coques de protection')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('coques-protection', 'fr', 'Coques de protection');
            PERFORM insert_category_translations('coques-protection', 'ar', 'أغطية حماية');
            PERFORM insert_category_translations('coques-protection', 'en', 'Protective Cases');
            PERFORM insert_category_translations('coques-protection', 'de', 'Schutzhüllen');
            PERFORM insert_category_translations('coques-protection', 'es', 'Fundas protectoras');
            PERFORM insert_category_translations('coques-protection', 'it', 'Cover Protettive');

            -- Level 2: housses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('housses', 'housses', 2, l1_id, 'Housses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('housses', 'fr', 'Housses');
            PERFORM insert_category_translations('housses', 'ar', 'حافظات');
            PERFORM insert_category_translations('housses', 'en', 'Sleeves');
            PERFORM insert_category_translations('housses', 'de', 'Taschen');
            PERFORM insert_category_translations('housses', 'es', 'Fundas');
            PERFORM insert_category_translations('housses', 'it', 'Custodie');

            -- Level 2: etuis
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('etuis', 'etuis', 2, l1_id, 'Étuis')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('etuis', 'fr', 'Étuis');
            PERFORM insert_category_translations('etuis', 'ar', 'حقائب صغيرة');
            PERFORM insert_category_translations('etuis', 'en', 'Pouches');
            PERFORM insert_category_translations('etuis', 'de', 'Etuis');
            PERFORM insert_category_translations('etuis', 'es', 'Estuches');
            PERFORM insert_category_translations('etuis', 'it', 'Astucci');

            -- Level 2: bumpers
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bumpers', 'bumpers', 2, l1_id, 'Bumpers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bumpers', 'fr', 'Bumpers');
            PERFORM insert_category_translations('bumpers', 'ar', 'مصدات صدمات');
            PERFORM insert_category_translations('bumpers', 'en', 'Bumpers');
            PERFORM insert_category_translations('bumpers', 'de', 'Bumper');
            PERFORM insert_category_translations('bumpers', 'es', 'Bumpers');
            PERFORM insert_category_translations('bumpers', 'it', 'Bumper');

            -- Level 2: vitres-protections-ecran
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vitres-protections-ecran', 'vitres-protections-ecran', 2, l1_id, 'Vitres & protections d’écran')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('vitres-protections-ecran', 'fr', 'Vitres & protections d’écran');
            PERFORM insert_category_translations('vitres-protections-ecran', 'ar', 'زجاج وحماية شاشة');
            PERFORM insert_category_translations('vitres-protections-ecran', 'en', 'Screen Protectors');
            PERFORM insert_category_translations('vitres-protections-ecran', 'de', 'Displayschutzfolien & Panzerglas');
            PERFORM insert_category_translations('vitres-protections-ecran', 'es', 'Protectores de pantalla');
            PERFORM insert_category_translations('vitres-protections-ecran', 'it', 'Vetri e Pellicole Protettive');

            -- Level 2: supports-telephones
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('supports-telephones', 'supports-telephones', 2, l1_id, 'Supports téléphones')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('supports-telephones', 'fr', 'Supports téléphones');
            PERFORM insert_category_translations('supports-telephones', 'ar', 'حوامل هواتف');
            PERFORM insert_category_translations('supports-telephones', 'en', 'Phone Stands');
            PERFORM insert_category_translations('supports-telephones', 'de', 'Handyhalterungen');
            PERFORM insert_category_translations('supports-telephones', 'es', 'Soportes para teléfonos');
            PERFORM insert_category_translations('supports-telephones', 'it', 'Supporti per Telefono');

            -- Level 2: supports-voiture
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('supports-voiture', 'supports-voiture', 2, l1_id, 'Supports voiture')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('supports-voiture', 'fr', 'Supports voiture');
            PERFORM insert_category_translations('supports-voiture', 'ar', 'حوامل للسيارة');
            PERFORM insert_category_translations('supports-voiture', 'en', 'Car Mounts');
            PERFORM insert_category_translations('supports-voiture', 'de', 'Kfz-Halterungen');
            PERFORM insert_category_translations('supports-voiture', 'es', 'Soportes para coche');
            PERFORM insert_category_translations('supports-voiture', 'it', 'Supporti Auto');

            -- Level 2: stylos-tactiles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('stylos-tactiles', 'stylos-tactiles', 2, l1_id, 'Stylos tactiles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('stylos-tactiles', 'fr', 'Stylos tactiles');
            PERFORM insert_category_translations('stylos-tactiles', 'ar', 'أقلام لمس');
            PERFORM insert_category_translations('stylos-tactiles', 'en', 'Stylus Pens');
            PERFORM insert_category_translations('stylos-tactiles', 'de', 'Eingabestifte');
            PERFORM insert_category_translations('stylos-tactiles', 'es', 'Lápices táctiles');
            PERFORM insert_category_translations('stylos-tactiles', 'it', 'Penne Touch');

            -- Level 2: anneaux-grips
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('anneaux-grips', 'anneaux-grips', 2, l1_id, 'Anneaux & grips')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('anneaux-grips', 'fr', 'Anneaux & grips');
            PERFORM insert_category_translations('anneaux-grips', 'ar', 'حلقات ومقابض');
            PERFORM insert_category_translations('anneaux-grips', 'en', 'Rings & Grips');
            PERFORM insert_category_translations('anneaux-grips', 'de', 'Ringe & Griffe');
            PERFORM insert_category_translations('anneaux-grips', 'es', 'Anillos y agarres');
            PERFORM insert_category_translations('anneaux-grips', 'it', 'Anelli e Grip');

            -- Level 2: pochettes-impermeables
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pochettes-impermeables', 'pochettes-impermeables', 2, l1_id, 'Pochettes imperméables')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pochettes-impermeables', 'fr', 'Pochettes imperméables');
            PERFORM insert_category_translations('pochettes-impermeables', 'ar', 'أكياس مقاومة للماء');
            PERFORM insert_category_translations('pochettes-impermeables', 'en', 'Waterproof Pouches');
            PERFORM insert_category_translations('pochettes-impermeables', 'de', 'Wasserdichte Hüllen');
            PERFORM insert_category_translations('pochettes-impermeables', 'es', 'Fundas impermeables');
            PERFORM insert_category_translations('pochettes-impermeables', 'it', 'Custodie Impermeabili');

        -- Level 1: batteries-charge
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('batteries-charge', 'batteries-charge', 1, root_id, 'Batteries & Charge')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('batteries-charge', 'fr', 'Batteries & Charge');
        PERFORM insert_category_translations('batteries-charge', 'ar', 'بطاريات وشحن');
        PERFORM insert_category_translations('batteries-charge', 'en', 'Batteries & Charging');
        PERFORM insert_category_translations('batteries-charge', 'de', 'Akkus & Ladegeräte');
        PERFORM insert_category_translations('batteries-charge', 'es', 'Baterías & Carga');
        PERFORM insert_category_translations('batteries-charge', 'it', 'Batterie e Caricabatterie');

            -- Level 2: chargeurs-standard
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chargeurs-standard', 'chargeurs-standard', 2, l1_id, 'Chargeurs standard')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chargeurs-standard', 'fr', 'Chargeurs standard');
            PERFORM insert_category_translations('chargeurs-standard', 'ar', 'شواحن قياسية');
            PERFORM insert_category_translations('chargeurs-standard', 'en', 'Standard Chargers');
            PERFORM insert_category_translations('chargeurs-standard', 'de', 'Standard-Ladegeräte');
            PERFORM insert_category_translations('chargeurs-standard', 'es', 'Cargadores estándar');
            PERFORM insert_category_translations('chargeurs-standard', 'it', 'Caricabatterie Standard');

            -- Level 2: chargeurs-rapides-fast-quick
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chargeurs-rapides-fast-quick', 'chargeurs-rapides-fast-quick', 2, l1_id, 'Chargeurs rapides (Fast Charge, Quick Charge)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chargeurs-rapides-fast-quick', 'fr', 'Chargeurs rapides (Fast Charge, Quick Charge)');
            PERFORM insert_category_translations('chargeurs-rapides-fast-quick', 'ar', 'شواحن سريعة');
            PERFORM insert_category_translations('chargeurs-rapides-fast-quick', 'en', 'Fast Chargers (Quick Charge)');
            PERFORM insert_category_translations('chargeurs-rapides-fast-quick', 'de', 'Schnellladegeräte (Fast Charge, Quick Charge)');
            PERFORM insert_category_translations('chargeurs-rapides-fast-quick', 'es', 'Cargadores rápidos (Fast/Quick Charge)');
            PERFORM insert_category_translations('chargeurs-rapides-fast-quick', 'it', 'Caricabatterie Rapidi (Fast Charge)');

            -- Level 2: chargeurs-sans-fil
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chargeurs-sans-fil', 'chargeurs-sans-fil', 2, l1_id, 'Chargeurs sans fil')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chargeurs-sans-fil', 'fr', 'Chargeurs sans fil');
            PERFORM insert_category_translations('chargeurs-sans-fil', 'ar', 'شواحن لاسلكية');
            PERFORM insert_category_translations('chargeurs-sans-fil', 'en', 'Wireless Chargers');
            PERFORM insert_category_translations('chargeurs-sans-fil', 'de', 'Kabellose Ladegeräte');
            PERFORM insert_category_translations('chargeurs-sans-fil', 'es', 'Cargadores inalámbricos');
            PERFORM insert_category_translations('chargeurs-sans-fil', 'it', 'Caricabatterie Wireless');

            -- Level 2: stations-recharge
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('stations-recharge', 'stations-recharge', 2, l1_id, 'Stations de recharge')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('stations-recharge', 'fr', 'Stations de recharge');
            PERFORM insert_category_translations('stations-recharge', 'ar', 'محطات شحن');
            PERFORM insert_category_translations('stations-recharge', 'en', 'Charging Stations');
            PERFORM insert_category_translations('stations-recharge', 'de', 'Ladestationen');
            PERFORM insert_category_translations('stations-recharge', 'es', 'Estaciones de carga');
            PERFORM insert_category_translations('stations-recharge', 'it', 'Stazioni di Ricarica');

            -- Level 2: powerbanks
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('powerbanks', 'powerbanks', 2, l1_id, 'Powerbanks')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('powerbanks', 'fr', 'Powerbanks');
            PERFORM insert_category_translations('powerbanks', 'ar', 'بنوك طاقة');
            PERFORM insert_category_translations('powerbanks', 'en', 'Powerbanks');
            PERFORM insert_category_translations('powerbanks', 'de', 'Powerbanks');
            PERFORM insert_category_translations('powerbanks', 'es', 'Powerbanks');
            PERFORM insert_category_translations('powerbanks', 'it', 'Powerbank');

            -- Level 2: batteries-externes-haute-capacite
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('batteries-externes-haute-capacite', 'batteries-externes-haute-capacite', 2, l1_id, 'Batteries externes haute capacité')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('batteries-externes-haute-capacite', 'fr', 'Batteries externes haute capacité');
            PERFORM insert_category_translations('batteries-externes-haute-capacite', 'ar', 'بطاريات خارجية عالية السعة');
            PERFORM insert_category_translations('batteries-externes-haute-capacite', 'en', 'High-Capacity External Batteries');
            PERFORM insert_category_translations('batteries-externes-haute-capacite', 'de', 'Externe Akkus mit hoher Kapazität');
            PERFORM insert_category_translations('batteries-externes-haute-capacite', 'es', 'Baterías externas de alta capacidad');
            PERFORM insert_category_translations('batteries-externes-haute-capacite', 'it', 'Batterie Esterne ad Alta Capacità');

            -- Level 2: cables-usb
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cables-usb', 'cables-usb', 2, l1_id, 'Câbles USB (Type‑C, Lightning, Micro‑USB)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cables-usb', 'fr', 'Câbles USB (Type‑C, Lightning, Micro‑USB)');
            PERFORM insert_category_translations('cables-usb', 'ar', 'كابلات USB');
            PERFORM insert_category_translations('cables-usb', 'en', 'USB Cables');
            PERFORM insert_category_translations('cables-usb', 'de', 'USB-Kabel (Type‑C, Lightning, Micro‑USB)');
            PERFORM insert_category_translations('cables-usb', 'es', 'Cables USB (Type‑C, Lightning, Micro‑USB)');
            PERFORM insert_category_translations('cables-usb', 'it', 'Cavi USB (Type-C, Lightning, Micro-USB)');

            -- Level 2: adaptateurs-secteur
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('adaptateurs-secteur', 'adaptateurs-secteur', 2, l1_id, 'Adaptateurs secteur')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('adaptateurs-secteur', 'fr', 'Adaptateurs secteur');
            PERFORM insert_category_translations('adaptateurs-secteur', 'ar', 'محولات طاقة');
            PERFORM insert_category_translations('adaptateurs-secteur', 'en', 'Power Adapters');
            PERFORM insert_category_translations('adaptateurs-secteur', 'de', 'Netzadapter');
            PERFORM insert_category_translations('adaptateurs-secteur', 'es', 'Adaptadores de corriente');
            PERFORM insert_category_translations('adaptateurs-secteur', 'it', 'Adattatori di Alimentazione');

            -- Level 2: chargeurs-voiture
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chargeurs-voiture', 'chargeurs-voiture', 2, l1_id, 'Chargeurs voiture')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chargeurs-voiture', 'fr', 'Chargeurs voiture');
            PERFORM insert_category_translations('chargeurs-voiture', 'ar', 'شواحن سيارة');
            PERFORM insert_category_translations('chargeurs-voiture', 'en', 'Car Chargers');
            PERFORM insert_category_translations('chargeurs-voiture', 'de', 'Kfz-Ladegeräte');
            PERFORM insert_category_translations('chargeurs-voiture', 'es', 'Cargadores de coche');
            PERFORM insert_category_translations('chargeurs-voiture', 'it', 'Caricabatterie da Auto');

            -- Level 2: hubs-usb-multiprises-intelligentes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('hubs-usb-multiprises-intelligentes', 'hubs-usb-multiprises-intelligentes', 2, l1_id, 'Hubs USB & multiprises intelligentes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('hubs-usb-multiprises-intelligentes', 'fr', 'Hubs USB & multiprises intelligentes');
            PERFORM insert_category_translations('hubs-usb-multiprises-intelligentes', 'ar', 'موزعات USB ومقابس ذكية');
            PERFORM insert_category_translations('hubs-usb-multiprises-intelligentes', 'en', 'USB Hubs & Smart Power Strips');
            PERFORM insert_category_translations('hubs-usb-multiprises-intelligentes', 'de', 'USB-Hubs & smarte Steckdosenleisten');
            PERFORM insert_category_translations('hubs-usb-multiprises-intelligentes', 'es', 'Hubs USB y regletas inteligentes');
            PERFORM insert_category_translations('hubs-usb-multiprises-intelligentes', 'it', 'Hub USB e Multiprese Smart');

        -- Level 1: audio-mobile
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('audio-mobile', 'audio-mobile', 1, root_id, 'Audio Mobile')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('audio-mobile', 'fr', 'Audio Mobile');
        PERFORM insert_category_translations('audio-mobile', 'ar', 'صوتيات الهواتف');
        PERFORM insert_category_translations('audio-mobile', 'en', 'Mobile Audio');
        PERFORM insert_category_translations('audio-mobile', 'de', 'Mobiles Audio');
        PERFORM insert_category_translations('audio-mobile', 'es', 'Audio Móvil');
        PERFORM insert_category_translations('audio-mobile', 'it', 'Audio Mobile');

            -- Level 2: ecouteurs-filaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ecouteurs-filaires', 'ecouteurs-filaires', 2, l1_id, 'Écouteurs filaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ecouteurs-filaires', 'fr', 'Écouteurs filaires');
            PERFORM insert_category_translations('ecouteurs-filaires', 'ar', 'سماعات سلكية');
            PERFORM insert_category_translations('ecouteurs-filaires', 'en', 'Wired Earphones');
            PERFORM insert_category_translations('ecouteurs-filaires', 'de', 'Kabelgebundene Kopfhörer');
            PERFORM insert_category_translations('ecouteurs-filaires', 'es', 'Auriculares con cable');
            PERFORM insert_category_translations('ecouteurs-filaires', 'it', 'Auricolari con Filo');

            -- Level 2: ecouteurs-bluetooth
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ecouteurs-bluetooth', 'ecouteurs-bluetooth', 2, l1_id, 'Écouteurs Bluetooth')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ecouteurs-bluetooth', 'fr', 'Écouteurs Bluetooth');
            PERFORM insert_category_translations('ecouteurs-bluetooth', 'ar', 'سماعات بلوتوث');
            PERFORM insert_category_translations('ecouteurs-bluetooth', 'en', 'Bluetooth Earphones');
            PERFORM insert_category_translations('ecouteurs-bluetooth', 'de', 'Bluetooth-Kopfhörer');
            PERFORM insert_category_translations('ecouteurs-bluetooth', 'es', 'Auriculares Bluetooth');
            PERFORM insert_category_translations('ecouteurs-bluetooth', 'it', 'Auricolari Bluetooth');

            -- Level 2: airpods
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('airpods', 'airpods', 2, l1_id, 'AirPods')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('airpods', 'fr', 'AirPods');
            PERFORM insert_category_translations('airpods', 'ar', 'AirPods');
            PERFORM insert_category_translations('airpods', 'en', 'AirPods');
            PERFORM insert_category_translations('airpods', 'de', 'AirPods');
            PERFORM insert_category_translations('airpods', 'es', 'AirPods');
            PERFORM insert_category_translations('airpods', 'it', 'AirPods');

            -- Level 2: casques-sans-fil
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('casques-sans-fil', 'casques-sans-fil', 2, l1_id, 'Casques sans fil')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('casques-sans-fil', 'fr', 'Casques sans fil');
            PERFORM insert_category_translations('casques-sans-fil', 'ar', 'سماعات رأس لاسلكية');
            PERFORM insert_category_translations('casques-sans-fil', 'en', 'Wireless Headphones');
            PERFORM insert_category_translations('casques-sans-fil', 'de', 'Kabellose Kopfhörer');
            PERFORM insert_category_translations('casques-sans-fil', 'es', 'Cascos inalámbricos');
            PERFORM insert_category_translations('casques-sans-fil', 'it', 'Cuffie Wireless');

            -- Level 2: casques-filaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('casques-filaires', 'casques-filaires', 2, l1_id, 'Casques filaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('casques-filaires', 'fr', 'Casques filaires');
            PERFORM insert_category_translations('casques-filaires', 'ar', 'سماعات رأس سلكية');
            PERFORM insert_category_translations('casques-filaires', 'en', 'Wired Headphones');
            PERFORM insert_category_translations('casques-filaires', 'de', 'Kabelgebundene Kopfhörer (Over-Ear)');
            PERFORM insert_category_translations('casques-filaires', 'es', 'Cascos con cable');
            PERFORM insert_category_translations('casques-filaires', 'it', 'Cuffie con Filo');

            -- Level 2: enceintes-bluetooth
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('enceintes-bluetooth', 'enceintes-bluetooth', 2, l1_id, 'Enceintes Bluetooth')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('enceintes-bluetooth', 'fr', 'Enceintes Bluetooth');
            PERFORM insert_category_translations('enceintes-bluetooth', 'ar', 'مكبرات صوت بلوتوث');
            PERFORM insert_category_translations('enceintes-bluetooth', 'en', 'Bluetooth Speakers');
            PERFORM insert_category_translations('enceintes-bluetooth', 'de', 'Bluetooth-Lautsprecher');
            PERFORM insert_category_translations('enceintes-bluetooth', 'es', 'Altavoces Bluetooth');
            PERFORM insert_category_translations('enceintes-bluetooth', 'it', 'Altoparlanti Bluetooth');

            -- Level 2: kits-mains-libres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('kits-mains-libres', 'kits-mains-libres', 2, l1_id, 'Kits mains‑libres')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('kits-mains-libres', 'fr', 'Kits mains‑libres');
            PERFORM insert_category_translations('kits-mains-libres', 'ar', 'مجموعات التحدث الحر');
            PERFORM insert_category_translations('kits-mains-libres', 'en', 'Hands-free Kits');
            PERFORM insert_category_translations('kits-mains-libres', 'de', 'Freisprecheinrichtungen');
            PERFORM insert_category_translations('kits-mains-libres', 'es', 'Manos libres');
            PERFORM insert_category_translations('kits-mains-libres', 'it', 'Kit Vivavoce');

            -- Level 2: micros-mobiles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('micros-mobiles', 'micros-mobiles', 2, l1_id, 'Micros mobiles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('micros-mobiles', 'fr', 'Micros mobiles');
            PERFORM insert_category_translations('micros-mobiles', 'ar', 'ميكروفونات للجوال');
            PERFORM insert_category_translations('micros-mobiles', 'en', 'Mobile Microphones');
            PERFORM insert_category_translations('micros-mobiles', 'de', 'Mobile Mikrofone');
            PERFORM insert_category_translations('micros-mobiles', 'es', 'Micrófonos móviles');
            PERFORM insert_category_translations('micros-mobiles', 'it', 'Microfoni per Mobile');

            -- Level 2: adaptateurs-audio
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('adaptateurs-audio', 'adaptateurs-audio', 2, l1_id, 'Adaptateurs audio')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('adaptateurs-audio', 'fr', 'Adaptateurs audio');
            PERFORM insert_category_translations('adaptateurs-audio', 'ar', 'محولات صوتية');
            PERFORM insert_category_translations('adaptateurs-audio', 'en', 'Audio Adapters');
            PERFORM insert_category_translations('adaptateurs-audio', 'de', 'Audio-Adapter');
            PERFORM insert_category_translations('adaptateurs-audio', 'es', 'Adaptadores de audio');
            PERFORM insert_category_translations('adaptateurs-audio', 'it', 'Adattatori Audio');

        -- Level 1: pieces-reparation-telephone
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pieces-reparation-telephone', 'pieces-reparation-telephone', 1, root_id, 'Pièces & Réparation Téléphone')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('pieces-reparation-telephone', 'fr', 'Pièces & Réparation Téléphone');
        PERFORM insert_category_translations('pieces-reparation-telephone', 'ar', 'قطع غيار وتصليح الهواتف');
        PERFORM insert_category_translations('pieces-reparation-telephone', 'en', 'Phone Parts & Repair');
        PERFORM insert_category_translations('pieces-reparation-telephone', 'de', 'Handy-Ersatzteile & Reparatur');
        PERFORM insert_category_translations('pieces-reparation-telephone', 'es', 'Piezas & Reparación de Teléfonos');
        PERFORM insert_category_translations('pieces-reparation-telephone', 'it', 'Parti e Riparazione Telefoni');

            -- Level 2: ecrans-lcd-oled
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ecrans-lcd-oled', 'ecrans-lcd-oled', 2, l1_id, 'Écrans LCD et OLED')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ecrans-lcd-oled', 'fr', 'Écrans LCD et OLED');
            PERFORM insert_category_translations('ecrans-lcd-oled', 'ar', 'شاشات LCD و OLED');
            PERFORM insert_category_translations('ecrans-lcd-oled', 'en', 'LCD & OLED Screens');
            PERFORM insert_category_translations('ecrans-lcd-oled', 'de', 'LCD- & OLED-Displays');
            PERFORM insert_category_translations('ecrans-lcd-oled', 'es', 'Pantallas LCD y OLED');
            PERFORM insert_category_translations('ecrans-lcd-oled', 'it', 'Schermi LCD e OLED');

            -- Level 2: batteries-internes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('batteries-internes', 'batteries-internes', 2, l1_id, 'Batteries internes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('batteries-internes', 'fr', 'Batteries internes');
            PERFORM insert_category_translations('batteries-internes', 'ar', 'بطاريات داخلية');
            PERFORM insert_category_translations('batteries-internes', 'en', 'Internal Batteries');
            PERFORM insert_category_translations('batteries-internes', 'de', 'Interne Akkus');
            PERFORM insert_category_translations('batteries-internes', 'es', 'Baterías internas');
            PERFORM insert_category_translations('batteries-internes', 'it', 'Batterie Interne');

            -- Level 2: connecteurs-charge
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('connecteurs-charge', 'connecteurs-charge', 2, l1_id, 'Connecteurs de charge')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('connecteurs-charge', 'fr', 'Connecteurs de charge');
            PERFORM insert_category_translations('connecteurs-charge', 'ar', 'موصلات الشحن');
            PERFORM insert_category_translations('connecteurs-charge', 'en', 'Charging Connectors');
            PERFORM insert_category_translations('connecteurs-charge', 'de', 'Ladebuchsen');
            PERFORM insert_category_translations('connecteurs-charge', 'es', 'Conectores de carga');
            PERFORM insert_category_translations('connecteurs-charge', 'it', 'Connettori di Ricarica');

            -- Level 2: nappes-circuits
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('nappes-circuits', 'nappes-circuits', 2, l1_id, 'Nappes et circuits')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('nappes-circuits', 'fr', 'Nappes et circuits');
            PERFORM insert_category_translations('nappes-circuits', 'ar', 'كابلات ودوائر');
            PERFORM insert_category_translations('nappes-circuits', 'en', 'Flex Cables & Circuits');
            PERFORM insert_category_translations('nappes-circuits', 'de', 'Flexkabel & Platinen');
            PERFORM insert_category_translations('nappes-circuits', 'es', 'Cables flex y circuitos');
            PERFORM insert_category_translations('nappes-circuits', 'it', 'Cavi Flat e Circuiti');

            -- Level 2: cameras-avant-arriere
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cameras-avant-arriere', 'cameras-avant-arriere', 2, l1_id, 'Caméras avant/arrière')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cameras-avant-arriere', 'fr', 'Caméras avant/arrière');
            PERFORM insert_category_translations('cameras-avant-arriere', 'ar', 'كاميرات أمامية وخلفية');
            PERFORM insert_category_translations('cameras-avant-arriere', 'en', 'Front/Rear Cameras');
            PERFORM insert_category_translations('cameras-avant-arriere', 'de', 'Front- & Rückkameras');
            PERFORM insert_category_translations('cameras-avant-arriere', 'es', 'Cámaras frontal/trasera');
            PERFORM insert_category_translations('cameras-avant-arriere', 'it', 'Fotocamere Anteriori/Posteriori');

            -- Level 2: chassis-coques-arriere
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chassis-coques-arriere', 'chassis-coques-arriere', 2, l1_id, 'Châssis et coques arrière')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chassis-coques-arriere', 'fr', 'Châssis et coques arrière');
            PERFORM insert_category_translations('chassis-coques-arriere', 'ar', 'هياكل وأغطية خلفية');
            PERFORM insert_category_translations('chassis-coques-arriere', 'en', 'Frames & Back Covers');
            PERFORM insert_category_translations('chassis-coques-arriere', 'de', 'Gehäuse & Rückseiten');
            PERFORM insert_category_translations('chassis-coques-arriere', 'es', 'Chasis y carcasas traseras');
            PERFORM insert_category_translations('chassis-coques-arriere', 'it', 'Telai e Scocche Posteriori');

            -- Level 2: boutons-flex
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('boutons-flex', 'boutons-flex', 2, l1_id, 'Boutons & flex')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('boutons-flex', 'fr', 'Boutons & flex');
            PERFORM insert_category_translations('boutons-flex', 'ar', 'أزرار وكابلات مرنة');
            PERFORM insert_category_translations('boutons-flex', 'en', 'Buttons & Flex Cables');
            PERFORM insert_category_translations('boutons-flex', 'de', 'Tasten & Flexkabel');
            PERFORM insert_category_translations('boutons-flex', 'es', 'Botones y flex');
            PERFORM insert_category_translations('boutons-flex', 'it', 'Pulsanti e Flex');

            -- Level 2: haut-parleurs-micros
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('haut-parleurs-micros', 'haut-parleurs-micros', 2, l1_id, 'Haut‑parleurs & micros')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('haut-parleurs-micros', 'fr', 'Haut‑parleurs & micros');
            PERFORM insert_category_translations('haut-parleurs-micros', 'ar', 'مكبرات صوت وميكروفونات');
            PERFORM insert_category_translations('haut-parleurs-micros', 'en', 'Speakers & Mics');
            PERFORM insert_category_translations('haut-parleurs-micros', 'de', 'Lautsprecher & Mikrofone');
            PERFORM insert_category_translations('haut-parleurs-micros', 'es', 'Altavoces y micrófonos');
            PERFORM insert_category_translations('haut-parleurs-micros', 'it', 'Altoparlanti e Microfoni');

            -- Level 2: vitres-arriere
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vitres-arriere', 'vitres-arriere', 2, l1_id, 'Vitres arrière')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('vitres-arriere', 'fr', 'Vitres arrière');
            PERFORM insert_category_translations('vitres-arriere', 'ar', 'زجاج خلفي');
            PERFORM insert_category_translations('vitres-arriere', 'en', 'Rear Glass');
            PERFORM insert_category_translations('vitres-arriere', 'de', 'Rückgläser');
            PERFORM insert_category_translations('vitres-arriere', 'es', 'Cristales traseros');
            PERFORM insert_category_translations('vitres-arriere', 'it', 'Vetri Posteriori');

            -- Level 2: kits-reparation
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('kits-reparation', 'kits-reparation', 2, l1_id, 'Kits de réparation')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('kits-reparation', 'fr', 'Kits de réparation');
            PERFORM insert_category_translations('kits-reparation', 'ar', 'أطقم إصلاح');
            PERFORM insert_category_translations('kits-reparation', 'en', 'Repair Kits');
            PERFORM insert_category_translations('kits-reparation', 'de', 'Reparatur-Sets');
            PERFORM insert_category_translations('kits-reparation', 'es', 'Kits de reparación');
            PERFORM insert_category_translations('kits-reparation', 'it', 'Kit di Riparazione');

            -- Level 2: outils-demontage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('outils-demontage', 'outils-demontage', 2, l1_id, 'Outils de démontage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('outils-demontage', 'fr', 'Outils de démontage');
            PERFORM insert_category_translations('outils-demontage', 'ar', 'أدوات تفكيك');
            PERFORM insert_category_translations('outils-demontage', 'en', 'Disassembly Tools');
            PERFORM insert_category_translations('outils-demontage', 'de', 'Demontage-Werkzeuge');
            PERFORM insert_category_translations('outils-demontage', 'es', 'Herramientas de desmontaje');
            PERFORM insert_category_translations('outils-demontage', 'it', 'Strumenti di Smontaggio');

            -- Level 2: stations-soudure
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('stations-soudure', 'stations-soudure', 2, l1_id, 'Stations de soudure')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('stations-soudure', 'fr', 'Stations de soudure');
            PERFORM insert_category_translations('stations-soudure', 'ar', 'محطات لحام');
            PERFORM insert_category_translations('stations-soudure', 'en', 'Soldering Stations');
            PERFORM insert_category_translations('stations-soudure', 'de', 'Lötstationen');
            PERFORM insert_category_translations('stations-soudure', 'es', 'Estaciones de soldadura');
            PERFORM insert_category_translations('stations-soudure', 'it', 'Stazioni Saldanti');

            -- Level 2: ecrans-reconditionnes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ecrans-reconditionnes', 'ecrans-reconditionnes', 2, l1_id, 'Écrans reconditionnés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ecrans-reconditionnes', 'fr', 'Écrans reconditionnés');
            PERFORM insert_category_translations('ecrans-reconditionnes', 'ar', 'شاشات مجددة');
            PERFORM insert_category_translations('ecrans-reconditionnes', 'en', 'Refurbished Screens');
            PERFORM insert_category_translations('ecrans-reconditionnes', 'de', 'Generalüberholte Displays');
            PERFORM insert_category_translations('ecrans-reconditionnes', 'es', 'Pantallas reacondicionadas');
            PERFORM insert_category_translations('ecrans-reconditionnes', 'it', 'Schermi Ricondizionati');

        -- Level 1: objets-connectes-mobile
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('objets-connectes-mobile', 'objets-connectes-mobile', 1, root_id, 'Objets Connectés (Mobile)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('objets-connectes-mobile', 'fr', 'Objets Connectés (Mobile)');
        PERFORM insert_category_translations('objets-connectes-mobile', 'ar', 'أجهزة متصلة (جوال)');
        PERFORM insert_category_translations('objets-connectes-mobile', 'en', 'Connected Devices (Mobile)');
        PERFORM insert_category_translations('objets-connectes-mobile', 'de', 'Wearables & Smart Devices');
        PERFORM insert_category_translations('objets-connectes-mobile', 'es', 'Objetos Conectados (Móvil)');
        PERFORM insert_category_translations('objets-connectes-mobile', 'it', 'Dispositivi Connessi (Mobile)');

            -- Level 2: montres-connectees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('montres-connectees', 'montres-connectees', 2, l1_id, 'Montres connectées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('montres-connectees', 'fr', 'Montres connectées');
            PERFORM insert_category_translations('montres-connectees', 'ar', 'ساعات ذكية');
            PERFORM insert_category_translations('montres-connectees', 'en', 'Smartwatches');
            PERFORM insert_category_translations('montres-connectees', 'de', 'Smartwatches');
            PERFORM insert_category_translations('montres-connectees', 'es', 'Relojes inteligentes');
            PERFORM insert_category_translations('montres-connectees', 'it', 'Smartwatch');

            -- Level 2: bracelets-connectes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bracelets-connectes', 'bracelets-connectes', 2, l1_id, 'Bracelets connectés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bracelets-connectes', 'fr', 'Bracelets connectés');
            PERFORM insert_category_translations('bracelets-connectes', 'ar', 'أساور ذكية');
            PERFORM insert_category_translations('bracelets-connectes', 'en', 'Smart Bands');
            PERFORM insert_category_translations('bracelets-connectes', 'de', 'Fitness-Tracker');
            PERFORM insert_category_translations('bracelets-connectes', 'es', 'Pulseras inteligentes');
            PERFORM insert_category_translations('bracelets-connectes', 'it', 'Smartband');

            -- Level 2: trackers-gps
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('trackers-gps', 'trackers-gps', 2, l1_id, 'Trackers GPS')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('trackers-gps', 'fr', 'Trackers GPS');
            PERFORM insert_category_translations('trackers-gps', 'ar', 'أجهزة تتبع GPS');
            PERFORM insert_category_translations('trackers-gps', 'en', 'GPS Trackers');
            PERFORM insert_category_translations('trackers-gps', 'de', 'GPS-Tracker');
            PERFORM insert_category_translations('trackers-gps', 'es', 'Localizadores GPS');
            PERFORM insert_category_translations('trackers-gps', 'it', 'Tracker GPS');

            -- Level 2: ecouteurs-intelligents
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ecouteurs-intelligents', 'ecouteurs-intelligents', 2, l1_id, 'Écouteurs intelligents')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ecouteurs-intelligents', 'fr', 'Écouteurs intelligents');
            PERFORM insert_category_translations('ecouteurs-intelligents', 'ar', 'سماعات ذكية');
            PERFORM insert_category_translations('ecouteurs-intelligents', 'en', 'Smart Earphones');
            PERFORM insert_category_translations('ecouteurs-intelligents', 'de', 'Smarte Kopfhörer');
            PERFORM insert_category_translations('ecouteurs-intelligents', 'es', 'Auriculares inteligentes');
            PERFORM insert_category_translations('ecouteurs-intelligents', 'it', 'Auricolari Smart');

            -- Level 2: lunettes-connectees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lunettes-connectees', 'lunettes-connectees', 2, l1_id, 'Lunettes connectées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lunettes-connectees', 'fr', 'Lunettes connectées');
            PERFORM insert_category_translations('lunettes-connectees', 'ar', 'نظارات ذكية');
            PERFORM insert_category_translations('lunettes-connectees', 'en', 'Smart Glasses');
            PERFORM insert_category_translations('lunettes-connectees', 'de', 'Smart Glasses');
            PERFORM insert_category_translations('lunettes-connectees', 'es', 'Gafas inteligentes');
            PERFORM insert_category_translations('lunettes-connectees', 'it', 'Occhiali Smart');

            -- Level 2: balises-bluetooth
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('balises-bluetooth', 'balises-bluetooth', 2, l1_id, 'Balises Bluetooth')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('balises-bluetooth', 'fr', 'Balises Bluetooth');
            PERFORM insert_category_translations('balises-bluetooth', 'ar', 'إشارات بلوتوث');
            PERFORM insert_category_translations('balises-bluetooth', 'en', 'Bluetooth Beacons');
            PERFORM insert_category_translations('balises-bluetooth', 'de', 'Bluetooth-Tags');
            PERFORM insert_category_translations('balises-bluetooth', 'es', 'Balizas Bluetooth');
            PERFORM insert_category_translations('balises-bluetooth', 'it', 'Tag Bluetooth');

            -- Level 2: assistants-vocaux-portables
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('assistants-vocaux-portables', 'assistants-vocaux-portables', 2, l1_id, 'Assistants vocaux portables')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('assistants-vocaux-portables', 'fr', 'Assistants vocaux portables');
            PERFORM insert_category_translations('assistants-vocaux-portables', 'ar', 'مساعدات صوتية محمولة');
            PERFORM insert_category_translations('assistants-vocaux-portables', 'en', 'Portable Voice Assistants');
            PERFORM insert_category_translations('assistants-vocaux-portables', 'de', 'Tragbare Sprachassistenten');
            PERFORM insert_category_translations('assistants-vocaux-portables', 'es', 'Asistentes de voz portátiles');
            PERFORM insert_category_translations('assistants-vocaux-portables', 'it', 'Assistenti Vocali Portatili');

        -- Level 1: reseau-communication-mobile
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('reseau-communication-mobile', 'reseau-communication-mobile', 1, root_id, 'Réseau & Communication Mobile')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('reseau-communication-mobile', 'fr', 'Réseau & Communication Mobile');
        PERFORM insert_category_translations('reseau-communication-mobile', 'ar', 'شبكات واتصالات جوالة');
        PERFORM insert_category_translations('reseau-communication-mobile', 'en', 'Network & Mobile Communication');
        PERFORM insert_category_translations('reseau-communication-mobile', 'de', 'Mobile Netzwerke & Kommunikation');
        PERFORM insert_category_translations('reseau-communication-mobile', 'es', 'Red & Comunicación Móvil');
        PERFORM insert_category_translations('reseau-communication-mobile', 'it', 'Rete e Comunicazione Mobile');

            -- Level 2: cartes-sim
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cartes-sim', 'cartes-sim', 2, l1_id, 'Cartes SIM')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cartes-sim', 'fr', 'Cartes SIM');
            PERFORM insert_category_translations('cartes-sim', 'ar', 'بطاقات SIM');
            PERFORM insert_category_translations('cartes-sim', 'en', 'SIM Cards');
            PERFORM insert_category_translations('cartes-sim', 'de', 'SIM-Karten');
            PERFORM insert_category_translations('cartes-sim', 'es', 'Tarjetas SIM');
            PERFORM insert_category_translations('cartes-sim', 'it', 'Schede SIM');

            -- Level 2: esim
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('esim', 'esim', 2, l1_id, 'eSIM')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('esim', 'fr', 'eSIM');
            PERFORM insert_category_translations('esim', 'ar', 'eSIM');
            PERFORM insert_category_translations('esim', 'en', 'eSIM');
            PERFORM insert_category_translations('esim', 'de', 'eSIM');
            PERFORM insert_category_translations('esim', 'es', 'eSIM');
            PERFORM insert_category_translations('esim', 'it', 'eSIM');

            -- Level 2: routeurs-4g-5g
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('routeurs-4g-5g', 'routeurs-4g-5g', 2, l1_id, 'Routeurs 4G/5G')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('routeurs-4g-5g', 'fr', 'Routeurs 4G/5G');
            PERFORM insert_category_translations('routeurs-4g-5g', 'ar', 'أجهزة راوتر 4G/5G');
            PERFORM insert_category_translations('routeurs-4g-5g', 'en', '4G/5G Routers');
            PERFORM insert_category_translations('routeurs-4g-5g', 'de', '4G/5G-Router');
            PERFORM insert_category_translations('routeurs-4g-5g', 'es', 'Routers 4G/5G');
            PERFORM insert_category_translations('routeurs-4g-5g', 'it', 'Router 4G/5G');

            -- Level 2: modems-portables
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('modems-portables', 'modems-portables', 2, l1_id, 'Modems portables')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('modems-portables', 'fr', 'Modems portables');
            PERFORM insert_category_translations('modems-portables', 'ar', 'أجهزة مودم محمولة');
            PERFORM insert_category_translations('modems-portables', 'en', 'Portable Modems');
            PERFORM insert_category_translations('modems-portables', 'de', 'Mobile Modems');
            PERFORM insert_category_translations('modems-portables', 'es', 'Módems portátiles');
            PERFORM insert_category_translations('modems-portables', 'it', 'Modem Portatili');

            -- Level 2: antennes-amplificateurs-reseau
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('antennes-amplificateurs-reseau', 'antennes-amplificateurs-reseau', 2, l1_id, 'Antennes et amplificateurs réseau')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('antennes-amplificateurs-reseau', 'fr', 'Antennes et amplificateurs réseau');
            PERFORM insert_category_translations('antennes-amplificateurs-reseau', 'ar', 'هوائيات ومقويات شبكة');
            PERFORM insert_category_translations('antennes-amplificateurs-reseau', 'en', 'Antennas & Network Amplifiers');
            PERFORM insert_category_translations('antennes-amplificateurs-reseau', 'de', 'Netzwerkantennen & Verstärker');
            PERFORM insert_category_translations('antennes-amplificateurs-reseau', 'es', 'Antenas y amplificadores de red');
            PERFORM insert_category_translations('antennes-amplificateurs-reseau', 'it', 'Antenne e Amplificatori di Segnale');

            -- Level 2: repeteurs-gsm
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('repeteurs-gsm', 'repeteurs-gsm', 2, l1_id, 'Répéteurs GSM')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('repeteurs-gsm', 'fr', 'Répéteurs GSM');
            PERFORM insert_category_translations('repeteurs-gsm', 'ar', 'مكررات إشارة GSM');
            PERFORM insert_category_translations('repeteurs-gsm', 'en', 'GSM Repeaters');
            PERFORM insert_category_translations('repeteurs-gsm', 'de', 'GSM-Repeater');
            PERFORM insert_category_translations('repeteurs-gsm', 'es', 'Repetidores GSM');
            PERFORM insert_category_translations('repeteurs-gsm', 'it', 'Ripetitori GSM');

            -- Level 2: boitiers-wifi-mobiles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('boitiers-wifi-mobiles', 'boitiers-wifi-mobiles', 2, l1_id, 'Boîtiers Wi‑Fi mobiles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('boitiers-wifi-mobiles', 'fr', 'Boîtiers Wi‑Fi mobiles');
            PERFORM insert_category_translations('boitiers-wifi-mobiles', 'ar', 'أجهزة واي فاي متنقلة');
            PERFORM insert_category_translations('boitiers-wifi-mobiles', 'en', 'Mobile Wi-Fi Hotspots');
            PERFORM insert_category_translations('boitiers-wifi-mobiles', 'de', 'Mobile WLAN-Hotspots');
            PERFORM insert_category_translations('boitiers-wifi-mobiles', 'es', 'Puntos de acceso Wi-Fi móviles');
            PERFORM insert_category_translations('boitiers-wifi-mobiles', 'it', 'Hotspot Wi-Fi Mobili');

            -- Level 2: adaptateurs-reseau-telephone
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('adaptateurs-reseau-telephone', 'adaptateurs-reseau-telephone', 2, l1_id, 'Adaptateurs réseau téléphone')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('adaptateurs-reseau-telephone', 'fr', 'Adaptateurs réseau téléphone');
            PERFORM insert_category_translations('adaptateurs-reseau-telephone', 'ar', 'محولات شبكة للهاتف');
            PERFORM insert_category_translations('adaptateurs-reseau-telephone', 'en', 'Phone Network Adapters');
            PERFORM insert_category_translations('adaptateurs-reseau-telephone', 'de', 'Netzwerkadapter für Telefone');
            PERFORM insert_category_translations('adaptateurs-reseau-telephone', 'es', 'Adaptadores de red telefónica');
            PERFORM insert_category_translations('adaptateurs-reseau-telephone', 'it', 'Adattatori di Rete Telefonica');

        -- Level 1: securite-protection-mobile
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('securite-protection-mobile', 'securite-protection', 1, root_id, 'Sécurité & Protection')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('securite-protection-mobile', 'fr', 'Sécurité & Protection');
        PERFORM insert_category_translations('securite-protection-mobile', 'ar', 'حماية وأمان');
        PERFORM insert_category_translations('securite-protection-mobile', 'en', 'Security & Protection');
        PERFORM insert_category_translations('securite-protection-mobile', 'de', 'Sicherheit & Schutz');
        PERFORM insert_category_translations('securite-protection-mobile', 'es', 'Seguridad & Protección');
        PERFORM insert_category_translations('securite-protection-mobile', 'it', 'Sicurezza e Protezione');

            -- Level 2: antivols-telephone
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('antivols-telephone', 'antivols-telephone', 2, l1_id, 'Antivols téléphone')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('antivols-telephone', 'fr', 'Antivols téléphone');
            PERFORM insert_category_translations('antivols-telephone', 'ar', 'أنظمة ضد السرقة');
            PERFORM insert_category_translations('antivols-telephone', 'en', 'Anti-theft Systems');
            PERFORM insert_category_translations('antivols-telephone', 'de', 'Diebstahlsicherung');
            PERFORM insert_category_translations('antivols-telephone', 'es', 'Antirrobos para teléfono');
            PERFORM insert_category_translations('antivols-telephone', 'it', 'Antifurto per Telefono');

            -- Level 2: etuis-renforces
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('etuis-renforces', 'etuis-renforces', 2, l1_id, 'Étuis renforcés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('etuis-renforces', 'fr', 'Étuis renforcés');
            PERFORM insert_category_translations('etuis-renforces', 'ar', 'حقائب مقواة');
            PERFORM insert_category_translations('etuis-renforces', 'en', 'Rugged Cases');
            PERFORM insert_category_translations('etuis-renforces', 'de', 'Robuste Hüllen');
            PERFORM insert_category_translations('etuis-renforces', 'es', 'Fundas reforzadas');
            PERFORM insert_category_translations('etuis-renforces', 'it', 'Custodie Rinforzate');

            -- Level 2: coques-anti-chute
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('coques-anti-chute', 'coques-anti-chute', 2, l1_id, 'Coques anti‑chute')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('coques-anti-chute', 'fr', 'Coques anti‑chute');
            PERFORM insert_category_translations('coques-anti-chute', 'ar', 'أغطية ضد السقوط');
            PERFORM insert_category_translations('coques-anti-chute', 'en', 'Drop-proof Cases');
            PERFORM insert_category_translations('coques-anti-chute', 'de', 'Stoßfeste Hüllen');
            PERFORM insert_category_translations('coques-anti-chute', 'es', 'Fundas anticaída');
            PERFORM insert_category_translations('coques-anti-chute', 'it', 'Cover Anti-urto');

            -- Level 2: protections-etanches-ip68
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('protections-etanches-ip68', 'protections-etanches-ip68', 2, l1_id, 'Protections étanches IP68')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('protections-etanches-ip68', 'fr', 'Protections étanches IP68');
            PERFORM insert_category_translations('protections-etanches-ip68', 'ar', 'حماية مقاومة للماء IP68');
            PERFORM insert_category_translations('protections-etanches-ip68', 'en', 'Waterproof IP68 Protection');
            PERFORM insert_category_translations('protections-etanches-ip68', 'de', 'IP68-Wasserschutz');
            PERFORM insert_category_translations('protections-etanches-ip68', 'es', 'Protecciones impermeables IP68');
            PERFORM insert_category_translations('protections-etanches-ip68', 'it', 'Protezioni Impermeabili IP68');

            -- Level 2: housses-anti-choc
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('housses-anti-choc', 'housses-anti-choc', 2, l1_id, 'Housses anti‑choc')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('housses-anti-choc', 'fr', 'Housses anti‑choc');
            PERFORM insert_category_translations('housses-anti-choc', 'ar', 'حافظات مضادة للصدمات');
            PERFORM insert_category_translations('housses-anti-choc', 'en', 'Shockproof Sleeves');
            PERFORM insert_category_translations('housses-anti-choc', 'de', 'Stoßfeste Taschen');
            PERFORM insert_category_translations('housses-anti-choc', 'es', 'Fundas antichoque');
            PERFORM insert_category_translations('housses-anti-choc', 'it', 'Custodie Anti-shock');

            -- Level 2: verres-trempes-haute-resistance
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('verres-trempes-haute-resistance', 'verres-trempes-haute-resistance', 2, l1_id, 'Verres trempés haute résistance')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('verres-trempes-haute-resistance', 'fr', 'Verres trempés haute résistance');
            PERFORM insert_category_translations('verres-trempes-haute-resistance', 'ar', 'زجاج مقوى عالي المقاومة');
            PERFORM insert_category_translations('verres-trempes-haute-resistance', 'en', 'High-Resistance Tempered Glass');
            PERFORM insert_category_translations('verres-trempes-haute-resistance', 'de', 'Hochfestes Panzerglas');
            PERFORM insert_category_translations('verres-trempes-haute-resistance', 'es', 'Vidrios templados de alta resistencia');
            PERFORM insert_category_translations('verres-trempes-haute-resistance', 'it', 'Vetri Temperati ad Alta Resistenza');

            -- Level 2: accessoires-confidentialite
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-confidentialite', 'accessoires-confidentialite', 2, l1_id, 'Accessoires de confidentialité')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('accessoires-confidentialite', 'fr', 'Accessoires de confidentialité');
            PERFORM insert_category_translations('accessoires-confidentialite', 'ar', 'إكسسوارات الخصوصية');
            PERFORM insert_category_translations('accessoires-confidentialite', 'en', 'Privacy Accessories');
            PERFORM insert_category_translations('accessoires-confidentialite', 'de', 'Blickschutzfilter');
            PERFORM insert_category_translations('accessoires-confidentialite', 'es', 'Accesorios de privacidad');
            PERFORM insert_category_translations('accessoires-confidentialite', 'it', 'Accessori Privacy');

        -- Level 1: applications-services-mobiles
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('applications-services-mobiles', 'applications-services', 1, root_id, 'Applications & Services')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('applications-services-mobiles', 'fr', 'Applications & Services');
        PERFORM insert_category_translations('applications-services-mobiles', 'ar', 'تطبيقات وخدمات');
        PERFORM insert_category_translations('applications-services-mobiles', 'en', 'Apps & Services');
        PERFORM insert_category_translations('applications-services-mobiles', 'de', 'Apps & Dienstleistungen');
        PERFORM insert_category_translations('applications-services-mobiles', 'es', 'Aplicaciones & Servicios');
        PERFORM insert_category_translations('applications-services-mobiles', 'it', 'Applicazioni e Servizi');

            -- Level 2: services-reparation-mobile
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('services-reparation-mobile', 'services-reparation-mobile', 2, l1_id, 'Services de réparation mobile')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('services-reparation-mobile', 'fr', 'Services de réparation mobile');
            PERFORM insert_category_translations('services-reparation-mobile', 'ar', 'خدمات إصلاح الهواتف');
            PERFORM insert_category_translations('services-reparation-mobile', 'en', 'Mobile Repair Services');
            PERFORM insert_category_translations('services-reparation-mobile', 'de', 'Handy-Reparaturdienste');
            PERFORM insert_category_translations('services-reparation-mobile', 'es', 'Servicios de reparación móvil');
            PERFORM insert_category_translations('services-reparation-mobile', 'it', 'Servizi di Riparazione Mobile');

            -- Level 2: debloquage-desimlockage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('debloquage-desimlockage', 'debloquage-desimlockage', 2, l1_id, 'Déblocage & désimlockage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('debloquage-desimlockage', 'fr', 'Déblocage & désimlockage');
            PERFORM insert_category_translations('debloquage-desimlockage', 'ar', 'فك تشفير وفتح الشبكة');
            PERFORM insert_category_translations('debloquage-desimlockage', 'en', 'Unlocking & Desimlocking');
            PERFORM insert_category_translations('debloquage-desimlockage', 'de', 'Entsperrung & Simlock-Entfernung');
            PERFORM insert_category_translations('debloquage-desimlockage', 'es', 'Desbloqueo y liberación');
            PERFORM insert_category_translations('debloquage-desimlockage', 'it', 'Sblocco e Desimlock');

            -- Level 2: transfert-donnees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('transfert-donnees', 'transfert-donnees', 2, l1_id, 'Transfert de données')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('transfert-donnees', 'fr', 'Transfert de données');
            PERFORM insert_category_translations('transfert-donnees', 'ar', 'نقل البيانات');
            PERFORM insert_category_translations('transfert-donnees', 'en', 'Data Transfer');
            PERFORM insert_category_translations('transfert-donnees', 'de', 'Datenübertragung');
            PERFORM insert_category_translations('transfert-donnees', 'es', 'Transferencia de datos');
            PERFORM insert_category_translations('transfert-donnees', 'it', 'Trasferimento Dati');

            -- Level 2: diagnostics-mobiles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('diagnostics-mobiles', 'diagnostics-mobiles', 2, l1_id, 'Diagnostics')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('diagnostics-mobiles', 'fr', 'Diagnostics');
            PERFORM insert_category_translations('diagnostics-mobiles', 'ar', 'تشخيص الأعطال');
            PERFORM insert_category_translations('diagnostics-mobiles', 'en', 'Diagnostics');
            PERFORM insert_category_translations('diagnostics-mobiles', 'de', 'Diagnose');
            PERFORM insert_category_translations('diagnostics-mobiles', 'es', 'Diagnósticos');
            PERFORM insert_category_translations('diagnostics-mobiles', 'it', 'Diagnostica Mobile');

            -- Level 2: accessoires-sur-mesure
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-sur-mesure', 'accessoires-sur-mesure', 2, l1_id, 'Accessoires sur mesure')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('accessoires-sur-mesure', 'fr', 'Accessoires sur mesure');
            PERFORM insert_category_translations('accessoires-sur-mesure', 'ar', 'إكسسوارات مخصصة');
            PERFORM insert_category_translations('accessoires-sur-mesure', 'en', 'Custom Accessories');
            PERFORM insert_category_translations('accessoires-sur-mesure', 'de', 'Maßgefertigtes Zubehör');
            PERFORM insert_category_translations('accessoires-sur-mesure', 'es', 'Accesorios a medida');
            PERFORM insert_category_translations('accessoires-sur-mesure', 'it', 'Accessori su Misura');

            -- Level 2: personnalisation-mobile
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('personnalisation-mobile', 'personnalisation-mobile', 2, l1_id, 'Personnalisation mobile')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('personnalisation-mobile', 'fr', 'Personnalisation mobile');
            PERFORM insert_category_translations('personnalisation-mobile', 'ar', 'تخصيص الهواتف');
            PERFORM insert_category_translations('personnalisation-mobile', 'en', 'Mobile Customization');
            PERFORM insert_category_translations('personnalisation-mobile', 'de', 'Handy-Personalisierung');
            PERFORM insert_category_translations('personnalisation-mobile', 'es', 'Personalización móvil');
            PERFORM insert_category_translations('personnalisation-mobile', 'it', 'Personalizzazione Mobile');

        -- Level 1: marques-populaires-mobiles
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('marques-populaires-mobiles', 'marques-populaires-mobiles', 1, root_id, 'Marques Populaires (Mobiles)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('marques-populaires-mobiles', 'fr', 'Marques Populaires (Mobiles)');
        PERFORM insert_category_translations('marques-populaires-mobiles', 'ar', 'ماركات مشهورة (جوال)');
        PERFORM insert_category_translations('marques-populaires-mobiles', 'en', 'Popular Mobile Brands');
        PERFORM insert_category_translations('marques-populaires-mobiles', 'de', 'Beliebte Marken (Mobil)');
        PERFORM insert_category_translations('marques-populaires-mobiles', 'es', 'Marcas Populares (Móviles)');
        PERFORM insert_category_translations('marques-populaires-mobiles', 'it', 'Marchi Popolari (Mobile)');

            -- Level 2: apple
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('apple', 'apple', 2, l1_id, 'Apple')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('apple', 'fr', 'Apple');
            PERFORM insert_category_translations('apple', 'ar', 'Apple');
            PERFORM insert_category_translations('apple', 'en', 'Apple');
            PERFORM insert_category_translations('apple', 'de', 'Apple');
            PERFORM insert_category_translations('apple', 'es', 'Apple');
            PERFORM insert_category_translations('apple', 'it', 'Apple');

            -- Level 2: samsung
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('samsung', 'samsung', 2, l1_id, 'Samsung')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('samsung', 'fr', 'Samsung');
            PERFORM insert_category_translations('samsung', 'ar', 'Samsung');
            PERFORM insert_category_translations('samsung', 'en', 'Samsung');
            PERFORM insert_category_translations('samsung', 'de', 'Samsung');
            PERFORM insert_category_translations('samsung', 'es', 'Samsung');
            PERFORM insert_category_translations('samsung', 'it', 'Samsung');

            -- Level 2: xiaomi
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('xiaomi', 'xiaomi', 2, l1_id, 'Xiaomi')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('xiaomi', 'fr', 'Xiaomi');
            PERFORM insert_category_translations('xiaomi', 'ar', 'Xiaomi');
            PERFORM insert_category_translations('xiaomi', 'en', 'Xiaomi');
            PERFORM insert_category_translations('xiaomi', 'de', 'Xiaomi');
            PERFORM insert_category_translations('xiaomi', 'es', 'Xiaomi');
            PERFORM insert_category_translations('xiaomi', 'it', 'Xiaomi');

            -- Level 2: huawei
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('huawei', 'huawei', 2, l1_id, 'Huawei')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('huawei', 'fr', 'Huawei');
            PERFORM insert_category_translations('huawei', 'ar', 'Huawei');
            PERFORM insert_category_translations('huawei', 'en', 'Huawei');
            PERFORM insert_category_translations('huawei', 'de', 'Huawei');
            PERFORM insert_category_translations('huawei', 'es', 'Huawei');
            PERFORM insert_category_translations('huawei', 'it', 'Huawei');

            -- Level 2: oppo
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('oppo', 'oppo', 2, l1_id, 'Oppo')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('oppo', 'fr', 'Oppo');
            PERFORM insert_category_translations('oppo', 'ar', 'Oppo');
            PERFORM insert_category_translations('oppo', 'en', 'Oppo');
            PERFORM insert_category_translations('oppo', 'de', 'Oppo');
            PERFORM insert_category_translations('oppo', 'es', 'Oppo');
            PERFORM insert_category_translations('oppo', 'it', 'Oppo');

            -- Level 2: vivo
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vivo', 'vivo', 2, l1_id, 'Vivo')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('vivo', 'fr', 'Vivo');
            PERFORM insert_category_translations('vivo', 'ar', 'Vivo');
            PERFORM insert_category_translations('vivo', 'en', 'Vivo');
            PERFORM insert_category_translations('vivo', 'de', 'Vivo');
            PERFORM insert_category_translations('vivo', 'es', 'Vivo');
            PERFORM insert_category_translations('vivo', 'it', 'Vivo');

            -- Level 2: realme
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('realme', 'realme', 2, l1_id, 'Realme')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('realme', 'fr', 'Realme');
            PERFORM insert_category_translations('realme', 'ar', 'Realme');
            PERFORM insert_category_translations('realme', 'en', 'Realme');
            PERFORM insert_category_translations('realme', 'de', 'Realme');
            PERFORM insert_category_translations('realme', 'es', 'Realme');
            PERFORM insert_category_translations('realme', 'it', 'Realme');

            -- Level 2: infinix
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('infinix', 'infinix', 2, l1_id, 'Infinix')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('infinix', 'fr', 'Infinix');
            PERFORM insert_category_translations('infinix', 'ar', 'Infinix');
            PERFORM insert_category_translations('infinix', 'en', 'Infinix');
            PERFORM insert_category_translations('infinix', 'de', 'Infinix');
            PERFORM insert_category_translations('infinix', 'es', 'Infinix');
            PERFORM insert_category_translations('infinix', 'it', 'Infinix');

            -- Level 2: tecno
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tecno', 'tecno', 2, l1_id, 'Tecno')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tecno', 'fr', 'Tecno');
            PERFORM insert_category_translations('tecno', 'ar', 'Tecno');
            PERFORM insert_category_translations('tecno', 'en', 'Tecno');
            PERFORM insert_category_translations('tecno', 'de', 'Tecno');
            PERFORM insert_category_translations('tecno', 'es', 'Tecno');
            PERFORM insert_category_translations('tecno', 'it', 'Tecno');

            -- Level 2: oneplus
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('oneplus', 'oneplus', 2, l1_id, 'OnePlus')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('oneplus', 'fr', 'OnePlus');
            PERFORM insert_category_translations('oneplus', 'ar', 'OnePlus');
            PERFORM insert_category_translations('oneplus', 'en', 'OnePlus');
            PERFORM insert_category_translations('oneplus', 'de', 'OnePlus');
            PERFORM insert_category_translations('oneplus', 'es', 'OnePlus');
            PERFORM insert_category_translations('oneplus', 'it', 'OnePlus');

            -- Level 2: sony
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sony', 'sony', 2, l1_id, 'Sony')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sony', 'fr', 'Sony');
            PERFORM insert_category_translations('sony', 'ar', 'Sony');
            PERFORM insert_category_translations('sony', 'en', 'Sony');
            PERFORM insert_category_translations('sony', 'de', 'Sony');
            PERFORM insert_category_translations('sony', 'es', 'Sony');
            PERFORM insert_category_translations('sony', 'it', 'Sony');

            -- Level 2: nokia
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('nokia', 'nokia', 2, l1_id, 'Nokia')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('nokia', 'fr', 'Nokia');
            PERFORM insert_category_translations('nokia', 'ar', 'Nokia');
            PERFORM insert_category_translations('nokia', 'en', 'Nokia');
            PERFORM insert_category_translations('nokia', 'de', 'Nokia');
            PERFORM insert_category_translations('nokia', 'es', 'Nokia');
            PERFORM insert_category_translations('nokia', 'it', 'Nokia');

            -- Level 2: honor
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('honor', 'honor', 2, l1_id, 'Honor')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('honor', 'fr', 'Honor');
            PERFORM insert_category_translations('honor', 'ar', 'Honor');
            PERFORM insert_category_translations('honor', 'en', 'Honor');
            PERFORM insert_category_translations('honor', 'de', 'Honor');
            PERFORM insert_category_translations('honor', 'es', 'Honor');
            PERFORM insert_category_translations('honor', 'it', 'Honor');

            -- Level 2: motorola
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('motorola', 'motorola', 2, l1_id, 'Motorola')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('motorola', 'fr', 'Motorola');
            PERFORM insert_category_translations('motorola', 'ar', 'Motorola');
            PERFORM insert_category_translations('motorola', 'en', 'Motorola');
            PERFORM insert_category_translations('motorola', 'de', 'Motorola');
            PERFORM insert_category_translations('motorola', 'es', 'Motorola');
            PERFORM insert_category_translations('motorola', 'it', 'Motorola');

            -- Level 2: lenovo
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lenovo', 'lenovo', 2, l1_id, 'Lenovo')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lenovo', 'fr', 'Lenovo');
            PERFORM insert_category_translations('lenovo', 'ar', 'Lenovo');
            PERFORM insert_category_translations('lenovo', 'en', 'Lenovo');
            PERFORM insert_category_translations('lenovo', 'de', 'Lenovo');
            PERFORM insert_category_translations('lenovo', 'es', 'Lenovo');
            PERFORM insert_category_translations('lenovo', 'it', 'Lenovo');

            -- Level 2: asus
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('asus', 'asus', 2, l1_id, 'Asus')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('asus', 'fr', 'Asus');
            PERFORM insert_category_translations('asus', 'ar', 'Asus');
            PERFORM insert_category_translations('asus', 'en', 'Asus');
            PERFORM insert_category_translations('asus', 'de', 'Asus');
            PERFORM insert_category_translations('asus', 'es', 'Asus');
            PERFORM insert_category_translations('asus', 'it', 'Asus');

            -- Level 2: zte
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('zte', 'zte', 2, l1_id, 'ZTE')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('zte', 'fr', 'ZTE');
            PERFORM insert_category_translations('zte', 'ar', 'ZTE');
            PERFORM insert_category_translations('zte', 'en', 'ZTE');
            PERFORM insert_category_translations('zte', 'de', 'ZTE');
            PERFORM insert_category_translations('zte', 'es', 'ZTE');
            PERFORM insert_category_translations('zte', 'it', 'ZTE');

            -- Level 2: google-pixel
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('google-pixel', 'google-pixel', 2, l1_id, 'Google Pixel')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('google-pixel', 'fr', 'Google Pixel');
            PERFORM insert_category_translations('google-pixel', 'ar', 'Google Pixel');
            PERFORM insert_category_translations('google-pixel', 'en', 'Google Pixel');
            PERFORM insert_category_translations('google-pixel', 'de', 'Google Pixel');
            PERFORM insert_category_translations('google-pixel', 'es', 'Google Pixel');
            PERFORM insert_category_translations('google-pixel', 'it', 'Google Pixel');

        -- Level 1: operateurs-mobiles-algerie
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('operateurs-mobiles-algerie', 'operateurs-mobiles-algerie', 1, root_id, 'Opérateurs Mobiles en Algérie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('operateurs-mobiles-algerie', 'fr', 'Opérateurs Mobiles en Algérie');
        PERFORM insert_category_translations('operateurs-mobiles-algerie', 'ar', 'متعاملو الهاتف النقال في الجزائر');
        PERFORM insert_category_translations('operateurs-mobiles-algerie', 'en', 'Mobile Operators in Algeria');
        PERFORM insert_category_translations('operateurs-mobiles-algerie', 'de', 'Mobilfunkanbieter in Algerien');
        PERFORM insert_category_translations('operateurs-mobiles-algerie', 'es', 'Operadores Móviles en Argelia');
        PERFORM insert_category_translations('operateurs-mobiles-algerie', 'it', 'Operatori Mobili in Algeria');

            -- Level 2: djezzy
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('djezzy', 'djezzy', 2, l1_id, 'Djezzy')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('djezzy', 'fr', 'Djezzy');
            PERFORM insert_category_translations('djezzy', 'ar', 'جازي');
            PERFORM insert_category_translations('djezzy', 'en', 'Djezzy');
            PERFORM insert_category_translations('djezzy', 'de', 'Djezzy');
            PERFORM insert_category_translations('djezzy', 'es', 'Djezzy');
            PERFORM insert_category_translations('djezzy', 'it', 'Djezzy');

            -- Level 2: ooredoo
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ooredoo', 'ooredoo', 2, l1_id, 'Ooredoo')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ooredoo', 'fr', 'Ooredoo');
            PERFORM insert_category_translations('ooredoo', 'ar', 'أوريدو');
            PERFORM insert_category_translations('ooredoo', 'en', 'Ooredoo');
            PERFORM insert_category_translations('ooredoo', 'de', 'Ooredoo');
            PERFORM insert_category_translations('ooredoo', 'es', 'Ooredoo');
            PERFORM insert_category_translations('ooredoo', 'it', 'Ooredoo');

            -- Level 2: mobilis
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mobilis', 'mobilis', 2, l1_id, 'Mobilis')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mobilis', 'fr', 'Mobilis');
            PERFORM insert_category_translations('mobilis', 'ar', 'موبيليس');
            PERFORM insert_category_translations('mobilis', 'en', 'Mobilis');
            PERFORM insert_category_translations('mobilis', 'de', 'Mobilis');
            PERFORM insert_category_translations('mobilis', 'es', 'Mobilis');
            PERFORM insert_category_translations('mobilis', 'it', 'Mobilis');

            -- Level 2: algerie-telecom
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('algerie-telecom', 'algerie-telecom', 2, l1_id, 'Algérie Télécom')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('algerie-telecom', 'fr', 'Algérie Télécom');
            PERFORM insert_category_translations('algerie-telecom', 'ar', 'اتصالات الجزائر');
            PERFORM insert_category_translations('algerie-telecom', 'en', 'Algérie Télécom');
            PERFORM insert_category_translations('algerie-telecom', 'de', 'Algérie Télécom');
            PERFORM insert_category_translations('algerie-telecom', 'es', 'Algérie Télécom');
            PERFORM insert_category_translations('algerie-telecom', 'it', 'Algérie Télécom');

        -- Level 1: composants-informatiques
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('composants-informatiques', 'composants-informatiques', 1, root_id, 'Composants Informatiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('composants-informatiques', 'fr', 'Composants Informatiques');
        PERFORM insert_category_translations('composants-informatiques', 'ar', 'مكونات الكمبيوتر');
        PERFORM insert_category_translations('composants-informatiques', 'en', 'Computer Components');
        PERFORM insert_category_translations('composants-informatiques', 'de', 'Computerkomponenten');
        PERFORM insert_category_translations('composants-informatiques', 'es', 'Componentes Informáticos');
        PERFORM insert_category_translations('composants-informatiques', 'it', 'Componenti Informatici');

            -- Level 2: processeurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('processeurs', 'processeurs', 2, l1_id, 'Processeurs (Intel, AMD)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('processeurs', 'fr', 'Processeurs (Intel, AMD)');
            PERFORM insert_category_translations('processeurs', 'ar', 'معالجات (Intel, AMD)');
            PERFORM insert_category_translations('processeurs', 'en', 'Processors (Intel, AMD)');
            PERFORM insert_category_translations('processeurs', 'de', 'Prozessoren (Intel, AMD)');
            PERFORM insert_category_translations('processeurs', 'es', 'Procesadores (Intel, AMD)');
            PERFORM insert_category_translations('processeurs', 'it', 'Processori (Intel, AMD)');

            -- Level 2: cartes-graphiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cartes-graphiques', 'cartes-graphiques', 2, l1_id, 'Cartes graphiques (NVIDIA, AMD)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cartes-graphiques', 'fr', 'Cartes graphiques (NVIDIA, AMD)');
            PERFORM insert_category_translations('cartes-graphiques', 'ar', 'بطاقات رسومية (NVIDIA, AMD)');
            PERFORM insert_category_translations('cartes-graphiques', 'en', 'Graphics Cards (NVIDIA, AMD)');
            PERFORM insert_category_translations('cartes-graphiques', 'de', 'Grafikkarten (NVIDIA, AMD)');
            PERFORM insert_category_translations('cartes-graphiques', 'es', 'Tarjetas gráficas (NVIDIA, AMD)');
            PERFORM insert_category_translations('cartes-graphiques', 'it', 'Schede Video (NVIDIA, AMD)');

            -- Level 2: cartes-meres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cartes-meres', 'cartes-meres', 2, l1_id, 'Cartes mères')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cartes-meres', 'fr', 'Cartes mères');
            PERFORM insert_category_translations('cartes-meres', 'ar', 'لوحات أم');
            PERFORM insert_category_translations('cartes-meres', 'en', 'Motherboards');
            PERFORM insert_category_translations('cartes-meres', 'de', 'Mainboards');
            PERFORM insert_category_translations('cartes-meres', 'es', 'Placas base');
            PERFORM insert_category_translations('cartes-meres', 'it', 'Schede Madri');

            -- Level 2: memoires-ram
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('memoires-ram', 'memoires-ram', 2, l1_id, 'Mémoires RAM')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('memoires-ram', 'fr', 'Mémoires RAM');
            PERFORM insert_category_translations('memoires-ram', 'ar', 'ذاكرة عشوائية (RAM)');
            PERFORM insert_category_translations('memoires-ram', 'en', 'RAM');
            PERFORM insert_category_translations('memoires-ram', 'de', 'RAM-Speicher');
            PERFORM insert_category_translations('memoires-ram', 'es', 'Memoria RAM');
            PERFORM insert_category_translations('memoires-ram', 'it', 'Memorie RAM');

            -- Level 2: ssd
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ssd', 'ssd', 2, l1_id, 'SSD')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ssd', 'fr', 'SSD');
            PERFORM insert_category_translations('ssd', 'ar', 'أقراص SSD');
            PERFORM insert_category_translations('ssd', 'en', 'SSDs');
            PERFORM insert_category_translations('ssd', 'de', 'SSDs');
            PERFORM insert_category_translations('ssd', 'es', 'SSD');
            PERFORM insert_category_translations('ssd', 'it', 'SSD');

            -- Level 2: disques-durs-hdd
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('disques-durs-hdd', 'disques-durs-hdd', 2, l1_id, 'Disques durs HDD')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('disques-durs-hdd', 'fr', 'Disques durs HDD');
            PERFORM insert_category_translations('disques-durs-hdd', 'ar', 'أقراص صلبة HDD');
            PERFORM insert_category_translations('disques-durs-hdd', 'en', 'HDD Hard Drives');
            PERFORM insert_category_translations('disques-durs-hdd', 'de', 'HDDs');
            PERFORM insert_category_translations('disques-durs-hdd', 'es', 'Discos duros HDD');
            PERFORM insert_category_translations('disques-durs-hdd', 'it', 'Hard Disk HDD');

            -- Level 2: alimentation-pc
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('alimentation-pc', 'alimentation-pc', 2, l1_id, 'Alimentations PC')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('alimentation-pc', 'fr', 'Alimentations PC');
            PERFORM insert_category_translations('alimentation-pc', 'ar', 'وحدات تغذية الطاقة');
            PERFORM insert_category_translations('alimentation-pc', 'en', 'Power Supplies (PSU)');
            PERFORM insert_category_translations('alimentation-pc', 'de', 'PC-Netzteile');
            PERFORM insert_category_translations('alimentation-pc', 'es', 'Fuentes de alimentación');
            PERFORM insert_category_translations('alimentation-pc', 'it', 'Alimentatori PC');

            -- Level 2: boitiers-pc
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('boitiers-pc', 'boitiers-pc', 2, l1_id, 'Boîtiers PC')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('boitiers-pc', 'fr', 'Boîtiers PC');
            PERFORM insert_category_translations('boitiers-pc', 'ar', 'علب الكمبيوتر (Cases)');
            PERFORM insert_category_translations('boitiers-pc', 'en', 'PC Cases');
            PERFORM insert_category_translations('boitiers-pc', 'de', 'PC-Gehäuse');
            PERFORM insert_category_translations('boitiers-pc', 'es', 'Cajas de PC');
            PERFORM insert_category_translations('boitiers-pc', 'it', 'Case PC');

            -- Level 2: refroidissement-liquide
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('refroidissement-liquide', 'refroidissement-liquide', 2, l1_id, 'Systèmes de refroidissement liquide')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('refroidissement-liquide', 'fr', 'Systèmes de refroidissement liquide');
            PERFORM insert_category_translations('refroidissement-liquide', 'ar', 'تبريد مائي');
            PERFORM insert_category_translations('refroidissement-liquide', 'en', 'Liquid Cooling');
            PERFORM insert_category_translations('refroidissement-liquide', 'de', 'Wasserkühlungen');
            PERFORM insert_category_translations('refroidissement-liquide', 'es', 'Refrigeración líquida');
            PERFORM insert_category_translations('refroidissement-liquide', 'it', 'Raffreddamento a Liquido');

            -- Level 2: ventilateurs-air
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ventilateurs-air', 'ventilateurs-air', 2, l1_id, 'Ventilateurs et refroidissement air')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ventilateurs-air', 'fr', 'Ventilateurs et refroidissement air');
            PERFORM insert_category_translations('ventilateurs-air', 'ar', 'مراوح وتبريد هوائي');
            PERFORM insert_category_translations('ventilateurs-air', 'en', 'Fans & Air Cooling');
            PERFORM insert_category_translations('ventilateurs-air', 'de', 'Lüfter & Luftkühlung');
            PERFORM insert_category_translations('ventilateurs-air', 'es', 'Ventiladores y refrigeración por aire');
            PERFORM insert_category_translations('ventilateurs-air', 'it', 'Ventole e Raffreddamento ad Aria');

            -- Level 2: pates-thermiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pates-thermiques', 'pates-thermiques', 2, l1_id, 'Pâtes thermiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pates-thermiques', 'fr', 'Pâtes thermiques');
            PERFORM insert_category_translations('pates-thermiques', 'ar', 'معجون حراري');
            PERFORM insert_category_translations('pates-thermiques', 'en', 'Thermal Paste');
            PERFORM insert_category_translations('pates-thermiques', 'de', 'Wärmeleitpasten');
            PERFORM insert_category_translations('pates-thermiques', 'es', 'Pasta térmica');
            PERFORM insert_category_translations('pates-thermiques', 'it', 'Paste Termiche');

            -- Level 2: cartes-son
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cartes-son', 'cartes-son', 2, l1_id, 'Cartes son')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cartes-son', 'fr', 'Cartes son');
            PERFORM insert_category_translations('cartes-son', 'ar', 'بطاقات صوت');
            PERFORM insert_category_translations('cartes-son', 'en', 'Sound Cards');
            PERFORM insert_category_translations('cartes-son', 'de', 'Soundkarten');
            PERFORM insert_category_translations('cartes-son', 'es', 'Tarjetas de sonido');
            PERFORM insert_category_translations('cartes-son', 'it', 'Schede Audio');

            -- Level 2: cartes-reseau
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cartes-reseau', 'cartes-reseau', 2, l1_id, 'Cartes réseau')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cartes-reseau', 'fr', 'Cartes réseau');
            PERFORM insert_category_translations('cartes-reseau', 'ar', 'بطاقات شبكة');
            PERFORM insert_category_translations('cartes-reseau', 'en', 'Network Cards');
            PERFORM insert_category_translations('cartes-reseau', 'de', 'Netzwerkkarten');
            PERFORM insert_category_translations('cartes-reseau', 'es', 'Tarjetas de red');
            PERFORM insert_category_translations('cartes-reseau', 'it', 'Schede di Rete');

            -- Level 2: cartes-acquisition-video
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cartes-acquisition-video', 'cartes-acquisition-video', 2, l1_id, 'Cartes d’acquisition vidéo')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cartes-acquisition-video', 'fr', 'Cartes d’acquisition vidéo');
            PERFORM insert_category_translations('cartes-acquisition-video', 'ar', 'بطاقات التقاط الفيديو');
            PERFORM insert_category_translations('cartes-acquisition-video', 'en', 'Video Capture Cards');
            PERFORM insert_category_translations('cartes-acquisition-video', 'de', 'Video-Capture-Karten');
            PERFORM insert_category_translations('cartes-acquisition-video', 'es', 'Capturadoras de vídeo');
            PERFORM insert_category_translations('cartes-acquisition-video', 'it', 'Schede di Acquisizione Video');

        -- Level 1: peripheriques-pc
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('peripheriques-pc', 'peripheriques-pc', 1, root_id, 'Périphériques PC')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('peripheriques-pc', 'fr', 'Périphériques PC');
        PERFORM insert_category_translations('peripheriques-pc', 'ar', 'ملحقات الكمبيوتر');
        PERFORM insert_category_translations('peripheriques-pc', 'en', 'PC Peripherals');
        PERFORM insert_category_translations('peripheriques-pc', 'de', 'PC-Peripheriegeräte');
        PERFORM insert_category_translations('peripheriques-pc', 'es', 'Periféricos de PC');
        PERFORM insert_category_translations('peripheriques-pc', 'it', 'Periferiche PC');

            -- Level 2: ecrans-moniteurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ecrans-moniteurs', 'ecrans-moniteurs', 2, l1_id, 'Écrans et moniteurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ecrans-moniteurs', 'fr', 'Écrans et moniteurs');
            PERFORM insert_category_translations('ecrans-moniteurs', 'ar', 'شاشات ومراقب');
            PERFORM insert_category_translations('ecrans-moniteurs', 'en', 'Screens & Monitors');
            PERFORM insert_category_translations('ecrans-moniteurs', 'de', 'Bildschirme & Monitore');
            PERFORM insert_category_translations('ecrans-moniteurs', 'es', 'Monitores y pantallas');
            PERFORM insert_category_translations('ecrans-moniteurs', 'it', 'Monitor e Schermi');

            -- Level 2: moniteurs-gaming
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('moniteurs-gaming', 'moniteurs-gaming', 2, l1_id, 'Moniteurs gaming')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('moniteurs-gaming', 'fr', 'Moniteurs gaming');
            PERFORM insert_category_translations('moniteurs-gaming', 'ar', 'شاشات ألعاب');
            PERFORM insert_category_translations('moniteurs-gaming', 'en', 'Gaming Monitors');
            PERFORM insert_category_translations('moniteurs-gaming', 'de', 'Gaming-Monitore');
            PERFORM insert_category_translations('moniteurs-gaming', 'es', 'Monitores gaming');
            PERFORM insert_category_translations('moniteurs-gaming', 'it', 'Monitor Gaming');

            -- Level 2: moniteurs-incurves
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('moniteurs-incurves', 'moniteurs-incurves', 2, l1_id, 'Moniteurs incurvés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('moniteurs-incurves', 'fr', 'Moniteurs incurvés');
            PERFORM insert_category_translations('moniteurs-incurves', 'ar', 'شاشات منحنية');
            PERFORM insert_category_translations('moniteurs-incurves', 'en', 'Curved Monitors');
            PERFORM insert_category_translations('moniteurs-incurves', 'de', 'Curved Monitore');
            PERFORM insert_category_translations('moniteurs-incurves', 'es', 'Monitores curvos');
            PERFORM insert_category_translations('moniteurs-incurves', 'it', 'Monitor Curvi');

            -- Level 2: claviers
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('claviers', 'claviers', 2, l1_id, 'Claviers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('claviers', 'fr', 'Claviers');
            PERFORM insert_category_translations('claviers', 'ar', 'لوحات مفاتيح');
            PERFORM insert_category_translations('claviers', 'en', 'Keyboards');
            PERFORM insert_category_translations('claviers', 'de', 'Tastaturen');
            PERFORM insert_category_translations('claviers', 'es', 'Teclados');
            PERFORM insert_category_translations('claviers', 'it', 'Tastiere');

                -- Level 3: claviers-mecaniques
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('claviers-mecaniques', 'claviers-mecaniques', 3, l2_id, 'Mécaniques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('claviers-mecaniques', 'fr', 'Mécaniques');
                PERFORM insert_category_translations('claviers-mecaniques', 'ar', 'ميكانيكية');
                PERFORM insert_category_translations('claviers-mecaniques', 'en', 'Mechanical');
                PERFORM insert_category_translations('claviers-mecaniques', 'de', 'Mechanisch');
                PERFORM insert_category_translations('claviers-mecaniques', 'es', 'Mecánicos');
                PERFORM insert_category_translations('claviers-mecaniques', 'it', 'Meccaniche');

                -- Level 3: claviers-sans-fil
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('claviers-sans-fil', 'claviers-sans-fil', 3, l2_id, 'Sans fil')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('claviers-sans-fil', 'fr', 'Sans fil');
                PERFORM insert_category_translations('claviers-sans-fil', 'ar', 'لاسلكية');
                PERFORM insert_category_translations('claviers-sans-fil', 'en', 'Wireless');
                PERFORM insert_category_translations('claviers-sans-fil', 'de', 'Kabellos');
                PERFORM insert_category_translations('claviers-sans-fil', 'es', 'Inalámbricos');
                PERFORM insert_category_translations('claviers-sans-fil', 'it', 'Wireless');

                -- Level 3: claviers-gaming
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('claviers-gaming', 'claviers-gaming', 3, l2_id, 'Gaming')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('claviers-gaming', 'fr', 'Gaming');
                PERFORM insert_category_translations('claviers-gaming', 'ar', 'للألعاب');
                PERFORM insert_category_translations('claviers-gaming', 'en', 'Gaming');
                PERFORM insert_category_translations('claviers-gaming', 'de', 'Gaming');
                PERFORM insert_category_translations('claviers-gaming', 'es', 'Gaming');
                PERFORM insert_category_translations('claviers-gaming', 'it', 'Gaming');

            -- Level 2: souris
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('souris', 'souris', 2, l1_id, 'Souris')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('souris', 'fr', 'Souris');
            PERFORM insert_category_translations('souris', 'ar', 'فأرات');
            PERFORM insert_category_translations('souris', 'en', 'Mice');
            PERFORM insert_category_translations('souris', 'de', 'Mäuse');
            PERFORM insert_category_translations('souris', 'es', 'Ratones');
            PERFORM insert_category_translations('souris', 'it', 'Mouse');

                -- Level 3: souris-filaire
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('souris-filaire', 'souris-filaire', 3, l2_id, 'Filaire')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('souris-filaire', 'fr', 'Filaire');
                PERFORM insert_category_translations('souris-filaire', 'ar', 'سلكية');
                PERFORM insert_category_translations('souris-filaire', 'en', 'Wired');
                PERFORM insert_category_translations('souris-filaire', 'de', 'Kabelgebunden');
                PERFORM insert_category_translations('souris-filaire', 'es', 'Con cable');
                PERFORM insert_category_translations('souris-filaire', 'it', 'Con Filo');

                -- Level 3: souris-sans-fil
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('souris-sans-fil', 'souris-sans-fil', 3, l2_id, 'Sans fil')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('souris-sans-fil', 'fr', 'Sans fil');
                PERFORM insert_category_translations('souris-sans-fil', 'ar', 'لاسلكية');
                PERFORM insert_category_translations('souris-sans-fil', 'en', 'Wireless');
                PERFORM insert_category_translations('souris-sans-fil', 'de', 'Kabellos');
                PERFORM insert_category_translations('souris-sans-fil', 'es', 'Inalámbricos');
                PERFORM insert_category_translations('souris-sans-fil', 'it', 'Wireless');

                -- Level 3: souris-gaming
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('souris-gaming', 'souris-gaming', 3, l2_id, 'Gaming')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('souris-gaming', 'fr', 'Gaming');
                PERFORM insert_category_translations('souris-gaming', 'ar', 'للألعاب');
                PERFORM insert_category_translations('souris-gaming', 'en', 'Gaming');
                PERFORM insert_category_translations('souris-gaming', 'de', 'Gaming');
                PERFORM insert_category_translations('souris-gaming', 'es', 'Gaming');
                PERFORM insert_category_translations('souris-gaming', 'it', 'Gaming');

            -- Level 2: tapis-souris
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tapis-souris', 'tapis-souris', 2, l1_id, 'Tapis de souris')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tapis-souris', 'fr', 'Tapis de souris');
            PERFORM insert_category_translations('tapis-souris', 'ar', 'وسادات فأرة');
            PERFORM insert_category_translations('tapis-souris', 'en', 'Mouse Pads');
            PERFORM insert_category_translations('tapis-souris', 'de', 'Mauspads');
            PERFORM insert_category_translations('tapis-souris', 'es', 'Alfombrillas de ratón');
            PERFORM insert_category_translations('tapis-souris', 'it', 'Tappetini Mouse');

            -- Level 2: webcams
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('webcams', 'webcams', 2, l1_id, 'Webcams')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('webcams', 'fr', 'Webcams');
            PERFORM insert_category_translations('webcams', 'ar', 'كاميرات ويب');
            PERFORM insert_category_translations('webcams', 'en', 'Webcams');
            PERFORM insert_category_translations('webcams', 'de', 'Webcams');
            PERFORM insert_category_translations('webcams', 'es', 'Webcams');
            PERFORM insert_category_translations('webcams', 'it', 'Webcam');

            -- Level 2: microphones
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('microphones', 'microphones', 2, l1_id, 'Microphones')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('microphones', 'fr', 'Microphones');
            PERFORM insert_category_translations('microphones', 'ar', 'ميكروفونات');
            PERFORM insert_category_translations('microphones', 'en', 'Microphones');
            PERFORM insert_category_translations('microphones', 'de', 'Mikrofone');
            PERFORM insert_category_translations('microphones', 'es', 'Micrófonos');
            PERFORM insert_category_translations('microphones', 'it', 'Microfoni');

            -- Level 2: enceintes-pc
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('enceintes-pc', 'enceintes-pc', 2, l1_id, 'Enceintes PC')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('enceintes-pc', 'fr', 'Enceintes PC');
            PERFORM insert_category_translations('enceintes-pc', 'ar', 'مكبرات صوت للكمبيوتر');
            PERFORM insert_category_translations('enceintes-pc', 'en', 'PC Speakers');
            PERFORM insert_category_translations('enceintes-pc', 'de', 'PC-Lautsprecher');
            PERFORM insert_category_translations('enceintes-pc', 'es', 'Altavoces PC');
            PERFORM insert_category_translations('enceintes-pc', 'it', 'Altoparlanti PC');

            -- Level 2: casques-audio
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('casques-audio', 'casques-audio', 2, l1_id, 'Casques audio')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('casques-audio', 'fr', 'Casques audio');
            PERFORM insert_category_translations('casques-audio', 'ar', 'سماعات رأس');
            PERFORM insert_category_translations('casques-audio', 'en', 'Headphones');
            PERFORM insert_category_translations('casques-audio', 'de', 'Headsets');
            PERFORM insert_category_translations('casques-audio', 'es', 'Auriculares');
            PERFORM insert_category_translations('casques-audio', 'it', 'Cuffie Audio');

            -- Level 2: disques-durs-externes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('disques-durs-externes', 'disques-durs-externes', 2, l1_id, 'Disques durs externes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('disques-durs-externes', 'fr', 'Disques durs externes');
            PERFORM insert_category_translations('disques-durs-externes', 'ar', 'أقراص صلبة خارجية');
            PERFORM insert_category_translations('disques-durs-externes', 'en', 'External Hard Drives');
            PERFORM insert_category_translations('disques-durs-externes', 'de', 'Externe Festplatten');
            PERFORM insert_category_translations('disques-durs-externes', 'es', 'Discos duros externos');
            PERFORM insert_category_translations('disques-durs-externes', 'it', 'Hard Disk Esterni');

            -- Level 2: cles-usb
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cles-usb', 'cles-usb', 2, l1_id, 'Clés USB')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cles-usb', 'fr', 'Clés USB');
            PERFORM insert_category_translations('cles-usb', 'ar', 'ذاكرة فلاش USB');
            PERFORM insert_category_translations('cles-usb', 'en', 'USB Drives');
            PERFORM insert_category_translations('cles-usb', 'de', 'USB-Sticks');
            PERFORM insert_category_translations('cles-usb', 'es', 'Memorias USB');
            PERFORM insert_category_translations('cles-usb', 'it', 'Chiavette USB');

            -- Level 2: lecteurs-cartes-memoire
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lecteurs-cartes-memoire', 'lecteurs-cartes-memoire', 2, l1_id, 'Lecteurs de cartes mémoire')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lecteurs-cartes-memoire', 'fr', 'Lecteurs de cartes mémoire');
            PERFORM insert_category_translations('lecteurs-cartes-memoire', 'ar', 'قارئات بطاقات الذاكرة');
            PERFORM insert_category_translations('lecteurs-cartes-memoire', 'en', 'Memory Card Readers');
            PERFORM insert_category_translations('lecteurs-cartes-memoire', 'de', 'Speicherkartenleser');
            PERFORM insert_category_translations('lecteurs-cartes-memoire', 'es', 'Lectores de tarjetas');
            PERFORM insert_category_translations('lecteurs-cartes-memoire', 'it', 'Lettori Schede di Memoria');

            -- Level 2: stations-accueil
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('stations-accueil', 'stations-accueil', 2, l1_id, 'Stations d’accueil')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('stations-accueil', 'fr', 'Stations d’accueil');
            PERFORM insert_category_translations('stations-accueil', 'ar', 'محطات إرساء');
            PERFORM insert_category_translations('stations-accueil', 'en', 'Docking Stations');
            PERFORM insert_category_translations('stations-accueil', 'de', 'Docking-Stationen');
            PERFORM insert_category_translations('stations-accueil', 'es', 'Bases de conexión');
            PERFORM insert_category_translations('stations-accueil', 'it', 'Docking Station');

            -- Level 2: imprimantes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('imprimantes', 'imprimantes', 2, l1_id, 'Imprimantes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('imprimantes', 'fr', 'Imprimantes');
            PERFORM insert_category_translations('imprimantes', 'ar', 'طابعات');
            PERFORM insert_category_translations('imprimantes', 'en', 'Printers');
            PERFORM insert_category_translations('imprimantes', 'de', 'Drucker');
            PERFORM insert_category_translations('imprimantes', 'es', 'Impresoras');
            PERFORM insert_category_translations('imprimantes', 'it', 'Stampanti');

            -- Level 2: scanners
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('scanners', 'scanners', 2, l1_id, 'Scanners')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('scanners', 'fr', 'Scanners');
            PERFORM insert_category_translations('scanners', 'ar', 'ماسحات ضوئية');
            PERFORM insert_category_translations('scanners', 'en', 'Scanners');
            PERFORM insert_category_translations('scanners', 'de', 'Scanner');
            PERFORM insert_category_translations('scanners', 'es', 'Escáneres');
            PERFORM insert_category_translations('scanners', 'it', 'Scanner');

            -- Level 2: videoprojecteurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('videoprojecteurs', 'videoprojecteurs', 2, l1_id, 'Vidéoprojecteurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('videoprojecteurs', 'fr', 'Vidéoprojecteurs');
            PERFORM insert_category_translations('videoprojecteurs', 'ar', 'أجهزة عرض فيديو');
            PERFORM insert_category_translations('videoprojecteurs', 'en', 'Projectors');
            PERFORM insert_category_translations('videoprojecteurs', 'de', 'Beamer');
            PERFORM insert_category_translations('videoprojecteurs', 'es', 'Proyectores');
            PERFORM insert_category_translations('videoprojecteurs', 'it', 'Videoproiettori');

        -- Level 1: reseau-internet
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('reseau-internet', 'reseau-internet', 1, root_id, 'Réseau & Internet')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('reseau-internet', 'fr', 'Réseau & Internet');
        PERFORM insert_category_translations('reseau-internet', 'ar', 'شبكات وإنترنت');
        PERFORM insert_category_translations('reseau-internet', 'en', 'Network & Internet');
        PERFORM insert_category_translations('reseau-internet', 'de', 'Netzwerk & Internet');
        PERFORM insert_category_translations('reseau-internet', 'es', 'Red & Internet');
        PERFORM insert_category_translations('reseau-internet', 'it', 'Rete e Internet');

            -- Level 2: routeurs-wifi
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('routeurs-wifi', 'routeurs-wifi', 2, l1_id, 'Routeurs Wi‑Fi')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('routeurs-wifi', 'fr', 'Routeurs Wi‑Fi');
            PERFORM insert_category_translations('routeurs-wifi', 'ar', 'أجهزة راوتر واي فاي');
            PERFORM insert_category_translations('routeurs-wifi', 'en', 'Wi-Fi Routers');
            PERFORM insert_category_translations('routeurs-wifi', 'de', 'WLAN-Router');
            PERFORM insert_category_translations('routeurs-wifi', 'es', 'Routers Wi‑Fi');
            PERFORM insert_category_translations('routeurs-wifi', 'it', 'Router Wi-Fi');

            -- Level 2: wifi-mesh
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('wifi-mesh', 'wifi-mesh', 2, l1_id, 'Systèmes Wi‑Fi mesh')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('wifi-mesh', 'fr', 'Systèmes Wi‑Fi mesh');
            PERFORM insert_category_translations('wifi-mesh', 'ar', 'أنظمة واي فاي Mesh');
            PERFORM insert_category_translations('wifi-mesh', 'en', 'Wi-Fi Mesh Systems');
            PERFORM insert_category_translations('wifi-mesh', 'de', 'Mesh-WLAN-Systeme');
            PERFORM insert_category_translations('wifi-mesh', 'es', 'Sistemas Wi‑Fi Mesh');
            PERFORM insert_category_translations('wifi-mesh', 'it', 'Sistemi Wi-Fi Mesh');

            -- Level 2: modems
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('modems', 'modems', 2, l1_id, 'Modems')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('modems', 'fr', 'Modems');
            PERFORM insert_category_translations('modems', 'ar', 'أجهزة مودم');
            PERFORM insert_category_translations('modems', 'en', 'Modems');
            PERFORM insert_category_translations('modems', 'de', 'Modems');
            PERFORM insert_category_translations('modems', 'es', 'Módems');
            PERFORM insert_category_translations('modems', 'it', 'Modem');

            -- Level 2: repeteurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('repeteurs', 'repeteurs', 2, l1_id, 'Répéteurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('repeteurs', 'fr', 'Répéteurs');
            PERFORM insert_category_translations('repeteurs', 'ar', 'مكررات إشارة');
            PERFORM insert_category_translations('repeteurs', 'en', 'Repeaters');
            PERFORM insert_category_translations('repeteurs', 'de', 'WLAN-Repeater');
            PERFORM insert_category_translations('repeteurs', 'es', 'Repetidores');
            PERFORM insert_category_translations('repeteurs', 'it', 'Ripetitori');

            -- Level 2: points-acces
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('points-acces', 'points-acces', 2, l1_id, 'Points d’accès')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('points-acces', 'fr', 'Points d’accès');
            PERFORM insert_category_translations('points-acces', 'ar', 'نقاط وصول');
            PERFORM insert_category_translations('points-acces', 'en', 'Access Points');
            PERFORM insert_category_translations('points-acces', 'de', 'Access Points');
            PERFORM insert_category_translations('points-acces', 'es', 'Puntos de acceso');
            PERFORM insert_category_translations('points-acces', 'it', 'Access Point');

            -- Level 2: switches
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('switches', 'switches', 2, l1_id, 'Switches réseau')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('switches', 'fr', 'Switches réseau');
            PERFORM insert_category_translations('switches', 'ar', 'محولات شبكة (Switches)');
            PERFORM insert_category_translations('switches', 'en', 'Network Switches');
            PERFORM insert_category_translations('switches', 'de', 'Netzwerk-Switches');
            PERFORM insert_category_translations('switches', 'es', 'Switches de red');
            PERFORM insert_category_translations('switches', 'it', 'Switch di Rete');

            -- Level 2: cables-ethernet
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cables-ethernet', 'cables-ethernet', 2, l1_id, 'Câbles Ethernet')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cables-ethernet', 'fr', 'Câbles Ethernet');
            PERFORM insert_category_translations('cables-ethernet', 'ar', 'كابلات إيثرنت');
            PERFORM insert_category_translations('cables-ethernet', 'en', 'Ethernet Cables');
            PERFORM insert_category_translations('cables-ethernet', 'de', 'Ethernet-Kabel');
            PERFORM insert_category_translations('cables-ethernet', 'es', 'Cables Ethernet');
            PERFORM insert_category_translations('cables-ethernet', 'it', 'Cavi Ethernet');

            -- Level 2: fibre-optique
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fibre-optique', 'fibre-optique', 2, l1_id, 'Équipements fibre optique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fibre-optique', 'fr', 'Équipements fibre optique');
            PERFORM insert_category_translations('fibre-optique', 'ar', 'معدات الألياف البصرية');
            PERFORM insert_category_translations('fibre-optique', 'en', 'Fiber Optic Equipment');
            PERFORM insert_category_translations('fibre-optique', 'de', 'Glasfaser-Equipment');
            PERFORM insert_category_translations('fibre-optique', 'es', 'Equipos de fibra óptica');
            PERFORM insert_category_translations('fibre-optique', 'it', 'Apparecchiature Fibra Ottica');

            -- Level 2: routeurs-4g-5g
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('routeurs-4g-5g', 'routeurs-4g-5g', 2, l1_id, 'Routeurs 4G/5G')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('routeurs-4g-5g', 'fr', 'Routeurs 4G/5G');
            PERFORM insert_category_translations('routeurs-4g-5g', 'ar', 'أجهزة راوتر 4G/5G');
            PERFORM insert_category_translations('routeurs-4g-5g', 'en', '4G/5G Routers');
            PERFORM insert_category_translations('routeurs-4g-5g', 'de', '4G/5G-Router');
            PERFORM insert_category_translations('routeurs-4g-5g', 'es', 'Routers 4G/5G');
            PERFORM insert_category_translations('routeurs-4g-5g', 'it', 'Router 4G/5G');

            -- Level 2: antennes-reseau
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('antennes-reseau', 'antennes-reseau', 2, l1_id, 'Antennes réseau')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('antennes-reseau', 'fr', 'Antennes réseau');
            PERFORM insert_category_translations('antennes-reseau', 'ar', 'هوائيات شبكة');
            PERFORM insert_category_translations('antennes-reseau', 'en', 'Network Antennas');
            PERFORM insert_category_translations('antennes-reseau', 'de', 'Netzwerkantennen');
            PERFORM insert_category_translations('antennes-reseau', 'es', 'Antenas de red');
            PERFORM insert_category_translations('antennes-reseau', 'it', 'Antenne di Rete');

            -- Level 2: adaptateurs-usb-wifi
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('adaptateurs-usb-wifi', 'adaptateurs-usb-wifi', 2, l1_id, 'Adaptateurs Wi‑Fi USB')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('adaptateurs-usb-wifi', 'fr', 'Adaptateurs Wi‑Fi USB');
            PERFORM insert_category_translations('adaptateurs-usb-wifi', 'ar', 'محولات واي فاي USB');
            PERFORM insert_category_translations('adaptateurs-usb-wifi', 'en', 'USB Wi-Fi Adapters');
            PERFORM insert_category_translations('adaptateurs-usb-wifi', 'de', 'USB-WLAN-Adapter');
            PERFORM insert_category_translations('adaptateurs-usb-wifi', 'es', 'Adaptadores USB Wi‑Fi');
            PERFORM insert_category_translations('adaptateurs-usb-wifi', 'it', 'Adattatori Wi-Fi USB');

            -- Level 2: routeurs-vpn
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('routeurs-vpn', 'routeurs-vpn', 2, l1_id, 'Routeurs VPN')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('routeurs-vpn', 'fr', 'Routeurs VPN');
            PERFORM insert_category_translations('routeurs-vpn', 'ar', 'أجهزة راوتر VPN');
            PERFORM insert_category_translations('routeurs-vpn', 'en', 'VPN Routers');
            PERFORM insert_category_translations('routeurs-vpn', 'de', 'VPN-Router');
            PERFORM insert_category_translations('routeurs-vpn', 'es', 'Routers VPN');
            PERFORM insert_category_translations('routeurs-vpn', 'it', 'Router VPN');

        -- Level 1: equipement-bureau
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('equipement-bureau', 'equipement-bureau', 1, root_id, 'Équipement de Bureau')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('equipement-bureau', 'fr', 'Équipement de Bureau');
        PERFORM insert_category_translations('equipement-bureau', 'ar', 'معدات مكتبية');
        PERFORM insert_category_translations('equipement-bureau', 'en', 'Office Equipment');
        PERFORM insert_category_translations('equipement-bureau', 'de', 'Büroausstattung');
        PERFORM insert_category_translations('equipement-bureau', 'es', 'Equipamiento de Oficina');
        PERFORM insert_category_translations('equipement-bureau', 'it', 'Attrezzature per Ufficio');

            -- Level 2: imprimantes-laser
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('imprimantes-laser', 'imprimantes-laser', 2, l1_id, 'Imprimantes laser')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('imprimantes-laser', 'fr', 'Imprimantes laser');
            PERFORM insert_category_translations('imprimantes-laser', 'ar', 'طابعات ليزر');
            PERFORM insert_category_translations('imprimantes-laser', 'en', 'Laser Printers');
            PERFORM insert_category_translations('imprimantes-laser', 'de', 'Laserdrucker');
            PERFORM insert_category_translations('imprimantes-laser', 'es', 'Impresoras láser');
            PERFORM insert_category_translations('imprimantes-laser', 'it', 'Stampanti Laser');

            -- Level 2: imprimantes-jet-encre
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('imprimantes-jet-encre', 'imprimantes-jet-encre', 2, l1_id, 'Imprimantes jet d’encre')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('imprimantes-jet-encre', 'fr', 'Imprimantes jet d’encre');
            PERFORM insert_category_translations('imprimantes-jet-encre', 'ar', 'طابعات نفث الحبر');
            PERFORM insert_category_translations('imprimantes-jet-encre', 'en', 'Inkjet Printers');
            PERFORM insert_category_translations('imprimantes-jet-encre', 'de', 'Tintenstrahldrucker');
            PERFORM insert_category_translations('imprimantes-jet-encre', 'es', 'Impresoras de inyección');
            PERFORM insert_category_translations('imprimantes-jet-encre', 'it', 'Stampanti a Getto d''Inchiostro');

            -- Level 2: photocopieurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('photocopieurs', 'photocopieurs', 2, l1_id, 'Photocopieurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('photocopieurs', 'fr', 'Photocopieurs');
            PERFORM insert_category_translations('photocopieurs', 'ar', 'آلات تصوير');
            PERFORM insert_category_translations('photocopieurs', 'en', 'Photocopiers');
            PERFORM insert_category_translations('photocopieurs', 'de', 'Kopierer');
            PERFORM insert_category_translations('photocopieurs', 'es', 'Fotocopiadoras');
            PERFORM insert_category_translations('photocopieurs', 'it', 'Fotocopiatrici');

            -- Level 2: scanners-pro
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('scanners-pro', 'scanners-pro', 2, l1_id, 'Scanners')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('scanners-pro', 'fr', 'Scanners');
            PERFORM insert_category_translations('scanners-pro', 'ar', 'ماسحات ضوئية احترافية');
            PERFORM insert_category_translations('scanners-pro', 'en', 'Professional Scanners');
            PERFORM insert_category_translations('scanners-pro', 'de', 'Scanner');
            PERFORM insert_category_translations('scanners-pro', 'es', 'Escáneres');
            PERFORM insert_category_translations('scanners-pro', 'it', 'Scanner');

            -- Level 2: fax
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fax', 'fax', 2, l1_id, 'Fax')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fax', 'fr', 'Fax');
            PERFORM insert_category_translations('fax', 'ar', 'فاكس');
            PERFORM insert_category_translations('fax', 'en', 'Fax Machines');
            PERFORM insert_category_translations('fax', 'de', 'Faxgeräte');
            PERFORM insert_category_translations('fax', 'es', 'Fax');
            PERFORM insert_category_translations('fax', 'it', 'Fax');

            -- Level 2: multifonctions
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('multifonctions', 'multifonctions', 2, l1_id, 'Imprimantes multifonctions')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('multifonctions', 'fr', 'Imprimantes multifonctions');
            PERFORM insert_category_translations('multifonctions', 'ar', 'طابعات متعددة الوظائف');
            PERFORM insert_category_translations('multifonctions', 'en', 'Multifunction Printers');
            PERFORM insert_category_translations('multifonctions', 'de', 'Multifunktionsdrucker');
            PERFORM insert_category_translations('multifonctions', 'es', 'Impresoras multifunción');
            PERFORM insert_category_translations('multifonctions', 'it', 'Stampanti Multifunzione');

            -- Level 2: cartouches-encre
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cartouches-encre', 'cartouches-encre', 2, l1_id, 'Cartouches d’encre')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cartouches-encre', 'fr', 'Cartouches d’encre');
            PERFORM insert_category_translations('cartouches-encre', 'ar', 'خراطيش حبر');
            PERFORM insert_category_translations('cartouches-encre', 'en', 'Ink Cartridges');
            PERFORM insert_category_translations('cartouches-encre', 'de', 'Tintenpatronen');
            PERFORM insert_category_translations('cartouches-encre', 'es', 'Cartuchos de tinta');
            PERFORM insert_category_translations('cartouches-encre', 'it', 'Cartucce d''Inchiostro');

            -- Level 2: toners
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('toners', 'toners', 2, l1_id, 'Toners')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('toners', 'fr', 'Toners');
            PERFORM insert_category_translations('toners', 'ar', 'أحبار (Toners)');
            PERFORM insert_category_translations('toners', 'en', 'Toners');
            PERFORM insert_category_translations('toners', 'de', 'Toner');
            PERFORM insert_category_translations('toners', 'es', 'Tóner');
            PERFORM insert_category_translations('toners', 'it', 'Toner');

            -- Level 2: plastifieuses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('plastifieuses', 'plastifieuses', 2, l1_id, 'Plastifieuses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('plastifieuses', 'fr', 'Plastifieuses');
            PERFORM insert_category_translations('plastifieuses', 'ar', 'آلات تغليف');
            PERFORM insert_category_translations('plastifieuses', 'en', 'Laminators');
            PERFORM insert_category_translations('plastifieuses', 'de', 'Laminiergeräte');
            PERFORM insert_category_translations('plastifieuses', 'es', 'Plastificadoras');
            PERFORM insert_category_translations('plastifieuses', 'it', 'Plastificatrici');

            -- Level 2: destructeurs-documents
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('destructeurs-documents', 'destructeurs-documents', 2, l1_id, 'Destructeurs de documents')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('destructeurs-documents', 'fr', 'Destructeurs de documents');
            PERFORM insert_category_translations('destructeurs-documents', 'ar', 'آلات إتلاف المستندات');
            PERFORM insert_category_translations('destructeurs-documents', 'en', 'Paper Shredders');
            PERFORM insert_category_translations('destructeurs-documents', 'de', 'Aktenvernichter');
            PERFORM insert_category_translations('destructeurs-documents', 'es', 'Destructoras de documentos');
            PERFORM insert_category_translations('destructeurs-documents', 'it', 'Distruggidocumenti');

            -- Level 2: videoprojecteurs-pro
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('videoprojecteurs-pro', 'videoprojecteurs-pro', 2, l1_id, 'Vidéoprojecteurs professionnels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('videoprojecteurs-pro', 'fr', 'Vidéoprojecteurs professionnels');
            PERFORM insert_category_translations('videoprojecteurs-pro', 'ar', 'أجهزة عرض احترافية');
            PERFORM insert_category_translations('videoprojecteurs-pro', 'en', 'Professional Projectors');
            PERFORM insert_category_translations('videoprojecteurs-pro', 'de', 'Professionelle Beamer');
            PERFORM insert_category_translations('videoprojecteurs-pro', 'es', 'Proyectores profesionales');
            PERFORM insert_category_translations('videoprojecteurs-pro', 'it', 'Videoproiettori Professionali');

            -- Level 2: tableaux-blancs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tableaux-blancs', 'tableaux-blancs', 2, l1_id, 'Tableaux blancs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tableaux-blancs', 'fr', 'Tableaux blancs');
            PERFORM insert_category_translations('tableaux-blancs', 'ar', 'سبورات بيضاء');
            PERFORM insert_category_translations('tableaux-blancs', 'en', 'Whiteboards');
            PERFORM insert_category_translations('tableaux-blancs', 'de', 'Whiteboards');
            PERFORM insert_category_translations('tableaux-blancs', 'es', 'Pizarras blancas');
            PERFORM insert_category_translations('tableaux-blancs', 'it', 'Lavagne Bianche');

            -- Level 2: equipements-conference
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('equipements-conference', 'equipements-conference', 2, l1_id, 'Équipements de conférence')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('equipements-conference', 'fr', 'Équipements de conférence');
            PERFORM insert_category_translations('equipements-conference', 'ar', 'معدات مؤتمرات');
            PERFORM insert_category_translations('equipements-conference', 'en', 'Conference Equipment');
            PERFORM insert_category_translations('equipements-conference', 'de', 'Konferenzausrüstung');
            PERFORM insert_category_translations('equipements-conference', 'es', 'Equipos de conferencia');
            PERFORM insert_category_translations('equipements-conference', 'it', 'Attrezzature per Conferenze');

        -- Level 1: electronique-gadgets
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('electronique-gadgets', 'electronique-gadgets', 1, root_id, 'Électronique & Gadgets')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('electronique-gadgets', 'fr', 'Électronique & Gadgets');
        PERFORM insert_category_translations('electronique-gadgets', 'ar', 'إلكترونيات وأدوات ذكية');
        PERFORM insert_category_translations('electronique-gadgets', 'en', 'Electronics & Gadgets');
        PERFORM insert_category_translations('electronique-gadgets', 'de', 'Elektronik & Gadgets');
        PERFORM insert_category_translations('electronique-gadgets', 'es', 'Electrónica & Gadgets');
        PERFORM insert_category_translations('electronique-gadgets', 'it', 'Elettronica & Gadget');

            -- Level 2: montres-connectees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('montres-connectees', 'montres-connectees', 2, l1_id, 'Montres connectées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('montres-connectees', 'fr', 'Montres connectées');
            PERFORM insert_category_translations('montres-connectees', 'ar', 'ساعات ذكية');
            PERFORM insert_category_translations('montres-connectees', 'en', 'Smartwatches');
            PERFORM insert_category_translations('montres-connectees', 'de', 'Smartwatches');
            PERFORM insert_category_translations('montres-connectees', 'es', 'Relojes inteligentes');
            PERFORM insert_category_translations('montres-connectees', 'it', 'Smartwatch');

            -- Level 2: bracelets-connectes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bracelets-connectes', 'bracelets-connectes', 2, l1_id, 'Bracelets connectés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bracelets-connectes', 'fr', 'Bracelets connectés');
            PERFORM insert_category_translations('bracelets-connectes', 'ar', 'أساور ذكية');
            PERFORM insert_category_translations('bracelets-connectes', 'en', 'Smart Bands');
            PERFORM insert_category_translations('bracelets-connectes', 'de', 'Fitness-Tracker');
            PERFORM insert_category_translations('bracelets-connectes', 'es', 'Pulseras inteligentes');
            PERFORM insert_category_translations('bracelets-connectes', 'it', 'Smartband');

            -- Level 2: lunettes-intelligentes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lunettes-intelligentes', 'lunettes-intelligentes', 2, l1_id, 'Lunettes intelligentes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lunettes-intelligentes', 'fr', 'Lunettes intelligentes');
            PERFORM insert_category_translations('lunettes-intelligentes', 'ar', 'نظارات ذكية');
            PERFORM insert_category_translations('lunettes-intelligentes', 'en', 'Smart Glasses');
            PERFORM insert_category_translations('lunettes-intelligentes', 'de', 'Smart Glasses');
            PERFORM insert_category_translations('lunettes-intelligentes', 'es', 'Gafas inteligentes');
            PERFORM insert_category_translations('lunettes-intelligentes', 'it', 'Occhiali Smart');

            -- Level 2: action-cams
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('action-cams', 'action-cams', 2, l1_id, 'Action cams')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('action-cams', 'fr', 'Action cams');
            PERFORM insert_category_translations('action-cams', 'ar', 'كاميرات الحركة');
            PERFORM insert_category_translations('action-cams', 'en', 'Action Cams');
            PERFORM insert_category_translations('action-cams', 'de', 'Action-Cams');
            PERFORM insert_category_translations('action-cams', 'es', 'Cámaras de acción');
            PERFORM insert_category_translations('action-cams', 'it', 'Action Cam');

            -- Level 2: drones
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('drones', 'drones', 2, l1_id, 'Drones')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('drones', 'fr', 'Drones');
            PERFORM insert_category_translations('drones', 'ar', 'طائرات بدون طيار');
            PERFORM insert_category_translations('drones', 'en', 'Drones');
            PERFORM insert_category_translations('drones', 'de', 'Drohnen');
            PERFORM insert_category_translations('drones', 'es', 'Drones');
            PERFORM insert_category_translations('drones', 'it', 'Droni');

            -- Level 2: mini-projecteurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mini-projecteurs', 'mini-projecteurs', 2, l1_id, 'Mini projecteurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mini-projecteurs', 'fr', 'Mini projecteurs');
            PERFORM insert_category_translations('mini-projecteurs', 'ar', 'أجهزة عرض صغيرة');
            PERFORM insert_category_translations('mini-projecteurs', 'en', 'Mini Projectors');
            PERFORM insert_category_translations('mini-projecteurs', 'de', 'Mini-Beamer');
            PERFORM insert_category_translations('mini-projecteurs', 'es', 'Mini proyectores');
            PERFORM insert_category_translations('mini-projecteurs', 'it', 'Mini Proiettori');

            -- Level 2: casques-vr
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('casques-vr', 'casques-vr', 2, l1_id, 'Casques VR')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('casques-vr', 'fr', 'Casques VR');
            PERFORM insert_category_translations('casques-vr', 'ar', 'نظارات الواقع الافتراضي');
            PERFORM insert_category_translations('casques-vr', 'en', 'VR Headsets');
            PERFORM insert_category_translations('casques-vr', 'de', 'VR-Headsets');
            PERFORM insert_category_translations('casques-vr', 'es', 'Cascos VR');
            PERFORM insert_category_translations('casques-vr', 'it', 'Visori VR');

            -- Level 2: dispositifs-ar
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('dispositifs-ar', 'dispositifs-ar', 2, l1_id, 'Dispositifs AR')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('dispositifs-ar', 'fr', 'Dispositifs AR');
            PERFORM insert_category_translations('dispositifs-ar', 'ar', 'أجهزة الواقع المعزز');
            PERFORM insert_category_translations('dispositifs-ar', 'en', 'AR Devices');
            PERFORM insert_category_translations('dispositifs-ar', 'de', 'AR-Geräte');
            PERFORM insert_category_translations('dispositifs-ar', 'es', 'Dispositivos AR');
            PERFORM insert_category_translations('dispositifs-ar', 'it', 'Dispositivi AR');

            -- Level 2: liseuses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('liseuses', 'liseuses', 2, l1_id, 'Liseuses électroniques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('liseuses', 'fr', 'Liseuses électroniques');
            PERFORM insert_category_translations('liseuses', 'ar', 'قارئات إلكترونية');
            PERFORM insert_category_translations('liseuses', 'en', 'E-readers');
            PERFORM insert_category_translations('liseuses', 'de', 'E-Book-Reader');
            PERFORM insert_category_translations('liseuses', 'es', 'Lectores electrónicos');
            PERFORM insert_category_translations('liseuses', 'it', 'E-reader');

            -- Level 2: radios
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('radios', 'radios', 2, l1_id, 'Radios')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('radios', 'fr', 'Radios');
            PERFORM insert_category_translations('radios', 'ar', 'أجهزة راديو');
            PERFORM insert_category_translations('radios', 'en', 'Radios');
            PERFORM insert_category_translations('radios', 'de', 'Radios');
            PERFORM insert_category_translations('radios', 'es', 'Radios');
            PERFORM insert_category_translations('radios', 'it', 'Radio');

            -- Level 2: talkie-walkies
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('talkie-walkies', 'talkie-walkies', 2, l1_id, 'Talkie‑walkies')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('talkie-walkies', 'fr', 'Talkie‑walkies');
            PERFORM insert_category_translations('talkie-walkies', 'ar', 'أجهزة اتصال لاسلكي');
            PERFORM insert_category_translations('talkie-walkies', 'en', 'Walkie-Talkies');
            PERFORM insert_category_translations('talkie-walkies', 'de', 'Walkie-Talkies');
            PERFORM insert_category_translations('talkie-walkies', 'es', 'Walkie‑talkies');
            PERFORM insert_category_translations('talkie-walkies', 'it', 'Ricetrasmittenti');

            -- Level 2: gps-portables
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gps-portables', 'gps-portables', 2, l1_id, 'GPS portables')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gps-portables', 'fr', 'GPS portables');
            PERFORM insert_category_translations('gps-portables', 'ar', 'أجهزة GPS محمولة');
            PERFORM insert_category_translations('gps-portables', 'en', 'Handheld GPS');
            PERFORM insert_category_translations('gps-portables', 'de', 'Hand-GPS-Geräte');
            PERFORM insert_category_translations('gps-portables', 'es', 'GPS portátiles');
            PERFORM insert_category_translations('gps-portables', 'it', 'GPS Portatili');

            -- Level 2: stylos-numeriques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('stylos-numeriques', 'stylos-numeriques', 2, l1_id, 'Stylos numériques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('stylos-numeriques', 'fr', 'Stylos numériques');
            PERFORM insert_category_translations('stylos-numeriques', 'ar', 'أقلام رقمية');
            PERFORM insert_category_translations('stylos-numeriques', 'en', 'Digital Pens');
            PERFORM insert_category_translations('stylos-numeriques', 'de', 'Digitale Stifte');
            PERFORM insert_category_translations('stylos-numeriques', 'es', 'Bolígrafos digitales');
            PERFORM insert_category_translations('stylos-numeriques', 'it', 'Penne Digitali');

        -- Level 1: maison-intelligente
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('maison-intelligente', 'maison-intelligente', 1, root_id, 'Maison Intelligente & Domotique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('maison-intelligente', 'fr', 'Maison Intelligente & Domotique');
        PERFORM insert_category_translations('maison-intelligente', 'ar', 'المنزل الذكي والأتمتة');
        PERFORM insert_category_translations('maison-intelligente', 'en', 'Smart Home & Automation');
        PERFORM insert_category_translations('maison-intelligente', 'de', 'Smart Home & Hausautomation');
        PERFORM insert_category_translations('maison-intelligente', 'es', 'Hogar Inteligente & Domótica');
        PERFORM insert_category_translations('maison-intelligente', 'it', 'Casa Intelligente & Domotica');

            -- Level 2: ampoules-connectees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ampoules-connectees', 'ampoules-connectees', 2, l1_id, 'Ampoules connectées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ampoules-connectees', 'fr', 'Ampoules connectées');
            PERFORM insert_category_translations('ampoules-connectees', 'ar', 'مصابيح ذكية');
            PERFORM insert_category_translations('ampoules-connectees', 'en', 'Smart Bulbs');
            PERFORM insert_category_translations('ampoules-connectees', 'de', 'Smarte Glühbirnen');
            PERFORM insert_category_translations('ampoules-connectees', 'es', 'Bombillas inteligentes');
            PERFORM insert_category_translations('ampoules-connectees', 'it', 'Lampadine Smart');

            -- Level 2: bandes-led
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bandes-led', 'bandes-led', 2, l1_id, 'Bandes LED')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bandes-led', 'fr', 'Bandes LED');
            PERFORM insert_category_translations('bandes-led', 'ar', 'أشرطة LED');
            PERFORM insert_category_translations('bandes-led', 'en', 'LED Strips');
            PERFORM insert_category_translations('bandes-led', 'de', 'LED-Streifen');
            PERFORM insert_category_translations('bandes-led', 'es', 'Tiras LED');
            PERFORM insert_category_translations('bandes-led', 'it', 'Strisce LED');

            -- Level 2: prises-intelligentes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('prises-intelligentes', 'prises-intelligentes', 2, l1_id, 'Prises intelligentes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('prises-intelligentes', 'fr', 'Prises intelligentes');
            PERFORM insert_category_translations('prises-intelligentes', 'ar', 'مقابس ذكية');
            PERFORM insert_category_translations('prises-intelligentes', 'en', 'Smart Plugs');
            PERFORM insert_category_translations('prises-intelligentes', 'de', 'Smarte Steckdosen');
            PERFORM insert_category_translations('prises-intelligentes', 'es', 'Enchufes inteligentes');
            PERFORM insert_category_translations('prises-intelligentes', 'it', 'Prese Smart');

            -- Level 2: cameras-securite
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cameras-securite', 'cameras-securite', 2, l1_id, 'Caméras de sécurité')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cameras-securite', 'fr', 'Caméras de sécurité');
            PERFORM insert_category_translations('cameras-securite', 'ar', 'كاميرات مراقبة');
            PERFORM insert_category_translations('cameras-securite', 'en', 'Security Cameras');
            PERFORM insert_category_translations('cameras-securite', 'de', 'Sicherheitskameras');
            PERFORM insert_category_translations('cameras-securite', 'es', 'Cámaras de seguridad');
            PERFORM insert_category_translations('cameras-securite', 'it', 'Telecamere di Sicurezza');

            -- Level 2: cameras-ip
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cameras-ip', 'cameras-ip', 2, l1_id, 'Caméras IP')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cameras-ip', 'fr', 'Caméras IP');
            PERFORM insert_category_translations('cameras-ip', 'ar', 'كاميرات IP');
            PERFORM insert_category_translations('cameras-ip', 'en', 'IP Cameras');
            PERFORM insert_category_translations('cameras-ip', 'de', 'IP-Kameras');
            PERFORM insert_category_translations('cameras-ip', 'es', 'Cámaras IP');
            PERFORM insert_category_translations('cameras-ip', 'it', 'Telecamere IP');

            -- Level 2: systemes-alarme
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('systemes-alarme', 'systemes-alarme', 2, l1_id, 'Systèmes d’alarme')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('systemes-alarme', 'fr', 'Systèmes d’alarme');
            PERFORM insert_category_translations('systemes-alarme', 'ar', 'أنظمة إنذار');
            PERFORM insert_category_translations('systemes-alarme', 'en', 'Alarm Systems');
            PERFORM insert_category_translations('systemes-alarme', 'de', 'Alarmsysteme');
            PERFORM insert_category_translations('systemes-alarme', 'es', 'Sistemas de alarma');
            PERFORM insert_category_translations('systemes-alarme', 'it', 'Sistemi di Allarme');

            -- Level 2: serrures-connectees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('serrures-connectees', 'serrures-connectees', 2, l1_id, 'Serrures connectées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('serrures-connectees', 'fr', 'Serrures connectées');
            PERFORM insert_category_translations('serrures-connectees', 'ar', 'أقفال ذكية');
            PERFORM insert_category_translations('serrures-connectees', 'en', 'Smart Locks');
            PERFORM insert_category_translations('serrures-connectees', 'de', 'Smarte Schlösser');
            PERFORM insert_category_translations('serrures-connectees', 'es', 'Cerraduras inteligentes');
            PERFORM insert_category_translations('serrures-connectees', 'it', 'Serrature Smart');

            -- Level 2: thermostats
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('thermostats', 'thermostats', 2, l1_id, 'Thermostats')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('thermostats', 'fr', 'Thermostats');
            PERFORM insert_category_translations('thermostats', 'ar', 'منظمات حرارة');
            PERFORM insert_category_translations('thermostats', 'en', 'Thermostats');
            PERFORM insert_category_translations('thermostats', 'de', 'Thermostate');
            PERFORM insert_category_translations('thermostats', 'es', 'Termostatos');
            PERFORM insert_category_translations('thermostats', 'it', 'Termostati');

            -- Level 2: capteurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('capteurs', 'capteurs', 2, l1_id, 'Capteurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('capteurs', 'fr', 'Capteurs');
            PERFORM insert_category_translations('capteurs', 'ar', 'مستشعرات');
            PERFORM insert_category_translations('capteurs', 'en', 'Sensors');
            PERFORM insert_category_translations('capteurs', 'de', 'Sensoren');
            PERFORM insert_category_translations('capteurs', 'es', 'Sensores');
            PERFORM insert_category_translations('capteurs', 'it', 'Sensori');

                -- Level 3: mouvement
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mouvement', 'mouvement', 3, l2_id, 'Mouvement')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('mouvement', 'fr', 'Mouvement');
                PERFORM insert_category_translations('mouvement', 'ar', 'حركة');
                PERFORM insert_category_translations('mouvement', 'en', 'Motion');
                PERFORM insert_category_translations('mouvement', 'de', 'Bewegung');
                PERFORM insert_category_translations('mouvement', 'es', 'Movimiento');
                PERFORM insert_category_translations('mouvement', 'it', 'Movimento');

                -- Level 3: fumee
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fumee', 'fumee', 3, l2_id, 'Fumée')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('fumee', 'fr', 'Fumée');
                PERFORM insert_category_translations('fumee', 'ar', 'دخان');
                PERFORM insert_category_translations('fumee', 'en', 'Smoke');
                PERFORM insert_category_translations('fumee', 'de', 'Rauch');
                PERFORM insert_category_translations('fumee', 'es', 'Humo');
                PERFORM insert_category_translations('fumee', 'it', 'Fumo');

                -- Level 3: fuite-eau
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fuite-eau', 'fuite-eau', 3, l2_id, 'Fuite d’eau')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('fuite-eau', 'fr', 'Fuite d’eau');
                PERFORM insert_category_translations('fuite-eau', 'ar', 'تسرب مياه');
                PERFORM insert_category_translations('fuite-eau', 'en', 'Water Leak');
                PERFORM insert_category_translations('fuite-eau', 'de', 'Wasserleck');
                PERFORM insert_category_translations('fuite-eau', 'es', 'Fugas de agua');
                PERFORM insert_category_translations('fuite-eau', 'it', 'Perdite d''Acqua');

            -- Level 2: interrupteurs-intelligents
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('interrupteurs-intelligents', 'interrupteurs-intelligents', 2, l1_id, 'Interrupteurs intelligents')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('interrupteurs-intelligents', 'fr', 'Interrupteurs intelligents');
            PERFORM insert_category_translations('interrupteurs-intelligents', 'ar', 'مفاتيح ذكية');
            PERFORM insert_category_translations('interrupteurs-intelligents', 'en', 'Smart Switches');
            PERFORM insert_category_translations('interrupteurs-intelligents', 'de', 'Smarte Schalter');
            PERFORM insert_category_translations('interrupteurs-intelligents', 'es', 'Interruptores inteligentes');
            PERFORM insert_category_translations('interrupteurs-intelligents', 'it', 'Interruttori Smart');

            -- Level 2: assistants-vocaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('assistants-vocaux', 'assistants-vocaux', 2, l1_id, 'Assistants vocaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('assistants-vocaux', 'fr', 'Assistants vocaux');
            PERFORM insert_category_translations('assistants-vocaux', 'ar', 'مساعدات صوتية');
            PERFORM insert_category_translations('assistants-vocaux', 'en', 'Voice Assistants');
            PERFORM insert_category_translations('assistants-vocaux', 'de', 'Sprachassistenten');
            PERFORM insert_category_translations('assistants-vocaux', 'es', 'Asistentes de voz');
            PERFORM insert_category_translations('assistants-vocaux', 'it', 'Assistenti Vocali');

            -- Level 2: sonnettes-video
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sonnettes-video', 'sonnettes-video', 2, l1_id, 'Sonnettes vidéo')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sonnettes-video', 'fr', 'Sonnettes vidéo');
            PERFORM insert_category_translations('sonnettes-video', 'ar', 'أجراس فيديو');
            PERFORM insert_category_translations('sonnettes-video', 'en', 'Video Doorbells');
            PERFORM insert_category_translations('sonnettes-video', 'de', 'Video-Türklingeln');
            PERFORM insert_category_translations('sonnettes-video', 'es', 'Timbres con vídeo');
            PERFORM insert_category_translations('sonnettes-video', 'it', 'Campanelli Video');

        -- Level 1: tv-divertissement
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tv-divertissement', 'tv-divertissement', 1, root_id, 'TV & Divertissement')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('tv-divertissement', 'fr', 'TV & Divertissement');
        PERFORM insert_category_translations('tv-divertissement', 'ar', 'تلفزيون وترفيه');
        PERFORM insert_category_translations('tv-divertissement', 'en', 'TV & Entertainment');
        PERFORM insert_category_translations('tv-divertissement', 'de', 'TV & Unterhaltung');
        PERFORM insert_category_translations('tv-divertissement', 'es', 'TV & Entretenimiento');
        PERFORM insert_category_translations('tv-divertissement', 'it', 'TV & Intrattenimento');

            -- Level 2: televiseurs-led
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('televiseurs-led', 'televiseurs-led', 2, l1_id, 'Téléviseurs LED')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('televiseurs-led', 'fr', 'Téléviseurs LED');
            PERFORM insert_category_translations('televiseurs-led', 'ar', 'تلفزيونات LED');
            PERFORM insert_category_translations('televiseurs-led', 'en', 'LED TVs');
            PERFORM insert_category_translations('televiseurs-led', 'de', 'LED-Fernseher');
            PERFORM insert_category_translations('televiseurs-led', 'es', 'Televisores LED');
            PERFORM insert_category_translations('televiseurs-led', 'it', 'TV LED');

            -- Level 2: televiseurs-oled
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('televiseurs-oled', 'televiseurs-oled', 2, l1_id, 'Téléviseurs OLED')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('televiseurs-oled', 'fr', 'Téléviseurs OLED');
            PERFORM insert_category_translations('televiseurs-oled', 'ar', 'تلفزيونات OLED');
            PERFORM insert_category_translations('televiseurs-oled', 'en', 'OLED TVs');
            PERFORM insert_category_translations('televiseurs-oled', 'de', 'OLED-Fernseher');
            PERFORM insert_category_translations('televiseurs-oled', 'es', 'Televisores OLED');
            PERFORM insert_category_translations('televiseurs-oled', 'it', 'TV OLED');

            -- Level 2: qled
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('qled', 'qled', 2, l1_id, 'QLED')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('qled', 'fr', 'QLED');
            PERFORM insert_category_translations('qled', 'ar', 'QLED');
            PERFORM insert_category_translations('qled', 'en', 'QLED');
            PERFORM insert_category_translations('qled', 'de', 'QLED');
            PERFORM insert_category_translations('qled', 'es', 'QLED');
            PERFORM insert_category_translations('qled', 'it', 'QLED');

            -- Level 2: smart-tv
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('smart-tv', 'smart-tv', 2, l1_id, 'Smart TV')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('smart-tv', 'fr', 'Smart TV');
            PERFORM insert_category_translations('smart-tv', 'ar', 'تلفزيون ذكي');
            PERFORM insert_category_translations('smart-tv', 'en', 'Smart TV');
            PERFORM insert_category_translations('smart-tv', 'de', 'Smart TVs');
            PERFORM insert_category_translations('smart-tv', 'es', 'Smart TV');
            PERFORM insert_category_translations('smart-tv', 'it', 'Smart TV');

            -- Level 2: android-tv
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('android-tv', 'android-tv', 2, l1_id, 'Android TV')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('android-tv', 'fr', 'Android TV');
            PERFORM insert_category_translations('android-tv', 'ar', 'أندرويد TV');
            PERFORM insert_category_translations('android-tv', 'en', 'Android TV');
            PERFORM insert_category_translations('android-tv', 'de', 'Android TVs');
            PERFORM insert_category_translations('android-tv', 'es', 'Android TV');
            PERFORM insert_category_translations('android-tv', 'it', 'Android TV');

            -- Level 2: recepteurs-tv
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('recepteurs-tv', 'recepteurs-tv', 2, l1_id, 'Récepteurs TV')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('recepteurs-tv', 'fr', 'Récepteurs TV');
            PERFORM insert_category_translations('recepteurs-tv', 'ar', 'مستقبلات تلفزيون');
            PERFORM insert_category_translations('recepteurs-tv', 'en', 'TV Receivers');
            PERFORM insert_category_translations('recepteurs-tv', 'de', 'TV-Receiver');
            PERFORM insert_category_translations('recepteurs-tv', 'es', 'Receptores de TV');
            PERFORM insert_category_translations('recepteurs-tv', 'it', 'Ricevitori TV');

            -- Level 2: decodeurs-satellites
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('decodeurs-satellites', 'decodeurs-satellites', 2, l1_id, 'Décodeurs satellites')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('decodeurs-satellites', 'fr', 'Décodeurs satellites');
            PERFORM insert_category_translations('decodeurs-satellites', 'ar', 'أجهزة فك التشفير الفضائية');
            PERFORM insert_category_translations('decodeurs-satellites', 'en', 'Satellite Decoders');
            PERFORM insert_category_translations('decodeurs-satellites', 'de', 'Satelliten-Decoder');
            PERFORM insert_category_translations('decodeurs-satellites', 'es', 'Decodificadores de satélite');
            PERFORM insert_category_translations('decodeurs-satellites', 'it', 'Decoder Satellitari');

            -- Level 2: box-tv-multimedia
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('box-tv-multimedia', 'box-tv-multimedia', 2, l1_id, 'Box TV et multimédia')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('box-tv-multimedia', 'fr', 'Box TV et multimédia');
            PERFORM insert_category_translations('box-tv-multimedia', 'ar', 'صناديق تلفزيون ووسائط');
            PERFORM insert_category_translations('box-tv-multimedia', 'en', 'TV & Multimedia Boxes');
            PERFORM insert_category_translations('box-tv-multimedia', 'de', 'TV- & Multimedia-Boxen');
            PERFORM insert_category_translations('box-tv-multimedia', 'es', 'TV Box y multimedia');
            PERFORM insert_category_translations('box-tv-multimedia', 'it', 'TV Box e Multimedia');

            -- Level 2: lecteurs-multimedias
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lecteurs-multimedias', 'lecteurs-multimedias', 2, l1_id, 'Lecteurs multimédias')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lecteurs-multimedias', 'fr', 'Lecteurs multimédias');
            PERFORM insert_category_translations('lecteurs-multimedias', 'ar', 'مشغلات وسائط');
            PERFORM insert_category_translations('lecteurs-multimedias', 'en', 'Media Players');
            PERFORM insert_category_translations('lecteurs-multimedias', 'de', 'Mediaplayer');
            PERFORM insert_category_translations('lecteurs-multimedias', 'es', 'Reproductores multimedia');
            PERFORM insert_category_translations('lecteurs-multimedias', 'it', 'Lettori Multimediali');

            -- Level 2: barres-de-son
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('barres-de-son', 'barres-de-son', 2, l1_id, 'Barres de son')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('barres-de-son', 'fr', 'Barres de son');
            PERFORM insert_category_translations('barres-de-son', 'ar', 'مكبرات صوت (Soundbars)');
            PERFORM insert_category_translations('barres-de-son', 'en', 'Soundbars');
            PERFORM insert_category_translations('barres-de-son', 'de', 'Soundbars');
            PERFORM insert_category_translations('barres-de-son', 'es', 'Barras de sonido');
            PERFORM insert_category_translations('barres-de-son', 'it', 'Soundbar');

            -- Level 2: home-cinema
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('home-cinema', 'home-cinema', 2, l1_id, 'Home cinéma')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('home-cinema', 'fr', 'Home cinéma');
            PERFORM insert_category_translations('home-cinema', 'ar', 'سينما منزلية');
            PERFORM insert_category_translations('home-cinema', 'en', 'Home Cinema');
            PERFORM insert_category_translations('home-cinema', 'de', 'Heimkino');
            PERFORM insert_category_translations('home-cinema', 'es', 'Home Cinema');
            PERFORM insert_category_translations('home-cinema', 'it', 'Home Cinema');

            -- Level 2: lecteurs-blu-ray
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lecteurs-blu-ray', 'lecteurs-blu-ray', 2, l1_id, 'Lecteurs Blu‑ray')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lecteurs-blu-ray', 'fr', 'Lecteurs Blu‑ray');
            PERFORM insert_category_translations('lecteurs-blu-ray', 'ar', 'مشغلات بلو راي');
            PERFORM insert_category_translations('lecteurs-blu-ray', 'en', 'Blu-ray Players');
            PERFORM insert_category_translations('lecteurs-blu-ray', 'de', 'Blu-ray-Player');
            PERFORM insert_category_translations('lecteurs-blu-ray', 'es', 'Reproductores Blu‑ray');
            PERFORM insert_category_translations('lecteurs-blu-ray', 'it', 'Lettori Blu-ray');

        -- Level 1: accessoires-mobiles
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-mobiles', 'accessoires-mobiles', 1, root_id, 'Accessoires Mobiles (Électronique)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('accessoires-mobiles', 'fr', 'Accessoires Mobiles (Électronique)');
        PERFORM insert_category_translations('accessoires-mobiles', 'ar', 'إكسسوارات المحمول (إلكترونيات)');
        PERFORM insert_category_translations('accessoires-mobiles', 'en', 'Mobile Accessories (Electronics)');
        PERFORM insert_category_translations('accessoires-mobiles', 'de', 'Mobile Zubehör (Elektronik)');
        PERFORM insert_category_translations('accessoires-mobiles', 'es', 'Accesorios Móviles (Electrónica)');
        PERFORM insert_category_translations('accessoires-mobiles', 'it', 'Accessori Mobile (Elettronica)');

            -- Level 2: chargeurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chargeurs', 'chargeurs', 2, l1_id, 'Chargeurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chargeurs', 'fr', 'Chargeurs');
            PERFORM insert_category_translations('chargeurs', 'ar', 'شواحن');
            PERFORM insert_category_translations('chargeurs', 'en', 'Chargers');
            PERFORM insert_category_translations('chargeurs', 'de', 'Ladegeräte');
            PERFORM insert_category_translations('chargeurs', 'es', 'Cargadores');
            PERFORM insert_category_translations('chargeurs', 'it', 'Caricabatterie');

            -- Level 2: chargeurs-rapides
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chargeurs-rapides', 'chargeurs-rapides', 2, l1_id, 'Chargeurs rapides')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chargeurs-rapides', 'fr', 'Chargeurs rapides');
            PERFORM insert_category_translations('chargeurs-rapides', 'ar', 'شواحن سريعة');
            PERFORM insert_category_translations('chargeurs-rapides', 'en', 'Fast Chargers');
            PERFORM insert_category_translations('chargeurs-rapides', 'de', 'Schnellladegeräte');
            PERFORM insert_category_translations('chargeurs-rapides', 'es', 'Cargadores rápidos');
            PERFORM insert_category_translations('chargeurs-rapides', 'it', 'Caricabatterie Rapidi');

            -- Level 2: powerbanks
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('powerbanks', 'powerbanks', 2, l1_id, 'Powerbanks')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('powerbanks', 'fr', 'Powerbanks');
            PERFORM insert_category_translations('powerbanks', 'ar', 'بنوك طاقة');
            PERFORM insert_category_translations('powerbanks', 'en', 'Powerbanks');
            PERFORM insert_category_translations('powerbanks', 'de', 'Powerbanks');
            PERFORM insert_category_translations('powerbanks', 'es', 'Powerbanks');
            PERFORM insert_category_translations('powerbanks', 'it', 'Powerbank');

            -- Level 2: cables-adaptateurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cables-adaptateurs', 'cables-adaptateurs', 2, l1_id, 'Câbles et adaptateurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cables-adaptateurs', 'fr', 'Câbles et adaptateurs');
            PERFORM insert_category_translations('cables-adaptateurs', 'ar', 'كابلات ومحولات');
            PERFORM insert_category_translations('cables-adaptateurs', 'en', 'Cables & Adapters');
            PERFORM insert_category_translations('cables-adaptateurs', 'de', 'Kabel & Adapter');
            PERFORM insert_category_translations('cables-adaptateurs', 'es', 'Cables y adaptadores');
            PERFORM insert_category_translations('cables-adaptateurs', 'it', 'Cavi e Adattatori');

            -- Level 2: chargeurs-sans-fil
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chargeurs-sans-fil', 'chargeurs-sans-fil', 2, l1_id, 'Chargeurs sans fil')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chargeurs-sans-fil', 'fr', 'Chargeurs sans fil');
            PERFORM insert_category_translations('chargeurs-sans-fil', 'ar', 'شواحن لاسلكية');
            PERFORM insert_category_translations('chargeurs-sans-fil', 'en', 'Wireless Chargers');
            PERFORM insert_category_translations('chargeurs-sans-fil', 'de', 'Kabellose Ladegeräte');
            PERFORM insert_category_translations('chargeurs-sans-fil', 'es', 'Cargadores inalámbricos');
            PERFORM insert_category_translations('chargeurs-sans-fil', 'it', 'Caricabatterie Wireless');

            -- Level 2: chargeurs-voiture
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chargeurs-voiture', 'chargeurs-voiture', 2, l1_id, 'Chargeurs voiture')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chargeurs-voiture', 'fr', 'Chargeurs voiture');
            PERFORM insert_category_translations('chargeurs-voiture', 'ar', 'شواحن سيارة');
            PERFORM insert_category_translations('chargeurs-voiture', 'en', 'Car Chargers');
            PERFORM insert_category_translations('chargeurs-voiture', 'de', 'Kfz-Ladegeräte');
            PERFORM insert_category_translations('chargeurs-voiture', 'es', 'Cargadores de coche');
            PERFORM insert_category_translations('chargeurs-voiture', 'it', 'Caricabatterie da Auto');

            -- Level 2: hubs-usb
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('hubs-usb', 'hubs-usb', 2, l1_id, 'Hubs USB')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('hubs-usb', 'fr', 'Hubs USB');
            PERFORM insert_category_translations('hubs-usb', 'ar', 'موزعات USB');
            PERFORM insert_category_translations('hubs-usb', 'en', 'USB Hubs');
            PERFORM insert_category_translations('hubs-usb', 'de', 'USB-Hubs');
            PERFORM insert_category_translations('hubs-usb', 'es', 'Hubs USB');
            PERFORM insert_category_translations('hubs-usb', 'it', 'Hub USB');

            -- Level 2: protections-ecran
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('protections-ecran', 'protections-ecran', 2, l1_id, 'Protections d’écran')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('protections-ecran', 'fr', 'Protections d’écran');
            PERFORM insert_category_translations('protections-ecran', 'ar', 'حماية الشاشة');
            PERFORM insert_category_translations('protections-ecran', 'en', 'Screen Protectors');
            PERFORM insert_category_translations('protections-ecran', 'de', 'Displayschutz');
            PERFORM insert_category_translations('protections-ecran', 'es', 'Protections d’écran');
            PERFORM insert_category_translations('protections-ecran', 'it', 'Protezioni Schermo');

            -- Level 2: claviers-tablettes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('claviers-tablettes', 'claviers-tablettes', 2, l1_id, 'Claviers pour tablettes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('claviers-tablettes', 'fr', 'Claviers pour tablettes');
            PERFORM insert_category_translations('claviers-tablettes', 'ar', 'لوحات مفاتيح للأجهزة اللوحية');
            PERFORM insert_category_translations('claviers-tablettes', 'en', 'Tablet Keyboards');
            PERFORM insert_category_translations('claviers-tablettes', 'de', 'Tablet-Tastaturen');
            PERFORM insert_category_translations('claviers-tablettes', 'es', 'Teclados para tablets');
            PERFORM insert_category_translations('claviers-tablettes', 'it', 'Tastiere per Tablet');

            -- Level 2: stylets-tactiles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('stylets-tactiles', 'stylets-tactiles', 2, l1_id, 'Stylets tactiles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('stylets-tactiles', 'fr', 'Stylets tactiles');
            PERFORM insert_category_translations('stylets-tactiles', 'ar', 'أقلام لمس');
            PERFORM insert_category_translations('stylets-tactiles', 'en', 'Styluses');
            PERFORM insert_category_translations('stylets-tactiles', 'de', 'Eingabestifte');
            PERFORM insert_category_translations('stylets-tactiles', 'es', 'Lápices táctiles');
            PERFORM insert_category_translations('stylets-tactiles', 'it', 'Penne Touch');

            -- Level 2: stations-accueil-mobiles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('stations-accueil-mobiles', 'stations-accueil-mobiles', 2, l1_id, 'Stations d’accueil')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('stations-accueil-mobiles', 'fr', 'Stations d’accueil');
            PERFORM insert_category_translations('stations-accueil-mobiles', 'ar', 'محطات إرساء');
            PERFORM insert_category_translations('stations-accueil-mobiles', 'en', 'Docking Stations');
            PERFORM insert_category_translations('stations-accueil-mobiles', 'de', 'Docking-Stationen');
            PERFORM insert_category_translations('stations-accueil-mobiles', 'es', 'Estaciones de acoplamiento');
            PERFORM insert_category_translations('stations-accueil-mobiles', 'it', 'Docking Station');

        -- Level 1: informatique-professionnelle
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('informatique-professionnelle', 'informatique-professionnelle', 1, root_id, 'Informatique Professionnelle')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('informatique-professionnelle', 'fr', 'Informatique Professionnelle');
        PERFORM insert_category_translations('informatique-professionnelle', 'ar', 'حوسبة احترافية');
        PERFORM insert_category_translations('informatique-professionnelle', 'en', 'Professional Computing');
        PERFORM insert_category_translations('informatique-professionnelle', 'de', 'Professionelle IT');
        PERFORM insert_category_translations('informatique-professionnelle', 'es', 'Informática Profesional');
        PERFORM insert_category_translations('informatique-professionnelle', 'it', 'Informatica Professionale');

            -- Level 2: serveurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('serveurs', 'serveurs', 2, l1_id, 'Serveurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('serveurs', 'fr', 'Serveurs');
            PERFORM insert_category_translations('serveurs', 'ar', 'خوادم');
            PERFORM insert_category_translations('serveurs', 'en', 'Servers');
            PERFORM insert_category_translations('serveurs', 'de', 'Server');
            PERFORM insert_category_translations('serveurs', 'es', 'Servidores');
            PERFORM insert_category_translations('serveurs', 'it', 'Server');

            -- Level 2: baies-serveurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('baies-serveurs', 'baies-serveurs', 2, l1_id, 'Baies de serveurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('baies-serveurs', 'fr', 'Baies de serveurs');
            PERFORM insert_category_translations('baies-serveurs', 'ar', 'رفوف خوادم');
            PERFORM insert_category_translations('baies-serveurs', 'en', 'Server Racks');
            PERFORM insert_category_translations('baies-serveurs', 'de', 'Server-Racks');
            PERFORM insert_category_translations('baies-serveurs', 'es', 'Racks para servidores');
            PERFORM insert_category_translations('baies-serveurs', 'it', 'Rack Server');

            -- Level 2: nas
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('nas', 'nas', 2, l1_id, 'NAS')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('nas', 'fr', 'NAS');
            PERFORM insert_category_translations('nas', 'ar', 'تخزين شبكي (NAS)');
            PERFORM insert_category_translations('nas', 'en', 'NAS');
            PERFORM insert_category_translations('nas', 'de', 'NAS');
            PERFORM insert_category_translations('nas', 'es', 'NAS');
            PERFORM insert_category_translations('nas', 'it', 'NAS');

            -- Level 2: onduleurs-ups
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('onduleurs-ups', 'onduleurs-ups', 2, l1_id, 'Onduleurs UPS')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('onduleurs-ups', 'fr', 'Onduleurs UPS');
            PERFORM insert_category_translations('onduleurs-ups', 'ar', 'مزودات طاقة غير منقطعة (UPS)');
            PERFORM insert_category_translations('onduleurs-ups', 'en', 'UPS');
            PERFORM insert_category_translations('onduleurs-ups', 'de', 'USV-Anlagen');
            PERFORM insert_category_translations('onduleurs-ups', 'es', 'SAIs (UPS)');
            PERFORM insert_category_translations('onduleurs-ups', 'it', 'UPS (Gruppi di Continuità)');

            -- Level 2: switches-professionnels
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('switches-professionnels', 'switches-professionnels', 2, l1_id, 'Switches professionnels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('switches-professionnels', 'fr', 'Switches professionnels');
            PERFORM insert_category_translations('switches-professionnels', 'ar', 'محولات شبكة احترافية');
            PERFORM insert_category_translations('switches-professionnels', 'en', 'Professional Switches');
            PERFORM insert_category_translations('switches-professionnels', 'de', 'Professionelle Switches');
            PERFORM insert_category_translations('switches-professionnels', 'es', 'Switches profesionales');
            PERFORM insert_category_translations('switches-professionnels', 'it', 'Switch Professionali');

            -- Level 2: pare-feux-reseau
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pare-feux-reseau', 'pare-feux-reseau', 2, l1_id, 'Pare‑feux réseau')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pare-feux-reseau', 'fr', 'Pare‑feux réseau');
            PERFORM insert_category_translations('pare-feux-reseau', 'ar', 'جدران حماية الشبكة');
            PERFORM insert_category_translations('pare-feux-reseau', 'en', 'Network Firewalls');
            PERFORM insert_category_translations('pare-feux-reseau', 'de', 'Netzwerk-Firewalls');
            PERFORM insert_category_translations('pare-feux-reseau', 'es', 'Cortafuegos de red');
            PERFORM insert_category_translations('pare-feux-reseau', 'it', 'Firewall');

            -- Level 2: equipements-cloud
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('equipements-cloud', 'equipements-cloud', 2, l1_id, 'Équipements cloud')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('equipements-cloud', 'fr', 'Équipements cloud');
            PERFORM insert_category_translations('equipements-cloud', 'ar', 'معدات سحابية');
            PERFORM insert_category_translations('equipements-cloud', 'en', 'Cloud Equipment');
            PERFORM insert_category_translations('equipements-cloud', 'de', 'Cloud-Ausrüstung');
            PERFORM insert_category_translations('equipements-cloud', 'es', 'Equipos cloud');
            PERFORM insert_category_translations('equipements-cloud', 'it', 'Apparecchiature Cloud');

            -- Level 2: appliances-sauvegarde
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('appliances-sauvegarde', 'appliances-sauvegarde', 2, l1_id, 'Appliances de sauvegarde')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('appliances-sauvegarde', 'fr', 'Appliances de sauvegarde');
            PERFORM insert_category_translations('appliances-sauvegarde', 'ar', 'أجهزة نسخ احتياطي');
            PERFORM insert_category_translations('appliances-sauvegarde', 'en', 'Backup Appliances');
            PERFORM insert_category_translations('appliances-sauvegarde', 'de', 'Backup-Appliances');
            PERFORM insert_category_translations('appliances-sauvegarde', 'es', 'Dispositivos de copia de seguridad');
            PERFORM insert_category_translations('appliances-sauvegarde', 'it', 'Appliance di Backup');

            -- Level 2: dispositifs-biometriques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('dispositifs-biometriques', 'dispositifs-biometriques', 2, l1_id, 'Dispositifs biométriques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('dispositifs-biometriques', 'fr', 'Dispositifs biométriques');
            PERFORM insert_category_translations('dispositifs-biometriques', 'ar', 'أجهزة بيومترية');
            PERFORM insert_category_translations('dispositifs-biometriques', 'en', 'Biometric Devices');
            PERFORM insert_category_translations('dispositifs-biometriques', 'de', 'Biometrische Geräte');
            PERFORM insert_category_translations('dispositifs-biometriques', 'es', 'Dispositivos biométricos');
            PERFORM insert_category_translations('dispositifs-biometriques', 'it', 'Dispositivi Biometrici');

            -- Level 2: systemes-conference-haut-de-gamme
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('systemes-conference-haut-de-gamme', 'systemes-conference-haut-de-gamme', 2, l1_id, 'Systèmes de conférence haut de gamme')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('systemes-conference-haut-de-gamme', 'fr', 'Systèmes de conférence haut de gamme');
            PERFORM insert_category_translations('systemes-conference-haut-de-gamme', 'ar', 'أنظمة مؤتمرات راقية');
            PERFORM insert_category_translations('systemes-conference-haut-de-gamme', 'en', 'High-end Conference Systems');
            PERFORM insert_category_translations('systemes-conference-haut-de-gamme', 'de', 'High-End-Konferenzsysteme');
            PERFORM insert_category_translations('systemes-conference-haut-de-gamme', 'es', 'Sistemas de conferencia de alta gama');
            PERFORM insert_category_translations('systemes-conference-haut-de-gamme', 'it', 'Sistemi di Conferenza di Fascia Alta');

        -- Level 1: composants-electroniques-outils
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('composants-electroniques-outils', 'composants-electroniques-outils', 1, root_id, 'Composants Électroniques & Outils de Réparation')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('composants-electroniques-outils', 'fr', 'Composants Électroniques & Outils de Réparation');
        PERFORM insert_category_translations('composants-electroniques-outils', 'ar', 'مكونات إلكترونية وأدوات إصلاح');
        PERFORM insert_category_translations('composants-electroniques-outils', 'en', 'Electronic Components & Repair Tools');
        PERFORM insert_category_translations('composants-electroniques-outils', 'de', 'Elektronische Komponenten & Reparaturwerkzeuge');
        PERFORM insert_category_translations('composants-electroniques-outils', 'es', 'Componentes Electrónicos & Herramientas');
        PERFORM insert_category_translations('composants-electroniques-outils', 'it', 'Componenti Elettronici & Strumenti');

            -- Level 2: capteurs-electroniques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('capteurs-electroniques', 'capteurs-electroniques', 2, l1_id, 'Capteurs électroniques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('capteurs-electroniques', 'fr', 'Capteurs électroniques');
            PERFORM insert_category_translations('capteurs-electroniques', 'ar', 'مستشعرات إلكترونية');
            PERFORM insert_category_translations('capteurs-electroniques', 'en', 'Electronic Sensors');
            PERFORM insert_category_translations('capteurs-electroniques', 'de', 'Elektronische Sensoren');
            PERFORM insert_category_translations('capteurs-electroniques', 'es', 'Sensores electrónicos');
            PERFORM insert_category_translations('capteurs-electroniques', 'it', 'Sensori Elettronici');

            -- Level 2: resistances
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('resistances', 'resistances', 2, l1_id, 'Résistances')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('resistances', 'fr', 'Résistances');
            PERFORM insert_category_translations('resistances', 'ar', 'مقاومات');
            PERFORM insert_category_translations('resistances', 'en', 'Resistors');
            PERFORM insert_category_translations('resistances', 'de', 'Widerstände');
            PERFORM insert_category_translations('resistances', 'es', 'Resistencias');
            PERFORM insert_category_translations('resistances', 'it', 'Resistenze');

            -- Level 2: condensateurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('condensateurs', 'condensateurs', 2, l1_id, 'Condensateurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('condensateurs', 'fr', 'Condensateurs');
            PERFORM insert_category_translations('condensateurs', 'ar', 'مكثفات');
            PERFORM insert_category_translations('condensateurs', 'en', 'Capacitors');
            PERFORM insert_category_translations('condensateurs', 'de', 'Kondensatoren');
            PERFORM insert_category_translations('condensateurs', 'es', 'Condensadores');
            PERFORM insert_category_translations('condensateurs', 'it', 'Condensatori');

            -- Level 2: diodes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('diodes', 'diodes', 2, l1_id, 'Diodes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('diodes', 'fr', 'Diodes');
            PERFORM insert_category_translations('diodes', 'ar', 'ثنائيات (Diodes)');
            PERFORM insert_category_translations('diodes', 'en', 'Diodes');
            PERFORM insert_category_translations('diodes', 'de', 'Dioden');
            PERFORM insert_category_translations('diodes', 'es', 'Diodes');
            PERFORM insert_category_translations('diodes', 'it', 'Diodi');

            -- Level 2: transistors
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('transistors', 'transistors', 2, l1_id, 'Transistors')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('transistors', 'fr', 'Transistors');
            PERFORM insert_category_translations('transistors', 'ar', 'ترانزستورات');
            PERFORM insert_category_translations('transistors', 'en', 'Transistors');
            PERFORM insert_category_translations('transistors', 'de', 'Transistoren');
            PERFORM insert_category_translations('transistors', 'es', 'Transistores');
            PERFORM insert_category_translations('transistors', 'it', 'Transistor');

            -- Level 2: microcontroleurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('microcontroleurs', 'microcontroleurs', 2, l1_id, 'Microcontrôleurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('microcontroleurs', 'fr', 'Microcontrôleurs');
            PERFORM insert_category_translations('microcontroleurs', 'ar', 'متحكمات دقيقة');
            PERFORM insert_category_translations('microcontroleurs', 'en', 'Microcontrollers');
            PERFORM insert_category_translations('microcontroleurs', 'de', 'Mikrocontroller');
            PERFORM insert_category_translations('microcontroleurs', 'es', 'Microcontroladores');
            PERFORM insert_category_translations('microcontroleurs', 'it', 'Microcontrollori');

            -- Level 2: cartes-arduino
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cartes-arduino', 'cartes-arduino', 2, l1_id, 'Cartes Arduino')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cartes-arduino', 'fr', 'Cartes Arduino');
            PERFORM insert_category_translations('cartes-arduino', 'ar', 'لوحات أردوينو');
            PERFORM insert_category_translations('cartes-arduino', 'en', 'Arduino Boards');
            PERFORM insert_category_translations('cartes-arduino', 'de', 'Arduino-Boards');
            PERFORM insert_category_translations('cartes-arduino', 'es', 'Placas Arduino');
            PERFORM insert_category_translations('cartes-arduino', 'it', 'Schede Arduino');

            -- Level 2: raspberry-pi
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('raspberry-pi', 'raspberry-pi', 2, l1_id, 'Raspberry Pi')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('raspberry-pi', 'fr', 'Raspberry Pi');
            PERFORM insert_category_translations('raspberry-pi', 'ar', 'راسبيري باي');
            PERFORM insert_category_translations('raspberry-pi', 'en', 'Raspberry Pi');
            PERFORM insert_category_translations('raspberry-pi', 'de', 'Raspberry Pi');
            PERFORM insert_category_translations('raspberry-pi', 'es', 'Raspberry Pi');
            PERFORM insert_category_translations('raspberry-pi', 'it', 'Raspberry Pi');

            -- Level 2: breadboards
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('breadboards', 'breadboards', 2, l1_id, 'Breadboards')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('breadboards', 'fr', 'Breadboards');
            PERFORM insert_category_translations('breadboards', 'ar', 'لوحات تجارب');
            PERFORM insert_category_translations('breadboards', 'en', 'Breadboards');
            PERFORM insert_category_translations('breadboards', 'de', 'Breadboards');
            PERFORM insert_category_translations('breadboards', 'es', 'Placas de pruebas');
            PERFORM insert_category_translations('breadboards', 'it', 'Breadboard');

            -- Level 2: stations-soudage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('stations-soudage', 'stations-soudage', 2, l1_id, 'Stations de soudage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('stations-soudage', 'fr', 'Stations de soudage');
            PERFORM insert_category_translations('stations-soudage', 'ar', 'محطات لحام');
            PERFORM insert_category_translations('stations-soudage', 'en', 'Soldering Stations');
            PERFORM insert_category_translations('stations-soudage', 'de', 'Lötstationen');
            PERFORM insert_category_translations('stations-soudage', 'es', 'Estaciones de soldadura');
            PERFORM insert_category_translations('stations-soudage', 'it', 'Stazioni di Saldatura');

            -- Level 2: multimetres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('multimetres', 'multimetres', 2, l1_id, 'Multimètres')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('multimetres', 'fr', 'Multimètres');
            PERFORM insert_category_translations('multimetres', 'ar', 'مقاييس متعددة');
            PERFORM insert_category_translations('multimetres', 'en', 'Multimeters');
            PERFORM insert_category_translations('multimetres', 'de', 'Multimeter');
            PERFORM insert_category_translations('multimetres', 'es', 'Multímetros');
            PERFORM insert_category_translations('multimetres', 'it', 'Multimetri');

            -- Level 2: outils-reparation
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('outils-reparation', 'outils-reparation', 2, l1_id, 'Outils de réparation')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('outils-reparation', 'fr', 'Outils de réparation');
            PERFORM insert_category_translations('outils-reparation', 'ar', 'أدوات إصلاح');
            PERFORM insert_category_translations('outils-reparation', 'en', 'Repair Tools');
            PERFORM insert_category_translations('outils-reparation', 'de', 'Reparaturwerkzeuge');
            PERFORM insert_category_translations('outils-reparation', 'es', 'Herramientas de reparación');
            PERFORM insert_category_translations('outils-reparation', 'it', 'Strumenti di Riparazione');

            -- Level 2: cables-connecteurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cables-connecteurs', 'cables-connecteurs', 2, l1_id, 'Câbles & connecteurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cables-connecteurs', 'fr', 'Câbles & connecteurs');
            PERFORM insert_category_translations('cables-connecteurs', 'ar', 'كابلات وموصلات');
            PERFORM insert_category_translations('cables-connecteurs', 'en', 'Cables & Connectors');
            PERFORM insert_category_translations('cables-connecteurs', 'de', 'Kabel & Steckverbinder');
            PERFORM insert_category_translations('cables-connecteurs', 'es', 'Cables y conectores');
            PERFORM insert_category_translations('cables-connecteurs', 'it', 'Cavi e Connettori');

            -- Level 2: testeurs-electroniques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('testeurs-electroniques', 'testeurs-electroniques', 2, l1_id, 'Testeurs électroniques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('testeurs-electroniques', 'fr', 'Testeurs électroniques');
            PERFORM insert_category_translations('testeurs-electroniques', 'ar', 'أجهزة اختبار إلكترونية');
            PERFORM insert_category_translations('testeurs-electroniques', 'en', 'Electronic Testers');
            PERFORM insert_category_translations('testeurs-electroniques', 'de', 'Elektronik-Tester');
            PERFORM insert_category_translations('testeurs-electroniques', 'es', 'Comprobadores electrónicos');
            PERFORM insert_category_translations('testeurs-electroniques', 'it', 'Tester Elettronici');

            -- Level 2: cameras-thermiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cameras-thermiques', 'cameras-thermiques', 2, l1_id, 'Caméras thermiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cameras-thermiques', 'fr', 'Caméras thermiques');
            PERFORM insert_category_translations('cameras-thermiques', 'ar', 'كاميرات حرارية');
            PERFORM insert_category_translations('cameras-thermiques', 'en', 'Thermal Cameras');
            PERFORM insert_category_translations('cameras-thermiques', 'de', 'Wärmebildkameras');
            PERFORM insert_category_translations('cameras-thermiques', 'es', 'Cámaras térmicas');
            PERFORM insert_category_translations('cameras-thermiques', 'it', 'Termocamere');

        -- Level 1: marques-populaires
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('marques-populaires', 'marques-populaires', 1, root_id, 'Marques Populaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('marques-populaires', 'fr', 'Marques Populaires');
        PERFORM insert_category_translations('marques-populaires', 'ar', 'ماركات مشهورة');
        PERFORM insert_category_translations('marques-populaires', 'en', 'Popular Brands');
        PERFORM insert_category_translations('marques-populaires', 'de', 'Beliebte Marken');
        PERFORM insert_category_translations('marques-populaires', 'es', 'Marcas Populares');
        PERFORM insert_category_translations('marques-populaires', 'it', 'Marche Popolari');

            -- Level 2: apple
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('apple', 'apple', 2, l1_id, 'Apple')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('apple', 'fr', 'Apple');
            PERFORM insert_category_translations('apple', 'ar', 'Apple');
            PERFORM insert_category_translations('apple', 'en', 'Apple');
            PERFORM insert_category_translations('apple', 'de', 'Apple');
            PERFORM insert_category_translations('apple', 'es', 'Apple');
            PERFORM insert_category_translations('apple', 'it', 'Apple');

            -- Level 2: dell
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('dell', 'dell', 2, l1_id, 'Dell')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('dell', 'fr', 'Dell');
            PERFORM insert_category_translations('dell', 'ar', 'Dell');
            PERFORM insert_category_translations('dell', 'en', 'Dell');
            PERFORM insert_category_translations('dell', 'de', 'Dell');
            PERFORM insert_category_translations('dell', 'es', 'Dell');
            PERFORM insert_category_translations('dell', 'it', 'Dell');

            -- Level 2: hp
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('hp', 'hp', 2, l1_id, 'HP')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('hp', 'fr', 'HP');
            PERFORM insert_category_translations('hp', 'ar', 'HP');
            PERFORM insert_category_translations('hp', 'en', 'HP');
            PERFORM insert_category_translations('hp', 'de', 'HP');
            PERFORM insert_category_translations('hp', 'es', 'HP');
            PERFORM insert_category_translations('hp', 'it', 'HP');

            -- Level 2: lenovo
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lenovo', 'lenovo', 2, l1_id, 'Lenovo')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lenovo', 'fr', 'Lenovo');
            PERFORM insert_category_translations('lenovo', 'ar', 'Lenovo');
            PERFORM insert_category_translations('lenovo', 'en', 'Lenovo');
            PERFORM insert_category_translations('lenovo', 'de', 'Lenovo');
            PERFORM insert_category_translations('lenovo', 'es', 'Lenovo');
            PERFORM insert_category_translations('lenovo', 'it', 'Lenovo');

            -- Level 2: asus
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('asus', 'asus', 2, l1_id, 'Asus')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('asus', 'fr', 'Asus');
            PERFORM insert_category_translations('asus', 'ar', 'Asus');
            PERFORM insert_category_translations('asus', 'en', 'Asus');
            PERFORM insert_category_translations('asus', 'de', 'Asus');
            PERFORM insert_category_translations('asus', 'es', 'Asus');
            PERFORM insert_category_translations('asus', 'it', 'Asus');

            -- Level 2: acer
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('acer', 'acer', 2, l1_id, 'Acer')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('acer', 'fr', 'Acer');
            PERFORM insert_category_translations('acer', 'ar', 'Acer');
            PERFORM insert_category_translations('acer', 'en', 'Acer');
            PERFORM insert_category_translations('acer', 'de', 'Acer');
            PERFORM insert_category_translations('acer', 'es', 'Acer');
            PERFORM insert_category_translations('acer', 'it', 'Acer');

            -- Level 2: msi
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('msi', 'msi', 2, l1_id, 'MSI')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('msi', 'fr', 'MSI');
            PERFORM insert_category_translations('msi', 'ar', 'MSI');
            PERFORM insert_category_translations('msi', 'en', 'MSI');
            PERFORM insert_category_translations('msi', 'de', 'MSI');
            PERFORM insert_category_translations('msi', 'es', 'MSI');
            PERFORM insert_category_translations('msi', 'it', 'MSI');

            -- Level 2: razer
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('razer', 'razer', 2, l1_id, 'Razer')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('razer', 'fr', 'Razer');
            PERFORM insert_category_translations('razer', 'ar', 'Razer');
            PERFORM insert_category_translations('razer', 'en', 'Razer');
            PERFORM insert_category_translations('razer', 'de', 'Razer');
            PERFORM insert_category_translations('razer', 'es', 'Razer');
            PERFORM insert_category_translations('razer', 'it', 'Razer');

            -- Level 2: samsung
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('samsung', 'samsung', 2, l1_id, 'Samsung')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('samsung', 'fr', 'Samsung');
            PERFORM insert_category_translations('samsung', 'ar', 'Samsung');
            PERFORM insert_category_translations('samsung', 'en', 'Samsung');
            PERFORM insert_category_translations('samsung', 'de', 'Samsung');
            PERFORM insert_category_translations('samsung', 'es', 'Samsung');
            PERFORM insert_category_translations('samsung', 'it', 'Samsung');

            -- Level 2: huawei
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('huawei', 'huawei', 2, l1_id, 'Huawei')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('huawei', 'fr', 'Huawei');
            PERFORM insert_category_translations('huawei', 'ar', 'Huawei');
            PERFORM insert_category_translations('huawei', 'en', 'Huawei');
            PERFORM insert_category_translations('huawei', 'de', 'Huawei');
            PERFORM insert_category_translations('huawei', 'es', 'Huawei');
            PERFORM insert_category_translations('huawei', 'it', 'Huawei');

            -- Level 2: xiaomi
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('xiaomi', 'xiaomi', 2, l1_id, 'Xiaomi')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('xiaomi', 'fr', 'Xiaomi');
            PERFORM insert_category_translations('xiaomi', 'ar', 'Xiaomi');
            PERFORM insert_category_translations('xiaomi', 'en', 'Xiaomi');
            PERFORM insert_category_translations('xiaomi', 'de', 'Xiaomi');
            PERFORM insert_category_translations('xiaomi', 'es', 'Xiaomi');
            PERFORM insert_category_translations('xiaomi', 'it', 'Xiaomi');

            -- Level 2: lg
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lg', 'lg', 2, l1_id, 'LG')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lg', 'fr', 'LG');
            PERFORM insert_category_translations('lg', 'ar', 'LG');
            PERFORM insert_category_translations('lg', 'en', 'LG');
            PERFORM insert_category_translations('lg', 'de', 'LG');
            PERFORM insert_category_translations('lg', 'es', 'LG');
            PERFORM insert_category_translations('lg', 'it', 'LG');

            -- Level 2: toshiba
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('toshiba', 'toshiba', 2, l1_id, 'Toshiba')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('toshiba', 'fr', 'Toshiba');
            PERFORM insert_category_translations('toshiba', 'ar', 'Toshiba');
            PERFORM insert_category_translations('toshiba', 'en', 'Toshiba');
            PERFORM insert_category_translations('toshiba', 'de', 'Toshiba');
            PERFORM insert_category_translations('toshiba', 'es', 'Toshiba');
            PERFORM insert_category_translations('toshiba', 'it', 'Toshiba');

            -- Level 2: western-digital
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('western-digital', 'western-digital', 2, l1_id, 'Western Digital')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('western-digital', 'fr', 'Western Digital');
            PERFORM insert_category_translations('western-digital', 'ar', 'Western Digital');
            PERFORM insert_category_translations('western-digital', 'en', 'Western Digital');
            PERFORM insert_category_translations('western-digital', 'de', 'Western Digital');
            PERFORM insert_category_translations('western-digital', 'es', 'Western Digital');
            PERFORM insert_category_translations('western-digital', 'it', 'Western Digital');

            -- Level 2: seagate
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('seagate', 'seagate', 2, l1_id, 'Seagate')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('seagate', 'fr', 'Seagate');
            PERFORM insert_category_translations('seagate', 'ar', 'Seagate');
            PERFORM insert_category_translations('seagate', 'en', 'Seagate');
            PERFORM insert_category_translations('seagate', 'de', 'Seagate');
            PERFORM insert_category_translations('seagate', 'es', 'Seagate');
            PERFORM insert_category_translations('seagate', 'it', 'Seagate');

            -- Level 2: kingston
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('kingston', 'kingston', 2, l1_id, 'Kingston')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('kingston', 'fr', 'Kingston');
            PERFORM insert_category_translations('kingston', 'ar', 'Kingston');
            PERFORM insert_category_translations('kingston', 'en', 'Kingston');
            PERFORM insert_category_translations('kingston', 'de', 'Kingston');
            PERFORM insert_category_translations('kingston', 'es', 'Kingston');
            PERFORM insert_category_translations('kingston', 'it', 'Kingston');

            -- Level 2: corsair
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('corsair', 'corsair', 2, l1_id, 'Corsair')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('corsair', 'fr', 'Corsair');
            PERFORM insert_category_translations('corsair', 'ar', 'Corsair');
            PERFORM insert_category_translations('corsair', 'en', 'Corsair');
            PERFORM insert_category_translations('corsair', 'de', 'Corsair');
            PERFORM insert_category_translations('corsair', 'es', 'Corsair');
            PERFORM insert_category_translations('corsair', 'it', 'Corsair');

            -- Level 2: gigabyte
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gigabyte', 'gigabyte', 2, l1_id, 'Gigabyte')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gigabyte', 'fr', 'Gigabyte');
            PERFORM insert_category_translations('gigabyte', 'ar', 'Gigabyte');
            PERFORM insert_category_translations('gigabyte', 'en', 'Gigabyte');
            PERFORM insert_category_translations('gigabyte', 'de', 'Gigabyte');
            PERFORM insert_category_translations('gigabyte', 'es', 'Gigabyte');
            PERFORM insert_category_translations('gigabyte', 'it', 'Gigabyte');

            -- Level 2: asus-rog
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('asus-rog', 'asus-rog', 2, l1_id, 'Asus ROG')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('asus-rog', 'fr', 'Asus ROG');
            PERFORM insert_category_translations('asus-rog', 'ar', 'Asus ROG');
            PERFORM insert_category_translations('asus-rog', 'en', 'Asus ROG');
            PERFORM insert_category_translations('asus-rog', 'de', 'Asus ROG');
            PERFORM insert_category_translations('asus-rog', 'es', 'Asus ROG');
            PERFORM insert_category_translations('asus-rog', 'it', 'Asus ROG');

            -- Level 2: nvidia
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('nvidia', 'nvidia', 2, l1_id, 'NVIDIA')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('nvidia', 'fr', 'NVIDIA');
            PERFORM insert_category_translations('nvidia', 'ar', 'NVIDIA');
            PERFORM insert_category_translations('nvidia', 'en', 'NVIDIA');
            PERFORM insert_category_translations('nvidia', 'de', 'NVIDIA');
            PERFORM insert_category_translations('nvidia', 'es', 'NVIDIA');
            PERFORM insert_category_translations('nvidia', 'it', 'NVIDIA');

            -- Level 2: amd
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('amd', 'amd', 2, l1_id, 'AMD')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('amd', 'fr', 'AMD');
            PERFORM insert_category_translations('amd', 'ar', 'AMD');
            PERFORM insert_category_translations('amd', 'en', 'AMD');
            PERFORM insert_category_translations('amd', 'de', 'AMD');
            PERFORM insert_category_translations('amd', 'es', 'AMD');
            PERFORM insert_category_translations('amd', 'it', 'AMD');

            -- Level 2: jbl
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jbl', 'jbl', 2, l1_id, 'JBL')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('jbl', 'fr', 'JBL');
            PERFORM insert_category_translations('jbl', 'ar', 'JBL');
            PERFORM insert_category_translations('jbl', 'en', 'JBL');
            PERFORM insert_category_translations('jbl', 'de', 'JBL');
            PERFORM insert_category_translations('jbl', 'es', 'JBL');
            PERFORM insert_category_translations('jbl', 'it', 'JBL');

            -- Level 2: logitech
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('logitech', 'logitech', 2, l1_id, 'Logitech')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('logitech', 'fr', 'Logitech');
            PERFORM insert_category_translations('logitech', 'ar', 'Logitech');
            PERFORM insert_category_translations('logitech', 'en', 'Logitech');
            PERFORM insert_category_translations('logitech', 'de', 'Logitech');
            PERFORM insert_category_translations('logitech', 'es', 'Logitech');
            PERFORM insert_category_translations('logitech', 'it', 'Logitech');

            -- Level 2: steelseries
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('steelseries', 'steelseries', 2, l1_id, 'SteelSeries')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('steelseries', 'fr', 'SteelSeries');
            PERFORM insert_category_translations('steelseries', 'ar', 'SteelSeries');
            PERFORM insert_category_translations('steelseries', 'en', 'SteelSeries');
            PERFORM insert_category_translations('steelseries', 'de', 'SteelSeries');
            PERFORM insert_category_translations('steelseries', 'es', 'SteelSeries');
            PERFORM insert_category_translations('steelseries', 'it', 'SteelSeries');

            -- Level 2: tp-link
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tp-link', 'tp-link', 2, l1_id, 'TP‑Link')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tp-link', 'fr', 'TP‑Link');
            PERFORM insert_category_translations('tp-link', 'ar', 'TP‑Link');
            PERFORM insert_category_translations('tp-link', 'en', 'TP‑Link');
            PERFORM insert_category_translations('tp-link', 'de', 'TP‑Link');
            PERFORM insert_category_translations('tp-link', 'es', 'TP‑Link');
            PERFORM insert_category_translations('tp-link', 'it', 'TP‑Link');

            -- Level 2: netgear
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('netgear', 'netgear', 2, l1_id, 'Netgear')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('netgear', 'fr', 'Netgear');
            PERFORM insert_category_translations('netgear', 'ar', 'Netgear');
            PERFORM insert_category_translations('netgear', 'en', 'Netgear');
            PERFORM insert_category_translations('netgear', 'de', 'Netgear');
            PERFORM insert_category_translations('netgear', 'es', 'Netgear');
            PERFORM insert_category_translations('netgear', 'it', 'Netgear');

            -- Level 2: ubiquiti
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ubiquiti', 'ubiquiti', 2, l1_id, 'Ubiquiti')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ubiquiti', 'fr', 'Ubiquiti');
            PERFORM insert_category_translations('ubiquiti', 'ar', 'Ubiquiti');
            PERFORM insert_category_translations('ubiquiti', 'en', 'Ubiquiti');
            PERFORM insert_category_translations('ubiquiti', 'de', 'Ubiquiti');
            PERFORM insert_category_translations('ubiquiti', 'es', 'Ubiquiti');
            PERFORM insert_category_translations('ubiquiti', 'it', 'Ubiquiti');
END $$;