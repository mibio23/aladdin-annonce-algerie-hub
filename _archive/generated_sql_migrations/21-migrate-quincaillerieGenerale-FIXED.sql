-- Migration: Quincaillerie Générale (Generated Recursive)
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

    -- Level 0: quincaillerie-generale
    INSERT INTO categories (id, slug, level, name)
    VALUES ('quincaillerie-generale', 'quincaillerie-generale', 0, 'Quincaillerie Générale')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 0, name = EXCLUDED.name
    RETURNING id INTO root_id;
    PERFORM insert_category_translations('quincaillerie-generale', 'fr', 'Quincaillerie Générale');
    PERFORM insert_category_translations('quincaillerie-generale', 'ar', 'العتاد العام');
    PERFORM insert_category_translations('quincaillerie-generale', 'en', 'General Hardware');
    PERFORM insert_category_translations('quincaillerie-generale', 'de', 'Eisenwaren Allgemein');
    PERFORM insert_category_translations('quincaillerie-generale', 'es', 'Ferretería General');
    PERFORM insert_category_translations('quincaillerie-generale', 'it', 'Ferramenta Generale');

        -- Level 1: outils-manuels
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('outils-manuels', 'outils-manuels', 1, root_id, 'Outils manuels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('outils-manuels', 'fr', 'Outils manuels');
        PERFORM insert_category_translations('outils-manuels', 'ar', 'أدوات يدوية');
        PERFORM insert_category_translations('outils-manuels', 'en', 'Hand Tools');
        PERFORM insert_category_translations('outils-manuels', 'de', 'Handwerkzeuge');
        PERFORM insert_category_translations('outils-manuels', 'es', 'Herramientas manuales');
        PERFORM insert_category_translations('outils-manuels', 'it', 'Utensili manuali');

            -- Level 2: tournevis-plats
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tournevis-plats', 'tournevis-plats', 2, l1_id, 'Tournevis plats')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tournevis-plats', 'fr', 'Tournevis plats');
            PERFORM insert_category_translations('tournevis-plats', 'ar', 'مفكات مسطحة');
            PERFORM insert_category_translations('tournevis-plats', 'en', 'Flat screwdrivers');
            PERFORM insert_category_translations('tournevis-plats', 'de', 'Schlitzschraubendreher');
            PERFORM insert_category_translations('tournevis-plats', 'es', 'Destornilladores planos');
            PERFORM insert_category_translations('tournevis-plats', 'it', 'Cacciaviti a taglio');

            -- Level 2: tournevis-cruciformes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tournevis-cruciformes', 'tournevis-cruciformes', 2, l1_id, 'Tournevis cruciformes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tournevis-cruciformes', 'fr', 'Tournevis cruciformes');
            PERFORM insert_category_translations('tournevis-cruciformes', 'ar', 'مفكات فيليبس');
            PERFORM insert_category_translations('tournevis-cruciformes', 'en', 'Phillips screwdrivers');
            PERFORM insert_category_translations('tournevis-cruciformes', 'de', 'Kreuzschlitzschraubendreher');
            PERFORM insert_category_translations('tournevis-cruciformes', 'es', 'Destornilladores Phillips');
            PERFORM insert_category_translations('tournevis-cruciformes', 'it', 'Cacciaviti a croce');

            -- Level 2: tournevis-de-precision
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tournevis-de-precision', 'tournevis-de-precision', 2, l1_id, 'Tournevis de précision')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tournevis-de-precision', 'fr', 'Tournevis de précision');
            PERFORM insert_category_translations('tournevis-de-precision', 'ar', 'مفكات دقيقة');
            PERFORM insert_category_translations('tournevis-de-precision', 'en', 'Precision screwdrivers');
            PERFORM insert_category_translations('tournevis-de-precision', 'de', 'Präzisionsschraubendreher');
            PERFORM insert_category_translations('tournevis-de-precision', 'es', 'Destornilladores de precisión');
            PERFORM insert_category_translations('tournevis-de-precision', 'it', 'Cacciaviti di precisione');

            -- Level 2: marteaux-de-menuisier
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('marteaux-de-menuisier', 'marteaux-de-menuisier', 2, l1_id, 'Marteaux de menuisier')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('marteaux-de-menuisier', 'fr', 'Marteaux de menuisier');
            PERFORM insert_category_translations('marteaux-de-menuisier', 'ar', 'مطارق نجار');
            PERFORM insert_category_translations('marteaux-de-menuisier', 'en', 'Carpenter hammers');
            PERFORM insert_category_translations('marteaux-de-menuisier', 'de', 'Zimmermannshämmer');
            PERFORM insert_category_translations('marteaux-de-menuisier', 'es', 'Martillos de carpintero');
            PERFORM insert_category_translations('marteaux-de-menuisier', 'it', 'Martelli da carpentiere');

            -- Level 2: marteaux-de-macon
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('marteaux-de-macon', 'marteaux-de-macon', 2, l1_id, 'Marteaux de maçon')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('marteaux-de-macon', 'fr', 'Marteaux de maçon');
            PERFORM insert_category_translations('marteaux-de-macon', 'ar', 'مطارق بناء');
            PERFORM insert_category_translations('marteaux-de-macon', 'en', 'Mason hammers');
            PERFORM insert_category_translations('marteaux-de-macon', 'de', 'Maurerhämmer');
            PERFORM insert_category_translations('marteaux-de-macon', 'es', 'Martillos de albañil');
            PERFORM insert_category_translations('marteaux-de-macon', 'it', 'Martelli da muratore');

            -- Level 2: pinces-universelles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pinces-universelles', 'pinces-universelles', 2, l1_id, 'Pinces universelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pinces-universelles', 'fr', 'Pinces universelles');
            PERFORM insert_category_translations('pinces-universelles', 'ar', 'كماشات متعددة');
            PERFORM insert_category_translations('pinces-universelles', 'en', 'Universal pliers');
            PERFORM insert_category_translations('pinces-universelles', 'de', 'Universalzangen');
            PERFORM insert_category_translations('pinces-universelles', 'es', 'Alicates universales');
            PERFORM insert_category_translations('pinces-universelles', 'it', 'Pinze universali');

            -- Level 2: pinces-coupantes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pinces-coupantes', 'pinces-coupantes', 2, l1_id, 'Pinces coupantes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pinces-coupantes', 'fr', 'Pinces coupantes');
            PERFORM insert_category_translations('pinces-coupantes', 'ar', 'كماشات قطع');
            PERFORM insert_category_translations('pinces-coupantes', 'en', 'Cutting pliers');
            PERFORM insert_category_translations('pinces-coupantes', 'de', 'Seitenschneider');
            PERFORM insert_category_translations('pinces-coupantes', 'es', 'Alicates de corte');
            PERFORM insert_category_translations('pinces-coupantes', 'it', 'Pinze tagliatrici');

            -- Level 2: pinces-multiprises
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pinces-multiprises', 'pinces-multiprises', 2, l1_id, 'Pinces multiprises')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pinces-multiprises', 'fr', 'Pinces multiprises');
            PERFORM insert_category_translations('pinces-multiprises', 'ar', 'كماشات قابلة للتعديل');
            PERFORM insert_category_translations('pinces-multiprises', 'en', 'Adjustable pliers');
            PERFORM insert_category_translations('pinces-multiprises', 'de', 'Wasserpumpenzangen');
            PERFORM insert_category_translations('pinces-multiprises', 'es', 'Alicates ajustables');
            PERFORM insert_category_translations('pinces-multiprises', 'it', 'Pinze regolabili');

            -- Level 2: cles-plates
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cles-plates', 'cles-plates', 2, l1_id, 'Clés plates')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cles-plates', 'fr', 'Clés plates');
            PERFORM insert_category_translations('cles-plates', 'ar', 'مفاتيح مسطحة');
            PERFORM insert_category_translations('cles-plates', 'en', 'Open-end wrenches');
            PERFORM insert_category_translations('cles-plates', 'de', 'Maulschlüssel');
            PERFORM insert_category_translations('cles-plates', 'es', 'Llaves planas');
            PERFORM insert_category_translations('cles-plates', 'it', 'Chiavi fisse');

            -- Level 2: cles-mixtes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cles-mixtes', 'cles-mixtes', 2, l1_id, 'Clés mixtes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cles-mixtes', 'fr', 'Clés mixtes');
            PERFORM insert_category_translations('cles-mixtes', 'ar', 'مفاتيح مركبة');
            PERFORM insert_category_translations('cles-mixtes', 'en', 'Combination wrenches');
            PERFORM insert_category_translations('cles-mixtes', 'de', 'Kombischlüssel');
            PERFORM insert_category_translations('cles-mixtes', 'es', 'Llaves combinadas');
            PERFORM insert_category_translations('cles-mixtes', 'it', 'Chiavi combinate');

            -- Level 2: cle-a-molette
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cle-a-molette', 'cle-a-molette', 2, l1_id, 'Clé à molette')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cle-a-molette', 'fr', 'Clé à molette');
            PERFORM insert_category_translations('cle-a-molette', 'ar', 'مفتاح قابل للتعديل');
            PERFORM insert_category_translations('cle-a-molette', 'en', 'Adjustable wrench');
            PERFORM insert_category_translations('cle-a-molette', 'de', 'Rollgabelschlüssel');
            PERFORM insert_category_translations('cle-a-molette', 'es', 'Llave inglesa');
            PERFORM insert_category_translations('cle-a-molette', 'it', 'Chiave regolabile');

            -- Level 2: cles-allen
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cles-allen', 'cles-allen', 2, l1_id, 'Clés Allen')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cles-allen', 'fr', 'Clés Allen');
            PERFORM insert_category_translations('cles-allen', 'ar', 'مفاتيح ألن');
            PERFORM insert_category_translations('cles-allen', 'en', 'Allen keys');
            PERFORM insert_category_translations('cles-allen', 'de', 'Innensechskantschlüssel');
            PERFORM insert_category_translations('cles-allen', 'es', 'Llaves Allen');
            PERFORM insert_category_translations('cles-allen', 'it', 'Chiavi Allen');

            -- Level 2: scies-manuelles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('scies-manuelles', 'scies-manuelles', 2, l1_id, 'Scies manuelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('scies-manuelles', 'fr', 'Scies manuelles');
            PERFORM insert_category_translations('scies-manuelles', 'ar', 'مناشير يدوية');
            PERFORM insert_category_translations('scies-manuelles', 'en', 'Hand saws');
            PERFORM insert_category_translations('scies-manuelles', 'de', 'Handsägen');
            PERFORM insert_category_translations('scies-manuelles', 'es', 'Sierras manuales');
            PERFORM insert_category_translations('scies-manuelles', 'it', 'Seghe manuali');

            -- Level 2: scies-a-metaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('scies-a-metaux', 'scies-a-metaux', 2, l1_id, 'Scies à métaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('scies-a-metaux', 'fr', 'Scies à métaux');
            PERFORM insert_category_translations('scies-a-metaux', 'ar', 'مناشير معدنية');
            PERFORM insert_category_translations('scies-a-metaux', 'en', 'Hacksaws');
            PERFORM insert_category_translations('scies-a-metaux', 'de', 'Metallsägen');
            PERFORM insert_category_translations('scies-a-metaux', 'es', 'Sierras para metal');
            PERFORM insert_category_translations('scies-a-metaux', 'it', 'Seghe per metallo');

            -- Level 2: cutters
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cutters', 'cutters', 2, l1_id, 'Cutters')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cutters', 'fr', 'Cutters');
            PERFORM insert_category_translations('cutters', 'ar', 'قطاعات');
            PERFORM insert_category_translations('cutters', 'en', 'Utility knives');
            PERFORM insert_category_translations('cutters', 'de', 'Cuttermesser');
            PERFORM insert_category_translations('cutters', 'es', 'Cúteres');
            PERFORM insert_category_translations('cutters', 'it', 'Taglierini');

            -- Level 2: grattoirs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('grattoirs', 'grattoirs', 2, l1_id, 'Grattoirs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('grattoirs', 'fr', 'Grattoirs');
            PERFORM insert_category_translations('grattoirs', 'ar', 'كاشطات');
            PERFORM insert_category_translations('grattoirs', 'en', 'Scrapers');
            PERFORM insert_category_translations('grattoirs', 'de', 'Schaber');
            PERFORM insert_category_translations('grattoirs', 'es', 'Raspadores');
            PERFORM insert_category_translations('grattoirs', 'it', 'Raschiatori');

            -- Level 2: ciseaux-a-bois
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ciseaux-a-bois', 'ciseaux-a-bois', 2, l1_id, 'Ciseaux à bois')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ciseaux-a-bois', 'fr', 'Ciseaux à bois');
            PERFORM insert_category_translations('ciseaux-a-bois', 'ar', 'إزميل خشب');
            PERFORM insert_category_translations('ciseaux-a-bois', 'en', 'Wood chisels');
            PERFORM insert_category_translations('ciseaux-a-bois', 'de', 'Holzmeißel');
            PERFORM insert_category_translations('ciseaux-a-bois', 'es', 'Cinceles de madera');
            PERFORM insert_category_translations('ciseaux-a-bois', 'it', 'Scalpelli per legno');

            -- Level 2: jeux-de-douilles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jeux-de-douilles', 'jeux-de-douilles', 2, l1_id, 'Jeux de douilles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('jeux-de-douilles', 'fr', 'Jeux de douilles');
            PERFORM insert_category_translations('jeux-de-douilles', 'ar', 'طقم رؤوس');
            PERFORM insert_category_translations('jeux-de-douilles', 'en', 'Socket sets');
            PERFORM insert_category_translations('jeux-de-douilles', 'de', 'Steckschlüsselsätze');
            PERFORM insert_category_translations('jeux-de-douilles', 'es', 'Juegos de vasos');
            PERFORM insert_category_translations('jeux-de-douilles', 'it', 'Set di bussole');

            -- Level 2: cliquets
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cliquets', 'cliquets', 2, l1_id, 'Cliquets')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cliquets', 'fr', 'Cliquets');
            PERFORM insert_category_translations('cliquets', 'ar', 'مفاتيح ترّاس');
            PERFORM insert_category_translations('cliquets', 'en', 'Ratchets');
            PERFORM insert_category_translations('cliquets', 'de', 'Ratschen');
            PERFORM insert_category_translations('cliquets', 'es', 'Carracas');
            PERFORM insert_category_translations('cliquets', 'it', 'Cricchetti');

            -- Level 2: niveaux-a-bulle
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('niveaux-a-bulle', 'niveaux-a-bulle', 2, l1_id, 'Niveaux à bulle')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('niveaux-a-bulle', 'fr', 'Niveaux à bulle');
            PERFORM insert_category_translations('niveaux-a-bulle', 'ar', 'مستويات فقاعات');
            PERFORM insert_category_translations('niveaux-a-bulle', 'en', 'Spirit levels');
            PERFORM insert_category_translations('niveaux-a-bulle', 'de', 'Wasserwaagen');
            PERFORM insert_category_translations('niveaux-a-bulle', 'es', 'Niveles de burbuja');
            PERFORM insert_category_translations('niveaux-a-bulle', 'it', 'Livelle a bolla');

            -- Level 2: serre-joints
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('serre-joints', 'serre-joints', 2, l1_id, 'Serre-joints')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('serre-joints', 'fr', 'Serre-joints');
            PERFORM insert_category_translations('serre-joints', 'ar', 'مماسكات');
            PERFORM insert_category_translations('serre-joints', 'en', 'Clamps');
            PERFORM insert_category_translations('serre-joints', 'de', 'Schraubzwingen');
            PERFORM insert_category_translations('serre-joints', 'es', 'Sargentos');
            PERFORM insert_category_translations('serre-joints', 'it', 'Morsetti');

            -- Level 2: limes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('limes', 'limes', 2, l1_id, 'Limes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('limes', 'fr', 'Limes');
            PERFORM insert_category_translations('limes', 'ar', 'مبارد');
            PERFORM insert_category_translations('limes', 'en', 'Files');
            PERFORM insert_category_translations('limes', 'de', 'Feilen');
            PERFORM insert_category_translations('limes', 'es', 'Limas');
            PERFORM insert_category_translations('limes', 'it', 'Lime');

            -- Level 2: rabots
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('rabots', 'rabots', 2, l1_id, 'Rabots')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('rabots', 'fr', 'Rabots');
            PERFORM insert_category_translations('rabots', 'ar', 'مقاشط');
            PERFORM insert_category_translations('rabots', 'en', 'Planes');
            PERFORM insert_category_translations('rabots', 'de', 'Hobel');
            PERFORM insert_category_translations('rabots', 'es', 'Cepillos');
            PERFORM insert_category_translations('rabots', 'it', 'Pialle');

            -- Level 2: maillets
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('maillets', 'maillets', 2, l1_id, 'Maillets')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('maillets', 'fr', 'Maillets');
            PERFORM insert_category_translations('maillets', 'ar', 'مطارق مطاط');
            PERFORM insert_category_translations('maillets', 'en', 'Mallets');
            PERFORM insert_category_translations('maillets', 'de', 'Schonhämmer');
            PERFORM insert_category_translations('maillets', 'es', 'Mazas');
            PERFORM insert_category_translations('maillets', 'it', 'Mazzuoli');

            -- Level 2: scies-egoines
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('scies-egoines', 'scies-egoines', 2, l1_id, 'Scies égoïnes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('scies-egoines', 'fr', 'Scies égoïnes');
            PERFORM insert_category_translations('scies-egoines', 'ar', 'مناشير ألواح');
            PERFORM insert_category_translations('scies-egoines', 'en', 'Panel saws');
            PERFORM insert_category_translations('scies-egoines', 'de', 'Fuchsschwänze');
            PERFORM insert_category_translations('scies-egoines', 'es', 'Sierras de panel');
            PERFORM insert_category_translations('scies-egoines', 'it', 'Seghe a panele');

            -- Level 2: scies-japonaises
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('scies-japonaises', 'scies-japonaises', 2, l1_id, 'Scies japonaises')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('scies-japonaises', 'fr', 'Scies japonaises');
            PERFORM insert_category_translations('scies-japonaises', 'ar', 'مناشير يابانية');
            PERFORM insert_category_translations('scies-japonaises', 'en', 'Japanese saws');
            PERFORM insert_category_translations('scies-japonaises', 'de', 'Japansägen');
            PERFORM insert_category_translations('scies-japonaises', 'es', 'Sierras japonesas');
            PERFORM insert_category_translations('scies-japonaises', 'it', 'Seghe giapponesi');

        -- Level 1: outils-electriques-electroportatifs
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('outils-electriques-electroportatifs', 'outils-electriques-electroportatifs', 1, root_id, 'Outils électriques & électroportatifs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('outils-electriques-electroportatifs', 'fr', 'Outils électriques & électroportatifs');
        PERFORM insert_category_translations('outils-electriques-electroportatifs', 'ar', 'أدوات كهربائية');
        PERFORM insert_category_translations('outils-electriques-electroportatifs', 'en', 'Power & Cordless Tools');
        PERFORM insert_category_translations('outils-electriques-electroportatifs', 'de', 'Elektro- & Akkuwerkzeuge');
        PERFORM insert_category_translations('outils-electriques-electroportatifs', 'es', 'Herramientas eléctricas');
        PERFORM insert_category_translations('outils-electriques-electroportatifs', 'it', 'Utensili elettrici');

            -- Level 2: perceuses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('perceuses', 'perceuses', 2, l1_id, 'Perceuses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('perceuses', 'fr', 'Perceuses');
            PERFORM insert_category_translations('perceuses', 'ar', 'مثاقب');
            PERFORM insert_category_translations('perceuses', 'en', 'Drills');
            PERFORM insert_category_translations('perceuses', 'de', 'Bohrmaschinen');
            PERFORM insert_category_translations('perceuses', 'es', 'Taladros');
            PERFORM insert_category_translations('perceuses', 'it', 'Trapani');

            -- Level 2: perceuses-a-percussion
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('perceuses-a-percussion', 'perceuses-a-percussion', 2, l1_id, 'Perceuses à percussion')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('perceuses-a-percussion', 'fr', 'Perceuses à percussion');
            PERFORM insert_category_translations('perceuses-a-percussion', 'ar', 'مثاقب مطرقة');
            PERFORM insert_category_translations('perceuses-a-percussion', 'en', 'Hammer drills');
            PERFORM insert_category_translations('perceuses-a-percussion', 'de', 'Schlagbohrmaschinen');
            PERFORM insert_category_translations('perceuses-a-percussion', 'es', 'Taladros de percusión');
            PERFORM insert_category_translations('perceuses-a-percussion', 'it', 'Trapani a percussione');

            -- Level 2: perceuses-sans-fil
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('perceuses-sans-fil', 'perceuses-sans-fil', 2, l1_id, 'Perceuses sans fil')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('perceuses-sans-fil', 'fr', 'Perceuses sans fil');
            PERFORM insert_category_translations('perceuses-sans-fil', 'ar', 'مثاقب لاسلكية');
            PERFORM insert_category_translations('perceuses-sans-fil', 'en', 'Cordless drills');
            PERFORM insert_category_translations('perceuses-sans-fil', 'de', 'Akkubohrer');
            PERFORM insert_category_translations('perceuses-sans-fil', 'es', 'Taladros inalámbricos');
            PERFORM insert_category_translations('perceuses-sans-fil', 'it', 'Trapani a batteria');

            -- Level 2: visseuses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('visseuses', 'visseuses', 2, l1_id, 'Visseuses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('visseuses', 'fr', 'Visseuses');
            PERFORM insert_category_translations('visseuses', 'ar', 'مفكات كهربائية');
            PERFORM insert_category_translations('visseuses', 'en', 'Screwdrivers');
            PERFORM insert_category_translations('visseuses', 'de', 'Schrauber');
            PERFORM insert_category_translations('visseuses', 'es', 'Atornilladores');
            PERFORM insert_category_translations('visseuses', 'it', 'Avvitatori');

            -- Level 2: visseuses-a-choc
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('visseuses-a-choc', 'visseuses-a-choc', 2, l1_id, 'Visseuses à choc')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('visseuses-a-choc', 'fr', 'Visseuses à choc');
            PERFORM insert_category_translations('visseuses-a-choc', 'ar', 'مفكات صدمة');
            PERFORM insert_category_translations('visseuses-a-choc', 'en', 'Impact drivers');
            PERFORM insert_category_translations('visseuses-a-choc', 'de', 'Schlagschrauber');
            PERFORM insert_category_translations('visseuses-a-choc', 'es', 'Atornilladores de impacto');
            PERFORM insert_category_translations('visseuses-a-choc', 'it', 'Avvitatori a impulsi');

            -- Level 2: meuleuses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('meuleuses', 'meuleuses', 2, l1_id, 'Meuleuses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('meuleuses', 'fr', 'Meuleuses');
            PERFORM insert_category_translations('meuleuses', 'ar', 'جلاخات');
            PERFORM insert_category_translations('meuleuses', 'en', 'Grinders');
            PERFORM insert_category_translations('meuleuses', 'de', 'Schleifer');
            PERFORM insert_category_translations('meuleuses', 'es', 'Amoladoras');
            PERFORM insert_category_translations('meuleuses', 'it', 'Smerigliatrici');

            -- Level 2: meuleuses-d-angle
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('meuleuses-d-angle', 'meuleuses-d-angle', 2, l1_id, 'Meuleuses d’angle')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('meuleuses-d-angle', 'fr', 'Meuleuses d’angle');
            PERFORM insert_category_translations('meuleuses-d-angle', 'ar', 'جلاخات زاوية');
            PERFORM insert_category_translations('meuleuses-d-angle', 'en', 'Angle grinders');
            PERFORM insert_category_translations('meuleuses-d-angle', 'de', 'Winkelschleifer');
            PERFORM insert_category_translations('meuleuses-d-angle', 'es', 'Amoladoras angulares');
            PERFORM insert_category_translations('meuleuses-d-angle', 'it', 'Smerigliatrici angolari');

            -- Level 2: scies-electriques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('scies-electriques', 'scies-electriques', 2, l1_id, 'Scies électriques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('scies-electriques', 'fr', 'Scies électriques');
            PERFORM insert_category_translations('scies-electriques', 'ar', 'مناشير كهربائية');
            PERFORM insert_category_translations('scies-electriques', 'en', 'Electric saws');
            PERFORM insert_category_translations('scies-electriques', 'de', 'Elektrische Sägen');
            PERFORM insert_category_translations('scies-electriques', 'es', 'Sierras eléctricas');
            PERFORM insert_category_translations('scies-electriques', 'it', 'Seghe elettriche');

            -- Level 2: scies-circulaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('scies-circulaires', 'scies-circulaires', 2, l1_id, 'Scies circulaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('scies-circulaires', 'fr', 'Scies circulaires');
            PERFORM insert_category_translations('scies-circulaires', 'ar', 'مناشير دائرية');
            PERFORM insert_category_translations('scies-circulaires', 'en', 'Circular saws');
            PERFORM insert_category_translations('scies-circulaires', 'de', 'Kreissägen');
            PERFORM insert_category_translations('scies-circulaires', 'es', 'Sierras circulares');
            PERFORM insert_category_translations('scies-circulaires', 'it', 'Seghe circolari');

            -- Level 2: scies-sauteuses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('scies-sauteuses', 'scies-sauteuses', 2, l1_id, 'Scies sauteuses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('scies-sauteuses', 'fr', 'Scies sauteuses');
            PERFORM insert_category_translations('scies-sauteuses', 'ar', 'مناشير ترددية');
            PERFORM insert_category_translations('scies-sauteuses', 'en', 'Jigsaws');
            PERFORM insert_category_translations('scies-sauteuses', 'de', 'Stichsägen');
            PERFORM insert_category_translations('scies-sauteuses', 'es', 'Sierras de calar');
            PERFORM insert_category_translations('scies-sauteuses', 'it', 'Seghe a traforo');

            -- Level 2: scies-sabres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('scies-sabres', 'scies-sabres', 2, l1_id, 'Scies sabres')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('scies-sabres', 'fr', 'Scies sabres');
            PERFORM insert_category_translations('scies-sabres', 'ar', 'مناشير سيف');
            PERFORM insert_category_translations('scies-sabres', 'en', 'Reciprocating saws');
            PERFORM insert_category_translations('scies-sabres', 'de', 'Säbelsägen');
            PERFORM insert_category_translations('scies-sabres', 'es', 'Sierras sable');
            PERFORM insert_category_translations('scies-sabres', 'it', 'Seghe a sciabola');

            -- Level 2: ponceuses-orbitales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ponceuses-orbitales', 'ponceuses-orbitales', 2, l1_id, 'Ponceuses orbitales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ponceuses-orbitales', 'fr', 'Ponceuses orbitales');
            PERFORM insert_category_translations('ponceuses-orbitales', 'ar', 'صنّافات مدارية');
            PERFORM insert_category_translations('ponceuses-orbitales', 'en', 'Orbital sanders');
            PERFORM insert_category_translations('ponceuses-orbitales', 'de', 'Exzenterschleifer');
            PERFORM insert_category_translations('ponceuses-orbitales', 'es', 'Lijadoras orbitales');
            PERFORM insert_category_translations('ponceuses-orbitales', 'it', 'Levigatrici orbitali');

            -- Level 2: ponceuses-vibrantes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ponceuses-vibrantes', 'ponceuses-vibrantes', 2, l1_id, 'Ponceuses vibrantes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ponceuses-vibrantes', 'fr', 'Ponceuses vibrantes');
            PERFORM insert_category_translations('ponceuses-vibrantes', 'ar', 'صنّافات اهتزازية');
            PERFORM insert_category_translations('ponceuses-vibrantes', 'en', 'Detail sanders');
            PERFORM insert_category_translations('ponceuses-vibrantes', 'de', 'Vibrationsschleifer');
            PERFORM insert_category_translations('ponceuses-vibrantes', 'es', 'Lijadoras vibratorias');
            PERFORM insert_category_translations('ponceuses-vibrantes', 'it', 'Levigatrici vibratorie');

            -- Level 2: ponceuses-a-bande
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ponceuses-a-bande', 'ponceuses-a-bande', 2, l1_id, 'Ponceuses à bande')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ponceuses-a-bande', 'fr', 'Ponceuses à bande');
            PERFORM insert_category_translations('ponceuses-a-bande', 'ar', 'صنّافات شريطية');
            PERFORM insert_category_translations('ponceuses-a-bande', 'en', 'Belt sanders');
            PERFORM insert_category_translations('ponceuses-a-bande', 'de', 'Bandschleifer');
            PERFORM insert_category_translations('ponceuses-a-bande', 'es', 'Lijadoras de banda');
            PERFORM insert_category_translations('ponceuses-a-bande', 'it', 'Levigatrici a nastro');

            -- Level 2: marteaux-perforateurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('marteaux-perforateurs', 'marteaux-perforateurs', 2, l1_id, 'Marteaux-perforateurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('marteaux-perforateurs', 'fr', 'Marteaux-perforateurs');
            PERFORM insert_category_translations('marteaux-perforateurs', 'ar', 'مطارق دوارة');
            PERFORM insert_category_translations('marteaux-perforateurs', 'en', 'Rotary hammers');
            PERFORM insert_category_translations('marteaux-perforateurs', 'de', 'Bohrhämmer');
            PERFORM insert_category_translations('marteaux-perforateurs', 'es', 'Martillos perforadores');
            PERFORM insert_category_translations('marteaux-perforateurs', 'it', 'Martelli perforatori');

            -- Level 2: defonceuses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('defonceuses', 'defonceuses', 2, l1_id, 'Défonceuses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('defonceuses', 'fr', 'Défonceuses');
            PERFORM insert_category_translations('defonceuses', 'ar', 'موجهات');
            PERFORM insert_category_translations('defonceuses', 'en', 'Routers');
            PERFORM insert_category_translations('defonceuses', 'de', 'Fräsen');
            PERFORM insert_category_translations('defonceuses', 'es', 'Fresadoras');
            PERFORM insert_category_translations('defonceuses', 'it', 'Fresatrici');

            -- Level 2: pistolets-a-chaleur
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pistolets-a-chaleur', 'pistolets-a-chaleur', 2, l1_id, 'Pistolets à chaleur')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pistolets-a-chaleur', 'fr', 'Pistolets à chaleur');
            PERFORM insert_category_translations('pistolets-a-chaleur', 'ar', 'مسدسات حرارة');
            PERFORM insert_category_translations('pistolets-a-chaleur', 'en', 'Heat guns');
            PERFORM insert_category_translations('pistolets-a-chaleur', 'de', 'Heißluftgebläse');
            PERFORM insert_category_translations('pistolets-a-chaleur', 'es', 'Pistolas de aire caliente');
            PERFORM insert_category_translations('pistolets-a-chaleur', 'it', 'Pistole termiche');

            -- Level 2: pistolets-a-colle
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pistolets-a-colle', 'pistolets-a-colle', 2, l1_id, 'Pistolets à colle')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pistolets-a-colle', 'fr', 'Pistolets à colle');
            PERFORM insert_category_translations('pistolets-a-colle', 'ar', 'مسدسات غراء');
            PERFORM insert_category_translations('pistolets-a-colle', 'en', 'Glue guns');
            PERFORM insert_category_translations('pistolets-a-colle', 'de', 'Heißklebepistolen');
            PERFORM insert_category_translations('pistolets-a-colle', 'es', 'Pistolas de pegamento');
            PERFORM insert_category_translations('pistolets-a-colle', 'it', 'Pistole per colla');

            -- Level 2: agrafeuses-electriques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('agrafeuses-electriques', 'agrafeuses-electriques', 2, l1_id, 'Agrafeuses électriques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('agrafeuses-electriques', 'fr', 'Agrafeuses électriques');
            PERFORM insert_category_translations('agrafeuses-electriques', 'ar', 'دبّاسات كهربائية');
            PERFORM insert_category_translations('agrafeuses-electriques', 'en', 'Electric staplers');
            PERFORM insert_category_translations('agrafeuses-electriques', 'de', 'Elektrotacker');
            PERFORM insert_category_translations('agrafeuses-electriques', 'es', 'Grapadoras eléctricas');
            PERFORM insert_category_translations('agrafeuses-electriques', 'it', 'Graffatrici elettriche');

            -- Level 2: decoupeurs-multifonctions
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('decoupeurs-multifonctions', 'decoupeurs-multifonctions', 2, l1_id, 'Découpeurs multifonctions')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('decoupeurs-multifonctions', 'fr', 'Découpeurs multifonctions');
            PERFORM insert_category_translations('decoupeurs-multifonctions', 'ar', 'قواطع متعددة');
            PERFORM insert_category_translations('decoupeurs-multifonctions', 'en', 'Multi-cutters');
            PERFORM insert_category_translations('decoupeurs-multifonctions', 'de', 'Multifunktionsschneider');
            PERFORM insert_category_translations('decoupeurs-multifonctions', 'es', 'Multiherramientas');
            PERFORM insert_category_translations('decoupeurs-multifonctions', 'it', 'Multitools');

        -- Level 1: materiel-de-fixation
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('materiel-de-fixation', 'materiel-de-fixation', 1, root_id, 'Matériel de fixation')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('materiel-de-fixation', 'fr', 'Matériel de fixation');
        PERFORM insert_category_translations('materiel-de-fixation', 'ar', 'مواد التثبيت');
        PERFORM insert_category_translations('materiel-de-fixation', 'en', 'Fasteners');
        PERFORM insert_category_translations('materiel-de-fixation', 'de', 'Befestigungsmaterial');
        PERFORM insert_category_translations('materiel-de-fixation', 'es', 'Fijaciones');
        PERFORM insert_category_translations('materiel-de-fixation', 'it', 'Fissaggi');

            -- Level 2: vis-bois
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vis-bois', 'vis-bois', 2, l1_id, 'Vis bois')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('vis-bois', 'fr', 'Vis bois');
            PERFORM insert_category_translations('vis-bois', 'ar', 'مسامير خشب');
            PERFORM insert_category_translations('vis-bois', 'en', 'Wood screws');
            PERFORM insert_category_translations('vis-bois', 'de', 'Holzschrauben');
            PERFORM insert_category_translations('vis-bois', 'es', 'Tornillos para madera');
            PERFORM insert_category_translations('vis-bois', 'it', 'Viti per legno');

            -- Level 2: vis-metal
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vis-metal', 'vis-metal', 2, l1_id, 'Vis métal')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('vis-metal', 'fr', 'Vis métal');
            PERFORM insert_category_translations('vis-metal', 'ar', 'مسامير معدن');
            PERFORM insert_category_translations('vis-metal', 'en', 'Metal screws');
            PERFORM insert_category_translations('vis-metal', 'de', 'Metallschrauben');
            PERFORM insert_category_translations('vis-metal', 'es', 'Tornillos para metal');
            PERFORM insert_category_translations('vis-metal', 'it', 'Viti per metallo');

            -- Level 2: vis-auto-perceuses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vis-auto-perceuses', 'vis-auto-perceuses', 2, l1_id, 'Vis auto-perceuses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('vis-auto-perceuses', 'fr', 'Vis auto-perceuses');
            PERFORM insert_category_translations('vis-auto-perceuses', 'ar', 'مسامير ذاتية الثقب');
            PERFORM insert_category_translations('vis-auto-perceuses', 'en', 'Self-drilling screws');
            PERFORM insert_category_translations('vis-auto-perceuses', 'de', 'Selbstbohrende Schrauben');
            PERFORM insert_category_translations('vis-auto-perceuses', 'es', 'Tornillos autoperforantes');
            PERFORM insert_category_translations('vis-auto-perceuses', 'it', 'Viti autofilettanti');

            -- Level 2: vis-placo
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vis-placo', 'vis-placo', 2, l1_id, 'Vis placo')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('vis-placo', 'fr', 'Vis placo');
            PERFORM insert_category_translations('vis-placo', 'ar', 'مسامير جبس');
            PERFORM insert_category_translations('vis-placo', 'en', 'Drywall screws');
            PERFORM insert_category_translations('vis-placo', 'de', 'Gipskartonschrauben');
            PERFORM insert_category_translations('vis-placo', 'es', 'Tornillos para pladur');
            PERFORM insert_category_translations('vis-placo', 'it', 'Viti cartongesso');

            -- Level 2: boulons
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('boulons', 'boulons', 2, l1_id, 'Boulons')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('boulons', 'fr', 'Boulons');
            PERFORM insert_category_translations('boulons', 'ar', 'براغي');
            PERFORM insert_category_translations('boulons', 'en', 'Bolts');
            PERFORM insert_category_translations('boulons', 'de', 'Bolzen');
            PERFORM insert_category_translations('boulons', 'es', 'Pernos');
            PERFORM insert_category_translations('boulons', 'it', 'Bulloni');

            -- Level 2: ecrous
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ecrous', 'ecrous', 2, l1_id, 'Écrous')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ecrous', 'fr', 'Écrous');
            PERFORM insert_category_translations('ecrous', 'ar', 'صواميل');
            PERFORM insert_category_translations('ecrous', 'en', 'Nuts');
            PERFORM insert_category_translations('ecrous', 'de', 'Muttern');
            PERFORM insert_category_translations('ecrous', 'es', 'Tuercas');
            PERFORM insert_category_translations('ecrous', 'it', 'Dadi');

            -- Level 2: rondelles-plates
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('rondelles-plates', 'rondelles-plates', 2, l1_id, 'Rondelles plates')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('rondelles-plates', 'fr', 'Rondelles plates');
            PERFORM insert_category_translations('rondelles-plates', 'ar', 'وردات مسطحة');
            PERFORM insert_category_translations('rondelles-plates', 'en', 'Flat washers');
            PERFORM insert_category_translations('rondelles-plates', 'de', 'Scheiben');
            PERFORM insert_category_translations('rondelles-plates', 'es', 'Arandelas planas');
            PERFORM insert_category_translations('rondelles-plates', 'it', 'Rondelle');

            -- Level 2: rondelles-frein
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('rondelles-frein', 'rondelles-frein', 2, l1_id, 'Rondelles frein')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('rondelles-frein', 'fr', 'Rondelles frein');
            PERFORM insert_category_translations('rondelles-frein', 'ar', 'وردات زنبركية');
            PERFORM insert_category_translations('rondelles-frein', 'en', 'Lock washers');
            PERFORM insert_category_translations('rondelles-frein', 'de', 'Federringe');
            PERFORM insert_category_translations('rondelles-frein', 'es', 'Arandelas Grower');
            PERFORM insert_category_translations('rondelles-frein', 'it', 'Rondelle Grower');

            -- Level 2: chevilles-classiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chevilles-classiques', 'chevilles-classiques', 2, l1_id, 'Chevilles classiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chevilles-classiques', 'fr', 'Chevilles classiques');
            PERFORM insert_category_translations('chevilles-classiques', 'ar', 'بلاكات عادية');
            PERFORM insert_category_translations('chevilles-classiques', 'en', 'Standard plugs');
            PERFORM insert_category_translations('chevilles-classiques', 'de', 'Standarddübel');
            PERFORM insert_category_translations('chevilles-classiques', 'es', 'Tacos estándar');
            PERFORM insert_category_translations('chevilles-classiques', 'it', 'Tasselli standard');

            -- Level 2: chevilles-molly
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chevilles-molly', 'chevilles-molly', 2, l1_id, 'Chevilles Molly')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chevilles-molly', 'fr', 'Chevilles Molly');
            PERFORM insert_category_translations('chevilles-molly', 'ar', 'بلاكات مولّي');
            PERFORM insert_category_translations('chevilles-molly', 'en', 'Molly anchors');
            PERFORM insert_category_translations('chevilles-molly', 'de', 'Mollydübel');
            PERFORM insert_category_translations('chevilles-molly', 'es', 'Tacos Molly');
            PERFORM insert_category_translations('chevilles-molly', 'it', 'Tasselli Molly');

            -- Level 2: chevilles-metalliques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chevilles-metalliques', 'chevilles-metalliques', 2, l1_id, 'Chevilles métalliques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chevilles-metalliques', 'fr', 'Chevilles métalliques');
            PERFORM insert_category_translations('chevilles-metalliques', 'ar', 'بلاكات معدنية');
            PERFORM insert_category_translations('chevilles-metalliques', 'en', 'Metal anchors');
            PERFORM insert_category_translations('chevilles-metalliques', 'de', 'Metalldübel');
            PERFORM insert_category_translations('chevilles-metalliques', 'es', 'Tacos metálicos');
            PERFORM insert_category_translations('chevilles-metalliques', 'it', 'Tasselli metallici');

            -- Level 2: chevilles-chimiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chevilles-chimiques', 'chevilles-chimiques', 2, l1_id, 'Chevilles chimiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chevilles-chimiques', 'fr', 'Chevilles chimiques');
            PERFORM insert_category_translations('chevilles-chimiques', 'ar', 'بلاكات كيميائية');
            PERFORM insert_category_translations('chevilles-chimiques', 'en', 'Chemical anchors');
            PERFORM insert_category_translations('chevilles-chimiques', 'de', 'Chemische Dübel');
            PERFORM insert_category_translations('chevilles-chimiques', 'es', 'Anclajes químicos');
            PERFORM insert_category_translations('chevilles-chimiques', 'it', 'Ancoraggi chimici');

            -- Level 2: rivets
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('rivets', 'rivets', 2, l1_id, 'Rivets')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('rivets', 'fr', 'Rivets');
            PERFORM insert_category_translations('rivets', 'ar', 'مسامير برشام');
            PERFORM insert_category_translations('rivets', 'en', 'Rivets');
            PERFORM insert_category_translations('rivets', 'de', 'Nieten');
            PERFORM insert_category_translations('rivets', 'es', 'Remaches');
            PERFORM insert_category_translations('rivets', 'it', 'Rivetti');

            -- Level 2: clous
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('clous', 'clous', 2, l1_id, 'Clous')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('clous', 'fr', 'Clous');
            PERFORM insert_category_translations('clous', 'ar', 'مسامير');
            PERFORM insert_category_translations('clous', 'en', 'Nails');
            PERFORM insert_category_translations('clous', 'de', 'Nägel');
            PERFORM insert_category_translations('clous', 'es', 'Clavos');
            PERFORM insert_category_translations('clous', 'it', 'Chiodi');

            -- Level 2: pointes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pointes', 'pointes', 2, l1_id, 'Pointes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pointes', 'fr', 'Pointes');
            PERFORM insert_category_translations('pointes', 'ar', 'دبابيس');
            PERFORM insert_category_translations('pointes', 'en', 'Pins');
            PERFORM insert_category_translations('pointes', 'de', 'Stifte');
            PERFORM insert_category_translations('pointes', 'es', 'Puntas');
            PERFORM insert_category_translations('pointes', 'it', 'Spine');

            -- Level 2: crochets-muraux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('crochets-muraux', 'crochets-muraux', 2, l1_id, 'Crochets muraux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('crochets-muraux', 'fr', 'Crochets muraux');
            PERFORM insert_category_translations('crochets-muraux', 'ar', 'خطافات جدارية');
            PERFORM insert_category_translations('crochets-muraux', 'en', 'Wall hooks');
            PERFORM insert_category_translations('crochets-muraux', 'de', 'Wandhaken');
            PERFORM insert_category_translations('crochets-muraux', 'es', 'Ganchos de pared');
            PERFORM insert_category_translations('crochets-muraux', 'it', 'Ganci da parete');

            -- Level 2: equerres-renforcees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('equerres-renforcees', 'equerres-renforcees', 2, l1_id, 'Équerres renforcées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('equerres-renforcees', 'fr', 'Équerres renforcées');
            PERFORM insert_category_translations('equerres-renforcees', 'ar', 'زوايا مقوّاة');
            PERFORM insert_category_translations('equerres-renforcees', 'en', 'Reinforced brackets');
            PERFORM insert_category_translations('equerres-renforcees', 'de', 'Verstärkte Winkel');
            PERFORM insert_category_translations('equerres-renforcees', 'es', 'Escuadras reforzadas');
            PERFORM insert_category_translations('equerres-renforcees', 'it', 'Staff e angolari rinforzati');

            -- Level 2: pitons
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pitons', 'pitons', 2, l1_id, 'Pitons')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pitons', 'fr', 'Pitons');
            PERFORM insert_category_translations('pitons', 'ar', 'خطافات براغي');
            PERFORM insert_category_translations('pitons', 'en', 'Screw eyes');
            PERFORM insert_category_translations('pitons', 'de', 'Schraubösen');
            PERFORM insert_category_translations('pitons', 'es', 'Ganchos roscados');
            PERFORM insert_category_translations('pitons', 'it', 'Ganci avvitati');

            -- Level 2: serre-cables
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('serre-cables', 'serre-cables', 2, l1_id, 'Serre-câbles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('serre-cables', 'fr', 'Serre-câbles');
            PERFORM insert_category_translations('serre-cables', 'ar', 'أربطة كابلات');
            PERFORM insert_category_translations('serre-cables', 'en', 'Cable ties');
            PERFORM insert_category_translations('serre-cables', 'de', 'Kabelbinder');
            PERFORM insert_category_translations('serre-cables', 'es', 'Bridas');
            PERFORM insert_category_translations('serre-cables', 'it', 'Fascette');

        -- Level 1: quincaillerie-porte-fenetre
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('quincaillerie-porte-fenetre', 'quincaillerie-porte-fenetre', 1, root_id, 'Quincaillerie de porte & fenêtre')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('quincaillerie-porte-fenetre', 'fr', 'Quincaillerie de porte & fenêtre');
        PERFORM insert_category_translations('quincaillerie-porte-fenetre', 'ar', 'مستلزمات الأبواب والنوافذ');
        PERFORM insert_category_translations('quincaillerie-porte-fenetre', 'en', 'Door & Window Hardware');
        PERFORM insert_category_translations('quincaillerie-porte-fenetre', 'de', 'Tür- & Fensterbeschläge');
        PERFORM insert_category_translations('quincaillerie-porte-fenetre', 'es', 'Herrajes para puertas y ventanas');
        PERFORM insert_category_translations('quincaillerie-porte-fenetre', 'it', 'Ferramenta per porte & finestre');

            -- Level 2: serrures-a-cle
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('serrures-a-cle', 'serrures-a-cle', 2, l1_id, 'Serrures à clé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('serrures-a-cle', 'fr', 'Serrures à clé');
            PERFORM insert_category_translations('serrures-a-cle', 'ar', 'أقفال بمفتاح');
            PERFORM insert_category_translations('serrures-a-cle', 'en', 'Key locks');
            PERFORM insert_category_translations('serrures-a-cle', 'de', 'Schlösser');
            PERFORM insert_category_translations('serrures-a-cle', 'es', 'Cerraduras con llave');
            PERFORM insert_category_translations('serrures-a-cle', 'it', 'Serrature a chiave');

            -- Level 2: serrures-multipoints
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('serrures-multipoints', 'serrures-multipoints', 2, l1_id, 'Serrures multipoints')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('serrures-multipoints', 'fr', 'Serrures multipoints');
            PERFORM insert_category_translations('serrures-multipoints', 'ar', 'أقفال متعددة النقاط');
            PERFORM insert_category_translations('serrures-multipoints', 'en', 'Multipoint locks');
            PERFORM insert_category_translations('serrures-multipoints', 'de', 'Mehrfachverriegelungen');
            PERFORM insert_category_translations('serrures-multipoints', 'es', 'Cerraduras multipunto');
            PERFORM insert_category_translations('serrures-multipoints', 'it', 'Serrature multipunto');

            -- Level 2: cylindres-europeens
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cylindres-europeens', 'cylindres-europeens', 2, l1_id, 'Cylindres européens')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cylindres-europeens', 'fr', 'Cylindres européens');
            PERFORM insert_category_translations('cylindres-europeens', 'ar', 'أسطوانات أوروبية');
            PERFORM insert_category_translations('cylindres-europeens', 'en', 'Euro cylinders');
            PERFORM insert_category_translations('cylindres-europeens', 'de', 'Eurozylinder');
            PERFORM insert_category_translations('cylindres-europeens', 'es', 'Cilindros europeos');
            PERFORM insert_category_translations('cylindres-europeens', 'it', 'Cilindri europei');

            -- Level 2: poignees-de-porte
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('poignees-de-porte', 'poignees-de-porte', 2, l1_id, 'Poignées de porte')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('poignees-de-porte', 'fr', 'Poignées de porte');
            PERFORM insert_category_translations('poignees-de-porte', 'ar', 'مقابض أبواب');
            PERFORM insert_category_translations('poignees-de-porte', 'en', 'Door handles');
            PERFORM insert_category_translations('poignees-de-porte', 'de', 'Türgriffe');
            PERFORM insert_category_translations('poignees-de-porte', 'es', 'Manillas de puerta');
            PERFORM insert_category_translations('poignees-de-porte', 'it', 'Maniglie per porte');

            -- Level 2: poignees-de-fenetre
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('poignees-de-fenetre', 'poignees-de-fenetre', 2, l1_id, 'Poignées de fenêtre')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('poignees-de-fenetre', 'fr', 'Poignées de fenêtre');
            PERFORM insert_category_translations('poignees-de-fenetre', 'ar', 'مقابض نوافذ');
            PERFORM insert_category_translations('poignees-de-fenetre', 'en', 'Window handles');
            PERFORM insert_category_translations('poignees-de-fenetre', 'de', 'Fenstergriffe');
            PERFORM insert_category_translations('poignees-de-fenetre', 'es', 'Manillas de ventana');
            PERFORM insert_category_translations('poignees-de-fenetre', 'it', 'Maniglie per finestre');

            -- Level 2: paumelles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('paumelles', 'paumelles', 2, l1_id, 'Paumelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('paumelles', 'fr', 'Paumelles');
            PERFORM insert_category_translations('paumelles', 'ar', 'مفصلات');
            PERFORM insert_category_translations('paumelles', 'en', 'Hinges');
            PERFORM insert_category_translations('paumelles', 'de', 'Scharniere');
            PERFORM insert_category_translations('paumelles', 'es', 'Bisagras');
            PERFORM insert_category_translations('paumelles', 'it', 'Cerniere');

            -- Level 2: charnieres-renforcees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('charnieres-renforcees', 'charnieres-renforcees', 2, l1_id, 'Charnières renforcées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('charnieres-renforcees', 'fr', 'Charnières renforcées');
            PERFORM insert_category_translations('charnieres-renforcees', 'ar', 'مفصلات معززة');
            PERFORM insert_category_translations('charnieres-renforcees', 'en', 'Reinforced hinges');
            PERFORM insert_category_translations('charnieres-renforcees', 'de', 'Verstärkte Scharniere');
            PERFORM insert_category_translations('charnieres-renforcees', 'es', 'Bisagras reforzadas');
            PERFORM insert_category_translations('charnieres-renforcees', 'it', 'Cerniere rinforzate');

            -- Level 2: verrous
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('verrous', 'verrous', 2, l1_id, 'Verrous')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('verrous', 'fr', 'Verrous');
            PERFORM insert_category_translations('verrous', 'ar', 'مزاليج');
            PERFORM insert_category_translations('verrous', 'en', 'Bolts');
            PERFORM insert_category_translations('verrous', 'de', 'Riegel');
            PERFORM insert_category_translations('verrous', 'es', 'Cierres');
            PERFORM insert_category_translations('verrous', 'it', 'Catenacci');

            -- Level 2: loquets
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('loquets', 'loquets', 2, l1_id, 'Loquets')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('loquets', 'fr', 'Loquets');
            PERFORM insert_category_translations('loquets', 'ar', 'مصاريع');
            PERFORM insert_category_translations('loquets', 'en', 'Latches');
            PERFORM insert_category_translations('loquets', 'de', 'Klinken');
            PERFORM insert_category_translations('loquets', 'es', 'Pestillos');
            PERFORM insert_category_translations('loquets', 'it', 'Scrocchi');

            -- Level 2: cremones
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cremones', 'cremones', 2, l1_id, 'Crémenes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cremones', 'fr', 'Crémenes');
            PERFORM insert_category_translations('cremones', 'ar', 'كريمونات');
            PERFORM insert_category_translations('cremones', 'en', 'Cremones');
            PERFORM insert_category_translations('cremones', 'de', 'Kremonen');
            PERFORM insert_category_translations('cremones', 'es', 'Cremonas');
            PERFORM insert_category_translations('cremones', 'it', 'Cremones');

            -- Level 2: butees-de-porte
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('butees-de-porte', 'butees-de-porte', 2, l1_id, 'Butées de porte')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('butees-de-porte', 'fr', 'Butées de porte');
            PERFORM insert_category_translations('butees-de-porte', 'ar', 'مصدات أبواب');
            PERFORM insert_category_translations('butees-de-porte', 'en', 'Door stops');
            PERFORM insert_category_translations('butees-de-porte', 'de', 'Türstopper');
            PERFORM insert_category_translations('butees-de-porte', 'es', 'Topes de puerta');
            PERFORM insert_category_translations('butees-de-porte', 'it', 'Ferma porte');

            -- Level 2: heurtoirs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('heurtoirs', 'heurtoirs', 2, l1_id, 'Heurtoirs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('heurtoirs', 'fr', 'Heurtoirs');
            PERFORM insert_category_translations('heurtoirs', 'ar', 'مطارق أبواب');
            PERFORM insert_category_translations('heurtoirs', 'en', 'Door knockers');
            PERFORM insert_category_translations('heurtoirs', 'de', 'Türklopfer');
            PERFORM insert_category_translations('heurtoirs', 'es', 'Aldabas');
            PERFORM insert_category_translations('heurtoirs', 'it', 'Battenti');

            -- Level 2: arrets-de-porte-magnetiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('arrets-de-porte-magnetiques', 'arrets-de-porte-magnetiques', 2, l1_id, 'Arrêts de porte magnétiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('arrets-de-porte-magnetiques', 'fr', 'Arrêts de porte magnétiques');
            PERFORM insert_category_translations('arrets-de-porte-magnetiques', 'ar', 'مصدات مغناطيسية');
            PERFORM insert_category_translations('arrets-de-porte-magnetiques', 'en', 'Magnetic door stops');
            PERFORM insert_category_translations('arrets-de-porte-magnetiques', 'de', 'Magnetische Türhalter');
            PERFORM insert_category_translations('arrets-de-porte-magnetiques', 'es', 'Topes magnéticos');
            PERFORM insert_category_translations('arrets-de-porte-magnetiques', 'it', 'Ferma porte magnetici');

            -- Level 2: joints-detancheite
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('joints-detancheite', 'joints-detancheite', 2, l1_id, 'Joints d’étanchéité')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('joints-detancheite', 'fr', 'Joints d’étanchéité');
            PERFORM insert_category_translations('joints-detancheite', 'ar', 'حشوات مانعة للتسرب');
            PERFORM insert_category_translations('joints-detancheite', 'en', 'Sealing gaskets');
            PERFORM insert_category_translations('joints-detancheite', 'de', 'Dichtungen');
            PERFORM insert_category_translations('joints-detancheite', 'es', 'Juntas de estanqueidad');
            PERFORM insert_category_translations('joints-detancheite', 'it', 'Guarnizioni');

        -- Level 1: securite-protection
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('securite-protection', 'securite-protection', 1, root_id, 'Sécurité & protection')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('securite-protection', 'fr', 'Sécurité & protection');
        PERFORM insert_category_translations('securite-protection', 'ar', 'أمان وحماية');
        PERFORM insert_category_translations('securite-protection', 'en', 'Safety & Protection');
        PERFORM insert_category_translations('securite-protection', 'de', 'Sicherheit & Schutz');
        PERFORM insert_category_translations('securite-protection', 'es', 'Seguridad y protección');
        PERFORM insert_category_translations('securite-protection', 'it', 'Sicurezza & protezione');

            -- Level 2: cadenas-standards
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cadenas-standards', 'cadenas-standards', 2, l1_id, 'Cadenas standards')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cadenas-standards', 'fr', 'Cadenas standards');
            PERFORM insert_category_translations('cadenas-standards', 'ar', 'أقفال قياسية');
            PERFORM insert_category_translations('cadenas-standards', 'en', 'Standard padlocks');
            PERFORM insert_category_translations('cadenas-standards', 'de', 'Standardvorhängeschlösser');
            PERFORM insert_category_translations('cadenas-standards', 'es', 'Candados estándar');
            PERFORM insert_category_translations('cadenas-standards', 'it', 'Lucchetti standard');

            -- Level 2: cadenas-haute-securite
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cadenas-haute-securite', 'cadenas-haute-securite', 2, l1_id, 'Cadenas haute sécurité')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cadenas-haute-securite', 'fr', 'Cadenas haute sécurité');
            PERFORM insert_category_translations('cadenas-haute-securite', 'ar', 'أقفال عالية الأمان');
            PERFORM insert_category_translations('cadenas-haute-securite', 'en', 'High-security padlocks');
            PERFORM insert_category_translations('cadenas-haute-securite', 'de', 'Hochsicherheitsschlösser');
            PERFORM insert_category_translations('cadenas-haute-securite', 'es', 'Candados de alta seguridad');
            PERFORM insert_category_translations('cadenas-haute-securite', 'it', 'Lucchetti alta sicurezza');

            -- Level 2: antivols-portes-portails
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('antivols-portes-portails', 'antivols-portes-portails', 2, l1_id, 'Antivols pour portes et portails')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('antivols-portes-portails', 'fr', 'Antivols pour portes et portails');
            PERFORM insert_category_translations('antivols-portes-portails', 'ar', 'مضادات سرقة للأبواب والبوابات');
            PERFORM insert_category_translations('antivols-portes-portails', 'en', 'Locks for doors and gates');
            PERFORM insert_category_translations('antivols-portes-portails', 'de', 'Sicherungen für Türen & Tore');
            PERFORM insert_category_translations('antivols-portes-portails', 'es', 'Antirrobos para puertas y portales');
            PERFORM insert_category_translations('antivols-portes-portails', 'it', 'Antifurti per porte e cancelli');

            -- Level 2: chaines-renforcees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chaines-renforcees', 'chaines-renforcees', 2, l1_id, 'Chaînes renforcées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chaines-renforcees', 'fr', 'Chaînes renforcées');
            PERFORM insert_category_translations('chaines-renforcees', 'ar', 'سلاسل معززة');
            PERFORM insert_category_translations('chaines-renforcees', 'en', 'Reinforced chains');
            PERFORM insert_category_translations('chaines-renforcees', 'de', 'Verstärkte Ketten');
            PERFORM insert_category_translations('chaines-renforcees', 'es', 'Cadenas reforzadas');
            PERFORM insert_category_translations('chaines-renforcees', 'it', 'Catene rinforzate');

            -- Level 2: gants-de-protection
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gants-de-protection', 'gants-de-protection', 2, l1_id, 'Gants de protection')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gants-de-protection', 'fr', 'Gants de protection');
            PERFORM insert_category_translations('gants-de-protection', 'ar', 'قفازات وقاية');
            PERFORM insert_category_translations('gants-de-protection', 'en', 'Protective gloves');
            PERFORM insert_category_translations('gants-de-protection', 'de', 'Schutzhandschuhe');
            PERFORM insert_category_translations('gants-de-protection', 'es', 'Guantes de protección');
            PERFORM insert_category_translations('gants-de-protection', 'it', 'Guanti protettivi');

            -- Level 2: gants-anti-coupure
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gants-anti-coupure', 'gants-anti-coupure', 2, l1_id, 'Gants anti-coupure')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gants-anti-coupure', 'fr', 'Gants anti-coupure');
            PERFORM insert_category_translations('gants-anti-coupure', 'ar', 'قفازات ضد القطع');
            PERFORM insert_category_translations('gants-anti-coupure', 'en', 'Cut-resistant gloves');
            PERFORM insert_category_translations('gants-anti-coupure', 'de', 'Schnittfeste Handschuhe');
            PERFORM insert_category_translations('gants-anti-coupure', 'es', 'Guantes anticorte');
            PERFORM insert_category_translations('gants-anti-coupure', 'it', 'Guanti antitaglio');

            -- Level 2: lunettes-de-securite
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lunettes-de-securite', 'lunettes-de-securite', 2, l1_id, 'Lunettes de sécurité')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lunettes-de-securite', 'fr', 'Lunettes de sécurité');
            PERFORM insert_category_translations('lunettes-de-securite', 'ar', 'نظارات حماية');
            PERFORM insert_category_translations('lunettes-de-securite', 'en', 'Safety glasses');
            PERFORM insert_category_translations('lunettes-de-securite', 'de', 'Schutzbrillen');
            PERFORM insert_category_translations('lunettes-de-securite', 'es', 'Gafas de seguridad');
            PERFORM insert_category_translations('lunettes-de-securite', 'it', 'Occhiali di sicurezza');

            -- Level 2: visieres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('visieres', 'visieres', 2, l1_id, 'Visières')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('visieres', 'fr', 'Visières');
            PERFORM insert_category_translations('visieres', 'ar', 'واجهات واقية');
            PERFORM insert_category_translations('visieres', 'en', 'Face shields');
            PERFORM insert_category_translations('visieres', 'de', 'Gesichtsschutz');
            PERFORM insert_category_translations('visieres', 'es', 'Pantallas faciales');
            PERFORM insert_category_translations('visieres', 'it', 'Visiere');

            -- Level 2: casques-de-chantier
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('casques-de-chantier', 'casques-de-chantier', 2, l1_id, 'Casques de chantier')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('casques-de-chantier', 'fr', 'Casques de chantier');
            PERFORM insert_category_translations('casques-de-chantier', 'ar', 'خوذات موقع');
            PERFORM insert_category_translations('casques-de-chantier', 'en', 'Hard hats');
            PERFORM insert_category_translations('casques-de-chantier', 'de', 'Bauhelme');
            PERFORM insert_category_translations('casques-de-chantier', 'es', 'Cascos de obra');
            PERFORM insert_category_translations('casques-de-chantier', 'it', 'Caschi da cantiere');

            -- Level 2: chaussures-de-securite
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chaussures-de-securite', 'chaussures-de-securite', 2, l1_id, 'Chaussures de sécurité')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chaussures-de-securite', 'fr', 'Chaussures de sécurité');
            PERFORM insert_category_translations('chaussures-de-securite', 'ar', 'أحذية أمان');
            PERFORM insert_category_translations('chaussures-de-securite', 'en', 'Safety shoes');
            PERFORM insert_category_translations('chaussures-de-securite', 'de', 'Sicherheitsschuhe');
            PERFORM insert_category_translations('chaussures-de-securite', 'es', 'Zapatos de seguridad');
            PERFORM insert_category_translations('chaussures-de-securite', 'it', 'Scarpe antinfortunistiche');

            -- Level 2: genouilleres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('genouilleres', 'genouilleres', 2, l1_id, 'Genouillères')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('genouilleres', 'fr', 'Genouillères');
            PERFORM insert_category_translations('genouilleres', 'ar', 'ركب واقية');
            PERFORM insert_category_translations('genouilleres', 'en', 'Knee pads');
            PERFORM insert_category_translations('genouilleres', 'de', 'Knieschoner');
            PERFORM insert_category_translations('genouilleres', 'es', 'Rodilleras');
            PERFORM insert_category_translations('genouilleres', 'it', 'Ginocchiere');

            -- Level 2: masques-anti-poussiere
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('masques-anti-poussiere', 'masques-anti-poussiere', 2, l1_id, 'Masques anti-poussière')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('masques-anti-poussiere', 'fr', 'Masques anti-poussière');
            PERFORM insert_category_translations('masques-anti-poussiere', 'ar', 'كمامات ضد الغبار');
            PERFORM insert_category_translations('masques-anti-poussiere', 'en', 'Dust masks');
            PERFORM insert_category_translations('masques-anti-poussiere', 'de', 'Staubmasken');
            PERFORM insert_category_translations('masques-anti-poussiere', 'es', 'Mascarillas antipolvo');
            PERFORM insert_category_translations('masques-anti-poussiere', 'it', 'Maschere antipolvere');

            -- Level 2: harnais-de-securite
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('harnais-de-securite', 'harnais-de-securite', 2, l1_id, 'Harnais de sécurité')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('harnais-de-securite', 'fr', 'Harnais de sécurité');
            PERFORM insert_category_translations('harnais-de-securite', 'ar', 'أحزمة أمان');
            PERFORM insert_category_translations('harnais-de-securite', 'en', 'Safety harnesses');
            PERFORM insert_category_translations('harnais-de-securite', 'de', 'Sicherheitsgurte');
            PERFORM insert_category_translations('harnais-de-securite', 'es', 'Arneses de seguridad');
            PERFORM insert_category_translations('harnais-de-securite', 'it', 'Imbracature di sicurezza');

        -- Level 1: materiel-de-plomberie
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('materiel-de-plomberie', 'materiel-de-plomberie', 1, root_id, 'Matériel de plomberie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('materiel-de-plomberie', 'fr', 'Matériel de plomberie');
        PERFORM insert_category_translations('materiel-de-plomberie', 'ar', 'سباكة');
        PERFORM insert_category_translations('materiel-de-plomberie', 'en', 'Plumbing');
        PERFORM insert_category_translations('materiel-de-plomberie', 'de', 'Sanitär');
        PERFORM insert_category_translations('materiel-de-plomberie', 'es', 'Fontanería');
        PERFORM insert_category_translations('materiel-de-plomberie', 'it', 'Idraulica');

            -- Level 2: robinets
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('robinets', 'robinets', 2, l1_id, 'Robinets')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('robinets', 'fr', 'Robinets');
            PERFORM insert_category_translations('robinets', 'ar', 'حنفيات');
            PERFORM insert_category_translations('robinets', 'en', 'Faucets');
            PERFORM insert_category_translations('robinets', 'de', 'Armaturen');
            PERFORM insert_category_translations('robinets', 'es', 'Grifos');
            PERFORM insert_category_translations('robinets', 'it', 'Rubinetti');

            -- Level 2: mitigeurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mitigeurs', 'mitigeurs', 2, l1_id, 'Mitigeurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mitigeurs', 'fr', 'Mitigeurs');
            PERFORM insert_category_translations('mitigeurs', 'ar', 'مزجيات');
            PERFORM insert_category_translations('mitigeurs', 'en', 'Mixers');
            PERFORM insert_category_translations('mitigeurs', 'de', 'Mischer');
            PERFORM insert_category_translations('mitigeurs', 'es', 'Mezcladores');
            PERFORM insert_category_translations('mitigeurs', 'it', 'Miscelatori');

            -- Level 2: flexibles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('flexibles', 'flexibles', 2, l1_id, 'Flexibles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('flexibles', 'fr', 'Flexibles');
            PERFORM insert_category_translations('flexibles', 'ar', 'خراطيم');
            PERFORM insert_category_translations('flexibles', 'en', 'Hoses');
            PERFORM insert_category_translations('flexibles', 'de', 'Schläuche');
            PERFORM insert_category_translations('flexibles', 'es', 'Mangueras');
            PERFORM insert_category_translations('flexibles', 'it', 'Tubi flessibili');

            -- Level 2: raccords-pvc
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('raccords-pvc', 'raccords-pvc', 2, l1_id, 'Raccords PVC')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('raccords-pvc', 'fr', 'Raccords PVC');
            PERFORM insert_category_translations('raccords-pvc', 'ar', 'وصلات PVC');
            PERFORM insert_category_translations('raccords-pvc', 'en', 'PVC fittings');
            PERFORM insert_category_translations('raccords-pvc', 'de', 'PVC-Fittings');
            PERFORM insert_category_translations('raccords-pvc', 'es', 'Accesorios PVC');
            PERFORM insert_category_translations('raccords-pvc', 'it', 'Raccordi PVC');

            -- Level 2: raccords-multicouches
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('raccords-multicouches', 'raccords-multicouches', 2, l1_id, 'Raccords multicouches')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('raccords-multicouches', 'fr', 'Raccords multicouches');
            PERFORM insert_category_translations('raccords-multicouches', 'ar', 'وصلات متعددة الطبقات');
            PERFORM insert_category_translations('raccords-multicouches', 'en', 'Multilayer fittings');
            PERFORM insert_category_translations('raccords-multicouches', 'de', 'Mehrschicht-Fittings');
            PERFORM insert_category_translations('raccords-multicouches', 'es', 'Accesorios multicapa');
            PERFORM insert_category_translations('raccords-multicouches', 'it', 'Raccordi multistrato');

            -- Level 2: raccords-laiton
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('raccords-laiton', 'raccords-laiton', 2, l1_id, 'Raccords laiton')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('raccords-laiton', 'fr', 'Raccords laiton');
            PERFORM insert_category_translations('raccords-laiton', 'ar', 'وصلات نحاسية');
            PERFORM insert_category_translations('raccords-laiton', 'en', 'Brass fittings');
            PERFORM insert_category_translations('raccords-laiton', 'de', 'Messing-Fittings');
            PERFORM insert_category_translations('raccords-laiton', 'es', 'Accesorios de latón');
            PERFORM insert_category_translations('raccords-laiton', 'it', 'Raccordi in ottone');

            -- Level 2: tuyaux-pvc
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tuyaux-pvc', 'tuyaux-pvc', 2, l1_id, 'Tuyaux PVC')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tuyaux-pvc', 'fr', 'Tuyaux PVC');
            PERFORM insert_category_translations('tuyaux-pvc', 'ar', 'أنابيب PVC');
            PERFORM insert_category_translations('tuyaux-pvc', 'en', 'PVC pipes');
            PERFORM insert_category_translations('tuyaux-pvc', 'de', 'PVC-Rohre');
            PERFORM insert_category_translations('tuyaux-pvc', 'es', 'Tubos PVC');
            PERFORM insert_category_translations('tuyaux-pvc', 'it', 'Tubi PVC');

            -- Level 2: tuyaux-per
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tuyaux-per', 'tuyaux-per', 2, l1_id, 'Tuyaux PER')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tuyaux-per', 'fr', 'Tuyaux PER');
            PERFORM insert_category_translations('tuyaux-per', 'ar', 'أنابيب PER');
            PERFORM insert_category_translations('tuyaux-per', 'en', 'PER pipes');
            PERFORM insert_category_translations('tuyaux-per', 'de', 'PER-Rohre');
            PERFORM insert_category_translations('tuyaux-per', 'es', 'Tubos PER');
            PERFORM insert_category_translations('tuyaux-per', 'it', 'Tubi PER');

            -- Level 2: siphons
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('siphons', 'siphons', 2, l1_id, 'Siphons')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('siphons', 'fr', 'Siphons');
            PERFORM insert_category_translations('siphons', 'ar', 'مصافي');
            PERFORM insert_category_translations('siphons', 'en', 'Siphons');
            PERFORM insert_category_translations('siphons', 'de', 'Siphons');
            PERFORM insert_category_translations('siphons', 'es', 'Sifones');
            PERFORM insert_category_translations('siphons', 'it', 'Sifoni');

            -- Level 2: joints-fibre
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('joints-fibre', 'joints-fibre', 2, l1_id, 'Joints fibre')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('joints-fibre', 'fr', 'Joints fibre');
            PERFORM insert_category_translations('joints-fibre', 'ar', 'حشوات من الألياف');
            PERFORM insert_category_translations('joints-fibre', 'en', 'Fiber gaskets');
            PERFORM insert_category_translations('joints-fibre', 'de', 'Faserdichtungen');
            PERFORM insert_category_translations('joints-fibre', 'es', 'Juntas de fibra');
            PERFORM insert_category_translations('joints-fibre', 'it', 'Guarnizioni in fibra');

            -- Level 2: joints-caoutchouc
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('joints-caoutchouc', 'joints-caoutchouc', 2, l1_id, 'Joints caoutchouc')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('joints-caoutchouc', 'fr', 'Joints caoutchouc');
            PERFORM insert_category_translations('joints-caoutchouc', 'ar', 'حشوات مطاطية');
            PERFORM insert_category_translations('joints-caoutchouc', 'en', 'Rubber gaskets');
            PERFORM insert_category_translations('joints-caoutchouc', 'de', 'Gummidichtungen');
            PERFORM insert_category_translations('joints-caoutchouc', 'es', 'Juntas de goma');
            PERFORM insert_category_translations('joints-caoutchouc', 'it', 'Guarnizioni in gomma');

            -- Level 2: colliers-de-serrage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('colliers-de-serrage', 'colliers-de-serrage', 2, l1_id, 'Colliers de serrage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('colliers-de-serrage', 'fr', 'Colliers de serrage');
            PERFORM insert_category_translations('colliers-de-serrage', 'ar', 'مشابك');
            PERFORM insert_category_translations('colliers-de-serrage', 'en', 'Clamps');
            PERFORM insert_category_translations('colliers-de-serrage', 'de', 'Schlauchschellen');
            PERFORM insert_category_translations('colliers-de-serrage', 'es', 'Abrazaderas');
            PERFORM insert_category_translations('colliers-de-serrage', 'it', 'Fascette stringitubo');

            -- Level 2: vannes-d-arret
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vannes-d-arret', 'vannes-d-arret', 2, l1_id, 'Vannes d’arrêt')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('vannes-d-arret', 'fr', 'Vannes d’arrêt');
            PERFORM insert_category_translations('vannes-d-arret', 'ar', 'صمامات إيقاف');
            PERFORM insert_category_translations('vannes-d-arret', 'en', 'Shut-off valves');
            PERFORM insert_category_translations('vannes-d-arret', 'de', 'Absperrventile');
            PERFORM insert_category_translations('vannes-d-arret', 'es', 'Válvulas de cierre');
            PERFORM insert_category_translations('vannes-d-arret', 'it', 'Valvole di arresto');

            -- Level 2: bondes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bondes', 'bondes', 2, l1_id, 'Bondes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bondes', 'fr', 'Bondes');
            PERFORM insert_category_translations('bondes', 'ar', 'مصارف');
            PERFORM insert_category_translations('bondes', 'en', 'Waste drains');
            PERFORM insert_category_translations('bondes', 'de', 'Abläufe');
            PERFORM insert_category_translations('bondes', 'es', 'Sumideros');
            PERFORM insert_category_translations('bondes', 'it', 'Sifoni di scarico');

            -- Level 2: filtres-anti-calcaire
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('filtres-anti-calcaire', 'filtres-anti-calcaire', 2, l1_id, 'Filtres anti-calcaire')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('filtres-anti-calcaire', 'fr', 'Filtres anti-calcaire');
            PERFORM insert_category_translations('filtres-anti-calcaire', 'ar', 'فلاتر ضد الترسبات');
            PERFORM insert_category_translations('filtres-anti-calcaire', 'en', 'Anti-scale filters');
            PERFORM insert_category_translations('filtres-anti-calcaire', 'de', 'Entkalkerfilter');
            PERFORM insert_category_translations('filtres-anti-calcaire', 'es', 'Filtros antical');
            PERFORM insert_category_translations('filtres-anti-calcaire', 'it', 'Filtri anticalcare');

            -- Level 2: tubes-devacuation
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tubes-devacuation', 'tubes-devacuation', 2, l1_id, 'Tubes d’évacuation')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tubes-devacuation', 'fr', 'Tubes d’évacuation');
            PERFORM insert_category_translations('tubes-devacuation', 'ar', 'أنابيب تصريف');
            PERFORM insert_category_translations('tubes-devacuation', 'en', 'Drain pipes');
            PERFORM insert_category_translations('tubes-devacuation', 'de', 'Abflussrohre');
            PERFORM insert_category_translations('tubes-devacuation', 'es', 'Tubos de evacuación');
            PERFORM insert_category_translations('tubes-devacuation', 'it', 'Tubi di scarico');

            -- Level 2: coudes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('coudes', 'coudes', 2, l1_id, 'Coudes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('coudes', 'fr', 'Coudes');
            PERFORM insert_category_translations('coudes', 'ar', 'أكواع');
            PERFORM insert_category_translations('coudes', 'en', 'Elbows');
            PERFORM insert_category_translations('coudes', 'de', 'Bögen');
            PERFORM insert_category_translations('coudes', 'es', 'Codos');
            PERFORM insert_category_translations('coudes', 'it', 'Gomiti');

            -- Level 2: tes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tes', 'tes', 2, l1_id, 'Tés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tes', 'fr', 'Tés');
            PERFORM insert_category_translations('tes', 'ar', 'وصلات T');
            PERFORM insert_category_translations('tes', 'en', 'Tees');
            PERFORM insert_category_translations('tes', 'de', 'T-Stücke');
            PERFORM insert_category_translations('tes', 'es', 'Tees');
            PERFORM insert_category_translations('tes', 'it', 'Raccordi a T');

            -- Level 2: reductions
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('reductions', 'reductions', 2, l1_id, 'Réductions')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('reductions', 'fr', 'Réductions');
            PERFORM insert_category_translations('reductions', 'ar', 'مخفضات');
            PERFORM insert_category_translations('reductions', 'en', 'Reducers');
            PERFORM insert_category_translations('reductions', 'de', 'Reduzierungen');
            PERFORM insert_category_translations('reductions', 'es', 'Reducciones');
            PERFORM insert_category_translations('reductions', 'it', 'Riduzioni');

        -- Level 1: materiel-electrique
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('materiel-electrique', 'materiel-electrique', 1, root_id, 'Matériel électrique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('materiel-electrique', 'fr', 'Matériel électrique');
        PERFORM insert_category_translations('materiel-electrique', 'ar', 'كهرباء');
        PERFORM insert_category_translations('materiel-electrique', 'en', 'Electrical');
        PERFORM insert_category_translations('materiel-electrique', 'de', 'Elektrik');
        PERFORM insert_category_translations('materiel-electrique', 'es', 'Eléctrico');
        PERFORM insert_category_translations('materiel-electrique', 'it', 'Elettrico');

            -- Level 2: prises-murales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('prises-murales', 'prises-murales', 2, l1_id, 'Prises murales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('prises-murales', 'fr', 'Prises murales');
            PERFORM insert_category_translations('prises-murales', 'ar', 'مآخذ حائط');
            PERFORM insert_category_translations('prises-murales', 'en', 'Wall sockets');
            PERFORM insert_category_translations('prises-murales', 'de', 'Steckdosen');
            PERFORM insert_category_translations('prises-murales', 'es', 'Tomas de pared');
            PERFORM insert_category_translations('prises-murales', 'it', 'Prese a muro');

            -- Level 2: prises-renforcees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('prises-renforcees', 'prises-renforcees', 2, l1_id, 'Prises renforcées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('prises-renforcees', 'fr', 'Prises renforcées');
            PERFORM insert_category_translations('prises-renforcees', 'ar', 'مآخذ قوية');
            PERFORM insert_category_translations('prises-renforcees', 'en', 'Heavy-duty sockets');
            PERFORM insert_category_translations('prises-renforcees', 'de', 'Verstärkte Steckdosen');
            PERFORM insert_category_translations('prises-renforcees', 'es', 'Tomas reforzadas');
            PERFORM insert_category_translations('prises-renforcees', 'it', 'Prese rinforzate');

            -- Level 2: interrupteurs-simples
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('interrupteurs-simples', 'interrupteurs-simples', 2, l1_id, 'Interrupteurs simples')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('interrupteurs-simples', 'fr', 'Interrupteurs simples');
            PERFORM insert_category_translations('interrupteurs-simples', 'ar', 'قواطع');
            PERFORM insert_category_translations('interrupteurs-simples', 'en', 'Switches');
            PERFORM insert_category_translations('interrupteurs-simples', 'de', 'Schalter');
            PERFORM insert_category_translations('interrupteurs-simples', 'es', 'Interruptores');
            PERFORM insert_category_translations('interrupteurs-simples', 'it', 'Interruttori');

            -- Level 2: interrupteurs-va-et-vient
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('interrupteurs-va-et-vient', 'interrupteurs-va-et-vient', 2, l1_id, 'Interrupteurs va-et-vient')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('interrupteurs-va-et-vient', 'fr', 'Interrupteurs va-et-vient');
            PERFORM insert_category_translations('interrupteurs-va-et-vient', 'ar', 'قواطع مزدوجة');
            PERFORM insert_category_translations('interrupteurs-va-et-vient', 'en', 'Two-way switches');
            PERFORM insert_category_translations('interrupteurs-va-et-vient', 'de', 'Wechselschalter');
            PERFORM insert_category_translations('interrupteurs-va-et-vient', 'es', 'Conmutadores');
            PERFORM insert_category_translations('interrupteurs-va-et-vient', 'it', 'Invertitori');

            -- Level 2: interrupteurs-automatiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('interrupteurs-automatiques', 'interrupteurs-automatiques', 2, l1_id, 'Interrupteurs automatiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('interrupteurs-automatiques', 'fr', 'Interrupteurs automatiques');
            PERFORM insert_category_translations('interrupteurs-automatiques', 'ar', 'قواطع تلقائية');
            PERFORM insert_category_translations('interrupteurs-automatiques', 'en', 'Automatic switches');
            PERFORM insert_category_translations('interrupteurs-automatiques', 'de', 'Automatikschalter');
            PERFORM insert_category_translations('interrupteurs-automatiques', 'es', 'Interruptores automáticos');
            PERFORM insert_category_translations('interrupteurs-automatiques', 'it', 'Interruttori automatici');

            -- Level 2: cables-electriques-rigides
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cables-electriques-rigides', 'cables-electriques-rigides', 2, l1_id, 'Câbles électriques rigides')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cables-electriques-rigides', 'fr', 'Câbles électriques rigides');
            PERFORM insert_category_translations('cables-electriques-rigides', 'ar', 'كابلات صلبة');
            PERFORM insert_category_translations('cables-electriques-rigides', 'en', 'Rigid electrical cables');
            PERFORM insert_category_translations('cables-electriques-rigides', 'de', 'Starre Kabel');
            PERFORM insert_category_translations('cables-electriques-rigides', 'es', 'Cables rígidos');
            PERFORM insert_category_translations('cables-electriques-rigides', 'it', 'Cavi rigidi');

            -- Level 2: cables-souples
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cables-souples', 'cables-souples', 2, l1_id, 'Câbles souples')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cables-souples', 'fr', 'Câbles souples');
            PERFORM insert_category_translations('cables-souples', 'ar', 'كابلات مرنة');
            PERFORM insert_category_translations('cables-souples', 'en', 'Flexible cables');
            PERFORM insert_category_translations('cables-souples', 'de', 'Flexible Kabel');
            PERFORM insert_category_translations('cables-souples', 'es', 'Cables flexibles');
            PERFORM insert_category_translations('cables-souples', 'it', 'Cavi flessibili');

            -- Level 2: gaines-isolantes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gaines-isolantes', 'gaines-isolantes', 2, l1_id, 'Gaines isolantes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gaines-isolantes', 'fr', 'Gaines isolantes');
            PERFORM insert_category_translations('gaines-isolantes', 'ar', 'أغلفة عازلة');
            PERFORM insert_category_translations('gaines-isolantes', 'en', 'Insulating sleeves');
            PERFORM insert_category_translations('gaines-isolantes', 'de', 'Isolierschläuche');
            PERFORM insert_category_translations('gaines-isolantes', 'es', 'Fundas aislantes');
            PERFORM insert_category_translations('gaines-isolantes', 'it', 'Guaina isolante');

            -- Level 2: gaines-icta
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gaines-icta', 'gaines-icta', 2, l1_id, 'Gaines ICTA')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gaines-icta', 'fr', 'Gaines ICTA');
            PERFORM insert_category_translations('gaines-icta', 'ar', 'قنوات ICTA');
            PERFORM insert_category_translations('gaines-icta', 'en', 'ICTA conduits');
            PERFORM insert_category_translations('gaines-icta', 'de', 'ICTA-Leerrohre');
            PERFORM insert_category_translations('gaines-icta', 'es', 'Conductos ICTA');
            PERFORM insert_category_translations('gaines-icta', 'it', 'Guaina ICTA');

            -- Level 2: disjoncteurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('disjoncteurs', 'disjoncteurs', 2, l1_id, 'Disjoncteurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('disjoncteurs', 'fr', 'Disjoncteurs');
            PERFORM insert_category_translations('disjoncteurs', 'ar', 'قواطع كهربائية');
            PERFORM insert_category_translations('disjoncteurs', 'en', 'Circuit breakers');
            PERFORM insert_category_translations('disjoncteurs', 'de', 'Leitungsschutzschalter');
            PERFORM insert_category_translations('disjoncteurs', 'es', 'Disyuntores');
            PERFORM insert_category_translations('disjoncteurs', 'it', 'Interruttori magnetotermici');

            -- Level 2: tableaux-electriques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tableaux-electriques', 'tableaux-electriques', 2, l1_id, 'Tableaux électriques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tableaux-electriques', 'fr', 'Tableaux électriques');
            PERFORM insert_category_translations('tableaux-electriques', 'ar', 'لوحات كهربائية');
            PERFORM insert_category_translations('tableaux-electriques', 'en', 'Electrical panels');
            PERFORM insert_category_translations('tableaux-electriques', 'de', 'Verteilerkästen');
            PERFORM insert_category_translations('tableaux-electriques', 'es', 'Cuadros eléctricos');
            PERFORM insert_category_translations('tableaux-electriques', 'it', 'Quadri elettrici');

            -- Level 2: coffrets
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('coffrets', 'coffrets', 2, l1_id, 'Coffrets')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('coffrets', 'fr', 'Coffrets');
            PERFORM insert_category_translations('coffrets', 'ar', 'صناديق');
            PERFORM insert_category_translations('coffrets', 'en', 'Boxes');
            PERFORM insert_category_translations('coffrets', 'de', 'Gehäuse');
            PERFORM insert_category_translations('coffrets', 'es', 'Cajas');
            PERFORM insert_category_translations('coffrets', 'it', 'Scatole');

            -- Level 2: transformateurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('transformateurs', 'transformateurs', 2, l1_id, 'Transformateurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('transformateurs', 'fr', 'Transformateurs');
            PERFORM insert_category_translations('transformateurs', 'ar', 'محولات');
            PERFORM insert_category_translations('transformateurs', 'en', 'Transformers');
            PERFORM insert_category_translations('transformateurs', 'de', 'Transformatoren');
            PERFORM insert_category_translations('transformateurs', 'es', 'Transformadores');
            PERFORM insert_category_translations('transformateurs', 'it', 'Trasformatori');

            -- Level 2: multiprises
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('multiprises', 'multiprises', 2, l1_id, 'Multiprises')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('multiprises', 'fr', 'Multiprises');
            PERFORM insert_category_translations('multiprises', 'ar', 'مشتركات');
            PERFORM insert_category_translations('multiprises', 'en', 'Power strips');
            PERFORM insert_category_translations('multiprises', 'de', 'Steckdosenleisten');
            PERFORM insert_category_translations('multiprises', 'es', 'Regletas');
            PERFORM insert_category_translations('multiprises', 'it', 'Ciabatte');

            -- Level 2: rallonges
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('rallonges', 'rallonges', 2, l1_id, 'Rallonges')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('rallonges', 'fr', 'Rallonges');
            PERFORM insert_category_translations('rallonges', 'ar', 'أسلاك تمديد');
            PERFORM insert_category_translations('rallonges', 'en', 'Extension cords');
            PERFORM insert_category_translations('rallonges', 'de', 'Verlängerungskabel');
            PERFORM insert_category_translations('rallonges', 'es', 'Alargadores');
            PERFORM insert_category_translations('rallonges', 'it', 'Prolunghe');

            -- Level 2: connecteurs-rapides
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('connecteurs-rapides', 'connecteurs-rapides', 2, l1_id, 'Connecteurs rapides')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('connecteurs-rapides', 'fr', 'Connecteurs rapides');
            PERFORM insert_category_translations('connecteurs-rapides', 'ar', 'موصلات سريعة');
            PERFORM insert_category_translations('connecteurs-rapides', 'en', 'Quick connectors');
            PERFORM insert_category_translations('connecteurs-rapides', 'de', 'Schnellverbinder');
            PERFORM insert_category_translations('connecteurs-rapides', 'es', 'Conectores rápidos');
            PERFORM insert_category_translations('connecteurs-rapides', 'it', 'Connettori rapidi');

            -- Level 2: dominos
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('dominos', 'dominos', 2, l1_id, 'Dominos')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('dominos', 'fr', 'Dominos');
            PERFORM insert_category_translations('dominos', 'ar', 'أطراف توصيل');
            PERFORM insert_category_translations('dominos', 'en', 'Terminal blocks');
            PERFORM insert_category_translations('dominos', 'de', 'Lüsterklemmen');
            PERFORM insert_category_translations('dominos', 'es', 'Bornes');
            PERFORM insert_category_translations('dominos', 'it', 'Morsetti');

            -- Level 2: goulottes-murales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('goulottes-murales', 'goulottes-murales', 2, l1_id, 'Goulottes murales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('goulottes-murales', 'fr', 'Goulottes murales');
            PERFORM insert_category_translations('goulottes-murales', 'ar', 'قنوات كابلات');
            PERFORM insert_category_translations('goulottes-murales', 'en', 'Cable ducts');
            PERFORM insert_category_translations('goulottes-murales', 'de', 'Kabelkanäle');
            PERFORM insert_category_translations('goulottes-murales', 'es', 'Canaletas');
            PERFORM insert_category_translations('goulottes-murales', 'it', 'Canaline');

        -- Level 1: colles-adhesifs
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('colles-adhesifs', 'colles-adhesifs', 1, root_id, 'Colles & adhésifs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('colles-adhesifs', 'fr', 'Colles & adhésifs');
        PERFORM insert_category_translations('colles-adhesifs', 'ar', 'مواد لصق وشرائط');
        PERFORM insert_category_translations('colles-adhesifs', 'en', 'Glues & Adhesives');
        PERFORM insert_category_translations('colles-adhesifs', 'de', 'Klebstoffe & Klebebänder');
        PERFORM insert_category_translations('colles-adhesifs', 'es', 'Colas y adhesivos');
        PERFORM insert_category_translations('colles-adhesifs', 'it', 'Collanti & adesivi');

            -- Level 2: colles-fortes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('colles-fortes', 'colles-fortes', 2, l1_id, 'Colles fortes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('colles-fortes', 'fr', 'Colles fortes');
            PERFORM insert_category_translations('colles-fortes', 'ar', 'غراء قوي');
            PERFORM insert_category_translations('colles-fortes', 'en', 'Strong glues');
            PERFORM insert_category_translations('colles-fortes', 'de', 'Starkkleber');
            PERFORM insert_category_translations('colles-fortes', 'es', 'Colas fuertes');
            PERFORM insert_category_translations('colles-fortes', 'it', 'Collanti forti');

            -- Level 2: colles-universelles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('colles-universelles', 'colles-universelles', 2, l1_id, 'Colles universelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('colles-universelles', 'fr', 'Colles universelles');
            PERFORM insert_category_translations('colles-universelles', 'ar', 'غراء شامل');
            PERFORM insert_category_translations('colles-universelles', 'en', 'Universal glues');
            PERFORM insert_category_translations('colles-universelles', 'de', 'Universalkleber');
            PERFORM insert_category_translations('colles-universelles', 'es', 'Colas universales');
            PERFORM insert_category_translations('colles-universelles', 'it', 'Collanti universali');

            -- Level 2: colles-pvc
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('colles-pvc', 'colles-pvc', 2, l1_id, 'Colles PVC')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('colles-pvc', 'fr', 'Colles PVC');
            PERFORM insert_category_translations('colles-pvc', 'ar', 'غراء PVC');
            PERFORM insert_category_translations('colles-pvc', 'en', 'PVC glues');
            PERFORM insert_category_translations('colles-pvc', 'de', 'PVC-Kleber');
            PERFORM insert_category_translations('colles-pvc', 'es', 'Colas PVC');
            PERFORM insert_category_translations('colles-pvc', 'it', 'Collanti PVC');

            -- Level 2: colles-a-bois
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('colles-a-bois', 'colles-a-bois', 2, l1_id, 'Colles à bois')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('colles-a-bois', 'fr', 'Colles à bois');
            PERFORM insert_category_translations('colles-a-bois', 'ar', 'غراء خشب');
            PERFORM insert_category_translations('colles-a-bois', 'en', 'Wood glues');
            PERFORM insert_category_translations('colles-a-bois', 'de', 'Holzleime');
            PERFORM insert_category_translations('colles-a-bois', 'es', 'Colas para madera');
            PERFORM insert_category_translations('colles-a-bois', 'it', 'Colla per legno');

            -- Level 2: epoxy
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('epoxy', 'epoxy', 2, l1_id, 'Epoxy')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('epoxy', 'fr', 'Epoxy');
            PERFORM insert_category_translations('epoxy', 'ar', 'إيبوكسي');
            PERFORM insert_category_translations('epoxy', 'en', 'Epoxy');
            PERFORM insert_category_translations('epoxy', 'de', 'Epoxidharz');
            PERFORM insert_category_translations('epoxy', 'es', 'Epoxi');
            PERFORM insert_category_translations('epoxy', 'it', 'Epossidica');

            -- Level 2: silicone
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('silicone', 'silicone', 2, l1_id, 'Silicone')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('silicone', 'fr', 'Silicone');
            PERFORM insert_category_translations('silicone', 'ar', 'سيليكون');
            PERFORM insert_category_translations('silicone', 'en', 'Silicone');
            PERFORM insert_category_translations('silicone', 'de', 'Silikon');
            PERFORM insert_category_translations('silicone', 'es', 'Silicona');
            PERFORM insert_category_translations('silicone', 'it', 'Silicone');

            -- Level 2: mastic
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mastic', 'mastic', 2, l1_id, 'Mastic')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mastic', 'fr', 'Mastic');
            PERFORM insert_category_translations('mastic', 'ar', 'معجون');
            PERFORM insert_category_translations('mastic', 'en', 'Sealant');
            PERFORM insert_category_translations('mastic', 'de', 'Dichtmasse');
            PERFORM insert_category_translations('mastic', 'es', 'Masilla');
            PERFORM insert_category_translations('mastic', 'it', 'Mastice');

            -- Level 2: adhesifs-double-face
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('adhesifs-double-face', 'adhesifs-double-face', 2, l1_id, 'Adhésifs double face')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('adhesifs-double-face', 'fr', 'Adhésifs double face');
            PERFORM insert_category_translations('adhesifs-double-face', 'ar', 'شرائط لاصقة مزدوجة');
            PERFORM insert_category_translations('adhesifs-double-face', 'en', 'Double-sided tapes');
            PERFORM insert_category_translations('adhesifs-double-face', 'de', 'Doppelseitige Klebebänder');
            PERFORM insert_category_translations('adhesifs-double-face', 'es', 'Cintas de doble cara');
            PERFORM insert_category_translations('adhesifs-double-face', 'it', 'Nastri biadesivi');

            -- Level 2: ruban-isolant
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ruban-isolant', 'ruban-isolant', 2, l1_id, 'Ruban isolant')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ruban-isolant', 'fr', 'Ruban isolant');
            PERFORM insert_category_translations('ruban-isolant', 'ar', 'شريط عازل');
            PERFORM insert_category_translations('ruban-isolant', 'en', 'Insulating tape');
            PERFORM insert_category_translations('ruban-isolant', 'de', 'Isolierband');
            PERFORM insert_category_translations('ruban-isolant', 'es', 'Cinta aislante');
            PERFORM insert_category_translations('ruban-isolant', 'it', 'Nastro isolante');

            -- Level 2: ruban-toile
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ruban-toile', 'ruban-toile', 2, l1_id, 'Ruban toilé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ruban-toile', 'fr', 'Ruban toilé');
            PERFORM insert_category_translations('ruban-toile', 'ar', 'شريط قماشي');
            PERFORM insert_category_translations('ruban-toile', 'en', 'Cloth tape');
            PERFORM insert_category_translations('ruban-toile', 'de', 'Gewebeband');
            PERFORM insert_category_translations('ruban-toile', 'es', 'Cinta de tela');
            PERFORM insert_category_translations('ruban-toile', 'it', 'Nastro telato');

            -- Level 2: ruban-arme
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ruban-arme', 'ruban-arme', 2, l1_id, 'Ruban armé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ruban-arme', 'fr', 'Ruban armé');
            PERFORM insert_category_translations('ruban-arme', 'ar', 'شريط مدعم');
            PERFORM insert_category_translations('ruban-arme', 'en', 'Reinforced tape');
            PERFORM insert_category_translations('ruban-arme', 'de', 'Verstärktes Band');
            PERFORM insert_category_translations('ruban-arme', 'es', 'Cinta reforzada');
            PERFORM insert_category_translations('ruban-arme', 'it', 'Nastro rinforzato');

            -- Level 2: ruban-de-masquage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ruban-de-masquage', 'ruban-de-masquage', 2, l1_id, 'Ruban de masquage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ruban-de-masquage', 'fr', 'Ruban de masquage');
            PERFORM insert_category_translations('ruban-de-masquage', 'ar', 'شريط إخفاء');
            PERFORM insert_category_translations('ruban-de-masquage', 'en', 'Masking tape');
            PERFORM insert_category_translations('ruban-de-masquage', 'de', 'Abklebeband');
            PERFORM insert_category_translations('ruban-de-masquage', 'es', 'Cinta de enmascarar');
            PERFORM insert_category_translations('ruban-de-masquage', 'it', 'Nastro mascherante');

            -- Level 2: colles-de-montage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('colles-de-montage', 'colles-de-montage', 2, l1_id, 'Colles de montage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('colles-de-montage', 'fr', 'Colles de montage');
            PERFORM insert_category_translations('colles-de-montage', 'ar', 'غراء تركيب');
            PERFORM insert_category_translations('colles-de-montage', 'en', 'Assembly glues');
            PERFORM insert_category_translations('colles-de-montage', 'de', 'Montagekleber');
            PERFORM insert_category_translations('colles-de-montage', 'es', 'Colas de montaje');
            PERFORM insert_category_translations('colles-de-montage', 'it', 'Collanti di montaggio');

        -- Level 1: produits-soudure-brasage
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-soudure-brasage', 'produits-soudure-brasage', 1, root_id, 'Produits de soudure & brasage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('produits-soudure-brasage', 'fr', 'Produits de soudure & brasage');
        PERFORM insert_category_translations('produits-soudure-brasage', 'ar', 'لحام وبرازيج');
        PERFORM insert_category_translations('produits-soudure-brasage', 'en', 'Soldering & Brazing');
        PERFORM insert_category_translations('produits-soudure-brasage', 'de', 'Schweißen & Löten');
        PERFORM insert_category_translations('produits-soudure-brasage', 'es', 'Soldadura y brasaje');
        PERFORM insert_category_translations('produits-soudure-brasage', 'it', 'Saldatura & brasatura');

            -- Level 2: fers-a-souder
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fers-a-souder', 'fers-a-souder', 2, l1_id, 'Fers à souder')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fers-a-souder', 'fr', 'Fers à souder');
            PERFORM insert_category_translations('fers-a-souder', 'ar', 'كاويات لحام');
            PERFORM insert_category_translations('fers-a-souder', 'en', 'Soldering irons');
            PERFORM insert_category_translations('fers-a-souder', 'de', 'Lötkolben');
            PERFORM insert_category_translations('fers-a-souder', 'es', 'Soldadores');
            PERFORM insert_category_translations('fers-a-souder', 'it', 'Saldatori');

            -- Level 2: stations-de-soudure
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('stations-de-soudure', 'stations-de-soudure', 2, l1_id, 'Stations de soudure')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('stations-de-soudure', 'fr', 'Stations de soudure');
            PERFORM insert_category_translations('stations-de-soudure', 'ar', 'محطات لحام');
            PERFORM insert_category_translations('stations-de-soudure', 'en', 'Soldering stations');
            PERFORM insert_category_translations('stations-de-soudure', 'de', 'Lötstationen');
            PERFORM insert_category_translations('stations-de-soudure', 'es', 'Estaciones de soldadura');
            PERFORM insert_category_translations('stations-de-soudure', 'it', 'Stazioni di saldatura');

            -- Level 2: etain
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('etain', 'etain', 2, l1_id, 'Étain')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('etain', 'fr', 'Étain');
            PERFORM insert_category_translations('etain', 'ar', 'قصدير');
            PERFORM insert_category_translations('etain', 'en', 'Tin');
            PERFORM insert_category_translations('etain', 'de', 'Lötzinn');
            PERFORM insert_category_translations('etain', 'es', 'Estaño');
            PERFORM insert_category_translations('etain', 'it', 'Stagno');

            -- Level 2: chalumeaux-gaz
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chalumeaux-gaz', 'chalumeaux-gaz', 2, l1_id, 'Chalumeaux gaz')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chalumeaux-gaz', 'fr', 'Chalumeaux gaz');
            PERFORM insert_category_translations('chalumeaux-gaz', 'ar', 'مشاعل غاز');
            PERFORM insert_category_translations('chalumeaux-gaz', 'en', 'Gas blowtorches');
            PERFORM insert_category_translations('chalumeaux-gaz', 'de', 'Gasbrenner');
            PERFORM insert_category_translations('chalumeaux-gaz', 'es', 'Soplete de gas');
            PERFORM insert_category_translations('chalumeaux-gaz', 'it', 'Cannelli a gas');

            -- Level 2: baguettes-de-soudure
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('baguettes-de-soudure', 'baguettes-de-soudure', 2, l1_id, 'Baguettes de soudure')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('baguettes-de-soudure', 'fr', 'Baguettes de soudure');
            PERFORM insert_category_translations('baguettes-de-soudure', 'ar', 'أعواد لحام');
            PERFORM insert_category_translations('baguettes-de-soudure', 'en', 'Soldering rods');
            PERFORM insert_category_translations('baguettes-de-soudure', 'de', 'Schweißstäbe');
            PERFORM insert_category_translations('baguettes-de-soudure', 'es', 'Varillas de soldar');
            PERFORM insert_category_translations('baguettes-de-soudure', 'it', 'Bacchette di saldatura');

            -- Level 2: baguettes-de-brasage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('baguettes-de-brasage', 'baguettes-de-brasage', 2, l1_id, 'Baguettes de brasage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('baguettes-de-brasage', 'fr', 'Baguettes de brasage');
            PERFORM insert_category_translations('baguettes-de-brasage', 'ar', 'أعواد برازيج');
            PERFORM insert_category_translations('baguettes-de-brasage', 'en', 'Brazing rods');
            PERFORM insert_category_translations('baguettes-de-brasage', 'de', 'Lötstäbe');
            PERFORM insert_category_translations('baguettes-de-brasage', 'es', 'Varillas de brasaje');
            PERFORM insert_category_translations('baguettes-de-brasage', 'it', 'Bacchette di brasatura');

            -- Level 2: masques-de-soudure
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('masques-de-soudure', 'masques-de-soudure', 2, l1_id, 'Masques de soudure')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('masques-de-soudure', 'fr', 'Masques de soudure');
            PERFORM insert_category_translations('masques-de-soudure', 'ar', 'أقنعة لحام');
            PERFORM insert_category_translations('masques-de-soudure', 'en', 'Welding masks');
            PERFORM insert_category_translations('masques-de-soudure', 'de', 'Schweißmasken');
            PERFORM insert_category_translations('masques-de-soudure', 'es', 'Máscaras de soldadura');
            PERFORM insert_category_translations('masques-de-soudure', 'it', 'Maschere di saldatura');

            -- Level 2: visieres-de-protection
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('visieres-de-protection', 'visieres-de-protection', 2, l1_id, 'Visières de protection')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('visieres-de-protection', 'fr', 'Visières de protection');
            PERFORM insert_category_translations('visieres-de-protection', 'ar', 'واقيات وجه');
            PERFORM insert_category_translations('visieres-de-protection', 'en', 'Protective face shields');
            PERFORM insert_category_translations('visieres-de-protection', 'de', 'Gesichtsschutz');
            PERFORM insert_category_translations('visieres-de-protection', 'es', 'Pantallas protectoras');
            PERFORM insert_category_translations('visieres-de-protection', 'it', 'Visiere protettive');

            -- Level 2: flux-decapants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('flux-decapants', 'flux-decapants', 2, l1_id, 'Flux décapants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('flux-decapants', 'fr', 'Flux décapants');
            PERFORM insert_category_translations('flux-decapants', 'ar', 'فلكس مزيل');
            PERFORM insert_category_translations('flux-decapants', 'en', 'Flux');
            PERFORM insert_category_translations('flux-decapants', 'de', 'Flussmittel');
            PERFORM insert_category_translations('flux-decapants', 'es', 'Fundente');
            PERFORM insert_category_translations('flux-decapants', 'it', 'Flussante');

        -- Level 1: outillage-de-mesure
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('outillage-de-mesure', 'outillage-de-mesure', 1, root_id, 'Outillage de mesure')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('outillage-de-mesure', 'fr', 'Outillage de mesure');
        PERFORM insert_category_translations('outillage-de-mesure', 'ar', 'أدوات قياس');
        PERFORM insert_category_translations('outillage-de-mesure', 'en', 'Measuring Tools');
        PERFORM insert_category_translations('outillage-de-mesure', 'de', 'Messwerkzeuge');
        PERFORM insert_category_translations('outillage-de-mesure', 'es', 'Herramientas de medición');
        PERFORM insert_category_translations('outillage-de-mesure', 'it', 'Strumenti di misura');

            -- Level 2: metres-ruban
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('metres-ruban', 'metres-ruban', 2, l1_id, 'Mètres ruban')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('metres-ruban', 'fr', 'Mètres ruban');
            PERFORM insert_category_translations('metres-ruban', 'ar', 'أشرطة قياس');
            PERFORM insert_category_translations('metres-ruban', 'en', 'Tape measures');
            PERFORM insert_category_translations('metres-ruban', 'de', 'Bandmaß');
            PERFORM insert_category_translations('metres-ruban', 'es', 'Cintas métricas');
            PERFORM insert_category_translations('metres-ruban', 'it', 'Flessometri');

            -- Level 2: metres-laser
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('metres-laser', 'metres-laser', 2, l1_id, 'Mètres laser')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('metres-laser', 'fr', 'Mètres laser');
            PERFORM insert_category_translations('metres-laser', 'ar', 'مقاييس ليزر');
            PERFORM insert_category_translations('metres-laser', 'en', 'Laser meters');
            PERFORM insert_category_translations('metres-laser', 'de', 'Laser-Entfernungsmesser');
            PERFORM insert_category_translations('metres-laser', 'es', 'Medidores láser');
            PERFORM insert_category_translations('metres-laser', 'it', 'Misuratori laser');

            -- Level 2: telemetres-laser
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('telemetres-laser', 'telemetres-laser', 2, l1_id, 'Télémètres laser')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('telemetres-laser', 'fr', 'Télémètres laser');
            PERFORM insert_category_translations('telemetres-laser', 'ar', 'تيلميتر ليزر');
            PERFORM insert_category_translations('telemetres-laser', 'en', 'Laser rangefinders');
            PERFORM insert_category_translations('telemetres-laser', 'de', 'Laser-Telemeter');
            PERFORM insert_category_translations('telemetres-laser', 'es', 'Télmetros láser');
            PERFORM insert_category_translations('telemetres-laser', 'it', 'Telemetri laser');

            -- Level 2: niveaux-laser
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('niveaux-laser', 'niveaux-laser', 2, l1_id, 'Niveaux laser')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('niveaux-laser', 'fr', 'Niveaux laser');
            PERFORM insert_category_translations('niveaux-laser', 'ar', 'مستويات ليزر');
            PERFORM insert_category_translations('niveaux-laser', 'en', 'Laser levels');
            PERFORM insert_category_translations('niveaux-laser', 'de', 'Laser-Nivelliergeräte');
            PERFORM insert_category_translations('niveaux-laser', 'es', 'Niveles láser');
            PERFORM insert_category_translations('niveaux-laser', 'it', 'Livelli laser');

            -- Level 2: niveaux-a-bulle
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('niveaux-a-bulle', 'niveaux-a-bulle', 2, l1_id, 'Niveaux à bulle')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('niveaux-a-bulle', 'fr', 'Niveaux à bulle');
            PERFORM insert_category_translations('niveaux-a-bulle', 'ar', 'مستويات فقاعات');
            PERFORM insert_category_translations('niveaux-a-bulle', 'en', 'Spirit levels');
            PERFORM insert_category_translations('niveaux-a-bulle', 'de', 'Wasserwaagen');
            PERFORM insert_category_translations('niveaux-a-bulle', 'es', 'Niveles de burbuja');
            PERFORM insert_category_translations('niveaux-a-bulle', 'it', 'Livelle a bolla');

            -- Level 2: equerres-metalliques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('equerres-metalliques', 'equerres-metalliques', 2, l1_id, 'Équerres métalliques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('equerres-metalliques', 'fr', 'Équerres métalliques');
            PERFORM insert_category_translations('equerres-metalliques', 'ar', 'مساطر معدنية');
            PERFORM insert_category_translations('equerres-metalliques', 'en', 'Metal squares');
            PERFORM insert_category_translations('equerres-metalliques', 'de', 'Metallwinkel');
            PERFORM insert_category_translations('equerres-metalliques', 'es', 'Escuadras metálicas');
            PERFORM insert_category_translations('equerres-metalliques', 'it', 'Squadre metalliche');

            -- Level 2: rapporteurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('rapporteurs', 'rapporteurs', 2, l1_id, 'Rapporteurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('rapporteurs', 'fr', 'Rapporteurs');
            PERFORM insert_category_translations('rapporteurs', 'ar', 'منقلة');
            PERFORM insert_category_translations('rapporteurs', 'en', 'Protractors');
            PERFORM insert_category_translations('rapporteurs', 'de', 'Winkelmesser');
            PERFORM insert_category_translations('rapporteurs', 'es', 'Transportadores');
            PERFORM insert_category_translations('rapporteurs', 'it', 'Goniometri');

            -- Level 2: pieds-a-coulisse
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pieds-a-coulisse', 'pieds-a-coulisse', 2, l1_id, 'Pieds à coulisse')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pieds-a-coulisse', 'fr', 'Pieds à coulisse');
            PERFORM insert_category_translations('pieds-a-coulisse', 'ar', 'قدم منزلق');
            PERFORM insert_category_translations('pieds-a-coulisse', 'en', 'Calipers');
            PERFORM insert_category_translations('pieds-a-coulisse', 'de', 'Messschieber');
            PERFORM insert_category_translations('pieds-a-coulisse', 'es', 'Calibradores');
            PERFORM insert_category_translations('pieds-a-coulisse', 'it', 'Calibri');

            -- Level 2: detecteurs-de-cables
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('detecteurs-de-cables', 'detecteurs-de-cables', 2, l1_id, 'Détecteurs de câbles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('detecteurs-de-cables', 'fr', 'Détecteurs de câbles');
            PERFORM insert_category_translations('detecteurs-de-cables', 'ar', 'كواشف كابلات');
            PERFORM insert_category_translations('detecteurs-de-cables', 'en', 'Cable detectors');
            PERFORM insert_category_translations('detecteurs-de-cables', 'de', 'Kabeldetektoren');
            PERFORM insert_category_translations('detecteurs-de-cables', 'es', 'Detectores de cables');
            PERFORM insert_category_translations('detecteurs-de-cables', 'it', 'Rilevatori di cavi');

            -- Level 2: detecteurs-de-metaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('detecteurs-de-metaux', 'detecteurs-de-metaux', 2, l1_id, 'Détecteurs de métaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('detecteurs-de-metaux', 'fr', 'Détecteurs de métaux');
            PERFORM insert_category_translations('detecteurs-de-metaux', 'ar', 'كواشف معادن');
            PERFORM insert_category_translations('detecteurs-de-metaux', 'en', 'Metal detectors');
            PERFORM insert_category_translations('detecteurs-de-metaux', 'de', 'Metalldetektoren');
            PERFORM insert_category_translations('detecteurs-de-metaux', 'es', 'Detectores de metales');
            PERFORM insert_category_translations('detecteurs-de-metaux', 'it', 'Metal detector');

        -- Level 1: rangements-organisation
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('rangements-organisation', 'rangements-organisation', 1, root_id, 'Rangements & organisation')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('rangements-organisation', 'fr', 'Rangements & organisation');
        PERFORM insert_category_translations('rangements-organisation', 'ar', 'تخزين وتنظيم');
        PERFORM insert_category_translations('rangements-organisation', 'en', 'Storage & Organization');
        PERFORM insert_category_translations('rangements-organisation', 'de', 'Aufbewahrung & Organisation');
        PERFORM insert_category_translations('rangements-organisation', 'es', 'Almacenaje y organización');
        PERFORM insert_category_translations('rangements-organisation', 'it', 'Stoccaggio & organizzazione');

            -- Level 2: boites-a-outils
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('boites-a-outils', 'boites-a-outils', 2, l1_id, 'Boîtes à outils')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('boites-a-outils', 'fr', 'Boîtes à outils');
            PERFORM insert_category_translations('boites-a-outils', 'ar', 'صناديق أدوات');
            PERFORM insert_category_translations('boites-a-outils', 'en', 'Toolboxes');
            PERFORM insert_category_translations('boites-a-outils', 'de', 'Werkzeugkisten');
            PERFORM insert_category_translations('boites-a-outils', 'es', 'Cajas de herramientas');
            PERFORM insert_category_translations('boites-a-outils', 'it', 'Cassette degli attrezzi');

            -- Level 2: boites-compartimentees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('boites-compartimentees', 'boites-compartimentees', 2, l1_id, 'Boîtes compartimentées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('boites-compartimentees', 'fr', 'Boîtes compartimentées');
            PERFORM insert_category_translations('boites-compartimentees', 'ar', 'صناديق مقسمة');
            PERFORM insert_category_translations('boites-compartimentees', 'en', 'Compartment boxes');
            PERFORM insert_category_translations('boites-compartimentees', 'de', 'Sortierboxen');
            PERFORM insert_category_translations('boites-compartimentees', 'es', 'Cajas compartimentadas');
            PERFORM insert_category_translations('boites-compartimentees', 'it', 'Scatole scompartimentate');

            -- Level 2: caisses-metalliques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('caisses-metalliques', 'caisses-metalliques', 2, l1_id, 'Caisses métalliques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('caisses-metalliques', 'fr', 'Caisses métalliques');
            PERFORM insert_category_translations('caisses-metalliques', 'ar', 'صناديق معدنية');
            PERFORM insert_category_translations('caisses-metalliques', 'en', 'Metal cases');
            PERFORM insert_category_translations('caisses-metalliques', 'de', 'Metallkisten');
            PERFORM insert_category_translations('caisses-metalliques', 'es', 'Cajas metálicas');
            PERFORM insert_category_translations('caisses-metalliques', 'it', 'Cassette metalliche');

            -- Level 2: organiseurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('organiseurs', 'organiseurs', 2, l1_id, 'Organiseurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('organiseurs', 'fr', 'Organiseurs');
            PERFORM insert_category_translations('organiseurs', 'ar', 'منظمون');
            PERFORM insert_category_translations('organiseurs', 'en', 'Organizers');
            PERFORM insert_category_translations('organiseurs', 'de', 'Organizer');
            PERFORM insert_category_translations('organiseurs', 'es', 'Organizadores');
            PERFORM insert_category_translations('organiseurs', 'it', 'Organizer');

            -- Level 2: valises-de-rangement
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('valises-de-rangement', 'valises-de-rangement', 2, l1_id, 'Valises de rangement')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('valises-de-rangement', 'fr', 'Valises de rangement');
            PERFORM insert_category_translations('valises-de-rangement', 'ar', 'حقائب تخزين');
            PERFORM insert_category_translations('valises-de-rangement', 'en', 'Storage cases');
            PERFORM insert_category_translations('valises-de-rangement', 'de', 'Aufbewahrungskoffer');
            PERFORM insert_category_translations('valises-de-rangement', 'es', 'Maletas de almacenamiento');
            PERFORM insert_category_translations('valises-de-rangement', 'it', 'Valigie di stoccaggio');

            -- Level 2: chariots-de-manutention
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chariots-de-manutention', 'chariots-de-manutention', 2, l1_id, 'Chariots de manutention')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chariots-de-manutention', 'fr', 'Chariots de manutention');
            PERFORM insert_category_translations('chariots-de-manutention', 'ar', 'عربات نقل');
            PERFORM insert_category_translations('chariots-de-manutention', 'en', 'Handling carts');
            PERFORM insert_category_translations('chariots-de-manutention', 'de', 'Transportwagen');
            PERFORM insert_category_translations('chariots-de-manutention', 'es', 'Carros de manipulación');
            PERFORM insert_category_translations('chariots-de-manutention', 'it', 'Carrelli di movimentazione');

            -- Level 2: etagieres-metalliques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('etagieres-metalliques', 'etagieres-metalliques', 2, l1_id, 'Étagères métalliques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('etagieres-metalliques', 'fr', 'Étagères métalliques');
            PERFORM insert_category_translations('etagieres-metalliques', 'ar', 'رفوف معدنية');
            PERFORM insert_category_translations('etagieres-metalliques', 'en', 'Metal shelves');
            PERFORM insert_category_translations('etagieres-metalliques', 'de', 'Metallregale');
            PERFORM insert_category_translations('etagieres-metalliques', 'es', 'Estanterías metálicas');
            PERFORM insert_category_translations('etagieres-metalliques', 'it', 'Mensole metalliche');

            -- Level 2: coffres-de-chantier
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('coffres-de-chantier', 'coffres-de-chantier', 2, l1_id, 'Coffres de chantier')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('coffres-de-chantier', 'fr', 'Coffres de chantier');
            PERFORM insert_category_translations('coffres-de-chantier', 'ar', 'صناديق موقع');
            PERFORM insert_category_translations('coffres-de-chantier', 'en', 'Site chests');
            PERFORM insert_category_translations('coffres-de-chantier', 'de', 'Baustellenkisten');
            PERFORM insert_category_translations('coffres-de-chantier', 'es', 'Cofres de obra');
            PERFORM insert_category_translations('coffres-de-chantier', 'it', 'Bauli da cantiere');

            -- Level 2: supports-muraux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('supports-muraux', 'supports-muraux', 2, l1_id, 'Supports muraux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('supports-muraux', 'fr', 'Supports muraux');
            PERFORM insert_category_translations('supports-muraux', 'ar', 'حوامل حائط');
            PERFORM insert_category_translations('supports-muraux', 'en', 'Wall mounts');
            PERFORM insert_category_translations('supports-muraux', 'de', 'Wandhalterungen');
            PERFORM insert_category_translations('supports-muraux', 'es', 'Soportes murales');
            PERFORM insert_category_translations('supports-muraux', 'it', 'Supporti a parete');

        -- Level 1: materiaux-metalliques-accessoires
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('materiaux-metalliques-accessoires', 'materiaux-metalliques-accessoires', 1, root_id, 'Matériaux métalliques & accessoires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('materiaux-metalliques-accessoires', 'fr', 'Matériaux métalliques & accessoires');
        PERFORM insert_category_translations('materiaux-metalliques-accessoires', 'ar', 'مواد معدنية وإكسسوارات');
        PERFORM insert_category_translations('materiaux-metalliques-accessoires', 'en', 'Metal Materials & Accessories');
        PERFORM insert_category_translations('materiaux-metalliques-accessoires', 'de', 'Metallmaterial & Zubehör');
        PERFORM insert_category_translations('materiaux-metalliques-accessoires', 'es', 'Materiales metálicos y accesorios');
        PERFORM insert_category_translations('materiaux-metalliques-accessoires', 'it', 'Materiali metallici & accessori');

            -- Level 2: barres-metalliques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('barres-metalliques', 'barres-metalliques', 2, l1_id, 'Barres métalliques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('barres-metalliques', 'fr', 'Barres métalliques');
            PERFORM insert_category_translations('barres-metalliques', 'ar', 'قضبان معدنية');
            PERFORM insert_category_translations('barres-metalliques', 'en', 'Metal bars');
            PERFORM insert_category_translations('barres-metalliques', 'de', 'Metallstangen');
            PERFORM insert_category_translations('barres-metalliques', 'es', 'Barras metálicas');
            PERFORM insert_category_translations('barres-metalliques', 'it', 'Barre metalliche');

            -- Level 2: barres-dacier
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('barres-dacier', 'barres-dacier', 2, l1_id, 'Barres d’acier')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('barres-dacier', 'fr', 'Barres d’acier');
            PERFORM insert_category_translations('barres-dacier', 'ar', 'قضبان فولاذ');
            PERFORM insert_category_translations('barres-dacier', 'en', 'Steel bars');
            PERFORM insert_category_translations('barres-dacier', 'de', 'Stahlstangen');
            PERFORM insert_category_translations('barres-dacier', 'es', 'Barras de acero');
            PERFORM insert_category_translations('barres-dacier', 'it', 'Barre di acciaio');

            -- Level 2: profils-aluminium
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('profils-aluminium', 'profils-aluminium', 2, l1_id, 'Profilés aluminium')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('profils-aluminium', 'fr', 'Profilés aluminium');
            PERFORM insert_category_translations('profils-aluminium', 'ar', 'بروفيلات ألومنيوم');
            PERFORM insert_category_translations('profils-aluminium', 'en', 'Aluminum profiles');
            PERFORM insert_category_translations('profils-aluminium', 'de', 'Aluprofile');
            PERFORM insert_category_translations('profils-aluminium', 'es', 'Perfiles de aluminio');
            PERFORM insert_category_translations('profils-aluminium', 'it', 'Profili in alluminio');

            -- Level 2: profils-inox
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('profils-inox', 'profils-inox', 2, l1_id, 'Profilés inox')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('profils-inox', 'fr', 'Profilés inox');
            PERFORM insert_category_translations('profils-inox', 'ar', 'بروفيلات ستانلس');
            PERFORM insert_category_translations('profils-inox', 'en', 'Stainless profiles');
            PERFORM insert_category_translations('profils-inox', 'de', 'Edelstahlprofile');
            PERFORM insert_category_translations('profils-inox', 'es', 'Perfiles inox');
            PERFORM insert_category_translations('profils-inox', 'it', 'Profili inox');

            -- Level 2: grillages-soudes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('grillages-soudes', 'grillages-soudes', 2, l1_id, 'Grillages soudés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('grillages-soudes', 'fr', 'Grillages soudés');
            PERFORM insert_category_translations('grillages-soudes', 'ar', 'شبكات ملحومة');
            PERFORM insert_category_translations('grillages-soudes', 'en', 'Welded mesh');
            PERFORM insert_category_translations('grillages-soudes', 'de', 'Gittermatten');
            PERFORM insert_category_translations('grillages-soudes', 'es', 'Mallas soldadas');
            PERFORM insert_category_translations('grillages-soudes', 'it', 'Reti saldate');

            -- Level 2: panneaux-grillages
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('panneaux-grillages', 'panneaux-grillages', 2, l1_id, 'Panneaux grillagés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('panneaux-grillages', 'fr', 'Panneaux grillagés');
            PERFORM insert_category_translations('panneaux-grillages', 'ar', 'ألواح شبكية');
            PERFORM insert_category_translations('panneaux-grillages', 'en', 'Mesh panels');
            PERFORM insert_category_translations('panneaux-grillages', 'de', 'Gitterpaneele');
            PERFORM insert_category_translations('panneaux-grillages', 'es', 'Paneles mallados');
            PERFORM insert_category_translations('panneaux-grillages', 'it', 'Pannelli retinati');

            -- Level 2: chaines-metalliques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chaines-metalliques', 'chaines-metalliques', 2, l1_id, 'Chaînes métalliques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chaines-metalliques', 'fr', 'Chaînes métalliques');
            PERFORM insert_category_translations('chaines-metalliques', 'ar', 'سلاسل معدنية');
            PERFORM insert_category_translations('chaines-metalliques', 'en', 'Metal chains');
            PERFORM insert_category_translations('chaines-metalliques', 'de', 'Metallketten');
            PERFORM insert_category_translations('chaines-metalliques', 'es', 'Cadenas metálicas');
            PERFORM insert_category_translations('chaines-metalliques', 'it', 'Catene metalliche');

            -- Level 2: cables-acier
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cables-acier', 'cables-acier', 2, l1_id, 'Câbles acier')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cables-acier', 'fr', 'Câbles acier');
            PERFORM insert_category_translations('cables-acier', 'ar', 'كوابل فولاذ');
            PERFORM insert_category_translations('cables-acier', 'en', 'Steel cables');
            PERFORM insert_category_translations('cables-acier', 'de', 'Stahlseile');
            PERFORM insert_category_translations('cables-acier', 'es', 'Cables de acero');
            PERFORM insert_category_translations('cables-acier', 'it', 'Cavi d’acciaio');

            -- Level 2: tendeurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tendeurs', 'tendeurs', 2, l1_id, 'Tendeurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tendeurs', 'fr', 'Tendeurs');
            PERFORM insert_category_translations('tendeurs', 'ar', 'مشدات');
            PERFORM insert_category_translations('tendeurs', 'en', 'Turnbuckles');
            PERFORM insert_category_translations('tendeurs', 'de', 'Spannschrauben');
            PERFORM insert_category_translations('tendeurs', 'es', 'Tensor');
            PERFORM insert_category_translations('tendeurs', 'it', 'Tiranti');

            -- Level 2: cornieres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cornieres', 'cornieres', 2, l1_id, 'Cornières')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cornieres', 'fr', 'Cornières');
            PERFORM insert_category_translations('cornieres', 'ar', 'زوايا');
            PERFORM insert_category_translations('cornieres', 'en', 'Angles');
            PERFORM insert_category_translations('cornieres', 'de', 'Winkelprofile');
            PERFORM insert_category_translations('cornieres', 'es', 'Escuadras');
            PERFORM insert_category_translations('cornieres', 'it', 'Angolari');

            -- Level 2: tubes-metalliques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tubes-metalliques', 'tubes-metalliques', 2, l1_id, 'Tubes métalliques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tubes-metalliques', 'fr', 'Tubes métalliques');
            PERFORM insert_category_translations('tubes-metalliques', 'ar', 'أنابيب معدنية');
            PERFORM insert_category_translations('tubes-metalliques', 'en', 'Metal tubes');
            PERFORM insert_category_translations('tubes-metalliques', 'de', 'Metallrohre');
            PERFORM insert_category_translations('tubes-metalliques', 'es', 'Tubos metálicos');
            PERFORM insert_category_translations('tubes-metalliques', 'it', 'Tubi metallici');

        -- Level 1: peinture-preparation
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('peinture-preparation', 'peinture-preparation', 1, root_id, 'Peinture & préparation')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('peinture-preparation', 'fr', 'Peinture & préparation');
        PERFORM insert_category_translations('peinture-preparation', 'ar', 'دهان وتحضير');
        PERFORM insert_category_translations('peinture-preparation', 'en', 'Painting & Prep');
        PERFORM insert_category_translations('peinture-preparation', 'de', 'Malen & Vorbereitung');
        PERFORM insert_category_translations('peinture-preparation', 'es', 'Pintura y preparación');
        PERFORM insert_category_translations('peinture-preparation', 'it', 'Vernici & preparazione');

            -- Level 2: pinceaux-plats
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pinceaux-plats', 'pinceaux-plats', 2, l1_id, 'Pinceaux plats')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pinceaux-plats', 'fr', 'Pinceaux plats');
            PERFORM insert_category_translations('pinceaux-plats', 'ar', 'فرش مسطحة');
            PERFORM insert_category_translations('pinceaux-plats', 'en', 'Flat brushes');
            PERFORM insert_category_translations('pinceaux-plats', 'de', 'Flachpinsel');
            PERFORM insert_category_translations('pinceaux-plats', 'es', 'Brochas planas');
            PERFORM insert_category_translations('pinceaux-plats', 'it', 'Pennelli piatti');

            -- Level 2: pinceaux-ronds
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pinceaux-ronds', 'pinceaux-ronds', 2, l1_id, 'Pinceaux ronds')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pinceaux-ronds', 'fr', 'Pinceaux ronds');
            PERFORM insert_category_translations('pinceaux-ronds', 'ar', 'فرش دائرية');
            PERFORM insert_category_translations('pinceaux-ronds', 'en', 'Round brushes');
            PERFORM insert_category_translations('pinceaux-ronds', 'de', 'Rundpinsel');
            PERFORM insert_category_translations('pinceaux-ronds', 'es', 'Brochas redondas');
            PERFORM insert_category_translations('pinceaux-ronds', 'it', 'Pennelli rotondi');

            -- Level 2: rouleaux-anti-goutte
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('rouleaux-anti-goutte', 'rouleaux-anti-goutte', 2, l1_id, 'Rouleaux anti-goutte')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('rouleaux-anti-goutte', 'fr', 'Rouleaux anti-goutte');
            PERFORM insert_category_translations('rouleaux-anti-goutte', 'ar', 'رولات مانعة للتقطير');
            PERFORM insert_category_translations('rouleaux-anti-goutte', 'en', 'Anti-drip rollers');
            PERFORM insert_category_translations('rouleaux-anti-goutte', 'de', 'Tropffreie Rollen');
            PERFORM insert_category_translations('rouleaux-anti-goutte', 'es', 'Rodillos antigoteo');
            PERFORM insert_category_translations('rouleaux-anti-goutte', 'it', 'Rulli antigoccia');

            -- Level 2: rouleaux-laqueurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('rouleaux-laqueurs', 'rouleaux-laqueurs', 2, l1_id, 'Rouleaux laqueurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('rouleaux-laqueurs', 'fr', 'Rouleaux laqueurs');
            PERFORM insert_category_translations('rouleaux-laqueurs', 'ar', 'رولات للطلاء');
            PERFORM insert_category_translations('rouleaux-laqueurs', 'en', 'Lacquer rollers');
            PERFORM insert_category_translations('rouleaux-laqueurs', 'de', 'Lackierrollen');
            PERFORM insert_category_translations('rouleaux-laqueurs', 'es', 'Rodillos lacadores');
            PERFORM insert_category_translations('rouleaux-laqueurs', 'it', 'Rulli per smalti');

            -- Level 2: bacs-a-peinture
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bacs-a-peinture', 'bacs-a-peinture', 2, l1_id, 'Bacs à peinture')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bacs-a-peinture', 'fr', 'Bacs à peinture');
            PERFORM insert_category_translations('bacs-a-peinture', 'ar', 'صواني طلاء');
            PERFORM insert_category_translations('bacs-a-peinture', 'en', 'Paint trays');
            PERFORM insert_category_translations('bacs-a-peinture', 'de', 'Farbwannen');
            PERFORM insert_category_translations('bacs-a-peinture', 'es', 'Bandejas de pintura');
            PERFORM insert_category_translations('bacs-a-peinture', 'it', 'Vaschette per pittura');

            -- Level 2: grilles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('grilles', 'grilles', 2, l1_id, 'Grilles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('grilles', 'fr', 'Grilles');
            PERFORM insert_category_translations('grilles', 'ar', 'شبكات');
            PERFORM insert_category_translations('grilles', 'en', 'Grids');
            PERFORM insert_category_translations('grilles', 'de', 'Abstreifgitter');
            PERFORM insert_category_translations('grilles', 'es', 'Rejillas');
            PERFORM insert_category_translations('grilles', 'it', 'Griglie');

            -- Level 2: abrasifs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('abrasifs', 'abrasifs', 2, l1_id, 'Abrasifs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('abrasifs', 'fr', 'Abrasifs');
            PERFORM insert_category_translations('abrasifs', 'ar', 'مواد كاشطة');
            PERFORM insert_category_translations('abrasifs', 'en', 'Abrasives');
            PERFORM insert_category_translations('abrasifs', 'de', 'Schleifmittel');
            PERFORM insert_category_translations('abrasifs', 'es', 'Abrasivos');
            PERFORM insert_category_translations('abrasifs', 'it', 'Abrasivi');

            -- Level 2: papiers-de-verre
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('papiers-de-verre', 'papiers-de-verre', 2, l1_id, 'Papiers de verre')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('papiers-de-verre', 'fr', 'Papiers de verre');
            PERFORM insert_category_translations('papiers-de-verre', 'ar', 'ورق زجاج');
            PERFORM insert_category_translations('papiers-de-verre', 'en', 'Sandpapers');
            PERFORM insert_category_translations('papiers-de-verre', 'de', 'Schleifpapier');
            PERFORM insert_category_translations('papiers-de-verre', 'es', 'Lijas');
            PERFORM insert_category_translations('papiers-de-verre', 'it', 'Carte abrasive');

            -- Level 2: enduits-de-finition
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('enduits-de-finition', 'enduits-de-finition', 2, l1_id, 'Enduits de finition')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('enduits-de-finition', 'fr', 'Enduits de finition');
            PERFORM insert_category_translations('enduits-de-finition', 'ar', 'معاجين تشطيب');
            PERFORM insert_category_translations('enduits-de-finition', 'en', 'Finishing compounds');
            PERFORM insert_category_translations('enduits-de-finition', 'de', 'Feinspachtel');
            PERFORM insert_category_translations('enduits-de-finition', 'es', 'Masillas de acabado');
            PERFORM insert_category_translations('enduits-de-finition', 'it', 'Stucco di finitura');

            -- Level 2: apprets
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('apprets', 'apprets', 2, l1_id, 'Apprêts')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('apprets', 'fr', 'Apprêts');
            PERFORM insert_category_translations('apprets', 'ar', 'برايمر');
            PERFORM insert_category_translations('apprets', 'en', 'Primers');
            PERFORM insert_category_translations('apprets', 'de', 'Grundierungen');
            PERFORM insert_category_translations('apprets', 'es', 'Imprimaciones');
            PERFORM insert_category_translations('apprets', 'it', 'Primer');

            -- Level 2: baches-de-protection
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('baches-de-protection', 'baches-de-protection', 2, l1_id, 'Bâches de protection')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('baches-de-protection', 'fr', 'Bâches de protection');
            PERFORM insert_category_translations('baches-de-protection', 'ar', 'أغطية حماية');
            PERFORM insert_category_translations('baches-de-protection', 'en', 'Protective tarps');
            PERFORM insert_category_translations('baches-de-protection', 'de', 'Schutzplanen');
            PERFORM insert_category_translations('baches-de-protection', 'es', 'Lonas de protección');
            PERFORM insert_category_translations('baches-de-protection', 'it', 'Teli protettivi');

            -- Level 2: rubans-de-masquage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('rubans-de-masquage', 'rubans-de-masquage', 2, l1_id, 'Rubans de masquage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('rubans-de-masquage', 'fr', 'Rubans de masquage');
            PERFORM insert_category_translations('rubans-de-masquage', 'ar', 'أشرطة تغطية');
            PERFORM insert_category_translations('rubans-de-masquage', 'en', 'Masking tapes');
            PERFORM insert_category_translations('rubans-de-masquage', 'de', 'Abdeckbänder');
            PERFORM insert_category_translations('rubans-de-masquage', 'es', 'Cintas de enmascarar');
            PERFORM insert_category_translations('rubans-de-masquage', 'it', 'Nastro di mascheratura');

            -- Level 2: solvants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('solvants', 'solvants', 2, l1_id, 'Solvants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('solvants', 'fr', 'Solvants');
            PERFORM insert_category_translations('solvants', 'ar', 'مذيبات');
            PERFORM insert_category_translations('solvants', 'en', 'Solvents');
            PERFORM insert_category_translations('solvants', 'de', 'Lösungsmittel');
            PERFORM insert_category_translations('solvants', 'es', 'Disolventes');
            PERFORM insert_category_translations('solvants', 'it', 'Solventi');

        -- Level 1: jardinerie-bricolage-leger
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jardinerie-bricolage-leger', 'jardinerie-bricolage-leger', 1, root_id, 'Jardinerie & bricolage léger')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('jardinerie-bricolage-leger', 'fr', 'Jardinerie & bricolage léger');
        PERFORM insert_category_translations('jardinerie-bricolage-leger', 'ar', 'بستنة وأعمال خفيفة');
        PERFORM insert_category_translations('jardinerie-bricolage-leger', 'en', 'Gardening & Light DIY');
        PERFORM insert_category_translations('jardinerie-bricolage-leger', 'de', 'Garten & leichtes Heimwerken');
        PERFORM insert_category_translations('jardinerie-bricolage-leger', 'es', 'Jardinería y bricolaje ligero');
        PERFORM insert_category_translations('jardinerie-bricolage-leger', 'it', 'Giardinaggio & fai-da-te leggero');

            -- Level 2: petits-outils-de-jardin
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('petits-outils-de-jardin', 'petits-outils-de-jardin', 2, l1_id, 'Petits outils de jardin')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('petits-outils-de-jardin', 'fr', 'Petits outils de jardin');
            PERFORM insert_category_translations('petits-outils-de-jardin', 'ar', 'أدوات حدائق صغيرة');
            PERFORM insert_category_translations('petits-outils-de-jardin', 'en', 'Small garden tools');
            PERFORM insert_category_translations('petits-outils-de-jardin', 'de', 'Kleine Gartengeräte');
            PERFORM insert_category_translations('petits-outils-de-jardin', 'es', 'Pequeñas herramientas de jardín');
            PERFORM insert_category_translations('petits-outils-de-jardin', 'it', 'Piccoli attrezzi da giardino');

            -- Level 2: secateurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('secateurs', 'secateurs', 2, l1_id, 'Sécateurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('secateurs', 'fr', 'Sécateurs');
            PERFORM insert_category_translations('secateurs', 'ar', 'مقصات تقليم');
            PERFORM insert_category_translations('secateurs', 'en', 'Pruners');
            PERFORM insert_category_translations('secateurs', 'de', 'Gartenscheren');
            PERFORM insert_category_translations('secateurs', 'es', 'Tijeras de podar');
            PERFORM insert_category_translations('secateurs', 'it', 'Cesoie');

            -- Level 2: elagueurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('elagueurs', 'elagueurs', 2, l1_id, 'Élagueurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('elagueurs', 'fr', 'Élagueurs');
            PERFORM insert_category_translations('elagueurs', 'ar', 'مناشير تقليم');
            PERFORM insert_category_translations('elagueurs', 'en', 'Loppers');
            PERFORM insert_category_translations('elagueurs', 'de', 'Astscheren');
            PERFORM insert_category_translations('elagueurs', 'es', 'Cizallas');
            PERFORM insert_category_translations('elagueurs', 'it', 'Sramatori');

            -- Level 2: pulverisateurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pulverisateurs', 'pulverisateurs', 2, l1_id, 'Pulvérisateurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pulverisateurs', 'fr', 'Pulvérisateurs');
            PERFORM insert_category_translations('pulverisateurs', 'ar', 'مرشات');
            PERFORM insert_category_translations('pulverisateurs', 'en', 'Sprayers');
            PERFORM insert_category_translations('pulverisateurs', 'de', 'Sprühgeräte');
            PERFORM insert_category_translations('pulverisateurs', 'es', 'Pulverizadores');
            PERFORM insert_category_translations('pulverisateurs', 'it', 'Spruzzatori');

            -- Level 2: arrosoirs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('arrosoirs', 'arrosoirs', 2, l1_id, 'Arrosoirs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('arrosoirs', 'fr', 'Arrosoirs');
            PERFORM insert_category_translations('arrosoirs', 'ar', 'مرشات مياه');
            PERFORM insert_category_translations('arrosoirs', 'en', 'Watering cans');
            PERFORM insert_category_translations('arrosoirs', 'de', 'Gießkannen');
            PERFORM insert_category_translations('arrosoirs', 'es', 'Regaderas');
            PERFORM insert_category_translations('arrosoirs', 'it', 'Annaffiatoi');

            -- Level 2: mini-outils-de-plantation
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mini-outils-de-plantation', 'mini-outils-de-plantation', 2, l1_id, 'Mini-outils de plantation')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mini-outils-de-plantation', 'fr', 'Mini-outils de plantation');
            PERFORM insert_category_translations('mini-outils-de-plantation', 'ar', 'أدوات زرع صغيرة');
            PERFORM insert_category_translations('mini-outils-de-plantation', 'en', 'Mini planting tools');
            PERFORM insert_category_translations('mini-outils-de-plantation', 'de', 'Pflanzwerkzeuge');
            PERFORM insert_category_translations('mini-outils-de-plantation', 'es', 'Mini herramientas de plantación');
            PERFORM insert_category_translations('mini-outils-de-plantation', 'it', 'Mini attrezzi per piantare');

            -- Level 2: rateaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('rateaux', 'rateaux', 2, l1_id, 'Râteaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('rateaux', 'fr', 'Râteaux');
            PERFORM insert_category_translations('rateaux', 'ar', 'مجارف');
            PERFORM insert_category_translations('rateaux', 'en', 'Rakes');
            PERFORM insert_category_translations('rateaux', 'de', 'Rechen');
            PERFORM insert_category_translations('rateaux', 'es', 'Rastrillos');
            PERFORM insert_category_translations('rateaux', 'it', 'Rastrelli');

            -- Level 2: griffes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('griffes', 'griffes', 2, l1_id, 'Griffes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('griffes', 'fr', 'Griffes');
            PERFORM insert_category_translations('griffes', 'ar', 'مشاكط');
            PERFORM insert_category_translations('griffes', 'en', 'Cultivators');
            PERFORM insert_category_translations('griffes', 'de', 'Kralle');
            PERFORM insert_category_translations('griffes', 'es', 'Gradas de mano');
            PERFORM insert_category_translations('griffes', 'it', 'Zappette');

            -- Level 2: kits-de-reparation-jardin
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('kits-de-reparation-jardin', 'kits-de-reparation-jardin', 2, l1_id, 'Kits de réparation jardin')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('kits-de-reparation-jardin', 'fr', 'Kits de réparation jardin');
            PERFORM insert_category_translations('kits-de-reparation-jardin', 'ar', 'عدة إصلاح حدائق');
            PERFORM insert_category_translations('kits-de-reparation-jardin', 'en', 'Garden repair kits');
            PERFORM insert_category_translations('kits-de-reparation-jardin', 'de', 'Gartenreparatursets');
            PERFORM insert_category_translations('kits-de-reparation-jardin', 'es', 'Kits de reparación de jardín');
            PERFORM insert_category_translations('kits-de-reparation-jardin', 'it', 'Kit riparazione giardino');

            -- Level 2: gants-de-jardinage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gants-de-jardinage', 'gants-de-jardinage', 2, l1_id, 'Gants de jardinage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gants-de-jardinage', 'fr', 'Gants de jardinage');
            PERFORM insert_category_translations('gants-de-jardinage', 'ar', 'قفازات حدائق');
            PERFORM insert_category_translations('gants-de-jardinage', 'en', 'Gardening gloves');
            PERFORM insert_category_translations('gants-de-jardinage', 'de', 'Gartenhandschuhe');
            PERFORM insert_category_translations('gants-de-jardinage', 'es', 'Guantes de jardinería');
            PERFORM insert_category_translations('gants-de-jardinage', 'it', 'Guanti da giardinaggio');

        -- Level 1: accessoires-divers
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-divers', 'accessoires-divers', 1, root_id, 'Accessoires divers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('accessoires-divers', 'fr', 'Accessoires divers');
        PERFORM insert_category_translations('accessoires-divers', 'ar', 'إكسسوارات متنوعة');
        PERFORM insert_category_translations('accessoires-divers', 'en', 'Misc Accessories');
        PERFORM insert_category_translations('accessoires-divers', 'de', 'Diverse Zubehör');
        PERFORM insert_category_translations('accessoires-divers', 'es', 'Accesorios varios');
        PERFORM insert_category_translations('accessoires-divers', 'it', 'Accessori vari');

            -- Level 2: joints-varies
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('joints-varies', 'joints-varies', 2, l1_id, 'Joints variés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('joints-varies', 'fr', 'Joints variés');
            PERFORM insert_category_translations('joints-varies', 'ar', 'حشوات متنوعة');
            PERFORM insert_category_translations('joints-varies', 'en', 'Various gaskets');
            PERFORM insert_category_translations('joints-varies', 'de', 'Verschiedene Dichtungen');
            PERFORM insert_category_translations('joints-varies', 'es', 'Juntas varias');
            PERFORM insert_category_translations('joints-varies', 'it', 'Guarnizioni varie');

            -- Level 2: poignees-diverses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('poignees-diverses', 'poignees-diverses', 2, l1_id, 'Poignées diverses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('poignees-diverses', 'fr', 'Poignées diverses');
            PERFORM insert_category_translations('poignees-diverses', 'ar', 'مقابض متنوعة');
            PERFORM insert_category_translations('poignees-diverses', 'en', 'Various handles');
            PERFORM insert_category_translations('poignees-diverses', 'de', 'Verschiedene Griffe');
            PERFORM insert_category_translations('poignees-diverses', 'es', 'Manillas varias');
            PERFORM insert_category_translations('poignees-diverses', 'it', 'Maniglie varie');

            -- Level 2: boutons-de-meuble
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('boutons-de-meuble', 'boutons-de-meuble', 2, l1_id, 'Boutons de meuble')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('boutons-de-meuble', 'fr', 'Boutons de meuble');
            PERFORM insert_category_translations('boutons-de-meuble', 'ar', 'أزرار أثاث');
            PERFORM insert_category_translations('boutons-de-meuble', 'en', 'Furniture knobs');
            PERFORM insert_category_translations('boutons-de-meuble', 'de', 'Möbelknöpfe');
            PERFORM insert_category_translations('boutons-de-meuble', 'es', 'Pomos de muebles');
            PERFORM insert_category_translations('boutons-de-meuble', 'it', 'Pomelli per mobili');

            -- Level 2: pieds-de-meubles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pieds-de-meubles', 'pieds-de-meubles', 2, l1_id, 'Pieds de meubles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pieds-de-meubles', 'fr', 'Pieds de meubles');
            PERFORM insert_category_translations('pieds-de-meubles', 'ar', 'أقدام أثاث');
            PERFORM insert_category_translations('pieds-de-meubles', 'en', 'Furniture feet');
            PERFORM insert_category_translations('pieds-de-meubles', 'de', 'Möbelfüße');
            PERFORM insert_category_translations('pieds-de-meubles', 'es', 'Patas de muebles');
            PERFORM insert_category_translations('pieds-de-meubles', 'it', 'Piedi per mobili');

            -- Level 2: roulettes-de-deplacement
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('roulettes-de-deplacement', 'roulettes-de-deplacement', 2, l1_id, 'Roulettes de déplacement')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('roulettes-de-deplacement', 'fr', 'Roulettes de déplacement');
            PERFORM insert_category_translations('roulettes-de-deplacement', 'ar', 'عجلات نقل');
            PERFORM insert_category_translations('roulettes-de-deplacement', 'en', 'Moving casters');
            PERFORM insert_category_translations('roulettes-de-deplacement', 'de', 'Transportrollen');
            PERFORM insert_category_translations('roulettes-de-deplacement', 'es', 'Ruedas de desplazamiento');
            PERFORM insert_category_translations('roulettes-de-deplacement', 'it', 'Ruote di movimentazione');

            -- Level 2: ressorts
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ressorts', 'ressorts', 2, l1_id, 'Ressorts')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ressorts', 'fr', 'Ressorts');
            PERFORM insert_category_translations('ressorts', 'ar', 'نوابض');
            PERFORM insert_category_translations('ressorts', 'en', 'Springs');
            PERFORM insert_category_translations('ressorts', 'de', 'Federn');
            PERFORM insert_category_translations('ressorts', 'es', 'Muelles');
            PERFORM insert_category_translations('ressorts', 'it', 'Molle');

            -- Level 2: aimants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('aimants', 'aimants', 2, l1_id, 'Aimants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('aimants', 'fr', 'Aimants');
            PERFORM insert_category_translations('aimants', 'ar', 'مغناطيس');
            PERFORM insert_category_translations('aimants', 'en', 'Magnets');
            PERFORM insert_category_translations('aimants', 'de', 'Magnete');
            PERFORM insert_category_translations('aimants', 'es', 'Imanes');
            PERFORM insert_category_translations('aimants', 'it', 'Magneti');

            -- Level 2: patins-anti-derapants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('patins-anti-derapants', 'patins-anti-derapants', 2, l1_id, 'Patins anti-dérapants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('patins-anti-derapants', 'fr', 'Patins anti-dérapants');
            PERFORM insert_category_translations('patins-anti-derapants', 'ar', 'وسادات ضد الانزلاق');
            PERFORM insert_category_translations('patins-anti-derapants', 'en', 'Anti-slip pads');
            PERFORM insert_category_translations('patins-anti-derapants', 'de', 'Antirutschpads');
            PERFORM insert_category_translations('patins-anti-derapants', 'es', 'Almohadillas antideslizantes');
            PERFORM insert_category_translations('patins-anti-derapants', 'it', 'Pattini antiscivolo');

            -- Level 2: embouts-divers
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('embouts-divers', 'embouts-divers', 2, l1_id, 'Embouts divers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('embouts-divers', 'fr', 'Embouts divers');
            PERFORM insert_category_translations('embouts-divers', 'ar', 'نهايات متنوعة');
            PERFORM insert_category_translations('embouts-divers', 'en', 'Various tips');
            PERFORM insert_category_translations('embouts-divers', 'de', 'Verschiedene Endstücke');
            PERFORM insert_category_translations('embouts-divers', 'es', 'Puntas varias');
            PERFORM insert_category_translations('embouts-divers', 'it', 'Punte varie');

            -- Level 2: cales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cales', 'cales', 2, l1_id, 'Cales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cales', 'fr', 'Cales');
            PERFORM insert_category_translations('cales', 'ar', 'أوتاد');
            PERFORM insert_category_translations('cales', 'en', 'Shims');
            PERFORM insert_category_translations('cales', 'de', 'Unterlegkeile');
            PERFORM insert_category_translations('cales', 'es', 'Calzos');
            PERFORM insert_category_translations('cales', 'it', 'Spessori');

            -- Level 2: supports-multi-usages
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('supports-multi-usages', 'supports-multi-usages', 2, l1_id, 'Supports multi-usages')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('supports-multi-usages', 'fr', 'Supports multi-usages');
            PERFORM insert_category_translations('supports-multi-usages', 'ar', 'حوامل متعددة');
            PERFORM insert_category_translations('supports-multi-usages', 'en', 'Multi-purpose supports');
            PERFORM insert_category_translations('supports-multi-usages', 'de', 'Mehrzweckhalter');
            PERFORM insert_category_translations('supports-multi-usages', 'es', 'Soportes multiusos');
            PERFORM insert_category_translations('supports-multi-usages', 'it', 'Supporti multiuso');
END $$;