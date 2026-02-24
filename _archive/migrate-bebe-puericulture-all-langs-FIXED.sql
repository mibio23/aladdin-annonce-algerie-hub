
-- Migration SQL for Bébé & Puériculture category (FIXED)
-- Generated based on TypeScript definitions (fr.tsx, en.tsx, ar.tsx, de.tsx, es.tsx, it.tsx)
-- Uses idempotency (ON CONFLICT) and insert_category_with_translations helper function.

DO $$
DECLARE
    root_id UUID;
    
    -- Level 1 IDs
    l1_vetements_id UUID;
    l1_chaussures_id UUID;
    l1_poussettes_id UUID;
    l1_sieges_id UUID;
    l1_lits_id UUID;
    l1_chaises_id UUID;
    l1_allaitement_id UUID;
    l1_soins_id UUID;
    l1_couches_id UUID;
    l1_jouets_id UUID;
    l1_securite_id UUID;
    l1_chambre_id UUID;
    l1_porte_bebes_id UUID;
    l1_sacs_id UUID;

    -- Reusable Level 2 ID for categories that have children (Brands)
    l2_temp_id UUID;
BEGIN
    -- 1. Insert Root Category
    INSERT INTO categories (slug, level, is_active)
    VALUES ('bebe-puericulture', 0, true)
    ON CONFLICT (slug) DO UPDATE SET level = 0
    RETURNING id INTO root_id;

    -- 2. Insert Root Translations
    INSERT INTO category_translations (category_id, language_code, name)
    VALUES
        (root_id, 'fr', 'Bébé & Puériculture'),
        (root_id, 'en', 'Baby & Nursery'),
        (root_id, 'ar', 'مستلزمات الأطفال والرضاعة'),
        (root_id, 'de', 'Baby & Kinderpflege'),
        (root_id, 'es', 'Bebé y Puericultura'),
        (root_id, 'it', 'Bebè & Prima Infanzia')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

    -- 3. Insert Level 1 Categories & Subcategories

    -- ==========================================
    -- 1. Vêtements bébé
    -- ==========================================
    SELECT insert_category_with_translations(
        'vetements-bebe', root_id, 1,
        jsonb_build_object(
            'fr', 'Vêtements bébé',
            'en', 'Baby clothes',
            'ar', 'ملابس الرضع',
            'de', 'Babykleidung',
            'es', 'Ropa de bebé',
            'it', 'Abbigliamento neonato'
        )
    ) INTO l1_vetements_id;

    PERFORM insert_category_with_translations('bodies-pyjamas', l1_vetements_id, 2, jsonb_build_object('fr', 'Bodies & pyjamas', 'en', 'Bodysuits & pajamas', 'ar', 'بودي وبيجامات', 'de', 'Bodies & Schlafanzüge', 'es', 'Bodies y pijamas', 'it', 'Body e pigiami'));
    PERFORM insert_category_with_translations('ensembles-bebe', l1_vetements_id, 2, jsonb_build_object('fr', 'Ensembles', 'en', 'Outfits', 'ar', 'طقم ملابس', 'de', 'Outfits', 'es', 'Conjuntos', 'it', 'Completi'));
    PERFORM insert_category_with_translations('grenouilleres', l1_vetements_id, 2, jsonb_build_object('fr', 'Grenouillères', 'en', 'Onesies', 'ar', 'أوفرولات', 'de', 'Strampler', 'es', 'Enteritos', 'it', 'Tutine'));
    PERFORM insert_category_with_translations('gigoteuses-turbulettes', l1_vetements_id, 2, jsonb_build_object('fr', 'Gigoteuses & turbulettes', 'en', 'Sleep sacks & wearable blankets', 'ar', 'أكياس نوم للرضع', 'de', 'Schlafsäcke', 'es', 'Sacos de dormir', 'it', 'Sacchi nanna'));
    PERFORM insert_category_with_translations('manteaux-combinaisons', l1_vetements_id, 2, jsonb_build_object('fr', 'Manteaux & combinaisons', 'en', 'Coats & snowsuits', 'ar', 'معاطف وبدلات شتوية', 'de', 'Mäntel & Overall', 'es', 'Abrigos y monos', 'it', 'Cappotti & tute invernali'));

    -- ==========================================
    -- 2. Chaussures bébé
    -- ==========================================
    SELECT insert_category_with_translations(
        'chaussures-bebe', root_id, 1,
        jsonb_build_object(
            'fr', 'Chaussures bébé',
            'en', 'Baby shoes',
            'ar', 'أحذية الرضع',
            'de', 'Babyschuhe',
            'es', 'Zapatos de bebé',
            'it', 'Scarpe neonato'
        )
    ) INTO l1_chaussures_id;

    PERFORM insert_category_with_translations('chaussons-naissance', l1_chaussures_id, 2, jsonb_build_object('fr', 'Chaussons naissance', 'en', 'Newborn booties', 'ar', 'أحذية لحديثي الولادة', 'de', 'Erstlingsschuhe', 'es', 'Zapatitos de recién nacido', 'it', 'Scarpine neonato'));
    PERFORM insert_category_with_translations('sandales-bebe', l1_chaussures_id, 2, jsonb_build_object('fr', 'Sandales bébé', 'en', 'Sandals', 'ar', 'صنادل للرضع', 'de', 'Sandalen', 'es', 'Sandalias', 'it', 'Sandali'));
    PERFORM insert_category_with_translations('baskets-bebe', l1_chaussures_id, 2, jsonb_build_object('fr', 'Baskets bébé', 'en', 'Sneakers', 'ar', 'أحذية رياضية للرضع', 'de', 'Sneaker', 'es', 'Zapatillas', 'it', 'Sneakers'));
    PERFORM insert_category_with_translations('bottines-bebe', l1_chaussures_id, 2, jsonb_build_object('fr', 'Bottines bébé', 'en', 'Boots', 'ar', 'أحذية بوت للرضع', 'de', 'Stiefelchen', 'es', 'Botitas', 'it', 'Stivaletti'));

    -- ==========================================
    -- 3. Poussettes & landaus
    -- ==========================================
    SELECT insert_category_with_translations(
        'poussettes-landaus', root_id, 1,
        jsonb_build_object(
            'fr', 'Poussettes & landaus',
            'en', 'Strollers & prams',
            'ar', 'عربات الأطفال',
            'de', 'Kinderwagen & Buggys',
            'es', 'Carritos & cochecitos',
            'it', 'Passeggini & carrozzine'
        )
    ) INTO l1_poussettes_id;

    PERFORM insert_category_with_translations('poussettes-canne', l1_poussettes_id, 2, jsonb_build_object('fr', 'Poussettes canne', 'en', 'Umbrella strollers', 'ar', 'عربات خفيفة (كان)', 'de', 'Buggy', 'es', 'Cochecitos tipo bastón', 'it', 'Passeggini a ombrello'));
    PERFORM insert_category_with_translations('poussettes-3-roues', l1_poussettes_id, 2, jsonb_build_object('fr', 'Poussettes 3 roues', 'en', '3-wheel strollers', 'ar', 'عربات ثلاثية العجلات', 'de', 'Kinderwagen (3 Räder)', 'es', 'Cochecitos de 3 ruedas', 'it', 'Passeggini a 3 ruote'));
    PERFORM insert_category_with_translations('landeaux', l1_poussettes_id, 2, jsonb_build_object('fr', 'Landeaux', 'en', 'Prams', 'ar', 'لاندو', 'de', 'Kinderwagen/Prams', 'es', 'Carritos/landós', 'it', 'Carrozzine'));
    PERFORM insert_category_with_translations('travel-system', l1_poussettes_id, 2, jsonb_build_object('fr', 'Travel system', 'en', 'Travel systems', 'ar', 'نظام السفر', 'de', 'Reisesysteme', 'es', 'Travel system', 'it', 'Travel system'));
    PERFORM insert_category_with_translations('accessoires-poussette', l1_poussettes_id, 2, jsonb_build_object('fr', 'Accessoires poussette', 'en', 'Stroller accessories', 'ar', 'إكسسوارات العربات', 'de', 'Kinderwagen-Zubehör', 'es', 'Accesorios para cochecito', 'it', 'Accessori passeggino'));

    -- Brands (Level 2 -> Level 3)
    SELECT insert_category_with_translations(
        'marques-poussettes', l1_poussettes_id, 2,
        jsonb_build_object(
            'fr', 'Marques poussettes',
            'en', 'Stroller brands',
            'ar', 'علامات تجارية لعربات الأطفال',
            'de', 'Kinderwagen-Marken',
            'es', 'Marcas de carritos',
            'it', 'Marche passeggini'
        )
    ) INTO l2_temp_id;

    PERFORM insert_category_with_translations('bugaboo', l2_temp_id, 3, jsonb_build_object('fr', 'Bugaboo', 'en', 'Bugaboo', 'ar', 'Bugaboo', 'de', 'Bugaboo', 'es', 'Bugaboo', 'it', 'Bugaboo'));
    PERFORM insert_category_with_translations('cybex', l2_temp_id, 3, jsonb_build_object('fr', 'Cybex', 'en', 'Cybex', 'ar', 'Cybex', 'de', 'Cybex', 'es', 'Cybex', 'it', 'Cybex'));
    PERFORM insert_category_with_translations('maxi-cosi', l2_temp_id, 3, jsonb_build_object('fr', 'Maxi-Cosi', 'en', 'Maxi-Cosi', 'ar', 'Maxi-Cosi', 'de', 'Maxi-Cosi', 'es', 'Maxi-Cosi', 'it', 'Maxi-Cosi'));
    PERFORM insert_category_with_translations('chicco', l2_temp_id, 3, jsonb_build_object('fr', 'Chicco', 'en', 'Chicco', 'ar', 'Chicco', 'de', 'Chicco', 'es', 'Chicco', 'it', 'Chicco'));
    PERFORM insert_category_with_translations('stokke', l2_temp_id, 3, jsonb_build_object('fr', 'Stokke', 'en', 'Stokke', 'ar', 'Stokke', 'de', 'Stokke', 'es', 'Stokke', 'it', 'Stokke'));
    PERFORM insert_category_with_translations('joie', l2_temp_id, 3, jsonb_build_object('fr', 'Joie', 'en', 'Joie', 'ar', 'Joie', 'de', 'Joie', 'es', 'Joie', 'it', 'Joie'));
    PERFORM insert_category_with_translations('peg-perego', l2_temp_id, 3, jsonb_build_object('fr', 'Peg-Perego', 'en', 'Peg-Perego', 'ar', 'Peg-Perego', 'de', 'Peg-Perego', 'es', 'Peg-Perego', 'it', 'Peg-Perego'));
    PERFORM insert_category_with_translations('nuna', l2_temp_id, 3, jsonb_build_object('fr', 'Nuna', 'en', 'Nuna', 'ar', 'Nuna', 'de', 'Nuna', 'es', 'Nuna', 'it', 'Nuna'));
    PERFORM insert_category_with_translations('graco', l2_temp_id, 3, jsonb_build_object('fr', 'Graco', 'en', 'Graco', 'ar', 'Graco', 'de', 'Graco', 'es', 'Graco', 'it', 'Graco'));
    PERFORM insert_category_with_translations('britax', l2_temp_id, 3, jsonb_build_object('fr', 'Britax', 'en', 'Britax', 'ar', 'Britax', 'de', 'Britax', 'es', 'Britax', 'it', 'Britax'));


    -- ==========================================
    -- 4. Sièges auto bébé
    -- ==========================================
    SELECT insert_category_with_translations(
        'sieges-auto-bebe', root_id, 1,
        jsonb_build_object(
            'fr', 'Sièges auto bébé',
            'en', 'Car seats',
            'ar', 'مقاعد السيارة للأطفال',
            'de', 'Kindersitze',
            'es', 'Sillas de coche',
            'it', 'Seggiolini auto'
        )
    ) INTO l1_sieges_id;

    PERFORM insert_category_with_translations('cosy-groupe-0', l1_sieges_id, 2, jsonb_build_object('fr', 'Cosy groupe 0', 'en', 'Infant car seat (Group 0)', 'ar', 'مقاعد مجموعة 0 (كوسي)', 'de', 'Babyschale Gruppe 0', 'es', 'Huevitos grupo 0', 'it', 'Ovetto gruppo 0'));
    PERFORM insert_category_with_translations('siege-auto-groupe-0-1', l1_sieges_id, 2, jsonb_build_object('fr', 'Siège auto groupe 0/1', 'en', 'Convertible seat (Group 0/1)', 'ar', 'مقاعد سيارة مجموعة 0/1', 'de', 'Kindersitz Gruppe 0/1', 'es', 'Sillas grupo 0/1', 'it', 'Seggiolini gruppo 0/1'));
    PERFORM insert_category_with_translations('siege-auto-groupe-1-2-3', l1_sieges_id, 2, jsonb_build_object('fr', 'Siège auto groupe 1/2/3', 'en', 'Toddler/child seat (Group 1/2/3)', 'ar', 'مقاعد سيارة مجموعة 1/2/3', 'de', 'Kindersitz Gruppe 1/2/3', 'es', 'Sillas grupo 1/2/3', 'it', 'Seggiolini gruppo 1/2/3'));
    PERFORM insert_category_with_translations('bases-isofix', l1_sieges_id, 2, jsonb_build_object('fr', 'Bases ISOFIX', 'en', 'ISOFIX bases', 'ar', 'حاملات ISOFIX', 'de', 'ISOFIX-Basen', 'es', 'Bases ISOFIX', 'it', 'Basi ISOFIX'));

    -- Brands
    SELECT insert_category_with_translations(
        'marques-sieges-auto', l1_sieges_id, 2,
        jsonb_build_object(
            'fr', 'Marques sièges auto',
            'en', 'Car seat brands',
            'ar', 'علامات تجارية لمقاعد السيارة للأطفال',
            'de', 'Kindersitz-Marken',
            'es', 'Marcas de sillas de coche',
            'it', 'Marche seggiolini auto'
        )
    ) INTO l2_temp_id;

    PERFORM insert_category_with_translations('maxi-cosi', l2_temp_id, 3, jsonb_build_object('fr', 'Maxi-Cosi', 'en', 'Maxi-Cosi', 'ar', 'Maxi-Cosi', 'de', 'Maxi-Cosi', 'es', 'Maxi-Cosi', 'it', 'Maxi-Cosi'));
    PERFORM insert_category_with_translations('cybex', l2_temp_id, 3, jsonb_build_object('fr', 'Cybex', 'en', 'Cybex', 'ar', 'Cybex', 'de', 'Cybex', 'es', 'Cybex', 'it', 'Cybex'));
    PERFORM insert_category_with_translations('britax', l2_temp_id, 3, jsonb_build_object('fr', 'Britax', 'en', 'Britax', 'ar', 'Britax', 'de', 'Britax', 'es', 'Britax', 'it', 'Britax'));
    PERFORM insert_category_with_translations('nuna', l2_temp_id, 3, jsonb_build_object('fr', 'Nuna', 'en', 'Nuna', 'ar', 'Nuna', 'de', 'Nuna', 'es', 'Nuna', 'it', 'Nuna'));
    PERFORM insert_category_with_translations('joie', l2_temp_id, 3, jsonb_build_object('fr', 'Joie', 'en', 'Joie', 'ar', 'Joie', 'de', 'Joie', 'es', 'Joie', 'it', 'Joie'));
    PERFORM insert_category_with_translations('chicco', l2_temp_id, 3, jsonb_build_object('fr', 'Chicco', 'en', 'Chicco', 'ar', 'Chicco', 'de', 'Chicco', 'es', 'Chicco', 'it', 'Chicco'));


    -- ==========================================
    -- 5. Lits & berceaux
    -- ==========================================
    SELECT insert_category_with_translations(
        'lits-berceaux-bebe', root_id, 1,
        jsonb_build_object(
            'fr', 'Lits & berceaux',
            'en', 'Cribs & bassinets',
            'ar', 'أسرة ومهد',
            'de', 'Babybetten & Wiegen',
            'es', 'Cunas & moisés',
            'it', 'Culle & lettini'
        )
    ) INTO l1_lits_id;

    PERFORM insert_category_with_translations('berceaux', l1_lits_id, 2, jsonb_build_object('fr', 'Berceaux', 'en', 'Bassinets', 'ar', 'مهود', 'de', 'Wiegen', 'es', 'Mecedoras/cunas', 'it', 'Culle'));
    PERFORM insert_category_with_translations('lits-parapluie', l1_lits_id, 2, jsonb_build_object('fr', 'Lits parapluie', 'en', 'Travel cots', 'ar', 'أسرة قابلة للطي', 'de', 'Reisebetten', 'es', 'Cunas de viaje', 'it', 'Lettini da viaggio'));
    PERFORM insert_category_with_translations('lits-evolutifs', l1_lits_id, 2, jsonb_build_object('fr', 'Lits évolutifs', 'en', 'Convertible cribs', 'ar', 'أسرة متحوّلة', 'de', 'Mitwachsende Betten', 'es', 'Cunas evolutivas', 'it', 'Lettini evolutivi'));
    PERFORM insert_category_with_translations('matelas-bebe', l1_lits_id, 2, jsonb_build_object('fr', 'Matelas bébé', 'en', 'Baby mattresses', 'ar', 'مراتب الرضع', 'de', 'Baby-Matratzen', 'es', 'Colchones bebé', 'it', 'Materassi bebé'));

    -- Brands
    SELECT insert_category_with_translations(
        'marques-lits-berceaux', l1_lits_id, 2,
        jsonb_build_object(
            'fr', 'Marques lits & berceaux',
            'en', 'Crib & bassinet brands',
            'ar', 'علامات تجارية للأسرة والمهد',
            'de', 'Marken Babybetten & Wiegen',
            'es', 'Marcas de cunas y moisés',
            'it', 'Marche culle & lettini'
        )
    ) INTO l2_temp_id;

    PERFORM insert_category_with_translations('stokke', l2_temp_id, 3, jsonb_build_object('fr', 'Stokke', 'en', 'Stokke', 'ar', 'Stokke', 'de', 'Stokke', 'es', 'Stokke', 'it', 'Stokke'));
    PERFORM insert_category_with_translations('ikea', l2_temp_id, 3, jsonb_build_object('fr', 'IKEA', 'en', 'IKEA', 'ar', 'IKEA', 'de', 'IKEA', 'es', 'IKEA', 'it', 'IKEA'));
    PERFORM insert_category_with_translations('chicco', l2_temp_id, 3, jsonb_build_object('fr', 'Chicco', 'en', 'Chicco', 'ar', 'Chicco', 'de', 'Chicco', 'es', 'Chicco', 'it', 'Chicco'));
    PERFORM insert_category_with_translations('babybjorn', l2_temp_id, 3, jsonb_build_object('fr', 'BabyBjörn', 'en', 'BabyBjörn', 'ar', 'BabyBjörn', 'de', 'BabyBjörn', 'es', 'BabyBjörn', 'it', 'BabyBjörn'));


    -- ==========================================
    -- 6. Chaises hautes & repas
    -- ==========================================
    SELECT insert_category_with_translations(
        'chaises-hautes-repas', root_id, 1,
        jsonb_build_object(
            'fr', 'Chaises hautes & repas',
            'en', 'High chairs & feeding',
            'ar', 'كراسي الطعام للأطفال',
            'de', 'Hochstühle & Essen',
            'es', 'Tronas & alimentación',
            'it', 'Seggioloni & pappa'
        )
    ) INTO l1_chaises_id;

    PERFORM insert_category_with_translations('chaises-hautes', l1_chaises_id, 2, jsonb_build_object('fr', 'Chaises hautes', 'en', 'High chairs', 'ar', 'كراسي عالية', 'de', 'Hochstühle', 'es', 'Tronas', 'it', 'Seggioloni'));
    PERFORM insert_category_with_translations('rehausseurs', l1_chaises_id, 2, jsonb_build_object('fr', 'Réhausseurs', 'en', 'Boosters', 'ar', 'أجهزة رفع مقعد', 'de', 'Sitzerhöhungen', 'es', 'Elevadores', 'it', 'Alzasedia'));
    PERFORM insert_category_with_translations('vaisselle-bebe', l1_chaises_id, 2, jsonb_build_object('fr', 'Vaisselle bébé', 'en', 'Baby tableware', 'ar', 'أواني طعام للأطفال', 'de', 'Baby-Geschirr', 'es', 'Vajilla bebé', 'it', 'Stoviglie bebé'));
    PERFORM insert_category_with_translations('bavoirs', l1_chaises_id, 2, jsonb_build_object('fr', 'Bavoirs', 'en', 'Bib', 'ar', 'مريلات', 'de', 'Lätzchen', 'es', 'Baberos', 'it', 'Bavaglini'));

    -- Brands
    SELECT insert_category_with_translations(
        'marques-chaises-hautes', l1_chaises_id, 2,
        jsonb_build_object(
            'fr', 'Marques chaises hautes',
            'en', 'High chair brands',
            'ar', 'علامات تجارية لكراسي الطعام',
            'de', 'Hochstuhl-Marken',
            'es', 'Marcas de tronas',
            'it', 'Marche seggioloni'
        )
    ) INTO l2_temp_id;

    PERFORM insert_category_with_translations('stokke', l2_temp_id, 3, jsonb_build_object('fr', 'Stokke', 'en', 'Stokke', 'ar', 'Stokke', 'de', 'Stokke', 'es', 'Stokke', 'it', 'Stokke'));
    PERFORM insert_category_with_translations('peg-perego', l2_temp_id, 3, jsonb_build_object('fr', 'Peg-Perego', 'en', 'Peg-Perego', 'ar', 'Peg-Perego', 'de', 'Peg-Perego', 'es', 'Peg-Perego', 'it', 'Peg-Perego'));
    PERFORM insert_category_with_translations('joie', l2_temp_id, 3, jsonb_build_object('fr', 'Joie', 'en', 'Joie', 'ar', 'Joie', 'de', 'Joie', 'es', 'Joie', 'it', 'Joie'));
    PERFORM insert_category_with_translations('ikea', l2_temp_id, 3, jsonb_build_object('fr', 'IKEA', 'en', 'IKEA', 'ar', 'IKEA', 'de', 'IKEA', 'es', 'IKEA', 'it', 'IKEA'));


    -- ==========================================
    -- 7. Allaitement & biberons
    -- ==========================================
    SELECT insert_category_with_translations(
        'allaitement-biberons', root_id, 1,
        jsonb_build_object(
            'fr', 'Allaitement & biberons',
            'en', 'Breastfeeding & bottles',
            'ar', 'الرضاعة والرضّاعات',
            'de', 'Stillen & Flaschen',
            'es', 'Lactancia & biberones',
            'it', 'Allattamento & biberon'
        )
    ) INTO l1_allaitement_id;

    PERFORM insert_category_with_translations('tire-lait', l1_allaitement_id, 2, jsonb_build_object('fr', 'Tire-lait', 'en', 'Breast pumps', 'ar', 'شفاطات الحليب', 'de', 'Milchpumpen', 'es', 'Sacaleches', 'it', 'Tiralatte'));
    PERFORM insert_category_with_translations('coussin-allaitement', l1_allaitement_id, 2, jsonb_build_object('fr', 'Coussin d''allaitement', 'en', 'Nursing pillows', 'ar', 'وسائد الرضاعة', 'de', 'Stillkissen', 'es', 'Cojín de lactancia', 'it', 'Cuscino allattamento'));
    PERFORM insert_category_with_translations('biberons-tetines', l1_allaitement_id, 2, jsonb_build_object('fr', 'Biberons & tétines', 'en', 'Bottles & nipples', 'ar', 'رضّاعات وحلمات', 'de', 'Flaschen & Sauger', 'es', 'Biberones y tetinas', 'it', 'Biberon e tettarelle'));
    PERFORM insert_category_with_translations('chauffe-biberons', l1_allaitement_id, 2, jsonb_build_object('fr', 'Chauffe-biberons', 'en', 'Bottle warmers', 'ar', 'مسخّنات الرضّاعات', 'de', 'Flaschenwärmer', 'es', 'Calienta biberones', 'it', 'Scaldabiberon'));
    PERFORM insert_category_with_translations('sterilisation', l1_allaitement_id, 2, jsonb_build_object('fr', 'Stérilisation', 'en', 'Sterilizers', 'ar', 'أجهزة التعقيم', 'de', 'Sterilisatoren', 'es', 'Esterilizadores', 'it', 'Sterilizzatori'));

    -- Brands
    SELECT insert_category_with_translations(
        'marques-biberons', l1_allaitement_id, 2,
        jsonb_build_object(
            'fr', 'Marques biberons',
            'en', 'Bottle brands',
            'ar', 'علامات تجارية للرضّاعات',
            'de', 'Flaschen-Marken',
            'es', 'Marcas de biberones',
            'it', 'Marche biberon'
        )
    ) INTO l2_temp_id;

    PERFORM insert_category_with_translations('philips-avent', l2_temp_id, 3, jsonb_build_object('fr', 'Philips Avent', 'en', 'Philips Avent', 'ar', 'Philips Avent', 'de', 'Philips Avent', 'es', 'Philips Avent', 'it', 'Philips Avent'));
    PERFORM insert_category_with_translations('tommee-tippee', l2_temp_id, 3, jsonb_build_object('fr', 'Tommee Tippee', 'en', 'Tommee Tippee', 'ar', 'Tommee Tippee', 'de', 'Tommee Tippee', 'es', 'Tommee Tippee', 'it', 'Tommee Tippee'));
    PERFORM insert_category_with_translations('dr-browns', l2_temp_id, 3, jsonb_build_object('fr', 'Dr. Brown''s', 'en', 'Dr. Brown''s', 'ar', 'Dr. Brown''s', 'de', 'Dr. Brown''s', 'es', 'Dr. Brown''s', 'it', 'Dr. Brown''s'));
    PERFORM insert_category_with_translations('mam', l2_temp_id, 3, jsonb_build_object('fr', 'MAM', 'en', 'MAM', 'ar', 'MAM', 'de', 'MAM', 'es', 'MAM', 'it', 'MAM'));
    PERFORM insert_category_with_translations('nuk', l2_temp_id, 3, jsonb_build_object('fr', 'NUK', 'en', 'NUK', 'ar', 'NUK', 'de', 'NUK', 'es', 'NUK', 'it', 'NUK'));


    -- ==========================================
    -- 8. Soins & hygiène
    -- ==========================================
    SELECT insert_category_with_translations(
        'soins-hygiene-bebe', root_id, 1,
        jsonb_build_object(
            'fr', 'Soins & hygiène',
            'en', 'Care & hygiene',
            'ar', 'العناية والنظافة',
            'de', 'Pflege & Hygiene',
            'es', 'Cuidado & higiene',
            'it', 'Cura & igiene'
        )
    ) INTO l1_soins_id;

    PERFORM insert_category_with_translations('baignoires-bebe', l1_soins_id, 2, jsonb_build_object('fr', 'Baignoires bébé', 'en', 'Baby bathtubs', 'ar', 'أحواض استحمام للرضع', 'de', 'Babywannen', 'es', 'Bañeras bebé', 'it', 'Vaschetta bebé'));
    PERFORM insert_category_with_translations('trousse-de-soin', l1_soins_id, 2, jsonb_build_object('fr', 'Trousse de soin', 'en', 'Care kits', 'ar', 'عدة العناية', 'de', 'Pflegesets', 'es', 'Set de cuidado', 'it', 'Kit cura'));
    PERFORM insert_category_with_translations('thermometres-bebe', l1_soins_id, 2, jsonb_build_object('fr', 'Thermomètres bébé', 'en', 'Baby thermometers', 'ar', 'مقاييس حرارة للرضع', 'de', 'Baby-Thermometer', 'es', 'Termómetros bebé', 'it', 'Termometri bebé'));
    PERFORM insert_category_with_translations('soins-peau-bebe', l1_soins_id, 2, jsonb_build_object('fr', 'Soins peau bébé', 'en', 'Skin care', 'ar', 'عناية ببشرة الرضيع', 'de', 'Hautpflege', 'es', 'Cuidado de la piel', 'it', 'Cura della pelle'));

    -- Brands
    SELECT insert_category_with_translations(
        'marques-soins-bebe', l1_soins_id, 2,
        jsonb_build_object(
            'fr', 'Marques soins bébé',
            'en', 'Baby care brands',
            'ar', 'علامات تجارية لمنتجات العناية بالرضع',
            'de', 'Marken Babypflege',
            'es', 'Marcas de cuidado del bebé',
            'it', 'Marche cura bebé'
        )
    ) INTO l2_temp_id;

    PERFORM insert_category_with_translations('mustela', l2_temp_id, 3, jsonb_build_object('fr', 'Mustela', 'en', 'Mustela', 'ar', 'Mustela', 'de', 'Mustela', 'es', 'Mustela', 'it', 'Mustela'));
    PERFORM insert_category_with_translations('biolane', l2_temp_id, 3, jsonb_build_object('fr', 'Biolane', 'en', 'Biolane', 'ar', 'Biolane', 'de', 'Biolane', 'es', 'Biolane', 'it', 'Biolane'));
    PERFORM insert_category_with_translations('weleda', l2_temp_id, 3, jsonb_build_object('fr', 'Weleda', 'en', 'Weleda', 'ar', 'Weleda', 'de', 'Weleda', 'es', 'Weleda', 'it', 'Weleda'));
    PERFORM insert_category_with_translations('sanosan', l2_temp_id, 3, jsonb_build_object('fr', 'Sanosan', 'en', 'Sanosan', 'ar', 'Sanosan', 'de', 'Sanosan', 'es', 'Sanosan', 'it', 'Sanosan'));


    -- ==========================================
    -- 9. Couches & change
    -- ==========================================
    SELECT insert_category_with_translations(
        'couches-toilette', root_id, 1,
        jsonb_build_object(
            'fr', 'Couches & change',
            'en', 'Diapers & changing',
            'ar', 'حفاضات وتغيير',
            'de', 'Windeln & Wickeln',
            'es', 'Pañales & cambio',
            'it', 'Pannolini & cambio'
        )
    ) INTO l1_couches_id;

    PERFORM insert_category_with_translations('couches-jetables', l1_couches_id, 2, jsonb_build_object('fr', 'Couches jetables', 'en', 'Disposable diapers', 'ar', 'حفاضات للاستخدام مرة واحدة', 'de', 'Einwegwindeln', 'es', 'Pañales desechables', 'it', 'Pannolini usa e getta'));
    PERFORM insert_category_with_translations('couches-lavables', l1_couches_id, 2, jsonb_build_object('fr', 'Couches lavables', 'en', 'Cloth diapers', 'ar', 'حفاضات قابلة للغسيل', 'de', 'Stoffwindeln', 'es', 'Pañales de tela', 'it', 'Pannolini lavabili'));
    PERFORM insert_category_with_translations('lingettes-bebe', l1_couches_id, 2, jsonb_build_object('fr', 'Lingettes bébé', 'en', 'Baby wipes', 'ar', 'مناديل مبللة للأطفال', 'de', 'Feuchttücher', 'es', 'Toallitas bebé', 'it', 'Salviette'));
    PERFORM insert_category_with_translations('tables-a-langer', l1_couches_id, 2, jsonb_build_object('fr', 'Tables à langer', 'en', 'Changing tables', 'ar', 'طاولات تغيير', 'de', 'Wickeltische', 'es', 'Cambiadores', 'it', 'Fasciatoi'));
    PERFORM insert_category_with_translations('matelas-a-langer', l1_couches_id, 2, jsonb_build_object('fr', 'Matelas à langer', 'en', 'Changing mats', 'ar', 'فرش تغيير', 'de', 'Wickelauflagen', 'es', 'Colchonetas de cambio', 'it', 'Materassini fasciatoio'));

    -- Brands
    SELECT insert_category_with_translations(
        'marques-couches', l1_couches_id, 2,
        jsonb_build_object(
            'fr', 'Marques couches',
            'en', 'Diaper brands',
            'ar', 'علامات تجارية للحفاضات',
            'de', 'Windel-Marken',
            'es', 'Marcas de pañales',
            'it', 'Marche pannolini'
        )
    ) INTO l2_temp_id;

    PERFORM insert_category_with_translations('pampers', l2_temp_id, 3, jsonb_build_object('fr', 'Pampers', 'en', 'Pampers', 'ar', 'Pampers', 'de', 'Pampers', 'es', 'Pampers', 'it', 'Pampers'));
    PERFORM insert_category_with_translations('huggies', l2_temp_id, 3, jsonb_build_object('fr', 'Huggies', 'en', 'Huggies', 'ar', 'Huggies', 'de', 'Huggies', 'es', 'Huggies', 'it', 'Huggies'));
    PERFORM insert_category_with_translations('dodot', l2_temp_id, 3, jsonb_build_object('fr', 'Dodot', 'en', 'Dodot', 'ar', 'Dodot', 'de', 'Dodot', 'es', 'Dodot', 'it', 'Dodot'));
    PERFORM insert_category_with_translations('libero', l2_temp_id, 3, jsonb_build_object('fr', 'Libero', 'en', 'Libero', 'ar', 'Libero', 'de', 'Libero', 'es', 'Libero', 'it', 'Libero'));
    PERFORM insert_category_with_translations('moltex', l2_temp_id, 3, jsonb_build_object('fr', 'Moltex', 'en', 'Moltex', 'ar', 'Moltex', 'de', 'Moltex', 'es', 'Moltex', 'it', 'Moltex'));


    -- ==========================================
    -- 10. Jouets & éveil
    -- ==========================================
    SELECT insert_category_with_translations(
        'jouets-bebe-eveil', root_id, 1,
        jsonb_build_object(
            'fr', 'Jouets & éveil',
            'en', 'Baby toys & early learning',
            'ar', 'ألعاب الأطفال والتنمية',
            'de', 'Babyspielzeug & Frühförderung',
            'es', 'Juguetes & estimulación',
            'it', 'Giochi & primi apprendimenti'
        )
    ) INTO l1_jouets_id;

    PERFORM insert_category_with_translations('tapis-eveil', l1_jouets_id, 2, jsonb_build_object('fr', 'Tapis d''éveil', 'en', 'Activity mats', 'ar', 'بساط ألعاب', 'de', 'Spielmatten', 'es', 'Tapetes de juego', 'it', 'Tappeti attività'));
    PERFORM insert_category_with_translations('hochets', l1_jouets_id, 2, jsonb_build_object('fr', 'Hochets', 'en', 'Rattles', 'ar', 'خشخيشات', 'de', 'Rasseln', 'es', 'Sonajeros', 'it', 'Sonagli'));
    PERFORM insert_category_with_translations('jouets-de-bain', l1_jouets_id, 2, jsonb_build_object('fr', 'Jouets de bain', 'en', 'Bath toys', 'ar', 'ألعاب الاستحمام', 'de', 'Badespielzeug', 'es', 'Juguetes de baño', 'it', 'Giochi da bagno'));
    PERFORM insert_category_with_translations('mobiles-lits', l1_jouets_id, 2, jsonb_build_object('fr', 'Mobiles de lit', 'en', 'Crib mobiles', 'ar', 'معلقات السرير', 'de', 'Mobile fürs Bett', 'es', 'Móviles de cuna', 'it', 'Giostrine per culla'));
    PERFORM insert_category_with_translations('livres-bebe', l1_jouets_id, 2, jsonb_build_object('fr', 'Livres bébé', 'en', 'Baby books', 'ar', 'كتب للرضع', 'de', 'Babybücher', 'es', 'Libros para bebés', 'it', 'Libri bebé'));

    -- Brands
    SELECT insert_category_with_translations(
        'marques-jouets-bebe', l1_jouets_id, 2,
        jsonb_build_object(
            'fr', 'Marques jouets bébé',
            'en', 'Baby toy brands',
            'ar', 'علامات تجارية لألعاب الرضع',
            'de', 'Marken Babyspielzeug',
            'es', 'Marcas de juguetes de bebé',
            'it', 'Marche giochi bebé'
        )
    ) INTO l2_temp_id;

    PERFORM insert_category_with_translations('fisher-price', l2_temp_id, 3, jsonb_build_object('fr', 'Fisher-Price', 'en', 'Fisher-Price', 'ar', 'Fisher-Price', 'de', 'Fisher-Price', 'es', 'Fisher-Price', 'it', 'Fisher-Price'));
    PERFORM insert_category_with_translations('vtech', l2_temp_id, 3, jsonb_build_object('fr', 'VTech', 'en', 'VTech', 'ar', 'VTech', 'de', 'VTech', 'es', 'VTech', 'it', 'VTech'));
    PERFORM insert_category_with_translations('little-tikes', l2_temp_id, 3, jsonb_build_object('fr', 'Little Tikes', 'en', 'Little Tikes', 'ar', 'Little Tikes', 'de', 'Little Tikes', 'es', 'Little Tikes', 'it', 'Little Tikes'));
    PERFORM insert_category_with_translations('lamaze', l2_temp_id, 3, jsonb_build_object('fr', 'Lamaze', 'en', 'Lamaze', 'ar', 'Lamaze', 'de', 'Lamaze', 'es', 'Lamaze', 'it', 'Lamaze'));


    -- ==========================================
    -- 11. Sécurité bébé
    -- ==========================================
    SELECT insert_category_with_translations(
        'securite-bebe', root_id, 1,
        jsonb_build_object(
            'fr', 'Sécurité bébé',
            'en', 'Baby safety',
            'ar', 'سلامة الطفل',
            'de', 'Babysicherheit',
            'es', 'Seguridad del bebé',
            'it', 'Sicurezza bambino'
        )
    ) INTO l1_securite_id;

    PERFORM insert_category_with_translations('barrieres-securite', l1_securite_id, 2, jsonb_build_object('fr', 'Barrières de sécurité', 'en', 'Safety gates', 'ar', 'حواجز أمان', 'de', 'Sicherheitsgitter', 'es', 'Barreras de seguridad', 'it', 'Cancelletti sicurezza'));
    PERFORM insert_category_with_translations('babyphones', l1_securite_id, 2, jsonb_build_object('fr', 'Babyphones', 'en', 'Baby monitors', 'ar', 'مراقب الطفل', 'de', 'Babyphone', 'es', 'Baby monitors', 'it', 'Baby monitor'));
    PERFORM insert_category_with_translations('veilleuses', l1_securite_id, 2, jsonb_build_object('fr', 'Veilleuses', 'en', 'Night lights', 'ar', 'مصابيح ليلية', 'de', 'Nachtlichter', 'es', 'Luz nocturna', 'it', 'Luci notturne'));
    PERFORM insert_category_with_translations('caches-prises', l1_securite_id, 2, jsonb_build_object('fr', 'Caches-prises', 'en', 'Plug covers', 'ar', 'أغطية المقابس', 'de', 'Steckdosenschutz', 'es', 'Protectores de enchufe', 'it', 'Copriprese'));
    PERFORM insert_category_with_translations('harnais-bebe', l1_securite_id, 2, jsonb_build_object('fr', 'Harnais bébé', 'en', 'Safety harnesses', 'ar', 'أحزمة أمان', 'de', 'Sicherheitsgurte', 'es', 'Arneses bebé', 'it', 'Imbracature'));

    -- Brands
    SELECT insert_category_with_translations(
        'marques-babyphones', l1_securite_id, 2,
        jsonb_build_object(
            'fr', 'Marques babyphones',
            'en', 'Baby monitor brands',
            'ar', 'علامات تجارية لمراقبي الأطفال',
            'de', 'Babyphone-Marken',
            'es', 'Marcas de monitores de bebé',
            'it', 'Marche baby monitor'
        )
    ) INTO l2_temp_id;

    PERFORM insert_category_with_translations('philips-avent', l2_temp_id, 3, jsonb_build_object('fr', 'Philips Avent', 'en', 'Philips Avent', 'ar', 'Philips Avent', 'de', 'Philips Avent', 'es', 'Philips Avent', 'it', 'Philips Avent'));
    PERFORM insert_category_with_translations('vtech', l2_temp_id, 3, jsonb_build_object('fr', 'VTech', 'en', 'VTech', 'ar', 'VTech', 'de', 'VTech', 'es', 'VTech', 'it', 'VTech'));
    PERFORM insert_category_with_translations('motorola', l2_temp_id, 3, jsonb_build_object('fr', 'Motorola', 'en', 'Motorola', 'ar', 'Motorola', 'de', 'Motorola', 'es', 'Motorola', 'it', 'Motorola'));
    PERFORM insert_category_with_translations('nuk', l2_temp_id, 3, jsonb_build_object('fr', 'NUK', 'en', 'NUK', 'ar', 'NUK', 'de', 'NUK', 'es', 'NUK', 'it', 'NUK'));


    -- ==========================================
    -- 12. Chambre bébé & déco
    -- ==========================================
    SELECT insert_category_with_translations(
        'chambre-bebe-deco', root_id, 1,
        jsonb_build_object(
            'fr', 'Chambre bébé & déco',
            'en', 'Nursery & decor',
            'ar', 'غرفة الطفل والديكور',
            'de', 'Kinderzimmer & Deko',
            'es', 'Habitación del bebé & deco',
            'it', 'Cameretta & decorazioni'
        )
    ) INTO l1_chambre_id;

    PERFORM insert_category_with_translations('parures-lit-bebe', l1_chambre_id, 2, jsonb_build_object('fr', 'Parures de lit bébé', 'en', 'Crib bedding sets', 'ar', 'أطقم سرير للرضع', 'de', 'Bettwäsche-Sets Baby', 'es', 'Juego de cuna', 'it', 'Set biancheria culla'));
    PERFORM insert_category_with_translations('rideaux-chambre-bebe', l1_chambre_id, 2, jsonb_build_object('fr', 'Rideaux chambre bébé', 'en', 'Nursery curtains', 'ar', 'ستائر غرفة الطفل', 'de', 'Vorhänge Kinderzimmer', 'es', 'Cortinas habitación bebé', 'it', 'Tende cameretta bebé'));
    PERFORM insert_category_with_translations('luminaires-chambre-bebe', l1_chambre_id, 2, jsonb_build_object('fr', 'Luminaires chambre bébé', 'en', 'Nursery lighting', 'ar', 'إنارة غرفة الطفل', 'de', 'Lampen Kinderzimmer', 'es', 'Iluminación habitación bebé', 'it', 'Illuminazione cameretta'));
    PERFORM insert_category_with_translations('rangements-chambre-bebe', l1_chambre_id, 2, jsonb_build_object('fr', 'Rangements chambre bébé', 'en', 'Nursery storage', 'ar', 'تخزين غرفة الطفل', 'de', 'Aufbewahrung Kinderzimmer', 'es', 'Almacenaje habitación bebé', 'it', 'Contenitori/organizzazione'));
    PERFORM insert_category_with_translations('stickers-muraux-bebe', l1_chambre_id, 2, jsonb_build_object('fr', 'Stickers muraux bébé', 'en', 'Nursery wall decals', 'ar', 'ملصقات جدارية للرضع', 'de', 'Wandsticker Baby', 'es', 'Pegatinas pared bebé', 'it', 'Adesivi murali bebé'));


    -- ==========================================
    -- 13. Porte-bébés & écharpes
    -- ==========================================
    SELECT insert_category_with_translations(
        'porte-bebes-echarpes', root_id, 1,
        jsonb_build_object(
            'fr', 'Porte-bébés & écharpes',
            'en', 'Baby carriers & wraps',
            'ar', 'حمّالات وأوشحة الأطفال',
            'de', 'Tragen & Tücher',
            'es', 'Portabebés & fulares',
            'it', 'Marsupi & fasce'
        )
    ) INTO l1_porte_bebes_id;

    PERFORM insert_category_with_translations('echarpes-de-portage', l1_porte_bebes_id, 2, jsonb_build_object('fr', 'Écharpes de portage', 'en', 'Wraps', 'ar', 'أوشحة الحمل', 'de', 'Tragetücher', 'es', 'Fulares porteo', 'it', 'Fasce portabebè'));
    PERFORM insert_category_with_translations('porte-bebes-preformes', l1_porte_bebes_id, 2, jsonb_build_object('fr', 'Porte-bébés préformés', 'en', 'Structured carriers', 'ar', 'حمالات مُشكّلة مسبقًا', 'de', 'Vorgeformte Tragen', 'es', 'Portabebés preformados', 'it', 'Marsupi preformati'));
    PERFORM insert_category_with_translations('mei-tai', l1_porte_bebes_id, 2, jsonb_build_object('fr', 'Mei Tai', 'en', 'Mei Tai', 'ar', 'ماي تاي', 'de', 'Mei Tai', 'es', 'Mei Tai', 'it', 'Mei Tai'));
    PERFORM insert_category_with_translations('slings', l1_porte_bebes_id, 2, jsonb_build_object('fr', 'Slings', 'en', 'Ring slings', 'ar', 'حمالات حلقية', 'de', 'Ringslings', 'es', 'Ring slings', 'it', 'Ring sling'));

    -- Brands
    SELECT insert_category_with_translations(
        'marques-porte-bebes', l1_porte_bebes_id, 2,
        jsonb_build_object(
            'fr', 'Marques porte-bébés',
            'en', 'Carrier brands',
            'ar', 'علامات تجارية لحمالات الأطفال',
            'de', 'Trage-Marken',
            'es', 'Marcas de portabebés',
            'it', 'Marche marsupi'
        )
    ) INTO l2_temp_id;

    PERFORM insert_category_with_translations('babybjorn', l2_temp_id, 3, jsonb_build_object('fr', 'BabyBjörn', 'en', 'BabyBjörn', 'ar', 'BabyBjörn', 'de', 'BabyBjörn', 'es', 'BabyBjörn', 'it', 'BabyBjörn'));
    PERFORM insert_category_with_translations('ergobaby', l2_temp_id, 3, jsonb_build_object('fr', 'Ergobaby', 'en', 'Ergobaby', 'ar', 'Ergobaby', 'de', 'Ergobaby', 'es', 'Ergobaby', 'it', 'Ergobaby'));
    PERFORM insert_category_with_translations('manduca', l2_temp_id, 3, jsonb_build_object('fr', 'Manduca', 'en', 'Manduca', 'ar', 'Manduca', 'de', 'Manduca', 'es', 'Manduca', 'it', 'Manduca'));
    PERFORM insert_category_with_translations('boba', l2_temp_id, 3, jsonb_build_object('fr', 'Boba', 'en', 'Boba', 'ar', 'Boba', 'de', 'Boba', 'es', 'Boba', 'it', 'Boba'));


    -- ==========================================
    -- 14. Sacs à langer
    -- ==========================================
    SELECT insert_category_with_translations(
        'sacs-a-langer', root_id, 1,
        jsonb_build_object(
            'fr', 'Sacs à langer',
            'en', 'Diaper bags',
            'ar', 'حقائب تغيير الأطفال',
            'de', 'Wickeltaschen',
            'es', 'Bolsos cambiadores',
            'it', 'Borse fasciatoio'
        )
    ) INTO l1_sacs_id;

    PERFORM insert_category_with_translations('sacs-classiques', l1_sacs_id, 2, jsonb_build_object('fr', 'Sacs classiques', 'en', 'Classic bags', 'ar', 'حقائب تقليدية', 'de', 'Klassische Taschen', 'es', 'Bolsos clásicos', 'it', 'Borse classiche'));
    PERFORM insert_category_with_translations('sacs-a-dos-a-langer', l1_sacs_id, 2, jsonb_build_object('fr', 'Sacs à dos à langer', 'en', 'Backpack diaper bags', 'ar', 'حقائب ظهر للتغيير', 'de', 'Wickelrucksäcke', 'es', 'Mochilas cambiadoras', 'it', 'Zaini fasciatoio'));
    PERFORM insert_category_with_translations('accessoires-sac-a-langer', l1_sacs_id, 2, jsonb_build_object('fr', 'Accessoires sac à langer', 'en', 'Diaper bag accessories', 'ar', 'إكسسوارات حقيبة تغيير', 'de', 'Zubehör Wickeltasche', 'es', 'Accesorios del bolso cambiador', 'it', 'Accessori borsa fasciatoio'));
    PERFORM insert_category_with_translations('organiseurs-poussette', l1_sacs_id, 2, jsonb_build_object('fr', 'Organiseurs poussette', 'en', 'Stroller organizers', 'ar', 'منظّمات لعربة الأطفال', 'de', 'Kinderwagen-Organizer', 'es', 'Organizadores para cochecito', 'it', 'Organizer per passeggino'));

    -- Brands
    SELECT insert_category_with_translations(
        'marques-sacs-a-langer', l1_sacs_id, 2,
        jsonb_build_object(
            'fr', 'Marques sacs à langer',
            'en', 'Diaper bag brands',
            'ar', 'علامات تجارية لحقائب التغيير',
            'de', 'Wickeltaschen-Marken',
            'es', 'Marcas de bolsos cambiadores',
            'it', 'Marche borse fasciatoio'
        )
    ) INTO l2_temp_id;

    PERFORM insert_category_with_translations('skip-hop', l2_temp_id, 3, jsonb_build_object('fr', 'Skip Hop', 'en', 'Skip Hop', 'ar', 'Skip Hop', 'de', 'Skip Hop', 'es', 'Skip Hop', 'it', 'Skip Hop'));
    PERFORM insert_category_with_translations('lassig', l2_temp_id, 3, jsonb_build_object('fr', 'Lässig', 'en', 'Lässig', 'ar', 'Lässig', 'de', 'Lässig', 'es', 'Lässig', 'it', 'Lässig'));
    PERFORM insert_category_with_translations('babymoov', l2_temp_id, 3, jsonb_build_object('fr', 'Babymoov', 'en', 'Babymoov', 'ar', 'Babymoov', 'de', 'Babymoov', 'es', 'Babymoov', 'it', 'Babymoov'));
    PERFORM insert_category_with_translations('storksak', l2_temp_id, 3, jsonb_build_object('fr', 'Storksak', 'en', 'Storksak', 'ar', 'Storksak', 'de', 'Storksak', 'es', 'Storksak', 'it', 'Storksak'));

END $$;
