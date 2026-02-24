-- Migration: Bébé & Puériculture (Generated Recursive)
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

    -- Level 0: bebe-puericulture
    INSERT INTO categories (id, slug, level, name)
    VALUES ('bebe-puericulture', 'bebe-puericulture', 0, 'Bébé & Puériculture')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 0, name = EXCLUDED.name
    RETURNING id INTO root_id;
    PERFORM insert_category_translations('bebe-puericulture', 'fr', 'Bébé & Puériculture');
    PERFORM insert_category_translations('bebe-puericulture', 'ar', 'مستلزمات الأطفال والرضاعة');
    PERFORM insert_category_translations('bebe-puericulture', 'en', 'Baby & Nursery');
    PERFORM insert_category_translations('bebe-puericulture', 'de', 'Baby & Kinderpflege');
    PERFORM insert_category_translations('bebe-puericulture', 'es', 'Bebé y Puericultura');
    PERFORM insert_category_translations('bebe-puericulture', 'it', 'Bebè & Prima Infanzia');

        -- Level 1: vetements-bebe
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vetements-bebe', 'vetements-bebe', 1, root_id, 'Vêtements bébé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('vetements-bebe', 'fr', 'Vêtements bébé');
        PERFORM insert_category_translations('vetements-bebe', 'ar', 'ملابس الرضع');
        PERFORM insert_category_translations('vetements-bebe', 'en', 'Baby clothes');
        PERFORM insert_category_translations('vetements-bebe', 'de', 'Babykleidung');
        PERFORM insert_category_translations('vetements-bebe', 'es', 'Ropa de bebé');
        PERFORM insert_category_translations('vetements-bebe', 'it', 'Abbigliamento neonato');

            -- Level 2: bodies-pyjamas
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bodies-pyjamas', 'bodies-pyjamas', 2, l1_id, 'Bodies & pyjamas')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bodies-pyjamas', 'fr', 'Bodies & pyjamas');
            PERFORM insert_category_translations('bodies-pyjamas', 'ar', 'بودي وبيجامات');
            PERFORM insert_category_translations('bodies-pyjamas', 'en', 'Bodysuits & pajamas');
            PERFORM insert_category_translations('bodies-pyjamas', 'de', 'Bodies & Schlafanzüge');
            PERFORM insert_category_translations('bodies-pyjamas', 'es', 'Bodies y pijamas');
            PERFORM insert_category_translations('bodies-pyjamas', 'it', 'Body e pigiami');

            -- Level 2: ensembles-bebe
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ensembles-bebe', 'ensembles-bebe', 2, l1_id, 'Ensembles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ensembles-bebe', 'fr', 'Ensembles');
            PERFORM insert_category_translations('ensembles-bebe', 'ar', 'طقم ملابس');
            PERFORM insert_category_translations('ensembles-bebe', 'en', 'Outfits');
            PERFORM insert_category_translations('ensembles-bebe', 'de', 'Outfits');
            PERFORM insert_category_translations('ensembles-bebe', 'es', 'Conjuntos');
            PERFORM insert_category_translations('ensembles-bebe', 'it', 'Completi');

            -- Level 2: grenouilleres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('grenouilleres', 'grenouilleres', 2, l1_id, 'Grenouillères')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('grenouilleres', 'fr', 'Grenouillères');
            PERFORM insert_category_translations('grenouilleres', 'ar', 'أوفرولات');
            PERFORM insert_category_translations('grenouilleres', 'en', 'Onesies');
            PERFORM insert_category_translations('grenouilleres', 'de', 'Strampler');
            PERFORM insert_category_translations('grenouilleres', 'es', 'Enteritos');
            PERFORM insert_category_translations('grenouilleres', 'it', 'Tutine');

            -- Level 2: gigoteuses-turbulettes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gigoteuses-turbulettes', 'gigoteuses-turbulettes', 2, l1_id, 'Gigoteuses & turbulettes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gigoteuses-turbulettes', 'fr', 'Gigoteuses & turbulettes');
            PERFORM insert_category_translations('gigoteuses-turbulettes', 'ar', 'أكياس نوم للرضع');
            PERFORM insert_category_translations('gigoteuses-turbulettes', 'en', 'Sleep sacks & wearable blankets');
            PERFORM insert_category_translations('gigoteuses-turbulettes', 'de', 'Schlafsäcke');
            PERFORM insert_category_translations('gigoteuses-turbulettes', 'es', 'Sacos de dormir');
            PERFORM insert_category_translations('gigoteuses-turbulettes', 'it', 'Sacchi nanna');

            -- Level 2: manteaux-combinaisons
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('manteaux-combinaisons', 'manteaux-combinaisons', 2, l1_id, 'Manteaux & combinaisons')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('manteaux-combinaisons', 'fr', 'Manteaux & combinaisons');
            PERFORM insert_category_translations('manteaux-combinaisons', 'ar', 'معاطف وبدلات شتوية');
            PERFORM insert_category_translations('manteaux-combinaisons', 'en', 'Coats & snowsuits');
            PERFORM insert_category_translations('manteaux-combinaisons', 'de', 'Mäntel & Overall');
            PERFORM insert_category_translations('manteaux-combinaisons', 'es', 'Abrigos y monos');
            PERFORM insert_category_translations('manteaux-combinaisons', 'it', 'Cappotti & tute invernali');

        -- Level 1: chaussures-bebe
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chaussures-bebe', 'chaussures-bebe', 1, root_id, 'Chaussures bébé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('chaussures-bebe', 'fr', 'Chaussures bébé');
        PERFORM insert_category_translations('chaussures-bebe', 'ar', 'أحذية الرضع');
        PERFORM insert_category_translations('chaussures-bebe', 'en', 'Baby shoes');
        PERFORM insert_category_translations('chaussures-bebe', 'de', 'Babyschuhe');
        PERFORM insert_category_translations('chaussures-bebe', 'es', 'Zapatos de bebé');
        PERFORM insert_category_translations('chaussures-bebe', 'it', 'Scarpe neonato');

            -- Level 2: chaussons-naissance
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chaussons-naissance', 'chaussons-naissance', 2, l1_id, 'Chaussons naissance')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chaussons-naissance', 'fr', 'Chaussons naissance');
            PERFORM insert_category_translations('chaussons-naissance', 'ar', 'أحذية لحديثي الولادة');
            PERFORM insert_category_translations('chaussons-naissance', 'en', 'Newborn booties');
            PERFORM insert_category_translations('chaussons-naissance', 'de', 'Erstlingsschuhe');
            PERFORM insert_category_translations('chaussons-naissance', 'es', 'Zapatitos de recién nacido');
            PERFORM insert_category_translations('chaussons-naissance', 'it', 'Scarpine neonato');

            -- Level 2: sandales-bebe
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sandales-bebe', 'sandales-bebe', 2, l1_id, 'Sandales bébé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sandales-bebe', 'fr', 'Sandales bébé');
            PERFORM insert_category_translations('sandales-bebe', 'ar', 'صنادل للرضع');
            PERFORM insert_category_translations('sandales-bebe', 'en', 'Sandals');
            PERFORM insert_category_translations('sandales-bebe', 'de', 'Sandalen');
            PERFORM insert_category_translations('sandales-bebe', 'es', 'Sandalias');
            PERFORM insert_category_translations('sandales-bebe', 'it', 'Sandali');

            -- Level 2: baskets-bebe
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('baskets-bebe', 'baskets-bebe', 2, l1_id, 'Baskets bébé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('baskets-bebe', 'fr', 'Baskets bébé');
            PERFORM insert_category_translations('baskets-bebe', 'ar', 'أحذية رياضية للرضع');
            PERFORM insert_category_translations('baskets-bebe', 'en', 'Sneakers');
            PERFORM insert_category_translations('baskets-bebe', 'de', 'Sneaker');
            PERFORM insert_category_translations('baskets-bebe', 'es', 'Zapatillas');
            PERFORM insert_category_translations('baskets-bebe', 'it', 'Sneakers');

            -- Level 2: bottines-bebe
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bottines-bebe', 'bottines-bebe', 2, l1_id, 'Bottines bébé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bottines-bebe', 'fr', 'Bottines bébé');
            PERFORM insert_category_translations('bottines-bebe', 'ar', 'أحذية بوت للرضع');
            PERFORM insert_category_translations('bottines-bebe', 'en', 'Boots');
            PERFORM insert_category_translations('bottines-bebe', 'de', 'Stiefelchen');
            PERFORM insert_category_translations('bottines-bebe', 'es', 'Botitas');
            PERFORM insert_category_translations('bottines-bebe', 'it', 'Stivaletti');

        -- Level 1: poussettes-landaus
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('poussettes-landaus', 'poussettes-landaus', 1, root_id, 'Poussettes & landaus')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('poussettes-landaus', 'fr', 'Poussettes & landaus');
        PERFORM insert_category_translations('poussettes-landaus', 'ar', 'عربات الأطفال');
        PERFORM insert_category_translations('poussettes-landaus', 'en', 'Strollers & prams');
        PERFORM insert_category_translations('poussettes-landaus', 'de', 'Kinderwagen & Buggys');
        PERFORM insert_category_translations('poussettes-landaus', 'es', 'Carritos & cochecitos');
        PERFORM insert_category_translations('poussettes-landaus', 'it', 'Passeggini & carrozzine');

            -- Level 2: poussettes-canne
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('poussettes-canne', 'poussettes-canne', 2, l1_id, 'Poussettes canne')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('poussettes-canne', 'fr', 'Poussettes canne');
            PERFORM insert_category_translations('poussettes-canne', 'ar', 'عربات خفيفة (كان)');
            PERFORM insert_category_translations('poussettes-canne', 'en', 'Umbrella strollers');
            PERFORM insert_category_translations('poussettes-canne', 'de', 'Buggy');
            PERFORM insert_category_translations('poussettes-canne', 'es', 'Cochecitos tipo bastón');
            PERFORM insert_category_translations('poussettes-canne', 'it', 'Passeggini a ombrello');

            -- Level 2: poussettes-3-roues
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('poussettes-3-roues', 'poussettes-3-roues', 2, l1_id, 'Poussettes 3 roues')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('poussettes-3-roues', 'fr', 'Poussettes 3 roues');
            PERFORM insert_category_translations('poussettes-3-roues', 'ar', 'عربات ثلاثية العجلات');
            PERFORM insert_category_translations('poussettes-3-roues', 'en', '3-wheel strollers');
            PERFORM insert_category_translations('poussettes-3-roues', 'de', 'Kinderwagen (3 Räder)');
            PERFORM insert_category_translations('poussettes-3-roues', 'es', 'Cochecitos de 3 ruedas');
            PERFORM insert_category_translations('poussettes-3-roues', 'it', 'Passeggini a 3 ruote');

            -- Level 2: landeaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('landeaux', 'landeaux', 2, l1_id, 'Landeaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('landeaux', 'fr', 'Landeaux');
            PERFORM insert_category_translations('landeaux', 'ar', 'لاندو');
            PERFORM insert_category_translations('landeaux', 'en', 'Prams');
            PERFORM insert_category_translations('landeaux', 'de', 'Kinderwagen/Prams');
            PERFORM insert_category_translations('landeaux', 'es', 'Carritos/landós');
            PERFORM insert_category_translations('landeaux', 'it', 'Carrozzine');

            -- Level 2: travel-system
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('travel-system', 'travel-system', 2, l1_id, 'Travel system')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('travel-system', 'fr', 'Travel system');
            PERFORM insert_category_translations('travel-system', 'ar', 'نظام السفر');
            PERFORM insert_category_translations('travel-system', 'en', 'Travel systems');
            PERFORM insert_category_translations('travel-system', 'de', 'Reisesysteme');
            PERFORM insert_category_translations('travel-system', 'es', 'Travel system');
            PERFORM insert_category_translations('travel-system', 'it', 'Travel system');

            -- Level 2: accessoires-poussette
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-poussette', 'accessoires-poussette', 2, l1_id, 'Accessoires poussette')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('accessoires-poussette', 'fr', 'Accessoires poussette');
            PERFORM insert_category_translations('accessoires-poussette', 'ar', 'إكسسوارات العربات');
            PERFORM insert_category_translations('accessoires-poussette', 'en', 'Stroller accessories');
            PERFORM insert_category_translations('accessoires-poussette', 'de', 'Kinderwagen-Zubehör');
            PERFORM insert_category_translations('accessoires-poussette', 'es', 'Accesorios para cochecito');
            PERFORM insert_category_translations('accessoires-poussette', 'it', 'Accessori passeggino');

            -- Level 2: marques-poussettes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('marques-poussettes', 'marques-poussettes', 2, l1_id, 'Marques poussettes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('marques-poussettes', 'fr', 'Marques poussettes');
            PERFORM insert_category_translations('marques-poussettes', 'ar', 'علامات تجارية لعربات الأطفال');
            PERFORM insert_category_translations('marques-poussettes', 'en', 'Stroller brands');
            PERFORM insert_category_translations('marques-poussettes', 'de', 'Kinderwagen-Marken');
            PERFORM insert_category_translations('marques-poussettes', 'es', 'Marcas de carritos');
            PERFORM insert_category_translations('marques-poussettes', 'it', 'Marche passeggini');

                -- Level 3: bugaboo
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bugaboo', 'bugaboo', 3, l2_id, 'Bugaboo')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('bugaboo', 'fr', 'Bugaboo');
                PERFORM insert_category_translations('bugaboo', 'ar', 'Bugaboo');
                PERFORM insert_category_translations('bugaboo', 'en', 'Bugaboo');
                PERFORM insert_category_translations('bugaboo', 'de', 'Bugaboo');
                PERFORM insert_category_translations('bugaboo', 'es', 'Bugaboo');
                PERFORM insert_category_translations('bugaboo', 'it', 'Bugaboo');

                -- Level 3: cybex
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cybex', 'cybex', 3, l2_id, 'Cybex')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('cybex', 'fr', 'Cybex');
                PERFORM insert_category_translations('cybex', 'ar', 'Cybex');
                PERFORM insert_category_translations('cybex', 'en', 'Cybex');
                PERFORM insert_category_translations('cybex', 'de', 'Cybex');
                PERFORM insert_category_translations('cybex', 'es', 'Cybex');
                PERFORM insert_category_translations('cybex', 'it', 'Cybex');

                -- Level 3: maxi-cosi
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('maxi-cosi', 'maxi-cosi', 3, l2_id, 'Maxi-Cosi')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('maxi-cosi', 'fr', 'Maxi-Cosi');
                PERFORM insert_category_translations('maxi-cosi', 'ar', 'Maxi-Cosi');
                PERFORM insert_category_translations('maxi-cosi', 'en', 'Maxi-Cosi');
                PERFORM insert_category_translations('maxi-cosi', 'de', 'Maxi-Cosi');
                PERFORM insert_category_translations('maxi-cosi', 'es', 'Maxi-Cosi');
                PERFORM insert_category_translations('maxi-cosi', 'it', 'Maxi-Cosi');

                -- Level 3: chicco
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chicco', 'chicco', 3, l2_id, 'Chicco')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('chicco', 'fr', 'Chicco');
                PERFORM insert_category_translations('chicco', 'ar', 'Chicco');
                PERFORM insert_category_translations('chicco', 'en', 'Chicco');
                PERFORM insert_category_translations('chicco', 'de', 'Chicco');
                PERFORM insert_category_translations('chicco', 'es', 'Chicco');
                PERFORM insert_category_translations('chicco', 'it', 'Chicco');

                -- Level 3: stokke
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('stokke', 'stokke', 3, l2_id, 'Stokke')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('stokke', 'fr', 'Stokke');
                PERFORM insert_category_translations('stokke', 'ar', 'Stokke');
                PERFORM insert_category_translations('stokke', 'en', 'Stokke');
                PERFORM insert_category_translations('stokke', 'de', 'Stokke');
                PERFORM insert_category_translations('stokke', 'es', 'Stokke');
                PERFORM insert_category_translations('stokke', 'it', 'Stokke');

                -- Level 3: joie
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('joie', 'joie', 3, l2_id, 'Joie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('joie', 'fr', 'Joie');
                PERFORM insert_category_translations('joie', 'ar', 'Joie');
                PERFORM insert_category_translations('joie', 'en', 'Joie');
                PERFORM insert_category_translations('joie', 'de', 'Joie');
                PERFORM insert_category_translations('joie', 'es', 'Joie');
                PERFORM insert_category_translations('joie', 'it', 'Joie');

                -- Level 3: peg-perego
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('peg-perego', 'peg-perego', 3, l2_id, 'Peg-Perego')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('peg-perego', 'fr', 'Peg-Perego');
                PERFORM insert_category_translations('peg-perego', 'ar', 'Peg-Perego');
                PERFORM insert_category_translations('peg-perego', 'en', 'Peg-Perego');
                PERFORM insert_category_translations('peg-perego', 'de', 'Peg-Perego');
                PERFORM insert_category_translations('peg-perego', 'es', 'Peg-Perego');
                PERFORM insert_category_translations('peg-perego', 'it', 'Peg-Perego');

                -- Level 3: nuna
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('nuna', 'nuna', 3, l2_id, 'Nuna')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('nuna', 'fr', 'Nuna');
                PERFORM insert_category_translations('nuna', 'ar', 'Nuna');
                PERFORM insert_category_translations('nuna', 'en', 'Nuna');
                PERFORM insert_category_translations('nuna', 'de', 'Nuna');
                PERFORM insert_category_translations('nuna', 'es', 'Nuna');
                PERFORM insert_category_translations('nuna', 'it', 'Nuna');

                -- Level 3: graco
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('graco', 'graco', 3, l2_id, 'Graco')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('graco', 'fr', 'Graco');
                PERFORM insert_category_translations('graco', 'ar', 'Graco');
                PERFORM insert_category_translations('graco', 'en', 'Graco');
                PERFORM insert_category_translations('graco', 'de', 'Graco');
                PERFORM insert_category_translations('graco', 'es', 'Graco');
                PERFORM insert_category_translations('graco', 'it', 'Graco');

                -- Level 3: britax
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('britax', 'britax', 3, l2_id, 'Britax')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('britax', 'fr', 'Britax');
                PERFORM insert_category_translations('britax', 'ar', 'Britax');
                PERFORM insert_category_translations('britax', 'en', 'Britax');
                PERFORM insert_category_translations('britax', 'de', 'Britax');
                PERFORM insert_category_translations('britax', 'es', 'Britax');
                PERFORM insert_category_translations('britax', 'it', 'Britax');

        -- Level 1: sieges-auto-bebe
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sieges-auto-bebe', 'sieges-auto-bebe', 1, root_id, 'Sièges auto bébé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('sieges-auto-bebe', 'fr', 'Sièges auto bébé');
        PERFORM insert_category_translations('sieges-auto-bebe', 'ar', 'مقاعد السيارة للأطفال');
        PERFORM insert_category_translations('sieges-auto-bebe', 'en', 'Car seats');
        PERFORM insert_category_translations('sieges-auto-bebe', 'de', 'Kindersitze');
        PERFORM insert_category_translations('sieges-auto-bebe', 'es', 'Sillas de coche');
        PERFORM insert_category_translations('sieges-auto-bebe', 'it', 'Seggiolini auto');

            -- Level 2: cosy-groupe-0
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cosy-groupe-0', 'cosy-groupe-0', 2, l1_id, 'Cosy groupe 0')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cosy-groupe-0', 'fr', 'Cosy groupe 0');
            PERFORM insert_category_translations('cosy-groupe-0', 'ar', 'مقاعد مجموعة 0 (كوسي)');
            PERFORM insert_category_translations('cosy-groupe-0', 'en', 'Infant car seat (Group 0)');
            PERFORM insert_category_translations('cosy-groupe-0', 'de', 'Babyschale Gruppe 0');
            PERFORM insert_category_translations('cosy-groupe-0', 'es', 'Huevitos grupo 0');
            PERFORM insert_category_translations('cosy-groupe-0', 'it', 'Ovetto gruppo 0');

            -- Level 2: siege-auto-groupe-0-1
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('siege-auto-groupe-0-1', 'siege-auto-groupe-0-1', 2, l1_id, 'Siège auto groupe 0/1')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('siege-auto-groupe-0-1', 'fr', 'Siège auto groupe 0/1');
            PERFORM insert_category_translations('siege-auto-groupe-0-1', 'ar', 'مقاعد سيارة مجموعة 0/1');
            PERFORM insert_category_translations('siege-auto-groupe-0-1', 'en', 'Convertible seat (Group 0/1)');
            PERFORM insert_category_translations('siege-auto-groupe-0-1', 'de', 'Kindersitz Gruppe 0/1');
            PERFORM insert_category_translations('siege-auto-groupe-0-1', 'es', 'Sillas grupo 0/1');
            PERFORM insert_category_translations('siege-auto-groupe-0-1', 'it', 'Seggiolini gruppo 0/1');

            -- Level 2: siege-auto-groupe-1-2-3
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('siege-auto-groupe-1-2-3', 'siege-auto-groupe-1-2-3', 2, l1_id, 'Siège auto groupe 1/2/3')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('siege-auto-groupe-1-2-3', 'fr', 'Siège auto groupe 1/2/3');
            PERFORM insert_category_translations('siege-auto-groupe-1-2-3', 'ar', 'مقاعد سيارة مجموعة 1/2/3');
            PERFORM insert_category_translations('siege-auto-groupe-1-2-3', 'en', 'Toddler/child seat (Group 1/2/3)');
            PERFORM insert_category_translations('siege-auto-groupe-1-2-3', 'de', 'Kindersitz Gruppe 1/2/3');
            PERFORM insert_category_translations('siege-auto-groupe-1-2-3', 'es', 'Sillas grupo 1/2/3');
            PERFORM insert_category_translations('siege-auto-groupe-1-2-3', 'it', 'Seggiolini gruppo 1/2/3');

            -- Level 2: bases-isofix
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bases-isofix', 'bases-isofix', 2, l1_id, 'Bases ISOFIX')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bases-isofix', 'fr', 'Bases ISOFIX');
            PERFORM insert_category_translations('bases-isofix', 'ar', 'حاملات ISOFIX');
            PERFORM insert_category_translations('bases-isofix', 'en', 'ISOFIX bases');
            PERFORM insert_category_translations('bases-isofix', 'de', 'ISOFIX-Basen');
            PERFORM insert_category_translations('bases-isofix', 'es', 'Bases ISOFIX');
            PERFORM insert_category_translations('bases-isofix', 'it', 'Basi ISOFIX');

            -- Level 2: marques-sieges-auto
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('marques-sieges-auto', 'marques-sieges-auto', 2, l1_id, 'Marques sièges auto')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('marques-sieges-auto', 'fr', 'Marques sièges auto');
            PERFORM insert_category_translations('marques-sieges-auto', 'ar', 'علامات تجارية لمقاعد السيارة للأطفال');
            PERFORM insert_category_translations('marques-sieges-auto', 'en', 'Car seat brands');
            PERFORM insert_category_translations('marques-sieges-auto', 'de', 'Kindersitz-Marken');
            PERFORM insert_category_translations('marques-sieges-auto', 'es', 'Marcas de sillas de coche');
            PERFORM insert_category_translations('marques-sieges-auto', 'it', 'Marche seggiolini auto');

                -- Level 3: maxi-cosi
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('maxi-cosi', 'maxi-cosi', 3, l2_id, 'Maxi-Cosi')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('maxi-cosi', 'fr', 'Maxi-Cosi');
                PERFORM insert_category_translations('maxi-cosi', 'ar', 'Maxi-Cosi');
                PERFORM insert_category_translations('maxi-cosi', 'en', 'Maxi-Cosi');
                PERFORM insert_category_translations('maxi-cosi', 'de', 'Maxi-Cosi');
                PERFORM insert_category_translations('maxi-cosi', 'es', 'Maxi-Cosi');
                PERFORM insert_category_translations('maxi-cosi', 'it', 'Maxi-Cosi');

                -- Level 3: cybex
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cybex', 'cybex', 3, l2_id, 'Cybex')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('cybex', 'fr', 'Cybex');
                PERFORM insert_category_translations('cybex', 'ar', 'Cybex');
                PERFORM insert_category_translations('cybex', 'en', 'Cybex');
                PERFORM insert_category_translations('cybex', 'de', 'Cybex');
                PERFORM insert_category_translations('cybex', 'es', 'Cybex');
                PERFORM insert_category_translations('cybex', 'it', 'Cybex');

                -- Level 3: britax
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('britax', 'britax', 3, l2_id, 'Britax')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('britax', 'fr', 'Britax');
                PERFORM insert_category_translations('britax', 'ar', 'Britax');
                PERFORM insert_category_translations('britax', 'en', 'Britax');
                PERFORM insert_category_translations('britax', 'de', 'Britax');
                PERFORM insert_category_translations('britax', 'es', 'Britax');
                PERFORM insert_category_translations('britax', 'it', 'Britax');

                -- Level 3: nuna
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('nuna', 'nuna', 3, l2_id, 'Nuna')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('nuna', 'fr', 'Nuna');
                PERFORM insert_category_translations('nuna', 'ar', 'Nuna');
                PERFORM insert_category_translations('nuna', 'en', 'Nuna');
                PERFORM insert_category_translations('nuna', 'de', 'Nuna');
                PERFORM insert_category_translations('nuna', 'es', 'Nuna');
                PERFORM insert_category_translations('nuna', 'it', 'Nuna');

                -- Level 3: joie
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('joie', 'joie', 3, l2_id, 'Joie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('joie', 'fr', 'Joie');
                PERFORM insert_category_translations('joie', 'ar', 'Joie');
                PERFORM insert_category_translations('joie', 'en', 'Joie');
                PERFORM insert_category_translations('joie', 'de', 'Joie');
                PERFORM insert_category_translations('joie', 'es', 'Joie');
                PERFORM insert_category_translations('joie', 'it', 'Joie');

                -- Level 3: chicco
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chicco', 'chicco', 3, l2_id, 'Chicco')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('chicco', 'fr', 'Chicco');
                PERFORM insert_category_translations('chicco', 'ar', 'Chicco');
                PERFORM insert_category_translations('chicco', 'en', 'Chicco');
                PERFORM insert_category_translations('chicco', 'de', 'Chicco');
                PERFORM insert_category_translations('chicco', 'es', 'Chicco');
                PERFORM insert_category_translations('chicco', 'it', 'Chicco');

        -- Level 1: lits-berceaux-bebe
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lits-berceaux-bebe', 'lits-berceaux-bebe', 1, root_id, 'Lits & berceaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('lits-berceaux-bebe', 'fr', 'Lits & berceaux');
        PERFORM insert_category_translations('lits-berceaux-bebe', 'ar', 'أسرة ومهد');
        PERFORM insert_category_translations('lits-berceaux-bebe', 'en', 'Cribs & bassinets');
        PERFORM insert_category_translations('lits-berceaux-bebe', 'de', 'Babybetten & Wiegen');
        PERFORM insert_category_translations('lits-berceaux-bebe', 'es', 'Cunas & moisés');
        PERFORM insert_category_translations('lits-berceaux-bebe', 'it', 'Culle & lettini');

            -- Level 2: berceaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('berceaux', 'berceaux', 2, l1_id, 'Berceaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('berceaux', 'fr', 'Berceaux');
            PERFORM insert_category_translations('berceaux', 'ar', 'مهود');
            PERFORM insert_category_translations('berceaux', 'en', 'Bassinets');
            PERFORM insert_category_translations('berceaux', 'de', 'Wiegen');
            PERFORM insert_category_translations('berceaux', 'es', 'Mecedoras/cunas');
            PERFORM insert_category_translations('berceaux', 'it', 'Culle');

            -- Level 2: lits-parapluie
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lits-parapluie', 'lits-parapluie', 2, l1_id, 'Lits parapluie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lits-parapluie', 'fr', 'Lits parapluie');
            PERFORM insert_category_translations('lits-parapluie', 'ar', 'أسرة قابلة للطي');
            PERFORM insert_category_translations('lits-parapluie', 'en', 'Travel cots');
            PERFORM insert_category_translations('lits-parapluie', 'de', 'Reisebetten');
            PERFORM insert_category_translations('lits-parapluie', 'es', 'Cunas de viaje');
            PERFORM insert_category_translations('lits-parapluie', 'it', 'Lettini da viaggio');

            -- Level 2: lits-evolutifs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lits-evolutifs', 'lits-evolutifs', 2, l1_id, 'Lits évolutifs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lits-evolutifs', 'fr', 'Lits évolutifs');
            PERFORM insert_category_translations('lits-evolutifs', 'ar', 'أسرة متحوّلة');
            PERFORM insert_category_translations('lits-evolutifs', 'en', 'Convertible cribs');
            PERFORM insert_category_translations('lits-evolutifs', 'de', 'Mitwachsende Betten');
            PERFORM insert_category_translations('lits-evolutifs', 'es', 'Cunas evolutivas');
            PERFORM insert_category_translations('lits-evolutifs', 'it', 'Lettini evolutivi');

            -- Level 2: matelas-bebe
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('matelas-bebe', 'matelas-bebe', 2, l1_id, 'Matelas bébé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('matelas-bebe', 'fr', 'Matelas bébé');
            PERFORM insert_category_translations('matelas-bebe', 'ar', 'مراتب الرضع');
            PERFORM insert_category_translations('matelas-bebe', 'en', 'Baby mattresses');
            PERFORM insert_category_translations('matelas-bebe', 'de', 'Baby-Matratzen');
            PERFORM insert_category_translations('matelas-bebe', 'es', 'Colchones bebé');
            PERFORM insert_category_translations('matelas-bebe', 'it', 'Materassi bebé');

            -- Level 2: marques-lits-berceaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('marques-lits-berceaux', 'marques-lits-berceaux', 2, l1_id, 'Marques lits & berceaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('marques-lits-berceaux', 'fr', 'Marques lits & berceaux');
            PERFORM insert_category_translations('marques-lits-berceaux', 'ar', 'علامات تجارية للأسرة والمهد');
            PERFORM insert_category_translations('marques-lits-berceaux', 'en', 'Crib & bassinet brands');
            PERFORM insert_category_translations('marques-lits-berceaux', 'de', 'Marken Babybetten & Wiegen');
            PERFORM insert_category_translations('marques-lits-berceaux', 'es', 'Marcas de cunas y moisés');
            PERFORM insert_category_translations('marques-lits-berceaux', 'it', 'Marche culle & lettini');

                -- Level 3: stokke
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('stokke', 'stokke', 3, l2_id, 'Stokke')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('stokke', 'fr', 'Stokke');
                PERFORM insert_category_translations('stokke', 'ar', 'Stokke');
                PERFORM insert_category_translations('stokke', 'en', 'Stokke');
                PERFORM insert_category_translations('stokke', 'de', 'Stokke');
                PERFORM insert_category_translations('stokke', 'es', 'Stokke');
                PERFORM insert_category_translations('stokke', 'it', 'Stokke');

                -- Level 3: ikea
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ikea', 'ikea', 3, l2_id, 'IKEA')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('ikea', 'fr', 'IKEA');
                PERFORM insert_category_translations('ikea', 'ar', 'IKEA');
                PERFORM insert_category_translations('ikea', 'en', 'IKEA');
                PERFORM insert_category_translations('ikea', 'de', 'IKEA');
                PERFORM insert_category_translations('ikea', 'es', 'IKEA');
                PERFORM insert_category_translations('ikea', 'it', 'IKEA');

                -- Level 3: chicco
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chicco', 'chicco', 3, l2_id, 'Chicco')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('chicco', 'fr', 'Chicco');
                PERFORM insert_category_translations('chicco', 'ar', 'Chicco');
                PERFORM insert_category_translations('chicco', 'en', 'Chicco');
                PERFORM insert_category_translations('chicco', 'de', 'Chicco');
                PERFORM insert_category_translations('chicco', 'es', 'Chicco');
                PERFORM insert_category_translations('chicco', 'it', 'Chicco');

                -- Level 3: babybjorn
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('babybjorn', 'babybjorn', 3, l2_id, 'BabyBjörn')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('babybjorn', 'fr', 'BabyBjörn');
                PERFORM insert_category_translations('babybjorn', 'ar', 'BabyBjörn');
                PERFORM insert_category_translations('babybjorn', 'en', 'BabyBjörn');
                PERFORM insert_category_translations('babybjorn', 'de', 'BabyBjörn');
                PERFORM insert_category_translations('babybjorn', 'es', 'BabyBjörn');
                PERFORM insert_category_translations('babybjorn', 'it', 'BabyBjörn');

        -- Level 1: chaises-hautes-repas
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chaises-hautes-repas', 'chaises-hautes-repas', 1, root_id, 'Chaises hautes & repas')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('chaises-hautes-repas', 'fr', 'Chaises hautes & repas');
        PERFORM insert_category_translations('chaises-hautes-repas', 'ar', 'كراسي الطعام للأطفال');
        PERFORM insert_category_translations('chaises-hautes-repas', 'en', 'High chairs & feeding');
        PERFORM insert_category_translations('chaises-hautes-repas', 'de', 'Hochstühle & Essen');
        PERFORM insert_category_translations('chaises-hautes-repas', 'es', 'Tronas & alimentación');
        PERFORM insert_category_translations('chaises-hautes-repas', 'it', 'Seggioloni & pappa');

            -- Level 2: chaises-hautes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chaises-hautes', 'chaises-hautes', 2, l1_id, 'Chaises hautes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chaises-hautes', 'fr', 'Chaises hautes');
            PERFORM insert_category_translations('chaises-hautes', 'ar', 'كراسي عالية');
            PERFORM insert_category_translations('chaises-hautes', 'en', 'High chairs');
            PERFORM insert_category_translations('chaises-hautes', 'de', 'Hochstühle');
            PERFORM insert_category_translations('chaises-hautes', 'es', 'Tronas');
            PERFORM insert_category_translations('chaises-hautes', 'it', 'Seggioloni');

            -- Level 2: rehausseurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('rehausseurs', 'rehausseurs', 2, l1_id, 'Réhausseurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('rehausseurs', 'fr', 'Réhausseurs');
            PERFORM insert_category_translations('rehausseurs', 'ar', 'أجهزة رفع مقعد');
            PERFORM insert_category_translations('rehausseurs', 'en', 'Boosters');
            PERFORM insert_category_translations('rehausseurs', 'de', 'Sitzerhöhungen');
            PERFORM insert_category_translations('rehausseurs', 'es', 'Elevadores');
            PERFORM insert_category_translations('rehausseurs', 'it', 'Alzasedia');

            -- Level 2: vaisselle-bebe
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vaisselle-bebe', 'vaisselle-bebe', 2, l1_id, 'Vaisselle bébé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('vaisselle-bebe', 'fr', 'Vaisselle bébé');
            PERFORM insert_category_translations('vaisselle-bebe', 'ar', 'أواني طعام للأطفال');
            PERFORM insert_category_translations('vaisselle-bebe', 'en', 'Baby tableware');
            PERFORM insert_category_translations('vaisselle-bebe', 'de', 'Baby-Geschirr');
            PERFORM insert_category_translations('vaisselle-bebe', 'es', 'Vajilla bebé');
            PERFORM insert_category_translations('vaisselle-bebe', 'it', 'Stoviglie bebé');

            -- Level 2: bavoirs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bavoirs', 'bavoirs', 2, l1_id, 'Bavoirs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bavoirs', 'fr', 'Bavoirs');
            PERFORM insert_category_translations('bavoirs', 'ar', 'مريلات');
            PERFORM insert_category_translations('bavoirs', 'en', 'Bib');
            PERFORM insert_category_translations('bavoirs', 'de', 'Lätzchen');
            PERFORM insert_category_translations('bavoirs', 'es', 'Baberos');
            PERFORM insert_category_translations('bavoirs', 'it', 'Bavaglini');

            -- Level 2: marques-chaises-hautes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('marques-chaises-hautes', 'marques-chaises-hautes', 2, l1_id, 'Marques chaises hautes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('marques-chaises-hautes', 'fr', 'Marques chaises hautes');
            PERFORM insert_category_translations('marques-chaises-hautes', 'ar', 'علامات تجارية لكراسي الطعام');
            PERFORM insert_category_translations('marques-chaises-hautes', 'en', 'High chair brands');
            PERFORM insert_category_translations('marques-chaises-hautes', 'de', 'Hochstuhl-Marken');
            PERFORM insert_category_translations('marques-chaises-hautes', 'es', 'Marcas de tronas');
            PERFORM insert_category_translations('marques-chaises-hautes', 'it', 'Marche seggioloni');

                -- Level 3: stokke
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('stokke', 'stokke', 3, l2_id, 'Stokke')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('stokke', 'fr', 'Stokke');
                PERFORM insert_category_translations('stokke', 'ar', 'Stokke');
                PERFORM insert_category_translations('stokke', 'en', 'Stokke');
                PERFORM insert_category_translations('stokke', 'de', 'Stokke');
                PERFORM insert_category_translations('stokke', 'es', 'Stokke');
                PERFORM insert_category_translations('stokke', 'it', 'Stokke');

                -- Level 3: peg-perego
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('peg-perego', 'peg-perego', 3, l2_id, 'Peg-Perego')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('peg-perego', 'fr', 'Peg-Perego');
                PERFORM insert_category_translations('peg-perego', 'ar', 'Peg-Perego');
                PERFORM insert_category_translations('peg-perego', 'en', 'Peg-Perego');
                PERFORM insert_category_translations('peg-perego', 'de', 'Peg-Perego');
                PERFORM insert_category_translations('peg-perego', 'es', 'Peg-Perego');
                PERFORM insert_category_translations('peg-perego', 'it', 'Peg-Perego');

                -- Level 3: joie
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('joie', 'joie', 3, l2_id, 'Joie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('joie', 'fr', 'Joie');
                PERFORM insert_category_translations('joie', 'ar', 'Joie');
                PERFORM insert_category_translations('joie', 'en', 'Joie');
                PERFORM insert_category_translations('joie', 'de', 'Joie');
                PERFORM insert_category_translations('joie', 'es', 'Joie');
                PERFORM insert_category_translations('joie', 'it', 'Joie');

                -- Level 3: ikea
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ikea', 'ikea', 3, l2_id, 'IKEA')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('ikea', 'fr', 'IKEA');
                PERFORM insert_category_translations('ikea', 'ar', 'IKEA');
                PERFORM insert_category_translations('ikea', 'en', 'IKEA');
                PERFORM insert_category_translations('ikea', 'de', 'IKEA');
                PERFORM insert_category_translations('ikea', 'es', 'IKEA');
                PERFORM insert_category_translations('ikea', 'it', 'IKEA');

        -- Level 1: allaitement-biberons
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('allaitement-biberons', 'allaitement-biberons', 1, root_id, 'Allaitement & biberons')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('allaitement-biberons', 'fr', 'Allaitement & biberons');
        PERFORM insert_category_translations('allaitement-biberons', 'ar', 'الرضاعة والرضّاعات');
        PERFORM insert_category_translations('allaitement-biberons', 'en', 'Breastfeeding & bottles');
        PERFORM insert_category_translations('allaitement-biberons', 'de', 'Stillen & Flaschen');
        PERFORM insert_category_translations('allaitement-biberons', 'es', 'Lactancia & biberones');
        PERFORM insert_category_translations('allaitement-biberons', 'it', 'Allattamento & biberon');

            -- Level 2: tire-lait
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tire-lait', 'tire-lait', 2, l1_id, 'Tire-lait')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tire-lait', 'fr', 'Tire-lait');
            PERFORM insert_category_translations('tire-lait', 'ar', 'شفاطات الحليب');
            PERFORM insert_category_translations('tire-lait', 'en', 'Breast pumps');
            PERFORM insert_category_translations('tire-lait', 'de', 'Milchpumpen');
            PERFORM insert_category_translations('tire-lait', 'es', 'Sacaleches');
            PERFORM insert_category_translations('tire-lait', 'it', 'Tiralatte');

            -- Level 2: coussin-allaitement
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('coussin-allaitement', 'coussin-allaitement', 2, l1_id, 'Coussin d''''allaitement')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('coussin-allaitement', 'fr', 'Coussin d''allaitement');
            PERFORM insert_category_translations('coussin-allaitement', 'ar', 'وسائد الرضاعة');
            PERFORM insert_category_translations('coussin-allaitement', 'en', 'Nursing pillows');
            PERFORM insert_category_translations('coussin-allaitement', 'de', 'Stillkissen');
            PERFORM insert_category_translations('coussin-allaitement', 'es', 'Cojín de lactancia');
            PERFORM insert_category_translations('coussin-allaitement', 'it', 'Cuscino allattamento');

            -- Level 2: biberons-tetines
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('biberons-tetines', 'biberons-tetines', 2, l1_id, 'Biberons & tétines')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('biberons-tetines', 'fr', 'Biberons & tétines');
            PERFORM insert_category_translations('biberons-tetines', 'ar', 'رضّاعات وحلمات');
            PERFORM insert_category_translations('biberons-tetines', 'en', 'Bottles & nipples');
            PERFORM insert_category_translations('biberons-tetines', 'de', 'Flaschen & Sauger');
            PERFORM insert_category_translations('biberons-tetines', 'es', 'Biberones y tetinas');
            PERFORM insert_category_translations('biberons-tetines', 'it', 'Biberon e tettarelle');

            -- Level 2: chauffe-biberons
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chauffe-biberons', 'chauffe-biberons', 2, l1_id, 'Chauffe-biberons')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chauffe-biberons', 'fr', 'Chauffe-biberons');
            PERFORM insert_category_translations('chauffe-biberons', 'ar', 'مسخّنات الرضّاعات');
            PERFORM insert_category_translations('chauffe-biberons', 'en', 'Bottle warmers');
            PERFORM insert_category_translations('chauffe-biberons', 'de', 'Flaschenwärmer');
            PERFORM insert_category_translations('chauffe-biberons', 'es', 'Calienta biberones');
            PERFORM insert_category_translations('chauffe-biberons', 'it', 'Scaldabiberon');

            -- Level 2: sterilisation
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sterilisation', 'sterilisation', 2, l1_id, 'Stérilisation')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sterilisation', 'fr', 'Stérilisation');
            PERFORM insert_category_translations('sterilisation', 'ar', 'أجهزة التعقيم');
            PERFORM insert_category_translations('sterilisation', 'en', 'Sterilizers');
            PERFORM insert_category_translations('sterilisation', 'de', 'Sterilisatoren');
            PERFORM insert_category_translations('sterilisation', 'es', 'Esterilizadores');
            PERFORM insert_category_translations('sterilisation', 'it', 'Sterilizzatori');

            -- Level 2: marques-biberons
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('marques-biberons', 'marques-biberons', 2, l1_id, 'Marques biberons')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('marques-biberons', 'fr', 'Marques biberons');
            PERFORM insert_category_translations('marques-biberons', 'ar', 'علامات تجارية للرضّاعات');
            PERFORM insert_category_translations('marques-biberons', 'en', 'Bottle brands');
            PERFORM insert_category_translations('marques-biberons', 'de', 'Flaschen-Marken');
            PERFORM insert_category_translations('marques-biberons', 'es', 'Marcas de biberones');
            PERFORM insert_category_translations('marques-biberons', 'it', 'Marche biberon');

                -- Level 3: philips-avent
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('philips-avent', 'philips-avent', 3, l2_id, 'Philips Avent')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('philips-avent', 'fr', 'Philips Avent');
                PERFORM insert_category_translations('philips-avent', 'ar', 'Philips Avent');
                PERFORM insert_category_translations('philips-avent', 'en', 'Philips Avent');
                PERFORM insert_category_translations('philips-avent', 'de', 'Philips Avent');
                PERFORM insert_category_translations('philips-avent', 'es', 'Philips Avent');
                PERFORM insert_category_translations('philips-avent', 'it', 'Philips Avent');

                -- Level 3: tommee-tippee
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tommee-tippee', 'tommee-tippee', 3, l2_id, 'Tommee Tippee')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('tommee-tippee', 'fr', 'Tommee Tippee');
                PERFORM insert_category_translations('tommee-tippee', 'ar', 'Tommee Tippee');
                PERFORM insert_category_translations('tommee-tippee', 'en', 'Tommee Tippee');
                PERFORM insert_category_translations('tommee-tippee', 'de', 'Tommee Tippee');
                PERFORM insert_category_translations('tommee-tippee', 'es', 'Tommee Tippee');
                PERFORM insert_category_translations('tommee-tippee', 'it', 'Tommee Tippee');

                -- Level 3: dr-browns
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('dr-browns', 'dr-browns', 3, l2_id, 'Dr. Brown''''s')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('dr-browns', 'fr', 'Dr. Brown''s');
                PERFORM insert_category_translations('dr-browns', 'ar', 'Dr. Brown''s');
                PERFORM insert_category_translations('dr-browns', 'en', 'Dr. Brown''s');
                PERFORM insert_category_translations('dr-browns', 'de', 'Dr. Brown''s');
                PERFORM insert_category_translations('dr-browns', 'es', 'Dr. Brown''s');
                PERFORM insert_category_translations('dr-browns', 'it', 'Dr. Brown''s');

                -- Level 3: mam
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mam', 'mam', 3, l2_id, 'MAM')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('mam', 'fr', 'MAM');
                PERFORM insert_category_translations('mam', 'ar', 'MAM');
                PERFORM insert_category_translations('mam', 'en', 'MAM');
                PERFORM insert_category_translations('mam', 'de', 'MAM');
                PERFORM insert_category_translations('mam', 'es', 'MAM');
                PERFORM insert_category_translations('mam', 'it', 'MAM');

                -- Level 3: nuk
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('nuk', 'nuk', 3, l2_id, 'NUK')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('nuk', 'fr', 'NUK');
                PERFORM insert_category_translations('nuk', 'ar', 'NUK');
                PERFORM insert_category_translations('nuk', 'en', 'NUK');
                PERFORM insert_category_translations('nuk', 'de', 'NUK');
                PERFORM insert_category_translations('nuk', 'es', 'NUK');
                PERFORM insert_category_translations('nuk', 'it', 'NUK');

        -- Level 1: soins-hygiene-bebe
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soins-hygiene-bebe', 'soins-hygiene-bebe', 1, root_id, 'Soins & hygiène')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('soins-hygiene-bebe', 'fr', 'Soins & hygiène');
        PERFORM insert_category_translations('soins-hygiene-bebe', 'ar', 'العناية والنظافة');
        PERFORM insert_category_translations('soins-hygiene-bebe', 'en', 'Care & hygiene');
        PERFORM insert_category_translations('soins-hygiene-bebe', 'de', 'Pflege & Hygiene');
        PERFORM insert_category_translations('soins-hygiene-bebe', 'es', 'Cuidado & higiene');
        PERFORM insert_category_translations('soins-hygiene-bebe', 'it', 'Cura & igiene');

            -- Level 2: baignoires-bebe
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('baignoires-bebe', 'baignoires-bebe', 2, l1_id, 'Baignoires bébé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('baignoires-bebe', 'fr', 'Baignoires bébé');
            PERFORM insert_category_translations('baignoires-bebe', 'ar', 'أحواض استحمام للرضع');
            PERFORM insert_category_translations('baignoires-bebe', 'en', 'Baby bathtubs');
            PERFORM insert_category_translations('baignoires-bebe', 'de', 'Babywannen');
            PERFORM insert_category_translations('baignoires-bebe', 'es', 'Bañeras bebé');
            PERFORM insert_category_translations('baignoires-bebe', 'it', 'Vaschetta bebé');

            -- Level 2: trousse-de-soin
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('trousse-de-soin', 'trousse-de-soin', 2, l1_id, 'Trousse de soin')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('trousse-de-soin', 'fr', 'Trousse de soin');
            PERFORM insert_category_translations('trousse-de-soin', 'ar', 'عدة العناية');
            PERFORM insert_category_translations('trousse-de-soin', 'en', 'Care kits');
            PERFORM insert_category_translations('trousse-de-soin', 'de', 'Pflegesets');
            PERFORM insert_category_translations('trousse-de-soin', 'es', 'Set de cuidado');
            PERFORM insert_category_translations('trousse-de-soin', 'it', 'Kit cura');

            -- Level 2: thermometres-bebe
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('thermometres-bebe', 'thermometres-bebe', 2, l1_id, 'Thermomètres bébé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('thermometres-bebe', 'fr', 'Thermomètres bébé');
            PERFORM insert_category_translations('thermometres-bebe', 'ar', 'مقاييس حرارة للرضع');
            PERFORM insert_category_translations('thermometres-bebe', 'en', 'Baby thermometers');
            PERFORM insert_category_translations('thermometres-bebe', 'de', 'Baby-Thermometer');
            PERFORM insert_category_translations('thermometres-bebe', 'es', 'Termómetros bebé');
            PERFORM insert_category_translations('thermometres-bebe', 'it', 'Termometri bebé');

            -- Level 2: soins-peau-bebe
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soins-peau-bebe', 'soins-peau-bebe', 2, l1_id, 'Soins peau bébé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('soins-peau-bebe', 'fr', 'Soins peau bébé');
            PERFORM insert_category_translations('soins-peau-bebe', 'ar', 'عناية ببشرة الرضيع');
            PERFORM insert_category_translations('soins-peau-bebe', 'en', 'Skin care');
            PERFORM insert_category_translations('soins-peau-bebe', 'de', 'Hautpflege');
            PERFORM insert_category_translations('soins-peau-bebe', 'es', 'Cuidado de la piel');
            PERFORM insert_category_translations('soins-peau-bebe', 'it', 'Cura della pelle');

            -- Level 2: marques-soins-bebe
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('marques-soins-bebe', 'marques-soins-bebe', 2, l1_id, 'Marques soins bébé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('marques-soins-bebe', 'fr', 'Marques soins bébé');
            PERFORM insert_category_translations('marques-soins-bebe', 'ar', 'علامات تجارية لمنتجات العناية بالرضع');
            PERFORM insert_category_translations('marques-soins-bebe', 'en', 'Baby care brands');
            PERFORM insert_category_translations('marques-soins-bebe', 'de', 'Marken Babypflege');
            PERFORM insert_category_translations('marques-soins-bebe', 'es', 'Marcas de cuidado del bebé');
            PERFORM insert_category_translations('marques-soins-bebe', 'it', 'Marche cura bebé');

                -- Level 3: mustela
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mustela', 'mustela', 3, l2_id, 'Mustela')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('mustela', 'fr', 'Mustela');
                PERFORM insert_category_translations('mustela', 'ar', 'Mustela');
                PERFORM insert_category_translations('mustela', 'en', 'Mustela');
                PERFORM insert_category_translations('mustela', 'de', 'Mustela');
                PERFORM insert_category_translations('mustela', 'es', 'Mustela');
                PERFORM insert_category_translations('mustela', 'it', 'Mustela');

                -- Level 3: biolane
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('biolane', 'biolane', 3, l2_id, 'Biolane')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('biolane', 'fr', 'Biolane');
                PERFORM insert_category_translations('biolane', 'ar', 'Biolane');
                PERFORM insert_category_translations('biolane', 'en', 'Biolane');
                PERFORM insert_category_translations('biolane', 'de', 'Biolane');
                PERFORM insert_category_translations('biolane', 'es', 'Biolane');
                PERFORM insert_category_translations('biolane', 'it', 'Biolane');

                -- Level 3: weleda
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('weleda', 'weleda', 3, l2_id, 'Weleda')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('weleda', 'fr', 'Weleda');
                PERFORM insert_category_translations('weleda', 'ar', 'Weleda');
                PERFORM insert_category_translations('weleda', 'en', 'Weleda');
                PERFORM insert_category_translations('weleda', 'de', 'Weleda');
                PERFORM insert_category_translations('weleda', 'es', 'Weleda');
                PERFORM insert_category_translations('weleda', 'it', 'Weleda');

                -- Level 3: sanosan
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sanosan', 'sanosan', 3, l2_id, 'Sanosan')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('sanosan', 'fr', 'Sanosan');
                PERFORM insert_category_translations('sanosan', 'ar', 'Sanosan');
                PERFORM insert_category_translations('sanosan', 'en', 'Sanosan');
                PERFORM insert_category_translations('sanosan', 'de', 'Sanosan');
                PERFORM insert_category_translations('sanosan', 'es', 'Sanosan');
                PERFORM insert_category_translations('sanosan', 'it', 'Sanosan');

        -- Level 1: couches-toilette
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('couches-toilette', 'couches-toilette', 1, root_id, 'Couches & change')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('couches-toilette', 'fr', 'Couches & change');
        PERFORM insert_category_translations('couches-toilette', 'ar', 'حفاضات وتغيير');
        PERFORM insert_category_translations('couches-toilette', 'en', 'Diapers & changing');
        PERFORM insert_category_translations('couches-toilette', 'de', 'Windeln & Wickeln');
        PERFORM insert_category_translations('couches-toilette', 'es', 'Pañales & cambio');
        PERFORM insert_category_translations('couches-toilette', 'it', 'Pannolini & cambio');

            -- Level 2: couches-jetables
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('couches-jetables', 'couches-jetables', 2, l1_id, 'Couches jetables')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('couches-jetables', 'fr', 'Couches jetables');
            PERFORM insert_category_translations('couches-jetables', 'ar', 'حفاضات للاستخدام مرة واحدة');
            PERFORM insert_category_translations('couches-jetables', 'en', 'Disposable diapers');
            PERFORM insert_category_translations('couches-jetables', 'de', 'Einwegwindeln');
            PERFORM insert_category_translations('couches-jetables', 'es', 'Pañales desechables');
            PERFORM insert_category_translations('couches-jetables', 'it', 'Pannolini usa e getta');

            -- Level 2: couches-lavables
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('couches-lavables', 'couches-lavables', 2, l1_id, 'Couches lavables')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('couches-lavables', 'fr', 'Couches lavables');
            PERFORM insert_category_translations('couches-lavables', 'ar', 'حفاضات قابلة للغسيل');
            PERFORM insert_category_translations('couches-lavables', 'en', 'Cloth diapers');
            PERFORM insert_category_translations('couches-lavables', 'de', 'Stoffwindeln');
            PERFORM insert_category_translations('couches-lavables', 'es', 'Pañales de tela');
            PERFORM insert_category_translations('couches-lavables', 'it', 'Pannolini lavabili');

            -- Level 2: lingettes-bebe
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lingettes-bebe', 'lingettes-bebe', 2, l1_id, 'Lingettes bébé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lingettes-bebe', 'fr', 'Lingettes bébé');
            PERFORM insert_category_translations('lingettes-bebe', 'ar', 'مناديل مبللة للأطفال');
            PERFORM insert_category_translations('lingettes-bebe', 'en', 'Baby wipes');
            PERFORM insert_category_translations('lingettes-bebe', 'de', 'Feuchttücher');
            PERFORM insert_category_translations('lingettes-bebe', 'es', 'Toallitas bebé');
            PERFORM insert_category_translations('lingettes-bebe', 'it', 'Salviette');

            -- Level 2: tables-a-langer
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tables-a-langer', 'tables-a-langer', 2, l1_id, 'Tables à langer')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tables-a-langer', 'fr', 'Tables à langer');
            PERFORM insert_category_translations('tables-a-langer', 'ar', 'طاولات تغيير');
            PERFORM insert_category_translations('tables-a-langer', 'en', 'Changing tables');
            PERFORM insert_category_translations('tables-a-langer', 'de', 'Wickeltische');
            PERFORM insert_category_translations('tables-a-langer', 'es', 'Cambiadores');
            PERFORM insert_category_translations('tables-a-langer', 'it', 'Fasciatoi');

            -- Level 2: matelas-a-langer
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('matelas-a-langer', 'matelas-a-langer', 2, l1_id, 'Matelas à langer')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('matelas-a-langer', 'fr', 'Matelas à langer');
            PERFORM insert_category_translations('matelas-a-langer', 'ar', 'فرش تغيير');
            PERFORM insert_category_translations('matelas-a-langer', 'en', 'Changing mats');
            PERFORM insert_category_translations('matelas-a-langer', 'de', 'Wickelauflagen');
            PERFORM insert_category_translations('matelas-a-langer', 'es', 'Colchonetas de cambio');
            PERFORM insert_category_translations('matelas-a-langer', 'it', 'Materassini fasciatoio');

            -- Level 2: marques-couches
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('marques-couches', 'marques-couches', 2, l1_id, 'Marques couches')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('marques-couches', 'fr', 'Marques couches');
            PERFORM insert_category_translations('marques-couches', 'ar', 'علامات تجارية للحفاضات');
            PERFORM insert_category_translations('marques-couches', 'en', 'Diaper brands');
            PERFORM insert_category_translations('marques-couches', 'de', 'Windel-Marken');
            PERFORM insert_category_translations('marques-couches', 'es', 'Marcas de pañales');
            PERFORM insert_category_translations('marques-couches', 'it', 'Marche pannolini');

                -- Level 3: pampers
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pampers', 'pampers', 3, l2_id, 'Pampers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('pampers', 'fr', 'Pampers');
                PERFORM insert_category_translations('pampers', 'ar', 'Pampers');
                PERFORM insert_category_translations('pampers', 'en', 'Pampers');
                PERFORM insert_category_translations('pampers', 'de', 'Pampers');
                PERFORM insert_category_translations('pampers', 'es', 'Pampers');
                PERFORM insert_category_translations('pampers', 'it', 'Pampers');

                -- Level 3: huggies
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('huggies', 'huggies', 3, l2_id, 'Huggies')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('huggies', 'fr', 'Huggies');
                PERFORM insert_category_translations('huggies', 'ar', 'Huggies');
                PERFORM insert_category_translations('huggies', 'en', 'Huggies');
                PERFORM insert_category_translations('huggies', 'de', 'Huggies');
                PERFORM insert_category_translations('huggies', 'es', 'Huggies');
                PERFORM insert_category_translations('huggies', 'it', 'Huggies');

                -- Level 3: dodot
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('dodot', 'dodot', 3, l2_id, 'Dodot')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('dodot', 'fr', 'Dodot');
                PERFORM insert_category_translations('dodot', 'ar', 'Dodot');
                PERFORM insert_category_translations('dodot', 'en', 'Dodot');
                PERFORM insert_category_translations('dodot', 'de', 'Dodot');
                PERFORM insert_category_translations('dodot', 'es', 'Dodot');
                PERFORM insert_category_translations('dodot', 'it', 'Dodot');

                -- Level 3: libero
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('libero', 'libero', 3, l2_id, 'Libero')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('libero', 'fr', 'Libero');
                PERFORM insert_category_translations('libero', 'ar', 'Libero');
                PERFORM insert_category_translations('libero', 'en', 'Libero');
                PERFORM insert_category_translations('libero', 'de', 'Libero');
                PERFORM insert_category_translations('libero', 'es', 'Libero');
                PERFORM insert_category_translations('libero', 'it', 'Libero');

                -- Level 3: moltex
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('moltex', 'moltex', 3, l2_id, 'Moltex')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('moltex', 'fr', 'Moltex');
                PERFORM insert_category_translations('moltex', 'ar', 'Moltex');
                PERFORM insert_category_translations('moltex', 'en', 'Moltex');
                PERFORM insert_category_translations('moltex', 'de', 'Moltex');
                PERFORM insert_category_translations('moltex', 'es', 'Moltex');
                PERFORM insert_category_translations('moltex', 'it', 'Moltex');

        -- Level 1: jouets-bebe-eveil
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jouets-bebe-eveil', 'jouets-bebe-eveil', 1, root_id, 'Jouets & éveil')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('jouets-bebe-eveil', 'fr', 'Jouets & éveil');
        PERFORM insert_category_translations('jouets-bebe-eveil', 'ar', 'ألعاب الأطفال والتنمية');
        PERFORM insert_category_translations('jouets-bebe-eveil', 'en', 'Baby toys & early learning');
        PERFORM insert_category_translations('jouets-bebe-eveil', 'de', 'Babyspielzeug & Frühförderung');
        PERFORM insert_category_translations('jouets-bebe-eveil', 'es', 'Juguetes & estimulación');
        PERFORM insert_category_translations('jouets-bebe-eveil', 'it', 'Giochi & primi apprendimenti');

            -- Level 2: tapis-eveil
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tapis-eveil', 'tapis-eveil', 2, l1_id, 'Tapis d''''éveil')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tapis-eveil', 'fr', 'Tapis d''éveil');
            PERFORM insert_category_translations('tapis-eveil', 'ar', 'بساط ألعاب');
            PERFORM insert_category_translations('tapis-eveil', 'en', 'Activity mats');
            PERFORM insert_category_translations('tapis-eveil', 'de', 'Spielmatten');
            PERFORM insert_category_translations('tapis-eveil', 'es', 'Tapetes de juego');
            PERFORM insert_category_translations('tapis-eveil', 'it', 'Tappeti attività');

            -- Level 2: hochets
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('hochets', 'hochets', 2, l1_id, 'Hochets')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('hochets', 'fr', 'Hochets');
            PERFORM insert_category_translations('hochets', 'ar', 'خشخيشات');
            PERFORM insert_category_translations('hochets', 'en', 'Rattles');
            PERFORM insert_category_translations('hochets', 'de', 'Rasseln');
            PERFORM insert_category_translations('hochets', 'es', 'Sonajeros');
            PERFORM insert_category_translations('hochets', 'it', 'Sonagli');

            -- Level 2: jouets-de-bain
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jouets-de-bain', 'jouets-de-bain', 2, l1_id, 'Jouets de bain')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('jouets-de-bain', 'fr', 'Jouets de bain');
            PERFORM insert_category_translations('jouets-de-bain', 'ar', 'ألعاب الاستحمام');
            PERFORM insert_category_translations('jouets-de-bain', 'en', 'Bath toys');
            PERFORM insert_category_translations('jouets-de-bain', 'de', 'Badespielzeug');
            PERFORM insert_category_translations('jouets-de-bain', 'es', 'Juguetes de baño');
            PERFORM insert_category_translations('jouets-de-bain', 'it', 'Giochi da bagno');

            -- Level 2: mobiles-lits
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mobiles-lits', 'mobiles-lits', 2, l1_id, 'Mobiles de lit')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mobiles-lits', 'fr', 'Mobiles de lit');
            PERFORM insert_category_translations('mobiles-lits', 'ar', 'معلقات السرير');
            PERFORM insert_category_translations('mobiles-lits', 'en', 'Crib mobiles');
            PERFORM insert_category_translations('mobiles-lits', 'de', 'Mobile fürs Bett');
            PERFORM insert_category_translations('mobiles-lits', 'es', 'Móviles de cuna');
            PERFORM insert_category_translations('mobiles-lits', 'it', 'Giostrine per culla');

            -- Level 2: livres-bebe
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('livres-bebe', 'livres-bebe', 2, l1_id, 'Livres bébé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('livres-bebe', 'fr', 'Livres bébé');
            PERFORM insert_category_translations('livres-bebe', 'ar', 'كتب للرضع');
            PERFORM insert_category_translations('livres-bebe', 'en', 'Baby books');
            PERFORM insert_category_translations('livres-bebe', 'de', 'Babybücher');
            PERFORM insert_category_translations('livres-bebe', 'es', 'Libros para bebés');
            PERFORM insert_category_translations('livres-bebe', 'it', 'Libri bebé');

            -- Level 2: marques-jouets-bebe
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('marques-jouets-bebe', 'marques-jouets-bebe', 2, l1_id, 'Marques jouets bébé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('marques-jouets-bebe', 'fr', 'Marques jouets bébé');
            PERFORM insert_category_translations('marques-jouets-bebe', 'ar', 'علامات تجارية لألعاب الرضع');
            PERFORM insert_category_translations('marques-jouets-bebe', 'en', 'Baby toy brands');
            PERFORM insert_category_translations('marques-jouets-bebe', 'de', 'Marken Babyspielzeug');
            PERFORM insert_category_translations('marques-jouets-bebe', 'es', 'Marcas de juguetes de bebé');
            PERFORM insert_category_translations('marques-jouets-bebe', 'it', 'Marche giochi bebé');

                -- Level 3: fisher-price
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fisher-price', 'fisher-price', 3, l2_id, 'Fisher-Price')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('fisher-price', 'fr', 'Fisher-Price');
                PERFORM insert_category_translations('fisher-price', 'ar', 'Fisher-Price');
                PERFORM insert_category_translations('fisher-price', 'en', 'Fisher-Price');
                PERFORM insert_category_translations('fisher-price', 'de', 'Fisher-Price');
                PERFORM insert_category_translations('fisher-price', 'es', 'Fisher-Price');
                PERFORM insert_category_translations('fisher-price', 'it', 'Fisher-Price');

                -- Level 3: vtech
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vtech', 'vtech', 3, l2_id, 'VTech')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('vtech', 'fr', 'VTech');
                PERFORM insert_category_translations('vtech', 'ar', 'VTech');
                PERFORM insert_category_translations('vtech', 'en', 'VTech');
                PERFORM insert_category_translations('vtech', 'de', 'VTech');
                PERFORM insert_category_translations('vtech', 'es', 'VTech');
                PERFORM insert_category_translations('vtech', 'it', 'VTech');

                -- Level 3: little-tikes
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('little-tikes', 'little-tikes', 3, l2_id, 'Little Tikes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('little-tikes', 'fr', 'Little Tikes');
                PERFORM insert_category_translations('little-tikes', 'ar', 'Little Tikes');
                PERFORM insert_category_translations('little-tikes', 'en', 'Little Tikes');
                PERFORM insert_category_translations('little-tikes', 'de', 'Little Tikes');
                PERFORM insert_category_translations('little-tikes', 'es', 'Little Tikes');
                PERFORM insert_category_translations('little-tikes', 'it', 'Little Tikes');

                -- Level 3: lamaze
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lamaze', 'lamaze', 3, l2_id, 'Lamaze')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('lamaze', 'fr', 'Lamaze');
                PERFORM insert_category_translations('lamaze', 'ar', 'Lamaze');
                PERFORM insert_category_translations('lamaze', 'en', 'Lamaze');
                PERFORM insert_category_translations('lamaze', 'de', 'Lamaze');
                PERFORM insert_category_translations('lamaze', 'es', 'Lamaze');
                PERFORM insert_category_translations('lamaze', 'it', 'Lamaze');

        -- Level 1: securite-bebe
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('securite-bebe', 'securite-bebe', 1, root_id, 'Sécurité bébé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('securite-bebe', 'fr', 'Sécurité bébé');
        PERFORM insert_category_translations('securite-bebe', 'ar', 'سلامة الطفل');
        PERFORM insert_category_translations('securite-bebe', 'en', 'Baby safety');
        PERFORM insert_category_translations('securite-bebe', 'de', 'Babysicherheit');
        PERFORM insert_category_translations('securite-bebe', 'es', 'Seguridad del bebé');
        PERFORM insert_category_translations('securite-bebe', 'it', 'Sicurezza bambino');

            -- Level 2: barrieres-securite
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('barrieres-securite', 'barrieres-securite', 2, l1_id, 'Barrières de sécurité')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('barrieres-securite', 'fr', 'Barrières de sécurité');
            PERFORM insert_category_translations('barrieres-securite', 'ar', 'حواجز أمان');
            PERFORM insert_category_translations('barrieres-securite', 'en', 'Safety gates');
            PERFORM insert_category_translations('barrieres-securite', 'de', 'Sicherheitsgitter');
            PERFORM insert_category_translations('barrieres-securite', 'es', 'Barreras de seguridad');
            PERFORM insert_category_translations('barrieres-securite', 'it', 'Cancelletti sicurezza');

            -- Level 2: babyphones
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('babyphones', 'babyphones', 2, l1_id, 'Babyphones')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('babyphones', 'fr', 'Babyphones');
            PERFORM insert_category_translations('babyphones', 'ar', 'مراقب الطفل');
            PERFORM insert_category_translations('babyphones', 'en', 'Baby monitors');
            PERFORM insert_category_translations('babyphones', 'de', 'Babyphone');
            PERFORM insert_category_translations('babyphones', 'es', 'Baby monitors');
            PERFORM insert_category_translations('babyphones', 'it', 'Baby monitor');

            -- Level 2: veilleuses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('veilleuses', 'veilleuses', 2, l1_id, 'Veilleuses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('veilleuses', 'fr', 'Veilleuses');
            PERFORM insert_category_translations('veilleuses', 'ar', 'مصابيح ليلية');
            PERFORM insert_category_translations('veilleuses', 'en', 'Night lights');
            PERFORM insert_category_translations('veilleuses', 'de', 'Nachtlichter');
            PERFORM insert_category_translations('veilleuses', 'es', 'Luz nocturna');
            PERFORM insert_category_translations('veilleuses', 'it', 'Luci notturne');

            -- Level 2: caches-prises
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('caches-prises', 'caches-prises', 2, l1_id, 'Caches-prises')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('caches-prises', 'fr', 'Caches-prises');
            PERFORM insert_category_translations('caches-prises', 'ar', 'أغطية المقابس');
            PERFORM insert_category_translations('caches-prises', 'en', 'Plug covers');
            PERFORM insert_category_translations('caches-prises', 'de', 'Steckdosenschutz');
            PERFORM insert_category_translations('caches-prises', 'es', 'Protectores de enchufe');
            PERFORM insert_category_translations('caches-prises', 'it', 'Copriprese');

            -- Level 2: harnais-bebe
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('harnais-bebe', 'harnais-bebe', 2, l1_id, 'Harnais bébé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('harnais-bebe', 'fr', 'Harnais bébé');
            PERFORM insert_category_translations('harnais-bebe', 'ar', 'أحزمة أمان');
            PERFORM insert_category_translations('harnais-bebe', 'en', 'Safety harnesses');
            PERFORM insert_category_translations('harnais-bebe', 'de', 'Sicherheitsgurte');
            PERFORM insert_category_translations('harnais-bebe', 'es', 'Arneses bebé');
            PERFORM insert_category_translations('harnais-bebe', 'it', 'Imbracature');

            -- Level 2: marques-babyphones
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('marques-babyphones', 'marques-babyphones', 2, l1_id, 'Marques babyphones')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('marques-babyphones', 'fr', 'Marques babyphones');
            PERFORM insert_category_translations('marques-babyphones', 'ar', 'علامات تجارية لمراقبي الأطفال');
            PERFORM insert_category_translations('marques-babyphones', 'en', 'Baby monitor brands');
            PERFORM insert_category_translations('marques-babyphones', 'de', 'Babyphone-Marken');
            PERFORM insert_category_translations('marques-babyphones', 'es', 'Marcas de monitores de bebé');
            PERFORM insert_category_translations('marques-babyphones', 'it', 'Marche baby monitor');

                -- Level 3: philips-avent
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('philips-avent', 'philips-avent', 3, l2_id, 'Philips Avent')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('philips-avent', 'fr', 'Philips Avent');
                PERFORM insert_category_translations('philips-avent', 'ar', 'Philips Avent');
                PERFORM insert_category_translations('philips-avent', 'en', 'Philips Avent');
                PERFORM insert_category_translations('philips-avent', 'de', 'Philips Avent');
                PERFORM insert_category_translations('philips-avent', 'es', 'Philips Avent');
                PERFORM insert_category_translations('philips-avent', 'it', 'Philips Avent');

                -- Level 3: vtech
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vtech', 'vtech', 3, l2_id, 'VTech')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('vtech', 'fr', 'VTech');
                PERFORM insert_category_translations('vtech', 'ar', 'VTech');
                PERFORM insert_category_translations('vtech', 'en', 'VTech');
                PERFORM insert_category_translations('vtech', 'de', 'VTech');
                PERFORM insert_category_translations('vtech', 'es', 'VTech');
                PERFORM insert_category_translations('vtech', 'it', 'VTech');

                -- Level 3: motorola
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('motorola', 'motorola', 3, l2_id, 'Motorola')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('motorola', 'fr', 'Motorola');
                PERFORM insert_category_translations('motorola', 'ar', 'Motorola');
                PERFORM insert_category_translations('motorola', 'en', 'Motorola');
                PERFORM insert_category_translations('motorola', 'de', 'Motorola');
                PERFORM insert_category_translations('motorola', 'es', 'Motorola');
                PERFORM insert_category_translations('motorola', 'it', 'Motorola');

                -- Level 3: nuk
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('nuk', 'nuk', 3, l2_id, 'NUK')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('nuk', 'fr', 'NUK');
                PERFORM insert_category_translations('nuk', 'ar', 'NUK');
                PERFORM insert_category_translations('nuk', 'en', 'NUK');
                PERFORM insert_category_translations('nuk', 'de', 'NUK');
                PERFORM insert_category_translations('nuk', 'es', 'NUK');
                PERFORM insert_category_translations('nuk', 'it', 'NUK');

        -- Level 1: chambre-bebe-deco
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chambre-bebe-deco', 'chambre-bebe-deco', 1, root_id, 'Chambre bébé & déco')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('chambre-bebe-deco', 'fr', 'Chambre bébé & déco');
        PERFORM insert_category_translations('chambre-bebe-deco', 'ar', 'غرفة الطفل والديكور');
        PERFORM insert_category_translations('chambre-bebe-deco', 'en', 'Nursery & decor');
        PERFORM insert_category_translations('chambre-bebe-deco', 'de', 'Kinderzimmer & Deko');
        PERFORM insert_category_translations('chambre-bebe-deco', 'es', 'Habitación del bebé & deco');
        PERFORM insert_category_translations('chambre-bebe-deco', 'it', 'Cameretta & decorazioni');

            -- Level 2: parures-lit-bebe
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('parures-lit-bebe', 'parures-lit-bebe', 2, l1_id, 'Parures de lit bébé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('parures-lit-bebe', 'fr', 'Parures de lit bébé');
            PERFORM insert_category_translations('parures-lit-bebe', 'ar', 'أطقم سرير للرضع');
            PERFORM insert_category_translations('parures-lit-bebe', 'en', 'Crib bedding sets');
            PERFORM insert_category_translations('parures-lit-bebe', 'de', 'Bettwäsche-Sets Baby');
            PERFORM insert_category_translations('parures-lit-bebe', 'es', 'Juego de cuna');
            PERFORM insert_category_translations('parures-lit-bebe', 'it', 'Set biancheria culla');

            -- Level 2: rideaux-chambre-bebe
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('rideaux-chambre-bebe', 'rideaux-chambre-bebe', 2, l1_id, 'Rideaux chambre bébé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('rideaux-chambre-bebe', 'fr', 'Rideaux chambre bébé');
            PERFORM insert_category_translations('rideaux-chambre-bebe', 'ar', 'ستائر غرفة الطفل');
            PERFORM insert_category_translations('rideaux-chambre-bebe', 'en', 'Nursery curtains');
            PERFORM insert_category_translations('rideaux-chambre-bebe', 'de', 'Vorhänge Kinderzimmer');
            PERFORM insert_category_translations('rideaux-chambre-bebe', 'es', 'Cortinas habitación bebé');
            PERFORM insert_category_translations('rideaux-chambre-bebe', 'it', 'Tende cameretta bebé');

            -- Level 2: luminaires-chambre-bebe
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('luminaires-chambre-bebe', 'luminaires-chambre-bebe', 2, l1_id, 'Luminaires chambre bébé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('luminaires-chambre-bebe', 'fr', 'Luminaires chambre bébé');
            PERFORM insert_category_translations('luminaires-chambre-bebe', 'ar', 'إنارة غرفة الطفل');
            PERFORM insert_category_translations('luminaires-chambre-bebe', 'en', 'Nursery lighting');
            PERFORM insert_category_translations('luminaires-chambre-bebe', 'de', 'Lampen Kinderzimmer');
            PERFORM insert_category_translations('luminaires-chambre-bebe', 'es', 'Iluminación habitación bebé');
            PERFORM insert_category_translations('luminaires-chambre-bebe', 'it', 'Illuminazione cameretta');

            -- Level 2: rangements-chambre-bebe
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('rangements-chambre-bebe', 'rangements-chambre-bebe', 2, l1_id, 'Rangements chambre bébé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('rangements-chambre-bebe', 'fr', 'Rangements chambre bébé');
            PERFORM insert_category_translations('rangements-chambre-bebe', 'ar', 'تخزين غرفة الطفل');
            PERFORM insert_category_translations('rangements-chambre-bebe', 'en', 'Nursery storage');
            PERFORM insert_category_translations('rangements-chambre-bebe', 'de', 'Aufbewahrung Kinderzimmer');
            PERFORM insert_category_translations('rangements-chambre-bebe', 'es', 'Almacenaje habitación bebé');
            PERFORM insert_category_translations('rangements-chambre-bebe', 'it', 'Contenitori/organizzazione');

            -- Level 2: stickers-muraux-bebe
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('stickers-muraux-bebe', 'stickers-muraux-bebe', 2, l1_id, 'Stickers muraux bébé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('stickers-muraux-bebe', 'fr', 'Stickers muraux bébé');
            PERFORM insert_category_translations('stickers-muraux-bebe', 'ar', 'ملصقات جدارية للرضع');
            PERFORM insert_category_translations('stickers-muraux-bebe', 'en', 'Nursery wall decals');
            PERFORM insert_category_translations('stickers-muraux-bebe', 'de', 'Wandsticker Baby');
            PERFORM insert_category_translations('stickers-muraux-bebe', 'es', 'Pegatinas pared bebé');
            PERFORM insert_category_translations('stickers-muraux-bebe', 'it', 'Adesivi murali bebé');

        -- Level 1: porte-bebes-echarpes
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('porte-bebes-echarpes', 'porte-bebes-echarpes', 1, root_id, 'Porte-bébés & écharpes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('porte-bebes-echarpes', 'fr', 'Porte-bébés & écharpes');
        PERFORM insert_category_translations('porte-bebes-echarpes', 'ar', 'حمّالات وأوشحة الأطفال');
        PERFORM insert_category_translations('porte-bebes-echarpes', 'en', 'Baby carriers & wraps');
        PERFORM insert_category_translations('porte-bebes-echarpes', 'de', 'Tragen & Tücher');
        PERFORM insert_category_translations('porte-bebes-echarpes', 'es', 'Portabebés & fulares');
        PERFORM insert_category_translations('porte-bebes-echarpes', 'it', 'Marsupi & fasce');

            -- Level 2: echarpes-de-portage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('echarpes-de-portage', 'echarpes-de-portage', 2, l1_id, 'Écharpes de portage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('echarpes-de-portage', 'fr', 'Écharpes de portage');
            PERFORM insert_category_translations('echarpes-de-portage', 'ar', 'أوشحة الحمل');
            PERFORM insert_category_translations('echarpes-de-portage', 'en', 'Wraps');
            PERFORM insert_category_translations('echarpes-de-portage', 'de', 'Tragetücher');
            PERFORM insert_category_translations('echarpes-de-portage', 'es', 'Fulares porteo');
            PERFORM insert_category_translations('echarpes-de-portage', 'it', 'Fasce portabebè');

            -- Level 2: porte-bebes-preformes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('porte-bebes-preformes', 'porte-bebes-preformes', 2, l1_id, 'Porte-bébés préformés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('porte-bebes-preformes', 'fr', 'Porte-bébés préformés');
            PERFORM insert_category_translations('porte-bebes-preformes', 'ar', 'حمالات مُشكّلة مسبقًا');
            PERFORM insert_category_translations('porte-bebes-preformes', 'en', 'Structured carriers');
            PERFORM insert_category_translations('porte-bebes-preformes', 'de', 'Vorgeformte Tragen');
            PERFORM insert_category_translations('porte-bebes-preformes', 'es', 'Portabebés preformados');
            PERFORM insert_category_translations('porte-bebes-preformes', 'it', 'Marsupi preformati');

            -- Level 2: mei-tai
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mei-tai', 'mei-tai', 2, l1_id, 'Mei Tai')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mei-tai', 'fr', 'Mei Tai');
            PERFORM insert_category_translations('mei-tai', 'ar', 'ماي تاي');
            PERFORM insert_category_translations('mei-tai', 'en', 'Mei Tai');
            PERFORM insert_category_translations('mei-tai', 'de', 'Mei Tai');
            PERFORM insert_category_translations('mei-tai', 'es', 'Mei Tai');
            PERFORM insert_category_translations('mei-tai', 'it', 'Mei Tai');

            -- Level 2: slings
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('slings', 'slings', 2, l1_id, 'Slings')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('slings', 'fr', 'Slings');
            PERFORM insert_category_translations('slings', 'ar', 'حمالات حلقية');
            PERFORM insert_category_translations('slings', 'en', 'Ring slings');
            PERFORM insert_category_translations('slings', 'de', 'Ringslings');
            PERFORM insert_category_translations('slings', 'es', 'Ring slings');
            PERFORM insert_category_translations('slings', 'it', 'Ring sling');

            -- Level 2: marques-porte-bebes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('marques-porte-bebes', 'marques-porte-bebes', 2, l1_id, 'Marques porte-bébés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('marques-porte-bebes', 'fr', 'Marques porte-bébés');
            PERFORM insert_category_translations('marques-porte-bebes', 'ar', 'علامات تجارية لحمالات الأطفال');
            PERFORM insert_category_translations('marques-porte-bebes', 'en', 'Carrier brands');
            PERFORM insert_category_translations('marques-porte-bebes', 'de', 'Trage-Marken');
            PERFORM insert_category_translations('marques-porte-bebes', 'es', 'Marcas de portabebés');
            PERFORM insert_category_translations('marques-porte-bebes', 'it', 'Marche marsupi');

                -- Level 3: babybjorn
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('babybjorn', 'babybjorn', 3, l2_id, 'BabyBjörn')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('babybjorn', 'fr', 'BabyBjörn');
                PERFORM insert_category_translations('babybjorn', 'ar', 'BabyBjörn');
                PERFORM insert_category_translations('babybjorn', 'en', 'BabyBjörn');
                PERFORM insert_category_translations('babybjorn', 'de', 'BabyBjörn');
                PERFORM insert_category_translations('babybjorn', 'es', 'BabyBjörn');
                PERFORM insert_category_translations('babybjorn', 'it', 'BabyBjörn');

                -- Level 3: ergobaby
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ergobaby', 'ergobaby', 3, l2_id, 'Ergobaby')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('ergobaby', 'fr', 'Ergobaby');
                PERFORM insert_category_translations('ergobaby', 'ar', 'Ergobaby');
                PERFORM insert_category_translations('ergobaby', 'en', 'Ergobaby');
                PERFORM insert_category_translations('ergobaby', 'de', 'Ergobaby');
                PERFORM insert_category_translations('ergobaby', 'es', 'Ergobaby');
                PERFORM insert_category_translations('ergobaby', 'it', 'Ergobaby');

                -- Level 3: manduca
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('manduca', 'manduca', 3, l2_id, 'Manduca')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('manduca', 'fr', 'Manduca');
                PERFORM insert_category_translations('manduca', 'ar', 'Manduca');
                PERFORM insert_category_translations('manduca', 'en', 'Manduca');
                PERFORM insert_category_translations('manduca', 'de', 'Manduca');
                PERFORM insert_category_translations('manduca', 'es', 'Manduca');
                PERFORM insert_category_translations('manduca', 'it', 'Manduca');

                -- Level 3: boba
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('boba', 'boba', 3, l2_id, 'Boba')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('boba', 'fr', 'Boba');
                PERFORM insert_category_translations('boba', 'ar', 'Boba');
                PERFORM insert_category_translations('boba', 'en', 'Boba');
                PERFORM insert_category_translations('boba', 'de', 'Boba');
                PERFORM insert_category_translations('boba', 'es', 'Boba');
                PERFORM insert_category_translations('boba', 'it', 'Boba');

        -- Level 1: sacs-a-langer
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-a-langer', 'sacs-a-langer', 1, root_id, 'Sacs à langer')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('sacs-a-langer', 'fr', 'Sacs à langer');
        PERFORM insert_category_translations('sacs-a-langer', 'ar', 'حقائب تغيير الأطفال');
        PERFORM insert_category_translations('sacs-a-langer', 'en', 'Diaper bags');
        PERFORM insert_category_translations('sacs-a-langer', 'de', 'Wickeltaschen');
        PERFORM insert_category_translations('sacs-a-langer', 'es', 'Bolsos cambiadores');
        PERFORM insert_category_translations('sacs-a-langer', 'it', 'Borse fasciatoio');

            -- Level 2: sacs-classiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-classiques', 'sacs-classiques', 2, l1_id, 'Sacs classiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-classiques', 'fr', 'Sacs classiques');
            PERFORM insert_category_translations('sacs-classiques', 'ar', 'حقائب تقليدية');
            PERFORM insert_category_translations('sacs-classiques', 'en', 'Classic bags');
            PERFORM insert_category_translations('sacs-classiques', 'de', 'Klassische Taschen');
            PERFORM insert_category_translations('sacs-classiques', 'es', 'Bolsos clásicos');
            PERFORM insert_category_translations('sacs-classiques', 'it', 'Borse classiche');

            -- Level 2: sacs-a-dos-a-langer
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-a-dos-a-langer', 'sacs-a-dos-a-langer', 2, l1_id, 'Sacs à dos à langer')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-a-dos-a-langer', 'fr', 'Sacs à dos à langer');
            PERFORM insert_category_translations('sacs-a-dos-a-langer', 'ar', 'حقائب ظهر للتغيير');
            PERFORM insert_category_translations('sacs-a-dos-a-langer', 'en', 'Backpack diaper bags');
            PERFORM insert_category_translations('sacs-a-dos-a-langer', 'de', 'Wickelrucksäcke');
            PERFORM insert_category_translations('sacs-a-dos-a-langer', 'es', 'Mochilas cambiadoras');
            PERFORM insert_category_translations('sacs-a-dos-a-langer', 'it', 'Zaini fasciatoio');

            -- Level 2: accessoires-sac-a-langer
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-sac-a-langer', 'accessoires-sac-a-langer', 2, l1_id, 'Accessoires sac à langer')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('accessoires-sac-a-langer', 'fr', 'Accessoires sac à langer');
            PERFORM insert_category_translations('accessoires-sac-a-langer', 'ar', 'إكسسوارات حقيبة تغيير');
            PERFORM insert_category_translations('accessoires-sac-a-langer', 'en', 'Diaper bag accessories');
            PERFORM insert_category_translations('accessoires-sac-a-langer', 'de', 'Zubehör Wickeltasche');
            PERFORM insert_category_translations('accessoires-sac-a-langer', 'es', 'Accesorios del bolso cambiador');
            PERFORM insert_category_translations('accessoires-sac-a-langer', 'it', 'Accessori borsa fasciatoio');

            -- Level 2: organiseurs-poussette
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('organiseurs-poussette', 'organiseurs-poussette', 2, l1_id, 'Organiseurs poussette')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('organiseurs-poussette', 'fr', 'Organiseurs poussette');
            PERFORM insert_category_translations('organiseurs-poussette', 'ar', 'منظّمات لعربة الأطفال');
            PERFORM insert_category_translations('organiseurs-poussette', 'en', 'Stroller organizers');
            PERFORM insert_category_translations('organiseurs-poussette', 'de', 'Kinderwagen-Organizer');
            PERFORM insert_category_translations('organiseurs-poussette', 'es', 'Organizadores para cochecito');
            PERFORM insert_category_translations('organiseurs-poussette', 'it', 'Organizer per passeggino');

            -- Level 2: marques-sacs-a-langer
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('marques-sacs-a-langer', 'marques-sacs-a-langer', 2, l1_id, 'Marques sacs à langer')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('marques-sacs-a-langer', 'fr', 'Marques sacs à langer');
            PERFORM insert_category_translations('marques-sacs-a-langer', 'ar', 'علامات تجارية لحقائب التغيير');
            PERFORM insert_category_translations('marques-sacs-a-langer', 'en', 'Diaper bag brands');
            PERFORM insert_category_translations('marques-sacs-a-langer', 'de', 'Wickeltaschen-Marken');
            PERFORM insert_category_translations('marques-sacs-a-langer', 'es', 'Marcas de bolsos cambiadores');
            PERFORM insert_category_translations('marques-sacs-a-langer', 'it', 'Marche borse fasciatoio');

                -- Level 3: skip-hop
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('skip-hop', 'skip-hop', 3, l2_id, 'Skip Hop')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('skip-hop', 'fr', 'Skip Hop');
                PERFORM insert_category_translations('skip-hop', 'ar', 'Skip Hop');
                PERFORM insert_category_translations('skip-hop', 'en', 'Skip Hop');
                PERFORM insert_category_translations('skip-hop', 'de', 'Skip Hop');
                PERFORM insert_category_translations('skip-hop', 'es', 'Skip Hop');
                PERFORM insert_category_translations('skip-hop', 'it', 'Skip Hop');

                -- Level 3: lassig
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lassig', 'lassig', 3, l2_id, 'Lässig')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('lassig', 'fr', 'Lässig');
                PERFORM insert_category_translations('lassig', 'ar', 'Lässig');
                PERFORM insert_category_translations('lassig', 'en', 'Lässig');
                PERFORM insert_category_translations('lassig', 'de', 'Lässig');
                PERFORM insert_category_translations('lassig', 'es', 'Lässig');
                PERFORM insert_category_translations('lassig', 'it', 'Lässig');

                -- Level 3: babymoov
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('babymoov', 'babymoov', 3, l2_id, 'Babymoov')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('babymoov', 'fr', 'Babymoov');
                PERFORM insert_category_translations('babymoov', 'ar', 'Babymoov');
                PERFORM insert_category_translations('babymoov', 'en', 'Babymoov');
                PERFORM insert_category_translations('babymoov', 'de', 'Babymoov');
                PERFORM insert_category_translations('babymoov', 'es', 'Babymoov');
                PERFORM insert_category_translations('babymoov', 'it', 'Babymoov');

                -- Level 3: storksak
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('storksak', 'storksak', 3, l2_id, 'Storksak')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('storksak', 'fr', 'Storksak');
                PERFORM insert_category_translations('storksak', 'ar', 'Storksak');
                PERFORM insert_category_translations('storksak', 'en', 'Storksak');
                PERFORM insert_category_translations('storksak', 'de', 'Storksak');
                PERFORM insert_category_translations('storksak', 'es', 'Storksak');
                PERFORM insert_category_translations('storksak', 'it', 'Storksak');
END $$;