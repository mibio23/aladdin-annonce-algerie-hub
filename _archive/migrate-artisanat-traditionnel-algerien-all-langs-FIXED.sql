-- Migration: Artisanat Traditionnel Algérien (Fixed - 100% Complete)
-- Includes Level 0, Level 1, and Level 2 categories with translations for 6 languages (fr, ar, en, es, de, it)
-- Verified against mega menu structures

DO $$
DECLARE
    root_id BIGINT;
    -- Level 1 IDs
    poterie_id BIGINT;
    artisanats_regionaux_id BIGINT;
    tissage_id BIGINT;
    bijoux_id BIGINT;
    broderie_id BIGINT;
    cuir_id BIGINT;
    bois_id BIGINT;
    vannerie_id BIGINT;
    decoration_id BIGINT;
    instruments_id BIGINT;
    produits_naturels_id BIGINT;
    articles_culturels_id BIGINT;
    services_coutumes_id BIGINT;
    produits_locaux_id BIGINT;
BEGIN
    -- 1. Catégorie Racine: Artisanat Traditionnel Algérien
    INSERT INTO public.categories (slug, name, icon, parent_id, level, sort_order, is_active, description)
    VALUES ('artisanat-traditionnel-algerien', 'Artisanat Traditionnel Algérien', 'Palette', NULL, 0, 0, true, 'Découvrez l’artisanat algérien authentique : poterie, tapis, bijoux, vêtements et produits du terroir.')
    ON CONFLICT (slug) DO UPDATE SET 
        name = EXCLUDED.name,
        icon = EXCLUDED.icon, 
        description = EXCLUDED.description, 
        level = EXCLUDED.level
    RETURNING id INTO root_id;

    IF root_id IS NULL THEN
        SELECT id INTO root_id FROM public.categories WHERE slug = 'artisanat-traditionnel-algerien';
    END IF;

    -- Traductions Racine
    INSERT INTO public.category_translations (category_id, language_code, name, description)
    VALUES
        (root_id, 'fr', 'Artisanat Traditionnel Algérien', 'Découvrez l’artisanat algérien authentique : poterie, tapis, bijoux, vêtements et produits du terroir.'),
        (root_id, 'ar', 'الحرف التقليدية الجزائرية', 'اكتشف الحرف التقليدية الجزائرية الأصيلة: الفخار، السجاد، المجوهرات، الملابس والمنتجات المحلية.'),
        (root_id, 'en', 'Algerian Traditional Crafts', 'Discover authentic Algerian crafts: pottery, rugs, jewelry, clothing and local products.'),
        (root_id, 'es', 'Artesanía Tradicional Argelina', 'Descubra la auténtica artesanía argelina: cerámica, alfombras, joyas, ropa y productos locales.'),
        (root_id, 'de', 'Algerisches traditionelles Handwerk', 'Entdecken Sie authentisches algerisches Handwerk: Töpferwaren, Teppiche, Schmuck, Kleidung und lokale Produkte.'),
        (root_id, 'it', 'Artigianato Tradizionale Algerino', 'Scopri l’autentico artigianato algerino: ceramiche, tappeti, gioielli, abbigliamento e prodotti locali.')
    ON CONFLICT (category_id, language_code) DO UPDATE SET 
        name = EXCLUDED.name, 
        description = EXCLUDED.description;

    -- ============================================================================================================
    -- NIVEAU 1 : Poterie & céramique
    -- ============================================================================================================
    INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
    VALUES ('poterie-ceramique', 'Poterie & céramique', root_id, 1, 1, true)
    ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name, parent_id = EXCLUDED.parent_id, level = EXCLUDED.level
    RETURNING id INTO poterie_id;

    IF poterie_id IS NULL THEN SELECT id INTO poterie_id FROM public.categories WHERE slug = 'poterie-ceramique'; END IF;

    INSERT INTO public.category_translations (category_id, language_code, name) VALUES
        (poterie_id, 'fr', 'Poterie & céramique'),
        (poterie_id, 'ar', 'فخار وخزف'),
        (poterie_id, 'en', 'Pottery & ceramics'),
        (poterie_id, 'es', 'Cerámica y alfarería'),
        (poterie_id, 'de', 'Töpferei & Keramik'),
        (poterie_id, 'it', 'Ceramica e terracotta')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

        -- Niveau 2
        PERFORM public.insert_category_with_translations(poterie_id, 'poterie-traditionnelle', 2, 1,
            '{"fr": "poterie traditionnelle", "ar": "فخار تقليدي", "en": "traditional pottery", "es": "alfarería tradicional", "de": "traditionelle Töpferei", "it": "terracotta tradizionale"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(poterie_id, 'poterie-kabyle', 2, 2,
            '{"fr": "poterie kabyle", "ar": "فخار قبائلي", "en": "Kabyle pottery", "es": "alfarería cabila", "de": "kabylische Töpferei", "it": "terracotta kabyle"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(poterie_id, 'poterie-chaouie', 2, 3,
            '{"fr": "poterie chaouie", "ar": "فخار شاوي", "en": "Chaoui pottery", "es": "alfarería chaoui", "de": "chaouische Töpferei", "it": "terracotta chaoui"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(poterie_id, 'ceramiques-decoratives', 2, 4,
            '{"fr": "céramiques décoratives", "ar": "خزف زخرفي", "en": "decorative ceramics", "es": "cerámicas decorativas", "de": "dekorative Keramik", "it": "ceramiche decorative"}'::jsonb);

    -- ============================================================================================================
    -- NIVEAU 1 : Artisanats régionaux
    -- ============================================================================================================
    INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
    VALUES ('artisanats-regionaux', 'Artisanats régionaux', root_id, 1, 2, true)
    ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name, parent_id = EXCLUDED.parent_id, level = EXCLUDED.level
    RETURNING id INTO artisanats_regionaux_id;

    IF artisanats_regionaux_id IS NULL THEN SELECT id INTO artisanats_regionaux_id FROM public.categories WHERE slug = 'artisanats-regionaux'; END IF;

    INSERT INTO public.category_translations (category_id, language_code, name) VALUES
        (artisanats_regionaux_id, 'fr', 'Artisanats régionaux'),
        (artisanats_regionaux_id, 'ar', 'حرف محلية'),
        (artisanats_regionaux_id, 'en', 'Regional crafts'),
        (artisanats_regionaux_id, 'es', 'Artesanías regionales'),
        (artisanats_regionaux_id, 'de', 'Regionale Handwerke'),
        (artisanats_regionaux_id, 'it', 'Arti regionali')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

        -- Niveau 2
        PERFORM public.insert_category_with_translations(artisanats_regionaux_id, 'mozabite', 2, 1,
            '{"fr": "artisanat mozabite", "ar": "حرف ميزابية", "en": "Mozabite craft", "es": "artesanía mozabita", "de": "Mozabiten-Handwerk", "it": "artigianato mozabita"}'::jsonb);

        PERFORM public.insert_category_with_translations(artisanats_regionaux_id, 'touareg', 2, 2,
            '{"fr": "artisanat touareg", "ar": "حرف طوارقية", "en": "Tuareg craft", "es": "artesanía tuareg", "de": "Tuareg-Handwerk", "it": "artigianato tuareg"}'::jsonb);

        PERFORM public.insert_category_with_translations(artisanats_regionaux_id, 'berbere', 2, 3,
            '{"fr": "artisanat berbère", "ar": "حرف أمازيغية", "en": "Berber craft", "es": "artesanía bereber", "de": "Berber-Handwerk", "it": "artigianato berbero"}'::jsonb);

    -- ============================================================================================================
    -- NIVEAU 1 : Tissage & tapis
    -- ============================================================================================================
    INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
    VALUES ('tissage-tapis', 'Tissage & tapis', root_id, 1, 3, true)
    ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name, parent_id = EXCLUDED.parent_id, level = EXCLUDED.level
    RETURNING id INTO tissage_id;

    IF tissage_id IS NULL THEN SELECT id INTO tissage_id FROM public.categories WHERE slug = 'tissage-tapis'; END IF;

    INSERT INTO public.category_translations (category_id, language_code, name) VALUES
        (tissage_id, 'fr', 'Tissage & tapis'),
        (tissage_id, 'ar', 'نسج وسجاد'),
        (tissage_id, 'en', 'Weaving & rugs'),
        (tissage_id, 'es', 'Tejido y alfombras'),
        (tissage_id, 'de', 'Weberei & Teppiche'),
        (tissage_id, 'it', 'Tessitura e tappeti')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

        -- Niveau 2
        PERFORM public.insert_category_with_translations(tissage_id, 'tissage-traditionnel', 2, 1,
            '{"fr": "tissage traditionnel", "ar": "نسج تقليدي", "en": "traditional weaving", "es": "tejido tradicional", "de": "traditionelle Weberei", "it": "tessitura tradizionale"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(tissage_id, 'tissage-kabyle', 2, 2,
            '{"fr": "tissage kabyle", "ar": "نسج قبائلي", "en": "Kabyle weaving", "es": "tejido cabila", "de": "kabylische Weberei", "it": "tessitura kabyle"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(tissage_id, 'tapis-kilims', 2, 3,
            '{"fr": "tapis & kilims", "ar": "سجاد وكليم", "en": "rugs & kilims", "es": "alfombras y kilims", "de": "Teppiche & Kilims", "it": "tappeti e kilim"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(tissage_id, 'tapis-chaouis', 2, 4,
            '{"fr": "tapis chaouis", "ar": "سجاد شاوي", "en": "Chaoui rugs", "es": "alfombras chaoui", "de": "Chaoui-Teppiche", "it": "tappeti chaoui"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(tissage_id, 'tapis-mozabites', 2, 5,
            '{"fr": "tapis mozabites", "ar": "سجاد ميزابي", "en": "Mozabite rugs", "es": "alfombras mozabitas", "de": "Mozabiten-Teppiche", "it": "tappeti mozabiti"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(tissage_id, 'tissages-sahariens', 2, 6,
            '{"fr": "tissages sahariens", "ar": "منسوجات صحراوية", "en": "Saharan weaves", "es": "tejidos del Sahara", "de": "saharische Webarbeiten", "it": "tessiture sahariane"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(tissage_id, 'accessoires-tisses', 2, 7,
            '{"fr": "accessoires tissés", "ar": "إكسسوارات منسوجة", "en": "woven accessories", "es": "accesorios tejidos", "de": "gewebte Accessoires", "it": "accessori tessuti"}'::jsonb);

    -- ============================================================================================================
    -- NIVEAU 1 : Bijoux & métaux
    -- ============================================================================================================
    INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
    VALUES ('bijoux-metaux', 'Bijoux & métaux', root_id, 1, 4, true)
    ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name, parent_id = EXCLUDED.parent_id, level = EXCLUDED.level
    RETURNING id INTO bijoux_id;

    IF bijoux_id IS NULL THEN SELECT id INTO bijoux_id FROM public.categories WHERE slug = 'bijoux-metaux'; END IF;

    INSERT INTO public.category_translations (category_id, language_code, name) VALUES
        (bijoux_id, 'fr', 'Bijoux & métaux'),
        (bijoux_id, 'ar', 'حلي ومعادن'),
        (bijoux_id, 'en', 'Jewelry & metals'),
        (bijoux_id, 'es', 'Joyas y metales'),
        (bijoux_id, 'de', 'Schmuck & Metalle'),
        (bijoux_id, 'it', 'Gioielli e metalli')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

        -- Niveau 2
        PERFORM public.insert_category_with_translations(bijoux_id, 'bijoux-argent', 2, 1,
            '{"fr": "bijoux en argent", "ar": "حلي فضة", "en": "silver jewelry", "es": "joyas de plata", "de": "Silberschmuck", "it": "gioielli in argento"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(bijoux_id, 'bijoux-kabyles', 2, 2,
            '{"fr": "bijoux kabyles", "ar": "حلي قبائلية", "en": "Kabyle jewelry", "es": "joyas cabiles", "de": "kabylischer Schmuck", "it": "gioielli kabyle"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(bijoux_id, 'bijoux-touareg', 2, 3,
            '{"fr": "bijoux touareg", "ar": "حلي طوارقية", "en": "Tuareg jewelry", "es": "joyas tuareg", "de": "Tuareg-Schmuck", "it": "gioielli tuareg"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(bijoux_id, 'croix-agadez', 2, 4,
            '{"fr": "croix d’Agadez (tanaghelt)", "ar": "صليب أغاديز (تاناغلت)", "en": "Agadez cross (tanaghelt)", "es": "cruz de Agadez (tanaghelt)", "de": "Agadez-Kreuz (Tanaghelt)", "it": "croce di Agadez (tanaghelt)"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(bijoux_id, 'talhakimt', 2, 5,
            '{"fr": "Talhakimt", "ar": "تلحكيمت", "en": "Talhakimt", "es": "Talhakimt", "de": "Talhakimt", "it": "Talhakimt"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(bijoux_id, 'objets-cuivre', 2, 6,
            '{"fr": "objets en cuivre", "ar": "مصنوعات نحاسية", "en": "copper objects", "es": "objetos de cobre", "de": "Kupferobjekte", "it": "oggetti in rame"}'::jsonb);

    -- ============================================================================================================
    -- NIVEAU 1 : Broderie & vêtements traditionnels
    -- ============================================================================================================
    INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
    VALUES ('broderie-vetements', 'Broderie & vêtements traditionnels', root_id, 1, 5, true)
    ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name, parent_id = EXCLUDED.parent_id, level = EXCLUDED.level
    RETURNING id INTO broderie_id;

    IF broderie_id IS NULL THEN SELECT id INTO broderie_id FROM public.categories WHERE slug = 'broderie-vetements'; END IF;

    INSERT INTO public.category_translations (category_id, language_code, name) VALUES
        (broderie_id, 'fr', 'Broderie & vêtements traditionnels'),
        (broderie_id, 'ar', 'تطريز وملابس تقليدية'),
        (broderie_id, 'en', 'Embroidery & traditional attire'),
        (broderie_id, 'es', 'Bordado y vestimenta tradicional'),
        (broderie_id, 'de', 'Stickerei & traditionelle Kleidung'),
        (broderie_id, 'it', 'Ricamo e abiti tradizionali')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

        -- Niveau 2
        PERFORM public.insert_category_with_translations(broderie_id, 'karakou', 2, 1,
            '{"fr": "karakou", "ar": "كراكو", "en": "karakou", "es": "karakou", "de": "karakou", "it": "karakou"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(broderie_id, 'gandoura', 2, 2,
            '{"fr": "gandoura", "ar": "قندورة", "en": "gandoura", "es": "gandoura", "de": "gandoura", "it": "gandoura"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(broderie_id, 'burnous', 2, 3,
            '{"fr": "burnous", "ar": "برنوس", "en": "burnous", "es": "burnous", "de": "burnous", "it": "burnous"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(broderie_id, 'blousa', 2, 4,
            '{"fr": "blousa", "ar": "بلوزة", "en": "blousa", "es": "blousa", "de": "blousa", "it": "blousa"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(broderie_id, 'tenue-kabyle', 2, 5,
            '{"fr": "tenue kabyle", "ar": "لباس قبائلي", "en": "Kabyle attire", "es": "atuendo cabilio", "de": "kabylische Kleidung", "it": "abito kabyle"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(broderie_id, 'tenue-chaouie', 2, 6,
            '{"fr": "tenue chaouie", "ar": "لباس شاوي", "en": "Chaoui attire", "es": "atuendo chaoui", "de": "chaouische Kleidung", "it": "abito chaoui"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(broderie_id, 'tenues-targuies', 2, 7,
            '{"fr": "tenues targuies", "ar": "ملابس طوارقية", "en": "Tuareg attire", "es": "atuendos tuareg", "de": "Tuareg-Kleidung", "it": "abiti tuareg"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(broderie_id, 'gandoura-saharienne', 2, 8,
            '{"fr": "gandoura saharienne", "ar": "قندورة صحراوية", "en": "Saharan gandoura", "es": "gandoura sahariana", "de": "saharische Gandoura", "it": "gandoura sahariana"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(broderie_id, 'broderies-artisanales', 2, 9,
            '{"fr": "broderies artisanales", "ar": "تطريز يدوي", "en": "hand embroidery", "es": "bordados artesanales", "de": "handgefertigte Stickerei", "it": "ricami artigianali"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(broderie_id, 'confection-sur-mesure', 2, 10,
            '{"fr": "confection sur mesure", "ar": "خياطة وتفصيل حسب الطلب", "en": "tailor-made", "es": "confección a medida", "de": "Maßanfertigung", "it": "confezione su misura"}'::jsonb);

    -- ============================================================================================================
    -- NIVEAU 1 : Cuir & maroquinerie
    -- ============================================================================================================
    INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
    VALUES ('cuir-maroquinerie', 'Cuir & maroquinerie', root_id, 1, 6, true)
    ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name, parent_id = EXCLUDED.parent_id, level = EXCLUDED.level
    RETURNING id INTO cuir_id;

    IF cuir_id IS NULL THEN SELECT id INTO cuir_id FROM public.categories WHERE slug = 'cuir-maroquinerie'; END IF;

    INSERT INTO public.category_translations (category_id, language_code, name) VALUES
        (cuir_id, 'fr', 'Cuir & maroquinerie'),
        (cuir_id, 'ar', 'جلد ومصنوعات يدوية'),
        (cuir_id, 'en', 'Leather & marquetry'),
        (cuir_id, 'es', 'Cuero y marroquinería'),
        (cuir_id, 'de', 'Leder & Maroquinerie'),
        (cuir_id, 'it', 'Pelle e pelletteria')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

        -- Niveau 2
        PERFORM public.insert_category_with_translations(cuir_id, 'babouches', 2, 1,
            '{"fr": "babouches", "ar": "بلغة", "en": "babouches", "es": "babuchas", "de": "Babouches", "it": "babucce"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(cuir_id, 'sandales-artisanales', 2, 2,
            '{"fr": "sandales artisanales", "ar": "صنادل تقليدية", "en": "artisan sandals", "es": "sandalias artesanales", "de": "handgefertigte Sandalen", "it": "sandali artigianali"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(cuir_id, 'articles-cuir', 2, 3,
            '{"fr": "articles en cuir", "ar": "منتجات جلدية", "en": "leather items", "es": "artículos de cuero", "de": "Lederartikel", "it": "articoli in pelle"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(cuir_id, 'maroquinerie-artisanale', 2, 4,
            '{"fr": "maroquinerie artisanale", "ar": "منتجات جلدية يدوية", "en": "artisan leatherworks", "es": "marroquinería artesanal", "de": "handgefertigte Lederwaren", "it": "pelletteria artigianale"}'::jsonb);

    -- ============================================================================================================
    -- NIVEAU 1 : Bois & sculpture
    -- ============================================================================================================
    INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
    VALUES ('bois-sculpture', 'Bois & sculpture', root_id, 1, 7, true)
    ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name, parent_id = EXCLUDED.parent_id, level = EXCLUDED.level
    RETURNING id INTO bois_id;

    IF bois_id IS NULL THEN SELECT id INTO bois_id FROM public.categories WHERE slug = 'bois-sculpture'; END IF;

    INSERT INTO public.category_translations (category_id, language_code, name) VALUES
        (bois_id, 'fr', 'Bois & sculpture'),
        (bois_id, 'ar', 'خشب ونحت'),
        (bois_id, 'en', 'Wood & sculpture'),
        (bois_id, 'es', 'Madera y escultura'),
        (bois_id, 'de', 'Holz & Skulptur'),
        (bois_id, 'it', 'Legno e scultura')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

        -- Niveau 2
        PERFORM public.insert_category_with_translations(bois_id, 'objets-bois', 2, 1,
            '{"fr": "objets en bois", "ar": "مصنوعات خشبية", "en": "wood objects", "es": "objetos de madera", "de": "Holzobjekte", "it": "oggetti in legno"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(bois_id, 'sculpture-bois', 2, 2,
            '{"fr": "sculpture sur bois", "ar": "نحت على الخشب", "en": "wood carving", "es": "talla en madera", "de": "Holzschnitzerei", "it": "intaglio del legno"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(bois_id, 'lampes-artisanales', 2, 3,
            '{"fr": "lampes artisanales", "ar": "مصابيح يدوية", "en": "artisan lamps", "es": "lámparas artesanales", "de": "handgefertigte Lampen", "it": "lampade artigianali"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(bois_id, 'coffres-anciens', 2, 4,
            '{"fr": "coffres anciens", "ar": "صناديق قديمة", "en": "antique chests", "es": "baúles antiguos", "de": "antik Truhen", "it": "bauli antichi"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(bois_id, 'mobilier-traditionnel', 2, 5,
            '{"fr": "mobilier traditionnel", "ar": "أثاث تقليدي", "en": "traditional furniture", "es": "mobiliario tradicional", "de": "traditionelle Möbel", "it": "arredi tradizionali"}'::jsonb);

    -- ============================================================================================================
    -- NIVEAU 1 : Vannerie & fibres naturelles
    -- ============================================================================================================
    INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
    VALUES ('vannerie-fibres', 'Vannerie & fibres naturelles', root_id, 1, 8, true)
    ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name, parent_id = EXCLUDED.parent_id, level = EXCLUDED.level
    RETURNING id INTO vannerie_id;

    IF vannerie_id IS NULL THEN SELECT id INTO vannerie_id FROM public.categories WHERE slug = 'vannerie-fibres'; END IF;

    INSERT INTO public.category_translations (category_id, language_code, name) VALUES
        (vannerie_id, 'fr', 'Vannerie & fibres naturelles'),
        (vannerie_id, 'ar', 'سلال وألياف طبيعية'),
        (vannerie_id, 'en', 'Basketry & natural fibers'),
        (vannerie_id, 'es', 'Cestería y fibras naturales'),
        (vannerie_id, 'de', 'Flechtkunst & Naturfasern'),
        (vannerie_id, 'it', 'Cesteria e fibre naturali')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

        -- Niveau 2
        PERFORM public.insert_category_with_translations(vannerie_id, 'vannerie', 2, 1,
            '{"fr": "vannerie", "ar": "سلال يدوية", "en": "basketry", "es": "cestería", "de": "Flechtkunst", "it": "cesteria"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(vannerie_id, 'paniers-tresses', 2, 2,
            '{"fr": "paniers tressés", "ar": "سلال منسوجة", "en": "woven baskets", "es": "cestas tejidas", "de": "geflochtene Körbe", "it": "cesti intrecciati"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(vannerie_id, 'nattes-traditionnelles', 2, 3,
            '{"fr": "nattes traditionnelles", "ar": "حصير تقليدي", "en": "traditional mats", "es": "esteras tradicionales", "de": "traditionelle Matten", "it": "stuoie tradizionali"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(vannerie_id, 'objets-alfa-palmier', 2, 4,
            '{"fr": "objets en alfa & palmier", "ar": "مصنوعات من الحلفاء والنخيل", "en": "alfa & palm objects", "es": "objetos de alfa y palmera", "de": "Alfa- & Palm-Objekte", "it": "oggetti in alfa e palma"}'::jsonb);

    -- ============================================================================================================
    -- NIVEAU 1 : Décoration & objets berbères
    -- ============================================================================================================
    INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
    VALUES ('decoration-berbere', 'Décoration & objets berbères', root_id, 1, 9, true)
    ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name, parent_id = EXCLUDED.parent_id, level = EXCLUDED.level
    RETURNING id INTO decoration_id;

    IF decoration_id IS NULL THEN SELECT id INTO decoration_id FROM public.categories WHERE slug = 'decoration-berbere'; END IF;

    INSERT INTO public.category_translations (category_id, language_code, name) VALUES
        (decoration_id, 'fr', 'Décoration & objets berbères'),
        (decoration_id, 'ar', 'زخارف وأشياء أمازيغية'),
        (decoration_id, 'en', 'Berber decor & objects'),
        (decoration_id, 'es', 'Decoración y objetos bereberes'),
        (decoration_id, 'de', 'Berberische Dekoration & Objekte'),
        (decoration_id, 'it', 'Decorazioni e oggetti berberi')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

        -- Niveau 2
        PERFORM public.insert_category_with_translations(decoration_id, 'decorations-murales', 2, 1,
            '{"fr": "décorations murales traditionnelles", "ar": "زخارف حائط تقليدية", "en": "traditional wall decor", "es": "decoración mural tradicional", "de": "traditionelle Wanddekoration", "it": "decorazioni murali tradizionali"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(decoration_id, 'objets-decoratifs-berberes', 2, 2,
            '{"fr": "objets décoratifs berbères", "ar": "أشياء زخرفية أمازيغية", "en": "Berber decorative objects", "es": "objetos decorativos bereberes", "de": "berberische Dekorobjekte", "it": "oggetti decorativi berberi"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(decoration_id, 'tableaux-traditionnels', 2, 3,
            '{"fr": "tableaux traditionnels", "ar": "لوحات تقليدية", "en": "traditional paintings", "es": "cuadros tradicionales", "de": "traditionelle Gemälde", "it": "quadri tradizionali"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(decoration_id, 'calligraphie-artistique', 2, 4,
            '{"fr": "calligraphie artistique", "ar": "خط فني", "en": "artistic calligraphy", "es": "caligrafía artística", "de": "künstlerische Kalligraphie", "it": "calligrafia artistica"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(decoration_id, 'calligraphie-tifinagh', 2, 5,
            '{"fr": "calligraphie tifinagh", "ar": "خط تفيناغ", "en": "Tifinagh calligraphy", "es": "caligrafía tifinagh", "de": "Tifinagh-Kalligraphie", "it": "calligrafia tifinagh"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(decoration_id, 'souvenirs-touristes', 2, 6,
            '{"fr": "souvenirs pour touristes", "ar": "تذكارات سياحية", "en": "souvenirs for tourists", "es": "souvenirs para turistas", "de": "Souvenirs", "it": "souvenir per turisti"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(decoration_id, 'artisanat-contemporain', 2, 7,
            '{"fr": "artisanat contemporain inspiré du patrimoine", "ar": "حرف معاصرة مستوحاة من التراث", "en": "heritage-inspired contemporary craft", "es": "artesanía contemporánea inspirada en el patrimonio", "de": "zeitgenössisches, vom Erbe inspiriertes Handwerk", "it": "artigianato contemporaneo ispirato al patrimonio"}'::jsonb);

    -- ============================================================================================================
    -- NIVEAU 1 : Instruments de musique artisanaux
    -- ============================================================================================================
    INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
    VALUES ('instruments-musique', 'Instruments de musique artisanaux', root_id, 1, 10, true)
    ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name, parent_id = EXCLUDED.parent_id, level = EXCLUDED.level
    RETURNING id INTO instruments_id;

    IF instruments_id IS NULL THEN SELECT id INTO instruments_id FROM public.categories WHERE slug = 'instruments-musique'; END IF;

    INSERT INTO public.category_translations (category_id, language_code, name) VALUES
        (instruments_id, 'fr', 'Instruments de musique artisanaux'),
        (instruments_id, 'ar', 'آلات موسيقية يدوية'),
        (instruments_id, 'en', 'Handmade musical instruments'),
        (instruments_id, 'es', 'Instrumentos musicales artesanales'),
        (instruments_id, 'de', 'Handgefertigte Musikinstrumente'),
        (instruments_id, 'it', 'Strumenti musicali artigianali')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

        -- Niveau 2
        PERFORM public.insert_category_with_translations(instruments_id, 'bendir', 2, 1,
            '{"fr": "bendir", "ar": "بندير", "en": "bendir", "es": "bendir", "de": "Bendir", "it": "bendir"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(instruments_id, 'goumbri', 2, 2,
            '{"fr": "goumbri", "ar": "قنبري", "en": "goumbri", "es": "goumbri", "de": "Goumbri", "it": "goumbri"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(instruments_id, 'gasba', 2, 3,
            '{"fr": "gasba", "ar": "قصبة", "en": "gasba", "es": "gasba", "de": "Gasba", "it": "gasba"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(instruments_id, 'karkabou', 2, 4,
            '{"fr": "karkabou", "ar": "قرقبو", "en": "karkabou", "es": "karkabou", "de": "Karkabou", "it": "karkabou"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(instruments_id, 'imzad', 2, 5,
            '{"fr": "imzad", "ar": "إمزاد", "en": "imzad", "es": "imzad", "de": "Imzad", "it": "imzad"}'::jsonb);

    -- ============================================================================================================
    -- NIVEAU 1 : Produits naturels artisanaux
    -- ============================================================================================================
    INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
    VALUES ('produits-naturels', 'Produits naturels artisanaux', root_id, 1, 11, true)
    ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name, parent_id = EXCLUDED.parent_id, level = EXCLUDED.level
    RETURNING id INTO produits_naturels_id;

    IF produits_naturels_id IS NULL THEN SELECT id INTO produits_naturels_id FROM public.categories WHERE slug = 'produits-naturels'; END IF;

    INSERT INTO public.category_translations (category_id, language_code, name) VALUES
        (produits_naturels_id, 'fr', 'Produits naturels artisanaux'),
        (produits_naturels_id, 'ar', 'منتجات طبيعية يدوية'),
        (produits_naturels_id, 'en', 'Handmade natural products'),
        (produits_naturels_id, 'es', 'Productos naturales artesanales'),
        (produits_naturels_id, 'de', 'Handgemachte Naturprodukte'),
        (produits_naturels_id, 'it', 'Prodotti naturali artigianali')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

        -- Niveau 2
        PERFORM public.insert_category_with_translations(produits_naturels_id, 'huile-olive-artisanale', 2, 1,
            '{"fr": "huile d’olive", "ar": "زيت زيتون", "en": "olive oil", "es": "aceite de oliva", "de": "Olivenöl", "it": "olio d’oliva"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(produits_naturels_id, 'henne', 2, 2,
            '{"fr": "henné", "ar": "حناء", "en": "henna", "es": "henna", "de": "Henna", "it": "henné"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(produits_naturels_id, 'savon-artisanal', 2, 3,
            '{"fr": "savon artisanal", "ar": "صابون يدوي", "en": "artisan soap", "es": "jabón artesanal", "de": "handgemachte Seife", "it": "sapone artigianale"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(produits_naturels_id, 'encens', 2, 4,
            '{"fr": "encens", "ar": "بخور", "en": "incense", "es": "incienso", "de": "Weihrauch", "it": "incenso"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(produits_naturels_id, 'melasse', 2, 5,
            '{"fr": "mélasse", "ar": "دبس", "en": "molasses", "es": "melaza", "de": "Melasse", "it": "melassa"}'::jsonb);

    -- ============================================================================================================
    -- NIVEAU 1 : Articles culturels & patrimoniaux
    -- ============================================================================================================
    INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
    VALUES ('articles-culturels', 'Articles culturels & patrimoniaux', root_id, 1, 12, true)
    ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name, parent_id = EXCLUDED.parent_id, level = EXCLUDED.level
    RETURNING id INTO articles_culturels_id;

    IF articles_culturels_id IS NULL THEN SELECT id INTO articles_culturels_id FROM public.categories WHERE slug = 'articles-culturels'; END IF;

    INSERT INTO public.category_translations (category_id, language_code, name) VALUES
        (articles_culturels_id, 'fr', 'Articles culturels & patrimoniaux'),
        (articles_culturels_id, 'ar', 'منتجات ثقافية وتراثية'),
        (articles_culturels_id, 'en', 'Cultural & heritage items'),
        (articles_culturels_id, 'es', 'Artículos culturales y patrimoniales'),
        (articles_culturels_id, 'de', 'Kulturelle & Erbe-Artikel'),
        (articles_culturels_id, 'it', 'Articoli culturali e patrimoniali')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

        -- Niveau 2
        PERFORM public.insert_category_with_translations(articles_culturels_id, 'objets-culturels', 2, 1,
            '{"fr": "objets culturels", "ar": "أشياء ثقافية", "en": "cultural objects", "es": "objetos culturales", "de": "kulturelle Objekte", "it": "oggetti culturali"}'::jsonb);

    -- ============================================================================================================
    -- NIVEAU 1 : Services & coutumes traditionnelles
    -- ============================================================================================================
    INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
    VALUES ('services-coutumes', 'Services & coutumes traditionnelles', root_id, 1, 13, true)
    ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name, parent_id = EXCLUDED.parent_id, level = EXCLUDED.level
    RETURNING id INTO services_coutumes_id;

    IF services_coutumes_id IS NULL THEN SELECT id INTO services_coutumes_id FROM public.categories WHERE slug = 'services-coutumes'; END IF;

    INSERT INTO public.category_translations (category_id, language_code, name) VALUES
        (services_coutumes_id, 'fr', 'Services & coutumes traditionnelles'),
        (services_coutumes_id, 'ar', 'خدمات وعادات تقليدية'),
        (services_coutumes_id, 'en', 'Services & traditional customs'),
        (services_coutumes_id, 'es', 'Servicios y costumbres tradicionales'),
        (services_coutumes_id, 'de', 'Dienste & traditionelle Bräuche'),
        (services_coutumes_id, 'it', 'Servizi e usanze tradizionali')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

        -- Niveau 2
        PERFORM public.insert_category_with_translations(services_coutumes_id, 'henne-artistique', 2, 1,
            '{"fr": "henné artistique", "ar": "حناء فنية", "en": "artistic henna", "es": "henna artístico", "de": "künstlerisches Henna", "it": "henné artistico"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(services_coutumes_id, 'tatouage-traditionnel', 2, 2,
            '{"fr": "tatouage traditionnel", "ar": "وشم تقليدي", "en": "traditional tattoo", "es": "tatuaje tradicional", "de": "traditionelle Tätowierung", "it": "tatuaggio tradizionale"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(services_coutumes_id, 'trousseau-mariage', 2, 3,
            '{"fr": "préparation du trousseau de mariage (cheddat)", "ar": "تحضير جهاز العروس (الشدة)", "en": "wedding trousseau preparation (cheddat)", "es": "preparación del ajuar de boda (cheddat)", "de": "Hochzeitsaussteuer (Cheddat)", "it": "preparazione del corredo nuziale (cheddat)"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(services_coutumes_id, 'location-tenues', 2, 4,
            '{"fr": "location de tenues traditionnelles", "ar": "كراء الملابس التقليدية", "en": "traditional attire rental", "es": "alquiler de vestimenta tradicional", "de": "Verleih traditioneller Kleidung", "it": "noleggio abiti tradizionali"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(services_coutumes_id, 'ceremonies-traditionnelles', 2, 5,
            '{"fr": "préparation de cérémonies traditionnelles", "ar": "تحضير المراسم التقليدية", "en": "traditional ceremonies preparation", "es": "preparación de ceremonias tradicionales", "de": "Vorbereitung traditioneller Zeremonien", "it": "preparazione di cerimonie tradizionali"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(services_coutumes_id, 'musique-folklorique', 2, 6,
            '{"fr": "musique folklorique (chaoui, kabyle, targui, gnawa)", "ar": "موسيقى فولكلورية (شاوي، قبائلي، طارقي، كناوي)", "en": "folk music (Chaoui, Kabyle, Tuareg, Gnawa)", "es": "música folclórica (chaoui, cabila, tuareg, gnawa)", "de": "Folklore-Musik (Chaoui, Kabyle, Tuareg, Gnawa)", "it": "musica folkloristica (chaoui, kabyle, tuareg, gnawa)"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(services_coutumes_id, 'danse-traditionnelle', 2, 7,
            '{"fr": "danse traditionnelle", "ar": "رقص تقليدي", "en": "traditional dance", "es": "danza tradicional", "de": "traditioneller Tanz", "it": "danza tradizionale"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(services_coutumes_id, 'patisserie-traditionnelle-services', 2, 8,
            '{"fr": "services de pâtisserie traditionnelle", "ar": "خدمات الحلويات التقليدية", "en": "traditional pastry services", "es": "servicios de repostería tradicional", "de": "traditionelle Konditorei-Dienste", "it": "servizi di pasticceria tradizionale"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(services_coutumes_id, 'decoration-fetes', 2, 9,
            '{"fr": "décoration traditionnelle pour fêtes et mariages", "ar": "تزيين تقليدي للمناسبات والأعراس", "en": "traditional decor for festivities & weddings", "es": "decoración tradicional para fiestas y bodas", "de": "traditionelle Deko für Feste & Hochzeiten", "it": "decorazioni tradizionali per feste e matrimoni"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(services_coutumes_id, 'repas-traditionnels', 2, 10,
            '{"fr": "préparation de repas traditionnels", "ar": "تحضير وجبات تقليدية", "en": "traditional meals preparation", "es": "preparación de comidas tradicionales", "de": "Zubereitung traditioneller Mahlzeiten", "it": "preparazione di pasti tradizionali"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(services_coutumes_id, 'organisation-mariages', 2, 11,
            '{"fr": "organisation de mariages traditionnels algériens", "ar": "تنظيم الأعراس التقليدية الجزائرية", "en": "Algerian traditional wedding organization", "es": "organización de bodas tradicionales argelinas", "de": "Organisation traditioneller Hochzeiten", "it": "organizzazione matrimoni tradizionali algerini"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(services_coutumes_id, 'accessoires-fetes', 2, 12,
            '{"fr": "fourniture d’accessoires de fêtes", "ar": "توفير مستلزمات المناسبات", "en": "party accessories supply", "es": "suministro de accesorios para fiestas", "de": "Bereitstellung von Fest-Accessoires", "it": "fornitura accessori per feste"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(services_coutumes_id, 'broderie-personnalisee', 2, 13,
            '{"fr": "broderie personnalisée", "ar": "تطريز مخصص", "en": "custom embroidery", "es": "bordado personalizado", "de": "personalisierte Stickerei", "it": "ricamo personalizzato"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(services_coutumes_id, 'couture-artisanale', 2, 14,
            '{"fr": "couture artisanale", "ar": "خياطة تقليدية", "en": "artisan sewing", "es": "costura artesanal", "de": "handwerkliches Nähen", "it": "cucito artigianale"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(services_coutumes_id, 'cadeaux-personnalises', 2, 15,
            '{"fr": "fabrication de cadeaux personnalisés", "ar": "هدايا مخصصة", "en": "custom gift making", "es": "regalos personalizados", "de": "personalisierte Geschenke", "it": "regali personalizzati"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(services_coutumes_id, 'ateliers-apprentissage', 2, 16,
            '{"fr": "ateliers d’apprentissage (poterie, tissage, gravure)", "ar": "ورش تعلم (فخار، نسج، نقش)", "en": "learning workshops (pottery, weaving, engraving)", "es": "talleres de aprendizaje (cerámica, tejido, grabado)", "de": "Workshops (Töpferei, Weberei, Gravur)", "it": "laboratori (ceramica, tessitura, incisione)"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(services_coutumes_id, 'transmission-coutumes', 2, 17,
            '{"fr": "transmission des coutumes locales", "ar": "نقل العادات المحلية", "en": "transmission of local customs", "es": "transmisión de costumbres locales", "de": "Weitergabe lokaler Bräuche", "it": "trasmissione delle usanze locali"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(services_coutumes_id, 'initiation-arts', 2, 18,
            '{"fr": "initiation aux arts traditionnels", "ar": "التعرف على الفنون التقليدية", "en": "traditional arts initiation", "es": "iniciación a las artes tradicionales", "de": "Einführung in traditionelle Künste", "it": "iniziazione alle arti tradizionali"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(services_coutumes_id, 'ceremonies-religieuses', 2, 19,
            '{"fr": "préparation cérémonies religieuses et culturelles", "ar": "تحضير المراسم الدينية والثقافية", "en": "religious and cultural ceremonies", "es": "ceremonias religiosas y culturales", "de": "religiöse & kulturelle Zeremonien", "it": "cerimonie religiose e culturali"}'::jsonb);

    -- ============================================================================================================
    -- NIVEAU 1 : Produits locaux algériens
    -- ============================================================================================================
    INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
    VALUES ('produits-locaux', 'Produits locaux algériens', root_id, 1, 14, true)
    ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name, parent_id = EXCLUDED.parent_id, level = EXCLUDED.level
    RETURNING id INTO produits_locaux_id;

    IF produits_locaux_id IS NULL THEN SELECT id INTO produits_locaux_id FROM public.categories WHERE slug = 'produits-locaux'; END IF;

    INSERT INTO public.category_translations (category_id, language_code, name) VALUES
        (produits_locaux_id, 'fr', 'Produits locaux algériens'),
        (produits_locaux_id, 'ar', 'منتجات محلية جزائرية'),
        (produits_locaux_id, 'en', 'Algerian local products'),
        (produits_locaux_id, 'es', 'Productos locales argelinos'),
        (produits_locaux_id, 'de', 'Algerische lokale Produkte'),
        (produits_locaux_id, 'it', 'Prodotti locali algerini')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

        -- Niveau 2
        PERFORM public.insert_category_with_translations(produits_locaux_id, 'huile-olive-terroir', 2, 1,
            '{"fr": "huile d’olive du terroir", "ar": "زيت زيتون من terroir", "en": "terroir olive oil", "es": "aceite de oliva de terroir", "de": "Terroir-Olivenöl", "it": "olio d’oliva del terroir"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(produits_locaux_id, 'dattes-deglet-nour', 2, 2,
            '{"fr": "dattes Deglet Nour", "ar": "تمر دقلة نور", "en": "Deglet Nour dates", "es": "dátiles Deglet Nour", "de": "Deglet Nour Datteln", "it": "datteri Deglet Nour"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(produits_locaux_id, 'dattes-fourrees', 2, 3,
            '{"fr": "dattes fourrées artisanales", "ar": "تمر محشو يدويًا", "en": "artisan stuffed dates", "es": "dátiles rellenos artesanales", "de": "handgefüllte Datteln", "it": "datteri farciti artigianali"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(produits_locaux_id, 'miel-naturel', 2, 4,
            '{"fr": "miel naturel", "ar": "عسل طبيعي", "en": "natural honey", "es": "miel natural", "de": "Naturhonig", "it": "miele naturale"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(produits_locaux_id, 'couscous-traditionnel', 2, 5,
            '{"fr": "couscous traditionnel", "ar": "كسكس تقليدي", "en": "traditional couscous", "es": "cuscús tradicional", "de": "traditioneller Couscous", "it": "couscous tradizionale"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(produits_locaux_id, 'semoule-artisanale', 2, 6,
            '{"fr": "semoule artisanale", "ar": "سميد يدوي", "en": "artisan semolina", "es": "sémola artesanal", "de": "handwerklicher Grieß", "it": "semola artigianale"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(produits_locaux_id, 'epices-locales', 2, 7,
            '{"fr": "épices locales", "ar": "توابل محلية", "en": "local spices", "es": "especias locales", "de": "lokale Gewürze", "it": "spezie locali"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(produits_locaux_id, 'olives-artisanales', 2, 8,
            '{"fr": "olives artisanales", "ar": "زيتون يدوي", "en": "artisan olives", "es": "aceitunas artesanales", "de": "handwerkliche Oliven", "it": "olive artigianali"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(produits_locaux_id, 'conserves-traditionnelles', 2, 9,
            '{"fr": "conserves traditionnelles", "ar": "معلبات تقليدية", "en": "traditional preserves", "es": "conservas tradicionales", "de": "traditionelle Konserven", "it": "conserve tradizionali"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(produits_locaux_id, 'harissa-maison', 2, 10,
            '{"fr": "harissa maison", "ar": "هريسة منزلية", "en": "homemade harissa", "es": "harissa casera", "de": "hausgemachte Harissa", "it": "harissa casalinga"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(produits_locaux_id, 'fromages-locaux', 2, 11,
            '{"fr": "fromages locaux", "ar": "أجبان محلية", "en": "local cheeses", "es": "quesos locales", "de": "lokale Käse", "it": "formaggi locali"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(produits_locaux_id, 'smen', 2, 12,
            '{"fr": "beurre traditionnel (smen)", "ar": "سمن تقليدي", "en": "traditional butter (smen)", "es": "mantequilla tradicional (smen)", "de": "traditionelle Butter (Smen)", "it": "burro tradizionale (smen)"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(produits_locaux_id, 'confitures-artisanales', 2, 13,
            '{"fr": "confitures artisanales", "ar": "مربيات يدوية", "en": "artisan jams", "es": "mermeladas artesanales", "de": "handwerkliche Konfitüren", "it": "confetture artigianali"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(produits_locaux_id, 'fruits-secs', 2, 14,
            '{"fr": "fruits secs", "ar": "فواكه جافة", "en": "dried fruits", "es": "frutos secos", "de": "Trockenfrüchte", "it": "frutta secca"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(produits_locaux_id, 'plantes-medicinales', 2, 15,
            '{"fr": "plantes médicinales", "ar": "نباتات طبية", "en": "medicinal plants", "es": "plantas medicinales", "de": "Heilpflanzen", "it": "piante medicinali"}'::jsonb);
        
        PERFORM public.insert_category_with_translations(produits_locaux_id, 'herbes-aromatiques', 2, 16,
            '{"fr": "herbes aromatiques", "ar": "أعشاب عطرية", "en": "aromatic herbs", "es": "hierbas aromáticas", "de": "Aromatische Kräuter", "it": "erbe aromatiche"}'::jsonb);

END $$;
