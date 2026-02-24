-- Migration: Santé & Beauté (Generated Recursive)
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

    -- Level 0: sante-beaute
    INSERT INTO categories (id, slug, level, name)
    VALUES ('sante-beaute', 'sante-beaute', 0, 'Santé & Beauté')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 0, name = EXCLUDED.name
    RETURNING id INTO root_id;
    PERFORM insert_category_translations('sante-beaute', 'fr', 'Santé & Beauté');
    PERFORM insert_category_translations('sante-beaute', 'ar', 'الصحة والجمال');
    PERFORM insert_category_translations('sante-beaute', 'en', 'Health & Beauty');
    PERFORM insert_category_translations('sante-beaute', 'de', 'Gesundheit & Schönheit');
    PERFORM insert_category_translations('sante-beaute', 'es', 'Salud y Belleza');
    PERFORM insert_category_translations('sante-beaute', 'it', 'Salute & Bellezza');

        -- Level 1: soins-visage
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soins-visage', 'soins-visage', 1, root_id, 'Soins du visage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('soins-visage', 'fr', 'Soins du visage');
        PERFORM insert_category_translations('soins-visage', 'ar', 'العناية بالوجه');
        PERFORM insert_category_translations('soins-visage', 'en', 'Face Care');
        PERFORM insert_category_translations('soins-visage', 'de', 'Gesichtspflege');
        PERFORM insert_category_translations('soins-visage', 'es', 'Cuidado del rostro');
        PERFORM insert_category_translations('soins-visage', 'it', 'Cura del viso');

            -- Level 2: cremes-hydratantes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cremes-hydratantes', 'cremes-hydratantes', 2, l1_id, 'Crèmes hydratantes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cremes-hydratantes', 'fr', 'Crèmes hydratantes');
            PERFORM insert_category_translations('cremes-hydratantes', 'ar', 'كريمات مرطبة');
            PERFORM insert_category_translations('cremes-hydratantes', 'en', 'Moisturizing Creams');
            PERFORM insert_category_translations('cremes-hydratantes', 'de', 'Feuchtigkeitscremes');
            PERFORM insert_category_translations('cremes-hydratantes', 'es', 'Cremas hidratantes');
            PERFORM insert_category_translations('cremes-hydratantes', 'it', 'Creme idratanti');

            -- Level 2: cremes-anti-age
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cremes-anti-age', 'cremes-anti-age', 2, l1_id, 'Crèmes anti-âge')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cremes-anti-age', 'fr', 'Crèmes anti-âge');
            PERFORM insert_category_translations('cremes-anti-age', 'ar', 'كريمات مضادة للشيخوخة');
            PERFORM insert_category_translations('cremes-anti-age', 'en', 'Anti-Aging Creams');
            PERFORM insert_category_translations('cremes-anti-age', 'de', 'Anti-Aging-Cremes');
            PERFORM insert_category_translations('cremes-anti-age', 'es', 'Cremas anti-edad');
            PERFORM insert_category_translations('cremes-anti-age', 'it', 'Creme anti-età');

            -- Level 2: serums
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('serums', 'serums', 2, l1_id, 'Sérums')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('serums', 'fr', 'Sérums');
            PERFORM insert_category_translations('serums', 'ar', 'سيروم');
            PERFORM insert_category_translations('serums', 'en', 'Serums');
            PERFORM insert_category_translations('serums', 'de', 'Seren');
            PERFORM insert_category_translations('serums', 'es', 'Sérums');
            PERFORM insert_category_translations('serums', 'it', 'Sieri');

            -- Level 2: soins-anti-acne
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soins-anti-acne', 'soins-anti-acne', 2, l1_id, 'Soins anti-acné')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('soins-anti-acne', 'fr', 'Soins anti-acné');
            PERFORM insert_category_translations('soins-anti-acne', 'ar', 'علاجات حب الشباب');
            PERFORM insert_category_translations('soins-anti-acne', 'en', 'Anti-Acne Care');
            PERFORM insert_category_translations('soins-anti-acne', 'de', 'Anti-Akne-Pflege');
            PERFORM insert_category_translations('soins-anti-acne', 'es', 'Cuidado antiacné');
            PERFORM insert_category_translations('soins-anti-acne', 'it', 'Cura anti-acne');

            -- Level 2: masques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('masques', 'masques', 2, l1_id, 'Masques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('masques', 'fr', 'Masques');
            PERFORM insert_category_translations('masques', 'ar', 'أقنعة');
            PERFORM insert_category_translations('masques', 'en', 'Masks');
            PERFORM insert_category_translations('masques', 'de', 'Masken');
            PERFORM insert_category_translations('masques', 'es', 'Mascarillas');
            PERFORM insert_category_translations('masques', 'it', 'Maschere');

            -- Level 2: exfoliants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('exfoliants', 'exfoliants', 2, l1_id, 'Exfoliants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('exfoliants', 'fr', 'Exfoliants');
            PERFORM insert_category_translations('exfoliants', 'ar', 'مقشرات');
            PERFORM insert_category_translations('exfoliants', 'en', 'Exfoliants');
            PERFORM insert_category_translations('exfoliants', 'de', 'Peelings');
            PERFORM insert_category_translations('exfoliants', 'es', 'Exfoliantes');
            PERFORM insert_category_translations('exfoliants', 'it', 'Esfolianti');

            -- Level 2: nettoyants-visage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('nettoyants-visage', 'nettoyants-visage', 2, l1_id, 'Nettoyants visage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('nettoyants-visage', 'fr', 'Nettoyants visage');
            PERFORM insert_category_translations('nettoyants-visage', 'ar', 'منظفات الوجه');
            PERFORM insert_category_translations('nettoyants-visage', 'en', 'Facial Cleansers');
            PERFORM insert_category_translations('nettoyants-visage', 'de', 'Gesichtsreiniger');
            PERFORM insert_category_translations('nettoyants-visage', 'es', 'Limpiadores faciales');
            PERFORM insert_category_translations('nettoyants-visage', 'it', 'Detergenti viso');

            -- Level 2: toniques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('toniques', 'toniques', 2, l1_id, 'Toniques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('toniques', 'fr', 'Toniques');
            PERFORM insert_category_translations('toniques', 'ar', 'تونر');
            PERFORM insert_category_translations('toniques', 'en', 'Toners');
            PERFORM insert_category_translations('toniques', 'de', 'Toner');
            PERFORM insert_category_translations('toniques', 'es', 'Tónicos');
            PERFORM insert_category_translations('toniques', 'it', 'Tonici');

            -- Level 2: soins-anti-taches
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soins-anti-taches', 'soins-anti-taches', 2, l1_id, 'Soins anti-taches')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('soins-anti-taches', 'fr', 'Soins anti-taches');
            PERFORM insert_category_translations('soins-anti-taches', 'ar', 'مضادات البقع');
            PERFORM insert_category_translations('soins-anti-taches', 'en', 'Anti-Spot Care');
            PERFORM insert_category_translations('soins-anti-taches', 'de', 'Anti-Flecken-Pflege');
            PERFORM insert_category_translations('soins-anti-taches', 'es', 'Cuidado anti-manchas');
            PERFORM insert_category_translations('soins-anti-taches', 'it', 'Cura antimacchie');

            -- Level 2: cremes-contour-yeux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cremes-contour-yeux', 'cremes-contour-yeux', 2, l1_id, 'Crèmes contour des yeux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cremes-contour-yeux', 'fr', 'Crèmes contour des yeux');
            PERFORM insert_category_translations('cremes-contour-yeux', 'ar', 'كريمات محيط العين');
            PERFORM insert_category_translations('cremes-contour-yeux', 'en', 'Eye Contour Creams');
            PERFORM insert_category_translations('cremes-contour-yeux', 'de', 'Augenkontur-Cremes');
            PERFORM insert_category_translations('cremes-contour-yeux', 'es', 'Cremas contorno de ojos');
            PERFORM insert_category_translations('cremes-contour-yeux', 'it', 'Creme contorno occhi');

            -- Level 2: patchs-yeux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('patchs-yeux', 'patchs-yeux', 2, l1_id, 'Patchs yeux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('patchs-yeux', 'fr', 'Patchs yeux');
            PERFORM insert_category_translations('patchs-yeux', 'ar', 'لاصقات العين');
            PERFORM insert_category_translations('patchs-yeux', 'en', 'Eye Patches');
            PERFORM insert_category_translations('patchs-yeux', 'de', 'Augenpads');
            PERFORM insert_category_translations('patchs-yeux', 'es', 'Parches para ojos');
            PERFORM insert_category_translations('patchs-yeux', 'it', 'Patch occhi');

        -- Level 1: soins-corps
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soins-corps', 'soins-corps', 1, root_id, 'Soins du corps')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('soins-corps', 'fr', 'Soins du corps');
        PERFORM insert_category_translations('soins-corps', 'ar', 'العناية بالجسم');
        PERFORM insert_category_translations('soins-corps', 'en', 'Body Care');
        PERFORM insert_category_translations('soins-corps', 'de', 'Körperpflege');
        PERFORM insert_category_translations('soins-corps', 'es', 'Cuidado corporal');
        PERFORM insert_category_translations('soins-corps', 'it', 'Cura del corpo');

            -- Level 2: laits-corporels
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('laits-corporels', 'laits-corporels', 2, l1_id, 'Laits corporels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('laits-corporels', 'fr', 'Laits corporels');
            PERFORM insert_category_translations('laits-corporels', 'ar', 'لوشن للجسم');
            PERFORM insert_category_translations('laits-corporels', 'en', 'Body Lotions');
            PERFORM insert_category_translations('laits-corporels', 'de', 'Körperlotionen');
            PERFORM insert_category_translations('laits-corporels', 'es', 'Leches corporales');
            PERFORM insert_category_translations('laits-corporels', 'it', 'Latti corporei');

            -- Level 2: cremes-nourrissantes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cremes-nourrissantes', 'cremes-nourrissantes', 2, l1_id, 'Crèmes nourrissantes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cremes-nourrissantes', 'fr', 'Crèmes nourrissantes');
            PERFORM insert_category_translations('cremes-nourrissantes', 'ar', 'كريمات مغذية');
            PERFORM insert_category_translations('cremes-nourrissantes', 'en', 'Nourishing Creams');
            PERFORM insert_category_translations('cremes-nourrissantes', 'de', 'Nährende Cremes');
            PERFORM insert_category_translations('cremes-nourrissantes', 'es', 'Cremas nutritivas');
            PERFORM insert_category_translations('cremes-nourrissantes', 'it', 'Creme nutrienti');

            -- Level 2: gommages-corps
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gommages-corps', 'gommages-corps', 2, l1_id, 'Gommages corps')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gommages-corps', 'fr', 'Gommages corps');
            PERFORM insert_category_translations('gommages-corps', 'ar', 'مقشرات الجسم');
            PERFORM insert_category_translations('gommages-corps', 'en', 'Body Scrubs');
            PERFORM insert_category_translations('gommages-corps', 'de', 'Körperpeelings');
            PERFORM insert_category_translations('gommages-corps', 'es', 'Exfoliantes corporales');
            PERFORM insert_category_translations('gommages-corps', 'it', 'Scrub corpo');

            -- Level 2: huiles-corporelles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('huiles-corporelles', 'huiles-corporelles', 2, l1_id, 'Huiles corporelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('huiles-corporelles', 'fr', 'Huiles corporelles');
            PERFORM insert_category_translations('huiles-corporelles', 'ar', 'زيوت للجسم');
            PERFORM insert_category_translations('huiles-corporelles', 'en', 'Body Oils');
            PERFORM insert_category_translations('huiles-corporelles', 'de', 'Körperöle');
            PERFORM insert_category_translations('huiles-corporelles', 'es', 'Aceites corporales');
            PERFORM insert_category_translations('huiles-corporelles', 'it', 'Oli corpo');

            -- Level 2: gels-minceur
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gels-minceur', 'gels-minceur', 2, l1_id, 'Gels minceur')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gels-minceur', 'fr', 'Gels minceur');
            PERFORM insert_category_translations('gels-minceur', 'ar', 'جل للتنحيف');
            PERFORM insert_category_translations('gels-minceur', 'en', 'Slimming Gels');
            PERFORM insert_category_translations('gels-minceur', 'de', 'Straffungsgele');
            PERFORM insert_category_translations('gels-minceur', 'es', 'Geles reductores');
            PERFORM insert_category_translations('gels-minceur', 'it', 'Gel snellenti');

            -- Level 2: soins-anti-vergetures
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soins-anti-vergetures', 'soins-anti-vergetures', 2, l1_id, 'Soins anti-vergetures')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('soins-anti-vergetures', 'fr', 'Soins anti-vergetures');
            PERFORM insert_category_translations('soins-anti-vergetures', 'ar', 'علاجات لعلامات التمدد');
            PERFORM insert_category_translations('soins-anti-vergetures', 'en', 'Anti-Stretch Mark Care');
            PERFORM insert_category_translations('soins-anti-vergetures', 'de', 'Anti-Dehnungsstreifen');
            PERFORM insert_category_translations('soins-anti-vergetures', 'es', 'Anti-estrías');
            PERFORM insert_category_translations('soins-anti-vergetures', 'it', 'Anti-smagliature');

            -- Level 2: soins-raffermissants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soins-raffermissants', 'soins-raffermissants', 2, l1_id, 'Soins raffermissants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('soins-raffermissants', 'fr', 'Soins raffermissants');
            PERFORM insert_category_translations('soins-raffermissants', 'ar', 'علاجات شد البشرة');
            PERFORM insert_category_translations('soins-raffermissants', 'en', 'Firming Care');
            PERFORM insert_category_translations('soins-raffermissants', 'de', 'Straffende Pflege');
            PERFORM insert_category_translations('soins-raffermissants', 'es', 'Cuidado reafirmante');
            PERFORM insert_category_translations('soins-raffermissants', 'it', 'Cura rassodante');

            -- Level 2: lotions-parfumees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lotions-parfumees', 'lotions-parfumees', 2, l1_id, 'Lotions corporelles parfumées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lotions-parfumees', 'fr', 'Lotions corporelles parfumées');
            PERFORM insert_category_translations('lotions-parfumees', 'ar', 'لوشن معطر');
            PERFORM insert_category_translations('lotions-parfumees', 'en', 'Perfumed Body Lotions');
            PERFORM insert_category_translations('lotions-parfumees', 'de', 'Parfümierte Lotionen');
            PERFORM insert_category_translations('lotions-parfumees', 'es', 'Lociones perfumadas');
            PERFORM insert_category_translations('lotions-parfumees', 'it', 'Lozioni profumate');

        -- Level 1: hygiene-corporelle
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('hygiene-corporelle', 'hygiene-corporelle', 1, root_id, 'Hygiène corporelle')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('hygiene-corporelle', 'fr', 'Hygiène corporelle');
        PERFORM insert_category_translations('hygiene-corporelle', 'ar', 'النظافة الشخصية');
        PERFORM insert_category_translations('hygiene-corporelle', 'en', 'Body Hygiene');
        PERFORM insert_category_translations('hygiene-corporelle', 'de', 'Körperhygiene');
        PERFORM insert_category_translations('hygiene-corporelle', 'es', 'Higiene corporal');
        PERFORM insert_category_translations('hygiene-corporelle', 'it', 'Igiene corporea');

            -- Level 2: gels-douche
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gels-douche', 'gels-douche', 2, l1_id, 'Gels douche')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gels-douche', 'fr', 'Gels douche');
            PERFORM insert_category_translations('gels-douche', 'ar', 'جل استحمام');
            PERFORM insert_category_translations('gels-douche', 'en', 'Shower Gels');
            PERFORM insert_category_translations('gels-douche', 'de', 'Duschgels');
            PERFORM insert_category_translations('gels-douche', 'es', 'Geles de ducha');
            PERFORM insert_category_translations('gels-douche', 'it', 'Bagnoschiuma');

            -- Level 2: savons-solides
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('savons-solides', 'savons-solides', 2, l1_id, 'Savons solides')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('savons-solides', 'fr', 'Savons solides');
            PERFORM insert_category_translations('savons-solides', 'ar', 'صابون صلب');
            PERFORM insert_category_translations('savons-solides', 'en', 'Bar Soaps');
            PERFORM insert_category_translations('savons-solides', 'de', 'Seifenstücke');
            PERFORM insert_category_translations('savons-solides', 'es', 'Jabones en barra');
            PERFORM insert_category_translations('savons-solides', 'it', 'Saponette');

            -- Level 2: savons-liquides
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('savons-liquides', 'savons-liquides', 2, l1_id, 'Savons liquides')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('savons-liquides', 'fr', 'Savons liquides');
            PERFORM insert_category_translations('savons-liquides', 'ar', 'صابون سائل');
            PERFORM insert_category_translations('savons-liquides', 'en', 'Liquid Soaps');
            PERFORM insert_category_translations('savons-liquides', 'de', 'Flüssigseifen');
            PERFORM insert_category_translations('savons-liquides', 'es', 'Jabones líquidos');
            PERFORM insert_category_translations('savons-liquides', 'it', 'Saponi liquidi');

            -- Level 2: deodorants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('deodorants', 'deodorants', 2, l1_id, 'Déodorants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('deodorants', 'fr', 'Déodorants');
            PERFORM insert_category_translations('deodorants', 'ar', 'مزيلات العرق');
            PERFORM insert_category_translations('deodorants', 'en', 'Deodorants');
            PERFORM insert_category_translations('deodorants', 'de', 'Deodorants');
            PERFORM insert_category_translations('deodorants', 'es', 'Desodorantes');
            PERFORM insert_category_translations('deodorants', 'it', 'Deodoranti');

            -- Level 2: lingettes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lingettes', 'lingettes', 2, l1_id, 'Lingettes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lingettes', 'fr', 'Lingettes');
            PERFORM insert_category_translations('lingettes', 'ar', 'مناديل مبللة');
            PERFORM insert_category_translations('lingettes', 'en', 'Wipes');
            PERFORM insert_category_translations('lingettes', 'de', 'Tücher');
            PERFORM insert_category_translations('lingettes', 'es', 'Toallitas');
            PERFORM insert_category_translations('lingettes', 'it', 'Salviette');

            -- Level 2: soins-intimes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soins-intimes', 'soins-intimes', 2, l1_id, 'Soins intimes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('soins-intimes', 'fr', 'Soins intimes');
            PERFORM insert_category_translations('soins-intimes', 'ar', 'عناية حميمة');
            PERFORM insert_category_translations('soins-intimes', 'en', 'Intimate Care');
            PERFORM insert_category_translations('soins-intimes', 'de', 'Intimpflege');
            PERFORM insert_category_translations('soins-intimes', 'es', 'Cuidado íntimo');
            PERFORM insert_category_translations('soins-intimes', 'it', 'Cura intima');

            -- Level 2: bains-moussants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bains-moussants', 'bains-moussants', 2, l1_id, 'Bains moussants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bains-moussants', 'fr', 'Bains moussants');
            PERFORM insert_category_translations('bains-moussants', 'ar', 'حمامات رغوية');
            PERFORM insert_category_translations('bains-moussants', 'en', 'Bubble Baths');
            PERFORM insert_category_translations('bains-moussants', 'de', 'Schaumbäder');
            PERFORM insert_category_translations('bains-moussants', 'es', 'Baños de burbujas');
            PERFORM insert_category_translations('bains-moussants', 'it', 'Bagni schiuma');

            -- Level 2: sels-de-bain
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sels-de-bain', 'sels-de-bain', 2, l1_id, 'Sels de bain')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sels-de-bain', 'fr', 'Sels de bain');
            PERFORM insert_category_translations('sels-de-bain', 'ar', 'أملاح الاستحمام');
            PERFORM insert_category_translations('sels-de-bain', 'en', 'Bath Salts');
            PERFORM insert_category_translations('sels-de-bain', 'de', 'Badesalze');
            PERFORM insert_category_translations('sels-de-bain', 'es', 'Sales de baño');
            PERFORM insert_category_translations('sels-de-bain', 'it', 'Sali da bagno');

            -- Level 2: huiles-de-bain
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('huiles-de-bain', 'huiles-de-bain', 2, l1_id, 'Huiles de bain')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('huiles-de-bain', 'fr', 'Huiles de bain');
            PERFORM insert_category_translations('huiles-de-bain', 'ar', 'زيوت الاستحمام');
            PERFORM insert_category_translations('huiles-de-bain', 'en', 'Bath Oils');
            PERFORM insert_category_translations('huiles-de-bain', 'de', 'Badeöle');
            PERFORM insert_category_translations('huiles-de-bain', 'es', 'Aceites de baño');
            PERFORM insert_category_translations('huiles-de-bain', 'it', 'Oli da bagno');

        -- Level 1: soins-capillaires
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soins-capillaires', 'soins-capillaires', 1, root_id, 'Soins capillaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('soins-capillaires', 'fr', 'Soins capillaires');
        PERFORM insert_category_translations('soins-capillaires', 'ar', 'العناية بالشعر');
        PERFORM insert_category_translations('soins-capillaires', 'en', 'Hair Care');
        PERFORM insert_category_translations('soins-capillaires', 'de', 'Haarpflege');
        PERFORM insert_category_translations('soins-capillaires', 'es', 'Cuidado del cabello');
        PERFORM insert_category_translations('soins-capillaires', 'it', 'Cura dei capelli');

            -- Level 2: shampoings
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('shampoings', 'shampoings', 2, l1_id, 'Shampoings')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('shampoings', 'fr', 'Shampoings');
            PERFORM insert_category_translations('shampoings', 'ar', 'شامبو');
            PERFORM insert_category_translations('shampoings', 'en', 'Shampoos');
            PERFORM insert_category_translations('shampoings', 'de', 'Shampoos');
            PERFORM insert_category_translations('shampoings', 'es', 'Champús');
            PERFORM insert_category_translations('shampoings', 'it', 'Shampoo');

            -- Level 2: apres-shampoings
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('apres-shampoings', 'apres-shampoings', 2, l1_id, 'Après-shampoings')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('apres-shampoings', 'fr', 'Après-shampoings');
            PERFORM insert_category_translations('apres-shampoings', 'ar', 'بلسم');
            PERFORM insert_category_translations('apres-shampoings', 'en', 'Conditioners');
            PERFORM insert_category_translations('apres-shampoings', 'de', 'Conditioner');
            PERFORM insert_category_translations('apres-shampoings', 'es', 'Acondicionadores');
            PERFORM insert_category_translations('apres-shampoings', 'it', 'Balsami');

            -- Level 2: masques-capillaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('masques-capillaires', 'masques-capillaires', 2, l1_id, 'Masques capillaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('masques-capillaires', 'fr', 'Masques capillaires');
            PERFORM insert_category_translations('masques-capillaires', 'ar', 'أقنعة الشعر');
            PERFORM insert_category_translations('masques-capillaires', 'en', 'Hair Masks');
            PERFORM insert_category_translations('masques-capillaires', 'de', 'Haarmasken');
            PERFORM insert_category_translations('masques-capillaires', 'es', 'Mascarillas capilares');
            PERFORM insert_category_translations('masques-capillaires', 'it', 'Maschere capelli');

            -- Level 2: serums-capillaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('serums-capillaires', 'serums-capillaires', 2, l1_id, 'Sérums capillaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('serums-capillaires', 'fr', 'Sérums capillaires');
            PERFORM insert_category_translations('serums-capillaires', 'ar', 'سيروم الشعر');
            PERFORM insert_category_translations('serums-capillaires', 'en', 'Hair Serums');
            PERFORM insert_category_translations('serums-capillaires', 'de', 'Haarseren');
            PERFORM insert_category_translations('serums-capillaires', 'es', 'Sérums capilares');
            PERFORM insert_category_translations('serums-capillaires', 'it', 'Sieri capelli');

            -- Level 2: soins-keratine
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soins-keratine', 'soins-keratine', 2, l1_id, 'Soins kératine')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('soins-keratine', 'fr', 'Soins kératine');
            PERFORM insert_category_translations('soins-keratine', 'ar', 'علاجات الكيراتين');
            PERFORM insert_category_translations('soins-keratine', 'en', 'Keratin Care');
            PERFORM insert_category_translations('soins-keratine', 'de', 'Keratinpflege');
            PERFORM insert_category_translations('soins-keratine', 'es', 'Cuidado de queratina');
            PERFORM insert_category_translations('soins-keratine', 'it', 'Cura alla cheratina');

            -- Level 2: huiles-capillaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('huiles-capillaires', 'huiles-capillaires', 2, l1_id, 'Huiles capillaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('huiles-capillaires', 'fr', 'Huiles capillaires');
            PERFORM insert_category_translations('huiles-capillaires', 'ar', 'زيوت الشعر');
            PERFORM insert_category_translations('huiles-capillaires', 'en', 'Hair Oils');
            PERFORM insert_category_translations('huiles-capillaires', 'de', 'Haaröle');
            PERFORM insert_category_translations('huiles-capillaires', 'es', 'Aceites capilares');
            PERFORM insert_category_translations('huiles-capillaires', 'it', 'Oli capelli');

            -- Level 2: soins-antichute
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soins-antichute', 'soins-antichute', 2, l1_id, 'Soins antichute')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('soins-antichute', 'fr', 'Soins antichute');
            PERFORM insert_category_translations('soins-antichute', 'ar', 'علاجات تساقط الشعر');
            PERFORM insert_category_translations('soins-antichute', 'en', 'Anti-Hair Loss');
            PERFORM insert_category_translations('soins-antichute', 'de', 'Anti-Haarausfall');
            PERFORM insert_category_translations('soins-antichute', 'es', 'Anti-caída');
            PERFORM insert_category_translations('soins-antichute', 'it', 'Anti-caduta');

            -- Level 2: shampoings-medicaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('shampoings-medicaux', 'shampoings-medicaux', 2, l1_id, 'Shampoings médicaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('shampoings-medicaux', 'fr', 'Shampoings médicaux');
            PERFORM insert_category_translations('shampoings-medicaux', 'ar', 'شامبو طبي');
            PERFORM insert_category_translations('shampoings-medicaux', 'en', 'Medical Shampoos');
            PERFORM insert_category_translations('shampoings-medicaux', 'de', 'Medizinische Shampoos');
            PERFORM insert_category_translations('shampoings-medicaux', 'es', 'Champús medicinales');
            PERFORM insert_category_translations('shampoings-medicaux', 'it', 'Shampoo medicali');

            -- Level 2: produits-coiffants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-coiffants', 'produits-coiffants', 2, l1_id, 'Produits coiffants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('produits-coiffants', 'fr', 'Produits coiffants');
            PERFORM insert_category_translations('produits-coiffants', 'ar', 'منتجات تصفيف');
            PERFORM insert_category_translations('produits-coiffants', 'en', 'Styling Products');
            PERFORM insert_category_translations('produits-coiffants', 'de', 'Stylingprodukte');
            PERFORM insert_category_translations('produits-coiffants', 'es', 'Productos de peinado');
            PERFORM insert_category_translations('produits-coiffants', 'it', 'Prodotti styling');

        -- Level 1: coiffure-styling
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('coiffure-styling', 'coiffure-styling', 1, root_id, 'Coiffure & Styling')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('coiffure-styling', 'fr', 'Coiffure & Styling');
        PERFORM insert_category_translations('coiffure-styling', 'ar', 'تصفيف الشعر');
        PERFORM insert_category_translations('coiffure-styling', 'en', 'Hair Styling');
        PERFORM insert_category_translations('coiffure-styling', 'de', 'Frisieren & Styling');
        PERFORM insert_category_translations('coiffure-styling', 'es', 'Peinado & Styling');
        PERFORM insert_category_translations('coiffure-styling', 'it', 'Acconciatura & Styling');

            -- Level 2: fers-a-lisser
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fers-a-lisser', 'fers-a-lisser', 2, l1_id, 'Fers à lisser')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fers-a-lisser', 'fr', 'Fers à lisser');
            PERFORM insert_category_translations('fers-a-lisser', 'ar', 'مكواة تمليس');
            PERFORM insert_category_translations('fers-a-lisser', 'en', 'Hair Straighteners');
            PERFORM insert_category_translations('fers-a-lisser', 'de', 'Glätteisen');
            PERFORM insert_category_translations('fers-a-lisser', 'es', 'Planchas de pelo');
            PERFORM insert_category_translations('fers-a-lisser', 'it', 'Piastre');

            -- Level 2: seche-cheveux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('seche-cheveux', 'seche-cheveux', 2, l1_id, 'Sèche-cheveux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('seche-cheveux', 'fr', 'Sèche-cheveux');
            PERFORM insert_category_translations('seche-cheveux', 'ar', 'مجففات الشعر');
            PERFORM insert_category_translations('seche-cheveux', 'en', 'Hair Dryers');
            PERFORM insert_category_translations('seche-cheveux', 'de', 'Haartrockner');
            PERFORM insert_category_translations('seche-cheveux', 'es', 'Secadores');
            PERFORM insert_category_translations('seche-cheveux', 'it', 'Asciugacapelli');

            -- Level 2: tondeuses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tondeuses', 'tondeuses', 2, l1_id, 'Tondeuses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tondeuses', 'fr', 'Tondeuses');
            PERFORM insert_category_translations('tondeuses', 'ar', 'آلات حلاقة');
            PERFORM insert_category_translations('tondeuses', 'en', 'Trimmers');
            PERFORM insert_category_translations('tondeuses', 'de', 'Haarschneider');
            PERFORM insert_category_translations('tondeuses', 'es', 'Cortapelos');
            PERFORM insert_category_translations('tondeuses', 'it', 'Tagliacapelli');

            -- Level 2: brosses-chauffantes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('brosses-chauffantes', 'brosses-chauffantes', 2, l1_id, 'Brosses chauffantes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('brosses-chauffantes', 'fr', 'Brosses chauffantes');
            PERFORM insert_category_translations('brosses-chauffantes', 'ar', 'فرش ساخنة');
            PERFORM insert_category_translations('brosses-chauffantes', 'en', 'Heated Brushes');
            PERFORM insert_category_translations('brosses-chauffantes', 'de', 'Heizbürsten');
            PERFORM insert_category_translations('brosses-chauffantes', 'es', 'Cepillos térmicos');
            PERFORM insert_category_translations('brosses-chauffantes', 'it', 'Spazzole termiche');

            -- Level 2: bigoudis
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bigoudis', 'bigoudis', 2, l1_id, 'Bigoudis')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bigoudis', 'fr', 'Bigoudis');
            PERFORM insert_category_translations('bigoudis', 'ar', 'بكرات');
            PERFORM insert_category_translations('bigoudis', 'en', 'Curlers');
            PERFORM insert_category_translations('bigoudis', 'de', 'Lockenwickler');
            PERFORM insert_category_translations('bigoudis', 'es', 'Rulos');
            PERFORM insert_category_translations('bigoudis', 'it', 'Bigodini');

            -- Level 2: peignes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('peignes', 'peignes', 2, l1_id, 'Peignes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('peignes', 'fr', 'Peignes');
            PERFORM insert_category_translations('peignes', 'ar', 'أمشاط');
            PERFORM insert_category_translations('peignes', 'en', 'Combs');
            PERFORM insert_category_translations('peignes', 'de', 'Kämme');
            PERFORM insert_category_translations('peignes', 'es', 'Peines');
            PERFORM insert_category_translations('peignes', 'it', 'Pettini');

            -- Level 2: brosses-professionnelles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('brosses-professionnelles', 'brosses-professionnelles', 2, l1_id, 'Brosses professionnelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('brosses-professionnelles', 'fr', 'Brosses professionnelles');
            PERFORM insert_category_translations('brosses-professionnelles', 'ar', 'فرش احترافية');
            PERFORM insert_category_translations('brosses-professionnelles', 'en', 'Professional Brushes');
            PERFORM insert_category_translations('brosses-professionnelles', 'de', 'Profi-Bürsten');
            PERFORM insert_category_translations('brosses-professionnelles', 'es', 'Cepillos profesionales');
            PERFORM insert_category_translations('brosses-professionnelles', 'it', 'Spazzole professionali');

            -- Level 2: sprays-coiffants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sprays-coiffants', 'sprays-coiffants', 2, l1_id, 'Sprays coiffants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sprays-coiffants', 'fr', 'Sprays coiffants');
            PERFORM insert_category_translations('sprays-coiffants', 'ar', 'بخاخات تصفيف');
            PERFORM insert_category_translations('sprays-coiffants', 'en', 'Styling Sprays');
            PERFORM insert_category_translations('sprays-coiffants', 'de', 'Styling-Sprays');
            PERFORM insert_category_translations('sprays-coiffants', 'es', 'Sprays de peinado');
            PERFORM insert_category_translations('sprays-coiffants', 'it', 'Spray styling');

            -- Level 2: mousses-volume
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mousses-volume', 'mousses-volume', 2, l1_id, 'Mousses volume')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mousses-volume', 'fr', 'Mousses volume');
            PERFORM insert_category_translations('mousses-volume', 'ar', 'رغوات حجم');
            PERFORM insert_category_translations('mousses-volume', 'en', 'Volume Mousses');
            PERFORM insert_category_translations('mousses-volume', 'de', 'Volumen-Mousse');
            PERFORM insert_category_translations('mousses-volume', 'es', 'Mousses de volumen');
            PERFORM insert_category_translations('mousses-volume', 'it', 'Mousse volume');

            -- Level 2: gels
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gels', 'gels', 2, l1_id, 'Gels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gels', 'fr', 'Gels');
            PERFORM insert_category_translations('gels', 'ar', 'جيل');
            PERFORM insert_category_translations('gels', 'en', 'Gels');
            PERFORM insert_category_translations('gels', 'de', 'Haargels');
            PERFORM insert_category_translations('gels', 'es', 'Geles');
            PERFORM insert_category_translations('gels', 'it', 'Gel');

        -- Level 1: parfums-fragrances
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('parfums-fragrances', 'parfums-fragrances', 1, root_id, 'Parfums & fragrances')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('parfums-fragrances', 'fr', 'Parfums & fragrances');
        PERFORM insert_category_translations('parfums-fragrances', 'ar', 'العطور والروائح');
        PERFORM insert_category_translations('parfums-fragrances', 'en', 'Perfumes & Fragrances');
        PERFORM insert_category_translations('parfums-fragrances', 'de', 'Parfüms & Düfte');
        PERFORM insert_category_translations('parfums-fragrances', 'es', 'Perfumes & Fragancias');
        PERFORM insert_category_translations('parfums-fragrances', 'it', 'Profumi & Fragranze');

            -- Level 2: parfums-homme
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('parfums-homme', 'parfums-homme', 2, l1_id, 'Parfums homme')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('parfums-homme', 'fr', 'Parfums homme');
            PERFORM insert_category_translations('parfums-homme', 'ar', 'عطور رجالية');
            PERFORM insert_category_translations('parfums-homme', 'en', 'Men''s Perfumes');
            PERFORM insert_category_translations('parfums-homme', 'de', 'Herrenparfüms');
            PERFORM insert_category_translations('parfums-homme', 'es', 'Perfumes hombre');
            PERFORM insert_category_translations('parfums-homme', 'it', 'Profumi uomo');

            -- Level 2: parfums-femme
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('parfums-femme', 'parfums-femme', 2, l1_id, 'Parfums femme')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('parfums-femme', 'fr', 'Parfums femme');
            PERFORM insert_category_translations('parfums-femme', 'ar', 'عطور نسائية');
            PERFORM insert_category_translations('parfums-femme', 'en', 'Women''s Perfumes');
            PERFORM insert_category_translations('parfums-femme', 'de', 'Damenparfüms');
            PERFORM insert_category_translations('parfums-femme', 'es', 'Perfumes mujer');
            PERFORM insert_category_translations('parfums-femme', 'it', 'Profumi donna');

            -- Level 2: eaux-de-toilette
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('eaux-de-toilette', 'eaux-de-toilette', 2, l1_id, 'Eaux de toilette')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('eaux-de-toilette', 'fr', 'Eaux de toilette');
            PERFORM insert_category_translations('eaux-de-toilette', 'ar', 'ماء تواليت');
            PERFORM insert_category_translations('eaux-de-toilette', 'en', 'Eaux de Toilette');
            PERFORM insert_category_translations('eaux-de-toilette', 'de', 'Eaux de Toilette');
            PERFORM insert_category_translations('eaux-de-toilette', 'es', 'Eaux de toilette');
            PERFORM insert_category_translations('eaux-de-toilette', 'it', 'Eaux de toilette');

            -- Level 2: eaux-de-parfum
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('eaux-de-parfum', 'eaux-de-parfum', 2, l1_id, 'Eaux de parfum')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('eaux-de-parfum', 'fr', 'Eaux de parfum');
            PERFORM insert_category_translations('eaux-de-parfum', 'ar', 'ماء عطر');
            PERFORM insert_category_translations('eaux-de-parfum', 'en', 'Eaux de Parfum');
            PERFORM insert_category_translations('eaux-de-parfum', 'de', 'Eaux de Parfum');
            PERFORM insert_category_translations('eaux-de-parfum', 'es', 'Eaux de parfum');
            PERFORM insert_category_translations('eaux-de-parfum', 'it', 'Eaux de parfum');

            -- Level 2: brumes-corporelles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('brumes-corporelles', 'brumes-corporelles', 2, l1_id, 'Brumes corporelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('brumes-corporelles', 'fr', 'Brumes corporelles');
            PERFORM insert_category_translations('brumes-corporelles', 'ar', 'رذاذ للجسم');
            PERFORM insert_category_translations('brumes-corporelles', 'en', 'Body Mists');
            PERFORM insert_category_translations('brumes-corporelles', 'de', 'Körpernebel');
            PERFORM insert_category_translations('brumes-corporelles', 'es', 'Brumas corporales');
            PERFORM insert_category_translations('brumes-corporelles', 'it', 'Nebbie corporee');

            -- Level 2: parfums-orientaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('parfums-orientaux', 'parfums-orientaux', 2, l1_id, 'Parfums orientaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('parfums-orientaux', 'fr', 'Parfums orientaux');
            PERFORM insert_category_translations('parfums-orientaux', 'ar', 'عطور شرقية');
            PERFORM insert_category_translations('parfums-orientaux', 'en', 'Oriental Perfumes');
            PERFORM insert_category_translations('parfums-orientaux', 'de', 'Orientalische Düfte');
            PERFORM insert_category_translations('parfums-orientaux', 'es', 'Fragancias orientales');
            PERFORM insert_category_translations('parfums-orientaux', 'it', 'Fragranze orientali');

            -- Level 2: parfums-de-luxe
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('parfums-de-luxe', 'parfums-de-luxe', 2, l1_id, 'Parfums de luxe')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('parfums-de-luxe', 'fr', 'Parfums de luxe');
            PERFORM insert_category_translations('parfums-de-luxe', 'ar', 'عطور فاخرة');
            PERFORM insert_category_translations('parfums-de-luxe', 'en', 'Luxury Perfumes');
            PERFORM insert_category_translations('parfums-de-luxe', 'de', 'Luxusdüfte');
            PERFORM insert_category_translations('parfums-de-luxe', 'es', 'Perfumes de lujo');
            PERFORM insert_category_translations('parfums-de-luxe', 'it', 'Profumi di lusso');

            -- Level 2: coffrets-parfum
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('coffrets-parfum', 'coffrets-parfum', 2, l1_id, 'Coffrets parfum')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('coffrets-parfum', 'fr', 'Coffrets parfum');
            PERFORM insert_category_translations('coffrets-parfum', 'ar', 'مجموعات عطر');
            PERFORM insert_category_translations('coffrets-parfum', 'en', 'Perfume Gift Sets');
            PERFORM insert_category_translations('coffrets-parfum', 'de', 'Parfümsets');
            PERFORM insert_category_translations('coffrets-parfum', 'es', 'Cofres de perfume');
            PERFORM insert_category_translations('coffrets-parfum', 'it', 'Coffanetti profumo');

        -- Level 1: maquillage
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('maquillage', 'maquillage', 1, root_id, 'Maquillage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('maquillage', 'fr', 'Maquillage');
        PERFORM insert_category_translations('maquillage', 'ar', 'مكياج');
        PERFORM insert_category_translations('maquillage', 'en', 'Makeup');
        PERFORM insert_category_translations('maquillage', 'de', 'Make-up');
        PERFORM insert_category_translations('maquillage', 'es', 'Maquillaje');
        PERFORM insert_category_translations('maquillage', 'it', 'Make-up');

            -- Level 2: fonds-de-teint
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fonds-de-teint', 'fonds-de-teint', 2, l1_id, 'Fonds de teint')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fonds-de-teint', 'fr', 'Fonds de teint');
            PERFORM insert_category_translations('fonds-de-teint', 'ar', 'كريم أساس');
            PERFORM insert_category_translations('fonds-de-teint', 'en', 'Foundations');
            PERFORM insert_category_translations('fonds-de-teint', 'de', 'Foundations');
            PERFORM insert_category_translations('fonds-de-teint', 'es', 'Bases');
            PERFORM insert_category_translations('fonds-de-teint', 'it', 'Fondotinta');

            -- Level 2: poudres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('poudres', 'poudres', 2, l1_id, 'Poudres')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('poudres', 'fr', 'Poudres');
            PERFORM insert_category_translations('poudres', 'ar', 'بودرة');
            PERFORM insert_category_translations('poudres', 'en', 'Powders');
            PERFORM insert_category_translations('poudres', 'de', 'Puder');
            PERFORM insert_category_translations('poudres', 'es', 'Polvos');
            PERFORM insert_category_translations('poudres', 'it', 'Ciprie');

            -- Level 2: anticernes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('anticernes', 'anticernes', 2, l1_id, 'Anticernes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('anticernes', 'fr', 'Anticernes');
            PERFORM insert_category_translations('anticernes', 'ar', 'خافي عيوب');
            PERFORM insert_category_translations('anticernes', 'en', 'Concealers');
            PERFORM insert_category_translations('anticernes', 'de', 'Concealer');
            PERFORM insert_category_translations('anticernes', 'es', 'Correctores');
            PERFORM insert_category_translations('anticernes', 'it', 'Correttori');

            -- Level 2: blush
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('blush', 'blush', 2, l1_id, 'Blush')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('blush', 'fr', 'Blush');
            PERFORM insert_category_translations('blush', 'ar', 'أحمر خدود');
            PERFORM insert_category_translations('blush', 'en', 'Blush');
            PERFORM insert_category_translations('blush', 'de', 'Rouge');
            PERFORM insert_category_translations('blush', 'es', 'Coloretes');
            PERFORM insert_category_translations('blush', 'it', 'Blush');

            -- Level 2: highlighters
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('highlighters', 'highlighters', 2, l1_id, 'Highlighters')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('highlighters', 'fr', 'Highlighters');
            PERFORM insert_category_translations('highlighters', 'ar', 'هايلايتر');
            PERFORM insert_category_translations('highlighters', 'en', 'Highlighters');
            PERFORM insert_category_translations('highlighters', 'de', 'Highlighter');
            PERFORM insert_category_translations('highlighters', 'es', 'Iluminadores');
            PERFORM insert_category_translations('highlighters', 'it', 'Illuminanti');

            -- Level 2: palettes-yeux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('palettes-yeux', 'palettes-yeux', 2, l1_id, 'Palettes yeux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('palettes-yeux', 'fr', 'Palettes yeux');
            PERFORM insert_category_translations('palettes-yeux', 'ar', 'لوحات عيون');
            PERFORM insert_category_translations('palettes-yeux', 'en', 'Eyeshadow Palettes');
            PERFORM insert_category_translations('palettes-yeux', 'de', 'Lidschatten-Paletten');
            PERFORM insert_category_translations('palettes-yeux', 'es', 'Paletas de ojos');
            PERFORM insert_category_translations('palettes-yeux', 'it', 'Palette occhi');

            -- Level 2: mascaras
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mascaras', 'mascaras', 2, l1_id, 'Mascaras')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mascaras', 'fr', 'Mascaras');
            PERFORM insert_category_translations('mascaras', 'ar', 'ماسكارا');
            PERFORM insert_category_translations('mascaras', 'en', 'Mascaras');
            PERFORM insert_category_translations('mascaras', 'de', 'Mascaras');
            PERFORM insert_category_translations('mascaras', 'es', 'Máscaras');
            PERFORM insert_category_translations('mascaras', 'it', 'Mascara');

            -- Level 2: eyeliners
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('eyeliners', 'eyeliners', 2, l1_id, 'Eyeliners')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('eyeliners', 'fr', 'Eyeliners');
            PERFORM insert_category_translations('eyeliners', 'ar', 'أيلانير');
            PERFORM insert_category_translations('eyeliners', 'en', 'Eyeliners');
            PERFORM insert_category_translations('eyeliners', 'de', 'Eyeliner');
            PERFORM insert_category_translations('eyeliners', 'es', 'Delineadores');
            PERFORM insert_category_translations('eyeliners', 'it', 'Eyeliner');

            -- Level 2: crayons-levres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('crayons-levres', 'crayons-levres', 2, l1_id, 'Crayons lèvres')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('crayons-levres', 'fr', 'Crayons lèvres');
            PERFORM insert_category_translations('crayons-levres', 'ar', 'أقلام شفاه');
            PERFORM insert_category_translations('crayons-levres', 'en', 'Lip Liners');
            PERFORM insert_category_translations('crayons-levres', 'de', 'Lippenkonturenstifte');
            PERFORM insert_category_translations('crayons-levres', 'es', 'Lápices de labios');
            PERFORM insert_category_translations('crayons-levres', 'it', 'Matite labbra');

            -- Level 2: rouges-a-levres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('rouges-a-levres', 'rouges-a-levres', 2, l1_id, 'Rouges à lèvres')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('rouges-a-levres', 'fr', 'Rouges à lèvres');
            PERFORM insert_category_translations('rouges-a-levres', 'ar', 'أحمر شفاه');
            PERFORM insert_category_translations('rouges-a-levres', 'en', 'Lipsticks');
            PERFORM insert_category_translations('rouges-a-levres', 'de', 'Lippenstifte');
            PERFORM insert_category_translations('rouges-a-levres', 'es', 'Labiales');
            PERFORM insert_category_translations('rouges-a-levres', 'it', 'Rossetti');

            -- Level 2: gloss
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gloss', 'gloss', 2, l1_id, 'Gloss')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gloss', 'fr', 'Gloss');
            PERFORM insert_category_translations('gloss', 'ar', 'غلوس');
            PERFORM insert_category_translations('gloss', 'en', 'Gloss');
            PERFORM insert_category_translations('gloss', 'de', 'Lipgloss');
            PERFORM insert_category_translations('gloss', 'es', 'Gloss');
            PERFORM insert_category_translations('gloss', 'it', 'Gloss');

            -- Level 2: fixateurs-makeup
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fixateurs-makeup', 'fixateurs-makeup', 2, l1_id, 'Fixateurs makeup')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fixateurs-makeup', 'fr', 'Fixateurs makeup');
            PERFORM insert_category_translations('fixateurs-makeup', 'ar', 'مثبت مكياج');
            PERFORM insert_category_translations('fixateurs-makeup', 'en', 'Makeup Fixers');
            PERFORM insert_category_translations('fixateurs-makeup', 'de', 'Make-up-Setter');
            PERFORM insert_category_translations('fixateurs-makeup', 'es', 'Fijadores de maquillaje');
            PERFORM insert_category_translations('fixateurs-makeup', 'it', 'Fissatori trucco');

        -- Level 1: accessoires-beaute
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-beaute', 'accessoires-beaute', 1, root_id, 'Accessoires beauté')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('accessoires-beaute', 'fr', 'Accessoires beauté');
        PERFORM insert_category_translations('accessoires-beaute', 'ar', 'إكسسوارات الجمال');
        PERFORM insert_category_translations('accessoires-beaute', 'en', 'Beauty Accessories');
        PERFORM insert_category_translations('accessoires-beaute', 'de', 'Schönheitsaccessoires');
        PERFORM insert_category_translations('accessoires-beaute', 'es', 'Accesorios de belleza');
        PERFORM insert_category_translations('accessoires-beaute', 'it', 'Accessori bellezza');

            -- Level 2: pinceaux-maquillage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pinceaux-maquillage', 'pinceaux-maquillage', 2, l1_id, 'Pinceaux maquillage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pinceaux-maquillage', 'fr', 'Pinceaux maquillage');
            PERFORM insert_category_translations('pinceaux-maquillage', 'ar', 'فرش مكياج');
            PERFORM insert_category_translations('pinceaux-maquillage', 'en', 'Makeup Brushes');
            PERFORM insert_category_translations('pinceaux-maquillage', 'de', 'Make-up-Pinsel');
            PERFORM insert_category_translations('pinceaux-maquillage', 'es', 'Brochas de maquillaje');
            PERFORM insert_category_translations('pinceaux-maquillage', 'it', 'Pennelli trucco');

            -- Level 2: beauty-blenders
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('beauty-blenders', 'beauty-blenders', 2, l1_id, 'Beauty blenders')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('beauty-blenders', 'fr', 'Beauty blenders');
            PERFORM insert_category_translations('beauty-blenders', 'ar', 'بيوتي بلندرز');
            PERFORM insert_category_translations('beauty-blenders', 'en', 'Beauty Blenders');
            PERFORM insert_category_translations('beauty-blenders', 'de', 'Beauty-Blender');
            PERFORM insert_category_translations('beauty-blenders', 'es', 'Esponjas Beauty Blender');
            PERFORM insert_category_translations('beauty-blenders', 'it', 'Spugne Beauty Blender');

            -- Level 2: miroirs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('miroirs', 'miroirs', 2, l1_id, 'Miroirs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('miroirs', 'fr', 'Miroirs');
            PERFORM insert_category_translations('miroirs', 'ar', 'مرايا');
            PERFORM insert_category_translations('miroirs', 'en', 'Mirrors');
            PERFORM insert_category_translations('miroirs', 'de', 'Spiegel');
            PERFORM insert_category_translations('miroirs', 'es', 'Espejos');
            PERFORM insert_category_translations('miroirs', 'it', 'Specchi');

            -- Level 2: trousses-beaute
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('trousses-beaute', 'trousses-beaute', 2, l1_id, 'Trousses beauté')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('trousses-beaute', 'fr', 'Trousses beauté');
            PERFORM insert_category_translations('trousses-beaute', 'ar', 'حقائب تجميل');
            PERFORM insert_category_translations('trousses-beaute', 'en', 'Beauty Bags');
            PERFORM insert_category_translations('trousses-beaute', 'de', 'Kosmetiktaschen');
            PERFORM insert_category_translations('trousses-beaute', 'es', 'Neceser de belleza');
            PERFORM insert_category_translations('trousses-beaute', 'it', 'Astucci bellezza');

            -- Level 2: eponges-de-bain
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('eponges-de-bain', 'eponges-de-bain', 2, l1_id, 'Éponges de bain')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('eponges-de-bain', 'fr', 'Éponges de bain');
            PERFORM insert_category_translations('eponges-de-bain', 'ar', 'إسفنجات استحمام');
            PERFORM insert_category_translations('eponges-de-bain', 'en', 'Bath Sponges');
            PERFORM insert_category_translations('eponges-de-bain', 'de', 'Badeschwämme');
            PERFORM insert_category_translations('eponges-de-bain', 'es', 'Esponjas de baño');
            PERFORM insert_category_translations('eponges-de-bain', 'it', 'Spugne da bagno');

            -- Level 2: gants-exfoliants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gants-exfoliants', 'gants-exfoliants', 2, l1_id, 'Gants exfoliants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gants-exfoliants', 'fr', 'Gants exfoliants');
            PERFORM insert_category_translations('gants-exfoliants', 'ar', 'قفازات تقشير');
            PERFORM insert_category_translations('gants-exfoliants', 'en', 'Exfoliating Gloves');
            PERFORM insert_category_translations('gants-exfoliants', 'de', 'Peeling-Handschuhe');
            PERFORM insert_category_translations('gants-exfoliants', 'es', 'Guantes exfoliantes');
            PERFORM insert_category_translations('gants-exfoliants', 'it', 'Guanti esfolianti');

            -- Level 2: limes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('limes', 'limes', 2, l1_id, 'Limes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('limes', 'fr', 'Limes');
            PERFORM insert_category_translations('limes', 'ar', 'مبارد');
            PERFORM insert_category_translations('limes', 'en', 'Nail Files');
            PERFORM insert_category_translations('limes', 'de', 'Nagelfeilen');
            PERFORM insert_category_translations('limes', 'es', 'Limas');
            PERFORM insert_category_translations('limes', 'it', 'Lime');

            -- Level 2: coupe-ongles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('coupe-ongles', 'coupe-ongles', 2, l1_id, 'Coupe-ongles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('coupe-ongles', 'fr', 'Coupe-ongles');
            PERFORM insert_category_translations('coupe-ongles', 'ar', 'مقصات أظافر');
            PERFORM insert_category_translations('coupe-ongles', 'en', 'Nail Clippers');
            PERFORM insert_category_translations('coupe-ongles', 'de', 'Nagelknipser');
            PERFORM insert_category_translations('coupe-ongles', 'es', 'Cortaúñas');
            PERFORM insert_category_translations('coupe-ongles', 'it', 'Tagliaunghie');

            -- Level 2: pinces-a-epiler
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pinces-a-epiler', 'pinces-a-epiler', 2, l1_id, 'Pinces à épiler')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pinces-a-epiler', 'fr', 'Pinces à épiler');
            PERFORM insert_category_translations('pinces-a-epiler', 'ar', 'ملقط');
            PERFORM insert_category_translations('pinces-a-epiler', 'en', 'Tweezers');
            PERFORM insert_category_translations('pinces-a-epiler', 'de', 'Pinzetten');
            PERFORM insert_category_translations('pinces-a-epiler', 'es', 'Pinzas');
            PERFORM insert_category_translations('pinces-a-epiler', 'it', 'Pinzette');

        -- Level 1: manucure-pedicure
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('manucure-pedicure', 'manucure-pedicure', 1, root_id, 'Manucure & pédicure')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('manucure-pedicure', 'fr', 'Manucure & pédicure');
        PERFORM insert_category_translations('manucure-pedicure', 'ar', 'العناية بالأظافر والأقدام');
        PERFORM insert_category_translations('manucure-pedicure', 'en', 'Manicure & Pedicure');
        PERFORM insert_category_translations('manucure-pedicure', 'de', 'Maniküre & Pediküre');
        PERFORM insert_category_translations('manucure-pedicure', 'es', 'Manicura & Pedicura');
        PERFORM insert_category_translations('manucure-pedicure', 'it', 'Manicure & Pedicure');

            -- Level 2: vernis
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vernis', 'vernis', 2, l1_id, 'Vernis')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('vernis', 'fr', 'Vernis');
            PERFORM insert_category_translations('vernis', 'ar', 'طلاء أظافر');
            PERFORM insert_category_translations('vernis', 'en', 'Nail Polish');
            PERFORM insert_category_translations('vernis', 'de', 'Nagellack');
            PERFORM insert_category_translations('vernis', 'es', 'Esmaltes');
            PERFORM insert_category_translations('vernis', 'it', 'Smalti');

            -- Level 2: vernis-semi-permanent
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vernis-semi-permanent', 'vernis-semi-permanent', 2, l1_id, 'Vernis semi-permanent')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('vernis-semi-permanent', 'fr', 'Vernis semi-permanent');
            PERFORM insert_category_translations('vernis-semi-permanent', 'ar', 'طلاء شبه دائم');
            PERFORM insert_category_translations('vernis-semi-permanent', 'en', 'Semi-Permanent Polish');
            PERFORM insert_category_translations('vernis-semi-permanent', 'de', 'Semipermanenter Lack');
            PERFORM insert_category_translations('vernis-semi-permanent', 'es', 'Esmalte semipermanente');
            PERFORM insert_category_translations('vernis-semi-permanent', 'it', 'Smalto semipermanente');

            -- Level 2: gels-uv
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gels-uv', 'gels-uv', 2, l1_id, 'Gels UV')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gels-uv', 'fr', 'Gels UV');
            PERFORM insert_category_translations('gels-uv', 'ar', 'جل UV');
            PERFORM insert_category_translations('gels-uv', 'en', 'UV Gels');
            PERFORM insert_category_translations('gels-uv', 'de', 'UV-Gele');
            PERFORM insert_category_translations('gels-uv', 'es', 'Geles UV');
            PERFORM insert_category_translations('gels-uv', 'it', 'Gel UV');

            -- Level 2: lampes-uv
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lampes-uv', 'lampes-uv', 2, l1_id, 'Lampes UV')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lampes-uv', 'fr', 'Lampes UV');
            PERFORM insert_category_translations('lampes-uv', 'ar', 'مصابيح UV');
            PERFORM insert_category_translations('lampes-uv', 'en', 'UV Lamps');
            PERFORM insert_category_translations('lampes-uv', 'de', 'UV-Lampen');
            PERFORM insert_category_translations('lampes-uv', 'es', 'Lámparas UV');
            PERFORM insert_category_translations('lampes-uv', 'it', 'Lampade UV');

            -- Level 2: kits-manucure
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('kits-manucure', 'kits-manucure', 2, l1_id, 'Kits manucure')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('kits-manucure', 'fr', 'Kits manucure');
            PERFORM insert_category_translations('kits-manucure', 'ar', 'مجموعات مانيكير');
            PERFORM insert_category_translations('kits-manucure', 'en', 'Manicure Kits');
            PERFORM insert_category_translations('kits-manucure', 'de', 'Maniküre-Sets');
            PERFORM insert_category_translations('kits-manucure', 'es', 'Kits de manicura');
            PERFORM insert_category_translations('kits-manucure', 'it', 'Kit manicure');

            -- Level 2: dissolvants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('dissolvants', 'dissolvants', 2, l1_id, 'Dissolvants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('dissolvants', 'fr', 'Dissolvants');
            PERFORM insert_category_translations('dissolvants', 'ar', 'مزيلات');
            PERFORM insert_category_translations('dissolvants', 'en', 'Removers');
            PERFORM insert_category_translations('dissolvants', 'de', 'Entferner');
            PERFORM insert_category_translations('dissolvants', 'es', 'Quitaesmaltes');
            PERFORM insert_category_translations('dissolvants', 'it', 'Solventi');

            -- Level 2: soins-des-ongles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soins-des-ongles', 'soins-des-ongles', 2, l1_id, 'Soins des ongles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('soins-des-ongles', 'fr', 'Soins des ongles');
            PERFORM insert_category_translations('soins-des-ongles', 'ar', 'عناية بالأظافر');
            PERFORM insert_category_translations('soins-des-ongles', 'en', 'Nail Care');
            PERFORM insert_category_translations('soins-des-ongles', 'de', 'Nagelpflege');
            PERFORM insert_category_translations('soins-des-ongles', 'es', 'Cuidado de uñas');
            PERFORM insert_category_translations('soins-des-ongles', 'it', 'Cura unghie');

            -- Level 2: faux-ongles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('faux-ongles', 'faux-ongles', 2, l1_id, 'Faux ongles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('faux-ongles', 'fr', 'Faux ongles');
            PERFORM insert_category_translations('faux-ongles', 'ar', 'أظافر صناعية');
            PERFORM insert_category_translations('faux-ongles', 'en', 'Fake Nails');
            PERFORM insert_category_translations('faux-ongles', 'de', 'Kunstnägel');
            PERFORM insert_category_translations('faux-ongles', 'es', 'Uñas postizas');
            PERFORM insert_category_translations('faux-ongles', 'it', 'Unghie finte');

            -- Level 2: colle-pour-nails
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('colle-pour-nails', 'colle-pour-nails', 2, l1_id, 'Colle pour nails')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('colle-pour-nails', 'fr', 'Colle pour nails');
            PERFORM insert_category_translations('colle-pour-nails', 'ar', 'لاصق أظافر');
            PERFORM insert_category_translations('colle-pour-nails', 'en', 'Nail Glue');
            PERFORM insert_category_translations('colle-pour-nails', 'de', 'Nagelkleber');
            PERFORM insert_category_translations('colle-pour-nails', 'es', 'Pegamento para uñas');
            PERFORM insert_category_translations('colle-pour-nails', 'it', 'Colla per unghie');

            -- Level 2: outils-pro
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('outils-pro', 'outils-pro', 2, l1_id, 'Outils pro')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('outils-pro', 'fr', 'Outils pro');
            PERFORM insert_category_translations('outils-pro', 'ar', 'أدوات احترافية');
            PERFORM insert_category_translations('outils-pro', 'en', 'Pro Tools');
            PERFORM insert_category_translations('outils-pro', 'de', 'Profi-Werkzeuge');
            PERFORM insert_category_translations('outils-pro', 'es', 'Herramientas pro');
            PERFORM insert_category_translations('outils-pro', 'it', 'Strumenti pro');

        -- Level 1: produits-solaires
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-solaires', 'produits-solaires', 1, root_id, 'Produits solaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('produits-solaires', 'fr', 'Produits solaires');
        PERFORM insert_category_translations('produits-solaires', 'ar', 'منتجات الشمس');
        PERFORM insert_category_translations('produits-solaires', 'en', 'Sun Care');
        PERFORM insert_category_translations('produits-solaires', 'de', 'Sonnenschutzprodukte');
        PERFORM insert_category_translations('produits-solaires', 'es', 'Productos solares');
        PERFORM insert_category_translations('produits-solaires', 'it', 'Prodotti solari');

            -- Level 2: cremes-spf
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cremes-spf', 'cremes-spf', 2, l1_id, 'Crèmes SPF')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cremes-spf', 'fr', 'Crèmes SPF');
            PERFORM insert_category_translations('cremes-spf', 'ar', 'كريمات SPF');
            PERFORM insert_category_translations('cremes-spf', 'en', 'SPF Creams');
            PERFORM insert_category_translations('cremes-spf', 'de', 'SPF-Cremes');
            PERFORM insert_category_translations('cremes-spf', 'es', 'Cremas SPF');
            PERFORM insert_category_translations('cremes-spf', 'it', 'Creme SPF');

            -- Level 2: sprays-solaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sprays-solaires', 'sprays-solaires', 2, l1_id, 'Sprays')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sprays-solaires', 'fr', 'Sprays');
            PERFORM insert_category_translations('sprays-solaires', 'ar', 'بخاخات');
            PERFORM insert_category_translations('sprays-solaires', 'en', 'Sprays');
            PERFORM insert_category_translations('sprays-solaires', 'de', 'Sprays');
            PERFORM insert_category_translations('sprays-solaires', 'es', 'Sprays');
            PERFORM insert_category_translations('sprays-solaires', 'it', 'Spray');

            -- Level 2: huiles-solaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('huiles-solaires', 'huiles-solaires', 2, l1_id, 'Huiles solaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('huiles-solaires', 'fr', 'Huiles solaires');
            PERFORM insert_category_translations('huiles-solaires', 'ar', 'زيوت الشمس');
            PERFORM insert_category_translations('huiles-solaires', 'en', 'Sun Oils');
            PERFORM insert_category_translations('huiles-solaires', 'de', 'Sonnenöle');
            PERFORM insert_category_translations('huiles-solaires', 'es', 'Aceites solares');
            PERFORM insert_category_translations('huiles-solaires', 'it', 'Oli solari');

            -- Level 2: protections-enfants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('protections-enfants', 'protections-enfants', 2, l1_id, 'Protections enfants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('protections-enfants', 'fr', 'Protections enfants');
            PERFORM insert_category_translations('protections-enfants', 'ar', 'حماية الأطفال');
            PERFORM insert_category_translations('protections-enfants', 'en', 'Kids Protection');
            PERFORM insert_category_translations('protections-enfants', 'de', 'Kinder-Schutz');
            PERFORM insert_category_translations('protections-enfants', 'es', 'Protección niños');
            PERFORM insert_category_translations('protections-enfants', 'it', 'Protezione bambini');

            -- Level 2: sticks-solaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sticks-solaires', 'sticks-solaires', 2, l1_id, 'Sticks solaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sticks-solaires', 'fr', 'Sticks solaires');
            PERFORM insert_category_translations('sticks-solaires', 'ar', 'أقلام الشمس');
            PERFORM insert_category_translations('sticks-solaires', 'en', 'Sun Sticks');
            PERFORM insert_category_translations('sticks-solaires', 'de', 'Sonnenstifte');
            PERFORM insert_category_translations('sticks-solaires', 'es', 'Sticks solares');
            PERFORM insert_category_translations('sticks-solaires', 'it', 'Stick solari');

            -- Level 2: apres-soleil
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('apres-soleil', 'apres-soleil', 2, l1_id, 'Après-soleil')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('apres-soleil', 'fr', 'Après-soleil');
            PERFORM insert_category_translations('apres-soleil', 'ar', 'بعد الشمس');
            PERFORM insert_category_translations('apres-soleil', 'en', 'After Sun');
            PERFORM insert_category_translations('apres-soleil', 'de', 'After-Sun');
            PERFORM insert_category_translations('apres-soleil', 'es', 'After-sun');
            PERFORM insert_category_translations('apres-soleil', 'it', 'Doposole');

            -- Level 2: cremes-teintees-spf
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cremes-teintees-spf', 'cremes-teintees-spf', 2, l1_id, 'Crèmes teintées SPF')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cremes-teintees-spf', 'fr', 'Crèmes teintées SPF');
            PERFORM insert_category_translations('cremes-teintees-spf', 'ar', 'كريمات ملونة SPF');
            PERFORM insert_category_translations('cremes-teintees-spf', 'en', 'Tinted SPF Creams');
            PERFORM insert_category_translations('cremes-teintees-spf', 'de', 'Getönte SPF-Cremes');
            PERFORM insert_category_translations('cremes-teintees-spf', 'es', 'Cremas SPF con color');
            PERFORM insert_category_translations('cremes-teintees-spf', 'it', 'Creme SPF colorate');

        -- Level 1: beaute-naturelle-bio
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('beaute-naturelle-bio', 'beaute-naturelle-bio', 1, root_id, 'Beauté naturelle & bio')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('beaute-naturelle-bio', 'fr', 'Beauté naturelle & bio');
        PERFORM insert_category_translations('beaute-naturelle-bio', 'ar', 'الجمال الطبيعي والعضوي');
        PERFORM insert_category_translations('beaute-naturelle-bio', 'en', 'Natural & Organic Beauty');
        PERFORM insert_category_translations('beaute-naturelle-bio', 'de', 'Natürliche & Bio-Schönheit');
        PERFORM insert_category_translations('beaute-naturelle-bio', 'es', 'Belleza natural & orgánica');
        PERFORM insert_category_translations('beaute-naturelle-bio', 'it', 'Bellezza naturale & bio');

            -- Level 2: huiles-naturelles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('huiles-naturelles', 'huiles-naturelles', 2, l1_id, 'Huiles naturelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('huiles-naturelles', 'fr', 'Huiles naturelles');
            PERFORM insert_category_translations('huiles-naturelles', 'ar', 'زيوت طبيعية');
            PERFORM insert_category_translations('huiles-naturelles', 'en', 'Natural Oils');
            PERFORM insert_category_translations('huiles-naturelles', 'de', 'Naturöle');
            PERFORM insert_category_translations('huiles-naturelles', 'es', 'Aceites naturales');
            PERFORM insert_category_translations('huiles-naturelles', 'it', 'Oli naturali');

            -- Level 2: beurres-vegetaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('beurres-vegetaux', 'beurres-vegetaux', 2, l1_id, 'Beurres végétaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('beurres-vegetaux', 'fr', 'Beurres végétaux');
            PERFORM insert_category_translations('beurres-vegetaux', 'ar', 'زبد نباتي');
            PERFORM insert_category_translations('beurres-vegetaux', 'en', 'Plant Butters');
            PERFORM insert_category_translations('beurres-vegetaux', 'de', 'Pflanzenbutter');
            PERFORM insert_category_translations('beurres-vegetaux', 'es', 'Mantecas vegetales');
            PERFORM insert_category_translations('beurres-vegetaux', 'it', 'Burri vegetali');

            -- Level 2: eau-florale
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('eau-florale', 'eau-florale', 2, l1_id, 'Eau florale')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('eau-florale', 'fr', 'Eau florale');
            PERFORM insert_category_translations('eau-florale', 'ar', 'ماء زهري');
            PERFORM insert_category_translations('eau-florale', 'en', 'Floral Water');
            PERFORM insert_category_translations('eau-florale', 'de', 'Blütenwasser');
            PERFORM insert_category_translations('eau-florale', 'es', 'Agua floral');
            PERFORM insert_category_translations('eau-florale', 'it', 'Acque floreali');

            -- Level 2: hydrolats
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('hydrolats', 'hydrolats', 2, l1_id, 'Hydrolats')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('hydrolats', 'fr', 'Hydrolats');
            PERFORM insert_category_translations('hydrolats', 'ar', 'هيدروسول');
            PERFORM insert_category_translations('hydrolats', 'en', 'Hydrosols');
            PERFORM insert_category_translations('hydrolats', 'de', 'Hydrolate');
            PERFORM insert_category_translations('hydrolats', 'es', 'Hidrolatos');
            PERFORM insert_category_translations('hydrolats', 'it', 'Idrolati');

            -- Level 2: savons-artisanaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('savons-artisanaux', 'savons-artisanaux', 2, l1_id, 'Savons artisanaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('savons-artisanaux', 'fr', 'Savons artisanaux');
            PERFORM insert_category_translations('savons-artisanaux', 'ar', 'صابون حرفي');
            PERFORM insert_category_translations('savons-artisanaux', 'en', 'Artisanal Soaps');
            PERFORM insert_category_translations('savons-artisanaux', 'de', 'Handgemachte Seifen');
            PERFORM insert_category_translations('savons-artisanaux', 'es', 'Jabones artesanales');
            PERFORM insert_category_translations('savons-artisanaux', 'it', 'Saponi artigianali');

            -- Level 2: cosmetiques-bio
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cosmetiques-bio', 'cosmetiques-bio', 2, l1_id, 'Cosmétiques bio')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cosmetiques-bio', 'fr', 'Cosmétiques bio');
            PERFORM insert_category_translations('cosmetiques-bio', 'ar', 'مستحضرات تجميل عضوية');
            PERFORM insert_category_translations('cosmetiques-bio', 'en', 'Organic Cosmetics');
            PERFORM insert_category_translations('cosmetiques-bio', 'de', 'Bio-Kosmetik');
            PERFORM insert_category_translations('cosmetiques-bio', 'es', 'Cosmética orgánica');
            PERFORM insert_category_translations('cosmetiques-bio', 'it', 'Cosmetici bio');

            -- Level 2: soins-solides
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soins-solides', 'soins-solides', 2, l1_id, 'Soins solides')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('soins-solides', 'fr', 'Soins solides');
            PERFORM insert_category_translations('soins-solides', 'ar', 'عناية صلبة');
            PERFORM insert_category_translations('soins-solides', 'en', 'Solid Care');
            PERFORM insert_category_translations('soins-solides', 'de', 'Feste Pflege');
            PERFORM insert_category_translations('soins-solides', 'es', 'Cuidado sólido');
            PERFORM insert_category_translations('soins-solides', 'it', 'Cura solida');

            -- Level 2: produits-vegan
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-vegan', 'produits-vegan', 2, l1_id, 'Produits vegan')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('produits-vegan', 'fr', 'Produits vegan');
            PERFORM insert_category_translations('produits-vegan', 'ar', 'منتجات نباتية');
            PERFORM insert_category_translations('produits-vegan', 'en', 'Vegan Products');
            PERFORM insert_category_translations('produits-vegan', 'de', 'Vegane Produkte');
            PERFORM insert_category_translations('produits-vegan', 'es', 'Productos veganos');
            PERFORM insert_category_translations('produits-vegan', 'it', 'Prodotti vegani');

        -- Level 1: aromatherapie
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('aromatherapie', 'aromatherapie', 1, root_id, 'Aromathérapie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('aromatherapie', 'fr', 'Aromathérapie');
        PERFORM insert_category_translations('aromatherapie', 'ar', 'العلاج بالروائح');
        PERFORM insert_category_translations('aromatherapie', 'en', 'Aromatherapy');
        PERFORM insert_category_translations('aromatherapie', 'de', 'Aromatherapie');
        PERFORM insert_category_translations('aromatherapie', 'es', 'Aromaterapia');
        PERFORM insert_category_translations('aromatherapie', 'it', 'Aromaterapia');

            -- Level 2: huiles-essentielles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('huiles-essentielles', 'huiles-essentielles', 2, l1_id, 'Huiles essentielles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('huiles-essentielles', 'fr', 'Huiles essentielles');
            PERFORM insert_category_translations('huiles-essentielles', 'ar', 'زيوت أساسية');
            PERFORM insert_category_translations('huiles-essentielles', 'en', 'Essential Oils');
            PERFORM insert_category_translations('huiles-essentielles', 'de', 'Ätherische Öle');
            PERFORM insert_category_translations('huiles-essentielles', 'es', 'Aceites esenciales');
            PERFORM insert_category_translations('huiles-essentielles', 'it', 'Oli essenziali');

            -- Level 2: diffuseurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('diffuseurs', 'diffuseurs', 2, l1_id, 'Diffuseurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('diffuseurs', 'fr', 'Diffuseurs');
            PERFORM insert_category_translations('diffuseurs', 'ar', 'ناشرات');
            PERFORM insert_category_translations('diffuseurs', 'en', 'Diffusers');
            PERFORM insert_category_translations('diffuseurs', 'de', 'Diffusoren');
            PERFORM insert_category_translations('diffuseurs', 'es', 'Difusores');
            PERFORM insert_category_translations('diffuseurs', 'it', 'Diffusori');

            -- Level 2: synergies-bien-etre
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('synergies-bien-etre', 'synergies-bien-etre', 2, l1_id, 'Synergies bien-être')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('synergies-bien-etre', 'fr', 'Synergies bien-être');
            PERFORM insert_category_translations('synergies-bien-etre', 'ar', 'خلاصات الرفاهية');
            PERFORM insert_category_translations('synergies-bien-etre', 'en', 'Well-being Blends');
            PERFORM insert_category_translations('synergies-bien-etre', 'de', 'Wellness-Synergien');
            PERFORM insert_category_translations('synergies-bien-etre', 'es', 'Sinergias bienestar');
            PERFORM insert_category_translations('synergies-bien-etre', 'it', 'Sinergie benessere');

            -- Level 2: roll-on-relaxants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('roll-on-relaxants', 'roll-on-relaxants', 2, l1_id, 'Roll-on relaxants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('roll-on-relaxants', 'fr', 'Roll-on relaxants');
            PERFORM insert_category_translations('roll-on-relaxants', 'ar', 'رول-أون مهدئ');
            PERFORM insert_category_translations('roll-on-relaxants', 'en', 'Relaxing Roll-ons');
            PERFORM insert_category_translations('roll-on-relaxants', 'de', 'Entspannungs-Roll-ons');
            PERFORM insert_category_translations('roll-on-relaxants', 'es', 'Roll-on relajantes');
            PERFORM insert_category_translations('roll-on-relaxants', 'it', 'Roll-on rilassanti');

            -- Level 2: brumes-parfumees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('brumes-parfumees', 'brumes-parfumees', 2, l1_id, 'Brumes parfumées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('brumes-parfumees', 'fr', 'Brumes parfumées');
            PERFORM insert_category_translations('brumes-parfumees', 'ar', 'رذاذ معطر');
            PERFORM insert_category_translations('brumes-parfumees', 'en', 'Perfumed Mists');
            PERFORM insert_category_translations('brumes-parfumees', 'de', 'Duftnebel');
            PERFORM insert_category_translations('brumes-parfumees', 'es', 'Brumas aromáticas');
            PERFORM insert_category_translations('brumes-parfumees', 'it', 'Nebbie profumate');

            -- Level 2: huiles-massage-relaxantes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('huiles-massage-relaxantes', 'huiles-massage-relaxantes', 2, l1_id, 'Huiles de massage relaxantes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('huiles-massage-relaxantes', 'fr', 'Huiles de massage relaxantes');
            PERFORM insert_category_translations('huiles-massage-relaxantes', 'ar', 'زيوت تدليك مهدئة');
            PERFORM insert_category_translations('huiles-massage-relaxantes', 'en', 'Relaxing Massage Oils');
            PERFORM insert_category_translations('huiles-massage-relaxantes', 'de', 'Entspannende Massageöle');
            PERFORM insert_category_translations('huiles-massage-relaxantes', 'es', 'Aceites de masaje relajantes');
            PERFORM insert_category_translations('huiles-massage-relaxantes', 'it', 'Oli massaggio rilassanti');

        -- Level 1: phytotherapie
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('phytotherapie', 'phytotherapie', 1, root_id, 'Phytothérapie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('phytotherapie', 'fr', 'Phytothérapie');
        PERFORM insert_category_translations('phytotherapie', 'ar', 'العلاج بالنباتات');
        PERFORM insert_category_translations('phytotherapie', 'en', 'Phytotherapy');
        PERFORM insert_category_translations('phytotherapie', 'de', 'Phytotherapie');
        PERFORM insert_category_translations('phytotherapie', 'es', 'Fitoterapia');
        PERFORM insert_category_translations('phytotherapie', 'it', 'Fitoterapia');

            -- Level 2: plantes-medicinales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('plantes-medicinales', 'plantes-medicinales', 2, l1_id, 'Plantes médicinales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('plantes-medicinales', 'fr', 'Plantes médicinales');
            PERFORM insert_category_translations('plantes-medicinales', 'ar', 'نباتات طبية');
            PERFORM insert_category_translations('plantes-medicinales', 'en', 'Medicinal Plants');
            PERFORM insert_category_translations('plantes-medicinales', 'de', 'Heilpflanzen');
            PERFORM insert_category_translations('plantes-medicinales', 'es', 'Plantas medicinales');
            PERFORM insert_category_translations('plantes-medicinales', 'it', 'Piante medicinali');

            -- Level 2: extraits-naturels
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('extraits-naturels', 'extraits-naturels', 2, l1_id, 'Extraits naturels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('extraits-naturels', 'fr', 'Extraits naturels');
            PERFORM insert_category_translations('extraits-naturels', 'ar', 'مستخلصات طبيعية');
            PERFORM insert_category_translations('extraits-naturels', 'en', 'Natural Extracts');
            PERFORM insert_category_translations('extraits-naturels', 'de', 'Natürliche Extrakte');
            PERFORM insert_category_translations('extraits-naturels', 'es', 'Extractos naturales');
            PERFORM insert_category_translations('extraits-naturels', 'it', 'Estratti naturali');

            -- Level 2: tisanes-sante
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tisanes-sante', 'tisanes-sante', 2, l1_id, 'Tisanes santé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tisanes-sante', 'fr', 'Tisanes santé');
            PERFORM insert_category_translations('tisanes-sante', 'ar', 'شاي صحي');
            PERFORM insert_category_translations('tisanes-sante', 'en', 'Health Teas');
            PERFORM insert_category_translations('tisanes-sante', 'de', 'Gesundheitstees');
            PERFORM insert_category_translations('tisanes-sante', 'es', 'Infusiones saludables');
            PERFORM insert_category_translations('tisanes-sante', 'it', 'Tisane salutari');

            -- Level 2: complements-naturels
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('complements-naturels', 'complements-naturels', 2, l1_id, 'Compléments naturels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('complements-naturels', 'fr', 'Compléments naturels');
            PERFORM insert_category_translations('complements-naturels', 'ar', 'مكملات طبيعية');
            PERFORM insert_category_translations('complements-naturels', 'en', 'Natural Supplements');
            PERFORM insert_category_translations('complements-naturels', 'de', 'Natürliche Nahrungsergänzung');
            PERFORM insert_category_translations('complements-naturels', 'es', 'Complementos naturales');
            PERFORM insert_category_translations('complements-naturels', 'it', 'Integratori naturali');

            -- Level 2: poudres-de-plantes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('poudres-de-plantes', 'poudres-de-plantes', 2, l1_id, 'Poudres de plantes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('poudres-de-plantes', 'fr', 'Poudres de plantes');
            PERFORM insert_category_translations('poudres-de-plantes', 'ar', 'مساحيق نباتية');
            PERFORM insert_category_translations('poudres-de-plantes', 'en', 'Plant Powders');
            PERFORM insert_category_translations('poudres-de-plantes', 'de', 'Pflanzenpulver');
            PERFORM insert_category_translations('poudres-de-plantes', 'es', 'Polvos de plantas');
            PERFORM insert_category_translations('poudres-de-plantes', 'it', 'Polveri di piante');

            -- Level 2: gelules-phytotherapie
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gelules-phytotherapie', 'gelules-phytotherapie', 2, l1_id, 'Gélules phytothérapie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gelules-phytotherapie', 'fr', 'Gélules phytothérapie');
            PERFORM insert_category_translations('gelules-phytotherapie', 'ar', 'كبسولات عشبية');
            PERFORM insert_category_translations('gelules-phytotherapie', 'en', 'Phytotherapy Capsules');
            PERFORM insert_category_translations('gelules-phytotherapie', 'de', 'Phytotherapie-Kapseln');
            PERFORM insert_category_translations('gelules-phytotherapie', 'es', 'Cápsulas de fitoterapia');
            PERFORM insert_category_translations('gelules-phytotherapie', 'it', 'Capsule di fitoterapia');

        -- Level 1: sante-generale
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sante-generale', 'sante-generale', 1, root_id, 'Santé générale')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('sante-generale', 'fr', 'Santé générale');
        PERFORM insert_category_translations('sante-generale', 'ar', 'الصحة العامة');
        PERFORM insert_category_translations('sante-generale', 'en', 'General Health');
        PERFORM insert_category_translations('sante-generale', 'de', 'Allgemeine Gesundheit');
        PERFORM insert_category_translations('sante-generale', 'es', 'Salud general');
        PERFORM insert_category_translations('sante-generale', 'it', 'Salute generale');

            -- Level 2: vitamines
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vitamines', 'vitamines', 2, l1_id, 'Vitamines')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('vitamines', 'fr', 'Vitamines');
            PERFORM insert_category_translations('vitamines', 'ar', 'فيتامينات');
            PERFORM insert_category_translations('vitamines', 'en', 'Vitamins');
            PERFORM insert_category_translations('vitamines', 'de', 'Vitamine');
            PERFORM insert_category_translations('vitamines', 'es', 'Vitaminas');
            PERFORM insert_category_translations('vitamines', 'it', 'Vitamine');

            -- Level 2: complements-alimentaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('complements-alimentaires', 'complements-alimentaires', 2, l1_id, 'Compléments alimentaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('complements-alimentaires', 'fr', 'Compléments alimentaires');
            PERFORM insert_category_translations('complements-alimentaires', 'ar', 'مكملات غذائية');
            PERFORM insert_category_translations('complements-alimentaires', 'en', 'Food Supplements');
            PERFORM insert_category_translations('complements-alimentaires', 'de', 'Nahrungsergänzung');
            PERFORM insert_category_translations('complements-alimentaires', 'es', 'Complementos alimenticios');
            PERFORM insert_category_translations('complements-alimentaires', 'it', 'Integratori alimentari');

            -- Level 2: mineraux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mineraux', 'mineraux', 2, l1_id, 'Minéraux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mineraux', 'fr', 'Minéraux');
            PERFORM insert_category_translations('mineraux', 'ar', 'معادن');
            PERFORM insert_category_translations('mineraux', 'en', 'Minerals');
            PERFORM insert_category_translations('mineraux', 'de', 'Mineralien');
            PERFORM insert_category_translations('mineraux', 'es', 'Minerales');
            PERFORM insert_category_translations('mineraux', 'it', 'Minerali');

            -- Level 2: probiotiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('probiotiques', 'probiotiques', 2, l1_id, 'Probiotiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('probiotiques', 'fr', 'Probiotiques');
            PERFORM insert_category_translations('probiotiques', 'ar', 'بروبيوتيك');
            PERFORM insert_category_translations('probiotiques', 'en', 'Probiotics');
            PERFORM insert_category_translations('probiotiques', 'de', 'Probiotika');
            PERFORM insert_category_translations('probiotiques', 'es', 'Probióticos');
            PERFORM insert_category_translations('probiotiques', 'it', 'Probiotici');

            -- Level 2: produits-immunite
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-immunite', 'produits-immunite', 2, l1_id, 'Produits immunité')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('produits-immunite', 'fr', 'Produits immunité');
            PERFORM insert_category_translations('produits-immunite', 'ar', 'تقوية المناعة');
            PERFORM insert_category_translations('produits-immunite', 'en', 'Immunity Products');
            PERFORM insert_category_translations('produits-immunite', 'de', 'Immunsystem-Produkte');
            PERFORM insert_category_translations('produits-immunite', 'es', 'Productos inmunidad');
            PERFORM insert_category_translations('produits-immunite', 'it', 'Prodotti immunità');

            -- Level 2: antioxydants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('antioxydants', 'antioxydants', 2, l1_id, 'Antioxydants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('antioxydants', 'fr', 'Antioxydants');
            PERFORM insert_category_translations('antioxydants', 'ar', 'مضادات الأكسدة');
            PERFORM insert_category_translations('antioxydants', 'en', 'Antioxidants');
            PERFORM insert_category_translations('antioxydants', 'de', 'Antioxidantien');
            PERFORM insert_category_translations('antioxydants', 'es', 'Antioxidantes');
            PERFORM insert_category_translations('antioxydants', 'it', 'Antiossidanti');

            -- Level 2: omega-3
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('omega-3', 'omega-3', 2, l1_id, 'Oméga-3')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('omega-3', 'fr', 'Oméga-3');
            PERFORM insert_category_translations('omega-3', 'ar', 'أوميغا-3');
            PERFORM insert_category_translations('omega-3', 'en', 'Omega-3');
            PERFORM insert_category_translations('omega-3', 'de', 'Omega-3');
            PERFORM insert_category_translations('omega-3', 'es', 'Omega-3');
            PERFORM insert_category_translations('omega-3', 'it', 'Omega-3');

            -- Level 2: produits-detox
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-detox', 'produits-detox', 2, l1_id, 'Produits détox')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('produits-detox', 'fr', 'Produits détox');
            PERFORM insert_category_translations('produits-detox', 'ar', 'منظفات الجسم');
            PERFORM insert_category_translations('produits-detox', 'en', 'Detox Products');
            PERFORM insert_category_translations('produits-detox', 'de', 'Detox-Produkte');
            PERFORM insert_category_translations('produits-detox', 'es', 'Productos detox');
            PERFORM insert_category_translations('produits-detox', 'it', 'Prodotti detox');

            -- Level 2: supplements-sportifs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('supplements-sportifs', 'supplements-sportifs', 2, l1_id, 'Suppléments sportifs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('supplements-sportifs', 'fr', 'Suppléments sportifs');
            PERFORM insert_category_translations('supplements-sportifs', 'ar', 'مكملات رياضية');
            PERFORM insert_category_translations('supplements-sportifs', 'en', 'Sports Supplements');
            PERFORM insert_category_translations('supplements-sportifs', 'de', 'Sport-Supplements');
            PERFORM insert_category_translations('supplements-sportifs', 'es', 'Suplementos deportivos');
            PERFORM insert_category_translations('supplements-sportifs', 'it', 'Integratori sportivi');

        -- Level 1: medicaments-sans-ordonnance
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('medicaments-sans-ordonnance', 'medicaments-sans-ordonnance', 1, root_id, 'Médicaments sans ordonnance')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('medicaments-sans-ordonnance', 'fr', 'Médicaments sans ordonnance');
        PERFORM insert_category_translations('medicaments-sans-ordonnance', 'ar', 'أدوية بدون وصفة');
        PERFORM insert_category_translations('medicaments-sans-ordonnance', 'en', 'OTC Medicines');
        PERFORM insert_category_translations('medicaments-sans-ordonnance', 'de', 'Arzneien ohne Rezept');
        PERFORM insert_category_translations('medicaments-sans-ordonnance', 'es', 'Medicamentos sin receta');
        PERFORM insert_category_translations('medicaments-sans-ordonnance', 'it', 'Farmaci senza ricetta');

            -- Level 2: antalgiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('antalgiques', 'antalgiques', 2, l1_id, 'Antalgiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('antalgiques', 'fr', 'Antalgiques');
            PERFORM insert_category_translations('antalgiques', 'ar', 'مسكنات');
            PERFORM insert_category_translations('antalgiques', 'en', 'Painkillers');
            PERFORM insert_category_translations('antalgiques', 'de', 'Schmerzmittel');
            PERFORM insert_category_translations('antalgiques', 'es', 'Analgésicos');
            PERFORM insert_category_translations('antalgiques', 'it', 'Antalgici');

            -- Level 2: produits-orl
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-orl', 'produits-orl', 2, l1_id, 'Produits ORL')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('produits-orl', 'fr', 'Produits ORL');
            PERFORM insert_category_translations('produits-orl', 'ar', 'منتجات الأنف والأذن والحنجرة');
            PERFORM insert_category_translations('produits-orl', 'en', 'ENT Products');
            PERFORM insert_category_translations('produits-orl', 'de', 'HNO-Produkte');
            PERFORM insert_category_translations('produits-orl', 'es', 'Productos ORL');
            PERFORM insert_category_translations('produits-orl', 'it', 'Prodotti ORL');

            -- Level 2: digestifs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('digestifs', 'digestifs', 2, l1_id, 'Digestifs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('digestifs', 'fr', 'Digestifs');
            PERFORM insert_category_translations('digestifs', 'ar', 'هضم');
            PERFORM insert_category_translations('digestifs', 'en', 'Digestives');
            PERFORM insert_category_translations('digestifs', 'de', 'Verdauung');
            PERFORM insert_category_translations('digestifs', 'es', 'Digestivos');
            PERFORM insert_category_translations('digestifs', 'it', 'Digestivi');

            -- Level 2: anti-acides
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('anti-acides', 'anti-acides', 2, l1_id, 'Anti-acides')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('anti-acides', 'fr', 'Anti-acides');
            PERFORM insert_category_translations('anti-acides', 'ar', 'مضادات الحموضة');
            PERFORM insert_category_translations('anti-acides', 'en', 'Antacids');
            PERFORM insert_category_translations('anti-acides', 'de', 'Antazida');
            PERFORM insert_category_translations('anti-acides', 'es', 'Antiácidos');
            PERFORM insert_category_translations('anti-acides', 'it', 'Antiacidi');

            -- Level 2: sirops
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sirops', 'sirops', 2, l1_id, 'Sirops')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sirops', 'fr', 'Sirops');
            PERFORM insert_category_translations('sirops', 'ar', 'شرابات');
            PERFORM insert_category_translations('sirops', 'en', 'Syrups');
            PERFORM insert_category_translations('sirops', 'de', 'Sirups');
            PERFORM insert_category_translations('sirops', 'es', 'Jarabes');
            PERFORM insert_category_translations('sirops', 'it', 'Sciroppi');

            -- Level 2: pastilles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pastilles', 'pastilles', 2, l1_id, 'Pastilles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pastilles', 'fr', 'Pastilles');
            PERFORM insert_category_translations('pastilles', 'ar', 'أقراص');
            PERFORM insert_category_translations('pastilles', 'en', 'Lozenges');
            PERFORM insert_category_translations('pastilles', 'de', 'Lutschtabletten');
            PERFORM insert_category_translations('pastilles', 'es', 'Pastillas');
            PERFORM insert_category_translations('pastilles', 'it', 'Pastiglie');

            -- Level 2: antihistaminiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('antihistaminiques', 'antihistaminiques', 2, l1_id, 'Antihistaminiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('antihistaminiques', 'fr', 'Antihistaminiques');
            PERFORM insert_category_translations('antihistaminiques', 'ar', 'مضادات الهيستامين');
            PERFORM insert_category_translations('antihistaminiques', 'en', 'Antihistamines');
            PERFORM insert_category_translations('antihistaminiques', 'de', 'Antihistaminika');
            PERFORM insert_category_translations('antihistaminiques', 'es', 'Antihistamínicos');
            PERFORM insert_category_translations('antihistaminiques', 'it', 'Antistaminici');

            -- Level 2: rhume
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('rhume', 'rhume', 2, l1_id, 'Produits contre le rhume')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('rhume', 'fr', 'Produits contre le rhume');
            PERFORM insert_category_translations('rhume', 'ar', 'نزلات البرد');
            PERFORM insert_category_translations('rhume', 'en', 'Cold Relief');
            PERFORM insert_category_translations('rhume', 'de', 'Erkältung');
            PERFORM insert_category_translations('rhume', 'es', 'Resfriado');
            PERFORM insert_category_translations('rhume', 'it', 'Raffreddore');

        -- Level 1: premiers-secours
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('premiers-secours', 'premiers-secours', 1, root_id, 'Premiers secours')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('premiers-secours', 'fr', 'Premiers secours');
        PERFORM insert_category_translations('premiers-secours', 'ar', 'الإسعافات الأولية');
        PERFORM insert_category_translations('premiers-secours', 'en', 'First Aid');
        PERFORM insert_category_translations('premiers-secours', 'de', 'Erste Hilfe');
        PERFORM insert_category_translations('premiers-secours', 'es', 'Primeros auxilios');
        PERFORM insert_category_translations('premiers-secours', 'it', 'Primo soccorso');

            -- Level 2: pansements
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pansements', 'pansements', 2, l1_id, 'Pansements')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pansements', 'fr', 'Pansements');
            PERFORM insert_category_translations('pansements', 'ar', 'ضمادات');
            PERFORM insert_category_translations('pansements', 'en', 'Bandages');
            PERFORM insert_category_translations('pansements', 'de', 'Pflaster');
            PERFORM insert_category_translations('pansements', 'es', 'Apósitos');
            PERFORM insert_category_translations('pansements', 'it', 'Cerotti');

            -- Level 2: bandes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bandes', 'bandes', 2, l1_id, 'Bandes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bandes', 'fr', 'Bandes');
            PERFORM insert_category_translations('bandes', 'ar', 'شرائط');
            PERFORM insert_category_translations('bandes', 'en', 'Strips');
            PERFORM insert_category_translations('bandes', 'de', 'Streifen');
            PERFORM insert_category_translations('bandes', 'es', 'Bandas');
            PERFORM insert_category_translations('bandes', 'it', 'Strisce');

            -- Level 2: compresses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('compresses', 'compresses', 2, l1_id, 'Compresses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('compresses', 'fr', 'Compresses');
            PERFORM insert_category_translations('compresses', 'ar', 'كمّادات');
            PERFORM insert_category_translations('compresses', 'en', 'Compresses');
            PERFORM insert_category_translations('compresses', 'de', 'Kompressen');
            PERFORM insert_category_translations('compresses', 'es', 'Compresas');
            PERFORM insert_category_translations('compresses', 'it', 'Garze');

            -- Level 2: antiseptiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('antiseptiques', 'antiseptiques', 2, l1_id, 'Antiseptiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('antiseptiques', 'fr', 'Antiseptiques');
            PERFORM insert_category_translations('antiseptiques', 'ar', 'مطهرات');
            PERFORM insert_category_translations('antiseptiques', 'en', 'Antiseptics');
            PERFORM insert_category_translations('antiseptiques', 'de', 'Antiseptika');
            PERFORM insert_category_translations('antiseptiques', 'es', 'Antisépticos');
            PERFORM insert_category_translations('antiseptiques', 'it', 'Antisettici');

            -- Level 2: solutions-iodées
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('solutions-iodées', 'solutions-iodees', 2, l1_id, 'Solutions iodées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('solutions-iodées', 'fr', 'Solutions iodées');
            PERFORM insert_category_translations('solutions-iodées', 'ar', 'محاليل اليود');
            PERFORM insert_category_translations('solutions-iodées', 'en', 'Iodine Solutions');
            PERFORM insert_category_translations('solutions-iodées', 'de', 'Jodlösungen');
            PERFORM insert_category_translations('solutions-iodées', 'es', 'Soluciones yodadas');
            PERFORM insert_category_translations('solutions-iodées', 'it', 'Soluzioni iodate');

            -- Level 2: sprays-cicatrisants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sprays-cicatrisants', 'sprays-cicatrisants', 2, l1_id, 'Sprays cicatrisants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sprays-cicatrisants', 'fr', 'Sprays cicatrisants');
            PERFORM insert_category_translations('sprays-cicatrisants', 'ar', 'بخاخات التئام');
            PERFORM insert_category_translations('sprays-cicatrisants', 'en', 'Healing Sprays');
            PERFORM insert_category_translations('sprays-cicatrisants', 'de', 'Heilsprays');
            PERFORM insert_category_translations('sprays-cicatrisants', 'es', 'Sprays cicatrizantes');
            PERFORM insert_category_translations('sprays-cicatrisants', 'it', 'Spray cicatrizzanti');

            -- Level 2: trousses-premiers-secours
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('trousses-premiers-secours', 'trousses-premiers-secours', 2, l1_id, 'Trousses de premiers secours')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('trousses-premiers-secours', 'fr', 'Trousses de premiers secours');
            PERFORM insert_category_translations('trousses-premiers-secours', 'ar', 'حقائب إسعاف أولي');
            PERFORM insert_category_translations('trousses-premiers-secours', 'en', 'First Aid Kits');
            PERFORM insert_category_translations('trousses-premiers-secours', 'de', 'Erste-Hilfe-Sets');
            PERFORM insert_category_translations('trousses-premiers-secours', 'es', 'Kits de primeros auxilios');
            PERFORM insert_category_translations('trousses-premiers-secours', 'it', 'Kit primo soccorso');

        -- Level 1: materiel-medical-leger
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('materiel-medical-leger', 'materiel-medical-leger', 1, root_id, 'Matériel médical léger')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('materiel-medical-leger', 'fr', 'Matériel médical léger');
        PERFORM insert_category_translations('materiel-medical-leger', 'ar', 'معدات طبية خفيفة');
        PERFORM insert_category_translations('materiel-medical-leger', 'en', 'Light Medical Equipment');
        PERFORM insert_category_translations('materiel-medical-leger', 'de', 'Leichte medizinische Geräte');
        PERFORM insert_category_translations('materiel-medical-leger', 'es', 'Equipo médico ligero');
        PERFORM insert_category_translations('materiel-medical-leger', 'it', 'Strumentazione medica leggera');

            -- Level 2: tensiometres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tensiometres', 'tensiometres', 2, l1_id, 'Tensiomètres')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tensiometres', 'fr', 'Tensiomètres');
            PERFORM insert_category_translations('tensiometres', 'ar', 'أجهزة ضغط');
            PERFORM insert_category_translations('tensiometres', 'en', 'Blood Pressure Monitors');
            PERFORM insert_category_translations('tensiometres', 'de', 'Blutdruckmessgeräte');
            PERFORM insert_category_translations('tensiometres', 'es', 'Tensiómetros');
            PERFORM insert_category_translations('tensiometres', 'it', 'Sfigmomanometri');

            -- Level 2: thermometres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('thermometres', 'thermometres', 2, l1_id, 'Thermomètres')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('thermometres', 'fr', 'Thermomètres');
            PERFORM insert_category_translations('thermometres', 'ar', 'مقاييس حرارة');
            PERFORM insert_category_translations('thermometres', 'en', 'Thermometers');
            PERFORM insert_category_translations('thermometres', 'de', 'Thermometer');
            PERFORM insert_category_translations('thermometres', 'es', 'Termómetros');
            PERFORM insert_category_translations('thermometres', 'it', 'Termometri');

            -- Level 2: glucometres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('glucometres', 'glucometres', 2, l1_id, 'Glucomètres')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('glucometres', 'fr', 'Glucomètres');
            PERFORM insert_category_translations('glucometres', 'ar', 'أجهزة سكر');
            PERFORM insert_category_translations('glucometres', 'en', 'Glucometers');
            PERFORM insert_category_translations('glucometres', 'de', 'Glukometer');
            PERFORM insert_category_translations('glucometres', 'es', 'Glucómetros');
            PERFORM insert_category_translations('glucometres', 'it', 'Glucometri');

            -- Level 2: oxymetres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('oxymetres', 'oxymetres', 2, l1_id, 'Oxymètres')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('oxymetres', 'fr', 'Oxymètres');
            PERFORM insert_category_translations('oxymetres', 'ar', 'أجهزة أكسجة');
            PERFORM insert_category_translations('oxymetres', 'en', 'Oximeters');
            PERFORM insert_category_translations('oxymetres', 'de', 'Oximeter');
            PERFORM insert_category_translations('oxymetres', 'es', 'Oxímetros');
            PERFORM insert_category_translations('oxymetres', 'it', 'Ossimetri');

            -- Level 2: nebuliseurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('nebuliseurs', 'nebuliseurs', 2, l1_id, 'Nébuliseurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('nebuliseurs', 'fr', 'Nébuliseurs');
            PERFORM insert_category_translations('nebuliseurs', 'ar', 'أجهزة رذاذ');
            PERFORM insert_category_translations('nebuliseurs', 'en', 'Nebulizers');
            PERFORM insert_category_translations('nebuliseurs', 'de', 'Vernebler');
            PERFORM insert_category_translations('nebuliseurs', 'es', 'Nebulizadores');
            PERFORM insert_category_translations('nebuliseurs', 'it', 'Nebulizzatori');

            -- Level 2: tests-rapides
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tests-rapides', 'tests-rapides', 2, l1_id, 'Tests rapides')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tests-rapides', 'fr', 'Tests rapides');
            PERFORM insert_category_translations('tests-rapides', 'ar', 'اختبارات سريعة');
            PERFORM insert_category_translations('tests-rapides', 'en', 'Rapid Tests');
            PERFORM insert_category_translations('tests-rapides', 'de', 'Schnelltests');
            PERFORM insert_category_translations('tests-rapides', 'es', 'Pruebas rápidas');
            PERFORM insert_category_translations('tests-rapides', 'it', 'Test rapidi');

            -- Level 2: coussins-chauffants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('coussins-chauffants', 'coussins-chauffants', 2, l1_id, 'Coussins chauffants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('coussins-chauffants', 'fr', 'Coussins chauffants');
            PERFORM insert_category_translations('coussins-chauffants', 'ar', 'وسادات حرارية');
            PERFORM insert_category_translations('coussins-chauffants', 'en', 'Heating Pads');
            PERFORM insert_category_translations('coussins-chauffants', 'de', 'Heizkissen');
            PERFORM insert_category_translations('coussins-chauffants', 'es', 'Cojines térmicos');
            PERFORM insert_category_translations('coussins-chauffants', 'it', 'Cuscini riscaldanti');

            -- Level 2: ceintures-lombaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ceintures-lombaires', 'ceintures-lombaires', 2, l1_id, 'Ceintures lombaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ceintures-lombaires', 'fr', 'Ceintures lombaires');
            PERFORM insert_category_translations('ceintures-lombaires', 'ar', 'أحزمة ظهر');
            PERFORM insert_category_translations('ceintures-lombaires', 'en', 'Lumbar Belts');
            PERFORM insert_category_translations('ceintures-lombaires', 'de', 'Lendenstützgürtel');
            PERFORM insert_category_translations('ceintures-lombaires', 'es', 'Fajas lumbares');
            PERFORM insert_category_translations('ceintures-lombaires', 'it', 'Cinture lombari');

        -- Level 1: hygiene-bucco-dentaire
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('hygiene-bucco-dentaire', 'hygiene-bucco-dentaire', 1, root_id, 'Hygiène bucco-dentaire')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('hygiene-bucco-dentaire', 'fr', 'Hygiène bucco-dentaire');
        PERFORM insert_category_translations('hygiene-bucco-dentaire', 'ar', 'نظافة الفم');
        PERFORM insert_category_translations('hygiene-bucco-dentaire', 'en', 'Oral Hygiene');
        PERFORM insert_category_translations('hygiene-bucco-dentaire', 'de', 'Mundhygiene');
        PERFORM insert_category_translations('hygiene-bucco-dentaire', 'es', 'Higiene bucodental');
        PERFORM insert_category_translations('hygiene-bucco-dentaire', 'it', 'Igiene orale');

            -- Level 2: dentifrices
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('dentifrices', 'dentifrices', 2, l1_id, 'Dentifrices')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('dentifrices', 'fr', 'Dentifrices');
            PERFORM insert_category_translations('dentifrices', 'ar', 'معاجين أسنان');
            PERFORM insert_category_translations('dentifrices', 'en', 'Toothpastes');
            PERFORM insert_category_translations('dentifrices', 'de', 'Zahnpasten');
            PERFORM insert_category_translations('dentifrices', 'es', 'Dentífricos');
            PERFORM insert_category_translations('dentifrices', 'it', 'Dentifrici');

            -- Level 2: bains-de-bouche
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bains-de-bouche', 'bains-de-bouche', 2, l1_id, 'Bains de bouche')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bains-de-bouche', 'fr', 'Bains de bouche');
            PERFORM insert_category_translations('bains-de-bouche', 'ar', 'غسول فم');
            PERFORM insert_category_translations('bains-de-bouche', 'en', 'Mouthwashes');
            PERFORM insert_category_translations('bains-de-bouche', 'de', 'Mundspülungen');
            PERFORM insert_category_translations('bains-de-bouche', 'es', 'Enjuagues bucales');
            PERFORM insert_category_translations('bains-de-bouche', 'it', 'Collutori');

            -- Level 2: brosses-a-dents
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('brosses-a-dents', 'brosses-a-dents', 2, l1_id, 'Brosses à dents')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('brosses-a-dents', 'fr', 'Brosses à dents');
            PERFORM insert_category_translations('brosses-a-dents', 'ar', 'فرش أسنان');
            PERFORM insert_category_translations('brosses-a-dents', 'en', 'Toothbrushes');
            PERFORM insert_category_translations('brosses-a-dents', 'de', 'Zahnbürsten');
            PERFORM insert_category_translations('brosses-a-dents', 'es', 'Cepillos de dientes');
            PERFORM insert_category_translations('brosses-a-dents', 'it', 'Spazzolini da denti');

            -- Level 2: fils-dentaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fils-dentaires', 'fils-dentaires', 2, l1_id, 'Fils dentaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fils-dentaires', 'fr', 'Fils dentaires');
            PERFORM insert_category_translations('fils-dentaires', 'ar', 'خيوط أسنان');
            PERFORM insert_category_translations('fils-dentaires', 'en', 'Dental Floss');
            PERFORM insert_category_translations('fils-dentaires', 'de', 'Zahnseide');
            PERFORM insert_category_translations('fils-dentaires', 'es', 'Hilos dentales');
            PERFORM insert_category_translations('fils-dentaires', 'it', 'Fili interdentali');

            -- Level 2: blanchiment-dentaire
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('blanchiment-dentaire', 'blanchiment-dentaire', 2, l1_id, 'Produits blanchiment dentaire')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('blanchiment-dentaire', 'fr', 'Produits blanchiment dentaire');
            PERFORM insert_category_translations('blanchiment-dentaire', 'ar', 'منتجات تبييض الأسنان');
            PERFORM insert_category_translations('blanchiment-dentaire', 'en', 'Teeth Whitening Products');
            PERFORM insert_category_translations('blanchiment-dentaire', 'de', 'Zahnaufhellungsprodukte');
            PERFORM insert_category_translations('blanchiment-dentaire', 'es', 'Blanqueamiento dental');
            PERFORM insert_category_translations('blanchiment-dentaire', 'it', 'Prodotti sbiancamento denti');

            -- Level 2: kits-orthodontiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('kits-orthodontiques', 'kits-orthodontiques', 2, l1_id, 'Kits orthodontiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('kits-orthodontiques', 'fr', 'Kits orthodontiques');
            PERFORM insert_category_translations('kits-orthodontiques', 'ar', 'أطقم تقويم');
            PERFORM insert_category_translations('kits-orthodontiques', 'en', 'Orthodontic Kits');
            PERFORM insert_category_translations('kits-orthodontiques', 'de', 'Kieferorthopädische Kits');
            PERFORM insert_category_translations('kits-orthodontiques', 'es', 'Kits de ortodoncia');
            PERFORM insert_category_translations('kits-orthodontiques', 'it', 'Kit ortodontici');

        -- Level 1: hygiene-feminine
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('hygiene-feminine', 'hygiene-feminine', 1, root_id, 'Hygiène féminine')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('hygiene-feminine', 'fr', 'Hygiène féminine');
        PERFORM insert_category_translations('hygiene-feminine', 'ar', 'نظافة نسائية');
        PERFORM insert_category_translations('hygiene-feminine', 'en', 'Feminine Hygiene');
        PERFORM insert_category_translations('hygiene-feminine', 'de', 'Damenhygiene');
        PERFORM insert_category_translations('hygiene-feminine', 'es', 'Higiene femenina');
        PERFORM insert_category_translations('hygiene-feminine', 'it', 'Igiene femminile');

            -- Level 2: serviettes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('serviettes', 'serviettes', 2, l1_id, 'Serviettes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('serviettes', 'fr', 'Serviettes');
            PERFORM insert_category_translations('serviettes', 'ar', 'فوط');
            PERFORM insert_category_translations('serviettes', 'en', 'Pads');
            PERFORM insert_category_translations('serviettes', 'de', 'Binden');
            PERFORM insert_category_translations('serviettes', 'es', 'Compresas');
            PERFORM insert_category_translations('serviettes', 'it', 'Assorbenti');

            -- Level 2: tampons
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tampons', 'tampons', 2, l1_id, 'Tampons')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tampons', 'fr', 'Tampons');
            PERFORM insert_category_translations('tampons', 'ar', 'سدادات');
            PERFORM insert_category_translations('tampons', 'en', 'Tampons');
            PERFORM insert_category_translations('tampons', 'de', 'Tampons');
            PERFORM insert_category_translations('tampons', 'es', 'Tampones');
            PERFORM insert_category_translations('tampons', 'it', 'Tamponi');

            -- Level 2: coupes-menstruelles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('coupes-menstruelles', 'coupes-menstruelles', 2, l1_id, 'Coupes menstruelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('coupes-menstruelles', 'fr', 'Coupes menstruelles');
            PERFORM insert_category_translations('coupes-menstruelles', 'ar', 'أكواب حيض');
            PERFORM insert_category_translations('coupes-menstruelles', 'en', 'Menstrual Cups');
            PERFORM insert_category_translations('coupes-menstruelles', 'de', 'Menstruationstassen');
            PERFORM insert_category_translations('coupes-menstruelles', 'es', 'Copas menstruales');
            PERFORM insert_category_translations('coupes-menstruelles', 'it', 'Coppette mestruali');

            -- Level 2: gels-intimes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gels-intimes', 'gels-intimes', 2, l1_id, 'Gels intimes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gels-intimes', 'fr', 'Gels intimes');
            PERFORM insert_category_translations('gels-intimes', 'ar', 'جل حميمي');
            PERFORM insert_category_translations('gels-intimes', 'en', 'Intimate Gels');
            PERFORM insert_category_translations('gels-intimes', 'de', 'Intimgels');
            PERFORM insert_category_translations('gels-intimes', 'es', 'Geles íntimos');
            PERFORM insert_category_translations('gels-intimes', 'it', 'Gel intimi');

            -- Level 2: soins-post-partum
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soins-post-partum', 'soins-post-partum', 2, l1_id, 'Soins post-partum')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('soins-post-partum', 'fr', 'Soins post-partum');
            PERFORM insert_category_translations('soins-post-partum', 'ar', 'رعاية بعد الولادة');
            PERFORM insert_category_translations('soins-post-partum', 'en', 'Postpartum Care');
            PERFORM insert_category_translations('soins-post-partum', 'de', 'Wochenbettpflege');
            PERFORM insert_category_translations('soins-post-partum', 'es', 'Cuidado postparto');
            PERFORM insert_category_translations('soins-post-partum', 'it', 'Cura post-partum');

            -- Level 2: protections-urinaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('protections-urinaires', 'protections-urinaires', 2, l1_id, 'Protections urinaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('protections-urinaires', 'fr', 'Protections urinaires');
            PERFORM insert_category_translations('protections-urinaires', 'ar', 'حماية بولية');
            PERFORM insert_category_translations('protections-urinaires', 'en', 'Urinary Protection');
            PERFORM insert_category_translations('protections-urinaires', 'de', 'Urin-Schutz');
            PERFORM insert_category_translations('protections-urinaires', 'es', 'Protecciones urinarias');
            PERFORM insert_category_translations('protections-urinaires', 'it', 'Protezione urinaria');

        -- Level 1: hygiene-masculine
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('hygiene-masculine', 'hygiene-masculine', 1, root_id, 'Hygiène masculine')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('hygiene-masculine', 'fr', 'Hygiène masculine');
        PERFORM insert_category_translations('hygiene-masculine', 'ar', 'نظافة رجالية');
        PERFORM insert_category_translations('hygiene-masculine', 'en', 'Men''s Hygiene');
        PERFORM insert_category_translations('hygiene-masculine', 'de', 'Herrenhygiene');
        PERFORM insert_category_translations('hygiene-masculine', 'es', 'Higiene masculina');
        PERFORM insert_category_translations('hygiene-masculine', 'it', 'Igiene maschile');

            -- Level 2: soins-barbe
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soins-barbe', 'soins-barbe', 2, l1_id, 'Soins barbe')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('soins-barbe', 'fr', 'Soins barbe');
            PERFORM insert_category_translations('soins-barbe', 'ar', 'عناية اللحية');
            PERFORM insert_category_translations('soins-barbe', 'en', 'Beard Care');
            PERFORM insert_category_translations('soins-barbe', 'de', 'Bartpflege');
            PERFORM insert_category_translations('soins-barbe', 'es', 'Cuidado de barba');
            PERFORM insert_category_translations('soins-barbe', 'it', 'Cura della barba');

            -- Level 2: mousses-a-raser
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mousses-a-raser', 'mousses-a-raser', 2, l1_id, 'Mousses à raser')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mousses-a-raser', 'fr', 'Mousses à raser');
            PERFORM insert_category_translations('mousses-a-raser', 'ar', 'رغوة حلاقة');
            PERFORM insert_category_translations('mousses-a-raser', 'en', 'Shaving Foams');
            PERFORM insert_category_translations('mousses-a-raser', 'de', 'Rasierschäume');
            PERFORM insert_category_translations('mousses-a-raser', 'es', 'Espumas de afeitado');
            PERFORM insert_category_translations('mousses-a-raser', 'it', 'Schiume da barba');

            -- Level 2: gels-de-rasage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gels-de-rasage', 'gels-de-rasage', 2, l1_id, 'Gels de rasage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gels-de-rasage', 'fr', 'Gels de rasage');
            PERFORM insert_category_translations('gels-de-rasage', 'ar', 'جل حلاقة');
            PERFORM insert_category_translations('gels-de-rasage', 'en', 'Shaving Gels');
            PERFORM insert_category_translations('gels-de-rasage', 'de', 'Rasiergele');
            PERFORM insert_category_translations('gels-de-rasage', 'es', 'Geles de afeitado');
            PERFORM insert_category_translations('gels-de-rasage', 'it', 'Gel da barba');

            -- Level 2: huiles-barbe
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('huiles-barbe', 'huiles-barbe', 2, l1_id, 'Huiles barbe')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('huiles-barbe', 'fr', 'Huiles barbe');
            PERFORM insert_category_translations('huiles-barbe', 'ar', 'زيوت اللحية');
            PERFORM insert_category_translations('huiles-barbe', 'en', 'Beard Oils');
            PERFORM insert_category_translations('huiles-barbe', 'de', 'Bartöle');
            PERFORM insert_category_translations('huiles-barbe', 'es', 'Aceites para barba');
            PERFORM insert_category_translations('huiles-barbe', 'it', 'Oli per barba');

            -- Level 2: lotions-apres-rasage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lotions-apres-rasage', 'lotions-apres-rasage', 2, l1_id, 'Lotions après-rasage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lotions-apres-rasage', 'fr', 'Lotions après-rasage');
            PERFORM insert_category_translations('lotions-apres-rasage', 'ar', 'لوشن بعد الحلاقة');
            PERFORM insert_category_translations('lotions-apres-rasage', 'en', 'Aftershave Lotions');
            PERFORM insert_category_translations('lotions-apres-rasage', 'de', 'Aftershave-Lotionen');
            PERFORM insert_category_translations('lotions-apres-rasage', 'es', 'Lociones aftershave');
            PERFORM insert_category_translations('lotions-apres-rasage', 'it', 'Lozioni dopobarba');

            -- Level 2: soins-visage-homme
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soins-visage-homme', 'soins-visage-homme', 2, l1_id, 'Soins visage homme')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('soins-visage-homme', 'fr', 'Soins visage homme');
            PERFORM insert_category_translations('soins-visage-homme', 'ar', 'عناية وجه الرجال');
            PERFORM insert_category_translations('soins-visage-homme', 'en', 'Men''s Face Care');
            PERFORM insert_category_translations('soins-visage-homme', 'de', 'Gesichtspflege Herren');
            PERFORM insert_category_translations('soins-visage-homme', 'es', 'Cuidado facial hombre');
            PERFORM insert_category_translations('soins-visage-homme', 'it', 'Cura viso uomo');

        -- Level 1: materiel-esthetique-pro
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('materiel-esthetique-pro', 'materiel-esthetique-pro', 1, root_id, 'Matériel esthétique professionnel')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('materiel-esthetique-pro', 'fr', 'Matériel esthétique professionnel');
        PERFORM insert_category_translations('materiel-esthetique-pro', 'ar', 'معدات تجميل احترافية');
        PERFORM insert_category_translations('materiel-esthetique-pro', 'en', 'Professional Aesthetic Equipment');
        PERFORM insert_category_translations('materiel-esthetique-pro', 'de', 'Professionelle Ästhetikgeräte');
        PERFORM insert_category_translations('materiel-esthetique-pro', 'es', 'Equipos estéticos profesionales');
        PERFORM insert_category_translations('materiel-esthetique-pro', 'it', 'Attrezzature estetiche professionali');

            -- Level 2: appareils-led
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('appareils-led', 'appareils-led', 2, l1_id, 'Appareils LED')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('appareils-led', 'fr', 'Appareils LED');
            PERFORM insert_category_translations('appareils-led', 'ar', 'أجهزة LED');
            PERFORM insert_category_translations('appareils-led', 'en', 'LED Devices');
            PERFORM insert_category_translations('appareils-led', 'de', 'LED-Geräte');
            PERFORM insert_category_translations('appareils-led', 'es', 'Aparatos LED');
            PERFORM insert_category_translations('appareils-led', 'it', 'Dispositivi LED');

            -- Level 2: appareils-massage-visage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('appareils-massage-visage', 'appareils-massage-visage', 2, l1_id, 'Appareils massage visage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('appareils-massage-visage', 'fr', 'Appareils massage visage');
            PERFORM insert_category_translations('appareils-massage-visage', 'ar', 'أجهزة تدليك الوجه');
            PERFORM insert_category_translations('appareils-massage-visage', 'en', 'Face Massage Devices');
            PERFORM insert_category_translations('appareils-massage-visage', 'de', 'Gesichtsmassagegeräte');
            PERFORM insert_category_translations('appareils-massage-visage', 'es', 'Aparatos masaje facial');
            PERFORM insert_category_translations('appareils-massage-visage', 'it', 'Dispositivi massaggio viso');

            -- Level 2: microdermabrasion
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('microdermabrasion', 'microdermabrasion', 2, l1_id, 'Microdermabrasion')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('microdermabrasion', 'fr', 'Microdermabrasion');
            PERFORM insert_category_translations('microdermabrasion', 'ar', 'تقشير دقيق');
            PERFORM insert_category_translations('microdermabrasion', 'en', 'Microdermabrasion');
            PERFORM insert_category_translations('microdermabrasion', 'de', 'Mikrodermabrasion');
            PERFORM insert_category_translations('microdermabrasion', 'es', 'Microdermoabrasión');
            PERFORM insert_category_translations('microdermabrasion', 'it', 'Microdermoabrasione');

            -- Level 2: epilateurs-pro
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('epilateurs-pro', 'epilateurs-pro', 2, l1_id, 'Épilateurs pro')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('epilateurs-pro', 'fr', 'Épilateurs pro');
            PERFORM insert_category_translations('epilateurs-pro', 'ar', 'آلات إزالة شعر احترافية');
            PERFORM insert_category_translations('epilateurs-pro', 'en', 'Pro Epilators');
            PERFORM insert_category_translations('epilateurs-pro', 'de', 'Profi-Epilierer');
            PERFORM insert_category_translations('epilateurs-pro', 'es', 'Depiladoras pro');
            PERFORM insert_category_translations('epilateurs-pro', 'it', 'Epilatori pro');

            -- Level 2: lits-esthetique
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lits-esthetique', 'lits-esthetique', 2, l1_id, 'Lits esthétique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lits-esthetique', 'fr', 'Lits esthétique');
            PERFORM insert_category_translations('lits-esthetique', 'ar', 'أسرة تجميل');
            PERFORM insert_category_translations('lits-esthetique', 'en', 'Aesthetic Beds');
            PERFORM insert_category_translations('lits-esthetique', 'de', 'Ästhetikliegen');
            PERFORM insert_category_translations('lits-esthetique', 'es', 'Camillas estéticas');
            PERFORM insert_category_translations('lits-esthetique', 'it', 'Lettini estetici');

            -- Level 2: tabourets
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tabourets', 'tabourets', 2, l1_id, 'Tabourets')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tabourets', 'fr', 'Tabourets');
            PERFORM insert_category_translations('tabourets', 'ar', 'مقاعد');
            PERFORM insert_category_translations('tabourets', 'en', 'Stools');
            PERFORM insert_category_translations('tabourets', 'de', 'Hocker');
            PERFORM insert_category_translations('tabourets', 'es', 'Taburetes');
            PERFORM insert_category_translations('tabourets', 'it', 'Sgabelli');

            -- Level 2: sterilisateurs-uv
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sterilisateurs-uv', 'sterilisateurs-uv', 2, l1_id, 'Stérilisateurs UV')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sterilisateurs-uv', 'fr', 'Stérilisateurs UV');
            PERFORM insert_category_translations('sterilisateurs-uv', 'ar', 'مطهرات UV');
            PERFORM insert_category_translations('sterilisateurs-uv', 'en', 'UV Sterilizers');
            PERFORM insert_category_translations('sterilisateurs-uv', 'de', 'UV-Sterilisatoren');
            PERFORM insert_category_translations('sterilisateurs-uv', 'es', 'Esterilizadores UV');
            PERFORM insert_category_translations('sterilisateurs-uv', 'it', 'Sterilizzatori UV');

        -- Level 1: epilation
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('epilation', 'epilation', 1, root_id, 'Épilation')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('epilation', 'fr', 'Épilation');
        PERFORM insert_category_translations('epilation', 'ar', 'إزالة الشعر');
        PERFORM insert_category_translations('epilation', 'en', 'Hair Removal');
        PERFORM insert_category_translations('epilation', 'de', 'Enthaarung');
        PERFORM insert_category_translations('epilation', 'es', 'Depilación');
        PERFORM insert_category_translations('epilation', 'it', 'Epilazione');

            -- Level 2: cire-chaude
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cire-chaude', 'cire-chaude', 2, l1_id, 'Cire chaude')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cire-chaude', 'fr', 'Cire chaude');
            PERFORM insert_category_translations('cire-chaude', 'ar', 'شمع ساخن');
            PERFORM insert_category_translations('cire-chaude', 'en', 'Hot Wax');
            PERFORM insert_category_translations('cire-chaude', 'de', 'Heißwachs');
            PERFORM insert_category_translations('cire-chaude', 'es', 'Cera caliente');
            PERFORM insert_category_translations('cire-chaude', 'it', 'Cera calda');

            -- Level 2: cire-froide
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cire-froide', 'cire-froide', 2, l1_id, 'Cire froide')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cire-froide', 'fr', 'Cire froide');
            PERFORM insert_category_translations('cire-froide', 'ar', 'شمع بارد');
            PERFORM insert_category_translations('cire-froide', 'en', 'Cold Wax');
            PERFORM insert_category_translations('cire-froide', 'de', 'Kaltwachs');
            PERFORM insert_category_translations('cire-froide', 'es', 'Cera fría');
            PERFORM insert_category_translations('cire-froide', 'it', 'Cera fredda');

            -- Level 2: bandes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bandes', 'bandes', 2, l1_id, 'Bandes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bandes', 'fr', 'Bandes');
            PERFORM insert_category_translations('bandes', 'ar', 'شرائط');
            PERFORM insert_category_translations('bandes', 'en', 'Strips');
            PERFORM insert_category_translations('bandes', 'de', 'Streifen');
            PERFORM insert_category_translations('bandes', 'es', 'Bandas');
            PERFORM insert_category_translations('bandes', 'it', 'Strisce');

            -- Level 2: epilateurs-electriques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('epilateurs-electriques', 'epilateurs-electriques', 2, l1_id, 'Épilateurs électriques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('epilateurs-electriques', 'fr', 'Épilateurs électriques');
            PERFORM insert_category_translations('epilateurs-electriques', 'ar', 'آلات إزالة كهربائية');
            PERFORM insert_category_translations('epilateurs-electriques', 'en', 'Electric Epilators');
            PERFORM insert_category_translations('epilateurs-electriques', 'de', 'Elektrische Epilierer');
            PERFORM insert_category_translations('epilateurs-electriques', 'es', 'Depiladoras eléctricas');
            PERFORM insert_category_translations('epilateurs-electriques', 'it', 'Epilatori elettrici');

            -- Level 2: cremes-depilatoires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cremes-depilatoires', 'cremes-depilatoires', 2, l1_id, 'Crèmes dépilatoires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cremes-depilatoires', 'fr', 'Crèmes dépilatoires');
            PERFORM insert_category_translations('cremes-depilatoires', 'ar', 'كريمات إزالة الشعر');
            PERFORM insert_category_translations('cremes-depilatoires', 'en', 'Depilatory Creams');
            PERFORM insert_category_translations('cremes-depilatoires', 'de', 'Enthaarungscremes');
            PERFORM insert_category_translations('cremes-depilatoires', 'es', 'Cremas depilatorias');
            PERFORM insert_category_translations('cremes-depilatoires', 'it', 'Creme depilatorie');

            -- Level 2: kits-de-cire
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('kits-de-cire', 'kits-de-cire', 2, l1_id, 'Kits de cire')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('kits-de-cire', 'fr', 'Kits de cire');
            PERFORM insert_category_translations('kits-de-cire', 'ar', 'مجموعات شمع');
            PERFORM insert_category_translations('kits-de-cire', 'en', 'Wax Kits');
            PERFORM insert_category_translations('kits-de-cire', 'de', 'Wachssets');
            PERFORM insert_category_translations('kits-de-cire', 'es', 'Kits de cera');
            PERFORM insert_category_translations('kits-de-cire', 'it', 'Kit cera');

        -- Level 1: massage-bien-etre
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('massage-bien-etre', 'massage-bien-etre', 1, root_id, 'Produits de massage & bien-être')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('massage-bien-etre', 'fr', 'Produits de massage & bien-être');
        PERFORM insert_category_translations('massage-bien-etre', 'ar', 'التدليك والرفاهية');
        PERFORM insert_category_translations('massage-bien-etre', 'en', 'Massage & Wellness');
        PERFORM insert_category_translations('massage-bien-etre', 'de', 'Massage & Wohlbefinden');
        PERFORM insert_category_translations('massage-bien-etre', 'es', 'Masaje & Bienestar');
        PERFORM insert_category_translations('massage-bien-etre', 'it', 'Massaggio & Benessere');

            -- Level 2: huiles-massage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('huiles-massage', 'huiles-massage', 2, l1_id, 'Huiles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('huiles-massage', 'fr', 'Huiles');
            PERFORM insert_category_translations('huiles-massage', 'ar', 'زيوت');
            PERFORM insert_category_translations('huiles-massage', 'en', 'Oils');
            PERFORM insert_category_translations('huiles-massage', 'de', 'Öle');
            PERFORM insert_category_translations('huiles-massage', 'es', 'Aceites');
            PERFORM insert_category_translations('huiles-massage', 'it', 'Oli');

            -- Level 2: cremes-chauffantes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cremes-chauffantes', 'cremes-chauffantes', 2, l1_id, 'Crèmes chauffantes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cremes-chauffantes', 'fr', 'Crèmes chauffantes');
            PERFORM insert_category_translations('cremes-chauffantes', 'ar', 'كريمات تسخين');
            PERFORM insert_category_translations('cremes-chauffantes', 'en', 'Heating Creams');
            PERFORM insert_category_translations('cremes-chauffantes', 'de', 'Wärmende Cremes');
            PERFORM insert_category_translations('cremes-chauffantes', 'es', 'Cremas térmicas');
            PERFORM insert_category_translations('cremes-chauffantes', 'it', 'Creme riscaldanti');

            -- Level 2: balles-massage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('balles-massage', 'balles-massage', 2, l1_id, 'Balles de massage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('balles-massage', 'fr', 'Balles de massage');
            PERFORM insert_category_translations('balles-massage', 'ar', 'كرات تدليك');
            PERFORM insert_category_translations('balles-massage', 'en', 'Massage Balls');
            PERFORM insert_category_translations('balles-massage', 'de', 'Massagebälle');
            PERFORM insert_category_translations('balles-massage', 'es', 'Pelotas de masaje');
            PERFORM insert_category_translations('balles-massage', 'it', 'Palline massaggio');

            -- Level 2: appareils-anti-douleur
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('appareils-anti-douleur', 'appareils-anti-douleur', 2, l1_id, 'Appareils anti-douleur')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('appareils-anti-douleur', 'fr', 'Appareils anti-douleur');
            PERFORM insert_category_translations('appareils-anti-douleur', 'ar', 'أجهزة تخفيف الألم');
            PERFORM insert_category_translations('appareils-anti-douleur', 'en', 'Pain Relief Devices');
            PERFORM insert_category_translations('appareils-anti-douleur', 'de', 'Schmerzlindernde Geräte');
            PERFORM insert_category_translations('appareils-anti-douleur', 'es', 'Dispositivos antidolor');
            PERFORM insert_category_translations('appareils-anti-douleur', 'it', 'Dispositivi antidolore');

            -- Level 2: masseurs-electriques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('masseurs-electriques', 'masseurs-electriques', 2, l1_id, 'Masseurs électriques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('masseurs-electriques', 'fr', 'Masseurs électriques');
            PERFORM insert_category_translations('masseurs-electriques', 'ar', 'مدلكات كهربائية');
            PERFORM insert_category_translations('masseurs-electriques', 'en', 'Electric Massagers');
            PERFORM insert_category_translations('masseurs-electriques', 'de', 'Elektrische Massierer');
            PERFORM insert_category_translations('masseurs-electriques', 'es', 'Masajeadores eléctricos');
            PERFORM insert_category_translations('masseurs-electriques', 'it', 'Massaggiatori elettrici');

        -- Level 1: beaute-du-regard
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('beaute-du-regard', 'beaute-du-regard', 1, root_id, 'Beauté du regard')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('beaute-du-regard', 'fr', 'Beauté du regard');
        PERFORM insert_category_translations('beaute-du-regard', 'ar', 'جمال العيون');
        PERFORM insert_category_translations('beaute-du-regard', 'en', 'Eye Beauty');
        PERFORM insert_category_translations('beaute-du-regard', 'de', 'Augenschönheit');
        PERFORM insert_category_translations('beaute-du-regard', 'es', 'Belleza de la mirada');
        PERFORM insert_category_translations('beaute-du-regard', 'it', 'Bellezza dello sguardo');

            -- Level 2: extensions-de-cils
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('extensions-de-cils', 'extensions-de-cils', 2, l1_id, 'Extensions de cils')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('extensions-de-cils', 'fr', 'Extensions de cils');
            PERFORM insert_category_translations('extensions-de-cils', 'ar', 'رموش صناعية');
            PERFORM insert_category_translations('extensions-de-cils', 'en', 'Eyelash Extensions');
            PERFORM insert_category_translations('extensions-de-cils', 'de', 'Wimpernverlängerungen');
            PERFORM insert_category_translations('extensions-de-cils', 'es', 'Extensiones de pestañas');
            PERFORM insert_category_translations('extensions-de-cils', 'it', 'Extension ciglia');

            -- Level 2: colles-pour-cils
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('colles-pour-cils', 'colles-pour-cils', 2, l1_id, 'Colles pour cils')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('colles-pour-cils', 'fr', 'Colles pour cils');
            PERFORM insert_category_translations('colles-pour-cils', 'ar', 'مواد لاصقة للرموش');
            PERFORM insert_category_translations('colles-pour-cils', 'en', 'Eyelash Glues');
            PERFORM insert_category_translations('colles-pour-cils', 'de', 'Wimpernkleber');
            PERFORM insert_category_translations('colles-pour-cils', 'es', 'Pegamentos de pestañas');
            PERFORM insert_category_translations('colles-pour-cils', 'it', 'Colla per ciglia');

            -- Level 2: serums-cils
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('serums-cils', 'serums-cils', 2, l1_id, 'Sérums cils')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('serums-cils', 'fr', 'Sérums cils');
            PERFORM insert_category_translations('serums-cils', 'ar', 'سيروم للرموش');
            PERFORM insert_category_translations('serums-cils', 'en', 'Eyelash Serums');
            PERFORM insert_category_translations('serums-cils', 'de', 'Wimpernseren');
            PERFORM insert_category_translations('serums-cils', 'es', 'Sérums de pestañas');
            PERFORM insert_category_translations('serums-cils', 'it', 'Sieri ciglia');

            -- Level 2: faux-cils
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('faux-cils', 'faux-cils', 2, l1_id, 'Faux cils')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('faux-cils', 'fr', 'Faux cils');
            PERFORM insert_category_translations('faux-cils', 'ar', 'رموش مزيفة');
            PERFORM insert_category_translations('faux-cils', 'en', 'False Lashes');
            PERFORM insert_category_translations('faux-cils', 'de', 'Künstliche Wimpern');
            PERFORM insert_category_translations('faux-cils', 'es', 'Pestañas postizas');
            PERFORM insert_category_translations('faux-cils', 'it', 'Ciglia finte');

            -- Level 2: kits-professionnels
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('kits-professionnels', 'kits-professionnels', 2, l1_id, 'Kits professionnels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('kits-professionnels', 'fr', 'Kits professionnels');
            PERFORM insert_category_translations('kits-professionnels', 'ar', 'مجموعات احترافية');
            PERFORM insert_category_translations('kits-professionnels', 'en', 'Professional Kits');
            PERFORM insert_category_translations('kits-professionnels', 'de', 'Professionelle Kits');
            PERFORM insert_category_translations('kits-professionnels', 'es', 'Kits profesionales');
            PERFORM insert_category_translations('kits-professionnels', 'it', 'Kit professionali');

        -- Level 1: produits-spa-domicile
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-spa-domicile', 'produits-spa-domicile', 1, root_id, 'Produits spa à domicile')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('produits-spa-domicile', 'fr', 'Produits spa à domicile');
        PERFORM insert_category_translations('produits-spa-domicile', 'ar', 'منتجات السبا المنزلية');
        PERFORM insert_category_translations('produits-spa-domicile', 'en', 'Home Spa Products');
        PERFORM insert_category_translations('produits-spa-domicile', 'de', 'Home-Spa-Produkte');
        PERFORM insert_category_translations('produits-spa-domicile', 'es', 'Productos de spa en casa');
        PERFORM insert_category_translations('produits-spa-domicile', 'it', 'Prodotti spa a casa');

            -- Level 2: diffuseurs-huiles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('diffuseurs-huiles', 'diffuseurs-huiles', 2, l1_id, 'Diffuseurs huiles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('diffuseurs-huiles', 'fr', 'Diffuseurs huiles');
            PERFORM insert_category_translations('diffuseurs-huiles', 'ar', 'ناشرات زيوت');
            PERFORM insert_category_translations('diffuseurs-huiles', 'en', 'Oil Diffusers');
            PERFORM insert_category_translations('diffuseurs-huiles', 'de', 'Öldiffusoren');
            PERFORM insert_category_translations('diffuseurs-huiles', 'es', 'Difusores de aceites');
            PERFORM insert_category_translations('diffuseurs-huiles', 'it', 'Diffusori oli');

            -- Level 2: bougies-parfumees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bougies-parfumees', 'bougies-parfumees', 2, l1_id, 'Bougies parfumées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bougies-parfumees', 'fr', 'Bougies parfumées');
            PERFORM insert_category_translations('bougies-parfumees', 'ar', 'شموع معطرة');
            PERFORM insert_category_translations('bougies-parfumees', 'en', 'Scented Candles');
            PERFORM insert_category_translations('bougies-parfumees', 'de', 'Duftkerzen');
            PERFORM insert_category_translations('bougies-parfumees', 'es', 'Velas perfumadas');
            PERFORM insert_category_translations('bougies-parfumees', 'it', 'Candele profumate');

            -- Level 2: sels-de-bain-spa
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sels-de-bain-spa', 'sels-de-bain-spa', 2, l1_id, 'Sels de bain')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sels-de-bain-spa', 'fr', 'Sels de bain');
            PERFORM insert_category_translations('sels-de-bain-spa', 'ar', 'أملاح الاستحمام');
            PERFORM insert_category_translations('sels-de-bain-spa', 'en', 'Bath Salts');
            PERFORM insert_category_translations('sels-de-bain-spa', 'de', 'Badesalze');
            PERFORM insert_category_translations('sels-de-bain-spa', 'es', 'Sales de baño');
            PERFORM insert_category_translations('sels-de-bain-spa', 'it', 'Sali da bagno');

            -- Level 2: gommages-spa
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gommages-spa', 'gommages-spa', 2, l1_id, 'Gommages spa')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gommages-spa', 'fr', 'Gommages spa');
            PERFORM insert_category_translations('gommages-spa', 'ar', 'مقشرات سبا');
            PERFORM insert_category_translations('gommages-spa', 'en', 'Spa Scrubs');
            PERFORM insert_category_translations('gommages-spa', 'de', 'Spa-Peelings');
            PERFORM insert_category_translations('gommages-spa', 'es', 'Exfoliantes spa');
            PERFORM insert_category_translations('gommages-spa', 'it', 'Scrub spa');

            -- Level 2: soins-relaxants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soins-relaxants', 'soins-relaxants', 2, l1_id, 'Soins relaxants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('soins-relaxants', 'fr', 'Soins relaxants');
            PERFORM insert_category_translations('soins-relaxants', 'ar', 'علاجات مهدئة');
            PERFORM insert_category_translations('soins-relaxants', 'en', 'Relaxing Care');
            PERFORM insert_category_translations('soins-relaxants', 'de', 'Entspannende Pflege');
            PERFORM insert_category_translations('soins-relaxants', 'es', 'Cuidados relajantes');
            PERFORM insert_category_translations('soins-relaxants', 'it', 'Cure rilassanti');

        -- Level 1: dermatologie-specialisee
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('dermatologie-specialisee', 'dermatologie-specialisee', 1, root_id, 'Produits dermatologiques spécialisés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('dermatologie-specialisee', 'fr', 'Produits dermatologiques spécialisés');
        PERFORM insert_category_translations('dermatologie-specialisee', 'ar', 'منتجات جلدية متخصصة');
        PERFORM insert_category_translations('dermatologie-specialisee', 'en', 'Specialized Dermatological Products');
        PERFORM insert_category_translations('dermatologie-specialisee', 'de', 'Spezialisierte Dermatologie');
        PERFORM insert_category_translations('dermatologie-specialisee', 'es', 'Dermatología especializada');
        PERFORM insert_category_translations('dermatologie-specialisee', 'it', 'Dermatologia specializzata');

            -- Level 2: cremes-medicales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cremes-medicales', 'cremes-medicales', 2, l1_id, 'Crèmes médicales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cremes-medicales', 'fr', 'Crèmes médicales');
            PERFORM insert_category_translations('cremes-medicales', 'ar', 'كريمات طبية');
            PERFORM insert_category_translations('cremes-medicales', 'en', 'Medical Creams');
            PERFORM insert_category_translations('cremes-medicales', 'de', 'Medizinische Cremes');
            PERFORM insert_category_translations('cremes-medicales', 'es', 'Cremas médicas');
            PERFORM insert_category_translations('cremes-medicales', 'it', 'Creme medicali');

            -- Level 2: peaux-sensibles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('peaux-sensibles', 'peaux-sensibles', 2, l1_id, 'Soins pour peaux sensibles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('peaux-sensibles', 'fr', 'Soins pour peaux sensibles');
            PERFORM insert_category_translations('peaux-sensibles', 'ar', 'عناية بالبشرة الحساسة');
            PERFORM insert_category_translations('peaux-sensibles', 'en', 'Sensitive Skin Care');
            PERFORM insert_category_translations('peaux-sensibles', 'de', 'Empfindliche Haut');
            PERFORM insert_category_translations('peaux-sensibles', 'es', 'Piel sensible');
            PERFORM insert_category_translations('peaux-sensibles', 'it', 'Pelli sensibili');

            -- Level 2: produits-hypoallergenique
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-hypoallergenique', 'produits-hypoallergenique', 2, l1_id, 'Produits hypoallergéniques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('produits-hypoallergenique', 'fr', 'Produits hypoallergéniques');
            PERFORM insert_category_translations('produits-hypoallergenique', 'ar', 'منتجات منخفضة التحسس');
            PERFORM insert_category_translations('produits-hypoallergenique', 'en', 'Hypoallergenic Products');
            PERFORM insert_category_translations('produits-hypoallergenique', 'de', 'Hypoallergene Produkte');
            PERFORM insert_category_translations('produits-hypoallergenique', 'es', 'Productos hipoalergénicos');
            PERFORM insert_category_translations('produits-hypoallergenique', 'it', 'Prodotti ipoallergenici');

            -- Level 2: traitements-non-prescrits
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('traitements-non-prescrits', 'traitements-non-prescrits', 2, l1_id, 'Traitements dermatologiques non prescrits')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('traitements-non-prescrits', 'fr', 'Traitements dermatologiques non prescrits');
            PERFORM insert_category_translations('traitements-non-prescrits', 'ar', 'علاجات غير موصوفة');
            PERFORM insert_category_translations('traitements-non-prescrits', 'en', 'Non-prescribed Treatments');
            PERFORM insert_category_translations('traitements-non-prescrits', 'de', 'Nicht verschriebene Behandlungen');
            PERFORM insert_category_translations('traitements-non-prescrits', 'es', 'Tratamientos no prescritos');
            PERFORM insert_category_translations('traitements-non-prescrits', 'it', 'Trattamenti non prescritti');

        -- Level 1: nutrition-beaute
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('nutrition-beaute', 'nutrition-beaute', 1, root_id, 'Nutrition beauté')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('nutrition-beaute', 'fr', 'Nutrition beauté');
        PERFORM insert_category_translations('nutrition-beaute', 'ar', 'تغذية الجمال');
        PERFORM insert_category_translations('nutrition-beaute', 'en', 'Beauty Nutrition');
        PERFORM insert_category_translations('nutrition-beaute', 'de', 'Schönheitsnahrung');
        PERFORM insert_category_translations('nutrition-beaute', 'es', 'Nutrición de belleza');
        PERFORM insert_category_translations('nutrition-beaute', 'it', 'Nutrizione bellezza');

            -- Level 2: collagene
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('collagene', 'collagene', 2, l1_id, 'Collagène')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('collagene', 'fr', 'Collagène');
            PERFORM insert_category_translations('collagene', 'ar', 'كولاجين');
            PERFORM insert_category_translations('collagene', 'en', 'Collagen');
            PERFORM insert_category_translations('collagene', 'de', 'Kollagen');
            PERFORM insert_category_translations('collagene', 'es', 'Colágeno');
            PERFORM insert_category_translations('collagene', 'it', 'Collagene');

            -- Level 2: acide-hyaluronique
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('acide-hyaluronique', 'acide-hyaluronique', 2, l1_id, 'Acide hyaluronique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('acide-hyaluronique', 'fr', 'Acide hyaluronique');
            PERFORM insert_category_translations('acide-hyaluronique', 'ar', 'حمض الهيالورونيك');
            PERFORM insert_category_translations('acide-hyaluronique', 'en', 'Hyaluronic Acid');
            PERFORM insert_category_translations('acide-hyaluronique', 'de', 'Hyaluronsäure');
            PERFORM insert_category_translations('acide-hyaluronique', 'es', 'Ácido hialurónico');
            PERFORM insert_category_translations('acide-hyaluronique', 'it', 'Acido ialuronico');

            -- Level 2: complements-peau-ongles-cheveux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('complements-peau-ongles-cheveux', 'complements-peau-ongles-cheveux', 2, l1_id, 'Compléments peau/ongles/cheveux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('complements-peau-ongles-cheveux', 'fr', 'Compléments peau/ongles/cheveux');
            PERFORM insert_category_translations('complements-peau-ongles-cheveux', 'ar', 'مكملات للبشرة والأظافر والشعر');
            PERFORM insert_category_translations('complements-peau-ongles-cheveux', 'en', 'Skin/Nails/Hair Supplements');
            PERFORM insert_category_translations('complements-peau-ongles-cheveux', 'de', 'Haut/Nägel/Haare Supplements');
            PERFORM insert_category_translations('complements-peau-ongles-cheveux', 'es', 'Suplementos piel/uñas/cabello');
            PERFORM insert_category_translations('complements-peau-ongles-cheveux', 'it', 'Integratori pelle/unghie/capelli');

            -- Level 2: gummies-beaute
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gummies-beaute', 'gummies-beaute', 2, l1_id, 'Gummies beauté')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gummies-beaute', 'fr', 'Gummies beauté');
            PERFORM insert_category_translations('gummies-beaute', 'ar', 'حلويات جمالية');
            PERFORM insert_category_translations('gummies-beaute', 'en', 'Beauty Gummies');
            PERFORM insert_category_translations('gummies-beaute', 'de', 'Beauty-Gummis');
            PERFORM insert_category_translations('gummies-beaute', 'es', 'Gominolas de belleza');
            PERFORM insert_category_translations('gummies-beaute', 'it', 'Caramelle bellezza');

        -- Level 1: accessoires-salle-de-bain
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-salle-de-bain', 'accessoires-salle-de-bain', 1, root_id, 'Accessoires salle de bain')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('accessoires-salle-de-bain', 'fr', 'Accessoires salle de bain');
        PERFORM insert_category_translations('accessoires-salle-de-bain', 'ar', 'إكسسوارات الحمام');
        PERFORM insert_category_translations('accessoires-salle-de-bain', 'en', 'Bathroom Accessories');
        PERFORM insert_category_translations('accessoires-salle-de-bain', 'de', 'Badezimmer-Accessoires');
        PERFORM insert_category_translations('accessoires-salle-de-bain', 'es', 'Accesorios de baño');
        PERFORM insert_category_translations('accessoires-salle-de-bain', 'it', 'Accessori bagno');

            -- Level 2: porte-savons
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('porte-savons', 'porte-savons', 2, l1_id, 'Porte-savons')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('porte-savons', 'fr', 'Porte-savons');
            PERFORM insert_category_translations('porte-savons', 'ar', 'حاملات صابون');
            PERFORM insert_category_translations('porte-savons', 'en', 'Soap Dishes');
            PERFORM insert_category_translations('porte-savons', 'de', 'Seifenhalter');
            PERFORM insert_category_translations('porte-savons', 'es', 'Jaboneras');
            PERFORM insert_category_translations('porte-savons', 'it', 'Portasapone');

            -- Level 2: rangements-cosmetiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('rangements-cosmetiques', 'rangements-cosmetiques', 2, l1_id, 'Rangements cosmétiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('rangements-cosmetiques', 'fr', 'Rangements cosmétiques');
            PERFORM insert_category_translations('rangements-cosmetiques', 'ar', 'تخزين مستحضرات التجميل');
            PERFORM insert_category_translations('rangements-cosmetiques', 'en', 'Cosmetics Storage');
            PERFORM insert_category_translations('rangements-cosmetiques', 'de', 'Kosmetikaufbewahrung');
            PERFORM insert_category_translations('rangements-cosmetiques', 'es', 'Organizadores cosméticos');
            PERFORM insert_category_translations('rangements-cosmetiques', 'it', 'Organizer cosmetici');

            -- Level 2: organisateurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('organisateurs', 'organisateurs', 2, l1_id, 'Organisateurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('organisateurs', 'fr', 'Organisateurs');
            PERFORM insert_category_translations('organisateurs', 'ar', 'منظمات');
            PERFORM insert_category_translations('organisateurs', 'en', 'Organizers');
            PERFORM insert_category_translations('organisateurs', 'de', 'Organizer');
            PERFORM insert_category_translations('organisateurs', 'es', 'Organizadores');
            PERFORM insert_category_translations('organisateurs', 'it', 'Organizer');

            -- Level 2: flacons-rechargeables
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('flacons-rechargeables', 'flacons-rechargeables', 2, l1_id, 'Flacons rechargeables')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('flacons-rechargeables', 'fr', 'Flacons rechargeables');
            PERFORM insert_category_translations('flacons-rechargeables', 'ar', 'عبوات قابلة لإعادة التعبئة');
            PERFORM insert_category_translations('flacons-rechargeables', 'en', 'Refillable Bottles');
            PERFORM insert_category_translations('flacons-rechargeables', 'de', 'Nachfüllflaschen');
            PERFORM insert_category_translations('flacons-rechargeables', 'es', 'Botellas recargables');
            PERFORM insert_category_translations('flacons-rechargeables', 'it', 'Flaconi ricaricabili');

            -- Level 2: distributeurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('distributeurs', 'distributeurs', 2, l1_id, 'Distributeurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('distributeurs', 'fr', 'Distributeurs');
            PERFORM insert_category_translations('distributeurs', 'ar', 'موزعات');
            PERFORM insert_category_translations('distributeurs', 'en', 'Dispensers');
            PERFORM insert_category_translations('distributeurs', 'de', 'Spender');
            PERFORM insert_category_translations('distributeurs', 'es', 'Dispensadores');
            PERFORM insert_category_translations('distributeurs', 'it', 'Distributori');

        -- Level 1: blanchiment-dentaire
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('blanchiment-dentaire', 'blanchiment-dentaire', 1, root_id, 'Produits blanchiment dentaire')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('blanchiment-dentaire', 'fr', 'Produits blanchiment dentaire');
        PERFORM insert_category_translations('blanchiment-dentaire', 'ar', 'منتجات تبييض الأسنان');
        PERFORM insert_category_translations('blanchiment-dentaire', 'en', 'Teeth Whitening Products');
        PERFORM insert_category_translations('blanchiment-dentaire', 'de', 'Zahnaufhellungsprodukte');
        PERFORM insert_category_translations('blanchiment-dentaire', 'es', 'Blanqueamiento dental');
        PERFORM insert_category_translations('blanchiment-dentaire', 'it', 'Prodotti sbiancamento denti');

            -- Level 2: strips-blanchissants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('strips-blanchissants', 'strips-blanchissants', 2, l1_id, 'Strips blanchissants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('strips-blanchissants', 'fr', 'Strips blanchissants');
            PERFORM insert_category_translations('strips-blanchissants', 'ar', 'شرائط تبييض');
            PERFORM insert_category_translations('strips-blanchissants', 'en', 'Whitening Strips');
            PERFORM insert_category_translations('strips-blanchissants', 'de', 'Aufhellungsstrips');
            PERFORM insert_category_translations('strips-blanchissants', 'es', 'Tiras blanqueadoras');
            PERFORM insert_category_translations('strips-blanchissants', 'it', 'Strisce sbiancanti');

            -- Level 2: gels-blanchissants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gels-blanchissants', 'gels-blanchissants', 2, l1_id, 'Gels blanchissants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gels-blanchissants', 'fr', 'Gels blanchissants');
            PERFORM insert_category_translations('gels-blanchissants', 'ar', 'جل تبييض');
            PERFORM insert_category_translations('gels-blanchissants', 'en', 'Whitening Gels');
            PERFORM insert_category_translations('gels-blanchissants', 'de', 'Aufhellungsgels');
            PERFORM insert_category_translations('gels-blanchissants', 'es', 'Geles blanqueadores');
            PERFORM insert_category_translations('gels-blanchissants', 'it', 'Gel sbiancanti');

            -- Level 2: kits-led
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('kits-led', 'kits-led', 2, l1_id, 'Kits LED')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('kits-led', 'fr', 'Kits LED');
            PERFORM insert_category_translations('kits-led', 'ar', 'أطقم LED');
            PERFORM insert_category_translations('kits-led', 'en', 'LED Kits');
            PERFORM insert_category_translations('kits-led', 'de', 'LED-Kits');
            PERFORM insert_category_translations('kits-led', 'es', 'Kits LED');
            PERFORM insert_category_translations('kits-led', 'it', 'Kit LED');

            -- Level 2: mousses-blanchissantes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mousses-blanchissantes', 'mousses-blanchissantes', 2, l1_id, 'Mousses blanchissantes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mousses-blanchissantes', 'fr', 'Mousses blanchissantes');
            PERFORM insert_category_translations('mousses-blanchissantes', 'ar', 'رغوات تبييض');
            PERFORM insert_category_translations('mousses-blanchissantes', 'en', 'Whitening Foams');
            PERFORM insert_category_translations('mousses-blanchissantes', 'de', 'Aufhellungsschäume');
            PERFORM insert_category_translations('mousses-blanchissantes', 'es', 'Espumas blanqueadoras');
            PERFORM insert_category_translations('mousses-blanchissantes', 'it', 'Schiume sbiancanti');
END $$;