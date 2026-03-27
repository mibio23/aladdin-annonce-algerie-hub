-- Migration: Immobilier & Maison (Generated Recursive)
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

    -- Level 0: immobilier-maison
    INSERT INTO categories (id, slug, level, name)
    VALUES ('immobilier-maison', 'immobilier-maison', 0, 'Immobilier & Maison')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 0, name = EXCLUDED.name
    RETURNING id INTO root_id;
    PERFORM insert_category_translations('immobilier-maison', 'fr', 'Immobilier & Maison');
    PERFORM insert_category_translations('immobilier-maison', 'ar', 'العقارات والمنزل');
    PERFORM insert_category_translations('immobilier-maison', 'en', 'Real Estate & Home');
    PERFORM insert_category_translations('immobilier-maison', 'de', 'Immobilien & Haus');
    PERFORM insert_category_translations('immobilier-maison', 'es', 'Inmobiliaria y Hogar');
    PERFORM insert_category_translations('immobilier-maison', 'it', 'Immobiliare & Casa');

        -- Level 1: ventes-immobilieres
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ventes-immobilieres', 'ventes-immobilieres', 1, root_id, 'Ventes Immobilières')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('ventes-immobilieres', 'fr', 'Ventes Immobilières');
        PERFORM insert_category_translations('ventes-immobilieres', 'ar', 'مبيعات العقارات');
        PERFORM insert_category_translations('ventes-immobilieres', 'en', 'Property Sales');
        PERFORM insert_category_translations('ventes-immobilieres', 'de', 'Immobilienverkauf');
        PERFORM insert_category_translations('ventes-immobilieres', 'es', 'Ventas inmobiliarias');
        PERFORM insert_category_translations('ventes-immobilieres', 'it', 'Vendite immobiliari');

            -- Level 2: appartements-a-vendre
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('appartements-a-vendre', 'appartements-a-vendre', 2, l1_id, 'Appartements à vendre')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('appartements-a-vendre', 'fr', 'Appartements à vendre');
            PERFORM insert_category_translations('appartements-a-vendre', 'ar', 'شقق للبيع');
            PERFORM insert_category_translations('appartements-a-vendre', 'en', 'Apartments for sale');
            PERFORM insert_category_translations('appartements-a-vendre', 'de', 'Wohnungen zum Verkauf');
            PERFORM insert_category_translations('appartements-a-vendre', 'es', 'Apartamentos en venta');
            PERFORM insert_category_translations('appartements-a-vendre', 'it', 'Appartamenti in vendita');

            -- Level 2: studios
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('studios', 'studios', 2, l1_id, 'Studios')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('studios', 'fr', 'Studios');
            PERFORM insert_category_translations('studios', 'ar', 'استوديوهات');
            PERFORM insert_category_translations('studios', 'en', 'Studios');
            PERFORM insert_category_translations('studios', 'de', 'Studios');
            PERFORM insert_category_translations('studios', 'es', 'Estudios');
            PERFORM insert_category_translations('studios', 'it', 'Monolocali');

            -- Level 2: f2
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('f2', 'f2', 2, l1_id, 'F2')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('f2', 'fr', 'F2');
            PERFORM insert_category_translations('f2', 'ar', 'F2');
            PERFORM insert_category_translations('f2', 'en', 'F2');
            PERFORM insert_category_translations('f2', 'de', 'F2');
            PERFORM insert_category_translations('f2', 'es', 'F2');
            PERFORM insert_category_translations('f2', 'it', 'F2');

            -- Level 2: f3
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('f3', 'f3', 2, l1_id, 'F3')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('f3', 'fr', 'F3');
            PERFORM insert_category_translations('f3', 'ar', 'F3');
            PERFORM insert_category_translations('f3', 'en', 'F3');
            PERFORM insert_category_translations('f3', 'de', 'F3');
            PERFORM insert_category_translations('f3', 'es', 'F3');
            PERFORM insert_category_translations('f3', 'it', 'F3');

            -- Level 2: f4
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('f4', 'f4', 2, l1_id, 'F4')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('f4', 'fr', 'F4');
            PERFORM insert_category_translations('f4', 'ar', 'F4');
            PERFORM insert_category_translations('f4', 'en', 'F4');
            PERFORM insert_category_translations('f4', 'de', 'F4');
            PERFORM insert_category_translations('f4', 'es', 'F4');
            PERFORM insert_category_translations('f4', 'it', 'F4');

            -- Level 2: f5-plus
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('f5-plus', 'f5-plus', 2, l1_id, 'F5+')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('f5-plus', 'fr', 'F5+');
            PERFORM insert_category_translations('f5-plus', 'ar', 'F5+');
            PERFORM insert_category_translations('f5-plus', 'en', 'F5+');
            PERFORM insert_category_translations('f5-plus', 'de', 'F5+');
            PERFORM insert_category_translations('f5-plus', 'es', 'F5+');
            PERFORM insert_category_translations('f5-plus', 'it', 'F5+');

            -- Level 2: appartements-neufs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('appartements-neufs', 'appartements-neufs', 2, l1_id, 'Appartements neufs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('appartements-neufs', 'fr', 'Appartements neufs');
            PERFORM insert_category_translations('appartements-neufs', 'ar', 'شقق جديدة');
            PERFORM insert_category_translations('appartements-neufs', 'en', 'New apartments');
            PERFORM insert_category_translations('appartements-neufs', 'de', 'Neubauwohnungen');
            PERFORM insert_category_translations('appartements-neufs', 'es', 'Apartamentos nuevos');
            PERFORM insert_category_translations('appartements-neufs', 'it', 'Appartamenti nuovi');

            -- Level 2: appartements-promotion-immobiliere
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('appartements-promotion-immobiliere', 'appartements-promotion-immobiliere', 2, l1_id, 'Appartements promotion immobilière')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('appartements-promotion-immobiliere', 'fr', 'Appartements promotion immobilière');
            PERFORM insert_category_translations('appartements-promotion-immobiliere', 'ar', 'شقق ترويج عقاري');
            PERFORM insert_category_translations('appartements-promotion-immobiliere', 'en', 'Promotional apartments');
            PERFORM insert_category_translations('appartements-promotion-immobiliere', 'de', 'Promotionswohnungen');
            PERFORM insert_category_translations('appartements-promotion-immobiliere', 'es', 'Apartamentos promocionales');
            PERFORM insert_category_translations('appartements-promotion-immobiliere', 'it', 'Appartamenti promozionali');

            -- Level 2: maisons-a-vendre
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('maisons-a-vendre', 'maisons-a-vendre', 2, l1_id, 'Maisons à vendre')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('maisons-a-vendre', 'fr', 'Maisons à vendre');
            PERFORM insert_category_translations('maisons-a-vendre', 'ar', 'منازل للبيع');
            PERFORM insert_category_translations('maisons-a-vendre', 'en', 'Houses for sale');
            PERFORM insert_category_translations('maisons-a-vendre', 'de', 'Häuser zum Verkauf');
            PERFORM insert_category_translations('maisons-a-vendre', 'es', 'Casas en venta');
            PERFORM insert_category_translations('maisons-a-vendre', 'it', 'Case in vendita');

            -- Level 2: villas
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('villas', 'villas', 2, l1_id, 'Villas')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('villas', 'fr', 'Villas');
            PERFORM insert_category_translations('villas', 'ar', 'فلل');
            PERFORM insert_category_translations('villas', 'en', 'Villas');
            PERFORM insert_category_translations('villas', 'de', 'Villen');
            PERFORM insert_category_translations('villas', 'es', 'Villas');
            PERFORM insert_category_translations('villas', 'it', 'Ville');

            -- Level 2: duplex
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('duplex', 'duplex', 2, l1_id, 'Duplex')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('duplex', 'fr', 'Duplex');
            PERFORM insert_category_translations('duplex', 'ar', 'ديوبلكس');
            PERFORM insert_category_translations('duplex', 'en', 'Duplexes');
            PERFORM insert_category_translations('duplex', 'de', 'Duplex');
            PERFORM insert_category_translations('duplex', 'es', 'Dúplex');
            PERFORM insert_category_translations('duplex', 'it', 'Duplex');

            -- Level 2: triplex
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('triplex', 'triplex', 2, l1_id, 'Triplex')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('triplex', 'fr', 'Triplex');
            PERFORM insert_category_translations('triplex', 'ar', 'تريبلكس');
            PERFORM insert_category_translations('triplex', 'en', 'Triplexes');
            PERFORM insert_category_translations('triplex', 'de', 'Triplex');
            PERFORM insert_category_translations('triplex', 'es', 'Tríplex');
            PERFORM insert_category_translations('triplex', 'it', 'Triplex');

            -- Level 2: maisons-plain-pied
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('maisons-plain-pied', 'maisons-plain-pied', 2, l1_id, 'Maisons plain-pied')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('maisons-plain-pied', 'fr', 'Maisons plain-pied');
            PERFORM insert_category_translations('maisons-plain-pied', 'ar', 'منازل بطابق واحد');
            PERFORM insert_category_translations('maisons-plain-pied', 'en', 'Bungalows');
            PERFORM insert_category_translations('maisons-plain-pied', 'de', 'Einfamilienhäuser');
            PERFORM insert_category_translations('maisons-plain-pied', 'es', 'Casas de una planta');
            PERFORM insert_category_translations('maisons-plain-pied', 'it', 'Case su un piano');

            -- Level 2: fermes-proprietes-rurales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fermes-proprietes-rurales', 'fermes-proprietes-rurales', 2, l1_id, 'Fermes & propriétés rurales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fermes-proprietes-rurales', 'fr', 'Fermes & propriétés rurales');
            PERFORM insert_category_translations('fermes-proprietes-rurales', 'ar', 'مزارع وعقارات ريفية');
            PERFORM insert_category_translations('fermes-proprietes-rurales', 'en', 'Farms & rural properties');
            PERFORM insert_category_translations('fermes-proprietes-rurales', 'de', 'Höfe & ländliche Grundstücke');
            PERFORM insert_category_translations('fermes-proprietes-rurales', 'es', 'Granjas y propiedades rurales');
            PERFORM insert_category_translations('fermes-proprietes-rurales', 'it', 'Fattorie & proprietà rurali');

            -- Level 2: terrains-constructibles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('terrains-constructibles', 'terrains-constructibles', 2, l1_id, 'Terrains constructibles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('terrains-constructibles', 'fr', 'Terrains constructibles');
            PERFORM insert_category_translations('terrains-constructibles', 'ar', 'أراضٍ قابلة للبناء');
            PERFORM insert_category_translations('terrains-constructibles', 'en', 'Building plots');
            PERFORM insert_category_translations('terrains-constructibles', 'de', 'Bauland');
            PERFORM insert_category_translations('terrains-constructibles', 'es', 'Terrenos edificables');
            PERFORM insert_category_translations('terrains-constructibles', 'it', 'Terreni edificabili');

            -- Level 2: terrains-agricoles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('terrains-agricoles', 'terrains-agricoles', 2, l1_id, 'Terrains agricoles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('terrains-agricoles', 'fr', 'Terrains agricoles');
            PERFORM insert_category_translations('terrains-agricoles', 'ar', 'أراضٍ زراعية');
            PERFORM insert_category_translations('terrains-agricoles', 'en', 'Farmland');
            PERFORM insert_category_translations('terrains-agricoles', 'de', 'Ackerland');
            PERFORM insert_category_translations('terrains-agricoles', 'es', 'Terrenos agrícolas');
            PERFORM insert_category_translations('terrains-agricoles', 'it', 'Terreni agricoli');

            -- Level 2: locaux-commerciaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('locaux-commerciaux', 'locaux-commerciaux', 2, l1_id, 'Locaux commerciaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('locaux-commerciaux', 'fr', 'Locaux commerciaux');
            PERFORM insert_category_translations('locaux-commerciaux', 'ar', 'محلات تجارية');
            PERFORM insert_category_translations('locaux-commerciaux', 'en', 'Commercial premises');
            PERFORM insert_category_translations('locaux-commerciaux', 'de', 'Gewerbeflächen');
            PERFORM insert_category_translations('locaux-commerciaux', 'es', 'Locales comerciales');
            PERFORM insert_category_translations('locaux-commerciaux', 'it', 'Locali commerciali');

            -- Level 2: bureaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bureaux', 'bureaux', 2, l1_id, 'Bureaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bureaux', 'fr', 'Bureaux');
            PERFORM insert_category_translations('bureaux', 'ar', 'مكاتب');
            PERFORM insert_category_translations('bureaux', 'en', 'Offices');
            PERFORM insert_category_translations('bureaux', 'de', 'Büros');
            PERFORM insert_category_translations('bureaux', 'es', 'Oficinas');
            PERFORM insert_category_translations('bureaux', 'it', 'Uffici');

            -- Level 2: immeubles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('immeubles', 'immeubles', 2, l1_id, 'Immeubles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('immeubles', 'fr', 'Immeubles');
            PERFORM insert_category_translations('immeubles', 'ar', 'عمارات');
            PERFORM insert_category_translations('immeubles', 'en', 'Buildings');
            PERFORM insert_category_translations('immeubles', 'de', 'Gebäude');
            PERFORM insert_category_translations('immeubles', 'es', 'Edificios');
            PERFORM insert_category_translations('immeubles', 'it', 'Edifici');

            -- Level 2: garages-a-vendre
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('garages-a-vendre', 'garages-a-vendre', 2, l1_id, 'Garages à vendre')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('garages-a-vendre', 'fr', 'Garages à vendre');
            PERFORM insert_category_translations('garages-a-vendre', 'ar', 'كراجات للبيع');
            PERFORM insert_category_translations('garages-a-vendre', 'en', 'Garages for sale');
            PERFORM insert_category_translations('garages-a-vendre', 'de', 'Garagen zu verkaufen');
            PERFORM insert_category_translations('garages-a-vendre', 'es', 'Garajes en venta');
            PERFORM insert_category_translations('garages-a-vendre', 'it', 'Garage in vendita');

        -- Level 1: locations-immobilieres
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('locations-immobilieres', 'locations-immobilieres', 1, root_id, 'Locations Immobilières')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('locations-immobilieres', 'fr', 'Locations Immobilières');
        PERFORM insert_category_translations('locations-immobilieres', 'ar', 'إيجارات العقارات');
        PERFORM insert_category_translations('locations-immobilieres', 'en', 'Property Rentals');
        PERFORM insert_category_translations('locations-immobilieres', 'de', 'Immobilienvermietung');
        PERFORM insert_category_translations('locations-immobilieres', 'es', 'Alquileres inmobiliarios');
        PERFORM insert_category_translations('locations-immobilieres', 'it', 'Affitti immobiliari');

            -- Level 2: appartements-en-location
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('appartements-en-location', 'appartements-en-location', 2, l1_id, 'Appartements en location')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('appartements-en-location', 'fr', 'Appartements en location');
            PERFORM insert_category_translations('appartements-en-location', 'ar', 'شقق للإيجار');
            PERFORM insert_category_translations('appartements-en-location', 'en', 'Apartments for rent');
            PERFORM insert_category_translations('appartements-en-location', 'de', 'Wohnungen zur Miete');
            PERFORM insert_category_translations('appartements-en-location', 'es', 'Apartamentos en alquiler');
            PERFORM insert_category_translations('appartements-en-location', 'it', 'Appartamenti in affitto');

            -- Level 2: studios-location
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('studios-location', 'studios', 2, l1_id, 'Studios')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('studios-location', 'fr', 'Studios');
            PERFORM insert_category_translations('studios-location', 'ar', 'استوديوهات');
            PERFORM insert_category_translations('studios-location', 'en', 'Studios');
            PERFORM insert_category_translations('studios-location', 'de', 'Studios');
            PERFORM insert_category_translations('studios-location', 'es', 'Estudios');
            PERFORM insert_category_translations('studios-location', 'it', 'Monolocali');

            -- Level 2: f2-location
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('f2-location', 'f2', 2, l1_id, 'F2')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('f2-location', 'fr', 'F2');
            PERFORM insert_category_translations('f2-location', 'ar', 'F2');
            PERFORM insert_category_translations('f2-location', 'en', 'F2');
            PERFORM insert_category_translations('f2-location', 'de', 'F2');
            PERFORM insert_category_translations('f2-location', 'es', 'F2');
            PERFORM insert_category_translations('f2-location', 'it', 'F2');

            -- Level 2: f3-location
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('f3-location', 'f3', 2, l1_id, 'F3')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('f3-location', 'fr', 'F3');
            PERFORM insert_category_translations('f3-location', 'ar', 'F3');
            PERFORM insert_category_translations('f3-location', 'en', 'F3');
            PERFORM insert_category_translations('f3-location', 'de', 'F3');
            PERFORM insert_category_translations('f3-location', 'es', 'F3');
            PERFORM insert_category_translations('f3-location', 'it', 'F3');

            -- Level 2: f4-location
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('f4-location', 'f4', 2, l1_id, 'F4')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('f4-location', 'fr', 'F4');
            PERFORM insert_category_translations('f4-location', 'ar', 'F4');
            PERFORM insert_category_translations('f4-location', 'en', 'F4');
            PERFORM insert_category_translations('f4-location', 'de', 'F4');
            PERFORM insert_category_translations('f4-location', 'es', 'F4');
            PERFORM insert_category_translations('f4-location', 'it', 'F4');

            -- Level 2: maisons-en-location
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('maisons-en-location', 'maisons-en-location', 2, l1_id, 'Maisons en location')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('maisons-en-location', 'fr', 'Maisons en location');
            PERFORM insert_category_translations('maisons-en-location', 'ar', 'منازل للإيجار');
            PERFORM insert_category_translations('maisons-en-location', 'en', 'Houses for rent');
            PERFORM insert_category_translations('maisons-en-location', 'de', 'Häuser zur Miete');
            PERFORM insert_category_translations('maisons-en-location', 'es', 'Casas en alquiler');
            PERFORM insert_category_translations('maisons-en-location', 'it', 'Case in affitto');

            -- Level 2: villas-location
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('villas-location', 'villas', 2, l1_id, 'Villas')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('villas-location', 'fr', 'Villas');
            PERFORM insert_category_translations('villas-location', 'ar', 'فلل');
            PERFORM insert_category_translations('villas-location', 'en', 'Villas');
            PERFORM insert_category_translations('villas-location', 'de', 'Villen');
            PERFORM insert_category_translations('villas-location', 'es', 'Villas');
            PERFORM insert_category_translations('villas-location', 'it', 'Ville');

            -- Level 2: duplex-location
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('duplex-location', 'duplex', 2, l1_id, 'Duplex')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('duplex-location', 'fr', 'Duplex');
            PERFORM insert_category_translations('duplex-location', 'ar', 'ديوبلكس');
            PERFORM insert_category_translations('duplex-location', 'en', 'Duplexes');
            PERFORM insert_category_translations('duplex-location', 'de', 'Duplex');
            PERFORM insert_category_translations('duplex-location', 'es', 'Dúplex');
            PERFORM insert_category_translations('duplex-location', 'it', 'Duplex');

            -- Level 2: triplex-location
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('triplex-location', 'triplex', 2, l1_id, 'Triplex')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('triplex-location', 'fr', 'Triplex');
            PERFORM insert_category_translations('triplex-location', 'ar', 'تريبلكس');
            PERFORM insert_category_translations('triplex-location', 'en', 'Triplexes');
            PERFORM insert_category_translations('triplex-location', 'de', 'Triplex');
            PERFORM insert_category_translations('triplex-location', 'es', 'Tríplex');
            PERFORM insert_category_translations('triplex-location', 'it', 'Triplex');

            -- Level 2: chambres-en-location
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chambres-en-location', 'chambres-en-location', 2, l1_id, 'Chambres en location')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chambres-en-location', 'fr', 'Chambres en location');
            PERFORM insert_category_translations('chambres-en-location', 'ar', 'غرف للإيجار');
            PERFORM insert_category_translations('chambres-en-location', 'en', 'Rooms for rent');
            PERFORM insert_category_translations('chambres-en-location', 'de', 'Zimmer zur Miete');
            PERFORM insert_category_translations('chambres-en-location', 'es', 'Habitaciones en alquiler');
            PERFORM insert_category_translations('chambres-en-location', 'it', 'Camere in affitto');

            -- Level 2: colocation
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('colocation', 'colocation', 2, l1_id, 'Colocation')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('colocation', 'fr', 'Colocation');
            PERFORM insert_category_translations('colocation', 'ar', 'سكن مشترك');
            PERFORM insert_category_translations('colocation', 'en', 'Flatsharing');
            PERFORM insert_category_translations('colocation', 'de', 'Wohngemeinschaft');
            PERFORM insert_category_translations('colocation', 'es', 'Pisos compartidos');
            PERFORM insert_category_translations('colocation', 'it', 'Coabitazione');

            -- Level 2: locations-meublees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('locations-meublees', 'locations-meublees', 2, l1_id, 'Locations meublées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('locations-meublees', 'fr', 'Locations meublées');
            PERFORM insert_category_translations('locations-meublees', 'ar', 'إيجارات مفروشة');
            PERFORM insert_category_translations('locations-meublees', 'en', 'Furnished rentals');
            PERFORM insert_category_translations('locations-meublees', 'de', 'Möblierte Vermietung');
            PERFORM insert_category_translations('locations-meublees', 'es', 'Alquileres amueblados');
            PERFORM insert_category_translations('locations-meublees', 'it', 'Affitti arredati');

            -- Level 2: locations-non-meublees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('locations-non-meublees', 'locations-non-meublees', 2, l1_id, 'Locations non meublées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('locations-non-meublees', 'fr', 'Locations non meublées');
            PERFORM insert_category_translations('locations-non-meublees', 'ar', 'إيجارات غير مفروشة');
            PERFORM insert_category_translations('locations-non-meublees', 'en', 'Unfurnished rentals');
            PERFORM insert_category_translations('locations-non-meublees', 'de', 'Unmöblierte Vermietung');
            PERFORM insert_category_translations('locations-non-meublees', 'es', 'Alquileres sin muebles');
            PERFORM insert_category_translations('locations-non-meublees', 'it', 'Affitti non arredati');

            -- Level 2: locations-saisonnieres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('locations-saisonnieres', 'locations-saisonnieres', 2, l1_id, 'Locations saisonnières')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('locations-saisonnieres', 'fr', 'Locations saisonnières');
            PERFORM insert_category_translations('locations-saisonnieres', 'ar', 'إيجارات موسمية');
            PERFORM insert_category_translations('locations-saisonnieres', 'en', 'Seasonal rentals');
            PERFORM insert_category_translations('locations-saisonnieres', 'de', 'Ferienvermietung');
            PERFORM insert_category_translations('locations-saisonnieres', 'es', 'Alquileres de temporada');
            PERFORM insert_category_translations('locations-saisonnieres', 'it', 'Affitti stagionali');

            -- Level 2: locations-vacances
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('locations-vacances', 'locations-vacances', 2, l1_id, 'Locations vacances')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('locations-vacances', 'fr', 'Locations vacances');
            PERFORM insert_category_translations('locations-vacances', 'ar', 'إيجارات عطلات');
            PERFORM insert_category_translations('locations-vacances', 'en', 'Holiday rentals');
            PERFORM insert_category_translations('locations-vacances', 'de', 'Urlaubsvermietung');
            PERFORM insert_category_translations('locations-vacances', 'es', 'Alquileres vacacionales');
            PERFORM insert_category_translations('locations-vacances', 'it', 'Affitti vacanze');

            -- Level 2: bureaux-a-louer
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bureaux-a-louer', 'bureaux-a-louer', 2, l1_id, 'Bureaux à louer')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bureaux-a-louer', 'fr', 'Bureaux à louer');
            PERFORM insert_category_translations('bureaux-a-louer', 'ar', 'مكاتب للإيجار');
            PERFORM insert_category_translations('bureaux-a-louer', 'en', 'Offices for rent');
            PERFORM insert_category_translations('bureaux-a-louer', 'de', 'Büros zu mieten');
            PERFORM insert_category_translations('bureaux-a-louer', 'es', 'Oficinas en alquiler');
            PERFORM insert_category_translations('bureaux-a-louer', 'it', 'Uffici in affitto');

            -- Level 2: locaux-commerciaux-a-louer
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('locaux-commerciaux-a-louer', 'locaux-commerciaux-a-louer', 2, l1_id, 'Locaux commerciaux à louer')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('locaux-commerciaux-a-louer', 'fr', 'Locaux commerciaux à louer');
            PERFORM insert_category_translations('locaux-commerciaux-a-louer', 'ar', 'محلات تجارية للإيجار');
            PERFORM insert_category_translations('locaux-commerciaux-a-louer', 'en', 'Commercial premises for rent');
            PERFORM insert_category_translations('locaux-commerciaux-a-louer', 'de', 'Gewerberäume zu mieten');
            PERFORM insert_category_translations('locaux-commerciaux-a-louer', 'es', 'Locales comerciales en alquiler');
            PERFORM insert_category_translations('locaux-commerciaux-a-louer', 'it', 'Locali commerciali in affitto');

            -- Level 2: garages-parkings-a-louer
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('garages-parkings-a-louer', 'garages-parkings-a-louer', 2, l1_id, 'Garages & parkings à louer')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('garages-parkings-a-louer', 'fr', 'Garages & parkings à louer');
            PERFORM insert_category_translations('garages-parkings-a-louer', 'ar', 'كراجات ومواقف للإيجار');
            PERFORM insert_category_translations('garages-parkings-a-louer', 'en', 'Garages & parking for rent');
            PERFORM insert_category_translations('garages-parkings-a-louer', 'de', 'Garagen & Parkplätze zu mieten');
            PERFORM insert_category_translations('garages-parkings-a-louer', 'es', 'Garajes y parkings en alquiler');
            PERFORM insert_category_translations('garages-parkings-a-louer', 'it', 'Garage & parcheggi in affitto');

        -- Level 1: immobilier-professionnel
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('immobilier-professionnel', 'immobilier-professionnel', 1, root_id, 'Immobilier Professionnel')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('immobilier-professionnel', 'fr', 'Immobilier Professionnel');
        PERFORM insert_category_translations('immobilier-professionnel', 'ar', 'عقار مهني');
        PERFORM insert_category_translations('immobilier-professionnel', 'en', 'Professional Real Estate');
        PERFORM insert_category_translations('immobilier-professionnel', 'de', 'Gewerbliche Immobilien');
        PERFORM insert_category_translations('immobilier-professionnel', 'es', 'Inmobiliaria profesional');
        PERFORM insert_category_translations('immobilier-professionnel', 'it', 'Immobiliare professionale');

            -- Level 2: entrepots
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('entrepots', 'entrepots', 2, l1_id, 'Entrepôts')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('entrepots', 'fr', 'Entrepôts');
            PERFORM insert_category_translations('entrepots', 'ar', 'مستودعات');
            PERFORM insert_category_translations('entrepots', 'en', 'Warehouses');
            PERFORM insert_category_translations('entrepots', 'de', 'Lagerhallen');
            PERFORM insert_category_translations('entrepots', 'es', 'Naves');
            PERFORM insert_category_translations('entrepots', 'it', 'Magazzini');

            -- Level 2: hangars
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('hangars', 'hangars', 2, l1_id, 'Hangars')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('hangars', 'fr', 'Hangars');
            PERFORM insert_category_translations('hangars', 'ar', 'هنغارات');
            PERFORM insert_category_translations('hangars', 'en', 'Hangars');
            PERFORM insert_category_translations('hangars', 'de', 'Hangars');
            PERFORM insert_category_translations('hangars', 'es', 'Hangares');
            PERFORM insert_category_translations('hangars', 'it', 'Hangar');

            -- Level 2: locaux-industriels
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('locaux-industriels', 'locaux-industriels', 2, l1_id, 'Locaux industriels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('locaux-industriels', 'fr', 'Locaux industriels');
            PERFORM insert_category_translations('locaux-industriels', 'ar', 'محلات صناعية');
            PERFORM insert_category_translations('locaux-industriels', 'en', 'Industrial premises');
            PERFORM insert_category_translations('locaux-industriels', 'de', 'Industrieflächen');
            PERFORM insert_category_translations('locaux-industriels', 'es', 'Locales industriales');
            PERFORM insert_category_translations('locaux-industriels', 'it', 'Locali industriali');

            -- Level 2: ateliers
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ateliers', 'ateliers', 2, l1_id, 'Ateliers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ateliers', 'fr', 'Ateliers');
            PERFORM insert_category_translations('ateliers', 'ar', 'ورش');
            PERFORM insert_category_translations('ateliers', 'en', 'Workshops');
            PERFORM insert_category_translations('ateliers', 'de', 'Werkstätten');
            PERFORM insert_category_translations('ateliers', 'es', 'Talleres');
            PERFORM insert_category_translations('ateliers', 'it', 'Laboratori');

            -- Level 2: zones-logistiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('zones-logistiques', 'zones-logistiques', 2, l1_id, 'Zones logistiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('zones-logistiques', 'fr', 'Zones logistiques');
            PERFORM insert_category_translations('zones-logistiques', 'ar', 'مناطق لوجستية');
            PERFORM insert_category_translations('zones-logistiques', 'en', 'Logistics zones');
            PERFORM insert_category_translations('zones-logistiques', 'de', 'Logistikzonen');
            PERFORM insert_category_translations('zones-logistiques', 'es', 'Zonas logísticas');
            PERFORM insert_category_translations('zones-logistiques', 'it', 'Aree logistiche');

            -- Level 2: bureaux-professionnels
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bureaux-professionnels', 'bureaux-professionnels', 2, l1_id, 'Bureaux professionnels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bureaux-professionnels', 'fr', 'Bureaux professionnels');
            PERFORM insert_category_translations('bureaux-professionnels', 'ar', 'مكاتب مهنية');
            PERFORM insert_category_translations('bureaux-professionnels', 'en', 'Professional offices');
            PERFORM insert_category_translations('bureaux-professionnels', 'de', 'Büroflächen');
            PERFORM insert_category_translations('bureaux-professionnels', 'es', 'Oficinas profesionales');
            PERFORM insert_category_translations('bureaux-professionnels', 'it', 'Uffici professionali');

            -- Level 2: open-spaces
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('open-spaces', 'open-spaces', 2, l1_id, 'Open-spaces')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('open-spaces', 'fr', 'Open-spaces');
            PERFORM insert_category_translations('open-spaces', 'ar', 'مساحات مفتوحة');
            PERFORM insert_category_translations('open-spaces', 'en', 'Open spaces');
            PERFORM insert_category_translations('open-spaces', 'de', 'Open‑Spaces');
            PERFORM insert_category_translations('open-spaces', 'es', 'Espacios abiertos');
            PERFORM insert_category_translations('open-spaces', 'it', 'Open‑space');

            -- Level 2: magasins
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('magasins', 'magasins', 2, l1_id, 'Magasins')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('magasins', 'fr', 'Magasins');
            PERFORM insert_category_translations('magasins', 'ar', 'متاجر');
            PERFORM insert_category_translations('magasins', 'en', 'Shops');
            PERFORM insert_category_translations('magasins', 'de', 'Geschäfte');
            PERFORM insert_category_translations('magasins', 'es', 'Tiendas');
            PERFORM insert_category_translations('magasins', 'it', 'Negozi');

            -- Level 2: restaurants-cafes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('restaurants-cafes', 'restaurants-cafes', 2, l1_id, 'Restaurants & cafés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('restaurants-cafes', 'fr', 'Restaurants & cafés');
            PERFORM insert_category_translations('restaurants-cafes', 'ar', 'مطاعم ومقاهي');
            PERFORM insert_category_translations('restaurants-cafes', 'en', 'Restaurants & cafés');
            PERFORM insert_category_translations('restaurants-cafes', 'de', 'Restaurants & Cafés');
            PERFORM insert_category_translations('restaurants-cafes', 'es', 'Restaurantes y cafés');
            PERFORM insert_category_translations('restaurants-cafes', 'it', 'Ristoranti & caffè');

            -- Level 2: pharmacies
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pharmacies', 'pharmacies', 2, l1_id, 'Pharmacies')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pharmacies', 'fr', 'Pharmacies');
            PERFORM insert_category_translations('pharmacies', 'ar', 'صيدليات');
            PERFORM insert_category_translations('pharmacies', 'en', 'Pharmacies');
            PERFORM insert_category_translations('pharmacies', 'de', 'Apotheken');
            PERFORM insert_category_translations('pharmacies', 'es', 'Farmacias');
            PERFORM insert_category_translations('pharmacies', 'it', 'Farmacie');

            -- Level 2: cabinets-medicaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cabinets-medicaux', 'cabinets-medicaux', 2, l1_id, 'Cabinets médicaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cabinets-medicaux', 'fr', 'Cabinets médicaux');
            PERFORM insert_category_translations('cabinets-medicaux', 'ar', 'عيادات طبية');
            PERFORM insert_category_translations('cabinets-medicaux', 'en', 'Medical practices');
            PERFORM insert_category_translations('cabinets-medicaux', 'de', 'Arztpraxen');
            PERFORM insert_category_translations('cabinets-medicaux', 'es', 'Consultorios médicos');
            PERFORM insert_category_translations('cabinets-medicaux', 'it', 'Studi medici');

        -- Level 1: investissement-immobilier
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('investissement-immobilier', 'investissement-immobilier', 1, root_id, 'Investissement Immobilier')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('investissement-immobilier', 'fr', 'Investissement Immobilier');
        PERFORM insert_category_translations('investissement-immobilier', 'ar', 'استثمار عقاري');
        PERFORM insert_category_translations('investissement-immobilier', 'en', 'Real Estate Investment');
        PERFORM insert_category_translations('investissement-immobilier', 'de', 'Immobilieninvestitionen');
        PERFORM insert_category_translations('investissement-immobilier', 'es', 'Inversión inmobiliaria');
        PERFORM insert_category_translations('investissement-immobilier', 'it', 'Investimenti immobiliari');

            -- Level 2: programmes-neufs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('programmes-neufs', 'programmes-neufs', 2, l1_id, 'Programmes neufs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('programmes-neufs', 'fr', 'Programmes neufs');
            PERFORM insert_category_translations('programmes-neufs', 'ar', 'برامج جديدة');
            PERFORM insert_category_translations('programmes-neufs', 'en', 'New developments');
            PERFORM insert_category_translations('programmes-neufs', 'de', 'Neubauprojekte');
            PERFORM insert_category_translations('programmes-neufs', 'es', 'Programas nuevos');
            PERFORM insert_category_translations('programmes-neufs', 'it', 'Nuovi programmi');

            -- Level 2: logements-promotionnels
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('logements-promotionnels', 'logements-promotionnels', 2, l1_id, 'Logements promotionnels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('logements-promotionnels', 'fr', 'Logements promotionnels');
            PERFORM insert_category_translations('logements-promotionnels', 'ar', 'سكن ترويجي');
            PERFORM insert_category_translations('logements-promotionnels', 'en', 'Promotional housing');
            PERFORM insert_category_translations('logements-promotionnels', 'de', 'Förderwohnungen');
            PERFORM insert_category_translations('logements-promotionnels', 'es', 'Viviendas promocionales');
            PERFORM insert_category_translations('logements-promotionnels', 'it', 'Alloggi promozionali');

            -- Level 2: immobiliers-lpp
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('immobiliers-lpp', 'immobiliers-lpp', 2, l1_id, 'Immobiliers LPP')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('immobiliers-lpp', 'fr', 'Immobiliers LPP');
            PERFORM insert_category_translations('immobiliers-lpp', 'ar', 'عقارات LPP');
            PERFORM insert_category_translations('immobiliers-lpp', 'en', 'LPP housing');
            PERFORM insert_category_translations('immobiliers-lpp', 'de', 'LPP‑Immobilien');
            PERFORM insert_category_translations('immobiliers-lpp', 'es', 'Viviendas LPP');
            PERFORM insert_category_translations('immobiliers-lpp', 'it', 'Immobili LPP');

            -- Level 2: logements-sociaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('logements-sociaux', 'logements-sociaux', 2, l1_id, 'Logements sociaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('logements-sociaux', 'fr', 'Logements sociaux');
            PERFORM insert_category_translations('logements-sociaux', 'ar', 'سكن اجتماعي');
            PERFORM insert_category_translations('logements-sociaux', 'en', 'Social housing');
            PERFORM insert_category_translations('logements-sociaux', 'de', 'Sozialwohnungen');
            PERFORM insert_category_translations('logements-sociaux', 'es', 'Viviendas sociales');
            PERFORM insert_category_translations('logements-sociaux', 'it', 'Alloggi sociali');

            -- Level 2: residences-etudiantes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('residences-etudiantes', 'residences-etudiantes', 2, l1_id, 'Résidences étudiantes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('residences-etudiantes', 'fr', 'Résidences étudiantes');
            PERFORM insert_category_translations('residences-etudiantes', 'ar', 'إقامات طلابية');
            PERFORM insert_category_translations('residences-etudiantes', 'en', 'Student residences');
            PERFORM insert_category_translations('residences-etudiantes', 'de', 'Studentenwohnheime');
            PERFORM insert_category_translations('residences-etudiantes', 'es', 'Residencias estudiantiles');
            PERFORM insert_category_translations('residences-etudiantes', 'it', 'Residenze studentesche');

            -- Level 2: residences-seniors
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('residences-seniors', 'residences-seniors', 2, l1_id, 'Résidences seniors')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('residences-seniors', 'fr', 'Résidences seniors');
            PERFORM insert_category_translations('residences-seniors', 'ar', 'إقامات لكبار السن');
            PERFORM insert_category_translations('residences-seniors', 'en', 'Senior residences');
            PERFORM insert_category_translations('residences-seniors', 'de', 'Seniorenresidenzen');
            PERFORM insert_category_translations('residences-seniors', 'es', 'Residencias para mayores');
            PERFORM insert_category_translations('residences-seniors', 'it', 'Residenze per anziani');

            -- Level 2: biens-locatifs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('biens-locatifs', 'biens-locatifs', 2, l1_id, 'Biens locatifs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('biens-locatifs', 'fr', 'Biens locatifs');
            PERFORM insert_category_translations('biens-locatifs', 'ar', 'عقارات للإيجار');
            PERFORM insert_category_translations('biens-locatifs', 'en', 'Rental properties');
            PERFORM insert_category_translations('biens-locatifs', 'de', 'Mietobjekte');
            PERFORM insert_category_translations('biens-locatifs', 'es', 'Bienes para alquilar');
            PERFORM insert_category_translations('biens-locatifs', 'it', 'Immobili da locazione');

            -- Level 2: immeubles-de-rapport
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('immeubles-de-rapport', 'immeubles-de-rapport', 2, l1_id, 'Immeubles de rapport')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('immeubles-de-rapport', 'fr', 'Immeubles de rapport');
            PERFORM insert_category_translations('immeubles-de-rapport', 'ar', 'عمارات دخل');
            PERFORM insert_category_translations('immeubles-de-rapport', 'en', 'Yield buildings');
            PERFORM insert_category_translations('immeubles-de-rapport', 'de', 'Ertragsimmobilien');
            PERFORM insert_category_translations('immeubles-de-rapport', 'es', 'Edificios de renta');
            PERFORM insert_category_translations('immeubles-de-rapport', 'it', 'Immobili a reddito');

            -- Level 2: terrains-promotionnels
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('terrains-promotionnels', 'terrains-promotionnels', 2, l1_id, 'Terrains promotionnels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('terrains-promotionnels', 'fr', 'Terrains promotionnels');
            PERFORM insert_category_translations('terrains-promotionnels', 'ar', 'أراضٍ ترويجية');
            PERFORM insert_category_translations('terrains-promotionnels', 'en', 'Promotional land');
            PERFORM insert_category_translations('terrains-promotionnels', 'de', 'Fördergrundstücke');
            PERFORM insert_category_translations('terrains-promotionnels', 'es', 'Terrenos promocionales');
            PERFORM insert_category_translations('terrains-promotionnels', 'it', 'Terreni promozionali');

        -- Level 1: maison-mobilier-interieur
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('maison-mobilier-interieur', 'maison-mobilier-interieur', 1, root_id, 'Maison & Mobilier Intérieur')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('maison-mobilier-interieur', 'fr', 'Maison & Mobilier Intérieur');
        PERFORM insert_category_translations('maison-mobilier-interieur', 'ar', 'المنزل والأثاث الداخلي');
        PERFORM insert_category_translations('maison-mobilier-interieur', 'en', 'Home & Interior Furniture');
        PERFORM insert_category_translations('maison-mobilier-interieur', 'de', 'Haus & Inneneinrichtung');
        PERFORM insert_category_translations('maison-mobilier-interieur', 'es', 'Hogar y mobiliario interior');
        PERFORM insert_category_translations('maison-mobilier-interieur', 'it', 'Casa & arredamento interno');

            -- Level 2: salons-canapes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('salons-canapes', 'salons-canapes', 2, l1_id, 'Salons & canapés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('salons-canapes', 'fr', 'Salons & canapés');
            PERFORM insert_category_translations('salons-canapes', 'ar', 'صالات وجلوس');
            PERFORM insert_category_translations('salons-canapes', 'en', 'Living rooms & sofas');
            PERFORM insert_category_translations('salons-canapes', 'de', 'Wohnzimmer & Sofas');
            PERFORM insert_category_translations('salons-canapes', 'es', 'Salones y sofás');
            PERFORM insert_category_translations('salons-canapes', 'it', 'Soggiorni & divani');

            -- Level 2: tables-chaises
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tables-chaises', 'tables-chaises', 2, l1_id, 'Tables & chaises')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tables-chaises', 'fr', 'Tables & chaises');
            PERFORM insert_category_translations('tables-chaises', 'ar', 'طاولات وكراسي');
            PERFORM insert_category_translations('tables-chaises', 'en', 'Tables & chairs');
            PERFORM insert_category_translations('tables-chaises', 'de', 'Tische & Stühle');
            PERFORM insert_category_translations('tables-chaises', 'es', 'Mesas y sillas');
            PERFORM insert_category_translations('tables-chaises', 'it', 'Tavoli & sedie');

            -- Level 2: armoires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('armoires', 'armoires', 2, l1_id, 'Armoires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('armoires', 'fr', 'Armoires');
            PERFORM insert_category_translations('armoires', 'ar', 'خزائن');
            PERFORM insert_category_translations('armoires', 'en', 'Wardrobes');
            PERFORM insert_category_translations('armoires', 'de', 'Schränke');
            PERFORM insert_category_translations('armoires', 'es', 'Armarios');
            PERFORM insert_category_translations('armoires', 'it', 'Armadi');

            -- Level 2: dressings
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('dressings', 'dressings', 2, l1_id, 'Dressings')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('dressings', 'fr', 'Dressings');
            PERFORM insert_category_translations('dressings', 'ar', 'غرف تبديل الملابس');
            PERFORM insert_category_translations('dressings', 'en', 'Closets');
            PERFORM insert_category_translations('dressings', 'de', 'Kleiderschränke');
            PERFORM insert_category_translations('dressings', 'es', 'Vestidores');
            PERFORM insert_category_translations('dressings', 'it', 'Cabine armadio');

            -- Level 2: lits-matelas
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lits-matelas', 'lits-matelas', 2, l1_id, 'Lits & matelas')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lits-matelas', 'fr', 'Lits & matelas');
            PERFORM insert_category_translations('lits-matelas', 'ar', 'أسرة ومراتب');
            PERFORM insert_category_translations('lits-matelas', 'en', 'Beds & mattresses');
            PERFORM insert_category_translations('lits-matelas', 'de', 'Betten & Matratzen');
            PERFORM insert_category_translations('lits-matelas', 'es', 'Camas y colchones');
            PERFORM insert_category_translations('lits-matelas', 'it', 'Letti & materassi');

            -- Level 2: meubles-tv
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('meubles-tv', 'meubles-tv', 2, l1_id, 'Meubles TV')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('meubles-tv', 'fr', 'Meubles TV');
            PERFORM insert_category_translations('meubles-tv', 'ar', 'أثاث التلفاز');
            PERFORM insert_category_translations('meubles-tv', 'en', 'TV furniture');
            PERFORM insert_category_translations('meubles-tv', 'de', 'TV‑Möbel');
            PERFORM insert_category_translations('meubles-tv', 'es', 'Muebles TV');
            PERFORM insert_category_translations('meubles-tv', 'it', 'Mobili TV');

            -- Level 2: buffets-commodes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('buffets-commodes', 'buffets-commodes', 2, l1_id, 'Buffets & commodes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('buffets-commodes', 'fr', 'Buffets & commodes');
            PERFORM insert_category_translations('buffets-commodes', 'ar', 'بوفيهات وكمود');
            PERFORM insert_category_translations('buffets-commodes', 'en', 'Sideboards & dressers');
            PERFORM insert_category_translations('buffets-commodes', 'de', 'Anrichten & Kommoden');
            PERFORM insert_category_translations('buffets-commodes', 'es', 'Buffets y cómodas');
            PERFORM insert_category_translations('buffets-commodes', 'it', 'Credenze & comò');

            -- Level 2: bibliotheques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bibliotheques', 'bibliotheques', 2, l1_id, 'Bibliothèques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bibliotheques', 'fr', 'Bibliothèques');
            PERFORM insert_category_translations('bibliotheques', 'ar', 'مكتبات');
            PERFORM insert_category_translations('bibliotheques', 'en', 'Bookcases');
            PERFORM insert_category_translations('bibliotheques', 'de', 'Bücherregale');
            PERFORM insert_category_translations('bibliotheques', 'es', 'Librerías');
            PERFORM insert_category_translations('bibliotheques', 'it', 'Librerie');

            -- Level 2: meubles-enfants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('meubles-enfants', 'meubles-enfants', 2, l1_id, 'Meubles enfants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('meubles-enfants', 'fr', 'Meubles enfants');
            PERFORM insert_category_translations('meubles-enfants', 'ar', 'أثاث الأطفال');
            PERFORM insert_category_translations('meubles-enfants', 'en', 'Kids’ furniture');
            PERFORM insert_category_translations('meubles-enfants', 'de', 'Kindermöbel');
            PERFORM insert_category_translations('meubles-enfants', 'es', 'Muebles infantiles');
            PERFORM insert_category_translations('meubles-enfants', 'it', 'Mobili bambini');

            -- Level 2: petits-meubles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('petits-meubles', 'petits-meubles', 2, l1_id, 'Petits meubles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('petits-meubles', 'fr', 'Petits meubles');
            PERFORM insert_category_translations('petits-meubles', 'ar', 'أثاث صغير');
            PERFORM insert_category_translations('petits-meubles', 'en', 'Small furniture');
            PERFORM insert_category_translations('petits-meubles', 'de', 'Kleinmöbel');
            PERFORM insert_category_translations('petits-meubles', 'es', 'Muebles pequeños');
            PERFORM insert_category_translations('petits-meubles', 'it', 'Piccoli mobili');

            -- Level 2: rangements
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('rangements', 'rangements', 2, l1_id, 'Rangements')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('rangements', 'fr', 'Rangements');
            PERFORM insert_category_translations('rangements', 'ar', 'تخزين وتنظيم');
            PERFORM insert_category_translations('rangements', 'en', 'Storage');
            PERFORM insert_category_translations('rangements', 'de', 'Aufbewahrung');
            PERFORM insert_category_translations('rangements', 'es', 'Almacenaje');
            PERFORM insert_category_translations('rangements', 'it', 'Sistemi di contenimento');

        -- Level 1: decoration-accessoires-maison
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('decoration-accessoires-maison', 'decoration-accessoires-maison', 1, root_id, 'Décoration & Accessoires Maison')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('decoration-accessoires-maison', 'fr', 'Décoration & Accessoires Maison');
        PERFORM insert_category_translations('decoration-accessoires-maison', 'ar', 'ديكور وإكسسوارات المنزل');
        PERFORM insert_category_translations('decoration-accessoires-maison', 'en', 'Home Decor & Accessories');
        PERFORM insert_category_translations('decoration-accessoires-maison', 'de', 'Deko & Wohnaccessoires');
        PERFORM insert_category_translations('decoration-accessoires-maison', 'es', 'Decoración y accesorios hogar');
        PERFORM insert_category_translations('decoration-accessoires-maison', 'it', 'Decorazione & accessori casa');

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

            -- Level 2: rideaux-voilages
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('rideaux-voilages', 'rideaux-voilages', 2, l1_id, 'Rideaux & voilages')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('rideaux-voilages', 'fr', 'Rideaux & voilages');
            PERFORM insert_category_translations('rideaux-voilages', 'ar', 'ستائر وحواجز');
            PERFORM insert_category_translations('rideaux-voilages', 'en', 'Curtains & sheers');
            PERFORM insert_category_translations('rideaux-voilages', 'de', 'Vorhänge & Stores');
            PERFORM insert_category_translations('rideaux-voilages', 'es', 'Cortinas y visillos');
            PERFORM insert_category_translations('rideaux-voilages', 'it', 'Tende & veli');

            -- Level 2: luminaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('luminaires', 'luminaires', 2, l1_id, 'Luminaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('luminaires', 'fr', 'Luminaires');
            PERFORM insert_category_translations('luminaires', 'ar', 'إضاءة');
            PERFORM insert_category_translations('luminaires', 'en', 'Lighting');
            PERFORM insert_category_translations('luminaires', 'de', 'Leuchten');
            PERFORM insert_category_translations('luminaires', 'es', 'Iluminación');
            PERFORM insert_category_translations('luminaires', 'it', 'Illuminazione');

            -- Level 2: cadres-tableaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cadres-tableaux', 'cadres-tableaux', 2, l1_id, 'Cadres & tableaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cadres-tableaux', 'fr', 'Cadres & tableaux');
            PERFORM insert_category_translations('cadres-tableaux', 'ar', 'إطارات ولوحات');
            PERFORM insert_category_translations('cadres-tableaux', 'en', 'Frames & paintings');
            PERFORM insert_category_translations('cadres-tableaux', 'de', 'Rahmen & Bilder');
            PERFORM insert_category_translations('cadres-tableaux', 'es', 'Marcos y cuadros');
            PERFORM insert_category_translations('cadres-tableaux', 'it', 'Cornici & quadri');

            -- Level 2: miroirs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('miroirs', 'miroirs', 2, l1_id, 'Miroirs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('miroirs', 'fr', 'Miroirs');
            PERFORM insert_category_translations('miroirs', 'ar', 'مرايا');
            PERFORM insert_category_translations('miroirs', 'en', 'Mirrors');
            PERFORM insert_category_translations('miroirs', 'de', 'Spiegel');
            PERFORM insert_category_translations('miroirs', 'es', 'Espejos');
            PERFORM insert_category_translations('miroirs', 'it', 'Specchi');

            -- Level 2: horloges
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('horloges', 'horloges', 2, l1_id, 'Horloges')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('horloges', 'fr', 'Horloges');
            PERFORM insert_category_translations('horloges', 'ar', 'ساعات');
            PERFORM insert_category_translations('horloges', 'en', 'Clocks');
            PERFORM insert_category_translations('horloges', 'de', 'Uhren');
            PERFORM insert_category_translations('horloges', 'es', 'Relojes');
            PERFORM insert_category_translations('horloges', 'it', 'Orologi');

            -- Level 2: accessoires-decoratifs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-decoratifs', 'accessoires-decoratifs', 2, l1_id, 'Accessoires décoratifs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('accessoires-decoratifs', 'fr', 'Accessoires décoratifs');
            PERFORM insert_category_translations('accessoires-decoratifs', 'ar', 'إكسسوارات ديكور');
            PERFORM insert_category_translations('accessoires-decoratifs', 'en', 'Decorative accessories');
            PERFORM insert_category_translations('accessoires-decoratifs', 'de', 'Deko‑Accessoires');
            PERFORM insert_category_translations('accessoires-decoratifs', 'es', 'Accesorios decorativos');
            PERFORM insert_category_translations('accessoires-decoratifs', 'it', 'Accessori decorativi');

            -- Level 2: stickers-muraux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('stickers-muraux', 'stickers-muraux', 2, l1_id, 'Stickers muraux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('stickers-muraux', 'fr', 'Stickers muraux');
            PERFORM insert_category_translations('stickers-muraux', 'ar', 'ملصقات جدارية');
            PERFORM insert_category_translations('stickers-muraux', 'en', 'Wall stickers');
            PERFORM insert_category_translations('stickers-muraux', 'de', 'Wandsticker');
            PERFORM insert_category_translations('stickers-muraux', 'es', 'Pegatinas de pared');
            PERFORM insert_category_translations('stickers-muraux', 'it', 'Adesivi murali');

            -- Level 2: coussins-textiles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('coussins-textiles', 'coussins-textiles', 2, l1_id, 'Coussins & textiles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('coussins-textiles', 'fr', 'Coussins & textiles');
            PERFORM insert_category_translations('coussins-textiles', 'ar', 'وسائد ومنسوجات');
            PERFORM insert_category_translations('coussins-textiles', 'en', 'Cushions & textiles');
            PERFORM insert_category_translations('coussins-textiles', 'de', 'Kissen & Textilien');
            PERFORM insert_category_translations('coussins-textiles', 'es', 'Cojines y textiles');
            PERFORM insert_category_translations('coussins-textiles', 'it', 'Cuscini & tessili');

            -- Level 2: vases-decor-floral
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vases-decor-floral', 'vases-decor-floral', 2, l1_id, 'Vases & décor floral')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('vases-decor-floral', 'fr', 'Vases & décor floral');
            PERFORM insert_category_translations('vases-decor-floral', 'ar', 'مزهريات وديكور زهري');
            PERFORM insert_category_translations('vases-decor-floral', 'en', 'Vases & floral decor');
            PERFORM insert_category_translations('vases-decor-floral', 'de', 'Vasen & Blumendeko');
            PERFORM insert_category_translations('vases-decor-floral', 'es', 'Jarrones y decoración floral');
            PERFORM insert_category_translations('vases-decor-floral', 'it', 'Vasi & decorazione floreale');

        -- Level 1: cuisine-salle-de-bain
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cuisine-salle-de-bain', 'cuisine-salle-de-bain', 1, root_id, 'Cuisine & Salle de Bain')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('cuisine-salle-de-bain', 'fr', 'Cuisine & Salle de Bain');
        PERFORM insert_category_translations('cuisine-salle-de-bain', 'ar', 'المطبخ والحمام');
        PERFORM insert_category_translations('cuisine-salle-de-bain', 'en', 'Kitchen & Bathroom');
        PERFORM insert_category_translations('cuisine-salle-de-bain', 'de', 'Küche & Bad');
        PERFORM insert_category_translations('cuisine-salle-de-bain', 'es', 'Cocina y baño');
        PERFORM insert_category_translations('cuisine-salle-de-bain', 'it', 'Cucina & bagno');

            -- Level 2: ustensiles-de-cuisine
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ustensiles-de-cuisine', 'ustensiles-de-cuisine', 2, l1_id, 'Ustensiles de cuisine')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ustensiles-de-cuisine', 'fr', 'Ustensiles de cuisine');
            PERFORM insert_category_translations('ustensiles-de-cuisine', 'ar', 'أدوات المطبخ');
            PERFORM insert_category_translations('ustensiles-de-cuisine', 'en', 'Kitchen utensils');
            PERFORM insert_category_translations('ustensiles-de-cuisine', 'de', 'Küchenutensilien');
            PERFORM insert_category_translations('ustensiles-de-cuisine', 'es', 'Utensilios de cocina');
            PERFORM insert_category_translations('ustensiles-de-cuisine', 'it', 'Utensili da cucina');

            -- Level 2: casseroles-poeles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('casseroles-poeles', 'casseroles-poeles', 2, l1_id, 'Casseroles & poêles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('casseroles-poeles', 'fr', 'Casseroles & poêles');
            PERFORM insert_category_translations('casseroles-poeles', 'ar', 'قدور ومقالي');
            PERFORM insert_category_translations('casseroles-poeles', 'en', 'Pots & pans');
            PERFORM insert_category_translations('casseroles-poeles', 'de', 'Töpfe & Pfannen');
            PERFORM insert_category_translations('casseroles-poeles', 'es', 'Cazuelas y sartenes');
            PERFORM insert_category_translations('casseroles-poeles', 'it', 'Pentole & padelle');

            -- Level 2: vaisselle
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vaisselle', 'vaisselle', 2, l1_id, 'Vaisselle')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('vaisselle', 'fr', 'Vaisselle');
            PERFORM insert_category_translations('vaisselle', 'ar', 'أواني');
            PERFORM insert_category_translations('vaisselle', 'en', 'Tableware');
            PERFORM insert_category_translations('vaisselle', 'de', 'Geschirr');
            PERFORM insert_category_translations('vaisselle', 'es', 'Vajilla');
            PERFORM insert_category_translations('vaisselle', 'it', 'Stoviglie');

            -- Level 2: couverts
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('couverts', 'couverts', 2, l1_id, 'Couverts')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('couverts', 'fr', 'Couverts');
            PERFORM insert_category_translations('couverts', 'ar', 'أدوات المائدة');
            PERFORM insert_category_translations('couverts', 'en', 'Cutlery');
            PERFORM insert_category_translations('couverts', 'de', 'Besteck');
            PERFORM insert_category_translations('couverts', 'es', 'Cubiertos');
            PERFORM insert_category_translations('couverts', 'it', 'Posate');

            -- Level 2: robots-de-cuisine
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('robots-de-cuisine', 'robots-de-cuisine', 2, l1_id, 'Robots de cuisine')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('robots-de-cuisine', 'fr', 'Robots de cuisine');
            PERFORM insert_category_translations('robots-de-cuisine', 'ar', 'أجهزة المطبخ');
            PERFORM insert_category_translations('robots-de-cuisine', 'en', 'Kitchen robots');
            PERFORM insert_category_translations('robots-de-cuisine', 'de', 'Küchenmaschinen');
            PERFORM insert_category_translations('robots-de-cuisine', 'es', 'Robots de cocina');
            PERFORM insert_category_translations('robots-de-cuisine', 'it', 'Robot da cucina');

            -- Level 2: plaques-fours
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('plaques-fours', 'plaques-fours', 2, l1_id, 'Plaques & fours')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('plaques-fours', 'fr', 'Plaques & fours');
            PERFORM insert_category_translations('plaques-fours', 'ar', 'مواقد وأفران');
            PERFORM insert_category_translations('plaques-fours', 'en', 'Cooktops & ovens');
            PERFORM insert_category_translations('plaques-fours', 'de', 'Kochfelder & Öfen');
            PERFORM insert_category_translations('plaques-fours', 'es', 'Placas y hornos');
            PERFORM insert_category_translations('plaques-fours', 'it', 'Piani cottura & forni');

            -- Level 2: equipements-sanitaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('equipements-sanitaires', 'equipements-sanitaires', 2, l1_id, 'Équipements sanitaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('equipements-sanitaires', 'fr', 'Équipements sanitaires');
            PERFORM insert_category_translations('equipements-sanitaires', 'ar', 'معدات صحية');
            PERFORM insert_category_translations('equipements-sanitaires', 'en', 'Sanitary equipment');
            PERFORM insert_category_translations('equipements-sanitaires', 'de', 'Sanitärausstattung');
            PERFORM insert_category_translations('equipements-sanitaires', 'es', 'Equipos sanitarios');
            PERFORM insert_category_translations('equipements-sanitaires', 'it', 'Sanitari');

            -- Level 2: baignoires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('baignoires', 'baignoires', 2, l1_id, 'Baignoires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('baignoires', 'fr', 'Baignoires');
            PERFORM insert_category_translations('baignoires', 'ar', 'أحواض استحمام');
            PERFORM insert_category_translations('baignoires', 'en', 'Bathtubs');
            PERFORM insert_category_translations('baignoires', 'de', 'Badewannen');
            PERFORM insert_category_translations('baignoires', 'es', 'Bañeras');
            PERFORM insert_category_translations('baignoires', 'it', 'Vasche');

            -- Level 2: douches
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('douches', 'douches', 2, l1_id, 'Douches')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('douches', 'fr', 'Douches');
            PERFORM insert_category_translations('douches', 'ar', 'دش');
            PERFORM insert_category_translations('douches', 'en', 'Showers');
            PERFORM insert_category_translations('douches', 'de', 'Duschen');
            PERFORM insert_category_translations('douches', 'es', 'Duchas');
            PERFORM insert_category_translations('douches', 'it', 'Docce');

            -- Level 2: lavabos
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lavabos', 'lavabos', 2, l1_id, 'Lavabos')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lavabos', 'fr', 'Lavabos');
            PERFORM insert_category_translations('lavabos', 'ar', 'مغاسل');
            PERFORM insert_category_translations('lavabos', 'en', 'Sinks');
            PERFORM insert_category_translations('lavabos', 'de', 'Waschbecken');
            PERFORM insert_category_translations('lavabos', 'es', 'Lavabos');
            PERFORM insert_category_translations('lavabos', 'it', 'Lavabi');

            -- Level 2: robinetterie
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('robinetterie', 'robinetterie', 2, l1_id, 'Robinetterie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('robinetterie', 'fr', 'Robinetterie');
            PERFORM insert_category_translations('robinetterie', 'ar', 'خلاطات ومحابس');
            PERFORM insert_category_translations('robinetterie', 'en', 'Faucets');
            PERFORM insert_category_translations('robinetterie', 'de', 'Armaturen');
            PERFORM insert_category_translations('robinetterie', 'es', 'Grifería');
            PERFORM insert_category_translations('robinetterie', 'it', 'Rubinetteria');

            -- Level 2: meubles-de-salle-de-bain
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('meubles-de-salle-de-bain', 'meubles-de-salle-de-bain', 2, l1_id, 'Meubles de salle de bain')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('meubles-de-salle-de-bain', 'fr', 'Meubles de salle de bain');
            PERFORM insert_category_translations('meubles-de-salle-de-bain', 'ar', 'أثاث الحمام');
            PERFORM insert_category_translations('meubles-de-salle-de-bain', 'en', 'Bathroom furniture');
            PERFORM insert_category_translations('meubles-de-salle-de-bain', 'de', 'Badezimmermöbel');
            PERFORM insert_category_translations('meubles-de-salle-de-bain', 'es', 'Muebles de baño');
            PERFORM insert_category_translations('meubles-de-salle-de-bain', 'it', 'Mobili bagno');

        -- Level 1: jardin-exterieur
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jardin-exterieur', 'jardin-exterieur', 1, root_id, 'Jardin & Extérieur')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('jardin-exterieur', 'fr', 'Jardin & Extérieur');
        PERFORM insert_category_translations('jardin-exterieur', 'ar', 'الحديقة والخارج');
        PERFORM insert_category_translations('jardin-exterieur', 'en', 'Garden & Outdoor');
        PERFORM insert_category_translations('jardin-exterieur', 'de', 'Garten & Außenbereich');
        PERFORM insert_category_translations('jardin-exterieur', 'es', 'Jardín y exterior');
        PERFORM insert_category_translations('jardin-exterieur', 'it', 'Giardino & esterni');

            -- Level 2: mobilier-de-jardin
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mobilier-de-jardin', 'mobilier-de-jardin', 2, l1_id, 'Mobilier de jardin')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mobilier-de-jardin', 'fr', 'Mobilier de jardin');
            PERFORM insert_category_translations('mobilier-de-jardin', 'ar', 'أثاث الحديقة');
            PERFORM insert_category_translations('mobilier-de-jardin', 'en', 'Garden furniture');
            PERFORM insert_category_translations('mobilier-de-jardin', 'de', 'Gartenmöbel');
            PERFORM insert_category_translations('mobilier-de-jardin', 'es', 'Mobiliario de jardín');
            PERFORM insert_category_translations('mobilier-de-jardin', 'it', 'Arredo giardino');

            -- Level 2: salons-exterieurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('salons-exterieurs', 'salons-exterieurs', 2, l1_id, 'Salons extérieurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('salons-exterieurs', 'fr', 'Salons extérieurs');
            PERFORM insert_category_translations('salons-exterieurs', 'ar', 'جلسات خارجية');
            PERFORM insert_category_translations('salons-exterieurs', 'en', 'Outdoor lounges');
            PERFORM insert_category_translations('salons-exterieurs', 'de', 'Outdoor‑Sitzgruppen');
            PERFORM insert_category_translations('salons-exterieurs', 'es', 'Salones exteriores');
            PERFORM insert_category_translations('salons-exterieurs', 'it', 'Salotti da esterno');

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

            -- Level 2: barbecues
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('barbecues', 'barbecues', 2, l1_id, 'Barbecues')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('barbecues', 'fr', 'Barbecues');
            PERFORM insert_category_translations('barbecues', 'ar', 'شوايات');
            PERFORM insert_category_translations('barbecues', 'en', 'Barbecues');
            PERFORM insert_category_translations('barbecues', 'de', 'Grills');
            PERFORM insert_category_translations('barbecues', 'es', 'Barbacoas');
            PERFORM insert_category_translations('barbecues', 'it', 'Barbecue');

            -- Level 2: tondeuses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tondeuses', 'tondeuses', 2, l1_id, 'Tondeuses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tondeuses', 'fr', 'Tondeuses');
            PERFORM insert_category_translations('tondeuses', 'ar', 'جزازات عشب');
            PERFORM insert_category_translations('tondeuses', 'en', 'Lawn mowers');
            PERFORM insert_category_translations('tondeuses', 'de', 'Rasenmäher');
            PERFORM insert_category_translations('tondeuses', 'es', 'Cortacésped');
            PERFORM insert_category_translations('tondeuses', 'it', 'Tosaerba');

            -- Level 2: debroussailleuses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('debroussailleuses', 'debroussailleuses', 2, l1_id, 'Débroussailleuses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('debroussailleuses', 'fr', 'Débroussailleuses');
            PERFORM insert_category_translations('debroussailleuses', 'ar', 'مزيلات أعشاب');
            PERFORM insert_category_translations('debroussailleuses', 'en', 'Brushcutters');
            PERFORM insert_category_translations('debroussailleuses', 'de', 'Freischneider');
            PERFORM insert_category_translations('debroussailleuses', 'es', 'Desbrozadoras');
            PERFORM insert_category_translations('debroussailleuses', 'it', 'Decespugliatori');

            -- Level 2: tronconneuses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tronconneuses', 'tronconneuses', 2, l1_id, 'Tronçonneuses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tronconneuses', 'fr', 'Tronçonneuses');
            PERFORM insert_category_translations('tronconneuses', 'ar', 'مناشير');
            PERFORM insert_category_translations('tronconneuses', 'en', 'Chainsaws');
            PERFORM insert_category_translations('tronconneuses', 'de', 'Kettensägen');
            PERFORM insert_category_translations('tronconneuses', 'es', 'Motosierras');
            PERFORM insert_category_translations('tronconneuses', 'it', 'Motoseghe');

            -- Level 2: outils-de-jardinage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('outils-de-jardinage', 'outils-de-jardinage', 2, l1_id, 'Outils de jardinage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('outils-de-jardinage', 'fr', 'Outils de jardinage');
            PERFORM insert_category_translations('outils-de-jardinage', 'ar', 'أدوات البستنة');
            PERFORM insert_category_translations('outils-de-jardinage', 'en', 'Gardening tools');
            PERFORM insert_category_translations('outils-de-jardinage', 'de', 'Gartengeräte');
            PERFORM insert_category_translations('outils-de-jardinage', 'es', 'Herramientas de jardín');
            PERFORM insert_category_translations('outils-de-jardinage', 'it', 'Attrezzi da giardinaggio');

            -- Level 2: pots-jardinieres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pots-jardinieres', 'pots-jardinieres', 2, l1_id, 'Pots & jardinières')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pots-jardinieres', 'fr', 'Pots & jardinières');
            PERFORM insert_category_translations('pots-jardinieres', 'ar', 'أصص وزروع');
            PERFORM insert_category_translations('pots-jardinieres', 'en', 'Pots & planters');
            PERFORM insert_category_translations('pots-jardinieres', 'de', 'Töpfe & Pflanzkübel');
            PERFORM insert_category_translations('pots-jardinieres', 'es', 'Macetas y jardineras');
            PERFORM insert_category_translations('pots-jardinieres', 'it', 'Vasi & fioriere');

            -- Level 2: serres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('serres', 'serres', 2, l1_id, 'Serres')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('serres', 'fr', 'Serres');
            PERFORM insert_category_translations('serres', 'ar', 'بيوت زجاجية');
            PERFORM insert_category_translations('serres', 'en', 'Greenhouses');
            PERFORM insert_category_translations('serres', 'de', 'Gewächshäuser');
            PERFORM insert_category_translations('serres', 'es', 'Invernaderos');
            PERFORM insert_category_translations('serres', 'it', 'Serre');

            -- Level 2: piscines-accessoires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('piscines-accessoires', 'piscines-accessoires', 2, l1_id, 'Piscines & accessoires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('piscines-accessoires', 'fr', 'Piscines & accessoires');
            PERFORM insert_category_translations('piscines-accessoires', 'ar', 'مسابح وإكسسوارات');
            PERFORM insert_category_translations('piscines-accessoires', 'en', 'Pools & accessories');
            PERFORM insert_category_translations('piscines-accessoires', 'de', 'Pools & Zubehör');
            PERFORM insert_category_translations('piscines-accessoires', 'es', 'Piscinas y accesorios');
            PERFORM insert_category_translations('piscines-accessoires', 'it', 'Piscine & accessori');

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

        -- Level 1: bricolage-amelioration-maison
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bricolage-amelioration-maison', 'bricolage-amelioration-maison', 1, root_id, 'Bricolage & Amélioration Maison')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('bricolage-amelioration-maison', 'fr', 'Bricolage & Amélioration Maison');
        PERFORM insert_category_translations('bricolage-amelioration-maison', 'ar', 'أعمال منزلية وتحسين المسكن');
        PERFORM insert_category_translations('bricolage-amelioration-maison', 'en', 'DIY & Home Improvement');
        PERFORM insert_category_translations('bricolage-amelioration-maison', 'de', 'Heimwerken & Hausverbesserung');
        PERFORM insert_category_translations('bricolage-amelioration-maison', 'es', 'Bricolaje y mejora del hogar');
        PERFORM insert_category_translations('bricolage-amelioration-maison', 'it', 'Fai da te & miglioramento casa');

            -- Level 2: outils-electroportatifs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('outils-electroportatifs', 'outils-electroportatifs', 2, l1_id, 'Outils électroportatifs (perceuses, visseuses, meuleuses)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('outils-electroportatifs', 'fr', 'Outils électroportatifs (perceuses, visseuses, meuleuses)');
            PERFORM insert_category_translations('outils-electroportatifs', 'ar', 'أدوات كهربائية (مثاقب، مفكات، جلاخات)');
            PERFORM insert_category_translations('outils-electroportatifs', 'en', 'Power tools (drills, screwdrivers, grinders)');
            PERFORM insert_category_translations('outils-electroportatifs', 'de', 'Elektrowerkzeuge (Bohrer, Schrauber, Schleifer)');
            PERFORM insert_category_translations('outils-electroportatifs', 'es', 'Herramientas eléctricas (taladros, atornilladores, amoladoras)');
            PERFORM insert_category_translations('outils-electroportatifs', 'it', 'Utensili elettrici (trapani, avvitatori, smerigliatrici)');

            -- Level 2: outils-a-main
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('outils-a-main', 'outils-a-main', 2, l1_id, 'Outils à main')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('outils-a-main', 'fr', 'Outils à main');
            PERFORM insert_category_translations('outils-a-main', 'ar', 'أدوات يدوية');
            PERFORM insert_category_translations('outils-a-main', 'en', 'Hand tools');
            PERFORM insert_category_translations('outils-a-main', 'de', 'Handwerkzeuge');
            PERFORM insert_category_translations('outils-a-main', 'es', 'Herramientas manuales');
            PERFORM insert_category_translations('outils-a-main', 'it', 'Utensili manuali');

            -- Level 2: peinture
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('peinture', 'peinture', 2, l1_id, 'Peinture')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('peinture', 'fr', 'Peinture');
            PERFORM insert_category_translations('peinture', 'ar', 'دهان');
            PERFORM insert_category_translations('peinture', 'en', 'Paint');
            PERFORM insert_category_translations('peinture', 'de', 'Farbe');
            PERFORM insert_category_translations('peinture', 'es', 'Pintura');
            PERFORM insert_category_translations('peinture', 'it', 'Vernici');

            -- Level 2: revetements-murs-sols
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('revetements-murs-sols', 'revetements-murs-sols', 2, l1_id, 'Revêtements murs & sols')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('revetements-murs-sols', 'fr', 'Revêtements murs & sols');
            PERFORM insert_category_translations('revetements-murs-sols', 'ar', 'كسوة الجدران والأرضيات');
            PERFORM insert_category_translations('revetements-murs-sols', 'en', 'Wall & floor coverings');
            PERFORM insert_category_translations('revetements-murs-sols', 'de', 'Wand- & Bodenbeläge');
            PERFORM insert_category_translations('revetements-murs-sols', 'es', 'Revestimientos de paredes y suelos');
            PERFORM insert_category_translations('revetements-murs-sols', 'it', 'Rivestimenti pareti & pavimenti');

            -- Level 2: parquet
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('parquet', 'parquet', 2, l1_id, 'Parquet')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('parquet', 'fr', 'Parquet');
            PERFORM insert_category_translations('parquet', 'ar', 'باركيه');
            PERFORM insert_category_translations('parquet', 'en', 'Parquet');
            PERFORM insert_category_translations('parquet', 'de', 'Parkett');
            PERFORM insert_category_translations('parquet', 'es', 'Parqué');
            PERFORM insert_category_translations('parquet', 'it', 'Parquet');

            -- Level 2: carrelage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('carrelage', 'carrelage', 2, l1_id, 'Carrelage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('carrelage', 'fr', 'Carrelage');
            PERFORM insert_category_translations('carrelage', 'ar', 'بلاط');
            PERFORM insert_category_translations('carrelage', 'en', 'Tiles');
            PERFORM insert_category_translations('carrelage', 'de', 'Fliesen');
            PERFORM insert_category_translations('carrelage', 'es', 'Azulejos');
            PERFORM insert_category_translations('carrelage', 'it', 'Piastrelle');

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
            PERFORM insert_category_translations('electricite', 'en', 'Electricity');
            PERFORM insert_category_translations('electricite', 'de', 'Elektrik');
            PERFORM insert_category_translations('electricite', 'es', 'Electricidad');
            PERFORM insert_category_translations('electricite', 'it', 'Elettricità');

            -- Level 2: isolation
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('isolation', 'isolation', 2, l1_id, 'Isolation')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('isolation', 'fr', 'Isolation');
            PERFORM insert_category_translations('isolation', 'ar', 'عزل');
            PERFORM insert_category_translations('isolation', 'en', 'Insulation');
            PERFORM insert_category_translations('isolation', 'de', 'Dämmung');
            PERFORM insert_category_translations('isolation', 'es', 'Aislamiento');
            PERFORM insert_category_translations('isolation', 'it', 'Isolamento');

            -- Level 2: materiaux-de-construction
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('materiaux-de-construction', 'materiaux-de-construction', 2, l1_id, 'Matériaux de construction')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('materiaux-de-construction', 'fr', 'Matériaux de construction');
            PERFORM insert_category_translations('materiaux-de-construction', 'ar', 'مواد البناء');
            PERFORM insert_category_translations('materiaux-de-construction', 'en', 'Building materials');
            PERFORM insert_category_translations('materiaux-de-construction', 'de', 'Baumaterialien');
            PERFORM insert_category_translations('materiaux-de-construction', 'es', 'Materiales de construcción');
            PERFORM insert_category_translations('materiaux-de-construction', 'it', 'Materiali da costruzione');

            -- Level 2: portes-fenetres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('portes-fenetres', 'portes-fenetres', 2, l1_id, 'Portes & fenêtres')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('portes-fenetres', 'fr', 'Portes & fenêtres');
            PERFORM insert_category_translations('portes-fenetres', 'ar', 'أبواب ونوافذ');
            PERFORM insert_category_translations('portes-fenetres', 'en', 'Doors & windows');
            PERFORM insert_category_translations('portes-fenetres', 'de', 'Türen & Fenster');
            PERFORM insert_category_translations('portes-fenetres', 'es', 'Puertas y ventanas');
            PERFORM insert_category_translations('portes-fenetres', 'it', 'Porte & finestre');

        -- Level 1: securite-maison
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('securite-maison', 'securite-maison', 1, root_id, 'Sécurité Maison')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('securite-maison', 'fr', 'Sécurité Maison');
        PERFORM insert_category_translations('securite-maison', 'ar', 'أمن المنزل');
        PERFORM insert_category_translations('securite-maison', 'en', 'Home Security');
        PERFORM insert_category_translations('securite-maison', 'de', 'Haussicherheit');
        PERFORM insert_category_translations('securite-maison', 'es', 'Seguridad del hogar');
        PERFORM insert_category_translations('securite-maison', 'it', 'Sicurezza casa');

            -- Level 2: cameras-de-surveillance
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cameras-de-surveillance', 'cameras-de-surveillance', 2, l1_id, 'Caméras de surveillance')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cameras-de-surveillance', 'fr', 'Caméras de surveillance');
            PERFORM insert_category_translations('cameras-de-surveillance', 'ar', 'كاميرات مراقبة');
            PERFORM insert_category_translations('cameras-de-surveillance', 'en', 'Surveillance cameras');
            PERFORM insert_category_translations('cameras-de-surveillance', 'de', 'Überwachungskameras');
            PERFORM insert_category_translations('cameras-de-surveillance', 'es', 'Cámaras de vigilancia');
            PERFORM insert_category_translations('cameras-de-surveillance', 'it', 'Telecamere di sorveglianza');

            -- Level 2: alarmes-connectees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('alarmes-connectees', 'alarmes-connectees', 2, l1_id, 'Alarmes connectées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('alarmes-connectees', 'fr', 'Alarmes connectées');
            PERFORM insert_category_translations('alarmes-connectees', 'ar', 'إنذارات متصلة');
            PERFORM insert_category_translations('alarmes-connectees', 'en', 'Connected alarms');
            PERFORM insert_category_translations('alarmes-connectees', 'de', 'Vernetzte Alarme');
            PERFORM insert_category_translations('alarmes-connectees', 'es', 'Alarmas conectadas');
            PERFORM insert_category_translations('alarmes-connectees', 'it', 'Allarmi connessi');

            -- Level 2: detecteurs-de-fumee
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('detecteurs-de-fumee', 'detecteurs-de-fumee', 2, l1_id, 'Détecteurs de fumée')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('detecteurs-de-fumee', 'fr', 'Détecteurs de fumée');
            PERFORM insert_category_translations('detecteurs-de-fumee', 'ar', 'كاشفات دخان');
            PERFORM insert_category_translations('detecteurs-de-fumee', 'en', 'Smoke detectors');
            PERFORM insert_category_translations('detecteurs-de-fumee', 'de', 'Rauchmelder');
            PERFORM insert_category_translations('detecteurs-de-fumee', 'es', 'Detectores de humo');
            PERFORM insert_category_translations('detecteurs-de-fumee', 'it', 'Rilevatori di fumo');

            -- Level 2: serrures-cadenas
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('serrures-cadenas', 'serrures-cadenas', 2, l1_id, 'Serrures & cadenas')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('serrures-cadenas', 'fr', 'Serrures & cadenas');
            PERFORM insert_category_translations('serrures-cadenas', 'ar', 'أقفال وسلاسل');
            PERFORM insert_category_translations('serrures-cadenas', 'en', 'Locks & padlocks');
            PERFORM insert_category_translations('serrures-cadenas', 'de', 'Schlösser & Vorhängeschlösser');
            PERFORM insert_category_translations('serrures-cadenas', 'es', 'Cerraduras y candados');
            PERFORM insert_category_translations('serrures-cadenas', 'it', 'Serrature & lucchetti');

            -- Level 2: portails-automatiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('portails-automatiques', 'portails-automatiques', 2, l1_id, 'Portails automatiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('portails-automatiques', 'fr', 'Portails automatiques');
            PERFORM insert_category_translations('portails-automatiques', 'ar', 'بوابات آلية');
            PERFORM insert_category_translations('portails-automatiques', 'en', 'Automatic gates');
            PERFORM insert_category_translations('portails-automatiques', 'de', 'Automatische Tore');
            PERFORM insert_category_translations('portails-automatiques', 'es', 'Portones automáticos');
            PERFORM insert_category_translations('portails-automatiques', 'it', 'Cancelli automatici');

            -- Level 2: visiophones
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('visiophones', 'visiophones', 2, l1_id, 'Visiophones')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('visiophones', 'fr', 'Visiophones');
            PERFORM insert_category_translations('visiophones', 'ar', 'أنظمة اتصال مرئي');
            PERFORM insert_category_translations('visiophones', 'en', 'Video intercoms');
            PERFORM insert_category_translations('visiophones', 'de', 'Video‑Gegensprechanlagen');
            PERFORM insert_category_translations('visiophones', 'es', 'Videoporteros');
            PERFORM insert_category_translations('visiophones', 'it', 'Videocitofoni');

            -- Level 2: coffres-forts
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('coffres-forts', 'coffres-forts', 2, l1_id, 'Coffres-forts')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('coffres-forts', 'fr', 'Coffres-forts');
            PERFORM insert_category_translations('coffres-forts', 'ar', 'خزائن آمنة');
            PERFORM insert_category_translations('coffres-forts', 'en', 'Safes');
            PERFORM insert_category_translations('coffres-forts', 'de', 'Safes');
            PERFORM insert_category_translations('coffres-forts', 'es', 'Cajas fuertes');
            PERFORM insert_category_translations('coffres-forts', 'it', 'Casseforti');

        -- Level 1: services-maison-immobilier
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('services-maison-immobilier', 'services-maison-immobilier', 1, root_id, 'Services Maison & Immobilier')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('services-maison-immobilier', 'fr', 'Services Maison & Immobilier');
        PERFORM insert_category_translations('services-maison-immobilier', 'ar', 'خدمات المنزل والعقار');
        PERFORM insert_category_translations('services-maison-immobilier', 'en', 'Home & Real Estate Services');
        PERFORM insert_category_translations('services-maison-immobilier', 'de', 'Haus- & Immobiliendienstleistungen');
        PERFORM insert_category_translations('services-maison-immobilier', 'es', 'Servicios de hogar e inmobiliaria');
        PERFORM insert_category_translations('services-maison-immobilier', 'it', 'Servizi casa & immobiliare');

            -- Level 2: agences-immobilieres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('agences-immobilieres', 'agences-immobilieres', 2, l1_id, 'Agences immobilières')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('agences-immobilieres', 'fr', 'Agences immobilières');
            PERFORM insert_category_translations('agences-immobilieres', 'ar', 'وكالات عقارية');
            PERFORM insert_category_translations('agences-immobilieres', 'en', 'Real estate agencies');
            PERFORM insert_category_translations('agences-immobilieres', 'de', 'Immobilienagenturen');
            PERFORM insert_category_translations('agences-immobilieres', 'es', 'Agencias inmobiliarias');
            PERFORM insert_category_translations('agences-immobilieres', 'it', 'Agenzie immobiliari');

            -- Level 2: services-architecture
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('services-architecture', 'services-architecture', 2, l1_id, 'Services d’architecture')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('services-architecture', 'fr', 'Services d’architecture');
            PERFORM insert_category_translations('services-architecture', 'ar', 'خدمات الهندسة المعمارية');
            PERFORM insert_category_translations('services-architecture', 'en', 'Architecture services');
            PERFORM insert_category_translations('services-architecture', 'de', 'Architekturdienstleistungen');
            PERFORM insert_category_translations('services-architecture', 'es', 'Servicios de arquitectura');
            PERFORM insert_category_translations('services-architecture', 'it', 'Servizi di architettura');

            -- Level 2: artisans-plomberie-electricite-peinture
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('artisans-plomberie-electricite-peinture', 'artisans-plomberie-electricite-peinture', 2, l1_id, 'Artisans (plomberie, électricité, peinture)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('artisans-plomberie-electricite-peinture', 'fr', 'Artisans (plomberie, électricité, peinture)');
            PERFORM insert_category_translations('artisans-plomberie-electricite-peinture', 'ar', 'حرفيون (سباكة، كهرباء، طلاء)');
            PERFORM insert_category_translations('artisans-plomberie-electricite-peinture', 'en', 'Trades (plumbing, electricity, painting)');
            PERFORM insert_category_translations('artisans-plomberie-electricite-peinture', 'de', 'Handwerker (Sanitär, Elektrik, Malerei)');
            PERFORM insert_category_translations('artisans-plomberie-electricite-peinture', 'es', 'Oficios (fontanería, electricidad, pintura)');
            PERFORM insert_category_translations('artisans-plomberie-electricite-peinture', 'it', 'Artigiani (idraulica, elettricità, pittura)');

            -- Level 2: demenagement
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('demenagement', 'demenagement', 2, l1_id, 'Déménagement')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('demenagement', 'fr', 'Déménagement');
            PERFORM insert_category_translations('demenagement', 'ar', 'نقل');
            PERFORM insert_category_translations('demenagement', 'en', 'Moving');
            PERFORM insert_category_translations('demenagement', 'de', 'Umzug');
            PERFORM insert_category_translations('demenagement', 'es', 'Mudanzas');
            PERFORM insert_category_translations('demenagement', 'it', 'Traslochi');

            -- Level 2: nettoyage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('nettoyage', 'nettoyage', 2, l1_id, 'Nettoyage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('nettoyage', 'fr', 'Nettoyage');
            PERFORM insert_category_translations('nettoyage', 'ar', 'تنظيف');
            PERFORM insert_category_translations('nettoyage', 'en', 'Cleaning');
            PERFORM insert_category_translations('nettoyage', 'de', 'Reinigung');
            PERFORM insert_category_translations('nettoyage', 'es', 'Limpieza');
            PERFORM insert_category_translations('nettoyage', 'it', 'Pulizia');

            -- Level 2: entretien-jardin
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('entretien-jardin', 'entretien-jardin', 2, l1_id, 'Entretien jardin')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('entretien-jardin', 'fr', 'Entretien jardin');
            PERFORM insert_category_translations('entretien-jardin', 'ar', 'صيانة الحدائق');
            PERFORM insert_category_translations('entretien-jardin', 'en', 'Garden maintenance');
            PERFORM insert_category_translations('entretien-jardin', 'de', 'Gartenpflege');
            PERFORM insert_category_translations('entretien-jardin', 'es', 'Mantenimiento de jardín');
            PERFORM insert_category_translations('entretien-jardin', 'it', 'Manutenzione giardino');

            -- Level 2: renovation
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('renovation', 'renovation', 2, l1_id, 'Rénovation')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('renovation', 'fr', 'Rénovation');
            PERFORM insert_category_translations('renovation', 'ar', 'ترميم');
            PERFORM insert_category_translations('renovation', 'en', 'Renovation');
            PERFORM insert_category_translations('renovation', 'de', 'Renovierung');
            PERFORM insert_category_translations('renovation', 'es', 'Reformas');
            PERFORM insert_category_translations('renovation', 'it', 'Ristrutturazione');

            -- Level 2: gestion-locative
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gestion-locative', 'gestion-locative', 2, l1_id, 'Gestion locative')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gestion-locative', 'fr', 'Gestion locative');
            PERFORM insert_category_translations('gestion-locative', 'ar', 'إدارة الإيجارات');
            PERFORM insert_category_translations('gestion-locative', 'en', 'Property management');
            PERFORM insert_category_translations('gestion-locative', 'de', 'Mietverwaltung');
            PERFORM insert_category_translations('gestion-locative', 'es', 'Gestión de alquileres');
            PERFORM insert_category_translations('gestion-locative', 'it', 'Gestione locazioni');

            -- Level 2: diagnostics-immobiliers
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('diagnostics-immobiliers', 'diagnostics-immobiliers', 2, l1_id, 'Diagnostics immobiliers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('diagnostics-immobiliers', 'fr', 'Diagnostics immobiliers');
            PERFORM insert_category_translations('diagnostics-immobiliers', 'ar', 'تشخيصات عقارية');
            PERFORM insert_category_translations('diagnostics-immobiliers', 'en', 'Real estate diagnostics');
            PERFORM insert_category_translations('diagnostics-immobiliers', 'de', 'Immobiliendiagnostik');
            PERFORM insert_category_translations('diagnostics-immobiliers', 'es', 'Diagnósticos inmobiliarios');
            PERFORM insert_category_translations('diagnostics-immobiliers', 'it', 'Diagnostica immobiliare');

        -- Level 1: marques-materiel-populaire
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('marques-materiel-populaire', 'marques-materiel-populaire', 1, root_id, 'Marques & Matériel Populaire')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('marques-materiel-populaire', 'fr', 'Marques & Matériel Populaire');
        PERFORM insert_category_translations('marques-materiel-populaire', 'ar', 'ماركات ومعدات شائعة');
        PERFORM insert_category_translations('marques-materiel-populaire', 'en', 'Popular Brands & Equipment');
        PERFORM insert_category_translations('marques-materiel-populaire', 'de', 'Beliebte Marken & Geräte');
        PERFORM insert_category_translations('marques-materiel-populaire', 'es', 'Marcas y material popular');
        PERFORM insert_category_translations('marques-materiel-populaire', 'it', 'Marche & attrezzature popolari');

            -- Level 2: ikea
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ikea', 'ikea', 2, l1_id, 'Ikea')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ikea', 'fr', 'Ikea');
            PERFORM insert_category_translations('ikea', 'ar', 'Ikea');
            PERFORM insert_category_translations('ikea', 'en', 'Ikea');
            PERFORM insert_category_translations('ikea', 'de', 'Ikea');
            PERFORM insert_category_translations('ikea', 'es', 'Ikea');
            PERFORM insert_category_translations('ikea', 'it', 'Ikea');

            -- Level 2: samsung-home
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('samsung-home', 'samsung-home', 2, l1_id, 'Samsung Home')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('samsung-home', 'fr', 'Samsung Home');
            PERFORM insert_category_translations('samsung-home', 'ar', 'Samsung Home');
            PERFORM insert_category_translations('samsung-home', 'en', 'Samsung Home');
            PERFORM insert_category_translations('samsung-home', 'de', 'Samsung Home');
            PERFORM insert_category_translations('samsung-home', 'es', 'Samsung Home');
            PERFORM insert_category_translations('samsung-home', 'it', 'Samsung Home');

            -- Level 2: lg
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lg', 'lg', 2, l1_id, 'LG')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lg', 'fr', 'LG');
            PERFORM insert_category_translations('lg', 'ar', 'LG');
            PERFORM insert_category_translations('lg', 'en', 'LG');
            PERFORM insert_category_translations('lg', 'de', 'LG');
            PERFORM insert_category_translations('lg', 'es', 'LG');
            PERFORM insert_category_translations('lg', 'it', 'LG');

            -- Level 2: bosch
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bosch', 'bosch', 2, l1_id, 'Bosch')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bosch', 'fr', 'Bosch');
            PERFORM insert_category_translations('bosch', 'ar', 'Bosch');
            PERFORM insert_category_translations('bosch', 'en', 'Bosch');
            PERFORM insert_category_translations('bosch', 'de', 'Bosch');
            PERFORM insert_category_translations('bosch', 'es', 'Bosch');
            PERFORM insert_category_translations('bosch', 'it', 'Bosch');

            -- Level 2: beko
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('beko', 'beko', 2, l1_id, 'Beko')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('beko', 'fr', 'Beko');
            PERFORM insert_category_translations('beko', 'ar', 'Beko');
            PERFORM insert_category_translations('beko', 'en', 'Beko');
            PERFORM insert_category_translations('beko', 'de', 'Beko');
            PERFORM insert_category_translations('beko', 'es', 'Beko');
            PERFORM insert_category_translations('beko', 'it', 'Beko');

            -- Level 2: whirlpool
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('whirlpool', 'whirlpool', 2, l1_id, 'Whirlpool')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('whirlpool', 'fr', 'Whirlpool');
            PERFORM insert_category_translations('whirlpool', 'ar', 'Whirlpool');
            PERFORM insert_category_translations('whirlpool', 'en', 'Whirlpool');
            PERFORM insert_category_translations('whirlpool', 'de', 'Whirlpool');
            PERFORM insert_category_translations('whirlpool', 'es', 'Whirlpool');
            PERFORM insert_category_translations('whirlpool', 'it', 'Whirlpool');

            -- Level 2: philips-lighting
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('philips-lighting', 'philips-lighting', 2, l1_id, 'Philips Lighting')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('philips-lighting', 'fr', 'Philips Lighting');
            PERFORM insert_category_translations('philips-lighting', 'ar', 'Philips Lighting');
            PERFORM insert_category_translations('philips-lighting', 'en', 'Philips Lighting');
            PERFORM insert_category_translations('philips-lighting', 'de', 'Philips Lighting');
            PERFORM insert_category_translations('philips-lighting', 'es', 'Philips Lighting');
            PERFORM insert_category_translations('philips-lighting', 'it', 'Philips Lighting');

            -- Level 2: schneider-electric
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('schneider-electric', 'schneider-electric', 2, l1_id, 'Schneider Electric')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('schneider-electric', 'fr', 'Schneider Electric');
            PERFORM insert_category_translations('schneider-electric', 'ar', 'Schneider Electric');
            PERFORM insert_category_translations('schneider-electric', 'en', 'Schneider Electric');
            PERFORM insert_category_translations('schneider-electric', 'de', 'Schneider Electric');
            PERFORM insert_category_translations('schneider-electric', 'es', 'Schneider Electric');
            PERFORM insert_category_translations('schneider-electric', 'it', 'Schneider Electric');

            -- Level 2: karcher
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('karcher', 'karcher', 2, l1_id, 'Kärcher')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('karcher', 'fr', 'Kärcher');
            PERFORM insert_category_translations('karcher', 'ar', 'Kärcher');
            PERFORM insert_category_translations('karcher', 'en', 'Kärcher');
            PERFORM insert_category_translations('karcher', 'de', 'Kärcher');
            PERFORM insert_category_translations('karcher', 'es', 'Kärcher');
            PERFORM insert_category_translations('karcher', 'it', 'Kärcher');

            -- Level 2: ariston
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ariston', 'ariston', 2, l1_id, 'Ariston')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ariston', 'fr', 'Ariston');
            PERFORM insert_category_translations('ariston', 'ar', 'Ariston');
            PERFORM insert_category_translations('ariston', 'en', 'Ariston');
            PERFORM insert_category_translations('ariston', 'de', 'Ariston');
            PERFORM insert_category_translations('ariston', 'es', 'Ariston');
            PERFORM insert_category_translations('ariston', 'it', 'Ariston');

            -- Level 2: moulinex
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('moulinex', 'moulinex', 2, l1_id, 'Moulinex')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('moulinex', 'fr', 'Moulinex');
            PERFORM insert_category_translations('moulinex', 'ar', 'Moulinex');
            PERFORM insert_category_translations('moulinex', 'en', 'Moulinex');
            PERFORM insert_category_translations('moulinex', 'de', 'Moulinex');
            PERFORM insert_category_translations('moulinex', 'es', 'Moulinex');
            PERFORM insert_category_translations('moulinex', 'it', 'Moulinex');

            -- Level 2: tefal
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tefal', 'tefal', 2, l1_id, 'Tefal')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tefal', 'fr', 'Tefal');
            PERFORM insert_category_translations('tefal', 'ar', 'Tefal');
            PERFORM insert_category_translations('tefal', 'en', 'Tefal');
            PERFORM insert_category_translations('tefal', 'de', 'Tefal');
            PERFORM insert_category_translations('tefal', 'es', 'Tefal');
            PERFORM insert_category_translations('tefal', 'it', 'Tefal');

            -- Level 2: jaga
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jaga', 'jaga', 2, l1_id, 'Jaga')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('jaga', 'fr', 'Jaga');
            PERFORM insert_category_translations('jaga', 'ar', 'Jaga');
            PERFORM insert_category_translations('jaga', 'en', 'Jaga');
            PERFORM insert_category_translations('jaga', 'de', 'Jaga');
            PERFORM insert_category_translations('jaga', 'es', 'Jaga');
            PERFORM insert_category_translations('jaga', 'it', 'Jaga');

            -- Level 2: daikin
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('daikin', 'daikin', 2, l1_id, 'Daikin')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('daikin', 'fr', 'Daikin');
            PERFORM insert_category_translations('daikin', 'ar', 'Daikin');
            PERFORM insert_category_translations('daikin', 'en', 'Daikin');
            PERFORM insert_category_translations('daikin', 'de', 'Daikin');
            PERFORM insert_category_translations('daikin', 'es', 'Daikin');
            PERFORM insert_category_translations('daikin', 'it', 'Daikin');

            -- Level 2: hitachi
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('hitachi', 'hitachi', 2, l1_id, 'Hitachi')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('hitachi', 'fr', 'Hitachi');
            PERFORM insert_category_translations('hitachi', 'ar', 'Hitachi');
            PERFORM insert_category_translations('hitachi', 'en', 'Hitachi');
            PERFORM insert_category_translations('hitachi', 'de', 'Hitachi');
            PERFORM insert_category_translations('hitachi', 'es', 'Hitachi');
            PERFORM insert_category_translations('hitachi', 'it', 'Hitachi');
END $$;