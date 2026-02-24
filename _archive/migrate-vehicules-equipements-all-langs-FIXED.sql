-- Migration: Véhicules, Camions, Motos & Équipements (Fixed - 100% Complete)
-- Utilisation d'un bloc DO pour une gestion robuste des IDs et compatibilité BIGINT
-- Structure basée sur les fichiers TSX megaMenuStructures (fr, en, ar, es, de, it)
-- Ajout de la colonne 'name' pour respecter la contrainte NOT NULL de la table categories

DO $$
DECLARE
    root_id BIGINT;
    l1_voitures_id BIGINT;
    l1_camions_id BIGINT;
    l1_motos_id BIGINT;
    l1_velos_id BIGINT;
    l1_equip_auto_id BIGINT;
    l1_equip_moto_id BIGINT;
    l1_remorques_id BIGINT;
    l1_diag_id BIGINT;
    l1_carbu_id BIGINT;
    l1_services_id BIGINT;
    l1_marques_id BIGINT;
BEGIN
    -- 1. Catégorie Racine
    INSERT INTO public.categories (slug, name, icon, parent_id, level, sort_order, is_active)
    VALUES ('vehicules-equipements', 'Véhicules, Camions, Motos & Équipements', 'Car', NULL, 0, 0, true)
    ON CONFLICT (slug) DO UPDATE SET 
        name = EXCLUDED.name,
        icon = EXCLUDED.icon, 
        level = EXCLUDED.level
    RETURNING id INTO root_id;

    IF root_id IS NULL THEN
        SELECT id INTO root_id FROM public.categories WHERE slug = 'vehicules-equipements';
    END IF;

    -- Traductions Racine
    INSERT INTO public.category_translations (category_id, language_code, name)
    VALUES
        (root_id, 'fr', 'Véhicules, Camions, Motos & Équipements'),
        (root_id, 'en', 'Vehicles, Trucks, Motorcycles & Equipment'),
        (root_id, 'ar', 'المركبات، الشاحنات، الدراجات النارية والمعدات'),
        (root_id, 'es', 'Vehículos, Camiones, Motos y Equipos'),
        (root_id, 'de', 'Fahrzeuge, Lkw, Motorräder & Ausrüstung'),
        (root_id, 'it', 'Veicoli, Camion, Moto & Attrezzature')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

    -- 2. Sous-catégories Niveau 1

    -- Voitures
    INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
    VALUES ('voitures-vehicules-legers', 'Voitures & Véhicules Légers', root_id, 1, 1, true)
    ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name, parent_id = EXCLUDED.parent_id
    RETURNING id INTO l1_voitures_id;

    IF l1_voitures_id IS NULL THEN SELECT id INTO l1_voitures_id FROM public.categories WHERE slug = 'voitures-vehicules-legers'; END IF;

    INSERT INTO public.category_translations (category_id, language_code, name) VALUES
        (l1_voitures_id, 'fr', 'Voitures & Véhicules Légers'),
        (l1_voitures_id, 'en', 'Cars & Light Vehicles'),
        (l1_voitures_id, 'ar', 'سيارات ومركبات خفيفة'),
        (l1_voitures_id, 'es', 'Coches y vehículos ligeros'),
        (l1_voitures_id, 'de', 'Autos & Leichtfahrzeuge'),
        (l1_voitures_id, 'it', 'Auto & veicoli leggeri')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

    -- Camions
    INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
    VALUES ('camions-vehicules-professionnels', 'Camions & Véhicules Professionnels', root_id, 1, 2, true)
    ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name, parent_id = EXCLUDED.parent_id
    RETURNING id INTO l1_camions_id;

    IF l1_camions_id IS NULL THEN SELECT id INTO l1_camions_id FROM public.categories WHERE slug = 'camions-vehicules-professionnels'; END IF;

    INSERT INTO public.category_translations (category_id, language_code, name) VALUES
        (l1_camions_id, 'fr', 'Camions & Véhicules Professionnels'),
        (l1_camions_id, 'en', 'Trucks & Commercial Vehicles'),
        (l1_camions_id, 'ar', 'شاحنات ومركبات مهنية'),
        (l1_camions_id, 'es', 'Camiones y vehículos profesionales'),
        (l1_camions_id, 'de', 'Lkw & Nutzfahrzeuge'),
        (l1_camions_id, 'it', 'Camion & veicoli professionali')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

    -- Motos
    INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
    VALUES ('motos-cyclomoteurs', 'Motos & Cyclomoteurs', root_id, 1, 3, true)
    ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name, parent_id = EXCLUDED.parent_id
    RETURNING id INTO l1_motos_id;

    IF l1_motos_id IS NULL THEN SELECT id INTO l1_motos_id FROM public.categories WHERE slug = 'motos-cyclomoteurs'; END IF;

    INSERT INTO public.category_translations (category_id, language_code, name) VALUES
        (l1_motos_id, 'fr', 'Motos & Cyclomoteurs'),
        (l1_motos_id, 'en', 'Motorcycles & Mopeds'),
        (l1_motos_id, 'ar', 'دراجات نارية ودراجات آلية'),
        (l1_motos_id, 'es', 'Motos y ciclomotores'),
        (l1_motos_id, 'de', 'Motorräder & Mofas'),
        (l1_motos_id, 'it', 'Moto & ciclomotori')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

    -- Vélos Motorisés
    INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
    VALUES ('velos-motorises-mobilite', 'Vélos Motorisés & Mobilité', root_id, 1, 4, true)
    ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name, parent_id = EXCLUDED.parent_id
    RETURNING id INTO l1_velos_id;

    IF l1_velos_id IS NULL THEN SELECT id INTO l1_velos_id FROM public.categories WHERE slug = 'velos-motorises-mobilite'; END IF;

    INSERT INTO public.category_translations (category_id, language_code, name) VALUES
        (l1_velos_id, 'fr', 'Vélos Motorisés & Mobilité'),
        (l1_velos_id, 'en', 'Powered Bicycles & Mobility'),
        (l1_velos_id, 'ar', 'دراجات كهربائية والتنقل'),
        (l1_velos_id, 'es', 'Bicicletas motorizadas y movilidad'),
        (l1_velos_id, 'de', 'Motorisierte Fahrräder & Mobilität'),
        (l1_velos_id, 'it', 'Biciclette motorizzate & mobilità')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

    -- Équipement Auto
    INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
    VALUES ('equipements-accessoires-auto', 'Équipement & Accessoires Auto', root_id, 1, 5, true)
    ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name, parent_id = EXCLUDED.parent_id
    RETURNING id INTO l1_equip_auto_id;

    IF l1_equip_auto_id IS NULL THEN SELECT id INTO l1_equip_auto_id FROM public.categories WHERE slug = 'equipements-accessoires-auto'; END IF;

    INSERT INTO public.category_translations (category_id, language_code, name) VALUES
        (l1_equip_auto_id, 'fr', 'Équipement & Accessoires Auto'),
        (l1_equip_auto_id, 'en', 'Car Equipment & Accessories'),
        (l1_equip_auto_id, 'ar', 'معدات وإكسسوارات السيارات'),
        (l1_equip_auto_id, 'es', 'Equipamiento y accesorios de coche'),
        (l1_equip_auto_id, 'de', 'Autozubehör & Ausrüstung'),
        (l1_equip_auto_id, 'it', 'Equipaggiamento & accessori auto')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

    -- Équipement Moto
    INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
    VALUES ('pieces-accessoires-moto', 'Pièces & Accessoires Moto', root_id, 1, 6, true)
    ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name, parent_id = EXCLUDED.parent_id
    RETURNING id INTO l1_equip_moto_id;

    IF l1_equip_moto_id IS NULL THEN SELECT id INTO l1_equip_moto_id FROM public.categories WHERE slug = 'pieces-accessoires-moto'; END IF;

    INSERT INTO public.category_translations (category_id, language_code, name) VALUES
        (l1_equip_moto_id, 'fr', 'Pièces & Accessoires Moto'),
        (l1_equip_moto_id, 'en', 'Motorcycle Parts & Accessories'),
        (l1_equip_moto_id, 'ar', 'قطع وإكسسوارات الدراجات النارية'),
        (l1_equip_moto_id, 'es', 'Piezas y accesorios de moto'),
        (l1_equip_moto_id, 'de', 'Motorradteile & Zubehör'),
        (l1_equip_moto_id, 'it', 'Ricambi & accessori moto')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

    -- Remorques
    INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
    VALUES ('remorques-attelages', 'Remorques & Attelages', root_id, 1, 7, true)
    ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name, parent_id = EXCLUDED.parent_id
    RETURNING id INTO l1_remorques_id;

    IF l1_remorques_id IS NULL THEN SELECT id INTO l1_remorques_id FROM public.categories WHERE slug = 'remorques-attelages'; END IF;

    INSERT INTO public.category_translations (category_id, language_code, name) VALUES
        (l1_remorques_id, 'fr', 'Remorques & Attelages'),
        (l1_remorques_id, 'en', 'Trailers & Towing'),
        (l1_remorques_id, 'ar', 'مقطورات ووسائل السحب'),
        (l1_remorques_id, 'es', 'Remolques y enganches'),
        (l1_remorques_id, 'de', 'Anhänger & Anhängerkupplungen'),
        (l1_remorques_id, 'it', 'Rimorchi & traino')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

    -- Diagnostic
    INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
    VALUES ('diagnostic-atelier', 'Équipement de Diagnostic & Atelier', root_id, 1, 8, true)
    ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name, parent_id = EXCLUDED.parent_id
    RETURNING id INTO l1_diag_id;

    IF l1_diag_id IS NULL THEN SELECT id INTO l1_diag_id FROM public.categories WHERE slug = 'diagnostic-atelier'; END IF;

    INSERT INTO public.category_translations (category_id, language_code, name) VALUES
        (l1_diag_id, 'fr', 'Équipement de Diagnostic & Atelier'),
        (l1_diag_id, 'en', 'Workshop & Diagnostic Equipment'),
        (l1_diag_id, 'ar', 'معدات التشخيص والورشة'),
        (l1_diag_id, 'es', 'Equipos de diagnóstico y taller'),
        (l1_diag_id, 'de', 'Werkstatt- & Diagnostikgeräte'),
        (l1_diag_id, 'it', 'Attrezzatura diagnostica & officina')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

    -- Carburants
    INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
    VALUES ('carburants-energie', 'Carburants & Énergie', root_id, 1, 9, true)
    ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name, parent_id = EXCLUDED.parent_id
    RETURNING id INTO l1_carbu_id;

    IF l1_carbu_id IS NULL THEN SELECT id INTO l1_carbu_id FROM public.categories WHERE slug = 'carburants-energie'; END IF;

    INSERT INTO public.category_translations (category_id, language_code, name) VALUES
        (l1_carbu_id, 'fr', 'Carburants & Énergie'),
        (l1_carbu_id, 'en', 'Fuel & Energy'),
        (l1_carbu_id, 'ar', 'الوقود والطاقة'),
        (l1_carbu_id, 'es', 'Combustible y energía'),
        (l1_carbu_id, 'de', 'Kraftstoffe & Energie'),
        (l1_carbu_id, 'it', 'Carburanti & energia')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

    -- Services
    INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
    VALUES ('services-assistance', 'Services & Assistance', root_id, 1, 10, true)
    ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name, parent_id = EXCLUDED.parent_id
    RETURNING id INTO l1_services_id;

    IF l1_services_id IS NULL THEN SELECT id INTO l1_services_id FROM public.categories WHERE slug = 'services-assistance'; END IF;

    INSERT INTO public.category_translations (category_id, language_code, name) VALUES
        (l1_services_id, 'fr', 'Services & Assistance'),
        (l1_services_id, 'en', 'Services & Assistance'),
        (l1_services_id, 'ar', 'خدمات ومساعدة'),
        (l1_services_id, 'es', 'Servicios y asistencia'),
        (l1_services_id, 'de', 'Services & Unterstützung'),
        (l1_services_id, 'it', 'Servizi & assistenza')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

    -- Marques
    INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
    VALUES ('marques-populaires-vehicules', 'Marques Populaires (SEO Boost)', root_id, 1, 11, true)
    ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name, parent_id = EXCLUDED.parent_id
    RETURNING id INTO l1_marques_id;

    IF l1_marques_id IS NULL THEN SELECT id INTO l1_marques_id FROM public.categories WHERE slug = 'marques-populaires-vehicules'; END IF;

    INSERT INTO public.category_translations (category_id, language_code, name) VALUES
        (l1_marques_id, 'fr', 'Marques Populaires (SEO Boost)'),
        (l1_marques_id, 'en', 'Popular Brands (SEO Boost)'),
        (l1_marques_id, 'ar', 'العلامات التجارية الشهيرة'),
        (l1_marques_id, 'es', 'Marcas populares (SEO)'),
        (l1_marques_id, 'de', 'Beliebte Marken (SEO)'),
        (l1_marques_id, 'it', 'Marche popolari (SEO)')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;


    -- 3. Sous-catégories Niveau 2 (Insertions en masse par parent)

    -- 3.1 Pour Voitures (l1_voitures_id)
    INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
    SELECT v.slug, v.name, l1_voitures_id, 2, v.sort_order, true
    FROM (VALUES
        ('voitures-citadines', 'Voitures citadines', 1), ('berlines', 'Berlines', 2), ('compactes', 'Compactes', 3), ('suv', 'SUV', 4), ('crossovers', 'Crossovers', 5),
        ('4x4', '4x4', 6), ('coupes', 'Coupés', 7), ('cabriolets', 'Cabriolets', 8), ('breaks', 'Breaks', 9), ('voitures-familiales', 'Voitures familiales', 10),
        ('vehicules-utilitaires-legers', 'Véhicules utilitaires légers', 11), ('vans', 'Vans', 12), ('voitures-hybrides', 'Voitures hybrides', 13), ('voitures-electriques', 'Voitures électriques', 14),
        ('voitures-sportives', 'Voitures sportives', 15), ('voitures-anciennes-collection', 'Voitures anciennes & de collection', 16), ('voitures-reconditionnees', 'Voitures reconditionnées', 17)
    ) AS v(slug, name, sort_order)
    ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name;

    -- Traductions Voitures (FR, AR, EN, ES, DE, IT)
    INSERT INTO public.category_translations (category_id, language_code, name)
    SELECT c.id, v.lang, v.name
    FROM public.categories c
    JOIN (VALUES
        -- FR
        ('voitures-citadines','fr','Voitures citadines'), ('berlines','fr','Berlines'), ('compactes','fr','Compactes'), ('suv','fr','SUV'), ('crossovers','fr','Crossovers'),
        ('4x4','fr','4x4'), ('coupes','fr','Coupés'), ('cabriolets','fr','Cabriolets'), ('breaks','fr','Breaks'), ('voitures-familiales','fr','Voitures familiales'),
        ('vehicules-utilitaires-legers','fr','Véhicules utilitaires légers'), ('vans','fr','Vans'), ('voitures-hybrides','fr','Voitures hybrides'), ('voitures-electriques','fr','Voitures électriques'),
        ('voitures-sportives','fr','Voitures sportives'), ('voitures-anciennes-collection','fr','Voitures anciennes & de collection'), ('voitures-reconditionnees','fr','Voitures reconditionnées'),
        -- AR
        ('voitures-citadines','ar','سيارات مدينة'), ('berlines','ar','سيدان'), ('compactes','ar','مضغوطة'), ('suv','ar','SUV'), ('crossovers','ar','كروس أوفر'),
        ('4x4','ar','دفع رباعي 4x4'), ('coupes','ar','كوبيه'), ('cabriolets','ar','مكشوفة'), ('breaks','ar','ستيشن واغن'), ('voitures-familiales','ar','سيارات عائلية'),
        ('vehicules-utilitaires-legers','ar','مركبات تجارية خفيفة'), ('vans','ar','فانات'), ('voitures-hybrides','ar','سيارات هجينة'), ('voitures-electriques','ar','سيارات كهربائية'),
        ('voitures-sportives','ar','سيارات رياضية'), ('voitures-anciennes-collection','ar','سيارات كلاسيكية ومجمعة'), ('voitures-reconditionnees','ar','سيارات مجددة'),
        -- EN
        ('voitures-citadines','en','City cars'), ('berlines','en','Sedans'), ('compactes','en','Compacts'), ('suv','en','SUV'), ('crossovers','en','Crossovers'),
        ('4x4','en','4x4'), ('coupes','en','Coupés'), ('cabriolets','en','Convertibles'), ('breaks','en','Station wagons'), ('voitures-familiales','en','Family cars'),
        ('vehicules-utilitaires-legers','en','Light commercial vehicles'), ('vans','en','Vans'), ('voitures-hybrides','en','Hybrid cars'), ('voitures-electriques','en','Electric cars'),
        ('voitures-sportives','en','Sports cars'), ('voitures-anciennes-collection','en','Classic & collector cars'), ('voitures-reconditionnees','en','Refurbished cars'),
        -- ES
        ('voitures-citadines','es','Coches urbanos'), ('berlines','es','Berlina'), ('compactes','es','Compactos'), ('suv','es','SUV'), ('crossovers','es','Crossover'),
        ('4x4','es','4x4'), ('coupes','es','Coupés'), ('cabriolets','es','Descapotables'), ('breaks','es','Familiares'), ('voitures-familiales','es','Coches familiares'),
        ('vehicules-utilitaires-legers','es','Vehículos comerciales ligeros'), ('vans','es','Furgonetas'), ('voitures-hybrides','es','Coches híbridos'), ('voitures-electriques','es','Coches eléctricos'),
        ('voitures-sportives','es','Coches deportivos'), ('voitures-anciennes-collection','es','Clásicos y de colección'), ('voitures-reconditionnees','es','Coches reacondicionados'),
        -- DE
        ('voitures-citadines','de','Stadtwagen'), ('berlines','de','Limousinen'), ('compactes','de','Kompaktwagen'), ('suv','de','SUV'), ('crossovers','de','Crossover'),
        ('4x4','de','4x4'), ('coupes','de','Coupés'), ('cabriolets','de','Cabriolets'), ('breaks','de','Kombis'), ('voitures-familiales','de','Familienautos'),
        ('vehicules-utilitaires-legers','de','Leichte Nutzfahrzeuge'), ('vans','de','Vans'), ('voitures-hybrides','de','Hybridautos'), ('voitures-electriques','de','Elektroautos'),
        ('voitures-sportives','de','Sportwagen'), ('voitures-anciennes-collection','de','Oldtimer & Sammlerfahrzeuge'), ('voitures-reconditionnees','de','Generalüberholte Fahrzeuge'),
        -- IT
        ('voitures-citadines','it','City car'), ('berlines','it','Berlina'), ('compactes','it','Compatte'), ('suv','it','SUV'), ('crossovers','it','Crossover'),
        ('4x4','it','4x4'), ('coupes','it','Coupé'), ('cabriolets','it','Cabrio'), ('breaks','it','Station wagon'), ('voitures-familiales','it','Auto familiari'),
        ('vehicules-utilitaires-legers','it','Veicoli commerciali leggeri'), ('vans','it','Van'), ('voitures-hybrides','it','Auto ibride'), ('voitures-electriques','it','Auto elettriche'),
        ('voitures-sportives','it','Auto sportive'), ('voitures-anciennes-collection','it','Auto d’epoca & da collezione'), ('voitures-reconditionnees','it','Auto ricondizionate')
    ) AS v(slug, lang, name) ON c.slug = v.slug
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;


    -- 3.2 Pour Camions (l1_camions_id)
    INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
    SELECT v.slug, v.name, l1_camions_id, 2, v.sort_order, true
    FROM (VALUES
        ('camions-legers', 'Camions légers', 1), ('poids-lourds', 'Poids lourds', 2), ('semi-remorques', 'Semi-remorques', 3), ('tracteurs-routiers', 'Tracteurs routiers', 4),
        ('camions-bennes', 'Camions-bennes', 5), ('camions-frigorifiques', 'Camions frigorifiques', 6), ('camions-plateaux', 'Camions plateaux', 7), ('fourgons-professionnels', 'Fourgons professionnels', 8),
        ('fourgonnettes', 'Fourgonnettes', 9), ('minibus', 'Minibus', 10), ('bus', 'Bus', 11), ('vehicules-de-chantier', 'Véhicules de chantier', 12),
        ('depanneuses', 'Dépanneuses', 13), ('vehicules-toles', 'Véhicules tôlés', 14)
    ) AS v(slug, name, sort_order)
    ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name;

    -- Traductions Camions
    INSERT INTO public.category_translations (category_id, language_code, name)
    SELECT c.id, v.lang, v.name
    FROM public.categories c
    JOIN (VALUES
        -- FR
        ('camions-legers','fr','Camions légers'), ('poids-lourds','fr','Poids lourds'), ('semi-remorques','fr','Semi-remorques'),
        ('tracteurs-routiers','fr','Tracteurs routiers'), ('camions-bennes','fr','Camions-bennes'), ('camions-frigorifiques','fr','Camions frigorifiques'),
        ('camions-plateaux','fr','Camions plateaux'), ('fourgons-professionnels','fr','Fourgons professionnels'), ('fourgonnettes','fr','Fourgonnettes'),
        ('minibus','fr','Minibus'), ('bus','fr','Bus'), ('vehicules-de-chantier','fr','Véhicules de chantier'),
        ('depanneuses','fr','Dépanneuses'), ('vehicules-toles','fr','Véhicules tôlés'),
        -- AR
        ('camions-legers','ar','شاحنات خفيفة'), ('poids-lourds','ar','شاحنات ثقيلة'), ('semi-remorques','ar','شبه مقطورات'),
        ('tracteurs-routiers','ar','شاحنات سحب'), ('camions-bennes','ar','شاحنات قلابة'), ('camions-frigorifiques','ar','شاحنات مبردة'),
        ('camions-plateaux','ar','شاحنات منصة'), ('fourgons-professionnels','ar','شاحنات صغيرة مهنية'), ('fourgonnettes','ar','شاحنات صغيرة'),
        ('minibus','ar','حافلات صغيرة'), ('bus','ar','حافلات'), ('vehicules-de-chantier','ar','مركبات موقع العمل'),
        ('depanneuses','ar','سيارات إنقاذ'), ('vehicules-toles','ar','مركبات مغلقة'),
        -- EN
        ('camions-legers','en','Light trucks'), ('poids-lourds','en','Heavy trucks'), ('semi-remorques','en','Semi-trailers'),
        ('tracteurs-routiers','en','Road tractors'), ('camions-bennes','en','Dump trucks'), ('camions-frigorifiques','en','Refrigerated trucks'),
        ('camions-plateaux','en','Flatbed trucks'), ('fourgons-professionnels','en','Professional vans'), ('fourgonnettes','en','Small vans'),
        ('minibus','en','Minibuses'), ('bus','en','Buses'), ('vehicules-de-chantier','en','Construction vehicles'),
        ('depanneuses','en','Tow trucks'), ('vehicules-toles','en','Panel vans'),
        -- ES
        ('camions-legers','es','Camiones ligeros'), ('poids-lourds','es','Camiones pesados'), ('semi-remorques','es','Semirremolques'),
        ('tracteurs-routiers','es','Tractores de carretera'), ('camions-bennes','es','Camiones volquete'), ('camions-frigorifiques','es','Camiones frigoríficos'),
        ('camions-plateaux','es','Camiones plataforma'), ('fourgons-professionnels','es','Furgones profesionales'), ('fourgonnettes','es','Furgonetas pequeñas'),
        ('minibus','es','Microbuses'), ('bus','es','Autobuses'), ('vehicules-de-chantier','es','Vehículos de obra'),
        ('depanneuses','es','Grúas'), ('vehicules-toles','es','Vehículos panelados'),
        -- DE
        ('camions-legers','de','Leichte Lkw'), ('poids-lourds','de','Schwerlaster'), ('semi-remorques','de','Sattelauflieger'),
        ('tracteurs-routiers','de','Zugmaschinen'), ('camions-bennes','de','Kipp-Lkw'), ('camions-frigorifiques','de','Kühl-Lkw'),
        ('camions-plateaux','de','Plateau-Lkw'), ('fourgons-professionnels','de','Profi-Kastenwagen'), ('fourgonnettes','de','Kleintransporter'),
        ('minibus','de','Minibusse'), ('bus','de','Busse'), ('vehicules-de-chantier','de','Baustellenfahrzeuge'),
        ('depanneuses','de','Abschleppwagen'), ('vehicules-toles','de','Kastenwagen'),
        -- IT
        ('camions-legers','it','Camion leggeri'), ('poids-lourds','it','Mezzi pesanti'), ('semi-remorques','it','Semirimorchi'),
        ('tracteurs-routiers','it','Trattori stradali'), ('camions-bennes','it','Camion con cassone ribaltabile'), ('camions-frigorifiques','it','Camion frigoriferi'),
        ('camions-plateaux','it','Camion con pianale'), ('fourgons-professionnels','it','Furgoni professionali'), ('fourgonnettes','it','Furgoncini'),
        ('minibus','it','Minibus'), ('bus','it','Autobus'), ('vehicules-de-chantier','it','Veicoli da cantiere'),
        ('depanneuses','it','Carri attrezzi'), ('vehicules-toles','it','Veicoli furgonati')
    ) AS v(slug, lang, name) ON c.slug = v.slug
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;


    -- 3.3 Pour Motos (l1_motos_id)
    INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
    SELECT v.slug, v.name, l1_motos_id, 2, v.sort_order, true
    FROM (VALUES
        ('motos-sportives', 'Motos sportives', 1), ('motos-roadster', 'Motos roadster', 2), ('motos-touring', 'Motos touring', 3),
        ('motos-enduro', 'Motos enduro', 4), ('motos-trail', 'Motos trail', 5), ('motos-cross', 'Motos cross', 6),
        ('motos-custom', 'Motos custom', 7), ('scooters-50cc', 'Scooters 50cc', 8), ('scooters-125cc', 'Scooters 125cc', 9),
        ('maxi-scooters', 'Maxi-scooters', 10), ('mobylettes', 'Mobylettes', 11), ('quads-atv', 'Quads & ATV', 12),
        ('tricycles-motorises', 'Tricycles motorisés', 13), ('motos-electriques', 'Motos électriques', 14)
    ) AS v(slug, name, sort_order)
    ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name;

    -- Traductions Motos
    INSERT INTO public.category_translations (category_id, language_code, name)
    SELECT c.id, v.lang, v.name
    FROM public.categories c
    JOIN (VALUES
        -- FR
        ('motos-sportives','fr','Motos sportives'), ('motos-roadster','fr','Motos roadster'), ('motos-touring','fr','Motos touring'),
        ('motos-enduro','fr','Motos enduro'), ('motos-trail','fr','Motos trail'), ('motos-cross','fr','Motos cross'),
        ('motos-custom','fr','Motos custom'), ('scooters-50cc','fr','Scooters 50cc'), ('scooters-125cc','fr','Scooters 125cc'),
        ('maxi-scooters','fr','Maxi-scooters'), ('mobylettes','fr','Mobylettes'), ('quads-atv','fr','Quads & ATV'),
        ('tricycles-motorises','fr','Tricycles motorisés'), ('motos-electriques','fr','Motos électriques'),
        -- AR
        ('motos-sportives','ar','دراجات رياضية'), ('motos-roadster','ar','رودستر'), ('motos-touring','ar','تورينغ'),
        ('motos-enduro','ar','إندورو'), ('motos-trail','ar','أدفنتشر/ترايل'), ('motos-cross','ar','موتوكروس'),
        ('motos-custom','ar','كوستم'), ('scooters-50cc','ar','سكوترات 50cc'), ('scooters-125cc','ar','سكوترات 125cc'),
        ('maxi-scooters','ar','ماكسي سكوتر'), ('mobylettes','ar','دراجات آلية'), ('quads-atv','ar','كواد/ATV'),
        ('tricycles-motorises','ar','دراجات ثلاثية بمحرك'), ('motos-electriques','ar','دراجات نارية كهربائية'),
        -- EN
        ('motos-sportives','en','Sport bikes'), ('motos-roadster','en','Roadsters'), ('motos-touring','en','Touring bikes'),
        ('motos-enduro','en','Enduro'), ('motos-trail','en','Adventure/Trail'), ('motos-cross','en','Motocross'),
        ('motos-custom','en','Custom'), ('scooters-50cc','en','Scooters 50cc'), ('scooters-125cc','en','Scooters 125cc'),
        ('maxi-scooters','en','Maxi scooters'), ('mobylettes','en','Mopeds'), ('quads-atv','en','Quads & ATVs'),
        ('tricycles-motorises','en','Motorized tricycles'), ('motos-electriques','en','Electric motorcycles'),
        -- ES
        ('motos-sportives','es','Motos deportivas'), ('motos-roadster','es','Roadster'), ('motos-touring','es','Touring'),
        ('motos-enduro','es','Enduro'), ('motos-trail','es','Trail/Adventure'), ('motos-cross','es','Motocross'),
        ('motos-custom','es','Custom'), ('scooters-50cc','es','Scooters 50cc'), ('scooters-125cc','es','Scooters 125cc'),
        ('maxi-scooters','es','Maxi‑scooters'), ('mobylettes','es','Ciclomotores'), ('quads-atv','es','Quads & ATV'),
        ('tricycles-motorises','es','Triciclos motorizados'), ('motos-electriques','es','Motos eléctricas'),
        -- DE
        ('motos-sportives','de','Sportmotorräder'), ('motos-roadster','de','Roadster'), ('motos-touring','de','Tourer'),
        ('motos-enduro','de','Enduro'), ('motos-trail','de','Adventure/Trail'), ('motos-cross','de','Motocross'),
        ('motos-custom','de','Custom'), ('scooters-50cc','de','Roller 50cc'), ('scooters-125cc','de','Roller 125cc'),
        ('maxi-scooters','de','Maxi-Roller'), ('mobylettes','de','Mofas'), ('quads-atv','de','Quads & ATV'),
        ('tricycles-motorises','de','Motor-Dreiräder'), ('motos-electriques','de','Elektromotorräder'),
        -- IT
        ('motos-sportives','it','Moto sportive'), ('motos-roadster','it','Roadster'), ('motos-touring','it','Touring'),
        ('motos-enduro','it','Enduro'), ('motos-trail','it','Trail/Adventure'), ('motos-cross','it','Motocross'),
        ('motos-custom','it','Custom'), ('scooters-50cc','it','Scooter 50cc'), ('scooters-125cc','it','Scooter 125cc'),
        ('maxi-scooters','it','Maxi‑scooter'), ('mobylettes','it','Ciclomotori'), ('quads-atv','it','Quad & ATV'),
        ('tricycles-motorises','it','Tricicli motorizzati'), ('motos-electriques','it','Moto elettriche')
    ) AS v(slug, lang, name) ON c.slug = v.slug
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;


    -- 3.4 Pour Vélos Motorisés (l1_velos_id)
    INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
    SELECT v.slug, v.name, l1_velos_id, 2, v.sort_order, true
    FROM (VALUES
        ('velos-electriques-rapides', 'Vélos électriques rapides', 1), ('trottinettes-electriques', 'Trottinettes électriques', 2),
        ('gyropodes', 'Gyropodes', 3), ('monoroues-electriques', 'Monoroues électriques', 4),
        ('cyclomoteurs-legers-electriques', 'Cyclomoteurs légers électriques', 5)
    ) AS v(slug, name, sort_order)
    ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name;

    -- Traductions Vélos Motorisés
    INSERT INTO public.category_translations (category_id, language_code, name)
    SELECT c.id, v.lang, v.name
    FROM public.categories c
    JOIN (VALUES
        -- FR
        ('velos-electriques-rapides','fr','Vélos électriques rapides'), ('trottinettes-electriques','fr','Trottinettes électriques'),
        ('gyropodes','fr','Gyropodes'), ('monoroues-electriques','fr','Monoroues électriques'),
        ('cyclomoteurs-legers-electriques','fr','Cyclomoteurs légers électriques'),
        -- AR
        ('velos-electriques-rapides','ar','دراجات كهربائية سريعة'), ('trottinettes-electriques','ar','سكوترات كهربائية'),
        ('gyropodes','ar','جيروبود'), ('monoroues-electriques','ar','عجلات كهربائية أحادية'),
        ('cyclomoteurs-legers-electriques','ar','دراجات آلية كهربائية خفيفة'),
        -- EN
        ('velos-electriques-rapides','en','Speed e-bikes'), ('trottinettes-electriques','en','Electric scooters'),
        ('gyropodes','en','Segways/gyropodes'), ('monoroues-electriques','en','Electric unicycles'),
        ('cyclomoteurs-legers-electriques','en','Light electric mopeds'),
        -- ES
        ('velos-electriques-rapides','es','E‑bikes rápidas'), ('trottinettes-electriques','es','Patinetes eléctricos'),
        ('gyropodes','es','Gyropodes'), ('monoroues-electriques','es','Monociclos eléctricos'),
        ('cyclomoteurs-legers-electriques','es','Ciclomotores eléctricos ligeros'),
        -- DE
        ('velos-electriques-rapides','de','Schnelle E‑Bikes'), ('trottinettes-electriques','de','E‑Scooter'),
        ('gyropodes','de','Gyropoden'), ('monoroues-electriques','de','Elektrische Einräder'),
        ('cyclomoteurs-legers-electriques','de','Leichte E‑Mofas'),
        -- IT
        ('velos-electriques-rapides','it','E‑bike veloci'), ('trottinettes-electriques','it','Monopattini elettrici'),
        ('gyropodes','it','Gyropode'), ('monoroues-electriques','it','Monoruote elettriche'),
        ('cyclomoteurs-legers-electriques','it','Ciclomotori elettrici leggeri')
    ) AS v(slug, lang, name) ON c.slug = v.slug
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;


    -- 3.5 Pour Équipement Auto (l1_equip_auto_id)
    INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
    SELECT v.slug, v.name, l1_equip_auto_id, 2, v.sort_order, true
    FROM (VALUES
        ('pneus', 'Pneus', 1), ('jantes', 'Jantes', 2), ('batteries', 'Batteries', 3), ('filtres', 'Filtres', 4),
        ('huiles-lubrifiants', 'Huiles & lubrifiants', 5), ('plaquettes-frein', 'Plaquettes de frein', 6),
        ('disques-frein', 'Disques de frein', 7), ('amortisseurs', 'Amortisseurs', 8), ('courroies', 'Courroies', 9),
        ('embrayages', 'Embrayages', 10), ('bougies', 'Bougies', 11), ('echappements', 'Échappements', 12),
        ('pieces-moteur', 'Pièces moteur', 13), ('kits-distribution', 'Kits de distribution', 14),
        ('accessoires-interieurs', 'Accessoires intérieurs', 15), ('housses-sieges', 'Housses de sièges', 16),
        ('tapis', 'Tapis', 17), ('gps', 'GPS', 18), ('cameras-embarquees', 'Caméras embarquées', 19),
        ('alarmes-auto', 'Alarmes auto', 20), ('kits-mains-libres', 'Kits mains-libres', 21)
    ) AS v(slug, name, sort_order)
    ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name;

    -- Traductions Équipement Auto
    INSERT INTO public.category_translations (category_id, language_code, name)
    SELECT c.id, v.lang, v.name
    FROM public.categories c
    JOIN (VALUES
        -- FR
        ('pneus','fr','Pneus'), ('jantes','fr','Jantes'), ('batteries','fr','Batteries'), ('filtres','fr','Filtres'),
        ('huiles-lubrifiants','fr','Huiles & lubrifiants'), ('plaquettes-frein','fr','Plaquettes de frein'),
        ('disques-frein','fr','Disques de frein'), ('amortisseurs','fr','Amortisseurs'), ('courroies','fr','Courroies'),
        ('embrayages','fr','Embrayages'), ('bougies','fr','Bougies'), ('echappements','fr','Échappements'),
        ('pieces-moteur','fr','Pièces moteur'), ('kits-distribution','fr','Kits de distribution'),
        ('accessoires-interieurs','fr','Accessoires intérieurs'), ('housses-sieges','fr','Housses de sièges'),
        ('tapis','fr','Tapis'), ('gps','fr','GPS'), ('cameras-embarquees','fr','Caméras embarquées'),
        ('alarmes-auto','fr','Alarmes auto'), ('kits-mains-libres','fr','Kits mains-libres'),
        -- AR
        ('pneus','ar','إطارات'), ('jantes','ar','جنطات'), ('batteries','ar','بطاريات'), ('filtres','ar','فلاتر'),
        ('huiles-lubrifiants','ar','زيوت ومواد تشحيم'), ('plaquettes-frein','ar','بطانات فرامل'),
        ('disques-frein','ar','أقراص فرامل'), ('amortisseurs','ar','ممتصات صدمات'), ('courroies','ar','سيور'),
        ('embrayages','ar','قوابض'), ('bougies','ar','شمعات إشعال'), ('echappements','ar','عوادم'),
        ('pieces-moteur','ar','قطع المحرك'), ('kits-distribution','ar','مجموعات التوزيع'),
        ('accessoires-interieurs','ar','إكسسوارات داخلية'), ('housses-sieges','ar','أغطية المقاعد'),
        ('tapis','ar','فرش أرضية'), ('gps','ar','GPS'), ('cameras-embarquees','ar','كاميرات سيارة'),
        ('alarmes-auto','ar','إنذارات سيارات'), ('kits-mains-libres','ar','أطقم اتصال حرّ'),
        -- EN
        ('pneus','en','Tires'), ('jantes','en','Rims'), ('batteries','en','Batteries'), ('filtres','en','Filters'),
        ('huiles-lubrifiants','en','Oils & lubricants'), ('plaquettes-frein','en','Brake pads'),
        ('disques-frein','en','Brake discs'), ('amortisseurs','en','Shock absorbers'), ('courroies','en','Belts'),
        ('embrayages','en','Clutches'), ('bougies','en','Spark plugs'), ('echappements','en','Exhausts'),
        ('pieces-moteur','en','Engine parts'), ('kits-distribution','en','Timing kits'),
        ('accessoires-interieurs','en','Interior accessories'), ('housses-sieges','en','Seat covers'),
        ('tapis','en','Floor mats'), ('gps','en','GPS'), ('cameras-embarquees','en','Dashcams'),
        ('alarmes-auto','en','Car alarms'), ('kits-mains-libres','en','Hands-free kits'),
        -- ES
        ('pneus','es','Neumáticos'), ('jantes','es','Llantas'), ('batteries','es','Baterías'), ('filtres','es','Filtros'),
        ('huiles-lubrifiants','es','Aceites y lubricantes'), ('plaquettes-frein','es','Pastillas de freno'),
        ('disques-frein','es','Discos de freno'), ('amortisseurs','es','Amortiguadores'), ('courroies','es','Correas'),
        ('embrayages','es','Embragues'), ('bougies','es','Bujías'), ('echappements','es','Escapes'),
        ('pieces-moteur','es','Piezas de motor'), ('kits-distribution','es','Kits de distribución'),
        ('accessoires-interieurs','es','Accesorios interiores'), ('housses-sieges','es','Fundas de asiento'),
        ('tapis','es','Alfombrillas'), ('gps','es','GPS'), ('cameras-embarquees','es','Cámaras a bordo'),
        ('alarmes-auto','es','Alarmas de coche'), ('kits-mains-libres','es','Kits manos libres'),
        -- DE
        ('pneus','de','Reifen'), ('jantes','de','Felgen'), ('batteries','de','Batterien'), ('filtres','de','Filter'),
        ('huiles-lubrifiants','de','Öle & Schmierstoffe'), ('plaquettes-frein','de','Bremsbeläge'),
        ('disques-frein','de','Bremsscheiben'), ('amortisseurs','de','Stoßdämpfer'), ('courroies','de','Riemen'),
        ('embrayages','de','Kupplungen'), ('bougies','de','Zündkerzen'), ('echappements','de','Auspuffanlagen'),
        ('pieces-moteur','de','Motorteile'), ('kits-distribution','de','Zahnriemen‑Kits'),
        ('accessoires-interieurs','de','Innenausstattung'), ('housses-sieges','de','Sitzbezüge'),
        ('tapis','de','Fußmatten'), ('gps','de','GPS'), ('cameras-embarquees','de','Dashcams'),
        ('alarmes-auto','de','Autoalarme'), ('kits-mains-libres','de','Freisprech‑Kits'),
        -- IT
        ('pneus','it','Pneumatici'), ('jantes','it','Cerchi'), ('batteries','it','Batterie'), ('filtres','it','Filtri'),
        ('huiles-lubrifiants','it','Oli & lubrificanti'), ('plaquettes-frein','it','Pastiglie freno'),
        ('disques-frein','it','Dischi freno'), ('amortisseurs','it','Ammortizzatori'), ('courroies','it','Cinghie'),
        ('embrayages','it','Frizioni'), ('bougies','it','Candele'), ('echappements','it','Scarichi'),
        ('pieces-moteur','it','Parti motore'), ('kits-distribution','it','Kit distribuzione'),
        ('accessoires-interieurs','it','Accessori interni'), ('housses-sieges','it','Foderi sedili'),
        ('tapis','it','Tappetini'), ('gps','it','GPS'), ('cameras-embarquees','it','Dashcam'),
        ('alarmes-auto','it','Allarmi auto'), ('kits-mains-libres','it','Kit vivavoce')
    ) AS v(slug, lang, name) ON c.slug = v.slug
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;


    -- 3.6 Pour Équipement Moto (l1_equip_moto_id)
    INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
    SELECT v.slug, v.name, l1_equip_moto_id, 2, v.sort_order, true
    FROM (VALUES
        ('casques-moto', 'Casques moto', 1), ('blousons-moto', 'Blousons moto', 2), ('gants-moto', 'Gants moto', 3),
        ('bottes-chaussures', 'Bottes & chaussures', 4), ('protections-moto', 'Protections (dorsales, genouillères)', 5),
        ('valises-top-cases', 'Valises & top cases', 6), ('pots-echappement-moto', 'Pots d’échappement moto', 7),
        ('kits-chaine', 'Kits chaîne', 8), ('batteries-moto', 'Batteries moto', 9), ('pneus-moto', 'Pneus moto', 10),
        ('guidons', 'Guidons', 11), ('leviers', 'Leviers', 12), ('retroviseurs', 'Rétroviseurs', 13),
        ('pieces-moteur-moto', 'Pièces moteur moto', 14), ('huile-moto', 'Huile moto', 15), ('kits-reparation', 'Kits de réparation', 16)
    ) AS v(slug, name, sort_order)
    ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name;

    -- Traductions Équipement Moto
    INSERT INTO public.category_translations (category_id, language_code, name)
    SELECT c.id, v.lang, v.name
    FROM public.categories c
    JOIN (VALUES
        -- FR
        ('casques-moto','fr','Casques moto'), ('blousons-moto','fr','Blousons moto'), ('gants-moto','fr','Gants moto'),
        ('bottes-chaussures','fr','Bottes & chaussures'), ('protections-moto','fr','Protections (dorsales, genouillères)'),
        ('valises-top-cases','fr','Valises & top cases'), ('pots-echappement-moto','fr','Pots d’échappement moto'),
        ('kits-chaine','fr','Kits chaîne'), ('batteries-moto','fr','Batteries moto'), ('pneus-moto','fr','Pneus moto'),
        ('guidons','fr','Guidons'), ('leviers','fr','Leviers'), ('retroviseurs','fr','Rétroviseurs'),
        ('pieces-moteur-moto','fr','Pièces moteur moto'), ('huile-moto','fr','Huile moto'), ('kits-reparation','fr','Kits de réparation'),
        -- AR
        ('casques-moto','ar','خوذ دراجات'), ('blousons-moto','ar','سترات'), ('gants-moto','ar','قفازات'),
        ('bottes-chaussures','ar','أحذية وبوت'), ('protections-moto','ar','واقيات (ظهر، ركبتين)'),
        ('valises-top-cases','ar','حقائب وصناديق علوية'), ('pots-echappement-moto','ar','عوادم دراجات'),
        ('kits-chaine','ar','مجموعات سلسلة'), ('batteries-moto','ar','بطاريات دراجات'), ('pneus-moto','ar','إطارات دراجات'),
        ('guidons','ar','مقود'), ('leviers','ar','مقابض'), ('retroviseurs','ar','مرايا'),
        ('pieces-moteur-moto','ar','قطع محرك (موتو)'), ('huile-moto','ar','زيت موتو'), ('kits-reparation','ar','مجموعات إصلاح'),
        -- EN
        ('casques-moto','en','Motorcycle helmets'), ('blousons-moto','en','Motorcycle jackets'), ('gants-moto','en','Gloves'),
        ('bottes-chaussures','en','Boots & shoes'), ('protections-moto','en','Protection (back, knee)'),
        ('valises-top-cases','en','Cases & top boxes'), ('pots-echappement-moto','en','Motorcycle exhausts'),
        ('kits-chaine','en','Chain kits'), ('batteries-moto','en','Motorcycle batteries'), ('pneus-moto','en','Motorcycle tires'),
        ('guidons','en','Handlebars'), ('leviers','en','Levers'), ('retroviseurs','en','Mirrors'),
        ('pieces-moteur-moto','en','Motorcycle engine parts'), ('huile-moto','en','Motor oil'), ('kits-reparation','en','Repair kits'),
        -- ES
        ('casques-moto','es','Cascos'), ('blousons-moto','es','Chaquetas'), ('gants-moto','es','Guantes'),
        ('bottes-chaussures','es','Botas y zapatos'), ('protections-moto','es','Protecciones (espaldera, rodilleras)'),
        ('valises-top-cases','es','Maletas y top cases'), ('pots-echappement-moto','es','Escapes para moto'),
        ('kits-chaine','es','Kits de cadena'), ('batteries-moto','es','Baterías de moto'), ('pneus-moto','es','Neumáticos de moto'),
        ('guidons','es','Manillares'), ('leviers','es','Manetas'), ('retroviseurs','es','Espejos'),
        ('pieces-moteur-moto','es','Piezas de motor (moto)'), ('huile-moto','es','Aceite de moto'), ('kits-reparation','es','Kits de reparación'),
        -- DE
        ('casques-moto','de','Motorradhelme'), ('blousons-moto','de','Motorradjacken'), ('gants-moto','de','Handschuhe'),
        ('bottes-chaussures','de','Stiefel & Schuhe'), ('protections-moto','de','Schutz (Rücken, Knie)'),
        ('valises-top-cases','de','Koffer & Topcases'), ('pots-echappement-moto','de','Auspuffe für Motorräder'),
        ('kits-chaine','de','Ketten‑Kits'), ('batteries-moto','de','Motorradbatterien'), ('pneus-moto','de','Motorradreifen'),
        ('guidons','de','Lenker'), ('leviers','de','Hebel'), ('retroviseurs','de','Spiegel'),
        ('pieces-moteur-moto','de','Motorenteile (Moto)'), ('huile-moto','de','Motoröl (Moto)'), ('kits-reparation','de','Reparatur‑Kits'),
        -- IT
        ('casques-moto','it','Caschi'), ('blousons-moto','it','Giacche'), ('gants-moto','it','Guanti'),
        ('bottes-chaussures','it','Stivali & scarpe'), ('protections-moto','it','Protezioni (schiena, ginocchia)'),
        ('valises-top-cases','it','Valigie & top case'), ('pots-echappement-moto','it','Scarichi moto'),
        ('kits-chaine','it','Kit catena'), ('batteries-moto','it','Batterie moto'), ('pneus-moto','it','Pneumatici moto'),
        ('guidons','it','Manubri'), ('leviers','it','Leve'), ('retroviseurs','it','Specchietti'),
        ('pieces-moteur-moto','it','Parti motore (moto)'), ('huile-moto','it','Olio moto'), ('kits-reparation','it','Kit riparazione')
    ) AS v(slug, lang, name) ON c.slug = v.slug
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;


    -- 3.7 Pour Remorques (l1_remorques_id)
    INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
    SELECT v.slug, v.name, l1_remorques_id, 2, v.sort_order, true
    FROM (VALUES
        ('remorques-utilitaires', 'Remorques utilitaires', 1), ('remorques-porte-voitures', 'Remorques porte-voitures', 2),
        ('remorques-bagageres', 'Remorques bagagères', 3), ('remorques-betail', 'Remorques bétail', 4),
        ('remorques-frigorifiques', 'Remorques frigorifiques', 5), ('remorques-agricoles', 'Remorques agricoles', 6),
        ('attelages', 'Attelages', 7), ('barres-remorquage', 'Barres de remorquage', 8),
        ('porte-motos', 'Porte-motos', 9), ('porte-velos', 'Porte-vélos', 10)
    ) AS v(slug, name, sort_order)
    ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name;

    -- Traductions Remorques
    INSERT INTO public.category_translations (category_id, language_code, name)
    SELECT c.id, v.lang, v.name
    FROM public.categories c
    JOIN (VALUES
        -- FR
        ('remorques-utilitaires','fr','Remorques utilitaires'), ('remorques-porte-voitures','fr','Remorques porte-voitures'),
        ('remorques-bagageres','fr','Remorques bagagères'), ('remorques-betail','fr','Remorques bétail'),
        ('remorques-frigorifiques','fr','Remorques frigorifiques'), ('remorques-agricoles','fr','Remorques agricoles'),
        ('attelages','fr','Attelages'), ('barres-remorquage','fr','Barres de remorquage'),
        ('porte-motos','fr','Porte-motos'), ('porte-velos','fr','Porte-vélos'),
        -- AR
        ('remorques-utilitaires','ar','مقطورات خدمية'), ('remorques-porte-voitures','ar','مقطورات نقل سيارات'),
        ('remorques-bagageres','ar','مقطورات حمولة'), ('remorques-betail','ar','مقطورات مواشي'),
        ('remorques-frigorifiques','ar','مقطورات مبردة'), ('remorques-agricoles','ar','مقطورات زراعية'),
        ('attelages','ar','مراكيب السحب'), ('barres-remorquage','ar','قضبان سحب'),
        ('porte-motos','ar','حوامل دراجات نارية'), ('porte-velos','ar','حوامل دراجات'),
        -- EN
        ('remorques-utilitaires','en','Utility trailers'), ('remorques-porte-voitures','en','Car hauler trailers'),
        ('remorques-bagageres','en','Cargo trailers'), ('remorques-betail','en','Livestock trailers'),
        ('remorques-frigorifiques','en','Refrigerated trailers'), ('remorques-agricoles','en','Agricultural trailers'),
        ('attelages','en','Tow bars & hitches'), ('barres-remorquage','en','Towing bars'),
        ('porte-motos','en','Motorcycle carriers'), ('porte-velos','en','Bike racks'),
        -- ES
        ('remorques-utilitaires','es','Remolques utilitarios'), ('remorques-porte-voitures','es','Remolques porta‑coches'),
        ('remorques-bagageres','es','Remolques de carga'), ('remorques-betail','es','Remolques para ganado'),
        ('remorques-frigorifiques','es','Remolques frigoríficos'), ('remorques-agricoles','es','Remolques agrícolas'),
        ('attelages','es','Enganches'), ('barres-remorquage','es','Barras de remolque'),
        ('porte-motos','es','Porta‑motos'), ('porte-velos','es','Porta‑bicicletas'),
        -- DE
        ('remorques-utilitaires','de','Nutzanhänger'), ('remorques-porte-voitures','de','Autotransporter'),
        ('remorques-bagageres','de','Transportanhänger'), ('remorques-betail','de','Viehanhänger'),
        ('remorques-frigorifiques','de','Kühlanhänger'), ('remorques-agricoles','de','Landwirtschaftliche Anhänger'),
        ('attelages','de','Anhängerkupplungen'), ('barres-remorquage','de','Abschleppstangen'),
        ('porte-motos','de','Motorradträger'), ('porte-velos','de','Fahrradträger'),
        -- IT
        ('remorques-utilitaires','it','Rimorchi utilitari'), ('remorques-porte-voitures','it','Rimorchi porta‑auto'),
        ('remorques-bagageres','it','Rimorchi bagagli'), ('remorques-betail','it','Rimorchi bestiame'),
        ('remorques-frigorifiques','it','Rimorchi frigoriferi'), ('remorques-agricoles','it','Rimorchi agricoli'),
        ('attelages','it','Ganci traino'), ('barres-remorquage','it','Barre di traino'),
        ('porte-motos','it','Porta‑moto'), ('porte-velos','it','Porta‑bici')
    ) AS v(slug, lang, name) ON c.slug = v.slug
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;


    -- 3.8 Pour Diagnostic (l1_diag_id)
    INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
    SELECT v.slug, v.name, l1_diag_id, 2, v.sort_order, true
    FROM (VALUES
        ('valises-diagnostic-auto', 'Valises de diagnostic auto', 1), ('lecteurs-obd2', 'Lecteurs OBD2', 2),
        ('ponts-elevateurs', 'Ponts élévateurs', 3), ('compresseurs', 'Compresseurs', 4),
        ('crics-hydrauliques', 'Crics hydrauliques', 5), ('outils-mecaniques', 'Outils mécaniques', 6),
        ('chargeurs-batterie', 'Chargeurs de batterie', 7), ('boosters', 'Boosters', 8),
        ('stations-climatisation', 'Stations de climatisation', 9), ('demonte-pneus', 'Démonte-pneus', 10),
        ('equilibreuses', 'Équilibreuses', 11), ('outils-specialises-moto', 'Outils spécialisés moto', 12)
    ) AS v(slug, name, sort_order)
    ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name;

    -- Traductions Diagnostic
    INSERT INTO public.category_translations (category_id, language_code, name)
    SELECT c.id, v.lang, v.name
    FROM public.categories c
    JOIN (VALUES
        -- FR
        ('valises-diagnostic-auto','fr','Valises de diagnostic auto'), ('lecteurs-obd2','fr','Lecteurs OBD2'),
        ('ponts-elevateurs','fr','Ponts élévateurs'), ('compresseurs','fr','Compresseurs'),
        ('crics-hydrauliques','fr','Crics hydrauliques'), ('outils-mecaniques','fr','Outils mécaniques'),
        ('chargeurs-batterie','fr','Chargeurs de batterie'), ('boosters','fr','Boosters'),
        ('stations-climatisation','fr','Stations de climatisation'), ('demonte-pneus','fr','Démonte-pneus'),
        ('equilibreuses','fr','Équilibreuses'), ('outils-specialises-moto','fr','Outils spécialisés moto'),
        -- AR
        ('valises-diagnostic-auto','ar','أجهزة تشخيص السيارات'), ('lecteurs-obd2','ar','قارئات OBD2'),
        ('ponts-elevateurs','ar','جسور رفع'), ('compresseurs','ar','ضواغط'),
        ('crics-hydrauliques','ar','رافعات هيدروليكية'), ('outils-mecaniques','ar','أدوات ميكانيكية'),
        ('chargeurs-batterie','ar','شواحن بطارية'), ('boosters','ar','مُعزِّزات'),
        ('stations-climatisation','ar','محطات تكييف'), ('demonte-pneus','ar','مفككات الإطارات'),
        ('equilibreuses','ar','موازنات عجلات'), ('outils-specialises-moto','ar','أدوات متخصصة للدراجات'),
        -- EN
        ('valises-diagnostic-auto','en','Automotive diagnostic scanners'), ('lecteurs-obd2','en','OBD2 readers'),
        ('ponts-elevateurs','en','Vehicle lifts'), ('compresseurs','en','Compressors'),
        ('crics-hydrauliques','en','Hydraulic jacks'), ('outils-mecaniques','en','Mechanical tools'),
        ('chargeurs-batterie','en','Battery chargers'), ('boosters','en','Boosters'),
        ('stations-climatisation','en','AC service stations'), ('demonte-pneus','en','Tire changers'),
        ('equilibreuses','en','Wheel balancers'), ('outils-specialises-moto','en','Specialized motorcycle tools'),
        -- ES
        ('valises-diagnostic-auto','es','Maletas de diagnóstico'), ('lecteurs-obd2','es','Lectores OBD2'),
        ('ponts-elevateurs','es','Elevadores'), ('compresseurs','es','Compresores'),
        ('crics-hydrauliques','es','Gatos hidráulicos'), ('outils-mecaniques','es','Herramientas mecánicas'),
        ('chargeurs-batterie','es','Cargadores de batería'), ('boosters','es','Boosters'),
        ('stations-climatisation','es','Estaciones de climatización'), ('demonte-pneus','es','Desmontadoras'),
        ('equilibreuses','es','Equilibradoras'), ('outils-specialises-moto','es','Herramientas especializadas para motos'),
        -- DE
        ('valises-diagnostic-auto','de','Diagnosegeräte (Auto)'), ('lecteurs-obd2','de','OBD2‑Leser'),
        ('ponts-elevateurs','de','Hebebühnen'), ('compresseurs','de','Kompressoren'),
        ('crics-hydrauliques','de','Hydraulikheber'), ('outils-mecaniques','de','Mechanik‑Werkzeuge'),
        ('chargeurs-batterie','de','Batterieladegeräte'), ('boosters','de','Booster'),
        ('stations-climatisation','de','Klimaservice‑Stationen'), ('demonte-pneus','de','Reifenmontiermaschinen'),
        ('equilibreuses','de','Wuchtmaschinen'), ('outils-specialises-moto','de','Spezialisierte Motorrad‑Werkzeuge'),
        -- IT
        ('valises-diagnostic-auto','it','Scanner diagnostici auto'), ('lecteurs-obd2','it','Lettori OBD2'),
        ('ponts-elevateurs','it','Ponti sollevatori'), ('compresseurs','it','Compressori'),
        ('crics-hydrauliques','it','Cric idraulici'), ('outils-mecaniques','it','Utensili meccanici'),
        ('chargeurs-batterie','it','Caricabatterie'), ('boosters','it','Booster'),
        ('stations-climatisation','it','Stazioni clima'), ('demonte-pneus','it','Smontagomme'),
        ('equilibreuses','it','Equilibratrici'), ('outils-specialises-moto','it','Utensili specializzati moto')
    ) AS v(slug, lang, name) ON c.slug = v.slug
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;


    -- 3.9 Pour Carburants (l1_carbu_id)
    INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
    SELECT v.slug, v.name, l1_carbu_id, 2, v.sort_order, true
    FROM (VALUES
        ('bornes-recharge', 'Bornes de recharge', 1), ('stations-recharge-domestiques', 'Stations de recharge domestiques', 2),
        ('adaptateurs-voitures-electriques', 'Adaptateurs pour voitures électriques', 3), ('jerricans', 'Jerricans', 4),
        ('additifs-carburant', 'Additifs carburant', 5)
    ) AS v(slug, name, sort_order)
    ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name;

    -- Traductions Carburants
    INSERT INTO public.category_translations (category_id, language_code, name)
    SELECT c.id, v.lang, v.name
    FROM public.categories c
    JOIN (VALUES
        -- FR
        ('bornes-recharge','fr','Bornes de recharge'), ('stations-recharge-domestiques','fr','Stations de recharge domestiques'),
        ('adaptateurs-voitures-electriques','fr','Adaptateurs pour voitures électriques'), ('jerricans','fr','Jerricans'),
        ('additifs-carburant','fr','Additifs carburant'),
        -- AR
        ('bornes-recharge','ar','محطات شحن'), ('stations-recharge-domestiques','ar','شواحن منزلية'),
        ('adaptateurs-voitures-electriques','ar','محولات للسيارات الكهربائية'), ('jerricans','ar','جالونات'),
        ('additifs-carburant','ar','مضافات الوقود'),
        -- EN
        ('bornes-recharge','en','Charging stations'), ('stations-recharge-domestiques','en','Home chargers'),
        ('adaptateurs-voitures-electriques','en','EV adapters'), ('jerricans','en','Jerry cans'),
        ('additifs-carburant','en','Fuel additives'),
        -- ES
        ('bornes-recharge','es','Puntos de recarga'), ('stations-recharge-domestiques','es','Cargadores domésticos'),
        ('adaptateurs-voitures-electriques','es','Adaptadores para EV'), ('jerricans','es','Bidones'),
        ('additifs-carburant','es','Aditivos de combustible'),
        -- DE
        ('bornes-recharge','de','Ladestationen'), ('stations-recharge-domestiques','de','Heimladestationen'),
        ('adaptateurs-voitures-electriques','de','Adapter für E‑Autos'), ('jerricans','de','Kanister'),
        ('additifs-carburant','de','Kraftstoff‑Additive'),
        -- IT
        ('bornes-recharge','it','Colonnine di ricarica'), ('stations-recharge-domestiques','it','Caricatori domestici'),
        ('adaptateurs-voitures-electriques','it','Adattatori per EV'), ('jerricans','it','Taniche'),
        ('additifs-carburant','it','Additivi carburante')
    ) AS v(slug, lang, name) ON c.slug = v.slug
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;


    -- 3.10 Pour Services (l1_services_id)
    INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
    SELECT v.slug, v.name, l1_services_id, 2, v.sort_order, true
    FROM (VALUES
        ('reparation-auto', 'Réparation auto', 1), ('reparation-moto', 'Réparation moto', 2),
        ('entretien-vidange', 'Entretien & vidange', 3), ('lavage-automobile', 'Lavage automobile', 4),
        ('depannage', 'Dépannage', 5), ('remorquage', 'Remorquage', 6),
        ('reprogrammation-moteur', 'Reprogrammation moteur', 7), ('installation-accessoires', 'Installation accessoires', 8),
        ('renovation-phares', 'Rénovation phares', 9), ('remplacement-pare-brise', 'Remplacement pare-brise', 10)
    ) AS v(slug, name, sort_order)
    ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name;

    -- Traductions Services
    INSERT INTO public.category_translations (category_id, language_code, name)
    SELECT c.id, v.lang, v.name
    FROM public.categories c
    JOIN (VALUES
        -- FR
        ('reparation-auto','fr','Réparation auto'), ('reparation-moto','fr','Réparation moto'),
        ('entretien-vidange','fr','Entretien & vidange'), ('lavage-automobile','fr','Lavage automobile'),
        ('depannage','fr','Dépannage'), ('remorquage','fr','Remorquage'),
        ('reprogrammation-moteur','fr','Reprogrammation moteur'), ('installation-accessoires','fr','Installation accessoires'),
        ('renovation-phares','fr','Rénovation phares'), ('remplacement-pare-brise','fr','Remplacement pare-brise'),
        -- AR
        ('reparation-auto','ar','تصليح سيارات'), ('reparation-moto','ar','تصليح دراجات'),
        ('entretien-vidange','ar','صيانة وتغيير زيت'), ('lavage-automobile','ar','غسيل سيارات'),
        ('depannage','ar','خدمة أعطال'), ('remorquage','ar','سحب'),
        ('reprogrammation-moteur','ar','برمجة محرك'), ('installation-accessoires','ar','تركيب الإكسسوارات'),
        ('renovation-phares','ar','ترميم المصابيح'), ('remplacement-pare-brise','ar','تبديل الزجاج الأمامي'),
        -- EN
        ('reparation-auto','en','Car repair'), ('reparation-moto','en','Motorcycle repair'),
        ('entretien-vidange','en','Maintenance & oil change'), ('lavage-automobile','en','Car wash'),
        ('depannage','en','Breakdown service'), ('remorquage','en','Towing'),
        ('reprogrammation-moteur','en','Engine remapping'), ('installation-accessoires','en','Accessory installation'),
        ('renovation-phares','en','Headlight restoration'), ('remplacement-pare-brise','en','Windshield replacement'),
        -- ES
        ('reparation-auto','es','Reparación de coche'), ('reparation-moto','es','Reparación de moto'),
        ('entretien-vidange','es','Mantenimiento y cambio de aceite'), ('lavage-automobile','es','Lavado de coches'),
        ('depannage','es','Asistencia en carretera'), ('remorquage','es','Remolque'),
        ('reprogrammation-moteur','es','Reprogramación de motor'), ('installation-accessoires','es','Instalación de accesorios'),
        ('renovation-phares','es','Restauración de faros'), ('remplacement-pare-brise','es','Cambio de parabrisas'),
        -- DE
        ('reparation-auto','de','Auto‑Reparatur'), ('reparation-moto','de','Moto‑Reparatur'),
        ('entretien-vidange','de','Wartung & Ölwechsel'), ('lavage-automobile','de','Autowäsche'),
        ('depannage','de','Pannenhilfe'), ('remorquage','de','Abschleppen'),
        ('reprogrammation-moteur','de','Motor‑Optimierung'), ('installation-accessoires','de','Einbau von Zubehör'),
        ('renovation-phares','de','Scheinwerfer‑Aufbereitung'), ('remplacement-pare-brise','de','Scheibenwechsel'),
        -- IT
        ('reparation-auto','it','Riparazione auto'), ('reparation-moto','it','Riparazione moto'),
        ('entretien-vidange','it','Manutenzione & cambio olio'), ('lavage-automobile','it','Lavaggio auto'),
        ('depannage','it','Soccorso stradale'), ('remorquage','it','Traino'),
        ('reprogrammation-moteur','it','Rimappatura motore'), ('installation-accessoires','it','Installazione accessori'),
        ('renovation-phares','it','Rigenerazione fari'), ('remplacement-pare-brise','it','Sostituzione parabrezza')
    ) AS v(slug, lang, name) ON c.slug = v.slug
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;


    -- 3.11 Pour Marques (l1_marques_id)
    INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
    SELECT v.slug, v.name, l1_marques_id, 2, v.sort_order, true
    FROM (VALUES
        ('renault', 'Renault', 1), ('peugeot', 'Peugeot', 2), ('citroen', 'Citroën', 3),
        ('dacia', 'Dacia', 4), ('volkswagen', 'Volkswagen', 5), ('audi', 'Audi', 6),
        ('bmw', 'BMW', 7), ('mercedes', 'Mercedes', 8), ('toyota', 'Toyota', 9),
        ('kia', 'Kia', 10), ('hyundai', 'Hyundai', 11), ('ford', 'Ford', 12),
        ('nissan', 'Nissan', 13), ('fiat', 'Fiat', 14), ('honda', 'Honda', 15),
        ('yamaha', 'Yamaha', 16), ('suzuki', 'Suzuki', 17), ('piaggio', 'Piaggio', 18),
        ('ducati', 'Ducati', 19), ('ktm', 'KTM', 20), ('scania', 'Scania', 21),
        ('volvo-trucks', 'Volvo Trucks', 22), ('man', 'MAN', 23), ('iveco', 'Iveco', 24)
    ) AS v(slug, name, sort_order)
    ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name;

    -- Traductions Marques (Les noms de marques sont souvent les mêmes, mais on assure la couverture)
    INSERT INTO public.category_translations (category_id, language_code, name)
    SELECT c.id, v.lang, v.name
    FROM public.categories c
    JOIN (VALUES
        -- FR
        ('renault','fr','Renault'), ('peugeot','fr','Peugeot'), ('citroen','fr','Citroën'), ('dacia','fr','Dacia'),
        ('volkswagen','fr','Volkswagen'), ('audi','fr','Audi'), ('bmw','fr','BMW'), ('mercedes','fr','Mercedes'),
        ('toyota','fr','Toyota'), ('kia','fr','Kia'), ('hyundai','fr','Hyundai'), ('ford','fr','Ford'),
        ('nissan','fr','Nissan'), ('fiat','fr','Fiat'), ('honda','fr','Honda'), ('yamaha','fr','Yamaha'),
        ('suzuki','fr','Suzuki'), ('piaggio','fr','Piaggio'), ('ducati','fr','Ducati'), ('ktm','fr','KTM'),
        ('scania','fr','Scania'), ('volvo-trucks','fr','Volvo Trucks'), ('man','fr','MAN'), ('iveco','fr','Iveco'),
        -- AR (Translittération si nécessaire, mais souvent gardé en latin ou translittéré basique. Ici on garde Latin comme dans le TSX sauf si spécifié autrement)
        ('renault','ar','Renault'), ('peugeot','ar','Peugeot'), ('citroen','ar','Citroën'), ('dacia','ar','Dacia'),
        ('volkswagen','ar','Volkswagen'), ('audi','ar','Audi'), ('bmw','ar','BMW'), ('mercedes','ar','Mercedes'),
        ('toyota','ar','Toyota'), ('kia','ar','Kia'), ('hyundai','ar','Hyundai'), ('ford','ar','Ford'),
        ('nissan','ar','Nissan'), ('fiat','ar','Fiat'), ('honda','ar','Honda'), ('yamaha','ar','Yamaha'),
        ('suzuki','ar','Suzuki'), ('piaggio','ar','Piaggio'), ('ducati','ar','Ducati'), ('ktm','ar','KTM'),
        ('scania','ar','Scania'), ('volvo-trucks','ar','Volvo Trucks'), ('man','ar','MAN'), ('iveco','ar','Iveco'),
        -- EN
        ('renault','en','Renault'), ('peugeot','en','Peugeot'), ('citroen','en','Citroën'), ('dacia','en','Dacia'),
        ('volkswagen','en','Volkswagen'), ('audi','en','Audi'), ('bmw','en','BMW'), ('mercedes','en','Mercedes'),
        ('toyota','en','Toyota'), ('kia','en','Kia'), ('hyundai','en','Hyundai'), ('ford','en','Ford'),
        ('nissan','en','Nissan'), ('fiat','en','Fiat'), ('honda','en','Honda'), ('yamaha','en','Yamaha'),
        ('suzuki','en','Suzuki'), ('piaggio','en','Piaggio'), ('ducati','en','Ducati'), ('ktm','en','KTM'),
        ('scania','en','Scania'), ('volvo-trucks','en','Volvo Trucks'), ('man','en','MAN'), ('iveco','en','Iveco'),
        -- ES
        ('renault','es','Renault'), ('peugeot','es','Peugeot'), ('citroen','es','Citroën'), ('dacia','es','Dacia'),
        ('volkswagen','es','Volkswagen'), ('audi','es','Audi'), ('bmw','es','BMW'), ('mercedes','es','Mercedes'),
        ('toyota','es','Toyota'), ('kia','es','Kia'), ('hyundai','es','Hyundai'), ('ford','es','Ford'),
        ('nissan','es','Nissan'), ('fiat','es','Fiat'), ('honda','es','Honda'), ('yamaha','es','Yamaha'),
        ('suzuki','es','Suzuki'), ('piaggio','es','Piaggio'), ('ducati','es','Ducati'), ('ktm','es','KTM'),
        ('scania','es','Scania'), ('volvo-trucks','es','Volvo Trucks'), ('man','es','MAN'), ('iveco','es','Iveco'),
        -- DE
        ('renault','de','Renault'), ('peugeot','de','Peugeot'), ('citroen','de','Citroën'), ('dacia','de','Dacia'),
        ('volkswagen','de','Volkswagen'), ('audi','de','Audi'), ('bmw','de','BMW'), ('mercedes','de','Mercedes'),
        ('toyota','de','Toyota'), ('kia','de','Kia'), ('hyundai','de','Hyundai'), ('ford','de','Ford'),
        ('nissan','de','Nissan'), ('fiat','de','Fiat'), ('honda','de','Honda'), ('yamaha','de','Yamaha'),
        ('suzuki','de','Suzuki'), ('piaggio','de','Piaggio'), ('ducati','de','Ducati'), ('ktm','de','KTM'),
        ('scania','de','Scania'), ('volvo-trucks','de','Volvo Trucks'), ('man','de','MAN'), ('iveco','de','Iveco'),
        -- IT
        ('renault','it','Renault'), ('peugeot','it','Peugeot'), ('citroen','it','Citroën'), ('dacia','it','Dacia'),
        ('volkswagen','it','Volkswagen'), ('audi','it','Audi'), ('bmw','it','BMW'), ('mercedes','it','Mercedes'),
        ('toyota','it','Toyota'), ('kia','it','Kia'), ('hyundai','it','Hyundai'), ('ford','it','Ford'),
        ('nissan','it','Nissan'), ('fiat','it','Fiat'), ('honda','it','Honda'), ('yamaha','it','Yamaha'),
        ('suzuki','it','Suzuki'), ('piaggio','it','Piaggio'), ('ducati','it','Ducati'), ('ktm','it','KTM'),
        ('scania','it','Scania'), ('volvo-trucks','it','Volvo Trucks'), ('man','it','MAN'), ('iveco','it','Iveco')
    ) AS v(slug, lang, name) ON c.slug = v.slug
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

END $$;
