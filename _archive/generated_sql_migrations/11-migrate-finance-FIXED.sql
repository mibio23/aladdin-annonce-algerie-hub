-- Migration: Finance & Monnaie Fiduciaire (Generated Recursive)
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

    -- Level 0: finance
    INSERT INTO categories (id, slug, level, name)
    VALUES ('finance', 'finance', 0, 'Finance & Monnaie Fiduciaire')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 0, name = EXCLUDED.name
    RETURNING id INTO root_id;
    PERFORM insert_category_translations('finance', 'fr', 'Finance & Monnaie Fiduciaire');
    PERFORM insert_category_translations('finance', 'ar', 'التمويل والعملات');
    PERFORM insert_category_translations('finance', 'en', 'Finance & Fiduciary Currency');
    PERFORM insert_category_translations('finance', 'de', 'Finanzen & Fiat-Währung');
    PERFORM insert_category_translations('finance', 'es', 'Finanzas y Moneda Fiduciaria');
    PERFORM insert_category_translations('finance', 'it', 'Finanza e Valuta Fiduciaria');

        -- Level 1: monnaie-fiduciaire
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('monnaie-fiduciaire', 'monnaie-fiduciaire', 1, root_id, 'Monnaie Fiduciaire')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('monnaie-fiduciaire', 'fr', 'Monnaie Fiduciaire');
        PERFORM insert_category_translations('monnaie-fiduciaire', 'ar', 'العملات الورقية والمعدنية');
        PERFORM insert_category_translations('monnaie-fiduciaire', 'en', 'Fiduciary Currency');
        PERFORM insert_category_translations('monnaie-fiduciaire', 'de', 'Fiat-Währung');
        PERFORM insert_category_translations('monnaie-fiduciaire', 'es', 'Moneda Fiduciaria');
        PERFORM insert_category_translations('monnaie-fiduciaire', 'it', 'Valuta Fiduciaria');

            -- Level 2: billets-algeriens
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('billets-algeriens', 'billets-algeriens', 2, l1_id, 'Billets Algériens')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('billets-algeriens', 'fr', 'Billets Algériens');
            PERFORM insert_category_translations('billets-algeriens', 'ar', 'أوراق نقدية جزائرية');
            PERFORM insert_category_translations('billets-algeriens', 'en', 'Algerian Banknotes');
            PERFORM insert_category_translations('billets-algeriens', 'de', 'Algerische Banknoten');
            PERFORM insert_category_translations('billets-algeriens', 'es', 'Billetes Argelinos');
            PERFORM insert_category_translations('billets-algeriens', 'it', 'Banconote Algerine');

            -- Level 2: pieces-algeriennes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pieces-algeriennes', 'pieces-algeriennes', 2, l1_id, 'Pièces Algériennes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pieces-algeriennes', 'fr', 'Pièces Algériennes');
            PERFORM insert_category_translations('pieces-algeriennes', 'ar', 'عملات معدنية جزائرية');
            PERFORM insert_category_translations('pieces-algeriennes', 'en', 'Algerian Coins');
            PERFORM insert_category_translations('pieces-algeriennes', 'de', 'Algerische Münzen');
            PERFORM insert_category_translations('pieces-algeriennes', 'es', 'Monedas Argelinas');
            PERFORM insert_category_translations('pieces-algeriennes', 'it', 'Monete Algerine');

            -- Level 2: monnaies-anciennes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('monnaies-anciennes', 'monnaies-anciennes', 2, l1_id, 'Monnaies Anciennes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('monnaies-anciennes', 'fr', 'Monnaies Anciennes');
            PERFORM insert_category_translations('monnaies-anciennes', 'ar', 'عملات قديمة');
            PERFORM insert_category_translations('monnaies-anciennes', 'en', 'Ancient Currencies');
            PERFORM insert_category_translations('monnaies-anciennes', 'de', 'Alte Währungen');
            PERFORM insert_category_translations('monnaies-anciennes', 'es', 'Monedas Antiguas');
            PERFORM insert_category_translations('monnaies-anciennes', 'it', 'Monete Antiche');

            -- Level 2: billets-rares
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('billets-rares', 'billets-rares', 2, l1_id, 'Billets Rares')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('billets-rares', 'fr', 'Billets Rares');
            PERFORM insert_category_translations('billets-rares', 'ar', 'أوراق نقدية نادرة');
            PERFORM insert_category_translations('billets-rares', 'en', 'Rare Banknotes');
            PERFORM insert_category_translations('billets-rares', 'de', 'Seltene Banknoten');
            PERFORM insert_category_translations('billets-rares', 'es', 'Billetes Raros');
            PERFORM insert_category_translations('billets-rares', 'it', 'Banconote Rare');

            -- Level 2: pieces-commemoratives
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pieces-commemoratives', 'pieces-commemoratives', 2, l1_id, 'Pièces Commémoratives')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pieces-commemoratives', 'fr', 'Pièces Commémoratives');
            PERFORM insert_category_translations('pieces-commemoratives', 'ar', 'عملات تذكارية');
            PERFORM insert_category_translations('pieces-commemoratives', 'en', 'Commemorative Coins');
            PERFORM insert_category_translations('pieces-commemoratives', 'de', 'Gedenkmünzen');
            PERFORM insert_category_translations('pieces-commemoratives', 'es', 'Monedas Conmemorativas');
            PERFORM insert_category_translations('pieces-commemoratives', 'it', 'Monete Commemorative');

            -- Level 2: monnaies-etrangeres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('monnaies-etrangeres', 'monnaies-etrangeres', 2, l1_id, 'Monnaies Étrangères')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('monnaies-etrangeres', 'fr', 'Monnaies Étrangères');
            PERFORM insert_category_translations('monnaies-etrangeres', 'ar', 'عملات أجنبية');
            PERFORM insert_category_translations('monnaies-etrangeres', 'en', 'Foreign Currencies');
            PERFORM insert_category_translations('monnaies-etrangeres', 'de', 'Ausländische Währungen');
            PERFORM insert_category_translations('monnaies-etrangeres', 'es', 'Monedas Extranjeras');
            PERFORM insert_category_translations('monnaies-etrangeres', 'it', 'Monete Straniere');

            -- Level 2: monnaies-or
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('monnaies-or', 'monnaies-or', 2, l1_id, 'Monnaies d''''Or')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('monnaies-or', 'fr', 'Monnaies d''Or');
            PERFORM insert_category_translations('monnaies-or', 'ar', 'عملات ذهبية');
            PERFORM insert_category_translations('monnaies-or', 'en', 'Gold Coins');
            PERFORM insert_category_translations('monnaies-or', 'de', 'Goldmünzen');
            PERFORM insert_category_translations('monnaies-or', 'es', 'Monedas de Oro');
            PERFORM insert_category_translations('monnaies-or', 'it', 'Monete d''Oro');

            -- Level 2: monnaies-argent
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('monnaies-argent', 'monnaies-argent', 2, l1_id, 'Monnaies d''''Argent')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('monnaies-argent', 'fr', 'Monnaies d''Argent');
            PERFORM insert_category_translations('monnaies-argent', 'ar', 'عملات فضية');
            PERFORM insert_category_translations('monnaies-argent', 'en', 'Silver Coins');
            PERFORM insert_category_translations('monnaies-argent', 'de', 'Silbermünzen');
            PERFORM insert_category_translations('monnaies-argent', 'es', 'Monedas de Plata');
            PERFORM insert_category_translations('monnaies-argent', 'it', 'Monete d''Argento');

            -- Level 2: series-numismatiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('series-numismatiques', 'series-numismatiques', 2, l1_id, 'Séries Numismatiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('series-numismatiques', 'fr', 'Séries Numismatiques');
            PERFORM insert_category_translations('series-numismatiques', 'ar', 'سلاسل العملات');
            PERFORM insert_category_translations('series-numismatiques', 'en', 'Numismatic Series');
            PERFORM insert_category_translations('series-numismatiques', 'de', 'Numismatische Serien');
            PERFORM insert_category_translations('series-numismatiques', 'es', 'Series Numismáticas');
            PERFORM insert_category_translations('series-numismatiques', 'it', 'Serie Numismatiche');

            -- Level 2: collections-completes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('collections-completes', 'collections-completes', 2, l1_id, 'Collections Complètes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('collections-completes', 'fr', 'Collections Complètes');
            PERFORM insert_category_translations('collections-completes', 'ar', 'مجموعات كاملة');
            PERFORM insert_category_translations('collections-completes', 'en', 'Complete Collections');
            PERFORM insert_category_translations('collections-completes', 'de', 'Komplette Sammlungen');
            PERFORM insert_category_translations('collections-completes', 'es', 'Colecciones Completas');
            PERFORM insert_category_translations('collections-completes', 'it', 'Collezioni Complete');

        -- Level 1: services-financiers
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('services-financiers', 'services-financiers', 1, root_id, 'Services Financiers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('services-financiers', 'fr', 'Services Financiers');
        PERFORM insert_category_translations('services-financiers', 'ar', 'خدمات مالية');
        PERFORM insert_category_translations('services-financiers', 'en', 'Financial Services');
        PERFORM insert_category_translations('services-financiers', 'de', 'Finanzdienstleistungen');
        PERFORM insert_category_translations('services-financiers', 'es', 'Servicios Financieros');
        PERFORM insert_category_translations('services-financiers', 'it', 'Servizi Finanziari');

            -- Level 2: change-devises
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('change-devises', 'change-devises', 2, l1_id, 'Change Devises')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('change-devises', 'fr', 'Change Devises');
            PERFORM insert_category_translations('change-devises', 'ar', 'صرف العملات');
            PERFORM insert_category_translations('change-devises', 'en', 'Currency Exchange');
            PERFORM insert_category_translations('change-devises', 'de', 'Währungsumtausch');
            PERFORM insert_category_translations('change-devises', 'es', 'Cambio de Divisas');
            PERFORM insert_category_translations('change-devises', 'it', 'Cambio Valuta');

            -- Level 2: estimation-valeur
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('estimation-valeur', 'estimation-valeur', 2, l1_id, 'Estimation Valeur')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('estimation-valeur', 'fr', 'Estimation Valeur');
            PERFORM insert_category_translations('estimation-valeur', 'ar', 'تقدير القيمة');
            PERFORM insert_category_translations('estimation-valeur', 'en', 'Value Estimation');
            PERFORM insert_category_translations('estimation-valeur', 'de', 'Wertschätzung');
            PERFORM insert_category_translations('estimation-valeur', 'es', 'Estimación de Valor');
            PERFORM insert_category_translations('estimation-valeur', 'it', 'Stima del Valore');

            -- Level 2: expertise-numismatique
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('expertise-numismatique', 'expertise-numismatique', 2, l1_id, 'Expertise Numismatique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('expertise-numismatique', 'fr', 'Expertise Numismatique');
            PERFORM insert_category_translations('expertise-numismatique', 'ar', 'خبرة في العملات');
            PERFORM insert_category_translations('expertise-numismatique', 'en', 'Numismatic Expertise');
            PERFORM insert_category_translations('expertise-numismatique', 'de', 'Numismatische Expertise');
            PERFORM insert_category_translations('expertise-numismatique', 'es', 'Peritaje Numismático');
            PERFORM insert_category_translations('expertise-numismatique', 'it', 'Perizia Numismatica');

            -- Level 2: transfert-argent
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('transfert-argent', 'transfert-argent', 2, l1_id, 'Transfert Argent')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('transfert-argent', 'fr', 'Transfert Argent');
            PERFORM insert_category_translations('transfert-argent', 'ar', 'تحويل الأموال');
            PERFORM insert_category_translations('transfert-argent', 'en', 'Money Transfer');
            PERFORM insert_category_translations('transfert-argent', 'de', 'Geldtransfer');
            PERFORM insert_category_translations('transfert-argent', 'es', 'Transferencia de Dinero');
            PERFORM insert_category_translations('transfert-argent', 'it', 'Trasferimento di Denaro');

            -- Level 2: conseil-financier
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('conseil-financier', 'conseil-financier', 2, l1_id, 'Conseil Financier')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('conseil-financier', 'fr', 'Conseil Financier');
            PERFORM insert_category_translations('conseil-financier', 'ar', 'استشارات مالية');
            PERFORM insert_category_translations('conseil-financier', 'en', 'Financial Advisory');
            PERFORM insert_category_translations('conseil-financier', 'de', 'Finanzberatung');
            PERFORM insert_category_translations('conseil-financier', 'es', 'Asesoramiento Financiero');
            PERFORM insert_category_translations('conseil-financier', 'it', 'Consulenza Finanziaria');

            -- Level 2: conversion-monnaie
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('conversion-monnaie', 'conversion-monnaie', 2, l1_id, 'Conversion Monnaie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('conversion-monnaie', 'fr', 'Conversion Monnaie');
            PERFORM insert_category_translations('conversion-monnaie', 'ar', 'تحويل العملات');
            PERFORM insert_category_translations('conversion-monnaie', 'en', 'Currency Conversion');
            PERFORM insert_category_translations('conversion-monnaie', 'de', 'Währungsumrechnung');
            PERFORM insert_category_translations('conversion-monnaie', 'es', 'Conversión de Moneda');
            PERFORM insert_category_translations('conversion-monnaie', 'it', 'Conversione Valuta');

            -- Level 2: authentification-billets
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('authentification-billets', 'authentification-billets', 2, l1_id, 'Authentification Billets')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('authentification-billets', 'fr', 'Authentification Billets');
            PERFORM insert_category_translations('authentification-billets', 'ar', 'توثيق الأوراق نقدية');
            PERFORM insert_category_translations('authentification-billets', 'en', 'Banknote Authentication');
            PERFORM insert_category_translations('authentification-billets', 'de', 'Banknotenauthentifizierung');
            PERFORM insert_category_translations('authentification-billets', 'es', 'Autenticación de Billetes');
            PERFORM insert_category_translations('authentification-billets', 'it', 'Autenticazione Banconote');

            -- Level 2: evaluation-pieces
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('evaluation-pieces', 'evaluation-pieces', 2, l1_id, 'Évaluation Pièces')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('evaluation-pieces', 'fr', 'Évaluation Pièces');
            PERFORM insert_category_translations('evaluation-pieces', 'ar', 'تقييم العملات المعدنية');
            PERFORM insert_category_translations('evaluation-pieces', 'en', 'Coin Valuation');
            PERFORM insert_category_translations('evaluation-pieces', 'de', 'Münzbewertung');
            PERFORM insert_category_translations('evaluation-pieces', 'es', 'Evaluación de Monedas');
            PERFORM insert_category_translations('evaluation-pieces', 'it', 'Valutazione Monete');

        -- Level 1: monnaie-internationale
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('monnaie-internationale', 'monnaie-internationale', 1, root_id, 'Monnaie Internationale')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('monnaie-internationale', 'fr', 'Monnaie Internationale');
        PERFORM insert_category_translations('monnaie-internationale', 'ar', 'عملات دولية');
        PERFORM insert_category_translations('monnaie-internationale', 'en', 'International Currency');
        PERFORM insert_category_translations('monnaie-internationale', 'de', 'Internationale Währung');
        PERFORM insert_category_translations('monnaie-internationale', 'es', 'Moneda Internacional');
        PERFORM insert_category_translations('monnaie-internationale', 'it', 'Valuta Internazionale');

            -- Level 2: dollars-usd
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('dollars-usd', 'dollars-usd', 2, l1_id, 'Dollars USD')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('dollars-usd', 'fr', 'Dollars USD');
            PERFORM insert_category_translations('dollars-usd', 'ar', 'دولار أمريكي');
            PERFORM insert_category_translations('dollars-usd', 'en', 'USD Dollars');
            PERFORM insert_category_translations('dollars-usd', 'de', 'US-Dollar');
            PERFORM insert_category_translations('dollars-usd', 'es', 'Dólares USD');
            PERFORM insert_category_translations('dollars-usd', 'it', 'Dollari USD');

            -- Level 2: euros
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('euros', 'euros', 2, l1_id, 'Euros €')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('euros', 'fr', 'Euros €');
            PERFORM insert_category_translations('euros', 'ar', 'يورو');
            PERFORM insert_category_translations('euros', 'en', 'Euros €');
            PERFORM insert_category_translations('euros', 'de', 'Euro €');
            PERFORM insert_category_translations('euros', 'es', 'Euros €');
            PERFORM insert_category_translations('euros', 'it', 'Euro €');

            -- Level 2: livres-gbp
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('livres-gbp', 'livres-gbp', 2, l1_id, 'Livres GBP')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('livres-gbp', 'fr', 'Livres GBP');
            PERFORM insert_category_translations('livres-gbp', 'ar', 'جنيه إسترليني');
            PERFORM insert_category_translations('livres-gbp', 'en', 'GBP Pounds');
            PERFORM insert_category_translations('livres-gbp', 'de', 'Pfund Sterling');
            PERFORM insert_category_translations('livres-gbp', 'es', 'Libras GBP');
            PERFORM insert_category_translations('livres-gbp', 'it', 'Sterline GBP');

            -- Level 2: dirhams-aed
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('dirhams-aed', 'dirhams-aed', 2, l1_id, 'Dirhams AED')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('dirhams-aed', 'fr', 'Dirhams AED');
            PERFORM insert_category_translations('dirhams-aed', 'ar', 'درهم إماراتي');
            PERFORM insert_category_translations('dirhams-aed', 'en', 'AED Dirhams');
            PERFORM insert_category_translations('dirhams-aed', 'de', 'Dirham AED');
            PERFORM insert_category_translations('dirhams-aed', 'es', 'Dirhams AED');
            PERFORM insert_category_translations('dirhams-aed', 'it', 'Dirham AED');

            -- Level 2: dinars-tnd
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('dinars-tnd', 'dinars-tnd', 2, l1_id, 'Dinars TND')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('dinars-tnd', 'fr', 'Dinars TND');
            PERFORM insert_category_translations('dinars-tnd', 'ar', 'دينار تونسي');
            PERFORM insert_category_translations('dinars-tnd', 'en', 'TND Dinars');
            PERFORM insert_category_translations('dinars-tnd', 'de', 'Dinar TND');
            PERFORM insert_category_translations('dinars-tnd', 'es', 'Dinares TND');
            PERFORM insert_category_translations('dinars-tnd', 'it', 'Dinari TND');

            -- Level 2: francs-cfa
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('francs-cfa', 'francs-cfa', 2, l1_id, 'Francs CFA')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('francs-cfa', 'fr', 'Francs CFA');
            PERFORM insert_category_translations('francs-cfa', 'ar', 'فرنك سيفا');
            PERFORM insert_category_translations('francs-cfa', 'en', 'CFA Francs');
            PERFORM insert_category_translations('francs-cfa', 'de', 'CFA-Franc');
            PERFORM insert_category_translations('francs-cfa', 'es', 'Francos CFA');
            PERFORM insert_category_translations('francs-cfa', 'it', 'Franchi CFA');

            -- Level 2: yuan-cny
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('yuan-cny', 'yuan-cny', 2, l1_id, 'Yuan CNY')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('yuan-cny', 'fr', 'Yuan CNY');
            PERFORM insert_category_translations('yuan-cny', 'ar', 'يوان صيني');
            PERFORM insert_category_translations('yuan-cny', 'en', 'CNY Yuan');
            PERFORM insert_category_translations('yuan-cny', 'de', 'Yuan CNY');
            PERFORM insert_category_translations('yuan-cny', 'es', 'Yuan CNY');
            PERFORM insert_category_translations('yuan-cny', 'it', 'Yuan CNY');

            -- Level 2: riyals-sar
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('riyals-sar', 'riyals-sar', 2, l1_id, 'Riyals SAR')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('riyals-sar', 'fr', 'Riyals SAR');
            PERFORM insert_category_translations('riyals-sar', 'ar', 'ريال سعودي');
            PERFORM insert_category_translations('riyals-sar', 'en', 'SAR Riyals');
            PERFORM insert_category_translations('riyals-sar', 'de', 'Riyal SAR');
            PERFORM insert_category_translations('riyals-sar', 'es', 'Riyals SAR');
            PERFORM insert_category_translations('riyals-sar', 'it', 'Riyal SAR');

            -- Level 2: billets-etrangers
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('billets-etrangers', 'billets-etrangers', 2, l1_id, 'Billets Étrangers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('billets-etrangers', 'fr', 'Billets Étrangers');
            PERFORM insert_category_translations('billets-etrangers', 'ar', 'أوراق نقدية أجنبية');
            PERFORM insert_category_translations('billets-etrangers', 'en', 'Foreign Banknotes');
            PERFORM insert_category_translations('billets-etrangers', 'de', 'Ausländische Banknoten');
            PERFORM insert_category_translations('billets-etrangers', 'es', 'Billetes Extranjeros');
            PERFORM insert_category_translations('billets-etrangers', 'it', 'Banconote Straniere');

            -- Level 2: pieces-etrangeres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pieces-etrangeres', 'pieces-etrangeres', 2, l1_id, 'Pièces Étrangères')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pieces-etrangeres', 'fr', 'Pièces Étrangères');
            PERFORM insert_category_translations('pieces-etrangeres', 'ar', 'عملات معدنية أجنبية');
            PERFORM insert_category_translations('pieces-etrangeres', 'en', 'Foreign Coins');
            PERFORM insert_category_translations('pieces-etrangeres', 'de', 'Ausländische Münzen');
            PERFORM insert_category_translations('pieces-etrangeres', 'es', 'Monedas Extranjeras');
            PERFORM insert_category_translations('pieces-etrangeres', 'it', 'Monete Straniere');

        -- Level 1: or-métaux-précieux
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('or-métaux-précieux', 'or-metaux-precieux', 1, root_id, 'Or & Métaux Précieux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('or-métaux-précieux', 'fr', 'Or & Métaux Précieux');
        PERFORM insert_category_translations('or-métaux-précieux', 'ar', 'ذهب ومعادن ثمينة');
        PERFORM insert_category_translations('or-métaux-précieux', 'en', 'Gold & Precious Metals');
        PERFORM insert_category_translations('or-métaux-précieux', 'de', 'Gold & Edelmetalle');
        PERFORM insert_category_translations('or-métaux-précieux', 'es', 'Oro y Metales Preciosos');
        PERFORM insert_category_translations('or-métaux-précieux', 'it', 'Oro e Metalli Preziosi');

            -- Level 2: lingots-or
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lingots-or', 'lingots-or', 2, l1_id, 'Lingots Or')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lingots-or', 'fr', 'Lingots Or');
            PERFORM insert_category_translations('lingots-or', 'ar', 'سبائك ذهب');
            PERFORM insert_category_translations('lingots-or', 'en', 'Gold Ingots');
            PERFORM insert_category_translations('lingots-or', 'de', 'Goldbarren');
            PERFORM insert_category_translations('lingots-or', 'es', 'Lingotes de Oro');
            PERFORM insert_category_translations('lingots-or', 'it', 'Lingotti d''Oro');

            -- Level 2: pieces-or
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pieces-or', 'pieces-or', 2, l1_id, 'Pièces Or')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pieces-or', 'fr', 'Pièces Or');
            PERFORM insert_category_translations('pieces-or', 'ar', 'عملات ذهبية');
            PERFORM insert_category_translations('pieces-or', 'en', 'Gold Coins');
            PERFORM insert_category_translations('pieces-or', 'de', 'Goldmünzen');
            PERFORM insert_category_translations('pieces-or', 'es', 'Monedas de Oro');
            PERFORM insert_category_translations('pieces-or', 'it', 'Monete d''Oro');

            -- Level 2: pieces-argent
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pieces-argent', 'pieces-argent', 2, l1_id, 'Pièces Argent')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pieces-argent', 'fr', 'Pièces Argent');
            PERFORM insert_category_translations('pieces-argent', 'ar', 'عملات فضية');
            PERFORM insert_category_translations('pieces-argent', 'en', 'Silver Coins');
            PERFORM insert_category_translations('pieces-argent', 'de', 'Silbermünzen');
            PERFORM insert_category_translations('pieces-argent', 'es', 'Monedas de Plata');
            PERFORM insert_category_translations('pieces-argent', 'it', 'Monete d''Argento');

            -- Level 2: metal-precieux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('metal-precieux', 'metal-precieux', 2, l1_id, 'Métal Précieux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('metal-precieux', 'fr', 'Métal Précieux');
            PERFORM insert_category_translations('metal-precieux', 'ar', 'معادن ثمينة');
            PERFORM insert_category_translations('metal-precieux', 'en', 'Precious Metal');
            PERFORM insert_category_translations('metal-precieux', 'de', 'Edelmetall');
            PERFORM insert_category_translations('metal-precieux', 'es', 'Metal Precioso');
            PERFORM insert_category_translations('metal-precieux', 'it', 'Metallo Prezioso');

            -- Level 2: or-investissement
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('or-investissement', 'or-investissement', 2, l1_id, 'Or d''''Investissement')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('or-investissement', 'fr', 'Or d''Investissement');
            PERFORM insert_category_translations('or-investissement', 'ar', 'ذهب للاستثمار');
            PERFORM insert_category_translations('or-investissement', 'en', 'Investment Gold');
            PERFORM insert_category_translations('or-investissement', 'de', 'Anlagegold');
            PERFORM insert_category_translations('or-investissement', 'es', 'Oro de Inversión');
            PERFORM insert_category_translations('or-investissement', 'it', 'Oro da Investimento');

            -- Level 2: argent-pur
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('argent-pur', 'argent-pur', 2, l1_id, 'Argent Pur')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('argent-pur', 'fr', 'Argent Pur');
            PERFORM insert_category_translations('argent-pur', 'ar', 'فضة نقية');
            PERFORM insert_category_translations('argent-pur', 'en', 'Pure Silver');
            PERFORM insert_category_translations('argent-pur', 'de', 'Reines Silber');
            PERFORM insert_category_translations('argent-pur', 'es', 'Plata Pura');
            PERFORM insert_category_translations('argent-pur', 'it', 'Argento Puro');

            -- Level 2: valeurs-rares
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('valeurs-rares', 'valeurs-rares', 2, l1_id, 'Valeurs Rares')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('valeurs-rares', 'fr', 'Valeurs Rares');
            PERFORM insert_category_translations('valeurs-rares', 'ar', 'قيم نادرة');
            PERFORM insert_category_translations('valeurs-rares', 'en', 'Rare Values');
            PERFORM insert_category_translations('valeurs-rares', 'de', 'Seltene Werte');
            PERFORM insert_category_translations('valeurs-rares', 'es', 'Valores Raros');
            PERFORM insert_category_translations('valeurs-rares', 'it', 'Valori Rari');

            -- Level 2: or-numismatique
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('or-numismatique', 'or-numismatique', 2, l1_id, 'Or Numismatique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('or-numismatique', 'fr', 'Or Numismatique');
            PERFORM insert_category_translations('or-numismatique', 'ar', 'ذهب للجمع');
            PERFORM insert_category_translations('or-numismatique', 'en', 'Numismatic Gold');
            PERFORM insert_category_translations('or-numismatique', 'de', 'Numismatisches Gold');
            PERFORM insert_category_translations('or-numismatique', 'es', 'Oro Numismático');
            PERFORM insert_category_translations('or-numismatique', 'it', 'Oro Numismatico');

            -- Level 2: metaux-rares
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('metaux-rares', 'metaux-rares', 2, l1_id, 'Métaux Rares')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('metaux-rares', 'fr', 'Métaux Rares');
            PERFORM insert_category_translations('metaux-rares', 'ar', 'معادن نادرة');
            PERFORM insert_category_translations('metaux-rares', 'en', 'Rare Metals');
            PERFORM insert_category_translations('metaux-rares', 'de', 'Seltene Metalle');
            PERFORM insert_category_translations('metaux-rares', 'es', 'Metales Raros');
            PERFORM insert_category_translations('metaux-rares', 'it', 'Metalli Rari');

        -- Level 1: accessoires-numismatiques
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-numismatiques', 'accessoires-numismatiques', 1, root_id, 'Accessoires Numismatiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('accessoires-numismatiques', 'fr', 'Accessoires Numismatiques');
        PERFORM insert_category_translations('accessoires-numismatiques', 'ar', 'ملحقات جمع العملات');
        PERFORM insert_category_translations('accessoires-numismatiques', 'en', 'Numismatic Accessories');
        PERFORM insert_category_translations('accessoires-numismatiques', 'de', 'Numismatisches Zubehör');
        PERFORM insert_category_translations('accessoires-numismatiques', 'es', 'Accesorios Numismáticos');
        PERFORM insert_category_translations('accessoires-numismatiques', 'it', 'Accessori Numismatici');

            -- Level 2: albums-monnaies
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('albums-monnaies', 'albums-monnaies', 2, l1_id, 'Albums Monnaies')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('albums-monnaies', 'fr', 'Albums Monnaies');
            PERFORM insert_category_translations('albums-monnaies', 'ar', 'ألبومات العملات');
            PERFORM insert_category_translations('albums-monnaies', 'en', 'Currency Albums');
            PERFORM insert_category_translations('albums-monnaies', 'de', 'Münzalben');
            PERFORM insert_category_translations('albums-monnaies', 'es', 'Álbumes de Monedas');
            PERFORM insert_category_translations('albums-monnaies', 'it', 'Album per Monete');

            -- Level 2: etuis-protection
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('etuis-protection', 'etuis-protection', 2, l1_id, 'Étuis Protection')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('etuis-protection', 'fr', 'Étuis Protection');
            PERFORM insert_category_translations('etuis-protection', 'ar', 'حافظات حماية');
            PERFORM insert_category_translations('etuis-protection', 'en', 'Protective Cases');
            PERFORM insert_category_translations('etuis-protection', 'de', 'Schutzhüllen');
            PERFORM insert_category_translations('etuis-protection', 'es', 'Estuches de Protección');
            PERFORM insert_category_translations('etuis-protection', 'it', 'Custodie Protettive');

            -- Level 2: boites-numismatiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('boites-numismatiques', 'boites-numismatiques', 2, l1_id, 'Boîtes Numismatiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('boites-numismatiques', 'fr', 'Boîtes Numismatiques');
            PERFORM insert_category_translations('boites-numismatiques', 'ar', 'صناديق للعملات');
            PERFORM insert_category_translations('boites-numismatiques', 'en', 'Numismatic Boxes');
            PERFORM insert_category_translations('boites-numismatiques', 'de', 'Münzboxen');
            PERFORM insert_category_translations('boites-numismatiques', 'es', 'Cajas Numismáticas');
            PERFORM insert_category_translations('boites-numismatiques', 'it', 'Scatole Numismatiche');

            -- Level 2: classeurs-pieces
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('classeurs-pieces', 'classeurs-pieces', 2, l1_id, 'Classeurs Pièces')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('classeurs-pieces', 'fr', 'Classeurs Pièces');
            PERFORM insert_category_translations('classeurs-pieces', 'ar', 'ملفات للعملات');
            PERFORM insert_category_translations('classeurs-pieces', 'en', 'Coin Binders');
            PERFORM insert_category_translations('classeurs-pieces', 'de', 'Münzordner');
            PERFORM insert_category_translations('classeurs-pieces', 'es', 'Archivadores de Monedas');
            PERFORM insert_category_translations('classeurs-pieces', 'it', 'Raccoglitori per Monete');

            -- Level 2: vitrines-collection
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vitrines-collection', 'vitrines-collection', 2, l1_id, 'Vitrines Collection')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('vitrines-collection', 'fr', 'Vitrines Collection');
            PERFORM insert_category_translations('vitrines-collection', 'ar', 'واجهات عرض');
            PERFORM insert_category_translations('vitrines-collection', 'en', 'Collection Showcases');
            PERFORM insert_category_translations('vitrines-collection', 'de', 'Sammlervitrinen');
            PERFORM insert_category_translations('vitrines-collection', 'es', 'Vitrinas de Colección');
            PERFORM insert_category_translations('vitrines-collection', 'it', 'Vetrine da Collezione');

            -- Level 2: gants-numismatiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gants-numismatiques', 'gants-numismatiques', 2, l1_id, 'Gants Numismatiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gants-numismatiques', 'fr', 'Gants Numismatiques');
            PERFORM insert_category_translations('gants-numismatiques', 'ar', 'قفازات التعامل مع العملات');
            PERFORM insert_category_translations('gants-numismatiques', 'en', 'Numismatic Gloves');
            PERFORM insert_category_translations('gants-numismatiques', 'de', 'Numismatische Handschuhe');
            PERFORM insert_category_translations('gants-numismatiques', 'es', 'Guantes Numismáticos');
            PERFORM insert_category_translations('gants-numismatiques', 'it', 'Guanti Numismatici');

            -- Level 2: loupes-inspection
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('loupes-inspection', 'loupes-inspection', 2, l1_id, 'Loupes Inspection')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('loupes-inspection', 'fr', 'Loupes Inspection');
            PERFORM insert_category_translations('loupes-inspection', 'ar', 'عدسات فحص');
            PERFORM insert_category_translations('loupes-inspection', 'en', 'Inspection Magnifiers');
            PERFORM insert_category_translations('loupes-inspection', 'de', 'Inspektionslupen');
            PERFORM insert_category_translations('loupes-inspection', 'es', 'Lupas de Inspección');
            PERFORM insert_category_translations('loupes-inspection', 'it', 'Lenti d''Ingrandimento');

            -- Level 2: sachets-securises
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sachets-securises', 'sachets-securises', 2, l1_id, 'Sachets Sécurisés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sachets-securises', 'fr', 'Sachets Sécurisés');
            PERFORM insert_category_translations('sachets-securises', 'ar', 'أكياس آمنة');
            PERFORM insert_category_translations('sachets-securises', 'en', 'Secure Bags');
            PERFORM insert_category_translations('sachets-securises', 'de', 'Sicherheitsbeutel');
            PERFORM insert_category_translations('sachets-securises', 'es', 'Bolsas de Seguridad');
            PERFORM insert_category_translations('sachets-securises', 'it', 'Bustine di Sicurezza');

        -- Level 1: aide-collection
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('aide-collection', 'aide-collection', 1, root_id, 'Aide à la Collection')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('aide-collection', 'fr', 'Aide à la Collection');
        PERFORM insert_category_translations('aide-collection', 'ar', 'مساعدة في الجمع');
        PERFORM insert_category_translations('aide-collection', 'en', 'Collection Aid');
        PERFORM insert_category_translations('aide-collection', 'de', 'Sammlungshilfe');
        PERFORM insert_category_translations('aide-collection', 'es', 'Ayuda a la Colección');
        PERFORM insert_category_translations('aide-collection', 'it', 'Aiuto alla Collezione');

            -- Level 2: tri-monnaies
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tri-monnaies', 'tri-monnaies', 2, l1_id, 'Tri Monnaies')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tri-monnaies', 'fr', 'Tri Monnaies');
            PERFORM insert_category_translations('tri-monnaies', 'ar', 'فرز العملات');
            PERFORM insert_category_translations('tri-monnaies', 'en', 'Currency Sorting');
            PERFORM insert_category_translations('tri-monnaies', 'de', 'Münzsortierung');
            PERFORM insert_category_translations('tri-monnaies', 'es', 'Clasificación de Monedas');
            PERFORM insert_category_translations('tri-monnaies', 'it', 'Smistamento Monete');

            -- Level 2: nettoyage-billets
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('nettoyage-billets', 'nettoyage-billets', 2, l1_id, 'Nettoyage Billets')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('nettoyage-billets', 'fr', 'Nettoyage Billets');
            PERFORM insert_category_translations('nettoyage-billets', 'ar', 'تنظيف الأوراق النقدية');
            PERFORM insert_category_translations('nettoyage-billets', 'en', 'Banknote Cleaning');
            PERFORM insert_category_translations('nettoyage-billets', 'de', 'Banknotenreinigung');
            PERFORM insert_category_translations('nettoyage-billets', 'es', 'Limpieza de Billetes');
            PERFORM insert_category_translations('nettoyage-billets', 'it', 'Pulizia Banconote');

            -- Level 2: restauration-pieces
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('restauration-pieces', 'restauration-pieces', 2, l1_id, 'Restauration Pièces')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('restauration-pieces', 'fr', 'Restauration Pièces');
            PERFORM insert_category_translations('restauration-pieces', 'ar', 'ترميم العملات');
            PERFORM insert_category_translations('restauration-pieces', 'en', 'Coin Restoration');
            PERFORM insert_category_translations('restauration-pieces', 'de', 'Münzrestaurierung');
            PERFORM insert_category_translations('restauration-pieces', 'es', 'Restauración de Monedas');
            PERFORM insert_category_translations('restauration-pieces', 'it', 'Restauro Monete');

            -- Level 2: grade-etat
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('grade-etat', 'grade-etat', 2, l1_id, 'Grade État')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('grade-etat', 'fr', 'Grade État');
            PERFORM insert_category_translations('grade-etat', 'ar', 'تقييم الحالة');
            PERFORM insert_category_translations('grade-etat', 'en', 'Grading Condition');
            PERFORM insert_category_translations('grade-etat', 'de', 'Zustandsbewertung');
            PERFORM insert_category_translations('grade-etat', 'es', 'Grado de Estado');
            PERFORM insert_category_translations('grade-etat', 'it', 'Valutazione Stato');

            -- Level 2: conseils-achat
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('conseils-achat', 'conseils-achat', 2, l1_id, 'Conseils Achat')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('conseils-achat', 'fr', 'Conseils Achat');
            PERFORM insert_category_translations('conseils-achat', 'ar', 'نصائح الشراء');
            PERFORM insert_category_translations('conseils-achat', 'en', 'Buying Advice');
            PERFORM insert_category_translations('conseils-achat', 'de', 'Kauftipps');
            PERFORM insert_category_translations('conseils-achat', 'es', 'Consejos de Compra');
            PERFORM insert_category_translations('conseils-achat', 'it', 'Consigli per l''Acquisto');

            -- Level 2: conseils-vente
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('conseils-vente', 'conseils-vente', 2, l1_id, 'Conseils Vente')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('conseils-vente', 'fr', 'Conseils Vente');
            PERFORM insert_category_translations('conseils-vente', 'ar', 'نصائح البيع');
            PERFORM insert_category_translations('conseils-vente', 'en', 'Selling Advice');
            PERFORM insert_category_translations('conseils-vente', 'de', 'Verkaufstipps');
            PERFORM insert_category_translations('conseils-vente', 'es', 'Consejos de Venta');
            PERFORM insert_category_translations('conseils-vente', 'it', 'Consigli per la Vendita');

            -- Level 2: organisation-collection
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('organisation-collection', 'organisation-collection', 2, l1_id, 'Organisation Collection')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('organisation-collection', 'fr', 'Organisation Collection');
            PERFORM insert_category_translations('organisation-collection', 'ar', 'تنظيم المجموعة');
            PERFORM insert_category_translations('organisation-collection', 'en', 'Collection Organization');
            PERFORM insert_category_translations('organisation-collection', 'de', 'Sammlungsorganisation');
            PERFORM insert_category_translations('organisation-collection', 'es', 'Organización de Colección');
            PERFORM insert_category_translations('organisation-collection', 'it', 'Organizzazione Collezione');

            -- Level 2: certification-experts
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('certification-experts', 'certification-experts', 2, l1_id, 'Certification Experts')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('certification-experts', 'fr', 'Certification Experts');
            PERFORM insert_category_translations('certification-experts', 'ar', 'شهادات الخبراء');
            PERFORM insert_category_translations('certification-experts', 'en', 'Expert Certification');
            PERFORM insert_category_translations('certification-experts', 'de', 'Expertenzertifizierung');
            PERFORM insert_category_translations('certification-experts', 'es', 'Certificación de Expertos');
            PERFORM insert_category_translations('certification-experts', 'it', 'Certificazione Esperti');
END $$;