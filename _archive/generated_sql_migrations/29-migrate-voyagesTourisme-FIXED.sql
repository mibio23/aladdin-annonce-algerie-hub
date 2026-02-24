-- Migration: Voyages & Tourisme (Generated Recursive)
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

    -- Level 0: voyages-tourisme
    INSERT INTO categories (id, slug, level, name)
    VALUES ('voyages-tourisme', 'voyages-tourisme', 0, 'Voyages & Tourisme')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 0, name = EXCLUDED.name
    RETURNING id INTO root_id;
    PERFORM insert_category_translations('voyages-tourisme', 'fr', 'Voyages & Tourisme');
    PERFORM insert_category_translations('voyages-tourisme', 'ar', 'السفر والسياحة');
    PERFORM insert_category_translations('voyages-tourisme', 'en', 'Travel & Tourism');
    PERFORM insert_category_translations('voyages-tourisme', 'de', 'Reisen & Tourismus');
    PERFORM insert_category_translations('voyages-tourisme', 'es', 'Viajes y Turismo');
    PERFORM insert_category_translations('voyages-tourisme', 'it', 'Viaggi e Turismo');

        -- Level 1: voyages-decouvertes
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('voyages-decouvertes', 'voyages-decouvertes', 1, root_id, 'Voyages, Découvertes Touristiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('voyages-decouvertes', 'fr', 'Voyages, Découvertes Touristiques');
        PERFORM insert_category_translations('voyages-decouvertes', 'ar', 'رحلات واكتشافات سياحية');
        PERFORM insert_category_translations('voyages-decouvertes', 'en', 'Travel & Tourist Discoveries');
        PERFORM insert_category_translations('voyages-decouvertes', 'de', 'Reisen und touristische Entdeckungen');
        PERFORM insert_category_translations('voyages-decouvertes', 'es', 'Viajes y descubrimientos turísticos');
        PERFORM insert_category_translations('voyages-decouvertes', 'it', 'Viaggi e scoperte turistiche');

            -- Level 2: agences-de-voyage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('agences-de-voyage', 'agences-de-voyage', 2, l1_id, 'agences de voyage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('agences-de-voyage', 'fr', 'agences de voyage');
            PERFORM insert_category_translations('agences-de-voyage', 'ar', 'وكالات السفر');
            PERFORM insert_category_translations('agences-de-voyage', 'en', 'travel agencies');
            PERFORM insert_category_translations('agences-de-voyage', 'de', 'Reisebüros');
            PERFORM insert_category_translations('agences-de-voyage', 'es', 'agencias de viajes');
            PERFORM insert_category_translations('agences-de-voyage', 'it', 'agenzie di viaggio');

            -- Level 2: sejours-organises
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sejours-organises', 'sejours-organises', 2, l1_id, 'séjours organisés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sejours-organises', 'fr', 'séjours organisés');
            PERFORM insert_category_translations('sejours-organises', 'ar', 'إقامات منظمة');
            PERFORM insert_category_translations('sejours-organises', 'en', 'organized stays');
            PERFORM insert_category_translations('sejours-organises', 'de', 'Organisierte Aufenthalte');
            PERFORM insert_category_translations('sejours-organises', 'es', 'estancias organizadas');
            PERFORM insert_category_translations('sejours-organises', 'it', 'soggiorni organizzati');

            -- Level 2: voyages-organises
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('voyages-organises', 'voyages-organises', 2, l1_id, 'voyages organisés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('voyages-organises', 'fr', 'voyages organisés');
            PERFORM insert_category_translations('voyages-organises', 'ar', 'رحلات منظمة');
            PERFORM insert_category_translations('voyages-organises', 'en', 'organized trips');
            PERFORM insert_category_translations('voyages-organises', 'de', 'Organisierte Reisen');
            PERFORM insert_category_translations('voyages-organises', 'es', 'viajes organizados');
            PERFORM insert_category_translations('voyages-organises', 'it', 'viaggi organizzati');

            -- Level 2: circuits-touristiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('circuits-touristiques', 'circuits-touristiques', 2, l1_id, 'circuits touristiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('circuits-touristiques', 'fr', 'circuits touristiques');
            PERFORM insert_category_translations('circuits-touristiques', 'ar', 'جولات سياحية');
            PERFORM insert_category_translations('circuits-touristiques', 'en', 'tourist circuits');
            PERFORM insert_category_translations('circuits-touristiques', 'de', 'Touristische Rundreisen');
            PERFORM insert_category_translations('circuits-touristiques', 'es', 'circuitos turísticos');
            PERFORM insert_category_translations('circuits-touristiques', 'it', 'circuiti turistici');

            -- Level 2: excursions-locales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('excursions-locales', 'excursions-locales', 2, l1_id, 'excursions locales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('excursions-locales', 'fr', 'excursions locales');
            PERFORM insert_category_translations('excursions-locales', 'ar', 'رحلات محلية');
            PERFORM insert_category_translations('excursions-locales', 'en', 'local excursions');
            PERFORM insert_category_translations('excursions-locales', 'de', 'Lokale Ausflüge');
            PERFORM insert_category_translations('excursions-locales', 'es', 'excursiones locales');
            PERFORM insert_category_translations('excursions-locales', 'it', 'escursioni locali');

            -- Level 2: excursions-sahariennes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('excursions-sahariennes', 'excursions-sahariennes', 2, l1_id, 'excursions sahariennes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('excursions-sahariennes', 'fr', 'excursions sahariennes');
            PERFORM insert_category_translations('excursions-sahariennes', 'ar', 'رحلات صحراوية');
            PERFORM insert_category_translations('excursions-sahariennes', 'en', 'Saharan excursions');
            PERFORM insert_category_translations('excursions-sahariennes', 'de', 'Sahara-Ausflüge');
            PERFORM insert_category_translations('excursions-sahariennes', 'es', 'excursiones saharianas');
            PERFORM insert_category_translations('excursions-sahariennes', 'it', 'escursioni sahariane');

            -- Level 2: randonnees-guidees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('randonnees-guidees', 'randonnees-guidees', 2, l1_id, 'randonnées guidées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('randonnees-guidees', 'fr', 'randonnées guidées');
            PERFORM insert_category_translations('randonnees-guidees', 'ar', 'مشیات مُرْشَدة');
            PERFORM insert_category_translations('randonnees-guidees', 'en', 'guided hikes');
            PERFORM insert_category_translations('randonnees-guidees', 'de', 'Geführte Wanderungen');
            PERFORM insert_category_translations('randonnees-guidees', 'es', 'senderismo guiado');
            PERFORM insert_category_translations('randonnees-guidees', 'it', 'trek guidati');

            -- Level 2: voyages-culturels
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('voyages-culturels', 'voyages-culturels', 2, l1_id, 'voyages culturels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('voyages-culturels', 'fr', 'voyages culturels');
            PERFORM insert_category_translations('voyages-culturels', 'ar', 'رحلات ثقافية');
            PERFORM insert_category_translations('voyages-culturels', 'en', 'cultural trips');
            PERFORM insert_category_translations('voyages-culturels', 'de', 'Kulturelle Reisen');
            PERFORM insert_category_translations('voyages-culturels', 'es', 'viajes culturales');
            PERFORM insert_category_translations('voyages-culturels', 'it', 'viaggi culturali');

            -- Level 2: voyages-religieux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('voyages-religieux', 'voyages-religieux', 2, l1_id, 'voyages religieux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('voyages-religieux', 'fr', 'voyages religieux');
            PERFORM insert_category_translations('voyages-religieux', 'ar', 'رحلات دينية');
            PERFORM insert_category_translations('voyages-religieux', 'en', 'religious trips');
            PERFORM insert_category_translations('voyages-religieux', 'de', 'Religiöse Reisen');
            PERFORM insert_category_translations('voyages-religieux', 'es', 'viajes religiosos');
            PERFORM insert_category_translations('voyages-religieux', 'it', 'viaggi religiosi');

            -- Level 2: visites-historiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('visites-historiques', 'visites-historiques', 2, l1_id, 'visites historiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('visites-historiques', 'fr', 'visites historiques');
            PERFORM insert_category_translations('visites-historiques', 'ar', 'زيارات تاريخية');
            PERFORM insert_category_translations('visites-historiques', 'en', 'historical visits');
            PERFORM insert_category_translations('visites-historiques', 'de', 'Historische Besuche');
            PERFORM insert_category_translations('visites-historiques', 'es', 'visitas históricas');
            PERFORM insert_category_translations('visites-historiques', 'it', 'visite storiche');

            -- Level 2: circuits-archeologiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('circuits-archeologiques', 'circuits-archeologiques', 2, l1_id, 'circuits archéologiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('circuits-archeologiques', 'fr', 'circuits archéologiques');
            PERFORM insert_category_translations('circuits-archeologiques', 'ar', 'جولات أثرية');
            PERFORM insert_category_translations('circuits-archeologiques', 'en', 'archaeological circuits');
            PERFORM insert_category_translations('circuits-archeologiques', 'de', 'Archäologische Touren');
            PERFORM insert_category_translations('circuits-archeologiques', 'es', 'circuitos arqueológicos');
            PERFORM insert_category_translations('circuits-archeologiques', 'it', 'circuiti archeologici');

            -- Level 2: tours-en-ville
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tours-en-ville', 'tours-en-ville', 2, l1_id, 'tours en ville')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tours-en-ville', 'fr', 'tours en ville');
            PERFORM insert_category_translations('tours-en-ville', 'ar', 'جولات في المدينة');
            PERFORM insert_category_translations('tours-en-ville', 'en', 'city tours');
            PERFORM insert_category_translations('tours-en-ville', 'de', 'Stadttouren');
            PERFORM insert_category_translations('tours-en-ville', 'es', 'tours por la ciudad');
            PERFORM insert_category_translations('tours-en-ville', 'it', 'tour in città');

            -- Level 2: city-tours
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('city-tours', 'city-tours', 2, l1_id, 'city tours')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('city-tours', 'fr', 'city tours');
            PERFORM insert_category_translations('city-tours', 'ar', 'جولات مدينة');
            PERFORM insert_category_translations('city-tours', 'en', 'city tours');
            PERFORM insert_category_translations('city-tours', 'de', 'City Tours');
            PERFORM insert_category_translations('city-tours', 'es', 'city tours');
            PERFORM insert_category_translations('city-tours', 'it', 'city tours');

            -- Level 2: tours-gastronomiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tours-gastronomiques', 'tours-gastronomiques', 2, l1_id, 'tours gastronomiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tours-gastronomiques', 'fr', 'tours gastronomiques');
            PERFORM insert_category_translations('tours-gastronomiques', 'ar', 'جولات غذائية');
            PERFORM insert_category_translations('tours-gastronomiques', 'en', 'food tours');
            PERFORM insert_category_translations('tours-gastronomiques', 'de', 'Kulinarische Touren');
            PERFORM insert_category_translations('tours-gastronomiques', 'es', 'tours gastronómicos');
            PERFORM insert_category_translations('tours-gastronomiques', 'it', 'tour gastronomici');

            -- Level 2: voyages-en-groupe
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('voyages-en-groupe', 'voyages-en-groupe', 2, l1_id, 'voyages en groupe')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('voyages-en-groupe', 'fr', 'voyages en groupe');
            PERFORM insert_category_translations('voyages-en-groupe', 'ar', 'رحلات جماعية');
            PERFORM insert_category_translations('voyages-en-groupe', 'en', 'group trips');
            PERFORM insert_category_translations('voyages-en-groupe', 'de', 'Gruppenreisen');
            PERFORM insert_category_translations('voyages-en-groupe', 'es', 'viajes en grupo');
            PERFORM insert_category_translations('voyages-en-groupe', 'it', 'viaggi di gruppo');

            -- Level 2: voyages-individuels
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('voyages-individuels', 'voyages-individuels', 2, l1_id, 'voyages individuels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('voyages-individuels', 'fr', 'voyages individuels');
            PERFORM insert_category_translations('voyages-individuels', 'ar', 'رحلات فردية');
            PERFORM insert_category_translations('voyages-individuels', 'en', 'individual trips');
            PERFORM insert_category_translations('voyages-individuels', 'de', 'Individuelle Reisen');
            PERFORM insert_category_translations('voyages-individuels', 'es', 'viajes individuales');
            PERFORM insert_category_translations('voyages-individuels', 'it', 'viaggi individuali');

            -- Level 2: voyages-aventure
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('voyages-aventure', 'voyages-aventure', 2, l1_id, 'voyages d’aventure')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('voyages-aventure', 'fr', 'voyages d’aventure');
            PERFORM insert_category_translations('voyages-aventure', 'ar', 'رحلات مغامرة');
            PERFORM insert_category_translations('voyages-aventure', 'en', 'adventure trips');
            PERFORM insert_category_translations('voyages-aventure', 'de', 'Abenteuerreisen');
            PERFORM insert_category_translations('voyages-aventure', 'es', 'viajes de aventura');
            PERFORM insert_category_translations('voyages-aventure', 'it', 'viaggi d’avventura');

            -- Level 2: trekking
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('trekking', 'trekking', 2, l1_id, 'trekking')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('trekking', 'fr', 'trekking');
            PERFORM insert_category_translations('trekking', 'ar', 'تريك');
            PERFORM insert_category_translations('trekking', 'en', 'trekking');
            PERFORM insert_category_translations('trekking', 'de', 'Trekking');
            PERFORM insert_category_translations('trekking', 'es', 'trekking');
            PERFORM insert_category_translations('trekking', 'it', 'trekking');

            -- Level 2: expeditions-sahariennes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('expeditions-sahariennes', 'expeditions-sahariennes', 2, l1_id, 'expéditions sahariennes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('expeditions-sahariennes', 'fr', 'expéditions sahariennes');
            PERFORM insert_category_translations('expeditions-sahariennes', 'ar', 'بعثات صحراوية');
            PERFORM insert_category_translations('expeditions-sahariennes', 'en', 'Saharan expeditions');
            PERFORM insert_category_translations('expeditions-sahariennes', 'de', 'Sahara-Expeditionen');
            PERFORM insert_category_translations('expeditions-sahariennes', 'es', 'expediciones saharianas');
            PERFORM insert_category_translations('expeditions-sahariennes', 'it', 'spedizioni sahariane');

            -- Level 2: circuits-4x4
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('circuits-4x4', 'circuits-4x4', 2, l1_id, 'circuits en 4x4')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('circuits-4x4', 'fr', 'circuits en 4x4');
            PERFORM insert_category_translations('circuits-4x4', 'ar', 'جولات 4x4');
            PERFORM insert_category_translations('circuits-4x4', 'en', '4x4 circuits');
            PERFORM insert_category_translations('circuits-4x4', 'de', '4x4-Touren');
            PERFORM insert_category_translations('circuits-4x4', 'es', 'circuitos en 4x4');
            PERFORM insert_category_translations('circuits-4x4', 'it', 'circuiti in 4x4');

            -- Level 2: bivouacs-sahariens
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bivouacs-sahariens', 'bivouacs-sahariens', 2, l1_id, 'bivouacs sahariens')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bivouacs-sahariens', 'fr', 'bivouacs sahariens');
            PERFORM insert_category_translations('bivouacs-sahariens', 'ar', 'بيفوّاك صحراوي');
            PERFORM insert_category_translations('bivouacs-sahariens', 'en', 'Saharan bivouacs');
            PERFORM insert_category_translations('bivouacs-sahariens', 'de', 'Sahara-Biwaks');
            PERFORM insert_category_translations('bivouacs-sahariens', 'es', 'bivouacs saharianos');
            PERFORM insert_category_translations('bivouacs-sahariens', 'it', 'bivacchi sahariani');

            -- Level 2: camping-touristique
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('camping-touristique', 'camping-touristique', 2, l1_id, 'camping touristique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('camping-touristique', 'fr', 'camping touristique');
            PERFORM insert_category_translations('camping-touristique', 'ar', 'تخييم سياحي');
            PERFORM insert_category_translations('camping-touristique', 'en', 'tourist camping');
            PERFORM insert_category_translations('camping-touristique', 'de', 'Touristisches Camping');
            PERFORM insert_category_translations('camping-touristique', 'es', 'camping turístico');
            PERFORM insert_category_translations('camping-touristique', 'it', 'campeggio turistico');

            -- Level 2: hebergement-insolite
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('hebergement-insolite', 'hebergement-insolite', 2, l1_id, 'hébergement insolite')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('hebergement-insolite', 'fr', 'hébergement insolite');
            PERFORM insert_category_translations('hebergement-insolite', 'ar', 'إقامة فريدة');
            PERFORM insert_category_translations('hebergement-insolite', 'en', 'unique accommodation');
            PERFORM insert_category_translations('hebergement-insolite', 'de', 'Außergewöhnliche Unterkünfte');
            PERFORM insert_category_translations('hebergement-insolite', 'es', 'alojamiento singular');
            PERFORM insert_category_translations('hebergement-insolite', 'it', 'alloggi insoliti');

            -- Level 2: tourisme-rural
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tourisme-rural', 'tourisme-rural', 2, l1_id, 'tourisme rural')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tourisme-rural', 'fr', 'tourisme rural');
            PERFORM insert_category_translations('tourisme-rural', 'ar', 'سياحة ريفية');
            PERFORM insert_category_translations('tourisme-rural', 'en', 'rural tourism');
            PERFORM insert_category_translations('tourisme-rural', 'de', 'Ländlicher Tourismus');
            PERFORM insert_category_translations('tourisme-rural', 'es', 'turismo rural');
            PERFORM insert_category_translations('tourisme-rural', 'it', 'turismo rurale');

            -- Level 2: tourisme-ecologique
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tourisme-ecologique', 'tourisme-ecologique', 2, l1_id, 'tourisme écologique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tourisme-ecologique', 'fr', 'tourisme écologique');
            PERFORM insert_category_translations('tourisme-ecologique', 'ar', 'سياحة بيئية');
            PERFORM insert_category_translations('tourisme-ecologique', 'en', 'ecological tourism');
            PERFORM insert_category_translations('tourisme-ecologique', 'de', 'Ökologischer Tourismus');
            PERFORM insert_category_translations('tourisme-ecologique', 'es', 'turismo ecológico');
            PERFORM insert_category_translations('tourisme-ecologique', 'it', 'turismo ecologico');

            -- Level 2: ecotourisme
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ecotourisme', 'ecotourisme', 2, l1_id, 'écotourisme')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ecotourisme', 'fr', 'écotourisme');
            PERFORM insert_category_translations('ecotourisme', 'ar', 'إيكوتوريزم');
            PERFORM insert_category_translations('ecotourisme', 'en', 'ecotourism');
            PERFORM insert_category_translations('ecotourisme', 'de', 'Ökotourismus');
            PERFORM insert_category_translations('ecotourisme', 'es', 'ecoturismo');
            PERFORM insert_category_translations('ecotourisme', 'it', 'ecoturismo');

            -- Level 2: tourisme-saharien
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tourisme-saharien', 'tourisme-saharien', 2, l1_id, 'tourisme saharien')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tourisme-saharien', 'fr', 'tourisme saharien');
            PERFORM insert_category_translations('tourisme-saharien', 'ar', 'سياحة صحراوية');
            PERFORM insert_category_translations('tourisme-saharien', 'en', 'Saharan tourism');
            PERFORM insert_category_translations('tourisme-saharien', 'de', 'Sahara-Tourismus');
            PERFORM insert_category_translations('tourisme-saharien', 'es', 'turismo sahariano');
            PERFORM insert_category_translations('tourisme-saharien', 'it', 'turismo sahariano');

            -- Level 2: tourisme-cotier
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tourisme-cotier', 'tourisme-cotier', 2, l1_id, 'tourisme côtier')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tourisme-cotier', 'fr', 'tourisme côtier');
            PERFORM insert_category_translations('tourisme-cotier', 'ar', 'سياحة ساحلية');
            PERFORM insert_category_translations('tourisme-cotier', 'en', 'coastal tourism');
            PERFORM insert_category_translations('tourisme-cotier', 'de', 'Küstentourismus');
            PERFORM insert_category_translations('tourisme-cotier', 'es', 'turismo costero');
            PERFORM insert_category_translations('tourisme-cotier', 'it', 'turismo costiero');

            -- Level 2: tourisme-montagnard
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tourisme-montagnard', 'tourisme-montagnard', 2, l1_id, 'tourisme montagnard')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tourisme-montagnard', 'fr', 'tourisme montagnard');
            PERFORM insert_category_translations('tourisme-montagnard', 'ar', 'سياحة جبلية');
            PERFORM insert_category_translations('tourisme-montagnard', 'en', 'mountain tourism');
            PERFORM insert_category_translations('tourisme-montagnard', 'de', 'Bergtourismus');
            PERFORM insert_category_translations('tourisme-montagnard', 'es', 'turismo de montaña');
            PERFORM insert_category_translations('tourisme-montagnard', 'it', 'turismo montano');

            -- Level 2: circuits-nature
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('circuits-nature', 'circuits-nature', 2, l1_id, 'circuits en nature')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('circuits-nature', 'fr', 'circuits en nature');
            PERFORM insert_category_translations('circuits-nature', 'ar', 'جولات في الطبيعة');
            PERFORM insert_category_translations('circuits-nature', 'en', 'nature circuits');
            PERFORM insert_category_translations('circuits-nature', 'de', 'Naturtouren');
            PERFORM insert_category_translations('circuits-nature', 'es', 'circuitos en la naturaleza');
            PERFORM insert_category_translations('circuits-nature', 'it', 'circuiti nella natura');

            -- Level 2: visites-guidees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('visites-guidees', 'visites-guidees', 2, l1_id, 'visites guidées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('visites-guidees', 'fr', 'visites guidées');
            PERFORM insert_category_translations('visites-guidees', 'ar', 'زيارات مرشدة');
            PERFORM insert_category_translations('visites-guidees', 'en', 'guided tours');
            PERFORM insert_category_translations('visites-guidees', 'de', 'Geführte Besichtigungen');
            PERFORM insert_category_translations('visites-guidees', 'es', 'visitas guiadas');
            PERFORM insert_category_translations('visites-guidees', 'it', 'visite guidate');

            -- Level 2: excursions-en-mer
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('excursions-en-mer', 'excursions-en-mer', 2, l1_id, 'excursions en mer')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('excursions-en-mer', 'fr', 'excursions en mer');
            PERFORM insert_category_translations('excursions-en-mer', 'ar', 'رحلات بحرية');
            PERFORM insert_category_translations('excursions-en-mer', 'en', 'sea excursions');
            PERFORM insert_category_translations('excursions-en-mer', 'de', 'Meeresausflüge');
            PERFORM insert_category_translations('excursions-en-mer', 'es', 'excursiones marítimas');
            PERFORM insert_category_translations('excursions-en-mer', 'it', 'escursioni in mare');

            -- Level 2: sorties-bateau
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sorties-bateau', 'sorties-bateau', 2, l1_id, 'sorties en bateau')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sorties-bateau', 'fr', 'sorties en bateau');
            PERFORM insert_category_translations('sorties-bateau', 'ar', 'خروج بالقارب');
            PERFORM insert_category_translations('sorties-bateau', 'en', 'boat trips');
            PERFORM insert_category_translations('sorties-bateau', 'de', 'Bootsausflüge');
            PERFORM insert_category_translations('sorties-bateau', 'es', 'salidas en barco');
            PERFORM insert_category_translations('sorties-bateau', 'it', 'uscite in barca');

            -- Level 2: croisieres-locales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('croisieres-locales', 'croisieres-locales', 2, l1_id, 'croisières locales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('croisieres-locales', 'fr', 'croisières locales');
            PERFORM insert_category_translations('croisieres-locales', 'ar', 'رحلات بحرية محلية');
            PERFORM insert_category_translations('croisieres-locales', 'en', 'local cruises');
            PERFORM insert_category_translations('croisieres-locales', 'de', 'Lokale Kreuzfahrten');
            PERFORM insert_category_translations('croisieres-locales', 'es', 'cruceros locales');
            PERFORM insert_category_translations('croisieres-locales', 'it', 'crociere locali');

            -- Level 2: croisieres-mediterraneennes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('croisieres-mediterraneennes', 'croisieres-mediterraneennes', 2, l1_id, 'croisières méditerranéennes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('croisieres-mediterraneennes', 'fr', 'croisières méditerranéennes');
            PERFORM insert_category_translations('croisieres-mediterraneennes', 'ar', 'رحلات بحرية متوسطية');
            PERFORM insert_category_translations('croisieres-mediterraneennes', 'en', 'Mediterranean cruises');
            PERFORM insert_category_translations('croisieres-mediterraneennes', 'de', 'Mittelmeer-Kreuzfahrten');
            PERFORM insert_category_translations('croisieres-mediterraneennes', 'es', 'cruceros mediterráneos');
            PERFORM insert_category_translations('croisieres-mediterraneennes', 'it', 'crociere mediterranee');

        -- Level 1: hebergement-sejour
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('hebergement-sejour', 'hebergement-sejour', 1, root_id, 'Hébergement & Séjour')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('hebergement-sejour', 'fr', 'Hébergement & Séjour');
        PERFORM insert_category_translations('hebergement-sejour', 'ar', 'الإقامة والمكوث');
        PERFORM insert_category_translations('hebergement-sejour', 'en', 'Accommodation & Stay');
        PERFORM insert_category_translations('hebergement-sejour', 'de', 'Unterkunft & Aufenthalt');
        PERFORM insert_category_translations('hebergement-sejour', 'es', 'Alojamiento & Estancia');
        PERFORM insert_category_translations('hebergement-sejour', 'it', 'Alloggi & Soggiorno');

            -- Level 2: hotels
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('hotels', 'hotels', 2, l1_id, 'hôtels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('hotels', 'fr', 'hôtels');
            PERFORM insert_category_translations('hotels', 'ar', 'فنادق');
            PERFORM insert_category_translations('hotels', 'en', 'hotels');
            PERFORM insert_category_translations('hotels', 'de', 'Hotels');
            PERFORM insert_category_translations('hotels', 'es', 'hoteles');
            PERFORM insert_category_translations('hotels', 'it', 'hotel');

            -- Level 2: hotels-luxe
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('hotels-luxe', 'hotels-luxe', 2, l1_id, 'hôtels de luxe')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('hotels-luxe', 'fr', 'hôtels de luxe');
            PERFORM insert_category_translations('hotels-luxe', 'ar', 'فنادق فاخرة');
            PERFORM insert_category_translations('hotels-luxe', 'en', 'luxury hotels');
            PERFORM insert_category_translations('hotels-luxe', 'de', 'Luxushotels');
            PERFORM insert_category_translations('hotels-luxe', 'es', 'hoteles de lujo');
            PERFORM insert_category_translations('hotels-luxe', 'it', 'hotel di lusso');

            -- Level 2: hotels-economiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('hotels-economiques', 'hotels-economiques', 2, l1_id, 'hôtels économiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('hotels-economiques', 'fr', 'hôtels économiques');
            PERFORM insert_category_translations('hotels-economiques', 'ar', 'فنادق اقتصادية');
            PERFORM insert_category_translations('hotels-economiques', 'en', 'budget hotels');
            PERFORM insert_category_translations('hotels-economiques', 'de', 'Budgethotels');
            PERFORM insert_category_translations('hotels-economiques', 'es', 'hoteles económicos');
            PERFORM insert_category_translations('hotels-economiques', 'it', 'hotel economici');

            -- Level 2: auberges
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('auberges', 'auberges', 2, l1_id, 'auberges')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('auberges', 'fr', 'auberges');
            PERFORM insert_category_translations('auberges', 'ar', 'نُزُل');
            PERFORM insert_category_translations('auberges', 'en', 'hostels');
            PERFORM insert_category_translations('auberges', 'de', 'Herbergen');
            PERFORM insert_category_translations('auberges', 'es', 'albergues');
            PERFORM insert_category_translations('auberges', 'it', 'ostelli');

            -- Level 2: maisons-hotes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('maisons-hotes', 'maisons-hotes', 2, l1_id, 'maisons d’hôtes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('maisons-hotes', 'fr', 'maisons d’hôtes');
            PERFORM insert_category_translations('maisons-hotes', 'ar', 'دور ضيافة');
            PERFORM insert_category_translations('maisons-hotes', 'en', 'guest houses');
            PERFORM insert_category_translations('maisons-hotes', 'de', 'Gästehäuser');
            PERFORM insert_category_translations('maisons-hotes', 'es', 'casas de huéspedes');
            PERFORM insert_category_translations('maisons-hotes', 'it', 'case degli ospiti');

            -- Level 2: gites-touristiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gites-touristiques', 'gites-touristiques', 2, l1_id, 'gîtes touristiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gites-touristiques', 'fr', 'gîtes touristiques');
            PERFORM insert_category_translations('gites-touristiques', 'ar', 'بيوت سياحية');
            PERFORM insert_category_translations('gites-touristiques', 'en', 'tourist lodges');
            PERFORM insert_category_translations('gites-touristiques', 'de', 'Touristenunterkünfte');
            PERFORM insert_category_translations('gites-touristiques', 'es', 'alojamientos turísticos');
            PERFORM insert_category_translations('gites-touristiques', 'it', 'alloggi turistici');

            -- Level 2: residences-vacances
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('residences-vacances', 'residences-vacances', 2, l1_id, 'résidences de vacances')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('residences-vacances', 'fr', 'résidences de vacances');
            PERFORM insert_category_translations('residences-vacances', 'ar', 'إقامات عطلات');
            PERFORM insert_category_translations('residences-vacances', 'en', 'holiday residences');
            PERFORM insert_category_translations('residences-vacances', 'de', 'Ferienresidenzen');
            PERFORM insert_category_translations('residences-vacances', 'es', 'residencias vacacionales');
            PERFORM insert_category_translations('residences-vacances', 'it', 'residenze vacanze');

            -- Level 2: appartements-meubles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('appartements-meubles', 'appartements-meubles', 2, l1_id, 'appartements meublés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('appartements-meubles', 'fr', 'appartements meublés');
            PERFORM insert_category_translations('appartements-meubles', 'ar', 'شقق مفروشة');
            PERFORM insert_category_translations('appartements-meubles', 'en', 'furnished apartments');
            PERFORM insert_category_translations('appartements-meubles', 'de', 'Möblierte Wohnungen');
            PERFORM insert_category_translations('appartements-meubles', 'es', 'apartamentos amueblados');
            PERFORM insert_category_translations('appartements-meubles', 'it', 'appartamenti arredati');

            -- Level 2: locations-saisonnieres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('locations-saisonnieres', 'locations-saisonnieres', 2, l1_id, 'locations saisonnières')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('locations-saisonnieres', 'fr', 'locations saisonnières');
            PERFORM insert_category_translations('locations-saisonnieres', 'ar', 'إيجارات موسمية');
            PERFORM insert_category_translations('locations-saisonnieres', 'en', 'seasonal rentals');
            PERFORM insert_category_translations('locations-saisonnieres', 'de', 'Saisonvermietungen');
            PERFORM insert_category_translations('locations-saisonnieres', 'es', 'alquileres de temporada');
            PERFORM insert_category_translations('locations-saisonnieres', 'it', 'affitti stagionali');

            -- Level 2: bungalows
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bungalows', 'bungalows', 2, l1_id, 'bungalows')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bungalows', 'fr', 'bungalows');
            PERFORM insert_category_translations('bungalows', 'ar', 'بنغلو');
            PERFORM insert_category_translations('bungalows', 'en', 'bungalows');
            PERFORM insert_category_translations('bungalows', 'de', 'Bungalows');
            PERFORM insert_category_translations('bungalows', 'es', 'bungalows');
            PERFORM insert_category_translations('bungalows', 'it', 'bungalow');

            -- Level 2: campings
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('campings', 'campings', 2, l1_id, 'campings')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('campings', 'fr', 'campings');
            PERFORM insert_category_translations('campings', 'ar', 'تخييم');
            PERFORM insert_category_translations('campings', 'en', 'campings');
            PERFORM insert_category_translations('campings', 'de', 'Camping');
            PERFORM insert_category_translations('campings', 'es', 'campings');
            PERFORM insert_category_translations('campings', 'it', 'campeggi');

            -- Level 2: campements-sahariens
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('campements-sahariens', 'campements-sahariens', 2, l1_id, 'campements sahariens')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('campements-sahariens', 'fr', 'campements sahariens');
            PERFORM insert_category_translations('campements-sahariens', 'ar', 'مخيمات صحراوية');
            PERFORM insert_category_translations('campements-sahariens', 'en', 'Saharan camps');
            PERFORM insert_category_translations('campements-sahariens', 'de', 'Sahara-Camps');
            PERFORM insert_category_translations('campements-sahariens', 'es', 'campamentos saharianos');
            PERFORM insert_category_translations('campements-sahariens', 'it', 'campi sahariani');

            -- Level 2: hebergements-traditionnels
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('hebergements-traditionnels', 'hebergements-traditionnels', 2, l1_id, 'hébergements traditionnels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('hebergements-traditionnels', 'fr', 'hébergements traditionnels');
            PERFORM insert_category_translations('hebergements-traditionnels', 'ar', 'إقامات تقليدية');
            PERFORM insert_category_translations('hebergements-traditionnels', 'en', 'traditional accommodation');
            PERFORM insert_category_translations('hebergements-traditionnels', 'de', 'Traditionelle Unterkünfte');
            PERFORM insert_category_translations('hebergements-traditionnels', 'es', 'alojamientos tradicionales');
            PERFORM insert_category_translations('hebergements-traditionnels', 'it', 'alloggi tradizionali');

            -- Level 2: hebergements-familiaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('hebergements-familiaux', 'hebergements-familiaux', 2, l1_id, 'hébergements familiaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('hebergements-familiaux', 'fr', 'hébergements familiaux');
            PERFORM insert_category_translations('hebergements-familiaux', 'ar', 'إقامات عائلية');
            PERFORM insert_category_translations('hebergements-familiaux', 'en', 'family stays');
            PERFORM insert_category_translations('hebergements-familiaux', 'de', 'Familienunterkünfte');
            PERFORM insert_category_translations('hebergements-familiaux', 'es', 'alojamientos familiares');
            PERFORM insert_category_translations('hebergements-familiaux', 'it', 'alloggi familiari');

            -- Level 2: locations-chez-habitant
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('locations-chez-habitant', 'locations-chez-habitant', 2, l1_id, 'locations chez l’habitant')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('locations-chez-habitant', 'fr', 'locations chez l’habitant');
            PERFORM insert_category_translations('locations-chez-habitant', 'ar', 'إيجار لدى السكان');
            PERFORM insert_category_translations('locations-chez-habitant', 'en', 'homestays');
            PERFORM insert_category_translations('locations-chez-habitant', 'de', 'Privatunterkünfte');
            PERFORM insert_category_translations('locations-chez-habitant', 'es', 'alquiler en casa de residentes');
            PERFORM insert_category_translations('locations-chez-habitant', 'it', 'affitto presso residenti');

            -- Level 2: chambres-hotes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chambres-hotes', 'chambres-hotes', 2, l1_id, 'chambres d’hôtes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chambres-hotes', 'fr', 'chambres d’hôtes');
            PERFORM insert_category_translations('chambres-hotes', 'ar', 'غرف ضيافة');
            PERFORM insert_category_translations('chambres-hotes', 'en', 'bed & breakfast');
            PERFORM insert_category_translations('chambres-hotes', 'de', 'Bed & Breakfast');
            PERFORM insert_category_translations('chambres-hotes', 'es', 'habitaciones de huéspedes');
            PERFORM insert_category_translations('chambres-hotes', 'it', 'camere per ospiti');

        -- Level 1: transport-touristique
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('transport-touristique', 'transport-touristique', 1, root_id, 'Transport Touristique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('transport-touristique', 'fr', 'Transport Touristique');
        PERFORM insert_category_translations('transport-touristique', 'ar', 'النقل السياحي');
        PERFORM insert_category_translations('transport-touristique', 'en', 'Tourist Transport');
        PERFORM insert_category_translations('transport-touristique', 'de', 'Touristischer Transport');
        PERFORM insert_category_translations('transport-touristique', 'es', 'Transporte turístico');
        PERFORM insert_category_translations('transport-touristique', 'it', 'Trasporto turistico');

            -- Level 2: locations-voitures
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('locations-voitures', 'locations-voitures', 2, l1_id, 'locations de voitures')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('locations-voitures', 'fr', 'locations de voitures');
            PERFORM insert_category_translations('locations-voitures', 'ar', 'كراء سيارات');
            PERFORM insert_category_translations('locations-voitures', 'en', 'car rentals');
            PERFORM insert_category_translations('locations-voitures', 'de', 'Autovermietung');
            PERFORM insert_category_translations('locations-voitures', 'es', 'alquiler de coches');
            PERFORM insert_category_translations('locations-voitures', 'it', 'noleggio auto');

            -- Level 2: locations-4x4
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('locations-4x4', 'locations-4x4', 2, l1_id, 'locations de 4x4')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('locations-4x4', 'fr', 'locations de 4x4');
            PERFORM insert_category_translations('locations-4x4', 'ar', 'كراء سيارات 4x4');
            PERFORM insert_category_translations('locations-4x4', 'en', '4x4 rentals');
            PERFORM insert_category_translations('locations-4x4', 'de', '4x4-Vermietung');
            PERFORM insert_category_translations('locations-4x4', 'es', 'alquiler de 4x4');
            PERFORM insert_category_translations('locations-4x4', 'it', 'noleggio 4x4');

            -- Level 2: locations-motos
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('locations-motos', 'locations-motos', 2, l1_id, 'locations de motos')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('locations-motos', 'fr', 'locations de motos');
            PERFORM insert_category_translations('locations-motos', 'ar', 'كراء دراجات نارية');
            PERFORM insert_category_translations('locations-motos', 'en', 'motorbike rentals');
            PERFORM insert_category_translations('locations-motos', 'de', 'Motorradvermietung');
            PERFORM insert_category_translations('locations-motos', 'es', 'alquiler de motos');
            PERFORM insert_category_translations('locations-motos', 'it', 'noleggio moto');

            -- Level 2: locations-quads
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('locations-quads', 'locations-quads', 2, l1_id, 'locations de quads')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('locations-quads', 'fr', 'locations de quads');
            PERFORM insert_category_translations('locations-quads', 'ar', 'كراء كوادرات');
            PERFORM insert_category_translations('locations-quads', 'en', 'quad rentals');
            PERFORM insert_category_translations('locations-quads', 'de', 'Quad-Vermietung');
            PERFORM insert_category_translations('locations-quads', 'es', 'alquiler de quads');
            PERFORM insert_category_translations('locations-quads', 'it', 'noleggio quad');

            -- Level 2: transport-prive
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('transport-prive', 'transport-prive', 2, l1_id, 'transport touristique privé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('transport-prive', 'fr', 'transport touristique privé');
            PERFORM insert_category_translations('transport-prive', 'ar', 'نقل سياحي خاص');
            PERFORM insert_category_translations('transport-prive', 'en', 'private tourist transport');
            PERFORM insert_category_translations('transport-prive', 'de', 'Privater touristischer Transport');
            PERFORM insert_category_translations('transport-prive', 'es', 'transporte turístico privado');
            PERFORM insert_category_translations('transport-prive', 'it', 'trasporto turistico privato');

            -- Level 2: navettes-aeroport
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('navettes-aeroport', 'navettes-aeroport', 2, l1_id, 'navettes aéroport')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('navettes-aeroport', 'fr', 'navettes aéroport');
            PERFORM insert_category_translations('navettes-aeroport', 'ar', 'حافلات المطار');
            PERFORM insert_category_translations('navettes-aeroport', 'en', 'airport shuttles');
            PERFORM insert_category_translations('navettes-aeroport', 'de', 'Flughafenshuttles');
            PERFORM insert_category_translations('navettes-aeroport', 'es', 'traslados al aeropuerto');
            PERFORM insert_category_translations('navettes-aeroport', 'it', 'navette aeroporto');

            -- Level 2: transferts-intervilles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('transferts-intervilles', 'transferts-intervilles', 2, l1_id, 'transferts inter-villes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('transferts-intervilles', 'fr', 'transferts inter-villes');
            PERFORM insert_category_translations('transferts-intervilles', 'ar', 'نقل بين المدن');
            PERFORM insert_category_translations('transferts-intervilles', 'en', 'intercity transfers');
            PERFORM insert_category_translations('transferts-intervilles', 'de', 'Stadttransfers');
            PERFORM insert_category_translations('transferts-intervilles', 'es', 'traslados entre ciudades');
            PERFORM insert_category_translations('transferts-intervilles', 'it', 'trasferimenti tra città');

            -- Level 2: chauffeurs-prives
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chauffeurs-prives', 'chauffeurs-prives', 2, l1_id, 'chauffeurs privés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chauffeurs-prives', 'fr', 'chauffeurs privés');
            PERFORM insert_category_translations('chauffeurs-prives', 'ar', 'سائقون خاصون');
            PERFORM insert_category_translations('chauffeurs-prives', 'en', 'private drivers');
            PERFORM insert_category_translations('chauffeurs-prives', 'de', 'Privatchauffeure');
            PERFORM insert_category_translations('chauffeurs-prives', 'es', 'conductores privados');
            PERFORM insert_category_translations('chauffeurs-prives', 'it', 'autisti privati');

            -- Level 2: bus-touristiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bus-touristiques', 'bus-touristiques', 2, l1_id, 'bus touristiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bus-touristiques', 'fr', 'bus touristiques');
            PERFORM insert_category_translations('bus-touristiques', 'ar', 'حافلات سياحية');
            PERFORM insert_category_translations('bus-touristiques', 'en', 'tourist buses');
            PERFORM insert_category_translations('bus-touristiques', 'de', 'Touristenbusse');
            PERFORM insert_category_translations('bus-touristiques', 'es', 'autobuses turísticos');
            PERFORM insert_category_translations('bus-touristiques', 'it', 'bus turistici');

            -- Level 2: minibus-voyage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('minibus-voyage', 'minibus-voyage', 2, l1_id, 'minibus de voyage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('minibus-voyage', 'fr', 'minibus de voyage');
            PERFORM insert_category_translations('minibus-voyage', 'ar', 'حافلات صغيرة للسفر');
            PERFORM insert_category_translations('minibus-voyage', 'en', 'travel minibuses');
            PERFORM insert_category_translations('minibus-voyage', 'de', 'Reise-Minibusse');
            PERFORM insert_category_translations('minibus-voyage', 'es', 'minibuses de viaje');
            PERFORM insert_category_translations('minibus-voyage', 'it', 'minibus di viaggio');

            -- Level 2: taxis-touristiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('taxis-touristiques', 'taxis-touristiques', 2, l1_id, 'taxis touristiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('taxis-touristiques', 'fr', 'taxis touristiques');
            PERFORM insert_category_translations('taxis-touristiques', 'ar', 'تاكسي سياحي');
            PERFORM insert_category_translations('taxis-touristiques', 'en', 'tourist taxis');
            PERFORM insert_category_translations('taxis-touristiques', 'de', 'Touristentaxis');
            PERFORM insert_category_translations('taxis-touristiques', 'es', 'taxis turísticos');
            PERFORM insert_category_translations('taxis-touristiques', 'it', 'taxi turistici');

            -- Level 2: location-velos
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('location-velos', 'location-velos', 2, l1_id, 'location de vélos')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('location-velos', 'fr', 'location de vélos');
            PERFORM insert_category_translations('location-velos', 'ar', 'كراء دراجات');
            PERFORM insert_category_translations('location-velos', 'en', 'bicycle rentals');
            PERFORM insert_category_translations('location-velos', 'de', 'Fahrradverleih');
            PERFORM insert_category_translations('location-velos', 'es', 'alquiler de bicicletas');
            PERFORM insert_category_translations('location-velos', 'it', 'noleggio biciclette');

            -- Level 2: location-trottinettes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('location-trottinettes', 'location-trottinettes', 2, l1_id, 'location de trottinettes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('location-trottinettes', 'fr', 'location de trottinettes');
            PERFORM insert_category_translations('location-trottinettes', 'ar', 'كراء سكوترات');
            PERFORM insert_category_translations('location-trottinettes', 'en', 'scooter rentals');
            PERFORM insert_category_translations('location-trottinettes', 'de', 'Rollerverleih');
            PERFORM insert_category_translations('location-trottinettes', 'es', 'alquiler de patinetes');
            PERFORM insert_category_translations('location-trottinettes', 'it', 'noleggio monopattini');

            -- Level 2: bateaux-touristiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bateaux-touristiques', 'bateaux-touristiques', 2, l1_id, 'bateaux touristiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bateaux-touristiques', 'fr', 'bateaux touristiques');
            PERFORM insert_category_translations('bateaux-touristiques', 'ar', 'قوارب سياحية');
            PERFORM insert_category_translations('bateaux-touristiques', 'en', 'tourist boats');
            PERFORM insert_category_translations('bateaux-touristiques', 'de', 'Touristenboote');
            PERFORM insert_category_translations('bateaux-touristiques', 'es', 'barcos turísticos');
            PERFORM insert_category_translations('bateaux-touristiques', 'it', 'barche turistiche');

        -- Level 1: activites-loisirs-touristiques
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('activites-loisirs-touristiques', 'activites-loisirs-touristiques', 1, root_id, 'Activités & Loisirs Touristiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('activites-loisirs-touristiques', 'fr', 'Activités & Loisirs Touristiques');
        PERFORM insert_category_translations('activites-loisirs-touristiques', 'ar', 'أنشطة وترفيه سياحي');
        PERFORM insert_category_translations('activites-loisirs-touristiques', 'en', 'Tourist Activities & Leisure');
        PERFORM insert_category_translations('activites-loisirs-touristiques', 'de', 'Touristische Aktivitäten & Freizeit');
        PERFORM insert_category_translations('activites-loisirs-touristiques', 'es', 'Actividades y ocio turístico');
        PERFORM insert_category_translations('activites-loisirs-touristiques', 'it', 'Attività e svago turistico');

            -- Level 2: sports-aventure
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sports-aventure', 'sports-aventure', 2, l1_id, 'sports d’aventure')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sports-aventure', 'fr', 'sports d’aventure');
            PERFORM insert_category_translations('sports-aventure', 'ar', 'رياضات المغامرة');
            PERFORM insert_category_translations('sports-aventure', 'en', 'adventure sports');
            PERFORM insert_category_translations('sports-aventure', 'de', 'Abenteuersport');
            PERFORM insert_category_translations('sports-aventure', 'es', 'deportes de aventura');
            PERFORM insert_category_translations('sports-aventure', 'it', 'sport d’avventura');

            -- Level 2: escalade
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('escalade', 'escalade', 2, l1_id, 'escalade')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('escalade', 'fr', 'escalade');
            PERFORM insert_category_translations('escalade', 'ar', 'تسلق');
            PERFORM insert_category_translations('escalade', 'en', 'climbing');
            PERFORM insert_category_translations('escalade', 'de', 'Klettern');
            PERFORM insert_category_translations('escalade', 'es', 'escalada');
            PERFORM insert_category_translations('escalade', 'it', 'arrampicata');

            -- Level 2: parapente
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('parapente', 'parapente', 2, l1_id, 'parapente')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('parapente', 'fr', 'parapente');
            PERFORM insert_category_translations('parapente', 'ar', 'طيران شراعي');
            PERFORM insert_category_translations('parapente', 'en', 'paragliding');
            PERFORM insert_category_translations('parapente', 'de', 'Paragliding');
            PERFORM insert_category_translations('parapente', 'es', 'parapente');
            PERFORM insert_category_translations('parapente', 'it', 'parapendio');

            -- Level 2: plongee
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('plongee', 'plongee', 2, l1_id, 'plongée sous-marine')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('plongee', 'fr', 'plongée sous-marine');
            PERFORM insert_category_translations('plongee', 'ar', 'غوص بحري');
            PERFORM insert_category_translations('plongee', 'en', 'scuba diving');
            PERFORM insert_category_translations('plongee', 'de', 'Tauchen');
            PERFORM insert_category_translations('plongee', 'es', 'buceo');
            PERFORM insert_category_translations('plongee', 'it', 'immersione subacquea');

            -- Level 2: snorkeling
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('snorkeling', 'snorkeling', 2, l1_id, 'snorkeling')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('snorkeling', 'fr', 'snorkeling');
            PERFORM insert_category_translations('snorkeling', 'ar', 'سنوركلينغ');
            PERFORM insert_category_translations('snorkeling', 'en', 'snorkeling');
            PERFORM insert_category_translations('snorkeling', 'de', 'Schnorcheln');
            PERFORM insert_category_translations('snorkeling', 'es', 'snorkel');
            PERFORM insert_category_translations('snorkeling', 'it', 'snorkeling');

            -- Level 2: sports-nautiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sports-nautiques', 'sports-nautiques', 2, l1_id, 'sports nautiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sports-nautiques', 'fr', 'sports nautiques');
            PERFORM insert_category_translations('sports-nautiques', 'ar', 'رياضات مائية');
            PERFORM insert_category_translations('sports-nautiques', 'en', 'water sports');
            PERFORM insert_category_translations('sports-nautiques', 'de', 'Wassersport');
            PERFORM insert_category_translations('sports-nautiques', 'es', 'deportes acuáticos');
            PERFORM insert_category_translations('sports-nautiques', 'it', 'sport acquatici');

            -- Level 2: jet-ski
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jet-ski', 'jet-ski', 2, l1_id, 'jet-ski')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('jet-ski', 'fr', 'jet-ski');
            PERFORM insert_category_translations('jet-ski', 'ar', 'جيت سكي');
            PERFORM insert_category_translations('jet-ski', 'en', 'jet ski');
            PERFORM insert_category_translations('jet-ski', 'de', 'Jetski');
            PERFORM insert_category_translations('jet-ski', 'es', 'moto acuática');
            PERFORM insert_category_translations('jet-ski', 'it', 'jet ski');

            -- Level 2: kayak
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('kayak', 'kayak', 2, l1_id, 'kayak')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('kayak', 'fr', 'kayak');
            PERFORM insert_category_translations('kayak', 'ar', 'كاياك');
            PERFORM insert_category_translations('kayak', 'en', 'kayak');
            PERFORM insert_category_translations('kayak', 'de', 'Kayak');
            PERFORM insert_category_translations('kayak', 'es', 'kayak');
            PERFORM insert_category_translations('kayak', 'it', 'kayak');

            -- Level 2: paddle
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('paddle', 'paddle', 2, l1_id, 'paddle')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('paddle', 'fr', 'paddle');
            PERFORM insert_category_translations('paddle', 'ar', 'باديْل');
            PERFORM insert_category_translations('paddle', 'en', 'paddle');
            PERFORM insert_category_translations('paddle', 'de', 'Paddle');
            PERFORM insert_category_translations('paddle', 'es', 'paddle');
            PERFORM insert_category_translations('paddle', 'it', 'paddle');

            -- Level 2: randonnees-pedestres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('randonnees-pedestres', 'randonnees-pedestres', 2, l1_id, 'randonnées pédestres')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('randonnees-pedestres', 'fr', 'randonnées pédestres');
            PERFORM insert_category_translations('randonnees-pedestres', 'ar', 'مشي لمسافات');
            PERFORM insert_category_translations('randonnees-pedestres', 'en', 'hiking');
            PERFORM insert_category_translations('randonnees-pedestres', 'de', 'Wanderungen');
            PERFORM insert_category_translations('randonnees-pedestres', 'es', 'senderismo');
            PERFORM insert_category_translations('randonnees-pedestres', 'it', 'escursioni a piedi');

            -- Level 2: randonnees-equestres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('randonnees-equestres', 'randonnees-equestres', 2, l1_id, 'randonnées équestres')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('randonnees-equestres', 'fr', 'randonnées équestres');
            PERFORM insert_category_translations('randonnees-equestres', 'ar', 'مشيات فروسية');
            PERFORM insert_category_translations('randonnees-equestres', 'en', 'horseback hikes');
            PERFORM insert_category_translations('randonnees-equestres', 'de', 'Reitwanderungen');
            PERFORM insert_category_translations('randonnees-equestres', 'es', 'rutas a caballo');
            PERFORM insert_category_translations('randonnees-equestres', 'it', 'escursioni a cavallo');

            -- Level 2: equitation
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('equitation', 'equitation', 2, l1_id, 'équitation')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('equitation', 'fr', 'équitation');
            PERFORM insert_category_translations('equitation', 'ar', 'فروسية');
            PERFORM insert_category_translations('equitation', 'en', 'horse riding');
            PERFORM insert_category_translations('equitation', 'de', 'Reiten');
            PERFORM insert_category_translations('equitation', 'es', 'equitación');
            PERFORM insert_category_translations('equitation', 'it', 'equitazione');

            -- Level 2: parcs-naturels
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('parcs-naturels', 'parcs-naturels', 2, l1_id, 'visites de parcs naturels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('parcs-naturels', 'fr', 'visites de parcs naturels');
            PERFORM insert_category_translations('parcs-naturels', 'ar', 'زيارة محميات طبيعية');
            PERFORM insert_category_translations('parcs-naturels', 'en', 'natural parks visits');
            PERFORM insert_category_translations('parcs-naturels', 'de', 'Besuche in Naturparks');
            PERFORM insert_category_translations('parcs-naturels', 'es', 'visitas a parques naturales');
            PERFORM insert_category_translations('parcs-naturels', 'it', 'visite a parchi naturali');

            -- Level 2: safaris-sahariens
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('safaris-sahariens', 'safaris-sahariens', 2, l1_id, 'safaris sahariens')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('safaris-sahariens', 'fr', 'safaris sahariens');
            PERFORM insert_category_translations('safaris-sahariens', 'ar', 'سفاري صحراوي');
            PERFORM insert_category_translations('safaris-sahariens', 'en', 'Saharan safaris');
            PERFORM insert_category_translations('safaris-sahariens', 'de', 'Sahara-Safaris');
            PERFORM insert_category_translations('safaris-sahariens', 'es', 'safaris saharianos');
            PERFORM insert_category_translations('safaris-sahariens', 'it', 'safari sahariani');

            -- Level 2: observation-etoiles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('observation-etoiles', 'observation-etoiles', 2, l1_id, 'observation des étoiles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('observation-etoiles', 'fr', 'observation des étoiles');
            PERFORM insert_category_translations('observation-etoiles', 'ar', 'رصد النجوم');
            PERFORM insert_category_translations('observation-etoiles', 'en', 'stargazing');
            PERFORM insert_category_translations('observation-etoiles', 'de', 'Sternbeobachtung');
            PERFORM insert_category_translations('observation-etoiles', 'es', 'observación de estrellas');
            PERFORM insert_category_translations('observation-etoiles', 'it', 'osservazione delle stelle');

            -- Level 2: photographie-touristique
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('photographie-touristique', 'photographie-touristique', 2, l1_id, 'photographie touristique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('photographie-touristique', 'fr', 'photographie touristique');
            PERFORM insert_category_translations('photographie-touristique', 'ar', 'تصوير سياحي');
            PERFORM insert_category_translations('photographie-touristique', 'en', 'tourist photography');
            PERFORM insert_category_translations('photographie-touristique', 'de', 'Touristische Fotografie');
            PERFORM insert_category_translations('photographie-touristique', 'es', 'fotografía turística');
            PERFORM insert_category_translations('photographie-touristique', 'it', 'fotografia turistica');

            -- Level 2: circuits-gastronomiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('circuits-gastronomiques', 'circuits-gastronomiques', 2, l1_id, 'circuits gastronomiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('circuits-gastronomiques', 'fr', 'circuits gastronomiques');
            PERFORM insert_category_translations('circuits-gastronomiques', 'ar', 'جولات غذائية');
            PERFORM insert_category_translations('circuits-gastronomiques', 'en', 'gastronomic circuits');
            PERFORM insert_category_translations('circuits-gastronomiques', 'de', 'Gastronomische Touren');
            PERFORM insert_category_translations('circuits-gastronomiques', 'es', 'circuitos gastronómicos');
            PERFORM insert_category_translations('circuits-gastronomiques', 'it', 'circuiti gastronomici');

            -- Level 2: ateliers-cuisine-locale
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ateliers-cuisine-locale', 'ateliers-cuisine-locale', 2, l1_id, 'ateliers de cuisine locale')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ateliers-cuisine-locale', 'fr', 'ateliers de cuisine locale');
            PERFORM insert_category_translations('ateliers-cuisine-locale', 'ar', 'ورش طبخ محلي');
            PERFORM insert_category_translations('ateliers-cuisine-locale', 'en', 'local cooking workshops');
            PERFORM insert_category_translations('ateliers-cuisine-locale', 'de', 'Kochworkshops vor Ort');
            PERFORM insert_category_translations('ateliers-cuisine-locale', 'es', 'talleres de cocina local');
            PERFORM insert_category_translations('ateliers-cuisine-locale', 'it', 'laboratori di cucina locale');

            -- Level 2: spas-bien-etre
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('spas-bien-etre', 'spas-bien-etre', 2, l1_id, 'spas & bien-être')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('spas-bien-etre', 'fr', 'spas & bien-être');
            PERFORM insert_category_translations('spas-bien-etre', 'ar', 'سبا وعافية');
            PERFORM insert_category_translations('spas-bien-etre', 'en', 'spas & wellness');
            PERFORM insert_category_translations('spas-bien-etre', 'de', 'Spas & Wellness');
            PERFORM insert_category_translations('spas-bien-etre', 'es', 'spas y bienestar');
            PERFORM insert_category_translations('spas-bien-etre', 'it', 'spa e benessere');

            -- Level 2: thalassotherapie
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('thalassotherapie', 'thalassotherapie', 2, l1_id, 'thalassothérapie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('thalassotherapie', 'fr', 'thalassothérapie');
            PERFORM insert_category_translations('thalassotherapie', 'ar', 'تالاسوثيرابي');
            PERFORM insert_category_translations('thalassotherapie', 'en', 'thalassotherapy');
            PERFORM insert_category_translations('thalassotherapie', 'de', 'Thalassotherapie');
            PERFORM insert_category_translations('thalassotherapie', 'es', 'talasoterapia');
            PERFORM insert_category_translations('thalassotherapie', 'it', 'talassoterapia');

            -- Level 2: hammam-traditionnel
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('hammam-traditionnel', 'hammam-traditionnel', 2, l1_id, 'hammam traditionnel')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('hammam-traditionnel', 'fr', 'hammam traditionnel');
            PERFORM insert_category_translations('hammam-traditionnel', 'ar', 'حمام تقليدي');
            PERFORM insert_category_translations('hammam-traditionnel', 'en', 'traditional hammam');
            PERFORM insert_category_translations('hammam-traditionnel', 'de', 'Traditionelles Hammam');
            PERFORM insert_category_translations('hammam-traditionnel', 'es', 'hammam tradicional');
            PERFORM insert_category_translations('hammam-traditionnel', 'it', 'hammam tradizionale');

        -- Level 1: tourisme-culturel-historique
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tourisme-culturel-historique', 'tourisme-culturel-historique', 1, root_id, 'Tourisme Culturel & Historique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('tourisme-culturel-historique', 'fr', 'Tourisme Culturel & Historique');
        PERFORM insert_category_translations('tourisme-culturel-historique', 'ar', 'سياحة ثقافية وتاريخية');
        PERFORM insert_category_translations('tourisme-culturel-historique', 'en', 'Cultural & Historical Tourism');
        PERFORM insert_category_translations('tourisme-culturel-historique', 'de', 'Kultureller & Historischer Tourismus');
        PERFORM insert_category_translations('tourisme-culturel-historique', 'es', 'Turismo cultural e histórico');
        PERFORM insert_category_translations('tourisme-culturel-historique', 'it', 'Turismo culturale e storico');

            -- Level 2: musees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('musees', 'musees', 2, l1_id, 'visites de musées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('musees', 'fr', 'visites de musées');
            PERFORM insert_category_translations('musees', 'ar', 'زيارة متاحف');
            PERFORM insert_category_translations('musees', 'en', 'museum visits');
            PERFORM insert_category_translations('musees', 'de', 'Museumsbesuche');
            PERFORM insert_category_translations('musees', 'es', 'visitas a museos');
            PERFORM insert_category_translations('musees', 'it', 'visite ai musei');

            -- Level 2: sites-archeologiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sites-archeologiques', 'sites-archeologiques', 2, l1_id, 'sites archéologiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sites-archeologiques', 'fr', 'sites archéologiques');
            PERFORM insert_category_translations('sites-archeologiques', 'ar', 'مواقع أثرية');
            PERFORM insert_category_translations('sites-archeologiques', 'en', 'archaeological sites');
            PERFORM insert_category_translations('sites-archeologiques', 'de', 'Archäologische Stätten');
            PERFORM insert_category_translations('sites-archeologiques', 'es', 'sitios arqueológicos');
            PERFORM insert_category_translations('sites-archeologiques', 'it', 'siti archeologici');

            -- Level 2: monuments-historiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('monuments-historiques', 'monuments-historiques', 2, l1_id, 'monuments historiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('monuments-historiques', 'fr', 'monuments historiques');
            PERFORM insert_category_translations('monuments-historiques', 'ar', 'معالم تاريخية');
            PERFORM insert_category_translations('monuments-historiques', 'en', 'historical monuments');
            PERFORM insert_category_translations('monuments-historiques', 'de', 'Historische Monumente');
            PERFORM insert_category_translations('monuments-historiques', 'es', 'monumentos históricos');
            PERFORM insert_category_translations('monuments-historiques', 'it', 'monumenti storici');

            -- Level 2: patrimoine-unesco
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('patrimoine-unesco', 'patrimoine-unesco', 2, l1_id, 'patrimoine UNESCO')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('patrimoine-unesco', 'fr', 'patrimoine UNESCO');
            PERFORM insert_category_translations('patrimoine-unesco', 'ar', 'تراث اليونسكو');
            PERFORM insert_category_translations('patrimoine-unesco', 'en', 'UNESCO heritage');
            PERFORM insert_category_translations('patrimoine-unesco', 'de', 'UNESCO-Welterbe');
            PERFORM insert_category_translations('patrimoine-unesco', 'es', 'patrimonio UNESCO');
            PERFORM insert_category_translations('patrimoine-unesco', 'it', 'patrimonio UNESCO');

            -- Level 2: casbahs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('casbahs', 'casbahs', 2, l1_id, 'casbahs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('casbahs', 'fr', 'casbahs');
            PERFORM insert_category_translations('casbahs', 'ar', 'قصبة');
            PERFORM insert_category_translations('casbahs', 'en', 'casbahs');
            PERFORM insert_category_translations('casbahs', 'de', 'Kasbahs');
            PERFORM insert_category_translations('casbahs', 'es', 'kasbahs');
            PERFORM insert_category_translations('casbahs', 'it', 'casbah');

            -- Level 2: ksour
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ksour', 'ksour', 2, l1_id, 'ksour')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ksour', 'fr', 'ksour');
            PERFORM insert_category_translations('ksour', 'ar', 'قصور صحراوية');
            PERFORM insert_category_translations('ksour', 'en', 'ksour');
            PERFORM insert_category_translations('ksour', 'de', 'Ksour');
            PERFORM insert_category_translations('ksour', 'es', 'ksour');
            PERFORM insert_category_translations('ksour', 'it', 'ksour');

            -- Level 2: oasis-sahariennes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('oasis-sahariennes', 'oasis-sahariennes', 2, l1_id, 'oasis sahariennes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('oasis-sahariennes', 'fr', 'oasis sahariennes');
            PERFORM insert_category_translations('oasis-sahariennes', 'ar', 'واحات صحراوية');
            PERFORM insert_category_translations('oasis-sahariennes', 'en', 'Saharan oases');
            PERFORM insert_category_translations('oasis-sahariennes', 'de', 'Sahara-Oasen');
            PERFORM insert_category_translations('oasis-sahariennes', 'es', 'oasis saharianas');
            PERFORM insert_category_translations('oasis-sahariennes', 'it', 'oasi sahariane');

            -- Level 2: villages-traditionnels
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('villages-traditionnels', 'villages-traditionnels', 2, l1_id, 'villages traditionnels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('villages-traditionnels', 'fr', 'villages traditionnels');
            PERFORM insert_category_translations('villages-traditionnels', 'ar', 'قرى تقليدية');
            PERFORM insert_category_translations('villages-traditionnels', 'en', 'traditional villages');
            PERFORM insert_category_translations('villages-traditionnels', 'de', 'Traditionelle Dörfer');
            PERFORM insert_category_translations('villages-traditionnels', 'es', 'pueblos tradicionales');
            PERFORM insert_category_translations('villages-traditionnels', 'it', 'villaggi tradizionali');

            -- Level 2: mausolees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mausolees', 'mausolees', 2, l1_id, 'mausolées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mausolees', 'fr', 'mausolées');
            PERFORM insert_category_translations('mausolees', 'ar', 'أضرحة');
            PERFORM insert_category_translations('mausolees', 'en', 'mausoleums');
            PERFORM insert_category_translations('mausolees', 'de', 'Mausoleen');
            PERFORM insert_category_translations('mausolees', 'es', 'mausoleos');
            PERFORM insert_category_translations('mausolees', 'it', 'mausolei');

            -- Level 2: mosquees-historiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mosquees-historiques', 'mosquees-historiques', 2, l1_id, 'mosquées historiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mosquees-historiques', 'fr', 'mosquées historiques');
            PERFORM insert_category_translations('mosquees-historiques', 'ar', 'مساجد تاريخية');
            PERFORM insert_category_translations('mosquees-historiques', 'en', 'historic mosques');
            PERFORM insert_category_translations('mosquees-historiques', 'de', 'Historische Moscheen');
            PERFORM insert_category_translations('mosquees-historiques', 'es', 'mezquitas históricas');
            PERFORM insert_category_translations('mosquees-historiques', 'it', 'moschee storiche');

            -- Level 2: medinas-anciennes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('medinas-anciennes', 'medinas-anciennes', 2, l1_id, 'médinas anciennes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('medinas-anciennes', 'fr', 'médinas anciennes');
            PERFORM insert_category_translations('medinas-anciennes', 'ar', 'مدن قديمة');
            PERFORM insert_category_translations('medinas-anciennes', 'en', 'old medinas');
            PERFORM insert_category_translations('medinas-anciennes', 'de', 'Alte Medinas');
            PERFORM insert_category_translations('medinas-anciennes', 'es', 'medinas antiguas');
            PERFORM insert_category_translations('medinas-anciennes', 'it', 'antiche medine');

            -- Level 2: circuits-artisanat
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('circuits-artisanat', 'circuits-artisanat', 2, l1_id, 'circuits artisanat')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('circuits-artisanat', 'fr', 'circuits artisanat');
            PERFORM insert_category_translations('circuits-artisanat', 'ar', 'جولات حرفية');
            PERFORM insert_category_translations('circuits-artisanat', 'en', 'craft circuits');
            PERFORM insert_category_translations('circuits-artisanat', 'de', 'Handwerksrouten');
            PERFORM insert_category_translations('circuits-artisanat', 'es', 'circuitos de artesanía');
            PERFORM insert_category_translations('circuits-artisanat', 'it', 'circuiti dell’artigianato');

            -- Level 2: circuits-patrimoine
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('circuits-patrimoine', 'circuits-patrimoine', 2, l1_id, 'circuits du patrimoine')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('circuits-patrimoine', 'fr', 'circuits du patrimoine');
            PERFORM insert_category_translations('circuits-patrimoine', 'ar', 'جولات التراث');
            PERFORM insert_category_translations('circuits-patrimoine', 'en', 'heritage circuits');
            PERFORM insert_category_translations('circuits-patrimoine', 'de', 'Kulturerbe-Routen');
            PERFORM insert_category_translations('circuits-patrimoine', 'es', 'circuitos del patrimonio');
            PERFORM insert_category_translations('circuits-patrimoine', 'it', 'circuiti del patrimonio');

            -- Level 2: festivals-culturels
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('festivals-culturels', 'festivals-culturels', 2, l1_id, 'festivals culturels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('festivals-culturels', 'fr', 'festivals culturels');
            PERFORM insert_category_translations('festivals-culturels', 'ar', 'مهرجانات ثقافية');
            PERFORM insert_category_translations('festivals-culturels', 'en', 'cultural festivals');
            PERFORM insert_category_translations('festivals-culturels', 'de', 'Kulturfestivals');
            PERFORM insert_category_translations('festivals-culturels', 'es', 'festivales culturales');
            PERFORM insert_category_translations('festivals-culturels', 'it', 'festival culturali');

            -- Level 2: evenements-folkloriques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('evenements-folkloriques', 'evenements-folkloriques', 2, l1_id, 'événements folkloriques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('evenements-folkloriques', 'fr', 'événements folkloriques');
            PERFORM insert_category_translations('evenements-folkloriques', 'ar', 'فعاليات فولكلورية');
            PERFORM insert_category_translations('evenements-folkloriques', 'en', 'folkloric events');
            PERFORM insert_category_translations('evenements-folkloriques', 'de', 'Folkloristische Veranstaltungen');
            PERFORM insert_category_translations('evenements-folkloriques', 'es', 'eventos folclóricos');
            PERFORM insert_category_translations('evenements-folkloriques', 'it', 'eventi folcloristici');

        -- Level 1: services-assistance-voyageurs
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('services-assistance-voyageurs', 'services-assistance-voyageurs', 1, root_id, 'Services & Assistance aux Voyageurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('services-assistance-voyageurs', 'fr', 'Services & Assistance aux Voyageurs');
        PERFORM insert_category_translations('services-assistance-voyageurs', 'ar', 'خدمات ومساعدة للمسافرين');
        PERFORM insert_category_translations('services-assistance-voyageurs', 'en', 'Traveler Services & Assistance');
        PERFORM insert_category_translations('services-assistance-voyageurs', 'de', 'Dienstleistungen & Hilfe für Reisende');
        PERFORM insert_category_translations('services-assistance-voyageurs', 'es', 'Servicios y asistencia para viajeros');
        PERFORM insert_category_translations('services-assistance-voyageurs', 'it', 'Servizi e assistenza ai viaggiatori');

            -- Level 2: guides-touristiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('guides-touristiques', 'guides-touristiques', 2, l1_id, 'guides touristiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('guides-touristiques', 'fr', 'guides touristiques');
            PERFORM insert_category_translations('guides-touristiques', 'ar', 'أدلاء سياحيون');
            PERFORM insert_category_translations('guides-touristiques', 'en', 'tourist guides');
            PERFORM insert_category_translations('guides-touristiques', 'de', 'Reiseführer');
            PERFORM insert_category_translations('guides-touristiques', 'es', 'guías turísticos');
            PERFORM insert_category_translations('guides-touristiques', 'it', 'guide turistiche');

            -- Level 2: interpretes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('interpretes', 'interpretes', 2, l1_id, 'interprètes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('interpretes', 'fr', 'interprètes');
            PERFORM insert_category_translations('interpretes', 'ar', 'مترجمون');
            PERFORM insert_category_translations('interpretes', 'en', 'interpreters');
            PERFORM insert_category_translations('interpretes', 'de', 'Dolmetscher');
            PERFORM insert_category_translations('interpretes', 'es', 'intérpretes');
            PERFORM insert_category_translations('interpretes', 'it', 'interpreti');

            -- Level 2: services-traduction
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('services-traduction', 'services-traduction', 2, l1_id, 'services de traduction')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('services-traduction', 'fr', 'services de traduction');
            PERFORM insert_category_translations('services-traduction', 'ar', 'خدمات ترجمة');
            PERFORM insert_category_translations('services-traduction', 'en', 'translation services');
            PERFORM insert_category_translations('services-traduction', 'de', 'Übersetzungsdienste');
            PERFORM insert_category_translations('services-traduction', 'es', 'servicios de traducción');
            PERFORM insert_category_translations('services-traduction', 'it', 'servizi di traduzione');

            -- Level 2: assurance-voyage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('assurance-voyage', 'assurance-voyage', 2, l1_id, 'assurance voyage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('assurance-voyage', 'fr', 'assurance voyage');
            PERFORM insert_category_translations('assurance-voyage', 'ar', 'تأمين سفر');
            PERFORM insert_category_translations('assurance-voyage', 'en', 'travel insurance');
            PERFORM insert_category_translations('assurance-voyage', 'de', 'Reiseversicherung');
            PERFORM insert_category_translations('assurance-voyage', 'es', 'seguro de viaje');
            PERFORM insert_category_translations('assurance-voyage', 'it', 'assicurazione viaggio');

            -- Level 2: conseils-voyage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('conseils-voyage', 'conseils-voyage', 2, l1_id, 'conseils de voyage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('conseils-voyage', 'fr', 'conseils de voyage');
            PERFORM insert_category_translations('conseils-voyage', 'ar', 'نصائح سفر');
            PERFORM insert_category_translations('conseils-voyage', 'en', 'travel advice');
            PERFORM insert_category_translations('conseils-voyage', 'de', 'Reiseberatung');
            PERFORM insert_category_translations('conseils-voyage', 'es', 'consejos de viaje');
            PERFORM insert_category_translations('conseils-voyage', 'it', 'consigli di viaggio');

            -- Level 2: formalites-visas
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('formalites-visas', 'formalites-visas', 2, l1_id, 'formalités & visas')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('formalites-visas', 'fr', 'formalités & visas');
            PERFORM insert_category_translations('formalites-visas', 'ar', 'إجراءات وتأشيرات');
            PERFORM insert_category_translations('formalites-visas', 'en', 'formalities & visas');
            PERFORM insert_category_translations('formalites-visas', 'de', 'Formalitäten & Visa');
            PERFORM insert_category_translations('formalites-visas', 'es', 'trámites y visados');
            PERFORM insert_category_translations('formalites-visas', 'it', 'pratiche e visti');

            -- Level 2: preparation-itineraires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('preparation-itineraires', 'preparation-itineraires', 2, l1_id, 'préparation d’itinéraires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('preparation-itineraires', 'fr', 'préparation d’itinéraires');
            PERFORM insert_category_translations('preparation-itineraires', 'ar', 'إعداد مسارات');
            PERFORM insert_category_translations('preparation-itineraires', 'en', 'itinerary preparation');
            PERFORM insert_category_translations('preparation-itineraires', 'de', 'Reiseroutenplanung');
            PERFORM insert_category_translations('preparation-itineraires', 'es', 'preparación de itinerarios');
            PERFORM insert_category_translations('preparation-itineraires', 'it', 'preparazione itinerari');

            -- Level 2: organisation-sejours-sur-mesure
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('organisation-sejours-sur-mesure', 'organisation-sejours-sur-mesure', 2, l1_id, 'organisation de séjours sur mesure')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('organisation-sejours-sur-mesure', 'fr', 'organisation de séjours sur mesure');
            PERFORM insert_category_translations('organisation-sejours-sur-mesure', 'ar', 'تنظيم إقامات حسب الطلب');
            PERFORM insert_category_translations('organisation-sejours-sur-mesure', 'en', 'tailor-made stays');
            PERFORM insert_category_translations('organisation-sejours-sur-mesure', 'de', 'Maßgeschneiderte Aufenthalte');
            PERFORM insert_category_translations('organisation-sejours-sur-mesure', 'es', 'organización de estancias a medida');
            PERFORM insert_category_translations('organisation-sejours-sur-mesure', 'it', 'organizzazione soggiorni su misura');

            -- Level 2: reservation-hotels
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('reservation-hotels', 'reservation-hotels', 2, l1_id, 'réservation d’hôtels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('reservation-hotels', 'fr', 'réservation d’hôtels');
            PERFORM insert_category_translations('reservation-hotels', 'ar', 'حجز فنادق');
            PERFORM insert_category_translations('reservation-hotels', 'en', 'hotel booking');
            PERFORM insert_category_translations('reservation-hotels', 'de', 'Hotelreservierung');
            PERFORM insert_category_translations('reservation-hotels', 'es', 'reserva de hoteles');
            PERFORM insert_category_translations('reservation-hotels', 'it', 'prenotazione hotel');

            -- Level 2: reservation-billets
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('reservation-billets', 'reservation-billets', 2, l1_id, 'réservation de billets')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('reservation-billets', 'fr', 'réservation de billets');
            PERFORM insert_category_translations('reservation-billets', 'ar', 'حجز تذاكر');
            PERFORM insert_category_translations('reservation-billets', 'en', 'ticket booking');
            PERFORM insert_category_translations('reservation-billets', 'de', 'Ticketreservierung');
            PERFORM insert_category_translations('reservation-billets', 'es', 'reserva de billetes');
            PERFORM insert_category_translations('reservation-billets', 'it', 'prenotazione biglietti');

            -- Level 2: services-vip
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('services-vip', 'services-vip', 2, l1_id, 'services VIP')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('services-vip', 'fr', 'services VIP');
            PERFORM insert_category_translations('services-vip', 'ar', 'خدمات كبار الشخصيات');
            PERFORM insert_category_translations('services-vip', 'en', 'VIP services');
            PERFORM insert_category_translations('services-vip', 'de', 'VIP-Dienste');
            PERFORM insert_category_translations('services-vip', 'es', 'servicios VIP');
            PERFORM insert_category_translations('services-vip', 'it', 'servizi VIP');

            -- Level 2: location-materiel-voyage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('location-materiel-voyage', 'location-materiel-voyage', 2, l1_id, 'location de matériel de voyage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('location-materiel-voyage', 'fr', 'location de matériel de voyage');
            PERFORM insert_category_translations('location-materiel-voyage', 'ar', 'كراء معدات سفر');
            PERFORM insert_category_translations('location-materiel-voyage', 'en', 'travel gear rental');
            PERFORM insert_category_translations('location-materiel-voyage', 'de', 'Reiseausrüstung mieten');
            PERFORM insert_category_translations('location-materiel-voyage', 'es', 'alquiler de material de viaje');
            PERFORM insert_category_translations('location-materiel-voyage', 'it', 'noleggio attrezzature da viaggio');

            -- Level 2: transferts-urgents
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('transferts-urgents', 'transferts-urgents', 2, l1_id, 'transferts urgents')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('transferts-urgents', 'fr', 'transferts urgents');
            PERFORM insert_category_translations('transferts-urgents', 'ar', 'تحويلات عاجلة');
            PERFORM insert_category_translations('transferts-urgents', 'en', 'urgent transfers');
            PERFORM insert_category_translations('transferts-urgents', 'de', 'Dringende Transfers');
            PERFORM insert_category_translations('transferts-urgents', 'es', 'traslados urgentes');
            PERFORM insert_category_translations('transferts-urgents', 'it', 'trasferimenti urgenti');

            -- Level 2: aide-touristes-etrangers
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('aide-touristes-etrangers', 'aide-touristes-etrangers', 2, l1_id, 'aide aux touristes étrangers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('aide-touristes-etrangers', 'fr', 'aide aux touristes étrangers');
            PERFORM insert_category_translations('aide-touristes-etrangers', 'ar', 'مساعدة للسياح الأجانب');
            PERFORM insert_category_translations('aide-touristes-etrangers', 'en', 'help for foreign tourists');
            PERFORM insert_category_translations('aide-touristes-etrangers', 'de', 'Hilfe für ausländische Touristen');
            PERFORM insert_category_translations('aide-touristes-etrangers', 'es', 'ayuda a turistas extranjeros');
            PERFORM insert_category_translations('aide-touristes-etrangers', 'it', 'aiuto ai turisti stranieri');

        -- Level 1: produits-accessoires-voyage
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-accessoires-voyage', 'produits-accessoires-voyage', 1, root_id, 'Produits & Accessoires de Voyage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('produits-accessoires-voyage', 'fr', 'Produits & Accessoires de Voyage');
        PERFORM insert_category_translations('produits-accessoires-voyage', 'ar', 'منتجات وإكسسوارات السفر');
        PERFORM insert_category_translations('produits-accessoires-voyage', 'en', 'Travel Products & Accessories');
        PERFORM insert_category_translations('produits-accessoires-voyage', 'de', 'Reiseprodukte & Zubehör');
        PERFORM insert_category_translations('produits-accessoires-voyage', 'es', 'Productos y accesorios de viaje');
        PERFORM insert_category_translations('produits-accessoires-voyage', 'it', 'Prodotti e accessori da viaggio');

            -- Level 2: valises
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('valises', 'valises', 2, l1_id, 'valises')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('valises', 'fr', 'valises');
            PERFORM insert_category_translations('valises', 'ar', 'حقائب سفر');
            PERFORM insert_category_translations('valises', 'en', 'suitcases');
            PERFORM insert_category_translations('valises', 'de', 'Koffer');
            PERFORM insert_category_translations('valises', 'es', 'maletas');
            PERFORM insert_category_translations('valises', 'it', 'valigie');

            -- Level 2: sacs-voyage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-voyage', 'sacs-voyage', 2, l1_id, 'sacs de voyage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-voyage', 'fr', 'sacs de voyage');
            PERFORM insert_category_translations('sacs-voyage', 'ar', 'أكياس سفر');
            PERFORM insert_category_translations('sacs-voyage', 'en', 'travel bags');
            PERFORM insert_category_translations('sacs-voyage', 'de', 'Reisetaschen');
            PERFORM insert_category_translations('sacs-voyage', 'es', 'bolsas de viaje');
            PERFORM insert_category_translations('sacs-voyage', 'it', 'borse da viaggio');

            -- Level 2: sacs-dos
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-dos', 'sacs-dos', 2, l1_id, 'sacs à dos')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-dos', 'fr', 'sacs à dos');
            PERFORM insert_category_translations('sacs-dos', 'ar', 'حقائب ظهر');
            PERFORM insert_category_translations('sacs-dos', 'en', 'backpacks');
            PERFORM insert_category_translations('sacs-dos', 'de', 'Rucksäcke');
            PERFORM insert_category_translations('sacs-dos', 'es', 'mochilas');
            PERFORM insert_category_translations('sacs-dos', 'it', 'zaini');

            -- Level 2: accessoires-trekking
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-trekking', 'accessoires-trekking', 2, l1_id, 'accessoires de trekking')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('accessoires-trekking', 'fr', 'accessoires de trekking');
            PERFORM insert_category_translations('accessoires-trekking', 'ar', 'إكسسوارات التريك');
            PERFORM insert_category_translations('accessoires-trekking', 'en', 'trekking accessories');
            PERFORM insert_category_translations('accessoires-trekking', 'de', 'Trekking-Zubehör');
            PERFORM insert_category_translations('accessoires-trekking', 'es', 'accesorios de trekking');
            PERFORM insert_category_translations('accessoires-trekking', 'it', 'accessori trekking');

            -- Level 2: equipements-outdoor
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('equipements-outdoor', 'equipements-outdoor', 2, l1_id, 'équipements outdoor')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('equipements-outdoor', 'fr', 'équipements outdoor');
            PERFORM insert_category_translations('equipements-outdoor', 'ar', 'معدات خارجية');
            PERFORM insert_category_translations('equipements-outdoor', 'en', 'outdoor equipment');
            PERFORM insert_category_translations('equipements-outdoor', 'de', 'Outdoor-Ausrüstung');
            PERFORM insert_category_translations('equipements-outdoor', 'es', 'equipos outdoor');
            PERFORM insert_category_translations('equipements-outdoor', 'it', 'attrezzatura outdoor');

            -- Level 2: cartes-touristiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cartes-touristiques', 'cartes-touristiques', 2, l1_id, 'cartes touristiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cartes-touristiques', 'fr', 'cartes touristiques');
            PERFORM insert_category_translations('cartes-touristiques', 'ar', 'خرائط سياحية');
            PERFORM insert_category_translations('cartes-touristiques', 'en', 'tourist maps');
            PERFORM insert_category_translations('cartes-touristiques', 'de', 'Touristenkarten');
            PERFORM insert_category_translations('cartes-touristiques', 'es', 'mapas turísticos');
            PERFORM insert_category_translations('cartes-touristiques', 'it', 'mappe turistiche');

            -- Level 2: guides-papier
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('guides-papier', 'guides-papier', 2, l1_id, 'guides papier')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('guides-papier', 'fr', 'guides papier');
            PERFORM insert_category_translations('guides-papier', 'ar', 'أدلة ورقية');
            PERFORM insert_category_translations('guides-papier', 'en', 'paper guides');
            PERFORM insert_category_translations('guides-papier', 'de', 'Gedruckte Reiseführer');
            PERFORM insert_category_translations('guides-papier', 'es', 'guías impresas');
            PERFORM insert_category_translations('guides-papier', 'it', 'guide cartacee');

            -- Level 2: equipements-plage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('equipements-plage', 'equipements-plage', 2, l1_id, 'équipements de plage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('equipements-plage', 'fr', 'équipements de plage');
            PERFORM insert_category_translations('equipements-plage', 'ar', 'معدات الشاطئ');
            PERFORM insert_category_translations('equipements-plage', 'en', 'beach equipment');
            PERFORM insert_category_translations('equipements-plage', 'de', 'Strandausrüstung');
            PERFORM insert_category_translations('equipements-plage', 'es', 'equipos de playa');
            PERFORM insert_category_translations('equipements-plage', 'it', 'attrezzature da spiaggia');

            -- Level 2: accessoires-securite
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-securite', 'accessoires-securite', 2, l1_id, 'accessoires de sécurité')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('accessoires-securite', 'fr', 'accessoires de sécurité');
            PERFORM insert_category_translations('accessoires-securite', 'ar', 'إكسسوارات أمان');
            PERFORM insert_category_translations('accessoires-securite', 'en', 'safety accessories');
            PERFORM insert_category_translations('accessoires-securite', 'de', 'Sicherheitszubehör');
            PERFORM insert_category_translations('accessoires-securite', 'es', 'accesorios de seguridad');
            PERFORM insert_category_translations('accessoires-securite', 'it', 'accessori di sicurezza');

            -- Level 2: trousses-voyage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('trousses-voyage', 'trousses-voyage', 2, l1_id, 'trousses de voyage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('trousses-voyage', 'fr', 'trousses de voyage');
            PERFORM insert_category_translations('trousses-voyage', 'ar', 'حقائب السفر الصغيرة');
            PERFORM insert_category_translations('trousses-voyage', 'en', 'travel kits');
            PERFORM insert_category_translations('trousses-voyage', 'de', 'Reisesets');
            PERFORM insert_category_translations('trousses-voyage', 'es', 'neceseres de viaje');
            PERFORM insert_category_translations('trousses-voyage', 'it', 'kit da viaggio');

            -- Level 2: kits-medicaux-voyage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('kits-medicaux-voyage', 'kits-medicaux-voyage', 2, l1_id, 'kits médicaux de voyage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('kits-medicaux-voyage', 'fr', 'kits médicaux de voyage');
            PERFORM insert_category_translations('kits-medicaux-voyage', 'ar', 'مجموعات طبية للسفر');
            PERFORM insert_category_translations('kits-medicaux-voyage', 'en', 'medical travel kits');
            PERFORM insert_category_translations('kits-medicaux-voyage', 'de', 'Medizinische Reisesets');
            PERFORM insert_category_translations('kits-medicaux-voyage', 'es', 'kits médicos de viaje');
            PERFORM insert_category_translations('kits-medicaux-voyage', 'it', 'kit medici da viaggio');

            -- Level 2: materiels-camping
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('materiels-camping', 'materiels-camping', 2, l1_id, 'matériels de camping')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('materiels-camping', 'fr', 'matériels de camping');
            PERFORM insert_category_translations('materiels-camping', 'ar', 'معدات تخييم');
            PERFORM insert_category_translations('materiels-camping', 'en', 'camping gear');
            PERFORM insert_category_translations('materiels-camping', 'de', 'Campingausrüstung');
            PERFORM insert_category_translations('materiels-camping', 'es', 'equipos de camping');
            PERFORM insert_category_translations('materiels-camping', 'it', 'attrezzatura da campeggio');

            -- Level 2: lampes-frontales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lampes-frontales', 'lampes-frontales', 2, l1_id, 'lampes frontales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lampes-frontales', 'fr', 'lampes frontales');
            PERFORM insert_category_translations('lampes-frontales', 'ar', 'مصابيح رأس');
            PERFORM insert_category_translations('lampes-frontales', 'en', 'headlamps');
            PERFORM insert_category_translations('lampes-frontales', 'de', 'Stirnlampen');
            PERFORM insert_category_translations('lampes-frontales', 'es', 'linternas frontales');
            PERFORM insert_category_translations('lampes-frontales', 'it', 'lampade frontali');

            -- Level 2: gourdes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gourdes', 'gourdes', 2, l1_id, 'gourdes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gourdes', 'fr', 'gourdes');
            PERFORM insert_category_translations('gourdes', 'ar', 'قوارير ماء');
            PERFORM insert_category_translations('gourdes', 'en', 'water bottles');
            PERFORM insert_category_translations('gourdes', 'de', 'Trinkflaschen');
            PERFORM insert_category_translations('gourdes', 'es', 'cantimploras');
            PERFORM insert_category_translations('gourdes', 'it', 'borracce');

            -- Level 2: equipements-sahariens
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('equipements-sahariens', 'equipements-sahariens', 2, l1_id, 'équipements sahariens')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('equipements-sahariens', 'fr', 'équipements sahariens');
            PERFORM insert_category_translations('equipements-sahariens', 'ar', 'معدات صحراوية');
            PERFORM insert_category_translations('equipements-sahariens', 'en', 'Saharan equipment');
            PERFORM insert_category_translations('equipements-sahariens', 'de', 'Sahara-Ausrüstung');
            PERFORM insert_category_translations('equipements-sahariens', 'es', 'equipos saharianos');
            PERFORM insert_category_translations('equipements-sahariens', 'it', 'attrezzature sahariane');

        -- Level 1: gastronomie-decouvertes-touristiques
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gastronomie-decouvertes-touristiques', 'gastronomie-decouvertes-touristiques', 1, root_id, 'Gastronomie & Découvertes Touristiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('gastronomie-decouvertes-touristiques', 'fr', 'Gastronomie & Découvertes Touristiques');
        PERFORM insert_category_translations('gastronomie-decouvertes-touristiques', 'ar', 'فن الطبخ والاكتشافات السياحية');
        PERFORM insert_category_translations('gastronomie-decouvertes-touristiques', 'en', 'Gastronomy & Tourist Discoveries');
        PERFORM insert_category_translations('gastronomie-decouvertes-touristiques', 'de', 'Gastronomie & touristische Entdeckungen');
        PERFORM insert_category_translations('gastronomie-decouvertes-touristiques', 'es', 'Gastronomía y descubrimientos turísticos');
        PERFORM insert_category_translations('gastronomie-decouvertes-touristiques', 'it', 'Gastronomia e scoperte turistiche');

            -- Level 2: restaurants-locaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('restaurants-locaux', 'restaurants-locaux', 2, l1_id, 'restaurants locaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('restaurants-locaux', 'fr', 'restaurants locaux');
            PERFORM insert_category_translations('restaurants-locaux', 'ar', 'مطاعم محلية');
            PERFORM insert_category_translations('restaurants-locaux', 'en', 'local restaurants');
            PERFORM insert_category_translations('restaurants-locaux', 'de', 'Lokale Restaurants');
            PERFORM insert_category_translations('restaurants-locaux', 'es', 'restaurantes locales');
            PERFORM insert_category_translations('restaurants-locaux', 'it', 'ristoranti locali');

            -- Level 2: specialites-regionales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('specialites-regionales', 'specialites-regionales', 2, l1_id, 'spécialités régionales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('specialites-regionales', 'fr', 'spécialités régionales');
            PERFORM insert_category_translations('specialites-regionales', 'ar', 'أطباق إقليمية');
            PERFORM insert_category_translations('specialites-regionales', 'en', 'regional specialties');
            PERFORM insert_category_translations('specialites-regionales', 'de', 'Regionale Spezialitäten');
            PERFORM insert_category_translations('specialites-regionales', 'es', 'especialidades regionales');
            PERFORM insert_category_translations('specialites-regionales', 'it', 'specialità regionali');

            -- Level 2: degustations-traditionnelles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('degustations-traditionnelles', 'degustations-traditionnelles', 2, l1_id, 'dégustations traditionnelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('degustations-traditionnelles', 'fr', 'dégustations traditionnelles');
            PERFORM insert_category_translations('degustations-traditionnelles', 'ar', 'تذوق تقليدي');
            PERFORM insert_category_translations('degustations-traditionnelles', 'en', 'traditional tastings');
            PERFORM insert_category_translations('degustations-traditionnelles', 'de', 'Traditionelle Kostproben');
            PERFORM insert_category_translations('degustations-traditionnelles', 'es', 'degustaciones tradicionales');
            PERFORM insert_category_translations('degustations-traditionnelles', 'it', 'degustazioni tradizionali');

            -- Level 2: repas-typiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('repas-typiques', 'repas-typiques', 2, l1_id, 'repas typiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('repas-typiques', 'fr', 'repas typiques');
            PERFORM insert_category_translations('repas-typiques', 'ar', 'وجبات نموذجية');
            PERFORM insert_category_translations('repas-typiques', 'en', 'typical meals');
            PERFORM insert_category_translations('repas-typiques', 'de', 'Typische Mahlzeiten');
            PERFORM insert_category_translations('repas-typiques', 'es', 'comidas típicas');
            PERFORM insert_category_translations('repas-typiques', 'it', 'pasti tipici');

            -- Level 2: visites-fermes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('visites-fermes', 'visites-fermes', 2, l1_id, 'visites de fermes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('visites-fermes', 'fr', 'visites de fermes');
            PERFORM insert_category_translations('visites-fermes', 'ar', 'زيارات مزارع');
            PERFORM insert_category_translations('visites-fermes', 'en', 'farm visits');
            PERFORM insert_category_translations('visites-fermes', 'de', 'Hofbesuche');
            PERFORM insert_category_translations('visites-fermes', 'es', 'visitas a granjas');
            PERFORM insert_category_translations('visites-fermes', 'it', 'visite a fattorie');

            -- Level 2: visites-plantations
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('visites-plantations', 'visites-plantations', 2, l1_id, 'visites de plantations')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('visites-plantations', 'fr', 'visites de plantations');
            PERFORM insert_category_translations('visites-plantations', 'ar', 'زيارات مزارع إنتاج');
            PERFORM insert_category_translations('visites-plantations', 'en', 'plantation visits');
            PERFORM insert_category_translations('visites-plantations', 'de', 'Plantagenbesuche');
            PERFORM insert_category_translations('visites-plantations', 'es', 'visitas a plantaciones');
            PERFORM insert_category_translations('visites-plantations', 'it', 'visite a piantagioni');

            -- Level 2: routes-gastronomiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('routes-gastronomiques', 'routes-gastronomiques', 2, l1_id, 'routes gastronomiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('routes-gastronomiques', 'fr', 'routes gastronomiques');
            PERFORM insert_category_translations('routes-gastronomiques', 'ar', 'مسارات غذائية');
            PERFORM insert_category_translations('routes-gastronomiques', 'en', 'food routes');
            PERFORM insert_category_translations('routes-gastronomiques', 'de', 'Kulinarische Routen');
            PERFORM insert_category_translations('routes-gastronomiques', 'es', 'rutas gastronómicas');
            PERFORM insert_category_translations('routes-gastronomiques', 'it', 'percorsi gastronomici');

            -- Level 2: produits-terroir
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-terroir', 'produits-terroir', 2, l1_id, 'produits du terroir')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('produits-terroir', 'fr', 'produits du terroir');
            PERFORM insert_category_translations('produits-terroir', 'ar', 'منتجات محلية');
            PERFORM insert_category_translations('produits-terroir', 'en', 'local products');
            PERFORM insert_category_translations('produits-terroir', 'de', 'Regionale Produkte');
            PERFORM insert_category_translations('produits-terroir', 'es', 'productos locales');
            PERFORM insert_category_translations('produits-terroir', 'it', 'prodotti locali');

            -- Level 2: experiences-culinaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('experiences-culinaires', 'experiences-culinaires', 2, l1_id, 'expériences culinaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('experiences-culinaires', 'fr', 'expériences culinaires');
            PERFORM insert_category_translations('experiences-culinaires', 'ar', 'تجارب طبخ');
            PERFORM insert_category_translations('experiences-culinaires', 'en', 'culinary experiences');
            PERFORM insert_category_translations('experiences-culinaires', 'de', 'Kulinarische Erlebnisse');
            PERFORM insert_category_translations('experiences-culinaires', 'es', 'experiencias culinarias');
            PERFORM insert_category_translations('experiences-culinaires', 'it', 'esperienze culinarie');

            -- Level 2: participation-fetes-locales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('participation-fetes-locales', 'participation-fetes-locales', 2, l1_id, 'participation à des fêtes locales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('participation-fetes-locales', 'fr', 'participation à des fêtes locales');
            PERFORM insert_category_translations('participation-fetes-locales', 'ar', 'مشاركة في مهرجانات محلية');
            PERFORM insert_category_translations('participation-fetes-locales', 'en', 'participation in local festivals');
            PERFORM insert_category_translations('participation-fetes-locales', 'de', 'Teilnahme an lokalen Festen');
            PERFORM insert_category_translations('participation-fetes-locales', 'es', 'participación en fiestas locales');
            PERFORM insert_category_translations('participation-fetes-locales', 'it', 'partecipazione a feste locali');
END $$;