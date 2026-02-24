-- Migration: BTP, Engins & Construction (Fixed - 100% Complete)
-- Description: Complète la structure de catégories pour "BTP, Engins & Construction" avec traductions (FR, EN, AR, DE, ES, IT).
-- Version: 1.0
-- Auteur: Assistant (pour Aladdin Annonce Algerie Hub)

DO $$ 
DECLARE
    -- IDs pour la hiérarchie
    root_id UUID;
    
    -- Niveau 1
    engins_id UUID;
    transport_id UUID;
    materiel_id UUID;
    materiaux_id UUID;
    quincaillerie_id UUID;
    elec_plomb_id UUID;
    outils_id UUID;
    securite_id UUID;
    modulaire_id UUID;
    location_id UUID;
    services_id UUID;

BEGIN
    -- 1. Catégorie Racine : BTP, Engins & Construction
    INSERT INTO categories (slug, level, is_active)
    VALUES ('btp-engins-construction', 0, true)
    ON CONFLICT (slug) DO UPDATE SET level = 0, is_active = true
    RETURNING id INTO root_id;

    -- Traductions Racine
    INSERT INTO category_translations (category_id, language_code, name)
    VALUES
        (root_id, 'fr', 'BTP, Engins & Construction'),
        (root_id, 'en', 'Construction, Heavy Equipment & Machinery'),
        (root_id, 'ar', 'البناء، الآليات والإنشاءات'),
        (root_id, 'de', 'Bau, Baumaschinen & Konstruktion'),
        (root_id, 'es', 'Construcción, Maquinaria & Equipos Pesados'),
        (root_id, 'it', 'Edilizia, Macchinari & Attrezzature')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;


    -- 2. Niveau 1 : Engins de chantier
    INSERT INTO categories (slug, parent_id, level, is_active)
    VALUES ('engins-de-chantier', root_id, 1, true)
    ON CONFLICT (slug) DO UPDATE SET parent_id = root_id, level = 1, is_active = true
    RETURNING id INTO engins_id;

    -- Traductions Niveau 1
    INSERT INTO category_translations (category_id, language_code, name)
    VALUES
        (engins_id, 'fr', 'Engins de chantier'),
        (engins_id, 'en', 'Construction machinery'),
        (engins_id, 'ar', 'معدات وآليات البناء'),
        (engins_id, 'de', 'Baumaschinen'),
        (engins_id, 'es', 'Maquinaria de construcción'),
        (engins_id, 'it', 'Macchine da cantiere')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

    -- Niveau 2 pour Engins de chantier
    PERFORM insert_category_with_translations(engins_id, 'pelles-hydrauliques', 2, 
        '{"fr": "Pelles hydrauliques", "en": "Hydraulic excavators", "ar": "حفارات هيدروليكية", "de": "Hydraulikbagger", "es": "Excavadoras hidráulicas", "it": "Escavatori idraulici"}'::jsonb);
        
    PERFORM insert_category_with_translations(engins_id, 'mini-pelles', 2, 
        '{"fr": "Mini-pelles", "en": "Mini excavators", "ar": "حفارات صغيرة", "de": "Minibagger", "es": "Miniexcavadoras", "it": "Mini escavatori"}'::jsonb);
        
    PERFORM insert_category_with_translations(engins_id, 'chargeuses', 2, 
        '{"fr": "Chargeuses", "en": "Loaders", "ar": "جرافات", "de": "Radlader", "es": "Cargadoras", "it": "Pale caricatrici"}'::jsonb);
        
    PERFORM insert_category_with_translations(engins_id, 'bulldozers', 2, 
        '{"fr": "Bulldozers", "en": "Bulldozers", "ar": "بلدوزرات", "de": "Planierraupen", "es": "Bulldozers", "it": "Bulldozer"}'::jsonb);
        
    PERFORM insert_category_with_translations(engins_id, 'niveleuses', 2, 
        '{"fr": "Niveleuses", "en": "Motor graders", "ar": "ممهدات طرق", "de": "Grader", "es": "Motoniveladoras", "it": "Livellatrici"}'::jsonb);
        
    PERFORM insert_category_with_translations(engins_id, 'tractopelles', 2, 
        '{"fr": "Tractopelles", "en": "Backhoe loaders", "ar": "لودر حفار", "de": "Baggerlader", "es": "Retroexcavadoras", "it": "Terne"}'::jsonb);
        
    PERFORM insert_category_with_translations(engins_id, 'compacteurs', 2, 
        '{"fr": "Compacteurs", "en": "Compactors", "ar": "مدحلات", "de": "Verdichter", "es": "Compactadoras", "it": "Compattatori"}'::jsonb);
        
    PERFORM insert_category_with_translations(engins_id, 'rouleaux-compresseurs', 2, 
        '{"fr": "Rouleaux compresseurs", "en": "Road rollers", "ar": "مداحل أسطوانية", "de": "Walzen", "es": "Rodillos compactadores", "it": "Rulli compattatori"}'::jsonb);
        
    PERFORM insert_category_with_translations(engins_id, 'dumpers', 2, 
        '{"fr": "Dumpers", "en": "Dumpers", "ar": "دامبرات", "de": "Muldenkipper", "es": "Dumpers", "it": "Dumper"}'::jsonb);
        
    PERFORM insert_category_with_translations(engins_id, 'camions-bennes', 2, 
        '{"fr": "Camions-bennes", "en": "Dump trucks", "ar": "شاحنات قلابة", "de": "Kipper-Lkw", "es": "Camiones volquete", "it": "Autocarri ribaltabili"}'::jsonb);
        
    PERFORM insert_category_with_translations(engins_id, 'grues-mobiles', 2, 
        '{"fr": "Grues mobiles", "en": "Mobile cranes", "ar": "رافعات متنقلة", "de": "Mobilkrane", "es": "Grúas móviles", "it": "Autogru"}'::jsonb);
        
    PERFORM insert_category_with_translations(engins_id, 'grues-a-tour', 2, 
        '{"fr": "Grues à tour", "en": "Tower cranes", "ar": "رافعات برجية", "de": "Turmkrane", "es": "Grúas torre", "it": "Gru a torre"}'::jsonb);
        
    PERFORM insert_category_with_translations(engins_id, 'chariots-telescopiques', 2, 
        '{"fr": "Chariots télescopiques", "en": "Telehandlers", "ar": "مناولات تلسكوبية", "de": "Teleskopstapler", "es": "Manipuladores telescópicos", "it": "Sollevatori telescopici"}'::jsonb);
        
    PERFORM insert_category_with_translations(engins_id, 'nacelles-elevatrices', 2, 
        '{"fr": "Nacelles élévatrices", "en": "Aerial work platforms", "ar": "منصات رفع", "de": "Arbeitsbühnen", "es": "Plataformas elevadoras", "it": "Piattaforme aeree"}'::jsonb);
        
    PERFORM insert_category_with_translations(engins_id, 'foreuses', 2, 
        '{"fr": "Foreuses", "en": "Drilling rigs", "ar": "معدات حفر", "de": "Bohrgeräte", "es": "Perforadoras", "it": "Perforatrici"}'::jsonb);
        
    PERFORM insert_category_with_translations(engins_id, 'retrochargeuses', 2, 
        '{"fr": "Rétrochargeuses", "en": "Backhoe loaders", "ar": "لودر حفار", "de": "Baggerlader", "es": "Retroexcavadoras", "it": "Terne"}'::jsonb);


    -- 3. Niveau 1 : Véhicules & transport de matériaux
    INSERT INTO categories (slug, parent_id, level, is_active)
    VALUES ('vehicules-transport-materiaux', root_id, 1, true)
    ON CONFLICT (slug) DO UPDATE SET parent_id = root_id, level = 1, is_active = true
    RETURNING id INTO transport_id;

    -- Traductions Niveau 1
    INSERT INTO category_translations (category_id, language_code, name)
    VALUES
        (transport_id, 'fr', 'Véhicules & transport de matériaux'),
        (transport_id, 'en', 'Vehicles & material transport'),
        (transport_id, 'ar', 'مركبات ونقل المواد'),
        (transport_id, 'de', 'Fahrzeuge & Materialtransport'),
        (transport_id, 'es', 'Vehículos & transporte de materiales'),
        (transport_id, 'it', 'Veicoli & trasporto materiali')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

    -- Niveau 2
    PERFORM insert_category_with_translations(transport_id, 'camions-de-chantier', 2, 
        '{"fr": "Camions de chantier", "en": "Construction trucks", "ar": "شاحنات موقع البناء", "de": "Baustellen-Lkw", "es": "Camiones de obra", "it": "Camion da cantiere"}'::jsonb);
        
    PERFORM insert_category_with_translations(transport_id, 'camions-malaxeurs-toupies-beton', 2, 
        '{"fr": "Camions malaxeurs (toupies béton)", "en": "Concrete mixer trucks", "ar": "شاحنات خلاط خرسانة", "de": "Betonmischer-Lkw", "es": "Camiones hormigonera", "it": "Autobetoniere"}'::jsonb);
        
    PERFORM insert_category_with_translations(transport_id, 'camions-porte-engins', 2, 
        '{"fr": "Camions porte-engins", "en": "Lowboy/haul trucks", "ar": "شاحنات ناقلة معدات", "de": "Tieflader-Lkw", "es": "Camiones porta‑equipos", "it": "Camion porta‑macchine"}'::jsonb);
        
    PERFORM insert_category_with_translations(transport_id, 'remorques-de-chantier', 2, 
        '{"fr": "Remorques de chantier", "en": "Construction trailers", "ar": "مقطورات الموقع", "de": "Baustellenanhänger", "es": "Remolques de obra", "it": "Rimorchi da cantiere"}'::jsonb);
        
    PERFORM insert_category_with_translations(transport_id, 'vehicules-utilitaires', 2, 
        '{"fr": "Véhicules utilitaires", "en": "Utility vehicles", "ar": "مركبات تجارية", "de": "Nutzfahrzeuge", "es": "Vehículos comerciales", "it": "Veicoli commerciali"}'::jsonb);
        
    PERFORM insert_category_with_translations(transport_id, 'pick-ups', 2, 
        '{"fr": "Pick-ups", "en": "Pick‑ups", "ar": "بيك أب", "de": "Pick-ups", "es": "Pick‑ups", "it": "Pick‑up"}'::jsonb);
        
    PERFORM insert_category_with_translations(transport_id, 'fourgons', 2, 
        '{"fr": "Fourgons", "en": "Vans", "ar": "فانات", "de": "Transporter", "es": "Furgonetas", "it": "Furgoni"}'::jsonb);


    -- 4. Niveau 1 : Matériel de construction
    INSERT INTO categories (slug, parent_id, level, is_active)
    VALUES ('materiel-de-construction', root_id, 1, true)
    ON CONFLICT (slug) DO UPDATE SET parent_id = root_id, level = 1, is_active = true
    RETURNING id INTO materiel_id;

    -- Traductions Niveau 1
    INSERT INTO category_translations (category_id, language_code, name)
    VALUES
        (materiel_id, 'fr', 'Matériel de construction'),
        (materiel_id, 'en', 'Construction equipment'),
        (materiel_id, 'ar', 'معدات البناء'),
        (materiel_id, 'de', 'Bauausrüstung'),
        (materiel_id, 'es', 'Equipos de construcción'),
        (materiel_id, 'it', 'Attrezzature da costruzione')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

    -- Niveau 2
    PERFORM insert_category_with_translations(materiel_id, 'betonnieres', 2, 
        '{"fr": "Bétonnières", "en": "Concrete mixers", "ar": "خلاطات خرسانة", "de": "Betonmischer", "es": "Mezcladoras de concreto", "it": "Betoniere"}'::jsonb);
        
    PERFORM insert_category_with_translations(materiel_id, 'vibrateurs-beton', 2, 
        '{"fr": "Vibrateurs béton", "en": "Concrete vibrators", "ar": "هزازات الخرسانة", "de": "Betonvibratoren", "es": "Vibradores de hormigón", "it": "Vibratori per calcestruzzo"}'::jsonb);
        
    PERFORM insert_category_with_translations(materiel_id, 'pompes-a-beton', 2, 
        '{"fr": "Pompes à béton", "en": "Concrete pumps", "ar": "مضخات الخرسانة", "de": "Betonpumpen", "es": "Bombas de hormigón", "it": "Pompe per calcestruzzo"}'::jsonb);
        
    PERFORM insert_category_with_translations(materiel_id, 'coffrages', 2, 
        '{"fr": "Coffrages", "en": "Formwork", "ar": "قوالب صب", "de": "Schalungen", "es": "Encofrados", "it": "Casseri"}'::jsonb);
        
    PERFORM insert_category_with_translations(materiel_id, 'etais', 2, 
        '{"fr": "Étais", "en": "Props & shoring", "ar": "دعامات", "de": "Stützen", "es": "Puntales", "it": "Puntelli"}'::jsonb);
        
    PERFORM insert_category_with_translations(materiel_id, 'echafaudages', 2, 
        '{"fr": "Échafaudages", "en": "Scaffolding", "ar": "سقالات", "de": "Gerüste", "es": "Andamios", "it": "Ponteggi"}'::jsonb);
        
    PERFORM insert_category_with_translations(materiel_id, 'echelles', 2, 
        '{"fr": "Échelles", "en": "Ladders", "ar": "سلالم", "de": "Leitern", "es": "Escaleras", "it": "Scale"}'::jsonb);
        
    PERFORM insert_category_with_translations(materiel_id, 'outils-pneumatiques', 2, 
        '{"fr": "Outils pneumatiques", "en": "Pneumatic tools", "ar": "أدوات هوائية", "de": "Druckluftwerkzeuge", "es": "Herramientas neumáticas", "it": "Utensili pneumatici"}'::jsonb);
        
    PERFORM insert_category_with_translations(materiel_id, 'marteaux-piqueurs', 2, 
        '{"fr": "Marteaux-piqueurs", "en": "Jackhammers", "ar": "مطارق هدم", "de": "Presslufthämmer", "es": "Martillos neumáticos", "it": "Martelli demolitori"}'::jsonb);
        
    PERFORM insert_category_with_translations(materiel_id, 'scies-de-chantier', 2, 
        '{"fr": "Scies de chantier", "en": "Jobsite saws", "ar": "مناشير موقع البناء", "de": "Baustellensägen", "es": "Sierras de obra", "it": "Seghe da cantiere"}'::jsonb);
        
    PERFORM insert_category_with_translations(materiel_id, 'groupes-electrogenes', 2, 
        '{"fr": "Groupes électrogènes", "en": "Generators", "ar": "مولدات كهرباء", "de": "Generatoren", "es": "Generadores", "it": "Generatori"}'::jsonb);
        
    PERFORM insert_category_with_translations(materiel_id, 'compresseurs', 2, 
        '{"fr": "Compresseurs", "en": "Compressors", "ar": "ضواغط", "de": "Kompressoren", "es": "Compresores", "it": "Compressori"}'::jsonb);
        
    PERFORM insert_category_with_translations(materiel_id, 'lasers-niveaux', 2, 
        '{"fr": "Lasers & niveaux", "en": "Lasers & levels", "ar": "أجهزة ليزر ومستويات", "de": "Laser & Nivelliergeräte", "es": "Láseres & niveles", "it": "Laser & livelle"}'::jsonb);


    -- 5. Niveau 1 : Matériaux de construction
    INSERT INTO categories (slug, parent_id, level, is_active)
    VALUES ('materiaux-de-construction', root_id, 1, true)
    ON CONFLICT (slug) DO UPDATE SET parent_id = root_id, level = 1, is_active = true
    RETURNING id INTO materiaux_id;

    -- Traductions Niveau 1
    INSERT INTO category_translations (category_id, language_code, name)
    VALUES
        (materiaux_id, 'fr', 'Matériaux de construction'),
        (materiaux_id, 'en', 'Construction materials'),
        (materiaux_id, 'ar', 'مواد البناء'),
        (materiaux_id, 'de', 'Baustoffe'),
        (materiaux_id, 'es', 'Materiales de construcción'),
        (materiaux_id, 'it', 'Materiali da costruzione')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

    -- Niveau 2
    PERFORM insert_category_with_translations(materiaux_id, 'ciment', 2, 
        '{"fr": "Ciment", "en": "Cement", "ar": "أسمنت", "de": "Zement", "es": "Cemento", "it": "Cemento"}'::jsonb);
        
    PERFORM insert_category_with_translations(materiaux_id, 'beton-pret-a-lemploi', 2, 
        '{"fr": "Béton prêt à l’emploi", "en": "Ready‑mix concrete", "ar": "خرسانة جاهزة", "de": "Fertigbeton", "es": "Hormigón premezclado", "it": "Calcestruzzo preconfezionato"}'::jsonb);
        
    PERFORM insert_category_with_translations(materiaux_id, 'sable-gravier', 2, 
        '{"fr": "Sable & gravier", "en": "Sand & gravel", "ar": "رمل وحصى", "de": "Sand & Kies", "es": "Arena & grava", "it": "Sabbia & ghiaia"}'::jsonb);
        
    PERFORM insert_category_with_translations(materiaux_id, 'briques-blocs', 2, 
        '{"fr": "Briques & blocs", "en": "Bricks & blocks", "ar": "طوب وبلوكات", "de": "Ziegel & Blöcke", "es": "Ladrillos & bloques", "it": "Mattoni & blocchi"}'::jsonb);
        
    PERFORM insert_category_with_translations(materiaux_id, 'parpaings', 2, 
        '{"fr": "Parpaings", "en": "Concrete blocks", "ar": "بلوك خرسانة", "de": "Betonsteine", "es": "Bloques de concreto", "it": "Blocchi di calcestruzzo"}'::jsonb);
        
    PERFORM insert_category_with_translations(materiaux_id, 'pierres-naturelles', 2, 
        '{"fr": "Pierres naturelles", "en": "Natural stone", "ar": "حجر طبيعي", "de": "Naturstein", "es": "Piedra natural", "it": "Pietra naturale"}'::jsonb);
        
    PERFORM insert_category_with_translations(materiaux_id, 'bois-de-construction', 2, 
        '{"fr": "Bois de construction", "en": "Construction lumber", "ar": "خشب بناء", "de": "Bauholz", "es": "Madera de construcción", "it": "Legname da costruzione"}'::jsonb);
        
    PERFORM insert_category_with_translations(materiaux_id, 'tuiles-toitures', 2, 
        '{"fr": "Tuiles & toitures", "en": "Tiles & roofing", "ar": "قرميد وأسقف", "de": "Dachziegel & Dach", "es": "Tejas & cubiertas", "it": "Tegole & coperture"}'::jsonb);
        
    PERFORM insert_category_with_translations(materiaux_id, 'plaques-de-platre', 2, 
        '{"fr": "Plaques de plâtre", "en": "Drywall & plasterboard", "ar": "ألواح جبس", "de": "Gipskartonplatten", "es": "Placas de yeso", "it": "Cartongesso"}'::jsonb);
        
    PERFORM insert_category_with_translations(materiaux_id, 'isolants', 2, 
        '{"fr": "Isolants", "en": "Insulation", "ar": "مواد عازلة", "de": "Dämmstoffe", "es": "Aislantes", "it": "Isolanti"}'::jsonb);
        
    PERFORM insert_category_with_translations(materiaux_id, 'peintures-enduits', 2, 
        '{"fr": "Peintures & enduits", "en": "Paints & renders", "ar": "دهانات وطلاءات", "de": "Farben & Putze", "es": "Pinturas & revestimientos", "it": "Vernici & intonaci"}'::jsonb);
        
    PERFORM insert_category_with_translations(materiaux_id, 'revetements-sols-murs', 2, 
        '{"fr": "Revêtements sols & murs", "en": "Floor & wall coverings", "ar": "أرضيات وكسوات جدران", "de": "Boden- & Wandbeläge", "es": "Revestimientos de suelos & paredes", "it": "Rivestimenti per pavimenti & pareti"}'::jsonb);


    -- 6. Niveau 1 : Quincaillerie & fixations
    INSERT INTO categories (slug, parent_id, level, is_active)
    VALUES ('quincaillerie-fixations', root_id, 1, true)
    ON CONFLICT (slug) DO UPDATE SET parent_id = root_id, level = 1, is_active = true
    RETURNING id INTO quincaillerie_id;

    -- Traductions Niveau 1
    INSERT INTO category_translations (category_id, language_code, name)
    VALUES
        (quincaillerie_id, 'fr', 'Quincaillerie & fixations'),
        (quincaillerie_id, 'en', 'Hardware & fasteners'),
        (quincaillerie_id, 'ar', 'العدد والمثبتات'),
        (quincaillerie_id, 'de', 'Beschläge & Befestigungen'),
        (quincaillerie_id, 'es', 'Ferretería & fijaciones'),
        (quincaillerie_id, 'it', 'Ferramenta & fissaggi')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

    -- Niveau 2
    PERFORM insert_category_with_translations(quincaillerie_id, 'vis-boulons', 2, 
        '{"fr": "Vis & boulons", "en": "Screws & bolts", "ar": "مسامير وصواميل", "de": "Schrauben & Bolzen", "es": "Tornillos & pernos", "it": "Viti & bulloni"}'::jsonb);
        
    PERFORM insert_category_with_translations(quincaillerie_id, 'chevilles', 2, 
        '{"fr": "Chevilles", "en": "Anchors", "ar": "مراسي تثبيت", "de": "Dübel", "es": "Tacos", "it": "Tasselli"}'::jsonb);
        
    PERFORM insert_category_with_translations(quincaillerie_id, 'clous', 2, 
        '{"fr": "Clous", "en": "Nails", "ar": "مسامير", "de": "Nägel", "es": "Clavos", "it": "Chiodi"}'::jsonb);
        
    PERFORM insert_category_with_translations(quincaillerie_id, 'equerres', 2, 
        '{"fr": "Équerres", "en": "Brackets", "ar": "زوايا تثبيت", "de": "Winkelverbinder", "es": "Escuadras", "it": "Staff e squadre"}'::jsonb);
        
    PERFORM insert_category_with_translations(quincaillerie_id, 'charniere', 2, 
        '{"fr": "Charnières", "en": "Hinges", "ar": "مفصلات", "de": "Scharniere", "es": "Bisagras", "it": "Cerniere"}'::jsonb);
        
    PERFORM insert_category_with_translations(quincaillerie_id, 'serrures', 2, 
        '{"fr": "Serrures", "en": "Locks", "ar": "أقفال", "de": "Schlösser", "es": "Cerraduras", "it": "Serrature"}'::jsonb);
        
    PERFORM insert_category_with_translations(quincaillerie_id, 'cadenas', 2, 
        '{"fr": "Cadenas", "en": "Padlocks", "ar": "أقفال معلّقة", "de": "Vorhängeschlösser", "es": "Candados", "it": "Lucchetti"}'::jsonb);
        
    PERFORM insert_category_with_translations(quincaillerie_id, 'colles-mastics', 2, 
        '{"fr": "Colles & mastics", "en": "Adhesives & sealants", "ar": "مواد لاصقة ومانعات تسرب", "de": "Klebstoffe & Dichtmassen", "es": "Adhesivos & selladores", "it": "Adesivi & sigillanti"}'::jsonb);
        
    PERFORM insert_category_with_translations(quincaillerie_id, 'rubans-adhesifs', 2, 
        '{"fr": "Rubans adhésifs", "en": "Tapes", "ar": "أشرطة لاصقة", "de": "Klebebänder", "es": "Cintas adhesivas", "it": "Nastri adesivi"}'::jsonb);
        
    PERFORM insert_category_with_translations(quincaillerie_id, 'joints-silicone', 2, 
        '{"fr": "Joints & silicone", "en": "Gaskets & silicone", "ar": "حشوات وسيليكون", "de": "Dichtungen & Silikon", "es": "Juntas & silicona", "it": "Guarnizioni & silicone"}'::jsonb);


    -- 7. Niveau 1 : Équipements électriques & plomberie
    INSERT INTO categories (slug, parent_id, level, is_active)
    VALUES ('equipements-electriques-plomberie', root_id, 1, true)
    ON CONFLICT (slug) DO UPDATE SET parent_id = root_id, level = 1, is_active = true
    RETURNING id INTO elec_plomb_id;

    -- Traductions Niveau 1
    INSERT INTO category_translations (category_id, language_code, name)
    VALUES
        (elec_plomb_id, 'fr', 'Équipements électriques & plomberie'),
        (elec_plomb_id, 'en', 'Electrical & plumbing'),
        (elec_plomb_id, 'ar', 'كهرباء وسباكة'),
        (elec_plomb_id, 'de', 'Elektro & Sanitär'),
        (elec_plomb_id, 'es', 'Eléctrico & fontanería'),
        (elec_plomb_id, 'it', 'Elettrico & idraulica')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

    -- Niveau 2
    PERFORM insert_category_with_translations(elec_plomb_id, 'cables-electriques', 2, 
        '{"fr": "Câbles électriques", "en": "Electrical cables", "ar": "كابلات كهربائية", "de": "Elektrokabel", "es": "Cables eléctricos", "it": "Cavi elettrici"}'::jsonb);
        
    PERFORM insert_category_with_translations(elec_plomb_id, 'interrupteurs-prises', 2, 
        '{"fr": "Interrupteurs & prises", "en": "Switches & outlets", "ar": "مفاتيح ومقابس", "de": "Schalter & Steckdosen", "es": "Interruptores & tomas", "it": "Interruttori & prese"}'::jsonb);
        
    PERFORM insert_category_with_translations(elec_plomb_id, 'disjoncteurs', 2, 
        '{"fr": "Disjoncteurs", "en": "Breakers", "ar": "قواطع كهربائية", "de": "Leitungsschutzschalter", "es": "Interruptores automáticos", "it": "Interruttori automatici"}'::jsonb);
        
    PERFORM insert_category_with_translations(elec_plomb_id, 'tableaux-electriques', 2, 
        '{"fr": "Tableaux électriques", "en": "Panels", "ar": "لوحات كهربائية", "de": "Verteilerkästen", "es": "Cuadros eléctricos", "it": "Quadri elettrici"}'::jsonb);
        
    PERFORM insert_category_with_translations(elec_plomb_id, 'eclairage-chantier', 2, 
        '{"fr": "Éclairage chantier", "en": "Jobsite lighting", "ar": "إنارة موقع البناء", "de": "Baustellenbeleuchtung", "es": "Iluminación de obra", "it": "Illuminazione da cantiere"}'::jsonb);
        
    PERFORM insert_category_with_translations(elec_plomb_id, 'tuyaux-raccords', 2, 
        '{"fr": "Tuyaux & raccords", "en": "Pipes & fittings", "ar": "أنابيب ووصلات", "de": "Rohre & Fittings", "es": "Tubos & accesorios", "it": "Tubi & raccordi"}'::jsonb);
        
    PERFORM insert_category_with_translations(elec_plomb_id, 'robinets', 2, 
        '{"fr": "Robinetterie", "en": "Faucets", "ar": "صنابير", "de": "Armaturen", "es": "Grifería", "it": "Rubinetteria"}'::jsonb);
        
    PERFORM insert_category_with_translations(elec_plomb_id, 'compteurs-eau', 2, 
        '{"fr": "Compteurs d’eau", "en": "Water meters", "ar": "عدادات مياه", "de": "Wasserzähler", "es": "Contadores de agua", "it": "Contatori dell’acqua"}'::jsonb);
        
    PERFORM insert_category_with_translations(elec_plomb_id, 'pompes', 2, 
        '{"fr": "Pompes", "en": "Pumps", "ar": "مضخات", "de": "Pumpen", "es": "Bombas", "it": "Pompe"}'::jsonb);
        
    PERFORM insert_category_with_translations(elec_plomb_id, 'chauffe-eau', 2, 
        '{"fr": "Chauffe-eau", "en": "Water heaters", "ar": "سخانات مياه", "de": "Warmwasserbereiter", "es": "Calentadores de agua", "it": "Scaldacqua"}'::jsonb);
        
    PERFORM insert_category_with_translations(elec_plomb_id, 'sanitaires', 2, 
        '{"fr": "Sanitaires", "en": "Sanitary ware", "ar": "مرافق صحية", "de": "Sanitäreinrichtungen", "es": "Sanitarios", "it": "Sanitari"}'::jsonb);


    -- 8. Niveau 1 : Outils & équipements professionnels
    INSERT INTO categories (slug, parent_id, level, is_active)
    VALUES ('outils-equipements-professionnels', root_id, 1, true)
    ON CONFLICT (slug) DO UPDATE SET parent_id = root_id, level = 1, is_active = true
    RETURNING id INTO outils_id;

    -- Traductions Niveau 1
    INSERT INTO category_translations (category_id, language_code, name)
    VALUES
        (outils_id, 'fr', 'Outils & équipements professionnels'),
        (outils_id, 'en', 'Tools & professional equipment'),
        (outils_id, 'ar', 'أدوات ومعدات مهنية'),
        (outils_id, 'de', 'Werkzeuge & Profi-Ausrüstung'),
        (outils_id, 'es', 'Herramientas & equipos profesionales'),
        (outils_id, 'it', 'Utensili & attrezzature professionali')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

    -- Niveau 2
    PERFORM insert_category_with_translations(outils_id, 'outils-manuels', 2, 
        '{"fr": "Outils manuels (marteaux, clés, tournevis, niveaux)", "en": "Hand tools (hammers, wrenches, screwdrivers, levels)", "ar": "أدوات يدوية (مطارق، مفاتيح، مفكات، مستويات)", "de": "Handwerkzeuge (Hämmer, Schlüssel, Schraubendreher, Wasserwaagen)", "es": "Herramientas manuales (martillos, llaves, destornilladores, niveles)", "it": "Utensili manuali (martelli, chiavi, cacciaviti, livelli)"}'::jsonb);
        
    PERFORM insert_category_with_translations(outils_id, 'outils-de-mesure', 2, 
        '{"fr": "Outils de mesure", "en": "Measuring tools", "ar": "أدوات قياس", "de": "Messwerkzeuge", "es": "Instrumentos de medición", "it": "Strumenti di misura"}'::jsonb);
        
    PERFORM insert_category_with_translations(outils_id, 'mallettes-coffrets', 2, 
        '{"fr": "Mallettes & coffrets", "en": "Toolboxes & cases", "ar": "حقائب وصناديق أدوات", "de": "Koffer & Kästen", "es": "Maletines & estuches", "it": "Valigette & cassette"}'::jsonb);
        
    PERFORM insert_category_with_translations(outils_id, 'outils-diamantes', 2, 
        '{"fr": "Outils diamantés", "en": "Diamond tools", "ar": "أدوات ماسيّة", "de": "Diamantwerkzeuge", "es": "Herramientas diamantadas", "it": "Utensili diamantati"}'::jsonb);
        
    PERFORM insert_category_with_translations(outils_id, 'meuleuses', 2, 
        '{"fr": "Meuleuses", "en": "Grinders", "ar": "جلاخات", "de": "Schleifmaschinen", "es": "Amoladoras", "it": "Smerigliatrici"}'::jsonb);
        
    PERFORM insert_category_with_translations(outils_id, 'perforateurs', 2, 
        '{"fr": "Perforateurs", "en": "Rotary hammers", "ar": "مطارق دوارة", "de": "Bohrhämmer", "es": "Martillos perforadores", "it": "Martelli perforatori"}'::jsonb);
        
    PERFORM insert_category_with_translations(outils_id, 'perceuses', 2, 
        '{"fr": "Perceuses", "en": "Drills", "ar": "مثاقب", "de": "Bohrmaschinen", "es": "Taladros", "it": "Trapani"}'::jsonb);
        
    PERFORM insert_category_with_translations(outils_id, 'scies-circulaires', 2, 
        '{"fr": "Scies circulaires", "en": "Circular saws", "ar": "مناشير دائرية", "de": "Kreissägen", "es": "Sierras circulares", "it": "Seghe circolari"}'::jsonb);
        
    PERFORM insert_category_with_translations(outils_id, 'ponceuses', 2, 
        '{"fr": "Ponceuses", "en": "Sanders", "ar": "أجهزة صنفرة", "de": "Schleifmaschinen", "es": "Lijadoras", "it": "Levigatrici"}'::jsonb);
        
    PERFORM insert_category_with_translations(outils_id, 'lasers-rotatifs', 2, 
        '{"fr": "Lasers rotatifs", "en": "Rotary lasers", "ar": "ليزر دوّار", "de": "Rotationslaser", "es": "Láseres rotativos", "it": "Laser rotanti"}'::jsonb);


    -- 9. Niveau 1 : Équipements de sécurité & protection
    INSERT INTO categories (slug, parent_id, level, is_active)
    VALUES ('securite-protection', root_id, 1, true)
    ON CONFLICT (slug) DO UPDATE SET parent_id = root_id, level = 1, is_active = true
    RETURNING id INTO securite_id;

    -- Traductions Niveau 1
    INSERT INTO category_translations (category_id, language_code, name)
    VALUES
        (securite_id, 'fr', 'Équipements de sécurité & protection'),
        (securite_id, 'en', 'Safety & PPE'),
        (securite_id, 'ar', 'السلامة ومعدات الوقاية'),
        (securite_id, 'de', 'Sicherheit & PSA'),
        (securite_id, 'es', 'Seguridad & EPP'),
        (securite_id, 'it', 'Sicurezza & DPI')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

    -- Niveau 2
    PERFORM insert_category_with_translations(securite_id, 'casques-de-chantier', 2, 
        '{"fr": "Casques de chantier", "en": "Hard hats", "ar": "خوذات أمان", "de": "Schutzhelme", "es": "Cascos de seguridad", "it": "Caschi da cantiere"}'::jsonb);
        
    PERFORM insert_category_with_translations(securite_id, 'gilets-haute-visibilite', 2, 
        '{"fr": "Gilets haute visibilité", "en": "High‑visibility vests", "ar": "سترات عالية الرؤية", "de": "Warnwesten", "es": "Chalecos de alta visibilidad", "it": "Gilet ad alta visibilità"}'::jsonb);
        
    PERFORM insert_category_with_translations(securite_id, 'chaussures-de-securite', 2, 
        '{"fr": "Chaussures de sécurité", "en": "Safety shoes", "ar": "أحذية أمان", "de": "Sicherheitsschuhe", "es": "Calzado de seguridad", "it": "Scarpe antinfortunistiche"}'::jsonb);
        
    PERFORM insert_category_with_translations(securite_id, 'gants-de-protection', 2, 
        '{"fr": "Gants de protection", "en": "Protective gloves", "ar": "قفازات حماية", "de": "Schutzhandschuhe", "es": "Guantes de protección", "it": "Guanti protettivi"}'::jsonb);
        
    PERFORM insert_category_with_translations(securite_id, 'lunettes', 2, 
        '{"fr": "Lunettes", "en": "Safety glasses", "ar": "نظارات واقية", "de": "Schutzbrillen", "es": "Gafas de seguridad", "it": "Occhiali di sicurezza"}'::jsonb);
        
    PERFORM insert_category_with_translations(securite_id, 'masques-anti-poussiere', 2, 
        '{"fr": "Masques anti-poussière", "en": "Dust masks", "ar": "أقنعة مضادة للغبار", "de": "Staubmasken", "es": "Mascarillas antipolvo", "it": "Maschere antipolvere"}'::jsonb);
        
    PERFORM insert_category_with_translations(securite_id, 'harnais-de-securite', 2, 
        '{"fr": "Harnais de sécurité", "en": "Safety harnesses", "ar": "أحزمة أمان", "de": "Sicherheitsgeschirre", "es": "Arneses de seguridad", "it": "Imbracature di sicurezza"}'::jsonb);
        
    PERFORM insert_category_with_translations(securite_id, 'filets-de-protection', 2, 
        '{"fr": "Filets de protection", "en": "Safety nets", "ar": "شبكات أمان", "de": "Sicherheitsnetze", "es": "Redes de seguridad", "it": "Reti di sicurezza"}'::jsonb);
        
    PERFORM insert_category_with_translations(securite_id, 'barrieres-de-chantier', 2, 
        '{"fr": "Barrières de chantier", "en": "Site barriers", "ar": "حواجز موقع البناء", "de": "Baustellenabsperrungen", "es": "Barreras de obra", "it": "Barriere di cantiere"}'::jsonb);


    -- 10. Niveau 1 : Construction modulaire & structures
    INSERT INTO categories (slug, parent_id, level, is_active)
    VALUES ('construction-modulaire-structures', root_id, 1, true)
    ON CONFLICT (slug) DO UPDATE SET parent_id = root_id, level = 1, is_active = true
    RETURNING id INTO modulaire_id;

    -- Traductions Niveau 1
    INSERT INTO category_translations (category_id, language_code, name)
    VALUES
        (modulaire_id, 'fr', 'Construction modulaire & structures'),
        (modulaire_id, 'en', 'Modular construction & structures'),
        (modulaire_id, 'ar', 'إنشاءات معيارية وهياكل'),
        (modulaire_id, 'de', 'Modulbau & Strukturen'),
        (modulaire_id, 'es', 'Construcción modular & estructuras'),
        (modulaire_id, 'it', 'Costruzione modulare & strutture')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

    -- Niveau 2
    PERFORM insert_category_with_translations(modulaire_id, 'bungalows-bases-vie', 2, 
        '{"fr": "Bungalows & bases-vie", "en": "Site cabins", "ar": "مساكن موقع", "de": "Baustellenunterkünfte", "es": "Casetas de obra", "it": "Baracche di cantiere"}'::jsonb);
        
    PERFORM insert_category_with_translations(modulaire_id, 'conteneurs-amenages', 2, 
        '{"fr": "Conteneurs aménagés", "en": "Converted containers", "ar": "حاويات مجهّزة", "de": "Umgebaute Container", "es": "Contenedores acondicionados", "it": "Container attrezzati"}'::jsonb);
        
    PERFORM insert_category_with_translations(modulaire_id, 'cabanes-abris', 2, 
        '{"fr": "Cabanes & abris", "en": "Sheds & shelters", "ar": "أكواخ وملاجئ", "de": "Hütten & Unterstände", "es": "Cabañas & refugios", "it": "Capanni & ricoveri"}'::jsonb);
        
    PERFORM insert_category_with_translations(modulaire_id, 'hangars-metalliques', 2, 
        '{"fr": "Hangars métalliques", "en": "Metal sheds", "ar": "مستودعات معدنية", "de": "Metallhallen", "es": "Naves metálicas", "it": "Capannoni metallici"}'::jsonb);
        
    PERFORM insert_category_with_translations(modulaire_id, 'structures-prefabriquees', 2, 
        '{"fr": "Structures préfabriquées", "en": "Prefabricated structures", "ar": "هياكل مسبقة الصنع", "de": "Vorfabrikierte Strukturen", "es": "Estructuras prefabricadas", "it": "Strutture prefabbricate"}'::jsonb);
        
    PERFORM insert_category_with_translations(modulaire_id, 'serres-couvertures-industrielles', 2, 
        '{"fr": "Serres & couvertures industrielles", "en": "Greenhouses & industrial covers", "ar": "بيوت زجاجية وأغطية صناعية", "de": "Gewächshäuser & Industrieabdeckungen", "es": "Invernaderos & coberturas industriales", "it": "Serre & coperture industriali"}'::jsonb);


    -- 11. Niveau 1 : Location de matériel BTP
    INSERT INTO categories (slug, parent_id, level, is_active)
    VALUES ('location-materiel-btp', root_id, 1, true)
    ON CONFLICT (slug) DO UPDATE SET parent_id = root_id, level = 1, is_active = true
    RETURNING id INTO location_id;

    -- Traductions Niveau 1
    INSERT INTO category_translations (category_id, language_code, name)
    VALUES
        (location_id, 'fr', 'Location de matériel BTP'),
        (location_id, 'en', 'Construction equipment rental'),
        (location_id, 'ar', 'تأجير معدات البناء'),
        (location_id, 'de', 'Vermietung von Baugeräten'),
        (location_id, 'es', 'Alquiler de equipos de construcción'),
        (location_id, 'it', 'Noleggio attrezzature edili')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

    -- Niveau 2
    PERFORM insert_category_with_translations(location_id, 'location-d-engins', 2, 
        '{"fr": "Location d’engins (pelles, nacelles, camions)", "en": "Equipment rental (excavators, lifts, trucks)", "ar": "تأجير الآليات (حفارات، منصات، شاحنات)", "de": "Maschinenvermietung (Bagger, Hebebühnen, Lkw)", "es": "Alquiler de maquinaria (excavadoras, plataformas, camiones)", "it": "Noleggio macchine (escavatori, piattaforme, camion)"}'::jsonb);
        
    PERFORM insert_category_with_translations(location_id, 'location-d-outillage', 2, 
        '{"fr": "Location d’outillage", "en": "Tool rental", "ar": "تأجير الأدوات", "de": "Werkzeugvermietung", "es": "Alquiler de herramientas", "it": "Noleggio utensili"}'::jsonb);
        
    PERFORM insert_category_with_translations(location_id, 'location-coffrage-echafaudage', 2, 
        '{"fr": "Location de coffrage & échafaudage", "en": "Formwork & scaffolding rental", "ar": "تأجير القوالب والسقالات", "de": "Schalungs- & Gerüstvermietung", "es": "Alquiler de encofrado & andamio", "it": "Noleggio casseforme & ponteggi"}'::jsonb);
        
    PERFORM insert_category_with_translations(location_id, 'location-groupes-electrogenes', 2, 
        '{"fr": "Location de groupes électrogènes", "en": "Generator rental", "ar": "تأجير المولدات", "de": "Generatorvermietung", "es": "Alquiler de generadores", "it": "Noleggio generatori"}'::jsonb);
        
    PERFORM insert_category_with_translations(location_id, 'location-bungalows', 2, 
        '{"fr": "Location de bungalows", "en": "Cabin rental", "ar": "تأجير مساكن الموقع", "de": "Bungalowvermietung", "es": "Alquiler de casetas", "it": "Noleggio baracche"}'::jsonb);


    -- 12. Niveau 1 : Services liés au BTP
    INSERT INTO categories (slug, parent_id, level, is_active)
    VALUES ('services-lies-au-btp', root_id, 1, true)
    ON CONFLICT (slug) DO UPDATE SET parent_id = root_id, level = 1, is_active = true
    RETURNING id INTO services_id;

    -- Traductions Niveau 1
    INSERT INTO category_translations (category_id, language_code, name)
    VALUES
        (services_id, 'fr', 'Services liés au BTP'),
        (services_id, 'en', 'Construction services'),
        (services_id, 'ar', 'خدمات البناء'),
        (services_id, 'de', 'Bau-Dienstleistungen'),
        (services_id, 'es', 'Servicios de construcción'),
        (services_id, 'it', 'Servizi per l’edilizia')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

    -- Niveau 2
    PERFORM insert_category_with_translations(services_id, 'travaux-publics', 2, 
        '{"fr": "Travaux publics", "en": "Public works", "ar": "أشغال عامة", "de": "Öffentliche Bauarbeiten", "es": "Obras públicas", "it": "Lavori pubblici"}'::jsonb);
        
    PERFORM insert_category_with_translations(services_id, 'terrassement', 2, 
        '{"fr": "Terrassement", "en": "Earthworks", "ar": "أعمال حفر وردم", "de": "Erdarbeiten", "es": "Movimiento de tierras", "it": "Movimenti terra"}'::jsonb);
        
    PERFORM insert_category_with_translations(services_id, 'demolition', 2, 
        '{"fr": "Démolition", "en": "Demolition", "ar": "هدم", "de": "Abriss", "es": "Demolición", "it": "Demolizione"}'::jsonb);
        
    PERFORM insert_category_with_translations(services_id, 'maconnerie', 2, 
        '{"fr": "Maçonnerie", "en": "Masonry", "ar": "أعمال بناء", "de": "Mauerarbeiten", "es": "Albañilería", "it": "Muratura"}'::jsonb);
        
    PERFORM insert_category_with_translations(services_id, 'plomberie', 2, 
        '{"fr": "Plomberie", "en": "Plumbing", "ar": "سباكة", "de": "Sanitär", "es": "Fontanería", "it": "Idraulica"}'::jsonb);
        
    PERFORM insert_category_with_translations(services_id, 'electricite', 2, 
        '{"fr": "Électricité", "en": "Electrical", "ar": "كهرباء", "de": "Elektroarbeiten", "es": "Electricidad", "it": "Elettricità"}'::jsonb);
        
    PERFORM insert_category_with_translations(services_id, 'menuiserie', 2, 
        '{"fr": "Menuiserie", "en": "Carpentry", "ar": "نجارة", "de": "Schreinerei", "es": "Carpintería", "it": "Falegnameria"}'::jsonb);
        
    PERFORM insert_category_with_translations(services_id, 'charpente', 2, 
        '{"fr": "Charpente", "en": "Timber framing", "ar": "هياكل خشبية", "de": "Zimmerei", "es": "Estructuras de madera", "it": "Carpenteria in legno"}'::jsonb);
        
    PERFORM insert_category_with_translations(services_id, 'peinture-finition', 2, 
        '{"fr": "Peinture & finition", "en": "Painting & finishing", "ar": "دهان & تشطيب", "de": "Maler- & Abschlussarbeiten", "es": "Pintura & acabado", "it": "Pittura & finitura"}'::jsonb);
        
    PERFORM insert_category_with_translations(services_id, 'architecture-ingenierie', 2, 
        '{"fr": "Architecture & ingénierie", "en": "Architecture & engineering", "ar": "هندسة معمارية & هندسة", "de": "Architektur & Ingenieurwesen", "es": "Arquitectura & ingeniería", "it": "Architettura & ingegneria"}'::jsonb);
        
    PERFORM insert_category_with_translations(services_id, 'topographie', 2, 
        '{"fr": "Topographie", "en": "Surveying", "ar": "مسح طبوغرافي", "de": "Vermessung", "es": "Topografía", "it": "Topografia"}'::jsonb);

END $$;
