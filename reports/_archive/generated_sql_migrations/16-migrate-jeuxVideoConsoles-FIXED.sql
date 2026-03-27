-- Migration: Jeux Vidéo & Consoles (Generated Recursive)
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

    -- Level 0: jeux-video-consoles
    INSERT INTO categories (id, slug, level, name)
    VALUES ('jeux-video-consoles', 'jeux-video-consoles', 0, 'Jeux Vidéo & Consoles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 0, name = EXCLUDED.name
    RETURNING id INTO root_id;
    PERFORM insert_category_translations('jeux-video-consoles', 'fr', 'Jeux Vidéo & Consoles');
    PERFORM insert_category_translations('jeux-video-consoles', 'ar', 'ألعاب فيديو ووحدات التحكم');
    PERFORM insert_category_translations('jeux-video-consoles', 'en', 'Video Games & Consoles');
    PERFORM insert_category_translations('jeux-video-consoles', 'de', 'Videospiele & Konsolen');
    PERFORM insert_category_translations('jeux-video-consoles', 'es', 'Videojuegos y Consolas');
    PERFORM insert_category_translations('jeux-video-consoles', 'it', 'Videogiochi & Console');

        -- Level 1: consoles-de-salon
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('consoles-de-salon', 'consoles-de-salon', 1, root_id, 'Consoles de salon')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('consoles-de-salon', 'fr', 'Consoles de salon');
        PERFORM insert_category_translations('consoles-de-salon', 'ar', 'أجهزة الألعاب المنزلية');
        PERFORM insert_category_translations('consoles-de-salon', 'en', 'Home Consoles');
        PERFORM insert_category_translations('consoles-de-salon', 'de', 'Stationäre Konsolen');
        PERFORM insert_category_translations('consoles-de-salon', 'es', 'Consolas de sobremesa');
        PERFORM insert_category_translations('consoles-de-salon', 'it', 'Console da salotto');

            -- Level 2: playstation
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('playstation', 'playstation', 2, l1_id, 'PlayStation')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('playstation', 'fr', 'PlayStation');
            PERFORM insert_category_translations('playstation', 'ar', 'بلايستيشن');
            PERFORM insert_category_translations('playstation', 'en', 'PlayStation');
            PERFORM insert_category_translations('playstation', 'de', 'PlayStation');
            PERFORM insert_category_translations('playstation', 'es', 'PlayStation');
            PERFORM insert_category_translations('playstation', 'it', 'PlayStation');

            -- Level 2: xbox
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('xbox', 'xbox', 2, l1_id, 'Xbox')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('xbox', 'fr', 'Xbox');
            PERFORM insert_category_translations('xbox', 'ar', 'إكس بوكس');
            PERFORM insert_category_translations('xbox', 'en', 'Xbox');
            PERFORM insert_category_translations('xbox', 'de', 'Xbox');
            PERFORM insert_category_translations('xbox', 'es', 'Xbox');
            PERFORM insert_category_translations('xbox', 'it', 'Xbox');

            -- Level 2: nintendo-switch
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('nintendo-switch', 'nintendo-switch', 2, l1_id, 'Nintendo Switch')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('nintendo-switch', 'fr', 'Nintendo Switch');
            PERFORM insert_category_translations('nintendo-switch', 'ar', 'نينتندو سويتش');
            PERFORM insert_category_translations('nintendo-switch', 'en', 'Nintendo Switch');
            PERFORM insert_category_translations('nintendo-switch', 'de', 'Nintendo Switch');
            PERFORM insert_category_translations('nintendo-switch', 'es', 'Nintendo Switch');
            PERFORM insert_category_translations('nintendo-switch', 'it', 'Nintendo Switch');

            -- Level 2: atari
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('atari', 'atari', 2, l1_id, 'Atari')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('atari', 'fr', 'Atari');
            PERFORM insert_category_translations('atari', 'ar', 'أتاري');
            PERFORM insert_category_translations('atari', 'en', 'Atari');
            PERFORM insert_category_translations('atari', 'de', 'Atari');
            PERFORM insert_category_translations('atari', 'es', 'Atari');
            PERFORM insert_category_translations('atari', 'it', 'Atari');

            -- Level 2: sega
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sega', 'sega', 2, l1_id, 'Sega')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sega', 'fr', 'Sega');
            PERFORM insert_category_translations('sega', 'ar', 'سيغا');
            PERFORM insert_category_translations('sega', 'en', 'Sega');
            PERFORM insert_category_translations('sega', 'de', 'Sega');
            PERFORM insert_category_translations('sega', 'es', 'Sega');
            PERFORM insert_category_translations('sega', 'it', 'Sega');

            -- Level 2: autres-consoles-retro
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('autres-consoles-retro', 'autres-consoles-retro', 2, l1_id, 'Autres consoles rétro')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('autres-consoles-retro', 'fr', 'Autres consoles rétro');
            PERFORM insert_category_translations('autres-consoles-retro', 'ar', 'أجهزة ريترو أخرى');
            PERFORM insert_category_translations('autres-consoles-retro', 'en', 'Other Retro Consoles');
            PERFORM insert_category_translations('autres-consoles-retro', 'de', 'Weitere Retro-Konsolen');
            PERFORM insert_category_translations('autres-consoles-retro', 'es', 'Otras consolas retro');
            PERFORM insert_category_translations('autres-consoles-retro', 'it', 'Altre console retrò');

            -- Level 2: accessoires-consoles-de-salon
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-consoles-de-salon', 'accessoires-consoles-de-salon', 2, l1_id, 'Accessoires consoles de salon')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('accessoires-consoles-de-salon', 'fr', 'Accessoires consoles de salon');
            PERFORM insert_category_translations('accessoires-consoles-de-salon', 'ar', 'ملحقات الأجهزة المنزلية');
            PERFORM insert_category_translations('accessoires-consoles-de-salon', 'en', 'Home Console Accessories');
            PERFORM insert_category_translations('accessoires-consoles-de-salon', 'de', 'Konsolen‑Zubehör (stationär)');
            PERFORM insert_category_translations('accessoires-consoles-de-salon', 'es', 'Accesorios de consola');
            PERFORM insert_category_translations('accessoires-consoles-de-salon', 'it', 'Accessori console');

                -- Level 3: manettes
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('manettes', 'manettes', 3, l2_id, 'Manettes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('manettes', 'fr', 'Manettes');
                PERFORM insert_category_translations('manettes', 'ar', 'وحدات تحكم');
                PERFORM insert_category_translations('manettes', 'en', 'Controllers');
                PERFORM insert_category_translations('manettes', 'de', 'Controller');
                PERFORM insert_category_translations('manettes', 'es', 'Mandos');
                PERFORM insert_category_translations('manettes', 'it', 'Controller');

                -- Level 3: cables-hdmi
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cables-hdmi', 'cables-hdmi', 3, l2_id, 'Câbles HDMI')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('cables-hdmi', 'fr', 'Câbles HDMI');
                PERFORM insert_category_translations('cables-hdmi', 'ar', 'كابلات HDMI');
                PERFORM insert_category_translations('cables-hdmi', 'en', 'HDMI Cables');
                PERFORM insert_category_translations('cables-hdmi', 'de', 'HDMI‑Kabel');
                PERFORM insert_category_translations('cables-hdmi', 'es', 'Cables HDMI');
                PERFORM insert_category_translations('cables-hdmi', 'it', 'Cavi HDMI');

                -- Level 3: alimentations
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('alimentations', 'alimentations', 3, l2_id, 'Alimentations')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('alimentations', 'fr', 'Alimentations');
                PERFORM insert_category_translations('alimentations', 'ar', 'مزودات طاقة');
                PERFORM insert_category_translations('alimentations', 'en', 'Power Supplies');
                PERFORM insert_category_translations('alimentations', 'de', 'Netzteile');
                PERFORM insert_category_translations('alimentations', 'es', 'Fuentes de alimentación');
                PERFORM insert_category_translations('alimentations', 'it', 'Alimentatori');

                -- Level 3: stations-de-charge
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('stations-de-charge', 'stations-de-charge', 3, l2_id, 'Stations de charge')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('stations-de-charge', 'fr', 'Stations de charge');
                PERFORM insert_category_translations('stations-de-charge', 'ar', 'قواعد شحن');
                PERFORM insert_category_translations('stations-de-charge', 'en', 'Charging Stations');
                PERFORM insert_category_translations('stations-de-charge', 'de', 'Ladestationen');
                PERFORM insert_category_translations('stations-de-charge', 'es', 'Estaciones de carga');
                PERFORM insert_category_translations('stations-de-charge', 'it', 'Stazioni di ricarica');

                -- Level 3: telecommandes-multimedia
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('telecommandes-multimedia', 'telecommandes-multimedia', 3, l2_id, 'Télécommandes multimédia')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('telecommandes-multimedia', 'fr', 'Télécommandes multimédia');
                PERFORM insert_category_translations('telecommandes-multimedia', 'ar', 'أجهزة تحكم وسائط');
                PERFORM insert_category_translations('telecommandes-multimedia', 'en', 'Media Remotes');
                PERFORM insert_category_translations('telecommandes-multimedia', 'de', 'Media‑Fernbedienungen');
                PERFORM insert_category_translations('telecommandes-multimedia', 'es', 'Mandos multimedia');
                PERFORM insert_category_translations('telecommandes-multimedia', 'it', 'Telecomandi multimediali');

        -- Level 1: consoles-portables
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('consoles-portables', 'consoles-portables', 1, root_id, 'Consoles portables')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('consoles-portables', 'fr', 'Consoles portables');
        PERFORM insert_category_translations('consoles-portables', 'ar', 'أجهزة محمولة');
        PERFORM insert_category_translations('consoles-portables', 'en', 'Portable Consoles');
        PERFORM insert_category_translations('consoles-portables', 'de', 'Tragbare Konsolen');
        PERFORM insert_category_translations('consoles-portables', 'es', 'Consolas portátiles');
        PERFORM insert_category_translations('consoles-portables', 'it', 'Console portatili');

            -- Level 2: nintendo-switch-lite
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('nintendo-switch-lite', 'nintendo-switch-lite', 2, l1_id, 'Nintendo Switch Lite')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('nintendo-switch-lite', 'fr', 'Nintendo Switch Lite');
            PERFORM insert_category_translations('nintendo-switch-lite', 'ar', 'نينتندو سويتش لايت');
            PERFORM insert_category_translations('nintendo-switch-lite', 'en', 'Nintendo Switch Lite');
            PERFORM insert_category_translations('nintendo-switch-lite', 'de', 'Nintendo Switch Lite');
            PERFORM insert_category_translations('nintendo-switch-lite', 'es', 'Nintendo Switch Lite');
            PERFORM insert_category_translations('nintendo-switch-lite', 'it', 'Nintendo Switch Lite');

            -- Level 2: nintendo-3ds-2ds
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('nintendo-3ds-2ds', 'nintendo-3ds-2ds', 2, l1_id, 'Nintendo 3DS/2DS')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('nintendo-3ds-2ds', 'fr', 'Nintendo 3DS/2DS');
            PERFORM insert_category_translations('nintendo-3ds-2ds', 'ar', 'نينتندو 3DS/2DS');
            PERFORM insert_category_translations('nintendo-3ds-2ds', 'en', 'Nintendo 3DS/2DS');
            PERFORM insert_category_translations('nintendo-3ds-2ds', 'de', 'Nintendo 3DS/2DS');
            PERFORM insert_category_translations('nintendo-3ds-2ds', 'es', 'Nintendo 3DS/2DS');
            PERFORM insert_category_translations('nintendo-3ds-2ds', 'it', 'Nintendo 3DS/2DS');

            -- Level 2: psp
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('psp', 'psp', 2, l1_id, 'PSP')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('psp', 'fr', 'PSP');
            PERFORM insert_category_translations('psp', 'ar', 'PSP');
            PERFORM insert_category_translations('psp', 'en', 'PSP');
            PERFORM insert_category_translations('psp', 'de', 'PSP');
            PERFORM insert_category_translations('psp', 'es', 'PSP');
            PERFORM insert_category_translations('psp', 'it', 'PSP');

            -- Level 2: ps-vita
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ps-vita', 'ps-vita', 2, l1_id, 'PS Vita')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ps-vita', 'fr', 'PS Vita');
            PERFORM insert_category_translations('ps-vita', 'ar', 'PS Vita');
            PERFORM insert_category_translations('ps-vita', 'en', 'PS Vita');
            PERFORM insert_category_translations('ps-vita', 'de', 'PS Vita');
            PERFORM insert_category_translations('ps-vita', 'es', 'PS Vita');
            PERFORM insert_category_translations('ps-vita', 'it', 'PS Vita');

            -- Level 2: consoles-retro-portables
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('consoles-retro-portables', 'consoles-retro-portables', 2, l1_id, 'Consoles rétro portables')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('consoles-retro-portables', 'fr', 'Consoles rétro portables');
            PERFORM insert_category_translations('consoles-retro-portables', 'ar', 'أجهزة ريترو محمولة');
            PERFORM insert_category_translations('consoles-retro-portables', 'en', 'Retro Handhelds');
            PERFORM insert_category_translations('consoles-retro-portables', 'de', 'Retro‑Handhelds');
            PERFORM insert_category_translations('consoles-retro-portables', 'es', 'Retro portátiles');
            PERFORM insert_category_translations('consoles-retro-portables', 'it', 'Portatili retrò');

            -- Level 2: consoles-android
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('consoles-android', 'consoles-android', 2, l1_id, 'Consoles Android')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('consoles-android', 'fr', 'Consoles Android');
            PERFORM insert_category_translations('consoles-android', 'ar', 'أجهزة أندرويد');
            PERFORM insert_category_translations('consoles-android', 'en', 'Android Consoles');
            PERFORM insert_category_translations('consoles-android', 'de', 'Android‑Konsolen');
            PERFORM insert_category_translations('consoles-android', 'es', 'Consolas Android');
            PERFORM insert_category_translations('consoles-android', 'it', 'Console Android');

            -- Level 2: accessoires-consoles-portables
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-consoles-portables', 'accessoires-consoles-portables', 2, l1_id, 'Accessoires consoles portables')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('accessoires-consoles-portables', 'fr', 'Accessoires consoles portables');
            PERFORM insert_category_translations('accessoires-consoles-portables', 'ar', 'ملحقات الأجهزة المحمولة');
            PERFORM insert_category_translations('accessoires-consoles-portables', 'en', 'Portable Console Accessories');
            PERFORM insert_category_translations('accessoires-consoles-portables', 'de', 'Zubehör für tragbare Konsolen');
            PERFORM insert_category_translations('accessoires-consoles-portables', 'es', 'Accesorios portátiles');
            PERFORM insert_category_translations('accessoires-consoles-portables', 'it', 'Accessori portatili');

                -- Level 3: housses
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('housses', 'housses', 3, l2_id, 'Housses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('housses', 'fr', 'Housses');
                PERFORM insert_category_translations('housses', 'ar', 'حافظات');
                PERFORM insert_category_translations('housses', 'en', 'Cases');
                PERFORM insert_category_translations('housses', 'de', 'Schutzhüllen');
                PERFORM insert_category_translations('housses', 'es', 'Fundas');
                PERFORM insert_category_translations('housses', 'it', 'Custodie');

                -- Level 3: batteries
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('batteries', 'batteries', 3, l2_id, 'Batteries')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('batteries', 'fr', 'Batteries');
                PERFORM insert_category_translations('batteries', 'ar', 'بطاريات');
                PERFORM insert_category_translations('batteries', 'en', 'Batteries');
                PERFORM insert_category_translations('batteries', 'de', 'Batterien');
                PERFORM insert_category_translations('batteries', 'es', 'Baterías');
                PERFORM insert_category_translations('batteries', 'it', 'Batterie');

                -- Level 3: protections-ecran
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('protections-ecran', 'protections-ecran', 3, l2_id, 'Protections d’écran')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('protections-ecran', 'fr', 'Protections d’écran');
                PERFORM insert_category_translations('protections-ecran', 'ar', 'واقيات شاشة');
                PERFORM insert_category_translations('protections-ecran', 'en', 'Screen Protectors');
                PERFORM insert_category_translations('protections-ecran', 'de', 'Displayschutz');
                PERFORM insert_category_translations('protections-ecran', 'es', 'Protectores de pantalla');
                PERFORM insert_category_translations('protections-ecran', 'it', 'Proteggi‑schermo');

        -- Level 1: jeux-playstation
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jeux-playstation', 'jeux-playstation', 1, root_id, 'Jeux PlayStation')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('jeux-playstation', 'fr', 'Jeux PlayStation');
        PERFORM insert_category_translations('jeux-playstation', 'ar', 'ألعاب بلايستيشن');
        PERFORM insert_category_translations('jeux-playstation', 'en', 'PlayStation Games');
        PERFORM insert_category_translations('jeux-playstation', 'de', 'PlayStation‑Spiele');
        PERFORM insert_category_translations('jeux-playstation', 'es', 'Juegos de PlayStation');
        PERFORM insert_category_translations('jeux-playstation', 'it', 'Giochi PlayStation');

            -- Level 2: ps5
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ps5', 'ps5', 2, l1_id, 'PS5')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ps5', 'fr', 'PS5');
            PERFORM insert_category_translations('ps5', 'ar', 'PS5');
            PERFORM insert_category_translations('ps5', 'en', 'PS5');
            PERFORM insert_category_translations('ps5', 'de', 'PS5');
            PERFORM insert_category_translations('ps5', 'es', 'PS5');
            PERFORM insert_category_translations('ps5', 'it', 'PS5');

            -- Level 2: ps4
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ps4', 'ps4', 2, l1_id, 'PS4')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ps4', 'fr', 'PS4');
            PERFORM insert_category_translations('ps4', 'ar', 'PS4');
            PERFORM insert_category_translations('ps4', 'en', 'PS4');
            PERFORM insert_category_translations('ps4', 'de', 'PS4');
            PERFORM insert_category_translations('ps4', 'es', 'PS4');
            PERFORM insert_category_translations('ps4', 'it', 'PS4');

            -- Level 2: ps3
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ps3', 'ps3', 2, l1_id, 'PS3')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ps3', 'fr', 'PS3');
            PERFORM insert_category_translations('ps3', 'ar', 'PS3');
            PERFORM insert_category_translations('ps3', 'en', 'PS3');
            PERFORM insert_category_translations('ps3', 'de', 'PS3');
            PERFORM insert_category_translations('ps3', 'es', 'PS3');
            PERFORM insert_category_translations('ps3', 'it', 'PS3');

            -- Level 2: ps2
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ps2', 'ps2', 2, l1_id, 'PS2')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ps2', 'fr', 'PS2');
            PERFORM insert_category_translations('ps2', 'ar', 'PS2');
            PERFORM insert_category_translations('ps2', 'en', 'PS2');
            PERFORM insert_category_translations('ps2', 'de', 'PS2');
            PERFORM insert_category_translations('ps2', 'es', 'PS2');
            PERFORM insert_category_translations('ps2', 'it', 'PS2');

            -- Level 2: ps1
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ps1', 'ps1', 2, l1_id, 'PS1')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ps1', 'fr', 'PS1');
            PERFORM insert_category_translations('ps1', 'ar', 'PS1');
            PERFORM insert_category_translations('ps1', 'en', 'PS1');
            PERFORM insert_category_translations('ps1', 'de', 'PS1');
            PERFORM insert_category_translations('ps1', 'es', 'PS1');
            PERFORM insert_category_translations('ps1', 'it', 'PS1');

            -- Level 2: editions-limitees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('editions-limitees', 'editions-limitees', 2, l1_id, 'Éditions limitées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('editions-limitees', 'fr', 'Éditions limitées');
            PERFORM insert_category_translations('editions-limitees', 'ar', 'إصدارات محدودة');
            PERFORM insert_category_translations('editions-limitees', 'en', 'Limited Editions');
            PERFORM insert_category_translations('editions-limitees', 'de', 'Limitierte Editionen');
            PERFORM insert_category_translations('editions-limitees', 'es', 'Ediciones limitadas');
            PERFORM insert_category_translations('editions-limitees', 'it', 'Edizioni limitate');

            -- Level 2: jeux-neufs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jeux-neufs', 'jeux-neufs', 2, l1_id, 'Jeux neufs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('jeux-neufs', 'fr', 'Jeux neufs');
            PERFORM insert_category_translations('jeux-neufs', 'ar', 'جديدة');
            PERFORM insert_category_translations('jeux-neufs', 'en', 'New Games');
            PERFORM insert_category_translations('jeux-neufs', 'de', 'Neu');
            PERFORM insert_category_translations('jeux-neufs', 'es', 'Nuevos');
            PERFORM insert_category_translations('jeux-neufs', 'it', 'Nuovi');

            -- Level 2: jeux-occasion
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jeux-occasion', 'jeux-occasion', 2, l1_id, 'Jeux d’occasion')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('jeux-occasion', 'fr', 'Jeux d’occasion');
            PERFORM insert_category_translations('jeux-occasion', 'ar', 'مستعملة');
            PERFORM insert_category_translations('jeux-occasion', 'en', 'Used Games');
            PERFORM insert_category_translations('jeux-occasion', 'de', 'Gebraucht');
            PERFORM insert_category_translations('jeux-occasion', 'es', 'Usados');
            PERFORM insert_category_translations('jeux-occasion', 'it', 'Usati');

        -- Level 1: jeux-xbox
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jeux-xbox', 'jeux-xbox', 1, root_id, 'Jeux Xbox')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('jeux-xbox', 'fr', 'Jeux Xbox');
        PERFORM insert_category_translations('jeux-xbox', 'ar', 'ألعاب إكس بوكس');
        PERFORM insert_category_translations('jeux-xbox', 'en', 'Xbox Games');
        PERFORM insert_category_translations('jeux-xbox', 'de', 'Xbox‑Spiele');
        PERFORM insert_category_translations('jeux-xbox', 'es', 'Juegos de Xbox');
        PERFORM insert_category_translations('jeux-xbox', 'it', 'Giochi Xbox');

            -- Level 2: xbox-series-xs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('xbox-series-xs', 'xbox-series-xs', 2, l1_id, 'Xbox Series X|S')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('xbox-series-xs', 'fr', 'Xbox Series X|S');
            PERFORM insert_category_translations('xbox-series-xs', 'ar', 'Xbox Series X|S');
            PERFORM insert_category_translations('xbox-series-xs', 'en', 'Xbox Series X|S');
            PERFORM insert_category_translations('xbox-series-xs', 'de', 'Xbox Series X|S');
            PERFORM insert_category_translations('xbox-series-xs', 'es', 'Xbox Series X|S');
            PERFORM insert_category_translations('xbox-series-xs', 'it', 'Xbox Series X|S');

            -- Level 2: xbox-one
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('xbox-one', 'xbox-one', 2, l1_id, 'Xbox One')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('xbox-one', 'fr', 'Xbox One');
            PERFORM insert_category_translations('xbox-one', 'ar', 'Xbox One');
            PERFORM insert_category_translations('xbox-one', 'en', 'Xbox One');
            PERFORM insert_category_translations('xbox-one', 'de', 'Xbox One');
            PERFORM insert_category_translations('xbox-one', 'es', 'Xbox One');
            PERFORM insert_category_translations('xbox-one', 'it', 'Xbox One');

            -- Level 2: xbox-360
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('xbox-360', 'xbox-360', 2, l1_id, 'Xbox 360')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('xbox-360', 'fr', 'Xbox 360');
            PERFORM insert_category_translations('xbox-360', 'ar', 'Xbox 360');
            PERFORM insert_category_translations('xbox-360', 'en', 'Xbox 360');
            PERFORM insert_category_translations('xbox-360', 'de', 'Xbox 360');
            PERFORM insert_category_translations('xbox-360', 'es', 'Xbox 360');
            PERFORM insert_category_translations('xbox-360', 'it', 'Xbox 360');

            -- Level 2: editions-collector
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('editions-collector', 'editions-collector', 2, l1_id, 'Éditions collector')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('editions-collector', 'fr', 'Éditions collector');
            PERFORM insert_category_translations('editions-collector', 'ar', 'إصدارات مجمّعين');
            PERFORM insert_category_translations('editions-collector', 'en', 'Collector Editions');
            PERFORM insert_category_translations('editions-collector', 'de', 'Sammler‑Editionen');
            PERFORM insert_category_translations('editions-collector', 'es', 'Ediciones de colección');
            PERFORM insert_category_translations('editions-collector', 'it', 'Edizioni da collezione');

            -- Level 2: jeux-neufs-xbox
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jeux-neufs-xbox', 'jeux-neufs-xbox', 2, l1_id, 'Jeux neufs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('jeux-neufs-xbox', 'fr', 'Jeux neufs');
            PERFORM insert_category_translations('jeux-neufs-xbox', 'ar', 'جديدة');
            PERFORM insert_category_translations('jeux-neufs-xbox', 'en', 'New Games');
            PERFORM insert_category_translations('jeux-neufs-xbox', 'de', 'Neu');
            PERFORM insert_category_translations('jeux-neufs-xbox', 'es', 'Nuevos');
            PERFORM insert_category_translations('jeux-neufs-xbox', 'it', 'Nuovi');

            -- Level 2: jeux-occasion-xbox
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jeux-occasion-xbox', 'jeux-occasion-xbox', 2, l1_id, 'Jeux d’occasion')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('jeux-occasion-xbox', 'fr', 'Jeux d’occasion');
            PERFORM insert_category_translations('jeux-occasion-xbox', 'ar', 'مستعملة');
            PERFORM insert_category_translations('jeux-occasion-xbox', 'en', 'Used Games');
            PERFORM insert_category_translations('jeux-occasion-xbox', 'de', 'Gebraucht');
            PERFORM insert_category_translations('jeux-occasion-xbox', 'es', 'Usados');
            PERFORM insert_category_translations('jeux-occasion-xbox', 'it', 'Usati');

        -- Level 1: jeux-nintendo
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jeux-nintendo', 'jeux-nintendo', 1, root_id, 'Jeux Nintendo')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('jeux-nintendo', 'fr', 'Jeux Nintendo');
        PERFORM insert_category_translations('jeux-nintendo', 'ar', 'ألعاب نينتندو');
        PERFORM insert_category_translations('jeux-nintendo', 'en', 'Nintendo Games');
        PERFORM insert_category_translations('jeux-nintendo', 'de', 'Nintendo‑Spiele');
        PERFORM insert_category_translations('jeux-nintendo', 'es', 'Juegos de Nintendo');
        PERFORM insert_category_translations('jeux-nintendo', 'it', 'Giochi Nintendo');

            -- Level 2: switch-jeux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('switch-jeux', 'switch-jeux', 2, l1_id, 'Switch')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('switch-jeux', 'fr', 'Switch');
            PERFORM insert_category_translations('switch-jeux', 'ar', 'سويتش');
            PERFORM insert_category_translations('switch-jeux', 'en', 'Switch');
            PERFORM insert_category_translations('switch-jeux', 'de', 'Switch');
            PERFORM insert_category_translations('switch-jeux', 'es', 'Switch');
            PERFORM insert_category_translations('switch-jeux', 'it', 'Switch');

            -- Level 2: wii-u
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('wii-u', 'wii-u', 2, l1_id, 'Wii U')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('wii-u', 'fr', 'Wii U');
            PERFORM insert_category_translations('wii-u', 'ar', 'وي يو');
            PERFORM insert_category_translations('wii-u', 'en', 'Wii U');
            PERFORM insert_category_translations('wii-u', 'de', 'Wii U');
            PERFORM insert_category_translations('wii-u', 'es', 'Wii U');
            PERFORM insert_category_translations('wii-u', 'it', 'Wii U');

            -- Level 2: wii
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('wii', 'wii', 2, l1_id, 'Wii')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('wii', 'fr', 'Wii');
            PERFORM insert_category_translations('wii', 'ar', 'وي');
            PERFORM insert_category_translations('wii', 'en', 'Wii');
            PERFORM insert_category_translations('wii', 'de', 'Wii');
            PERFORM insert_category_translations('wii', 'es', 'Wii');
            PERFORM insert_category_translations('wii', 'it', 'Wii');

            -- Level 2: gamecube
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gamecube', 'gamecube', 2, l1_id, 'GameCube')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gamecube', 'fr', 'GameCube');
            PERFORM insert_category_translations('gamecube', 'ar', 'جيم كيوب');
            PERFORM insert_category_translations('gamecube', 'en', 'GameCube');
            PERFORM insert_category_translations('gamecube', 'de', 'GameCube');
            PERFORM insert_category_translations('gamecube', 'es', 'GameCube');
            PERFORM insert_category_translations('gamecube', 'it', 'GameCube');

            -- Level 2: 3ds-2ds-jeux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('3ds-2ds-jeux', '3ds-2ds-jeux', 2, l1_id, '3DS/2DS')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('3ds-2ds-jeux', 'fr', '3DS/2DS');
            PERFORM insert_category_translations('3ds-2ds-jeux', 'ar', '3DS/2DS');
            PERFORM insert_category_translations('3ds-2ds-jeux', 'en', '3DS/2DS');
            PERFORM insert_category_translations('3ds-2ds-jeux', 'de', '3DS/2DS');
            PERFORM insert_category_translations('3ds-2ds-jeux', 'es', '3DS/2DS');
            PERFORM insert_category_translations('3ds-2ds-jeux', 'it', '3DS/2DS');

            -- Level 2: jeux-retro-nintendo
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jeux-retro-nintendo', 'jeux-retro-nintendo', 2, l1_id, 'Jeux rétro Nintendo')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('jeux-retro-nintendo', 'fr', 'Jeux rétro Nintendo');
            PERFORM insert_category_translations('jeux-retro-nintendo', 'ar', 'ألعاب ريترو نينتندو');
            PERFORM insert_category_translations('jeux-retro-nintendo', 'en', 'Retro Nintendo Games');
            PERFORM insert_category_translations('jeux-retro-nintendo', 'de', 'Retro‑Nintendo‑Spiele');
            PERFORM insert_category_translations('jeux-retro-nintendo', 'es', 'Retro Nintendo');
            PERFORM insert_category_translations('jeux-retro-nintendo', 'it', 'Nintendo retrò');

        -- Level 1: jeux-pc-mac
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jeux-pc-mac', 'jeux-pc-mac', 1, root_id, 'Jeux PC & Mac')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('jeux-pc-mac', 'fr', 'Jeux PC & Mac');
        PERFORM insert_category_translations('jeux-pc-mac', 'ar', 'ألعاب PC و Mac');
        PERFORM insert_category_translations('jeux-pc-mac', 'en', 'PC & Mac Games');
        PERFORM insert_category_translations('jeux-pc-mac', 'de', 'PC‑ & Mac‑Spiele');
        PERFORM insert_category_translations('jeux-pc-mac', 'es', 'Juegos para PC y Mac');
        PERFORM insert_category_translations('jeux-pc-mac', 'it', 'Giochi PC & Mac');

            -- Level 2: jeux-physiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jeux-physiques', 'jeux-physiques', 2, l1_id, 'Jeux physiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('jeux-physiques', 'fr', 'Jeux physiques');
            PERFORM insert_category_translations('jeux-physiques', 'ar', 'نسخ مادية');
            PERFORM insert_category_translations('jeux-physiques', 'en', 'Physical Games');
            PERFORM insert_category_translations('jeux-physiques', 'de', 'Physische Spiele');
            PERFORM insert_category_translations('jeux-physiques', 'es', 'Físicos');
            PERFORM insert_category_translations('jeux-physiques', 'it', 'Fisici');

            -- Level 2: jeux-steam
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jeux-steam', 'jeux-steam', 2, l1_id, 'Jeux Steam')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('jeux-steam', 'fr', 'Jeux Steam');
            PERFORM insert_category_translations('jeux-steam', 'ar', 'Steam');
            PERFORM insert_category_translations('jeux-steam', 'en', 'Steam Games');
            PERFORM insert_category_translations('jeux-steam', 'de', 'Steam‑Spiele');
            PERFORM insert_category_translations('jeux-steam', 'es', 'Steam');
            PERFORM insert_category_translations('jeux-steam', 'it', 'Steam');

            -- Level 2: jeux-epic-games
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jeux-epic-games', 'jeux-epic-games', 2, l1_id, 'Jeux Epic Games')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('jeux-epic-games', 'fr', 'Jeux Epic Games');
            PERFORM insert_category_translations('jeux-epic-games', 'ar', 'Epic Games');
            PERFORM insert_category_translations('jeux-epic-games', 'en', 'Epic Games');
            PERFORM insert_category_translations('jeux-epic-games', 'de', 'Epic Games');
            PERFORM insert_category_translations('jeux-epic-games', 'es', 'Epic Games');
            PERFORM insert_category_translations('jeux-epic-games', 'it', 'Epic Games');

            -- Level 2: jeux-blizzard
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jeux-blizzard', 'jeux-blizzard', 2, l1_id, 'Jeux Blizzard')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('jeux-blizzard', 'fr', 'Jeux Blizzard');
            PERFORM insert_category_translations('jeux-blizzard', 'ar', 'Blizzard');
            PERFORM insert_category_translations('jeux-blizzard', 'en', 'Blizzard Games');
            PERFORM insert_category_translations('jeux-blizzard', 'de', 'Blizzard‑Spiele');
            PERFORM insert_category_translations('jeux-blizzard', 'es', 'Blizzard');
            PERFORM insert_category_translations('jeux-blizzard', 'it', 'Blizzard');

            -- Level 2: comptes-gaming
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('comptes-gaming', 'comptes-gaming', 2, l1_id, 'Comptes gaming')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('comptes-gaming', 'fr', 'Comptes gaming');
            PERFORM insert_category_translations('comptes-gaming', 'ar', 'حسابات ألعاب');
            PERFORM insert_category_translations('comptes-gaming', 'en', 'Gaming Accounts');
            PERFORM insert_category_translations('comptes-gaming', 'de', 'Gaming‑Konten');
            PERFORM insert_category_translations('comptes-gaming', 'es', 'Cuentas de juego');
            PERFORM insert_category_translations('comptes-gaming', 'it', 'Account di gioco');

        -- Level 1: jeux-retro-collections
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jeux-retro-collections', 'jeux-retro-collections', 1, root_id, 'Jeux rétro & collections')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('jeux-retro-collections', 'fr', 'Jeux rétro & collections');
        PERFORM insert_category_translations('jeux-retro-collections', 'ar', 'ألعاب ريترو ومقتنيات');
        PERFORM insert_category_translations('jeux-retro-collections', 'en', 'Retro Games & Collections');
        PERFORM insert_category_translations('jeux-retro-collections', 'de', 'Retro‑Spiele & Sammlungen');
        PERFORM insert_category_translations('jeux-retro-collections', 'es', 'Retro y coleccionismo');
        PERFORM insert_category_translations('jeux-retro-collections', 'it', 'Retro & collezioni');

            -- Level 2: cartouches-nes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cartouches-nes', 'cartouches-nes', 2, l1_id, 'Cartouches NES')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cartouches-nes', 'fr', 'Cartouches NES');
            PERFORM insert_category_translations('cartouches-nes', 'ar', 'خرطوشات NES');
            PERFORM insert_category_translations('cartouches-nes', 'en', 'NES Cartridges');
            PERFORM insert_category_translations('cartouches-nes', 'de', 'NES‑Kassetten');
            PERFORM insert_category_translations('cartouches-nes', 'es', 'Cartuchos NES');
            PERFORM insert_category_translations('cartouches-nes', 'it', 'Cartucce NES');

            -- Level 2: cartouches-snes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cartouches-snes', 'cartouches-snes', 2, l1_id, 'Cartouches SNES')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cartouches-snes', 'fr', 'Cartouches SNES');
            PERFORM insert_category_translations('cartouches-snes', 'ar', 'خرطوشات SNES');
            PERFORM insert_category_translations('cartouches-snes', 'en', 'SNES Cartridges');
            PERFORM insert_category_translations('cartouches-snes', 'de', 'SNES‑Kassetten');
            PERFORM insert_category_translations('cartouches-snes', 'es', 'Cartuchos SNES');
            PERFORM insert_category_translations('cartouches-snes', 'it', 'Cartucce SNES');

            -- Level 2: sega-retro
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sega-retro', 'sega-retro', 2, l1_id, 'Sega')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sega-retro', 'fr', 'Sega');
            PERFORM insert_category_translations('sega-retro', 'ar', 'سيغا');
            PERFORM insert_category_translations('sega-retro', 'en', 'Sega');
            PERFORM insert_category_translations('sega-retro', 'de', 'Sega');
            PERFORM insert_category_translations('sega-retro', 'es', 'Sega');
            PERFORM insert_category_translations('sega-retro', 'it', 'Sega');

            -- Level 2: gameboy
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gameboy', 'gameboy', 2, l1_id, 'GameBoy')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gameboy', 'fr', 'GameBoy');
            PERFORM insert_category_translations('gameboy', 'ar', 'جيم بوي');
            PERFORM insert_category_translations('gameboy', 'en', 'GameBoy');
            PERFORM insert_category_translations('gameboy', 'de', 'GameBoy');
            PERFORM insert_category_translations('gameboy', 'es', 'GameBoy');
            PERFORM insert_category_translations('gameboy', 'it', 'GameBoy');

            -- Level 2: atari-retro
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('atari-retro', 'atari-retro', 2, l1_id, 'Atari')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('atari-retro', 'fr', 'Atari');
            PERFORM insert_category_translations('atari-retro', 'ar', 'أتاري');
            PERFORM insert_category_translations('atari-retro', 'en', 'Atari');
            PERFORM insert_category_translations('atari-retro', 'de', 'Atari');
            PERFORM insert_category_translations('atari-retro', 'es', 'Atari');
            PERFORM insert_category_translations('atari-retro', 'it', 'Atari');

            -- Level 2: neo-geo
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('neo-geo', 'neo-geo', 2, l1_id, 'Neo‑Geo')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('neo-geo', 'fr', 'Neo‑Geo');
            PERFORM insert_category_translations('neo-geo', 'ar', 'نيو جيو');
            PERFORM insert_category_translations('neo-geo', 'en', 'Neo‑Geo');
            PERFORM insert_category_translations('neo-geo', 'de', 'Neo‑Geo');
            PERFORM insert_category_translations('neo-geo', 'es', 'Neo‑Geo');
            PERFORM insert_category_translations('neo-geo', 'it', 'Neo‑Geo');

            -- Level 2: editions-rares
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('editions-rares', 'editions-rares', 2, l1_id, 'Éditions rares')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('editions-rares', 'fr', 'Éditions rares');
            PERFORM insert_category_translations('editions-rares', 'ar', 'إصدارات نادرة');
            PERFORM insert_category_translations('editions-rares', 'en', 'Rare Editions');
            PERFORM insert_category_translations('editions-rares', 'de', 'Seltene Editionen');
            PERFORM insert_category_translations('editions-rares', 'es', 'Ediciones raras');
            PERFORM insert_category_translations('editions-rares', 'it', 'Edizioni rare');

            -- Level 2: objets-collectors
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('objets-collectors', 'objets-collectors', 2, l1_id, 'Objets collectors')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('objets-collectors', 'fr', 'Objets collectors');
            PERFORM insert_category_translations('objets-collectors', 'ar', 'مقتنيات');
            PERFORM insert_category_translations('objets-collectors', 'en', 'Collectibles');
            PERFORM insert_category_translations('objets-collectors', 'de', 'Sammlerstücke');
            PERFORM insert_category_translations('objets-collectors', 'es', 'Coleccionables');
            PERFORM insert_category_translations('objets-collectors', 'it', 'Collezionabili');

                -- Level 3: figurines-collector
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('figurines-collector', 'figurines-collector', 3, l2_id, 'Figurines')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('figurines-collector', 'fr', 'Figurines');
                PERFORM insert_category_translations('figurines-collector', 'ar', 'مجسمات');
                PERFORM insert_category_translations('figurines-collector', 'en', 'Figurines');
                PERFORM insert_category_translations('figurines-collector', 'de', 'Figuren');
                PERFORM insert_category_translations('figurines-collector', 'es', 'Figuras');
                PERFORM insert_category_translations('figurines-collector', 'it', 'Figure');

                -- Level 3: ost
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ost', 'ost', 3, l2_id, 'OST')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('ost', 'fr', 'OST');
                PERFORM insert_category_translations('ost', 'ar', 'موسيقى تصويرية');
                PERFORM insert_category_translations('ost', 'en', 'OST');
                PERFORM insert_category_translations('ost', 'de', 'Soundtracks');
                PERFORM insert_category_translations('ost', 'es', 'Bandas sonoras');
                PERFORM insert_category_translations('ost', 'it', 'OST');

                -- Level 3: artbooks
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('artbooks', 'artbooks', 3, l2_id, 'Artbooks')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('artbooks', 'fr', 'Artbooks');
                PERFORM insert_category_translations('artbooks', 'ar', 'كتب فنية');
                PERFORM insert_category_translations('artbooks', 'en', 'Artbooks');
                PERFORM insert_category_translations('artbooks', 'de', 'Artbooks');
                PERFORM insert_category_translations('artbooks', 'es', 'Artbooks');
                PERFORM insert_category_translations('artbooks', 'it', 'Artbooks');

        -- Level 1: accessoires-gaming
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-gaming', 'accessoires-gaming', 1, root_id, 'Accessoires gaming')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('accessoires-gaming', 'fr', 'Accessoires gaming');
        PERFORM insert_category_translations('accessoires-gaming', 'ar', 'ملحقات الألعاب');
        PERFORM insert_category_translations('accessoires-gaming', 'en', 'Gaming Accessories');
        PERFORM insert_category_translations('accessoires-gaming', 'de', 'Gaming‑Zubehör');
        PERFORM insert_category_translations('accessoires-gaming', 'es', 'Accesorios gaming');
        PERFORM insert_category_translations('accessoires-gaming', 'it', 'Accessori gaming');

            -- Level 2: manettes-gaming
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('manettes-gaming', 'manettes-gaming', 2, l1_id, 'Manettes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('manettes-gaming', 'fr', 'Manettes');
            PERFORM insert_category_translations('manettes-gaming', 'ar', 'وحدات تحكم');
            PERFORM insert_category_translations('manettes-gaming', 'en', 'Controllers');
            PERFORM insert_category_translations('manettes-gaming', 'de', 'Controller');
            PERFORM insert_category_translations('manettes-gaming', 'es', 'Mandos');
            PERFORM insert_category_translations('manettes-gaming', 'it', 'Controller');

            -- Level 2: casques-gaming
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('casques-gaming', 'casques-gaming', 2, l1_id, 'Casques gaming')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('casques-gaming', 'fr', 'Casques gaming');
            PERFORM insert_category_translations('casques-gaming', 'ar', 'سماعات ألعاب');
            PERFORM insert_category_translations('casques-gaming', 'en', 'Gaming Headsets');
            PERFORM insert_category_translations('casques-gaming', 'de', 'Gaming‑Headsets');
            PERFORM insert_category_translations('casques-gaming', 'es', 'Auriculares gaming');
            PERFORM insert_category_translations('casques-gaming', 'it', 'Cuffie gaming');

            -- Level 2: tapis-rgb
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tapis-rgb', 'tapis-rgb', 2, l1_id, 'Tapis RGB')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tapis-rgb', 'fr', 'Tapis RGB');
            PERFORM insert_category_translations('tapis-rgb', 'ar', 'حصائر RGB');
            PERFORM insert_category_translations('tapis-rgb', 'en', 'RGB Mats');
            PERFORM insert_category_translations('tapis-rgb', 'de', 'RGB‑Matten');
            PERFORM insert_category_translations('tapis-rgb', 'es', 'Alfombrillas RGB');
            PERFORM insert_category_translations('tapis-rgb', 'it', 'Tappetini RGB');

            -- Level 2: claviers-gaming
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('claviers-gaming', 'claviers-gaming', 2, l1_id, 'Claviers gaming')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('claviers-gaming', 'fr', 'Claviers gaming');
            PERFORM insert_category_translations('claviers-gaming', 'ar', 'لوحات مفاتيح ألعاب');
            PERFORM insert_category_translations('claviers-gaming', 'en', 'Gaming Keyboards');
            PERFORM insert_category_translations('claviers-gaming', 'de', 'Gaming‑Tastaturen');
            PERFORM insert_category_translations('claviers-gaming', 'es', 'Teclados gaming');
            PERFORM insert_category_translations('claviers-gaming', 'it', 'Tastiere gaming');

            -- Level 2: souris-gaming
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('souris-gaming', 'souris-gaming', 2, l1_id, 'Souris gaming')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('souris-gaming', 'fr', 'Souris gaming');
            PERFORM insert_category_translations('souris-gaming', 'ar', 'فأرات ألعاب');
            PERFORM insert_category_translations('souris-gaming', 'en', 'Gaming Mice');
            PERFORM insert_category_translations('souris-gaming', 'de', 'Gaming‑Mäuse');
            PERFORM insert_category_translations('souris-gaming', 'es', 'Ratones gaming');
            PERFORM insert_category_translations('souris-gaming', 'it', 'Mouse gaming');

            -- Level 2: volants-pedaliers
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('volants-pedaliers', 'volants-pedaliers', 2, l1_id, 'Volants & pédaliers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('volants-pedaliers', 'fr', 'Volants & pédaliers');
            PERFORM insert_category_translations('volants-pedaliers', 'ar', 'مقود ودواسات سباق');
            PERFORM insert_category_translations('volants-pedaliers', 'en', 'Racing Wheels & Pedals');
            PERFORM insert_category_translations('volants-pedaliers', 'de', 'Lenkräder & Pedale');
            PERFORM insert_category_translations('volants-pedaliers', 'es', 'Volantes y pedales');
            PERFORM insert_category_translations('volants-pedaliers', 'it', 'Volanti e pedali');

            -- Level 2: joysticks
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('joysticks', 'joysticks', 2, l1_id, 'Joysticks')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('joysticks', 'fr', 'Joysticks');
            PERFORM insert_category_translations('joysticks', 'ar', 'عصا التحكم');
            PERFORM insert_category_translations('joysticks', 'en', 'Joysticks');
            PERFORM insert_category_translations('joysticks', 'de', 'Joysticks');
            PERFORM insert_category_translations('joysticks', 'es', 'Joysticks');
            PERFORM insert_category_translations('joysticks', 'it', 'Joystick');

            -- Level 2: flight-sticks
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('flight-sticks', 'flight-sticks', 2, l1_id, 'Flight sticks')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('flight-sticks', 'fr', 'Flight sticks');
            PERFORM insert_category_translations('flight-sticks', 'ar', 'عصي الطيران');
            PERFORM insert_category_translations('flight-sticks', 'en', 'Flight Sticks');
            PERFORM insert_category_translations('flight-sticks', 'de', 'Flight‑Sticks');
            PERFORM insert_category_translations('flight-sticks', 'es', 'Palancas de vuelo');
            PERFORM insert_category_translations('flight-sticks', 'it', 'Flight sticks');

        -- Level 1: equipements-vr-ar
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('equipements-vr-ar', 'equipements-vr-ar', 1, root_id, 'Équipements VR & AR')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('equipements-vr-ar', 'fr', 'Équipements VR & AR');
        PERFORM insert_category_translations('equipements-vr-ar', 'ar', 'أجهزة الواقع الافتراضي والمعزز');
        PERFORM insert_category_translations('equipements-vr-ar', 'en', 'VR & AR Equipment');
        PERFORM insert_category_translations('equipements-vr-ar', 'de', 'VR‑ & AR‑Ausrüstung');
        PERFORM insert_category_translations('equipements-vr-ar', 'es', 'Equipos VR y AR');
        PERFORM insert_category_translations('equipements-vr-ar', 'it', 'Dispositivi VR & AR');

            -- Level 2: ps-vr
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ps-vr', 'ps-vr', 2, l1_id, 'PS VR')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ps-vr', 'fr', 'PS VR');
            PERFORM insert_category_translations('ps-vr', 'ar', 'PS VR');
            PERFORM insert_category_translations('ps-vr', 'en', 'PS VR');
            PERFORM insert_category_translations('ps-vr', 'de', 'PS VR');
            PERFORM insert_category_translations('ps-vr', 'es', 'PS VR');
            PERFORM insert_category_translations('ps-vr', 'it', 'PS VR');

            -- Level 2: oculus-quest
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('oculus-quest', 'oculus-quest', 2, l1_id, 'Oculus Quest')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('oculus-quest', 'fr', 'Oculus Quest');
            PERFORM insert_category_translations('oculus-quest', 'ar', 'Oculus Quest');
            PERFORM insert_category_translations('oculus-quest', 'en', 'Oculus Quest');
            PERFORM insert_category_translations('oculus-quest', 'de', 'Oculus Quest');
            PERFORM insert_category_translations('oculus-quest', 'es', 'Oculus Quest');
            PERFORM insert_category_translations('oculus-quest', 'it', 'Oculus Quest');

            -- Level 2: htc-vive
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('htc-vive', 'htc-vive', 2, l1_id, 'HTC Vive')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('htc-vive', 'fr', 'HTC Vive');
            PERFORM insert_category_translations('htc-vive', 'ar', 'HTC Vive');
            PERFORM insert_category_translations('htc-vive', 'en', 'HTC Vive');
            PERFORM insert_category_translations('htc-vive', 'de', 'HTC Vive');
            PERFORM insert_category_translations('htc-vive', 'es', 'HTC Vive');
            PERFORM insert_category_translations('htc-vive', 'it', 'HTC Vive');

            -- Level 2: accessoires-vr
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-vr', 'accessoires-vr', 2, l1_id, 'Accessoires VR')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('accessoires-vr', 'fr', 'Accessoires VR');
            PERFORM insert_category_translations('accessoires-vr', 'ar', 'ملحقات VR');
            PERFORM insert_category_translations('accessoires-vr', 'en', 'VR Accessories');
            PERFORM insert_category_translations('accessoires-vr', 'de', 'VR‑Zubehör');
            PERFORM insert_category_translations('accessoires-vr', 'es', 'Accesorios VR');
            PERFORM insert_category_translations('accessoires-vr', 'it', 'Accessori VR');

                -- Level 3: capteurs
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('capteurs', 'capteurs', 3, l2_id, 'Capteurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('capteurs', 'fr', 'Capteurs');
                PERFORM insert_category_translations('capteurs', 'ar', 'حساسات');
                PERFORM insert_category_translations('capteurs', 'en', 'Sensors');
                PERFORM insert_category_translations('capteurs', 'de', 'Sensoren');
                PERFORM insert_category_translations('capteurs', 'es', 'Sensores');
                PERFORM insert_category_translations('capteurs', 'it', 'Sensori');

                -- Level 3: sangles
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sangles', 'sangles', 3, l2_id, 'Sangles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('sangles', 'fr', 'Sangles');
                PERFORM insert_category_translations('sangles', 'ar', 'أحزمة');
                PERFORM insert_category_translations('sangles', 'en', 'Straps');
                PERFORM insert_category_translations('sangles', 'de', 'Riemen');
                PERFORM insert_category_translations('sangles', 'es', 'Correas');
                PERFORM insert_category_translations('sangles', 'it', 'Cinghie');

                -- Level 3: adaptateurs
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('adaptateurs', 'adaptateurs', 3, l2_id, 'Adaptateurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('adaptateurs', 'fr', 'Adaptateurs');
                PERFORM insert_category_translations('adaptateurs', 'ar', 'محولات');
                PERFORM insert_category_translations('adaptateurs', 'en', 'Adapters');
                PERFORM insert_category_translations('adaptateurs', 'de', 'Adapter');
                PERFORM insert_category_translations('adaptateurs', 'es', 'Adaptadores');
                PERFORM insert_category_translations('adaptateurs', 'it', 'Adattatori');

        -- Level 1: composants-e-sport
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('composants-e-sport', 'composants-e-sport', 1, root_id, 'Composants & équipements e‑sport')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('composants-e-sport', 'fr', 'Composants & équipements e‑sport');
        PERFORM insert_category_translations('composants-e-sport', 'ar', 'مكوّنات ومعدات الرياضات الإلكترونية');
        PERFORM insert_category_translations('composants-e-sport', 'en', 'E‑sport Components & Equipment');
        PERFORM insert_category_translations('composants-e-sport', 'de', 'E‑Sport‑Komponenten & Geräte');
        PERFORM insert_category_translations('composants-e-sport', 'es', 'Componentes y equipos e‑sport');
        PERFORM insert_category_translations('composants-e-sport', 'it', 'Componenti & attrezzature e‑sport');

            -- Level 2: ecrans-gaming
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ecrans-gaming', 'ecrans-gaming', 2, l1_id, 'Écrans gaming')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ecrans-gaming', 'fr', 'Écrans gaming');
            PERFORM insert_category_translations('ecrans-gaming', 'ar', 'شاشات ألعاب');
            PERFORM insert_category_translations('ecrans-gaming', 'en', 'Gaming Monitors');
            PERFORM insert_category_translations('ecrans-gaming', 'de', 'Gaming‑Monitore');
            PERFORM insert_category_translations('ecrans-gaming', 'es', 'Monitores gaming');
            PERFORM insert_category_translations('ecrans-gaming', 'it', 'Monitor gaming');

            -- Level 2: chaises-gaming
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chaises-gaming', 'chaises-gaming', 2, l1_id, 'Chaises gaming')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chaises-gaming', 'fr', 'Chaises gaming');
            PERFORM insert_category_translations('chaises-gaming', 'ar', 'كراسي ألعاب');
            PERFORM insert_category_translations('chaises-gaming', 'en', 'Gaming Chairs');
            PERFORM insert_category_translations('chaises-gaming', 'de', 'Gaming‑Stühle');
            PERFORM insert_category_translations('chaises-gaming', 'es', 'Sillas gaming');
            PERFORM insert_category_translations('chaises-gaming', 'it', 'Sedie gaming');

            -- Level 2: bureaux-gamer
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bureaux-gamer', 'bureaux-gamer', 2, l1_id, 'Bureaux gamer')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bureaux-gamer', 'fr', 'Bureaux gamer');
            PERFORM insert_category_translations('bureaux-gamer', 'ar', 'مكاتب ألعاب');
            PERFORM insert_category_translations('bureaux-gamer', 'en', 'Gaming Desks');
            PERFORM insert_category_translations('bureaux-gamer', 'de', 'Gaming‑Tische');
            PERFORM insert_category_translations('bureaux-gamer', 'es', 'Escritorios gamer');
            PERFORM insert_category_translations('bureaux-gamer', 'it', 'Scrivanie gamer');

            -- Level 2: cartes-graphiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cartes-graphiques', 'cartes-graphiques', 2, l1_id, 'Cartes graphiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cartes-graphiques', 'fr', 'Cartes graphiques');
            PERFORM insert_category_translations('cartes-graphiques', 'ar', 'بطاقات رسومية');
            PERFORM insert_category_translations('cartes-graphiques', 'en', 'Graphics Cards');
            PERFORM insert_category_translations('cartes-graphiques', 'de', 'Grafikkarten');
            PERFORM insert_category_translations('cartes-graphiques', 'es', 'Tarjetas gráficas');
            PERFORM insert_category_translations('cartes-graphiques', 'it', 'Schede grafiche');

            -- Level 2: ram
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ram', 'ram', 2, l1_id, 'RAM')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ram', 'fr', 'RAM');
            PERFORM insert_category_translations('ram', 'ar', 'ذاكرة RAM');
            PERFORM insert_category_translations('ram', 'en', 'RAM');
            PERFORM insert_category_translations('ram', 'de', 'RAM');
            PERFORM insert_category_translations('ram', 'es', 'RAM');
            PERFORM insert_category_translations('ram', 'it', 'RAM');

            -- Level 2: ssd
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ssd', 'ssd', 2, l1_id, 'SSD')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ssd', 'fr', 'SSD');
            PERFORM insert_category_translations('ssd', 'ar', 'SSD');
            PERFORM insert_category_translations('ssd', 'en', 'SSD');
            PERFORM insert_category_translations('ssd', 'de', 'SSD');
            PERFORM insert_category_translations('ssd', 'es', 'SSD');
            PERFORM insert_category_translations('ssd', 'it', 'SSD');

            -- Level 2: refroidissement
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('refroidissement', 'refroidissement', 2, l1_id, 'Refroidissement')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('refroidissement', 'fr', 'Refroidissement');
            PERFORM insert_category_translations('refroidissement', 'ar', 'تبريد');
            PERFORM insert_category_translations('refroidissement', 'en', 'Cooling');
            PERFORM insert_category_translations('refroidissement', 'de', 'Kühlung');
            PERFORM insert_category_translations('refroidissement', 'es', 'Refrigeración');
            PERFORM insert_category_translations('refroidissement', 'it', 'Raffreddamento');

        -- Level 1: cartes-abonnements
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cartes-abonnements', 'cartes-abonnements', 1, root_id, 'Cartes & abonnements')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('cartes-abonnements', 'fr', 'Cartes & abonnements');
        PERFORM insert_category_translations('cartes-abonnements', 'ar', 'بطاقات واشتراكات');
        PERFORM insert_category_translations('cartes-abonnements', 'en', 'Cards & Subscriptions');
        PERFORM insert_category_translations('cartes-abonnements', 'de', 'Karten & Abonnements');
        PERFORM insert_category_translations('cartes-abonnements', 'es', 'Tarjetas y suscripciones');
        PERFORM insert_category_translations('cartes-abonnements', 'it', 'Carte & abbonamenti');

            -- Level 2: ps-plus
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ps-plus', 'ps-plus', 2, l1_id, 'PS Plus')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ps-plus', 'fr', 'PS Plus');
            PERFORM insert_category_translations('ps-plus', 'ar', 'PS Plus');
            PERFORM insert_category_translations('ps-plus', 'en', 'PS Plus');
            PERFORM insert_category_translations('ps-plus', 'de', 'PS Plus');
            PERFORM insert_category_translations('ps-plus', 'es', 'PS Plus');
            PERFORM insert_category_translations('ps-plus', 'it', 'PS Plus');

            -- Level 2: xbox-game-pass
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('xbox-game-pass', 'xbox-game-pass', 2, l1_id, 'Xbox Game Pass')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('xbox-game-pass', 'fr', 'Xbox Game Pass');
            PERFORM insert_category_translations('xbox-game-pass', 'ar', 'Xbox Game Pass');
            PERFORM insert_category_translations('xbox-game-pass', 'en', 'Xbox Game Pass');
            PERFORM insert_category_translations('xbox-game-pass', 'de', 'Xbox Game Pass');
            PERFORM insert_category_translations('xbox-game-pass', 'es', 'Xbox Game Pass');
            PERFORM insert_category_translations('xbox-game-pass', 'it', 'Xbox Game Pass');

            -- Level 2: nintendo-online
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('nintendo-online', 'nintendo-online', 2, l1_id, 'Nintendo Online')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('nintendo-online', 'fr', 'Nintendo Online');
            PERFORM insert_category_translations('nintendo-online', 'ar', 'Nintendo Online');
            PERFORM insert_category_translations('nintendo-online', 'en', 'Nintendo Online');
            PERFORM insert_category_translations('nintendo-online', 'de', 'Nintendo Online');
            PERFORM insert_category_translations('nintendo-online', 'es', 'Nintendo Online');
            PERFORM insert_category_translations('nintendo-online', 'it', 'Nintendo Online');

            -- Level 2: cartes-prepayees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cartes-prepayees', 'cartes-prepayees', 2, l1_id, 'Cartes prépayées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cartes-prepayees', 'fr', 'Cartes prépayées');
            PERFORM insert_category_translations('cartes-prepayees', 'ar', 'بطاقات مسبقة الدفع');
            PERFORM insert_category_translations('cartes-prepayees', 'en', 'Prepaid Cards');
            PERFORM insert_category_translations('cartes-prepayees', 'de', 'Prepaid‑Karten');
            PERFORM insert_category_translations('cartes-prepayees', 'es', 'Tarjetas prepago');
            PERFORM insert_category_translations('cartes-prepayees', 'it', 'Carte prepagate');

                -- Level 3: playstation-store
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('playstation-store', 'playstation-store', 3, l2_id, 'PlayStation Store')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('playstation-store', 'fr', 'PlayStation Store');
                PERFORM insert_category_translations('playstation-store', 'ar', 'PlayStation Store');
                PERFORM insert_category_translations('playstation-store', 'en', 'PlayStation Store');
                PERFORM insert_category_translations('playstation-store', 'de', 'PlayStation Store');
                PERFORM insert_category_translations('playstation-store', 'es', 'PlayStation Store');
                PERFORM insert_category_translations('playstation-store', 'it', 'PlayStation Store');

                -- Level 3: xbox-live
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('xbox-live', 'xbox-live', 3, l2_id, 'Xbox Live')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('xbox-live', 'fr', 'Xbox Live');
                PERFORM insert_category_translations('xbox-live', 'ar', 'Xbox Live');
                PERFORM insert_category_translations('xbox-live', 'en', 'Xbox Live');
                PERFORM insert_category_translations('xbox-live', 'de', 'Xbox Live');
                PERFORM insert_category_translations('xbox-live', 'es', 'Xbox Live');
                PERFORM insert_category_translations('xbox-live', 'it', 'Xbox Live');

                -- Level 3: steam
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('steam', 'steam', 3, l2_id, 'Steam')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('steam', 'fr', 'Steam');
                PERFORM insert_category_translations('steam', 'ar', 'Steam');
                PERFORM insert_category_translations('steam', 'en', 'Steam');
                PERFORM insert_category_translations('steam', 'de', 'Steam');
                PERFORM insert_category_translations('steam', 'es', 'Steam');
                PERFORM insert_category_translations('steam', 'it', 'Steam');

        -- Level 1: streaming-capture-video
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('streaming-capture-video', 'streaming-capture-video', 1, root_id, 'Streaming & capture vidéo')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('streaming-capture-video', 'fr', 'Streaming & capture vidéo');
        PERFORM insert_category_translations('streaming-capture-video', 'ar', 'البث والتقاط الفيديو');
        PERFORM insert_category_translations('streaming-capture-video', 'en', 'Streaming & Capture');
        PERFORM insert_category_translations('streaming-capture-video', 'de', 'Streaming & Video‑Capture');
        PERFORM insert_category_translations('streaming-capture-video', 'es', 'Streaming y captura de vídeo');
        PERFORM insert_category_translations('streaming-capture-video', 'it', 'Streaming & acquisizione video');

            -- Level 2: cartes-acquisition
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cartes-acquisition', 'cartes-acquisition', 2, l1_id, 'Cartes d’acquisition')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cartes-acquisition', 'fr', 'Cartes d’acquisition');
            PERFORM insert_category_translations('cartes-acquisition', 'ar', 'بطاقات التقاط');
            PERFORM insert_category_translations('cartes-acquisition', 'en', 'Capture Cards');
            PERFORM insert_category_translations('cartes-acquisition', 'de', 'Capture‑Karten');
            PERFORM insert_category_translations('cartes-acquisition', 'es', 'Tarjetas de captura');
            PERFORM insert_category_translations('cartes-acquisition', 'it', 'Schede di acquisizione');

                -- Level 3: elgato
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('elgato', 'elgato', 3, l2_id, 'Elgato')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('elgato', 'fr', 'Elgato');
                PERFORM insert_category_translations('elgato', 'ar', 'Elgato');
                PERFORM insert_category_translations('elgato', 'en', 'Elgato');
                PERFORM insert_category_translations('elgato', 'de', 'Elgato');
                PERFORM insert_category_translations('elgato', 'es', 'Elgato');
                PERFORM insert_category_translations('elgato', 'it', 'Elgato');

                -- Level 3: avermedia
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('avermedia', 'avermedia', 3, l2_id, 'AverMedia')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('avermedia', 'fr', 'AverMedia');
                PERFORM insert_category_translations('avermedia', 'ar', 'AverMedia');
                PERFORM insert_category_translations('avermedia', 'en', 'AverMedia');
                PERFORM insert_category_translations('avermedia', 'de', 'AverMedia');
                PERFORM insert_category_translations('avermedia', 'es', 'AverMedia');
                PERFORM insert_category_translations('avermedia', 'it', 'AverMedia');

            -- Level 2: cameras-streaming
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cameras-streaming', 'cameras-streaming', 2, l1_id, 'Caméras streaming')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cameras-streaming', 'fr', 'Caméras streaming');
            PERFORM insert_category_translations('cameras-streaming', 'ar', 'كاميرات البث');
            PERFORM insert_category_translations('cameras-streaming', 'en', 'Streaming Cameras');
            PERFORM insert_category_translations('cameras-streaming', 'de', 'Streaming‑Kameras');
            PERFORM insert_category_translations('cameras-streaming', 'es', 'Cámaras de streaming');
            PERFORM insert_category_translations('cameras-streaming', 'it', 'Telecamere streaming');

            -- Level 2: micros-professionnels
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('micros-professionnels', 'micros-professionnels', 2, l1_id, 'Micros professionnels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('micros-professionnels', 'fr', 'Micros professionnels');
            PERFORM insert_category_translations('micros-professionnels', 'ar', 'ميكروفونات احترافية');
            PERFORM insert_category_translations('micros-professionnels', 'en', 'Professional Microphones');
            PERFORM insert_category_translations('micros-professionnels', 'de', 'Profi‑Mikrofone');
            PERFORM insert_category_translations('micros-professionnels', 'es', 'Micrófonos profesionales');
            PERFORM insert_category_translations('micros-professionnels', 'it', 'Microfoni professionali');

            -- Level 2: eclairage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('eclairage', 'eclairage', 2, l1_id, 'Éclairage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('eclairage', 'fr', 'Éclairage');
            PERFORM insert_category_translations('eclairage', 'ar', 'إضاءة');
            PERFORM insert_category_translations('eclairage', 'en', 'Lighting');
            PERFORM insert_category_translations('eclairage', 'de', 'Beleuchtung');
            PERFORM insert_category_translations('eclairage', 'es', 'Iluminación');
            PERFORM insert_category_translations('eclairage', 'it', 'Illuminazione');

            -- Level 2: fonds-verts
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fonds-verts', 'fonds-verts', 2, l1_id, 'Fonds verts')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fonds-verts', 'fr', 'Fonds verts');
            PERFORM insert_category_translations('fonds-verts', 'ar', 'شاشات خضراء');
            PERFORM insert_category_translations('fonds-verts', 'en', 'Green Screens');
            PERFORM insert_category_translations('fonds-verts', 'de', 'Greenscreens');
            PERFORM insert_category_translations('fonds-verts', 'es', 'Fondos verdes');
            PERFORM insert_category_translations('fonds-verts', 'it', 'Green screen');

        -- Level 1: merchandising-gaming
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('merchandising-gaming', 'merchandising-gaming', 1, root_id, 'Merchandising gaming')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('merchandising-gaming', 'fr', 'Merchandising gaming');
        PERFORM insert_category_translations('merchandising-gaming', 'ar', 'منتجات وأزياء الألعاب');
        PERFORM insert_category_translations('merchandising-gaming', 'en', 'Gaming Merchandising');
        PERFORM insert_category_translations('merchandising-gaming', 'de', 'Gaming‑Merchandising');
        PERFORM insert_category_translations('merchandising-gaming', 'es', 'Merchandising gaming');
        PERFORM insert_category_translations('merchandising-gaming', 'it', 'Merchandising gaming');

            -- Level 2: figurines
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('figurines', 'figurines', 2, l1_id, 'Figurines')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('figurines', 'fr', 'Figurines');
            PERFORM insert_category_translations('figurines', 'ar', 'مجسمات');
            PERFORM insert_category_translations('figurines', 'en', 'Figurines');
            PERFORM insert_category_translations('figurines', 'de', 'Figuren');
            PERFORM insert_category_translations('figurines', 'es', 'Figuras');
            PERFORM insert_category_translations('figurines', 'it', 'Figure');

            -- Level 2: posters
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('posters', 'posters', 2, l1_id, 'Posters')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('posters', 'fr', 'Posters');
            PERFORM insert_category_translations('posters', 'ar', 'ملصقات');
            PERFORM insert_category_translations('posters', 'en', 'Posters');
            PERFORM insert_category_translations('posters', 'de', 'Poster');
            PERFORM insert_category_translations('posters', 'es', 'Pósters');
            PERFORM insert_category_translations('posters', 'it', 'Poster');

            -- Level 2: vetements-gaming
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vetements-gaming', 'vetements-gaming', 2, l1_id, 'Vêtements gaming')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('vetements-gaming', 'fr', 'Vêtements gaming');
            PERFORM insert_category_translations('vetements-gaming', 'ar', 'ملابس الألعاب');
            PERFORM insert_category_translations('vetements-gaming', 'en', 'Gaming Apparel');
            PERFORM insert_category_translations('vetements-gaming', 'de', 'Gaming‑Bekleidung');
            PERFORM insert_category_translations('vetements-gaming', 'es', 'Ropa gaming');
            PERFORM insert_category_translations('vetements-gaming', 'it', 'Abbigliamento gaming');

            -- Level 2: accessoires-cosplay
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-cosplay', 'accessoires-cosplay', 2, l1_id, 'Accessoires cosplay')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('accessoires-cosplay', 'fr', 'Accessoires cosplay');
            PERFORM insert_category_translations('accessoires-cosplay', 'ar', 'إكسسوارات تقمص شخصية');
            PERFORM insert_category_translations('accessoires-cosplay', 'en', 'Cosplay Accessories');
            PERFORM insert_category_translations('accessoires-cosplay', 'de', 'Cosplay‑Zubehör');
            PERFORM insert_category_translations('accessoires-cosplay', 'es', 'Accesorios cosplay');
            PERFORM insert_category_translations('accessoires-cosplay', 'it', 'Accessori cosplay');

            -- Level 2: collections-officielles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('collections-officielles', 'collections-officielles', 2, l1_id, 'Collections officielles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('collections-officielles', 'fr', 'Collections officielles');
            PERFORM insert_category_translations('collections-officielles', 'ar', 'مجموعات رسمية');
            PERFORM insert_category_translations('collections-officielles', 'en', 'Official Collections');
            PERFORM insert_category_translations('collections-officielles', 'de', 'Offizielle Kollektionen');
            PERFORM insert_category_translations('collections-officielles', 'es', 'Colecciones oficiales');
            PERFORM insert_category_translations('collections-officielles', 'it', 'Collezioni ufficiali');
END $$;