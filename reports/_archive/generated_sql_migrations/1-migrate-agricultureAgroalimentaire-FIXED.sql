-- Migration: Agriculture & Agroalimentaire (Generated Recursive)
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

    -- Level 0: agriculture-agroalimentaire
    INSERT INTO categories (id, slug, level, name)
    VALUES ('agriculture-agroalimentaire', 'agriculture-agroalimentaire', 0, 'Agriculture & Agroalimentaire')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 0, name = EXCLUDED.name
    RETURNING id INTO root_id;
    PERFORM insert_category_translations('agriculture-agroalimentaire', 'fr', 'Agriculture & Agroalimentaire');
    PERFORM insert_category_translations('agriculture-agroalimentaire', 'ar', 'الزراعة والأغذية الزراعية');
    PERFORM insert_category_translations('agriculture-agroalimentaire', 'en', 'Agriculture & Agri‑food');
    PERFORM insert_category_translations('agriculture-agroalimentaire', 'de', 'Landwirtschaft & Lebensmittelindustrie');
    PERFORM insert_category_translations('agriculture-agroalimentaire', 'es', 'Agricultura y Agroalimentario');
    PERFORM insert_category_translations('agriculture-agroalimentaire', 'it', 'Agricoltura & Agroalimentare');

        -- Level 1: materiel-agricole
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('materiel-agricole', 'materiel-agricole', 1, root_id, 'Matériel agricole')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('materiel-agricole', 'fr', 'Matériel agricole');
        PERFORM insert_category_translations('materiel-agricole', 'ar', 'معدات زراعية');
        PERFORM insert_category_translations('materiel-agricole', 'en', 'Agricultural Equipment');
        PERFORM insert_category_translations('materiel-agricole', 'de', 'Landwirtschaftliche Ausrüstung');
        PERFORM insert_category_translations('materiel-agricole', 'es', 'Maquinaria agrícola');
        PERFORM insert_category_translations('materiel-agricole', 'it', 'Attrezzature agricole');

            -- Level 2: tracteurs-agricoles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tracteurs-agricoles', 'tracteurs-agricoles', 2, l1_id, 'Tracteurs agricoles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tracteurs-agricoles', 'fr', 'Tracteurs agricoles');
            PERFORM insert_category_translations('tracteurs-agricoles', 'ar', 'جرارات زراعية');
            PERFORM insert_category_translations('tracteurs-agricoles', 'en', 'Agricultural tractors');
            PERFORM insert_category_translations('tracteurs-agricoles', 'de', 'Landwirtschaftliche Traktoren');
            PERFORM insert_category_translations('tracteurs-agricoles', 'es', 'Tractores agrícolas');
            PERFORM insert_category_translations('tracteurs-agricoles', 'it', 'Trattori agricoli');

            -- Level 2: micro-tracteurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('micro-tracteurs', 'micro-tracteurs', 2, l1_id, 'Micro-tracteurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('micro-tracteurs', 'fr', 'Micro-tracteurs');
            PERFORM insert_category_translations('micro-tracteurs', 'ar', 'جرارات صغيرة');
            PERFORM insert_category_translations('micro-tracteurs', 'en', 'Micro‑tractors');
            PERFORM insert_category_translations('micro-tracteurs', 'de', 'Kleintraktoren');
            PERFORM insert_category_translations('micro-tracteurs', 'es', 'Microtractores');
            PERFORM insert_category_translations('micro-tracteurs', 'it', 'Micro‑trattori');

            -- Level 2: motoculteurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('motoculteurs', 'motoculteurs', 2, l1_id, 'Motoculteurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('motoculteurs', 'fr', 'Motoculteurs');
            PERFORM insert_category_translations('motoculteurs', 'ar', 'محاريث آلية');
            PERFORM insert_category_translations('motoculteurs', 'en', 'Tillers');
            PERFORM insert_category_translations('motoculteurs', 'de', 'Motorhacken');
            PERFORM insert_category_translations('motoculteurs', 'es', 'Motoazadas');
            PERFORM insert_category_translations('motoculteurs', 'it', 'Motozappe');

            -- Level 2: moissonneuses-batteuses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('moissonneuses-batteuses', 'moissonneuses-batteuses', 2, l1_id, 'Moissonneuses-batteuses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('moissonneuses-batteuses', 'fr', 'Moissonneuses-batteuses');
            PERFORM insert_category_translations('moissonneuses-batteuses', 'ar', 'حصادات');
            PERFORM insert_category_translations('moissonneuses-batteuses', 'en', 'Combine harvesters');
            PERFORM insert_category_translations('moissonneuses-batteuses', 'de', 'Mähdrescher');
            PERFORM insert_category_translations('moissonneuses-batteuses', 'es', 'Cosechadoras');
            PERFORM insert_category_translations('moissonneuses-batteuses', 'it', 'Mietitrebbie');

            -- Level 2: charrues
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('charrues', 'charrues', 2, l1_id, 'Charrues')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('charrues', 'fr', 'Charrues');
            PERFORM insert_category_translations('charrues', 'ar', 'محاريث');
            PERFORM insert_category_translations('charrues', 'en', 'Ploughs');
            PERFORM insert_category_translations('charrues', 'de', 'Pflüge');
            PERFORM insert_category_translations('charrues', 'es', 'Arados');
            PERFORM insert_category_translations('charrues', 'it', 'Aratri');

            -- Level 2: herses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('herses', 'herses', 2, l1_id, 'Herses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('herses', 'fr', 'Herses');
            PERFORM insert_category_translations('herses', 'ar', 'أمشاط زراعية');
            PERFORM insert_category_translations('herses', 'en', 'Harrows');
            PERFORM insert_category_translations('herses', 'de', 'Eggen');
            PERFORM insert_category_translations('herses', 'es', 'Gradas');
            PERFORM insert_category_translations('herses', 'it', 'Erpici');

            -- Level 2: semoirs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('semoirs', 'semoirs', 2, l1_id, 'Semoirs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('semoirs', 'fr', 'Semoirs');
            PERFORM insert_category_translations('semoirs', 'ar', 'بذارات');
            PERFORM insert_category_translations('semoirs', 'en', 'Seeders');
            PERFORM insert_category_translations('semoirs', 'de', 'Sämaschinen');
            PERFORM insert_category_translations('semoirs', 'es', 'Sembradoras');
            PERFORM insert_category_translations('semoirs', 'it', 'Seminatrici');

            -- Level 2: pulverisateurs-agricoles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pulverisateurs-agricoles', 'pulverisateurs-agricoles', 2, l1_id, 'Pulvérisateurs agricoles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pulverisateurs-agricoles', 'fr', 'Pulvérisateurs agricoles');
            PERFORM insert_category_translations('pulverisateurs-agricoles', 'ar', 'مرشات زراعية');
            PERFORM insert_category_translations('pulverisateurs-agricoles', 'en', 'Agricultural sprayers');
            PERFORM insert_category_translations('pulverisateurs-agricoles', 'de', 'Landwirtschaftliche Sprühgeräte');
            PERFORM insert_category_translations('pulverisateurs-agricoles', 'es', 'Pulverizadores agrícolas');
            PERFORM insert_category_translations('pulverisateurs-agricoles', 'it', 'Irroratrici agricole');

            -- Level 2: remorques-agricoles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('remorques-agricoles', 'remorques-agricoles', 2, l1_id, 'Remorques agricoles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('remorques-agricoles', 'fr', 'Remorques agricoles');
            PERFORM insert_category_translations('remorques-agricoles', 'ar', 'مقطورات زراعية');
            PERFORM insert_category_translations('remorques-agricoles', 'en', 'Agricultural trailers');
            PERFORM insert_category_translations('remorques-agricoles', 'de', 'Landwirtschaftliche Anhänger');
            PERFORM insert_category_translations('remorques-agricoles', 'es', 'Remolques agrícolas');
            PERFORM insert_category_translations('remorques-agricoles', 'it', 'Rimorchi agricoli');

            -- Level 2: broyeurs-agricoles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('broyeurs-agricoles', 'broyeurs-agricoles', 2, l1_id, 'Broyeurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('broyeurs-agricoles', 'fr', 'Broyeurs');
            PERFORM insert_category_translations('broyeurs-agricoles', 'ar', 'فرّامات');
            PERFORM insert_category_translations('broyeurs-agricoles', 'en', 'Shredders');
            PERFORM insert_category_translations('broyeurs-agricoles', 'de', 'Schredder');
            PERFORM insert_category_translations('broyeurs-agricoles', 'es', 'Trituradoras');
            PERFORM insert_category_translations('broyeurs-agricoles', 'it', 'Trituratori');

            -- Level 2: epandeurs-agricoles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('epandeurs-agricoles', 'epandeurs-agricoles', 2, l1_id, 'Épandeurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('epandeurs-agricoles', 'fr', 'Épandeurs');
            PERFORM insert_category_translations('epandeurs-agricoles', 'ar', 'موزعات');
            PERFORM insert_category_translations('epandeurs-agricoles', 'en', 'Spreaders');
            PERFORM insert_category_translations('epandeurs-agricoles', 'de', 'Streuer');
            PERFORM insert_category_translations('epandeurs-agricoles', 'es', 'Esparcidores');
            PERFORM insert_category_translations('epandeurs-agricoles', 'it', 'Spandiconcime');

            -- Level 2: tarieres-mecaniques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tarieres-mecaniques', 'tarieres-mecaniques', 2, l1_id, 'Tarières mécaniques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tarieres-mecaniques', 'fr', 'Tarières mécaniques');
            PERFORM insert_category_translations('tarieres-mecaniques', 'ar', 'مثاقب ميكانيكية');
            PERFORM insert_category_translations('tarieres-mecaniques', 'en', 'Mechanical augers');
            PERFORM insert_category_translations('tarieres-mecaniques', 'de', 'Mechanische Erdbohrer');
            PERFORM insert_category_translations('tarieres-mecaniques', 'es', 'Barrenas mecánicas');
            PERFORM insert_category_translations('tarieres-mecaniques', 'it', 'Trivelle meccaniche');

            -- Level 2: presses-a-balles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('presses-a-balles', 'presses-a-balles', 2, l1_id, 'Presses à balles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('presses-a-balles', 'fr', 'Presses à balles');
            PERFORM insert_category_translations('presses-a-balles', 'ar', 'مكابس بالات');
            PERFORM insert_category_translations('presses-a-balles', 'en', 'Bale presses');
            PERFORM insert_category_translations('presses-a-balles', 'de', 'Ballenpressen');
            PERFORM insert_category_translations('presses-a-balles', 'es', 'Prensas de pacas');
            PERFORM insert_category_translations('presses-a-balles', 'it', 'Presse per balle');

            -- Level 2: elevateurs-agricoles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('elevateurs-agricoles', 'elevateurs-agricoles', 2, l1_id, 'Élévateurs agricoles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('elevateurs-agricoles', 'fr', 'Élévateurs agricoles');
            PERFORM insert_category_translations('elevateurs-agricoles', 'ar', 'رافعات زراعية');
            PERFORM insert_category_translations('elevateurs-agricoles', 'en', 'Agricultural elevators');
            PERFORM insert_category_translations('elevateurs-agricoles', 'de', 'Landwirtschaftliche Hebegeräte');
            PERFORM insert_category_translations('elevateurs-agricoles', 'es', 'Elevadores agrícolas');
            PERFORM insert_category_translations('elevateurs-agricoles', 'it', 'Sollevatori agricoli');

        -- Level 1: outils-equipements-de-culture
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('outils-equipements-de-culture', 'outils-equipements-de-culture', 1, root_id, 'Outils & équipements de culture')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('outils-equipements-de-culture', 'fr', 'Outils & équipements de culture');
        PERFORM insert_category_translations('outils-equipements-de-culture', 'ar', 'أدوات ومعدات الزراعة');
        PERFORM insert_category_translations('outils-equipements-de-culture', 'en', 'Cultivation tools & equipment');
        PERFORM insert_category_translations('outils-equipements-de-culture', 'de', 'Werkzeuge & Anbaugeräte');
        PERFORM insert_category_translations('outils-equipements-de-culture', 'es', 'Herramientas & equipos de cultivo');
        PERFORM insert_category_translations('outils-equipements-de-culture', 'it', 'Strumenti & attrezzature di coltivazione');

            -- Level 2: beches
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('beches', 'beches', 2, l1_id, 'Bêches')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('beches', 'fr', 'Bêches');
            PERFORM insert_category_translations('beches', 'ar', 'معاول');
            PERFORM insert_category_translations('beches', 'en', 'Spades');
            PERFORM insert_category_translations('beches', 'de', 'Spaten');
            PERFORM insert_category_translations('beches', 'es', 'Palas de punta');
            PERFORM insert_category_translations('beches', 'it', 'Zappe a punta');

            -- Level 2: pelles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pelles', 'pelles', 2, l1_id, 'Pelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pelles', 'fr', 'Pelles');
            PERFORM insert_category_translations('pelles', 'ar', 'مجارف');
            PERFORM insert_category_translations('pelles', 'en', 'Shovels');
            PERFORM insert_category_translations('pelles', 'de', 'Schaufeln');
            PERFORM insert_category_translations('pelles', 'es', 'Palas');
            PERFORM insert_category_translations('pelles', 'it', 'Pale');

            -- Level 2: rateaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('rateaux', 'rateaux', 2, l1_id, 'Râteaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('rateaux', 'fr', 'Râteaux');
            PERFORM insert_category_translations('rateaux', 'ar', 'أمشاط');
            PERFORM insert_category_translations('rateaux', 'en', 'Rakes');
            PERFORM insert_category_translations('rateaux', 'de', 'Rechen');
            PERFORM insert_category_translations('rateaux', 'es', 'Rastrillos');
            PERFORM insert_category_translations('rateaux', 'it', 'Rastrelli');

            -- Level 2: houes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('houes', 'houes', 2, l1_id, 'Houes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('houes', 'fr', 'Houes');
            PERFORM insert_category_translations('houes', 'ar', 'معازق');
            PERFORM insert_category_translations('houes', 'en', 'Hoes');
            PERFORM insert_category_translations('houes', 'de', 'Hacken');
            PERFORM insert_category_translations('houes', 'es', 'Azadas');
            PERFORM insert_category_translations('houes', 'it', 'Zappe');

            -- Level 2: sarcleuses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sarcleuses', 'sarcleuses', 2, l1_id, 'Sarcleuses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sarcleuses', 'fr', 'Sarcleuses');
            PERFORM insert_category_translations('sarcleuses', 'ar', 'أدوات إزالة الأعشاب');
            PERFORM insert_category_translations('sarcleuses', 'en', 'Weeders');
            PERFORM insert_category_translations('sarcleuses', 'de', 'Unkrautjäter');
            PERFORM insert_category_translations('sarcleuses', 'es', 'Escardadoras');
            PERFORM insert_category_translations('sarcleuses', 'it', 'Sarchiatrici');

            -- Level 2: binettes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('binettes', 'binettes', 2, l1_id, 'Binettes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('binettes', 'fr', 'Binettes');
            PERFORM insert_category_translations('binettes', 'ar', 'معاول يدوية');
            PERFORM insert_category_translations('binettes', 'en', 'Hand hoes');
            PERFORM insert_category_translations('binettes', 'de', 'Handhacken');
            PERFORM insert_category_translations('binettes', 'es', 'Azadas manuales');
            PERFORM insert_category_translations('binettes', 'it', 'Zappe manuali');

            -- Level 2: secateurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('secateurs', 'secateurs', 2, l1_id, 'Sécateurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('secateurs', 'fr', 'Sécateurs');
            PERFORM insert_category_translations('secateurs', 'ar', 'مقصات تقليم');
            PERFORM insert_category_translations('secateurs', 'en', 'Pruning shears');
            PERFORM insert_category_translations('secateurs', 'de', 'Gartenscheren');
            PERFORM insert_category_translations('secateurs', 'es', 'Tijeras de poda');
            PERFORM insert_category_translations('secateurs', 'it', 'Cesoie da potatura');

            -- Level 2: cisailles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cisailles', 'cisailles', 2, l1_id, 'Cisailles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cisailles', 'fr', 'Cisailles');
            PERFORM insert_category_translations('cisailles', 'ar', 'مقصات حدائق');
            PERFORM insert_category_translations('cisailles', 'en', 'Loppers');
            PERFORM insert_category_translations('cisailles', 'de', 'Astscheren');
            PERFORM insert_category_translations('cisailles', 'es', 'Podadoras de brazo');
            PERFORM insert_category_translations('cisailles', 'it', 'Cesoie lunghe');

            -- Level 2: arrosoirs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('arrosoirs', 'arrosoirs', 2, l1_id, 'Arrosoirs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('arrosoirs', 'fr', 'Arrosoirs');
            PERFORM insert_category_translations('arrosoirs', 'ar', 'أوعية سقي');
            PERFORM insert_category_translations('arrosoirs', 'en', 'Watering cans');
            PERFORM insert_category_translations('arrosoirs', 'de', 'Gießkannen');
            PERFORM insert_category_translations('arrosoirs', 'es', 'Regaderas');
            PERFORM insert_category_translations('arrosoirs', 'it', 'Annaffiatoi');

            -- Level 2: pulverisateurs-manuels
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pulverisateurs-manuels', 'pulverisateurs-manuels', 2, l1_id, 'Pulvérisateurs manuels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pulverisateurs-manuels', 'fr', 'Pulvérisateurs manuels');
            PERFORM insert_category_translations('pulverisateurs-manuels', 'ar', 'مرشات يدوية');
            PERFORM insert_category_translations('pulverisateurs-manuels', 'en', 'Hand sprayers');
            PERFORM insert_category_translations('pulverisateurs-manuels', 'de', 'Handsprühgeräte');
            PERFORM insert_category_translations('pulverisateurs-manuels', 'es', 'Pulverizadores manuales');
            PERFORM insert_category_translations('pulverisateurs-manuels', 'it', 'Irroratrici manuali');

            -- Level 2: brouettes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('brouettes', 'brouettes', 2, l1_id, 'Brouettes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('brouettes', 'fr', 'Brouettes');
            PERFORM insert_category_translations('brouettes', 'ar', 'عربات يد');
            PERFORM insert_category_translations('brouettes', 'en', 'Wheelbarrows');
            PERFORM insert_category_translations('brouettes', 'de', 'Schubkarren');
            PERFORM insert_category_translations('brouettes', 'es', 'Carretillas');
            PERFORM insert_category_translations('brouettes', 'it', 'Carriole');

            -- Level 2: gants-de-jardin
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gants-de-jardin', 'gants-de-jardin', 2, l1_id, 'Gants de jardin')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gants-de-jardin', 'fr', 'Gants de jardin');
            PERFORM insert_category_translations('gants-de-jardin', 'ar', 'قفازات حدائق');
            PERFORM insert_category_translations('gants-de-jardin', 'en', 'Garden gloves');
            PERFORM insert_category_translations('gants-de-jardin', 'de', 'Gartenhandschuhe');
            PERFORM insert_category_translations('gants-de-jardin', 'es', 'Guantes de jardín');
            PERFORM insert_category_translations('gants-de-jardin', 'it', 'Guanti da giardino');

            -- Level 2: lames-agricoles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lames-agricoles', 'lames-agricoles', 2, l1_id, 'Lames agricoles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lames-agricoles', 'fr', 'Lames agricoles');
            PERFORM insert_category_translations('lames-agricoles', 'ar', 'شفرات زراعية');
            PERFORM insert_category_translations('lames-agricoles', 'en', 'Agricultural blades');
            PERFORM insert_category_translations('lames-agricoles', 'de', 'Landwirtschaftliche Klingen');
            PERFORM insert_category_translations('lames-agricoles', 'es', 'Cuchillas agrícolas');
            PERFORM insert_category_translations('lames-agricoles', 'it', 'Lame agricole');

            -- Level 2: filets-de-recolte
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('filets-de-recolte', 'filets-de-recolte', 2, l1_id, 'Filets de récolte')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('filets-de-recolte', 'fr', 'Filets de récolte');
            PERFORM insert_category_translations('filets-de-recolte', 'ar', 'شبكات حصاد');
            PERFORM insert_category_translations('filets-de-recolte', 'en', 'Harvest nets');
            PERFORM insert_category_translations('filets-de-recolte', 'de', 'Erntenetze');
            PERFORM insert_category_translations('filets-de-recolte', 'es', 'Redes de cosecha');
            PERFORM insert_category_translations('filets-de-recolte', 'it', 'Reti da raccolta');

        -- Level 1: systemes-irrigation
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('systemes-irrigation', 'systemes-irrigation', 1, root_id, 'Systèmes d’irrigation')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('systemes-irrigation', 'fr', 'Systèmes d’irrigation');
        PERFORM insert_category_translations('systemes-irrigation', 'ar', 'أنظمة الري');
        PERFORM insert_category_translations('systemes-irrigation', 'en', 'Irrigation systems');
        PERFORM insert_category_translations('systemes-irrigation', 'de', 'Bewässerungssysteme');
        PERFORM insert_category_translations('systemes-irrigation', 'es', 'Sistemas de riego');
        PERFORM insert_category_translations('systemes-irrigation', 'it', 'Sistemi di irrigazione');

            -- Level 2: tuyaux-d-arrosage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tuyaux-d-arrosage', 'tuyaux-d-arrosage', 2, l1_id, 'Tuyaux d’arrosage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tuyaux-d-arrosage', 'fr', 'Tuyaux d’arrosage');
            PERFORM insert_category_translations('tuyaux-d-arrosage', 'ar', 'خراطيم سقي');
            PERFORM insert_category_translations('tuyaux-d-arrosage', 'en', 'Watering hoses');
            PERFORM insert_category_translations('tuyaux-d-arrosage', 'de', 'Bewässerungsschläuche');
            PERFORM insert_category_translations('tuyaux-d-arrosage', 'es', 'Mangueras de riego');
            PERFORM insert_category_translations('tuyaux-d-arrosage', 'it', 'Tubi per irrigazione');

            -- Level 2: goutte-a-goutte
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('goutte-a-goutte', 'goutte-a-goutte', 2, l1_id, 'Systèmes goutte-à-goutte')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('goutte-a-goutte', 'fr', 'Systèmes goutte-à-goutte');
            PERFORM insert_category_translations('goutte-a-goutte', 'ar', 'الري بالتنقيط');
            PERFORM insert_category_translations('goutte-a-goutte', 'en', 'Drip systems');
            PERFORM insert_category_translations('goutte-a-goutte', 'de', 'Tropfbewässerung');
            PERFORM insert_category_translations('goutte-a-goutte', 'es', 'Sistemas de goteo');
            PERFORM insert_category_translations('goutte-a-goutte', 'it', 'Irrigazione a goccia');

            -- Level 2: programmateurs-irrigation
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('programmateurs-irrigation', 'programmateurs-irrigation', 2, l1_id, 'Programmateurs d’irrigation')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('programmateurs-irrigation', 'fr', 'Programmateurs d’irrigation');
            PERFORM insert_category_translations('programmateurs-irrigation', 'ar', 'مبرمجات الري');
            PERFORM insert_category_translations('programmateurs-irrigation', 'en', 'Irrigation timers');
            PERFORM insert_category_translations('programmateurs-irrigation', 'de', 'Bewässerungssteuerungen');
            PERFORM insert_category_translations('programmateurs-irrigation', 'es', 'Programadores de riego');
            PERFORM insert_category_translations('programmateurs-irrigation', 'it', 'Programmatore d''irrigazione');

            -- Level 2: aspersions
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('aspersions', 'aspersions', 2, l1_id, 'Aspersions')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('aspersions', 'fr', 'Aspersions');
            PERFORM insert_category_translations('aspersions', 'ar', 'رشاشات');
            PERFORM insert_category_translations('aspersions', 'en', 'Sprinklers');
            PERFORM insert_category_translations('aspersions', 'de', 'Sprinkler');
            PERFORM insert_category_translations('aspersions', 'es', 'Aspersores');
            PERFORM insert_category_translations('aspersions', 'it', 'Irrigatori');

            -- Level 2: pompes-a-eau
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pompes-a-eau', 'pompes-a-eau', 2, l1_id, 'Pompes à eau')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pompes-a-eau', 'fr', 'Pompes à eau');
            PERFORM insert_category_translations('pompes-a-eau', 'ar', 'مضخات مياه');
            PERFORM insert_category_translations('pompes-a-eau', 'en', 'Water pumps');
            PERFORM insert_category_translations('pompes-a-eau', 'de', 'Wasserpumpen');
            PERFORM insert_category_translations('pompes-a-eau', 'es', 'Bombas de agua');
            PERFORM insert_category_translations('pompes-a-eau', 'it', 'Pompe dell''acqua');

            -- Level 2: motopompes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('motopompes', 'motopompes', 2, l1_id, 'Motopompes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('motopompes', 'fr', 'Motopompes');
            PERFORM insert_category_translations('motopompes', 'ar', 'مضخات محركة');
            PERFORM insert_category_translations('motopompes', 'en', 'Motor pumps');
            PERFORM insert_category_translations('motopompes', 'de', 'Motorpumpen');
            PERFORM insert_category_translations('motopompes', 'es', 'Motobombas');
            PERFORM insert_category_translations('motopompes', 'it', 'Motopompe');

            -- Level 2: raccords-irrigation
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('raccords-irrigation', 'raccords-irrigation', 2, l1_id, 'Raccords d’irrigation')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('raccords-irrigation', 'fr', 'Raccords d’irrigation');
            PERFORM insert_category_translations('raccords-irrigation', 'ar', 'وصلات الري');
            PERFORM insert_category_translations('raccords-irrigation', 'en', 'Irrigation fittings');
            PERFORM insert_category_translations('raccords-irrigation', 'de', 'Bewässerungsanschlüsse');
            PERFORM insert_category_translations('raccords-irrigation', 'es', 'Conexiones de riego');
            PERFORM insert_category_translations('raccords-irrigation', 'it', 'Raccordi per irrigazione');

            -- Level 2: filtres-d-eau
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('filtres-d-eau', 'filtres-d-eau', 2, l1_id, 'Filtres d’eau')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('filtres-d-eau', 'fr', 'Filtres d’eau');
            PERFORM insert_category_translations('filtres-d-eau', 'ar', 'مرشحات مياه');
            PERFORM insert_category_translations('filtres-d-eau', 'en', 'Water filters');
            PERFORM insert_category_translations('filtres-d-eau', 'de', 'Wasserfilter');
            PERFORM insert_category_translations('filtres-d-eau', 'es', 'Filtros de agua');
            PERFORM insert_category_translations('filtres-d-eau', 'it', 'Filtri dell''acqua');

            -- Level 2: arroseurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('arroseurs', 'arroseurs', 2, l1_id, 'Arroseurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('arroseurs', 'fr', 'Arroseurs');
            PERFORM insert_category_translations('arroseurs', 'ar', 'مرشات');
            PERFORM insert_category_translations('arroseurs', 'en', 'Sprayers');
            PERFORM insert_category_translations('arroseurs', 'de', 'Sprühgeräte');
            PERFORM insert_category_translations('arroseurs', 'es', 'Rociadores');
            PERFORM insert_category_translations('arroseurs', 'it', 'Spruzzatori');

            -- Level 2: reservoirs-d-eau
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('reservoirs-d-eau', 'reservoirs-d-eau', 2, l1_id, 'Réservoirs d’eau')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('reservoirs-d-eau', 'fr', 'Réservoirs d’eau');
            PERFORM insert_category_translations('reservoirs-d-eau', 'ar', 'خزانات مياه');
            PERFORM insert_category_translations('reservoirs-d-eau', 'en', 'Water tanks');
            PERFORM insert_category_translations('reservoirs-d-eau', 'de', 'Wassertanks');
            PERFORM insert_category_translations('reservoirs-d-eau', 'es', 'Depósitos de agua');
            PERFORM insert_category_translations('reservoirs-d-eau', 'it', 'Serbatoi d''acqua');

        -- Level 1: semences-plants
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('semences-plants', 'semences-plants', 1, root_id, 'Semences & plants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('semences-plants', 'fr', 'Semences & plants');
        PERFORM insert_category_translations('semences-plants', 'ar', 'بذور ونباتات');
        PERFORM insert_category_translations('semences-plants', 'en', 'Seeds & seedlings');
        PERFORM insert_category_translations('semences-plants', 'de', 'Samen & Setzlinge');
        PERFORM insert_category_translations('semences-plants', 'es', 'Semillas & plantones');
        PERFORM insert_category_translations('semences-plants', 'it', 'Semi & piantine');

            -- Level 2: semences-potageres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('semences-potageres', 'semences-potageres', 2, l1_id, 'Semences potagères')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('semences-potageres', 'fr', 'Semences potagères');
            PERFORM insert_category_translations('semences-potageres', 'ar', 'بذور خضر');
            PERFORM insert_category_translations('semences-potageres', 'en', 'Vegetable seeds');
            PERFORM insert_category_translations('semences-potageres', 'de', 'Gemüsesamen');
            PERFORM insert_category_translations('semences-potageres', 'es', 'Semillas de huerto');
            PERFORM insert_category_translations('semences-potageres', 'it', 'Semi orticoli');

            -- Level 2: semences-cerealieres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('semences-cerealieres', 'semences-cerealieres', 2, l1_id, 'Semences céréalières')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('semences-cerealieres', 'fr', 'Semences céréalières');
            PERFORM insert_category_translations('semences-cerealieres', 'ar', 'بذور حبوب');
            PERFORM insert_category_translations('semences-cerealieres', 'en', 'Cereal seeds');
            PERFORM insert_category_translations('semences-cerealieres', 'de', 'Getreidesamen');
            PERFORM insert_category_translations('semences-cerealieres', 'es', 'Semillas de cereales');
            PERFORM insert_category_translations('semences-cerealieres', 'it', 'Semi cerealicoli');

            -- Level 2: semences-fourrageres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('semences-fourrageres', 'semences-fourrageres', 2, l1_id, 'Semences fourragères')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('semences-fourrageres', 'fr', 'Semences fourragères');
            PERFORM insert_category_translations('semences-fourrageres', 'ar', 'بذور أعلاف');
            PERFORM insert_category_translations('semences-fourrageres', 'en', 'Forage seeds');
            PERFORM insert_category_translations('semences-fourrageres', 'de', 'Futtersamen');
            PERFORM insert_category_translations('semences-fourrageres', 'es', 'Semillas forrajeras');
            PERFORM insert_category_translations('semences-fourrageres', 'it', 'Semi foraggeri');

            -- Level 2: plants-de-legumes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('plants-de-legumes', 'plants-de-legumes', 2, l1_id, 'Plants de légumes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('plants-de-legumes', 'fr', 'Plants de légumes');
            PERFORM insert_category_translations('plants-de-legumes', 'ar', 'شتلات خضر');
            PERFORM insert_category_translations('plants-de-legumes', 'en', 'Vegetable seedlings');
            PERFORM insert_category_translations('plants-de-legumes', 'de', 'Gemüsesetzlinge');
            PERFORM insert_category_translations('plants-de-legumes', 'es', 'Plantones de verduras');
            PERFORM insert_category_translations('plants-de-legumes', 'it', 'Piantine di verdure');

            -- Level 2: plants-fruitiers
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('plants-fruitiers', 'plants-fruitiers', 2, l1_id, 'Plants fruitiers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('plants-fruitiers', 'fr', 'Plants fruitiers');
            PERFORM insert_category_translations('plants-fruitiers', 'ar', 'شتلات فواكه');
            PERFORM insert_category_translations('plants-fruitiers', 'en', 'Fruit tree seedlings');
            PERFORM insert_category_translations('plants-fruitiers', 'de', 'Obstbaumsetzlinge');
            PERFORM insert_category_translations('plants-fruitiers', 'es', 'Plantones de frutales');
            PERFORM insert_category_translations('plants-fruitiers', 'it', 'Piantine di frutta');

            -- Level 2: plants-d-arbres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('plants-d-arbres', 'plants-d-arbres', 2, l1_id, 'Plants d’arbres')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('plants-d-arbres', 'fr', 'Plants d’arbres');
            PERFORM insert_category_translations('plants-d-arbres', 'ar', 'شتلات أشجار');
            PERFORM insert_category_translations('plants-d-arbres', 'en', 'Tree seedlings');
            PERFORM insert_category_translations('plants-d-arbres', 'de', 'Baumsetzlinge');
            PERFORM insert_category_translations('plants-d-arbres', 'es', 'Plantones de árboles');
            PERFORM insert_category_translations('plants-d-arbres', 'it', 'Piantine di alberi');

            -- Level 2: graines-biologiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('graines-biologiques', 'graines-biologiques', 2, l1_id, 'Graines biologiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('graines-biologiques', 'fr', 'Graines biologiques');
            PERFORM insert_category_translations('graines-biologiques', 'ar', 'بذور عضوية');
            PERFORM insert_category_translations('graines-biologiques', 'en', 'Organic seeds');
            PERFORM insert_category_translations('graines-biologiques', 'de', 'Bio‑Samen');
            PERFORM insert_category_translations('graines-biologiques', 'es', 'Semillas orgánicas');
            PERFORM insert_category_translations('graines-biologiques', 'it', 'Semi biologici');

            -- Level 2: graines-hybrides
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('graines-hybrides', 'graines-hybrides', 2, l1_id, 'Graines hybrides')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('graines-hybrides', 'fr', 'Graines hybrides');
            PERFORM insert_category_translations('graines-hybrides', 'ar', 'بذور هجينة');
            PERFORM insert_category_translations('graines-hybrides', 'en', 'Hybrid seeds');
            PERFORM insert_category_translations('graines-hybrides', 'de', 'Hybrid‑Samen');
            PERFORM insert_category_translations('graines-hybrides', 'es', 'Semillas híbridas');
            PERFORM insert_category_translations('graines-hybrides', 'it', 'Semi ibridi');

            -- Level 2: bulbes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bulbes', 'bulbes', 2, l1_id, 'Bulbes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bulbes', 'fr', 'Bulbes');
            PERFORM insert_category_translations('bulbes', 'ar', 'بصيلات');
            PERFORM insert_category_translations('bulbes', 'en', 'Bulbs');
            PERFORM insert_category_translations('bulbes', 'de', 'Zwiebeln');
            PERFORM insert_category_translations('bulbes', 'es', 'Bulbos');
            PERFORM insert_category_translations('bulbes', 'it', 'Bulbi');

            -- Level 2: jeunes-pousses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jeunes-pousses', 'jeunes-pousses', 2, l1_id, 'Jeunes pousses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('jeunes-pousses', 'fr', 'Jeunes pousses');
            PERFORM insert_category_translations('jeunes-pousses', 'ar', 'براعم صغيرة');
            PERFORM insert_category_translations('jeunes-pousses', 'en', 'Seedlings');
            PERFORM insert_category_translations('jeunes-pousses', 'de', 'Junge Triebe');
            PERFORM insert_category_translations('jeunes-pousses', 'es', 'Brotes jóvenes');
            PERFORM insert_category_translations('jeunes-pousses', 'it', 'Germogli');

        -- Level 1: engrais-fertilisants
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('engrais-fertilisants', 'engrais-fertilisants', 1, root_id, 'Engrais & fertilisants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('engrais-fertilisants', 'fr', 'Engrais & fertilisants');
        PERFORM insert_category_translations('engrais-fertilisants', 'ar', 'أسمدة ومحسنات التربة');
        PERFORM insert_category_translations('engrais-fertilisants', 'en', 'Fertilizers & soil amendments');
        PERFORM insert_category_translations('engrais-fertilisants', 'de', 'Dünger & Bodenverbesserer');
        PERFORM insert_category_translations('engrais-fertilisants', 'es', 'Fertilizantes & enmiendas');
        PERFORM insert_category_translations('engrais-fertilisants', 'it', 'Fertilizzanti & ammendanti');

            -- Level 2: engrais-chimiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('engrais-chimiques', 'engrais-chimiques', 2, l1_id, 'Engrais chimiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('engrais-chimiques', 'fr', 'Engrais chimiques');
            PERFORM insert_category_translations('engrais-chimiques', 'ar', 'أسمدة كيميائية');
            PERFORM insert_category_translations('engrais-chimiques', 'en', 'Chemical fertilizers');
            PERFORM insert_category_translations('engrais-chimiques', 'de', 'Chemische Dünger');
            PERFORM insert_category_translations('engrais-chimiques', 'es', 'Fertilizantes químicos');
            PERFORM insert_category_translations('engrais-chimiques', 'it', 'Fertilizzanti chimici');

            -- Level 2: engrais-organiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('engrais-organiques', 'engrais-organiques', 2, l1_id, 'Engrais organiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('engrais-organiques', 'fr', 'Engrais organiques');
            PERFORM insert_category_translations('engrais-organiques', 'ar', 'أسمدة عضوية');
            PERFORM insert_category_translations('engrais-organiques', 'en', 'Organic fertilizers');
            PERFORM insert_category_translations('engrais-organiques', 'de', 'Organische Dünger');
            PERFORM insert_category_translations('engrais-organiques', 'es', 'Fertilizantes orgánicos');
            PERFORM insert_category_translations('engrais-organiques', 'it', 'Fertilizzanti organici');

            -- Level 2: compost
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('compost', 'compost', 2, l1_id, 'Compost')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('compost', 'fr', 'Compost');
            PERFORM insert_category_translations('compost', 'ar', 'كمبوست');
            PERFORM insert_category_translations('compost', 'en', 'Compost');
            PERFORM insert_category_translations('compost', 'de', 'Kompost');
            PERFORM insert_category_translations('compost', 'es', 'Compost');
            PERFORM insert_category_translations('compost', 'it', 'Compost');

            -- Level 2: fumiers
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fumiers', 'fumiers', 2, l1_id, 'Fumiers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fumiers', 'fr', 'Fumiers');
            PERFORM insert_category_translations('fumiers', 'ar', 'سماد حيواني');
            PERFORM insert_category_translations('fumiers', 'en', 'Manure');
            PERFORM insert_category_translations('fumiers', 'de', 'Mist');
            PERFORM insert_category_translations('fumiers', 'es', 'Estiércol');
            PERFORM insert_category_translations('fumiers', 'it', 'Letame');

            -- Level 2: amendements-calcaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('amendements-calcaires', 'amendements-calcaires', 2, l1_id, 'Amendements calcaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('amendements-calcaires', 'fr', 'Amendements calcaires');
            PERFORM insert_category_translations('amendements-calcaires', 'ar', 'محسنات كلسية');
            PERFORM insert_category_translations('amendements-calcaires', 'en', 'Lime amendments');
            PERFORM insert_category_translations('amendements-calcaires', 'de', 'Kalkhaltige Bodenverbesserer');
            PERFORM insert_category_translations('amendements-calcaires', 'es', 'Enmiendas calcáreas');
            PERFORM insert_category_translations('amendements-calcaires', 'it', 'Ammendanti calcarei');

            -- Level 2: stimulateurs-de-croissance
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('stimulateurs-de-croissance', 'stimulateurs-de-croissance', 2, l1_id, 'Stimulateurs de croissance')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('stimulateurs-de-croissance', 'fr', 'Stimulateurs de croissance');
            PERFORM insert_category_translations('stimulateurs-de-croissance', 'ar', 'محفزات نمو');
            PERFORM insert_category_translations('stimulateurs-de-croissance', 'en', 'Growth stimulators');
            PERFORM insert_category_translations('stimulateurs-de-croissance', 'de', 'Wachstumsstimulatoren');
            PERFORM insert_category_translations('stimulateurs-de-croissance', 'es', 'Estimuladores de crecimiento');
            PERFORM insert_category_translations('stimulateurs-de-croissance', 'it', 'Stimolatori di crescita');

            -- Level 2: terreaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('terreaux', 'terreaux', 2, l1_id, 'Terreaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('terreaux', 'fr', 'Terreaux');
            PERFORM insert_category_translations('terreaux', 'ar', 'تربة زراعية');
            PERFORM insert_category_translations('terreaux', 'en', 'Potting soil');
            PERFORM insert_category_translations('terreaux', 'de', 'Pflanzerde');
            PERFORM insert_category_translations('terreaux', 'es', 'Sustrato para macetas');
            PERFORM insert_category_translations('terreaux', 'it', 'Terriccio');

            -- Level 2: substrats-agricoles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('substrats-agricoles', 'substrats-agricoles', 2, l1_id, 'Substrats agricoles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('substrats-agricoles', 'fr', 'Substrats agricoles');
            PERFORM insert_category_translations('substrats-agricoles', 'ar', 'ركائز زراعية');
            PERFORM insert_category_translations('substrats-agricoles', 'en', 'Agricultural substrates');
            PERFORM insert_category_translations('substrats-agricoles', 'de', 'Landwirtschaftliche Substrate');
            PERFORM insert_category_translations('substrats-agricoles', 'es', 'Sustratos agrícolas');
            PERFORM insert_category_translations('substrats-agricoles', 'it', 'Substrati agricoli');

            -- Level 2: additifs-nutritifs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('additifs-nutritifs', 'additifs-nutritifs', 2, l1_id, 'Additifs nutritifs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('additifs-nutritifs', 'fr', 'Additifs nutritifs');
            PERFORM insert_category_translations('additifs-nutritifs', 'ar', 'مضافات غذائية');
            PERFORM insert_category_translations('additifs-nutritifs', 'en', 'Nutrient additives');
            PERFORM insert_category_translations('additifs-nutritifs', 'de', 'Nährstoffzusätze');
            PERFORM insert_category_translations('additifs-nutritifs', 'es', 'Aditivos nutritivos');
            PERFORM insert_category_translations('additifs-nutritifs', 'it', 'Additivi nutritivi');

        -- Level 1: produits-phytosanitaires
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-phytosanitaires', 'produits-phytosanitaires', 1, root_id, 'Produits phytosanitaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('produits-phytosanitaires', 'fr', 'Produits phytosanitaires');
        PERFORM insert_category_translations('produits-phytosanitaires', 'ar', 'منتجات وقاية النبات');
        PERFORM insert_category_translations('produits-phytosanitaires', 'en', 'Crop protection products');
        PERFORM insert_category_translations('produits-phytosanitaires', 'de', 'Pflanzenschutzmittel');
        PERFORM insert_category_translations('produits-phytosanitaires', 'es', 'Productos fitosanitarios');
        PERFORM insert_category_translations('produits-phytosanitaires', 'it', 'Prodotti fitosanitari');

            -- Level 2: insecticides-agricoles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('insecticides-agricoles', 'insecticides-agricoles', 2, l1_id, 'Insecticides agricoles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('insecticides-agricoles', 'fr', 'Insecticides agricoles');
            PERFORM insert_category_translations('insecticides-agricoles', 'ar', 'مبيدات حشرية زراعية');
            PERFORM insert_category_translations('insecticides-agricoles', 'en', 'Agricultural insecticides');
            PERFORM insert_category_translations('insecticides-agricoles', 'de', 'Landwirtschaftliche Insektizide');
            PERFORM insert_category_translations('insecticides-agricoles', 'es', 'Insecticidas agrícolas');
            PERFORM insert_category_translations('insecticides-agricoles', 'it', 'Insetticidi agricoli');

            -- Level 2: fongicides
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fongicides', 'fongicides', 2, l1_id, 'Fongicides')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fongicides', 'fr', 'Fongicides');
            PERFORM insert_category_translations('fongicides', 'ar', 'مبيدات فطرية');
            PERFORM insert_category_translations('fongicides', 'en', 'Fungicides');
            PERFORM insert_category_translations('fongicides', 'de', 'Fungizide');
            PERFORM insert_category_translations('fongicides', 'es', 'Fungicidas');
            PERFORM insert_category_translations('fongicides', 'it', 'Fungicidi');

            -- Level 2: herbicides
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('herbicides', 'herbicides', 2, l1_id, 'Herbicides')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('herbicides', 'fr', 'Herbicides');
            PERFORM insert_category_translations('herbicides', 'ar', 'مبيدات أعشاب');
            PERFORM insert_category_translations('herbicides', 'en', 'Herbicides');
            PERFORM insert_category_translations('herbicides', 'de', 'Herbizide');
            PERFORM insert_category_translations('herbicides', 'es', 'Herbicidas');
            PERFORM insert_category_translations('herbicides', 'it', 'Erbicidi');

            -- Level 2: traitements-biologiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('traitements-biologiques', 'traitements-biologiques', 2, l1_id, 'Traitements biologiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('traitements-biologiques', 'fr', 'Traitements biologiques');
            PERFORM insert_category_translations('traitements-biologiques', 'ar', 'معالجات بيولوجية');
            PERFORM insert_category_translations('traitements-biologiques', 'en', 'Biological treatments');
            PERFORM insert_category_translations('traitements-biologiques', 'de', 'Biologische Behandlungen');
            PERFORM insert_category_translations('traitements-biologiques', 'es', 'Tratamientos biológicos');
            PERFORM insert_category_translations('traitements-biologiques', 'it', 'Trattamenti biologici');

            -- Level 2: repulsifs-naturels
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('repulsifs-naturels', 'repulsifs-naturels', 2, l1_id, 'Répulsifs naturels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('repulsifs-naturels', 'fr', 'Répulsifs naturels');
            PERFORM insert_category_translations('repulsifs-naturels', 'ar', 'مواد طاردة طبيعية');
            PERFORM insert_category_translations('repulsifs-naturels', 'en', 'Natural repellents');
            PERFORM insert_category_translations('repulsifs-naturels', 'de', 'Natürliche Abwehrmittel');
            PERFORM insert_category_translations('repulsifs-naturels', 'es', 'Repelentes naturales');
            PERFORM insert_category_translations('repulsifs-naturels', 'it', 'Repellenti naturali');

            -- Level 2: pieges-anti-nuisibles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pieges-anti-nuisibles', 'pieges-anti-nuisibles', 2, l1_id, 'Pièges anti-nuisibles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pieges-anti-nuisibles', 'fr', 'Pièges anti-nuisibles');
            PERFORM insert_category_translations('pieges-anti-nuisibles', 'ar', 'مصائد للآفات');
            PERFORM insert_category_translations('pieges-anti-nuisibles', 'en', 'Pest traps');
            PERFORM insert_category_translations('pieges-anti-nuisibles', 'de', 'Schädlingsfallen');
            PERFORM insert_category_translations('pieges-anti-nuisibles', 'es', 'Trampas para plagas');
            PERFORM insert_category_translations('pieges-anti-nuisibles', 'it', 'Trappole anti‑parassiti');

            -- Level 2: protections-pour-cultures
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('protections-pour-cultures', 'protections-pour-cultures', 2, l1_id, 'Protections pour cultures')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('protections-pour-cultures', 'fr', 'Protections pour cultures');
            PERFORM insert_category_translations('protections-pour-cultures', 'ar', 'وسائل حماية المحاصيل');
            PERFORM insert_category_translations('protections-pour-cultures', 'en', 'Crop protection systems');
            PERFORM insert_category_translations('protections-pour-cultures', 'de', 'Kulturschutzsysteme');
            PERFORM insert_category_translations('protections-pour-cultures', 'es', 'Sistemas de protección de cultivos');
            PERFORM insert_category_translations('protections-pour-cultures', 'it', 'Protezione delle colture');

        -- Level 1: elevage-soins-animaux
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('elevage-soins-animaux', 'elevage-soins-animaux', 1, root_id, 'Élevage & soins des animaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('elevage-soins-animaux', 'fr', 'Élevage & soins des animaux');
        PERFORM insert_category_translations('elevage-soins-animaux', 'ar', 'تربية الحيوانات والعناية بها');
        PERFORM insert_category_translations('elevage-soins-animaux', 'en', 'Livestock & animal care');
        PERFORM insert_category_translations('elevage-soins-animaux', 'de', 'Viehzucht & Tierpflege');
        PERFORM insert_category_translations('elevage-soins-animaux', 'es', 'Ganadería & cuidado animal');
        PERFORM insert_category_translations('elevage-soins-animaux', 'it', 'Allevamento & cura degli animali');

            -- Level 2: aliments-pour-betail
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('aliments-pour-betail', 'aliments-pour-betail', 2, l1_id, 'Aliments pour bétail')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('aliments-pour-betail', 'fr', 'Aliments pour bétail');
            PERFORM insert_category_translations('aliments-pour-betail', 'ar', 'أعلاف الماشية');
            PERFORM insert_category_translations('aliments-pour-betail', 'en', 'Cattle feed');
            PERFORM insert_category_translations('aliments-pour-betail', 'de', 'Rinderfutter');
            PERFORM insert_category_translations('aliments-pour-betail', 'es', 'Alimentos para ganado');
            PERFORM insert_category_translations('aliments-pour-betail', 'it', 'Mangimi per bovini');

            -- Level 2: aliments-pour-volailles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('aliments-pour-volailles', 'aliments-pour-volailles', 2, l1_id, 'Aliments pour volailles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('aliments-pour-volailles', 'fr', 'Aliments pour volailles');
            PERFORM insert_category_translations('aliments-pour-volailles', 'ar', 'أعلاف الدواجن');
            PERFORM insert_category_translations('aliments-pour-volailles', 'en', 'Poultry feed');
            PERFORM insert_category_translations('aliments-pour-volailles', 'de', 'Geflügelfutter');
            PERFORM insert_category_translations('aliments-pour-volailles', 'es', 'Alimentos para aves');
            PERFORM insert_category_translations('aliments-pour-volailles', 'it', 'Mangimi per pollame');

            -- Level 2: aliments-pour-ovins-caprins
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('aliments-pour-ovins-caprins', 'aliments-pour-ovins-caprins', 2, l1_id, 'Aliments pour ovins & caprins')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('aliments-pour-ovins-caprins', 'fr', 'Aliments pour ovins & caprins');
            PERFORM insert_category_translations('aliments-pour-ovins-caprins', 'ar', 'أعلاف الأغنام والماعز');
            PERFORM insert_category_translations('aliments-pour-ovins-caprins', 'en', 'Sheep & goats feed');
            PERFORM insert_category_translations('aliments-pour-ovins-caprins', 'de', 'Schaf‑ & Ziegenfutter');
            PERFORM insert_category_translations('aliments-pour-ovins-caprins', 'es', 'Alimentos para ovinos y caprinos');
            PERFORM insert_category_translations('aliments-pour-ovins-caprins', 'it', 'Mangimi per ovini e caprini');

            -- Level 2: complements-nutritionnels
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('complements-nutritionnels', 'complements-nutritionnels', 2, l1_id, 'Compléments nutritionnels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('complements-nutritionnels', 'fr', 'Compléments nutritionnels');
            PERFORM insert_category_translations('complements-nutritionnels', 'ar', 'مكملات غذائية');
            PERFORM insert_category_translations('complements-nutritionnels', 'en', 'Nutritional supplements');
            PERFORM insert_category_translations('complements-nutritionnels', 'de', 'Nahrungsergänzungen');
            PERFORM insert_category_translations('complements-nutritionnels', 'es', 'Complementos nutricionales');
            PERFORM insert_category_translations('complements-nutritionnels', 'it', 'Integratori nutrizionali');

            -- Level 2: produits-veterinaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-veterinaires', 'produits-veterinaires', 2, l1_id, 'Produits vétérinaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('produits-veterinaires', 'fr', 'Produits vétérinaires');
            PERFORM insert_category_translations('produits-veterinaires', 'ar', 'منتجات بيطرية');
            PERFORM insert_category_translations('produits-veterinaires', 'en', 'Veterinary products');
            PERFORM insert_category_translations('produits-veterinaires', 'de', 'Veterinärprodukte');
            PERFORM insert_category_translations('produits-veterinaires', 'es', 'Productos veterinarios');
            PERFORM insert_category_translations('produits-veterinaires', 'it', 'Prodotti veterinari');

            -- Level 2: mangeoires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mangeoires', 'mangeoires', 2, l1_id, 'Mangeoires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mangeoires', 'fr', 'Mangeoires');
            PERFORM insert_category_translations('mangeoires', 'ar', 'مغذات');
            PERFORM insert_category_translations('mangeoires', 'en', 'Feeders');
            PERFORM insert_category_translations('mangeoires', 'de', 'Futtertröge');
            PERFORM insert_category_translations('mangeoires', 'es', 'Comederos');
            PERFORM insert_category_translations('mangeoires', 'it', 'Mangiatoie');

            -- Level 2: abreuvoirs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('abreuvoirs', 'abreuvoirs', 2, l1_id, 'Abreuvoirs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('abreuvoirs', 'fr', 'Abreuvoirs');
            PERFORM insert_category_translations('abreuvoirs', 'ar', 'مساقي');
            PERFORM insert_category_translations('abreuvoirs', 'en', 'Waterers');
            PERFORM insert_category_translations('abreuvoirs', 'de', 'Tränken');
            PERFORM insert_category_translations('abreuvoirs', 'es', 'Bebederos');
            PERFORM insert_category_translations('abreuvoirs', 'it', 'Abbeveratoi');

            -- Level 2: clotures-electriques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('clotures-electriques', 'clotures-electriques', 2, l1_id, 'Clôtures électriques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('clotures-electriques', 'fr', 'Clôtures électriques');
            PERFORM insert_category_translations('clotures-electriques', 'ar', 'أسوار كهربائية');
            PERFORM insert_category_translations('clotures-electriques', 'en', 'Electric fences');
            PERFORM insert_category_translations('clotures-electriques', 'de', 'Elektrozäune');
            PERFORM insert_category_translations('clotures-electriques', 'es', 'Vallas eléctricas');
            PERFORM insert_category_translations('clotures-electriques', 'it', 'Recinzioni elettriche');

            -- Level 2: parcs-cages
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('parcs-cages', 'parcs-cages', 2, l1_id, 'Parcs & cages')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('parcs-cages', 'fr', 'Parcs & cages');
            PERFORM insert_category_translations('parcs-cages', 'ar', 'حظائر وأقفاص');
            PERFORM insert_category_translations('parcs-cages', 'en', 'Pens & cages');
            PERFORM insert_category_translations('parcs-cages', 'de', 'Ställe & Käfige');
            PERFORM insert_category_translations('parcs-cages', 'es', 'Parques y jaulas');
            PERFORM insert_category_translations('parcs-cages', 'it', 'Recinti & gabbie');

            -- Level 2: couveuses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('couveuses', 'couveuses', 2, l1_id, 'Couveuses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('couveuses', 'fr', 'Couveuses');
            PERFORM insert_category_translations('couveuses', 'ar', 'حاضنات');
            PERFORM insert_category_translations('couveuses', 'en', 'Incubators');
            PERFORM insert_category_translations('couveuses', 'de', 'Brutapparate');
            PERFORM insert_category_translations('couveuses', 'es', 'Incubadoras');
            PERFORM insert_category_translations('couveuses', 'it', 'Incubatrici');

            -- Level 2: nichoirs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('nichoirs', 'nichoirs', 2, l1_id, 'Nichoirs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('nichoirs', 'fr', 'Nichoirs');
            PERFORM insert_category_translations('nichoirs', 'ar', 'بيوت طيور');
            PERFORM insert_category_translations('nichoirs', 'en', 'Nest boxes');
            PERFORM insert_category_translations('nichoirs', 'de', 'Nistkästen');
            PERFORM insert_category_translations('nichoirs', 'es', 'Cajas nido');
            PERFORM insert_category_translations('nichoirs', 'it', 'Nidi artificiali');

            -- Level 2: equipements-de-traite
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('equipements-de-traite', 'equipements-de-traite', 2, l1_id, 'Équipements de traite')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('equipements-de-traite', 'fr', 'Équipements de traite');
            PERFORM insert_category_translations('equipements-de-traite', 'ar', 'معدات الحلب');
            PERFORM insert_category_translations('equipements-de-traite', 'en', 'Milking equipment');
            PERFORM insert_category_translations('equipements-de-traite', 'de', 'Melkausrüstung');
            PERFORM insert_category_translations('equipements-de-traite', 'es', 'Equipos de ordeño');
            PERFORM insert_category_translations('equipements-de-traite', 'it', 'Attrezzature per mungitura');

            -- Level 2: tondeuses-animales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tondeuses-animales', 'tondeuses-animales', 2, l1_id, 'Tondeuses animales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tondeuses-animales', 'fr', 'Tondeuses animales');
            PERFORM insert_category_translations('tondeuses-animales', 'ar', 'ماكينات جز');
            PERFORM insert_category_translations('tondeuses-animales', 'en', 'Animal clippers');
            PERFORM insert_category_translations('tondeuses-animales', 'de', 'Tier‑Schermaschinen');
            PERFORM insert_category_translations('tondeuses-animales', 'es', 'Máquinas de esquilar');
            PERFORM insert_category_translations('tondeuses-animales', 'it', 'Tosatrici per animali');

        -- Level 1: materiel-elevage
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('materiel-elevage', 'materiel-elevage', 1, root_id, 'Matériel d’élevage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('materiel-elevage', 'fr', 'Matériel d’élevage');
        PERFORM insert_category_translations('materiel-elevage', 'ar', 'معدات التربية');
        PERFORM insert_category_translations('materiel-elevage', 'en', 'Livestock equipment');
        PERFORM insert_category_translations('materiel-elevage', 'de', 'Ausrüstung für Viehzucht');
        PERFORM insert_category_translations('materiel-elevage', 'es', 'Equipos de ganadería');
        PERFORM insert_category_translations('materiel-elevage', 'it', 'Attrezzature per allevamento');

            -- Level 2: machines-a-traire
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('machines-a-traire', 'machines-a-traire', 2, l1_id, 'Machines à traire')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('machines-a-traire', 'fr', 'Machines à traire');
            PERFORM insert_category_translations('machines-a-traire', 'ar', 'آلات حلب');
            PERFORM insert_category_translations('machines-a-traire', 'en', 'Milking machines');
            PERFORM insert_category_translations('machines-a-traire', 'de', 'Melkmaschinen');
            PERFORM insert_category_translations('machines-a-traire', 'es', 'Máquinas de ordeño');
            PERFORM insert_category_translations('machines-a-traire', 'it', 'Mungitrici');

            -- Level 2: tanks-a-lait
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tanks-a-lait', 'tanks-a-lait', 2, l1_id, 'Tanks à lait')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tanks-a-lait', 'fr', 'Tanks à lait');
            PERFORM insert_category_translations('tanks-a-lait', 'ar', 'خزانات حليب');
            PERFORM insert_category_translations('tanks-a-lait', 'en', 'Milk tanks');
            PERFORM insert_category_translations('tanks-a-lait', 'de', 'Milchtanks');
            PERFORM insert_category_translations('tanks-a-lait', 'es', 'Depósitos de leche');
            PERFORM insert_category_translations('tanks-a-lait', 'it', 'Serbatoi del latte');

            -- Level 2: broyeurs-a-grains
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('broyeurs-a-grains', 'broyeurs-a-grains', 2, l1_id, 'Broyeurs à grains')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('broyeurs-a-grains', 'fr', 'Broyeurs à grains');
            PERFORM insert_category_translations('broyeurs-a-grains', 'ar', 'طواحين حبوب');
            PERFORM insert_category_translations('broyeurs-a-grains', 'en', 'Grain grinders');
            PERFORM insert_category_translations('broyeurs-a-grains', 'de', 'Getreidemühlen');
            PERFORM insert_category_translations('broyeurs-a-grains', 'es', 'Molinos de grano');
            PERFORM insert_category_translations('broyeurs-a-grains', 'it', 'Mulini per cereali');

            -- Level 2: distributeurs-automatiques-d-aliments
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('distributeurs-automatiques-d-aliments', 'distributeurs-automatiques-d-aliments', 2, l1_id, 'Distributeurs automatiques d’aliments')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('distributeurs-automatiques-d-aliments', 'fr', 'Distributeurs automatiques d’aliments');
            PERFORM insert_category_translations('distributeurs-automatiques-d-aliments', 'ar', 'موزعات علف آلية');
            PERFORM insert_category_translations('distributeurs-automatiques-d-aliments', 'en', 'Automatic feeders');
            PERFORM insert_category_translations('distributeurs-automatiques-d-aliments', 'de', 'Automatische Futterspender');
            PERFORM insert_category_translations('distributeurs-automatiques-d-aliments', 'es', 'Dispensadores automáticos de alimento');
            PERFORM insert_category_translations('distributeurs-automatiques-d-aliments', 'it', 'Distributori automatici di mangime');

            -- Level 2: enrubanneuses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('enrubanneuses', 'enrubanneuses', 2, l1_id, 'Enrubanneuses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('enrubanneuses', 'fr', 'Enrubanneuses');
            PERFORM insert_category_translations('enrubanneuses', 'ar', 'مغلفات الأعلاف');
            PERFORM insert_category_translations('enrubanneuses', 'en', 'Balers/wrappers');
            PERFORM insert_category_translations('enrubanneuses', 'de', 'Ballenwickler');
            PERFORM insert_category_translations('enrubanneuses', 'es', 'Enfardadoras');
            PERFORM insert_category_translations('enrubanneuses', 'it', 'Fasciatrici');

            -- Level 2: systemes-de-ventilation-elevage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('systemes-de-ventilation-elevage', 'systemes-de-ventilation-elevage', 2, l1_id, 'Systèmes de ventilation d’élevage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('systemes-de-ventilation-elevage', 'fr', 'Systèmes de ventilation d’élevage');
            PERFORM insert_category_translations('systemes-de-ventilation-elevage', 'ar', 'أنظمة تهوية التربية');
            PERFORM insert_category_translations('systemes-de-ventilation-elevage', 'en', 'Ventilation systems');
            PERFORM insert_category_translations('systemes-de-ventilation-elevage', 'de', 'Lüftungssysteme');
            PERFORM insert_category_translations('systemes-de-ventilation-elevage', 'es', 'Sistemas de ventilación');
            PERFORM insert_category_translations('systemes-de-ventilation-elevage', 'it', 'Sistemi di ventilazione');

            -- Level 2: tapis-d-elevage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tapis-d-elevage', 'tapis-d-elevage', 2, l1_id, 'Tapis d’élevage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tapis-d-elevage', 'fr', 'Tapis d’élevage');
            PERFORM insert_category_translations('tapis-d-elevage', 'ar', 'أرضيات تربية');
            PERFORM insert_category_translations('tapis-d-elevage', 'en', 'Livestock mats');
            PERFORM insert_category_translations('tapis-d-elevage', 'de', 'Stallmatten');
            PERFORM insert_category_translations('tapis-d-elevage', 'es', 'Suelos para establos');
            PERFORM insert_category_translations('tapis-d-elevage', 'it', 'Pavimentazioni per stalle');

            -- Level 2: abris-metalliques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('abris-metalliques', 'abris-metalliques', 2, l1_id, 'Abris métalliques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('abris-metalliques', 'fr', 'Abris métalliques');
            PERFORM insert_category_translations('abris-metalliques', 'ar', 'ملاجئ معدنية');
            PERFORM insert_category_translations('abris-metalliques', 'en', 'Metal shelters');
            PERFORM insert_category_translations('abris-metalliques', 'de', 'Metallunterstände');
            PERFORM insert_category_translations('abris-metalliques', 'es', 'Refugios metálicos');
            PERFORM insert_category_translations('abris-metalliques', 'it', 'Ripari in metallo');

        -- Level 1: produits-agricoles-bruts
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-agricoles-bruts', 'produits-agricoles-bruts', 1, root_id, 'Produits agricoles bruts')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('produits-agricoles-bruts', 'fr', 'Produits agricoles bruts');
        PERFORM insert_category_translations('produits-agricoles-bruts', 'ar', 'منتجات زراعية خام');
        PERFORM insert_category_translations('produits-agricoles-bruts', 'en', 'Raw agricultural products');
        PERFORM insert_category_translations('produits-agricoles-bruts', 'de', 'Rohlandwirtschaftliche Produkte');
        PERFORM insert_category_translations('produits-agricoles-bruts', 'es', 'Productos agrícolas brutos');
        PERFORM insert_category_translations('produits-agricoles-bruts', 'it', 'Prodotti agricoli grezzi');

            -- Level 2: cereales-ble-orge-mais
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cereales-ble-orge-mais', 'cereales-ble-orge-mais', 2, l1_id, 'Céréales (blé, orge, maïs)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cereales-ble-orge-mais', 'fr', 'Céréales (blé, orge, maïs)');
            PERFORM insert_category_translations('cereales-ble-orge-mais', 'ar', 'حبوب (قمح، شعير، ذرة)');
            PERFORM insert_category_translations('cereales-ble-orge-mais', 'en', 'Cereals (wheat, barley, corn)');
            PERFORM insert_category_translations('cereales-ble-orge-mais', 'de', 'Getreide (Weizen, Gerste, Mais)');
            PERFORM insert_category_translations('cereales-ble-orge-mais', 'es', 'Cereales (trigo, cebada, maíz)');
            PERFORM insert_category_translations('cereales-ble-orge-mais', 'it', 'Cereali (grano, orzo, mais)');

            -- Level 2: legumes-frais
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('legumes-frais', 'legumes-frais', 2, l1_id, 'Légumes frais')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('legumes-frais', 'fr', 'Légumes frais');
            PERFORM insert_category_translations('legumes-frais', 'ar', 'خضروات طازجة');
            PERFORM insert_category_translations('legumes-frais', 'en', 'Fresh vegetables');
            PERFORM insert_category_translations('legumes-frais', 'de', 'Frisches Gemüse');
            PERFORM insert_category_translations('legumes-frais', 'es', 'Verduras frescas');
            PERFORM insert_category_translations('legumes-frais', 'it', 'Verdure fresche');

            -- Level 2: fruits-de-saison
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fruits-de-saison', 'fruits-de-saison', 2, l1_id, 'Fruits de saison')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fruits-de-saison', 'fr', 'Fruits de saison');
            PERFORM insert_category_translations('fruits-de-saison', 'ar', 'فواكه موسمية');
            PERFORM insert_category_translations('fruits-de-saison', 'en', 'Seasonal fruits');
            PERFORM insert_category_translations('fruits-de-saison', 'de', 'Saisonfrüchte');
            PERFORM insert_category_translations('fruits-de-saison', 'es', 'Frutas de temporada');
            PERFORM insert_category_translations('fruits-de-saison', 'it', 'Frutta di stagione');

            -- Level 2: herbes-aromatiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('herbes-aromatiques', 'herbes-aromatiques', 2, l1_id, 'Herbes aromatiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('herbes-aromatiques', 'fr', 'Herbes aromatiques');
            PERFORM insert_category_translations('herbes-aromatiques', 'ar', 'أعشاب عطرية');
            PERFORM insert_category_translations('herbes-aromatiques', 'en', 'Aromatic herbs');
            PERFORM insert_category_translations('herbes-aromatiques', 'de', 'Aromatische Kräuter');
            PERFORM insert_category_translations('herbes-aromatiques', 'es', 'Hierbas aromáticas');
            PERFORM insert_category_translations('herbes-aromatiques', 'it', 'Erbe aromatiche');

            -- Level 2: plantes-medicinales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('plantes-medicinales', 'plantes-medicinales', 2, l1_id, 'Plantes médicinales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('plantes-medicinales', 'fr', 'Plantes médicinales');
            PERFORM insert_category_translations('plantes-medicinales', 'ar', 'نباتات طبية');
            PERFORM insert_category_translations('plantes-medicinales', 'en', 'Medicinal plants');
            PERFORM insert_category_translations('plantes-medicinales', 'de', 'Heilpflanzen');
            PERFORM insert_category_translations('plantes-medicinales', 'es', 'Plantas medicinales');
            PERFORM insert_category_translations('plantes-medicinales', 'it', 'Piante medicinali');

            -- Level 2: fourrage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fourrage', 'fourrage', 2, l1_id, 'Fourrage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fourrage', 'fr', 'Fourrage');
            PERFORM insert_category_translations('fourrage', 'ar', 'علف');
            PERFORM insert_category_translations('fourrage', 'en', 'Forage');
            PERFORM insert_category_translations('fourrage', 'de', 'Futter');
            PERFORM insert_category_translations('fourrage', 'es', 'Forraje');
            PERFORM insert_category_translations('fourrage', 'it', 'Foraggio');

            -- Level 2: foin
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('foin', 'foin', 2, l1_id, 'Foin')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('foin', 'fr', 'Foin');
            PERFORM insert_category_translations('foin', 'ar', 'تبن');
            PERFORM insert_category_translations('foin', 'en', 'Hay');
            PERFORM insert_category_translations('foin', 'de', 'Heu');
            PERFORM insert_category_translations('foin', 'es', 'Heno');
            PERFORM insert_category_translations('foin', 'it', 'Fieno');

            -- Level 2: luzerne
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('luzerne', 'luzerne', 2, l1_id, 'Luzerne')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('luzerne', 'fr', 'Luzerne');
            PERFORM insert_category_translations('luzerne', 'ar', 'الفصفصة');
            PERFORM insert_category_translations('luzerne', 'en', 'Alfalfa');
            PERFORM insert_category_translations('luzerne', 'de', 'Luzerne');
            PERFORM insert_category_translations('luzerne', 'es', 'Alfalfa');
            PERFORM insert_category_translations('luzerne', 'it', 'Erba medica');

            -- Level 2: paille
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('paille', 'paille', 2, l1_id, 'Paille')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('paille', 'fr', 'Paille');
            PERFORM insert_category_translations('paille', 'ar', 'قش');
            PERFORM insert_category_translations('paille', 'en', 'Straw');
            PERFORM insert_category_translations('paille', 'de', 'Stroh');
            PERFORM insert_category_translations('paille', 'es', 'Paja');
            PERFORM insert_category_translations('paille', 'it', 'Paglia');

        -- Level 1: produits-agroalimentaires-transformes
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-agroalimentaires-transformes', 'produits-agroalimentaires-transformes', 1, root_id, 'Produits agroalimentaires transformés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('produits-agroalimentaires-transformes', 'fr', 'Produits agroalimentaires transformés');
        PERFORM insert_category_translations('produits-agroalimentaires-transformes', 'ar', 'منتجات غذائية مصنّعة');
        PERFORM insert_category_translations('produits-agroalimentaires-transformes', 'en', 'Processed agri‑food products');
        PERFORM insert_category_translations('produits-agroalimentaires-transformes', 'de', 'Verarbeitete Lebensmittelprodukte');
        PERFORM insert_category_translations('produits-agroalimentaires-transformes', 'es', 'Productos agroalimentarios procesados');
        PERFORM insert_category_translations('produits-agroalimentaires-transformes', 'it', 'Prodotti agroalimentari trasformati');

            -- Level 2: farine
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('farine', 'farine', 2, l1_id, 'Farine')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('farine', 'fr', 'Farine');
            PERFORM insert_category_translations('farine', 'ar', 'دقيق');
            PERFORM insert_category_translations('farine', 'en', 'Flour');
            PERFORM insert_category_translations('farine', 'de', 'Mehl');
            PERFORM insert_category_translations('farine', 'es', 'Harina');
            PERFORM insert_category_translations('farine', 'it', 'Farina');

            -- Level 2: couscous
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('couscous', 'couscous', 2, l1_id, 'Couscous')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('couscous', 'fr', 'Couscous');
            PERFORM insert_category_translations('couscous', 'ar', 'كسكس');
            PERFORM insert_category_translations('couscous', 'en', 'Couscous');
            PERFORM insert_category_translations('couscous', 'de', 'Couscous');
            PERFORM insert_category_translations('couscous', 'es', 'Cuscús');
            PERFORM insert_category_translations('couscous', 'it', 'Couscous');

            -- Level 2: semoule
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('semoule', 'semoule', 2, l1_id, 'Semoule')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('semoule', 'fr', 'Semoule');
            PERFORM insert_category_translations('semoule', 'ar', 'سميد');
            PERFORM insert_category_translations('semoule', 'en', 'Semolina');
            PERFORM insert_category_translations('semoule', 'de', 'Grieß');
            PERFORM insert_category_translations('semoule', 'es', 'Sémola');
            PERFORM insert_category_translations('semoule', 'it', 'Semola');

            -- Level 2: huile-d-olive
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('huile-d-olive', 'huile-d-olive', 2, l1_id, 'Huile d’olive')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('huile-d-olive', 'fr', 'Huile d’olive');
            PERFORM insert_category_translations('huile-d-olive', 'ar', 'زيت زيتون');
            PERFORM insert_category_translations('huile-d-olive', 'en', 'Olive oil');
            PERFORM insert_category_translations('huile-d-olive', 'de', 'Olivenöl');
            PERFORM insert_category_translations('huile-d-olive', 'es', 'Aceite de oliva');
            PERFORM insert_category_translations('huile-d-olive', 'it', 'Olio d''oliva');

            -- Level 2: huiles-vegetales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('huiles-vegetales', 'huiles-vegetales', 2, l1_id, 'Huiles végétales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('huiles-vegetales', 'fr', 'Huiles végétales');
            PERFORM insert_category_translations('huiles-vegetales', 'ar', 'زيوت نباتية');
            PERFORM insert_category_translations('huiles-vegetales', 'en', 'Vegetable oils');
            PERFORM insert_category_translations('huiles-vegetales', 'de', 'Pflanzenöle');
            PERFORM insert_category_translations('huiles-vegetales', 'es', 'Aceites vegetales');
            PERFORM insert_category_translations('huiles-vegetales', 'it', 'Oli vegetali');

            -- Level 2: conserves
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('conserves', 'conserves', 2, l1_id, 'Conserves')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('conserves', 'fr', 'Conserves');
            PERFORM insert_category_translations('conserves', 'ar', 'معلبات');
            PERFORM insert_category_translations('conserves', 'en', 'Canned goods');
            PERFORM insert_category_translations('conserves', 'de', 'Konserven');
            PERFORM insert_category_translations('conserves', 'es', 'Conservas');
            PERFORM insert_category_translations('conserves', 'it', 'Conserve');

            -- Level 2: confitures
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('confitures', 'confitures', 2, l1_id, 'Confitures')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('confitures', 'fr', 'Confitures');
            PERFORM insert_category_translations('confitures', 'ar', 'مربى');
            PERFORM insert_category_translations('confitures', 'en', 'Jams');
            PERFORM insert_category_translations('confitures', 'de', 'Marmeladen');
            PERFORM insert_category_translations('confitures', 'es', 'Mermeladas');
            PERFORM insert_category_translations('confitures', 'it', 'Confetture');

            -- Level 2: produits-laitiers
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-laitiers', 'produits-laitiers', 2, l1_id, 'Produits laitiers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('produits-laitiers', 'fr', 'Produits laitiers');
            PERFORM insert_category_translations('produits-laitiers', 'ar', 'منتجات ألبان');
            PERFORM insert_category_translations('produits-laitiers', 'en', 'Dairy products');
            PERFORM insert_category_translations('produits-laitiers', 'de', 'Milchprodukte');
            PERFORM insert_category_translations('produits-laitiers', 'es', 'Productos lácteos');
            PERFORM insert_category_translations('produits-laitiers', 'it', 'Prodotti lattiero‑caseari');

            -- Level 2: fromages
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fromages', 'fromages', 2, l1_id, 'Fromages')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fromages', 'fr', 'Fromages');
            PERFORM insert_category_translations('fromages', 'ar', 'أجبان');
            PERFORM insert_category_translations('fromages', 'en', 'Cheeses');
            PERFORM insert_category_translations('fromages', 'de', 'Käse');
            PERFORM insert_category_translations('fromages', 'es', 'Quesos');
            PERFORM insert_category_translations('fromages', 'it', 'Formaggi');

            -- Level 2: miel
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('miel', 'miel', 2, l1_id, 'Miel')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('miel', 'fr', 'Miel');
            PERFORM insert_category_translations('miel', 'ar', 'عسل');
            PERFORM insert_category_translations('miel', 'en', 'Honey');
            PERFORM insert_category_translations('miel', 'de', 'Honig');
            PERFORM insert_category_translations('miel', 'es', 'Miel');
            PERFORM insert_category_translations('miel', 'it', 'Miele');

            -- Level 2: dattes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('dattes', 'dattes', 2, l1_id, 'Dattes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('dattes', 'fr', 'Dattes');
            PERFORM insert_category_translations('dattes', 'ar', 'تمر');
            PERFORM insert_category_translations('dattes', 'en', 'Dates');
            PERFORM insert_category_translations('dattes', 'de', 'Datteln');
            PERFORM insert_category_translations('dattes', 'es', 'Dátiles');
            PERFORM insert_category_translations('dattes', 'it', 'Datteri');

            -- Level 2: produits-secs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-secs', 'produits-secs', 2, l1_id, 'Produits secs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('produits-secs', 'fr', 'Produits secs');
            PERFORM insert_category_translations('produits-secs', 'ar', 'منتجات جافة');
            PERFORM insert_category_translations('produits-secs', 'en', 'Dry products');
            PERFORM insert_category_translations('produits-secs', 'de', 'Trockenprodukte');
            PERFORM insert_category_translations('produits-secs', 'es', 'Productos secos');
            PERFORM insert_category_translations('produits-secs', 'it', 'Prodotti secchi');

            -- Level 2: legumineuses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('legumineuses', 'legumineuses', 2, l1_id, 'Légumineuses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('legumineuses', 'fr', 'Légumineuses');
            PERFORM insert_category_translations('legumineuses', 'ar', 'بقوليات');
            PERFORM insert_category_translations('legumineuses', 'en', 'Legumes/pulses');
            PERFORM insert_category_translations('legumineuses', 'de', 'Hülsenfrüchte');
            PERFORM insert_category_translations('legumineuses', 'es', 'Legumbres');
            PERFORM insert_category_translations('legumineuses', 'it', 'Legumi');

        -- Level 1: equipements-agroalimentaires
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('equipements-agroalimentaires', 'equipements-agroalimentaires', 1, root_id, 'Équipements agroalimentaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('equipements-agroalimentaires', 'fr', 'Équipements agroalimentaires');
        PERFORM insert_category_translations('equipements-agroalimentaires', 'ar', 'معدات الصناعات الغذائية');
        PERFORM insert_category_translations('equipements-agroalimentaires', 'en', 'Agri‑food equipment');
        PERFORM insert_category_translations('equipements-agroalimentaires', 'de', 'Lebensmitteltechnik');
        PERFORM insert_category_translations('equipements-agroalimentaires', 'es', 'Equipamiento agroalimentario');
        PERFORM insert_category_translations('equipements-agroalimentaires', 'it', 'Attrezzature agroalimentari');

            -- Level 2: moulins-agro
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('moulins-agro', 'moulins-agro', 2, l1_id, 'Moulins')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('moulins-agro', 'fr', 'Moulins');
            PERFORM insert_category_translations('moulins-agro', 'ar', 'مطاحن');
            PERFORM insert_category_translations('moulins-agro', 'en', 'Mills');
            PERFORM insert_category_translations('moulins-agro', 'de', 'Mühlen');
            PERFORM insert_category_translations('moulins-agro', 'es', 'Molinos');
            PERFORM insert_category_translations('moulins-agro', 'it', 'Mulini');

            -- Level 2: concasseurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('concasseurs', 'concasseurs', 2, l1_id, 'Concasseurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('concasseurs', 'fr', 'Concasseurs');
            PERFORM insert_category_translations('concasseurs', 'ar', 'كسارات');
            PERFORM insert_category_translations('concasseurs', 'en', 'Crushers');
            PERFORM insert_category_translations('concasseurs', 'de', 'Brecher');
            PERFORM insert_category_translations('concasseurs', 'es', 'Trituradoras');
            PERFORM insert_category_translations('concasseurs', 'it', 'Frantoi');

            -- Level 2: presses-a-huile
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('presses-a-huile', 'presses-a-huile', 2, l1_id, 'Presses à huile')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('presses-a-huile', 'fr', 'Presses à huile');
            PERFORM insert_category_translations('presses-a-huile', 'ar', 'معاصر زيت');
            PERFORM insert_category_translations('presses-a-huile', 'en', 'Oil presses');
            PERFORM insert_category_translations('presses-a-huile', 'de', 'Ölpressen');
            PERFORM insert_category_translations('presses-a-huile', 'es', 'Prensas de aceite');
            PERFORM insert_category_translations('presses-a-huile', 'it', 'Spremitrici per olio');

            -- Level 2: petrins
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('petrins', 'petrins', 2, l1_id, 'Pétrins')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('petrins', 'fr', 'Pétrins');
            PERFORM insert_category_translations('petrins', 'ar', 'عجانات');
            PERFORM insert_category_translations('petrins', 'en', 'Mixers/kneaders');
            PERFORM insert_category_translations('petrins', 'de', 'Teigkneter');
            PERFORM insert_category_translations('petrins', 'es', 'Amasadoras');
            PERFORM insert_category_translations('petrins', 'it', 'Impastatrici');

            -- Level 2: machines-d-emballage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('machines-d-emballage', 'machines-d-emballage', 2, l1_id, 'Machines d’emballage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('machines-d-emballage', 'fr', 'Machines d’emballage');
            PERFORM insert_category_translations('machines-d-emballage', 'ar', 'آلات تعبئة وتغليف');
            PERFORM insert_category_translations('machines-d-emballage', 'en', 'Packaging machines');
            PERFORM insert_category_translations('machines-d-emballage', 'de', 'Verpackungsmaschinen');
            PERFORM insert_category_translations('machines-d-emballage', 'es', 'Máquinas de envasado');
            PERFORM insert_category_translations('machines-d-emballage', 'it', 'Macchine per confezionamento');

            -- Level 2: pasteurisateurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pasteurisateurs', 'pasteurisateurs', 2, l1_id, 'Pasteurisateurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pasteurisateurs', 'fr', 'Pasteurisateurs');
            PERFORM insert_category_translations('pasteurisateurs', 'ar', 'مبسترات');
            PERFORM insert_category_translations('pasteurisateurs', 'en', 'Pasteurizers');
            PERFORM insert_category_translations('pasteurisateurs', 'de', 'Pasteurisierer');
            PERFORM insert_category_translations('pasteurisateurs', 'es', 'Pasteurizadores');
            PERFORM insert_category_translations('pasteurisateurs', 'it', 'Pastorizzatori');

            -- Level 2: machines-de-transformation
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('machines-de-transformation', 'machines-de-transformation', 2, l1_id, 'Machines de transformation alimentaire')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('machines-de-transformation', 'fr', 'Machines de transformation alimentaire');
            PERFORM insert_category_translations('machines-de-transformation', 'ar', 'آلات معالجة غذائية');
            PERFORM insert_category_translations('machines-de-transformation', 'en', 'Food processing machines');
            PERFORM insert_category_translations('machines-de-transformation', 'de', 'Lebensmittelverarbeitungsmaschinen');
            PERFORM insert_category_translations('machines-de-transformation', 'es', 'Máquinas de procesamiento de alimentos');
            PERFORM insert_category_translations('machines-de-transformation', 'it', 'Macchine di trasformazione alimentare');

            -- Level 2: sterilisateurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sterilisateurs', 'sterilisateurs', 2, l1_id, 'Stérilisateurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sterilisateurs', 'fr', 'Stérilisateurs');
            PERFORM insert_category_translations('sterilisateurs', 'ar', 'معقمات');
            PERFORM insert_category_translations('sterilisateurs', 'en', 'Sterilizers');
            PERFORM insert_category_translations('sterilisateurs', 'de', 'Sterilisatoren');
            PERFORM insert_category_translations('sterilisateurs', 'es', 'Esterilizadores');
            PERFORM insert_category_translations('sterilisateurs', 'it', 'Sterilizzatori');

            -- Level 2: broyeurs-alimentaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('broyeurs-alimentaires', 'broyeurs-alimentaires', 2, l1_id, 'Broyeurs alimentaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('broyeurs-alimentaires', 'fr', 'Broyeurs alimentaires');
            PERFORM insert_category_translations('broyeurs-alimentaires', 'ar', 'مطاحن غذائية');
            PERFORM insert_category_translations('broyeurs-alimentaires', 'en', 'Food grinders');
            PERFORM insert_category_translations('broyeurs-alimentaires', 'de', 'Lebensmittelmühlen');
            PERFORM insert_category_translations('broyeurs-alimentaires', 'es', 'Molinos alimentarios');
            PERFORM insert_category_translations('broyeurs-alimentaires', 'it', 'Mulini alimentari');

        -- Level 1: serres-solutions-de-culture
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('serres-solutions-de-culture', 'serres-solutions-de-culture', 1, root_id, 'Serres & solutions de culture')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('serres-solutions-de-culture', 'fr', 'Serres & solutions de culture');
        PERFORM insert_category_translations('serres-solutions-de-culture', 'ar', 'بيوت بلاستيكية وحلول الزراعة');
        PERFORM insert_category_translations('serres-solutions-de-culture', 'en', 'Greenhouses & growing solutions');
        PERFORM insert_category_translations('serres-solutions-de-culture', 'de', 'Gewächshäuser & Anbaulösungen');
        PERFORM insert_category_translations('serres-solutions-de-culture', 'es', 'Invernaderos & soluciones de cultivo');
        PERFORM insert_category_translations('serres-solutions-de-culture', 'it', 'Serre & soluzioni di coltivazione');

            -- Level 2: serres-tunnel
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('serres-tunnel', 'serres-tunnel', 2, l1_id, 'Serres tunnel')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('serres-tunnel', 'fr', 'Serres tunnel');
            PERFORM insert_category_translations('serres-tunnel', 'ar', 'بيوت أنفاق');
            PERFORM insert_category_translations('serres-tunnel', 'en', 'Tunnel greenhouses');
            PERFORM insert_category_translations('serres-tunnel', 'de', 'Tunnelgewächshäuser');
            PERFORM insert_category_translations('serres-tunnel', 'es', 'Invernaderos túnel');
            PERFORM insert_category_translations('serres-tunnel', 'it', 'Serre a tunnel');

            -- Level 2: serres-metalliques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('serres-metalliques', 'serres-metalliques', 2, l1_id, 'Serres métalliques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('serres-metalliques', 'fr', 'Serres métalliques');
            PERFORM insert_category_translations('serres-metalliques', 'ar', 'بيوت معدنية');
            PERFORM insert_category_translations('serres-metalliques', 'en', 'Metal greenhouses');
            PERFORM insert_category_translations('serres-metalliques', 'de', 'Metallgewächshäuser');
            PERFORM insert_category_translations('serres-metalliques', 'es', 'Invernaderos metálicos');
            PERFORM insert_category_translations('serres-metalliques', 'it', 'Serre metalliche');

            -- Level 2: baches-de-serre
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('baches-de-serre', 'baches-de-serre', 2, l1_id, 'Bâches de serre')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('baches-de-serre', 'fr', 'Bâches de serre');
            PERFORM insert_category_translations('baches-de-serre', 'ar', 'أغطية بيوت بلاستيكية');
            PERFORM insert_category_translations('baches-de-serre', 'en', 'Greenhouse covers');
            PERFORM insert_category_translations('baches-de-serre', 'de', 'Gewächshausfolien');
            PERFORM insert_category_translations('baches-de-serre', 'es', 'Cubiertas para invernadero');
            PERFORM insert_category_translations('baches-de-serre', 'it', 'Teli per serre');

            -- Level 2: systemes-hydroponiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('systemes-hydroponiques', 'systemes-hydroponiques', 2, l1_id, 'Systèmes hydroponiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('systemes-hydroponiques', 'fr', 'Systèmes hydroponiques');
            PERFORM insert_category_translations('systemes-hydroponiques', 'ar', 'أنظمة الزراعة المائية');
            PERFORM insert_category_translations('systemes-hydroponiques', 'en', 'Hydroponic systems');
            PERFORM insert_category_translations('systemes-hydroponiques', 'de', 'Hydroponische Systeme');
            PERFORM insert_category_translations('systemes-hydroponiques', 'es', 'Sistemas hidropónicos');
            PERFORM insert_category_translations('systemes-hydroponiques', 'it', 'Sistemi idroponici');

            -- Level 2: systemes-aquaponiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('systemes-aquaponiques', 'systemes-aquaponiques', 2, l1_id, 'Systèmes aquaponiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('systemes-aquaponiques', 'fr', 'Systèmes aquaponiques');
            PERFORM insert_category_translations('systemes-aquaponiques', 'ar', 'أنظمة الأكوابونيك');
            PERFORM insert_category_translations('systemes-aquaponiques', 'en', 'Aquaponic systems');
            PERFORM insert_category_translations('systemes-aquaponiques', 'de', 'Aquaponik‑Systeme');
            PERFORM insert_category_translations('systemes-aquaponiques', 'es', 'Sistemas de acuaponía');
            PERFORM insert_category_translations('systemes-aquaponiques', 'it', 'Sistemi di acquaponica');

            -- Level 2: lampes-horticoles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lampes-horticoles', 'lampes-horticoles', 2, l1_id, 'Lampes horticoles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lampes-horticoles', 'fr', 'Lampes horticoles');
            PERFORM insert_category_translations('lampes-horticoles', 'ar', 'مصابيح زراعية');
            PERFORM insert_category_translations('lampes-horticoles', 'en', 'Grow lights');
            PERFORM insert_category_translations('lampes-horticoles', 'de', 'Pflanzenlampen');
            PERFORM insert_category_translations('lampes-horticoles', 'es', 'Lámparas de cultivo');
            PERFORM insert_category_translations('lampes-horticoles', 'it', 'Lampade orticole');

            -- Level 2: tables-de-culture
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tables-de-culture', 'tables-de-culture', 2, l1_id, 'Tables de culture')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tables-de-culture', 'fr', 'Tables de culture');
            PERFORM insert_category_translations('tables-de-culture', 'ar', 'طاولات زراعة');
            PERFORM insert_category_translations('tables-de-culture', 'en', 'Planting tables');
            PERFORM insert_category_translations('tables-de-culture', 'de', 'Anbautische');
            PERFORM insert_category_translations('tables-de-culture', 'es', 'Mesas de cultivo');
            PERFORM insert_category_translations('tables-de-culture', 'it', 'Tavoli di coltivazione');

            -- Level 2: capteurs-d-humidite
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('capteurs-d-humidite', 'capteurs-d-humidite', 2, l1_id, 'Capteurs d’humidité')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('capteurs-d-humidite', 'fr', 'Capteurs d’humidité');
            PERFORM insert_category_translations('capteurs-d-humidite', 'ar', 'حساسات رطوبة');
            PERFORM insert_category_translations('capteurs-d-humidite', 'en', 'Humidity sensors');
            PERFORM insert_category_translations('capteurs-d-humidite', 'de', 'Feuchtigkeitssensoren');
            PERFORM insert_category_translations('capteurs-d-humidite', 'es', 'Sensores de humedad');
            PERFORM insert_category_translations('capteurs-d-humidite', 'it', 'Sensori di umidità');

        -- Level 1: amenagement-agricole
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('amenagement-agricole', 'amenagement-agricole', 1, root_id, 'Aménagement agricole')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('amenagement-agricole', 'fr', 'Aménagement agricole');
        PERFORM insert_category_translations('amenagement-agricole', 'ar', 'تهيئة زراعية');
        PERFORM insert_category_translations('amenagement-agricole', 'en', 'Agricultural amenities');
        PERFORM insert_category_translations('amenagement-agricole', 'de', 'Landwirtschaftliche Ausstattung');
        PERFORM insert_category_translations('amenagement-agricole', 'es', 'Acondicionamiento agrícola');
        PERFORM insert_category_translations('amenagement-agricole', 'it', 'Allestimenti agricoli');

            -- Level 2: clotures-metalliques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('clotures-metalliques', 'clotures-metalliques', 2, l1_id, 'Clôtures métalliques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('clotures-metalliques', 'fr', 'Clôtures métalliques');
            PERFORM insert_category_translations('clotures-metalliques', 'ar', 'أسوار معدنية');
            PERFORM insert_category_translations('clotures-metalliques', 'en', 'Metal fences');
            PERFORM insert_category_translations('clotures-metalliques', 'de', 'Metallzäune');
            PERFORM insert_category_translations('clotures-metalliques', 'es', 'Vallas metálicas');
            PERFORM insert_category_translations('clotures-metalliques', 'it', 'Recinzioni metalliche');

            -- Level 2: grillages
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('grillages', 'grillages', 2, l1_id, 'Grillages')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('grillages', 'fr', 'Grillages');
            PERFORM insert_category_translations('grillages', 'ar', 'شبك معدني');
            PERFORM insert_category_translations('grillages', 'en', 'Wire meshes');
            PERFORM insert_category_translations('grillages', 'de', 'Drahtgeflechte');
            PERFORM insert_category_translations('grillages', 'es', 'Mallas metálicas');
            PERFORM insert_category_translations('grillages', 'it', 'Reti metalliche');

            -- Level 2: baches-agricoles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('baches-agricoles', 'baches-agricoles', 2, l1_id, 'Bâches agricoles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('baches-agricoles', 'fr', 'Bâches agricoles');
            PERFORM insert_category_translations('baches-agricoles', 'ar', 'أغطية زراعية');
            PERFORM insert_category_translations('baches-agricoles', 'en', 'Agricultural tarpaulins');
            PERFORM insert_category_translations('baches-agricoles', 'de', 'Landwirtschaftliche Planen');
            PERFORM insert_category_translations('baches-agricoles', 'es', 'Lonas agrícolas');
            PERFORM insert_category_translations('baches-agricoles', 'it', 'Teli agricoli');

            -- Level 2: filets-d-ombrage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('filets-d-ombrage', 'filets-d-ombrage', 2, l1_id, 'Filets d’ombrage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('filets-d-ombrage', 'fr', 'Filets d’ombrage');
            PERFORM insert_category_translations('filets-d-ombrage', 'ar', 'شبكات ظل');
            PERFORM insert_category_translations('filets-d-ombrage', 'en', 'Shade nets');
            PERFORM insert_category_translations('filets-d-ombrage', 'de', 'Schattiernetze');
            PERFORM insert_category_translations('filets-d-ombrage', 'es', 'Redes de sombreo');
            PERFORM insert_category_translations('filets-d-ombrage', 'it', 'Reti ombreggianti');

            -- Level 2: paillages
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('paillages', 'paillages', 2, l1_id, 'Paillages')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('paillages', 'fr', 'Paillages');
            PERFORM insert_category_translations('paillages', 'ar', 'مفارش عضوية');
            PERFORM insert_category_translations('paillages', 'en', 'Mulches');
            PERFORM insert_category_translations('paillages', 'de', 'Mulch');
            PERFORM insert_category_translations('paillages', 'es', 'Acolchados');
            PERFORM insert_category_translations('paillages', 'it', 'Pacciamature');

            -- Level 2: tuteurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tuteurs', 'tuteurs', 2, l1_id, 'Tuteurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tuteurs', 'fr', 'Tuteurs');
            PERFORM insert_category_translations('tuteurs', 'ar', 'دعامات النباتات');
            PERFORM insert_category_translations('tuteurs', 'en', 'Plant stakes');
            PERFORM insert_category_translations('tuteurs', 'de', 'Pflanzstützen');
            PERFORM insert_category_translations('tuteurs', 'es', 'Soportes para plantas');
            PERFORM insert_category_translations('tuteurs', 'it', 'Tutor per piante');

            -- Level 2: piquets
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('piquets', 'piquets', 2, l1_id, 'Piquets')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('piquets', 'fr', 'Piquets');
            PERFORM insert_category_translations('piquets', 'ar', 'أوتاد');
            PERFORM insert_category_translations('piquets', 'en', 'Posts');
            PERFORM insert_category_translations('piquets', 'de', 'Pfosten');
            PERFORM insert_category_translations('piquets', 'es', 'Estacas');
            PERFORM insert_category_translations('piquets', 'it', 'Picchetti');

            -- Level 2: abris-agricoles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('abris-agricoles', 'abris-agricoles', 2, l1_id, 'Abris agricoles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('abris-agricoles', 'fr', 'Abris agricoles');
            PERFORM insert_category_translations('abris-agricoles', 'ar', 'ملاجئ زراعية');
            PERFORM insert_category_translations('abris-agricoles', 'en', 'Farm shelters');
            PERFORM insert_category_translations('abris-agricoles', 'de', 'Landwirtschaftliche Unterstände');
            PERFORM insert_category_translations('abris-agricoles', 'es', 'Refugios agrícolas');
            PERFORM insert_category_translations('abris-agricoles', 'it', 'Ricoveri agricoli');

            -- Level 2: hangars-demontables
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('hangars-demontables', 'hangars-demontables', 2, l1_id, 'Hangars démontables')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('hangars-demontables', 'fr', 'Hangars démontables');
            PERFORM insert_category_translations('hangars-demontables', 'ar', 'مخازن قابلة للتفكيك');
            PERFORM insert_category_translations('hangars-demontables', 'en', 'Detachable hangars');
            PERFORM insert_category_translations('hangars-demontables', 'de', 'Demontierbare Hallen');
            PERFORM insert_category_translations('hangars-demontables', 'es', 'Naves desmontables');
            PERFORM insert_category_translations('hangars-demontables', 'it', 'Capannoni smontabili');

        -- Level 1: transport-logistique-agricole
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('transport-logistique-agricole', 'transport-logistique-agricole', 1, root_id, 'Transport & logistique agricole')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('transport-logistique-agricole', 'fr', 'Transport & logistique agricole');
        PERFORM insert_category_translations('transport-logistique-agricole', 'ar', 'النقل واللوجستيك الزراعي');
        PERFORM insert_category_translations('transport-logistique-agricole', 'en', 'Agricultural transport & logistics');
        PERFORM insert_category_translations('transport-logistique-agricole', 'de', 'Transport & Logistik');
        PERFORM insert_category_translations('transport-logistique-agricole', 'es', 'Transporte & logística agrícola');
        PERFORM insert_category_translations('transport-logistique-agricole', 'it', 'Trasporto & logistica agricola');

            -- Level 2: sacs-de-stockage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-de-stockage', 'sacs-de-stockage', 2, l1_id, 'Sacs de stockage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-de-stockage', 'fr', 'Sacs de stockage');
            PERFORM insert_category_translations('sacs-de-stockage', 'ar', 'أكياس تخزين');
            PERFORM insert_category_translations('sacs-de-stockage', 'en', 'Storage bags');
            PERFORM insert_category_translations('sacs-de-stockage', 'de', 'Lagerungssäcke');
            PERFORM insert_category_translations('sacs-de-stockage', 'es', 'Sacos de almacenamiento');
            PERFORM insert_category_translations('sacs-de-stockage', 'it', 'Sacchi di stoccaggio');

            -- Level 2: big-bags
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('big-bags', 'big-bags', 2, l1_id, 'Big-bags')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('big-bags', 'fr', 'Big-bags');
            PERFORM insert_category_translations('big-bags', 'ar', 'أكياس كبيرة');
            PERFORM insert_category_translations('big-bags', 'en', 'Big‑bags');
            PERFORM insert_category_translations('big-bags', 'de', 'Big‑Bags');
            PERFORM insert_category_translations('big-bags', 'es', 'Big bags');
            PERFORM insert_category_translations('big-bags', 'it', 'Big bags');

            -- Level 2: caisses-de-recolte
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('caisses-de-recolte', 'caisses-de-recolte', 2, l1_id, 'Caisses de récolte')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('caisses-de-recolte', 'fr', 'Caisses de récolte');
            PERFORM insert_category_translations('caisses-de-recolte', 'ar', 'صناديق حصاد');
            PERFORM insert_category_translations('caisses-de-recolte', 'en', 'Harvest crates');
            PERFORM insert_category_translations('caisses-de-recolte', 'de', 'Erntekisten');
            PERFORM insert_category_translations('caisses-de-recolte', 'es', 'Cajas de cosecha');
            PERFORM insert_category_translations('caisses-de-recolte', 'it', 'Cassette per raccolta');

            -- Level 2: palettes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('palettes', 'palettes', 2, l1_id, 'Palettes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('palettes', 'fr', 'Palettes');
            PERFORM insert_category_translations('palettes', 'ar', 'طبالي');
            PERFORM insert_category_translations('palettes', 'en', 'Pallets');
            PERFORM insert_category_translations('palettes', 'de', 'Paletten');
            PERFORM insert_category_translations('palettes', 'es', 'Palets');
            PERFORM insert_category_translations('palettes', 'it', 'Pallet');

            -- Level 2: conteneurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('conteneurs', 'conteneurs', 2, l1_id, 'Conteneurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('conteneurs', 'fr', 'Conteneurs');
            PERFORM insert_category_translations('conteneurs', 'ar', 'حاويات');
            PERFORM insert_category_translations('conteneurs', 'en', 'Containers');
            PERFORM insert_category_translations('conteneurs', 'de', 'Container');
            PERFORM insert_category_translations('conteneurs', 'es', 'Contenedores');
            PERFORM insert_category_translations('conteneurs', 'it', 'Container');

            -- Level 2: charrettes-agricoles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('charrettes-agricoles', 'charrettes-agricoles', 2, l1_id, 'Charrettes agricoles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('charrettes-agricoles', 'fr', 'Charrettes agricoles');
            PERFORM insert_category_translations('charrettes-agricoles', 'ar', 'عربات زراعية');
            PERFORM insert_category_translations('charrettes-agricoles', 'en', 'Farm carts');
            PERFORM insert_category_translations('charrettes-agricoles', 'de', 'Ackerwagen');
            PERFORM insert_category_translations('charrettes-agricoles', 'es', 'Carros agrícolas');
            PERFORM insert_category_translations('charrettes-agricoles', 'it', 'Carri agricoli');

            -- Level 2: bennes-basculantes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bennes-basculantes', 'bennes-basculantes', 2, l1_id, 'Bennes basculantes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bennes-basculantes', 'fr', 'Bennes basculantes');
            PERFORM insert_category_translations('bennes-basculantes', 'ar', 'حاويات قابلة للإمالة');
            PERFORM insert_category_translations('bennes-basculantes', 'en', 'Tipper bins');
            PERFORM insert_category_translations('bennes-basculantes', 'de', 'Kippmulden');
            PERFORM insert_category_translations('bennes-basculantes', 'es', 'Cajas basculantes');
            PERFORM insert_category_translations('bennes-basculantes', 'it', 'Cassoni ribaltabili');

        -- Level 1: equipement-ruchers-apiculture
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('equipement-ruchers-apiculture', 'equipement-ruchers-apiculture', 1, root_id, 'Équipement pour ruchers & apiculture')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('equipement-ruchers-apiculture', 'fr', 'Équipement pour ruchers & apiculture');
        PERFORM insert_category_translations('equipement-ruchers-apiculture', 'ar', 'معدات المناحل وتربية النحل');
        PERFORM insert_category_translations('equipement-ruchers-apiculture', 'en', 'Beekeeping equipment');
        PERFORM insert_category_translations('equipement-ruchers-apiculture', 'de', 'Imkerei‑Ausrüstung');
        PERFORM insert_category_translations('equipement-ruchers-apiculture', 'es', 'Equipos para apicultura');
        PERFORM insert_category_translations('equipement-ruchers-apiculture', 'it', 'Attrezzature per apicoltura');

            -- Level 2: ruches
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ruches', 'ruches', 2, l1_id, 'Ruches')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ruches', 'fr', 'Ruches');
            PERFORM insert_category_translations('ruches', 'ar', 'خلايا نحل');
            PERFORM insert_category_translations('ruches', 'en', 'Beehives');
            PERFORM insert_category_translations('ruches', 'de', 'Bienenstöcke');
            PERFORM insert_category_translations('ruches', 'es', 'Colmenas');
            PERFORM insert_category_translations('ruches', 'it', 'Arnie');

            -- Level 2: cadres-de-ruche
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cadres-de-ruche', 'cadres-de-ruche', 2, l1_id, 'Cadres de ruche')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cadres-de-ruche', 'fr', 'Cadres de ruche');
            PERFORM insert_category_translations('cadres-de-ruche', 'ar', 'إطارات الخلية');
            PERFORM insert_category_translations('cadres-de-ruche', 'en', 'Hive frames');
            PERFORM insert_category_translations('cadres-de-ruche', 'de', 'Rähmchen');
            PERFORM insert_category_translations('cadres-de-ruche', 'es', 'Cuadros de colmena');
            PERFORM insert_category_translations('cadres-de-ruche', 'it', 'Telaini');

            -- Level 2: cire-gaufree
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cire-gaufree', 'cire-gaufree', 2, l1_id, 'Cire gaufrée')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cire-gaufree', 'fr', 'Cire gaufrée');
            PERFORM insert_category_translations('cire-gaufree', 'ar', 'شمع مضغوط');
            PERFORM insert_category_translations('cire-gaufree', 'en', 'Embossed wax');
            PERFORM insert_category_translations('cire-gaufree', 'de', 'Mittelwände');
            PERFORM insert_category_translations('cire-gaufree', 'es', 'Cera estampada');
            PERFORM insert_category_translations('cire-gaufree', 'it', 'Fogli cerei');

            -- Level 2: enfumoirs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('enfumoirs', 'enfumoirs', 2, l1_id, 'Enfumoirs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('enfumoirs', 'fr', 'Enfumoirs');
            PERFORM insert_category_translations('enfumoirs', 'ar', 'مدخنات');
            PERFORM insert_category_translations('enfumoirs', 'en', 'Smokers');
            PERFORM insert_category_translations('enfumoirs', 'de', 'Smoker');
            PERFORM insert_category_translations('enfumoirs', 'es', 'Ahumadores');
            PERFORM insert_category_translations('enfumoirs', 'it', 'Affumicatori');

            -- Level 2: extracteurs-de-miel
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('extracteurs-de-miel', 'extracteurs-de-miel', 2, l1_id, 'Extracteurs de miel')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('extracteurs-de-miel', 'fr', 'Extracteurs de miel');
            PERFORM insert_category_translations('extracteurs-de-miel', 'ar', 'عصارات عسل');
            PERFORM insert_category_translations('extracteurs-de-miel', 'en', 'Honey extractors');
            PERFORM insert_category_translations('extracteurs-de-miel', 'de', 'Honigschleudern');
            PERFORM insert_category_translations('extracteurs-de-miel', 'es', 'Extractores de miel');
            PERFORM insert_category_translations('extracteurs-de-miel', 'it', 'Smielatori');

            -- Level 2: equipements-apiculteurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('equipements-apiculteurs', 'equipements-apiculteurs', 2, l1_id, 'Équipements pour apiculteurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('equipements-apiculteurs', 'fr', 'Équipements pour apiculteurs');
            PERFORM insert_category_translations('equipements-apiculteurs', 'ar', 'معدات النحالين');
            PERFORM insert_category_translations('equipements-apiculteurs', 'en', 'Beekeeper equipment');
            PERFORM insert_category_translations('equipements-apiculteurs', 'de', 'Imker‑Ausrüstung');
            PERFORM insert_category_translations('equipements-apiculteurs', 'es', 'Equipos para apicultores');
            PERFORM insert_category_translations('equipements-apiculteurs', 'it', 'Attrezzatura apistica');

            -- Level 2: pieges-a-essaims
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pieges-a-essaims', 'pieges-a-essaims', 2, l1_id, 'Pièges à essaims')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pieges-a-essaims', 'fr', 'Pièges à essaims');
            PERFORM insert_category_translations('pieges-a-essaims', 'ar', 'مصائد أسراب');
            PERFORM insert_category_translations('pieges-a-essaims', 'en', 'Swarm traps');
            PERFORM insert_category_translations('pieges-a-essaims', 'de', 'Schwarmfallen');
            PERFORM insert_category_translations('pieges-a-essaims', 'es', 'Trampas para enjambres');
            PERFORM insert_category_translations('pieges-a-essaims', 'it', 'Trappole per sciami');

        -- Level 1: controle-sanitaire-outils-produits
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('controle-sanitaire-outils-produits', 'controle-sanitaire-outils-produits', 1, root_id, 'Outils et produits de contrôle sanitaire')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('controle-sanitaire-outils-produits', 'fr', 'Outils et produits de contrôle sanitaire');
        PERFORM insert_category_translations('controle-sanitaire-outils-produits', 'ar', 'أدوات ومنتجات الرقابة الصحية');
        PERFORM insert_category_translations('controle-sanitaire-outils-produits', 'en', 'Sanitary control tools & products');
        PERFORM insert_category_translations('controle-sanitaire-outils-produits', 'de', 'Sanitätskontrolle Werkzeuge & Produkte');
        PERFORM insert_category_translations('controle-sanitaire-outils-produits', 'es', 'Herramientas & productos sanitarios');
        PERFORM insert_category_translations('controle-sanitaire-outils-produits', 'it', 'Strumenti & prodotti sanitari');

            -- Level 2: desinfectants-agricoles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('desinfectants-agricoles', 'desinfectants-agricoles', 2, l1_id, 'Désinfectants agricoles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('desinfectants-agricoles', 'fr', 'Désinfectants agricoles');
            PERFORM insert_category_translations('desinfectants-agricoles', 'ar', 'مطهرات زراعية');
            PERFORM insert_category_translations('desinfectants-agricoles', 'en', 'Agricultural disinfectants');
            PERFORM insert_category_translations('desinfectants-agricoles', 'de', 'Landwirtschaftliche Desinfektionsmittel');
            PERFORM insert_category_translations('desinfectants-agricoles', 'es', 'Desinfectantes agrícolas');
            PERFORM insert_category_translations('desinfectants-agricoles', 'it', 'Disinfettanti agricoli');

            -- Level 2: pulverisateurs-sanitaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pulverisateurs-sanitaires', 'pulverisateurs-sanitaires', 2, l1_id, 'Pulvérisateurs sanitaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pulverisateurs-sanitaires', 'fr', 'Pulvérisateurs sanitaires');
            PERFORM insert_category_translations('pulverisateurs-sanitaires', 'ar', 'مرشات صحية');
            PERFORM insert_category_translations('pulverisateurs-sanitaires', 'en', 'Sanitary sprayers');
            PERFORM insert_category_translations('pulverisateurs-sanitaires', 'de', 'Sanitäre Sprühgeräte');
            PERFORM insert_category_translations('pulverisateurs-sanitaires', 'es', 'Pulverizadores sanitarios');
            PERFORM insert_category_translations('pulverisateurs-sanitaires', 'it', 'Irroratrici sanitarie');

            -- Level 2: pieges-a-insectes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pieges-a-insectes', 'pieges-a-insectes', 2, l1_id, 'Pièges à insectes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pieges-a-insectes', 'fr', 'Pièges à insectes');
            PERFORM insert_category_translations('pieges-a-insectes', 'ar', 'مصائد حشرات');
            PERFORM insert_category_translations('pieges-a-insectes', 'en', 'Insect traps');
            PERFORM insert_category_translations('pieges-a-insectes', 'de', 'Insektenfallen');
            PERFORM insert_category_translations('pieges-a-insectes', 'es', 'Trampas para insectos');
            PERFORM insert_category_translations('pieges-a-insectes', 'it', 'Trappole per insetti');

            -- Level 2: filets-anti-oiseaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('filets-anti-oiseaux', 'filets-anti-oiseaux', 2, l1_id, 'Filets anti-oiseaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('filets-anti-oiseaux', 'fr', 'Filets anti-oiseaux');
            PERFORM insert_category_translations('filets-anti-oiseaux', 'ar', 'شبكات ضد الطيور');
            PERFORM insert_category_translations('filets-anti-oiseaux', 'en', 'Bird nets');
            PERFORM insert_category_translations('filets-anti-oiseaux', 'de', 'Vogelschutznetze');
            PERFORM insert_category_translations('filets-anti-oiseaux', 'es', 'Redes anti‑pájaros');
            PERFORM insert_category_translations('filets-anti-oiseaux', 'it', 'Reti anti‑uccelli');

            -- Level 2: systemes-protection-cultures
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('systemes-protection-cultures', 'systemes-protection-cultures', 2, l1_id, 'Systèmes de protection des cultures')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('systemes-protection-cultures', 'fr', 'Systèmes de protection des cultures');
            PERFORM insert_category_translations('systemes-protection-cultures', 'ar', 'أنظمة حماية المحاصيل');
            PERFORM insert_category_translations('systemes-protection-cultures', 'en', 'Crop protection systems');
            PERFORM insert_category_translations('systemes-protection-cultures', 'de', 'Kulturschutzsysteme');
            PERFORM insert_category_translations('systemes-protection-cultures', 'es', 'Sistemas de protección de cultivos');
            PERFORM insert_category_translations('systemes-protection-cultures', 'it', 'Sistemi di protezione delle colture');

            -- Level 2: stations-meteo-agricoles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('stations-meteo-agricoles', 'stations-meteo-agricoles', 2, l1_id, 'Stations météo agricoles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('stations-meteo-agricoles', 'fr', 'Stations météo agricoles');
            PERFORM insert_category_translations('stations-meteo-agricoles', 'ar', 'محطات طقس زراعية');
            PERFORM insert_category_translations('stations-meteo-agricoles', 'en', 'Agricultural weather stations');
            PERFORM insert_category_translations('stations-meteo-agricoles', 'de', 'Landwirtschaftliche Wetterstationen');
            PERFORM insert_category_translations('stations-meteo-agricoles', 'es', 'Estaciones meteorológicas agrícolas');
            PERFORM insert_category_translations('stations-meteo-agricoles', 'it', 'Stazioni meteo agricole');

        -- Level 1: accessoires-consommables
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-consommables', 'accessoires-consommables', 1, root_id, 'Accessoires & consommables')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('accessoires-consommables', 'fr', 'Accessoires & consommables');
        PERFORM insert_category_translations('accessoires-consommables', 'ar', 'إكسسوارات ومستهلكات');
        PERFORM insert_category_translations('accessoires-consommables', 'en', 'Accessories & consumables');
        PERFORM insert_category_translations('accessoires-consommables', 'de', 'Zubehör & Verbrauchsmaterial');
        PERFORM insert_category_translations('accessoires-consommables', 'es', 'Accesorios & consumibles');
        PERFORM insert_category_translations('accessoires-consommables', 'it', 'Accessori & consumabili');

            -- Level 2: ficelles-agricoles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ficelles-agricoles', 'ficelles-agricoles', 2, l1_id, 'Ficelles agricoles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ficelles-agricoles', 'fr', 'Ficelles agricoles');
            PERFORM insert_category_translations('ficelles-agricoles', 'ar', 'خيوط زراعية');
            PERFORM insert_category_translations('ficelles-agricoles', 'en', 'Agricultural twines');
            PERFORM insert_category_translations('ficelles-agricoles', 'de', 'Landwirtschaftliche Schnüre');
            PERFORM insert_category_translations('ficelles-agricoles', 'es', 'Cuerdas agrícolas');
            PERFORM insert_category_translations('ficelles-agricoles', 'it', 'Spaghi agricoli');

            -- Level 2: cordages
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cordages', 'cordages', 2, l1_id, 'Cordages')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cordages', 'fr', 'Cordages');
            PERFORM insert_category_translations('cordages', 'ar', 'حبال');
            PERFORM insert_category_translations('cordages', 'en', 'Ropes');
            PERFORM insert_category_translations('cordages', 'de', 'Seile');
            PERFORM insert_category_translations('cordages', 'es', 'Cuerdas');
            PERFORM insert_category_translations('cordages', 'it', 'Corde');

            -- Level 2: sangles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sangles', 'sangles', 2, l1_id, 'Sangles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sangles', 'fr', 'Sangles');
            PERFORM insert_category_translations('sangles', 'ar', 'أحزمة');
            PERFORM insert_category_translations('sangles', 'en', 'Straps');
            PERFORM insert_category_translations('sangles', 'de', 'Gurte');
            PERFORM insert_category_translations('sangles', 'es', 'Correas');
            PERFORM insert_category_translations('sangles', 'it', 'Cinghie');

            -- Level 2: attaches-pour-plants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('attaches-pour-plants', 'attaches-pour-plants', 2, l1_id, 'Attaches pour plants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('attaches-pour-plants', 'fr', 'Attaches pour plants');
            PERFORM insert_category_translations('attaches-pour-plants', 'ar', 'روابط للنباتات');
            PERFORM insert_category_translations('attaches-pour-plants', 'en', 'Plant ties');
            PERFORM insert_category_translations('attaches-pour-plants', 'de', 'Pflanzenbinder');
            PERFORM insert_category_translations('attaches-pour-plants', 'es', 'Bridas para plantas');
            PERFORM insert_category_translations('attaches-pour-plants', 'it', 'Fissaggi per piante');

            -- Level 2: boites-d-emballage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('boites-d-emballage', 'boites-d-emballage', 2, l1_id, 'Boîtes d’emballage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('boites-d-emballage', 'fr', 'Boîtes d’emballage');
            PERFORM insert_category_translations('boites-d-emballage', 'ar', 'علب تغليف');
            PERFORM insert_category_translations('boites-d-emballage', 'en', 'Packaging boxes');
            PERFORM insert_category_translations('boites-d-emballage', 'de', 'Verpackungskartons');
            PERFORM insert_category_translations('boites-d-emballage', 'es', 'Cajas de embalaje');
            PERFORM insert_category_translations('boites-d-emballage', 'it', 'Scatole per imballaggio');

            -- Level 2: sacs-alimentaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-alimentaires', 'sacs-alimentaires', 2, l1_id, 'Sacs alimentaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-alimentaires', 'fr', 'Sacs alimentaires');
            PERFORM insert_category_translations('sacs-alimentaires', 'ar', 'أكياس غذائية');
            PERFORM insert_category_translations('sacs-alimentaires', 'en', 'Food‑grade bags');
            PERFORM insert_category_translations('sacs-alimentaires', 'de', 'Lebensmittelbeutel');
            PERFORM insert_category_translations('sacs-alimentaires', 'es', 'Bolsas alimentarias');
            PERFORM insert_category_translations('sacs-alimentaires', 'it', 'Sacchetti alimentari');

            -- Level 2: etiquettes-agricoles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('etiquettes-agricoles', 'etiquettes-agricoles', 2, l1_id, 'Étiquettes agricoles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('etiquettes-agricoles', 'fr', 'Étiquettes agricoles');
            PERFORM insert_category_translations('etiquettes-agricoles', 'ar', 'ملصقات زراعية');
            PERFORM insert_category_translations('etiquettes-agricoles', 'en', 'Agricultural labels');
            PERFORM insert_category_translations('etiquettes-agricoles', 'de', 'Landwirtschaftliche Etiketten');
            PERFORM insert_category_translations('etiquettes-agricoles', 'es', 'Etiquetas agrícolas');
            PERFORM insert_category_translations('etiquettes-agricoles', 'it', 'Etichette agricole');
END $$;