-- Migration: Électroménager (Generated Recursive)
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

    -- Level 0: electromenager
    INSERT INTO categories (id, slug, level, name)
    VALUES ('electromenager', 'electromenager', 0, 'Électroménager')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 0, name = EXCLUDED.name
    RETURNING id INTO root_id;
    PERFORM insert_category_translations('electromenager', 'fr', 'Électroménager');
    PERFORM insert_category_translations('electromenager', 'ar', 'الأجهزة المنزلية');
    PERFORM insert_category_translations('electromenager', 'en', 'Home Appliances');
    PERFORM insert_category_translations('electromenager', 'de', 'Haushaltsgeräte');
    PERFORM insert_category_translations('electromenager', 'es', 'Electrodomésticos');
    PERFORM insert_category_translations('electromenager', 'it', 'Elettrodomestici');

        -- Level 1: refrigerateurs-congelateurs
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('refrigerateurs-congelateurs', 'refrigerateurs-congelateurs', 1, root_id, 'Réfrigérateurs & Congélateurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('refrigerateurs-congelateurs', 'fr', 'Réfrigérateurs & Congélateurs');
        PERFORM insert_category_translations('refrigerateurs-congelateurs', 'ar', 'ثلاجات ومجمدات');
        PERFORM insert_category_translations('refrigerateurs-congelateurs', 'en', 'Refrigerators & Freezers');
        PERFORM insert_category_translations('refrigerateurs-congelateurs', 'de', 'Kühlschränke & Gefriergeräte');
        PERFORM insert_category_translations('refrigerateurs-congelateurs', 'es', 'Refrigeradores y Congeladores');
        PERFORM insert_category_translations('refrigerateurs-congelateurs', 'it', 'Frigoriferi e Congelatori');

            -- Level 2: refrigerateurs-combines
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('refrigerateurs-combines', 'refrigerateurs-combines', 2, l1_id, 'Réfrigérateurs combinés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('refrigerateurs-combines', 'fr', 'Réfrigérateurs combinés');
            PERFORM insert_category_translations('refrigerateurs-combines', 'ar', 'ثلاجات مشتركة (ثلاجة+مجمد)');
            PERFORM insert_category_translations('refrigerateurs-combines', 'en', 'Combi refrigerators');
            PERFORM insert_category_translations('refrigerateurs-combines', 'de', 'Kühl-Gefrier-Kombinationen');
            PERFORM insert_category_translations('refrigerateurs-combines', 'es', 'Refrigeradores combinados');
            PERFORM insert_category_translations('refrigerateurs-combines', 'it', 'Frigoriferi combinati');

            -- Level 2: refrigerateurs-simples
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('refrigerateurs-simples', 'refrigerateurs-simples', 2, l1_id, 'Réfrigérateurs simples')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('refrigerateurs-simples', 'fr', 'Réfrigérateurs simples');
            PERFORM insert_category_translations('refrigerateurs-simples', 'ar', 'ثلاجات باب واحد');
            PERFORM insert_category_translations('refrigerateurs-simples', 'en', 'Single-door refrigerators');
            PERFORM insert_category_translations('refrigerateurs-simples', 'de', 'Ein-Tür-Kühlschränke');
            PERFORM insert_category_translations('refrigerateurs-simples', 'es', 'Refrigeradores de una puerta');
            PERFORM insert_category_translations('refrigerateurs-simples', 'it', 'Frigoriferi monoporta');

            -- Level 2: refrigerateurs-americains
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('refrigerateurs-americains', 'refrigerateurs-americains', 2, l1_id, 'Réfrigérateurs américains')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('refrigerateurs-americains', 'fr', 'Réfrigérateurs américains');
            PERFORM insert_category_translations('refrigerateurs-americains', 'ar', 'ثلاجات أمريكية (بابين متقابلين)');
            PERFORM insert_category_translations('refrigerateurs-americains', 'en', 'American-style (side-by-side)');
            PERFORM insert_category_translations('refrigerateurs-americains', 'de', 'Side-by-Side-Kühlschränke');
            PERFORM insert_category_translations('refrigerateurs-americains', 'es', 'Refrigeradores americanos (side-by-side)');
            PERFORM insert_category_translations('refrigerateurs-americains', 'it', 'Frigoriferi americani (side-by-side)');

            -- Level 2: refrigerateurs-multi-portes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('refrigerateurs-multi-portes', 'refrigerateurs-multi-portes', 2, l1_id, 'Réfrigérateurs multi-portes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('refrigerateurs-multi-portes', 'fr', 'Réfrigérateurs multi-portes');
            PERFORM insert_category_translations('refrigerateurs-multi-portes', 'ar', 'ثلاجات متعددة الأبواب');
            PERFORM insert_category_translations('refrigerateurs-multi-portes', 'en', 'Multi-door refrigerators');
            PERFORM insert_category_translations('refrigerateurs-multi-portes', 'de', 'Mehrtürige Kühlschränke');
            PERFORM insert_category_translations('refrigerateurs-multi-portes', 'es', 'Refrigeradores multipuerta');
            PERFORM insert_category_translations('refrigerateurs-multi-portes', 'it', 'Frigoriferi multporta');

            -- Level 2: refrigerateurs-encastrables
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('refrigerateurs-encastrables', 'refrigerateurs-encastrables', 2, l1_id, 'Réfrigérateurs encastrables')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('refrigerateurs-encastrables', 'fr', 'Réfrigérateurs encastrables');
            PERFORM insert_category_translations('refrigerateurs-encastrables', 'ar', 'ثلاجات مدمجة');
            PERFORM insert_category_translations('refrigerateurs-encastrables', 'en', 'Built-in refrigerators');
            PERFORM insert_category_translations('refrigerateurs-encastrables', 'de', 'Einbaukühlschränke');
            PERFORM insert_category_translations('refrigerateurs-encastrables', 'es', 'Refrigeradores empotrables');
            PERFORM insert_category_translations('refrigerateurs-encastrables', 'it', 'Frigoriferi da incasso');

            -- Level 2: mini-frigos
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mini-frigos', 'mini-frigos', 2, l1_id, 'Mini-frigos')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mini-frigos', 'fr', 'Mini-frigos');
            PERFORM insert_category_translations('mini-frigos', 'ar', 'ثلاجات صغيرة');
            PERFORM insert_category_translations('mini-frigos', 'en', 'Mini fridges');
            PERFORM insert_category_translations('mini-frigos', 'de', 'Minikühlschränke');
            PERFORM insert_category_translations('mini-frigos', 'es', 'Mini refrigeradores');
            PERFORM insert_category_translations('mini-frigos', 'it', 'Mini-frigo');

            -- Level 2: congelateurs-coffre
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('congelateurs-coffre', 'congelateurs-coffre', 2, l1_id, 'Congélateurs coffre')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('congelateurs-coffre', 'fr', 'Congélateurs coffre');
            PERFORM insert_category_translations('congelateurs-coffre', 'ar', 'مجمدات صندوقية');
            PERFORM insert_category_translations('congelateurs-coffre', 'en', 'Chest freezers');
            PERFORM insert_category_translations('congelateurs-coffre', 'de', 'Truhen-Gefriergeräte');
            PERFORM insert_category_translations('congelateurs-coffre', 'es', 'Congeladores horizontales (cofre)');
            PERFORM insert_category_translations('congelateurs-coffre', 'it', 'Congelatori a pozzetto');

            -- Level 2: congelateurs-armoires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('congelateurs-armoires', 'congelateurs-armoires', 2, l1_id, 'Congélateurs armoires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('congelateurs-armoires', 'fr', 'Congélateurs armoires');
            PERFORM insert_category_translations('congelateurs-armoires', 'ar', 'مجمدات عمودية');
            PERFORM insert_category_translations('congelateurs-armoires', 'en', 'Upright freezers');
            PERFORM insert_category_translations('congelateurs-armoires', 'de', 'Stand-Gefrierschränke');
            PERFORM insert_category_translations('congelateurs-armoires', 'es', 'Congeladores verticales (armario)');
            PERFORM insert_category_translations('congelateurs-armoires', 'it', 'Congelatori verticali');

            -- Level 2: congelateurs-compacts
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('congelateurs-compacts', 'congelateurs-compacts', 2, l1_id, 'Congélateurs compacts')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('congelateurs-compacts', 'fr', 'Congélateurs compacts');
            PERFORM insert_category_translations('congelateurs-compacts', 'ar', 'مجمدات مدمجة صغيرة');
            PERFORM insert_category_translations('congelateurs-compacts', 'en', 'Compact freezers');
            PERFORM insert_category_translations('congelateurs-compacts', 'de', 'Kompakt-Gefriergeräte');
            PERFORM insert_category_translations('congelateurs-compacts', 'es', 'Congeladores compactos');
            PERFORM insert_category_translations('congelateurs-compacts', 'it', 'Congelatori compatti');

            -- Level 2: refrigerateurs-boissons
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('refrigerateurs-boissons', 'refrigerateurs-boissons', 2, l1_id, 'Réfrigérateurs à boissons')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('refrigerateurs-boissons', 'fr', 'Réfrigérateurs à boissons');
            PERFORM insert_category_translations('refrigerateurs-boissons', 'ar', 'ثلاجات للمشروبات');
            PERFORM insert_category_translations('refrigerateurs-boissons', 'en', 'Beverage refrigerators');
            PERFORM insert_category_translations('refrigerateurs-boissons', 'de', 'Getränkekühlschränke');
            PERFORM insert_category_translations('refrigerateurs-boissons', 'es', 'Refrigeradores para bebidas');
            PERFORM insert_category_translations('refrigerateurs-boissons', 'it', 'Frigoriferi per bevande');

            -- Level 2: refrigerateurs-vitres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('refrigerateurs-vitres', 'refrigerateurs-vitres', 2, l1_id, 'Réfrigérateurs vitrés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('refrigerateurs-vitres', 'fr', 'Réfrigérateurs vitrés');
            PERFORM insert_category_translations('refrigerateurs-vitres', 'ar', 'ثلاجات بأبواب زجاجية');
            PERFORM insert_category_translations('refrigerateurs-vitres', 'en', 'Glass-door refrigerators');
            PERFORM insert_category_translations('refrigerateurs-vitres', 'de', 'Glastür-Kühlschränke');
            PERFORM insert_category_translations('refrigerateurs-vitres', 'es', 'Refrigeradores con puerta de vidrio');
            PERFORM insert_category_translations('refrigerateurs-vitres', 'it', 'Frigoriferi con porta in vetro');

            -- Level 2: refrigerateurs-professionnels
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('refrigerateurs-professionnels', 'refrigerateurs-professionnels', 2, l1_id, 'Réfrigérateurs professionnels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('refrigerateurs-professionnels', 'fr', 'Réfrigérateurs professionnels');
            PERFORM insert_category_translations('refrigerateurs-professionnels', 'ar', 'ثلاجات احترافية');
            PERFORM insert_category_translations('refrigerateurs-professionnels', 'en', 'Professional refrigerators');
            PERFORM insert_category_translations('refrigerateurs-professionnels', 'de', 'Profi-Kühlschränke');
            PERFORM insert_category_translations('refrigerateurs-professionnels', 'es', 'Refrigeradores profesionales');
            PERFORM insert_category_translations('refrigerateurs-professionnels', 'it', 'Frigoriferi professionali');

        -- Level 1: lavage-sechage
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lavage-sechage', 'lavage-sechage', 1, root_id, 'Lavage & Séchage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('lavage-sechage', 'fr', 'Lavage & Séchage');
        PERFORM insert_category_translations('lavage-sechage', 'ar', 'الغسيل والتجفيف');
        PERFORM insert_category_translations('lavage-sechage', 'en', 'Washing & Drying');
        PERFORM insert_category_translations('lavage-sechage', 'de', 'Waschen & Trocknen');
        PERFORM insert_category_translations('lavage-sechage', 'es', 'Lavado y Secado');
        PERFORM insert_category_translations('lavage-sechage', 'it', 'Lavaggio e Asciugatura');

            -- Level 2: lave-linge-frontal
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lave-linge-frontal', 'lave-linge-frontal', 2, l1_id, 'Machines à laver frontales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lave-linge-frontal', 'fr', 'Machines à laver frontales');
            PERFORM insert_category_translations('lave-linge-frontal', 'ar', 'غسالات أمامية');
            PERFORM insert_category_translations('lave-linge-frontal', 'en', 'Front-load washing machines');
            PERFORM insert_category_translations('lave-linge-frontal', 'de', 'Frontlader-Waschmaschinen');
            PERFORM insert_category_translations('lave-linge-frontal', 'es', 'Lavadoras de carga frontal');
            PERFORM insert_category_translations('lave-linge-frontal', 'it', 'Lavatrici a carico frontale');

            -- Level 2: lave-linge-top
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lave-linge-top', 'lave-linge-top', 2, l1_id, 'Machines à laver top')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lave-linge-top', 'fr', 'Machines à laver top');
            PERFORM insert_category_translations('lave-linge-top', 'ar', 'غسالات علوية');
            PERFORM insert_category_translations('lave-linge-top', 'en', 'Top-load washing machines');
            PERFORM insert_category_translations('lave-linge-top', 'de', 'Toplader-Waschmaschinen');
            PERFORM insert_category_translations('lave-linge-top', 'es', 'Lavadoras de carga superior');
            PERFORM insert_category_translations('lave-linge-top', 'it', 'Lavatrici a carico dall''alto');

            -- Level 2: lave-linge-grande-capacite
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lave-linge-grande-capacite', 'lave-linge-grande-capacite', 2, l1_id, 'Lave-linges grande capacité')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lave-linge-grande-capacite', 'fr', 'Lave-linges grande capacité');
            PERFORM insert_category_translations('lave-linge-grande-capacite', 'ar', 'غسالات سعة كبيرة');
            PERFORM insert_category_translations('lave-linge-grande-capacite', 'en', 'Large-capacity washers');
            PERFORM insert_category_translations('lave-linge-grande-capacite', 'de', 'Waschmaschinen mit großer Kapazität');
            PERFORM insert_category_translations('lave-linge-grande-capacite', 'es', 'Lavadoras de gran capacidad');
            PERFORM insert_category_translations('lave-linge-grande-capacite', 'it', 'Lavatrici grande capacità');

            -- Level 2: lave-linge-connecte
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lave-linge-connecte', 'lave-linge-connecte', 2, l1_id, 'Lave-linges connectés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lave-linge-connecte', 'fr', 'Lave-linges connectés');
            PERFORM insert_category_translations('lave-linge-connecte', 'ar', 'غسالات ذكية');
            PERFORM insert_category_translations('lave-linge-connecte', 'en', 'Smart washers');
            PERFORM insert_category_translations('lave-linge-connecte', 'de', 'Vernetzte Waschmaschinen');
            PERFORM insert_category_translations('lave-linge-connecte', 'es', 'Lavadoras inteligentes');
            PERFORM insert_category_translations('lave-linge-connecte', 'it', 'Lavatrici smart');

            -- Level 2: seche-linge-condensation
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('seche-linge-condensation', 'seche-linge-condensation', 2, l1_id, 'Sèche-linges à condensation')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('seche-linge-condensation', 'fr', 'Sèche-linges à condensation');
            PERFORM insert_category_translations('seche-linge-condensation', 'ar', 'مجففات تكثيف');
            PERFORM insert_category_translations('seche-linge-condensation', 'en', 'Condenser dryers');
            PERFORM insert_category_translations('seche-linge-condensation', 'de', 'Kondensationstrockner');
            PERFORM insert_category_translations('seche-linge-condensation', 'es', 'Secadoras de condensación');
            PERFORM insert_category_translations('seche-linge-condensation', 'it', 'Asciugatrici a condensazione');

            -- Level 2: seche-linge-pompe-a-chaleur
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('seche-linge-pompe-a-chaleur', 'seche-linge-pompe-a-chaleur', 2, l1_id, 'Sèche-linges pompe à chaleur')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('seche-linge-pompe-a-chaleur', 'fr', 'Sèche-linges pompe à chaleur');
            PERFORM insert_category_translations('seche-linge-pompe-a-chaleur', 'ar', 'مجففات بمضخة حرارة');
            PERFORM insert_category_translations('seche-linge-pompe-a-chaleur', 'en', 'Heat pump dryers');
            PERFORM insert_category_translations('seche-linge-pompe-a-chaleur', 'de', 'Wärmepumpentrockner');
            PERFORM insert_category_translations('seche-linge-pompe-a-chaleur', 'es', 'Secadoras de bomba de calor');
            PERFORM insert_category_translations('seche-linge-pompe-a-chaleur', 'it', 'Asciugatrici a pompa di calore');

            -- Level 2: seche-linge-evacuation
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('seche-linge-evacuation', 'seche-linge-evacuation', 2, l1_id, 'Sèche-linges évacuation')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('seche-linge-evacuation', 'fr', 'Sèche-linges évacuation');
            PERFORM insert_category_translations('seche-linge-evacuation', 'ar', 'مجففات تهوية');
            PERFORM insert_category_translations('seche-linge-evacuation', 'en', 'Vented dryers');
            PERFORM insert_category_translations('seche-linge-evacuation', 'de', 'Ablufttrockner');
            PERFORM insert_category_translations('seche-linge-evacuation', 'es', 'Secadoras de evacuación');
            PERFORM insert_category_translations('seche-linge-evacuation', 'it', 'Asciugatrici ventilate');

            -- Level 2: lave-linge-sechant
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lave-linge-sechant', 'lave-linge-sechant', 2, l1_id, 'Lave-linge séchant')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lave-linge-sechant', 'fr', 'Lave-linge séchant');
            PERFORM insert_category_translations('lave-linge-sechant', 'ar', 'غسالة-مجفف');
            PERFORM insert_category_translations('lave-linge-sechant', 'en', 'Washer-dryers');
            PERFORM insert_category_translations('lave-linge-sechant', 'de', 'Waschtrockner');
            PERFORM insert_category_translations('lave-linge-sechant', 'es', 'Lavasecadoras');
            PERFORM insert_category_translations('lave-linge-sechant', 'it', 'Lavasciuga');

            -- Level 2: mini-lave-linge
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mini-lave-linge', 'mini-lave-linge', 2, l1_id, 'Mini lave-linges')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mini-lave-linge', 'fr', 'Mini lave-linges');
            PERFORM insert_category_translations('mini-lave-linge', 'ar', 'غسالات صغيرة');
            PERFORM insert_category_translations('mini-lave-linge', 'en', 'Mini washers');
            PERFORM insert_category_translations('mini-lave-linge', 'de', 'Mini-Waschmaschinen');
            PERFORM insert_category_translations('mini-lave-linge', 'es', 'Mini lavadoras');
            PERFORM insert_category_translations('mini-lave-linge', 'it', 'Mini lavatrici');

            -- Level 2: machines-professionnelles-lavage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('machines-professionnelles-lavage', 'machines-professionnelles-lavage', 2, l1_id, 'Machines professionnelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('machines-professionnelles-lavage', 'fr', 'Machines professionnelles');
            PERFORM insert_category_translations('machines-professionnelles-lavage', 'ar', 'أجهزة احترافية');
            PERFORM insert_category_translations('machines-professionnelles-lavage', 'en', 'Professional machines');
            PERFORM insert_category_translations('machines-professionnelles-lavage', 'de', 'Professionelle Maschinen');
            PERFORM insert_category_translations('machines-professionnelles-lavage', 'es', 'Máquinas profesionales');
            PERFORM insert_category_translations('machines-professionnelles-lavage', 'it', 'Macchine professionali');

        -- Level 1: cuisson-cuisine
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cuisson-cuisine', 'cuisson-cuisine', 1, root_id, 'Cuisson & Cuisine')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('cuisson-cuisine', 'fr', 'Cuisson & Cuisine');
        PERFORM insert_category_translations('cuisson-cuisine', 'ar', 'الطهي والمطبخ');
        PERFORM insert_category_translations('cuisson-cuisine', 'en', 'Cooking & Kitchen');
        PERFORM insert_category_translations('cuisson-cuisine', 'de', 'Kochen & Küche');
        PERFORM insert_category_translations('cuisson-cuisine', 'es', 'Cocina y Cocción');
        PERFORM insert_category_translations('cuisson-cuisine', 'it', 'Cottura e Cucina');

            -- Level 2: cuisinieres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cuisinieres', 'cuisinieres', 2, l1_id, 'Cuisinières')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cuisinieres', 'fr', 'Cuisinières');
            PERFORM insert_category_translations('cuisinieres', 'ar', 'أفران الطبخ');
            PERFORM insert_category_translations('cuisinieres', 'en', 'Cookers');
            PERFORM insert_category_translations('cuisinieres', 'de', 'Herde');
            PERFORM insert_category_translations('cuisinieres', 'es', 'Cocinas');
            PERFORM insert_category_translations('cuisinieres', 'it', 'Cucine');

                -- Level 3: gaz
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gaz', 'gaz', 3, l2_id, 'Gaz')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('gaz', 'fr', 'Gaz');
                PERFORM insert_category_translations('gaz', 'ar', 'غاز');
                PERFORM insert_category_translations('gaz', 'en', 'Gas');
                PERFORM insert_category_translations('gaz', 'de', 'Gas');
                PERFORM insert_category_translations('gaz', 'es', 'Gas');
                PERFORM insert_category_translations('gaz', 'it', 'Gas');

                -- Level 3: electrique
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('electrique', 'electrique', 3, l2_id, 'Électrique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('electrique', 'fr', 'Électrique');
                PERFORM insert_category_translations('electrique', 'ar', 'كهرباء');
                PERFORM insert_category_translations('electrique', 'en', 'Electric');
                PERFORM insert_category_translations('electrique', 'de', 'Elektro');
                PERFORM insert_category_translations('electrique', 'es', 'Eléctrica');
                PERFORM insert_category_translations('electrique', 'it', 'Elettrica');

                -- Level 3: mixte
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mixte', 'mixte', 3, l2_id, 'Mixte')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('mixte', 'fr', 'Mixte');
                PERFORM insert_category_translations('mixte', 'ar', 'مزدوج');
                PERFORM insert_category_translations('mixte', 'en', 'Dual-fuel');
                PERFORM insert_category_translations('mixte', 'de', 'Mischbetrieb');
                PERFORM insert_category_translations('mixte', 'es', 'Mixta');
                PERFORM insert_category_translations('mixte', 'it', 'Mista');

            -- Level 2: fours-encastrables
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fours-encastrables', 'fours-encastrables', 2, l1_id, 'Fours encastrables')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fours-encastrables', 'fr', 'Fours encastrables');
            PERFORM insert_category_translations('fours-encastrables', 'ar', 'أفران مدمجة');
            PERFORM insert_category_translations('fours-encastrables', 'en', 'Built-in ovens');
            PERFORM insert_category_translations('fours-encastrables', 'de', 'Einbauöfen');
            PERFORM insert_category_translations('fours-encastrables', 'es', 'Hornos empotrables');
            PERFORM insert_category_translations('fours-encastrables', 'it', 'Forni da incasso');

                -- Level 3: pyrolyse
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pyrolyse', 'pyrolyse', 3, l2_id, 'Pyrolyse')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('pyrolyse', 'fr', 'Pyrolyse');
                PERFORM insert_category_translations('pyrolyse', 'ar', 'بيروليز');
                PERFORM insert_category_translations('pyrolyse', 'en', 'Pyrolysis');
                PERFORM insert_category_translations('pyrolyse', 'de', 'Pyrolyse');
                PERFORM insert_category_translations('pyrolyse', 'es', 'Pirolíticos');
                PERFORM insert_category_translations('pyrolyse', 'it', 'Pirolisi');

                -- Level 3: catalyse
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('catalyse', 'catalyse', 3, l2_id, 'Catalyse')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('catalyse', 'fr', 'Catalyse');
                PERFORM insert_category_translations('catalyse', 'ar', 'تحفيز');
                PERFORM insert_category_translations('catalyse', 'en', 'Catalytic');
                PERFORM insert_category_translations('catalyse', 'de', 'Katalyse');
                PERFORM insert_category_translations('catalyse', 'es', 'Catalíticos');
                PERFORM insert_category_translations('catalyse', 'it', 'Catalisi');

                -- Level 3: vapeur
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vapeur', 'vapeur', 3, l2_id, 'Vapeur')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('vapeur', 'fr', 'Vapeur');
                PERFORM insert_category_translations('vapeur', 'ar', 'بخار');
                PERFORM insert_category_translations('vapeur', 'en', 'Steam');
                PERFORM insert_category_translations('vapeur', 'de', 'Dampf');
                PERFORM insert_category_translations('vapeur', 'es', 'Vapor');
                PERFORM insert_category_translations('vapeur', 'it', 'Vapore');

            -- Level 2: micro-ondes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('micro-ondes', 'micro-ondes', 2, l1_id, 'Micro-ondes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('micro-ondes', 'fr', 'Micro-ondes');
            PERFORM insert_category_translations('micro-ondes', 'ar', 'أفران مايكروويف');
            PERFORM insert_category_translations('micro-ondes', 'en', 'Microwave ovens');
            PERFORM insert_category_translations('micro-ondes', 'de', 'Mikrowellen');
            PERFORM insert_category_translations('micro-ondes', 'es', 'Microondas');
            PERFORM insert_category_translations('micro-ondes', 'it', 'Microonde');

                -- Level 3: grill
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('grill', 'grill', 3, l2_id, 'Grill')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('grill', 'fr', 'Grill');
                PERFORM insert_category_translations('grill', 'ar', 'شواية');
                PERFORM insert_category_translations('grill', 'en', 'Grill');
                PERFORM insert_category_translations('grill', 'de', 'Grill');
                PERFORM insert_category_translations('grill', 'es', 'Grill');
                PERFORM insert_category_translations('grill', 'it', 'Grill');

                -- Level 3: combine
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('combine', 'combine', 3, l2_id, 'Combiné')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('combine', 'fr', 'Combiné');
                PERFORM insert_category_translations('combine', 'ar', 'مركّب');
                PERFORM insert_category_translations('combine', 'en', 'Combination');
                PERFORM insert_category_translations('combine', 'de', 'Kombi');
                PERFORM insert_category_translations('combine', 'es', 'Combinado');
                PERFORM insert_category_translations('combine', 'it', 'Combinato');

            -- Level 2: plaques-de-cuisson
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('plaques-de-cuisson', 'plaques-de-cuisson', 2, l1_id, 'Plaques de cuisson')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('plaques-de-cuisson', 'fr', 'Plaques de cuisson');
            PERFORM insert_category_translations('plaques-de-cuisson', 'ar', 'أسطح الطهي');
            PERFORM insert_category_translations('plaques-de-cuisson', 'en', 'Cooktops');
            PERFORM insert_category_translations('plaques-de-cuisson', 'de', 'Kochfelder');
            PERFORM insert_category_translations('plaques-de-cuisson', 'es', 'Placas de cocina');
            PERFORM insert_category_translations('plaques-de-cuisson', 'it', 'Piani cottura');

                -- Level 3: gaz-plaques
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gaz-plaques', 'gaz-plaques', 3, l2_id, 'Gaz')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('gaz-plaques', 'fr', 'Gaz');
                PERFORM insert_category_translations('gaz-plaques', 'ar', 'غاز');
                PERFORM insert_category_translations('gaz-plaques', 'en', 'Gas');
                PERFORM insert_category_translations('gaz-plaques', 'de', 'Gas');
                PERFORM insert_category_translations('gaz-plaques', 'es', 'Gas');
                PERFORM insert_category_translations('gaz-plaques', 'it', 'Gas');

                -- Level 3: induction
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('induction', 'induction', 3, l2_id, 'Induction')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('induction', 'fr', 'Induction');
                PERFORM insert_category_translations('induction', 'ar', 'حثّ');
                PERFORM insert_category_translations('induction', 'en', 'Induction');
                PERFORM insert_category_translations('induction', 'de', 'Induktion');
                PERFORM insert_category_translations('induction', 'es', 'Inducción');
                PERFORM insert_category_translations('induction', 'it', 'Induzione');

                -- Level 3: vitroceramique
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vitroceramique', 'vitroceramique', 3, l2_id, 'Vitrocéramique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('vitroceramique', 'fr', 'Vitrocéramique');
                PERFORM insert_category_translations('vitroceramique', 'ar', 'سيراميك');
                PERFORM insert_category_translations('vitroceramique', 'en', 'Ceramic');
                PERFORM insert_category_translations('vitroceramique', 'de', 'Glaskeramik');
                PERFORM insert_category_translations('vitroceramique', 'es', 'Vitrocerámica');
                PERFORM insert_category_translations('vitroceramique', 'it', 'Vetroceramica');

            -- Level 2: tables-de-cuisson-portatives
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tables-de-cuisson-portatives', 'tables-de-cuisson-portatives', 2, l1_id, 'Tables de cuisson portatives')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tables-de-cuisson-portatives', 'fr', 'Tables de cuisson portatives');
            PERFORM insert_category_translations('tables-de-cuisson-portatives', 'ar', 'طاولات طهي محمولة');
            PERFORM insert_category_translations('tables-de-cuisson-portatives', 'en', 'Portable cooktops');
            PERFORM insert_category_translations('tables-de-cuisson-portatives', 'de', 'Tragbare Kochplatten');
            PERFORM insert_category_translations('tables-de-cuisson-portatives', 'es', 'Placas portátiles');
            PERFORM insert_category_translations('tables-de-cuisson-portatives', 'it', 'Piastre portatili');

            -- Level 2: friteuses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('friteuses', 'friteuses', 2, l1_id, 'Friteuses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('friteuses', 'fr', 'Friteuses');
            PERFORM insert_category_translations('friteuses', 'ar', 'قلايات');
            PERFORM insert_category_translations('friteuses', 'en', 'Fryers');
            PERFORM insert_category_translations('friteuses', 'de', 'Fritteusen');
            PERFORM insert_category_translations('friteuses', 'es', 'Freidoras');
            PERFORM insert_category_translations('friteuses', 'it', 'Friggitrici');

                -- Level 3: classiques
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('classiques', 'classiques', 3, l2_id, 'Classiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('classiques', 'fr', 'Classiques');
                PERFORM insert_category_translations('classiques', 'ar', 'كلاسيكية');
                PERFORM insert_category_translations('classiques', 'en', 'Classic');
                PERFORM insert_category_translations('classiques', 'de', 'Klassisch');
                PERFORM insert_category_translations('classiques', 'es', 'Clásicas');
                PERFORM insert_category_translations('classiques', 'it', 'Classiche');

                -- Level 3: air-fryer
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('air-fryer', 'air-fryer', 3, l2_id, 'Air fryer')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('air-fryer', 'fr', 'Air fryer');
                PERFORM insert_category_translations('air-fryer', 'ar', 'هوائية');
                PERFORM insert_category_translations('air-fryer', 'en', 'Air fryer');
                PERFORM insert_category_translations('air-fryer', 'de', 'Heißluftfritteuse');
                PERFORM insert_category_translations('air-fryer', 'es', 'De aire');
                PERFORM insert_category_translations('air-fryer', 'it', 'Ad aria');

            -- Level 2: multicuiseurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('multicuiseurs', 'multicuiseurs', 2, l1_id, 'Multicuiseurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('multicuiseurs', 'fr', 'Multicuiseurs');
            PERFORM insert_category_translations('multicuiseurs', 'ar', 'أجهزة طبخ متعددة');
            PERFORM insert_category_translations('multicuiseurs', 'en', 'Multi-cookers');
            PERFORM insert_category_translations('multicuiseurs', 'de', 'Multikocher');
            PERFORM insert_category_translations('multicuiseurs', 'es', 'Multicookers');
            PERFORM insert_category_translations('multicuiseurs', 'it', 'Multicooker');

            -- Level 2: autocuiseurs-cocottes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('autocuiseurs-cocottes', 'autocuiseurs-cocottes', 2, l1_id, 'Autocuiseurs & cocottes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('autocuiseurs-cocottes', 'fr', 'Autocuiseurs & cocottes');
            PERFORM insert_category_translations('autocuiseurs-cocottes', 'ar', 'قدور ضغط وكوكوت');
            PERFORM insert_category_translations('autocuiseurs-cocottes', 'en', 'Pressure cookers & Dutch ovens');
            PERFORM insert_category_translations('autocuiseurs-cocottes', 'de', 'Schnellkochtöpfe & Schmortöpfe');
            PERFORM insert_category_translations('autocuiseurs-cocottes', 'es', 'Ollas a presión y cocottes');
            PERFORM insert_category_translations('autocuiseurs-cocottes', 'it', 'Pentole a pressione e cocotte');

            -- Level 2: machines-sous-vide
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('machines-sous-vide', 'machines-sous-vide', 2, l1_id, 'Machines sous-vide')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('machines-sous-vide', 'fr', 'Machines sous-vide');
            PERFORM insert_category_translations('machines-sous-vide', 'ar', 'أجهزة تفريغ الهواء');
            PERFORM insert_category_translations('machines-sous-vide', 'en', 'Vacuum sealing machines');
            PERFORM insert_category_translations('machines-sous-vide', 'de', 'Vakuumiergeräte');
            PERFORM insert_category_translations('machines-sous-vide', 'es', 'Máquinas de envasado al vacío');
            PERFORM insert_category_translations('machines-sous-vide', 'it', 'Macchine sottovuoto');

            -- Level 2: chauffe-plats
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chauffe-plats', 'chauffe-plats', 2, l1_id, 'Chauffe-plats')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chauffe-plats', 'fr', 'Chauffe-plats');
            PERFORM insert_category_translations('chauffe-plats', 'ar', 'صواني تسخين');
            PERFORM insert_category_translations('chauffe-plats', 'en', 'Warming trays');
            PERFORM insert_category_translations('chauffe-plats', 'de', 'Warmhalteplatten');
            PERFORM insert_category_translations('chauffe-plats', 'es', 'Calientaplatos');
            PERFORM insert_category_translations('chauffe-plats', 'it', 'Scaldavivande');

        -- Level 1: petits-appareils-cuisine
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('petits-appareils-cuisine', 'petits-appareils-cuisine', 1, root_id, 'Petits Appareils de Cuisine')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('petits-appareils-cuisine', 'fr', 'Petits Appareils de Cuisine');
        PERFORM insert_category_translations('petits-appareils-cuisine', 'ar', 'أجهزة مطبخ صغيرة');
        PERFORM insert_category_translations('petits-appareils-cuisine', 'en', 'Small Kitchen Appliances');
        PERFORM insert_category_translations('petits-appareils-cuisine', 'de', 'Kleine Küchenmaschinen');
        PERFORM insert_category_translations('petits-appareils-cuisine', 'es', 'Pequeños Electrodomésticos de Cocina');
        PERFORM insert_category_translations('petits-appareils-cuisine', 'it', 'Piccoli Elettrodomestici da Cucina');

            -- Level 2: mixeurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mixeurs', 'mixeurs', 2, l1_id, 'Mixeurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mixeurs', 'fr', 'Mixeurs');
            PERFORM insert_category_translations('mixeurs', 'ar', 'خلاطات يد');
            PERFORM insert_category_translations('mixeurs', 'en', 'Hand mixers');
            PERFORM insert_category_translations('mixeurs', 'de', 'Handmixer');
            PERFORM insert_category_translations('mixeurs', 'es', 'Batidoras de mano');
            PERFORM insert_category_translations('mixeurs', 'it', 'Mixer a immersione');

            -- Level 2: blenders
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('blenders', 'blenders', 2, l1_id, 'Blenders')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('blenders', 'fr', 'Blenders');
            PERFORM insert_category_translations('blenders', 'ar', 'خلاطات');
            PERFORM insert_category_translations('blenders', 'en', 'Blenders');
            PERFORM insert_category_translations('blenders', 'de', 'Standmixer');
            PERFORM insert_category_translations('blenders', 'es', 'Licuadoras');
            PERFORM insert_category_translations('blenders', 'it', 'Frullatori');

            -- Level 2: robots-cuiseurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('robots-cuiseurs', 'robots-cuiseurs', 2, l1_id, 'Robots cuiseurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('robots-cuiseurs', 'fr', 'Robots cuiseurs');
            PERFORM insert_category_translations('robots-cuiseurs', 'ar', 'روبوتات الطبخ');
            PERFORM insert_category_translations('robots-cuiseurs', 'en', 'Cooking robots');
            PERFORM insert_category_translations('robots-cuiseurs', 'de', 'Kochroboter');
            PERFORM insert_category_translations('robots-cuiseurs', 'es', 'Robots de cocina');
            PERFORM insert_category_translations('robots-cuiseurs', 'it', 'Robot da cucina');

            -- Level 2: robots-patissier
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('robots-patissier', 'robots-patissier', 2, l1_id, 'Robots pâtissier')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('robots-patissier', 'fr', 'Robots pâtissier');
            PERFORM insert_category_translations('robots-patissier', 'ar', 'عجّانات');
            PERFORM insert_category_translations('robots-patissier', 'en', 'Stand mixers');
            PERFORM insert_category_translations('robots-patissier', 'de', 'Küchenmaschinen');
            PERFORM insert_category_translations('robots-patissier', 'es', 'Robots pasteleros (amasadoras)');
            PERFORM insert_category_translations('robots-patissier', 'it', 'Planetarie');

            -- Level 2: extracteurs-jus
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('extracteurs-jus', 'extracteurs-jus', 2, l1_id, 'Extracteurs de jus')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('extracteurs-jus', 'fr', 'Extracteurs de jus');
            PERFORM insert_category_translations('extracteurs-jus', 'ar', 'عصارات');
            PERFORM insert_category_translations('extracteurs-jus', 'en', 'Juice extractors');
            PERFORM insert_category_translations('extracteurs-jus', 'de', 'Entsafter');
            PERFORM insert_category_translations('extracteurs-jus', 'es', 'Extractores de jugo');
            PERFORM insert_category_translations('extracteurs-jus', 'it', 'Estrattori di succo');

            -- Level 2: centrifugeuses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('centrifugeuses', 'centrifugeuses', 2, l1_id, 'Centrifugeuses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('centrifugeuses', 'fr', 'Centrifugeuses');
            PERFORM insert_category_translations('centrifugeuses', 'ar', 'عصارات طرد مركزي');
            PERFORM insert_category_translations('centrifugeuses', 'en', 'Centrifugal juicers');
            PERFORM insert_category_translations('centrifugeuses', 'de', 'Zentrifugen');
            PERFORM insert_category_translations('centrifugeuses', 'es', 'Centrífugas');
            PERFORM insert_category_translations('centrifugeuses', 'it', 'Centrifughe');

            -- Level 2: batteurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('batteurs', 'batteurs', 2, l1_id, 'Batteurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('batteurs', 'fr', 'Batteurs');
            PERFORM insert_category_translations('batteurs', 'ar', 'خفاقات كهربائية');
            PERFORM insert_category_translations('batteurs', 'en', 'Electric beaters');
            PERFORM insert_category_translations('batteurs', 'de', 'Rührgeräte');
            PERFORM insert_category_translations('batteurs', 'es', 'Batidores eléctricos');
            PERFORM insert_category_translations('batteurs', 'it', 'Sbattitori elettrici');

            -- Level 2: hachoirs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('hachoirs', 'hachoirs', 2, l1_id, 'Hachoirs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('hachoirs', 'fr', 'Hachoirs');
            PERFORM insert_category_translations('hachoirs', 'ar', 'مفرمات');
            PERFORM insert_category_translations('hachoirs', 'en', 'Choppers');
            PERFORM insert_category_translations('hachoirs', 'de', 'Zerkleinerer');
            PERFORM insert_category_translations('hachoirs', 'es', 'Picadoras');
            PERFORM insert_category_translations('hachoirs', 'it', 'Tritatutto');

            -- Level 2: grill-panini
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('grill-panini', 'grill-panini', 2, l1_id, 'Grill & panini makers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('grill-panini', 'fr', 'Grill & panini makers');
            PERFORM insert_category_translations('grill-panini', 'ar', 'شوايات وصانعات بانيني');
            PERFORM insert_category_translations('grill-panini', 'en', 'Grills & panini makers');
            PERFORM insert_category_translations('grill-panini', 'de', 'Kontaktgrills & Panini-Maker');
            PERFORM insert_category_translations('grill-panini', 'es', 'Parrillas y panini makers');
            PERFORM insert_category_translations('grill-panini', 'it', 'Grill e panini maker');

            -- Level 2: gaufriers
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gaufriers', 'gaufriers', 2, l1_id, 'Gaufriers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gaufriers', 'fr', 'Gaufriers');
            PERFORM insert_category_translations('gaufriers', 'ar', 'صانعات وافل');
            PERFORM insert_category_translations('gaufriers', 'en', 'Waffle makers');
            PERFORM insert_category_translations('gaufriers', 'de', 'Waffeleisen');
            PERFORM insert_category_translations('gaufriers', 'es', 'Gofreras');
            PERFORM insert_category_translations('gaufriers', 'it', 'Waferiere');

            -- Level 2: crepieres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('crepieres', 'crepieres', 2, l1_id, 'Crêpières')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('crepieres', 'fr', 'Crêpières');
            PERFORM insert_category_translations('crepieres', 'ar', 'صانعات كريب');
            PERFORM insert_category_translations('crepieres', 'en', 'Crepe makers');
            PERFORM insert_category_translations('crepieres', 'de', 'Crêpe-Maker');
            PERFORM insert_category_translations('crepieres', 'es', 'Creperas');
            PERFORM insert_category_translations('crepieres', 'it', 'Crepiere');

            -- Level 2: cuiseurs-vapeur
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cuiseurs-vapeur', 'cuiseurs-vapeur', 2, l1_id, 'Cuiseurs vapeur')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cuiseurs-vapeur', 'fr', 'Cuiseurs vapeur');
            PERFORM insert_category_translations('cuiseurs-vapeur', 'ar', 'طباخات بالبخار');
            PERFORM insert_category_translations('cuiseurs-vapeur', 'en', 'Steam cookers');
            PERFORM insert_category_translations('cuiseurs-vapeur', 'de', 'Dampfgarer');
            PERFORM insert_category_translations('cuiseurs-vapeur', 'es', 'Vaporeras');
            PERFORM insert_category_translations('cuiseurs-vapeur', 'it', 'Cuocivapore');

            -- Level 2: cuiseurs-riz
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cuiseurs-riz', 'cuiseurs-riz', 2, l1_id, 'Cuiseurs riz')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cuiseurs-riz', 'fr', 'Cuiseurs riz');
            PERFORM insert_category_translations('cuiseurs-riz', 'ar', 'طباخات الأرز');
            PERFORM insert_category_translations('cuiseurs-riz', 'en', 'Rice cookers');
            PERFORM insert_category_translations('cuiseurs-riz', 'de', 'Reiskocher');
            PERFORM insert_category_translations('cuiseurs-riz', 'es', 'Arroceras');
            PERFORM insert_category_translations('cuiseurs-riz', 'it', 'Cuociriso');

            -- Level 2: moulins-cafe
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('moulins-cafe', 'moulins-cafe', 2, l1_id, 'Moulins à café')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('moulins-cafe', 'fr', 'Moulins à café');
            PERFORM insert_category_translations('moulins-cafe', 'ar', 'مطاحن قهوة');
            PERFORM insert_category_translations('moulins-cafe', 'en', 'Coffee grinders');
            PERFORM insert_category_translations('moulins-cafe', 'de', 'Kaffeemühlen');
            PERFORM insert_category_translations('moulins-cafe', 'es', 'Molinillos de café');
            PERFORM insert_category_translations('moulins-cafe', 'it', 'Macinacaffè');

            -- Level 2: cafetieres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cafetieres', 'cafetieres', 2, l1_id, 'Cafetières')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cafetieres', 'fr', 'Cafetières');
            PERFORM insert_category_translations('cafetieres', 'ar', 'ماكينات قهوة');
            PERFORM insert_category_translations('cafetieres', 'en', 'Coffee makers');
            PERFORM insert_category_translations('cafetieres', 'de', 'Kaffeemaschinen');
            PERFORM insert_category_translations('cafetieres', 'es', 'Cafeteras');
            PERFORM insert_category_translations('cafetieres', 'it', 'Macchine da caffè');

                -- Level 3: expresso
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('expresso', 'expresso', 3, l2_id, 'Expresso')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('expresso', 'fr', 'Expresso');
                PERFORM insert_category_translations('expresso', 'ar', 'إسبريسو');
                PERFORM insert_category_translations('expresso', 'en', 'Espresso');
                PERFORM insert_category_translations('expresso', 'de', 'Espresso');
                PERFORM insert_category_translations('expresso', 'es', 'Espresso');
                PERFORM insert_category_translations('expresso', 'it', 'Espresso');

                -- Level 3: filtre
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('filtre', 'filtre', 3, l2_id, 'Filtre')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('filtre', 'fr', 'Filtre');
                PERFORM insert_category_translations('filtre', 'ar', 'فلتر');
                PERFORM insert_category_translations('filtre', 'en', 'Filter');
                PERFORM insert_category_translations('filtre', 'de', 'Filter');
                PERFORM insert_category_translations('filtre', 'es', 'Filtro');
                PERFORM insert_category_translations('filtre', 'it', 'Filtro');

                -- Level 3: capsules
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('capsules', 'capsules', 3, l2_id, 'Capsules')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('capsules', 'fr', 'Capsules');
                PERFORM insert_category_translations('capsules', 'ar', 'كبسولات');
                PERFORM insert_category_translations('capsules', 'en', 'Capsule');
                PERFORM insert_category_translations('capsules', 'de', 'Kapseln');
                PERFORM insert_category_translations('capsules', 'es', 'Cápsulas');
                PERFORM insert_category_translations('capsules', 'it', 'Capsule');

            -- Level 2: bouilloires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bouilloires', 'bouilloires', 2, l1_id, 'Bouilloires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bouilloires', 'fr', 'Bouilloires');
            PERFORM insert_category_translations('bouilloires', 'ar', 'غلايات ماء');
            PERFORM insert_category_translations('bouilloires', 'en', 'Kettles');
            PERFORM insert_category_translations('bouilloires', 'de', 'Wasserkocher');
            PERFORM insert_category_translations('bouilloires', 'es', 'Hervidores');
            PERFORM insert_category_translations('bouilloires', 'it', 'Bollitori');

            -- Level 2: grille-pain
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('grille-pain', 'grille-pain', 2, l1_id, 'Grille-pain')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('grille-pain', 'fr', 'Grille-pain');
            PERFORM insert_category_translations('grille-pain', 'ar', 'محامص خبز');
            PERFORM insert_category_translations('grille-pain', 'en', 'Toasters');
            PERFORM insert_category_translations('grille-pain', 'de', 'Toaster');
            PERFORM insert_category_translations('grille-pain', 'es', 'Tostadoras');
            PERFORM insert_category_translations('grille-pain', 'it', 'Tostapane');

            -- Level 2: machines-sandwich
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('machines-sandwich', 'machines-sandwich', 2, l1_id, 'Machines à sandwich')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('machines-sandwich', 'fr', 'Machines à sandwich');
            PERFORM insert_category_translations('machines-sandwich', 'ar', 'صانعات ساندويتش');
            PERFORM insert_category_translations('machines-sandwich', 'en', 'Sandwich makers');
            PERFORM insert_category_translations('machines-sandwich', 'de', 'Sandwichmaker');
            PERFORM insert_category_translations('machines-sandwich', 'es', 'Sandwicheras');
            PERFORM insert_category_translations('machines-sandwich', 'it', 'Tostiere');

            -- Level 2: fondue-raclette
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fondue-raclette', 'fondue-raclette', 2, l1_id, 'Appareils à fondue & raclette')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fondue-raclette', 'fr', 'Appareils à fondue & raclette');
            PERFORM insert_category_translations('fondue-raclette', 'ar', 'أجهزة فوندو وراكليت');
            PERFORM insert_category_translations('fondue-raclette', 'en', 'Fondue & raclette appliances');
            PERFORM insert_category_translations('fondue-raclette', 'de', 'Fondue- & Raclette-Geräte');
            PERFORM insert_category_translations('fondue-raclette', 'es', 'Aparatos de fondue y raclette');
            PERFORM insert_category_translations('fondue-raclette', 'it', 'Apparecchi per fonduta e raclette');

        -- Level 1: entretien-maison
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('entretien-maison', 'entretien-maison', 1, root_id, 'Entretien de la Maison')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('entretien-maison', 'fr', 'Entretien de la Maison');
        PERFORM insert_category_translations('entretien-maison', 'ar', 'العناية بالمنزل');
        PERFORM insert_category_translations('entretien-maison', 'en', 'Home Care');
        PERFORM insert_category_translations('entretien-maison', 'de', 'Hauspflege');
        PERFORM insert_category_translations('entretien-maison', 'es', 'Cuidado del Hogar');
        PERFORM insert_category_translations('entretien-maison', 'it', 'Cura della Casa');

            -- Level 2: aspirateurs-traineaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('aspirateurs-traineaux', 'aspirateurs-traineaux', 2, l1_id, 'Aspirateurs traîneaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('aspirateurs-traineaux', 'fr', 'Aspirateurs traîneaux');
            PERFORM insert_category_translations('aspirateurs-traineaux', 'ar', 'مكانس أسطوانية');
            PERFORM insert_category_translations('aspirateurs-traineaux', 'en', 'Canister vacuums');
            PERFORM insert_category_translations('aspirateurs-traineaux', 'de', 'Bodenstaubsauger');
            PERFORM insert_category_translations('aspirateurs-traineaux', 'es', 'Aspiradoras de trineo');
            PERFORM insert_category_translations('aspirateurs-traineaux', 'it', 'Aspirapolvere a traino');

            -- Level 2: aspirateurs-balais
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('aspirateurs-balais', 'aspirateurs-balais', 2, l1_id, 'Aspirateurs balais')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('aspirateurs-balais', 'fr', 'Aspirateurs balais');
            PERFORM insert_category_translations('aspirateurs-balais', 'ar', 'مكانس عصا');
            PERFORM insert_category_translations('aspirateurs-balais', 'en', 'Stick vacuums');
            PERFORM insert_category_translations('aspirateurs-balais', 'de', 'Stielstaubsauger');
            PERFORM insert_category_translations('aspirateurs-balais', 'es', 'Aspiradoras escoba');
            PERFORM insert_category_translations('aspirateurs-balais', 'it', 'Scope elettriche');

            -- Level 2: aspirateurs-robot
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('aspirateurs-robot', 'aspirateurs-robot', 2, l1_id, 'Aspirateurs robot')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('aspirateurs-robot', 'fr', 'Aspirateurs robot');
            PERFORM insert_category_translations('aspirateurs-robot', 'ar', 'مكانس روبوت');
            PERFORM insert_category_translations('aspirateurs-robot', 'en', 'Robot vacuums');
            PERFORM insert_category_translations('aspirateurs-robot', 'de', 'Saugroboter');
            PERFORM insert_category_translations('aspirateurs-robot', 'es', 'Robots aspiradores');
            PERFORM insert_category_translations('aspirateurs-robot', 'it', 'Robot aspirapolvere');

            -- Level 2: aspirateurs-eau-poussiere
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('aspirateurs-eau-poussiere', 'aspirateurs-eau-poussiere', 2, l1_id, 'Aspirateurs eau & poussière')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('aspirateurs-eau-poussiere', 'fr', 'Aspirateurs eau & poussière');
            PERFORM insert_category_translations('aspirateurs-eau-poussiere', 'ar', 'مكانس ماء وغبار');
            PERFORM insert_category_translations('aspirateurs-eau-poussiere', 'en', 'Wet & dry vacuums');
            PERFORM insert_category_translations('aspirateurs-eau-poussiere', 'de', 'Nass-/Trockensauger');
            PERFORM insert_category_translations('aspirateurs-eau-poussiere', 'es', 'Aspiradoras agua y polvo');
            PERFORM insert_category_translations('aspirateurs-eau-poussiere', 'it', 'Aspiratori solidi/liquidi');

            -- Level 2: nettoyeurs-vapeur
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('nettoyeurs-vapeur', 'nettoyeurs-vapeur', 2, l1_id, 'Nettoyeurs vapeurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('nettoyeurs-vapeur', 'fr', 'Nettoyeurs vapeurs');
            PERFORM insert_category_translations('nettoyeurs-vapeur', 'ar', 'منظفات بالبخار');
            PERFORM insert_category_translations('nettoyeurs-vapeur', 'en', 'Steam cleaners');
            PERFORM insert_category_translations('nettoyeurs-vapeur', 'de', 'Dampfreiniger');
            PERFORM insert_category_translations('nettoyeurs-vapeur', 'es', 'Limpiadores a vapor');
            PERFORM insert_category_translations('nettoyeurs-vapeur', 'it', 'Pulitori a vapore');

            -- Level 2: nettoyeurs-haute-pression
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('nettoyeurs-haute-pression', 'nettoyeurs-haute-pression', 2, l1_id, 'Nettoyeurs haute pression domestiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('nettoyeurs-haute-pression', 'fr', 'Nettoyeurs haute pression domestiques');
            PERFORM insert_category_translations('nettoyeurs-haute-pression', 'ar', 'آلات ضغط منزلي');
            PERFORM insert_category_translations('nettoyeurs-haute-pression', 'en', 'Home pressure washers');
            PERFORM insert_category_translations('nettoyeurs-haute-pression', 'de', 'Haus-Hochdruckreiniger');
            PERFORM insert_category_translations('nettoyeurs-haute-pression', 'es', 'Hidrolimpiadoras domésticas');
            PERFORM insert_category_translations('nettoyeurs-haute-pression', 'it', 'Idropulitrici domestiche');

            -- Level 2: balais-electriques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('balais-electriques', 'balais-electriques', 2, l1_id, 'Balais électriques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('balais-electriques', 'fr', 'Balais électriques');
            PERFORM insert_category_translations('balais-electriques', 'ar', 'مكانس كهربائية عمودية');
            PERFORM insert_category_translations('balais-electriques', 'en', 'Electric brooms');
            PERFORM insert_category_translations('balais-electriques', 'de', 'Elektrische Besen');
            PERFORM insert_category_translations('balais-electriques', 'es', 'Escobas eléctricas');
            PERFORM insert_category_translations('balais-electriques', 'it', 'Scope elettriche');

            -- Level 2: nettoyeurs-vitres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('nettoyeurs-vitres', 'nettoyeurs-vitres', 2, l1_id, 'Nettoyeurs de vitres')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('nettoyeurs-vitres', 'fr', 'Nettoyeurs de vitres');
            PERFORM insert_category_translations('nettoyeurs-vitres', 'ar', 'منظفات الزجاج');
            PERFORM insert_category_translations('nettoyeurs-vitres', 'en', 'Window cleaners');
            PERFORM insert_category_translations('nettoyeurs-vitres', 'de', 'Fensterreiniger');
            PERFORM insert_category_translations('nettoyeurs-vitres', 'es', 'Limpiadores de ventanas');
            PERFORM insert_category_translations('nettoyeurs-vitres', 'it', 'Pulitori per vetri');

            -- Level 2: purificateurs-air
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('purificateurs-air', 'purificateurs-air', 2, l1_id, 'Purificateurs d’air')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('purificateurs-air', 'fr', 'Purificateurs d’air');
            PERFORM insert_category_translations('purificateurs-air', 'ar', 'منقّيات هواء');
            PERFORM insert_category_translations('purificateurs-air', 'en', 'Air purifiers');
            PERFORM insert_category_translations('purificateurs-air', 'de', 'Luftreiniger');
            PERFORM insert_category_translations('purificateurs-air', 'es', 'Purificadores de aire');
            PERFORM insert_category_translations('purificateurs-air', 'it', 'Purificatori d’aria');

            -- Level 2: deshumidificateurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('deshumidificateurs', 'deshumidificateurs', 2, l1_id, 'Déshumidificateurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('deshumidificateurs', 'fr', 'Déshumidificateurs');
            PERFORM insert_category_translations('deshumidificateurs', 'ar', 'مزيلات الرطوبة');
            PERFORM insert_category_translations('deshumidificateurs', 'en', 'Dehumidifiers');
            PERFORM insert_category_translations('deshumidificateurs', 'de', 'Luftentfeuchter');
            PERFORM insert_category_translations('deshumidificateurs', 'es', 'Deshumidificadores');
            PERFORM insert_category_translations('deshumidificateurs', 'it', 'Deumidificatori');

            -- Level 2: humidificateurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('humidificateurs', 'humidificateurs', 2, l1_id, 'Humidificateurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('humidificateurs', 'fr', 'Humidificateurs');
            PERFORM insert_category_translations('humidificateurs', 'ar', 'مرطّبات');
            PERFORM insert_category_translations('humidificateurs', 'en', 'Humidifiers');
            PERFORM insert_category_translations('humidificateurs', 'de', 'Luftbefeuchter');
            PERFORM insert_category_translations('humidificateurs', 'es', 'Humidificadores');
            PERFORM insert_category_translations('humidificateurs', 'it', 'Umidificatori');

        -- Level 1: climatisation-chauffage
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('climatisation-chauffage', 'climatisation-chauffage', 1, root_id, 'Climatisation & Chauffage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('climatisation-chauffage', 'fr', 'Climatisation & Chauffage');
        PERFORM insert_category_translations('climatisation-chauffage', 'ar', 'التكييف والتدفئة');
        PERFORM insert_category_translations('climatisation-chauffage', 'en', 'Air Conditioning & Heating');
        PERFORM insert_category_translations('climatisation-chauffage', 'de', 'Klimatisierung & Heizung');
        PERFORM insert_category_translations('climatisation-chauffage', 'es', 'Climatización y Calefacción');
        PERFORM insert_category_translations('climatisation-chauffage', 'it', 'Climatizzazione & Riscaldamento');

            -- Level 2: climatiseurs-split
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('climatiseurs-split', 'climatiseurs-split', 2, l1_id, 'Climatiseurs split')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('climatiseurs-split', 'fr', 'Climatiseurs split');
            PERFORM insert_category_translations('climatiseurs-split', 'ar', 'مكيفات سبليت');
            PERFORM insert_category_translations('climatiseurs-split', 'en', 'Split air conditioners');
            PERFORM insert_category_translations('climatiseurs-split', 'de', 'Split-Klimaanlagen');
            PERFORM insert_category_translations('climatiseurs-split', 'es', 'Aires acondicionados split');
            PERFORM insert_category_translations('climatiseurs-split', 'it', 'Climatizzatori split');

            -- Level 2: climatiseurs-mobiles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('climatiseurs-mobiles', 'climatiseurs-mobiles', 2, l1_id, 'Climatiseurs mobiles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('climatiseurs-mobiles', 'fr', 'Climatiseurs mobiles');
            PERFORM insert_category_translations('climatiseurs-mobiles', 'ar', 'مكيفات متنقلة');
            PERFORM insert_category_translations('climatiseurs-mobiles', 'en', 'Portable air conditioners');
            PERFORM insert_category_translations('climatiseurs-mobiles', 'de', 'Mobile Klimageräte');
            PERFORM insert_category_translations('climatiseurs-mobiles', 'es', 'Aires acondicionados portátiles');
            PERFORM insert_category_translations('climatiseurs-mobiles', 'it', 'Climatizzatori portatili');

            -- Level 2: ventilateurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ventilateurs', 'ventilateurs', 2, l1_id, 'Ventilateurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ventilateurs', 'fr', 'Ventilateurs');
            PERFORM insert_category_translations('ventilateurs', 'ar', 'مراوح');
            PERFORM insert_category_translations('ventilateurs', 'en', 'Fans');
            PERFORM insert_category_translations('ventilateurs', 'de', 'Ventilatoren');
            PERFORM insert_category_translations('ventilateurs', 'es', 'Ventiladores');
            PERFORM insert_category_translations('ventilateurs', 'it', 'Ventilatori');

                -- Level 3: tour
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tour', 'tour', 3, l2_id, 'Tour')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('tour', 'fr', 'Tour');
                PERFORM insert_category_translations('tour', 'ar', 'برج');
                PERFORM insert_category_translations('tour', 'en', 'Tower');
                PERFORM insert_category_translations('tour', 'de', 'Turm');
                PERFORM insert_category_translations('tour', 'es', 'Torre');
                PERFORM insert_category_translations('tour', 'it', 'A torre');

                -- Level 3: mural
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mural', 'mural', 3, l2_id, 'Mural')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('mural', 'fr', 'Mural');
                PERFORM insert_category_translations('mural', 'ar', 'جداري');
                PERFORM insert_category_translations('mural', 'en', 'Wall');
                PERFORM insert_category_translations('mural', 'de', 'Wand');
                PERFORM insert_category_translations('mural', 'es', 'Mural');
                PERFORM insert_category_translations('mural', 'it', 'A parete');

                -- Level 3: de-table
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('de-table', 'de-table', 3, l2_id, 'De table')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('de-table', 'fr', 'De table');
                PERFORM insert_category_translations('de-table', 'ar', 'طاولة');
                PERFORM insert_category_translations('de-table', 'en', 'Tabletop');
                PERFORM insert_category_translations('de-table', 'de', 'Tisch');
                PERFORM insert_category_translations('de-table', 'es', 'De mesa');
                PERFORM insert_category_translations('de-table', 'it', 'Da tavolo');

            -- Level 2: radiateurs-electriques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('radiateurs-electriques', 'radiateurs-electriques', 2, l1_id, 'Radiateurs électriques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('radiateurs-electriques', 'fr', 'Radiateurs électriques');
            PERFORM insert_category_translations('radiateurs-electriques', 'ar', 'مشعّات كهربائية');
            PERFORM insert_category_translations('radiateurs-electriques', 'en', 'Electric radiators');
            PERFORM insert_category_translations('radiateurs-electriques', 'de', 'Elektrische Heizkörper');
            PERFORM insert_category_translations('radiateurs-electriques', 'es', 'Radiadores eléctricos');
            PERFORM insert_category_translations('radiateurs-electriques', 'it', 'Radiatori elettrici');

            -- Level 2: chauffages-soufflants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chauffages-soufflants', 'chauffages-soufflants', 2, l1_id, 'Chauffages soufflants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chauffages-soufflants', 'fr', 'Chauffages soufflants');
            PERFORM insert_category_translations('chauffages-soufflants', 'ar', 'دفّايات هواء');
            PERFORM insert_category_translations('chauffages-soufflants', 'en', 'Fan heaters');
            PERFORM insert_category_translations('chauffages-soufflants', 'de', 'Heizlüfter');
            PERFORM insert_category_translations('chauffages-soufflants', 'es', 'Calefactores de aire');
            PERFORM insert_category_translations('chauffages-soufflants', 'it', 'Termoventilatori');

            -- Level 2: chauffages-gaz
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chauffages-gaz', 'chauffages-gaz', 2, l1_id, 'Chauffages à gaz')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chauffages-gaz', 'fr', 'Chauffages à gaz');
            PERFORM insert_category_translations('chauffages-gaz', 'ar', 'دفّايات غاز');
            PERFORM insert_category_translations('chauffages-gaz', 'en', 'Gas heaters');
            PERFORM insert_category_translations('chauffages-gaz', 'de', 'Gasheizer');
            PERFORM insert_category_translations('chauffages-gaz', 'es', 'Calefactores a gas');
            PERFORM insert_category_translations('chauffages-gaz', 'it', 'Riscaldatori a gas');

            -- Level 2: poeles-petrole
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('poeles-petrole', 'poeles-petrole', 2, l1_id, 'Poêles à pétrole')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('poeles-petrole', 'fr', 'Poêles à pétrole');
            PERFORM insert_category_translations('poeles-petrole', 'ar', 'مدافئ كيروسين');
            PERFORM insert_category_translations('poeles-petrole', 'en', 'Kerosene stoves');
            PERFORM insert_category_translations('poeles-petrole', 'de', 'Petroleumöfen');
            PERFORM insert_category_translations('poeles-petrole', 'es', 'Estufas de queroseno');
            PERFORM insert_category_translations('poeles-petrole', 'it', 'Stufe a cherosene');

            -- Level 2: chauffe-eau-electriques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chauffe-eau-electriques', 'chauffe-eau-electriques', 2, l1_id, 'Chauffe-eau électriques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chauffe-eau-electriques', 'fr', 'Chauffe-eau électriques');
            PERFORM insert_category_translations('chauffe-eau-electriques', 'ar', 'سخّانات ماء كهربائية');
            PERFORM insert_category_translations('chauffe-eau-electriques', 'en', 'Electric water heaters');
            PERFORM insert_category_translations('chauffe-eau-electriques', 'de', 'Elektrische Warmwasserbereiter');
            PERFORM insert_category_translations('chauffe-eau-electriques', 'es', 'Calentadores de agua eléctricos');
            PERFORM insert_category_translations('chauffe-eau-electriques', 'it', 'Scaldacqua elettrici');

            -- Level 2: chauffe-eau-gaz
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chauffe-eau-gaz', 'chauffe-eau-gaz', 2, l1_id, 'Chauffe-eau gaz')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chauffe-eau-gaz', 'fr', 'Chauffe-eau gaz');
            PERFORM insert_category_translations('chauffe-eau-gaz', 'ar', 'سخّانات ماء غاز');
            PERFORM insert_category_translations('chauffe-eau-gaz', 'en', 'Gas water heaters');
            PERFORM insert_category_translations('chauffe-eau-gaz', 'de', 'Gas-Warmwasserbereiter');
            PERFORM insert_category_translations('chauffe-eau-gaz', 'es', 'Calentadores de agua a gas');
            PERFORM insert_category_translations('chauffe-eau-gaz', 'it', 'Scaldacqua a gas');

            -- Level 2: chauffage-solaire-domestique
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chauffage-solaire-domestique', 'chauffage-solaire-domestique', 2, l1_id, 'Chauffage solaire domestique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chauffage-solaire-domestique', 'fr', 'Chauffage solaire domestique');
            PERFORM insert_category_translations('chauffage-solaire-domestique', 'ar', 'تدفئة شمسية منزليّة');
            PERFORM insert_category_translations('chauffage-solaire-domestique', 'en', 'Home solar heating');
            PERFORM insert_category_translations('chauffage-solaire-domestique', 'de', 'Solarheizung für Zuhause');
            PERFORM insert_category_translations('chauffage-solaire-domestique', 'es', 'Calefacción solar doméstica');
            PERFORM insert_category_translations('chauffage-solaire-domestique', 'it', 'Riscaldamento solare domestico');

            -- Level 2: defroisseurs-vapeur
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('defroisseurs-vapeur', 'defroisseurs-vapeur', 2, l1_id, 'Défroisseurs vapeur')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('defroisseurs-vapeur', 'fr', 'Défroisseurs vapeur');
            PERFORM insert_category_translations('defroisseurs-vapeur', 'ar', 'مملّسات بخار');
            PERFORM insert_category_translations('defroisseurs-vapeur', 'en', 'Garment steamers');
            PERFORM insert_category_translations('defroisseurs-vapeur', 'de', 'Dampfglätter');
            PERFORM insert_category_translations('defroisseurs-vapeur', 'es', 'Vaporizadores para ropa');
            PERFORM insert_category_translations('defroisseurs-vapeur', 'it', 'Stiratori a vapore');

        -- Level 1: electromenager-salle-de-bain
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('electromenager-salle-de-bain', 'electromenager-salle-de-bain', 1, root_id, 'Électroménager pour Salle de Bain')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('electromenager-salle-de-bain', 'fr', 'Électroménager pour Salle de Bain');
        PERFORM insert_category_translations('electromenager-salle-de-bain', 'ar', 'أجهزة الحمّام');
        PERFORM insert_category_translations('electromenager-salle-de-bain', 'en', 'Bathroom Appliances');
        PERFORM insert_category_translations('electromenager-salle-de-bain', 'de', 'Badgeräte');
        PERFORM insert_category_translations('electromenager-salle-de-bain', 'es', 'Electrodomésticos para el Baño');
        PERFORM insert_category_translations('electromenager-salle-de-bain', 'it', 'Elettrodomestici per il Bagno');

            -- Level 2: seche-cheveux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('seche-cheveux', 'seche-cheveux', 2, l1_id, 'Sèche-cheveux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('seche-cheveux', 'fr', 'Sèche-cheveux');
            PERFORM insert_category_translations('seche-cheveux', 'ar', 'مجففات شعر');
            PERFORM insert_category_translations('seche-cheveux', 'en', 'Hair dryers');
            PERFORM insert_category_translations('seche-cheveux', 'de', 'Haartrockner');
            PERFORM insert_category_translations('seche-cheveux', 'es', 'Secadores de cabello');
            PERFORM insert_category_translations('seche-cheveux', 'it', 'Asciugacapelli');

            -- Level 2: lisseurs-boucleurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lisseurs-boucleurs', 'lisseurs-boucleurs', 2, l1_id, 'Lisseurs & boucleurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lisseurs-boucleurs', 'fr', 'Lisseurs & boucleurs');
            PERFORM insert_category_translations('lisseurs-boucleurs', 'ar', 'مملّسات ومجعّدات شعر');
            PERFORM insert_category_translations('lisseurs-boucleurs', 'en', 'Hair straighteners & curlers');
            PERFORM insert_category_translations('lisseurs-boucleurs', 'de', 'Glätteisen & Lockenstäbe');
            PERFORM insert_category_translations('lisseurs-boucleurs', 'es', 'Planchas y rizadores');
            PERFORM insert_category_translations('lisseurs-boucleurs', 'it', 'Piastra e arricciacapelli');

            -- Level 2: tondeuses-rasoirs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tondeuses-rasoirs', 'tondeuses-rasoirs', 2, l1_id, 'Tondeuses & rasoirs électriques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tondeuses-rasoirs', 'fr', 'Tondeuses & rasoirs électriques');
            PERFORM insert_category_translations('tondeuses-rasoirs', 'ar', 'ماكينات حلاقة وتشذيب كهربائية');
            PERFORM insert_category_translations('tondeuses-rasoirs', 'en', 'Trimmers & electric shavers');
            PERFORM insert_category_translations('tondeuses-rasoirs', 'de', 'Trimmer & Elektrorasierer');
            PERFORM insert_category_translations('tondeuses-rasoirs', 'es', 'Recortadoras y afeitadoras eléctricas');
            PERFORM insert_category_translations('tondeuses-rasoirs', 'it', 'Regolatori & rasoi elettrici');

            -- Level 2: epilateurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('epilateurs', 'epilateurs', 2, l1_id, 'Épilateurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('epilateurs', 'fr', 'Épilateurs');
            PERFORM insert_category_translations('epilateurs', 'ar', 'أجهزة إزالة الشعر');
            PERFORM insert_category_translations('epilateurs', 'en', 'Epilators');
            PERFORM insert_category_translations('epilateurs', 'de', 'Epilierer');
            PERFORM insert_category_translations('epilateurs', 'es', 'Depiladoras');
            PERFORM insert_category_translations('epilateurs', 'it', 'Epilatori');

            -- Level 2: brosse-visage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('brosse-visage', 'brosse-visage', 2, l1_id, 'Brosse visage électrique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('brosse-visage', 'fr', 'Brosse visage électrique');
            PERFORM insert_category_translations('brosse-visage', 'ar', 'فرشاة وجه كهربائية');
            PERFORM insert_category_translations('brosse-visage', 'en', 'Electric facial brush');
            PERFORM insert_category_translations('brosse-visage', 'de', 'Elektrische Gesichtsreinigungsbürsten');
            PERFORM insert_category_translations('brosse-visage', 'es', 'Cepillo facial eléctrico');
            PERFORM insert_category_translations('brosse-visage', 'it', 'Spazzola viso elettrica');

            -- Level 2: miroirs-lumineux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('miroirs-lumineux', 'miroirs-lumineux', 2, l1_id, 'Miroirs lumineux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('miroirs-lumineux', 'fr', 'Miroirs lumineux');
            PERFORM insert_category_translations('miroirs-lumineux', 'ar', 'مرايا مضيئة');
            PERFORM insert_category_translations('miroirs-lumineux', 'en', 'Lighted mirrors');
            PERFORM insert_category_translations('miroirs-lumineux', 'de', 'Beleuchtete Spiegel');
            PERFORM insert_category_translations('miroirs-lumineux', 'es', 'Espejos iluminados');
            PERFORM insert_category_translations('miroirs-lumineux', 'it', 'Specchi illuminati');

            -- Level 2: sterilisateurs-desinfecteurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sterilisateurs-desinfecteurs', 'sterilisateurs-desinfecteurs', 2, l1_id, 'Stérilisateurs & désinfecteurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sterilisateurs-desinfecteurs', 'fr', 'Stérilisateurs & désinfecteurs');
            PERFORM insert_category_translations('sterilisateurs-desinfecteurs', 'ar', 'أجهزة تعقيم وتطهير');
            PERFORM insert_category_translations('sterilisateurs-desinfecteurs', 'en', 'Sterilizers & disinfectors');
            PERFORM insert_category_translations('sterilisateurs-desinfecteurs', 'de', 'Sterilisatoren & Desinfektionsgeräte');
            PERFORM insert_category_translations('sterilisateurs-desinfecteurs', 'es', 'Esterilizadores y desinfectores');
            PERFORM insert_category_translations('sterilisateurs-desinfecteurs', 'it', 'Sterilizzatori & disinfettori');

        -- Level 1: traitement-eau
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('traitement-eau', 'traitement-eau', 1, root_id, 'Traitement de l’Eau')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('traitement-eau', 'fr', 'Traitement de l’Eau');
        PERFORM insert_category_translations('traitement-eau', 'ar', 'معالجة المياه');
        PERFORM insert_category_translations('traitement-eau', 'en', 'Water Treatment');
        PERFORM insert_category_translations('traitement-eau', 'de', 'Wasseraufbereitung');
        PERFORM insert_category_translations('traitement-eau', 'es', 'Tratamiento del Agua');
        PERFORM insert_category_translations('traitement-eau', 'it', 'Trattamento dell’Acqua');

            -- Level 2: filtres-eau
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('filtres-eau', 'filtres-eau', 2, l1_id, 'Filtres à eau')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('filtres-eau', 'fr', 'Filtres à eau');
            PERFORM insert_category_translations('filtres-eau', 'ar', 'فلاتر مياه');
            PERFORM insert_category_translations('filtres-eau', 'en', 'Water filters');
            PERFORM insert_category_translations('filtres-eau', 'de', 'Wasserfilter');
            PERFORM insert_category_translations('filtres-eau', 'es', 'Filtros de agua');
            PERFORM insert_category_translations('filtres-eau', 'it', 'Filtri d’acqua');

            -- Level 2: purificateurs-eau
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('purificateurs-eau', 'purificateurs-eau', 2, l1_id, 'Purificateurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('purificateurs-eau', 'fr', 'Purificateurs');
            PERFORM insert_category_translations('purificateurs-eau', 'ar', 'أجهزة تنقية');
            PERFORM insert_category_translations('purificateurs-eau', 'en', 'Purifiers');
            PERFORM insert_category_translations('purificateurs-eau', 'de', 'Reiniger');
            PERFORM insert_category_translations('purificateurs-eau', 'es', 'Purificadores');
            PERFORM insert_category_translations('purificateurs-eau', 'it', 'Purificatori');

            -- Level 2: fontaines-eau
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fontaines-eau', 'fontaines-eau', 2, l1_id, 'Fontaines à eau')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fontaines-eau', 'fr', 'Fontaines à eau');
            PERFORM insert_category_translations('fontaines-eau', 'ar', 'موزّعات/نوافير مياه');
            PERFORM insert_category_translations('fontaines-eau', 'en', 'Water dispensers');
            PERFORM insert_category_translations('fontaines-eau', 'de', 'Wasserspender');
            PERFORM insert_category_translations('fontaines-eau', 'es', 'Dispensadores de agua');
            PERFORM insert_category_translations('fontaines-eau', 'it', 'Distributori d’acqua');

            -- Level 2: distributeurs-eau-chaude-froide
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('distributeurs-eau-chaude-froide', 'distributeurs-eau-chaude-froide', 2, l1_id, 'Distributeurs eau chaude/froide')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('distributeurs-eau-chaude-froide', 'fr', 'Distributeurs eau chaude/froide');
            PERFORM insert_category_translations('distributeurs-eau-chaude-froide', 'ar', 'موزّعات ماء ساخن/بارد');
            PERFORM insert_category_translations('distributeurs-eau-chaude-froide', 'en', 'Hot/cold water dispensers');
            PERFORM insert_category_translations('distributeurs-eau-chaude-froide', 'de', 'Heiß-/Kaltwasserspender');
            PERFORM insert_category_translations('distributeurs-eau-chaude-froide', 'es', 'Dispensadores de agua caliente/fría');
            PERFORM insert_category_translations('distributeurs-eau-chaude-froide', 'it', 'Distributori acqua calda/fredda');

            -- Level 2: osmose-inverse
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('osmose-inverse', 'osmose-inverse', 2, l1_id, 'Appareils osmose inverse')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('osmose-inverse', 'fr', 'Appareils osmose inverse');
            PERFORM insert_category_translations('osmose-inverse', 'ar', 'أجهزة التناضح العكسي');
            PERFORM insert_category_translations('osmose-inverse', 'en', 'Reverse osmosis systems');
            PERFORM insert_category_translations('osmose-inverse', 'de', 'Umkehrosmosegeräte');
            PERFORM insert_category_translations('osmose-inverse', 'es', 'Sistemas de ósmosis inversa');
            PERFORM insert_category_translations('osmose-inverse', 'it', 'Sistemi ad osmosi inversa');

        -- Level 1: appareils-specialises
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('appareils-specialises', 'appareils-specialises', 1, root_id, 'Appareils Spécialisés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('appareils-specialises', 'fr', 'Appareils Spécialisés');
        PERFORM insert_category_translations('appareils-specialises', 'ar', 'أجهزة متخصصة');
        PERFORM insert_category_translations('appareils-specialises', 'en', 'Specialized Appliances');
        PERFORM insert_category_translations('appareils-specialises', 'de', 'Spezialisierte Geräte');
        PERFORM insert_category_translations('appareils-specialises', 'es', 'Aparatos Especializados');
        PERFORM insert_category_translations('appareils-specialises', 'it', 'Apparecchi Specializzati');

            -- Level 2: machines-pain
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('machines-pain', 'machines-pain', 2, l1_id, 'Machines à pain')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('machines-pain', 'fr', 'Machines à pain');
            PERFORM insert_category_translations('machines-pain', 'ar', 'آلات خبز');
            PERFORM insert_category_translations('machines-pain', 'en', 'Bread makers');
            PERFORM insert_category_translations('machines-pain', 'de', 'Brotbackautomaten');
            PERFORM insert_category_translations('machines-pain', 'es', 'Máquinas de pan');
            PERFORM insert_category_translations('machines-pain', 'it', 'Macchine per il pane');

            -- Level 2: machines-pates
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('machines-pates', 'machines-pates', 2, l1_id, 'Machines à pâtes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('machines-pates', 'fr', 'Machines à pâtes');
            PERFORM insert_category_translations('machines-pates', 'ar', 'آلات معكرونة');
            PERFORM insert_category_translations('machines-pates', 'en', 'Pasta makers');
            PERFORM insert_category_translations('machines-pates', 'de', 'Nudelmaschinen');
            PERFORM insert_category_translations('machines-pates', 'es', 'Máquinas de pasta');
            PERFORM insert_category_translations('machines-pates', 'it', 'Macchine per la pasta');

            -- Level 2: machines-glace
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('machines-glace', 'machines-glace', 2, l1_id, 'Machines à glace')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('machines-glace', 'fr', 'Machines à glace');
            PERFORM insert_category_translations('machines-glace', 'ar', 'آلات آيس كريم');
            PERFORM insert_category_translations('machines-glace', 'en', 'Ice cream makers');
            PERFORM insert_category_translations('machines-glace', 'de', 'Speiseeismaschinen');
            PERFORM insert_category_translations('machines-glace', 'es', 'Máquinas de helado');
            PERFORM insert_category_translations('machines-glace', 'it', 'Macchine per gelato');

            -- Level 2: hot-dog
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('hot-dog', 'hot-dog', 2, l1_id, 'Appareils à hot-dog')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('hot-dog', 'fr', 'Appareils à hot-dog');
            PERFORM insert_category_translations('hot-dog', 'ar', 'أجهزة هوت دوغ');
            PERFORM insert_category_translations('hot-dog', 'en', 'Hot dog machines');
            PERFORM insert_category_translations('hot-dog', 'de', 'Hot-Dog-Geräte');
            PERFORM insert_category_translations('hot-dog', 'es', 'Máquinas de hot-dog');
            PERFORM insert_category_translations('hot-dog', 'it', 'Macchine hot-dog');

            -- Level 2: sorbetieres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sorbetieres', 'sorbetieres', 2, l1_id, 'Sorbetières')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sorbetieres', 'fr', 'Sorbetières');
            PERFORM insert_category_translations('sorbetieres', 'ar', 'سوربيتية');
            PERFORM insert_category_translations('sorbetieres', 'en', 'Sorbet makers');
            PERFORM insert_category_translations('sorbetieres', 'de', 'Sorbetmaschinen');
            PERFORM insert_category_translations('sorbetieres', 'es', 'Sorbeteras');
            PERFORM insert_category_translations('sorbetieres', 'it', 'Sorbettiere');

            -- Level 2: deshydrateurs-alimentaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('deshydrateurs-alimentaires', 'deshydrateurs-alimentaires', 2, l1_id, 'Déshydrateurs alimentaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('deshydrateurs-alimentaires', 'fr', 'Déshydrateurs alimentaires');
            PERFORM insert_category_translations('deshydrateurs-alimentaires', 'ar', 'مجففات غذائية');
            PERFORM insert_category_translations('deshydrateurs-alimentaires', 'en', 'Food dehydrators');
            PERFORM insert_category_translations('deshydrateurs-alimentaires', 'de', 'Lebensmitteltrockner');
            PERFORM insert_category_translations('deshydrateurs-alimentaires', 'es', 'Deshidratadores de alimentos');
            PERFORM insert_category_translations('deshydrateurs-alimentaires', 'it', 'Essiccatori alimentari');

            -- Level 2: fumoir
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fumoir', 'fumoir', 2, l1_id, 'Appareils fumoir')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fumoir', 'fr', 'Appareils fumoir');
            PERFORM insert_category_translations('fumoir', 'ar', 'أجهزة تدخين');
            PERFORM insert_category_translations('fumoir', 'en', 'Smokers');
            PERFORM insert_category_translations('fumoir', 'de', 'Räuchergeräte');
            PERFORM insert_category_translations('fumoir', 'es', 'Aparatos ahumadores');
            PERFORM insert_category_translations('fumoir', 'it', 'Affumicatori');

            -- Level 2: plateaux-chauffants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('plateaux-chauffants', 'plateaux-chauffants', 2, l1_id, 'Plateaux chauffants électriques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('plateaux-chauffants', 'fr', 'Plateaux chauffants électriques');
            PERFORM insert_category_translations('plateaux-chauffants', 'ar', 'صواني تسخين كهربائية');
            PERFORM insert_category_translations('plateaux-chauffants', 'en', 'Electric warming trays');
            PERFORM insert_category_translations('plateaux-chauffants', 'de', 'Elektrische Warmhalteplatten');
            PERFORM insert_category_translations('plateaux-chauffants', 'es', 'Bandejas calentadoras eléctricas');
            PERFORM insert_category_translations('plateaux-chauffants', 'it', 'Piastre/scaldavivande elettriche');

        -- Level 1: froid-congelation-pro
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('froid-congelation-pro', 'froid-congelation-pro', 1, root_id, 'Froid & Congélation Professionnel')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('froid-congelation-pro', 'fr', 'Froid & Congélation Professionnel');
        PERFORM insert_category_translations('froid-congelation-pro', 'ar', 'تبريد وتجميد احترافي');
        PERFORM insert_category_translations('froid-congelation-pro', 'en', 'Professional Refrigeration & Freezing');
        PERFORM insert_category_translations('froid-congelation-pro', 'de', 'Gewerbliche Kühlung & Gefrierung');
        PERFORM insert_category_translations('froid-congelation-pro', 'es', 'Refrigeración y Congelación Profesional');
        PERFORM insert_category_translations('froid-congelation-pro', 'it', 'Refrigerazione e Congelamento Professionale');

            -- Level 2: armoires-refrigerees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('armoires-refrigerees', 'armoires-refrigerees', 2, l1_id, 'Armoires réfrigérées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('armoires-refrigerees', 'fr', 'Armoires réfrigérées');
            PERFORM insert_category_translations('armoires-refrigerees', 'ar', 'خزائن مبردة');
            PERFORM insert_category_translations('armoires-refrigerees', 'en', 'Refrigerated cabinets');
            PERFORM insert_category_translations('armoires-refrigerees', 'de', 'Kühlmöbel (Schränke)');
            PERFORM insert_category_translations('armoires-refrigerees', 'es', 'Armarios refrigerados');
            PERFORM insert_category_translations('armoires-refrigerees', 'it', 'Armadi refrigerati');

            -- Level 2: congelateurs-pro
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('congelateurs-pro', 'congelateurs-pro', 2, l1_id, 'Congélateurs pro')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('congelateurs-pro', 'fr', 'Congélateurs pro');
            PERFORM insert_category_translations('congelateurs-pro', 'ar', 'مجمدات احترافية');
            PERFORM insert_category_translations('congelateurs-pro', 'en', 'Professional freezers');
            PERFORM insert_category_translations('congelateurs-pro', 'de', 'Profi-Gefriergeräte');
            PERFORM insert_category_translations('congelateurs-pro', 'es', 'Congeladores profesionales');
            PERFORM insert_category_translations('congelateurs-pro', 'it', 'Congelatori professionali');

            -- Level 2: vitrines-refrigerees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vitrines-refrigerees', 'vitrines-refrigerees', 2, l1_id, 'Vitrines réfrigérées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('vitrines-refrigerees', 'fr', 'Vitrines réfrigérées');
            PERFORM insert_category_translations('vitrines-refrigerees', 'ar', 'واجهات عرض مبردة');
            PERFORM insert_category_translations('vitrines-refrigerees', 'en', 'Refrigerated display cases');
            PERFORM insert_category_translations('vitrines-refrigerees', 'de', 'Kühlvitrinen');
            PERFORM insert_category_translations('vitrines-refrigerees', 'es', 'Vitrinas refrigeradas');
            PERFORM insert_category_translations('vitrines-refrigerees', 'it', 'Vetrine refrigerate');

            -- Level 2: comptoirs-froids
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('comptoirs-froids', 'comptoirs-froids', 2, l1_id, 'Comptoirs froids')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('comptoirs-froids', 'fr', 'Comptoirs froids');
            PERFORM insert_category_translations('comptoirs-froids', 'ar', 'كاونترات باردة');
            PERFORM insert_category_translations('comptoirs-froids', 'en', 'Cold counters');
            PERFORM insert_category_translations('comptoirs-froids', 'de', 'Kalttheken');
            PERFORM insert_category_translations('comptoirs-froids', 'es', 'Mostradores fríos');
            PERFORM insert_category_translations('comptoirs-froids', 'it', 'Banchi frigo');

            -- Level 2: machines-glacons
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('machines-glacons', 'machines-glacons', 2, l1_id, 'Machines à glaçons')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('machines-glacons', 'fr', 'Machines à glaçons');
            PERFORM insert_category_translations('machines-glacons', 'ar', 'آلات صنع الثلج');
            PERFORM insert_category_translations('machines-glacons', 'en', 'Ice makers');
            PERFORM insert_category_translations('machines-glacons', 'de', 'Eiswürfelbereiter');
            PERFORM insert_category_translations('machines-glacons', 'es', 'Máquinas de hielo');
            PERFORM insert_category_translations('machines-glacons', 'it', 'Fabbricatori di ghiaccio');

            -- Level 2: cellules-refroidissement
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cellules-refroidissement', 'cellules-refroidissement', 2, l1_id, 'Cellules de refroidissement')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cellules-refroidissement', 'fr', 'Cellules de refroidissement');
            PERFORM insert_category_translations('cellules-refroidissement', 'ar', 'خلايا تبريد سريعة');
            PERFORM insert_category_translations('cellules-refroidissement', 'en', 'Blast chillers');
            PERFORM insert_category_translations('cellules-refroidissement', 'de', 'Schnellkühler');
            PERFORM insert_category_translations('cellules-refroidissement', 'es', 'Enfriadores rápidos');
            PERFORM insert_category_translations('cellules-refroidissement', 'it', 'Abbattitori di temperatura');

        -- Level 1: cuisson-professionnelle
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cuisson-professionnelle', 'cuisson-professionnelle', 1, root_id, 'Cuisson Professionnelle')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('cuisson-professionnelle', 'fr', 'Cuisson Professionnelle');
        PERFORM insert_category_translations('cuisson-professionnelle', 'ar', 'طبخ احترافي');
        PERFORM insert_category_translations('cuisson-professionnelle', 'en', 'Professional Cooking');
        PERFORM insert_category_translations('cuisson-professionnelle', 'de', 'Gewerbliches Kochen');
        PERFORM insert_category_translations('cuisson-professionnelle', 'es', 'Cocción Profesional');
        PERFORM insert_category_translations('cuisson-professionnelle', 'it', 'Cottura Professionale');

            -- Level 2: fours-pro
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fours-pro', 'fours-pro', 2, l1_id, 'Fours pro')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fours-pro', 'fr', 'Fours pro');
            PERFORM insert_category_translations('fours-pro', 'ar', 'أفران احترافية');
            PERFORM insert_category_translations('fours-pro', 'en', 'Professional ovens');
            PERFORM insert_category_translations('fours-pro', 'de', 'Profi-Öfen');
            PERFORM insert_category_translations('fours-pro', 'es', 'Hornos profesionales');
            PERFORM insert_category_translations('fours-pro', 'it', 'Forni professionali');

                -- Level 3: pizza
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pizza', 'pizza', 3, l2_id, 'Pizza')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('pizza', 'fr', 'Pizza');
                PERFORM insert_category_translations('pizza', 'ar', 'بيتزا');
                PERFORM insert_category_translations('pizza', 'en', 'Pizza');
                PERFORM insert_category_translations('pizza', 'de', 'Pizza');
                PERFORM insert_category_translations('pizza', 'es', 'Pizza');
                PERFORM insert_category_translations('pizza', 'it', 'Pizza');

                -- Level 3: pain
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pain', 'pain', 3, l2_id, 'Pain')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('pain', 'fr', 'Pain');
                PERFORM insert_category_translations('pain', 'ar', 'خبز');
                PERFORM insert_category_translations('pain', 'en', 'Bread');
                PERFORM insert_category_translations('pain', 'de', 'Brot');
                PERFORM insert_category_translations('pain', 'es', 'Pan');
                PERFORM insert_category_translations('pain', 'it', 'Pane');

                -- Level 3: convection
                INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('convection', 'convection', 3, l2_id, 'Convection')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 3, parent_id = l2_id, name = EXCLUDED.name
                RETURNING id INTO l3_id;
                PERFORM insert_category_translations('convection', 'fr', 'Convection');
                PERFORM insert_category_translations('convection', 'ar', 'هواء ساخن');
                PERFORM insert_category_translations('convection', 'en', 'Convection');
                PERFORM insert_category_translations('convection', 'de', 'Umluft');
                PERFORM insert_category_translations('convection', 'es', 'Convección');
                PERFORM insert_category_translations('convection', 'it', 'Convezione');

            -- Level 2: plaques-gaz-pro
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('plaques-gaz-pro', 'plaques-gaz-pro', 2, l1_id, 'Plaques gaz pro')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('plaques-gaz-pro', 'fr', 'Plaques gaz pro');
            PERFORM insert_category_translations('plaques-gaz-pro', 'ar', 'ألواح غاز احترافية');
            PERFORM insert_category_translations('plaques-gaz-pro', 'en', 'Professional gas cooktops');
            PERFORM insert_category_translations('plaques-gaz-pro', 'de', 'Profi-Gaskochfelder');
            PERFORM insert_category_translations('plaques-gaz-pro', 'es', 'Placas de gas profesionales');
            PERFORM insert_category_translations('plaques-gaz-pro', 'it', 'Piani gas professionali');

            -- Level 2: grillades-planchas
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('grillades-planchas', 'grillades-planchas', 2, l1_id, 'Grillades & planchas')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('grillades-planchas', 'fr', 'Grillades & planchas');
            PERFORM insert_category_translations('grillades-planchas', 'ar', 'مشاوي وبلانشا');
            PERFORM insert_category_translations('grillades-planchas', 'en', 'Grills & planchas');
            PERFORM insert_category_translations('grillades-planchas', 'de', 'Grills & Plancha');
            PERFORM insert_category_translations('grillades-planchas', 'es', 'Parrillas y planchas');
            PERFORM insert_category_translations('grillades-planchas', 'it', 'Griglie & plancha');

            -- Level 2: marmites-electriques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('marmites-electriques', 'marmites-electriques', 2, l1_id, 'Marmites électriques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('marmites-electriques', 'fr', 'Marmites électriques');
            PERFORM insert_category_translations('marmites-electriques', 'ar', 'قدور كهربائية');
            PERFORM insert_category_translations('marmites-electriques', 'en', 'Electric kettles/pots');
            PERFORM insert_category_translations('marmites-electriques', 'de', 'Elektrische Kochkessel');
            PERFORM insert_category_translations('marmites-electriques', 'es', 'Marmitas eléctricas');
            PERFORM insert_category_translations('marmites-electriques', 'it', 'Bollitori/pentole elettriche');

            -- Level 2: friteuses-pro
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('friteuses-pro', 'friteuses-pro', 2, l1_id, 'Friteuses professionnelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('friteuses-pro', 'fr', 'Friteuses professionnelles');
            PERFORM insert_category_translations('friteuses-pro', 'ar', 'قلايات احترافية');
            PERFORM insert_category_translations('friteuses-pro', 'en', 'Professional fryers');
            PERFORM insert_category_translations('friteuses-pro', 'de', 'Gewerbliche Fritteusen');
            PERFORM insert_category_translations('friteuses-pro', 'es', 'Freidoras profesionales');
            PERFORM insert_category_translations('friteuses-pro', 'it', 'Friggitrici professionali');

            -- Level 2: bain-maries
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bain-maries', 'bain-maries', 2, l1_id, 'Bain-maries')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bain-maries', 'fr', 'Bain-maries');
            PERFORM insert_category_translations('bain-maries', 'ar', 'حاويات تسخين (بان-ماري)');
            PERFORM insert_category_translations('bain-maries', 'en', 'Bain-maries');
            PERFORM insert_category_translations('bain-maries', 'de', 'Bain-Marie');
            PERFORM insert_category_translations('bain-maries', 'es', 'Baño María');
            PERFORM insert_category_translations('bain-maries', 'it', 'Bagnomaria');

        -- Level 1: accessoires-pieces-detachees
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-pieces-detachees', 'accessoires-pieces-detachees', 1, root_id, 'Accessoires & Pièces Détachées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('accessoires-pieces-detachees', 'fr', 'Accessoires & Pièces Détachées');
        PERFORM insert_category_translations('accessoires-pieces-detachees', 'ar', 'ملحقات وقطع غيار');
        PERFORM insert_category_translations('accessoires-pieces-detachees', 'en', 'Accessories & Spare Parts');
        PERFORM insert_category_translations('accessoires-pieces-detachees', 'de', 'Zubehör & Ersatzteile');
        PERFORM insert_category_translations('accessoires-pieces-detachees', 'es', 'Accesorios y Repuestos');
        PERFORM insert_category_translations('accessoires-pieces-detachees', 'it', 'Accessori & Ricambi');

            -- Level 2: filtres-aspirateurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('filtres-aspirateurs', 'filtres-aspirateurs', 2, l1_id, 'Filtres aspirateurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('filtres-aspirateurs', 'fr', 'Filtres aspirateurs');
            PERFORM insert_category_translations('filtres-aspirateurs', 'ar', 'فلاتر مكانس');
            PERFORM insert_category_translations('filtres-aspirateurs', 'en', 'Vacuum filters');
            PERFORM insert_category_translations('filtres-aspirateurs', 'de', 'Staubsaugerfilter');
            PERFORM insert_category_translations('filtres-aspirateurs', 'es', 'Filtros para aspiradoras');
            PERFORM insert_category_translations('filtres-aspirateurs', 'it', 'Filtri aspirapolvere');

            -- Level 2: filtres-frigos
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('filtres-frigos', 'filtres-frigos', 2, l1_id, 'Filtres frigos')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('filtres-frigos', 'fr', 'Filtres frigos');
            PERFORM insert_category_translations('filtres-frigos', 'ar', 'فلاتر ثلاجات');
            PERFORM insert_category_translations('filtres-frigos', 'en', 'Fridge filters');
            PERFORM insert_category_translations('filtres-frigos', 'de', 'Kühlschrankfilter');
            PERFORM insert_category_translations('filtres-frigos', 'es', 'Filtros para refrigeradores');
            PERFORM insert_category_translations('filtres-frigos', 'it', 'Filtri frigorifero');

            -- Level 2: bacs-legumes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bacs-legumes', 'bacs-legumes', 2, l1_id, 'Bacs à légumes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bacs-legumes', 'fr', 'Bacs à légumes');
            PERFORM insert_category_translations('bacs-legumes', 'ar', 'أدراج خضار');
            PERFORM insert_category_translations('bacs-legumes', 'en', 'Crisper drawers');
            PERFORM insert_category_translations('bacs-legumes', 'de', 'Gemüseschubladen');
            PERFORM insert_category_translations('bacs-legumes', 'es', 'Cajones para verduras');
            PERFORM insert_category_translations('bacs-legumes', 'it', 'Cassetti verdura');

            -- Level 2: bouteilles-cartouches-gaz
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bouteilles-cartouches-gaz', 'bouteilles-cartouches-gaz', 2, l1_id, 'Bouteilles & cartouches gaz')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bouteilles-cartouches-gaz', 'fr', 'Bouteilles & cartouches gaz');
            PERFORM insert_category_translations('bouteilles-cartouches-gaz', 'ar', 'زجاجات وكارتوشات غاز');
            PERFORM insert_category_translations('bouteilles-cartouches-gaz', 'en', 'Gas bottles & cartridges');
            PERFORM insert_category_translations('bouteilles-cartouches-gaz', 'de', 'Gasflaschen & Kartuschen');
            PERFORM insert_category_translations('bouteilles-cartouches-gaz', 'es', 'Botellas y cartuchos de gas');
            PERFORM insert_category_translations('bouteilles-cartouches-gaz', 'it', 'Bombole e cartucce gas');

            -- Level 2: tuyaux-arrivee-evacuation
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tuyaux-arrivee-evacuation', 'tuyaux-arrivee-evacuation', 2, l1_id, 'Tuyaux d''''arrivée & évacuation')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tuyaux-arrivee-evacuation', 'fr', 'Tuyaux d''arrivée & évacuation');
            PERFORM insert_category_translations('tuyaux-arrivee-evacuation', 'ar', 'خراطيم دخول وخروج');
            PERFORM insert_category_translations('tuyaux-arrivee-evacuation', 'en', 'Inlet & drain hoses');
            PERFORM insert_category_translations('tuyaux-arrivee-evacuation', 'de', 'Zulauf- & Ablaufschläuche');
            PERFORM insert_category_translations('tuyaux-arrivee-evacuation', 'es', 'Mangueras de entrada y drenaje');
            PERFORM insert_category_translations('tuyaux-arrivee-evacuation', 'it', 'Tubi di ingresso e scarico');

            -- Level 2: poignees-boutons
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('poignees-boutons', 'poignees-boutons', 2, l1_id, 'Poignées & boutons')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('poignees-boutons', 'fr', 'Poignées & boutons');
            PERFORM insert_category_translations('poignees-boutons', 'ar', 'مقابض وأزرار');
            PERFORM insert_category_translations('poignees-boutons', 'en', 'Handles & knobs');
            PERFORM insert_category_translations('poignees-boutons', 'de', 'Griffe & Knöpfe');
            PERFORM insert_category_translations('poignees-boutons', 'es', 'Manijas y perillas');
            PERFORM insert_category_translations('poignees-boutons', 'it', 'Maniglie & manopole');

            -- Level 2: plateaux-micro-ondes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('plateaux-micro-ondes', 'plateaux-micro-ondes', 2, l1_id, 'Plateaux micro-ondes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('plateaux-micro-ondes', 'fr', 'Plateaux micro-ondes');
            PERFORM insert_category_translations('plateaux-micro-ondes', 'ar', 'صواني ميكروويف');
            PERFORM insert_category_translations('plateaux-micro-ondes', 'en', 'Microwave trays');
            PERFORM insert_category_translations('plateaux-micro-ondes', 'de', 'Mikrowellenplatten');
            PERFORM insert_category_translations('plateaux-micro-ondes', 'es', 'Bandejas de microondas');
            PERFORM insert_category_translations('plateaux-micro-ondes', 'it', 'Piatti microonde');

            -- Level 2: batteries-cuisine-compatibles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('batteries-cuisine-compatibles', 'batteries-cuisine-compatibles', 2, l1_id, 'Batteries de cuisine compatibles appareils')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('batteries-cuisine-compatibles', 'fr', 'Batteries de cuisine compatibles appareils');
            PERFORM insert_category_translations('batteries-cuisine-compatibles', 'ar', 'أواني طبخ متوافقة');
            PERFORM insert_category_translations('batteries-cuisine-compatibles', 'en', 'Compatible cookware');
            PERFORM insert_category_translations('batteries-cuisine-compatibles', 'de', 'Kompatibles Kochgeschirr');
            PERFORM insert_category_translations('batteries-cuisine-compatibles', 'es', 'Utensilios compatibles');
            PERFORM insert_category_translations('batteries-cuisine-compatibles', 'it', 'Pentolame compatibile');

            -- Level 2: grilles-plaques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('grilles-plaques', 'grilles-plaques', 2, l1_id, 'Grilles & plaques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('grilles-plaques', 'fr', 'Grilles & plaques');
            PERFORM insert_category_translations('grilles-plaques', 'ar', 'شوايات وصفائح');
            PERFORM insert_category_translations('grilles-plaques', 'en', 'Grates & plates');
            PERFORM insert_category_translations('grilles-plaques', 'de', 'Roste & Bleche');
            PERFORM insert_category_translations('grilles-plaques', 'es', 'Rejillas y placas');
            PERFORM insert_category_translations('grilles-plaques', 'it', 'Griglie & teglie');

            -- Level 2: accessoires-robot-cuisine
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-robot-cuisine', 'accessoires-robot-cuisine', 2, l1_id, 'Accessoires robot cuisine')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('accessoires-robot-cuisine', 'fr', 'Accessoires robot cuisine');
            PERFORM insert_category_translations('accessoires-robot-cuisine', 'ar', 'ملحقات روبوت المطبخ');
            PERFORM insert_category_translations('accessoires-robot-cuisine', 'en', 'Kitchen robot accessories');
            PERFORM insert_category_translations('accessoires-robot-cuisine', 'de', 'Küchenmaschinen-Zubehör');
            PERFORM insert_category_translations('accessoires-robot-cuisine', 'es', 'Accesorios para robots de cocina');
            PERFORM insert_category_translations('accessoires-robot-cuisine', 'it', 'Accessori robot cucina');

            -- Level 2: lames-de-coupe
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lames-de-coupe', 'lames-de-coupe', 2, l1_id, 'Lames de coupe')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lames-de-coupe', 'fr', 'Lames de coupe');
            PERFORM insert_category_translations('lames-de-coupe', 'ar', 'شفرات قطع');
            PERFORM insert_category_translations('lames-de-coupe', 'en', 'Cutting blades');
            PERFORM insert_category_translations('lames-de-coupe', 'de', 'Schneidmesser');
            PERFORM insert_category_translations('lames-de-coupe', 'es', 'Cuchillas de corte');
            PERFORM insert_category_translations('lames-de-coupe', 'it', 'Lame di taglio');

            -- Level 2: pieces-chauffe-eau
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pieces-chauffe-eau', 'pieces-chauffe-eau', 2, l1_id, 'Pièces chauffe-eau')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pieces-chauffe-eau', 'fr', 'Pièces chauffe-eau');
            PERFORM insert_category_translations('pieces-chauffe-eau', 'ar', 'قطع سخّانات ماء');
            PERFORM insert_category_translations('pieces-chauffe-eau', 'en', 'Water heater parts');
            PERFORM insert_category_translations('pieces-chauffe-eau', 'de', 'Boiler-Ersatzteile');
            PERFORM insert_category_translations('pieces-chauffe-eau', 'es', 'Repuestos para calentadores de agua');
            PERFORM insert_category_translations('pieces-chauffe-eau', 'it', 'Ricambi scaldacqua');

        -- Level 1: electromenager-nomade-mini
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('electromenager-nomade-mini', 'electromenager-nomade-mini', 1, root_id, 'Électroménager Nomade & Mini')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('electromenager-nomade-mini', 'fr', 'Électroménager Nomade & Mini');
        PERFORM insert_category_translations('electromenager-nomade-mini', 'ar', 'أجهزة متنقلة وميني');
        PERFORM insert_category_translations('electromenager-nomade-mini', 'en', 'Portable & Mini Appliances');
        PERFORM insert_category_translations('electromenager-nomade-mini', 'de', 'Mobile & Mini-Geräte');
        PERFORM insert_category_translations('electromenager-nomade-mini', 'es', 'Electrodomésticos Portátiles y Mini');
        PERFORM insert_category_translations('electromenager-nomade-mini', 'it', 'Elettrodomestici Portatili & Mini');

            -- Level 2: mini-glacieres-electriques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mini-glacieres-electriques', 'mini-glacieres-electriques', 2, l1_id, 'Mini glaçières électriques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mini-glacieres-electriques', 'fr', 'Mini glaçières électriques');
            PERFORM insert_category_translations('mini-glacieres-electriques', 'ar', 'مبرّدات كهربائية صغيرة');
            PERFORM insert_category_translations('mini-glacieres-electriques', 'en', 'Mini electric coolers');
            PERFORM insert_category_translations('mini-glacieres-electriques', 'de', 'Elektrische Minikühlboxen');
            PERFORM insert_category_translations('mini-glacieres-electriques', 'es', 'Mini neveras eléctricas');
            PERFORM insert_category_translations('mini-glacieres-electriques', 'it', 'Mini frigoriferi elettrici');

            -- Level 2: mini-cuiseurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mini-cuiseurs', 'mini-cuiseurs', 2, l1_id, 'Mini cuiseurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mini-cuiseurs', 'fr', 'Mini cuiseurs');
            PERFORM insert_category_translations('mini-cuiseurs', 'ar', 'طباخات صغيرة');
            PERFORM insert_category_translations('mini-cuiseurs', 'en', 'Mini cookers');
            PERFORM insert_category_translations('mini-cuiseurs', 'de', 'Mini-Kocher');
            PERFORM insert_category_translations('mini-cuiseurs', 'es', 'Mini cocedores');
            PERFORM insert_category_translations('mini-cuiseurs', 'it', 'Mini cuocitori');

            -- Level 2: appareils-portables-batterie
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('appareils-portables-batterie', 'appareils-portables-batterie', 2, l1_id, 'Appareils portables à batterie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('appareils-portables-batterie', 'fr', 'Appareils portables à batterie');
            PERFORM insert_category_translations('appareils-portables-batterie', 'ar', 'أجهزة محمولة تعمل بالبطارية');
            PERFORM insert_category_translations('appareils-portables-batterie', 'en', 'Battery-powered portable devices');
            PERFORM insert_category_translations('appareils-portables-batterie', 'de', 'Akku-betriebene Geräte');
            PERFORM insert_category_translations('appareils-portables-batterie', 'es', 'Dispositivos portátiles a batería');
            PERFORM insert_category_translations('appareils-portables-batterie', 'it', 'Dispositivi portatili a batteria');

            -- Level 2: mini-ventilateurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mini-ventilateurs', 'mini-ventilateurs', 2, l1_id, 'Mini ventilateurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mini-ventilateurs', 'fr', 'Mini ventilateurs');
            PERFORM insert_category_translations('mini-ventilateurs', 'ar', 'مراوح صغيرة');
            PERFORM insert_category_translations('mini-ventilateurs', 'en', 'Mini fans');
            PERFORM insert_category_translations('mini-ventilateurs', 'de', 'Mini-Ventilatoren');
            PERFORM insert_category_translations('mini-ventilateurs', 'es', 'Mini ventiladores');
            PERFORM insert_category_translations('mini-ventilateurs', 'it', 'Mini ventilatori');

            -- Level 2: mini-fers-vapeur
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mini-fers-vapeur', 'mini-fers-vapeur', 2, l1_id, 'Mini fers à vapeur')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mini-fers-vapeur', 'fr', 'Mini fers à vapeur');
            PERFORM insert_category_translations('mini-fers-vapeur', 'ar', 'مكاوي بخارية صغيرة');
            PERFORM insert_category_translations('mini-fers-vapeur', 'en', 'Mini steam irons');
            PERFORM insert_category_translations('mini-fers-vapeur', 'de', 'Mini-Dampfbügeleisen');
            PERFORM insert_category_translations('mini-fers-vapeur', 'es', 'Mini planchas de vapor');
            PERFORM insert_category_translations('mini-fers-vapeur', 'it', 'Mini ferri a vapore');

            -- Level 2: appareils-camping
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('appareils-camping', 'appareils-camping', 2, l1_id, 'Petits appareils de camping')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('appareils-camping', 'fr', 'Petits appareils de camping');
            PERFORM insert_category_translations('appareils-camping', 'ar', 'أجهزة تخييم صغيرة');
            PERFORM insert_category_translations('appareils-camping', 'en', 'Small camping appliances');
            PERFORM insert_category_translations('appareils-camping', 'de', 'Camping-Kleingeräte');
            PERFORM insert_category_translations('appareils-camping', 'es', 'Pequeños aparatos para camping');
            PERFORM insert_category_translations('appareils-camping', 'it', 'Piccoli apparecchi da campeggio');

        -- Level 1: securite-energie
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('securite-energie', 'securite-energie', 1, root_id, 'Sécurité & Énergie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('securite-energie', 'fr', 'Sécurité & Énergie');
        PERFORM insert_category_translations('securite-energie', 'ar', 'السلامة والطاقة');
        PERFORM insert_category_translations('securite-energie', 'en', 'Safety & Energy');
        PERFORM insert_category_translations('securite-energie', 'de', 'Sicherheit & Energie');
        PERFORM insert_category_translations('securite-energie', 'es', 'Seguridad y Energía');
        PERFORM insert_category_translations('securite-energie', 'it', 'Sicurezza & Energia');

            -- Level 2: parafoudres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('parafoudres', 'parafoudres', 2, l1_id, 'Parafoudres')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('parafoudres', 'fr', 'Parafoudres');
            PERFORM insert_category_translations('parafoudres', 'ar', 'حمايات ضد الصواعق');
            PERFORM insert_category_translations('parafoudres', 'en', 'Surge protectors');
            PERFORM insert_category_translations('parafoudres', 'de', 'Überspannungsschutz');
            PERFORM insert_category_translations('parafoudres', 'es', 'Protecciones contra sobretensiones');
            PERFORM insert_category_translations('parafoudres', 'it', 'Protezione da sovratensioni');

            -- Level 2: multiprises-intelligentes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('multiprises-intelligentes', 'multiprises-intelligentes', 2, l1_id, 'Multiprises intelligentes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('multiprises-intelligentes', 'fr', 'Multiprises intelligentes');
            PERFORM insert_category_translations('multiprises-intelligentes', 'ar', 'مقابس متعددة ذكية');
            PERFORM insert_category_translations('multiprises-intelligentes', 'en', 'Smart power strips');
            PERFORM insert_category_translations('multiprises-intelligentes', 'de', 'Intelligente Steckdosenleisten');
            PERFORM insert_category_translations('multiprises-intelligentes', 'es', 'Regletas inteligentes');
            PERFORM insert_category_translations('multiprises-intelligentes', 'it', 'Ciabatte intelligenti');

            -- Level 2: regulateurs-tension
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('regulateurs-tension', 'regulateurs-tension', 2, l1_id, 'Régulateurs de tension')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('regulateurs-tension', 'fr', 'Régulateurs de tension');
            PERFORM insert_category_translations('regulateurs-tension', 'ar', 'منظمات جهد');
            PERFORM insert_category_translations('regulateurs-tension', 'en', 'Voltage regulators');
            PERFORM insert_category_translations('regulateurs-tension', 'de', 'Spannungsregler');
            PERFORM insert_category_translations('regulateurs-tension', 'es', 'Reguladores de tensión');
            PERFORM insert_category_translations('regulateurs-tension', 'it', 'Regolatori di tensione');

            -- Level 2: onduleurs-domestiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('onduleurs-domestiques', 'onduleurs-domestiques', 2, l1_id, 'Onduleurs domestiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('onduleurs-domestiques', 'fr', 'Onduleurs domestiques');
            PERFORM insert_category_translations('onduleurs-domestiques', 'ar', 'مزودات طاقة غير منقطعة منزلية');
            PERFORM insert_category_translations('onduleurs-domestiques', 'en', 'Home UPS');
            PERFORM insert_category_translations('onduleurs-domestiques', 'de', 'USV für Zuhause');
            PERFORM insert_category_translations('onduleurs-domestiques', 'es', 'UPS domésticos');
            PERFORM insert_category_translations('onduleurs-domestiques', 'it', 'UPS domestici');

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

            -- Level 2: beko
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('beko', 'beko', 2, l1_id, 'Beko')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('beko', 'fr', 'Beko');
            PERFORM insert_category_translations('beko', 'ar', 'Beko');
            PERFORM insert_category_translations('beko', 'en', 'Beko');
            PERFORM insert_category_translations('beko', 'de', 'Beko');
            PERFORM insert_category_translations('beko', 'es', 'Beko');
            PERFORM insert_category_translations('beko', 'it', 'Beko');

            -- Level 2: bosch
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bosch', 'bosch', 2, l1_id, 'Bosch')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bosch', 'fr', 'Bosch');
            PERFORM insert_category_translations('bosch', 'ar', 'Bosch');
            PERFORM insert_category_translations('bosch', 'en', 'Bosch');
            PERFORM insert_category_translations('bosch', 'de', 'Bosch');
            PERFORM insert_category_translations('bosch', 'es', 'Bosch');
            PERFORM insert_category_translations('bosch', 'it', 'Bosch');

            -- Level 2: siemens
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('siemens', 'siemens', 2, l1_id, 'Siemens')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('siemens', 'fr', 'Siemens');
            PERFORM insert_category_translations('siemens', 'ar', 'Siemens');
            PERFORM insert_category_translations('siemens', 'en', 'Siemens');
            PERFORM insert_category_translations('siemens', 'de', 'Siemens');
            PERFORM insert_category_translations('siemens', 'es', 'Siemens');
            PERFORM insert_category_translations('siemens', 'it', 'Siemens');

            -- Level 2: whirlpool
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('whirlpool', 'whirlpool', 2, l1_id, 'Whirlpool')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('whirlpool', 'fr', 'Whirlpool');
            PERFORM insert_category_translations('whirlpool', 'ar', 'Whirlpool');
            PERFORM insert_category_translations('whirlpool', 'en', 'Whirlpool');
            PERFORM insert_category_translations('whirlpool', 'de', 'Whirlpool');
            PERFORM insert_category_translations('whirlpool', 'es', 'Whirlpool');
            PERFORM insert_category_translations('whirlpool', 'it', 'Whirlpool');

            -- Level 2: brandt
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('brandt', 'brandt', 2, l1_id, 'Brandt')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('brandt', 'fr', 'Brandt');
            PERFORM insert_category_translations('brandt', 'ar', 'Brandt');
            PERFORM insert_category_translations('brandt', 'en', 'Brandt');
            PERFORM insert_category_translations('brandt', 'de', 'Brandt');
            PERFORM insert_category_translations('brandt', 'es', 'Brandt');
            PERFORM insert_category_translations('brandt', 'it', 'Brandt');

            -- Level 2: kenwood
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('kenwood', 'kenwood', 2, l1_id, 'Kenwood')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('kenwood', 'fr', 'Kenwood');
            PERFORM insert_category_translations('kenwood', 'ar', 'Kenwood');
            PERFORM insert_category_translations('kenwood', 'en', 'Kenwood');
            PERFORM insert_category_translations('kenwood', 'de', 'Kenwood');
            PERFORM insert_category_translations('kenwood', 'es', 'Kenwood');
            PERFORM insert_category_translations('kenwood', 'it', 'Kenwood');

            -- Level 2: moulinex
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('moulinex', 'moulinex', 2, l1_id, 'Moulinex')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('moulinex', 'fr', 'Moulinex');
            PERFORM insert_category_translations('moulinex', 'ar', 'Moulinex');
            PERFORM insert_category_translations('moulinex', 'en', 'Moulinex');
            PERFORM insert_category_translations('moulinex', 'de', 'Moulinex');
            PERFORM insert_category_translations('moulinex', 'es', 'Moulinex');
            PERFORM insert_category_translations('moulinex', 'it', 'Moulinex');

            -- Level 2: philips
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('philips', 'philips', 2, l1_id, 'Philips')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('philips', 'fr', 'Philips');
            PERFORM insert_category_translations('philips', 'ar', 'Philips');
            PERFORM insert_category_translations('philips', 'en', 'Philips');
            PERFORM insert_category_translations('philips', 'de', 'Philips');
            PERFORM insert_category_translations('philips', 'es', 'Philips');
            PERFORM insert_category_translations('philips', 'it', 'Philips');

            -- Level 2: hisense
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('hisense', 'hisense', 2, l1_id, 'Hisense')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('hisense', 'fr', 'Hisense');
            PERFORM insert_category_translations('hisense', 'ar', 'Hisense');
            PERFORM insert_category_translations('hisense', 'en', 'Hisense');
            PERFORM insert_category_translations('hisense', 'de', 'Hisense');
            PERFORM insert_category_translations('hisense', 'es', 'Hisense');
            PERFORM insert_category_translations('hisense', 'it', 'Hisense');

            -- Level 2: haier
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('haier', 'haier', 2, l1_id, 'Haier')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('haier', 'fr', 'Haier');
            PERFORM insert_category_translations('haier', 'ar', 'Haier');
            PERFORM insert_category_translations('haier', 'en', 'Haier');
            PERFORM insert_category_translations('haier', 'de', 'Haier');
            PERFORM insert_category_translations('haier', 'es', 'Haier');
            PERFORM insert_category_translations('haier', 'it', 'Haier');

            -- Level 2: candy
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('candy', 'candy', 2, l1_id, 'Candy')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('candy', 'fr', 'Candy');
            PERFORM insert_category_translations('candy', 'ar', 'Candy');
            PERFORM insert_category_translations('candy', 'en', 'Candy');
            PERFORM insert_category_translations('candy', 'de', 'Candy');
            PERFORM insert_category_translations('candy', 'es', 'Candy');
            PERFORM insert_category_translations('candy', 'it', 'Candy');

            -- Level 2: indesit
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('indesit', 'indesit', 2, l1_id, 'Indesit')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('indesit', 'fr', 'Indesit');
            PERFORM insert_category_translations('indesit', 'ar', 'Indesit');
            PERFORM insert_category_translations('indesit', 'en', 'Indesit');
            PERFORM insert_category_translations('indesit', 'de', 'Indesit');
            PERFORM insert_category_translations('indesit', 'es', 'Indesit');
            PERFORM insert_category_translations('indesit', 'it', 'Indesit');

            -- Level 2: midea
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('midea', 'midea', 2, l1_id, 'Midea')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('midea', 'fr', 'Midea');
            PERFORM insert_category_translations('midea', 'ar', 'Midea');
            PERFORM insert_category_translations('midea', 'en', 'Midea');
            PERFORM insert_category_translations('midea', 'de', 'Midea');
            PERFORM insert_category_translations('midea', 'es', 'Midea');
            PERFORM insert_category_translations('midea', 'it', 'Midea');

            -- Level 2: delonghi
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('delonghi', 'delonghi', 2, l1_id, 'Delonghi')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('delonghi', 'fr', 'Delonghi');
            PERFORM insert_category_translations('delonghi', 'ar', 'Delonghi');
            PERFORM insert_category_translations('delonghi', 'en', 'Delonghi');
            PERFORM insert_category_translations('delonghi', 'de', 'Delonghi');
            PERFORM insert_category_translations('delonghi', 'es', 'Delonghi');
            PERFORM insert_category_translations('delonghi', 'it', 'Delonghi');

            -- Level 2: severin
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('severin', 'severin', 2, l1_id, 'Severin')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('severin', 'fr', 'Severin');
            PERFORM insert_category_translations('severin', 'ar', 'Severin');
            PERFORM insert_category_translations('severin', 'en', 'Severin');
            PERFORM insert_category_translations('severin', 'de', 'Severin');
            PERFORM insert_category_translations('severin', 'es', 'Severin');
            PERFORM insert_category_translations('severin', 'it', 'Severin');

            -- Level 2: rowenta
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('rowenta', 'rowenta', 2, l1_id, 'Rowenta')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('rowenta', 'fr', 'Rowenta');
            PERFORM insert_category_translations('rowenta', 'ar', 'Rowenta');
            PERFORM insert_category_translations('rowenta', 'en', 'Rowenta');
            PERFORM insert_category_translations('rowenta', 'de', 'Rowenta');
            PERFORM insert_category_translations('rowenta', 'es', 'Rowenta');
            PERFORM insert_category_translations('rowenta', 'it', 'Rowenta');

        -- Level 1: segments-usage
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('segments-usage', 'segments-usage', 1, root_id, 'Segments d’Usage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('segments-usage', 'fr', 'Segments d’Usage');
        PERFORM insert_category_translations('segments-usage', 'ar', 'شرائح الاستخدام');
        PERFORM insert_category_translations('segments-usage', 'en', 'Usage Segments');
        PERFORM insert_category_translations('segments-usage', 'de', 'Nutzungskategorien');
        PERFORM insert_category_translations('segments-usage', 'es', 'Segmentos de Uso');
        PERFORM insert_category_translations('segments-usage', 'it', 'Segmenti d’Uso');

            -- Level 2: appareils-menagers-classiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('appareils-menagers-classiques', 'appareils-menagers-classiques', 2, l1_id, 'Appareils ménagers classiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('appareils-menagers-classiques', 'fr', 'Appareils ménagers classiques');
            PERFORM insert_category_translations('appareils-menagers-classiques', 'ar', 'أجهزة منزلية تقليدية');
            PERFORM insert_category_translations('appareils-menagers-classiques', 'en', 'Standard household appliances');
            PERFORM insert_category_translations('appareils-menagers-classiques', 'de', 'Standard-Haushaltsgeräte');
            PERFORM insert_category_translations('appareils-menagers-classiques', 'es', 'Electrodomésticos estándar');
            PERFORM insert_category_translations('appareils-menagers-classiques', 'it', 'Elettrodomestici standard');

            -- Level 2: appareils-professionnels
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('appareils-professionnels', 'appareils-professionnels', 2, l1_id, 'Appareils professionnels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('appareils-professionnels', 'fr', 'Appareils professionnels');
            PERFORM insert_category_translations('appareils-professionnels', 'ar', 'أجهزة احترافية');
            PERFORM insert_category_translations('appareils-professionnels', 'en', 'Professional appliances');
            PERFORM insert_category_translations('appareils-professionnels', 'de', 'Professionelle Geräte');
            PERFORM insert_category_translations('appareils-professionnels', 'es', 'Electrodomésticos profesionales');
            PERFORM insert_category_translations('appareils-professionnels', 'it', 'Elettrodomestici professionali');

            -- Level 2: appareils-petites-cuisines
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('appareils-petites-cuisines', 'appareils-petites-cuisines', 2, l1_id, 'Appareils pour petites cuisines')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('appareils-petites-cuisines', 'fr', 'Appareils pour petites cuisines');
            PERFORM insert_category_translations('appareils-petites-cuisines', 'ar', 'أجهزة للمطابخ الصغيرة');
            PERFORM insert_category_translations('appareils-petites-cuisines', 'en', 'Small-kitchen appliances');
            PERFORM insert_category_translations('appareils-petites-cuisines', 'de', 'Geräte für kleine Küchen');
            PERFORM insert_category_translations('appareils-petites-cuisines', 'es', 'Aparatos para cocinas pequeñas');
            PERFORM insert_category_translations('appareils-petites-cuisines', 'it', 'Apparecchi per cucine piccole');

            -- Level 2: appareils-energetiques-a-plus-plus
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('appareils-energetiques-a-plus-plus', 'appareils-energetiques-a-plus-plus', 2, l1_id, 'Appareils énergétiques bas & A++')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('appareils-energetiques-a-plus-plus', 'fr', 'Appareils énergétiques bas & A++');
            PERFORM insert_category_translations('appareils-energetiques-a-plus-plus', 'ar', 'أجهزة عالية الكفاءة A+ إلى A++');
            PERFORM insert_category_translations('appareils-energetiques-a-plus-plus', 'en', 'Energy-efficient A+ to A++');
            PERFORM insert_category_translations('appareils-energetiques-a-plus-plus', 'de', 'Energieeffizient A+ bis A++');
            PERFORM insert_category_translations('appareils-energetiques-a-plus-plus', 'es', 'Eficiencia energética A+ a A++');
            PERFORM insert_category_translations('appareils-energetiques-a-plus-plus', 'it', 'Efficienza energetica A+ a A++');

            -- Level 2: appareils-connectes-smart-home
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('appareils-connectes-smart-home', 'appareils-connectes-smart-home', 2, l1_id, 'Appareils connectés smart-home')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('appareils-connectes-smart-home', 'fr', 'Appareils connectés smart-home');
            PERFORM insert_category_translations('appareils-connectes-smart-home', 'ar', 'أجهزة ذكية متصلة بالمنزل');
            PERFORM insert_category_translations('appareils-connectes-smart-home', 'en', 'Smart-home connected appliances');
            PERFORM insert_category_translations('appareils-connectes-smart-home', 'de', 'Smart-Home-fähige Geräte');
            PERFORM insert_category_translations('appareils-connectes-smart-home', 'es', 'Aparatos conectados smart-home');
            PERFORM insert_category_translations('appareils-connectes-smart-home', 'it', 'Apparecchi smart-home connessi');

            -- Level 2: appareils-economiques-compacts
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('appareils-economiques-compacts', 'appareils-economiques-compacts', 2, l1_id, 'Appareils économiques & compacts')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('appareils-economiques-compacts', 'fr', 'Appareils économiques & compacts');
            PERFORM insert_category_translations('appareils-economiques-compacts', 'ar', 'أجهزة اقتصادية ومضغوطة');
            PERFORM insert_category_translations('appareils-economiques-compacts', 'en', 'Economy & compact appliances');
            PERFORM insert_category_translations('appareils-economiques-compacts', 'de', 'Sparsame & kompakte Geräte');
            PERFORM insert_category_translations('appareils-economiques-compacts', 'es', 'Aparatos económicos y compactos');
            PERFORM insert_category_translations('appareils-economiques-compacts', 'it', 'Apparecchi economici & compatti');
END $$;