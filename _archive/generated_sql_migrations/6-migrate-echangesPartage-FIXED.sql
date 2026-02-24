-- Migration: Échanges & Partage (Generated Recursive)
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

    -- Level 0: echanges-partage
    INSERT INTO categories (id, slug, level, name)
    VALUES ('echanges-partage', 'echanges-partage', 0, 'Échanges & Partage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 0, name = EXCLUDED.name
    RETURNING id INTO root_id;
    PERFORM insert_category_translations('echanges-partage', 'fr', 'Échanges & Partage');
    PERFORM insert_category_translations('echanges-partage', 'ar', 'التبادل والمشاركة');
    PERFORM insert_category_translations('echanges-partage', 'en', 'Exchanges & Sharing');
    PERFORM insert_category_translations('echanges-partage', 'de', 'Tausch & Teilen');
    PERFORM insert_category_translations('echanges-partage', 'es', 'Intercambios & Compartir');
    PERFORM insert_category_translations('echanges-partage', 'it', 'Scambi & Condivisione');

        -- Level 1: troc-objets
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('troc-objets', 'troc-objets', 1, root_id, 'Troc d’Objets')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('troc-objets', 'fr', 'Troc d’Objets');
        PERFORM insert_category_translations('troc-objets', 'ar', 'تبادل الأشياء');
        PERFORM insert_category_translations('troc-objets', 'en', 'Barter of Objects');
        PERFORM insert_category_translations('troc-objets', 'de', 'Gegenstände tauschen');
        PERFORM insert_category_translations('troc-objets', 'es', 'Trueque de Objetos');
        PERFORM insert_category_translations('troc-objets', 'it', 'Baratto di Oggetti');

            -- Level 2: echange-vetements
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('echange-vetements', 'echange-vetements', 2, l1_id, 'échange vêtements')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('echange-vetements', 'fr', 'échange vêtements');
            PERFORM insert_category_translations('echange-vetements', 'ar', 'تبادل الملابس');
            PERFORM insert_category_translations('echange-vetements', 'en', 'clothing exchange');
            PERFORM insert_category_translations('echange-vetements', 'de', 'Kleidung tauschen');
            PERFORM insert_category_translations('echange-vetements', 'es', 'intercambio de ropa');
            PERFORM insert_category_translations('echange-vetements', 'it', 'scambio vestiti');

            -- Level 2: troc-electromenager
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('troc-electromenager', 'troc-electromenager', 2, l1_id, 'troc électroménager')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('troc-electromenager', 'fr', 'troc électroménager');
            PERFORM insert_category_translations('troc-electromenager', 'ar', 'مقايضة الأجهزة');
            PERFORM insert_category_translations('troc-electromenager', 'en', 'appliances barter');
            PERFORM insert_category_translations('troc-electromenager', 'de', 'Haushaltsgeräte tauschen');
            PERFORM insert_category_translations('troc-electromenager', 'es', 'trueque de electrodomésticos');
            PERFORM insert_category_translations('troc-electromenager', 'it', 'baratto elettrodomestici');

            -- Level 2: echange-telephones
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('echange-telephones', 'echange-telephones', 2, l1_id, 'échange téléphones')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('echange-telephones', 'fr', 'échange téléphones');
            PERFORM insert_category_translations('echange-telephones', 'ar', 'تبادل الهواتف');
            PERFORM insert_category_translations('echange-telephones', 'en', 'phones exchange');
            PERFORM insert_category_translations('echange-telephones', 'de', 'Telefone tauschen');
            PERFORM insert_category_translations('echange-telephones', 'es', 'intercambio de teléfonos');
            PERFORM insert_category_translations('echange-telephones', 'it', 'scambio telefoni');

            -- Level 2: troc-meubles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('troc-meubles', 'troc-meubles', 2, l1_id, 'troc meubles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('troc-meubles', 'fr', 'troc meubles');
            PERFORM insert_category_translations('troc-meubles', 'ar', 'مقايضة الأثاث');
            PERFORM insert_category_translations('troc-meubles', 'en', 'furniture barter');
            PERFORM insert_category_translations('troc-meubles', 'de', 'Möbel tauschen');
            PERFORM insert_category_translations('troc-meubles', 'es', 'trueque de muebles');
            PERFORM insert_category_translations('troc-meubles', 'it', 'baratto mobili');

            -- Level 2: echange-livres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('echange-livres', 'echange-livres', 2, l1_id, 'échange livres')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('echange-livres', 'fr', 'échange livres');
            PERFORM insert_category_translations('echange-livres', 'ar', 'تبادل الكتب');
            PERFORM insert_category_translations('echange-livres', 'en', 'books exchange');
            PERFORM insert_category_translations('echange-livres', 'de', 'Bücher tauschen');
            PERFORM insert_category_translations('echange-livres', 'es', 'intercambio de libros');
            PERFORM insert_category_translations('echange-livres', 'it', 'scambio libri');

            -- Level 2: troc-jouets
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('troc-jouets', 'troc-jouets', 2, l1_id, 'troc jouets')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('troc-jouets', 'fr', 'troc jouets');
            PERFORM insert_category_translations('troc-jouets', 'ar', 'مقايضة الألعاب');
            PERFORM insert_category_translations('troc-jouets', 'en', 'toys barter');
            PERFORM insert_category_translations('troc-jouets', 'de', 'Spielzeug tauschen');
            PERFORM insert_category_translations('troc-jouets', 'es', 'trueque de juguetes');
            PERFORM insert_category_translations('troc-jouets', 'it', 'baratto giocattoli');

            -- Level 2: echange-outils
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('echange-outils', 'echange-outils', 2, l1_id, 'échange outils')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('echange-outils', 'fr', 'échange outils');
            PERFORM insert_category_translations('echange-outils', 'ar', 'تبادل الأدوات');
            PERFORM insert_category_translations('echange-outils', 'en', 'tools exchange');
            PERFORM insert_category_translations('echange-outils', 'de', 'Werkzeuge tauschen');
            PERFORM insert_category_translations('echange-outils', 'es', 'intercambio de herramientas');
            PERFORM insert_category_translations('echange-outils', 'it', 'scambio attrezzi');

        -- Level 1: don-gratuit
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('don-gratuit', 'don-gratuit', 1, root_id, 'Don & Gratuit')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('don-gratuit', 'fr', 'Don & Gratuit');
        PERFORM insert_category_translations('don-gratuit', 'ar', 'هبات ومجاني');
        PERFORM insert_category_translations('don-gratuit', 'en', 'Donation & Free');
        PERFORM insert_category_translations('don-gratuit', 'de', 'Spenden & Kostenlos');
        PERFORM insert_category_translations('don-gratuit', 'es', 'Donación & Gratis');
        PERFORM insert_category_translations('don-gratuit', 'it', 'Donazione & Gratis');

            -- Level 2: objets-gratuits
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('objets-gratuits', 'objets-gratuits', 2, l1_id, 'objets gratuits')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('objets-gratuits', 'fr', 'objets gratuits');
            PERFORM insert_category_translations('objets-gratuits', 'ar', 'أشياء مجانية');
            PERFORM insert_category_translations('objets-gratuits', 'en', 'free items');
            PERFORM insert_category_translations('objets-gratuits', 'de', 'Kostenlose Gegenstände');
            PERFORM insert_category_translations('objets-gratuits', 'es', 'objetos gratis');
            PERFORM insert_category_translations('objets-gratuits', 'it', 'oggetti gratuiti');

            -- Level 2: vetements-gratuits
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vetements-gratuits', 'vetements-gratuits', 2, l1_id, 'vêtements gratuits')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('vetements-gratuits', 'fr', 'vêtements gratuits');
            PERFORM insert_category_translations('vetements-gratuits', 'ar', 'ملابس مجانية');
            PERFORM insert_category_translations('vetements-gratuits', 'en', 'free clothing');
            PERFORM insert_category_translations('vetements-gratuits', 'de', 'Kostenlose Kleidung');
            PERFORM insert_category_translations('vetements-gratuits', 'es', 'ropa gratis');
            PERFORM insert_category_translations('vetements-gratuits', 'it', 'vestiti gratuiti');

            -- Level 2: dons-meubles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('dons-meubles', 'dons-meubles', 2, l1_id, 'dons meubles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('dons-meubles', 'fr', 'dons meubles');
            PERFORM insert_category_translations('dons-meubles', 'ar', 'هبات الأثاث');
            PERFORM insert_category_translations('dons-meubles', 'en', 'furniture donations');
            PERFORM insert_category_translations('dons-meubles', 'de', 'Möbelspenden');
            PERFORM insert_category_translations('dons-meubles', 'es', 'donación de muebles');
            PERFORM insert_category_translations('dons-meubles', 'it', 'donazione mobili');

            -- Level 2: dons-electro
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('dons-electro', 'dons-electro', 2, l1_id, 'dons électro')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('dons-electro', 'fr', 'dons électro');
            PERFORM insert_category_translations('dons-electro', 'ar', 'هبات الأجهزة');
            PERFORM insert_category_translations('dons-electro', 'en', 'appliance donations');
            PERFORM insert_category_translations('dons-electro', 'de', 'Gerätespenden');
            PERFORM insert_category_translations('dons-electro', 'es', 'donación de electrodomésticos');
            PERFORM insert_category_translations('dons-electro', 'it', 'donazione elettrodomestici');

            -- Level 2: dons-jouets
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('dons-jouets', 'dons-jouets', 2, l1_id, 'dons jouets')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('dons-jouets', 'fr', 'dons jouets');
            PERFORM insert_category_translations('dons-jouets', 'ar', 'هبات الألعاب');
            PERFORM insert_category_translations('dons-jouets', 'en', 'toy donations');
            PERFORM insert_category_translations('dons-jouets', 'de', 'Spielzeugspenden');
            PERFORM insert_category_translations('dons-jouets', 'es', 'donación de juguetes');
            PERFORM insert_category_translations('dons-jouets', 'it', 'donazione giocattoli');

            -- Level 2: dons-divers
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('dons-divers', 'dons-divers', 2, l1_id, 'dons divers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('dons-divers', 'fr', 'dons divers');
            PERFORM insert_category_translations('dons-divers', 'ar', 'هبات متنوعة');
            PERFORM insert_category_translations('dons-divers', 'en', 'misc donations');
            PERFORM insert_category_translations('dons-divers', 'de', 'Verschiedene Spenden');
            PERFORM insert_category_translations('dons-divers', 'es', 'donaciones varias');
            PERFORM insert_category_translations('dons-divers', 'it', 'donazioni varie');

        -- Level 1: pret-objets
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pret-objets', 'pret-objets', 1, root_id, 'Prêt d’Objets')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('pret-objets', 'fr', 'Prêt d’Objets');
        PERFORM insert_category_translations('pret-objets', 'ar', 'إعارة الأشياء');
        PERFORM insert_category_translations('pret-objets', 'en', 'Object Lending');
        PERFORM insert_category_translations('pret-objets', 'de', 'Gegenstände verleihen');
        PERFORM insert_category_translations('pret-objets', 'es', 'Préstamo de Objetos');
        PERFORM insert_category_translations('pret-objets', 'it', 'Prestito di Oggetti');

            -- Level 2: pret-outils
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pret-outils', 'pret-outils', 2, l1_id, 'prêt outils')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pret-outils', 'fr', 'prêt outils');
            PERFORM insert_category_translations('pret-outils', 'ar', 'إعارة الأدوات');
            PERFORM insert_category_translations('pret-outils', 'en', 'tools lending');
            PERFORM insert_category_translations('pret-outils', 'de', 'Werkzeuge verleihen');
            PERFORM insert_category_translations('pret-outils', 'es', 'préstamo de herramientas');
            PERFORM insert_category_translations('pret-outils', 'it', 'prestito attrezzi');

            -- Level 2: pret-appareils
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pret-appareils', 'pret-appareils', 2, l1_id, 'prêt appareils')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pret-appareils', 'fr', 'prêt appareils');
            PERFORM insert_category_translations('pret-appareils', 'ar', 'إعارة الأجهزة');
            PERFORM insert_category_translations('pret-appareils', 'en', 'devices lending');
            PERFORM insert_category_translations('pret-appareils', 'de', 'Geräte verleihen');
            PERFORM insert_category_translations('pret-appareils', 'es', 'préstamo de aparatos');
            PERFORM insert_category_translations('pret-appareils', 'it', 'prestito dispositivi');

            -- Level 2: pret-velos
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pret-velos', 'pret-velos', 2, l1_id, 'prêt vélos')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pret-velos', 'fr', 'prêt vélos');
            PERFORM insert_category_translations('pret-velos', 'ar', 'إعارة الدراجات');
            PERFORM insert_category_translations('pret-velos', 'en', 'bike lending');
            PERFORM insert_category_translations('pret-velos', 'de', 'Fahrräder verleihen');
            PERFORM insert_category_translations('pret-velos', 'es', 'préstamo de bicicletas');
            PERFORM insert_category_translations('pret-velos', 'it', 'prestito biciclette');

            -- Level 2: pret-materiel-pro
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pret-materiel-pro', 'pret-materiel-pro', 2, l1_id, 'prêt matériel pro')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pret-materiel-pro', 'fr', 'prêt matériel pro');
            PERFORM insert_category_translations('pret-materiel-pro', 'ar', 'إعارة معدات مهنية');
            PERFORM insert_category_translations('pret-materiel-pro', 'en', 'pro equipment lending');
            PERFORM insert_category_translations('pret-materiel-pro', 'de', 'Profi-Ausrüstung verleihen');
            PERFORM insert_category_translations('pret-materiel-pro', 'es', 'préstamo de equipo profesional');
            PERFORM insert_category_translations('pret-materiel-pro', 'it', 'prestito attrezzature pro');

            -- Level 2: pret-equipements-maison
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pret-equipements-maison', 'pret-equipements-maison', 2, l1_id, 'prêt équipements maison')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pret-equipements-maison', 'fr', 'prêt équipements maison');
            PERFORM insert_category_translations('pret-equipements-maison', 'ar', 'إعارة تجهيزات المنزل');
            PERFORM insert_category_translations('pret-equipements-maison', 'en', 'home equipment lending');
            PERFORM insert_category_translations('pret-equipements-maison', 'de', 'Haushaltsausstattung verleihen');
            PERFORM insert_category_translations('pret-equipements-maison', 'es', 'préstamo de equipos del hogar');
            PERFORM insert_category_translations('pret-equipements-maison', 'it', 'prestito attrezzature casa');

        -- Level 1: partage-competences
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('partage-competences', 'partage-competences', 1, root_id, 'Partage de Compétences')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('partage-competences', 'fr', 'Partage de Compétences');
        PERFORM insert_category_translations('partage-competences', 'ar', 'مشاركة المهارات');
        PERFORM insert_category_translations('partage-competences', 'en', 'Skills Sharing');
        PERFORM insert_category_translations('partage-competences', 'de', 'Kompetenzen teilen');
        PERFORM insert_category_translations('partage-competences', 'es', 'Compartir Competencias');
        PERFORM insert_category_translations('partage-competences', 'it', 'Condivisione Competenze');

            -- Level 2: cours-gratuits
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cours-gratuits', 'cours-gratuits', 2, l1_id, 'cours gratuits')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cours-gratuits', 'fr', 'cours gratuits');
            PERFORM insert_category_translations('cours-gratuits', 'ar', 'دروس مجانية');
            PERFORM insert_category_translations('cours-gratuits', 'en', 'free courses');
            PERFORM insert_category_translations('cours-gratuits', 'de', 'Kostenlose Kurse');
            PERFORM insert_category_translations('cours-gratuits', 'es', 'cursos gratuitos');
            PERFORM insert_category_translations('cours-gratuits', 'it', 'corsi gratuiti');

            -- Level 2: echanges-competences
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('echanges-competences', 'echanges-competences', 2, l1_id, 'échanges compétences')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('echanges-competences', 'fr', 'échanges compétences');
            PERFORM insert_category_translations('echanges-competences', 'ar', 'تبادل المهارات');
            PERFORM insert_category_translations('echanges-competences', 'en', 'skills exchange');
            PERFORM insert_category_translations('echanges-competences', 'de', 'Kompetenzen austauschen');
            PERFORM insert_category_translations('echanges-competences', 'es', 'intercambio de competencias');
            PERFORM insert_category_translations('echanges-competences', 'it', 'scambio competenze');

            -- Level 2: ateliers-partages
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ateliers-partages', 'ateliers-partages', 2, l1_id, 'ateliers partagés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ateliers-partages', 'fr', 'ateliers partagés');
            PERFORM insert_category_translations('ateliers-partages', 'ar', 'ورشات مشتركة');
            PERFORM insert_category_translations('ateliers-partages', 'en', 'shared workshops');
            PERFORM insert_category_translations('ateliers-partages', 'de', 'Gemeinsame Workshops');
            PERFORM insert_category_translations('ateliers-partages', 'es', 'talleres compartidos');
            PERFORM insert_category_translations('ateliers-partages', 'it', 'laboratori condivisi');

            -- Level 2: bricolage-entraide
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bricolage-entraide', 'bricolage-entraide', 2, l1_id, 'bricolage entraide')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bricolage-entraide', 'fr', 'bricolage entraide');
            PERFORM insert_category_translations('bricolage-entraide', 'ar', 'أعمال يدوية بالتعاون');
            PERFORM insert_category_translations('bricolage-entraide', 'en', 'DIY mutual help');
            PERFORM insert_category_translations('bricolage-entraide', 'de', 'Heimwerken & Hilfe');
            PERFORM insert_category_translations('bricolage-entraide', 'es', 'bricolaje solidario');
            PERFORM insert_category_translations('bricolage-entraide', 'it', 'fai-da-te solidale');

            -- Level 2: soutien-scolaire
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soutien-scolaire', 'soutien-scolaire', 2, l1_id, 'soutien scolaire')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('soutien-scolaire', 'fr', 'soutien scolaire');
            PERFORM insert_category_translations('soutien-scolaire', 'ar', 'دعم مدرسي');
            PERFORM insert_category_translations('soutien-scolaire', 'en', 'tutoring');
            PERFORM insert_category_translations('soutien-scolaire', 'de', 'Nachhilfe');
            PERFORM insert_category_translations('soutien-scolaire', 'es', 'apoyo escolar');
            PERFORM insert_category_translations('soutien-scolaire', 'it', 'sostegno scolastico');

        -- Level 1: carpooling-deplacements
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('carpooling-deplacements', 'carpooling-deplacements', 1, root_id, 'Carpooling & Déplacements')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('carpooling-deplacements', 'fr', 'Carpooling & Déplacements');
        PERFORM insert_category_translations('carpooling-deplacements', 'ar', 'مشاركة الركوب والتنقل');
        PERFORM insert_category_translations('carpooling-deplacements', 'en', 'Carpooling & Travel');
        PERFORM insert_category_translations('carpooling-deplacements', 'de', 'Fahrgemeinschaft & Wege');
        PERFORM insert_category_translations('carpooling-deplacements', 'es', 'Carpooling & Desplazamientos');
        PERFORM insert_category_translations('carpooling-deplacements', 'it', 'Carpooling & Spostamenti');

            -- Level 2: covoiturage-local
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('covoiturage-local', 'covoiturage-local', 2, l1_id, 'covoiturage local')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('covoiturage-local', 'fr', 'covoiturage local');
            PERFORM insert_category_translations('covoiturage-local', 'ar', 'مشاركة السيارة محليًا');
            PERFORM insert_category_translations('covoiturage-local', 'en', 'local carpool');
            PERFORM insert_category_translations('covoiturage-local', 'de', 'Lokales Carpooling');
            PERFORM insert_category_translations('covoiturage-local', 'es', 'coche compartido local');
            PERFORM insert_category_translations('covoiturage-local', 'it', 'carpool locale');

            -- Level 2: partage-trajet
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('partage-trajet', 'partage-trajet', 2, l1_id, 'partage trajet')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('partage-trajet', 'fr', 'partage trajet');
            PERFORM insert_category_translations('partage-trajet', 'ar', 'مشاركة الرحلات');
            PERFORM insert_category_translations('partage-trajet', 'en', 'trip sharing');
            PERFORM insert_category_translations('partage-trajet', 'de', 'Fahrt teilen');
            PERFORM insert_category_translations('partage-trajet', 'es', 'compartir trayecto');
            PERFORM insert_category_translations('partage-trajet', 'it', 'condivisione tragitto');

            -- Level 2: transport-solidaire
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('transport-solidaire', 'transport-solidaire', 2, l1_id, 'transport solidaire')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('transport-solidaire', 'fr', 'transport solidaire');
            PERFORM insert_category_translations('transport-solidaire', 'ar', 'نقل تضامني');
            PERFORM insert_category_translations('transport-solidaire', 'en', 'solidarity transport');
            PERFORM insert_category_translations('transport-solidaire', 'de', 'Solidarischer Transport');
            PERFORM insert_category_translations('transport-solidaire', 'es', 'transporte solidario');
            PERFORM insert_category_translations('transport-solidaire', 'it', 'trasporto solidale');

            -- Level 2: livraison-solidaire
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('livraison-solidaire', 'livraison-solidaire', 2, l1_id, 'livraison solidaire')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('livraison-solidaire', 'fr', 'livraison solidaire');
            PERFORM insert_category_translations('livraison-solidaire', 'ar', 'توصيل تضامني');
            PERFORM insert_category_translations('livraison-solidaire', 'en', 'solidarity delivery');
            PERFORM insert_category_translations('livraison-solidaire', 'de', 'Solidarische Lieferung');
            PERFORM insert_category_translations('livraison-solidaire', 'es', 'entrega solidaria');
            PERFORM insert_category_translations('livraison-solidaire', 'it', 'consegna solidale');

        -- Level 1: partage-habitat
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('partage-habitat', 'partage-habitat', 1, root_id, 'Partage Habitat')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('partage-habitat', 'fr', 'Partage Habitat');
        PERFORM insert_category_translations('partage-habitat', 'ar', 'مشاركة السكن');
        PERFORM insert_category_translations('partage-habitat', 'en', 'Housing Sharing');
        PERFORM insert_category_translations('partage-habitat', 'de', 'Wohnraum teilen');
        PERFORM insert_category_translations('partage-habitat', 'es', 'Compartir Vivienda');
        PERFORM insert_category_translations('partage-habitat', 'it', 'Condivisione Abitazione');

            -- Level 2: cohabitation-solidaire
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cohabitation-solidaire', 'cohabitation-solidaire', 2, l1_id, 'cohabitation solidaire')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cohabitation-solidaire', 'fr', 'cohabitation solidaire');
            PERFORM insert_category_translations('cohabitation-solidaire', 'ar', 'تعايش تضامني');
            PERFORM insert_category_translations('cohabitation-solidaire', 'en', 'solidarity cohabitation');
            PERFORM insert_category_translations('cohabitation-solidaire', 'de', 'Solidarisches Zusammenwohnen');
            PERFORM insert_category_translations('cohabitation-solidaire', 'es', 'cohabitación solidaria');
            PERFORM insert_category_translations('cohabitation-solidaire', 'it', 'convivenza solidale');

            -- Level 2: colocation-echange
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('colocation-echange', 'colocation-echange', 2, l1_id, 'colocation échange')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('colocation-echange', 'fr', 'colocation échange');
            PERFORM insert_category_translations('colocation-echange', 'ar', 'سكن مشترك بالمقايضة');
            PERFORM insert_category_translations('colocation-echange', 'en', 'exchange-based colocation');
            PERFORM insert_category_translations('colocation-echange', 'de', 'Tausch-Wohngemeinschaft');
            PERFORM insert_category_translations('colocation-echange', 'es', 'compartir piso por intercambio');
            PERFORM insert_category_translations('colocation-echange', 'it', 'colocazione per scambio');

            -- Level 2: accueil-temporaire
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accueil-temporaire', 'accueil-temporaire', 2, l1_id, 'accueil temporaire')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('accueil-temporaire', 'fr', 'accueil temporaire');
            PERFORM insert_category_translations('accueil-temporaire', 'ar', 'استضافة مؤقتة');
            PERFORM insert_category_translations('accueil-temporaire', 'en', 'temporary hosting');
            PERFORM insert_category_translations('accueil-temporaire', 'de', 'Vorübergehende Aufnahme');
            PERFORM insert_category_translations('accueil-temporaire', 'es', 'acogida temporal');
            PERFORM insert_category_translations('accueil-temporaire', 'it', 'accoglienza temporanea');

            -- Level 2: echange-maison
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('echange-maison', 'echange-maison', 2, l1_id, 'échange maison')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('echange-maison', 'fr', 'échange maison');
            PERFORM insert_category_translations('echange-maison', 'ar', 'تبادل المنازل');
            PERFORM insert_category_translations('echange-maison', 'en', 'home exchange');
            PERFORM insert_category_translations('echange-maison', 'de', 'Haus-Tausch');
            PERFORM insert_category_translations('echange-maison', 'es', 'intercambio de viviendas');
            PERFORM insert_category_translations('echange-maison', 'it', 'scambio casa');

        -- Level 1: echange-services
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('echange-services', 'echange-services', 1, root_id, 'Échange de Services')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('echange-services', 'fr', 'Échange de Services');
        PERFORM insert_category_translations('echange-services', 'ar', 'تبادل الخدمات');
        PERFORM insert_category_translations('echange-services', 'en', 'Service Exchange');
        PERFORM insert_category_translations('echange-services', 'de', 'Dienstleistungstausch');
        PERFORM insert_category_translations('echange-services', 'es', 'Intercambio de Servicios');
        PERFORM insert_category_translations('echange-services', 'it', 'Scambio di Servizi');

            -- Level 2: service-contre-service
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('service-contre-service', 'service-contre-service', 2, l1_id, 'service contre service')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('service-contre-service', 'fr', 'service contre service');
            PERFORM insert_category_translations('service-contre-service', 'ar', 'خدمة مقابل خدمة');
            PERFORM insert_category_translations('service-contre-service', 'en', 'service for service');
            PERFORM insert_category_translations('service-contre-service', 'de', 'Dienstleistung gegen Dienstleistung');
            PERFORM insert_category_translations('service-contre-service', 'es', 'servicio por servicio');
            PERFORM insert_category_translations('service-contre-service', 'it', 'servizio per servizio');

            -- Level 2: aide-mutuelle
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('aide-mutuelle', 'aide-mutuelle', 2, l1_id, 'aide mutuelle')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('aide-mutuelle', 'fr', 'aide mutuelle');
            PERFORM insert_category_translations('aide-mutuelle', 'ar', 'مساعدة متبادلة');
            PERFORM insert_category_translations('aide-mutuelle', 'en', 'mutual help');
            PERFORM insert_category_translations('aide-mutuelle', 'de', 'Gegenseitige Hilfe');
            PERFORM insert_category_translations('aide-mutuelle', 'es', 'ayuda mutua');
            PERFORM insert_category_translations('aide-mutuelle', 'it', 'aiuto reciproco');

            -- Level 2: reparation-echange
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('reparation-echange', 'reparation-echange', 2, l1_id, 'réparation échange')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('reparation-echange', 'fr', 'réparation échange');
            PERFORM insert_category_translations('reparation-echange', 'ar', 'إصلاح بالمقايضة');
            PERFORM insert_category_translations('reparation-echange', 'en', 'repair exchange');
            PERFORM insert_category_translations('reparation-echange', 'de', 'Reparaturtausch');
            PERFORM insert_category_translations('reparation-echange', 'es', 'reparación por intercambio');
            PERFORM insert_category_translations('reparation-echange', 'it', 'riparazione in scambio');

            -- Level 2: menage-contre-aide
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('menage-contre-aide', 'menage-contre-aide', 2, l1_id, 'ménage contre aide')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('menage-contre-aide', 'fr', 'ménage contre aide');
            PERFORM insert_category_translations('menage-contre-aide', 'ar', 'تنظيف مقابل مساعدة');
            PERFORM insert_category_translations('menage-contre-aide', 'en', 'housework for help');
            PERFORM insert_category_translations('menage-contre-aide', 'de', 'Haushalt gegen Hilfe');
            PERFORM insert_category_translations('menage-contre-aide', 'es', 'limpieza por ayuda');
            PERFORM insert_category_translations('menage-contre-aide', 'it', 'pulizie per aiuto');

        -- Level 1: communaute-entraide
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('communaute-entraide', 'communaute-entraide', 1, root_id, 'Communauté & Entraide')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('communaute-entraide', 'fr', 'Communauté & Entraide');
        PERFORM insert_category_translations('communaute-entraide', 'ar', 'مجتمع وتعاون');
        PERFORM insert_category_translations('communaute-entraide', 'en', 'Community & Mutual Aid');
        PERFORM insert_category_translations('communaute-entraide', 'de', 'Gemeinschaft & Hilfe');
        PERFORM insert_category_translations('communaute-entraide', 'es', 'Comunidad & Ayuda');
        PERFORM insert_category_translations('communaute-entraide', 'it', 'Comunità & Aiuto');

            -- Level 2: entraide-quartier
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('entraide-quartier', 'entraide-quartier', 2, l1_id, 'entraide quartier')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('entraide-quartier', 'fr', 'entraide quartier');
            PERFORM insert_category_translations('entraide-quartier', 'ar', 'تعاون الحي');
            PERFORM insert_category_translations('entraide-quartier', 'en', 'neighborhood help');
            PERFORM insert_category_translations('entraide-quartier', 'de', 'Nachbarschaftshilfe');
            PERFORM insert_category_translations('entraide-quartier', 'es', 'ayuda del barrio');
            PERFORM insert_category_translations('entraide-quartier', 'it', 'aiuto di quartiere');

            -- Level 2: recuperation-objets
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('recuperation-objets', 'recuperation-objets', 2, l1_id, 'récupération objets')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('recuperation-objets', 'fr', 'récupération objets');
            PERFORM insert_category_translations('recuperation-objets', 'ar', 'استعادة الأشياء');
            PERFORM insert_category_translations('recuperation-objets', 'en', 'objects recovery');
            PERFORM insert_category_translations('recuperation-objets', 'de', 'Gegenstände wiederverwenden');
            PERFORM insert_category_translations('recuperation-objets', 'es', 'recuperación de objetos');
            PERFORM insert_category_translations('recuperation-objets', 'it', 'recupero oggetti');

            -- Level 2: partage-alimentaire
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('partage-alimentaire', 'partage-alimentaire', 2, l1_id, 'partage alimentaire')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('partage-alimentaire', 'fr', 'partage alimentaire');
            PERFORM insert_category_translations('partage-alimentaire', 'ar', 'مشاركة الطعام');
            PERFORM insert_category_translations('partage-alimentaire', 'en', 'food sharing');
            PERFORM insert_category_translations('partage-alimentaire', 'de', 'Lebensmittel teilen');
            PERFORM insert_category_translations('partage-alimentaire', 'es', 'compartir alimentos');
            PERFORM insert_category_translations('partage-alimentaire', 'it', 'condivisione alimentare');

            -- Level 2: solidarite-locale
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('solidarite-locale', 'solidarite-locale', 2, l1_id, 'solidarité locale')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('solidarite-locale', 'fr', 'solidarité locale');
            PERFORM insert_category_translations('solidarite-locale', 'ar', 'تضامن محلي');
            PERFORM insert_category_translations('solidarite-locale', 'en', 'local solidarity');
            PERFORM insert_category_translations('solidarite-locale', 'de', 'Lokale Solidarität');
            PERFORM insert_category_translations('solidarite-locale', 'es', 'solidaridad local');
            PERFORM insert_category_translations('solidarite-locale', 'it', 'solidarietà locale');

        -- Level 1: echange-culturel
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('echange-culturel', 'echange-culturel', 1, root_id, 'Échange Culturel')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('echange-culturel', 'fr', 'Échange Culturel');
        PERFORM insert_category_translations('echange-culturel', 'ar', 'تبادل ثقافي');
        PERFORM insert_category_translations('echange-culturel', 'en', 'Cultural Exchange');
        PERFORM insert_category_translations('echange-culturel', 'de', 'Kulturaustausch');
        PERFORM insert_category_translations('echange-culturel', 'es', 'Intercambio Cultural');
        PERFORM insert_category_translations('echange-culturel', 'it', 'Scambio Culturale');

            -- Level 2: echange-livres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('echange-livres', 'echange-livres', 2, l1_id, 'échange livres')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('echange-livres', 'fr', 'échange livres');
            PERFORM insert_category_translations('echange-livres', 'ar', 'تبادل الكتب');
            PERFORM insert_category_translations('echange-livres', 'en', 'books exchange');
            PERFORM insert_category_translations('echange-livres', 'de', 'Bücher tauschen');
            PERFORM insert_category_translations('echange-livres', 'es', 'intercambio de libros');
            PERFORM insert_category_translations('echange-livres', 'it', 'scambio libri');

            -- Level 2: partage-musique
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('partage-musique', 'partage-musique', 2, l1_id, 'partage musique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('partage-musique', 'fr', 'partage musique');
            PERFORM insert_category_translations('partage-musique', 'ar', 'مشاركة الموسيقى');
            PERFORM insert_category_translations('partage-musique', 'en', 'music sharing');
            PERFORM insert_category_translations('partage-musique', 'de', 'Musik teilen');
            PERFORM insert_category_translations('partage-musique', 'es', 'compartir música');
            PERFORM insert_category_translations('partage-musique', 'it', 'condivisione musica');

            -- Level 2: partage-jeux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('partage-jeux', 'partage-jeux', 2, l1_id, 'partage jeux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('partage-jeux', 'fr', 'partage jeux');
            PERFORM insert_category_translations('partage-jeux', 'ar', 'مشاركة الألعاب');
            PERFORM insert_category_translations('partage-jeux', 'en', 'games sharing');
            PERFORM insert_category_translations('partage-jeux', 'de', 'Spiele teilen');
            PERFORM insert_category_translations('partage-jeux', 'es', 'compartir juegos');
            PERFORM insert_category_translations('partage-jeux', 'it', 'condivisione giochi');

            -- Level 2: activites-communes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('activites-communes', 'activites-communes', 2, l1_id, 'activités communes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('activites-communes', 'fr', 'activités communes');
            PERFORM insert_category_translations('activites-communes', 'ar', 'أنشطة مشتركة');
            PERFORM insert_category_translations('activites-communes', 'en', 'shared activities');
            PERFORM insert_category_translations('activites-communes', 'de', 'Gemeinsame Aktivitäten');
            PERFORM insert_category_translations('activites-communes', 'es', 'actividades comunes');
            PERFORM insert_category_translations('activites-communes', 'it', 'attività comuni');

            -- Level 2: sorties-partagees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sorties-partagees', 'sorties-partagees', 2, l1_id, 'sorties partagées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sorties-partagees', 'fr', 'sorties partagées');
            PERFORM insert_category_translations('sorties-partagees', 'ar', 'خرجات مشتركة');
            PERFORM insert_category_translations('sorties-partagees', 'en', 'shared outings');
            PERFORM insert_category_translations('sorties-partagees', 'de', 'Gemeinsame Ausflüge');
            PERFORM insert_category_translations('sorties-partagees', 'es', 'salidas compartidas');
            PERFORM insert_category_translations('sorties-partagees', 'it', 'uscite condivise');

        -- Level 1: recuperation-reemploi
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('recuperation-reemploi', 'recuperation-reemploi', 1, root_id, 'Récupération & Réemploi')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('recuperation-reemploi', 'fr', 'Récupération & Réemploi');
        PERFORM insert_category_translations('recuperation-reemploi', 'ar', 'استعادة وإعادة الاستخدام');
        PERFORM insert_category_translations('recuperation-reemploi', 'en', 'Recovery & Reuse');
        PERFORM insert_category_translations('recuperation-reemploi', 'de', 'Wiedergewinnung & Wiederverwendung');
        PERFORM insert_category_translations('recuperation-reemploi', 'es', 'Recuperación & Reutilización');
        PERFORM insert_category_translations('recuperation-reemploi', 'it', 'Recupero & Riutilizzo');

            -- Level 2: recyclage-objets
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('recyclage-objets', 'recyclage-objets', 2, l1_id, 'recyclage objets')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('recyclage-objets', 'fr', 'recyclage objets');
            PERFORM insert_category_translations('recyclage-objets', 'ar', 'إعادة تدوير الأشياء');
            PERFORM insert_category_translations('recyclage-objets', 'en', 'objects recycling');
            PERFORM insert_category_translations('recyclage-objets', 'de', 'Gegenstände recyceln');
            PERFORM insert_category_translations('recyclage-objets', 'es', 'reciclaje de objetos');
            PERFORM insert_category_translations('recyclage-objets', 'it', 'riciclo oggetti');

            -- Level 2: recuperation-materiaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('recuperation-materiaux', 'recuperation-materiaux', 2, l1_id, 'récup matériaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('recuperation-materiaux', 'fr', 'récup matériaux');
            PERFORM insert_category_translations('recuperation-materiaux', 'ar', 'استعادة المواد');
            PERFORM insert_category_translations('recuperation-materiaux', 'en', 'materials recovery');
            PERFORM insert_category_translations('recuperation-materiaux', 'de', 'Materialien wiedergewinnen');
            PERFORM insert_category_translations('recuperation-materiaux', 'es', 'recuperación de materiales');
            PERFORM insert_category_translations('recuperation-materiaux', 'it', 'recupero materiali');

            -- Level 2: recuperation-meubles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('recuperation-meubles', 'recuperation-meubles', 2, l1_id, 'récup meubles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('recuperation-meubles', 'fr', 'récup meubles');
            PERFORM insert_category_translations('recuperation-meubles', 'ar', 'استعادة الأثاث');
            PERFORM insert_category_translations('recuperation-meubles', 'en', 'furniture recovery');
            PERFORM insert_category_translations('recuperation-meubles', 'de', 'Möbel wiedergewinnen');
            PERFORM insert_category_translations('recuperation-meubles', 'es', 'recuperación de muebles');
            PERFORM insert_category_translations('recuperation-meubles', 'it', 'recupero mobili');

            -- Level 2: upcycling-creatif
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('upcycling-creatif', 'upcycling-creatif', 2, l1_id, 'upcycling créatif')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('upcycling-creatif', 'fr', 'upcycling créatif');
            PERFORM insert_category_translations('upcycling-creatif', 'ar', 'تدوير إبداعي');
            PERFORM insert_category_translations('upcycling-creatif', 'en', 'creative upcycling');
            PERFORM insert_category_translations('upcycling-creatif', 'de', 'Kreatives Upcycling');
            PERFORM insert_category_translations('upcycling-creatif', 'es', 'upcycling creativo');
            PERFORM insert_category_translations('upcycling-creatif', 'it', 'upcycling creativo');
END $$;