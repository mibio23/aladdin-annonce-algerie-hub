-- Migration: Vêtement Homme, Femme & sous-vêtement (Generated Recursive)
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

    -- Level 0: mode-accessoires
    INSERT INTO categories (id, slug, level, name)
    VALUES ('mode-accessoires', 'mode-accessoires', 0, 'Vêtement Homme, Femme & sous-vêtement')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 0, name = EXCLUDED.name
    RETURNING id INTO root_id;
    PERFORM insert_category_translations('mode-accessoires', 'fr', 'Vêtement Homme, Femme & sous-vêtement');
    PERFORM insert_category_translations('mode-accessoires', 'ar', 'ملابس رجالية ونسائية وملابس داخلية');
    PERFORM insert_category_translations('mode-accessoires', 'en', 'Men & Women Clothing & Underwear');
    PERFORM insert_category_translations('mode-accessoires', 'de', 'Herren‑ & Damenbekleidung & Unterwäsche');
    PERFORM insert_category_translations('mode-accessoires', 'es', 'Ropa de Hombre y Mujer & Ropa Interior');
    PERFORM insert_category_translations('mode-accessoires', 'it', 'Abbigliamento Uomo & Donna & Intimo');

        -- Level 1: vetements-homme
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vetements-homme', 'vetements-homme', 1, root_id, 'Vêtements Homme')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('vetements-homme', 'fr', 'Vêtements Homme');
        PERFORM insert_category_translations('vetements-homme', 'ar', 'ملابس رجالية');
        PERFORM insert_category_translations('vetements-homme', 'en', 'Men''s Clothing');
        PERFORM insert_category_translations('vetements-homme', 'de', 'Herrenbekleidung');
        PERFORM insert_category_translations('vetements-homme', 'es', 'Ropa de Hombre');
        PERFORM insert_category_translations('vetements-homme', 'it', 'Abbigliamento Uomo');

            -- Level 2: t-shirts
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('t-shirts', 't-shirts', 2, l1_id, 'T‑shirts')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('t-shirts', 'fr', 'T‑shirts');
            PERFORM insert_category_translations('t-shirts', 'ar', 'تيشيرتات');
            PERFORM insert_category_translations('t-shirts', 'en', 'T‑shirts');
            PERFORM insert_category_translations('t-shirts', 'de', 'T‑Shirts');
            PERFORM insert_category_translations('t-shirts', 'es', 'Camisetas');
            PERFORM insert_category_translations('t-shirts', 'it', 'T‑shirt');

                -- Level 3: basiques
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('basiques', 'basiques', 3, l2_id, 'Basiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('basiques', 'fr', 'Basiques');
                PERFORM insert_category_translations('basiques', 'ar', 'أساسية');
                PERFORM insert_category_translations('basiques', 'en', 'Basic');
                PERFORM insert_category_translations('basiques', 'de', 'Basic');
                PERFORM insert_category_translations('basiques', 'es', 'Básicas');
                PERFORM insert_category_translations('basiques', 'it', 'Basic');

                -- Level 3: imprimes
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('imprimes', 'imprimes', 3, l2_id, 'Imprimés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('imprimes', 'fr', 'Imprimés');
                PERFORM insert_category_translations('imprimes', 'ar', 'مطبوعة');
                PERFORM insert_category_translations('imprimes', 'en', 'Printed');
                PERFORM insert_category_translations('imprimes', 'de', 'Bedruckt');
                PERFORM insert_category_translations('imprimes', 'es', 'Estampadas');
                PERFORM insert_category_translations('imprimes', 'it', 'Stampate');

                -- Level 3: oversize
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('oversize', 'oversize', 3, l2_id, 'Oversize')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('oversize', 'fr', 'Oversize');
                PERFORM insert_category_translations('oversize', 'ar', 'واسعة');
                PERFORM insert_category_translations('oversize', 'en', 'Oversized');
                PERFORM insert_category_translations('oversize', 'de', 'Oversize');
                PERFORM insert_category_translations('oversize', 'es', 'Oversize');
                PERFORM insert_category_translations('oversize', 'it', 'Oversize');

                -- Level 3: techniques
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('techniques', 'techniques', 3, l2_id, 'Techniques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('techniques', 'fr', 'Techniques');
                PERFORM insert_category_translations('techniques', 'ar', 'تقنية');
                PERFORM insert_category_translations('techniques', 'en', 'Technical');
                PERFORM insert_category_translations('techniques', 'de', 'Technisch');
                PERFORM insert_category_translations('techniques', 'es', 'Técnicas');
                PERFORM insert_category_translations('techniques', 'it', 'Tecniche');

            -- Level 2: polos
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('polos', 'polos', 2, l1_id, 'Polos')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('polos', 'fr', 'Polos');
            PERFORM insert_category_translations('polos', 'ar', 'بولو');
            PERFORM insert_category_translations('polos', 'en', 'Polos');
            PERFORM insert_category_translations('polos', 'de', 'Poloshirts');
            PERFORM insert_category_translations('polos', 'es', 'Polos');
            PERFORM insert_category_translations('polos', 'it', 'Polo');

                -- Level 3: manches-courtes
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('manches-courtes', 'manches-courtes', 3, l2_id, 'Manches courtes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('manches-courtes', 'fr', 'Manches courtes');
                PERFORM insert_category_translations('manches-courtes', 'ar', 'نصف كم');
                PERFORM insert_category_translations('manches-courtes', 'en', 'Short sleeve');
                PERFORM insert_category_translations('manches-courtes', 'de', 'Kurzarm');
                PERFORM insert_category_translations('manches-courtes', 'es', 'Manga corta');
                PERFORM insert_category_translations('manches-courtes', 'it', 'Manica corta');

                -- Level 3: manches-longues
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('manches-longues', 'manches-longues', 3, l2_id, 'Manches longues')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('manches-longues', 'fr', 'Manches longues');
                PERFORM insert_category_translations('manches-longues', 'ar', 'أكمام طويلة');
                PERFORM insert_category_translations('manches-longues', 'en', 'Long sleeve');
                PERFORM insert_category_translations('manches-longues', 'de', 'Langarm');
                PERFORM insert_category_translations('manches-longues', 'es', 'Manga larga');
                PERFORM insert_category_translations('manches-longues', 'it', 'Manica lunga');

                -- Level 3: sport
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sport', 'sport', 3, l2_id, 'Sport')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('sport', 'fr', 'Sport');
                PERFORM insert_category_translations('sport', 'ar', 'رياضي');
                PERFORM insert_category_translations('sport', 'en', 'Sports');
                PERFORM insert_category_translations('sport', 'de', 'Sport');
                PERFORM insert_category_translations('sport', 'es', 'Deporte');
                PERFORM insert_category_translations('sport', 'it', 'Sport');

            -- Level 2: chemises
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chemises', 'chemises', 2, l1_id, 'Chemises')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chemises', 'fr', 'Chemises');
            PERFORM insert_category_translations('chemises', 'ar', 'قمصان');
            PERFORM insert_category_translations('chemises', 'en', 'Shirts');
            PERFORM insert_category_translations('chemises', 'de', 'Hemden');
            PERFORM insert_category_translations('chemises', 'es', 'Camisas');
            PERFORM insert_category_translations('chemises', 'it', 'Camicie');

                -- Level 3: classiques
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('classiques', 'classiques', 3, l2_id, 'Classiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('classiques', 'fr', 'Classiques');
                PERFORM insert_category_translations('classiques', 'ar', 'كلاسيكية');
                PERFORM insert_category_translations('classiques', 'en', 'Classic');
                PERFORM insert_category_translations('classiques', 'de', 'Klassisch');
                PERFORM insert_category_translations('classiques', 'es', 'Clásicas');
                PERFORM insert_category_translations('classiques', 'it', 'Classici');

                -- Level 3: slim
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('slim', 'slim', 3, l2_id, 'Slim')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('slim', 'fr', 'Slim');
                PERFORM insert_category_translations('slim', 'ar', 'سليم');
                PERFORM insert_category_translations('slim', 'en', 'Slim');
                PERFORM insert_category_translations('slim', 'de', 'Slim');
                PERFORM insert_category_translations('slim', 'es', 'Slim');
                PERFORM insert_category_translations('slim', 'it', 'Slim');

                -- Level 3: decontractees
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('decontractees', 'decontractees', 3, l2_id, 'Décontractées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('decontractees', 'fr', 'Décontractées');
                PERFORM insert_category_translations('decontractees', 'ar', 'كاجوال');
                PERFORM insert_category_translations('decontractees', 'en', 'Casual');
                PERFORM insert_category_translations('decontractees', 'de', 'Leger');
                PERFORM insert_category_translations('decontractees', 'es', 'Casual');
                PERFORM insert_category_translations('decontractees', 'it', 'Casual');

                -- Level 3: carreaux
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('carreaux', 'carreaux', 3, l2_id, 'Carreaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('carreaux', 'fr', 'Carreaux');
                PERFORM insert_category_translations('carreaux', 'ar', 'مربعات');
                PERFORM insert_category_translations('carreaux', 'en', 'Checkered');
                PERFORM insert_category_translations('carreaux', 'de', 'Kariert');
                PERFORM insert_category_translations('carreaux', 'es', 'Cuadros');
                PERFORM insert_category_translations('carreaux', 'it', 'A quadri');

                -- Level 3: denim
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('denim', 'denim', 3, l2_id, 'Denim')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('denim', 'fr', 'Denim');
                PERFORM insert_category_translations('denim', 'ar', 'دينيم');
                PERFORM insert_category_translations('denim', 'en', 'Denim');
                PERFORM insert_category_translations('denim', 'de', 'Denim');
                PERFORM insert_category_translations('denim', 'es', 'Denim');
                PERFORM insert_category_translations('denim', 'it', 'Denim');

                -- Level 3: habillees
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('habillees', 'habillees', 3, l2_id, 'Habillées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('habillees', 'fr', 'Habillées');
                PERFORM insert_category_translations('habillees', 'ar', 'رسمية');
                PERFORM insert_category_translations('habillees', 'en', 'Dress');
                PERFORM insert_category_translations('habillees', 'de', 'Elegant');
                PERFORM insert_category_translations('habillees', 'es', 'Elegantes');
                PERFORM insert_category_translations('habillees', 'it', 'Eleganti');

            -- Level 2: pulls-gilets
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pulls-gilets', 'pulls-gilets', 2, l1_id, 'Pulls & gilets')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pulls-gilets', 'fr', 'Pulls & gilets');
            PERFORM insert_category_translations('pulls-gilets', 'ar', 'بلوفرات وكارديغان');
            PERFORM insert_category_translations('pulls-gilets', 'en', 'Sweaters & cardigans');
            PERFORM insert_category_translations('pulls-gilets', 'de', 'Pullover & Cardigans');
            PERFORM insert_category_translations('pulls-gilets', 'es', 'Jerséis y cárdigans');
            PERFORM insert_category_translations('pulls-gilets', 'it', 'Maglioni & cardigan');

                -- Level 3: maille-fine
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('maille-fine', 'maille-fine', 3, l2_id, 'Maille fine')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('maille-fine', 'fr', 'Maille fine');
                PERFORM insert_category_translations('maille-fine', 'ar', 'محبوك خفيف');
                PERFORM insert_category_translations('maille-fine', 'en', 'Fine knit');
                PERFORM insert_category_translations('maille-fine', 'de', 'Feinstrick');
                PERFORM insert_category_translations('maille-fine', 'es', 'Punto fino');
                PERFORM insert_category_translations('maille-fine', 'it', 'Maglia fine');

                -- Level 3: laine
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('laine', 'laine', 3, l2_id, 'Laine')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('laine', 'fr', 'Laine');
                PERFORM insert_category_translations('laine', 'ar', 'صوف');
                PERFORM insert_category_translations('laine', 'en', 'Wool');
                PERFORM insert_category_translations('laine', 'de', 'Wolle');
                PERFORM insert_category_translations('laine', 'es', 'Lana');
                PERFORM insert_category_translations('laine', 'it', 'Lana');

                -- Level 3: col-rond
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('col-rond', 'col-rond', 3, l2_id, 'Col rond')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('col-rond', 'fr', 'Col rond');
                PERFORM insert_category_translations('col-rond', 'ar', 'ياقة دائرية');
                PERFORM insert_category_translations('col-rond', 'en', 'Crew neck');
                PERFORM insert_category_translations('col-rond', 'de', 'Rundhals');
                PERFORM insert_category_translations('col-rond', 'es', 'Cuello redondo');
                PERFORM insert_category_translations('col-rond', 'it', 'Girocollo');

                -- Level 3: col-v
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('col-v', 'col-v', 3, l2_id, 'Col V')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('col-v', 'fr', 'Col V');
                PERFORM insert_category_translations('col-v', 'ar', 'ياقة V');
                PERFORM insert_category_translations('col-v', 'en', 'V‑neck');
                PERFORM insert_category_translations('col-v', 'de', 'V‑Ausschnitt');
                PERFORM insert_category_translations('col-v', 'es', 'Cuello en V');
                PERFORM insert_category_translations('col-v', 'it', 'Scollo a V');

                -- Level 3: col-roule
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('col-roule', 'col-roule', 3, l2_id, 'Col roulé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('col-roule', 'fr', 'Col roulé');
                PERFORM insert_category_translations('col-roule', 'ar', 'ياقة عالية');
                PERFORM insert_category_translations('col-roule', 'en', 'Turtleneck');
                PERFORM insert_category_translations('col-roule', 'de', 'Rollkragen');
                PERFORM insert_category_translations('col-roule', 'es', 'Cuello alto');
                PERFORM insert_category_translations('col-roule', 'it', 'Dolcevita');

                -- Level 3: cardigan
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cardigan', 'cardigan', 3, l2_id, 'Cardigan')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('cardigan', 'fr', 'Cardigan');
                PERFORM insert_category_translations('cardigan', 'ar', 'كارديغان');
                PERFORM insert_category_translations('cardigan', 'en', 'Cardigan');
                PERFORM insert_category_translations('cardigan', 'de', 'Cardigan');
                PERFORM insert_category_translations('cardigan', 'es', 'Cárdigan');
                PERFORM insert_category_translations('cardigan', 'it', 'Cardigan');

            -- Level 2: sweats-hoodies
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sweats-hoodies', 'sweats-hoodies', 2, l1_id, 'Sweats & hoodies')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sweats-hoodies', 'fr', 'Sweats & hoodies');
            PERFORM insert_category_translations('sweats-hoodies', 'ar', 'سويت شيرت وهودي');
            PERFORM insert_category_translations('sweats-hoodies', 'en', 'Sweatshirts & hoodies');
            PERFORM insert_category_translations('sweats-hoodies', 'de', 'Sweatshirts & Hoodies');
            PERFORM insert_category_translations('sweats-hoodies', 'es', 'Sudaderas & hoodies');
            PERFORM insert_category_translations('sweats-hoodies', 'it', 'Felpe & hoodies');

                -- Level 3: a-capuche
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('a-capuche', 'a-capuche', 3, l2_id, 'À capuche')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('a-capuche', 'fr', 'À capuche');
                PERFORM insert_category_translations('a-capuche', 'ar', 'بقبعة');
                PERFORM insert_category_translations('a-capuche', 'en', 'Hooded');
                PERFORM insert_category_translations('a-capuche', 'de', 'Mit Kapuze');
                PERFORM insert_category_translations('a-capuche', 'es', 'Con capucha');
                PERFORM insert_category_translations('a-capuche', 'it', 'Con cappuccio');

                -- Level 3: zippes
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('zippes', 'zippes', 3, l2_id, 'Zippés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('zippes', 'fr', 'Zippés');
                PERFORM insert_category_translations('zippes', 'ar', 'بسحاب');
                PERFORM insert_category_translations('zippes', 'en', 'Zip‑up');
                PERFORM insert_category_translations('zippes', 'de', 'Mit Reißverschluss');
                PERFORM insert_category_translations('zippes', 'es', 'Con cremallera');
                PERFORM insert_category_translations('zippes', 'it', 'Con zip');

                -- Level 3: oversize
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('oversize', 'oversize', 3, l2_id, 'Oversize')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('oversize', 'fr', 'Oversize');
                PERFORM insert_category_translations('oversize', 'ar', 'واسعة');
                PERFORM insert_category_translations('oversize', 'en', 'Oversized');
                PERFORM insert_category_translations('oversize', 'de', 'Oversize');
                PERFORM insert_category_translations('oversize', 'es', 'Oversize');
                PERFORM insert_category_translations('oversize', 'it', 'Oversize');

                -- Level 3: sportifs
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sportifs', 'sportifs', 3, l2_id, 'Sportifs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('sportifs', 'fr', 'Sportifs');
                PERFORM insert_category_translations('sportifs', 'ar', 'رياضي');
                PERFORM insert_category_translations('sportifs', 'en', 'Sport');
                PERFORM insert_category_translations('sportifs', 'de', 'Sport');
                PERFORM insert_category_translations('sportifs', 'es', 'Deportivos');
                PERFORM insert_category_translations('sportifs', 'it', 'Sport');

            -- Level 2: debardeurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('debardeurs', 'debardeurs', 2, l1_id, 'Débardeurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('debardeurs', 'fr', 'Débardeurs');
            PERFORM insert_category_translations('debardeurs', 'ar', 'قمصان بلا أكمام');
            PERFORM insert_category_translations('debardeurs', 'en', 'Tank tops');
            PERFORM insert_category_translations('debardeurs', 'de', 'Tanktops');
            PERFORM insert_category_translations('debardeurs', 'es', 'Camisetas sin mangas');
            PERFORM insert_category_translations('debardeurs', 'it', 'Canottiere');

            -- Level 2: jeans
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jeans', 'jeans', 2, l1_id, 'Jeans')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('jeans', 'fr', 'Jeans');
            PERFORM insert_category_translations('jeans', 'ar', 'دينيم');
            PERFORM insert_category_translations('jeans', 'en', 'Denim');
            PERFORM insert_category_translations('jeans', 'de', 'Denim');
            PERFORM insert_category_translations('jeans', 'es', 'Denim');
            PERFORM insert_category_translations('jeans', 'it', 'Denim');

                -- Level 3: slim
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('slim', 'slim', 3, l2_id, 'Slim')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('slim', 'fr', 'Slim');
                PERFORM insert_category_translations('slim', 'ar', 'سليم');
                PERFORM insert_category_translations('slim', 'en', 'Slim');
                PERFORM insert_category_translations('slim', 'de', 'Slim');
                PERFORM insert_category_translations('slim', 'es', 'Slim');
                PERFORM insert_category_translations('slim', 'it', 'Slim');

                -- Level 3: straight
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('straight', 'straight', 3, l2_id, 'Droit')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('straight', 'fr', 'Droit');
                PERFORM insert_category_translations('straight', 'ar', 'مستقيم');
                PERFORM insert_category_translations('straight', 'en', 'Straight');
                PERFORM insert_category_translations('straight', 'de', 'Straight');
                PERFORM insert_category_translations('straight', 'es', 'Rectos');
                PERFORM insert_category_translations('straight', 'it', 'Dritti');

                -- Level 3: tapered
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tapered', 'tapered', 3, l2_id, 'Fuselé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('tapered', 'fr', 'Fuselé');
                PERFORM insert_category_translations('tapered', 'ar', 'مخروطي');
                PERFORM insert_category_translations('tapered', 'en', 'Tapered');
                PERFORM insert_category_translations('tapered', 'de', 'Tapered');
                PERFORM insert_category_translations('tapered', 'es', 'Tapered');
                PERFORM insert_category_translations('tapered', 'it', 'Tapered');

                -- Level 3: skinny
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('skinny', 'skinny', 3, l2_id, 'Skinny')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('skinny', 'fr', 'Skinny');
                PERFORM insert_category_translations('skinny', 'ar', 'سكيني');
                PERFORM insert_category_translations('skinny', 'en', 'Skinny');
                PERFORM insert_category_translations('skinny', 'de', 'Skinny');
                PERFORM insert_category_translations('skinny', 'es', 'Skinny');
                PERFORM insert_category_translations('skinny', 'it', 'Skinny');

                -- Level 3: bootcut
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bootcut', 'bootcut', 3, l2_id, 'Bootcut')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('bootcut', 'fr', 'Bootcut');
                PERFORM insert_category_translations('bootcut', 'ar', 'بوت كات');
                PERFORM insert_category_translations('bootcut', 'en', 'Bootcut');
                PERFORM insert_category_translations('bootcut', 'de', 'Bootcut');
                PERFORM insert_category_translations('bootcut', 'es', 'Bootcut');
                PERFORM insert_category_translations('bootcut', 'it', 'Bootcut');

            -- Level 2: pantalons
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pantalons', 'pantalons', 2, l1_id, 'Pantalons')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pantalons', 'fr', 'Pantalons');
            PERFORM insert_category_translations('pantalons', 'ar', 'سراويل');
            PERFORM insert_category_translations('pantalons', 'en', 'Trousers');
            PERFORM insert_category_translations('pantalons', 'de', 'Hosen');
            PERFORM insert_category_translations('pantalons', 'es', 'Pantalones');
            PERFORM insert_category_translations('pantalons', 'it', 'Pantaloni');

                -- Level 3: chino
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chino', 'chino', 3, l2_id, 'Chino')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('chino', 'fr', 'Chino');
                PERFORM insert_category_translations('chino', 'ar', 'تشينو');
                PERFORM insert_category_translations('chino', 'en', 'Chino');
                PERFORM insert_category_translations('chino', 'de', 'Chino');
                PERFORM insert_category_translations('chino', 'es', 'Chino');
                PERFORM insert_category_translations('chino', 'it', 'Chino');

                -- Level 3: costume
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('costume', 'costume', 3, l2_id, 'Costume')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('costume', 'fr', 'Costume');
                PERFORM insert_category_translations('costume', 'ar', 'بدلة');
                PERFORM insert_category_translations('costume', 'en', 'Suit');
                PERFORM insert_category_translations('costume', 'de', 'Anzughose');
                PERFORM insert_category_translations('costume', 'es', 'Traje');
                PERFORM insert_category_translations('costume', 'it', 'Abito');

                -- Level 3: cargo
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cargo', 'cargo', 3, l2_id, 'Cargo')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('cargo', 'fr', 'Cargo');
                PERFORM insert_category_translations('cargo', 'ar', 'كارغو');
                PERFORM insert_category_translations('cargo', 'en', 'Cargo');
                PERFORM insert_category_translations('cargo', 'de', 'Cargo');
                PERFORM insert_category_translations('cargo', 'es', 'Cargo');
                PERFORM insert_category_translations('cargo', 'it', 'Cargo');

                -- Level 3: jogging
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jogging', 'jogging', 3, l2_id, 'Jogging')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('jogging', 'fr', 'Jogging');
                PERFORM insert_category_translations('jogging', 'ar', 'جينز رياضي');
                PERFORM insert_category_translations('jogging', 'en', 'Joggers');
                PERFORM insert_category_translations('jogging', 'de', 'Jogginghose');
                PERFORM insert_category_translations('jogging', 'es', 'Joggers');
                PERFORM insert_category_translations('jogging', 'it', 'Joggers');

                -- Level 3: urbain
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('urbain', 'urbain', 3, l2_id, 'Urbain')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('urbain', 'fr', 'Urbain');
                PERFORM insert_category_translations('urbain', 'ar', 'حضري');
                PERFORM insert_category_translations('urbain', 'en', 'Urban');
                PERFORM insert_category_translations('urbain', 'de', 'Urban');
                PERFORM insert_category_translations('urbain', 'es', 'Urbano');
                PERFORM insert_category_translations('urbain', 'it', 'Urbano');

            -- Level 2: shorts
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('shorts', 'shorts', 2, l1_id, 'Shorts')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('shorts', 'fr', 'Shorts');
            PERFORM insert_category_translations('shorts', 'ar', 'شورتات');
            PERFORM insert_category_translations('shorts', 'en', 'Shorts');
            PERFORM insert_category_translations('shorts', 'de', 'Shorts');
            PERFORM insert_category_translations('shorts', 'es', 'Pantalones cortos');
            PERFORM insert_category_translations('shorts', 'it', 'Shorts');

                -- Level 3: jeans
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jeans', 'jeans', 3, l2_id, 'Jeans')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('jeans', 'fr', 'Jeans');
                PERFORM insert_category_translations('jeans', 'ar', 'دينيم');
                PERFORM insert_category_translations('jeans', 'en', 'Denim');
                PERFORM insert_category_translations('jeans', 'de', 'Denim');
                PERFORM insert_category_translations('jeans', 'es', 'Denim');
                PERFORM insert_category_translations('jeans', 'it', 'Denim');

                -- Level 3: sport
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sport', 'sport', 3, l2_id, 'Sport')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('sport', 'fr', 'Sport');
                PERFORM insert_category_translations('sport', 'ar', 'رياضي');
                PERFORM insert_category_translations('sport', 'en', 'Sports');
                PERFORM insert_category_translations('sport', 'de', 'Sport');
                PERFORM insert_category_translations('sport', 'es', 'Deporte');
                PERFORM insert_category_translations('sport', 'it', 'Sport');

                -- Level 3: cargo
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cargo', 'cargo', 3, l2_id, 'Cargo')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('cargo', 'fr', 'Cargo');
                PERFORM insert_category_translations('cargo', 'ar', 'كارغو');
                PERFORM insert_category_translations('cargo', 'en', 'Cargo');
                PERFORM insert_category_translations('cargo', 'de', 'Cargo');
                PERFORM insert_category_translations('cargo', 'es', 'Cargo');
                PERFORM insert_category_translations('cargo', 'it', 'Cargo');

                -- Level 3: bermudas
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bermudas', 'bermudas', 3, l2_id, 'Bermudas')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('bermudas', 'fr', 'Bermudas');
                PERFORM insert_category_translations('bermudas', 'ar', 'برمودا');
                PERFORM insert_category_translations('bermudas', 'en', 'Bermudas');
                PERFORM insert_category_translations('bermudas', 'de', 'Bermudas');
                PERFORM insert_category_translations('bermudas', 'es', 'Bermudas');
                PERFORM insert_category_translations('bermudas', 'it', 'Bermuda');

            -- Level 2: survetements
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('survetements', 'survetements', 2, l1_id, 'Survêtements')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('survetements', 'fr', 'Survêtements');
            PERFORM insert_category_translations('survetements', 'ar', 'بدلات رياضية');
            PERFORM insert_category_translations('survetements', 'en', 'Tracksuits');
            PERFORM insert_category_translations('survetements', 'de', 'Trainingsanzüge');
            PERFORM insert_category_translations('survetements', 'es', 'Chándales');
            PERFORM insert_category_translations('survetements', 'it', 'Tute sportive');

            -- Level 2: vestes-legeres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vestes-legeres', 'vestes-legeres', 2, l1_id, 'Vestes légères')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('vestes-legeres', 'fr', 'Vestes légères');
            PERFORM insert_category_translations('vestes-legeres', 'ar', 'سترات خفيفة');
            PERFORM insert_category_translations('vestes-legeres', 'en', 'Light jackets');
            PERFORM insert_category_translations('vestes-legeres', 'de', 'Leichte Jacken');
            PERFORM insert_category_translations('vestes-legeres', 'es', 'Chaquetas ligeras');
            PERFORM insert_category_translations('vestes-legeres', 'it', 'Giacche leggere');

                -- Level 3: jean
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jean', 'jean', 3, l2_id, 'Jean')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('jean', 'fr', 'Jean');
                PERFORM insert_category_translations('jean', 'ar', 'دينيم');
                PERFORM insert_category_translations('jean', 'en', 'Denim');
                PERFORM insert_category_translations('jean', 'de', 'Denim');
                PERFORM insert_category_translations('jean', 'es', 'Denim');
                PERFORM insert_category_translations('jean', 'it', 'Denim');

                -- Level 3: cuir
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cuir', 'cuir', 3, l2_id, 'Cuir')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('cuir', 'fr', 'Cuir');
                PERFORM insert_category_translations('cuir', 'ar', 'جلد');
                PERFORM insert_category_translations('cuir', 'en', 'Leather');
                PERFORM insert_category_translations('cuir', 'de', 'Leder');
                PERFORM insert_category_translations('cuir', 'es', 'Cuero');
                PERFORM insert_category_translations('cuir', 'it', 'Pelle');

                -- Level 3: bomber
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bomber', 'bomber', 3, l2_id, 'Bomber')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('bomber', 'fr', 'Bomber');
                PERFORM insert_category_translations('bomber', 'ar', 'بومبر');
                PERFORM insert_category_translations('bomber', 'en', 'Bomber');
                PERFORM insert_category_translations('bomber', 'de', 'Bomber');
                PERFORM insert_category_translations('bomber', 'es', 'Bomber');
                PERFORM insert_category_translations('bomber', 'it', 'Bomber');

                -- Level 3: harrington
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('harrington', 'harrington', 3, l2_id, 'Harrington')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('harrington', 'fr', 'Harrington');
                PERFORM insert_category_translations('harrington', 'ar', 'هارينغتون');
                PERFORM insert_category_translations('harrington', 'en', 'Harrington');
                PERFORM insert_category_translations('harrington', 'de', 'Harrington');
                PERFORM insert_category_translations('harrington', 'es', 'Harrington');
                PERFORM insert_category_translations('harrington', 'it', 'Harrington');

            -- Level 2: blousons
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('blousons', 'blousons', 2, l1_id, 'Blousons')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('blousons', 'fr', 'Blousons');
            PERFORM insert_category_translations('blousons', 'ar', 'جاكيتات');
            PERFORM insert_category_translations('blousons', 'en', 'Jackets');
            PERFORM insert_category_translations('blousons', 'de', 'Jacken');
            PERFORM insert_category_translations('blousons', 'es', 'Cazadoras');
            PERFORM insert_category_translations('blousons', 'it', 'Giacche');

                -- Level 3: teddy
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('teddy', 'teddy', 3, l2_id, 'Teddy')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('teddy', 'fr', 'Teddy');
                PERFORM insert_category_translations('teddy', 'ar', 'جامعية');
                PERFORM insert_category_translations('teddy', 'en', 'Varsity');
                PERFORM insert_category_translations('teddy', 'de', 'Collegejacke');
                PERFORM insert_category_translations('teddy', 'es', 'Varsity');
                PERFORM insert_category_translations('teddy', 'it', 'Varsity');

                -- Level 3: pilote
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pilote', 'pilote', 3, l2_id, 'Pilote')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('pilote', 'fr', 'Pilote');
                PERFORM insert_category_translations('pilote', 'ar', 'طيار');
                PERFORM insert_category_translations('pilote', 'en', 'Pilot');
                PERFORM insert_category_translations('pilote', 'de', 'Pilotjacke');
                PERFORM insert_category_translations('pilote', 'es', 'Piloto');
                PERFORM insert_category_translations('pilote', 'it', 'Pilota');

            -- Level 2: manteaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('manteaux', 'manteaux', 2, l1_id, 'Manteaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('manteaux', 'fr', 'Manteaux');
            PERFORM insert_category_translations('manteaux', 'ar', 'معاطف');
            PERFORM insert_category_translations('manteaux', 'en', 'Coats');
            PERFORM insert_category_translations('manteaux', 'de', 'Mäntel');
            PERFORM insert_category_translations('manteaux', 'es', 'Abrigos');
            PERFORM insert_category_translations('manteaux', 'it', 'Cappotti');

                -- Level 3: laine
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('laine', 'laine', 3, l2_id, 'Laine')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('laine', 'fr', 'Laine');
                PERFORM insert_category_translations('laine', 'ar', 'صوف');
                PERFORM insert_category_translations('laine', 'en', 'Wool');
                PERFORM insert_category_translations('laine', 'de', 'Wolle');
                PERFORM insert_category_translations('laine', 'es', 'Lana');
                PERFORM insert_category_translations('laine', 'it', 'Lana');

                -- Level 3: trench
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('trench', 'trench', 3, l2_id, 'Trench')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('trench', 'fr', 'Trench');
                PERFORM insert_category_translations('trench', 'ar', 'ترنش');
                PERFORM insert_category_translations('trench', 'en', 'Trench');
                PERFORM insert_category_translations('trench', 'de', 'Trenchcoat');
                PERFORM insert_category_translations('trench', 'es', 'Trench');
                PERFORM insert_category_translations('trench', 'it', 'Trench');

                -- Level 3: pardessus
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pardessus', 'pardessus', 3, l2_id, 'Pardessus')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('pardessus', 'fr', 'Pardessus');
                PERFORM insert_category_translations('pardessus', 'ar', 'معطف فوقي');
                PERFORM insert_category_translations('pardessus', 'en', 'Overcoat');
                PERFORM insert_category_translations('pardessus', 'de', 'Übermantel');
                PERFORM insert_category_translations('pardessus', 'es', 'Sobretodo');
                PERFORM insert_category_translations('pardessus', 'it', 'Soprabito');

                -- Level 3: doudounes
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('doudounes', 'doudounes', 3, l2_id, 'Doudounes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('doudounes', 'fr', 'Doudounes');
                PERFORM insert_category_translations('doudounes', 'ar', 'منتفخة');
                PERFORM insert_category_translations('doudounes', 'en', 'Puffer jackets');
                PERFORM insert_category_translations('doudounes', 'de', 'Daunenjacken');
                PERFORM insert_category_translations('doudounes', 'es', 'Chaquetas de plumas');
                PERFORM insert_category_translations('doudounes', 'it', 'Piumini');

            -- Level 2: parkas-coupe-vent
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('parkas-coupe-vent', 'parkas-coupe-vent', 2, l1_id, 'Parkas & coupe‑vent')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('parkas-coupe-vent', 'fr', 'Parkas & coupe‑vent');
            PERFORM insert_category_translations('parkas-coupe-vent', 'ar', 'باركا & مضادة للرياح');
            PERFORM insert_category_translations('parkas-coupe-vent', 'en', 'Parkas & windbreakers');
            PERFORM insert_category_translations('parkas-coupe-vent', 'de', 'Parkas & Windbreaker');
            PERFORM insert_category_translations('parkas-coupe-vent', 'es', 'Parkas & cortavientos');
            PERFORM insert_category_translations('parkas-coupe-vent', 'it', 'Parkas & antivento');

            -- Level 2: vestes-de-travail
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vestes-de-travail', 'vestes-de-travail', 2, l1_id, 'Vestes de travail')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('vestes-de-travail', 'fr', 'Vestes de travail');
            PERFORM insert_category_translations('vestes-de-travail', 'ar', 'سترات عمل');
            PERFORM insert_category_translations('vestes-de-travail', 'en', 'Work jackets');
            PERFORM insert_category_translations('vestes-de-travail', 'de', 'Arbeitsjacken');
            PERFORM insert_category_translations('vestes-de-travail', 'es', 'Chaquetas de trabajo');
            PERFORM insert_category_translations('vestes-de-travail', 'it', 'Giacche da lavoro');

            -- Level 2: costumes-smokings
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('costumes-smokings', 'costumes-smokings', 2, l1_id, 'Costumes & smokings')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('costumes-smokings', 'fr', 'Costumes & smokings');
            PERFORM insert_category_translations('costumes-smokings', 'ar', 'بدلات & توكسيدو');
            PERFORM insert_category_translations('costumes-smokings', 'en', 'Suits & tuxedos');
            PERFORM insert_category_translations('costumes-smokings', 'de', 'Anzüge & Smokings');
            PERFORM insert_category_translations('costumes-smokings', 'es', 'Trajes & esmóquines');
            PERFORM insert_category_translations('costumes-smokings', 'it', 'Abiti & smoking');

            -- Level 2: tenues-business
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tenues-business', 'tenues-business', 2, l1_id, 'Tenues business')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tenues-business', 'fr', 'Tenues business');
            PERFORM insert_category_translations('tenues-business', 'ar', 'أزياء عمل');
            PERFORM insert_category_translations('tenues-business', 'en', 'Business attire');
            PERFORM insert_category_translations('tenues-business', 'de', 'Business‑Kleidung');
            PERFORM insert_category_translations('tenues-business', 'es', 'Ropa de negocios');
            PERFORM insert_category_translations('tenues-business', 'it', 'Abbigliamento business');

            -- Level 2: mode-urbaine
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mode-urbaine', 'mode-urbaine', 2, l1_id, 'Mode urbaine')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mode-urbaine', 'fr', 'Mode urbaine');
            PERFORM insert_category_translations('mode-urbaine', 'ar', 'موضة شارع');
            PERFORM insert_category_translations('mode-urbaine', 'en', 'Streetwear');
            PERFORM insert_category_translations('mode-urbaine', 'de', 'Streetwear');
            PERFORM insert_category_translations('mode-urbaine', 'es', 'Moda urbana');
            PERFORM insert_category_translations('mode-urbaine', 'it', 'Streetwear');

            -- Level 2: sportwear
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sportwear', 'sportwear', 2, l1_id, 'Sportwear')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sportwear', 'fr', 'Sportwear');
            PERFORM insert_category_translations('sportwear', 'ar', 'ملابس رياضية');
            PERFORM insert_category_translations('sportwear', 'en', 'Sportswear');
            PERFORM insert_category_translations('sportwear', 'de', 'Sportswear');
            PERFORM insert_category_translations('sportwear', 'es', 'Sportswear');
            PERFORM insert_category_translations('sportwear', 'it', 'Sportswear');

            -- Level 2: tenues-outdoor
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tenues-outdoor', 'tenues-outdoor', 2, l1_id, 'Tenues outdoor')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tenues-outdoor', 'fr', 'Tenues outdoor');
            PERFORM insert_category_translations('tenues-outdoor', 'ar', 'أزياء خارجية');
            PERFORM insert_category_translations('tenues-outdoor', 'en', 'Outdoor apparel');
            PERFORM insert_category_translations('tenues-outdoor', 'de', 'Outdoor‑Bekleidung');
            PERFORM insert_category_translations('tenues-outdoor', 'es', 'Ropa outdoor');
            PERFORM insert_category_translations('tenues-outdoor', 'it', 'Outdoor');

            -- Level 2: vetements-traditionnels-homme
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vetements-traditionnels-homme', 'vetements-traditionnels-homme', 2, l1_id, 'Vêtements traditionnels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('vetements-traditionnels-homme', 'fr', 'Vêtements traditionnels');
            PERFORM insert_category_translations('vetements-traditionnels-homme', 'ar', 'ملابس تقليدية');
            PERFORM insert_category_translations('vetements-traditionnels-homme', 'en', 'Traditional clothing');
            PERFORM insert_category_translations('vetements-traditionnels-homme', 'de', 'Traditionelle Kleidung');
            PERFORM insert_category_translations('vetements-traditionnels-homme', 'es', 'Ropa tradicional');
            PERFORM insert_category_translations('vetements-traditionnels-homme', 'it', 'Abbigliamento tradizionale');

                -- Level 3: gandoura
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gandoura', 'gandoura', 3, l2_id, 'Gandoura')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('gandoura', 'fr', 'Gandoura');
                PERFORM insert_category_translations('gandoura', 'ar', 'قندورة');
                PERFORM insert_category_translations('gandoura', 'en', 'Gandoura');
                PERFORM insert_category_translations('gandoura', 'de', 'Gandoura');
                PERFORM insert_category_translations('gandoura', 'es', 'Gandoura');
                PERFORM insert_category_translations('gandoura', 'it', 'Gandoura');

                -- Level 3: qamis
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('qamis', 'qamis', 3, l2_id, 'Qamis')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('qamis', 'fr', 'Qamis');
                PERFORM insert_category_translations('qamis', 'ar', 'قميص (قميص)');
                PERFORM insert_category_translations('qamis', 'en', 'Qamis');
                PERFORM insert_category_translations('qamis', 'de', 'Qamis');
                PERFORM insert_category_translations('qamis', 'es', 'Qamis');
                PERFORM insert_category_translations('qamis', 'it', 'Qamis');

        -- Level 1: marques-vetements-homme
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('marques-vetements-homme', 'marques-vetements-homme', 1, root_id, 'Marques vêtements homme')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('marques-vetements-homme', 'fr', 'Marques vêtements homme');
        PERFORM insert_category_translations('marques-vetements-homme', 'ar', 'علامات تجارية ملابس رجالية');
        PERFORM insert_category_translations('marques-vetements-homme', 'en', 'Men''s clothing brands');
        PERFORM insert_category_translations('marques-vetements-homme', 'de', 'Marken Herrenbekleidung');
        PERFORM insert_category_translations('marques-vetements-homme', 'es', 'Marcas ropa hombre');
        PERFORM insert_category_translations('marques-vetements-homme', 'it', 'Marche abbigliamento uomo');

            -- Level 2: nike
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('nike', 'nike', 2, l1_id, 'Nike')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('nike', 'fr', 'Nike');
            PERFORM insert_category_translations('nike', 'ar', 'Nike');
            PERFORM insert_category_translations('nike', 'en', 'Nike');
            PERFORM insert_category_translations('nike', 'de', 'Nike');
            PERFORM insert_category_translations('nike', 'es', 'Nike');
            PERFORM insert_category_translations('nike', 'it', 'Nike');

            -- Level 2: adidas
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('adidas', 'adidas', 2, l1_id, 'Adidas')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('adidas', 'fr', 'Adidas');
            PERFORM insert_category_translations('adidas', 'ar', 'Adidas');
            PERFORM insert_category_translations('adidas', 'en', 'Adidas');
            PERFORM insert_category_translations('adidas', 'de', 'Adidas');
            PERFORM insert_category_translations('adidas', 'es', 'Adidas');
            PERFORM insert_category_translations('adidas', 'it', 'Adidas');

            -- Level 2: puma
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('puma', 'puma', 2, l1_id, 'Puma')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('puma', 'fr', 'Puma');
            PERFORM insert_category_translations('puma', 'ar', 'Puma');
            PERFORM insert_category_translations('puma', 'en', 'Puma');
            PERFORM insert_category_translations('puma', 'de', 'Puma');
            PERFORM insert_category_translations('puma', 'es', 'Puma');
            PERFORM insert_category_translations('puma', 'it', 'Puma');

            -- Level 2: lacoste
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lacoste', 'lacoste', 2, l1_id, 'Lacoste')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lacoste', 'fr', 'Lacoste');
            PERFORM insert_category_translations('lacoste', 'ar', 'Lacoste');
            PERFORM insert_category_translations('lacoste', 'en', 'Lacoste');
            PERFORM insert_category_translations('lacoste', 'de', 'Lacoste');
            PERFORM insert_category_translations('lacoste', 'es', 'Lacoste');
            PERFORM insert_category_translations('lacoste', 'it', 'Lacoste');

            -- Level 2: tommy-hilfiger
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tommy-hilfiger', 'tommy-hilfiger', 2, l1_id, 'Tommy Hilfiger')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tommy-hilfiger', 'fr', 'Tommy Hilfiger');
            PERFORM insert_category_translations('tommy-hilfiger', 'ar', 'Tommy Hilfiger');
            PERFORM insert_category_translations('tommy-hilfiger', 'en', 'Tommy Hilfiger');
            PERFORM insert_category_translations('tommy-hilfiger', 'de', 'Tommy Hilfiger');
            PERFORM insert_category_translations('tommy-hilfiger', 'es', 'Tommy Hilfiger');
            PERFORM insert_category_translations('tommy-hilfiger', 'it', 'Tommy Hilfiger');

            -- Level 2: calvin-klein
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('calvin-klein', 'calvin-klein', 2, l1_id, 'Calvin Klein')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('calvin-klein', 'fr', 'Calvin Klein');
            PERFORM insert_category_translations('calvin-klein', 'ar', 'Calvin Klein');
            PERFORM insert_category_translations('calvin-klein', 'en', 'Calvin Klein');
            PERFORM insert_category_translations('calvin-klein', 'de', 'Calvin Klein');
            PERFORM insert_category_translations('calvin-klein', 'es', 'Calvin Klein');
            PERFORM insert_category_translations('calvin-klein', 'it', 'Calvin Klein');

            -- Level 2: levis
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('levis', 'levis', 2, l1_id, 'Levi''''s')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('levis', 'fr', 'Levi''s');
            PERFORM insert_category_translations('levis', 'ar', 'Levi''s');
            PERFORM insert_category_translations('levis', 'en', 'Levi''s');
            PERFORM insert_category_translations('levis', 'de', 'Levi''s');
            PERFORM insert_category_translations('levis', 'es', 'Levi''s');
            PERFORM insert_category_translations('levis', 'it', 'Levi''s');

            -- Level 2: zara
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('zara', 'zara', 2, l1_id, 'Zara')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('zara', 'fr', 'Zara');
            PERFORM insert_category_translations('zara', 'ar', 'Zara');
            PERFORM insert_category_translations('zara', 'en', 'Zara');
            PERFORM insert_category_translations('zara', 'de', 'Zara');
            PERFORM insert_category_translations('zara', 'es', 'Zara');
            PERFORM insert_category_translations('zara', 'it', 'Zara');

            -- Level 2: hm
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('hm', 'hm', 2, l1_id, 'H&M')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('hm', 'fr', 'H&M');
            PERFORM insert_category_translations('hm', 'ar', 'H&M');
            PERFORM insert_category_translations('hm', 'en', 'H&M');
            PERFORM insert_category_translations('hm', 'de', 'H&M');
            PERFORM insert_category_translations('hm', 'es', 'H&M');
            PERFORM insert_category_translations('hm', 'it', 'H&M');

            -- Level 2: bershka
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bershka', 'bershka', 2, l1_id, 'Bershka')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bershka', 'fr', 'Bershka');
            PERFORM insert_category_translations('bershka', 'ar', 'Bershka');
            PERFORM insert_category_translations('bershka', 'en', 'Bershka');
            PERFORM insert_category_translations('bershka', 'de', 'Bershka');
            PERFORM insert_category_translations('bershka', 'es', 'Bershka');
            PERFORM insert_category_translations('bershka', 'it', 'Bershka');

            -- Level 2: pull-bear
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pull-bear', 'pull-bear', 2, l1_id, 'Pull&Bear')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pull-bear', 'fr', 'Pull&Bear');
            PERFORM insert_category_translations('pull-bear', 'ar', 'Pull&Bear');
            PERFORM insert_category_translations('pull-bear', 'en', 'Pull&Bear');
            PERFORM insert_category_translations('pull-bear', 'de', 'Pull&Bear');
            PERFORM insert_category_translations('pull-bear', 'es', 'Pull&Bear');
            PERFORM insert_category_translations('pull-bear', 'it', 'Pull&Bear');

            -- Level 2: uniqlo
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('uniqlo', 'uniqlo', 2, l1_id, 'Uniqlo')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('uniqlo', 'fr', 'Uniqlo');
            PERFORM insert_category_translations('uniqlo', 'ar', 'Uniqlo');
            PERFORM insert_category_translations('uniqlo', 'en', 'Uniqlo');
            PERFORM insert_category_translations('uniqlo', 'de', 'Uniqlo');
            PERFORM insert_category_translations('uniqlo', 'es', 'Uniqlo');
            PERFORM insert_category_translations('uniqlo', 'it', 'Uniqlo');

            -- Level 2: guess
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('guess', 'guess', 2, l1_id, 'Guess')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('guess', 'fr', 'Guess');
            PERFORM insert_category_translations('guess', 'ar', 'Guess');
            PERFORM insert_category_translations('guess', 'en', 'Guess');
            PERFORM insert_category_translations('guess', 'de', 'Guess');
            PERFORM insert_category_translations('guess', 'es', 'Guess');
            PERFORM insert_category_translations('guess', 'it', 'Guess');

            -- Level 2: mango
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mango', 'mango', 2, l1_id, 'Mango')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mango', 'fr', 'Mango');
            PERFORM insert_category_translations('mango', 'ar', 'Mango');
            PERFORM insert_category_translations('mango', 'en', 'Mango');
            PERFORM insert_category_translations('mango', 'de', 'Mango');
            PERFORM insert_category_translations('mango', 'es', 'Mango');
            PERFORM insert_category_translations('mango', 'it', 'Mango');

        -- Level 1: accessoires-homme
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-homme', 'accessoires-homme', 1, root_id, 'Accessoires Homme')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('accessoires-homme', 'fr', 'Accessoires Homme');
        PERFORM insert_category_translations('accessoires-homme', 'ar', 'إكسسوارات رجالية');
        PERFORM insert_category_translations('accessoires-homme', 'en', 'Men''s Accessories');
        PERFORM insert_category_translations('accessoires-homme', 'de', 'Herren‑Accessoires');
        PERFORM insert_category_translations('accessoires-homme', 'es', 'Accesorios Hombre');
        PERFORM insert_category_translations('accessoires-homme', 'it', 'Accessori Uomo');

            -- Level 2: ceintures
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ceintures', 'ceintures', 2, l1_id, 'Ceintures')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ceintures', 'fr', 'Ceintures');
            PERFORM insert_category_translations('ceintures', 'ar', 'أحزمة');
            PERFORM insert_category_translations('ceintures', 'en', 'Belts');
            PERFORM insert_category_translations('ceintures', 'de', 'Gürtel');
            PERFORM insert_category_translations('ceintures', 'es', 'Cinturones');
            PERFORM insert_category_translations('ceintures', 'it', 'Cinture');

            -- Level 2: cravates-noeuds-papillon
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cravates-noeuds-papillon', 'cravates-noeuds-papillon', 2, l1_id, 'Cravates & nœuds papillon')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cravates-noeuds-papillon', 'fr', 'Cravates & nœuds papillon');
            PERFORM insert_category_translations('cravates-noeuds-papillon', 'ar', 'ربطات عنق & بابيون');
            PERFORM insert_category_translations('cravates-noeuds-papillon', 'en', 'Ties & bow ties');
            PERFORM insert_category_translations('cravates-noeuds-papillon', 'de', 'Krawatten & Fliegen');
            PERFORM insert_category_translations('cravates-noeuds-papillon', 'es', 'Corbatas & pajaritas');
            PERFORM insert_category_translations('cravates-noeuds-papillon', 'it', 'Cravatte & papillon');

            -- Level 2: chapeaux-casquettes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chapeaux-casquettes', 'chapeaux-casquettes', 2, l1_id, 'Chapeaux & casquettes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chapeaux-casquettes', 'fr', 'Chapeaux & casquettes');
            PERFORM insert_category_translations('chapeaux-casquettes', 'ar', 'قبعات & كاب');
            PERFORM insert_category_translations('chapeaux-casquettes', 'en', 'Hats & caps');
            PERFORM insert_category_translations('chapeaux-casquettes', 'de', 'Hüte & Caps');
            PERFORM insert_category_translations('chapeaux-casquettes', 'es', 'Sombreros & gorras');
            PERFORM insert_category_translations('chapeaux-casquettes', 'it', 'Cappelli & berretti');

            -- Level 2: gants-echarpes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gants-echarpes', 'gants-echarpes', 2, l1_id, 'Gants & écharpes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gants-echarpes', 'fr', 'Gants & écharpes');
            PERFORM insert_category_translations('gants-echarpes', 'ar', 'قفازات & أوشحة');
            PERFORM insert_category_translations('gants-echarpes', 'en', 'Gloves & scarves');
            PERFORM insert_category_translations('gants-echarpes', 'de', 'Handschuhe & Schals');
            PERFORM insert_category_translations('gants-echarpes', 'es', 'Guantes & bufandas');
            PERFORM insert_category_translations('gants-echarpes', 'it', 'Guanti & sciarpe');

            -- Level 2: lunettes-soleil
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lunettes-soleil', 'lunettes-soleil', 2, l1_id, 'Lunettes de soleil')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lunettes-soleil', 'fr', 'Lunettes de soleil');
            PERFORM insert_category_translations('lunettes-soleil', 'ar', 'نظارات شمس');
            PERFORM insert_category_translations('lunettes-soleil', 'en', 'Sunglasses');
            PERFORM insert_category_translations('lunettes-soleil', 'de', 'Sonnenbrillen');
            PERFORM insert_category_translations('lunettes-soleil', 'es', 'Gafas de sol');
            PERFORM insert_category_translations('lunettes-soleil', 'it', 'Occhiali da sole');

            -- Level 2: montres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('montres', 'montres', 2, l1_id, 'Montres')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('montres', 'fr', 'Montres');
            PERFORM insert_category_translations('montres', 'ar', 'ساعات');
            PERFORM insert_category_translations('montres', 'en', 'Watches');
            PERFORM insert_category_translations('montres', 'de', 'Uhren');
            PERFORM insert_category_translations('montres', 'es', 'Relojes');
            PERFORM insert_category_translations('montres', 'it', 'Orologi');

            -- Level 2: bijoux-homme
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bijoux-homme', 'bijoux-homme', 2, l1_id, 'Bijoux homme')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bijoux-homme', 'fr', 'Bijoux homme');
            PERFORM insert_category_translations('bijoux-homme', 'ar', 'مجوهرات رجالية');
            PERFORM insert_category_translations('bijoux-homme', 'en', 'Men''s jewelry');
            PERFORM insert_category_translations('bijoux-homme', 'de', 'Herrenschmuck');
            PERFORM insert_category_translations('bijoux-homme', 'es', 'Joyas hombre');
            PERFORM insert_category_translations('bijoux-homme', 'it', 'Gioielli uomo');

            -- Level 2: portefeuilles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('portefeuilles', 'portefeuilles', 2, l1_id, 'Portefeuilles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('portefeuilles', 'fr', 'Portefeuilles');
            PERFORM insert_category_translations('portefeuilles', 'ar', 'محافظ');
            PERFORM insert_category_translations('portefeuilles', 'en', 'Wallets');
            PERFORM insert_category_translations('portefeuilles', 'de', 'Geldbörsen');
            PERFORM insert_category_translations('portefeuilles', 'es', 'Carteras');
            PERFORM insert_category_translations('portefeuilles', 'it', 'Portafogli');

            -- Level 2: porte-cartes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('porte-cartes', 'porte-cartes', 2, l1_id, 'Porte‑cartes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('porte-cartes', 'fr', 'Porte‑cartes');
            PERFORM insert_category_translations('porte-cartes', 'ar', 'حامل بطاقات');
            PERFORM insert_category_translations('porte-cartes', 'en', 'Card holders');
            PERFORM insert_category_translations('porte-cartes', 'de', 'Kartenetuis');
            PERFORM insert_category_translations('porte-cartes', 'es', 'Tarjeteros');
            PERFORM insert_category_translations('porte-cartes', 'it', 'Porta carte');

            -- Level 2: sacoches-besaces
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacoches-besaces', 'sacoches-besaces', 2, l1_id, 'Sacoches & besaces')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacoches-besaces', 'fr', 'Sacoches & besaces');
            PERFORM insert_category_translations('sacoches-besaces', 'ar', 'حقائب كتف');
            PERFORM insert_category_translations('sacoches-besaces', 'en', 'Messenger bags');
            PERFORM insert_category_translations('sacoches-besaces', 'de', 'Umhängetaschen');
            PERFORM insert_category_translations('sacoches-besaces', 'es', 'Bolsos & bandoleras');
            PERFORM insert_category_translations('sacoches-besaces', 'it', 'Borse a tracolla');

        -- Level 1: vetements-femme
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vetements-femme', 'vetements-femme', 1, root_id, 'Vêtements Femme')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('vetements-femme', 'fr', 'Vêtements Femme');
        PERFORM insert_category_translations('vetements-femme', 'ar', 'ملابس نسائية');
        PERFORM insert_category_translations('vetements-femme', 'en', 'Women''s Clothing');
        PERFORM insert_category_translations('vetements-femme', 'de', 'Damenbekleidung');
        PERFORM insert_category_translations('vetements-femme', 'es', 'Ropa de Mujer');
        PERFORM insert_category_translations('vetements-femme', 'it', 'Abbigliamento Donna');

            -- Level 2: tops-t-shirts
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tops-t-shirts', 'tops-t-shirts', 2, l1_id, 'Tops & T‑shirts')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tops-t-shirts', 'fr', 'Tops & T‑shirts');
            PERFORM insert_category_translations('tops-t-shirts', 'ar', 'توبات & تيشيرتات');
            PERFORM insert_category_translations('tops-t-shirts', 'en', 'Tops & T‑shirts');
            PERFORM insert_category_translations('tops-t-shirts', 'de', 'Tops & T‑Shirts');
            PERFORM insert_category_translations('tops-t-shirts', 'es', 'Tops & Camisetas');
            PERFORM insert_category_translations('tops-t-shirts', 'it', 'Top & T‑shirt');

                -- Level 3: basique
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('basique', 'basique', 3, l2_id, 'Basique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('basique', 'fr', 'Basique');
                PERFORM insert_category_translations('basique', 'ar', 'أساسي');
                PERFORM insert_category_translations('basique', 'en', 'Basic');
                PERFORM insert_category_translations('basique', 'de', 'Basic');
                PERFORM insert_category_translations('basique', 'es', 'Básica');
                PERFORM insert_category_translations('basique', 'it', 'Basic');

                -- Level 3: crop-top
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('crop-top', 'crop-top', 3, l2_id, 'Crop top')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('crop-top', 'fr', 'Crop top');
                PERFORM insert_category_translations('crop-top', 'ar', 'كروب توب');
                PERFORM insert_category_translations('crop-top', 'en', 'Crop top');
                PERFORM insert_category_translations('crop-top', 'de', 'Crop‑Top');
                PERFORM insert_category_translations('crop-top', 'es', 'Crop top');
                PERFORM insert_category_translations('crop-top', 'it', 'Crop top');

                -- Level 3: dentelle
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('dentelle', 'dentelle', 3, l2_id, 'Dentelle')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('dentelle', 'fr', 'Dentelle');
                PERFORM insert_category_translations('dentelle', 'ar', 'دانتيل');
                PERFORM insert_category_translations('dentelle', 'en', 'Lace');
                PERFORM insert_category_translations('dentelle', 'de', 'Spitze');
                PERFORM insert_category_translations('dentelle', 'es', 'Encaje');
                PERFORM insert_category_translations('dentelle', 'it', 'Pizzo');

            -- Level 2: chemisiers-blouses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chemisiers-blouses', 'chemisiers-blouses', 2, l1_id, 'Chemisiers & blouses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chemisiers-blouses', 'fr', 'Chemisiers & blouses');
            PERFORM insert_category_translations('chemisiers-blouses', 'ar', 'بلوزات & قمصان');
            PERFORM insert_category_translations('chemisiers-blouses', 'en', 'Blouses & shirts');
            PERFORM insert_category_translations('chemisiers-blouses', 'de', 'Blusen & Hemden');
            PERFORM insert_category_translations('chemisiers-blouses', 'es', 'Blusas & camisas');
            PERFORM insert_category_translations('chemisiers-blouses', 'it', 'Camicie & bluse');

                -- Level 3: habilles
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('habilles', 'habilles', 3, l2_id, 'Habillés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('habilles', 'fr', 'Habillés');
                PERFORM insert_category_translations('habilles', 'ar', 'رسمية');
                PERFORM insert_category_translations('habilles', 'en', 'Dressy');
                PERFORM insert_category_translations('habilles', 'de', 'Elegant');
                PERFORM insert_category_translations('habilles', 'es', 'Elegantes');
                PERFORM insert_category_translations('habilles', 'it', 'Eleganti');

                -- Level 3: satin
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('satin', 'satin', 3, l2_id, 'Satin')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('satin', 'fr', 'Satin');
                PERFORM insert_category_translations('satin', 'ar', 'ساتان');
                PERFORM insert_category_translations('satin', 'en', 'Satin');
                PERFORM insert_category_translations('satin', 'de', 'Satin');
                PERFORM insert_category_translations('satin', 'es', 'Satén');
                PERFORM insert_category_translations('satin', 'it', 'Satin');

                -- Level 3: oversize
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('oversize', 'oversize', 3, l2_id, 'Oversize')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('oversize', 'fr', 'Oversize');
                PERFORM insert_category_translations('oversize', 'ar', 'واسعة');
                PERFORM insert_category_translations('oversize', 'en', 'Oversized');
                PERFORM insert_category_translations('oversize', 'de', 'Oversize');
                PERFORM insert_category_translations('oversize', 'es', 'Oversize');
                PERFORM insert_category_translations('oversize', 'it', 'Oversize');

                -- Level 3: fleuris
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fleuris', 'fleuris', 3, l2_id, 'Fleuris')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('fleuris', 'fr', 'Fleuris');
                PERFORM insert_category_translations('fleuris', 'ar', 'مزخرفة بالورود');
                PERFORM insert_category_translations('fleuris', 'en', 'Floral');
                PERFORM insert_category_translations('fleuris', 'de', 'Geblümt');
                PERFORM insert_category_translations('fleuris', 'es', 'Florales');
                PERFORM insert_category_translations('fleuris', 'it', 'Floreali');

            -- Level 2: pulls-gilets-femme
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pulls-gilets-femme', 'pulls-gilets-femme', 2, l1_id, 'Pulls & gilets')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pulls-gilets-femme', 'fr', 'Pulls & gilets');
            PERFORM insert_category_translations('pulls-gilets-femme', 'ar', 'بلوفرات & كارديغان');
            PERFORM insert_category_translations('pulls-gilets-femme', 'en', 'Sweaters & cardigans');
            PERFORM insert_category_translations('pulls-gilets-femme', 'de', 'Pullover & Cardigans');
            PERFORM insert_category_translations('pulls-gilets-femme', 'es', 'Jerséis & cárdigans');
            PERFORM insert_category_translations('pulls-gilets-femme', 'it', 'Maglioni & cardigan');

                -- Level 3: gros-tricot
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gros-tricot', 'gros-tricot', 3, l2_id, 'Gros tricot')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('gros-tricot', 'fr', 'Gros tricot');
                PERFORM insert_category_translations('gros-tricot', 'ar', 'حياكة سميكة');
                PERFORM insert_category_translations('gros-tricot', 'en', 'Chunky knit');
                PERFORM insert_category_translations('gros-tricot', 'de', 'Grobstrick');
                PERFORM insert_category_translations('gros-tricot', 'es', 'Punto grueso');
                PERFORM insert_category_translations('gros-tricot', 'it', 'Maglia grossa');

                -- Level 3: cardigan
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cardigan', 'cardigan', 3, l2_id, 'Cardigan')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('cardigan', 'fr', 'Cardigan');
                PERFORM insert_category_translations('cardigan', 'ar', 'كارديغان');
                PERFORM insert_category_translations('cardigan', 'en', 'Cardigan');
                PERFORM insert_category_translations('cardigan', 'de', 'Cardigan');
                PERFORM insert_category_translations('cardigan', 'es', 'Cárdigan');
                PERFORM insert_category_translations('cardigan', 'it', 'Cardigan');

                -- Level 3: col-roule
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('col-roule', 'col-roule', 3, l2_id, 'Col roulé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('col-roule', 'fr', 'Col roulé');
                PERFORM insert_category_translations('col-roule', 'ar', 'ياقة عالية');
                PERFORM insert_category_translations('col-roule', 'en', 'Turtleneck');
                PERFORM insert_category_translations('col-roule', 'de', 'Rollkragen');
                PERFORM insert_category_translations('col-roule', 'es', 'Cuello alto');
                PERFORM insert_category_translations('col-roule', 'it', 'Dolcevita');

            -- Level 2: sweats-hoodies-femme
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sweats-hoodies-femme', 'sweats-hoodies-femme', 2, l1_id, 'Sweats & hoodies')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sweats-hoodies-femme', 'fr', 'Sweats & hoodies');
            PERFORM insert_category_translations('sweats-hoodies-femme', 'ar', 'سويت شيرت & هودي');
            PERFORM insert_category_translations('sweats-hoodies-femme', 'en', 'Sweatshirts & hoodies');
            PERFORM insert_category_translations('sweats-hoodies-femme', 'de', 'Sweatshirts & Hoodies');
            PERFORM insert_category_translations('sweats-hoodies-femme', 'es', 'Sudaderas & hoodies');
            PERFORM insert_category_translations('sweats-hoodies-femme', 'it', 'Felpe & hoodies');

                -- Level 3: unis
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('unis', 'unis', 3, l2_id, 'Unis')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('unis', 'fr', 'Unis');
                PERFORM insert_category_translations('unis', 'ar', 'سادة');
                PERFORM insert_category_translations('unis', 'en', 'Plain');
                PERFORM insert_category_translations('unis', 'de', 'Uni');
                PERFORM insert_category_translations('unis', 'es', 'Lisas');
                PERFORM insert_category_translations('unis', 'it', 'Tinta unita');

                -- Level 3: imprimes
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('imprimes', 'imprimes', 3, l2_id, 'Imprimés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('imprimes', 'fr', 'Imprimés');
                PERFORM insert_category_translations('imprimes', 'ar', 'مطبوعة');
                PERFORM insert_category_translations('imprimes', 'en', 'Printed');
                PERFORM insert_category_translations('imprimes', 'de', 'Bedruckt');
                PERFORM insert_category_translations('imprimes', 'es', 'Estampadas');
                PERFORM insert_category_translations('imprimes', 'it', 'Stampate');

                -- Level 3: oversize
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('oversize', 'oversize', 3, l2_id, 'Oversize')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('oversize', 'fr', 'Oversize');
                PERFORM insert_category_translations('oversize', 'ar', 'واسعة');
                PERFORM insert_category_translations('oversize', 'en', 'Oversized');
                PERFORM insert_category_translations('oversize', 'de', 'Oversize');
                PERFORM insert_category_translations('oversize', 'es', 'Oversize');
                PERFORM insert_category_translations('oversize', 'it', 'Oversize');

            -- Level 2: debardeurs-bustiers
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('debardeurs-bustiers', 'debardeurs-bustiers', 2, l1_id, 'Débardeurs & bustiers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('debardeurs-bustiers', 'fr', 'Débardeurs & bustiers');
            PERFORM insert_category_translations('debardeurs-bustiers', 'ar', 'توبات داخلية & صدريات');
            PERFORM insert_category_translations('debardeurs-bustiers', 'en', 'Tank tops & bustiers');
            PERFORM insert_category_translations('debardeurs-bustiers', 'de', 'Tanktops & Bustiers');
            PERFORM insert_category_translations('debardeurs-bustiers', 'es', 'Camisetas de tirantes & bustiers');
            PERFORM insert_category_translations('debardeurs-bustiers', 'it', 'Canotte & bustier');

            -- Level 2: robes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('robes', 'robes', 2, l1_id, 'Robes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('robes', 'fr', 'Robes');
            PERFORM insert_category_translations('robes', 'ar', 'فساتين');
            PERFORM insert_category_translations('robes', 'en', 'Dresses');
            PERFORM insert_category_translations('robes', 'de', 'Kleider');
            PERFORM insert_category_translations('robes', 'es', 'Vestidos');
            PERFORM insert_category_translations('robes', 'it', 'Abiti');

                -- Level 3: courtes
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('courtes', 'courtes', 3, l2_id, 'Courtes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('courtes', 'fr', 'Courtes');
                PERFORM insert_category_translations('courtes', 'ar', 'قصيرة');
                PERFORM insert_category_translations('courtes', 'en', 'Short');
                PERFORM insert_category_translations('courtes', 'de', 'Kurz');
                PERFORM insert_category_translations('courtes', 'es', 'Cortas');
                PERFORM insert_category_translations('courtes', 'it', 'Corte');

                -- Level 3: midi
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('midi', 'midi', 3, l2_id, 'Midi')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('midi', 'fr', 'Midi');
                PERFORM insert_category_translations('midi', 'ar', 'ميدي');
                PERFORM insert_category_translations('midi', 'en', 'Midi');
                PERFORM insert_category_translations('midi', 'de', 'Midi');
                PERFORM insert_category_translations('midi', 'es', 'Midi');
                PERFORM insert_category_translations('midi', 'it', 'Midi');

                -- Level 3: longues
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('longues', 'longues', 3, l2_id, 'Longues')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('longues', 'fr', 'Longues');
                PERFORM insert_category_translations('longues', 'ar', 'طويلة');
                PERFORM insert_category_translations('longues', 'en', 'Long');
                PERFORM insert_category_translations('longues', 'de', 'Lang');
                PERFORM insert_category_translations('longues', 'es', 'Largas');
                PERFORM insert_category_translations('longues', 'it', 'Lunghe');

                -- Level 3: soiree
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soiree', 'soiree', 3, l2_id, 'Soirée')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('soiree', 'fr', 'Soirée');
                PERFORM insert_category_translations('soiree', 'ar', 'سهرة');
                PERFORM insert_category_translations('soiree', 'en', 'Evening');
                PERFORM insert_category_translations('soiree', 'de', 'Abendkleider');
                PERFORM insert_category_translations('soiree', 'es', 'Fiesta');
                PERFORM insert_category_translations('soiree', 'it', 'Sera');

                -- Level 3: cocktail
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cocktail', 'cocktail', 3, l2_id, 'Cocktail')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('cocktail', 'fr', 'Cocktail');
                PERFORM insert_category_translations('cocktail', 'ar', 'كوكتيل');
                PERFORM insert_category_translations('cocktail', 'en', 'Cocktail');
                PERFORM insert_category_translations('cocktail', 'de', 'Cocktail');
                PERFORM insert_category_translations('cocktail', 'es', 'Cóctel');
                PERFORM insert_category_translations('cocktail', 'it', 'Cocktail');

                -- Level 3: moulantes
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('moulantes', 'moulantes', 3, l2_id, 'Moulantes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('moulantes', 'fr', 'Moulantes');
                PERFORM insert_category_translations('moulantes', 'ar', 'ضيقة');
                PERFORM insert_category_translations('moulantes', 'en', 'Bodycon');
                PERFORM insert_category_translations('moulantes', 'de', 'Eng anliegend');
                PERFORM insert_category_translations('moulantes', 'es', 'Ajustados');
                PERFORM insert_category_translations('moulantes', 'it', 'Aderenti');

            -- Level 2: robes-evenements
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('robes-evenements', 'robes-evenements', 2, l1_id, 'Robes événements')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('robes-evenements', 'fr', 'Robes événements');
            PERFORM insert_category_translations('robes-evenements', 'ar', 'فساتين مناسبات');
            PERFORM insert_category_translations('robes-evenements', 'en', 'Event dresses');
            PERFORM insert_category_translations('robes-evenements', 'de', 'Event‑Kleider');
            PERFORM insert_category_translations('robes-evenements', 'es', 'Vestidos para eventos');
            PERFORM insert_category_translations('robes-evenements', 'it', 'Abiti per eventi');

                -- Level 3: mariage
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mariage', 'mariage', 3, l2_id, 'Mariage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('mariage', 'fr', 'Mariage');
                PERFORM insert_category_translations('mariage', 'ar', 'زفاف');
                PERFORM insert_category_translations('mariage', 'en', 'Wedding');
                PERFORM insert_category_translations('mariage', 'de', 'Hochzeit');
                PERFORM insert_category_translations('mariage', 'es', 'Boda');
                PERFORM insert_category_translations('mariage', 'it', 'Matrimonio');

                -- Level 3: fetes
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fetes', 'fetes', 3, l2_id, 'Fêtes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('fetes', 'fr', 'Fêtes');
                PERFORM insert_category_translations('fetes', 'ar', 'حفلات');
                PERFORM insert_category_translations('fetes', 'en', 'Parties');
                PERFORM insert_category_translations('fetes', 'de', 'Feste');
                PERFORM insert_category_translations('fetes', 'es', 'Fiestas');
                PERFORM insert_category_translations('fetes', 'it', 'Feste');

            -- Level 2: jupes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jupes', 'jupes', 2, l1_id, 'Jupes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('jupes', 'fr', 'Jupes');
            PERFORM insert_category_translations('jupes', 'ar', 'تنانير');
            PERFORM insert_category_translations('jupes', 'en', 'Skirts');
            PERFORM insert_category_translations('jupes', 'de', 'Röcke');
            PERFORM insert_category_translations('jupes', 'es', 'Faldas');
            PERFORM insert_category_translations('jupes', 'it', 'Gonne');

                -- Level 3: courtes
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('courtes', 'courtes', 3, l2_id, 'Courtes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('courtes', 'fr', 'Courtes');
                PERFORM insert_category_translations('courtes', 'ar', 'قصيرة');
                PERFORM insert_category_translations('courtes', 'en', 'Short');
                PERFORM insert_category_translations('courtes', 'de', 'Kurz');
                PERFORM insert_category_translations('courtes', 'es', 'Cortas');
                PERFORM insert_category_translations('courtes', 'it', 'Corte');

                -- Level 3: plissees
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('plissees', 'plissees', 3, l2_id, 'Plissées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('plissees', 'fr', 'Plissées');
                PERFORM insert_category_translations('plissees', 'ar', 'مكسرة');
                PERFORM insert_category_translations('plissees', 'en', 'Pleated');
                PERFORM insert_category_translations('plissees', 'de', 'Plissiert');
                PERFORM insert_category_translations('plissees', 'es', 'Plisadas');
                PERFORM insert_category_translations('plissees', 'it', 'Plissé');

                -- Level 3: jeans
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jeans', 'jeans', 3, l2_id, 'Jeans')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('jeans', 'fr', 'Jeans');
                PERFORM insert_category_translations('jeans', 'ar', 'دينيم');
                PERFORM insert_category_translations('jeans', 'en', 'Denim');
                PERFORM insert_category_translations('jeans', 'de', 'Denim');
                PERFORM insert_category_translations('jeans', 'es', 'Denim');
                PERFORM insert_category_translations('jeans', 'it', 'Denim');

                -- Level 3: crayon
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('crayon', 'crayon', 3, l2_id, 'Crayon')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('crayon', 'fr', 'Crayon');
                PERFORM insert_category_translations('crayon', 'ar', 'قلم');
                PERFORM insert_category_translations('crayon', 'en', 'Pencil');
                PERFORM insert_category_translations('crayon', 'de', 'Bleistiftrock');
                PERFORM insert_category_translations('crayon', 'es', 'Tubo');
                PERFORM insert_category_translations('crayon', 'it', 'A tubino');

                -- Level 3: longues
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('longues', 'longues', 3, l2_id, 'Longues')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('longues', 'fr', 'Longues');
                PERFORM insert_category_translations('longues', 'ar', 'طويلة');
                PERFORM insert_category_translations('longues', 'en', 'Long');
                PERFORM insert_category_translations('longues', 'de', 'Lang');
                PERFORM insert_category_translations('longues', 'es', 'Largas');
                PERFORM insert_category_translations('longues', 'it', 'Lunghe');

            -- Level 2: jeans-femme
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jeans-femme', 'jeans-femme', 2, l1_id, 'Jeans femme')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('jeans-femme', 'fr', 'Jeans femme');
            PERFORM insert_category_translations('jeans-femme', 'ar', 'جينز نسائي');
            PERFORM insert_category_translations('jeans-femme', 'en', 'Women''s jeans');
            PERFORM insert_category_translations('jeans-femme', 'de', 'Damenjeans');
            PERFORM insert_category_translations('jeans-femme', 'es', 'Vaqueros mujer');
            PERFORM insert_category_translations('jeans-femme', 'it', 'Jeans donna');

                -- Level 3: slim
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('slim', 'slim', 3, l2_id, 'Slim')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('slim', 'fr', 'Slim');
                PERFORM insert_category_translations('slim', 'ar', 'سليم');
                PERFORM insert_category_translations('slim', 'en', 'Slim');
                PERFORM insert_category_translations('slim', 'de', 'Slim');
                PERFORM insert_category_translations('slim', 'es', 'Slim');
                PERFORM insert_category_translations('slim', 'it', 'Slim');

                -- Level 3: mom
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mom', 'mom', 3, l2_id, 'Mom')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('mom', 'fr', 'Mom');
                PERFORM insert_category_translations('mom', 'ar', 'مام');
                PERFORM insert_category_translations('mom', 'en', 'Mom');
                PERFORM insert_category_translations('mom', 'de', 'Mom');
                PERFORM insert_category_translations('mom', 'es', 'Mom');
                PERFORM insert_category_translations('mom', 'it', 'Mom');

                -- Level 3: flare
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('flare', 'flare', 3, l2_id, 'Flare')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('flare', 'fr', 'Flare');
                PERFORM insert_category_translations('flare', 'ar', 'فلير');
                PERFORM insert_category_translations('flare', 'en', 'Flare');
                PERFORM insert_category_translations('flare', 'de', 'Flare');
                PERFORM insert_category_translations('flare', 'es', 'Flare');
                PERFORM insert_category_translations('flare', 'it', 'Flare');

                -- Level 3: boyfriend
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('boyfriend', 'boyfriend', 3, l2_id, 'Boyfriend')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('boyfriend', 'fr', 'Boyfriend');
                PERFORM insert_category_translations('boyfriend', 'ar', 'بوي فريند');
                PERFORM insert_category_translations('boyfriend', 'en', 'Boyfriend');
                PERFORM insert_category_translations('boyfriend', 'de', 'Boyfriend');
                PERFORM insert_category_translations('boyfriend', 'es', 'Boyfriend');
                PERFORM insert_category_translations('boyfriend', 'it', 'Boyfriend');

                -- Level 3: skinny
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('skinny', 'skinny', 3, l2_id, 'Skinny')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('skinny', 'fr', 'Skinny');
                PERFORM insert_category_translations('skinny', 'ar', 'سكيني');
                PERFORM insert_category_translations('skinny', 'en', 'Skinny');
                PERFORM insert_category_translations('skinny', 'de', 'Skinny');
                PERFORM insert_category_translations('skinny', 'es', 'Skinny');
                PERFORM insert_category_translations('skinny', 'it', 'Skinny');

            -- Level 2: pantalons-femme
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pantalons-femme', 'pantalons-femme', 2, l1_id, 'Pantalons')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pantalons-femme', 'fr', 'Pantalons');
            PERFORM insert_category_translations('pantalons-femme', 'ar', 'سراويل');
            PERFORM insert_category_translations('pantalons-femme', 'en', 'Trousers');
            PERFORM insert_category_translations('pantalons-femme', 'de', 'Hosen');
            PERFORM insert_category_translations('pantalons-femme', 'es', 'Pantalones');
            PERFORM insert_category_translations('pantalons-femme', 'it', 'Pantaloni');

                -- Level 3: tailleur
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tailleur', 'tailleur', 3, l2_id, 'Tailleur')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('tailleur', 'fr', 'Tailleur');
                PERFORM insert_category_translations('tailleur', 'ar', 'تاييلور');
                PERFORM insert_category_translations('tailleur', 'en', 'Tailored');
                PERFORM insert_category_translations('tailleur', 'de', 'Anzughose');
                PERFORM insert_category_translations('tailleur', 'es', 'Sastre');
                PERFORM insert_category_translations('tailleur', 'it', 'Tailleur');

                -- Level 3: palazzo
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('palazzo', 'palazzo', 3, l2_id, 'Palazzo')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('palazzo', 'fr', 'Palazzo');
                PERFORM insert_category_translations('palazzo', 'ar', 'بالازو');
                PERFORM insert_category_translations('palazzo', 'en', 'Palazzo');
                PERFORM insert_category_translations('palazzo', 'de', 'Palazzo');
                PERFORM insert_category_translations('palazzo', 'es', 'Palazzo');
                PERFORM insert_category_translations('palazzo', 'it', 'Palazzo');

                -- Level 3: cargo
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cargo', 'cargo', 3, l2_id, 'Cargo')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('cargo', 'fr', 'Cargo');
                PERFORM insert_category_translations('cargo', 'ar', 'كارغو');
                PERFORM insert_category_translations('cargo', 'en', 'Cargo');
                PERFORM insert_category_translations('cargo', 'de', 'Cargo');
                PERFORM insert_category_translations('cargo', 'es', 'Cargo');
                PERFORM insert_category_translations('cargo', 'it', 'Cargo');

                -- Level 3: legging
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('legging', 'legging', 3, l2_id, 'Legging')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('legging', 'fr', 'Legging');
                PERFORM insert_category_translations('legging', 'ar', 'ليقنز');
                PERFORM insert_category_translations('legging', 'en', 'Leggings');
                PERFORM insert_category_translations('legging', 'de', 'Leggings');
                PERFORM insert_category_translations('legging', 'es', 'Leggings');
                PERFORM insert_category_translations('legging', 'it', 'Leggings');

                -- Level 3: jogging
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jogging', 'jogging', 3, l2_id, 'Jogging')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('jogging', 'fr', 'Jogging');
                PERFORM insert_category_translations('jogging', 'ar', 'جينز رياضي');
                PERFORM insert_category_translations('jogging', 'en', 'Joggers');
                PERFORM insert_category_translations('jogging', 'de', 'Jogginghose');
                PERFORM insert_category_translations('jogging', 'es', 'Joggers');
                PERFORM insert_category_translations('jogging', 'it', 'Joggers');

            -- Level 2: collants-leggings-thermiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('collants-leggings-thermiques', 'collants-leggings-thermiques', 2, l1_id, 'Collants & leggings thermiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('collants-leggings-thermiques', 'fr', 'Collants & leggings thermiques');
            PERFORM insert_category_translations('collants-leggings-thermiques', 'ar', 'جوارب وليقنز حراري');
            PERFORM insert_category_translations('collants-leggings-thermiques', 'en', 'Thermal tights & leggings');
            PERFORM insert_category_translations('collants-leggings-thermiques', 'de', 'Thermo‑Strumpfhosen & Leggings');
            PERFORM insert_category_translations('collants-leggings-thermiques', 'es', 'Medias & leggings térmicos');
            PERFORM insert_category_translations('collants-leggings-thermiques', 'it', 'Collant & leggings termici');

            -- Level 2: vestes-femme
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vestes-femme', 'vestes-femme', 2, l1_id, 'Vestes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('vestes-femme', 'fr', 'Vestes');
            PERFORM insert_category_translations('vestes-femme', 'ar', 'سترات');
            PERFORM insert_category_translations('vestes-femme', 'en', 'Jackets');
            PERFORM insert_category_translations('vestes-femme', 'de', 'Jacken');
            PERFORM insert_category_translations('vestes-femme', 'es', 'Chaquetas');
            PERFORM insert_category_translations('vestes-femme', 'it', 'Giacche');

                -- Level 3: blazer
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('blazer', 'blazer', 3, l2_id, 'Blazer')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('blazer', 'fr', 'Blazer');
                PERFORM insert_category_translations('blazer', 'ar', 'بليزر');
                PERFORM insert_category_translations('blazer', 'en', 'Blazer');
                PERFORM insert_category_translations('blazer', 'de', 'Blazer');
                PERFORM insert_category_translations('blazer', 'es', 'Blazer');
                PERFORM insert_category_translations('blazer', 'it', 'Blazer');

                -- Level 3: cuir
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cuir', 'cuir', 3, l2_id, 'Cuir')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('cuir', 'fr', 'Cuir');
                PERFORM insert_category_translations('cuir', 'ar', 'جلد');
                PERFORM insert_category_translations('cuir', 'en', 'Leather');
                PERFORM insert_category_translations('cuir', 'de', 'Leder');
                PERFORM insert_category_translations('cuir', 'es', 'Cuero');
                PERFORM insert_category_translations('cuir', 'it', 'Pelle');

                -- Level 3: denim
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('denim', 'denim', 3, l2_id, 'Denim')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('denim', 'fr', 'Denim');
                PERFORM insert_category_translations('denim', 'ar', 'دينيم');
                PERFORM insert_category_translations('denim', 'en', 'Denim');
                PERFORM insert_category_translations('denim', 'de', 'Denim');
                PERFORM insert_category_translations('denim', 'es', 'Denim');
                PERFORM insert_category_translations('denim', 'it', 'Denim');

            -- Level 2: blousons-femme
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('blousons-femme', 'blousons-femme', 2, l1_id, 'Blousons')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('blousons-femme', 'fr', 'Blousons');
            PERFORM insert_category_translations('blousons-femme', 'ar', 'جاكيتات');
            PERFORM insert_category_translations('blousons-femme', 'en', 'Jackets');
            PERFORM insert_category_translations('blousons-femme', 'de', 'Jacken');
            PERFORM insert_category_translations('blousons-femme', 'es', 'Cazadoras');
            PERFORM insert_category_translations('blousons-femme', 'it', 'Giacche');

                -- Level 3: biker
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('biker', 'biker', 3, l2_id, 'Biker')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('biker', 'fr', 'Biker');
                PERFORM insert_category_translations('biker', 'ar', 'بايكر');
                PERFORM insert_category_translations('biker', 'en', 'Biker');
                PERFORM insert_category_translations('biker', 'de', 'Biker');
                PERFORM insert_category_translations('biker', 'es', 'Biker');
                PERFORM insert_category_translations('biker', 'it', 'Biker');

                -- Level 3: bomber
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bomber', 'bomber', 3, l2_id, 'Bomber')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('bomber', 'fr', 'Bomber');
                PERFORM insert_category_translations('bomber', 'ar', 'بومبر');
                PERFORM insert_category_translations('bomber', 'en', 'Bomber');
                PERFORM insert_category_translations('bomber', 'de', 'Bomber');
                PERFORM insert_category_translations('bomber', 'es', 'Bomber');
                PERFORM insert_category_translations('bomber', 'it', 'Bomber');

            -- Level 2: manteaux-femme
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('manteaux-femme', 'manteaux-femme', 2, l1_id, 'Manteaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('manteaux-femme', 'fr', 'Manteaux');
            PERFORM insert_category_translations('manteaux-femme', 'ar', 'معاطف');
            PERFORM insert_category_translations('manteaux-femme', 'en', 'Coats');
            PERFORM insert_category_translations('manteaux-femme', 'de', 'Mäntel');
            PERFORM insert_category_translations('manteaux-femme', 'es', 'Abrigos');
            PERFORM insert_category_translations('manteaux-femme', 'it', 'Cappotti');

                -- Level 3: laine
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('laine', 'laine', 3, l2_id, 'Laine')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('laine', 'fr', 'Laine');
                PERFORM insert_category_translations('laine', 'ar', 'صوف');
                PERFORM insert_category_translations('laine', 'en', 'Wool');
                PERFORM insert_category_translations('laine', 'de', 'Wolle');
                PERFORM insert_category_translations('laine', 'es', 'Lana');
                PERFORM insert_category_translations('laine', 'it', 'Lana');

                -- Level 3: trench
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('trench', 'trench', 3, l2_id, 'Trench')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('trench', 'fr', 'Trench');
                PERFORM insert_category_translations('trench', 'ar', 'ترنش');
                PERFORM insert_category_translations('trench', 'en', 'Trench');
                PERFORM insert_category_translations('trench', 'de', 'Trenchcoat');
                PERFORM insert_category_translations('trench', 'es', 'Trench');
                PERFORM insert_category_translations('trench', 'it', 'Trench');

                -- Level 3: oversize
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('oversize', 'oversize', 3, l2_id, 'Oversize')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('oversize', 'fr', 'Oversize');
                PERFORM insert_category_translations('oversize', 'ar', 'واسعة');
                PERFORM insert_category_translations('oversize', 'en', 'Oversized');
                PERFORM insert_category_translations('oversize', 'de', 'Oversize');
                PERFORM insert_category_translations('oversize', 'es', 'Oversize');
                PERFORM insert_category_translations('oversize', 'it', 'Oversize');

            -- Level 2: doudounes-femme
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('doudounes-femme', 'doudounes-femme', 2, l1_id, 'Doudounes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('doudounes-femme', 'fr', 'Doudounes');
            PERFORM insert_category_translations('doudounes-femme', 'ar', 'معاطف منتفخة');
            PERFORM insert_category_translations('doudounes-femme', 'en', 'Puffer jackets');
            PERFORM insert_category_translations('doudounes-femme', 'de', 'Daunenjacken');
            PERFORM insert_category_translations('doudounes-femme', 'es', 'Plumíferos');
            PERFORM insert_category_translations('doudounes-femme', 'it', 'Piumini');

            -- Level 2: capes-ponchos
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('capes-ponchos', 'capes-ponchos', 2, l1_id, 'Capes & ponchos')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('capes-ponchos', 'fr', 'Capes & ponchos');
            PERFORM insert_category_translations('capes-ponchos', 'ar', 'كابات & بونشو');
            PERFORM insert_category_translations('capes-ponchos', 'en', 'Capes & ponchos');
            PERFORM insert_category_translations('capes-ponchos', 'de', 'Capes & Ponchos');
            PERFORM insert_category_translations('capes-ponchos', 'es', 'Capas & ponchos');
            PERFORM insert_category_translations('capes-ponchos', 'it', 'Cappes & poncho');

            -- Level 2: mode-chic
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mode-chic', 'mode-chic', 2, l1_id, 'Mode chic')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mode-chic', 'fr', 'Mode chic');
            PERFORM insert_category_translations('mode-chic', 'ar', 'موضة راقية');
            PERFORM insert_category_translations('mode-chic', 'en', 'Chic fashion');
            PERFORM insert_category_translations('mode-chic', 'de', 'Elegante Mode');
            PERFORM insert_category_translations('mode-chic', 'es', 'Moda chic');
            PERFORM insert_category_translations('mode-chic', 'it', 'Moda chic');

            -- Level 2: mode-streetwear
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mode-streetwear', 'mode-streetwear', 2, l1_id, 'Mode streetwear')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mode-streetwear', 'fr', 'Mode streetwear');
            PERFORM insert_category_translations('mode-streetwear', 'ar', 'موضة شارع');
            PERFORM insert_category_translations('mode-streetwear', 'en', 'Streetwear');
            PERFORM insert_category_translations('mode-streetwear', 'de', 'Streetwear');
            PERFORM insert_category_translations('mode-streetwear', 'es', 'Streetwear');
            PERFORM insert_category_translations('mode-streetwear', 'it', 'Streetwear');

            -- Level 2: sportwear-femme
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sportwear-femme', 'sportwear-femme', 2, l1_id, 'Sportwear')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sportwear-femme', 'fr', 'Sportwear');
            PERFORM insert_category_translations('sportwear-femme', 'ar', 'ملابس رياضية');
            PERFORM insert_category_translations('sportwear-femme', 'en', 'Sportswear');
            PERFORM insert_category_translations('sportwear-femme', 'de', 'Sportswear');
            PERFORM insert_category_translations('sportwear-femme', 'es', 'Sportswear');
            PERFORM insert_category_translations('sportwear-femme', 'it', 'Sportswear');

                -- Level 3: yoga
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('yoga', 'yoga', 3, l2_id, 'Yoga')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('yoga', 'fr', 'Yoga');
                PERFORM insert_category_translations('yoga', 'ar', 'يوغا');
                PERFORM insert_category_translations('yoga', 'en', 'Yoga');
                PERFORM insert_category_translations('yoga', 'de', 'Yoga');
                PERFORM insert_category_translations('yoga', 'es', 'Yoga');
                PERFORM insert_category_translations('yoga', 'it', 'Yoga');

                -- Level 3: running
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('running', 'running', 3, l2_id, 'Running')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('running', 'fr', 'Running');
                PERFORM insert_category_translations('running', 'ar', 'جري');
                PERFORM insert_category_translations('running', 'en', 'Running');
                PERFORM insert_category_translations('running', 'de', 'Running');
                PERFORM insert_category_translations('running', 'es', 'Running');
                PERFORM insert_category_translations('running', 'it', 'Running');

                -- Level 3: fitness
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fitness', 'fitness', 3, l2_id, 'Fitness')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('fitness', 'fr', 'Fitness');
                PERFORM insert_category_translations('fitness', 'ar', 'لياقة');
                PERFORM insert_category_translations('fitness', 'en', 'Fitness');
                PERFORM insert_category_translations('fitness', 'de', 'Fitness');
                PERFORM insert_category_translations('fitness', 'es', 'Fitness');
                PERFORM insert_category_translations('fitness', 'it', 'Fitness');

            -- Level 2: beachwear
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('beachwear', 'beachwear', 2, l1_id, 'Beachwear')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('beachwear', 'fr', 'Beachwear');
            PERFORM insert_category_translations('beachwear', 'ar', 'ملابس شاطئية');
            PERFORM insert_category_translations('beachwear', 'en', 'Beachwear');
            PERFORM insert_category_translations('beachwear', 'de', 'Bademode');
            PERFORM insert_category_translations('beachwear', 'es', 'Beachwear');
            PERFORM insert_category_translations('beachwear', 'it', 'Beachwear');

            -- Level 2: mode-traditionnelle-femme
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mode-traditionnelle-femme', 'mode-traditionnelle-femme', 2, l1_id, 'Mode traditionnelle')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mode-traditionnelle-femme', 'fr', 'Mode traditionnelle');
            PERFORM insert_category_translations('mode-traditionnelle-femme', 'ar', 'موضة تقليدية');
            PERFORM insert_category_translations('mode-traditionnelle-femme', 'en', 'Traditional fashion');
            PERFORM insert_category_translations('mode-traditionnelle-femme', 'de', 'Traditionelle Mode');
            PERFORM insert_category_translations('mode-traditionnelle-femme', 'es', 'Moda tradicional');
            PERFORM insert_category_translations('mode-traditionnelle-femme', 'it', 'Moda tradizionale');

                -- Level 3: abaya
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('abaya', 'abaya', 3, l2_id, 'Abaya')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('abaya', 'fr', 'Abaya');
                PERFORM insert_category_translations('abaya', 'ar', 'عباية');
                PERFORM insert_category_translations('abaya', 'en', 'Abaya');
                PERFORM insert_category_translations('abaya', 'de', 'Abaya');
                PERFORM insert_category_translations('abaya', 'es', 'Abaya');
                PERFORM insert_category_translations('abaya', 'it', 'Abaya');

                -- Level 3: caftan
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('caftan', 'caftan', 3, l2_id, 'Caftan')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('caftan', 'fr', 'Caftan');
                PERFORM insert_category_translations('caftan', 'ar', 'قفطان');
                PERFORM insert_category_translations('caftan', 'en', 'Kaftan');
                PERFORM insert_category_translations('caftan', 'de', 'Kaftan');
                PERFORM insert_category_translations('caftan', 'es', 'Caftán');
                PERFORM insert_category_translations('caftan', 'it', 'Kaftano');

                -- Level 3: karakou
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('karakou', 'karakou', 3, l2_id, 'Karakou')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('karakou', 'fr', 'Karakou');
                PERFORM insert_category_translations('karakou', 'ar', 'كراكو');
                PERFORM insert_category_translations('karakou', 'en', 'Karakou');
                PERFORM insert_category_translations('karakou', 'de', 'Karakou');
                PERFORM insert_category_translations('karakou', 'es', 'Karakou');
                PERFORM insert_category_translations('karakou', 'it', 'Karakou');

        -- Level 1: marques-vetements-femme
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('marques-vetements-femme', 'marques-vetements-femme', 1, root_id, 'Marques vêtements femme')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('marques-vetements-femme', 'fr', 'Marques vêtements femme');
        PERFORM insert_category_translations('marques-vetements-femme', 'ar', 'علامات تجارية ملابس نسائية');
        PERFORM insert_category_translations('marques-vetements-femme', 'en', 'Women''s clothing brands');
        PERFORM insert_category_translations('marques-vetements-femme', 'de', 'Marken Damenbekleidung');
        PERFORM insert_category_translations('marques-vetements-femme', 'es', 'Marcas ropa mujer');
        PERFORM insert_category_translations('marques-vetements-femme', 'it', 'Marche abbigliamento donna');

            -- Level 2: zara
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('zara', 'zara', 2, l1_id, 'Zara')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('zara', 'fr', 'Zara');
            PERFORM insert_category_translations('zara', 'ar', 'Zara');
            PERFORM insert_category_translations('zara', 'en', 'Zara');
            PERFORM insert_category_translations('zara', 'de', 'Zara');
            PERFORM insert_category_translations('zara', 'es', 'Zara');
            PERFORM insert_category_translations('zara', 'it', 'Zara');

            -- Level 2: hm
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('hm', 'hm', 2, l1_id, 'H&M')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('hm', 'fr', 'H&M');
            PERFORM insert_category_translations('hm', 'ar', 'H&M');
            PERFORM insert_category_translations('hm', 'en', 'H&M');
            PERFORM insert_category_translations('hm', 'de', 'H&M');
            PERFORM insert_category_translations('hm', 'es', 'H&M');
            PERFORM insert_category_translations('hm', 'it', 'H&M');

            -- Level 2: mango
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mango', 'mango', 2, l1_id, 'Mango')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mango', 'fr', 'Mango');
            PERFORM insert_category_translations('mango', 'ar', 'Mango');
            PERFORM insert_category_translations('mango', 'en', 'Mango');
            PERFORM insert_category_translations('mango', 'de', 'Mango');
            PERFORM insert_category_translations('mango', 'es', 'Mango');
            PERFORM insert_category_translations('mango', 'it', 'Mango');

            -- Level 2: stradivarius
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('stradivarius', 'stradivarius', 2, l1_id, 'Stradivarius')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('stradivarius', 'fr', 'Stradivarius');
            PERFORM insert_category_translations('stradivarius', 'ar', 'Stradivarius');
            PERFORM insert_category_translations('stradivarius', 'en', 'Stradivarius');
            PERFORM insert_category_translations('stradivarius', 'de', 'Stradivarius');
            PERFORM insert_category_translations('stradivarius', 'es', 'Stradivarius');
            PERFORM insert_category_translations('stradivarius', 'it', 'Stradivarius');

            -- Level 2: bershka
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bershka', 'bershka', 2, l1_id, 'Bershka')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bershka', 'fr', 'Bershka');
            PERFORM insert_category_translations('bershka', 'ar', 'Bershka');
            PERFORM insert_category_translations('bershka', 'en', 'Bershka');
            PERFORM insert_category_translations('bershka', 'de', 'Bershka');
            PERFORM insert_category_translations('bershka', 'es', 'Bershka');
            PERFORM insert_category_translations('bershka', 'it', 'Bershka');

            -- Level 2: pull-bear
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pull-bear', 'pull-bear', 2, l1_id, 'Pull&Bear')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pull-bear', 'fr', 'Pull&Bear');
            PERFORM insert_category_translations('pull-bear', 'ar', 'Pull&Bear');
            PERFORM insert_category_translations('pull-bear', 'en', 'Pull&Bear');
            PERFORM insert_category_translations('pull-bear', 'de', 'Pull&Bear');
            PERFORM insert_category_translations('pull-bear', 'es', 'Pull&Bear');
            PERFORM insert_category_translations('pull-bear', 'it', 'Pull&Bear');

            -- Level 2: uniqlo
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('uniqlo', 'uniqlo', 2, l1_id, 'Uniqlo')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('uniqlo', 'fr', 'Uniqlo');
            PERFORM insert_category_translations('uniqlo', 'ar', 'Uniqlo');
            PERFORM insert_category_translations('uniqlo', 'en', 'Uniqlo');
            PERFORM insert_category_translations('uniqlo', 'de', 'Uniqlo');
            PERFORM insert_category_translations('uniqlo', 'es', 'Uniqlo');
            PERFORM insert_category_translations('uniqlo', 'it', 'Uniqlo');

            -- Level 2: guess
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('guess', 'guess', 2, l1_id, 'Guess')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('guess', 'fr', 'Guess');
            PERFORM insert_category_translations('guess', 'ar', 'Guess');
            PERFORM insert_category_translations('guess', 'en', 'Guess');
            PERFORM insert_category_translations('guess', 'de', 'Guess');
            PERFORM insert_category_translations('guess', 'es', 'Guess');
            PERFORM insert_category_translations('guess', 'it', 'Guess');

            -- Level 2: calvin-klein
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('calvin-klein', 'calvin-klein', 2, l1_id, 'Calvin Klein')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('calvin-klein', 'fr', 'Calvin Klein');
            PERFORM insert_category_translations('calvin-klein', 'ar', 'Calvin Klein');
            PERFORM insert_category_translations('calvin-klein', 'en', 'Calvin Klein');
            PERFORM insert_category_translations('calvin-klein', 'de', 'Calvin Klein');
            PERFORM insert_category_translations('calvin-klein', 'es', 'Calvin Klein');
            PERFORM insert_category_translations('calvin-klein', 'it', 'Calvin Klein');

            -- Level 2: tommy-hilfiger
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tommy-hilfiger', 'tommy-hilfiger', 2, l1_id, 'Tommy Hilfiger')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tommy-hilfiger', 'fr', 'Tommy Hilfiger');
            PERFORM insert_category_translations('tommy-hilfiger', 'ar', 'Tommy Hilfiger');
            PERFORM insert_category_translations('tommy-hilfiger', 'en', 'Tommy Hilfiger');
            PERFORM insert_category_translations('tommy-hilfiger', 'de', 'Tommy Hilfiger');
            PERFORM insert_category_translations('tommy-hilfiger', 'es', 'Tommy Hilfiger');
            PERFORM insert_category_translations('tommy-hilfiger', 'it', 'Tommy Hilfiger');

            -- Level 2: lacoste
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lacoste', 'lacoste', 2, l1_id, 'Lacoste')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lacoste', 'fr', 'Lacoste');
            PERFORM insert_category_translations('lacoste', 'ar', 'Lacoste');
            PERFORM insert_category_translations('lacoste', 'en', 'Lacoste');
            PERFORM insert_category_translations('lacoste', 'de', 'Lacoste');
            PERFORM insert_category_translations('lacoste', 'es', 'Lacoste');
            PERFORM insert_category_translations('lacoste', 'it', 'Lacoste');

            -- Level 2: nike
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('nike', 'nike', 2, l1_id, 'Nike')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('nike', 'fr', 'Nike');
            PERFORM insert_category_translations('nike', 'ar', 'Nike');
            PERFORM insert_category_translations('nike', 'en', 'Nike');
            PERFORM insert_category_translations('nike', 'de', 'Nike');
            PERFORM insert_category_translations('nike', 'es', 'Nike');
            PERFORM insert_category_translations('nike', 'it', 'Nike');

            -- Level 2: adidas
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('adidas', 'adidas', 2, l1_id, 'Adidas')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('adidas', 'fr', 'Adidas');
            PERFORM insert_category_translations('adidas', 'ar', 'Adidas');
            PERFORM insert_category_translations('adidas', 'en', 'Adidas');
            PERFORM insert_category_translations('adidas', 'de', 'Adidas');
            PERFORM insert_category_translations('adidas', 'es', 'Adidas');
            PERFORM insert_category_translations('adidas', 'it', 'Adidas');

            -- Level 2: puma
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('puma', 'puma', 2, l1_id, 'Puma')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('puma', 'fr', 'Puma');
            PERFORM insert_category_translations('puma', 'ar', 'Puma');
            PERFORM insert_category_translations('puma', 'en', 'Puma');
            PERFORM insert_category_translations('puma', 'de', 'Puma');
            PERFORM insert_category_translations('puma', 'es', 'Puma');
            PERFORM insert_category_translations('puma', 'it', 'Puma');

        -- Level 1: accessoires-femme
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-femme', 'accessoires-femme', 1, root_id, 'Accessoires Femme')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('accessoires-femme', 'fr', 'Accessoires Femme');
        PERFORM insert_category_translations('accessoires-femme', 'ar', 'إكسسوارات نسائية');
        PERFORM insert_category_translations('accessoires-femme', 'en', 'Women''s Accessories');
        PERFORM insert_category_translations('accessoires-femme', 'de', 'Damen‑Accessoires');
        PERFORM insert_category_translations('accessoires-femme', 'es', 'Accesorios Mujer');
        PERFORM insert_category_translations('accessoires-femme', 'it', 'Accessori Donna');

            -- Level 2: sacs-main
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-main', 'sacs-main', 2, l1_id, 'Sacs à main')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-main', 'fr', 'Sacs à main');
            PERFORM insert_category_translations('sacs-main', 'ar', 'حقائب يد');
            PERFORM insert_category_translations('sacs-main', 'en', 'Handbags');
            PERFORM insert_category_translations('sacs-main', 'de', 'Handtaschen');
            PERFORM insert_category_translations('sacs-main', 'es', 'Bolsos de mano');
            PERFORM insert_category_translations('sacs-main', 'it', 'Borse a mano');

            -- Level 2: sacs-bandouliere
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-bandouliere', 'sacs-bandouliere', 2, l1_id, 'Sacs bandoulière')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-bandouliere', 'fr', 'Sacs bandoulière');
            PERFORM insert_category_translations('sacs-bandouliere', 'ar', 'حقائب كتف');
            PERFORM insert_category_translations('sacs-bandouliere', 'en', 'Crossbody bags');
            PERFORM insert_category_translations('sacs-bandouliere', 'de', 'Umhängetaschen');
            PERFORM insert_category_translations('sacs-bandouliere', 'es', 'Bolsos bandolera');
            PERFORM insert_category_translations('sacs-bandouliere', 'it', 'Borse a tracolla');

            -- Level 2: pochettes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pochettes', 'pochettes', 2, l1_id, 'Pochettes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pochettes', 'fr', 'Pochettes');
            PERFORM insert_category_translations('pochettes', 'ar', 'كلتش');
            PERFORM insert_category_translations('pochettes', 'en', 'Clutches');
            PERFORM insert_category_translations('pochettes', 'de', 'Clutches');
            PERFORM insert_category_translations('pochettes', 'es', 'Clutches');
            PERFORM insert_category_translations('pochettes', 'it', 'Pochette');

            -- Level 2: porte-monnaie
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('porte-monnaie', 'porte-monnaie', 2, l1_id, 'Porte‑monnaie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('porte-monnaie', 'fr', 'Porte‑monnaie');
            PERFORM insert_category_translations('porte-monnaie', 'ar', 'محافظ');
            PERFORM insert_category_translations('porte-monnaie', 'en', 'Wallets');
            PERFORM insert_category_translations('porte-monnaie', 'de', 'Portemonnaies');
            PERFORM insert_category_translations('porte-monnaie', 'es', 'Monederos');
            PERFORM insert_category_translations('porte-monnaie', 'it', 'Portamonete');

            -- Level 2: bijoux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bijoux', 'bijoux', 2, l1_id, 'Bijoux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bijoux', 'fr', 'Bijoux');
            PERFORM insert_category_translations('bijoux', 'ar', 'مجوهرات');
            PERFORM insert_category_translations('bijoux', 'en', 'Jewelry');
            PERFORM insert_category_translations('bijoux', 'de', 'Schmuck');
            PERFORM insert_category_translations('bijoux', 'es', 'Joyas');
            PERFORM insert_category_translations('bijoux', 'it', 'Gioielli');

            -- Level 2: ceintures
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ceintures', 'ceintures', 2, l1_id, 'Ceintures')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ceintures', 'fr', 'Ceintures');
            PERFORM insert_category_translations('ceintures', 'ar', 'أحزمة');
            PERFORM insert_category_translations('ceintures', 'en', 'Belts');
            PERFORM insert_category_translations('ceintures', 'de', 'Gürtel');
            PERFORM insert_category_translations('ceintures', 'es', 'Cinturones');
            PERFORM insert_category_translations('ceintures', 'it', 'Cinture');

            -- Level 2: foulards-echarpes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('foulards-echarpes', 'foulards-echarpes', 2, l1_id, 'Foulards & écharpes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('foulards-echarpes', 'fr', 'Foulards & écharpes');
            PERFORM insert_category_translations('foulards-echarpes', 'ar', 'أوشحة');
            PERFORM insert_category_translations('foulards-echarpes', 'en', 'Scarves');
            PERFORM insert_category_translations('foulards-echarpes', 'de', 'Schals & Tücher');
            PERFORM insert_category_translations('foulards-echarpes', 'es', 'Pañuelos & bufandas');
            PERFORM insert_category_translations('foulards-echarpes', 'it', 'Foulard & sciarpe');

            -- Level 2: accessoires-cheveux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-cheveux', 'accessoires-cheveux', 2, l1_id, 'Accessoires cheveux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('accessoires-cheveux', 'fr', 'Accessoires cheveux');
            PERFORM insert_category_translations('accessoires-cheveux', 'ar', 'إكسسوارات شعر');
            PERFORM insert_category_translations('accessoires-cheveux', 'en', 'Hair accessories');
            PERFORM insert_category_translations('accessoires-cheveux', 'de', 'Haar‑Accessoires');
            PERFORM insert_category_translations('accessoires-cheveux', 'es', 'Accesorios para el cabello');
            PERFORM insert_category_translations('accessoires-cheveux', 'it', 'Accessori capelli');

            -- Level 2: lunettes-soleil-femme
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lunettes-soleil-femme', 'lunettes-soleil-femme', 2, l1_id, 'Lunettes de soleil')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lunettes-soleil-femme', 'fr', 'Lunettes de soleil');
            PERFORM insert_category_translations('lunettes-soleil-femme', 'ar', 'نظارات شمس');
            PERFORM insert_category_translations('lunettes-soleil-femme', 'en', 'Sunglasses');
            PERFORM insert_category_translations('lunettes-soleil-femme', 'de', 'Sonnenbrillen');
            PERFORM insert_category_translations('lunettes-soleil-femme', 'es', 'Gafas de sol');
            PERFORM insert_category_translations('lunettes-soleil-femme', 'it', 'Occhiali da sole');

            -- Level 2: montres-femme
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('montres-femme', 'montres-femme', 2, l1_id, 'Montres')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('montres-femme', 'fr', 'Montres');
            PERFORM insert_category_translations('montres-femme', 'ar', 'ساعات');
            PERFORM insert_category_translations('montres-femme', 'en', 'Watches');
            PERFORM insert_category_translations('montres-femme', 'de', 'Uhren');
            PERFORM insert_category_translations('montres-femme', 'es', 'Relojes');
            PERFORM insert_category_translations('montres-femme', 'it', 'Orologi');

        -- Level 1: sous-vetements-homme
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sous-vetements-homme', 'sous-vetements-homme', 1, root_id, 'Sous‑vêtements Homme')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('sous-vetements-homme', 'fr', 'Sous‑vêtements Homme');
        PERFORM insert_category_translations('sous-vetements-homme', 'ar', 'ملابس داخلية رجالية');
        PERFORM insert_category_translations('sous-vetements-homme', 'en', 'Men''s Underwear');
        PERFORM insert_category_translations('sous-vetements-homme', 'de', 'Herrenunterwäsche');
        PERFORM insert_category_translations('sous-vetements-homme', 'es', 'Ropa interior Hombre');
        PERFORM insert_category_translations('sous-vetements-homme', 'it', 'Intimo Uomo');

            -- Level 2: boxers
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('boxers', 'boxers', 2, l1_id, 'Boxers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('boxers', 'fr', 'Boxers');
            PERFORM insert_category_translations('boxers', 'ar', 'بوكسر');
            PERFORM insert_category_translations('boxers', 'en', 'Boxers');
            PERFORM insert_category_translations('boxers', 'de', 'Boxershorts');
            PERFORM insert_category_translations('boxers', 'es', 'Bóxers');
            PERFORM insert_category_translations('boxers', 'it', 'Boxer');

                -- Level 3: coton
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('coton', 'coton', 3, l2_id, 'Coton')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('coton', 'fr', 'Coton');
                PERFORM insert_category_translations('coton', 'ar', 'قطن');
                PERFORM insert_category_translations('coton', 'en', 'Cotton');
                PERFORM insert_category_translations('coton', 'de', 'Baumwolle');
                PERFORM insert_category_translations('coton', 'es', 'Algodón');
                PERFORM insert_category_translations('coton', 'it', 'Cotone');

                -- Level 3: microfibre
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('microfibre', 'microfibre', 3, l2_id, 'Microfibre')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('microfibre', 'fr', 'Microfibre');
                PERFORM insert_category_translations('microfibre', 'ar', 'ميكروفايبر');
                PERFORM insert_category_translations('microfibre', 'en', 'Microfiber');
                PERFORM insert_category_translations('microfibre', 'de', 'Mikrofaser');
                PERFORM insert_category_translations('microfibre', 'es', 'Microfibra');
                PERFORM insert_category_translations('microfibre', 'it', 'Microfibra');

                -- Level 3: sport
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sport', 'sport', 3, l2_id, 'Sport')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('sport', 'fr', 'Sport');
                PERFORM insert_category_translations('sport', 'ar', 'رياضي');
                PERFORM insert_category_translations('sport', 'en', 'Sports');
                PERFORM insert_category_translations('sport', 'de', 'Sport');
                PERFORM insert_category_translations('sport', 'es', 'Deporte');
                PERFORM insert_category_translations('sport', 'it', 'Sport');

            -- Level 2: slips
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('slips', 'slips', 2, l1_id, 'Slips')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('slips', 'fr', 'Slips');
            PERFORM insert_category_translations('slips', 'ar', 'سليب');
            PERFORM insert_category_translations('slips', 'en', 'Briefs');
            PERFORM insert_category_translations('slips', 'de', 'Slips');
            PERFORM insert_category_translations('slips', 'es', 'Slips');
            PERFORM insert_category_translations('slips', 'it', 'Slip');

                -- Level 3: classiques
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('classiques', 'classiques', 3, l2_id, 'Classiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('classiques', 'fr', 'Classiques');
                PERFORM insert_category_translations('classiques', 'ar', 'كلاسيكية');
                PERFORM insert_category_translations('classiques', 'en', 'Classic');
                PERFORM insert_category_translations('classiques', 'de', 'Klassisch');
                PERFORM insert_category_translations('classiques', 'es', 'Clásicas');
                PERFORM insert_category_translations('classiques', 'it', 'Classici');

                -- Level 3: taille-haute
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('taille-haute', 'taille-haute', 3, l2_id, 'Taille haute')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('taille-haute', 'fr', 'Taille haute');
                PERFORM insert_category_translations('taille-haute', 'ar', 'خصر عالٍ');
                PERFORM insert_category_translations('taille-haute', 'en', 'High waist');
                PERFORM insert_category_translations('taille-haute', 'de', 'Hoher Bund');
                PERFORM insert_category_translations('taille-haute', 'es', 'Talle alto');
                PERFORM insert_category_translations('taille-haute', 'it', 'Vita alta');

                -- Level 3: echancres
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('echancres', 'echancres', 3, l2_id, 'Échancrés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('echancres', 'fr', 'Échancrés');
                PERFORM insert_category_translations('echancres', 'ar', 'قصة عالية');
                PERFORM insert_category_translations('echancres', 'en', 'High‑cut');
                PERFORM insert_category_translations('echancres', 'de', 'Hoher Beinausschnitt');
                PERFORM insert_category_translations('echancres', 'es', 'Corte alto');
                PERFORM insert_category_translations('echancres', 'it', 'Gamba alta');

            -- Level 2: calecons
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('calecons', 'calecons', 2, l1_id, 'Caleçons')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('calecons', 'fr', 'Caleçons');
            PERFORM insert_category_translations('calecons', 'ar', 'سراويل داخلية');
            PERFORM insert_category_translations('calecons', 'en', 'Boxer shorts');
            PERFORM insert_category_translations('calecons', 'de', 'Webboxers');
            PERFORM insert_category_translations('calecons', 'es', 'Calzoncillos');
            PERFORM insert_category_translations('calecons', 'it', 'Calzoncini');

            -- Level 2: debardeurs-sous-maillots-thermiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('debardeurs-sous-maillots-thermiques', 'debardeurs-sous-maillots-thermiques', 2, l1_id, 'Débardeurs & sous‑maillots thermiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('debardeurs-sous-maillots-thermiques', 'fr', 'Débardeurs & sous‑maillots thermiques');
            PERFORM insert_category_translations('debardeurs-sous-maillots-thermiques', 'ar', 'قمصان داخلية حرارية');
            PERFORM insert_category_translations('debardeurs-sous-maillots-thermiques', 'en', 'Thermal vests & undershirts');
            PERFORM insert_category_translations('debardeurs-sous-maillots-thermiques', 'de', 'Thermo‑Unterhemden');
            PERFORM insert_category_translations('debardeurs-sous-maillots-thermiques', 'es', 'Camisetas térmicas');
            PERFORM insert_category_translations('debardeurs-sous-maillots-thermiques', 'it', 'Canotte & sotto‑maglie termiche');

        -- Level 1: lingerie-femme
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lingerie-femme', 'lingerie-femme', 1, root_id, 'Lingerie Femme')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('lingerie-femme', 'fr', 'Lingerie Femme');
        PERFORM insert_category_translations('lingerie-femme', 'ar', 'لانجري نسائي');
        PERFORM insert_category_translations('lingerie-femme', 'en', 'Women''s Lingerie');
        PERFORM insert_category_translations('lingerie-femme', 'de', 'Damenunterwäsche');
        PERFORM insert_category_translations('lingerie-femme', 'es', 'Lencería Mujer');
        PERFORM insert_category_translations('lingerie-femme', 'it', 'Lingerie Donna');

            -- Level 2: soutiens-gorge
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soutiens-gorge', 'soutiens-gorge', 2, l1_id, 'Soutiens‑gorge')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('soutiens-gorge', 'fr', 'Soutiens‑gorge');
            PERFORM insert_category_translations('soutiens-gorge', 'ar', 'حمالات صدر');
            PERFORM insert_category_translations('soutiens-gorge', 'en', 'Bras');
            PERFORM insert_category_translations('soutiens-gorge', 'de', 'BHs');
            PERFORM insert_category_translations('soutiens-gorge', 'es', 'Sujetadores');
            PERFORM insert_category_translations('soutiens-gorge', 'it', 'Reggiseni');

                -- Level 3: push-up
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('push-up', 'push-up', 3, l2_id, 'Push‑up')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('push-up', 'fr', 'Push‑up');
                PERFORM insert_category_translations('push-up', 'ar', 'دفع للأعلى');
                PERFORM insert_category_translations('push-up', 'en', 'Push‑up');
                PERFORM insert_category_translations('push-up', 'de', 'Push‑Up');
                PERFORM insert_category_translations('push-up', 'es', 'Push‑up');
                PERFORM insert_category_translations('push-up', 'it', 'Push‑up');

                -- Level 3: maintien
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('maintien', 'maintien', 3, l2_id, 'Maintien')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('maintien', 'fr', 'Maintien');
                PERFORM insert_category_translations('maintien', 'ar', 'داعم');
                PERFORM insert_category_translations('maintien', 'en', 'Support');
                PERFORM insert_category_translations('maintien', 'de', 'Stützend');
                PERFORM insert_category_translations('maintien', 'es', 'Soporte');
                PERFORM insert_category_translations('maintien', 'it', 'Sostegno');

                -- Level 3: balconnet
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('balconnet', 'balconnet', 3, l2_id, 'Balconnet')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('balconnet', 'fr', 'Balconnet');
                PERFORM insert_category_translations('balconnet', 'ar', 'بالكونيت');
                PERFORM insert_category_translations('balconnet', 'en', 'Balconette');
                PERFORM insert_category_translations('balconnet', 'de', 'Balconette');
                PERFORM insert_category_translations('balconnet', 'es', 'Balconette');
                PERFORM insert_category_translations('balconnet', 'it', 'Balconette');

                -- Level 3: sans-armatures
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sans-armatures', 'sans-armatures', 3, l2_id, 'Sans armatures')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('sans-armatures', 'fr', 'Sans armatures');
                PERFORM insert_category_translations('sans-armatures', 'ar', 'بدون سلك');
                PERFORM insert_category_translations('sans-armatures', 'en', 'Wireless');
                PERFORM insert_category_translations('sans-armatures', 'de', 'Ohne Bügel');
                PERFORM insert_category_translations('sans-armatures', 'es', 'Sin aros');
                PERFORM insert_category_translations('sans-armatures', 'it', 'Senza ferretto');

                -- Level 3: sport
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sport', 'sport', 3, l2_id, 'Sport')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('sport', 'fr', 'Sport');
                PERFORM insert_category_translations('sport', 'ar', 'رياضي');
                PERFORM insert_category_translations('sport', 'en', 'Sports');
                PERFORM insert_category_translations('sport', 'de', 'Sport');
                PERFORM insert_category_translations('sport', 'es', 'Deporte');
                PERFORM insert_category_translations('sport', 'it', 'Sport');

            -- Level 2: culottes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('culottes', 'culottes', 2, l1_id, 'Culottes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('culottes', 'fr', 'Culottes');
            PERFORM insert_category_translations('culottes', 'ar', 'سراويل داخلية نسائية');
            PERFORM insert_category_translations('culottes', 'en', 'Panties');
            PERFORM insert_category_translations('culottes', 'de', 'Pantys');
            PERFORM insert_category_translations('culottes', 'es', 'Braguitas');
            PERFORM insert_category_translations('culottes', 'it', 'Slip donna');

                -- Level 3: classiques
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('classiques', 'classiques', 3, l2_id, 'Classiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('classiques', 'fr', 'Classiques');
                PERFORM insert_category_translations('classiques', 'ar', 'كلاسيكية');
                PERFORM insert_category_translations('classiques', 'en', 'Classic');
                PERFORM insert_category_translations('classiques', 'de', 'Klassisch');
                PERFORM insert_category_translations('classiques', 'es', 'Clásicas');
                PERFORM insert_category_translations('classiques', 'it', 'Classici');

                -- Level 3: tailles-hautes
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tailles-hautes', 'tailles-hautes', 3, l2_id, 'Tailles hautes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('tailles-hautes', 'fr', 'Tailles hautes');
                PERFORM insert_category_translations('tailles-hautes', 'ar', 'خصر عالٍ');
                PERFORM insert_category_translations('tailles-hautes', 'en', 'High waist');
                PERFORM insert_category_translations('tailles-hautes', 'de', 'Hoher Bund');
                PERFORM insert_category_translations('tailles-hautes', 'es', 'Talle alto');
                PERFORM insert_category_translations('tailles-hautes', 'it', 'Vita alta');

                -- Level 3: tanga
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tanga', 'tanga', 3, l2_id, 'Tanga')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('tanga', 'fr', 'Tanga');
                PERFORM insert_category_translations('tanga', 'ar', 'تانغا');
                PERFORM insert_category_translations('tanga', 'en', 'Thong');
                PERFORM insert_category_translations('tanga', 'de', 'Tanga');
                PERFORM insert_category_translations('tanga', 'es', 'Tanga');
                PERFORM insert_category_translations('tanga', 'it', 'Tanga');

                -- Level 3: string
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('string', 'string', 3, l2_id, 'String')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('string', 'fr', 'String');
                PERFORM insert_category_translations('string', 'ar', 'سترينغ');
                PERFORM insert_category_translations('string', 'en', 'G‑string');
                PERFORM insert_category_translations('string', 'de', 'String');
                PERFORM insert_category_translations('string', 'es', 'String');
                PERFORM insert_category_translations('string', 'it', 'Perizoma');

            -- Level 2: ensembles-lingerie
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ensembles-lingerie', 'ensembles-lingerie', 2, l1_id, 'Ensembles lingerie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ensembles-lingerie', 'fr', 'Ensembles lingerie');
            PERFORM insert_category_translations('ensembles-lingerie', 'ar', 'طقم لانجري');
            PERFORM insert_category_translations('ensembles-lingerie', 'en', 'Lingerie sets');
            PERFORM insert_category_translations('ensembles-lingerie', 'de', 'Wäsche‑Sets');
            PERFORM insert_category_translations('ensembles-lingerie', 'es', 'Conjuntos de lencería');
            PERFORM insert_category_translations('ensembles-lingerie', 'it', 'Completi lingerie');

            -- Level 2: body-combinaisons
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('body-combinaisons', 'body-combinaisons', 2, l1_id, 'Body & combinaisons')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('body-combinaisons', 'fr', 'Body & combinaisons');
            PERFORM insert_category_translations('body-combinaisons', 'ar', 'بودي & جمبسوت');
            PERFORM insert_category_translations('body-combinaisons', 'en', 'Bodies & jumpsuits');
            PERFORM insert_category_translations('body-combinaisons', 'de', 'Bodies & Overalls');
            PERFORM insert_category_translations('body-combinaisons', 'es', 'Bodies & monos');
            PERFORM insert_category_translations('body-combinaisons', 'it', 'Body & tute');

            -- Level 2: guepieres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('guepieres', 'guepieres', 2, l1_id, 'Guêpières')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('guepieres', 'fr', 'Guêpières');
            PERFORM insert_category_translations('guepieres', 'ar', 'كورسيه');
            PERFORM insert_category_translations('guepieres', 'en', 'Bustiers');
            PERFORM insert_category_translations('guepieres', 'de', 'Bustiers');
            PERFORM insert_category_translations('guepieres', 'es', 'Corsés');
            PERFORM insert_category_translations('guepieres', 'it', 'Bustier');

            -- Level 2: lingerie-sculptante
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lingerie-sculptante', 'lingerie-sculptante', 2, l1_id, 'Lingerie sculptante')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lingerie-sculptante', 'fr', 'Lingerie sculptante');
            PERFORM insert_category_translations('lingerie-sculptante', 'ar', 'لانجري مشكل');
            PERFORM insert_category_translations('lingerie-sculptante', 'en', 'Shapewear');
            PERFORM insert_category_translations('lingerie-sculptante', 'de', 'Shapewear');
            PERFORM insert_category_translations('lingerie-sculptante', 'es', 'Modeladora');
            PERFORM insert_category_translations('lingerie-sculptante', 'it', 'Shapewear');

            -- Level 2: lingerie-sexy-dentelle
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lingerie-sexy-dentelle', 'lingerie-sexy-dentelle', 2, l1_id, 'Lingerie sexy & dentelle')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lingerie-sexy-dentelle', 'fr', 'Lingerie sexy & dentelle');
            PERFORM insert_category_translations('lingerie-sexy-dentelle', 'ar', 'لانجري دانتيل & مثير');
            PERFORM insert_category_translations('lingerie-sexy-dentelle', 'en', 'Sexy & lace lingerie');
            PERFORM insert_category_translations('lingerie-sexy-dentelle', 'de', 'Sexy & Spitzenwäsche');
            PERFORM insert_category_translations('lingerie-sexy-dentelle', 'es', 'Sexy & encaje');
            PERFORM insert_category_translations('lingerie-sexy-dentelle', 'it', 'Sexy & pizzo');

        -- Level 1: nuit-interieur
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('nuit-interieur', 'nuit-interieur', 1, root_id, 'Nuit & intérieur')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('nuit-interieur', 'fr', 'Nuit & intérieur');
        PERFORM insert_category_translations('nuit-interieur', 'ar', 'نوم & منزلي');
        PERFORM insert_category_translations('nuit-interieur', 'en', 'Nightwear & Homewear');
        PERFORM insert_category_translations('nuit-interieur', 'de', 'Nachtwäsche & Homewear');
        PERFORM insert_category_translations('nuit-interieur', 'es', 'Noche & Interior');
        PERFORM insert_category_translations('nuit-interieur', 'it', 'Notte & Casa');

            -- Level 2: pyjamas-homme-femme
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pyjamas-homme-femme', 'pyjamas-homme-femme', 2, l1_id, 'Pyjamas homme & femme')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pyjamas-homme-femme', 'fr', 'Pyjamas homme & femme');
            PERFORM insert_category_translations('pyjamas-homme-femme', 'ar', 'بيجامات للرجال والنساء');
            PERFORM insert_category_translations('pyjamas-homme-femme', 'en', 'Men''s & women''s pajamas');
            PERFORM insert_category_translations('pyjamas-homme-femme', 'de', 'Pyjamas für Damen & Herren');
            PERFORM insert_category_translations('pyjamas-homme-femme', 'es', 'Pijamas hombre & mujer');
            PERFORM insert_category_translations('pyjamas-homme-femme', 'it', 'Pigiami uomo & donna');

            -- Level 2: nuisettes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('nuisettes', 'nuisettes', 2, l1_id, 'Nuisettes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('nuisettes', 'fr', 'Nuisettes');
            PERFORM insert_category_translations('nuisettes', 'ar', 'قمصان نوم');
            PERFORM insert_category_translations('nuisettes', 'en', 'Nightdresses');
            PERFORM insert_category_translations('nuisettes', 'de', 'Negligés');
            PERFORM insert_category_translations('nuisettes', 'es', 'Camisones');
            PERFORM insert_category_translations('nuisettes', 'it', 'Camicie da notte');

            -- Level 2: deshabilles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('deshabilles', 'deshabilles', 2, l1_id, 'Déshabillés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('deshabilles', 'fr', 'Déshabillés');
            PERFORM insert_category_translations('deshabilles', 'ar', 'رداءات');
            PERFORM insert_category_translations('deshabilles', 'en', 'Robes');
            PERFORM insert_category_translations('deshabilles', 'de', 'Morgenmäntel');
            PERFORM insert_category_translations('deshabilles', 'es', 'Batas');
            PERFORM insert_category_translations('deshabilles', 'it', 'Vestaglie');

            -- Level 2: peignoirs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('peignoirs', 'peignoirs', 2, l1_id, 'Peignoirs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('peignoirs', 'fr', 'Peignoirs');
            PERFORM insert_category_translations('peignoirs', 'ar', 'أردية حمام');
            PERFORM insert_category_translations('peignoirs', 'en', 'Bathrobes');
            PERFORM insert_category_translations('peignoirs', 'de', 'Bademäntel');
            PERFORM insert_category_translations('peignoirs', 'es', 'Albornoces');
            PERFORM insert_category_translations('peignoirs', 'it', 'Accappatoi');

            -- Level 2: robes-de-chambre
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('robes-de-chambre', 'robes-de-chambre', 2, l1_id, 'Robes de chambre')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('robes-de-chambre', 'fr', 'Robes de chambre');
            PERFORM insert_category_translations('robes-de-chambre', 'ar', 'أردية منزل');
            PERFORM insert_category_translations('robes-de-chambre', 'en', 'Dressing gowns');
            PERFORM insert_category_translations('robes-de-chambre', 'de', 'Hausmäntel');
            PERFORM insert_category_translations('robes-de-chambre', 'es', 'Batas de casa');
            PERFORM insert_category_translations('robes-de-chambre', 'it', 'Vestaglie');

            -- Level 2: homewear
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('homewear', 'homewear', 2, l1_id, 'Homewear')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('homewear', 'fr', 'Homewear');
            PERFORM insert_category_translations('homewear', 'ar', 'ملابس منزلية');
            PERFORM insert_category_translations('homewear', 'en', 'Homewear');
            PERFORM insert_category_translations('homewear', 'de', 'Homewear');
            PERFORM insert_category_translations('homewear', 'es', 'Homewear');
            PERFORM insert_category_translations('homewear', 'it', 'Homewear');

        -- Level 1: sous-vetements-techniques
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sous-vetements-techniques', 'sous-vetements-techniques', 1, root_id, 'Sous‑vêtements techniques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('sous-vetements-techniques', 'fr', 'Sous‑vêtements techniques');
        PERFORM insert_category_translations('sous-vetements-techniques', 'ar', 'ملابس داخلية تقنية');
        PERFORM insert_category_translations('sous-vetements-techniques', 'en', 'Technical Underwear');
        PERFORM insert_category_translations('sous-vetements-techniques', 'de', 'Technische Unterwäsche');
        PERFORM insert_category_translations('sous-vetements-techniques', 'es', 'Ropa interior técnica');
        PERFORM insert_category_translations('sous-vetements-techniques', 'it', 'Intimo tecnico');

            -- Level 2: sous-vetements-thermiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sous-vetements-thermiques', 'sous-vetements-thermiques', 2, l1_id, 'Sous‑vêtements thermiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sous-vetements-thermiques', 'fr', 'Sous‑vêtements thermiques');
            PERFORM insert_category_translations('sous-vetements-thermiques', 'ar', 'حرارية');
            PERFORM insert_category_translations('sous-vetements-thermiques', 'en', 'Thermal underwear');
            PERFORM insert_category_translations('sous-vetements-thermiques', 'de', 'Thermounterwäsche');
            PERFORM insert_category_translations('sous-vetements-thermiques', 'es', 'Térmica');
            PERFORM insert_category_translations('sous-vetements-thermiques', 'it', 'Termico');

            -- Level 2: sous-couches-sport
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sous-couches-sport', 'sous-couches-sport', 2, l1_id, 'Sous‑couches sport')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sous-couches-sport', 'fr', 'Sous‑couches sport');
            PERFORM insert_category_translations('sous-couches-sport', 'ar', 'طبقات أساسية رياضية');
            PERFORM insert_category_translations('sous-couches-sport', 'en', 'Sports base layers');
            PERFORM insert_category_translations('sous-couches-sport', 'de', 'Sport‑Baselayer');
            PERFORM insert_category_translations('sous-couches-sport', 'es', 'Capas base deportivas');
            PERFORM insert_category_translations('sous-couches-sport', 'it', 'Baselayer sport');

            -- Level 2: chaussettes-techniques-compression
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chaussettes-techniques-compression', 'chaussettes-techniques-compression', 2, l1_id, 'Chaussettes techniques & compression')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chaussettes-techniques-compression', 'fr', 'Chaussettes techniques & compression');
            PERFORM insert_category_translations('chaussettes-techniques-compression', 'ar', 'جوارب تقنية & ضغط');
            PERFORM insert_category_translations('chaussettes-techniques-compression', 'en', 'Technical & compression socks');
            PERFORM insert_category_translations('chaussettes-techniques-compression', 'de', 'Technische & Kompressionssocken');
            PERFORM insert_category_translations('chaussettes-techniques-compression', 'es', 'Calcetines técnicos & compresión');
            PERFORM insert_category_translations('chaussettes-techniques-compression', 'it', 'Calze tecniche & compressione');

        -- Level 1: chaussures-homme-femme
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chaussures-homme-femme', 'chaussures-homme-femme', 1, root_id, 'Chaussures (Homme & Femme)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('chaussures-homme-femme', 'fr', 'Chaussures (Homme & Femme)');
        PERFORM insert_category_translations('chaussures-homme-femme', 'ar', 'أحذية (رجال & نساء)');
        PERFORM insert_category_translations('chaussures-homme-femme', 'en', 'Shoes (Men & Women)');
        PERFORM insert_category_translations('chaussures-homme-femme', 'de', 'Schuhe (Damen & Herren)');
        PERFORM insert_category_translations('chaussures-homme-femme', 'es', 'Zapatos (Hombre & Mujer)');
        PERFORM insert_category_translations('chaussures-homme-femme', 'it', 'Scarpe (Uomo & Donna)');

            -- Level 2: chaussures-habillees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chaussures-habillees', 'chaussures-habillees', 2, l1_id, 'Chaussures habillées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chaussures-habillees', 'fr', 'Chaussures habillées');
            PERFORM insert_category_translations('chaussures-habillees', 'ar', 'أحذية رسمية');
            PERFORM insert_category_translations('chaussures-habillees', 'en', 'Dress shoes');
            PERFORM insert_category_translations('chaussures-habillees', 'de', 'Elegante Schuhe');
            PERFORM insert_category_translations('chaussures-habillees', 'es', 'Zapatos elegantes');
            PERFORM insert_category_translations('chaussures-habillees', 'it', 'Eleganti');

            -- Level 2: mocassins
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mocassins', 'mocassins', 2, l1_id, 'Mocassins')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mocassins', 'fr', 'Mocassins');
            PERFORM insert_category_translations('mocassins', 'ar', 'لوفر');
            PERFORM insert_category_translations('mocassins', 'en', 'Loafers');
            PERFORM insert_category_translations('mocassins', 'de', 'Loafer');
            PERFORM insert_category_translations('mocassins', 'es', 'Mocasines');
            PERFORM insert_category_translations('mocassins', 'it', 'Mocassini');

            -- Level 2: chaussures-de-ville
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chaussures-de-ville', 'chaussures-de-ville', 2, l1_id, 'Chaussures de ville')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chaussures-de-ville', 'fr', 'Chaussures de ville');
            PERFORM insert_category_translations('chaussures-de-ville', 'ar', 'أحذية مدينة');
            PERFORM insert_category_translations('chaussures-de-ville', 'en', 'City shoes');
            PERFORM insert_category_translations('chaussures-de-ville', 'de', 'Stadtschuhe');
            PERFORM insert_category_translations('chaussures-de-ville', 'es', 'Zapatos de ciudad');
            PERFORM insert_category_translations('chaussures-de-ville', 'it', 'Scarpe cittadine');

            -- Level 2: baskets
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('baskets', 'baskets', 2, l1_id, 'Baskets')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('baskets', 'fr', 'Baskets');
            PERFORM insert_category_translations('baskets', 'ar', 'أحذية رياضية');
            PERFORM insert_category_translations('baskets', 'en', 'Sneakers');
            PERFORM insert_category_translations('baskets', 'de', 'Sneaker');
            PERFORM insert_category_translations('baskets', 'es', 'Zapatillas');
            PERFORM insert_category_translations('baskets', 'it', 'Sneakers');

                -- Level 3: mode
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mode', 'mode', 3, l2_id, 'Mode')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('mode', 'fr', 'Mode');
                PERFORM insert_category_translations('mode', 'ar', 'ستايل');
                PERFORM insert_category_translations('mode', 'en', 'Lifestyle');
                PERFORM insert_category_translations('mode', 'de', 'Lifestyle');
                PERFORM insert_category_translations('mode', 'es', 'Lifestyle');
                PERFORM insert_category_translations('mode', 'it', 'Lifestyle');

                -- Level 3: running
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('running', 'running', 3, l2_id, 'Running')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('running', 'fr', 'Running');
                PERFORM insert_category_translations('running', 'ar', 'جري');
                PERFORM insert_category_translations('running', 'en', 'Running');
                PERFORM insert_category_translations('running', 'de', 'Running');
                PERFORM insert_category_translations('running', 'es', 'Running');
                PERFORM insert_category_translations('running', 'it', 'Running');

                -- Level 3: training
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('training', 'training', 3, l2_id, 'Training')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('training', 'fr', 'Training');
                PERFORM insert_category_translations('training', 'ar', 'تدريب');
                PERFORM insert_category_translations('training', 'en', 'Training');
                PERFORM insert_category_translations('training', 'de', 'Training');
                PERFORM insert_category_translations('training', 'es', 'Training');
                PERFORM insert_category_translations('training', 'it', 'Training');

            -- Level 2: sandales-tongs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sandales-tongs', 'sandales-tongs', 2, l1_id, 'Sandales & tongs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sandales-tongs', 'fr', 'Sandales & tongs');
            PERFORM insert_category_translations('sandales-tongs', 'ar', 'صنادل & شباشب');
            PERFORM insert_category_translations('sandales-tongs', 'en', 'Sandals & flip‑flops');
            PERFORM insert_category_translations('sandales-tongs', 'de', 'Sandalen & Flip‑Flops');
            PERFORM insert_category_translations('sandales-tongs', 'es', 'Sandalias & chanclas');
            PERFORM insert_category_translations('sandales-tongs', 'it', 'Sandali & infradito');

            -- Level 2: bottes-bottines
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bottes-bottines', 'bottes-bottines', 2, l1_id, 'Bottes & bottines')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bottes-bottines', 'fr', 'Bottes & bottines');
            PERFORM insert_category_translations('bottes-bottines', 'ar', 'أحذية طويلة & بوت قصير');
            PERFORM insert_category_translations('bottes-bottines', 'en', 'Boots & ankle boots');
            PERFORM insert_category_translations('bottes-bottines', 'de', 'Stiefel & Stiefeletten');
            PERFORM insert_category_translations('bottes-bottines', 'es', 'Botas & botines');
            PERFORM insert_category_translations('bottes-bottines', 'it', 'Stivali & tronchetti');

            -- Level 2: escarpins
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('escarpins', 'escarpins', 2, l1_id, 'Escarpins')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('escarpins', 'fr', 'Escarpins');
            PERFORM insert_category_translations('escarpins', 'ar', 'كعب عالٍ');
            PERFORM insert_category_translations('escarpins', 'en', 'Pumps');
            PERFORM insert_category_translations('escarpins', 'de', 'Pumps');
            PERFORM insert_category_translations('escarpins', 'es', 'Escarpines');
            PERFORM insert_category_translations('escarpins', 'it', 'Décolleté');

            -- Level 2: ballerines
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ballerines', 'ballerines', 2, l1_id, 'Ballerines')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ballerines', 'fr', 'Ballerines');
            PERFORM insert_category_translations('ballerines', 'ar', 'باليرينا');
            PERFORM insert_category_translations('ballerines', 'en', 'Ballet flats');
            PERFORM insert_category_translations('ballerines', 'de', 'Ballerinas');
            PERFORM insert_category_translations('ballerines', 'es', 'Bailarinas');
            PERFORM insert_category_translations('ballerines', 'it', 'Ballerine');

            -- Level 2: chaussures-de-sport
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chaussures-de-sport', 'chaussures-de-sport', 2, l1_id, 'Chaussures de sport')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chaussures-de-sport', 'fr', 'Chaussures de sport');
            PERFORM insert_category_translations('chaussures-de-sport', 'ar', 'أحذية رياضية');
            PERFORM insert_category_translations('chaussures-de-sport', 'en', 'Sports shoes');
            PERFORM insert_category_translations('chaussures-de-sport', 'de', 'Sportschuhe');
            PERFORM insert_category_translations('chaussures-de-sport', 'es', 'Calzado deportivo');
            PERFORM insert_category_translations('chaussures-de-sport', 'it', 'Scarpe sportive');

            -- Level 2: chaussures-de-travail-securite
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chaussures-de-travail-securite', 'chaussures-de-travail-securite', 2, l1_id, 'Chaussures de travail & sécurité')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chaussures-de-travail-securite', 'fr', 'Chaussures de travail & sécurité');
            PERFORM insert_category_translations('chaussures-de-travail-securite', 'ar', 'أحذية عمل & أمان');
            PERFORM insert_category_translations('chaussures-de-travail-securite', 'en', 'Work & safety shoes');
            PERFORM insert_category_translations('chaussures-de-travail-securite', 'de', 'Arbeits‑ & Sicherheitsschuhe');
            PERFORM insert_category_translations('chaussures-de-travail-securite', 'es', 'Zapatos de trabajo y seguridad');
            PERFORM insert_category_translations('chaussures-de-travail-securite', 'it', 'Lavoro & sicurezza');

            -- Level 2: chaussures-orthopediques-femme
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chaussures-orthopediques-femme', 'chaussures-orthopediques-femme', 2, l1_id, 'Chaussures orthopédiques femme')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chaussures-orthopediques-femme', 'fr', 'Chaussures orthopédiques femme');
            PERFORM insert_category_translations('chaussures-orthopediques-femme', 'ar', 'أحذية نسائية طبية');
            PERFORM insert_category_translations('chaussures-orthopediques-femme', 'en', 'Women''s orthopedic shoes');
            PERFORM insert_category_translations('chaussures-orthopediques-femme', 'de', 'Orthopädische Damenschuhe');
            PERFORM insert_category_translations('chaussures-orthopediques-femme', 'es', 'Zapatos ortopédicos para mujer');
            PERFORM insert_category_translations('chaussures-orthopediques-femme', 'it', 'Scarpe ortopediche donna');

        -- Level 1: mode-saisonniere
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mode-saisonniere', 'mode-saisonniere', 1, root_id, 'Mode saisonnière')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('mode-saisonniere', 'fr', 'Mode saisonnière');
        PERFORM insert_category_translations('mode-saisonniere', 'ar', 'موضة موسمية');
        PERFORM insert_category_translations('mode-saisonniere', 'en', 'Seasonal Fashion');
        PERFORM insert_category_translations('mode-saisonniere', 'de', 'Saisonale Mode');
        PERFORM insert_category_translations('mode-saisonniere', 'es', 'Moda estacional');
        PERFORM insert_category_translations('mode-saisonniere', 'it', 'Moda stagionale');

            -- Level 2: vetements-ete
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vetements-ete', 'vetements-ete', 2, l1_id, 'Vêtements été')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('vetements-ete', 'fr', 'Vêtements été');
            PERFORM insert_category_translations('vetements-ete', 'ar', 'ملابس صيفية');
            PERFORM insert_category_translations('vetements-ete', 'en', 'Summer clothing');
            PERFORM insert_category_translations('vetements-ete', 'de', 'Sommerkleidung');
            PERFORM insert_category_translations('vetements-ete', 'es', 'Ropa de verano');
            PERFORM insert_category_translations('vetements-ete', 'it', 'Abbigliamento estivo');

                -- Level 3: shorts
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('shorts', 'shorts', 3, l2_id, 'Shorts')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('shorts', 'fr', 'Shorts');
                PERFORM insert_category_translations('shorts', 'ar', 'شورتات');
                PERFORM insert_category_translations('shorts', 'en', 'Shorts');
                PERFORM insert_category_translations('shorts', 'de', 'Shorts');
                PERFORM insert_category_translations('shorts', 'es', 'Pantalones cortos');
                PERFORM insert_category_translations('shorts', 'it', 'Shorts');

                -- Level 3: debardeurs
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('debardeurs', 'debardeurs', 3, l2_id, 'Débardeurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('debardeurs', 'fr', 'Débardeurs');
                PERFORM insert_category_translations('debardeurs', 'ar', 'قمصان بلا أكمام');
                PERFORM insert_category_translations('debardeurs', 'en', 'Tank tops');
                PERFORM insert_category_translations('debardeurs', 'de', 'Tanktops');
                PERFORM insert_category_translations('debardeurs', 'es', 'Camisetas sin mangas');
                PERFORM insert_category_translations('debardeurs', 'it', 'Canottiere');

                -- Level 3: robes-legeres
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('robes-legeres', 'robes-legeres', 3, l2_id, 'Robes légères')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('robes-legeres', 'fr', 'Robes légères');
                PERFORM insert_category_translations('robes-legeres', 'ar', 'فساتين خفيفة');
                PERFORM insert_category_translations('robes-legeres', 'en', 'Light dresses');
                PERFORM insert_category_translations('robes-legeres', 'de', 'Leichte Kleider');
                PERFORM insert_category_translations('robes-legeres', 'es', 'Vestidos ligeros');
                PERFORM insert_category_translations('robes-legeres', 'it', 'Abiti leggeri');

                -- Level 3: maillots-de-bain
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('maillots-de-bain', 'maillots-de-bain', 3, l2_id, 'Maillots de bain')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('maillots-de-bain', 'fr', 'Maillots de bain');
                PERFORM insert_category_translations('maillots-de-bain', 'ar', 'ملابس سباحة');
                PERFORM insert_category_translations('maillots-de-bain', 'en', 'Swimwear');
                PERFORM insert_category_translations('maillots-de-bain', 'de', 'Bademode');
                PERFORM insert_category_translations('maillots-de-bain', 'es', 'Trajes de baño');
                PERFORM insert_category_translations('maillots-de-bain', 'it', 'Costumi');

                -- Level 3: pareos
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pareos', 'pareos', 3, l2_id, 'Paréos')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('pareos', 'fr', 'Paréos');
                PERFORM insert_category_translations('pareos', 'ar', 'باريو');
                PERFORM insert_category_translations('pareos', 'en', 'Pareos');
                PERFORM insert_category_translations('pareos', 'de', 'Pareos');
                PERFORM insert_category_translations('pareos', 'es', 'Pareos');
                PERFORM insert_category_translations('pareos', 'it', 'Pareo');

            -- Level 2: vetements-hiver
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vetements-hiver', 'vetements-hiver', 2, l1_id, 'Vêtements hiver')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('vetements-hiver', 'fr', 'Vêtements hiver');
            PERFORM insert_category_translations('vetements-hiver', 'ar', 'ملابس شتوية');
            PERFORM insert_category_translations('vetements-hiver', 'en', 'Winter clothing');
            PERFORM insert_category_translations('vetements-hiver', 'de', 'Winterkleidung');
            PERFORM insert_category_translations('vetements-hiver', 'es', 'Ropa de invierno');
            PERFORM insert_category_translations('vetements-hiver', 'it', 'Abbigliamento invernale');

                -- Level 3: doudounes
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('doudounes', 'doudounes', 3, l2_id, 'Doudounes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('doudounes', 'fr', 'Doudounes');
                PERFORM insert_category_translations('doudounes', 'ar', 'منتفخة');
                PERFORM insert_category_translations('doudounes', 'en', 'Puffer jackets');
                PERFORM insert_category_translations('doudounes', 'de', 'Daunenjacken');
                PERFORM insert_category_translations('doudounes', 'es', 'Chaquetas de plumas');
                PERFORM insert_category_translations('doudounes', 'it', 'Piumini');

                -- Level 3: parkas
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('parkas', 'parkas', 3, l2_id, 'Parkas')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('parkas', 'fr', 'Parkas');
                PERFORM insert_category_translations('parkas', 'ar', 'باركا');
                PERFORM insert_category_translations('parkas', 'en', 'Parkas');
                PERFORM insert_category_translations('parkas', 'de', 'Parkas');
                PERFORM insert_category_translations('parkas', 'es', 'Parkas');
                PERFORM insert_category_translations('parkas', 'it', 'Parkas');

                -- Level 3: manteaux-laine
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('manteaux-laine', 'manteaux-laine', 3, l2_id, 'Manteaux laine')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('manteaux-laine', 'fr', 'Manteaux laine');
                PERFORM insert_category_translations('manteaux-laine', 'ar', 'معاطف صوف');
                PERFORM insert_category_translations('manteaux-laine', 'en', 'Wool coats');
                PERFORM insert_category_translations('manteaux-laine', 'de', 'Wollmäntel');
                PERFORM insert_category_translations('manteaux-laine', 'es', 'Abrigos de lana');
                PERFORM insert_category_translations('manteaux-laine', 'it', 'Cappotti in lana');

                -- Level 3: pulls-epais
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pulls-epais', 'pulls-epais', 3, l2_id, 'Pulls épais')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('pulls-epais', 'fr', 'Pulls épais');
                PERFORM insert_category_translations('pulls-epais', 'ar', 'بلوفرات سميكة');
                PERFORM insert_category_translations('pulls-epais', 'en', 'Thick sweaters');
                PERFORM insert_category_translations('pulls-epais', 'de', 'Dicke Pullover');
                PERFORM insert_category_translations('pulls-epais', 'es', 'Jerséis gruesos');
                PERFORM insert_category_translations('pulls-epais', 'it', 'Maglioni pesanti');

                -- Level 3: gants
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gants', 'gants', 3, l2_id, 'Gants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('gants', 'fr', 'Gants');
                PERFORM insert_category_translations('gants', 'ar', 'قفازات');
                PERFORM insert_category_translations('gants', 'en', 'Gloves');
                PERFORM insert_category_translations('gants', 'de', 'Handschuhe');
                PERFORM insert_category_translations('gants', 'es', 'Guantes');
                PERFORM insert_category_translations('gants', 'it', 'Guanti');

                -- Level 3: bonnets
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bonnets', 'bonnets', 3, l2_id, 'Bonnets')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('bonnets', 'fr', 'Bonnets');
                PERFORM insert_category_translations('bonnets', 'ar', 'قبعات');
                PERFORM insert_category_translations('bonnets', 'en', 'Beanies');
                PERFORM insert_category_translations('bonnets', 'de', 'Mützen');
                PERFORM insert_category_translations('bonnets', 'es', 'Gorros');
                PERFORM insert_category_translations('bonnets', 'it', 'Cappelli');

            -- Level 2: pluie-exterieur
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pluie-exterieur', 'pluie-exterieur', 2, l1_id, 'Pluie & extérieur')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pluie-exterieur', 'fr', 'Pluie & extérieur');
            PERFORM insert_category_translations('pluie-exterieur', 'ar', 'مطر & خارج المنزل');
            PERFORM insert_category_translations('pluie-exterieur', 'en', 'Rain & outdoor');
            PERFORM insert_category_translations('pluie-exterieur', 'de', 'Regen & Outdoor');
            PERFORM insert_category_translations('pluie-exterieur', 'es', 'Lluvia y exterior');
            PERFORM insert_category_translations('pluie-exterieur', 'it', 'Pioggia & outdoor');

                -- Level 3: impermeables
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('impermeables', 'impermeables', 3, l2_id, 'Imperméables')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('impermeables', 'fr', 'Imperméables');
                PERFORM insert_category_translations('impermeables', 'ar', 'معاطف مطر');
                PERFORM insert_category_translations('impermeables', 'en', 'Raincoats');
                PERFORM insert_category_translations('impermeables', 'de', 'Regenmäntel');
                PERFORM insert_category_translations('impermeables', 'es', 'Impermeables');
                PERFORM insert_category_translations('impermeables', 'it', 'Impermeabili');

                -- Level 3: coupe-vent
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('coupe-vent', 'coupe-vent', 3, l2_id, 'Coupe‑vent')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('coupe-vent', 'fr', 'Coupe‑vent');
                PERFORM insert_category_translations('coupe-vent', 'ar', 'مضادة للرياح');
                PERFORM insert_category_translations('coupe-vent', 'en', 'Windbreakers');
                PERFORM insert_category_translations('coupe-vent', 'de', 'Windbreaker');
                PERFORM insert_category_translations('coupe-vent', 'es', 'Cortavientos');
                PERFORM insert_category_translations('coupe-vent', 'it', 'Antivento');

                -- Level 3: ponchos
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ponchos', 'ponchos', 3, l2_id, 'Ponchos')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('ponchos', 'fr', 'Ponchos');
                PERFORM insert_category_translations('ponchos', 'ar', 'بونشو');
                PERFORM insert_category_translations('ponchos', 'en', 'Ponchos');
                PERFORM insert_category_translations('ponchos', 'de', 'Ponchos');
                PERFORM insert_category_translations('ponchos', 'es', 'Ponchos');
                PERFORM insert_category_translations('ponchos', 'it', 'Poncho');

                -- Level 3: bottes-pluie
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bottes-pluie', 'bottes-pluie', 3, l2_id, 'Bottes de pluie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('bottes-pluie', 'fr', 'Bottes de pluie');
                PERFORM insert_category_translations('bottes-pluie', 'ar', 'أحذية مطر');
                PERFORM insert_category_translations('bottes-pluie', 'en', 'Rain boots');
                PERFORM insert_category_translations('bottes-pluie', 'de', 'Gummistiefel');
                PERFORM insert_category_translations('bottes-pluie', 'es', 'Botas de lluvia');
                PERFORM insert_category_translations('bottes-pluie', 'it', 'Stivali da pioggia');
END $$;