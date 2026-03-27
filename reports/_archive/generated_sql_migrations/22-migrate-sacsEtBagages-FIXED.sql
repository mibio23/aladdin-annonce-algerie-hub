-- Migration: Sacs & Bagages (Generated Recursive)
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

    -- Level 0: sacs-et-bagages
    INSERT INTO categories (id, slug, level, name)
    VALUES ('sacs-et-bagages', 'sacs-et-bagages', 0, 'Sacs & Bagages')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 0, name = EXCLUDED.name
    RETURNING id INTO root_id;
    PERFORM insert_category_translations('sacs-et-bagages', 'fr', 'Sacs & Bagages');
    PERFORM insert_category_translations('sacs-et-bagages', 'ar', 'حقائب وأمتعة');
    PERFORM insert_category_translations('sacs-et-bagages', 'en', 'Bags & Luggage');
    PERFORM insert_category_translations('sacs-et-bagages', 'de', 'Taschen & Gepäck');
    PERFORM insert_category_translations('sacs-et-bagages', 'es', 'Bolsos y Equipaje');
    PERFORM insert_category_translations('sacs-et-bagages', 'it', 'Borse & Bagagli');

        -- Level 1: sacs-a-main
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-a-main', 'sacs-a-main', 1, root_id, 'Sacs à main (femme & unisexe)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('sacs-a-main', 'fr', 'Sacs à main (femme & unisexe)');
        PERFORM insert_category_translations('sacs-a-main', 'ar', 'حقائب يد (نساء & للجنسين)');
        PERFORM insert_category_translations('sacs-a-main', 'en', 'Handbags (women & unisex)');
        PERFORM insert_category_translations('sacs-a-main', 'de', 'Handtaschen (Damen & Unisex)');
        PERFORM insert_category_translations('sacs-a-main', 'es', 'Bolsos de mano (mujer & unisex)');
        PERFORM insert_category_translations('sacs-a-main', 'it', 'Borse a mano (donna & unisex)');

            -- Level 2: cabas-grand
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cabas-grand', 'cabas-grand', 2, l1_id, 'Cabas grand')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cabas-grand', 'fr', 'Cabas grand');
            PERFORM insert_category_translations('cabas-grand', 'ar', 'حقائب تسوق كبيرة');
            PERFORM insert_category_translations('cabas-grand', 'en', 'Large tote bags');
            PERFORM insert_category_translations('cabas-grand', 'de', 'Große Shopper-Taschen');
            PERFORM insert_category_translations('cabas-grand', 'es', 'Shopper grandes');
            PERFORM insert_category_translations('cabas-grand', 'it', 'Shopper grande');

            -- Level 2: cabas-moyen
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cabas-moyen', 'cabas-moyen', 2, l1_id, 'Cabas moyen')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cabas-moyen', 'fr', 'Cabas moyen');
            PERFORM insert_category_translations('cabas-moyen', 'ar', 'حقائب تسوق متوسطة');
            PERFORM insert_category_translations('cabas-moyen', 'en', 'Medium tote bags');
            PERFORM insert_category_translations('cabas-moyen', 'de', 'Mittlere Shopper-Taschen');
            PERFORM insert_category_translations('cabas-moyen', 'es', 'Shopper medianos');
            PERFORM insert_category_translations('cabas-moyen', 'it', 'Shopper medio');

            -- Level 2: cabas-rigide
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cabas-rigide', 'cabas-rigide', 2, l1_id, 'Cabas rigide')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cabas-rigide', 'fr', 'Cabas rigide');
            PERFORM insert_category_translations('cabas-rigide', 'ar', 'حقائب تسوق صلبة');
            PERFORM insert_category_translations('cabas-rigide', 'en', 'Rigid tote bags');
            PERFORM insert_category_translations('cabas-rigide', 'de', 'Shopper, hart');
            PERFORM insert_category_translations('cabas-rigide', 'es', 'Shopper rígidos');
            PERFORM insert_category_translations('cabas-rigide', 'it', 'Shopper rigido');

            -- Level 2: cabas-souple
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cabas-souple', 'cabas-souple', 2, l1_id, 'Cabas souple')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cabas-souple', 'fr', 'Cabas souple');
            PERFORM insert_category_translations('cabas-souple', 'ar', 'حقائب تسوق مرنة');
            PERFORM insert_category_translations('cabas-souple', 'en', 'Soft tote bags');
            PERFORM insert_category_translations('cabas-souple', 'de', 'Shopper, weich');
            PERFORM insert_category_translations('cabas-souple', 'es', 'Shopper flexibles');
            PERFORM insert_category_translations('cabas-souple', 'it', 'Shopper morbido');

            -- Level 2: bandouliere-mini
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bandouliere-mini', 'bandouliere-mini', 2, l1_id, 'Sacs bandoulière mini')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bandouliere-mini', 'fr', 'Sacs bandoulière mini');
            PERFORM insert_category_translations('bandouliere-mini', 'ar', 'حقائب كتف صغيرة');
            PERFORM insert_category_translations('bandouliere-mini', 'en', 'Mini shoulder bags');
            PERFORM insert_category_translations('bandouliere-mini', 'de', 'Mini-Schultertaschen');
            PERFORM insert_category_translations('bandouliere-mini', 'es', 'Bolsos bandolera mini');
            PERFORM insert_category_translations('bandouliere-mini', 'it', 'Borse a tracolla mini');

            -- Level 2: bandouliere-moyen
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bandouliere-moyen', 'bandouliere-moyen', 2, l1_id, 'Sacs bandoulière moyen')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bandouliere-moyen', 'fr', 'Sacs bandoulière moyen');
            PERFORM insert_category_translations('bandouliere-moyen', 'ar', 'حقائب كتف متوسطة');
            PERFORM insert_category_translations('bandouliere-moyen', 'en', 'Medium shoulder bags');
            PERFORM insert_category_translations('bandouliere-moyen', 'de', 'Schultertaschen mittel');
            PERFORM insert_category_translations('bandouliere-moyen', 'es', 'Bolsos bandolera medianos');
            PERFORM insert_category_translations('bandouliere-moyen', 'it', 'Borse a tracolla medie');

            -- Level 2: bandouliere-matelasse
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bandouliere-matelasse', 'bandouliere-matelasse', 2, l1_id, 'Sacs bandoulière matelassé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bandouliere-matelasse', 'fr', 'Sacs bandoulière matelassé');
            PERFORM insert_category_translations('bandouliere-matelasse', 'ar', 'حقائب كتف مبطنة');
            PERFORM insert_category_translations('bandouliere-matelasse', 'en', 'Quilted shoulder bags');
            PERFORM insert_category_translations('bandouliere-matelasse', 'de', 'Gesteppten Schultertaschen');
            PERFORM insert_category_translations('bandouliere-matelasse', 'es', 'Bolsos bandolera acolchados');
            PERFORM insert_category_translations('bandouliere-matelasse', 'it', 'Borse a tracolla trapuntate');

            -- Level 2: bandouliere-sport
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bandouliere-sport', 'bandouliere-sport', 2, l1_id, 'Sacs bandoulière sport')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bandouliere-sport', 'fr', 'Sacs bandoulière sport');
            PERFORM insert_category_translations('bandouliere-sport', 'ar', 'حقائب كتف رياضية');
            PERFORM insert_category_translations('bandouliere-sport', 'en', 'Sport shoulder bags');
            PERFORM insert_category_translations('bandouliere-sport', 'de', 'Sport-Schultertaschen');
            PERFORM insert_category_translations('bandouliere-sport', 'es', 'Bolsos bandolera deportivos');
            PERFORM insert_category_translations('bandouliere-sport', 'it', 'Borse a tracolla sportive');

            -- Level 2: sacs-seau
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-seau', 'sacs-seau', 2, l1_id, 'Sacs seau')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-seau', 'fr', 'Sacs seau');
            PERFORM insert_category_translations('sacs-seau', 'ar', 'حقائب دلو');
            PERFORM insert_category_translations('sacs-seau', 'en', 'Bucket bags');
            PERFORM insert_category_translations('sacs-seau', 'de', 'Beuteltaschen');
            PERFORM insert_category_translations('sacs-seau', 'es', 'Bolsos saco');
            PERFORM insert_category_translations('sacs-seau', 'it', 'Borse secchiello');

            -- Level 2: sacs-tote
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-tote', 'sacs-tote', 2, l1_id, 'Sacs tote')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-tote', 'fr', 'Sacs tote');
            PERFORM insert_category_translations('sacs-tote', 'ar', 'حقائب توت');
            PERFORM insert_category_translations('sacs-tote', 'en', 'Tote bags');
            PERFORM insert_category_translations('sacs-tote', 'de', 'Tote Bags');
            PERFORM insert_category_translations('sacs-tote', 'es', 'Bolsos tote');
            PERFORM insert_category_translations('sacs-tote', 'it', 'Borse tote');

            -- Level 2: sacs-hobo
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-hobo', 'sacs-hobo', 2, l1_id, 'Sacs hobo')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-hobo', 'fr', 'Sacs hobo');
            PERFORM insert_category_translations('sacs-hobo', 'ar', 'حقائب هوبو');
            PERFORM insert_category_translations('sacs-hobo', 'en', 'Hobo bags');
            PERFORM insert_category_translations('sacs-hobo', 'de', 'Hobo-Taschen');
            PERFORM insert_category_translations('sacs-hobo', 'es', 'Bolsos hobo');
            PERFORM insert_category_translations('sacs-hobo', 'it', 'Borse hobo');

            -- Level 2: sacs-bowling
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-bowling', 'sacs-bowling', 2, l1_id, 'Sacs bowling')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-bowling', 'fr', 'Sacs bowling');
            PERFORM insert_category_translations('sacs-bowling', 'ar', 'حقائب بولينغ');
            PERFORM insert_category_translations('sacs-bowling', 'en', 'Bowling bags');
            PERFORM insert_category_translations('sacs-bowling', 'de', 'Bowling-Taschen');
            PERFORM insert_category_translations('sacs-bowling', 'es', 'Bolsos bowling');
            PERFORM insert_category_translations('sacs-bowling', 'it', 'Borse bowling');

            -- Level 2: pochettes-soiree
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pochettes-soiree', 'pochettes-soiree', 2, l1_id, 'Pochettes soirée')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pochettes-soiree', 'fr', 'Pochettes soirée');
            PERFORM insert_category_translations('pochettes-soiree', 'ar', 'حقائب كلاتش للمساء');
            PERFORM insert_category_translations('pochettes-soiree', 'en', 'Evening clutches');
            PERFORM insert_category_translations('pochettes-soiree', 'de', 'Abendclutches');
            PERFORM insert_category_translations('pochettes-soiree', 'es', 'Clutches de noche');
            PERFORM insert_category_translations('pochettes-soiree', 'it', 'Clutch da sera');

            -- Level 2: pochettes-mariage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pochettes-mariage', 'pochettes-mariage', 2, l1_id, 'Pochettes mariage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pochettes-mariage', 'fr', 'Pochettes mariage');
            PERFORM insert_category_translations('pochettes-mariage', 'ar', 'حقائب كلاتش للزفاف');
            PERFORM insert_category_translations('pochettes-mariage', 'en', 'Wedding clutches');
            PERFORM insert_category_translations('pochettes-mariage', 'de', 'Hochzeitsclutches');
            PERFORM insert_category_translations('pochettes-mariage', 'es', 'Clutches de boda');
            PERFORM insert_category_translations('pochettes-mariage', 'it', 'Clutch da matrimonio');

            -- Level 2: pochettes-minimalistes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pochettes-minimalistes', 'pochettes-minimalistes', 2, l1_id, 'Pochettes minimalistes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pochettes-minimalistes', 'fr', 'Pochettes minimalistes');
            PERFORM insert_category_translations('pochettes-minimalistes', 'ar', 'حقائب كلاتش بسيطة');
            PERFORM insert_category_translations('pochettes-minimalistes', 'en', 'Minimalist clutches');
            PERFORM insert_category_translations('pochettes-minimalistes', 'de', 'Minimalistische Clutches');
            PERFORM insert_category_translations('pochettes-minimalistes', 'es', 'Clutches minimalistas');
            PERFORM insert_category_translations('pochettes-minimalistes', 'it', 'Clutch minimaliste');

            -- Level 2: mini-bags-ville
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mini-bags-ville', 'mini-bags-ville', 2, l1_id, 'Mini-bags ville')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mini-bags-ville', 'fr', 'Mini-bags ville');
            PERFORM insert_category_translations('mini-bags-ville', 'ar', 'حقائب صغيرة للمدينة');
            PERFORM insert_category_translations('mini-bags-ville', 'en', 'City mini bags');
            PERFORM insert_category_translations('mini-bags-ville', 'de', 'City Mini-Bags');
            PERFORM insert_category_translations('mini-bags-ville', 'es', 'Mini bolsos urbanos');
            PERFORM insert_category_translations('mini-bags-ville', 'it', 'Mini borse cittadine');

            -- Level 2: mini-bags-luxe
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mini-bags-luxe', 'mini-bags-luxe', 2, l1_id, 'Mini-bags luxe')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mini-bags-luxe', 'fr', 'Mini-bags luxe');
            PERFORM insert_category_translations('mini-bags-luxe', 'ar', 'حقائب صغيرة فاخرة');
            PERFORM insert_category_translations('mini-bags-luxe', 'en', 'Luxury mini bags');
            PERFORM insert_category_translations('mini-bags-luxe', 'de', 'Luxus Mini-Bags');
            PERFORM insert_category_translations('mini-bags-luxe', 'es', 'Mini bolsos de lujo');
            PERFORM insert_category_translations('mini-bags-luxe', 'it', 'Mini borse di lusso');

            -- Level 2: sacs-demi-lune
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-demi-lune', 'sacs-demi-lune', 2, l1_id, 'Sacs demi-lune')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-demi-lune', 'fr', 'Sacs demi-lune');
            PERFORM insert_category_translations('sacs-demi-lune', 'ar', 'حقائب نصف قمر');
            PERFORM insert_category_translations('sacs-demi-lune', 'en', 'Half-moon bags');
            PERFORM insert_category_translations('sacs-demi-lune', 'de', 'Halbmond-Taschen');
            PERFORM insert_category_translations('sacs-demi-lune', 'es', 'Bolsos media luna');
            PERFORM insert_category_translations('sacs-demi-lune', 'it', 'Borse mezzaluna');

            -- Level 2: sacs-en-cuir-veritable
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-en-cuir-veritable', 'sacs-en-cuir-veritable', 2, l1_id, 'Sacs en cuir véritable')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-en-cuir-veritable', 'fr', 'Sacs en cuir véritable');
            PERFORM insert_category_translations('sacs-en-cuir-veritable', 'ar', 'حقائب من الجلد الطبيعي');
            PERFORM insert_category_translations('sacs-en-cuir-veritable', 'en', 'Genuine leather bags');
            PERFORM insert_category_translations('sacs-en-cuir-veritable', 'de', 'Taschen aus Echtleder');
            PERFORM insert_category_translations('sacs-en-cuir-veritable', 'es', 'Bolsos de cuero auténtico');
            PERFORM insert_category_translations('sacs-en-cuir-veritable', 'it', 'Borse in vera pelle');

            -- Level 2: sacs-en-cuir-synthetique
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-en-cuir-synthetique', 'sacs-en-cuir-synthetique', 2, l1_id, 'Sacs en cuir synthétique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-en-cuir-synthetique', 'fr', 'Sacs en cuir synthétique');
            PERFORM insert_category_translations('sacs-en-cuir-synthetique', 'ar', 'حقائب من الجلد الصناعي');
            PERFORM insert_category_translations('sacs-en-cuir-synthetique', 'en', 'Synthetic leather bags');
            PERFORM insert_category_translations('sacs-en-cuir-synthetique', 'de', 'Taschen aus Kunstleder');
            PERFORM insert_category_translations('sacs-en-cuir-synthetique', 'es', 'Bolsos de cuero sintético');
            PERFORM insert_category_translations('sacs-en-cuir-synthetique', 'it', 'Borse in pelle sintetica');

            -- Level 2: sacs-en-cuir-artisanal
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-en-cuir-artisanal', 'sacs-en-cuir-artisanal', 2, l1_id, 'Sacs en cuir artisanal')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-en-cuir-artisanal', 'fr', 'Sacs en cuir artisanal');
            PERFORM insert_category_translations('sacs-en-cuir-artisanal', 'ar', 'حقائب جلد مصنوعة يدويًا');
            PERFORM insert_category_translations('sacs-en-cuir-artisanal', 'en', 'Artisanal leather bags');
            PERFORM insert_category_translations('sacs-en-cuir-artisanal', 'de', 'Handgefertigte Ledertaschen');
            PERFORM insert_category_translations('sacs-en-cuir-artisanal', 'es', 'Bolsos de cuero artesanal');
            PERFORM insert_category_translations('sacs-en-cuir-artisanal', 'it', 'Borse in pelle artigianale');

            -- Level 2: sacs-en-toile-tissu
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-en-toile-tissu', 'sacs-en-toile-tissu', 2, l1_id, 'Sacs en toile & tissu')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-en-toile-tissu', 'fr', 'Sacs en toile & tissu');
            PERFORM insert_category_translations('sacs-en-toile-tissu', 'ar', 'حقائب من القماش والنسيج');
            PERFORM insert_category_translations('sacs-en-toile-tissu', 'en', 'Canvas & fabric bags');
            PERFORM insert_category_translations('sacs-en-toile-tissu', 'de', 'Canvas- & Stofftaschen');
            PERFORM insert_category_translations('sacs-en-toile-tissu', 'es', 'Bolsos de lona y tela');
            PERFORM insert_category_translations('sacs-en-toile-tissu', 'it', 'Borse in tela e tessuto');

        -- Level 1: sacs-a-dos
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-a-dos', 'sacs-a-dos', 1, root_id, 'Sacs à dos')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('sacs-a-dos', 'fr', 'Sacs à dos');
        PERFORM insert_category_translations('sacs-a-dos', 'ar', 'حقائب ظهر');
        PERFORM insert_category_translations('sacs-a-dos', 'en', 'Backpacks');
        PERFORM insert_category_translations('sacs-a-dos', 'de', 'Rucksäcke');
        PERFORM insert_category_translations('sacs-a-dos', 'es', 'Mochilas');
        PERFORM insert_category_translations('sacs-a-dos', 'it', 'Zaini');

            -- Level 2: urbains
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('urbains', 'urbains', 2, l1_id, 'Sacs à dos urbains')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('urbains', 'fr', 'Sacs à dos urbains');
            PERFORM insert_category_translations('urbains', 'ar', 'حقائب ظهر حضرية');
            PERFORM insert_category_translations('urbains', 'en', 'Urban backpacks');
            PERFORM insert_category_translations('urbains', 'de', 'Urbane Rucksäcke');
            PERFORM insert_category_translations('urbains', 'es', 'Mochilas urbanas');
            PERFORM insert_category_translations('urbains', 'it', 'Zaini urbani');

            -- Level 2: antivol
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('antivol', 'antivol', 2, l1_id, 'Sacs à dos antivol')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('antivol', 'fr', 'Sacs à dos antivol');
            PERFORM insert_category_translations('antivol', 'ar', 'حقائب ظهر مضادة للسرقة');
            PERFORM insert_category_translations('antivol', 'en', 'Anti-theft backpacks');
            PERFORM insert_category_translations('antivol', 'de', 'Anti-Diebstahl-Rucksäcke');
            PERFORM insert_category_translations('antivol', 'es', 'Mochilas antirrobo');
            PERFORM insert_category_translations('antivol', 'it', 'Zaini antifurto');

            -- Level 2: business-porte-pc
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('business-porte-pc', 'business-porte-pc', 2, l1_id, 'Sacs à dos business (porte-PC)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('business-porte-pc', 'fr', 'Sacs à dos business (porte-PC)');
            PERFORM insert_category_translations('business-porte-pc', 'ar', 'حقائب ظهر للأعمال (لابتوب)');
            PERFORM insert_category_translations('business-porte-pc', 'en', 'Business backpacks (laptop)');
            PERFORM insert_category_translations('business-porte-pc', 'de', 'Business-Rucksäcke (Laptop)');
            PERFORM insert_category_translations('business-porte-pc', 'es', 'Mochilas de negocios (para portátil)');
            PERFORM insert_category_translations('business-porte-pc', 'it', 'Zaini business (per laptop)');

            -- Level 2: sport
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sport', 'sport', 2, l1_id, 'Sacs à dos sport')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sport', 'fr', 'Sacs à dos sport');
            PERFORM insert_category_translations('sport', 'ar', 'حقائب ظهر رياضية');
            PERFORM insert_category_translations('sport', 'en', 'Sports backpacks');
            PERFORM insert_category_translations('sport', 'de', 'Sport-Rucksäcke');
            PERFORM insert_category_translations('sport', 'es', 'Mochilas deportivas');
            PERFORM insert_category_translations('sport', 'it', 'Zaini sportivi');

            -- Level 2: randonnee-20l
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('randonnee-20l', 'randonnee-20l', 2, l1_id, 'Randonnée & trekking 20L')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('randonnee-20l', 'fr', 'Randonnée & trekking 20L');
            PERFORM insert_category_translations('randonnee-20l', 'ar', 'حقائب رحلات وتريك 20 لتر');
            PERFORM insert_category_translations('randonnee-20l', 'en', 'Hiking & trekking 20L');
            PERFORM insert_category_translations('randonnee-20l', 'de', 'Wandern & Trekking 20L');
            PERFORM insert_category_translations('randonnee-20l', 'es', 'Senderismo y trekking 20L');
            PERFORM insert_category_translations('randonnee-20l', 'it', 'Escursionismo & trekking 20L');

            -- Level 2: randonnee-30l
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('randonnee-30l', 'randonnee-30l', 2, l1_id, 'Randonnée & trekking 30L')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('randonnee-30l', 'fr', 'Randonnée & trekking 30L');
            PERFORM insert_category_translations('randonnee-30l', 'ar', 'حقائب رحلات وتريك 30 لتر');
            PERFORM insert_category_translations('randonnee-30l', 'en', 'Hiking & trekking 30L');
            PERFORM insert_category_translations('randonnee-30l', 'de', 'Wandern & Trekking 30L');
            PERFORM insert_category_translations('randonnee-30l', 'es', 'Senderismo y trekking 30L');
            PERFORM insert_category_translations('randonnee-30l', 'it', 'Escursionismo & trekking 30L');

            -- Level 2: randonnee-50l-plus
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('randonnee-50l-plus', 'randonnee-50l-plus', 2, l1_id, 'Randonnée & trekking 50L+')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('randonnee-50l-plus', 'fr', 'Randonnée & trekking 50L+');
            PERFORM insert_category_translations('randonnee-50l-plus', 'ar', 'حقائب رحلات وتريك 50 لتر+');
            PERFORM insert_category_translations('randonnee-50l-plus', 'en', 'Hiking & trekking 50L+');
            PERFORM insert_category_translations('randonnee-50l-plus', 'de', 'Wandern & Trekking 50L+');
            PERFORM insert_category_translations('randonnee-50l-plus', 'es', 'Senderismo y trekking 50L+');
            PERFORM insert_category_translations('randonnee-50l-plus', 'it', 'Escursionismo & trekking 50L+');

            -- Level 2: tactiques-militaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tactiques-militaires', 'tactiques-militaires', 2, l1_id, 'Sacs tactiques & militaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tactiques-militaires', 'fr', 'Sacs tactiques & militaires');
            PERFORM insert_category_translations('tactiques-militaires', 'ar', 'حقائب تكتيكية وعسكرية');
            PERFORM insert_category_translations('tactiques-militaires', 'en', 'Tactical & military');
            PERFORM insert_category_translations('tactiques-militaires', 'de', 'Taktische & Militär');
            PERFORM insert_category_translations('tactiques-militaires', 'es', 'Mochilas tácticas y militares');
            PERFORM insert_category_translations('tactiques-militaires', 'it', 'Zaini tattici e militari');

            -- Level 2: scolaires-enfant-ado
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('scolaires-enfant-ado', 'scolaires-enfant-ado', 2, l1_id, 'Sacs à dos scolaires (enfant/ado)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('scolaires-enfant-ado', 'fr', 'Sacs à dos scolaires (enfant/ado)');
            PERFORM insert_category_translations('scolaires-enfant-ado', 'ar', 'حقائب ظهر مدرسية (أطفال/مراهقون)');
            PERFORM insert_category_translations('scolaires-enfant-ado', 'en', 'School backpacks (kids/teens)');
            PERFORM insert_category_translations('scolaires-enfant-ado', 'de', 'Schulrucksäcke (Kinder/Teenager)');
            PERFORM insert_category_translations('scolaires-enfant-ado', 'es', 'Mochilas escolares (niños/adolescentes)');
            PERFORM insert_category_translations('scolaires-enfant-ado', 'it', 'Zaini scolastici (bambini/adolescenti)');

            -- Level 2: minimalistes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('minimalistes', 'minimalistes', 2, l1_id, 'Sacs à dos minimalistes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('minimalistes', 'fr', 'Sacs à dos minimalistes');
            PERFORM insert_category_translations('minimalistes', 'ar', 'حقائب ظهر بسيطة');
            PERFORM insert_category_translations('minimalistes', 'en', 'Minimalist backpacks');
            PERFORM insert_category_translations('minimalistes', 'de', 'Minimalistische Rucksäcke');
            PERFORM insert_category_translations('minimalistes', 'es', 'Mochilas minimalistas');
            PERFORM insert_category_translations('minimalistes', 'it', 'Zaini minimalisti');

            -- Level 2: voyage-cabine
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('voyage-cabine', 'voyage-cabine', 2, l1_id, 'Sacs à dos voyage cabine')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('voyage-cabine', 'fr', 'Sacs à dos voyage cabine');
            PERFORM insert_category_translations('voyage-cabine', 'ar', 'حقائب ظهر سفر بحجم المقصورة');
            PERFORM insert_category_translations('voyage-cabine', 'en', 'Carry-on travel backpacks');
            PERFORM insert_category_translations('voyage-cabine', 'de', 'Reise-Rucksäcke (Handgepäck)');
            PERFORM insert_category_translations('voyage-cabine', 'es', 'Mochilas de cabina para viaje');
            PERFORM insert_category_translations('voyage-cabine', 'it', 'Zaini da viaggio cabina');

        -- Level 1: sacs-voyage-week-end
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-voyage-week-end', 'sacs-voyage-week-end', 1, root_id, 'Sacs Voyage & Week-end')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('sacs-voyage-week-end', 'fr', 'Sacs Voyage & Week-end');
        PERFORM insert_category_translations('sacs-voyage-week-end', 'ar', 'حقائب سفر ونهاية الأسبوع');
        PERFORM insert_category_translations('sacs-voyage-week-end', 'en', 'Travel & Weekend bags');
        PERFORM insert_category_translations('sacs-voyage-week-end', 'de', 'Reise- & Weekender-Taschen');
        PERFORM insert_category_translations('sacs-voyage-week-end', 'es', 'Bolsas de viaje y fin de semana');
        PERFORM insert_category_translations('sacs-voyage-week-end', 'it', 'Borse da viaggio & weekend');

            -- Level 2: voyage-souples
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('voyage-souples', 'voyage-souples', 2, l1_id, 'Sacs de voyage souples')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('voyage-souples', 'fr', 'Sacs de voyage souples');
            PERFORM insert_category_translations('voyage-souples', 'ar', 'حقائب سفر مرنة');
            PERFORM insert_category_translations('voyage-souples', 'en', 'Soft travel bags');
            PERFORM insert_category_translations('voyage-souples', 'de', 'Weiche Reisetaschen');
            PERFORM insert_category_translations('voyage-souples', 'es', 'Bolsas de viaje blandas');
            PERFORM insert_category_translations('voyage-souples', 'it', 'Borse da viaggio morbide');

            -- Level 2: voyage-semi-rigides
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('voyage-semi-rigides', 'voyage-semi-rigides', 2, l1_id, 'Sacs de voyage semi-rigides')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('voyage-semi-rigides', 'fr', 'Sacs de voyage semi-rigides');
            PERFORM insert_category_translations('voyage-semi-rigides', 'ar', 'حقائب سفر شبه صلبة');
            PERFORM insert_category_translations('voyage-semi-rigides', 'en', 'Semi-rigid travel bags');
            PERFORM insert_category_translations('voyage-semi-rigides', 'de', 'Halbharte Reisetaschen');
            PERFORM insert_category_translations('voyage-semi-rigides', 'es', 'Bolsas de viaje semirrígidas');
            PERFORM insert_category_translations('voyage-semi-rigides', 'it', 'Borse da viaggio semirigide');

            -- Level 2: duffle-bags
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('duffle-bags', 'duffle-bags', 2, l1_id, 'Duffle bags')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('duffle-bags', 'fr', 'Duffle bags');
            PERFORM insert_category_translations('duffle-bags', 'ar', 'حقائب دفل');
            PERFORM insert_category_translations('duffle-bags', 'en', 'Duffle bags');
            PERFORM insert_category_translations('duffle-bags', 'de', 'Duffle Bags');
            PERFORM insert_category_translations('duffle-bags', 'es', 'Bolsas duffle');
            PERFORM insert_category_translations('duffle-bags', 'it', 'Borse duffle');

            -- Level 2: polochon
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('polochon', 'polochon', 2, l1_id, 'Sacs polochon')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('polochon', 'fr', 'Sacs polochon');
            PERFORM insert_category_translations('polochon', 'ar', 'حقائب أسطوانية');
            PERFORM insert_category_translations('polochon', 'en', 'Barrel bags');
            PERFORM insert_category_translations('polochon', 'de', 'Seesäcke');
            PERFORM insert_category_translations('polochon', 'es', 'Bolsas barril');
            PERFORM insert_category_translations('polochon', 'it', 'Borse a barile');

            -- Level 2: week-end
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('week-end', 'week-end', 2, l1_id, 'Sacs week-end')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('week-end', 'fr', 'Sacs week-end');
            PERFORM insert_category_translations('week-end', 'ar', 'حقائب عطلة نهاية الأسبوع');
            PERFORM insert_category_translations('week-end', 'en', 'Weekender bags');
            PERFORM insert_category_translations('week-end', 'de', 'Weekender-Taschen');
            PERFORM insert_category_translations('week-end', 'es', 'Bolsas de fin de semana');
            PERFORM insert_category_translations('week-end', 'it', 'Borse weekend');

            -- Level 2: pliables
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pliables', 'pliables', 2, l1_id, 'Sacs pliables')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pliables', 'fr', 'Sacs pliables');
            PERFORM insert_category_translations('pliables', 'ar', 'حقائب قابلة للطي');
            PERFORM insert_category_translations('pliables', 'en', 'Foldable bags');
            PERFORM insert_category_translations('pliables', 'de', 'Faltbare Taschen');
            PERFORM insert_category_translations('pliables', 'es', 'Bolsas plegables');
            PERFORM insert_category_translations('pliables', 'it', 'Borse pieghevoli');

            -- Level 2: transport-longue-distance
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('transport-longue-distance', 'transport-longue-distance', 2, l1_id, 'Sacs transport longue distance')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('transport-longue-distance', 'fr', 'Sacs transport longue distance');
            PERFORM insert_category_translations('transport-longue-distance', 'ar', 'حقائب نقل لمسافات طويلة');
            PERFORM insert_category_translations('transport-longue-distance', 'en', 'Long-distance transport bags');
            PERFORM insert_category_translations('transport-longue-distance', 'de', 'Langstrecken-Transporttaschen');
            PERFORM insert_category_translations('transport-longue-distance', 'es', 'Bolsas de transporte de larga distancia');
            PERFORM insert_category_translations('transport-longue-distance', 'it', 'Borse per trasporto a lunga distanza');

            -- Level 2: multi-poches
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('multi-poches', 'multi-poches', 2, l1_id, 'Sacs multi-poches')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('multi-poches', 'fr', 'Sacs multi-poches');
            PERFORM insert_category_translations('multi-poches', 'ar', 'حقائب متعددة الجيوب');
            PERFORM insert_category_translations('multi-poches', 'en', 'Multi-pocket bags');
            PERFORM insert_category_translations('multi-poches', 'de', 'Mehrfachtaschen');
            PERFORM insert_category_translations('multi-poches', 'es', 'Bolsas multi-bolsillos');
            PERFORM insert_category_translations('multi-poches', 'it', 'Borse multi-tasche');

            -- Level 2: compartiment-chaussures
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('compartiment-chaussures', 'compartiment-chaussures', 2, l1_id, 'Sacs avec compartiment chaussures')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('compartiment-chaussures', 'fr', 'Sacs avec compartiment chaussures');
            PERFORM insert_category_translations('compartiment-chaussures', 'ar', 'حقائب بحجرة للأحذية');
            PERFORM insert_category_translations('compartiment-chaussures', 'en', 'Shoe compartment bags');
            PERFORM insert_category_translations('compartiment-chaussures', 'de', 'Taschen mit Schuhfach');
            PERFORM insert_category_translations('compartiment-chaussures', 'es', 'Bolsas con compartimento para zapatos');
            PERFORM insert_category_translations('compartiment-chaussures', 'it', 'Borse con scomparto scarpe');

        -- Level 1: valises-bagages
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('valises-bagages', 'valises-bagages', 1, root_id, 'Valises & Bagages')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('valises-bagages', 'fr', 'Valises & Bagages');
        PERFORM insert_category_translations('valises-bagages', 'ar', 'حقائب سفر وحقائب');
        PERFORM insert_category_translations('valises-bagages', 'en', 'Suitcases & Luggage');
        PERFORM insert_category_translations('valises-bagages', 'de', 'Koffer & Gepäck');
        PERFORM insert_category_translations('valises-bagages', 'es', 'Maletas y equipaje');
        PERFORM insert_category_translations('valises-bagages', 'it', 'Valigie & bagagli');

            -- Level 2: cabine-rigides
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cabine-rigides', 'cabine-rigides', 2, l1_id, 'Valises cabine rigides')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cabine-rigides', 'fr', 'Valises cabine rigides');
            PERFORM insert_category_translations('cabine-rigides', 'ar', 'حقائب مقصورة صلبة');
            PERFORM insert_category_translations('cabine-rigides', 'en', 'Cabin suitcases (hard)');
            PERFORM insert_category_translations('cabine-rigides', 'de', 'Handgepäckkoffer (hart)');
            PERFORM insert_category_translations('cabine-rigides', 'es', 'Maletas de cabina rígidas');
            PERFORM insert_category_translations('cabine-rigides', 'it', 'Valigie da cabina rigide');

            -- Level 2: cabine-souples
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cabine-souples', 'cabine-souples', 2, l1_id, 'Valises cabine souples')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cabine-souples', 'fr', 'Valises cabine souples');
            PERFORM insert_category_translations('cabine-souples', 'ar', 'حقائب مقصورة مرنة');
            PERFORM insert_category_translations('cabine-souples', 'en', 'Cabin suitcases (soft)');
            PERFORM insert_category_translations('cabine-souples', 'de', 'Handgepäckkoffer (weich)');
            PERFORM insert_category_translations('cabine-souples', 'es', 'Maletas de cabina blandas');
            PERFORM insert_category_translations('cabine-souples', 'it', 'Valigie da cabina morbide');

            -- Level 2: cabine-extensibles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cabine-extensibles', 'cabine-extensibles', 2, l1_id, 'Valises cabine extensibles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cabine-extensibles', 'fr', 'Valises cabine extensibles');
            PERFORM insert_category_translations('cabine-extensibles', 'ar', 'حقائب مقصورة قابلة للتوسعة');
            PERFORM insert_category_translations('cabine-extensibles', 'en', 'Expandable cabin suitcases');
            PERFORM insert_category_translations('cabine-extensibles', 'de', 'Erweiterbare Handgepäckkoffer');
            PERFORM insert_category_translations('cabine-extensibles', 'es', 'Maletas de cabina expandibles');
            PERFORM insert_category_translations('cabine-extensibles', 'it', 'Valigie da cabina espandibili');

            -- Level 2: valises-medium
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('valises-medium', 'valises-medium', 2, l1_id, 'Valises médium')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('valises-medium', 'fr', 'Valises médium');
            PERFORM insert_category_translations('valises-medium', 'ar', 'حقائب متوسطة');
            PERFORM insert_category_translations('valises-medium', 'en', 'Medium suitcases');
            PERFORM insert_category_translations('valises-medium', 'de', 'Mittlere Koffer');
            PERFORM insert_category_translations('valises-medium', 'es', 'Maletas medianas');
            PERFORM insert_category_translations('valises-medium', 'it', 'Valigie medie');

            -- Level 2: valises-grandes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('valises-grandes', 'valises-grandes', 2, l1_id, 'Valises grandes tailles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('valises-grandes', 'fr', 'Valises grandes tailles');
            PERFORM insert_category_translations('valises-grandes', 'ar', 'حقائب كبيرة');
            PERFORM insert_category_translations('valises-grandes', 'en', 'Large suitcases');
            PERFORM insert_category_translations('valises-grandes', 'de', 'Große Koffer');
            PERFORM insert_category_translations('valises-grandes', 'es', 'Maletas grandes');
            PERFORM insert_category_translations('valises-grandes', 'it', 'Valigie grandi');

            -- Level 2: valises-aluminium
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('valises-aluminium', 'valises-aluminium', 2, l1_id, 'Valises aluminium')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('valises-aluminium', 'fr', 'Valises aluminium');
            PERFORM insert_category_translations('valises-aluminium', 'ar', 'حقائب ألمنيوم');
            PERFORM insert_category_translations('valises-aluminium', 'en', 'Aluminium suitcases');
            PERFORM insert_category_translations('valises-aluminium', 'de', 'Aluminiumkoffer');
            PERFORM insert_category_translations('valises-aluminium', 'es', 'Maletas de aluminio');
            PERFORM insert_category_translations('valises-aluminium', 'it', 'Valigie in alluminio');

            -- Level 2: sets-valises
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sets-valises', 'sets-valises', 2, l1_id, 'Sets de valises')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sets-valises', 'fr', 'Sets de valises');
            PERFORM insert_category_translations('sets-valises', 'ar', 'مجموعات حقائب');
            PERFORM insert_category_translations('sets-valises', 'en', 'Luggage sets');
            PERFORM insert_category_translations('sets-valises', 'de', 'Kofferset');
            PERFORM insert_category_translations('sets-valises', 'es', 'Sets de maletas');
            PERFORM insert_category_translations('sets-valises', 'it', 'Set di valigie');

            -- Level 2: valises-enfants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('valises-enfants', 'valises-enfants', 2, l1_id, 'Valises enfants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('valises-enfants', 'fr', 'Valises enfants');
            PERFORM insert_category_translations('valises-enfants', 'ar', 'حقائب أطفال');
            PERFORM insert_category_translations('valises-enfants', 'en', 'Kids suitcases');
            PERFORM insert_category_translations('valises-enfants', 'de', 'Kinderkoffer');
            PERFORM insert_category_translations('valises-enfants', 'es', 'Maletas infantiles');
            PERFORM insert_category_translations('valises-enfants', 'it', 'Valigie per bambini');

            -- Level 2: valises-connectees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('valises-connectees', 'valises-connectees', 2, l1_id, 'Valises connectées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('valises-connectees', 'fr', 'Valises connectées');
            PERFORM insert_category_translations('valises-connectees', 'ar', 'حقائب ذكية');
            PERFORM insert_category_translations('valises-connectees', 'en', 'Smart suitcases');
            PERFORM insert_category_translations('valises-connectees', 'de', 'Smarte Koffer');
            PERFORM insert_category_translations('valises-connectees', 'es', 'Maletas inteligentes');
            PERFORM insert_category_translations('valises-connectees', 'it', 'Valigie smart');

            -- Level 2: valises-professionnelles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('valises-professionnelles', 'valises-professionnelles', 2, l1_id, 'Valises professionnelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('valises-professionnelles', 'fr', 'Valises professionnelles');
            PERFORM insert_category_translations('valises-professionnelles', 'ar', 'حقائب مهنية');
            PERFORM insert_category_translations('valises-professionnelles', 'en', 'Professional suitcases');
            PERFORM insert_category_translations('valises-professionnelles', 'de', 'Berufskoffer');
            PERFORM insert_category_translations('valises-professionnelles', 'es', 'Maletas profesionales');
            PERFORM insert_category_translations('valises-professionnelles', 'it', 'Valigie professionali');

            -- Level 2: bagages-certifies-iata
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bagages-certifies-iata', 'bagages-certifies-iata', 2, l1_id, 'Bagages certifiés IATA')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bagages-certifies-iata', 'fr', 'Bagages certifiés IATA');
            PERFORM insert_category_translations('bagages-certifies-iata', 'ar', 'أمتعة معتمدة من IATA');
            PERFORM insert_category_translations('bagages-certifies-iata', 'en', 'IATA certified luggage');
            PERFORM insert_category_translations('bagages-certifies-iata', 'de', 'IATA-zertifiziertes Gepäck');
            PERFORM insert_category_translations('bagages-certifies-iata', 'es', 'Equipaje certificado por IATA');
            PERFORM insert_category_translations('bagages-certifies-iata', 'it', 'Bagagli certificati IATA');

            -- Level 2: valises-securisees-tsa
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('valises-securisees-tsa', 'valises-securisees-tsa', 2, l1_id, 'Valises sécurisées TSA')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('valises-securisees-tsa', 'fr', 'Valises sécurisées TSA');
            PERFORM insert_category_translations('valises-securisees-tsa', 'ar', 'حقائب آمنة بنظام TSA');
            PERFORM insert_category_translations('valises-securisees-tsa', 'en', 'TSA secure suitcases');
            PERFORM insert_category_translations('valises-securisees-tsa', 'de', 'TSA-sichere Koffer');
            PERFORM insert_category_translations('valises-securisees-tsa', 'es', 'Maletas con seguridad TSA');
            PERFORM insert_category_translations('valises-securisees-tsa', 'it', 'Valigie con sicurezza TSA');

        -- Level 1: maroquinerie
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('maroquinerie', 'maroquinerie', 1, root_id, 'Maroquinerie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('maroquinerie', 'fr', 'Maroquinerie');
        PERFORM insert_category_translations('maroquinerie', 'ar', 'منتجات جلدية');
        PERFORM insert_category_translations('maroquinerie', 'en', 'Leather goods');
        PERFORM insert_category_translations('maroquinerie', 'de', 'Lederwaren');
        PERFORM insert_category_translations('maroquinerie', 'es', 'Marroquinería');
        PERFORM insert_category_translations('maroquinerie', 'it', 'Pelletteria');

            -- Level 2: portefeuilles-zippe
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('portefeuilles-zippe', 'portefeuilles-zippe', 2, l1_id, 'Portefeuilles zippé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('portefeuilles-zippe', 'fr', 'Portefeuilles zippé');
            PERFORM insert_category_translations('portefeuilles-zippe', 'ar', 'محافظ بسحّاب');
            PERFORM insert_category_translations('portefeuilles-zippe', 'en', 'Zipped wallets');
            PERFORM insert_category_translations('portefeuilles-zippe', 'de', 'Geldbörsen mit Reißverschluss');
            PERFORM insert_category_translations('portefeuilles-zippe', 'es', 'Carteras con cremallera');
            PERFORM insert_category_translations('portefeuilles-zippe', 'it', 'Portafogli con cerniera');

            -- Level 2: portefeuilles-pliable
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('portefeuilles-pliable', 'portefeuilles-pliable', 2, l1_id, 'Portefeuilles pliable')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('portefeuilles-pliable', 'fr', 'Portefeuilles pliable');
            PERFORM insert_category_translations('portefeuilles-pliable', 'ar', 'محافظ قابلة للطي');
            PERFORM insert_category_translations('portefeuilles-pliable', 'en', 'Foldable wallets');
            PERFORM insert_category_translations('portefeuilles-pliable', 'de', 'Faltbare Geldbörsen');
            PERFORM insert_category_translations('portefeuilles-pliable', 'es', 'Carteras plegables');
            PERFORM insert_category_translations('portefeuilles-pliable', 'it', 'Portafogli pieghevoli');

            -- Level 2: portefeuilles-compact
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('portefeuilles-compact', 'portefeuilles-compact', 2, l1_id, 'Portefeuilles compact')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('portefeuilles-compact', 'fr', 'Portefeuilles compact');
            PERFORM insert_category_translations('portefeuilles-compact', 'ar', 'محافظ مدمجة');
            PERFORM insert_category_translations('portefeuilles-compact', 'en', 'Compact wallets');
            PERFORM insert_category_translations('portefeuilles-compact', 'de', 'Kompakte Geldbörsen');
            PERFORM insert_category_translations('portefeuilles-compact', 'es', 'Carteras compactas');
            PERFORM insert_category_translations('portefeuilles-compact', 'it', 'Portafogli compatti');

            -- Level 2: porte-cartes-metal
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('porte-cartes-metal', 'porte-cartes-metal', 2, l1_id, 'Porte-cartes métal')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('porte-cartes-metal', 'fr', 'Porte-cartes métal');
            PERFORM insert_category_translations('porte-cartes-metal', 'ar', 'حافظات بطاقات معدنية');
            PERFORM insert_category_translations('porte-cartes-metal', 'en', 'Metal card holders');
            PERFORM insert_category_translations('porte-cartes-metal', 'de', 'Kartenetuis Metall');
            PERFORM insert_category_translations('porte-cartes-metal', 'es', 'Porta tarjetas metálico');
            PERFORM insert_category_translations('porte-cartes-metal', 'it', 'Porta carte in metallo');

            -- Level 2: porte-cartes-cuir
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('porte-cartes-cuir', 'porte-cartes-cuir', 2, l1_id, 'Porte-cartes cuir')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('porte-cartes-cuir', 'fr', 'Porte-cartes cuir');
            PERFORM insert_category_translations('porte-cartes-cuir', 'ar', 'حافظات بطاقات جلد');
            PERFORM insert_category_translations('porte-cartes-cuir', 'en', 'Leather card holders');
            PERFORM insert_category_translations('porte-cartes-cuir', 'de', 'Kartenetuis Leder');
            PERFORM insert_category_translations('porte-cartes-cuir', 'es', 'Porta tarjetas de cuero');
            PERFORM insert_category_translations('porte-cartes-cuir', 'it', 'Porta carte in pelle');

            -- Level 2: porte-cartes-rfid
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('porte-cartes-rfid', 'porte-cartes-rfid', 2, l1_id, 'Porte-cartes RFID')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('porte-cartes-rfid', 'fr', 'Porte-cartes RFID');
            PERFORM insert_category_translations('porte-cartes-rfid', 'ar', 'حافظات بطاقات RFID');
            PERFORM insert_category_translations('porte-cartes-rfid', 'en', 'RFID card holders');
            PERFORM insert_category_translations('porte-cartes-rfid', 'de', 'Kartenetuis RFID');
            PERFORM insert_category_translations('porte-cartes-rfid', 'es', 'Porta tarjetas RFID');
            PERFORM insert_category_translations('porte-cartes-rfid', 'it', 'Porta carte RFID');

            -- Level 2: porte-monnaie
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('porte-monnaie', 'porte-monnaie', 2, l1_id, 'Porte-monnaie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('porte-monnaie', 'fr', 'Porte-monnaie');
            PERFORM insert_category_translations('porte-monnaie', 'ar', 'حافظات نقود');
            PERFORM insert_category_translations('porte-monnaie', 'en', 'Coin purses');
            PERFORM insert_category_translations('porte-monnaie', 'de', 'Münzgeldbörsen');
            PERFORM insert_category_translations('porte-monnaie', 'es', 'Monederos');
            PERFORM insert_category_translations('porte-monnaie', 'it', 'Portamonete');

            -- Level 2: etuis-pochettes-passeport
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('etuis-pochettes-passeport', 'etuis-pochettes-passeport', 2, l1_id, 'Étuis passeport')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('etuis-pochettes-passeport', 'fr', 'Étuis passeport');
            PERFORM insert_category_translations('etuis-pochettes-passeport', 'ar', 'أغلفة جواز سفر');
            PERFORM insert_category_translations('etuis-pochettes-passeport', 'en', 'Passport sleeves');
            PERFORM insert_category_translations('etuis-pochettes-passeport', 'de', 'Reisepasshüllen');
            PERFORM insert_category_translations('etuis-pochettes-passeport', 'es', 'Fundas para pasaporte');
            PERFORM insert_category_translations('etuis-pochettes-passeport', 'it', 'Custodie per passaporto');

            -- Level 2: etuis-documents
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('etuis-documents', 'etuis-documents', 2, l1_id, 'Étuis documents')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('etuis-documents', 'fr', 'Étuis documents');
            PERFORM insert_category_translations('etuis-documents', 'ar', 'أغلفة مستندات');
            PERFORM insert_category_translations('etuis-documents', 'en', 'Document sleeves');
            PERFORM insert_category_translations('etuis-documents', 'de', 'Dokumentenhüllen');
            PERFORM insert_category_translations('etuis-documents', 'es', 'Fundas para documentos');
            PERFORM insert_category_translations('etuis-documents', 'it', 'Custodie per documenti');

            -- Level 2: etuis-billets
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('etuis-billets', 'etuis-billets', 2, l1_id, 'Étuis billets')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('etuis-billets', 'fr', 'Étuis billets');
            PERFORM insert_category_translations('etuis-billets', 'ar', 'أغلفة تذاكر');
            PERFORM insert_category_translations('etuis-billets', 'en', 'Ticket sleeves');
            PERFORM insert_category_translations('etuis-billets', 'de', 'Tickethüllen');
            PERFORM insert_category_translations('etuis-billets', 'es', 'Fundas para billetes');
            PERFORM insert_category_translations('etuis-billets', 'it', 'Custodie per biglietti');

            -- Level 2: mini-sacs-cuir
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mini-sacs-cuir', 'mini-sacs-cuir', 2, l1_id, 'Mini sacs cuir')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mini-sacs-cuir', 'fr', 'Mini sacs cuir');
            PERFORM insert_category_translations('mini-sacs-cuir', 'ar', 'حقائب جلد صغيرة');
            PERFORM insert_category_translations('mini-sacs-cuir', 'en', 'Mini leather bags');
            PERFORM insert_category_translations('mini-sacs-cuir', 'de', 'Mini-Ledertaschen');
            PERFORM insert_category_translations('mini-sacs-cuir', 'es', 'Mini bolsos de cuero');
            PERFORM insert_category_translations('mini-sacs-cuir', 'it', 'Mini borse in pelle');

            -- Level 2: accessoires-luxe
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-luxe', 'accessoires-luxe', 2, l1_id, 'Accessoires luxe')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('accessoires-luxe', 'fr', 'Accessoires luxe');
            PERFORM insert_category_translations('accessoires-luxe', 'ar', 'إكسسوارات فاخرة');
            PERFORM insert_category_translations('accessoires-luxe', 'en', 'Luxury accessories');
            PERFORM insert_category_translations('accessoires-luxe', 'de', 'Luxus-Accessoires');
            PERFORM insert_category_translations('accessoires-luxe', 'es', 'Accesorios de lujo');
            PERFORM insert_category_translations('accessoires-luxe', 'it', 'Accessori di lusso');

            -- Level 2: petite-maroquinerie-artisanale
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('petite-maroquinerie-artisanale', 'petite-maroquinerie-artisanale', 2, l1_id, 'Petite maroquinerie artisanale')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('petite-maroquinerie-artisanale', 'fr', 'Petite maroquinerie artisanale');
            PERFORM insert_category_translations('petite-maroquinerie-artisanale', 'ar', 'منتجات جلدية صغيرة يدوية');
            PERFORM insert_category_translations('petite-maroquinerie-artisanale', 'en', 'Artisanal small leather goods');
            PERFORM insert_category_translations('petite-maroquinerie-artisanale', 'de', 'Handgefertigte Kleinlederwaren');
            PERFORM insert_category_translations('petite-maroquinerie-artisanale', 'es', 'Pequeña marroquinería artesanal');
            PERFORM insert_category_translations('petite-maroquinerie-artisanale', 'it', 'Piccola pelletteria artigianale');

        -- Level 1: sacs-professionnels
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-professionnels', 'sacs-professionnels', 1, root_id, 'Sacs Professionnels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('sacs-professionnels', 'fr', 'Sacs Professionnels');
        PERFORM insert_category_translations('sacs-professionnels', 'ar', 'حقائب مهنية');
        PERFORM insert_category_translations('sacs-professionnels', 'en', 'Professional bags');
        PERFORM insert_category_translations('sacs-professionnels', 'de', 'Business-Taschen');
        PERFORM insert_category_translations('sacs-professionnels', 'es', 'Bolsos profesionales');
        PERFORM insert_category_translations('sacs-professionnels', 'it', 'Borse professionali');

            -- Level 2: porte-ordinateur-13
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('porte-ordinateur-13', 'porte-ordinateur-13', 2, l1_id, 'Sacs porte-ordinateur 13"')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('porte-ordinateur-13', 'fr', 'Sacs porte-ordinateur 13"');
            PERFORM insert_category_translations('porte-ordinateur-13', 'ar', 'حقائب للابتوب 13"');
            PERFORM insert_category_translations('porte-ordinateur-13', 'en', 'Laptop bags 13"');
            PERFORM insert_category_translations('porte-ordinateur-13', 'de', 'Laptoptaschen 13"');
            PERFORM insert_category_translations('porte-ordinateur-13', 'es', 'Bolsas para portátil de 13"');
            PERFORM insert_category_translations('porte-ordinateur-13', 'it', 'Borse per laptop da 13"');

            -- Level 2: porte-ordinateur-15
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('porte-ordinateur-15', 'porte-ordinateur-15', 2, l1_id, 'Sacs porte-ordinateur 15"')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('porte-ordinateur-15', 'fr', 'Sacs porte-ordinateur 15"');
            PERFORM insert_category_translations('porte-ordinateur-15', 'ar', 'حقائب للابتوب 15"');
            PERFORM insert_category_translations('porte-ordinateur-15', 'en', 'Laptop bags 15"');
            PERFORM insert_category_translations('porte-ordinateur-15', 'de', 'Laptoptaschen 15"');
            PERFORM insert_category_translations('porte-ordinateur-15', 'es', 'Bolsas para portátil de 15"');
            PERFORM insert_category_translations('porte-ordinateur-15', 'it', 'Borse per laptop da 15"');

            -- Level 2: porte-ordinateur-17
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('porte-ordinateur-17', 'porte-ordinateur-17', 2, l1_id, 'Sacs porte-ordinateur 17"')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('porte-ordinateur-17', 'fr', 'Sacs porte-ordinateur 17"');
            PERFORM insert_category_translations('porte-ordinateur-17', 'ar', 'حقائب للابتوب 17"');
            PERFORM insert_category_translations('porte-ordinateur-17', 'en', 'Laptop bags 17"');
            PERFORM insert_category_translations('porte-ordinateur-17', 'de', 'Laptoptaschen 17"');
            PERFORM insert_category_translations('porte-ordinateur-17', 'es', 'Bolsas para portátil de 17"');
            PERFORM insert_category_translations('porte-ordinateur-17', 'it', 'Borse per laptop da 17"');

            -- Level 2: sacs-business
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-business', 'sacs-business', 2, l1_id, 'Sacs business')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-business', 'fr', 'Sacs business');
            PERFORM insert_category_translations('sacs-business', 'ar', 'حقائب أعمال');
            PERFORM insert_category_translations('sacs-business', 'en', 'Business bags');
            PERFORM insert_category_translations('sacs-business', 'de', 'Business-Taschen');
            PERFORM insert_category_translations('sacs-business', 'es', 'Bolsos de negocios');
            PERFORM insert_category_translations('sacs-business', 'it', 'Borse business');

            -- Level 2: sacs-documents
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-documents', 'sacs-documents', 2, l1_id, 'Sacs documents')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-documents', 'fr', 'Sacs documents');
            PERFORM insert_category_translations('sacs-documents', 'ar', 'حقائب مستندات');
            PERFORM insert_category_translations('sacs-documents', 'en', 'Document bags');
            PERFORM insert_category_translations('sacs-documents', 'de', 'Dokumententaschen');
            PERFORM insert_category_translations('sacs-documents', 'es', 'Bolsas para documentos');
            PERFORM insert_category_translations('sacs-documents', 'it', 'Borse porta documenti');

            -- Level 2: serviettes-attaches-case
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('serviettes-attaches-case', 'serviettes-attaches-case', 2, l1_id, 'Serviettes & attachés-case')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('serviettes-attaches-case', 'fr', 'Serviettes & attachés-case');
            PERFORM insert_category_translations('serviettes-attaches-case', 'ar', 'حقائب يد و attaché-case');
            PERFORM insert_category_translations('serviettes-attaches-case', 'en', 'Briefcases & attaché cases');
            PERFORM insert_category_translations('serviettes-attaches-case', 'de', 'Aktentaschen & Attaché-Koffer');
            PERFORM insert_category_translations('serviettes-attaches-case', 'es', 'Maletines y attaché-case');
            PERFORM insert_category_translations('serviettes-attaches-case', 'it', 'Valigette e attaché-case');

            -- Level 2: sacs-infirmiers-paramedicaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-infirmiers-paramedicaux', 'sacs-infirmiers-paramedicaux', 2, l1_id, 'Sacs infirmiers/paramédicaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-infirmiers-paramedicaux', 'fr', 'Sacs infirmiers/paramédicaux');
            PERFORM insert_category_translations('sacs-infirmiers-paramedicaux', 'ar', 'حقائب تمريض/مسعفين');
            PERFORM insert_category_translations('sacs-infirmiers-paramedicaux', 'en', 'Nurse/paramedic bags');
            PERFORM insert_category_translations('sacs-infirmiers-paramedicaux', 'de', 'Krankenpflege-/Sanitätertaschen');
            PERFORM insert_category_translations('sacs-infirmiers-paramedicaux', 'es', 'Bolsos para enfermería/paramédicos');
            PERFORM insert_category_translations('sacs-infirmiers-paramedicaux', 'it', 'Borse per infermieri/paramedici');

            -- Level 2: sacs-architectes-artistes-tubes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-architectes-artistes-tubes', 'sacs-architectes-artistes-tubes', 2, l1_id, 'Sacs architectes & artistes (tubes)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-architectes-artistes-tubes', 'fr', 'Sacs architectes & artistes (tubes)');
            PERFORM insert_category_translations('sacs-architectes-artistes-tubes', 'ar', 'أنابيب حمل للمعماريين والفنانين');
            PERFORM insert_category_translations('sacs-architectes-artistes-tubes', 'en', 'Architect/artist tubes');
            PERFORM insert_category_translations('sacs-architectes-artistes-tubes', 'de', 'Architekten-/Künstler-Taschen (Rohre)');
            PERFORM insert_category_translations('sacs-architectes-artistes-tubes', 'es', 'Porta planos para arquitectos y artistas');
            PERFORM insert_category_translations('sacs-architectes-artistes-tubes', 'it', 'Borse per architetti e artisti (tubi)');

            -- Level 2: sacs-portfolios-a3-a2
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-portfolios-a3-a2', 'sacs-portfolios-a3-a2', 2, l1_id, 'Portfolios A3/A2')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-portfolios-a3-a2', 'fr', 'Portfolios A3/A2');
            PERFORM insert_category_translations('sacs-portfolios-a3-a2', 'ar', 'بورتفوليو A3/A2');
            PERFORM insert_category_translations('sacs-portfolios-a3-a2', 'en', 'Portfolios A3/A2');
            PERFORM insert_category_translations('sacs-portfolios-a3-a2', 'de', 'Portfolios A3/A2');
            PERFORM insert_category_translations('sacs-portfolios-a3-a2', 'es', 'Portafolios A3/A2');
            PERFORM insert_category_translations('sacs-portfolios-a3-a2', 'it', 'Portfolio A3/A2');

            -- Level 2: sacs-techniciens-outils
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-techniciens-outils', 'sacs-techniciens-outils', 2, l1_id, 'Sacs techniciens & outils')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-techniciens-outils', 'fr', 'Sacs techniciens & outils');
            PERFORM insert_category_translations('sacs-techniciens-outils', 'ar', 'حقائب فنيين وأدوات');
            PERFORM insert_category_translations('sacs-techniciens-outils', 'en', 'Technician & tool bags');
            PERFORM insert_category_translations('sacs-techniciens-outils', 'de', 'Techniker- & Werkzeugtaschen');
            PERFORM insert_category_translations('sacs-techniciens-outils', 'es', 'Bolsas para técnicos y herramientas');
            PERFORM insert_category_translations('sacs-techniciens-outils', 'it', 'Borse per tecnici e attrezzi');

            -- Level 2: sacs-livraison-coursiers
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-livraison-coursiers', 'sacs-livraison-coursiers', 2, l1_id, 'Sacs livraison & coursiers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-livraison-coursiers', 'fr', 'Sacs livraison & coursiers');
            PERFORM insert_category_translations('sacs-livraison-coursiers', 'ar', 'حقائب توصيل وسعاة');
            PERFORM insert_category_translations('sacs-livraison-coursiers', 'en', 'Courier & delivery bags');
            PERFORM insert_category_translations('sacs-livraison-coursiers', 'de', 'Liefer-/Kurier-Taschen');
            PERFORM insert_category_translations('sacs-livraison-coursiers', 'es', 'Bolsas para reparto y mensajería');
            PERFORM insert_category_translations('sacs-livraison-coursiers', 'it', 'Borse per consegna e corrieri');

        -- Level 1: sacs-tech-mobilite
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-tech-mobilite', 'sacs-tech-mobilite', 1, root_id, 'Sacs Tech & Mobilité')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('sacs-tech-mobilite', 'fr', 'Sacs Tech & Mobilité');
        PERFORM insert_category_translations('sacs-tech-mobilite', 'ar', 'حقائب التقنية والتنقل');
        PERFORM insert_category_translations('sacs-tech-mobilite', 'en', 'Tech & Mobility bags');
        PERFORM insert_category_translations('sacs-tech-mobilite', 'de', 'Tech & Mobilität');
        PERFORM insert_category_translations('sacs-tech-mobilite', 'es', 'Bolsos Tech y movilidad');
        PERFORM insert_category_translations('sacs-tech-mobilite', 'it', 'Borse Tech & Mobilità');

            -- Level 2: etuis-laptop
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('etuis-laptop', 'etuis-laptop', 2, l1_id, 'Étuis laptop')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('etuis-laptop', 'fr', 'Étuis laptop');
            PERFORM insert_category_translations('etuis-laptop', 'ar', 'حافظات لابتوب');
            PERFORM insert_category_translations('etuis-laptop', 'en', 'Laptop sleeves');
            PERFORM insert_category_translations('etuis-laptop', 'de', 'Laptop-Hüllen');
            PERFORM insert_category_translations('etuis-laptop', 'es', 'Fundas para portátil');
            PERFORM insert_category_translations('etuis-laptop', 'it', 'Custodie per laptop');

            -- Level 2: housses-tablettes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('housses-tablettes', 'housses-tablettes', 2, l1_id, 'Housses tablettes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('housses-tablettes', 'fr', 'Housses tablettes');
            PERFORM insert_category_translations('housses-tablettes', 'ar', 'أغلفة تابلت');
            PERFORM insert_category_translations('housses-tablettes', 'en', 'Tablet sleeves');
            PERFORM insert_category_translations('housses-tablettes', 'de', 'Tablet-Hüllen');
            PERFORM insert_category_translations('housses-tablettes', 'es', 'Fundas para tablet');
            PERFORM insert_category_translations('housses-tablettes', 'it', 'Custodie per tablet');

            -- Level 2: housses-disques-durs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('housses-disques-durs', 'housses-disques-durs', 2, l1_id, 'Housses disques durs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('housses-disques-durs', 'fr', 'Housses disques durs');
            PERFORM insert_category_translations('housses-disques-durs', 'ar', 'أغلفة أقراص صلبة');
            PERFORM insert_category_translations('housses-disques-durs', 'en', 'Hard drive cases');
            PERFORM insert_category_translations('housses-disques-durs', 'de', 'Festplatten-Hüllen');
            PERFORM insert_category_translations('housses-disques-durs', 'es', 'Fundas para discos duros');
            PERFORM insert_category_translations('housses-disques-durs', 'it', 'Custodie per dischi rigidi');

            -- Level 2: sacs-photo-reflex
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-photo-reflex', 'sacs-photo-reflex', 2, l1_id, 'Sacs photo reflex')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-photo-reflex', 'fr', 'Sacs photo reflex');
            PERFORM insert_category_translations('sacs-photo-reflex', 'ar', 'حقائب كاميرا ريفلكس');
            PERFORM insert_category_translations('sacs-photo-reflex', 'en', 'DSLR camera bags');
            PERFORM insert_category_translations('sacs-photo-reflex', 'de', 'DSLR-Kamerataschen');
            PERFORM insert_category_translations('sacs-photo-reflex', 'es', 'Bolsas para cámaras réflex');
            PERFORM insert_category_translations('sacs-photo-reflex', 'it', 'Borse per fotocamere reflex');

            -- Level 2: sacs-photo-mirrorless
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-photo-mirrorless', 'sacs-photo-mirrorless', 2, l1_id, 'Sacs photo mirrorless')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-photo-mirrorless', 'fr', 'Sacs photo mirrorless');
            PERFORM insert_category_translations('sacs-photo-mirrorless', 'ar', 'حقائب كاميرا ميرورلس');
            PERFORM insert_category_translations('sacs-photo-mirrorless', 'en', 'Mirrorless camera bags');
            PERFORM insert_category_translations('sacs-photo-mirrorless', 'de', 'Spiegellose Kamerataschen');
            PERFORM insert_category_translations('sacs-photo-mirrorless', 'es', 'Bolsas para cámaras mirrorless');
            PERFORM insert_category_translations('sacs-photo-mirrorless', 'it', 'Borse per fotocamere mirrorless');

            -- Level 2: sacs-drone
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-drone', 'sacs-drone', 2, l1_id, 'Sacs drones')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-drone', 'fr', 'Sacs drones');
            PERFORM insert_category_translations('sacs-drone', 'ar', 'حقائب درون');
            PERFORM insert_category_translations('sacs-drone', 'en', 'Drone bags');
            PERFORM insert_category_translations('sacs-drone', 'de', 'Drohnentaschen');
            PERFORM insert_category_translations('sacs-drone', 'es', 'Bolsas para drones');
            PERFORM insert_category_translations('sacs-drone', 'it', 'Borse per droni');

            -- Level 2: sacs-camera-video
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-camera-video', 'sacs-camera-video', 2, l1_id, 'Sacs caméras & accessoires vidéo')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-camera-video', 'fr', 'Sacs caméras & accessoires vidéo');
            PERFORM insert_category_translations('sacs-camera-video', 'ar', 'حقائب كاميرات وإكسسوارات فيديو');
            PERFORM insert_category_translations('sacs-camera-video', 'en', 'Video camera & accessories bags');
            PERFORM insert_category_translations('sacs-camera-video', 'de', 'Video-Kamera- & Zubehörtaschen');
            PERFORM insert_category_translations('sacs-camera-video', 'es', 'Bolsas para cámaras y accesorios de video');
            PERFORM insert_category_translations('sacs-camera-video', 'it', 'Borse per videocamere e accessori');

            -- Level 2: sacs-gamers-console
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-gamers-console', 'sacs-gamers-console', 2, l1_id, 'Sacs gamers & console')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-gamers-console', 'fr', 'Sacs gamers & console');
            PERFORM insert_category_translations('sacs-gamers-console', 'ar', 'حقائب لاعبين ووحدات ألعاب');
            PERFORM insert_category_translations('sacs-gamers-console', 'en', 'Gamer & console bags');
            PERFORM insert_category_translations('sacs-gamers-console', 'de', 'Gamer- & Konsolen-Taschen');
            PERFORM insert_category_translations('sacs-gamers-console', 'es', 'Bolsas para gamers y consolas');
            PERFORM insert_category_translations('sacs-gamers-console', 'it', 'Borse per gamer e console');

            -- Level 2: sacs-anti-choc
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-anti-choc', 'sacs-anti-choc', 2, l1_id, 'Sacs anti-choc')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-anti-choc', 'fr', 'Sacs anti-choc');
            PERFORM insert_category_translations('sacs-anti-choc', 'ar', 'حقائب مقاومة للصدمات');
            PERFORM insert_category_translations('sacs-anti-choc', 'en', 'Shockproof bags');
            PERFORM insert_category_translations('sacs-anti-choc', 'de', 'Stoßfeste Taschen');
            PERFORM insert_category_translations('sacs-anti-choc', 'es', 'Bolsas anti golpes');
            PERFORM insert_category_translations('sacs-anti-choc', 'it', 'Borse antiurto');

            -- Level 2: sacs-connectes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-connectes', 'sacs-connectes', 2, l1_id, 'Sacs connectés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-connectes', 'fr', 'Sacs connectés');
            PERFORM insert_category_translations('sacs-connectes', 'ar', 'حقائب متصلة');
            PERFORM insert_category_translations('sacs-connectes', 'en', 'Connected bags');
            PERFORM insert_category_translations('sacs-connectes', 'de', 'Vernetzte Taschen');
            PERFORM insert_category_translations('sacs-connectes', 'es', 'Bolsas conectadas');
            PERFORM insert_category_translations('sacs-connectes', 'it', 'Borse connesse');

        -- Level 1: sacs-de-sport
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-de-sport', 'sacs-de-sport', 1, root_id, 'Sacs de Sport')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('sacs-de-sport', 'fr', 'Sacs de Sport');
        PERFORM insert_category_translations('sacs-de-sport', 'ar', 'حقائب رياضية');
        PERFORM insert_category_translations('sacs-de-sport', 'en', 'Sports bags');
        PERFORM insert_category_translations('sacs-de-sport', 'de', 'Sporttaschen');
        PERFORM insert_category_translations('sacs-de-sport', 'es', 'Bolsas de deporte');
        PERFORM insert_category_translations('sacs-de-sport', 'it', 'Borse sportive');

            -- Level 2: sacs-gym
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-gym', 'sacs-gym', 2, l1_id, 'Sacs gym')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-gym', 'fr', 'Sacs gym');
            PERFORM insert_category_translations('sacs-gym', 'ar', 'حقائب صالة رياضية');
            PERFORM insert_category_translations('sacs-gym', 'en', 'Gym bags');
            PERFORM insert_category_translations('sacs-gym', 'de', 'Gym-Taschen');
            PERFORM insert_category_translations('sacs-gym', 'es', 'Bolsas de gimnasio');
            PERFORM insert_category_translations('sacs-gym', 'it', 'Borse da palestra');

            -- Level 2: sacs-fitness
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-fitness', 'sacs-fitness', 2, l1_id, 'Sacs fitness')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-fitness', 'fr', 'Sacs fitness');
            PERFORM insert_category_translations('sacs-fitness', 'ar', 'حقائب لياقة');
            PERFORM insert_category_translations('sacs-fitness', 'en', 'Fitness bags');
            PERFORM insert_category_translations('sacs-fitness', 'de', 'Fitness-Taschen');
            PERFORM insert_category_translations('sacs-fitness', 'es', 'Bolsas de fitness');
            PERFORM insert_category_translations('sacs-fitness', 'it', 'Borse fitness');

            -- Level 2: sacs-football
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-football', 'sacs-football', 2, l1_id, 'Sacs football')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-football', 'fr', 'Sacs football');
            PERFORM insert_category_translations('sacs-football', 'ar', 'حقائب كرة قدم');
            PERFORM insert_category_translations('sacs-football', 'en', 'Football bags');
            PERFORM insert_category_translations('sacs-football', 'de', 'Fußballtaschen');
            PERFORM insert_category_translations('sacs-football', 'es', 'Bolsas de fútbol');
            PERFORM insert_category_translations('sacs-football', 'it', 'Borse calcio');

            -- Level 2: sacs-arts-martiaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-arts-martiaux', 'sacs-arts-martiaux', 2, l1_id, 'Sacs arts martiaux (compartiment gants)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-arts-martiaux', 'fr', 'Sacs arts martiaux (compartiment gants)');
            PERFORM insert_category_translations('sacs-arts-martiaux', 'ar', 'حقائب فنون قتالية (حجرة للقفازات)');
            PERFORM insert_category_translations('sacs-arts-martiaux', 'en', 'Martial arts bags (glove compartment)');
            PERFORM insert_category_translations('sacs-arts-martiaux', 'de', 'Kampfsporttaschen (mit Handschuhfach)');
            PERFORM insert_category_translations('sacs-arts-martiaux', 'es', 'Bolsas de artes marciales (compartimento para guantes)');
            PERFORM insert_category_translations('sacs-arts-martiaux', 'it', 'Borse arti marziali (scomparto guanti)');

            -- Level 2: sacs-natation
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-natation', 'sacs-natation', 2, l1_id, 'Sacs natation (résistants à l’eau)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-natation', 'fr', 'Sacs natation (résistants à l’eau)');
            PERFORM insert_category_translations('sacs-natation', 'ar', 'حقائب سباحة (مقاومة للماء)');
            PERFORM insert_category_translations('sacs-natation', 'en', 'Swimming bags (water-resistant)');
            PERFORM insert_category_translations('sacs-natation', 'de', 'Schwimm-Taschen (wasserbeständig)');
            PERFORM insert_category_translations('sacs-natation', 'es', 'Bolsas de natación (resistentes al agua)');
            PERFORM insert_category_translations('sacs-natation', 'it', 'Borse nuoto (resistenti all''acqua)');

            -- Level 2: sacs-tennis-1-raquette
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-tennis-1-raquette', 'sacs-tennis-1-raquette', 2, l1_id, 'Sacs tennis 1 raquette')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-tennis-1-raquette', 'fr', 'Sacs tennis 1 raquette');
            PERFORM insert_category_translations('sacs-tennis-1-raquette', 'ar', 'حقائب تنس (1 مضرب)');
            PERFORM insert_category_translations('sacs-tennis-1-raquette', 'en', 'Tennis bags (1 racket)');
            PERFORM insert_category_translations('sacs-tennis-1-raquette', 'de', 'Tennistaschen (1 Schläger)');
            PERFORM insert_category_translations('sacs-tennis-1-raquette', 'es', 'Bolsas de tenis (1 raqueta)');
            PERFORM insert_category_translations('sacs-tennis-1-raquette', 'it', 'Borse tennis (1 racchetta)');

            -- Level 2: sacs-tennis-multi-raquettes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-tennis-multi-raquettes', 'sacs-tennis-multi-raquettes', 2, l1_id, 'Sacs tennis multi-raquettes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-tennis-multi-raquettes', 'fr', 'Sacs tennis multi-raquettes');
            PERFORM insert_category_translations('sacs-tennis-multi-raquettes', 'ar', 'حقائب تنس (عدة مضارب)');
            PERFORM insert_category_translations('sacs-tennis-multi-raquettes', 'en', 'Tennis bags (multi-rackets)');
            PERFORM insert_category_translations('sacs-tennis-multi-raquettes', 'de', 'Tennistaschen (mehrere Schläger)');
            PERFORM insert_category_translations('sacs-tennis-multi-raquettes', 'es', 'Bolsas de tenis (multi raquetas)');
            PERFORM insert_category_translations('sacs-tennis-multi-raquettes', 'it', 'Borse tennis (multi racchette)');

            -- Level 2: sacs-tactiques-militaires-sport
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-tactiques-militaires-sport', 'sacs-tactiques-militaires-sport', 2, l1_id, 'Sacs tactiques militaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-tactiques-militaires-sport', 'fr', 'Sacs tactiques militaires');
            PERFORM insert_category_translations('sacs-tactiques-militaires-sport', 'ar', 'حقائب تكتيكية عسكرية');
            PERFORM insert_category_translations('sacs-tactiques-militaires-sport', 'en', 'Tactical military bags');
            PERFORM insert_category_translations('sacs-tactiques-militaires-sport', 'de', 'Militärtaktik-Taschen');
            PERFORM insert_category_translations('sacs-tactiques-militaires-sport', 'es', 'Bolsas tácticas militares');
            PERFORM insert_category_translations('sacs-tactiques-militaires-sport', 'it', 'Borse tattiche militari');

            -- Level 2: sacs-tir-airsoft
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-tir-airsoft', 'sacs-tir-airsoft', 2, l1_id, 'Sacs de tir & airsoft')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-tir-airsoft', 'fr', 'Sacs de tir & airsoft');
            PERFORM insert_category_translations('sacs-tir-airsoft', 'ar', 'حقائب رماية و Airsoft');
            PERFORM insert_category_translations('sacs-tir-airsoft', 'en', 'Shooting & airsoft bags');
            PERFORM insert_category_translations('sacs-tir-airsoft', 'de', 'Schieß- & Airsoft-Taschen');
            PERFORM insert_category_translations('sacs-tir-airsoft', 'es', 'Bolsas de tiro y airsoft');
            PERFORM insert_category_translations('sacs-tir-airsoft', 'it', 'Borse tiro e airsoft');

        -- Level 1: sacs-enfants
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-enfants', 'sacs-enfants', 1, root_id, 'Sacs Enfants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('sacs-enfants', 'fr', 'Sacs Enfants');
        PERFORM insert_category_translations('sacs-enfants', 'ar', 'حقائب أطفال');
        PERFORM insert_category_translations('sacs-enfants', 'en', 'Kids bags');
        PERFORM insert_category_translations('sacs-enfants', 'de', 'Kinder-Taschen');
        PERFORM insert_category_translations('sacs-enfants', 'es', 'Bolsas infantiles');
        PERFORM insert_category_translations('sacs-enfants', 'it', 'Borse bambini');

            -- Level 2: sacs-a-dos-bebe
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-a-dos-bebe', 'sacs-a-dos-bebe', 2, l1_id, 'Sacs à dos bébé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-a-dos-bebe', 'fr', 'Sacs à dos bébé');
            PERFORM insert_category_translations('sacs-a-dos-bebe', 'ar', 'حقائب ظهر للرضّع');
            PERFORM insert_category_translations('sacs-a-dos-bebe', 'en', 'Baby backpacks');
            PERFORM insert_category_translations('sacs-a-dos-bebe', 'de', 'Baby-Rucksäcke');
            PERFORM insert_category_translations('sacs-a-dos-bebe', 'es', 'Mochilas para bebé');
            PERFORM insert_category_translations('sacs-a-dos-bebe', 'it', 'Zainetti per bebè');

            -- Level 2: sacs-creche
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-creche', 'sacs-creche', 2, l1_id, 'Sacs crèche')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-creche', 'fr', 'Sacs crèche');
            PERFORM insert_category_translations('sacs-creche', 'ar', 'حقائب حضانة');
            PERFORM insert_category_translations('sacs-creche', 'en', 'Nursery bags');
            PERFORM insert_category_translations('sacs-creche', 'de', 'Kita-Taschen');
            PERFORM insert_category_translations('sacs-creche', 'es', 'Bolsas de guardería');
            PERFORM insert_category_translations('sacs-creche', 'it', 'Borse asilo');

            -- Level 2: cartables
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cartables', 'cartables', 2, l1_id, 'Cartables')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cartables', 'fr', 'Cartables');
            PERFORM insert_category_translations('cartables', 'ar', 'حقائب مدرسية');
            PERFORM insert_category_translations('cartables', 'en', 'School satchels');
            PERFORM insert_category_translations('cartables', 'de', 'Schulranzen');
            PERFORM insert_category_translations('cartables', 'es', 'Carteras escolares');
            PERFORM insert_category_translations('cartables', 'it', 'Cartelle scolastiche');

            -- Level 2: sacs-a-roulettes-scolaire
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-a-roulettes-scolaire', 'sacs-a-roulettes-scolaire', 2, l1_id, 'Sacs à roulettes scolaire')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-a-roulettes-scolaire', 'fr', 'Sacs à roulettes scolaire');
            PERFORM insert_category_translations('sacs-a-roulettes-scolaire', 'ar', 'حقائب مدرسية بعجلات');
            PERFORM insert_category_translations('sacs-a-roulettes-scolaire', 'en', 'Rolling school bags');
            PERFORM insert_category_translations('sacs-a-roulettes-scolaire', 'de', 'Schul-Rolltaschen');
            PERFORM insert_category_translations('sacs-a-roulettes-scolaire', 'es', 'Mochilas escolares con ruedas');
            PERFORM insert_category_translations('sacs-a-roulettes-scolaire', 'it', 'Zaini scolastici con ruote');

            -- Level 2: sacs-a-gouter
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-a-gouter', 'sacs-a-gouter', 2, l1_id, 'Sacs à goûter')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-a-gouter', 'fr', 'Sacs à goûter');
            PERFORM insert_category_translations('sacs-a-gouter', 'ar', 'حقائب وجبة خفيفة');
            PERFORM insert_category_translations('sacs-a-gouter', 'en', 'Snack bags');
            PERFORM insert_category_translations('sacs-a-gouter', 'de', 'Snack-Taschen');
            PERFORM insert_category_translations('sacs-a-gouter', 'es', 'Bolsas para merienda');
            PERFORM insert_category_translations('sacs-a-gouter', 'it', 'Borse merenda');

            -- Level 2: sacs-enfant-licence
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-enfant-licence', 'sacs-enfant-licence', 2, l1_id, 'Sacs enfant personnage/licence')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-enfant-licence', 'fr', 'Sacs enfant personnage/licence');
            PERFORM insert_category_translations('sacs-enfant-licence', 'ar', 'حقائب أطفال بشخصيات/ترخيص');
            PERFORM insert_category_translations('sacs-enfant-licence', 'en', 'Character/licensed bags');
            PERFORM insert_category_translations('sacs-enfant-licence', 'de', 'Charakter-/Lizenz-Taschen');
            PERFORM insert_category_translations('sacs-enfant-licence', 'es', 'Bolsos infantiles de personajes/licencias');
            PERFORM insert_category_translations('sacs-enfant-licence', 'it', 'Borse bimbi personaggi/licenza');

            -- Level 2: sacs-activites
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-activites', 'sacs-activites', 2, l1_id, 'Sacs d''''activités (danse, sport)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-activites', 'fr', 'Sacs d''activités (danse, sport)');
            PERFORM insert_category_translations('sacs-activites', 'ar', 'حقائب للأنشطة (رقص، رياضة)');
            PERFORM insert_category_translations('sacs-activites', 'en', 'Activity bags (dance, sport)');
            PERFORM insert_category_translations('sacs-activites', 'de', 'Aktivitäts-Taschen (Tanz, Sport)');
            PERFORM insert_category_translations('sacs-activites', 'es', 'Bolsas de actividades (danza, deporte)');
            PERFORM insert_category_translations('sacs-activites', 'it', 'Borse attività (danza, sport)');

            -- Level 2: sacs-anti-perte
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-anti-perte', 'sacs-anti-perte', 2, l1_id, 'Sacs anti-perte')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-anti-perte', 'fr', 'Sacs anti-perte');
            PERFORM insert_category_translations('sacs-anti-perte', 'ar', 'حقائب ضد الفقدان');
            PERFORM insert_category_translations('sacs-anti-perte', 'en', 'Anti-loss bags');
            PERFORM insert_category_translations('sacs-anti-perte', 'de', 'Anti-Verlust-Taschen');
            PERFORM insert_category_translations('sacs-anti-perte', 'es', 'Bolsas anti-pérdida');
            PERFORM insert_category_translations('sacs-anti-perte', 'it', 'Borse anti-smarrimento');

        -- Level 1: sacs-specialises
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-specialises', 'sacs-specialises', 1, root_id, 'Sacs Spécialisés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('sacs-specialises', 'fr', 'Sacs Spécialisés');
        PERFORM insert_category_translations('sacs-specialises', 'ar', 'حقائب متخصصة');
        PERFORM insert_category_translations('sacs-specialises', 'en', 'Specialized bags');
        PERFORM insert_category_translations('sacs-specialises', 'de', 'Spezialtaschen');
        PERFORM insert_category_translations('sacs-specialises', 'es', 'Bolsas especializadas');
        PERFORM insert_category_translations('sacs-specialises', 'it', 'Borse specializzate');

            -- Level 2: isothermes-repas
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('isothermes-repas', 'isothermes-repas', 2, l1_id, 'Sacs isothermes repas')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('isothermes-repas', 'fr', 'Sacs isothermes repas');
            PERFORM insert_category_translations('isothermes-repas', 'ar', 'حقائب حرارية للوجبات');
            PERFORM insert_category_translations('isothermes-repas', 'en', 'Insulated lunch bags');
            PERFORM insert_category_translations('isothermes-repas', 'de', 'Isolierte Lunch-Taschen');
            PERFORM insert_category_translations('isothermes-repas', 'es', 'Bolsas isotérmicas para comida');
            PERFORM insert_category_translations('isothermes-repas', 'it', 'Borse termiche per pasti');

            -- Level 2: isothermes-pique-nique
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('isothermes-pique-nique', 'isothermes-pique-nique', 2, l1_id, 'Sacs isothermes pique-nique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('isothermes-pique-nique', 'fr', 'Sacs isothermes pique-nique');
            PERFORM insert_category_translations('isothermes-pique-nique', 'ar', 'حقائب حرارية للنزهات');
            PERFORM insert_category_translations('isothermes-pique-nique', 'en', 'Insulated picnic bags');
            PERFORM insert_category_translations('isothermes-pique-nique', 'de', 'Isolierte Picknick-Taschen');
            PERFORM insert_category_translations('isothermes-pique-nique', 'es', 'Bolsas isotérmicas para picnic');
            PERFORM insert_category_translations('isothermes-pique-nique', 'it', 'Borse termiche per picnic');

            -- Level 2: isothermes-medicaments
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('isothermes-medicaments', 'isothermes-medicaments', 2, l1_id, 'Sacs isothermes médicaments')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('isothermes-medicaments', 'fr', 'Sacs isothermes médicaments');
            PERFORM insert_category_translations('isothermes-medicaments', 'ar', 'حقائب حرارية للأدوية');
            PERFORM insert_category_translations('isothermes-medicaments', 'en', 'Insulated medical bags');
            PERFORM insert_category_translations('isothermes-medicaments', 'de', 'Isolierte Medikamenten-Taschen');
            PERFORM insert_category_translations('isothermes-medicaments', 'es', 'Bolsas isotérmicas para medicamentos');
            PERFORM insert_category_translations('isothermes-medicaments', 'it', 'Borse termiche per medicinali');

            -- Level 2: photo-video
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('photo-video', 'photo-video', 2, l1_id, 'Sacs photo & vidéo')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('photo-video', 'fr', 'Sacs photo & vidéo');
            PERFORM insert_category_translations('photo-video', 'ar', 'حقائب تصوير وفيديو');
            PERFORM insert_category_translations('photo-video', 'en', 'Photo & video bags');
            PERFORM insert_category_translations('photo-video', 'de', 'Foto- & Video-Taschen');
            PERFORM insert_category_translations('photo-video', 'es', 'Bolsas para foto y video');
            PERFORM insert_category_translations('photo-video', 'it', 'Borse foto e video');

            -- Level 2: drones
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('drones', 'drones', 2, l1_id, 'Sacs drones')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('drones', 'fr', 'Sacs drones');
            PERFORM insert_category_translations('drones', 'ar', 'حقائب درون');
            PERFORM insert_category_translations('drones', 'en', 'Drone bags');
            PERFORM insert_category_translations('drones', 'de', 'Drohnentaschen');
            PERFORM insert_category_translations('drones', 'es', 'Bolsas para drones');
            PERFORM insert_category_translations('drones', 'it', 'Borse per droni');

            -- Level 2: peche-chasse
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('peche-chasse', 'peche-chasse', 2, l1_id, 'Sacs de pêche & chasse')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('peche-chasse', 'fr', 'Sacs de pêche & chasse');
            PERFORM insert_category_translations('peche-chasse', 'ar', 'حقائب صيد وصيد الأسماك');
            PERFORM insert_category_translations('peche-chasse', 'en', 'Fishing & hunting bags');
            PERFORM insert_category_translations('peche-chasse', 'de', 'Angel- & Jagd-Taschen');
            PERFORM insert_category_translations('peche-chasse', 'es', 'Bolsas de pesca y caza');
            PERFORM insert_category_translations('peche-chasse', 'it', 'Borse pesca e caccia');

            -- Level 2: trekking-hydratation
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('trekking-hydratation', 'trekking-hydratation', 2, l1_id, 'Sacs trekking hydratation')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('trekking-hydratation', 'fr', 'Sacs trekking hydratation');
            PERFORM insert_category_translations('trekking-hydratation', 'ar', 'حقائب ترِكينغ مع ترطيب');
            PERFORM insert_category_translations('trekking-hydratation', 'en', 'Hydration trekking bags');
            PERFORM insert_category_translations('trekking-hydratation', 'de', 'Trinkrucksäcke (Trekking)');
            PERFORM insert_category_translations('trekking-hydratation', 'es', 'Mochilas de trekking con hidratación');
            PERFORM insert_category_translations('trekking-hydratation', 'it', 'Zaini trekking con idratazione');

            -- Level 2: moto-cuir
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('moto-cuir', 'moto-cuir', 2, l1_id, 'Sacs moto cuir')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('moto-cuir', 'fr', 'Sacs moto cuir');
            PERFORM insert_category_translations('moto-cuir', 'ar', 'حقائب دراجات نارية جلد');
            PERFORM insert_category_translations('moto-cuir', 'en', 'Motorcycle leather bags');
            PERFORM insert_category_translations('moto-cuir', 'de', 'Motorrad-Ledertaschen');
            PERFORM insert_category_translations('moto-cuir', 'es', 'Bolsas de moto de cuero');
            PERFORM insert_category_translations('moto-cuir', 'it', 'Borse moto in pelle');

            -- Level 2: moto-textile
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('moto-textile', 'moto-textile', 2, l1_id, 'Sacs moto textile')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('moto-textile', 'fr', 'Sacs moto textile');
            PERFORM insert_category_translations('moto-textile', 'ar', 'حقائب دراجات نارية قماش');
            PERFORM insert_category_translations('moto-textile', 'en', 'Motorcycle textile bags');
            PERFORM insert_category_translations('moto-textile', 'de', 'Motorrad-Textiltaschen');
            PERFORM insert_category_translations('moto-textile', 'es', 'Bolsas de moto de textil');
            PERFORM insert_category_translations('moto-textile', 'it', 'Borse moto in tessuto');

            -- Level 2: sacoches-velo-avant
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacoches-velo-avant', 'sacoches-velo-avant', 2, l1_id, 'Sacoches vélo avant')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacoches-velo-avant', 'fr', 'Sacoches vélo avant');
            PERFORM insert_category_translations('sacoches-velo-avant', 'ar', 'حقائب أمامية للدراجات');
            PERFORM insert_category_translations('sacoches-velo-avant', 'en', 'Front bike panniers');
            PERFORM insert_category_translations('sacoches-velo-avant', 'de', 'Fahrrad-Fronttaschen');
            PERFORM insert_category_translations('sacoches-velo-avant', 'es', 'Alforjas delanteras de bicicleta');
            PERFORM insert_category_translations('sacoches-velo-avant', 'it', 'Borse anteriori per bici');

            -- Level 2: sacoches-velo-arriere
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacoches-velo-arriere', 'sacoches-velo-arriere', 2, l1_id, 'Sacoches vélo arrière')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacoches-velo-arriere', 'fr', 'Sacoches vélo arrière');
            PERFORM insert_category_translations('sacoches-velo-arriere', 'ar', 'حقائب خلفية للدراجات');
            PERFORM insert_category_translations('sacoches-velo-arriere', 'en', 'Rear bike panniers');
            PERFORM insert_category_translations('sacoches-velo-arriere', 'de', 'Fahrrad-Hecktaschen');
            PERFORM insert_category_translations('sacoches-velo-arriere', 'es', 'Alforjas traseras de bicicleta');
            PERFORM insert_category_translations('sacoches-velo-arriere', 'it', 'Borse posteriori per bici');

            -- Level 2: sacoches-velo-cadre
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacoches-velo-cadre', 'sacoches-velo-cadre', 2, l1_id, 'Sacoches vélo cadre')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacoches-velo-cadre', 'fr', 'Sacoches vélo cadre');
            PERFORM insert_category_translations('sacoches-velo-cadre', 'ar', 'حقائب إطار للدراجات');
            PERFORM insert_category_translations('sacoches-velo-cadre', 'en', 'Frame bike bags');
            PERFORM insert_category_translations('sacoches-velo-cadre', 'de', 'Fahrrad-Rahmentaschen');
            PERFORM insert_category_translations('sacoches-velo-cadre', 'es', 'Bolsas para el cuadro de la bicicleta');
            PERFORM insert_category_translations('sacoches-velo-cadre', 'it', 'Borse da telaio per bici');

            -- Level 2: plongee
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('plongee', 'plongee', 2, l1_id, 'Sacs de plongée')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('plongee', 'fr', 'Sacs de plongée');
            PERFORM insert_category_translations('plongee', 'ar', 'حقائب غوص');
            PERFORM insert_category_translations('plongee', 'en', 'Diving bags');
            PERFORM insert_category_translations('plongee', 'de', 'Tauch-Taschen');
            PERFORM insert_category_translations('plongee', 'es', 'Bolsas de buceo');
            PERFORM insert_category_translations('plongee', 'it', 'Borse da immersione');

            -- Level 2: equipement-btp
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('equipement-btp', 'equipement-btp', 2, l1_id, 'Sacs équipement BTP')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('equipement-btp', 'fr', 'Sacs équipement BTP');
            PERFORM insert_category_translations('equipement-btp', 'ar', 'حقائب معدات البناء');
            PERFORM insert_category_translations('equipement-btp', 'en', 'Construction equipment bags');
            PERFORM insert_category_translations('equipement-btp', 'de', 'Bauausrüstung-Taschen');
            PERFORM insert_category_translations('equipement-btp', 'es', 'Bolsas para equipamiento de construcción');
            PERFORM insert_category_translations('equipement-btp', 'it', 'Borse per attrezzature edili');

            -- Level 2: instruments-musicaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('instruments-musicaux', 'instruments-musicaux', 2, l1_id, 'Sacs pour instruments musicaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('instruments-musicaux', 'fr', 'Sacs pour instruments musicaux');
            PERFORM insert_category_translations('instruments-musicaux', 'ar', 'حقائب للآلات الموسيقية');
            PERFORM insert_category_translations('instruments-musicaux', 'en', 'Musical instrument bags');
            PERFORM insert_category_translations('instruments-musicaux', 'de', 'Musikinstrument-Taschen');
            PERFORM insert_category_translations('instruments-musicaux', 'es', 'Bolsas para instrumentos musicales');
            PERFORM insert_category_translations('instruments-musicaux', 'it', 'Borse per strumenti musicali');

            -- Level 2: medicaux-urgences
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('medicaux-urgences', 'medicaux-urgences', 2, l1_id, 'Sacs médicaux/urgences')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('medicaux-urgences', 'fr', 'Sacs médicaux/urgences');
            PERFORM insert_category_translations('medicaux-urgences', 'ar', 'حقائب طبية/طوارئ');
            PERFORM insert_category_translations('medicaux-urgences', 'en', 'Medical/emergency bags');
            PERFORM insert_category_translations('medicaux-urgences', 'de', 'Medizin-/Notfall-Taschen');
            PERFORM insert_category_translations('medicaux-urgences', 'es', 'Bolsas médicas/de emergencia');
            PERFORM insert_category_translations('medicaux-urgences', 'it', 'Borse mediche/emergenza');

        -- Level 1: bagagerie-professionnelle-voyage
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bagagerie-professionnelle-voyage', 'bagagerie-professionnelle-voyage', 1, root_id, 'Bagagerie Professionnelle & Voyage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('bagagerie-professionnelle-voyage', 'fr', 'Bagagerie Professionnelle & Voyage');
        PERFORM insert_category_translations('bagagerie-professionnelle-voyage', 'ar', 'أمتعة مهنية وسفر');
        PERFORM insert_category_translations('bagagerie-professionnelle-voyage', 'en', 'Professional & Travel luggage');
        PERFORM insert_category_translations('bagagerie-professionnelle-voyage', 'de', 'Professionelles Gepäck & Reise');
        PERFORM insert_category_translations('bagagerie-professionnelle-voyage', 'es', 'Equipaje profesional y de viaje');
        PERFORM insert_category_translations('bagagerie-professionnelle-voyage', 'it', 'Bagagli professionali & viaggio');

            -- Level 2: cabine-pro
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cabine-pro', 'cabine-pro', 2, l1_id, 'Sacs cabine pro')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cabine-pro', 'fr', 'Sacs cabine pro');
            PERFORM insert_category_translations('cabine-pro', 'ar', 'حقائب مقصورة للمحترفين');
            PERFORM insert_category_translations('cabine-pro', 'en', 'Professional cabin bags');
            PERFORM insert_category_translations('cabine-pro', 'de', 'Professionelle Handgepäcktaschen');
            PERFORM insert_category_translations('cabine-pro', 'es', 'Bolsas de cabina profesionales');
            PERFORM insert_category_translations('cabine-pro', 'it', 'Borse da cabina professionali');

            -- Level 2: pilotes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pilotes', 'pilotes', 2, l1_id, 'Sacs pilotes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pilotes', 'fr', 'Sacs pilotes');
            PERFORM insert_category_translations('pilotes', 'ar', 'حقائب للطيارين');
            PERFORM insert_category_translations('pilotes', 'en', 'Pilot bags');
            PERFORM insert_category_translations('pilotes', 'de', 'Pilotentaschen');
            PERFORM insert_category_translations('pilotes', 'es', 'Bolsas de piloto');
            PERFORM insert_category_translations('pilotes', 'it', 'Borse da pilota');

            -- Level 2: trolley-medical
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('trolley-medical', 'trolley-medical', 2, l1_id, 'Trolley médical')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('trolley-medical', 'fr', 'Trolley médical');
            PERFORM insert_category_translations('trolley-medical', 'ar', 'عربة طبية');
            PERFORM insert_category_translations('trolley-medical', 'en', 'Medical trolley');
            PERFORM insert_category_translations('trolley-medical', 'de', 'Medizinischer Trolley');
            PERFORM insert_category_translations('trolley-medical', 'es', 'Carrito médico');
            PERFORM insert_category_translations('trolley-medical', 'it', 'Trolley medico');

            -- Level 2: echantillons-commerciaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('echantillons-commerciaux', 'echantillons-commerciaux', 2, l1_id, 'Bagages échantillons commerciaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('echantillons-commerciaux', 'fr', 'Bagages échantillons commerciaux');
            PERFORM insert_category_translations('echantillons-commerciaux', 'ar', 'أمتعة عينات تجارية');
            PERFORM insert_category_translations('echantillons-commerciaux', 'en', 'Sample cases (commercial)');
            PERFORM insert_category_translations('echantillons-commerciaux', 'de', 'Musterkoffer (Vertrieb)');
            PERFORM insert_category_translations('echantillons-commerciaux', 'es', 'Maletines de muestras comerciales');
            PERFORM insert_category_translations('echantillons-commerciaux', 'it', 'Valigie campioni commerciali');

            -- Level 2: trolley-cabine-organisation
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('trolley-cabine-organisation', 'trolley-cabine-organisation', 2, l1_id, 'Trolley cabine organisation multi-poches')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('trolley-cabine-organisation', 'fr', 'Trolley cabine organisation multi-poches');
            PERFORM insert_category_translations('trolley-cabine-organisation', 'ar', 'عربة مقصورة بتنظيم متعدد الجيوب');
            PERFORM insert_category_translations('trolley-cabine-organisation', 'en', 'Cabin trolley (multi-pocket)');
            PERFORM insert_category_translations('trolley-cabine-organisation', 'de', 'Kabinen-Trolley (Organisationsfächer)');
            PERFORM insert_category_translations('trolley-cabine-organisation', 'es', 'Carrito de cabina con organización multi-bolsillos');
            PERFORM insert_category_translations('trolley-cabine-organisation', 'it', 'Trolley da cabina con organizzazione multi-tasche');

            -- Level 2: triangulaires-specifiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('triangulaires-specifiques', 'triangulaires-specifiques', 2, l1_id, 'Sacs triangulaires transport spécifiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('triangulaires-specifiques', 'fr', 'Sacs triangulaires transport spécifiques');
            PERFORM insert_category_translations('triangulaires-specifiques', 'ar', 'حقائب مثلثة لنقل تخصصي');
            PERFORM insert_category_translations('triangulaires-specifiques', 'en', 'Triangular specialized bags');
            PERFORM insert_category_translations('triangulaires-specifiques', 'de', 'Dreieckige Spezialtaschen');
            PERFORM insert_category_translations('triangulaires-specifiques', 'es', 'Bolsas triangulares para transportes específicos');
            PERFORM insert_category_translations('triangulaires-specifiques', 'it', 'Borse triangolari per trasporti specifici');

        -- Level 1: housses-protections
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('housses-protections', 'housses-protections', 1, root_id, 'Housses & Protections')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('housses-protections', 'fr', 'Housses & Protections');
        PERFORM insert_category_translations('housses-protections', 'ar', 'أغطية وحماية');
        PERFORM insert_category_translations('housses-protections', 'en', 'Covers & Protection');
        PERFORM insert_category_translations('housses-protections', 'de', 'Hüllen & Schutz');
        PERFORM insert_category_translations('housses-protections', 'es', 'Fundas y protección');
        PERFORM insert_category_translations('housses-protections', 'it', 'Coperture & protezioni');

            -- Level 2: housses-valises
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('housses-valises', 'housses-valises', 2, l1_id, 'Housses valises')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('housses-valises', 'fr', 'Housses valises');
            PERFORM insert_category_translations('housses-valises', 'ar', 'أغطية حقائب');
            PERFORM insert_category_translations('housses-valises', 'en', 'Suitcase covers');
            PERFORM insert_category_translations('housses-valises', 'de', 'Kofferhüllen');
            PERFORM insert_category_translations('housses-valises', 'es', 'Fundas para maletas');
            PERFORM insert_category_translations('housses-valises', 'it', 'Coperture per valigie');

            -- Level 2: housses-vetements-costumes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('housses-vetements-costumes', 'housses-vetements-costumes', 2, l1_id, 'Housses vêtements & costumes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('housses-vetements-costumes', 'fr', 'Housses vêtements & costumes');
            PERFORM insert_category_translations('housses-vetements-costumes', 'ar', 'أغطية ملابس وبدلات');
            PERFORM insert_category_translations('housses-vetements-costumes', 'en', 'Garment & suit covers');
            PERFORM insert_category_translations('housses-vetements-costumes', 'de', 'Kleider- & Anzughüllen');
            PERFORM insert_category_translations('housses-vetements-costumes', 'es', 'Fundas para ropa y trajes');
            PERFORM insert_category_translations('housses-vetements-costumes', 'it', 'Coperture per abiti e completi');

            -- Level 2: housses-chaussures
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('housses-chaussures', 'housses-chaussures', 2, l1_id, 'Housses chaussures')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('housses-chaussures', 'fr', 'Housses chaussures');
            PERFORM insert_category_translations('housses-chaussures', 'ar', 'أغطية أحذية');
            PERFORM insert_category_translations('housses-chaussures', 'en', 'Shoe covers');
            PERFORM insert_category_translations('housses-chaussures', 'de', 'Schuhhüllen');
            PERFORM insert_category_translations('housses-chaussures', 'es', 'Fundas para zapatos');
            PERFORM insert_category_translations('housses-chaussures', 'it', 'Coperture per scarpe');

            -- Level 2: housses-sacs-a-main
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('housses-sacs-a-main', 'housses-sacs-a-main', 2, l1_id, 'Housses sacs à main')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('housses-sacs-a-main', 'fr', 'Housses sacs à main');
            PERFORM insert_category_translations('housses-sacs-a-main', 'ar', 'أغطية حقائب يد');
            PERFORM insert_category_translations('housses-sacs-a-main', 'en', 'Handbag covers');
            PERFORM insert_category_translations('housses-sacs-a-main', 'de', 'Handtaschenhüllen');
            PERFORM insert_category_translations('housses-sacs-a-main', 'es', 'Fundas para bolsos de mano');
            PERFORM insert_category_translations('housses-sacs-a-main', 'it', 'Coperture per borse a mano');

            -- Level 2: sangles-valise
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sangles-valise', 'sangles-valise', 2, l1_id, 'Sangles valise')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sangles-valise', 'fr', 'Sangles valise');
            PERFORM insert_category_translations('sangles-valise', 'ar', 'أحزمة للحقائب');
            PERFORM insert_category_translations('sangles-valise', 'en', 'Luggage straps');
            PERFORM insert_category_translations('sangles-valise', 'de', 'Koffergurte');
            PERFORM insert_category_translations('sangles-valise', 'es', 'Cintas para maleta');
            PERFORM insert_category_translations('sangles-valise', 'it', 'Cinghie per valigia');

            -- Level 2: etiquettes-bagages
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('etiquettes-bagages', 'etiquettes-bagages', 2, l1_id, 'Étiquettes bagages')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('etiquettes-bagages', 'fr', 'Étiquettes bagages');
            PERFORM insert_category_translations('etiquettes-bagages', 'ar', 'علامات الأمتعة');
            PERFORM insert_category_translations('etiquettes-bagages', 'en', 'Luggage tags');
            PERFORM insert_category_translations('etiquettes-bagages', 'de', 'Gepäckanhänger');
            PERFORM insert_category_translations('etiquettes-bagages', 'es', 'Etiquetas de equipaje');
            PERFORM insert_category_translations('etiquettes-bagages', 'it', 'Etichette bagaglio');

            -- Level 2: filets-organiseurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('filets-organiseurs', 'filets-organiseurs', 2, l1_id, 'Filets & organiseurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('filets-organiseurs', 'fr', 'Filets & organiseurs');
            PERFORM insert_category_translations('filets-organiseurs', 'ar', 'شبكات ومنظمات');
            PERFORM insert_category_translations('filets-organiseurs', 'en', 'Nets & organizers');
            PERFORM insert_category_translations('filets-organiseurs', 'de', 'Netze & Organizer');
            PERFORM insert_category_translations('filets-organiseurs', 'es', 'Redes y organizadores');
            PERFORM insert_category_translations('filets-organiseurs', 'it', 'Reti e organizzatori');

            -- Level 2: cubes-rangement
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cubes-rangement', 'cubes-rangement', 2, l1_id, 'Cubes de rangement')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cubes-rangement', 'fr', 'Cubes de rangement');
            PERFORM insert_category_translations('cubes-rangement', 'ar', 'مكعبات تنظيم');
            PERFORM insert_category_translations('cubes-rangement', 'en', 'Packing cubes');
            PERFORM insert_category_translations('cubes-rangement', 'de', 'Packwürfel');
            PERFORM insert_category_translations('cubes-rangement', 'es', 'Cubos de almacenamiento');
            PERFORM insert_category_translations('cubes-rangement', 'it', 'Cubi di organizzazione');

            -- Level 2: filets-voiture
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('filets-voiture', 'filets-voiture', 2, l1_id, 'Filets voiture')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('filets-voiture', 'fr', 'Filets voiture');
            PERFORM insert_category_translations('filets-voiture', 'ar', 'شبكات للسيارات');
            PERFORM insert_category_translations('filets-voiture', 'en', 'Car nets');
            PERFORM insert_category_translations('filets-voiture', 'de', 'Auto-Netze');
            PERFORM insert_category_translations('filets-voiture', 'es', 'Redes para coche');
            PERFORM insert_category_translations('filets-voiture', 'it', 'Reti per auto');

            -- Level 2: protections-anti-pluie
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('protections-anti-pluie', 'protections-anti-pluie', 2, l1_id, 'Protections anti-pluie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('protections-anti-pluie', 'fr', 'Protections anti-pluie');
            PERFORM insert_category_translations('protections-anti-pluie', 'ar', 'واقيات ضد المطر');
            PERFORM insert_category_translations('protections-anti-pluie', 'en', 'Rain protection');
            PERFORM insert_category_translations('protections-anti-pluie', 'de', 'Regenschutz');
            PERFORM insert_category_translations('protections-anti-pluie', 'es', 'Protecciones antilluvia');
            PERFORM insert_category_translations('protections-anti-pluie', 'it', 'Protezioni antipioggia');

        -- Level 1: accessoires-bagagerie
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-bagagerie', 'accessoires-bagagerie', 1, root_id, 'Accessoires Bagagerie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('accessoires-bagagerie', 'fr', 'Accessoires Bagagerie');
        PERFORM insert_category_translations('accessoires-bagagerie', 'ar', 'إكسسوارات الأمتعة');
        PERFORM insert_category_translations('accessoires-bagagerie', 'en', 'Luggage accessories');
        PERFORM insert_category_translations('accessoires-bagagerie', 'de', 'Gepäckzubehör');
        PERFORM insert_category_translations('accessoires-bagagerie', 'es', 'Accesorios de equipaje');
        PERFORM insert_category_translations('accessoires-bagagerie', 'it', 'Accessori bagagli');

            -- Level 2: cadenas-tsa
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cadenas-tsa', 'cadenas-tsa', 2, l1_id, 'Cadenas TSA')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cadenas-tsa', 'fr', 'Cadenas TSA');
            PERFORM insert_category_translations('cadenas-tsa', 'ar', 'أقفال TSA');
            PERFORM insert_category_translations('cadenas-tsa', 'en', 'TSA locks');
            PERFORM insert_category_translations('cadenas-tsa', 'de', 'TSA-Schlösser');
            PERFORM insert_category_translations('cadenas-tsa', 'es', 'Candados TSA');
            PERFORM insert_category_translations('cadenas-tsa', 'it', 'Lucchetti TSA');

            -- Level 2: ceintures-valise
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ceintures-valise', 'ceintures-valise', 2, l1_id, 'Ceintures valise')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ceintures-valise', 'fr', 'Ceintures valise');
            PERFORM insert_category_translations('ceintures-valise', 'ar', 'أحزمة للحقائب');
            PERFORM insert_category_translations('ceintures-valise', 'en', 'Suitcase belts');
            PERFORM insert_category_translations('ceintures-valise', 'de', 'Koffergürtel');
            PERFORM insert_category_translations('ceintures-valise', 'es', 'Cinturones para maletas');
            PERFORM insert_category_translations('ceintures-valise', 'it', 'Cinture per valigia');

            -- Level 2: porte-passeport
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('porte-passeport', 'porte-passeport', 2, l1_id, 'Porte-passeport')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('porte-passeport', 'fr', 'Porte-passeport');
            PERFORM insert_category_translations('porte-passeport', 'ar', 'حاملات جواز سفر');
            PERFORM insert_category_translations('porte-passeport', 'en', 'Passport holders');
            PERFORM insert_category_translations('porte-passeport', 'de', 'Reisepasshalter');
            PERFORM insert_category_translations('porte-passeport', 'es', 'Portapasaporte');
            PERFORM insert_category_translations('porte-passeport', 'it', 'Portapassaporto');

            -- Level 2: porte-billets
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('porte-billets', 'porte-billets', 2, l1_id, 'Porte-billets')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('porte-billets', 'fr', 'Porte-billets');
            PERFORM insert_category_translations('porte-billets', 'ar', 'حاملات تذاكر');
            PERFORM insert_category_translations('porte-billets', 'en', 'Ticket holders');
            PERFORM insert_category_translations('porte-billets', 'de', 'Tickethalter');
            PERFORM insert_category_translations('porte-billets', 'es', 'Portabilletes');
            PERFORM insert_category_translations('porte-billets', 'it', 'Portabiglietti');

            -- Level 2: porte-etiquettes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('porte-etiquettes', 'porte-etiquettes', 2, l1_id, 'Porte-étiquettes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('porte-etiquettes', 'fr', 'Porte-étiquettes');
            PERFORM insert_category_translations('porte-etiquettes', 'ar', 'حاملات بطاقات');
            PERFORM insert_category_translations('porte-etiquettes', 'en', 'Tag holders');
            PERFORM insert_category_translations('porte-etiquettes', 'de', 'Etikettenhalter');
            PERFORM insert_category_translations('porte-etiquettes', 'es', 'Portaetiquetas');
            PERFORM insert_category_translations('porte-etiquettes', 'it', 'Portaetichette');

            -- Level 2: kits-voyage-bouteilles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('kits-voyage-bouteilles', 'kits-voyage-bouteilles', 2, l1_id, 'Kits de voyage (bouteilles avion)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('kits-voyage-bouteilles', 'fr', 'Kits de voyage (bouteilles avion)');
            PERFORM insert_category_translations('kits-voyage-bouteilles', 'ar', 'مجموعات سفر (قوارير)');
            PERFORM insert_category_translations('kits-voyage-bouteilles', 'en', 'Travel kits (bottles)');
            PERFORM insert_category_translations('kits-voyage-bouteilles', 'de', 'Reisekits (Flaschen Flugzeug)');
            PERFORM insert_category_translations('kits-voyage-bouteilles', 'es', 'Kits de viaje (botellas)');
            PERFORM insert_category_translations('kits-voyage-bouteilles', 'it', 'Kit da viaggio (bottiglie)');

            -- Level 2: kits-voyage-oreillers
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('kits-voyage-oreillers', 'kits-voyage-oreillers', 2, l1_id, 'Kits de voyage (oreillers)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('kits-voyage-oreillers', 'fr', 'Kits de voyage (oreillers)');
            PERFORM insert_category_translations('kits-voyage-oreillers', 'ar', 'مجموعات سفر (وسائد)');
            PERFORM insert_category_translations('kits-voyage-oreillers', 'en', 'Travel kits (pillows)');
            PERFORM insert_category_translations('kits-voyage-oreillers', 'de', 'Reisekits (Kissen)');
            PERFORM insert_category_translations('kits-voyage-oreillers', 'es', 'Kits de viaje (almohadas)');
            PERFORM insert_category_translations('kits-voyage-oreillers', 'it', 'Kit da viaggio (cuscini)');

            -- Level 2: kits-voyage-masques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('kits-voyage-masques', 'kits-voyage-masques', 2, l1_id, 'Kits de voyage (masques sommeil)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('kits-voyage-masques', 'fr', 'Kits de voyage (masques sommeil)');
            PERFORM insert_category_translations('kits-voyage-masques', 'ar', 'مجموعات سفر (أقنعة نوم)');
            PERFORM insert_category_translations('kits-voyage-masques', 'en', 'Travel kits (sleep masks)');
            PERFORM insert_category_translations('kits-voyage-masques', 'de', 'Reisekits (Schlafmasken)');
            PERFORM insert_category_translations('kits-voyage-masques', 'es', 'Kits de viaje (antifaces de dormir)');
            PERFORM insert_category_translations('kits-voyage-masques', 'it', 'Kit da viaggio (maschere per dormire)');

            -- Level 2: organiseurs-electroniques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('organiseurs-electroniques', 'organiseurs-electroniques', 2, l1_id, 'Organiseurs électroniques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('organiseurs-electroniques', 'fr', 'Organiseurs électroniques');
            PERFORM insert_category_translations('organiseurs-electroniques', 'ar', 'منظمات إلكترونية');
            PERFORM insert_category_translations('organiseurs-electroniques', 'en', 'Electronic organizers');
            PERFORM insert_category_translations('organiseurs-electroniques', 'de', 'Elektronik-Organizer');
            PERFORM insert_category_translations('organiseurs-electroniques', 'es', 'Organizadores electrónicos');
            PERFORM insert_category_translations('organiseurs-electroniques', 'it', 'Organizer elettronici');

            -- Level 2: pese-bagage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pese-bagage', 'pese-bagage', 2, l1_id, 'Pèse-bagage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pese-bagage', 'fr', 'Pèse-bagage');
            PERFORM insert_category_translations('pese-bagage', 'ar', 'ميزان أمتعة');
            PERFORM insert_category_translations('pese-bagage', 'en', 'Luggage scale');
            PERFORM insert_category_translations('pese-bagage', 'de', 'Kofferwaage');
            PERFORM insert_category_translations('pese-bagage', 'es', 'Báscula para equipaje');
            PERFORM insert_category_translations('pese-bagage', 'it', 'Bilancia per bagagli');

            -- Level 2: sangles-renfort
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sangles-renfort', 'sangles-renfort', 2, l1_id, 'Sangles de renfort')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sangles-renfort', 'fr', 'Sangles de renfort');
            PERFORM insert_category_translations('sangles-renfort', 'ar', 'أحزمة تقوية');
            PERFORM insert_category_translations('sangles-renfort', 'en', 'Reinforcement straps');
            PERFORM insert_category_translations('sangles-renfort', 'de', 'Verstärkungsgurte');
            PERFORM insert_category_translations('sangles-renfort', 'es', 'Cintas de refuerzo');
            PERFORM insert_category_translations('sangles-renfort', 'it', 'Cinghie di rinforzo');

        -- Level 1: sacs-mode-luxe
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-mode-luxe', 'sacs-mode-luxe', 1, root_id, 'Sacs Mode & Luxe')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('sacs-mode-luxe', 'fr', 'Sacs Mode & Luxe');
        PERFORM insert_category_translations('sacs-mode-luxe', 'ar', 'حقائب موضة وفخامة');
        PERFORM insert_category_translations('sacs-mode-luxe', 'en', 'Fashion & Luxury bags');
        PERFORM insert_category_translations('sacs-mode-luxe', 'de', 'Mode & Luxus Taschen');
        PERFORM insert_category_translations('sacs-mode-luxe', 'es', 'Bolsos de moda y lujo');
        PERFORM insert_category_translations('sacs-mode-luxe', 'it', 'Borse moda & lusso');

            -- Level 2: sacs-createurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-createurs', 'sacs-createurs', 2, l1_id, 'Sacs de créateurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-createurs', 'fr', 'Sacs de créateurs');
            PERFORM insert_category_translations('sacs-createurs', 'ar', 'حقائب مصممين');
            PERFORM insert_category_translations('sacs-createurs', 'en', 'Designer bags');
            PERFORM insert_category_translations('sacs-createurs', 'de', 'Designertaschen');
            PERFORM insert_category_translations('sacs-createurs', 'es', 'Bolsos de diseñador');
            PERFORM insert_category_translations('sacs-createurs', 'it', 'Borse di designer');

            -- Level 2: edition-limitee
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('edition-limitee', 'edition-limitee', 2, l1_id, 'Sacs en édition limitée')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('edition-limitee', 'fr', 'Sacs en édition limitée');
            PERFORM insert_category_translations('edition-limitee', 'ar', 'حقائب بإصدار محدود');
            PERFORM insert_category_translations('edition-limitee', 'en', 'Limited edition bags');
            PERFORM insert_category_translations('edition-limitee', 'de', 'Limitierte Edition');
            PERFORM insert_category_translations('edition-limitee', 'es', 'Bolsos de edición limitada');
            PERFORM insert_category_translations('edition-limitee', 'it', 'Borse in edizione limitata');

            -- Level 2: haute-couture
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('haute-couture', 'haute-couture', 2, l1_id, 'Sacs haute couture')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('haute-couture', 'fr', 'Sacs haute couture');
            PERFORM insert_category_translations('haute-couture', 'ar', 'حقائب هوت كوتور');
            PERFORM insert_category_translations('haute-couture', 'en', 'Haute couture bags');
            PERFORM insert_category_translations('haute-couture', 'de', 'Haute Couture Taschen');
            PERFORM insert_category_translations('haute-couture', 'es', 'Bolsos de alta costura');
            PERFORM insert_category_translations('haute-couture', 'it', 'Borse haute couture');

            -- Level 2: vintage-certifies
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vintage-certifies', 'vintage-certifies', 2, l1_id, 'Sacs vintage certifiés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('vintage-certifies', 'fr', 'Sacs vintage certifiés');
            PERFORM insert_category_translations('vintage-certifies', 'ar', 'حقائب عتيقة معتمدة');
            PERFORM insert_category_translations('vintage-certifies', 'en', 'Certified vintage bags');
            PERFORM insert_category_translations('vintage-certifies', 'de', 'Zertifizierte Vintage-Taschen');
            PERFORM insert_category_translations('vintage-certifies', 'es', 'Bolsos vintage certificados');
            PERFORM insert_category_translations('vintage-certifies', 'it', 'Borse vintage certificate');

            -- Level 2: collection-dior
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('collection-dior', 'collection-dior', 2, l1_id, 'Sacs collection Dior')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('collection-dior', 'fr', 'Sacs collection Dior');
            PERFORM insert_category_translations('collection-dior', 'ar', 'مجموعة ديور');
            PERFORM insert_category_translations('collection-dior', 'en', 'Dior collection');
            PERFORM insert_category_translations('collection-dior', 'de', 'Dior-Kollektion');
            PERFORM insert_category_translations('collection-dior', 'es', 'Colección Dior');
            PERFORM insert_category_translations('collection-dior', 'it', 'Collezione Dior');

            -- Level 2: collection-chanel
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('collection-chanel', 'collection-chanel', 2, l1_id, 'Sacs collection Chanel')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('collection-chanel', 'fr', 'Sacs collection Chanel');
            PERFORM insert_category_translations('collection-chanel', 'ar', 'مجموعة شانيل');
            PERFORM insert_category_translations('collection-chanel', 'en', 'Chanel collection');
            PERFORM insert_category_translations('collection-chanel', 'de', 'Chanel-Kollektion');
            PERFORM insert_category_translations('collection-chanel', 'es', 'Colección Chanel');
            PERFORM insert_category_translations('collection-chanel', 'it', 'Collezione Chanel');

            -- Level 2: collection-lv
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('collection-lv', 'collection-lv', 2, l1_id, 'Sacs collection LV')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('collection-lv', 'fr', 'Sacs collection LV');
            PERFORM insert_category_translations('collection-lv', 'ar', 'مجموعة لويس فويتون');
            PERFORM insert_category_translations('collection-lv', 'en', 'LV collection');
            PERFORM insert_category_translations('collection-lv', 'de', 'LV-Kollektion');
            PERFORM insert_category_translations('collection-lv', 'es', 'Colección LV');
            PERFORM insert_category_translations('collection-lv', 'it', 'Collezione LV');

            -- Level 2: collection-ysl
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('collection-ysl', 'collection-ysl', 2, l1_id, 'Sacs collection YSL')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('collection-ysl', 'fr', 'Sacs collection YSL');
            PERFORM insert_category_translations('collection-ysl', 'ar', 'مجموعة إيف سان لوران');
            PERFORM insert_category_translations('collection-ysl', 'en', 'YSL collection');
            PERFORM insert_category_translations('collection-ysl', 'de', 'YSL-Kollektion');
            PERFORM insert_category_translations('collection-ysl', 'es', 'Colección YSL');
            PERFORM insert_category_translations('collection-ysl', 'it', 'Collezione YSL');

            -- Level 2: expertise-authentification
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('expertise-authentification', 'expertise-authentification', 2, l1_id, 'Expertise & authentification')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('expertise-authentification', 'fr', 'Expertise & authentification');
            PERFORM insert_category_translations('expertise-authentification', 'ar', 'خبرة وتوثيق');
            PERFORM insert_category_translations('expertise-authentification', 'en', 'Expertise & authentication');
            PERFORM insert_category_translations('expertise-authentification', 'de', 'Expertise & Authentifizierung');
            PERFORM insert_category_translations('expertise-authentification', 'es', 'Peritaje y autenticación');
            PERFORM insert_category_translations('expertise-authentification', 'it', 'Perizia e autenticazione');

        -- Level 1: sacs-artisanaux-locaux
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-artisanaux-locaux', 'sacs-artisanaux-locaux', 1, root_id, 'Sacs Artisanaux & Locaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('sacs-artisanaux-locaux', 'fr', 'Sacs Artisanaux & Locaux');
        PERFORM insert_category_translations('sacs-artisanaux-locaux', 'ar', 'حقائب حرفية ومحلية');
        PERFORM insert_category_translations('sacs-artisanaux-locaux', 'en', 'Artisanal & Local bags');
        PERFORM insert_category_translations('sacs-artisanaux-locaux', 'de', 'Handwerk & Lokal');
        PERFORM insert_category_translations('sacs-artisanaux-locaux', 'es', 'Bolsos artesanales y locales');
        PERFORM insert_category_translations('sacs-artisanaux-locaux', 'it', 'Borse artigianali & locali');

            -- Level 2: cuir-artisanal
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cuir-artisanal', 'cuir-artisanal', 2, l1_id, 'Sacs en cuir artisanal')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cuir-artisanal', 'fr', 'Sacs en cuir artisanal');
            PERFORM insert_category_translations('cuir-artisanal', 'ar', 'حقائب جلد حرفية');
            PERFORM insert_category_translations('cuir-artisanal', 'en', 'Artisanal leather bags');
            PERFORM insert_category_translations('cuir-artisanal', 'de', 'Handgefertigte Ledertaschen');
            PERFORM insert_category_translations('cuir-artisanal', 'es', 'Bolsos de cuero artesanal');
            PERFORM insert_category_translations('cuir-artisanal', 'it', 'Borse in pelle artigianale');

            -- Level 2: sacs-tresses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-tresses', 'sacs-tresses', 2, l1_id, 'Sacs tressés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-tresses', 'fr', 'Sacs tressés');
            PERFORM insert_category_translations('sacs-tresses', 'ar', 'حقائب منسوجة');
            PERFORM insert_category_translations('sacs-tresses', 'en', 'Woven bags');
            PERFORM insert_category_translations('sacs-tresses', 'de', 'Geflochtene Taschen');
            PERFORM insert_category_translations('sacs-tresses', 'es', 'Bolsos trenzados');
            PERFORM insert_category_translations('sacs-tresses', 'it', 'Borse intrecciate');

            -- Level 2: sacs-berberes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-berberes', 'sacs-berberes', 2, l1_id, 'Sacs berbères')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-berberes', 'fr', 'Sacs berbères');
            PERFORM insert_category_translations('sacs-berberes', 'ar', 'حقائب بربرية');
            PERFORM insert_category_translations('sacs-berberes', 'en', 'Berber bags');
            PERFORM insert_category_translations('sacs-berberes', 'de', 'Berber-Taschen');
            PERFORM insert_category_translations('sacs-berberes', 'es', 'Bolsos bereberes');
            PERFORM insert_category_translations('sacs-berberes', 'it', 'Borse berbere');

            -- Level 2: sacs-traditionnels
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-traditionnels', 'sacs-traditionnels', 2, l1_id, 'Sacs traditionnels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-traditionnels', 'fr', 'Sacs traditionnels');
            PERFORM insert_category_translations('sacs-traditionnels', 'ar', 'حقائب تقليدية');
            PERFORM insert_category_translations('sacs-traditionnels', 'en', 'Traditional bags');
            PERFORM insert_category_translations('sacs-traditionnels', 'de', 'Traditionelle Taschen');
            PERFORM insert_category_translations('sacs-traditionnels', 'es', 'Bolsos tradicionales');
            PERFORM insert_category_translations('sacs-traditionnels', 'it', 'Borse tradizionali');

            -- Level 2: sacs-faits-main
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sacs-faits-main', 'sacs-faits-main', 2, l1_id, 'Sacs faits main')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sacs-faits-main', 'fr', 'Sacs faits main');
            PERFORM insert_category_translations('sacs-faits-main', 'ar', 'حقائب مصنوعة يدويًا');
            PERFORM insert_category_translations('sacs-faits-main', 'en', 'Handcrafted bags');
            PERFORM insert_category_translations('sacs-faits-main', 'de', 'Handgemachte Taschen');
            PERFORM insert_category_translations('sacs-faits-main', 'es', 'Bolsos hechos a mano');
            PERFORM insert_category_translations('sacs-faits-main', 'it', 'Borse fatte a mano');

            -- Level 2: creations-locales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('creations-locales', 'creations-locales', 2, l1_id, 'Créations locales & pièces uniques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('creations-locales', 'fr', 'Créations locales & pièces uniques');
            PERFORM insert_category_translations('creations-locales', 'ar', 'إبداعات محلية وقطع فريدة');
            PERFORM insert_category_translations('creations-locales', 'en', 'Local creations & unique pieces');
            PERFORM insert_category_translations('creations-locales', 'de', 'Lokale Kreationen & Unikate');
            PERFORM insert_category_translations('creations-locales', 'es', 'Creaciones locales y piezas únicas');
            PERFORM insert_category_translations('creations-locales', 'it', 'Creazioni locali e pezzi unici');

        -- Level 1: materiaux-fabrication
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('materiaux-fabrication', 'materiaux-fabrication', 1, root_id, 'Matériaux & Types de fabrication')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('materiaux-fabrication', 'fr', 'Matériaux & Types de fabrication');
        PERFORM insert_category_translations('materiaux-fabrication', 'ar', 'مواد وتصنيع');
        PERFORM insert_category_translations('materiaux-fabrication', 'en', 'Materials & Manufacturing');
        PERFORM insert_category_translations('materiaux-fabrication', 'de', 'Materialien & Herstellung');
        PERFORM insert_category_translations('materiaux-fabrication', 'es', 'Materiales y fabricación');
        PERFORM insert_category_translations('materiaux-fabrication', 'it', 'Materiali & fabbricazione');

            -- Level 2: cuir-veritable
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cuir-veritable', 'cuir-veritable', 2, l1_id, 'Cuir véritable')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cuir-veritable', 'fr', 'Cuir véritable');
            PERFORM insert_category_translations('cuir-veritable', 'ar', 'جلد طبيعي');
            PERFORM insert_category_translations('cuir-veritable', 'en', 'Genuine leather');
            PERFORM insert_category_translations('cuir-veritable', 'de', 'Echtleder');
            PERFORM insert_category_translations('cuir-veritable', 'es', 'Cuero auténtico');
            PERFORM insert_category_translations('cuir-veritable', 'it', 'Vera pelle');

            -- Level 2: cuir-vegan
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cuir-vegan', 'cuir-vegan', 2, l1_id, 'Cuir vegan')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cuir-vegan', 'fr', 'Cuir vegan');
            PERFORM insert_category_translations('cuir-vegan', 'ar', 'جلد نباتي');
            PERFORM insert_category_translations('cuir-vegan', 'en', 'Vegan leather');
            PERFORM insert_category_translations('cuir-vegan', 'de', 'Veganes Leder');
            PERFORM insert_category_translations('cuir-vegan', 'es', 'Cuero vegano');
            PERFORM insert_category_translations('cuir-vegan', 'it', 'Pelle vegana');

            -- Level 2: cuir-recycle
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cuir-recycle', 'cuir-recycle', 2, l1_id, 'Cuir recyclé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cuir-recycle', 'fr', 'Cuir recyclé');
            PERFORM insert_category_translations('cuir-recycle', 'ar', 'جلد معاد تدويره');
            PERFORM insert_category_translations('cuir-recycle', 'en', 'Recycled leather');
            PERFORM insert_category_translations('cuir-recycle', 'de', 'Recyceltes Leder');
            PERFORM insert_category_translations('cuir-recycle', 'es', 'Cuero reciclado');
            PERFORM insert_category_translations('cuir-recycle', 'it', 'Pelle riciclata');

            -- Level 2: nylon
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('nylon', 'nylon', 2, l1_id, 'Nylon')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('nylon', 'fr', 'Nylon');
            PERFORM insert_category_translations('nylon', 'ar', 'نايلون');
            PERFORM insert_category_translations('nylon', 'en', 'Nylon');
            PERFORM insert_category_translations('nylon', 'de', 'Nylon');
            PERFORM insert_category_translations('nylon', 'es', 'Nylon');
            PERFORM insert_category_translations('nylon', 'it', 'Nylon');

            -- Level 2: polyester
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('polyester', 'polyester', 2, l1_id, 'Polyester')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('polyester', 'fr', 'Polyester');
            PERFORM insert_category_translations('polyester', 'ar', 'بوليستر');
            PERFORM insert_category_translations('polyester', 'en', 'Polyester');
            PERFORM insert_category_translations('polyester', 'de', 'Polyester');
            PERFORM insert_category_translations('polyester', 'es', 'Poliéster');
            PERFORM insert_category_translations('polyester', 'it', 'Poliestere');

            -- Level 2: toile
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('toile', 'toile', 2, l1_id, 'Toile')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('toile', 'fr', 'Toile');
            PERFORM insert_category_translations('toile', 'ar', 'قماش');
            PERFORM insert_category_translations('toile', 'en', 'Canvas');
            PERFORM insert_category_translations('toile', 'de', 'Canvas');
            PERFORM insert_category_translations('toile', 'es', 'Lona');
            PERFORM insert_category_translations('toile', 'it', 'Tela');

            -- Level 2: canevas
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('canevas', 'canevas', 2, l1_id, 'Canevas')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('canevas', 'fr', 'Canevas');
            PERFORM insert_category_translations('canevas', 'ar', 'كانفاس');
            PERFORM insert_category_translations('canevas', 'en', 'Canvas weave');
            PERFORM insert_category_translations('canevas', 'de', 'Canvas-Gewebe');
            PERFORM insert_category_translations('canevas', 'es', 'Tejido de lona');
            PERFORM insert_category_translations('canevas', 'it', 'Tessuto canvas');

            -- Level 2: abs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('abs', 'abs', 2, l1_id, 'ABS')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('abs', 'fr', 'ABS');
            PERFORM insert_category_translations('abs', 'ar', 'ABS');
            PERFORM insert_category_translations('abs', 'en', 'ABS');
            PERFORM insert_category_translations('abs', 'de', 'ABS');
            PERFORM insert_category_translations('abs', 'es', 'ABS');
            PERFORM insert_category_translations('abs', 'it', 'ABS');

            -- Level 2: polycarbonate
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('polycarbonate', 'polycarbonate', 2, l1_id, 'Polycarbonate')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('polycarbonate', 'fr', 'Polycarbonate');
            PERFORM insert_category_translations('polycarbonate', 'ar', 'بوليكربونات');
            PERFORM insert_category_translations('polycarbonate', 'en', 'Polycarbonate');
            PERFORM insert_category_translations('polycarbonate', 'de', 'Polycarbonat');
            PERFORM insert_category_translations('polycarbonate', 'es', 'Policarbonato');
            PERFORM insert_category_translations('polycarbonate', 'it', 'Policarbonato');

            -- Level 2: aluminium
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('aluminium', 'aluminium', 2, l1_id, 'Aluminium')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('aluminium', 'fr', 'Aluminium');
            PERFORM insert_category_translations('aluminium', 'ar', 'ألمنيوم');
            PERFORM insert_category_translations('aluminium', 'en', 'Aluminium');
            PERFORM insert_category_translations('aluminium', 'de', 'Aluminium');
            PERFORM insert_category_translations('aluminium', 'es', 'Aluminio');
            PERFORM insert_category_translations('aluminium', 'it', 'Alluminio');

            -- Level 2: paille-fibres-naturelles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('paille-fibres-naturelles', 'paille-fibres-naturelles', 2, l1_id, 'Paille & fibres naturelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('paille-fibres-naturelles', 'fr', 'Paille & fibres naturelles');
            PERFORM insert_category_translations('paille-fibres-naturelles', 'ar', 'قش وألياف طبيعية');
            PERFORM insert_category_translations('paille-fibres-naturelles', 'en', 'Straw & natural fibers');
            PERFORM insert_category_translations('paille-fibres-naturelles', 'de', 'Stroh & Naturfasern');
            PERFORM insert_category_translations('paille-fibres-naturelles', 'es', 'Paja y fibras naturales');
            PERFORM insert_category_translations('paille-fibres-naturelles', 'it', 'Paglia e fibre naturali');

            -- Level 2: waterproof-impermeables
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('waterproof-impermeables', 'waterproof-impermeables', 2, l1_id, 'Waterproof & imperméables')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('waterproof-impermeables', 'fr', 'Waterproof & imperméables');
            PERFORM insert_category_translations('waterproof-impermeables', 'ar', 'مقاوم للماء ومضاد للمطر');
            PERFORM insert_category_translations('waterproof-impermeables', 'en', 'Waterproof & water-resistant');
            PERFORM insert_category_translations('waterproof-impermeables', 'de', 'Wasserdicht & wasserabweisend');
            PERFORM insert_category_translations('waterproof-impermeables', 'es', 'Impermeables y resistentes al agua');
            PERFORM insert_category_translations('waterproof-impermeables', 'it', 'Impermeabili e idrorepellenti');

            -- Level 2: anti-dechirure
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('anti-dechirure', 'anti-dechirure', 2, l1_id, 'Anti-déchirure')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('anti-dechirure', 'fr', 'Anti-déchirure');
            PERFORM insert_category_translations('anti-dechirure', 'ar', 'مضاد للتمزق');
            PERFORM insert_category_translations('anti-dechirure', 'en', 'Ripstop');
            PERFORM insert_category_translations('anti-dechirure', 'de', 'Reißfest');
            PERFORM insert_category_translations('anti-dechirure', 'es', 'Antidesgarro');
            PERFORM insert_category_translations('anti-dechirure', 'it', 'Antistrappo');

            -- Level 2: resistants-aux-chocs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('resistants-aux-chocs', 'resistants-aux-chocs', 2, l1_id, 'Résistants aux chocs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('resistants-aux-chocs', 'fr', 'Résistants aux chocs');
            PERFORM insert_category_translations('resistants-aux-chocs', 'ar', 'مقاوم للصدمات');
            PERFORM insert_category_translations('resistants-aux-chocs', 'en', 'Shock-resistant');
            PERFORM insert_category_translations('resistants-aux-chocs', 'de', 'Stoßfest');
            PERFORM insert_category_translations('resistants-aux-chocs', 'es', 'Resistentes a los golpes');
            PERFORM insert_category_translations('resistants-aux-chocs', 'it', 'Resistenti agli urti');

        -- Level 1: segments-usages
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('segments-usages', 'segments-usages', 1, root_id, 'Segments & Usages')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('segments-usages', 'fr', 'Segments & Usages');
        PERFORM insert_category_translations('segments-usages', 'ar', 'الفئات والاستخدامات');
        PERFORM insert_category_translations('segments-usages', 'en', 'Segments & Uses');
        PERFORM insert_category_translations('segments-usages', 'de', 'Segmente & Nutzung');
        PERFORM insert_category_translations('segments-usages', 'es', 'Segmentos y usos');
        PERFORM insert_category_translations('segments-usages', 'it', 'Segmenti & usi');

            -- Level 2: voyage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('voyage', 'voyage', 2, l1_id, 'Voyage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('voyage', 'fr', 'Voyage');
            PERFORM insert_category_translations('voyage', 'ar', 'سفر');
            PERFORM insert_category_translations('voyage', 'en', 'Travel');
            PERFORM insert_category_translations('voyage', 'de', 'Reise');
            PERFORM insert_category_translations('voyage', 'es', 'Viaje');
            PERFORM insert_category_translations('voyage', 'it', 'Viaggio');

            -- Level 2: quotidien
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('quotidien', 'quotidien', 2, l1_id, 'Quotidien')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('quotidien', 'fr', 'Quotidien');
            PERFORM insert_category_translations('quotidien', 'ar', 'يومي');
            PERFORM insert_category_translations('quotidien', 'en', 'Daily');
            PERFORM insert_category_translations('quotidien', 'de', 'Alltag');
            PERFORM insert_category_translations('quotidien', 'es', 'Diario');
            PERFORM insert_category_translations('quotidien', 'it', 'Quotidiano');

            -- Level 2: etude-scolaire
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('etude-scolaire', 'etude-scolaire', 2, l1_id, 'Étude/scolaire')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('etude-scolaire', 'fr', 'Étude/scolaire');
            PERFORM insert_category_translations('etude-scolaire', 'ar', 'دراسة/مدرسة');
            PERFORM insert_category_translations('etude-scolaire', 'en', 'Study/school');
            PERFORM insert_category_translations('etude-scolaire', 'de', 'Studium/Schule');
            PERFORM insert_category_translations('etude-scolaire', 'es', 'Estudio/escolar');
            PERFORM insert_category_translations('etude-scolaire', 'it', 'Studio/scuola');

            -- Level 2: travail-business
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('travail-business', 'travail-business', 2, l1_id, 'Travail & Business')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('travail-business', 'fr', 'Travail & Business');
            PERFORM insert_category_translations('travail-business', 'ar', 'عمل وأعمال');
            PERFORM insert_category_translations('travail-business', 'en', 'Work & Business');
            PERFORM insert_category_translations('travail-business', 'de', 'Arbeit & Business');
            PERFORM insert_category_translations('travail-business', 'es', 'Trabajo y negocios');
            PERFORM insert_category_translations('travail-business', 'it', 'Lavoro & Business');

            -- Level 2: sport-usage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sport-usage', 'sport-usage', 2, l1_id, 'Sport')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sport-usage', 'fr', 'Sport');
            PERFORM insert_category_translations('sport-usage', 'ar', 'رياضة');
            PERFORM insert_category_translations('sport-usage', 'en', 'Sport');
            PERFORM insert_category_translations('sport-usage', 'de', 'Sport');
            PERFORM insert_category_translations('sport-usage', 'es', 'Deporte');
            PERFORM insert_category_translations('sport-usage', 'it', 'Sport');

            -- Level 2: outdoor
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('outdoor', 'outdoor', 2, l1_id, 'Outdoor')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('outdoor', 'fr', 'Outdoor');
            PERFORM insert_category_translations('outdoor', 'ar', 'هواء الطلق');
            PERFORM insert_category_translations('outdoor', 'en', 'Outdoor');
            PERFORM insert_category_translations('outdoor', 'de', 'Outdoor');
            PERFORM insert_category_translations('outdoor', 'es', 'Exterior');
            PERFORM insert_category_translations('outdoor', 'it', 'Outdoor');

            -- Level 2: professionnels
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('professionnels', 'professionnels', 2, l1_id, 'Professionnels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('professionnels', 'fr', 'Professionnels');
            PERFORM insert_category_translations('professionnels', 'ar', 'مهني');
            PERFORM insert_category_translations('professionnels', 'en', 'Professional');
            PERFORM insert_category_translations('professionnels', 'de', 'Professionell');
            PERFORM insert_category_translations('professionnels', 'es', 'Profesional');
            PERFORM insert_category_translations('professionnels', 'it', 'Professionale');

            -- Level 2: luxe
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('luxe', 'luxe', 2, l1_id, 'Luxe')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('luxe', 'fr', 'Luxe');
            PERFORM insert_category_translations('luxe', 'ar', 'فخامة');
            PERFORM insert_category_translations('luxe', 'en', 'Luxury');
            PERFORM insert_category_translations('luxe', 'de', 'Luxus');
            PERFORM insert_category_translations('luxe', 'es', 'Lujo');
            PERFORM insert_category_translations('luxe', 'it', 'Lusso');

            -- Level 2: artisanal
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('artisanal', 'artisanal', 2, l1_id, 'Artisanal')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('artisanal', 'fr', 'Artisanal');
            PERFORM insert_category_translations('artisanal', 'ar', 'حرفي');
            PERFORM insert_category_translations('artisanal', 'en', 'Artisanal');
            PERFORM insert_category_translations('artisanal', 'de', 'Handwerklich');
            PERFORM insert_category_translations('artisanal', 'es', 'Artesanal');
            PERFORM insert_category_translations('artisanal', 'it', 'Artigianale');

            -- Level 2: casual
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('casual', 'casual', 2, l1_id, 'Casual')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('casual', 'fr', 'Casual');
            PERFORM insert_category_translations('casual', 'ar', 'كاجوال');
            PERFORM insert_category_translations('casual', 'en', 'Casual');
            PERFORM insert_category_translations('casual', 'de', 'Casual');
            PERFORM insert_category_translations('casual', 'es', 'Casual');
            PERFORM insert_category_translations('casual', 'it', 'Casual');

            -- Level 2: urban-tech
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('urban-tech', 'urban-tech', 2, l1_id, 'Urban tech')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('urban-tech', 'fr', 'Urban tech');
            PERFORM insert_category_translations('urban-tech', 'ar', 'تقنية حضرية');
            PERFORM insert_category_translations('urban-tech', 'en', 'Urban tech');
            PERFORM insert_category_translations('urban-tech', 'de', 'Urban Tech');
            PERFORM insert_category_translations('urban-tech', 'es', 'Tecnología urbana');
            PERFORM insert_category_translations('urban-tech', 'it', 'Tecnologia urbana');
END $$;