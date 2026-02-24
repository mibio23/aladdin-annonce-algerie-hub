-- Migration: Vélo, Cyclisme & Équipements (Generated Recursive)
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

    -- Level 0: velo-cyclisme-equipements
    INSERT INTO categories (id, slug, level, name)
    VALUES ('velo-cyclisme-equipements', 'velo-cyclisme-equipements', 0, 'Vélo, Cyclisme & Équipements')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 0, name = EXCLUDED.name
    RETURNING id INTO root_id;
    PERFORM insert_category_translations('velo-cyclisme-equipements', 'fr', 'Vélo, Cyclisme & Équipements');
    PERFORM insert_category_translations('velo-cyclisme-equipements', 'ar', 'الدراجات، ركوب الدراجات والمعدات');
    PERFORM insert_category_translations('velo-cyclisme-equipements', 'en', 'Bikes, Cycling & Equipment');
    PERFORM insert_category_translations('velo-cyclisme-equipements', 'de', 'Fahrräder, Radsport & Ausrüstung');
    PERFORM insert_category_translations('velo-cyclisme-equipements', 'es', 'Bicicletas, Ciclismo y Equipamiento');
    PERFORM insert_category_translations('velo-cyclisme-equipements', 'it', 'Bici, Ciclismo & Attrezzature');

        -- Level 1: types-de-velos
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('types-de-velos', 'types-de-velos', 1, root_id, 'Types de vélos')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('types-de-velos', 'fr', 'Types de vélos');
        PERFORM insert_category_translations('types-de-velos', 'ar', 'أنواع الدراجات');
        PERFORM insert_category_translations('types-de-velos', 'en', 'Bike Types');
        PERFORM insert_category_translations('types-de-velos', 'de', 'Fahrradtypen');
        PERFORM insert_category_translations('types-de-velos', 'es', 'Tipos de bicicletas');
        PERFORM insert_category_translations('types-de-velos', 'it', 'Tipi di bici');

            -- Level 2: velos-de-route
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('velos-de-route', 'velos-de-route', 2, l1_id, 'Vélos de route')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('velos-de-route', 'fr', 'Vélos de route');
            PERFORM insert_category_translations('velos-de-route', 'ar', 'دراجات طريق');
            PERFORM insert_category_translations('velos-de-route', 'en', 'Road bikes');
            PERFORM insert_category_translations('velos-de-route', 'de', 'Rennräder');
            PERFORM insert_category_translations('velos-de-route', 'es', 'Bicicletas de carretera');
            PERFORM insert_category_translations('velos-de-route', 'it', 'Bici da strada');

            -- Level 2: velos-de-montagne-vtt
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('velos-de-montagne-vtt', 'velos-de-montagne-vtt', 2, l1_id, 'Vélos de montagne (VTT)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('velos-de-montagne-vtt', 'fr', 'Vélos de montagne (VTT)');
            PERFORM insert_category_translations('velos-de-montagne-vtt', 'ar', 'دراجات جبلية (MTB)');
            PERFORM insert_category_translations('velos-de-montagne-vtt', 'en', 'Mountain bikes (MTB)');
            PERFORM insert_category_translations('velos-de-montagne-vtt', 'de', 'Mountainbikes (MTB)');
            PERFORM insert_category_translations('velos-de-montagne-vtt', 'es', 'Bicicletas de montaña (MTB)');
            PERFORM insert_category_translations('velos-de-montagne-vtt', 'it', 'Mountain bike (MTB)');

            -- Level 2: velos-hybrides
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('velos-hybrides', 'velos-hybrides', 2, l1_id, 'Vélos hybrides')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('velos-hybrides', 'fr', 'Vélos hybrides');
            PERFORM insert_category_translations('velos-hybrides', 'ar', 'دراجات هجينة');
            PERFORM insert_category_translations('velos-hybrides', 'en', 'Hybrid bikes');
            PERFORM insert_category_translations('velos-hybrides', 'de', 'Trekking-/Hybridräder');
            PERFORM insert_category_translations('velos-hybrides', 'es', 'Bicicletas híbridas');
            PERFORM insert_category_translations('velos-hybrides', 'it', 'Bici ibride');

            -- Level 2: velos-gravel
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('velos-gravel', 'velos-gravel', 2, l1_id, 'Vélos gravel')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('velos-gravel', 'fr', 'Vélos gravel');
            PERFORM insert_category_translations('velos-gravel', 'ar', 'دراجات Gravel');
            PERFORM insert_category_translations('velos-gravel', 'en', 'Gravel bikes');
            PERFORM insert_category_translations('velos-gravel', 'de', 'Gravelbikes');
            PERFORM insert_category_translations('velos-gravel', 'es', 'Bicicletas gravel');
            PERFORM insert_category_translations('velos-gravel', 'it', 'Gravel bike');

            -- Level 2: velos-de-ville
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('velos-de-ville', 'velos-de-ville', 2, l1_id, 'Vélos de ville')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('velos-de-ville', 'fr', 'Vélos de ville');
            PERFORM insert_category_translations('velos-de-ville', 'ar', 'دراجات مدينة');
            PERFORM insert_category_translations('velos-de-ville', 'en', 'City bikes');
            PERFORM insert_category_translations('velos-de-ville', 'de', 'Cityräder');
            PERFORM insert_category_translations('velos-de-ville', 'es', 'Bicicletas de ciudad');
            PERFORM insert_category_translations('velos-de-ville', 'it', 'Bici da città');

            -- Level 2: velos-pliants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('velos-pliants', 'velos-pliants', 2, l1_id, 'Vélos pliants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('velos-pliants', 'fr', 'Vélos pliants');
            PERFORM insert_category_translations('velos-pliants', 'ar', 'دراجات قابلة للطي');
            PERFORM insert_category_translations('velos-pliants', 'en', 'Folding bikes');
            PERFORM insert_category_translations('velos-pliants', 'de', 'Falträder');
            PERFORM insert_category_translations('velos-pliants', 'es', 'Bicicletas plegables');
            PERFORM insert_category_translations('velos-pliants', 'it', 'Bici pieghevoli');

            -- Level 2: velos-bmx
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('velos-bmx', 'velos-bmx', 2, l1_id, 'Vélos BMX')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('velos-bmx', 'fr', 'Vélos BMX');
            PERFORM insert_category_translations('velos-bmx', 'ar', 'دراجات BMX');
            PERFORM insert_category_translations('velos-bmx', 'en', 'BMX bikes');
            PERFORM insert_category_translations('velos-bmx', 'de', 'BMX-Räder');
            PERFORM insert_category_translations('velos-bmx', 'es', 'Bicicletas BMX');
            PERFORM insert_category_translations('velos-bmx', 'it', 'BMX');

            -- Level 2: velos-electriques-vae
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('velos-electriques-vae', 'velos-electriques-vae', 2, l1_id, 'Vélos électriques (VAE)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('velos-electriques-vae', 'fr', 'Vélos électriques (VAE)');
            PERFORM insert_category_translations('velos-electriques-vae', 'ar', 'دراجات كهربائية (E‑Bike)');
            PERFORM insert_category_translations('velos-electriques-vae', 'en', 'Electric bikes (E-bike)');
            PERFORM insert_category_translations('velos-electriques-vae', 'de', 'E-Bikes');
            PERFORM insert_category_translations('velos-electriques-vae', 'es', 'Bicicletas eléctricas (e-bike)');
            PERFORM insert_category_translations('velos-electriques-vae', 'it', 'E-bike');

            -- Level 2: velos-cargo
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('velos-cargo', 'velos-cargo', 2, l1_id, 'Vélos cargo')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('velos-cargo', 'fr', 'Vélos cargo');
            PERFORM insert_category_translations('velos-cargo', 'ar', 'دراجات شحن');
            PERFORM insert_category_translations('velos-cargo', 'en', 'Cargo bikes');
            PERFORM insert_category_translations('velos-cargo', 'de', 'Lastenräder');
            PERFORM insert_category_translations('velos-cargo', 'es', 'Bicicletas de carga');
            PERFORM insert_category_translations('velos-cargo', 'it', 'Cargo bike');

            -- Level 2: tandems
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tandems', 'tandems', 2, l1_id, 'Tandems')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tandems', 'fr', 'Tandems');
            PERFORM insert_category_translations('tandems', 'ar', 'دراجات ترادفية');
            PERFORM insert_category_translations('tandems', 'en', 'Tandems');
            PERFORM insert_category_translations('tandems', 'de', 'Tandems');
            PERFORM insert_category_translations('tandems', 'es', 'Tándems');
            PERFORM insert_category_translations('tandems', 'it', 'Tandem');

            -- Level 2: velos-enfants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('velos-enfants', 'velos-enfants', 2, l1_id, 'Vélos enfants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('velos-enfants', 'fr', 'Vélos enfants');
            PERFORM insert_category_translations('velos-enfants', 'ar', 'دراجات أطفال');
            PERFORM insert_category_translations('velos-enfants', 'en', 'Kids’ bikes');
            PERFORM insert_category_translations('velos-enfants', 'de', 'Kinderfahrräder');
            PERFORM insert_category_translations('velos-enfants', 'es', 'Bicicletas infantiles');
            PERFORM insert_category_translations('velos-enfants', 'it', 'Bici per bambini');

            -- Level 2: draisiennes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('draisiennes', 'draisiennes', 2, l1_id, 'Draisiennes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('draisiennes', 'fr', 'Draisiennes');
            PERFORM insert_category_translations('draisiennes', 'ar', 'دراجات توازن');
            PERFORM insert_category_translations('draisiennes', 'en', 'Balance bikes');
            PERFORM insert_category_translations('draisiennes', 'de', 'Laufräder');
            PERFORM insert_category_translations('draisiennes', 'es', 'Bicicletas de equilibrio');
            PERFORM insert_category_translations('draisiennes', 'it', 'Balance bike');

        -- Level 1: equipements-cyclistes
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('equipements-cyclistes', 'equipements-cyclistes', 1, root_id, 'Équipements cyclistes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('equipements-cyclistes', 'fr', 'Équipements cyclistes');
        PERFORM insert_category_translations('equipements-cyclistes', 'ar', 'معدات راكبي الدراجات');
        PERFORM insert_category_translations('equipements-cyclistes', 'en', 'Cycling Gear');
        PERFORM insert_category_translations('equipements-cyclistes', 'de', 'Radsport-Ausrüstung');
        PERFORM insert_category_translations('equipements-cyclistes', 'es', 'Equipamiento ciclista');
        PERFORM insert_category_translations('equipements-cyclistes', 'it', 'Equipaggiamento ciclistico');

            -- Level 2: casques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('casques', 'casques', 2, l1_id, 'Casques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('casques', 'fr', 'Casques');
            PERFORM insert_category_translations('casques', 'ar', 'خوذ');
            PERFORM insert_category_translations('casques', 'en', 'Helmets');
            PERFORM insert_category_translations('casques', 'de', 'Helme');
            PERFORM insert_category_translations('casques', 'es', 'Cascos');
            PERFORM insert_category_translations('casques', 'it', 'Caschi');

            -- Level 2: gants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gants', 'gants', 2, l1_id, 'Gants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gants', 'fr', 'Gants');
            PERFORM insert_category_translations('gants', 'ar', 'قفازات');
            PERFORM insert_category_translations('gants', 'en', 'Gloves');
            PERFORM insert_category_translations('gants', 'de', 'Handschuhe');
            PERFORM insert_category_translations('gants', 'es', 'Guantes');
            PERFORM insert_category_translations('gants', 'it', 'Guanti');

            -- Level 2: lunettes-de-cyclisme
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lunettes-de-cyclisme', 'lunettes-de-cyclisme', 2, l1_id, 'Lunettes de cyclisme')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lunettes-de-cyclisme', 'fr', 'Lunettes de cyclisme');
            PERFORM insert_category_translations('lunettes-de-cyclisme', 'ar', 'نظارات ركوب الدراجات');
            PERFORM insert_category_translations('lunettes-de-cyclisme', 'en', 'Cycling glasses');
            PERFORM insert_category_translations('lunettes-de-cyclisme', 'de', 'Radsportbrillen');
            PERFORM insert_category_translations('lunettes-de-cyclisme', 'es', 'Gafas de ciclismo');
            PERFORM insert_category_translations('lunettes-de-cyclisme', 'it', 'Occhiali da ciclismo');

            -- Level 2: maillots
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('maillots', 'maillots', 2, l1_id, 'Maillots')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('maillots', 'fr', 'Maillots');
            PERFORM insert_category_translations('maillots', 'ar', 'قمصان');
            PERFORM insert_category_translations('maillots', 'en', 'Jerseys');
            PERFORM insert_category_translations('maillots', 'de', 'Trikots');
            PERFORM insert_category_translations('maillots', 'es', 'Maillots');
            PERFORM insert_category_translations('maillots', 'it', 'Maglie');

            -- Level 2: cuissards
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cuissards', 'cuissards', 2, l1_id, 'Cuissards')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cuissards', 'fr', 'Cuissards');
            PERFORM insert_category_translations('cuissards', 'ar', 'سراويل مبطنة');
            PERFORM insert_category_translations('cuissards', 'en', 'Bib shorts');
            PERFORM insert_category_translations('cuissards', 'de', 'Radhosen');
            PERFORM insert_category_translations('cuissards', 'es', 'Culottes');
            PERFORM insert_category_translations('cuissards', 'it', 'Salopette');

            -- Level 2: chaussures-de-cyclisme
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chaussures-de-cyclisme', 'chaussures-de-cyclisme', 2, l1_id, 'Chaussures de cyclisme')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chaussures-de-cyclisme', 'fr', 'Chaussures de cyclisme');
            PERFORM insert_category_translations('chaussures-de-cyclisme', 'ar', 'أحذية ركوب الدراجات');
            PERFORM insert_category_translations('chaussures-de-cyclisme', 'en', 'Cycling shoes');
            PERFORM insert_category_translations('chaussures-de-cyclisme', 'de', 'Radschuhe');
            PERFORM insert_category_translations('chaussures-de-cyclisme', 'es', 'Zapatillas de ciclismo');
            PERFORM insert_category_translations('chaussures-de-cyclisme', 'it', 'Scarpe da ciclismo');

            -- Level 2: protections-genouilleres-coudieres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('protections-genouilleres-coudieres', 'protections-genouilleres-coudieres', 2, l1_id, 'Protections (genouillères, coudières)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('protections-genouilleres-coudieres', 'fr', 'Protections (genouillères, coudières)');
            PERFORM insert_category_translations('protections-genouilleres-coudieres', 'ar', 'واقيات (ركب، مرفقين)');
            PERFORM insert_category_translations('protections-genouilleres-coudieres', 'en', 'Protective gear (knee, elbow)');
            PERFORM insert_category_translations('protections-genouilleres-coudieres', 'de', 'Schutzausrüstung (Knie, Ellenbogen)');
            PERFORM insert_category_translations('protections-genouilleres-coudieres', 'es', 'Protecciones (rodilleras, coderas)');
            PERFORM insert_category_translations('protections-genouilleres-coudieres', 'it', 'Protezioni (ginocchia, gomiti)');

            -- Level 2: gilets-reflechissants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gilets-reflechissants', 'gilets-reflechissants', 2, l1_id, 'Gilets réfléchissants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gilets-reflechissants', 'fr', 'Gilets réfléchissants');
            PERFORM insert_category_translations('gilets-reflechissants', 'ar', 'سترات عاكسة');
            PERFORM insert_category_translations('gilets-reflechissants', 'en', 'Reflective vests');
            PERFORM insert_category_translations('gilets-reflechissants', 'de', 'Reflexwesten');
            PERFORM insert_category_translations('gilets-reflechissants', 'es', 'Chalecos reflectantes');
            PERFORM insert_category_translations('gilets-reflechissants', 'it', 'Gilet riflettenti');

            -- Level 2: sacs-a-dos-velo
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-a-dos-velo', 'sacs-a-dos-velo', 2, l1_id, 'Sacs à dos vélo')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-a-dos-velo', 'fr', 'Sacs à dos vélo');
            PERFORM insert_category_translations('sacs-a-dos-velo', 'ar', 'حقائب ظهر للدراجات');
            PERFORM insert_category_translations('sacs-a-dos-velo', 'en', 'Cycling backpacks');
            PERFORM insert_category_translations('sacs-a-dos-velo', 'de', 'Fahrradrucksäcke');
            PERFORM insert_category_translations('sacs-a-dos-velo', 'es', 'Mochilas de ciclismo');
            PERFORM insert_category_translations('sacs-a-dos-velo', 'it', 'Zaini da ciclismo');

            -- Level 2: gourdes-porte-gourdes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gourdes-porte-gourdes', 'gourdes-porte-gourdes', 2, l1_id, 'Gourdes & porte-gourdes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gourdes-porte-gourdes', 'fr', 'Gourdes & porte-gourdes');
            PERFORM insert_category_translations('gourdes-porte-gourdes', 'ar', 'قوارير وحوامل القوارير');
            PERFORM insert_category_translations('gourdes-porte-gourdes', 'en', 'Bottles & bottle cages');
            PERFORM insert_category_translations('gourdes-porte-gourdes', 'de', 'Flaschen & Flaschenhalter');
            PERFORM insert_category_translations('gourdes-porte-gourdes', 'es', 'Bidones y portabidones');
            PERFORM insert_category_translations('gourdes-porte-gourdes', 'it', 'Borracce e portaborracce');

        -- Level 1: composants-pieces-detachees
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('composants-pieces-detachees', 'composants-pieces-detachees', 1, root_id, 'Composants & pièces détachées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('composants-pieces-detachees', 'fr', 'Composants & pièces détachées');
        PERFORM insert_category_translations('composants-pieces-detachees', 'ar', 'المكوّنات وقطع الغيار');
        PERFORM insert_category_translations('composants-pieces-detachees', 'en', 'Components & Spare Parts');
        PERFORM insert_category_translations('composants-pieces-detachees', 'de', 'Komponenten & Ersatzteile');
        PERFORM insert_category_translations('composants-pieces-detachees', 'es', 'Componentes y repuestos');
        PERFORM insert_category_translations('composants-pieces-detachees', 'it', 'Componenti & ricambi');

            -- Level 2: roues-pneus
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('roues-pneus', 'roues-pneus', 2, l1_id, 'Roues & pneus')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('roues-pneus', 'fr', 'Roues & pneus');
            PERFORM insert_category_translations('roues-pneus', 'ar', 'عجلات وإطارات');
            PERFORM insert_category_translations('roues-pneus', 'en', 'Wheels & tires');
            PERFORM insert_category_translations('roues-pneus', 'de', 'Laufräder & Reifen');
            PERFORM insert_category_translations('roues-pneus', 'es', 'Ruedas y neumáticos');
            PERFORM insert_category_translations('roues-pneus', 'it', 'Ruote & copertoni');

            -- Level 2: chambres-a-air
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chambres-a-air', 'chambres-a-air', 2, l1_id, 'Chambres à air')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chambres-a-air', 'fr', 'Chambres à air');
            PERFORM insert_category_translations('chambres-a-air', 'ar', 'أنابيب داخلية');
            PERFORM insert_category_translations('chambres-a-air', 'en', 'Inner tubes');
            PERFORM insert_category_translations('chambres-a-air', 'de', 'Schläuche');
            PERFORM insert_category_translations('chambres-a-air', 'es', 'Cámaras de aire');
            PERFORM insert_category_translations('chambres-a-air', 'it', 'Camere d’aria');

            -- Level 2: freins-patins-disques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('freins-patins-disques', 'freins-patins-disques', 2, l1_id, 'Freins (patins, disques)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('freins-patins-disques', 'fr', 'Freins (patins, disques)');
            PERFORM insert_category_translations('freins-patins-disques', 'ar', 'فرامل (سفايف، أقراص)');
            PERFORM insert_category_translations('freins-patins-disques', 'en', 'Brakes (pads, discs)');
            PERFORM insert_category_translations('freins-patins-disques', 'de', 'Bremsen (Beläge, Scheiben)');
            PERFORM insert_category_translations('freins-patins-disques', 'es', 'Frenos (zapatas, discos)');
            PERFORM insert_category_translations('freins-patins-disques', 'it', 'Freni (pattini, dischi)');

            -- Level 2: derailleurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('derailleurs', 'derailleurs', 2, l1_id, 'Dérailleurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('derailleurs', 'fr', 'Dérailleurs');
            PERFORM insert_category_translations('derailleurs', 'ar', 'مبدلات');
            PERFORM insert_category_translations('derailleurs', 'en', 'Derailleurs');
            PERFORM insert_category_translations('derailleurs', 'de', 'Schaltwerke');
            PERFORM insert_category_translations('derailleurs', 'es', 'Desviadores');
            PERFORM insert_category_translations('derailleurs', 'it', 'Deragliatori');

            -- Level 2: chaines-cassettes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chaines-cassettes', 'chaines-cassettes', 2, l1_id, 'Chaînes & cassettes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chaines-cassettes', 'fr', 'Chaînes & cassettes');
            PERFORM insert_category_translations('chaines-cassettes', 'ar', 'سلاسل وكاسات');
            PERFORM insert_category_translations('chaines-cassettes', 'en', 'Chains & cassettes');
            PERFORM insert_category_translations('chaines-cassettes', 'de', 'Ketten & Kassetten');
            PERFORM insert_category_translations('chaines-cassettes', 'es', 'Cadenas y cassettes');
            PERFORM insert_category_translations('chaines-cassettes', 'it', 'Catene & cassette');

            -- Level 2: pedales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pedales', 'pedales', 2, l1_id, 'Pédales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pedales', 'fr', 'Pédales');
            PERFORM insert_category_translations('pedales', 'ar', 'دواسات');
            PERFORM insert_category_translations('pedales', 'en', 'Pedals');
            PERFORM insert_category_translations('pedales', 'de', 'Pedale');
            PERFORM insert_category_translations('pedales', 'es', 'Pedales');
            PERFORM insert_category_translations('pedales', 'it', 'Pedali');

            -- Level 2: selles-tiges-de-selle
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('selles-tiges-de-selle', 'selles-tiges-de-selle', 2, l1_id, 'Selles & tiges de selle')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('selles-tiges-de-selle', 'fr', 'Selles & tiges de selle');
            PERFORM insert_category_translations('selles-tiges-de-selle', 'ar', 'مقاعد وأنابيب مقعد');
            PERFORM insert_category_translations('selles-tiges-de-selle', 'en', 'Saddles & seatposts');
            PERFORM insert_category_translations('selles-tiges-de-selle', 'de', 'Sättel & Sattelstützen');
            PERFORM insert_category_translations('selles-tiges-de-selle', 'es', 'Sillines y tijas');
            PERFORM insert_category_translations('selles-tiges-de-selle', 'it', 'Selle & reggisella');

            -- Level 2: guidons-poignees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('guidons-poignees', 'guidons-poignees', 2, l1_id, 'Guidons & poignées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('guidons-poignees', 'fr', 'Guidons & poignées');
            PERFORM insert_category_translations('guidons-poignees', 'ar', 'مقود ومقابض');
            PERFORM insert_category_translations('guidons-poignees', 'en', 'Handlebars & grips');
            PERFORM insert_category_translations('guidons-poignees', 'de', 'Lenker & Griffe');
            PERFORM insert_category_translations('guidons-poignees', 'es', 'Manillares y puños');
            PERFORM insert_category_translations('guidons-poignees', 'it', 'Manubri & manopole');

            -- Level 2: pedaliers
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pedaliers', 'pedaliers', 2, l1_id, 'Pédaliers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pedaliers', 'fr', 'Pédaliers');
            PERFORM insert_category_translations('pedaliers', 'ar', 'مجموعات كرنك');
            PERFORM insert_category_translations('pedaliers', 'en', 'Cranksets');
            PERFORM insert_category_translations('pedaliers', 'de', 'Kurbeln');
            PERFORM insert_category_translations('pedaliers', 'es', 'Bielas');
            PERFORM insert_category_translations('pedaliers', 'it', 'Guarniture');

            -- Level 2: suspensions-fourches
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('suspensions-fourches', 'suspensions-fourches', 2, l1_id, 'Suspensions & fourches')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('suspensions-fourches', 'fr', 'Suspensions & fourches');
            PERFORM insert_category_translations('suspensions-fourches', 'ar', 'ممتصات وصُمّانات/شوكات');
            PERFORM insert_category_translations('suspensions-fourches', 'en', 'Suspensions & forks');
            PERFORM insert_category_translations('suspensions-fourches', 'de', 'Federungen & Gabeln');
            PERFORM insert_category_translations('suspensions-fourches', 'es', 'Suspensiones y horquillas');
            PERFORM insert_category_translations('suspensions-fourches', 'it', 'Sospensioni & forcelle');

            -- Level 2: cadres-kits-cadres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cadres-kits-cadres', 'cadres-kits-cadres', 2, l1_id, 'Cadres & kits-cadres')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cadres-kits-cadres', 'fr', 'Cadres & kits-cadres');
            PERFORM insert_category_translations('cadres-kits-cadres', 'ar', 'إطارات وهياكل');
            PERFORM insert_category_translations('cadres-kits-cadres', 'en', 'Frames & framesets');
            PERFORM insert_category_translations('cadres-kits-cadres', 'de', 'Rahmen & Rahmensets');
            PERFORM insert_category_translations('cadres-kits-cadres', 'es', 'Cuadros y kits de cuadro');
            PERFORM insert_category_translations('cadres-kits-cadres', 'it', 'Telai & frameset');

        -- Level 1: accessoires-velos
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-velos', 'accessoires-velos', 1, root_id, 'Accessoires vélos')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('accessoires-velos', 'fr', 'Accessoires vélos');
        PERFORM insert_category_translations('accessoires-velos', 'ar', 'ملحقات الدراجة');
        PERFORM insert_category_translations('accessoires-velos', 'en', 'Bike Accessories');
        PERFORM insert_category_translations('accessoires-velos', 'de', 'Fahrrad-Zubehör');
        PERFORM insert_category_translations('accessoires-velos', 'es', 'Accesorios para bicicletas');
        PERFORM insert_category_translations('accessoires-velos', 'it', 'Accessori bici');

            -- Level 2: eclairages-avant-arriere
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('eclairages-avant-arriere', 'eclairages-avant-arriere', 2, l1_id, 'Éclairages (avant/arrière)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('eclairages-avant-arriere', 'fr', 'Éclairages (avant/arrière)');
            PERFORM insert_category_translations('eclairages-avant-arriere', 'ar', 'أضواء (أمام/خلف)');
            PERFORM insert_category_translations('eclairages-avant-arriere', 'en', 'Lights (front/rear)');
            PERFORM insert_category_translations('eclairages-avant-arriere', 'de', 'Beleuchtung (vorne/hinten)');
            PERFORM insert_category_translations('eclairages-avant-arriere', 'es', 'Luces (delanteras/traseras)');
            PERFORM insert_category_translations('eclairages-avant-arriere', 'it', 'Luci (anteriore/posteriore)');

            -- Level 2: sonnettes-klaxons
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sonnettes-klaxons', 'sonnettes-klaxons', 2, l1_id, 'Sonnettes & klaxons')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sonnettes-klaxons', 'fr', 'Sonnettes & klaxons');
            PERFORM insert_category_translations('sonnettes-klaxons', 'ar', 'جرس ومنبّهات');
            PERFORM insert_category_translations('sonnettes-klaxons', 'en', 'Bells & horns');
            PERFORM insert_category_translations('sonnettes-klaxons', 'de', 'Klingeln & Hupen');
            PERFORM insert_category_translations('sonnettes-klaxons', 'es', 'Timbres y bocinas');
            PERFORM insert_category_translations('sonnettes-klaxons', 'it', 'Campanelli & clacson');

            -- Level 2: retroviseurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('retroviseurs', 'retroviseurs', 2, l1_id, 'Rétroviseurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('retroviseurs', 'fr', 'Rétroviseurs');
            PERFORM insert_category_translations('retroviseurs', 'ar', 'مرايا');
            PERFORM insert_category_translations('retroviseurs', 'en', 'Mirrors');
            PERFORM insert_category_translations('retroviseurs', 'de', 'Spiegel');
            PERFORM insert_category_translations('retroviseurs', 'es', 'Espejos');
            PERFORM insert_category_translations('retroviseurs', 'it', 'Specchietti');

            -- Level 2: bequilles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bequilles', 'bequilles', 2, l1_id, 'Béquilles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bequilles', 'fr', 'Béquilles');
            PERFORM insert_category_translations('bequilles', 'ar', 'حوامل وقوف');
            PERFORM insert_category_translations('bequilles', 'en', 'Kickstands');
            PERFORM insert_category_translations('bequilles', 'de', 'Ständer');
            PERFORM insert_category_translations('bequilles', 'es', 'Patas de apoyo');
            PERFORM insert_category_translations('bequilles', 'it', 'Cavalletti');

            -- Level 2: porte-bagages
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('porte-bagages', 'porte-bagages', 2, l1_id, 'Porte-bagages')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('porte-bagages', 'fr', 'Porte-bagages');
            PERFORM insert_category_translations('porte-bagages', 'ar', 'رفوف تحميل');
            PERFORM insert_category_translations('porte-bagages', 'en', 'Racks');
            PERFORM insert_category_translations('porte-bagages', 'de', 'Gepäckträger');
            PERFORM insert_category_translations('porte-bagages', 'es', 'Portaequipajes');
            PERFORM insert_category_translations('porte-bagages', 'it', 'Portapacchi');

            -- Level 2: paniers-sacs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('paniers-sacs', 'paniers-sacs', 2, l1_id, 'Paniers & sacs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('paniers-sacs', 'fr', 'Paniers & sacs');
            PERFORM insert_category_translations('paniers-sacs', 'ar', 'سلال وحقائب');
            PERFORM insert_category_translations('paniers-sacs', 'en', 'Baskets & bags');
            PERFORM insert_category_translations('paniers-sacs', 'de', 'Körbe & Taschen');
            PERFORM insert_category_translations('paniers-sacs', 'es', 'Cestas y bolsas');
            PERFORM insert_category_translations('paniers-sacs', 'it', 'Cestini & borse');

            -- Level 2: garde-boue
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('garde-boue', 'garde-boue', 2, l1_id, 'Garde-boue')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('garde-boue', 'fr', 'Garde-boue');
            PERFORM insert_category_translations('garde-boue', 'ar', 'واقيات طين');
            PERFORM insert_category_translations('garde-boue', 'en', 'Fenders');
            PERFORM insert_category_translations('garde-boue', 'de', 'Schutzbleche');
            PERFORM insert_category_translations('garde-boue', 'es', 'Guardabarros');
            PERFORM insert_category_translations('garde-boue', 'it', 'Parafanghi');

            -- Level 2: antivols
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('antivols', 'antivols', 2, l1_id, 'Antivols')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('antivols', 'fr', 'Antivols');
            PERFORM insert_category_translations('antivols', 'ar', 'أقفال');
            PERFORM insert_category_translations('antivols', 'en', 'Locks');
            PERFORM insert_category_translations('antivols', 'de', 'Schlösser');
            PERFORM insert_category_translations('antivols', 'es', 'Antirrobos');
            PERFORM insert_category_translations('antivols', 'it', 'Antifurti');

            -- Level 2: compteurs-gps-velo
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('compteurs-gps-velo', 'compteurs-gps-velo', 2, l1_id, 'Compteurs & GPS vélo')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('compteurs-gps-velo', 'fr', 'Compteurs & GPS vélo');
            PERFORM insert_category_translations('compteurs-gps-velo', 'ar', 'عدّادات وجي بي إس للدراجات');
            PERFORM insert_category_translations('compteurs-gps-velo', 'en', 'Bike computers & GPS');
            PERFORM insert_category_translations('compteurs-gps-velo', 'de', 'Fahrradcomputer & GPS');
            PERFORM insert_category_translations('compteurs-gps-velo', 'es', 'Ciclocomputadores y GPS');
            PERFORM insert_category_translations('compteurs-gps-velo', 'it', 'Ciclocomputer & GPS');

            -- Level 2: supports-smartphone
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('supports-smartphone', 'supports-smartphone', 2, l1_id, 'Supports smartphone')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('supports-smartphone', 'fr', 'Supports smartphone');
            PERFORM insert_category_translations('supports-smartphone', 'ar', 'حوامل الهاتف');
            PERFORM insert_category_translations('supports-smartphone', 'en', 'Phone mounts');
            PERFORM insert_category_translations('supports-smartphone', 'de', 'Handyhalterungen');
            PERFORM insert_category_translations('supports-smartphone', 'es', 'Soportes para smartphone');
            PERFORM insert_category_translations('supports-smartphone', 'it', 'Supporti smartphone');

            -- Level 2: pompes-a-main
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pompes-a-main', 'pompes-a-main', 2, l1_id, 'Pompes à main')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pompes-a-main', 'fr', 'Pompes à main');
            PERFORM insert_category_translations('pompes-a-main', 'ar', 'مضخات يد');
            PERFORM insert_category_translations('pompes-a-main', 'en', 'Mini pumps');
            PERFORM insert_category_translations('pompes-a-main', 'de', 'Minipumpen');
            PERFORM insert_category_translations('pompes-a-main', 'es', 'Bombas de mano');
            PERFORM insert_category_translations('pompes-a-main', 'it', 'Mini-pompe');

            -- Level 2: porte-enfants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('porte-enfants', 'porte-enfants', 2, l1_id, 'Porte-enfants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('porte-enfants', 'fr', 'Porte-enfants');
            PERFORM insert_category_translations('porte-enfants', 'ar', 'مقاعد أطفال');
            PERFORM insert_category_translations('porte-enfants', 'en', 'Child seats');
            PERFORM insert_category_translations('porte-enfants', 'de', 'Kindersitze');
            PERFORM insert_category_translations('porte-enfants', 'es', 'Sillas para niños');
            PERFORM insert_category_translations('porte-enfants', 'it', 'Seggiolini bambini');

        -- Level 1: outils-entretien
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('outils-entretien', 'outils-entretien', 1, root_id, 'Outils & entretien')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('outils-entretien', 'fr', 'Outils & entretien');
        PERFORM insert_category_translations('outils-entretien', 'ar', 'أدوات وصيانة');
        PERFORM insert_category_translations('outils-entretien', 'en', 'Tools & Maintenance');
        PERFORM insert_category_translations('outils-entretien', 'de', 'Werkzeuge & Pflege');
        PERFORM insert_category_translations('outils-entretien', 'es', 'Herramientas y mantenimiento');
        PERFORM insert_category_translations('outils-entretien', 'it', 'Attrezzi & manutenzione');

            -- Level 2: kits-de-reparation
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('kits-de-reparation', 'kits-de-reparation', 2, l1_id, 'Kits de réparation')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('kits-de-reparation', 'fr', 'Kits de réparation');
            PERFORM insert_category_translations('kits-de-reparation', 'ar', 'مجموعات إصلاح');
            PERFORM insert_category_translations('kits-de-reparation', 'en', 'Repair kits');
            PERFORM insert_category_translations('kits-de-reparation', 'de', 'Reparatursets');
            PERFORM insert_category_translations('kits-de-reparation', 'es', 'Kits de reparación');
            PERFORM insert_category_translations('kits-de-reparation', 'it', 'Kit riparazione');

            -- Level 2: pompes-a-pied
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pompes-a-pied', 'pompes-a-pied', 2, l1_id, 'Pompes à pied')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pompes-a-pied', 'fr', 'Pompes à pied');
            PERFORM insert_category_translations('pompes-a-pied', 'ar', 'مضخات أرضية');
            PERFORM insert_category_translations('pompes-a-pied', 'en', 'Floor pumps');
            PERFORM insert_category_translations('pompes-a-pied', 'de', 'Standpumpen');
            PERFORM insert_category_translations('pompes-a-pied', 'es', 'Bombas de pie');
            PERFORM insert_category_translations('pompes-a-pied', 'it', 'Pompe a pavimento');

            -- Level 2: demonte-pneus
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('demonte-pneus', 'demonte-pneus', 2, l1_id, 'Démonte-pneus')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('demonte-pneus', 'fr', 'Démonte-pneus');
            PERFORM insert_category_translations('demonte-pneus', 'ar', 'مفاتيح فك الإطارات');
            PERFORM insert_category_translations('demonte-pneus', 'en', 'Tire levers');
            PERFORM insert_category_translations('demonte-pneus', 'de', 'Reifenheber');
            PERFORM insert_category_translations('demonte-pneus', 'es', 'Desmontables');
            PERFORM insert_category_translations('demonte-pneus', 'it', 'Leve smontagomme');

            -- Level 2: lubrifiants-nettoyants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lubrifiants-nettoyants', 'lubrifiants-nettoyants', 2, l1_id, 'Lubrifiants & nettoyants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lubrifiants-nettoyants', 'fr', 'Lubrifiants & nettoyants');
            PERFORM insert_category_translations('lubrifiants-nettoyants', 'ar', 'زيوت ومنظفات');
            PERFORM insert_category_translations('lubrifiants-nettoyants', 'en', 'Lubricants & cleaners');
            PERFORM insert_category_translations('lubrifiants-nettoyants', 'de', 'Schmiermittel & Reiniger');
            PERFORM insert_category_translations('lubrifiants-nettoyants', 'es', 'Lubricantes y limpiadores');
            PERFORM insert_category_translations('lubrifiants-nettoyants', 'it', 'Lubrificanti & detergenti');

            -- Level 2: cles-multi-outils-velo
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cles-multi-outils-velo', 'cles-multi-outils-velo', 2, l1_id, 'Clés & multi-outils vélo')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cles-multi-outils-velo', 'fr', 'Clés & multi-outils vélo');
            PERFORM insert_category_translations('cles-multi-outils-velo', 'ar', 'مفاتيح وأدوات متعددة');
            PERFORM insert_category_translations('cles-multi-outils-velo', 'en', 'Wrenches & multitools');
            PERFORM insert_category_translations('cles-multi-outils-velo', 'de', 'Schlüssel & Multitools');
            PERFORM insert_category_translations('cles-multi-outils-velo', 'es', 'Llaves y multiherramientas');
            PERFORM insert_category_translations('cles-multi-outils-velo', 'it', 'Chiavi & multitool');

            -- Level 2: supports-de-reparation
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('supports-de-reparation', 'supports-de-reparation', 2, l1_id, 'Supports de réparation')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('supports-de-reparation', 'fr', 'Supports de réparation');
            PERFORM insert_category_translations('supports-de-reparation', 'ar', 'منصّات صيانة');
            PERFORM insert_category_translations('supports-de-reparation', 'en', 'Repair stands');
            PERFORM insert_category_translations('supports-de-reparation', 'de', 'Montageständer');
            PERFORM insert_category_translations('supports-de-reparation', 'es', 'Soportes de reparación');
            PERFORM insert_category_translations('supports-de-reparation', 'it', 'Cavalletti da lavoro');

            -- Level 2: brosses-dentretien
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('brosses-dentretien', 'brosses-dentretien', 2, l1_id, 'Brosses d’entretien')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('brosses-dentretien', 'fr', 'Brosses d’entretien');
            PERFORM insert_category_translations('brosses-dentretien', 'ar', 'فرش تنظيف');
            PERFORM insert_category_translations('brosses-dentretien', 'en', 'Cleaning brushes');
            PERFORM insert_category_translations('brosses-dentretien', 'de', 'Reinigungsbürsten');
            PERFORM insert_category_translations('brosses-dentretien', 'es', 'Cepillos de limpieza');
            PERFORM insert_category_translations('brosses-dentretien', 'it', 'Spazzole di pulizia');

        -- Level 1: rangement-transport
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('rangement-transport', 'rangement-transport', 1, root_id, 'Rangement & transport')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('rangement-transport', 'fr', 'Rangement & transport');
        PERFORM insert_category_translations('rangement-transport', 'ar', 'تخزين ونقل');
        PERFORM insert_category_translations('rangement-transport', 'en', 'Storage & Transport');
        PERFORM insert_category_translations('rangement-transport', 'de', 'Aufbewahrung & Transport');
        PERFORM insert_category_translations('rangement-transport', 'es', 'Almacenamiento y transporte');
        PERFORM insert_category_translations('rangement-transport', 'it', 'Stoccaggio & trasporto');

            -- Level 2: supports-muraux-velo
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('supports-muraux-velo', 'supports-muraux-velo', 2, l1_id, 'Supports muraux vélo')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('supports-muraux-velo', 'fr', 'Supports muraux vélo');
            PERFORM insert_category_translations('supports-muraux-velo', 'ar', 'حوامل جدارية');
            PERFORM insert_category_translations('supports-muraux-velo', 'en', 'Wall mounts');
            PERFORM insert_category_translations('supports-muraux-velo', 'de', 'Wandhalterungen');
            PERFORM insert_category_translations('supports-muraux-velo', 'es', 'Soportes de pared');
            PERFORM insert_category_translations('supports-muraux-velo', 'it', 'Supporti a parete');

            -- Level 2: crochets-racks
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('crochets-racks', 'crochets-racks', 2, l1_id, 'Crochets & racks')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('crochets-racks', 'fr', 'Crochets & racks');
            PERFORM insert_category_translations('crochets-racks', 'ar', 'خطافات ورفوف');
            PERFORM insert_category_translations('crochets-racks', 'en', 'Hooks & racks');
            PERFORM insert_category_translations('crochets-racks', 'de', 'Haken & Racks');
            PERFORM insert_category_translations('crochets-racks', 'es', 'Ganchos y racks');
            PERFORM insert_category_translations('crochets-racks', 'it', 'Ganci & rack');

            -- Level 2: housses-de-transport-velo
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('housses-de-transport-velo', 'housses-de-transport-velo', 2, l1_id, 'Housses de transport vélo')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('housses-de-transport-velo', 'fr', 'Housses de transport vélo');
            PERFORM insert_category_translations('housses-de-transport-velo', 'ar', 'أغطية/حقائب نقل الدراجة');
            PERFORM insert_category_translations('housses-de-transport-velo', 'en', 'Bike travel bags');
            PERFORM insert_category_translations('housses-de-transport-velo', 'de', 'Transporttaschen');
            PERFORM insert_category_translations('housses-de-transport-velo', 'es', 'Fundas de transporte');
            PERFORM insert_category_translations('housses-de-transport-velo', 'it', 'Borse da trasporto bici');

            -- Level 2: porte-velos-voiture
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('porte-velos-voiture', 'porte-velos-voiture', 2, l1_id, 'Porte-vélos voiture (coffre, toit, attelage)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('porte-velos-voiture', 'fr', 'Porte-vélos voiture (coffre, toit, attelage)');
            PERFORM insert_category_translations('porte-velos-voiture', 'ar', 'حوامل سيارات (صندوق، سقف، خطاف سحب)');
            PERFORM insert_category_translations('porte-velos-voiture', 'en', 'Car racks (trunk, roof, hitch)');
            PERFORM insert_category_translations('porte-velos-voiture', 'de', 'Fahrradträger fürs Auto (Heck, Dach, Anhängerkupplung)');
            PERFORM insert_category_translations('porte-velos-voiture', 'es', 'Portabicicletas para coche (maletero, techo, enganche)');
            PERFORM insert_category_translations('porte-velos-voiture', 'it', 'Portabici auto (bagagliaio, tetto, gancio traino)');

        -- Level 1: equipements-sportifs-cyclisme
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('equipements-sportifs-cyclisme', 'equipements-sportifs-cyclisme', 1, root_id, 'Équipements sportifs liés au cyclisme')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('equipements-sportifs-cyclisme', 'fr', 'Équipements sportifs liés au cyclisme');
        PERFORM insert_category_translations('equipements-sportifs-cyclisme', 'ar', 'معدات رياضية مرتبطة بالدراجات');
        PERFORM insert_category_translations('equipements-sportifs-cyclisme', 'en', 'Cycling Sports Equipment');
        PERFORM insert_category_translations('equipements-sportifs-cyclisme', 'de', 'Radsport-Zusatzausrüstung');
        PERFORM insert_category_translations('equipements-sportifs-cyclisme', 'es', 'Equipos deportivos de ciclismo');
        PERFORM insert_category_translations('equipements-sportifs-cyclisme', 'it', 'Attrezzatura sportiva per il ciclismo');

            -- Level 2: cardiofrequencemetres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cardiofrequencemetres', 'cardiofrequencemetres', 2, l1_id, 'Cardiofréquencemètres')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cardiofrequencemetres', 'fr', 'Cardiofréquencemètres');
            PERFORM insert_category_translations('cardiofrequencemetres', 'ar', 'أجهزة قياس نبض القلب');
            PERFORM insert_category_translations('cardiofrequencemetres', 'en', 'Heart rate monitors');
            PERFORM insert_category_translations('cardiofrequencemetres', 'de', 'Herzfrequenzmesser');
            PERFORM insert_category_translations('cardiofrequencemetres', 'es', 'Pulsómetros');
            PERFORM insert_category_translations('cardiofrequencemetres', 'it', 'Cardiofrequenzimetri');

            -- Level 2: capteurs-de-puissance
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('capteurs-de-puissance', 'capteurs-de-puissance', 2, l1_id, 'Capteurs de puissance')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('capteurs-de-puissance', 'fr', 'Capteurs de puissance');
            PERFORM insert_category_translations('capteurs-de-puissance', 'ar', 'مقاييس القدرة');
            PERFORM insert_category_translations('capteurs-de-puissance', 'en', 'Power meters');
            PERFORM insert_category_translations('capteurs-de-puissance', 'de', 'Leistungsmesser');
            PERFORM insert_category_translations('capteurs-de-puissance', 'es', 'Medidores de potencia');
            PERFORM insert_category_translations('capteurs-de-puissance', 'it', 'Misuratori di potenza');

            -- Level 2: montres-sport
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('montres-sport', 'montres-sport', 2, l1_id, 'Montres sport')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('montres-sport', 'fr', 'Montres sport');
            PERFORM insert_category_translations('montres-sport', 'ar', 'ساعات رياضية');
            PERFORM insert_category_translations('montres-sport', 'en', 'Sports watches');
            PERFORM insert_category_translations('montres-sport', 'de', 'Sportuhren');
            PERFORM insert_category_translations('montres-sport', 'es', 'Relojes deportivos');
            PERFORM insert_category_translations('montres-sport', 'it', 'Orologi sportivi');

            -- Level 2: vetements-de-pluie-coupe-vent
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vetements-de-pluie-coupe-vent', 'vetements-de-pluie-coupe-vent', 2, l1_id, 'Vêtements de pluie & coupe-vent')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('vetements-de-pluie-coupe-vent', 'fr', 'Vêtements de pluie & coupe-vent');
            PERFORM insert_category_translations('vetements-de-pluie-coupe-vent', 'ar', 'ملابس مطر وصدّ للريح');
            PERFORM insert_category_translations('vetements-de-pluie-coupe-vent', 'en', 'Rainwear & windbreakers');
            PERFORM insert_category_translations('vetements-de-pluie-coupe-vent', 'de', 'Regen- & Windjacken');
            PERFORM insert_category_translations('vetements-de-pluie-coupe-vent', 'es', 'Ropa de lluvia y cortavientos');
            PERFORM insert_category_translations('vetements-de-pluie-coupe-vent', 'it', 'Impermeabili & antivento');

            -- Level 2: accessoires-de-performance
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-de-performance', 'accessoires-de-performance', 2, l1_id, 'Accessoires de performance (aérodynamique, optimisation poids)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('accessoires-de-performance', 'fr', 'Accessoires de performance (aérodynamique, optimisation poids)');
            PERFORM insert_category_translations('accessoires-de-performance', 'ar', 'ملحقات الأداء (ديناميكا هوائية، تحسين الوزن)');
            PERFORM insert_category_translations('accessoires-de-performance', 'en', 'Performance accessories (aero, weight optimization)');
            PERFORM insert_category_translations('accessoires-de-performance', 'de', 'Performance-Zubehör (Aerodynamik, Gewichtsoptimierung)');
            PERFORM insert_category_translations('accessoires-de-performance', 'es', 'Accesorios de rendimiento (aerodinámica, optimización de peso)');
            PERFORM insert_category_translations('accessoires-de-performance', 'it', 'Accessori prestazionali (aerodinamica, ottimizzazione peso)');
END $$;