-- Migration: Gastronomie & Alimentation (Generated Recursive)
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

    -- Level 0: gastronomie-alimentation
    INSERT INTO categories (id, slug, level, name)
    VALUES ('gastronomie-alimentation', 'gastronomie-alimentation', 0, 'Gastronomie & Alimentation')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 0, name = EXCLUDED.name
    RETURNING id INTO root_id;
    PERFORM insert_category_translations('gastronomie-alimentation', 'fr', 'Gastronomie & Alimentation');
    PERFORM insert_category_translations('gastronomie-alimentation', 'ar', 'المأكولات و التغذية');
    PERFORM insert_category_translations('gastronomie-alimentation', 'en', 'Gastronomy & Food');
    PERFORM insert_category_translations('gastronomie-alimentation', 'de', 'Gastronomie & Ernährung');
    PERFORM insert_category_translations('gastronomie-alimentation', 'es', 'Gastronomía y Alimentación');
    PERFORM insert_category_translations('gastronomie-alimentation', 'it', 'Gastronomia e Alimentazione');

        -- Level 1: epicerie-salee
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('epicerie-salee', 'epicerie-salee', 1, root_id, 'Épicerie salée')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('epicerie-salee', 'fr', 'Épicerie salée');
        PERFORM insert_category_translations('epicerie-salee', 'ar', 'بقالة مالحة');
        PERFORM insert_category_translations('epicerie-salee', 'en', 'Savory Grocery');
        PERFORM insert_category_translations('epicerie-salee', 'de', 'Herzhafte Lebensmittel');
        PERFORM insert_category_translations('epicerie-salee', 'es', 'Abarrotes salados');
        PERFORM insert_category_translations('epicerie-salee', 'it', 'Dispensa salata');

            -- Level 2: pates
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pates', 'pates', 2, l1_id, 'pâtes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pates', 'fr', 'pâtes');
            PERFORM insert_category_translations('pates', 'ar', 'معكرونة');
            PERFORM insert_category_translations('pates', 'en', 'pasta');
            PERFORM insert_category_translations('pates', 'de', 'Nudeln');
            PERFORM insert_category_translations('pates', 'es', 'pasta');
            PERFORM insert_category_translations('pates', 'it', 'pasta');

            -- Level 2: riz
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('riz', 'riz', 2, l1_id, 'riz')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('riz', 'fr', 'riz');
            PERFORM insert_category_translations('riz', 'ar', 'أرز');
            PERFORM insert_category_translations('riz', 'en', 'rice');
            PERFORM insert_category_translations('riz', 'de', 'Reis');
            PERFORM insert_category_translations('riz', 'es', 'arroz');
            PERFORM insert_category_translations('riz', 'it', 'riso');

            -- Level 2: semoule
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('semoule', 'semoule', 2, l1_id, 'semoule')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('semoule', 'fr', 'semoule');
            PERFORM insert_category_translations('semoule', 'ar', 'سميد');
            PERFORM insert_category_translations('semoule', 'en', 'semolina');
            PERFORM insert_category_translations('semoule', 'de', 'Grieß');
            PERFORM insert_category_translations('semoule', 'es', 'sémola');
            PERFORM insert_category_translations('semoule', 'it', 'semola');

            -- Level 2: couscous
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('couscous', 'couscous', 2, l1_id, 'couscous')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('couscous', 'fr', 'couscous');
            PERFORM insert_category_translations('couscous', 'ar', 'couscous');
            PERFORM insert_category_translations('couscous', 'en', 'couscous');
            PERFORM insert_category_translations('couscous', 'de', 'couscous');
            PERFORM insert_category_translations('couscous', 'es', 'couscous');
            PERFORM insert_category_translations('couscous', 'it', 'couscous');

            -- Level 2: lentilles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lentilles', 'lentilles', 2, l1_id, 'lentilles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lentilles', 'fr', 'lentilles');
            PERFORM insert_category_translations('lentilles', 'ar', 'عدس');
            PERFORM insert_category_translations('lentilles', 'en', 'lentils');
            PERFORM insert_category_translations('lentilles', 'de', 'Linsen');
            PERFORM insert_category_translations('lentilles', 'es', 'lentejas');
            PERFORM insert_category_translations('lentilles', 'it', 'lenticchie');

            -- Level 2: pois-chiches
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pois-chiches', 'pois-chiches', 2, l1_id, 'pois chiches')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pois-chiches', 'fr', 'pois chiches');
            PERFORM insert_category_translations('pois-chiches', 'ar', 'حمص');
            PERFORM insert_category_translations('pois-chiches', 'en', 'chickpeas');
            PERFORM insert_category_translations('pois-chiches', 'de', 'Kichererbsen');
            PERFORM insert_category_translations('pois-chiches', 'es', 'garbanzos');
            PERFORM insert_category_translations('pois-chiches', 'it', 'ceci');

            -- Level 2: haricots-secs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('haricots-secs', 'haricots-secs', 2, l1_id, 'haricots secs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('haricots-secs', 'fr', 'haricots secs');
            PERFORM insert_category_translations('haricots-secs', 'ar', 'فاصوليا جافة');
            PERFORM insert_category_translations('haricots-secs', 'en', 'dried beans');
            PERFORM insert_category_translations('haricots-secs', 'de', 'getrocknete Bohnen');
            PERFORM insert_category_translations('haricots-secs', 'es', 'frijoles secos');
            PERFORM insert_category_translations('haricots-secs', 'it', 'fagioli secchi');

            -- Level 2: farines
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('farines', 'farines', 2, l1_id, 'farines')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('farines', 'fr', 'farines');
            PERFORM insert_category_translations('farines', 'ar', 'دقيق');
            PERFORM insert_category_translations('farines', 'en', 'flours');
            PERFORM insert_category_translations('farines', 'de', 'Mehle');
            PERFORM insert_category_translations('farines', 'es', 'harinas');
            PERFORM insert_category_translations('farines', 'it', 'farine');

            -- Level 2: boulghour
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('boulghour', 'boulghour', 2, l1_id, 'boulghour')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('boulghour', 'fr', 'boulghour');
            PERFORM insert_category_translations('boulghour', 'ar', 'برغل');
            PERFORM insert_category_translations('boulghour', 'en', 'bulgur');
            PERFORM insert_category_translations('boulghour', 'de', 'Bulgur');
            PERFORM insert_category_translations('boulghour', 'es', 'bulgur');
            PERFORM insert_category_translations('boulghour', 'it', 'bulgur');

            -- Level 2: cereales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cereales', 'cereales', 2, l1_id, 'céréales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cereales', 'fr', 'céréales');
            PERFORM insert_category_translations('cereales', 'ar', 'حبوب');
            PERFORM insert_category_translations('cereales', 'en', 'cereals');
            PERFORM insert_category_translations('cereales', 'de', 'Cerealien');
            PERFORM insert_category_translations('cereales', 'es', 'cereales');
            PERFORM insert_category_translations('cereales', 'it', 'cereali');

            -- Level 2: conserves-salees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('conserves-salees', 'conserves-salees', 2, l1_id, 'conserves salées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('conserves-salees', 'fr', 'conserves salées');
            PERFORM insert_category_translations('conserves-salees', 'ar', 'معلبات مالحة');
            PERFORM insert_category_translations('conserves-salees', 'en', 'savory canned goods');
            PERFORM insert_category_translations('conserves-salees', 'de', 'herzhafte Konserven');
            PERFORM insert_category_translations('conserves-salees', 'es', 'conservas saladas');
            PERFORM insert_category_translations('conserves-salees', 'it', 'conserve salate');

            -- Level 2: sauces-salees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sauces-salees', 'sauces-salees', 2, l1_id, 'sauces salées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sauces-salees', 'fr', 'sauces salées');
            PERFORM insert_category_translations('sauces-salees', 'ar', 'صلصات مالحة');
            PERFORM insert_category_translations('sauces-salees', 'en', 'savory sauces');
            PERFORM insert_category_translations('sauces-salees', 'de', 'herzhafte Soßen');
            PERFORM insert_category_translations('sauces-salees', 'es', 'salsas saladas');
            PERFORM insert_category_translations('sauces-salees', 'it', 'salse salate');

        -- Level 1: epicerie-sucree
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('epicerie-sucree', 'epicerie-sucree', 1, root_id, 'Épicerie sucrée')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('epicerie-sucree', 'fr', 'Épicerie sucrée');
        PERFORM insert_category_translations('epicerie-sucree', 'ar', 'بقالة حلوة');
        PERFORM insert_category_translations('epicerie-sucree', 'en', 'Sweet Grocery');
        PERFORM insert_category_translations('epicerie-sucree', 'de', 'Süße Lebensmittel');
        PERFORM insert_category_translations('epicerie-sucree', 'es', 'Abarrotes dulces');
        PERFORM insert_category_translations('epicerie-sucree', 'it', 'Dispensa dolce');

            -- Level 2: sucre
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sucre', 'sucre', 2, l1_id, 'sucre')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sucre', 'fr', 'sucre');
            PERFORM insert_category_translations('sucre', 'ar', 'سكر');
            PERFORM insert_category_translations('sucre', 'en', 'sugar');
            PERFORM insert_category_translations('sucre', 'de', 'Zucker');
            PERFORM insert_category_translations('sucre', 'es', 'azúcar');
            PERFORM insert_category_translations('sucre', 'it', 'zucchero');

            -- Level 2: miel
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('miel', 'miel', 2, l1_id, 'miel')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('miel', 'fr', 'miel');
            PERFORM insert_category_translations('miel', 'ar', 'عسل');
            PERFORM insert_category_translations('miel', 'en', 'honey');
            PERFORM insert_category_translations('miel', 'de', 'Honig');
            PERFORM insert_category_translations('miel', 'es', 'miel');
            PERFORM insert_category_translations('miel', 'it', 'miele');

            -- Level 2: confitures
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('confitures', 'confitures', 2, l1_id, 'confitures')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('confitures', 'fr', 'confitures');
            PERFORM insert_category_translations('confitures', 'ar', 'مربيات');
            PERFORM insert_category_translations('confitures', 'en', 'jams');
            PERFORM insert_category_translations('confitures', 'de', 'Konfitüren');
            PERFORM insert_category_translations('confitures', 'es', 'mermeladas');
            PERFORM insert_category_translations('confitures', 'it', 'marmellate');

            -- Level 2: pate-a-tartiner
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pate-a-tartiner', 'pate-a-tartiner', 2, l1_id, 'pâte à tartiner')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pate-a-tartiner', 'fr', 'pâte à tartiner');
            PERFORM insert_category_translations('pate-a-tartiner', 'ar', 'كريمة قابلة للدهن');
            PERFORM insert_category_translations('pate-a-tartiner', 'en', 'spreads');
            PERFORM insert_category_translations('pate-a-tartiner', 'de', 'Aufstriche');
            PERFORM insert_category_translations('pate-a-tartiner', 'es', 'cremas para untar');
            PERFORM insert_category_translations('pate-a-tartiner', 'it', 'creme spalmabili');

            -- Level 2: biscuits
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('biscuits', 'biscuits', 2, l1_id, 'biscuits')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('biscuits', 'fr', 'biscuits');
            PERFORM insert_category_translations('biscuits', 'ar', 'بسكويت');
            PERFORM insert_category_translations('biscuits', 'en', 'cookies');
            PERFORM insert_category_translations('biscuits', 'de', 'Kekse');
            PERFORM insert_category_translations('biscuits', 'es', 'galletas');
            PERFORM insert_category_translations('biscuits', 'it', 'biscotti');

            -- Level 2: gateaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gateaux', 'gateaux', 2, l1_id, 'gâteaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gateaux', 'fr', 'gâteaux');
            PERFORM insert_category_translations('gateaux', 'ar', 'كعك');
            PERFORM insert_category_translations('gateaux', 'en', 'cakes');
            PERFORM insert_category_translations('gateaux', 'de', 'Kuchen');
            PERFORM insert_category_translations('gateaux', 'es', 'pasteles');
            PERFORM insert_category_translations('gateaux', 'it', 'torte');

            -- Level 2: cereales-sucrees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cereales-sucrees', 'cereales-sucrees', 2, l1_id, 'céréales sucrées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cereales-sucrees', 'fr', 'céréales sucrées');
            PERFORM insert_category_translations('cereales-sucrees', 'ar', 'حبوب محلاة');
            PERFORM insert_category_translations('cereales-sucrees', 'en', 'sweet cereals');
            PERFORM insert_category_translations('cereales-sucrees', 'de', 'süße Cerealien');
            PERFORM insert_category_translations('cereales-sucrees', 'es', 'cereales dulces');
            PERFORM insert_category_translations('cereales-sucrees', 'it', 'cereali dolci');

            -- Level 2: sirops
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sirops', 'sirops', 2, l1_id, 'sirops')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sirops', 'fr', 'sirops');
            PERFORM insert_category_translations('sirops', 'ar', 'شراب');
            PERFORM insert_category_translations('sirops', 'en', 'syrups');
            PERFORM insert_category_translations('sirops', 'de', 'Sirupe');
            PERFORM insert_category_translations('sirops', 'es', 'jarabes');
            PERFORM insert_category_translations('sirops', 'it', 'sciroppi');

            -- Level 2: desserts-instantanes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('desserts-instantanes', 'desserts-instantanes', 2, l1_id, 'desserts instantanés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('desserts-instantanes', 'fr', 'desserts instantanés');
            PERFORM insert_category_translations('desserts-instantanes', 'ar', 'حلويات فورية');
            PERFORM insert_category_translations('desserts-instantanes', 'en', 'instant desserts');
            PERFORM insert_category_translations('desserts-instantanes', 'de', 'Instant-Desserts');
            PERFORM insert_category_translations('desserts-instantanes', 'es', 'postres instantáneos');
            PERFORM insert_category_translations('desserts-instantanes', 'it', 'dessert istantanei');

        -- Level 1: conserves-boites
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('conserves-boites', 'conserves-boites', 1, root_id, 'Conserves & produits en boîte')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('conserves-boites', 'fr', 'Conserves & produits en boîte');
        PERFORM insert_category_translations('conserves-boites', 'ar', 'معلبات ومنتجات معلبة');
        PERFORM insert_category_translations('conserves-boites', 'en', 'Canned Foods');
        PERFORM insert_category_translations('conserves-boites', 'de', 'Konserven & Dosenprodukte');
        PERFORM insert_category_translations('conserves-boites', 'es', 'Conservas y enlatados');
        PERFORM insert_category_translations('conserves-boites', 'it', 'Conserve e prodotti in scatola');

            -- Level 2: thon
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('thon', 'thon', 2, l1_id, 'thon')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('thon', 'fr', 'thon');
            PERFORM insert_category_translations('thon', 'ar', 'تونة');
            PERFORM insert_category_translations('thon', 'en', 'tuna');
            PERFORM insert_category_translations('thon', 'de', 'Thunfisch');
            PERFORM insert_category_translations('thon', 'es', 'atún');
            PERFORM insert_category_translations('thon', 'it', 'tonno');

            -- Level 2: sardines
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sardines', 'sardines', 2, l1_id, 'sardines')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sardines', 'fr', 'sardines');
            PERFORM insert_category_translations('sardines', 'ar', 'سردين');
            PERFORM insert_category_translations('sardines', 'en', 'sardines');
            PERFORM insert_category_translations('sardines', 'de', 'Sardinen');
            PERFORM insert_category_translations('sardines', 'es', 'sardinas');
            PERFORM insert_category_translations('sardines', 'it', 'sardine');

            -- Level 2: maquereaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('maquereaux', 'maquereaux', 2, l1_id, 'maquereaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('maquereaux', 'fr', 'maquereaux');
            PERFORM insert_category_translations('maquereaux', 'ar', 'إسقمري');
            PERFORM insert_category_translations('maquereaux', 'en', 'mackerel');
            PERFORM insert_category_translations('maquereaux', 'de', 'Makrelen');
            PERFORM insert_category_translations('maquereaux', 'es', 'caballa');
            PERFORM insert_category_translations('maquereaux', 'it', 'sgombro');

            -- Level 2: mais
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mais', 'mais', 2, l1_id, 'maïs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mais', 'fr', 'maïs');
            PERFORM insert_category_translations('mais', 'ar', 'ذرة');
            PERFORM insert_category_translations('mais', 'en', 'corn');
            PERFORM insert_category_translations('mais', 'de', 'Mais');
            PERFORM insert_category_translations('mais', 'es', 'maíz');
            PERFORM insert_category_translations('mais', 'it', 'mais');

            -- Level 2: petits-pois
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('petits-pois', 'petits-pois', 2, l1_id, 'petits pois')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('petits-pois', 'fr', 'petits pois');
            PERFORM insert_category_translations('petits-pois', 'ar', 'بازلاء');
            PERFORM insert_category_translations('petits-pois', 'en', 'peas');
            PERFORM insert_category_translations('petits-pois', 'de', 'Erbsen');
            PERFORM insert_category_translations('petits-pois', 'es', 'guisantes');
            PERFORM insert_category_translations('petits-pois', 'it', 'piselli');

            -- Level 2: haricots
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('haricots', 'haricots', 2, l1_id, 'haricots')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('haricots', 'fr', 'haricots');
            PERFORM insert_category_translations('haricots', 'ar', 'فاصوليا');
            PERFORM insert_category_translations('haricots', 'en', 'beans');
            PERFORM insert_category_translations('haricots', 'de', 'Bohnen');
            PERFORM insert_category_translations('haricots', 'es', 'frijoles');
            PERFORM insert_category_translations('haricots', 'it', 'fagioli');

            -- Level 2: tomates-pelees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tomates-pelees', 'tomates-pelees', 2, l1_id, 'tomates pelées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tomates-pelees', 'fr', 'tomates pelées');
            PERFORM insert_category_translations('tomates-pelees', 'ar', 'طماطم مقشرة');
            PERFORM insert_category_translations('tomates-pelees', 'en', 'peeled tomatoes');
            PERFORM insert_category_translations('tomates-pelees', 'de', 'geschälte Tomaten');
            PERFORM insert_category_translations('tomates-pelees', 'es', 'tomates pelados');
            PERFORM insert_category_translations('tomates-pelees', 'it', 'pomodori pelati');

            -- Level 2: sauces-conserve
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sauces-conserve', 'sauces-conserve', 2, l1_id, 'sauces en conserve')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sauces-conserve', 'fr', 'sauces en conserve');
            PERFORM insert_category_translations('sauces-conserve', 'ar', 'صلصات معلبة');
            PERFORM insert_category_translations('sauces-conserve', 'en', 'canned sauces');
            PERFORM insert_category_translations('sauces-conserve', 'de', 'Konservensaucen');
            PERFORM insert_category_translations('sauces-conserve', 'es', 'salsas en lata');
            PERFORM insert_category_translations('sauces-conserve', 'it', 'salse in scatola');

            -- Level 2: plats-prepares
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('plats-prepares', 'plats-prepares', 2, l1_id, 'plats préparés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('plats-prepares', 'fr', 'plats préparés');
            PERFORM insert_category_translations('plats-prepares', 'ar', 'وجبات جاهزة');
            PERFORM insert_category_translations('plats-prepares', 'en', 'ready meals');
            PERFORM insert_category_translations('plats-prepares', 'de', 'Fertiggerichte');
            PERFORM insert_category_translations('plats-prepares', 'es', 'platos preparados');
            PERFORM insert_category_translations('plats-prepares', 'it', 'piatti pronti');

        -- Level 1: produits-frais
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-frais', 'produits-frais', 1, root_id, 'Produits frais')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('produits-frais', 'fr', 'Produits frais');
        PERFORM insert_category_translations('produits-frais', 'ar', 'منتجات طازجة');
        PERFORM insert_category_translations('produits-frais', 'en', 'Fresh Products');
        PERFORM insert_category_translations('produits-frais', 'de', 'Frische Produkte');
        PERFORM insert_category_translations('produits-frais', 'es', 'Productos frescos');
        PERFORM insert_category_translations('produits-frais', 'it', 'Prodotti freschi');

            -- Level 2: yaourts
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('yaourts', 'yaourts', 2, l1_id, 'yaourts')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('yaourts', 'fr', 'yaourts');
            PERFORM insert_category_translations('yaourts', 'ar', 'زبادي');
            PERFORM insert_category_translations('yaourts', 'en', 'yogurts');
            PERFORM insert_category_translations('yaourts', 'de', 'Joghurts');
            PERFORM insert_category_translations('yaourts', 'es', 'yogures');
            PERFORM insert_category_translations('yaourts', 'it', 'yogurt');

            -- Level 2: fromages-frais
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fromages-frais', 'fromages-frais', 2, l1_id, 'fromages frais')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fromages-frais', 'fr', 'fromages frais');
            PERFORM insert_category_translations('fromages-frais', 'ar', 'أجبان طازجة');
            PERFORM insert_category_translations('fromages-frais', 'en', 'fresh cheeses');
            PERFORM insert_category_translations('fromages-frais', 'de', 'Frischkäse');
            PERFORM insert_category_translations('fromages-frais', 'es', 'quesos frescos');
            PERFORM insert_category_translations('fromages-frais', 'it', 'formaggi freschi');

            -- Level 2: lait
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lait', 'lait', 2, l1_id, 'lait')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lait', 'fr', 'lait');
            PERFORM insert_category_translations('lait', 'ar', 'حليب');
            PERFORM insert_category_translations('lait', 'en', 'milk');
            PERFORM insert_category_translations('lait', 'de', 'Milch');
            PERFORM insert_category_translations('lait', 'es', 'leche');
            PERFORM insert_category_translations('lait', 'it', 'latte');

            -- Level 2: beurre
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('beurre', 'beurre', 2, l1_id, 'beurre')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('beurre', 'fr', 'beurre');
            PERFORM insert_category_translations('beurre', 'ar', 'زبدة');
            PERFORM insert_category_translations('beurre', 'en', 'butter');
            PERFORM insert_category_translations('beurre', 'de', 'Butter');
            PERFORM insert_category_translations('beurre', 'es', 'mantequilla');
            PERFORM insert_category_translations('beurre', 'it', 'burro');

            -- Level 2: creme
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('creme', 'creme', 2, l1_id, 'crème')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('creme', 'fr', 'crème');
            PERFORM insert_category_translations('creme', 'ar', 'كريمة');
            PERFORM insert_category_translations('creme', 'en', 'cream');
            PERFORM insert_category_translations('creme', 'de', 'Sahne');
            PERFORM insert_category_translations('creme', 'es', 'crema');
            PERFORM insert_category_translations('creme', 'it', 'panna');

            -- Level 2: oeufs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('oeufs', 'oeufs', 2, l1_id, 'œufs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('oeufs', 'fr', 'œufs');
            PERFORM insert_category_translations('oeufs', 'ar', 'بيض');
            PERFORM insert_category_translations('oeufs', 'en', 'eggs');
            PERFORM insert_category_translations('oeufs', 'de', 'Eier');
            PERFORM insert_category_translations('oeufs', 'es', 'huevos');
            PERFORM insert_category_translations('oeufs', 'it', 'uova');

            -- Level 2: jus-frais
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jus-frais', 'jus-frais', 2, l1_id, 'jus frais')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('jus-frais', 'fr', 'jus frais');
            PERFORM insert_category_translations('jus-frais', 'ar', 'عصائر طازجة');
            PERFORM insert_category_translations('jus-frais', 'en', 'fresh juices');
            PERFORM insert_category_translations('jus-frais', 'de', 'frische Säfte');
            PERFORM insert_category_translations('jus-frais', 'es', 'jugos frescos');
            PERFORM insert_category_translations('jus-frais', 'it', 'succhi freschi');

            -- Level 2: charcuterie-frais
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('charcuterie-frais', 'charcuterie-frais', 2, l1_id, 'charcuterie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('charcuterie-frais', 'fr', 'charcuterie');
            PERFORM insert_category_translations('charcuterie-frais', 'ar', 'لحوم باردة');
            PERFORM insert_category_translations('charcuterie-frais', 'en', 'cold cuts');
            PERFORM insert_category_translations('charcuterie-frais', 'de', 'Aufschnitt');
            PERFORM insert_category_translations('charcuterie-frais', 'es', 'embutidos');
            PERFORM insert_category_translations('charcuterie-frais', 'it', 'salumi');

            -- Level 2: produits-traiteurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-traiteurs', 'produits-traiteurs', 2, l1_id, 'produits traiteurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('produits-traiteurs', 'fr', 'produits traiteurs');
            PERFORM insert_category_translations('produits-traiteurs', 'ar', 'منتجات مطبخ جاهزة');
            PERFORM insert_category_translations('produits-traiteurs', 'en', 'deli products');
            PERFORM insert_category_translations('produits-traiteurs', 'de', 'Feinkostprodukte');
            PERFORM insert_category_translations('produits-traiteurs', 'es', 'productos de delicatessen');
            PERFORM insert_category_translations('produits-traiteurs', 'it', 'prodotti gastronomia');

        -- Level 1: produits-surgeles
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-surgeles', 'produits-surgeles', 1, root_id, 'Produits surgelés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('produits-surgeles', 'fr', 'Produits surgelés');
        PERFORM insert_category_translations('produits-surgeles', 'ar', 'منتجات مجمّدة');
        PERFORM insert_category_translations('produits-surgeles', 'en', 'Frozen Foods');
        PERFORM insert_category_translations('produits-surgeles', 'de', 'Tiefkühlprodukte');
        PERFORM insert_category_translations('produits-surgeles', 'es', 'Congelados');
        PERFORM insert_category_translations('produits-surgeles', 'it', 'Surgelati');

            -- Level 2: legumes-surgeles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('legumes-surgeles', 'legumes-surgeles', 2, l1_id, 'légumes surgelés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('legumes-surgeles', 'fr', 'légumes surgelés');
            PERFORM insert_category_translations('legumes-surgeles', 'ar', 'خضروات مجمّدة');
            PERFORM insert_category_translations('legumes-surgeles', 'en', 'frozen vegetables');
            PERFORM insert_category_translations('legumes-surgeles', 'de', 'Tiefkühlgemüse');
            PERFORM insert_category_translations('legumes-surgeles', 'es', 'verduras congeladas');
            PERFORM insert_category_translations('legumes-surgeles', 'it', 'verdure surgelate');

            -- Level 2: viandes-surgeles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('viandes-surgeles', 'viandes-surgeles', 2, l1_id, 'viandes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('viandes-surgeles', 'fr', 'viandes');
            PERFORM insert_category_translations('viandes-surgeles', 'ar', 'لحوم');
            PERFORM insert_category_translations('viandes-surgeles', 'en', 'meats');
            PERFORM insert_category_translations('viandes-surgeles', 'de', 'Fleisch');
            PERFORM insert_category_translations('viandes-surgeles', 'es', 'carnes');
            PERFORM insert_category_translations('viandes-surgeles', 'it', 'carni');

            -- Level 2: poissons-surgeles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('poissons-surgeles', 'poissons-surgeles', 2, l1_id, 'poissons')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('poissons-surgeles', 'fr', 'poissons');
            PERFORM insert_category_translations('poissons-surgeles', 'ar', 'أسماك');
            PERFORM insert_category_translations('poissons-surgeles', 'en', 'fish');
            PERFORM insert_category_translations('poissons-surgeles', 'de', 'Fisch');
            PERFORM insert_category_translations('poissons-surgeles', 'es', 'pescados');
            PERFORM insert_category_translations('poissons-surgeles', 'it', 'pesce');

            -- Level 2: fruits-surgeles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fruits-surgeles', 'fruits-surgeles', 2, l1_id, 'fruits')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fruits-surgeles', 'fr', 'fruits');
            PERFORM insert_category_translations('fruits-surgeles', 'ar', 'فواكه');
            PERFORM insert_category_translations('fruits-surgeles', 'en', 'fruits');
            PERFORM insert_category_translations('fruits-surgeles', 'de', 'Früchte');
            PERFORM insert_category_translations('fruits-surgeles', 'es', 'frutas');
            PERFORM insert_category_translations('fruits-surgeles', 'it', 'frutta');

            -- Level 2: pizzas-surgeles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pizzas-surgeles', 'pizzas-surgeles', 2, l1_id, 'pizzas')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pizzas-surgeles', 'fr', 'pizzas');
            PERFORM insert_category_translations('pizzas-surgeles', 'ar', 'بيتزا');
            PERFORM insert_category_translations('pizzas-surgeles', 'en', 'pizzas');
            PERFORM insert_category_translations('pizzas-surgeles', 'de', 'Pizzen');
            PERFORM insert_category_translations('pizzas-surgeles', 'es', 'pizzas');
            PERFORM insert_category_translations('pizzas-surgeles', 'it', 'pizze');

            -- Level 2: nuggets
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('nuggets', 'nuggets', 2, l1_id, 'nuggets')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('nuggets', 'fr', 'nuggets');
            PERFORM insert_category_translations('nuggets', 'ar', 'nuggets');
            PERFORM insert_category_translations('nuggets', 'en', 'nuggets');
            PERFORM insert_category_translations('nuggets', 'de', 'nuggets');
            PERFORM insert_category_translations('nuggets', 'es', 'nuggets');
            PERFORM insert_category_translations('nuggets', 'it', 'nuggets');

            -- Level 2: patisseries-surgeles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('patisseries-surgeles', 'patisseries-surgeles', 2, l1_id, 'pâtisseries')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('patisseries-surgeles', 'fr', 'pâtisseries');
            PERFORM insert_category_translations('patisseries-surgeles', 'ar', 'مخبوزات');
            PERFORM insert_category_translations('patisseries-surgeles', 'en', 'pastries');
            PERFORM insert_category_translations('patisseries-surgeles', 'de', 'Gebäck');
            PERFORM insert_category_translations('patisseries-surgeles', 'es', 'repostería');
            PERFORM insert_category_translations('patisseries-surgeles', 'it', 'pasticceria');

            -- Level 2: glaces
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('glaces', 'glaces', 2, l1_id, 'glaces')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('glaces', 'fr', 'glaces');
            PERFORM insert_category_translations('glaces', 'ar', 'مثلجات');
            PERFORM insert_category_translations('glaces', 'en', 'ice cream');
            PERFORM insert_category_translations('glaces', 'de', 'Eis');
            PERFORM insert_category_translations('glaces', 'es', 'helados');
            PERFORM insert_category_translations('glaces', 'it', 'gelati');

        -- Level 1: viandes-volailles
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('viandes-volailles', 'viandes-volailles', 1, root_id, 'Viandes & volailles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('viandes-volailles', 'fr', 'Viandes & volailles');
        PERFORM insert_category_translations('viandes-volailles', 'ar', 'لحوم و دواجن');
        PERFORM insert_category_translations('viandes-volailles', 'en', 'Meat & Poultry');
        PERFORM insert_category_translations('viandes-volailles', 'de', 'Fleisch & Geflügel');
        PERFORM insert_category_translations('viandes-volailles', 'es', 'Carnes y aves');
        PERFORM insert_category_translations('viandes-volailles', 'it', 'Carni e pollame');

            -- Level 2: viande-rouge
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('viande-rouge', 'viande-rouge', 2, l1_id, 'viande rouge')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('viande-rouge', 'fr', 'viande rouge');
            PERFORM insert_category_translations('viande-rouge', 'ar', 'لحوم حمراء');
            PERFORM insert_category_translations('viande-rouge', 'en', 'red meat');
            PERFORM insert_category_translations('viande-rouge', 'de', 'rotes Fleisch');
            PERFORM insert_category_translations('viande-rouge', 'es', 'carne roja');
            PERFORM insert_category_translations('viande-rouge', 'it', 'carne rossa');

            -- Level 2: viande-blanche
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('viande-blanche', 'viande-blanche', 2, l1_id, 'viande blanche')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('viande-blanche', 'fr', 'viande blanche');
            PERFORM insert_category_translations('viande-blanche', 'ar', 'لحوم بيضاء');
            PERFORM insert_category_translations('viande-blanche', 'en', 'white meat');
            PERFORM insert_category_translations('viande-blanche', 'de', 'weißes Fleisch');
            PERFORM insert_category_translations('viande-blanche', 'es', 'carne blanca');
            PERFORM insert_category_translations('viande-blanche', 'it', 'carne bianca');

            -- Level 2: volaille
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('volaille', 'volaille', 2, l1_id, 'volaille')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('volaille', 'fr', 'volaille');
            PERFORM insert_category_translations('volaille', 'ar', 'دواجن');
            PERFORM insert_category_translations('volaille', 'en', 'poultry');
            PERFORM insert_category_translations('volaille', 'de', 'Geflügel');
            PERFORM insert_category_translations('volaille', 'es', 'aves');
            PERFORM insert_category_translations('volaille', 'it', 'pollame');

            -- Level 2: dinde
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('dinde', 'dinde', 2, l1_id, 'dinde')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('dinde', 'fr', 'dinde');
            PERFORM insert_category_translations('dinde', 'ar', 'ديك رومي');
            PERFORM insert_category_translations('dinde', 'en', 'turkey');
            PERFORM insert_category_translations('dinde', 'de', 'Truthahn');
            PERFORM insert_category_translations('dinde', 'es', 'pavo');
            PERFORM insert_category_translations('dinde', 'it', 'tacchino');

            -- Level 2: merguez
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('merguez', 'merguez', 2, l1_id, 'merguez')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('merguez', 'fr', 'merguez');
            PERFORM insert_category_translations('merguez', 'ar', 'merguez');
            PERFORM insert_category_translations('merguez', 'en', 'merguez');
            PERFORM insert_category_translations('merguez', 'de', 'merguez');
            PERFORM insert_category_translations('merguez', 'es', 'merguez');
            PERFORM insert_category_translations('merguez', 'it', 'merguez');

            -- Level 2: charcuterie
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('charcuterie', 'charcuterie', 2, l1_id, 'charcuterie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('charcuterie', 'fr', 'charcuterie');
            PERFORM insert_category_translations('charcuterie', 'ar', 'لحوم مصنّعة');
            PERFORM insert_category_translations('charcuterie', 'en', 'charcuterie');
            PERFORM insert_category_translations('charcuterie', 'de', 'Wurstwaren');
            PERFORM insert_category_translations('charcuterie', 'es', 'embutidos');
            PERFORM insert_category_translations('charcuterie', 'it', 'salumi');

            -- Level 2: abats
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('abats', 'abats', 2, l1_id, 'abats')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('abats', 'fr', 'abats');
            PERFORM insert_category_translations('abats', 'ar', 'أحشاء');
            PERFORM insert_category_translations('abats', 'en', 'offal');
            PERFORM insert_category_translations('abats', 'de', 'Innereien');
            PERFORM insert_category_translations('abats', 'es', 'vísceras');
            PERFORM insert_category_translations('abats', 'it', 'frattaglie');

            -- Level 2: viandes-marinees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('viandes-marinees', 'viandes-marinees', 2, l1_id, 'viandes marinées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('viandes-marinees', 'fr', 'viandes marinées');
            PERFORM insert_category_translations('viandes-marinees', 'ar', 'لحوم متبلة');
            PERFORM insert_category_translations('viandes-marinees', 'en', 'marinated meats');
            PERFORM insert_category_translations('viandes-marinees', 'de', 'marinierte Fleischwaren');
            PERFORM insert_category_translations('viandes-marinees', 'es', 'carnes marinadas');
            PERFORM insert_category_translations('viandes-marinees', 'it', 'carni marinate');

        -- Level 1: poissons-fruits-de-mer
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('poissons-fruits-de-mer', 'poissons-fruits-de-mer', 1, root_id, 'Poissons & fruits de mer')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('poissons-fruits-de-mer', 'fr', 'Poissons & fruits de mer');
        PERFORM insert_category_translations('poissons-fruits-de-mer', 'ar', 'أسماك و مأكولات بحرية');
        PERFORM insert_category_translations('poissons-fruits-de-mer', 'en', 'Fish & Seafood');
        PERFORM insert_category_translations('poissons-fruits-de-mer', 'de', 'Fisch & Meeresfrüchte');
        PERFORM insert_category_translations('poissons-fruits-de-mer', 'es', 'Pescados y mariscos');
        PERFORM insert_category_translations('poissons-fruits-de-mer', 'it', 'Pesce e frutti di mare');

            -- Level 2: poissons-frais
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('poissons-frais', 'poissons-frais', 2, l1_id, 'poissons frais')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('poissons-frais', 'fr', 'poissons frais');
            PERFORM insert_category_translations('poissons-frais', 'ar', 'أسماك طازجة');
            PERFORM insert_category_translations('poissons-frais', 'en', 'fresh fish');
            PERFORM insert_category_translations('poissons-frais', 'de', 'frischer Fisch');
            PERFORM insert_category_translations('poissons-frais', 'es', 'pescado fresco');
            PERFORM insert_category_translations('poissons-frais', 'it', 'pesce fresco');

            -- Level 2: poissons-congeles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('poissons-congeles', 'poissons-congeles', 2, l1_id, 'poissons congelés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('poissons-congeles', 'fr', 'poissons congelés');
            PERFORM insert_category_translations('poissons-congeles', 'ar', 'أسماك مجمّدة');
            PERFORM insert_category_translations('poissons-congeles', 'en', 'frozen fish');
            PERFORM insert_category_translations('poissons-congeles', 'de', 'Tiefkühlfisch');
            PERFORM insert_category_translations('poissons-congeles', 'es', 'pescado congelado');
            PERFORM insert_category_translations('poissons-congeles', 'it', 'pesce congelato');

            -- Level 2: crustaces
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('crustaces', 'crustaces', 2, l1_id, 'crustacés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('crustaces', 'fr', 'crustacés');
            PERFORM insert_category_translations('crustaces', 'ar', 'قشريات');
            PERFORM insert_category_translations('crustaces', 'en', 'shellfish');
            PERFORM insert_category_translations('crustaces', 'de', 'Krustentiere');
            PERFORM insert_category_translations('crustaces', 'es', 'crustáceos');
            PERFORM insert_category_translations('crustaces', 'it', 'crostacei');

            -- Level 2: mollusques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mollusques', 'mollusques', 2, l1_id, 'mollusques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mollusques', 'fr', 'mollusques');
            PERFORM insert_category_translations('mollusques', 'ar', 'رخويات');
            PERFORM insert_category_translations('mollusques', 'en', 'mollusks');
            PERFORM insert_category_translations('mollusques', 'de', 'Weichtiere');
            PERFORM insert_category_translations('mollusques', 'es', 'moluscos');
            PERFORM insert_category_translations('mollusques', 'it', 'molluschi');

            -- Level 2: fruits-de-mer-prepares
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fruits-de-mer-prepares', 'fruits-de-mer-prepares', 2, l1_id, 'fruits de mer préparés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fruits-de-mer-prepares', 'fr', 'fruits de mer préparés');
            PERFORM insert_category_translations('fruits-de-mer-prepares', 'ar', 'مأكولات بحرية محضّرة');
            PERFORM insert_category_translations('fruits-de-mer-prepares', 'en', 'prepared seafood');
            PERFORM insert_category_translations('fruits-de-mer-prepares', 'de', 'zubereitete Meeresfrüchte');
            PERFORM insert_category_translations('fruits-de-mer-prepares', 'es', 'mariscos preparados');
            PERFORM insert_category_translations('fruits-de-mer-prepares', 'it', 'frutti di mare preparati');

            -- Level 2: saumon
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('saumon', 'saumon', 2, l1_id, 'saumon')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('saumon', 'fr', 'saumon');
            PERFORM insert_category_translations('saumon', 'ar', 'سلمون');
            PERFORM insert_category_translations('saumon', 'en', 'salmon');
            PERFORM insert_category_translations('saumon', 'de', 'Lachs');
            PERFORM insert_category_translations('saumon', 'es', 'salmón');
            PERFORM insert_category_translations('saumon', 'it', 'salmone');

            -- Level 2: thon-poisson
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('thon-poisson', 'thon-poisson', 2, l1_id, 'thon')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('thon-poisson', 'fr', 'thon');
            PERFORM insert_category_translations('thon-poisson', 'ar', 'تونة');
            PERFORM insert_category_translations('thon-poisson', 'en', 'tuna');
            PERFORM insert_category_translations('thon-poisson', 'de', 'Thunfisch');
            PERFORM insert_category_translations('thon-poisson', 'es', 'atún');
            PERFORM insert_category_translations('thon-poisson', 'it', 'tonno');

        -- Level 1: fruits-legumes
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fruits-legumes', 'fruits-legumes', 1, root_id, 'Fruits & légumes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('fruits-legumes', 'fr', 'Fruits & légumes');
        PERFORM insert_category_translations('fruits-legumes', 'ar', 'فواكه وخضروات');
        PERFORM insert_category_translations('fruits-legumes', 'en', 'Fruits & Vegetables');
        PERFORM insert_category_translations('fruits-legumes', 'de', 'Obst & Gemüse');
        PERFORM insert_category_translations('fruits-legumes', 'es', 'Frutas y verduras');
        PERFORM insert_category_translations('fruits-legumes', 'it', 'Frutta e verdura');

            -- Level 2: fruits-frais
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fruits-frais', 'fruits-frais', 2, l1_id, 'fruits frais')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fruits-frais', 'fr', 'fruits frais');
            PERFORM insert_category_translations('fruits-frais', 'ar', 'فواكه طازجة');
            PERFORM insert_category_translations('fruits-frais', 'en', 'fresh fruits');
            PERFORM insert_category_translations('fruits-frais', 'de', 'frisches Obst');
            PERFORM insert_category_translations('fruits-frais', 'es', 'frutas frescas');
            PERFORM insert_category_translations('fruits-frais', 'it', 'frutta fresca');

            -- Level 2: legumes-frais
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('legumes-frais', 'legumes-frais', 2, l1_id, 'légumes frais')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('legumes-frais', 'fr', 'légumes frais');
            PERFORM insert_category_translations('legumes-frais', 'ar', 'خضروات طازجة');
            PERFORM insert_category_translations('legumes-frais', 'en', 'fresh vegetables');
            PERFORM insert_category_translations('legumes-frais', 'de', 'frisches Gemüse');
            PERFORM insert_category_translations('legumes-frais', 'es', 'verduras frescas');
            PERFORM insert_category_translations('legumes-frais', 'it', 'verdura fresca');

            -- Level 2: fruits-secs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fruits-secs', 'fruits-secs', 2, l1_id, 'fruits secs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fruits-secs', 'fr', 'fruits secs');
            PERFORM insert_category_translations('fruits-secs', 'ar', 'فواكه مجففة');
            PERFORM insert_category_translations('fruits-secs', 'en', 'dried fruits');
            PERFORM insert_category_translations('fruits-secs', 'de', 'Trockenfrüchte');
            PERFORM insert_category_translations('fruits-secs', 'es', 'frutos secos');
            PERFORM insert_category_translations('fruits-secs', 'it', 'frutta secca');

            -- Level 2: fruits-deshydrates
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fruits-deshydrates', 'fruits-deshydrates', 2, l1_id, 'fruits déshydratés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fruits-deshydrates', 'fr', 'fruits déshydratés');
            PERFORM insert_category_translations('fruits-deshydrates', 'ar', 'فواكه منزوعة الرطوبة');
            PERFORM insert_category_translations('fruits-deshydrates', 'en', 'dehydrated fruits');
            PERFORM insert_category_translations('fruits-deshydrates', 'de', 'dehydrierte Früchte');
            PERFORM insert_category_translations('fruits-deshydrates', 'es', 'frutas deshidratadas');
            PERFORM insert_category_translations('fruits-deshydrates', 'it', 'frutta disidratata');

            -- Level 2: legumes-bio
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('legumes-bio', 'legumes-bio', 2, l1_id, 'légumes biologiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('legumes-bio', 'fr', 'légumes biologiques');
            PERFORM insert_category_translations('legumes-bio', 'ar', 'خضروات عضوية');
            PERFORM insert_category_translations('legumes-bio', 'en', 'organic vegetables');
            PERFORM insert_category_translations('legumes-bio', 'de', 'Bio-Gemüse');
            PERFORM insert_category_translations('legumes-bio', 'es', 'verduras orgánicas');
            PERFORM insert_category_translations('legumes-bio', 'it', 'verdure biologiche');

            -- Level 2: produits-de-saison
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-de-saison', 'produits-de-saison', 2, l1_id, 'produits de saison')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('produits-de-saison', 'fr', 'produits de saison');
            PERFORM insert_category_translations('produits-de-saison', 'ar', 'منتجات موسمية');
            PERFORM insert_category_translations('produits-de-saison', 'en', 'seasonal produce');
            PERFORM insert_category_translations('produits-de-saison', 'de', 'Saisonprodukte');
            PERFORM insert_category_translations('produits-de-saison', 'es', 'productos de temporada');
            PERFORM insert_category_translations('produits-de-saison', 'it', 'prodotti di stagione');

        -- Level 1: boulangerie-patisserie
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('boulangerie-patisserie', 'boulangerie-patisserie', 1, root_id, 'Boulangerie & pâtisserie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('boulangerie-patisserie', 'fr', 'Boulangerie & pâtisserie');
        PERFORM insert_category_translations('boulangerie-patisserie', 'ar', 'مخبوزات و حلويات');
        PERFORM insert_category_translations('boulangerie-patisserie', 'en', 'Bakery & Pastry');
        PERFORM insert_category_translations('boulangerie-patisserie', 'de', 'Bäckerei & Konditorei');
        PERFORM insert_category_translations('boulangerie-patisserie', 'es', 'Panadería y pastelería');
        PERFORM insert_category_translations('boulangerie-patisserie', 'it', 'Panetteria e pasticceria');

            -- Level 2: pains
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pains', 'pains', 2, l1_id, 'pains')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pains', 'fr', 'pains');
            PERFORM insert_category_translations('pains', 'ar', 'خبز');
            PERFORM insert_category_translations('pains', 'en', 'breads');
            PERFORM insert_category_translations('pains', 'de', 'Brote');
            PERFORM insert_category_translations('pains', 'es', 'panes');
            PERFORM insert_category_translations('pains', 'it', 'pani');

            -- Level 2: baguettes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('baguettes', 'baguettes', 2, l1_id, 'baguettes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('baguettes', 'fr', 'baguettes');
            PERFORM insert_category_translations('baguettes', 'ar', 'باغيت');
            PERFORM insert_category_translations('baguettes', 'en', 'baguettes');
            PERFORM insert_category_translations('baguettes', 'de', 'baguettes');
            PERFORM insert_category_translations('baguettes', 'es', 'baguettes');
            PERFORM insert_category_translations('baguettes', 'it', 'baguettes');

            -- Level 2: croissants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('croissants', 'croissants', 2, l1_id, 'croissants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('croissants', 'fr', 'croissants');
            PERFORM insert_category_translations('croissants', 'ar', 'كرواسون');
            PERFORM insert_category_translations('croissants', 'en', 'croissants');
            PERFORM insert_category_translations('croissants', 'de', 'croissants');
            PERFORM insert_category_translations('croissants', 'es', 'croissants');
            PERFORM insert_category_translations('croissants', 'it', 'croissants');

            -- Level 2: brioches
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('brioches', 'brioches', 2, l1_id, 'brioches')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('brioches', 'fr', 'brioches');
            PERFORM insert_category_translations('brioches', 'ar', 'بريوش');
            PERFORM insert_category_translations('brioches', 'en', 'brioche');
            PERFORM insert_category_translations('brioches', 'de', 'Brioche');
            PERFORM insert_category_translations('brioches', 'es', 'brioche');
            PERFORM insert_category_translations('brioches', 'it', 'brioche');

            -- Level 2: patisseries-locales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('patisseries-locales', 'patisseries-locales', 2, l1_id, 'pâtisseries locales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('patisseries-locales', 'fr', 'pâtisseries locales');
            PERFORM insert_category_translations('patisseries-locales', 'ar', 'حلويات محلية');
            PERFORM insert_category_translations('patisseries-locales', 'en', 'local pastries');
            PERFORM insert_category_translations('patisseries-locales', 'de', 'lokales Gebäck');
            PERFORM insert_category_translations('patisseries-locales', 'es', 'pastelería local');
            PERFORM insert_category_translations('patisseries-locales', 'it', 'pasticceria locale');

            -- Level 2: gateaux-patisserie
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gateaux-patisserie', 'gateaux-patisserie', 2, l1_id, 'gâteaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gateaux-patisserie', 'fr', 'gâteaux');
            PERFORM insert_category_translations('gateaux-patisserie', 'ar', 'كعك');
            PERFORM insert_category_translations('gateaux-patisserie', 'en', 'cakes');
            PERFORM insert_category_translations('gateaux-patisserie', 'de', 'Kuchen');
            PERFORM insert_category_translations('gateaux-patisserie', 'es', 'pasteles');
            PERFORM insert_category_translations('gateaux-patisserie', 'it', 'torte');

            -- Level 2: biscuits-artisanaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('biscuits-artisanaux', 'biscuits-artisanaux', 2, l1_id, 'biscuits artisanaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('biscuits-artisanaux', 'fr', 'biscuits artisanaux');
            PERFORM insert_category_translations('biscuits-artisanaux', 'ar', 'بسكويت مصنوع يدويًا');
            PERFORM insert_category_translations('biscuits-artisanaux', 'en', 'artisanal biscuits');
            PERFORM insert_category_translations('biscuits-artisanaux', 'de', 'handwerkliche Kekse');
            PERFORM insert_category_translations('biscuits-artisanaux', 'es', 'galletas artesanales');
            PERFORM insert_category_translations('biscuits-artisanaux', 'it', 'biscotti artigianali');

            -- Level 2: viennoiseries
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('viennoiseries', 'viennoiseries', 2, l1_id, 'viennoiseries')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('viennoiseries', 'fr', 'viennoiseries');
            PERFORM insert_category_translations('viennoiseries', 'ar', 'معجنات');
            PERFORM insert_category_translations('viennoiseries', 'en', 'viennoiseries');
            PERFORM insert_category_translations('viennoiseries', 'de', 'feine Backwaren');
            PERFORM insert_category_translations('viennoiseries', 'es', 'bollería');
            PERFORM insert_category_translations('viennoiseries', 'it', 'viennoiserie');

        -- Level 1: produits-laitiers
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-laitiers', 'produits-laitiers', 1, root_id, 'Produits laitiers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('produits-laitiers', 'fr', 'Produits laitiers');
        PERFORM insert_category_translations('produits-laitiers', 'ar', 'منتجات ألبان');
        PERFORM insert_category_translations('produits-laitiers', 'en', 'Dairy Products');
        PERFORM insert_category_translations('produits-laitiers', 'de', 'Milchprodukte');
        PERFORM insert_category_translations('produits-laitiers', 'es', 'Lácteos');
        PERFORM insert_category_translations('produits-laitiers', 'it', 'Prodotti lattiero-caseari');

            -- Level 2: lait-produit
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lait-produit', 'lait-produit', 2, l1_id, 'lait')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lait-produit', 'fr', 'lait');
            PERFORM insert_category_translations('lait-produit', 'ar', 'حليب');
            PERFORM insert_category_translations('lait-produit', 'en', 'milk');
            PERFORM insert_category_translations('lait-produit', 'de', 'Milch');
            PERFORM insert_category_translations('lait-produit', 'es', 'leche');
            PERFORM insert_category_translations('lait-produit', 'it', 'latte');

            -- Level 2: fromage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fromage', 'fromage', 2, l1_id, 'fromage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fromage', 'fr', 'fromage');
            PERFORM insert_category_translations('fromage', 'ar', 'جبن');
            PERFORM insert_category_translations('fromage', 'en', 'cheese');
            PERFORM insert_category_translations('fromage', 'de', 'Käse');
            PERFORM insert_category_translations('fromage', 'es', 'queso');
            PERFORM insert_category_translations('fromage', 'it', 'formaggio');

            -- Level 2: yaourt
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('yaourt', 'yaourt', 2, l1_id, 'yaourt')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('yaourt', 'fr', 'yaourt');
            PERFORM insert_category_translations('yaourt', 'ar', 'زبادي');
            PERFORM insert_category_translations('yaourt', 'en', 'yogurt');
            PERFORM insert_category_translations('yaourt', 'de', 'Joghurt');
            PERFORM insert_category_translations('yaourt', 'es', 'yogur');
            PERFORM insert_category_translations('yaourt', 'it', 'yogurt');

            -- Level 2: creme-fraiche
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('creme-fraiche', 'creme-fraiche', 2, l1_id, 'crème fraîche')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('creme-fraiche', 'fr', 'crème fraîche');
            PERFORM insert_category_translations('creme-fraiche', 'ar', 'كريمة طازجة');
            PERFORM insert_category_translations('creme-fraiche', 'en', 'crème fraîche');
            PERFORM insert_category_translations('creme-fraiche', 'de', 'Crème fraîche');
            PERFORM insert_category_translations('creme-fraiche', 'es', 'crema fresca');
            PERFORM insert_category_translations('creme-fraiche', 'it', 'crème fraîche');

            -- Level 2: beurre-produit
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('beurre-produit', 'beurre-produit', 2, l1_id, 'beurre')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('beurre-produit', 'fr', 'beurre');
            PERFORM insert_category_translations('beurre-produit', 'ar', 'زبدة');
            PERFORM insert_category_translations('beurre-produit', 'en', 'butter');
            PERFORM insert_category_translations('beurre-produit', 'de', 'Butter');
            PERFORM insert_category_translations('beurre-produit', 'es', 'mantequilla');
            PERFORM insert_category_translations('beurre-produit', 'it', 'burro');

            -- Level 2: fromages-locaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fromages-locaux', 'fromages-locaux', 2, l1_id, 'fromages locaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fromages-locaux', 'fr', 'fromages locaux');
            PERFORM insert_category_translations('fromages-locaux', 'ar', 'أجبان محلية');
            PERFORM insert_category_translations('fromages-locaux', 'en', 'local cheeses');
            PERFORM insert_category_translations('fromages-locaux', 'de', 'lokale Käsesorten');
            PERFORM insert_category_translations('fromages-locaux', 'es', 'quesos locales');
            PERFORM insert_category_translations('fromages-locaux', 'it', 'formaggi locali');

            -- Level 2: fromages-europeens
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fromages-europeens', 'fromages-europeens', 2, l1_id, 'fromages européens')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fromages-europeens', 'fr', 'fromages européens');
            PERFORM insert_category_translations('fromages-europeens', 'ar', 'أجبان أوروبية');
            PERFORM insert_category_translations('fromages-europeens', 'en', 'European cheeses');
            PERFORM insert_category_translations('fromages-europeens', 'de', 'europäische Käsesorten');
            PERFORM insert_category_translations('fromages-europeens', 'es', 'quesos europeos');
            PERFORM insert_category_translations('fromages-europeens', 'it', 'formaggi europei');

        -- Level 1: huiles-condiments
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('huiles-condiments', 'huiles-condiments', 1, root_id, 'Huiles & condiments')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('huiles-condiments', 'fr', 'Huiles & condiments');
        PERFORM insert_category_translations('huiles-condiments', 'ar', 'زيوت وتوابل');
        PERFORM insert_category_translations('huiles-condiments', 'en', 'Oils & Condiments');
        PERFORM insert_category_translations('huiles-condiments', 'de', 'Öle & Würzmittel');
        PERFORM insert_category_translations('huiles-condiments', 'es', 'Aceites y condimentos');
        PERFORM insert_category_translations('huiles-condiments', 'it', 'Oli e condimenti');

            -- Level 2: huile-olive
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('huile-olive', 'huile-olive', 2, l1_id, 'huile d’olive')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('huile-olive', 'fr', 'huile d’olive');
            PERFORM insert_category_translations('huile-olive', 'ar', 'زيت زيتون');
            PERFORM insert_category_translations('huile-olive', 'en', 'olive oil');
            PERFORM insert_category_translations('huile-olive', 'de', 'Olivenöl');
            PERFORM insert_category_translations('huile-olive', 'es', 'aceite de oliva');
            PERFORM insert_category_translations('huile-olive', 'it', 'olio d’oliva');

            -- Level 2: huile-tournesol
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('huile-tournesol', 'huile-tournesol', 2, l1_id, 'huile de tournesol')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('huile-tournesol', 'fr', 'huile de tournesol');
            PERFORM insert_category_translations('huile-tournesol', 'ar', 'زيت دوّار الشمس');
            PERFORM insert_category_translations('huile-tournesol', 'en', 'sunflower oil');
            PERFORM insert_category_translations('huile-tournesol', 'de', 'Sonnenblumenöl');
            PERFORM insert_category_translations('huile-tournesol', 'es', 'aceite de girasol');
            PERFORM insert_category_translations('huile-tournesol', 'it', 'olio di girasole');

            -- Level 2: vinaigre
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vinaigre', 'vinaigre', 2, l1_id, 'vinaigre')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('vinaigre', 'fr', 'vinaigre');
            PERFORM insert_category_translations('vinaigre', 'ar', 'خل');
            PERFORM insert_category_translations('vinaigre', 'en', 'vinegar');
            PERFORM insert_category_translations('vinaigre', 'de', 'Essig');
            PERFORM insert_category_translations('vinaigre', 'es', 'vinagre');
            PERFORM insert_category_translations('vinaigre', 'it', 'aceto');

            -- Level 2: moutarde
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('moutarde', 'moutarde', 2, l1_id, 'moutarde')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('moutarde', 'fr', 'moutarde');
            PERFORM insert_category_translations('moutarde', 'ar', 'خردل');
            PERFORM insert_category_translations('moutarde', 'en', 'mustard');
            PERFORM insert_category_translations('moutarde', 'de', 'Senf');
            PERFORM insert_category_translations('moutarde', 'es', 'mostaza');
            PERFORM insert_category_translations('moutarde', 'it', 'senape');

            -- Level 2: mayonnaise
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mayonnaise', 'mayonnaise', 2, l1_id, 'mayonnaise')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mayonnaise', 'fr', 'mayonnaise');
            PERFORM insert_category_translations('mayonnaise', 'ar', 'مايونيز');
            PERFORM insert_category_translations('mayonnaise', 'en', 'mayonnaise');
            PERFORM insert_category_translations('mayonnaise', 'de', 'Mayonnaise');
            PERFORM insert_category_translations('mayonnaise', 'es', 'mayonesa');
            PERFORM insert_category_translations('mayonnaise', 'it', 'maionese');

            -- Level 2: sauces-condiments
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sauces-condiments', 'sauces-condiments', 2, l1_id, 'sauces')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sauces-condiments', 'fr', 'sauces');
            PERFORM insert_category_translations('sauces-condiments', 'ar', 'صلصات');
            PERFORM insert_category_translations('sauces-condiments', 'en', 'sauces');
            PERFORM insert_category_translations('sauces-condiments', 'de', 'Saucen');
            PERFORM insert_category_translations('sauces-condiments', 'es', 'salsas');
            PERFORM insert_category_translations('sauces-condiments', 'it', 'salse');

            -- Level 2: epices-condiments
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('epices-condiments', 'epices-condiments', 2, l1_id, 'épices')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('epices-condiments', 'fr', 'épices');
            PERFORM insert_category_translations('epices-condiments', 'ar', 'توابل');
            PERFORM insert_category_translations('epices-condiments', 'en', 'spices');
            PERFORM insert_category_translations('epices-condiments', 'de', 'Gewürze');
            PERFORM insert_category_translations('epices-condiments', 'es', 'especias');
            PERFORM insert_category_translations('epices-condiments', 'it', 'spezie');

            -- Level 2: herbes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('herbes', 'herbes', 2, l1_id, 'herbes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('herbes', 'fr', 'herbes');
            PERFORM insert_category_translations('herbes', 'ar', 'أعشاب');
            PERFORM insert_category_translations('herbes', 'en', 'herbs');
            PERFORM insert_category_translations('herbes', 'de', 'Kräuter');
            PERFORM insert_category_translations('herbes', 'es', 'hierbas');
            PERFORM insert_category_translations('herbes', 'it', 'erbe');

            -- Level 2: aromates
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('aromates', 'aromates', 2, l1_id, 'aromates')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('aromates', 'fr', 'aromates');
            PERFORM insert_category_translations('aromates', 'ar', 'منكّهات');
            PERFORM insert_category_translations('aromates', 'en', 'aromatics');
            PERFORM insert_category_translations('aromates', 'de', 'Aromen');
            PERFORM insert_category_translations('aromates', 'es', 'aromatizantes');
            PERFORM insert_category_translations('aromates', 'it', 'aromi');

            -- Level 2: bouillons
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bouillons', 'bouillons', 2, l1_id, 'bouillons')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bouillons', 'fr', 'bouillons');
            PERFORM insert_category_translations('bouillons', 'ar', 'مرق');
            PERFORM insert_category_translations('bouillons', 'en', 'broths');
            PERFORM insert_category_translations('bouillons', 'de', 'Brühen');
            PERFORM insert_category_translations('bouillons', 'es', 'caldos');
            PERFORM insert_category_translations('bouillons', 'it', 'brodi');

        -- Level 1: epices-assaisonnements
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('epices-assaisonnements', 'epices-assaisonnements', 1, root_id, 'Épices & assaisonnements')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('epices-assaisonnements', 'fr', 'Épices & assaisonnements');
        PERFORM insert_category_translations('epices-assaisonnements', 'ar', 'بهارات وتتبيلات');
        PERFORM insert_category_translations('epices-assaisonnements', 'en', 'Spices & Seasonings');
        PERFORM insert_category_translations('epices-assaisonnements', 'de', 'Gewürze & Würzungen');
        PERFORM insert_category_translations('epices-assaisonnements', 'es', 'Especias y sazonadores');
        PERFORM insert_category_translations('epices-assaisonnements', 'it', 'Spezie e condimenti');

            -- Level 2: sel
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sel', 'sel', 2, l1_id, 'sel')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sel', 'fr', 'sel');
            PERFORM insert_category_translations('sel', 'ar', 'ملح');
            PERFORM insert_category_translations('sel', 'en', 'salt');
            PERFORM insert_category_translations('sel', 'de', 'Salz');
            PERFORM insert_category_translations('sel', 'es', 'sal');
            PERFORM insert_category_translations('sel', 'it', 'sale');

            -- Level 2: poivre
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('poivre', 'poivre', 2, l1_id, 'poivre')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('poivre', 'fr', 'poivre');
            PERFORM insert_category_translations('poivre', 'ar', 'فلفل');
            PERFORM insert_category_translations('poivre', 'en', 'pepper');
            PERFORM insert_category_translations('poivre', 'de', 'Pfeffer');
            PERFORM insert_category_translations('poivre', 'es', 'pimienta');
            PERFORM insert_category_translations('poivre', 'it', 'pepe');

            -- Level 2: paprika
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('paprika', 'paprika', 2, l1_id, 'paprika')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('paprika', 'fr', 'paprika');
            PERFORM insert_category_translations('paprika', 'ar', 'paprika');
            PERFORM insert_category_translations('paprika', 'en', 'paprika');
            PERFORM insert_category_translations('paprika', 'de', 'paprika');
            PERFORM insert_category_translations('paprika', 'es', 'paprika');
            PERFORM insert_category_translations('paprika', 'it', 'paprika');

            -- Level 2: cumin
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cumin', 'cumin', 2, l1_id, 'cumin')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cumin', 'fr', 'cumin');
            PERFORM insert_category_translations('cumin', 'ar', 'كمون');
            PERFORM insert_category_translations('cumin', 'en', 'cumin');
            PERFORM insert_category_translations('cumin', 'de', 'Kreuzkümmel');
            PERFORM insert_category_translations('cumin', 'es', 'comino');
            PERFORM insert_category_translations('cumin', 'it', 'cumino');

            -- Level 2: curcuma
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('curcuma', 'curcuma', 2, l1_id, 'curcuma')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('curcuma', 'fr', 'curcuma');
            PERFORM insert_category_translations('curcuma', 'ar', 'كركم');
            PERFORM insert_category_translations('curcuma', 'en', 'turmeric');
            PERFORM insert_category_translations('curcuma', 'de', 'Kurkuma');
            PERFORM insert_category_translations('curcuma', 'es', 'cúrcuma');
            PERFORM insert_category_translations('curcuma', 'it', 'curcuma');

            -- Level 2: epices-orientales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('epices-orientales', 'epices-orientales', 2, l1_id, 'épices orientales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('epices-orientales', 'fr', 'épices orientales');
            PERFORM insert_category_translations('epices-orientales', 'ar', 'توابل شرقية');
            PERFORM insert_category_translations('epices-orientales', 'en', 'oriental spices');
            PERFORM insert_category_translations('epices-orientales', 'de', 'orientalische Gewürze');
            PERFORM insert_category_translations('epices-orientales', 'es', 'especias orientales');
            PERFORM insert_category_translations('epices-orientales', 'it', 'spezie orientali');

            -- Level 2: melanges-prets
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('melanges-prets', 'melanges-prets', 2, l1_id, 'mélanges prêts')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('melanges-prets', 'fr', 'mélanges prêts');
            PERFORM insert_category_translations('melanges-prets', 'ar', 'خلطات جاهزة');
            PERFORM insert_category_translations('melanges-prets', 'en', 'ready blends');
            PERFORM insert_category_translations('melanges-prets', 'de', 'Gewürzmischungen');
            PERFORM insert_category_translations('melanges-prets', 'es', 'mezclas preparadas');
            PERFORM insert_category_translations('melanges-prets', 'it', 'miscele pronte');

            -- Level 2: assaisonnements-barbecue
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('assaisonnements-barbecue', 'assaisonnements-barbecue', 2, l1_id, 'assaisonnements barbecue')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('assaisonnements-barbecue', 'fr', 'assaisonnements barbecue');
            PERFORM insert_category_translations('assaisonnements-barbecue', 'ar', 'تتبيلات شواء');
            PERFORM insert_category_translations('assaisonnements-barbecue', 'en', 'barbecue seasonings');
            PERFORM insert_category_translations('assaisonnements-barbecue', 'de', 'Barbecue-Würzungen');
            PERFORM insert_category_translations('assaisonnements-barbecue', 'es', 'sazonadores para barbacoa');
            PERFORM insert_category_translations('assaisonnements-barbecue', 'it', 'condimenti barbecue');

        -- Level 1: boissons
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('boissons', 'boissons', 1, root_id, 'Boissons')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('boissons', 'fr', 'Boissons');
        PERFORM insert_category_translations('boissons', 'ar', 'مشروبات');
        PERFORM insert_category_translations('boissons', 'en', 'Beverages');
        PERFORM insert_category_translations('boissons', 'de', 'Getränke');
        PERFORM insert_category_translations('boissons', 'es', 'Bebidas');
        PERFORM insert_category_translations('boissons', 'it', 'Bevande');

            -- Level 2: eaux-minerales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('eaux-minerales', 'eaux-minerales', 2, l1_id, 'eaux minérales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('eaux-minerales', 'fr', 'eaux minérales');
            PERFORM insert_category_translations('eaux-minerales', 'ar', 'مياه معدنية');
            PERFORM insert_category_translations('eaux-minerales', 'en', 'mineral water');
            PERFORM insert_category_translations('eaux-minerales', 'de', 'Mineralwasser');
            PERFORM insert_category_translations('eaux-minerales', 'es', 'agua mineral');
            PERFORM insert_category_translations('eaux-minerales', 'it', 'acqua minerale');

            -- Level 2: boissons-gazeuses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('boissons-gazeuses', 'boissons-gazeuses', 2, l1_id, 'boissons gazeuses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('boissons-gazeuses', 'fr', 'boissons gazeuses');
            PERFORM insert_category_translations('boissons-gazeuses', 'ar', 'مشروبات غازية');
            PERFORM insert_category_translations('boissons-gazeuses', 'en', 'soft drinks');
            PERFORM insert_category_translations('boissons-gazeuses', 'de', 'Erfrischungsgetränke');
            PERFORM insert_category_translations('boissons-gazeuses', 'es', 'refrescos');
            PERFORM insert_category_translations('boissons-gazeuses', 'it', 'bibite gassate');

            -- Level 2: jus
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jus', 'jus', 2, l1_id, 'jus')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('jus', 'fr', 'jus');
            PERFORM insert_category_translations('jus', 'ar', 'عصائر');
            PERFORM insert_category_translations('jus', 'en', 'juices');
            PERFORM insert_category_translations('jus', 'de', 'Säfte');
            PERFORM insert_category_translations('jus', 'es', 'jugos');
            PERFORM insert_category_translations('jus', 'it', 'succhi');

            -- Level 2: boissons-energetiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('boissons-energetiques', 'boissons-energetiques', 2, l1_id, 'boissons énergétiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('boissons-energetiques', 'fr', 'boissons énergétiques');
            PERFORM insert_category_translations('boissons-energetiques', 'ar', 'مشروبات الطاقة');
            PERFORM insert_category_translations('boissons-energetiques', 'en', 'energy drinks');
            PERFORM insert_category_translations('boissons-energetiques', 'de', 'Energy-Drinks');
            PERFORM insert_category_translations('boissons-energetiques', 'es', 'bebidas energéticas');
            PERFORM insert_category_translations('boissons-energetiques', 'it', 'bevande energetiche');

            -- Level 2: thes-glaces
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('thes-glaces', 'thes-glaces', 2, l1_id, 'thés glacés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('thes-glaces', 'fr', 'thés glacés');
            PERFORM insert_category_translations('thes-glaces', 'ar', 'شاي مثلج');
            PERFORM insert_category_translations('thes-glaces', 'en', 'iced teas');
            PERFORM insert_category_translations('thes-glaces', 'de', 'Eistees');
            PERFORM insert_category_translations('thes-glaces', 'es', 'tés helados');
            PERFORM insert_category_translations('thes-glaces', 'it', 'tè freddi');

            -- Level 2: infusions-prêtes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('infusions-prêtes', 'infusions-pretes-a-boire', 2, l1_id, 'infusions prêtes à boire')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('infusions-prêtes', 'fr', 'infusions prêtes à boire');
            PERFORM insert_category_translations('infusions-prêtes', 'ar', 'مشروبات عشبية جاهزة');
            PERFORM insert_category_translations('infusions-prêtes', 'en', 'ready-to-drink infusions');
            PERFORM insert_category_translations('infusions-prêtes', 'de', 'Trinkfertige Aufgüsse');
            PERFORM insert_category_translations('infusions-prêtes', 'es', 'infusiones listas para beber');
            PERFORM insert_category_translations('infusions-prêtes', 'it', 'infusi pronti da bere');

        -- Level 1: cafe-the
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cafe-the', 'cafe-the', 1, root_id, 'Café & thé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('cafe-the', 'fr', 'Café & thé');
        PERFORM insert_category_translations('cafe-the', 'ar', 'قهوة و شاي');
        PERFORM insert_category_translations('cafe-the', 'en', 'Coffee & Tea');
        PERFORM insert_category_translations('cafe-the', 'de', 'Kaffee & Tee');
        PERFORM insert_category_translations('cafe-the', 'es', 'Café y té');
        PERFORM insert_category_translations('cafe-the', 'it', 'Caffè e tè');

            -- Level 2: cafe-moulu
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cafe-moulu', 'cafe-moulu', 2, l1_id, 'café moulu')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cafe-moulu', 'fr', 'café moulu');
            PERFORM insert_category_translations('cafe-moulu', 'ar', 'قهوة مطحونة');
            PERFORM insert_category_translations('cafe-moulu', 'en', 'ground coffee');
            PERFORM insert_category_translations('cafe-moulu', 'de', 'gemahlener Kaffee');
            PERFORM insert_category_translations('cafe-moulu', 'es', 'café molido');
            PERFORM insert_category_translations('cafe-moulu', 'it', 'caffè macinato');

            -- Level 2: cafe-en-grains
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cafe-en-grains', 'cafe-en-grains', 2, l1_id, 'café en grains')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cafe-en-grains', 'fr', 'café en grains');
            PERFORM insert_category_translations('cafe-en-grains', 'ar', 'حبوب قهوة');
            PERFORM insert_category_translations('cafe-en-grains', 'en', 'coffee beans');
            PERFORM insert_category_translations('cafe-en-grains', 'de', 'Kaffeebohnen');
            PERFORM insert_category_translations('cafe-en-grains', 'es', 'café en grano');
            PERFORM insert_category_translations('cafe-en-grains', 'it', 'chicchi di caffè');

            -- Level 2: capsules
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('capsules', 'capsules', 2, l1_id, 'capsules')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('capsules', 'fr', 'capsules');
            PERFORM insert_category_translations('capsules', 'ar', 'كبسولات');
            PERFORM insert_category_translations('capsules', 'en', 'capsules');
            PERFORM insert_category_translations('capsules', 'de', 'capsules');
            PERFORM insert_category_translations('capsules', 'es', 'capsules');
            PERFORM insert_category_translations('capsules', 'it', 'capsules');

            -- Level 2: cafe-instantane
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cafe-instantane', 'cafe-instantane', 2, l1_id, 'café instantané')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cafe-instantane', 'fr', 'café instantané');
            PERFORM insert_category_translations('cafe-instantane', 'ar', 'قهوة سريعة التحضير');
            PERFORM insert_category_translations('cafe-instantane', 'en', 'instant coffee');
            PERFORM insert_category_translations('cafe-instantane', 'de', 'Instantkaffee');
            PERFORM insert_category_translations('cafe-instantane', 'es', 'café instantáneo');
            PERFORM insert_category_translations('cafe-instantane', 'it', 'caffè solubile');

            -- Level 2: thes-verts
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('thes-verts', 'thes-verts', 2, l1_id, 'thés verts')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('thes-verts', 'fr', 'thés verts');
            PERFORM insert_category_translations('thes-verts', 'ar', 'شاي أخضر');
            PERFORM insert_category_translations('thes-verts', 'en', 'green teas');
            PERFORM insert_category_translations('thes-verts', 'de', 'Grüntees');
            PERFORM insert_category_translations('thes-verts', 'es', 'tés verdes');
            PERFORM insert_category_translations('thes-verts', 'it', 'tè verdi');

            -- Level 2: thes-noirs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('thes-noirs', 'thes-noirs', 2, l1_id, 'thés noirs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('thes-noirs', 'fr', 'thés noirs');
            PERFORM insert_category_translations('thes-noirs', 'ar', 'شاي أسود');
            PERFORM insert_category_translations('thes-noirs', 'en', 'black teas');
            PERFORM insert_category_translations('thes-noirs', 'de', 'Schwarztees');
            PERFORM insert_category_translations('thes-noirs', 'es', 'tés negros');
            PERFORM insert_category_translations('thes-noirs', 'it', 'tè neri');

            -- Level 2: infusions
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('infusions', 'infusions', 2, l1_id, 'infusions')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('infusions', 'fr', 'infusions');
            PERFORM insert_category_translations('infusions', 'ar', 'منقوعات');
            PERFORM insert_category_translations('infusions', 'en', 'infusions');
            PERFORM insert_category_translations('infusions', 'de', 'Aufgüsse');
            PERFORM insert_category_translations('infusions', 'es', 'infusiones');
            PERFORM insert_category_translations('infusions', 'it', 'infusi');

            -- Level 2: tisanes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tisanes', 'tisanes', 2, l1_id, 'tisanes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tisanes', 'fr', 'tisanes');
            PERFORM insert_category_translations('tisanes', 'ar', 'أعشاب');
            PERFORM insert_category_translations('tisanes', 'en', 'herbal teas');
            PERFORM insert_category_translations('tisanes', 'de', 'Kräutertees');
            PERFORM insert_category_translations('tisanes', 'es', 'tisanas');
            PERFORM insert_category_translations('tisanes', 'it', 'tisane');

            -- Level 2: accessoires-cafe-the
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-cafe-the', 'accessoires-cafe-the', 2, l1_id, 'accessoires café/thé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('accessoires-cafe-the', 'fr', 'accessoires café/thé');
            PERFORM insert_category_translations('accessoires-cafe-the', 'ar', 'مستلزمات القهوة/الشاي');
            PERFORM insert_category_translations('accessoires-cafe-the', 'en', 'coffee/tea accessories');
            PERFORM insert_category_translations('accessoires-cafe-the', 'de', 'Kaffee/Tee Zubehör');
            PERFORM insert_category_translations('accessoires-cafe-the', 'es', 'accesorios de café/té');
            PERFORM insert_category_translations('accessoires-cafe-the', 'it', 'accessori per caffè/tè');

        -- Level 1: produits-bio-naturels
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-bio-naturels', 'produits-bio-naturels', 1, root_id, 'Produits bio & naturels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('produits-bio-naturels', 'fr', 'Produits bio & naturels');
        PERFORM insert_category_translations('produits-bio-naturels', 'ar', 'منتجات عضوية وطبيعية');
        PERFORM insert_category_translations('produits-bio-naturels', 'en', 'Organic & Natural');
        PERFORM insert_category_translations('produits-bio-naturels', 'de', 'Bio & Naturprodukte');
        PERFORM insert_category_translations('produits-bio-naturels', 'es', 'Orgánicos y naturales');
        PERFORM insert_category_translations('produits-bio-naturels', 'it', 'Bio e naturali');

            -- Level 2: aliments-bio
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('aliments-bio', 'aliments-bio', 2, l1_id, 'aliments bio')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('aliments-bio', 'fr', 'aliments bio');
            PERFORM insert_category_translations('aliments-bio', 'ar', 'أطعمة عضوية');
            PERFORM insert_category_translations('aliments-bio', 'en', 'organic foods');
            PERFORM insert_category_translations('aliments-bio', 'de', 'Bio-Lebensmittel');
            PERFORM insert_category_translations('aliments-bio', 'es', 'alimentos orgánicos');
            PERFORM insert_category_translations('aliments-bio', 'it', 'alimenti biologici');

            -- Level 2: graines
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('graines', 'graines', 2, l1_id, 'graines')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('graines', 'fr', 'graines');
            PERFORM insert_category_translations('graines', 'ar', 'بذور');
            PERFORM insert_category_translations('graines', 'en', 'seeds');
            PERFORM insert_category_translations('graines', 'de', 'Samen');
            PERFORM insert_category_translations('graines', 'es', 'semillas');
            PERFORM insert_category_translations('graines', 'it', 'semi');

            -- Level 2: superfoods
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('superfoods', 'superfoods', 2, l1_id, 'superfoods')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('superfoods', 'fr', 'superfoods');
            PERFORM insert_category_translations('superfoods', 'ar', 'superfoods');
            PERFORM insert_category_translations('superfoods', 'en', 'superfoods');
            PERFORM insert_category_translations('superfoods', 'de', 'superfoods');
            PERFORM insert_category_translations('superfoods', 'es', 'superfoods');
            PERFORM insert_category_translations('superfoods', 'it', 'superfoods');

            -- Level 2: farines-bio
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('farines-bio', 'farines-bio', 2, l1_id, 'farines bio')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('farines-bio', 'fr', 'farines bio');
            PERFORM insert_category_translations('farines-bio', 'ar', 'دقيق عضوي');
            PERFORM insert_category_translations('farines-bio', 'en', 'organic flours');
            PERFORM insert_category_translations('farines-bio', 'de', 'Bio-Mehle');
            PERFORM insert_category_translations('farines-bio', 'es', 'harinas orgánicas');
            PERFORM insert_category_translations('farines-bio', 'it', 'farine biologiche');

            -- Level 2: huiles-naturelles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('huiles-naturelles', 'huiles-naturelles', 2, l1_id, 'huiles naturelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('huiles-naturelles', 'fr', 'huiles naturelles');
            PERFORM insert_category_translations('huiles-naturelles', 'ar', 'زيوت طبيعية');
            PERFORM insert_category_translations('huiles-naturelles', 'en', 'natural oils');
            PERFORM insert_category_translations('huiles-naturelles', 'de', 'natürliche Öle');
            PERFORM insert_category_translations('huiles-naturelles', 'es', 'aceites naturales');
            PERFORM insert_category_translations('huiles-naturelles', 'it', 'oli naturali');

            -- Level 2: produits-sans-additifs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-sans-additifs', 'produits-sans-additifs', 2, l1_id, 'produits naturels sans additifs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('produits-sans-additifs', 'fr', 'produits naturels sans additifs');
            PERFORM insert_category_translations('produits-sans-additifs', 'ar', 'منتجات بلا إضافات');
            PERFORM insert_category_translations('produits-sans-additifs', 'en', 'additive-free products');
            PERFORM insert_category_translations('produits-sans-additifs', 'de', 'Produkte ohne Zusatzstoffe');
            PERFORM insert_category_translations('produits-sans-additifs', 'es', 'productos sin aditivos');
            PERFORM insert_category_translations('produits-sans-additifs', 'it', 'prodotti senza additivi');

        -- Level 1: produits-orientaux-traditionnels
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-orientaux-traditionnels', 'produits-orientaux-traditionnels', 1, root_id, 'Produits orientaux & traditionnels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('produits-orientaux-traditionnels', 'fr', 'Produits orientaux & traditionnels');
        PERFORM insert_category_translations('produits-orientaux-traditionnels', 'ar', 'منتجات شرقية وتقليدية');
        PERFORM insert_category_translations('produits-orientaux-traditionnels', 'en', 'Oriental & Traditional');
        PERFORM insert_category_translations('produits-orientaux-traditionnels', 'de', 'Orientalische & traditionelle Produkte');
        PERFORM insert_category_translations('produits-orientaux-traditionnels', 'es', 'Orientales y tradicionales');
        PERFORM insert_category_translations('produits-orientaux-traditionnels', 'it', 'Orientali e tradizionali');

            -- Level 2: patisseries-orientales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('patisseries-orientales', 'patisseries-orientales', 2, l1_id, 'pâtisseries orientales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('patisseries-orientales', 'fr', 'pâtisseries orientales');
            PERFORM insert_category_translations('patisseries-orientales', 'ar', 'حلويات شرقية');
            PERFORM insert_category_translations('patisseries-orientales', 'en', 'oriental pastries');
            PERFORM insert_category_translations('patisseries-orientales', 'de', 'orientalische Gebäcke');
            PERFORM insert_category_translations('patisseries-orientales', 'es', 'pastelería oriental');
            PERFORM insert_category_translations('patisseries-orientales', 'it', 'pasticceria orientale');

            -- Level 2: dattes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('dattes', 'dattes', 2, l1_id, 'dattes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('dattes', 'fr', 'dattes');
            PERFORM insert_category_translations('dattes', 'ar', 'تمر');
            PERFORM insert_category_translations('dattes', 'en', 'dates');
            PERFORM insert_category_translations('dattes', 'de', 'Datteln');
            PERFORM insert_category_translations('dattes', 'es', 'dátiles');
            PERFORM insert_category_translations('dattes', 'it', 'datteri');

            -- Level 2: semoule-speciale
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('semoule-speciale', 'semoule-speciale', 2, l1_id, 'semoule spéciale')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('semoule-speciale', 'fr', 'semoule spéciale');
            PERFORM insert_category_translations('semoule-speciale', 'ar', 'سميد خاص');
            PERFORM insert_category_translations('semoule-speciale', 'en', 'special semolina');
            PERFORM insert_category_translations('semoule-speciale', 'de', 'spezieller Grieß');
            PERFORM insert_category_translations('semoule-speciale', 'es', 'sémola especial');
            PERFORM insert_category_translations('semoule-speciale', 'it', 'semola speciale');

            -- Level 2: epices-orientales-trad
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('epices-orientales-trad', 'epices-orientales-trad', 2, l1_id, 'épices orientales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('epices-orientales-trad', 'fr', 'épices orientales');
            PERFORM insert_category_translations('epices-orientales-trad', 'ar', 'توابل شرقية');
            PERFORM insert_category_translations('epices-orientales-trad', 'en', 'oriental spices');
            PERFORM insert_category_translations('epices-orientales-trad', 'de', 'orientalische Gewürze');
            PERFORM insert_category_translations('epices-orientales-trad', 'es', 'especias orientales');
            PERFORM insert_category_translations('epices-orientales-trad', 'it', 'spezie orientali');

            -- Level 2: couscous-artisanal
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('couscous-artisanal', 'couscous-artisanal', 2, l1_id, 'couscous artisanal')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('couscous-artisanal', 'fr', 'couscous artisanal');
            PERFORM insert_category_translations('couscous-artisanal', 'ar', 'كسكس تقليدي');
            PERFORM insert_category_translations('couscous-artisanal', 'en', 'artisanal couscous');
            PERFORM insert_category_translations('couscous-artisanal', 'de', 'handwerklicher Couscous');
            PERFORM insert_category_translations('couscous-artisanal', 'es', 'cuscús artesanal');
            PERFORM insert_category_translations('couscous-artisanal', 'it', 'couscous artigianale');

            -- Level 2: produits-ramadan
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-ramadan', 'produits-ramadan', 2, l1_id, 'produits Ramadan')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('produits-ramadan', 'fr', 'produits Ramadan');
            PERFORM insert_category_translations('produits-ramadan', 'ar', 'منتجات رمضان');
            PERFORM insert_category_translations('produits-ramadan', 'en', 'Ramadan products');
            PERFORM insert_category_translations('produits-ramadan', 'de', 'Ramadan-Produkte');
            PERFORM insert_category_translations('produits-ramadan', 'es', 'productos de Ramadán');
            PERFORM insert_category_translations('produits-ramadan', 'it', 'prodotti Ramadan');

        -- Level 1: snacks-aperitifs
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('snacks-aperitifs', 'snacks-aperitifs', 1, root_id, 'Snacks & apéritifs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('snacks-aperitifs', 'fr', 'Snacks & apéritifs');
        PERFORM insert_category_translations('snacks-aperitifs', 'ar', 'سناكات ومقبلات');
        PERFORM insert_category_translations('snacks-aperitifs', 'en', 'Snacks & Appetizers');
        PERFORM insert_category_translations('snacks-aperitifs', 'de', 'Snacks & Aperitifs');
        PERFORM insert_category_translations('snacks-aperitifs', 'es', 'Snacks y aperitivos');
        PERFORM insert_category_translations('snacks-aperitifs', 'it', 'Snack e antipasti');

            -- Level 2: chips
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chips', 'chips', 2, l1_id, 'chips')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chips', 'fr', 'chips');
            PERFORM insert_category_translations('chips', 'ar', 'chips');
            PERFORM insert_category_translations('chips', 'en', 'chips');
            PERFORM insert_category_translations('chips', 'de', 'chips');
            PERFORM insert_category_translations('chips', 'es', 'chips');
            PERFORM insert_category_translations('chips', 'it', 'chips');

            -- Level 2: biscuits-sales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('biscuits-sales', 'biscuits-sales', 2, l1_id, 'biscuits salés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('biscuits-sales', 'fr', 'biscuits salés');
            PERFORM insert_category_translations('biscuits-sales', 'ar', 'بسكويت مالح');
            PERFORM insert_category_translations('biscuits-sales', 'en', 'savory biscuits');
            PERFORM insert_category_translations('biscuits-sales', 'de', 'herzhafte Kekse');
            PERFORM insert_category_translations('biscuits-sales', 'es', 'galletas saladas');
            PERFORM insert_category_translations('biscuits-sales', 'it', 'biscotti salati');

            -- Level 2: cacahuetes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cacahuetes', 'cacahuetes', 2, l1_id, 'cacahuètes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cacahuetes', 'fr', 'cacahuètes');
            PERFORM insert_category_translations('cacahuetes', 'ar', 'فول سوداني');
            PERFORM insert_category_translations('cacahuetes', 'en', 'peanuts');
            PERFORM insert_category_translations('cacahuetes', 'de', 'Erdnüsse');
            PERFORM insert_category_translations('cacahuetes', 'es', 'cacahuetes');
            PERFORM insert_category_translations('cacahuetes', 'it', 'arachidi');

            -- Level 2: amandes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('amandes', 'amandes', 2, l1_id, 'amandes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('amandes', 'fr', 'amandes');
            PERFORM insert_category_translations('amandes', 'ar', 'لوز');
            PERFORM insert_category_translations('amandes', 'en', 'almonds');
            PERFORM insert_category_translations('amandes', 'de', 'Mandeln');
            PERFORM insert_category_translations('amandes', 'es', 'almendras');
            PERFORM insert_category_translations('amandes', 'it', 'mandorle');

            -- Level 2: pistaches
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pistaches', 'pistaches', 2, l1_id, 'pistaches')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pistaches', 'fr', 'pistaches');
            PERFORM insert_category_translations('pistaches', 'ar', 'فستق');
            PERFORM insert_category_translations('pistaches', 'en', 'pistachios');
            PERFORM insert_category_translations('pistaches', 'de', 'Pistazien');
            PERFORM insert_category_translations('pistaches', 'es', 'pistachos');
            PERFORM insert_category_translations('pistaches', 'it', 'pistacchi');

            -- Level 2: noix-de-cajou
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('noix-de-cajou', 'noix-de-cajou', 2, l1_id, 'noix de cajou')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('noix-de-cajou', 'fr', 'noix de cajou');
            PERFORM insert_category_translations('noix-de-cajou', 'ar', 'كاجو');
            PERFORM insert_category_translations('noix-de-cajou', 'en', 'cashew nuts');
            PERFORM insert_category_translations('noix-de-cajou', 'de', 'Cashewnüsse');
            PERFORM insert_category_translations('noix-de-cajou', 'es', 'anacardos');
            PERFORM insert_category_translations('noix-de-cajou', 'it', 'anacardi');

            -- Level 2: popcorn
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('popcorn', 'popcorn', 2, l1_id, 'popcorn')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('popcorn', 'fr', 'popcorn');
            PERFORM insert_category_translations('popcorn', 'ar', 'popcorn');
            PERFORM insert_category_translations('popcorn', 'en', 'popcorn');
            PERFORM insert_category_translations('popcorn', 'de', 'popcorn');
            PERFORM insert_category_translations('popcorn', 'es', 'popcorn');
            PERFORM insert_category_translations('popcorn', 'it', 'popcorn');

            -- Level 2: olives-assaisonnees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('olives-assaisonnees', 'olives-assaisonnees', 2, l1_id, 'olives assaisonnées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('olives-assaisonnees', 'fr', 'olives assaisonnées');
            PERFORM insert_category_translations('olives-assaisonnees', 'ar', 'زيتون متبل');
            PERFORM insert_category_translations('olives-assaisonnees', 'en', 'seasoned olives');
            PERFORM insert_category_translations('olives-assaisonnees', 'de', 'gewürzte Oliven');
            PERFORM insert_category_translations('olives-assaisonnees', 'es', 'aceitunas sazonadas');
            PERFORM insert_category_translations('olives-assaisonnees', 'it', 'olive condite');

        -- Level 1: cuisine-internationale
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cuisine-internationale', 'cuisine-internationale', 1, root_id, 'Produits pour cuisine internationale')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('cuisine-internationale', 'fr', 'Produits pour cuisine internationale');
        PERFORM insert_category_translations('cuisine-internationale', 'ar', 'منتجات مطابخ عالمية');
        PERFORM insert_category_translations('cuisine-internationale', 'en', 'International Cooking Products');
        PERFORM insert_category_translations('cuisine-internationale', 'de', 'Internationale Kochprodukte');
        PERFORM insert_category_translations('cuisine-internationale', 'es', 'Productos para cocina internacional');
        PERFORM insert_category_translations('cuisine-internationale', 'it', 'Prodotti per cucina internazionale');

            -- Level 2: produits-asiatiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-asiatiques', 'produits-asiatiques', 2, l1_id, 'produits asiatiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('produits-asiatiques', 'fr', 'produits asiatiques');
            PERFORM insert_category_translations('produits-asiatiques', 'ar', 'منتجات آسيوية');
            PERFORM insert_category_translations('produits-asiatiques', 'en', 'Asian products');
            PERFORM insert_category_translations('produits-asiatiques', 'de', 'asiatische Produkte');
            PERFORM insert_category_translations('produits-asiatiques', 'es', 'productos asiáticos');
            PERFORM insert_category_translations('produits-asiatiques', 'it', 'prodotti asiatici');

            -- Level 2: produits-turcs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-turcs', 'produits-turcs', 2, l1_id, 'produits turcs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('produits-turcs', 'fr', 'produits turcs');
            PERFORM insert_category_translations('produits-turcs', 'ar', 'منتجات تركية');
            PERFORM insert_category_translations('produits-turcs', 'en', 'Turkish products');
            PERFORM insert_category_translations('produits-turcs', 'de', 'türkische Produkte');
            PERFORM insert_category_translations('produits-turcs', 'es', 'productos turcos');
            PERFORM insert_category_translations('produits-turcs', 'it', 'prodotti turchi');

            -- Level 2: produits-indiens
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-indiens', 'produits-indiens', 2, l1_id, 'produits indiens')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('produits-indiens', 'fr', 'produits indiens');
            PERFORM insert_category_translations('produits-indiens', 'ar', 'منتجات هندية');
            PERFORM insert_category_translations('produits-indiens', 'en', 'Indian products');
            PERFORM insert_category_translations('produits-indiens', 'de', 'indische Produkte');
            PERFORM insert_category_translations('produits-indiens', 'es', 'productos indios');
            PERFORM insert_category_translations('produits-indiens', 'it', 'prodotti indiani');

            -- Level 2: sauces-internationales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sauces-internationales', 'sauces-internationales', 2, l1_id, 'sauces internationales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sauces-internationales', 'fr', 'sauces internationales');
            PERFORM insert_category_translations('sauces-internationales', 'ar', 'صلصات عالمية');
            PERFORM insert_category_translations('sauces-internationales', 'en', 'international sauces');
            PERFORM insert_category_translations('sauces-internationales', 'de', 'internationale Saucen');
            PERFORM insert_category_translations('sauces-internationales', 'es', 'salsas internacionales');
            PERFORM insert_category_translations('sauces-internationales', 'it', 'salse internazionali');

            -- Level 2: nouilles-asiatiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('nouilles-asiatiques', 'nouilles-asiatiques', 2, l1_id, 'nouilles asiatiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('nouilles-asiatiques', 'fr', 'nouilles asiatiques');
            PERFORM insert_category_translations('nouilles-asiatiques', 'ar', 'نودلز آسيوية');
            PERFORM insert_category_translations('nouilles-asiatiques', 'en', 'Asian noodles');
            PERFORM insert_category_translations('nouilles-asiatiques', 'de', 'asiatische Nudeln');
            PERFORM insert_category_translations('nouilles-asiatiques', 'es', 'fideos asiáticos');
            PERFORM insert_category_translations('nouilles-asiatiques', 'it', 'noodles asiatici');

        -- Level 1: produits-halal
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-halal', 'produits-halal', 1, root_id, 'Produits halal')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('produits-halal', 'fr', 'Produits halal');
        PERFORM insert_category_translations('produits-halal', 'ar', 'منتجات حلال');
        PERFORM insert_category_translations('produits-halal', 'en', 'Halal Products');
        PERFORM insert_category_translations('produits-halal', 'de', 'Halal-Produkte');
        PERFORM insert_category_translations('produits-halal', 'es', 'Productos halal');
        PERFORM insert_category_translations('produits-halal', 'it', 'Prodotti halal');

            -- Level 2: charcuterie-halal
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('charcuterie-halal', 'charcuterie-halal', 2, l1_id, 'charcuterie halal')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('charcuterie-halal', 'fr', 'charcuterie halal');
            PERFORM insert_category_translations('charcuterie-halal', 'ar', 'لحوم حلال معلبة');
            PERFORM insert_category_translations('charcuterie-halal', 'en', 'halal deli');
            PERFORM insert_category_translations('charcuterie-halal', 'de', 'Halal-Wurstwaren');
            PERFORM insert_category_translations('charcuterie-halal', 'es', 'charcutería halal');
            PERFORM insert_category_translations('charcuterie-halal', 'it', 'salumi halal');

            -- Level 2: viandes-halal
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('viandes-halal', 'viandes-halal', 2, l1_id, 'viandes halal')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('viandes-halal', 'fr', 'viandes halal');
            PERFORM insert_category_translations('viandes-halal', 'ar', 'لحوم حلال');
            PERFORM insert_category_translations('viandes-halal', 'en', 'halal meats');
            PERFORM insert_category_translations('viandes-halal', 'de', 'Halal-Fleisch');
            PERFORM insert_category_translations('viandes-halal', 'es', 'carnes halal');
            PERFORM insert_category_translations('viandes-halal', 'it', 'carni halal');

            -- Level 2: snacks-halal
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('snacks-halal', 'snacks-halal', 2, l1_id, 'snacks halal')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('snacks-halal', 'fr', 'snacks halal');
            PERFORM insert_category_translations('snacks-halal', 'ar', 'سناكات حلال');
            PERFORM insert_category_translations('snacks-halal', 'en', 'halal snacks');
            PERFORM insert_category_translations('snacks-halal', 'de', 'Halal-Snacks');
            PERFORM insert_category_translations('snacks-halal', 'es', 'snacks halal');
            PERFORM insert_category_translations('snacks-halal', 'it', 'snack halal');

            -- Level 2: plats-prepares-halal
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('plats-prepares-halal', 'plats-prepares-halal', 2, l1_id, 'plats préparés halal')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('plats-prepares-halal', 'fr', 'plats préparés halal');
            PERFORM insert_category_translations('plats-prepares-halal', 'ar', 'وجبات جاهزة حلال');
            PERFORM insert_category_translations('plats-prepares-halal', 'en', 'halal ready meals');
            PERFORM insert_category_translations('plats-prepares-halal', 'de', 'Halal-Fertiggerichte');
            PERFORM insert_category_translations('plats-prepares-halal', 'es', 'platos preparados halal');
            PERFORM insert_category_translations('plats-prepares-halal', 'it', 'piatti pronti halal');

            -- Level 2: surgeles-halal
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('surgeles-halal', 'surgeles-halal', 2, l1_id, 'surgelés halal')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('surgeles-halal', 'fr', 'surgelés halal');
            PERFORM insert_category_translations('surgeles-halal', 'ar', 'مجمدات حلال');
            PERFORM insert_category_translations('surgeles-halal', 'en', 'halal frozen');
            PERFORM insert_category_translations('surgeles-halal', 'de', 'Halal-Tiefkühl');
            PERFORM insert_category_translations('surgeles-halal', 'es', 'congelados halal');
            PERFORM insert_category_translations('surgeles-halal', 'it', 'surgelati halal');

        -- Level 1: nutrition-sportive
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('nutrition-sportive', 'nutrition-sportive', 1, root_id, 'Nutrition sportive')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('nutrition-sportive', 'fr', 'Nutrition sportive');
        PERFORM insert_category_translations('nutrition-sportive', 'ar', 'تغذية رياضية');
        PERFORM insert_category_translations('nutrition-sportive', 'en', 'Sports Nutrition');
        PERFORM insert_category_translations('nutrition-sportive', 'de', 'Sporternährung');
        PERFORM insert_category_translations('nutrition-sportive', 'es', 'Nutrición deportiva');
        PERFORM insert_category_translations('nutrition-sportive', 'it', 'Nutrizione sportiva');

            -- Level 2: proteines
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('proteines', 'proteines', 2, l1_id, 'protéines')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('proteines', 'fr', 'protéines');
            PERFORM insert_category_translations('proteines', 'ar', 'بروتينات');
            PERFORM insert_category_translations('proteines', 'en', 'proteins');
            PERFORM insert_category_translations('proteines', 'de', 'Proteine');
            PERFORM insert_category_translations('proteines', 'es', 'proteínas');
            PERFORM insert_category_translations('proteines', 'it', 'proteine');

            -- Level 2: gainers
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gainers', 'gainers', 2, l1_id, 'gainers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gainers', 'fr', 'gainers');
            PERFORM insert_category_translations('gainers', 'ar', 'جاينرز');
            PERFORM insert_category_translations('gainers', 'en', 'gainers');
            PERFORM insert_category_translations('gainers', 'de', 'Weight Gainer');
            PERFORM insert_category_translations('gainers', 'es', 'gainers');
            PERFORM insert_category_translations('gainers', 'it', 'gainer');

            -- Level 2: creatine
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('creatine', 'creatine', 2, l1_id, 'creatine')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('creatine', 'fr', 'creatine');
            PERFORM insert_category_translations('creatine', 'ar', 'كرياتين');
            PERFORM insert_category_translations('creatine', 'en', 'creatine');
            PERFORM insert_category_translations('creatine', 'de', 'Kreatin');
            PERFORM insert_category_translations('creatine', 'es', 'creatina');
            PERFORM insert_category_translations('creatine', 'it', 'creatina');

            -- Level 2: aminoacides
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('aminoacides', 'aminoacides', 2, l1_id, 'aminoacides')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('aminoacides', 'fr', 'aminoacides');
            PERFORM insert_category_translations('aminoacides', 'ar', 'أحماض أمينية');
            PERFORM insert_category_translations('aminoacides', 'en', 'amino acids');
            PERFORM insert_category_translations('aminoacides', 'de', 'Aminosäuren');
            PERFORM insert_category_translations('aminoacides', 'es', 'aminoácidos');
            PERFORM insert_category_translations('aminoacides', 'it', 'aminoacidi');

            -- Level 2: bars-protein
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bars-protein', 'bars-proteinees', 2, l1_id, 'bars protéinées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bars-protein', 'fr', 'bars protéinées');
            PERFORM insert_category_translations('bars-protein', 'ar', 'ألواح بروتين');
            PERFORM insert_category_translations('bars-protein', 'en', 'protein bars');
            PERFORM insert_category_translations('bars-protein', 'de', 'Proteinriegel');
            PERFORM insert_category_translations('bars-protein', 'es', 'barras proteicas');
            PERFORM insert_category_translations('bars-protein', 'it', 'barrette proteiche');

            -- Level 2: boissons-isotoniques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('boissons-isotoniques', 'boissons-isotoniques', 2, l1_id, 'boissons isotoniques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('boissons-isotoniques', 'fr', 'boissons isotoniques');
            PERFORM insert_category_translations('boissons-isotoniques', 'ar', 'مشروبات متساوية التوتر');
            PERFORM insert_category_translations('boissons-isotoniques', 'en', 'isotonic drinks');
            PERFORM insert_category_translations('boissons-isotoniques', 'de', 'isotonische Getränke');
            PERFORM insert_category_translations('boissons-isotoniques', 'es', 'bebidas isotónicas');
            PERFORM insert_category_translations('boissons-isotoniques', 'it', 'bevande isotoniche');

            -- Level 2: meal-replacement
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('meal-replacement', 'meal-replacement', 2, l1_id, 'meal-replacement')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('meal-replacement', 'fr', 'meal-replacement');
            PERFORM insert_category_translations('meal-replacement', 'ar', 'بدائل وجبة');
            PERFORM insert_category_translations('meal-replacement', 'en', 'meal replacement');
            PERFORM insert_category_translations('meal-replacement', 'de', 'Mahlzeitenersatz');
            PERFORM insert_category_translations('meal-replacement', 'es', 'sustitutos de comida');
            PERFORM insert_category_translations('meal-replacement', 'it', 'sostitutivi del pasto');

        -- Level 1: dietetique-sante
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('dietetique-sante', 'dietetique-sante', 1, root_id, 'Diététique & santé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('dietetique-sante', 'fr', 'Diététique & santé');
        PERFORM insert_category_translations('dietetique-sante', 'ar', 'حمية وصحة');
        PERFORM insert_category_translations('dietetique-sante', 'en', 'Diet & Health');
        PERFORM insert_category_translations('dietetique-sante', 'de', 'Diät & Gesundheit');
        PERFORM insert_category_translations('dietetique-sante', 'es', 'Dietética y salud');
        PERFORM insert_category_translations('dietetique-sante', 'it', 'Dietetica e salute');

            -- Level 2: sans-sucre
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sans-sucre', 'sans-sucre', 2, l1_id, 'produits sans sucre')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sans-sucre', 'fr', 'produits sans sucre');
            PERFORM insert_category_translations('sans-sucre', 'ar', 'منتجات بدون سكر');
            PERFORM insert_category_translations('sans-sucre', 'en', 'sugar-free products');
            PERFORM insert_category_translations('sans-sucre', 'de', 'zuckerfreie Produkte');
            PERFORM insert_category_translations('sans-sucre', 'es', 'productos sin azúcar');
            PERFORM insert_category_translations('sans-sucre', 'it', 'prodotti senza zucchero');

            -- Level 2: sans-gluten
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sans-gluten', 'sans-gluten', 2, l1_id, 'produits sans gluten')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sans-gluten', 'fr', 'produits sans gluten');
            PERFORM insert_category_translations('sans-gluten', 'ar', 'منتجات خالية من الغلوتين');
            PERFORM insert_category_translations('sans-gluten', 'en', 'gluten-free products');
            PERFORM insert_category_translations('sans-gluten', 'de', 'glutenfreie Produkte');
            PERFORM insert_category_translations('sans-gluten', 'es', 'productos sin gluten');
            PERFORM insert_category_translations('sans-gluten', 'it', 'prodotti senza glutine');

            -- Level 2: sans-lactose
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sans-lactose', 'sans-lactose', 2, l1_id, 'produits sans lactose')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sans-lactose', 'fr', 'produits sans lactose');
            PERFORM insert_category_translations('sans-lactose', 'ar', 'منتجات خالية من اللاكتوز');
            PERFORM insert_category_translations('sans-lactose', 'en', 'lactose-free products');
            PERFORM insert_category_translations('sans-lactose', 'de', 'laktosefreie Produkte');
            PERFORM insert_category_translations('sans-lactose', 'es', 'productos sin lactosa');
            PERFORM insert_category_translations('sans-lactose', 'it', 'prodotti senza lattosio');

            -- Level 2: faible-calories
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('faible-calories', 'faible-calories', 2, l1_id, 'aliments faibles en calories')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('faible-calories', 'fr', 'aliments faibles en calories');
            PERFORM insert_category_translations('faible-calories', 'ar', 'أطعمة قليلة السعرات');
            PERFORM insert_category_translations('faible-calories', 'en', 'low-calorie foods');
            PERFORM insert_category_translations('faible-calories', 'de', 'kalorienarme Lebensmittel');
            PERFORM insert_category_translations('faible-calories', 'es', 'alimentos bajos en calorías');
            PERFORM insert_category_translations('faible-calories', 'it', 'alimenti a basso contenuto calorico');

            -- Level 2: thes-detox
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('thes-detox', 'thes-detox', 2, l1_id, 'thés detox')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('thes-detox', 'fr', 'thés detox');
            PERFORM insert_category_translations('thes-detox', 'ar', 'شاي ديتوكس');
            PERFORM insert_category_translations('thes-detox', 'en', 'detox teas');
            PERFORM insert_category_translations('thes-detox', 'de', 'Detox-Tees');
            PERFORM insert_category_translations('thes-detox', 'es', 'tés detox');
            PERFORM insert_category_translations('thes-detox', 'it', 'tè detox');

            -- Level 2: complements-alimentaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('complements-alimentaires', 'complements-alimentaires', 2, l1_id, 'compléments alimentaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('complements-alimentaires', 'fr', 'compléments alimentaires');
            PERFORM insert_category_translations('complements-alimentaires', 'ar', 'مكملات غذائية');
            PERFORM insert_category_translations('complements-alimentaires', 'en', 'dietary supplements');
            PERFORM insert_category_translations('complements-alimentaires', 'de', 'Nahrungsergänzungsmittel');
            PERFORM insert_category_translations('complements-alimentaires', 'es', 'suplementos alimenticios');
            PERFORM insert_category_translations('complements-alimentaires', 'it', 'integratori alimentari');

        -- Level 1: produits-patisserie
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-patisserie', 'produits-patisserie', 1, root_id, 'Produits pour pâtisserie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('produits-patisserie', 'fr', 'Produits pour pâtisserie');
        PERFORM insert_category_translations('produits-patisserie', 'ar', 'مستلزمات الحلويات');
        PERFORM insert_category_translations('produits-patisserie', 'en', 'Pastry Essentials');
        PERFORM insert_category_translations('produits-patisserie', 'de', 'Backzutaten');
        PERFORM insert_category_translations('produits-patisserie', 'es', 'Ingredientes de repostería');
        PERFORM insert_category_translations('produits-patisserie', 'it', 'Essenziali per pasticceria');

            -- Level 2: chocolat
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chocolat', 'chocolat', 2, l1_id, 'chocolat')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chocolat', 'fr', 'chocolat');
            PERFORM insert_category_translations('chocolat', 'ar', 'شوكولاتة');
            PERFORM insert_category_translations('chocolat', 'en', 'chocolate');
            PERFORM insert_category_translations('chocolat', 'de', 'Schokolade');
            PERFORM insert_category_translations('chocolat', 'es', 'chocolate');
            PERFORM insert_category_translations('chocolat', 'it', 'cioccolato');

            -- Level 2: levure
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('levure', 'levure', 2, l1_id, 'levure')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('levure', 'fr', 'levure');
            PERFORM insert_category_translations('levure', 'ar', 'خميرة');
            PERFORM insert_category_translations('levure', 'en', 'yeast');
            PERFORM insert_category_translations('levure', 'de', 'Hefe');
            PERFORM insert_category_translations('levure', 'es', 'levadura');
            PERFORM insert_category_translations('levure', 'it', 'lievito');

            -- Level 2: cacao
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cacao', 'cacao', 2, l1_id, 'cacao')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cacao', 'fr', 'cacao');
            PERFORM insert_category_translations('cacao', 'ar', 'كاكاو');
            PERFORM insert_category_translations('cacao', 'en', 'cocoa');
            PERFORM insert_category_translations('cacao', 'de', 'Kakao');
            PERFORM insert_category_translations('cacao', 'es', 'cacao');
            PERFORM insert_category_translations('cacao', 'it', 'cacao');

            -- Level 2: aromes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('aromes', 'aromes', 2, l1_id, 'arômes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('aromes', 'fr', 'arômes');
            PERFORM insert_category_translations('aromes', 'ar', 'منكهات');
            PERFORM insert_category_translations('aromes', 'en', 'flavorings');
            PERFORM insert_category_translations('aromes', 'de', 'Aromen');
            PERFORM insert_category_translations('aromes', 'es', 'aromatizantes');
            PERFORM insert_category_translations('aromes', 'it', 'aromi');

            -- Level 2: colorants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('colorants', 'colorants', 2, l1_id, 'colorants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('colorants', 'fr', 'colorants');
            PERFORM insert_category_translations('colorants', 'ar', 'ملونات');
            PERFORM insert_category_translations('colorants', 'en', 'colorants');
            PERFORM insert_category_translations('colorants', 'de', 'Farbstoffe');
            PERFORM insert_category_translations('colorants', 'es', 'colorantes');
            PERFORM insert_category_translations('colorants', 'it', 'coloranti');

            -- Level 2: decorations-patisserie
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('decorations-patisserie', 'decorations-patisserie', 2, l1_id, 'décorations pâtissières')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('decorations-patisserie', 'fr', 'décorations pâtissières');
            PERFORM insert_category_translations('decorations-patisserie', 'ar', 'زينة الحلويات');
            PERFORM insert_category_translations('decorations-patisserie', 'en', 'pastry decorations');
            PERFORM insert_category_translations('decorations-patisserie', 'de', 'Konditorei-Dekorationen');
            PERFORM insert_category_translations('decorations-patisserie', 'es', 'decoraciones de repostería');
            PERFORM insert_category_translations('decorations-patisserie', 'it', 'decorazioni per pasticceria');

            -- Level 2: ustensiles-patisserie
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ustensiles-patisserie', 'ustensiles-patisserie', 2, l1_id, 'ustensiles pâtisserie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ustensiles-patisserie', 'fr', 'ustensiles pâtisserie');
            PERFORM insert_category_translations('ustensiles-patisserie', 'ar', 'أدوات الحلويات');
            PERFORM insert_category_translations('ustensiles-patisserie', 'en', 'pastry utensils');
            PERFORM insert_category_translations('ustensiles-patisserie', 'de', 'Backutensilien');
            PERFORM insert_category_translations('ustensiles-patisserie', 'es', 'utensilios de repostería');
            PERFORM insert_category_translations('ustensiles-patisserie', 'it', 'utensili per pasticceria');

        -- Level 1: produits-cuisine
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-cuisine', 'produits-cuisine', 1, root_id, 'Produits pour cuisine')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('produits-cuisine', 'fr', 'Produits pour cuisine');
        PERFORM insert_category_translations('produits-cuisine', 'ar', 'مستلزمات الطبخ');
        PERFORM insert_category_translations('produits-cuisine', 'en', 'Cooking Essentials');
        PERFORM insert_category_translations('produits-cuisine', 'de', 'Kochgrundlagen');
        PERFORM insert_category_translations('produits-cuisine', 'es', 'Esenciales de cocina');
        PERFORM insert_category_translations('produits-cuisine', 'it', 'Essenziali per cucina');

            -- Level 2: sauces-soja
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sauces-soja', 'sauces-soja', 2, l1_id, 'sauces soja')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sauces-soja', 'fr', 'sauces soja');
            PERFORM insert_category_translations('sauces-soja', 'ar', 'صلصات الصويا');
            PERFORM insert_category_translations('sauces-soja', 'en', 'soy sauces');
            PERFORM insert_category_translations('sauces-soja', 'de', 'Sojasaucen');
            PERFORM insert_category_translations('sauces-soja', 'es', 'salsas de soja');
            PERFORM insert_category_translations('sauces-soja', 'it', 'salse di soia');

            -- Level 2: sauces-piquantes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sauces-piquantes', 'sauces-piquantes', 2, l1_id, 'sauces piquantes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sauces-piquantes', 'fr', 'sauces piquantes');
            PERFORM insert_category_translations('sauces-piquantes', 'ar', 'صلصات حارة');
            PERFORM insert_category_translations('sauces-piquantes', 'en', 'hot sauces');
            PERFORM insert_category_translations('sauces-piquantes', 'de', 'scharfe Saucen');
            PERFORM insert_category_translations('sauces-piquantes', 'es', 'salsas picantes');
            PERFORM insert_category_translations('sauces-piquantes', 'it', 'salse piccanti');

            -- Level 2: ketchup
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ketchup', 'ketchup', 2, l1_id, 'ketchup')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ketchup', 'fr', 'ketchup');
            PERFORM insert_category_translations('ketchup', 'ar', 'ketchup');
            PERFORM insert_category_translations('ketchup', 'en', 'ketchup');
            PERFORM insert_category_translations('ketchup', 'de', 'ketchup');
            PERFORM insert_category_translations('ketchup', 'es', 'ketchup');
            PERFORM insert_category_translations('ketchup', 'it', 'ketchup');

            -- Level 2: moutarde-cuisine
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('moutarde-cuisine', 'moutarde-cuisine', 2, l1_id, 'moutarde')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('moutarde-cuisine', 'fr', 'moutarde');
            PERFORM insert_category_translations('moutarde-cuisine', 'ar', 'خردل');
            PERFORM insert_category_translations('moutarde-cuisine', 'en', 'mustard');
            PERFORM insert_category_translations('moutarde-cuisine', 'de', 'Senf');
            PERFORM insert_category_translations('moutarde-cuisine', 'es', 'mostaza');
            PERFORM insert_category_translations('moutarde-cuisine', 'it', 'senape');

            -- Level 2: marinade
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('marinade', 'marinade', 2, l1_id, 'marinade')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('marinade', 'fr', 'marinade');
            PERFORM insert_category_translations('marinade', 'ar', 'تتبيلة');
            PERFORM insert_category_translations('marinade', 'en', 'marinade');
            PERFORM insert_category_translations('marinade', 'de', 'Marinaden');
            PERFORM insert_category_translations('marinade', 'es', 'marinados');
            PERFORM insert_category_translations('marinade', 'it', 'marinature');

            -- Level 2: bouillons-cuisine
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bouillons-cuisine', 'bouillons-cuisine', 2, l1_id, 'bouillons')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bouillons-cuisine', 'fr', 'bouillons');
            PERFORM insert_category_translations('bouillons-cuisine', 'ar', 'مرق');
            PERFORM insert_category_translations('bouillons-cuisine', 'en', 'broths');
            PERFORM insert_category_translations('bouillons-cuisine', 'de', 'Brühen');
            PERFORM insert_category_translations('bouillons-cuisine', 'es', 'caldos');
            PERFORM insert_category_translations('bouillons-cuisine', 'it', 'brodi');

            -- Level 2: aides-de-cuisine
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('aides-de-cuisine', 'aides-de-cuisine', 2, l1_id, 'aides de cuisine')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('aides-de-cuisine', 'fr', 'aides de cuisine');
            PERFORM insert_category_translations('aides-de-cuisine', 'ar', 'مساعدات الطبخ');
            PERFORM insert_category_translations('aides-de-cuisine', 'en', 'cooking aids');
            PERFORM insert_category_translations('aides-de-cuisine', 'de', 'Küchenhilfen');
            PERFORM insert_category_translations('aides-de-cuisine', 'es', 'ayudas de cocina');
            PERFORM insert_category_translations('aides-de-cuisine', 'it', 'aiuti di cucina');

        -- Level 1: gourmandises-douceurs
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gourmandises-douceurs', 'gourmandises-douceurs', 1, root_id, 'Gourmandises & douceurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('gourmandises-douceurs', 'fr', 'Gourmandises & douceurs');
        PERFORM insert_category_translations('gourmandises-douceurs', 'ar', 'حلويات ومشتهيات');
        PERFORM insert_category_translations('gourmandises-douceurs', 'en', 'Sweets & Delicacies');
        PERFORM insert_category_translations('gourmandises-douceurs', 'de', 'Süßwaren & Köstlichkeiten');
        PERFORM insert_category_translations('gourmandises-douceurs', 'es', 'Dulces y delicias');
        PERFORM insert_category_translations('gourmandises-douceurs', 'it', 'Golosità e dolci');

            -- Level 2: chocolats
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chocolats', 'chocolats', 2, l1_id, 'chocolats')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chocolats', 'fr', 'chocolats');
            PERFORM insert_category_translations('chocolats', 'ar', 'شوكولاتات');
            PERFORM insert_category_translations('chocolats', 'en', 'chocolates');
            PERFORM insert_category_translations('chocolats', 'de', 'Schokoladen');
            PERFORM insert_category_translations('chocolats', 'es', 'chocolates');
            PERFORM insert_category_translations('chocolats', 'it', 'cioccolatini');

            -- Level 2: bonbons
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bonbons', 'bonbons', 2, l1_id, 'bonbons')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bonbons', 'fr', 'bonbons');
            PERFORM insert_category_translations('bonbons', 'ar', 'حلويات');
            PERFORM insert_category_translations('bonbons', 'en', 'candies');
            PERFORM insert_category_translations('bonbons', 'de', 'Bonbons');
            PERFORM insert_category_translations('bonbons', 'es', 'caramelos');
            PERFORM insert_category_translations('bonbons', 'it', 'caramelle');

            -- Level 2: dragees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('dragees', 'dragees', 2, l1_id, 'dragées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('dragees', 'fr', 'dragées');
            PERFORM insert_category_translations('dragees', 'ar', 'دراجيه');
            PERFORM insert_category_translations('dragees', 'en', 'sugared almonds');
            PERFORM insert_category_translations('dragees', 'de', 'Dragées');
            PERFORM insert_category_translations('dragees', 'es', 'grageas');
            PERFORM insert_category_translations('dragees', 'it', 'confetti');

            -- Level 2: fruits-confits
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fruits-confits', 'fruits-confits', 2, l1_id, 'fruits confits')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fruits-confits', 'fr', 'fruits confits');
            PERFORM insert_category_translations('fruits-confits', 'ar', 'فواكه مسكرة');
            PERFORM insert_category_translations('fruits-confits', 'en', 'candied fruits');
            PERFORM insert_category_translations('fruits-confits', 'de', 'kandierte Früchte');
            PERFORM insert_category_translations('fruits-confits', 'es', 'frutas confitadas');
            PERFORM insert_category_translations('fruits-confits', 'it', 'frutta candita');

            -- Level 2: patisserie-fine
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('patisserie-fine', 'patisserie-fine', 2, l1_id, 'pâtisserie fine')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('patisserie-fine', 'fr', 'pâtisserie fine');
            PERFORM insert_category_translations('patisserie-fine', 'ar', 'حلويات فاخرة');
            PERFORM insert_category_translations('patisserie-fine', 'en', 'fine pastry');
            PERFORM insert_category_translations('patisserie-fine', 'de', 'feine Konditorei');
            PERFORM insert_category_translations('patisserie-fine', 'es', 'pastelería fina');
            PERFORM insert_category_translations('patisserie-fine', 'it', 'pasticceria fine');

            -- Level 2: coffrets-cadeaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('coffrets-cadeaux', 'coffrets-cadeaux', 2, l1_id, 'coffrets cadeaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('coffrets-cadeaux', 'fr', 'coffrets cadeaux');
            PERFORM insert_category_translations('coffrets-cadeaux', 'ar', 'علب هدايا');
            PERFORM insert_category_translations('coffrets-cadeaux', 'en', 'gift boxes');
            PERFORM insert_category_translations('coffrets-cadeaux', 'de', 'Geschenkboxen');
            PERFORM insert_category_translations('coffrets-cadeaux', 'es', 'cajas de regalo');
            PERFORM insert_category_translations('coffrets-cadeaux', 'it', 'cofanetti regalo');

        -- Level 1: produits-bebe
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-bebe', 'produits-bebe', 1, root_id, 'Produits pour bébé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('produits-bebe', 'fr', 'Produits pour bébé');
        PERFORM insert_category_translations('produits-bebe', 'ar', 'منتجات للرضّع');
        PERFORM insert_category_translations('produits-bebe', 'en', 'Baby Food');
        PERFORM insert_category_translations('produits-bebe', 'de', 'Babynahrung');
        PERFORM insert_category_translations('produits-bebe', 'es', 'Alimentación para bebé');
        PERFORM insert_category_translations('produits-bebe', 'it', 'Alimentazione per bebè');

            -- Level 2: lait-infantile
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lait-infantile', 'lait-infantile', 2, l1_id, 'lait infantile')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lait-infantile', 'fr', 'lait infantile');
            PERFORM insert_category_translations('lait-infantile', 'ar', 'حليب أطفال');
            PERFORM insert_category_translations('lait-infantile', 'en', 'infant milk');
            PERFORM insert_category_translations('lait-infantile', 'de', 'Babymilch');
            PERFORM insert_category_translations('lait-infantile', 'es', 'leche infantil');
            PERFORM insert_category_translations('lait-infantile', 'it', 'latte per neonati');

            -- Level 2: petits-pots
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('petits-pots', 'petits-pots', 2, l1_id, 'petits pots')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('petits-pots', 'fr', 'petits pots');
            PERFORM insert_category_translations('petits-pots', 'ar', 'وجبات أطفال معلبة');
            PERFORM insert_category_translations('petits-pots', 'en', 'baby jars');
            PERFORM insert_category_translations('petits-pots', 'de', 'Babygläschen');
            PERFORM insert_category_translations('petits-pots', 'es', 'potitos');
            PERFORM insert_category_translations('petits-pots', 'it', 'omogeneizzati');

            -- Level 2: compotes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('compotes', 'compotes', 2, l1_id, 'compotes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('compotes', 'fr', 'compotes');
            PERFORM insert_category_translations('compotes', 'ar', 'كومبوت');
            PERFORM insert_category_translations('compotes', 'en', 'compotes');
            PERFORM insert_category_translations('compotes', 'de', 'Kompotte');
            PERFORM insert_category_translations('compotes', 'es', 'compotas');
            PERFORM insert_category_translations('compotes', 'it', 'composte');

            -- Level 2: biscuits-bebe
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('biscuits-bebe', 'biscuits-bebe', 2, l1_id, 'biscuits bébé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('biscuits-bebe', 'fr', 'biscuits bébé');
            PERFORM insert_category_translations('biscuits-bebe', 'ar', 'بسكويت أطفال');
            PERFORM insert_category_translations('biscuits-bebe', 'en', 'baby biscuits');
            PERFORM insert_category_translations('biscuits-bebe', 'de', 'Baby-Kekse');
            PERFORM insert_category_translations('biscuits-bebe', 'es', 'galletas para bebé');
            PERFORM insert_category_translations('biscuits-bebe', 'it', 'biscotti per bebè');

            -- Level 2: cereales-bebe
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cereales-bebe', 'cereales-bebe', 2, l1_id, 'céréales bébé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cereales-bebe', 'fr', 'céréales bébé');
            PERFORM insert_category_translations('cereales-bebe', 'ar', 'حبوب أطفال');
            PERFORM insert_category_translations('cereales-bebe', 'en', 'baby cereals');
            PERFORM insert_category_translations('cereales-bebe', 'de', 'Baby-Cerealien');
            PERFORM insert_category_translations('cereales-bebe', 'es', 'cereales para bebé');
            PERFORM insert_category_translations('cereales-bebe', 'it', 'cereali per bebè');

            -- Level 2: yaourts-bebe
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('yaourts-bebe', 'yaourts-bebe', 2, l1_id, 'yaourts bébé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('yaourts-bebe', 'fr', 'yaourts bébé');
            PERFORM insert_category_translations('yaourts-bebe', 'ar', 'زبادي أطفال');
            PERFORM insert_category_translations('yaourts-bebe', 'en', 'baby yogurts');
            PERFORM insert_category_translations('yaourts-bebe', 'de', 'Babyjoghurts');
            PERFORM insert_category_translations('yaourts-bebe', 'es', 'yogures para bebé');
            PERFORM insert_category_translations('yaourts-bebe', 'it', 'yogurt per bebè');

        -- Level 1: eaux-hydratation
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('eaux-hydratation', 'eaux-hydratation', 1, root_id, 'Eaux & hydratation')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('eaux-hydratation', 'fr', 'Eaux & hydratation');
        PERFORM insert_category_translations('eaux-hydratation', 'ar', 'مياه وترطيب');
        PERFORM insert_category_translations('eaux-hydratation', 'en', 'Water & Hydration');
        PERFORM insert_category_translations('eaux-hydratation', 'de', 'Wasser & Hydration');
        PERFORM insert_category_translations('eaux-hydratation', 'es', 'Agua e hidratación');
        PERFORM insert_category_translations('eaux-hydratation', 'it', 'Acqua e idratazione');

            -- Level 2: eau-plate
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('eau-plate', 'eau-plate', 2, l1_id, 'eau plate')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('eau-plate', 'fr', 'eau plate');
            PERFORM insert_category_translations('eau-plate', 'ar', 'ماء عادي');
            PERFORM insert_category_translations('eau-plate', 'en', 'still water');
            PERFORM insert_category_translations('eau-plate', 'de', 'Stillwasser');
            PERFORM insert_category_translations('eau-plate', 'es', 'agua sin gas');
            PERFORM insert_category_translations('eau-plate', 'it', 'acqua naturale');

            -- Level 2: eau-gazeuse
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('eau-gazeuse', 'eau-gazeuse', 2, l1_id, 'eau gazeuse')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('eau-gazeuse', 'fr', 'eau gazeuse');
            PERFORM insert_category_translations('eau-gazeuse', 'ar', 'ماء غازي');
            PERFORM insert_category_translations('eau-gazeuse', 'en', 'sparkling water');
            PERFORM insert_category_translations('eau-gazeuse', 'de', 'Sprudelwasser');
            PERFORM insert_category_translations('eau-gazeuse', 'es', 'agua con gas');
            PERFORM insert_category_translations('eau-gazeuse', 'it', 'acqua frizzante');

            -- Level 2: eau-aromatisee
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('eau-aromatisee', 'eau-aromatisee', 2, l1_id, 'eau aromatisée')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('eau-aromatisee', 'fr', 'eau aromatisée');
            PERFORM insert_category_translations('eau-aromatisee', 'ar', 'ماء بنكهة');
            PERFORM insert_category_translations('eau-aromatisee', 'en', 'flavored water');
            PERFORM insert_category_translations('eau-aromatisee', 'de', 'aromatisiertes Wasser');
            PERFORM insert_category_translations('eau-aromatisee', 'es', 'agua aromatizada');
            PERFORM insert_category_translations('eau-aromatisee', 'it', 'acqua aromatizzata');

            -- Level 2: packs-famille
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('packs-famille', 'packs-famille', 2, l1_id, 'packs famille')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('packs-famille', 'fr', 'packs famille');
            PERFORM insert_category_translations('packs-famille', 'ar', 'عبوات عائلية');
            PERFORM insert_category_translations('packs-famille', 'en', 'family packs');
            PERFORM insert_category_translations('packs-famille', 'de', 'Familienpacks');
            PERFORM insert_category_translations('packs-famille', 'es', 'packs familiares');
            PERFORM insert_category_translations('packs-famille', 'it', 'confezioni famiglia');

            -- Level 2: bouteilles-sport
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bouteilles-sport', 'bouteilles-sport', 2, l1_id, 'bouteilles sport')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bouteilles-sport', 'fr', 'bouteilles sport');
            PERFORM insert_category_translations('bouteilles-sport', 'ar', 'زجاجات رياضية');
            PERFORM insert_category_translations('bouteilles-sport', 'en', 'sport bottles');
            PERFORM insert_category_translations('bouteilles-sport', 'de', 'Sportflaschen');
            PERFORM insert_category_translations('bouteilles-sport', 'es', 'botellas deportivas');
            PERFORM insert_category_translations('bouteilles-sport', 'it', 'bottiglie sportive');

        -- Level 1: accessoires-culinaires
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-culinaires', 'accessoires-culinaires', 1, root_id, 'Accessoires culinaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('accessoires-culinaires', 'fr', 'Accessoires culinaires');
        PERFORM insert_category_translations('accessoires-culinaires', 'ar', 'إكسسوارات المطبخ');
        PERFORM insert_category_translations('accessoires-culinaires', 'en', 'Kitchen Accessories');
        PERFORM insert_category_translations('accessoires-culinaires', 'de', 'Küchenzubehör');
        PERFORM insert_category_translations('accessoires-culinaires', 'es', 'Accesorios de cocina');
        PERFORM insert_category_translations('accessoires-culinaires', 'it', 'Accessori cucina');

            -- Level 2: boites-alimentaire
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('boites-alimentaire', 'boites-alimentaire', 2, l1_id, 'boîtes alimentaire')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('boites-alimentaire', 'fr', 'boîtes alimentaire');
            PERFORM insert_category_translations('boites-alimentaire', 'ar', 'علب طعام');
            PERFORM insert_category_translations('boites-alimentaire', 'en', 'food boxes');
            PERFORM insert_category_translations('boites-alimentaire', 'de', 'Lebensmittelboxen');
            PERFORM insert_category_translations('boites-alimentaire', 'es', 'cajas de comida');
            PERFORM insert_category_translations('boites-alimentaire', 'it', 'contenitori per alimenti');

            -- Level 2: contenants-hermetiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('contenants-hermetiques', 'contenants-hermetiques', 2, l1_id, 'contenants hermétiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('contenants-hermetiques', 'fr', 'contenants hermétiques');
            PERFORM insert_category_translations('contenants-hermetiques', 'ar', 'حاويات محكمة الإغلاق');
            PERFORM insert_category_translations('contenants-hermetiques', 'en', 'airtight containers');
            PERFORM insert_category_translations('contenants-hermetiques', 'de', 'luftdichte Behälter');
            PERFORM insert_category_translations('contenants-hermetiques', 'es', 'recipientes herméticos');
            PERFORM insert_category_translations('contenants-hermetiques', 'it', 'contenitori ermetici');

            -- Level 2: sacs-congelation
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-congelation', 'sacs-congelation', 2, l1_id, 'sacs congélation')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-congelation', 'fr', 'sacs congélation');
            PERFORM insert_category_translations('sacs-congelation', 'ar', 'أكياس تجميد');
            PERFORM insert_category_translations('sacs-congelation', 'en', 'freezer bags');
            PERFORM insert_category_translations('sacs-congelation', 'de', 'Gefrierbeutel');
            PERFORM insert_category_translations('sacs-congelation', 'es', 'bolsas de congelación');
            PERFORM insert_category_translations('sacs-congelation', 'it', 'sacchetti per congelazione');

            -- Level 2: accessoires-de-cuisine
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-de-cuisine', 'accessoires-de-cuisine', 2, l1_id, 'accessoires de cuisine')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('accessoires-de-cuisine', 'fr', 'accessoires de cuisine');
            PERFORM insert_category_translations('accessoires-de-cuisine', 'ar', 'مستلزمات المطبخ');
            PERFORM insert_category_translations('accessoires-de-cuisine', 'en', 'kitchen accessories');
            PERFORM insert_category_translations('accessoires-de-cuisine', 'de', 'Küchenzubehör');
            PERFORM insert_category_translations('accessoires-de-cuisine', 'es', 'accesorios de cocina');
            PERFORM insert_category_translations('accessoires-de-cuisine', 'it', 'accessori da cucina');
END $$;