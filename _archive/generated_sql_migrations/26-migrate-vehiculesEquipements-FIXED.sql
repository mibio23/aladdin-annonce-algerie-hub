-- Migration: Véhicules, Camions, Motos & Équipements (Generated Recursive)
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

    -- Level 0: vehicules-equipements
    INSERT INTO categories (id, slug, level, name)
    VALUES ('vehicules-equipements', 'vehicules-equipements', 0, 'Véhicules, Camions, Motos & Équipements')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 0, name = EXCLUDED.name
    RETURNING id INTO root_id;
    PERFORM insert_category_translations('vehicules-equipements', 'fr', 'Véhicules, Camions, Motos & Équipements');
    PERFORM insert_category_translations('vehicules-equipements', 'ar', 'المركبات، الشاحنات، الدراجات النارية والمعدات');
    PERFORM insert_category_translations('vehicules-equipements', 'en', 'Vehicles, Trucks, Motorcycles & Equipment');
    PERFORM insert_category_translations('vehicules-equipements', 'de', 'Fahrzeuge, Lkw, Motorräder & Ausrüstung');
    PERFORM insert_category_translations('vehicules-equipements', 'es', 'Vehículos, Camiones, Motos y Equipos');
    PERFORM insert_category_translations('vehicules-equipements', 'it', 'Veicoli, Camion, Moto & Attrezzature');

        -- Level 1: voitures-vehicules-legers
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('voitures-vehicules-legers', 'voitures-vehicules-legers', 1, root_id, 'Voitures & Véhicules Légers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('voitures-vehicules-legers', 'fr', 'Voitures & Véhicules Légers');
        PERFORM insert_category_translations('voitures-vehicules-legers', 'ar', 'سيارات ومركبات خفيفة');
        PERFORM insert_category_translations('voitures-vehicules-legers', 'en', 'Cars & Light Vehicles');
        PERFORM insert_category_translations('voitures-vehicules-legers', 'de', 'Autos & Leichtfahrzeuge');
        PERFORM insert_category_translations('voitures-vehicules-legers', 'es', 'Coches y vehículos ligeros');
        PERFORM insert_category_translations('voitures-vehicules-legers', 'it', 'Auto & veicoli leggeri');

            -- Level 2: voitures-citadines
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('voitures-citadines', 'voitures-citadines', 2, l1_id, 'Voitures citadines')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('voitures-citadines', 'fr', 'Voitures citadines');
            PERFORM insert_category_translations('voitures-citadines', 'ar', 'سيارات مدينة');
            PERFORM insert_category_translations('voitures-citadines', 'en', 'City cars');
            PERFORM insert_category_translations('voitures-citadines', 'de', 'Stadtwagen');
            PERFORM insert_category_translations('voitures-citadines', 'es', 'Coches urbanos');
            PERFORM insert_category_translations('voitures-citadines', 'it', 'City car');

            -- Level 2: berlines
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('berlines', 'berlines', 2, l1_id, 'Berlines')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('berlines', 'fr', 'Berlines');
            PERFORM insert_category_translations('berlines', 'ar', 'سيدان');
            PERFORM insert_category_translations('berlines', 'en', 'Sedans');
            PERFORM insert_category_translations('berlines', 'de', 'Limousinen');
            PERFORM insert_category_translations('berlines', 'es', 'Berlina');
            PERFORM insert_category_translations('berlines', 'it', 'Berlina');

            -- Level 2: compactes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('compactes', 'compactes', 2, l1_id, 'Compactes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('compactes', 'fr', 'Compactes');
            PERFORM insert_category_translations('compactes', 'ar', 'مضغوطة');
            PERFORM insert_category_translations('compactes', 'en', 'Compacts');
            PERFORM insert_category_translations('compactes', 'de', 'Kompaktwagen');
            PERFORM insert_category_translations('compactes', 'es', 'Compactos');
            PERFORM insert_category_translations('compactes', 'it', 'Compatte');

            -- Level 2: suv
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('suv', 'suv', 2, l1_id, 'SUV')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('suv', 'fr', 'SUV');
            PERFORM insert_category_translations('suv', 'ar', 'SUV');
            PERFORM insert_category_translations('suv', 'en', 'SUV');
            PERFORM insert_category_translations('suv', 'de', 'SUV');
            PERFORM insert_category_translations('suv', 'es', 'SUV');
            PERFORM insert_category_translations('suv', 'it', 'SUV');

            -- Level 2: crossovers
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('crossovers', 'crossovers', 2, l1_id, 'Crossovers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('crossovers', 'fr', 'Crossovers');
            PERFORM insert_category_translations('crossovers', 'ar', 'كروس أوفر');
            PERFORM insert_category_translations('crossovers', 'en', 'Crossovers');
            PERFORM insert_category_translations('crossovers', 'de', 'Crossover');
            PERFORM insert_category_translations('crossovers', 'es', 'Crossover');
            PERFORM insert_category_translations('crossovers', 'it', 'Crossover');

            -- Level 2: 4x4
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('4x4', '4x4', 2, l1_id, '4x4')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('4x4', 'fr', '4x4');
            PERFORM insert_category_translations('4x4', 'ar', 'دفع رباعي 4x4');
            PERFORM insert_category_translations('4x4', 'en', '4x4');
            PERFORM insert_category_translations('4x4', 'de', '4x4');
            PERFORM insert_category_translations('4x4', 'es', '4x4');
            PERFORM insert_category_translations('4x4', 'it', '4x4');

            -- Level 2: coupes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('coupes', 'coupes', 2, l1_id, 'Coupés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('coupes', 'fr', 'Coupés');
            PERFORM insert_category_translations('coupes', 'ar', 'كوبيه');
            PERFORM insert_category_translations('coupes', 'en', 'Coupés');
            PERFORM insert_category_translations('coupes', 'de', 'Coupés');
            PERFORM insert_category_translations('coupes', 'es', 'Coupés');
            PERFORM insert_category_translations('coupes', 'it', 'Coupé');

            -- Level 2: cabriolets
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cabriolets', 'cabriolets', 2, l1_id, 'Cabriolets')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cabriolets', 'fr', 'Cabriolets');
            PERFORM insert_category_translations('cabriolets', 'ar', 'مكشوفة');
            PERFORM insert_category_translations('cabriolets', 'en', 'Convertibles');
            PERFORM insert_category_translations('cabriolets', 'de', 'Cabriolets');
            PERFORM insert_category_translations('cabriolets', 'es', 'Descapotables');
            PERFORM insert_category_translations('cabriolets', 'it', 'Cabrio');

            -- Level 2: breaks
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('breaks', 'breaks', 2, l1_id, 'Breaks')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('breaks', 'fr', 'Breaks');
            PERFORM insert_category_translations('breaks', 'ar', 'ستيشن واغن');
            PERFORM insert_category_translations('breaks', 'en', 'Station wagons');
            PERFORM insert_category_translations('breaks', 'de', 'Kombis');
            PERFORM insert_category_translations('breaks', 'es', 'Familiares');
            PERFORM insert_category_translations('breaks', 'it', 'Station wagon');

            -- Level 2: voitures-familiales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('voitures-familiales', 'voitures-familiales', 2, l1_id, 'Voitures familiales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('voitures-familiales', 'fr', 'Voitures familiales');
            PERFORM insert_category_translations('voitures-familiales', 'ar', 'سيارات عائلية');
            PERFORM insert_category_translations('voitures-familiales', 'en', 'Family cars');
            PERFORM insert_category_translations('voitures-familiales', 'de', 'Familienautos');
            PERFORM insert_category_translations('voitures-familiales', 'es', 'Coches familiares');
            PERFORM insert_category_translations('voitures-familiales', 'it', 'Auto familiari');

            -- Level 2: vul
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vul', 'vehicules-utilitaires-legers', 2, l1_id, 'Véhicules utilitaires légers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('vul', 'fr', 'Véhicules utilitaires légers');
            PERFORM insert_category_translations('vul', 'ar', 'مركبات تجارية خفيفة');
            PERFORM insert_category_translations('vul', 'en', 'Light commercial vehicles');
            PERFORM insert_category_translations('vul', 'de', 'Leichte Nutzfahrzeuge');
            PERFORM insert_category_translations('vul', 'es', 'Vehículos comerciales ligeros');
            PERFORM insert_category_translations('vul', 'it', 'Veicoli commerciali leggeri');

            -- Level 2: vans
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vans', 'vans', 2, l1_id, 'Vans')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('vans', 'fr', 'Vans');
            PERFORM insert_category_translations('vans', 'ar', 'فانات');
            PERFORM insert_category_translations('vans', 'en', 'Vans');
            PERFORM insert_category_translations('vans', 'de', 'Vans');
            PERFORM insert_category_translations('vans', 'es', 'Furgonetas');
            PERFORM insert_category_translations('vans', 'it', 'Van');

            -- Level 2: voitures-hybrides
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('voitures-hybrides', 'voitures-hybrides', 2, l1_id, 'Voitures hybrides')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('voitures-hybrides', 'fr', 'Voitures hybrides');
            PERFORM insert_category_translations('voitures-hybrides', 'ar', 'سيارات هجينة');
            PERFORM insert_category_translations('voitures-hybrides', 'en', 'Hybrid cars');
            PERFORM insert_category_translations('voitures-hybrides', 'de', 'Hybridautos');
            PERFORM insert_category_translations('voitures-hybrides', 'es', 'Coches híbridos');
            PERFORM insert_category_translations('voitures-hybrides', 'it', 'Auto ibride');

            -- Level 2: voitures-electriques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('voitures-electriques', 'voitures-electriques', 2, l1_id, 'Voitures électriques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('voitures-electriques', 'fr', 'Voitures électriques');
            PERFORM insert_category_translations('voitures-electriques', 'ar', 'سيارات كهربائية');
            PERFORM insert_category_translations('voitures-electriques', 'en', 'Electric cars');
            PERFORM insert_category_translations('voitures-electriques', 'de', 'Elektroautos');
            PERFORM insert_category_translations('voitures-electriques', 'es', 'Coches eléctricos');
            PERFORM insert_category_translations('voitures-electriques', 'it', 'Auto elettriche');

            -- Level 2: voitures-sportives
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('voitures-sportives', 'voitures-sportives', 2, l1_id, 'Voitures sportives')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('voitures-sportives', 'fr', 'Voitures sportives');
            PERFORM insert_category_translations('voitures-sportives', 'ar', 'سيارات رياضية');
            PERFORM insert_category_translations('voitures-sportives', 'en', 'Sports cars');
            PERFORM insert_category_translations('voitures-sportives', 'de', 'Sportwagen');
            PERFORM insert_category_translations('voitures-sportives', 'es', 'Coches deportivos');
            PERFORM insert_category_translations('voitures-sportives', 'it', 'Auto sportive');

            -- Level 2: voitures-anciennes-collection
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('voitures-anciennes-collection', 'voitures-anciennes-collection', 2, l1_id, 'Voitures anciennes & de collection')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('voitures-anciennes-collection', 'fr', 'Voitures anciennes & de collection');
            PERFORM insert_category_translations('voitures-anciennes-collection', 'ar', 'سيارات كلاسيكية ومجمعة');
            PERFORM insert_category_translations('voitures-anciennes-collection', 'en', 'Classic & collector cars');
            PERFORM insert_category_translations('voitures-anciennes-collection', 'de', 'Oldtimer & Sammlerfahrzeuge');
            PERFORM insert_category_translations('voitures-anciennes-collection', 'es', 'Clásicos y de colección');
            PERFORM insert_category_translations('voitures-anciennes-collection', 'it', 'Auto d’epoca & da collezione');

            -- Level 2: voitures-reconditionnees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('voitures-reconditionnees', 'voitures-reconditionnees', 2, l1_id, 'Voitures reconditionnées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('voitures-reconditionnees', 'fr', 'Voitures reconditionnées');
            PERFORM insert_category_translations('voitures-reconditionnees', 'ar', 'سيارات مجددة');
            PERFORM insert_category_translations('voitures-reconditionnees', 'en', 'Refurbished cars');
            PERFORM insert_category_translations('voitures-reconditionnees', 'de', 'Generalüberholte Fahrzeuge');
            PERFORM insert_category_translations('voitures-reconditionnees', 'es', 'Coches reacondicionados');
            PERFORM insert_category_translations('voitures-reconditionnees', 'it', 'Auto ricondizionate');

        -- Level 1: camions-vehicules-professionnels
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('camions-vehicules-professionnels', 'camions-vehicules-professionnels', 1, root_id, 'Camions & Véhicules Professionnels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('camions-vehicules-professionnels', 'fr', 'Camions & Véhicules Professionnels');
        PERFORM insert_category_translations('camions-vehicules-professionnels', 'ar', 'شاحنات ومركبات مهنية');
        PERFORM insert_category_translations('camions-vehicules-professionnels', 'en', 'Trucks & Commercial Vehicles');
        PERFORM insert_category_translations('camions-vehicules-professionnels', 'de', 'Lkw & Nutzfahrzeuge');
        PERFORM insert_category_translations('camions-vehicules-professionnels', 'es', 'Camiones y vehículos profesionales');
        PERFORM insert_category_translations('camions-vehicules-professionnels', 'it', 'Camion & veicoli professionali');

            -- Level 2: camions-legers
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('camions-legers', 'camions-legers', 2, l1_id, 'Camions légers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('camions-legers', 'fr', 'Camions légers');
            PERFORM insert_category_translations('camions-legers', 'ar', 'شاحنات خفيفة');
            PERFORM insert_category_translations('camions-legers', 'en', 'Light trucks');
            PERFORM insert_category_translations('camions-legers', 'de', 'Leichte Lkw');
            PERFORM insert_category_translations('camions-legers', 'es', 'Camiones ligeros');
            PERFORM insert_category_translations('camions-legers', 'it', 'Camion leggeri');

            -- Level 2: poids-lourds
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('poids-lourds', 'poids-lourds', 2, l1_id, 'Poids lourds')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('poids-lourds', 'fr', 'Poids lourds');
            PERFORM insert_category_translations('poids-lourds', 'ar', 'شاحنات ثقيلة');
            PERFORM insert_category_translations('poids-lourds', 'en', 'Heavy trucks');
            PERFORM insert_category_translations('poids-lourds', 'de', 'Schwerlaster');
            PERFORM insert_category_translations('poids-lourds', 'es', 'Camiones pesados');
            PERFORM insert_category_translations('poids-lourds', 'it', 'Mezzi pesanti');

            -- Level 2: semi-remorques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('semi-remorques', 'semi-remorques', 2, l1_id, 'Semi-remorques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('semi-remorques', 'fr', 'Semi-remorques');
            PERFORM insert_category_translations('semi-remorques', 'ar', 'شبه مقطورات');
            PERFORM insert_category_translations('semi-remorques', 'en', 'Semi-trailers');
            PERFORM insert_category_translations('semi-remorques', 'de', 'Sattelauflieger');
            PERFORM insert_category_translations('semi-remorques', 'es', 'Semirremolques');
            PERFORM insert_category_translations('semi-remorques', 'it', 'Semirimorchi');

            -- Level 2: tracteurs-routiers
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tracteurs-routiers', 'tracteurs-routiers', 2, l1_id, 'Tracteurs routiers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tracteurs-routiers', 'fr', 'Tracteurs routiers');
            PERFORM insert_category_translations('tracteurs-routiers', 'ar', 'شاحنات سحب');
            PERFORM insert_category_translations('tracteurs-routiers', 'en', 'Road tractors');
            PERFORM insert_category_translations('tracteurs-routiers', 'de', 'Zugmaschinen');
            PERFORM insert_category_translations('tracteurs-routiers', 'es', 'Tractores de carretera');
            PERFORM insert_category_translations('tracteurs-routiers', 'it', 'Trattori stradali');

            -- Level 2: camions-bennes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('camions-bennes', 'camions-bennes', 2, l1_id, 'Camions-bennes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('camions-bennes', 'fr', 'Camions-bennes');
            PERFORM insert_category_translations('camions-bennes', 'ar', 'شاحنات قلابة');
            PERFORM insert_category_translations('camions-bennes', 'en', 'Dump trucks');
            PERFORM insert_category_translations('camions-bennes', 'de', 'Kipp-Lkw');
            PERFORM insert_category_translations('camions-bennes', 'es', 'Camiones volquete');
            PERFORM insert_category_translations('camions-bennes', 'it', 'Camion con cassone ribaltabile');

            -- Level 2: camions-frigorifiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('camions-frigorifiques', 'camions-frigorifiques', 2, l1_id, 'Camions frigorifiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('camions-frigorifiques', 'fr', 'Camions frigorifiques');
            PERFORM insert_category_translations('camions-frigorifiques', 'ar', 'شاحنات مبردة');
            PERFORM insert_category_translations('camions-frigorifiques', 'en', 'Refrigerated trucks');
            PERFORM insert_category_translations('camions-frigorifiques', 'de', 'Kühl-Lkw');
            PERFORM insert_category_translations('camions-frigorifiques', 'es', 'Camiones frigoríficos');
            PERFORM insert_category_translations('camions-frigorifiques', 'it', 'Camion frigoriferi');

            -- Level 2: camions-plateaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('camions-plateaux', 'camions-plateaux', 2, l1_id, 'Camions plateaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('camions-plateaux', 'fr', 'Camions plateaux');
            PERFORM insert_category_translations('camions-plateaux', 'ar', 'شاحنات منصة');
            PERFORM insert_category_translations('camions-plateaux', 'en', 'Flatbed trucks');
            PERFORM insert_category_translations('camions-plateaux', 'de', 'Plateau-Lkw');
            PERFORM insert_category_translations('camions-plateaux', 'es', 'Camiones plataforma');
            PERFORM insert_category_translations('camions-plateaux', 'it', 'Camion con pianale');

            -- Level 2: fourgons-professionnels
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fourgons-professionnels', 'fourgons-professionnels', 2, l1_id, 'Fourgons professionnels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fourgons-professionnels', 'fr', 'Fourgons professionnels');
            PERFORM insert_category_translations('fourgons-professionnels', 'ar', 'شاحنات صغيرة مهنية');
            PERFORM insert_category_translations('fourgons-professionnels', 'en', 'Professional vans');
            PERFORM insert_category_translations('fourgons-professionnels', 'de', 'Profi-Kastenwagen');
            PERFORM insert_category_translations('fourgons-professionnels', 'es', 'Furgones profesionales');
            PERFORM insert_category_translations('fourgons-professionnels', 'it', 'Furgoni professionali');

            -- Level 2: fourgonnettes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fourgonnettes', 'fourgonnettes', 2, l1_id, 'Fourgonnettes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fourgonnettes', 'fr', 'Fourgonnettes');
            PERFORM insert_category_translations('fourgonnettes', 'ar', 'شاحنات صغيرة');
            PERFORM insert_category_translations('fourgonnettes', 'en', 'Small vans');
            PERFORM insert_category_translations('fourgonnettes', 'de', 'Kleintransporter');
            PERFORM insert_category_translations('fourgonnettes', 'es', 'Furgonetas pequeñas');
            PERFORM insert_category_translations('fourgonnettes', 'it', 'Furgoncini');

            -- Level 2: minibus
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('minibus', 'minibus', 2, l1_id, 'Minibus')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('minibus', 'fr', 'Minibus');
            PERFORM insert_category_translations('minibus', 'ar', 'حافلات صغيرة');
            PERFORM insert_category_translations('minibus', 'en', 'Minibuses');
            PERFORM insert_category_translations('minibus', 'de', 'Minibusse');
            PERFORM insert_category_translations('minibus', 'es', 'Microbuses');
            PERFORM insert_category_translations('minibus', 'it', 'Minibus');

            -- Level 2: bus
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bus', 'bus', 2, l1_id, 'Bus')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bus', 'fr', 'Bus');
            PERFORM insert_category_translations('bus', 'ar', 'حافلات');
            PERFORM insert_category_translations('bus', 'en', 'Buses');
            PERFORM insert_category_translations('bus', 'de', 'Busse');
            PERFORM insert_category_translations('bus', 'es', 'Autobuses');
            PERFORM insert_category_translations('bus', 'it', 'Autobus');

            -- Level 2: vehicules-de-chantier
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vehicules-de-chantier', 'vehicules-de-chantier', 2, l1_id, 'Véhicules de chantier')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('vehicules-de-chantier', 'fr', 'Véhicules de chantier');
            PERFORM insert_category_translations('vehicules-de-chantier', 'ar', 'مركبات موقع العمل');
            PERFORM insert_category_translations('vehicules-de-chantier', 'en', 'Construction vehicles');
            PERFORM insert_category_translations('vehicules-de-chantier', 'de', 'Baustellenfahrzeuge');
            PERFORM insert_category_translations('vehicules-de-chantier', 'es', 'Vehículos de obra');
            PERFORM insert_category_translations('vehicules-de-chantier', 'it', 'Veicoli da cantiere');

            -- Level 2: depanneuses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('depanneuses', 'depanneuses', 2, l1_id, 'Dépanneuses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('depanneuses', 'fr', 'Dépanneuses');
            PERFORM insert_category_translations('depanneuses', 'ar', 'سيارات إنقاذ');
            PERFORM insert_category_translations('depanneuses', 'en', 'Tow trucks');
            PERFORM insert_category_translations('depanneuses', 'de', 'Abschleppwagen');
            PERFORM insert_category_translations('depanneuses', 'es', 'Grúas');
            PERFORM insert_category_translations('depanneuses', 'it', 'Carri attrezzi');

            -- Level 2: vehicules-toles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vehicules-toles', 'vehicules-toles', 2, l1_id, 'Véhicules tôlés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('vehicules-toles', 'fr', 'Véhicules tôlés');
            PERFORM insert_category_translations('vehicules-toles', 'ar', 'مركبات مغلقة');
            PERFORM insert_category_translations('vehicules-toles', 'en', 'Panel vans');
            PERFORM insert_category_translations('vehicules-toles', 'de', 'Kastenwagen');
            PERFORM insert_category_translations('vehicules-toles', 'es', 'Vehículos panelados');
            PERFORM insert_category_translations('vehicules-toles', 'it', 'Veicoli furgonati');

        -- Level 1: motos-cyclomoteurs
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('motos-cyclomoteurs', 'motos-cyclomoteurs', 1, root_id, 'Motos & Cyclomoteurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('motos-cyclomoteurs', 'fr', 'Motos & Cyclomoteurs');
        PERFORM insert_category_translations('motos-cyclomoteurs', 'ar', 'دراجات نارية ودراجات آلية');
        PERFORM insert_category_translations('motos-cyclomoteurs', 'en', 'Motorcycles & Mopeds');
        PERFORM insert_category_translations('motos-cyclomoteurs', 'de', 'Motorräder & Mofas');
        PERFORM insert_category_translations('motos-cyclomoteurs', 'es', 'Motos y ciclomotores');
        PERFORM insert_category_translations('motos-cyclomoteurs', 'it', 'Moto & ciclomotori');

            -- Level 2: motos-sportives
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('motos-sportives', 'motos-sportives', 2, l1_id, 'Motos sportives')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('motos-sportives', 'fr', 'Motos sportives');
            PERFORM insert_category_translations('motos-sportives', 'ar', 'دراجات رياضية');
            PERFORM insert_category_translations('motos-sportives', 'en', 'Sport bikes');
            PERFORM insert_category_translations('motos-sportives', 'de', 'Sportmotorräder');
            PERFORM insert_category_translations('motos-sportives', 'es', 'Motos deportivas');
            PERFORM insert_category_translations('motos-sportives', 'it', 'Moto sportive');

            -- Level 2: motos-roadster
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('motos-roadster', 'motos-roadster', 2, l1_id, 'Motos roadster')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('motos-roadster', 'fr', 'Motos roadster');
            PERFORM insert_category_translations('motos-roadster', 'ar', 'رودستر');
            PERFORM insert_category_translations('motos-roadster', 'en', 'Roadsters');
            PERFORM insert_category_translations('motos-roadster', 'de', 'Roadster');
            PERFORM insert_category_translations('motos-roadster', 'es', 'Roadster');
            PERFORM insert_category_translations('motos-roadster', 'it', 'Roadster');

            -- Level 2: motos-touring
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('motos-touring', 'motos-touring', 2, l1_id, 'Motos touring')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('motos-touring', 'fr', 'Motos touring');
            PERFORM insert_category_translations('motos-touring', 'ar', 'تورينغ');
            PERFORM insert_category_translations('motos-touring', 'en', 'Touring bikes');
            PERFORM insert_category_translations('motos-touring', 'de', 'Tourer');
            PERFORM insert_category_translations('motos-touring', 'es', 'Touring');
            PERFORM insert_category_translations('motos-touring', 'it', 'Touring');

            -- Level 2: motos-enduro
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('motos-enduro', 'motos-enduro', 2, l1_id, 'Motos enduro')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('motos-enduro', 'fr', 'Motos enduro');
            PERFORM insert_category_translations('motos-enduro', 'ar', 'إندورو');
            PERFORM insert_category_translations('motos-enduro', 'en', 'Enduro');
            PERFORM insert_category_translations('motos-enduro', 'de', 'Enduro');
            PERFORM insert_category_translations('motos-enduro', 'es', 'Enduro');
            PERFORM insert_category_translations('motos-enduro', 'it', 'Enduro');

            -- Level 2: motos-trail
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('motos-trail', 'motos-trail', 2, l1_id, 'Motos trail')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('motos-trail', 'fr', 'Motos trail');
            PERFORM insert_category_translations('motos-trail', 'ar', 'أدفنتشر/ترايل');
            PERFORM insert_category_translations('motos-trail', 'en', 'Adventure/Trail');
            PERFORM insert_category_translations('motos-trail', 'de', 'Adventure/Trail');
            PERFORM insert_category_translations('motos-trail', 'es', 'Trail/Adventure');
            PERFORM insert_category_translations('motos-trail', 'it', 'Trail/Adventure');

            -- Level 2: motos-cross
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('motos-cross', 'motos-cross', 2, l1_id, 'Motos cross')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('motos-cross', 'fr', 'Motos cross');
            PERFORM insert_category_translations('motos-cross', 'ar', 'موتوكروس');
            PERFORM insert_category_translations('motos-cross', 'en', 'Motocross');
            PERFORM insert_category_translations('motos-cross', 'de', 'Motocross');
            PERFORM insert_category_translations('motos-cross', 'es', 'Motocross');
            PERFORM insert_category_translations('motos-cross', 'it', 'Motocross');

            -- Level 2: motos-custom
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('motos-custom', 'motos-custom', 2, l1_id, 'Motos custom')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('motos-custom', 'fr', 'Motos custom');
            PERFORM insert_category_translations('motos-custom', 'ar', 'كوستم');
            PERFORM insert_category_translations('motos-custom', 'en', 'Custom');
            PERFORM insert_category_translations('motos-custom', 'de', 'Custom');
            PERFORM insert_category_translations('motos-custom', 'es', 'Custom');
            PERFORM insert_category_translations('motos-custom', 'it', 'Custom');

            -- Level 2: scooters-50cc
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('scooters-50cc', 'scooters-50cc', 2, l1_id, 'Scooters 50cc')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('scooters-50cc', 'fr', 'Scooters 50cc');
            PERFORM insert_category_translations('scooters-50cc', 'ar', 'سكوترات 50cc');
            PERFORM insert_category_translations('scooters-50cc', 'en', 'Scooters 50cc');
            PERFORM insert_category_translations('scooters-50cc', 'de', 'Roller 50cc');
            PERFORM insert_category_translations('scooters-50cc', 'es', 'Scooters 50cc');
            PERFORM insert_category_translations('scooters-50cc', 'it', 'Scooter 50cc');

            -- Level 2: scooters-125cc
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('scooters-125cc', 'scooters-125cc', 2, l1_id, 'Scooters 125cc')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('scooters-125cc', 'fr', 'Scooters 125cc');
            PERFORM insert_category_translations('scooters-125cc', 'ar', 'سكوترات 125cc');
            PERFORM insert_category_translations('scooters-125cc', 'en', 'Scooters 125cc');
            PERFORM insert_category_translations('scooters-125cc', 'de', 'Roller 125cc');
            PERFORM insert_category_translations('scooters-125cc', 'es', 'Scooters 125cc');
            PERFORM insert_category_translations('scooters-125cc', 'it', 'Scooter 125cc');

            -- Level 2: maxi-scooters
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('maxi-scooters', 'maxi-scooters', 2, l1_id, 'Maxi-scooters')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('maxi-scooters', 'fr', 'Maxi-scooters');
            PERFORM insert_category_translations('maxi-scooters', 'ar', 'ماكسي سكوتر');
            PERFORM insert_category_translations('maxi-scooters', 'en', 'Maxi scooters');
            PERFORM insert_category_translations('maxi-scooters', 'de', 'Maxi-Roller');
            PERFORM insert_category_translations('maxi-scooters', 'es', 'Maxi‑scooters');
            PERFORM insert_category_translations('maxi-scooters', 'it', 'Maxi‑scooter');

            -- Level 2: mobylettes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mobylettes', 'mobylettes', 2, l1_id, 'Mobylettes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mobylettes', 'fr', 'Mobylettes');
            PERFORM insert_category_translations('mobylettes', 'ar', 'دراجات آلية');
            PERFORM insert_category_translations('mobylettes', 'en', 'Mopeds');
            PERFORM insert_category_translations('mobylettes', 'de', 'Mofas');
            PERFORM insert_category_translations('mobylettes', 'es', 'Ciclomotores');
            PERFORM insert_category_translations('mobylettes', 'it', 'Ciclomotori');

            -- Level 2: quads-atv
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('quads-atv', 'quads-atv', 2, l1_id, 'Quads & ATV')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('quads-atv', 'fr', 'Quads & ATV');
            PERFORM insert_category_translations('quads-atv', 'ar', 'كواد/ATV');
            PERFORM insert_category_translations('quads-atv', 'en', 'Quads & ATVs');
            PERFORM insert_category_translations('quads-atv', 'de', 'Quads & ATV');
            PERFORM insert_category_translations('quads-atv', 'es', 'Quads & ATV');
            PERFORM insert_category_translations('quads-atv', 'it', 'Quad & ATV');

            -- Level 2: tricycles-motorises
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tricycles-motorises', 'tricycles-motorises', 2, l1_id, 'Tricycles motorisés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tricycles-motorises', 'fr', 'Tricycles motorisés');
            PERFORM insert_category_translations('tricycles-motorises', 'ar', 'دراجات ثلاثية بمحرك');
            PERFORM insert_category_translations('tricycles-motorises', 'en', 'Motorized tricycles');
            PERFORM insert_category_translations('tricycles-motorises', 'de', 'Motor-Dreiräder');
            PERFORM insert_category_translations('tricycles-motorises', 'es', 'Triciclos motorizados');
            PERFORM insert_category_translations('tricycles-motorises', 'it', 'Tricicli motorizzati');

            -- Level 2: motos-electriques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('motos-electriques', 'motos-electriques', 2, l1_id, 'Motos électriques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('motos-electriques', 'fr', 'Motos électriques');
            PERFORM insert_category_translations('motos-electriques', 'ar', 'دراجات نارية كهربائية');
            PERFORM insert_category_translations('motos-electriques', 'en', 'Electric motorcycles');
            PERFORM insert_category_translations('motos-electriques', 'de', 'Elektromotorräder');
            PERFORM insert_category_translations('motos-electriques', 'es', 'Motos eléctricas');
            PERFORM insert_category_translations('motos-electriques', 'it', 'Moto elettriche');

        -- Level 1: velos-motorises-mobilite
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('velos-motorises-mobilite', 'velos-motorises-mobilite', 1, root_id, 'Vélos Motorisés & Mobilité')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('velos-motorises-mobilite', 'fr', 'Vélos Motorisés & Mobilité');
        PERFORM insert_category_translations('velos-motorises-mobilite', 'ar', 'دراجات كهربائية والتنقل');
        PERFORM insert_category_translations('velos-motorises-mobilite', 'en', 'Powered Bicycles & Mobility');
        PERFORM insert_category_translations('velos-motorises-mobilite', 'de', 'Motorisierte Fahrräder & Mobilität');
        PERFORM insert_category_translations('velos-motorises-mobilite', 'es', 'Bicicletas motorizadas y movilidad');
        PERFORM insert_category_translations('velos-motorises-mobilite', 'it', 'Biciclette motorizzate & mobilità');

            -- Level 2: velos-electriques-rapides
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('velos-electriques-rapides', 'velos-electriques-rapides', 2, l1_id, 'Vélos électriques rapides')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('velos-electriques-rapides', 'fr', 'Vélos électriques rapides');
            PERFORM insert_category_translations('velos-electriques-rapides', 'ar', 'دراجات كهربائية سريعة');
            PERFORM insert_category_translations('velos-electriques-rapides', 'en', 'Speed e-bikes');
            PERFORM insert_category_translations('velos-electriques-rapides', 'de', 'Schnelle E‑Bikes');
            PERFORM insert_category_translations('velos-electriques-rapides', 'es', 'E‑bikes rápidas');
            PERFORM insert_category_translations('velos-electriques-rapides', 'it', 'E‑bike veloci');

            -- Level 2: trottinettes-electriques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('trottinettes-electriques', 'trottinettes-electriques', 2, l1_id, 'Trottinettes électriques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('trottinettes-electriques', 'fr', 'Trottinettes électriques');
            PERFORM insert_category_translations('trottinettes-electriques', 'ar', 'سكوترات كهربائية');
            PERFORM insert_category_translations('trottinettes-electriques', 'en', 'Electric scooters');
            PERFORM insert_category_translations('trottinettes-electriques', 'de', 'E‑Scooter');
            PERFORM insert_category_translations('trottinettes-electriques', 'es', 'Patinetes eléctricos');
            PERFORM insert_category_translations('trottinettes-electriques', 'it', 'Monopattini elettrici');

            -- Level 2: gyropodes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gyropodes', 'gyropodes', 2, l1_id, 'Gyropodes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gyropodes', 'fr', 'Gyropodes');
            PERFORM insert_category_translations('gyropodes', 'ar', 'جيروبود');
            PERFORM insert_category_translations('gyropodes', 'en', 'Segways/gyropodes');
            PERFORM insert_category_translations('gyropodes', 'de', 'Gyropoden');
            PERFORM insert_category_translations('gyropodes', 'es', 'Gyropodes');
            PERFORM insert_category_translations('gyropodes', 'it', 'Gyropode');

            -- Level 2: monoroues-electriques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('monoroues-electriques', 'monoroues-electriques', 2, l1_id, 'Monoroues électriques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('monoroues-electriques', 'fr', 'Monoroues électriques');
            PERFORM insert_category_translations('monoroues-electriques', 'ar', 'عجلات كهربائية أحادية');
            PERFORM insert_category_translations('monoroues-electriques', 'en', 'Electric unicycles');
            PERFORM insert_category_translations('monoroues-electriques', 'de', 'Elektrische Einräder');
            PERFORM insert_category_translations('monoroues-electriques', 'es', 'Monociclos eléctricos');
            PERFORM insert_category_translations('monoroues-electriques', 'it', 'Monoruote elettriche');

            -- Level 2: cyclomoteurs-legers-electriques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cyclomoteurs-legers-electriques', 'cyclomoteurs-legers-electriques', 2, l1_id, 'Cyclomoteurs légers électriques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cyclomoteurs-legers-electriques', 'fr', 'Cyclomoteurs légers électriques');
            PERFORM insert_category_translations('cyclomoteurs-legers-electriques', 'ar', 'دراجات آلية كهربائية خفيفة');
            PERFORM insert_category_translations('cyclomoteurs-legers-electriques', 'en', 'Light electric mopeds');
            PERFORM insert_category_translations('cyclomoteurs-legers-electriques', 'de', 'Leichte E‑Mofas');
            PERFORM insert_category_translations('cyclomoteurs-legers-electriques', 'es', 'Ciclomotores eléctricos ligeros');
            PERFORM insert_category_translations('cyclomoteurs-legers-electriques', 'it', 'Ciclomotori elettrici leggeri');

        -- Level 1: equipements-accessoires-auto
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('equipements-accessoires-auto', 'equipements-accessoires-auto', 1, root_id, 'Équipement & Accessoires Auto')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('equipements-accessoires-auto', 'fr', 'Équipement & Accessoires Auto');
        PERFORM insert_category_translations('equipements-accessoires-auto', 'ar', 'معدات وإكسسوارات السيارات');
        PERFORM insert_category_translations('equipements-accessoires-auto', 'en', 'Car Equipment & Accessories');
        PERFORM insert_category_translations('equipements-accessoires-auto', 'de', 'Autozubehör & Ausrüstung');
        PERFORM insert_category_translations('equipements-accessoires-auto', 'es', 'Equipamiento y accesorios de coche');
        PERFORM insert_category_translations('equipements-accessoires-auto', 'it', 'Equipaggiamento & accessori auto');

            -- Level 2: pneus
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pneus', 'pneus', 2, l1_id, 'Pneus')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pneus', 'fr', 'Pneus');
            PERFORM insert_category_translations('pneus', 'ar', 'إطارات');
            PERFORM insert_category_translations('pneus', 'en', 'Tires');
            PERFORM insert_category_translations('pneus', 'de', 'Reifen');
            PERFORM insert_category_translations('pneus', 'es', 'Neumáticos');
            PERFORM insert_category_translations('pneus', 'it', 'Pneumatici');

            -- Level 2: jantes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jantes', 'jantes', 2, l1_id, 'Jantes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('jantes', 'fr', 'Jantes');
            PERFORM insert_category_translations('jantes', 'ar', 'جنطات');
            PERFORM insert_category_translations('jantes', 'en', 'Rims');
            PERFORM insert_category_translations('jantes', 'de', 'Felgen');
            PERFORM insert_category_translations('jantes', 'es', 'Llantas');
            PERFORM insert_category_translations('jantes', 'it', 'Cerchi');

            -- Level 2: batteries
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('batteries', 'batteries', 2, l1_id, 'Batteries')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('batteries', 'fr', 'Batteries');
            PERFORM insert_category_translations('batteries', 'ar', 'بطاريات');
            PERFORM insert_category_translations('batteries', 'en', 'Batteries');
            PERFORM insert_category_translations('batteries', 'de', 'Batterien');
            PERFORM insert_category_translations('batteries', 'es', 'Baterías');
            PERFORM insert_category_translations('batteries', 'it', 'Batterie');

            -- Level 2: filtres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('filtres', 'filtres', 2, l1_id, 'Filtres')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('filtres', 'fr', 'Filtres');
            PERFORM insert_category_translations('filtres', 'ar', 'فلاتر');
            PERFORM insert_category_translations('filtres', 'en', 'Filters');
            PERFORM insert_category_translations('filtres', 'de', 'Filter');
            PERFORM insert_category_translations('filtres', 'es', 'Filtros');
            PERFORM insert_category_translations('filtres', 'it', 'Filtri');

            -- Level 2: huiles-lubrifiants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('huiles-lubrifiants', 'huiles-lubrifiants', 2, l1_id, 'Huiles & lubrifiants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('huiles-lubrifiants', 'fr', 'Huiles & lubrifiants');
            PERFORM insert_category_translations('huiles-lubrifiants', 'ar', 'زيوت ومواد تشحيم');
            PERFORM insert_category_translations('huiles-lubrifiants', 'en', 'Oils & lubricants');
            PERFORM insert_category_translations('huiles-lubrifiants', 'de', 'Öle & Schmierstoffe');
            PERFORM insert_category_translations('huiles-lubrifiants', 'es', 'Aceites y lubricantes');
            PERFORM insert_category_translations('huiles-lubrifiants', 'it', 'Oli & lubrificanti');

            -- Level 2: plaquettes-frein
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('plaquettes-frein', 'plaquettes-frein', 2, l1_id, 'Plaquettes de frein')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('plaquettes-frein', 'fr', 'Plaquettes de frein');
            PERFORM insert_category_translations('plaquettes-frein', 'ar', 'بطانات فرامل');
            PERFORM insert_category_translations('plaquettes-frein', 'en', 'Brake pads');
            PERFORM insert_category_translations('plaquettes-frein', 'de', 'Bremsbeläge');
            PERFORM insert_category_translations('plaquettes-frein', 'es', 'Pastillas de freno');
            PERFORM insert_category_translations('plaquettes-frein', 'it', 'Pastiglie freno');

            -- Level 2: disques-frein
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('disques-frein', 'disques-frein', 2, l1_id, 'Disques de frein')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('disques-frein', 'fr', 'Disques de frein');
            PERFORM insert_category_translations('disques-frein', 'ar', 'أقراص فرامل');
            PERFORM insert_category_translations('disques-frein', 'en', 'Brake discs');
            PERFORM insert_category_translations('disques-frein', 'de', 'Bremsscheiben');
            PERFORM insert_category_translations('disques-frein', 'es', 'Discos de freno');
            PERFORM insert_category_translations('disques-frein', 'it', 'Dischi freno');

            -- Level 2: amortisseurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('amortisseurs', 'amortisseurs', 2, l1_id, 'Amortisseurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('amortisseurs', 'fr', 'Amortisseurs');
            PERFORM insert_category_translations('amortisseurs', 'ar', 'ممتصات صدمات');
            PERFORM insert_category_translations('amortisseurs', 'en', 'Shock absorbers');
            PERFORM insert_category_translations('amortisseurs', 'de', 'Stoßdämpfer');
            PERFORM insert_category_translations('amortisseurs', 'es', 'Amortiguadores');
            PERFORM insert_category_translations('amortisseurs', 'it', 'Ammortizzatori');

            -- Level 2: courroies
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('courroies', 'courroies', 2, l1_id, 'Courroies')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('courroies', 'fr', 'Courroies');
            PERFORM insert_category_translations('courroies', 'ar', 'سيور');
            PERFORM insert_category_translations('courroies', 'en', 'Belts');
            PERFORM insert_category_translations('courroies', 'de', 'Riemen');
            PERFORM insert_category_translations('courroies', 'es', 'Correas');
            PERFORM insert_category_translations('courroies', 'it', 'Cinghie');

            -- Level 2: embrayages
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('embrayages', 'embrayages', 2, l1_id, 'Embrayages')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('embrayages', 'fr', 'Embrayages');
            PERFORM insert_category_translations('embrayages', 'ar', 'قوابض');
            PERFORM insert_category_translations('embrayages', 'en', 'Clutches');
            PERFORM insert_category_translations('embrayages', 'de', 'Kupplungen');
            PERFORM insert_category_translations('embrayages', 'es', 'Embragues');
            PERFORM insert_category_translations('embrayages', 'it', 'Frizioni');

            -- Level 2: bougies
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bougies', 'bougies', 2, l1_id, 'Bougies')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bougies', 'fr', 'Bougies');
            PERFORM insert_category_translations('bougies', 'ar', 'شمعات إشعال');
            PERFORM insert_category_translations('bougies', 'en', 'Spark plugs');
            PERFORM insert_category_translations('bougies', 'de', 'Zündkerzen');
            PERFORM insert_category_translations('bougies', 'es', 'Bujías');
            PERFORM insert_category_translations('bougies', 'it', 'Candele');

            -- Level 2: echappements
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('echappements', 'echappements', 2, l1_id, 'Échappements')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('echappements', 'fr', 'Échappements');
            PERFORM insert_category_translations('echappements', 'ar', 'عوادم');
            PERFORM insert_category_translations('echappements', 'en', 'Exhausts');
            PERFORM insert_category_translations('echappements', 'de', 'Auspuffanlagen');
            PERFORM insert_category_translations('echappements', 'es', 'Escapes');
            PERFORM insert_category_translations('echappements', 'it', 'Scarichi');

            -- Level 2: pieces-moteur
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pieces-moteur', 'pieces-moteur', 2, l1_id, 'Pièces moteur')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pieces-moteur', 'fr', 'Pièces moteur');
            PERFORM insert_category_translations('pieces-moteur', 'ar', 'قطع المحرك');
            PERFORM insert_category_translations('pieces-moteur', 'en', 'Engine parts');
            PERFORM insert_category_translations('pieces-moteur', 'de', 'Motorteile');
            PERFORM insert_category_translations('pieces-moteur', 'es', 'Piezas de motor');
            PERFORM insert_category_translations('pieces-moteur', 'it', 'Parti motore');

            -- Level 2: kits-distribution
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('kits-distribution', 'kits-distribution', 2, l1_id, 'Kits de distribution')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('kits-distribution', 'fr', 'Kits de distribution');
            PERFORM insert_category_translations('kits-distribution', 'ar', 'مجموعات التوزيع');
            PERFORM insert_category_translations('kits-distribution', 'en', 'Timing kits');
            PERFORM insert_category_translations('kits-distribution', 'de', 'Zahnriemen‑Kits');
            PERFORM insert_category_translations('kits-distribution', 'es', 'Kits de distribución');
            PERFORM insert_category_translations('kits-distribution', 'it', 'Kit distribuzione');

            -- Level 2: accessoires-interieurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-interieurs', 'accessoires-interieurs', 2, l1_id, 'Accessoires intérieurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('accessoires-interieurs', 'fr', 'Accessoires intérieurs');
            PERFORM insert_category_translations('accessoires-interieurs', 'ar', 'إكسسوارات داخلية');
            PERFORM insert_category_translations('accessoires-interieurs', 'en', 'Interior accessories');
            PERFORM insert_category_translations('accessoires-interieurs', 'de', 'Innenausstattung');
            PERFORM insert_category_translations('accessoires-interieurs', 'es', 'Accesorios interiores');
            PERFORM insert_category_translations('accessoires-interieurs', 'it', 'Accessori interni');

            -- Level 2: housses-sieges
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('housses-sieges', 'housses-sieges', 2, l1_id, 'Housses de sièges')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('housses-sieges', 'fr', 'Housses de sièges');
            PERFORM insert_category_translations('housses-sieges', 'ar', 'أغطية المقاعد');
            PERFORM insert_category_translations('housses-sieges', 'en', 'Seat covers');
            PERFORM insert_category_translations('housses-sieges', 'de', 'Sitzbezüge');
            PERFORM insert_category_translations('housses-sieges', 'es', 'Fundas de asiento');
            PERFORM insert_category_translations('housses-sieges', 'it', 'Foderi sedili');

            -- Level 2: tapis
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tapis', 'tapis', 2, l1_id, 'Tapis')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tapis', 'fr', 'Tapis');
            PERFORM insert_category_translations('tapis', 'ar', 'فرش أرضية');
            PERFORM insert_category_translations('tapis', 'en', 'Floor mats');
            PERFORM insert_category_translations('tapis', 'de', 'Fußmatten');
            PERFORM insert_category_translations('tapis', 'es', 'Alfombrillas');
            PERFORM insert_category_translations('tapis', 'it', 'Tappetini');

            -- Level 2: gps
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gps', 'gps', 2, l1_id, 'GPS')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gps', 'fr', 'GPS');
            PERFORM insert_category_translations('gps', 'ar', 'GPS');
            PERFORM insert_category_translations('gps', 'en', 'GPS');
            PERFORM insert_category_translations('gps', 'de', 'GPS');
            PERFORM insert_category_translations('gps', 'es', 'GPS');
            PERFORM insert_category_translations('gps', 'it', 'GPS');

            -- Level 2: cameras-embarquees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cameras-embarquees', 'cameras-embarquees', 2, l1_id, 'Caméras embarquées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cameras-embarquees', 'fr', 'Caméras embarquées');
            PERFORM insert_category_translations('cameras-embarquees', 'ar', 'كاميرات سيارة');
            PERFORM insert_category_translations('cameras-embarquees', 'en', 'Dashcams');
            PERFORM insert_category_translations('cameras-embarquees', 'de', 'Dashcams');
            PERFORM insert_category_translations('cameras-embarquees', 'es', 'Cámaras a bordo');
            PERFORM insert_category_translations('cameras-embarquees', 'it', 'Dashcam');

            -- Level 2: alarmes-auto
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('alarmes-auto', 'alarmes-auto', 2, l1_id, 'Alarmes auto')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('alarmes-auto', 'fr', 'Alarmes auto');
            PERFORM insert_category_translations('alarmes-auto', 'ar', 'إنذارات سيارات');
            PERFORM insert_category_translations('alarmes-auto', 'en', 'Car alarms');
            PERFORM insert_category_translations('alarmes-auto', 'de', 'Autoalarme');
            PERFORM insert_category_translations('alarmes-auto', 'es', 'Alarmas de coche');
            PERFORM insert_category_translations('alarmes-auto', 'it', 'Allarmi auto');

            -- Level 2: kits-mains-libres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('kits-mains-libres', 'kits-mains-libres', 2, l1_id, 'Kits mains-libres')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('kits-mains-libres', 'fr', 'Kits mains-libres');
            PERFORM insert_category_translations('kits-mains-libres', 'ar', 'أطقم اتصال حرّ');
            PERFORM insert_category_translations('kits-mains-libres', 'en', 'Hands-free kits');
            PERFORM insert_category_translations('kits-mains-libres', 'de', 'Freisprech‑Kits');
            PERFORM insert_category_translations('kits-mains-libres', 'es', 'Kits manos libres');
            PERFORM insert_category_translations('kits-mains-libres', 'it', 'Kit vivavoce');

        -- Level 1: pieces-accessoires-moto
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pieces-accessoires-moto', 'pieces-accessoires-moto', 1, root_id, 'Pièces & Accessoires Moto')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('pieces-accessoires-moto', 'fr', 'Pièces & Accessoires Moto');
        PERFORM insert_category_translations('pieces-accessoires-moto', 'ar', 'قطع وإكسسوارات الدراجات النارية');
        PERFORM insert_category_translations('pieces-accessoires-moto', 'en', 'Motorcycle Parts & Accessories');
        PERFORM insert_category_translations('pieces-accessoires-moto', 'de', 'Motorradteile & Zubehör');
        PERFORM insert_category_translations('pieces-accessoires-moto', 'es', 'Piezas y accesorios de moto');
        PERFORM insert_category_translations('pieces-accessoires-moto', 'it', 'Ricambi & accessori moto');

            -- Level 2: casques-moto
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('casques-moto', 'casques-moto', 2, l1_id, 'Casques moto')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('casques-moto', 'fr', 'Casques moto');
            PERFORM insert_category_translations('casques-moto', 'ar', 'خوذ دراجات');
            PERFORM insert_category_translations('casques-moto', 'en', 'Motorcycle helmets');
            PERFORM insert_category_translations('casques-moto', 'de', 'Motorradhelme');
            PERFORM insert_category_translations('casques-moto', 'es', 'Cascos');
            PERFORM insert_category_translations('casques-moto', 'it', 'Caschi');

            -- Level 2: blousons-moto
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('blousons-moto', 'blousons-moto', 2, l1_id, 'Blousons moto')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('blousons-moto', 'fr', 'Blousons moto');
            PERFORM insert_category_translations('blousons-moto', 'ar', 'سترات');
            PERFORM insert_category_translations('blousons-moto', 'en', 'Motorcycle jackets');
            PERFORM insert_category_translations('blousons-moto', 'de', 'Motorradjacken');
            PERFORM insert_category_translations('blousons-moto', 'es', 'Chaquetas');
            PERFORM insert_category_translations('blousons-moto', 'it', 'Giacche');

            -- Level 2: gants-moto
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gants-moto', 'gants-moto', 2, l1_id, 'Gants moto')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gants-moto', 'fr', 'Gants moto');
            PERFORM insert_category_translations('gants-moto', 'ar', 'قفازات');
            PERFORM insert_category_translations('gants-moto', 'en', 'Gloves');
            PERFORM insert_category_translations('gants-moto', 'de', 'Handschuhe');
            PERFORM insert_category_translations('gants-moto', 'es', 'Guantes');
            PERFORM insert_category_translations('gants-moto', 'it', 'Guanti');

            -- Level 2: bottes-chaussures
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bottes-chaussures', 'bottes-chaussures', 2, l1_id, 'Bottes & chaussures')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bottes-chaussures', 'fr', 'Bottes & chaussures');
            PERFORM insert_category_translations('bottes-chaussures', 'ar', 'أحذية وبوت');
            PERFORM insert_category_translations('bottes-chaussures', 'en', 'Boots & shoes');
            PERFORM insert_category_translations('bottes-chaussures', 'de', 'Stiefel & Schuhe');
            PERFORM insert_category_translations('bottes-chaussures', 'es', 'Botas y zapatos');
            PERFORM insert_category_translations('bottes-chaussures', 'it', 'Stivali & scarpe');

            -- Level 2: protections-moto
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('protections-moto', 'protections-moto', 2, l1_id, 'Protections (dorsales, genouillères)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('protections-moto', 'fr', 'Protections (dorsales, genouillères)');
            PERFORM insert_category_translations('protections-moto', 'ar', 'واقيات (ظهر، ركبتين)');
            PERFORM insert_category_translations('protections-moto', 'en', 'Protection (back, knee)');
            PERFORM insert_category_translations('protections-moto', 'de', 'Schutz (Rücken, Knie)');
            PERFORM insert_category_translations('protections-moto', 'es', 'Protecciones (espaldera, rodilleras)');
            PERFORM insert_category_translations('protections-moto', 'it', 'Protezioni (schiena, ginocchia)');

            -- Level 2: valises-top-cases
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('valises-top-cases', 'valises-top-cases', 2, l1_id, 'Valises & top cases')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('valises-top-cases', 'fr', 'Valises & top cases');
            PERFORM insert_category_translations('valises-top-cases', 'ar', 'حقائب وصناديق علوية');
            PERFORM insert_category_translations('valises-top-cases', 'en', 'Cases & top boxes');
            PERFORM insert_category_translations('valises-top-cases', 'de', 'Koffer & Topcases');
            PERFORM insert_category_translations('valises-top-cases', 'es', 'Maletas y top cases');
            PERFORM insert_category_translations('valises-top-cases', 'it', 'Valigie & top case');

            -- Level 2: pots-echappement-moto
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pots-echappement-moto', 'pots-echappement-moto', 2, l1_id, 'Pots d’échappement moto')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pots-echappement-moto', 'fr', 'Pots d’échappement moto');
            PERFORM insert_category_translations('pots-echappement-moto', 'ar', 'عوادم دراجات');
            PERFORM insert_category_translations('pots-echappement-moto', 'en', 'Motorcycle exhausts');
            PERFORM insert_category_translations('pots-echappement-moto', 'de', 'Auspuffe für Motorräder');
            PERFORM insert_category_translations('pots-echappement-moto', 'es', 'Escapes para moto');
            PERFORM insert_category_translations('pots-echappement-moto', 'it', 'Scarichi moto');

            -- Level 2: kits-chaine
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('kits-chaine', 'kits-chaine', 2, l1_id, 'Kits chaîne')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('kits-chaine', 'fr', 'Kits chaîne');
            PERFORM insert_category_translations('kits-chaine', 'ar', 'مجموعات سلسلة');
            PERFORM insert_category_translations('kits-chaine', 'en', 'Chain kits');
            PERFORM insert_category_translations('kits-chaine', 'de', 'Ketten‑Kits');
            PERFORM insert_category_translations('kits-chaine', 'es', 'Kits de cadena');
            PERFORM insert_category_translations('kits-chaine', 'it', 'Kit catena');

            -- Level 2: batteries-moto
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('batteries-moto', 'batteries-moto', 2, l1_id, 'Batteries moto')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('batteries-moto', 'fr', 'Batteries moto');
            PERFORM insert_category_translations('batteries-moto', 'ar', 'بطاريات دراجات');
            PERFORM insert_category_translations('batteries-moto', 'en', 'Motorcycle batteries');
            PERFORM insert_category_translations('batteries-moto', 'de', 'Motorradbatterien');
            PERFORM insert_category_translations('batteries-moto', 'es', 'Baterías de moto');
            PERFORM insert_category_translations('batteries-moto', 'it', 'Batterie moto');

            -- Level 2: pneus-moto
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pneus-moto', 'pneus-moto', 2, l1_id, 'Pneus moto')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pneus-moto', 'fr', 'Pneus moto');
            PERFORM insert_category_translations('pneus-moto', 'ar', 'إطارات دراجات');
            PERFORM insert_category_translations('pneus-moto', 'en', 'Motorcycle tires');
            PERFORM insert_category_translations('pneus-moto', 'de', 'Motorradreifen');
            PERFORM insert_category_translations('pneus-moto', 'es', 'Neumáticos de moto');
            PERFORM insert_category_translations('pneus-moto', 'it', 'Pneumatici moto');

            -- Level 2: guidons
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('guidons', 'guidons', 2, l1_id, 'Guidons')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('guidons', 'fr', 'Guidons');
            PERFORM insert_category_translations('guidons', 'ar', 'مقود');
            PERFORM insert_category_translations('guidons', 'en', 'Handlebars');
            PERFORM insert_category_translations('guidons', 'de', 'Lenker');
            PERFORM insert_category_translations('guidons', 'es', 'Manillares');
            PERFORM insert_category_translations('guidons', 'it', 'Manubri');

            -- Level 2: leviers
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('leviers', 'leviers', 2, l1_id, 'Leviers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('leviers', 'fr', 'Leviers');
            PERFORM insert_category_translations('leviers', 'ar', 'مقابض');
            PERFORM insert_category_translations('leviers', 'en', 'Levers');
            PERFORM insert_category_translations('leviers', 'de', 'Hebel');
            PERFORM insert_category_translations('leviers', 'es', 'Manetas');
            PERFORM insert_category_translations('leviers', 'it', 'Leve');

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

            -- Level 2: pieces-moteur-moto
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pieces-moteur-moto', 'pieces-moteur-moto', 2, l1_id, 'Pièces moteur moto')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pieces-moteur-moto', 'fr', 'Pièces moteur moto');
            PERFORM insert_category_translations('pieces-moteur-moto', 'ar', 'قطع محرك (موتو)');
            PERFORM insert_category_translations('pieces-moteur-moto', 'en', 'Motorcycle engine parts');
            PERFORM insert_category_translations('pieces-moteur-moto', 'de', 'Motorenteile (Moto)');
            PERFORM insert_category_translations('pieces-moteur-moto', 'es', 'Piezas de motor (moto)');
            PERFORM insert_category_translations('pieces-moteur-moto', 'it', 'Parti motore (moto)');

            -- Level 2: huile-moto
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('huile-moto', 'huile-moto', 2, l1_id, 'Huile moto')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('huile-moto', 'fr', 'Huile moto');
            PERFORM insert_category_translations('huile-moto', 'ar', 'زيت موتو');
            PERFORM insert_category_translations('huile-moto', 'en', 'Motor oil');
            PERFORM insert_category_translations('huile-moto', 'de', 'Motoröl (Moto)');
            PERFORM insert_category_translations('huile-moto', 'es', 'Aceite de moto');
            PERFORM insert_category_translations('huile-moto', 'it', 'Olio moto');

            -- Level 2: kits-reparation
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('kits-reparation', 'kits-reparation', 2, l1_id, 'Kits de réparation')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('kits-reparation', 'fr', 'Kits de réparation');
            PERFORM insert_category_translations('kits-reparation', 'ar', 'مجموعات إصلاح');
            PERFORM insert_category_translations('kits-reparation', 'en', 'Repair kits');
            PERFORM insert_category_translations('kits-reparation', 'de', 'Reparatur‑Kits');
            PERFORM insert_category_translations('kits-reparation', 'es', 'Kits de reparación');
            PERFORM insert_category_translations('kits-reparation', 'it', 'Kit riparazione');

        -- Level 1: remorques-attelages
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('remorques-attelages', 'remorques-attelages', 1, root_id, 'Remorques & Attelages')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('remorques-attelages', 'fr', 'Remorques & Attelages');
        PERFORM insert_category_translations('remorques-attelages', 'ar', 'مقطورات ووسائل السحب');
        PERFORM insert_category_translations('remorques-attelages', 'en', 'Trailers & Towing');
        PERFORM insert_category_translations('remorques-attelages', 'de', 'Anhänger & Anhängerkupplungen');
        PERFORM insert_category_translations('remorques-attelages', 'es', 'Remolques y enganches');
        PERFORM insert_category_translations('remorques-attelages', 'it', 'Rimorchi & traino');

            -- Level 2: remorques-utilitaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('remorques-utilitaires', 'remorques-utilitaires', 2, l1_id, 'Remorques utilitaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('remorques-utilitaires', 'fr', 'Remorques utilitaires');
            PERFORM insert_category_translations('remorques-utilitaires', 'ar', 'مقطورات خدمية');
            PERFORM insert_category_translations('remorques-utilitaires', 'en', 'Utility trailers');
            PERFORM insert_category_translations('remorques-utilitaires', 'de', 'Nutzanhänger');
            PERFORM insert_category_translations('remorques-utilitaires', 'es', 'Remolques utilitarios');
            PERFORM insert_category_translations('remorques-utilitaires', 'it', 'Rimorchi utilitari');

            -- Level 2: remorques-porte-voitures
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('remorques-porte-voitures', 'remorques-porte-voitures', 2, l1_id, 'Remorques porte-voitures')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('remorques-porte-voitures', 'fr', 'Remorques porte-voitures');
            PERFORM insert_category_translations('remorques-porte-voitures', 'ar', 'مقطورات نقل سيارات');
            PERFORM insert_category_translations('remorques-porte-voitures', 'en', 'Car hauler trailers');
            PERFORM insert_category_translations('remorques-porte-voitures', 'de', 'Autotransporter');
            PERFORM insert_category_translations('remorques-porte-voitures', 'es', 'Remolques porta‑coches');
            PERFORM insert_category_translations('remorques-porte-voitures', 'it', 'Rimorchi porta‑auto');

            -- Level 2: remorques-bagageres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('remorques-bagageres', 'remorques-bagageres', 2, l1_id, 'Remorques bagagères')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('remorques-bagageres', 'fr', 'Remorques bagagères');
            PERFORM insert_category_translations('remorques-bagageres', 'ar', 'مقطورات حمولة');
            PERFORM insert_category_translations('remorques-bagageres', 'en', 'Cargo trailers');
            PERFORM insert_category_translations('remorques-bagageres', 'de', 'Transportanhänger');
            PERFORM insert_category_translations('remorques-bagageres', 'es', 'Remolques de carga');
            PERFORM insert_category_translations('remorques-bagageres', 'it', 'Rimorchi bagagli');

            -- Level 2: remorques-betail
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('remorques-betail', 'remorques-betail', 2, l1_id, 'Remorques bétail')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('remorques-betail', 'fr', 'Remorques bétail');
            PERFORM insert_category_translations('remorques-betail', 'ar', 'مقطورات مواشي');
            PERFORM insert_category_translations('remorques-betail', 'en', 'Livestock trailers');
            PERFORM insert_category_translations('remorques-betail', 'de', 'Viehanhänger');
            PERFORM insert_category_translations('remorques-betail', 'es', 'Remolques para ganado');
            PERFORM insert_category_translations('remorques-betail', 'it', 'Rimorchi bestiame');

            -- Level 2: remorques-frigorifiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('remorques-frigorifiques', 'remorques-frigorifiques', 2, l1_id, 'Remorques frigorifiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('remorques-frigorifiques', 'fr', 'Remorques frigorifiques');
            PERFORM insert_category_translations('remorques-frigorifiques', 'ar', 'مقطورات مبردة');
            PERFORM insert_category_translations('remorques-frigorifiques', 'en', 'Refrigerated trailers');
            PERFORM insert_category_translations('remorques-frigorifiques', 'de', 'Kühlanhänger');
            PERFORM insert_category_translations('remorques-frigorifiques', 'es', 'Remolques frigoríficos');
            PERFORM insert_category_translations('remorques-frigorifiques', 'it', 'Rimorchi frigoriferi');

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

            -- Level 2: attelages
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('attelages', 'attelages', 2, l1_id, 'Attelages')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('attelages', 'fr', 'Attelages');
            PERFORM insert_category_translations('attelages', 'ar', 'مراكيب السحب');
            PERFORM insert_category_translations('attelages', 'en', 'Tow bars & hitches');
            PERFORM insert_category_translations('attelages', 'de', 'Anhängerkupplungen');
            PERFORM insert_category_translations('attelages', 'es', 'Enganches');
            PERFORM insert_category_translations('attelages', 'it', 'Ganci traino');

            -- Level 2: barres-remorquage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('barres-remorquage', 'barres-remorquage', 2, l1_id, 'Barres de remorquage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('barres-remorquage', 'fr', 'Barres de remorquage');
            PERFORM insert_category_translations('barres-remorquage', 'ar', 'قضبان سحب');
            PERFORM insert_category_translations('barres-remorquage', 'en', 'Towing bars');
            PERFORM insert_category_translations('barres-remorquage', 'de', 'Abschleppstangen');
            PERFORM insert_category_translations('barres-remorquage', 'es', 'Barras de remolque');
            PERFORM insert_category_translations('barres-remorquage', 'it', 'Barre di traino');

            -- Level 2: porte-motos
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('porte-motos', 'porte-motos', 2, l1_id, 'Porte-motos')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('porte-motos', 'fr', 'Porte-motos');
            PERFORM insert_category_translations('porte-motos', 'ar', 'حوامل دراجات نارية');
            PERFORM insert_category_translations('porte-motos', 'en', 'Motorcycle carriers');
            PERFORM insert_category_translations('porte-motos', 'de', 'Motorradträger');
            PERFORM insert_category_translations('porte-motos', 'es', 'Porta‑motos');
            PERFORM insert_category_translations('porte-motos', 'it', 'Porta‑moto');

            -- Level 2: porte-velos
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('porte-velos', 'porte-velos', 2, l1_id, 'Porte-vélos')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('porte-velos', 'fr', 'Porte-vélos');
            PERFORM insert_category_translations('porte-velos', 'ar', 'حوامل دراجات');
            PERFORM insert_category_translations('porte-velos', 'en', 'Bike racks');
            PERFORM insert_category_translations('porte-velos', 'de', 'Fahrradträger');
            PERFORM insert_category_translations('porte-velos', 'es', 'Porta‑bicicletas');
            PERFORM insert_category_translations('porte-velos', 'it', 'Porta‑bici');

        -- Level 1: diagnostic-atelier
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('diagnostic-atelier', 'diagnostic-atelier', 1, root_id, 'Équipement de Diagnostic & Atelier')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('diagnostic-atelier', 'fr', 'Équipement de Diagnostic & Atelier');
        PERFORM insert_category_translations('diagnostic-atelier', 'ar', 'معدات التشخيص والورشة');
        PERFORM insert_category_translations('diagnostic-atelier', 'en', 'Workshop & Diagnostic Equipment');
        PERFORM insert_category_translations('diagnostic-atelier', 'de', 'Werkstatt- & Diagnostikgeräte');
        PERFORM insert_category_translations('diagnostic-atelier', 'es', 'Equipos de diagnóstico y taller');
        PERFORM insert_category_translations('diagnostic-atelier', 'it', 'Attrezzatura diagnostica & officina');

            -- Level 2: valises-diagnostic-auto
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('valises-diagnostic-auto', 'valises-diagnostic-auto', 2, l1_id, 'Valises de diagnostic auto')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('valises-diagnostic-auto', 'fr', 'Valises de diagnostic auto');
            PERFORM insert_category_translations('valises-diagnostic-auto', 'ar', 'أجهزة تشخيص السيارات');
            PERFORM insert_category_translations('valises-diagnostic-auto', 'en', 'Automotive diagnostic scanners');
            PERFORM insert_category_translations('valises-diagnostic-auto', 'de', 'Diagnosegeräte (Auto)');
            PERFORM insert_category_translations('valises-diagnostic-auto', 'es', 'Maletas de diagnóstico');
            PERFORM insert_category_translations('valises-diagnostic-auto', 'it', 'Scanner diagnostici auto');

            -- Level 2: lecteurs-obd2
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lecteurs-obd2', 'lecteurs-obd2', 2, l1_id, 'Lecteurs OBD2')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lecteurs-obd2', 'fr', 'Lecteurs OBD2');
            PERFORM insert_category_translations('lecteurs-obd2', 'ar', 'قارئات OBD2');
            PERFORM insert_category_translations('lecteurs-obd2', 'en', 'OBD2 readers');
            PERFORM insert_category_translations('lecteurs-obd2', 'de', 'OBD2‑Leser');
            PERFORM insert_category_translations('lecteurs-obd2', 'es', 'Lectores OBD2');
            PERFORM insert_category_translations('lecteurs-obd2', 'it', 'Lettori OBD2');

            -- Level 2: ponts-elevateurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ponts-elevateurs', 'ponts-elevateurs', 2, l1_id, 'Ponts élévateurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ponts-elevateurs', 'fr', 'Ponts élévateurs');
            PERFORM insert_category_translations('ponts-elevateurs', 'ar', 'جسور رفع');
            PERFORM insert_category_translations('ponts-elevateurs', 'en', 'Vehicle lifts');
            PERFORM insert_category_translations('ponts-elevateurs', 'de', 'Hebebühnen');
            PERFORM insert_category_translations('ponts-elevateurs', 'es', 'Elevadores');
            PERFORM insert_category_translations('ponts-elevateurs', 'it', 'Ponti sollevatori');

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

            -- Level 2: crics-hydrauliques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('crics-hydrauliques', 'crics-hydrauliques', 2, l1_id, 'Crics hydrauliques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('crics-hydrauliques', 'fr', 'Crics hydrauliques');
            PERFORM insert_category_translations('crics-hydrauliques', 'ar', 'رافعات هيدروليكية');
            PERFORM insert_category_translations('crics-hydrauliques', 'en', 'Hydraulic jacks');
            PERFORM insert_category_translations('crics-hydrauliques', 'de', 'Hydraulikheber');
            PERFORM insert_category_translations('crics-hydrauliques', 'es', 'Gatos hidráulicos');
            PERFORM insert_category_translations('crics-hydrauliques', 'it', 'Cric idraulici');

            -- Level 2: outils-mecaniques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('outils-mecaniques', 'outils-mecaniques', 2, l1_id, 'Outils mécaniques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('outils-mecaniques', 'fr', 'Outils mécaniques');
            PERFORM insert_category_translations('outils-mecaniques', 'ar', 'أدوات ميكانيكية');
            PERFORM insert_category_translations('outils-mecaniques', 'en', 'Mechanical tools');
            PERFORM insert_category_translations('outils-mecaniques', 'de', 'Mechanik‑Werkzeuge');
            PERFORM insert_category_translations('outils-mecaniques', 'es', 'Herramientas mecánicas');
            PERFORM insert_category_translations('outils-mecaniques', 'it', 'Utensili meccanici');

            -- Level 2: chargeurs-batterie
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chargeurs-batterie', 'chargeurs-batterie', 2, l1_id, 'Chargeurs de batterie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chargeurs-batterie', 'fr', 'Chargeurs de batterie');
            PERFORM insert_category_translations('chargeurs-batterie', 'ar', 'شواحن بطارية');
            PERFORM insert_category_translations('chargeurs-batterie', 'en', 'Battery chargers');
            PERFORM insert_category_translations('chargeurs-batterie', 'de', 'Batterieladegeräte');
            PERFORM insert_category_translations('chargeurs-batterie', 'es', 'Cargadores de batería');
            PERFORM insert_category_translations('chargeurs-batterie', 'it', 'Caricabatterie');

            -- Level 2: boosters
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('boosters', 'boosters', 2, l1_id, 'Boosters')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('boosters', 'fr', 'Boosters');
            PERFORM insert_category_translations('boosters', 'ar', 'مُعزِّزات');
            PERFORM insert_category_translations('boosters', 'en', 'Boosters');
            PERFORM insert_category_translations('boosters', 'de', 'Booster');
            PERFORM insert_category_translations('boosters', 'es', 'Boosters');
            PERFORM insert_category_translations('boosters', 'it', 'Booster');

            -- Level 2: stations-climatisation
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('stations-climatisation', 'stations-climatisation', 2, l1_id, 'Stations de climatisation')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('stations-climatisation', 'fr', 'Stations de climatisation');
            PERFORM insert_category_translations('stations-climatisation', 'ar', 'محطات تكييف');
            PERFORM insert_category_translations('stations-climatisation', 'en', 'AC service stations');
            PERFORM insert_category_translations('stations-climatisation', 'de', 'Klimaservice‑Stationen');
            PERFORM insert_category_translations('stations-climatisation', 'es', 'Estaciones de climatización');
            PERFORM insert_category_translations('stations-climatisation', 'it', 'Stazioni clima');

            -- Level 2: demonte-pneus
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('demonte-pneus', 'demonte-pneus', 2, l1_id, 'Démonte-pneus')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('demonte-pneus', 'fr', 'Démonte-pneus');
            PERFORM insert_category_translations('demonte-pneus', 'ar', 'مفككات الإطارات');
            PERFORM insert_category_translations('demonte-pneus', 'en', 'Tire changers');
            PERFORM insert_category_translations('demonte-pneus', 'de', 'Reifenmontiermaschinen');
            PERFORM insert_category_translations('demonte-pneus', 'es', 'Desmontadoras');
            PERFORM insert_category_translations('demonte-pneus', 'it', 'Smontagomme');

            -- Level 2: equilibreuses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('equilibreuses', 'equilibreuses', 2, l1_id, 'Équilibreuses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('equilibreuses', 'fr', 'Équilibreuses');
            PERFORM insert_category_translations('equilibreuses', 'ar', 'موازنات عجلات');
            PERFORM insert_category_translations('equilibreuses', 'en', 'Wheel balancers');
            PERFORM insert_category_translations('equilibreuses', 'de', 'Wuchtmaschinen');
            PERFORM insert_category_translations('equilibreuses', 'es', 'Equilibradoras');
            PERFORM insert_category_translations('equilibreuses', 'it', 'Equilibratrici');

            -- Level 2: outils-specialises-moto
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('outils-specialises-moto', 'outils-specialises-moto', 2, l1_id, 'Outils spécialisés moto')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('outils-specialises-moto', 'fr', 'Outils spécialisés moto');
            PERFORM insert_category_translations('outils-specialises-moto', 'ar', 'أدوات متخصصة للدراجات');
            PERFORM insert_category_translations('outils-specialises-moto', 'en', 'Specialized motorcycle tools');
            PERFORM insert_category_translations('outils-specialises-moto', 'de', 'Spezialisierte Motorrad‑Werkzeuge');
            PERFORM insert_category_translations('outils-specialises-moto', 'es', 'Herramientas especializadas para motos');
            PERFORM insert_category_translations('outils-specialises-moto', 'it', 'Utensili specializzati moto');

        -- Level 1: carburants-energie
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('carburants-energie', 'carburants-energie', 1, root_id, 'Carburants & Énergie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('carburants-energie', 'fr', 'Carburants & Énergie');
        PERFORM insert_category_translations('carburants-energie', 'ar', 'الوقود والطاقة');
        PERFORM insert_category_translations('carburants-energie', 'en', 'Fuel & Energy');
        PERFORM insert_category_translations('carburants-energie', 'de', 'Kraftstoffe & Energie');
        PERFORM insert_category_translations('carburants-energie', 'es', 'Combustible y energía');
        PERFORM insert_category_translations('carburants-energie', 'it', 'Carburanti & energia');

            -- Level 2: bornes-recharge
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bornes-recharge', 'bornes-recharge', 2, l1_id, 'Bornes de recharge')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bornes-recharge', 'fr', 'Bornes de recharge');
            PERFORM insert_category_translations('bornes-recharge', 'ar', 'محطات شحن');
            PERFORM insert_category_translations('bornes-recharge', 'en', 'Charging stations');
            PERFORM insert_category_translations('bornes-recharge', 'de', 'Ladestationen');
            PERFORM insert_category_translations('bornes-recharge', 'es', 'Puntos de recarga');
            PERFORM insert_category_translations('bornes-recharge', 'it', 'Colonnine di ricarica');

            -- Level 2: stations-recharge-domestiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('stations-recharge-domestiques', 'stations-recharge-domestiques', 2, l1_id, 'Stations de recharge domestiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('stations-recharge-domestiques', 'fr', 'Stations de recharge domestiques');
            PERFORM insert_category_translations('stations-recharge-domestiques', 'ar', 'شواحن منزلية');
            PERFORM insert_category_translations('stations-recharge-domestiques', 'en', 'Home chargers');
            PERFORM insert_category_translations('stations-recharge-domestiques', 'de', 'Heimladestationen');
            PERFORM insert_category_translations('stations-recharge-domestiques', 'es', 'Cargadores domésticos');
            PERFORM insert_category_translations('stations-recharge-domestiques', 'it', 'Caricatori domestici');

            -- Level 2: adaptateurs-voitures-electriques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('adaptateurs-voitures-electriques', 'adaptateurs-voitures-electriques', 2, l1_id, 'Adaptateurs pour voitures électriques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('adaptateurs-voitures-electriques', 'fr', 'Adaptateurs pour voitures électriques');
            PERFORM insert_category_translations('adaptateurs-voitures-electriques', 'ar', 'محولات للسيارات الكهربائية');
            PERFORM insert_category_translations('adaptateurs-voitures-electriques', 'en', 'EV adapters');
            PERFORM insert_category_translations('adaptateurs-voitures-electriques', 'de', 'Adapter für E‑Autos');
            PERFORM insert_category_translations('adaptateurs-voitures-electriques', 'es', 'Adaptadores para EV');
            PERFORM insert_category_translations('adaptateurs-voitures-electriques', 'it', 'Adattatori per EV');

            -- Level 2: jerricans
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jerricans', 'jerricans', 2, l1_id, 'Jerricans')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('jerricans', 'fr', 'Jerricans');
            PERFORM insert_category_translations('jerricans', 'ar', 'جالونات');
            PERFORM insert_category_translations('jerricans', 'en', 'Jerry cans');
            PERFORM insert_category_translations('jerricans', 'de', 'Kanister');
            PERFORM insert_category_translations('jerricans', 'es', 'Bidones');
            PERFORM insert_category_translations('jerricans', 'it', 'Taniche');

            -- Level 2: additifs-carburant
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('additifs-carburant', 'additifs-carburant', 2, l1_id, 'Additifs carburant')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('additifs-carburant', 'fr', 'Additifs carburant');
            PERFORM insert_category_translations('additifs-carburant', 'ar', 'مضافات الوقود');
            PERFORM insert_category_translations('additifs-carburant', 'en', 'Fuel additives');
            PERFORM insert_category_translations('additifs-carburant', 'de', 'Kraftstoff‑Additive');
            PERFORM insert_category_translations('additifs-carburant', 'es', 'Aditivos de combustible');
            PERFORM insert_category_translations('additifs-carburant', 'it', 'Additivi carburante');

        -- Level 1: services-assistance
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('services-assistance', 'services-assistance', 1, root_id, 'Services & Assistance')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('services-assistance', 'fr', 'Services & Assistance');
        PERFORM insert_category_translations('services-assistance', 'ar', 'خدمات ومساعدة');
        PERFORM insert_category_translations('services-assistance', 'en', 'Services & Assistance');
        PERFORM insert_category_translations('services-assistance', 'de', 'Services & Unterstützung');
        PERFORM insert_category_translations('services-assistance', 'es', 'Servicios y asistencia');
        PERFORM insert_category_translations('services-assistance', 'it', 'Servizi & assistenza');

            -- Level 2: reparation-auto
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('reparation-auto', 'reparation-auto', 2, l1_id, 'Réparation auto')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('reparation-auto', 'fr', 'Réparation auto');
            PERFORM insert_category_translations('reparation-auto', 'ar', 'تصليح سيارات');
            PERFORM insert_category_translations('reparation-auto', 'en', 'Car repair');
            PERFORM insert_category_translations('reparation-auto', 'de', 'Auto‑Reparatur');
            PERFORM insert_category_translations('reparation-auto', 'es', 'Reparación de coche');
            PERFORM insert_category_translations('reparation-auto', 'it', 'Riparazione auto');

            -- Level 2: reparation-moto
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('reparation-moto', 'reparation-moto', 2, l1_id, 'Réparation moto')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('reparation-moto', 'fr', 'Réparation moto');
            PERFORM insert_category_translations('reparation-moto', 'ar', 'تصليح دراجات');
            PERFORM insert_category_translations('reparation-moto', 'en', 'Motorcycle repair');
            PERFORM insert_category_translations('reparation-moto', 'de', 'Moto‑Reparatur');
            PERFORM insert_category_translations('reparation-moto', 'es', 'Reparación de moto');
            PERFORM insert_category_translations('reparation-moto', 'it', 'Riparazione moto');

            -- Level 2: entretien-vidange
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('entretien-vidange', 'entretien-vidange', 2, l1_id, 'Entretien & vidange')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('entretien-vidange', 'fr', 'Entretien & vidange');
            PERFORM insert_category_translations('entretien-vidange', 'ar', 'صيانة وتغيير زيت');
            PERFORM insert_category_translations('entretien-vidange', 'en', 'Maintenance & oil change');
            PERFORM insert_category_translations('entretien-vidange', 'de', 'Wartung & Ölwechsel');
            PERFORM insert_category_translations('entretien-vidange', 'es', 'Mantenimiento y cambio de aceite');
            PERFORM insert_category_translations('entretien-vidange', 'it', 'Manutenzione & cambio olio');

            -- Level 2: lavage-automobile
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lavage-automobile', 'lavage-automobile', 2, l1_id, 'Lavage automobile')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lavage-automobile', 'fr', 'Lavage automobile');
            PERFORM insert_category_translations('lavage-automobile', 'ar', 'غسيل سيارات');
            PERFORM insert_category_translations('lavage-automobile', 'en', 'Car wash');
            PERFORM insert_category_translations('lavage-automobile', 'de', 'Autowäsche');
            PERFORM insert_category_translations('lavage-automobile', 'es', 'Lavado de coches');
            PERFORM insert_category_translations('lavage-automobile', 'it', 'Lavaggio auto');

            -- Level 2: depannage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('depannage', 'depannage', 2, l1_id, 'Dépannage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('depannage', 'fr', 'Dépannage');
            PERFORM insert_category_translations('depannage', 'ar', 'خدمة أعطال');
            PERFORM insert_category_translations('depannage', 'en', 'Breakdown service');
            PERFORM insert_category_translations('depannage', 'de', 'Pannenhilfe');
            PERFORM insert_category_translations('depannage', 'es', 'Asistencia en carretera');
            PERFORM insert_category_translations('depannage', 'it', 'Soccorso stradale');

            -- Level 2: remorquage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('remorquage', 'remorquage', 2, l1_id, 'Remorquage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('remorquage', 'fr', 'Remorquage');
            PERFORM insert_category_translations('remorquage', 'ar', 'سحب');
            PERFORM insert_category_translations('remorquage', 'en', 'Towing');
            PERFORM insert_category_translations('remorquage', 'de', 'Abschleppen');
            PERFORM insert_category_translations('remorquage', 'es', 'Remolque');
            PERFORM insert_category_translations('remorquage', 'it', 'Traino');

            -- Level 2: reprogrammation-moteur
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('reprogrammation-moteur', 'reprogrammation-moteur', 2, l1_id, 'Reprogrammation moteur')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('reprogrammation-moteur', 'fr', 'Reprogrammation moteur');
            PERFORM insert_category_translations('reprogrammation-moteur', 'ar', 'برمجة محرك');
            PERFORM insert_category_translations('reprogrammation-moteur', 'en', 'Engine remapping');
            PERFORM insert_category_translations('reprogrammation-moteur', 'de', 'Motor‑Optimierung');
            PERFORM insert_category_translations('reprogrammation-moteur', 'es', 'Reprogramación de motor');
            PERFORM insert_category_translations('reprogrammation-moteur', 'it', 'Rimappatura motore');

            -- Level 2: installation-accessoires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('installation-accessoires', 'installation-accessoires', 2, l1_id, 'Installation accessoires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('installation-accessoires', 'fr', 'Installation accessoires');
            PERFORM insert_category_translations('installation-accessoires', 'ar', 'تركيب الإكسسوارات');
            PERFORM insert_category_translations('installation-accessoires', 'en', 'Accessory installation');
            PERFORM insert_category_translations('installation-accessoires', 'de', 'Einbau von Zubehör');
            PERFORM insert_category_translations('installation-accessoires', 'es', 'Instalación de accesorios');
            PERFORM insert_category_translations('installation-accessoires', 'it', 'Installazione accessori');

            -- Level 2: renovation-phares
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('renovation-phares', 'renovation-phares', 2, l1_id, 'Rénovation phares')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('renovation-phares', 'fr', 'Rénovation phares');
            PERFORM insert_category_translations('renovation-phares', 'ar', 'ترميم المصابيح');
            PERFORM insert_category_translations('renovation-phares', 'en', 'Headlight restoration');
            PERFORM insert_category_translations('renovation-phares', 'de', 'Scheinwerfer‑Aufbereitung');
            PERFORM insert_category_translations('renovation-phares', 'es', 'Restauración de faros');
            PERFORM insert_category_translations('renovation-phares', 'it', 'Rigenerazione fari');

            -- Level 2: remplacement-pare-brise
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('remplacement-pare-brise', 'remplacement-pare-brise', 2, l1_id, 'Remplacement pare-brise')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('remplacement-pare-brise', 'fr', 'Remplacement pare-brise');
            PERFORM insert_category_translations('remplacement-pare-brise', 'ar', 'تبديل الزجاج الأمامي');
            PERFORM insert_category_translations('remplacement-pare-brise', 'en', 'Windshield replacement');
            PERFORM insert_category_translations('remplacement-pare-brise', 'de', 'Scheibenwechsel');
            PERFORM insert_category_translations('remplacement-pare-brise', 'es', 'Cambio de parabrisas');
            PERFORM insert_category_translations('remplacement-pare-brise', 'it', 'Sostituzione parabrezza');

        -- Level 1: marques-populaires-vehicules
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('marques-populaires-vehicules', 'marques-populaires-vehicules', 1, root_id, 'Marques Populaires (SEO Boost)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('marques-populaires-vehicules', 'fr', 'Marques Populaires (SEO Boost)');
        PERFORM insert_category_translations('marques-populaires-vehicules', 'ar', 'علامات شهيرة (SEO)');
        PERFORM insert_category_translations('marques-populaires-vehicules', 'en', 'Popular Brands (SEO Boost)');
        PERFORM insert_category_translations('marques-populaires-vehicules', 'de', 'Beliebte Marken (SEO)');
        PERFORM insert_category_translations('marques-populaires-vehicules', 'es', 'Marcas populares (SEO)');
        PERFORM insert_category_translations('marques-populaires-vehicules', 'it', 'Marche popolari (SEO)');

            -- Level 2: renault
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('renault', 'renault', 2, l1_id, 'Renault')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('renault', 'fr', 'Renault');
            PERFORM insert_category_translations('renault', 'ar', 'Renault');
            PERFORM insert_category_translations('renault', 'en', 'Renault');
            PERFORM insert_category_translations('renault', 'de', 'Renault');
            PERFORM insert_category_translations('renault', 'es', 'Renault');
            PERFORM insert_category_translations('renault', 'it', 'Renault');

            -- Level 2: peugeot
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('peugeot', 'peugeot', 2, l1_id, 'Peugeot')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('peugeot', 'fr', 'Peugeot');
            PERFORM insert_category_translations('peugeot', 'ar', 'Peugeot');
            PERFORM insert_category_translations('peugeot', 'en', 'Peugeot');
            PERFORM insert_category_translations('peugeot', 'de', 'Peugeot');
            PERFORM insert_category_translations('peugeot', 'es', 'Peugeot');
            PERFORM insert_category_translations('peugeot', 'it', 'Peugeot');

            -- Level 2: citroen
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('citroen', 'citroen', 2, l1_id, 'Citroën')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('citroen', 'fr', 'Citroën');
            PERFORM insert_category_translations('citroen', 'ar', 'Citroën');
            PERFORM insert_category_translations('citroen', 'en', 'Citroën');
            PERFORM insert_category_translations('citroen', 'de', 'Citroën');
            PERFORM insert_category_translations('citroen', 'es', 'Citroën');
            PERFORM insert_category_translations('citroen', 'it', 'Citroën');

            -- Level 2: dacia
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('dacia', 'dacia', 2, l1_id, 'Dacia')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('dacia', 'fr', 'Dacia');
            PERFORM insert_category_translations('dacia', 'ar', 'Dacia');
            PERFORM insert_category_translations('dacia', 'en', 'Dacia');
            PERFORM insert_category_translations('dacia', 'de', 'Dacia');
            PERFORM insert_category_translations('dacia', 'es', 'Dacia');
            PERFORM insert_category_translations('dacia', 'it', 'Dacia');

            -- Level 2: volkswagen
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('volkswagen', 'volkswagen', 2, l1_id, 'Volkswagen')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('volkswagen', 'fr', 'Volkswagen');
            PERFORM insert_category_translations('volkswagen', 'ar', 'Volkswagen');
            PERFORM insert_category_translations('volkswagen', 'en', 'Volkswagen');
            PERFORM insert_category_translations('volkswagen', 'de', 'Volkswagen');
            PERFORM insert_category_translations('volkswagen', 'es', 'Volkswagen');
            PERFORM insert_category_translations('volkswagen', 'it', 'Volkswagen');

            -- Level 2: audi
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('audi', 'audi', 2, l1_id, 'Audi')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('audi', 'fr', 'Audi');
            PERFORM insert_category_translations('audi', 'ar', 'Audi');
            PERFORM insert_category_translations('audi', 'en', 'Audi');
            PERFORM insert_category_translations('audi', 'de', 'Audi');
            PERFORM insert_category_translations('audi', 'es', 'Audi');
            PERFORM insert_category_translations('audi', 'it', 'Audi');

            -- Level 2: bmw
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bmw', 'bmw', 2, l1_id, 'BMW')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bmw', 'fr', 'BMW');
            PERFORM insert_category_translations('bmw', 'ar', 'BMW');
            PERFORM insert_category_translations('bmw', 'en', 'BMW');
            PERFORM insert_category_translations('bmw', 'de', 'BMW');
            PERFORM insert_category_translations('bmw', 'es', 'BMW');
            PERFORM insert_category_translations('bmw', 'it', 'BMW');

            -- Level 2: mercedes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mercedes', 'mercedes', 2, l1_id, 'Mercedes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mercedes', 'fr', 'Mercedes');
            PERFORM insert_category_translations('mercedes', 'ar', 'Mercedes');
            PERFORM insert_category_translations('mercedes', 'en', 'Mercedes');
            PERFORM insert_category_translations('mercedes', 'de', 'Mercedes');
            PERFORM insert_category_translations('mercedes', 'es', 'Mercedes');
            PERFORM insert_category_translations('mercedes', 'it', 'Mercedes');

            -- Level 2: toyota
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('toyota', 'toyota', 2, l1_id, 'Toyota')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('toyota', 'fr', 'Toyota');
            PERFORM insert_category_translations('toyota', 'ar', 'Toyota');
            PERFORM insert_category_translations('toyota', 'en', 'Toyota');
            PERFORM insert_category_translations('toyota', 'de', 'Toyota');
            PERFORM insert_category_translations('toyota', 'es', 'Toyota');
            PERFORM insert_category_translations('toyota', 'it', 'Toyota');

            -- Level 2: kia
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('kia', 'kia', 2, l1_id, 'Kia')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('kia', 'fr', 'Kia');
            PERFORM insert_category_translations('kia', 'ar', 'Kia');
            PERFORM insert_category_translations('kia', 'en', 'Kia');
            PERFORM insert_category_translations('kia', 'de', 'Kia');
            PERFORM insert_category_translations('kia', 'es', 'Kia');
            PERFORM insert_category_translations('kia', 'it', 'Kia');

            -- Level 2: hyundai
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('hyundai', 'hyundai', 2, l1_id, 'Hyundai')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('hyundai', 'fr', 'Hyundai');
            PERFORM insert_category_translations('hyundai', 'ar', 'Hyundai');
            PERFORM insert_category_translations('hyundai', 'en', 'Hyundai');
            PERFORM insert_category_translations('hyundai', 'de', 'Hyundai');
            PERFORM insert_category_translations('hyundai', 'es', 'Hyundai');
            PERFORM insert_category_translations('hyundai', 'it', 'Hyundai');

            -- Level 2: ford
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ford', 'ford', 2, l1_id, 'Ford')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ford', 'fr', 'Ford');
            PERFORM insert_category_translations('ford', 'ar', 'Ford');
            PERFORM insert_category_translations('ford', 'en', 'Ford');
            PERFORM insert_category_translations('ford', 'de', 'Ford');
            PERFORM insert_category_translations('ford', 'es', 'Ford');
            PERFORM insert_category_translations('ford', 'it', 'Ford');

            -- Level 2: nissan
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('nissan', 'nissan', 2, l1_id, 'Nissan')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('nissan', 'fr', 'Nissan');
            PERFORM insert_category_translations('nissan', 'ar', 'Nissan');
            PERFORM insert_category_translations('nissan', 'en', 'Nissan');
            PERFORM insert_category_translations('nissan', 'de', 'Nissan');
            PERFORM insert_category_translations('nissan', 'es', 'Nissan');
            PERFORM insert_category_translations('nissan', 'it', 'Nissan');

            -- Level 2: fiat
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fiat', 'fiat', 2, l1_id, 'Fiat')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fiat', 'fr', 'Fiat');
            PERFORM insert_category_translations('fiat', 'ar', 'Fiat');
            PERFORM insert_category_translations('fiat', 'en', 'Fiat');
            PERFORM insert_category_translations('fiat', 'de', 'Fiat');
            PERFORM insert_category_translations('fiat', 'es', 'Fiat');
            PERFORM insert_category_translations('fiat', 'it', 'Fiat');

            -- Level 2: honda
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('honda', 'honda', 2, l1_id, 'Honda')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('honda', 'fr', 'Honda');
            PERFORM insert_category_translations('honda', 'ar', 'Honda');
            PERFORM insert_category_translations('honda', 'en', 'Honda');
            PERFORM insert_category_translations('honda', 'de', 'Honda');
            PERFORM insert_category_translations('honda', 'es', 'Honda');
            PERFORM insert_category_translations('honda', 'it', 'Honda');

            -- Level 2: yamaha
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('yamaha', 'yamaha', 2, l1_id, 'Yamaha')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('yamaha', 'fr', 'Yamaha');
            PERFORM insert_category_translations('yamaha', 'ar', 'Yamaha');
            PERFORM insert_category_translations('yamaha', 'en', 'Yamaha');
            PERFORM insert_category_translations('yamaha', 'de', 'Yamaha');
            PERFORM insert_category_translations('yamaha', 'es', 'Yamaha');
            PERFORM insert_category_translations('yamaha', 'it', 'Yamaha');

            -- Level 2: suzuki
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('suzuki', 'suzuki', 2, l1_id, 'Suzuki')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('suzuki', 'fr', 'Suzuki');
            PERFORM insert_category_translations('suzuki', 'ar', 'Suzuki');
            PERFORM insert_category_translations('suzuki', 'en', 'Suzuki');
            PERFORM insert_category_translations('suzuki', 'de', 'Suzuki');
            PERFORM insert_category_translations('suzuki', 'es', 'Suzuki');
            PERFORM insert_category_translations('suzuki', 'it', 'Suzuki');

            -- Level 2: piaggio
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('piaggio', 'piaggio', 2, l1_id, 'Piaggio')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('piaggio', 'fr', 'Piaggio');
            PERFORM insert_category_translations('piaggio', 'ar', 'Piaggio');
            PERFORM insert_category_translations('piaggio', 'en', 'Piaggio');
            PERFORM insert_category_translations('piaggio', 'de', 'Piaggio');
            PERFORM insert_category_translations('piaggio', 'es', 'Piaggio');
            PERFORM insert_category_translations('piaggio', 'it', 'Piaggio');

            -- Level 2: ducati
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ducati', 'ducati', 2, l1_id, 'Ducati')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ducati', 'fr', 'Ducati');
            PERFORM insert_category_translations('ducati', 'ar', 'Ducati');
            PERFORM insert_category_translations('ducati', 'en', 'Ducati');
            PERFORM insert_category_translations('ducati', 'de', 'Ducati');
            PERFORM insert_category_translations('ducati', 'es', 'Ducati');
            PERFORM insert_category_translations('ducati', 'it', 'Ducati');

            -- Level 2: ktm
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ktm', 'ktm', 2, l1_id, 'KTM')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ktm', 'fr', 'KTM');
            PERFORM insert_category_translations('ktm', 'ar', 'KTM');
            PERFORM insert_category_translations('ktm', 'en', 'KTM');
            PERFORM insert_category_translations('ktm', 'de', 'KTM');
            PERFORM insert_category_translations('ktm', 'es', 'KTM');
            PERFORM insert_category_translations('ktm', 'it', 'KTM');

            -- Level 2: scania
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('scania', 'scania', 2, l1_id, 'Scania')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('scania', 'fr', 'Scania');
            PERFORM insert_category_translations('scania', 'ar', 'Scania');
            PERFORM insert_category_translations('scania', 'en', 'Scania');
            PERFORM insert_category_translations('scania', 'de', 'Scania');
            PERFORM insert_category_translations('scania', 'es', 'Scania');
            PERFORM insert_category_translations('scania', 'it', 'Scania');

            -- Level 2: volvo-trucks
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('volvo-trucks', 'volvo-trucks', 2, l1_id, 'Volvo Trucks')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('volvo-trucks', 'fr', 'Volvo Trucks');
            PERFORM insert_category_translations('volvo-trucks', 'ar', 'Volvo Trucks');
            PERFORM insert_category_translations('volvo-trucks', 'en', 'Volvo Trucks');
            PERFORM insert_category_translations('volvo-trucks', 'de', 'Volvo Trucks');
            PERFORM insert_category_translations('volvo-trucks', 'es', 'Volvo Trucks');
            PERFORM insert_category_translations('volvo-trucks', 'it', 'Volvo Trucks');

            -- Level 2: man
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('man', 'man', 2, l1_id, 'MAN')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('man', 'fr', 'MAN');
            PERFORM insert_category_translations('man', 'ar', 'MAN');
            PERFORM insert_category_translations('man', 'en', 'MAN');
            PERFORM insert_category_translations('man', 'de', 'MAN');
            PERFORM insert_category_translations('man', 'es', 'MAN');
            PERFORM insert_category_translations('man', 'it', 'MAN');

            -- Level 2: iveco
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('iveco', 'iveco', 2, l1_id, 'Iveco')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('iveco', 'fr', 'Iveco');
            PERFORM insert_category_translations('iveco', 'ar', 'Iveco');
            PERFORM insert_category_translations('iveco', 'en', 'Iveco');
            PERFORM insert_category_translations('iveco', 'de', 'Iveco');
            PERFORM insert_category_translations('iveco', 'es', 'Iveco');
            PERFORM insert_category_translations('iveco', 'it', 'Iveco');
END $$;