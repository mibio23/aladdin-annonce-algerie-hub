-- Migration: Parapharmacie & Produit Chimique (Generated Recursive)
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

    -- Level 0: parapharmacie-produit-chimique
    INSERT INTO categories (id, slug, level, name)
    VALUES ('parapharmacie-produit-chimique', 'parapharmacie-produit-chimique', 0, 'Parapharmacie & Produit Chimique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 0, name = EXCLUDED.name
    RETURNING id INTO root_id;
    PERFORM insert_category_translations('parapharmacie-produit-chimique', 'fr', 'Parapharmacie & Produit Chimique');
    PERFORM insert_category_translations('parapharmacie-produit-chimique', 'ar', 'الصيدلة الموازية والمنتجات الكيميائية');
    PERFORM insert_category_translations('parapharmacie-produit-chimique', 'en', 'Parapharmacy & Chemical Products');
    PERFORM insert_category_translations('parapharmacie-produit-chimique', 'de', 'Parapharmazie & Chemische Produkte');
    PERFORM insert_category_translations('parapharmacie-produit-chimique', 'es', 'Parafarmacia y Productos Químicos');
    PERFORM insert_category_translations('parapharmacie-produit-chimique', 'it', 'Parafarmacia e Prodotti Chimici');

        -- Level 1: parapharmacie-generale
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('parapharmacie-generale', 'parapharmacie-generale', 1, root_id, 'Parapharmacie Générale')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('parapharmacie-generale', 'fr', 'Parapharmacie Générale');
        PERFORM insert_category_translations('parapharmacie-generale', 'ar', 'الصيدلة الموازية العامة');
        PERFORM insert_category_translations('parapharmacie-generale', 'en', 'General Parapharmacy');
        PERFORM insert_category_translations('parapharmacie-generale', 'de', 'Allgemeine Parapharmazie');
        PERFORM insert_category_translations('parapharmacie-generale', 'es', 'Parafarmacia General');
        PERFORM insert_category_translations('parapharmacie-generale', 'it', 'Parafarmacia Generale');

            -- Level 2: vitamines
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vitamines', 'vitamines', 2, l1_id, 'Vitamines')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('vitamines', 'fr', 'Vitamines');
            PERFORM insert_category_translations('vitamines', 'ar', 'الفيتامينات');
            PERFORM insert_category_translations('vitamines', 'en', 'Vitamins');
            PERFORM insert_category_translations('vitamines', 'de', 'Vitamine');
            PERFORM insert_category_translations('vitamines', 'es', 'Vitaminas');
            PERFORM insert_category_translations('vitamines', 'it', 'Vitamine');

            -- Level 2: complements-alimentaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('complements-alimentaires', 'complements-alimentaires', 2, l1_id, 'Compléments Alimentaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('complements-alimentaires', 'fr', 'Compléments Alimentaires');
            PERFORM insert_category_translations('complements-alimentaires', 'ar', 'المكملات الغذائية');
            PERFORM insert_category_translations('complements-alimentaires', 'en', 'Food Supplements');
            PERFORM insert_category_translations('complements-alimentaires', 'de', 'Nahrungsergänzungsmittel');
            PERFORM insert_category_translations('complements-alimentaires', 'es', 'Suplementos Alimenticios');
            PERFORM insert_category_translations('complements-alimentaires', 'it', 'Integratori Alimentari');

            -- Level 2: produits-immunite
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-immunite', 'produits-immunite', 2, l1_id, 'Produits Immunité')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('produits-immunite', 'fr', 'Produits Immunité');
            PERFORM insert_category_translations('produits-immunite', 'ar', 'منتجات المناعة');
            PERFORM insert_category_translations('produits-immunite', 'en', 'Immunity Products');
            PERFORM insert_category_translations('produits-immunite', 'de', 'Immunitätsprodukte');
            PERFORM insert_category_translations('produits-immunite', 'es', 'Productos de Inmunidad');
            PERFORM insert_category_translations('produits-immunite', 'it', 'Prodotti per l''Immunità');

            -- Level 2: supplements-sportifs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('supplements-sportifs', 'supplements-sportifs', 2, l1_id, 'Suppléments Sportifs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('supplements-sportifs', 'fr', 'Suppléments Sportifs');
            PERFORM insert_category_translations('supplements-sportifs', 'ar', 'المكملات الرياضية');
            PERFORM insert_category_translations('supplements-sportifs', 'en', 'Sports Supplements');
            PERFORM insert_category_translations('supplements-sportifs', 'de', 'Sportnahrungsergänzungsmittel');
            PERFORM insert_category_translations('supplements-sportifs', 'es', 'Suplementos Deportivos');
            PERFORM insert_category_translations('supplements-sportifs', 'it', 'Integratori Sportivi');

            -- Level 2: soins-essentiels
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soins-essentiels', 'soins-essentiels', 2, l1_id, 'Soins Essentiels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('soins-essentiels', 'fr', 'Soins Essentiels');
            PERFORM insert_category_translations('soins-essentiels', 'ar', 'العناية الأساسية');
            PERFORM insert_category_translations('soins-essentiels', 'en', 'Essential Care');
            PERFORM insert_category_translations('soins-essentiels', 'de', 'Essentielle Pflege');
            PERFORM insert_category_translations('soins-essentiels', 'es', 'Cuidados Esenciales');
            PERFORM insert_category_translations('soins-essentiels', 'it', 'Cure Essenziali');

            -- Level 2: boosters-energie
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('boosters-energie', 'boosters-energie', 2, l1_id, 'Boosters d''''Énergie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('boosters-energie', 'fr', 'Boosters d''Énergie');
            PERFORM insert_category_translations('boosters-energie', 'ar', 'معززات الطاقة');
            PERFORM insert_category_translations('boosters-energie', 'en', 'Energy Boosters');
            PERFORM insert_category_translations('boosters-energie', 'de', 'Energie-Booster');
            PERFORM insert_category_translations('boosters-energie', 'es', 'Potenciadores de Energía');
            PERFORM insert_category_translations('boosters-energie', 'it', 'Booster di Energia');

            -- Level 2: probiotiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('probiotiques', 'probiotiques', 2, l1_id, 'Probiotiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('probiotiques', 'fr', 'Probiotiques');
            PERFORM insert_category_translations('probiotiques', 'ar', 'البروبيوتيك');
            PERFORM insert_category_translations('probiotiques', 'en', 'Probiotiques');
            PERFORM insert_category_translations('probiotiques', 'de', 'Probiotika');
            PERFORM insert_category_translations('probiotiques', 'es', 'Probióticos');
            PERFORM insert_category_translations('probiotiques', 'it', 'Probiotici');

            -- Level 2: mineraux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mineraux', 'mineraux', 2, l1_id, 'Minéraux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mineraux', 'fr', 'Minéraux');
            PERFORM insert_category_translations('mineraux', 'ar', 'المعادن');
            PERFORM insert_category_translations('mineraux', 'en', 'Minerals');
            PERFORM insert_category_translations('mineraux', 'de', 'Mineralien');
            PERFORM insert_category_translations('mineraux', 'es', 'Minerales');
            PERFORM insert_category_translations('mineraux', 'it', 'Minerali');

            -- Level 2: omega-3
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('omega-3', 'omega-3', 2, l1_id, 'Oméga-3')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('omega-3', 'fr', 'Oméga-3');
            PERFORM insert_category_translations('omega-3', 'ar', 'أوميغا 3');
            PERFORM insert_category_translations('omega-3', 'en', 'Omega-3');
            PERFORM insert_category_translations('omega-3', 'de', 'Omega-3');
            PERFORM insert_category_translations('omega-3', 'es', 'Omega-3');
            PERFORM insert_category_translations('omega-3', 'it', 'Omega-3');

            -- Level 2: multivitamines
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('multivitamines', 'multivitamines', 2, l1_id, 'Multivitamines')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('multivitamines', 'fr', 'Multivitamines');
            PERFORM insert_category_translations('multivitamines', 'ar', 'فيتامينات متعددة');
            PERFORM insert_category_translations('multivitamines', 'en', 'Multivitamins');
            PERFORM insert_category_translations('multivitamines', 'de', 'Multivitamine');
            PERFORM insert_category_translations('multivitamines', 'es', 'Multivitaminas');
            PERFORM insert_category_translations('multivitamines', 'it', 'Multivitamine');

        -- Level 1: soins-visage
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soins-visage', 'soins-visage', 1, root_id, 'Soins du Visage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('soins-visage', 'fr', 'Soins du Visage');
        PERFORM insert_category_translations('soins-visage', 'ar', 'العناية بالوجه');
        PERFORM insert_category_translations('soins-visage', 'en', 'Face Care');
        PERFORM insert_category_translations('soins-visage', 'de', 'Gesichtspflege');
        PERFORM insert_category_translations('soins-visage', 'es', 'Cuidado Facial');
        PERFORM insert_category_translations('soins-visage', 'it', 'Cura del Viso');

            -- Level 2: cremes-hydratantes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cremes-hydratantes', 'cremes-hydratantes', 2, l1_id, 'Crèmes Hydratantes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cremes-hydratantes', 'fr', 'Crèmes Hydratantes');
            PERFORM insert_category_translations('cremes-hydratantes', 'ar', 'كريمات مرطبة');
            PERFORM insert_category_translations('cremes-hydratantes', 'en', 'Moisturizing Creams');
            PERFORM insert_category_translations('cremes-hydratantes', 'de', 'Feuchtigkeitscremes');
            PERFORM insert_category_translations('cremes-hydratantes', 'es', 'Cremas Hidratantes');
            PERFORM insert_category_translations('cremes-hydratantes', 'it', 'Creme Idratanti');

            -- Level 2: cremes-anti-age
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cremes-anti-age', 'cremes-anti-age', 2, l1_id, 'Crèmes Anti-Âge')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cremes-anti-age', 'fr', 'Crèmes Anti-Âge');
            PERFORM insert_category_translations('cremes-anti-age', 'ar', 'كريمات مكافحة الشيخوخة');
            PERFORM insert_category_translations('cremes-anti-age', 'en', 'Anti-Aging Creams');
            PERFORM insert_category_translations('cremes-anti-age', 'de', 'Anti-Aging-Cremes');
            PERFORM insert_category_translations('cremes-anti-age', 'es', 'Cremas Antiedad');
            PERFORM insert_category_translations('cremes-anti-age', 'it', 'Creme Anti-Età');

            -- Level 2: serums
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('serums', 'serums', 2, l1_id, 'Sérums')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('serums', 'fr', 'Sérums');
            PERFORM insert_category_translations('serums', 'ar', 'أمصال (سيروم)');
            PERFORM insert_category_translations('serums', 'en', 'Serums');
            PERFORM insert_category_translations('serums', 'de', 'Seren');
            PERFORM insert_category_translations('serums', 'es', 'Sérums');
            PERFORM insert_category_translations('serums', 'it', 'Sieri');

            -- Level 2: soins-anti-acne
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soins-anti-acne', 'soins-anti-acne', 2, l1_id, 'Soins Anti-Acné')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('soins-anti-acne', 'fr', 'Soins Anti-Acné');
            PERFORM insert_category_translations('soins-anti-acne', 'ar', 'علاج حب الشباب');
            PERFORM insert_category_translations('soins-anti-acne', 'en', 'Anti-Acne Care');
            PERFORM insert_category_translations('soins-anti-acne', 'de', 'Anti-Akne-Pflege');
            PERFORM insert_category_translations('soins-anti-acne', 'es', 'Tratamientos Anti-acné');
            PERFORM insert_category_translations('soins-anti-acne', 'it', 'Trattamenti Anti-Acne');

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

            -- Level 2: masques-visage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('masques-visage', 'masques-visage', 2, l1_id, 'Masques Visage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('masques-visage', 'fr', 'Masques Visage');
            PERFORM insert_category_translations('masques-visage', 'ar', 'أقنعة الوجه');
            PERFORM insert_category_translations('masques-visage', 'en', 'Face Masks');
            PERFORM insert_category_translations('masques-visage', 'de', 'Gesichtsmasken');
            PERFORM insert_category_translations('masques-visage', 'es', 'Mascarillas Faciales');
            PERFORM insert_category_translations('masques-visage', 'it', 'Maschere Viso');

            -- Level 2: nettoyants-dermatologiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('nettoyants-dermatologiques', 'nettoyants-dermatologiques', 2, l1_id, 'Nettoyants Dermatologiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('nettoyants-dermatologiques', 'fr', 'Nettoyants Dermatologiques');
            PERFORM insert_category_translations('nettoyants-dermatologiques', 'ar', 'منظفات جلدية');
            PERFORM insert_category_translations('nettoyants-dermatologiques', 'en', 'Dermatological Cleansers');
            PERFORM insert_category_translations('nettoyants-dermatologiques', 'de', 'Dermatologische Reinigungsmittel');
            PERFORM insert_category_translations('nettoyants-dermatologiques', 'es', 'Limpiadores Dermatológicos');
            PERFORM insert_category_translations('nettoyants-dermatologiques', 'it', 'Detergenti Dermatologici');

            -- Level 2: cremes-depigmentantes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cremes-depigmentantes', 'cremes-depigmentantes', 2, l1_id, 'Crèmes Dépigmentantes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cremes-depigmentantes', 'fr', 'Crèmes Dépigmentantes');
            PERFORM insert_category_translations('cremes-depigmentantes', 'ar', 'كريمات إزالة التصبغ');
            PERFORM insert_category_translations('cremes-depigmentantes', 'en', 'Depigmenting Creams');
            PERFORM insert_category_translations('cremes-depigmentantes', 'de', 'Depigmentierungscremes');
            PERFORM insert_category_translations('cremes-depigmentantes', 'es', 'Cremas Despigmentantes');
            PERFORM insert_category_translations('cremes-depigmentantes', 'it', 'Creme Depigmentanti');

            -- Level 2: soins-anti-taches
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soins-anti-taches', 'soins-anti-taches', 2, l1_id, 'Soins Anti-Taches')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('soins-anti-taches', 'fr', 'Soins Anti-Taches');
            PERFORM insert_category_translations('soins-anti-taches', 'ar', 'علاج البقع');
            PERFORM insert_category_translations('soins-anti-taches', 'en', 'Anti-Spot Care');
            PERFORM insert_category_translations('soins-anti-taches', 'de', 'Anti-Flecken-Pflege');
            PERFORM insert_category_translations('soins-anti-taches', 'es', 'Tratamientos Antimanchas');
            PERFORM insert_category_translations('soins-anti-taches', 'it', 'Trattamenti Anti-Macchia');

            -- Level 2: soins-contour-yeux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soins-contour-yeux', 'soins-contour-yeux', 2, l1_id, 'Soins Contour des Yeux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('soins-contour-yeux', 'fr', 'Soins Contour des Yeux');
            PERFORM insert_category_translations('soins-contour-yeux', 'ar', 'علاج محيط العينين');
            PERFORM insert_category_translations('soins-contour-yeux', 'en', 'Eye Contour Care');
            PERFORM insert_category_translations('soins-contour-yeux', 'de', 'Augenpflege');
            PERFORM insert_category_translations('soins-contour-yeux', 'es', 'Contorno de Ojos');
            PERFORM insert_category_translations('soins-contour-yeux', 'it', 'Contorno Occhi');

        -- Level 1: soins-corps
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soins-corps', 'soins-corps', 1, root_id, 'Soins du Corps')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('soins-corps', 'fr', 'Soins du Corps');
        PERFORM insert_category_translations('soins-corps', 'ar', 'العناية بالجسم');
        PERFORM insert_category_translations('soins-corps', 'en', 'Body Care');
        PERFORM insert_category_translations('soins-corps', 'de', 'Körperpflege');
        PERFORM insert_category_translations('soins-corps', 'es', 'Cuidado Corporal');
        PERFORM insert_category_translations('soins-corps', 'it', 'Cura del Corpo');

            -- Level 2: laits-corporels
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('laits-corporels', 'laits-corporels', 2, l1_id, 'Laits Corporels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('laits-corporels', 'fr', 'Laits Corporels');
            PERFORM insert_category_translations('laits-corporels', 'ar', 'حليب الجسم');
            PERFORM insert_category_translations('laits-corporels', 'en', 'Body Lotions');
            PERFORM insert_category_translations('laits-corporels', 'de', 'Körpermilch');
            PERFORM insert_category_translations('laits-corporels', 'es', 'Leches Corporales');
            PERFORM insert_category_translations('laits-corporels', 'it', 'Latte Corpo');

            -- Level 2: huiles-essentielles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('huiles-essentielles', 'huiles-essentielles', 2, l1_id, 'Huiles Essentielles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('huiles-essentielles', 'fr', 'Huiles Essentielles');
            PERFORM insert_category_translations('huiles-essentielles', 'ar', 'زيوت أساسية');
            PERFORM insert_category_translations('huiles-essentielles', 'en', 'Essential Oils');
            PERFORM insert_category_translations('huiles-essentielles', 'de', 'Ätherische Öle');
            PERFORM insert_category_translations('huiles-essentielles', 'es', 'Aceites Esenciales');
            PERFORM insert_category_translations('huiles-essentielles', 'it', 'Oli Essenziali');

            -- Level 2: huiles-massage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('huiles-massage', 'huiles-massage', 2, l1_id, 'Huiles de Massage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('huiles-massage', 'fr', 'Huiles de Massage');
            PERFORM insert_category_translations('huiles-massage', 'ar', 'زيوت التدليك');
            PERFORM insert_category_translations('huiles-massage', 'en', 'Massage Oils');
            PERFORM insert_category_translations('huiles-massage', 'de', 'Massageöle');
            PERFORM insert_category_translations('huiles-massage', 'es', 'Aceites de Masaje');
            PERFORM insert_category_translations('huiles-massage', 'it', 'Oli da Massaggio');

            -- Level 2: gommages-corporels
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gommages-corporels', 'gommages-corporels', 2, l1_id, 'Gommages Corporels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gommages-corporels', 'fr', 'Gommages Corporels');
            PERFORM insert_category_translations('gommages-corporels', 'ar', 'مقشرات الجسم');
            PERFORM insert_category_translations('gommages-corporels', 'en', 'Body Scrubs');
            PERFORM insert_category_translations('gommages-corporels', 'de', 'Körperpeelings');
            PERFORM insert_category_translations('gommages-corporels', 'es', 'Exfoliantes Corporales');
            PERFORM insert_category_translations('gommages-corporels', 'it', 'Scrub Corpo');

            -- Level 2: soins-raffermissants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soins-raffermissants', 'soins-raffermissants', 2, l1_id, 'Soins Raffermissants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('soins-raffermissants', 'fr', 'Soins Raffermissants');
            PERFORM insert_category_translations('soins-raffermissants', 'ar', 'عناية لشد البشرة');
            PERFORM insert_category_translations('soins-raffermissants', 'en', 'Firming Care');
            PERFORM insert_category_translations('soins-raffermissants', 'de', 'Straffende Pflege');
            PERFORM insert_category_translations('soins-raffermissants', 'es', 'Tratamientos Reafirmantes');
            PERFORM insert_category_translations('soins-raffermissants', 'it', 'Trattamenti Rassodanti');

            -- Level 2: soins-anti-vergetures
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soins-anti-vergetures', 'soins-anti-vergetures', 2, l1_id, 'Soins Anti-Vergetures')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('soins-anti-vergetures', 'fr', 'Soins Anti-Vergetures');
            PERFORM insert_category_translations('soins-anti-vergetures', 'ar', 'علاج علامات التمدد');
            PERFORM insert_category_translations('soins-anti-vergetures', 'en', 'Anti-Stretch Mark Care');
            PERFORM insert_category_translations('soins-anti-vergetures', 'de', 'Anti-Dehnungsstreifen-Pflege');
            PERFORM insert_category_translations('soins-anti-vergetures', 'es', 'Tratamientos Antiestrías');
            PERFORM insert_category_translations('soins-anti-vergetures', 'it', 'Trattamenti Anti-Smagliature');

            -- Level 2: cremes-nourrissantes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cremes-nourrissantes', 'cremes-nourrissantes', 2, l1_id, 'Crèmes Nourrissantes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cremes-nourrissantes', 'fr', 'Crèmes Nourrissantes');
            PERFORM insert_category_translations('cremes-nourrissantes', 'ar', 'كريمات مغذية');
            PERFORM insert_category_translations('cremes-nourrissantes', 'en', 'Nourishing Creams');
            PERFORM insert_category_translations('cremes-nourrissantes', 'de', 'Pflegende Cremes');
            PERFORM insert_category_translations('cremes-nourrissantes', 'es', 'Cremas Nutritivas');
            PERFORM insert_category_translations('cremes-nourrissantes', 'it', 'Creme Nutrienti');

            -- Level 2: gels-raffermissants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gels-raffermissants', 'gels-raffermissants', 2, l1_id, 'Gels Raffermissants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gels-raffermissants', 'fr', 'Gels Raffermissants');
            PERFORM insert_category_translations('gels-raffermissants', 'ar', 'جل لشد البشرة');
            PERFORM insert_category_translations('gels-raffermissants', 'en', 'Firming Gels');
            PERFORM insert_category_translations('gels-raffermissants', 'de', 'Straffende Gele');
            PERFORM insert_category_translations('gels-raffermissants', 'es', 'Geles Reafirmantes');
            PERFORM insert_category_translations('gels-raffermissants', 'it', 'Gel Rassodanti');

            -- Level 2: soins-anticellulite
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soins-anticellulite', 'soins-anticellulite', 2, l1_id, 'Soins Anticellulite')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('soins-anticellulite', 'fr', 'Soins Anticellulite');
            PERFORM insert_category_translations('soins-anticellulite', 'ar', 'علاج السيلوليت');
            PERFORM insert_category_translations('soins-anticellulite', 'en', 'Anti-Cellulite Care');
            PERFORM insert_category_translations('soins-anticellulite', 'de', 'Anti-Cellulite-Pflege');
            PERFORM insert_category_translations('soins-anticellulite', 'es', 'Tratamientos Anticelulitis');
            PERFORM insert_category_translations('soins-anticellulite', 'it', 'Trattamenti Anticellulite');

        -- Level 1: soins-capillaires
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soins-capillaires', 'soins-capillaires', 1, root_id, 'Soins Capillaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('soins-capillaires', 'fr', 'Soins Capillaires');
        PERFORM insert_category_translations('soins-capillaires', 'ar', 'العناية بالشعر');
        PERFORM insert_category_translations('soins-capillaires', 'en', 'Hair Care');
        PERFORM insert_category_translations('soins-capillaires', 'de', 'Haarpflege');
        PERFORM insert_category_translations('soins-capillaires', 'es', 'Cuidado Capilar');
        PERFORM insert_category_translations('soins-capillaires', 'it', 'Cura dei Capelli');

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
    VALUES ('apres-shampoings', 'apres-shampoings', 2, l1_id, 'Après-Shampoings')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('apres-shampoings', 'fr', 'Après-Shampoings');
            PERFORM insert_category_translations('apres-shampoings', 'ar', 'بلسم');
            PERFORM insert_category_translations('apres-shampoings', 'en', 'Conditioners');
            PERFORM insert_category_translations('apres-shampoings', 'de', 'Spülungen');
            PERFORM insert_category_translations('apres-shampoings', 'es', 'Acondicionadores');
            PERFORM insert_category_translations('apres-shampoings', 'it', 'Balsamo');

            -- Level 2: masques-capillaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('masques-capillaires', 'masques-capillaires', 2, l1_id, 'Masques Capillaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('masques-capillaires', 'fr', 'Masques Capillaires');
            PERFORM insert_category_translations('masques-capillaires', 'ar', 'أقنعة للشعر');
            PERFORM insert_category_translations('masques-capillaires', 'en', 'Hair Masks');
            PERFORM insert_category_translations('masques-capillaires', 'de', 'Haarmasken');
            PERFORM insert_category_translations('masques-capillaires', 'es', 'Mascarillas Capilares');
            PERFORM insert_category_translations('masques-capillaires', 'it', 'Maschere per Capelli');

            -- Level 2: huiles-capillaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('huiles-capillaires', 'huiles-capillaires', 2, l1_id, 'Huiles Capillaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('huiles-capillaires', 'fr', 'Huiles Capillaires');
            PERFORM insert_category_translations('huiles-capillaires', 'ar', 'زيوت للشعر');
            PERFORM insert_category_translations('huiles-capillaires', 'en', 'Hair Oils');
            PERFORM insert_category_translations('huiles-capillaires', 'de', 'Haaröle');
            PERFORM insert_category_translations('huiles-capillaires', 'es', 'Aceites Capilares');
            PERFORM insert_category_translations('huiles-capillaires', 'it', 'Oli per Capelli');

            -- Level 2: serums-capillaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('serums-capillaires', 'serums-capillaires', 2, l1_id, 'Sérums Capillaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('serums-capillaires', 'fr', 'Sérums Capillaires');
            PERFORM insert_category_translations('serums-capillaires', 'ar', 'أمصال للشعر');
            PERFORM insert_category_translations('serums-capillaires', 'en', 'Hair Serums');
            PERFORM insert_category_translations('serums-capillaires', 'de', 'Haarseren');
            PERFORM insert_category_translations('serums-capillaires', 'es', 'Sérums Capilares');
            PERFORM insert_category_translations('serums-capillaires', 'it', 'Sieri per Capelli');

            -- Level 2: lotions-antichute
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lotions-antichute', 'lotions-antichute', 2, l1_id, 'Lotions Antichute')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lotions-antichute', 'fr', 'Lotions Antichute');
            PERFORM insert_category_translations('lotions-antichute', 'ar', 'لوشن ضد تساقط الشعر');
            PERFORM insert_category_translations('lotions-antichute', 'en', 'Anti-Hair Loss Lotions');
            PERFORM insert_category_translations('lotions-antichute', 'de', 'Anti-Haarausfall-Lotionen');
            PERFORM insert_category_translations('lotions-antichute', 'es', 'Lociones Anticaída');
            PERFORM insert_category_translations('lotions-antichute', 'it', 'Lozioni Anticaduta');

            -- Level 2: soins-keratine
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soins-keratine', 'soins-keratine', 2, l1_id, 'Soins Kératine')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('soins-keratine', 'fr', 'Soins Kératine');
            PERFORM insert_category_translations('soins-keratine', 'ar', 'علاج الكيراتين');
            PERFORM insert_category_translations('soins-keratine', 'en', 'Keratin Care');
            PERFORM insert_category_translations('soins-keratine', 'de', 'Keratinpflege');
            PERFORM insert_category_translations('soins-keratine', 'es', 'Tratamientos de Queratina');
            PERFORM insert_category_translations('soins-keratine', 'it', 'Trattamenti alla Cheratina');

            -- Level 2: traitements-cuir-chevelu
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('traitements-cuir-chevelu', 'traitements-cuir-chevelu', 2, l1_id, 'Traitements Cuir Chevelu')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('traitements-cuir-chevelu', 'fr', 'Traitements Cuir Chevelu');
            PERFORM insert_category_translations('traitements-cuir-chevelu', 'ar', 'علاجات فروة الرأس');
            PERFORM insert_category_translations('traitements-cuir-chevelu', 'en', 'Scalp Treatments');
            PERFORM insert_category_translations('traitements-cuir-chevelu', 'de', 'Kopfhautbehandlungen');
            PERFORM insert_category_translations('traitements-cuir-chevelu', 'es', 'Tratamientos del Cuero Cabelludo');
            PERFORM insert_category_translations('traitements-cuir-chevelu', 'it', 'Trattamenti Cuoio Capelluto');

            -- Level 2: shampoings-medicaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('shampoings-medicaux', 'shampoings-medicaux', 2, l1_id, 'Shampoings Médicaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('shampoings-medicaux', 'fr', 'Shampoings Médicaux');
            PERFORM insert_category_translations('shampoings-medicaux', 'ar', 'شامبو طبي');
            PERFORM insert_category_translations('shampoings-medicaux', 'en', 'Medical Shampoos');
            PERFORM insert_category_translations('shampoings-medicaux', 'de', 'Medizinische Shampoos');
            PERFORM insert_category_translations('shampoings-medicaux', 'es', 'Champús Médicos');
            PERFORM insert_category_translations('shampoings-medicaux', 'it', 'Shampoo Medicinali');

            -- Level 2: soins-antipelliculaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soins-antipelliculaires', 'soins-antipelliculaires', 2, l1_id, 'Soins Antipelliculaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('soins-antipelliculaires', 'fr', 'Soins Antipelliculaires');
            PERFORM insert_category_translations('soins-antipelliculaires', 'ar', 'علاج القشرة');
            PERFORM insert_category_translations('soins-antipelliculaires', 'en', 'Anti-Dandruff Care');
            PERFORM insert_category_translations('soins-antipelliculaires', 'de', 'Anti-Schuppen-Pflege');
            PERFORM insert_category_translations('soins-antipelliculaires', 'es', 'Tratamientos Anticaspa');
            PERFORM insert_category_translations('soins-antipelliculaires', 'it', 'Trattamenti Antiforfora');

        -- Level 1: hygiene-corporelle
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('hygiene-corporelle', 'hygiene-corporelle', 1, root_id, 'Hygiène Corporelle')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('hygiene-corporelle', 'fr', 'Hygiène Corporelle');
        PERFORM insert_category_translations('hygiene-corporelle', 'ar', 'نظافة الجسم');
        PERFORM insert_category_translations('hygiene-corporelle', 'en', 'Body Hygiene');
        PERFORM insert_category_translations('hygiene-corporelle', 'de', 'Körperhygiene');
        PERFORM insert_category_translations('hygiene-corporelle', 'es', 'Higiene Corporal');
        PERFORM insert_category_translations('hygiene-corporelle', 'it', 'Igiene del Corpo');

            -- Level 2: savons
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('savons', 'savons', 2, l1_id, 'Savons')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('savons', 'fr', 'Savons');
            PERFORM insert_category_translations('savons', 'ar', 'صابون');
            PERFORM insert_category_translations('savons', 'en', 'Soaps');
            PERFORM insert_category_translations('savons', 'de', 'Seifen');
            PERFORM insert_category_translations('savons', 'es', 'Jabones');
            PERFORM insert_category_translations('savons', 'it', 'Saponi');

            -- Level 2: gels-douche
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gels-douche', 'gels-douche', 2, l1_id, 'Gels Douche')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gels-douche', 'fr', 'Gels Douche');
            PERFORM insert_category_translations('gels-douche', 'ar', 'جل الاستحمام');
            PERFORM insert_category_translations('gels-douche', 'en', 'Shower Gels');
            PERFORM insert_category_translations('gels-douche', 'de', 'Duschgele');
            PERFORM insert_category_translations('gels-douche', 'es', 'Geles de Ducha');
            PERFORM insert_category_translations('gels-douche', 'it', 'Gel Doccia');

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
            PERFORM insert_category_translations('lingettes', 'de', 'Feuchttücher');
            PERFORM insert_category_translations('lingettes', 'es', 'Toallitas');
            PERFORM insert_category_translations('lingettes', 'it', 'Salviette');

            -- Level 2: soins-intimes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soins-intimes', 'soins-intimes', 2, l1_id, 'Soins Intimes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('soins-intimes', 'fr', 'Soins Intimes');
            PERFORM insert_category_translations('soins-intimes', 'ar', 'عناية حميمة');
            PERFORM insert_category_translations('soins-intimes', 'en', 'Intimate Care');
            PERFORM insert_category_translations('soins-intimes', 'de', 'Intimpflege');
            PERFORM insert_category_translations('soins-intimes', 'es', 'Cuidado Íntimo');
            PERFORM insert_category_translations('soins-intimes', 'it', 'Igiene Intima');

            -- Level 2: produits-antibacteriens
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-antibacteriens', 'produits-antibacteriens', 2, l1_id, 'Produits Antibactériens')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('produits-antibacteriens', 'fr', 'Produits Antibactériens');
            PERFORM insert_category_translations('produits-antibacteriens', 'ar', 'منتجات مضادة للبكتيريا');
            PERFORM insert_category_translations('produits-antibacteriens', 'en', 'Antibacterial Products');
            PERFORM insert_category_translations('produits-antibacteriens', 'de', 'Antibakterielle Produkte');
            PERFORM insert_category_translations('produits-antibacteriens', 'es', 'Productos Antibacterianos');
            PERFORM insert_category_translations('produits-antibacteriens', 'it', 'Prodotti Antibatterici');

            -- Level 2: bains-bouche
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bains-bouche', 'bains-bouche', 2, l1_id, 'Bains de Bouche')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bains-bouche', 'fr', 'Bains de Bouche');
            PERFORM insert_category_translations('bains-bouche', 'ar', 'غسول الفم');
            PERFORM insert_category_translations('bains-bouche', 'en', 'Mouthwashes');
            PERFORM insert_category_translations('bains-bouche', 'de', 'Mundspülungen');
            PERFORM insert_category_translations('bains-bouche', 'es', 'Enjuagues Bucales');
            PERFORM insert_category_translations('bains-bouche', 'it', 'Collutori');

            -- Level 2: dentifrices
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('dentifrices', 'dentifrices', 2, l1_id, 'Dentifrices')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('dentifrices', 'fr', 'Dentifrices');
            PERFORM insert_category_translations('dentifrices', 'ar', 'معجون أسنان');
            PERFORM insert_category_translations('dentifrices', 'en', 'Toothpastes');
            PERFORM insert_category_translations('dentifrices', 'de', 'Zahnpasta');
            PERFORM insert_category_translations('dentifrices', 'es', 'Dentífricos');
            PERFORM insert_category_translations('dentifrices', 'it', 'Dentifrici');

            -- Level 2: brosses-dents
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('brosses-dents', 'brosses-dents', 2, l1_id, 'Brosses à Dents')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('brosses-dents', 'fr', 'Brosses à Dents');
            PERFORM insert_category_translations('brosses-dents', 'ar', 'فرشاة أسنان');
            PERFORM insert_category_translations('brosses-dents', 'en', 'Toothbrushes');
            PERFORM insert_category_translations('brosses-dents', 'de', 'Zahnbürsten');
            PERFORM insert_category_translations('brosses-dents', 'es', 'Cepillos de Dientes');
            PERFORM insert_category_translations('brosses-dents', 'it', 'Spazzolini da Denti');

            -- Level 2: gels-mains
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gels-mains', 'gels-mains', 2, l1_id, 'Gels pour les Mains')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gels-mains', 'fr', 'Gels pour les Mains');
            PERFORM insert_category_translations('gels-mains', 'ar', 'جل اليدين');
            PERFORM insert_category_translations('gels-mains', 'en', 'Hand Gels');
            PERFORM insert_category_translations('gels-mains', 'de', 'Handgele');
            PERFORM insert_category_translations('gels-mains', 'es', 'Geles de Manos');
            PERFORM insert_category_translations('gels-mains', 'it', 'Gel Mani');

        -- Level 1: hygiene-feminine
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('hygiene-feminine', 'hygiene-feminine', 1, root_id, 'Hygiène Féminine')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('hygiene-feminine', 'fr', 'Hygiène Féminine');
        PERFORM insert_category_translations('hygiene-feminine', 'ar', 'نظافة نسائية');
        PERFORM insert_category_translations('hygiene-feminine', 'en', 'Feminine Hygiene');
        PERFORM insert_category_translations('hygiene-feminine', 'de', 'Damenhygiene');
        PERFORM insert_category_translations('hygiene-feminine', 'es', 'Higiene Femenina');
        PERFORM insert_category_translations('hygiene-feminine', 'it', 'Igiene Femminile');

            -- Level 2: serviettes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('serviettes', 'serviettes', 2, l1_id, 'Serviettes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('serviettes', 'fr', 'Serviettes');
            PERFORM insert_category_translations('serviettes', 'ar', 'فوط صحية');
            PERFORM insert_category_translations('serviettes', 'en', 'Sanitary Napkins');
            PERFORM insert_category_translations('serviettes', 'de', 'Binden');
            PERFORM insert_category_translations('serviettes', 'es', 'Compresas');
            PERFORM insert_category_translations('serviettes', 'it', 'Assorbenti');

            -- Level 2: tampons
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tampons', 'tampons', 2, l1_id, 'Tampons')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tampons', 'fr', 'Tampons');
            PERFORM insert_category_translations('tampons', 'ar', 'تامبون');
            PERFORM insert_category_translations('tampons', 'en', 'Tampons');
            PERFORM insert_category_translations('tampons', 'de', 'Tampons');
            PERFORM insert_category_translations('tampons', 'es', 'Tampones');
            PERFORM insert_category_translations('tampons', 'it', 'Tamponi');

            -- Level 2: coupes-menstruelles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('coupes-menstruelles', 'coupes-menstruelles', 2, l1_id, 'Coupes Menstruelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('coupes-menstruelles', 'fr', 'Coupes Menstruelles');
            PERFORM insert_category_translations('coupes-menstruelles', 'ar', 'أكواب الحيض');
            PERFORM insert_category_translations('coupes-menstruelles', 'en', 'Menstrual Cups');
            PERFORM insert_category_translations('coupes-menstruelles', 'de', 'Menstruationstassen');
            PERFORM insert_category_translations('coupes-menstruelles', 'es', 'Copas Menstruales');
            PERFORM insert_category_translations('coupes-menstruelles', 'it', 'Coppette Mestruali');

            -- Level 2: gels-intimes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gels-intimes', 'gels-intimes', 2, l1_id, 'Gels Intimes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gels-intimes', 'fr', 'Gels Intimes');
            PERFORM insert_category_translations('gels-intimes', 'ar', 'جل حميمي');
            PERFORM insert_category_translations('gels-intimes', 'en', 'Intimate Gels');
            PERFORM insert_category_translations('gels-intimes', 'de', 'Intimgele');
            PERFORM insert_category_translations('gels-intimes', 'es', 'Geles Íntimos');
            PERFORM insert_category_translations('gels-intimes', 'it', 'Gel Intimi');

            -- Level 2: traitements-gynecologiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('traitements-gynecologiques', 'traitements-gynecologiques', 2, l1_id, 'Traitements Gynécologiques sans Ordonnance')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('traitements-gynecologiques', 'fr', 'Traitements Gynécologiques sans Ordonnance');
            PERFORM insert_category_translations('traitements-gynecologiques', 'ar', 'علاجات نسائية (بدون وصفة)');
            PERFORM insert_category_translations('traitements-gynecologiques', 'en', 'OTC Gynecological Treatments');
            PERFORM insert_category_translations('traitements-gynecologiques', 'de', 'Gynäkologische Behandlungen');
            PERFORM insert_category_translations('traitements-gynecologiques', 'es', 'Tratamientos Ginecológicos');
            PERFORM insert_category_translations('traitements-gynecologiques', 'it', 'Trattamenti Ginecologici');

            -- Level 2: protege-slips
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('protege-slips', 'protege-slips', 2, l1_id, 'Protège-slips')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('protege-slips', 'fr', 'Protège-slips');
            PERFORM insert_category_translations('protege-slips', 'ar', 'فوط يومية');
            PERFORM insert_category_translations('protege-slips', 'en', 'Panty Liners');
            PERFORM insert_category_translations('protege-slips', 'de', 'Slipeinlagen');
            PERFORM insert_category_translations('protege-slips', 'es', 'Protectores Diarios');
            PERFORM insert_category_translations('protege-slips', 'it', 'Proteggi-slip');

            -- Level 2: produits-post-partum
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-post-partum', 'produits-post-partum', 2, l1_id, 'Produits Post-partum')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('produits-post-partum', 'fr', 'Produits Post-partum');
            PERFORM insert_category_translations('produits-post-partum', 'ar', 'منتجات ما بعد الولادة');
            PERFORM insert_category_translations('produits-post-partum', 'en', 'Postpartum Products');
            PERFORM insert_category_translations('produits-post-partum', 'de', 'Postpartale Produkte');
            PERFORM insert_category_translations('produits-post-partum', 'es', 'Productos Postparto');
            PERFORM insert_category_translations('produits-post-partum', 'it', 'Prodotti Post-partum');

        -- Level 1: hygiene-masculine
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('hygiene-masculine', 'hygiene-masculine', 1, root_id, 'Hygiène Masculine')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('hygiene-masculine', 'fr', 'Hygiène Masculine');
        PERFORM insert_category_translations('hygiene-masculine', 'ar', 'نظافة رجالية');
        PERFORM insert_category_translations('hygiene-masculine', 'en', 'Masculine Hygiene');
        PERFORM insert_category_translations('hygiene-masculine', 'de', 'Herrenhygiene');
        PERFORM insert_category_translations('hygiene-masculine', 'es', 'Higiene Masculina');
        PERFORM insert_category_translations('hygiene-masculine', 'it', 'Igiene Maschile');

            -- Level 2: soins-barbe
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soins-barbe', 'soins-barbe', 2, l1_id, 'Soins Barbe')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('soins-barbe', 'fr', 'Soins Barbe');
            PERFORM insert_category_translations('soins-barbe', 'ar', 'عناية باللحية');
            PERFORM insert_category_translations('soins-barbe', 'en', 'Beard Care');
            PERFORM insert_category_translations('soins-barbe', 'de', 'Bartpflege');
            PERFORM insert_category_translations('soins-barbe', 'es', 'Cuidado de la Barba');
            PERFORM insert_category_translations('soins-barbe', 'it', 'Cura della Barba');

            -- Level 2: mousses-raser
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mousses-raser', 'mousses-raser', 2, l1_id, 'Mousses à Raser')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mousses-raser', 'fr', 'Mousses à Raser');
            PERFORM insert_category_translations('mousses-raser', 'ar', 'رغوة الحلاقة');
            PERFORM insert_category_translations('mousses-raser', 'en', 'Shaving Foams');
            PERFORM insert_category_translations('mousses-raser', 'de', 'Rasierschaum');
            PERFORM insert_category_translations('mousses-raser', 'es', 'Espumas de Afeitar');
            PERFORM insert_category_translations('mousses-raser', 'it', 'Schiume da Barba');

            -- Level 2: gels-rasage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gels-rasage', 'gels-rasage', 2, l1_id, 'Gels de Rasage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gels-rasage', 'fr', 'Gels de Rasage');
            PERFORM insert_category_translations('gels-rasage', 'ar', 'جل الحلاقة');
            PERFORM insert_category_translations('gels-rasage', 'en', 'Shaving Gels');
            PERFORM insert_category_translations('gels-rasage', 'de', 'Rasiergele');
            PERFORM insert_category_translations('gels-rasage', 'es', 'Geles de Afeitar');
            PERFORM insert_category_translations('gels-rasage', 'it', 'Gel da Barba');

            -- Level 2: lotions-apres-rasage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lotions-apres-rasage', 'lotions-apres-rasage', 2, l1_id, 'Lotions Après-rasage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lotions-apres-rasage', 'fr', 'Lotions Après-rasage');
            PERFORM insert_category_translations('lotions-apres-rasage', 'ar', 'لوشن بعد الحلاقة');
            PERFORM insert_category_translations('lotions-apres-rasage', 'en', 'Aftershave Lotions');
            PERFORM insert_category_translations('lotions-apres-rasage', 'de', 'Aftershave-Lotionen');
            PERFORM insert_category_translations('lotions-apres-rasage', 'es', 'Lociones Aftershave');
            PERFORM insert_category_translations('lotions-apres-rasage', 'it', 'Dopobarba');

            -- Level 2: soins-visage-homme
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soins-visage-homme', 'soins-visage-homme', 2, l1_id, 'Soins Visage Homme')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('soins-visage-homme', 'fr', 'Soins Visage Homme');
            PERFORM insert_category_translations('soins-visage-homme', 'ar', 'عناية بالوجه للرجال');
            PERFORM insert_category_translations('soins-visage-homme', 'en', 'Men''s Face Care');
            PERFORM insert_category_translations('soins-visage-homme', 'de', 'Gesichtspflege für Männer');
            PERFORM insert_category_translations('soins-visage-homme', 'es', 'Cuidado Facial Hombre');
            PERFORM insert_category_translations('soins-visage-homme', 'it', 'Cura Viso Uomo');

            -- Level 2: baumes-barbe
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('baumes-barbe', 'baumes-barbe', 2, l1_id, 'Baumes pour Barbe')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('baumes-barbe', 'fr', 'Baumes pour Barbe');
            PERFORM insert_category_translations('baumes-barbe', 'ar', 'بلسم اللحية');
            PERFORM insert_category_translations('baumes-barbe', 'en', 'Beard Balms');
            PERFORM insert_category_translations('baumes-barbe', 'de', 'Bartbalsam');
            PERFORM insert_category_translations('baumes-barbe', 'es', 'Bálsamos para Barba');
            PERFORM insert_category_translations('baumes-barbe', 'it', 'Balsami Barba');

            -- Level 2: huiles-barbe
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('huiles-barbe', 'huiles-barbe', 2, l1_id, 'Huiles pour Barbe')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('huiles-barbe', 'fr', 'Huiles pour Barbe');
            PERFORM insert_category_translations('huiles-barbe', 'ar', 'زيوت اللحية');
            PERFORM insert_category_translations('huiles-barbe', 'en', 'Beard Oils');
            PERFORM insert_category_translations('huiles-barbe', 'de', 'Bartöle');
            PERFORM insert_category_translations('huiles-barbe', 'es', 'Aceites para Barba');
            PERFORM insert_category_translations('huiles-barbe', 'it', 'Oli Barba');

        -- Level 1: produits-bebe
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-bebe', 'produits-bebe', 1, root_id, 'Produits pour Bébé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('produits-bebe', 'fr', 'Produits pour Bébé');
        PERFORM insert_category_translations('produits-bebe', 'ar', 'منتجات الأطفال');
        PERFORM insert_category_translations('produits-bebe', 'en', 'Baby Products');
        PERFORM insert_category_translations('produits-bebe', 'de', 'Babyprodukte');
        PERFORM insert_category_translations('produits-bebe', 'es', 'Productos para Bebé');
        PERFORM insert_category_translations('produits-bebe', 'it', 'Prodotti per Bambini');

            -- Level 2: laits-infantiles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('laits-infantiles', 'laits-infantiles', 2, l1_id, 'Laits Infantiles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('laits-infantiles', 'fr', 'Laits Infantiles');
            PERFORM insert_category_translations('laits-infantiles', 'ar', 'حليب الأطفال');
            PERFORM insert_category_translations('laits-infantiles', 'en', 'Infant Formula');
            PERFORM insert_category_translations('laits-infantiles', 'de', 'Säuglingsmilch');
            PERFORM insert_category_translations('laits-infantiles', 'es', 'Leches Infantiles');
            PERFORM insert_category_translations('laits-infantiles', 'it', 'Latte per Neonati');

            -- Level 2: soins-corps-bebe
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soins-corps-bebe', 'soins-corps-bebe', 2, l1_id, 'Soins Corps Bébé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('soins-corps-bebe', 'fr', 'Soins Corps Bébé');
            PERFORM insert_category_translations('soins-corps-bebe', 'ar', 'عناية بجسم الطفل');
            PERFORM insert_category_translations('soins-corps-bebe', 'en', 'Baby Body Care');
            PERFORM insert_category_translations('soins-corps-bebe', 'de', 'Körperpflege für Babys');
            PERFORM insert_category_translations('soins-corps-bebe', 'es', 'Cuidado Corporal Bebé');
            PERFORM insert_category_translations('soins-corps-bebe', 'it', 'Cura Corpo Bambino');

            -- Level 2: lingettes-bebe
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lingettes-bebe', 'lingettes-bebe', 2, l1_id, 'Lingettes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lingettes-bebe', 'fr', 'Lingettes');
            PERFORM insert_category_translations('lingettes-bebe', 'ar', 'مناديل أطفال');
            PERFORM insert_category_translations('lingettes-bebe', 'en', 'Baby Wipes');
            PERFORM insert_category_translations('lingettes-bebe', 'de', 'Babytücher');
            PERFORM insert_category_translations('lingettes-bebe', 'es', 'Toallitas Bebé');
            PERFORM insert_category_translations('lingettes-bebe', 'it', 'Salviette');

            -- Level 2: gels-lavants-bebe
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gels-lavants-bebe', 'gels-lavants-bebe', 2, l1_id, 'Gels Lavants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gels-lavants-bebe', 'fr', 'Gels Lavants');
            PERFORM insert_category_translations('gels-lavants-bebe', 'ar', 'جل استحمام للأطفال');
            PERFORM insert_category_translations('gels-lavants-bebe', 'en', 'Washing Gels');
            PERFORM insert_category_translations('gels-lavants-bebe', 'de', 'Waschgele');
            PERFORM insert_category_translations('gels-lavants-bebe', 'es', 'Geles de Lavado');
            PERFORM insert_category_translations('gels-lavants-bebe', 'it', 'Gel Detergenti');

            -- Level 2: cremes-protectrices-bebe
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cremes-protectrices-bebe', 'cremes-protectrices-bebe', 2, l1_id, 'Crèmes Protectrices')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cremes-protectrices-bebe', 'fr', 'Crèmes Protectrices');
            PERFORM insert_category_translations('cremes-protectrices-bebe', 'ar', 'كريمات واقية');
            PERFORM insert_category_translations('cremes-protectrices-bebe', 'en', 'Protective Creams');
            PERFORM insert_category_translations('cremes-protectrices-bebe', 'de', 'Schutzcremes');
            PERFORM insert_category_translations('cremes-protectrices-bebe', 'es', 'Cremas Protectoras');
            PERFORM insert_category_translations('cremes-protectrices-bebe', 'it', 'Creme Protettive');

            -- Level 2: accessoires-hygiene-bebe
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-hygiene-bebe', 'accessoires-hygiene-bebe', 2, l1_id, 'Accessoires d''''Hygiène')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('accessoires-hygiene-bebe', 'fr', 'Accessoires d''Hygiène');
            PERFORM insert_category_translations('accessoires-hygiene-bebe', 'ar', 'إكسسوارات النظافة');
            PERFORM insert_category_translations('accessoires-hygiene-bebe', 'en', 'Hygiene Accessories');
            PERFORM insert_category_translations('accessoires-hygiene-bebe', 'de', 'Hygieneartikel');
            PERFORM insert_category_translations('accessoires-hygiene-bebe', 'es', 'Accesorios de Higiene');
            PERFORM insert_category_translations('accessoires-hygiene-bebe', 'it', 'Accessori Igiene');

            -- Level 2: huiles-bebe
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('huiles-bebe', 'huiles-bebe', 2, l1_id, 'Huiles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('huiles-bebe', 'fr', 'Huiles');
            PERFORM insert_category_translations('huiles-bebe', 'ar', 'زيوت للأطفال');
            PERFORM insert_category_translations('huiles-bebe', 'en', 'Oils');
            PERFORM insert_category_translations('huiles-bebe', 'de', 'Babyöle');
            PERFORM insert_category_translations('huiles-bebe', 'es', 'Aceites para Bebé');
            PERFORM insert_category_translations('huiles-bebe', 'it', 'Oli');

            -- Level 2: poudres-bebe
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('poudres-bebe', 'poudres-bebe', 2, l1_id, 'Poudres Bébés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('poudres-bebe', 'fr', 'Poudres Bébés');
            PERFORM insert_category_translations('poudres-bebe', 'ar', 'بودرة أطفال');
            PERFORM insert_category_translations('poudres-bebe', 'en', 'Baby Powders');
            PERFORM insert_category_translations('poudres-bebe', 'de', 'Babypuder');
            PERFORM insert_category_translations('poudres-bebe', 'es', 'Talcos para Bebé');
            PERFORM insert_category_translations('poudres-bebe', 'it', 'Borotalco');

            -- Level 2: soins-erytheme-fessier
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soins-erytheme-fessier', 'soins-erytheme-fessier', 2, l1_id, 'Soins Érythème Fessier')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('soins-erytheme-fessier', 'fr', 'Soins Érythème Fessier');
            PERFORM insert_category_translations('soins-erytheme-fessier', 'ar', 'علاج طفح الحفاض');
            PERFORM insert_category_translations('soins-erytheme-fessier', 'en', 'Diaper Rash Care');
            PERFORM insert_category_translations('soins-erytheme-fessier', 'de', 'Windelausschlagpflege');
            PERFORM insert_category_translations('soins-erytheme-fessier', 'es', 'Tratamientos para la Dermatitis del Pañal');
            PERFORM insert_category_translations('soins-erytheme-fessier', 'it', 'Trattamenti Eritema da Pannolino');

        -- Level 1: premiers-secours
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('premiers-secours', 'premiers-secours', 1, root_id, 'Premiers Secours')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('premiers-secours', 'fr', 'Premiers Secours');
        PERFORM insert_category_translations('premiers-secours', 'ar', 'الإسعافات الأولية');
        PERFORM insert_category_translations('premiers-secours', 'en', 'First Aid');
        PERFORM insert_category_translations('premiers-secours', 'de', 'Erste Hilfe');
        PERFORM insert_category_translations('premiers-secours', 'es', 'Primeros Auxilios');
        PERFORM insert_category_translations('premiers-secours', 'it', 'Primo Soccorso');

            -- Level 2: pansements
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pansements', 'pansements', 2, l1_id, 'Pansements')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pansements', 'fr', 'Pansements');
            PERFORM insert_category_translations('pansements', 'ar', 'ضمادات');
            PERFORM insert_category_translations('pansements', 'en', 'Bandages');
            PERFORM insert_category_translations('pansements', 'de', 'Pflaster');
            PERFORM insert_category_translations('pansements', 'es', 'Tiritas / Apósitos');
            PERFORM insert_category_translations('pansements', 'it', 'Cerotti');

            -- Level 2: compresses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('compresses', 'compresses', 2, l1_id, 'Compresses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('compresses', 'fr', 'Compresses');
            PERFORM insert_category_translations('compresses', 'ar', 'كمادات');
            PERFORM insert_category_translations('compresses', 'en', 'Compresses');
            PERFORM insert_category_translations('compresses', 'de', 'Kompressen');
            PERFORM insert_category_translations('compresses', 'es', 'Compresas');
            PERFORM insert_category_translations('compresses', 'it', 'Compresse');

            -- Level 2: bandes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bandes', 'bandes', 2, l1_id, 'Bandes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bandes', 'fr', 'Bandes');
            PERFORM insert_category_translations('bandes', 'ar', 'أربطة');
            PERFORM insert_category_translations('bandes', 'en', 'Wraps');
            PERFORM insert_category_translations('bandes', 'de', 'Verbände');
            PERFORM insert_category_translations('bandes', 'es', 'Vendas');
            PERFORM insert_category_translations('bandes', 'it', 'Bende');

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

            -- Level 2: solutions-iodees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('solutions-iodees', 'solutions-iodees', 2, l1_id, 'Solutions Iodées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('solutions-iodees', 'fr', 'Solutions Iodées');
            PERFORM insert_category_translations('solutions-iodees', 'ar', 'محاليل اليود');
            PERFORM insert_category_translations('solutions-iodees', 'en', 'Iodine Solutions');
            PERFORM insert_category_translations('solutions-iodees', 'de', 'Jodlösungen');
            PERFORM insert_category_translations('solutions-iodees', 'es', 'Soluciones Yodadas');
            PERFORM insert_category_translations('solutions-iodees', 'it', 'Soluzioni Iodate');

            -- Level 2: desinfectants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('desinfectants', 'desinfectants', 2, l1_id, 'Désinfectants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('desinfectants', 'fr', 'Désinfectants');
            PERFORM insert_category_translations('desinfectants', 'ar', 'معقمات');
            PERFORM insert_category_translations('desinfectants', 'en', 'Disinfectants');
            PERFORM insert_category_translations('desinfectants', 'de', 'Desinfektionsmittel');
            PERFORM insert_category_translations('desinfectants', 'es', 'Desinfectantes');
            PERFORM insert_category_translations('desinfectants', 'it', 'Disinfettanti');

            -- Level 2: trousses-secours
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('trousses-secours', 'trousses-secours', 2, l1_id, 'Trousses de Secours')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('trousses-secours', 'fr', 'Trousses de Secours');
            PERFORM insert_category_translations('trousses-secours', 'ar', 'حقائب إسعافات أولية');
            PERFORM insert_category_translations('trousses-secours', 'en', 'First Aid Kits');
            PERFORM insert_category_translations('trousses-secours', 'de', 'Erste-Hilfe-Sets');
            PERFORM insert_category_translations('trousses-secours', 'es', 'Botiquines');
            PERFORM insert_category_translations('trousses-secours', 'it', 'Kit di Pronto Soccorso');

            -- Level 2: sutures-adhesives
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sutures-adhesives', 'sutures-adhesives', 2, l1_id, 'Sutures Adhésives')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sutures-adhesives', 'fr', 'Sutures Adhésives');
            PERFORM insert_category_translations('sutures-adhesives', 'ar', 'غرز لاصقة');
            PERFORM insert_category_translations('sutures-adhesives', 'en', 'Adhesive Sutures');
            PERFORM insert_category_translations('sutures-adhesives', 'de', 'Klebestreifen');
            PERFORM insert_category_translations('sutures-adhesives', 'es', 'Suturas Adhesivas');
            PERFORM insert_category_translations('sutures-adhesives', 'it', 'Suture Adesive');

            -- Level 2: sprays-cicatrisants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sprays-cicatrisants', 'sprays-cicatrisants', 2, l1_id, 'Sprays Cicatrisants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sprays-cicatrisants', 'fr', 'Sprays Cicatrisants');
            PERFORM insert_category_translations('sprays-cicatrisants', 'ar', 'بخاخات التئام الجروح');
            PERFORM insert_category_translations('sprays-cicatrisants', 'en', 'Healing Sprays');
            PERFORM insert_category_translations('sprays-cicatrisants', 'de', 'Wundheilsprays');
            PERFORM insert_category_translations('sprays-cicatrisants', 'es', 'Sprays Cicatrizantes');
            PERFORM insert_category_translations('sprays-cicatrisants', 'it', 'Spray Cicatrizzanti');

        -- Level 1: materiel-medical-leger
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('materiel-medical-leger', 'materiel-medical-leger', 1, root_id, 'Matériel Médical Léger')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('materiel-medical-leger', 'fr', 'Matériel Médical Léger');
        PERFORM insert_category_translations('materiel-medical-leger', 'ar', 'معدات طبية خفيفة');
        PERFORM insert_category_translations('materiel-medical-leger', 'en', 'Light Medical Equipment');
        PERFORM insert_category_translations('materiel-medical-leger', 'de', 'Leichte medizinische Ausrüstung');
        PERFORM insert_category_translations('materiel-medical-leger', 'es', 'Material Médico Ligero');
        PERFORM insert_category_translations('materiel-medical-leger', 'it', 'Attrezzature Mediche Leggere');

            -- Level 2: tensiometres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tensiometres', 'tensiometres', 2, l1_id, 'Tensiomètres')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tensiometres', 'fr', 'Tensiomètres');
            PERFORM insert_category_translations('tensiometres', 'ar', 'أجهزة قياس الضغط');
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
            PERFORM insert_category_translations('thermometres', 'ar', 'موازين حرارة');
            PERFORM insert_category_translations('thermometres', 'en', 'Thermometers');
            PERFORM insert_category_translations('thermometres', 'de', 'Thermometer');
            PERFORM insert_category_translations('thermometres', 'es', 'Termómetros');
            PERFORM insert_category_translations('thermometres', 'it', 'Termometri');

            -- Level 2: oxymetres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('oxymetres', 'oxymetres', 2, l1_id, 'Oxymètres')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('oxymetres', 'fr', 'Oxymètres');
            PERFORM insert_category_translations('oxymetres', 'ar', 'أجهزة قياس الأكسجين');
            PERFORM insert_category_translations('oxymetres', 'en', 'Oximeters');
            PERFORM insert_category_translations('oxymetres', 'de', 'Oximeter');
            PERFORM insert_category_translations('oxymetres', 'es', 'Oxímetros');
            PERFORM insert_category_translations('oxymetres', 'it', 'Ossimetri');

            -- Level 2: glucometres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('glucometres', 'glucometres', 2, l1_id, 'Glucomètres')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('glucometres', 'fr', 'Glucomètres');
            PERFORM insert_category_translations('glucometres', 'ar', 'أجهزة قياس السكر');
            PERFORM insert_category_translations('glucometres', 'en', 'Glucometers');
            PERFORM insert_category_translations('glucometres', 'de', 'Blutzuckermessgeräte');
            PERFORM insert_category_translations('glucometres', 'es', 'Glucómetros');
            PERFORM insert_category_translations('glucometres', 'it', 'Glucometri');

            -- Level 2: nebuliseurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('nebuliseurs', 'nebuliseurs', 2, l1_id, 'Nébuliseurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('nebuliseurs', 'fr', 'Nébuliseurs');
            PERFORM insert_category_translations('nebuliseurs', 'ar', 'أجهزة استنشاق');
            PERFORM insert_category_translations('nebuliseurs', 'en', 'Nebulizers');
            PERFORM insert_category_translations('nebuliseurs', 'de', 'Vernebler');
            PERFORM insert_category_translations('nebuliseurs', 'es', 'Nebulizadores');
            PERFORM insert_category_translations('nebuliseurs', 'it', 'Nebulizzatori');

            -- Level 2: tests-rapides
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tests-rapides', 'tests-rapides', 2, l1_id, 'Tests Rapides (glycémie, grossesse…)')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tests-rapides', 'fr', 'Tests Rapides (glycémie, grossesse…)');
            PERFORM insert_category_translations('tests-rapides', 'ar', 'اختبارات سريعة');
            PERFORM insert_category_translations('tests-rapides', 'en', 'Rapid Tests');
            PERFORM insert_category_translations('tests-rapides', 'de', 'Schnelltests');
            PERFORM insert_category_translations('tests-rapides', 'es', 'Tests Rápidos');
            PERFORM insert_category_translations('tests-rapides', 'it', 'Test Rapidi');

            -- Level 2: aerosols
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('aerosols', 'aerosols', 2, l1_id, 'Aérosols')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('aerosols', 'fr', 'Aérosols');
            PERFORM insert_category_translations('aerosols', 'ar', 'بخاصات');
            PERFORM insert_category_translations('aerosols', 'en', 'Aerosols');
            PERFORM insert_category_translations('aerosols', 'de', 'Aerosole');
            PERFORM insert_category_translations('aerosols', 'es', 'Aerosoles');
            PERFORM insert_category_translations('aerosols', 'it', 'Aerosol');

            -- Level 2: pulverisateurs-medicaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pulverisateurs-medicaux', 'pulverisateurs-medicaux', 2, l1_id, 'Pulvérisateurs Médicaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pulverisateurs-medicaux', 'fr', 'Pulvérisateurs Médicaux');
            PERFORM insert_category_translations('pulverisateurs-medicaux', 'ar', 'رشاشات طبية');
            PERFORM insert_category_translations('pulverisateurs-medicaux', 'en', 'Medical Sprayers');
            PERFORM insert_category_translations('pulverisateurs-medicaux', 'de', 'Medizinische Zerstäuber');
            PERFORM insert_category_translations('pulverisateurs-medicaux', 'es', 'Pulverizadores Médicos');
            PERFORM insert_category_translations('pulverisateurs-medicaux', 'it', 'Nebulizzatori Medici');

        -- Level 1: produits-solaires
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-solaires', 'produits-solaires', 1, root_id, 'Produits Solaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('produits-solaires', 'fr', 'Produits Solaires');
        PERFORM insert_category_translations('produits-solaires', 'ar', 'منتجات الوقاية من الشمس');
        PERFORM insert_category_translations('produits-solaires', 'en', 'Sun Products');
        PERFORM insert_category_translations('produits-solaires', 'de', 'Sonnenschutzprodukte');
        PERFORM insert_category_translations('produits-solaires', 'es', 'Productos Solares');
        PERFORM insert_category_translations('produits-solaires', 'it', 'Prodotti Solari');

            -- Level 2: cremes-spf
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cremes-spf', 'cremes-spf', 2, l1_id, 'Crèmes SPF')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cremes-spf', 'fr', 'Crèmes SPF');
            PERFORM insert_category_translations('cremes-spf', 'ar', 'كريمات واقية من الشمس');
            PERFORM insert_category_translations('cremes-spf', 'en', 'SPF Creams');
            PERFORM insert_category_translations('cremes-spf', 'de', 'SPF-Cremes');
            PERFORM insert_category_translations('cremes-spf', 'es', 'Cremas SPF');
            PERFORM insert_category_translations('cremes-spf', 'it', 'Creme SPF');

            -- Level 2: sprays-solaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sprays-solaires', 'sprays-solaires', 2, l1_id, 'Sprays Solaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sprays-solaires', 'fr', 'Sprays Solaires');
            PERFORM insert_category_translations('sprays-solaires', 'ar', 'بخاخات واقية من الشمس');
            PERFORM insert_category_translations('sprays-solaires', 'en', 'Sun Sprays');
            PERFORM insert_category_translations('sprays-solaires', 'de', 'Sonnensprays');
            PERFORM insert_category_translations('sprays-solaires', 'es', 'Sprays Solares');
            PERFORM insert_category_translations('sprays-solaires', 'it', 'Spray Solari');

            -- Level 2: cremes-teintees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cremes-teintees', 'cremes-teintees', 2, l1_id, 'Crèmes Teintées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cremes-teintees', 'fr', 'Crèmes Teintées');
            PERFORM insert_category_translations('cremes-teintees', 'ar', 'كريمات ملونة');
            PERFORM insert_category_translations('cremes-teintees', 'en', 'Tinted Creams');
            PERFORM insert_category_translations('cremes-teintees', 'de', 'Getönte Cremes');
            PERFORM insert_category_translations('cremes-teintees', 'es', 'Cremas con Color');
            PERFORM insert_category_translations('cremes-teintees', 'it', 'Creme Colorate');

            -- Level 2: protections-enfants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('protections-enfants', 'protections-enfants', 2, l1_id, 'Protections Enfants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('protections-enfants', 'fr', 'Protections Enfants');
            PERFORM insert_category_translations('protections-enfants', 'ar', 'حماية للأطفال');
            PERFORM insert_category_translations('protections-enfants', 'en', 'Child Protection');
            PERFORM insert_category_translations('protections-enfants', 'de', 'Kinderschutz');
            PERFORM insert_category_translations('protections-enfants', 'es', 'Protección Infantil');
            PERFORM insert_category_translations('protections-enfants', 'it', 'Protezione Bambini');

            -- Level 2: soins-apres-soleil
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soins-apres-soleil', 'soins-apres-soleil', 2, l1_id, 'Soins Après-soleil')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('soins-apres-soleil', 'fr', 'Soins Après-soleil');
            PERFORM insert_category_translations('soins-apres-soleil', 'ar', 'عناية بعد التعرض للشمس');
            PERFORM insert_category_translations('soins-apres-soleil', 'en', 'After-Sun Care');
            PERFORM insert_category_translations('soins-apres-soleil', 'de', 'After-Sun-Pflege');
            PERFORM insert_category_translations('soins-apres-soleil', 'es', 'Aftersun');
            PERFORM insert_category_translations('soins-apres-soleil', 'it', 'Doposole');

            -- Level 2: huiles-solaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('huiles-solaires', 'huiles-solaires', 2, l1_id, 'Huiles Solaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('huiles-solaires', 'fr', 'Huiles Solaires');
            PERFORM insert_category_translations('huiles-solaires', 'ar', 'زيوت شمسية');
            PERFORM insert_category_translations('huiles-solaires', 'en', 'Sun Oils');
            PERFORM insert_category_translations('huiles-solaires', 'de', 'Sonnenöle');
            PERFORM insert_category_translations('huiles-solaires', 'es', 'Aceites Solares');
            PERFORM insert_category_translations('huiles-solaires', 'it', 'Oli Solari');

            -- Level 2: sticks-spf
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sticks-spf', 'sticks-spf', 2, l1_id, 'Sticks SPF')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sticks-spf', 'fr', 'Sticks SPF');
            PERFORM insert_category_translations('sticks-spf', 'ar', 'أصابع واقية من الشمس');
            PERFORM insert_category_translations('sticks-spf', 'en', 'SPF Sticks');
            PERFORM insert_category_translations('sticks-spf', 'de', 'SPF-Sticks');
            PERFORM insert_category_translations('sticks-spf', 'es', 'Sticks SPF');
            PERFORM insert_category_translations('sticks-spf', 'it', 'Stick SPF');

        -- Level 1: phytotherapie
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('phytotherapie', 'phytotherapie', 1, root_id, 'Phytothérapie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('phytotherapie', 'fr', 'Phytothérapie');
        PERFORM insert_category_translations('phytotherapie', 'ar', 'التداوي بالأعشاب');
        PERFORM insert_category_translations('phytotherapie', 'en', 'Phytotherapy');
        PERFORM insert_category_translations('phytotherapie', 'de', 'Phytotherapie');
        PERFORM insert_category_translations('phytotherapie', 'es', 'Fitoterapia');
        PERFORM insert_category_translations('phytotherapie', 'it', 'Fitoterapia');

            -- Level 2: extraits-naturels
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('extraits-naturels', 'extraits-naturels', 2, l1_id, 'Extraits Naturels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('extraits-naturels', 'fr', 'Extraits Naturels');
            PERFORM insert_category_translations('extraits-naturels', 'ar', 'مستخلصات طبيعية');
            PERFORM insert_category_translations('extraits-naturels', 'en', 'Natural Extracts');
            PERFORM insert_category_translations('extraits-naturels', 'de', 'Naturextrakte');
            PERFORM insert_category_translations('extraits-naturels', 'es', 'Extractos Naturales');
            PERFORM insert_category_translations('extraits-naturels', 'it', 'Estratti Naturali');

            -- Level 2: plantes-medicinales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('plantes-medicinales', 'plantes-medicinales', 2, l1_id, 'Plantes Médicinales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('plantes-medicinales', 'fr', 'Plantes Médicinales');
            PERFORM insert_category_translations('plantes-medicinales', 'ar', 'نباتات طبية');
            PERFORM insert_category_translations('plantes-medicinales', 'en', 'Medicinal Plants');
            PERFORM insert_category_translations('plantes-medicinales', 'de', 'Heilpflanzen');
            PERFORM insert_category_translations('plantes-medicinales', 'es', 'Plantas Medicinales');
            PERFORM insert_category_translations('plantes-medicinales', 'it', 'Piante Medicinali');

            -- Level 2: tisanes-therapeutiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tisanes-therapeutiques', 'tisanes-therapeutiques', 2, l1_id, 'Tisanes Thérapeutiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tisanes-therapeutiques', 'fr', 'Tisanes Thérapeutiques');
            PERFORM insert_category_translations('tisanes-therapeutiques', 'ar', 'شاي علاجي');
            PERFORM insert_category_translations('tisanes-therapeutiques', 'en', 'Therapeutic Teas');
            PERFORM insert_category_translations('tisanes-therapeutiques', 'de', 'Heiltees');
            PERFORM insert_category_translations('tisanes-therapeutiques', 'es', 'Infusiones Terapéuticas');
            PERFORM insert_category_translations('tisanes-therapeutiques', 'it', 'Tisane Terapeutiche');

            -- Level 2: gelules-naturelles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gelules-naturelles', 'gelules-naturelles', 2, l1_id, 'Gélules Naturelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gelules-naturelles', 'fr', 'Gélules Naturelles');
            PERFORM insert_category_translations('gelules-naturelles', 'ar', 'كبسولات طبيعية');
            PERFORM insert_category_translations('gelules-naturelles', 'en', 'Natural Capsules');
            PERFORM insert_category_translations('gelules-naturelles', 'de', 'Naturkapseln');
            PERFORM insert_category_translations('gelules-naturelles', 'es', 'Cápsulas Naturales');
            PERFORM insert_category_translations('gelules-naturelles', 'it', 'Capsule Naturali');

            -- Level 2: poudres-plantes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('poudres-plantes', 'poudres-plantes', 2, l1_id, 'Poudres de Plantes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('poudres-plantes', 'fr', 'Poudres de Plantes');
            PERFORM insert_category_translations('poudres-plantes', 'ar', 'مسحوق نباتات');
            PERFORM insert_category_translations('poudres-plantes', 'en', 'Plant Powders');
            PERFORM insert_category_translations('poudres-plantes', 'de', 'Pflanzenpulver');
            PERFORM insert_category_translations('poudres-plantes', 'es', 'Polvos de Plantas');
            PERFORM insert_category_translations('poudres-plantes', 'it', 'Polveri di Piante');

            -- Level 2: macerats
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('macerats', 'macerats', 2, l1_id, 'Macérats')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('macerats', 'fr', 'Macérats');
            PERFORM insert_category_translations('macerats', 'ar', 'منقوعات');
            PERFORM insert_category_translations('macerats', 'en', 'Macerates');
            PERFORM insert_category_translations('macerats', 'de', 'Mazerate');
            PERFORM insert_category_translations('macerats', 'es', 'Macerados');
            PERFORM insert_category_translations('macerats', 'it', 'Macerati');

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

            -- Level 2: diffuseurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('diffuseurs', 'diffuseurs', 2, l1_id, 'Diffuseurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('diffuseurs', 'fr', 'Diffuseurs');
            PERFORM insert_category_translations('diffuseurs', 'ar', 'ناشرات العطر');
            PERFORM insert_category_translations('diffuseurs', 'en', 'Diffusers');
            PERFORM insert_category_translations('diffuseurs', 'de', 'Diffusoren');
            PERFORM insert_category_translations('diffuseurs', 'es', 'Difusores');
            PERFORM insert_category_translations('diffuseurs', 'it', 'Diffusori');

            -- Level 2: huiles-essentielles-pures
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('huiles-essentielles-pures', 'huiles-essentielles-pures', 2, l1_id, 'Huiles Essentielles Pures')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('huiles-essentielles-pures', 'fr', 'Huiles Essentielles Pures');
            PERFORM insert_category_translations('huiles-essentielles-pures', 'ar', 'زيوت أساسية نقية');
            PERFORM insert_category_translations('huiles-essentielles-pures', 'en', 'Pure Essential Oils');
            PERFORM insert_category_translations('huiles-essentielles-pures', 'de', 'Reine ätherische Öle');
            PERFORM insert_category_translations('huiles-essentielles-pures', 'es', 'Aceites Esenciales Puros');
            PERFORM insert_category_translations('huiles-essentielles-pures', 'it', 'Oli Essenziali Puri');

            -- Level 2: melanges-therapeutiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('melanges-therapeutiques', 'melanges-therapeutiques', 2, l1_id, 'Mélanges Thérapeutiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('melanges-therapeutiques', 'fr', 'Mélanges Thérapeutiques');
            PERFORM insert_category_translations('melanges-therapeutiques', 'ar', 'خلطات علاجية');
            PERFORM insert_category_translations('melanges-therapeutiques', 'en', 'Therapeutic Blends');
            PERFORM insert_category_translations('melanges-therapeutiques', 'de', 'Therapeutische Mischungen');
            PERFORM insert_category_translations('melanges-therapeutiques', 'es', 'Mezclas Terapéuticas');
            PERFORM insert_category_translations('melanges-therapeutiques', 'it', 'Miscele Terapeutiche');

            -- Level 2: brumes-aromatiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('brumes-aromatiques', 'brumes-aromatiques', 2, l1_id, 'Brumes Aromatiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('brumes-aromatiques', 'fr', 'Brumes Aromatiques');
            PERFORM insert_category_translations('brumes-aromatiques', 'ar', 'رذاذ عطري');
            PERFORM insert_category_translations('brumes-aromatiques', 'en', 'Aromatic Mists');
            PERFORM insert_category_translations('brumes-aromatiques', 'de', 'Aromasprays');
            PERFORM insert_category_translations('brumes-aromatiques', 'es', 'Brumas Aromáticas');
            PERFORM insert_category_translations('brumes-aromatiques', 'it', 'Nebbie Aromatiche');

            -- Level 2: synergies-huiles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('synergies-huiles', 'synergies-huiles', 2, l1_id, 'Synergies d''''Huiles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('synergies-huiles', 'fr', 'Synergies d''Huiles');
            PERFORM insert_category_translations('synergies-huiles', 'ar', 'مزيج زيوت');
            PERFORM insert_category_translations('synergies-huiles', 'en', 'Oil Synergies');
            PERFORM insert_category_translations('synergies-huiles', 'de', 'Ölsynergien');
            PERFORM insert_category_translations('synergies-huiles', 'es', 'Sinergias de Aceites');
            PERFORM insert_category_translations('synergies-huiles', 'it', 'Sinergie di Oli');

            -- Level 2: roll-on-bien-etre
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('roll-on-bien-etre', 'roll-on-bien-etre', 2, l1_id, 'Roll-on Bien-être')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('roll-on-bien-etre', 'fr', 'Roll-on Bien-être');
            PERFORM insert_category_translations('roll-on-bien-etre', 'ar', 'رول أون للرفاهية');
            PERFORM insert_category_translations('roll-on-bien-etre', 'en', 'Wellness Roll-ons');
            PERFORM insert_category_translations('roll-on-bien-etre', 'de', 'Wohlfühl-Roll-ons');
            PERFORM insert_category_translations('roll-on-bien-etre', 'es', 'Roll-on Bienestar');
            PERFORM insert_category_translations('roll-on-bien-etre', 'it', 'Roll-on Benessere');

        -- Level 1: produits-dietetiques
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-dietetiques', 'produits-dietetiques', 1, root_id, 'Produits Diététiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('produits-dietetiques', 'fr', 'Produits Diététiques');
        PERFORM insert_category_translations('produits-dietetiques', 'ar', 'منتجات حمية غذائية');
        PERFORM insert_category_translations('produits-dietetiques', 'en', 'Dietetic Products');
        PERFORM insert_category_translations('produits-dietetiques', 'de', 'Diätprodukte');
        PERFORM insert_category_translations('produits-dietetiques', 'es', 'Productos Dietéticos');
        PERFORM insert_category_translations('produits-dietetiques', 'it', 'Prodotti Dietetici');

            -- Level 2: proteines
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('proteines', 'proteines', 2, l1_id, 'Protéines')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('proteines', 'fr', 'Protéines');
            PERFORM insert_category_translations('proteines', 'ar', 'بروتينات');
            PERFORM insert_category_translations('proteines', 'en', 'Proteins');
            PERFORM insert_category_translations('proteines', 'de', 'Proteine');
            PERFORM insert_category_translations('proteines', 'es', 'Proteínas');
            PERFORM insert_category_translations('proteines', 'it', 'Proteine');

            -- Level 2: gainers
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gainers', 'gainers', 2, l1_id, 'Gainers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gainers', 'fr', 'Gainers');
            PERFORM insert_category_translations('gainers', 'ar', 'مكملات زيادة الوزن');
            PERFORM insert_category_translations('gainers', 'en', 'Gainers');
            PERFORM insert_category_translations('gainers', 'de', 'Weight Gainer');
            PERFORM insert_category_translations('gainers', 'es', 'Ganadores de Peso');
            PERFORM insert_category_translations('gainers', 'it', 'Gainer');

            -- Level 2: bruleurs-graisse
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bruleurs-graisse', 'bruleurs-graisse', 2, l1_id, 'Brûleurs de Graisse')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bruleurs-graisse', 'fr', 'Brûleurs de Graisse');
            PERFORM insert_category_translations('bruleurs-graisse', 'ar', 'حوارق الدهون');
            PERFORM insert_category_translations('bruleurs-graisse', 'en', 'Fat Burners');
            PERFORM insert_category_translations('bruleurs-graisse', 'de', 'Fettverbrenner');
            PERFORM insert_category_translations('bruleurs-graisse', 'es', 'Quemadores de Grasa');
            PERFORM insert_category_translations('bruleurs-graisse', 'it', 'Brucia Grassi');

            -- Level 2: substituts-repas
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('substituts-repas', 'substituts-repas', 2, l1_id, 'Substituts de Repas')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('substituts-repas', 'fr', 'Substituts de Repas');
            PERFORM insert_category_translations('substituts-repas', 'ar', 'بدائل الوجبات');
            PERFORM insert_category_translations('substituts-repas', 'en', 'Meal Replacements');
            PERFORM insert_category_translations('substituts-repas', 'de', 'Mahlzeitenersatz');
            PERFORM insert_category_translations('substituts-repas', 'es', 'Sustitutos de Comida');
            PERFORM insert_category_translations('substituts-repas', 'it', 'Sostituti del Pasto');

            -- Level 2: produits-detox
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-detox', 'produits-detox', 2, l1_id, 'Produits Détox')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('produits-detox', 'fr', 'Produits Détox');
            PERFORM insert_category_translations('produits-detox', 'ar', 'منتجات ديتوكس');
            PERFORM insert_category_translations('produits-detox', 'en', 'Detox Products');
            PERFORM insert_category_translations('produits-detox', 'de', 'Detox-Produkte');
            PERFORM insert_category_translations('produits-detox', 'es', 'Productos Detox');
            PERFORM insert_category_translations('produits-detox', 'it', 'Prodotti Detox');

            -- Level 2: boissons-energetiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('boissons-energetiques', 'boissons-energetiques', 2, l1_id, 'Boissons Énergétiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('boissons-energetiques', 'fr', 'Boissons Énergétiques');
            PERFORM insert_category_translations('boissons-energetiques', 'ar', 'مشروبات طاقة');
            PERFORM insert_category_translations('boissons-energetiques', 'en', 'Energy Drinks');
            PERFORM insert_category_translations('boissons-energetiques', 'de', 'Energydrinks');
            PERFORM insert_category_translations('boissons-energetiques', 'es', 'Bebidas Energéticas');
            PERFORM insert_category_translations('boissons-energetiques', 'it', 'Bevande Energetiche');

            -- Level 2: fibres-nutritionnelles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fibres-nutritionnelles', 'fibres-nutritionnelles', 2, l1_id, 'Fibres Nutritionnelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fibres-nutritionnelles', 'fr', 'Fibres Nutritionnelles');
            PERFORM insert_category_translations('fibres-nutritionnelles', 'ar', 'ألياف غذائية');
            PERFORM insert_category_translations('fibres-nutritionnelles', 'en', 'Nutritional Fibers');
            PERFORM insert_category_translations('fibres-nutritionnelles', 'de', 'Ballaststoffe');
            PERFORM insert_category_translations('fibres-nutritionnelles', 'es', 'Fibras Nutricionales');
            PERFORM insert_category_translations('fibres-nutritionnelles', 'it', 'Fibre Nutrizionali');

            -- Level 2: super-aliments
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('super-aliments', 'super-aliments', 2, l1_id, 'Super-aliments')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('super-aliments', 'fr', 'Super-aliments');
            PERFORM insert_category_translations('super-aliments', 'ar', 'أغذية خارقة');
            PERFORM insert_category_translations('super-aliments', 'en', 'Superfoods');
            PERFORM insert_category_translations('super-aliments', 'de', 'Superfoods');
            PERFORM insert_category_translations('super-aliments', 'es', 'Superalimentos');
            PERFORM insert_category_translations('super-aliments', 'it', 'Superfood');

        -- Level 1: desinfection-antiseptiques
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('desinfection-antiseptiques', 'desinfection-antiseptiques', 1, root_id, 'Désinfection & Antiseptiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('desinfection-antiseptiques', 'fr', 'Désinfection & Antiseptiques');
        PERFORM insert_category_translations('desinfection-antiseptiques', 'ar', 'تطهير وتعقيم');
        PERFORM insert_category_translations('desinfection-antiseptiques', 'en', 'Disinfection & Antiseptics');
        PERFORM insert_category_translations('desinfection-antiseptiques', 'de', 'Desinfektion & Antiseptika');
        PERFORM insert_category_translations('desinfection-antiseptiques', 'es', 'Desinfección y Antisépticos');
        PERFORM insert_category_translations('desinfection-antiseptiques', 'it', 'Disinfezione e Antisettici');

            -- Level 2: gels-hydroalcooliques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gels-hydroalcooliques', 'gels-hydroalcooliques', 2, l1_id, 'Gels Hydroalcooliques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gels-hydroalcooliques', 'fr', 'Gels Hydroalcooliques');
            PERFORM insert_category_translations('gels-hydroalcooliques', 'ar', 'جل كحولي');
            PERFORM insert_category_translations('gels-hydroalcooliques', 'en', 'Hydroalcoholic Gels');
            PERFORM insert_category_translations('gels-hydroalcooliques', 'de', 'Hydroalkoholische Gele');
            PERFORM insert_category_translations('gels-hydroalcooliques', 'es', 'Geles Hidroalcohólicos');
            PERFORM insert_category_translations('gels-hydroalcooliques', 'it', 'Gel Idroalcolici');

            -- Level 2: sprays-desinfectants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sprays-desinfectants', 'sprays-desinfectants', 2, l1_id, 'Sprays Désinfectants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sprays-desinfectants', 'fr', 'Sprays Désinfectants');
            PERFORM insert_category_translations('sprays-desinfectants', 'ar', 'بخاخات مطهرة');
            PERFORM insert_category_translations('sprays-desinfectants', 'en', 'Disinfectant Sprays');
            PERFORM insert_category_translations('sprays-desinfectants', 'de', 'Desinfektionssprays');
            PERFORM insert_category_translations('sprays-desinfectants', 'es', 'Sprays Desinfectantes');
            PERFORM insert_category_translations('sprays-desinfectants', 'it', 'Spray Disinfettanti');

            -- Level 2: lingettes-virucides
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lingettes-virucides', 'lingettes-virucides', 2, l1_id, 'Lingettes Virucides')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lingettes-virucides', 'fr', 'Lingettes Virucides');
            PERFORM insert_category_translations('lingettes-virucides', 'ar', 'مناديل قاتلة للفيروسات');
            PERFORM insert_category_translations('lingettes-virucides', 'en', 'Virucidal Wipes');
            PERFORM insert_category_translations('lingettes-virucides', 'de', 'Viruzide Tücher');
            PERFORM insert_category_translations('lingettes-virucides', 'es', 'Toallitas Virucidas');
            PERFORM insert_category_translations('lingettes-virucides', 'it', 'Salviette Virucide');

            -- Level 2: solutions-antiseptiques-pro
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('solutions-antiseptiques-pro', 'solutions-antiseptiques-pro', 2, l1_id, 'Solutions Antiseptiques Pro')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('solutions-antiseptiques-pro', 'fr', 'Solutions Antiseptiques Pro');
            PERFORM insert_category_translations('solutions-antiseptiques-pro', 'ar', 'محاليل مطهرة احترافية');
            PERFORM insert_category_translations('solutions-antiseptiques-pro', 'en', 'Pro Antiseptic Solutions');
            PERFORM insert_category_translations('solutions-antiseptiques-pro', 'de', 'Profi-Antiseptika');
            PERFORM insert_category_translations('solutions-antiseptiques-pro', 'es', 'Soluciones Antisépticas Pro');
            PERFORM insert_category_translations('solutions-antiseptiques-pro', 'it', 'Soluzioni Antisettiche Pro');

            -- Level 2: desinfectants-surfaces
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('desinfectants-surfaces', 'desinfectants-surfaces', 2, l1_id, 'Désinfectants pour Surfaces')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('desinfectants-surfaces', 'fr', 'Désinfectants pour Surfaces');
            PERFORM insert_category_translations('desinfectants-surfaces', 'ar', 'مطهرات أسطح');
            PERFORM insert_category_translations('desinfectants-surfaces', 'en', 'Surface Disinfectants');
            PERFORM insert_category_translations('desinfectants-surfaces', 'de', 'Flächendesinfektionsmittel');
            PERFORM insert_category_translations('desinfectants-surfaces', 'es', 'Desinfectantes de Superficies');
            PERFORM insert_category_translations('desinfectants-surfaces', 'it', 'Disinfettanti per Superfici');

        -- Level 1: produits-menagers-chimiques
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-menagers-chimiques', 'produits-menagers-chimiques', 1, root_id, 'Produits Ménagers Chimiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('produits-menagers-chimiques', 'fr', 'Produits Ménagers Chimiques');
        PERFORM insert_category_translations('produits-menagers-chimiques', 'ar', 'منتجات تنظيف كيميائية');
        PERFORM insert_category_translations('produits-menagers-chimiques', 'en', 'Chemical Household Products');
        PERFORM insert_category_translations('produits-menagers-chimiques', 'de', 'Chemische Haushaltsprodukte');
        PERFORM insert_category_translations('produits-menagers-chimiques', 'es', 'Productos de Limpieza Química');
        PERFORM insert_category_translations('produits-menagers-chimiques', 'it', 'Prodotti Chimici per la Casa');

            -- Level 2: detergents-multi-usages
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('detergents-multi-usages', 'detergents-multi-usages', 2, l1_id, 'Détergents Multi-usages')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('detergents-multi-usages', 'fr', 'Détergents Multi-usages');
            PERFORM insert_category_translations('detergents-multi-usages', 'ar', 'منظفات متعددة الاستعمالات');
            PERFORM insert_category_translations('detergents-multi-usages', 'en', 'Multi-purpose Detergents');
            PERFORM insert_category_translations('detergents-multi-usages', 'de', 'Allzweckreiniger');
            PERFORM insert_category_translations('detergents-multi-usages', 'es', 'Detergentes Multiusos');
            PERFORM insert_category_translations('detergents-multi-usages', 'it', 'Detergenti Multiuso');

            -- Level 2: degraissants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('degraissants', 'degraissants', 2, l1_id, 'Dégraissants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('degraissants', 'fr', 'Dégraissants');
            PERFORM insert_category_translations('degraissants', 'ar', 'مزيلا شحوم');
            PERFORM insert_category_translations('degraissants', 'en', 'Degreasers');
            PERFORM insert_category_translations('degraissants', 'de', 'Entfetter');
            PERFORM insert_category_translations('degraissants', 'es', 'Desengrasantes');
            PERFORM insert_category_translations('degraissants', 'it', 'Sgrassatori');

            -- Level 2: desodorisants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('desodorisants', 'desodorisants', 2, l1_id, 'Désodorisants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('desodorisants', 'fr', 'Désodorisants');
            PERFORM insert_category_translations('desodorisants', 'ar', 'معطرات جو');
            PERFORM insert_category_translations('desodorisants', 'en', 'Air Fresheners');
            PERFORM insert_category_translations('desodorisants', 'de', 'Lufterfrischer');
            PERFORM insert_category_translations('desodorisants', 'es', 'Ambientadores');
            PERFORM insert_category_translations('desodorisants', 'it', 'Deodoranti per Ambienti');

            -- Level 2: nettoyants-sanitaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('nettoyants-sanitaires', 'nettoyants-sanitaires', 2, l1_id, 'Nettoyants Sanitaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('nettoyants-sanitaires', 'fr', 'Nettoyants Sanitaires');
            PERFORM insert_category_translations('nettoyants-sanitaires', 'ar', 'منظفات صحية');
            PERFORM insert_category_translations('nettoyants-sanitaires', 'en', 'Sanitary Cleaners');
            PERFORM insert_category_translations('nettoyants-sanitaires', 'de', 'Sanitärreiniger');
            PERFORM insert_category_translations('nettoyants-sanitaires', 'es', 'Limpiadores Sanitarios');
            PERFORM insert_category_translations('nettoyants-sanitaires', 'it', 'Detergenti Sanitari');

            -- Level 2: nettoyants-vitres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('nettoyants-vitres', 'nettoyants-vitres', 2, l1_id, 'Nettoyants Vitres')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('nettoyants-vitres', 'fr', 'Nettoyants Vitres');
            PERFORM insert_category_translations('nettoyants-vitres', 'ar', 'منظفات زجاج');
            PERFORM insert_category_translations('nettoyants-vitres', 'en', 'Glass Cleaners');
            PERFORM insert_category_translations('nettoyants-vitres', 'de', 'Glasreiniger');
            PERFORM insert_category_translations('nettoyants-vitres', 'es', 'Limpiacristales');
            PERFORM insert_category_translations('nettoyants-vitres', 'it', 'Detergenti Vetri');

            -- Level 2: anticalcaire
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('anticalcaire', 'anticalcaire', 2, l1_id, 'Anticalcaire')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('anticalcaire', 'fr', 'Anticalcaire');
            PERFORM insert_category_translations('anticalcaire', 'ar', 'مضاد للكلس');
            PERFORM insert_category_translations('anticalcaire', 'en', 'Limescale Removers');
            PERFORM insert_category_translations('anticalcaire', 'de', 'Entkalker');
            PERFORM insert_category_translations('anticalcaire', 'es', 'Antical');
            PERFORM insert_category_translations('anticalcaire', 'it', 'Anticalcare');

        -- Level 1: produits-entretien-industriels
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-entretien-industriels', 'produits-entretien-industriels', 1, root_id, 'Produits d''''Entretien Industriels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('produits-entretien-industriels', 'fr', 'Produits d''Entretien Industriels');
        PERFORM insert_category_translations('produits-entretien-industriels', 'ar', 'منتجات صيانة صناعية');
        PERFORM insert_category_translations('produits-entretien-industriels', 'en', 'Industrial Cleaning Products');
        PERFORM insert_category_translations('produits-entretien-industriels', 'de', 'Industrielle Reinigungsprodukte');
        PERFORM insert_category_translations('produits-entretien-industriels', 'es', 'Productos de Limpieza Industrial');
        PERFORM insert_category_translations('produits-entretien-industriels', 'it', 'Prodotti per la Pulizia Industriale');

            -- Level 2: decapants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('decapants', 'decapants', 2, l1_id, 'Décapants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('decapants', 'fr', 'Décapants');
            PERFORM insert_category_translations('decapants', 'ar', 'مذيبات طلاء');
            PERFORM insert_category_translations('decapants', 'en', 'Strippers');
            PERFORM insert_category_translations('decapants', 'de', 'Abbeizmittel');
            PERFORM insert_category_translations('decapants', 'es', 'Decapantes');
            PERFORM insert_category_translations('decapants', 'it', 'Sverniciatori');

            -- Level 2: solvants-professionnels
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('solvants-professionnels', 'solvants-professionnels', 2, l1_id, 'Solvants Professionnels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('solvants-professionnels', 'fr', 'Solvants Professionnels');
            PERFORM insert_category_translations('solvants-professionnels', 'ar', 'مذيبات احترافية');
            PERFORM insert_category_translations('solvants-professionnels', 'en', 'Professional Solvents');
            PERFORM insert_category_translations('solvants-professionnels', 'de', 'Profi-Lösungsmittel');
            PERFORM insert_category_translations('solvants-professionnels', 'es', 'Disolventes Profesionales');
            PERFORM insert_category_translations('solvants-professionnels', 'it', 'Solventi Professionali');

            -- Level 2: agents-degraissants-puissants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('agents-degraissants-puissants', 'agents-degraissants-puissants', 2, l1_id, 'Agents Dégraissants Puissants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('agents-degraissants-puissants', 'fr', 'Agents Dégraissants Puissants');
            PERFORM insert_category_translations('agents-degraissants-puissants', 'ar', 'مزيلا شحوم قوية');
            PERFORM insert_category_translations('agents-degraissants-puissants', 'en', 'Powerful Degreasing Agents');
            PERFORM insert_category_translations('agents-degraissants-puissants', 'de', 'Starke Entfetter');
            PERFORM insert_category_translations('agents-degraissants-puissants', 'es', 'Desengrasantes Potentes');
            PERFORM insert_category_translations('agents-degraissants-puissants', 'it', 'Sgrassatori Potenti');

            -- Level 2: nettoyants-machines
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('nettoyants-machines', 'nettoyants-machines', 2, l1_id, 'Nettoyants pour Machines')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('nettoyants-machines', 'fr', 'Nettoyants pour Machines');
            PERFORM insert_category_translations('nettoyants-machines', 'ar', 'منظفات آلات');
            PERFORM insert_category_translations('nettoyants-machines', 'en', 'Machine Cleaners');
            PERFORM insert_category_translations('nettoyants-machines', 'de', 'Maschinenreiniger');
            PERFORM insert_category_translations('nettoyants-machines', 'es', 'Limpiadores de Máquinas');
            PERFORM insert_category_translations('nettoyants-machines', 'it', 'Detergenti per Macchinari');

            -- Level 2: detartrants-industriels
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('detartrants-industriels', 'detartrants-industriels', 2, l1_id, 'Détartrants Industriels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('detartrants-industriels', 'fr', 'Détartrants Industriels');
            PERFORM insert_category_translations('detartrants-industriels', 'ar', 'مزيلا ترسبات صناعية');
            PERFORM insert_category_translations('detartrants-industriels', 'en', 'Industrial Descalers');
            PERFORM insert_category_translations('detartrants-industriels', 'de', 'Industrieentkalker');
            PERFORM insert_category_translations('detartrants-industriels', 'es', 'Desincrustantes Industriales');
            PERFORM insert_category_translations('detartrants-industriels', 'it', 'Disincrostanti Industriali');

        -- Level 1: peintures-solvants
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('peintures-solvants', 'peintures-solvants', 1, root_id, 'Peintures & Solvants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('peintures-solvants', 'fr', 'Peintures & Solvants');
        PERFORM insert_category_translations('peintures-solvants', 'ar', 'دهانات ومذيبات');
        PERFORM insert_category_translations('peintures-solvants', 'en', 'Paints & Solvents');
        PERFORM insert_category_translations('peintures-solvants', 'de', 'Farben & Lösungsmittel');
        PERFORM insert_category_translations('peintures-solvants', 'es', 'Pinturas y Disolventes');
        PERFORM insert_category_translations('peintures-solvants', 'it', 'Vernici e Solventi');

            -- Level 2: peintures-chimiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('peintures-chimiques', 'peintures-chimiques', 2, l1_id, 'Peintures Chimiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('peintures-chimiques', 'fr', 'Peintures Chimiques');
            PERFORM insert_category_translations('peintures-chimiques', 'ar', 'دهانات كيميائية');
            PERFORM insert_category_translations('peintures-chimiques', 'en', 'Chemical Paints');
            PERFORM insert_category_translations('peintures-chimiques', 'de', 'Chemische Farben');
            PERFORM insert_category_translations('peintures-chimiques', 'es', 'Pinturas Químicas');
            PERFORM insert_category_translations('peintures-chimiques', 'it', 'Vernici Chimiche');

            -- Level 2: resines
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('resines', 'resines', 2, l1_id, 'Résines')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('resines', 'fr', 'Résines');
            PERFORM insert_category_translations('resines', 'ar', 'راتنجات');
            PERFORM insert_category_translations('resines', 'en', 'Resins');
            PERFORM insert_category_translations('resines', 'de', 'Harze');
            PERFORM insert_category_translations('resines', 'es', 'Resinas');
            PERFORM insert_category_translations('resines', 'it', 'Resine');

            -- Level 2: diluants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('diluants', 'diluants', 2, l1_id, 'Diluants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('diluants', 'fr', 'Diluants');
            PERFORM insert_category_translations('diluants', 'ar', 'مخففات');
            PERFORM insert_category_translations('diluants', 'en', 'Thinners');
            PERFORM insert_category_translations('diluants', 'de', 'Verdünner');
            PERFORM insert_category_translations('diluants', 'es', 'Diluyentes');
            PERFORM insert_category_translations('diluants', 'it', 'Diluenti');

            -- Level 2: acetone
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('acetone', 'acetone', 2, l1_id, 'Acétone')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('acetone', 'fr', 'Acétone');
            PERFORM insert_category_translations('acetone', 'ar', 'أسيتون');
            PERFORM insert_category_translations('acetone', 'en', 'Acetone');
            PERFORM insert_category_translations('acetone', 'de', 'Aceton');
            PERFORM insert_category_translations('acetone', 'es', 'Acetona');
            PERFORM insert_category_translations('acetone', 'it', 'Acetone');

            -- Level 2: white-spirit
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('white-spirit', 'white-spirit', 2, l1_id, 'White-spirit')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('white-spirit', 'fr', 'White-spirit');
            PERFORM insert_category_translations('white-spirit', 'ar', 'وايت سبيريت');
            PERFORM insert_category_translations('white-spirit', 'en', 'White Spirit');
            PERFORM insert_category_translations('white-spirit', 'de', 'Testbenzin');
            PERFORM insert_category_translations('white-spirit', 'es', 'Aguarrás');
            PERFORM insert_category_translations('white-spirit', 'it', 'Acquaragia');

            -- Level 2: vernis-techniques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vernis-techniques', 'vernis-techniques', 2, l1_id, 'Vernis Techniques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('vernis-techniques', 'fr', 'Vernis Techniques');
            PERFORM insert_category_translations('vernis-techniques', 'ar', 'ورنيش تقني');
            PERFORM insert_category_translations('vernis-techniques', 'en', 'Technical Varnishes');
            PERFORM insert_category_translations('vernis-techniques', 'de', 'Technische Lacke');
            PERFORM insert_category_translations('vernis-techniques', 'es', 'Barnices Técnicos');
            PERFORM insert_category_translations('vernis-techniques', 'it', 'Vernici Tecniche');

            -- Level 2: durcisseurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('durcisseurs', 'durcisseurs', 2, l1_id, 'Durcisseurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('durcisseurs', 'fr', 'Durcisseurs');
            PERFORM insert_category_translations('durcisseurs', 'ar', 'مصلبات');
            PERFORM insert_category_translations('durcisseurs', 'en', 'Hardeners');
            PERFORM insert_category_translations('durcisseurs', 'de', 'Härter');
            PERFORM insert_category_translations('durcisseurs', 'es', 'Endurecedores');
            PERFORM insert_category_translations('durcisseurs', 'it', 'Indurenti');

            -- Level 2: solvants-specialises
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('solvants-specialises', 'solvants-specialises', 2, l1_id, 'Solvants Spécialisés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('solvants-specialises', 'fr', 'Solvants Spécialisés');
            PERFORM insert_category_translations('solvants-specialises', 'ar', 'مذيبات متخصصة');
            PERFORM insert_category_translations('solvants-specialises', 'en', 'Specialized Solvents');
            PERFORM insert_category_translations('solvants-specialises', 'de', 'Speziallösungsmittel');
            PERFORM insert_category_translations('solvants-specialises', 'es', 'Disolventes Especializados');
            PERFORM insert_category_translations('solvants-specialises', 'it', 'Solventi Specializzati');

        -- Level 1: produits-piscine
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-piscine', 'produits-piscine', 1, root_id, 'Produits pour Piscine')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('produits-piscine', 'fr', 'Produits pour Piscine');
        PERFORM insert_category_translations('produits-piscine', 'ar', 'منتجات المسابح');
        PERFORM insert_category_translations('produits-piscine', 'en', 'Pool Products');
        PERFORM insert_category_translations('produits-piscine', 'de', 'Poolprodukte');
        PERFORM insert_category_translations('produits-piscine', 'es', 'Productos para Piscina');
        PERFORM insert_category_translations('produits-piscine', 'it', 'Prodotti per Piscina');

            -- Level 2: chlore
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chlore', 'chlore', 2, l1_id, 'Chlore')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chlore', 'fr', 'Chlore');
            PERFORM insert_category_translations('chlore', 'ar', 'كلور');
            PERFORM insert_category_translations('chlore', 'en', 'Chlorine');
            PERFORM insert_category_translations('chlore', 'de', 'Chlor');
            PERFORM insert_category_translations('chlore', 'es', 'Cloro');
            PERFORM insert_category_translations('chlore', 'it', 'Cloro');

            -- Level 2: ph-plus
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ph-plus', 'ph-plus', 2, l1_id, 'pH+')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ph-plus', 'fr', 'pH+');
            PERFORM insert_category_translations('ph-plus', 'ar', 'رافع pH');
            PERFORM insert_category_translations('ph-plus', 'en', 'pH+');
            PERFORM insert_category_translations('ph-plus', 'de', 'pH-Plus');
            PERFORM insert_category_translations('ph-plus', 'es', 'pH+');
            PERFORM insert_category_translations('ph-plus', 'it', 'pH+');

            -- Level 2: ph-moins
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ph-moins', 'ph-moins', 2, l1_id, 'pH-')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ph-moins', 'fr', 'pH-');
            PERFORM insert_category_translations('ph-moins', 'ar', 'خافض pH');
            PERFORM insert_category_translations('ph-moins', 'en', 'pH-');
            PERFORM insert_category_translations('ph-moins', 'de', 'pH-Minus');
            PERFORM insert_category_translations('ph-moins', 'es', 'pH-');
            PERFORM insert_category_translations('ph-moins', 'it', 'pH-');

            -- Level 2: floculants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('floculants', 'floculants', 2, l1_id, 'Floculants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('floculants', 'fr', 'Floculants');
            PERFORM insert_category_translations('floculants', 'ar', 'مواد تلبد');
            PERFORM insert_category_translations('floculants', 'en', 'Flocculants');
            PERFORM insert_category_translations('floculants', 'de', 'Flockungsmittel');
            PERFORM insert_category_translations('floculants', 'es', 'Floculantes');
            PERFORM insert_category_translations('floculants', 'it', 'Flocculanti');

            -- Level 2: algicides
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('algicides', 'algicides', 2, l1_id, 'Algicides')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('algicides', 'fr', 'Algicides');
            PERFORM insert_category_translations('algicides', 'ar', 'مبيدات طحالب');
            PERFORM insert_category_translations('algicides', 'en', 'Algaecides');
            PERFORM insert_category_translations('algicides', 'de', 'Algizide');
            PERFORM insert_category_translations('algicides', 'es', 'Algicidas');
            PERFORM insert_category_translations('algicides', 'it', 'Alghicidi');

            -- Level 2: stabilisateurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('stabilisateurs', 'stabilisateurs', 2, l1_id, 'Stabilisateurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('stabilisateurs', 'fr', 'Stabilisateurs');
            PERFORM insert_category_translations('stabilisateurs', 'ar', 'مثبتات');
            PERFORM insert_category_translations('stabilisateurs', 'en', 'Stabilizers');
            PERFORM insert_category_translations('stabilisateurs', 'de', 'Stabilisatoren');
            PERFORM insert_category_translations('stabilisateurs', 'es', 'Estabilizadores');
            PERFORM insert_category_translations('stabilisateurs', 'it', 'Stabilizzanti');

            -- Level 2: kits-analyse-eau
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('kits-analyse-eau', 'kits-analyse-eau', 2, l1_id, 'Kits Analyse Eau')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('kits-analyse-eau', 'fr', 'Kits Analyse Eau');
            PERFORM insert_category_translations('kits-analyse-eau', 'ar', 'أطقم تحليل مياه');
            PERFORM insert_category_translations('kits-analyse-eau', 'en', 'Water Analysis Kits');
            PERFORM insert_category_translations('kits-analyse-eau', 'de', 'Wasseranalyse-Kits');
            PERFORM insert_category_translations('kits-analyse-eau', 'es', 'Kits de Análisis de Agua');
            PERFORM insert_category_translations('kits-analyse-eau', 'it', 'Kit Analisi Acqua');

            -- Level 2: clarifiants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('clarifiants', 'clarifiants', 2, l1_id, 'Clarifiants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('clarifiants', 'fr', 'Clarifiants');
            PERFORM insert_category_translations('clarifiants', 'ar', 'مروقات');
            PERFORM insert_category_translations('clarifiants', 'en', 'Clarifiers');
            PERFORM insert_category_translations('clarifiants', 'de', 'Klärmittel');
            PERFORM insert_category_translations('clarifiants', 'es', 'Clarificantes');
            PERFORM insert_category_translations('clarifiants', 'it', 'Chiarificanti');

            -- Level 2: produits-hivernage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-hivernage', 'produits-hivernage', 2, l1_id, 'Produits Hivernage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('produits-hivernage', 'fr', 'Produits Hivernage');
            PERFORM insert_category_translations('produits-hivernage', 'ar', 'منتجات التشتية');
            PERFORM insert_category_translations('produits-hivernage', 'en', 'Winterizing Products');
            PERFORM insert_category_translations('produits-hivernage', 'de', 'Überwinterungsprodukte');
            PERFORM insert_category_translations('produits-hivernage', 'es', 'Productos de Invernaje');
            PERFORM insert_category_translations('produits-hivernage', 'it', 'Prodotti Svernamento');

        -- Level 1: produits-agricoles-chimiques
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-agricoles-chimiques', 'produits-agricoles-chimiques', 1, root_id, 'Produits Agricoles Chimiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('produits-agricoles-chimiques', 'fr', 'Produits Agricoles Chimiques');
        PERFORM insert_category_translations('produits-agricoles-chimiques', 'ar', 'منتجات زراعية كيميائية');
        PERFORM insert_category_translations('produits-agricoles-chimiques', 'en', 'Chemical Agricultural Products');
        PERFORM insert_category_translations('produits-agricoles-chimiques', 'de', 'Landwirtschaftliche Chemikalien');
        PERFORM insert_category_translations('produits-agricoles-chimiques', 'es', 'Productos Químicos Agrícolas');
        PERFORM insert_category_translations('produits-agricoles-chimiques', 'it', 'Prodotti Chimici Agricoli');

            -- Level 2: engrais-npk
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('engrais-npk', 'engrais-npk', 2, l1_id, 'Engrais NPK')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('engrais-npk', 'fr', 'Engrais NPK');
            PERFORM insert_category_translations('engrais-npk', 'ar', 'أسمدة NPK');
            PERFORM insert_category_translations('engrais-npk', 'en', 'NPK Fertilizers');
            PERFORM insert_category_translations('engrais-npk', 'de', 'NPK-Dünger');
            PERFORM insert_category_translations('engrais-npk', 'es', 'Fertilizantes NPK');
            PERFORM insert_category_translations('engrais-npk', 'it', 'Fertilizzanti NPK');

            -- Level 2: pesticides
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pesticides', 'pesticides', 2, l1_id, 'Pesticides')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pesticides', 'fr', 'Pesticides');
            PERFORM insert_category_translations('pesticides', 'ar', 'مبيدات حشرية');
            PERFORM insert_category_translations('pesticides', 'en', 'Pesticides');
            PERFORM insert_category_translations('pesticides', 'de', 'Pestizide');
            PERFORM insert_category_translations('pesticides', 'es', 'Pesticidas');
            PERFORM insert_category_translations('pesticides', 'it', 'Pesticidi');

            -- Level 2: herbicides
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('herbicides', 'herbicides', 2, l1_id, 'Herbicides')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('herbicides', 'fr', 'Herbicides');
            PERFORM insert_category_translations('herbicides', 'ar', 'مبيدات أعشاب');
            PERFORM insert_category_translations('herbicides', 'en', 'Herbicides');
            PERFORM insert_category_translations('herbicides', 'de', 'Herbizide');
            PERFORM insert_category_translations('herbicides', 'es', 'Herbicidas');
            PERFORM insert_category_translations('herbicides', 'it', 'Erbicidi');

            -- Level 2: fongicides
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fongicides', 'fongicides', 2, l1_id, 'Fongicides')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fongicides', 'fr', 'Fongicides');
            PERFORM insert_category_translations('fongicides', 'ar', 'مبيدات فطريات');
            PERFORM insert_category_translations('fongicides', 'en', 'Fungicides');
            PERFORM insert_category_translations('fongicides', 'de', 'Fungizide');
            PERFORM insert_category_translations('fongicides', 'es', 'Fungicidas');
            PERFORM insert_category_translations('fongicides', 'it', 'Fungicidi');

            -- Level 2: stimulateurs-croissance
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('stimulateurs-croissance', 'stimulateurs-croissance', 2, l1_id, 'Stimulateurs de Croissance')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('stimulateurs-croissance', 'fr', 'Stimulateurs de Croissance');
            PERFORM insert_category_translations('stimulateurs-croissance', 'ar', 'محفزات نمو');
            PERFORM insert_category_translations('stimulateurs-croissance', 'en', 'Growth Stimulators');
            PERFORM insert_category_translations('stimulateurs-croissance', 'de', 'Wachstumsstimulatoren');
            PERFORM insert_category_translations('stimulateurs-croissance', 'es', 'Estimuladores de Crecimiento');
            PERFORM insert_category_translations('stimulateurs-croissance', 'it', 'Stimolatori di Crescita');

            -- Level 2: regulateurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('regulateurs', 'regulateurs', 2, l1_id, 'Régulateurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('regulateurs', 'fr', 'Régulateurs');
            PERFORM insert_category_translations('regulateurs', 'ar', 'منظمات');
            PERFORM insert_category_translations('regulateurs', 'en', 'Regulators');
            PERFORM insert_category_translations('regulateurs', 'de', 'Regulatoren');
            PERFORM insert_category_translations('regulateurs', 'es', 'Reguladores');
            PERFORM insert_category_translations('regulateurs', 'it', 'Regolatori');

            -- Level 2: adjuvants-agricoles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('adjuvants-agricoles', 'adjuvants-agricoles', 2, l1_id, 'Adjuvants Agricoles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('adjuvants-agricoles', 'fr', 'Adjuvants Agricoles');
            PERFORM insert_category_translations('adjuvants-agricoles', 'ar', 'مواد مساعدة زراعية');
            PERFORM insert_category_translations('adjuvants-agricoles', 'en', 'Agricultural Adjuvants');
            PERFORM insert_category_translations('adjuvants-agricoles', 'de', 'Agrarhilfsstoffe');
            PERFORM insert_category_translations('adjuvants-agricoles', 'es', 'Coadyuvantes Agrícolas');
            PERFORM insert_category_translations('adjuvants-agricoles', 'it', 'Coadiuvanti Agricoli');

        -- Level 1: produits-laboratoires
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-laboratoires', 'produits-laboratoires', 1, root_id, 'Produits pour Laboratoires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('produits-laboratoires', 'fr', 'Produits pour Laboratoires');
        PERFORM insert_category_translations('produits-laboratoires', 'ar', 'منتجات مخبرية');
        PERFORM insert_category_translations('produits-laboratoires', 'en', 'Laboratory Products');
        PERFORM insert_category_translations('produits-laboratoires', 'de', 'Laborprodukte');
        PERFORM insert_category_translations('produits-laboratoires', 'es', 'Productos de Laboratorio');
        PERFORM insert_category_translations('produits-laboratoires', 'it', 'Prodotti da Laboratorio');

            -- Level 2: reactifs-chimiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('reactifs-chimiques', 'reactifs-chimiques', 2, l1_id, 'Réactifs Chimiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('reactifs-chimiques', 'fr', 'Réactifs Chimiques');
            PERFORM insert_category_translations('reactifs-chimiques', 'ar', 'كواشف كيميائية');
            PERFORM insert_category_translations('reactifs-chimiques', 'en', 'Chemical Reagents');
            PERFORM insert_category_translations('reactifs-chimiques', 'de', 'Chemische Reagenzien');
            PERFORM insert_category_translations('reactifs-chimiques', 'es', 'Reactivos Químicos');
            PERFORM insert_category_translations('reactifs-chimiques', 'it', 'Reagenti Chimici');

            -- Level 2: solutions-tampons
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('solutions-tampons', 'solutions-tampons', 2, l1_id, 'Solutions Tampons')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('solutions-tampons', 'fr', 'Solutions Tampons');
            PERFORM insert_category_translations('solutions-tampons', 'ar', 'محاليل منظمة');
            PERFORM insert_category_translations('solutions-tampons', 'en', 'Buffer Solutions');
            PERFORM insert_category_translations('solutions-tampons', 'de', 'Pufferlösungen');
            PERFORM insert_category_translations('solutions-tampons', 'es', 'Soluciones Tampón');
            PERFORM insert_category_translations('solutions-tampons', 'it', 'Soluzioni Tampone');

            -- Level 2: alcools
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('alcools', 'alcools', 2, l1_id, 'Alcools')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('alcools', 'fr', 'Alcools');
            PERFORM insert_category_translations('alcools', 'ar', 'كحوليات');
            PERFORM insert_category_translations('alcools', 'en', 'Alcohols');
            PERFORM insert_category_translations('alcools', 'de', 'Alkohole');
            PERFORM insert_category_translations('alcools', 'es', 'Alcoholes');
            PERFORM insert_category_translations('alcools', 'it', 'Alcoli');

            -- Level 2: gels-specifiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gels-specifiques', 'gels-specifiques', 2, l1_id, 'Gels Spécifiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gels-specifiques', 'fr', 'Gels Spécifiques');
            PERFORM insert_category_translations('gels-specifiques', 'ar', 'أنواع جل محددة');
            PERFORM insert_category_translations('gels-specifiques', 'en', 'Specific Gels');
            PERFORM insert_category_translations('gels-specifiques', 'de', 'Spezielle Gele');
            PERFORM insert_category_translations('gels-specifiques', 'es', 'Geles Específicos');
            PERFORM insert_category_translations('gels-specifiques', 'it', 'Gel Specifici');

            -- Level 2: kits-analyse
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('kits-analyse', 'kits-analyse', 2, l1_id, 'Kits d''''Analyse')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('kits-analyse', 'fr', 'Kits d''Analyse');
            PERFORM insert_category_translations('kits-analyse', 'ar', 'أطقم تحليل');
            PERFORM insert_category_translations('kits-analyse', 'en', 'Analysis Kits');
            PERFORM insert_category_translations('kits-analyse', 'de', 'Analyse-Kits');
            PERFORM insert_category_translations('kits-analyse', 'es', 'Kits de Análisis');
            PERFORM insert_category_translations('kits-analyse', 'it', 'Kit di Analisi');

            -- Level 2: acides
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('acides', 'acides', 2, l1_id, 'Acides')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('acides', 'fr', 'Acides');
            PERFORM insert_category_translations('acides', 'ar', 'أحماض');
            PERFORM insert_category_translations('acides', 'en', 'Acids');
            PERFORM insert_category_translations('acides', 'de', 'Säuren');
            PERFORM insert_category_translations('acides', 'es', 'Ácidos');
            PERFORM insert_category_translations('acides', 'it', 'Acidi');

            -- Level 2: bases
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bases', 'bases', 2, l1_id, 'Bases')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bases', 'fr', 'Bases');
            PERFORM insert_category_translations('bases', 'ar', 'قواعد');
            PERFORM insert_category_translations('bases', 'en', 'Bases');
            PERFORM insert_category_translations('bases', 'de', 'Basen');
            PERFORM insert_category_translations('bases', 'es', 'Bases');
            PERFORM insert_category_translations('bases', 'it', 'Basi');

            -- Level 2: solvants-laboratoire
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('solvants-laboratoire', 'solvants-laboratoire', 2, l1_id, 'Solvants de Laboratoire')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('solvants-laboratoire', 'fr', 'Solvants de Laboratoire');
            PERFORM insert_category_translations('solvants-laboratoire', 'ar', 'مذيبات مخبرية');
            PERFORM insert_category_translations('solvants-laboratoire', 'en', 'Laboratory Solvents');
            PERFORM insert_category_translations('solvants-laboratoire', 'de', 'Laborlösungsmittel');
            PERFORM insert_category_translations('solvants-laboratoire', 'es', 'Disolventes de Laboratorio');
            PERFORM insert_category_translations('solvants-laboratoire', 'it', 'Solventi da Laboratorio');

        -- Level 1: equipements-securite-chimique
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('equipements-securite-chimique', 'equipements-securite-chimique', 1, root_id, 'Équipements de Sécurité Chimique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('equipements-securite-chimique', 'fr', 'Équipements de Sécurité Chimique');
        PERFORM insert_category_translations('equipements-securite-chimique', 'ar', 'معدات السلامة الكيميائية');
        PERFORM insert_category_translations('equipements-securite-chimique', 'en', 'Chemical Safety Equipment');
        PERFORM insert_category_translations('equipements-securite-chimique', 'de', 'Chemische Sicherheitsausrüstung');
        PERFORM insert_category_translations('equipements-securite-chimique', 'es', 'Equipos de Seguridad Química');
        PERFORM insert_category_translations('equipements-securite-chimique', 'it', 'Dispositivi di Protezione Chimica');

            -- Level 2: gants-nitrile
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gants-nitrile', 'gants-nitrile', 2, l1_id, 'Gants Nitrile')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gants-nitrile', 'fr', 'Gants Nitrile');
            PERFORM insert_category_translations('gants-nitrile', 'ar', 'قفازات نيتريل');
            PERFORM insert_category_translations('gants-nitrile', 'en', 'Nitrile Gloves');
            PERFORM insert_category_translations('gants-nitrile', 'de', 'Nitrilhandschuhe');
            PERFORM insert_category_translations('gants-nitrile', 'es', 'Guantes de Nitrilo');
            PERFORM insert_category_translations('gants-nitrile', 'it', 'Guanti in Nitrile');

            -- Level 2: lunettes-protection
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lunettes-protection', 'lunettes-protection', 2, l1_id, 'Lunettes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lunettes-protection', 'fr', 'Lunettes');
            PERFORM insert_category_translations('lunettes-protection', 'ar', 'نظارات حماية');
            PERFORM insert_category_translations('lunettes-protection', 'en', 'Goggles');
            PERFORM insert_category_translations('lunettes-protection', 'de', 'Schutzbrillen');
            PERFORM insert_category_translations('lunettes-protection', 'es', 'Gafas de Protección');
            PERFORM insert_category_translations('lunettes-protection', 'it', 'Occhiali Protettivi');

            -- Level 2: masques-respiratoires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('masques-respiratoires', 'masques-respiratoires', 2, l1_id, 'Masques Respiratoires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('masques-respiratoires', 'fr', 'Masques Respiratoires');
            PERFORM insert_category_translations('masques-respiratoires', 'ar', 'أقنعة تنفس');
            PERFORM insert_category_translations('masques-respiratoires', 'en', 'Respirators');
            PERFORM insert_category_translations('masques-respiratoires', 'de', 'Atemschutzmasken');
            PERFORM insert_category_translations('masques-respiratoires', 'es', 'Máscaras Respiratorias');
            PERFORM insert_category_translations('masques-respiratoires', 'it', 'Maschere Respiratorie');

            -- Level 2: combinaisons-anti-chimiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('combinaisons-anti-chimiques', 'combinaisons-anti-chimiques', 2, l1_id, 'Combinaisons Anti-chimiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('combinaisons-anti-chimiques', 'fr', 'Combinaisons Anti-chimiques');
            PERFORM insert_category_translations('combinaisons-anti-chimiques', 'ar', 'بدلات واقية من الكيماويات');
            PERFORM insert_category_translations('combinaisons-anti-chimiques', 'en', 'Chemical Suits');
            PERFORM insert_category_translations('combinaisons-anti-chimiques', 'de', 'Chemikalienschutzanzüge');
            PERFORM insert_category_translations('combinaisons-anti-chimiques', 'es', 'Trajes Anti-químicos');
            PERFORM insert_category_translations('combinaisons-anti-chimiques', 'it', 'Tute Antichimiche');

            -- Level 2: protections-faciales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('protections-faciales', 'protections-faciales', 2, l1_id, 'Protections Faciales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('protections-faciales', 'fr', 'Protections Faciales');
            PERFORM insert_category_translations('protections-faciales', 'ar', 'حماية للوجه');
            PERFORM insert_category_translations('protections-faciales', 'en', 'Face Shields');
            PERFORM insert_category_translations('protections-faciales', 'de', 'Gesichtsschutz');
            PERFORM insert_category_translations('protections-faciales', 'es', 'Protección Facial');
            PERFORM insert_category_translations('protections-faciales', 'it', 'Protezioni Facciali');

            -- Level 2: chaussures-anti-produits-corrosifs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chaussures-anti-produits-corrosifs', 'chaussures-anti-produits-corrosifs', 2, l1_id, 'Chaussures Anti-produits Corrosifs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chaussures-anti-produits-corrosifs', 'fr', 'Chaussures Anti-produits Corrosifs');
            PERFORM insert_category_translations('chaussures-anti-produits-corrosifs', 'ar', 'أحذية مقاومة للمواد الأكالة');
            PERFORM insert_category_translations('chaussures-anti-produits-corrosifs', 'en', 'Corrosive Resistant Shoes');
            PERFORM insert_category_translations('chaussures-anti-produits-corrosifs', 'de', 'Säurebeständige Schuhe');
            PERFORM insert_category_translations('chaussures-anti-produits-corrosifs', 'es', 'Calzado Anti-corrosivo');
            PERFORM insert_category_translations('chaussures-anti-produits-corrosifs', 'it', 'Calzature Anti-Corrosione');

        -- Level 1: emballages-chimiques
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('emballages-chimiques', 'emballages-chimiques', 1, root_id, 'Emballages Chimiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('emballages-chimiques', 'fr', 'Emballages Chimiques');
        PERFORM insert_category_translations('emballages-chimiques', 'ar', 'تغليف المواد الكيميائية');
        PERFORM insert_category_translations('emballages-chimiques', 'en', 'Chemical Packaging');
        PERFORM insert_category_translations('emballages-chimiques', 'de', 'Chemische Verpackungen');
        PERFORM insert_category_translations('emballages-chimiques', 'es', 'Envases Químicos');
        PERFORM insert_category_translations('emballages-chimiques', 'it', 'Imballaggi Chimici');

            -- Level 2: bidons
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bidons', 'bidons', 2, l1_id, 'Bidons')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bidons', 'fr', 'Bidons');
            PERFORM insert_category_translations('bidons', 'ar', 'بيدونات');
            PERFORM insert_category_translations('bidons', 'en', 'Canisters');
            PERFORM insert_category_translations('bidons', 'de', 'Kanister');
            PERFORM insert_category_translations('bidons', 'es', 'Bidones');
            PERFORM insert_category_translations('bidons', 'it', 'Taniche');

            -- Level 2: flacons-resistants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('flacons-resistants', 'flacons-resistants', 2, l1_id, 'Flacons Résistants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('flacons-resistants', 'fr', 'Flacons Résistants');
            PERFORM insert_category_translations('flacons-resistants', 'ar', 'قوارير مقاومة');
            PERFORM insert_category_translations('flacons-resistants', 'en', 'Resistant Bottles');
            PERFORM insert_category_translations('flacons-resistants', 'de', 'Beständige Flaschen');
            PERFORM insert_category_translations('flacons-resistants', 'es', 'Frascos Resistentes');
            PERFORM insert_category_translations('flacons-resistants', 'it', 'Flaconi Resistenti');

            -- Level 2: bouteilles-securisees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bouteilles-securisees', 'bouteilles-securisees', 2, l1_id, 'Bouteilles Sécurisées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bouteilles-securisees', 'fr', 'Bouteilles Sécurisées');
            PERFORM insert_category_translations('bouteilles-securisees', 'ar', 'زجاجات آمنة');
            PERFORM insert_category_translations('bouteilles-securisees', 'en', 'Secure Bottles');
            PERFORM insert_category_translations('bouteilles-securisees', 'de', 'Sicherheitsflaschen');
            PERFORM insert_category_translations('bouteilles-securisees', 'es', 'Botellas de Seguridad');
            PERFORM insert_category_translations('bouteilles-securisees', 'it', 'Bottiglie di Sicurezza');

            -- Level 2: contenants-anti-corrosifs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('contenants-anti-corrosifs', 'contenants-anti-corrosifs', 2, l1_id, 'Contenants Anti-corrosifs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('contenants-anti-corrosifs', 'fr', 'Contenants Anti-corrosifs');
            PERFORM insert_category_translations('contenants-anti-corrosifs', 'ar', 'حاويات مضادة للتآكل');
            PERFORM insert_category_translations('contenants-anti-corrosifs', 'en', 'Anti-Corrosive Containers');
            PERFORM insert_category_translations('contenants-anti-corrosifs', 'de', 'Korrosionsbeständige Behälter');
            PERFORM insert_category_translations('contenants-anti-corrosifs', 'es', 'Contenedores Anti-corrosivos');
            PERFORM insert_category_translations('contenants-anti-corrosifs', 'it', 'Contenitori Anti-Corrosione');

            -- Level 2: cuves
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cuves', 'cuves', 2, l1_id, 'Cuves')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cuves', 'fr', 'Cuves');
            PERFORM insert_category_translations('cuves', 'ar', 'خزانات');
            PERFORM insert_category_translations('cuves', 'en', 'Tanks');
            PERFORM insert_category_translations('cuves', 'de', 'Tanks');
            PERFORM insert_category_translations('cuves', 'es', 'Cubas / Tanques');
            PERFORM insert_category_translations('cuves', 'it', 'Vasche');

            -- Level 2: petits-contenants-dosage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('petits-contenants-dosage', 'petits-contenants-dosage', 2, l1_id, 'Petits Contenants Dosage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('petits-contenants-dosage', 'fr', 'Petits Contenants Dosage');
            PERFORM insert_category_translations('petits-contenants-dosage', 'ar', 'حاويات جرعات صغيرة');
            PERFORM insert_category_translations('petits-contenants-dosage', 'en', 'Small Dosing Containers');
            PERFORM insert_category_translations('petits-contenants-dosage', 'de', 'Dosierbehälter');
            PERFORM insert_category_translations('petits-contenants-dosage', 'es', 'Pequeños Envases de Dosificación');
            PERFORM insert_category_translations('petits-contenants-dosage', 'it', 'Piccoli Contenitori Dosatori');

        -- Level 1: hygiene-professionnelle
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('hygiene-professionnelle', 'hygiene-professionnelle', 1, root_id, 'Hygiène Professionnelle')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('hygiene-professionnelle', 'fr', 'Hygiène Professionnelle');
        PERFORM insert_category_translations('hygiene-professionnelle', 'ar', 'نظافة مهنية');
        PERFORM insert_category_translations('hygiene-professionnelle', 'en', 'Professional Hygiene');
        PERFORM insert_category_translations('hygiene-professionnelle', 'de', 'Berufshygiene');
        PERFORM insert_category_translations('hygiene-professionnelle', 'es', 'Higiene Profesional');
        PERFORM insert_category_translations('hygiene-professionnelle', 'it', 'Igiene Professionale');

            -- Level 2: savons-industriels
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('savons-industriels', 'savons-industriels', 2, l1_id, 'Savons Industriels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('savons-industriels', 'fr', 'Savons Industriels');
            PERFORM insert_category_translations('savons-industriels', 'ar', 'صابون صناعي');
            PERFORM insert_category_translations('savons-industriels', 'en', 'Industrial Soaps');
            PERFORM insert_category_translations('savons-industriels', 'de', 'Industrieseifen');
            PERFORM insert_category_translations('savons-industriels', 'es', 'Jabones Industriales');
            PERFORM insert_category_translations('savons-industriels', 'it', 'Saponi Industriali');

            -- Level 2: desinfectants-pro
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('desinfectants-pro', 'desinfectants-pro', 2, l1_id, 'Désinfectants Pro')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('desinfectants-pro', 'fr', 'Désinfectants Pro');
            PERFORM insert_category_translations('desinfectants-pro', 'ar', 'مطهرا ت احترافية');
            PERFORM insert_category_translations('desinfectants-pro', 'en', 'Pro Disinfectants');
            PERFORM insert_category_translations('desinfectants-pro', 'de', 'Profi-Desinfektionsmittel');
            PERFORM insert_category_translations('desinfectants-pro', 'es', 'Desinfectantes Pro');
            PERFORM insert_category_translations('desinfectants-pro', 'it', 'Disinfettanti Professionali');

            -- Level 2: nettoyants-sols-hopitaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('nettoyants-sols-hopitaux', 'nettoyants-sols-hopitaux', 2, l1_id, 'Nettoyants Sols Hôpitaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('nettoyants-sols-hopitaux', 'fr', 'Nettoyants Sols Hôpitaux');
            PERFORM insert_category_translations('nettoyants-sols-hopitaux', 'ar', 'منظفات أرضيات المستشفيات');
            PERFORM insert_category_translations('nettoyants-sols-hopitaux', 'en', 'Hospital Floor Cleaners');
            PERFORM insert_category_translations('nettoyants-sols-hopitaux', 'de', 'Krankenhausbodenreiniger');
            PERFORM insert_category_translations('nettoyants-sols-hopitaux', 'es', 'Limpiadores Suelos Hospitales');
            PERFORM insert_category_translations('nettoyants-sols-hopitaux', 'it', 'Detergenti Pavimenti Ospedalieri');

            -- Level 2: produits-haccp
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('produits-haccp', 'produits-haccp', 2, l1_id, 'Produits HACCP')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('produits-haccp', 'fr', 'Produits HACCP');
            PERFORM insert_category_translations('produits-haccp', 'ar', 'منتجات HACCP');
            PERFORM insert_category_translations('produits-haccp', 'en', 'HACCP Products');
            PERFORM insert_category_translations('produits-haccp', 'de', 'HACCP-Produkte');
            PERFORM insert_category_translations('produits-haccp', 'es', 'Productos HACCP');
            PERFORM insert_category_translations('produits-haccp', 'it', 'Prodotti HACCP');

            -- Level 2: detergents-alimentaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('detergents-alimentaires', 'detergents-alimentaires', 2, l1_id, 'Détergents Alimentaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('detergents-alimentaires', 'fr', 'Détergents Alimentaires');
            PERFORM insert_category_translations('detergents-alimentaires', 'ar', 'منظفات غذائية');
            PERFORM insert_category_translations('detergents-alimentaires', 'en', 'Food Detergents');
            PERFORM insert_category_translations('detergents-alimentaires', 'de', 'Lebensmittelreiniger');
            PERFORM insert_category_translations('detergents-alimentaires', 'es', 'Detergentes Alimentarios');
            PERFORM insert_category_translations('detergents-alimentaires', 'it', 'Detergenti Alimentari');

        -- Level 1: cosmetiques-specialises
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cosmetiques-specialises', 'cosmetiques-specialises', 1, root_id, 'Cosmétiques Spécialisés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('cosmetiques-specialises', 'fr', 'Cosmétiques Spécialisés');
        PERFORM insert_category_translations('cosmetiques-specialises', 'ar', 'مستحضرات تجميل متخصصة');
        PERFORM insert_category_translations('cosmetiques-specialises', 'en', 'Specialized Cosmetics');
        PERFORM insert_category_translations('cosmetiques-specialises', 'de', 'Spezialkosmetik');
        PERFORM insert_category_translations('cosmetiques-specialises', 'es', 'Cosmética Especializada');
        PERFORM insert_category_translations('cosmetiques-specialises', 'it', 'Cosmetici Specializzati');

            -- Level 2: soins-hypoallergeniques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soins-hypoallergeniques', 'soins-hypoallergeniques', 2, l1_id, 'Soins Hypoallergéniques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('soins-hypoallergeniques', 'fr', 'Soins Hypoallergéniques');
            PERFORM insert_category_translations('soins-hypoallergeniques', 'ar', 'عناية مضادة للحساسية');
            PERFORM insert_category_translations('soins-hypoallergeniques', 'en', 'Hypoallergenic Care');
            PERFORM insert_category_translations('soins-hypoallergeniques', 'de', 'Hypoallergene Pflege');
            PERFORM insert_category_translations('soins-hypoallergeniques', 'es', 'Cuidados Hipoalergénicos');
            PERFORM insert_category_translations('soins-hypoallergeniques', 'it', 'Trattamenti Ipoallergenici');

            -- Level 2: cremes-medicales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cremes-medicales', 'cremes-medicales', 2, l1_id, 'Crèmes Médicales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cremes-medicales', 'fr', 'Crèmes Médicales');
            PERFORM insert_category_translations('cremes-medicales', 'ar', 'كريمات طبية');
            PERFORM insert_category_translations('cremes-medicales', 'en', 'Medical Creams');
            PERFORM insert_category_translations('cremes-medicales', 'de', 'Medizinische Cremes');
            PERFORM insert_category_translations('cremes-medicales', 'es', 'Cremas Médicas');
            PERFORM insert_category_translations('cremes-medicales', 'it', 'Creme Mediche');

            -- Level 2: soins-dermatologiques-specialises
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soins-dermatologiques-specialises', 'soins-dermatologiques-specialises', 2, l1_id, 'Soins Dermatologiques Spécialisés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('soins-dermatologiques-specialises', 'fr', 'Soins Dermatologiques Spécialisés');
            PERFORM insert_category_translations('soins-dermatologiques-specialises', 'ar', 'عناية جلدية متخصصة');
            PERFORM insert_category_translations('soins-dermatologiques-specialises', 'en', 'Specialized Dermatological Care');
            PERFORM insert_category_translations('soins-dermatologiques-specialises', 'de', 'Dermatologische Spezialpflege');
            PERFORM insert_category_translations('soins-dermatologiques-specialises', 'es', 'Cuidados Dermatológicos Especializados');
            PERFORM insert_category_translations('soins-dermatologiques-specialises', 'it', 'Trattamenti Dermatologici Specializzati');

            -- Level 2: cremes-cicatrisantes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cremes-cicatrisantes', 'cremes-cicatrisantes', 2, l1_id, 'Crèmes Cicatrisantes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cremes-cicatrisantes', 'fr', 'Crèmes Cicatrisantes');
            PERFORM insert_category_translations('cremes-cicatrisantes', 'ar', 'كريمات التئام الجروح');
            PERFORM insert_category_translations('cremes-cicatrisantes', 'en', 'Healing Creams');
            PERFORM insert_category_translations('cremes-cicatrisantes', 'de', 'Wundheilcremes');
            PERFORM insert_category_translations('cremes-cicatrisantes', 'es', 'Cremas Cicatrizantes');
            PERFORM insert_category_translations('cremes-cicatrisantes', 'it', 'Creme Cicatrizzanti');

            -- Level 2: protections-cutanees-medicales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('protections-cutanees-medicales', 'protections-cutanees-medicales', 2, l1_id, 'Protections Cutanées Médicales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('protections-cutanees-medicales', 'fr', 'Protections Cutanées Médicales');
            PERFORM insert_category_translations('protections-cutanees-medicales', 'ar', 'حماية جلدية طبية');
            PERFORM insert_category_translations('protections-cutanees-medicales', 'en', 'Medical Skin Protections');
            PERFORM insert_category_translations('protections-cutanees-medicales', 'de', 'Medizinischer Hautschutz');
            PERFORM insert_category_translations('protections-cutanees-medicales', 'es', 'Protección Cutánea Médica');
            PERFORM insert_category_translations('protections-cutanees-medicales', 'it', 'Protezioni Cutanee Mediche');
END $$;