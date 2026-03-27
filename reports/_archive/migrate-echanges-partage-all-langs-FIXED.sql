-- =====================================================
-- MIGRATION DES CATEGORIES : ÉCHANGES & PARTAGE (FIXED)
-- =====================================================
-- Structure basée sur les fichiers TypeScript (Source de vérité)
-- Correction des slugs dupliqués et structure complète 6 langues
-- =====================================================

DO $$
DECLARE
    root_id BIGINT;
    -- Level 1 IDs
    troc_id BIGINT;
    don_id BIGINT;
    pret_id BIGINT;
    competences_id BIGINT;
    carpooling_id BIGINT;
    habitat_id BIGINT;
    services_id BIGINT;
    communaute_id BIGINT;
    culturel_id BIGINT;
    recuperation_id BIGINT;
BEGIN
    -- 1. Insert Root Category: Échanges & Partage
    INSERT INTO categories (slug, level, is_active)
    VALUES ('echanges-partage', 0, true)
    ON CONFLICT (slug) DO UPDATE SET level = 0, is_active = true
    RETURNING id INTO root_id;

    -- Translations for Root
    INSERT INTO category_translations (category_id, language_code, name)
    VALUES
        (root_id, 'fr', 'Échanges & Partage'),
        (root_id, 'en', 'Exchanges & Sharing'),
        (root_id, 'ar', 'التبادل والمشاركة'),
        (root_id, 'de', 'Tausch & Teilen'),
        (root_id, 'es', 'Intercambios & Compartir'),
        (root_id, 'it', 'Scambi & Condivisione')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

    -- =====================================================
    -- LEVEL 1: Troc d’Objets
    -- =====================================================
    INSERT INTO categories (slug, level, parent_id, is_active)
    VALUES ('troc-objets', 1, root_id, true)
    ON CONFLICT (slug) DO UPDATE SET level = 1, parent_id = root_id, is_active = true
    RETURNING id INTO troc_id;

    INSERT INTO category_translations (category_id, language_code, name)
    VALUES
        (troc_id, 'fr', 'Troc d’Objets'),
        (troc_id, 'en', 'Barter of Objects'),
        (troc_id, 'ar', 'تبادل الأشياء'),
        (troc_id, 'de', 'Gegenstände tauschen'),
        (troc_id, 'es', 'Trueque de Objetos'),
        (troc_id, 'it', 'Baratto di Oggetti')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

    -- Level 2 for Troc d’Objets
    PERFORM insert_category_with_translations(troc_id, 'echange-vetements', 
        '{"fr": "échange vêtements", "en": "clothing exchange", "ar": "تبادل الملابس", "de": "Kleidung tauschen", "es": "intercambio de ropa", "it": "scambio vestiti"}'::jsonb);
    PERFORM insert_category_with_translations(troc_id, 'troc-electromenager', 
        '{"fr": "troc électroménager", "en": "appliances barter", "ar": "مقايضة الأجهزة", "de": "Haushaltsgeräte tauschen", "es": "trueque de electrodomésticos", "it": "baratto elettrodomestici"}'::jsonb);
    PERFORM insert_category_with_translations(troc_id, 'echange-telephones', 
        '{"fr": "échange téléphones", "en": "phones exchange", "ar": "تبادل الهواتف", "de": "Telefone tauschen", "es": "intercambio de teléfonos", "it": "scambio telefoni"}'::jsonb);
    PERFORM insert_category_with_translations(troc_id, 'troc-meubles', 
        '{"fr": "troc meubles", "en": "furniture barter", "ar": "مقايضة الأثاث", "de": "Möbel tauschen", "es": "trueque de muebles", "it": "baratto mobili"}'::jsonb);
    -- Note: 'echange-livres' slug used here (first occurrence)
    PERFORM insert_category_with_translations(troc_id, 'echange-livres', 
        '{"fr": "échange livres", "en": "books exchange", "ar": "تبادل الكتب", "de": "Bücher tauschen", "es": "intercambio de libros", "it": "scambio libri"}'::jsonb);
    PERFORM insert_category_with_translations(troc_id, 'troc-jouets', 
        '{"fr": "troc jouets", "en": "toys barter", "ar": "مقايضة الألعاب", "de": "Spielzeug tauschen", "es": "trueque de juguetes", "it": "baratto giocattoli"}'::jsonb);
    PERFORM insert_category_with_translations(troc_id, 'echange-outils', 
        '{"fr": "échange outils", "en": "tools exchange", "ar": "تبادل الأدوات", "de": "Werkzeuge tauschen", "es": "intercambio de herramientas", "it": "scambio attrezzi"}'::jsonb);

    -- =====================================================
    -- LEVEL 1: Don & Gratuit
    -- =====================================================
    INSERT INTO categories (slug, level, parent_id, is_active)
    VALUES ('don-gratuit', 1, root_id, true)
    ON CONFLICT (slug) DO UPDATE SET level = 1, parent_id = root_id, is_active = true
    RETURNING id INTO don_id;

    INSERT INTO category_translations (category_id, language_code, name)
    VALUES
        (don_id, 'fr', 'Don & Gratuit'),
        (don_id, 'en', 'Donation & Free'),
        (don_id, 'ar', 'هبات ومجاني'),
        (don_id, 'de', 'Spenden & Kostenlos'),
        (don_id, 'es', 'Donación & Gratis'),
        (don_id, 'it', 'Donazione & Gratis')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

    -- Level 2 for Don & Gratuit
    PERFORM insert_category_with_translations(don_id, 'objets-gratuits', 
        '{"fr": "objets gratuits", "en": "free items", "ar": "أشياء مجانية", "de": "Kostenlose Gegenstände", "es": "objetos gratis", "it": "oggetti gratuiti"}'::jsonb);
    PERFORM insert_category_with_translations(don_id, 'vetements-gratuits', 
        '{"fr": "vêtements gratuits", "en": "free clothing", "ar": "ملابس مجانية", "de": "Kostenlose Kleidung", "es": "ropa gratis", "it": "vestiti gratuiti"}'::jsonb);
    PERFORM insert_category_with_translations(don_id, 'dons-meubles', 
        '{"fr": "dons meubles", "en": "furniture donations", "ar": "هبات الأثاث", "de": "Möbelspenden", "es": "donación de muebles", "it": "donazione mobili"}'::jsonb);
    PERFORM insert_category_with_translations(don_id, 'dons-electro', 
        '{"fr": "dons électro", "en": "appliance donations", "ar": "هبات الأجهزة", "de": "Gerätespenden", "es": "donación de electrodomésticos", "it": "donazione elettrodomestici"}'::jsonb);
    PERFORM insert_category_with_translations(don_id, 'dons-jouets', 
        '{"fr": "dons jouets", "en": "toy donations", "ar": "هبات الألعاب", "de": "Spielzeugspenden", "es": "donación de juguetes", "it": "donazione giocattoli"}'::jsonb);
    PERFORM insert_category_with_translations(don_id, 'dons-divers', 
        '{"fr": "dons divers", "en": "misc donations", "ar": "هبات متنوعة", "de": "Verschiedene Spenden", "es": "donaciones varias", "it": "donazioni varie"}'::jsonb);

    -- =====================================================
    -- LEVEL 1: Prêt d’Objets
    -- =====================================================
    INSERT INTO categories (slug, level, parent_id, is_active)
    VALUES ('pret-objets', 1, root_id, true)
    ON CONFLICT (slug) DO UPDATE SET level = 1, parent_id = root_id, is_active = true
    RETURNING id INTO pret_id;

    INSERT INTO category_translations (category_id, language_code, name)
    VALUES
        (pret_id, 'fr', 'Prêt d’Objets'),
        (pret_id, 'en', 'Object Lending'),
        (pret_id, 'ar', 'إعارة الأشياء'),
        (pret_id, 'de', 'Gegenstände verleihen'),
        (pret_id, 'es', 'Préstamo de Objetos'),
        (pret_id, 'it', 'Prestito di Oggetti')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

    -- Level 2 for Prêt d’Objets
    PERFORM insert_category_with_translations(pret_id, 'pret-outils', 
        '{"fr": "prêt outils", "en": "tools lending", "ar": "إعارة الأدوات", "de": "Werkzeuge verleihen", "es": "préstamo de herramientas", "it": "prestito attrezzi"}'::jsonb);
    PERFORM insert_category_with_translations(pret_id, 'pret-appareils', 
        '{"fr": "prêt appareils", "en": "devices lending", "ar": "إعارة الأجهزة", "de": "Geräte verleihen", "es": "préstamo de aparatos", "it": "prestito dispositivi"}'::jsonb);
    PERFORM insert_category_with_translations(pret_id, 'pret-velos', 
        '{"fr": "prêt vélos", "en": "bike lending", "ar": "إعارة الدراجات", "de": "Fahrräder verleihen", "es": "préstamo de bicicletas", "it": "prestito biciclette"}'::jsonb);
    PERFORM insert_category_with_translations(pret_id, 'pret-materiel-pro', 
        '{"fr": "prêt matériel pro", "en": "pro equipment lending", "ar": "إعارة معدات مهنية", "de": "Profi-Ausrüstung verleihen", "es": "préstamo de equipo profesional", "it": "prestito attrezzature pro"}'::jsonb);
    PERFORM insert_category_with_translations(pret_id, 'pret-equipements-maison', 
        '{"fr": "prêt équipements maison", "en": "home equipment lending", "ar": "إعارة تجهيزات المنزل", "de": "Haushaltsausstattung verleihen", "es": "préstamo de equipos del hogar", "it": "prestito attrezzature casa"}'::jsonb);

    -- =====================================================
    -- LEVEL 1: Partage de Compétences
    -- =====================================================
    INSERT INTO categories (slug, level, parent_id, is_active)
    VALUES ('partage-competences', 1, root_id, true)
    ON CONFLICT (slug) DO UPDATE SET level = 1, parent_id = root_id, is_active = true
    RETURNING id INTO competences_id;

    INSERT INTO category_translations (category_id, language_code, name)
    VALUES
        (competences_id, 'fr', 'Partage de Compétences'),
        (competences_id, 'en', 'Skills Sharing'),
        (competences_id, 'ar', 'مشاركة المهارات'),
        (competences_id, 'de', 'Kompetenzen teilen'),
        (competences_id, 'es', 'Compartir Competencias'),
        (competences_id, 'it', 'Condivisione Competenze')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

    -- Level 2 for Partage de Compétences
    PERFORM insert_category_with_translations(competences_id, 'cours-gratuits', 
        '{"fr": "cours gratuits", "en": "free courses", "ar": "دروس مجانية", "de": "Kostenlose Kurse", "es": "cursos gratuitos", "it": "corsi gratuiti"}'::jsonb);
    PERFORM insert_category_with_translations(competences_id, 'echanges-competences', 
        '{"fr": "échanges compétences", "en": "skills exchange", "ar": "تبادل المهارات", "de": "Kompetenzen austauschen", "es": "intercambio de competencias", "it": "scambio competenze"}'::jsonb);
    PERFORM insert_category_with_translations(competences_id, 'ateliers-partages', 
        '{"fr": "ateliers partagés", "en": "shared workshops", "ar": "ورشات مشتركة", "de": "Gemeinsame Workshops", "es": "talleres compartidos", "it": "laboratori condivisi"}'::jsonb);
    PERFORM insert_category_with_translations(competences_id, 'bricolage-entraide', 
        '{"fr": "bricolage entraide", "en": "DIY mutual help", "ar": "أعمال يدوية بالتعاون", "de": "Heimwerken & Hilfe", "es": "bricolaje solidario", "it": "fai-da-te solidale"}'::jsonb);
    PERFORM insert_category_with_translations(competences_id, 'soutien-scolaire', 
        '{"fr": "soutien scolaire", "en": "tutoring", "ar": "دعم مدرسي", "de": "Nachhilfe", "es": "apoyo escolar", "it": "sostegno scolastico"}'::jsonb);

    -- =====================================================
    -- LEVEL 1: Carpooling & Déplacements
    -- =====================================================
    INSERT INTO categories (slug, level, parent_id, is_active)
    VALUES ('carpooling-deplacements', 1, root_id, true)
    ON CONFLICT (slug) DO UPDATE SET level = 1, parent_id = root_id, is_active = true
    RETURNING id INTO carpooling_id;

    INSERT INTO category_translations (category_id, language_code, name)
    VALUES
        (carpooling_id, 'fr', 'Carpooling & Déplacements'),
        (carpooling_id, 'en', 'Carpooling & Travel'),
        (carpooling_id, 'ar', 'مشاركة الركوب والتنقل'),
        (carpooling_id, 'de', 'Fahrgemeinschaft & Wege'),
        (carpooling_id, 'es', 'Carpooling & Desplazamientos'),
        (carpooling_id, 'it', 'Carpooling & Spostamenti')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

    -- Level 2 for Carpooling & Déplacements
    PERFORM insert_category_with_translations(carpooling_id, 'covoiturage-local', 
        '{"fr": "covoiturage local", "en": "local carpool", "ar": "مشاركة السيارة محليًا", "de": "Lokales Carpooling", "es": "coche compartido local", "it": "carpool locale"}'::jsonb);
    PERFORM insert_category_with_translations(carpooling_id, 'partage-trajet', 
        '{"fr": "partage trajet", "en": "trip sharing", "ar": "مشاركة الرحلات", "de": "Fahrt teilen", "es": "compartir trayecto", "it": "condivisione tragitto"}'::jsonb);
    PERFORM insert_category_with_translations(carpooling_id, 'transport-solidaire', 
        '{"fr": "transport solidaire", "en": "solidarity transport", "ar": "نقل تضامني", "de": "Solidarischer Transport", "es": "transporte solidario", "it": "trasporto solidale"}'::jsonb);
    PERFORM insert_category_with_translations(carpooling_id, 'livraison-solidaire', 
        '{"fr": "livraison solidaire", "en": "solidarity delivery", "ar": "توصيل تضامني", "de": "Solidarische Lieferung", "es": "entrega solidaria", "it": "consegna solidale"}'::jsonb);

    -- =====================================================
    -- LEVEL 1: Partage Habitat
    -- =====================================================
    INSERT INTO categories (slug, level, parent_id, is_active)
    VALUES ('partage-habitat', 1, root_id, true)
    ON CONFLICT (slug) DO UPDATE SET level = 1, parent_id = root_id, is_active = true
    RETURNING id INTO habitat_id;

    INSERT INTO category_translations (category_id, language_code, name)
    VALUES
        (habitat_id, 'fr', 'Partage Habitat'),
        (habitat_id, 'en', 'Housing Sharing'),
        (habitat_id, 'ar', 'مشاركة السكن'),
        (habitat_id, 'de', 'Wohnraum teilen'),
        (habitat_id, 'es', 'Compartir Vivienda'),
        (habitat_id, 'it', 'Condivisione Abitazione')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

    -- Level 2 for Partage Habitat
    PERFORM insert_category_with_translations(habitat_id, 'cohabitation-solidaire', 
        '{"fr": "cohabitation solidaire", "en": "solidarity cohabitation", "ar": "تعايش تضامني", "de": "Solidarisches Zusammenwohnen", "es": "cohabitación solidaria", "it": "convivenza solidale"}'::jsonb);
    PERFORM insert_category_with_translations(habitat_id, 'colocation-echange', 
        '{"fr": "colocation échange", "en": "exchange-based colocation", "ar": "سكن مشترك بالمقايضة", "de": "Tausch-Wohngemeinschaft", "es": "compartir piso por intercambio", "it": "colocazione per scambio"}'::jsonb);
    PERFORM insert_category_with_translations(habitat_id, 'accueil-temporaire', 
        '{"fr": "accueil temporaire", "en": "temporary hosting", "ar": "استضافة مؤقتة", "de": "Vorübergehende Aufnahme", "es": "acogida temporal", "it": "accoglienza temporanea"}'::jsonb);
    PERFORM insert_category_with_translations(habitat_id, 'echange-maison', 
        '{"fr": "échange maison", "en": "home exchange", "ar": "تبادل المنازل", "de": "Haus-Tausch", "es": "intercambio de viviendas", "it": "scambio casa"}'::jsonb);

    -- =====================================================
    -- LEVEL 1: Échange de Services
    -- =====================================================
    INSERT INTO categories (slug, level, parent_id, is_active)
    VALUES ('echange-services', 1, root_id, true)
    ON CONFLICT (slug) DO UPDATE SET level = 1, parent_id = root_id, is_active = true
    RETURNING id INTO services_id;

    INSERT INTO category_translations (category_id, language_code, name)
    VALUES
        (services_id, 'fr', 'Échange de Services'),
        (services_id, 'en', 'Service Exchange'),
        (services_id, 'ar', 'تبادل الخدمات'),
        (services_id, 'de', 'Dienstleistungstausch'),
        (services_id, 'es', 'Intercambio de Servicios'),
        (services_id, 'it', 'Scambio di Servizi')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

    -- Level 2 for Échange de Services
    PERFORM insert_category_with_translations(services_id, 'service-contre-service', 
        '{"fr": "service contre service", "en": "service for service", "ar": "خدمة مقابل خدمة", "de": "Dienstleistung gegen Dienstleistung", "es": "servicio por servicio", "it": "servizio per servizio"}'::jsonb);
    PERFORM insert_category_with_translations(services_id, 'aide-mutuelle', 
        '{"fr": "aide mutuelle", "en": "mutual help", "ar": "مساعدة متبادلة", "de": "Gegenseitige Hilfe", "es": "ayuda mutua", "it": "aiuto reciproco"}'::jsonb);
    PERFORM insert_category_with_translations(services_id, 'reparation-echange', 
        '{"fr": "réparation échange", "en": "repair exchange", "ar": "إصلاح بالمقايضة", "de": "Reparaturtausch", "es": "reparación por intercambio", "it": "riparazione in scambio"}'::jsonb);
    PERFORM insert_category_with_translations(services_id, 'menage-contre-aide', 
        '{"fr": "ménage contre aide", "en": "housework for help", "ar": "تنظيف مقابل مساعدة", "de": "Haushalt gegen Hilfe", "es": "limpieza por ayuda", "it": "pulizie per aiuto"}'::jsonb);

    -- =====================================================
    -- LEVEL 1: Communauté & Entraide
    -- =====================================================
    INSERT INTO categories (slug, level, parent_id, is_active)
    VALUES ('communaute-entraide', 1, root_id, true)
    ON CONFLICT (slug) DO UPDATE SET level = 1, parent_id = root_id, is_active = true
    RETURNING id INTO communaute_id;

    INSERT INTO category_translations (category_id, language_code, name)
    VALUES
        (communaute_id, 'fr', 'Communauté & Entraide'),
        (communaute_id, 'en', 'Community & Mutual Aid'),
        (communaute_id, 'ar', 'مجتمع وتعاون'),
        (communaute_id, 'de', 'Gemeinschaft & Hilfe'),
        (communaute_id, 'es', 'Comunidad & Ayuda'),
        (communaute_id, 'it', 'Comunità & Aiuto')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

    -- Level 2 for Communauté & Entraide
    PERFORM insert_category_with_translations(communaute_id, 'entraide-quartier', 
        '{"fr": "entraide quartier", "en": "neighborhood help", "ar": "تعاون الحي", "de": "Nachbarschaftshilfe", "es": "ayuda del barrio", "it": "aiuto di quartiere"}'::jsonb);
    PERFORM insert_category_with_translations(communaute_id, 'recuperation-objets', 
        '{"fr": "récupération objets", "en": "objects recovery", "ar": "استعادة الأشياء", "de": "Gegenstände wiederverwenden", "es": "recuperación de objetos", "it": "recupero oggetti"}'::jsonb);
    PERFORM insert_category_with_translations(communaute_id, 'partage-alimentaire', 
        '{"fr": "partage alimentaire", "en": "food sharing", "ar": "مشاركة الطعام", "de": "Lebensmittel teilen", "es": "compartir alimentos", "it": "condivisione alimentare"}'::jsonb);
    PERFORM insert_category_with_translations(communaute_id, 'solidarite-locale', 
        '{"fr": "solidarité locale", "en": "local solidarity", "ar": "تضامن محلي", "de": "Lokale Solidarität", "es": "solidaridad local", "it": "solidarietà locale"}'::jsonb);

    -- =====================================================
    -- LEVEL 1: Échange Culturel
    -- =====================================================
    INSERT INTO categories (slug, level, parent_id, is_active)
    VALUES ('echange-culturel', 1, root_id, true)
    ON CONFLICT (slug) DO UPDATE SET level = 1, parent_id = root_id, is_active = true
    RETURNING id INTO culturel_id;

    INSERT INTO category_translations (category_id, language_code, name)
    VALUES
        (culturel_id, 'fr', 'Échange Culturel'),
        (culturel_id, 'en', 'Cultural Exchange'),
        (culturel_id, 'ar', 'تبادل ثقافي'),
        (culturel_id, 'de', 'Kulturaustausch'),
        (culturel_id, 'es', 'Intercambio Cultural'),
        (culturel_id, 'it', 'Scambio Culturale')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

    -- Level 2 for Échange Culturel
    -- NOTE: 'echange-livres' is duplicated in TS, so we use 'echange-livres-culture' for the second one to avoid slug conflict.
    PERFORM insert_category_with_translations(culturel_id, 'echange-livres-culture', 
        '{"fr": "échange livres", "en": "books exchange", "ar": "تبادل الكتب", "de": "Bücher tauschen", "es": "intercambio de libros", "it": "scambio libri"}'::jsonb);
    PERFORM insert_category_with_translations(culturel_id, 'partage-musique', 
        '{"fr": "partage musique", "en": "music sharing", "ar": "مشاركة الموسيقى", "de": "Musik teilen", "es": "compartir música", "it": "condivisione musica"}'::jsonb);
    PERFORM insert_category_with_translations(culturel_id, 'partage-jeux', 
        '{"fr": "partage jeux", "en": "games sharing", "ar": "مشاركة الألعاب", "de": "Spiele teilen", "es": "compartir juegos", "it": "condivisione giochi"}'::jsonb);
    PERFORM insert_category_with_translations(culturel_id, 'activites-communes', 
        '{"fr": "activités communes", "en": "shared activities", "ar": "أنشطة مشتركة", "de": "Gemeinsame Aktivitäten", "es": "actividades comunes", "it": "attività comuni"}'::jsonb);
    PERFORM insert_category_with_translations(culturel_id, 'sorties-partagees', 
        '{"fr": "sorties partagées", "en": "shared outings", "ar": "خرجات مشتركة", "de": "Gemeinsame Ausflüge", "es": "salidas compartidas", "it": "uscite condivise"}'::jsonb);

    -- =====================================================
    -- LEVEL 1: Récupération & Réemploi
    -- =====================================================
    INSERT INTO categories (slug, level, parent_id, is_active)
    VALUES ('recuperation-reemploi', 1, root_id, true)
    ON CONFLICT (slug) DO UPDATE SET level = 1, parent_id = root_id, is_active = true
    RETURNING id INTO recuperation_id;

    INSERT INTO category_translations (category_id, language_code, name)
    VALUES
        (recuperation_id, 'fr', 'Récupération & Réemploi'),
        (recuperation_id, 'en', 'Recovery & Reuse'),
        (recuperation_id, 'ar', 'استعادة وإعادة الاستخدام'),
        (recuperation_id, 'de', 'Wiedergewinnung & Wiederverwendung'),
        (recuperation_id, 'es', 'Recuperación & Reutilización'),
        (recuperation_id, 'it', 'Recupero & Riutilizzo')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

    -- Level 2 for Récupération & Réemploi
    PERFORM insert_category_with_translations(recuperation_id, 'recyclage-objets', 
        '{"fr": "recyclage objets", "en": "objects recycling", "ar": "إعادة تدوير الأشياء", "de": "Gegenstände recyceln", "es": "reciclaje de objetos", "it": "riciclo oggetti"}'::jsonb);
    PERFORM insert_category_with_translations(recuperation_id, 'recuperation-materiaux', 
        '{"fr": "récup matériaux", "en": "materials recovery", "ar": "استعادة المواد", "de": "Materialien wiedergewinnen", "es": "recuperación de materiales", "it": "recupero materiali"}'::jsonb);
    PERFORM insert_category_with_translations(recuperation_id, 'recuperation-meubles', 
        '{"fr": "récup meubles", "en": "furniture recovery", "ar": "استعادة الأثاث", "de": "Möbel wiedergewinnen", "es": "recuperación de muebles", "it": "recupero mobili"}'::jsonb);
    PERFORM insert_category_with_translations(recuperation_id, 'upcycling-creatif', 
        '{"fr": "upcycling créatif", "en": "creative upcycling", "ar": "تدوير إبداعي", "de": "Kreatives Upcycling", "es": "upcycling creativo", "it": "upcycling creativo"}'::jsonb);

END $$;
