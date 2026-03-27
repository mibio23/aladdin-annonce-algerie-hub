-- Migration: Mobilier & Décoration (Generated Recursive)
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

    -- Level 0: mobilier-et-decoration
    INSERT INTO categories (id, slug, level, name)
    VALUES ('mobilier-et-decoration', 'mobilier-et-decoration', 0, 'Mobilier & Décoration')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 0, name = EXCLUDED.name
    RETURNING id INTO root_id;
    PERFORM insert_category_translations('mobilier-et-decoration', 'fr', 'Mobilier & Décoration');
    PERFORM insert_category_translations('mobilier-et-decoration', 'ar', 'الأثاث والديكور');
    PERFORM insert_category_translations('mobilier-et-decoration', 'en', 'Furniture & Decor');
    PERFORM insert_category_translations('mobilier-et-decoration', 'de', 'Möbel & Dekoration');
    PERFORM insert_category_translations('mobilier-et-decoration', 'es', 'Muebles y Decoración');
    PERFORM insert_category_translations('mobilier-et-decoration', 'it', 'Arredamento & Decorazione');

        -- Level 1: mobilier-salon-sejour
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mobilier-salon-sejour', 'mobilier-salon-sejour', 1, root_id, 'Mobilier Salon & Séjour')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('mobilier-salon-sejour', 'fr', 'Mobilier Salon & Séjour');
        PERFORM insert_category_translations('mobilier-salon-sejour', 'ar', 'أثاث غرفة المعيشة');
        PERFORM insert_category_translations('mobilier-salon-sejour', 'en', 'Living Room Furniture');
        PERFORM insert_category_translations('mobilier-salon-sejour', 'de', 'Wohnzimmermöbel');
        PERFORM insert_category_translations('mobilier-salon-sejour', 'es', 'Muebles de salón');
        PERFORM insert_category_translations('mobilier-salon-sejour', 'it', 'Arredi soggiorno');

            -- Level 2: canapes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('canapes', 'canapes', 2, l1_id, 'Canapés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('canapes', 'fr', 'Canapés');
            PERFORM insert_category_translations('canapes', 'ar', 'أرائك');
            PERFORM insert_category_translations('canapes', 'en', 'Sofas');
            PERFORM insert_category_translations('canapes', 'de', 'Sofas');
            PERFORM insert_category_translations('canapes', 'es', 'Sofás');
            PERFORM insert_category_translations('canapes', 'it', 'Divani');

                -- Level 3: angle
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('angle', 'angle', 3, l2_id, 'Angle')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('angle', 'fr', 'Angle');
                PERFORM insert_category_translations('angle', 'ar', 'ركنية');
                PERFORM insert_category_translations('angle', 'en', 'Sectional');
                PERFORM insert_category_translations('angle', 'de', 'Ecksofas');
                PERFORM insert_category_translations('angle', 'es', 'Esquinero');
                PERFORM insert_category_translations('angle', 'it', 'Ad angolo');

                -- Level 3: droit
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('droit', 'droit', 3, l2_id, 'Droit')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('droit', 'fr', 'Droit');
                PERFORM insert_category_translations('droit', 'ar', 'مستقيمة');
                PERFORM insert_category_translations('droit', 'en', 'Standard');
                PERFORM insert_category_translations('droit', 'de', 'Standardsofas');
                PERFORM insert_category_translations('droit', 'es', 'Estándar');
                PERFORM insert_category_translations('droit', 'it', 'Lineari');

                -- Level 3: convertible
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('convertible', 'convertible', 3, l2_id, 'Convertible')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('convertible', 'fr', 'Convertible');
                PERFORM insert_category_translations('convertible', 'ar', 'أريكة سرير');
                PERFORM insert_category_translations('convertible', 'en', 'Sofa bed');
                PERFORM insert_category_translations('convertible', 'de', 'Schlafsofas');
                PERFORM insert_category_translations('convertible', 'es', 'Sofá cama');
                PERFORM insert_category_translations('convertible', 'it', 'Divani letto');

                -- Level 3: modulaires
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('modulaires', 'modulaires', 3, l2_id, 'Modulaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('modulaires', 'fr', 'Modulaires');
                PERFORM insert_category_translations('modulaires', 'ar', 'موديولية');
                PERFORM insert_category_translations('modulaires', 'en', 'Modular');
                PERFORM insert_category_translations('modulaires', 'de', 'Modular');
                PERFORM insert_category_translations('modulaires', 'es', 'Modulares');
                PERFORM insert_category_translations('modulaires', 'it', 'Modulari');

            -- Level 2: fauteuils-poufs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fauteuils-poufs', 'fauteuils-poufs', 2, l1_id, 'Fauteuils & poufs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fauteuils-poufs', 'fr', 'Fauteuils & poufs');
            PERFORM insert_category_translations('fauteuils-poufs', 'ar', 'كراسي بذراعين وبوفات');
            PERFORM insert_category_translations('fauteuils-poufs', 'en', 'Armchairs & ottomans');
            PERFORM insert_category_translations('fauteuils-poufs', 'de', 'Sessel & Sitzhocker');
            PERFORM insert_category_translations('fauteuils-poufs', 'es', 'Sillones y pufs');
            PERFORM insert_category_translations('fauteuils-poufs', 'it', 'Poltrone e pouf');

                -- Level 3: fauteuils
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fauteuils', 'fauteuils', 3, l2_id, 'Fauteuils')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('fauteuils', 'fr', 'Fauteuils');
                PERFORM insert_category_translations('fauteuils', 'ar', 'كراسي بذراعين');
                PERFORM insert_category_translations('fauteuils', 'en', 'Armchairs');
                PERFORM insert_category_translations('fauteuils', 'de', 'Sessel');
                PERFORM insert_category_translations('fauteuils', 'es', 'Sillones');
                PERFORM insert_category_translations('fauteuils', 'it', 'Poltrone');

                -- Level 3: poufs
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('poufs', 'poufs', 3, l2_id, 'Poufs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('poufs', 'fr', 'Poufs');
                PERFORM insert_category_translations('poufs', 'ar', 'بوفات');
                PERFORM insert_category_translations('poufs', 'en', 'Poufs');
                PERFORM insert_category_translations('poufs', 'de', 'Sitzhocker');
                PERFORM insert_category_translations('poufs', 'es', 'Pufs');
                PERFORM insert_category_translations('poufs', 'it', 'Pouf');

            -- Level 2: tables-basses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tables-basses', 'tables-basses', 2, l1_id, 'Tables basses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tables-basses', 'fr', 'Tables basses');
            PERFORM insert_category_translations('tables-basses', 'ar', 'طاولات قهوة');
            PERFORM insert_category_translations('tables-basses', 'en', 'Coffee tables');
            PERFORM insert_category_translations('tables-basses', 'de', 'Couchtische');
            PERFORM insert_category_translations('tables-basses', 'es', 'Mesas de centro');
            PERFORM insert_category_translations('tables-basses', 'it', 'Tavolini');

                -- Level 3: bois
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bois', 'bois', 3, l2_id, 'Bois')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('bois', 'fr', 'Bois');
                PERFORM insert_category_translations('bois', 'ar', 'خشب');
                PERFORM insert_category_translations('bois', 'en', 'Wood');
                PERFORM insert_category_translations('bois', 'de', 'Holz');
                PERFORM insert_category_translations('bois', 'es', 'Madera');
                PERFORM insert_category_translations('bois', 'it', 'Legno');

                -- Level 3: verre
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('verre', 'verre', 3, l2_id, 'Verre')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('verre', 'fr', 'Verre');
                PERFORM insert_category_translations('verre', 'ar', 'زجاج');
                PERFORM insert_category_translations('verre', 'en', 'Glass');
                PERFORM insert_category_translations('verre', 'de', 'Glas');
                PERFORM insert_category_translations('verre', 'es', 'Vidrio');
                PERFORM insert_category_translations('verre', 'it', 'Vetro');

                -- Level 3: metal
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('metal', 'metal', 3, l2_id, 'Métal')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('metal', 'fr', 'Métal');
                PERFORM insert_category_translations('metal', 'ar', 'معدن');
                PERFORM insert_category_translations('metal', 'en', 'Metal');
                PERFORM insert_category_translations('metal', 'de', 'Metall');
                PERFORM insert_category_translations('metal', 'es', 'Metal');
                PERFORM insert_category_translations('metal', 'it', 'Metallo');

            -- Level 2: meubles-tv
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('meubles-tv', 'meubles-tv', 2, l1_id, 'Meubles TV')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('meubles-tv', 'fr', 'Meubles TV');
            PERFORM insert_category_translations('meubles-tv', 'ar', 'خزائن التلفاز');
            PERFORM insert_category_translations('meubles-tv', 'en', 'TV stands');
            PERFORM insert_category_translations('meubles-tv', 'de', 'TV-Möbel');
            PERFORM insert_category_translations('meubles-tv', 'es', 'Muebles de TV');
            PERFORM insert_category_translations('meubles-tv', 'it', 'Mobili TV');

            -- Level 2: etagères-bibliotheques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('etagères-bibliotheques', 'etageres-bibliotheques', 2, l1_id, 'Étagères & bibliothèques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('etagères-bibliotheques', 'fr', 'Étagères & bibliothèques');
            PERFORM insert_category_translations('etagères-bibliotheques', 'ar', 'رفوف ومكتبات');
            PERFORM insert_category_translations('etagères-bibliotheques', 'en', 'Shelves & bookcases');
            PERFORM insert_category_translations('etagères-bibliotheques', 'de', 'Regale & Bücherregale');
            PERFORM insert_category_translations('etagères-bibliotheques', 'es', 'Estanterías y librerías');
            PERFORM insert_category_translations('etagères-bibliotheques', 'it', 'Mensole e librerie');

            -- Level 2: meubles-rangement
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('meubles-rangement', 'meubles-rangement', 2, l1_id, 'Meubles de rangement')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('meubles-rangement', 'fr', 'Meubles de rangement');
            PERFORM insert_category_translations('meubles-rangement', 'ar', 'أثاث تخزين');
            PERFORM insert_category_translations('meubles-rangement', 'en', 'Storage furniture');
            PERFORM insert_category_translations('meubles-rangement', 'de', 'Aufbewahrungsmöbel');
            PERFORM insert_category_translations('meubles-rangement', 'es', 'Muebles de almacenamiento');
            PERFORM insert_category_translations('meubles-rangement', 'it', 'Mobili contenitori');

            -- Level 2: consoles-entree
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('consoles-entree', 'consoles-entree', 2, l1_id, 'Consoles d’entrée')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('consoles-entree', 'fr', 'Consoles d’entrée');
            PERFORM insert_category_translations('consoles-entree', 'ar', 'كونسولات المدخل');
            PERFORM insert_category_translations('consoles-entree', 'en', 'Entry consoles');
            PERFORM insert_category_translations('consoles-entree', 'de', 'Eingangskonsolen');
            PERFORM insert_category_translations('consoles-entree', 'es', 'Consolas de entrada');
            PERFORM insert_category_translations('consoles-entree', 'it', 'Consolle d’ingresso');

            -- Level 2: banquettes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('banquettes', 'banquettes', 2, l1_id, 'Banquettes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('banquettes', 'fr', 'Banquettes');
            PERFORM insert_category_translations('banquettes', 'ar', 'مقاعد طويلة');
            PERFORM insert_category_translations('banquettes', 'en', 'Benches');
            PERFORM insert_category_translations('banquettes', 'de', 'Sitzbänke');
            PERFORM insert_category_translations('banquettes', 'es', 'Banquetas');
            PERFORM insert_category_translations('banquettes', 'it', 'Panche');

            -- Level 2: paravents
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('paravents', 'paravents', 2, l1_id, 'Paravents')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('paravents', 'fr', 'Paravents');
            PERFORM insert_category_translations('paravents', 'ar', 'فواصل');
            PERFORM insert_category_translations('paravents', 'en', 'Room dividers');
            PERFORM insert_category_translations('paravents', 'de', 'Raumteiler');
            PERFORM insert_category_translations('paravents', 'es', 'Biombos');
            PERFORM insert_category_translations('paravents', 'it', 'Paraventi');

            -- Level 2: tables-d-appoint
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tables-d-appoint', 'tables-d-appoint', 2, l1_id, 'Tables d’appoint')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tables-d-appoint', 'fr', 'Tables d’appoint');
            PERFORM insert_category_translations('tables-d-appoint', 'ar', 'طاولات جانبية');
            PERFORM insert_category_translations('tables-d-appoint', 'en', 'Side tables');
            PERFORM insert_category_translations('tables-d-appoint', 'de', 'Beistelltische');
            PERFORM insert_category_translations('tables-d-appoint', 'es', 'Mesas auxiliares');
            PERFORM insert_category_translations('tables-d-appoint', 'it', 'Tavolini d’appoggio');

        -- Level 1: mobilier-chambre
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mobilier-chambre', 'mobilier-chambre', 1, root_id, 'Mobilier Chambre')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('mobilier-chambre', 'fr', 'Mobilier Chambre');
        PERFORM insert_category_translations('mobilier-chambre', 'ar', 'أثاث غرفة النوم');
        PERFORM insert_category_translations('mobilier-chambre', 'en', 'Bedroom Furniture');
        PERFORM insert_category_translations('mobilier-chambre', 'de', 'Schlafzimmermöbel');
        PERFORM insert_category_translations('mobilier-chambre', 'es', 'Muebles de dormitorio');
        PERFORM insert_category_translations('mobilier-chambre', 'it', 'Arredi camera');

            -- Level 2: lits
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lits', 'lits', 2, l1_id, 'Lits')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lits', 'fr', 'Lits');
            PERFORM insert_category_translations('lits', 'ar', 'أسرة');
            PERFORM insert_category_translations('lits', 'en', 'Beds');
            PERFORM insert_category_translations('lits', 'de', 'Betten');
            PERFORM insert_category_translations('lits', 'es', 'Camas');
            PERFORM insert_category_translations('lits', 'it', 'Letti');

                -- Level 3: simple
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('simple', 'simple', 3, l2_id, 'Simple')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('simple', 'fr', 'Simple');
                PERFORM insert_category_translations('simple', 'ar', 'مفرد');
                PERFORM insert_category_translations('simple', 'en', 'Single');
                PERFORM insert_category_translations('simple', 'de', 'Einzelbett');
                PERFORM insert_category_translations('simple', 'es', 'Individual');
                PERFORM insert_category_translations('simple', 'it', 'Singolo');

                -- Level 3: double
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('double', 'double', 3, l2_id, 'Double')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('double', 'fr', 'Double');
                PERFORM insert_category_translations('double', 'ar', 'مزدوج');
                PERFORM insert_category_translations('double', 'en', 'Double');
                PERFORM insert_category_translations('double', 'de', 'Doppelbett');
                PERFORM insert_category_translations('double', 'es', 'Doble');
                PERFORM insert_category_translations('double', 'it', 'Matrimoniale');

                -- Level 3: king
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('king', 'king', 3, l2_id, 'King')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('king', 'fr', 'King');
                PERFORM insert_category_translations('king', 'ar', 'كينغ');
                PERFORM insert_category_translations('king', 'en', 'King');
                PERFORM insert_category_translations('king', 'de', 'King-Size');
                PERFORM insert_category_translations('king', 'es', 'King');
                PERFORM insert_category_translations('king', 'it', 'King');

                -- Level 3: coffre
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('coffre', 'coffre', 3, l2_id, 'Coffre')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('coffre', 'fr', 'Coffre');
                PERFORM insert_category_translations('coffre', 'ar', 'بصندوق تخزين');
                PERFORM insert_category_translations('coffre', 'en', 'Storage');
                PERFORM insert_category_translations('coffre', 'de', 'Mit Bettkasten');
                PERFORM insert_category_translations('coffre', 'es', 'Con arcón');
                PERFORM insert_category_translations('coffre', 'it', 'Con contenitore');

            -- Level 2: sommier-matelas
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sommier-matelas', 'sommier-matelas', 2, l1_id, 'Sommier & matelas')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sommier-matelas', 'fr', 'Sommier & matelas');
            PERFORM insert_category_translations('sommier-matelas', 'ar', 'قاعدة سرير وفرشة');
            PERFORM insert_category_translations('sommier-matelas', 'en', 'Bed bases & mattresses');
            PERFORM insert_category_translations('sommier-matelas', 'de', 'Lattenroste & Matratzen');
            PERFORM insert_category_translations('sommier-matelas', 'es', 'Somier y colchón');
            PERFORM insert_category_translations('sommier-matelas', 'it', 'Rete e materasso');

                -- Level 3: sommier
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sommier', 'sommier', 3, l2_id, 'Sommier')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('sommier', 'fr', 'Sommier');
                PERFORM insert_category_translations('sommier', 'ar', 'قاعدة سرير');
                PERFORM insert_category_translations('sommier', 'en', 'Bed bases');
                PERFORM insert_category_translations('sommier', 'de', 'Lattenrost');
                PERFORM insert_category_translations('sommier', 'es', 'Somier');
                PERFORM insert_category_translations('sommier', 'it', 'Rete');

                -- Level 3: matelas
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('matelas', 'matelas', 3, l2_id, 'Matelas')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('matelas', 'fr', 'Matelas');
                PERFORM insert_category_translations('matelas', 'ar', 'فرشة');
                PERFORM insert_category_translations('matelas', 'en', 'Mattresses');
                PERFORM insert_category_translations('matelas', 'de', 'Matratze');
                PERFORM insert_category_translations('matelas', 'es', 'Colchón');
                PERFORM insert_category_translations('matelas', 'it', 'Materasso');

            -- Level 2: tables-de-chevet
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tables-de-chevet', 'tables-de-chevet', 2, l1_id, 'Tables de chevet')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tables-de-chevet', 'fr', 'Tables de chevet');
            PERFORM insert_category_translations('tables-de-chevet', 'ar', 'طاولات جانبية للسرير');
            PERFORM insert_category_translations('tables-de-chevet', 'en', 'Bedside tables');
            PERFORM insert_category_translations('tables-de-chevet', 'de', 'Nachttische');
            PERFORM insert_category_translations('tables-de-chevet', 'es', 'Mesitas de noche');
            PERFORM insert_category_translations('tables-de-chevet', 'it', 'Comodini');

            -- Level 2: armoires-penderies
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('armoires-penderies', 'armoires-penderies', 2, l1_id, 'Armoires & penderies')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('armoires-penderies', 'fr', 'Armoires & penderies');
            PERFORM insert_category_translations('armoires-penderies', 'ar', 'خزائن ودواليب');
            PERFORM insert_category_translations('armoires-penderies', 'en', 'Wardrobes & closets');
            PERFORM insert_category_translations('armoires-penderies', 'de', 'Kleiderschränke & Garderoben');
            PERFORM insert_category_translations('armoires-penderies', 'es', 'Armarios y guardarropas');
            PERFORM insert_category_translations('armoires-penderies', 'it', 'Armadi e guardaroba');

                -- Level 3: armoires
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('armoires', 'armoires', 3, l2_id, 'Armoires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('armoires', 'fr', 'Armoires');
                PERFORM insert_category_translations('armoires', 'ar', 'خزائن');
                PERFORM insert_category_translations('armoires', 'en', 'Wardrobes');
                PERFORM insert_category_translations('armoires', 'de', 'Kleiderschränke');
                PERFORM insert_category_translations('armoires', 'es', 'Armarios');
                PERFORM insert_category_translations('armoires', 'it', 'Armadi');

                -- Level 3: penderies
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('penderies', 'penderies', 3, l2_id, 'Penderies')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('penderies', 'fr', 'Penderies');
                PERFORM insert_category_translations('penderies', 'ar', 'دواليب');
                PERFORM insert_category_translations('penderies', 'en', 'Closets');
                PERFORM insert_category_translations('penderies', 'de', 'Garderoben');
                PERFORM insert_category_translations('penderies', 'es', 'Guardarropas');
                PERFORM insert_category_translations('penderies', 'it', 'Guardaroba');

            -- Level 2: commode
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('commode', 'commode', 2, l1_id, 'Commode')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('commode', 'fr', 'Commode');
            PERFORM insert_category_translations('commode', 'ar', 'خزانة أدراج');
            PERFORM insert_category_translations('commode', 'en', 'Dressers');
            PERFORM insert_category_translations('commode', 'de', 'Kommoden');
            PERFORM insert_category_translations('commode', 'es', 'Cómodas');
            PERFORM insert_category_translations('commode', 'it', 'Cassettiere');

            -- Level 2: coiffeuses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('coiffeuses', 'coiffeuses', 2, l1_id, 'Coiffeuses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('coiffeuses', 'fr', 'Coiffeuses');
            PERFORM insert_category_translations('coiffeuses', 'ar', 'طاولات زينة');
            PERFORM insert_category_translations('coiffeuses', 'en', 'Vanity tables');
            PERFORM insert_category_translations('coiffeuses', 'de', 'Schminktische');
            PERFORM insert_category_translations('coiffeuses', 'es', 'Tocadores');
            PERFORM insert_category_translations('coiffeuses', 'it', 'Toeletta');

            -- Level 2: bancs-de-lit
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bancs-de-lit', 'bancs-de-lit', 2, l1_id, 'Bancs de lit')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bancs-de-lit', 'fr', 'Bancs de lit');
            PERFORM insert_category_translations('bancs-de-lit', 'ar', 'مقاعد عند السرير');
            PERFORM insert_category_translations('bancs-de-lit', 'en', 'Bed benches');
            PERFORM insert_category_translations('bancs-de-lit', 'de', 'Bettbänke');
            PERFORM insert_category_translations('bancs-de-lit', 'es', 'Bancos de cama');
            PERFORM insert_category_translations('bancs-de-lit', 'it', 'Panche da letto');

            -- Level 2: tetes-de-lit
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tetes-de-lit', 'tetes-de-lit', 2, l1_id, 'Têtes de lit')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tetes-de-lit', 'fr', 'Têtes de lit');
            PERFORM insert_category_translations('tetes-de-lit', 'ar', 'لوحات أمامية للسرير');
            PERFORM insert_category_translations('tetes-de-lit', 'en', 'Headboards');
            PERFORM insert_category_translations('tetes-de-lit', 'de', 'Kopfteile');
            PERFORM insert_category_translations('tetes-de-lit', 'es', 'Cabeceros');
            PERFORM insert_category_translations('tetes-de-lit', 'it', 'Testiere');

            -- Level 2: rangement-chaussures
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('rangement-chaussures', 'rangement-chaussures', 2, l1_id, 'Rangement chaussures')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('rangement-chaussures', 'fr', 'Rangement chaussures');
            PERFORM insert_category_translations('rangement-chaussures', 'ar', 'تخزين الأحذية');
            PERFORM insert_category_translations('rangement-chaussures', 'en', 'Shoe storage');
            PERFORM insert_category_translations('rangement-chaussures', 'de', 'Schuhaufbewahrung');
            PERFORM insert_category_translations('rangement-chaussures', 'es', 'Almacenamiento de zapatos');
            PERFORM insert_category_translations('rangement-chaussures', 'it', 'Portascarpe');

        -- Level 1: mobilier-salle-a-manger
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mobilier-salle-a-manger', 'mobilier-salle-a-manger', 1, root_id, 'Mobilier Salle à Manger')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('mobilier-salle-a-manger', 'fr', 'Mobilier Salle à Manger');
        PERFORM insert_category_translations('mobilier-salle-a-manger', 'ar', 'أثاث غرفة الطعام');
        PERFORM insert_category_translations('mobilier-salle-a-manger', 'en', 'Dining Room Furniture');
        PERFORM insert_category_translations('mobilier-salle-a-manger', 'de', 'Esszimmermöbel');
        PERFORM insert_category_translations('mobilier-salle-a-manger', 'es', 'Comedor');
        PERFORM insert_category_translations('mobilier-salle-a-manger', 'it', 'Sala da pranzo');

            -- Level 2: tables-a-manger
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tables-a-manger', 'tables-a-manger', 2, l1_id, 'Tables à manger')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tables-a-manger', 'fr', 'Tables à manger');
            PERFORM insert_category_translations('tables-a-manger', 'ar', 'طاولات طعام');
            PERFORM insert_category_translations('tables-a-manger', 'en', 'Dining tables');
            PERFORM insert_category_translations('tables-a-manger', 'de', 'Esstische');
            PERFORM insert_category_translations('tables-a-manger', 'es', 'Mesas de comedor');
            PERFORM insert_category_translations('tables-a-manger', 'it', 'Tavoli da pranzo');

                -- Level 3: bois
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bois', 'bois', 3, l2_id, 'Bois')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('bois', 'fr', 'Bois');
                PERFORM insert_category_translations('bois', 'ar', 'خشب');
                PERFORM insert_category_translations('bois', 'en', 'Wood');
                PERFORM insert_category_translations('bois', 'de', 'Holz');
                PERFORM insert_category_translations('bois', 'es', 'Madera');
                PERFORM insert_category_translations('bois', 'it', 'Legno');

                -- Level 3: extensibles
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('extensibles', 'extensibles', 3, l2_id, 'Extensibles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('extensibles', 'fr', 'Extensibles');
                PERFORM insert_category_translations('extensibles', 'ar', 'قابلة للتمديد');
                PERFORM insert_category_translations('extensibles', 'en', 'Extendable');
                PERFORM insert_category_translations('extensibles', 'de', 'Ausziehbar');
                PERFORM insert_category_translations('extensibles', 'es', 'Extensibles');
                PERFORM insert_category_translations('extensibles', 'it', 'Allungabili');

                -- Level 3: verre
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('verre', 'verre', 3, l2_id, 'Verre')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('verre', 'fr', 'Verre');
                PERFORM insert_category_translations('verre', 'ar', 'زجاج');
                PERFORM insert_category_translations('verre', 'en', 'Glass');
                PERFORM insert_category_translations('verre', 'de', 'Glas');
                PERFORM insert_category_translations('verre', 'es', 'Vidrio');
                PERFORM insert_category_translations('verre', 'it', 'Vetro');

            -- Level 2: chaises-fauteuils-salle-a-manger
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chaises-fauteuils-salle-a-manger', 'chaises-fauteuils-salle-a-manger', 2, l1_id, 'Chaises & fauteuils de salle à manger')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chaises-fauteuils-salle-a-manger', 'fr', 'Chaises & fauteuils de salle à manger');
            PERFORM insert_category_translations('chaises-fauteuils-salle-a-manger', 'ar', 'كراسي وكراسي بذراعين لغرفة الطعام');
            PERFORM insert_category_translations('chaises-fauteuils-salle-a-manger', 'en', 'Dining chairs & armchairs');
            PERFORM insert_category_translations('chaises-fauteuils-salle-a-manger', 'de', 'Esszimmerstühle & Sessel');
            PERFORM insert_category_translations('chaises-fauteuils-salle-a-manger', 'es', 'Sillas y sillones de comedor');
            PERFORM insert_category_translations('chaises-fauteuils-salle-a-manger', 'it', 'Sedie e poltrone da pranzo');

                -- Level 3: chaises
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chaises', 'chaises', 3, l2_id, 'Chaises')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('chaises', 'fr', 'Chaises');
                PERFORM insert_category_translations('chaises', 'ar', 'كراسي');
                PERFORM insert_category_translations('chaises', 'en', 'Chairs');
                PERFORM insert_category_translations('chaises', 'de', 'Stühle');
                PERFORM insert_category_translations('chaises', 'es', 'Sillas');
                PERFORM insert_category_translations('chaises', 'it', 'Sedie');

                -- Level 3: fauteuils
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fauteuils', 'fauteuils', 3, l2_id, 'Fauteuils')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('fauteuils', 'fr', 'Fauteuils');
                PERFORM insert_category_translations('fauteuils', 'ar', 'كراسي بذراعين');
                PERFORM insert_category_translations('fauteuils', 'en', 'Armchairs');
                PERFORM insert_category_translations('fauteuils', 'de', 'Sessel');
                PERFORM insert_category_translations('fauteuils', 'es', 'Sillones');
                PERFORM insert_category_translations('fauteuils', 'it', 'Poltrone');

            -- Level 2: buffets-bahuts
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('buffets-bahuts', 'buffets-bahuts', 2, l1_id, 'Buffets & bahuts')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('buffets-bahuts', 'fr', 'Buffets & bahuts');
            PERFORM insert_category_translations('buffets-bahuts', 'ar', 'بوفيهات وخزائن جانبية');
            PERFORM insert_category_translations('buffets-bahuts', 'en', 'Sideboards & buffets');
            PERFORM insert_category_translations('buffets-bahuts', 'de', 'Buffets & Anrichten');
            PERFORM insert_category_translations('buffets-bahuts', 'es', 'Buffets y aparadores');
            PERFORM insert_category_translations('buffets-bahuts', 'it', 'Credenze e madie');

                -- Level 3: buffets
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('buffets', 'buffets', 3, l2_id, 'Buffets')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('buffets', 'fr', 'Buffets');
                PERFORM insert_category_translations('buffets', 'ar', 'بوفيهات');
                PERFORM insert_category_translations('buffets', 'en', 'Buffets');
                PERFORM insert_category_translations('buffets', 'de', 'Buffets');
                PERFORM insert_category_translations('buffets', 'es', 'Buffets');
                PERFORM insert_category_translations('buffets', 'it', 'Credenze');

                -- Level 3: bahuts
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bahuts', 'bahuts', 3, l2_id, 'Bahuts')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('bahuts', 'fr', 'Bahuts');
                PERFORM insert_category_translations('bahuts', 'ar', 'خزائن جانبية');
                PERFORM insert_category_translations('bahuts', 'en', 'Sideboards');
                PERFORM insert_category_translations('bahuts', 'de', 'Anrichten');
                PERFORM insert_category_translations('bahuts', 'es', 'Aparadores');
                PERFORM insert_category_translations('bahuts', 'it', 'Madie');

            -- Level 2: vaisseliers
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vaisseliers', 'vaisseliers', 2, l1_id, 'Vaisseliers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('vaisseliers', 'fr', 'Vaisseliers');
            PERFORM insert_category_translations('vaisseliers', 'ar', 'خزائن عرض للأواني');
            PERFORM insert_category_translations('vaisseliers', 'en', 'China cabinets');
            PERFORM insert_category_translations('vaisseliers', 'de', 'Geschirrschränke');
            PERFORM insert_category_translations('vaisseliers', 'es', 'Vitrinas');
            PERFORM insert_category_translations('vaisseliers', 'it', 'Vetrine');

            -- Level 2: meubles-bar
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('meubles-bar', 'meubles-bar', 2, l1_id, 'Meubles bar')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('meubles-bar', 'fr', 'Meubles bar');
            PERFORM insert_category_translations('meubles-bar', 'ar', 'أثاث بار');
            PERFORM insert_category_translations('meubles-bar', 'en', 'Bar furniture');
            PERFORM insert_category_translations('meubles-bar', 'de', 'Bar-Möbel');
            PERFORM insert_category_translations('meubles-bar', 'es', 'Muebles bar');
            PERFORM insert_category_translations('meubles-bar', 'it', 'Mobili bar');

            -- Level 2: tabourets-chaises-hautes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tabourets-chaises-hautes', 'tabourets-chaises-hautes', 2, l1_id, 'Tabourets & chaises hautes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tabourets-chaises-hautes', 'fr', 'Tabourets & chaises hautes');
            PERFORM insert_category_translations('tabourets-chaises-hautes', 'ar', 'مقاعد مرتفعة وكراسي عالية');
            PERFORM insert_category_translations('tabourets-chaises-hautes', 'en', 'Stools & high chairs');
            PERFORM insert_category_translations('tabourets-chaises-hautes', 'de', 'Barhocker & Hochstühle');
            PERFORM insert_category_translations('tabourets-chaises-hautes', 'es', 'Taburetes y sillas altas');
            PERFORM insert_category_translations('tabourets-chaises-hautes', 'it', 'Sgabelli e sedie alte');

                -- Level 3: tabourets
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tabourets', 'tabourets', 3, l2_id, 'Tabourets')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('tabourets', 'fr', 'Tabourets');
                PERFORM insert_category_translations('tabourets', 'ar', 'كراسي صغيرة');
                PERFORM insert_category_translations('tabourets', 'en', 'Stools');
                PERFORM insert_category_translations('tabourets', 'de', 'Hocker');
                PERFORM insert_category_translations('tabourets', 'es', 'Taburetes');
                PERFORM insert_category_translations('tabourets', 'it', 'Sgabelli');

                -- Level 3: chaises-hautes
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chaises-hautes', 'chaises-hautes', 3, l2_id, 'Chaises hautes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('chaises-hautes', 'fr', 'Chaises hautes');
                PERFORM insert_category_translations('chaises-hautes', 'ar', 'كراسي عالية');
                PERFORM insert_category_translations('chaises-hautes', 'en', 'High chairs');
                PERFORM insert_category_translations('chaises-hautes', 'de', 'Hochstühle');
                PERFORM insert_category_translations('chaises-hautes', 'es', 'Sillas altas');
                PERFORM insert_category_translations('chaises-hautes', 'it', 'Sedie alte');

        -- Level 1: mobilier-cuisine
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mobilier-cuisine', 'mobilier-cuisine', 1, root_id, 'Mobilier Cuisine')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('mobilier-cuisine', 'fr', 'Mobilier Cuisine');
        PERFORM insert_category_translations('mobilier-cuisine', 'ar', 'أثاث المطبخ');
        PERFORM insert_category_translations('mobilier-cuisine', 'en', 'Kitchen Furniture');
        PERFORM insert_category_translations('mobilier-cuisine', 'de', 'Küchenmöbel');
        PERFORM insert_category_translations('mobilier-cuisine', 'es', 'Muebles de cocina');
        PERFORM insert_category_translations('mobilier-cuisine', 'it', 'Mobili cucina');

            -- Level 2: meubles-cuisine-modulaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('meubles-cuisine-modulaires', 'meubles-cuisine-modulaires', 2, l1_id, 'Meubles cuisine modulaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('meubles-cuisine-modulaires', 'fr', 'Meubles cuisine modulaires');
            PERFORM insert_category_translations('meubles-cuisine-modulaires', 'ar', 'أثاث مطبخ وحدات');
            PERFORM insert_category_translations('meubles-cuisine-modulaires', 'en', 'Modular kitchen units');
            PERFORM insert_category_translations('meubles-cuisine-modulaires', 'de', 'Modulare Küchenmöbel');
            PERFORM insert_category_translations('meubles-cuisine-modulaires', 'es', 'Muebles de cocina modulares');
            PERFORM insert_category_translations('meubles-cuisine-modulaires', 'it', 'Mobili cucina modulari');

            -- Level 2: plans-de-travail
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('plans-de-travail', 'plans-de-travail', 2, l1_id, 'Plans de travail')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('plans-de-travail', 'fr', 'Plans de travail');
            PERFORM insert_category_translations('plans-de-travail', 'ar', 'أسطح عمل');
            PERFORM insert_category_translations('plans-de-travail', 'en', 'Countertops');
            PERFORM insert_category_translations('plans-de-travail', 'de', 'Arbeitsplatten');
            PERFORM insert_category_translations('plans-de-travail', 'es', 'Encimeras');
            PERFORM insert_category_translations('plans-de-travail', 'it', 'Piani di lavoro');

            -- Level 2: ilots-dessertes-cuisine
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ilots-dessertes-cuisine', 'ilots-dessertes-cuisine', 2, l1_id, 'Îlots & dessertes cuisine')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ilots-dessertes-cuisine', 'fr', 'Îlots & dessertes cuisine');
            PERFORM insert_category_translations('ilots-dessertes-cuisine', 'ar', 'جزر المطبخ وعربات تقديم');
            PERFORM insert_category_translations('ilots-dessertes-cuisine', 'en', 'Kitchen islands & servers');
            PERFORM insert_category_translations('ilots-dessertes-cuisine', 'de', 'Kücheninseln & Servierwagen');
            PERFORM insert_category_translations('ilots-dessertes-cuisine', 'es', 'Islas y carritos de cocina');
            PERFORM insert_category_translations('ilots-dessertes-cuisine', 'it', 'Isole e carrelli cucina');

                -- Level 3: ilots
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ilots', 'ilots', 3, l2_id, 'Îlots')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('ilots', 'fr', 'Îlots');
                PERFORM insert_category_translations('ilots', 'ar', 'جزر المطبخ');
                PERFORM insert_category_translations('ilots', 'en', 'Islands');
                PERFORM insert_category_translations('ilots', 'de', 'Kücheninseln');
                PERFORM insert_category_translations('ilots', 'es', 'Islas');
                PERFORM insert_category_translations('ilots', 'it', 'Isole');

                -- Level 3: dessertes
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('dessertes', 'dessertes', 3, l2_id, 'Dessertes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('dessertes', 'fr', 'Dessertes');
                PERFORM insert_category_translations('dessertes', 'ar', 'عربات تقديم');
                PERFORM insert_category_translations('dessertes', 'en', 'Servers');
                PERFORM insert_category_translations('dessertes', 'de', 'Servierwagen');
                PERFORM insert_category_translations('dessertes', 'es', 'Carritos');
                PERFORM insert_category_translations('dessertes', 'it', 'Carrelli');

            -- Level 2: rangement-cuisine
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('rangement-cuisine', 'rangement-cuisine', 2, l1_id, 'Rangement cuisine')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('rangement-cuisine', 'fr', 'Rangement cuisine');
            PERFORM insert_category_translations('rangement-cuisine', 'ar', 'تخزين المطبخ');
            PERFORM insert_category_translations('rangement-cuisine', 'en', 'Kitchen storage');
            PERFORM insert_category_translations('rangement-cuisine', 'de', 'Küchenaufbewahrung');
            PERFORM insert_category_translations('rangement-cuisine', 'es', 'Almacenamiento de cocina');
            PERFORM insert_category_translations('rangement-cuisine', 'it', 'Organizzazione cucina');

            -- Level 2: chariots-dessertes-roulettes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chariots-dessertes-roulettes', 'chariots-dessertes-roulettes', 2, l1_id, 'Chariots & desserte à roulettes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chariots-dessertes-roulettes', 'fr', 'Chariots & desserte à roulettes');
            PERFORM insert_category_translations('chariots-dessertes-roulettes', 'ar', 'عربات مطبخ ومتحركة');
            PERFORM insert_category_translations('chariots-dessertes-roulettes', 'en', 'Carts & rolling servers');
            PERFORM insert_category_translations('chariots-dessertes-roulettes', 'de', 'Küchenwagen & Rollwagen');
            PERFORM insert_category_translations('chariots-dessertes-roulettes', 'es', 'Carritos y mesas con ruedas');
            PERFORM insert_category_translations('chariots-dessertes-roulettes', 'it', 'Carrelli e tavolini con ruote');

                -- Level 3: chariots
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chariots', 'chariots', 3, l2_id, 'Chariots')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('chariots', 'fr', 'Chariots');
                PERFORM insert_category_translations('chariots', 'ar', 'عربات مطبخ');
                PERFORM insert_category_translations('chariots', 'en', 'Carts');
                PERFORM insert_category_translations('chariots', 'de', 'Küchenwagen');
                PERFORM insert_category_translations('chariots', 'es', 'Carritos');
                PERFORM insert_category_translations('chariots', 'it', 'Carrelli');

                -- Level 3: dessertes-a-roulettes
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('dessertes-a-roulettes', 'dessertes-a-roulettes', 3, l2_id, 'Dessertes à roulettes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('dessertes-a-roulettes', 'fr', 'Dessertes à roulettes');
                PERFORM insert_category_translations('dessertes-a-roulettes', 'ar', 'عربات متحركة');
                PERFORM insert_category_translations('dessertes-a-roulettes', 'en', 'Rolling servers');
                PERFORM insert_category_translations('dessertes-a-roulettes', 'de', 'Rollwagen');
                PERFORM insert_category_translations('dessertes-a-roulettes', 'es', 'Mesas con ruedas');
                PERFORM insert_category_translations('dessertes-a-roulettes', 'it', 'Tavolini con ruote');

            -- Level 2: tabourets-cuisine
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tabourets-cuisine', 'tabourets-cuisine', 2, l1_id, 'Tabourets cuisine')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tabourets-cuisine', 'fr', 'Tabourets cuisine');
            PERFORM insert_category_translations('tabourets-cuisine', 'ar', 'مقاعد مطبخ');
            PERFORM insert_category_translations('tabourets-cuisine', 'en', 'Kitchen stools');
            PERFORM insert_category_translations('tabourets-cuisine', 'de', 'Küchenhocker');
            PERFORM insert_category_translations('tabourets-cuisine', 'es', 'Taburetes de cocina');
            PERFORM insert_category_translations('tabourets-cuisine', 'it', 'Sgabelli cucina');

            -- Level 2: racks-epices-etageres-murales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('racks-epices-etageres-murales', 'racks-epices-etageres-murales', 2, l1_id, 'Racks épices & étagères murales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('racks-epices-etageres-murales', 'fr', 'Racks épices & étagères murales');
            PERFORM insert_category_translations('racks-epices-etageres-murales', 'ar', 'حوامل توابل ورفوف حائط');
            PERFORM insert_category_translations('racks-epices-etageres-murales', 'en', 'Spice racks & wall shelves');
            PERFORM insert_category_translations('racks-epices-etageres-murales', 'de', 'Gewürzregale & Wandregale');
            PERFORM insert_category_translations('racks-epices-etageres-murales', 'es', 'Especieros y estantes de pared');
            PERFORM insert_category_translations('racks-epices-etageres-murales', 'it', 'Portaspezie e mensole a parete');

                -- Level 3: racks-epices
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('racks-epices', 'racks-epices', 3, l2_id, 'Racks épices')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('racks-epices', 'fr', 'Racks épices');
                PERFORM insert_category_translations('racks-epices', 'ar', 'حوامل توابل');
                PERFORM insert_category_translations('racks-epices', 'en', 'Spice racks');
                PERFORM insert_category_translations('racks-epices', 'de', 'Gewürzregale');
                PERFORM insert_category_translations('racks-epices', 'es', 'Especieros');
                PERFORM insert_category_translations('racks-epices', 'it', 'Portaspezie');

                -- Level 3: etageres-murales
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('etageres-murales', 'etageres-murales', 3, l2_id, 'Étagères murales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('etageres-murales', 'fr', 'Étagères murales');
                PERFORM insert_category_translations('etageres-murales', 'ar', 'رفوف حائط');
                PERFORM insert_category_translations('etageres-murales', 'en', 'Wall shelves');
                PERFORM insert_category_translations('etageres-murales', 'de', 'Wandregale');
                PERFORM insert_category_translations('etageres-murales', 'es', 'Estantes de pared');
                PERFORM insert_category_translations('etageres-murales', 'it', 'Mensole a parete');

        -- Level 1: mobilier-bureau
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mobilier-bureau', 'mobilier-bureau', 1, root_id, 'Mobilier Bureau')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('mobilier-bureau', 'fr', 'Mobilier Bureau');
        PERFORM insert_category_translations('mobilier-bureau', 'ar', 'أثاث المكتب');
        PERFORM insert_category_translations('mobilier-bureau', 'en', 'Office Furniture');
        PERFORM insert_category_translations('mobilier-bureau', 'de', 'Büromöbel');
        PERFORM insert_category_translations('mobilier-bureau', 'es', 'Muebles de oficina');
        PERFORM insert_category_translations('mobilier-bureau', 'it', 'Arredi ufficio');

            -- Level 2: bureaux-classiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bureaux-classiques', 'bureaux-classiques', 2, l1_id, 'Bureaux classiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bureaux-classiques', 'fr', 'Bureaux classiques');
            PERFORM insert_category_translations('bureaux-classiques', 'ar', 'مكاتب كلاسيكية');
            PERFORM insert_category_translations('bureaux-classiques', 'en', 'Traditional desks');
            PERFORM insert_category_translations('bureaux-classiques', 'de', 'Klassische Schreibtische');
            PERFORM insert_category_translations('bureaux-classiques', 'es', 'Escritorios clásicos');
            PERFORM insert_category_translations('bureaux-classiques', 'it', 'Scrivanie classiche');

            -- Level 2: bureaux-gaming
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bureaux-gaming', 'bureaux-gaming', 2, l1_id, 'Bureaux gaming')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bureaux-gaming', 'fr', 'Bureaux gaming');
            PERFORM insert_category_translations('bureaux-gaming', 'ar', 'مكاتب ألعاب');
            PERFORM insert_category_translations('bureaux-gaming', 'en', 'Gaming desks');
            PERFORM insert_category_translations('bureaux-gaming', 'de', 'Gaming-Schreibtische');
            PERFORM insert_category_translations('bureaux-gaming', 'es', 'Escritorios gaming');
            PERFORM insert_category_translations('bureaux-gaming', 'it', 'Scrivanie gaming');

            -- Level 2: chaises-bureau-ergonomiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chaises-bureau-ergonomiques', 'chaises-bureau-ergonomiques', 2, l1_id, 'Chaises de bureau ergonomiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chaises-bureau-ergonomiques', 'fr', 'Chaises de bureau ergonomiques');
            PERFORM insert_category_translations('chaises-bureau-ergonomiques', 'ar', 'كراسي مكتب مريحة');
            PERFORM insert_category_translations('chaises-bureau-ergonomiques', 'en', 'Ergonomic office chairs');
            PERFORM insert_category_translations('chaises-bureau-ergonomiques', 'de', 'Ergonomische Bürostühle');
            PERFORM insert_category_translations('chaises-bureau-ergonomiques', 'es', 'Sillas de oficina ergonómicas');
            PERFORM insert_category_translations('chaises-bureau-ergonomiques', 'it', 'Sedie da ufficio ergonomiche');

            -- Level 2: caissons-rangements
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('caissons-rangements', 'caissons-rangements', 2, l1_id, 'Caissons & rangements')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('caissons-rangements', 'fr', 'Caissons & rangements');
            PERFORM insert_category_translations('caissons-rangements', 'ar', 'خزائن متحركة وتخزين');
            PERFORM insert_category_translations('caissons-rangements', 'en', 'Pedestals & storage');
            PERFORM insert_category_translations('caissons-rangements', 'de', 'Rollcontainer & Aufbewahrung');
            PERFORM insert_category_translations('caissons-rangements', 'es', 'Cajoneras y almacenamiento');
            PERFORM insert_category_translations('caissons-rangements', 'it', 'Cassettiere e contenitori');

                -- Level 3: caissons
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('caissons', 'caissons', 3, l2_id, 'Caissons')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('caissons', 'fr', 'Caissons');
                PERFORM insert_category_translations('caissons', 'ar', 'خزائن متحركة');
                PERFORM insert_category_translations('caissons', 'en', 'Pedestals');
                PERFORM insert_category_translations('caissons', 'de', 'Rollcontainer');
                PERFORM insert_category_translations('caissons', 'es', 'Cajoneras');
                PERFORM insert_category_translations('caissons', 'it', 'Cassettiere');

                -- Level 3: rangements
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('rangements', 'rangements', 3, l2_id, 'Rangements')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('rangements', 'fr', 'Rangements');
                PERFORM insert_category_translations('rangements', 'ar', 'تخزين');
                PERFORM insert_category_translations('rangements', 'en', 'Storage');
                PERFORM insert_category_translations('rangements', 'de', 'Aufbewahrung');
                PERFORM insert_category_translations('rangements', 'es', 'Almacenamiento');
                PERFORM insert_category_translations('rangements', 'it', 'Contenitori');

            -- Level 2: bibliotheques-pro
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bibliotheques-pro', 'bibliotheques-pro', 2, l1_id, 'Bibliothèques pro')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bibliotheques-pro', 'fr', 'Bibliothèques pro');
            PERFORM insert_category_translations('bibliotheques-pro', 'ar', 'مكتبات للمكتب');
            PERFORM insert_category_translations('bibliotheques-pro', 'en', 'Professional bookcases');
            PERFORM insert_category_translations('bibliotheques-pro', 'de', 'Büro-Bücherregale');
            PERFORM insert_category_translations('bibliotheques-pro', 'es', 'Bibliotecas profesionales');
            PERFORM insert_category_translations('bibliotheques-pro', 'it', 'Librerie professionali');

            -- Level 2: support-ecrans-accessoires-bureau
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('support-ecrans-accessoires-bureau', 'support-ecrans-accessoires-bureau', 2, l1_id, 'Support écrans & accessoires bureau')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('support-ecrans-accessoires-bureau', 'fr', 'Support écrans & accessoires bureau');
            PERFORM insert_category_translations('support-ecrans-accessoires-bureau', 'ar', 'حاملات شاشات وإكسسوارات المكتب');
            PERFORM insert_category_translations('support-ecrans-accessoires-bureau', 'en', 'Monitor stands & office accessories');
            PERFORM insert_category_translations('support-ecrans-accessoires-bureau', 'de', 'Monitorhalterungen & Büroaccessoires');
            PERFORM insert_category_translations('support-ecrans-accessoires-bureau', 'es', 'Soportes de monitor y accesorios');
            PERFORM insert_category_translations('support-ecrans-accessoires-bureau', 'it', 'Supporti monitor e accessori ufficio');

                -- Level 3: support-ecrans
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('support-ecrans', 'support-ecrans', 3, l2_id, 'Support écrans')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('support-ecrans', 'fr', 'Support écrans');
                PERFORM insert_category_translations('support-ecrans', 'ar', 'حاملات شاشات');
                PERFORM insert_category_translations('support-ecrans', 'en', 'Monitor stands');
                PERFORM insert_category_translations('support-ecrans', 'de', 'Monitorhalterungen');
                PERFORM insert_category_translations('support-ecrans', 'es', 'Soportes de monitor');
                PERFORM insert_category_translations('support-ecrans', 'it', 'Supporti monitor');

                -- Level 3: accessoires-bureau
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-bureau', 'accessoires-bureau', 3, l2_id, 'Accessoires bureau')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('accessoires-bureau', 'fr', 'Accessoires bureau');
                PERFORM insert_category_translations('accessoires-bureau', 'ar', 'إكسسوارات المكتب');
                PERFORM insert_category_translations('accessoires-bureau', 'en', 'Office accessories');
                PERFORM insert_category_translations('accessoires-bureau', 'de', 'Büroaccessoires');
                PERFORM insert_category_translations('accessoires-bureau', 'es', 'Accesorios de oficina');
                PERFORM insert_category_translations('accessoires-bureau', 'it', 'Accessori ufficio');

            -- Level 2: tables-dessin-architecte
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tables-dessin-architecte', 'tables-dessin-architecte', 2, l1_id, 'Tables dessin & architecte')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tables-dessin-architecte', 'fr', 'Tables dessin & architecte');
            PERFORM insert_category_translations('tables-dessin-architecte', 'ar', 'طاولات رسم ومعمار');
            PERFORM insert_category_translations('tables-dessin-architecte', 'en', 'Drafting & architect tables');
            PERFORM insert_category_translations('tables-dessin-architecte', 'de', 'Zeichentische & Architektentische');
            PERFORM insert_category_translations('tables-dessin-architecte', 'es', 'Mesas de dibujo y arquitecto');
            PERFORM insert_category_translations('tables-dessin-architecte', 'it', 'Tavoli da disegno e architetto');

        -- Level 1: mobilier-salle-de-bain
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mobilier-salle-de-bain', 'mobilier-salle-de-bain', 1, root_id, 'Mobilier Salle de Bain')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('mobilier-salle-de-bain', 'fr', 'Mobilier Salle de Bain');
        PERFORM insert_category_translations('mobilier-salle-de-bain', 'ar', 'أثاث الحمام');
        PERFORM insert_category_translations('mobilier-salle-de-bain', 'en', 'Bathroom Furniture');
        PERFORM insert_category_translations('mobilier-salle-de-bain', 'de', 'Badezimmermöbel');
        PERFORM insert_category_translations('mobilier-salle-de-bain', 'es', 'Muebles de baño');
        PERFORM insert_category_translations('mobilier-salle-de-bain', 'it', 'Arredi bagno');

            -- Level 2: meubles-sous-vasques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('meubles-sous-vasques', 'meubles-sous-vasques', 2, l1_id, 'Meubles sous-vasques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('meubles-sous-vasques', 'fr', 'Meubles sous-vasques');
            PERFORM insert_category_translations('meubles-sous-vasques', 'ar', 'خزائن تحت المغاسل');
            PERFORM insert_category_translations('meubles-sous-vasques', 'en', 'Vanity base cabinets');
            PERFORM insert_category_translations('meubles-sous-vasques', 'de', 'Waschbeckenunterschränke');
            PERFORM insert_category_translations('meubles-sous-vasques', 'es', 'Muebles bajo lavabo');
            PERFORM insert_category_translations('meubles-sous-vasques', 'it', 'Mobili sottolavabo');

            -- Level 2: colonnes-rangements-bain
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('colonnes-rangements-bain', 'colonnes-rangements-bain', 2, l1_id, 'Colonnes & rangements')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('colonnes-rangements-bain', 'fr', 'Colonnes & rangements');
            PERFORM insert_category_translations('colonnes-rangements-bain', 'ar', 'خزائن عمودية وتخزين');
            PERFORM insert_category_translations('colonnes-rangements-bain', 'en', 'Tall units & storage');
            PERFORM insert_category_translations('colonnes-rangements-bain', 'de', 'Hochschränke & Aufbewahrung');
            PERFORM insert_category_translations('colonnes-rangements-bain', 'es', 'Columnas y almacenamiento');
            PERFORM insert_category_translations('colonnes-rangements-bain', 'it', 'Colonne e contenitori');

                -- Level 3: colonnes
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('colonnes', 'colonnes', 3, l2_id, 'Colonnes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('colonnes', 'fr', 'Colonnes');
                PERFORM insert_category_translations('colonnes', 'ar', 'خزائن عمودية');
                PERFORM insert_category_translations('colonnes', 'en', 'Tall units');
                PERFORM insert_category_translations('colonnes', 'de', 'Hochschränke');
                PERFORM insert_category_translations('colonnes', 'es', 'Columnas');
                PERFORM insert_category_translations('colonnes', 'it', 'Colonne');

                -- Level 3: rangements
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('rangements', 'rangements', 3, l2_id, 'Rangements')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('rangements', 'fr', 'Rangements');
                PERFORM insert_category_translations('rangements', 'ar', 'تخزين');
                PERFORM insert_category_translations('rangements', 'en', 'Storage');
                PERFORM insert_category_translations('rangements', 'de', 'Aufbewahrung');
                PERFORM insert_category_translations('rangements', 'es', 'Almacenamiento');
                PERFORM insert_category_translations('rangements', 'it', 'Contenitori');

            -- Level 2: etageres-murales-bain
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('etageres-murales-bain', 'etageres-murales-bain', 2, l1_id, 'Étagères murales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('etageres-murales-bain', 'fr', 'Étagères murales');
            PERFORM insert_category_translations('etageres-murales-bain', 'ar', 'رفوف حائط');
            PERFORM insert_category_translations('etageres-murales-bain', 'en', 'Wall shelves');
            PERFORM insert_category_translations('etageres-murales-bain', 'de', 'Wandregale');
            PERFORM insert_category_translations('etageres-murales-bain', 'es', 'Estantes de pared');
            PERFORM insert_category_translations('etageres-murales-bain', 'it', 'Mensole a parete');

            -- Level 2: armoires-miroir
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('armoires-miroir', 'armoires-miroir', 2, l1_id, 'Armoires miroir')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('armoires-miroir', 'fr', 'Armoires miroir');
            PERFORM insert_category_translations('armoires-miroir', 'ar', 'خزائن مرايا');
            PERFORM insert_category_translations('armoires-miroir', 'en', 'Mirror cabinets');
            PERFORM insert_category_translations('armoires-miroir', 'de', 'Spiegelschränke');
            PERFORM insert_category_translations('armoires-miroir', 'es', 'Armarios con espejo');
            PERFORM insert_category_translations('armoires-miroir', 'it', 'Armadi a specchio');

            -- Level 2: bancs-tabourets-bain
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bancs-tabourets-bain', 'bancs-tabourets-bain', 2, l1_id, 'Bancs & tabourets bain')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bancs-tabourets-bain', 'fr', 'Bancs & tabourets bain');
            PERFORM insert_category_translations('bancs-tabourets-bain', 'ar', 'مقاعد وكراسي صغيرة');
            PERFORM insert_category_translations('bancs-tabourets-bain', 'en', 'Bathroom benches & stools');
            PERFORM insert_category_translations('bancs-tabourets-bain', 'de', 'Bänke & Hocker');
            PERFORM insert_category_translations('bancs-tabourets-bain', 'es', 'Bancos y taburetes');
            PERFORM insert_category_translations('bancs-tabourets-bain', 'it', 'Panche e sgabelli');

                -- Level 3: bancs
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bancs', 'bancs', 3, l2_id, 'Bancs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('bancs', 'fr', 'Bancs');
                PERFORM insert_category_translations('bancs', 'ar', 'مقاعد');
                PERFORM insert_category_translations('bancs', 'en', 'Benches');
                PERFORM insert_category_translations('bancs', 'de', 'Bänke');
                PERFORM insert_category_translations('bancs', 'es', 'Bancos');
                PERFORM insert_category_translations('bancs', 'it', 'Panche');

                -- Level 3: tabourets
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tabourets', 'tabourets', 3, l2_id, 'Tabourets')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('tabourets', 'fr', 'Tabourets');
                PERFORM insert_category_translations('tabourets', 'ar', 'كراسي صغيرة');
                PERFORM insert_category_translations('tabourets', 'en', 'Stools');
                PERFORM insert_category_translations('tabourets', 'de', 'Hocker');
                PERFORM insert_category_translations('tabourets', 'es', 'Taburetes');
                PERFORM insert_category_translations('tabourets', 'it', 'Sgabelli');

            -- Level 2: paniers-linge
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('paniers-linge', 'paniers-linge', 2, l1_id, 'Paniers linge')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('paniers-linge', 'fr', 'Paniers linge');
            PERFORM insert_category_translations('paniers-linge', 'ar', 'سلال الغسيل');
            PERFORM insert_category_translations('paniers-linge', 'en', 'Laundry baskets');
            PERFORM insert_category_translations('paniers-linge', 'de', 'Wäschekörbe');
            PERFORM insert_category_translations('paniers-linge', 'es', 'Cestas para ropa');
            PERFORM insert_category_translations('paniers-linge', 'it', 'Ceste per biancheria');

            -- Level 2: porte-serviettes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('porte-serviettes', 'porte-serviettes', 2, l1_id, 'Porte-serviettes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('porte-serviettes', 'fr', 'Porte-serviettes');
            PERFORM insert_category_translations('porte-serviettes', 'ar', 'حوامل المناشف');
            PERFORM insert_category_translations('porte-serviettes', 'en', 'Towel racks');
            PERFORM insert_category_translations('porte-serviettes', 'de', 'Handtuchhalter');
            PERFORM insert_category_translations('porte-serviettes', 'es', 'Toalleros');
            PERFORM insert_category_translations('porte-serviettes', 'it', 'Portasciugamani');

            -- Level 2: accessoires-bain
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-bain', 'accessoires-bain', 2, l1_id, 'Accessoires bain')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('accessoires-bain', 'fr', 'Accessoires bain');
            PERFORM insert_category_translations('accessoires-bain', 'ar', 'إكسسوارات الحمام');
            PERFORM insert_category_translations('accessoires-bain', 'en', 'Bathroom accessories');
            PERFORM insert_category_translations('accessoires-bain', 'de', 'Badezimmer-Accessoires');
            PERFORM insert_category_translations('accessoires-bain', 'es', 'Accesorios de baño');
            PERFORM insert_category_translations('accessoires-bain', 'it', 'Accessori bagno');

        -- Level 1: mobilier-exterieur-jardin
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mobilier-exterieur-jardin', 'mobilier-exterieur-jardin', 1, root_id, 'Mobilier Extérieur & Jardin')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('mobilier-exterieur-jardin', 'fr', 'Mobilier Extérieur & Jardin');
        PERFORM insert_category_translations('mobilier-exterieur-jardin', 'ar', 'أثاث خارجي وحدائق');
        PERFORM insert_category_translations('mobilier-exterieur-jardin', 'en', 'Outdoor & Garden Furniture');
        PERFORM insert_category_translations('mobilier-exterieur-jardin', 'de', 'Außen- & Gartenmöbel');
        PERFORM insert_category_translations('mobilier-exterieur-jardin', 'es', 'Muebles de exterior y jardín');
        PERFORM insert_category_translations('mobilier-exterieur-jardin', 'it', 'Arredi esterni e giardino');

            -- Level 2: salons-de-jardin
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('salons-de-jardin', 'salons-de-jardin', 2, l1_id, 'Salons de jardin')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('salons-de-jardin', 'fr', 'Salons de jardin');
            PERFORM insert_category_translations('salons-de-jardin', 'ar', 'طقم أثاث حدائق');
            PERFORM insert_category_translations('salons-de-jardin', 'en', 'Garden lounge sets');
            PERFORM insert_category_translations('salons-de-jardin', 'de', 'Gartenmöbelsets');
            PERFORM insert_category_translations('salons-de-jardin', 'es', 'Conjuntos de jardín');
            PERFORM insert_category_translations('salons-de-jardin', 'it', 'Salotti da giardino');

                -- Level 3: resine
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('resine', 'resine', 3, l2_id, 'Résine')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('resine', 'fr', 'Résine');
                PERFORM insert_category_translations('resine', 'ar', 'راتنج');
                PERFORM insert_category_translations('resine', 'en', 'Resin');
                PERFORM insert_category_translations('resine', 'de', 'Kunstharz');
                PERFORM insert_category_translations('resine', 'es', 'Resina');
                PERFORM insert_category_translations('resine', 'it', 'Resina');

                -- Level 3: aluminium
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('aluminium', 'aluminium', 3, l2_id, 'Aluminium')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('aluminium', 'fr', 'Aluminium');
                PERFORM insert_category_translations('aluminium', 'ar', 'ألمنيوم');
                PERFORM insert_category_translations('aluminium', 'en', 'Aluminum');
                PERFORM insert_category_translations('aluminium', 'de', 'Aluminium');
                PERFORM insert_category_translations('aluminium', 'es', 'Aluminio');
                PERFORM insert_category_translations('aluminium', 'it', 'Alluminio');

                -- Level 3: bois
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bois', 'bois', 3, l2_id, 'Bois')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('bois', 'fr', 'Bois');
                PERFORM insert_category_translations('bois', 'ar', 'خشب');
                PERFORM insert_category_translations('bois', 'en', 'Wood');
                PERFORM insert_category_translations('bois', 'de', 'Holz');
                PERFORM insert_category_translations('bois', 'es', 'Madera');
                PERFORM insert_category_translations('bois', 'it', 'Legno');

            -- Level 2: tables-chaises-exterieures
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tables-chaises-exterieures', 'tables-chaises-exterieures', 2, l1_id, 'Tables & chaises extérieures')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tables-chaises-exterieures', 'fr', 'Tables & chaises extérieures');
            PERFORM insert_category_translations('tables-chaises-exterieures', 'ar', 'طاولات وكراسي خارجية');
            PERFORM insert_category_translations('tables-chaises-exterieures', 'en', 'Outdoor tables & chairs');
            PERFORM insert_category_translations('tables-chaises-exterieures', 'de', 'Außentische & -Stühle');
            PERFORM insert_category_translations('tables-chaises-exterieures', 'es', 'Mesas y sillas de exterior');
            PERFORM insert_category_translations('tables-chaises-exterieures', 'it', 'Tavoli e sedie da esterno');

                -- Level 3: tables
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tables', 'tables', 3, l2_id, 'Tables')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('tables', 'fr', 'Tables');
                PERFORM insert_category_translations('tables', 'ar', 'طاولات');
                PERFORM insert_category_translations('tables', 'en', 'Tables');
                PERFORM insert_category_translations('tables', 'de', 'Tische');
                PERFORM insert_category_translations('tables', 'es', 'Mesas');
                PERFORM insert_category_translations('tables', 'it', 'Tavoli');

                -- Level 3: chaises
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chaises', 'chaises', 3, l2_id, 'Chaises')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('chaises', 'fr', 'Chaises');
                PERFORM insert_category_translations('chaises', 'ar', 'كراسي');
                PERFORM insert_category_translations('chaises', 'en', 'Chairs');
                PERFORM insert_category_translations('chaises', 'de', 'Stühle');
                PERFORM insert_category_translations('chaises', 'es', 'Sillas');
                PERFORM insert_category_translations('chaises', 'it', 'Sedie');

            -- Level 2: transats-bains-de-soleil
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('transats-bains-de-soleil', 'transats-bains-de-soleil', 2, l1_id, 'Transats & bains de soleil')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('transats-bains-de-soleil', 'fr', 'Transats & bains de soleil');
            PERFORM insert_category_translations('transats-bains-de-soleil', 'ar', 'كراسي استرخاء وأسِرّة شمس');
            PERFORM insert_category_translations('transats-bains-de-soleil', 'en', 'Sun loungers & daybeds');
            PERFORM insert_category_translations('transats-bains-de-soleil', 'de', 'Liegestühle & Sonnenliegen');
            PERFORM insert_category_translations('transats-bains-de-soleil', 'es', 'Tumbonas y camas solares');
            PERFORM insert_category_translations('transats-bains-de-soleil', 'it', 'Lettini e chaise longue');

                -- Level 3: transats
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('transats', 'transats', 3, l2_id, 'Transats')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('transats', 'fr', 'Transats');
                PERFORM insert_category_translations('transats', 'ar', 'كراسي استرخاء');
                PERFORM insert_category_translations('transats', 'en', 'Sun loungers');
                PERFORM insert_category_translations('transats', 'de', 'Liegestühle');
                PERFORM insert_category_translations('transats', 'es', 'Tumbonas');
                PERFORM insert_category_translations('transats', 'it', 'Lettini');

                -- Level 3: bains-de-soleil
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bains-de-soleil', 'bains-de-soleil', 3, l2_id, 'Bains de soleil')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('bains-de-soleil', 'fr', 'Bains de soleil');
                PERFORM insert_category_translations('bains-de-soleil', 'ar', 'أسِرّة شمس');
                PERFORM insert_category_translations('bains-de-soleil', 'en', 'Daybeds');
                PERFORM insert_category_translations('bains-de-soleil', 'de', 'Sonnenliegen');
                PERFORM insert_category_translations('bains-de-soleil', 'es', 'Camas solares');
                PERFORM insert_category_translations('bains-de-soleil', 'it', 'Chaise longue');

            -- Level 2: hamacs-balancelles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('hamacs-balancelles', 'hamacs-balancelles', 2, l1_id, 'Hamacs & balancelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('hamacs-balancelles', 'fr', 'Hamacs & balancelles');
            PERFORM insert_category_translations('hamacs-balancelles', 'ar', 'أراجيح وأرجوحات حدائق');
            PERFORM insert_category_translations('hamacs-balancelles', 'en', 'Hammocks & swings');
            PERFORM insert_category_translations('hamacs-balancelles', 'de', 'Hängematten & Gartenschaukeln');
            PERFORM insert_category_translations('hamacs-balancelles', 'es', 'Hamacas y columpios');
            PERFORM insert_category_translations('hamacs-balancelles', 'it', 'Amache e dondoli');

                -- Level 3: hamacs
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('hamacs', 'hamacs', 3, l2_id, 'Hamacs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('hamacs', 'fr', 'Hamacs');
                PERFORM insert_category_translations('hamacs', 'ar', 'أراجيح');
                PERFORM insert_category_translations('hamacs', 'en', 'Hammocks');
                PERFORM insert_category_translations('hamacs', 'de', 'Hängematten');
                PERFORM insert_category_translations('hamacs', 'es', 'Hamacas');
                PERFORM insert_category_translations('hamacs', 'it', 'Amache');

                -- Level 3: balancelles
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('balancelles', 'balancelles', 3, l2_id, 'Balancelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('balancelles', 'fr', 'Balancelles');
                PERFORM insert_category_translations('balancelles', 'ar', 'أرجوحات');
                PERFORM insert_category_translations('balancelles', 'en', 'Swings');
                PERFORM insert_category_translations('balancelles', 'de', 'Gartenschaukeln');
                PERFORM insert_category_translations('balancelles', 'es', 'Columpios');
                PERFORM insert_category_translations('balancelles', 'it', 'Dondoli');

            -- Level 2: pergolas
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pergolas', 'pergolas', 2, l1_id, 'Pergolas')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pergolas', 'fr', 'Pergolas');
            PERFORM insert_category_translations('pergolas', 'ar', 'برجولات');
            PERFORM insert_category_translations('pergolas', 'en', 'Pergolas');
            PERFORM insert_category_translations('pergolas', 'de', 'Pergolen');
            PERFORM insert_category_translations('pergolas', 'es', 'Pérgolas');
            PERFORM insert_category_translations('pergolas', 'it', 'Pergole');

            -- Level 2: parasols
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('parasols', 'parasols', 2, l1_id, 'Parasols')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('parasols', 'fr', 'Parasols');
            PERFORM insert_category_translations('parasols', 'ar', 'مظلات');
            PERFORM insert_category_translations('parasols', 'en', 'Parasols');
            PERFORM insert_category_translations('parasols', 'de', 'Sonnenschirme');
            PERFORM insert_category_translations('parasols', 'es', 'Sombrillas');
            PERFORM insert_category_translations('parasols', 'it', 'Ombrelloni');

            -- Level 2: coffres-rangement-exterieur
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('coffres-rangement-exterieur', 'coffres-rangement-exterieur', 2, l1_id, 'Coffres de rangement extérieur')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('coffres-rangement-exterieur', 'fr', 'Coffres de rangement extérieur');
            PERFORM insert_category_translations('coffres-rangement-exterieur', 'ar', 'صناديق تخزين خارجية');
            PERFORM insert_category_translations('coffres-rangement-exterieur', 'en', 'Outdoor storage boxes');
            PERFORM insert_category_translations('coffres-rangement-exterieur', 'de', 'Aufbewahrungstruhen für draußen');
            PERFORM insert_category_translations('coffres-rangement-exterieur', 'es', 'Baúles de almacenamiento exterior');
            PERFORM insert_category_translations('coffres-rangement-exterieur', 'it', 'Bauli da esterno');

            -- Level 2: barbecue-cuisine-exterieure
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('barbecue-cuisine-exterieure', 'barbecue-cuisine-exterieure', 2, l1_id, 'Barbecue & cuisine d’extérieur')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('barbecue-cuisine-exterieure', 'fr', 'Barbecue & cuisine d’extérieur');
            PERFORM insert_category_translations('barbecue-cuisine-exterieure', 'ar', 'شوايات ومطابخ خارجية');
            PERFORM insert_category_translations('barbecue-cuisine-exterieure', 'en', 'Barbecues & outdoor kitchens');
            PERFORM insert_category_translations('barbecue-cuisine-exterieure', 'de', 'Grills & Außenküchen');
            PERFORM insert_category_translations('barbecue-cuisine-exterieure', 'es', 'Barbacoas y cocinas exteriores');
            PERFORM insert_category_translations('barbecue-cuisine-exterieure', 'it', 'Barbecue e cucine da esterno');

                -- Level 3: barbecue
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('barbecue', 'barbecue', 3, l2_id, 'Barbecue')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('barbecue', 'fr', 'Barbecue');
                PERFORM insert_category_translations('barbecue', 'ar', 'شوايات');
                PERFORM insert_category_translations('barbecue', 'en', 'Barbecues');
                PERFORM insert_category_translations('barbecue', 'de', 'Grills');
                PERFORM insert_category_translations('barbecue', 'es', 'Barbacoas');
                PERFORM insert_category_translations('barbecue', 'it', 'Barbecue');

                -- Level 3: cuisine-exterieure
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cuisine-exterieure', 'cuisine-exterieure', 3, l2_id, 'Cuisine d’extérieur')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('cuisine-exterieure', 'fr', 'Cuisine d’extérieur');
                PERFORM insert_category_translations('cuisine-exterieure', 'ar', 'مطابخ خارجية');
                PERFORM insert_category_translations('cuisine-exterieure', 'en', 'Outdoor kitchens');
                PERFORM insert_category_translations('cuisine-exterieure', 'de', 'Außenküchen');
                PERFORM insert_category_translations('cuisine-exterieure', 'es', 'Cocinas exteriores');
                PERFORM insert_category_translations('cuisine-exterieure', 'it', 'Cucine da esterno');

        -- Level 1: decoration-murale
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('decoration-murale', 'decoration-murale', 1, root_id, 'Décoration Murale')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('decoration-murale', 'fr', 'Décoration Murale');
        PERFORM insert_category_translations('decoration-murale', 'ar', 'ديكور جداري');
        PERFORM insert_category_translations('decoration-murale', 'en', 'Wall Decoration');
        PERFORM insert_category_translations('decoration-murale', 'de', 'Wanddekoration');
        PERFORM insert_category_translations('decoration-murale', 'es', 'Decoración de pared');
        PERFORM insert_category_translations('decoration-murale', 'it', 'Decorazioni da parete');

            -- Level 2: tableaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tableaux', 'tableaux', 2, l1_id, 'Tableaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tableaux', 'fr', 'Tableaux');
            PERFORM insert_category_translations('tableaux', 'ar', 'لوحات');
            PERFORM insert_category_translations('tableaux', 'en', 'Paintings');
            PERFORM insert_category_translations('tableaux', 'de', 'Gemälde');
            PERFORM insert_category_translations('tableaux', 'es', 'Cuadros');
            PERFORM insert_category_translations('tableaux', 'it', 'Quadri');

                -- Level 3: abstraits
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('abstraits', 'abstraits', 3, l2_id, 'Abstraits')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('abstraits', 'fr', 'Abstraits');
                PERFORM insert_category_translations('abstraits', 'ar', 'مجردة');
                PERFORM insert_category_translations('abstraits', 'en', 'Abstract');
                PERFORM insert_category_translations('abstraits', 'de', 'Abstrakt');
                PERFORM insert_category_translations('abstraits', 'es', 'Abstractos');
                PERFORM insert_category_translations('abstraits', 'it', 'Astratti');

                -- Level 3: modernes
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('modernes', 'modernes', 3, l2_id, 'Modernes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('modernes', 'fr', 'Modernes');
                PERFORM insert_category_translations('modernes', 'ar', 'حديثة');
                PERFORM insert_category_translations('modernes', 'en', 'Modern');
                PERFORM insert_category_translations('modernes', 'de', 'Modern');
                PERFORM insert_category_translations('modernes', 'es', 'Modernas');
                PERFORM insert_category_translations('modernes', 'it', 'Moderni');

                -- Level 3: islamiques
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('islamiques', 'islamiques', 3, l2_id, 'Islamiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('islamiques', 'fr', 'Islamiques');
                PERFORM insert_category_translations('islamiques', 'ar', 'إسلامية');
                PERFORM insert_category_translations('islamiques', 'en', 'Islamic');
                PERFORM insert_category_translations('islamiques', 'de', 'Islamisch');
                PERFORM insert_category_translations('islamiques', 'es', 'Islámicos');
                PERFORM insert_category_translations('islamiques', 'it', 'Islamici');

            -- Level 2: affiches-posters
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('affiches-posters', 'affiches-posters', 2, l1_id, 'Affiches & posters')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('affiches-posters', 'fr', 'Affiches & posters');
            PERFORM insert_category_translations('affiches-posters', 'ar', 'ملصقات وبوسترات');
            PERFORM insert_category_translations('affiches-posters', 'en', 'Prints & posters');
            PERFORM insert_category_translations('affiches-posters', 'de', 'Plakate & Poster');
            PERFORM insert_category_translations('affiches-posters', 'es', 'Carteles y pósters');
            PERFORM insert_category_translations('affiches-posters', 'it', 'Poster e locandine');

                -- Level 3: affiches
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('affiches', 'affiches', 3, l2_id, 'Affiches')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('affiches', 'fr', 'Affiches');
                PERFORM insert_category_translations('affiches', 'ar', 'ملصقات');
                PERFORM insert_category_translations('affiches', 'en', 'Prints');
                PERFORM insert_category_translations('affiches', 'de', 'Plakate');
                PERFORM insert_category_translations('affiches', 'es', 'Carteles');
                PERFORM insert_category_translations('affiches', 'it', 'Locandine');

                -- Level 3: posters
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('posters', 'posters', 3, l2_id, 'Posters')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('posters', 'fr', 'Posters');
                PERFORM insert_category_translations('posters', 'ar', 'بوسترات');
                PERFORM insert_category_translations('posters', 'en', 'Posters');
                PERFORM insert_category_translations('posters', 'de', 'Poster');
                PERFORM insert_category_translations('posters', 'es', 'Pósters');
                PERFORM insert_category_translations('posters', 'it', 'Poster');

            -- Level 2: miroirs-decoratifs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('miroirs-decoratifs', 'miroirs-decoratifs', 2, l1_id, 'Miroirs décoratifs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('miroirs-decoratifs', 'fr', 'Miroirs décoratifs');
            PERFORM insert_category_translations('miroirs-decoratifs', 'ar', 'مرايا زخرفية');
            PERFORM insert_category_translations('miroirs-decoratifs', 'en', 'Decorative mirrors');
            PERFORM insert_category_translations('miroirs-decoratifs', 'de', 'Dekorative Spiegel');
            PERFORM insert_category_translations('miroirs-decoratifs', 'es', 'Espejos decorativos');
            PERFORM insert_category_translations('miroirs-decoratifs', 'it', 'Specchi decorativi');

            -- Level 2: horloges-murales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('horloges-murales', 'horloges-murales', 2, l1_id, 'Horloges murales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('horloges-murales', 'fr', 'Horloges murales');
            PERFORM insert_category_translations('horloges-murales', 'ar', 'ساعات حائط');
            PERFORM insert_category_translations('horloges-murales', 'en', 'Wall clocks');
            PERFORM insert_category_translations('horloges-murales', 'de', 'Wanduhren');
            PERFORM insert_category_translations('horloges-murales', 'es', 'Relojes de pared');
            PERFORM insert_category_translations('horloges-murales', 'it', 'Orologi da parete');

            -- Level 2: stickers-muraux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('stickers-muraux', 'stickers-muraux', 2, l1_id, 'Stickers muraux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('stickers-muraux', 'fr', 'Stickers muraux');
            PERFORM insert_category_translations('stickers-muraux', 'ar', 'ملصقات حائط');
            PERFORM insert_category_translations('stickers-muraux', 'en', 'Wall stickers');
            PERFORM insert_category_translations('stickers-muraux', 'de', 'Wandsticker');
            PERFORM insert_category_translations('stickers-muraux', 'es', 'Pegatinas de pared');
            PERFORM insert_category_translations('stickers-muraux', 'it', 'Adesivi da parete');

            -- Level 2: decorations-metal
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('decorations-metal', 'decorations-metal', 2, l1_id, 'Décorations en métal')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('decorations-metal', 'fr', 'Décorations en métal');
            PERFORM insert_category_translations('decorations-metal', 'ar', 'ديكورات معدنية');
            PERFORM insert_category_translations('decorations-metal', 'en', 'Metal decor');
            PERFORM insert_category_translations('decorations-metal', 'de', 'Metalldekorationen');
            PERFORM insert_category_translations('decorations-metal', 'es', 'Decoraciones de metal');
            PERFORM insert_category_translations('decorations-metal', 'it', 'Decorazioni in metallo');

            -- Level 2: panneaux-muraux-3d
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('panneaux-muraux-3d', 'panneaux-muraux-3d', 2, l1_id, 'Panneaux muraux 3D')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('panneaux-muraux-3d', 'fr', 'Panneaux muraux 3D');
            PERFORM insert_category_translations('panneaux-muraux-3d', 'ar', 'ألواح جدارية ثلاثية الأبعاد');
            PERFORM insert_category_translations('panneaux-muraux-3d', 'en', '3D wall panels');
            PERFORM insert_category_translations('panneaux-muraux-3d', 'de', '3D-Wandpaneele');
            PERFORM insert_category_translations('panneaux-muraux-3d', 'es', 'Paneles de pared 3D');
            PERFORM insert_category_translations('panneaux-muraux-3d', 'it', 'Pannelli 3D da parete');

            -- Level 2: tapisseries-toiles-imprimees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tapisseries-toiles-imprimees', 'tapisseries-toiles-imprimees', 2, l1_id, 'Tapisseries & toiles imprimées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tapisseries-toiles-imprimees', 'fr', 'Tapisseries & toiles imprimées');
            PERFORM insert_category_translations('tapisseries-toiles-imprimees', 'ar', 'منسوجات جدارية ولوحات مطبوعة');
            PERFORM insert_category_translations('tapisseries-toiles-imprimees', 'en', 'Tapestries & prints');
            PERFORM insert_category_translations('tapisseries-toiles-imprimees', 'de', 'Wandteppiche & Druckleinwände');
            PERFORM insert_category_translations('tapisseries-toiles-imprimees', 'es', 'Tapices y lienzos impresos');
            PERFORM insert_category_translations('tapisseries-toiles-imprimees', 'it', 'Arazzi e tele stampate');

                -- Level 3: tapisseries
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tapisseries', 'tapisseries', 3, l2_id, 'Tapisseries')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('tapisseries', 'fr', 'Tapisseries');
                PERFORM insert_category_translations('tapisseries', 'ar', 'منسوجات جدارية');
                PERFORM insert_category_translations('tapisseries', 'en', 'Tapestries');
                PERFORM insert_category_translations('tapisseries', 'de', 'Wandteppiche');
                PERFORM insert_category_translations('tapisseries', 'es', 'Tapices');
                PERFORM insert_category_translations('tapisseries', 'it', 'Arazzi');

                -- Level 3: toiles-imprimees
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('toiles-imprimees', 'toiles-imprimees', 3, l2_id, 'Toiles imprimées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('toiles-imprimees', 'fr', 'Toiles imprimées');
                PERFORM insert_category_translations('toiles-imprimees', 'ar', 'لوحات مطبوعة');
                PERFORM insert_category_translations('toiles-imprimees', 'en', 'Printed canvases');
                PERFORM insert_category_translations('toiles-imprimees', 'de', 'Druckleinwände');
                PERFORM insert_category_translations('toiles-imprimees', 'es', 'Lienzos impresos');
                PERFORM insert_category_translations('toiles-imprimees', 'it', 'Tele stampate');

        -- Level 1: luminaires-eclairage
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('luminaires-eclairage', 'luminaires-eclairage', 1, root_id, 'Luminaires & Éclairage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('luminaires-eclairage', 'fr', 'Luminaires & Éclairage');
        PERFORM insert_category_translations('luminaires-eclairage', 'ar', 'إضاءة');
        PERFORM insert_category_translations('luminaires-eclairage', 'en', 'Lighting');
        PERFORM insert_category_translations('luminaires-eclairage', 'de', 'Leuchten & Beleuchtung');
        PERFORM insert_category_translations('luminaires-eclairage', 'es', 'Iluminación');
        PERFORM insert_category_translations('luminaires-eclairage', 'it', 'Illuminazione');

            -- Level 2: lampes-de-table
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lampes-de-table', 'lampes-de-table', 2, l1_id, 'Lampes de table')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lampes-de-table', 'fr', 'Lampes de table');
            PERFORM insert_category_translations('lampes-de-table', 'ar', 'مصابيح طاولة');
            PERFORM insert_category_translations('lampes-de-table', 'en', 'Table lamps');
            PERFORM insert_category_translations('lampes-de-table', 'de', 'Tischlampen');
            PERFORM insert_category_translations('lampes-de-table', 'es', 'Lámparas de mesa');
            PERFORM insert_category_translations('lampes-de-table', 'it', 'Lampade da tavolo');

            -- Level 2: lampadaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lampadaires', 'lampadaires', 2, l1_id, 'Lampadaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lampadaires', 'fr', 'Lampadaires');
            PERFORM insert_category_translations('lampadaires', 'ar', 'مصابيح أرضية');
            PERFORM insert_category_translations('lampadaires', 'en', 'Floor lamps');
            PERFORM insert_category_translations('lampadaires', 'de', 'Stehlampen');
            PERFORM insert_category_translations('lampadaires', 'es', 'Lámparas de pie');
            PERFORM insert_category_translations('lampadaires', 'it', 'Lampade da terra');

            -- Level 2: suspensions-lustres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('suspensions-lustres', 'suspensions-lustres', 2, l1_id, 'Suspensions & lustres')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('suspensions-lustres', 'fr', 'Suspensions & lustres');
            PERFORM insert_category_translations('suspensions-lustres', 'ar', 'مصابيح معلقة وثريات');
            PERFORM insert_category_translations('suspensions-lustres', 'en', 'Pendant lights & chandeliers');
            PERFORM insert_category_translations('suspensions-lustres', 'de', 'Pendelleuchten & Kronleuchter');
            PERFORM insert_category_translations('suspensions-lustres', 'es', 'Lámparas colgantes y candelabros');
            PERFORM insert_category_translations('suspensions-lustres', 'it', 'Sospensioni e lampadari');

                -- Level 3: suspensions
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('suspensions', 'suspensions', 3, l2_id, 'Suspensions')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('suspensions', 'fr', 'Suspensions');
                PERFORM insert_category_translations('suspensions', 'ar', 'مصابيح معلقة');
                PERFORM insert_category_translations('suspensions', 'en', 'Pendant lights');
                PERFORM insert_category_translations('suspensions', 'de', 'Pendelleuchten');
                PERFORM insert_category_translations('suspensions', 'es', 'Lámparas colgantes');
                PERFORM insert_category_translations('suspensions', 'it', 'Sospensioni');

                -- Level 3: lustres
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lustres', 'lustres', 3, l2_id, 'Lustres')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('lustres', 'fr', 'Lustres');
                PERFORM insert_category_translations('lustres', 'ar', 'ثريات');
                PERFORM insert_category_translations('lustres', 'en', 'Chandeliers');
                PERFORM insert_category_translations('lustres', 'de', 'Kronleuchter');
                PERFORM insert_category_translations('lustres', 'es', 'Candelabros');
                PERFORM insert_category_translations('lustres', 'it', 'Lampadari');

            -- Level 2: appliques-murales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('appliques-murales', 'appliques-murales', 2, l1_id, 'Appliques murales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('appliques-murales', 'fr', 'Appliques murales');
            PERFORM insert_category_translations('appliques-murales', 'ar', 'مصابيح حائط');
            PERFORM insert_category_translations('appliques-murales', 'en', 'Wall lights');
            PERFORM insert_category_translations('appliques-murales', 'de', 'Wandleuchten');
            PERFORM insert_category_translations('appliques-murales', 'es', 'Apliques de pared');
            PERFORM insert_category_translations('appliques-murales', 'it', 'Applique da parete');

            -- Level 2: luminaires-led
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('luminaires-led', 'luminaires-led', 2, l1_id, 'Luminaires LED')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('luminaires-led', 'fr', 'Luminaires LED');
            PERFORM insert_category_translations('luminaires-led', 'ar', 'إضاءة LED');
            PERFORM insert_category_translations('luminaires-led', 'en', 'LED lighting');
            PERFORM insert_category_translations('luminaires-led', 'de', 'LED-Leuchten');
            PERFORM insert_category_translations('luminaires-led', 'es', 'Iluminación LED');
            PERFORM insert_category_translations('luminaires-led', 'it', 'Illuminazione LED');

            -- Level 2: lampes-de-bureau
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lampes-de-bureau', 'lampes-de-bureau', 2, l1_id, 'Lampes de bureau')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lampes-de-bureau', 'fr', 'Lampes de bureau');
            PERFORM insert_category_translations('lampes-de-bureau', 'ar', 'مصابيح مكتب');
            PERFORM insert_category_translations('lampes-de-bureau', 'en', 'Desk lamps');
            PERFORM insert_category_translations('lampes-de-bureau', 'de', 'Schreibtischlampen');
            PERFORM insert_category_translations('lampes-de-bureau', 'es', 'Lámparas de escritorio');
            PERFORM insert_category_translations('lampes-de-bureau', 'it', 'Lampade da ufficio');

            -- Level 2: guirlandes-lumineuses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('guirlandes-lumineuses', 'guirlandes-lumineuses', 2, l1_id, 'Guirlandes lumineuses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('guirlandes-lumineuses', 'fr', 'Guirlandes lumineuses');
            PERFORM insert_category_translations('guirlandes-lumineuses', 'ar', 'سلاسل ضوئية');
            PERFORM insert_category_translations('guirlandes-lumineuses', 'en', 'String lights');
            PERFORM insert_category_translations('guirlandes-lumineuses', 'de', 'Lichterketten');
            PERFORM insert_category_translations('guirlandes-lumineuses', 'es', 'Guirnaldas luminosas');
            PERFORM insert_category_translations('guirlandes-lumineuses', 'it', 'Ghirlande luminose');

            -- Level 2: rubans-led
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('rubans-led', 'rubans-led', 2, l1_id, 'Rubans LED')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('rubans-led', 'fr', 'Rubans LED');
            PERFORM insert_category_translations('rubans-led', 'ar', 'شرائط LED');
            PERFORM insert_category_translations('rubans-led', 'en', 'LED strips');
            PERFORM insert_category_translations('rubans-led', 'de', 'LED-Streifen');
            PERFORM insert_category_translations('rubans-led', 'es', 'Tiras LED');
            PERFORM insert_category_translations('rubans-led', 'it', 'Strisce LED');

            -- Level 2: eclairage-exterieur
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('eclairage-exterieur', 'eclairage-exterieur', 2, l1_id, 'Éclairage extérieur')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('eclairage-exterieur', 'fr', 'Éclairage extérieur');
            PERFORM insert_category_translations('eclairage-exterieur', 'ar', 'إضاءة خارجية');
            PERFORM insert_category_translations('eclairage-exterieur', 'en', 'Outdoor lighting');
            PERFORM insert_category_translations('eclairage-exterieur', 'de', 'Außenbeleuchtung');
            PERFORM insert_category_translations('eclairage-exterieur', 'es', 'Iluminación exterior');
            PERFORM insert_category_translations('eclairage-exterieur', 'it', 'Illuminazione esterna');

        -- Level 1: tapis-textiles-maison
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tapis-textiles-maison', 'tapis-textiles-maison', 1, root_id, 'Tapis & Textiles Maison')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('tapis-textiles-maison', 'fr', 'Tapis & Textiles Maison');
        PERFORM insert_category_translations('tapis-textiles-maison', 'ar', 'سجاد ومنسوجات منزلية');
        PERFORM insert_category_translations('tapis-textiles-maison', 'en', 'Rugs & Home Textiles');
        PERFORM insert_category_translations('tapis-textiles-maison', 'de', 'Teppiche & Heimtextilien');
        PERFORM insert_category_translations('tapis-textiles-maison', 'es', 'Alfombras y textiles para el hogar');
        PERFORM insert_category_translations('tapis-textiles-maison', 'it', 'Tappeti e tessili casa');

            -- Level 2: tapis
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tapis', 'tapis', 2, l1_id, 'Tapis')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tapis', 'fr', 'Tapis');
            PERFORM insert_category_translations('tapis', 'ar', 'سجاد');
            PERFORM insert_category_translations('tapis', 'en', 'Rugs');
            PERFORM insert_category_translations('tapis', 'de', 'Teppiche');
            PERFORM insert_category_translations('tapis', 'es', 'Alfombras');
            PERFORM insert_category_translations('tapis', 'it', 'Tappeti');

                -- Level 3: salon
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('salon', 'salon', 3, l2_id, 'Salon')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('salon', 'fr', 'Salon');
                PERFORM insert_category_translations('salon', 'ar', 'غرفة المعيشة');
                PERFORM insert_category_translations('salon', 'en', 'Living room');
                PERFORM insert_category_translations('salon', 'de', 'Wohnzimmer');
                PERFORM insert_category_translations('salon', 'es', 'Salón');
                PERFORM insert_category_translations('salon', 'it', 'Soggiorno');

                -- Level 3: chambre
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chambre', 'chambre', 3, l2_id, 'Chambre')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('chambre', 'fr', 'Chambre');
                PERFORM insert_category_translations('chambre', 'ar', 'غرفة النوم');
                PERFORM insert_category_translations('chambre', 'en', 'Bedroom');
                PERFORM insert_category_translations('chambre', 'de', 'Schlafzimmer');
                PERFORM insert_category_translations('chambre', 'es', 'Dormitorio');
                PERFORM insert_category_translations('chambre', 'it', 'Camera da letto');

                -- Level 3: orientaux
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('orientaux', 'orientaux', 3, l2_id, 'Orientaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('orientaux', 'fr', 'Orientaux');
                PERFORM insert_category_translations('orientaux', 'ar', 'شرقية');
                PERFORM insert_category_translations('orientaux', 'en', 'Oriental');
                PERFORM insert_category_translations('orientaux', 'de', 'Orientalisch');
                PERFORM insert_category_translations('orientaux', 'es', 'Orientales');
                PERFORM insert_category_translations('orientaux', 'it', 'Orientali');

                -- Level 3: modernes
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('modernes', 'modernes', 3, l2_id, 'Modernes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('modernes', 'fr', 'Modernes');
                PERFORM insert_category_translations('modernes', 'ar', 'حديثة');
                PERFORM insert_category_translations('modernes', 'en', 'Modern');
                PERFORM insert_category_translations('modernes', 'de', 'Modern');
                PERFORM insert_category_translations('modernes', 'es', 'Modernas');
                PERFORM insert_category_translations('modernes', 'it', 'Moderni');

            -- Level 2: rideaux-voilages
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('rideaux-voilages', 'rideaux-voilages', 2, l1_id, 'Rideaux & voilages')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('rideaux-voilages', 'fr', 'Rideaux & voilages');
            PERFORM insert_category_translations('rideaux-voilages', 'ar', 'ستائر وشيفون');
            PERFORM insert_category_translations('rideaux-voilages', 'en', 'Curtains & sheers');
            PERFORM insert_category_translations('rideaux-voilages', 'de', 'Vorhänge & Gardinen');
            PERFORM insert_category_translations('rideaux-voilages', 'es', 'Cortinas y visillos');
            PERFORM insert_category_translations('rideaux-voilages', 'it', 'Tende e tendaggi');

                -- Level 3: rideaux
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('rideaux', 'rideaux', 3, l2_id, 'Rideaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('rideaux', 'fr', 'Rideaux');
                PERFORM insert_category_translations('rideaux', 'ar', 'ستائر');
                PERFORM insert_category_translations('rideaux', 'en', 'Curtains');
                PERFORM insert_category_translations('rideaux', 'de', 'Vorhänge');
                PERFORM insert_category_translations('rideaux', 'es', 'Cortinas');
                PERFORM insert_category_translations('rideaux', 'it', 'Tende');

                -- Level 3: voilages
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('voilages', 'voilages', 3, l2_id, 'Voilages')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('voilages', 'fr', 'Voilages');
                PERFORM insert_category_translations('voilages', 'ar', 'شيفون');
                PERFORM insert_category_translations('voilages', 'en', 'Sheers');
                PERFORM insert_category_translations('voilages', 'de', 'Gardinen');
                PERFORM insert_category_translations('voilages', 'es', 'Visillos');
                PERFORM insert_category_translations('voilages', 'it', 'Tendaggi');

            -- Level 2: stores
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('stores', 'stores', 2, l1_id, 'Stores')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('stores', 'fr', 'Stores');
            PERFORM insert_category_translations('stores', 'ar', 'ستائر');
            PERFORM insert_category_translations('stores', 'en', 'Blinds');
            PERFORM insert_category_translations('stores', 'de', 'Rollos & Jalousien');
            PERFORM insert_category_translations('stores', 'es', 'Persianas');
            PERFORM insert_category_translations('stores', 'it', 'Tende');

                -- Level 3: rouleaux
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('rouleaux', 'rouleaux', 3, l2_id, 'Rouleaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('rouleaux', 'fr', 'Rouleaux');
                PERFORM insert_category_translations('rouleaux', 'ar', 'رول');
                PERFORM insert_category_translations('rouleaux', 'en', 'Roller');
                PERFORM insert_category_translations('rouleaux', 'de', 'Rollos');
                PERFORM insert_category_translations('rouleaux', 'es', 'Enrollables');
                PERFORM insert_category_translations('rouleaux', 'it', 'A rullo');

                -- Level 3: venitiens
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('venitiens', 'venitiens', 3, l2_id, 'Vénitiens')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('venitiens', 'fr', 'Vénitiens');
                PERFORM insert_category_translations('venitiens', 'ar', 'معدنية/فينيسية');
                PERFORM insert_category_translations('venitiens', 'en', 'Venetian');
                PERFORM insert_category_translations('venitiens', 'de', 'Jalousien');
                PERFORM insert_category_translations('venitiens', 'es', 'Venecianas');
                PERFORM insert_category_translations('venitiens', 'it', 'Veneziane');

                -- Level 3: bambou
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bambou', 'bambou', 3, l2_id, 'Bambou')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('bambou', 'fr', 'Bambou');
                PERFORM insert_category_translations('bambou', 'ar', 'بامبو');
                PERFORM insert_category_translations('bambou', 'en', 'Bamboo');
                PERFORM insert_category_translations('bambou', 'de', 'Bambus');
                PERFORM insert_category_translations('bambou', 'es', 'Bambú');
                PERFORM insert_category_translations('bambou', 'it', 'Bambù');

            -- Level 2: coussins-housses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('coussins-housses', 'coussins-housses', 2, l1_id, 'Coussins & housses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('coussins-housses', 'fr', 'Coussins & housses');
            PERFORM insert_category_translations('coussins-housses', 'ar', 'وسائد وأغطية');
            PERFORM insert_category_translations('coussins-housses', 'en', 'Cushions & covers');
            PERFORM insert_category_translations('coussins-housses', 'de', 'Kissen & Bezüge');
            PERFORM insert_category_translations('coussins-housses', 'es', 'Cojines y fundas');
            PERFORM insert_category_translations('coussins-housses', 'it', 'Cuscini e fodere');

                -- Level 3: coussins
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('coussins', 'coussins', 3, l2_id, 'Coussins')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('coussins', 'fr', 'Coussins');
                PERFORM insert_category_translations('coussins', 'ar', 'وسائد');
                PERFORM insert_category_translations('coussins', 'en', 'Cushions');
                PERFORM insert_category_translations('coussins', 'de', 'Kissen');
                PERFORM insert_category_translations('coussins', 'es', 'Cojines');
                PERFORM insert_category_translations('coussins', 'it', 'Cuscini');

                -- Level 3: housses
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('housses', 'housses', 3, l2_id, 'Housses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('housses', 'fr', 'Housses');
                PERFORM insert_category_translations('housses', 'ar', 'أغطية');
                PERFORM insert_category_translations('housses', 'en', 'Covers');
                PERFORM insert_category_translations('housses', 'de', 'Bezüge');
                PERFORM insert_category_translations('housses', 'es', 'Fundas');
                PERFORM insert_category_translations('housses', 'it', 'Fodere');

            -- Level 2: jetes-plaids
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jetes-plaids', 'jetes-plaids', 2, l1_id, 'Jetés & plaids')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('jetes-plaids', 'fr', 'Jetés & plaids');
            PERFORM insert_category_translations('jetes-plaids', 'ar', 'شالات وبطانيات خفيفة');
            PERFORM insert_category_translations('jetes-plaids', 'en', 'Throws & blankets');
            PERFORM insert_category_translations('jetes-plaids', 'de', 'Überwürfe & Plaids');
            PERFORM insert_category_translations('jetes-plaids', 'es', 'Mantas y plaids');
            PERFORM insert_category_translations('jetes-plaids', 'it', 'Copertine e plaid');

                -- Level 3: jetes
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jetes', 'jetes', 3, l2_id, 'Jetés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('jetes', 'fr', 'Jetés');
                PERFORM insert_category_translations('jetes', 'ar', 'شالات');
                PERFORM insert_category_translations('jetes', 'en', 'Throws');
                PERFORM insert_category_translations('jetes', 'de', 'Überwürfe');
                PERFORM insert_category_translations('jetes', 'es', 'Mantas');
                PERFORM insert_category_translations('jetes', 'it', 'Copertine');

                -- Level 3: plaids
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('plaids', 'plaids', 3, l2_id, 'Plaids')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('plaids', 'fr', 'Plaids');
                PERFORM insert_category_translations('plaids', 'ar', 'بطانيات خفيفة');
                PERFORM insert_category_translations('plaids', 'en', 'Blankets');
                PERFORM insert_category_translations('plaids', 'de', 'Plaids');
                PERFORM insert_category_translations('plaids', 'es', 'Plaids');
                PERFORM insert_category_translations('plaids', 'it', 'Plaid');

            -- Level 2: linge-de-lit
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('linge-de-lit', 'linge-de-lit', 2, l1_id, 'Linge de lit')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('linge-de-lit', 'fr', 'Linge de lit');
            PERFORM insert_category_translations('linge-de-lit', 'ar', 'مفروشات سرير');
            PERFORM insert_category_translations('linge-de-lit', 'en', 'Bed linen');
            PERFORM insert_category_translations('linge-de-lit', 'de', 'Bettwäsche');
            PERFORM insert_category_translations('linge-de-lit', 'es', 'Ropa de cama');
            PERFORM insert_category_translations('linge-de-lit', 'it', 'Biancheria da letto');

            -- Level 2: linge-de-bain
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('linge-de-bain', 'linge-de-bain', 2, l1_id, 'Linge de bain')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('linge-de-bain', 'fr', 'Linge de bain');
            PERFORM insert_category_translations('linge-de-bain', 'ar', 'مفروشات حمام');
            PERFORM insert_category_translations('linge-de-bain', 'en', 'Bath linen');
            PERFORM insert_category_translations('linge-de-bain', 'de', 'Badwäsche');
            PERFORM insert_category_translations('linge-de-bain', 'es', 'Ropa de baño');
            PERFORM insert_category_translations('linge-de-bain', 'it', 'Biancheria da bagno');

            -- Level 2: nappes-textiles-cuisine
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('nappes-textiles-cuisine', 'nappes-textiles-cuisine', 2, l1_id, 'Nappes & textiles cuisine')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('nappes-textiles-cuisine', 'fr', 'Nappes & textiles cuisine');
            PERFORM insert_category_translations('nappes-textiles-cuisine', 'ar', 'مفارش ومنسوجات المطبخ');
            PERFORM insert_category_translations('nappes-textiles-cuisine', 'en', 'Tablecloths & kitchen textiles');
            PERFORM insert_category_translations('nappes-textiles-cuisine', 'de', 'Tischdecken & Küchentextilien');
            PERFORM insert_category_translations('nappes-textiles-cuisine', 'es', 'Manteles y textiles de cocina');
            PERFORM insert_category_translations('nappes-textiles-cuisine', 'it', 'Tovaglie e tessili cucina');

                -- Level 3: nappes
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('nappes', 'nappes', 3, l2_id, 'Nappes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('nappes', 'fr', 'Nappes');
                PERFORM insert_category_translations('nappes', 'ar', 'مفارش');
                PERFORM insert_category_translations('nappes', 'en', 'Tablecloths');
                PERFORM insert_category_translations('nappes', 'de', 'Tischdecken');
                PERFORM insert_category_translations('nappes', 'es', 'Manteles');
                PERFORM insert_category_translations('nappes', 'it', 'Tovaglie');

                -- Level 3: textiles-cuisine
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('textiles-cuisine', 'textiles-cuisine', 3, l2_id, 'Textiles cuisine')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('textiles-cuisine', 'fr', 'Textiles cuisine');
                PERFORM insert_category_translations('textiles-cuisine', 'ar', 'منسوجات المطبخ');
                PERFORM insert_category_translations('textiles-cuisine', 'en', 'Kitchen textiles');
                PERFORM insert_category_translations('textiles-cuisine', 'de', 'Küchentextilien');
                PERFORM insert_category_translations('textiles-cuisine', 'es', 'Textiles de cocina');
                PERFORM insert_category_translations('textiles-cuisine', 'it', 'Tessili cucina');

        -- Level 1: decoration-art-maison
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('decoration-art-maison', 'decoration-art-maison', 1, root_id, 'Décoration & Art de Maison')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('decoration-art-maison', 'fr', 'Décoration & Art de Maison');
        PERFORM insert_category_translations('decoration-art-maison', 'ar', 'ديكور وفنون منزلية');
        PERFORM insert_category_translations('decoration-art-maison', 'en', 'Home Decor & Art');
        PERFORM insert_category_translations('decoration-art-maison', 'de', 'Dekoration & Hauskunst');
        PERFORM insert_category_translations('decoration-art-maison', 'es', 'Decoración y arte para el hogar');
        PERFORM insert_category_translations('decoration-art-maison', 'it', 'Decorazione e arte per la casa');

            -- Level 2: vases-pots-decoratifs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vases-pots-decoratifs', 'vases-pots-decoratifs', 2, l1_id, 'Vases & pots décoratifs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('vases-pots-decoratifs', 'fr', 'Vases & pots décoratifs');
            PERFORM insert_category_translations('vases-pots-decoratifs', 'ar', 'مزهرية وأواني زخرفية');
            PERFORM insert_category_translations('vases-pots-decoratifs', 'en', 'Decorative vases & pots');
            PERFORM insert_category_translations('vases-pots-decoratifs', 'de', 'Dekorative Vasen & Töpfe');
            PERFORM insert_category_translations('vases-pots-decoratifs', 'es', 'Jarrones y macetas decorativas');
            PERFORM insert_category_translations('vases-pots-decoratifs', 'it', 'Vasi e cachepot decorativi');

                -- Level 3: vases
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vases', 'vases', 3, l2_id, 'Vases')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('vases', 'fr', 'Vases');
                PERFORM insert_category_translations('vases', 'ar', 'مزهرية');
                PERFORM insert_category_translations('vases', 'en', 'Vases');
                PERFORM insert_category_translations('vases', 'de', 'Vasen');
                PERFORM insert_category_translations('vases', 'es', 'Jarrones');
                PERFORM insert_category_translations('vases', 'it', 'Vasi');

                -- Level 3: pots
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pots', 'pots', 3, l2_id, 'Pots')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('pots', 'fr', 'Pots');
                PERFORM insert_category_translations('pots', 'ar', 'أواني');
                PERFORM insert_category_translations('pots', 'en', 'Pots');
                PERFORM insert_category_translations('pots', 'de', 'Töpfe');
                PERFORM insert_category_translations('pots', 'es', 'Macetas');
                PERFORM insert_category_translations('pots', 'it', 'Cachepot');

            -- Level 2: bougies-photophores
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bougies-photophores', 'bougies-photophores', 2, l1_id, 'Bougies & photophores')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bougies-photophores', 'fr', 'Bougies & photophores');
            PERFORM insert_category_translations('bougies-photophores', 'ar', 'شموع وحاملات شموع');
            PERFORM insert_category_translations('bougies-photophores', 'en', 'Candles & tealight holders');
            PERFORM insert_category_translations('bougies-photophores', 'de', 'Kerzen & Windlichter');
            PERFORM insert_category_translations('bougies-photophores', 'es', 'Velas y portavelas');
            PERFORM insert_category_translations('bougies-photophores', 'it', 'Candele e portacandele');

                -- Level 3: bougies
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bougies', 'bougies', 3, l2_id, 'Bougies')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('bougies', 'fr', 'Bougies');
                PERFORM insert_category_translations('bougies', 'ar', 'شموع');
                PERFORM insert_category_translations('bougies', 'en', 'Candles');
                PERFORM insert_category_translations('bougies', 'de', 'Kerzen');
                PERFORM insert_category_translations('bougies', 'es', 'Velas');
                PERFORM insert_category_translations('bougies', 'it', 'Candele');

                -- Level 3: photophores
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('photophores', 'photophores', 3, l2_id, 'Photophores')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('photophores', 'fr', 'Photophores');
                PERFORM insert_category_translations('photophores', 'ar', 'حاملات شموع');
                PERFORM insert_category_translations('photophores', 'en', 'Tealight holders');
                PERFORM insert_category_translations('photophores', 'de', 'Windlichter');
                PERFORM insert_category_translations('photophores', 'es', 'Portavelas');
                PERFORM insert_category_translations('photophores', 'it', 'Portacandele');

            -- Level 2: sculptures-statuettes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sculptures-statuettes', 'sculptures-statuettes', 2, l1_id, 'Sculptures & statuettes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sculptures-statuettes', 'fr', 'Sculptures & statuettes');
            PERFORM insert_category_translations('sculptures-statuettes', 'ar', 'منحوتات وتماثيل صغيرة');
            PERFORM insert_category_translations('sculptures-statuettes', 'en', 'Sculptures & figurines');
            PERFORM insert_category_translations('sculptures-statuettes', 'de', 'Skulpturen & Statuen');
            PERFORM insert_category_translations('sculptures-statuettes', 'es', 'Esculturas y estatuillas');
            PERFORM insert_category_translations('sculptures-statuettes', 'it', 'Sculture e statuette');

                -- Level 3: sculptures
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sculptures', 'sculptures', 3, l2_id, 'Sculptures')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('sculptures', 'fr', 'Sculptures');
                PERFORM insert_category_translations('sculptures', 'ar', 'منحوتات');
                PERFORM insert_category_translations('sculptures', 'en', 'Sculptures');
                PERFORM insert_category_translations('sculptures', 'de', 'Skulpturen');
                PERFORM insert_category_translations('sculptures', 'es', 'Esculturas');
                PERFORM insert_category_translations('sculptures', 'it', 'Sculture');

                -- Level 3: statuettes
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('statuettes', 'statuettes', 3, l2_id, 'Statuettes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('statuettes', 'fr', 'Statuettes');
                PERFORM insert_category_translations('statuettes', 'ar', 'تماثيل صغيرة');
                PERFORM insert_category_translations('statuettes', 'en', 'Figurines');
                PERFORM insert_category_translations('statuettes', 'de', 'Statuen');
                PERFORM insert_category_translations('statuettes', 'es', 'Estatuillas');
                PERFORM insert_category_translations('statuettes', 'it', 'Statuette');

            -- Level 2: articles-artisanaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('articles-artisanaux', 'articles-artisanaux', 2, l1_id, 'Articles artisanaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('articles-artisanaux', 'fr', 'Articles artisanaux');
            PERFORM insert_category_translations('articles-artisanaux', 'ar', 'منتجات حرفية');
            PERFORM insert_category_translations('articles-artisanaux', 'en', 'Handcrafted items');
            PERFORM insert_category_translations('articles-artisanaux', 'de', 'Handgefertigte Artikel');
            PERFORM insert_category_translations('articles-artisanaux', 'es', 'Artículos artesanales');
            PERFORM insert_category_translations('articles-artisanaux', 'it', 'Articoli artigianali');

            -- Level 2: objets-decoratifs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('objets-decoratifs', 'objets-decoratifs', 2, l1_id, 'Objets décoratifs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('objets-decoratifs', 'fr', 'Objets décoratifs');
            PERFORM insert_category_translations('objets-decoratifs', 'ar', 'أشياء زخرفية');
            PERFORM insert_category_translations('objets-decoratifs', 'en', 'Decorative objects');
            PERFORM insert_category_translations('objets-decoratifs', 'de', 'Dekorative Objekte');
            PERFORM insert_category_translations('objets-decoratifs', 'es', 'Objetos decorativos');
            PERFORM insert_category_translations('objets-decoratifs', 'it', 'Oggetti decorativi');

                -- Level 3: bois
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bois', 'bois', 3, l2_id, 'Bois')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('bois', 'fr', 'Bois');
                PERFORM insert_category_translations('bois', 'ar', 'خشب');
                PERFORM insert_category_translations('bois', 'en', 'Wood');
                PERFORM insert_category_translations('bois', 'de', 'Holz');
                PERFORM insert_category_translations('bois', 'es', 'Madera');
                PERFORM insert_category_translations('bois', 'it', 'Legno');

                -- Level 3: metal
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('metal', 'metal', 3, l2_id, 'Métal')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('metal', 'fr', 'Métal');
                PERFORM insert_category_translations('metal', 'ar', 'معدن');
                PERFORM insert_category_translations('metal', 'en', 'Metal');
                PERFORM insert_category_translations('metal', 'de', 'Metall');
                PERFORM insert_category_translations('metal', 'es', 'Metal');
                PERFORM insert_category_translations('metal', 'it', 'Metallo');

                -- Level 3: verre
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('verre', 'verre', 3, l2_id, 'Verre')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('verre', 'fr', 'Verre');
                PERFORM insert_category_translations('verre', 'ar', 'زجاج');
                PERFORM insert_category_translations('verre', 'en', 'Glass');
                PERFORM insert_category_translations('verre', 'de', 'Glas');
                PERFORM insert_category_translations('verre', 'es', 'Vidrio');
                PERFORM insert_category_translations('verre', 'it', 'Vetro');

            -- Level 2: plateaux-decoratifs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('plateaux-decoratifs', 'plateaux-decoratifs', 2, l1_id, 'Plateaux décoratifs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('plateaux-decoratifs', 'fr', 'Plateaux décoratifs');
            PERFORM insert_category_translations('plateaux-decoratifs', 'ar', 'صواني زخرفية');
            PERFORM insert_category_translations('plateaux-decoratifs', 'en', 'Decorative trays');
            PERFORM insert_category_translations('plateaux-decoratifs', 'de', 'Dekorative Tabletts');
            PERFORM insert_category_translations('plateaux-decoratifs', 'es', 'Bandejas decorativas');
            PERFORM insert_category_translations('plateaux-decoratifs', 'it', 'Vassoi decorativi');

            -- Level 2: coffrets-boites
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('coffrets-boites', 'coffrets-boites', 2, l1_id, 'Coffrets & boîtes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('coffrets-boites', 'fr', 'Coffrets & boîtes');
            PERFORM insert_category_translations('coffrets-boites', 'ar', 'صناديق وحاويات');
            PERFORM insert_category_translations('coffrets-boites', 'en', 'Boxes & cases');
            PERFORM insert_category_translations('coffrets-boites', 'de', 'Kästchen & Boxen');
            PERFORM insert_category_translations('coffrets-boites', 'es', 'Cajas y cofres');
            PERFORM insert_category_translations('coffrets-boites', 'it', 'Cofanetti e scatole');

                -- Level 3: coffrets
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('coffrets', 'coffrets', 3, l2_id, 'Coffrets')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('coffrets', 'fr', 'Coffrets');
                PERFORM insert_category_translations('coffrets', 'ar', 'صناديق');
                PERFORM insert_category_translations('coffrets', 'en', 'Cases');
                PERFORM insert_category_translations('coffrets', 'de', 'Kästchen');
                PERFORM insert_category_translations('coffrets', 'es', 'Cofres');
                PERFORM insert_category_translations('coffrets', 'it', 'Cofanetti');

                -- Level 3: boites
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('boites', 'boites', 3, l2_id, 'Boîtes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('boites', 'fr', 'Boîtes');
                PERFORM insert_category_translations('boites', 'ar', 'صناديق');
                PERFORM insert_category_translations('boites', 'en', 'Boxes');
                PERFORM insert_category_translations('boites', 'de', 'Boxen');
                PERFORM insert_category_translations('boites', 'es', 'Cajas');
                PERFORM insert_category_translations('boites', 'it', 'Scatole');

        -- Level 1: rangement-organisation
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('rangement-organisation', 'rangement-organisation', 1, root_id, 'Rangement & Organisation')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('rangement-organisation', 'fr', 'Rangement & Organisation');
        PERFORM insert_category_translations('rangement-organisation', 'ar', 'تنظيم وتخزين');
        PERFORM insert_category_translations('rangement-organisation', 'en', 'Storage & Organization');
        PERFORM insert_category_translations('rangement-organisation', 'de', 'Aufbewahrung & Organisation');
        PERFORM insert_category_translations('rangement-organisation', 'es', 'Almacenamiento y organización');
        PERFORM insert_category_translations('rangement-organisation', 'it', 'Organizzazione e contenitori');

            -- Level 2: boites-paniers
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('boites-paniers', 'boites-paniers', 2, l1_id, 'Boîtes & paniers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('boites-paniers', 'fr', 'Boîtes & paniers');
            PERFORM insert_category_translations('boites-paniers', 'ar', 'صناديق وسلال');
            PERFORM insert_category_translations('boites-paniers', 'en', 'Boxes & baskets');
            PERFORM insert_category_translations('boites-paniers', 'de', 'Boxen & Körbe');
            PERFORM insert_category_translations('boites-paniers', 'es', 'Cajas y cestas');
            PERFORM insert_category_translations('boites-paniers', 'it', 'Scatole e cesti');

                -- Level 3: boites
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('boites', 'boites', 3, l2_id, 'Boîtes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('boites', 'fr', 'Boîtes');
                PERFORM insert_category_translations('boites', 'ar', 'صناديق');
                PERFORM insert_category_translations('boites', 'en', 'Boxes');
                PERFORM insert_category_translations('boites', 'de', 'Boxen');
                PERFORM insert_category_translations('boites', 'es', 'Cajas');
                PERFORM insert_category_translations('boites', 'it', 'Scatole');

                -- Level 3: paniers
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('paniers', 'paniers', 3, l2_id, 'Paniers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('paniers', 'fr', 'Paniers');
                PERFORM insert_category_translations('paniers', 'ar', 'سلال');
                PERFORM insert_category_translations('paniers', 'en', 'Baskets');
                PERFORM insert_category_translations('paniers', 'de', 'Körbe');
                PERFORM insert_category_translations('paniers', 'es', 'Cestas');
                PERFORM insert_category_translations('paniers', 'it', 'Cesti');

            -- Level 2: organiseurs-tiroirs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('organiseurs-tiroirs', 'organiseurs-tiroirs', 2, l1_id, 'Organiseurs tiroirs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('organiseurs-tiroirs', 'fr', 'Organiseurs tiroirs');
            PERFORM insert_category_translations('organiseurs-tiroirs', 'ar', 'منظِّمات الأدراج');
            PERFORM insert_category_translations('organiseurs-tiroirs', 'en', 'Drawer organizers');
            PERFORM insert_category_translations('organiseurs-tiroirs', 'de', 'Schubladen-Organizer');
            PERFORM insert_category_translations('organiseurs-tiroirs', 'es', 'Organizadores de cajones');
            PERFORM insert_category_translations('organiseurs-tiroirs', 'it', 'Organizer per cassetti');

            -- Level 2: etageres-modulaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('etageres-modulaires', 'etageres-modulaires', 2, l1_id, 'Étagères modulaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('etageres-modulaires', 'fr', 'Étagères modulaires');
            PERFORM insert_category_translations('etageres-modulaires', 'ar', 'رفوف معيارية');
            PERFORM insert_category_translations('etageres-modulaires', 'en', 'Modular shelves');
            PERFORM insert_category_translations('etageres-modulaires', 'de', 'Modulare Regale');
            PERFORM insert_category_translations('etageres-modulaires', 'es', 'Estanterías modulares');
            PERFORM insert_category_translations('etageres-modulaires', 'it', 'Scaffali modulari');

            -- Level 2: meubles-rangement-materiaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('meubles-rangement-materiaux', 'meubles-rangement-materiaux', 2, l1_id, 'Meubles de rangement plastique/bois/métal')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('meubles-rangement-materiaux', 'fr', 'Meubles de rangement plastique/bois/métal');
            PERFORM insert_category_translations('meubles-rangement-materiaux', 'ar', 'أثاث تخزين بلاستيك/خشب/معدن');
            PERFORM insert_category_translations('meubles-rangement-materiaux', 'en', 'Storage units (plastic/wood/metal)');
            PERFORM insert_category_translations('meubles-rangement-materiaux', 'de', 'Aufbewahrungsmöbel aus Kunststoff/Holz/Metall');
            PERFORM insert_category_translations('meubles-rangement-materiaux', 'es', 'Muebles de almacenamiento de plástico/madera/metal');
            PERFORM insert_category_translations('meubles-rangement-materiaux', 'it', 'Mobili contenitori in plastica/legno/metallo');

                -- Level 3: plastique
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('plastique', 'plastique', 3, l2_id, 'Plastique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('plastique', 'fr', 'Plastique');
                PERFORM insert_category_translations('plastique', 'ar', 'بلاستيك');
                PERFORM insert_category_translations('plastique', 'en', 'Plastic');
                PERFORM insert_category_translations('plastique', 'de', 'Kunststoff');
                PERFORM insert_category_translations('plastique', 'es', 'Plástico');
                PERFORM insert_category_translations('plastique', 'it', 'Plastica');

                -- Level 3: bois
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bois', 'bois', 3, l2_id, 'Bois')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('bois', 'fr', 'Bois');
                PERFORM insert_category_translations('bois', 'ar', 'خشب');
                PERFORM insert_category_translations('bois', 'en', 'Wood');
                PERFORM insert_category_translations('bois', 'de', 'Holz');
                PERFORM insert_category_translations('bois', 'es', 'Madera');
                PERFORM insert_category_translations('bois', 'it', 'Legno');

                -- Level 3: metal
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('metal', 'metal', 3, l2_id, 'Métal')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('metal', 'fr', 'Métal');
                PERFORM insert_category_translations('metal', 'ar', 'معدن');
                PERFORM insert_category_translations('metal', 'en', 'Metal');
                PERFORM insert_category_translations('metal', 'de', 'Metall');
                PERFORM insert_category_translations('metal', 'es', 'Metal');
                PERFORM insert_category_translations('metal', 'it', 'Metallo');

            -- Level 2: portemanteaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('portemanteaux', 'portemanteaux', 2, l1_id, 'Portemanteaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('portemanteaux', 'fr', 'Portemanteaux');
            PERFORM insert_category_translations('portemanteaux', 'ar', 'شماعات');
            PERFORM insert_category_translations('portemanteaux', 'en', 'Coat racks');
            PERFORM insert_category_translations('portemanteaux', 'de', 'Garderobenständer');
            PERFORM insert_category_translations('portemanteaux', 'es', 'Percheros');
            PERFORM insert_category_translations('portemanteaux', 'it', 'Appendiabiti');

            -- Level 2: pateres-crochets
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pateres-crochets', 'pateres-crochets', 2, l1_id, 'Patères & crochets')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pateres-crochets', 'fr', 'Patères & crochets');
            PERFORM insert_category_translations('pateres-crochets', 'ar', 'علاقات ومشابك');
            PERFORM insert_category_translations('pateres-crochets', 'en', 'Hooks & pegs');
            PERFORM insert_category_translations('pateres-crochets', 'de', 'Wandhaken & Haken');
            PERFORM insert_category_translations('pateres-crochets', 'es', 'Perchas y ganchos');
            PERFORM insert_category_translations('pateres-crochets', 'it', 'Ganci e attaccapanni');

                -- Level 3: pateres
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pateres', 'pateres', 3, l2_id, 'Patères')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('pateres', 'fr', 'Patères');
                PERFORM insert_category_translations('pateres', 'ar', 'علاقات');
                PERFORM insert_category_translations('pateres', 'en', 'Pegs');
                PERFORM insert_category_translations('pateres', 'de', 'Wandhaken');
                PERFORM insert_category_translations('pateres', 'es', 'Perchas');
                PERFORM insert_category_translations('pateres', 'it', 'Appendini');

                -- Level 3: crochets
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('crochets', 'crochets', 3, l2_id, 'Crochets')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('crochets', 'fr', 'Crochets');
                PERFORM insert_category_translations('crochets', 'ar', 'مشابك');
                PERFORM insert_category_translations('crochets', 'en', 'Hooks');
                PERFORM insert_category_translations('crochets', 'de', 'Haken');
                PERFORM insert_category_translations('crochets', 'es', 'Ganchos');
                PERFORM insert_category_translations('crochets', 'it', 'Ganci');

            -- Level 2: armoires-pliables
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('armoires-pliables', 'armoires-pliables', 2, l1_id, 'Armoires pliables')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('armoires-pliables', 'fr', 'Armoires pliables');
            PERFORM insert_category_translations('armoires-pliables', 'ar', 'خزائن قابلة للطي');
            PERFORM insert_category_translations('armoires-pliables', 'en', 'Foldable wardrobes');
            PERFORM insert_category_translations('armoires-pliables', 'de', 'Faltbare Schränke');
            PERFORM insert_category_translations('armoires-pliables', 'es', 'Armarios plegables');
            PERFORM insert_category_translations('armoires-pliables', 'it', 'Armadi pieghevoli');

            -- Level 2: rayonnages
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('rayonnages', 'rayonnages', 2, l1_id, 'Rayonnages')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('rayonnages', 'fr', 'Rayonnages');
            PERFORM insert_category_translations('rayonnages', 'ar', 'أرفف تخزين');
            PERFORM insert_category_translations('rayonnages', 'en', 'Racking');
            PERFORM insert_category_translations('rayonnages', 'de', 'Regalsysteme');
            PERFORM insert_category_translations('rayonnages', 'es', 'Estanterías');
            PERFORM insert_category_translations('rayonnages', 'it', 'Scaffalature');

        -- Level 1: maison-intelligente
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('maison-intelligente', 'maison-intelligente', 1, root_id, 'Maison Intelligente (Smart Home)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('maison-intelligente', 'fr', 'Maison Intelligente (Smart Home)');
        PERFORM insert_category_translations('maison-intelligente', 'ar', 'منزل ذكي');
        PERFORM insert_category_translations('maison-intelligente', 'en', 'Smart Home');
        PERFORM insert_category_translations('maison-intelligente', 'de', 'Smart Home');
        PERFORM insert_category_translations('maison-intelligente', 'es', 'Hogar inteligente');
        PERFORM insert_category_translations('maison-intelligente', 'it', 'Smart Home');

            -- Level 2: ampoules-connectees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ampoules-connectees', 'ampoules-connectees', 2, l1_id, 'Ampoules connectées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ampoules-connectees', 'fr', 'Ampoules connectées');
            PERFORM insert_category_translations('ampoules-connectees', 'ar', 'مصابيح ذكية متصلة');
            PERFORM insert_category_translations('ampoules-connectees', 'en', 'Smart bulbs');
            PERFORM insert_category_translations('ampoules-connectees', 'de', 'Smarte Glühbirnen');
            PERFORM insert_category_translations('ampoules-connectees', 'es', 'Bombillas conectadas');
            PERFORM insert_category_translations('ampoules-connectees', 'it', 'Lampadine smart');

            -- Level 2: prises-intelligentes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('prises-intelligentes', 'prises-intelligentes', 2, l1_id, 'Prises intelligentes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('prises-intelligentes', 'fr', 'Prises intelligentes');
            PERFORM insert_category_translations('prises-intelligentes', 'ar', 'مقابس ذكية');
            PERFORM insert_category_translations('prises-intelligentes', 'en', 'Smart plugs');
            PERFORM insert_category_translations('prises-intelligentes', 'de', 'Intelligente Steckdosen');
            PERFORM insert_category_translations('prises-intelligentes', 'es', 'Enchufes inteligentes');
            PERFORM insert_category_translations('prises-intelligentes', 'it', 'Prese intelligenti');

            -- Level 2: capteurs-detecteurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('capteurs-detecteurs', 'capteurs-detecteurs', 2, l1_id, 'Capteurs & détecteurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('capteurs-detecteurs', 'fr', 'Capteurs & détecteurs');
            PERFORM insert_category_translations('capteurs-detecteurs', 'ar', 'حساسات وكواشف');
            PERFORM insert_category_translations('capteurs-detecteurs', 'en', 'Sensors & detectors');
            PERFORM insert_category_translations('capteurs-detecteurs', 'de', 'Sensoren & Detektoren');
            PERFORM insert_category_translations('capteurs-detecteurs', 'es', 'Sensores y detectores');
            PERFORM insert_category_translations('capteurs-detecteurs', 'it', 'Sensori & rilevatori');

                -- Level 3: capteurs
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('capteurs', 'capteurs', 3, l2_id, 'Capteurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('capteurs', 'fr', 'Capteurs');
                PERFORM insert_category_translations('capteurs', 'ar', 'حساسات');
                PERFORM insert_category_translations('capteurs', 'en', 'Sensors');
                PERFORM insert_category_translations('capteurs', 'de', 'Sensoren');
                PERFORM insert_category_translations('capteurs', 'es', 'Sensores');
                PERFORM insert_category_translations('capteurs', 'it', 'Sensori');

                -- Level 3: detecteurs
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('detecteurs', 'detecteurs', 3, l2_id, 'Détecteurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('detecteurs', 'fr', 'Détecteurs');
                PERFORM insert_category_translations('detecteurs', 'ar', 'كواشف');
                PERFORM insert_category_translations('detecteurs', 'en', 'Detectors');
                PERFORM insert_category_translations('detecteurs', 'de', 'Detektoren');
                PERFORM insert_category_translations('detecteurs', 'es', 'Detectores');
                PERFORM insert_category_translations('detecteurs', 'it', 'Rilevatori');

            -- Level 2: commandes-distance
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('commandes-distance', 'commandes-distance', 2, l1_id, 'Commandes à distance')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('commandes-distance', 'fr', 'Commandes à distance');
            PERFORM insert_category_translations('commandes-distance', 'ar', 'أجهزة تحكم عن بعد');
            PERFORM insert_category_translations('commandes-distance', 'en', 'Remote controls');
            PERFORM insert_category_translations('commandes-distance', 'de', 'Fernbedienungen');
            PERFORM insert_category_translations('commandes-distance', 'es', 'Mandos a distancia');
            PERFORM insert_category_translations('commandes-distance', 'it', 'Telecomandi');

            -- Level 2: gadgets-domotiques-decoratifs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gadgets-domotiques-decoratifs', 'gadgets-domotiques-decoratifs', 2, l1_id, 'Gadgets domotiques décoratifs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gadgets-domotiques-decoratifs', 'fr', 'Gadgets domotiques décoratifs');
            PERFORM insert_category_translations('gadgets-domotiques-decoratifs', 'ar', 'أدوات منزلية ذكية زخرفية');
            PERFORM insert_category_translations('gadgets-domotiques-decoratifs', 'en', 'Decorative smart gadgets');
            PERFORM insert_category_translations('gadgets-domotiques-decoratifs', 'de', 'Dekorative Smart-Home-Gadgets');
            PERFORM insert_category_translations('gadgets-domotiques-decoratifs', 'es', 'Gadgets domóticos decorativos');
            PERFORM insert_category_translations('gadgets-domotiques-decoratifs', 'it', 'Gadget domotici decorativi');

        -- Level 1: decoration-vegetale-plantes
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('decoration-vegetale-plantes', 'decoration-vegetale-plantes', 1, root_id, 'Décoration Végétale & Plantes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('decoration-vegetale-plantes', 'fr', 'Décoration Végétale & Plantes');
        PERFORM insert_category_translations('decoration-vegetale-plantes', 'ar', 'ديكور نباتي ونباتات');
        PERFORM insert_category_translations('decoration-vegetale-plantes', 'en', 'Botanical Decor & Plants');
        PERFORM insert_category_translations('decoration-vegetale-plantes', 'de', 'Pflanzendekoration & Pflanzen');
        PERFORM insert_category_translations('decoration-vegetale-plantes', 'es', 'Decoración vegetal y plantas');
        PERFORM insert_category_translations('decoration-vegetale-plantes', 'it', 'Decorazione vegetale e piante');

            -- Level 2: plantes-naturelles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('plantes-naturelles', 'plantes-naturelles', 2, l1_id, 'Plantes naturelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('plantes-naturelles', 'fr', 'Plantes naturelles');
            PERFORM insert_category_translations('plantes-naturelles', 'ar', 'نباتات طبيعية');
            PERFORM insert_category_translations('plantes-naturelles', 'en', 'Natural plants');
            PERFORM insert_category_translations('plantes-naturelles', 'de', 'Natürliche Pflanzen');
            PERFORM insert_category_translations('plantes-naturelles', 'es', 'Plantas naturales');
            PERFORM insert_category_translations('plantes-naturelles', 'it', 'Piante naturali');

            -- Level 2: plantes-artificielles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('plantes-artificielles', 'plantes-artificielles', 2, l1_id, 'Plantes artificielles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('plantes-artificielles', 'fr', 'Plantes artificielles');
            PERFORM insert_category_translations('plantes-artificielles', 'ar', 'نباتات صناعية');
            PERFORM insert_category_translations('plantes-artificielles', 'en', 'Artificial plants');
            PERFORM insert_category_translations('plantes-artificielles', 'de', 'Künstliche Pflanzen');
            PERFORM insert_category_translations('plantes-artificielles', 'es', 'Plantas artificiales');
            PERFORM insert_category_translations('plantes-artificielles', 'it', 'Piante artificiali');

            -- Level 2: pots-de-fleurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pots-de-fleurs', 'pots-de-fleurs', 2, l1_id, 'Pots de fleurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pots-de-fleurs', 'fr', 'Pots de fleurs');
            PERFORM insert_category_translations('pots-de-fleurs', 'ar', 'أصص زهور');
            PERFORM insert_category_translations('pots-de-fleurs', 'en', 'Flower pots');
            PERFORM insert_category_translations('pots-de-fleurs', 'de', 'Blumentöpfe');
            PERFORM insert_category_translations('pots-de-fleurs', 'es', 'Macetas');
            PERFORM insert_category_translations('pots-de-fleurs', 'it', 'Vasi per fiori');

            -- Level 2: jardinieres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jardinieres', 'jardinieres', 2, l1_id, 'Jardinières')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('jardinieres', 'fr', 'Jardinières');
            PERFORM insert_category_translations('jardinieres', 'ar', 'أحواض زراعة');
            PERFORM insert_category_translations('jardinieres', 'en', 'Planters');
            PERFORM insert_category_translations('jardinieres', 'de', 'Pflanzkübel');
            PERFORM insert_category_translations('jardinieres', 'es', 'Jardineras');
            PERFORM insert_category_translations('jardinieres', 'it', 'Fioriere');

            -- Level 2: support-plantes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('support-plantes', 'support-plantes', 2, l1_id, 'Support plantes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('support-plantes', 'fr', 'Support plantes');
            PERFORM insert_category_translations('support-plantes', 'ar', 'حوامل نباتات');
            PERFORM insert_category_translations('support-plantes', 'en', 'Plant stands');
            PERFORM insert_category_translations('support-plantes', 'de', 'Pflanzenständer');
            PERFORM insert_category_translations('support-plantes', 'es', 'Soportes para plantas');
            PERFORM insert_category_translations('support-plantes', 'it', 'Supporti per piante');

            -- Level 2: terrariums
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('terrariums', 'terrariums', 2, l1_id, 'Terrariums')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('terrariums', 'fr', 'Terrariums');
            PERFORM insert_category_translations('terrariums', 'ar', 'تراريوم');
            PERFORM insert_category_translations('terrariums', 'en', 'Terrariums');
            PERFORM insert_category_translations('terrariums', 'de', 'Terrarien');
            PERFORM insert_category_translations('terrariums', 'es', 'Terrarios');
            PERFORM insert_category_translations('terrariums', 'it', 'Terrari');

            -- Level 2: decoration-botanique
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('decoration-botanique', 'decoration-botanique', 2, l1_id, 'Décoration botanique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('decoration-botanique', 'fr', 'Décoration botanique');
            PERFORM insert_category_translations('decoration-botanique', 'ar', 'ديكور نباتي');
            PERFORM insert_category_translations('decoration-botanique', 'en', 'Botanical decor');
            PERFORM insert_category_translations('decoration-botanique', 'de', 'Botanische Dekoration');
            PERFORM insert_category_translations('decoration-botanique', 'es', 'Decoración botánica');
            PERFORM insert_category_translations('decoration-botanique', 'it', 'Decorazioni botaniche');

        -- Level 1: decoration-enfant-bebe
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('decoration-enfant-bebe', 'decoration-enfant-bebe', 1, root_id, 'Décoration Enfant & Bébé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('decoration-enfant-bebe', 'fr', 'Décoration Enfant & Bébé');
        PERFORM insert_category_translations('decoration-enfant-bebe', 'ar', 'ديكور للأطفال والرضع');
        PERFORM insert_category_translations('decoration-enfant-bebe', 'en', 'Kids & Baby Decor');
        PERFORM insert_category_translations('decoration-enfant-bebe', 'de', 'Kinder- & Babydekoration');
        PERFORM insert_category_translations('decoration-enfant-bebe', 'es', 'Decoración infantil y bebé');
        PERFORM insert_category_translations('decoration-enfant-bebe', 'it', 'Decorazione bambino e bebè');

            -- Level 2: mobilier-chambre-enfant
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mobilier-chambre-enfant', 'mobilier-chambre-enfant', 2, l1_id, 'Mobilier chambre enfant')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mobilier-chambre-enfant', 'fr', 'Mobilier chambre enfant');
            PERFORM insert_category_translations('mobilier-chambre-enfant', 'ar', 'أثاث غرفة الأطفال');
            PERFORM insert_category_translations('mobilier-chambre-enfant', 'en', 'Kids bedroom furniture');
            PERFORM insert_category_translations('mobilier-chambre-enfant', 'de', 'Kinderzimmermöbel');
            PERFORM insert_category_translations('mobilier-chambre-enfant', 'es', 'Muebles de habitación infantil');
            PERFORM insert_category_translations('mobilier-chambre-enfant', 'it', 'Arredo cameretta');

            -- Level 2: luminaires-enfant
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('luminaires-enfant', 'luminaires-enfant', 2, l1_id, 'Luminaires enfant')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('luminaires-enfant', 'fr', 'Luminaires enfant');
            PERFORM insert_category_translations('luminaires-enfant', 'ar', 'إضاءة للأطفال');
            PERFORM insert_category_translations('luminaires-enfant', 'en', 'Kids lighting');
            PERFORM insert_category_translations('luminaires-enfant', 'de', 'Kinderlampen');
            PERFORM insert_category_translations('luminaires-enfant', 'es', 'Iluminación infantil');
            PERFORM insert_category_translations('luminaires-enfant', 'it', 'Illuminazione per bambini');

            -- Level 2: stickers-posters-enfant
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('stickers-posters-enfant', 'stickers-posters-enfant', 2, l1_id, 'Stickers & posters enfant')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('stickers-posters-enfant', 'fr', 'Stickers & posters enfant');
            PERFORM insert_category_translations('stickers-posters-enfant', 'ar', 'ملصقات وبوسترات للأطفال');
            PERFORM insert_category_translations('stickers-posters-enfant', 'en', 'Kids stickers & posters');
            PERFORM insert_category_translations('stickers-posters-enfant', 'de', 'Kinder-Sticker & Poster');
            PERFORM insert_category_translations('stickers-posters-enfant', 'es', 'Pegatinas y pósters infantiles');
            PERFORM insert_category_translations('stickers-posters-enfant', 'it', 'Adesivi e poster per bambini');

                -- Level 3: stickers-enfant
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('stickers-enfant', 'stickers-enfant', 3, l2_id, 'Stickers enfant')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('stickers-enfant', 'fr', 'Stickers enfant');
                PERFORM insert_category_translations('stickers-enfant', 'ar', 'ملصقات للأطفال');
                PERFORM insert_category_translations('stickers-enfant', 'en', 'Stickers');
                PERFORM insert_category_translations('stickers-enfant', 'de', 'Kinder-Sticker');
                PERFORM insert_category_translations('stickers-enfant', 'es', 'Pegatinas infantiles');
                PERFORM insert_category_translations('stickers-enfant', 'it', 'Adesivi per bambini');

                -- Level 3: posters-enfant
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('posters-enfant', 'posters-enfant', 3, l2_id, 'Posters enfant')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('posters-enfant', 'fr', 'Posters enfant');
                PERFORM insert_category_translations('posters-enfant', 'ar', 'بوسترات للأطفال');
                PERFORM insert_category_translations('posters-enfant', 'en', 'Posters');
                PERFORM insert_category_translations('posters-enfant', 'de', 'Kinder-Poster');
                PERFORM insert_category_translations('posters-enfant', 'es', 'Pósters infantiles');
                PERFORM insert_category_translations('posters-enfant', 'it', 'Poster per bambini');

            -- Level 2: rangements-jouets
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('rangements-jouets', 'rangements-jouets', 2, l1_id, 'Rangements jouets')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('rangements-jouets', 'fr', 'Rangements jouets');
            PERFORM insert_category_translations('rangements-jouets', 'ar', 'تنظيم الألعاب');
            PERFORM insert_category_translations('rangements-jouets', 'en', 'Toy storage');
            PERFORM insert_category_translations('rangements-jouets', 'de', 'Spielzeugaufbewahrung');
            PERFORM insert_category_translations('rangements-jouets', 'es', 'Organizadores de juguetes');
            PERFORM insert_category_translations('rangements-jouets', 'it', 'Organizzatori per giocattoli');

            -- Level 2: petits-fauteuils-poufs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('petits-fauteuils-poufs', 'petits-fauteuils-poufs', 2, l1_id, 'Petits fauteuils & poufs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('petits-fauteuils-poufs', 'fr', 'Petits fauteuils & poufs');
            PERFORM insert_category_translations('petits-fauteuils-poufs', 'ar', 'كراسي صغيرة وبوفات');
            PERFORM insert_category_translations('petits-fauteuils-poufs', 'en', 'Kids armchairs & poufs');
            PERFORM insert_category_translations('petits-fauteuils-poufs', 'de', 'Kleine Sessel & Sitzhocker');
            PERFORM insert_category_translations('petits-fauteuils-poufs', 'es', 'Pequeños sillones y pufs');
            PERFORM insert_category_translations('petits-fauteuils-poufs', 'it', 'Piccole poltrone e pouf');

                -- Level 3: petits-fauteuils
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('petits-fauteuils', 'petits-fauteuils', 3, l2_id, 'Petits fauteuils')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('petits-fauteuils', 'fr', 'Petits fauteuils');
                PERFORM insert_category_translations('petits-fauteuils', 'ar', 'كراسي صغيرة');
                PERFORM insert_category_translations('petits-fauteuils', 'en', 'Armchairs');
                PERFORM insert_category_translations('petits-fauteuils', 'de', 'Kleine Sessel');
                PERFORM insert_category_translations('petits-fauteuils', 'es', 'Pequeños sillones');
                PERFORM insert_category_translations('petits-fauteuils', 'it', 'Piccole poltrone');

                -- Level 3: poufs
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('poufs', 'poufs', 3, l2_id, 'Poufs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('poufs', 'fr', 'Poufs');
                PERFORM insert_category_translations('poufs', 'ar', 'بوفات');
                PERFORM insert_category_translations('poufs', 'en', 'Poufs');
                PERFORM insert_category_translations('poufs', 'de', 'Sitzhocker');
                PERFORM insert_category_translations('poufs', 'es', 'Pufs');
                PERFORM insert_category_translations('poufs', 'it', 'Pouf');

        -- Level 1: styles-decoratifs
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('styles-decoratifs', 'styles-decoratifs', 1, root_id, 'Styles Décoratifs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('styles-decoratifs', 'fr', 'Styles Décoratifs');
        PERFORM insert_category_translations('styles-decoratifs', 'ar', 'أنماط ديكور');
        PERFORM insert_category_translations('styles-decoratifs', 'en', 'Decor Styles');
        PERFORM insert_category_translations('styles-decoratifs', 'de', 'Dekorationsstile');
        PERFORM insert_category_translations('styles-decoratifs', 'es', 'Estilos decorativos');
        PERFORM insert_category_translations('styles-decoratifs', 'it', 'Stili decorativi');

            -- Level 2: scandinave
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('scandinave', 'scandinave', 2, l1_id, 'Scandinave')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('scandinave', 'fr', 'Scandinave');
            PERFORM insert_category_translations('scandinave', 'ar', 'اسكندنافي');
            PERFORM insert_category_translations('scandinave', 'en', 'Scandinavian');
            PERFORM insert_category_translations('scandinave', 'de', 'Skandinavisch');
            PERFORM insert_category_translations('scandinave', 'es', 'Escandinavo');
            PERFORM insert_category_translations('scandinave', 'it', 'Scandinavo');

            -- Level 2: moderne
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('moderne', 'moderne', 2, l1_id, 'Moderne')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('moderne', 'fr', 'Moderne');
            PERFORM insert_category_translations('moderne', 'ar', 'حديث');
            PERFORM insert_category_translations('moderne', 'en', 'Modern');
            PERFORM insert_category_translations('moderne', 'de', 'Modern');
            PERFORM insert_category_translations('moderne', 'es', 'Moderno');
            PERFORM insert_category_translations('moderne', 'it', 'Moderno');

            -- Level 2: minimaliste
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('minimaliste', 'minimaliste', 2, l1_id, 'Minimaliste')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('minimaliste', 'fr', 'Minimaliste');
            PERFORM insert_category_translations('minimaliste', 'ar', 'بسيط');
            PERFORM insert_category_translations('minimaliste', 'en', 'Minimalist');
            PERFORM insert_category_translations('minimaliste', 'de', 'Minimalistisch');
            PERFORM insert_category_translations('minimaliste', 'es', 'Minimalista');
            PERFORM insert_category_translations('minimaliste', 'it', 'Minimalista');

            -- Level 2: industriel
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('industriel', 'industriel', 2, l1_id, 'Industriel')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('industriel', 'fr', 'Industriel');
            PERFORM insert_category_translations('industriel', 'ar', 'صناعي');
            PERFORM insert_category_translations('industriel', 'en', 'Industrial');
            PERFORM insert_category_translations('industriel', 'de', 'Industriell');
            PERFORM insert_category_translations('industriel', 'es', 'Industrial');
            PERFORM insert_category_translations('industriel', 'it', 'Industriale');

            -- Level 2: boheme
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('boheme', 'boheme', 2, l1_id, 'Bohème')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('boheme', 'fr', 'Bohème');
            PERFORM insert_category_translations('boheme', 'ar', 'بوهيمي');
            PERFORM insert_category_translations('boheme', 'en', 'Bohemian');
            PERFORM insert_category_translations('boheme', 'de', 'Boho');
            PERFORM insert_category_translations('boheme', 'es', 'Bohemio');
            PERFORM insert_category_translations('boheme', 'it', 'Boho');

            -- Level 2: vintage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vintage', 'vintage', 2, l1_id, 'Vintage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('vintage', 'fr', 'Vintage');
            PERFORM insert_category_translations('vintage', 'ar', 'كلاسيكي قديم');
            PERFORM insert_category_translations('vintage', 'en', 'Vintage');
            PERFORM insert_category_translations('vintage', 'de', 'Vintage');
            PERFORM insert_category_translations('vintage', 'es', 'Vintage');
            PERFORM insert_category_translations('vintage', 'it', 'Vintage');

            -- Level 2: art-deco
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('art-deco', 'art-deco', 2, l1_id, 'Art déco')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('art-deco', 'fr', 'Art déco');
            PERFORM insert_category_translations('art-deco', 'ar', 'آرت ديكو');
            PERFORM insert_category_translations('art-deco', 'en', 'Art deco');
            PERFORM insert_category_translations('art-deco', 'de', 'Art déco');
            PERFORM insert_category_translations('art-deco', 'es', 'Art déco');
            PERFORM insert_category_translations('art-deco', 'it', 'Art déco');

            -- Level 2: rustique-campagne
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('rustique-campagne', 'rustique-campagne', 2, l1_id, 'Rustique & campagne')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('rustique-campagne', 'fr', 'Rustique & campagne');
            PERFORM insert_category_translations('rustique-campagne', 'ar', 'ريفي وبلدي');
            PERFORM insert_category_translations('rustique-campagne', 'en', 'Rustic & country');
            PERFORM insert_category_translations('rustique-campagne', 'de', 'Rustikal & Landhaus');
            PERFORM insert_category_translations('rustique-campagne', 'es', 'Rústico y campestre');
            PERFORM insert_category_translations('rustique-campagne', 'it', 'Rustico & country');

            -- Level 2: oriental-marocain
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('oriental-marocain', 'oriental-marocain', 2, l1_id, 'Oriental & marocain')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('oriental-marocain', 'fr', 'Oriental & marocain');
            PERFORM insert_category_translations('oriental-marocain', 'ar', 'شرقي ومغربي');
            PERFORM insert_category_translations('oriental-marocain', 'en', 'Oriental & Moroccan');
            PERFORM insert_category_translations('oriental-marocain', 'de', 'Oriental & Marokkanisch');
            PERFORM insert_category_translations('oriental-marocain', 'es', 'Oriental y marroquí');
            PERFORM insert_category_translations('oriental-marocain', 'it', 'Orientale & marocchino');

            -- Level 2: contemporain
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('contemporain', 'contemporain', 2, l1_id, 'Contemporain')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('contemporain', 'fr', 'Contemporain');
            PERFORM insert_category_translations('contemporain', 'ar', 'معاصر');
            PERFORM insert_category_translations('contemporain', 'en', 'Contemporary');
            PERFORM insert_category_translations('contemporain', 'de', 'Zeitgenössisch');
            PERFORM insert_category_translations('contemporain', 'es', 'Contemporáneo');
            PERFORM insert_category_translations('contemporain', 'it', 'Contemporaneo');

            -- Level 2: classique
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('classique', 'classique', 2, l1_id, 'Classique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('classique', 'fr', 'Classique');
            PERFORM insert_category_translations('classique', 'ar', 'كلاسيكي');
            PERFORM insert_category_translations('classique', 'en', 'Classic');
            PERFORM insert_category_translations('classique', 'de', 'Klassisch');
            PERFORM insert_category_translations('classique', 'es', 'Clásico');
            PERFORM insert_category_translations('classique', 'it', 'Classico');

            -- Level 2: luxe-premium
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('luxe-premium', 'luxe-premium', 2, l1_id, 'Luxe & premium')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('luxe-premium', 'fr', 'Luxe & premium');
            PERFORM insert_category_translations('luxe-premium', 'ar', 'فاخر ومتميز');
            PERFORM insert_category_translations('luxe-premium', 'en', 'Luxury & premium');
            PERFORM insert_category_translations('luxe-premium', 'de', 'Luxus & Premium');
            PERFORM insert_category_translations('luxe-premium', 'es', 'Lujo y premium');
            PERFORM insert_category_translations('luxe-premium', 'it', 'Lusso & premium');

        -- Level 1: materiaux
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('materiaux', 'materiaux', 1, root_id, 'Matériaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('materiaux', 'fr', 'Matériaux');
        PERFORM insert_category_translations('materiaux', 'ar', 'مواد');
        PERFORM insert_category_translations('materiaux', 'en', 'Materials');
        PERFORM insert_category_translations('materiaux', 'de', 'Materialien');
        PERFORM insert_category_translations('materiaux', 'es', 'Materiales');
        PERFORM insert_category_translations('materiaux', 'it', 'Materiali');

            -- Level 2: bois-massif
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bois-massif', 'bois-massif', 2, l1_id, 'Bois massif')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bois-massif', 'fr', 'Bois massif');
            PERFORM insert_category_translations('bois-massif', 'ar', 'خشب مصمت');
            PERFORM insert_category_translations('bois-massif', 'en', 'Solid wood');
            PERFORM insert_category_translations('bois-massif', 'de', 'Massivholz');
            PERFORM insert_category_translations('bois-massif', 'es', 'Madera maciza');
            PERFORM insert_category_translations('bois-massif', 'it', 'Legno massello');

            -- Level 2: mdf
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mdf', 'mdf', 2, l1_id, 'MDF')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mdf', 'fr', 'MDF');
            PERFORM insert_category_translations('mdf', 'ar', 'MDF');
            PERFORM insert_category_translations('mdf', 'en', 'MDF');
            PERFORM insert_category_translations('mdf', 'de', 'MDF');
            PERFORM insert_category_translations('mdf', 'es', 'MDF');
            PERFORM insert_category_translations('mdf', 'it', 'MDF');

            -- Level 2: metal
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('metal', 'metal', 2, l1_id, 'Métal')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('metal', 'fr', 'Métal');
            PERFORM insert_category_translations('metal', 'ar', 'معدن');
            PERFORM insert_category_translations('metal', 'en', 'Metal');
            PERFORM insert_category_translations('metal', 'de', 'Metall');
            PERFORM insert_category_translations('metal', 'es', 'Metal');
            PERFORM insert_category_translations('metal', 'it', 'Metallo');

            -- Level 2: aluminium
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('aluminium', 'aluminium', 2, l1_id, 'Aluminium')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('aluminium', 'fr', 'Aluminium');
            PERFORM insert_category_translations('aluminium', 'ar', 'ألمنيوم');
            PERFORM insert_category_translations('aluminium', 'en', 'Aluminum');
            PERFORM insert_category_translations('aluminium', 'de', 'Aluminium');
            PERFORM insert_category_translations('aluminium', 'es', 'Aluminio');
            PERFORM insert_category_translations('aluminium', 'it', 'Alluminio');

            -- Level 2: verre
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('verre', 'verre', 2, l1_id, 'Verre')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('verre', 'fr', 'Verre');
            PERFORM insert_category_translations('verre', 'ar', 'زجاج');
            PERFORM insert_category_translations('verre', 'en', 'Glass');
            PERFORM insert_category_translations('verre', 'de', 'Glas');
            PERFORM insert_category_translations('verre', 'es', 'Vidrio');
            PERFORM insert_category_translations('verre', 'it', 'Vetro');

            -- Level 2: rotin
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('rotin', 'rotin', 2, l1_id, 'Rotin')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('rotin', 'fr', 'Rotin');
            PERFORM insert_category_translations('rotin', 'ar', 'راتان');
            PERFORM insert_category_translations('rotin', 'en', 'Rattan');
            PERFORM insert_category_translations('rotin', 'de', 'Rattan');
            PERFORM insert_category_translations('rotin', 'es', 'Ratán');
            PERFORM insert_category_translations('rotin', 'it', 'Rattan');

            -- Level 2: bambou
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bambou', 'bambou', 2, l1_id, 'Bambou')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bambou', 'fr', 'Bambou');
            PERFORM insert_category_translations('bambou', 'ar', 'بامبو');
            PERFORM insert_category_translations('bambou', 'en', 'Bamboo');
            PERFORM insert_category_translations('bambou', 'de', 'Bambus');
            PERFORM insert_category_translations('bambou', 'es', 'Bambú');
            PERFORM insert_category_translations('bambou', 'it', 'Bambù');

            -- Level 2: resine-tressee
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('resine-tressee', 'resine-tressee', 2, l1_id, 'Résine tressée')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('resine-tressee', 'fr', 'Résine tressée');
            PERFORM insert_category_translations('resine-tressee', 'ar', 'راتنج منسوج');
            PERFORM insert_category_translations('resine-tressee', 'en', 'Woven resin');
            PERFORM insert_category_translations('resine-tressee', 'de', 'Geflochtenes Harz');
            PERFORM insert_category_translations('resine-tressee', 'es', 'Resina trenzada');
            PERFORM insert_category_translations('resine-tressee', 'it', 'Resina intrecciata');

            -- Level 2: marbre
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('marbre', 'marbre', 2, l1_id, 'Marbre')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('marbre', 'fr', 'Marbre');
            PERFORM insert_category_translations('marbre', 'ar', 'رخام');
            PERFORM insert_category_translations('marbre', 'en', 'Marble');
            PERFORM insert_category_translations('marbre', 'de', 'Marmor');
            PERFORM insert_category_translations('marbre', 'es', 'Mármol');
            PERFORM insert_category_translations('marbre', 'it', 'Marmo');

            -- Level 2: ceramique
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ceramique', 'ceramique', 2, l1_id, 'Céramique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ceramique', 'fr', 'Céramique');
            PERFORM insert_category_translations('ceramique', 'ar', 'سيراميك');
            PERFORM insert_category_translations('ceramique', 'en', 'Ceramic');
            PERFORM insert_category_translations('ceramique', 'de', 'Keramik');
            PERFORM insert_category_translations('ceramique', 'es', 'Cerámica');
            PERFORM insert_category_translations('ceramique', 'it', 'Ceramica');

            -- Level 2: tissu
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tissu', 'tissu', 2, l1_id, 'Tissu')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tissu', 'fr', 'Tissu');
            PERFORM insert_category_translations('tissu', 'ar', 'قماش');
            PERFORM insert_category_translations('tissu', 'en', 'Fabric');
            PERFORM insert_category_translations('tissu', 'de', 'Stoff');
            PERFORM insert_category_translations('tissu', 'es', 'Tela');
            PERFORM insert_category_translations('tissu', 'it', 'Tessuto');

            -- Level 2: velours
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('velours', 'velours', 2, l1_id, 'Velours')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('velours', 'fr', 'Velours');
            PERFORM insert_category_translations('velours', 'ar', 'مخمل');
            PERFORM insert_category_translations('velours', 'en', 'Velvet');
            PERFORM insert_category_translations('velours', 'de', 'Samt');
            PERFORM insert_category_translations('velours', 'es', 'Terciopelo');
            PERFORM insert_category_translations('velours', 'it', 'Velluto');

            -- Level 2: cuir-simili
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cuir-simili', 'cuir-simili', 2, l1_id, 'Cuir & simili')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cuir-simili', 'fr', 'Cuir & simili');
            PERFORM insert_category_translations('cuir-simili', 'ar', 'جلد وبديل جلد');
            PERFORM insert_category_translations('cuir-simili', 'en', 'Leather & faux');
            PERFORM insert_category_translations('cuir-simili', 'de', 'Leder & Kunstleder');
            PERFORM insert_category_translations('cuir-simili', 'es', 'Cuero y cuero sintético');
            PERFORM insert_category_translations('cuir-simili', 'it', 'Pelle & similpelle');

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

                -- Level 3: simili
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('simili', 'simili', 3, l2_id, 'Simili')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('simili', 'fr', 'Simili');
                PERFORM insert_category_translations('simili', 'ar', 'بديل جلد');
                PERFORM insert_category_translations('simili', 'en', 'Faux');
                PERFORM insert_category_translations('simili', 'de', 'Kunstleder');
                PERFORM insert_category_translations('simili', 'es', 'Cuero sintético');
                PERFORM insert_category_translations('simili', 'it', 'Similpelle');

            -- Level 2: beton-decoratif
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('beton-decoratif', 'beton-decoratif', 2, l1_id, 'Béton décoratif')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('beton-decoratif', 'fr', 'Béton décoratif');
            PERFORM insert_category_translations('beton-decoratif', 'ar', 'خرسانة زخرفية');
            PERFORM insert_category_translations('beton-decoratif', 'en', 'Decorative concrete');
            PERFORM insert_category_translations('beton-decoratif', 'de', 'Dekorbeton');
            PERFORM insert_category_translations('beton-decoratif', 'es', 'Hormigón decorativo');
            PERFORM insert_category_translations('beton-decoratif', 'it', 'Cemento decorativo');

        -- Level 1: accessoires-maison
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-maison', 'accessoires-maison', 1, root_id, 'Accessoires de Maison')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('accessoires-maison', 'fr', 'Accessoires de Maison');
        PERFORM insert_category_translations('accessoires-maison', 'ar', 'إكسسوارات المنزل');
        PERFORM insert_category_translations('accessoires-maison', 'en', 'Home Accessories');
        PERFORM insert_category_translations('accessoires-maison', 'de', 'Wohnaccessoires');
        PERFORM insert_category_translations('accessoires-maison', 'es', 'Accesorios para el hogar');
        PERFORM insert_category_translations('accessoires-maison', 'it', 'Accessori casa');

            -- Level 2: horloges-reveils
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('horloges-reveils', 'horloges-reveils', 2, l1_id, 'Horloges & réveils')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('horloges-reveils', 'fr', 'Horloges & réveils');
            PERFORM insert_category_translations('horloges-reveils', 'ar', 'ساعات ومنبهات');
            PERFORM insert_category_translations('horloges-reveils', 'en', 'Clocks & alarm clocks');
            PERFORM insert_category_translations('horloges-reveils', 'de', 'Uhren & Wecker');
            PERFORM insert_category_translations('horloges-reveils', 'es', 'Relojes y despertadores');
            PERFORM insert_category_translations('horloges-reveils', 'it', 'Orologi & sveglie');

                -- Level 3: horloges
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('horloges', 'horloges', 3, l2_id, 'Horloges')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('horloges', 'fr', 'Horloges');
                PERFORM insert_category_translations('horloges', 'ar', 'ساعات');
                PERFORM insert_category_translations('horloges', 'en', 'Clocks');
                PERFORM insert_category_translations('horloges', 'de', 'Uhren');
                PERFORM insert_category_translations('horloges', 'es', 'Relojes');
                PERFORM insert_category_translations('horloges', 'it', 'Orologi');

                -- Level 3: reveils
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('reveils', 'reveils', 3, l2_id, 'Réveils')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('reveils', 'fr', 'Réveils');
                PERFORM insert_category_translations('reveils', 'ar', 'منبهات');
                PERFORM insert_category_translations('reveils', 'en', 'Alarm clocks');
                PERFORM insert_category_translations('reveils', 'de', 'Wecker');
                PERFORM insert_category_translations('reveils', 'es', 'Despertadores');
                PERFORM insert_category_translations('reveils', 'it', 'Sveglie');

            -- Level 2: cadres-photo
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cadres-photo', 'cadres-photo', 2, l1_id, 'Cadres photo')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cadres-photo', 'fr', 'Cadres photo');
            PERFORM insert_category_translations('cadres-photo', 'ar', 'إطارات صور');
            PERFORM insert_category_translations('cadres-photo', 'en', 'Photo frames');
            PERFORM insert_category_translations('cadres-photo', 'de', 'Bilderrahmen');
            PERFORM insert_category_translations('cadres-photo', 'es', 'Marcos de fotos');
            PERFORM insert_category_translations('cadres-photo', 'it', 'Cornici fotografiche');

            -- Level 2: parfums-interieur
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('parfums-interieur', 'parfums-interieur', 2, l1_id, 'Parfums d’intérieur')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('parfums-interieur', 'fr', 'Parfums d’intérieur');
            PERFORM insert_category_translations('parfums-interieur', 'ar', 'عطور منزلية');
            PERFORM insert_category_translations('parfums-interieur', 'en', 'Home fragrances');
            PERFORM insert_category_translations('parfums-interieur', 'de', 'Raumdüfte');
            PERFORM insert_category_translations('parfums-interieur', 'es', 'Aromas para interiores');
            PERFORM insert_category_translations('parfums-interieur', 'it', 'Profumi d’ambiente');

            -- Level 2: fontaines-decoratives
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fontaines-decoratives', 'fontaines-decoratives', 2, l1_id, 'Fontaines décoratives')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fontaines-decoratives', 'fr', 'Fontaines décoratives');
            PERFORM insert_category_translations('fontaines-decoratives', 'ar', 'نافورات زخرفية');
            PERFORM insert_category_translations('fontaines-decoratives', 'en', 'Decorative fountains');
            PERFORM insert_category_translations('fontaines-decoratives', 'de', 'Dekorative Brunnen');
            PERFORM insert_category_translations('fontaines-decoratives', 'es', 'Fuentes decorativas');
            PERFORM insert_category_translations('fontaines-decoratives', 'it', 'Fontane decorative');

            -- Level 2: distributeurs-savon-design
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('distributeurs-savon-design', 'distributeurs-savon-design', 2, l1_id, 'Distributeurs savon design')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('distributeurs-savon-design', 'fr', 'Distributeurs savon design');
            PERFORM insert_category_translations('distributeurs-savon-design', 'ar', 'موزعات صابون بتصميم');
            PERFORM insert_category_translations('distributeurs-savon-design', 'en', 'Designer soap dispensers');
            PERFORM insert_category_translations('distributeurs-savon-design', 'de', 'Design-Seifenspender');
            PERFORM insert_category_translations('distributeurs-savon-design', 'es', 'Dispensadores de jabón de diseño');
            PERFORM insert_category_translations('distributeurs-savon-design', 'it', 'Dispenser sapone design');

            -- Level 2: cintres-porte-accessoires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cintres-porte-accessoires', 'cintres-porte-accessoires', 2, l1_id, 'Cintres & porte-accessoires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cintres-porte-accessoires', 'fr', 'Cintres & porte-accessoires');
            PERFORM insert_category_translations('cintres-porte-accessoires', 'ar', 'علاقات ورفوف ملحقات');
            PERFORM insert_category_translations('cintres-porte-accessoires', 'en', 'Hangers & accessory holders');
            PERFORM insert_category_translations('cintres-porte-accessoires', 'de', 'Kleiderbügel & Halter');
            PERFORM insert_category_translations('cintres-porte-accessoires', 'es', 'Perchas y soportes');
            PERFORM insert_category_translations('cintres-porte-accessoires', 'it', 'Grucce & porta-accessori');

                -- Level 3: cintres
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cintres', 'cintres', 3, l2_id, 'Cintres')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('cintres', 'fr', 'Cintres');
                PERFORM insert_category_translations('cintres', 'ar', 'علاقات');
                PERFORM insert_category_translations('cintres', 'en', 'Hangers');
                PERFORM insert_category_translations('cintres', 'de', 'Kleiderbügel');
                PERFORM insert_category_translations('cintres', 'es', 'Perchas');
                PERFORM insert_category_translations('cintres', 'it', 'Grucce');

                -- Level 3: porte-accessoires
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('porte-accessoires', 'porte-accessoires', 3, l2_id, 'Porte-accessoires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('porte-accessoires', 'fr', 'Porte-accessoires');
                PERFORM insert_category_translations('porte-accessoires', 'ar', 'حوامل ملحقات');
                PERFORM insert_category_translations('porte-accessoires', 'en', 'Accessory holders');
                PERFORM insert_category_translations('porte-accessoires', 'de', 'Halter');
                PERFORM insert_category_translations('porte-accessoires', 'es', 'Soportes');
                PERFORM insert_category_translations('porte-accessoires', 'it', 'Porta-accessori');

            -- Level 2: accessoires-cheminee
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-cheminee', 'accessoires-cheminee', 2, l1_id, 'Accessoires cheminée')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('accessoires-cheminee', 'fr', 'Accessoires cheminée');
            PERFORM insert_category_translations('accessoires-cheminee', 'ar', 'ملحقات المدفأة');
            PERFORM insert_category_translations('accessoires-cheminee', 'en', 'Fireplace accessories');
            PERFORM insert_category_translations('accessoires-cheminee', 'de', 'Kaminzubehör');
            PERFORM insert_category_translations('accessoires-cheminee', 'es', 'Accesorios para chimenea');
            PERFORM insert_category_translations('accessoires-cheminee', 'it', 'Accessori camino');

        -- Level 1: objets-artisanaux-locaux
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('objets-artisanaux-locaux', 'objets-artisanaux-locaux', 1, root_id, 'Objets Artisanaux & Locaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('objets-artisanaux-locaux', 'fr', 'Objets Artisanaux & Locaux');
        PERFORM insert_category_translations('objets-artisanaux-locaux', 'ar', 'منتجات حرفية ومحلية');
        PERFORM insert_category_translations('objets-artisanaux-locaux', 'en', 'Handcrafted & Local Objects');
        PERFORM insert_category_translations('objets-artisanaux-locaux', 'de', 'Handwerks- & Lokalobjekte');
        PERFORM insert_category_translations('objets-artisanaux-locaux', 'es', 'Objetos artesanales y locales');
        PERFORM insert_category_translations('objets-artisanaux-locaux', 'it', 'Oggetti artigianali e locali');

            -- Level 2: decorations-traditionnelles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('decorations-traditionnelles', 'decorations-traditionnelles', 2, l1_id, 'Décorations traditionnelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('decorations-traditionnelles', 'fr', 'Décorations traditionnelles');
            PERFORM insert_category_translations('decorations-traditionnelles', 'ar', 'زخارف تقليدية');
            PERFORM insert_category_translations('decorations-traditionnelles', 'en', 'Traditional decorations');
            PERFORM insert_category_translations('decorations-traditionnelles', 'de', 'Traditionelle Dekorationen');
            PERFORM insert_category_translations('decorations-traditionnelles', 'es', 'Decoraciones tradicionales');
            PERFORM insert_category_translations('decorations-traditionnelles', 'it', 'Decorazioni tradizionali');

            -- Level 2: articles-berberes-orientaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('articles-berberes-orientaux', 'articles-berberes-orientaux', 2, l1_id, 'Articles berbères & orientaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('articles-berberes-orientaux', 'fr', 'Articles berbères & orientaux');
            PERFORM insert_category_translations('articles-berberes-orientaux', 'ar', 'منتجات أمازيغية وشرقية');
            PERFORM insert_category_translations('articles-berberes-orientaux', 'en', 'Berber & oriental items');
            PERFORM insert_category_translations('articles-berberes-orientaux', 'de', 'Berberische & orientalische Artikel');
            PERFORM insert_category_translations('articles-berberes-orientaux', 'es', 'Artículos bereberes y orientales');
            PERFORM insert_category_translations('articles-berberes-orientaux', 'it', 'Articoli berberi & orientali');

                -- Level 3: berberes
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('berberes', 'berberes', 3, l2_id, 'Berbères')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('berberes', 'fr', 'Berbères');
                PERFORM insert_category_translations('berberes', 'ar', 'أمازيغية');
                PERFORM insert_category_translations('berberes', 'en', 'Berber');
                PERFORM insert_category_translations('berberes', 'de', 'Berberisch');
                PERFORM insert_category_translations('berberes', 'es', 'Bereberes');
                PERFORM insert_category_translations('berberes', 'it', 'Berberi');

                -- Level 3: orientaux
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('orientaux', 'orientaux', 3, l2_id, 'Orientaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('orientaux', 'fr', 'Orientaux');
                PERFORM insert_category_translations('orientaux', 'ar', 'شرقية');
                PERFORM insert_category_translations('orientaux', 'en', 'Oriental');
                PERFORM insert_category_translations('orientaux', 'de', 'Orientalisch');
                PERFORM insert_category_translations('orientaux', 'es', 'Orientales');
                PERFORM insert_category_translations('orientaux', 'it', 'Orientali');

            -- Level 2: paniers-tresses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('paniers-tresses', 'paniers-tresses', 2, l1_id, 'Paniers tressés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('paniers-tresses', 'fr', 'Paniers tressés');
            PERFORM insert_category_translations('paniers-tresses', 'ar', 'سلال منسوجة');
            PERFORM insert_category_translations('paniers-tresses', 'en', 'Woven baskets');
            PERFORM insert_category_translations('paniers-tresses', 'de', 'Geflochtene Körbe');
            PERFORM insert_category_translations('paniers-tresses', 'es', 'Cestas trenzadas');
            PERFORM insert_category_translations('paniers-tresses', 'it', 'Cesti intrecciati');

            -- Level 2: poufs-artisanaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('poufs-artisanaux', 'poufs-artisanaux', 2, l1_id, 'Poufs artisanaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('poufs-artisanaux', 'fr', 'Poufs artisanaux');
            PERFORM insert_category_translations('poufs-artisanaux', 'ar', 'بوفات يدوية الصنع');
            PERFORM insert_category_translations('poufs-artisanaux', 'en', 'Handcrafted poufs');
            PERFORM insert_category_translations('poufs-artisanaux', 'de', 'Handgefertigte Poufs');
            PERFORM insert_category_translations('poufs-artisanaux', 'es', 'Pufs artesanales');
            PERFORM insert_category_translations('poufs-artisanaux', 'it', 'Pouf artigianali');

            -- Level 2: art-mural-local
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('art-mural-local', 'art-mural-local', 2, l1_id, 'Art mural local')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('art-mural-local', 'fr', 'Art mural local');
            PERFORM insert_category_translations('art-mural-local', 'ar', 'فن جداري محلي');
            PERFORM insert_category_translations('art-mural-local', 'en', 'Local wall art');
            PERFORM insert_category_translations('art-mural-local', 'de', 'Lokale Wandkunst');
            PERFORM insert_category_translations('art-mural-local', 'es', 'Arte mural local');
            PERFORM insert_category_translations('art-mural-local', 'it', 'Arte murale locale');
END $$;