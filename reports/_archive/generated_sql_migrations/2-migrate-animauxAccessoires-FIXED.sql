-- Migration: Animales & Accessoires (Generated Recursive)
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

    -- Level 0: animaux-accessoires
    INSERT INTO categories (id, slug, level, name)
    VALUES ('animaux-accessoires', 'animaux-accessoires', 0, 'Animales & Accessoires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 0, name = EXCLUDED.name
    RETURNING id INTO root_id;
    PERFORM insert_category_translations('animaux-accessoires', 'fr', 'Animales & Accessoires');
    PERFORM insert_category_translations('animaux-accessoires', 'ar', 'الحيوانات والإكسسوارات');
    PERFORM insert_category_translations('animaux-accessoires', 'en', 'Animals & Accessories');
    PERFORM insert_category_translations('animaux-accessoires', 'de', 'Tiere & Zubehör');
    PERFORM insert_category_translations('animaux-accessoires', 'es', 'Animales y Accesorios');
    PERFORM insert_category_translations('animaux-accessoires', 'it', 'Animali e Accessori');

        -- Level 1: animaux-domestiques
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('animaux-domestiques', 'animaux-domestiques', 1, root_id, 'Animaux Domestiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('animaux-domestiques', 'fr', 'Animaux Domestiques');
        PERFORM insert_category_translations('animaux-domestiques', 'ar', 'الحيوانات الأليفة');
        PERFORM insert_category_translations('animaux-domestiques', 'en', 'Pets');
        PERFORM insert_category_translations('animaux-domestiques', 'de', 'Haustiere');
        PERFORM insert_category_translations('animaux-domestiques', 'es', 'Animales Domésticos');
        PERFORM insert_category_translations('animaux-domestiques', 'it', 'Animali Domestici');

            -- Level 2: chiens
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chiens', 'chiens', 2, l1_id, 'Chiens')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chiens', 'fr', 'Chiens');
            PERFORM insert_category_translations('chiens', 'ar', 'الكلاب');
            PERFORM insert_category_translations('chiens', 'en', 'Dogs');
            PERFORM insert_category_translations('chiens', 'de', 'Hunde');
            PERFORM insert_category_translations('chiens', 'es', 'Perros');
            PERFORM insert_category_translations('chiens', 'it', 'Cani');

                -- Level 3: chiots-races
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chiots-races', 'chiots-races', 3, l2_id, 'chiots de race')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('chiots-races', 'fr', 'chiots de race');
                PERFORM insert_category_translations('chiots-races', 'ar', 'جراء سلالة');
                PERFORM insert_category_translations('chiots-races', 'en', 'pedigree puppies');
                PERFORM insert_category_translations('chiots-races', 'de', 'Rassenwelpen');
                PERFORM insert_category_translations('chiots-races', 'es', 'cachorros de raza');
                PERFORM insert_category_translations('chiots-races', 'it', 'cuccioli di razza');

                -- Level 3: chiens-adultes
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chiens-adultes', 'chiens-adultes', 3, l2_id, 'chiens adultes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('chiens-adultes', 'fr', 'chiens adultes');
                PERFORM insert_category_translations('chiens-adultes', 'ar', 'كلاب بالغة');
                PERFORM insert_category_translations('chiens-adultes', 'en', 'adult dogs');
                PERFORM insert_category_translations('chiens-adultes', 'de', 'Erwachsene Hunde');
                PERFORM insert_category_translations('chiens-adultes', 'es', 'perros adultos');
                PERFORM insert_category_translations('chiens-adultes', 'it', 'cani adulti');

                -- Level 3: chiens-dresses
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chiens-dresses', 'chiens-dresses', 3, l2_id, 'chiens dressés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('chiens-dresses', 'fr', 'chiens dressés');
                PERFORM insert_category_translations('chiens-dresses', 'ar', 'كلاب مدربة');
                PERFORM insert_category_translations('chiens-dresses', 'en', 'trained dogs');
                PERFORM insert_category_translations('chiens-dresses', 'de', 'Abgerichtete Hunde');
                PERFORM insert_category_translations('chiens-dresses', 'es', 'perros entrenados');
                PERFORM insert_category_translations('chiens-dresses', 'it', 'cani addestrati');

            -- Level 2: chats
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chats', 'chats', 2, l1_id, 'Chats')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chats', 'fr', 'Chats');
            PERFORM insert_category_translations('chats', 'ar', 'القطط');
            PERFORM insert_category_translations('chats', 'en', 'Cats');
            PERFORM insert_category_translations('chats', 'de', 'Katzen');
            PERFORM insert_category_translations('chats', 'es', 'Gatos');
            PERFORM insert_category_translations('chats', 'it', 'Gatti');

                -- Level 3: chatons-races
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chatons-races', 'chatons-races', 3, l2_id, 'chatons de race')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('chatons-races', 'fr', 'chatons de race');
                PERFORM insert_category_translations('chatons-races', 'ar', 'قطط صغيرة سلالة');
                PERFORM insert_category_translations('chatons-races', 'en', 'pedigree kittens');
                PERFORM insert_category_translations('chatons-races', 'de', 'Rassenkätzchen');
                PERFORM insert_category_translations('chatons-races', 'es', 'gatitos de raza');
                PERFORM insert_category_translations('chatons-races', 'it', 'gattini di razza');

                -- Level 3: chats-adultes
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chats-adultes', 'chats-adultes', 3, l2_id, 'chats adultes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('chats-adultes', 'fr', 'chats adultes');
                PERFORM insert_category_translations('chats-adultes', 'ar', 'قطط بالغة');
                PERFORM insert_category_translations('chats-adultes', 'en', 'adult cats');
                PERFORM insert_category_translations('chats-adultes', 'de', 'Erwachsene Katzen');
                PERFORM insert_category_translations('chats-adultes', 'es', 'gatos adultos');
                PERFORM insert_category_translations('chats-adultes', 'it', 'gatti adulti');

            -- Level 2: oiseaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('oiseaux', 'oiseaux', 2, l1_id, 'oiseaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('oiseaux', 'fr', 'oiseaux');
            PERFORM insert_category_translations('oiseaux', 'ar', 'طيور');
            PERFORM insert_category_translations('oiseaux', 'en', 'birds');
            PERFORM insert_category_translations('oiseaux', 'de', 'Vögel');
            PERFORM insert_category_translations('oiseaux', 'es', 'aves');
            PERFORM insert_category_translations('oiseaux', 'it', 'Uccelli');

                -- Level 3: oiseaux-rares
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('oiseaux-rares', 'oiseaux-rares', 3, l2_id, 'oiseaux rares')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('oiseaux-rares', 'fr', 'oiseaux rares');
                PERFORM insert_category_translations('oiseaux-rares', 'ar', 'طيور نادرة');
                PERFORM insert_category_translations('oiseaux-rares', 'en', 'rare birds');
                PERFORM insert_category_translations('oiseaux-rares', 'de', 'Seltene Vögel');
                PERFORM insert_category_translations('oiseaux-rares', 'es', 'aves raras');
                PERFORM insert_category_translations('oiseaux-rares', 'it', 'uccelli rari');

                -- Level 3: canaris
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('canaris', 'canaris', 3, l2_id, 'canaris')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('canaris', 'fr', 'canaris');
                PERFORM insert_category_translations('canaris', 'ar', 'كناري');
                PERFORM insert_category_translations('canaris', 'en', 'canaries');
                PERFORM insert_category_translations('canaris', 'de', 'Kanarienvögel');
                PERFORM insert_category_translations('canaris', 'es', 'canarios');
                PERFORM insert_category_translations('canaris', 'it', 'canarini');

            -- Level 2: poissons
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('poissons', 'poissons', 2, l1_id, 'poissons')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('poissons', 'fr', 'poissons');
            PERFORM insert_category_translations('poissons', 'ar', 'أسماك');
            PERFORM insert_category_translations('poissons', 'en', 'fish');
            PERFORM insert_category_translations('poissons', 'de', 'Fische');
            PERFORM insert_category_translations('poissons', 'es', 'peces');
            PERFORM insert_category_translations('poissons', 'it', 'Pesci');

                -- Level 3: poissons-aquarium
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('poissons-aquarium', 'poissons-aquarium', 3, l2_id, 'poissons d''''aquarium')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('poissons-aquarium', 'fr', 'poissons d''aquarium');
                PERFORM insert_category_translations('poissons-aquarium', 'ar', 'أسماك زينة');
                PERFORM insert_category_translations('poissons-aquarium', 'en', 'aquarium fish');
                PERFORM insert_category_translations('poissons-aquarium', 'de', 'Aquariumfische');
                PERFORM insert_category_translations('poissons-aquarium', 'es', 'peces de acuario');
                PERFORM insert_category_translations('poissons-aquarium', 'it', 'pesci d''acquario');

            -- Level 2: rongeurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('rongeurs', 'rongeurs', 2, l1_id, 'rongeurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('rongeurs', 'fr', 'rongeurs');
            PERFORM insert_category_translations('rongeurs', 'ar', 'قوارض');
            PERFORM insert_category_translations('rongeurs', 'en', 'rodents');
            PERFORM insert_category_translations('rongeurs', 'de', 'Nagetiere');
            PERFORM insert_category_translations('rongeurs', 'es', 'roedores');
            PERFORM insert_category_translations('rongeurs', 'it', 'Roditori');

                -- Level 3: lapins
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lapins', 'lapins', 3, l2_id, 'lapins')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('lapins', 'fr', 'lapins');
                PERFORM insert_category_translations('lapins', 'ar', 'أرانب');
                PERFORM insert_category_translations('lapins', 'en', 'rabbits');
                PERFORM insert_category_translations('lapins', 'de', 'Kaninchen');
                PERFORM insert_category_translations('lapins', 'es', 'conejos');
                PERFORM insert_category_translations('lapins', 'it', 'conigli');

                -- Level 3: hamsters
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('hamsters', 'hamsters', 3, l2_id, 'hamsters')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('hamsters', 'fr', 'hamsters');
                PERFORM insert_category_translations('hamsters', 'ar', 'هامستر');
                PERFORM insert_category_translations('hamsters', 'en', 'hamsters');
                PERFORM insert_category_translations('hamsters', 'de', 'Hamster');
                PERFORM insert_category_translations('hamsters', 'es', 'hámsters');
                PERFORM insert_category_translations('hamsters', 'it', 'criceti');

            -- Level 2: reptiles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('reptiles', 'reptiles', 2, l1_id, 'reptiles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('reptiles', 'fr', 'reptiles');
            PERFORM insert_category_translations('reptiles', 'ar', 'زواحف');
            PERFORM insert_category_translations('reptiles', 'en', 'reptiles');
            PERFORM insert_category_translations('reptiles', 'de', 'Reptilien');
            PERFORM insert_category_translations('reptiles', 'es', 'reptiles');
            PERFORM insert_category_translations('reptiles', 'it', 'Rettili');

                -- Level 3: tortues
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tortues', 'tortues', 3, l2_id, 'tortues')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('tortues', 'fr', 'tortues');
                PERFORM insert_category_translations('tortues', 'ar', 'سلاحف');
                PERFORM insert_category_translations('tortues', 'en', 'turtles');
                PERFORM insert_category_translations('tortues', 'de', 'Schildkröten');
                PERFORM insert_category_translations('tortues', 'es', 'tortugas');
                PERFORM insert_category_translations('tortues', 'it', 'tartarughe');

        -- Level 1: animaux-elevage
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('animaux-elevage', 'animaux-elevage', 1, root_id, 'Animaux d''''Élevage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('animaux-elevage', 'fr', 'Animaux d''Élevage');
        PERFORM insert_category_translations('animaux-elevage', 'ar', 'حيوانات المزرعة');
        PERFORM insert_category_translations('animaux-elevage', 'en', 'Farm Animals');
        PERFORM insert_category_translations('animaux-elevage', 'de', 'Nutztiere');
        PERFORM insert_category_translations('animaux-elevage', 'es', 'Animales de Cría');
        PERFORM insert_category_translations('animaux-elevage', 'it', 'Animali da Allevamento');

            -- Level 2: ovins
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ovins', 'ovins', 2, l1_id, 'ovins')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ovins', 'fr', 'ovins');
            PERFORM insert_category_translations('ovins', 'ar', 'أغنام');
            PERFORM insert_category_translations('ovins', 'en', 'sheep');
            PERFORM insert_category_translations('ovins', 'de', 'Schafe');
            PERFORM insert_category_translations('ovins', 'es', 'ovinos');
            PERFORM insert_category_translations('ovins', 'it', 'ovini');

            -- Level 2: bovins
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bovins', 'bovins', 2, l1_id, 'bovins')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bovins', 'fr', 'bovins');
            PERFORM insert_category_translations('bovins', 'ar', 'أبقار');
            PERFORM insert_category_translations('bovins', 'en', 'cattle');
            PERFORM insert_category_translations('bovins', 'de', 'Rinder');
            PERFORM insert_category_translations('bovins', 'es', 'bovinos');
            PERFORM insert_category_translations('bovins', 'it', 'bovini');

            -- Level 2: caprins
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('caprins', 'caprins', 2, l1_id, 'caprins')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('caprins', 'fr', 'caprins');
            PERFORM insert_category_translations('caprins', 'ar', 'ماعز');
            PERFORM insert_category_translations('caprins', 'en', 'goats');
            PERFORM insert_category_translations('caprins', 'de', 'Ziegen');
            PERFORM insert_category_translations('caprins', 'es', 'caprinos');
            PERFORM insert_category_translations('caprins', 'it', 'caprini');

            -- Level 2: volailles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('volailles', 'volailles', 2, l1_id, 'volailles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('volailles', 'fr', 'volailles');
            PERFORM insert_category_translations('volailles', 'ar', 'دواجن');
            PERFORM insert_category_translations('volailles', 'en', 'poultry');
            PERFORM insert_category_translations('volailles', 'de', 'Geflügel');
            PERFORM insert_category_translations('volailles', 'es', 'aves de corral');
            PERFORM insert_category_translations('volailles', 'it', 'pollame');

            -- Level 2: equides
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('equides', 'equides', 2, l1_id, 'équidés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('equides', 'fr', 'équidés');
            PERFORM insert_category_translations('equides', 'ar', 'خيول');
            PERFORM insert_category_translations('equides', 'en', 'equines');
            PERFORM insert_category_translations('equides', 'de', 'Pferde');
            PERFORM insert_category_translations('equides', 'es', 'equinos');
            PERFORM insert_category_translations('equides', 'it', 'equini');

        -- Level 1: nourriture-soins
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('nourriture-soins', 'nourriture-soins', 1, root_id, 'Nourriture & Soins Animaliers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('nourriture-soins', 'fr', 'Nourriture & Soins Animaliers');
        PERFORM insert_category_translations('nourriture-soins', 'ar', 'غذاء وعناية');
        PERFORM insert_category_translations('nourriture-soins', 'en', 'Food & Animal Care');
        PERFORM insert_category_translations('nourriture-soins', 'de', 'Tiernahrung & Pflege');
        PERFORM insert_category_translations('nourriture-soins', 'es', 'Alimentación & Cuidado Animal');
        PERFORM insert_category_translations('nourriture-soins', 'it', 'Cibo & Cura');

            -- Level 2: alimentation-chiens-chats
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('alimentation-chiens-chats', 'alimentation-chiens-chats', 2, l1_id, 'Alimentation Chiens & Chats')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('alimentation-chiens-chats', 'fr', 'Alimentation Chiens & Chats');
            PERFORM insert_category_translations('alimentation-chiens-chats', 'ar', 'غذاء الكلاب والقطط');
            PERFORM insert_category_translations('alimentation-chiens-chats', 'en', 'Dog & Cat Food');
            PERFORM insert_category_translations('alimentation-chiens-chats', 'de', 'Hunde- & Katzenfutter');
            PERFORM insert_category_translations('alimentation-chiens-chats', 'es', 'Alimentación Perros & Gatos');
            PERFORM insert_category_translations('alimentation-chiens-chats', 'it', 'Alimentazione Cani & Gatti');

                -- Level 3: croquettes
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('croquettes', 'croquettes', 3, l2_id, 'croquettes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('croquettes', 'fr', 'croquettes');
                PERFORM insert_category_translations('croquettes', 'ar', 'كروكيت');
                PERFORM insert_category_translations('croquettes', 'en', 'kibble');
                PERFORM insert_category_translations('croquettes', 'de', 'Trockenfutter');
                PERFORM insert_category_translations('croquettes', 'es', 'croquetas');
                PERFORM insert_category_translations('croquettes', 'it', 'crocchette');

                -- Level 3: patees
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('patees', 'patees', 3, l2_id, 'pâtées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('patees', 'fr', 'pâtées');
                PERFORM insert_category_translations('patees', 'ar', 'باتيه');
                PERFORM insert_category_translations('patees', 'en', 'wet food');
                PERFORM insert_category_translations('patees', 'de', 'Nassfutter');
                PERFORM insert_category_translations('patees', 'es', 'patés');
                PERFORM insert_category_translations('patees', 'it', 'paté');

                -- Level 3: friandises
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('friandises', 'friandises', 3, l2_id, 'friandises')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('friandises', 'fr', 'friandises');
                PERFORM insert_category_translations('friandises', 'ar', 'مكافآت');
                PERFORM insert_category_translations('friandises', 'en', 'treats');
                PERFORM insert_category_translations('friandises', 'de', 'Leckerli');
                PERFORM insert_category_translations('friandises', 'es', 'golosinas');
                PERFORM insert_category_translations('friandises', 'it', 'snack');

            -- Level 2: alimentation-oiseaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('alimentation-oiseaux', 'alimentation-oiseaux', 2, l1_id, 'Alimentation Oiseaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('alimentation-oiseaux', 'fr', 'Alimentation Oiseaux');
            PERFORM insert_category_translations('alimentation-oiseaux', 'ar', 'غذاء الطيور');
            PERFORM insert_category_translations('alimentation-oiseaux', 'en', 'Bird Food');
            PERFORM insert_category_translations('alimentation-oiseaux', 'de', 'Vogelfutter');
            PERFORM insert_category_translations('alimentation-oiseaux', 'es', 'Alimentación Aves');
            PERFORM insert_category_translations('alimentation-oiseaux', 'it', 'Alimentazione Uccelli');

                -- Level 3: melanges-oiseaux
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('melanges-oiseaux', 'melanges-oiseaux', 3, l2_id, 'mélanges pour oiseaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('melanges-oiseaux', 'fr', 'mélanges pour oiseaux');
                PERFORM insert_category_translations('melanges-oiseaux', 'ar', 'خلطات الطيور');
                PERFORM insert_category_translations('melanges-oiseaux', 'en', 'bird seed mixes');
                PERFORM insert_category_translations('melanges-oiseaux', 'de', 'Vogelsamenmischungen');
                PERFORM insert_category_translations('melanges-oiseaux', 'es', 'mezclas para aves');
                PERFORM insert_category_translations('melanges-oiseaux', 'it', 'miscele per uccelli');

            -- Level 2: alimentation-poissons
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('alimentation-poissons', 'alimentation-poissons', 2, l1_id, 'Alimentation Poissons')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('alimentation-poissons', 'fr', 'Alimentation Poissons');
            PERFORM insert_category_translations('alimentation-poissons', 'ar', 'غذاء الأسماك');
            PERFORM insert_category_translations('alimentation-poissons', 'en', 'Fish Food');
            PERFORM insert_category_translations('alimentation-poissons', 'de', 'Fischfutter');
            PERFORM insert_category_translations('alimentation-poissons', 'es', 'Alimentación Peces');
            PERFORM insert_category_translations('alimentation-poissons', 'it', 'Alimentazione Pesci');

                -- Level 3: aliments-poissons
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('aliments-poissons', 'aliments-poissons', 3, l2_id, 'aliments pour poissons')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('aliments-poissons', 'fr', 'aliments pour poissons');
                PERFORM insert_category_translations('aliments-poissons', 'ar', 'طعام الأسماك');
                PERFORM insert_category_translations('aliments-poissons', 'en', 'fish food');
                PERFORM insert_category_translations('aliments-poissons', 'de', 'Fischfutter');
                PERFORM insert_category_translations('aliments-poissons', 'es', 'alimentos para peces');
                PERFORM insert_category_translations('aliments-poissons', 'it', 'cibo per pesci');

            -- Level 2: soins-hygiene
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soins-hygiene', 'soins-hygiene', 2, l1_id, 'Soins & Hygiène')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('soins-hygiene', 'fr', 'Soins & Hygiène');
            PERFORM insert_category_translations('soins-hygiene', 'ar', 'عناية ونظافة');
            PERFORM insert_category_translations('soins-hygiene', 'en', 'Care & Hygiene');
            PERFORM insert_category_translations('soins-hygiene', 'de', 'Pflege & Hygiene');
            PERFORM insert_category_translations('soins-hygiene', 'es', 'Cuidado & Higiene');
            PERFORM insert_category_translations('soins-hygiene', 'it', 'Cura & Igiene');

                -- Level 3: produits-hygiene
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-hygiene', 'produits-hygiene', 3, l2_id, 'produits d''''hygiène')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('produits-hygiene', 'fr', 'produits d''hygiène');
                PERFORM insert_category_translations('produits-hygiene', 'ar', 'منتجات نظافة');
                PERFORM insert_category_translations('produits-hygiene', 'en', 'hygiene products');
                PERFORM insert_category_translations('produits-hygiene', 'de', 'Hygieneprodukte');
                PERFORM insert_category_translations('produits-hygiene', 'es', 'productos de higiene');
                PERFORM insert_category_translations('produits-hygiene', 'it', 'prodotti per l''igiene');

                -- Level 3: shampoings
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('shampoings', 'shampoings', 3, l2_id, 'shampoings')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('shampoings', 'fr', 'shampoings');
                PERFORM insert_category_translations('shampoings', 'ar', 'شامبو');
                PERFORM insert_category_translations('shampoings', 'en', 'shampoos');
                PERFORM insert_category_translations('shampoings', 'de', 'Shampoos');
                PERFORM insert_category_translations('shampoings', 'es', 'champús');
                PERFORM insert_category_translations('shampoings', 'it', 'shampoo');

                -- Level 3: antiparasitaires
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('antiparasitaires', 'antiparasitaires', 3, l2_id, 'antiparasitaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('antiparasitaires', 'fr', 'antiparasitaires');
                PERFORM insert_category_translations('antiparasitaires', 'ar', 'مضادات الطفيليات');
                PERFORM insert_category_translations('antiparasitaires', 'en', 'antiparasitics');
                PERFORM insert_category_translations('antiparasitaires', 'de', 'Antiparasitika');
                PERFORM insert_category_translations('antiparasitaires', 'es', 'antiparasitarios');
                PERFORM insert_category_translations('antiparasitaires', 'it', 'antiparassitari');

                -- Level 3: anti-tiques
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('anti-tiques', 'anti-tiques', 3, l2_id, 'anti-tiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('anti-tiques', 'fr', 'anti-tiques');
                PERFORM insert_category_translations('anti-tiques', 'ar', 'مضادات القراد');
                PERFORM insert_category_translations('anti-tiques', 'en', 'anti-tick products');
                PERFORM insert_category_translations('anti-tiques', 'de', 'Zeckenschutz');
                PERFORM insert_category_translations('anti-tiques', 'es', 'anti-garrapatas');
                PERFORM insert_category_translations('anti-tiques', 'it', 'anti-zecche');

                -- Level 3: produits-veterinaires
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-veterinaires', 'produits-veterinaires', 3, l2_id, 'produits vétérinaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('produits-veterinaires', 'fr', 'produits vétérinaires');
                PERFORM insert_category_translations('produits-veterinaires', 'ar', 'منتجات بيطرية');
                PERFORM insert_category_translations('produits-veterinaires', 'en', 'veterinary products');
                PERFORM insert_category_translations('produits-veterinaires', 'de', 'Veterinärprodukte');
                PERFORM insert_category_translations('produits-veterinaires', 'es', 'productos veterinarios');
                PERFORM insert_category_translations('produits-veterinaires', 'it', 'prodotti veterinari');

            -- Level 2: complements-alimentaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('complements-alimentaires', 'complements-alimentaires', 2, l1_id, 'Compléments Alimentaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('complements-alimentaires', 'fr', 'Compléments Alimentaires');
            PERFORM insert_category_translations('complements-alimentaires', 'ar', 'مكملات غذائية');
            PERFORM insert_category_translations('complements-alimentaires', 'en', 'Food Supplements');
            PERFORM insert_category_translations('complements-alimentaires', 'de', 'Nahrungsergänzungsmittel');
            PERFORM insert_category_translations('complements-alimentaires', 'es', 'Complementos Alimenticios');
            PERFORM insert_category_translations('complements-alimentaires', 'it', 'Integratori Alimentari');

                -- Level 3: vitamines
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vitamines', 'vitamines', 3, l2_id, 'vitamines')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('vitamines', 'fr', 'vitamines');
                PERFORM insert_category_translations('vitamines', 'ar', 'فيتامينات');
                PERFORM insert_category_translations('vitamines', 'en', 'vitamins');
                PERFORM insert_category_translations('vitamines', 'de', 'Vitamine');
                PERFORM insert_category_translations('vitamines', 'es', 'vitaminas');
                PERFORM insert_category_translations('vitamines', 'it', 'vitamine');

        -- Level 1: accessoires-equipements
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-equipements', 'accessoires-equipements', 1, root_id, 'Accessoires & Équipements')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('accessoires-equipements', 'fr', 'Accessoires & Équipements');
        PERFORM insert_category_translations('accessoires-equipements', 'ar', 'إكسسوارات ومعدات');
        PERFORM insert_category_translations('accessoires-equipements', 'en', 'Accessories & Equipment');
        PERFORM insert_category_translations('accessoires-equipements', 'de', 'Zubehör & Ausstattung');
        PERFORM insert_category_translations('accessoires-equipements', 'es', 'Accesorios & Equipos');
        PERFORM insert_category_translations('accessoires-equipements', 'it', 'Accessori & Attrezzature');

            -- Level 2: accessoires-promenade
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-promenade', 'accessoires-promenade', 2, l1_id, 'Accessoires de Promenade')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('accessoires-promenade', 'fr', 'Accessoires de Promenade');
            PERFORM insert_category_translations('accessoires-promenade', 'ar', 'إكسسوارات المشي');
            PERFORM insert_category_translations('accessoires-promenade', 'en', 'Walking Accessories');
            PERFORM insert_category_translations('accessoires-promenade', 'de', 'Spaziergäng-Zubehör');
            PERFORM insert_category_translations('accessoires-promenade', 'es', 'Accesorios de Paseo');
            PERFORM insert_category_translations('accessoires-promenade', 'it', 'Accessori da Passeggiata');

                -- Level 3: laisses
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('laisses', 'laisses', 3, l2_id, 'laisses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('laisses', 'fr', 'laisses');
                PERFORM insert_category_translations('laisses', 'ar', 'مقاود');
                PERFORM insert_category_translations('laisses', 'en', 'leashes');
                PERFORM insert_category_translations('laisses', 'de', 'Leinen');
                PERFORM insert_category_translations('laisses', 'es', 'correas');
                PERFORM insert_category_translations('laisses', 'it', 'guinzagli');

                -- Level 3: colliers
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('colliers', 'colliers', 3, l2_id, 'colliers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('colliers', 'fr', 'colliers');
                PERFORM insert_category_translations('colliers', 'ar', 'أطواق');
                PERFORM insert_category_translations('colliers', 'en', 'collars');
                PERFORM insert_category_translations('colliers', 'de', 'Halsbänder');
                PERFORM insert_category_translations('colliers', 'es', 'collares');
                PERFORM insert_category_translations('colliers', 'it', 'collari');

                -- Level 3: harnais
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('harnais', 'harnais', 3, l2_id, 'harnais')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('harnais', 'fr', 'harnais');
                PERFORM insert_category_translations('harnais', 'ar', 'حمالات');
                PERFORM insert_category_translations('harnais', 'en', 'harnesses');
                PERFORM insert_category_translations('harnais', 'de', 'Geschirre');
                PERFORM insert_category_translations('harnais', 'es', 'arneses');
                PERFORM insert_category_translations('harnais', 'it', 'pettorine');

            -- Level 2: habitats
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('habitats', 'habitats', 2, l1_id, 'Habitats')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('habitats', 'fr', 'Habitats');
            PERFORM insert_category_translations('habitats', 'ar', 'مساكن');
            PERFORM insert_category_translations('habitats', 'en', 'Habitats');
            PERFORM insert_category_translations('habitats', 'de', 'Unterkünfte');
            PERFORM insert_category_translations('habitats', 'es', 'Hábitats');
            PERFORM insert_category_translations('habitats', 'it', 'Habitat');

                -- Level 3: cages
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cages', 'cages', 3, l2_id, 'cages')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('cages', 'fr', 'cages');
                PERFORM insert_category_translations('cages', 'ar', 'أقفاص');
                PERFORM insert_category_translations('cages', 'en', 'cages');
                PERFORM insert_category_translations('cages', 'de', 'Käfige');
                PERFORM insert_category_translations('cages', 'es', 'jaulas');
                PERFORM insert_category_translations('cages', 'it', 'gabbie');

                -- Level 3: volières
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('volières', 'volières', 3, l2_id, 'volières')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('volières', 'fr', 'volières');
                PERFORM insert_category_translations('volières', 'ar', 'أقفاص كبيرة');
                PERFORM insert_category_translations('volières', 'en', 'aviaries');
                PERFORM insert_category_translations('volières', 'de', 'Voliere');
                PERFORM insert_category_translations('volières', 'es', 'pajareras');
                PERFORM insert_category_translations('volières', 'it', 'voliere');

                -- Level 3: niches
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('niches', 'niches', 3, l2_id, 'niches')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('niches', 'fr', 'niches');
                PERFORM insert_category_translations('niches', 'ar', 'بيوت كلاب');
                PERFORM insert_category_translations('niches', 'en', 'dog houses');
                PERFORM insert_category_translations('niches', 'de', 'Hundehütten');
                PERFORM insert_category_translations('niches', 'es', 'casetas');
                PERFORM insert_category_translations('niches', 'it', 'cucce');

                -- Level 3: aquariums
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('aquariums', 'aquariums', 3, l2_id, 'aquariums')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('aquariums', 'fr', 'aquariums');
                PERFORM insert_category_translations('aquariums', 'ar', 'أحواض سمك');
                PERFORM insert_category_translations('aquariums', 'en', 'aquariums');
                PERFORM insert_category_translations('aquariums', 'de', 'Aquarien');
                PERFORM insert_category_translations('aquariums', 'es', 'acuarios');
                PERFORM insert_category_translations('aquariums', 'it', 'acquari');

                -- Level 3: terrariums
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('terrariums', 'terrariums', 3, l2_id, 'terrariums')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('terrariums', 'fr', 'terrariums');
                PERFORM insert_category_translations('terrariums', 'ar', 'أحواض زواحف');
                PERFORM insert_category_translations('terrariums', 'en', 'terrariums');
                PERFORM insert_category_translations('terrariums', 'de', 'Terrarien');
                PERFORM insert_category_translations('terrariums', 'es', 'terrarios');
                PERFORM insert_category_translations('terrariums', 'it', 'terrari');

            -- Level 2: confort-dodo
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('confort-dodo', 'confort-dodo', 2, l1_id, 'Confort & Dodo')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('confort-dodo', 'fr', 'Confort & Dodo');
            PERFORM insert_category_translations('confort-dodo', 'ar', 'راحة ونوم');
            PERFORM insert_category_translations('confort-dodo', 'en', 'Comfort & Sleep');
            PERFORM insert_category_translations('confort-dodo', 'de', 'Komfort & Schlaf');
            PERFORM insert_category_translations('confort-dodo', 'es', 'Confort & Descanso');
            PERFORM insert_category_translations('confort-dodo', 'it', 'Comfort & Riposo');

                -- Level 3: paniers
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('paniers', 'paniers', 3, l2_id, 'paniers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('paniers', 'fr', 'paniers');
                PERFORM insert_category_translations('paniers', 'ar', 'سلال');
                PERFORM insert_category_translations('paniers', 'en', 'baskets');
                PERFORM insert_category_translations('paniers', 'de', 'Körbe');
                PERFORM insert_category_translations('paniers', 'es', 'cestas');
                PERFORM insert_category_translations('paniers', 'it', 'ceste');

                -- Level 3: coussins
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('coussins', 'coussins', 3, l2_id, 'coussins')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('coussins', 'fr', 'coussins');
                PERFORM insert_category_translations('coussins', 'ar', 'وسائد');
                PERFORM insert_category_translations('coussins', 'en', 'cushions');
                PERFORM insert_category_translations('coussins', 'de', 'Kissen');
                PERFORM insert_category_translations('coussins', 'es', 'cojines');
                PERFORM insert_category_translations('coussins', 'it', 'cuscini');

                -- Level 3: arbres-chat
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('arbres-chat', 'arbres-chat', 3, l2_id, 'arbres à chat')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('arbres-chat', 'fr', 'arbres à chat');
                PERFORM insert_category_translations('arbres-chat', 'ar', 'أشجار قطط');
                PERFORM insert_category_translations('arbres-chat', 'en', 'cat trees');
                PERFORM insert_category_translations('arbres-chat', 'de', 'Kratzbäume');
                PERFORM insert_category_translations('arbres-chat', 'es', 'árboles para gatos');
                PERFORM insert_category_translations('arbres-chat', 'it', 'tiragraffi');

            -- Level 2: alimentation-accessoires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('alimentation-accessoires', 'alimentation-accessoires', 2, l1_id, 'Alimentation & Accessoires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('alimentation-accessoires', 'fr', 'Alimentation & Accessoires');
            PERFORM insert_category_translations('alimentation-accessoires', 'ar', 'إكسسوارات الطعام');
            PERFORM insert_category_translations('alimentation-accessoires', 'en', 'Feeding Accessories');
            PERFORM insert_category_translations('alimentation-accessoires', 'de', 'Futter & Zubehör');
            PERFORM insert_category_translations('alimentation-accessoires', 'es', 'Alimentación & Accesorios');
            PERFORM insert_category_translations('alimentation-accessoires', 'it', 'Accessori per l''Alimentazione');

                -- Level 3: gamelles
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gamelles', 'gamelles', 3, l2_id, 'gamelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('gamelles', 'fr', 'gamelles');
                PERFORM insert_category_translations('gamelles', 'ar', 'أوعية');
                PERFORM insert_category_translations('gamelles', 'en', 'bowls');
                PERFORM insert_category_translations('gamelles', 'de', 'Futternäpfe');
                PERFORM insert_category_translations('gamelles', 'es', 'tazones');
                PERFORM insert_category_translations('gamelles', 'it', 'ciotole');

                -- Level 3: distributeurs-auto
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('distributeurs-auto', 'distributeurs-auto', 3, l2_id, 'distributeurs automatiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('distributeurs-auto', 'fr', 'distributeurs automatiques');
                PERFORM insert_category_translations('distributeurs-auto', 'ar', 'موزعات آلية');
                PERFORM insert_category_translations('distributeurs-auto', 'en', 'automatic feeders');
                PERFORM insert_category_translations('distributeurs-auto', 'de', 'Automatische Futterspender');
                PERFORM insert_category_translations('distributeurs-auto', 'es', 'dispensadores automáticos');
                PERFORM insert_category_translations('distributeurs-auto', 'it', 'distributori automatici');

                -- Level 3: fontaines-eau
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fontaines-eau', 'fontaines-eau', 3, l2_id, 'fontaines d''''eau')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('fontaines-eau', 'fr', 'fontaines d''eau');
                PERFORM insert_category_translations('fontaines-eau', 'ar', 'نوافير مياه');
                PERFORM insert_category_translations('fontaines-eau', 'en', 'water fountains');
                PERFORM insert_category_translations('fontaines-eau', 'de', 'Wasserbrunnen');
                PERFORM insert_category_translations('fontaines-eau', 'es', 'fuentes de agua');
                PERFORM insert_category_translations('fontaines-eau', 'it', 'fontane d''acqua');

            -- Level 2: litières-hygiene
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('litières-hygiene', 'litières-hygiene', 2, l1_id, 'Litières & Hygiène')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('litières-hygiene', 'fr', 'Litières & Hygiène');
            PERFORM insert_category_translations('litières-hygiene', 'ar', 'فضلات ونظافة');
            PERFORM insert_category_translations('litières-hygiene', 'en', 'Litter & Hygiene');
            PERFORM insert_category_translations('litières-hygiene', 'de', 'Katzenstreu & Hygiene');
            PERFORM insert_category_translations('litières-hygiene', 'es', 'Arena & Higiene');
            PERFORM insert_category_translations('litières-hygiene', 'it', 'Lettiera & Igiene');

                -- Level 3: litières
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('litières', 'litières', 3, l2_id, 'litières')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('litières', 'fr', 'litières');
                PERFORM insert_category_translations('litières', 'ar', 'رمال فضلات');
                PERFORM insert_category_translations('litières', 'en', 'litter');
                PERFORM insert_category_translations('litières', 'de', 'Katzenstreu');
                PERFORM insert_category_translations('litières', 'es', 'arenas');
                PERFORM insert_category_translations('litières', 'it', 'lettiere');

                -- Level 3: bacs-litiere
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bacs-litiere', 'bacs-litiere', 3, l2_id, 'bacs à litière')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('bacs-litiere', 'fr', 'bacs à litière');
                PERFORM insert_category_translations('bacs-litiere', 'ar', 'صناديق فضلات');
                PERFORM insert_category_translations('bacs-litiere', 'en', 'litter boxes');
                PERFORM insert_category_translations('bacs-litiere', 'de', 'Katzentoiletten');
                PERFORM insert_category_translations('bacs-litiere', 'es', 'bandejas de arena');
                PERFORM insert_category_translations('bacs-litiere', 'it', 'cassette igieniche');

            -- Level 2: jouets-loisirs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jouets-loisirs', 'jouets-loisirs', 2, l1_id, 'Jouets & Loisirs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('jouets-loisirs', 'fr', 'Jouets & Loisirs');
            PERFORM insert_category_translations('jouets-loisirs', 'ar', 'ألعاب وترفيه');
            PERFORM insert_category_translations('jouets-loisirs', 'en', 'Toys & Recreation');
            PERFORM insert_category_translations('jouets-loisirs', 'de', 'Spielzeug & Freizeit');
            PERFORM insert_category_translations('jouets-loisirs', 'es', 'Juguetes & Ocio');
            PERFORM insert_category_translations('jouets-loisirs', 'it', 'Giocattoli & Svago');

                -- Level 3: jouets
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jouets', 'jouets', 3, l2_id, 'jouets')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('jouets', 'fr', 'jouets');
                PERFORM insert_category_translations('jouets', 'ar', 'ألعاب');
                PERFORM insert_category_translations('jouets', 'en', 'toys');
                PERFORM insert_category_translations('jouets', 'de', 'Spielzeug');
                PERFORM insert_category_translations('jouets', 'es', 'juguetes');
                PERFORM insert_category_translations('jouets', 'it', 'giocattoli');

            -- Level 2: transport
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('transport', 'transport', 2, l1_id, 'Transport')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('transport', 'fr', 'Transport');
            PERFORM insert_category_translations('transport', 'ar', 'نقل');
            PERFORM insert_category_translations('transport', 'en', 'Transport');
            PERFORM insert_category_translations('transport', 'de', 'Transport');
            PERFORM insert_category_translations('transport', 'es', 'Transporte');
            PERFORM insert_category_translations('transport', 'it', 'Trasporto');

                -- Level 3: paniers-transport
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('paniers-transport', 'paniers-transport', 3, l2_id, 'paniers de transport')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('paniers-transport', 'fr', 'paniers de transport');
                PERFORM insert_category_translations('paniers-transport', 'ar', 'أقفاص نقل');
                PERFORM insert_category_translations('paniers-transport', 'en', 'transport baskets');
                PERFORM insert_category_translations('paniers-transport', 'de', 'Transportkörbe');
                PERFORM insert_category_translations('paniers-transport', 'es', 'cestas de transporte');
                PERFORM insert_category_translations('paniers-transport', 'it', 'trasportini');

        -- Level 1: elevage-reproduction
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('elevage-reproduction', 'elevage-reproduction', 1, root_id, 'Élevage & Reproduction')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('elevage-reproduction', 'fr', 'Élevage & Reproduction');
        PERFORM insert_category_translations('elevage-reproduction', 'ar', 'تربية وتكاثر');
        PERFORM insert_category_translations('elevage-reproduction', 'en', 'Breeding & Reproduction');
        PERFORM insert_category_translations('elevage-reproduction', 'de', 'Zucht & Fortpflanzung');
        PERFORM insert_category_translations('elevage-reproduction', 'es', 'Cría & Reproducción');
        PERFORM insert_category_translations('elevage-reproduction', 'it', 'Allevamento & Riproduzione');

            -- Level 2: materiel-elevage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('materiel-elevage', 'materiel-elevage', 2, l1_id, 'Matériel d''''Élevage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('materiel-elevage', 'fr', 'Matériel d''Élevage');
            PERFORM insert_category_translations('materiel-elevage', 'ar', 'معدات تربية');
            PERFORM insert_category_translations('materiel-elevage', 'en', 'Breeding Equipment');
            PERFORM insert_category_translations('materiel-elevage', 'de', 'Zuchtausrüstung');
            PERFORM insert_category_translations('materiel-elevage', 'es', 'Material de Cría');
            PERFORM insert_category_translations('materiel-elevage', 'it', 'Attrezzature per Allevamento');

                -- Level 3: incubateurs
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('incubateurs', 'incubateurs', 3, l2_id, 'incubateurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('incubateurs', 'fr', 'incubateurs');
                PERFORM insert_category_translations('incubateurs', 'ar', 'حاضنات');
                PERFORM insert_category_translations('incubateurs', 'en', 'incubators');
                PERFORM insert_category_translations('incubateurs', 'de', 'Brutapparate');
                PERFORM insert_category_translations('incubateurs', 'es', 'incubadoras');
                PERFORM insert_category_translations('incubateurs', 'it', 'incubatrici');

                -- Level 3: couveuses
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('couveuses', 'couveuses', 3, l2_id, 'couveuses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('couveuses', 'fr', 'couveuses');
                PERFORM insert_category_translations('couveuses', 'ar', 'فقاسات');
                PERFORM insert_category_translations('couveuses', 'en', 'brooders');
                PERFORM insert_category_translations('couveuses', 'de', 'Brutmaschinen');
                PERFORM insert_category_translations('couveuses', 'es', 'cobederas');
                PERFORM insert_category_translations('couveuses', 'it', 'covatrici');

                -- Level 3: cages-elevage
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cages-elevage', 'cages-elevage', 3, l2_id, 'cages d''''élevage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('cages-elevage', 'fr', 'cages d''élevage');
                PERFORM insert_category_translations('cages-elevage', 'ar', 'أقفاص تربية');
                PERFORM insert_category_translations('cages-elevage', 'en', 'breeding cages');
                PERFORM insert_category_translations('cages-elevage', 'de', 'Zuchtkäfige');
                PERFORM insert_category_translations('cages-elevage', 'es', 'jaulas de cría');
                PERFORM insert_category_translations('cages-elevage', 'it', 'gabbie da allevamento');

            -- Level 2: accessoires-reproduction
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-reproduction', 'accessoires-reproduction', 2, l1_id, 'Accessoires de Reproduction')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('accessoires-reproduction', 'fr', 'Accessoires de Reproduction');
            PERFORM insert_category_translations('accessoires-reproduction', 'ar', 'إكسسوارات تكاثر');
            PERFORM insert_category_translations('accessoires-reproduction', 'en', 'Reproduction Accessories');
            PERFORM insert_category_translations('accessoires-reproduction', 'de', 'Fortpflanzungszubehör');
            PERFORM insert_category_translations('accessoires-reproduction', 'es', 'Accesorios de Reproducción');
            PERFORM insert_category_translations('accessoires-reproduction', 'it', 'Accessori per Riproduzione');

                -- Level 3: accessoires-accouplement
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-accouplement', 'accessoires-accouplement', 3, l2_id, 'accessoires d''''accouplement')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('accessoires-accouplement', 'fr', 'accessoires d''accouplement');
                PERFORM insert_category_translations('accessoires-accouplement', 'ar', 'إكسسوارات تزاوج');
                PERFORM insert_category_translations('accessoires-accouplement', 'en', 'mating accessories');
                PERFORM insert_category_translations('accessoires-accouplement', 'de', 'Paarungszubehör');
                PERFORM insert_category_translations('accessoires-accouplement', 'es', 'accesorios de apareamiento');
                PERFORM insert_category_translations('accessoires-accouplement', 'it', 'accessori per accoppiamento');

            -- Level 2: reproducteurs-selectionnes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('reproducteurs-selectionnes', 'reproducteurs-selectionnes', 2, l1_id, 'Reproducteurs Sélectionnés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('reproducteurs-selectionnes', 'fr', 'Reproducteurs Sélectionnés');
            PERFORM insert_category_translations('reproducteurs-selectionnes', 'ar', 'حيوانات تكاثر مختارة');
            PERFORM insert_category_translations('reproducteurs-selectionnes', 'en', 'Selected Breeders');
            PERFORM insert_category_translations('reproducteurs-selectionnes', 'de', 'Ausgewählte Zuchttiere');
            PERFORM insert_category_translations('reproducteurs-selectionnes', 'es', 'Reproductores Seleccionados');
            PERFORM insert_category_translations('reproducteurs-selectionnes', 'it', 'Riproduttori Selezionati');

                -- Level 3: reproducteurs
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('reproducteurs', 'reproducteurs', 3, l2_id, 'reproducteurs sélectionnés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('reproducteurs', 'fr', 'reproducteurs sélectionnés');
                PERFORM insert_category_translations('reproducteurs', 'ar', 'حيوانات تكاثر');
                PERFORM insert_category_translations('reproducteurs', 'en', 'selected breeders');
                PERFORM insert_category_translations('reproducteurs', 'de', 'Ausgewählte Zuchttiere');
                PERFORM insert_category_translations('reproducteurs', 'es', 'reproductores seleccionados');
                PERFORM insert_category_translations('reproducteurs', 'it', 'riproduttori selezionati');

            -- Level 2: jeunes-animaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jeunes-animaux', 'jeunes-animaux', 2, l1_id, 'Jeunes Animaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('jeunes-animaux', 'fr', 'Jeunes Animaux');
            PERFORM insert_category_translations('jeunes-animaux', 'ar', 'حيوانات صغيرة');
            PERFORM insert_category_translations('jeunes-animaux', 'en', 'Young Animals');
            PERFORM insert_category_translations('jeunes-animaux', 'de', 'Jungtiere');
            PERFORM insert_category_translations('jeunes-animaux', 'es', 'Animales Jóvenes');
            PERFORM insert_category_translations('jeunes-animaux', 'it', 'Giovani Animali');

                -- Level 3: poussins
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('poussins', 'poussins', 3, l2_id, 'poussins')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('poussins', 'fr', 'poussins');
                PERFORM insert_category_translations('poussins', 'ar', 'صيصان');
                PERFORM insert_category_translations('poussins', 'en', 'chicks');
                PERFORM insert_category_translations('poussins', 'de', 'Küken');
                PERFORM insert_category_translations('poussins', 'es', 'polluelos');
                PERFORM insert_category_translations('poussins', 'it', 'pulcini');

                -- Level 3: agneaux
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('agneaux', 'agneaux', 3, l2_id, 'agneaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('agneaux', 'fr', 'agneaux');
                PERFORM insert_category_translations('agneaux', 'ar', 'حملان');
                PERFORM insert_category_translations('agneaux', 'en', 'lambs');
                PERFORM insert_category_translations('agneaux', 'de', 'Lämmer');
                PERFORM insert_category_translations('agneaux', 'es', 'corderos');
                PERFORM insert_category_translations('agneaux', 'it', 'agnelli');

                -- Level 3: chevreaux
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chevreaux', 'chevreaux', 3, l2_id, 'chevreaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('chevreaux', 'fr', 'chevreaux');
                PERFORM insert_category_translations('chevreaux', 'ar', 'جديان');
                PERFORM insert_category_translations('chevreaux', 'en', 'kids');
                PERFORM insert_category_translations('chevreaux', 'de', 'Zicklein');
                PERFORM insert_category_translations('chevreaux', 'es', 'cabritos');
                PERFORM insert_category_translations('chevreaux', 'it', 'capretti');

            -- Level 2: services-elevage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('services-elevage', 'services-elevage', 2, l1_id, 'Services d''''Élevage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('services-elevage', 'fr', 'Services d''Élevage');
            PERFORM insert_category_translations('services-elevage', 'ar', 'خدمات تربية');
            PERFORM insert_category_translations('services-elevage', 'en', 'Breeding Services');
            PERFORM insert_category_translations('services-elevage', 'de', 'Zuchtdienstleistungen');
            PERFORM insert_category_translations('services-elevage', 'es', 'Servicios de Cría');
            PERFORM insert_category_translations('services-elevage', 'it', 'Servizi di Allevamento');

                -- Level 3: assistance-elevage
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('assistance-elevage', 'assistance-elevage', 3, l2_id, 'services d''''assistance à l''''élevage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('assistance-elevage', 'fr', 'services d''assistance à l''élevage');
                PERFORM insert_category_translations('assistance-elevage', 'ar', 'مساعدة تربية');
                PERFORM insert_category_translations('assistance-elevage', 'en', 'breeding assistance services');
                PERFORM insert_category_translations('assistance-elevage', 'de', 'Zuchtunterstützungsdienste');
                PERFORM insert_category_translations('assistance-elevage', 'es', 'servicios de asistencia a la cría');
                PERFORM insert_category_translations('assistance-elevage', 'it', 'servizi di assistenza all''allevamento');

                -- Level 3: conseils-specialises
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('conseils-specialises', 'conseils-specialises', 3, l2_id, 'conseils spécialisés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('conseils-specialises', 'fr', 'conseils spécialisés');
                PERFORM insert_category_translations('conseils-specialises', 'ar', 'نصائح متخصصة');
                PERFORM insert_category_translations('conseils-specialises', 'en', 'specialized advice');
                PERFORM insert_category_translations('conseils-specialises', 'de', 'Spezialberatung');
                PERFORM insert_category_translations('conseils-specialises', 'es', 'asesoramiento especializado');
                PERFORM insert_category_translations('conseils-specialises', 'it', 'consigli specializzati');

                -- Level 3: genetique-selection
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('genetique-selection', 'genetique-selection', 3, l2_id, 'génétique & sélection')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('genetique-selection', 'fr', 'génétique & sélection');
                PERFORM insert_category_translations('genetique-selection', 'ar', 'وراثة وانتقاء');
                PERFORM insert_category_translations('genetique-selection', 'en', 'genetics & selection');
                PERFORM insert_category_translations('genetique-selection', 'de', 'Genetik & Selektion');
                PERFORM insert_category_translations('genetique-selection', 'es', 'genética & selección');
                PERFORM insert_category_translations('genetique-selection', 'it', 'genetica & selezione');

        -- Level 1: services-animaliers
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('services-animaliers', 'services-animaliers', 1, root_id, 'Services Animaliers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('services-animaliers', 'fr', 'Services Animaliers');
        PERFORM insert_category_translations('services-animaliers', 'ar', 'خدمات حيوانات');
        PERFORM insert_category_translations('services-animaliers', 'en', 'Animal Services');
        PERFORM insert_category_translations('services-animaliers', 'de', 'Tierdienstleistungen');
        PERFORM insert_category_translations('services-animaliers', 'es', 'Servicios Animales');
        PERFORM insert_category_translations('services-animaliers', 'it', 'Servizi per Animali');

            -- Level 2: toilettage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('toilettage', 'toilettage', 2, l1_id, 'Toilettage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('toilettage', 'fr', 'Toilettage');
            PERFORM insert_category_translations('toilettage', 'ar', 'حلاقة وتنظيف');
            PERFORM insert_category_translations('toilettage', 'en', 'Grooming');
            PERFORM insert_category_translations('toilettage', 'de', 'Tierpflege');
            PERFORM insert_category_translations('toilettage', 'es', 'Estética');
            PERFORM insert_category_translations('toilettage', 'it', 'Toelettatura');

                -- Level 3: toilettage-chiens
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('toilettage-chiens', 'toilettage-chiens', 3, l2_id, 'toilettage chiens')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('toilettage-chiens', 'fr', 'toilettage chiens');
                PERFORM insert_category_translations('toilettage-chiens', 'ar', 'حلاقة كلاب');
                PERFORM insert_category_translations('toilettage-chiens', 'en', 'dog grooming');
                PERFORM insert_category_translations('toilettage-chiens', 'de', 'Hundepflege');
                PERFORM insert_category_translations('toilettage-chiens', 'es', 'estética canina');
                PERFORM insert_category_translations('toilettage-chiens', 'it', 'toelettatura cani');

                -- Level 3: toilettage-chats
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('toilettage-chats', 'toilettage-chats', 3, l2_id, 'toilettage chats')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('toilettage-chats', 'fr', 'toilettage chats');
                PERFORM insert_category_translations('toilettage-chats', 'ar', 'حلاقة قطط');
                PERFORM insert_category_translations('toilettage-chats', 'en', 'cat grooming');
                PERFORM insert_category_translations('toilettage-chats', 'de', 'Katzenpflege');
                PERFORM insert_category_translations('toilettage-chats', 'es', 'estética felina');
                PERFORM insert_category_translations('toilettage-chats', 'it', 'toelettatura gatti');

            -- Level 2: dressage-education
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('dressage-education', 'dressage-education', 2, l1_id, 'Dressage & Éducation')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('dressage-education', 'fr', 'Dressage & Éducation');
            PERFORM insert_category_translations('dressage-education', 'ar', 'تدريب وتعليم');
            PERFORM insert_category_translations('dressage-education', 'en', 'Training & Education');
            PERFORM insert_category_translations('dressage-education', 'de', 'Abrichtung & Erziehung');
            PERFORM insert_category_translations('dressage-education', 'es', 'Adiestramiento & Educación');
            PERFORM insert_category_translations('dressage-education', 'it', 'Addestramento & Educazione');

                -- Level 3: dressage-canin
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('dressage-canin', 'dressage-canin', 3, l2_id, 'dressage canin')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('dressage-canin', 'fr', 'dressage canin');
                PERFORM insert_category_translations('dressage-canin', 'ar', 'تدريب كلاب');
                PERFORM insert_category_translations('dressage-canin', 'en', 'dog training');
                PERFORM insert_category_translations('dressage-canin', 'de', 'Hundeabrichtung');
                PERFORM insert_category_translations('dressage-canin', 'es', 'adiestramiento canino');
                PERFORM insert_category_translations('dressage-canin', 'it', 'addestramento cinofilo');

                -- Level 3: education-canine
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('education-canine', 'education-canine', 3, l2_id, 'éducation canine')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('education-canine', 'fr', 'éducation canine');
                PERFORM insert_category_translations('education-canine', 'ar', 'تعليم كلاب');
                PERFORM insert_category_translations('education-canine', 'en', 'canine education');
                PERFORM insert_category_translations('education-canine', 'de', 'Hundeerziehung');
                PERFORM insert_category_translations('education-canine', 'es', 'educación canina');
                PERFORM insert_category_translations('education-canine', 'it', 'educazione cinofila');

            -- Level 2: pension-garde
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pension-garde', 'pension-garde', 2, l1_id, 'Pension & Garde')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pension-garde', 'fr', 'Pension & Garde');
            PERFORM insert_category_translations('pension-garde', 'ar', 'إيواء وحراسة');
            PERFORM insert_category_translations('pension-garde', 'en', 'Boarding & Care');
            PERFORM insert_category_translations('pension-garde', 'de', 'Pension & Betreuung');
            PERFORM insert_category_translations('pension-garde', 'es', 'Pensión & Guardería');
            PERFORM insert_category_translations('pension-garde', 'it', 'Pensione & Custodia');

                -- Level 3: pension-animaux
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pension-animaux', 'pension-animaux', 3, l2_id, 'pension & garde d''''animaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('pension-animaux', 'fr', 'pension & garde d''animaux');
                PERFORM insert_category_translations('pension-animaux', 'ar', 'نزل وحراسة حيوانات');
                PERFORM insert_category_translations('pension-animaux', 'en', 'pet boarding & care');
                PERFORM insert_category_translations('pension-animaux', 'de', 'Tierpension & -betreuung');
                PERFORM insert_category_translations('pension-animaux', 'es', 'pensión & guardería de animales');
                PERFORM insert_category_translations('pension-animaux', 'it', 'pensione & custodia animali');

            -- Level 2: promenades-soins
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('promenades-soins', 'promenades-soins', 2, l1_id, 'Promenades & Soins')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('promenades-soins', 'fr', 'Promenades & Soins');
            PERFORM insert_category_translations('promenades-soins', 'ar', 'مشي وعناية');
            PERFORM insert_category_translations('promenades-soins', 'en', 'Walks & Care');
            PERFORM insert_category_translations('promenades-soins', 'de', 'Gassigehen & Pflege');
            PERFORM insert_category_translations('promenades-soins', 'es', 'Paseos & Cuidados');
            PERFORM insert_category_translations('promenades-soins', 'it', 'Passeggiate & Cure');

                -- Level 3: promenades
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('promenades', 'promenades', 3, l2_id, 'promenades')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('promenades', 'fr', 'promenades');
                PERFORM insert_category_translations('promenades', 'ar', 'مشي');
                PERFORM insert_category_translations('promenades', 'en', 'walks');
                PERFORM insert_category_translations('promenades', 'de', 'Gassigehen');
                PERFORM insert_category_translations('promenades', 'es', 'paseos');
                PERFORM insert_category_translations('promenades', 'it', 'passeggiate');

                -- Level 3: soins-domicile
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soins-domicile', 'soins-domicile', 3, l2_id, 'soins à domicile')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('soins-domicile', 'fr', 'soins à domicile');
                PERFORM insert_category_translations('soins-domicile', 'ar', 'عناية منزلية');
                PERFORM insert_category_translations('soins-domicile', 'en', 'home care');
                PERFORM insert_category_translations('soins-domicile', 'de', 'Hausbesuchspflege');
                PERFORM insert_category_translations('soins-domicile', 'es', 'cuidados a domicilio');
                PERFORM insert_category_translations('soins-domicile', 'it', 'cure a domicilio');

            -- Level 2: comportement-adoption
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('comportement-adoption', 'comportement-adoption', 2, l1_id, 'Comportement & Adoption')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('comportement-adoption', 'fr', 'Comportement & Adoption');
            PERFORM insert_category_translations('comportement-adoption', 'ar', 'سلوك وتبني');
            PERFORM insert_category_translations('comportement-adoption', 'en', 'Behavior & Adoption');
            PERFORM insert_category_translations('comportement-adoption', 'de', 'Verhalten & Adoption');
            PERFORM insert_category_translations('comportement-adoption', 'es', 'Comportamiento & Adopción');
            PERFORM insert_category_translations('comportement-adoption', 'it', 'Comportamento & Adozione');

                -- Level 3: consultation-comportementaliste
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('consultation-comportementaliste', 'consultation-comportementaliste', 3, l2_id, 'consultation comportementaliste')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('consultation-comportementaliste', 'fr', 'consultation comportementaliste');
                PERFORM insert_category_translations('consultation-comportementaliste', 'ar', 'استشارة سلوكية');
                PERFORM insert_category_translations('consultation-comportementaliste', 'en', 'behaviorist consultation');
                PERFORM insert_category_translations('consultation-comportementaliste', 'de', 'Verhaltenstherapie');
                PERFORM insert_category_translations('consultation-comportementaliste', 'es', 'consulta etóloga');
                PERFORM insert_category_translations('consultation-comportementaliste', 'it', 'consultazione comportamentale');

                -- Level 3: adoption
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('adoption', 'adoption', 3, l2_id, 'adoption')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('adoption', 'fr', 'adoption');
                PERFORM insert_category_translations('adoption', 'ar', 'تبني');
                PERFORM insert_category_translations('adoption', 'en', 'adoption');
                PERFORM insert_category_translations('adoption', 'de', 'Adoption');
                PERFORM insert_category_translations('adoption', 'es', 'adopción');
                PERFORM insert_category_translations('adoption', 'it', 'adozione');

            -- Level 2: services-speciaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('services-speciaux', 'services-speciaux', 2, l1_id, 'Services Spéciaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('services-speciaux', 'fr', 'Services Spéciaux');
            PERFORM insert_category_translations('services-speciaux', 'ar', 'خدمات خاصة');
            PERFORM insert_category_translations('services-speciaux', 'en', 'Special Services');
            PERFORM insert_category_translations('services-speciaux', 'de', 'Spezialdienste');
            PERFORM insert_category_translations('services-speciaux', 'es', 'Servicios Especiales');
            PERFORM insert_category_translations('services-speciaux', 'it', 'Servizi Speciali');

                -- Level 3: photographie-animaliere
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('photographie-animaliere', 'photographie-animaliere', 3, l2_id, 'photographie animalière')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('photographie-animaliere', 'fr', 'photographie animalière');
                PERFORM insert_category_translations('photographie-animaliere', 'ar', 'تصوير حيوانات');
                PERFORM insert_category_translations('photographie-animaliere', 'en', 'pet photography');
                PERFORM insert_category_translations('photographie-animaliere', 'de', 'Tierfotografie');
                PERFORM insert_category_translations('photographie-animaliere', 'es', 'fotografía animal');
                PERFORM insert_category_translations('photographie-animaliere', 'it', 'fotografia di animali');

                -- Level 3: transport-animaux
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('transport-animaux', 'transport-animaux', 3, l2_id, 'transport d''''animaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('transport-animaux', 'fr', 'transport d''animaux');
                PERFORM insert_category_translations('transport-animaux', 'ar', 'نقل حيوانات');
                PERFORM insert_category_translations('transport-animaux', 'en', 'animal transport');
                PERFORM insert_category_translations('transport-animaux', 'de', 'Tiertransport');
                PERFORM insert_category_translations('transport-animaux', 'es', 'transporte de animales');
                PERFORM insert_category_translations('transport-animaux', 'it', 'trasporto animali');

                -- Level 3: services-veterinaires
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('services-veterinaires', 'services-veterinaires', 3, l2_id, 'services vétérinaires privés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('services-veterinaires', 'fr', 'services vétérinaires privés');
                PERFORM insert_category_translations('services-veterinaires', 'ar', 'خدمات بيطرية خاصة');
                PERFORM insert_category_translations('services-veterinaires', 'en', 'private veterinary services');
                PERFORM insert_category_translations('services-veterinaires', 'de', 'Private Tierarztdienste');
                PERFORM insert_category_translations('services-veterinaires', 'es', 'servicios veterinarios privados');
                PERFORM insert_category_translations('services-veterinaires', 'it', 'servizi veterinari privati');

        -- Level 1: produits-exterieurs
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-exterieurs', 'produits-exterieurs', 1, root_id, 'Produits & Accessoires Extérieurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('produits-exterieurs', 'fr', 'Produits & Accessoires Extérieurs');
        PERFORM insert_category_translations('produits-exterieurs', 'ar', 'منتجات خارجية');
        PERFORM insert_category_translations('produits-exterieurs', 'en', 'Outdoor Products');
        PERFORM insert_category_translations('produits-exterieurs', 'de', 'Produkte & Outdoor-Zubehör');
        PERFORM insert_category_translations('produits-exterieurs', 'es', 'Productos & Accesorios Exteriores');
        PERFORM insert_category_translations('produits-exterieurs', 'it', 'Prodotti & Accessori Esterni');

            -- Level 2: clotures-enclos
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('clotures-enclos', 'clotures-enclos', 2, l1_id, 'Clôtures & Enclos')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('clotures-enclos', 'fr', 'Clôtures & Enclos');
            PERFORM insert_category_translations('clotures-enclos', 'ar', 'أسوار وحظائر');
            PERFORM insert_category_translations('clotures-enclos', 'en', 'Fences & Enclosures');
            PERFORM insert_category_translations('clotures-enclos', 'de', 'Zäune & Gehege');
            PERFORM insert_category_translations('clotures-enclos', 'es', 'Cercas & Recintos');
            PERFORM insert_category_translations('clotures-enclos', 'it', 'Recinzioni & Recinti');

                -- Level 3: clotures-animaux
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('clotures-animaux', 'clotures-animaux', 3, l2_id, 'clôtures pour animaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('clotures-animaux', 'fr', 'clôtures pour animaux');
                PERFORM insert_category_translations('clotures-animaux', 'ar', 'أسوار حيوانات');
                PERFORM insert_category_translations('clotures-animaux', 'en', 'animal fences');
                PERFORM insert_category_translations('clotures-animaux', 'de', 'Tierzäune');
                PERFORM insert_category_translations('clotures-animaux', 'es', 'cercas para animales');
                PERFORM insert_category_translations('clotures-animaux', 'it', 'recinzioni per animali');

                -- Level 3: enclos
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('enclos', 'enclos', 3, l2_id, 'enclos')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('enclos', 'fr', 'enclos');
                PERFORM insert_category_translations('enclos', 'ar', 'حظائر');
                PERFORM insert_category_translations('enclos', 'en', 'enclosures');
                PERFORM insert_category_translations('enclos', 'de', 'Gehege');
                PERFORM insert_category_translations('enclos', 'es', 'recintos');
                PERFORM insert_category_translations('enclos', 'it', 'recinti');

            -- Level 2: abris-exterieurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('abris-exterieurs', 'abris-exterieurs', 2, l1_id, 'Abris Extérieurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('abris-exterieurs', 'fr', 'Abris Extérieurs');
            PERFORM insert_category_translations('abris-exterieurs', 'ar', 'ملاجئ خارجية');
            PERFORM insert_category_translations('abris-exterieurs', 'en', 'Outdoor Shelters');
            PERFORM insert_category_translations('abris-exterieurs', 'de', 'Outdoor-Unterstände');
            PERFORM insert_category_translations('abris-exterieurs', 'es', 'Refugios Exteriores');
            PERFORM insert_category_translations('abris-exterieurs', 'it', 'Rifugi Esterni');

                -- Level 3: abris-exterieurs-animaux
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('abris-exterieurs-animaux', 'abris-exterieurs-animaux', 3, l2_id, 'abris extérieurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('abris-exterieurs-animaux', 'fr', 'abris extérieurs');
                PERFORM insert_category_translations('abris-exterieurs-animaux', 'ar', 'ملاجئ خارجية');
                PERFORM insert_category_translations('abris-exterieurs-animaux', 'en', 'outdoor shelters');
                PERFORM insert_category_translations('abris-exterieurs-animaux', 'de', 'Outdoor-Unterstände');
                PERFORM insert_category_translations('abris-exterieurs-animaux', 'es', 'refugios exteriores');
                PERFORM insert_category_translations('abris-exterieurs-animaux', 'it', 'rifugi esterni');

            -- Level 2: alimentation-automatique
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('alimentation-automatique', 'alimentation-automatique', 2, l1_id, 'Alimentation Automatique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('alimentation-automatique', 'fr', 'Alimentation Automatique');
            PERFORM insert_category_translations('alimentation-automatique', 'ar', 'تغذية آلية');
            PERFORM insert_category_translations('alimentation-automatique', 'en', 'Automatic Feeding');
            PERFORM insert_category_translations('alimentation-automatique', 'de', 'Automatische Fütterung');
            PERFORM insert_category_translations('alimentation-automatique', 'es', 'Alimentación Automática');
            PERFORM insert_category_translations('alimentation-automatique', 'it', 'Alimentazione Automatica');

                -- Level 3: mangeoires-auto
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mangeoires-auto', 'mangeoires-auto', 3, l2_id, 'mangeoires automatiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('mangeoires-auto', 'fr', 'mangeoires automatiques');
                PERFORM insert_category_translations('mangeoires-auto', 'ar', 'معالف آلية');
                PERFORM insert_category_translations('mangeoires-auto', 'en', 'automatic feeders');
                PERFORM insert_category_translations('mangeoires-auto', 'de', 'Automatische Futterautomaten');
                PERFORM insert_category_translations('mangeoires-auto', 'es', 'comedores automáticos');
                PERFORM insert_category_translations('mangeoires-auto', 'it', 'mangiatoie automatiche');

                -- Level 3: systemes-abreuvement
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('systemes-abreuvement', 'systemes-abreuvement', 3, l2_id, 'systèmes d''''abreuvement')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('systemes-abreuvement', 'fr', 'systèmes d''abreuvement');
                PERFORM insert_category_translations('systemes-abreuvement', 'ar', 'أنظمة شرب');
                PERFORM insert_category_translations('systemes-abreuvement', 'en', 'watering systems');
                PERFORM insert_category_translations('systemes-abreuvement', 'de', 'Tränkesysteme');
                PERFORM insert_category_translations('systemes-abreuvement', 'es', 'sistemas de abrevadero');
                PERFORM insert_category_translations('systemes-abreuvement', 'it', 'sistemi di abbeveraggio');

            -- Level 2: equipements-elevage-exterieur
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('equipements-elevage-exterieur', 'equipements-elevage-exterieur', 2, l1_id, 'Équipements Élevage Extérieur')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('equipements-elevage-exterieur', 'fr', 'Équipements Élevage Extérieur');
            PERFORM insert_category_translations('equipements-elevage-exterieur', 'ar', 'معدات تربية خارجية');
            PERFORM insert_category_translations('equipements-elevage-exterieur', 'en', 'Outdoor Breeding Equipment');
            PERFORM insert_category_translations('equipements-elevage-exterieur', 'de', 'Outdoor-Zuchtausrüstung');
            PERFORM insert_category_translations('equipements-elevage-exterieur', 'es', 'Equipos Cría Exterior');
            PERFORM insert_category_translations('equipements-elevage-exterieur', 'it', 'Attrezzature Allevamento Esterno');

                -- Level 3: materiel-plein-air
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('materiel-plein-air', 'materiel-plein-air', 3, l2_id, 'matériel pour élevage en plein air')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('materiel-plein-air', 'fr', 'matériel pour élevage en plein air');
                PERFORM insert_category_translations('materiel-plein-air', 'ar', 'معدات الهواء الطلق');
                PERFORM insert_category_translations('materiel-plein-air', 'en', 'outdoor breeding equipment');
                PERFORM insert_category_translations('materiel-plein-air', 'de', 'Outdoor-Zuchtausrüstung');
                PERFORM insert_category_translations('materiel-plein-air', 'es', 'material para cría al aire libre');
                PERFORM insert_category_translations('materiel-plein-air', 'it', 'attrezzature per allevamento all''aperto');

            -- Level 2: confort-thermique
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('confort-thermique', 'confort-thermique', 2, l1_id, 'Confort Thermique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('confort-thermique', 'fr', 'Confort Thermique');
            PERFORM insert_category_translations('confort-thermique', 'ar', 'راحة حرارية');
            PERFORM insert_category_translations('confort-thermique', 'en', 'Thermal Comfort');
            PERFORM insert_category_translations('confort-thermique', 'de', 'Thermischer Komfort');
            PERFORM insert_category_translations('confort-thermique', 'es', 'Confort Térmico');
            PERFORM insert_category_translations('confort-thermique', 'it', 'Comfort Termico');

                -- Level 3: lampes-chauffantes
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lampes-chauffantes', 'lampes-chauffantes', 3, l2_id, 'lampes chauffantes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('lampes-chauffantes', 'fr', 'lampes chauffantes');
                PERFORM insert_category_translations('lampes-chauffantes', 'ar', 'مصابيح تدفئة');
                PERFORM insert_category_translations('lampes-chauffantes', 'en', 'heat lamps');
                PERFORM insert_category_translations('lampes-chauffantes', 'de', 'Wärmelampen');
                PERFORM insert_category_translations('lampes-chauffantes', 'es', 'lámparas calefactoras');
                PERFORM insert_category_translations('lampes-chauffantes', 'it', 'lampade riscaldanti');

            -- Level 2: accessoires-volières
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-volières', 'accessoires-volières', 2, l1_id, 'Accessoires Volières & Basse-Cour')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('accessoires-volières', 'fr', 'Accessoires Volières & Basse-Cour');
            PERFORM insert_category_translations('accessoires-volières', 'ar', 'إكسسوارات أقفاص كبيرة');
            PERFORM insert_category_translations('accessoires-volières', 'en', 'Aviary & Coop Accessories');
            PERFORM insert_category_translations('accessoires-volières', 'de', 'Voliere- & Hühnerstall-Zubehör');
            PERFORM insert_category_translations('accessoires-volières', 'es', 'Accesorios Volieras & Gallineros');
            PERFORM insert_category_translations('accessoires-volières', 'it', 'Accessori Voliere & Aia');

                -- Level 3: materiel-volières
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('materiel-volières', 'materiel-volières', 3, l2_id, 'matériel pour volières & basses-cour')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('materiel-volières', 'fr', 'matériel pour volières & basses-cour');
                PERFORM insert_category_translations('materiel-volières', 'ar', 'معدات أقفاص وساحات');
                PERFORM insert_category_translations('materiel-volières', 'en', 'aviary & coop equipment');
                PERFORM insert_category_translations('materiel-volières', 'de', 'Voliere- & Hühnerstall-Zubehör');
                PERFORM insert_category_translations('materiel-volières', 'es', 'material para volieras & gallineros');
                PERFORM insert_category_translations('materiel-volières', 'it', 'materiale per voliere & aia');
END $$;