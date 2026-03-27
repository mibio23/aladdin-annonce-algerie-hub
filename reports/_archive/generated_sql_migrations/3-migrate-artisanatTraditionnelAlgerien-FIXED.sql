-- Migration: Artisanat Traditionnel Algérien (Generated Recursive)
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

    -- Level 0: artisanat-traditionnel-algerien
    INSERT INTO categories (id, slug, level, name)
    VALUES ('artisanat-traditionnel-algerien', 'artisanat-traditionnel-algerien', 0, 'Artisanat Traditionnel Algérien')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 0, name = EXCLUDED.name
    RETURNING id INTO root_id;
    PERFORM insert_category_translations('artisanat-traditionnel-algerien', 'fr', 'Artisanat Traditionnel Algérien');
    PERFORM insert_category_translations('artisanat-traditionnel-algerien', 'ar', 'الحرف التقليدية الجزائرية');
    PERFORM insert_category_translations('artisanat-traditionnel-algerien', 'en', 'Algerian Traditional Crafts');
    PERFORM insert_category_translations('artisanat-traditionnel-algerien', 'de', 'Algerisches traditionelles Handwerk');
    PERFORM insert_category_translations('artisanat-traditionnel-algerien', 'es', 'Artesanía Tradicional Argelina');
    PERFORM insert_category_translations('artisanat-traditionnel-algerien', 'it', 'Artigianato Tradizionale Algerino');

        -- Level 1: poterie-ceramique
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('poterie-ceramique', 'poterie-ceramique', 1, root_id, 'Poterie & céramique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('poterie-ceramique', 'fr', 'Poterie & céramique');
        PERFORM insert_category_translations('poterie-ceramique', 'ar', 'فخار وخزف');
        PERFORM insert_category_translations('poterie-ceramique', 'en', 'Pottery & ceramics');
        PERFORM insert_category_translations('poterie-ceramique', 'de', 'Töpferei & Keramik');
        PERFORM insert_category_translations('poterie-ceramique', 'es', 'Cerámica y alfarería');
        PERFORM insert_category_translations('poterie-ceramique', 'it', 'Ceramica e terracotta');

            -- Level 2: poterie-traditionnelle
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('poterie-traditionnelle', 'poterie-traditionnelle', 2, l1_id, 'poterie traditionnelle')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('poterie-traditionnelle', 'fr', 'poterie traditionnelle');
            PERFORM insert_category_translations('poterie-traditionnelle', 'ar', 'فخار تقليدي');
            PERFORM insert_category_translations('poterie-traditionnelle', 'en', 'traditional pottery');
            PERFORM insert_category_translations('poterie-traditionnelle', 'de', 'traditionelle Töpferei');
            PERFORM insert_category_translations('poterie-traditionnelle', 'es', 'alfarería tradicional');
            PERFORM insert_category_translations('poterie-traditionnelle', 'it', 'terracotta tradizionale');

            -- Level 2: poterie-kabyle
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('poterie-kabyle', 'poterie-kabyle', 2, l1_id, 'poterie kabyle')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('poterie-kabyle', 'fr', 'poterie kabyle');
            PERFORM insert_category_translations('poterie-kabyle', 'ar', 'فخار قبائلي');
            PERFORM insert_category_translations('poterie-kabyle', 'en', 'Kabyle pottery');
            PERFORM insert_category_translations('poterie-kabyle', 'de', 'kabylische Töpferei');
            PERFORM insert_category_translations('poterie-kabyle', 'es', 'alfarería cabila');
            PERFORM insert_category_translations('poterie-kabyle', 'it', 'terracotta kabyle');

            -- Level 2: poterie-chaouie
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('poterie-chaouie', 'poterie-chaouie', 2, l1_id, 'poterie chaouie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('poterie-chaouie', 'fr', 'poterie chaouie');
            PERFORM insert_category_translations('poterie-chaouie', 'ar', 'فخار شاوي');
            PERFORM insert_category_translations('poterie-chaouie', 'en', 'Chaoui pottery');
            PERFORM insert_category_translations('poterie-chaouie', 'de', 'chaouische Töpferei');
            PERFORM insert_category_translations('poterie-chaouie', 'es', 'alfarería chaoui');
            PERFORM insert_category_translations('poterie-chaouie', 'it', 'terracotta chaoui');

            -- Level 2: ceramiques-decoratives
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ceramiques-decoratives', 'ceramiques-decoratives', 2, l1_id, 'céramiques décoratives')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ceramiques-decoratives', 'fr', 'céramiques décoratives');
            PERFORM insert_category_translations('ceramiques-decoratives', 'ar', 'خزف زخرفي');
            PERFORM insert_category_translations('ceramiques-decoratives', 'en', 'decorative ceramics');
            PERFORM insert_category_translations('ceramiques-decoratives', 'de', 'dekorative Keramik');
            PERFORM insert_category_translations('ceramiques-decoratives', 'es', 'cerámicas decorativas');
            PERFORM insert_category_translations('ceramiques-decoratives', 'it', 'ceramiche decorative');

        -- Level 1: artisanats-regionaux
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('artisanats-regionaux', 'artisanats-regionaux', 1, root_id, 'Artisanats régionaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('artisanats-regionaux', 'fr', 'Artisanats régionaux');
        PERFORM insert_category_translations('artisanats-regionaux', 'ar', 'حرف محلية');
        PERFORM insert_category_translations('artisanats-regionaux', 'en', 'Regional crafts');
        PERFORM insert_category_translations('artisanats-regionaux', 'de', 'Regionale Handwerke');
        PERFORM insert_category_translations('artisanats-regionaux', 'es', 'Artesanías regionales');
        PERFORM insert_category_translations('artisanats-regionaux', 'it', 'Arti regionali');

            -- Level 2: mozabite
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mozabite', 'mozabite', 2, l1_id, 'artisanat mozabite')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mozabite', 'fr', 'artisanat mozabite');
            PERFORM insert_category_translations('mozabite', 'ar', 'حرف ميزابية');
            PERFORM insert_category_translations('mozabite', 'en', 'Mozabite craft');
            PERFORM insert_category_translations('mozabite', 'de', 'Mozabiten-Handwerk');
            PERFORM insert_category_translations('mozabite', 'es', 'artesanía mozabita');
            PERFORM insert_category_translations('mozabite', 'it', 'artigianato mozabita');

            -- Level 2: touareg
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('touareg', 'touareg', 2, l1_id, 'artisanat touareg')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('touareg', 'fr', 'artisanat touareg');
            PERFORM insert_category_translations('touareg', 'ar', 'حرف طوارقية');
            PERFORM insert_category_translations('touareg', 'en', 'Tuareg craft');
            PERFORM insert_category_translations('touareg', 'de', 'Tuareg-Handwerk');
            PERFORM insert_category_translations('touareg', 'es', 'artesanía tuareg');
            PERFORM insert_category_translations('touareg', 'it', 'artigianato tuareg');

            -- Level 2: berbere
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('berbere', 'berbere', 2, l1_id, 'artisanat berbère')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('berbere', 'fr', 'artisanat berbère');
            PERFORM insert_category_translations('berbere', 'ar', 'حرف أمازيغية');
            PERFORM insert_category_translations('berbere', 'en', 'Berber craft');
            PERFORM insert_category_translations('berbere', 'de', 'Berber-Handwerk');
            PERFORM insert_category_translations('berbere', 'es', 'artesanía bereber');
            PERFORM insert_category_translations('berbere', 'it', 'artigianato berbero');

        -- Level 1: tissage-tapis
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tissage-tapis', 'tissage-tapis', 1, root_id, 'Tissage & tapis')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('tissage-tapis', 'fr', 'Tissage & tapis');
        PERFORM insert_category_translations('tissage-tapis', 'ar', 'نسج وسجاد');
        PERFORM insert_category_translations('tissage-tapis', 'en', 'Weaving & rugs');
        PERFORM insert_category_translations('tissage-tapis', 'de', 'Weberei & Teppiche');
        PERFORM insert_category_translations('tissage-tapis', 'es', 'Tejido y alfombras');
        PERFORM insert_category_translations('tissage-tapis', 'it', 'Tessitura e tappeti');

            -- Level 2: tissage-traditionnel
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tissage-traditionnel', 'tissage-traditionnel', 2, l1_id, 'tissage traditionnel')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tissage-traditionnel', 'fr', 'tissage traditionnel');
            PERFORM insert_category_translations('tissage-traditionnel', 'ar', 'نسج تقليدي');
            PERFORM insert_category_translations('tissage-traditionnel', 'en', 'traditional weaving');
            PERFORM insert_category_translations('tissage-traditionnel', 'de', 'traditionelle Weberei');
            PERFORM insert_category_translations('tissage-traditionnel', 'es', 'tejido tradicional');
            PERFORM insert_category_translations('tissage-traditionnel', 'it', 'tessitura tradizionale');

            -- Level 2: tissage-kabyle
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tissage-kabyle', 'tissage-kabyle', 2, l1_id, 'tissage kabyle')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tissage-kabyle', 'fr', 'tissage kabyle');
            PERFORM insert_category_translations('tissage-kabyle', 'ar', 'نسج قبائلي');
            PERFORM insert_category_translations('tissage-kabyle', 'en', 'Kabyle weaving');
            PERFORM insert_category_translations('tissage-kabyle', 'de', 'kabylische Weberei');
            PERFORM insert_category_translations('tissage-kabyle', 'es', 'tejido cabila');
            PERFORM insert_category_translations('tissage-kabyle', 'it', 'tessitura kabyle');

            -- Level 2: tapis-kilims
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tapis-kilims', 'tapis-kilims', 2, l1_id, 'tapis & kilims')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tapis-kilims', 'fr', 'tapis & kilims');
            PERFORM insert_category_translations('tapis-kilims', 'ar', 'سجاد وكليم');
            PERFORM insert_category_translations('tapis-kilims', 'en', 'rugs & kilims');
            PERFORM insert_category_translations('tapis-kilims', 'de', 'Teppiche & Kilims');
            PERFORM insert_category_translations('tapis-kilims', 'es', 'alfombras y kilims');
            PERFORM insert_category_translations('tapis-kilims', 'it', 'tappeti e kilim');

            -- Level 2: tapis-chaouis
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tapis-chaouis', 'tapis-chaouis', 2, l1_id, 'tapis chaouis')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tapis-chaouis', 'fr', 'tapis chaouis');
            PERFORM insert_category_translations('tapis-chaouis', 'ar', 'سجاد شاوي');
            PERFORM insert_category_translations('tapis-chaouis', 'en', 'Chaoui rugs');
            PERFORM insert_category_translations('tapis-chaouis', 'de', 'Chaoui-Teppiche');
            PERFORM insert_category_translations('tapis-chaouis', 'es', 'alfombras chaoui');
            PERFORM insert_category_translations('tapis-chaouis', 'it', 'tappeti chaoui');

            -- Level 2: tapis-mozabites
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tapis-mozabites', 'tapis-mozabites', 2, l1_id, 'tapis mozabites')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tapis-mozabites', 'fr', 'tapis mozabites');
            PERFORM insert_category_translations('tapis-mozabites', 'ar', 'سجاد ميزابي');
            PERFORM insert_category_translations('tapis-mozabites', 'en', 'Mozabite rugs');
            PERFORM insert_category_translations('tapis-mozabites', 'de', 'Mozabiten-Teppiche');
            PERFORM insert_category_translations('tapis-mozabites', 'es', 'alfombras mozabitas');
            PERFORM insert_category_translations('tapis-mozabites', 'it', 'tappeti mozabiti');

            -- Level 2: tissages-sahariens
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tissages-sahariens', 'tissages-sahariens', 2, l1_id, 'tissages sahariens')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tissages-sahariens', 'fr', 'tissages sahariens');
            PERFORM insert_category_translations('tissages-sahariens', 'ar', 'منسوجات صحراوية');
            PERFORM insert_category_translations('tissages-sahariens', 'en', 'Saharan weaves');
            PERFORM insert_category_translations('tissages-sahariens', 'de', 'saharische Webarbeiten');
            PERFORM insert_category_translations('tissages-sahariens', 'es', 'tejidos del Sahara');
            PERFORM insert_category_translations('tissages-sahariens', 'it', 'tessiture sahariane');

            -- Level 2: accessoires-tisses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-tisses', 'accessoires-tisses', 2, l1_id, 'accessoires tissés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('accessoires-tisses', 'fr', 'accessoires tissés');
            PERFORM insert_category_translations('accessoires-tisses', 'ar', 'إكسسوارات منسوجة');
            PERFORM insert_category_translations('accessoires-tisses', 'en', 'woven accessories');
            PERFORM insert_category_translations('accessoires-tisses', 'de', 'gewebte Accessoires');
            PERFORM insert_category_translations('accessoires-tisses', 'es', 'accesorios tejidos');
            PERFORM insert_category_translations('accessoires-tisses', 'it', 'accessori tessuti');

        -- Level 1: bijoux-metaux
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bijoux-metaux', 'bijoux-metaux', 1, root_id, 'Bijoux & métaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('bijoux-metaux', 'fr', 'Bijoux & métaux');
        PERFORM insert_category_translations('bijoux-metaux', 'ar', 'حلي ومعادن');
        PERFORM insert_category_translations('bijoux-metaux', 'en', 'Jewelry & metals');
        PERFORM insert_category_translations('bijoux-metaux', 'de', 'Schmuck & Metalle');
        PERFORM insert_category_translations('bijoux-metaux', 'es', 'Joyas y metales');
        PERFORM insert_category_translations('bijoux-metaux', 'it', 'Gioielli e metalli');

            -- Level 2: bijoux-argent
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bijoux-argent', 'bijoux-argent', 2, l1_id, 'bijoux en argent')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bijoux-argent', 'fr', 'bijoux en argent');
            PERFORM insert_category_translations('bijoux-argent', 'ar', 'حلي فضة');
            PERFORM insert_category_translations('bijoux-argent', 'en', 'silver jewelry');
            PERFORM insert_category_translations('bijoux-argent', 'de', 'Silberschmuck');
            PERFORM insert_category_translations('bijoux-argent', 'es', 'joyas de plata');
            PERFORM insert_category_translations('bijoux-argent', 'it', 'gioielli in argento');

            -- Level 2: bijoux-kabyles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bijoux-kabyles', 'bijoux-kabyles', 2, l1_id, 'bijoux kabyles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bijoux-kabyles', 'fr', 'bijoux kabyles');
            PERFORM insert_category_translations('bijoux-kabyles', 'ar', 'حلي قبائلية');
            PERFORM insert_category_translations('bijoux-kabyles', 'en', 'Kabyle jewelry');
            PERFORM insert_category_translations('bijoux-kabyles', 'de', 'kabylischer Schmuck');
            PERFORM insert_category_translations('bijoux-kabyles', 'es', 'joyas cabiles');
            PERFORM insert_category_translations('bijoux-kabyles', 'it', 'gioielli kabyle');

            -- Level 2: bijoux-touareg
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bijoux-touareg', 'bijoux-touareg', 2, l1_id, 'bijoux touareg')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bijoux-touareg', 'fr', 'bijoux touareg');
            PERFORM insert_category_translations('bijoux-touareg', 'ar', 'حلي طوارقية');
            PERFORM insert_category_translations('bijoux-touareg', 'en', 'Tuareg jewelry');
            PERFORM insert_category_translations('bijoux-touareg', 'de', 'Tuareg-Schmuck');
            PERFORM insert_category_translations('bijoux-touareg', 'es', 'joyas tuareg');
            PERFORM insert_category_translations('bijoux-touareg', 'it', 'gioielli tuareg');

            -- Level 2: croix-agadez
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('croix-agadez', 'croix-agadez', 2, l1_id, 'croix d’Agadez (tanaghelt)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('croix-agadez', 'fr', 'croix d’Agadez (tanaghelt)');
            PERFORM insert_category_translations('croix-agadez', 'ar', 'صليب أغاديز (تاناغلت)');
            PERFORM insert_category_translations('croix-agadez', 'en', 'Agadez cross (tanaghelt)');
            PERFORM insert_category_translations('croix-agadez', 'de', 'Agadez-Kreuz (Tanaghelt)');
            PERFORM insert_category_translations('croix-agadez', 'es', 'cruz de Agadez (tanaghelt)');
            PERFORM insert_category_translations('croix-agadez', 'it', 'croce di Agadez (tanaghelt)');

            -- Level 2: talhakimt
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('talhakimt', 'talhakimt', 2, l1_id, 'Talhakimt')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('talhakimt', 'fr', 'Talhakimt');
            PERFORM insert_category_translations('talhakimt', 'ar', 'تلحكيمت');
            PERFORM insert_category_translations('talhakimt', 'en', 'Talhakimt');
            PERFORM insert_category_translations('talhakimt', 'de', 'Talhakimt');
            PERFORM insert_category_translations('talhakimt', 'es', 'Talhakimt');
            PERFORM insert_category_translations('talhakimt', 'it', 'Talhakimt');

            -- Level 2: objets-cuivre
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('objets-cuivre', 'objets-cuivre', 2, l1_id, 'objets en cuivre')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('objets-cuivre', 'fr', 'objets en cuivre');
            PERFORM insert_category_translations('objets-cuivre', 'ar', 'مصنوعات نحاسية');
            PERFORM insert_category_translations('objets-cuivre', 'en', 'copper objects');
            PERFORM insert_category_translations('objets-cuivre', 'de', 'Kupferobjekte');
            PERFORM insert_category_translations('objets-cuivre', 'es', 'objetos de cobre');
            PERFORM insert_category_translations('objets-cuivre', 'it', 'oggetti in rame');

        -- Level 1: broderie-vetements
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('broderie-vetements', 'broderie-vetements', 1, root_id, 'Broderie & vêtements traditionnels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('broderie-vetements', 'fr', 'Broderie & vêtements traditionnels');
        PERFORM insert_category_translations('broderie-vetements', 'ar', 'تطريز وملابس تقليدية');
        PERFORM insert_category_translations('broderie-vetements', 'en', 'Embroidery & traditional attire');
        PERFORM insert_category_translations('broderie-vetements', 'de', 'Stickerei & traditionelle Kleidung');
        PERFORM insert_category_translations('broderie-vetements', 'es', 'Bordado y vestimenta tradicional');
        PERFORM insert_category_translations('broderie-vetements', 'it', 'Ricamo e abiti tradizionali');

            -- Level 2: karakou
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('karakou', 'karakou', 2, l1_id, 'karakou')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('karakou', 'fr', 'karakou');
            PERFORM insert_category_translations('karakou', 'ar', 'كراكو');
            PERFORM insert_category_translations('karakou', 'en', 'karakou');
            PERFORM insert_category_translations('karakou', 'de', 'karakou');
            PERFORM insert_category_translations('karakou', 'es', 'karakou');
            PERFORM insert_category_translations('karakou', 'it', 'karakou');

            -- Level 2: gandoura
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gandoura', 'gandoura', 2, l1_id, 'gandoura')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gandoura', 'fr', 'gandoura');
            PERFORM insert_category_translations('gandoura', 'ar', 'قندورة');
            PERFORM insert_category_translations('gandoura', 'en', 'gandoura');
            PERFORM insert_category_translations('gandoura', 'de', 'gandoura');
            PERFORM insert_category_translations('gandoura', 'es', 'gandoura');
            PERFORM insert_category_translations('gandoura', 'it', 'gandoura');

            -- Level 2: burnous
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('burnous', 'burnous', 2, l1_id, 'burnous')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('burnous', 'fr', 'burnous');
            PERFORM insert_category_translations('burnous', 'ar', 'برنوس');
            PERFORM insert_category_translations('burnous', 'en', 'burnous');
            PERFORM insert_category_translations('burnous', 'de', 'burnous');
            PERFORM insert_category_translations('burnous', 'es', 'burnous');
            PERFORM insert_category_translations('burnous', 'it', 'burnous');

            -- Level 2: blousa
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('blousa', 'blousa', 2, l1_id, 'blousa')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('blousa', 'fr', 'blousa');
            PERFORM insert_category_translations('blousa', 'ar', 'بلوزة');
            PERFORM insert_category_translations('blousa', 'en', 'blousa');
            PERFORM insert_category_translations('blousa', 'de', 'blousa');
            PERFORM insert_category_translations('blousa', 'es', 'blousa');
            PERFORM insert_category_translations('blousa', 'it', 'blousa');

            -- Level 2: tenue-kabyle
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tenue-kabyle', 'tenue-kabyle', 2, l1_id, 'tenue kabyle')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tenue-kabyle', 'fr', 'tenue kabyle');
            PERFORM insert_category_translations('tenue-kabyle', 'ar', 'لباس قبائلي');
            PERFORM insert_category_translations('tenue-kabyle', 'en', 'Kabyle attire');
            PERFORM insert_category_translations('tenue-kabyle', 'de', 'kabylische Kleidung');
            PERFORM insert_category_translations('tenue-kabyle', 'es', 'atuendo cabilio');
            PERFORM insert_category_translations('tenue-kabyle', 'it', 'abito kabyle');

            -- Level 2: tenue-chaouie
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tenue-chaouie', 'tenue-chaouie', 2, l1_id, 'tenue chaouie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tenue-chaouie', 'fr', 'tenue chaouie');
            PERFORM insert_category_translations('tenue-chaouie', 'ar', 'لباس شاوي');
            PERFORM insert_category_translations('tenue-chaouie', 'en', 'Chaoui attire');
            PERFORM insert_category_translations('tenue-chaouie', 'de', 'chaouische Kleidung');
            PERFORM insert_category_translations('tenue-chaouie', 'es', 'atuendo chaoui');
            PERFORM insert_category_translations('tenue-chaouie', 'it', 'abito chaoui');

            -- Level 2: tenues-targuies
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tenues-targuies', 'tenues-targuies', 2, l1_id, 'tenues targuies')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tenues-targuies', 'fr', 'tenues targuies');
            PERFORM insert_category_translations('tenues-targuies', 'ar', 'ملابس طوارقية');
            PERFORM insert_category_translations('tenues-targuies', 'en', 'Tuareg attire');
            PERFORM insert_category_translations('tenues-targuies', 'de', 'Tuareg-Kleidung');
            PERFORM insert_category_translations('tenues-targuies', 'es', 'atuendos tuareg');
            PERFORM insert_category_translations('tenues-targuies', 'it', 'abiti tuareg');

            -- Level 2: gandoura-saharienne
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gandoura-saharienne', 'gandoura-saharienne', 2, l1_id, 'gandoura saharienne')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gandoura-saharienne', 'fr', 'gandoura saharienne');
            PERFORM insert_category_translations('gandoura-saharienne', 'ar', 'قندورة صحراوية');
            PERFORM insert_category_translations('gandoura-saharienne', 'en', 'Saharan gandoura');
            PERFORM insert_category_translations('gandoura-saharienne', 'de', 'saharische Gandoura');
            PERFORM insert_category_translations('gandoura-saharienne', 'es', 'gandoura sahariana');
            PERFORM insert_category_translations('gandoura-saharienne', 'it', 'gandoura sahariana');

            -- Level 2: broderies-artisanales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('broderies-artisanales', 'broderies-artisanales', 2, l1_id, 'broderies artisanales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('broderies-artisanales', 'fr', 'broderies artisanales');
            PERFORM insert_category_translations('broderies-artisanales', 'ar', 'تطريز يدوي');
            PERFORM insert_category_translations('broderies-artisanales', 'en', 'hand embroidery');
            PERFORM insert_category_translations('broderies-artisanales', 'de', 'handgefertigte Stickerei');
            PERFORM insert_category_translations('broderies-artisanales', 'es', 'bordados artesanales');
            PERFORM insert_category_translations('broderies-artisanales', 'it', 'ricami artigianali');

            -- Level 2: confection-sur-mesure
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('confection-sur-mesure', 'confection-sur-mesure', 2, l1_id, 'confection sur mesure')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('confection-sur-mesure', 'fr', 'confection sur mesure');
            PERFORM insert_category_translations('confection-sur-mesure', 'ar', 'خياطة وتفصيل حسب الطلب');
            PERFORM insert_category_translations('confection-sur-mesure', 'en', 'tailor-made');
            PERFORM insert_category_translations('confection-sur-mesure', 'de', 'Maßanfertigung');
            PERFORM insert_category_translations('confection-sur-mesure', 'es', 'confección a medida');
            PERFORM insert_category_translations('confection-sur-mesure', 'it', 'confezione su misura');

        -- Level 1: cuir-maroquinerie
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cuir-maroquinerie', 'cuir-maroquinerie', 1, root_id, 'Cuir & maroquinerie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('cuir-maroquinerie', 'fr', 'Cuir & maroquinerie');
        PERFORM insert_category_translations('cuir-maroquinerie', 'ar', 'جلد ومصنوعات يدوية');
        PERFORM insert_category_translations('cuir-maroquinerie', 'en', 'Leather & marquetry');
        PERFORM insert_category_translations('cuir-maroquinerie', 'de', 'Leder & Maroquinerie');
        PERFORM insert_category_translations('cuir-maroquinerie', 'es', 'Cuero y marroquinería');
        PERFORM insert_category_translations('cuir-maroquinerie', 'it', 'Pelle e pelletteria');

            -- Level 2: babouches
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('babouches', 'babouches', 2, l1_id, 'babouches')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('babouches', 'fr', 'babouches');
            PERFORM insert_category_translations('babouches', 'ar', 'بلغة');
            PERFORM insert_category_translations('babouches', 'en', 'babouches');
            PERFORM insert_category_translations('babouches', 'de', 'Babouches');
            PERFORM insert_category_translations('babouches', 'es', 'babuchas');
            PERFORM insert_category_translations('babouches', 'it', 'babucce');

            -- Level 2: sandales-artisanales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sandales-artisanales', 'sandales-artisanales', 2, l1_id, 'sandales artisanales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sandales-artisanales', 'fr', 'sandales artisanales');
            PERFORM insert_category_translations('sandales-artisanales', 'ar', 'صنادل تقليدية');
            PERFORM insert_category_translations('sandales-artisanales', 'en', 'artisan sandals');
            PERFORM insert_category_translations('sandales-artisanales', 'de', 'handgefertigte Sandalen');
            PERFORM insert_category_translations('sandales-artisanales', 'es', 'sandalias artesanales');
            PERFORM insert_category_translations('sandales-artisanales', 'it', 'sandali artigianali');

            -- Level 2: articles-cuir
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('articles-cuir', 'articles-cuir', 2, l1_id, 'articles en cuir')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('articles-cuir', 'fr', 'articles en cuir');
            PERFORM insert_category_translations('articles-cuir', 'ar', 'منتجات جلدية');
            PERFORM insert_category_translations('articles-cuir', 'en', 'leather items');
            PERFORM insert_category_translations('articles-cuir', 'de', 'Lederartikel');
            PERFORM insert_category_translations('articles-cuir', 'es', 'artículos de cuero');
            PERFORM insert_category_translations('articles-cuir', 'it', 'articoli in pelle');

            -- Level 2: maroquinerie-artisanale
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('maroquinerie-artisanale', 'maroquinerie-artisanale', 2, l1_id, 'maroquinerie artisanale')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('maroquinerie-artisanale', 'fr', 'maroquinerie artisanale');
            PERFORM insert_category_translations('maroquinerie-artisanale', 'ar', 'منتجات جلدية يدوية');
            PERFORM insert_category_translations('maroquinerie-artisanale', 'en', 'artisan leatherworks');
            PERFORM insert_category_translations('maroquinerie-artisanale', 'de', 'handgefertigte Lederwaren');
            PERFORM insert_category_translations('maroquinerie-artisanale', 'es', 'marroquinería artesanal');
            PERFORM insert_category_translations('maroquinerie-artisanale', 'it', 'pelletteria artigianale');

        -- Level 1: bois-sculpture
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bois-sculpture', 'bois-sculpture', 1, root_id, 'Bois & sculpture')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('bois-sculpture', 'fr', 'Bois & sculpture');
        PERFORM insert_category_translations('bois-sculpture', 'ar', 'خشب ونحت');
        PERFORM insert_category_translations('bois-sculpture', 'en', 'Wood & sculpture');
        PERFORM insert_category_translations('bois-sculpture', 'de', 'Holz & Skulptur');
        PERFORM insert_category_translations('bois-sculpture', 'es', 'Madera y escultura');
        PERFORM insert_category_translations('bois-sculpture', 'it', 'Legno e scultura');

            -- Level 2: objets-bois
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('objets-bois', 'objets-bois', 2, l1_id, 'objets en bois')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('objets-bois', 'fr', 'objets en bois');
            PERFORM insert_category_translations('objets-bois', 'ar', 'مصنوعات خشبية');
            PERFORM insert_category_translations('objets-bois', 'en', 'wood objects');
            PERFORM insert_category_translations('objets-bois', 'de', 'Holzobjekte');
            PERFORM insert_category_translations('objets-bois', 'es', 'objetos de madera');
            PERFORM insert_category_translations('objets-bois', 'it', 'oggetti in legno');

            -- Level 2: sculpture-bois
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sculpture-bois', 'sculpture-bois', 2, l1_id, 'sculpture sur bois')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sculpture-bois', 'fr', 'sculpture sur bois');
            PERFORM insert_category_translations('sculpture-bois', 'ar', 'نحت على الخشب');
            PERFORM insert_category_translations('sculpture-bois', 'en', 'wood carving');
            PERFORM insert_category_translations('sculpture-bois', 'de', 'Holzschnitzerei');
            PERFORM insert_category_translations('sculpture-bois', 'es', 'talla en madera');
            PERFORM insert_category_translations('sculpture-bois', 'it', 'intaglio del legno');

            -- Level 2: lampes-artisanales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lampes-artisanales', 'lampes-artisanales', 2, l1_id, 'lampes artisanales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lampes-artisanales', 'fr', 'lampes artisanales');
            PERFORM insert_category_translations('lampes-artisanales', 'ar', 'مصابيح يدوية');
            PERFORM insert_category_translations('lampes-artisanales', 'en', 'artisan lamps');
            PERFORM insert_category_translations('lampes-artisanales', 'de', 'handgefertigte Lampen');
            PERFORM insert_category_translations('lampes-artisanales', 'es', 'lámparas artesanales');
            PERFORM insert_category_translations('lampes-artisanales', 'it', 'lampade artigianali');

            -- Level 2: coffres-anciens
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('coffres-anciens', 'coffres-anciens', 2, l1_id, 'coffres anciens')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('coffres-anciens', 'fr', 'coffres anciens');
            PERFORM insert_category_translations('coffres-anciens', 'ar', 'صناديق قديمة');
            PERFORM insert_category_translations('coffres-anciens', 'en', 'antique chests');
            PERFORM insert_category_translations('coffres-anciens', 'de', 'antik Truhen');
            PERFORM insert_category_translations('coffres-anciens', 'es', 'baúles antiguos');
            PERFORM insert_category_translations('coffres-anciens', 'it', 'bauli antichi');

            -- Level 2: mobilier-traditionnel
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mobilier-traditionnel', 'mobilier-traditionnel', 2, l1_id, 'mobilier traditionnel')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mobilier-traditionnel', 'fr', 'mobilier traditionnel');
            PERFORM insert_category_translations('mobilier-traditionnel', 'ar', 'أثاث تقليدي');
            PERFORM insert_category_translations('mobilier-traditionnel', 'en', 'traditional furniture');
            PERFORM insert_category_translations('mobilier-traditionnel', 'de', 'traditionelle Möbel');
            PERFORM insert_category_translations('mobilier-traditionnel', 'es', 'mobiliario tradicional');
            PERFORM insert_category_translations('mobilier-traditionnel', 'it', 'arredi tradizionali');

        -- Level 1: vannerie-fibres
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vannerie-fibres', 'vannerie-fibres', 1, root_id, 'Vannerie & fibres naturelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('vannerie-fibres', 'fr', 'Vannerie & fibres naturelles');
        PERFORM insert_category_translations('vannerie-fibres', 'ar', 'سلال وألياف طبيعية');
        PERFORM insert_category_translations('vannerie-fibres', 'en', 'Basketry & natural fibers');
        PERFORM insert_category_translations('vannerie-fibres', 'de', 'Flechtkunst & Naturfasern');
        PERFORM insert_category_translations('vannerie-fibres', 'es', 'Cestería y fibras naturales');
        PERFORM insert_category_translations('vannerie-fibres', 'it', 'Cesteria e fibre naturali');

            -- Level 2: vannerie
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vannerie', 'vannerie', 2, l1_id, 'vannerie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('vannerie', 'fr', 'vannerie');
            PERFORM insert_category_translations('vannerie', 'ar', 'سلال يدوية');
            PERFORM insert_category_translations('vannerie', 'en', 'basketry');
            PERFORM insert_category_translations('vannerie', 'de', 'Flechtkunst');
            PERFORM insert_category_translations('vannerie', 'es', 'cestería');
            PERFORM insert_category_translations('vannerie', 'it', 'cesteria');

            -- Level 2: paniers-tresses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('paniers-tresses', 'paniers-tresses', 2, l1_id, 'paniers tressés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('paniers-tresses', 'fr', 'paniers tressés');
            PERFORM insert_category_translations('paniers-tresses', 'ar', 'سلال منسوجة');
            PERFORM insert_category_translations('paniers-tresses', 'en', 'woven baskets');
            PERFORM insert_category_translations('paniers-tresses', 'de', 'geflochtene Körbe');
            PERFORM insert_category_translations('paniers-tresses', 'es', 'cestas tejidas');
            PERFORM insert_category_translations('paniers-tresses', 'it', 'cesti intrecciati');

            -- Level 2: nattes-traditionnelles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('nattes-traditionnelles', 'nattes-traditionnelles', 2, l1_id, 'nattes traditionnelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('nattes-traditionnelles', 'fr', 'nattes traditionnelles');
            PERFORM insert_category_translations('nattes-traditionnelles', 'ar', 'حصير تقليدي');
            PERFORM insert_category_translations('nattes-traditionnelles', 'en', 'traditional mats');
            PERFORM insert_category_translations('nattes-traditionnelles', 'de', 'traditionelle Matten');
            PERFORM insert_category_translations('nattes-traditionnelles', 'es', 'esteras tradicionales');
            PERFORM insert_category_translations('nattes-traditionnelles', 'it', 'stuoie tradizionali');

            -- Level 2: objets-alfa-palmier
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('objets-alfa-palmier', 'objets-alfa-palmier', 2, l1_id, 'objets en alfa & palmier')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('objets-alfa-palmier', 'fr', 'objets en alfa & palmier');
            PERFORM insert_category_translations('objets-alfa-palmier', 'ar', 'مصنوعات من الحلفاء والنخيل');
            PERFORM insert_category_translations('objets-alfa-palmier', 'en', 'alfa & palm objects');
            PERFORM insert_category_translations('objets-alfa-palmier', 'de', 'Alfa- & Palm-Objekte');
            PERFORM insert_category_translations('objets-alfa-palmier', 'es', 'objetos de alfa y palmera');
            PERFORM insert_category_translations('objets-alfa-palmier', 'it', 'oggetti in alfa e palma');

        -- Level 1: decoration-berbere
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('decoration-berbere', 'decoration-berbere', 1, root_id, 'Décoration & objets berbères')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('decoration-berbere', 'fr', 'Décoration & objets berbères');
        PERFORM insert_category_translations('decoration-berbere', 'ar', 'زخارف وأشياء أمازيغية');
        PERFORM insert_category_translations('decoration-berbere', 'en', 'Berber decor & objects');
        PERFORM insert_category_translations('decoration-berbere', 'de', 'Berberische Dekoration & Objekte');
        PERFORM insert_category_translations('decoration-berbere', 'es', 'Decoración y objetos bereberes');
        PERFORM insert_category_translations('decoration-berbere', 'it', 'Decorazioni e oggetti berberi');

            -- Level 2: decorations-murales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('decorations-murales', 'decorations-murales', 2, l1_id, 'décorations murales traditionnelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('decorations-murales', 'fr', 'décorations murales traditionnelles');
            PERFORM insert_category_translations('decorations-murales', 'ar', 'زخارف حائط تقليدية');
            PERFORM insert_category_translations('decorations-murales', 'en', 'traditional wall decor');
            PERFORM insert_category_translations('decorations-murales', 'de', 'traditionelle Wanddekoration');
            PERFORM insert_category_translations('decorations-murales', 'es', 'decoración mural tradicional');
            PERFORM insert_category_translations('decorations-murales', 'it', 'decorazioni murali tradizionali');

            -- Level 2: objets-decoratifs-berberes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('objets-decoratifs-berberes', 'objets-decoratifs-berberes', 2, l1_id, 'objets décoratifs berbères')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('objets-decoratifs-berberes', 'fr', 'objets décoratifs berbères');
            PERFORM insert_category_translations('objets-decoratifs-berberes', 'ar', 'أشياء زخرفية أمازيغية');
            PERFORM insert_category_translations('objets-decoratifs-berberes', 'en', 'Berber decorative objects');
            PERFORM insert_category_translations('objets-decoratifs-berberes', 'de', 'berberische Dekorobjekte');
            PERFORM insert_category_translations('objets-decoratifs-berberes', 'es', 'objetos decorativos bereberes');
            PERFORM insert_category_translations('objets-decoratifs-berberes', 'it', 'oggetti decorativi berberi');

            -- Level 2: tableaux-traditionnels
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tableaux-traditionnels', 'tableaux-traditionnels', 2, l1_id, 'tableaux traditionnels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tableaux-traditionnels', 'fr', 'tableaux traditionnels');
            PERFORM insert_category_translations('tableaux-traditionnels', 'ar', 'لوحات تقليدية');
            PERFORM insert_category_translations('tableaux-traditionnels', 'en', 'traditional paintings');
            PERFORM insert_category_translations('tableaux-traditionnels', 'de', 'traditionelle Gemälde');
            PERFORM insert_category_translations('tableaux-traditionnels', 'es', 'cuadros tradicionales');
            PERFORM insert_category_translations('tableaux-traditionnels', 'it', 'quadri tradizionali');

            -- Level 2: calligraphie-artistique
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('calligraphie-artistique', 'calligraphie-artistique', 2, l1_id, 'calligraphie artistique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('calligraphie-artistique', 'fr', 'calligraphie artistique');
            PERFORM insert_category_translations('calligraphie-artistique', 'ar', 'خط فني');
            PERFORM insert_category_translations('calligraphie-artistique', 'en', 'artistic calligraphy');
            PERFORM insert_category_translations('calligraphie-artistique', 'de', 'künstlerische Kalligraphie');
            PERFORM insert_category_translations('calligraphie-artistique', 'es', 'caligrafía artística');
            PERFORM insert_category_translations('calligraphie-artistique', 'it', 'calligrafia artistica');

            -- Level 2: calligraphie-tifinagh
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('calligraphie-tifinagh', 'calligraphie-tifinagh', 2, l1_id, 'calligraphie tifinagh')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('calligraphie-tifinagh', 'fr', 'calligraphie tifinagh');
            PERFORM insert_category_translations('calligraphie-tifinagh', 'ar', 'خط تفيناغ');
            PERFORM insert_category_translations('calligraphie-tifinagh', 'en', 'Tifinagh calligraphy');
            PERFORM insert_category_translations('calligraphie-tifinagh', 'de', 'Tifinagh-Kalligraphie');
            PERFORM insert_category_translations('calligraphie-tifinagh', 'es', 'caligrafía tifinagh');
            PERFORM insert_category_translations('calligraphie-tifinagh', 'it', 'calligrafia tifinagh');

            -- Level 2: souvenirs-touristes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('souvenirs-touristes', 'souvenirs-touristes', 2, l1_id, 'souvenirs pour touristes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('souvenirs-touristes', 'fr', 'souvenirs pour touristes');
            PERFORM insert_category_translations('souvenirs-touristes', 'ar', 'تذكارات سياحية');
            PERFORM insert_category_translations('souvenirs-touristes', 'en', 'souvenirs for tourists');
            PERFORM insert_category_translations('souvenirs-touristes', 'de', 'Souvenirs');
            PERFORM insert_category_translations('souvenirs-touristes', 'es', 'souvenirs para turistas');
            PERFORM insert_category_translations('souvenirs-touristes', 'it', 'souvenir per turisti');

            -- Level 2: artisanat-contemporain
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('artisanat-contemporain', 'artisanat-contemporain', 2, l1_id, 'artisanat contemporain inspiré du patrimoine')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('artisanat-contemporain', 'fr', 'artisanat contemporain inspiré du patrimoine');
            PERFORM insert_category_translations('artisanat-contemporain', 'ar', 'حرف معاصرة مستوحاة من التراث');
            PERFORM insert_category_translations('artisanat-contemporain', 'en', 'heritage-inspired contemporary craft');
            PERFORM insert_category_translations('artisanat-contemporain', 'de', 'zeitgenössisches, vom Erbe inspiriertes Handwerk');
            PERFORM insert_category_translations('artisanat-contemporain', 'es', 'artesanía contemporánea inspirada en el patrimonio');
            PERFORM insert_category_translations('artisanat-contemporain', 'it', 'artigianato contemporaneo ispirato al patrimonio');

        -- Level 1: instruments-musique
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('instruments-musique', 'instruments-musique', 1, root_id, 'Instruments de musique artisanaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('instruments-musique', 'fr', 'Instruments de musique artisanaux');
        PERFORM insert_category_translations('instruments-musique', 'ar', 'آلات موسيقية يدوية');
        PERFORM insert_category_translations('instruments-musique', 'en', 'Handmade musical instruments');
        PERFORM insert_category_translations('instruments-musique', 'de', 'Handgefertigte Musikinstrumente');
        PERFORM insert_category_translations('instruments-musique', 'es', 'Instrumentos musicales artesanales');
        PERFORM insert_category_translations('instruments-musique', 'it', 'Strumenti musicali artigianali');

            -- Level 2: bendir
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bendir', 'bendir', 2, l1_id, 'bendir')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bendir', 'fr', 'bendir');
            PERFORM insert_category_translations('bendir', 'ar', 'بندير');
            PERFORM insert_category_translations('bendir', 'en', 'bendir');
            PERFORM insert_category_translations('bendir', 'de', 'Bendir');
            PERFORM insert_category_translations('bendir', 'es', 'bendir');
            PERFORM insert_category_translations('bendir', 'it', 'bendir');

            -- Level 2: goumbri
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('goumbri', 'goumbri', 2, l1_id, 'goumbri')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('goumbri', 'fr', 'goumbri');
            PERFORM insert_category_translations('goumbri', 'ar', 'قنبري');
            PERFORM insert_category_translations('goumbri', 'en', 'goumbri');
            PERFORM insert_category_translations('goumbri', 'de', 'Goumbri');
            PERFORM insert_category_translations('goumbri', 'es', 'goumbri');
            PERFORM insert_category_translations('goumbri', 'it', 'goumbri');

            -- Level 2: gasba
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gasba', 'gasba', 2, l1_id, 'gasba')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gasba', 'fr', 'gasba');
            PERFORM insert_category_translations('gasba', 'ar', 'قصبة');
            PERFORM insert_category_translations('gasba', 'en', 'gasba');
            PERFORM insert_category_translations('gasba', 'de', 'Gasba');
            PERFORM insert_category_translations('gasba', 'es', 'gasba');
            PERFORM insert_category_translations('gasba', 'it', 'gasba');

            -- Level 2: karkabou
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('karkabou', 'karkabou', 2, l1_id, 'karkabou')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('karkabou', 'fr', 'karkabou');
            PERFORM insert_category_translations('karkabou', 'ar', 'قرقبو');
            PERFORM insert_category_translations('karkabou', 'en', 'karkabou');
            PERFORM insert_category_translations('karkabou', 'de', 'Karkabou');
            PERFORM insert_category_translations('karkabou', 'es', 'karkabou');
            PERFORM insert_category_translations('karkabou', 'it', 'karkabou');

            -- Level 2: imzad
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('imzad', 'imzad', 2, l1_id, 'imzad')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('imzad', 'fr', 'imzad');
            PERFORM insert_category_translations('imzad', 'ar', 'إمزاد');
            PERFORM insert_category_translations('imzad', 'en', 'imzad');
            PERFORM insert_category_translations('imzad', 'de', 'Imzad');
            PERFORM insert_category_translations('imzad', 'es', 'imzad');
            PERFORM insert_category_translations('imzad', 'it', 'imzad');

        -- Level 1: produits-naturels
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-naturels', 'produits-naturels', 1, root_id, 'Produits naturels artisanaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('produits-naturels', 'fr', 'Produits naturels artisanaux');
        PERFORM insert_category_translations('produits-naturels', 'ar', 'منتجات طبيعية يدوية');
        PERFORM insert_category_translations('produits-naturels', 'en', 'Handmade natural products');
        PERFORM insert_category_translations('produits-naturels', 'de', 'Handgemachte Naturprodukte');
        PERFORM insert_category_translations('produits-naturels', 'es', 'Productos naturales artesanales');
        PERFORM insert_category_translations('produits-naturels', 'it', 'Prodotti naturali artigianali');

            -- Level 2: huile-olive-artisanale
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('huile-olive-artisanale', 'huile-olive-artisanale', 2, l1_id, 'huile d’olive')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('huile-olive-artisanale', 'fr', 'huile d’olive');
            PERFORM insert_category_translations('huile-olive-artisanale', 'ar', 'زيت زيتون');
            PERFORM insert_category_translations('huile-olive-artisanale', 'en', 'olive oil');
            PERFORM insert_category_translations('huile-olive-artisanale', 'de', 'Olivenöl');
            PERFORM insert_category_translations('huile-olive-artisanale', 'es', 'aceite de oliva');
            PERFORM insert_category_translations('huile-olive-artisanale', 'it', 'olio d’oliva');

            -- Level 2: henne
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('henne', 'henne', 2, l1_id, 'henné')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('henne', 'fr', 'henné');
            PERFORM insert_category_translations('henne', 'ar', 'حناء');
            PERFORM insert_category_translations('henne', 'en', 'henna');
            PERFORM insert_category_translations('henne', 'de', 'Henna');
            PERFORM insert_category_translations('henne', 'es', 'henna');
            PERFORM insert_category_translations('henne', 'it', 'henné');

            -- Level 2: savon-artisanal
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('savon-artisanal', 'savon-artisanal', 2, l1_id, 'savon artisanal')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('savon-artisanal', 'fr', 'savon artisanal');
            PERFORM insert_category_translations('savon-artisanal', 'ar', 'صابون يدوي');
            PERFORM insert_category_translations('savon-artisanal', 'en', 'artisan soap');
            PERFORM insert_category_translations('savon-artisanal', 'de', 'handgemachte Seife');
            PERFORM insert_category_translations('savon-artisanal', 'es', 'jabón artesanal');
            PERFORM insert_category_translations('savon-artisanal', 'it', 'sapone artigianale');

            -- Level 2: encens
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('encens', 'encens', 2, l1_id, 'encens')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('encens', 'fr', 'encens');
            PERFORM insert_category_translations('encens', 'ar', 'بخور');
            PERFORM insert_category_translations('encens', 'en', 'incense');
            PERFORM insert_category_translations('encens', 'de', 'Weihrauch');
            PERFORM insert_category_translations('encens', 'es', 'incienso');
            PERFORM insert_category_translations('encens', 'it', 'incenso');

            -- Level 2: melasse
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('melasse', 'melasse', 2, l1_id, 'mélasse')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('melasse', 'fr', 'mélasse');
            PERFORM insert_category_translations('melasse', 'ar', 'دبس');
            PERFORM insert_category_translations('melasse', 'en', 'molasses');
            PERFORM insert_category_translations('melasse', 'de', 'Melasse');
            PERFORM insert_category_translations('melasse', 'es', 'melaza');
            PERFORM insert_category_translations('melasse', 'it', 'melassa');

        -- Level 1: articles-culturels
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('articles-culturels', 'articles-culturels', 1, root_id, 'Articles culturels & patrimoniaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('articles-culturels', 'fr', 'Articles culturels & patrimoniaux');
        PERFORM insert_category_translations('articles-culturels', 'ar', 'منتجات ثقافية وتراثية');
        PERFORM insert_category_translations('articles-culturels', 'en', 'Cultural & heritage items');
        PERFORM insert_category_translations('articles-culturels', 'de', 'Kulturelle & Erbe-Artikel');
        PERFORM insert_category_translations('articles-culturels', 'es', 'Artículos culturales y patrimoniales');
        PERFORM insert_category_translations('articles-culturels', 'it', 'Articoli culturali e patrimoniali');

            -- Level 2: objets-culturels
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('objets-culturels', 'objets-culturels', 2, l1_id, 'objets culturels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('objets-culturels', 'fr', 'objets culturels');
            PERFORM insert_category_translations('objets-culturels', 'ar', 'أشياء ثقافية');
            PERFORM insert_category_translations('objets-culturels', 'en', 'cultural objects');
            PERFORM insert_category_translations('objets-culturels', 'de', 'kulturelle Objekte');
            PERFORM insert_category_translations('objets-culturels', 'es', 'objetos culturales');
            PERFORM insert_category_translations('objets-culturels', 'it', 'oggetti culturali');

        -- Level 1: services-coutumes
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('services-coutumes', 'services-coutumes', 1, root_id, 'Services & coutumes traditionnelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('services-coutumes', 'fr', 'Services & coutumes traditionnelles');
        PERFORM insert_category_translations('services-coutumes', 'ar', 'خدمات وعادات تقليدية');
        PERFORM insert_category_translations('services-coutumes', 'en', 'Services & traditional customs');
        PERFORM insert_category_translations('services-coutumes', 'de', 'Dienste & traditionelle Bräuche');
        PERFORM insert_category_translations('services-coutumes', 'es', 'Servicios y costumbres tradicionales');
        PERFORM insert_category_translations('services-coutumes', 'it', 'Servizi e usanze tradizionali');

            -- Level 2: henne-artistique
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('henne-artistique', 'henne-artistique', 2, l1_id, 'henné artistique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('henne-artistique', 'fr', 'henné artistique');
            PERFORM insert_category_translations('henne-artistique', 'ar', 'حناء فنية');
            PERFORM insert_category_translations('henne-artistique', 'en', 'artistic henna');
            PERFORM insert_category_translations('henne-artistique', 'de', 'künstlerisches Henna');
            PERFORM insert_category_translations('henne-artistique', 'es', 'henna artístico');
            PERFORM insert_category_translations('henne-artistique', 'it', 'henné artistico');

            -- Level 2: tatouage-traditionnel
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tatouage-traditionnel', 'tatouage-traditionnel', 2, l1_id, 'tatouage traditionnel')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tatouage-traditionnel', 'fr', 'tatouage traditionnel');
            PERFORM insert_category_translations('tatouage-traditionnel', 'ar', 'وشم تقليدي');
            PERFORM insert_category_translations('tatouage-traditionnel', 'en', 'traditional tattoo');
            PERFORM insert_category_translations('tatouage-traditionnel', 'de', 'traditionelle Tätowierung');
            PERFORM insert_category_translations('tatouage-traditionnel', 'es', 'tatuaje tradicional');
            PERFORM insert_category_translations('tatouage-traditionnel', 'it', 'tatuaggio tradizionale');

            -- Level 2: trousseau-mariage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('trousseau-mariage', 'trousseau-mariage', 2, l1_id, 'préparation du trousseau de mariage (cheddat)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('trousseau-mariage', 'fr', 'préparation du trousseau de mariage (cheddat)');
            PERFORM insert_category_translations('trousseau-mariage', 'ar', 'تحضير جهاز العروس (الشدة)');
            PERFORM insert_category_translations('trousseau-mariage', 'en', 'wedding trousseau preparation (cheddat)');
            PERFORM insert_category_translations('trousseau-mariage', 'de', 'Hochzeitsaussteuer (Cheddat)');
            PERFORM insert_category_translations('trousseau-mariage', 'es', 'preparación del ajuar de boda (cheddat)');
            PERFORM insert_category_translations('trousseau-mariage', 'it', 'preparazione del corredo nuziale (cheddat)');

            -- Level 2: location-tenues
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('location-tenues', 'location-tenues', 2, l1_id, 'location de tenues traditionnelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('location-tenues', 'fr', 'location de tenues traditionnelles');
            PERFORM insert_category_translations('location-tenues', 'ar', 'كراء الملابس التقليدية');
            PERFORM insert_category_translations('location-tenues', 'en', 'traditional attire rental');
            PERFORM insert_category_translations('location-tenues', 'de', 'Verleih traditioneller Kleidung');
            PERFORM insert_category_translations('location-tenues', 'es', 'alquiler de vestimenta tradicional');
            PERFORM insert_category_translations('location-tenues', 'it', 'noleggio abiti tradizionali');

            -- Level 2: ceremonies-traditionnelles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ceremonies-traditionnelles', 'ceremonies-traditionnelles', 2, l1_id, 'préparation de cérémonies traditionnelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ceremonies-traditionnelles', 'fr', 'préparation de cérémonies traditionnelles');
            PERFORM insert_category_translations('ceremonies-traditionnelles', 'ar', 'تحضير المراسم التقليدية');
            PERFORM insert_category_translations('ceremonies-traditionnelles', 'en', 'traditional ceremonies preparation');
            PERFORM insert_category_translations('ceremonies-traditionnelles', 'de', 'Vorbereitung traditioneller Zeremonien');
            PERFORM insert_category_translations('ceremonies-traditionnelles', 'es', 'preparación de ceremonias tradicionales');
            PERFORM insert_category_translations('ceremonies-traditionnelles', 'it', 'preparazione di cerimonie tradizionali');

            -- Level 2: musique-folklorique
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('musique-folklorique', 'musique-folklorique', 2, l1_id, 'musique folklorique (chaoui, kabyle, targui, gnawa)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('musique-folklorique', 'fr', 'musique folklorique (chaoui, kabyle, targui, gnawa)');
            PERFORM insert_category_translations('musique-folklorique', 'ar', 'موسيقى فولكلورية (شاوي، قبائلي، طارقي، كناوي)');
            PERFORM insert_category_translations('musique-folklorique', 'en', 'folk music (Chaoui, Kabyle, Tuareg, Gnawa)');
            PERFORM insert_category_translations('musique-folklorique', 'de', 'Folklore-Musik (Chaoui, Kabyle, Tuareg, Gnawa)');
            PERFORM insert_category_translations('musique-folklorique', 'es', 'música folclórica (chaoui, cabila, tuareg, gnawa)');
            PERFORM insert_category_translations('musique-folklorique', 'it', 'musica folkloristica (chaoui, kabyle, tuareg, gnawa)');

            -- Level 2: danse-traditionnelle
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('danse-traditionnelle', 'danse-traditionnelle', 2, l1_id, 'danse traditionnelle')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('danse-traditionnelle', 'fr', 'danse traditionnelle');
            PERFORM insert_category_translations('danse-traditionnelle', 'ar', 'رقص تقليدي');
            PERFORM insert_category_translations('danse-traditionnelle', 'en', 'traditional dance');
            PERFORM insert_category_translations('danse-traditionnelle', 'de', 'traditioneller Tanz');
            PERFORM insert_category_translations('danse-traditionnelle', 'es', 'danza tradicional');
            PERFORM insert_category_translations('danse-traditionnelle', 'it', 'danza tradizionale');

            -- Level 2: patisserie-traditionnelle-services
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('patisserie-traditionnelle-services', 'patisserie-traditionnelle-services', 2, l1_id, 'services de pâtisserie traditionnelle')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('patisserie-traditionnelle-services', 'fr', 'services de pâtisserie traditionnelle');
            PERFORM insert_category_translations('patisserie-traditionnelle-services', 'ar', 'خدمات الحلويات التقليدية');
            PERFORM insert_category_translations('patisserie-traditionnelle-services', 'en', 'traditional pastry services');
            PERFORM insert_category_translations('patisserie-traditionnelle-services', 'de', 'traditionelle Konditorei-Dienste');
            PERFORM insert_category_translations('patisserie-traditionnelle-services', 'es', 'servicios de repostería tradicional');
            PERFORM insert_category_translations('patisserie-traditionnelle-services', 'it', 'servizi di pasticceria tradizionale');

            -- Level 2: decoration-fetes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('decoration-fetes', 'decoration-fetes', 2, l1_id, 'décoration traditionnelle pour fêtes et mariages')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('decoration-fetes', 'fr', 'décoration traditionnelle pour fêtes et mariages');
            PERFORM insert_category_translations('decoration-fetes', 'ar', 'تزيين تقليدي للمناسبات والأعراس');
            PERFORM insert_category_translations('decoration-fetes', 'en', 'traditional decor for festivities & weddings');
            PERFORM insert_category_translations('decoration-fetes', 'de', 'traditionelle Deko für Feste & Hochzeiten');
            PERFORM insert_category_translations('decoration-fetes', 'es', 'decoración tradicional para fiestas y bodas');
            PERFORM insert_category_translations('decoration-fetes', 'it', 'decorazioni tradizionali per feste e matrimoni');

            -- Level 2: repas-traditionnels
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('repas-traditionnels', 'repas-traditionnels', 2, l1_id, 'préparation de repas traditionnels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('repas-traditionnels', 'fr', 'préparation de repas traditionnels');
            PERFORM insert_category_translations('repas-traditionnels', 'ar', 'تحضير وجبات تقليدية');
            PERFORM insert_category_translations('repas-traditionnels', 'en', 'traditional meals preparation');
            PERFORM insert_category_translations('repas-traditionnels', 'de', 'Zubereitung traditioneller Mahlzeiten');
            PERFORM insert_category_translations('repas-traditionnels', 'es', 'preparación de comidas tradicionales');
            PERFORM insert_category_translations('repas-traditionnels', 'it', 'preparazione di pasti tradizionali');

            -- Level 2: organisation-mariages
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('organisation-mariages', 'organisation-mariages', 2, l1_id, 'organisation de mariages traditionnels algériens')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('organisation-mariages', 'fr', 'organisation de mariages traditionnels algériens');
            PERFORM insert_category_translations('organisation-mariages', 'ar', 'تنظيم الأعراس التقليدية الجزائرية');
            PERFORM insert_category_translations('organisation-mariages', 'en', 'Algerian traditional wedding organization');
            PERFORM insert_category_translations('organisation-mariages', 'de', 'Organisation traditioneller Hochzeiten');
            PERFORM insert_category_translations('organisation-mariages', 'es', 'organización de bodas tradicionales argelinas');
            PERFORM insert_category_translations('organisation-mariages', 'it', 'organizzazione matrimoni tradizionali algerini');

            -- Level 2: accessoires-fetes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-fetes', 'accessoires-fetes', 2, l1_id, 'fourniture d’accessoires de fêtes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('accessoires-fetes', 'fr', 'fourniture d’accessoires de fêtes');
            PERFORM insert_category_translations('accessoires-fetes', 'ar', 'توفير مستلزمات المناسبات');
            PERFORM insert_category_translations('accessoires-fetes', 'en', 'party accessories supply');
            PERFORM insert_category_translations('accessoires-fetes', 'de', 'Bereitstellung von Fest-Accessoires');
            PERFORM insert_category_translations('accessoires-fetes', 'es', 'suministro de accesorios para fiestas');
            PERFORM insert_category_translations('accessoires-fetes', 'it', 'fornitura accessori per feste');

            -- Level 2: broderie-personnalisee
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('broderie-personnalisee', 'broderie-personnalisee', 2, l1_id, 'broderie personnalisée')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('broderie-personnalisee', 'fr', 'broderie personnalisée');
            PERFORM insert_category_translations('broderie-personnalisee', 'ar', 'تطريز مخصص');
            PERFORM insert_category_translations('broderie-personnalisee', 'en', 'custom embroidery');
            PERFORM insert_category_translations('broderie-personnalisee', 'de', 'personalisierte Stickerei');
            PERFORM insert_category_translations('broderie-personnalisee', 'es', 'bordado personalizado');
            PERFORM insert_category_translations('broderie-personnalisee', 'it', 'ricamo personalizzato');

            -- Level 2: couture-artisanale
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('couture-artisanale', 'couture-artisanale', 2, l1_id, 'couture artisanale')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('couture-artisanale', 'fr', 'couture artisanale');
            PERFORM insert_category_translations('couture-artisanale', 'ar', 'خياطة تقليدية');
            PERFORM insert_category_translations('couture-artisanale', 'en', 'artisan sewing');
            PERFORM insert_category_translations('couture-artisanale', 'de', 'handwerkliches Nähen');
            PERFORM insert_category_translations('couture-artisanale', 'es', 'costura artesanal');
            PERFORM insert_category_translations('couture-artisanale', 'it', 'cucito artigianale');

            -- Level 2: cadeaux-personnalises
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cadeaux-personnalises', 'cadeaux-personnalises', 2, l1_id, 'fabrication de cadeaux personnalisés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cadeaux-personnalises', 'fr', 'fabrication de cadeaux personnalisés');
            PERFORM insert_category_translations('cadeaux-personnalises', 'ar', 'هدايا مخصصة');
            PERFORM insert_category_translations('cadeaux-personnalises', 'en', 'custom gift making');
            PERFORM insert_category_translations('cadeaux-personnalises', 'de', 'personalisierte Geschenke');
            PERFORM insert_category_translations('cadeaux-personnalises', 'es', 'regalos personalizados');
            PERFORM insert_category_translations('cadeaux-personnalises', 'it', 'regali personalizzati');

            -- Level 2: ateliers-apprentissage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ateliers-apprentissage', 'ateliers-apprentissage', 2, l1_id, 'ateliers d’apprentissage (poterie, tissage, gravure)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ateliers-apprentissage', 'fr', 'ateliers d’apprentissage (poterie, tissage, gravure)');
            PERFORM insert_category_translations('ateliers-apprentissage', 'ar', 'ورش تعلم (فخار، نسج، نقش)');
            PERFORM insert_category_translations('ateliers-apprentissage', 'en', 'learning workshops (pottery, weaving, engraving)');
            PERFORM insert_category_translations('ateliers-apprentissage', 'de', 'Workshops (Töpferei, Weberei, Gravur)');
            PERFORM insert_category_translations('ateliers-apprentissage', 'es', 'talleres de aprendizaje (cerámica, tejido, grabado)');
            PERFORM insert_category_translations('ateliers-apprentissage', 'it', 'laboratori (ceramica, tessitura, incisione)');

            -- Level 2: transmission-coutumes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('transmission-coutumes', 'transmission-coutumes', 2, l1_id, 'transmission des coutumes locales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('transmission-coutumes', 'fr', 'transmission des coutumes locales');
            PERFORM insert_category_translations('transmission-coutumes', 'ar', 'نقل العادات المحلية');
            PERFORM insert_category_translations('transmission-coutumes', 'en', 'transmission of local customs');
            PERFORM insert_category_translations('transmission-coutumes', 'de', 'Weitergabe lokaler Bräuche');
            PERFORM insert_category_translations('transmission-coutumes', 'es', 'transmisión de costumbres locales');
            PERFORM insert_category_translations('transmission-coutumes', 'it', 'trasmissione delle usanze locali');

            -- Level 2: initiation-arts
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('initiation-arts', 'initiation-arts', 2, l1_id, 'initiation aux arts traditionnels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('initiation-arts', 'fr', 'initiation aux arts traditionnels');
            PERFORM insert_category_translations('initiation-arts', 'ar', 'التعرف على الفنون التقليدية');
            PERFORM insert_category_translations('initiation-arts', 'en', 'traditional arts initiation');
            PERFORM insert_category_translations('initiation-arts', 'de', 'Einführung in traditionelle Künste');
            PERFORM insert_category_translations('initiation-arts', 'es', 'iniciación a las artes tradicionales');
            PERFORM insert_category_translations('initiation-arts', 'it', 'iniziazione alle arti tradizionali');

            -- Level 2: ceremonies-religieuses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ceremonies-religieuses', 'ceremonies-religieuses', 2, l1_id, 'préparation cérémonies religieuses et culturelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ceremonies-religieuses', 'fr', 'préparation cérémonies religieuses et culturelles');
            PERFORM insert_category_translations('ceremonies-religieuses', 'ar', 'تحضير المراسم الدينية والثقافية');
            PERFORM insert_category_translations('ceremonies-religieuses', 'en', 'religious and cultural ceremonies');
            PERFORM insert_category_translations('ceremonies-religieuses', 'de', 'religiöse & kulturelle Zeremonien');
            PERFORM insert_category_translations('ceremonies-religieuses', 'es', 'ceremonias religiosas y culturales');
            PERFORM insert_category_translations('ceremonies-religieuses', 'it', 'cerimonie religiose e culturali');

        -- Level 1: produits-locaux
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-locaux', 'produits-locaux', 1, root_id, 'Produits locaux algériens')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('produits-locaux', 'fr', 'Produits locaux algériens');
        PERFORM insert_category_translations('produits-locaux', 'ar', 'منتجات محلية جزائرية');
        PERFORM insert_category_translations('produits-locaux', 'en', 'Algerian local products');
        PERFORM insert_category_translations('produits-locaux', 'de', 'Algerische lokale Produkte');
        PERFORM insert_category_translations('produits-locaux', 'es', 'Productos locales argelinos');
        PERFORM insert_category_translations('produits-locaux', 'it', 'Prodotti locali algerini');

            -- Level 2: huile-olive-terroir
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('huile-olive-terroir', 'huile-olive-terroir', 2, l1_id, 'huile d’olive du terroir')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('huile-olive-terroir', 'fr', 'huile d’olive du terroir');
            PERFORM insert_category_translations('huile-olive-terroir', 'ar', 'زيت زيتون من terroir');
            PERFORM insert_category_translations('huile-olive-terroir', 'en', 'terroir olive oil');
            PERFORM insert_category_translations('huile-olive-terroir', 'de', 'Terroir-Olivenöl');
            PERFORM insert_category_translations('huile-olive-terroir', 'es', 'aceite de oliva de terroir');
            PERFORM insert_category_translations('huile-olive-terroir', 'it', 'olio d’oliva del terroir');

            -- Level 2: dattes-deglet-nour
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('dattes-deglet-nour', 'dattes-deglet-nour', 2, l1_id, 'dattes Deglet Nour')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('dattes-deglet-nour', 'fr', 'dattes Deglet Nour');
            PERFORM insert_category_translations('dattes-deglet-nour', 'ar', 'تمر دقلة نور');
            PERFORM insert_category_translations('dattes-deglet-nour', 'en', 'Deglet Nour dates');
            PERFORM insert_category_translations('dattes-deglet-nour', 'de', 'Deglet Nour Datteln');
            PERFORM insert_category_translations('dattes-deglet-nour', 'es', 'dátiles Deglet Nour');
            PERFORM insert_category_translations('dattes-deglet-nour', 'it', 'datteri Deglet Nour');

            -- Level 2: dattes-fourrees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('dattes-fourrees', 'dattes-fourrees', 2, l1_id, 'dattes fourrées artisanales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('dattes-fourrees', 'fr', 'dattes fourrées artisanales');
            PERFORM insert_category_translations('dattes-fourrees', 'ar', 'تمر محشو يدويًا');
            PERFORM insert_category_translations('dattes-fourrees', 'en', 'artisan stuffed dates');
            PERFORM insert_category_translations('dattes-fourrees', 'de', 'handgefüllte Datteln');
            PERFORM insert_category_translations('dattes-fourrees', 'es', 'dátiles rellenos artesanales');
            PERFORM insert_category_translations('dattes-fourrees', 'it', 'datteri farciti artigianali');

            -- Level 2: miel-naturel
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('miel-naturel', 'miel-naturel', 2, l1_id, 'miel naturel')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('miel-naturel', 'fr', 'miel naturel');
            PERFORM insert_category_translations('miel-naturel', 'ar', 'عسل طبيعي');
            PERFORM insert_category_translations('miel-naturel', 'en', 'natural honey');
            PERFORM insert_category_translations('miel-naturel', 'de', 'Naturhonig');
            PERFORM insert_category_translations('miel-naturel', 'es', 'miel natural');
            PERFORM insert_category_translations('miel-naturel', 'it', 'miele naturale');

            -- Level 2: couscous-traditionnel
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('couscous-traditionnel', 'couscous-traditionnel', 2, l1_id, 'couscous traditionnel')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('couscous-traditionnel', 'fr', 'couscous traditionnel');
            PERFORM insert_category_translations('couscous-traditionnel', 'ar', 'كسكس تقليدي');
            PERFORM insert_category_translations('couscous-traditionnel', 'en', 'traditional couscous');
            PERFORM insert_category_translations('couscous-traditionnel', 'de', 'traditioneller Couscous');
            PERFORM insert_category_translations('couscous-traditionnel', 'es', 'cuscús tradicional');
            PERFORM insert_category_translations('couscous-traditionnel', 'it', 'couscous tradizionale');

            -- Level 2: semoule-artisanale
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('semoule-artisanale', 'semoule-artisanale', 2, l1_id, 'semoule artisanale')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('semoule-artisanale', 'fr', 'semoule artisanale');
            PERFORM insert_category_translations('semoule-artisanale', 'ar', 'سميد يدوي');
            PERFORM insert_category_translations('semoule-artisanale', 'en', 'artisan semolina');
            PERFORM insert_category_translations('semoule-artisanale', 'de', 'handwerklicher Grieß');
            PERFORM insert_category_translations('semoule-artisanale', 'es', 'sémola artesanal');
            PERFORM insert_category_translations('semoule-artisanale', 'it', 'semola artigianale');

            -- Level 2: epices-locales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('epices-locales', 'epices-locales', 2, l1_id, 'épices locales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('epices-locales', 'fr', 'épices locales');
            PERFORM insert_category_translations('epices-locales', 'ar', 'توابل محلية');
            PERFORM insert_category_translations('epices-locales', 'en', 'local spices');
            PERFORM insert_category_translations('epices-locales', 'de', 'lokale Gewürze');
            PERFORM insert_category_translations('epices-locales', 'es', 'especias locales');
            PERFORM insert_category_translations('epices-locales', 'it', 'spezie locali');

            -- Level 2: olives-artisanales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('olives-artisanales', 'olives-artisanales', 2, l1_id, 'olives artisanales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('olives-artisanales', 'fr', 'olives artisanales');
            PERFORM insert_category_translations('olives-artisanales', 'ar', 'زيتون يدوي');
            PERFORM insert_category_translations('olives-artisanales', 'en', 'artisan olives');
            PERFORM insert_category_translations('olives-artisanales', 'de', 'handwerkliche Oliven');
            PERFORM insert_category_translations('olives-artisanales', 'es', 'aceitunas artesanales');
            PERFORM insert_category_translations('olives-artisanales', 'it', 'olive artigianali');

            -- Level 2: conserves-traditionnelles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('conserves-traditionnelles', 'conserves-traditionnelles', 2, l1_id, 'conserves traditionnelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('conserves-traditionnelles', 'fr', 'conserves traditionnelles');
            PERFORM insert_category_translations('conserves-traditionnelles', 'ar', 'معلبات تقليدية');
            PERFORM insert_category_translations('conserves-traditionnelles', 'en', 'traditional preserves');
            PERFORM insert_category_translations('conserves-traditionnelles', 'de', 'traditionelle Konserven');
            PERFORM insert_category_translations('conserves-traditionnelles', 'es', 'conservas tradicionales');
            PERFORM insert_category_translations('conserves-traditionnelles', 'it', 'conserve tradizionali');

            -- Level 2: harissa-maison
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('harissa-maison', 'harissa-maison', 2, l1_id, 'harissa maison')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('harissa-maison', 'fr', 'harissa maison');
            PERFORM insert_category_translations('harissa-maison', 'ar', 'هريسة منزلية');
            PERFORM insert_category_translations('harissa-maison', 'en', 'homemade harissa');
            PERFORM insert_category_translations('harissa-maison', 'de', 'hausgemachte Harissa');
            PERFORM insert_category_translations('harissa-maison', 'es', 'harissa casera');
            PERFORM insert_category_translations('harissa-maison', 'it', 'harissa casalinga');

            -- Level 2: fromages-locaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fromages-locaux', 'fromages-locaux', 2, l1_id, 'fromages locaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fromages-locaux', 'fr', 'fromages locaux');
            PERFORM insert_category_translations('fromages-locaux', 'ar', 'أجبان محلية');
            PERFORM insert_category_translations('fromages-locaux', 'en', 'local cheeses');
            PERFORM insert_category_translations('fromages-locaux', 'de', 'lokale Käse');
            PERFORM insert_category_translations('fromages-locaux', 'es', 'quesos locales');
            PERFORM insert_category_translations('fromages-locaux', 'it', 'formaggi locali');

            -- Level 2: smen
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('smen', 'smen', 2, l1_id, 'beurre traditionnel (smen)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('smen', 'fr', 'beurre traditionnel (smen)');
            PERFORM insert_category_translations('smen', 'ar', 'سمن تقليدي');
            PERFORM insert_category_translations('smen', 'en', 'traditional butter (smen)');
            PERFORM insert_category_translations('smen', 'de', 'traditionelle Butter (Smen)');
            PERFORM insert_category_translations('smen', 'es', 'mantequilla tradicional (smen)');
            PERFORM insert_category_translations('smen', 'it', 'burro tradizionale (smen)');

            -- Level 2: confitures-artisanales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('confitures-artisanales', 'confitures-artisanales', 2, l1_id, 'confitures artisanales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('confitures-artisanales', 'fr', 'confitures artisanales');
            PERFORM insert_category_translations('confitures-artisanales', 'ar', 'مربيات يدوية');
            PERFORM insert_category_translations('confitures-artisanales', 'en', 'artisan jams');
            PERFORM insert_category_translations('confitures-artisanales', 'de', 'handwerkliche Konfitüren');
            PERFORM insert_category_translations('confitures-artisanales', 'es', 'mermeladas artesanales');
            PERFORM insert_category_translations('confitures-artisanales', 'it', 'confetture artigianali');

            -- Level 2: fruits-secs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fruits-secs', 'fruits-secs', 2, l1_id, 'fruits secs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fruits-secs', 'fr', 'fruits secs');
            PERFORM insert_category_translations('fruits-secs', 'ar', 'فواكه جافة');
            PERFORM insert_category_translations('fruits-secs', 'en', 'dried fruits');
            PERFORM insert_category_translations('fruits-secs', 'de', 'Trockenfrüchte');
            PERFORM insert_category_translations('fruits-secs', 'es', 'frutos secos');
            PERFORM insert_category_translations('fruits-secs', 'it', 'frutta secca');

            -- Level 2: plantes-medicinales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('plantes-medicinales', 'plantes-medicinales', 2, l1_id, 'plantes médicinales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('plantes-medicinales', 'fr', 'plantes médicinales');
            PERFORM insert_category_translations('plantes-medicinales', 'ar', 'نباتات طبية');
            PERFORM insert_category_translations('plantes-medicinales', 'en', 'medicinal plants');
            PERFORM insert_category_translations('plantes-medicinales', 'de', 'Heilpflanzen');
            PERFORM insert_category_translations('plantes-medicinales', 'es', 'plantas medicinales');
            PERFORM insert_category_translations('plantes-medicinales', 'it', 'piante medicinali');

            -- Level 2: herbes-aromatiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('herbes-aromatiques', 'herbes-aromatiques', 2, l1_id, 'herbes aromatiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('herbes-aromatiques', 'fr', 'herbes aromatiques');
            PERFORM insert_category_translations('herbes-aromatiques', 'ar', 'أعشاب عطرية');
            PERFORM insert_category_translations('herbes-aromatiques', 'en', 'aromatic herbs');
            PERFORM insert_category_translations('herbes-aromatiques', 'de', 'Aromatische Kräuter');
            PERFORM insert_category_translations('herbes-aromatiques', 'es', 'hierbas aromáticas');
            PERFORM insert_category_translations('herbes-aromatiques', 'it', 'erbe aromatiche');

            -- Level 2: the-saharien
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('the-saharien', 'the-saharien', 2, l1_id, 'thé saharien')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('the-saharien', 'fr', 'thé saharien');
            PERFORM insert_category_translations('the-saharien', 'ar', 'شاي صحراوي');
            PERFORM insert_category_translations('the-saharien', 'en', 'Saharan tea');
            PERFORM insert_category_translations('the-saharien', 'de', 'Sahara-Tee');
            PERFORM insert_category_translations('the-saharien', 'es', 'té sahariano');
            PERFORM insert_category_translations('the-saharien', 'it', 'tè sahariano');

            -- Level 2: cafe-algerien
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cafe-algerien', 'cafe-algerien', 2, l1_id, 'café algérien')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cafe-algerien', 'fr', 'café algérien');
            PERFORM insert_category_translations('cafe-algerien', 'ar', 'قهوة جزائرية');
            PERFORM insert_category_translations('cafe-algerien', 'en', 'Algerian coffee');
            PERFORM insert_category_translations('cafe-algerien', 'de', 'algerischer Kaffee');
            PERFORM insert_category_translations('cafe-algerien', 'es', 'café argelino');
            PERFORM insert_category_translations('cafe-algerien', 'it', 'caffè algerino');

            -- Level 2: farine-traditionnelle
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('farine-traditionnelle', 'farine-traditionnelle', 2, l1_id, 'farine traditionnelle')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('farine-traditionnelle', 'fr', 'farine traditionnelle');
            PERFORM insert_category_translations('farine-traditionnelle', 'ar', 'دقيق تقليدي');
            PERFORM insert_category_translations('farine-traditionnelle', 'en', 'traditional flour');
            PERFORM insert_category_translations('farine-traditionnelle', 'de', 'traditionelles Mehl');
            PERFORM insert_category_translations('farine-traditionnelle', 'es', 'harina tradicional');
            PERFORM insert_category_translations('farine-traditionnelle', 'it', 'farina tradizionale');

            -- Level 2: pates-artisanales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pates-artisanales', 'pates-artisanales', 2, l1_id, 'pâtes artisanales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pates-artisanales', 'fr', 'pâtes artisanales');
            PERFORM insert_category_translations('pates-artisanales', 'ar', 'معكرونة يدوية');
            PERFORM insert_category_translations('pates-artisanales', 'en', 'artisan pasta');
            PERFORM insert_category_translations('pates-artisanales', 'de', 'handwerkliche Pasta');
            PERFORM insert_category_translations('pates-artisanales', 'es', 'pastas artesanales');
            PERFORM insert_category_translations('pates-artisanales', 'it', 'pasta artigianale');

            -- Level 2: produits-apicoles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-apicoles', 'produits-apicoles', 2, l1_id, 'produits apicoles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('produits-apicoles', 'fr', 'produits apicoles');
            PERFORM insert_category_translations('produits-apicoles', 'ar', 'منتجات نحل');
            PERFORM insert_category_translations('produits-apicoles', 'en', 'beekeeping products');
            PERFORM insert_category_translations('produits-apicoles', 'de', 'Imkereierzeugnisse');
            PERFORM insert_category_translations('produits-apicoles', 'es', 'productos apícolas');
            PERFORM insert_category_translations('produits-apicoles', 'it', 'prodotti apistici');

            -- Level 2: huiles-vegetales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('huiles-vegetales', 'huiles-vegetales', 2, l1_id, 'huiles végétales naturelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('huiles-vegetales', 'fr', 'huiles végétales naturelles');
            PERFORM insert_category_translations('huiles-vegetales', 'ar', 'زيوت نباتية طبيعية');
            PERFORM insert_category_translations('huiles-vegetales', 'en', 'natural vegetable oils');
            PERFORM insert_category_translations('huiles-vegetales', 'de', 'natürliche Pflanzenöle');
            PERFORM insert_category_translations('huiles-vegetales', 'es', 'aceites vegetales naturales');
            PERFORM insert_category_translations('huiles-vegetales', 'it', 'oli vegetali naturali');

            -- Level 2: produits-sahariens
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-sahariens', 'produits-sahariens', 2, l1_id, 'produits sahariens du terroir')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('produits-sahariens', 'fr', 'produits sahariens du terroir');
            PERFORM insert_category_translations('produits-sahariens', 'ar', 'منتجات صحراوية محلية');
            PERFORM insert_category_translations('produits-sahariens', 'en', 'Saharan terroir products');
            PERFORM insert_category_translations('produits-sahariens', 'de', 'Sahara-Terroir-Produkte');
            PERFORM insert_category_translations('produits-sahariens', 'es', 'productos del terroir sahariano');
            PERFORM insert_category_translations('produits-sahariens', 'it', 'prodotti del terroir sahariano');

            -- Level 2: produits-agricoles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-agricoles', 'produits-agricoles', 2, l1_id, 'produits agricoles locaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('produits-agricoles', 'fr', 'produits agricoles locaux');
            PERFORM insert_category_translations('produits-agricoles', 'ar', 'منتجات زراعية محلية');
            PERFORM insert_category_translations('produits-agricoles', 'en', 'local agricultural products');
            PERFORM insert_category_translations('produits-agricoles', 'de', 'lokale Agrarprodukte');
            PERFORM insert_category_translations('produits-agricoles', 'es', 'productos agrícolas locales');
            PERFORM insert_category_translations('produits-agricoles', 'it', 'prodotti agricoli locali');

            -- Level 2: conserves-bio
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('conserves-bio', 'conserves-bio', 2, l1_id, 'conserves bio')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('conserves-bio', 'fr', 'conserves bio');
            PERFORM insert_category_translations('conserves-bio', 'ar', 'معلبات عضوية');
            PERFORM insert_category_translations('conserves-bio', 'en', 'organic preserves');
            PERFORM insert_category_translations('conserves-bio', 'de', 'Bio-Konserven');
            PERFORM insert_category_translations('conserves-bio', 'es', 'conservas orgánicas');
            PERFORM insert_category_translations('conserves-bio', 'it', 'conserve biologiche');

            -- Level 2: vinaigre-naturel
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vinaigre-naturel', 'vinaigre-naturel', 2, l1_id, 'vinaigre naturel')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('vinaigre-naturel', 'fr', 'vinaigre naturel');
            PERFORM insert_category_translations('vinaigre-naturel', 'ar', 'خل طبيعي');
            PERFORM insert_category_translations('vinaigre-naturel', 'en', 'natural vinegar');
            PERFORM insert_category_translations('vinaigre-naturel', 'de', 'natürlicher Essig');
            PERFORM insert_category_translations('vinaigre-naturel', 'es', 'vinagre natural');
            PERFORM insert_category_translations('vinaigre-naturel', 'it', 'aceto naturale');

            -- Level 2: caroube
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('caroube', 'caroube', 2, l1_id, 'produits à base de caroube')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('caroube', 'fr', 'produits à base de caroube');
            PERFORM insert_category_translations('caroube', 'ar', 'منتجات الخروب');
            PERFORM insert_category_translations('caroube', 'en', 'carob-based products');
            PERFORM insert_category_translations('caroube', 'de', 'Johannisbrot-Produkte');
            PERFORM insert_category_translations('caroube', 'es', 'productos de algarrobo');
            PERFORM insert_category_translations('caroube', 'it', 'prodotti a base di carruba');

            -- Level 2: sirop-dattes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sirop-dattes', 'sirop-dattes', 2, l1_id, 'sirop de dattes (rob)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sirop-dattes', 'fr', 'sirop de dattes (rob)');
            PERFORM insert_category_translations('sirop-dattes', 'ar', 'دبس التمر (روب)');
            PERFORM insert_category_translations('sirop-dattes', 'en', 'date syrup (rob)');
            PERFORM insert_category_translations('sirop-dattes', 'de', 'Dattelsirup (Rob)');
            PERFORM insert_category_translations('sirop-dattes', 'es', 'jarabe de dátiles (rob)');
            PERFORM insert_category_translations('sirop-dattes', 'it', 'sciroppo di datteri (rob)');

            -- Level 2: gateaux-dattes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gateaux-dattes', 'gateaux-dattes', 2, l1_id, 'gâteaux de dattes artisanaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gateaux-dattes', 'fr', 'gâteaux de dattes artisanaux');
            PERFORM insert_category_translations('gateaux-dattes', 'ar', 'حلويات تمر يدوية');
            PERFORM insert_category_translations('gateaux-dattes', 'en', 'artisan date cakes');
            PERFORM insert_category_translations('gateaux-dattes', 'de', 'handwerkliche Dattelgebäck');
            PERFORM insert_category_translations('gateaux-dattes', 'es', 'pasteles de dátiles artesanales');
            PERFORM insert_category_translations('gateaux-dattes', 'it', 'dolci ai datteri artigianali');

        -- Level 1: plats-traditionnels
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('plats-traditionnels', 'plats-traditionnels', 1, root_id, 'Plats traditionnels algériens')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('plats-traditionnels', 'fr', 'Plats traditionnels algériens');
        PERFORM insert_category_translations('plats-traditionnels', 'ar', 'أطباق تقليدية جزائرية');
        PERFORM insert_category_translations('plats-traditionnels', 'en', 'Algerian traditional dishes');
        PERFORM insert_category_translations('plats-traditionnels', 'de', 'Algerische traditionelle Gerichte');
        PERFORM insert_category_translations('plats-traditionnels', 'es', 'Platos tradicionales argelinos');
        PERFORM insert_category_translations('plats-traditionnels', 'it', 'Piatti tradizionali algerini');

            -- Level 2: couscous-regions
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('couscous-regions', 'couscous-regions', 2, l1_id, 'couscous (kabyle, chaoui, constantinois, oranais)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('couscous-regions', 'fr', 'couscous (kabyle, chaoui, constantinois, oranais)');
            PERFORM insert_category_translations('couscous-regions', 'ar', 'كسكس (قبائلي، شاوي، قسنطيني، وهراني)');
            PERFORM insert_category_translations('couscous-regions', 'en', 'couscous (Kabyle, Chaoui, Constantinois, Oranais)');
            PERFORM insert_category_translations('couscous-regions', 'de', 'Couscous (Kabyle, Chaoui, Constantine, Oran)');
            PERFORM insert_category_translations('couscous-regions', 'es', 'cuscús (cabila, chaoui, constantina, oran)');
            PERFORM insert_category_translations('couscous-regions', 'it', 'couscous (kabyle, chaoui, costantino, oranese)');

            -- Level 2: rechta
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('rechta', 'rechta', 2, l1_id, 'rechta')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('rechta', 'fr', 'rechta');
            PERFORM insert_category_translations('rechta', 'ar', 'رشتة');
            PERFORM insert_category_translations('rechta', 'en', 'rechta');
            PERFORM insert_category_translations('rechta', 'de', 'Rechta');
            PERFORM insert_category_translations('rechta', 'es', 'rechta');
            PERFORM insert_category_translations('rechta', 'it', 'rechta');

            -- Level 2: chakhchoukha
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chakhchoukha', 'chakhchoukha', 2, l1_id, 'chakhchoukha')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chakhchoukha', 'fr', 'chakhchoukha');
            PERFORM insert_category_translations('chakhchoukha', 'ar', 'شخشوخة');
            PERFORM insert_category_translations('chakhchoukha', 'en', 'chakhchoukha');
            PERFORM insert_category_translations('chakhchoukha', 'de', 'Chakhchoukha');
            PERFORM insert_category_translations('chakhchoukha', 'es', 'chakhchoukha');
            PERFORM insert_category_translations('chakhchoukha', 'it', 'chakhchoukha');

            -- Level 2: trid
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('trid', 'trid', 2, l1_id, 'trid')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('trid', 'fr', 'trid');
            PERFORM insert_category_translations('trid', 'ar', 'طريد');
            PERFORM insert_category_translations('trid', 'en', 'trid');
            PERFORM insert_category_translations('trid', 'de', 'Trid');
            PERFORM insert_category_translations('trid', 'es', 'trid');
            PERFORM insert_category_translations('trid', 'it', 'trid');

            -- Level 2: dolma
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('dolma', 'dolma', 2, l1_id, 'dolma')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('dolma', 'fr', 'dolma');
            PERFORM insert_category_translations('dolma', 'ar', 'دولمة');
            PERFORM insert_category_translations('dolma', 'en', 'dolma');
            PERFORM insert_category_translations('dolma', 'de', 'Dolma');
            PERFORM insert_category_translations('dolma', 'es', 'dolma');
            PERFORM insert_category_translations('dolma', 'it', 'dolma');

            -- Level 2: tajine-zitoune
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tajine-zitoune', 'tajine-zitoune', 2, l1_id, 'tajine zitoune')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tajine-zitoune', 'fr', 'tajine zitoune');
            PERFORM insert_category_translations('tajine-zitoune', 'ar', 'طاجين الزيتون');
            PERFORM insert_category_translations('tajine-zitoune', 'en', 'tajine zitoune');
            PERFORM insert_category_translations('tajine-zitoune', 'de', 'Tajine Zitoune');
            PERFORM insert_category_translations('tajine-zitoune', 'es', 'tajín zitoune');
            PERFORM insert_category_translations('tajine-zitoune', 'it', 'tajine zitoune');

            -- Level 2: tajine-lahlou
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tajine-lahlou', 'tajine-lahlou', 2, l1_id, 'tajine lahlou')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tajine-lahlou', 'fr', 'tajine lahlou');
            PERFORM insert_category_translations('tajine-lahlou', 'ar', 'طاجين الحلو');
            PERFORM insert_category_translations('tajine-lahlou', 'en', 'tajine lahlou');
            PERFORM insert_category_translations('tajine-lahlou', 'de', 'Tajine Lahlou');
            PERFORM insert_category_translations('tajine-lahlou', 'es', 'tajín dulce');
            PERFORM insert_category_translations('tajine-lahlou', 'it', 'tajine dolce');

            -- Level 2: chorba-frik
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chorba-frik', 'chorba-frik', 2, l1_id, 'chorba frik')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chorba-frik', 'fr', 'chorba frik');
            PERFORM insert_category_translations('chorba-frik', 'ar', 'شوربة فريك');
            PERFORM insert_category_translations('chorba-frik', 'en', 'chorba frik');
            PERFORM insert_category_translations('chorba-frik', 'de', 'Chorba Frik');
            PERFORM insert_category_translations('chorba-frik', 'es', 'chorba frik');
            PERFORM insert_category_translations('chorba-frik', 'it', 'chorba frik');

            -- Level 2: hrira
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('hrira', 'hrira', 2, l1_id, 'hrira')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('hrira', 'fr', 'hrira');
            PERFORM insert_category_translations('hrira', 'ar', 'حريرة');
            PERFORM insert_category_translations('hrira', 'en', 'hrira');
            PERFORM insert_category_translations('hrira', 'de', 'Hrira');
            PERFORM insert_category_translations('hrira', 'es', 'hrira');
            PERFORM insert_category_translations('hrira', 'it', 'hrira');

            -- Level 2: lham-lahlou
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lham-lahlou', 'lham-lahlou', 2, l1_id, 'lham lahlou')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lham-lahlou', 'fr', 'lham lahlou');
            PERFORM insert_category_translations('lham-lahlou', 'ar', 'لحم الحلو');
            PERFORM insert_category_translations('lham-lahlou', 'en', 'lham lahlou');
            PERFORM insert_category_translations('lham-lahlou', 'de', 'Lham Lahlou');
            PERFORM insert_category_translations('lham-lahlou', 'es', 'lham lahlou');
            PERFORM insert_category_translations('lham-lahlou', 'it', 'lham lahlou');

            -- Level 2: bourek-sale
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bourek-sale', 'bourek-sale', 2, l1_id, 'bourek')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bourek-sale', 'fr', 'bourek');
            PERFORM insert_category_translations('bourek-sale', 'ar', 'بوراك');
            PERFORM insert_category_translations('bourek-sale', 'en', 'bourek');
            PERFORM insert_category_translations('bourek-sale', 'de', 'Bourek');
            PERFORM insert_category_translations('bourek-sale', 'es', 'bourek');
            PERFORM insert_category_translations('bourek-sale', 'it', 'bourek');

            -- Level 2: mhadjeb
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mhadjeb', 'mhadjeb', 2, l1_id, 'mhadjeb')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mhadjeb', 'fr', 'mhadjeb');
            PERFORM insert_category_translations('mhadjeb', 'ar', 'محاجب');
            PERFORM insert_category_translations('mhadjeb', 'en', 'mhadjeb');
            PERFORM insert_category_translations('mhadjeb', 'de', 'Mhadjeb');
            PERFORM insert_category_translations('mhadjeb', 'es', 'mhadjeb');
            PERFORM insert_category_translations('mhadjeb', 'it', 'mhadjeb');

            -- Level 2: kesra
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('kesra', 'kesra', 2, l1_id, 'kesra')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('kesra', 'fr', 'kesra');
            PERFORM insert_category_translations('kesra', 'ar', 'كسرة');
            PERFORM insert_category_translations('kesra', 'en', 'kesra');
            PERFORM insert_category_translations('kesra', 'de', 'Kesra');
            PERFORM insert_category_translations('kesra', 'es', 'kesra');
            PERFORM insert_category_translations('kesra', 'it', 'kesra');

            -- Level 2: baghrir-sale
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('baghrir-sale', 'baghrir-sale', 2, l1_id, 'baghrir salé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('baghrir-sale', 'fr', 'baghrir salé');
            PERFORM insert_category_translations('baghrir-sale', 'ar', 'بغرير مالح');
            PERFORM insert_category_translations('baghrir-sale', 'en', 'savory baghrir');
            PERFORM insert_category_translations('baghrir-sale', 'de', 'herzhafter Baghrir');
            PERFORM insert_category_translations('baghrir-sale', 'es', 'baghrir salado');
            PERFORM insert_category_translations('baghrir-sale', 'it', 'baghrir salato');

            -- Level 2: chtitha-djedj
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chtitha-djedj', 'chtitha-djedj', 2, l1_id, 'chtitha djedj')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chtitha-djedj', 'fr', 'chtitha djedj');
            PERFORM insert_category_translations('chtitha-djedj', 'ar', 'شطِيطة دجاج');
            PERFORM insert_category_translations('chtitha-djedj', 'en', 'chtitha djedj');
            PERFORM insert_category_translations('chtitha-djedj', 'de', 'Chtitha Djedj');
            PERFORM insert_category_translations('chtitha-djedj', 'es', 'chtitha djedj');
            PERFORM insert_category_translations('chtitha-djedj', 'it', 'chtitha djedj');

            -- Level 2: chtitha-kofta
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chtitha-kofta', 'chtitha-kofta', 2, l1_id, 'chtitha kofta')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chtitha-kofta', 'fr', 'chtitha kofta');
            PERFORM insert_category_translations('chtitha-kofta', 'ar', 'شطِيطة كفتة');
            PERFORM insert_category_translations('chtitha-kofta', 'en', 'chtitha kofta');
            PERFORM insert_category_translations('chtitha-kofta', 'de', 'Chtitha Kofta');
            PERFORM insert_category_translations('chtitha-kofta', 'es', 'chtitha kofta');
            PERFORM insert_category_translations('chtitha-kofta', 'it', 'chtitha kofta');

            -- Level 2: berkoukes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('berkoukes', 'berkoukes', 2, l1_id, 'berkoukes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('berkoukes', 'fr', 'berkoukes');
            PERFORM insert_category_translations('berkoukes', 'ar', 'بركوكس');
            PERFORM insert_category_translations('berkoukes', 'en', 'berkoukes');
            PERFORM insert_category_translations('berkoukes', 'de', 'Berkoukes');
            PERFORM insert_category_translations('berkoukes', 'es', 'berkoukes');
            PERFORM insert_category_translations('berkoukes', 'it', 'berkoukes');

            -- Level 2: mahjouba
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mahjouba', 'mahjouba', 2, l1_id, 'mahjouba')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mahjouba', 'fr', 'mahjouba');
            PERFORM insert_category_translations('mahjouba', 'ar', 'محجوبة');
            PERFORM insert_category_translations('mahjouba', 'en', 'mahjouba');
            PERFORM insert_category_translations('mahjouba', 'de', 'Mahjouba');
            PERFORM insert_category_translations('mahjouba', 'es', 'mahjouba');
            PERFORM insert_category_translations('mahjouba', 'it', 'mahjouba');

            -- Level 2: seffa
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('seffa', 'seffa', 2, l1_id, 'seffa')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('seffa', 'fr', 'seffa');
            PERFORM insert_category_translations('seffa', 'ar', 'سفة');
            PERFORM insert_category_translations('seffa', 'en', 'seffa');
            PERFORM insert_category_translations('seffa', 'de', 'Seffa');
            PERFORM insert_category_translations('seffa', 'es', 'seffa');
            PERFORM insert_category_translations('seffa', 'it', 'seffa');

            -- Level 2: plats-sahariens
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('plats-sahariens', 'plats-sahariens', 2, l1_id, 'plats sahariens')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('plats-sahariens', 'fr', 'plats sahariens');
            PERFORM insert_category_translations('plats-sahariens', 'ar', 'أطباق صحراوية');
            PERFORM insert_category_translations('plats-sahariens', 'en', 'Saharan dishes');
            PERFORM insert_category_translations('plats-sahariens', 'de', 'saharische Gerichte');
            PERFORM insert_category_translations('plats-sahariens', 'es', 'platos saharianos');
            PERFORM insert_category_translations('plats-sahariens', 'it', 'piatti sahariani');

            -- Level 2: plats-kabyles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('plats-kabyles', 'plats-kabyles', 2, l1_id, 'plats kabyles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('plats-kabyles', 'fr', 'plats kabyles');
            PERFORM insert_category_translations('plats-kabyles', 'ar', 'أطباق قبائلية');
            PERFORM insert_category_translations('plats-kabyles', 'en', 'Kabyle dishes');
            PERFORM insert_category_translations('plats-kabyles', 'de', 'kabylische Gerichte');
            PERFORM insert_category_translations('plats-kabyles', 'es', 'platos cabiles');
            PERFORM insert_category_translations('plats-kabyles', 'it', 'piatti kabyle');

            -- Level 2: plats-chaouis
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('plats-chaouis', 'plats-chaouis', 2, l1_id, 'plats chaouis')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('plats-chaouis', 'fr', 'plats chaouis');
            PERFORM insert_category_translations('plats-chaouis', 'ar', 'أطباق شاوية');
            PERFORM insert_category_translations('plats-chaouis', 'en', 'Chaoui dishes');
            PERFORM insert_category_translations('plats-chaouis', 'de', 'chaouische Gerichte');
            PERFORM insert_category_translations('plats-chaouis', 'es', 'platos chaoui');
            PERFORM insert_category_translations('plats-chaouis', 'it', 'piatti chaoui');

            -- Level 2: plats-oranais
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('plats-oranais', 'plats-oranais', 2, l1_id, 'plats oranais')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('plats-oranais', 'fr', 'plats oranais');
            PERFORM insert_category_translations('plats-oranais', 'ar', 'أطباق وهرانية');
            PERFORM insert_category_translations('plats-oranais', 'en', 'Oran dishes');
            PERFORM insert_category_translations('plats-oranais', 'de', 'oranische Gerichte');
            PERFORM insert_category_translations('plats-oranais', 'es', 'platos oraneses');
            PERFORM insert_category_translations('plats-oranais', 'it', 'piatti oranese');

            -- Level 2: plats-constantinois
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('plats-constantinois', 'plats-constantinois', 2, l1_id, 'plats constantinois')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('plats-constantinois', 'fr', 'plats constantinois');
            PERFORM insert_category_translations('plats-constantinois', 'ar', 'أطباق قسنطينية');
            PERFORM insert_category_translations('plats-constantinois', 'en', 'Constantine dishes');
            PERFORM insert_category_translations('plats-constantinois', 'de', 'constantinische Gerichte');
            PERFORM insert_category_translations('plats-constantinois', 'es', 'platos de constantina');
            PERFORM insert_category_translations('plats-constantinois', 'it', 'piatti costantinesi');

            -- Level 2: grillades
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('grillades', 'grillades', 2, l1_id, 'grillades traditionnelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('grillades', 'fr', 'grillades traditionnelles');
            PERFORM insert_category_translations('grillades', 'ar', 'مشويات تقليدية');
            PERFORM insert_category_translations('grillades', 'en', 'traditional grills');
            PERFORM insert_category_translations('grillades', 'de', 'traditionelle Grills');
            PERFORM insert_category_translations('grillades', 'es', 'parrilladas tradicionales');
            PERFORM insert_category_translations('grillades', 'it', 'grigliate tradizionali');

            -- Level 2: poissons-algeriens
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('poissons-algeriens', 'poissons-algeriens', 2, l1_id, 'poissons façon algérienne')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('poissons-algeriens', 'fr', 'poissons façon algérienne');
            PERFORM insert_category_translations('poissons-algeriens', 'ar', 'أسماك على الطريقة الجزائرية');
            PERFORM insert_category_translations('poissons-algeriens', 'en', 'Algerian-style fish');
            PERFORM insert_category_translations('poissons-algeriens', 'de', 'Fisch auf algerische Art');
            PERFORM insert_category_translations('poissons-algeriens', 'es', 'pescados al estilo argelino');
            PERFORM insert_category_translations('poissons-algeriens', 'it', 'pesce alla algerina');

            -- Level 2: plats-mijotes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('plats-mijotes', 'plats-mijotes', 2, l1_id, 'plats mijotés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('plats-mijotes', 'fr', 'plats mijotés');
            PERFORM insert_category_translations('plats-mijotes', 'ar', 'أطباق مطهية على نار هادئة');
            PERFORM insert_category_translations('plats-mijotes', 'en', 'slow-cooked stews');
            PERFORM insert_category_translations('plats-mijotes', 'de', 'Schmorgerichte');
            PERFORM insert_category_translations('plats-mijotes', 'es', 'guisos');
            PERFORM insert_category_translations('plats-mijotes', 'it', 'piatti in umido');

            -- Level 2: legumes-terroir
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('legumes-terroir', 'legumes-terroir', 2, l1_id, 'plats à base de légumes du terroir')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('legumes-terroir', 'fr', 'plats à base de légumes du terroir');
            PERFORM insert_category_translations('legumes-terroir', 'ar', 'أطباق بخضروات محلية');
            PERFORM insert_category_translations('legumes-terroir', 'en', 'terroir vegetable dishes');
            PERFORM insert_category_translations('legumes-terroir', 'de', 'Gerichte mit regionalem Gemüse');
            PERFORM insert_category_translations('legumes-terroir', 'es', 'platos con verduras del terroir');
            PERFORM insert_category_translations('legumes-terroir', 'it', 'piatti con verdure del territorio');

            -- Level 2: tajines-regionaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tajines-regionaux', 'tajines-regionaux', 2, l1_id, 'tajines régionaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tajines-regionaux', 'fr', 'tajines régionaux');
            PERFORM insert_category_translations('tajines-regionaux', 'ar', 'طواجن محلية');
            PERFORM insert_category_translations('tajines-regionaux', 'en', 'regional tajines');
            PERFORM insert_category_translations('tajines-regionaux', 'de', 'regionale Tajines');
            PERFORM insert_category_translations('tajines-regionaux', 'es', 'tajines regionales');
            PERFORM insert_category_translations('tajines-regionaux', 'it', 'tajine regionali');

            -- Level 2: specialites-familiales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('specialites-familiales', 'specialites-familiales', 2, l1_id, 'spécialités familiales traditionnelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('specialites-familiales', 'fr', 'spécialités familiales traditionnelles');
            PERFORM insert_category_translations('specialites-familiales', 'ar', 'تخصصات عائلية تقليدية');
            PERFORM insert_category_translations('specialites-familiales', 'en', 'traditional family specialties');
            PERFORM insert_category_translations('specialites-familiales', 'de', 'traditionelle Familiengerichte');
            PERFORM insert_category_translations('specialites-familiales', 'es', 'especialidades familiares tradicionales');
            PERFORM insert_category_translations('specialites-familiales', 'it', 'specialità familiari tradizionali');

            -- Level 2: taguella
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('taguella', 'taguella', 2, l1_id, 'taguella (pain touareg)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('taguella', 'fr', 'taguella (pain touareg)');
            PERFORM insert_category_translations('taguella', 'ar', 'تاغولا (خبز طوارقي)');
            PERFORM insert_category_translations('taguella', 'en', 'taguella (Tuareg bread)');
            PERFORM insert_category_translations('taguella', 'de', 'Taguella (Tuareg-Brot)');
            PERFORM insert_category_translations('taguella', 'es', 'taguella (pan tuareg)');
            PERFORM insert_category_translations('taguella', 'it', 'taguella (pane tuareg)');

        -- Level 1: patisseries-traditionnelles
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('patisseries-traditionnelles', 'patisseries-traditionnelles', 1, root_id, 'Pâtisseries traditionnelles algériennes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('patisseries-traditionnelles', 'fr', 'Pâtisseries traditionnelles algériennes');
        PERFORM insert_category_translations('patisseries-traditionnelles', 'ar', 'حلويات تقليدية جزائرية');
        PERFORM insert_category_translations('patisseries-traditionnelles', 'en', 'Algerian traditional pastries');
        PERFORM insert_category_translations('patisseries-traditionnelles', 'de', 'Algerische traditionelle Backwaren');
        PERFORM insert_category_translations('patisseries-traditionnelles', 'es', 'Repostería tradicional argelina');
        PERFORM insert_category_translations('patisseries-traditionnelles', 'it', 'Pasticceria tradizionale algerina');

            -- Level 2: makroud
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('makroud', 'makroud', 2, l1_id, 'makroud')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('makroud', 'fr', 'makroud');
            PERFORM insert_category_translations('makroud', 'ar', 'مقروط');
            PERFORM insert_category_translations('makroud', 'en', 'makroud');
            PERFORM insert_category_translations('makroud', 'de', 'Makroud');
            PERFORM insert_category_translations('makroud', 'es', 'makroud');
            PERFORM insert_category_translations('makroud', 'it', 'makroud');

            -- Level 2: baklawa
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('baklawa', 'baklawa', 2, l1_id, 'baklawa')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('baklawa', 'fr', 'baklawa');
            PERFORM insert_category_translations('baklawa', 'ar', 'بقلاوة');
            PERFORM insert_category_translations('baklawa', 'en', 'baklawa');
            PERFORM insert_category_translations('baklawa', 'de', 'Baklawa');
            PERFORM insert_category_translations('baklawa', 'es', 'baklawa');
            PERFORM insert_category_translations('baklawa', 'it', 'baklawa');

            -- Level 2: kalb-ellouz
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('kalb-ellouz', 'kalb-ellouz', 2, l1_id, 'kalb ellouz')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('kalb-ellouz', 'fr', 'kalb ellouz');
            PERFORM insert_category_translations('kalb-ellouz', 'ar', 'قلب اللوز');
            PERFORM insert_category_translations('kalb-ellouz', 'en', 'kalb ellouz');
            PERFORM insert_category_translations('kalb-ellouz', 'de', 'Kalb Ellouz');
            PERFORM insert_category_translations('kalb-ellouz', 'es', 'kalb ellouz');
            PERFORM insert_category_translations('kalb-ellouz', 'it', 'kalb ellouz');

            -- Level 2: dziriette
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('dziriette', 'dziriette', 2, l1_id, 'dziriette')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('dziriette', 'fr', 'dziriette');
            PERFORM insert_category_translations('dziriette', 'ar', 'زيرية');
            PERFORM insert_category_translations('dziriette', 'en', 'dziriette');
            PERFORM insert_category_translations('dziriette', 'de', 'Dziriette');
            PERFORM insert_category_translations('dziriette', 'es', 'dziriette');
            PERFORM insert_category_translations('dziriette', 'it', 'dziriette');

            -- Level 2: tcharek-el-ariane
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tcharek-el-ariane', 'tcharek-el-ariane', 2, l1_id, 'tcharek el ariane')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tcharek-el-ariane', 'fr', 'tcharek el ariane');
            PERFORM insert_category_translations('tcharek-el-ariane', 'ar', 'شاراك العريان');
            PERFORM insert_category_translations('tcharek-el-ariane', 'en', 'tcharek el ariane');
            PERFORM insert_category_translations('tcharek-el-ariane', 'de', 'Tcharek El Arian');
            PERFORM insert_category_translations('tcharek-el-ariane', 'es', 'tcharek el ariane');
            PERFORM insert_category_translations('tcharek-el-ariane', 'it', 'tcharek el ariane');

            -- Level 2: griouech
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('griouech', 'griouech', 2, l1_id, 'griouech')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('griouech', 'fr', 'griouech');
            PERFORM insert_category_translations('griouech', 'ar', 'غريوش');
            PERFORM insert_category_translations('griouech', 'en', 'griouech');
            PERFORM insert_category_translations('griouech', 'de', 'Griouech');
            PERFORM insert_category_translations('griouech', 'es', 'griouech');
            PERFORM insert_category_translations('griouech', 'it', 'griouech');

            -- Level 2: samsa
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('samsa', 'samsa', 2, l1_id, 'samsa')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('samsa', 'fr', 'samsa');
            PERFORM insert_category_translations('samsa', 'ar', 'سمصة');
            PERFORM insert_category_translations('samsa', 'en', 'samsa');
            PERFORM insert_category_translations('samsa', 'de', 'Samsa');
            PERFORM insert_category_translations('samsa', 'es', 'samsa');
            PERFORM insert_category_translations('samsa', 'it', 'samsa');

            -- Level 2: msemen-sucre
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('msemen-sucre', 'msemen-sucre', 2, l1_id, 'msemen sucré')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('msemen-sucre', 'fr', 'msemen sucré');
            PERFORM insert_category_translations('msemen-sucre', 'ar', 'مسمن حلو');
            PERFORM insert_category_translations('msemen-sucre', 'en', 'sweet msemen');
            PERFORM insert_category_translations('msemen-sucre', 'de', 'süßer Msemen');
            PERFORM insert_category_translations('msemen-sucre', 'es', 'msemen dulce');
            PERFORM insert_category_translations('msemen-sucre', 'it', 'msemen dolce');

            -- Level 2: baghrir-miel
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('baghrir-miel', 'baghrir-miel', 2, l1_id, 'baghrir au miel')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('baghrir-miel', 'fr', 'baghrir au miel');
            PERFORM insert_category_translations('baghrir-miel', 'ar', 'بغرير بالعسل');
            PERFORM insert_category_translations('baghrir-miel', 'en', 'baghrir with honey');
            PERFORM insert_category_translations('baghrir-miel', 'de', 'Baghrir mit Honig');
            PERFORM insert_category_translations('baghrir-miel', 'es', 'baghrir con miel');
            PERFORM insert_category_translations('baghrir-miel', 'it', 'baghrir al miele');

            -- Level 2: bourek-hlou
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bourek-hlou', 'bourek-hlou', 2, l1_id, 'bourek hlou')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bourek-hlou', 'fr', 'bourek hlou');
            PERFORM insert_category_translations('bourek-hlou', 'ar', 'بوراك حلو');
            PERFORM insert_category_translations('bourek-hlou', 'en', 'bourek hlou');
            PERFORM insert_category_translations('bourek-hlou', 'de', 'Bourek Hlou');
            PERFORM insert_category_translations('bourek-hlou', 'es', 'bourek hlou');
            PERFORM insert_category_translations('bourek-hlou', 'it', 'bourek hlou');

            -- Level 2: tamina
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tamina', 'tamina', 2, l1_id, 'tamina')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tamina', 'fr', 'tamina');
            PERFORM insert_category_translations('tamina', 'ar', 'طمينة');
            PERFORM insert_category_translations('tamina', 'en', 'tamina');
            PERFORM insert_category_translations('tamina', 'de', 'Tamina');
            PERFORM insert_category_translations('tamina', 'es', 'tamina');
            PERFORM insert_category_translations('tamina', 'it', 'tamina');

            -- Level 2: zlabia
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('zlabia', 'zlabia', 2, l1_id, 'zlabia')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('zlabia', 'fr', 'zlabia');
            PERFORM insert_category_translations('zlabia', 'ar', 'زلابية');
            PERFORM insert_category_translations('zlabia', 'en', 'zlabia');
            PERFORM insert_category_translations('zlabia', 'de', 'Zlabia');
            PERFORM insert_category_translations('zlabia', 'es', 'zlabia');
            PERFORM insert_category_translations('zlabia', 'it', 'zlabia');

            -- Level 2: khfaf
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('khfaf', 'khfaf', 2, l1_id, 'khfaf')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('khfaf', 'fr', 'khfaf');
            PERFORM insert_category_translations('khfaf', 'ar', 'خفاف');
            PERFORM insert_category_translations('khfaf', 'en', 'khfaf');
            PERFORM insert_category_translations('khfaf', 'de', 'Khfaf');
            PERFORM insert_category_translations('khfaf', 'es', 'khfaf');
            PERFORM insert_category_translations('khfaf', 'it', 'khfaf');

            -- Level 2: mlawi-miel
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mlawi-miel', 'mlawi-miel', 2, l1_id, 'mlawi au miel')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mlawi-miel', 'fr', 'mlawi au miel');
            PERFORM insert_category_translations('mlawi-miel', 'ar', 'ملوي بالعسل');
            PERFORM insert_category_translations('mlawi-miel', 'en', 'mlawi with honey');
            PERFORM insert_category_translations('mlawi-miel', 'de', 'Mlawi mit Honig');
            PERFORM insert_category_translations('mlawi-miel', 'es', 'mlawi con miel');
            PERFORM insert_category_translations('mlawi-miel', 'it', 'mlawi al miele');

            -- Level 2: khobz-el-bey
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('khobz-el-bey', 'khobz-el-bey', 2, l1_id, 'khobz el bey')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('khobz-el-bey', 'fr', 'khobz el bey');
            PERFORM insert_category_translations('khobz-el-bey', 'ar', 'خبز الباي');
            PERFORM insert_category_translations('khobz-el-bey', 'en', 'khobz el bey');
            PERFORM insert_category_translations('khobz-el-bey', 'de', 'Khobz El Bey');
            PERFORM insert_category_translations('khobz-el-bey', 'es', 'khobz el bey');
            PERFORM insert_category_translations('khobz-el-bey', 'it', 'khobz el bey');

            -- Level 2: boussou-la-tmessou
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('boussou-la-tmessou', 'boussou-la-tmessou', 2, l1_id, 'boussou la tmessou')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('boussou-la-tmessou', 'fr', 'boussou la tmessou');
            PERFORM insert_category_translations('boussou-la-tmessou', 'ar', 'بوصو لا تمسو');
            PERFORM insert_category_translations('boussou-la-tmessou', 'en', 'boussou la tmessou');
            PERFORM insert_category_translations('boussou-la-tmessou', 'de', 'Boussou La Tmessou');
            PERFORM insert_category_translations('boussou-la-tmessou', 'es', 'boussou la tmessou');
            PERFORM insert_category_translations('boussou-la-tmessou', 'it', 'boussou la tmessou');

            -- Level 2: mouna-oranaise
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mouna-oranaise', 'mouna-oranaise', 2, l1_id, 'mouna oranaise')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mouna-oranaise', 'fr', 'mouna oranaise');
            PERFORM insert_category_translations('mouna-oranaise', 'ar', 'مونة وهرانية');
            PERFORM insert_category_translations('mouna-oranaise', 'en', 'mouna oranaise');
            PERFORM insert_category_translations('mouna-oranaise', 'de', 'Mouna Oranaise');
            PERFORM insert_category_translations('mouna-oranaise', 'es', 'mouna oranaise');
            PERFORM insert_category_translations('mouna-oranaise', 'it', 'mouna oranaise');

            -- Level 2: mkhabaz
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mkhabaz', 'mkhabaz', 2, l1_id, 'mkhabaz')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mkhabaz', 'fr', 'mkhabaz');
            PERFORM insert_category_translations('mkhabaz', 'ar', 'مخباز');
            PERFORM insert_category_translations('mkhabaz', 'en', 'mkhabaz');
            PERFORM insert_category_translations('mkhabaz', 'de', 'Mkhabez');
            PERFORM insert_category_translations('mkhabaz', 'es', 'mkhabaz');
            PERFORM insert_category_translations('mkhabaz', 'it', 'mkhabaz');

            -- Level 2: halwat-tabaa
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('halwat-tabaa', 'halwat-tabaa', 2, l1_id, 'halwat tabaa')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('halwat-tabaa', 'fr', 'halwat tabaa');
            PERFORM insert_category_translations('halwat-tabaa', 'ar', 'حلوة الطابع');
            PERFORM insert_category_translations('halwat-tabaa', 'en', 'halwat tabaa');
            PERFORM insert_category_translations('halwat-tabaa', 'de', 'Halwat Tabaa');
            PERFORM insert_category_translations('halwat-tabaa', 'es', 'halwat tabaa');
            PERFORM insert_category_translations('halwat-tabaa', 'it', 'halwat tabaa');

            -- Level 2: harcha-sucree
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('harcha-sucree', 'harcha-sucree', 2, l1_id, 'harcha sucrée')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('harcha-sucree', 'fr', 'harcha sucrée');
            PERFORM insert_category_translations('harcha-sucree', 'ar', 'حرشة حلوة');
            PERFORM insert_category_translations('harcha-sucree', 'en', 'sweet harcha');
            PERFORM insert_category_translations('harcha-sucree', 'de', 'süße Harcha');
            PERFORM insert_category_translations('harcha-sucree', 'es', 'harcha dulce');
            PERFORM insert_category_translations('harcha-sucree', 'it', 'harcha dolce');

            -- Level 2: kaak-annaba
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('kaak-annaba', 'kaak-annaba', 2, l1_id, 'kaak annaba')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('kaak-annaba', 'fr', 'kaak annaba');
            PERFORM insert_category_translations('kaak-annaba', 'ar', 'كعك عنابة');
            PERFORM insert_category_translations('kaak-annaba', 'en', 'kaak annaba');
            PERFORM insert_category_translations('kaak-annaba', 'de', 'Kaak Annaba');
            PERFORM insert_category_translations('kaak-annaba', 'es', 'kaak annaba');
            PERFORM insert_category_translations('kaak-annaba', 'it', 'kaak annaba');

            -- Level 2: kaak-oranais
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('kaak-oranais', 'kaak-oranais', 2, l1_id, 'kaak oranais')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('kaak-oranais', 'fr', 'kaak oranais');
            PERFORM insert_category_translations('kaak-oranais', 'ar', 'كعك وهران');
            PERFORM insert_category_translations('kaak-oranais', 'en', 'kaak oranais');
            PERFORM insert_category_translations('kaak-oranais', 'de', 'Kaak Oranais');
            PERFORM insert_category_translations('kaak-oranais', 'es', 'kaak oranais');
            PERFORM insert_category_translations('kaak-oranais', 'it', 'kaak oranais');

            -- Level 2: gateaux-secs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gateaux-secs', 'gateaux-secs', 2, l1_id, 'gâteaux secs traditionnels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gateaux-secs', 'fr', 'gâteaux secs traditionnels');
            PERFORM insert_category_translations('gateaux-secs', 'ar', 'حلويات جافة تقليدية');
            PERFORM insert_category_translations('gateaux-secs', 'en', 'traditional dry cakes');
            PERFORM insert_category_translations('gateaux-secs', 'de', 'traditionelle Trockengebäck');
            PERFORM insert_category_translations('gateaux-secs', 'es', 'pastas secas tradicionales');
            PERFORM insert_category_translations('gateaux-secs', 'it', 'biscotti secchi tradizionali');

            -- Level 2: gateaux-miel
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gateaux-miel', 'gateaux-miel', 2, l1_id, 'gâteaux au miel')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gateaux-miel', 'fr', 'gâteaux au miel');
            PERFORM insert_category_translations('gateaux-miel', 'ar', 'حلويات بالعسل');
            PERFORM insert_category_translations('gateaux-miel', 'en', 'honey cakes');
            PERFORM insert_category_translations('gateaux-miel', 'de', 'Honiggebäck');
            PERFORM insert_category_translations('gateaux-miel', 'es', 'pasteles con miel');
            PERFORM insert_category_translations('gateaux-miel', 'it', 'dolci al miele');

            -- Level 2: gateaux-amandes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gateaux-amandes', 'gateaux-amandes', 2, l1_id, 'gâteaux aux amandes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gateaux-amandes', 'fr', 'gâteaux aux amandes');
            PERFORM insert_category_translations('gateaux-amandes', 'ar', 'حلويات باللوز');
            PERFORM insert_category_translations('gateaux-amandes', 'en', 'almond cakes');
            PERFORM insert_category_translations('gateaux-amandes', 'de', 'Mandelgebäck');
            PERFORM insert_category_translations('gateaux-amandes', 'es', 'pasteles de almendra');
            PERFORM insert_category_translations('gateaux-amandes', 'it', 'dolci alle mandorle');

            -- Level 2: patisseries-kabyles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('patisseries-kabyles', 'patisseries-kabyles', 2, l1_id, 'pâtisseries kabyles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('patisseries-kabyles', 'fr', 'pâtisseries kabyles');
            PERFORM insert_category_translations('patisseries-kabyles', 'ar', 'حلويات قبائلية');
            PERFORM insert_category_translations('patisseries-kabyles', 'en', 'Kabyle pastries');
            PERFORM insert_category_translations('patisseries-kabyles', 'de', 'kabylische Backwaren');
            PERFORM insert_category_translations('patisseries-kabyles', 'es', 'repostería cabila');
            PERFORM insert_category_translations('patisseries-kabyles', 'it', 'pasticceria kabyle');

            -- Level 2: patisseries-chaouies
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('patisseries-chaouies', 'patisseries-chaouies', 2, l1_id, 'pâtisseries chaouies')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('patisseries-chaouies', 'fr', 'pâtisseries chaouies');
            PERFORM insert_category_translations('patisseries-chaouies', 'ar', 'حلويات شاوية');
            PERFORM insert_category_translations('patisseries-chaouies', 'en', 'Chaoui pastries');
            PERFORM insert_category_translations('patisseries-chaouies', 'de', 'chaouische Backwaren');
            PERFORM insert_category_translations('patisseries-chaouies', 'es', 'repostería chaoui');
            PERFORM insert_category_translations('patisseries-chaouies', 'it', 'pasticceria chaoui');

            -- Level 2: patisseries-sahariennes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('patisseries-sahariennes', 'patisseries-sahariennes', 2, l1_id, 'pâtisseries sahariennes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('patisseries-sahariennes', 'fr', 'pâtisseries sahariennes');
            PERFORM insert_category_translations('patisseries-sahariennes', 'ar', 'حلويات صحراوية');
            PERFORM insert_category_translations('patisseries-sahariennes', 'en', 'Saharan pastries');
            PERFORM insert_category_translations('patisseries-sahariennes', 'de', 'saharische Backwaren');
            PERFORM insert_category_translations('patisseries-sahariennes', 'es', 'repostería sahariana');
            PERFORM insert_category_translations('patisseries-sahariennes', 'it', 'pasticceria sahariana');

            -- Level 2: kaab-ghzal
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('kaab-ghzal', 'kaab-ghzal', 2, l1_id, 'kaab ghzal')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('kaab-ghzal', 'fr', 'kaab ghzal');
            PERFORM insert_category_translations('kaab-ghzal', 'ar', 'كعب غزال');
            PERFORM insert_category_translations('kaab-ghzal', 'en', 'kaab ghzal');
            PERFORM insert_category_translations('kaab-ghzal', 'de', 'Kaab Ghzal');
            PERFORM insert_category_translations('kaab-ghzal', 'es', 'kaab ghzal');
            PERFORM insert_category_translations('kaab-ghzal', 'it', 'kaab ghzal');

            -- Level 2: arayech
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('arayech', 'arayech', 2, l1_id, 'arayech')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('arayech', 'fr', 'arayech');
            PERFORM insert_category_translations('arayech', 'ar', 'عرايش');
            PERFORM insert_category_translations('arayech', 'en', 'arayech');
            PERFORM insert_category_translations('arayech', 'de', 'Arayech');
            PERFORM insert_category_translations('arayech', 'es', 'arayech');
            PERFORM insert_category_translations('arayech', 'it', 'arayech');

            -- Level 2: bradj
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bradj', 'bradj', 2, l1_id, 'bradj')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bradj', 'fr', 'bradj');
            PERFORM insert_category_translations('bradj', 'ar', 'بردج');
            PERFORM insert_category_translations('bradj', 'en', 'bradj');
            PERFORM insert_category_translations('bradj', 'de', 'Bradj');
            PERFORM insert_category_translations('bradj', 'es', 'bradj');
            PERFORM insert_category_translations('bradj', 'it', 'bradj');

            -- Level 2: ghribia
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ghribia', 'ghribia', 2, l1_id, 'ghribia')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ghribia', 'fr', 'ghribia');
            PERFORM insert_category_translations('ghribia', 'ar', 'غريبية');
            PERFORM insert_category_translations('ghribia', 'en', 'ghribia');
            PERFORM insert_category_translations('ghribia', 'de', 'Ghribia');
            PERFORM insert_category_translations('ghribia', 'es', 'ghribia');
            PERFORM insert_category_translations('ghribia', 'it', 'ghribia');

            -- Level 2: sables-artisanaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sables-artisanaux', 'sables-artisanaux', 2, l1_id, 'sablés artisanaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sables-artisanaux', 'fr', 'sablés artisanaux');
            PERFORM insert_category_translations('sables-artisanaux', 'ar', 'سابليه يدوي');
            PERFORM insert_category_translations('sables-artisanaux', 'en', 'artisan cookies');
            PERFORM insert_category_translations('sables-artisanaux', 'de', 'handwerkliche Plätzchen');
            PERFORM insert_category_translations('sables-artisanaux', 'es', 'galletas artesanales');
            PERFORM insert_category_translations('sables-artisanaux', 'it', 'biscotti artigianali');

            -- Level 2: assortiments-festifs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('assortiments-festifs', 'assortiments-festifs', 2, l1_id, 'assortiments festifs traditionnels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('assortiments-festifs', 'fr', 'assortiments festifs traditionnels');
            PERFORM insert_category_translations('assortiments-festifs', 'ar', 'تشكيلات احتفالية تقليدية');
            PERFORM insert_category_translations('assortiments-festifs', 'en', 'traditional festive assortments');
            PERFORM insert_category_translations('assortiments-festifs', 'de', 'traditionelle Festmischungen');
            PERFORM insert_category_translations('assortiments-festifs', 'es', 'surtidos festivos tradicionales');
            PERFORM insert_category_translations('assortiments-festifs', 'it', 'assortimenti festivi tradizionali');
END $$;