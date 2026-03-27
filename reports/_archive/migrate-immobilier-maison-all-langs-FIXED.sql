-- Migration: Immobilier & Maison (Fixed - 100% Complete)
-- This file ensures the category "Immobilier & Maison" and all its subcategories are correctly inserted.
-- It handles all 6 languages (fr, ar, de, en, es, it) and correct hierarchy (Root > Level 1 > Level 2).
-- It is idempotent and transactional.

DO $$
DECLARE
    root_id UUID;
    l1_id UUID;
    l2_id UUID;
BEGIN
    -- 1. Root Category: Immobilier & Maison
    INSERT INTO categories (id, slug, level)
    VALUES ('immobilier-maison', 'immobilier-maison', 0)
    ON CONFLICT (id) DO UPDATE SET level = 0
    RETURNING id INTO root_id;

    -- Translations for Root
    PERFORM insert_category_translations('immobilier-maison', 'fr', 'Immobilier & Maison');
    PERFORM insert_category_translations('immobilier-maison', 'ar', 'العقارات والمنزل');
    PERFORM insert_category_translations('immobilier-maison', 'de', 'Immobilien & Haus');
    PERFORM insert_category_translations('immobilier-maison', 'en', 'Real Estate & Home');
    PERFORM insert_category_translations('immobilier-maison', 'es', 'Inmobiliaria y Hogar');
    PERFORM insert_category_translations('immobilier-maison', 'it', 'Immobiliare & Casa');

    -- Level 1: Ventes Immobilières
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('ventes-immobilieres', 'ventes-immobilieres', root_id, 1)
    ON CONFLICT (id) DO UPDATE SET parent_id = root_id, level = 1
    RETURNING id INTO l1_id;

    PERFORM insert_category_translations('ventes-immobilieres', 'fr', 'Ventes Immobilières');
    PERFORM insert_category_translations('ventes-immobilieres', 'ar', 'مبيعات العقارات');
    PERFORM insert_category_translations('ventes-immobilieres', 'de', 'Immobilienverkauf');
    PERFORM insert_category_translations('ventes-immobilieres', 'en', 'Property Sales');
    PERFORM insert_category_translations('ventes-immobilieres', 'es', 'Ventas inmobiliarias');
    PERFORM insert_category_translations('ventes-immobilieres', 'it', 'Vendite immobiliari');

        -- Level 2: Appartements à vendre
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('appartements-a-vendre', 'appartements-a-vendre', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('appartements-a-vendre', 'fr', 'Appartements à vendre');
        PERFORM insert_category_translations('appartements-a-vendre', 'ar', 'شقق للبيع');
        PERFORM insert_category_translations('appartements-a-vendre', 'de', 'Wohnungen zum Verkauf');
        PERFORM insert_category_translations('appartements-a-vendre', 'en', 'Apartments for sale');
        PERFORM insert_category_translations('appartements-a-vendre', 'es', 'Apartamentos en venta');
        PERFORM insert_category_translations('appartements-a-vendre', 'it', 'Appartamenti in vendita');

        -- Level 2: Studios
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('studios', 'studios', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('studios', 'fr', 'Studios');
        PERFORM insert_category_translations('studios', 'ar', 'استوديوهات');
        PERFORM insert_category_translations('studios', 'de', 'Studios');
        PERFORM insert_category_translations('studios', 'en', 'Studios');
        PERFORM insert_category_translations('studios', 'es', 'Estudios');
        PERFORM insert_category_translations('studios', 'it', 'Monolocali');

        -- Level 2: F2
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('f2', 'f2', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('f2', 'fr', 'F2');
        PERFORM insert_category_translations('f2', 'ar', 'F2');
        PERFORM insert_category_translations('f2', 'de', 'F2');
        PERFORM insert_category_translations('f2', 'en', 'F2');
        PERFORM insert_category_translations('f2', 'es', 'F2');
        PERFORM insert_category_translations('f2', 'it', 'F2');

        -- Level 2: F3
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('f3', 'f3', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('f3', 'fr', 'F3');
        PERFORM insert_category_translations('f3', 'ar', 'F3');
        PERFORM insert_category_translations('f3', 'de', 'F3');
        PERFORM insert_category_translations('f3', 'en', 'F3');
        PERFORM insert_category_translations('f3', 'es', 'F3');
        PERFORM insert_category_translations('f3', 'it', 'F3');

        -- Level 2: F4
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('f4', 'f4', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('f4', 'fr', 'F4');
        PERFORM insert_category_translations('f4', 'ar', 'F4');
        PERFORM insert_category_translations('f4', 'de', 'F4');
        PERFORM insert_category_translations('f4', 'en', 'F4');
        PERFORM insert_category_translations('f4', 'es', 'F4');
        PERFORM insert_category_translations('f4', 'it', 'F4');

        -- Level 2: F5+
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('f5-plus', 'f5-plus', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('f5-plus', 'fr', 'F5+');
        PERFORM insert_category_translations('f5-plus', 'ar', 'F5+');
        PERFORM insert_category_translations('f5-plus', 'de', 'F5+');
        PERFORM insert_category_translations('f5-plus', 'en', 'F5+');
        PERFORM insert_category_translations('f5-plus', 'es', 'F5+');
        PERFORM insert_category_translations('f5-plus', 'it', 'F5+');

        -- Level 2: Appartements neufs
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('appartements-neufs', 'appartements-neufs', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('appartements-neufs', 'fr', 'Appartements neufs');
        PERFORM insert_category_translations('appartements-neufs', 'ar', 'شقق جديدة');
        PERFORM insert_category_translations('appartements-neufs', 'de', 'Neubauwohnungen');
        PERFORM insert_category_translations('appartements-neufs', 'en', 'New apartments');
        PERFORM insert_category_translations('appartements-neufs', 'es', 'Apartamentos nuevos');
        PERFORM insert_category_translations('appartements-neufs', 'it', 'Appartamenti nuovi');

        -- Level 2: Appartements promotion immobilière
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('appartements-promotion-immobiliere', 'appartements-promotion-immobiliere', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('appartements-promotion-immobiliere', 'fr', 'Appartements promotion immobilière');
        PERFORM insert_category_translations('appartements-promotion-immobiliere', 'ar', 'شقق ترويج عقاري');
        PERFORM insert_category_translations('appartements-promotion-immobiliere', 'de', 'Promotionswohnungen');
        PERFORM insert_category_translations('appartements-promotion-immobiliere', 'en', 'Promotional apartments');
        PERFORM insert_category_translations('appartements-promotion-immobiliere', 'es', 'Apartamentos promocionales');
        PERFORM insert_category_translations('appartements-promotion-immobiliere', 'it', 'Appartamenti promozionali');

        -- Level 2: Maisons à vendre
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('maisons-a-vendre', 'maisons-a-vendre', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('maisons-a-vendre', 'fr', 'Maisons à vendre');
        PERFORM insert_category_translations('maisons-a-vendre', 'ar', 'منازل للبيع');
        PERFORM insert_category_translations('maisons-a-vendre', 'de', 'Häuser zum Verkauf');
        PERFORM insert_category_translations('maisons-a-vendre', 'en', 'Houses for sale');
        PERFORM insert_category_translations('maisons-a-vendre', 'es', 'Casas en venta');
        PERFORM insert_category_translations('maisons-a-vendre', 'it', 'Case in vendita');

        -- Level 2: Villas
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('villas', 'villas', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('villas', 'fr', 'Villas');
        PERFORM insert_category_translations('villas', 'ar', 'فلل');
        PERFORM insert_category_translations('villas', 'de', 'Villen');
        PERFORM insert_category_translations('villas', 'en', 'Villas');
        PERFORM insert_category_translations('villas', 'es', 'Villas');
        PERFORM insert_category_translations('villas', 'it', 'Ville');

        -- Level 2: Duplex
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('duplex', 'duplex', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('duplex', 'fr', 'Duplex');
        PERFORM insert_category_translations('duplex', 'ar', 'ديوبلكس');
        PERFORM insert_category_translations('duplex', 'de', 'Duplex');
        PERFORM insert_category_translations('duplex', 'en', 'Duplexes');
        PERFORM insert_category_translations('duplex', 'es', 'Dúplex');
        PERFORM insert_category_translations('duplex', 'it', 'Duplex');

        -- Level 2: Triplex
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('triplex', 'triplex', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('triplex', 'fr', 'Triplex');
        PERFORM insert_category_translations('triplex', 'ar', 'تريبلكس');
        PERFORM insert_category_translations('triplex', 'de', 'Triplex');
        PERFORM insert_category_translations('triplex', 'en', 'Triplexes');
        PERFORM insert_category_translations('triplex', 'es', 'Tríplex');
        PERFORM insert_category_translations('triplex', 'it', 'Triplex');

        -- Level 2: Maisons plain-pied
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('maisons-plain-pied', 'maisons-plain-pied', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('maisons-plain-pied', 'fr', 'Maisons plain-pied');
        PERFORM insert_category_translations('maisons-plain-pied', 'ar', 'منازل بطابق واحد');
        PERFORM insert_category_translations('maisons-plain-pied', 'de', 'Einfamilienhäuser');
        PERFORM insert_category_translations('maisons-plain-pied', 'en', 'Bungalows');
        PERFORM insert_category_translations('maisons-plain-pied', 'es', 'Casas de una planta');
        PERFORM insert_category_translations('maisons-plain-pied', 'it', 'Case su un piano');

        -- Level 2: Fermes & propriétés rurales
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('fermes-proprietes-rurales', 'fermes-proprietes-rurales', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('fermes-proprietes-rurales', 'fr', 'Fermes & propriétés rurales');
        PERFORM insert_category_translations('fermes-proprietes-rurales', 'ar', 'مزارع وعقارات ريفية');
        PERFORM insert_category_translations('fermes-proprietes-rurales', 'de', 'Höfe & ländliche Grundstücke');
        PERFORM insert_category_translations('fermes-proprietes-rurales', 'en', 'Farms & rural properties');
        PERFORM insert_category_translations('fermes-proprietes-rurales', 'es', 'Granjas y propiedades rurales');
        PERFORM insert_category_translations('fermes-proprietes-rurales', 'it', 'Fattorie & proprietà rurali');

        -- Level 2: Terrains constructibles
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('terrains-constructibles', 'terrains-constructibles', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('terrains-constructibles', 'fr', 'Terrains constructibles');
        PERFORM insert_category_translations('terrains-constructibles', 'ar', 'أراضٍ قابلة للبناء');
        PERFORM insert_category_translations('terrains-constructibles', 'de', 'Bauland');
        PERFORM insert_category_translations('terrains-constructibles', 'en', 'Building plots');
        PERFORM insert_category_translations('terrains-constructibles', 'es', 'Terrenos edificables');
        PERFORM insert_category_translations('terrains-constructibles', 'it', 'Terreni edificabili');

        -- Level 2: Terrains agricoles
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('terrains-agricoles', 'terrains-agricoles', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('terrains-agricoles', 'fr', 'Terrains agricoles');
        PERFORM insert_category_translations('terrains-agricoles', 'ar', 'أراضٍ زراعية');
        PERFORM insert_category_translations('terrains-agricoles', 'de', 'Ackerland');
        PERFORM insert_category_translations('terrains-agricoles', 'en', 'Farmland');
        PERFORM insert_category_translations('terrains-agricoles', 'es', 'Terrenos agrícolas');
        PERFORM insert_category_translations('terrains-agricoles', 'it', 'Terreni agricoli');

        -- Level 2: Locaux commerciaux
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('locaux-commerciaux', 'locaux-commerciaux', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('locaux-commerciaux', 'fr', 'Locaux commerciaux');
        PERFORM insert_category_translations('locaux-commerciaux', 'ar', 'محلات تجارية');
        PERFORM insert_category_translations('locaux-commerciaux', 'de', 'Gewerbeflächen');
        PERFORM insert_category_translations('locaux-commerciaux', 'en', 'Commercial premises');
        PERFORM insert_category_translations('locaux-commerciaux', 'es', 'Locales comerciales');
        PERFORM insert_category_translations('locaux-commerciaux', 'it', 'Locali commerciali');

        -- Level 2: Bureaux
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('bureaux', 'bureaux', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('bureaux', 'fr', 'Bureaux');
        PERFORM insert_category_translations('bureaux', 'ar', 'مكاتب');
        PERFORM insert_category_translations('bureaux', 'de', 'Büros');
        PERFORM insert_category_translations('bureaux', 'en', 'Offices');
        PERFORM insert_category_translations('bureaux', 'es', 'Oficinas');
        PERFORM insert_category_translations('bureaux', 'it', 'Uffici');

        -- Level 2: Immeubles
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('immeubles', 'immeubles', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('immeubles', 'fr', 'Immeubles');
        PERFORM insert_category_translations('immeubles', 'ar', 'عمارات');
        PERFORM insert_category_translations('immeubles', 'de', 'Gebäude');
        PERFORM insert_category_translations('immeubles', 'en', 'Buildings');
        PERFORM insert_category_translations('immeubles', 'es', 'Edificios');
        PERFORM insert_category_translations('immeubles', 'it', 'Edifici');

        -- Level 2: Garages à vendre
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('garages-a-vendre', 'garages-a-vendre', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('garages-a-vendre', 'fr', 'Garages à vendre');
        PERFORM insert_category_translations('garages-a-vendre', 'ar', 'كراجات للبيع');
        PERFORM insert_category_translations('garages-a-vendre', 'de', 'Garagen zu verkaufen');
        PERFORM insert_category_translations('garages-a-vendre', 'en', 'Garages for sale');
        PERFORM insert_category_translations('garages-a-vendre', 'es', 'Garajes en venta');
        PERFORM insert_category_translations('garages-a-vendre', 'it', 'Garage in vendita');

    -- Level 1: Locations Immobilières
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('locations-immobilieres', 'locations-immobilieres', root_id, 1)
    ON CONFLICT (id) DO UPDATE SET parent_id = root_id, level = 1
    RETURNING id INTO l1_id;

    PERFORM insert_category_translations('locations-immobilieres', 'fr', 'Locations Immobilières');
    PERFORM insert_category_translations('locations-immobilieres', 'ar', 'إيجارات العقارات');
    PERFORM insert_category_translations('locations-immobilieres', 'de', 'Immobilienvermietung');
    PERFORM insert_category_translations('locations-immobilieres', 'en', 'Property Rentals');
    PERFORM insert_category_translations('locations-immobilieres', 'es', 'Alquileres inmobiliarios');
    PERFORM insert_category_translations('locations-immobilieres', 'it', 'Affitti immobiliari');

        -- Level 2: Appartements en location
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('appartements-en-location', 'appartements-en-location', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('appartements-en-location', 'fr', 'Appartements en location');
        PERFORM insert_category_translations('appartements-en-location', 'ar', 'شقق للإيجار');
        PERFORM insert_category_translations('appartements-en-location', 'de', 'Wohnungen zur Miete');
        PERFORM insert_category_translations('appartements-en-location', 'en', 'Apartments for rent');
        PERFORM insert_category_translations('appartements-en-location', 'es', 'Apartamentos en alquiler');
        PERFORM insert_category_translations('appartements-en-location', 'it', 'Appartamenti in affitto');

        -- Level 2: Studios
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('studios-location', 'studios-location', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('studios-location', 'fr', 'Studios');
        PERFORM insert_category_translations('studios-location', 'ar', 'استوديوهات');
        PERFORM insert_category_translations('studios-location', 'de', 'Studios');
        PERFORM insert_category_translations('studios-location', 'en', 'Studios');
        PERFORM insert_category_translations('studios-location', 'es', 'Estudios');
        PERFORM insert_category_translations('studios-location', 'it', 'Monolocali');

        -- Level 2: F2
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('f2-location', 'f2-location', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('f2-location', 'fr', 'F2');
        PERFORM insert_category_translations('f2-location', 'ar', 'F2');
        PERFORM insert_category_translations('f2-location', 'de', 'F2');
        PERFORM insert_category_translations('f2-location', 'en', 'F2');
        PERFORM insert_category_translations('f2-location', 'es', 'F2');
        PERFORM insert_category_translations('f2-location', 'it', 'F2');

        -- Level 2: F3
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('f3-location', 'f3-location', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('f3-location', 'fr', 'F3');
        PERFORM insert_category_translations('f3-location', 'ar', 'F3');
        PERFORM insert_category_translations('f3-location', 'de', 'F3');
        PERFORM insert_category_translations('f3-location', 'en', 'F3');
        PERFORM insert_category_translations('f3-location', 'es', 'F3');
        PERFORM insert_category_translations('f3-location', 'it', 'F3');

        -- Level 2: F4
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('f4-location', 'f4-location', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('f4-location', 'fr', 'F4');
        PERFORM insert_category_translations('f4-location', 'ar', 'F4');
        PERFORM insert_category_translations('f4-location', 'de', 'F4');
        PERFORM insert_category_translations('f4-location', 'en', 'F4');
        PERFORM insert_category_translations('f4-location', 'es', 'F4');
        PERFORM insert_category_translations('f4-location', 'it', 'F4');

        -- Level 2: Maisons en location
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('maisons-en-location', 'maisons-en-location', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('maisons-en-location', 'fr', 'Maisons en location');
        PERFORM insert_category_translations('maisons-en-location', 'ar', 'منازل للإيجار');
        PERFORM insert_category_translations('maisons-en-location', 'de', 'Häuser zur Miete');
        PERFORM insert_category_translations('maisons-en-location', 'en', 'Houses for rent');
        PERFORM insert_category_translations('maisons-en-location', 'es', 'Casas en alquiler');
        PERFORM insert_category_translations('maisons-en-location', 'it', 'Case in affitto');

        -- Level 2: Villas
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('villas-location', 'villas-location', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('villas-location', 'fr', 'Villas');
        PERFORM insert_category_translations('villas-location', 'ar', 'فلل');
        PERFORM insert_category_translations('villas-location', 'de', 'Villen');
        PERFORM insert_category_translations('villas-location', 'en', 'Villas');
        PERFORM insert_category_translations('villas-location', 'es', 'Villas');
        PERFORM insert_category_translations('villas-location', 'it', 'Ville');

        -- Level 2: Duplex
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('duplex-location', 'duplex-location', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('duplex-location', 'fr', 'Duplex');
        PERFORM insert_category_translations('duplex-location', 'ar', 'ديوبلكس');
        PERFORM insert_category_translations('duplex-location', 'de', 'Duplex');
        PERFORM insert_category_translations('duplex-location', 'en', 'Duplexes');
        PERFORM insert_category_translations('duplex-location', 'es', 'Dúplex');
        PERFORM insert_category_translations('duplex-location', 'it', 'Duplex');

        -- Level 2: Triplex
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('triplex-location', 'triplex-location', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('triplex-location', 'fr', 'Triplex');
        PERFORM insert_category_translations('triplex-location', 'ar', 'تريبلكس');
        PERFORM insert_category_translations('triplex-location', 'de', 'Triplex');
        PERFORM insert_category_translations('triplex-location', 'en', 'Triplexes');
        PERFORM insert_category_translations('triplex-location', 'es', 'Tríplex');
        PERFORM insert_category_translations('triplex-location', 'it', 'Triplex');

        -- Level 2: Chambres en location
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('chambres-en-location', 'chambres-en-location', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('chambres-en-location', 'fr', 'Chambres en location');
        PERFORM insert_category_translations('chambres-en-location', 'ar', 'غرف للإيجار');
        PERFORM insert_category_translations('chambres-en-location', 'de', 'Zimmer zur Miete');
        PERFORM insert_category_translations('chambres-en-location', 'en', 'Rooms for rent');
        PERFORM insert_category_translations('chambres-en-location', 'es', 'Habitaciones en alquiler');
        PERFORM insert_category_translations('chambres-en-location', 'it', 'Camere in affitto');

        -- Level 2: Colocation
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('colocation', 'colocation', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('colocation', 'fr', 'Colocation');
        PERFORM insert_category_translations('colocation', 'ar', 'سكن مشترك');
        PERFORM insert_category_translations('colocation', 'de', 'Wohngemeinschaft');
        PERFORM insert_category_translations('colocation', 'en', 'Flatsharing');
        PERFORM insert_category_translations('colocation', 'es', 'Pisos compartidos');
        PERFORM insert_category_translations('colocation', 'it', 'Coabitazione');

        -- Level 2: Locations meublées
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('locations-meublees', 'locations-meublees', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('locations-meublees', 'fr', 'Locations meublées');
        PERFORM insert_category_translations('locations-meublees', 'ar', 'إيجارات مفروشة');
        PERFORM insert_category_translations('locations-meublees', 'de', 'Möblierte Vermietung');
        PERFORM insert_category_translations('locations-meublees', 'en', 'Furnished rentals');
        PERFORM insert_category_translations('locations-meublees', 'es', 'Alquileres amueblados');
        PERFORM insert_category_translations('locations-meublees', 'it', 'Affitti arredati');

        -- Level 2: Locations non meublées
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('locations-non-meublees', 'locations-non-meublees', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('locations-non-meublees', 'fr', 'Locations non meublées');
        PERFORM insert_category_translations('locations-non-meublees', 'ar', 'إيجارات غير مفروشة');
        PERFORM insert_category_translations('locations-non-meublees', 'de', 'Unmöblierte Vermietung');
        PERFORM insert_category_translations('locations-non-meublees', 'en', 'Unfurnished rentals');
        PERFORM insert_category_translations('locations-non-meublees', 'es', 'Alquileres sin muebles');
        PERFORM insert_category_translations('locations-non-meublees', 'it', 'Affitti non arredati');

        -- Level 2: Locations saisonnières
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('locations-saisonnieres', 'locations-saisonnieres', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('locations-saisonnieres', 'fr', 'Locations saisonnières');
        PERFORM insert_category_translations('locations-saisonnieres', 'ar', 'إيجارات موسمية');
        PERFORM insert_category_translations('locations-saisonnieres', 'de', 'Ferienvermietung');
        PERFORM insert_category_translations('locations-saisonnieres', 'en', 'Seasonal rentals');
        PERFORM insert_category_translations('locations-saisonnieres', 'es', 'Alquileres de temporada');
        PERFORM insert_category_translations('locations-saisonnieres', 'it', 'Affitti stagionali');

        -- Level 2: Locations vacances
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('locations-vacances', 'locations-vacances', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('locations-vacances', 'fr', 'Locations vacances');
        PERFORM insert_category_translations('locations-vacances', 'ar', 'إيجارات عطلات');
        PERFORM insert_category_translations('locations-vacances', 'de', 'Urlaubsvermietung');
        PERFORM insert_category_translations('locations-vacances', 'en', 'Holiday rentals');
        PERFORM insert_category_translations('locations-vacances', 'es', 'Alquileres vacacionales');
        PERFORM insert_category_translations('locations-vacances', 'it', 'Affitti vacanze');

        -- Level 2: Bureaux à louer
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('bureaux-a-louer', 'bureaux-a-louer', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('bureaux-a-louer', 'fr', 'Bureaux à louer');
        PERFORM insert_category_translations('bureaux-a-louer', 'ar', 'مكاتب للإيجار');
        PERFORM insert_category_translations('bureaux-a-louer', 'de', 'Büros zu mieten');
        PERFORM insert_category_translations('bureaux-a-louer', 'en', 'Offices for rent');
        PERFORM insert_category_translations('bureaux-a-louer', 'es', 'Oficinas en alquiler');
        PERFORM insert_category_translations('bureaux-a-louer', 'it', 'Uffici in affitto');

        -- Level 2: Locaux commerciaux à louer
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('locaux-commerciaux-a-louer', 'locaux-commerciaux-a-louer', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('locaux-commerciaux-a-louer', 'fr', 'Locaux commerciaux à louer');
        PERFORM insert_category_translations('locaux-commerciaux-a-louer', 'ar', 'محلات تجارية للإيجار');
        PERFORM insert_category_translations('locaux-commerciaux-a-louer', 'de', 'Gewerberäume zu mieten');
        PERFORM insert_category_translations('locaux-commerciaux-a-louer', 'en', 'Commercial premises for rent');
        PERFORM insert_category_translations('locaux-commerciaux-a-louer', 'es', 'Locales comerciales en alquiler');
        PERFORM insert_category_translations('locaux-commerciaux-a-louer', 'it', 'Locali commerciali in affitto');

        -- Level 2: Garages & parkings à louer
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('garages-parkings-a-louer', 'garages-parkings-a-louer', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('garages-parkings-a-louer', 'fr', 'Garages & parkings à louer');
        PERFORM insert_category_translations('garages-parkings-a-louer', 'ar', 'كراجات ومواقف للإيجار');
        PERFORM insert_category_translations('garages-parkings-a-louer', 'de', 'Garagen & Parkplätze zu mieten');
        PERFORM insert_category_translations('garages-parkings-a-louer', 'en', 'Garages & parking for rent');
        PERFORM insert_category_translations('garages-parkings-a-louer', 'es', 'Garajes y parkings en alquiler');
        PERFORM insert_category_translations('garages-parkings-a-louer', 'it', 'Garage & parcheggi in affitto');

    -- Level 1: Immobilier Professionnel
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('immobilier-professionnel', 'immobilier-professionnel', root_id, 1)
    ON CONFLICT (id) DO UPDATE SET parent_id = root_id, level = 1
    RETURNING id INTO l1_id;

    PERFORM insert_category_translations('immobilier-professionnel', 'fr', 'Immobilier Professionnel');
    PERFORM insert_category_translations('immobilier-professionnel', 'ar', 'عقار مهني');
    PERFORM insert_category_translations('immobilier-professionnel', 'de', 'Gewerbliche Immobilien');
    PERFORM insert_category_translations('immobilier-professionnel', 'en', 'Professional Real Estate');
    PERFORM insert_category_translations('immobilier-professionnel', 'es', 'Inmobiliaria profesional');
    PERFORM insert_category_translations('immobilier-professionnel', 'it', 'Immobiliare professionale');

        -- Level 2: Entrepôts
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('entrepots', 'entrepots', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('entrepots', 'fr', 'Entrepôts');
        PERFORM insert_category_translations('entrepots', 'ar', 'مستودعات');
        PERFORM insert_category_translations('entrepots', 'de', 'Lagerhallen');
        PERFORM insert_category_translations('entrepots', 'en', 'Warehouses');
        PERFORM insert_category_translations('entrepots', 'es', 'Naves');
        PERFORM insert_category_translations('entrepots', 'it', 'Magazzini');

        -- Level 2: Hangars
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('hangars', 'hangars', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('hangars', 'fr', 'Hangars');
        PERFORM insert_category_translations('hangars', 'ar', 'هنغارات');
        PERFORM insert_category_translations('hangars', 'de', 'Hangars');
        PERFORM insert_category_translations('hangars', 'en', 'Hangars');
        PERFORM insert_category_translations('hangars', 'es', 'Hangares');
        PERFORM insert_category_translations('hangars', 'it', 'Hangar');

        -- Level 2: Locaux industriels
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('locaux-industriels', 'locaux-industriels', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('locaux-industriels', 'fr', 'Locaux industriels');
        PERFORM insert_category_translations('locaux-industriels', 'ar', 'محلات صناعية');
        PERFORM insert_category_translations('locaux-industriels', 'de', 'Industrieflächen');
        PERFORM insert_category_translations('locaux-industriels', 'en', 'Industrial premises');
        PERFORM insert_category_translations('locaux-industriels', 'es', 'Locales industriales');
        PERFORM insert_category_translations('locaux-industriels', 'it', 'Locali industriali');

        -- Level 2: Ateliers
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('ateliers', 'ateliers', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('ateliers', 'fr', 'Ateliers');
        PERFORM insert_category_translations('ateliers', 'ar', 'ورش');
        PERFORM insert_category_translations('ateliers', 'de', 'Werkstätten');
        PERFORM insert_category_translations('ateliers', 'en', 'Workshops');
        PERFORM insert_category_translations('ateliers', 'es', 'Talleres');
        PERFORM insert_category_translations('ateliers', 'it', 'Laboratori');

        -- Level 2: Zones logistiques
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('zones-logistiques', 'zones-logistiques', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('zones-logistiques', 'fr', 'Zones logistiques');
        PERFORM insert_category_translations('zones-logistiques', 'ar', 'مناطق لوجستية');
        PERFORM insert_category_translations('zones-logistiques', 'de', 'Logistikzonen');
        PERFORM insert_category_translations('zones-logistiques', 'en', 'Logistics zones');
        PERFORM insert_category_translations('zones-logistiques', 'es', 'Zonas logísticas');
        PERFORM insert_category_translations('zones-logistiques', 'it', 'Aree logistiche');

        -- Level 2: Bureaux professionnels
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('bureaux-professionnels', 'bureaux-professionnels', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('bureaux-professionnels', 'fr', 'Bureaux professionnels');
        PERFORM insert_category_translations('bureaux-professionnels', 'ar', 'مكاتب مهنية');
        PERFORM insert_category_translations('bureaux-professionnels', 'de', 'Büroflächen');
        PERFORM insert_category_translations('bureaux-professionnels', 'en', 'Professional offices');
        PERFORM insert_category_translations('bureaux-professionnels', 'es', 'Oficinas profesionales');
        PERFORM insert_category_translations('bureaux-professionnels', 'it', 'Uffici professionali');

        -- Level 2: Open-spaces
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('open-spaces', 'open-spaces', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('open-spaces', 'fr', 'Open-spaces');
        PERFORM insert_category_translations('open-spaces', 'ar', 'مساحات مفتوحة');
        PERFORM insert_category_translations('open-spaces', 'de', 'Open‑Spaces');
        PERFORM insert_category_translations('open-spaces', 'en', 'Open spaces');
        PERFORM insert_category_translations('open-spaces', 'es', 'Espacios abiertos');
        PERFORM insert_category_translations('open-spaces', 'it', 'Open‑space');

        -- Level 2: Magasins
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('magasins', 'magasins', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('magasins', 'fr', 'Magasins');
        PERFORM insert_category_translations('magasins', 'ar', 'متاجر');
        PERFORM insert_category_translations('magasins', 'de', 'Geschäfte');
        PERFORM insert_category_translations('magasins', 'en', 'Shops');
        PERFORM insert_category_translations('magasins', 'es', 'Tiendas');
        PERFORM insert_category_translations('magasins', 'it', 'Negozi');

        -- Level 2: Restaurants & cafés
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('restaurants-cafes', 'restaurants-cafes', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('restaurants-cafes', 'fr', 'Restaurants & cafés');
        PERFORM insert_category_translations('restaurants-cafes', 'ar', 'مطاعم ومقاهي');
        PERFORM insert_category_translations('restaurants-cafes', 'de', 'Restaurants & Cafés');
        PERFORM insert_category_translations('restaurants-cafes', 'en', 'Restaurants & cafés');
        PERFORM insert_category_translations('restaurants-cafes', 'es', 'Restaurantes y cafés');
        PERFORM insert_category_translations('restaurants-cafes', 'it', 'Ristoranti & caffè');

        -- Level 2: Pharmacies
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('pharmacies', 'pharmacies', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('pharmacies', 'fr', 'Pharmacies');
        PERFORM insert_category_translations('pharmacies', 'ar', 'صيدليات');
        PERFORM insert_category_translations('pharmacies', 'de', 'Apotheken');
        PERFORM insert_category_translations('pharmacies', 'en', 'Pharmacies');
        PERFORM insert_category_translations('pharmacies', 'es', 'Farmacias');
        PERFORM insert_category_translations('pharmacies', 'it', 'Farmacie');

        -- Level 2: Cabinets médicaux
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('cabinets-medicaux', 'cabinets-medicaux', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('cabinets-medicaux', 'fr', 'Cabinets médicaux');
        PERFORM insert_category_translations('cabinets-medicaux', 'ar', 'عيادات طبية');
        PERFORM insert_category_translations('cabinets-medicaux', 'de', 'Arztpraxen');
        PERFORM insert_category_translations('cabinets-medicaux', 'en', 'Medical practices');
        PERFORM insert_category_translations('cabinets-medicaux', 'es', 'Consultorios médicos');
        PERFORM insert_category_translations('cabinets-medicaux', 'it', 'Studi medici');

    -- Level 1: Investissement Immobilier
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('investissement-immobilier', 'investissement-immobilier', root_id, 1)
    ON CONFLICT (id) DO UPDATE SET parent_id = root_id, level = 1
    RETURNING id INTO l1_id;

    PERFORM insert_category_translations('investissement-immobilier', 'fr', 'Investissement Immobilier');
    PERFORM insert_category_translations('investissement-immobilier', 'ar', 'استثمار عقاري');
    PERFORM insert_category_translations('investissement-immobilier', 'de', 'Immobilieninvestitionen');
    PERFORM insert_category_translations('investissement-immobilier', 'en', 'Real Estate Investment');
    PERFORM insert_category_translations('investissement-immobilier', 'es', 'Inversión inmobiliaria');
    PERFORM insert_category_translations('investissement-immobilier', 'it', 'Investimenti immobiliari');

        -- Level 2: Programmes neufs
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('programmes-neufs', 'programmes-neufs', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('programmes-neufs', 'fr', 'Programmes neufs');
        PERFORM insert_category_translations('programmes-neufs', 'ar', 'برامج جديدة');
        PERFORM insert_category_translations('programmes-neufs', 'de', 'Neubauprojekte');
        PERFORM insert_category_translations('programmes-neufs', 'en', 'New developments');
        PERFORM insert_category_translations('programmes-neufs', 'es', 'Programas nuevos');
        PERFORM insert_category_translations('programmes-neufs', 'it', 'Nuovi programmi');

        -- Level 2: Logements promotionnels
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('logements-promotionnels', 'logements-promotionnels', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('logements-promotionnels', 'fr', 'Logements promotionnels');
        PERFORM insert_category_translations('logements-promotionnels', 'ar', 'سكن ترويجي');
        PERFORM insert_category_translations('logements-promotionnels', 'de', 'Förderwohnungen');
        PERFORM insert_category_translations('logements-promotionnels', 'en', 'Promotional housing');
        PERFORM insert_category_translations('logements-promotionnels', 'es', 'Viviendas promocionales');
        PERFORM insert_category_translations('logements-promotionnels', 'it', 'Alloggi promozionali');

        -- Level 2: Immobiliers LPP
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('immobiliers-lpp', 'immobiliers-lpp', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('immobiliers-lpp', 'fr', 'Immobiliers LPP');
        PERFORM insert_category_translations('immobiliers-lpp', 'ar', 'عقارات LPP');
        PERFORM insert_category_translations('immobiliers-lpp', 'de', 'LPP‑Immobilien');
        PERFORM insert_category_translations('immobiliers-lpp', 'en', 'LPP housing');
        PERFORM insert_category_translations('immobiliers-lpp', 'es', 'Viviendas LPP');
        PERFORM insert_category_translations('immobiliers-lpp', 'it', 'Immobili LPP');

        -- Level 2: Logements sociaux
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('logements-sociaux', 'logements-sociaux', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('logements-sociaux', 'fr', 'Logements sociaux');
        PERFORM insert_category_translations('logements-sociaux', 'ar', 'سكن اجتماعي');
        PERFORM insert_category_translations('logements-sociaux', 'de', 'Sozialwohnungen');
        PERFORM insert_category_translations('logements-sociaux', 'en', 'Social housing');
        PERFORM insert_category_translations('logements-sociaux', 'es', 'Viviendas sociales');
        PERFORM insert_category_translations('logements-sociaux', 'it', 'Alloggi sociali');

        -- Level 2: Résidences étudiantes
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('residences-etudiantes', 'residences-etudiantes', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('residences-etudiantes', 'fr', 'Résidences étudiantes');
        PERFORM insert_category_translations('residences-etudiantes', 'ar', 'إقامات طلابية');
        PERFORM insert_category_translations('residences-etudiantes', 'de', 'Studentenwohnheime');
        PERFORM insert_category_translations('residences-etudiantes', 'en', 'Student residences');
        PERFORM insert_category_translations('residences-etudiantes', 'es', 'Residencias estudiantiles');
        PERFORM insert_category_translations('residences-etudiantes', 'it', 'Residenze studentesche');

        -- Level 2: Résidences seniors
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('residences-seniors', 'residences-seniors', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('residences-seniors', 'fr', 'Résidences seniors');
        PERFORM insert_category_translations('residences-seniors', 'ar', 'إقامات لكبار السن');
        PERFORM insert_category_translations('residences-seniors', 'de', 'Seniorenresidenzen');
        PERFORM insert_category_translations('residences-seniors', 'en', 'Senior residences');
        PERFORM insert_category_translations('residences-seniors', 'es', 'Residencias para mayores');
        PERFORM insert_category_translations('residences-seniors', 'it', 'Residenze per anziani');

        -- Level 2: Biens locatifs
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('biens-locatifs', 'biens-locatifs', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('biens-locatifs', 'fr', 'Biens locatifs');
        PERFORM insert_category_translations('biens-locatifs', 'ar', 'عقارات للإيجار');
        PERFORM insert_category_translations('biens-locatifs', 'de', 'Mietobjekte');
        PERFORM insert_category_translations('biens-locatifs', 'en', 'Rental properties');
        PERFORM insert_category_translations('biens-locatifs', 'es', 'Bienes para alquilar');
        PERFORM insert_category_translations('biens-locatifs', 'it', 'Immobili da locazione');

        -- Level 2: Immeubles de rapport
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('immeubles-de-rapport', 'immeubles-de-rapport', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('immeubles-de-rapport', 'fr', 'Immeubles de rapport');
        PERFORM insert_category_translations('immeubles-de-rapport', 'ar', 'عمارات دخل');
        PERFORM insert_category_translations('immeubles-de-rapport', 'de', 'Ertragsimmobilien');
        PERFORM insert_category_translations('immeubles-de-rapport', 'en', 'Yield buildings');
        PERFORM insert_category_translations('immeubles-de-rapport', 'es', 'Edificios de renta');
        PERFORM insert_category_translations('immeubles-de-rapport', 'it', 'Immobili a reddito');

        -- Level 2: Terrains promotionnels
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('terrains-promotionnels', 'terrains-promotionnels', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('terrains-promotionnels', 'fr', 'Terrains promotionnels');
        PERFORM insert_category_translations('terrains-promotionnels', 'ar', 'أراضٍ ترويجية');
        PERFORM insert_category_translations('terrains-promotionnels', 'de', 'Fördergrundstücke');
        PERFORM insert_category_translations('terrains-promotionnels', 'en', 'Promotional land');
        PERFORM insert_category_translations('terrains-promotionnels', 'es', 'Terrenos promocionales');
        PERFORM insert_category_translations('terrains-promotionnels', 'it', 'Terreni promozionali');

    -- Level 1: Maison & Mobilier Intérieur
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('maison-mobilier-interieur', 'maison-mobilier-interieur', root_id, 1)
    ON CONFLICT (id) DO UPDATE SET parent_id = root_id, level = 1
    RETURNING id INTO l1_id;

    PERFORM insert_category_translations('maison-mobilier-interieur', 'fr', 'Maison & Mobilier Intérieur');
    PERFORM insert_category_translations('maison-mobilier-interieur', 'ar', 'المنزل والأثاث الداخلي');
    PERFORM insert_category_translations('maison-mobilier-interieur', 'de', 'Haus & Inneneinrichtung');
    PERFORM insert_category_translations('maison-mobilier-interieur', 'en', 'Home & Interior Furniture');
    PERFORM insert_category_translations('maison-mobilier-interieur', 'es', 'Hogar y mobiliario interior');
    PERFORM insert_category_translations('maison-mobilier-interieur', 'it', 'Casa & arredamento interno');

        -- Level 2: Salons & canapés
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('salons-canapes', 'salons-canapes', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('salons-canapes', 'fr', 'Salons & canapés');
        PERFORM insert_category_translations('salons-canapes', 'ar', 'صالات وجلوس');
        PERFORM insert_category_translations('salons-canapes', 'de', 'Wohnzimmer & Sofas');
        PERFORM insert_category_translations('salons-canapes', 'en', 'Living rooms & sofas');
        PERFORM insert_category_translations('salons-canapes', 'es', 'Salones y sofás');
        PERFORM insert_category_translations('salons-canapes', 'it', 'Soggiorni & divani');

        -- Level 2: Tables & chaises
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('tables-chaises', 'tables-chaises', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('tables-chaises', 'fr', 'Tables & chaises');
        PERFORM insert_category_translations('tables-chaises', 'ar', 'طاولات وكراسي');
        PERFORM insert_category_translations('tables-chaises', 'de', 'Tische & Stühle');
        PERFORM insert_category_translations('tables-chaises', 'en', 'Tables & chairs');
        PERFORM insert_category_translations('tables-chaises', 'es', 'Mesas y sillas');
        PERFORM insert_category_translations('tables-chaises', 'it', 'Tavoli & sedie');

        -- Level 2: Armoires
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('armoires', 'armoires', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('armoires', 'fr', 'Armoires');
        PERFORM insert_category_translations('armoires', 'ar', 'خزائن');
        PERFORM insert_category_translations('armoires', 'de', 'Schränke');
        PERFORM insert_category_translations('armoires', 'en', 'Wardrobes');
        PERFORM insert_category_translations('armoires', 'es', 'Armarios');
        PERFORM insert_category_translations('armoires', 'it', 'Armadi');

        -- Level 2: Dressings
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('dressings', 'dressings', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('dressings', 'fr', 'Dressings');
        PERFORM insert_category_translations('dressings', 'ar', 'غرف تبديل الملابس');
        PERFORM insert_category_translations('dressings', 'de', 'Kleiderschränke');
        PERFORM insert_category_translations('dressings', 'en', 'Closets');
        PERFORM insert_category_translations('dressings', 'es', 'Vestidores');
        PERFORM insert_category_translations('dressings', 'it', 'Cabine armadio');

        -- Level 2: Lits & matelas
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('lits-matelas', 'lits-matelas', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('lits-matelas', 'fr', 'Lits & matelas');
        PERFORM insert_category_translations('lits-matelas', 'ar', 'أسرة ومراتب');
        PERFORM insert_category_translations('lits-matelas', 'de', 'Betten & Matratzen');
        PERFORM insert_category_translations('lits-matelas', 'en', 'Beds & mattresses');
        PERFORM insert_category_translations('lits-matelas', 'es', 'Camas y colchones');
        PERFORM insert_category_translations('lits-matelas', 'it', 'Letti & materassi');

        -- Level 2: Meubles TV
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('meubles-tv', 'meubles-tv', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('meubles-tv', 'fr', 'Meubles TV');
        PERFORM insert_category_translations('meubles-tv', 'ar', 'أثاث التلفاز');
        PERFORM insert_category_translations('meubles-tv', 'de', 'TV‑Möbel');
        PERFORM insert_category_translations('meubles-tv', 'en', 'TV furniture');
        PERFORM insert_category_translations('meubles-tv', 'es', 'Muebles TV');
        PERFORM insert_category_translations('meubles-tv', 'it', 'Mobili TV');

        -- Level 2: Buffets & commodes
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('buffets-commodes', 'buffets-commodes', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('buffets-commodes', 'fr', 'Buffets & commodes');
        PERFORM insert_category_translations('buffets-commodes', 'ar', 'بوفيهات وكمود');
        PERFORM insert_category_translations('buffets-commodes', 'de', 'Anrichten & Kommoden');
        PERFORM insert_category_translations('buffets-commodes', 'en', 'Sideboards & dressers');
        PERFORM insert_category_translations('buffets-commodes', 'es', 'Buffets y cómodas');
        PERFORM insert_category_translations('buffets-commodes', 'it', 'Credenze & comò');

        -- Level 2: Bibliothèques
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('bibliotheques', 'bibliotheques', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('bibliotheques', 'fr', 'Bibliothèques');
        PERFORM insert_category_translations('bibliotheques', 'ar', 'مكتبات');
        PERFORM insert_category_translations('bibliotheques', 'de', 'Bücherregale');
        PERFORM insert_category_translations('bibliotheques', 'en', 'Bookcases');
        PERFORM insert_category_translations('bibliotheques', 'es', 'Librerías');
        PERFORM insert_category_translations('bibliotheques', 'it', 'Librerie');

        -- Level 2: Meubles enfants
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('meubles-enfants', 'meubles-enfants', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('meubles-enfants', 'fr', 'Meubles enfants');
        PERFORM insert_category_translations('meubles-enfants', 'ar', 'أثاث الأطفال');
        PERFORM insert_category_translations('meubles-enfants', 'de', 'Kindermöbel');
        PERFORM insert_category_translations('meubles-enfants', 'en', 'Kids’ furniture');
        PERFORM insert_category_translations('meubles-enfants', 'es', 'Muebles infantiles');
        PERFORM insert_category_translations('meubles-enfants', 'it', 'Mobili bambini');

        -- Level 2: Petits meubles
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('petits-meubles', 'petits-meubles', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('petits-meubles', 'fr', 'Petits meubles');
        PERFORM insert_category_translations('petits-meubles', 'ar', 'أثاث صغير');
        PERFORM insert_category_translations('petits-meubles', 'de', 'Kleinmöbel');
        PERFORM insert_category_translations('petits-meubles', 'en', 'Small furniture');
        PERFORM insert_category_translations('petits-meubles', 'es', 'Muebles pequeños');
        PERFORM insert_category_translations('petits-meubles', 'it', 'Piccoli mobili');

        -- Level 2: Rangements
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('rangements', 'rangements', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('rangements', 'fr', 'Rangements');
        PERFORM insert_category_translations('rangements', 'ar', 'تخزين وتنظيم');
        PERFORM insert_category_translations('rangements', 'de', 'Aufbewahrung');
        PERFORM insert_category_translations('rangements', 'en', 'Storage');
        PERFORM insert_category_translations('rangements', 'es', 'Almacenaje');
        PERFORM insert_category_translations('rangements', 'it', 'Sistemi di contenimento');

    -- Level 1: Décoration & Accessoires Maison
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('decoration-accessoires-maison', 'decoration-accessoires-maison', root_id, 1)
    ON CONFLICT (id) DO UPDATE SET parent_id = root_id, level = 1
    RETURNING id INTO l1_id;

    PERFORM insert_category_translations('decoration-accessoires-maison', 'fr', 'Décoration & Accessoires Maison');
    PERFORM insert_category_translations('decoration-accessoires-maison', 'ar', 'ديكور وإكسسوارات المنزل');
    PERFORM insert_category_translations('decoration-accessoires-maison', 'de', 'Deko & Wohnaccessoires');
    PERFORM insert_category_translations('decoration-accessoires-maison', 'en', 'Home Decor & Accessories');
    PERFORM insert_category_translations('decoration-accessoires-maison', 'es', 'Decoración y accesorios hogar');
    PERFORM insert_category_translations('decoration-accessoires-maison', 'it', 'Decorazione & accessori casa');

        -- Level 2: Tapis
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('tapis', 'tapis', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('tapis', 'fr', 'Tapis');
        PERFORM insert_category_translations('tapis', 'ar', 'سجاد');
        PERFORM insert_category_translations('tapis', 'de', 'Teppiche');
        PERFORM insert_category_translations('tapis', 'en', 'Rugs');
        PERFORM insert_category_translations('tapis', 'es', 'Alfombras');
        PERFORM insert_category_translations('tapis', 'it', 'Tappeti');

        -- Level 2: Rideaux & voilages
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('rideaux-voilages', 'rideaux-voilages', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('rideaux-voilages', 'fr', 'Rideaux & voilages');
        PERFORM insert_category_translations('rideaux-voilages', 'ar', 'ستائر وحواجز');
        PERFORM insert_category_translations('rideaux-voilages', 'de', 'Vorhänge & Stores');
        PERFORM insert_category_translations('rideaux-voilages', 'en', 'Curtains & sheers');
        PERFORM insert_category_translations('rideaux-voilages', 'es', 'Cortinas y visillos');
        PERFORM insert_category_translations('rideaux-voilages', 'it', 'Tende & veli');

        -- Level 2: Luminaires
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('luminaires', 'luminaires', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('luminaires', 'fr', 'Luminaires');
        PERFORM insert_category_translations('luminaires', 'ar', 'إضاءة');
        PERFORM insert_category_translations('luminaires', 'de', 'Leuchten');
        PERFORM insert_category_translations('luminaires', 'en', 'Lighting');
        PERFORM insert_category_translations('luminaires', 'es', 'Iluminación');
        PERFORM insert_category_translations('luminaires', 'it', 'Illuminazione');

        -- Level 2: Cadres & tableaux
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('cadres-tableaux', 'cadres-tableaux', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('cadres-tableaux', 'fr', 'Cadres & tableaux');
        PERFORM insert_category_translations('cadres-tableaux', 'ar', 'إطارات ولوحات');
        PERFORM insert_category_translations('cadres-tableaux', 'de', 'Rahmen & Bilder');
        PERFORM insert_category_translations('cadres-tableaux', 'en', 'Frames & paintings');
        PERFORM insert_category_translations('cadres-tableaux', 'es', 'Marcos y cuadros');
        PERFORM insert_category_translations('cadres-tableaux', 'it', 'Cornici & quadri');

        -- Level 2: Miroirs
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('miroirs', 'miroirs', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('miroirs', 'fr', 'Miroirs');
        PERFORM insert_category_translations('miroirs', 'ar', 'مرايا');
        PERFORM insert_category_translations('miroirs', 'de', 'Spiegel');
        PERFORM insert_category_translations('miroirs', 'en', 'Mirrors');
        PERFORM insert_category_translations('miroirs', 'es', 'Espejos');
        PERFORM insert_category_translations('miroirs', 'it', 'Specchi');

        -- Level 2: Horloges
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('horloges', 'horloges', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('horloges', 'fr', 'Horloges');
        PERFORM insert_category_translations('horloges', 'ar', 'ساعات');
        PERFORM insert_category_translations('horloges', 'de', 'Uhren');
        PERFORM insert_category_translations('horloges', 'en', 'Clocks');
        PERFORM insert_category_translations('horloges', 'es', 'Relojes');
        PERFORM insert_category_translations('horloges', 'it', 'Orologi');

        -- Level 2: Accessoires décoratifs
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('accessoires-decoratifs', 'accessoires-decoratifs', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('accessoires-decoratifs', 'fr', 'Accessoires décoratifs');
        PERFORM insert_category_translations('accessoires-decoratifs', 'ar', 'إكسسوارات ديكور');
        PERFORM insert_category_translations('accessoires-decoratifs', 'de', 'Deko‑Accessoires');
        PERFORM insert_category_translations('accessoires-decoratifs', 'en', 'Decorative accessories');
        PERFORM insert_category_translations('accessoires-decoratifs', 'es', 'Accesorios decorativos');
        PERFORM insert_category_translations('accessoires-decoratifs', 'it', 'Accessori decorativi');

        -- Level 2: Stickers muraux
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('stickers-muraux', 'stickers-muraux', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('stickers-muraux', 'fr', 'Stickers muraux');
        PERFORM insert_category_translations('stickers-muraux', 'ar', 'ملصقات جدارية');
        PERFORM insert_category_translations('stickers-muraux', 'de', 'Wandsticker');
        PERFORM insert_category_translations('stickers-muraux', 'en', 'Wall stickers');
        PERFORM insert_category_translations('stickers-muraux', 'es', 'Pegatinas de pared');
        PERFORM insert_category_translations('stickers-muraux', 'it', 'Adesivi murali');

        -- Level 2: Coussins & textiles
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('coussins-textiles', 'coussins-textiles', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('coussins-textiles', 'fr', 'Coussins & textiles');
        PERFORM insert_category_translations('coussins-textiles', 'ar', 'وسائد ومنسوجات');
        PERFORM insert_category_translations('coussins-textiles', 'de', 'Kissen & Textilien');
        PERFORM insert_category_translations('coussins-textiles', 'en', 'Cushions & textiles');
        PERFORM insert_category_translations('coussins-textiles', 'es', 'Cojines y textiles');
        PERFORM insert_category_translations('coussins-textiles', 'it', 'Cuscini & tessili');

        -- Level 2: Vases & décor floral
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('vases-decor-floral', 'vases-decor-floral', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('vases-decor-floral', 'fr', 'Vases & décor floral');
        PERFORM insert_category_translations('vases-decor-floral', 'ar', 'مزهريات وديكور زهري');
        PERFORM insert_category_translations('vases-decor-floral', 'de', 'Vasen & Blumendeko');
        PERFORM insert_category_translations('vases-decor-floral', 'en', 'Vases & floral decor');
        PERFORM insert_category_translations('vases-decor-floral', 'es', 'Jarrones y decoración floral');
        PERFORM insert_category_translations('vases-decor-floral', 'it', 'Vasi & decorazione floreale');

    -- Level 1: Cuisine & Salle de Bain
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('cuisine-salle-de-bain', 'cuisine-salle-de-bain', root_id, 1)
    ON CONFLICT (id) DO UPDATE SET parent_id = root_id, level = 1
    RETURNING id INTO l1_id;

    PERFORM insert_category_translations('cuisine-salle-de-bain', 'fr', 'Cuisine & Salle de Bain');
    PERFORM insert_category_translations('cuisine-salle-de-bain', 'ar', 'المطبخ والحمام');
    PERFORM insert_category_translations('cuisine-salle-de-bain', 'de', 'Küche & Bad');
    PERFORM insert_category_translations('cuisine-salle-de-bain', 'en', 'Kitchen & Bathroom');
    PERFORM insert_category_translations('cuisine-salle-de-bain', 'es', 'Cocina y baño');
    PERFORM insert_category_translations('cuisine-salle-de-bain', 'it', 'Cucina & bagno');

        -- Level 2: Ustensiles de cuisine
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('ustensiles-de-cuisine', 'ustensiles-de-cuisine', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('ustensiles-de-cuisine', 'fr', 'Ustensiles de cuisine');
        PERFORM insert_category_translations('ustensiles-de-cuisine', 'ar', 'أدوات المطبخ');
        PERFORM insert_category_translations('ustensiles-de-cuisine', 'de', 'Küchenutensilien');
        PERFORM insert_category_translations('ustensiles-de-cuisine', 'en', 'Kitchen utensils');
        PERFORM insert_category_translations('ustensiles-de-cuisine', 'es', 'Utensilios de cocina');
        PERFORM insert_category_translations('ustensiles-de-cuisine', 'it', 'Utensili da cucina');

        -- Level 2: Casseroles & poêles
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('casseroles-poeles', 'casseroles-poeles', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('casseroles-poeles', 'fr', 'Casseroles & poêles');
        PERFORM insert_category_translations('casseroles-poeles', 'ar', 'قدور ومقالي');
        PERFORM insert_category_translations('casseroles-poeles', 'de', 'Töpfe & Pfannen');
        PERFORM insert_category_translations('casseroles-poeles', 'en', 'Pots & pans');
        PERFORM insert_category_translations('casseroles-poeles', 'es', 'Cazuelas y sartenes');
        PERFORM insert_category_translations('casseroles-poeles', 'it', 'Pentole & padelle');

        -- Level 2: Vaisselle
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('vaisselle', 'vaisselle', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('vaisselle', 'fr', 'Vaisselle');
        PERFORM insert_category_translations('vaisselle', 'ar', 'أواني');
        PERFORM insert_category_translations('vaisselle', 'de', 'Geschirr');
        PERFORM insert_category_translations('vaisselle', 'en', 'Tableware');
        PERFORM insert_category_translations('vaisselle', 'es', 'Vajilla');
        PERFORM insert_category_translations('vaisselle', 'it', 'Stoviglie');

        -- Level 2: Couverts
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('couverts', 'couverts', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('couverts', 'fr', 'Couverts');
        PERFORM insert_category_translations('couverts', 'ar', 'أدوات المائدة');
        PERFORM insert_category_translations('couverts', 'de', 'Besteck');
        PERFORM insert_category_translations('couverts', 'en', 'Cutlery');
        PERFORM insert_category_translations('couverts', 'es', 'Cubiertos');
        PERFORM insert_category_translations('couverts', 'it', 'Posate');

        -- Level 2: Robots de cuisine
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('robots-de-cuisine', 'robots-de-cuisine', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('robots-de-cuisine', 'fr', 'Robots de cuisine');
        PERFORM insert_category_translations('robots-de-cuisine', 'ar', 'أجهزة المطبخ');
        PERFORM insert_category_translations('robots-de-cuisine', 'de', 'Küchenmaschinen');
        PERFORM insert_category_translations('robots-de-cuisine', 'en', 'Kitchen robots');
        PERFORM insert_category_translations('robots-de-cuisine', 'es', 'Robots de cocina');
        PERFORM insert_category_translations('robots-de-cuisine', 'it', 'Robot da cucina');

        -- Level 2: Plaques & fours
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('plaques-fours', 'plaques-fours', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('plaques-fours', 'fr', 'Plaques & fours');
        PERFORM insert_category_translations('plaques-fours', 'ar', 'مواقد وأفران');
        PERFORM insert_category_translations('plaques-fours', 'de', 'Kochfelder & Öfen');
        PERFORM insert_category_translations('plaques-fours', 'en', 'Cooktops & ovens');
        PERFORM insert_category_translations('plaques-fours', 'es', 'Placas y hornos');
        PERFORM insert_category_translations('plaques-fours', 'it', 'Piani cottura & forni');

        -- Level 2: Équipements sanitaires
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('equipements-sanitaires', 'equipements-sanitaires', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('equipements-sanitaires', 'fr', 'Équipements sanitaires');
        PERFORM insert_category_translations('equipements-sanitaires', 'ar', 'معدات صحية');
        PERFORM insert_category_translations('equipements-sanitaires', 'de', 'Sanitärausstattung');
        PERFORM insert_category_translations('equipements-sanitaires', 'en', 'Sanitary equipment');
        PERFORM insert_category_translations('equipements-sanitaires', 'es', 'Equipos sanitarios');
        PERFORM insert_category_translations('equipements-sanitaires', 'it', 'Sanitari');

        -- Level 2: Baignoires
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('baignoires', 'baignoires', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('baignoires', 'fr', 'Baignoires');
        PERFORM insert_category_translations('baignoires', 'ar', 'أحواض استحمام');
        PERFORM insert_category_translations('baignoires', 'de', 'Badewannen');
        PERFORM insert_category_translations('baignoires', 'en', 'Bathtubs');
        PERFORM insert_category_translations('baignoires', 'es', 'Bañeras');
        PERFORM insert_category_translations('baignoires', 'it', 'Vasche');

        -- Level 2: Douches
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('douches', 'douches', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('douches', 'fr', 'Douches');
        PERFORM insert_category_translations('douches', 'ar', 'دش');
        PERFORM insert_category_translations('douches', 'de', 'Duschen');
        PERFORM insert_category_translations('douches', 'en', 'Showers');
        PERFORM insert_category_translations('douches', 'es', 'Duchas');
        PERFORM insert_category_translations('douches', 'it', 'Docce');

        -- Level 2: Lavabos
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('lavabos', 'lavabos', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('lavabos', 'fr', 'Lavabos');
        PERFORM insert_category_translations('lavabos', 'ar', 'مغاسل');
        PERFORM insert_category_translations('lavabos', 'de', 'Waschbecken');
        PERFORM insert_category_translations('lavabos', 'en', 'Sinks');
        PERFORM insert_category_translations('lavabos', 'es', 'Lavabos');
        PERFORM insert_category_translations('lavabos', 'it', 'Lavabi');

        -- Level 2: Robinetterie
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('robinetterie', 'robinetterie', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('robinetterie', 'fr', 'Robinetterie');
        PERFORM insert_category_translations('robinetterie', 'ar', 'خلاطات ومحابس');
        PERFORM insert_category_translations('robinetterie', 'de', 'Armaturen');
        PERFORM insert_category_translations('robinetterie', 'en', 'Faucets');
        PERFORM insert_category_translations('robinetterie', 'es', 'Grifería');
        PERFORM insert_category_translations('robinetterie', 'it', 'Rubinetteria');

        -- Level 2: Meubles de salle de bain
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('meubles-de-salle-de-bain', 'meubles-de-salle-de-bain', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('meubles-de-salle-de-bain', 'fr', 'Meubles de salle de bain');
        PERFORM insert_category_translations('meubles-de-salle-de-bain', 'ar', 'أثاث الحمام');
        PERFORM insert_category_translations('meubles-de-salle-de-bain', 'de', 'Badezimmermöbel');
        PERFORM insert_category_translations('meubles-de-salle-de-bain', 'en', 'Bathroom furniture');
        PERFORM insert_category_translations('meubles-de-salle-de-bain', 'es', 'Muebles de baño');
        PERFORM insert_category_translations('meubles-de-salle-de-bain', 'it', 'Mobili bagno');

    -- Level 1: Jardin & Extérieur
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('jardin-exterieur', 'jardin-exterieur', root_id, 1)
    ON CONFLICT (id) DO UPDATE SET parent_id = root_id, level = 1
    RETURNING id INTO l1_id;

    PERFORM insert_category_translations('jardin-exterieur', 'fr', 'Jardin & Extérieur');
    PERFORM insert_category_translations('jardin-exterieur', 'ar', 'الحديقة والخارج');
    PERFORM insert_category_translations('jardin-exterieur', 'de', 'Garten & Außenbereich');
    PERFORM insert_category_translations('jardin-exterieur', 'en', 'Garden & Outdoor');
    PERFORM insert_category_translations('jardin-exterieur', 'es', 'Jardín y exterior');
    PERFORM insert_category_translations('jardin-exterieur', 'it', 'Giardino & esterni');

        -- Level 2: Mobilier de jardin
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('mobilier-de-jardin', 'mobilier-de-jardin', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('mobilier-de-jardin', 'fr', 'Mobilier de jardin');
        PERFORM insert_category_translations('mobilier-de-jardin', 'ar', 'أثاث الحديقة');
        PERFORM insert_category_translations('mobilier-de-jardin', 'de', 'Gartenmöbel');
        PERFORM insert_category_translations('mobilier-de-jardin', 'en', 'Garden furniture');
        PERFORM insert_category_translations('mobilier-de-jardin', 'es', 'Mobiliario de jardín');
        PERFORM insert_category_translations('mobilier-de-jardin', 'it', 'Arredo giardino');

        -- Level 2: Salons extérieurs
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('salons-exterieurs', 'salons-exterieurs', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('salons-exterieurs', 'fr', 'Salons extérieurs');
        PERFORM insert_category_translations('salons-exterieurs', 'ar', 'جلسات خارجية');
        PERFORM insert_category_translations('salons-exterieurs', 'de', 'Outdoor‑Sitzgruppen');
        PERFORM insert_category_translations('salons-exterieurs', 'en', 'Outdoor lounges');
        PERFORM insert_category_translations('salons-exterieurs', 'es', 'Salones exteriores');
        PERFORM insert_category_translations('salons-exterieurs', 'it', 'Salotti da esterno');

        -- Level 2: Parasols
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('parasols', 'parasols', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('parasols', 'fr', 'Parasols');
        PERFORM insert_category_translations('parasols', 'ar', 'مظلات');
        PERFORM insert_category_translations('parasols', 'de', 'Sonnenschirme');
        PERFORM insert_category_translations('parasols', 'en', 'Parasols');
        PERFORM insert_category_translations('parasols', 'es', 'Sombrillas');
        PERFORM insert_category_translations('parasols', 'it', 'Ombrelloni');

        -- Level 2: Barbecues
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('barbecues', 'barbecues', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('barbecues', 'fr', 'Barbecues');
        PERFORM insert_category_translations('barbecues', 'ar', 'شوايات');
        PERFORM insert_category_translations('barbecues', 'de', 'Grills');
        PERFORM insert_category_translations('barbecues', 'en', 'Barbecues');
        PERFORM insert_category_translations('barbecues', 'es', 'Barbacoas');
        PERFORM insert_category_translations('barbecues', 'it', 'Barbecue');

        -- Level 2: Tondeuses
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('tondeuses', 'tondeuses', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('tondeuses', 'fr', 'Tondeuses');
        PERFORM insert_category_translations('tondeuses', 'ar', 'جزازات عشب');
        PERFORM insert_category_translations('tondeuses', 'de', 'Rasenmäher');
        PERFORM insert_category_translations('tondeuses', 'en', 'Lawn mowers');
        PERFORM insert_category_translations('tondeuses', 'es', 'Cortacésped');
        PERFORM insert_category_translations('tondeuses', 'it', 'Tosaerba');

        -- Level 2: Débroussailleuses
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('debroussailleuses', 'debroussailleuses', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('debroussailleuses', 'fr', 'Débroussailleuses');
        PERFORM insert_category_translations('debroussailleuses', 'ar', 'مزيلات أعشاب');
        PERFORM insert_category_translations('debroussailleuses', 'de', 'Freischneider');
        PERFORM insert_category_translations('debroussailleuses', 'en', 'Brushcutters');
        PERFORM insert_category_translations('debroussailleuses', 'es', 'Desbrozadoras');
        PERFORM insert_category_translations('debroussailleuses', 'it', 'Decespugliatori');

        -- Level 2: Tronçonneuses
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('tronconneuses', 'tronconneuses', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('tronconneuses', 'fr', 'Tronçonneuses');
        PERFORM insert_category_translations('tronconneuses', 'ar', 'مناشير');
        PERFORM insert_category_translations('tronconneuses', 'de', 'Kettensägen');
        PERFORM insert_category_translations('tronconneuses', 'en', 'Chainsaws');
        PERFORM insert_category_translations('tronconneuses', 'es', 'Motosierras');
        PERFORM insert_category_translations('tronconneuses', 'it', 'Motoseghe');

        -- Level 2: Outils de jardinage
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('outils-de-jardinage', 'outils-de-jardinage', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('outils-de-jardinage', 'fr', 'Outils de jardinage');
        PERFORM insert_category_translations('outils-de-jardinage', 'ar', 'أدوات البستنة');
        PERFORM insert_category_translations('outils-de-jardinage', 'de', 'Gartengeräte');
        PERFORM insert_category_translations('outils-de-jardinage', 'en', 'Gardening tools');
        PERFORM insert_category_translations('outils-de-jardinage', 'es', 'Herramientas de jardín');
        PERFORM insert_category_translations('outils-de-jardinage', 'it', 'Attrezzi da giardinaggio');

        -- Level 2: Pots & jardinières
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('pots-jardinieres', 'pots-jardinieres', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('pots-jardinieres', 'fr', 'Pots & jardinières');
        PERFORM insert_category_translations('pots-jardinieres', 'ar', 'أصص وزروع');
        PERFORM insert_category_translations('pots-jardinieres', 'de', 'Töpfe & Pflanzkübel');
        PERFORM insert_category_translations('pots-jardinieres', 'en', 'Pots & planters');
        PERFORM insert_category_translations('pots-jardinieres', 'es', 'Macetas y jardineras');
        PERFORM insert_category_translations('pots-jardinieres', 'it', 'Vasi & fioriere');

        -- Level 2: Serres
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('serres', 'serres', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('serres', 'fr', 'Serres');
        PERFORM insert_category_translations('serres', 'ar', 'بيوت زجاجية');
        PERFORM insert_category_translations('serres', 'de', 'Gewächshäuser');
        PERFORM insert_category_translations('serres', 'en', 'Greenhouses');
        PERFORM insert_category_translations('serres', 'es', 'Invernaderos');
        PERFORM insert_category_translations('serres', 'it', 'Serre');

        -- Level 2: Piscines & accessoires
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('piscines-accessoires', 'piscines-accessoires', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('piscines-accessoires', 'fr', 'Piscines & accessoires');
        PERFORM insert_category_translations('piscines-accessoires', 'ar', 'مسابح وإكسسوارات');
        PERFORM insert_category_translations('piscines-accessoires', 'de', 'Pools & Zubehör');
        PERFORM insert_category_translations('piscines-accessoires', 'en', 'Pools & accessories');
        PERFORM insert_category_translations('piscines-accessoires', 'es', 'Piscinas y accesorios');
        PERFORM insert_category_translations('piscines-accessoires', 'it', 'Piscine & accessori');

        -- Level 2: Éclairage extérieur
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('eclairage-exterieur', 'eclairage-exterieur', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('eclairage-exterieur', 'fr', 'Éclairage extérieur');
        PERFORM insert_category_translations('eclairage-exterieur', 'ar', 'إضاءة خارجية');
        PERFORM insert_category_translations('eclairage-exterieur', 'de', 'Außenbeleuchtung');
        PERFORM insert_category_translations('eclairage-exterieur', 'en', 'Outdoor lighting');
        PERFORM insert_category_translations('eclairage-exterieur', 'es', 'Iluminación exterior');
        PERFORM insert_category_translations('eclairage-exterieur', 'it', 'Illuminazione esterna');

    -- Level 1: Bricolage & Amélioration Maison
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('bricolage-amelioration-maison', 'bricolage-amelioration-maison', root_id, 1)
    ON CONFLICT (id) DO UPDATE SET parent_id = root_id, level = 1
    RETURNING id INTO l1_id;

    PERFORM insert_category_translations('bricolage-amelioration-maison', 'fr', 'Bricolage & Amélioration Maison');
    PERFORM insert_category_translations('bricolage-amelioration-maison', 'ar', 'أعمال منزلية وتحسين المسكن');
    PERFORM insert_category_translations('bricolage-amelioration-maison', 'de', 'Heimwerken & Hausverbesserung');
    PERFORM insert_category_translations('bricolage-amelioration-maison', 'en', 'DIY & Home Improvement');
    PERFORM insert_category_translations('bricolage-amelioration-maison', 'es', 'Bricolaje y mejora del hogar');
    PERFORM insert_category_translations('bricolage-amelioration-maison', 'it', 'Fai da te & miglioramento casa');

        -- Level 2: Outils électroportatifs (perceuses, visseuses, meuleuses)
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('outils-electroportatifs', 'outils-electroportatifs', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('outils-electroportatifs', 'fr', 'Outils électroportatifs (perceuses, visseuses, meuleuses)');
        PERFORM insert_category_translations('outils-electroportatifs', 'ar', 'أدوات كهربائية (مثاقب، مفكات، جلاخات)');
        PERFORM insert_category_translations('outils-electroportatifs', 'de', 'Elektrowerkzeuge (Bohrer, Schrauber, Schleifer)');
        PERFORM insert_category_translations('outils-electroportatifs', 'en', 'Power tools (drills, screwdrivers, grinders)');
        PERFORM insert_category_translations('outils-electroportatifs', 'es', 'Herramientas eléctricas (taladros, atornilladores, amoladoras)');
        PERFORM insert_category_translations('outils-electroportatifs', 'it', 'Utensili elettrici (trapani, avvitatori, smerigliatrici)');

        -- Level 2: Outils à main
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('outils-a-main', 'outils-a-main', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('outils-a-main', 'fr', 'Outils à main');
        PERFORM insert_category_translations('outils-a-main', 'ar', 'أدوات يدوية');
        PERFORM insert_category_translations('outils-a-main', 'de', 'Handwerkzeuge');
        PERFORM insert_category_translations('outils-a-main', 'en', 'Hand tools');
        PERFORM insert_category_translations('outils-a-main', 'es', 'Herramientas manuales');
        PERFORM insert_category_translations('outils-a-main', 'it', 'Utensili manuali');

        -- Level 2: Peinture
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('peinture', 'peinture', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('peinture', 'fr', 'Peinture');
        PERFORM insert_category_translations('peinture', 'ar', 'دهان');
        PERFORM insert_category_translations('peinture', 'de', 'Farbe');
        PERFORM insert_category_translations('peinture', 'en', 'Paint');
        PERFORM insert_category_translations('peinture', 'es', 'Pintura');
        PERFORM insert_category_translations('peinture', 'it', 'Vernici');

        -- Level 2: Revêtements murs & sols
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('revetements-murs-sols', 'revetements-murs-sols', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('revetements-murs-sols', 'fr', 'Revêtements murs & sols');
        PERFORM insert_category_translations('revetements-murs-sols', 'ar', 'كسوة الجدران والأرضيات');
        PERFORM insert_category_translations('revetements-murs-sols', 'de', 'Wand- & Bodenbeläge');
        PERFORM insert_category_translations('revetements-murs-sols', 'en', 'Wall & floor coverings');
        PERFORM insert_category_translations('revetements-murs-sols', 'es', 'Revestimientos de paredes y suelos');
        PERFORM insert_category_translations('revetements-murs-sols', 'it', 'Rivestimenti pareti & pavimenti');

        -- Level 2: Parquet
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('parquet', 'parquet', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('parquet', 'fr', 'Parquet');
        PERFORM insert_category_translations('parquet', 'ar', 'باركيه');
        PERFORM insert_category_translations('parquet', 'de', 'Parkett');
        PERFORM insert_category_translations('parquet', 'en', 'Parquet');
        PERFORM insert_category_translations('parquet', 'es', 'Parqué');
        PERFORM insert_category_translations('parquet', 'it', 'Parquet');

        -- Level 2: Carrelage
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('carrelage', 'carrelage', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('carrelage', 'fr', 'Carrelage');
        PERFORM insert_category_translations('carrelage', 'ar', 'بلاط');
        PERFORM insert_category_translations('carrelage', 'de', 'Fliesen');
        PERFORM insert_category_translations('carrelage', 'en', 'Tiles');
        PERFORM insert_category_translations('carrelage', 'es', 'Azulejos');
        PERFORM insert_category_translations('carrelage', 'it', 'Piastrelle');

        -- Level 2: Plomberie
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('plomberie', 'plomberie', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('plomberie', 'fr', 'Plomberie');
        PERFORM insert_category_translations('plomberie', 'ar', 'سباكة');
        PERFORM insert_category_translations('plomberie', 'de', 'Sanitär');
        PERFORM insert_category_translations('plomberie', 'en', 'Plumbing');
        PERFORM insert_category_translations('plomberie', 'es', 'Fontanería');
        PERFORM insert_category_translations('plomberie', 'it', 'Idraulica');

        -- Level 2: Électricité
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('electricite', 'electricite', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('electricite', 'fr', 'Électricité');
        PERFORM insert_category_translations('electricite', 'ar', 'كهرباء');
        PERFORM insert_category_translations('electricite', 'de', 'Elektrik');
        PERFORM insert_category_translations('electricite', 'en', 'Electricity');
        PERFORM insert_category_translations('electricite', 'es', 'Electricidad');
        PERFORM insert_category_translations('electricite', 'it', 'Elettricità');

        -- Level 2: Isolation
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('isolation', 'isolation', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('isolation', 'fr', 'Isolation');
        PERFORM insert_category_translations('isolation', 'ar', 'عزل');
        PERFORM insert_category_translations('isolation', 'de', 'Dämmung');
        PERFORM insert_category_translations('isolation', 'en', 'Insulation');
        PERFORM insert_category_translations('isolation', 'es', 'Aislamiento');
        PERFORM insert_category_translations('isolation', 'it', 'Isolamento');

        -- Level 2: Matériaux de construction
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('materiaux-de-construction', 'materiaux-de-construction', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('materiaux-de-construction', 'fr', 'Matériaux de construction');
        PERFORM insert_category_translations('materiaux-de-construction', 'ar', 'مواد البناء');
        PERFORM insert_category_translations('materiaux-de-construction', 'de', 'Baumaterialien');
        PERFORM insert_category_translations('materiaux-de-construction', 'en', 'Building materials');
        PERFORM insert_category_translations('materiaux-de-construction', 'es', 'Materiales de construcción');
        PERFORM insert_category_translations('materiaux-de-construction', 'it', 'Materiali da costruzione');

        -- Level 2: Portes & fenêtres
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('portes-fenetres', 'portes-fenetres', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('portes-fenetres', 'fr', 'Portes & fenêtres');
        PERFORM insert_category_translations('portes-fenetres', 'ar', 'أبواب ونوافذ');
        PERFORM insert_category_translations('portes-fenetres', 'de', 'Türen & Fenster');
        PERFORM insert_category_translations('portes-fenetres', 'en', 'Doors & windows');
        PERFORM insert_category_translations('portes-fenetres', 'es', 'Puertas y ventanas');
        PERFORM insert_category_translations('portes-fenetres', 'it', 'Porte & finestre');

    -- Level 1: Sécurité Maison
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('securite-maison', 'securite-maison', root_id, 1)
    ON CONFLICT (id) DO UPDATE SET parent_id = root_id, level = 1
    RETURNING id INTO l1_id;

    PERFORM insert_category_translations('securite-maison', 'fr', 'Sécurité Maison');
    PERFORM insert_category_translations('securite-maison', 'ar', 'أمن المنزل');
    PERFORM insert_category_translations('securite-maison', 'de', 'Haussicherheit');
    PERFORM insert_category_translations('securite-maison', 'en', 'Home Security');
    PERFORM insert_category_translations('securite-maison', 'es', 'Seguridad del hogar');
    PERFORM insert_category_translations('securite-maison', 'it', 'Sicurezza casa');

        -- Level 2: Caméras de surveillance
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('cameras-de-surveillance', 'cameras-de-surveillance', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('cameras-de-surveillance', 'fr', 'Caméras de surveillance');
        PERFORM insert_category_translations('cameras-de-surveillance', 'ar', 'كاميرات مراقبة');
        PERFORM insert_category_translations('cameras-de-surveillance', 'de', 'Überwachungskameras');
        PERFORM insert_category_translations('cameras-de-surveillance', 'en', 'Surveillance cameras');
        PERFORM insert_category_translations('cameras-de-surveillance', 'es', 'Cámaras de vigilancia');
        PERFORM insert_category_translations('cameras-de-surveillance', 'it', 'Telecamere di sorveglianza');

        -- Level 2: Alarmes connectées
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('alarmes-connectees', 'alarmes-connectees', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('alarmes-connectees', 'fr', 'Alarmes connectées');
        PERFORM insert_category_translations('alarmes-connectees', 'ar', 'إنذارات متصلة');
        PERFORM insert_category_translations('alarmes-connectees', 'de', 'Vernetzte Alarme');
        PERFORM insert_category_translations('alarmes-connectees', 'en', 'Connected alarms');
        PERFORM insert_category_translations('alarmes-connectees', 'es', 'Alarmas conectadas');
        PERFORM insert_category_translations('alarmes-connectees', 'it', 'Allarmi connessi');

        -- Level 2: Détecteurs de fumée
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('detecteurs-de-fumee', 'detecteurs-de-fumee', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('detecteurs-de-fumee', 'fr', 'Détecteurs de fumée');
        PERFORM insert_category_translations('detecteurs-de-fumee', 'ar', 'كاشفات دخان');
        PERFORM insert_category_translations('detecteurs-de-fumee', 'de', 'Rauchmelder');
        PERFORM insert_category_translations('detecteurs-de-fumee', 'en', 'Smoke detectors');
        PERFORM insert_category_translations('detecteurs-de-fumee', 'es', 'Detectores de humo');
        PERFORM insert_category_translations('detecteurs-de-fumee', 'it', 'Rilevatori di fumo');

        -- Level 2: Serrures & cadenas
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('serrures-cadenas', 'serrures-cadenas', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('serrures-cadenas', 'fr', 'Serrures & cadenas');
        PERFORM insert_category_translations('serrures-cadenas', 'ar', 'أقفال وسلاسل');
        PERFORM insert_category_translations('serrures-cadenas', 'de', 'Schlösser & Vorhängeschlösser');
        PERFORM insert_category_translations('serrures-cadenas', 'en', 'Locks & padlocks');
        PERFORM insert_category_translations('serrures-cadenas', 'es', 'Cerraduras y candados');
        PERFORM insert_category_translations('serrures-cadenas', 'it', 'Serrature & lucchetti');

        -- Level 2: Portails automatiques
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('portails-automatiques', 'portails-automatiques', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('portails-automatiques', 'fr', 'Portails automatiques');
        PERFORM insert_category_translations('portails-automatiques', 'ar', 'بوابات آلية');
        PERFORM insert_category_translations('portails-automatiques', 'de', 'Automatische Tore');
        PERFORM insert_category_translations('portails-automatiques', 'en', 'Automatic gates');
        PERFORM insert_category_translations('portails-automatiques', 'es', 'Portones automáticos');
        PERFORM insert_category_translations('portails-automatiques', 'it', 'Cancelli automatici');

        -- Level 2: Visiophones
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('visiophones', 'visiophones', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('visiophones', 'fr', 'Visiophones');
        PERFORM insert_category_translations('visiophones', 'ar', 'أنظمة اتصال مرئي');
        PERFORM insert_category_translations('visiophones', 'de', 'Video‑Gegensprechanlagen');
        PERFORM insert_category_translations('visiophones', 'en', 'Video intercoms');
        PERFORM insert_category_translations('visiophones', 'es', 'Videoporteros');
        PERFORM insert_category_translations('visiophones', 'it', 'Videocitofoni');

        -- Level 2: Coffres-forts
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('coffres-forts', 'coffres-forts', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('coffres-forts', 'fr', 'Coffres-forts');
        PERFORM insert_category_translations('coffres-forts', 'ar', 'خزائن آمنة');
        PERFORM insert_category_translations('coffres-forts', 'de', 'Safes');
        PERFORM insert_category_translations('coffres-forts', 'en', 'Safes');
        PERFORM insert_category_translations('coffres-forts', 'es', 'Cajas fuertes');
        PERFORM insert_category_translations('coffres-forts', 'it', 'Casseforti');

    -- Level 1: Services Maison & Immobilier
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('services-maison-immobilier', 'services-maison-immobilier', root_id, 1)
    ON CONFLICT (id) DO UPDATE SET parent_id = root_id, level = 1
    RETURNING id INTO l1_id;

    PERFORM insert_category_translations('services-maison-immobilier', 'fr', 'Services Maison & Immobilier');
    PERFORM insert_category_translations('services-maison-immobilier', 'ar', 'خدمات المنزل والعقار');
    PERFORM insert_category_translations('services-maison-immobilier', 'de', 'Haus- & Immobiliendienstleistungen');
    PERFORM insert_category_translations('services-maison-immobilier', 'en', 'Home & Real Estate Services');
    PERFORM insert_category_translations('services-maison-immobilier', 'es', 'Servicios de hogar e inmobiliaria');
    PERFORM insert_category_translations('services-maison-immobilier', 'it', 'Servizi casa & immobiliare');

        -- Level 2: Agences immobilières
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('agences-immobilieres', 'agences-immobilieres', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('agences-immobilieres', 'fr', 'Agences immobilières');
        PERFORM insert_category_translations('agences-immobilieres', 'ar', 'وكالات عقارية');
        PERFORM insert_category_translations('agences-immobilieres', 'de', 'Immobilienagenturen');
        PERFORM insert_category_translations('agences-immobilieres', 'en', 'Real estate agencies');
        PERFORM insert_category_translations('agences-immobilieres', 'es', 'Agencias inmobiliarias');
        PERFORM insert_category_translations('agences-immobilieres', 'it', 'Agenzie immobiliari');

        -- Level 2: Services d’architecture
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('services-architecture', 'services-architecture', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('services-architecture', 'fr', 'Services d’architecture');
        PERFORM insert_category_translations('services-architecture', 'ar', 'خدمات الهندسة المعمارية');
        PERFORM insert_category_translations('services-architecture', 'de', 'Architekturdienstleistungen');
        PERFORM insert_category_translations('services-architecture', 'en', 'Architecture services');
        PERFORM insert_category_translations('services-architecture', 'es', 'Servicios de arquitectura');
        PERFORM insert_category_translations('services-architecture', 'it', 'Servizi di architettura');

        -- Level 2: Artisans (plomberie, électricité, peinture)
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('artisans-plomberie-electricite-peinture', 'artisans-plomberie-electricite-peinture', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('artisans-plomberie-electricite-peinture', 'fr', 'Artisans (plomberie, électricité, peinture)');
        PERFORM insert_category_translations('artisans-plomberie-electricite-peinture', 'ar', 'حرفيون (سباكة، كهرباء، طلاء)');
        PERFORM insert_category_translations('artisans-plomberie-electricite-peinture', 'de', 'Handwerker (Sanitär, Elektrik, Malerei)');
        PERFORM insert_category_translations('artisans-plomberie-electricite-peinture', 'en', 'Trades (plumbing, electricity, painting)');
        PERFORM insert_category_translations('artisans-plomberie-electricite-peinture', 'es', 'Oficios (fontanería, electricidad, pintura)');
        PERFORM insert_category_translations('artisans-plomberie-electricite-peinture', 'it', 'Artigiani (idraulica, elettricità, pittura)');

        -- Level 2: Déménagement
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('demenagement', 'demenagement', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('demenagement', 'fr', 'Déménagement');
        PERFORM insert_category_translations('demenagement', 'ar', 'نقل');
        PERFORM insert_category_translations('demenagement', 'de', 'Umzug');
        PERFORM insert_category_translations('demenagement', 'en', 'Moving');
        PERFORM insert_category_translations('demenagement', 'es', 'Mudanzas');
        PERFORM insert_category_translations('demenagement', 'it', 'Traslochi');

        -- Level 2: Nettoyage
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('nettoyage', 'nettoyage', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('nettoyage', 'fr', 'Nettoyage');
        PERFORM insert_category_translations('nettoyage', 'ar', 'تنظيف');
        PERFORM insert_category_translations('nettoyage', 'de', 'Reinigung');
        PERFORM insert_category_translations('nettoyage', 'en', 'Cleaning');
        PERFORM insert_category_translations('nettoyage', 'es', 'Limpieza');
        PERFORM insert_category_translations('nettoyage', 'it', 'Pulizia');

        -- Level 2: Entretien jardin
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('entretien-jardin', 'entretien-jardin', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('entretien-jardin', 'fr', 'Entretien jardin');
        PERFORM insert_category_translations('entretien-jardin', 'ar', 'صيانة الحدائق');
        PERFORM insert_category_translations('entretien-jardin', 'de', 'Gartenpflege');
        PERFORM insert_category_translations('entretien-jardin', 'en', 'Garden maintenance');
        PERFORM insert_category_translations('entretien-jardin', 'es', 'Mantenimiento de jardín');
        PERFORM insert_category_translations('entretien-jardin', 'it', 'Manutenzione giardino');

        -- Level 2: Rénovation
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('renovation', 'renovation', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('renovation', 'fr', 'Rénovation');
        PERFORM insert_category_translations('renovation', 'ar', 'ترميم');
        PERFORM insert_category_translations('renovation', 'de', 'Renovierung');
        PERFORM insert_category_translations('renovation', 'en', 'Renovation');
        PERFORM insert_category_translations('renovation', 'es', 'Reformas');
        PERFORM insert_category_translations('renovation', 'it', 'Ristrutturazione');

        -- Level 2: Gestion locative
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('gestion-locative', 'gestion-locative', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('gestion-locative', 'fr', 'Gestion locative');
        PERFORM insert_category_translations('gestion-locative', 'ar', 'إدارة الإيجارات');
        PERFORM insert_category_translations('gestion-locative', 'de', 'Mietverwaltung');
        PERFORM insert_category_translations('gestion-locative', 'en', 'Property management');
        PERFORM insert_category_translations('gestion-locative', 'es', 'Gestión de alquileres');
        PERFORM insert_category_translations('gestion-locative', 'it', 'Gestione locazioni');

        -- Level 2: Diagnostics immobiliers
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('diagnostics-immobiliers', 'diagnostics-immobiliers', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('diagnostics-immobiliers', 'fr', 'Diagnostics immobiliers');
        PERFORM insert_category_translations('diagnostics-immobiliers', 'ar', 'تشخيصات عقارية');
        PERFORM insert_category_translations('diagnostics-immobiliers', 'de', 'Immobiliendiagnostik');
        PERFORM insert_category_translations('diagnostics-immobiliers', 'en', 'Real estate diagnostics');
        PERFORM insert_category_translations('diagnostics-immobiliers', 'es', 'Diagnósticos inmobiliarios');
        PERFORM insert_category_translations('diagnostics-immobiliers', 'it', 'Diagnostica immobiliare');

    -- Level 1: Marques & Matériel Populaire
    INSERT INTO categories (id, slug, parent_id, level)
    VALUES ('marques-materiel-populaire', 'marques-materiel-populaire', root_id, 1)
    ON CONFLICT (id) DO UPDATE SET parent_id = root_id, level = 1
    RETURNING id INTO l1_id;

    PERFORM insert_category_translations('marques-materiel-populaire', 'fr', 'Marques & Matériel Populaire');
    PERFORM insert_category_translations('marques-materiel-populaire', 'ar', 'ماركات ومعدات شائعة');
    PERFORM insert_category_translations('marques-materiel-populaire', 'de', 'Beliebte Marken & Geräte');
    PERFORM insert_category_translations('marques-materiel-populaire', 'en', 'Popular Brands & Equipment');
    PERFORM insert_category_translations('marques-materiel-populaire', 'es', 'Marcas y material popular');
    PERFORM insert_category_translations('marques-materiel-populaire', 'it', 'Marche & attrezzature popolari');

        -- Level 2: Ikea
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('ikea', 'ikea', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('ikea', 'fr', 'Ikea');
        PERFORM insert_category_translations('ikea', 'ar', 'Ikea');
        PERFORM insert_category_translations('ikea', 'de', 'Ikea');
        PERFORM insert_category_translations('ikea', 'en', 'Ikea');
        PERFORM insert_category_translations('ikea', 'es', 'Ikea');
        PERFORM insert_category_translations('ikea', 'it', 'Ikea');

        -- Level 2: Samsung Home
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('samsung-home', 'samsung-home', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('samsung-home', 'fr', 'Samsung Home');
        PERFORM insert_category_translations('samsung-home', 'ar', 'Samsung Home');
        PERFORM insert_category_translations('samsung-home', 'de', 'Samsung Home');
        PERFORM insert_category_translations('samsung-home', 'en', 'Samsung Home');
        PERFORM insert_category_translations('samsung-home', 'es', 'Samsung Home');
        PERFORM insert_category_translations('samsung-home', 'it', 'Samsung Home');

        -- Level 2: LG
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('lg', 'lg', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('lg', 'fr', 'LG');
        PERFORM insert_category_translations('lg', 'ar', 'LG');
        PERFORM insert_category_translations('lg', 'de', 'LG');
        PERFORM insert_category_translations('lg', 'en', 'LG');
        PERFORM insert_category_translations('lg', 'es', 'LG');
        PERFORM insert_category_translations('lg', 'it', 'LG');

        -- Level 2: Bosch
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('bosch', 'bosch', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('bosch', 'fr', 'Bosch');
        PERFORM insert_category_translations('bosch', 'ar', 'Bosch');
        PERFORM insert_category_translations('bosch', 'de', 'Bosch');
        PERFORM insert_category_translations('bosch', 'en', 'Bosch');
        PERFORM insert_category_translations('bosch', 'es', 'Bosch');
        PERFORM insert_category_translations('bosch', 'it', 'Bosch');

        -- Level 2: Beko
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('beko', 'beko', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('beko', 'fr', 'Beko');
        PERFORM insert_category_translations('beko', 'ar', 'Beko');
        PERFORM insert_category_translations('beko', 'de', 'Beko');
        PERFORM insert_category_translations('beko', 'en', 'Beko');
        PERFORM insert_category_translations('beko', 'es', 'Beko');
        PERFORM insert_category_translations('beko', 'it', 'Beko');

        -- Level 2: Whirlpool
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('whirlpool', 'whirlpool', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('whirlpool', 'fr', 'Whirlpool');
        PERFORM insert_category_translations('whirlpool', 'ar', 'Whirlpool');
        PERFORM insert_category_translations('whirlpool', 'de', 'Whirlpool');
        PERFORM insert_category_translations('whirlpool', 'en', 'Whirlpool');
        PERFORM insert_category_translations('whirlpool', 'es', 'Whirlpool');
        PERFORM insert_category_translations('whirlpool', 'it', 'Whirlpool');

        -- Level 2: Philips Lighting
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('philips-lighting', 'philips-lighting', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('philips-lighting', 'fr', 'Philips Lighting');
        PERFORM insert_category_translations('philips-lighting', 'ar', 'Philips Lighting');
        PERFORM insert_category_translations('philips-lighting', 'de', 'Philips Lighting');
        PERFORM insert_category_translations('philips-lighting', 'en', 'Philips Lighting');
        PERFORM insert_category_translations('philips-lighting', 'es', 'Philips Lighting');
        PERFORM insert_category_translations('philips-lighting', 'it', 'Philips Lighting');

        -- Level 2: Schneider Electric
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('schneider-electric', 'schneider-electric', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('schneider-electric', 'fr', 'Schneider Electric');
        PERFORM insert_category_translations('schneider-electric', 'ar', 'Schneider Electric');
        PERFORM insert_category_translations('schneider-electric', 'de', 'Schneider Electric');
        PERFORM insert_category_translations('schneider-electric', 'en', 'Schneider Electric');
        PERFORM insert_category_translations('schneider-electric', 'es', 'Schneider Electric');
        PERFORM insert_category_translations('schneider-electric', 'it', 'Schneider Electric');

        -- Level 2: Kärcher
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('karcher', 'karcher', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('karcher', 'fr', 'Kärcher');
        PERFORM insert_category_translations('karcher', 'ar', 'Kärcher');
        PERFORM insert_category_translations('karcher', 'de', 'Kärcher');
        PERFORM insert_category_translations('karcher', 'en', 'Kärcher');
        PERFORM insert_category_translations('karcher', 'es', 'Kärcher');
        PERFORM insert_category_translations('karcher', 'it', 'Kärcher');

        -- Level 2: Ariston
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('ariston', 'ariston', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('ariston', 'fr', 'Ariston');
        PERFORM insert_category_translations('ariston', 'ar', 'Ariston');
        PERFORM insert_category_translations('ariston', 'de', 'Ariston');
        PERFORM insert_category_translations('ariston', 'en', 'Ariston');
        PERFORM insert_category_translations('ariston', 'es', 'Ariston');
        PERFORM insert_category_translations('ariston', 'it', 'Ariston');

        -- Level 2: Moulinex
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('moulinex', 'moulinex', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('moulinex', 'fr', 'Moulinex');
        PERFORM insert_category_translations('moulinex', 'ar', 'Moulinex');
        PERFORM insert_category_translations('moulinex', 'de', 'Moulinex');
        PERFORM insert_category_translations('moulinex', 'en', 'Moulinex');
        PERFORM insert_category_translations('moulinex', 'es', 'Moulinex');
        PERFORM insert_category_translations('moulinex', 'it', 'Moulinex');

        -- Level 2: Tefal
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('tefal', 'tefal', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('tefal', 'fr', 'Tefal');
        PERFORM insert_category_translations('tefal', 'ar', 'Tefal');
        PERFORM insert_category_translations('tefal', 'de', 'Tefal');
        PERFORM insert_category_translations('tefal', 'en', 'Tefal');
        PERFORM insert_category_translations('tefal', 'es', 'Tefal');
        PERFORM insert_category_translations('tefal', 'it', 'Tefal');

        -- Level 2: Jaga
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('jaga', 'jaga', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('jaga', 'fr', 'Jaga');
        PERFORM insert_category_translations('jaga', 'ar', 'Jaga');
        PERFORM insert_category_translations('jaga', 'de', 'Jaga');
        PERFORM insert_category_translations('jaga', 'en', 'Jaga');
        PERFORM insert_category_translations('jaga', 'es', 'Jaga');
        PERFORM insert_category_translations('jaga', 'it', 'Jaga');

        -- Level 2: Daikin
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('daikin', 'daikin', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('daikin', 'fr', 'Daikin');
        PERFORM insert_category_translations('daikin', 'ar', 'Daikin');
        PERFORM insert_category_translations('daikin', 'de', 'Daikin');
        PERFORM insert_category_translations('daikin', 'en', 'Daikin');
        PERFORM insert_category_translations('daikin', 'es', 'Daikin');
        PERFORM insert_category_translations('daikin', 'it', 'Daikin');

        -- Level 2: Hitachi
        INSERT INTO categories (id, slug, parent_id, level)
        VALUES ('hitachi', 'hitachi', l1_id, 2)
        ON CONFLICT (id) DO UPDATE SET parent_id = l1_id, level = 2;
        PERFORM insert_category_translations('hitachi', 'fr', 'Hitachi');
        PERFORM insert_category_translations('hitachi', 'ar', 'Hitachi');
        PERFORM insert_category_translations('hitachi', 'de', 'Hitachi');
        PERFORM insert_category_translations('hitachi', 'en', 'Hitachi');
        PERFORM insert_category_translations('hitachi', 'es', 'Hitachi');
        PERFORM insert_category_translations('hitachi', 'it', 'Hitachi');

END $$;
