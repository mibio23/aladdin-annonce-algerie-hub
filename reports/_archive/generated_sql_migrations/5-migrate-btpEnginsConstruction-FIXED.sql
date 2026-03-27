-- Migration: BTP, Engins & Construction (Generated Recursive)
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

    -- Level 0: btp-engins-construction
    INSERT INTO categories (id, slug, level, name)
    VALUES ('btp-engins-construction', 'btp-engins-construction', 0, 'BTP, Engins & Construction')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 0, name = EXCLUDED.name
    RETURNING id INTO root_id;
    PERFORM insert_category_translations('btp-engins-construction', 'fr', 'BTP, Engins & Construction');
    PERFORM insert_category_translations('btp-engins-construction', 'ar', 'البناء، الآليات والإنشاءات');
    PERFORM insert_category_translations('btp-engins-construction', 'en', 'Construction, Heavy Equipment & Machinery');
    PERFORM insert_category_translations('btp-engins-construction', 'de', 'Bau, Baumaschinen & Konstruktion');
    PERFORM insert_category_translations('btp-engins-construction', 'es', 'Construcción, Maquinaria & Equipos Pesados');
    PERFORM insert_category_translations('btp-engins-construction', 'it', 'Edilizia, Macchinari & Attrezzature');

        -- Level 1: engins-de-chantier
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('engins-de-chantier', 'engins-de-chantier', 1, root_id, 'Engins de chantier')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('engins-de-chantier', 'fr', 'Engins de chantier');
        PERFORM insert_category_translations('engins-de-chantier', 'ar', 'معدات وآليات البناء');
        PERFORM insert_category_translations('engins-de-chantier', 'en', 'Construction machinery');
        PERFORM insert_category_translations('engins-de-chantier', 'de', 'Baumaschinen');
        PERFORM insert_category_translations('engins-de-chantier', 'es', 'Maquinaria de construcción');
        PERFORM insert_category_translations('engins-de-chantier', 'it', 'Macchine da cantiere');

            -- Level 2: pelles-hydrauliques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pelles-hydrauliques', 'pelles-hydrauliques', 2, l1_id, 'Pelles hydrauliques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pelles-hydrauliques', 'fr', 'Pelles hydrauliques');
            PERFORM insert_category_translations('pelles-hydrauliques', 'ar', 'حفارات هيدروليكية');
            PERFORM insert_category_translations('pelles-hydrauliques', 'en', 'Hydraulic excavators');
            PERFORM insert_category_translations('pelles-hydrauliques', 'de', 'Hydraulikbagger');
            PERFORM insert_category_translations('pelles-hydrauliques', 'es', 'Excavadoras hidráulicas');
            PERFORM insert_category_translations('pelles-hydrauliques', 'it', 'Escavatori idraulici');

            -- Level 2: mini-pelles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mini-pelles', 'mini-pelles', 2, l1_id, 'Mini-pelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mini-pelles', 'fr', 'Mini-pelles');
            PERFORM insert_category_translations('mini-pelles', 'ar', 'حفارات صغيرة');
            PERFORM insert_category_translations('mini-pelles', 'en', 'Mini excavators');
            PERFORM insert_category_translations('mini-pelles', 'de', 'Minibagger');
            PERFORM insert_category_translations('mini-pelles', 'es', 'Miniexcavadoras');
            PERFORM insert_category_translations('mini-pelles', 'it', 'Mini escavatori');

            -- Level 2: chargeuses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chargeuses', 'chargeuses', 2, l1_id, 'Chargeuses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chargeuses', 'fr', 'Chargeuses');
            PERFORM insert_category_translations('chargeuses', 'ar', 'جرافات');
            PERFORM insert_category_translations('chargeuses', 'en', 'Loaders');
            PERFORM insert_category_translations('chargeuses', 'de', 'Radlader');
            PERFORM insert_category_translations('chargeuses', 'es', 'Cargadoras');
            PERFORM insert_category_translations('chargeuses', 'it', 'Pale caricatrici');

            -- Level 2: bulldozers
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bulldozers', 'bulldozers', 2, l1_id, 'Bulldozers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bulldozers', 'fr', 'Bulldozers');
            PERFORM insert_category_translations('bulldozers', 'ar', 'بلدوزرات');
            PERFORM insert_category_translations('bulldozers', 'en', 'Bulldozers');
            PERFORM insert_category_translations('bulldozers', 'de', 'Planierraupen');
            PERFORM insert_category_translations('bulldozers', 'es', 'Bulldozers');
            PERFORM insert_category_translations('bulldozers', 'it', 'Bulldozer');

            -- Level 2: niveleuses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('niveleuses', 'niveleuses', 2, l1_id, 'Niveleuses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('niveleuses', 'fr', 'Niveleuses');
            PERFORM insert_category_translations('niveleuses', 'ar', 'ممهدات طرق');
            PERFORM insert_category_translations('niveleuses', 'en', 'Motor graders');
            PERFORM insert_category_translations('niveleuses', 'de', 'Grader');
            PERFORM insert_category_translations('niveleuses', 'es', 'Motoniveladoras');
            PERFORM insert_category_translations('niveleuses', 'it', 'Livellatrici');

            -- Level 2: tractopelles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tractopelles', 'tractopelles', 2, l1_id, 'Tractopelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tractopelles', 'fr', 'Tractopelles');
            PERFORM insert_category_translations('tractopelles', 'ar', 'لودر حفار');
            PERFORM insert_category_translations('tractopelles', 'en', 'Backhoe loaders');
            PERFORM insert_category_translations('tractopelles', 'de', 'Baggerlader');
            PERFORM insert_category_translations('tractopelles', 'es', 'Retroexcavadoras');
            PERFORM insert_category_translations('tractopelles', 'it', 'Terne');

            -- Level 2: compacteurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('compacteurs', 'compacteurs', 2, l1_id, 'Compacteurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('compacteurs', 'fr', 'Compacteurs');
            PERFORM insert_category_translations('compacteurs', 'ar', 'مدحلات');
            PERFORM insert_category_translations('compacteurs', 'en', 'Compactors');
            PERFORM insert_category_translations('compacteurs', 'de', 'Verdichter');
            PERFORM insert_category_translations('compacteurs', 'es', 'Compactadoras');
            PERFORM insert_category_translations('compacteurs', 'it', 'Compattatori');

            -- Level 2: rouleaux-compresseurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('rouleaux-compresseurs', 'rouleaux-compresseurs', 2, l1_id, 'Rouleaux compresseurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('rouleaux-compresseurs', 'fr', 'Rouleaux compresseurs');
            PERFORM insert_category_translations('rouleaux-compresseurs', 'ar', 'مداحل أسطوانية');
            PERFORM insert_category_translations('rouleaux-compresseurs', 'en', 'Road rollers');
            PERFORM insert_category_translations('rouleaux-compresseurs', 'de', 'Walzen');
            PERFORM insert_category_translations('rouleaux-compresseurs', 'es', 'Rodillos compactadores');
            PERFORM insert_category_translations('rouleaux-compresseurs', 'it', 'Rulli compattatori');

            -- Level 2: dumpers
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('dumpers', 'dumpers', 2, l1_id, 'Dumpers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('dumpers', 'fr', 'Dumpers');
            PERFORM insert_category_translations('dumpers', 'ar', 'دامبرات');
            PERFORM insert_category_translations('dumpers', 'en', 'Dumpers');
            PERFORM insert_category_translations('dumpers', 'de', 'Muldenkipper');
            PERFORM insert_category_translations('dumpers', 'es', 'Dumpers');
            PERFORM insert_category_translations('dumpers', 'it', 'Dumper');

            -- Level 2: camions-bennes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('camions-bennes', 'camions-bennes', 2, l1_id, 'Camions-bennes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('camions-bennes', 'fr', 'Camions-bennes');
            PERFORM insert_category_translations('camions-bennes', 'ar', 'شاحنات قلابة');
            PERFORM insert_category_translations('camions-bennes', 'en', 'Dump trucks');
            PERFORM insert_category_translations('camions-bennes', 'de', 'Kipper-Lkw');
            PERFORM insert_category_translations('camions-bennes', 'es', 'Camiones volquete');
            PERFORM insert_category_translations('camions-bennes', 'it', 'Autocarri ribaltabili');

            -- Level 2: grues-mobiles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('grues-mobiles', 'grues-mobiles', 2, l1_id, 'Grues mobiles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('grues-mobiles', 'fr', 'Grues mobiles');
            PERFORM insert_category_translations('grues-mobiles', 'ar', 'رافعات متنقلة');
            PERFORM insert_category_translations('grues-mobiles', 'en', 'Mobile cranes');
            PERFORM insert_category_translations('grues-mobiles', 'de', 'Mobilkrane');
            PERFORM insert_category_translations('grues-mobiles', 'es', 'Grúas móviles');
            PERFORM insert_category_translations('grues-mobiles', 'it', 'Autogru');

            -- Level 2: grues-a-tour
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('grues-a-tour', 'grues-a-tour', 2, l1_id, 'Grues à tour')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('grues-a-tour', 'fr', 'Grues à tour');
            PERFORM insert_category_translations('grues-a-tour', 'ar', 'رافعات برجية');
            PERFORM insert_category_translations('grues-a-tour', 'en', 'Tower cranes');
            PERFORM insert_category_translations('grues-a-tour', 'de', 'Turmkrane');
            PERFORM insert_category_translations('grues-a-tour', 'es', 'Grúas torre');
            PERFORM insert_category_translations('grues-a-tour', 'it', 'Gru a torre');

            -- Level 2: chariots-telescopiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chariots-telescopiques', 'chariots-telescopiques', 2, l1_id, 'Chariots télescopiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chariots-telescopiques', 'fr', 'Chariots télescopiques');
            PERFORM insert_category_translations('chariots-telescopiques', 'ar', 'مناولات تلسكوبية');
            PERFORM insert_category_translations('chariots-telescopiques', 'en', 'Telehandlers');
            PERFORM insert_category_translations('chariots-telescopiques', 'de', 'Teleskopstapler');
            PERFORM insert_category_translations('chariots-telescopiques', 'es', 'Manipuladores telescópicos');
            PERFORM insert_category_translations('chariots-telescopiques', 'it', 'Sollevatori telescopici');

            -- Level 2: nacelles-elevatrices
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('nacelles-elevatrices', 'nacelles-elevatrices', 2, l1_id, 'Nacelles élévatrices')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('nacelles-elevatrices', 'fr', 'Nacelles élévatrices');
            PERFORM insert_category_translations('nacelles-elevatrices', 'ar', 'منصات رفع');
            PERFORM insert_category_translations('nacelles-elevatrices', 'en', 'Aerial work platforms');
            PERFORM insert_category_translations('nacelles-elevatrices', 'de', 'Arbeitsbühnen');
            PERFORM insert_category_translations('nacelles-elevatrices', 'es', 'Plataformas elevadoras');
            PERFORM insert_category_translations('nacelles-elevatrices', 'it', 'Piattaforme aeree');

            -- Level 2: foreuses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('foreuses', 'foreuses', 2, l1_id, 'Foreuses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('foreuses', 'fr', 'Foreuses');
            PERFORM insert_category_translations('foreuses', 'ar', 'معدات حفر');
            PERFORM insert_category_translations('foreuses', 'en', 'Drilling rigs');
            PERFORM insert_category_translations('foreuses', 'de', 'Bohrgeräte');
            PERFORM insert_category_translations('foreuses', 'es', 'Perforadoras');
            PERFORM insert_category_translations('foreuses', 'it', 'Perforatrici');

            -- Level 2: retrochargeuses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('retrochargeuses', 'retrochargeuses', 2, l1_id, 'Rétrochargeuses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('retrochargeuses', 'fr', 'Rétrochargeuses');
            PERFORM insert_category_translations('retrochargeuses', 'ar', 'لودر حفار');
            PERFORM insert_category_translations('retrochargeuses', 'en', 'Backhoe loaders');
            PERFORM insert_category_translations('retrochargeuses', 'de', 'Baggerlader');
            PERFORM insert_category_translations('retrochargeuses', 'es', 'Retroexcavadoras');
            PERFORM insert_category_translations('retrochargeuses', 'it', 'Terne');

        -- Level 1: vehicules-transport-materiaux
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vehicules-transport-materiaux', 'vehicules-transport-materiaux', 1, root_id, 'Véhicules & transport de matériaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('vehicules-transport-materiaux', 'fr', 'Véhicules & transport de matériaux');
        PERFORM insert_category_translations('vehicules-transport-materiaux', 'ar', 'مركبات ونقل المواد');
        PERFORM insert_category_translations('vehicules-transport-materiaux', 'en', 'Vehicles & material transport');
        PERFORM insert_category_translations('vehicules-transport-materiaux', 'de', 'Fahrzeuge & Materialtransport');
        PERFORM insert_category_translations('vehicules-transport-materiaux', 'es', 'Vehículos & transporte de materiales');
        PERFORM insert_category_translations('vehicules-transport-materiaux', 'it', 'Veicoli & trasporto materiali');

            -- Level 2: camions-de-chantier
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('camions-de-chantier', 'camions-de-chantier', 2, l1_id, 'Camions de chantier')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('camions-de-chantier', 'fr', 'Camions de chantier');
            PERFORM insert_category_translations('camions-de-chantier', 'ar', 'شاحنات موقع البناء');
            PERFORM insert_category_translations('camions-de-chantier', 'en', 'Construction trucks');
            PERFORM insert_category_translations('camions-de-chantier', 'de', 'Baustellen-Lkw');
            PERFORM insert_category_translations('camions-de-chantier', 'es', 'Camiones de obra');
            PERFORM insert_category_translations('camions-de-chantier', 'it', 'Camion da cantiere');

            -- Level 2: camions-malaxeurs-toupies-beton
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('camions-malaxeurs-toupies-beton', 'camions-malaxeurs-toupies-beton', 2, l1_id, 'Camions malaxeurs (toupies béton)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('camions-malaxeurs-toupies-beton', 'fr', 'Camions malaxeurs (toupies béton)');
            PERFORM insert_category_translations('camions-malaxeurs-toupies-beton', 'ar', 'شاحنات خلاط خرسانة');
            PERFORM insert_category_translations('camions-malaxeurs-toupies-beton', 'en', 'Concrete mixer trucks');
            PERFORM insert_category_translations('camions-malaxeurs-toupies-beton', 'de', 'Betonmischer-Lkw');
            PERFORM insert_category_translations('camions-malaxeurs-toupies-beton', 'es', 'Camiones hormigonera');
            PERFORM insert_category_translations('camions-malaxeurs-toupies-beton', 'it', 'Autobetoniere');

            -- Level 2: camions-porte-engins
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('camions-porte-engins', 'camions-porte-engins', 2, l1_id, 'Camions porte-engins')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('camions-porte-engins', 'fr', 'Camions porte-engins');
            PERFORM insert_category_translations('camions-porte-engins', 'ar', 'شاحنات ناقلة معدات');
            PERFORM insert_category_translations('camions-porte-engins', 'en', 'Lowboy/haul trucks');
            PERFORM insert_category_translations('camions-porte-engins', 'de', 'Tieflader-Lkw');
            PERFORM insert_category_translations('camions-porte-engins', 'es', 'Camiones porta‑equipos');
            PERFORM insert_category_translations('camions-porte-engins', 'it', 'Camion porta‑macchine');

            -- Level 2: remorques-de-chantier
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('remorques-de-chantier', 'remorques-de-chantier', 2, l1_id, 'Remorques de chantier')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('remorques-de-chantier', 'fr', 'Remorques de chantier');
            PERFORM insert_category_translations('remorques-de-chantier', 'ar', 'مقطورات الموقع');
            PERFORM insert_category_translations('remorques-de-chantier', 'en', 'Construction trailers');
            PERFORM insert_category_translations('remorques-de-chantier', 'de', 'Baustellenanhänger');
            PERFORM insert_category_translations('remorques-de-chantier', 'es', 'Remolques de obra');
            PERFORM insert_category_translations('remorques-de-chantier', 'it', 'Rimorchi da cantiere');

            -- Level 2: vehicules-utilitaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vehicules-utilitaires', 'vehicules-utilitaires', 2, l1_id, 'Véhicules utilitaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('vehicules-utilitaires', 'fr', 'Véhicules utilitaires');
            PERFORM insert_category_translations('vehicules-utilitaires', 'ar', 'مركبات تجارية');
            PERFORM insert_category_translations('vehicules-utilitaires', 'en', 'Utility vehicles');
            PERFORM insert_category_translations('vehicules-utilitaires', 'de', 'Nutzfahrzeuge');
            PERFORM insert_category_translations('vehicules-utilitaires', 'es', 'Vehículos comerciales');
            PERFORM insert_category_translations('vehicules-utilitaires', 'it', 'Veicoli commerciali');

            -- Level 2: pick-ups
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pick-ups', 'pick-ups', 2, l1_id, 'Pick-ups')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pick-ups', 'fr', 'Pick-ups');
            PERFORM insert_category_translations('pick-ups', 'ar', 'بيك أب');
            PERFORM insert_category_translations('pick-ups', 'en', 'Pick‑ups');
            PERFORM insert_category_translations('pick-ups', 'de', 'Pick-ups');
            PERFORM insert_category_translations('pick-ups', 'es', 'Pick‑ups');
            PERFORM insert_category_translations('pick-ups', 'it', 'Pick‑up');

            -- Level 2: fourgons
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fourgons', 'fourgons', 2, l1_id, 'Fourgons')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fourgons', 'fr', 'Fourgons');
            PERFORM insert_category_translations('fourgons', 'ar', 'فانات');
            PERFORM insert_category_translations('fourgons', 'en', 'Vans');
            PERFORM insert_category_translations('fourgons', 'de', 'Transporter');
            PERFORM insert_category_translations('fourgons', 'es', 'Furgonetas');
            PERFORM insert_category_translations('fourgons', 'it', 'Furgoni');

        -- Level 1: materiel-de-construction
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('materiel-de-construction', 'materiel-de-construction', 1, root_id, 'Matériel de construction')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('materiel-de-construction', 'fr', 'Matériel de construction');
        PERFORM insert_category_translations('materiel-de-construction', 'ar', 'معدات البناء');
        PERFORM insert_category_translations('materiel-de-construction', 'en', 'Construction equipment');
        PERFORM insert_category_translations('materiel-de-construction', 'de', 'Bauausrüstung');
        PERFORM insert_category_translations('materiel-de-construction', 'es', 'Equipos de construcción');
        PERFORM insert_category_translations('materiel-de-construction', 'it', 'Attrezzature da costruzione');

            -- Level 2: betonnieres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('betonnieres', 'betonnieres', 2, l1_id, 'Bétonnières')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('betonnieres', 'fr', 'Bétonnières');
            PERFORM insert_category_translations('betonnieres', 'ar', 'خلاطات خرسانة');
            PERFORM insert_category_translations('betonnieres', 'en', 'Concrete mixers');
            PERFORM insert_category_translations('betonnieres', 'de', 'Betonmischer');
            PERFORM insert_category_translations('betonnieres', 'es', 'Mezcladoras de concreto');
            PERFORM insert_category_translations('betonnieres', 'it', 'Betoniere');

            -- Level 2: vibrateurs-beton
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vibrateurs-beton', 'vibrateurs-beton', 2, l1_id, 'Vibrateurs béton')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('vibrateurs-beton', 'fr', 'Vibrateurs béton');
            PERFORM insert_category_translations('vibrateurs-beton', 'ar', 'هزازات الخرسانة');
            PERFORM insert_category_translations('vibrateurs-beton', 'en', 'Concrete vibrators');
            PERFORM insert_category_translations('vibrateurs-beton', 'de', 'Betonvibratoren');
            PERFORM insert_category_translations('vibrateurs-beton', 'es', 'Vibradores de hormigón');
            PERFORM insert_category_translations('vibrateurs-beton', 'it', 'Vibratori per calcestruzzo');

            -- Level 2: pompes-a-beton
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pompes-a-beton', 'pompes-a-beton', 2, l1_id, 'Pompes à béton')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pompes-a-beton', 'fr', 'Pompes à béton');
            PERFORM insert_category_translations('pompes-a-beton', 'ar', 'مضخات الخرسانة');
            PERFORM insert_category_translations('pompes-a-beton', 'en', 'Concrete pumps');
            PERFORM insert_category_translations('pompes-a-beton', 'de', 'Betonpumpen');
            PERFORM insert_category_translations('pompes-a-beton', 'es', 'Bombas de hormigón');
            PERFORM insert_category_translations('pompes-a-beton', 'it', 'Pompe per calcestruzzo');

            -- Level 2: coffrages
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('coffrages', 'coffrages', 2, l1_id, 'Coffrages')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('coffrages', 'fr', 'Coffrages');
            PERFORM insert_category_translations('coffrages', 'ar', 'قوالب صب');
            PERFORM insert_category_translations('coffrages', 'en', 'Formwork');
            PERFORM insert_category_translations('coffrages', 'de', 'Schalungen');
            PERFORM insert_category_translations('coffrages', 'es', 'Encofrados');
            PERFORM insert_category_translations('coffrages', 'it', 'Casseri');

            -- Level 2: etais
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('etais', 'etais', 2, l1_id, 'Étais')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('etais', 'fr', 'Étais');
            PERFORM insert_category_translations('etais', 'ar', 'دعامات');
            PERFORM insert_category_translations('etais', 'en', 'Props & shoring');
            PERFORM insert_category_translations('etais', 'de', 'Stützen');
            PERFORM insert_category_translations('etais', 'es', 'Puntales');
            PERFORM insert_category_translations('etais', 'it', 'Puntelli');

            -- Level 2: echafaudages
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('echafaudages', 'echafaudages', 2, l1_id, 'Échafaudages')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('echafaudages', 'fr', 'Échafaudages');
            PERFORM insert_category_translations('echafaudages', 'ar', 'سقالات');
            PERFORM insert_category_translations('echafaudages', 'en', 'Scaffolding');
            PERFORM insert_category_translations('echafaudages', 'de', 'Gerüste');
            PERFORM insert_category_translations('echafaudages', 'es', 'Andamios');
            PERFORM insert_category_translations('echafaudages', 'it', 'Ponteggi');

            -- Level 2: echelles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('echelles', 'echelles', 2, l1_id, 'Échelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('echelles', 'fr', 'Échelles');
            PERFORM insert_category_translations('echelles', 'ar', 'سلالم');
            PERFORM insert_category_translations('echelles', 'en', 'Ladders');
            PERFORM insert_category_translations('echelles', 'de', 'Leitern');
            PERFORM insert_category_translations('echelles', 'es', 'Escaleras');
            PERFORM insert_category_translations('echelles', 'it', 'Scale');

            -- Level 2: outils-pneumatiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('outils-pneumatiques', 'outils-pneumatiques', 2, l1_id, 'Outils pneumatiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('outils-pneumatiques', 'fr', 'Outils pneumatiques');
            PERFORM insert_category_translations('outils-pneumatiques', 'ar', 'أدوات هوائية');
            PERFORM insert_category_translations('outils-pneumatiques', 'en', 'Pneumatic tools');
            PERFORM insert_category_translations('outils-pneumatiques', 'de', 'Druckluftwerkzeuge');
            PERFORM insert_category_translations('outils-pneumatiques', 'es', 'Herramientas neumáticas');
            PERFORM insert_category_translations('outils-pneumatiques', 'it', 'Utensili pneumatici');

            -- Level 2: marteaux-piqueurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('marteaux-piqueurs', 'marteaux-piqueurs', 2, l1_id, 'Marteaux-piqueurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('marteaux-piqueurs', 'fr', 'Marteaux-piqueurs');
            PERFORM insert_category_translations('marteaux-piqueurs', 'ar', 'مطارق هدم');
            PERFORM insert_category_translations('marteaux-piqueurs', 'en', 'Jackhammers');
            PERFORM insert_category_translations('marteaux-piqueurs', 'de', 'Presslufthämmer');
            PERFORM insert_category_translations('marteaux-piqueurs', 'es', 'Martillos neumáticos');
            PERFORM insert_category_translations('marteaux-piqueurs', 'it', 'Martelli demolitori');

            -- Level 2: scies-de-chantier
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('scies-de-chantier', 'scies-de-chantier', 2, l1_id, 'Scies de chantier')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('scies-de-chantier', 'fr', 'Scies de chantier');
            PERFORM insert_category_translations('scies-de-chantier', 'ar', 'مناشير موقع البناء');
            PERFORM insert_category_translations('scies-de-chantier', 'en', 'Jobsite saws');
            PERFORM insert_category_translations('scies-de-chantier', 'de', 'Baustellensägen');
            PERFORM insert_category_translations('scies-de-chantier', 'es', 'Sierras de obra');
            PERFORM insert_category_translations('scies-de-chantier', 'it', 'Seghe da cantiere');

            -- Level 2: groupes-electrogenes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('groupes-electrogenes', 'groupes-electrogenes', 2, l1_id, 'Groupes électrogènes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('groupes-electrogenes', 'fr', 'Groupes électrogènes');
            PERFORM insert_category_translations('groupes-electrogenes', 'ar', 'مولدات كهرباء');
            PERFORM insert_category_translations('groupes-electrogenes', 'en', 'Generators');
            PERFORM insert_category_translations('groupes-electrogenes', 'de', 'Generatoren');
            PERFORM insert_category_translations('groupes-electrogenes', 'es', 'Generadores');
            PERFORM insert_category_translations('groupes-electrogenes', 'it', 'Generatori');

            -- Level 2: compresseurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('compresseurs', 'compresseurs', 2, l1_id, 'Compresseurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('compresseurs', 'fr', 'Compresseurs');
            PERFORM insert_category_translations('compresseurs', 'ar', 'ضواغط');
            PERFORM insert_category_translations('compresseurs', 'en', 'Compressors');
            PERFORM insert_category_translations('compresseurs', 'de', 'Kompressoren');
            PERFORM insert_category_translations('compresseurs', 'es', 'Compresores');
            PERFORM insert_category_translations('compresseurs', 'it', 'Compressori');

            -- Level 2: lasers-niveaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lasers-niveaux', 'lasers-niveaux', 2, l1_id, 'Lasers & niveaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lasers-niveaux', 'fr', 'Lasers & niveaux');
            PERFORM insert_category_translations('lasers-niveaux', 'ar', 'أجهزة ليزر ومستويات');
            PERFORM insert_category_translations('lasers-niveaux', 'en', 'Lasers & levels');
            PERFORM insert_category_translations('lasers-niveaux', 'de', 'Laser & Nivelliergeräte');
            PERFORM insert_category_translations('lasers-niveaux', 'es', 'Láseres & niveles');
            PERFORM insert_category_translations('lasers-niveaux', 'it', 'Laser & livelle');

        -- Level 1: materiaux-de-construction
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('materiaux-de-construction', 'materiaux-de-construction', 1, root_id, 'Matériaux de construction')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('materiaux-de-construction', 'fr', 'Matériaux de construction');
        PERFORM insert_category_translations('materiaux-de-construction', 'ar', 'مواد البناء');
        PERFORM insert_category_translations('materiaux-de-construction', 'en', 'Construction materials');
        PERFORM insert_category_translations('materiaux-de-construction', 'de', 'Baustoffe');
        PERFORM insert_category_translations('materiaux-de-construction', 'es', 'Materiales de construcción');
        PERFORM insert_category_translations('materiaux-de-construction', 'it', 'Materiali da costruzione');

            -- Level 2: ciment
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ciment', 'ciment', 2, l1_id, 'Ciment')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ciment', 'fr', 'Ciment');
            PERFORM insert_category_translations('ciment', 'ar', 'أسمنت');
            PERFORM insert_category_translations('ciment', 'en', 'Cement');
            PERFORM insert_category_translations('ciment', 'de', 'Zement');
            PERFORM insert_category_translations('ciment', 'es', 'Cemento');
            PERFORM insert_category_translations('ciment', 'it', 'Cemento');

            -- Level 2: beton-pret-a-lemploi
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('beton-pret-a-lemploi', 'beton-pret-a-lemploi', 2, l1_id, 'Béton prêt à l’emploi')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('beton-pret-a-lemploi', 'fr', 'Béton prêt à l’emploi');
            PERFORM insert_category_translations('beton-pret-a-lemploi', 'ar', 'خرسانة جاهزة');
            PERFORM insert_category_translations('beton-pret-a-lemploi', 'en', 'Ready‑mix concrete');
            PERFORM insert_category_translations('beton-pret-a-lemploi', 'de', 'Fertigbeton');
            PERFORM insert_category_translations('beton-pret-a-lemploi', 'es', 'Hormigón premezclado');
            PERFORM insert_category_translations('beton-pret-a-lemploi', 'it', 'Calcestruzzo preconfezionato');

            -- Level 2: sable-gravier
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sable-gravier', 'sable-gravier', 2, l1_id, 'Sable & gravier')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sable-gravier', 'fr', 'Sable & gravier');
            PERFORM insert_category_translations('sable-gravier', 'ar', 'رمل وحصى');
            PERFORM insert_category_translations('sable-gravier', 'en', 'Sand & gravel');
            PERFORM insert_category_translations('sable-gravier', 'de', 'Sand & Kies');
            PERFORM insert_category_translations('sable-gravier', 'es', 'Arena & grava');
            PERFORM insert_category_translations('sable-gravier', 'it', 'Sabbia & ghiaia');

            -- Level 2: briques-blocs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('briques-blocs', 'briques-blocs', 2, l1_id, 'Briques & blocs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('briques-blocs', 'fr', 'Briques & blocs');
            PERFORM insert_category_translations('briques-blocs', 'ar', 'طوب وبلوكات');
            PERFORM insert_category_translations('briques-blocs', 'en', 'Bricks & blocks');
            PERFORM insert_category_translations('briques-blocs', 'de', 'Ziegel & Blöcke');
            PERFORM insert_category_translations('briques-blocs', 'es', 'Ladrillos & bloques');
            PERFORM insert_category_translations('briques-blocs', 'it', 'Mattoni & blocchi');

            -- Level 2: parpaings
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('parpaings', 'parpaings', 2, l1_id, 'Parpaings')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('parpaings', 'fr', 'Parpaings');
            PERFORM insert_category_translations('parpaings', 'ar', 'بلوك خرسانة');
            PERFORM insert_category_translations('parpaings', 'en', 'Concrete blocks');
            PERFORM insert_category_translations('parpaings', 'de', 'Betonsteine');
            PERFORM insert_category_translations('parpaings', 'es', 'Bloques de concreto');
            PERFORM insert_category_translations('parpaings', 'it', 'Blocchi di calcestruzzo');

            -- Level 2: pierres-naturelles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pierres-naturelles', 'pierres-naturelles', 2, l1_id, 'Pierres naturelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pierres-naturelles', 'fr', 'Pierres naturelles');
            PERFORM insert_category_translations('pierres-naturelles', 'ar', 'حجر طبيعي');
            PERFORM insert_category_translations('pierres-naturelles', 'en', 'Natural stone');
            PERFORM insert_category_translations('pierres-naturelles', 'de', 'Naturstein');
            PERFORM insert_category_translations('pierres-naturelles', 'es', 'Piedra natural');
            PERFORM insert_category_translations('pierres-naturelles', 'it', 'Pietra naturale');

            -- Level 2: bois-de-construction
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bois-de-construction', 'bois-de-construction', 2, l1_id, 'Bois de construction')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bois-de-construction', 'fr', 'Bois de construction');
            PERFORM insert_category_translations('bois-de-construction', 'ar', 'خشب بناء');
            PERFORM insert_category_translations('bois-de-construction', 'en', 'Construction lumber');
            PERFORM insert_category_translations('bois-de-construction', 'de', 'Bauholz');
            PERFORM insert_category_translations('bois-de-construction', 'es', 'Madera de construcción');
            PERFORM insert_category_translations('bois-de-construction', 'it', 'Legname da costruzione');

            -- Level 2: tuiles-toitures
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tuiles-toitures', 'tuiles-toitures', 2, l1_id, 'Tuiles & toitures')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tuiles-toitures', 'fr', 'Tuiles & toitures');
            PERFORM insert_category_translations('tuiles-toitures', 'ar', 'قرميد وأسقف');
            PERFORM insert_category_translations('tuiles-toitures', 'en', 'Tiles & roofing');
            PERFORM insert_category_translations('tuiles-toitures', 'de', 'Dachziegel & Dach');
            PERFORM insert_category_translations('tuiles-toitures', 'es', 'Tejas & cubiertas');
            PERFORM insert_category_translations('tuiles-toitures', 'it', 'Tegole & coperture');

            -- Level 2: plaques-de-platre
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('plaques-de-platre', 'plaques-de-platre', 2, l1_id, 'Plaques de plâtre')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('plaques-de-platre', 'fr', 'Plaques de plâtre');
            PERFORM insert_category_translations('plaques-de-platre', 'ar', 'ألواح جبس');
            PERFORM insert_category_translations('plaques-de-platre', 'en', 'Drywall & plasterboard');
            PERFORM insert_category_translations('plaques-de-platre', 'de', 'Gipskartonplatten');
            PERFORM insert_category_translations('plaques-de-platre', 'es', 'Placas de yeso');
            PERFORM insert_category_translations('plaques-de-platre', 'it', 'Cartongesso');

            -- Level 2: isolants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('isolants', 'isolants', 2, l1_id, 'Isolants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('isolants', 'fr', 'Isolants');
            PERFORM insert_category_translations('isolants', 'ar', 'مواد عازلة');
            PERFORM insert_category_translations('isolants', 'en', 'Insulation');
            PERFORM insert_category_translations('isolants', 'de', 'Dämmstoffe');
            PERFORM insert_category_translations('isolants', 'es', 'Aislantes');
            PERFORM insert_category_translations('isolants', 'it', 'Isolanti');

            -- Level 2: peintures-enduits
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('peintures-enduits', 'peintures-enduits', 2, l1_id, 'Peintures & enduits')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('peintures-enduits', 'fr', 'Peintures & enduits');
            PERFORM insert_category_translations('peintures-enduits', 'ar', 'دهانات وطلاءات');
            PERFORM insert_category_translations('peintures-enduits', 'en', 'Paints & renders');
            PERFORM insert_category_translations('peintures-enduits', 'de', 'Farben & Putze');
            PERFORM insert_category_translations('peintures-enduits', 'es', 'Pinturas & revestimientos');
            PERFORM insert_category_translations('peintures-enduits', 'it', 'Vernici & intonaci');

            -- Level 2: revetements-sols-murs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('revetements-sols-murs', 'revetements-sols-murs', 2, l1_id, 'Revêtements sols & murs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('revetements-sols-murs', 'fr', 'Revêtements sols & murs');
            PERFORM insert_category_translations('revetements-sols-murs', 'ar', 'أرضيات وكسوات جدران');
            PERFORM insert_category_translations('revetements-sols-murs', 'en', 'Floor & wall coverings');
            PERFORM insert_category_translations('revetements-sols-murs', 'de', 'Boden- & Wandbeläge');
            PERFORM insert_category_translations('revetements-sols-murs', 'es', 'Revestimientos de suelos & paredes');
            PERFORM insert_category_translations('revetements-sols-murs', 'it', 'Rivestimenti per pavimenti & pareti');

        -- Level 1: quincaillerie-fixations
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('quincaillerie-fixations', 'quincaillerie-fixations', 1, root_id, 'Quincaillerie & fixations')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('quincaillerie-fixations', 'fr', 'Quincaillerie & fixations');
        PERFORM insert_category_translations('quincaillerie-fixations', 'ar', 'العدد والمثبتات');
        PERFORM insert_category_translations('quincaillerie-fixations', 'en', 'Hardware & fasteners');
        PERFORM insert_category_translations('quincaillerie-fixations', 'de', 'Beschläge & Befestigungen');
        PERFORM insert_category_translations('quincaillerie-fixations', 'es', 'Ferretería & fijaciones');
        PERFORM insert_category_translations('quincaillerie-fixations', 'it', 'Ferramenta & fissaggi');

            -- Level 2: vis-boulons
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vis-boulons', 'vis-boulons', 2, l1_id, 'Vis & boulons')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('vis-boulons', 'fr', 'Vis & boulons');
            PERFORM insert_category_translations('vis-boulons', 'ar', 'مسامير وصواميل');
            PERFORM insert_category_translations('vis-boulons', 'en', 'Screws & bolts');
            PERFORM insert_category_translations('vis-boulons', 'de', 'Schrauben & Bolzen');
            PERFORM insert_category_translations('vis-boulons', 'es', 'Tornillos & pernos');
            PERFORM insert_category_translations('vis-boulons', 'it', 'Viti & bulloni');

            -- Level 2: chevilles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chevilles', 'chevilles', 2, l1_id, 'Chevilles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chevilles', 'fr', 'Chevilles');
            PERFORM insert_category_translations('chevilles', 'ar', 'مراسي تثبيت');
            PERFORM insert_category_translations('chevilles', 'en', 'Anchors');
            PERFORM insert_category_translations('chevilles', 'de', 'Dübel');
            PERFORM insert_category_translations('chevilles', 'es', 'Tacos');
            PERFORM insert_category_translations('chevilles', 'it', 'Tasselli');

            -- Level 2: clous
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('clous', 'clous', 2, l1_id, 'Clous')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('clous', 'fr', 'Clous');
            PERFORM insert_category_translations('clous', 'ar', 'مسامير');
            PERFORM insert_category_translations('clous', 'en', 'Nails');
            PERFORM insert_category_translations('clous', 'de', 'Nägel');
            PERFORM insert_category_translations('clous', 'es', 'Clavos');
            PERFORM insert_category_translations('clous', 'it', 'Chiodi');

            -- Level 2: equerres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('equerres', 'equerres', 2, l1_id, 'Équerres')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('equerres', 'fr', 'Équerres');
            PERFORM insert_category_translations('equerres', 'ar', 'زوايا تثبيت');
            PERFORM insert_category_translations('equerres', 'en', 'Brackets');
            PERFORM insert_category_translations('equerres', 'de', 'Winkelverbinder');
            PERFORM insert_category_translations('equerres', 'es', 'Escuadras');
            PERFORM insert_category_translations('equerres', 'it', 'Staff e squadre');

            -- Level 2: charniere
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('charniere', 'charniere', 2, l1_id, 'Charnières')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('charniere', 'fr', 'Charnières');
            PERFORM insert_category_translations('charniere', 'ar', 'مفصلات');
            PERFORM insert_category_translations('charniere', 'en', 'Hinges');
            PERFORM insert_category_translations('charniere', 'de', 'Scharniere');
            PERFORM insert_category_translations('charniere', 'es', 'Bisagras');
            PERFORM insert_category_translations('charniere', 'it', 'Cerniere');

            -- Level 2: serrures
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('serrures', 'serrures', 2, l1_id, 'Serrures')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('serrures', 'fr', 'Serrures');
            PERFORM insert_category_translations('serrures', 'ar', 'أقفال');
            PERFORM insert_category_translations('serrures', 'en', 'Locks');
            PERFORM insert_category_translations('serrures', 'de', 'Schlösser');
            PERFORM insert_category_translations('serrures', 'es', 'Cerraduras');
            PERFORM insert_category_translations('serrures', 'it', 'Serrature');

            -- Level 2: cadenas
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cadenas', 'cadenas', 2, l1_id, 'Cadenas')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cadenas', 'fr', 'Cadenas');
            PERFORM insert_category_translations('cadenas', 'ar', 'أقفال معلّقة');
            PERFORM insert_category_translations('cadenas', 'en', 'Padlocks');
            PERFORM insert_category_translations('cadenas', 'de', 'Vorhängeschlösser');
            PERFORM insert_category_translations('cadenas', 'es', 'Candados');
            PERFORM insert_category_translations('cadenas', 'it', 'Lucchetti');

            -- Level 2: colles-mastics
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('colles-mastics', 'colles-mastics', 2, l1_id, 'Colles & mastics')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('colles-mastics', 'fr', 'Colles & mastics');
            PERFORM insert_category_translations('colles-mastics', 'ar', 'مواد لاصقة ومانعات تسرب');
            PERFORM insert_category_translations('colles-mastics', 'en', 'Adhesives & sealants');
            PERFORM insert_category_translations('colles-mastics', 'de', 'Klebstoffe & Dichtmassen');
            PERFORM insert_category_translations('colles-mastics', 'es', 'Adhesivos & selladores');
            PERFORM insert_category_translations('colles-mastics', 'it', 'Adesivi & sigillanti');

            -- Level 2: rubans-adhesifs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('rubans-adhesifs', 'rubans-adhesifs', 2, l1_id, 'Rubans adhésifs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('rubans-adhesifs', 'fr', 'Rubans adhésifs');
            PERFORM insert_category_translations('rubans-adhesifs', 'ar', 'أشرطة لاصقة');
            PERFORM insert_category_translations('rubans-adhesifs', 'en', 'Tapes');
            PERFORM insert_category_translations('rubans-adhesifs', 'de', 'Klebebänder');
            PERFORM insert_category_translations('rubans-adhesifs', 'es', 'Cintas adhesivas');
            PERFORM insert_category_translations('rubans-adhesifs', 'it', 'Nastri adesivi');

            -- Level 2: joints-silicone
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('joints-silicone', 'joints-silicone', 2, l1_id, 'Joints & silicone')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('joints-silicone', 'fr', 'Joints & silicone');
            PERFORM insert_category_translations('joints-silicone', 'ar', 'حشوات وسيليكون');
            PERFORM insert_category_translations('joints-silicone', 'en', 'Gaskets & silicone');
            PERFORM insert_category_translations('joints-silicone', 'de', 'Dichtungen & Silikon');
            PERFORM insert_category_translations('joints-silicone', 'es', 'Juntas & silicona');
            PERFORM insert_category_translations('joints-silicone', 'it', 'Guarnizioni & silicone');

        -- Level 1: equipements-electriques-plomberie
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('equipements-electriques-plomberie', 'equipements-electriques-plomberie', 1, root_id, 'Équipements électriques & plomberie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('equipements-electriques-plomberie', 'fr', 'Équipements électriques & plomberie');
        PERFORM insert_category_translations('equipements-electriques-plomberie', 'ar', 'كهرباء وسباكة');
        PERFORM insert_category_translations('equipements-electriques-plomberie', 'en', 'Electrical & plumbing');
        PERFORM insert_category_translations('equipements-electriques-plomberie', 'de', 'Elektro & Sanitär');
        PERFORM insert_category_translations('equipements-electriques-plomberie', 'es', 'Eléctrico & fontanería');
        PERFORM insert_category_translations('equipements-electriques-plomberie', 'it', 'Elettrico & idraulica');

            -- Level 2: cables-electriques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cables-electriques', 'cables-electriques', 2, l1_id, 'Câbles électriques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cables-electriques', 'fr', 'Câbles électriques');
            PERFORM insert_category_translations('cables-electriques', 'ar', 'كابلات كهربائية');
            PERFORM insert_category_translations('cables-electriques', 'en', 'Electrical cables');
            PERFORM insert_category_translations('cables-electriques', 'de', 'Elektrokabel');
            PERFORM insert_category_translations('cables-electriques', 'es', 'Cables eléctricos');
            PERFORM insert_category_translations('cables-electriques', 'it', 'Cavi elettrici');

            -- Level 2: interrupteurs-prises
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('interrupteurs-prises', 'interrupteurs-prises', 2, l1_id, 'Interrupteurs & prises')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('interrupteurs-prises', 'fr', 'Interrupteurs & prises');
            PERFORM insert_category_translations('interrupteurs-prises', 'ar', 'مفاتيح ومقابس');
            PERFORM insert_category_translations('interrupteurs-prises', 'en', 'Switches & outlets');
            PERFORM insert_category_translations('interrupteurs-prises', 'de', 'Schalter & Steckdosen');
            PERFORM insert_category_translations('interrupteurs-prises', 'es', 'Interruptores & tomas');
            PERFORM insert_category_translations('interrupteurs-prises', 'it', 'Interruttori & prese');

            -- Level 2: disjoncteurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('disjoncteurs', 'disjoncteurs', 2, l1_id, 'Disjoncteurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('disjoncteurs', 'fr', 'Disjoncteurs');
            PERFORM insert_category_translations('disjoncteurs', 'ar', 'قواطع كهربائية');
            PERFORM insert_category_translations('disjoncteurs', 'en', 'Breakers');
            PERFORM insert_category_translations('disjoncteurs', 'de', 'Leitungsschutzschalter');
            PERFORM insert_category_translations('disjoncteurs', 'es', 'Interruptores automáticos');
            PERFORM insert_category_translations('disjoncteurs', 'it', 'Interruttori automatici');

            -- Level 2: tableaux-electriques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tableaux-electriques', 'tableaux-electriques', 2, l1_id, 'Tableaux électriques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tableaux-electriques', 'fr', 'Tableaux électriques');
            PERFORM insert_category_translations('tableaux-electriques', 'ar', 'لوحات كهربائية');
            PERFORM insert_category_translations('tableaux-electriques', 'en', 'Panels');
            PERFORM insert_category_translations('tableaux-electriques', 'de', 'Verteilerkästen');
            PERFORM insert_category_translations('tableaux-electriques', 'es', 'Cuadros eléctricos');
            PERFORM insert_category_translations('tableaux-electriques', 'it', 'Quadri elettrici');

            -- Level 2: eclairage-chantier
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('eclairage-chantier', 'eclairage-chantier', 2, l1_id, 'Éclairage chantier')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('eclairage-chantier', 'fr', 'Éclairage chantier');
            PERFORM insert_category_translations('eclairage-chantier', 'ar', 'إنارة موقع البناء');
            PERFORM insert_category_translations('eclairage-chantier', 'en', 'Jobsite lighting');
            PERFORM insert_category_translations('eclairage-chantier', 'de', 'Baustellenbeleuchtung');
            PERFORM insert_category_translations('eclairage-chantier', 'es', 'Iluminación de obra');
            PERFORM insert_category_translations('eclairage-chantier', 'it', 'Illuminazione da cantiere');

            -- Level 2: tuyaux-raccords
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tuyaux-raccords', 'tuyaux-raccords', 2, l1_id, 'Tuyaux & raccords')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tuyaux-raccords', 'fr', 'Tuyaux & raccords');
            PERFORM insert_category_translations('tuyaux-raccords', 'ar', 'أنابيب ووصلات');
            PERFORM insert_category_translations('tuyaux-raccords', 'en', 'Pipes & fittings');
            PERFORM insert_category_translations('tuyaux-raccords', 'de', 'Rohre & Fittings');
            PERFORM insert_category_translations('tuyaux-raccords', 'es', 'Tubos & accesorios');
            PERFORM insert_category_translations('tuyaux-raccords', 'it', 'Tubi & raccordi');

            -- Level 2: robinets
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('robinets', 'robinets', 2, l1_id, 'Robinetterie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('robinets', 'fr', 'Robinetterie');
            PERFORM insert_category_translations('robinets', 'ar', 'صنابير');
            PERFORM insert_category_translations('robinets', 'en', 'Faucets');
            PERFORM insert_category_translations('robinets', 'de', 'Armaturen');
            PERFORM insert_category_translations('robinets', 'es', 'Grifería');
            PERFORM insert_category_translations('robinets', 'it', 'Rubinetteria');

            -- Level 2: compteurs-eau
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('compteurs-eau', 'compteurs-eau', 2, l1_id, 'Compteurs d’eau')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('compteurs-eau', 'fr', 'Compteurs d’eau');
            PERFORM insert_category_translations('compteurs-eau', 'ar', 'عدادات مياه');
            PERFORM insert_category_translations('compteurs-eau', 'en', 'Water meters');
            PERFORM insert_category_translations('compteurs-eau', 'de', 'Wasserzähler');
            PERFORM insert_category_translations('compteurs-eau', 'es', 'Contadores de agua');
            PERFORM insert_category_translations('compteurs-eau', 'it', 'Contatori dell’acqua');

            -- Level 2: pompes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pompes', 'pompes', 2, l1_id, 'Pompes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pompes', 'fr', 'Pompes');
            PERFORM insert_category_translations('pompes', 'ar', 'مضخات');
            PERFORM insert_category_translations('pompes', 'en', 'Pumps');
            PERFORM insert_category_translations('pompes', 'de', 'Pumpen');
            PERFORM insert_category_translations('pompes', 'es', 'Bombas');
            PERFORM insert_category_translations('pompes', 'it', 'Pompe');

            -- Level 2: chauffe-eau
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chauffe-eau', 'chauffe-eau', 2, l1_id, 'Chauffe-eau')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chauffe-eau', 'fr', 'Chauffe-eau');
            PERFORM insert_category_translations('chauffe-eau', 'ar', 'سخانات مياه');
            PERFORM insert_category_translations('chauffe-eau', 'en', 'Water heaters');
            PERFORM insert_category_translations('chauffe-eau', 'de', 'Warmwasserbereiter');
            PERFORM insert_category_translations('chauffe-eau', 'es', 'Calentadores de agua');
            PERFORM insert_category_translations('chauffe-eau', 'it', 'Scaldacqua');

            -- Level 2: sanitaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sanitaires', 'sanitaires', 2, l1_id, 'Sanitaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sanitaires', 'fr', 'Sanitaires');
            PERFORM insert_category_translations('sanitaires', 'ar', 'مرافق صحية');
            PERFORM insert_category_translations('sanitaires', 'en', 'Sanitary ware');
            PERFORM insert_category_translations('sanitaires', 'de', 'Sanitäreinrichtungen');
            PERFORM insert_category_translations('sanitaires', 'es', 'Sanitarios');
            PERFORM insert_category_translations('sanitaires', 'it', 'Sanitari');

        -- Level 1: outils-equipements-professionnels
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('outils-equipements-professionnels', 'outils-equipements-professionnels', 1, root_id, 'Outils & équipements professionnels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('outils-equipements-professionnels', 'fr', 'Outils & équipements professionnels');
        PERFORM insert_category_translations('outils-equipements-professionnels', 'ar', 'أدوات ومعدات مهنية');
        PERFORM insert_category_translations('outils-equipements-professionnels', 'en', 'Tools & professional equipment');
        PERFORM insert_category_translations('outils-equipements-professionnels', 'de', 'Werkzeuge & Profi-Ausrüstung');
        PERFORM insert_category_translations('outils-equipements-professionnels', 'es', 'Herramientas & equipos profesionales');
        PERFORM insert_category_translations('outils-equipements-professionnels', 'it', 'Utensili & attrezzature professionali');

            -- Level 2: outils-manuels
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('outils-manuels', 'outils-manuels', 2, l1_id, 'Outils manuels (marteaux, clés, tournevis, niveaux)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('outils-manuels', 'fr', 'Outils manuels (marteaux, clés, tournevis, niveaux)');
            PERFORM insert_category_translations('outils-manuels', 'ar', 'أدوات يدوية (مطارق، مفاتيح، مفكات، مستويات)');
            PERFORM insert_category_translations('outils-manuels', 'en', 'Hand tools (hammers, wrenches, screwdrivers, levels)');
            PERFORM insert_category_translations('outils-manuels', 'de', 'Handwerkzeuge (Hämmer, Schlüssel, Schraubendreher, Wasserwaagen)');
            PERFORM insert_category_translations('outils-manuels', 'es', 'Herramientas manuales (martillos, llaves, destornilladores, niveles)');
            PERFORM insert_category_translations('outils-manuels', 'it', 'Utensili manuali (martelli, chiavi, cacciaviti, livelli)');

            -- Level 2: outils-de-mesure
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('outils-de-mesure', 'outils-de-mesure', 2, l1_id, 'Outils de mesure')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('outils-de-mesure', 'fr', 'Outils de mesure');
            PERFORM insert_category_translations('outils-de-mesure', 'ar', 'أدوات قياس');
            PERFORM insert_category_translations('outils-de-mesure', 'en', 'Measuring tools');
            PERFORM insert_category_translations('outils-de-mesure', 'de', 'Messwerkzeuge');
            PERFORM insert_category_translations('outils-de-mesure', 'es', 'Instrumentos de medición');
            PERFORM insert_category_translations('outils-de-mesure', 'it', 'Strumenti di misura');

            -- Level 2: mallettes-coffrets
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mallettes-coffrets', 'mallettes-coffrets', 2, l1_id, 'Mallettes & coffrets')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mallettes-coffrets', 'fr', 'Mallettes & coffrets');
            PERFORM insert_category_translations('mallettes-coffrets', 'ar', 'حقائب وصناديق أدوات');
            PERFORM insert_category_translations('mallettes-coffrets', 'en', 'Toolboxes & cases');
            PERFORM insert_category_translations('mallettes-coffrets', 'de', 'Koffer & Kästen');
            PERFORM insert_category_translations('mallettes-coffrets', 'es', 'Maletines & estuches');
            PERFORM insert_category_translations('mallettes-coffrets', 'it', 'Valigette & cassette');

            -- Level 2: outils-diamantes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('outils-diamantes', 'outils-diamantes', 2, l1_id, 'Outils diamantés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('outils-diamantes', 'fr', 'Outils diamantés');
            PERFORM insert_category_translations('outils-diamantes', 'ar', 'أدوات ماسيّة');
            PERFORM insert_category_translations('outils-diamantes', 'en', 'Diamond tools');
            PERFORM insert_category_translations('outils-diamantes', 'de', 'Diamantwerkzeuge');
            PERFORM insert_category_translations('outils-diamantes', 'es', 'Herramientas diamantadas');
            PERFORM insert_category_translations('outils-diamantes', 'it', 'Utensili diamantati');

            -- Level 2: meuleuses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('meuleuses', 'meuleuses', 2, l1_id, 'Meuleuses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('meuleuses', 'fr', 'Meuleuses');
            PERFORM insert_category_translations('meuleuses', 'ar', 'جلاخات');
            PERFORM insert_category_translations('meuleuses', 'en', 'Grinders');
            PERFORM insert_category_translations('meuleuses', 'de', 'Schleifmaschinen');
            PERFORM insert_category_translations('meuleuses', 'es', 'Amoladoras');
            PERFORM insert_category_translations('meuleuses', 'it', 'Smerigliatrici');

            -- Level 2: perforateurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('perforateurs', 'perforateurs', 2, l1_id, 'Perforateurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('perforateurs', 'fr', 'Perforateurs');
            PERFORM insert_category_translations('perforateurs', 'ar', 'مطارق دوارة');
            PERFORM insert_category_translations('perforateurs', 'en', 'Rotary hammers');
            PERFORM insert_category_translations('perforateurs', 'de', 'Bohrhämmer');
            PERFORM insert_category_translations('perforateurs', 'es', 'Martillos perforadores');
            PERFORM insert_category_translations('perforateurs', 'it', 'Martelli perforatori');

            -- Level 2: perceuses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('perceuses', 'perceuses', 2, l1_id, 'Perceuses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('perceuses', 'fr', 'Perceuses');
            PERFORM insert_category_translations('perceuses', 'ar', 'مثاقب');
            PERFORM insert_category_translations('perceuses', 'en', 'Drills');
            PERFORM insert_category_translations('perceuses', 'de', 'Bohrmaschinen');
            PERFORM insert_category_translations('perceuses', 'es', 'Taladros');
            PERFORM insert_category_translations('perceuses', 'it', 'Trapani');

            -- Level 2: scies-circulaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('scies-circulaires', 'scies-circulaires', 2, l1_id, 'Scies circulaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('scies-circulaires', 'fr', 'Scies circulaires');
            PERFORM insert_category_translations('scies-circulaires', 'ar', 'مناشير دائرية');
            PERFORM insert_category_translations('scies-circulaires', 'en', 'Circular saws');
            PERFORM insert_category_translations('scies-circulaires', 'de', 'Kreissägen');
            PERFORM insert_category_translations('scies-circulaires', 'es', 'Sierras circulares');
            PERFORM insert_category_translations('scies-circulaires', 'it', 'Seghe circolari');

            -- Level 2: ponceuses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ponceuses', 'ponceuses', 2, l1_id, 'Ponceuses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ponceuses', 'fr', 'Ponceuses');
            PERFORM insert_category_translations('ponceuses', 'ar', 'أجهزة صنفرة');
            PERFORM insert_category_translations('ponceuses', 'en', 'Sanders');
            PERFORM insert_category_translations('ponceuses', 'de', 'Schleifmaschinen');
            PERFORM insert_category_translations('ponceuses', 'es', 'Lijadoras');
            PERFORM insert_category_translations('ponceuses', 'it', 'Levigatrici');

            -- Level 2: lasers-rotatifs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lasers-rotatifs', 'lasers-rotatifs', 2, l1_id, 'Lasers rotatifs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lasers-rotatifs', 'fr', 'Lasers rotatifs');
            PERFORM insert_category_translations('lasers-rotatifs', 'ar', 'ليزر دوّار');
            PERFORM insert_category_translations('lasers-rotatifs', 'en', 'Rotary lasers');
            PERFORM insert_category_translations('lasers-rotatifs', 'de', 'Rotationslaser');
            PERFORM insert_category_translations('lasers-rotatifs', 'es', 'Láseres rotativos');
            PERFORM insert_category_translations('lasers-rotatifs', 'it', 'Laser rotanti');

        -- Level 1: securite-protection
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('securite-protection', 'securite-protection', 1, root_id, 'Équipements de sécurité & protection')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('securite-protection', 'fr', 'Équipements de sécurité & protection');
        PERFORM insert_category_translations('securite-protection', 'ar', 'السلامة ومعدات الوقاية');
        PERFORM insert_category_translations('securite-protection', 'en', 'Safety & PPE');
        PERFORM insert_category_translations('securite-protection', 'de', 'Sicherheit & PSA');
        PERFORM insert_category_translations('securite-protection', 'es', 'Seguridad & EPP');
        PERFORM insert_category_translations('securite-protection', 'it', 'Sicurezza & DPI');

            -- Level 2: casques-de-chantier
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('casques-de-chantier', 'casques-de-chantier', 2, l1_id, 'Casques de chantier')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('casques-de-chantier', 'fr', 'Casques de chantier');
            PERFORM insert_category_translations('casques-de-chantier', 'ar', 'خوذات أمان');
            PERFORM insert_category_translations('casques-de-chantier', 'en', 'Hard hats');
            PERFORM insert_category_translations('casques-de-chantier', 'de', 'Schutzhelme');
            PERFORM insert_category_translations('casques-de-chantier', 'es', 'Cascos de seguridad');
            PERFORM insert_category_translations('casques-de-chantier', 'it', 'Caschi da cantiere');

            -- Level 2: gilets-haute-visibilite
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gilets-haute-visibilite', 'gilets-haute-visibilite', 2, l1_id, 'Gilets haute visibilité')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gilets-haute-visibilite', 'fr', 'Gilets haute visibilité');
            PERFORM insert_category_translations('gilets-haute-visibilite', 'ar', 'سترات عالية الرؤية');
            PERFORM insert_category_translations('gilets-haute-visibilite', 'en', 'High‑visibility vests');
            PERFORM insert_category_translations('gilets-haute-visibilite', 'de', 'Warnwesten');
            PERFORM insert_category_translations('gilets-haute-visibilite', 'es', 'Chalecos de alta visibilidad');
            PERFORM insert_category_translations('gilets-haute-visibilite', 'it', 'Gilet ad alta visibilità');

            -- Level 2: chaussures-de-securite
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chaussures-de-securite', 'chaussures-de-securite', 2, l1_id, 'Chaussures de sécurité')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chaussures-de-securite', 'fr', 'Chaussures de sécurité');
            PERFORM insert_category_translations('chaussures-de-securite', 'ar', 'أحذية أمان');
            PERFORM insert_category_translations('chaussures-de-securite', 'en', 'Safety shoes');
            PERFORM insert_category_translations('chaussures-de-securite', 'de', 'Sicherheitsschuhe');
            PERFORM insert_category_translations('chaussures-de-securite', 'es', 'Calzado de seguridad');
            PERFORM insert_category_translations('chaussures-de-securite', 'it', 'Scarpe antinfortunistiche');

            -- Level 2: gants-de-protection
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gants-de-protection', 'gants-de-protection', 2, l1_id, 'Gants de protection')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gants-de-protection', 'fr', 'Gants de protection');
            PERFORM insert_category_translations('gants-de-protection', 'ar', 'قفازات حماية');
            PERFORM insert_category_translations('gants-de-protection', 'en', 'Protective gloves');
            PERFORM insert_category_translations('gants-de-protection', 'de', 'Schutzhandschuhe');
            PERFORM insert_category_translations('gants-de-protection', 'es', 'Guantes de protección');
            PERFORM insert_category_translations('gants-de-protection', 'it', 'Guanti protettivi');

            -- Level 2: lunettes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lunettes', 'lunettes', 2, l1_id, 'Lunettes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lunettes', 'fr', 'Lunettes');
            PERFORM insert_category_translations('lunettes', 'ar', 'نظارات واقية');
            PERFORM insert_category_translations('lunettes', 'en', 'Safety glasses');
            PERFORM insert_category_translations('lunettes', 'de', 'Schutzbrillen');
            PERFORM insert_category_translations('lunettes', 'es', 'Gafas de seguridad');
            PERFORM insert_category_translations('lunettes', 'it', 'Occhiali di sicurezza');

            -- Level 2: masques-anti-poussiere
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('masques-anti-poussiere', 'masques-anti-poussiere', 2, l1_id, 'Masques anti-poussière')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('masques-anti-poussiere', 'fr', 'Masques anti-poussière');
            PERFORM insert_category_translations('masques-anti-poussiere', 'ar', 'أقنعة مضادة للغبار');
            PERFORM insert_category_translations('masques-anti-poussiere', 'en', 'Dust masks');
            PERFORM insert_category_translations('masques-anti-poussiere', 'de', 'Staubmasken');
            PERFORM insert_category_translations('masques-anti-poussiere', 'es', 'Mascarillas antipolvo');
            PERFORM insert_category_translations('masques-anti-poussiere', 'it', 'Maschere antipolvere');

            -- Level 2: harnais-de-securite
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('harnais-de-securite', 'harnais-de-securite', 2, l1_id, 'Harnais de sécurité')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('harnais-de-securite', 'fr', 'Harnais de sécurité');
            PERFORM insert_category_translations('harnais-de-securite', 'ar', 'أحزمة أمان');
            PERFORM insert_category_translations('harnais-de-securite', 'en', 'Safety harnesses');
            PERFORM insert_category_translations('harnais-de-securite', 'de', 'Sicherheitsgeschirre');
            PERFORM insert_category_translations('harnais-de-securite', 'es', 'Arneses de seguridad');
            PERFORM insert_category_translations('harnais-de-securite', 'it', 'Imbracature di sicurezza');

            -- Level 2: filets-de-protection
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('filets-de-protection', 'filets-de-protection', 2, l1_id, 'Filets de protection')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('filets-de-protection', 'fr', 'Filets de protection');
            PERFORM insert_category_translations('filets-de-protection', 'ar', 'شبكات أمان');
            PERFORM insert_category_translations('filets-de-protection', 'en', 'Safety nets');
            PERFORM insert_category_translations('filets-de-protection', 'de', 'Sicherheitsnetze');
            PERFORM insert_category_translations('filets-de-protection', 'es', 'Redes de seguridad');
            PERFORM insert_category_translations('filets-de-protection', 'it', 'Reti di sicurezza');

            -- Level 2: barrieres-de-chantier
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('barrieres-de-chantier', 'barrieres-de-chantier', 2, l1_id, 'Barrières de chantier')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('barrieres-de-chantier', 'fr', 'Barrières de chantier');
            PERFORM insert_category_translations('barrieres-de-chantier', 'ar', 'حواجز موقع البناء');
            PERFORM insert_category_translations('barrieres-de-chantier', 'en', 'Site barriers');
            PERFORM insert_category_translations('barrieres-de-chantier', 'de', 'Baustellenabsperrungen');
            PERFORM insert_category_translations('barrieres-de-chantier', 'es', 'Barreras de obra');
            PERFORM insert_category_translations('barrieres-de-chantier', 'it', 'Barriere di cantiere');

        -- Level 1: construction-modulaire-structures
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('construction-modulaire-structures', 'construction-modulaire-structures', 1, root_id, 'Construction modulaire & structures')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('construction-modulaire-structures', 'fr', 'Construction modulaire & structures');
        PERFORM insert_category_translations('construction-modulaire-structures', 'ar', 'إنشاءات معيارية وهياكل');
        PERFORM insert_category_translations('construction-modulaire-structures', 'en', 'Modular construction & structures');
        PERFORM insert_category_translations('construction-modulaire-structures', 'de', 'Modulbau & Strukturen');
        PERFORM insert_category_translations('construction-modulaire-structures', 'es', 'Construcción modular & estructuras');
        PERFORM insert_category_translations('construction-modulaire-structures', 'it', 'Costruzione modulare & strutture');

            -- Level 2: bungalows-bases-vie
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bungalows-bases-vie', 'bungalows-bases-vie', 2, l1_id, 'Bungalows & bases-vie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bungalows-bases-vie', 'fr', 'Bungalows & bases-vie');
            PERFORM insert_category_translations('bungalows-bases-vie', 'ar', 'مساكن موقع');
            PERFORM insert_category_translations('bungalows-bases-vie', 'en', 'Site cabins');
            PERFORM insert_category_translations('bungalows-bases-vie', 'de', 'Baustellenunterkünfte');
            PERFORM insert_category_translations('bungalows-bases-vie', 'es', 'Casetas de obra');
            PERFORM insert_category_translations('bungalows-bases-vie', 'it', 'Baracche di cantiere');

            -- Level 2: conteneurs-amenages
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('conteneurs-amenages', 'conteneurs-amenages', 2, l1_id, 'Conteneurs aménagés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('conteneurs-amenages', 'fr', 'Conteneurs aménagés');
            PERFORM insert_category_translations('conteneurs-amenages', 'ar', 'حاويات مجهّزة');
            PERFORM insert_category_translations('conteneurs-amenages', 'en', 'Converted containers');
            PERFORM insert_category_translations('conteneurs-amenages', 'de', 'Umgebaute Container');
            PERFORM insert_category_translations('conteneurs-amenages', 'es', 'Contenedores acondicionados');
            PERFORM insert_category_translations('conteneurs-amenages', 'it', 'Container attrezzati');

            -- Level 2: cabanes-abris
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cabanes-abris', 'cabanes-abris', 2, l1_id, 'Cabanes & abris')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cabanes-abris', 'fr', 'Cabanes & abris');
            PERFORM insert_category_translations('cabanes-abris', 'ar', 'أكواخ وملاجئ');
            PERFORM insert_category_translations('cabanes-abris', 'en', 'Sheds & shelters');
            PERFORM insert_category_translations('cabanes-abris', 'de', 'Hütten & Unterstände');
            PERFORM insert_category_translations('cabanes-abris', 'es', 'Cabañas & refugios');
            PERFORM insert_category_translations('cabanes-abris', 'it', 'Capanni & ricoveri');

            -- Level 2: hangars-metalliques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('hangars-metalliques', 'hangars-metalliques', 2, l1_id, 'Hangars métalliques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('hangars-metalliques', 'fr', 'Hangars métalliques');
            PERFORM insert_category_translations('hangars-metalliques', 'ar', 'مستودعات معدنية');
            PERFORM insert_category_translations('hangars-metalliques', 'en', 'Metal sheds');
            PERFORM insert_category_translations('hangars-metalliques', 'de', 'Metallhallen');
            PERFORM insert_category_translations('hangars-metalliques', 'es', 'Naves metálicas');
            PERFORM insert_category_translations('hangars-metalliques', 'it', 'Capannoni metallici');

            -- Level 2: structures-prefabriquees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('structures-prefabriquees', 'structures-prefabriquees', 2, l1_id, 'Structures préfabriquées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('structures-prefabriquees', 'fr', 'Structures préfabriquées');
            PERFORM insert_category_translations('structures-prefabriquees', 'ar', 'هياكل مسبقة الصنع');
            PERFORM insert_category_translations('structures-prefabriquees', 'en', 'Prefabricated structures');
            PERFORM insert_category_translations('structures-prefabriquees', 'de', 'Vorfabrikierte Strukturen');
            PERFORM insert_category_translations('structures-prefabriquees', 'es', 'Estructuras prefabricadas');
            PERFORM insert_category_translations('structures-prefabriquees', 'it', 'Strutture prefabbricate');

            -- Level 2: serres-couvertures-industrielles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('serres-couvertures-industrielles', 'serres-couvertures-industrielles', 2, l1_id, 'Serres & couvertures industrielles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('serres-couvertures-industrielles', 'fr', 'Serres & couvertures industrielles');
            PERFORM insert_category_translations('serres-couvertures-industrielles', 'ar', 'بيوت زجاجية وأغطية صناعية');
            PERFORM insert_category_translations('serres-couvertures-industrielles', 'en', 'Greenhouses & industrial covers');
            PERFORM insert_category_translations('serres-couvertures-industrielles', 'de', 'Gewächshäuser & Industrieabdeckungen');
            PERFORM insert_category_translations('serres-couvertures-industrielles', 'es', 'Invernaderos & coberturas industriales');
            PERFORM insert_category_translations('serres-couvertures-industrielles', 'it', 'Serre & coperture industriali');

        -- Level 1: location-materiel-btp
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('location-materiel-btp', 'location-materiel-btp', 1, root_id, 'Location de matériel BTP')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('location-materiel-btp', 'fr', 'Location de matériel BTP');
        PERFORM insert_category_translations('location-materiel-btp', 'ar', 'تأجير معدات البناء');
        PERFORM insert_category_translations('location-materiel-btp', 'en', 'Construction equipment rental');
        PERFORM insert_category_translations('location-materiel-btp', 'de', 'Vermietung von Baugeräten');
        PERFORM insert_category_translations('location-materiel-btp', 'es', 'Alquiler de equipos de construcción');
        PERFORM insert_category_translations('location-materiel-btp', 'it', 'Noleggio attrezzature edili');

            -- Level 2: location-d-engins
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('location-d-engins', 'location-d-engins', 2, l1_id, 'Location d’engins (pelles, nacelles, camions)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('location-d-engins', 'fr', 'Location d’engins (pelles, nacelles, camions)');
            PERFORM insert_category_translations('location-d-engins', 'ar', 'تأجير الآليات (حفارات، منصات، شاحنات)');
            PERFORM insert_category_translations('location-d-engins', 'en', 'Equipment rental (excavators, lifts, trucks)');
            PERFORM insert_category_translations('location-d-engins', 'de', 'Maschinenvermietung (Bagger, Hebebühnen, Lkw)');
            PERFORM insert_category_translations('location-d-engins', 'es', 'Alquiler de maquinaria (excavadoras, plataformas, camiones)');
            PERFORM insert_category_translations('location-d-engins', 'it', 'Noleggio macchine (escavatori, piattaforme, camion)');

            -- Level 2: location-d-outillage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('location-d-outillage', 'location-d-outillage', 2, l1_id, 'Location d’outillage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('location-d-outillage', 'fr', 'Location d’outillage');
            PERFORM insert_category_translations('location-d-outillage', 'ar', 'تأجير الأدوات');
            PERFORM insert_category_translations('location-d-outillage', 'en', 'Tool rental');
            PERFORM insert_category_translations('location-d-outillage', 'de', 'Werkzeugvermietung');
            PERFORM insert_category_translations('location-d-outillage', 'es', 'Alquiler de herramientas');
            PERFORM insert_category_translations('location-d-outillage', 'it', 'Noleggio utensili');

            -- Level 2: location-coffrage-echafaudage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('location-coffrage-echafaudage', 'location-coffrage-echafaudage', 2, l1_id, 'Location de coffrage & échafaudage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('location-coffrage-echafaudage', 'fr', 'Location de coffrage & échafaudage');
            PERFORM insert_category_translations('location-coffrage-echafaudage', 'ar', 'تأجير القوالب والسقالات');
            PERFORM insert_category_translations('location-coffrage-echafaudage', 'en', 'Formwork & scaffolding rental');
            PERFORM insert_category_translations('location-coffrage-echafaudage', 'de', 'Schalungs- & Gerüstvermietung');
            PERFORM insert_category_translations('location-coffrage-echafaudage', 'es', 'Alquiler de encofrado & andamio');
            PERFORM insert_category_translations('location-coffrage-echafaudage', 'it', 'Noleggio casseforme & ponteggi');

            -- Level 2: location-groupes-electrogenes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('location-groupes-electrogenes', 'location-groupes-electrogenes', 2, l1_id, 'Location de groupes électrogènes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('location-groupes-electrogenes', 'fr', 'Location de groupes électrogènes');
            PERFORM insert_category_translations('location-groupes-electrogenes', 'ar', 'تأجير المولدات');
            PERFORM insert_category_translations('location-groupes-electrogenes', 'en', 'Generator rental');
            PERFORM insert_category_translations('location-groupes-electrogenes', 'de', 'Generatorvermietung');
            PERFORM insert_category_translations('location-groupes-electrogenes', 'es', 'Alquiler de generadores');
            PERFORM insert_category_translations('location-groupes-electrogenes', 'it', 'Noleggio generatori');

            -- Level 2: location-bungalows
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('location-bungalows', 'location-bungalows', 2, l1_id, 'Location de bungalows')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('location-bungalows', 'fr', 'Location de bungalows');
            PERFORM insert_category_translations('location-bungalows', 'ar', 'تأجير مساكن الموقع');
            PERFORM insert_category_translations('location-bungalows', 'en', 'Cabin rental');
            PERFORM insert_category_translations('location-bungalows', 'de', 'Bungalowvermietung');
            PERFORM insert_category_translations('location-bungalows', 'es', 'Alquiler de casetas');
            PERFORM insert_category_translations('location-bungalows', 'it', 'Noleggio baracche');

        -- Level 1: services-lies-au-btp
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('services-lies-au-btp', 'services-lies-au-btp', 1, root_id, 'Services liés au BTP')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('services-lies-au-btp', 'fr', 'Services liés au BTP');
        PERFORM insert_category_translations('services-lies-au-btp', 'ar', 'خدمات البناء');
        PERFORM insert_category_translations('services-lies-au-btp', 'en', 'Construction services');
        PERFORM insert_category_translations('services-lies-au-btp', 'de', 'Bau-Dienstleistungen');
        PERFORM insert_category_translations('services-lies-au-btp', 'es', 'Servicios de construcción');
        PERFORM insert_category_translations('services-lies-au-btp', 'it', 'Servizi per l’edilizia');

            -- Level 2: travaux-publics
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('travaux-publics', 'travaux-publics', 2, l1_id, 'Travaux publics')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('travaux-publics', 'fr', 'Travaux publics');
            PERFORM insert_category_translations('travaux-publics', 'ar', 'أشغال عامة');
            PERFORM insert_category_translations('travaux-publics', 'en', 'Public works');
            PERFORM insert_category_translations('travaux-publics', 'de', 'Öffentliche Bauarbeiten');
            PERFORM insert_category_translations('travaux-publics', 'es', 'Obras públicas');
            PERFORM insert_category_translations('travaux-publics', 'it', 'Lavori pubblici');

            -- Level 2: terrassement
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('terrassement', 'terrassement', 2, l1_id, 'Terrassement')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('terrassement', 'fr', 'Terrassement');
            PERFORM insert_category_translations('terrassement', 'ar', 'أعمال حفر وردم');
            PERFORM insert_category_translations('terrassement', 'en', 'Earthworks');
            PERFORM insert_category_translations('terrassement', 'de', 'Erdarbeiten');
            PERFORM insert_category_translations('terrassement', 'es', 'Movimiento de tierras');
            PERFORM insert_category_translations('terrassement', 'it', 'Movimenti terra');

            -- Level 2: demolition
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('demolition', 'demolition', 2, l1_id, 'Démolition')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('demolition', 'fr', 'Démolition');
            PERFORM insert_category_translations('demolition', 'ar', 'هدم');
            PERFORM insert_category_translations('demolition', 'en', 'Demolition');
            PERFORM insert_category_translations('demolition', 'de', 'Abriss');
            PERFORM insert_category_translations('demolition', 'es', 'Demolición');
            PERFORM insert_category_translations('demolition', 'it', 'Demolizione');

            -- Level 2: maconnerie
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('maconnerie', 'maconnerie', 2, l1_id, 'Maçonnerie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('maconnerie', 'fr', 'Maçonnerie');
            PERFORM insert_category_translations('maconnerie', 'ar', 'أعمال بناء');
            PERFORM insert_category_translations('maconnerie', 'en', 'Masonry');
            PERFORM insert_category_translations('maconnerie', 'de', 'Mauerarbeiten');
            PERFORM insert_category_translations('maconnerie', 'es', 'Albañilería');
            PERFORM insert_category_translations('maconnerie', 'it', 'Muratura');

            -- Level 2: plomberie
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('plomberie', 'plomberie', 2, l1_id, 'Plomberie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('plomberie', 'fr', 'Plomberie');
            PERFORM insert_category_translations('plomberie', 'ar', 'سباكة');
            PERFORM insert_category_translations('plomberie', 'en', 'Plumbing');
            PERFORM insert_category_translations('plomberie', 'de', 'Sanitär');
            PERFORM insert_category_translations('plomberie', 'es', 'Fontanería');
            PERFORM insert_category_translations('plomberie', 'it', 'Idraulica');

            -- Level 2: electricite
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('electricite', 'electricite', 2, l1_id, 'Électricité')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('electricite', 'fr', 'Électricité');
            PERFORM insert_category_translations('electricite', 'ar', 'كهرباء');
            PERFORM insert_category_translations('electricite', 'en', 'Electrical');
            PERFORM insert_category_translations('electricite', 'de', 'Elektroarbeiten');
            PERFORM insert_category_translations('electricite', 'es', 'Electricidad');
            PERFORM insert_category_translations('electricite', 'it', 'Elettricità');

            -- Level 2: menuiserie
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('menuiserie', 'menuiserie', 2, l1_id, 'Menuiserie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('menuiserie', 'fr', 'Menuiserie');
            PERFORM insert_category_translations('menuiserie', 'ar', 'نجارة');
            PERFORM insert_category_translations('menuiserie', 'en', 'Carpentry');
            PERFORM insert_category_translations('menuiserie', 'de', 'Schreinerei');
            PERFORM insert_category_translations('menuiserie', 'es', 'Carpintería');
            PERFORM insert_category_translations('menuiserie', 'it', 'Falegnameria');

            -- Level 2: charpente
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('charpente', 'charpente', 2, l1_id, 'Charpente')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('charpente', 'fr', 'Charpente');
            PERFORM insert_category_translations('charpente', 'ar', 'هياكل خشبية');
            PERFORM insert_category_translations('charpente', 'en', 'Timber framing');
            PERFORM insert_category_translations('charpente', 'de', 'Zimmerei');
            PERFORM insert_category_translations('charpente', 'es', 'Estructuras de madera');
            PERFORM insert_category_translations('charpente', 'it', 'Carpenteria in legno');

            -- Level 2: peinture-finition
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('peinture-finition', 'peinture-finition', 2, l1_id, 'Peinture & finition')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('peinture-finition', 'fr', 'Peinture & finition');
            PERFORM insert_category_translations('peinture-finition', 'ar', 'دهان & تشطيب');
            PERFORM insert_category_translations('peinture-finition', 'en', 'Painting & finishing');
            PERFORM insert_category_translations('peinture-finition', 'de', 'Maler- & Abschlussarbeiten');
            PERFORM insert_category_translations('peinture-finition', 'es', 'Pintura & acabado');
            PERFORM insert_category_translations('peinture-finition', 'it', 'Pittura & finitura');

            -- Level 2: architecture-ingenierie
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('architecture-ingenierie', 'architecture-ingenierie', 2, l1_id, 'Architecture & ingénierie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('architecture-ingenierie', 'fr', 'Architecture & ingénierie');
            PERFORM insert_category_translations('architecture-ingenierie', 'ar', 'هندسة معمارية & هندسة');
            PERFORM insert_category_translations('architecture-ingenierie', 'en', 'Architecture & engineering');
            PERFORM insert_category_translations('architecture-ingenierie', 'de', 'Architektur & Ingenieurwesen');
            PERFORM insert_category_translations('architecture-ingenierie', 'es', 'Arquitectura & ingeniería');
            PERFORM insert_category_translations('architecture-ingenierie', 'it', 'Architettura & ingegneria');

            -- Level 2: topographie
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('topographie', 'topographie', 2, l1_id, 'Topographie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('topographie', 'fr', 'Topographie');
            PERFORM insert_category_translations('topographie', 'ar', 'مسح طبوغرافي');
            PERFORM insert_category_translations('topographie', 'en', 'Surveying');
            PERFORM insert_category_translations('topographie', 'de', 'Vermessung');
            PERFORM insert_category_translations('topographie', 'es', 'Topografía');
            PERFORM insert_category_translations('topographie', 'it', 'Topografia');
END $$;