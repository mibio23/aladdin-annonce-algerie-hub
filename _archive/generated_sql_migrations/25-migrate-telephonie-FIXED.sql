-- Migration: Téléphonie (Generated Recursive)
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

    -- Level 0: telephonie
    INSERT INTO categories (id, slug, level, name)
    VALUES ('telephonie', 'telephonie', 0, 'Téléphonie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 0, name = EXCLUDED.name
    RETURNING id INTO root_id;
    PERFORM insert_category_translations('telephonie', 'fr', 'Téléphonie');
    PERFORM insert_category_translations('telephonie', 'ar', 'الهاتف والاتصالات');
    PERFORM insert_category_translations('telephonie', 'en', 'Telephony');
    PERFORM insert_category_translations('telephonie', 'de', 'Telekommunikation');
    PERFORM insert_category_translations('telephonie', 'es', 'Telefonía');
    PERFORM insert_category_translations('telephonie', 'it', 'Telefonia');

        -- Level 1: smartphones
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('smartphones', 'smartphones', 1, root_id, 'Smartphones')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('smartphones', 'fr', 'Smartphones');
        PERFORM insert_category_translations('smartphones', 'ar', 'الهواتف الذكية');
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
            PERFORM insert_category_translations('smartphones-android', 'ar', 'هواتف ذكية أندرويد');
            PERFORM insert_category_translations('smartphones-android', 'en', 'Android Smartphones');
            PERFORM insert_category_translations('smartphones-android', 'de', 'Android‑Smartphones');
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
            PERFORM insert_category_translations('smartphones-5g', 'de', '5G‑Smartphones');
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
            PERFORM insert_category_translations('smartphones-gaming', 'de', 'Gaming‑Smartphones');
            PERFORM insert_category_translations('smartphones-gaming', 'es', 'Smartphones gaming');
            PERFORM insert_category_translations('smartphones-gaming', 'it', 'Smartphone gaming');

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
            PERFORM insert_category_translations('smartphones-pliables', 'it', 'Smartphone pieghevoli');

            -- Level 2: smartphones-entree-de-gamme
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('smartphones-entree-de-gamme', 'smartphones-entree-de-gamme', 2, l1_id, 'Smartphones d’entrée de gamme')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('smartphones-entree-de-gamme', 'fr', 'Smartphones d’entrée de gamme');
            PERFORM insert_category_translations('smartphones-entree-de-gamme', 'ar', 'هواتف اقتصادية');
            PERFORM insert_category_translations('smartphones-entree-de-gamme', 'en', 'Entry-level Smartphones');
            PERFORM insert_category_translations('smartphones-entree-de-gamme', 'de', 'Einsteiger‑Smartphones');
            PERFORM insert_category_translations('smartphones-entree-de-gamme', 'es', 'Smartphones de gama de entrada');
            PERFORM insert_category_translations('smartphones-entree-de-gamme', 'it', 'Smartphone entry‑level');

            -- Level 2: smartphones-milieu-de-gamme
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('smartphones-milieu-de-gamme', 'smartphones-milieu-de-gamme', 2, l1_id, 'Smartphones milieu de gamme')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('smartphones-milieu-de-gamme', 'fr', 'Smartphones milieu de gamme');
            PERFORM insert_category_translations('smartphones-milieu-de-gamme', 'ar', 'هواتف متوسطة');
            PERFORM insert_category_translations('smartphones-milieu-de-gamme', 'en', 'Mid-range Smartphones');
            PERFORM insert_category_translations('smartphones-milieu-de-gamme', 'de', 'Mittelklasse‑Smartphones');
            PERFORM insert_category_translations('smartphones-milieu-de-gamme', 'es', 'Smartphones de gama media');
            PERFORM insert_category_translations('smartphones-milieu-de-gamme', 'it', 'Smartphone di fascia media');

            -- Level 2: smartphones-haut-de-gamme
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('smartphones-haut-de-gamme', 'smartphones-haut-de-gamme', 2, l1_id, 'Smartphones haut de gamme')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('smartphones-haut-de-gamme', 'fr', 'Smartphones haut de gamme');
            PERFORM insert_category_translations('smartphones-haut-de-gamme', 'ar', 'هواتف فئة عليا');
            PERFORM insert_category_translations('smartphones-haut-de-gamme', 'en', 'High-end Smartphones');
            PERFORM insert_category_translations('smartphones-haut-de-gamme', 'de', 'High‑End‑Smartphones');
            PERFORM insert_category_translations('smartphones-haut-de-gamme', 'es', 'Smartphones de gama alta');
            PERFORM insert_category_translations('smartphones-haut-de-gamme', 'it', 'Smartphone di fascia alta');

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
            PERFORM insert_category_translations('smartphones-reconditionnes', 'it', 'Smartphone ricondizionati');

            -- Level 2: telephones-robustes-rugged
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('telephones-robustes-rugged', 'telephones-robustes-rugged', 2, l1_id, 'Téléphones robustes (rugged)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('telephones-robustes-rugged', 'fr', 'Téléphones robustes (rugged)');
            PERFORM insert_category_translations('telephones-robustes-rugged', 'ar', 'هواتف متينة');
            PERFORM insert_category_translations('telephones-robustes-rugged', 'en', 'Rugged Phones');
            PERFORM insert_category_translations('telephones-robustes-rugged', 'de', 'Robuste Telefone (rugged)');
            PERFORM insert_category_translations('telephones-robustes-rugged', 'es', 'Teléfonos resistentes (rugged)');
            PERFORM insert_category_translations('telephones-robustes-rugged', 'it', 'Telefoni robusti (rugged)');

            -- Level 2: mini-smartphones
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mini-smartphones', 'mini-smartphones', 2, l1_id, 'Mini smartphones')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mini-smartphones', 'fr', 'Mini smartphones');
            PERFORM insert_category_translations('mini-smartphones', 'ar', 'هواتف صغيرة');
            PERFORM insert_category_translations('mini-smartphones', 'en', 'Mini Smartphones');
            PERFORM insert_category_translations('mini-smartphones', 'de', 'Mini‑Smartphones');
            PERFORM insert_category_translations('mini-smartphones', 'es', 'Mini smartphones');
            PERFORM insert_category_translations('mini-smartphones', 'it', 'Mini smartphone');

            -- Level 2: smartphones-professionnels
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('smartphones-professionnels', 'smartphones-professionnels', 2, l1_id, 'Smartphones professionnels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('smartphones-professionnels', 'fr', 'Smartphones professionnels');
            PERFORM insert_category_translations('smartphones-professionnels', 'ar', 'هواتف احترافية');
            PERFORM insert_category_translations('smartphones-professionnels', 'en', 'Professional Smartphones');
            PERFORM insert_category_translations('smartphones-professionnels', 'de', 'Business‑Smartphones');
            PERFORM insert_category_translations('smartphones-professionnels', 'es', 'Smartphones profesionales');
            PERFORM insert_category_translations('smartphones-professionnels', 'it', 'Smartphone professionali');

        -- Level 1: telephones-classiques-fixes
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('telephones-classiques-fixes', 'telephones-classiques-fixes', 1, root_id, 'Téléphones Classiques & Fixes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('telephones-classiques-fixes', 'fr', 'Téléphones Classiques & Fixes');
        PERFORM insert_category_translations('telephones-classiques-fixes', 'ar', 'هواتف كلاسيكية وثابتة');
        PERFORM insert_category_translations('telephones-classiques-fixes', 'en', 'Classic & Landline Phones');
        PERFORM insert_category_translations('telephones-classiques-fixes', 'de', 'Klassische & Festnetztelefone');
        PERFORM insert_category_translations('telephones-classiques-fixes', 'es', 'Teléfonos clásicos y fijos');
        PERFORM insert_category_translations('telephones-classiques-fixes', 'it', 'Telefoni classici e fissi');

            -- Level 2: telephones-portables-classiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('telephones-portables-classiques', 'telephones-portables-classiques', 2, l1_id, 'Téléphones portables classiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('telephones-portables-classiques', 'fr', 'Téléphones portables classiques');
            PERFORM insert_category_translations('telephones-portables-classiques', 'ar', 'هواتف محمولة كلاسيكية');
            PERFORM insert_category_translations('telephones-portables-classiques', 'en', 'Classic Mobile Phones');
            PERFORM insert_category_translations('telephones-portables-classiques', 'de', 'Klassische Mobiltelefone');
            PERFORM insert_category_translations('telephones-portables-classiques', 'es', 'Teléfonos móviles clásicos');
            PERFORM insert_category_translations('telephones-portables-classiques', 'it', 'Telefoni cellulari classici');

            -- Level 2: telephones-a-clapet
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('telephones-a-clapet', 'telephones-a-clapet', 2, l1_id, 'Téléphones à clapet')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('telephones-a-clapet', 'fr', 'Téléphones à clapet');
            PERFORM insert_category_translations('telephones-a-clapet', 'ar', 'هواتف صدفية');
            PERFORM insert_category_translations('telephones-a-clapet', 'en', 'Flip Phones');
            PERFORM insert_category_translations('telephones-a-clapet', 'de', 'Klapptelefone');
            PERFORM insert_category_translations('telephones-a-clapet', 'es', 'Teléfonos de tapa');
            PERFORM insert_category_translations('telephones-a-clapet', 'it', 'Telefoni a conchiglia');

            -- Level 2: telephones-seniors
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('telephones-seniors', 'telephones-seniors', 2, l1_id, 'Téléphones seniors')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('telephones-seniors', 'fr', 'Téléphones seniors');
            PERFORM insert_category_translations('telephones-seniors', 'ar', 'هواتف لكبار السن');
            PERFORM insert_category_translations('telephones-seniors', 'en', 'Senior Phones');
            PERFORM insert_category_translations('telephones-seniors', 'de', 'Seniorentelefone');
            PERFORM insert_category_translations('telephones-seniors', 'es', 'Teléfonos para mayores');
            PERFORM insert_category_translations('telephones-seniors', 'it', 'Telefoni per anziani');

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
            PERFORM insert_category_translations('telephones-fixes-filaires', 'it', 'Telefoni fissi con cavo');

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
            PERFORM insert_category_translations('telephones-fixes-sans-fil', 'it', 'Telefoni fissi senza fili');

            -- Level 2: combines-dect
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('combines-dect', 'combines-dect', 2, l1_id, 'Combinés DECT')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('combines-dect', 'fr', 'Combinés DECT');
            PERFORM insert_category_translations('combines-dect', 'ar', 'أجهزة DECT');
            PERFORM insert_category_translations('combines-dect', 'en', 'DECT Handsets');
            PERFORM insert_category_translations('combines-dect', 'de', 'DECT‑Hörer');
            PERFORM insert_category_translations('combines-dect', 'es', 'Auriculares DECT');
            PERFORM insert_category_translations('combines-dect', 'it', 'Cornette DECT');

            -- Level 2: telephones-voip
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('telephones-voip', 'telephones-voip', 2, l1_id, 'Téléphones VoIP')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('telephones-voip', 'fr', 'Téléphones VoIP');
            PERFORM insert_category_translations('telephones-voip', 'ar', 'هواتف VoIP');
            PERFORM insert_category_translations('telephones-voip', 'en', 'VoIP Phones');
            PERFORM insert_category_translations('telephones-voip', 'de', 'VoIP‑Telefone');
            PERFORM insert_category_translations('telephones-voip', 'es', 'Teléfonos VoIP');
            PERFORM insert_category_translations('telephones-voip', 'it', 'Telefoni VoIP');

        -- Level 1: tablettes-appareils-mobiles
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tablettes-appareils-mobiles', 'tablettes-appareils-mobiles', 1, root_id, 'Tablettes & Appareils Mobiles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('tablettes-appareils-mobiles', 'fr', 'Tablettes & Appareils Mobiles');
        PERFORM insert_category_translations('tablettes-appareils-mobiles', 'ar', 'أجهزة لوحية ومحمولة');
        PERFORM insert_category_translations('tablettes-appareils-mobiles', 'en', 'Tablets & Mobile Devices');
        PERFORM insert_category_translations('tablettes-appareils-mobiles', 'de', 'Tablets & Mobile Geräte');
        PERFORM insert_category_translations('tablettes-appareils-mobiles', 'es', 'Tablets y dispositivos móviles');
        PERFORM insert_category_translations('tablettes-appareils-mobiles', 'it', 'Tablet & dispositivi mobili');

            -- Level 2: tablettes-android
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tablettes-android', 'tablettes-android', 2, l1_id, 'Tablettes Android')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tablettes-android', 'fr', 'Tablettes Android');
            PERFORM insert_category_translations('tablettes-android', 'ar', 'أجهزة لوحية أندرويد');
            PERFORM insert_category_translations('tablettes-android', 'en', 'Android Tablets');
            PERFORM insert_category_translations('tablettes-android', 'de', 'Android‑Tablets');
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
            PERFORM insert_category_translations('tablettes-graphiques', 'ar', 'أجهزة لوحية رسومية');
            PERFORM insert_category_translations('tablettes-graphiques', 'en', 'Graphics Tablets');
            PERFORM insert_category_translations('tablettes-graphiques', 'de', 'Grafiktabletts');
            PERFORM insert_category_translations('tablettes-graphiques', 'es', 'Tabletas gráficas');
            PERFORM insert_category_translations('tablettes-graphiques', 'it', 'Tavolette grafiche');

            -- Level 2: tablettes-enfants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tablettes-enfants', 'tablettes-enfants', 2, l1_id, 'Tablettes enfants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tablettes-enfants', 'fr', 'Tablettes enfants');
            PERFORM insert_category_translations('tablettes-enfants', 'ar', 'أجهزة لوحية للأطفال');
            PERFORM insert_category_translations('tablettes-enfants', 'en', 'Kids Tablets');
            PERFORM insert_category_translations('tablettes-enfants', 'de', 'Kinder‑Tablets');
            PERFORM insert_category_translations('tablettes-enfants', 'es', 'Tablets para niños');
            PERFORM insert_category_translations('tablettes-enfants', 'it', 'Tablet per bambini');

            -- Level 2: liseuses-electroniques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('liseuses-electroniques', 'liseuses-electroniques', 2, l1_id, 'Liseuses électroniques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('liseuses-electroniques', 'fr', 'Liseuses électroniques');
            PERFORM insert_category_translations('liseuses-electroniques', 'ar', 'قارئات إلكترونية');
            PERFORM insert_category_translations('liseuses-electroniques', 'en', 'E-readers');
            PERFORM insert_category_translations('liseuses-electroniques', 'de', 'E‑Reader');
            PERFORM insert_category_translations('liseuses-electroniques', 'es', 'Lectores electrónicos');
            PERFORM insert_category_translations('liseuses-electroniques', 'it', 'E‑reader');

            -- Level 2: phablettes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('phablettes', 'phablettes', 2, l1_id, 'Phablettes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('phablettes', 'fr', 'Phablettes');
            PERFORM insert_category_translations('phablettes', 'ar', 'فابليت');
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
            PERFORM insert_category_translations('mini-tablettes', 'de', 'Mini‑Tablets');
            PERFORM insert_category_translations('mini-tablettes', 'es', 'Mini tablets');
            PERFORM insert_category_translations('mini-tablettes', 'it', 'Mini tablet');

            -- Level 2: tablettes-professionnelles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tablettes-professionnelles', 'tablettes-professionnelles', 2, l1_id, 'Tablettes professionnelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tablettes-professionnelles', 'fr', 'Tablettes professionnelles');
            PERFORM insert_category_translations('tablettes-professionnelles', 'ar', 'أجهزة لوحية احترافية');
            PERFORM insert_category_translations('tablettes-professionnelles', 'en', 'Professional Tablets');
            PERFORM insert_category_translations('tablettes-professionnelles', 'de', 'Professionelle Tablets');
            PERFORM insert_category_translations('tablettes-professionnelles', 'es', 'Tablets profesionales');
            PERFORM insert_category_translations('tablettes-professionnelles', 'it', 'Tablet professionali');

        -- Level 1: accessoires-telephones
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-telephones', 'accessoires-telephones', 1, root_id, 'Accessoires Téléphones')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('accessoires-telephones', 'fr', 'Accessoires Téléphones');
        PERFORM insert_category_translations('accessoires-telephones', 'ar', 'ملحقات الهواتف');
        PERFORM insert_category_translations('accessoires-telephones', 'en', 'Phone Accessories');
        PERFORM insert_category_translations('accessoires-telephones', 'de', 'Telefon‑Zubehör');
        PERFORM insert_category_translations('accessoires-telephones', 'es', 'Accesorios para teléfonos');
        PERFORM insert_category_translations('accessoires-telephones', 'it', 'Accessori per telefoni');

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
            PERFORM insert_category_translations('coques-protection', 'it', 'Cover protettive');

            -- Level 2: housses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('housses', 'housses', 2, l1_id, 'Housses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('housses', 'fr', 'Housses');
            PERFORM insert_category_translations('housses', 'ar', 'حافظات');
            PERFORM insert_category_translations('housses', 'en', 'Sleeves');
            PERFORM insert_category_translations('housses', 'de', 'Hüllen');
            PERFORM insert_category_translations('housses', 'es', 'Fundas');
            PERFORM insert_category_translations('housses', 'it', 'Custodie');

            -- Level 2: etuis
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('etuis', 'etuis', 2, l1_id, 'Étuis')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('etuis', 'fr', 'Étuis');
            PERFORM insert_category_translations('etuis', 'ar', 'أغلفة');
            PERFORM insert_category_translations('etuis', 'en', 'Cases');
            PERFORM insert_category_translations('etuis', 'de', 'Etuis');
            PERFORM insert_category_translations('etuis', 'es', 'Estuches');
            PERFORM insert_category_translations('etuis', 'it', 'Astucci');

            -- Level 2: bumpers
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bumpers', 'bumpers', 2, l1_id, 'Bumpers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bumpers', 'fr', 'Bumpers');
            PERFORM insert_category_translations('bumpers', 'ar', 'حمايات حواف');
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
            PERFORM insert_category_translations('vitres-protections-ecran', 'ar', 'واقيات شاشة وزجاج حماية');
            PERFORM insert_category_translations('vitres-protections-ecran', 'en', 'Screen Protectors');
            PERFORM insert_category_translations('vitres-protections-ecran', 'de', 'Displayschutz & Schutzglas');
            PERFORM insert_category_translations('vitres-protections-ecran', 'es', 'Protectores de pantalla y vidrio');
            PERFORM insert_category_translations('vitres-protections-ecran', 'it', 'Vetri e pellicole protettive');

            -- Level 2: supports-telephones
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('supports-telephones', 'supports-telephones', 2, l1_id, 'Supports téléphones')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('supports-telephones', 'fr', 'Supports téléphones');
            PERFORM insert_category_translations('supports-telephones', 'ar', 'حوامل الهواتف');
            PERFORM insert_category_translations('supports-telephones', 'en', 'Phone Stands');
            PERFORM insert_category_translations('supports-telephones', 'de', 'Telefonhalterungen');
            PERFORM insert_category_translations('supports-telephones', 'es', 'Soportes para teléfono');
            PERFORM insert_category_translations('supports-telephones', 'it', 'Supporti per telefono');

            -- Level 2: supports-voiture
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('supports-voiture', 'supports-voiture', 2, l1_id, 'Supports voiture')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('supports-voiture', 'fr', 'Supports voiture');
            PERFORM insert_category_translations('supports-voiture', 'ar', 'حوامل سيارة');
            PERFORM insert_category_translations('supports-voiture', 'en', 'Car Mounts');
            PERFORM insert_category_translations('supports-voiture', 'de', 'Auto‑Halterungen');
            PERFORM insert_category_translations('supports-voiture', 'es', 'Soportes para coche');
            PERFORM insert_category_translations('supports-voiture', 'it', 'Supporti auto');

            -- Level 2: stylos-tactiles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('stylos-tactiles', 'stylos-tactiles', 2, l1_id, 'Stylos tactiles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('stylos-tactiles', 'fr', 'Stylos tactiles');
            PERFORM insert_category_translations('stylos-tactiles', 'ar', 'أقلام لمسية');
            PERFORM insert_category_translations('stylos-tactiles', 'en', 'Stylus Pens');
            PERFORM insert_category_translations('stylos-tactiles', 'de', 'Stylus‑Stifte');
            PERFORM insert_category_translations('stylos-tactiles', 'es', 'Lápices táctiles');
            PERFORM insert_category_translations('stylos-tactiles', 'it', 'Pennini touch');

            -- Level 2: anneaux-grips
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('anneaux-grips', 'anneaux-grips', 2, l1_id, 'Anneaux & grips')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('anneaux-grips', 'fr', 'Anneaux & grips');
            PERFORM insert_category_translations('anneaux-grips', 'ar', 'حلقات ومقابض');
            PERFORM insert_category_translations('anneaux-grips', 'en', 'Rings & Grips');
            PERFORM insert_category_translations('anneaux-grips', 'de', 'Ringe & Grips');
            PERFORM insert_category_translations('anneaux-grips', 'es', 'Anillos y grips');
            PERFORM insert_category_translations('anneaux-grips', 'it', 'Anelli & grip');

            -- Level 2: pochettes-impermeables
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pochettes-impermeables', 'pochettes-impermeables', 2, l1_id, 'Pochettes imperméables')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pochettes-impermeables', 'fr', 'Pochettes imperméables');
            PERFORM insert_category_translations('pochettes-impermeables', 'ar', 'أكياس مقاومة للماء');
            PERFORM insert_category_translations('pochettes-impermeables', 'en', 'Waterproof Pouches');
            PERFORM insert_category_translations('pochettes-impermeables', 'de', 'Wasserdichte Taschen');
            PERFORM insert_category_translations('pochettes-impermeables', 'es', 'Bolsas impermeables');
            PERFORM insert_category_translations('pochettes-impermeables', 'it', 'Bustine impermeabili');

        -- Level 1: batteries-charge
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('batteries-charge', 'batteries-charge', 1, root_id, 'Batteries & Charge')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('batteries-charge', 'fr', 'Batteries & Charge');
        PERFORM insert_category_translations('batteries-charge', 'ar', 'بطاريات وشحن');
        PERFORM insert_category_translations('batteries-charge', 'en', 'Batteries & Charging');
        PERFORM insert_category_translations('batteries-charge', 'de', 'Batterien & Laden');
        PERFORM insert_category_translations('batteries-charge', 'es', 'Baterías y carga');
        PERFORM insert_category_translations('batteries-charge', 'it', 'Batterie & ricarica');

            -- Level 2: chargeurs-standard
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chargeurs-standard', 'chargeurs-standard', 2, l1_id, 'Chargeurs standard')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chargeurs-standard', 'fr', 'Chargeurs standard');
            PERFORM insert_category_translations('chargeurs-standard', 'ar', 'شواحن عادية');
            PERFORM insert_category_translations('chargeurs-standard', 'en', 'Standard Chargers');
            PERFORM insert_category_translations('chargeurs-standard', 'de', 'Standard‑Ladegeräte');
            PERFORM insert_category_translations('chargeurs-standard', 'es', 'Cargadores estándar');
            PERFORM insert_category_translations('chargeurs-standard', 'it', 'Caricabatterie standard');

            -- Level 2: chargeurs-rapides-fast-quick
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chargeurs-rapides-fast-quick', 'chargeurs-rapides-fast-quick', 2, l1_id, 'Chargeurs rapides (Fast Charge, Quick Charge)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chargeurs-rapides-fast-quick', 'fr', 'Chargeurs rapides (Fast Charge, Quick Charge)');
            PERFORM insert_category_translations('chargeurs-rapides-fast-quick', 'ar', 'شواحن سريعة (Fast/Quick Charge)');
            PERFORM insert_category_translations('chargeurs-rapides-fast-quick', 'en', 'Fast Chargers (Fast Charge, Quick Charge)');
            PERFORM insert_category_translations('chargeurs-rapides-fast-quick', 'de', 'Schnellladegeräte (Fast Charge, Quick Charge)');
            PERFORM insert_category_translations('chargeurs-rapides-fast-quick', 'es', 'Cargadores rápidos (Fast/Quick Charge)');
            PERFORM insert_category_translations('chargeurs-rapides-fast-quick', 'it', 'Caricatori rapidi (Fast/Quick Charge)');

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
            PERFORM insert_category_translations('chargeurs-sans-fil', 'it', 'Caricatori wireless');

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
            PERFORM insert_category_translations('stations-recharge', 'it', 'Stazioni di ricarica');

            -- Level 2: powerbanks
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('powerbanks', 'powerbanks', 2, l1_id, 'Powerbanks')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('powerbanks', 'fr', 'Powerbanks');
            PERFORM insert_category_translations('powerbanks', 'ar', 'بطاريات خارجية');
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
            PERFORM insert_category_translations('batteries-externes-haute-capacite', 'en', 'High-capacity External Batteries');
            PERFORM insert_category_translations('batteries-externes-haute-capacite', 'de', 'Externe Batterien mit hoher Kapazität');
            PERFORM insert_category_translations('batteries-externes-haute-capacite', 'es', 'Baterías externas de alta capacidad');
            PERFORM insert_category_translations('batteries-externes-haute-capacite', 'it', 'Batterie esterne ad alta capacità');

            -- Level 2: cables-usb
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cables-usb', 'cables-usb', 2, l1_id, 'Câbles USB (Type‑C, Lightning, Micro‑USB)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cables-usb', 'fr', 'Câbles USB (Type‑C, Lightning, Micro‑USB)');
            PERFORM insert_category_translations('cables-usb', 'ar', 'كابلات USB (Type‑C، Lightning، Micro‑USB)');
            PERFORM insert_category_translations('cables-usb', 'en', 'USB Cables (Type-C, Lightning, Micro-USB)');
            PERFORM insert_category_translations('cables-usb', 'de', 'USB‑Kabel (Type‑C, Lightning, Micro‑USB)');
            PERFORM insert_category_translations('cables-usb', 'es', 'Cables USB (Type‑C, Lightning, Micro‑USB)');
            PERFORM insert_category_translations('cables-usb', 'it', 'Cavi USB (Type‑C, Lightning, Micro‑USB)');

            -- Level 2: adaptateurs-secteur
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('adaptateurs-secteur', 'adaptateurs-secteur', 2, l1_id, 'Adaptateurs secteur')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('adaptateurs-secteur', 'fr', 'Adaptateurs secteur');
            PERFORM insert_category_translations('adaptateurs-secteur', 'ar', 'محولات كهرباء');
            PERFORM insert_category_translations('adaptateurs-secteur', 'en', 'Wall Adapters');
            PERFORM insert_category_translations('adaptateurs-secteur', 'de', 'Netzadapter');
            PERFORM insert_category_translations('adaptateurs-secteur', 'es', 'Adaptadores de pared');
            PERFORM insert_category_translations('adaptateurs-secteur', 'it', 'Adattatori da muro');

            -- Level 2: chargeurs-voiture
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chargeurs-voiture', 'chargeurs-voiture', 2, l1_id, 'Chargeurs voiture')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chargeurs-voiture', 'fr', 'Chargeurs voiture');
            PERFORM insert_category_translations('chargeurs-voiture', 'ar', 'شواحن سيارات');
            PERFORM insert_category_translations('chargeurs-voiture', 'en', 'Car Chargers');
            PERFORM insert_category_translations('chargeurs-voiture', 'de', 'Auto‑Ladegeräte');
            PERFORM insert_category_translations('chargeurs-voiture', 'es', 'Cargadores para coche');
            PERFORM insert_category_translations('chargeurs-voiture', 'it', 'Caricabatterie auto');

            -- Level 2: hubs-usb-multiprises-intelligentes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('hubs-usb-multiprises-intelligentes', 'hubs-usb-multiprises-intelligentes', 2, l1_id, 'Hubs USB & multiprises intelligentes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('hubs-usb-multiprises-intelligentes', 'fr', 'Hubs USB & multiprises intelligentes');
            PERFORM insert_category_translations('hubs-usb-multiprises-intelligentes', 'ar', 'موزعات USB ومشتركات ذكية');
            PERFORM insert_category_translations('hubs-usb-multiprises-intelligentes', 'en', 'USB Hubs & Smart Power Strips');
            PERFORM insert_category_translations('hubs-usb-multiprises-intelligentes', 'de', 'USB‑Hubs & smarte Steckdosenleisten');
            PERFORM insert_category_translations('hubs-usb-multiprises-intelligentes', 'es', 'Hubs USB y regletas inteligentes');
            PERFORM insert_category_translations('hubs-usb-multiprises-intelligentes', 'it', 'Hub USB & ciabatte intelligenti');

        -- Level 1: audio-mobile
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('audio-mobile', 'audio-mobile', 1, root_id, 'Audio Mobile')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('audio-mobile', 'fr', 'Audio Mobile');
        PERFORM insert_category_translations('audio-mobile', 'ar', 'صوتيات الموبايل');
        PERFORM insert_category_translations('audio-mobile', 'en', 'Mobile Audio');
        PERFORM insert_category_translations('audio-mobile', 'de', 'Mobile Audio');
        PERFORM insert_category_translations('audio-mobile', 'es', 'Audio móvil');
        PERFORM insert_category_translations('audio-mobile', 'it', 'Audio mobile');

            -- Level 2: ecouteurs-filaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ecouteurs-filaires', 'ecouteurs-filaires', 2, l1_id, 'Écouteurs filaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ecouteurs-filaires', 'fr', 'Écouteurs filaires');
            PERFORM insert_category_translations('ecouteurs-filaires', 'ar', 'سماعات سلكية');
            PERFORM insert_category_translations('ecouteurs-filaires', 'en', 'Wired Earphones');
            PERFORM insert_category_translations('ecouteurs-filaires', 'de', 'Kabelgebundene Ohrhörer');
            PERFORM insert_category_translations('ecouteurs-filaires', 'es', 'Auriculares con cable');
            PERFORM insert_category_translations('ecouteurs-filaires', 'it', 'Auricolari con filo');

            -- Level 2: ecouteurs-bluetooth
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ecouteurs-bluetooth', 'ecouteurs-bluetooth', 2, l1_id, 'Écouteurs Bluetooth')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ecouteurs-bluetooth', 'fr', 'Écouteurs Bluetooth');
            PERFORM insert_category_translations('ecouteurs-bluetooth', 'ar', 'سماعات بلوتوث');
            PERFORM insert_category_translations('ecouteurs-bluetooth', 'en', 'Bluetooth Earphones');
            PERFORM insert_category_translations('ecouteurs-bluetooth', 'de', 'Bluetooth‑Ohrhörer');
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
            PERFORM insert_category_translations('casques-sans-fil', 'es', 'Auriculares inalámbricos');
            PERFORM insert_category_translations('casques-sans-fil', 'it', 'Cuffie wireless');

            -- Level 2: casques-filaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('casques-filaires', 'casques-filaires', 2, l1_id, 'Casques filaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('casques-filaires', 'fr', 'Casques filaires');
            PERFORM insert_category_translations('casques-filaires', 'ar', 'سماعات رأس سلكية');
            PERFORM insert_category_translations('casques-filaires', 'en', 'Wired Headphones');
            PERFORM insert_category_translations('casques-filaires', 'de', 'Kabelgebundene Kopfhörer');
            PERFORM insert_category_translations('casques-filaires', 'es', 'Auriculares con cable');
            PERFORM insert_category_translations('casques-filaires', 'it', 'Cuffie con filo');

            -- Level 2: enceintes-bluetooth
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('enceintes-bluetooth', 'enceintes-bluetooth', 2, l1_id, 'Enceintes Bluetooth')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('enceintes-bluetooth', 'fr', 'Enceintes Bluetooth');
            PERFORM insert_category_translations('enceintes-bluetooth', 'ar', 'مكبرات صوت بلوتوث');
            PERFORM insert_category_translations('enceintes-bluetooth', 'en', 'Bluetooth Speakers');
            PERFORM insert_category_translations('enceintes-bluetooth', 'de', 'Bluetooth‑Lautsprecher');
            PERFORM insert_category_translations('enceintes-bluetooth', 'es', 'Altavoces Bluetooth');
            PERFORM insert_category_translations('enceintes-bluetooth', 'it', 'Altoparlanti Bluetooth');

            -- Level 2: kits-mains-libres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('kits-mains-libres', 'kits-mains-libres', 2, l1_id, 'Kits mains‑libres')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('kits-mains-libres', 'fr', 'Kits mains‑libres');
            PERFORM insert_category_translations('kits-mains-libres', 'ar', 'مجموعات اتصال حرّ');
            PERFORM insert_category_translations('kits-mains-libres', 'en', 'Hands-free Kits');
            PERFORM insert_category_translations('kits-mains-libres', 'de', 'Freisprech‑Kits');
            PERFORM insert_category_translations('kits-mains-libres', 'es', 'Kits manos libres');
            PERFORM insert_category_translations('kits-mains-libres', 'it', 'Kit vivavoce');

            -- Level 2: micros-mobiles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('micros-mobiles', 'micros-mobiles', 2, l1_id, 'Micros mobiles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('micros-mobiles', 'fr', 'Micros mobiles');
            PERFORM insert_category_translations('micros-mobiles', 'ar', 'ميكروفونات للهاتف');
            PERFORM insert_category_translations('micros-mobiles', 'en', 'Mobile Microphones');
            PERFORM insert_category_translations('micros-mobiles', 'de', 'Mobile Mikrofone');
            PERFORM insert_category_translations('micros-mobiles', 'es', 'Micrófonos móviles');
            PERFORM insert_category_translations('micros-mobiles', 'it', 'Microfoni mobili');

            -- Level 2: adaptateurs-audio
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('adaptateurs-audio', 'adaptateurs-audio', 2, l1_id, 'Adaptateurs audio')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('adaptateurs-audio', 'fr', 'Adaptateurs audio');
            PERFORM insert_category_translations('adaptateurs-audio', 'ar', 'محولات صوتية');
            PERFORM insert_category_translations('adaptateurs-audio', 'en', 'Audio Adapters');
            PERFORM insert_category_translations('adaptateurs-audio', 'de', 'Audio‑Adapter');
            PERFORM insert_category_translations('adaptateurs-audio', 'es', 'Adaptadores de audio');
            PERFORM insert_category_translations('adaptateurs-audio', 'it', 'Adattatori audio');

        -- Level 1: pieces-reparation-telephone
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pieces-reparation-telephone', 'pieces-reparation-telephone', 1, root_id, 'Pièces & Réparation Téléphone')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('pieces-reparation-telephone', 'fr', 'Pièces & Réparation Téléphone');
        PERFORM insert_category_translations('pieces-reparation-telephone', 'ar', 'قطع وإصلاح الهواتف');
        PERFORM insert_category_translations('pieces-reparation-telephone', 'en', 'Phone Parts & Repair');
        PERFORM insert_category_translations('pieces-reparation-telephone', 'de', 'Telefonteile & Reparatur');
        PERFORM insert_category_translations('pieces-reparation-telephone', 'es', 'Piezas y reparación de teléfonos');
        PERFORM insert_category_translations('pieces-reparation-telephone', 'it', 'Ricambi & riparazione telefoni');

            -- Level 2: ecrans-lcd-oled
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ecrans-lcd-oled', 'ecrans-lcd-oled', 2, l1_id, 'Écrans LCD et OLED')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ecrans-lcd-oled', 'fr', 'Écrans LCD et OLED');
            PERFORM insert_category_translations('ecrans-lcd-oled', 'ar', 'شاشات LCD وOLED');
            PERFORM insert_category_translations('ecrans-lcd-oled', 'en', 'LCD and OLED Screens');
            PERFORM insert_category_translations('ecrans-lcd-oled', 'de', 'LCD‑ und OLED‑Displays');
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
            PERFORM insert_category_translations('batteries-internes', 'de', 'Interne Batterien');
            PERFORM insert_category_translations('batteries-internes', 'es', 'Baterías internas');
            PERFORM insert_category_translations('batteries-internes', 'it', 'Batterie interne');

            -- Level 2: connecteurs-charge
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('connecteurs-charge', 'connecteurs-charge', 2, l1_id, 'Connecteurs de charge')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('connecteurs-charge', 'fr', 'Connecteurs de charge');
            PERFORM insert_category_translations('connecteurs-charge', 'ar', 'موصلات شحن');
            PERFORM insert_category_translations('connecteurs-charge', 'en', 'Charging Connectors');
            PERFORM insert_category_translations('connecteurs-charge', 'de', 'Ladeanschlüsse');
            PERFORM insert_category_translations('connecteurs-charge', 'es', 'Conectores de carga');
            PERFORM insert_category_translations('connecteurs-charge', 'it', 'Connettori di ricarica');

            -- Level 2: nappes-circuits
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('nappes-circuits', 'nappes-circuits', 2, l1_id, 'Nappes et circuits')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('nappes-circuits', 'fr', 'Nappes et circuits');
            PERFORM insert_category_translations('nappes-circuits', 'ar', 'شرائط ودوائر مرنة');
            PERFORM insert_category_translations('nappes-circuits', 'en', 'Flex Cables and Circuits');
            PERFORM insert_category_translations('nappes-circuits', 'de', 'Flexkabel & Schaltungen');
            PERFORM insert_category_translations('nappes-circuits', 'es', 'Cintas flex y circuitos');
            PERFORM insert_category_translations('nappes-circuits', 'it', 'Flat cable & circuiti');

            -- Level 2: cameras-avant-arriere
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cameras-avant-arriere', 'cameras-avant-arriere', 2, l1_id, 'Caméras avant/arrière')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cameras-avant-arriere', 'fr', 'Caméras avant/arrière');
            PERFORM insert_category_translations('cameras-avant-arriere', 'ar', 'كاميرات أمامية/خلفية');
            PERFORM insert_category_translations('cameras-avant-arriere', 'en', 'Front/Rear Cameras');
            PERFORM insert_category_translations('cameras-avant-arriere', 'de', 'Front/Rear‑Kameras');
            PERFORM insert_category_translations('cameras-avant-arriere', 'es', 'Cámaras frontal/trasera');
            PERFORM insert_category_translations('cameras-avant-arriere', 'it', 'Fotocamere anteriori/posteriori');

            -- Level 2: chassis-coques-arriere
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chassis-coques-arriere', 'chassis-coques-arriere', 2, l1_id, 'Châssis et coques arrière')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chassis-coques-arriere', 'fr', 'Châssis et coques arrière');
            PERFORM insert_category_translations('chassis-coques-arriere', 'ar', 'هياكل وغطاءات خلفية');
            PERFORM insert_category_translations('chassis-coques-arriere', 'en', 'Frames and Back Covers');
            PERFORM insert_category_translations('chassis-coques-arriere', 'de', 'Rahmen & Rückabdeckungen');
            PERFORM insert_category_translations('chassis-coques-arriere', 'es', 'Chasis y tapas traseras');
            PERFORM insert_category_translations('chassis-coques-arriere', 'it', 'Telai & cover posteriori');

            -- Level 2: boutons-flex
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('boutons-flex', 'boutons-flex', 2, l1_id, 'Boutons & flex')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('boutons-flex', 'fr', 'Boutons & flex');
            PERFORM insert_category_translations('boutons-flex', 'ar', 'أزرار وكوابل فليكس');
            PERFORM insert_category_translations('boutons-flex', 'en', 'Buttons & Flex');
            PERFORM insert_category_translations('boutons-flex', 'de', 'Tasten & Flex');
            PERFORM insert_category_translations('boutons-flex', 'es', 'Botones y flex');
            PERFORM insert_category_translations('boutons-flex', 'it', 'Pulsanti & flex');

            -- Level 2: haut-parleurs-micros
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('haut-parleurs-micros', 'haut-parleurs-micros', 2, l1_id, 'Haut‑parleurs & micros')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('haut-parleurs-micros', 'fr', 'Haut‑parleurs & micros');
            PERFORM insert_category_translations('haut-parleurs-micros', 'ar', 'مكبرات صوت وميكروفونات');
            PERFORM insert_category_translations('haut-parleurs-micros', 'en', 'Speakers & Microphones');
            PERFORM insert_category_translations('haut-parleurs-micros', 'de', 'Lautsprecher & Mikrofone');
            PERFORM insert_category_translations('haut-parleurs-micros', 'es', 'Altavoces y micrófonos');
            PERFORM insert_category_translations('haut-parleurs-micros', 'it', 'Altoparlanti & microfoni');

            -- Level 2: vitres-arriere
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vitres-arriere', 'vitres-arriere', 2, l1_id, 'Vitres arrière')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('vitres-arriere', 'fr', 'Vitres arrière');
            PERFORM insert_category_translations('vitres-arriere', 'ar', 'زجاج خلفي');
            PERFORM insert_category_translations('vitres-arriere', 'en', 'Back Glass');
            PERFORM insert_category_translations('vitres-arriere', 'de', 'Rückglas');
            PERFORM insert_category_translations('vitres-arriere', 'es', 'Cristal trasero');
            PERFORM insert_category_translations('vitres-arriere', 'it', 'Vetro posteriore');

            -- Level 2: kits-reparation
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('kits-reparation', 'kits-reparation', 2, l1_id, 'Kits de réparation')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('kits-reparation', 'fr', 'Kits de réparation');
            PERFORM insert_category_translations('kits-reparation', 'ar', 'عدة إصلاح');
            PERFORM insert_category_translations('kits-reparation', 'en', 'Repair Kits');
            PERFORM insert_category_translations('kits-reparation', 'de', 'Reparatur‑Kits');
            PERFORM insert_category_translations('kits-reparation', 'es', 'Kits de reparación');
            PERFORM insert_category_translations('kits-reparation', 'it', 'Kit di riparazione');

            -- Level 2: outils-demontage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('outils-demontage', 'outils-demontage', 2, l1_id, 'Outils de démontage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('outils-demontage', 'fr', 'Outils de démontage');
            PERFORM insert_category_translations('outils-demontage', 'ar', 'أدوات تفكيك');
            PERFORM insert_category_translations('outils-demontage', 'en', 'Disassembly Tools');
            PERFORM insert_category_translations('outils-demontage', 'de', 'Demontage‑Werkzeuge');
            PERFORM insert_category_translations('outils-demontage', 'es', 'Herramientas de desmontaje');
            PERFORM insert_category_translations('outils-demontage', 'it', 'Strumenti di smontaggio');

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
            PERFORM insert_category_translations('stations-soudure', 'it', 'Stazioni di saldatura');

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
            PERFORM insert_category_translations('ecrans-reconditionnes', 'it', 'Schermi ricondizionati');

        -- Level 1: objets-connectes-mobile
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('objets-connectes-mobile', 'objets-connectes-mobile', 1, root_id, 'Objets Connectés (Mobile)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('objets-connectes-mobile', 'fr', 'Objets Connectés (Mobile)');
        PERFORM insert_category_translations('objets-connectes-mobile', 'ar', 'أجهزة متصلة (موبايل)');
        PERFORM insert_category_translations('objets-connectes-mobile', 'en', 'Connected Objects (Mobile)');
        PERFORM insert_category_translations('objets-connectes-mobile', 'de', 'Vernetzte Geräte (Mobile)');
        PERFORM insert_category_translations('objets-connectes-mobile', 'es', 'Objetos conectados (Móvil)');
        PERFORM insert_category_translations('objets-connectes-mobile', 'it', 'Oggetti connessi (Mobile)');

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
            PERFORM insert_category_translations('bracelets-connectes', 'ar', 'أساور لياقة');
            PERFORM insert_category_translations('bracelets-connectes', 'en', 'Fitness Bands');
            PERFORM insert_category_translations('bracelets-connectes', 'de', 'Fitnessarmbänder');
            PERFORM insert_category_translations('bracelets-connectes', 'es', 'Pulseras inteligentes');
            PERFORM insert_category_translations('bracelets-connectes', 'it', 'Bracciali smart');

            -- Level 2: trackers-gps
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('trackers-gps', 'trackers-gps', 2, l1_id, 'Trackers GPS')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('trackers-gps', 'fr', 'Trackers GPS');
            PERFORM insert_category_translations('trackers-gps', 'ar', 'أجهزة تتبع GPS');
            PERFORM insert_category_translations('trackers-gps', 'en', 'GPS Trackers');
            PERFORM insert_category_translations('trackers-gps', 'de', 'GPS‑Tracker');
            PERFORM insert_category_translations('trackers-gps', 'es', 'Rastreadores GPS');
            PERFORM insert_category_translations('trackers-gps', 'it', 'Tracker GPS');

            -- Level 2: ecouteurs-intelligents
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ecouteurs-intelligents', 'ecouteurs-intelligents', 2, l1_id, 'Écouteurs intelligents')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ecouteurs-intelligents', 'fr', 'Écouteurs intelligents');
            PERFORM insert_category_translations('ecouteurs-intelligents', 'ar', 'سماعات ذكية');
            PERFORM insert_category_translations('ecouteurs-intelligents', 'en', 'Smart Earphones');
            PERFORM insert_category_translations('ecouteurs-intelligents', 'de', 'Intelligente Ohrhörer');
            PERFORM insert_category_translations('ecouteurs-intelligents', 'es', 'Auriculares inteligentes');
            PERFORM insert_category_translations('ecouteurs-intelligents', 'it', 'Auricolari intelligenti');

            -- Level 2: lunettes-connectees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lunettes-connectees', 'lunettes-connectees', 2, l1_id, 'Lunettes connectées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lunettes-connectees', 'fr', 'Lunettes connectées');
            PERFORM insert_category_translations('lunettes-connectees', 'ar', 'نظارات ذكية');
            PERFORM insert_category_translations('lunettes-connectees', 'en', 'Smart Glasses');
            PERFORM insert_category_translations('lunettes-connectees', 'de', 'Smarte Brillen');
            PERFORM insert_category_translations('lunettes-connectees', 'es', 'Gafas inteligentes');
            PERFORM insert_category_translations('lunettes-connectees', 'it', 'Occhiali smart');

            -- Level 2: balises-bluetooth
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('balises-bluetooth', 'balises-bluetooth', 2, l1_id, 'Balises Bluetooth')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('balises-bluetooth', 'fr', 'Balises Bluetooth');
            PERFORM insert_category_translations('balises-bluetooth', 'ar', 'منارات بلوتوث');
            PERFORM insert_category_translations('balises-bluetooth', 'en', 'Bluetooth Beacons');
            PERFORM insert_category_translations('balises-bluetooth', 'de', 'Bluetooth‑Beacons');
            PERFORM insert_category_translations('balises-bluetooth', 'es', 'Balizas Bluetooth');
            PERFORM insert_category_translations('balises-bluetooth', 'it', 'Beacon Bluetooth');

            -- Level 2: assistants-vocaux-portables
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('assistants-vocaux-portables', 'assistants-vocaux-portables', 2, l1_id, 'Assistants vocaux portables')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('assistants-vocaux-portables', 'fr', 'Assistants vocaux portables');
            PERFORM insert_category_translations('assistants-vocaux-portables', 'ar', 'مساعدون صوتيون محمولون');
            PERFORM insert_category_translations('assistants-vocaux-portables', 'en', 'Portable Voice Assistants');
            PERFORM insert_category_translations('assistants-vocaux-portables', 'de', 'Portable Sprachassistenten');
            PERFORM insert_category_translations('assistants-vocaux-portables', 'es', 'Asistentes de voz portátiles');
            PERFORM insert_category_translations('assistants-vocaux-portables', 'it', 'Assistenti vocali portatili');

        -- Level 1: reseau-communication-mobile
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('reseau-communication-mobile', 'reseau-communication-mobile', 1, root_id, 'Réseau & Communication Mobile')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('reseau-communication-mobile', 'fr', 'Réseau & Communication Mobile');
        PERFORM insert_category_translations('reseau-communication-mobile', 'ar', 'شبكة واتصال الموبايل');
        PERFORM insert_category_translations('reseau-communication-mobile', 'en', 'Mobile Network & Communication');
        PERFORM insert_category_translations('reseau-communication-mobile', 'de', 'Mobiles Netzwerk & Kommunikation');
        PERFORM insert_category_translations('reseau-communication-mobile', 'es', 'Red y comunicación móvil');
        PERFORM insert_category_translations('reseau-communication-mobile', 'it', 'Rete & comunicazione mobile');

            -- Level 2: cartes-sim
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cartes-sim', 'cartes-sim', 2, l1_id, 'Cartes SIM')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cartes-sim', 'fr', 'Cartes SIM');
            PERFORM insert_category_translations('cartes-sim', 'ar', 'شرائح SIM');
            PERFORM insert_category_translations('cartes-sim', 'en', 'SIM Cards');
            PERFORM insert_category_translations('cartes-sim', 'de', 'SIM‑Karten');
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
            PERFORM insert_category_translations('routeurs-4g-5g', 'ar', 'موجّهات 4G/5G');
            PERFORM insert_category_translations('routeurs-4g-5g', 'en', '4G/5G Routers');
            PERFORM insert_category_translations('routeurs-4g-5g', 'de', '4G/5G‑Router');
            PERFORM insert_category_translations('routeurs-4g-5g', 'es', 'Routers 4G/5G');
            PERFORM insert_category_translations('routeurs-4g-5g', 'it', 'Router 4G/5G');

            -- Level 2: modems-portables
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('modems-portables', 'modems-portables', 2, l1_id, 'Modems portables')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('modems-portables', 'fr', 'Modems portables');
            PERFORM insert_category_translations('modems-portables', 'ar', 'مودمات محمولة');
            PERFORM insert_category_translations('modems-portables', 'en', 'Portable Modems');
            PERFORM insert_category_translations('modems-portables', 'de', 'Portable Modems');
            PERFORM insert_category_translations('modems-portables', 'es', 'Módems portátiles');
            PERFORM insert_category_translations('modems-portables', 'it', 'Modem portatili');

            -- Level 2: antennes-amplificateurs-reseau
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('antennes-amplificateurs-reseau', 'antennes-amplificateurs-reseau', 2, l1_id, 'Antennes et amplificateurs réseau')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('antennes-amplificateurs-reseau', 'fr', 'Antennes et amplificateurs réseau');
            PERFORM insert_category_translations('antennes-amplificateurs-reseau', 'ar', 'هوائيات ومضخّمات إشارة');
            PERFORM insert_category_translations('antennes-amplificateurs-reseau', 'en', 'Antennas and Signal Boosters');
            PERFORM insert_category_translations('antennes-amplificateurs-reseau', 'de', 'Antennen & Signalverstärker');
            PERFORM insert_category_translations('antennes-amplificateurs-reseau', 'es', 'Antenas y amplificadores de señal');
            PERFORM insert_category_translations('antennes-amplificateurs-reseau', 'it', 'Antenne & amplificatori di segnale');

            -- Level 2: repeteurs-gsm
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('repeteurs-gsm', 'repeteurs-gsm', 2, l1_id, 'Répéteurs GSM')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('repeteurs-gsm', 'fr', 'Répéteurs GSM');
            PERFORM insert_category_translations('repeteurs-gsm', 'ar', 'مكررات GSM');
            PERFORM insert_category_translations('repeteurs-gsm', 'en', 'GSM Repeaters');
            PERFORM insert_category_translations('repeteurs-gsm', 'de', 'GSM‑Repeater');
            PERFORM insert_category_translations('repeteurs-gsm', 'es', 'Repetidores GSM');
            PERFORM insert_category_translations('repeteurs-gsm', 'it', 'Ripetitori GSM');

            -- Level 2: boitiers-wifi-mobiles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('boitiers-wifi-mobiles', 'boitiers-wifi-mobiles', 2, l1_id, 'Boîtiers Wi‑Fi mobiles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('boitiers-wifi-mobiles', 'fr', 'Boîtiers Wi‑Fi mobiles');
            PERFORM insert_category_translations('boitiers-wifi-mobiles', 'ar', 'أجهزة Wi‑Fi محمولة');
            PERFORM insert_category_translations('boitiers-wifi-mobiles', 'en', 'Mobile Wi-Fi Boxes');
            PERFORM insert_category_translations('boitiers-wifi-mobiles', 'de', 'Mobile Wi‑Fi‑Boxen');
            PERFORM insert_category_translations('boitiers-wifi-mobiles', 'es', 'Cajas Wi‑Fi móviles');
            PERFORM insert_category_translations('boitiers-wifi-mobiles', 'it', 'Box Wi‑Fi mobili');

            -- Level 2: adaptateurs-reseau-telephone
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('adaptateurs-reseau-telephone', 'adaptateurs-reseau-telephone', 2, l1_id, 'Adaptateurs réseau téléphone')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('adaptateurs-reseau-telephone', 'fr', 'Adaptateurs réseau téléphone');
            PERFORM insert_category_translations('adaptateurs-reseau-telephone', 'ar', 'محولات شبكة للهاتف');
            PERFORM insert_category_translations('adaptateurs-reseau-telephone', 'en', 'Phone Network Adapters');
            PERFORM insert_category_translations('adaptateurs-reseau-telephone', 'de', 'Telefon‑Netzwerkadapter');
            PERFORM insert_category_translations('adaptateurs-reseau-telephone', 'es', 'Adaptadores de red para teléfono');
            PERFORM insert_category_translations('adaptateurs-reseau-telephone', 'it', 'Adattatori di rete per telefono');

        -- Level 1: securite-protection-mobile
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('securite-protection-mobile', 'securite-protection', 1, root_id, 'Sécurité & Protection')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('securite-protection-mobile', 'fr', 'Sécurité & Protection');
        PERFORM insert_category_translations('securite-protection-mobile', 'ar', 'أمان وحماية');
        PERFORM insert_category_translations('securite-protection-mobile', 'en', 'Security & Protection');
        PERFORM insert_category_translations('securite-protection-mobile', 'de', 'Sicherheit & Schutz');
        PERFORM insert_category_translations('securite-protection-mobile', 'es', 'Seguridad y protección');
        PERFORM insert_category_translations('securite-protection-mobile', 'it', 'Sicurezza & protezione');

            -- Level 2: antivols-telephone
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('antivols-telephone', 'antivols-telephone', 2, l1_id, 'Antivols téléphone')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('antivols-telephone', 'fr', 'Antivols téléphone');
            PERFORM insert_category_translations('antivols-telephone', 'ar', 'مضاد سرقة للهاتف');
            PERFORM insert_category_translations('antivols-telephone', 'en', 'Phone Anti-theft');
            PERFORM insert_category_translations('antivols-telephone', 'de', 'Telefon‑Diebstahlschutz');
            PERFORM insert_category_translations('antivols-telephone', 'es', 'Antirrobo para teléfonos');
            PERFORM insert_category_translations('antivols-telephone', 'it', 'Antifurto telefono');

            -- Level 2: etuis-renforces
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('etuis-renforces', 'etuis-renforces', 2, l1_id, 'Étuis renforcés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('etuis-renforces', 'fr', 'Étuis renforcés');
            PERFORM insert_category_translations('etuis-renforces', 'ar', 'أغطية معززة');
            PERFORM insert_category_translations('etuis-renforces', 'en', 'Reinforced Cases');
            PERFORM insert_category_translations('etuis-renforces', 'de', 'Verstärkte Hüllen');
            PERFORM insert_category_translations('etuis-renforces', 'es', 'Fundas reforzadas');
            PERFORM insert_category_translations('etuis-renforces', 'it', 'Cover rinforzate');

            -- Level 2: coques-anti-chute
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('coques-anti-chute', 'coques-anti-chute', 2, l1_id, 'Coques anti‑chute')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('coques-anti-chute', 'fr', 'Coques anti‑chute');
            PERFORM insert_category_translations('coques-anti-chute', 'ar', 'أغطية مضادة للسقوط');
            PERFORM insert_category_translations('coques-anti-chute', 'en', 'Drop-proof Cases');
            PERFORM insert_category_translations('coques-anti-chute', 'de', 'Sturzsichere Hüllen');
            PERFORM insert_category_translations('coques-anti-chute', 'es', 'Fundas anti‑caída');
            PERFORM insert_category_translations('coques-anti-chute', 'it', 'Cover anti‑caduta');

            -- Level 2: protections-etanches-ip68
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('protections-etanches-ip68', 'protections-etanches-ip68', 2, l1_id, 'Protections étanches IP68')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('protections-etanches-ip68', 'fr', 'Protections étanches IP68');
            PERFORM insert_category_translations('protections-etanches-ip68', 'ar', 'حمايات مقاومة للماء IP68');
            PERFORM insert_category_translations('protections-etanches-ip68', 'en', 'IP68 Waterproof Protections');
            PERFORM insert_category_translations('protections-etanches-ip68', 'de', 'Wasserdichter Schutz IP68');
            PERFORM insert_category_translations('protections-etanches-ip68', 'es', 'Protecciones impermeables IP68');
            PERFORM insert_category_translations('protections-etanches-ip68', 'it', 'Protezioni impermeabili IP68');

            -- Level 2: housses-anti-choc
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('housses-anti-choc', 'housses-anti-choc', 2, l1_id, 'Housses anti‑choc')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('housses-anti-choc', 'fr', 'Housses anti‑choc');
            PERFORM insert_category_translations('housses-anti-choc', 'ar', 'حافظات ضد الصدمات');
            PERFORM insert_category_translations('housses-anti-choc', 'en', 'Shockproof Sleeves');
            PERFORM insert_category_translations('housses-anti-choc', 'de', 'Stoßfeste Hüllen');
            PERFORM insert_category_translations('housses-anti-choc', 'es', 'Fundas anti‑choque');
            PERFORM insert_category_translations('housses-anti-choc', 'it', 'Custodie anti‑urto');

            -- Level 2: verres-trempes-haute-resistance
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('verres-trempes-haute-resistance', 'verres-trempes-haute-resistance', 2, l1_id, 'Verres trempés haute résistance')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('verres-trempes-haute-resistance', 'fr', 'Verres trempés haute résistance');
            PERFORM insert_category_translations('verres-trempes-haute-resistance', 'ar', 'زجاج مقوى عالي المقاومة');
            PERFORM insert_category_translations('verres-trempes-haute-resistance', 'en', 'High-resistance Tempered Glass');
            PERFORM insert_category_translations('verres-trempes-haute-resistance', 'de', 'Hartes Panzerglas');
            PERFORM insert_category_translations('verres-trempes-haute-resistance', 'es', 'Vidrios templados de alta resistencia');
            PERFORM insert_category_translations('verres-trempes-haute-resistance', 'it', 'Vetri temperati ad alta resistenza');

            -- Level 2: accessoires-confidentialite
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-confidentialite', 'accessoires-confidentialite', 2, l1_id, 'Accessoires de confidentialité')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('accessoires-confidentialite', 'fr', 'Accessoires de confidentialité');
            PERFORM insert_category_translations('accessoires-confidentialite', 'ar', 'ملحقات الخصوصية');
            PERFORM insert_category_translations('accessoires-confidentialite', 'en', 'Privacy Accessories');
            PERFORM insert_category_translations('accessoires-confidentialite', 'de', 'Privacy‑Zubehör');
            PERFORM insert_category_translations('accessoires-confidentialite', 'es', 'Accesorios de privacidad');
            PERFORM insert_category_translations('accessoires-confidentialite', 'it', 'Accessori privacy');

        -- Level 1: applications-services-mobiles
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('applications-services-mobiles', 'applications-services', 1, root_id, 'Applications & Services')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('applications-services-mobiles', 'fr', 'Applications & Services');
        PERFORM insert_category_translations('applications-services-mobiles', 'ar', 'تطبيقات وخدمات');
        PERFORM insert_category_translations('applications-services-mobiles', 'en', 'Apps & Services');
        PERFORM insert_category_translations('applications-services-mobiles', 'de', 'Apps & Services');
        PERFORM insert_category_translations('applications-services-mobiles', 'es', 'Aplicaciones y servicios');
        PERFORM insert_category_translations('applications-services-mobiles', 'it', 'App & servizi');

            -- Level 2: services-reparation-mobile
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('services-reparation-mobile', 'services-reparation-mobile', 2, l1_id, 'Services de réparation mobile')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('services-reparation-mobile', 'fr', 'Services de réparation mobile');
            PERFORM insert_category_translations('services-reparation-mobile', 'ar', 'خدمات إصلاح الموبايل');
            PERFORM insert_category_translations('services-reparation-mobile', 'en', 'Mobile Repair Services');
            PERFORM insert_category_translations('services-reparation-mobile', 'de', 'Mobile Reparaturdienste');
            PERFORM insert_category_translations('services-reparation-mobile', 'es', 'Servicios de reparación móvil');
            PERFORM insert_category_translations('services-reparation-mobile', 'it', 'Servizi di riparazione mobile');

            -- Level 2: debloquage-desimlockage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('debloquage-desimlockage', 'debloquage-desimlockage', 2, l1_id, 'Déblocage & désimlockage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('debloquage-desimlockage', 'fr', 'Déblocage & désimlockage');
            PERFORM insert_category_translations('debloquage-desimlockage', 'ar', 'فتح القفل وفك الشفرة');
            PERFORM insert_category_translations('debloquage-desimlockage', 'en', 'Unlocking & SIM Unlocking');
            PERFORM insert_category_translations('debloquage-desimlockage', 'de', 'Entsperrung & SIM‑Unlock');
            PERFORM insert_category_translations('debloquage-desimlockage', 'es', 'Liberación y desbloqueo');
            PERFORM insert_category_translations('debloquage-desimlockage', 'it', 'Sblocco & SIM unlock');

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
            PERFORM insert_category_translations('transfert-donnees', 'it', 'Trasferimento dati');

            -- Level 2: diagnostics-mobiles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('diagnostics-mobiles', 'diagnostics-mobiles', 2, l1_id, 'Diagnostics')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('diagnostics-mobiles', 'fr', 'Diagnostics');
            PERFORM insert_category_translations('diagnostics-mobiles', 'ar', 'تشخيصات');
            PERFORM insert_category_translations('diagnostics-mobiles', 'en', 'Diagnostics');
            PERFORM insert_category_translations('diagnostics-mobiles', 'de', 'Diagnose');
            PERFORM insert_category_translations('diagnostics-mobiles', 'es', 'Diagnósticos');
            PERFORM insert_category_translations('diagnostics-mobiles', 'it', 'Diagnostica');

            -- Level 2: accessoires-sur-mesure
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-sur-mesure', 'accessoires-sur-mesure', 2, l1_id, 'Accessoires sur mesure')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('accessoires-sur-mesure', 'fr', 'Accessoires sur mesure');
            PERFORM insert_category_translations('accessoires-sur-mesure', 'ar', 'ملحقات حسب الطلب');
            PERFORM insert_category_translations('accessoires-sur-mesure', 'en', 'Custom Accessories');
            PERFORM insert_category_translations('accessoires-sur-mesure', 'de', 'Maßgeschneiderte Zubehörteile');
            PERFORM insert_category_translations('accessoires-sur-mesure', 'es', 'Accesorios a medida');
            PERFORM insert_category_translations('accessoires-sur-mesure', 'it', 'Accessori su misura');

            -- Level 2: personnalisation-mobile
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('personnalisation-mobile', 'personnalisation-mobile', 2, l1_id, 'Personnalisation mobile')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('personnalisation-mobile', 'fr', 'Personnalisation mobile');
            PERFORM insert_category_translations('personnalisation-mobile', 'ar', 'تخصيص الهاتف');
            PERFORM insert_category_translations('personnalisation-mobile', 'en', 'Mobile Personalization');
            PERFORM insert_category_translations('personnalisation-mobile', 'de', 'Personalisierung');
            PERFORM insert_category_translations('personnalisation-mobile', 'es', 'Personalización móvil');
            PERFORM insert_category_translations('personnalisation-mobile', 'it', 'Personalizzazione mobile');

        -- Level 1: marques-populaires-mobiles
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('marques-populaires-mobiles', 'marques-populaires-mobiles', 1, root_id, 'Marques Populaires (Mobiles)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('marques-populaires-mobiles', 'fr', 'Marques Populaires (Mobiles)');
        PERFORM insert_category_translations('marques-populaires-mobiles', 'ar', 'علامات شهيرة (موبايل)');
        PERFORM insert_category_translations('marques-populaires-mobiles', 'en', 'Popular Brands (Mobiles)');
        PERFORM insert_category_translations('marques-populaires-mobiles', 'de', 'Beliebte Marken (Mobile)');
        PERFORM insert_category_translations('marques-populaires-mobiles', 'es', 'Marcas populares (Móviles)');
        PERFORM insert_category_translations('marques-populaires-mobiles', 'it', 'Marche popolari (Mobile)');

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
        PERFORM insert_category_translations('operateurs-mobiles-algerie', 'ar', 'مشغّلو الهاتف النقال في الجزائر');
        PERFORM insert_category_translations('operateurs-mobiles-algerie', 'en', 'Mobile Operators in Algeria');
        PERFORM insert_category_translations('operateurs-mobiles-algerie', 'de', 'Mobilfunkanbieter in Algerien');
        PERFORM insert_category_translations('operateurs-mobiles-algerie', 'es', 'Operadores móviles en Argelia');
        PERFORM insert_category_translations('operateurs-mobiles-algerie', 'it', 'Operatori mobili in Algeria');

            -- Level 2: djezzy
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('djezzy', 'djezzy', 2, l1_id, 'Djezzy')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('djezzy', 'fr', 'Djezzy');
            PERFORM insert_category_translations('djezzy', 'ar', 'Djezzy');
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
            PERFORM insert_category_translations('ooredoo', 'ar', 'Ooredoo');
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
            PERFORM insert_category_translations('mobilis', 'ar', 'Mobilis');
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
            PERFORM insert_category_translations('algerie-telecom', 'ar', 'Algérie TéléCOM');
            PERFORM insert_category_translations('algerie-telecom', 'en', 'Algeria Telecom');
            PERFORM insert_category_translations('algerie-telecom', 'de', 'Algérie Télécom');
            PERFORM insert_category_translations('algerie-telecom', 'es', 'Algérie Télécom');
            PERFORM insert_category_translations('algerie-telecom', 'it', 'Algérie Télécom');
END $$;