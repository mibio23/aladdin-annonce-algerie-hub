-- Migration: BTP, Engins & Construction (Fixed - 100% Complete)
-- This file ensures the category "BTP, Engins & Construction" and all its subcategories are correctly inserted.
-- It handles all 6 languages (fr, ar, de, en, es, it) and correct hierarchy (Root > Level 1 > Level 2).
-- It is idempotent and transactional.

DO $$
DECLARE
    root_id UUID;
    l1_id UUID;
    l2_id UUID;
BEGIN
    -- 1. Root Category: BTP, Engins & Construction
    INSERT INTO categories (id, slug, level)
    VALUES ('btp-engins-construction', 'btp-engins-construction', 0)
    ON CONFLICT (id) DO UPDATE SET level = 0
    RETURNING id INTO root_id;

    -- Translations for Root
    PERFORM insert_category_translations('btp-engins-construction', 'fr', 'BTP, Engins & Construction');
    PERFORM insert_category_translations('btp-engins-construction', 'ar', 'البناء، الآليات والإنشاءات');
    PERFORM insert_category_translations('btp-engins-construction', 'de', 'Bau, Baumaschinen & Konstruktion');
    PERFORM insert_category_translations('btp-engins-construction', 'en', 'Construction, Heavy Equipment & Machinery');
    PERFORM insert_category_translations('btp-engins-construction', 'es', 'Construcción, Maquinaria & Equipos Pesados');
    PERFORM insert_category_translations('btp-engins-construction', 'it', 'Edilizia, Macchinari & Attrezzature');


    -- Level 1: Engins de chantier
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('engins-de-chantier', 'engins-de-chantier', 'btp-engins-construction', 1)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'btp-engins-construction', level = 1
    RETURNING id INTO l1_id;

    -- Translations for Level 1
    PERFORM insert_category_translations('engins-de-chantier', 'fr', 'Engins de chantier');
    PERFORM insert_category_translations('engins-de-chantier', 'ar', 'معدات وآليات البناء');
    PERFORM insert_category_translations('engins-de-chantier', 'de', 'Baumaschinen');
    PERFORM insert_category_translations('engins-de-chantier', 'en', 'Construction machinery');
    PERFORM insert_category_translations('engins-de-chantier', 'es', 'Maquinaria de construcción');
    PERFORM insert_category_translations('engins-de-chantier', 'it', 'Macchine da cantiere');

    -- Level 2: Pelles hydrauliques
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('pelles-hydrauliques', 'pelles-hydrauliques', 'engins-de-chantier', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'engins-de-chantier', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('pelles-hydrauliques', 'fr', 'Pelles hydrauliques');
    PERFORM insert_category_translations('pelles-hydrauliques', 'ar', 'حفارات هيدروليكية');
    PERFORM insert_category_translations('pelles-hydrauliques', 'de', 'Hydraulikbagger');
    PERFORM insert_category_translations('pelles-hydrauliques', 'en', 'Hydraulic excavators');
    PERFORM insert_category_translations('pelles-hydrauliques', 'es', 'Excavadoras hidráulicas');
    PERFORM insert_category_translations('pelles-hydrauliques', 'it', 'Escavatori idraulici');

    -- Level 2: Mini-pelles
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('mini-pelles', 'mini-pelles', 'engins-de-chantier', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'engins-de-chantier', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('mini-pelles', 'fr', 'Mini-pelles');
    PERFORM insert_category_translations('mini-pelles', 'ar', 'حفارات صغيرة');
    PERFORM insert_category_translations('mini-pelles', 'de', 'Minibagger');
    PERFORM insert_category_translations('mini-pelles', 'en', 'Mini excavators');
    PERFORM insert_category_translations('mini-pelles', 'es', 'Miniexcavadoras');
    PERFORM insert_category_translations('mini-pelles', 'it', 'Mini escavatori');

    -- Level 2: Chargeuses
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('chargeuses', 'chargeuses', 'engins-de-chantier', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'engins-de-chantier', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('chargeuses', 'fr', 'Chargeuses');
    PERFORM insert_category_translations('chargeuses', 'ar', 'جرافات');
    PERFORM insert_category_translations('chargeuses', 'de', 'Radlader');
    PERFORM insert_category_translations('chargeuses', 'en', 'Loaders');
    PERFORM insert_category_translations('chargeuses', 'es', 'Cargadoras');
    PERFORM insert_category_translations('chargeuses', 'it', 'Pale caricatrici');

    -- Level 2: Bulldozers
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('bulldozers', 'bulldozers', 'engins-de-chantier', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'engins-de-chantier', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('bulldozers', 'fr', 'Bulldozers');
    PERFORM insert_category_translations('bulldozers', 'ar', 'بلدوزرات');
    PERFORM insert_category_translations('bulldozers', 'de', 'Planierraupen');
    PERFORM insert_category_translations('bulldozers', 'en', 'Bulldozers');
    PERFORM insert_category_translations('bulldozers', 'es', 'Bulldozers');
    PERFORM insert_category_translations('bulldozers', 'it', 'Bulldozer');

    -- Level 2: Niveleuses
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('niveleuses', 'niveleuses', 'engins-de-chantier', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'engins-de-chantier', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('niveleuses', 'fr', 'Niveleuses');
    PERFORM insert_category_translations('niveleuses', 'ar', 'ممهدات طرق');
    PERFORM insert_category_translations('niveleuses', 'de', 'Grader');
    PERFORM insert_category_translations('niveleuses', 'en', 'Motor graders');
    PERFORM insert_category_translations('niveleuses', 'es', 'Motoniveladoras');
    PERFORM insert_category_translations('niveleuses', 'it', 'Livellatrici');

    -- Level 2: Tractopelles
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('tractopelles', 'tractopelles', 'engins-de-chantier', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'engins-de-chantier', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('tractopelles', 'fr', 'Tractopelles');
    PERFORM insert_category_translations('tractopelles', 'ar', 'لودر حفار');
    PERFORM insert_category_translations('tractopelles', 'de', 'Baggerlader');
    PERFORM insert_category_translations('tractopelles', 'en', 'Backhoe loaders');
    PERFORM insert_category_translations('tractopelles', 'es', 'Retroexcavadoras');
    PERFORM insert_category_translations('tractopelles', 'it', 'Terne');

    -- Level 2: Compacteurs
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('compacteurs', 'compacteurs', 'engins-de-chantier', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'engins-de-chantier', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('compacteurs', 'fr', 'Compacteurs');
    PERFORM insert_category_translations('compacteurs', 'ar', 'مدحلات');
    PERFORM insert_category_translations('compacteurs', 'de', 'Verdichter');
    PERFORM insert_category_translations('compacteurs', 'en', 'Compactors');
    PERFORM insert_category_translations('compacteurs', 'es', 'Compactadoras');
    PERFORM insert_category_translations('compacteurs', 'it', 'Compattatori');

    -- Level 2: Rouleaux compresseurs
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('rouleaux-compresseurs', 'rouleaux-compresseurs', 'engins-de-chantier', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'engins-de-chantier', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('rouleaux-compresseurs', 'fr', 'Rouleaux compresseurs');
    PERFORM insert_category_translations('rouleaux-compresseurs', 'ar', 'مداحل أسطوانية');
    PERFORM insert_category_translations('rouleaux-compresseurs', 'de', 'Walzen');
    PERFORM insert_category_translations('rouleaux-compresseurs', 'en', 'Road rollers');
    PERFORM insert_category_translations('rouleaux-compresseurs', 'es', 'Rodillos compactadores');
    PERFORM insert_category_translations('rouleaux-compresseurs', 'it', 'Rulli compattatori');

    -- Level 2: Dumpers
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('dumpers', 'dumpers', 'engins-de-chantier', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'engins-de-chantier', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('dumpers', 'fr', 'Dumpers');
    PERFORM insert_category_translations('dumpers', 'ar', 'دامبرات');
    PERFORM insert_category_translations('dumpers', 'de', 'Muldenkipper');
    PERFORM insert_category_translations('dumpers', 'en', 'Dumpers');
    PERFORM insert_category_translations('dumpers', 'es', 'Dumpers');
    PERFORM insert_category_translations('dumpers', 'it', 'Dumper');

    -- Level 2: Camions-bennes
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('camions-bennes', 'camions-bennes', 'engins-de-chantier', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'engins-de-chantier', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('camions-bennes', 'fr', 'Camions-bennes');
    PERFORM insert_category_translations('camions-bennes', 'ar', 'شاحنات قلابة');
    PERFORM insert_category_translations('camions-bennes', 'de', 'Kipper-Lkw');
    PERFORM insert_category_translations('camions-bennes', 'en', 'Dump trucks');
    PERFORM insert_category_translations('camions-bennes', 'es', 'Camiones volquete');
    PERFORM insert_category_translations('camions-bennes', 'it', 'Autocarri ribaltabili');

    -- Level 2: Grues mobiles
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('grues-mobiles', 'grues-mobiles', 'engins-de-chantier', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'engins-de-chantier', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('grues-mobiles', 'fr', 'Grues mobiles');
    PERFORM insert_category_translations('grues-mobiles', 'ar', 'رافعات متنقلة');
    PERFORM insert_category_translations('grues-mobiles', 'de', 'Mobilkrane');
    PERFORM insert_category_translations('grues-mobiles', 'en', 'Mobile cranes');
    PERFORM insert_category_translations('grues-mobiles', 'es', 'Grúas móviles');
    PERFORM insert_category_translations('grues-mobiles', 'it', 'Autogru');

    -- Level 2: Grues à tour
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('grues-a-tour', 'grues-a-tour', 'engins-de-chantier', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'engins-de-chantier', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('grues-a-tour', 'fr', 'Grues à tour');
    PERFORM insert_category_translations('grues-a-tour', 'ar', 'رافعات برجية');
    PERFORM insert_category_translations('grues-a-tour', 'de', 'Turmkrane');
    PERFORM insert_category_translations('grues-a-tour', 'en', 'Tower cranes');
    PERFORM insert_category_translations('grues-a-tour', 'es', 'Grúas torre');
    PERFORM insert_category_translations('grues-a-tour', 'it', 'Gru a torre');

    -- Level 2: Chariots télescopiques
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('chariots-telescopiques', 'chariots-telescopiques', 'engins-de-chantier', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'engins-de-chantier', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('chariots-telescopiques', 'fr', 'Chariots télescopiques');
    PERFORM insert_category_translations('chariots-telescopiques', 'ar', 'مناولات تلسكوبية');
    PERFORM insert_category_translations('chariots-telescopiques', 'de', 'Teleskopstapler');
    PERFORM insert_category_translations('chariots-telescopiques', 'en', 'Telehandlers');
    PERFORM insert_category_translations('chariots-telescopiques', 'es', 'Manipuladores telescópicos');
    PERFORM insert_category_translations('chariots-telescopiques', 'it', 'Sollevatori telescopici');

    -- Level 2: Nacelles élévatrices
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('nacelles-elevatrices', 'nacelles-elevatrices', 'engins-de-chantier', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'engins-de-chantier', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('nacelles-elevatrices', 'fr', 'Nacelles élévatrices');
    PERFORM insert_category_translations('nacelles-elevatrices', 'ar', 'منصات رفع');
    PERFORM insert_category_translations('nacelles-elevatrices', 'de', 'Arbeitsbühnen');
    PERFORM insert_category_translations('nacelles-elevatrices', 'en', 'Aerial work platforms');
    PERFORM insert_category_translations('nacelles-elevatrices', 'es', 'Plataformas elevadoras');
    PERFORM insert_category_translations('nacelles-elevatrices', 'it', 'Piattaforme aeree');

    -- Level 2: Foreuses
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('foreuses', 'foreuses', 'engins-de-chantier', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'engins-de-chantier', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('foreuses', 'fr', 'Foreuses');
    PERFORM insert_category_translations('foreuses', 'ar', 'معدات حفر');
    PERFORM insert_category_translations('foreuses', 'de', 'Bohrgeräte');
    PERFORM insert_category_translations('foreuses', 'en', 'Drilling rigs');
    PERFORM insert_category_translations('foreuses', 'es', 'Perforadoras');
    PERFORM insert_category_translations('foreuses', 'it', 'Perforatrici');

    -- Level 2: Rétrochargeuses
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('retrochargeuses', 'retrochargeuses', 'engins-de-chantier', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'engins-de-chantier', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('retrochargeuses', 'fr', 'Rétrochargeuses');
    PERFORM insert_category_translations('retrochargeuses', 'ar', 'لودر حفار');
    PERFORM insert_category_translations('retrochargeuses', 'de', 'Baggerlader');
    PERFORM insert_category_translations('retrochargeuses', 'en', 'Backhoe loaders');
    PERFORM insert_category_translations('retrochargeuses', 'es', 'Retroexcavadoras');
    PERFORM insert_category_translations('retrochargeuses', 'it', 'Terne');

    -- Level 1: Véhicules & transport de matériaux
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('vehicules-transport-materiaux', 'vehicules-transport-materiaux', 'btp-engins-construction', 1)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'btp-engins-construction', level = 1
    RETURNING id INTO l1_id;

    -- Translations for Level 1
    PERFORM insert_category_translations('vehicules-transport-materiaux', 'fr', 'Véhicules & transport de matériaux');
    PERFORM insert_category_translations('vehicules-transport-materiaux', 'ar', 'مركبات ونقل المواد');
    PERFORM insert_category_translations('vehicules-transport-materiaux', 'de', 'Fahrzeuge & Materialtransport');
    PERFORM insert_category_translations('vehicules-transport-materiaux', 'en', 'Vehicles & material transport');
    PERFORM insert_category_translations('vehicules-transport-materiaux', 'es', 'Vehículos & transporte de materiales');
    PERFORM insert_category_translations('vehicules-transport-materiaux', 'it', 'Veicoli & trasporto materiali');

    -- Level 2: Camions de chantier
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('camions-de-chantier', 'camions-de-chantier', 'vehicules-transport-materiaux', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'vehicules-transport-materiaux', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('camions-de-chantier', 'fr', 'Camions de chantier');
    PERFORM insert_category_translations('camions-de-chantier', 'ar', 'شاحنات موقع البناء');
    PERFORM insert_category_translations('camions-de-chantier', 'de', 'Baustellen-Lkw');
    PERFORM insert_category_translations('camions-de-chantier', 'en', 'Construction trucks');
    PERFORM insert_category_translations('camions-de-chantier', 'es', 'Camiones de obra');
    PERFORM insert_category_translations('camions-de-chantier', 'it', 'Camion da cantiere');

    -- Level 2: Camions malaxeurs (toupies béton)
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('camions-malaxeurs-toupies-beton', 'camions-malaxeurs-toupies-beton', 'vehicules-transport-materiaux', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'vehicules-transport-materiaux', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('camions-malaxeurs-toupies-beton', 'fr', 'Camions malaxeurs (toupies béton)');
    PERFORM insert_category_translations('camions-malaxeurs-toupies-beton', 'ar', 'شاحنات خلاط خرسانة');
    PERFORM insert_category_translations('camions-malaxeurs-toupies-beton', 'de', 'Betonmischer-Lkw');
    PERFORM insert_category_translations('camions-malaxeurs-toupies-beton', 'en', 'Concrete mixer trucks');
    PERFORM insert_category_translations('camions-malaxeurs-toupies-beton', 'es', 'Camiones hormigonera');
    PERFORM insert_category_translations('camions-malaxeurs-toupies-beton', 'it', 'Autobetoniere');

    -- Level 2: Camions porte-engins
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('camions-porte-engins', 'camions-porte-engins', 'vehicules-transport-materiaux', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'vehicules-transport-materiaux', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('camions-porte-engins', 'fr', 'Camions porte-engins');
    PERFORM insert_category_translations('camions-porte-engins', 'ar', 'شاحنات ناقلة معدات');
    PERFORM insert_category_translations('camions-porte-engins', 'de', 'Tieflader-Lkw');
    PERFORM insert_category_translations('camions-porte-engins', 'en', 'Lowboy/haul trucks');
    PERFORM insert_category_translations('camions-porte-engins', 'es', 'Camiones porta‑equipos');
    PERFORM insert_category_translations('camions-porte-engins', 'it', 'Camion porta‑macchine');

    -- Level 2: Remorques de chantier
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('remorques-de-chantier', 'remorques-de-chantier', 'vehicules-transport-materiaux', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'vehicules-transport-materiaux', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('remorques-de-chantier', 'fr', 'Remorques de chantier');
    PERFORM insert_category_translations('remorques-de-chantier', 'ar', 'مقطورات الموقع');
    PERFORM insert_category_translations('remorques-de-chantier', 'de', 'Baustellenanhänger');
    PERFORM insert_category_translations('remorques-de-chantier', 'en', 'Construction trailers');
    PERFORM insert_category_translations('remorques-de-chantier', 'es', 'Remolques de obra');
    PERFORM insert_category_translations('remorques-de-chantier', 'it', 'Rimorchi da cantiere');

    -- Level 2: Véhicules utilitaires
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('vehicules-utilitaires', 'vehicules-utilitaires', 'vehicules-transport-materiaux', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'vehicules-transport-materiaux', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('vehicules-utilitaires', 'fr', 'Véhicules utilitaires');
    PERFORM insert_category_translations('vehicules-utilitaires', 'ar', 'مركبات تجارية');
    PERFORM insert_category_translations('vehicules-utilitaires', 'de', 'Nutzfahrzeuge');
    PERFORM insert_category_translations('vehicules-utilitaires', 'en', 'Utility vehicles');
    PERFORM insert_category_translations('vehicules-utilitaires', 'es', 'Vehículos comerciales');
    PERFORM insert_category_translations('vehicules-utilitaires', 'it', 'Veicoli commerciali');

    -- Level 2: Pick-ups
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('pick-ups', 'pick-ups', 'vehicules-transport-materiaux', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'vehicules-transport-materiaux', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('pick-ups', 'fr', 'Pick-ups');
    PERFORM insert_category_translations('pick-ups', 'ar', 'بيك أب');
    PERFORM insert_category_translations('pick-ups', 'de', 'Pick-ups');
    PERFORM insert_category_translations('pick-ups', 'en', 'Pick‑ups');
    PERFORM insert_category_translations('pick-ups', 'es', 'Pick‑ups');
    PERFORM insert_category_translations('pick-ups', 'it', 'Pick‑up');

    -- Level 2: Fourgons
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('fourgons', 'fourgons', 'vehicules-transport-materiaux', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'vehicules-transport-materiaux', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('fourgons', 'fr', 'Fourgons');
    PERFORM insert_category_translations('fourgons', 'ar', 'فانات');
    PERFORM insert_category_translations('fourgons', 'de', 'Transporter');
    PERFORM insert_category_translations('fourgons', 'en', 'Vans');
    PERFORM insert_category_translations('fourgons', 'es', 'Furgonetas');
    PERFORM insert_category_translations('fourgons', 'it', 'Furgoni');

    -- Level 1: Matériel de construction
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('materiel-de-construction', 'materiel-de-construction', 'btp-engins-construction', 1)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'btp-engins-construction', level = 1
    RETURNING id INTO l1_id;

    -- Translations for Level 1
    PERFORM insert_category_translations('materiel-de-construction', 'fr', 'Matériel de construction');
    PERFORM insert_category_translations('materiel-de-construction', 'ar', 'معدات البناء');
    PERFORM insert_category_translations('materiel-de-construction', 'de', 'Bauausrüstung');
    PERFORM insert_category_translations('materiel-de-construction', 'en', 'Construction equipment');
    PERFORM insert_category_translations('materiel-de-construction', 'es', 'Equipos de construcción');
    PERFORM insert_category_translations('materiel-de-construction', 'it', 'Attrezzature da costruzione');

    -- Level 2: Bétonnières
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('betonnieres', 'betonnieres', 'materiel-de-construction', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'materiel-de-construction', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('betonnieres', 'fr', 'Bétonnières');
    PERFORM insert_category_translations('betonnieres', 'ar', 'خلاطات خرسانة');
    PERFORM insert_category_translations('betonnieres', 'de', 'Betonmischer');
    PERFORM insert_category_translations('betonnieres', 'en', 'Concrete mixers');
    PERFORM insert_category_translations('betonnieres', 'es', 'Mezcladoras de concreto');
    PERFORM insert_category_translations('betonnieres', 'it', 'Betoniere');

    -- Level 2: Vibrateurs béton
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('vibrateurs-beton', 'vibrateurs-beton', 'materiel-de-construction', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'materiel-de-construction', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('vibrateurs-beton', 'fr', 'Vibrateurs béton');
    PERFORM insert_category_translations('vibrateurs-beton', 'ar', 'هزازات الخرسانة');
    PERFORM insert_category_translations('vibrateurs-beton', 'de', 'Betonvibratoren');
    PERFORM insert_category_translations('vibrateurs-beton', 'en', 'Concrete vibrators');
    PERFORM insert_category_translations('vibrateurs-beton', 'es', 'Vibradores de hormigón');
    PERFORM insert_category_translations('vibrateurs-beton', 'it', 'Vibratori per calcestruzzo');

    -- Level 2: Pompes à béton
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('pompes-a-beton', 'pompes-a-beton', 'materiel-de-construction', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'materiel-de-construction', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('pompes-a-beton', 'fr', 'Pompes à béton');
    PERFORM insert_category_translations('pompes-a-beton', 'ar', 'مضخات الخرسانة');
    PERFORM insert_category_translations('pompes-a-beton', 'de', 'Betonpumpen');
    PERFORM insert_category_translations('pompes-a-beton', 'en', 'Concrete pumps');
    PERFORM insert_category_translations('pompes-a-beton', 'es', 'Bombas de hormigón');
    PERFORM insert_category_translations('pompes-a-beton', 'it', 'Pompe per calcestruzzo');

    -- Level 2: Coffrages
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('coffrages', 'coffrages', 'materiel-de-construction', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'materiel-de-construction', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('coffrages', 'fr', 'Coffrages');
    PERFORM insert_category_translations('coffrages', 'ar', 'قوالب صب');
    PERFORM insert_category_translations('coffrages', 'de', 'Schalungen');
    PERFORM insert_category_translations('coffrages', 'en', 'Formwork');
    PERFORM insert_category_translations('coffrages', 'es', 'Encofrados');
    PERFORM insert_category_translations('coffrages', 'it', 'Casseri');

    -- Level 2: Étais
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('etais', 'etais', 'materiel-de-construction', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'materiel-de-construction', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('etais', 'fr', 'Étais');
    PERFORM insert_category_translations('etais', 'ar', 'دعامات');
    PERFORM insert_category_translations('etais', 'de', 'Stützen');
    PERFORM insert_category_translations('etais', 'en', 'Props & shoring');
    PERFORM insert_category_translations('etais', 'es', 'Puntales');
    PERFORM insert_category_translations('etais', 'it', 'Puntelli');

    -- Level 2: Échafaudages
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('echafaudages', 'echafaudages', 'materiel-de-construction', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'materiel-de-construction', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('echafaudages', 'fr', 'Échafaudages');
    PERFORM insert_category_translations('echafaudages', 'ar', 'سقالات');
    PERFORM insert_category_translations('echafaudages', 'de', 'Gerüste');
    PERFORM insert_category_translations('echafaudages', 'en', 'Scaffolding');
    PERFORM insert_category_translations('echafaudages', 'es', 'Andamios');
    PERFORM insert_category_translations('echafaudages', 'it', 'Ponteggi');

    -- Level 2: Échelles
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('echelles', 'echelles', 'materiel-de-construction', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'materiel-de-construction', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('echelles', 'fr', 'Échelles');
    PERFORM insert_category_translations('echelles', 'ar', 'سلالم');
    PERFORM insert_category_translations('echelles', 'de', 'Leitern');
    PERFORM insert_category_translations('echelles', 'en', 'Ladders');
    PERFORM insert_category_translations('echelles', 'es', 'Escaleras');
    PERFORM insert_category_translations('echelles', 'it', 'Scale');

    -- Level 2: Outils pneumatiques
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('outils-pneumatiques', 'outils-pneumatiques', 'materiel-de-construction', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'materiel-de-construction', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('outils-pneumatiques', 'fr', 'Outils pneumatiques');
    PERFORM insert_category_translations('outils-pneumatiques', 'ar', 'أدوات هوائية');
    PERFORM insert_category_translations('outils-pneumatiques', 'de', 'Druckluftwerkzeuge');
    PERFORM insert_category_translations('outils-pneumatiques', 'en', 'Pneumatic tools');
    PERFORM insert_category_translations('outils-pneumatiques', 'es', 'Herramientas neumáticas');
    PERFORM insert_category_translations('outils-pneumatiques', 'it', 'Utensili pneumatici');

    -- Level 2: Marteaux-piqueurs
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('marteaux-piqueurs', 'marteaux-piqueurs', 'materiel-de-construction', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'materiel-de-construction', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('marteaux-piqueurs', 'fr', 'Marteaux-piqueurs');
    PERFORM insert_category_translations('marteaux-piqueurs', 'ar', 'مطارق هدم');
    PERFORM insert_category_translations('marteaux-piqueurs', 'de', 'Presslufthämmer');
    PERFORM insert_category_translations('marteaux-piqueurs', 'en', 'Jackhammers');
    PERFORM insert_category_translations('marteaux-piqueurs', 'es', 'Martillos neumáticos');
    PERFORM insert_category_translations('marteaux-piqueurs', 'it', 'Martelli demolitori');

    -- Level 2: Scies de chantier
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('scies-de-chantier', 'scies-de-chantier', 'materiel-de-construction', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'materiel-de-construction', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('scies-de-chantier', 'fr', 'Scies de chantier');
    PERFORM insert_category_translations('scies-de-chantier', 'ar', 'مناشير موقع البناء');
    PERFORM insert_category_translations('scies-de-chantier', 'de', 'Baustellensägen');
    PERFORM insert_category_translations('scies-de-chantier', 'en', 'Jobsite saws');
    PERFORM insert_category_translations('scies-de-chantier', 'es', 'Sierras de obra');
    PERFORM insert_category_translations('scies-de-chantier', 'it', 'Seghe da cantiere');

    -- Level 2: Groupes électrogènes
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('groupes-electrogenes', 'groupes-electrogenes', 'materiel-de-construction', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'materiel-de-construction', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('groupes-electrogenes', 'fr', 'Groupes électrogènes');
    PERFORM insert_category_translations('groupes-electrogenes', 'ar', 'مولدات كهرباء');
    PERFORM insert_category_translations('groupes-electrogenes', 'de', 'Generatoren');
    PERFORM insert_category_translations('groupes-electrogenes', 'en', 'Generators');
    PERFORM insert_category_translations('groupes-electrogenes', 'es', 'Generadores');
    PERFORM insert_category_translations('groupes-electrogenes', 'it', 'Generatori');

    -- Level 2: Compresseurs
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('compresseurs', 'compresseurs', 'materiel-de-construction', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'materiel-de-construction', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('compresseurs', 'fr', 'Compresseurs');
    PERFORM insert_category_translations('compresseurs', 'ar', 'ضواغط');
    PERFORM insert_category_translations('compresseurs', 'de', 'Kompressoren');
    PERFORM insert_category_translations('compresseurs', 'en', 'Compressors');
    PERFORM insert_category_translations('compresseurs', 'es', 'Compresores');
    PERFORM insert_category_translations('compresseurs', 'it', 'Compressori');

    -- Level 2: Lasers & niveaux
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('lasers-niveaux', 'lasers-niveaux', 'materiel-de-construction', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'materiel-de-construction', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('lasers-niveaux', 'fr', 'Lasers & niveaux');
    PERFORM insert_category_translations('lasers-niveaux', 'ar', 'أجهزة ليزر ومستويات');
    PERFORM insert_category_translations('lasers-niveaux', 'de', 'Laser & Nivelliergeräte');
    PERFORM insert_category_translations('lasers-niveaux', 'en', 'Lasers & levels');
    PERFORM insert_category_translations('lasers-niveaux', 'es', 'Láseres & niveles');
    PERFORM insert_category_translations('lasers-niveaux', 'it', 'Laser & livelle');

    -- Level 1: Matériaux de construction
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('materiaux-de-construction', 'materiaux-de-construction', 'btp-engins-construction', 1)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'btp-engins-construction', level = 1
    RETURNING id INTO l1_id;

    -- Translations for Level 1
    PERFORM insert_category_translations('materiaux-de-construction', 'fr', 'Matériaux de construction');
    PERFORM insert_category_translations('materiaux-de-construction', 'ar', 'مواد البناء');
    PERFORM insert_category_translations('materiaux-de-construction', 'de', 'Baustoffe');
    PERFORM insert_category_translations('materiaux-de-construction', 'en', 'Construction materials');
    PERFORM insert_category_translations('materiaux-de-construction', 'es', 'Materiales de construcción');
    PERFORM insert_category_translations('materiaux-de-construction', 'it', 'Materiali da costruzione');

    -- Level 2: Ciment
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('ciment', 'ciment', 'materiaux-de-construction', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'materiaux-de-construction', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('ciment', 'fr', 'Ciment');
    PERFORM insert_category_translations('ciment', 'ar', 'أسمنت');
    PERFORM insert_category_translations('ciment', 'de', 'Zement');
    PERFORM insert_category_translations('ciment', 'en', 'Cement');
    PERFORM insert_category_translations('ciment', 'es', 'Cemento');
    PERFORM insert_category_translations('ciment', 'it', 'Cemento');

    -- Level 2: Béton prêt à l’emploi
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('beton-pret-a-lemploi', 'beton-pret-a-lemploi', 'materiaux-de-construction', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'materiaux-de-construction', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('beton-pret-a-lemploi', 'fr', 'Béton prêt à l’emploi');
    PERFORM insert_category_translations('beton-pret-a-lemploi', 'ar', 'خرسانة جاهزة');
    PERFORM insert_category_translations('beton-pret-a-lemploi', 'de', 'Fertigbeton');
    PERFORM insert_category_translations('beton-pret-a-lemploi', 'en', 'Ready‑mix concrete');
    PERFORM insert_category_translations('beton-pret-a-lemploi', 'es', 'Hormigón premezclado');
    PERFORM insert_category_translations('beton-pret-a-lemploi', 'it', 'Calcestruzzo preconfezionato');

    -- Level 2: Sable & gravier
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('sable-gravier', 'sable-gravier', 'materiaux-de-construction', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'materiaux-de-construction', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('sable-gravier', 'fr', 'Sable & gravier');
    PERFORM insert_category_translations('sable-gravier', 'ar', 'رمل وحصى');
    PERFORM insert_category_translations('sable-gravier', 'de', 'Sand & Kies');
    PERFORM insert_category_translations('sable-gravier', 'en', 'Sand & gravel');
    PERFORM insert_category_translations('sable-gravier', 'es', 'Arena & grava');
    PERFORM insert_category_translations('sable-gravier', 'it', 'Sabbia & ghiaia');

    -- Level 2: Briques & blocs
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('briques-blocs', 'briques-blocs', 'materiaux-de-construction', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'materiaux-de-construction', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('briques-blocs', 'fr', 'Briques & blocs');
    PERFORM insert_category_translations('briques-blocs', 'ar', 'طوب وبلوكات');
    PERFORM insert_category_translations('briques-blocs', 'de', 'Ziegel & Blöcke');
    PERFORM insert_category_translations('briques-blocs', 'en', 'Bricks & blocks');
    PERFORM insert_category_translations('briques-blocs', 'es', 'Ladrillos & bloques');
    PERFORM insert_category_translations('briques-blocs', 'it', 'Mattoni & blocchi');

    -- Level 2: Parpaings
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('parpaings', 'parpaings', 'materiaux-de-construction', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'materiaux-de-construction', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('parpaings', 'fr', 'Parpaings');
    PERFORM insert_category_translations('parpaings', 'ar', 'بلوك خرسانة');
    PERFORM insert_category_translations('parpaings', 'de', 'Betonsteine');
    PERFORM insert_category_translations('parpaings', 'en', 'Concrete blocks');
    PERFORM insert_category_translations('parpaings', 'es', 'Bloques de concreto');
    PERFORM insert_category_translations('parpaings', 'it', 'Blocchi di calcestruzzo');

    -- Level 2: Pierres naturelles
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('pierres-naturelles', 'pierres-naturelles', 'materiaux-de-construction', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'materiaux-de-construction', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('pierres-naturelles', 'fr', 'Pierres naturelles');
    PERFORM insert_category_translations('pierres-naturelles', 'ar', 'حجر طبيعي');
    PERFORM insert_category_translations('pierres-naturelles', 'de', 'Naturstein');
    PERFORM insert_category_translations('pierres-naturelles', 'en', 'Natural stone');
    PERFORM insert_category_translations('pierres-naturelles', 'es', 'Piedra natural');
    PERFORM insert_category_translations('pierres-naturelles', 'it', 'Pietra naturale');

    -- Level 2: Bois de construction
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('bois-de-construction', 'bois-de-construction', 'materiaux-de-construction', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'materiaux-de-construction', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('bois-de-construction', 'fr', 'Bois de construction');
    PERFORM insert_category_translations('bois-de-construction', 'ar', 'خشب بناء');
    PERFORM insert_category_translations('bois-de-construction', 'de', 'Bauholz');
    PERFORM insert_category_translations('bois-de-construction', 'en', 'Construction lumber');
    PERFORM insert_category_translations('bois-de-construction', 'es', 'Madera de construcción');
    PERFORM insert_category_translations('bois-de-construction', 'it', 'Legname da costruzione');

    -- Level 2: Tuiles & toitures
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('tuiles-toitures', 'tuiles-toitures', 'materiaux-de-construction', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'materiaux-de-construction', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('tuiles-toitures', 'fr', 'Tuiles & toitures');
    PERFORM insert_category_translations('tuiles-toitures', 'ar', 'قرميد وأسقف');
    PERFORM insert_category_translations('tuiles-toitures', 'de', 'Dachziegel & Dach');
    PERFORM insert_category_translations('tuiles-toitures', 'en', 'Tiles & roofing');
    PERFORM insert_category_translations('tuiles-toitures', 'es', 'Tejas & cubiertas');
    PERFORM insert_category_translations('tuiles-toitures', 'it', 'Tegole & coperture');

    -- Level 2: Plaques de plâtre
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('plaques-de-platre', 'plaques-de-platre', 'materiaux-de-construction', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'materiaux-de-construction', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('plaques-de-platre', 'fr', 'Plaques de plâtre');
    PERFORM insert_category_translations('plaques-de-platre', 'ar', 'ألواح جبس');
    PERFORM insert_category_translations('plaques-de-platre', 'de', 'Gipskartonplatten');
    PERFORM insert_category_translations('plaques-de-platre', 'en', 'Drywall & plasterboard');
    PERFORM insert_category_translations('plaques-de-platre', 'es', 'Placas de yeso');
    PERFORM insert_category_translations('plaques-de-platre', 'it', 'Cartongesso');

    -- Level 2: Isolants
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('isolants', 'isolants', 'materiaux-de-construction', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'materiaux-de-construction', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('isolants', 'fr', 'Isolants');
    PERFORM insert_category_translations('isolants', 'ar', 'مواد عازلة');
    PERFORM insert_category_translations('isolants', 'de', 'Dämmstoffe');
    PERFORM insert_category_translations('isolants', 'en', 'Insulation');
    PERFORM insert_category_translations('isolants', 'es', 'Aislantes');
    PERFORM insert_category_translations('isolants', 'it', 'Isolanti');

    -- Level 2: Peintures & enduits
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('peintures-enduits', 'peintures-enduits', 'materiaux-de-construction', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'materiaux-de-construction', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('peintures-enduits', 'fr', 'Peintures & enduits');
    PERFORM insert_category_translations('peintures-enduits', 'ar', 'دهانات وطلاءات');
    PERFORM insert_category_translations('peintures-enduits', 'de', 'Farben & Putze');
    PERFORM insert_category_translations('peintures-enduits', 'en', 'Paints & renders');
    PERFORM insert_category_translations('peintures-enduits', 'es', 'Pinturas & revestimientos');
    PERFORM insert_category_translations('peintures-enduits', 'it', 'Vernici & intonaci');

    -- Level 2: Revêtements sols & murs
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('revetements-sols-murs', 'revetements-sols-murs', 'materiaux-de-construction', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'materiaux-de-construction', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('revetements-sols-murs', 'fr', 'Revêtements sols & murs');
    PERFORM insert_category_translations('revetements-sols-murs', 'ar', 'أرضيات وكسوات جدران');
    PERFORM insert_category_translations('revetements-sols-murs', 'de', 'Boden- & Wandbeläge');
    PERFORM insert_category_translations('revetements-sols-murs', 'en', 'Floor & wall coverings');
    PERFORM insert_category_translations('revetements-sols-murs', 'es', 'Revestimientos de suelos & paredes');
    PERFORM insert_category_translations('revetements-sols-murs', 'it', 'Rivestimenti per pavimenti & pareti');

    -- Level 1: Quincaillerie & fixations
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('quincaillerie-fixations', 'quincaillerie-fixations', 'btp-engins-construction', 1)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'btp-engins-construction', level = 1
    RETURNING id INTO l1_id;

    -- Translations for Level 1
    PERFORM insert_category_translations('quincaillerie-fixations', 'fr', 'Quincaillerie & fixations');
    PERFORM insert_category_translations('quincaillerie-fixations', 'ar', 'العدد والمثبتات');
    PERFORM insert_category_translations('quincaillerie-fixations', 'de', 'Beschläge & Befestigungen');
    PERFORM insert_category_translations('quincaillerie-fixations', 'en', 'Hardware & fasteners');
    PERFORM insert_category_translations('quincaillerie-fixations', 'es', 'Ferretería & fijaciones');
    PERFORM insert_category_translations('quincaillerie-fixations', 'it', 'Ferramenta & fissaggi');

    -- Level 2: Vis & boulons
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('vis-boulons', 'vis-boulons', 'quincaillerie-fixations', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'quincaillerie-fixations', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('vis-boulons', 'fr', 'Vis & boulons');
    PERFORM insert_category_translations('vis-boulons', 'ar', 'مسامير وصواميل');
    PERFORM insert_category_translations('vis-boulons', 'de', 'Schrauben & Bolzen');
    PERFORM insert_category_translations('vis-boulons', 'en', 'Screws & bolts');
    PERFORM insert_category_translations('vis-boulons', 'es', 'Tornillos & pernos');
    PERFORM insert_category_translations('vis-boulons', 'it', 'Viti & bulloni');

    -- Level 2: Chevilles
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('chevilles', 'chevilles', 'quincaillerie-fixations', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'quincaillerie-fixations', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('chevilles', 'fr', 'Chevilles');
    PERFORM insert_category_translations('chevilles', 'ar', 'مراسي تثبيت');
    PERFORM insert_category_translations('chevilles', 'de', 'Dübel');
    PERFORM insert_category_translations('chevilles', 'en', 'Anchors');
    PERFORM insert_category_translations('chevilles', 'es', 'Tacos');
    PERFORM insert_category_translations('chevilles', 'it', 'Tasselli');

    -- Level 2: Clous
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('clous', 'clous', 'quincaillerie-fixations', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'quincaillerie-fixations', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('clous', 'fr', 'Clous');
    PERFORM insert_category_translations('clous', 'ar', 'مسامير');
    PERFORM insert_category_translations('clous', 'de', 'Nägel');
    PERFORM insert_category_translations('clous', 'en', 'Nails');
    PERFORM insert_category_translations('clous', 'es', 'Clavos');
    PERFORM insert_category_translations('clous', 'it', 'Chiodi');

    -- Level 2: Équerres
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('equerres', 'equerres', 'quincaillerie-fixations', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'quincaillerie-fixations', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('equerres', 'fr', 'Équerres');
    PERFORM insert_category_translations('equerres', 'ar', 'زوايا تثبيت');
    PERFORM insert_category_translations('equerres', 'de', 'Winkelverbinder');
    PERFORM insert_category_translations('equerres', 'en', 'Brackets');
    PERFORM insert_category_translations('equerres', 'es', 'Escuadras');
    PERFORM insert_category_translations('equerres', 'it', 'Staff e squadre');

    -- Level 2: Charnières
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('charniere', 'charniere', 'quincaillerie-fixations', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'quincaillerie-fixations', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('charniere', 'fr', 'Charnières');
    PERFORM insert_category_translations('charniere', 'ar', 'مفصلات');
    PERFORM insert_category_translations('charniere', 'de', 'Scharniere');
    PERFORM insert_category_translations('charniere', 'en', 'Hinges');
    PERFORM insert_category_translations('charniere', 'es', 'Bisagras');
    PERFORM insert_category_translations('charniere', 'it', 'Cerniere');

    -- Level 2: Serrures
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('serrures', 'serrures', 'quincaillerie-fixations', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'quincaillerie-fixations', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('serrures', 'fr', 'Serrures');
    PERFORM insert_category_translations('serrures', 'ar', 'أقفال');
    PERFORM insert_category_translations('serrures', 'de', 'Schlösser');
    PERFORM insert_category_translations('serrures', 'en', 'Locks');
    PERFORM insert_category_translations('serrures', 'es', 'Cerraduras');
    PERFORM insert_category_translations('serrures', 'it', 'Serrature');

    -- Level 2: Cadenas
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('cadenas', 'cadenas', 'quincaillerie-fixations', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'quincaillerie-fixations', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('cadenas', 'fr', 'Cadenas');
    PERFORM insert_category_translations('cadenas', 'ar', 'أقفال معلّقة');
    PERFORM insert_category_translations('cadenas', 'de', 'Vorhängeschlösser');
    PERFORM insert_category_translations('cadenas', 'en', 'Padlocks');
    PERFORM insert_category_translations('cadenas', 'es', 'Candados');
    PERFORM insert_category_translations('cadenas', 'it', 'Lucchetti');

    -- Level 2: Colles & mastics
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('colles-mastics', 'colles-mastics', 'quincaillerie-fixations', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'quincaillerie-fixations', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('colles-mastics', 'fr', 'Colles & mastics');
    PERFORM insert_category_translations('colles-mastics', 'ar', 'مواد لاصقة ومانعات تسرب');
    PERFORM insert_category_translations('colles-mastics', 'de', 'Klebstoffe & Dichtmassen');
    PERFORM insert_category_translations('colles-mastics', 'en', 'Adhesives & sealants');
    PERFORM insert_category_translations('colles-mastics', 'es', 'Adhesivos & selladores');
    PERFORM insert_category_translations('colles-mastics', 'it', 'Adesivi & sigillanti');

    -- Level 2: Rubans adhésifs
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('rubans-adhesifs', 'rubans-adhesifs', 'quincaillerie-fixations', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'quincaillerie-fixations', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('rubans-adhesifs', 'fr', 'Rubans adhésifs');
    PERFORM insert_category_translations('rubans-adhesifs', 'ar', 'أشرطة لاصقة');
    PERFORM insert_category_translations('rubans-adhesifs', 'de', 'Klebebänder');
    PERFORM insert_category_translations('rubans-adhesifs', 'en', 'Tapes');
    PERFORM insert_category_translations('rubans-adhesifs', 'es', 'Cintas adhesivas');
    PERFORM insert_category_translations('rubans-adhesifs', 'it', 'Nastri adesivi');

    -- Level 2: Joints & silicone
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('joints-silicone', 'joints-silicone', 'quincaillerie-fixations', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'quincaillerie-fixations', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('joints-silicone', 'fr', 'Joints & silicone');
    PERFORM insert_category_translations('joints-silicone', 'ar', 'حشوات وسيليكون');
    PERFORM insert_category_translations('joints-silicone', 'de', 'Dichtungen & Silikon');
    PERFORM insert_category_translations('joints-silicone', 'en', 'Gaskets & silicone');
    PERFORM insert_category_translations('joints-silicone', 'es', 'Juntas & silicona');
    PERFORM insert_category_translations('joints-silicone', 'it', 'Guarnizioni & silicone');

    -- Level 1: Équipements électriques & plomberie
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('equipements-electriques-plomberie', 'equipements-electriques-plomberie', 'btp-engins-construction', 1)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'btp-engins-construction', level = 1
    RETURNING id INTO l1_id;

    -- Translations for Level 1
    PERFORM insert_category_translations('equipements-electriques-plomberie', 'fr', 'Équipements électriques & plomberie');
    PERFORM insert_category_translations('equipements-electriques-plomberie', 'ar', 'كهرباء وسباكة');
    PERFORM insert_category_translations('equipements-electriques-plomberie', 'de', 'Elektro & Sanitär');
    PERFORM insert_category_translations('equipements-electriques-plomberie', 'en', 'Electrical & plumbing');
    PERFORM insert_category_translations('equipements-electriques-plomberie', 'es', 'Eléctrico & fontanería');
    PERFORM insert_category_translations('equipements-electriques-plomberie', 'it', 'Elettrico & idraulica');

    -- Level 2: Câbles électriques
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('cables-electriques', 'cables-electriques', 'equipements-electriques-plomberie', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'equipements-electriques-plomberie', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('cables-electriques', 'fr', 'Câbles électriques');
    PERFORM insert_category_translations('cables-electriques', 'ar', 'كابلات كهربائية');
    PERFORM insert_category_translations('cables-electriques', 'de', 'Elektrokabel');
    PERFORM insert_category_translations('cables-electriques', 'en', 'Electrical cables');
    PERFORM insert_category_translations('cables-electriques', 'es', 'Cables eléctricos');
    PERFORM insert_category_translations('cables-electriques', 'it', 'Cavi elettrici');

    -- Level 2: Interrupteurs & prises
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('interrupteurs-prises', 'interrupteurs-prises', 'equipements-electriques-plomberie', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'equipements-electriques-plomberie', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('interrupteurs-prises', 'fr', 'Interrupteurs & prises');
    PERFORM insert_category_translations('interrupteurs-prises', 'ar', 'مفاتيح ومقابس');
    PERFORM insert_category_translations('interrupteurs-prises', 'de', 'Schalter & Steckdosen');
    PERFORM insert_category_translations('interrupteurs-prises', 'en', 'Switches & outlets');
    PERFORM insert_category_translations('interrupteurs-prises', 'es', 'Interruptores & tomas');
    PERFORM insert_category_translations('interrupteurs-prises', 'it', 'Interruttori & prese');

    -- Level 2: Disjoncteurs
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('disjoncteurs', 'disjoncteurs', 'equipements-electriques-plomberie', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'equipements-electriques-plomberie', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('disjoncteurs', 'fr', 'Disjoncteurs');
    PERFORM insert_category_translations('disjoncteurs', 'ar', 'قواطع كهربائية');
    PERFORM insert_category_translations('disjoncteurs', 'de', 'Leitungsschutzschalter');
    PERFORM insert_category_translations('disjoncteurs', 'en', 'Breakers');
    PERFORM insert_category_translations('disjoncteurs', 'es', 'Interruptores automáticos');
    PERFORM insert_category_translations('disjoncteurs', 'it', 'Interruttori automatici');

    -- Level 2: Tableaux électriques
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('tableaux-electriques', 'tableaux-electriques', 'equipements-electriques-plomberie', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'equipements-electriques-plomberie', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('tableaux-electriques', 'fr', 'Tableaux électriques');
    PERFORM insert_category_translations('tableaux-electriques', 'ar', 'لوحات كهربائية');
    PERFORM insert_category_translations('tableaux-electriques', 'de', 'Verteilerkästen');
    PERFORM insert_category_translations('tableaux-electriques', 'en', 'Panels');
    PERFORM insert_category_translations('tableaux-electriques', 'es', 'Cuadros eléctricos');
    PERFORM insert_category_translations('tableaux-electriques', 'it', 'Quadri elettrici');

    -- Level 2: Éclairage chantier
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('eclairage-chantier', 'eclairage-chantier', 'equipements-electriques-plomberie', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'equipements-electriques-plomberie', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('eclairage-chantier', 'fr', 'Éclairage chantier');
    PERFORM insert_category_translations('eclairage-chantier', 'ar', 'إنارة موقع البناء');
    PERFORM insert_category_translations('eclairage-chantier', 'de', 'Baustellenbeleuchtung');
    PERFORM insert_category_translations('eclairage-chantier', 'en', 'Jobsite lighting');
    PERFORM insert_category_translations('eclairage-chantier', 'es', 'Iluminación de obra');
    PERFORM insert_category_translations('eclairage-chantier', 'it', 'Illuminazione da cantiere');

    -- Level 2: Tuyaux & raccords
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('tuyaux-raccords', 'tuyaux-raccords', 'equipements-electriques-plomberie', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'equipements-electriques-plomberie', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('tuyaux-raccords', 'fr', 'Tuyaux & raccords');
    PERFORM insert_category_translations('tuyaux-raccords', 'ar', 'أنابيب ووصلات');
    PERFORM insert_category_translations('tuyaux-raccords', 'de', 'Rohre & Fittings');
    PERFORM insert_category_translations('tuyaux-raccords', 'en', 'Pipes & fittings');
    PERFORM insert_category_translations('tuyaux-raccords', 'es', 'Tubos & accesorios');
    PERFORM insert_category_translations('tuyaux-raccords', 'it', 'Tubi & raccordi');

    -- Level 2: Robinetterie
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('robinets', 'robinets', 'equipements-electriques-plomberie', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'equipements-electriques-plomberie', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('robinets', 'fr', 'Robinetterie');
    PERFORM insert_category_translations('robinets', 'ar', 'صنابير');
    PERFORM insert_category_translations('robinets', 'de', 'Armaturen');
    PERFORM insert_category_translations('robinets', 'en', 'Faucets');
    PERFORM insert_category_translations('robinets', 'es', 'Grifería');
    PERFORM insert_category_translations('robinets', 'it', 'Rubinetteria');

    -- Level 2: Compteurs d’eau
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('compteurs-eau', 'compteurs-eau', 'equipements-electriques-plomberie', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'equipements-electriques-plomberie', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('compteurs-eau', 'fr', 'Compteurs d’eau');
    PERFORM insert_category_translations('compteurs-eau', 'ar', 'عدادات مياه');
    PERFORM insert_category_translations('compteurs-eau', 'de', 'Wasserzähler');
    PERFORM insert_category_translations('compteurs-eau', 'en', 'Water meters');
    PERFORM insert_category_translations('compteurs-eau', 'es', 'Contadores de agua');
    PERFORM insert_category_translations('compteurs-eau', 'it', 'Contatori dell’acqua');

    -- Level 2: Pompes
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('pompes', 'pompes', 'equipements-electriques-plomberie', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'equipements-electriques-plomberie', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('pompes', 'fr', 'Pompes');
    PERFORM insert_category_translations('pompes', 'ar', 'مضخات');
    PERFORM insert_category_translations('pompes', 'de', 'Pumpen');
    PERFORM insert_category_translations('pompes', 'en', 'Pumps');
    PERFORM insert_category_translations('pompes', 'es', 'Bombas');
    PERFORM insert_category_translations('pompes', 'it', 'Pompe');

    -- Level 2: Chauffe-eau
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('chauffe-eau', 'chauffe-eau', 'equipements-electriques-plomberie', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'equipements-electriques-plomberie', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('chauffe-eau', 'fr', 'Chauffe-eau');
    PERFORM insert_category_translations('chauffe-eau', 'ar', 'سخانات مياه');
    PERFORM insert_category_translations('chauffe-eau', 'de', 'Warmwasserbereiter');
    PERFORM insert_category_translations('chauffe-eau', 'en', 'Water heaters');
    PERFORM insert_category_translations('chauffe-eau', 'es', 'Calentadores de agua');
    PERFORM insert_category_translations('chauffe-eau', 'it', 'Scaldacqua');

    -- Level 2: Sanitaires
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('sanitaires', 'sanitaires', 'equipements-electriques-plomberie', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'equipements-electriques-plomberie', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('sanitaires', 'fr', 'Sanitaires');
    PERFORM insert_category_translations('sanitaires', 'ar', 'مرافق صحية');
    PERFORM insert_category_translations('sanitaires', 'de', 'Sanitäreinrichtungen');
    PERFORM insert_category_translations('sanitaires', 'en', 'Sanitary ware');
    PERFORM insert_category_translations('sanitaires', 'es', 'Sanitarios');
    PERFORM insert_category_translations('sanitaires', 'it', 'Sanitari');

    -- Level 1: Outils & équipements professionnels
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('outils-equipements-professionnels', 'outils-equipements-professionnels', 'btp-engins-construction', 1)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'btp-engins-construction', level = 1
    RETURNING id INTO l1_id;

    -- Translations for Level 1
    PERFORM insert_category_translations('outils-equipements-professionnels', 'fr', 'Outils & équipements professionnels');
    PERFORM insert_category_translations('outils-equipements-professionnels', 'ar', 'أدوات ومعدات مهنية');
    PERFORM insert_category_translations('outils-equipements-professionnels', 'de', 'Werkzeuge & Profi-Ausrüstung');
    PERFORM insert_category_translations('outils-equipements-professionnels', 'en', 'Tools & professional equipment');
    PERFORM insert_category_translations('outils-equipements-professionnels', 'es', 'Herramientas & equipos profesionales');
    PERFORM insert_category_translations('outils-equipements-professionnels', 'it', 'Utensili & attrezzature professionali');

    -- Level 2: Outils manuels (marteaux, clés, tournevis, niveaux)
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('outils-manuels', 'outils-manuels', 'outils-equipements-professionnels', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'outils-equipements-professionnels', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('outils-manuels', 'fr', 'Outils manuels (marteaux, clés, tournevis, niveaux)');
    PERFORM insert_category_translations('outils-manuels', 'ar', 'أدوات يدوية (مطارق، مفاتيح، مفكات، مستويات)');
    PERFORM insert_category_translations('outils-manuels', 'de', 'Handwerkzeuge (Hämmer, Schlüssel, Schraubendreher, Wasserwaagen)');
    PERFORM insert_category_translations('outils-manuels', 'en', 'Hand tools (hammers, wrenches, screwdrivers, levels)');
    PERFORM insert_category_translations('outils-manuels', 'es', 'Herramientas manuales (martillos, llaves, destornilladores, niveles)');
    PERFORM insert_category_translations('outils-manuels', 'it', 'Utensili manuali (martelli, chiavi, cacciaviti, livelli)');

    -- Level 2: Outils de mesure
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('outils-de-mesure', 'outils-de-mesure', 'outils-equipements-professionnels', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'outils-equipements-professionnels', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('outils-de-mesure', 'fr', 'Outils de mesure');
    PERFORM insert_category_translations('outils-de-mesure', 'ar', 'أدوات قياس');
    PERFORM insert_category_translations('outils-de-mesure', 'de', 'Messwerkzeuge');
    PERFORM insert_category_translations('outils-de-mesure', 'en', 'Measuring tools');
    PERFORM insert_category_translations('outils-de-mesure', 'es', 'Instrumentos de medición');
    PERFORM insert_category_translations('outils-de-mesure', 'it', 'Strumenti di misura');

    -- Level 2: Mallettes & coffrets
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('mallettes-coffrets', 'mallettes-coffrets', 'outils-equipements-professionnels', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'outils-equipements-professionnels', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('mallettes-coffrets', 'fr', 'Mallettes & coffrets');
    PERFORM insert_category_translations('mallettes-coffrets', 'ar', 'حقائب وصناديق أدوات');
    PERFORM insert_category_translations('mallettes-coffrets', 'de', 'Koffer & Kästen');
    PERFORM insert_category_translations('mallettes-coffrets', 'en', 'Toolboxes & cases');
    PERFORM insert_category_translations('mallettes-coffrets', 'es', 'Maletines & estuches');
    PERFORM insert_category_translations('mallettes-coffrets', 'it', 'Valigette & cassette');

    -- Level 2: Outils diamantés
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('outils-diamantes', 'outils-diamantes', 'outils-equipements-professionnels', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'outils-equipements-professionnels', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('outils-diamantes', 'fr', 'Outils diamantés');
    PERFORM insert_category_translations('outils-diamantes', 'ar', 'أدوات ماسيّة');
    PERFORM insert_category_translations('outils-diamantes', 'de', 'Diamantwerkzeuge');
    PERFORM insert_category_translations('outils-diamantes', 'en', 'Diamond tools');
    PERFORM insert_category_translations('outils-diamantes', 'es', 'Herramientas diamantadas');
    PERFORM insert_category_translations('outils-diamantes', 'it', 'Utensili diamantati');

    -- Level 2: Meuleuses
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('meuleuses', 'meuleuses', 'outils-equipements-professionnels', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'outils-equipements-professionnels', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('meuleuses', 'fr', 'Meuleuses');
    PERFORM insert_category_translations('meuleuses', 'ar', 'جلاخات');
    PERFORM insert_category_translations('meuleuses', 'de', 'Schleifmaschinen');
    PERFORM insert_category_translations('meuleuses', 'en', 'Grinders');
    PERFORM insert_category_translations('meuleuses', 'es', 'Amoladoras');
    PERFORM insert_category_translations('meuleuses', 'it', 'Smerigliatrici');

    -- Level 2: Perforateurs
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('perforateurs', 'perforateurs', 'outils-equipements-professionnels', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'outils-equipements-professionnels', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('perforateurs', 'fr', 'Perforateurs');
    PERFORM insert_category_translations('perforateurs', 'ar', 'مطارق دوارة');
    PERFORM insert_category_translations('perforateurs', 'de', 'Bohrhämmer');
    PERFORM insert_category_translations('perforateurs', 'en', 'Rotary hammers');
    PERFORM insert_category_translations('perforateurs', 'es', 'Martillos perforadores');
    PERFORM insert_category_translations('perforateurs', 'it', 'Martelli perforatori');

    -- Level 2: Perceuses
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('perceuses', 'perceuses', 'outils-equipements-professionnels', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'outils-equipements-professionnels', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('perceuses', 'fr', 'Perceuses');
    PERFORM insert_category_translations('perceuses', 'ar', 'مثاقب');
    PERFORM insert_category_translations('perceuses', 'de', 'Bohrmaschinen');
    PERFORM insert_category_translations('perceuses', 'en', 'Drills');
    PERFORM insert_category_translations('perceuses', 'es', 'Taladros');
    PERFORM insert_category_translations('perceuses', 'it', 'Trapani');

    -- Level 2: Scies circulaires
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('scies-circulaires', 'scies-circulaires', 'outils-equipements-professionnels', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'outils-equipements-professionnels', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('scies-circulaires', 'fr', 'Scies circulaires');
    PERFORM insert_category_translations('scies-circulaires', 'ar', 'مناشير دائرية');
    PERFORM insert_category_translations('scies-circulaires', 'de', 'Kreissägen');
    PERFORM insert_category_translations('scies-circulaires', 'en', 'Circular saws');
    PERFORM insert_category_translations('scies-circulaires', 'es', 'Sierras circulares');
    PERFORM insert_category_translations('scies-circulaires', 'it', 'Seghe circolari');

    -- Level 2: Ponceuses
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('ponceuses', 'ponceuses', 'outils-equipements-professionnels', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'outils-equipements-professionnels', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('ponceuses', 'fr', 'Ponceuses');
    PERFORM insert_category_translations('ponceuses', 'ar', 'أجهزة صنفرة');
    PERFORM insert_category_translations('ponceuses', 'de', 'Schleifmaschinen');
    PERFORM insert_category_translations('ponceuses', 'en', 'Sanders');
    PERFORM insert_category_translations('ponceuses', 'es', 'Lijadoras');
    PERFORM insert_category_translations('ponceuses', 'it', 'Levigatrici');

    -- Level 2: Lasers rotatifs
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('lasers-rotatifs', 'lasers-rotatifs', 'outils-equipements-professionnels', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'outils-equipements-professionnels', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('lasers-rotatifs', 'fr', 'Lasers rotatifs');
    PERFORM insert_category_translations('lasers-rotatifs', 'ar', 'ليزر دوّار');
    PERFORM insert_category_translations('lasers-rotatifs', 'de', 'Rotationslaser');
    PERFORM insert_category_translations('lasers-rotatifs', 'en', 'Rotary lasers');
    PERFORM insert_category_translations('lasers-rotatifs', 'es', 'Láseres rotativos');
    PERFORM insert_category_translations('lasers-rotatifs', 'it', 'Laser rotanti');

    -- Level 1: Équipements de sécurité & protection
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('securite-protection', 'securite-protection', 'btp-engins-construction', 1)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'btp-engins-construction', level = 1
    RETURNING id INTO l1_id;

    -- Translations for Level 1
    PERFORM insert_category_translations('securite-protection', 'fr', 'Équipements de sécurité & protection');
    PERFORM insert_category_translations('securite-protection', 'ar', 'السلامة ومعدات الوقاية');
    PERFORM insert_category_translations('securite-protection', 'de', 'Sicherheit & PSA');
    PERFORM insert_category_translations('securite-protection', 'en', 'Safety & PPE');
    PERFORM insert_category_translations('securite-protection', 'es', 'Seguridad & EPP');
    PERFORM insert_category_translations('securite-protection', 'it', 'Sicurezza & DPI');

    -- Level 2: Casques de chantier
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('casques-de-chantier', 'casques-de-chantier', 'securite-protection', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'securite-protection', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('casques-de-chantier', 'fr', 'Casques de chantier');
    PERFORM insert_category_translations('casques-de-chantier', 'ar', 'خوذات أمان');
    PERFORM insert_category_translations('casques-de-chantier', 'de', 'Schutzhelme');
    PERFORM insert_category_translations('casques-de-chantier', 'en', 'Hard hats');
    PERFORM insert_category_translations('casques-de-chantier', 'es', 'Cascos de seguridad');
    PERFORM insert_category_translations('casques-de-chantier', 'it', 'Caschi da cantiere');

    -- Level 2: Gilets haute visibilité
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('gilets-haute-visibilite', 'gilets-haute-visibilite', 'securite-protection', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'securite-protection', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('gilets-haute-visibilite', 'fr', 'Gilets haute visibilité');
    PERFORM insert_category_translations('gilets-haute-visibilite', 'ar', 'سترات عالية الرؤية');
    PERFORM insert_category_translations('gilets-haute-visibilite', 'de', 'Warnwesten');
    PERFORM insert_category_translations('gilets-haute-visibilite', 'en', 'High‑visibility vests');
    PERFORM insert_category_translations('gilets-haute-visibilite', 'es', 'Chalecos de alta visibilidad');
    PERFORM insert_category_translations('gilets-haute-visibilite', 'it', 'Gilet ad alta visibilità');

    -- Level 2: Chaussures de sécurité
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('chaussures-de-securite', 'chaussures-de-securite', 'securite-protection', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'securite-protection', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('chaussures-de-securite', 'fr', 'Chaussures de sécurité');
    PERFORM insert_category_translations('chaussures-de-securite', 'ar', 'أحذية أمان');
    PERFORM insert_category_translations('chaussures-de-securite', 'de', 'Sicherheitsschuhe');
    PERFORM insert_category_translations('chaussures-de-securite', 'en', 'Safety shoes');
    PERFORM insert_category_translations('chaussures-de-securite', 'es', 'Calzado de seguridad');
    PERFORM insert_category_translations('chaussures-de-securite', 'it', 'Scarpe antinfortunistiche');

    -- Level 2: Gants de protection
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('gants-de-protection', 'gants-de-protection', 'securite-protection', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'securite-protection', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('gants-de-protection', 'fr', 'Gants de protection');
    PERFORM insert_category_translations('gants-de-protection', 'ar', 'قفازات حماية');
    PERFORM insert_category_translations('gants-de-protection', 'de', 'Schutzhandschuhe');
    PERFORM insert_category_translations('gants-de-protection', 'en', 'Protective gloves');
    PERFORM insert_category_translations('gants-de-protection', 'es', 'Guantes de protección');
    PERFORM insert_category_translations('gants-de-protection', 'it', 'Guanti protettivi');

    -- Level 2: Lunettes
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('lunettes', 'lunettes', 'securite-protection', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'securite-protection', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('lunettes', 'fr', 'Lunettes');
    PERFORM insert_category_translations('lunettes', 'ar', 'نظارات واقية');
    PERFORM insert_category_translations('lunettes', 'de', 'Schutzbrillen');
    PERFORM insert_category_translations('lunettes', 'en', 'Safety glasses');
    PERFORM insert_category_translations('lunettes', 'es', 'Gafas de seguridad');
    PERFORM insert_category_translations('lunettes', 'it', 'Occhiali di sicurezza');

    -- Level 2: Masques anti-poussière
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('masques-anti-poussiere', 'masques-anti-poussiere', 'securite-protection', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'securite-protection', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('masques-anti-poussiere', 'fr', 'Masques anti-poussière');
    PERFORM insert_category_translations('masques-anti-poussiere', 'ar', 'أقنعة مضادة للغبار');
    PERFORM insert_category_translations('masques-anti-poussiere', 'de', 'Staubmasken');
    PERFORM insert_category_translations('masques-anti-poussiere', 'en', 'Dust masks');
    PERFORM insert_category_translations('masques-anti-poussiere', 'es', 'Mascarillas antipolvo');
    PERFORM insert_category_translations('masques-anti-poussiere', 'it', 'Maschere antipolvere');

    -- Level 2: Harnais de sécurité
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('harnais-de-securite', 'harnais-de-securite', 'securite-protection', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'securite-protection', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('harnais-de-securite', 'fr', 'Harnais de sécurité');
    PERFORM insert_category_translations('harnais-de-securite', 'ar', 'أحزمة أمان');
    PERFORM insert_category_translations('harnais-de-securite', 'de', 'Sicherheitsgeschirre');
    PERFORM insert_category_translations('harnais-de-securite', 'en', 'Safety harnesses');
    PERFORM insert_category_translations('harnais-de-securite', 'es', 'Arneses de seguridad');
    PERFORM insert_category_translations('harnais-de-securite', 'it', 'Imbracature di sicurezza');

    -- Level 2: Filets de protection
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('filets-de-protection', 'filets-de-protection', 'securite-protection', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'securite-protection', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('filets-de-protection', 'fr', 'Filets de protection');
    PERFORM insert_category_translations('filets-de-protection', 'ar', 'شبكات أمان');
    PERFORM insert_category_translations('filets-de-protection', 'de', 'Sicherheitsnetze');
    PERFORM insert_category_translations('filets-de-protection', 'en', 'Safety nets');
    PERFORM insert_category_translations('filets-de-protection', 'es', 'Redes de seguridad');
    PERFORM insert_category_translations('filets-de-protection', 'it', 'Reti di sicurezza');

    -- Level 2: Barrières de chantier
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('barrieres-de-chantier', 'barrieres-de-chantier', 'securite-protection', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'securite-protection', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('barrieres-de-chantier', 'fr', 'Barrières de chantier');
    PERFORM insert_category_translations('barrieres-de-chantier', 'ar', 'حواجز موقع البناء');
    PERFORM insert_category_translations('barrieres-de-chantier', 'de', 'Baustellenabsperrungen');
    PERFORM insert_category_translations('barrieres-de-chantier', 'en', 'Site barriers');
    PERFORM insert_category_translations('barrieres-de-chantier', 'es', 'Barreras de obra');
    PERFORM insert_category_translations('barrieres-de-chantier', 'it', 'Barriere di cantiere');

    -- Level 1: Construction modulaire & structures
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('construction-modulaire-structures', 'construction-modulaire-structures', 'btp-engins-construction', 1)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'btp-engins-construction', level = 1
    RETURNING id INTO l1_id;

    -- Translations for Level 1
    PERFORM insert_category_translations('construction-modulaire-structures', 'fr', 'Construction modulaire & structures');
    PERFORM insert_category_translations('construction-modulaire-structures', 'ar', 'إنشاءات معيارية وهياكل');
    PERFORM insert_category_translations('construction-modulaire-structures', 'de', 'Modulbau & Strukturen');
    PERFORM insert_category_translations('construction-modulaire-structures', 'en', 'Modular construction & structures');
    PERFORM insert_category_translations('construction-modulaire-structures', 'es', 'Construcción modular & estructuras');
    PERFORM insert_category_translations('construction-modulaire-structures', 'it', 'Costruzione modulare & strutture');

    -- Level 2: Bungalows & bases-vie
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('bungalows-bases-vie', 'bungalows-bases-vie', 'construction-modulaire-structures', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'construction-modulaire-structures', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('bungalows-bases-vie', 'fr', 'Bungalows & bases-vie');
    PERFORM insert_category_translations('bungalows-bases-vie', 'ar', 'مساكن موقع');
    PERFORM insert_category_translations('bungalows-bases-vie', 'de', 'Baustellenunterkünfte');
    PERFORM insert_category_translations('bungalows-bases-vie', 'en', 'Site cabins');
    PERFORM insert_category_translations('bungalows-bases-vie', 'es', 'Casetas de obra');
    PERFORM insert_category_translations('bungalows-bases-vie', 'it', 'Baracche di cantiere');

    -- Level 2: Conteneurs aménagés
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('conteneurs-amenages', 'conteneurs-amenages', 'construction-modulaire-structures', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'construction-modulaire-structures', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('conteneurs-amenages', 'fr', 'Conteneurs aménagés');
    PERFORM insert_category_translations('conteneurs-amenages', 'ar', 'حاويات مجهّزة');
    PERFORM insert_category_translations('conteneurs-amenages', 'de', 'Umgebaute Container');
    PERFORM insert_category_translations('conteneurs-amenages', 'en', 'Converted containers');
    PERFORM insert_category_translations('conteneurs-amenages', 'es', 'Contenedores acondicionados');
    PERFORM insert_category_translations('conteneurs-amenages', 'it', 'Container attrezzati');

    -- Level 2: Cabanes & abris
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('cabanes-abris', 'cabanes-abris', 'construction-modulaire-structures', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'construction-modulaire-structures', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('cabanes-abris', 'fr', 'Cabanes & abris');
    PERFORM insert_category_translations('cabanes-abris', 'ar', 'أكواخ وملاجئ');
    PERFORM insert_category_translations('cabanes-abris', 'de', 'Hütten & Unterstände');
    PERFORM insert_category_translations('cabanes-abris', 'en', 'Sheds & shelters');
    PERFORM insert_category_translations('cabanes-abris', 'es', 'Cabañas & refugios');
    PERFORM insert_category_translations('cabanes-abris', 'it', 'Capanni & ricoveri');

    -- Level 2: Hangars métalliques
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('hangars-metalliques', 'hangars-metalliques', 'construction-modulaire-structures', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'construction-modulaire-structures', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('hangars-metalliques', 'fr', 'Hangars métalliques');
    PERFORM insert_category_translations('hangars-metalliques', 'ar', 'مستودعات معدنية');
    PERFORM insert_category_translations('hangars-metalliques', 'de', 'Metallhallen');
    PERFORM insert_category_translations('hangars-metalliques', 'en', 'Metal sheds');
    PERFORM insert_category_translations('hangars-metalliques', 'es', 'Naves metálicas');
    PERFORM insert_category_translations('hangars-metalliques', 'it', 'Capannoni metallici');

    -- Level 2: Structures préfabriquées
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('structures-prefabriquees', 'structures-prefabriquees', 'construction-modulaire-structures', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'construction-modulaire-structures', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('structures-prefabriquees', 'fr', 'Structures préfabriquées');
    PERFORM insert_category_translations('structures-prefabriquees', 'ar', 'هياكل مسبقة الصنع');
    PERFORM insert_category_translations('structures-prefabriquees', 'de', 'Vorfabrikierte Strukturen');
    PERFORM insert_category_translations('structures-prefabriquees', 'en', 'Prefabricated structures');
    PERFORM insert_category_translations('structures-prefabriquees', 'es', 'Estructuras prefabricadas');
    PERFORM insert_category_translations('structures-prefabriquees', 'it', 'Strutture prefabbricate');

    -- Level 2: Serres & couvertures industrielles
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('serres-couvertures-industrielles', 'serres-couvertures-industrielles', 'construction-modulaire-structures', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'construction-modulaire-structures', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('serres-couvertures-industrielles', 'fr', 'Serres & couvertures industrielles');
    PERFORM insert_category_translations('serres-couvertures-industrielles', 'ar', 'بيوت زجاجية وأغطية صناعية');
    PERFORM insert_category_translations('serres-couvertures-industrielles', 'de', 'Gewächshäuser & Industrieabdeckungen');
    PERFORM insert_category_translations('serres-couvertures-industrielles', 'en', 'Greenhouses & industrial covers');
    PERFORM insert_category_translations('serres-couvertures-industrielles', 'es', 'Invernaderos & coberturas industriales');
    PERFORM insert_category_translations('serres-couvertures-industrielles', 'it', 'Serre & coperture industriali');

    -- Level 1: Location de matériel BTP
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('location-materiel-btp', 'location-materiel-btp', 'btp-engins-construction', 1)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'btp-engins-construction', level = 1
    RETURNING id INTO l1_id;

    -- Translations for Level 1
    PERFORM insert_category_translations('location-materiel-btp', 'fr', 'Location de matériel BTP');
    PERFORM insert_category_translations('location-materiel-btp', 'ar', 'تأجير معدات البناء');
    PERFORM insert_category_translations('location-materiel-btp', 'de', 'Vermietung von Baugeräten');
    PERFORM insert_category_translations('location-materiel-btp', 'en', 'Construction equipment rental');
    PERFORM insert_category_translations('location-materiel-btp', 'es', 'Alquiler de equipos de construcción');
    PERFORM insert_category_translations('location-materiel-btp', 'it', 'Noleggio attrezzature edili');

    -- Level 2: Location d’engins (pelles, nacelles, camions)
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('location-d-engins', 'location-d-engins', 'location-materiel-btp', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'location-materiel-btp', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('location-d-engins', 'fr', 'Location d’engins (pelles, nacelles, camions)');
    PERFORM insert_category_translations('location-d-engins', 'ar', 'تأجير الآليات (حفارات، منصات، شاحنات)');
    PERFORM insert_category_translations('location-d-engins', 'de', 'Maschinenvermietung (Bagger, Hebebühnen, Lkw)');
    PERFORM insert_category_translations('location-d-engins', 'en', 'Equipment rental (excavators, lifts, trucks)');
    PERFORM insert_category_translations('location-d-engins', 'es', 'Alquiler de maquinaria (excavadoras, plataformas, camiones)');
    PERFORM insert_category_translations('location-d-engins', 'it', 'Noleggio macchine (escavatori, piattaforme, camion)');

    -- Level 2: Location d’outillage
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('location-d-outillage', 'location-d-outillage', 'location-materiel-btp', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'location-materiel-btp', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('location-d-outillage', 'fr', 'Location d’outillage');
    PERFORM insert_category_translations('location-d-outillage', 'ar', 'تأجير الأدوات');
    PERFORM insert_category_translations('location-d-outillage', 'de', 'Werkzeugvermietung');
    PERFORM insert_category_translations('location-d-outillage', 'en', 'Tool rental');
    PERFORM insert_category_translations('location-d-outillage', 'es', 'Alquiler de herramientas');
    PERFORM insert_category_translations('location-d-outillage', 'it', 'Noleggio utensili');

    -- Level 2: Location de coffrage & échafaudage
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('location-coffrage-echafaudage', 'location-coffrage-echafaudage', 'location-materiel-btp', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'location-materiel-btp', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('location-coffrage-echafaudage', 'fr', 'Location de coffrage & échafaudage');
    PERFORM insert_category_translations('location-coffrage-echafaudage', 'ar', 'تأجير القوالب والسقالات');
    PERFORM insert_category_translations('location-coffrage-echafaudage', 'de', 'Schalungs- & Gerüstvermietung');
    PERFORM insert_category_translations('location-coffrage-echafaudage', 'en', 'Formwork & scaffolding rental');
    PERFORM insert_category_translations('location-coffrage-echafaudage', 'es', 'Alquiler de encofrado & andamio');
    PERFORM insert_category_translations('location-coffrage-echafaudage', 'it', 'Noleggio casseforme & ponteggi');

    -- Level 2: Location de groupes électrogènes
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('location-groupes-electrogenes', 'location-groupes-electrogenes', 'location-materiel-btp', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'location-materiel-btp', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('location-groupes-electrogenes', 'fr', 'Location de groupes électrogènes');
    PERFORM insert_category_translations('location-groupes-electrogenes', 'ar', 'تأجير المولدات');
    PERFORM insert_category_translations('location-groupes-electrogenes', 'de', 'Generatorvermietung');
    PERFORM insert_category_translations('location-groupes-electrogenes', 'en', 'Generator rental');
    PERFORM insert_category_translations('location-groupes-electrogenes', 'es', 'Alquiler de generadores');
    PERFORM insert_category_translations('location-groupes-electrogenes', 'it', 'Noleggio generatori');

    -- Level 2: Location de bungalows
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('location-bungalows', 'location-bungalows', 'location-materiel-btp', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'location-materiel-btp', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('location-bungalows', 'fr', 'Location de bungalows');
    PERFORM insert_category_translations('location-bungalows', 'ar', 'تأجير مساكن الموقع');
    PERFORM insert_category_translations('location-bungalows', 'de', 'Bungalowvermietung');
    PERFORM insert_category_translations('location-bungalows', 'en', 'Cabin rental');
    PERFORM insert_category_translations('location-bungalows', 'es', 'Alquiler de casetas');
    PERFORM insert_category_translations('location-bungalows', 'it', 'Noleggio baracche');

    -- Level 1: Services liés au BTP
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('services-lies-au-btp', 'services-lies-au-btp', 'btp-engins-construction', 1)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'btp-engins-construction', level = 1
    RETURNING id INTO l1_id;

    -- Translations for Level 1
    PERFORM insert_category_translations('services-lies-au-btp', 'fr', 'Services liés au BTP');
    PERFORM insert_category_translations('services-lies-au-btp', 'ar', 'خدمات البناء');
    PERFORM insert_category_translations('services-lies-au-btp', 'de', 'Bau-Dienstleistungen');
    PERFORM insert_category_translations('services-lies-au-btp', 'en', 'Construction services');
    PERFORM insert_category_translations('services-lies-au-btp', 'es', 'Servicios de construcción');
    PERFORM insert_category_translations('services-lies-au-btp', 'it', 'Servizi per l’edilizia');

    -- Level 2: Travaux publics
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('travaux-publics', 'travaux-publics', 'services-lies-au-btp', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'services-lies-au-btp', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('travaux-publics', 'fr', 'Travaux publics');
    PERFORM insert_category_translations('travaux-publics', 'ar', 'أشغال عامة');
    PERFORM insert_category_translations('travaux-publics', 'de', 'Öffentliche Bauarbeiten');
    PERFORM insert_category_translations('travaux-publics', 'en', 'Public works');
    PERFORM insert_category_translations('travaux-publics', 'es', 'Obras públicas');
    PERFORM insert_category_translations('travaux-publics', 'it', 'Lavori pubblici');

    -- Level 2: Terrassement
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('terrassement', 'terrassement', 'services-lies-au-btp', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'services-lies-au-btp', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('terrassement', 'fr', 'Terrassement');
    PERFORM insert_category_translations('terrassement', 'ar', 'أعمال حفر وردم');
    PERFORM insert_category_translations('terrassement', 'de', 'Erdarbeiten');
    PERFORM insert_category_translations('terrassement', 'en', 'Earthworks');
    PERFORM insert_category_translations('terrassement', 'es', 'Movimiento de tierras');
    PERFORM insert_category_translations('terrassement', 'it', 'Movimenti terra');

    -- Level 2: Démolition
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('demolition', 'demolition', 'services-lies-au-btp', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'services-lies-au-btp', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('demolition', 'fr', 'Démolition');
    PERFORM insert_category_translations('demolition', 'ar', 'هدم');
    PERFORM insert_category_translations('demolition', 'de', 'Abriss');
    PERFORM insert_category_translations('demolition', 'en', 'Demolition');
    PERFORM insert_category_translations('demolition', 'es', 'Demolición');
    PERFORM insert_category_translations('demolition', 'it', 'Demolizione');

    -- Level 2: Maçonnerie
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('maconnerie', 'maconnerie', 'services-lies-au-btp', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'services-lies-au-btp', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('maconnerie', 'fr', 'Maçonnerie');
    PERFORM insert_category_translations('maconnerie', 'ar', 'أعمال بناء');
    PERFORM insert_category_translations('maconnerie', 'de', 'Mauerarbeiten');
    PERFORM insert_category_translations('maconnerie', 'en', 'Masonry');
    PERFORM insert_category_translations('maconnerie', 'es', 'Albañilería');
    PERFORM insert_category_translations('maconnerie', 'it', 'Muratura');

    -- Level 2: Plomberie
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('plomberie', 'plomberie', 'services-lies-au-btp', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'services-lies-au-btp', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('plomberie', 'fr', 'Plomberie');
    PERFORM insert_category_translations('plomberie', 'ar', 'سباكة');
    PERFORM insert_category_translations('plomberie', 'de', 'Sanitär');
    PERFORM insert_category_translations('plomberie', 'en', 'Plumbing');
    PERFORM insert_category_translations('plomberie', 'es', 'Fontanería');
    PERFORM insert_category_translations('plomberie', 'it', 'Idraulica');

    -- Level 2: Électricité
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('electricite', 'electricite', 'services-lies-au-btp', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'services-lies-au-btp', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('electricite', 'fr', 'Électricité');
    PERFORM insert_category_translations('electricite', 'ar', 'كهرباء');
    PERFORM insert_category_translations('electricite', 'de', 'Elektroarbeiten');
    PERFORM insert_category_translations('electricite', 'en', 'Electrical');
    PERFORM insert_category_translations('electricite', 'es', 'Electricidad');
    PERFORM insert_category_translations('electricite', 'it', 'Elettricità');

    -- Level 2: Menuiserie
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('menuiserie', 'menuiserie', 'services-lies-au-btp', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'services-lies-au-btp', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('menuiserie', 'fr', 'Menuiserie');
    PERFORM insert_category_translations('menuiserie', 'ar', 'نجارة');
    PERFORM insert_category_translations('menuiserie', 'de', 'Schreinerei');
    PERFORM insert_category_translations('menuiserie', 'en', 'Carpentry');
    PERFORM insert_category_translations('menuiserie', 'es', 'Carpintería');
    PERFORM insert_category_translations('menuiserie', 'it', 'Falegnameria');

    -- Level 2: Charpente
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('charpente', 'charpente', 'services-lies-au-btp', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'services-lies-au-btp', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('charpente', 'fr', 'Charpente');
    PERFORM insert_category_translations('charpente', 'ar', 'هياكل خشبية');
    PERFORM insert_category_translations('charpente', 'de', 'Zimmerei');
    PERFORM insert_category_translations('charpente', 'en', 'Timber framing');
    PERFORM insert_category_translations('charpente', 'es', 'Estructuras de madera');
    PERFORM insert_category_translations('charpente', 'it', 'Carpenteria in legno');

    -- Level 2: Peinture & finition
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('peinture-finition', 'peinture-finition', 'services-lies-au-btp', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'services-lies-au-btp', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('peinture-finition', 'fr', 'Peinture & finition');
    PERFORM insert_category_translations('peinture-finition', 'ar', 'دهان & تشطيب');
    PERFORM insert_category_translations('peinture-finition', 'de', 'Maler- & Abschlussarbeiten');
    PERFORM insert_category_translations('peinture-finition', 'en', 'Painting & finishing');
    PERFORM insert_category_translations('peinture-finition', 'es', 'Pintura & acabado');
    PERFORM insert_category_translations('peinture-finition', 'it', 'Pittura & finitura');

    -- Level 2: Architecture & ingénierie
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('architecture-ingenierie', 'architecture-ingenierie', 'services-lies-au-btp', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'services-lies-au-btp', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('architecture-ingenierie', 'fr', 'Architecture & ingénierie');
    PERFORM insert_category_translations('architecture-ingenierie', 'ar', 'هندسة معمارية & هندسة');
    PERFORM insert_category_translations('architecture-ingenierie', 'de', 'Architektur & Ingenieurwesen');
    PERFORM insert_category_translations('architecture-ingenierie', 'en', 'Architecture & engineering');
    PERFORM insert_category_translations('architecture-ingenierie', 'es', 'Arquitectura & ingeniería');
    PERFORM insert_category_translations('architecture-ingenierie', 'it', 'Architettura & ingegneria');

    -- Level 2: Topographie
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('topographie', 'topographie', 'services-lies-au-btp', 2)
    ON CONFLICT (id) DO UPDATE SET parent_id = 'services-lies-au-btp', level = 2
    RETURNING id INTO l2_id;

    -- Translations for Level 2
    PERFORM insert_category_translations('topographie', 'fr', 'Topographie');
    PERFORM insert_category_translations('topographie', 'ar', 'مسح طبوغرافي');
    PERFORM insert_category_translations('topographie', 'de', 'Vermessung');
    PERFORM insert_category_translations('topographie', 'en', 'Surveying');
    PERFORM insert_category_translations('topographie', 'es', 'Topografía');
    PERFORM insert_category_translations('topographie', 'it', 'Topografia');

END $$;
