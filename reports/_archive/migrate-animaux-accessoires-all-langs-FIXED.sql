-- Migration: Animaux & Accessoires (Fixed - 100% Complete)
-- Includes Level 0, Level 1, Level 2, and Level 3 categories with translations for 6 languages (fr, ar, en, es, de, it)
-- Verified against mega menu structures

DO $$
DECLARE
    root_id BIGINT;
    l1_id BIGINT;
    l2_id BIGINT;
BEGIN
    -- 1. Catégorie Racine: Animaux & Accessoires
    INSERT INTO public.categories (slug, name, icon, parent_id, level, sort_order, is_active, description)
    VALUES ('animaux-accessoires', 'Animaux & Accessoires', 'PawPrint', NULL, 0, 0, true, 'Tout pour vos animaux de compagnie et d''élevage : nourriture, accessoires, soins et services.')
    ON CONFLICT (slug) DO UPDATE SET 
        name = EXCLUDED.name,
        icon = EXCLUDED.icon, 
        level = EXCLUDED.level,
        is_active = EXCLUDED.is_active
    RETURNING id INTO root_id;

    IF root_id IS NULL THEN
        SELECT id INTO root_id FROM public.categories WHERE slug = 'animaux-accessoires';
    END IF;

    -- Traductions Racine
    INSERT INTO public.category_translations (category_id, language_code, name, description)
    VALUES
        (root_id, 'fr', 'Animaux & Accessoires', 'Tout pour vos animaux de compagnie et d''élevage : nourriture, accessoires, soins et services.'),
        (root_id, 'ar', 'الحيوانات والإكسسوارات', 'كل شيء لحيواناتك الأليفة وحيوانات المزرعة: الغذاء، الإكسسوارات، العناية والخدمات.'),
        (root_id, 'en', 'Animals & Accessories', 'Everything for your pets and livestock: food, accessories, care and services.'),
        (root_id, 'es', 'Animales y Accesorios', 'Todo para tus mascotas y ganado: alimentación, accesorios, cuidados y servicios.'),
        (root_id, 'de', 'Tiere & Zubehör', 'Alles für Ihre Haustiere und Nutztiere: Futter, Zubehör, Pflege und Dienstleistungen.'),
        (root_id, 'it', 'Animali e Accessori', 'Tutto per i tuoi animali domestici e da allevamento: cibo, accessori, cure e servizi.')
    ON CONFLICT (category_id, language_code) DO UPDATE SET 
        name = EXCLUDED.name, 
        description = EXCLUDED.description;

    -- ==========================================
    -- NIVEAU 1
    -- ==========================================
    
    -- 1.1 Animaux Domestiques
    INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
    VALUES ('animaux-domestiques', 'Animaux Domestiques', root_id, 1, 10, true)
    ON CONFLICT (slug) DO UPDATE SET parent_id = EXCLUDED.parent_id, level = EXCLUDED.level, name = EXCLUDED.name RETURNING id INTO l1_id;
    IF l1_id IS NULL THEN SELECT id INTO l1_id FROM public.categories WHERE slug = 'animaux-domestiques'; END IF;

    INSERT INTO public.category_translations (category_id, language_code, name) VALUES
        (l1_id, 'fr', 'Animaux Domestiques'),
        (l1_id, 'ar', 'الحيوانات الأليفة'),
        (l1_id, 'en', 'Pets'),
        (l1_id, 'es', 'Animales Domésticos'),
        (l1_id, 'de', 'Haustiere'),
        (l1_id, 'it', 'Animali Domestici')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

        -- LEVEL 2: Chiens
        INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
        VALUES ('chiens', 'Chiens', l1_id, 2, 10, true)
        ON CONFLICT (slug) DO UPDATE SET parent_id = EXCLUDED.parent_id, level = EXCLUDED.level, name = EXCLUDED.name RETURNING id INTO l2_id;
        IF l2_id IS NULL THEN SELECT id INTO l2_id FROM public.categories WHERE slug = 'chiens'; END IF;

        INSERT INTO public.category_translations (category_id, language_code, name) VALUES
            (l2_id, 'fr', 'Chiens'), (l2_id, 'ar', 'الكلاب'), (l2_id, 'en', 'Dogs'), (l2_id, 'es', 'Perros'), (l2_id, 'de', 'Hunde'), (l2_id, 'it', 'Cani')
        ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

            -- LEVEL 3
            INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active) VALUES
            ('chiots-races', 'chiots de race', l2_id, 3, 10, true),
            ('chiens-adultes', 'chiens adultes', l2_id, 3, 20, true),
            ('chiens-dresses', 'chiens dressés', l2_id, 3, 30, true)
            ON CONFLICT (slug) DO UPDATE SET parent_id = EXCLUDED.parent_id, level = EXCLUDED.level, name = EXCLUDED.name;

            -- Translations L3
            INSERT INTO public.category_translations (category_id, language_code, name)
            SELECT c.id, t.lang, t.name FROM public.categories c JOIN (VALUES
                ('chiots-races', 'fr', 'chiots de race'), ('chiots-races', 'ar', 'جراء سلالة'), ('chiots-races', 'en', 'pedigree puppies'), ('chiots-races', 'es', 'cachorros de raza'), ('chiots-races', 'de', 'Rassenwelpen'), ('chiots-races', 'it', 'cuccioli di razza'),
                ('chiens-adultes', 'fr', 'chiens adultes'), ('chiens-adultes', 'ar', 'كلاب بالغة'), ('chiens-adultes', 'en', 'adult dogs'), ('chiens-adultes', 'es', 'perros adultos'), ('chiens-adultes', 'de', 'Erwachsene Hunde'), ('chiens-adultes', 'it', 'cani adulti'),
                ('chiens-dresses', 'fr', 'chiens dressés'), ('chiens-dresses', 'ar', 'كلاب مدربة'), ('chiens-dresses', 'en', 'trained dogs'), ('chiens-dresses', 'es', 'perros entrenados'), ('chiens-dresses', 'de', 'Abgerichtete Hunde'), ('chiens-dresses', 'it', 'cani addestrati')
            ) AS t(slug, lang, name) ON c.slug = t.slug
            ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

        -- LEVEL 2: Chats
        INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
        VALUES ('chats', 'Chats', l1_id, 2, 20, true)
        ON CONFLICT (slug) DO UPDATE SET parent_id = EXCLUDED.parent_id, level = EXCLUDED.level, name = EXCLUDED.name RETURNING id INTO l2_id;
        IF l2_id IS NULL THEN SELECT id INTO l2_id FROM public.categories WHERE slug = 'chats'; END IF;

        INSERT INTO public.category_translations (category_id, language_code, name) VALUES
            (l2_id, 'fr', 'Chats'), (l2_id, 'ar', 'القطط'), (l2_id, 'en', 'Cats'), (l2_id, 'es', 'Gatos'), (l2_id, 'de', 'Katzen'), (l2_id, 'it', 'Gatti')
        ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

            -- LEVEL 3
            INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active) VALUES
            ('chatons-races', 'chatons de race', l2_id, 3, 10, true),
            ('chats-adultes', 'chats adultes', l2_id, 3, 20, true)
            ON CONFLICT (slug) DO UPDATE SET parent_id = EXCLUDED.parent_id, level = EXCLUDED.level, name = EXCLUDED.name;

            -- Translations L3
            INSERT INTO public.category_translations (category_id, language_code, name)
            SELECT c.id, t.lang, t.name FROM public.categories c JOIN (VALUES
                ('chatons-races', 'fr', 'chatons de race'), ('chatons-races', 'ar', 'قطط صغيرة سلالة'), ('chatons-races', 'en', 'pedigree kittens'), ('chatons-races', 'es', 'gatitos de raza'), ('chatons-races', 'de', 'Rassenkätzchen'), ('chatons-races', 'it', 'gattini di razza'),
                ('chats-adultes', 'fr', 'chats adultes'), ('chats-adultes', 'ar', 'قطط بالغة'), ('chats-adultes', 'en', 'adult cats'), ('chats-adultes', 'es', 'gatos adultos'), ('chats-adultes', 'de', 'Erwachsene Katzen'), ('chats-adultes', 'it', 'gatti adulti')
            ) AS t(slug, lang, name) ON c.slug = t.slug
            ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

        -- LEVEL 2: Oiseaux
        INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
        VALUES ('oiseaux', 'Oiseaux', l1_id, 2, 30, true)
        ON CONFLICT (slug) DO UPDATE SET parent_id = EXCLUDED.parent_id, level = EXCLUDED.level, name = EXCLUDED.name RETURNING id INTO l2_id;
        IF l2_id IS NULL THEN SELECT id INTO l2_id FROM public.categories WHERE slug = 'oiseaux'; END IF;

        INSERT INTO public.category_translations (category_id, language_code, name) VALUES
            (l2_id, 'fr', 'Oiseaux'), (l2_id, 'ar', 'طيور'), (l2_id, 'en', 'Birds'), (l2_id, 'es', 'Aves'), (l2_id, 'de', 'Vögel'), (l2_id, 'it', 'Uccelli')
        ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

            -- LEVEL 3
            INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active) VALUES
            ('oiseaux-rares', 'oiseaux rares', l2_id, 3, 10, true),
            ('canaris', 'canaris', l2_id, 3, 20, true)
            ON CONFLICT (slug) DO UPDATE SET parent_id = EXCLUDED.parent_id, level = EXCLUDED.level, name = EXCLUDED.name;

            -- Translations L3
            INSERT INTO public.category_translations (category_id, language_code, name)
            SELECT c.id, t.lang, t.name FROM public.categories c JOIN (VALUES
                ('oiseaux-rares', 'fr', 'oiseaux rares'), ('oiseaux-rares', 'ar', 'طيور نادرة'), ('oiseaux-rares', 'en', 'rare birds'), ('oiseaux-rares', 'es', 'aves raras'), ('oiseaux-rares', 'de', 'Seltene Vögel'), ('oiseaux-rares', 'it', 'uccelli rari'),
                ('canaris', 'fr', 'canaris'), ('canaris', 'ar', 'كناري'), ('canaris', 'en', 'canaries'), ('canaris', 'es', 'canarios'), ('canaris', 'de', 'Kanarienvögel'), ('canaris', 'it', 'canarini')
            ) AS t(slug, lang, name) ON c.slug = t.slug
            ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

        -- LEVEL 2: Poissons
        INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
        VALUES ('poissons', 'Poissons', l1_id, 2, 40, true)
        ON CONFLICT (slug) DO UPDATE SET parent_id = EXCLUDED.parent_id, level = EXCLUDED.level, name = EXCLUDED.name RETURNING id INTO l2_id;
        IF l2_id IS NULL THEN SELECT id INTO l2_id FROM public.categories WHERE slug = 'poissons'; END IF;

        INSERT INTO public.category_translations (category_id, language_code, name) VALUES
            (l2_id, 'fr', 'Poissons'), (l2_id, 'ar', 'أسماك'), (l2_id, 'en', 'Fish'), (l2_id, 'es', 'Peces'), (l2_id, 'de', 'Fische'), (l2_id, 'it', 'Pesci')
        ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

            -- LEVEL 3
            INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active) VALUES
            ('poissons-aquarium', 'poissons d''aquarium', l2_id, 3, 10, true)
            ON CONFLICT (slug) DO UPDATE SET parent_id = EXCLUDED.parent_id, level = EXCLUDED.level, name = EXCLUDED.name;

            -- Translations L3
            INSERT INTO public.category_translations (category_id, language_code, name)
            SELECT c.id, t.lang, t.name FROM public.categories c JOIN (VALUES
                ('poissons-aquarium', 'fr', 'poissons d''aquarium'), ('poissons-aquarium', 'ar', 'أسماك زينة'), ('poissons-aquarium', 'en', 'aquarium fish'), ('poissons-aquarium', 'es', 'peces de acuario'), ('poissons-aquarium', 'de', 'Aquariumfische'), ('poissons-aquarium', 'it', 'pesci d''acquario')
            ) AS t(slug, lang, name) ON c.slug = t.slug
            ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

        -- LEVEL 2: Rongeurs
        INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
        VALUES ('rongeurs', 'Rongeurs', l1_id, 2, 50, true)
        ON CONFLICT (slug) DO UPDATE SET parent_id = EXCLUDED.parent_id, level = EXCLUDED.level, name = EXCLUDED.name RETURNING id INTO l2_id;
        IF l2_id IS NULL THEN SELECT id INTO l2_id FROM public.categories WHERE slug = 'rongeurs'; END IF;

        INSERT INTO public.category_translations (category_id, language_code, name) VALUES
            (l2_id, 'fr', 'Rongeurs'), (l2_id, 'ar', 'قوارض'), (l2_id, 'en', 'Rodents'), (l2_id, 'es', 'Roedores'), (l2_id, 'de', 'Nagetiere'), (l2_id, 'it', 'Roditori')
        ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

            -- LEVEL 3
            INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active) VALUES
            ('lapins', 'lapins', l2_id, 3, 10, true),
            ('hamsters', 'hamsters', l2_id, 3, 20, true)
            ON CONFLICT (slug) DO UPDATE SET parent_id = EXCLUDED.parent_id, level = EXCLUDED.level, name = EXCLUDED.name;

            -- Translations L3
            INSERT INTO public.category_translations (category_id, language_code, name)
            SELECT c.id, t.lang, t.name FROM public.categories c JOIN (VALUES
                ('lapins', 'fr', 'lapins'), ('lapins', 'ar', 'أرانب'), ('lapins', 'en', 'rabbits'), ('lapins', 'es', 'conejos'), ('lapins', 'de', 'Kaninchen'), ('lapins', 'it', 'conigli'),
                ('hamsters', 'fr', 'hamsters'), ('hamsters', 'ar', 'هامستر'), ('hamsters', 'en', 'hamsters'), ('hamsters', 'es', 'hámsters'), ('hamsters', 'de', 'Hamster'), ('hamsters', 'it', 'criceti')
            ) AS t(slug, lang, name) ON c.slug = t.slug
            ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

        -- LEVEL 2: Reptiles
        INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
        VALUES ('reptiles', 'Reptiles', l1_id, 2, 60, true)
        ON CONFLICT (slug) DO UPDATE SET parent_id = EXCLUDED.parent_id, level = EXCLUDED.level, name = EXCLUDED.name RETURNING id INTO l2_id;
        IF l2_id IS NULL THEN SELECT id INTO l2_id FROM public.categories WHERE slug = 'reptiles'; END IF;

        INSERT INTO public.category_translations (category_id, language_code, name) VALUES
            (l2_id, 'fr', 'Reptiles'), (l2_id, 'ar', 'زواحف'), (l2_id, 'en', 'Reptiles'), (l2_id, 'es', 'Reptiles'), (l2_id, 'de', 'Reptilien'), (l2_id, 'it', 'Rettili')
        ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

            -- LEVEL 3
            INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active) VALUES
            ('tortues', 'tortues', l2_id, 3, 10, true)
            ON CONFLICT (slug) DO UPDATE SET parent_id = EXCLUDED.parent_id, level = EXCLUDED.level, name = EXCLUDED.name;

            -- Translations L3
            INSERT INTO public.category_translations (category_id, language_code, name)
            SELECT c.id, t.lang, t.name FROM public.categories c JOIN (VALUES
                ('tortues', 'fr', 'tortues'), ('tortues', 'ar', 'سلاحف'), ('tortues', 'en', 'turtles'), ('tortues', 'es', 'tortugas'), ('tortues', 'de', 'Schildkröten'), ('tortues', 'it', 'tartarughe')
            ) AS t(slug, lang, name) ON c.slug = t.slug
            ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

    -- 1.2 Animaux d'Élevage
    INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
    VALUES ('animaux-elevage', 'Animaux d''Élevage', root_id, 1, 20, true)
    ON CONFLICT (slug) DO UPDATE SET parent_id = EXCLUDED.parent_id, level = EXCLUDED.level, name = EXCLUDED.name RETURNING id INTO l1_id;
    IF l1_id IS NULL THEN SELECT id INTO l1_id FROM public.categories WHERE slug = 'animaux-elevage'; END IF;

    INSERT INTO public.category_translations (category_id, language_code, name) VALUES
        (l1_id, 'fr', 'Animaux d''Élevage'),
        (l1_id, 'ar', 'حيوانات المزرعة'),
        (l1_id, 'en', 'Farm Animals'),
        (l1_id, 'es', 'Animales de Cría'),
        (l1_id, 'de', 'Nutztiere'),
        (l1_id, 'it', 'Animali da Allevamento')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

        -- LEVEL 2
        INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active) VALUES
        ('ovins', 'ovins', l1_id, 2, 10, true),
        ('bovins', 'bovins', l1_id, 2, 20, true),
        ('caprins', 'caprins', l1_id, 2, 30, true),
        ('volailles', 'volailles', l1_id, 2, 40, true),
        ('equides', 'équidés', l1_id, 2, 50, true)
        ON CONFLICT (slug) DO UPDATE SET parent_id = EXCLUDED.parent_id, level = EXCLUDED.level, name = EXCLUDED.name;

        -- Translations L2
        INSERT INTO public.category_translations (category_id, language_code, name)
        SELECT c.id, t.lang, t.name FROM public.categories c JOIN (VALUES
            ('ovins', 'fr', 'ovins'), ('ovins', 'ar', 'أغنام'), ('ovins', 'en', 'sheep'), ('ovins', 'es', 'ovinos'), ('ovins', 'de', 'Schafe'), ('ovins', 'it', 'ovini'),
            ('bovins', 'fr', 'bovins'), ('bovins', 'ar', 'أبقار'), ('bovins', 'en', 'cattle'), ('bovins', 'es', 'bovinos'), ('bovins', 'de', 'Rinder'), ('bovins', 'it', 'bovini'),
            ('caprins', 'fr', 'caprins'), ('caprins', 'ar', 'ماعز'), ('caprins', 'en', 'goats'), ('caprins', 'es', 'caprinos'), ('caprins', 'de', 'Ziegen'), ('caprins', 'it', 'caprini'),
            ('volailles', 'fr', 'volailles'), ('volailles', 'ar', 'دواجن'), ('volailles', 'en', 'poultry'), ('volailles', 'es', 'aves de corral'), ('volailles', 'de', 'Geflügel'), ('volailles', 'it', 'pollame'),
            ('equides', 'fr', 'équidés'), ('equides', 'ar', 'خيول'), ('equides', 'en', 'equines'), ('equides', 'es', 'equinos'), ('equides', 'de', 'Pferde'), ('equides', 'it', 'equini')
        ) AS t(slug, lang, name) ON c.slug = t.slug
        ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

    -- 1.3 Nourriture & Soins Animaliers
    INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
    VALUES ('nourriture-soins', 'Nourriture & Soins Animaliers', root_id, 1, 30, true)
    ON CONFLICT (slug) DO UPDATE SET parent_id = EXCLUDED.parent_id, level = EXCLUDED.level, name = EXCLUDED.name RETURNING id INTO l1_id;
    IF l1_id IS NULL THEN SELECT id INTO l1_id FROM public.categories WHERE slug = 'nourriture-soins'; END IF;

    INSERT INTO public.category_translations (category_id, language_code, name) VALUES
        (l1_id, 'fr', 'Nourriture & Soins Animaliers'),
        (l1_id, 'ar', 'غذاء وعناية'),
        (l1_id, 'en', 'Food & Animal Care'),
        (l1_id, 'es', 'Alimentación & Cuidado Animal'),
        (l1_id, 'de', 'Tiernahrung & Pflege'),
        (l1_id, 'it', 'Cibo & Cura')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

        -- LEVEL 2: Alimentation Chiens & Chats
        INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
        VALUES ('alimentation-chiens-chats', 'Alimentation Chiens & Chats', l1_id, 2, 10, true)
        ON CONFLICT (slug) DO UPDATE SET parent_id = EXCLUDED.parent_id, level = EXCLUDED.level, name = EXCLUDED.name RETURNING id INTO l2_id;
        IF l2_id IS NULL THEN SELECT id INTO l2_id FROM public.categories WHERE slug = 'alimentation-chiens-chats'; END IF;

        INSERT INTO public.category_translations (category_id, language_code, name) VALUES
            (l2_id, 'fr', 'Alimentation Chiens & Chats'), (l2_id, 'ar', 'غذاء الكلاب والقطط'), (l2_id, 'en', 'Dog & Cat Food'), (l2_id, 'es', 'Alimentación Perros & Gatos'), (l2_id, 'de', 'Hunde- & Katzenfutter'), (l2_id, 'it', 'Alimentazione Cani & Gatti')
        ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

            -- LEVEL 3
            INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active) VALUES
            ('croquettes', 'croquettes', l2_id, 3, 10, true),
            ('patees', 'pâtées', l2_id, 3, 20, true),
            ('friandises', 'friandises', l2_id, 3, 30, true)
            ON CONFLICT (slug) DO UPDATE SET parent_id = EXCLUDED.parent_id, level = EXCLUDED.level, name = EXCLUDED.name;

            -- Translations L3
            INSERT INTO public.category_translations (category_id, language_code, name)
            SELECT c.id, t.lang, t.name FROM public.categories c JOIN (VALUES
                ('croquettes', 'fr', 'croquettes'), ('croquettes', 'ar', 'كروكيت'), ('croquettes', 'en', 'kibble'), ('croquettes', 'es', 'croquetas'), ('croquettes', 'de', 'Trockenfutter'), ('croquettes', 'it', 'crocchette'),
                ('patees', 'fr', 'pâtées'), ('patees', 'ar', 'باتيه'), ('patees', 'en', 'wet food'), ('patees', 'es', 'patés'), ('patees', 'de', 'Nassfutter'), ('patees', 'it', 'paté'),
                ('friandises', 'fr', 'friandises'), ('friandises', 'ar', 'مكافآت'), ('friandises', 'en', 'treats'), ('friandises', 'es', 'golosinas'), ('friandises', 'de', 'Leckerli'), ('friandises', 'it', 'snack')
            ) AS t(slug, lang, name) ON c.slug = t.slug
            ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;
            
        -- LEVEL 2: Alimentation Oiseaux
        INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
        VALUES ('alimentation-oiseaux', 'Alimentation Oiseaux', l1_id, 2, 20, true)
        ON CONFLICT (slug) DO UPDATE SET parent_id = EXCLUDED.parent_id, level = EXCLUDED.level, name = EXCLUDED.name RETURNING id INTO l2_id;
        IF l2_id IS NULL THEN SELECT id INTO l2_id FROM public.categories WHERE slug = 'alimentation-oiseaux'; END IF;

        INSERT INTO public.category_translations (category_id, language_code, name) VALUES
            (l2_id, 'fr', 'Alimentation Oiseaux'), (l2_id, 'ar', 'غذاء الطيور'), (l2_id, 'en', 'Bird Food'), (l2_id, 'es', 'Alimentación Aves'), (l2_id, 'de', 'Vogelfutter'), (l2_id, 'it', 'Alimentazione Uccelli')
        ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;
        
            -- LEVEL 3
            INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active) VALUES
            ('melanges-oiseaux', 'mélanges pour oiseaux', l2_id, 3, 10, true)
            ON CONFLICT (slug) DO UPDATE SET parent_id = EXCLUDED.parent_id, level = EXCLUDED.level, name = EXCLUDED.name;
            
            INSERT INTO public.category_translations (category_id, language_code, name)
            SELECT c.id, t.lang, t.name FROM public.categories c JOIN (VALUES
                ('melanges-oiseaux', 'fr', 'mélanges pour oiseaux'), ('melanges-oiseaux', 'ar', 'خلطات الطيور'), ('melanges-oiseaux', 'en', 'bird seed mixes'), ('melanges-oiseaux', 'es', 'mezclas para aves'), ('melanges-oiseaux', 'de', 'Vogelsamenmischungen'), ('melanges-oiseaux', 'it', 'miscele per uccelli')
            ) AS t(slug, lang, name) ON c.slug = t.slug
            ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

        -- LEVEL 2: Alimentation Poissons
        INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
        VALUES ('alimentation-poissons', 'Alimentation Poissons', l1_id, 2, 30, true)
        ON CONFLICT (slug) DO UPDATE SET parent_id = EXCLUDED.parent_id, level = EXCLUDED.level, name = EXCLUDED.name RETURNING id INTO l2_id;
        IF l2_id IS NULL THEN SELECT id INTO l2_id FROM public.categories WHERE slug = 'alimentation-poissons'; END IF;

        INSERT INTO public.category_translations (category_id, language_code, name) VALUES
            (l2_id, 'fr', 'Alimentation Poissons'), (l2_id, 'ar', 'غذاء الأسماك'), (l2_id, 'en', 'Fish Food'), (l2_id, 'es', 'Alimentación Peces'), (l2_id, 'de', 'Fischfutter'), (l2_id, 'it', 'Alimentazione Pesci')
        ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;
        
            -- LEVEL 3
            INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active) VALUES
            ('aliments-poissons', 'aliments pour poissons', l2_id, 3, 10, true)
            ON CONFLICT (slug) DO UPDATE SET parent_id = EXCLUDED.parent_id, level = EXCLUDED.level, name = EXCLUDED.name;
            
            INSERT INTO public.category_translations (category_id, language_code, name)
            SELECT c.id, t.lang, t.name FROM public.categories c JOIN (VALUES
                ('aliments-poissons', 'fr', 'aliments pour poissons'), ('aliments-poissons', 'ar', 'طعام الأسماك'), ('aliments-poissons', 'en', 'fish food'), ('aliments-poissons', 'es', 'alimentos para peces'), ('aliments-poissons', 'de', 'Fischfutter'), ('aliments-poissons', 'it', 'cibo per pesci')
            ) AS t(slug, lang, name) ON c.slug = t.slug
            ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

        -- LEVEL 2: Soins & Hygiène
        INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
        VALUES ('soins-hygiene', 'Soins & Hygiène', l1_id, 2, 40, true)
        ON CONFLICT (slug) DO UPDATE SET parent_id = EXCLUDED.parent_id, level = EXCLUDED.level, name = EXCLUDED.name RETURNING id INTO l2_id;
        IF l2_id IS NULL THEN SELECT id INTO l2_id FROM public.categories WHERE slug = 'soins-hygiene'; END IF;

        INSERT INTO public.category_translations (category_id, language_code, name) VALUES
            (l2_id, 'fr', 'Soins & Hygiène'), (l2_id, 'ar', 'عناية ونظافة'), (l2_id, 'en', 'Care & Hygiene'), (l2_id, 'es', 'Cuidado & Higiene'), (l2_id, 'de', 'Pflege & Hygiene'), (l2_id, 'it', 'Cura & Igiene')
        ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;
        
            -- LEVEL 3
            INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active) VALUES
            ('produits-hygiene', 'produits d''hygiène', l2_id, 3, 10, true),
            ('shampoings', 'shampoings', l2_id, 3, 20, true),
            ('antiparasitaires', 'antiparasitaires', l2_id, 3, 30, true),
            ('anti-tiques', 'anti-tiques', l2_id, 3, 40, true),
            ('produits-veterinaires', 'produits vétérinaires', l2_id, 3, 50, true)
            ON CONFLICT (slug) DO UPDATE SET parent_id = EXCLUDED.parent_id, level = EXCLUDED.level, name = EXCLUDED.name;
            
            INSERT INTO public.category_translations (category_id, language_code, name)
            SELECT c.id, t.lang, t.name FROM public.categories c JOIN (VALUES
                ('produits-hygiene', 'fr', 'produits d''hygiène'), ('produits-hygiene', 'ar', 'منتجات نظافة'), ('produits-hygiene', 'en', 'hygiene products'), ('produits-hygiene', 'es', 'productos de higiene'), ('produits-hygiene', 'de', 'Hygieneprodukte'), ('produits-hygiene', 'it', 'prodotti per l''igiene'),
                ('shampoings', 'fr', 'shampoings'), ('shampoings', 'ar', 'شامبو'), ('shampoings', 'en', 'shampoos'), ('shampoings', 'es', 'champús'), ('shampoings', 'de', 'Shampoos'), ('shampoings', 'it', 'shampoo'),
                ('antiparasitaires', 'fr', 'antiparasitaires'), ('antiparasitaires', 'ar', 'مضادات الطفيليات'), ('antiparasitaires', 'en', 'antiparasitics'), ('antiparasitaires', 'es', 'antiparasitarios'), ('antiparasitaires', 'de', 'Antiparasitika'), ('antiparasitaires', 'it', 'antiparassitari'),
                ('anti-tiques', 'fr', 'anti-tiques'), ('anti-tiques', 'ar', 'مضادات القراد'), ('anti-tiques', 'en', 'anti-tick products'), ('anti-tiques', 'es', 'anti-garrapatas'), ('anti-tiques', 'de', 'Zeckenschutz'), ('anti-tiques', 'it', 'anti-zecche'),
                ('produits-veterinaires', 'fr', 'produits vétérinaires'), ('produits-veterinaires', 'ar', 'منتجات بيطرية'), ('produits-veterinaires', 'en', 'veterinary products'), ('produits-veterinaires', 'es', 'productos veterinarios'), ('produits-veterinaires', 'de', 'Veterinärprodukte'), ('produits-veterinaires', 'it', 'prodotti veterinari')
            ) AS t(slug, lang, name) ON c.slug = t.slug
            ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

        -- LEVEL 2: Compléments Alimentaires
        INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
        VALUES ('complements-alimentaires', 'Compléments Alimentaires', l1_id, 2, 50, true)
        ON CONFLICT (slug) DO UPDATE SET parent_id = EXCLUDED.parent_id, level = EXCLUDED.level, name = EXCLUDED.name RETURNING id INTO l2_id;
        IF l2_id IS NULL THEN SELECT id INTO l2_id FROM public.categories WHERE slug = 'complements-alimentaires'; END IF;

        INSERT INTO public.category_translations (category_id, language_code, name) VALUES
            (l2_id, 'fr', 'Compléments Alimentaires'), (l2_id, 'ar', 'مكملات غذائية'), (l2_id, 'en', 'Food Supplements'), (l2_id, 'es', 'Complementos Alimenticios'), (l2_id, 'de', 'Nahrungsergänzungsmittel'), (l2_id, 'it', 'Integratori Alimentari')
        ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;
        
            -- LEVEL 3
            INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active) VALUES
            ('vitamines', 'vitamines', l2_id, 3, 10, true)
            ON CONFLICT (slug) DO UPDATE SET parent_id = EXCLUDED.parent_id, level = EXCLUDED.level, name = EXCLUDED.name;
            
            INSERT INTO public.category_translations (category_id, language_code, name)
            SELECT c.id, t.lang, t.name FROM public.categories c JOIN (VALUES
                ('vitamines', 'fr', 'vitamines'), ('vitamines', 'ar', 'فيتامينات'), ('vitamines', 'en', 'vitamins'), ('vitamines', 'es', 'vitaminas'), ('vitamines', 'de', 'Vitamine'), ('vitamines', 'it', 'vitamine')
            ) AS t(slug, lang, name) ON c.slug = t.slug
            ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

