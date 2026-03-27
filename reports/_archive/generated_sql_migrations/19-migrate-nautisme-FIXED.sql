-- Migration: Nautisme & Bateaux (Generated Recursive)
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

    -- Level 0: nautisme
    INSERT INTO categories (id, slug, level, name)
    VALUES ('nautisme', 'nautisme', 0, 'Nautisme & Bateaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 0, name = EXCLUDED.name
    RETURNING id INTO root_id;
    PERFORM insert_category_translations('nautisme', 'fr', 'Nautisme & Bateaux');
    PERFORM insert_category_translations('nautisme', 'ar', 'قوارب وبحرية');
    PERFORM insert_category_translations('nautisme', 'en', 'Boating & Marine');
    PERFORM insert_category_translations('nautisme', 'de', 'Boote & Nautik');
    PERFORM insert_category_translations('nautisme', 'es', 'Náutica & Embarcaciones');
    PERFORM insert_category_translations('nautisme', 'it', 'Nautica & Imbarcazioni');

        -- Level 1: types-de-bateaux
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('types-de-bateaux', 'types-de-bateaux', 1, root_id, 'Types de bateaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('types-de-bateaux', 'fr', 'Types de bateaux');
        PERFORM insert_category_translations('types-de-bateaux', 'ar', 'أنواع القوارب');
        PERFORM insert_category_translations('types-de-bateaux', 'en', 'Boat Types');
        PERFORM insert_category_translations('types-de-bateaux', 'de', 'Bootstypen');
        PERFORM insert_category_translations('types-de-bateaux', 'es', 'Tipos de embarcaciones');
        PERFORM insert_category_translations('types-de-bateaux', 'it', 'Tipi di imbarcazioni');

            -- Level 2: bateaux-a-moteur
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bateaux-a-moteur', 'bateaux-a-moteur', 2, l1_id, 'Bateaux à moteur')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bateaux-a-moteur', 'fr', 'Bateaux à moteur');
            PERFORM insert_category_translations('bateaux-a-moteur', 'ar', 'قوارب بمحرك');
            PERFORM insert_category_translations('bateaux-a-moteur', 'en', 'Powerboats');
            PERFORM insert_category_translations('bateaux-a-moteur', 'de', 'Motorboote');
            PERFORM insert_category_translations('bateaux-a-moteur', 'es', 'Lanchas a motor');
            PERFORM insert_category_translations('bateaux-a-moteur', 'it', 'Barche a motore');

            -- Level 2: voiliers
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('voiliers', 'voiliers', 2, l1_id, 'Voiliers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('voiliers', 'fr', 'Voiliers');
            PERFORM insert_category_translations('voiliers', 'ar', 'قوارب شراعية');
            PERFORM insert_category_translations('voiliers', 'en', 'Sailboats');
            PERFORM insert_category_translations('voiliers', 'de', 'Segelboote');
            PERFORM insert_category_translations('voiliers', 'es', 'Veleros');
            PERFORM insert_category_translations('voiliers', 'it', 'Barche a vela');

            -- Level 2: yachts
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('yachts', 'yachts', 2, l1_id, 'Yachts')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('yachts', 'fr', 'Yachts');
            PERFORM insert_category_translations('yachts', 'ar', 'يخوت');
            PERFORM insert_category_translations('yachts', 'en', 'Yachts');
            PERFORM insert_category_translations('yachts', 'de', 'Yachten');
            PERFORM insert_category_translations('yachts', 'es', 'Yates');
            PERFORM insert_category_translations('yachts', 'it', 'Yacht');

            -- Level 2: semi-rigides
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('semi-rigides', 'semi-rigides', 2, l1_id, 'Semi-rigides')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('semi-rigides', 'fr', 'Semi-rigides');
            PERFORM insert_category_translations('semi-rigides', 'ar', 'قوارب شبه صلبة');
            PERFORM insert_category_translations('semi-rigides', 'en', 'RIBs');
            PERFORM insert_category_translations('semi-rigides', 'de', 'Schlauchboote (RIB)');
            PERFORM insert_category_translations('semi-rigides', 'es', 'Semirrígidos');
            PERFORM insert_category_translations('semi-rigides', 'it', 'Gommoni (RIB)');

            -- Level 2: zodiacs-pneumatiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('zodiacs-pneumatiques', 'zodiacs-pneumatiques', 2, l1_id, 'Zodiacs & pneumatiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('zodiacs-pneumatiques', 'fr', 'Zodiacs & pneumatiques');
            PERFORM insert_category_translations('zodiacs-pneumatiques', 'ar', 'زودياك وقوارب مطاطية');
            PERFORM insert_category_translations('zodiacs-pneumatiques', 'en', 'Inflatables & Zodiacs');
            PERFORM insert_category_translations('zodiacs-pneumatiques', 'de', 'Schlauchboote & Zodiacs');
            PERFORM insert_category_translations('zodiacs-pneumatiques', 'es', 'Zodiacs & neumáticas');
            PERFORM insert_category_translations('zodiacs-pneumatiques', 'it', 'Gommoni & Zodiacs');

            -- Level 2: jet-skis-scooters-mer
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jet-skis-scooters-mer', 'jet-skis-scooters-mer', 2, l1_id, 'Jet-skis & scooters des mers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('jet-skis-scooters-mer', 'fr', 'Jet-skis & scooters des mers');
            PERFORM insert_category_translations('jet-skis-scooters-mer', 'ar', 'دراجات مائية');
            PERFORM insert_category_translations('jet-skis-scooters-mer', 'en', 'Jet skis & PWCs');
            PERFORM insert_category_translations('jet-skis-scooters-mer', 'de', 'Jetskis & Wasserroller');
            PERFORM insert_category_translations('jet-skis-scooters-mer', 'es', 'Motos de agua');
            PERFORM insert_category_translations('jet-skis-scooters-mer', 'it', 'Moto d’acqua');

            -- Level 2: barques-chaloupes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('barques-chaloupes', 'barques-chaloupes', 2, l1_id, 'Barques & chaloupes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('barques-chaloupes', 'fr', 'Barques & chaloupes');
            PERFORM insert_category_translations('barques-chaloupes', 'ar', 'مراكب تجديف وشالوبيات');
            PERFORM insert_category_translations('barques-chaloupes', 'en', 'Rowboats & skiffs');
            PERFORM insert_category_translations('barques-chaloupes', 'de', 'Ruderboote & Schaluppen');
            PERFORM insert_category_translations('barques-chaloupes', 'es', 'Botes & chalupas');
            PERFORM insert_category_translations('barques-chaloupes', 'it', 'Barche a remi & lance');

            -- Level 2: kayaks
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('kayaks', 'kayaks', 2, l1_id, 'Kayaks')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('kayaks', 'fr', 'Kayaks');
            PERFORM insert_category_translations('kayaks', 'ar', 'كاياك');
            PERFORM insert_category_translations('kayaks', 'en', 'Kayaks');
            PERFORM insert_category_translations('kayaks', 'de', 'Kajaks');
            PERFORM insert_category_translations('kayaks', 'es', 'Kayaks');
            PERFORM insert_category_translations('kayaks', 'it', 'Kayak');

            -- Level 2: canoes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('canoes', 'canoes', 2, l1_id, 'Canoës')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('canoes', 'fr', 'Canoës');
            PERFORM insert_category_translations('canoes', 'ar', 'كانو');
            PERFORM insert_category_translations('canoes', 'en', 'Canoes');
            PERFORM insert_category_translations('canoes', 'de', 'Kanus');
            PERFORM insert_category_translations('canoes', 'es', 'Canoas');
            PERFORM insert_category_translations('canoes', 'it', 'Canoe');

            -- Level 2: bateaux-de-peche
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bateaux-de-peche', 'bateaux-de-peche', 2, l1_id, 'Bateaux de pêche')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bateaux-de-peche', 'fr', 'Bateaux de pêche');
            PERFORM insert_category_translations('bateaux-de-peche', 'ar', 'قوارب صيد');
            PERFORM insert_category_translations('bateaux-de-peche', 'en', 'Fishing boats');
            PERFORM insert_category_translations('bateaux-de-peche', 'de', 'Fischerboote');
            PERFORM insert_category_translations('bateaux-de-peche', 'es', 'Barcos de pesca');
            PERFORM insert_category_translations('bateaux-de-peche', 'it', 'Barche da pesca');

            -- Level 2: pedalos
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pedalos', 'pedalos', 2, l1_id, 'Pédalos')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pedalos', 'fr', 'Pédalos');
            PERFORM insert_category_translations('pedalos', 'ar', 'قوارب بدالات');
            PERFORM insert_category_translations('pedalos', 'en', 'Pedal boats');
            PERFORM insert_category_translations('pedalos', 'de', 'Tretboote');
            PERFORM insert_category_translations('pedalos', 'es', 'Hidropedales');
            PERFORM insert_category_translations('pedalos', 'it', 'Pedalò');

            -- Level 2: catamarans
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('catamarans', 'catamarans', 2, l1_id, 'Catamarans')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('catamarans', 'fr', 'Catamarans');
            PERFORM insert_category_translations('catamarans', 'ar', 'كاتاماران');
            PERFORM insert_category_translations('catamarans', 'en', 'Catamarans');
            PERFORM insert_category_translations('catamarans', 'de', 'Katamarane');
            PERFORM insert_category_translations('catamarans', 'es', 'Catamaranes');
            PERFORM insert_category_translations('catamarans', 'it', 'Catamarani');

            -- Level 2: planches-a-voile-windsurf
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('planches-a-voile-windsurf', 'planches-a-voile-windsurf', 2, l1_id, 'Planches à voile & windsurf')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('planches-a-voile-windsurf', 'fr', 'Planches à voile & windsurf');
            PERFORM insert_category_translations('planches-a-voile-windsurf', 'ar', 'ألواح ويندسيرف');
            PERFORM insert_category_translations('planches-a-voile-windsurf', 'en', 'Windsurf boards');
            PERFORM insert_category_translations('planches-a-voile-windsurf', 'de', 'Windsurf-Bretter');
            PERFORM insert_category_translations('planches-a-voile-windsurf', 'es', 'Tablas de windsurf');
            PERFORM insert_category_translations('planches-a-voile-windsurf', 'it', 'Tavole windsurf');

        -- Level 1: moteurs-propulsion
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('moteurs-propulsion', 'moteurs-propulsion', 1, root_id, 'Moteurs & propulsion')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('moteurs-propulsion', 'fr', 'Moteurs & propulsion');
        PERFORM insert_category_translations('moteurs-propulsion', 'ar', 'المحركات والدفع');
        PERFORM insert_category_translations('moteurs-propulsion', 'en', 'Engines & Propulsion');
        PERFORM insert_category_translations('moteurs-propulsion', 'de', 'Motoren & Antrieb');
        PERFORM insert_category_translations('moteurs-propulsion', 'es', 'Motores & Propulsión');
        PERFORM insert_category_translations('moteurs-propulsion', 'it', 'Motori & Propulsione');

            -- Level 2: moteurs-hors-bord
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('moteurs-hors-bord', 'moteurs-hors-bord', 2, l1_id, 'Moteurs hors-bord')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('moteurs-hors-bord', 'fr', 'Moteurs hors-bord');
            PERFORM insert_category_translations('moteurs-hors-bord', 'ar', 'محركات خارجية');
            PERFORM insert_category_translations('moteurs-hors-bord', 'en', 'Outboard engines');
            PERFORM insert_category_translations('moteurs-hors-bord', 'de', 'Außenbordmotoren');
            PERFORM insert_category_translations('moteurs-hors-bord', 'es', 'Motores fueraborda');
            PERFORM insert_category_translations('moteurs-hors-bord', 'it', 'Motori fuoribordo');

            -- Level 2: moteurs-in-bord
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('moteurs-in-bord', 'moteurs-in-bord', 2, l1_id, 'Moteurs in-bord')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('moteurs-in-bord', 'fr', 'Moteurs in-bord');
            PERFORM insert_category_translations('moteurs-in-bord', 'ar', 'محركات داخلية');
            PERFORM insert_category_translations('moteurs-in-bord', 'en', 'Inboard engines');
            PERFORM insert_category_translations('moteurs-in-bord', 'de', 'Innenbordmotoren');
            PERFORM insert_category_translations('moteurs-in-bord', 'es', 'Motores intraborda');
            PERFORM insert_category_translations('moteurs-in-bord', 'it', 'Motori entrobordo');

            -- Level 2: moteurs-electriques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('moteurs-electriques', 'moteurs-electriques', 2, l1_id, 'Moteurs électriques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('moteurs-electriques', 'fr', 'Moteurs électriques');
            PERFORM insert_category_translations('moteurs-electriques', 'ar', 'محركات كهربائية');
            PERFORM insert_category_translations('moteurs-electriques', 'en', 'Electric motors');
            PERFORM insert_category_translations('moteurs-electriques', 'de', 'Elektromotoren');
            PERFORM insert_category_translations('moteurs-electriques', 'es', 'Motores eléctricos');
            PERFORM insert_category_translations('moteurs-electriques', 'it', 'Motori elettrici');

            -- Level 2: helices
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('helices', 'helices', 2, l1_id, 'Hélices')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('helices', 'fr', 'Hélices');
            PERFORM insert_category_translations('helices', 'ar', 'مراوح');
            PERFORM insert_category_translations('helices', 'en', 'Propellers');
            PERFORM insert_category_translations('helices', 'de', 'Propeller');
            PERFORM insert_category_translations('helices', 'es', 'Hélices');
            PERFORM insert_category_translations('helices', 'it', 'Eliche');

            -- Level 2: propulsion-auxiliaire
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('propulsion-auxiliaire', 'propulsion-auxiliaire', 2, l1_id, 'Systèmes de propulsion auxiliaire')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('propulsion-auxiliaire', 'fr', 'Systèmes de propulsion auxiliaire');
            PERFORM insert_category_translations('propulsion-auxiliaire', 'ar', 'دفع مساعد');
            PERFORM insert_category_translations('propulsion-auxiliaire', 'en', 'Auxiliary propulsion');
            PERFORM insert_category_translations('propulsion-auxiliaire', 'de', 'Hilfsantrieb');
            PERFORM insert_category_translations('propulsion-auxiliaire', 'es', 'Propulsión auxiliar');
            PERFORM insert_category_translations('propulsion-auxiliaire', 'it', 'Propulsione ausiliaria');

            -- Level 2: batteries-marine
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('batteries-marine', 'batteries-marine', 2, l1_id, 'Batteries marine')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('batteries-marine', 'fr', 'Batteries marine');
            PERFORM insert_category_translations('batteries-marine', 'ar', 'بطاريات بحرية');
            PERFORM insert_category_translations('batteries-marine', 'en', 'Marine batteries');
            PERFORM insert_category_translations('batteries-marine', 'de', 'Bootsbatterien');
            PERFORM insert_category_translations('batteries-marine', 'es', 'Baterías marinas');
            PERFORM insert_category_translations('batteries-marine', 'it', 'Batterie marine');

            -- Level 2: reservoirs-carburant-nautique
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('reservoirs-carburant-nautique', 'reservoirs-carburant-nautique', 2, l1_id, 'Réservoirs & carburant nautique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('reservoirs-carburant-nautique', 'fr', 'Réservoirs & carburant nautique');
            PERFORM insert_category_translations('reservoirs-carburant-nautique', 'ar', 'خزانات ووقود بحري');
            PERFORM insert_category_translations('reservoirs-carburant-nautique', 'en', 'Fuel tanks & marine fuel');
            PERFORM insert_category_translations('reservoirs-carburant-nautique', 'de', 'Kraftstofftanks & Bootskraftstoff');
            PERFORM insert_category_translations('reservoirs-carburant-nautique', 'es', 'Depósitos & combustible marino');
            PERFORM insert_category_translations('reservoirs-carburant-nautique', 'it', 'Serbatoi & carburante marino');

        -- Level 1: equipements-de-navigation
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('equipements-de-navigation', 'equipements-de-navigation', 1, root_id, 'Équipements de navigation')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('equipements-de-navigation', 'fr', 'Équipements de navigation');
        PERFORM insert_category_translations('equipements-de-navigation', 'ar', 'معدات الملاحة');
        PERFORM insert_category_translations('equipements-de-navigation', 'en', 'Navigation Equipment');
        PERFORM insert_category_translations('equipements-de-navigation', 'de', 'Navigationsausrüstung');
        PERFORM insert_category_translations('equipements-de-navigation', 'es', 'Equipos de navegación');
        PERFORM insert_category_translations('equipements-de-navigation', 'it', 'Strumenti di navigazione');

            -- Level 2: gps-nautiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gps-nautiques', 'gps-nautiques', 2, l1_id, 'GPS nautiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gps-nautiques', 'fr', 'GPS nautiques');
            PERFORM insert_category_translations('gps-nautiques', 'ar', 'GPS بحري');
            PERFORM insert_category_translations('gps-nautiques', 'en', 'Marine GPS');
            PERFORM insert_category_translations('gps-nautiques', 'de', 'Marine-GPS');
            PERFORM insert_category_translations('gps-nautiques', 'es', 'GPS marinos');
            PERFORM insert_category_translations('gps-nautiques', 'it', 'GPS marini');

            -- Level 2: sondeurs-echosondeurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sondeurs-echosondeurs', 'sondeurs-echosondeurs', 2, l1_id, 'Sondeurs & échosondeurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sondeurs-echosondeurs', 'fr', 'Sondeurs & échosondeurs');
            PERFORM insert_category_translations('sondeurs-echosondeurs', 'ar', 'مجسات وصدى');
            PERFORM insert_category_translations('sondeurs-echosondeurs', 'en', 'Fishfinders & echo sounders');
            PERFORM insert_category_translations('sondeurs-echosondeurs', 'de', 'Echolote & Fischfinder');
            PERFORM insert_category_translations('sondeurs-echosondeurs', 'es', 'Sondas & ecosondas');
            PERFORM insert_category_translations('sondeurs-echosondeurs', 'it', 'Ecoscandagli & fishfinder');

            -- Level 2: radars
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('radars', 'radars', 2, l1_id, 'Radars')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('radars', 'fr', 'Radars');
            PERFORM insert_category_translations('radars', 'ar', 'رادارات');
            PERFORM insert_category_translations('radars', 'en', 'Radars');
            PERFORM insert_category_translations('radars', 'de', 'Radare');
            PERFORM insert_category_translations('radars', 'es', 'Radares');
            PERFORM insert_category_translations('radars', 'it', 'Radar');

            -- Level 2: cartes-instruments-marins
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cartes-instruments-marins', 'cartes-instruments-marins', 2, l1_id, 'Cartes & instruments marins')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cartes-instruments-marins', 'fr', 'Cartes & instruments marins');
            PERFORM insert_category_translations('cartes-instruments-marins', 'ar', 'خرائط وأدوات بحرية');
            PERFORM insert_category_translations('cartes-instruments-marins', 'en', 'Charts & marine instruments');
            PERFORM insert_category_translations('cartes-instruments-marins', 'de', 'Seekarten & Marineinstrumente');
            PERFORM insert_category_translations('cartes-instruments-marins', 'es', 'Cartas & instrumentos marinos');
            PERFORM insert_category_translations('cartes-instruments-marins', 'it', 'Carte & strumenti marini');

            -- Level 2: compas
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('compas', 'compas', 2, l1_id, 'Compas')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('compas', 'fr', 'Compas');
            PERFORM insert_category_translations('compas', 'ar', 'بوصلة');
            PERFORM insert_category_translations('compas', 'en', 'Compasses');
            PERFORM insert_category_translations('compas', 'de', 'Kompass');
            PERFORM insert_category_translations('compas', 'es', 'Brújulas');
            PERFORM insert_category_translations('compas', 'it', 'Bussole');

            -- Level 2: pilotes-automatiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pilotes-automatiques', 'pilotes-automatiques', 2, l1_id, 'Pilotes automatiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pilotes-automatiques', 'fr', 'Pilotes automatiques');
            PERFORM insert_category_translations('pilotes-automatiques', 'ar', 'طيار آلي');
            PERFORM insert_category_translations('pilotes-automatiques', 'en', 'Autopilots');
            PERFORM insert_category_translations('pilotes-automatiques', 'de', 'Autopiloten');
            PERFORM insert_category_translations('pilotes-automatiques', 'es', 'Pilotos automáticos');
            PERFORM insert_category_translations('pilotes-automatiques', 'it', 'Piloti automatici');

            -- Level 2: radios-vhf
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('radios-vhf', 'radios-vhf', 2, l1_id, 'Radios VHF')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('radios-vhf', 'fr', 'Radios VHF');
            PERFORM insert_category_translations('radios-vhf', 'ar', 'راديو VHF');
            PERFORM insert_category_translations('radios-vhf', 'en', 'VHF radios');
            PERFORM insert_category_translations('radios-vhf', 'de', 'UKW-Funkgeräte');
            PERFORM insert_category_translations('radios-vhf', 'es', 'Radios VHF');
            PERFORM insert_category_translations('radios-vhf', 'it', 'Radio VHF');

            -- Level 2: traceurs-de-cartes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('traceurs-de-cartes', 'traceurs-de-cartes', 2, l1_id, 'Traceurs de cartes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('traceurs-de-cartes', 'fr', 'Traceurs de cartes');
            PERFORM insert_category_translations('traceurs-de-cartes', 'ar', 'راسم خرائط');
            PERFORM insert_category_translations('traceurs-de-cartes', 'en', 'Chartplotters');
            PERFORM insert_category_translations('traceurs-de-cartes', 'de', 'Kartenplotter');
            PERFORM insert_category_translations('traceurs-de-cartes', 'es', 'Plotters de cartas');
            PERFORM insert_category_translations('traceurs-de-cartes', 'it', 'Chartplotter');

            -- Level 2: jumelles-marines
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jumelles-marines', 'jumelles-marines', 2, l1_id, 'Jumelles marines')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('jumelles-marines', 'fr', 'Jumelles marines');
            PERFORM insert_category_translations('jumelles-marines', 'ar', 'مناظير بحرية');
            PERFORM insert_category_translations('jumelles-marines', 'en', 'Marine binoculars');
            PERFORM insert_category_translations('jumelles-marines', 'de', 'Marine-Ferngläser');
            PERFORM insert_category_translations('jumelles-marines', 'es', 'Binoculares marinos');
            PERFORM insert_category_translations('jumelles-marines', 'it', 'Binocoli marini');

        -- Level 1: securite-sauvetage
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('securite-sauvetage', 'securite-sauvetage', 1, root_id, 'Sécurité & sauvetage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('securite-sauvetage', 'fr', 'Sécurité & sauvetage');
        PERFORM insert_category_translations('securite-sauvetage', 'ar', 'السلامة والإنقاذ');
        PERFORM insert_category_translations('securite-sauvetage', 'en', 'Safety & Rescue');
        PERFORM insert_category_translations('securite-sauvetage', 'de', 'Sicherheit & Rettung');
        PERFORM insert_category_translations('securite-sauvetage', 'es', 'Seguridad & Salvamento');
        PERFORM insert_category_translations('securite-sauvetage', 'it', 'Sicurezza & salvataggio');

            -- Level 2: gilets-de-sauvetage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gilets-de-sauvetage', 'gilets-de-sauvetage', 2, l1_id, 'Gilets de sauvetage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gilets-de-sauvetage', 'fr', 'Gilets de sauvetage');
            PERFORM insert_category_translations('gilets-de-sauvetage', 'ar', 'سترات نجاة');
            PERFORM insert_category_translations('gilets-de-sauvetage', 'en', 'Life jackets');
            PERFORM insert_category_translations('gilets-de-sauvetage', 'de', 'Rettungswesten');
            PERFORM insert_category_translations('gilets-de-sauvetage', 'es', 'Chalecos salvavidas');
            PERFORM insert_category_translations('gilets-de-sauvetage', 'it', 'Gilet salvagente');

            -- Level 2: bouees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bouees', 'bouees', 2, l1_id, 'Bouées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bouees', 'fr', 'Bouées');
            PERFORM insert_category_translations('bouees', 'ar', 'عوامات');
            PERFORM insert_category_translations('bouees', 'en', 'Buoys');
            PERFORM insert_category_translations('bouees', 'de', 'Bojen');
            PERFORM insert_category_translations('bouees', 'es', 'Boyas');
            PERFORM insert_category_translations('bouees', 'it', 'Boe');

            -- Level 2: harnais-lignes-de-vie
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('harnais-lignes-de-vie', 'harnais-lignes-de-vie', 2, l1_id, 'Harnais & lignes de vie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('harnais-lignes-de-vie', 'fr', 'Harnais & lignes de vie');
            PERFORM insert_category_translations('harnais-lignes-de-vie', 'ar', 'أحزمة وخطوط حياة');
            PERFORM insert_category_translations('harnais-lignes-de-vie', 'en', 'Harnesses & lifelines');
            PERFORM insert_category_translations('harnais-lignes-de-vie', 'de', 'Sicherheitsgurte & Lifelines');
            PERFORM insert_category_translations('harnais-lignes-de-vie', 'es', 'Arneses & líneas de vida');
            PERFORM insert_category_translations('harnais-lignes-de-vie', 'it', 'Imbracature & lifeline');

            -- Level 2: extincteurs-marine
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('extincteurs-marine', 'extincteurs-marine', 2, l1_id, 'Extincteurs marine')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('extincteurs-marine', 'fr', 'Extincteurs marine');
            PERFORM insert_category_translations('extincteurs-marine', 'ar', 'طفايات بحرية');
            PERFORM insert_category_translations('extincteurs-marine', 'en', 'Marine fire extinguishers');
            PERFORM insert_category_translations('extincteurs-marine', 'de', 'Feuerlöscher für Boote');
            PERFORM insert_category_translations('extincteurs-marine', 'es', 'Extintores marinos');
            PERFORM insert_category_translations('extincteurs-marine', 'it', 'Estintori marini');

            -- Level 2: trousses-de-secours
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('trousses-de-secours', 'trousses-de-secours', 2, l1_id, 'Trousses de secours')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('trousses-de-secours', 'fr', 'Trousses de secours');
            PERFORM insert_category_translations('trousses-de-secours', 'ar', 'حقائب إسعاف أولي');
            PERFORM insert_category_translations('trousses-de-secours', 'en', 'First aid kits');
            PERFORM insert_category_translations('trousses-de-secours', 'de', 'Erste-Hilfe-Sets');
            PERFORM insert_category_translations('trousses-de-secours', 'es', 'Kits de primeros auxilios');
            PERFORM insert_category_translations('trousses-de-secours', 'it', 'Kit di pronto soccorso');

            -- Level 2: fusees-signalisations
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fusees-signalisations', 'fusees-signalisations', 2, l1_id, 'Fusées & signalisations')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fusees-signalisations', 'fr', 'Fusées & signalisations');
            PERFORM insert_category_translations('fusees-signalisations', 'ar', 'مشاعل وإشارات');
            PERFORM insert_category_translations('fusees-signalisations', 'en', 'Flares & signaling');
            PERFORM insert_category_translations('fusees-signalisations', 'de', 'Leuchtraketen & Signale');
            PERFORM insert_category_translations('fusees-signalisations', 'es', 'Bengalas & señalización');
            PERFORM insert_category_translations('fusees-signalisations', 'it', 'Razzi & segnalazioni');

            -- Level 2: kits-d-urgence
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('kits-d-urgence', 'kits-d-urgence', 2, l1_id, 'Kits d’urgence')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('kits-d-urgence', 'fr', 'Kits d’urgence');
            PERFORM insert_category_translations('kits-d-urgence', 'ar', 'مجموعات طوارئ');
            PERFORM insert_category_translations('kits-d-urgence', 'en', 'Emergency kits');
            PERFORM insert_category_translations('kits-d-urgence', 'de', 'Notfallsets');
            PERFORM insert_category_translations('kits-d-urgence', 'es', 'Kits de emergencia');
            PERFORM insert_category_translations('kits-d-urgence', 'it', 'Kit di emergenza');

            -- Level 2: pompes-de-cale
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pompes-de-cale', 'pompes-de-cale', 2, l1_id, 'Pompes de cale')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pompes-de-cale', 'fr', 'Pompes de cale');
            PERFORM insert_category_translations('pompes-de-cale', 'ar', 'مضخات تجفيف القاع');
            PERFORM insert_category_translations('pompes-de-cale', 'en', 'Bilge pumps');
            PERFORM insert_category_translations('pompes-de-cale', 'de', 'Bilgenpumpen');
            PERFORM insert_category_translations('pompes-de-cale', 'es', 'Bombas de achique');
            PERFORM insert_category_translations('pompes-de-cale', 'it', 'Pompe di sentina');

        -- Level 1: accastillage-pieces-detachees
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accastillage-pieces-detachees', 'accastillage-pieces-detachees', 1, root_id, 'Accastillage & pièces détachées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('accastillage-pieces-detachees', 'fr', 'Accastillage & pièces détachées');
        PERFORM insert_category_translations('accastillage-pieces-detachees', 'ar', 'تجهيزات السطح وقطع غيار');
        PERFORM insert_category_translations('accastillage-pieces-detachees', 'en', 'Deck Fittings & Spare Parts');
        PERFORM insert_category_translations('accastillage-pieces-detachees', 'de', 'Beschläge & Ersatzteile');
        PERFORM insert_category_translations('accastillage-pieces-detachees', 'es', 'Accesorios de cubierta & repuestos');
        PERFORM insert_category_translations('accastillage-pieces-detachees', 'it', 'Accessori ponte & ricambi');

            -- Level 2: cordages
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cordages', 'cordages', 2, l1_id, 'Cordages')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cordages', 'fr', 'Cordages');
            PERFORM insert_category_translations('cordages', 'ar', 'حبال');
            PERFORM insert_category_translations('cordages', 'en', 'Ropes');
            PERFORM insert_category_translations('cordages', 'de', 'Leinen & Seile');
            PERFORM insert_category_translations('cordages', 'es', 'Cuerdas');
            PERFORM insert_category_translations('cordages', 'it', 'Cime');

            -- Level 2: amarres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('amarres', 'amarres', 2, l1_id, 'Amarres')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('amarres', 'fr', 'Amarres');
            PERFORM insert_category_translations('amarres', 'ar', 'حبال ربط');
            PERFORM insert_category_translations('amarres', 'en', 'Dock lines');
            PERFORM insert_category_translations('amarres', 'de', 'Festmacherleinen');
            PERFORM insert_category_translations('amarres', 'es', 'Amarras');
            PERFORM insert_category_translations('amarres', 'it', 'Ormeggi');

            -- Level 2: ancres-chaines
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ancres-chaines', 'ancres-chaines', 2, l1_id, 'Ancres & chaînes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ancres-chaines', 'fr', 'Ancres & chaînes');
            PERFORM insert_category_translations('ancres-chaines', 'ar', 'مراسي وسلاسل');
            PERFORM insert_category_translations('ancres-chaines', 'en', 'Anchors & chains');
            PERFORM insert_category_translations('ancres-chaines', 'de', 'Anker & Ketten');
            PERFORM insert_category_translations('ancres-chaines', 'es', 'Anclas & cadenas');
            PERFORM insert_category_translations('ancres-chaines', 'it', 'Ancora & catene');

            -- Level 2: poulies
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('poulies', 'poulies', 2, l1_id, 'Poulies')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('poulies', 'fr', 'Poulies');
            PERFORM insert_category_translations('poulies', 'ar', 'بكرات');
            PERFORM insert_category_translations('poulies', 'en', 'Pulleys');
            PERFORM insert_category_translations('poulies', 'de', 'Rollen & Blöcke');
            PERFORM insert_category_translations('poulies', 'es', 'Poleas');
            PERFORM insert_category_translations('poulies', 'it', 'Carrucole');

            -- Level 2: taquets
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('taquets', 'taquets', 2, l1_id, 'Taquets')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('taquets', 'fr', 'Taquets');
            PERFORM insert_category_translations('taquets', 'ar', 'مراسي تثبيت');
            PERFORM insert_category_translations('taquets', 'en', 'Cleats');
            PERFORM insert_category_translations('taquets', 'de', 'Klampen');
            PERFORM insert_category_translations('taquets', 'es', 'Cornamusas');
            PERFORM insert_category_translations('taquets', 'it', 'Gallocce');

            -- Level 2: mousquetons
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mousquetons', 'mousquetons', 2, l1_id, 'Mousquetons')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mousquetons', 'fr', 'Mousquetons');
            PERFORM insert_category_translations('mousquetons', 'ar', 'مشابك');
            PERFORM insert_category_translations('mousquetons', 'en', 'Carabiners');
            PERFORM insert_category_translations('mousquetons', 'de', 'Karabiner');
            PERFORM insert_category_translations('mousquetons', 'es', 'Mosquetones');
            PERFORM insert_category_translations('mousquetons', 'it', 'Moschettoni');

            -- Level 2: winchs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('winchs', 'winchs', 2, l1_id, 'Winchs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('winchs', 'fr', 'Winchs');
            PERFORM insert_category_translations('winchs', 'ar', 'ونشات');
            PERFORM insert_category_translations('winchs', 'en', 'Winches');
            PERFORM insert_category_translations('winchs', 'de', 'Winschen');
            PERFORM insert_category_translations('winchs', 'es', 'Molinillos');
            PERFORM insert_category_translations('winchs', 'it', 'Winch');

            -- Level 2: voiles-greements
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('voiles-greements', 'voiles-greements', 2, l1_id, 'Voiles & gréements')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('voiles-greements', 'fr', 'Voiles & gréements');
            PERFORM insert_category_translations('voiles-greements', 'ar', 'أشرعة وتجهيزات');
            PERFORM insert_category_translations('voiles-greements', 'en', 'Sails & rigging');
            PERFORM insert_category_translations('voiles-greements', 'de', 'Segel & Takelage');
            PERFORM insert_category_translations('voiles-greements', 'es', 'Velas & jarcia');
            PERFORM insert_category_translations('voiles-greements', 'it', 'Vele & rigging');

            -- Level 2: chandeliers-balcons
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chandeliers-balcons', 'chandeliers-balcons', 2, l1_id, 'Chandeliers & balcons')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chandeliers-balcons', 'fr', 'Chandeliers & balcons');
            PERFORM insert_category_translations('chandeliers-balcons', 'ar', 'حواجز ومساند');
            PERFORM insert_category_translations('chandeliers-balcons', 'en', 'Stanchions & rails');
            PERFORM insert_category_translations('chandeliers-balcons', 'de', 'Relings & Pfosten');
            PERFORM insert_category_translations('chandeliers-balcons', 'es', 'Candeleros & barandillas');
            PERFORM insert_category_translations('chandeliers-balcons', 'it', 'Pulpiti & battagliole');

            -- Level 2: echelles-de-bain
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('echelles-de-bain', 'echelles-de-bain', 2, l1_id, 'Échelles de bain')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('echelles-de-bain', 'fr', 'Échelles de bain');
            PERFORM insert_category_translations('echelles-de-bain', 'ar', 'سلالم سباحة');
            PERFORM insert_category_translations('echelles-de-bain', 'en', 'Swim ladders');
            PERFORM insert_category_translations('echelles-de-bain', 'de', 'Badeleitern');
            PERFORM insert_category_translations('echelles-de-bain', 'es', 'Escaleras de baño');
            PERFORM insert_category_translations('echelles-de-bain', 'it', 'Scale bagno');

            -- Level 2: pare-battages
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pare-battages', 'pare-battages', 2, l1_id, 'Pare-battages')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pare-battages', 'fr', 'Pare-battages');
            PERFORM insert_category_translations('pare-battages', 'ar', 'مصدات');
            PERFORM insert_category_translations('pare-battages', 'en', 'Fenders');
            PERFORM insert_category_translations('pare-battages', 'de', 'Fender');
            PERFORM insert_category_translations('pare-battages', 'es', 'Defensas');
            PERFORM insert_category_translations('pare-battages', 'it', 'Parabordi');

            -- Level 2: hublots-ecoutilles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('hublots-ecoutilles', 'hublots-ecoutilles', 2, l1_id, 'Hublots & écoutilles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('hublots-ecoutilles', 'fr', 'Hublots & écoutilles');
            PERFORM insert_category_translations('hublots-ecoutilles', 'ar', 'نوافذ وفتحات');
            PERFORM insert_category_translations('hublots-ecoutilles', 'en', 'Hatches & portholes');
            PERFORM insert_category_translations('hublots-ecoutilles', 'de', 'Luken & Bullaugen');
            PERFORM insert_category_translations('hublots-ecoutilles', 'es', 'Escotillas & portillos');
            PERFORM insert_category_translations('hublots-ecoutilles', 'it', 'Oblò & boccaporti');

        -- Level 1: confort-amenagement-interieur
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('confort-amenagement-interieur', 'confort-amenagement-interieur', 1, root_id, 'Confort & aménagement intérieur')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('confort-amenagement-interieur', 'fr', 'Confort & aménagement intérieur');
        PERFORM insert_category_translations('confort-amenagement-interieur', 'ar', 'راحة وتجهيز داخلي');
        PERFORM insert_category_translations('confort-amenagement-interieur', 'en', 'Comfort & Interior');
        PERFORM insert_category_translations('confort-amenagement-interieur', 'de', 'Komfort & Innenausbau');
        PERFORM insert_category_translations('confort-amenagement-interieur', 'es', 'Confort & interior');
        PERFORM insert_category_translations('confort-amenagement-interieur', 'it', 'Comfort & interni');

            -- Level 2: sieges-banquettes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sieges-banquettes', 'sieges-banquettes', 2, l1_id, 'Sièges & banquettes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sieges-banquettes', 'fr', 'Sièges & banquettes');
            PERFORM insert_category_translations('sieges-banquettes', 'ar', 'مقاعد ومصاطب');
            PERFORM insert_category_translations('sieges-banquettes', 'en', 'Seats & benches');
            PERFORM insert_category_translations('sieges-banquettes', 'de', 'Sitze & Bänke');
            PERFORM insert_category_translations('sieges-banquettes', 'es', 'Asientos & bancos');
            PERFORM insert_category_translations('sieges-banquettes', 'it', 'Sedute & panche');

            -- Level 2: cabines-couchettes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cabines-couchettes', 'cabines-couchettes', 2, l1_id, 'Cabines & couchettes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cabines-couchettes', 'fr', 'Cabines & couchettes');
            PERFORM insert_category_translations('cabines-couchettes', 'ar', 'كبائن وأسرّة');
            PERFORM insert_category_translations('cabines-couchettes', 'en', 'Cabins & berths');
            PERFORM insert_category_translations('cabines-couchettes', 'de', 'Kabinen & Kojen');
            PERFORM insert_category_translations('cabines-couchettes', 'es', 'Camarotes & literas');
            PERFORM insert_category_translations('cabines-couchettes', 'it', 'Cabine & cuccette');

            -- Level 2: eclairage-interieur
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('eclairage-interieur', 'eclairage-interieur', 2, l1_id, 'Éclairage intérieur')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('eclairage-interieur', 'fr', 'Éclairage intérieur');
            PERFORM insert_category_translations('eclairage-interieur', 'ar', 'إضاءة داخلية');
            PERFORM insert_category_translations('eclairage-interieur', 'en', 'Interior lighting');
            PERFORM insert_category_translations('eclairage-interieur', 'de', 'Innenbeleuchtung');
            PERFORM insert_category_translations('eclairage-interieur', 'es', 'Iluminación interior');
            PERFORM insert_category_translations('eclairage-interieur', 'it', 'Illuminazione interna');

            -- Level 2: cuisine-marine
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cuisine-marine', 'cuisine-marine', 2, l1_id, 'Équipements de cuisine marine')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cuisine-marine', 'fr', 'Équipements de cuisine marine');
            PERFORM insert_category_translations('cuisine-marine', 'ar', 'معدات مطبخ بحري');
            PERFORM insert_category_translations('cuisine-marine', 'en', 'Marine galley equipment');
            PERFORM insert_category_translations('cuisine-marine', 'de', 'Küchenausstattung (Marine)');
            PERFORM insert_category_translations('cuisine-marine', 'es', 'Equipos de cocina marina');
            PERFORM insert_category_translations('cuisine-marine', 'it', 'Cucina di bordo');

            -- Level 2: refrigerateurs-glacieres-nautiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('refrigerateurs-glacieres-nautiques', 'refrigerateurs-glacieres-nautiques', 2, l1_id, 'Réfrigérateurs & glacières nautiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('refrigerateurs-glacieres-nautiques', 'fr', 'Réfrigérateurs & glacières nautiques');
            PERFORM insert_category_translations('refrigerateurs-glacieres-nautiques', 'ar', 'ثلاجات ومبردات بحرية');
            PERFORM insert_category_translations('refrigerateurs-glacieres-nautiques', 'en', 'Marine fridges & coolers');
            PERFORM insert_category_translations('refrigerateurs-glacieres-nautiques', 'de', 'Kühlschränke & Kühlboxen (Marine)');
            PERFORM insert_category_translations('refrigerateurs-glacieres-nautiques', 'es', 'Frigoríficos & neveras marinas');
            PERFORM insert_category_translations('refrigerateurs-glacieres-nautiques', 'it', 'Frigoriferi & ghiacciaie marine');

            -- Level 2: wc-nautiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('wc-nautiques', 'wc-nautiques', 2, l1_id, 'WC nautiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('wc-nautiques', 'fr', 'WC nautiques');
            PERFORM insert_category_translations('wc-nautiques', 'ar', 'دورات مياه بحرية');
            PERFORM insert_category_translations('wc-nautiques', 'en', 'Marine toilets');
            PERFORM insert_category_translations('wc-nautiques', 'de', 'Boots-WCs');
            PERFORM insert_category_translations('wc-nautiques', 'es', 'WC náuticos');
            PERFORM insert_category_translations('wc-nautiques', 'it', 'WC marini');

            -- Level 2: douches-sanitaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('douches-sanitaires', 'douches-sanitaires', 2, l1_id, 'Douches & sanitaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('douches-sanitaires', 'fr', 'Douches & sanitaires');
            PERFORM insert_category_translations('douches-sanitaires', 'ar', 'دشوص وصحيات');
            PERFORM insert_category_translations('douches-sanitaires', 'en', 'Showers & sanitation');
            PERFORM insert_category_translations('douches-sanitaires', 'de', 'Duschen & Sanitär');
            PERFORM insert_category_translations('douches-sanitaires', 'es', 'Duchas & sanitarios');
            PERFORM insert_category_translations('douches-sanitaires', 'it', 'Docce & sanitari');

            -- Level 2: rangements-coffres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('rangements-coffres', 'rangements-coffres', 2, l1_id, 'Rangements & coffres')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('rangements-coffres', 'fr', 'Rangements & coffres');
            PERFORM insert_category_translations('rangements-coffres', 'ar', 'تخزين وخزائن');
            PERFORM insert_category_translations('rangements-coffres', 'en', 'Storage & lockers');
            PERFORM insert_category_translations('rangements-coffres', 'de', 'Stauräume & Schränke');
            PERFORM insert_category_translations('rangements-coffres', 'es', 'Almacenaje & cofres');
            PERFORM insert_category_translations('rangements-coffres', 'it', 'Stivaggi & gavoni');

        -- Level 1: accessoires-entretien
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-entretien', 'accessoires-entretien', 1, root_id, 'Accessoires & entretien')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('accessoires-entretien', 'fr', 'Accessoires & entretien');
        PERFORM insert_category_translations('accessoires-entretien', 'ar', 'إكسسوارات وصيانة');
        PERFORM insert_category_translations('accessoires-entretien', 'en', 'Accessories & Maintenance');
        PERFORM insert_category_translations('accessoires-entretien', 'de', 'Zubehör & Pflege');
        PERFORM insert_category_translations('accessoires-entretien', 'es', 'Accesorios & mantenimiento');
        PERFORM insert_category_translations('accessoires-entretien', 'it', 'Accessori & manutenzione');

            -- Level 2: housses-protection
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('housses-protection', 'housses-protection', 2, l1_id, 'Housses de protection')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('housses-protection', 'fr', 'Housses de protection');
            PERFORM insert_category_translations('housses-protection', 'ar', 'أغطية حماية');
            PERFORM insert_category_translations('housses-protection', 'en', 'Protective covers');
            PERFORM insert_category_translations('housses-protection', 'de', 'Schutzabdeckungen');
            PERFORM insert_category_translations('housses-protection', 'es', 'Fundas de protección');
            PERFORM insert_category_translations('housses-protection', 'it', 'Coperture protettive');

            -- Level 2: nettoyants-entretien
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('nettoyants-entretien', 'nettoyants-entretien', 2, l1_id, 'Nettoyants & produits d’entretien')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('nettoyants-entretien', 'fr', 'Nettoyants & produits d’entretien');
            PERFORM insert_category_translations('nettoyants-entretien', 'ar', 'منظفات ومنتجات عناية');
            PERFORM insert_category_translations('nettoyants-entretien', 'en', 'Cleaners & care products');
            PERFORM insert_category_translations('nettoyants-entretien', 'de', 'Reiniger & Pflegeprodukte');
            PERFORM insert_category_translations('nettoyants-entretien', 'es', 'Limpiadores & mantenimiento');
            PERFORM insert_category_translations('nettoyants-entretien', 'it', 'Detergenti & cura');

            -- Level 2: peintures-antifouling
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('peintures-antifouling', 'peintures-antifouling', 2, l1_id, 'Peintures & antifouling')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('peintures-antifouling', 'fr', 'Peintures & antifouling');
            PERFORM insert_category_translations('peintures-antifouling', 'ar', 'دهانات ومضادات التلوث البحري');
            PERFORM insert_category_translations('peintures-antifouling', 'en', 'Paints & antifouling');
            PERFORM insert_category_translations('peintures-antifouling', 'de', 'Farben & Antifouling');
            PERFORM insert_category_translations('peintures-antifouling', 'es', 'Pinturas & antifouling');
            PERFORM insert_category_translations('peintures-antifouling', 'it', 'Vernici & antifouling');

            -- Level 2: kits-reparation-coque
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('kits-reparation-coque', 'kits-reparation-coque', 2, l1_id, 'Kits de réparation coque')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('kits-reparation-coque', 'fr', 'Kits de réparation coque');
            PERFORM insert_category_translations('kits-reparation-coque', 'ar', 'عدة إصلاح الهيكل');
            PERFORM insert_category_translations('kits-reparation-coque', 'en', 'Hull repair kits');
            PERFORM insert_category_translations('kits-reparation-coque', 'de', 'Rumpfreparatur-Kits');
            PERFORM insert_category_translations('kits-reparation-coque', 'es', 'Kits de reparación de casco');
            PERFORM insert_category_translations('kits-reparation-coque', 'it', 'Kit riparazione scafo');

            -- Level 2: batteries-chargeurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('batteries-chargeurs', 'batteries-chargeurs', 2, l1_id, 'Batteries & chargeurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('batteries-chargeurs', 'fr', 'Batteries & chargeurs');
            PERFORM insert_category_translations('batteries-chargeurs', 'ar', 'بطاريات وشواحن');
            PERFORM insert_category_translations('batteries-chargeurs', 'en', 'Batteries & chargers');
            PERFORM insert_category_translations('batteries-chargeurs', 'de', 'Batterien & Ladegeräte');
            PERFORM insert_category_translations('batteries-chargeurs', 'es', 'Baterías & cargadores');
            PERFORM insert_category_translations('batteries-chargeurs', 'it', 'Batterie & caricabatterie');

            -- Level 2: outils-nautiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('outils-nautiques', 'outils-nautiques', 2, l1_id, 'Outils nautiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('outils-nautiques', 'fr', 'Outils nautiques');
            PERFORM insert_category_translations('outils-nautiques', 'ar', 'أدوات بحرية');
            PERFORM insert_category_translations('outils-nautiques', 'en', 'Marine tools');
            PERFORM insert_category_translations('outils-nautiques', 'de', 'Bootswerkzeuge');
            PERFORM insert_category_translations('outils-nautiques', 'es', 'Herramientas náuticas');
            PERFORM insert_category_translations('outils-nautiques', 'it', 'Attrezzi nautici');

            -- Level 2: pompes-manuelles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pompes-manuelles', 'pompes-manuelles', 2, l1_id, 'Pompes manuelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pompes-manuelles', 'fr', 'Pompes manuelles');
            PERFORM insert_category_translations('pompes-manuelles', 'ar', 'مضخات يدوية');
            PERFORM insert_category_translations('pompes-manuelles', 'en', 'Hand pumps');
            PERFORM insert_category_translations('pompes-manuelles', 'de', 'Handpumpen');
            PERFORM insert_category_translations('pompes-manuelles', 'es', 'Bombas manuales');
            PERFORM insert_category_translations('pompes-manuelles', 'it', 'Pompe manuali');

            -- Level 2: rames-pagaies
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('rames-pagaies', 'rames-pagaies', 2, l1_id, 'Rames & pagaies')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('rames-pagaies', 'fr', 'Rames & pagaies');
            PERFORM insert_category_translations('rames-pagaies', 'ar', 'مجاديف');
            PERFORM insert_category_translations('rames-pagaies', 'en', 'Oars & paddles');
            PERFORM insert_category_translations('rames-pagaies', 'de', 'Ruder & Paddel');
            PERFORM insert_category_translations('rames-pagaies', 'es', 'Remos & palas');
            PERFORM insert_category_translations('rames-pagaies', 'it', 'Remi & pagaie');

        -- Level 1: transport-stockage
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('transport-stockage', 'transport-stockage', 1, root_id, 'Transport & stockage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('transport-stockage', 'fr', 'Transport & stockage');
        PERFORM insert_category_translations('transport-stockage', 'ar', 'نقل وتخزين');
        PERFORM insert_category_translations('transport-stockage', 'en', 'Transport & Storage');
        PERFORM insert_category_translations('transport-stockage', 'de', 'Transport & Lagerung');
        PERFORM insert_category_translations('transport-stockage', 'es', 'Transporte & almacenamiento');
        PERFORM insert_category_translations('transport-stockage', 'it', 'Trasporto & stoccaggio');

            -- Level 2: remorques-bateau
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('remorques-bateau', 'remorques-bateau', 2, l1_id, 'Remorques bateau')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('remorques-bateau', 'fr', 'Remorques bateau');
            PERFORM insert_category_translations('remorques-bateau', 'ar', 'مقطورات القوارب');
            PERFORM insert_category_translations('remorques-bateau', 'en', 'Boat trailers');
            PERFORM insert_category_translations('remorques-bateau', 'de', 'Bootsanhänger');
            PERFORM insert_category_translations('remorques-bateau', 'es', 'Remolques para barcos');
            PERFORM insert_category_translations('remorques-bateau', 'it', 'Rimorchi barca');

            -- Level 2: treuils-sangles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('treuils-sangles', 'treuils-sangles', 2, l1_id, 'Treuils & sangles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('treuils-sangles', 'fr', 'Treuils & sangles');
            PERFORM insert_category_translations('treuils-sangles', 'ar', 'ونشات وأحزمة');
            PERFORM insert_category_translations('treuils-sangles', 'en', 'Winches & straps');
            PERFORM insert_category_translations('treuils-sangles', 'de', 'Winden & Gurte');
            PERFORM insert_category_translations('treuils-sangles', 'es', 'Cabrestantes & cinchas');
            PERFORM insert_category_translations('treuils-sangles', 'it', 'Argani & cinghie');

            -- Level 2: chariots-mise-a-leau
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chariots-mise-a-leau', 'chariots-mise-a-leau', 2, l1_id, 'Chariots de mise à l’eau')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chariots-mise-a-leau', 'fr', 'Chariots de mise à l’eau');
            PERFORM insert_category_translations('chariots-mise-a-leau', 'ar', 'عربات إنزال للماء');
            PERFORM insert_category_translations('chariots-mise-a-leau', 'en', 'Launching trolleys');
            PERFORM insert_category_translations('chariots-mise-a-leau', 'de', 'Slipwagen');
            PERFORM insert_category_translations('chariots-mise-a-leau', 'es', 'Carros de botadura');
            PERFORM insert_category_translations('chariots-mise-a-leau', 'it', 'Carrelli varo');

            -- Level 2: supports-stockage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('supports-stockage', 'supports-stockage', 2, l1_id, 'Supports de stockage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('supports-stockage', 'fr', 'Supports de stockage');
            PERFORM insert_category_translations('supports-stockage', 'ar', 'حوامل تخزين');
            PERFORM insert_category_translations('supports-stockage', 'en', 'Storage racks');
            PERFORM insert_category_translations('supports-stockage', 'de', 'Lagergestelle');
            PERFORM insert_category_translations('supports-stockage', 'es', 'Soportes de almacenamiento');
            PERFORM insert_category_translations('supports-stockage', 'it', 'Supporti stoccaggio');

            -- Level 2: garages-nautiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('garages-nautiques', 'garages-nautiques', 2, l1_id, 'Garages nautiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('garages-nautiques', 'fr', 'Garages nautiques');
            PERFORM insert_category_translations('garages-nautiques', 'ar', 'كارجات بحرية');
            PERFORM insert_category_translations('garages-nautiques', 'en', 'Boat garages');
            PERFORM insert_category_translations('garages-nautiques', 'de', 'Bootsgaragen');
            PERFORM insert_category_translations('garages-nautiques', 'es', 'Garajes náuticos');
            PERFORM insert_category_translations('garages-nautiques', 'it', 'Garage nautici');

            -- Level 2: portiques-palans
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('portiques-palans', 'portiques-palans', 2, l1_id, 'Portiques & palans')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('portiques-palans', 'fr', 'Portiques & palans');
            PERFORM insert_category_translations('portiques-palans', 'ar', 'مرافع ورافعات');
            PERFORM insert_category_translations('portiques-palans', 'en', 'Davits & hoists');
            PERFORM insert_category_translations('portiques-palans', 'de', 'Davits & Kräne');
            PERFORM insert_category_translations('portiques-palans', 'es', 'Pórticos & polipastos');
            PERFORM insert_category_translations('portiques-palans', 'it', 'Paranchi & gru');

        -- Level 1: sports-nautiques-associes
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sports-nautiques-associes', 'sports-nautiques-associes', 1, root_id, 'Sports nautiques associés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('sports-nautiques-associes', 'fr', 'Sports nautiques associés');
        PERFORM insert_category_translations('sports-nautiques-associes', 'ar', 'رياضات مائية');
        PERFORM insert_category_translations('sports-nautiques-associes', 'en', 'Water Sports');
        PERFORM insert_category_translations('sports-nautiques-associes', 'de', 'Wassersport');
        PERFORM insert_category_translations('sports-nautiques-associes', 'es', 'Deportes acuáticos');
        PERFORM insert_category_translations('sports-nautiques-associes', 'it', 'Sport acquatici');

            -- Level 2: wakeboard
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('wakeboard', 'wakeboard', 2, l1_id, 'Wakeboard')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('wakeboard', 'fr', 'Wakeboard');
            PERFORM insert_category_translations('wakeboard', 'ar', 'ويكبورد');
            PERFORM insert_category_translations('wakeboard', 'en', 'Wakeboard');
            PERFORM insert_category_translations('wakeboard', 'de', 'Wakeboard');
            PERFORM insert_category_translations('wakeboard', 'es', 'Wakeboard');
            PERFORM insert_category_translations('wakeboard', 'it', 'Wakeboard');

            -- Level 2: ski-nautique
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ski-nautique', 'ski-nautique', 2, l1_id, 'Ski nautique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ski-nautique', 'fr', 'Ski nautique');
            PERFORM insert_category_translations('ski-nautique', 'ar', 'تزلج مائي');
            PERFORM insert_category_translations('ski-nautique', 'en', 'Water skiing');
            PERFORM insert_category_translations('ski-nautique', 'de', 'Wasserski');
            PERFORM insert_category_translations('ski-nautique', 'es', 'Esquí acuático');
            PERFORM insert_category_translations('ski-nautique', 'it', 'Sci nautico');

            -- Level 2: kneeboard
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('kneeboard', 'kneeboard', 2, l1_id, 'Kneeboard')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('kneeboard', 'fr', 'Kneeboard');
            PERFORM insert_category_translations('kneeboard', 'ar', 'كني بورد');
            PERFORM insert_category_translations('kneeboard', 'en', 'Kneeboard');
            PERFORM insert_category_translations('kneeboard', 'de', 'Kneeboard');
            PERFORM insert_category_translations('kneeboard', 'es', 'Kneeboard');
            PERFORM insert_category_translations('kneeboard', 'it', 'Kneeboard');

            -- Level 2: bouees-tractees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bouees-tractees', 'bouees-tractees', 2, l1_id, 'Bouées tractées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bouees-tractees', 'fr', 'Bouées tractées');
            PERFORM insert_category_translations('bouees-tractees', 'ar', 'عوامات مسحوبة');
            PERFORM insert_category_translations('bouees-tractees', 'en', 'Towable tubes');
            PERFORM insert_category_translations('bouees-tractees', 'de', 'Zugbojen');
            PERFORM insert_category_translations('bouees-tractees', 'es', 'Boyas remolcadas');
            PERFORM insert_category_translations('bouees-tractees', 'it', 'Ciambelle trainate');

            -- Level 2: paddle-sup
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('paddle-sup', 'paddle-sup', 2, l1_id, 'Paddle (SUP)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('paddle-sup', 'fr', 'Paddle (SUP)');
            PERFORM insert_category_translations('paddle-sup', 'ar', 'بادل (SUP)');
            PERFORM insert_category_translations('paddle-sup', 'en', 'Paddle (SUP)');
            PERFORM insert_category_translations('paddle-sup', 'de', 'Paddle (SUP)');
            PERFORM insert_category_translations('paddle-sup', 'es', 'Paddle (SUP)');
            PERFORM insert_category_translations('paddle-sup', 'it', 'Paddle (SUP)');

            -- Level 2: kitesurf
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('kitesurf', 'kitesurf', 2, l1_id, 'Kitesurf')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('kitesurf', 'fr', 'Kitesurf');
            PERFORM insert_category_translations('kitesurf', 'ar', 'كايت سيرف');
            PERFORM insert_category_translations('kitesurf', 'en', 'Kitesurf');
            PERFORM insert_category_translations('kitesurf', 'de', 'Kitesurfen');
            PERFORM insert_category_translations('kitesurf', 'es', 'Kitesurf');
            PERFORM insert_category_translations('kitesurf', 'it', 'Kitesurf');

            -- Level 2: plongee-snorkeling
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('plongee-snorkeling', 'plongee-snorkeling', 2, l1_id, 'Plongée & snorkeling')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('plongee-snorkeling', 'fr', 'Plongée & snorkeling');
            PERFORM insert_category_translations('plongee-snorkeling', 'ar', 'غوص وسنوركلينغ');
            PERFORM insert_category_translations('plongee-snorkeling', 'en', 'Diving & snorkeling');
            PERFORM insert_category_translations('plongee-snorkeling', 'de', 'Tauchen & Schnorcheln');
            PERFORM insert_category_translations('plongee-snorkeling', 'es', 'Buceo & snorkel');
            PERFORM insert_category_translations('plongee-snorkeling', 'it', 'Immersione & snorkeling');

            -- Level 2: peche-en-mer-equipements
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('peche-en-mer-equipements', 'peche-en-mer-equipements', 2, l1_id, 'Équipements de pêche en mer')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('peche-en-mer-equipements', 'fr', 'Équipements de pêche en mer');
            PERFORM insert_category_translations('peche-en-mer-equipements', 'ar', 'معدات صيد بحري');
            PERFORM insert_category_translations('peche-en-mer-equipements', 'en', 'Sea fishing gear');
            PERFORM insert_category_translations('peche-en-mer-equipements', 'de', 'Meeresangeln-Ausrüstung');
            PERFORM insert_category_translations('peche-en-mer-equipements', 'es', 'Equipos de pesca en mar');
            PERFORM insert_category_translations('peche-en-mer-equipements', 'it', 'Attrezzatura pesca in mare');
END $$;