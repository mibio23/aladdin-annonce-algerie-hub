-- Migration: Image, Son & Équipement de Musique (Generated Recursive)
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

    -- Level 0: image-son-equipement-musique
    INSERT INTO categories (id, slug, level, name)
    VALUES ('image-son-equipement-musique', 'image-son-equipement-musique', 0, 'Image, Son & Équipement de Musique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 0, name = EXCLUDED.name
    RETURNING id INTO root_id;
    PERFORM insert_category_translations('image-son-equipement-musique', 'fr', 'Image, Son & Équipement de Musique');
    PERFORM insert_category_translations('image-son-equipement-musique', 'ar', 'الصورة والصوت ومعدات الموسيقى');
    PERFORM insert_category_translations('image-son-equipement-musique', 'en', 'Image, Sound & Music Equipment');
    PERFORM insert_category_translations('image-son-equipement-musique', 'de', 'Bild, Ton & Musikausrüstung');
    PERFORM insert_category_translations('image-son-equipement-musique', 'es', 'Imagen, Sonido y Equipos de Música');
    PERFORM insert_category_translations('image-son-equipement-musique', 'it', 'Immagine, Suono & Attrezzature Musicali');

        -- Level 1: televiseurs-affichage
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('televiseurs-affichage', 'televiseurs-affichage', 1, root_id, 'Téléviseurs & Affichage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('televiseurs-affichage', 'fr', 'Téléviseurs & Affichage');
        PERFORM insert_category_translations('televiseurs-affichage', 'ar', 'أجهزة التلفاز والعرض');
        PERFORM insert_category_translations('televiseurs-affichage', 'en', 'Televisions & Displays');
        PERFORM insert_category_translations('televiseurs-affichage', 'de', 'Fernseher & Anzeige');
        PERFORM insert_category_translations('televiseurs-affichage', 'es', 'Televisores y Pantallas');
        PERFORM insert_category_translations('televiseurs-affichage', 'it', 'Televisori & Display');

            -- Level 2: tv-led
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tv-led', 'tv-led', 2, l1_id, 'TV LED')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tv-led', 'fr', 'TV LED');
            PERFORM insert_category_translations('tv-led', 'ar', 'تلفاز LED');
            PERFORM insert_category_translations('tv-led', 'en', 'TV LED');
            PERFORM insert_category_translations('tv-led', 'de', 'LED‑TV');
            PERFORM insert_category_translations('tv-led', 'es', 'TV LED');
            PERFORM insert_category_translations('tv-led', 'it', 'TV LED');

            -- Level 2: tv-oled
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tv-oled', 'tv-oled', 2, l1_id, 'TV OLED')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tv-oled', 'fr', 'TV OLED');
            PERFORM insert_category_translations('tv-oled', 'ar', 'تلفاز OLED');
            PERFORM insert_category_translations('tv-oled', 'en', 'TV OLED');
            PERFORM insert_category_translations('tv-oled', 'de', 'OLED‑TV');
            PERFORM insert_category_translations('tv-oled', 'es', 'TV OLED');
            PERFORM insert_category_translations('tv-oled', 'it', 'TV OLED');

            -- Level 2: tv-qled
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tv-qled', 'tv-qled', 2, l1_id, 'TV QLED')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tv-qled', 'fr', 'TV QLED');
            PERFORM insert_category_translations('tv-qled', 'ar', 'تلفاز QLED');
            PERFORM insert_category_translations('tv-qled', 'en', 'TV QLED');
            PERFORM insert_category_translations('tv-qled', 'de', 'QLED‑TV');
            PERFORM insert_category_translations('tv-qled', 'es', 'TV QLED');
            PERFORM insert_category_translations('tv-qled', 'it', 'TV QLED');

            -- Level 2: tv-4k
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tv-4k', 'tv-4k', 2, l1_id, 'TV 4K')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tv-4k', 'fr', 'TV 4K');
            PERFORM insert_category_translations('tv-4k', 'ar', 'تلفاز 4K');
            PERFORM insert_category_translations('tv-4k', 'en', 'TV 4K');
            PERFORM insert_category_translations('tv-4k', 'de', '4K‑TV');
            PERFORM insert_category_translations('tv-4k', 'es', 'TV 4K');
            PERFORM insert_category_translations('tv-4k', 'it', 'TV 4K');

            -- Level 2: tv-8k
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tv-8k', 'tv-8k', 2, l1_id, 'TV 8K')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tv-8k', 'fr', 'TV 8K');
            PERFORM insert_category_translations('tv-8k', 'ar', 'تلفاز 8K');
            PERFORM insert_category_translations('tv-8k', 'en', 'TV 8K');
            PERFORM insert_category_translations('tv-8k', 'de', '8K‑TV');
            PERFORM insert_category_translations('tv-8k', 'es', 'TV 8K');
            PERFORM insert_category_translations('tv-8k', 'it', 'TV 8K');

            -- Level 2: tv-smart-android
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tv-smart-android', 'tv-smart-android', 2, l1_id, 'TV Smart Android')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tv-smart-android', 'fr', 'TV Smart Android');
            PERFORM insert_category_translations('tv-smart-android', 'ar', 'تلفاز أندرويد ذكي');
            PERFORM insert_category_translations('tv-smart-android', 'en', 'Smart Android TVs');
            PERFORM insert_category_translations('tv-smart-android', 'de', 'Android‑Smart‑TV');
            PERFORM insert_category_translations('tv-smart-android', 'es', 'TV Android Smart');
            PERFORM insert_category_translations('tv-smart-android', 'it', 'TV Android Smart');

            -- Level 2: tv-connectees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tv-connectees', 'tv-connectees', 2, l1_id, 'TV connectées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tv-connectees', 'fr', 'TV connectées');
            PERFORM insert_category_translations('tv-connectees', 'ar', 'تلفاز متصل');
            PERFORM insert_category_translations('tv-connectees', 'en', 'Connected TVs');
            PERFORM insert_category_translations('tv-connectees', 'de', 'Verbundene TVs');
            PERFORM insert_category_translations('tv-connectees', 'es', 'TV Conectadas');
            PERFORM insert_category_translations('tv-connectees', 'it', 'TV Connesse');

            -- Level 2: moniteurs-streaming
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('moniteurs-streaming', 'moniteurs-streaming', 2, l1_id, 'Moniteurs streaming')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('moniteurs-streaming', 'fr', 'Moniteurs streaming');
            PERFORM insert_category_translations('moniteurs-streaming', 'ar', 'شاشات البث');
            PERFORM insert_category_translations('moniteurs-streaming', 'en', 'Streaming Monitors');
            PERFORM insert_category_translations('moniteurs-streaming', 'de', 'Streaming‑Monitore');
            PERFORM insert_category_translations('moniteurs-streaming', 'es', 'Monitores de Streaming');
            PERFORM insert_category_translations('moniteurs-streaming', 'it', 'Monitor Streaming');

            -- Level 2: videoprojecteurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('videoprojecteurs', 'videoprojecteurs', 2, l1_id, 'Vidéoprojecteurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('videoprojecteurs', 'fr', 'Vidéoprojecteurs');
            PERFORM insert_category_translations('videoprojecteurs', 'ar', 'بروجكتور');
            PERFORM insert_category_translations('videoprojecteurs', 'en', 'Projectors');
            PERFORM insert_category_translations('videoprojecteurs', 'de', 'Projektoren');
            PERFORM insert_category_translations('videoprojecteurs', 'es', 'Proyectores');
            PERFORM insert_category_translations('videoprojecteurs', 'it', 'Videoproiettori');

            -- Level 2: mini-projecteurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mini-projecteurs', 'mini-projecteurs', 2, l1_id, 'Mini projecteurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mini-projecteurs', 'fr', 'Mini projecteurs');
            PERFORM insert_category_translations('mini-projecteurs', 'ar', 'بروجكتور صغير');
            PERFORM insert_category_translations('mini-projecteurs', 'en', 'Mini Projectors');
            PERFORM insert_category_translations('mini-projecteurs', 'de', 'Mini‑Projektoren');
            PERFORM insert_category_translations('mini-projecteurs', 'es', 'Mini Proyectores');
            PERFORM insert_category_translations('mini-projecteurs', 'it', 'Mini Proiettori');

            -- Level 2: ecrans-portables
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ecrans-portables', 'ecrans-portables', 2, l1_id, 'Écrans portables')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ecrans-portables', 'fr', 'Écrans portables');
            PERFORM insert_category_translations('ecrans-portables', 'ar', 'شاشات محمولة');
            PERFORM insert_category_translations('ecrans-portables', 'en', 'Portable Screens');
            PERFORM insert_category_translations('ecrans-portables', 'de', 'Tragbare Bildschirme');
            PERFORM insert_category_translations('ecrans-portables', 'es', 'Pantallas Portátiles');
            PERFORM insert_category_translations('ecrans-portables', 'it', 'Schermi Portatili');

            -- Level 2: supports-tv-muraux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('supports-tv-muraux', 'supports-tv-muraux', 2, l1_id, 'Supports TV muraux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('supports-tv-muraux', 'fr', 'Supports TV muraux');
            PERFORM insert_category_translations('supports-tv-muraux', 'ar', 'حوامل تلفاز حائطية');
            PERFORM insert_category_translations('supports-tv-muraux', 'en', 'Wall TV Mounts');
            PERFORM insert_category_translations('supports-tv-muraux', 'de', 'TV‑Wandhalterungen');
            PERFORM insert_category_translations('supports-tv-muraux', 'es', 'Soportes TV de Pared');
            PERFORM insert_category_translations('supports-tv-muraux', 'it', 'Supporti TV a Parete');

            -- Level 2: pieds-tv
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pieds-tv', 'pieds-tv', 2, l1_id, 'Pieds TV')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pieds-tv', 'fr', 'Pieds TV');
            PERFORM insert_category_translations('pieds-tv', 'ar', 'حوامل تلفاز');
            PERFORM insert_category_translations('pieds-tv', 'en', 'TV Stands');
            PERFORM insert_category_translations('pieds-tv', 'de', 'TV‑Ständer');
            PERFORM insert_category_translations('pieds-tv', 'es', 'Bases de TV');
            PERFORM insert_category_translations('pieds-tv', 'it', 'Supporti TV');

        -- Level 1: audio-home-cinema
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('audio-home-cinema', 'audio-home-cinema', 1, root_id, 'Audio & Home Cinéma')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('audio-home-cinema', 'fr', 'Audio & Home Cinéma');
        PERFORM insert_category_translations('audio-home-cinema', 'ar', 'الصوت والسينما المنزلية');
        PERFORM insert_category_translations('audio-home-cinema', 'en', 'Audio & Home Theater');
        PERFORM insert_category_translations('audio-home-cinema', 'de', 'Audio & Heimkino');
        PERFORM insert_category_translations('audio-home-cinema', 'es', 'Audio y Cine en Casa');
        PERFORM insert_category_translations('audio-home-cinema', 'it', 'Audio & Home Cinema');

            -- Level 2: barres-de-son
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('barres-de-son', 'barres-de-son', 2, l1_id, 'Barres de son')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('barres-de-son', 'fr', 'Barres de son');
            PERFORM insert_category_translations('barres-de-son', 'ar', 'مكبرات الصوت الشريطية');
            PERFORM insert_category_translations('barres-de-son', 'en', 'Soundbars');
            PERFORM insert_category_translations('barres-de-son', 'de', 'Soundbars');
            PERFORM insert_category_translations('barres-de-son', 'es', 'Barras de Sonido');
            PERFORM insert_category_translations('barres-de-son', 'it', 'Soundbar');

            -- Level 2: home-cinema-5-1
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('home-cinema-5-1', 'home-cinema-5-1', 2, l1_id, 'Home cinéma 5.1')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('home-cinema-5-1', 'fr', 'Home cinéma 5.1');
            PERFORM insert_category_translations('home-cinema-5-1', 'ar', 'سينما منزلية 5.1');
            PERFORM insert_category_translations('home-cinema-5-1', 'en', 'Home theater 5.1');
            PERFORM insert_category_translations('home-cinema-5-1', 'de', 'Heimkino 5.1');
            PERFORM insert_category_translations('home-cinema-5-1', 'es', 'Home Cinema 5.1');
            PERFORM insert_category_translations('home-cinema-5-1', 'it', 'Home Cinema 5.1');

            -- Level 2: systemes-audio-2-1
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('systemes-audio-2-1', 'systemes-audio-2-1', 2, l1_id, 'Systèmes audio 2.1')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('systemes-audio-2-1', 'fr', 'Systèmes audio 2.1');
            PERFORM insert_category_translations('systemes-audio-2-1', 'ar', 'أنظمة صوت 2.1');
            PERFORM insert_category_translations('systemes-audio-2-1', 'en', 'Audio systems 2.1');
            PERFORM insert_category_translations('systemes-audio-2-1', 'de', 'Audiosysteme 2.1');
            PERFORM insert_category_translations('systemes-audio-2-1', 'es', 'Sistemas de Audio 2.1');
            PERFORM insert_category_translations('systemes-audio-2-1', 'it', 'Sistemi Audio 2.1');

            -- Level 2: caissons-de-basses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('caissons-de-basses', 'caissons-de-basses', 2, l1_id, 'Caissons de basses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('caissons-de-basses', 'fr', 'Caissons de basses');
            PERFORM insert_category_translations('caissons-de-basses', 'ar', 'مضخمات الجهير');
            PERFORM insert_category_translations('caissons-de-basses', 'en', 'Subwoofers');
            PERFORM insert_category_translations('caissons-de-basses', 'de', 'Subwoofer');
            PERFORM insert_category_translations('caissons-de-basses', 'es', 'Subwoofers');
            PERFORM insert_category_translations('caissons-de-basses', 'it', 'Subwoofer');

            -- Level 2: amplificateurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('amplificateurs', 'amplificateurs', 2, l1_id, 'Amplificateurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('amplificateurs', 'fr', 'Amplificateurs');
            PERFORM insert_category_translations('amplificateurs', 'ar', 'مضخمات');
            PERFORM insert_category_translations('amplificateurs', 'en', 'Amplifiers');
            PERFORM insert_category_translations('amplificateurs', 'de', 'Verstärker');
            PERFORM insert_category_translations('amplificateurs', 'es', 'Amplificadores');
            PERFORM insert_category_translations('amplificateurs', 'it', 'Amplificatori');

            -- Level 2: recepteurs-av
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('recepteurs-av', 'recepteurs-av', 2, l1_id, 'Récepteurs AV')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('recepteurs-av', 'fr', 'Récepteurs AV');
            PERFORM insert_category_translations('recepteurs-av', 'ar', 'مستقبلات AV');
            PERFORM insert_category_translations('recepteurs-av', 'en', 'AV Receivers');
            PERFORM insert_category_translations('recepteurs-av', 'de', 'AV‑Receiver');
            PERFORM insert_category_translations('recepteurs-av', 'es', 'Receptores AV');
            PERFORM insert_category_translations('recepteurs-av', 'it', 'Ricevitori AV');

            -- Level 2: enceintes-hifi
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('enceintes-hifi', 'enceintes-hifi', 2, l1_id, 'Enceintes hi-fi')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('enceintes-hifi', 'fr', 'Enceintes hi-fi');
            PERFORM insert_category_translations('enceintes-hifi', 'ar', 'سماعات هاي فاي');
            PERFORM insert_category_translations('enceintes-hifi', 'en', 'Hi‑Fi Speakers');
            PERFORM insert_category_translations('enceintes-hifi', 'de', 'Hi‑Fi‑Lautsprecher');
            PERFORM insert_category_translations('enceintes-hifi', 'es', 'Altavoces Hi‑Fi');
            PERFORM insert_category_translations('enceintes-hifi', 'it', 'Diffusori Hi‑Fi');

            -- Level 2: enceintes-bluetooth
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('enceintes-bluetooth', 'enceintes-bluetooth', 2, l1_id, 'Enceintes Bluetooth')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('enceintes-bluetooth', 'fr', 'Enceintes Bluetooth');
            PERFORM insert_category_translations('enceintes-bluetooth', 'ar', 'سماعات بلوتوث');
            PERFORM insert_category_translations('enceintes-bluetooth', 'en', 'Bluetooth Speakers');
            PERFORM insert_category_translations('enceintes-bluetooth', 'de', 'Bluetooth‑Lautsprecher');
            PERFORM insert_category_translations('enceintes-bluetooth', 'es', 'Altavoces Bluetooth');
            PERFORM insert_category_translations('enceintes-bluetooth', 'it', 'Diffusori Bluetooth');

            -- Level 2: enceintes-intelligentes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('enceintes-intelligentes', 'enceintes-intelligentes', 2, l1_id, 'Enceintes intelligentes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('enceintes-intelligentes', 'fr', 'Enceintes intelligentes');
            PERFORM insert_category_translations('enceintes-intelligentes', 'ar', 'سماعات ذكية');
            PERFORM insert_category_translations('enceintes-intelligentes', 'en', 'Smart Speakers');
            PERFORM insert_category_translations('enceintes-intelligentes', 'de', 'Smart‑Lautsprecher');
            PERFORM insert_category_translations('enceintes-intelligentes', 'es', 'Altavoces Inteligentes');
            PERFORM insert_category_translations('enceintes-intelligentes', 'it', 'Diffusori Smart');

            -- Level 2: multiroom-audio
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('multiroom-audio', 'multiroom-audio', 2, l1_id, 'Multiroom audio')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('multiroom-audio', 'fr', 'Multiroom audio');
            PERFORM insert_category_translations('multiroom-audio', 'ar', 'صوت متعدد الغرف');
            PERFORM insert_category_translations('multiroom-audio', 'en', 'Multiroom Audio');
            PERFORM insert_category_translations('multiroom-audio', 'de', 'Multiroom‑Audio');
            PERFORM insert_category_translations('multiroom-audio', 'es', 'Audio Multiroom');
            PERFORM insert_category_translations('multiroom-audio', 'it', 'Audio Multiroom');

            -- Level 2: soundbars-gaming
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soundbars-gaming', 'soundbars-gaming', 2, l1_id, 'Soundbars gaming')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('soundbars-gaming', 'fr', 'Soundbars gaming');
            PERFORM insert_category_translations('soundbars-gaming', 'ar', 'مكبرات صوت للألعاب');
            PERFORM insert_category_translations('soundbars-gaming', 'en', 'Gaming Soundbars');
            PERFORM insert_category_translations('soundbars-gaming', 'de', 'Gaming‑Soundbars');
            PERFORM insert_category_translations('soundbars-gaming', 'es', 'Soundbars Gaming');
            PERFORM insert_category_translations('soundbars-gaming', 'it', 'Soundbar Gaming');

        -- Level 1: casques-ecouteurs
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('casques-ecouteurs', 'casques-ecouteurs', 1, root_id, 'Casques & Écouteurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('casques-ecouteurs', 'fr', 'Casques & Écouteurs');
        PERFORM insert_category_translations('casques-ecouteurs', 'ar', 'سماعات الرأس وسماعات الأذن');
        PERFORM insert_category_translations('casques-ecouteurs', 'en', 'Headphones & Earphones');
        PERFORM insert_category_translations('casques-ecouteurs', 'de', 'Kopfhörer & Ohrhörer');
        PERFORM insert_category_translations('casques-ecouteurs', 'es', 'Auriculares & Cascos');
        PERFORM insert_category_translations('casques-ecouteurs', 'it', 'Cuffie & Auricolari');

            -- Level 2: casques-filaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('casques-filaires', 'casques-filaires', 2, l1_id, 'Casques filaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('casques-filaires', 'fr', 'Casques filaires');
            PERFORM insert_category_translations('casques-filaires', 'ar', 'سماعات سلكية');
            PERFORM insert_category_translations('casques-filaires', 'en', 'Wired Headphones');
            PERFORM insert_category_translations('casques-filaires', 'de', 'Kabelgebundene Kopfhörer');
            PERFORM insert_category_translations('casques-filaires', 'es', 'Cascos con Cable');
            PERFORM insert_category_translations('casques-filaires', 'it', 'Cuffie con Cavo');

            -- Level 2: casques-bluetooth
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('casques-bluetooth', 'casques-bluetooth', 2, l1_id, 'Casques Bluetooth')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('casques-bluetooth', 'fr', 'Casques Bluetooth');
            PERFORM insert_category_translations('casques-bluetooth', 'ar', 'سماعات بلوتوث');
            PERFORM insert_category_translations('casques-bluetooth', 'en', 'Bluetooth Headphones');
            PERFORM insert_category_translations('casques-bluetooth', 'de', 'Bluetooth‑Kopfhörer');
            PERFORM insert_category_translations('casques-bluetooth', 'es', 'Cascos Bluetooth');
            PERFORM insert_category_translations('casques-bluetooth', 'it', 'Cuffie Bluetooth');

            -- Level 2: casques-gaming
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('casques-gaming', 'casques-gaming', 2, l1_id, 'Casques gaming')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('casques-gaming', 'fr', 'Casques gaming');
            PERFORM insert_category_translations('casques-gaming', 'ar', 'سماعات ألعاب');
            PERFORM insert_category_translations('casques-gaming', 'en', 'Gaming Headsets');
            PERFORM insert_category_translations('casques-gaming', 'de', 'Gaming‑Headsets');
            PERFORM insert_category_translations('casques-gaming', 'es', 'Cascos Gaming');
            PERFORM insert_category_translations('casques-gaming', 'it', 'Cuffie Gaming');

            -- Level 2: casques-antibruit
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('casques-antibruit', 'casques-antibruit', 2, l1_id, 'Casques antibruit')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('casques-antibruit', 'fr', 'Casques antibruit');
            PERFORM insert_category_translations('casques-antibruit', 'ar', 'سماعات عزل الضوضاء');
            PERFORM insert_category_translations('casques-antibruit', 'en', 'Noise‑canceling Headphones');
            PERFORM insert_category_translations('casques-antibruit', 'de', 'Noise‑Cancelling');
            PERFORM insert_category_translations('casques-antibruit', 'es', 'Cancelación de Ruido');
            PERFORM insert_category_translations('casques-antibruit', 'it', 'Cancellazione Rumore');

            -- Level 2: ecouteurs-intra-auriculaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ecouteurs-intra-auriculaires', 'ecouteurs-intra-auriculaires', 2, l1_id, 'Écouteurs intra-auriculaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ecouteurs-intra-auriculaires', 'fr', 'Écouteurs intra-auriculaires');
            PERFORM insert_category_translations('ecouteurs-intra-auriculaires', 'ar', 'سماعات داخل الأذن');
            PERFORM insert_category_translations('ecouteurs-intra-auriculaires', 'en', 'In‑ear Earphones');
            PERFORM insert_category_translations('ecouteurs-intra-auriculaires', 'de', 'In‑Ear‑Hörer');
            PERFORM insert_category_translations('ecouteurs-intra-auriculaires', 'es', 'Auriculares Intraaurales');
            PERFORM insert_category_translations('ecouteurs-intra-auriculaires', 'it', 'Auricolari In‑Ear');

            -- Level 2: ecouteurs-tws
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ecouteurs-tws', 'ecouteurs-tws', 2, l1_id, 'Écouteurs TWS')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ecouteurs-tws', 'fr', 'Écouteurs TWS');
            PERFORM insert_category_translations('ecouteurs-tws', 'ar', 'سماعات لاسلكية TWS');
            PERFORM insert_category_translations('ecouteurs-tws', 'en', 'True Wireless Earbuds');
            PERFORM insert_category_translations('ecouteurs-tws', 'de', 'True‑Wireless');
            PERFORM insert_category_translations('ecouteurs-tws', 'es', 'Auriculares TWS');
            PERFORM insert_category_translations('ecouteurs-tws', 'it', 'Auricolari TWS');

            -- Level 2: ecouteurs-sport
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ecouteurs-sport', 'ecouteurs-sport', 2, l1_id, 'Écouteurs sport')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ecouteurs-sport', 'fr', 'Écouteurs sport');
            PERFORM insert_category_translations('ecouteurs-sport', 'ar', 'سماعات رياضية');
            PERFORM insert_category_translations('ecouteurs-sport', 'en', 'Sport Earphones');
            PERFORM insert_category_translations('ecouteurs-sport', 'de', 'Sport‑Ohrhörer');
            PERFORM insert_category_translations('ecouteurs-sport', 'es', 'Auriculares Deportivos');
            PERFORM insert_category_translations('ecouteurs-sport', 'it', 'Auricolari Sport');

            -- Level 2: casques-studio
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('casques-studio', 'casques-studio', 2, l1_id, 'Casques studio')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('casques-studio', 'fr', 'Casques studio');
            PERFORM insert_category_translations('casques-studio', 'ar', 'سماعات استوديو');
            PERFORM insert_category_translations('casques-studio', 'en', 'Studio Headphones');
            PERFORM insert_category_translations('casques-studio', 'de', 'Studio‑Kopfhörer');
            PERFORM insert_category_translations('casques-studio', 'es', 'Cascos de Estudio');
            PERFORM insert_category_translations('casques-studio', 'it', 'Cuffie da Studio');

            -- Level 2: casques-dj
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('casques-dj', 'casques-dj', 2, l1_id, 'Casques DJ')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('casques-dj', 'fr', 'Casques DJ');
            PERFORM insert_category_translations('casques-dj', 'ar', 'سماعات DJ');
            PERFORM insert_category_translations('casques-dj', 'en', 'DJ Headphones');
            PERFORM insert_category_translations('casques-dj', 'de', 'DJ‑Kopfhörer');
            PERFORM insert_category_translations('casques-dj', 'es', 'Cascos DJ');
            PERFORM insert_category_translations('casques-dj', 'it', 'Cuffie DJ');

        -- Level 1: photo-video
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('photo-video', 'photo-video', 1, root_id, 'Photo & Vidéo')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('photo-video', 'fr', 'Photo & Vidéo');
        PERFORM insert_category_translations('photo-video', 'ar', 'تصوير وفيديو');
        PERFORM insert_category_translations('photo-video', 'en', 'Photo & Video');
        PERFORM insert_category_translations('photo-video', 'de', 'Foto & Video');
        PERFORM insert_category_translations('photo-video', 'es', 'Foto & Video');
        PERFORM insert_category_translations('photo-video', 'it', 'Foto & Video');

            -- Level 2: appareils-photo-reflex
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('appareils-photo-reflex', 'appareils-photo-reflex', 2, l1_id, 'Appareils photo reflex')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('appareils-photo-reflex', 'fr', 'Appareils photo reflex');
            PERFORM insert_category_translations('appareils-photo-reflex', 'ar', 'كاميرات DSLR');
            PERFORM insert_category_translations('appareils-photo-reflex', 'en', 'DSLR Cameras');
            PERFORM insert_category_translations('appareils-photo-reflex', 'de', 'DSLR‑Kameras');
            PERFORM insert_category_translations('appareils-photo-reflex', 'es', 'Cámaras DSLR');
            PERFORM insert_category_translations('appareils-photo-reflex', 'it', 'Fotocamere DSLR');

            -- Level 2: appareils-photo-hybrides
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('appareils-photo-hybrides', 'appareils-photo-hybrides', 2, l1_id, 'Appareils photo hybrides')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('appareils-photo-hybrides', 'fr', 'Appareils photo hybrides');
            PERFORM insert_category_translations('appareils-photo-hybrides', 'ar', 'كاميرات بدون مرآة');
            PERFORM insert_category_translations('appareils-photo-hybrides', 'en', 'Mirrorless Cameras');
            PERFORM insert_category_translations('appareils-photo-hybrides', 'de', 'Spiegellose Kameras');
            PERFORM insert_category_translations('appareils-photo-hybrides', 'es', 'Cámaras Mirrorless');
            PERFORM insert_category_translations('appareils-photo-hybrides', 'it', 'Fotocamere Mirrorless');

            -- Level 2: appareils-compacts
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('appareils-compacts', 'appareils-compacts', 2, l1_id, 'Appareils compacts')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('appareils-compacts', 'fr', 'Appareils compacts');
            PERFORM insert_category_translations('appareils-compacts', 'ar', 'كاميرات مدمجة');
            PERFORM insert_category_translations('appareils-compacts', 'en', 'Compact Cameras');
            PERFORM insert_category_translations('appareils-compacts', 'de', 'Kompaktkameras');
            PERFORM insert_category_translations('appareils-compacts', 'es', 'Cámaras Compactas');
            PERFORM insert_category_translations('appareils-compacts', 'it', 'Compatte');

            -- Level 2: camescopes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('camescopes', 'camescopes', 2, l1_id, 'Caméscopes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('camescopes', 'fr', 'Caméscopes');
            PERFORM insert_category_translations('camescopes', 'ar', 'كاميرات فيديو');
            PERFORM insert_category_translations('camescopes', 'en', 'Camcorders');
            PERFORM insert_category_translations('camescopes', 'de', 'Camcorder');
            PERFORM insert_category_translations('camescopes', 'es', 'Videocámaras');
            PERFORM insert_category_translations('camescopes', 'it', 'Videocamere');

            -- Level 2: action-cams
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('action-cams', 'action-cams', 2, l1_id, 'Action cams')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('action-cams', 'fr', 'Action cams');
            PERFORM insert_category_translations('action-cams', 'ar', 'كاميرات أكشن');
            PERFORM insert_category_translations('action-cams', 'en', 'Action Cameras');
            PERFORM insert_category_translations('action-cams', 'de', 'Action‑Cams');
            PERFORM insert_category_translations('action-cams', 'es', 'Cámaras de Acción');
            PERFORM insert_category_translations('action-cams', 'it', 'Action Cam');

            -- Level 2: drones-camera
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('drones-camera', 'drones-camera', 2, l1_id, 'Drones caméra')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('drones-camera', 'fr', 'Drones caméra');
            PERFORM insert_category_translations('drones-camera', 'ar', 'طائرات بدون طيار بكاميرا');
            PERFORM insert_category_translations('drones-camera', 'en', 'Camera Drones');
            PERFORM insert_category_translations('drones-camera', 'de', 'Kamera‑Drohnen');
            PERFORM insert_category_translations('drones-camera', 'es', 'Drones con Cámara');
            PERFORM insert_category_translations('drones-camera', 'it', 'Droni con Camera');

            -- Level 2: objectifs-photo
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('objectifs-photo', 'objectifs-photo', 2, l1_id, 'Objectifs photo')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('objectifs-photo', 'fr', 'Objectifs photo');
            PERFORM insert_category_translations('objectifs-photo', 'ar', 'عدسات تصوير');
            PERFORM insert_category_translations('objectifs-photo', 'en', 'Photo Lenses');
            PERFORM insert_category_translations('objectifs-photo', 'de', 'Fotoobjektive');
            PERFORM insert_category_translations('objectifs-photo', 'es', 'Objetivos');
            PERFORM insert_category_translations('objectifs-photo', 'it', 'Obiettivi');

            -- Level 2: trepieds
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('trepieds', 'trepieds', 2, l1_id, 'Trépieds')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('trepieds', 'fr', 'Trépieds');
            PERFORM insert_category_translations('trepieds', 'ar', 'حوامل ثلاثية');
            PERFORM insert_category_translations('trepieds', 'en', 'Tripods');
            PERFORM insert_category_translations('trepieds', 'de', 'Stative');
            PERFORM insert_category_translations('trepieds', 'es', 'Trípodes');
            PERFORM insert_category_translations('trepieds', 'it', 'Treppiedi');

            -- Level 2: stabilisateurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('stabilisateurs', 'stabilisateurs', 2, l1_id, 'Stabilisateurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('stabilisateurs', 'fr', 'Stabilisateurs');
            PERFORM insert_category_translations('stabilisateurs', 'ar', 'موازنات');
            PERFORM insert_category_translations('stabilisateurs', 'en', 'Stabilizers');
            PERFORM insert_category_translations('stabilisateurs', 'de', 'Stabilisatoren');
            PERFORM insert_category_translations('stabilisateurs', 'es', 'Estabilizadores');
            PERFORM insert_category_translations('stabilisateurs', 'it', 'Stabilizzatori');

            -- Level 2: gimbals
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gimbals', 'gimbals', 2, l1_id, 'Gimbals')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gimbals', 'fr', 'Gimbals');
            PERFORM insert_category_translations('gimbals', 'ar', 'جيمبل');
            PERFORM insert_category_translations('gimbals', 'en', 'Gimbals');
            PERFORM insert_category_translations('gimbals', 'de', 'Gimbals');
            PERFORM insert_category_translations('gimbals', 'es', 'Gimbals');
            PERFORM insert_category_translations('gimbals', 'it', 'Gimbal');

            -- Level 2: flashes-eclairages
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('flashes-eclairages', 'flashes-eclairages', 2, l1_id, 'Flashes & éclairages')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('flashes-eclairages', 'fr', 'Flashes & éclairages');
            PERFORM insert_category_translations('flashes-eclairages', 'ar', 'فلاش وإضاءة');
            PERFORM insert_category_translations('flashes-eclairages', 'en', 'Flashes & Lighting');
            PERFORM insert_category_translations('flashes-eclairages', 'de', 'Blitze & Beleuchtung');
            PERFORM insert_category_translations('flashes-eclairages', 'es', 'Flashes & Iluminación');
            PERFORM insert_category_translations('flashes-eclairages', 'it', 'Flash & Illuminazione');

            -- Level 2: cartes-memoire
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cartes-memoire', 'cartes-memoire', 2, l1_id, 'Cartes mémoire')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cartes-memoire', 'fr', 'Cartes mémoire');
            PERFORM insert_category_translations('cartes-memoire', 'ar', 'بطاقات ذاكرة');
            PERFORM insert_category_translations('cartes-memoire', 'en', 'Memory Cards');
            PERFORM insert_category_translations('cartes-memoire', 'de', 'Speicherkarten');
            PERFORM insert_category_translations('cartes-memoire', 'es', 'Tarjetas de Memoria');
            PERFORM insert_category_translations('cartes-memoire', 'it', 'Schede di Memoria');

            -- Level 2: fonds-photo
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fonds-photo', 'fonds-photo', 2, l1_id, 'Fonds photo')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fonds-photo', 'fr', 'Fonds photo');
            PERFORM insert_category_translations('fonds-photo', 'ar', 'خلفيات تصوير');
            PERFORM insert_category_translations('fonds-photo', 'en', 'Photo Backdrops');
            PERFORM insert_category_translations('fonds-photo', 'de', 'Hintergründe');
            PERFORM insert_category_translations('fonds-photo', 'es', 'Fondos Fotográficos');
            PERFORM insert_category_translations('fonds-photo', 'it', 'Fondali Fotografici');

        -- Level 1: studios-audio-enregistrement
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('studios-audio-enregistrement', 'studios-audio-enregistrement', 1, root_id, 'Studios Audio & Enregistrement')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('studios-audio-enregistrement', 'fr', 'Studios Audio & Enregistrement');
        PERFORM insert_category_translations('studios-audio-enregistrement', 'ar', 'استوديو صوت وتسجيل');
        PERFORM insert_category_translations('studios-audio-enregistrement', 'en', 'Audio Studio & Recording');
        PERFORM insert_category_translations('studios-audio-enregistrement', 'de', 'Audiostudio & Aufnahme');
        PERFORM insert_category_translations('studios-audio-enregistrement', 'es', 'Estudio de Audio & Grabación');
        PERFORM insert_category_translations('studios-audio-enregistrement', 'it', 'Studio Audio & Registrazione');

            -- Level 2: microphones-usb
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('microphones-usb', 'microphones-usb', 2, l1_id, 'Microphones USB')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('microphones-usb', 'fr', 'Microphones USB');
            PERFORM insert_category_translations('microphones-usb', 'ar', 'ميكروفونات USB');
            PERFORM insert_category_translations('microphones-usb', 'en', 'USB Microphones');
            PERFORM insert_category_translations('microphones-usb', 'de', 'USB‑Mikrofone');
            PERFORM insert_category_translations('microphones-usb', 'es', 'Micrófonos USB');
            PERFORM insert_category_translations('microphones-usb', 'it', 'Microfoni USB');

            -- Level 2: microphones-xlr
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('microphones-xlr', 'microphones-xlr', 2, l1_id, 'Microphones XLR')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('microphones-xlr', 'fr', 'Microphones XLR');
            PERFORM insert_category_translations('microphones-xlr', 'ar', 'ميكروفونات XLR');
            PERFORM insert_category_translations('microphones-xlr', 'en', 'XLR Microphones');
            PERFORM insert_category_translations('microphones-xlr', 'de', 'XLR‑Mikrofone');
            PERFORM insert_category_translations('microphones-xlr', 'es', 'Micrófonos XLR');
            PERFORM insert_category_translations('microphones-xlr', 'it', 'Microfoni XLR');

            -- Level 2: interfaces-audio
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('interfaces-audio', 'interfaces-audio', 2, l1_id, 'Interfaces audio')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('interfaces-audio', 'fr', 'Interfaces audio');
            PERFORM insert_category_translations('interfaces-audio', 'ar', 'واجهات صوتية');
            PERFORM insert_category_translations('interfaces-audio', 'en', 'Audio Interfaces');
            PERFORM insert_category_translations('interfaces-audio', 'de', 'Audio‑Interfaces');
            PERFORM insert_category_translations('interfaces-audio', 'es', 'Interfaces de Audio');
            PERFORM insert_category_translations('interfaces-audio', 'it', 'Interfacce Audio');

            -- Level 2: casques-studio-2
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('casques-studio-2', 'casques-studio-2', 2, l1_id, 'Casques studio')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('casques-studio-2', 'fr', 'Casques studio');
            PERFORM insert_category_translations('casques-studio-2', 'ar', 'سماعات استوديو');
            PERFORM insert_category_translations('casques-studio-2', 'en', 'Studio Headphones');
            PERFORM insert_category_translations('casques-studio-2', 'de', 'Studio‑Kopfhörer');
            PERFORM insert_category_translations('casques-studio-2', 'es', 'Cascos de Estudio');
            PERFORM insert_category_translations('casques-studio-2', 'it', 'Cuffie da Studio');

            -- Level 2: moniteurs-de-studio
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('moniteurs-de-studio', 'moniteurs-de-studio', 2, l1_id, 'Moniteurs de studio')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('moniteurs-de-studio', 'fr', 'Moniteurs de studio');
            PERFORM insert_category_translations('moniteurs-de-studio', 'ar', 'مراقبات استوديو');
            PERFORM insert_category_translations('moniteurs-de-studio', 'en', 'Studio Monitors');
            PERFORM insert_category_translations('moniteurs-de-studio', 'de', 'Studiomonitore');
            PERFORM insert_category_translations('moniteurs-de-studio', 'es', 'Monitores de Estudio');
            PERFORM insert_category_translations('moniteurs-de-studio', 'it', 'Monitor da Studio');

            -- Level 2: mixeurs-audio
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mixeurs-audio', 'mixeurs-audio', 2, l1_id, 'Mixeurs audio')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mixeurs-audio', 'fr', 'Mixeurs audio');
            PERFORM insert_category_translations('mixeurs-audio', 'ar', 'ميكسرات صوتية');
            PERFORM insert_category_translations('mixeurs-audio', 'en', 'Audio Mixers');
            PERFORM insert_category_translations('mixeurs-audio', 'de', 'Audiomixer');
            PERFORM insert_category_translations('mixeurs-audio', 'es', 'Mezcladores de Audio');
            PERFORM insert_category_translations('mixeurs-audio', 'it', 'Mixer Audio');

            -- Level 2: preamplis
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('preamplis', 'preamplis', 2, l1_id, 'Préamplis')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('preamplis', 'fr', 'Préamplis');
            PERFORM insert_category_translations('preamplis', 'ar', 'مضخمات أولية');
            PERFORM insert_category_translations('preamplis', 'en', 'Preamps');
            PERFORM insert_category_translations('preamplis', 'de', 'Preamps');
            PERFORM insert_category_translations('preamplis', 'es', 'Preamplificadores');
            PERFORM insert_category_translations('preamplis', 'it', 'Preamplificatori');

            -- Level 2: enregistreurs-portables
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('enregistreurs-portables', 'enregistreurs-portables', 2, l1_id, 'Enregistreurs portables')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('enregistreurs-portables', 'fr', 'Enregistreurs portables');
            PERFORM insert_category_translations('enregistreurs-portables', 'ar', 'مسجلات محمولة');
            PERFORM insert_category_translations('enregistreurs-portables', 'en', 'Portable Recorders');
            PERFORM insert_category_translations('enregistreurs-portables', 'de', 'Portable Recorder');
            PERFORM insert_category_translations('enregistreurs-portables', 'es', 'Grabadoras Portátiles');
            PERFORM insert_category_translations('enregistreurs-portables', 'it', 'Registratori Portatili');

            -- Level 2: cartes-son-externes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cartes-son-externes', 'cartes-son-externes', 2, l1_id, 'Cartes son externes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cartes-son-externes', 'fr', 'Cartes son externes');
            PERFORM insert_category_translations('cartes-son-externes', 'ar', 'بطاقات صوت خارجية');
            PERFORM insert_category_translations('cartes-son-externes', 'en', 'External Sound Cards');
            PERFORM insert_category_translations('cartes-son-externes', 'de', 'Externe Soundkarten');
            PERFORM insert_category_translations('cartes-son-externes', 'es', 'Tarjetas de Sonido Externas');
            PERFORM insert_category_translations('cartes-son-externes', 'it', 'Schede Audio Esterne');

            -- Level 2: shields-acoustiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('shields-acoustiques', 'shields-acoustiques', 2, l1_id, 'Shields acoustiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('shields-acoustiques', 'fr', 'Shields acoustiques');
            PERFORM insert_category_translations('shields-acoustiques', 'ar', 'حواجز صوتية');
            PERFORM insert_category_translations('shields-acoustiques', 'en', 'Acoustic Shields');
            PERFORM insert_category_translations('shields-acoustiques', 'de', 'Akustikschilde');
            PERFORM insert_category_translations('shields-acoustiques', 'es', 'Pantallas Acústicas');
            PERFORM insert_category_translations('shields-acoustiques', 'it', 'Schermi Acustici');

            -- Level 2: accessoires-studio
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-studio', 'accessoires-studio', 2, l1_id, 'Accessoires studio')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('accessoires-studio', 'fr', 'Accessoires studio');
            PERFORM insert_category_translations('accessoires-studio', 'ar', 'إكسسوارات الاستوديو');
            PERFORM insert_category_translations('accessoires-studio', 'en', 'Studio Accessories');
            PERFORM insert_category_translations('accessoires-studio', 'de', 'Studio‑Zubehör');
            PERFORM insert_category_translations('accessoires-studio', 'es', 'Accesorios de Estudio');
            PERFORM insert_category_translations('accessoires-studio', 'it', 'Accessori Studio');

        -- Level 1: sonorisation-evenementiel
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sonorisation-evenementiel', 'sonorisation-evenementiel', 1, root_id, 'Sonorisation & Événementiel')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('sonorisation-evenementiel', 'fr', 'Sonorisation & Événementiel');
        PERFORM insert_category_translations('sonorisation-evenementiel', 'ar', 'الصوتيات والفعاليات');
        PERFORM insert_category_translations('sonorisation-evenementiel', 'en', 'PA & Events');
        PERFORM insert_category_translations('sonorisation-evenementiel', 'de', 'Beschallung & Events');
        PERFORM insert_category_translations('sonorisation-evenementiel', 'es', 'Sonorización & Eventos');
        PERFORM insert_category_translations('sonorisation-evenementiel', 'it', 'Sonorizzazione & Eventi');

            -- Level 2: enceintes-professionnelles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('enceintes-professionnelles', 'enceintes-professionnelles', 2, l1_id, 'Enceintes professionnelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('enceintes-professionnelles', 'fr', 'Enceintes professionnelles');
            PERFORM insert_category_translations('enceintes-professionnelles', 'ar', 'سماعات احترافية');
            PERFORM insert_category_translations('enceintes-professionnelles', 'en', 'Pro Speakers');
            PERFORM insert_category_translations('enceintes-professionnelles', 'de', 'Pro‑Lautsprecher');
            PERFORM insert_category_translations('enceintes-professionnelles', 'es', 'Altavoces Profesionales');
            PERFORM insert_category_translations('enceintes-professionnelles', 'it', 'Diffusori Professionali');

            -- Level 2: caissons-de-basses-pro
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('caissons-de-basses-pro', 'caissons-de-basses-pro', 2, l1_id, 'Caissons de basses pro')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('caissons-de-basses-pro', 'fr', 'Caissons de basses pro');
            PERFORM insert_category_translations('caissons-de-basses-pro', 'ar', 'مضخمات جهير احترافية');
            PERFORM insert_category_translations('caissons-de-basses-pro', 'en', 'Pro Subwoofers');
            PERFORM insert_category_translations('caissons-de-basses-pro', 'de', 'Pro‑Subwoofer');
            PERFORM insert_category_translations('caissons-de-basses-pro', 'es', 'Subwoofers Pro');
            PERFORM insert_category_translations('caissons-de-basses-pro', 'it', 'Subwoofer Pro');

            -- Level 2: amplis-de-puissance
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('amplis-de-puissance', 'amplis-de-puissance', 2, l1_id, 'Amplis de puissance')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('amplis-de-puissance', 'fr', 'Amplis de puissance');
            PERFORM insert_category_translations('amplis-de-puissance', 'ar', 'مضخمات قدرة');
            PERFORM insert_category_translations('amplis-de-puissance', 'en', 'Power Amplifiers');
            PERFORM insert_category_translations('amplis-de-puissance', 'de', 'Leistungsverstärker');
            PERFORM insert_category_translations('amplis-de-puissance', 'es', 'Amplificadores de Potencia');
            PERFORM insert_category_translations('amplis-de-puissance', 'it', 'Amplificatori di Potenza');

            -- Level 2: mixeurs-tables-de-mixage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mixeurs-tables-de-mixage', 'mixeurs-tables-de-mixage', 2, l1_id, 'Mixeurs & tables de mixage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mixeurs-tables-de-mixage', 'fr', 'Mixeurs & tables de mixage');
            PERFORM insert_category_translations('mixeurs-tables-de-mixage', 'ar', 'طاولات مزج');
            PERFORM insert_category_translations('mixeurs-tables-de-mixage', 'en', 'Mixers & Consoles');
            PERFORM insert_category_translations('mixeurs-tables-de-mixage', 'de', 'Mixer & Pulte');
            PERFORM insert_category_translations('mixeurs-tables-de-mixage', 'es', 'Mezcladores & Mesas');
            PERFORM insert_category_translations('mixeurs-tables-de-mixage', 'it', 'Mixer & Consolle');

            -- Level 2: micros-hf-sans-fil
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('micros-hf-sans-fil', 'micros-hf-sans-fil', 2, l1_id, 'Micros HF & sans fil')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('micros-hf-sans-fil', 'fr', 'Micros HF & sans fil');
            PERFORM insert_category_translations('micros-hf-sans-fil', 'ar', 'ميكروفونات لاسلكية');
            PERFORM insert_category_translations('micros-hf-sans-fil', 'en', 'Wireless Microphones');
            PERFORM insert_category_translations('micros-hf-sans-fil', 'de', 'Funkmikrofone');
            PERFORM insert_category_translations('micros-hf-sans-fil', 'es', 'Micrófonos Inalámbricos');
            PERFORM insert_category_translations('micros-hf-sans-fil', 'it', 'Microfoni Wireless');

            -- Level 2: systemes-karaoke
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('systemes-karaoke', 'systemes-karaoke', 2, l1_id, 'Systèmes karaoke')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('systemes-karaoke', 'fr', 'Systèmes karaoke');
            PERFORM insert_category_translations('systemes-karaoke', 'ar', 'أنظمة كاراوكي');
            PERFORM insert_category_translations('systemes-karaoke', 'en', 'Karaoke Systems');
            PERFORM insert_category_translations('systemes-karaoke', 'de', 'Karaoke‑Systeme');
            PERFORM insert_category_translations('systemes-karaoke', 'es', 'Sistemas Karaoke');
            PERFORM insert_category_translations('systemes-karaoke', 'it', 'Sistemi Karaoke');

            -- Level 2: jeux-de-lumiere
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jeux-de-lumiere', 'jeux-de-lumiere', 2, l1_id, 'Jeux de lumière')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('jeux-de-lumiere', 'fr', 'Jeux de lumière');
            PERFORM insert_category_translations('jeux-de-lumiere', 'ar', 'إضاءات حفل');
            PERFORM insert_category_translations('jeux-de-lumiere', 'en', 'Lighting Effects');
            PERFORM insert_category_translations('jeux-de-lumiere', 'de', 'Lichteffekte');
            PERFORM insert_category_translations('jeux-de-lumiere', 'es', 'Efectos de Luz');
            PERFORM insert_category_translations('jeux-de-lumiere', 'it', 'Effetti Luce');

            -- Level 2: lasers
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lasers', 'lasers', 2, l1_id, 'Lasers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lasers', 'fr', 'Lasers');
            PERFORM insert_category_translations('lasers', 'ar', 'ليزر');
            PERFORM insert_category_translations('lasers', 'en', 'Lasers');
            PERFORM insert_category_translations('lasers', 'de', 'Laser');
            PERFORM insert_category_translations('lasers', 'es', 'Lásers');
            PERFORM insert_category_translations('lasers', 'it', 'Laser');

            -- Level 2: machines-a-fumee
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('machines-a-fumee', 'machines-a-fumee', 2, l1_id, 'Machines à fumée')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('machines-a-fumee', 'fr', 'Machines à fumée');
            PERFORM insert_category_translations('machines-a-fumee', 'ar', 'ماكينات دخان');
            PERFORM insert_category_translations('machines-a-fumee', 'en', 'Fog Machines');
            PERFORM insert_category_translations('machines-a-fumee', 'de', 'Nebelmaschinen');
            PERFORM insert_category_translations('machines-a-fumee', 'es', 'Máquinas de Humo');
            PERFORM insert_category_translations('machines-a-fumee', 'it', 'Macchine del Fumo');

            -- Level 2: stands-et-trepieds
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('stands-et-trepieds', 'stands-et-trepieds', 2, l1_id, 'Stands et trépieds')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('stands-et-trepieds', 'fr', 'Stands et trépieds');
            PERFORM insert_category_translations('stands-et-trepieds', 'ar', 'حوامل وحوامل ثلاثية');
            PERFORM insert_category_translations('stands-et-trepieds', 'en', 'Stands & Tripods');
            PERFORM insert_category_translations('stands-et-trepieds', 'de', 'Ständer & Stative');
            PERFORM insert_category_translations('stands-et-trepieds', 'es', 'Soportes & Trípodes');
            PERFORM insert_category_translations('stands-et-trepieds', 'it', 'Supporti & Treppiedi');

            -- Level 2: cablage-audio-xlr
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cablage-audio-xlr', 'cablage-audio-xlr', 2, l1_id, 'Câblage audio & XLR')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cablage-audio-xlr', 'fr', 'Câblage audio & XLR');
            PERFORM insert_category_translations('cablage-audio-xlr', 'ar', 'كوابل صوت وXLR');
            PERFORM insert_category_translations('cablage-audio-xlr', 'en', 'Audio & XLR Cables');
            PERFORM insert_category_translations('cablage-audio-xlr', 'de', 'Audio‑ & XLR‑Kabel');
            PERFORM insert_category_translations('cablage-audio-xlr', 'es', 'Cables de Audio & XLR');
            PERFORM insert_category_translations('cablage-audio-xlr', 'it', 'Cavi Audio & XLR');

        -- Level 1: equipement-musique
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('equipement-musique', 'equipement-musique', 1, root_id, 'Équipement de Musique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('equipement-musique', 'fr', 'Équipement de Musique');
        PERFORM insert_category_translations('equipement-musique', 'ar', 'معدات موسيقية');
        PERFORM insert_category_translations('equipement-musique', 'en', 'Music Equipment');
        PERFORM insert_category_translations('equipement-musique', 'de', 'Musikausrüstung');
        PERFORM insert_category_translations('equipement-musique', 'es', 'Equipos de Música');
        PERFORM insert_category_translations('equipement-musique', 'it', 'Attrezzatura Musicale');

            -- Level 2: guitares-acoustiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('guitares-acoustiques', 'guitares-acoustiques', 2, l1_id, 'Guitares acoustiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('guitares-acoustiques', 'fr', 'Guitares acoustiques');
            PERFORM insert_category_translations('guitares-acoustiques', 'ar', 'غيتارات صوتية');
            PERFORM insert_category_translations('guitares-acoustiques', 'en', 'Acoustic Guitars');
            PERFORM insert_category_translations('guitares-acoustiques', 'de', 'Akustikgitarren');
            PERFORM insert_category_translations('guitares-acoustiques', 'es', 'Guitarras Acústicas');
            PERFORM insert_category_translations('guitares-acoustiques', 'it', 'Chitarre Acustiche');

            -- Level 2: guitares-electriques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('guitares-electriques', 'guitares-electriques', 2, l1_id, 'Guitares électriques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('guitares-electriques', 'fr', 'Guitares électriques');
            PERFORM insert_category_translations('guitares-electriques', 'ar', 'غيتارات كهربائية');
            PERFORM insert_category_translations('guitares-electriques', 'en', 'Electric Guitars');
            PERFORM insert_category_translations('guitares-electriques', 'de', 'E‑Gitarren');
            PERFORM insert_category_translations('guitares-electriques', 'es', 'Guitarras Eléctricas');
            PERFORM insert_category_translations('guitares-electriques', 'it', 'Chitarre Elettriche');

            -- Level 2: guitares-basses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('guitares-basses', 'guitares-basses', 2, l1_id, 'Guitares basses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('guitares-basses', 'fr', 'Guitares basses');
            PERFORM insert_category_translations('guitares-basses', 'ar', 'غيتارات باس');
            PERFORM insert_category_translations('guitares-basses', 'en', 'Bass Guitars');
            PERFORM insert_category_translations('guitares-basses', 'de', 'Bassgitarren');
            PERFORM insert_category_translations('guitares-basses', 'es', 'Bajos');
            PERFORM insert_category_translations('guitares-basses', 'it', 'Bassi');

            -- Level 2: violons
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('violons', 'violons', 2, l1_id, 'Violons')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('violons', 'fr', 'Violons');
            PERFORM insert_category_translations('violons', 'ar', 'كمانات');
            PERFORM insert_category_translations('violons', 'en', 'Violins');
            PERFORM insert_category_translations('violons', 'de', 'Violinen');
            PERFORM insert_category_translations('violons', 'es', 'Violines');
            PERFORM insert_category_translations('violons', 'it', 'Violini');

            -- Level 2: mandolines
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mandolines', 'mandolines', 2, l1_id, 'Mandolines')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mandolines', 'fr', 'Mandolines');
            PERFORM insert_category_translations('mandolines', 'ar', 'ماندولين');
            PERFORM insert_category_translations('mandolines', 'en', 'Mandolins');
            PERFORM insert_category_translations('mandolines', 'de', 'Mandolinen');
            PERFORM insert_category_translations('mandolines', 'es', 'Mandolinas');
            PERFORM insert_category_translations('mandolines', 'it', 'Mandolini');

            -- Level 2: oud-instruments-orientaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('oud-instruments-orientaux', 'oud-instruments-orientaux', 2, l1_id, 'Oud & instruments orientaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('oud-instruments-orientaux', 'fr', 'Oud & instruments orientaux');
            PERFORM insert_category_translations('oud-instruments-orientaux', 'ar', 'عود وآلات شرقية');
            PERFORM insert_category_translations('oud-instruments-orientaux', 'en', 'Oud & Oriental Instruments');
            PERFORM insert_category_translations('oud-instruments-orientaux', 'de', 'Oud & orientalische Instrumente');
            PERFORM insert_category_translations('oud-instruments-orientaux', 'es', 'Oud e Instrumentos Orientales');
            PERFORM insert_category_translations('oud-instruments-orientaux', 'it', 'Oud & Strumenti Orientali');

            -- Level 2: pianos-numeriques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pianos-numeriques', 'pianos-numeriques', 2, l1_id, 'Pianos numériques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pianos-numeriques', 'fr', 'Pianos numériques');
            PERFORM insert_category_translations('pianos-numeriques', 'ar', 'بيانو رقمي');
            PERFORM insert_category_translations('pianos-numeriques', 'en', 'Digital Pianos');
            PERFORM insert_category_translations('pianos-numeriques', 'de', 'Digitale Pianos');
            PERFORM insert_category_translations('pianos-numeriques', 'es', 'Pianos Digitales');
            PERFORM insert_category_translations('pianos-numeriques', 'it', 'Pianoforti Digitali');

            -- Level 2: claviers-arrangeurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('claviers-arrangeurs', 'claviers-arrangeurs', 2, l1_id, 'Claviers arrangeurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('claviers-arrangeurs', 'fr', 'Claviers arrangeurs');
            PERFORM insert_category_translations('claviers-arrangeurs', 'ar', 'كيبورد منظِّم');
            PERFORM insert_category_translations('claviers-arrangeurs', 'en', 'Arranger Keyboards');
            PERFORM insert_category_translations('claviers-arrangeurs', 'de', 'Arranger‑Keyboards');
            PERFORM insert_category_translations('claviers-arrangeurs', 'es', 'Teclados Arreglistas');
            PERFORM insert_category_translations('claviers-arrangeurs', 'it', 'Tastiere Arranger');

            -- Level 2: synthetiseurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('synthetiseurs', 'synthetiseurs', 2, l1_id, 'Synthétiseurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('synthetiseurs', 'fr', 'Synthétiseurs');
            PERFORM insert_category_translations('synthetiseurs', 'ar', 'سِنتيسايزر');
            PERFORM insert_category_translations('synthetiseurs', 'en', 'Synthesizers');
            PERFORM insert_category_translations('synthetiseurs', 'de', 'Synthesizer');
            PERFORM insert_category_translations('synthetiseurs', 'es', 'Sintetizadores');
            PERFORM insert_category_translations('synthetiseurs', 'it', 'Sintetizzatori');

            -- Level 2: batteries-acoustiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('batteries-acoustiques', 'batteries-acoustiques', 2, l1_id, 'Batteries acoustiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('batteries-acoustiques', 'fr', 'Batteries acoustiques');
            PERFORM insert_category_translations('batteries-acoustiques', 'ar', 'طبول صوتية');
            PERFORM insert_category_translations('batteries-acoustiques', 'en', 'Acoustic Drums');
            PERFORM insert_category_translations('batteries-acoustiques', 'de', 'Akustik‑Drums');
            PERFORM insert_category_translations('batteries-acoustiques', 'es', 'Baterías Acústicas');
            PERFORM insert_category_translations('batteries-acoustiques', 'it', 'Batterie Acustiche');

            -- Level 2: batteries-electroniques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('batteries-electroniques', 'batteries-electroniques', 2, l1_id, 'Batteries électroniques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('batteries-electroniques', 'fr', 'Batteries électroniques');
            PERFORM insert_category_translations('batteries-electroniques', 'ar', 'طبول إلكترونية');
            PERFORM insert_category_translations('batteries-electroniques', 'en', 'Electronic Drums');
            PERFORM insert_category_translations('batteries-electroniques', 'de', 'E‑Drums');
            PERFORM insert_category_translations('batteries-electroniques', 'es', 'Baterías Electrónicas');
            PERFORM insert_category_translations('batteries-electroniques', 'it', 'Batterie Elettroniche');

            -- Level 2: percussions
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('percussions', 'percussions', 2, l1_id, 'Percussions')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('percussions', 'fr', 'Percussions');
            PERFORM insert_category_translations('percussions', 'ar', 'إيقاعات');
            PERFORM insert_category_translations('percussions', 'en', 'Percussion');
            PERFORM insert_category_translations('percussions', 'de', 'Percussion');
            PERFORM insert_category_translations('percussions', 'es', 'Percusión');
            PERFORM insert_category_translations('percussions', 'it', 'Percussioni');

            -- Level 2: harmonicas
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('harmonicas', 'harmonicas', 2, l1_id, 'Harmonicas')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('harmonicas', 'fr', 'Harmonicas');
            PERFORM insert_category_translations('harmonicas', 'ar', 'هارمونيكا');
            PERFORM insert_category_translations('harmonicas', 'en', 'Harmonicas');
            PERFORM insert_category_translations('harmonicas', 'de', 'Mundharmonikas');
            PERFORM insert_category_translations('harmonicas', 'es', 'Armónicas');
            PERFORM insert_category_translations('harmonicas', 'it', 'Armoniche');

        -- Level 1: equipement-dj
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('equipement-dj', 'equipement-dj', 1, root_id, 'Équipement DJ')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('equipement-dj', 'fr', 'Équipement DJ');
        PERFORM insert_category_translations('equipement-dj', 'ar', 'معدات دي جي');
        PERFORM insert_category_translations('equipement-dj', 'en', 'DJ Equipment');
        PERFORM insert_category_translations('equipement-dj', 'de', 'DJ‑Ausrüstung');
        PERFORM insert_category_translations('equipement-dj', 'es', 'Equipos DJ');
        PERFORM insert_category_translations('equipement-dj', 'it', 'Attrezzatura DJ');

            -- Level 2: platines-dj
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('platines-dj', 'platines-dj', 2, l1_id, 'Platines DJ (vinyle, numérique)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('platines-dj', 'fr', 'Platines DJ (vinyle, numérique)');
            PERFORM insert_category_translations('platines-dj', 'ar', 'مشغلات DJ');
            PERFORM insert_category_translations('platines-dj', 'en', 'DJ Turntables');
            PERFORM insert_category_translations('platines-dj', 'de', 'DJ‑Plattenspieler');
            PERFORM insert_category_translations('platines-dj', 'es', 'Platos DJ');
            PERFORM insert_category_translations('platines-dj', 'it', 'Giradischi DJ');

            -- Level 2: controleurs-dj
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('controleurs-dj', 'controleurs-dj', 2, l1_id, 'Contrôleurs DJ')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('controleurs-dj', 'fr', 'Contrôleurs DJ');
            PERFORM insert_category_translations('controleurs-dj', 'ar', 'أجهزة تحكم DJ');
            PERFORM insert_category_translations('controleurs-dj', 'en', 'DJ Controllers');
            PERFORM insert_category_translations('controleurs-dj', 'de', 'DJ‑Controller');
            PERFORM insert_category_translations('controleurs-dj', 'es', 'Controladores DJ');
            PERFORM insert_category_translations('controleurs-dj', 'it', 'Controller DJ');

            -- Level 2: mixeurs-dj
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mixeurs-dj', 'mixeurs-dj', 2, l1_id, 'Mixeurs DJ')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mixeurs-dj', 'fr', 'Mixeurs DJ');
            PERFORM insert_category_translations('mixeurs-dj', 'ar', 'ميكسرات DJ');
            PERFORM insert_category_translations('mixeurs-dj', 'en', 'DJ Mixers');
            PERFORM insert_category_translations('mixeurs-dj', 'de', 'DJ‑Mixer');
            PERFORM insert_category_translations('mixeurs-dj', 'es', 'Mezcladores DJ');
            PERFORM insert_category_translations('mixeurs-dj', 'it', 'Mixer DJ');

            -- Level 2: casques-dj-2
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('casques-dj-2', 'casques-dj-2', 2, l1_id, 'Casques DJ')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('casques-dj-2', 'fr', 'Casques DJ');
            PERFORM insert_category_translations('casques-dj-2', 'ar', 'سماعات DJ');
            PERFORM insert_category_translations('casques-dj-2', 'en', 'DJ Headphones');
            PERFORM insert_category_translations('casques-dj-2', 'de', 'DJ‑Kopfhörer');
            PERFORM insert_category_translations('casques-dj-2', 'es', 'Cascos DJ');
            PERFORM insert_category_translations('casques-dj-2', 'it', 'Cuffie DJ');

            -- Level 2: eclairage-dj
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('eclairage-dj', 'eclairage-dj', 2, l1_id, 'Éclairage DJ')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('eclairage-dj', 'fr', 'Éclairage DJ');
            PERFORM insert_category_translations('eclairage-dj', 'ar', 'إضاءة DJ');
            PERFORM insert_category_translations('eclairage-dj', 'en', 'DJ Lighting');
            PERFORM insert_category_translations('eclairage-dj', 'de', 'DJ‑Beleuchtung');
            PERFORM insert_category_translations('eclairage-dj', 'es', 'Iluminación DJ');
            PERFORM insert_category_translations('eclairage-dj', 'it', 'Illuminazione DJ');

            -- Level 2: pads-boites-rythmes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pads-boites-rythmes', 'pads-boites-rythmes', 2, l1_id, 'Pads & boîtes à rythmes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pads-boites-rythmes', 'fr', 'Pads & boîtes à rythmes');
            PERFORM insert_category_translations('pads-boites-rythmes', 'ar', 'لوحات وإيقاعات');
            PERFORM insert_category_translations('pads-boites-rythmes', 'en', 'Pads & Drum Machines');
            PERFORM insert_category_translations('pads-boites-rythmes', 'de', 'Pads & Drum‑Machines');
            PERFORM insert_category_translations('pads-boites-rythmes', 'es', 'Pads & Cajas de Ritmos');
            PERFORM insert_category_translations('pads-boites-rythmes', 'it', 'Pads & Drum Machine');

            -- Level 2: logiciels-dj
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('logiciels-dj', 'logiciels-dj', 2, l1_id, 'Logiciels DJ')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('logiciels-dj', 'fr', 'Logiciels DJ');
            PERFORM insert_category_translations('logiciels-dj', 'ar', 'برامج DJ');
            PERFORM insert_category_translations('logiciels-dj', 'en', 'DJ Software');
            PERFORM insert_category_translations('logiciels-dj', 'de', 'DJ‑Software');
            PERFORM insert_category_translations('logiciels-dj', 'es', 'Software DJ');
            PERFORM insert_category_translations('logiciels-dj', 'it', 'Software DJ');

            -- Level 2: interfaces-dj
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('interfaces-dj', 'interfaces-dj', 2, l1_id, 'Interfaces DJ')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('interfaces-dj', 'fr', 'Interfaces DJ');
            PERFORM insert_category_translations('interfaces-dj', 'ar', 'واجهات DJ');
            PERFORM insert_category_translations('interfaces-dj', 'en', 'DJ Interfaces');
            PERFORM insert_category_translations('interfaces-dj', 'de', 'DJ‑Interfaces');
            PERFORM insert_category_translations('interfaces-dj', 'es', 'Interfaces DJ');
            PERFORM insert_category_translations('interfaces-dj', 'it', 'Interfacce DJ');

        -- Level 1: accessoires-instruments
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-instruments', 'accessoires-instruments', 1, root_id, 'Accessoires Instruments')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('accessoires-instruments', 'fr', 'Accessoires Instruments');
        PERFORM insert_category_translations('accessoires-instruments', 'ar', 'إكسسوارات الآلات');
        PERFORM insert_category_translations('accessoires-instruments', 'en', 'Instrument Accessories');
        PERFORM insert_category_translations('accessoires-instruments', 'de', 'Instrumentenzubehör');
        PERFORM insert_category_translations('accessoires-instruments', 'es', 'Accesorios de Instrumentos');
        PERFORM insert_category_translations('accessoires-instruments', 'it', 'Accessori Strumenti');

            -- Level 2: cordes-guitare-violon
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cordes-guitare-violon', 'cordes-guitare-violon', 2, l1_id, 'Cordes guitare & violon')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cordes-guitare-violon', 'fr', 'Cordes guitare & violon');
            PERFORM insert_category_translations('cordes-guitare-violon', 'ar', 'أوتار الغيتار والكمان');
            PERFORM insert_category_translations('cordes-guitare-violon', 'en', 'Strings (Guitar/Violin)');
            PERFORM insert_category_translations('cordes-guitare-violon', 'de', 'Saiten (Gitarre/Violine)');
            PERFORM insert_category_translations('cordes-guitare-violon', 'es', 'Cuerdas (Guitarra/Violín)');
            PERFORM insert_category_translations('cordes-guitare-violon', 'it', 'Corde (Chitarra/Violino)');

            -- Level 2: mediators
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mediators', 'mediators', 2, l1_id, 'Médiators')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mediators', 'fr', 'Médiators');
            PERFORM insert_category_translations('mediators', 'ar', 'ريش العزف');
            PERFORM insert_category_translations('mediators', 'en', 'Picks');
            PERFORM insert_category_translations('mediators', 'de', 'Plektren');
            PERFORM insert_category_translations('mediators', 'es', 'Púas');
            PERFORM insert_category_translations('mediators', 'it', 'Plettri');

            -- Level 2: capodastres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('capodastres', 'capodastres', 2, l1_id, 'Capodastres')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('capodastres', 'fr', 'Capodastres');
            PERFORM insert_category_translations('capodastres', 'ar', 'كبوداستر');
            PERFORM insert_category_translations('capodastres', 'en', 'Capos');
            PERFORM insert_category_translations('capodastres', 'de', 'Kapodaster');
            PERFORM insert_category_translations('capodastres', 'es', 'Capos');
            PERFORM insert_category_translations('capodastres', 'it', 'Capotasti');

            -- Level 2: stands-instruments
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('stands-instruments', 'stands-instruments', 2, l1_id, 'Stands instruments')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('stands-instruments', 'fr', 'Stands instruments');
            PERFORM insert_category_translations('stands-instruments', 'ar', 'حوامل الآلات');
            PERFORM insert_category_translations('stands-instruments', 'en', 'Instrument Stands');
            PERFORM insert_category_translations('stands-instruments', 'de', 'Instrumentenständer');
            PERFORM insert_category_translations('stands-instruments', 'es', 'Soportes de Instrumentos');
            PERFORM insert_category_translations('stands-instruments', 'it', 'Supporti Strumenti');

            -- Level 2: housses-etuis
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('housses-etuis', 'housses-etuis', 2, l1_id, 'Housses & étuis')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('housses-etuis', 'fr', 'Housses & étuis');
            PERFORM insert_category_translations('housses-etuis', 'ar', 'حقائب وأغطية');
            PERFORM insert_category_translations('housses-etuis', 'en', 'Cases & Gigbags');
            PERFORM insert_category_translations('housses-etuis', 'de', 'Taschen & Koffer');
            PERFORM insert_category_translations('housses-etuis', 'es', 'Fundas & Estuches');
            PERFORM insert_category_translations('housses-etuis', 'it', 'Custodie & Borse');

            -- Level 2: accordeurs-electroniques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accordeurs-electroniques', 'accordeurs-electroniques', 2, l1_id, 'Accordeurs électroniques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('accordeurs-electroniques', 'fr', 'Accordeurs électroniques');
            PERFORM insert_category_translations('accordeurs-electroniques', 'ar', 'مضبطات إلكترونية');
            PERFORM insert_category_translations('accordeurs-electroniques', 'en', 'Electronic Tuners');
            PERFORM insert_category_translations('accordeurs-electroniques', 'de', 'Elektronische Stimmer');
            PERFORM insert_category_translations('accordeurs-electroniques', 'es', 'Afinadores Electrónicos');
            PERFORM insert_category_translations('accordeurs-electroniques', 'it', 'Accordatori Elettronici');

            -- Level 2: metronome
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('metronome', 'metronome', 2, l1_id, 'Métronome')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('metronome', 'fr', 'Métronome');
            PERFORM insert_category_translations('metronome', 'ar', 'مترونوم');
            PERFORM insert_category_translations('metronome', 'en', 'Metronome');
            PERFORM insert_category_translations('metronome', 'de', 'Metronom');
            PERFORM insert_category_translations('metronome', 'es', 'Metrónomo');
            PERFORM insert_category_translations('metronome', 'it', 'Metronomo');

            -- Level 2: batteries-peaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('batteries-peaux', 'batteries-peaux', 2, l1_id, 'Batteries & peaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('batteries-peaux', 'fr', 'Batteries & peaux');
            PERFORM insert_category_translations('batteries-peaux', 'ar', 'طبول وجلود');
            PERFORM insert_category_translations('batteries-peaux', 'en', 'Drumheads & Accessories');
            PERFORM insert_category_translations('batteries-peaux', 'de', 'Drumheads & Zubehör');
            PERFORM insert_category_translations('batteries-peaux', 'es', 'Parches & Accesorios');
            PERFORM insert_category_translations('batteries-peaux', 'it', 'Pelli & Accessori');

            -- Level 2: baguettes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('baguettes', 'baguettes', 2, l1_id, 'Baguettes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('baguettes', 'fr', 'Baguettes');
            PERFORM insert_category_translations('baguettes', 'ar', 'عصي الطبول');
            PERFORM insert_category_translations('baguettes', 'en', 'Drumsticks');
            PERFORM insert_category_translations('baguettes', 'de', 'Drumsticks');
            PERFORM insert_category_translations('baguettes', 'es', 'Baquetas');
            PERFORM insert_category_translations('baguettes', 'it', 'Bacchette');

            -- Level 2: ampli-guitare-basse
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ampli-guitare-basse', 'ampli-guitare-basse', 2, l1_id, 'Ampli guitare & basse')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ampli-guitare-basse', 'fr', 'Ampli guitare & basse');
            PERFORM insert_category_translations('ampli-guitare-basse', 'ar', 'أمبليفيرات الغيتار والباس');
            PERFORM insert_category_translations('ampli-guitare-basse', 'en', 'Guitar/Bass Amps');
            PERFORM insert_category_translations('ampli-guitare-basse', 'de', 'Gitarren/Bass‑Amps');
            PERFORM insert_category_translations('ampli-guitare-basse', 'es', 'Amplis Guitarra/Bajo');
            PERFORM insert_category_translations('ampli-guitare-basse', 'it', 'Amplificatori Chitarra/Basso');

            -- Level 2: cables-jack-xlr
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cables-jack-xlr', 'cables-jack-xlr', 2, l1_id, 'Câbles jack et XLR')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cables-jack-xlr', 'fr', 'Câbles jack et XLR');
            PERFORM insert_category_translations('cables-jack-xlr', 'ar', 'كوابل جاك وXLR');
            PERFORM insert_category_translations('cables-jack-xlr', 'en', 'Jack & XLR Cables');
            PERFORM insert_category_translations('cables-jack-xlr', 'de', 'Klinke & XLR‑Kabel');
            PERFORM insert_category_translations('cables-jack-xlr', 'es', 'Cables Jack & XLR');
            PERFORM insert_category_translations('cables-jack-xlr', 'it', 'Cavi Jack & XLR');

        -- Level 1: streaming-creation-contenu
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('streaming-creation-contenu', 'streaming-creation-contenu', 1, root_id, 'Streaming, Création & Contenu')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('streaming-creation-contenu', 'fr', 'Streaming, Création & Contenu');
        PERFORM insert_category_translations('streaming-creation-contenu', 'ar', 'البث وصناعة المحتوى');
        PERFORM insert_category_translations('streaming-creation-contenu', 'en', 'Streaming & Content Creation');
        PERFORM insert_category_translations('streaming-creation-contenu', 'de', 'Streaming & Content‑Erstellung');
        PERFORM insert_category_translations('streaming-creation-contenu', 'es', 'Streaming y Creación de Contenido');
        PERFORM insert_category_translations('streaming-creation-contenu', 'it', 'Streaming & Creazione Contenuti');

            -- Level 2: cameras-streaming
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cameras-streaming', 'cameras-streaming', 2, l1_id, 'Caméras streaming')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cameras-streaming', 'fr', 'Caméras streaming');
            PERFORM insert_category_translations('cameras-streaming', 'ar', 'كاميرات بث');
            PERFORM insert_category_translations('cameras-streaming', 'en', 'Streaming Cameras');
            PERFORM insert_category_translations('cameras-streaming', 'de', 'Streaming‑Kameras');
            PERFORM insert_category_translations('cameras-streaming', 'es', 'Cámaras de Streaming');
            PERFORM insert_category_translations('cameras-streaming', 'it', 'Camere Streaming');

            -- Level 2: webcams-hd
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('webcams-hd', 'webcams-hd', 2, l1_id, 'Webcams HD')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('webcams-hd', 'fr', 'Webcams HD');
            PERFORM insert_category_translations('webcams-hd', 'ar', 'كاميرات ويب HD');
            PERFORM insert_category_translations('webcams-hd', 'en', 'HD Webcams');
            PERFORM insert_category_translations('webcams-hd', 'de', 'HD‑Webcams');
            PERFORM insert_category_translations('webcams-hd', 'es', 'Webcams HD');
            PERFORM insert_category_translations('webcams-hd', 'it', 'Webcam HD');

            -- Level 2: micros-streaming
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('micros-streaming', 'micros-streaming', 2, l1_id, 'Micros streaming')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('micros-streaming', 'fr', 'Micros streaming');
            PERFORM insert_category_translations('micros-streaming', 'ar', 'ميكروفونات البث');
            PERFORM insert_category_translations('micros-streaming', 'en', 'Streaming Microphones');
            PERFORM insert_category_translations('micros-streaming', 'de', 'Streaming‑Mikrofone');
            PERFORM insert_category_translations('micros-streaming', 'es', 'Micrófonos de Streaming');
            PERFORM insert_category_translations('micros-streaming', 'it', 'Microfoni Streaming');

            -- Level 2: anneaux-lumineux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('anneaux-lumineux', 'anneaux-lumineux', 2, l1_id, 'Anneaux lumineux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('anneaux-lumineux', 'fr', 'Anneaux lumineux');
            PERFORM insert_category_translations('anneaux-lumineux', 'ar', 'إضاءات حلقية');
            PERFORM insert_category_translations('anneaux-lumineux', 'en', 'Ring Lights');
            PERFORM insert_category_translations('anneaux-lumineux', 'de', 'Ringlichter');
            PERFORM insert_category_translations('anneaux-lumineux', 'es', 'Aros de Luz');
            PERFORM insert_category_translations('anneaux-lumineux', 'it', 'Ring Light');

            -- Level 2: lampes-led-createurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lampes-led-createurs', 'lampes-led-createurs', 2, l1_id, 'Lampes LED créateurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lampes-led-createurs', 'fr', 'Lampes LED créateurs');
            PERFORM insert_category_translations('lampes-led-createurs', 'ar', 'مصابيح LED');
            PERFORM insert_category_translations('lampes-led-createurs', 'en', 'Creator LED Lamps');
            PERFORM insert_category_translations('lampes-led-createurs', 'de', 'LED‑Lampen für Creator');
            PERFORM insert_category_translations('lampes-led-createurs', 'es', 'Lámparas LED de Creadores');
            PERFORM insert_category_translations('lampes-led-createurs', 'it', 'Lampade LED Creators');

            -- Level 2: green-screen
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('green-screen', 'green-screen', 2, l1_id, 'Green screen')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('green-screen', 'fr', 'Green screen');
            PERFORM insert_category_translations('green-screen', 'ar', 'شاشة خضراء');
            PERFORM insert_category_translations('green-screen', 'en', 'Green Screen');
            PERFORM insert_category_translations('green-screen', 'de', 'Green Screen');
            PERFORM insert_category_translations('green-screen', 'es', 'Pantalla Verde');
            PERFORM insert_category_translations('green-screen', 'it', 'Green Screen');

            -- Level 2: pupitres-streaming
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pupitres-streaming', 'pupitres-streaming', 2, l1_id, 'Pupitres streaming')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pupitres-streaming', 'fr', 'Pupitres streaming');
            PERFORM insert_category_translations('pupitres-streaming', 'ar', 'وحدات تحكم البث');
            PERFORM insert_category_translations('pupitres-streaming', 'en', 'Streaming Consoles');
            PERFORM insert_category_translations('pupitres-streaming', 'de', 'Streaming‑Pulte');
            PERFORM insert_category_translations('pupitres-streaming', 'es', 'Consolas de Streaming');
            PERFORM insert_category_translations('pupitres-streaming', 'it', 'Console Streaming');

            -- Level 2: cartes-acquisition-video
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cartes-acquisition-video', 'cartes-acquisition-video', 2, l1_id, 'Cartes d''''acquisition vidéo')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cartes-acquisition-video', 'fr', 'Cartes d''acquisition vidéo');
            PERFORM insert_category_translations('cartes-acquisition-video', 'ar', 'بطاقات التقاط فيديو');
            PERFORM insert_category_translations('cartes-acquisition-video', 'en', 'Capture Cards');
            PERFORM insert_category_translations('cartes-acquisition-video', 'de', 'Capture‑Karten');
            PERFORM insert_category_translations('cartes-acquisition-video', 'es', 'Capturadoras de Vídeo');
            PERFORM insert_category_translations('cartes-acquisition-video', 'it', 'Schede di Acquisizione');

            -- Level 2: equipement-podcast
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('equipement-podcast', 'equipement-podcast', 2, l1_id, 'Équipement podcast')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('equipement-podcast', 'fr', 'Équipement podcast');
            PERFORM insert_category_translations('equipement-podcast', 'ar', 'معدات البودكاست');
            PERFORM insert_category_translations('equipement-podcast', 'en', 'Podcast Equipment');
            PERFORM insert_category_translations('equipement-podcast', 'de', 'Podcast‑Ausrüstung');
            PERFORM insert_category_translations('equipement-podcast', 'es', 'Equipos de Podcast');
            PERFORM insert_category_translations('equipement-podcast', 'it', 'Attrezzatura Podcast');

        -- Level 1: radios-multimedia
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('radios-multimedia', 'radios-multimedia', 1, root_id, 'Radios & Multimédia')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('radios-multimedia', 'fr', 'Radios & Multimédia');
        PERFORM insert_category_translations('radios-multimedia', 'ar', 'راديو ووسائط متعددة');
        PERFORM insert_category_translations('radios-multimedia', 'en', 'Radios & Multimedia');
        PERFORM insert_category_translations('radios-multimedia', 'de', 'Radios & Multimedia');
        PERFORM insert_category_translations('radios-multimedia', 'es', 'Radios & Multimedia');
        PERFORM insert_category_translations('radios-multimedia', 'it', 'Radio & Multimedia');

            -- Level 2: radios-fm
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('radios-fm', 'radios-fm', 2, l1_id, 'Radios FM')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('radios-fm', 'fr', 'Radios FM');
            PERFORM insert_category_translations('radios-fm', 'ar', 'راديو FM');
            PERFORM insert_category_translations('radios-fm', 'en', 'FM Radios');
            PERFORM insert_category_translations('radios-fm', 'de', 'UKW‑Radios');
            PERFORM insert_category_translations('radios-fm', 'es', 'Radios FM');
            PERFORM insert_category_translations('radios-fm', 'it', 'Radio FM');

            -- Level 2: radios-digitaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('radios-digitaux', 'radios-digitaux', 2, l1_id, 'Radios digitaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('radios-digitaux', 'fr', 'Radios digitaux');
            PERFORM insert_category_translations('radios-digitaux', 'ar', 'راديو رقمي');
            PERFORM insert_category_translations('radios-digitaux', 'en', 'Digital Radios');
            PERFORM insert_category_translations('radios-digitaux', 'de', 'Digitale Radios');
            PERFORM insert_category_translations('radios-digitaux', 'es', 'Radios Digitales');
            PERFORM insert_category_translations('radios-digitaux', 'it', 'Radio Digitale');

            -- Level 2: lecteurs-mp3
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lecteurs-mp3', 'lecteurs-mp3', 2, l1_id, 'Lecteurs MP3')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lecteurs-mp3', 'fr', 'Lecteurs MP3');
            PERFORM insert_category_translations('lecteurs-mp3', 'ar', 'مشغلات MP3');
            PERFORM insert_category_translations('lecteurs-mp3', 'en', 'MP3 Players');
            PERFORM insert_category_translations('lecteurs-mp3', 'de', 'MP3‑Player');
            PERFORM insert_category_translations('lecteurs-mp3', 'es', 'Reproductores MP3');
            PERFORM insert_category_translations('lecteurs-mp3', 'it', 'Lettori MP3');

            -- Level 2: enceintes-nomades
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('enceintes-nomades', 'enceintes-nomades', 2, l1_id, 'Enceintes nomades')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('enceintes-nomades', 'fr', 'Enceintes nomades');
            PERFORM insert_category_translations('enceintes-nomades', 'ar', 'سماعات محمولة');
            PERFORM insert_category_translations('enceintes-nomades', 'en', 'Portable Speakers');
            PERFORM insert_category_translations('enceintes-nomades', 'de', 'Mobile Lautsprecher');
            PERFORM insert_category_translations('enceintes-nomades', 'es', 'Altavoces Portátiles');
            PERFORM insert_category_translations('enceintes-nomades', 'it', 'Diffusori Portatili');

            -- Level 2: autoradios
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('autoradios', 'autoradios', 2, l1_id, 'Autoradios')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('autoradios', 'fr', 'Autoradios');
            PERFORM insert_category_translations('autoradios', 'ar', 'راديو سيارة');
            PERFORM insert_category_translations('autoradios', 'en', 'Car Stereos');
            PERFORM insert_category_translations('autoradios', 'de', 'Autoradios');
            PERFORM insert_category_translations('autoradios', 'es', 'Radios de Coche');
            PERFORM insert_category_translations('autoradios', 'it', 'Autoradio');

            -- Level 2: amplificateurs-voiture
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('amplificateurs-voiture', 'amplificateurs-voiture', 2, l1_id, 'Amplificateurs voiture')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('amplificateurs-voiture', 'fr', 'Amplificateurs voiture');
            PERFORM insert_category_translations('amplificateurs-voiture', 'ar', 'مضخمات سيارة');
            PERFORM insert_category_translations('amplificateurs-voiture', 'en', 'Car Amplifiers');
            PERFORM insert_category_translations('amplificateurs-voiture', 'de', 'Auto‑Verstärker');
            PERFORM insert_category_translations('amplificateurs-voiture', 'es', 'Amplificadores de Coche');
            PERFORM insert_category_translations('amplificateurs-voiture', 'it', 'Amplificatori Auto');

            -- Level 2: subwoofers-voiture
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('subwoofers-voiture', 'subwoofers-voiture', 2, l1_id, 'Subwoofers voiture')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('subwoofers-voiture', 'fr', 'Subwoofers voiture');
            PERFORM insert_category_translations('subwoofers-voiture', 'ar', 'مضخمات جهير سيارة');
            PERFORM insert_category_translations('subwoofers-voiture', 'en', 'Car Subwoofers');
            PERFORM insert_category_translations('subwoofers-voiture', 'de', 'Auto‑Subwoofer');
            PERFORM insert_category_translations('subwoofers-voiture', 'es', 'Subwoofers de Coche');
            PERFORM insert_category_translations('subwoofers-voiture', 'it', 'Subwoofer Auto');

            -- Level 2: ecrans-android-voiture
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ecrans-android-voiture', 'ecrans-android-voiture', 2, l1_id, 'Écrans Android voiture')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ecrans-android-voiture', 'fr', 'Écrans Android voiture');
            PERFORM insert_category_translations('ecrans-android-voiture', 'ar', 'شاشات أندرويد للسيارة');
            PERFORM insert_category_translations('ecrans-android-voiture', 'en', 'Android Car Screens');
            PERFORM insert_category_translations('ecrans-android-voiture', 'de', 'Android‑Bildschirme fürs Auto');
            PERFORM insert_category_translations('ecrans-android-voiture', 'es', 'Pantallas Android para Coche');
            PERFORM insert_category_translations('ecrans-android-voiture', 'it', 'Schermi Android Auto');

        -- Level 1: equipements-cinema-maison
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('equipements-cinema-maison', 'equipements-cinema-maison', 1, root_id, 'Équipements Cinéma Maison')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('equipements-cinema-maison', 'fr', 'Équipements Cinéma Maison');
        PERFORM insert_category_translations('equipements-cinema-maison', 'ar', 'معدات سينما منزلية');
        PERFORM insert_category_translations('equipements-cinema-maison', 'en', 'Home Cinema Equipment');
        PERFORM insert_category_translations('equipements-cinema-maison', 'de', 'Heimkino‑Ausstattung');
        PERFORM insert_category_translations('equipements-cinema-maison', 'es', 'Equipos de Cine en Casa');
        PERFORM insert_category_translations('equipements-cinema-maison', 'it', 'Attrezzature Home Cinema');

            -- Level 2: videoprojecteurs-4k
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('videoprojecteurs-4k', 'videoprojecteurs-4k', 2, l1_id, 'Vidéoprojecteurs 4K')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('videoprojecteurs-4k', 'fr', 'Vidéoprojecteurs 4K');
            PERFORM insert_category_translations('videoprojecteurs-4k', 'ar', 'بروجكتور 4K');
            PERFORM insert_category_translations('videoprojecteurs-4k', 'en', '4K Projectors');
            PERFORM insert_category_translations('videoprojecteurs-4k', 'de', '4K‑Projektoren');
            PERFORM insert_category_translations('videoprojecteurs-4k', 'es', 'Proyectores 4K');
            PERFORM insert_category_translations('videoprojecteurs-4k', 'it', 'Videoproiettori 4K');

            -- Level 2: ecrans-de-projection
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ecrans-de-projection', 'ecrans-de-projection', 2, l1_id, 'Écrans de projection')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ecrans-de-projection', 'fr', 'Écrans de projection');
            PERFORM insert_category_translations('ecrans-de-projection', 'ar', 'شاشات عرض');
            PERFORM insert_category_translations('ecrans-de-projection', 'en', 'Projection Screens');
            PERFORM insert_category_translations('ecrans-de-projection', 'de', 'Leinwände');
            PERFORM insert_category_translations('ecrans-de-projection', 'es', 'Pantallas de Proyección');
            PERFORM insert_category_translations('ecrans-de-projection', 'it', 'Schermi di Proiezione');

            -- Level 2: supports-plafond
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('supports-plafond', 'supports-plafond', 2, l1_id, 'Supports plafond')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('supports-plafond', 'fr', 'Supports plafond');
            PERFORM insert_category_translations('supports-plafond', 'ar', 'حوامل سقفية');
            PERFORM insert_category_translations('supports-plafond', 'en', 'Ceiling Mounts');
            PERFORM insert_category_translations('supports-plafond', 'de', 'Deckenhalterungen');
            PERFORM insert_category_translations('supports-plafond', 'es', 'Soportes de Techo');
            PERFORM insert_category_translations('supports-plafond', 'it', 'Supporti a Soffitto');

            -- Level 2: systemes-audio-surround
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('systemes-audio-surround', 'systemes-audio-surround', 2, l1_id, 'Systèmes audio surround')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('systemes-audio-surround', 'fr', 'Systèmes audio surround');
            PERFORM insert_category_translations('systemes-audio-surround', 'ar', 'أنظمة صوت محيطي');
            PERFORM insert_category_translations('systemes-audio-surround', 'en', 'Surround Audio Systems');
            PERFORM insert_category_translations('systemes-audio-surround', 'de', 'Surround‑Systeme');
            PERFORM insert_category_translations('systemes-audio-surround', 'es', 'Sistemas de Sonido Surround');
            PERFORM insert_category_translations('systemes-audio-surround', 'it', 'Sistemi Audio Surround');

            -- Level 2: cablage-hdmi
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cablage-hdmi', 'cablage-hdmi', 2, l1_id, 'Câblage HDMI')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cablage-hdmi', 'fr', 'Câblage HDMI');
            PERFORM insert_category_translations('cablage-hdmi', 'ar', 'كوابل HDMI');
            PERFORM insert_category_translations('cablage-hdmi', 'en', 'HDMI Cabling');
            PERFORM insert_category_translations('cablage-hdmi', 'de', 'HDMI‑Verkabelung');
            PERFORM insert_category_translations('cablage-hdmi', 'es', 'Cableado HDMI');
            PERFORM insert_category_translations('cablage-hdmi', 'it', 'Cablaggio HDMI');

            -- Level 2: convertisseurs-audio-video
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('convertisseurs-audio-video', 'convertisseurs-audio-video', 2, l1_id, 'Convertisseurs audio/vidéo')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('convertisseurs-audio-video', 'fr', 'Convertisseurs audio/vidéo');
            PERFORM insert_category_translations('convertisseurs-audio-video', 'ar', 'محولات صوت/فيديو');
            PERFORM insert_category_translations('convertisseurs-audio-video', 'en', 'Audio/Video Converters');
            PERFORM insert_category_translations('convertisseurs-audio-video', 'de', 'Audio/Video‑Konverter');
            PERFORM insert_category_translations('convertisseurs-audio-video', 'es', 'Convertidores Audio/Vídeo');
            PERFORM insert_category_translations('convertisseurs-audio-video', 'it', 'Convertitori Audio/Video');

        -- Level 1: electroniques-portables
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('electroniques-portables', 'electroniques-portables', 1, root_id, 'Électroniques Portables')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('electroniques-portables', 'fr', 'Électroniques Portables');
        PERFORM insert_category_translations('electroniques-portables', 'ar', 'إلكترونيات محمولة');
        PERFORM insert_category_translations('electroniques-portables', 'en', 'Portable Electronics');
        PERFORM insert_category_translations('electroniques-portables', 'de', 'Tragbare Elektronik');
        PERFORM insert_category_translations('electroniques-portables', 'es', 'Electrónica Portátil');
        PERFORM insert_category_translations('electroniques-portables', 'it', 'Elettronica Portatile');

            -- Level 2: mini-projecteurs-portables
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mini-projecteurs-portables', 'mini-projecteurs-portables', 2, l1_id, 'Mini projecteurs portables')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mini-projecteurs-portables', 'fr', 'Mini projecteurs portables');
            PERFORM insert_category_translations('mini-projecteurs-portables', 'ar', 'بروجكتورات محمولة صغيرة');
            PERFORM insert_category_translations('mini-projecteurs-portables', 'en', 'Portable Mini Projectors');
            PERFORM insert_category_translations('mini-projecteurs-portables', 'de', 'Mini‑Projektoren mobil');
            PERFORM insert_category_translations('mini-projecteurs-portables', 'es', 'Mini Proyectores Portátiles');
            PERFORM insert_category_translations('mini-projecteurs-portables', 'it', 'Mini Proiettori Portatili');

            -- Level 2: enceintes-outdoor
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('enceintes-outdoor', 'enceintes-outdoor', 2, l1_id, 'Enceintes outdoor')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('enceintes-outdoor', 'fr', 'Enceintes outdoor');
            PERFORM insert_category_translations('enceintes-outdoor', 'ar', 'سماعات خارجية');
            PERFORM insert_category_translations('enceintes-outdoor', 'en', 'Outdoor Speakers');
            PERFORM insert_category_translations('enceintes-outdoor', 'de', 'Outdoor‑Lautsprecher');
            PERFORM insert_category_translations('enceintes-outdoor', 'es', 'Altavoces Outdoor');
            PERFORM insert_category_translations('enceintes-outdoor', 'it', 'Diffusori Outdoor');

            -- Level 2: casques-sport
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('casques-sport', 'casques-sport', 2, l1_id, 'Casques sport')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('casques-sport', 'fr', 'Casques sport');
            PERFORM insert_category_translations('casques-sport', 'ar', 'سماعات رياضية');
            PERFORM insert_category_translations('casques-sport', 'en', 'Sports Headphones');
            PERFORM insert_category_translations('casques-sport', 'de', 'Sport‑Kopfhörer');
            PERFORM insert_category_translations('casques-sport', 'es', 'Cascos Deportivos');
            PERFORM insert_category_translations('casques-sport', 'it', 'Cuffie Sport');

            -- Level 2: amplis-nomades
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('amplis-nomades', 'amplis-nomades', 2, l1_id, 'Amplis nomades')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('amplis-nomades', 'fr', 'Amplis nomades');
            PERFORM insert_category_translations('amplis-nomades', 'ar', 'مضخمات متنقلة');
            PERFORM insert_category_translations('amplis-nomades', 'en', 'Portable Amps');
            PERFORM insert_category_translations('amplis-nomades', 'de', 'Mobile Amps');
            PERFORM insert_category_translations('amplis-nomades', 'es', 'Amplificadores Portátiles');
            PERFORM insert_category_translations('amplis-nomades', 'it', 'Amplificatori Portatili');

            -- Level 2: enregistreurs-de-terrain
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('enregistreurs-de-terrain', 'enregistreurs-de-terrain', 2, l1_id, 'Enregistreurs de terrain')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('enregistreurs-de-terrain', 'fr', 'Enregistreurs de terrain');
            PERFORM insert_category_translations('enregistreurs-de-terrain', 'ar', 'مسجلات ميدانية');
            PERFORM insert_category_translations('enregistreurs-de-terrain', 'en', 'Field Recorders');
            PERFORM insert_category_translations('enregistreurs-de-terrain', 'de', 'Feld‑Recorder');
            PERFORM insert_category_translations('enregistreurs-de-terrain', 'es', 'Grabadoras de Campo');
            PERFORM insert_category_translations('enregistreurs-de-terrain', 'it', 'Registratori da Campo');

        -- Level 1: accessoires-image-son
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-image-son', 'accessoires-image-son', 1, root_id, 'Accessoires Image & Son')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('accessoires-image-son', 'fr', 'Accessoires Image & Son');
        PERFORM insert_category_translations('accessoires-image-son', 'ar', 'إكسسوارات الصورة والصوت');
        PERFORM insert_category_translations('accessoires-image-son', 'en', 'Image & Sound Accessories');
        PERFORM insert_category_translations('accessoires-image-son', 'de', 'Bild & Ton‑Zubehör');
        PERFORM insert_category_translations('accessoires-image-son', 'es', 'Accesorios de Imagen & Sonido');
        PERFORM insert_category_translations('accessoires-image-son', 'it', 'Accessori Immagine & Suono');

            -- Level 2: cables-hdmi
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cables-hdmi', 'cables-hdmi', 2, l1_id, 'Câbles HDMI')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cables-hdmi', 'fr', 'Câbles HDMI');
            PERFORM insert_category_translations('cables-hdmi', 'ar', 'كوابل HDMI');
            PERFORM insert_category_translations('cables-hdmi', 'en', 'HDMI Cables');
            PERFORM insert_category_translations('cables-hdmi', 'de', 'HDMI‑Kabel');
            PERFORM insert_category_translations('cables-hdmi', 'es', 'Cables HDMI');
            PERFORM insert_category_translations('cables-hdmi', 'it', 'Cavi HDMI');

            -- Level 2: cables-audio-jack-rca
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cables-audio-jack-rca', 'cables-audio-jack-rca', 2, l1_id, 'Câbles audio jack & RCA')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cables-audio-jack-rca', 'fr', 'Câbles audio jack & RCA');
            PERFORM insert_category_translations('cables-audio-jack-rca', 'ar', 'كوابل جاك وRCA');
            PERFORM insert_category_translations('cables-audio-jack-rca', 'en', 'Jack & RCA Cables');
            PERFORM insert_category_translations('cables-audio-jack-rca', 'de', 'Klinke & RCA‑Kabel');
            PERFORM insert_category_translations('cables-audio-jack-rca', 'es', 'Cables Jack & RCA');
            PERFORM insert_category_translations('cables-audio-jack-rca', 'it', 'Cavi Jack & RCA');

            -- Level 2: adaptateurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('adaptateurs', 'adaptateurs', 2, l1_id, 'Adaptateurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('adaptateurs', 'fr', 'Adaptateurs');
            PERFORM insert_category_translations('adaptateurs', 'ar', 'محولات');
            PERFORM insert_category_translations('adaptateurs', 'en', 'Adapters');
            PERFORM insert_category_translations('adaptateurs', 'de', 'Adapter');
            PERFORM insert_category_translations('adaptateurs', 'es', 'Adaptadores');
            PERFORM insert_category_translations('adaptateurs', 'it', 'Adattatori');

            -- Level 2: batteries-chargeurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('batteries-chargeurs', 'batteries-chargeurs', 2, l1_id, 'Batteries & chargeurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('batteries-chargeurs', 'fr', 'Batteries & chargeurs');
            PERFORM insert_category_translations('batteries-chargeurs', 'ar', 'بطاريات وشواحن');
            PERFORM insert_category_translations('batteries-chargeurs', 'en', 'Batteries & Chargers');
            PERFORM insert_category_translations('batteries-chargeurs', 'de', 'Akkus & Ladegeräte');
            PERFORM insert_category_translations('batteries-chargeurs', 'es', 'Baterías & Cargadores');
            PERFORM insert_category_translations('batteries-chargeurs', 'it', 'Batterie & Caricatori');

            -- Level 2: nettoyants-lentilles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('nettoyants-lentilles', 'nettoyants-lentilles', 2, l1_id, 'Nettoyants lentilles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('nettoyants-lentilles', 'fr', 'Nettoyants lentilles');
            PERFORM insert_category_translations('nettoyants-lentilles', 'ar', 'منظفات العدسات');
            PERFORM insert_category_translations('nettoyants-lentilles', 'en', 'Lens Cleaners');
            PERFORM insert_category_translations('nettoyants-lentilles', 'de', 'Linsenreiniger');
            PERFORM insert_category_translations('nettoyants-lentilles', 'es', 'Limpiadores de Lentes');
            PERFORM insert_category_translations('nettoyants-lentilles', 'it', 'Pulitori Lenti');

            -- Level 2: filtres-photo
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('filtres-photo', 'filtres-photo', 2, l1_id, 'Filtres photo')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('filtres-photo', 'fr', 'Filtres photo');
            PERFORM insert_category_translations('filtres-photo', 'ar', 'مرشحات تصوير');
            PERFORM insert_category_translations('filtres-photo', 'en', 'Photo Filters');
            PERFORM insert_category_translations('filtres-photo', 'de', 'Foto‑Filter');
            PERFORM insert_category_translations('filtres-photo', 'es', 'Filtros Fotográficos');
            PERFORM insert_category_translations('filtres-photo', 'it', 'Filtri Fotografici');

            -- Level 2: cartes-sd
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cartes-sd', 'cartes-sd', 2, l1_id, 'Cartes SD')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cartes-sd', 'fr', 'Cartes SD');
            PERFORM insert_category_translations('cartes-sd', 'ar', 'بطاقات SD');
            PERFORM insert_category_translations('cartes-sd', 'en', 'SD Cards');
            PERFORM insert_category_translations('cartes-sd', 'de', 'SD‑Karten');
            PERFORM insert_category_translations('cartes-sd', 'es', 'Tarjetas SD');
            PERFORM insert_category_translations('cartes-sd', 'it', 'Schede SD');

            -- Level 2: boitiers-transport
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('boitiers-transport', 'boitiers-transport', 2, l1_id, 'Boîtiers transport')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('boitiers-transport', 'fr', 'Boîtiers transport');
            PERFORM insert_category_translations('boitiers-transport', 'ar', 'حقائب نقل');
            PERFORM insert_category_translations('boitiers-transport', 'en', 'Transport Cases');
            PERFORM insert_category_translations('boitiers-transport', 'de', 'Transportkoffer');
            PERFORM insert_category_translations('boitiers-transport', 'es', 'Estuches de Transporte');
            PERFORM insert_category_translations('boitiers-transport', 'it', 'Custodie Trasporto');

            -- Level 2: pieds-camera
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pieds-camera', 'pieds-camera', 2, l1_id, 'Pieds caméra')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pieds-camera', 'fr', 'Pieds caméra');
            PERFORM insert_category_translations('pieds-camera', 'ar', 'حوامل كاميرا');
            PERFORM insert_category_translations('pieds-camera', 'en', 'Camera Tripods');
            PERFORM insert_category_translations('pieds-camera', 'de', 'Kamerastative');
            PERFORM insert_category_translations('pieds-camera', 'es', 'Trípodes de Cámara');
            PERFORM insert_category_translations('pieds-camera', 'it', 'Treppiedi Fotocamera');

        -- Level 1: marques-populaires
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('marques-populaires', 'marques-populaires', 1, root_id, 'Marques Populaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('marques-populaires', 'fr', 'Marques Populaires');
        PERFORM insert_category_translations('marques-populaires', 'ar', 'ماركات شائعة');
        PERFORM insert_category_translations('marques-populaires', 'en', 'Popular Brands');
        PERFORM insert_category_translations('marques-populaires', 'de', 'Beliebte Marken');
        PERFORM insert_category_translations('marques-populaires', 'es', 'Marcas Populares');
        PERFORM insert_category_translations('marques-populaires', 'it', 'Marche Popolari');

            -- Level 2: sony
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sony', 'sony', 2, l1_id, 'Sony')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sony', 'fr', 'Sony');
            PERFORM insert_category_translations('sony', 'ar', 'Sony');
            PERFORM insert_category_translations('sony', 'en', 'Sony');
            PERFORM insert_category_translations('sony', 'de', 'Sony');
            PERFORM insert_category_translations('sony', 'es', 'Sony');
            PERFORM insert_category_translations('sony', 'it', 'Sony');

            -- Level 2: samsung
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('samsung', 'samsung', 2, l1_id, 'Samsung')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('samsung', 'fr', 'Samsung');
            PERFORM insert_category_translations('samsung', 'ar', 'Samsung');
            PERFORM insert_category_translations('samsung', 'en', 'Samsung');
            PERFORM insert_category_translations('samsung', 'de', 'Samsung');
            PERFORM insert_category_translations('samsung', 'es', 'Samsung');
            PERFORM insert_category_translations('samsung', 'it', 'Samsung');

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

            -- Level 2: panasonic
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('panasonic', 'panasonic', 2, l1_id, 'Panasonic')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('panasonic', 'fr', 'Panasonic');
            PERFORM insert_category_translations('panasonic', 'ar', 'Panasonic');
            PERFORM insert_category_translations('panasonic', 'en', 'Panasonic');
            PERFORM insert_category_translations('panasonic', 'de', 'Panasonic');
            PERFORM insert_category_translations('panasonic', 'es', 'Panasonic');
            PERFORM insert_category_translations('panasonic', 'it', 'Panasonic');

            -- Level 2: canon
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('canon', 'canon', 2, l1_id, 'Canon')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('canon', 'fr', 'Canon');
            PERFORM insert_category_translations('canon', 'ar', 'Canon');
            PERFORM insert_category_translations('canon', 'en', 'Canon');
            PERFORM insert_category_translations('canon', 'de', 'Canon');
            PERFORM insert_category_translations('canon', 'es', 'Canon');
            PERFORM insert_category_translations('canon', 'it', 'Canon');

            -- Level 2: nikon
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('nikon', 'nikon', 2, l1_id, 'Nikon')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('nikon', 'fr', 'Nikon');
            PERFORM insert_category_translations('nikon', 'ar', 'Nikon');
            PERFORM insert_category_translations('nikon', 'en', 'Nikon');
            PERFORM insert_category_translations('nikon', 'de', 'Nikon');
            PERFORM insert_category_translations('nikon', 'es', 'Nikon');
            PERFORM insert_category_translations('nikon', 'it', 'Nikon');

            -- Level 2: fujifilm
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fujifilm', 'fujifilm', 2, l1_id, 'Fujifilm')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fujifilm', 'fr', 'Fujifilm');
            PERFORM insert_category_translations('fujifilm', 'ar', 'Fujifilm');
            PERFORM insert_category_translations('fujifilm', 'en', 'Fujifilm');
            PERFORM insert_category_translations('fujifilm', 'de', 'Fujifilm');
            PERFORM insert_category_translations('fujifilm', 'es', 'Fujifilm');
            PERFORM insert_category_translations('fujifilm', 'it', 'Fujifilm');

            -- Level 2: jbl
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jbl', 'jbl', 2, l1_id, 'JBL')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('jbl', 'fr', 'JBL');
            PERFORM insert_category_translations('jbl', 'ar', 'JBL');
            PERFORM insert_category_translations('jbl', 'en', 'JBL');
            PERFORM insert_category_translations('jbl', 'de', 'JBL');
            PERFORM insert_category_translations('jbl', 'es', 'JBL');
            PERFORM insert_category_translations('jbl', 'it', 'JBL');

            -- Level 2: bose
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bose', 'bose', 2, l1_id, 'Bose')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bose', 'fr', 'Bose');
            PERFORM insert_category_translations('bose', 'ar', 'Bose');
            PERFORM insert_category_translations('bose', 'en', 'Bose');
            PERFORM insert_category_translations('bose', 'de', 'Bose');
            PERFORM insert_category_translations('bose', 'es', 'Bose');
            PERFORM insert_category_translations('bose', 'it', 'Bose');

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

            -- Level 2: pioneer
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pioneer', 'pioneer', 2, l1_id, 'Pioneer')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pioneer', 'fr', 'Pioneer');
            PERFORM insert_category_translations('pioneer', 'ar', 'Pioneer');
            PERFORM insert_category_translations('pioneer', 'en', 'Pioneer');
            PERFORM insert_category_translations('pioneer', 'de', 'Pioneer');
            PERFORM insert_category_translations('pioneer', 'es', 'Pioneer');
            PERFORM insert_category_translations('pioneer', 'it', 'Pioneer');

            -- Level 2: shure
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('shure', 'shure', 2, l1_id, 'Shure')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('shure', 'fr', 'Shure');
            PERFORM insert_category_translations('shure', 'ar', 'Shure');
            PERFORM insert_category_translations('shure', 'en', 'Shure');
            PERFORM insert_category_translations('shure', 'de', 'Shure');
            PERFORM insert_category_translations('shure', 'es', 'Shure');
            PERFORM insert_category_translations('shure', 'it', 'Shure');

            -- Level 2: rode
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('rode', 'rode', 2, l1_id, 'Rode')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('rode', 'fr', 'Rode');
            PERFORM insert_category_translations('rode', 'ar', 'Rode');
            PERFORM insert_category_translations('rode', 'en', 'Rode');
            PERFORM insert_category_translations('rode', 'de', 'Rode');
            PERFORM insert_category_translations('rode', 'es', 'Rode');
            PERFORM insert_category_translations('rode', 'it', 'Rode');

            -- Level 2: behringer
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('behringer', 'behringer', 2, l1_id, 'Behringer')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('behringer', 'fr', 'Behringer');
            PERFORM insert_category_translations('behringer', 'ar', 'Behringer');
            PERFORM insert_category_translations('behringer', 'en', 'Behringer');
            PERFORM insert_category_translations('behringer', 'de', 'Behringer');
            PERFORM insert_category_translations('behringer', 'es', 'Behringer');
            PERFORM insert_category_translations('behringer', 'it', 'Behringer');

            -- Level 2: sennheiser
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sennheiser', 'sennheiser', 2, l1_id, 'Sennheiser')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sennheiser', 'fr', 'Sennheiser');
            PERFORM insert_category_translations('sennheiser', 'ar', 'Sennheiser');
            PERFORM insert_category_translations('sennheiser', 'en', 'Sennheiser');
            PERFORM insert_category_translations('sennheiser', 'de', 'Sennheiser');
            PERFORM insert_category_translations('sennheiser', 'es', 'Sennheiser');
            PERFORM insert_category_translations('sennheiser', 'it', 'Sennheiser');

            -- Level 2: marshall
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('marshall', 'marshall', 2, l1_id, 'Marshall')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('marshall', 'fr', 'Marshall');
            PERFORM insert_category_translations('marshall', 'ar', 'Marshall');
            PERFORM insert_category_translations('marshall', 'en', 'Marshall');
            PERFORM insert_category_translations('marshall', 'de', 'Marshall');
            PERFORM insert_category_translations('marshall', 'es', 'Marshall');
            PERFORM insert_category_translations('marshall', 'it', 'Marshall');

            -- Level 2: roland
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('roland', 'roland', 2, l1_id, 'Roland')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('roland', 'fr', 'Roland');
            PERFORM insert_category_translations('roland', 'ar', 'Roland');
            PERFORM insert_category_translations('roland', 'en', 'Roland');
            PERFORM insert_category_translations('roland', 'de', 'Roland');
            PERFORM insert_category_translations('roland', 'es', 'Roland');
            PERFORM insert_category_translations('roland', 'it', 'Roland');

            -- Level 2: casio
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('casio', 'casio', 2, l1_id, 'Casio')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('casio', 'fr', 'Casio');
            PERFORM insert_category_translations('casio', 'ar', 'Casio');
            PERFORM insert_category_translations('casio', 'en', 'Casio');
            PERFORM insert_category_translations('casio', 'de', 'Casio');
            PERFORM insert_category_translations('casio', 'es', 'Casio');
            PERFORM insert_category_translations('casio', 'it', 'Casio');

            -- Level 2: alesis
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('alesis', 'alesis', 2, l1_id, 'Alesis')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('alesis', 'fr', 'Alesis');
            PERFORM insert_category_translations('alesis', 'ar', 'Alesis');
            PERFORM insert_category_translations('alesis', 'en', 'Alesis');
            PERFORM insert_category_translations('alesis', 'de', 'Alesis');
            PERFORM insert_category_translations('alesis', 'es', 'Alesis');
            PERFORM insert_category_translations('alesis', 'it', 'Alesis');

            -- Level 2: numark
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('numark', 'numark', 2, l1_id, 'Numark')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('numark', 'fr', 'Numark');
            PERFORM insert_category_translations('numark', 'ar', 'Numark');
            PERFORM insert_category_translations('numark', 'en', 'Numark');
            PERFORM insert_category_translations('numark', 'de', 'Numark');
            PERFORM insert_category_translations('numark', 'es', 'Numark');
            PERFORM insert_category_translations('numark', 'it', 'Numark');

        -- Level 1: segments-usage
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('segments-usage', 'segments-usage', 1, root_id, 'Segments d’Usage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('segments-usage', 'fr', 'Segments d’Usage');
        PERFORM insert_category_translations('segments-usage', 'ar', 'قطاعات الاستخدام');
        PERFORM insert_category_translations('segments-usage', 'en', 'Usage Segments');
        PERFORM insert_category_translations('segments-usage', 'de', 'Anwendungssegmente');
        PERFORM insert_category_translations('segments-usage', 'es', 'Segmentos de Uso');
        PERFORM insert_category_translations('segments-usage', 'it', 'Segmenti d’Uso');

            -- Level 2: image-domestique
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('image-domestique', 'image-domestique', 2, l1_id, 'Image domestique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('image-domestique', 'fr', 'Image domestique');
            PERFORM insert_category_translations('image-domestique', 'ar', 'صورة منزلية');
            PERFORM insert_category_translations('image-domestique', 'en', 'Home Imaging');
            PERFORM insert_category_translations('image-domestique', 'de', 'Heim‑Bild');
            PERFORM insert_category_translations('image-domestique', 'es', 'Imagen Doméstica');
            PERFORM insert_category_translations('image-domestique', 'it', 'Immagine Domestica');

            -- Level 2: son-domestique
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('son-domestique', 'son-domestique', 2, l1_id, 'Son domestique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('son-domestique', 'fr', 'Son domestique');
            PERFORM insert_category_translations('son-domestique', 'ar', 'صوت منزلي');
            PERFORM insert_category_translations('son-domestique', 'en', 'Home Audio');
            PERFORM insert_category_translations('son-domestique', 'de', 'Heim‑Audio');
            PERFORM insert_category_translations('son-domestique', 'es', 'Sonido Doméstico');
            PERFORM insert_category_translations('son-domestique', 'it', 'Audio Domestico');

            -- Level 2: audio-professionnel
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('audio-professionnel', 'audio-professionnel', 2, l1_id, 'Audio professionnel')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('audio-professionnel', 'fr', 'Audio professionnel');
            PERFORM insert_category_translations('audio-professionnel', 'ar', 'صوت احترافي');
            PERFORM insert_category_translations('audio-professionnel', 'en', 'Professional Audio');
            PERFORM insert_category_translations('audio-professionnel', 'de', 'Pro‑Audio');
            PERFORM insert_category_translations('audio-professionnel', 'es', 'Audio Profesional');
            PERFORM insert_category_translations('audio-professionnel', 'it', 'Audio Professionale');

            -- Level 2: studio-enregistrement
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('studio-enregistrement', 'studio-enregistrement', 2, l1_id, 'Studio d’enregistrement')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('studio-enregistrement', 'fr', 'Studio d’enregistrement');
            PERFORM insert_category_translations('studio-enregistrement', 'ar', 'استوديو تسجيل');
            PERFORM insert_category_translations('studio-enregistrement', 'en', 'Recording Studio');
            PERFORM insert_category_translations('studio-enregistrement', 'de', 'Aufnahmestudio');
            PERFORM insert_category_translations('studio-enregistrement', 'es', 'Estudio de Grabación');
            PERFORM insert_category_translations('studio-enregistrement', 'it', 'Studio di Registrazione');

            -- Level 2: dj-evenementiel
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('dj-evenementiel', 'dj-evenementiel', 2, l1_id, 'DJ & événementiel')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('dj-evenementiel', 'fr', 'DJ & événementiel');
            PERFORM insert_category_translations('dj-evenementiel', 'ar', 'DJ وفعاليات');
            PERFORM insert_category_translations('dj-evenementiel', 'en', 'DJ & Events');
            PERFORM insert_category_translations('dj-evenementiel', 'de', 'DJ & Events');
            PERFORM insert_category_translations('dj-evenementiel', 'es', 'DJ & Eventos');
            PERFORM insert_category_translations('dj-evenementiel', 'it', 'DJ & Eventi');

            -- Level 2: creation-contenu
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('creation-contenu', 'creation-contenu', 2, l1_id, 'Création de contenu')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('creation-contenu', 'fr', 'Création de contenu');
            PERFORM insert_category_translations('creation-contenu', 'ar', 'صناعة المحتوى');
            PERFORM insert_category_translations('creation-contenu', 'en', 'Content Creation');
            PERFORM insert_category_translations('creation-contenu', 'de', 'Content‑Erstellung');
            PERFORM insert_category_translations('creation-contenu', 'es', 'Creación de Contenido');
            PERFORM insert_category_translations('creation-contenu', 'it', 'Creazione Contenuti');

            -- Level 2: musique-amateur
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('musique-amateur', 'musique-amateur', 2, l1_id, 'Musique amateur')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('musique-amateur', 'fr', 'Musique amateur');
            PERFORM insert_category_translations('musique-amateur', 'ar', 'موسيقى هواة');
            PERFORM insert_category_translations('musique-amateur', 'en', 'Amateur Music');
            PERFORM insert_category_translations('musique-amateur', 'de', 'Hobby‑Musik');
            PERFORM insert_category_translations('musique-amateur', 'es', 'Música Amateur');
            PERFORM insert_category_translations('musique-amateur', 'it', 'Musica Amatoriale');

            -- Level 2: musique-professionnelle
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('musique-professionnelle', 'musique-professionnelle', 2, l1_id, 'Musique professionnelle')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('musique-professionnelle', 'fr', 'Musique professionnelle');
            PERFORM insert_category_translations('musique-professionnelle', 'ar', 'موسيقى محترفة');
            PERFORM insert_category_translations('musique-professionnelle', 'en', 'Professional Music');
            PERFORM insert_category_translations('musique-professionnelle', 'de', 'Profi‑Musik');
            PERFORM insert_category_translations('musique-professionnelle', 'es', 'Música Profesional');
            PERFORM insert_category_translations('musique-professionnelle', 'it', 'Musica Professionale');
END $$;