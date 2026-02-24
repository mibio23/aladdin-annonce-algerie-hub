-- Migration: Mode & Accessoires (Generated Recursive)
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

    -- Level 0: mode-et-accessoires
    INSERT INTO categories (id, slug, level, name)
    VALUES ('mode-et-accessoires', 'mode-et-accessoires', 0, 'Mode & Accessoires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 0, name = EXCLUDED.name
    RETURNING id INTO root_id;
    PERFORM insert_category_translations('mode-et-accessoires', 'fr', 'Mode & Accessoires');
    PERFORM insert_category_translations('mode-et-accessoires', 'ar', 'الموضة والإكسسوارات');
    PERFORM insert_category_translations('mode-et-accessoires', 'en', 'Fashion & Accessories');
    PERFORM insert_category_translations('mode-et-accessoires', 'de', 'Mode & Accessoires');
    PERFORM insert_category_translations('mode-et-accessoires', 'es', 'Moda y Accesorios');
    PERFORM insert_category_translations('mode-et-accessoires', 'it', 'Moda e Accessori');

        -- Level 1: chaussures
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chaussures', 'chaussures', 1, root_id, 'Chaussures')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('chaussures', 'fr', 'Chaussures');
        PERFORM insert_category_translations('chaussures', 'ar', 'الأحذية');
        PERFORM insert_category_translations('chaussures', 'en', 'Shoes');
        PERFORM insert_category_translations('chaussures', 'de', 'Schuhe');
        PERFORM insert_category_translations('chaussures', 'es', 'Zapatos');
        PERFORM insert_category_translations('chaussures', 'it', 'Scarpe');

            -- Level 2: baskets
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('baskets', 'baskets', 2, l1_id, 'Baskets')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('baskets', 'fr', 'Baskets');
            PERFORM insert_category_translations('baskets', 'ar', 'أحذية رياضية');
            PERFORM insert_category_translations('baskets', 'en', 'Trainers');
            PERFORM insert_category_translations('baskets', 'de', 'Sneaker');
            PERFORM insert_category_translations('baskets', 'es', 'Zapatillas');
            PERFORM insert_category_translations('baskets', 'it', 'Scarpe da ginnastica');

            -- Level 2: sneakers
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sneakers', 'sneakers', 2, l1_id, 'Sneakers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sneakers', 'fr', 'Sneakers');
            PERFORM insert_category_translations('sneakers', 'ar', 'سنيكرز');
            PERFORM insert_category_translations('sneakers', 'en', 'Sneakers');
            PERFORM insert_category_translations('sneakers', 'de', 'Turnschuhe');
            PERFORM insert_category_translations('sneakers', 'es', 'Zapatillas deportivas');
            PERFORM insert_category_translations('sneakers', 'it', 'Sneakers');

            -- Level 2: running
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('running', 'running', 2, l1_id, 'Running')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('running', 'fr', 'Running');
            PERFORM insert_category_translations('running', 'ar', 'الجري');
            PERFORM insert_category_translations('running', 'en', 'Running');
            PERFORM insert_category_translations('running', 'de', 'Laufschuhe');
            PERFORM insert_category_translations('running', 'es', 'Running');
            PERFORM insert_category_translations('running', 'it', 'Scarpe da corsa');

            -- Level 2: lifestyle
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lifestyle', 'lifestyle', 2, l1_id, 'Lifestyle')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lifestyle', 'fr', 'Lifestyle');
            PERFORM insert_category_translations('lifestyle', 'ar', 'لايف ستايل');
            PERFORM insert_category_translations('lifestyle', 'en', 'Lifestyle');
            PERFORM insert_category_translations('lifestyle', 'de', 'Lifestyle');
            PERFORM insert_category_translations('lifestyle', 'es', 'Lifestyle');
            PERFORM insert_category_translations('lifestyle', 'it', 'Lifestyle');

            -- Level 2: montantes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('montantes', 'montantes', 2, l1_id, 'Montantes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('montantes', 'fr', 'Montantes');
            PERFORM insert_category_translations('montantes', 'ar', 'عالية');
            PERFORM insert_category_translations('montantes', 'en', 'High-top');
            PERFORM insert_category_translations('montantes', 'de', 'Hohe Schuhe');
            PERFORM insert_category_translations('montantes', 'es', 'Altas');
            PERFORM insert_category_translations('montantes', 'it', 'Alte');

            -- Level 2: basses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('basses', 'basses', 2, l1_id, 'Basses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('basses', 'fr', 'Basses');
            PERFORM insert_category_translations('basses', 'ar', 'منخفضة');
            PERFORM insert_category_translations('basses', 'en', 'Low-top');
            PERFORM insert_category_translations('basses', 'de', 'Halbschuhe');
            PERFORM insert_category_translations('basses', 'es', 'Bajas');
            PERFORM insert_category_translations('basses', 'it', 'Basse');

            -- Level 2: slip-on
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('slip-on', 'slip-on', 2, l1_id, 'Slip-on')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('slip-on', 'fr', 'Slip-on');
            PERFORM insert_category_translations('slip-on', 'ar', 'بدون أربطة');
            PERFORM insert_category_translations('slip-on', 'en', 'Slip-ons');
            PERFORM insert_category_translations('slip-on', 'de', 'Slip-ons');
            PERFORM insert_category_translations('slip-on', 'es', 'Sin cordones');
            PERFORM insert_category_translations('slip-on', 'it', 'Slip-on');

            -- Level 2: derbies
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('derbies', 'derbies', 2, l1_id, 'Derbies')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('derbies', 'fr', 'Derbies');
            PERFORM insert_category_translations('derbies', 'ar', 'ديربي');
            PERFORM insert_category_translations('derbies', 'en', 'Derby shoes');
            PERFORM insert_category_translations('derbies', 'de', 'Derbys');
            PERFORM insert_category_translations('derbies', 'es', 'Derby');
            PERFORM insert_category_translations('derbies', 'it', 'Derby');

            -- Level 2: richelieu
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('richelieu', 'richelieu', 2, l1_id, 'Richelieu')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('richelieu', 'fr', 'Richelieu');
            PERFORM insert_category_translations('richelieu', 'ar', 'ريشيليو');
            PERFORM insert_category_translations('richelieu', 'en', 'Oxford shoes');
            PERFORM insert_category_translations('richelieu', 'de', 'Oxford');
            PERFORM insert_category_translations('richelieu', 'es', 'Oxford');
            PERFORM insert_category_translations('richelieu', 'it', 'Oxford');

            -- Level 2: mocassins
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mocassins', 'mocassins', 2, l1_id, 'Mocassins')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mocassins', 'fr', 'Mocassins');
            PERFORM insert_category_translations('mocassins', 'ar', 'موكاسين');
            PERFORM insert_category_translations('mocassins', 'en', 'Loafers');
            PERFORM insert_category_translations('mocassins', 'de', 'Mokassins');
            PERFORM insert_category_translations('mocassins', 'es', 'Mocasines');
            PERFORM insert_category_translations('mocassins', 'it', 'Mocassini');

            -- Level 2: escarpins
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('escarpins', 'escarpins', 2, l1_id, 'Escarpins')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('escarpins', 'fr', 'Escarpins');
            PERFORM insert_category_translations('escarpins', 'ar', 'كعب عالي');
            PERFORM insert_category_translations('escarpins', 'en', 'Pumps');
            PERFORM insert_category_translations('escarpins', 'de', 'Pumps');
            PERFORM insert_category_translations('escarpins', 'es', 'Tacones');
            PERFORM insert_category_translations('escarpins', 'it', 'Décolleté');

            -- Level 2: ballerines
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ballerines', 'ballerines', 2, l1_id, 'Ballerines')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ballerines', 'fr', 'Ballerines');
            PERFORM insert_category_translations('ballerines', 'ar', 'باليرينا');
            PERFORM insert_category_translations('ballerines', 'en', 'Ballet flats');
            PERFORM insert_category_translations('ballerines', 'de', 'Ballerinas');
            PERFORM insert_category_translations('ballerines', 'es', 'Bailarinas');
            PERFORM insert_category_translations('ballerines', 'it', 'Ballerine');

            -- Level 2: salomes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('salomes', 'salomes', 2, l1_id, 'Salomés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('salomes', 'fr', 'Salomés');
            PERFORM insert_category_translations('salomes', 'ar', 'ماري جين');
            PERFORM insert_category_translations('salomes', 'en', 'Mary Janes');
            PERFORM insert_category_translations('salomes', 'de', 'Mary Janes');
            PERFORM insert_category_translations('salomes', 'es', 'Mary Janes');
            PERFORM insert_category_translations('salomes', 'it', 'Mary Jane');

            -- Level 2: mules
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mules', 'mules', 2, l1_id, 'Mules')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mules', 'fr', 'Mules');
            PERFORM insert_category_translations('mules', 'ar', 'ميول');
            PERFORM insert_category_translations('mules', 'en', 'Mules');
            PERFORM insert_category_translations('mules', 'de', 'Pantoletten');
            PERFORM insert_category_translations('mules', 'es', 'Mules');
            PERFORM insert_category_translations('mules', 'it', 'Mules');

            -- Level 2: chelsea
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chelsea', 'chelsea', 2, l1_id, 'Chelsea')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chelsea', 'fr', 'Chelsea');
            PERFORM insert_category_translations('chelsea', 'ar', 'تشيلسي');
            PERFORM insert_category_translations('chelsea', 'en', 'Chelsea boots');
            PERFORM insert_category_translations('chelsea', 'de', 'Chelsea Boots');
            PERFORM insert_category_translations('chelsea', 'es', 'Botas Chelsea');
            PERFORM insert_category_translations('chelsea', 'it', 'Chelsea');

            -- Level 2: monk
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('monk', 'monk', 2, l1_id, 'Monk')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('monk', 'fr', 'Monk');
            PERFORM insert_category_translations('monk', 'ar', 'مونك ستراب');
            PERFORM insert_category_translations('monk', 'en', 'Monk strap shoes');
            PERFORM insert_category_translations('monk', 'de', 'Monkstrap');
            PERFORM insert_category_translations('monk', 'es', 'Monk strap');
            PERFORM insert_category_translations('monk', 'it', 'Monk strap');

            -- Level 2: bottes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bottes', 'bottes', 2, l1_id, 'Bottes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bottes', 'fr', 'Bottes');
            PERFORM insert_category_translations('bottes', 'ar', 'أحذية طويلة');
            PERFORM insert_category_translations('bottes', 'en', 'Boots');
            PERFORM insert_category_translations('bottes', 'de', 'Stiefel');
            PERFORM insert_category_translations('bottes', 'es', 'Botas');
            PERFORM insert_category_translations('bottes', 'it', 'Stivali');

            -- Level 2: bottines
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bottines', 'bottines', 2, l1_id, 'Bottines')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bottines', 'fr', 'Bottines');
            PERFORM insert_category_translations('bottines', 'ar', 'بوت قصير');
            PERFORM insert_category_translations('bottines', 'en', 'Ankle boots');
            PERFORM insert_category_translations('bottines', 'de', 'Stiefeletten');
            PERFORM insert_category_translations('bottines', 'es', 'Botines');
            PERFORM insert_category_translations('bottines', 'it', 'Stivaletti');

            -- Level 2: cuissardes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cuissardes', 'cuissardes', 2, l1_id, 'Cuissardes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cuissardes', 'fr', 'Cuissardes');
            PERFORM insert_category_translations('cuissardes', 'ar', 'أحذية فوق الركبة');
            PERFORM insert_category_translations('cuissardes', 'en', 'Thigh-high boots');
            PERFORM insert_category_translations('cuissardes', 'de', 'Overknees');
            PERFORM insert_category_translations('cuissardes', 'es', 'Botas por encima de la rodilla');
            PERFORM insert_category_translations('cuissardes', 'it', 'Cuissardes');

            -- Level 2: cavalieres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cavalieres', 'cavalieres', 2, l1_id, 'Cavalières')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cavalieres', 'fr', 'Cavalières');
            PERFORM insert_category_translations('cavalieres', 'ar', 'أحذية الفروسية');
            PERFORM insert_category_translations('cavalieres', 'en', 'Riding boots');
            PERFORM insert_category_translations('cavalieres', 'de', 'Reitstiefel');
            PERFORM insert_category_translations('cavalieres', 'es', 'Botas de equitación');
            PERFORM insert_category_translations('cavalieres', 'it', 'Stivali da equitazione');

            -- Level 2: pluie
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pluie', 'pluie', 2, l1_id, 'Pluie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pluie', 'fr', 'Pluie');
            PERFORM insert_category_translations('pluie', 'ar', 'أحذية مطر');
            PERFORM insert_category_translations('pluie', 'en', 'Rain boots');
            PERFORM insert_category_translations('pluie', 'de', 'Gummistiefel');
            PERFORM insert_category_translations('pluie', 'es', 'Botas de lluvia');
            PERFORM insert_category_translations('pluie', 'it', 'Stivali da pioggia');

            -- Level 2: fourrees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fourrees', 'fourrees', 2, l1_id, 'Fourrées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fourrees', 'fr', 'Fourrées');
            PERFORM insert_category_translations('fourrees', 'ar', 'مبطنة بالفرو');
            PERFORM insert_category_translations('fourrees', 'en', 'Fur-lined boots');
            PERFORM insert_category_translations('fourrees', 'de', 'Gefütterte Stiefel');
            PERFORM insert_category_translations('fourrees', 'es', 'Botas forradas');
            PERFORM insert_category_translations('fourrees', 'it', 'Foderati in pelliccia');

            -- Level 2: motardes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('motardes', 'motardes', 2, l1_id, 'Motardes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('motardes', 'fr', 'Motardes');
            PERFORM insert_category_translations('motardes', 'ar', 'أحذية دراجات نارية');
            PERFORM insert_category_translations('motardes', 'en', 'Biker boots');
            PERFORM insert_category_translations('motardes', 'de', 'Biker-Boots');
            PERFORM insert_category_translations('motardes', 'es', 'Botas de moto');
            PERFORM insert_category_translations('motardes', 'it', 'Stivali da moto');

            -- Level 2: sandales-plates
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sandales-plates', 'sandales-plates', 2, l1_id, 'Sandales plates')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sandales-plates', 'fr', 'Sandales plates');
            PERFORM insert_category_translations('sandales-plates', 'ar', 'صنادل مسطحة');
            PERFORM insert_category_translations('sandales-plates', 'en', 'Flat sandals');
            PERFORM insert_category_translations('sandales-plates', 'de', 'Flache Sandalen');
            PERFORM insert_category_translations('sandales-plates', 'es', 'Sandalias planas');
            PERFORM insert_category_translations('sandales-plates', 'it', 'Sandali bassi');

            -- Level 2: sandales-compensees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sandales-compensees', 'sandales-compensees', 2, l1_id, 'Sandales compensées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sandales-compensees', 'fr', 'Sandales compensées');
            PERFORM insert_category_translations('sandales-compensees', 'ar', 'صنادل بكعب رافع');
            PERFORM insert_category_translations('sandales-compensees', 'en', 'Wedge sandals');
            PERFORM insert_category_translations('sandales-compensees', 'de', 'Keilsandalen');
            PERFORM insert_category_translations('sandales-compensees', 'es', 'Sandalias con cuña');
            PERFORM insert_category_translations('sandales-compensees', 'it', 'Sandali con zeppa');

            -- Level 2: tongs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tongs', 'tongs', 2, l1_id, 'Tongs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tongs', 'fr', 'Tongs');
            PERFORM insert_category_translations('tongs', 'ar', 'شباشب');
            PERFORM insert_category_translations('tongs', 'en', 'Flip-flops');
            PERFORM insert_category_translations('tongs', 'de', 'Zehentrenner');
            PERFORM insert_category_translations('tongs', 'es', 'Chanclas');
            PERFORM insert_category_translations('tongs', 'it', 'Infradito');

            -- Level 2: nu-pieds
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('nu-pieds', 'nu-pieds', 2, l1_id, 'Nu-pieds')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('nu-pieds', 'fr', 'Nu-pieds');
            PERFORM insert_category_translations('nu-pieds', 'ar', 'صنادل مفتوحة');
            PERFORM insert_category_translations('nu-pieds', 'en', 'Barefoot sandals');
            PERFORM insert_category_translations('nu-pieds', 'de', 'Sandaletten');
            PERFORM insert_category_translations('nu-pieds', 'es', 'Sandalias descalzas');
            PERFORM insert_category_translations('nu-pieds', 'it', 'Sandali aperti');

            -- Level 2: claquettes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('claquettes', 'claquettes', 2, l1_id, 'Claquettes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('claquettes', 'fr', 'Claquettes');
            PERFORM insert_category_translations('claquettes', 'ar', 'سلايد');
            PERFORM insert_category_translations('claquettes', 'en', 'Slides');
            PERFORM insert_category_translations('claquettes', 'de', 'Badelatschen');
            PERFORM insert_category_translations('claquettes', 'es', 'Slides');
            PERFORM insert_category_translations('claquettes', 'it', 'Ciabatte');

            -- Level 2: espadrilles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('espadrilles', 'espadrilles', 2, l1_id, 'Espadrilles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('espadrilles', 'fr', 'Espadrilles');
            PERFORM insert_category_translations('espadrilles', 'ar', 'إسبادريل');
            PERFORM insert_category_translations('espadrilles', 'en', 'Espadrilles');
            PERFORM insert_category_translations('espadrilles', 'de', 'Espadrilles');
            PERFORM insert_category_translations('espadrilles', 'es', 'Alpargatas');
            PERFORM insert_category_translations('espadrilles', 'it', 'Espadrillas');

            -- Level 2: football
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('football', 'football', 2, l1_id, 'Football')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('football', 'fr', 'Football');
            PERFORM insert_category_translations('football', 'ar', 'كرة القدم');
            PERFORM insert_category_translations('football', 'en', 'Football');
            PERFORM insert_category_translations('football', 'de', 'Fußballschuhe');
            PERFORM insert_category_translations('football', 'es', 'Fútbol');
            PERFORM insert_category_translations('football', 'it', 'Calcio');

            -- Level 2: futsal
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('futsal', 'futsal', 2, l1_id, 'Futsal')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('futsal', 'fr', 'Futsal');
            PERFORM insert_category_translations('futsal', 'ar', 'فوتسال');
            PERFORM insert_category_translations('futsal', 'en', 'Futsal');
            PERFORM insert_category_translations('futsal', 'de', 'Hallenfußballschuhe');
            PERFORM insert_category_translations('futsal', 'es', 'Futsal');
            PERFORM insert_category_translations('futsal', 'it', 'Futsal');

            -- Level 2: basketball
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('basketball', 'basketball', 2, l1_id, 'Basketball')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('basketball', 'fr', 'Basketball');
            PERFORM insert_category_translations('basketball', 'ar', 'كرة السلة');
            PERFORM insert_category_translations('basketball', 'en', 'Basketball');
            PERFORM insert_category_translations('basketball', 'de', 'Basketballschuhe');
            PERFORM insert_category_translations('basketball', 'es', 'Baloncesto');
            PERFORM insert_category_translations('basketball', 'it', 'Basket');

            -- Level 2: tennis-chaussures
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tennis-chaussures', 'tennis-chaussures', 2, l1_id, 'Tennis')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tennis-chaussures', 'fr', 'Tennis');
            PERFORM insert_category_translations('tennis-chaussures', 'ar', 'تنس');
            PERFORM insert_category_translations('tennis-chaussures', 'en', 'Tennis');
            PERFORM insert_category_translations('tennis-chaussures', 'de', 'Tennisschuhe');
            PERFORM insert_category_translations('tennis-chaussures', 'es', 'Tenis');
            PERFORM insert_category_translations('tennis-chaussures', 'it', 'Tennis');

            -- Level 2: golf-chaussures
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('golf-chaussures', 'golf-chaussures', 2, l1_id, 'Golf')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('golf-chaussures', 'fr', 'Golf');
            PERFORM insert_category_translations('golf-chaussures', 'ar', 'جولف');
            PERFORM insert_category_translations('golf-chaussures', 'en', 'Golf');
            PERFORM insert_category_translations('golf-chaussures', 'de', 'Golfschuhe');
            PERFORM insert_category_translations('golf-chaussures', 'es', 'Golf');
            PERFORM insert_category_translations('golf-chaussures', 'it', 'Golf');

            -- Level 2: running-trail
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('running-trail', 'running-trail', 2, l1_id, 'Running trail')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('running-trail', 'fr', 'Running trail');
            PERFORM insert_category_translations('running-trail', 'ar', 'الجري على المسارات');
            PERFORM insert_category_translations('running-trail', 'en', 'Trail running');
            PERFORM insert_category_translations('running-trail', 'de', 'Trailrunning-Schuhe');
            PERFORM insert_category_translations('running-trail', 'es', 'Trail running');
            PERFORM insert_category_translations('running-trail', 'it', 'Trail running');

            -- Level 2: skateboard
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('skateboard', 'skateboard', 2, l1_id, 'Skateboard')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('skateboard', 'fr', 'Skateboard');
            PERFORM insert_category_translations('skateboard', 'ar', 'تزلج لوحي');
            PERFORM insert_category_translations('skateboard', 'en', 'Skateboard');
            PERFORM insert_category_translations('skateboard', 'de', 'Skateschuhe');
            PERFORM insert_category_translations('skateboard', 'es', 'Skateboard');
            PERFORM insert_category_translations('skateboard', 'it', 'Skateboard');

            -- Level 2: fitness
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fitness', 'fitness', 2, l1_id, 'Fitness')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fitness', 'fr', 'Fitness');
            PERFORM insert_category_translations('fitness', 'ar', 'لياقة بدنية');
            PERFORM insert_category_translations('fitness', 'en', 'Fitness');
            PERFORM insert_category_translations('fitness', 'de', 'Fitnessschuhe');
            PERFORM insert_category_translations('fitness', 'es', 'Fitness');
            PERFORM insert_category_translations('fitness', 'it', 'Fitness');

            -- Level 2: premiers-pas
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('premiers-pas', 'premiers-pas', 2, l1_id, 'Premiers pas')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('premiers-pas', 'fr', 'Premiers pas');
            PERFORM insert_category_translations('premiers-pas', 'ar', 'خطوات أولى');
            PERFORM insert_category_translations('premiers-pas', 'en', 'First steps');
            PERFORM insert_category_translations('premiers-pas', 'de', 'Lauflernschuhe');
            PERFORM insert_category_translations('premiers-pas', 'es', 'Primeros pasos');
            PERFORM insert_category_translations('premiers-pas', 'it', 'Primi passi');

            -- Level 2: ecole
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ecole', 'ecole', 2, l1_id, 'École')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ecole', 'fr', 'École');
            PERFORM insert_category_translations('ecole', 'ar', 'المدرسة');
            PERFORM insert_category_translations('ecole', 'en', 'School');
            PERFORM insert_category_translations('ecole', 'de', 'Schulschuhe');
            PERFORM insert_category_translations('ecole', 'es', 'Escuela');
            PERFORM insert_category_translations('ecole', 'it', 'Scuola');

            -- Level 2: lumineuses-led
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lumineuses-led', 'lumineuses-led', 2, l1_id, 'Lumineuses LED')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lumineuses-led', 'fr', 'Lumineuses LED');
            PERFORM insert_category_translations('lumineuses-led', 'ar', 'LED مضيئة');
            PERFORM insert_category_translations('lumineuses-led', 'en', 'Light-up LED');
            PERFORM insert_category_translations('lumineuses-led', 'de', 'LED-Schuhe');
            PERFORM insert_category_translations('lumineuses-led', 'es', 'LED luminosas');
            PERFORM insert_category_translations('lumineuses-led', 'it', 'LED luminosi');

        -- Level 1: bijoux-montres
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bijoux-montres', 'bijoux-montres', 1, root_id, 'Bijoux & Montres')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('bijoux-montres', 'fr', 'Bijoux & Montres');
        PERFORM insert_category_translations('bijoux-montres', 'ar', 'المجوهرات والساعات');
        PERFORM insert_category_translations('bijoux-montres', 'en', 'Jewelry & Watches');
        PERFORM insert_category_translations('bijoux-montres', 'de', 'Schmuck & Uhren');
        PERFORM insert_category_translations('bijoux-montres', 'es', 'Joyas y Relojes');
        PERFORM insert_category_translations('bijoux-montres', 'it', 'Gioielli e Orologi');

            -- Level 2: automatique
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('automatique', 'automatique', 2, l1_id, 'Automatique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('automatique', 'fr', 'Automatique');
            PERFORM insert_category_translations('automatique', 'ar', 'أوتوماتيكي');
            PERFORM insert_category_translations('automatique', 'en', 'Automatic');
            PERFORM insert_category_translations('automatique', 'de', 'Automatikuhren');
            PERFORM insert_category_translations('automatique', 'es', 'Automático');
            PERFORM insert_category_translations('automatique', 'it', 'Automatico');

            -- Level 2: quartz
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('quartz', 'quartz', 2, l1_id, 'Quartz')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('quartz', 'fr', 'Quartz');
            PERFORM insert_category_translations('quartz', 'ar', 'كوارتز');
            PERFORM insert_category_translations('quartz', 'en', 'Quartz');
            PERFORM insert_category_translations('quartz', 'de', 'Quarzuhren');
            PERFORM insert_category_translations('quartz', 'es', 'Cuarzo');
            PERFORM insert_category_translations('quartz', 'it', 'Quarzo');

            -- Level 2: connectee
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('connectee', 'connectee', 2, l1_id, 'Connectée')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('connectee', 'fr', 'Connectée');
            PERFORM insert_category_translations('connectee', 'ar', 'ساعة ذكية');
            PERFORM insert_category_translations('connectee', 'en', 'Smartwatch');
            PERFORM insert_category_translations('connectee', 'de', 'Smartwatches');
            PERFORM insert_category_translations('connectee', 'es', 'Reloj inteligente');
            PERFORM insert_category_translations('connectee', 'it', 'Smartwatch');

            -- Level 2: chronographe
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chronographe', 'chronographe', 2, l1_id, 'Chronographe')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chronographe', 'fr', 'Chronographe');
            PERFORM insert_category_translations('chronographe', 'ar', 'كرونوغراف');
            PERFORM insert_category_translations('chronographe', 'en', 'Chronograph');
            PERFORM insert_category_translations('chronographe', 'de', 'Chronographen');
            PERFORM insert_category_translations('chronographe', 'es', 'Cronógrafo');
            PERFORM insert_category_translations('chronographe', 'it', 'Cronografo');

            -- Level 2: plongee
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('plongee', 'plongee', 2, l1_id, 'Plongée')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('plongee', 'fr', 'Plongée');
            PERFORM insert_category_translations('plongee', 'ar', 'غطس');
            PERFORM insert_category_translations('plongee', 'en', 'Diving');
            PERFORM insert_category_translations('plongee', 'de', 'Taucheruhren');
            PERFORM insert_category_translations('plongee', 'es', 'Buceo');
            PERFORM insert_category_translations('plongee', 'it', 'Subacqueo');

            -- Level 2: sport-gps
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sport-gps', 'sport-gps', 2, l1_id, 'Sport GPS')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sport-gps', 'fr', 'Sport GPS');
            PERFORM insert_category_translations('sport-gps', 'ar', 'GPS رياضي');
            PERFORM insert_category_translations('sport-gps', 'en', 'Sports GPS');
            PERFORM insert_category_translations('sport-gps', 'de', 'GPS-Sportuhren');
            PERFORM insert_category_translations('sport-gps', 'es', 'GPS deportivo');
            PERFORM insert_category_translations('sport-gps', 'it', 'Sport GPS');

            -- Level 2: bracelet-cuir
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bracelet-cuir', 'bracelet-cuir', 2, l1_id, 'Bracelet cuir')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bracelet-cuir', 'fr', 'Bracelet cuir');
            PERFORM insert_category_translations('bracelet-cuir', 'ar', 'سوار جلد');
            PERFORM insert_category_translations('bracelet-cuir', 'en', 'Leather strap');
            PERFORM insert_category_translations('bracelet-cuir', 'de', 'Lederarmband');
            PERFORM insert_category_translations('bracelet-cuir', 'es', 'Correa de cuero');
            PERFORM insert_category_translations('bracelet-cuir', 'it', 'Cinturino in pelle');

            -- Level 2: bracelet-acier
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bracelet-acier', 'bracelet-acier', 2, l1_id, 'Bracelet acier')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bracelet-acier', 'fr', 'Bracelet acier');
            PERFORM insert_category_translations('bracelet-acier', 'ar', 'سوار فولاذ');
            PERFORM insert_category_translations('bracelet-acier', 'en', 'Steel strap');
            PERFORM insert_category_translations('bracelet-acier', 'de', 'Edelstahlarmband');
            PERFORM insert_category_translations('bracelet-acier', 'es', 'Correa de acero');
            PERFORM insert_category_translations('bracelet-acier', 'it', 'Cinturino in acciaio');

            -- Level 2: bracelet-silicone
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bracelet-silicone', 'bracelet-silicone', 2, l1_id, 'Bracelet silicone')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bracelet-silicone', 'fr', 'Bracelet silicone');
            PERFORM insert_category_translations('bracelet-silicone', 'ar', 'سوار سيليكون');
            PERFORM insert_category_translations('bracelet-silicone', 'en', 'Silicone strap');
            PERFORM insert_category_translations('bracelet-silicone', 'de', 'Silikonarmband');
            PERFORM insert_category_translations('bracelet-silicone', 'es', 'Correa de silicona');
            PERFORM insert_category_translations('bracelet-silicone', 'it', 'Cinturino in silicone');

            -- Level 2: chaines-fines
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chaines-fines', 'chaines-fines', 2, l1_id, 'Chaînes fines')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chaines-fines', 'fr', 'Chaînes fines');
            PERFORM insert_category_translations('chaines-fines', 'ar', 'سلاسل رفيعة');
            PERFORM insert_category_translations('chaines-fines', 'en', 'Fine chains');
            PERFORM insert_category_translations('chaines-fines', 'de', 'Feine Ketten');
            PERFORM insert_category_translations('chaines-fines', 'es', 'Cadenas finas');
            PERFORM insert_category_translations('chaines-fines', 'it', 'Catene sottili');

            -- Level 2: ras-de-cou
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ras-de-cou', 'ras-de-cou', 2, l1_id, 'Ras-de-cou')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ras-de-cou', 'fr', 'Ras-de-cou');
            PERFORM insert_category_translations('ras-de-cou', 'ar', 'تشوكر');
            PERFORM insert_category_translations('ras-de-cou', 'en', 'Choker');
            PERFORM insert_category_translations('ras-de-cou', 'de', 'Choker');
            PERFORM insert_category_translations('ras-de-cou', 'es', 'Choker');
            PERFORM insert_category_translations('ras-de-cou', 'it', 'Choker');

            -- Level 2: sautoirs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sautoirs', 'sautoirs', 2, l1_id, 'Sautoirs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sautoirs', 'fr', 'Sautoirs');
            PERFORM insert_category_translations('sautoirs', 'ar', 'قلادات طويلة');
            PERFORM insert_category_translations('sautoirs', 'en', 'Long necklaces');
            PERFORM insert_category_translations('sautoirs', 'de', 'Lange Ketten');
            PERFORM insert_category_translations('sautoirs', 'es', 'Collares largos');
            PERFORM insert_category_translations('sautoirs', 'it', 'Collane lunghe');

            -- Level 2: multi-rangs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('multi-rangs', 'multi-rangs', 2, l1_id, 'Multi-rangs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('multi-rangs', 'fr', 'Multi-rangs');
            PERFORM insert_category_translations('multi-rangs', 'ar', 'متعددة الطبقات');
            PERFORM insert_category_translations('multi-rangs', 'en', 'Multi-strand');
            PERFORM insert_category_translations('multi-rangs', 'de', 'Mehrreihig');
            PERFORM insert_category_translations('multi-rangs', 'es', 'Multicapas');
            PERFORM insert_category_translations('multi-rangs', 'it', 'Multi-strato');

            -- Level 2: medailles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('medailles', 'medailles', 2, l1_id, 'Médailles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('medailles', 'fr', 'Médailles');
            PERFORM insert_category_translations('medailles', 'ar', 'ميداليات');
            PERFORM insert_category_translations('medailles', 'en', 'Medallions');
            PERFORM insert_category_translations('medailles', 'de', 'Medaillons');
            PERFORM insert_category_translations('medailles', 'es', 'Medallas');
            PERFORM insert_category_translations('medailles', 'it', 'Medaglie');

            -- Level 2: croix
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('croix', 'croix', 2, l1_id, 'Croix')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('croix', 'fr', 'Croix');
            PERFORM insert_category_translations('croix', 'ar', 'صلبان');
            PERFORM insert_category_translations('croix', 'en', 'Crosses');
            PERFORM insert_category_translations('croix', 'de', 'Kreuze');
            PERFORM insert_category_translations('croix', 'es', 'Cruces');
            PERFORM insert_category_translations('croix', 'it', 'Croci');

            -- Level 2: initiales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('initiales', 'initiales', 2, l1_id, 'Initiales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('initiales', 'fr', 'Initiales');
            PERFORM insert_category_translations('initiales', 'ar', 'حروف أولية');
            PERFORM insert_category_translations('initiales', 'en', 'Initials');
            PERFORM insert_category_translations('initiales', 'de', 'Initialen');
            PERFORM insert_category_translations('initiales', 'es', 'Iniciales');
            PERFORM insert_category_translations('initiales', 'it', 'Iniziali');

            -- Level 2: pierres-precieuses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pierres-precieuses', 'pierres-precieuses', 2, l1_id, 'Pierres précieuses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pierres-precieuses', 'fr', 'Pierres précieuses');
            PERFORM insert_category_translations('pierres-precieuses', 'ar', 'أحجار كريمة');
            PERFORM insert_category_translations('pierres-precieuses', 'en', 'Precious stones');
            PERFORM insert_category_translations('pierres-precieuses', 'de', 'Edelsteine');
            PERFORM insert_category_translations('pierres-precieuses', 'es', 'Piedras preciosas');
            PERFORM insert_category_translations('pierres-precieuses', 'it', 'Pietre preziose');

            -- Level 2: pierres-semi-precieuses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pierres-semi-precieuses', 'pierres-semi-precieuses', 2, l1_id, 'Pierres semi-précieuses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pierres-semi-precieuses', 'fr', 'Pierres semi-précieuses');
            PERFORM insert_category_translations('pierres-semi-precieuses', 'ar', 'أحجار شبه كريمة');
            PERFORM insert_category_translations('pierres-semi-precieuses', 'en', 'Semi-precious stones');
            PERFORM insert_category_translations('pierres-semi-precieuses', 'de', 'Halbedelsteine');
            PERFORM insert_category_translations('pierres-semi-precieuses', 'es', 'Piedras semipreciosas');
            PERFORM insert_category_translations('pierres-semi-precieuses', 'it', 'Pietre semi-preziose');

            -- Level 2: perles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('perles', 'perles', 2, l1_id, 'Perles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('perles', 'fr', 'Perles');
            PERFORM insert_category_translations('perles', 'ar', 'لؤلؤ');
            PERFORM insert_category_translations('perles', 'en', 'Pearls');
            PERFORM insert_category_translations('perles', 'de', 'Perlen');
            PERFORM insert_category_translations('perles', 'es', 'Perlas');
            PERFORM insert_category_translations('perles', 'it', 'Perle');

            -- Level 2: or
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('or', 'or', 2, l1_id, 'Or')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('or', 'fr', 'Or');
            PERFORM insert_category_translations('or', 'ar', 'ذهب');
            PERFORM insert_category_translations('or', 'en', 'Gold');
            PERFORM insert_category_translations('or', 'de', 'Gold');
            PERFORM insert_category_translations('or', 'es', 'Oro');
            PERFORM insert_category_translations('or', 'it', 'Oro');

            -- Level 2: argent
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('argent', 'argent', 2, l1_id, 'Argent')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('argent', 'fr', 'Argent');
            PERFORM insert_category_translations('argent', 'ar', 'فضة');
            PERFORM insert_category_translations('argent', 'en', 'Silver');
            PERFORM insert_category_translations('argent', 'de', 'Silber');
            PERFORM insert_category_translations('argent', 'es', 'Plata');
            PERFORM insert_category_translations('argent', 'it', 'Argento');

            -- Level 2: vermeil
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vermeil', 'vermeil', 2, l1_id, 'Vermeil')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('vermeil', 'fr', 'Vermeil');
            PERFORM insert_category_translations('vermeil', 'ar', 'فيرميل');
            PERFORM insert_category_translations('vermeil', 'en', 'Vermeil');
            PERFORM insert_category_translations('vermeil', 'de', 'Vergoldetes Silber');
            PERFORM insert_category_translations('vermeil', 'es', 'Vermeil');
            PERFORM insert_category_translations('vermeil', 'it', 'Vermeil');

            -- Level 2: puces
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('puces', 'puces', 2, l1_id, 'Puces')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('puces', 'fr', 'Puces');
            PERFORM insert_category_translations('puces', 'ar', 'أقراط صغيرة');
            PERFORM insert_category_translations('puces', 'en', 'Studs');
            PERFORM insert_category_translations('puces', 'de', 'Ohrstecker');
            PERFORM insert_category_translations('puces', 'es', 'Pendientes pequeños');
            PERFORM insert_category_translations('puces', 'it', 'Orecchini a perno');

            -- Level 2: creoles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('creoles', 'creoles', 2, l1_id, 'Créoles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('creoles', 'fr', 'Créoles');
            PERFORM insert_category_translations('creoles', 'ar', 'حلقات');
            PERFORM insert_category_translations('creoles', 'en', 'Hoops');
            PERFORM insert_category_translations('creoles', 'de', 'Creolen');
            PERFORM insert_category_translations('creoles', 'es', 'Aros');
            PERFORM insert_category_translations('creoles', 'it', 'Cerchi');

            -- Level 2: pendantes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pendantes', 'pendantes', 2, l1_id, 'Pendantes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pendantes', 'fr', 'Pendantes');
            PERFORM insert_category_translations('pendantes', 'ar', 'أقراط متدلية');
            PERFORM insert_category_translations('pendantes', 'en', 'Drop earrings');
            PERFORM insert_category_translations('pendantes', 'de', 'Ohrhänger');
            PERFORM insert_category_translations('pendantes', 'es', 'Pendientes colgantes');
            PERFORM insert_category_translations('pendantes', 'it', 'Pendenti');

            -- Level 2: clips-boucles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('clips-boucles', 'clips-boucles', 2, l1_id, 'Clips')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('clips-boucles', 'fr', 'Clips');
            PERFORM insert_category_translations('clips-boucles', 'ar', 'أقراط بكليبس');
            PERFORM insert_category_translations('clips-boucles', 'en', 'Clip-ons');
            PERFORM insert_category_translations('clips-boucles', 'de', 'Ohrclips');
            PERFORM insert_category_translations('clips-boucles', 'es', 'Pendientes de clip');
            PERFORM insert_category_translations('clips-boucles', 'it', 'Clip');

            -- Level 2: bracelets-chaine
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bracelets-chaine', 'bracelets-chaine', 2, l1_id, 'Bracelets chaîne')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bracelets-chaine', 'fr', 'Bracelets chaîne');
            PERFORM insert_category_translations('bracelets-chaine', 'ar', 'أساور سلسلة');
            PERFORM insert_category_translations('bracelets-chaine', 'en', 'Chain bracelets');
            PERFORM insert_category_translations('bracelets-chaine', 'de', 'Kettenarmbänder');
            PERFORM insert_category_translations('bracelets-chaine', 'es', 'Pulseras de cadena');
            PERFORM insert_category_translations('bracelets-chaine', 'it', 'Bracciali a catena');

            -- Level 2: gourmette
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gourmette', 'gourmette', 2, l1_id, 'Gourmette')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gourmette', 'fr', 'Gourmette');
            PERFORM insert_category_translations('gourmette', 'ar', 'غورميت');
            PERFORM insert_category_translations('gourmette', 'en', 'ID bracelets');
            PERFORM insert_category_translations('gourmette', 'de', 'Identitätsarmbänder');
            PERFORM insert_category_translations('gourmette', 'es', 'Pulsera identificativa');
            PERFORM insert_category_translations('gourmette', 'it', 'Gourmette');

            -- Level 2: joncs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('joncs', 'joncs', 2, l1_id, 'Joncs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('joncs', 'fr', 'Joncs');
            PERFORM insert_category_translations('joncs', 'ar', 'أساور صلبة');
            PERFORM insert_category_translations('joncs', 'en', 'Bangles');
            PERFORM insert_category_translations('joncs', 'de', 'Armreifen');
            PERFORM insert_category_translations('joncs', 'es', 'Brazaletes rígidos');
            PERFORM insert_category_translations('joncs', 'it', 'Bracciali rigidi');

            -- Level 2: manchettes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('manchettes', 'manchettes', 2, l1_id, 'Manchettes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('manchettes', 'fr', 'Manchettes');
            PERFORM insert_category_translations('manchettes', 'ar', 'أساور عريضة');
            PERFORM insert_category_translations('manchettes', 'en', 'Cuffs');
            PERFORM insert_category_translations('manchettes', 'de', 'Manschettenarmbänder');
            PERFORM insert_category_translations('manchettes', 'es', 'Brazaletes anchos');
            PERFORM insert_category_translations('manchettes', 'it', 'Cuff');

            -- Level 2: tennis-bijoux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tennis-bijoux', 'tennis-bijoux', 2, l1_id, 'Tennis')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tennis-bijoux', 'fr', 'Tennis');
            PERFORM insert_category_translations('tennis-bijoux', 'ar', 'أساور تنس');
            PERFORM insert_category_translations('tennis-bijoux', 'en', 'Tennis bracelets');
            PERFORM insert_category_translations('tennis-bijoux', 'de', 'Tennisarmbänder');
            PERFORM insert_category_translations('tennis-bijoux', 'es', 'Pulseras tenis');
            PERFORM insert_category_translations('tennis-bijoux', 'it', 'Bracciali tennis');

            -- Level 2: perles-bracelets
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('perles-bracelets', 'perles-bracelets', 2, l1_id, 'Perles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('perles-bracelets', 'fr', 'Perles');
            PERFORM insert_category_translations('perles-bracelets', 'ar', 'أساور لؤلؤ');
            PERFORM insert_category_translations('perles-bracelets', 'en', 'Pearl bracelets');
            PERFORM insert_category_translations('perles-bracelets', 'de', 'Perlenarmbänder');
            PERFORM insert_category_translations('perles-bracelets', 'es', 'Pulseras de perlas');
            PERFORM insert_category_translations('perles-bracelets', 'it', 'Bracciali di perle');

            -- Level 2: cuir-tresse
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cuir-tresse', 'cuir-tresse', 2, l1_id, 'Cuir tressé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cuir-tresse', 'fr', 'Cuir tressé');
            PERFORM insert_category_translations('cuir-tresse', 'ar', 'جلد مضفر');
            PERFORM insert_category_translations('cuir-tresse', 'en', 'Braided leather');
            PERFORM insert_category_translations('cuir-tresse', 'de', 'Geflochtenes Leder');
            PERFORM insert_category_translations('cuir-tresse', 'es', 'Cuero trenzado');
            PERFORM insert_category_translations('cuir-tresse', 'it', 'Pelle intrecciata');

            -- Level 2: charms
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('charms', 'charms', 2, l1_id, 'Charms')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('charms', 'fr', 'Charms');
            PERFORM insert_category_translations('charms', 'ar', 'تعليقات');
            PERFORM insert_category_translations('charms', 'en', 'Charms');
            PERFORM insert_category_translations('charms', 'de', 'Charms');
            PERFORM insert_category_translations('charms', 'es', 'Charms');
            PERFORM insert_category_translations('charms', 'it', 'Charm');

            -- Level 2: alliance
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('alliance', 'alliance', 2, l1_id, 'Alliance')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('alliance', 'fr', 'Alliance');
            PERFORM insert_category_translations('alliance', 'ar', 'خاتم زواج');
            PERFORM insert_category_translations('alliance', 'en', 'Wedding band');
            PERFORM insert_category_translations('alliance', 'de', 'Eheringe');
            PERFORM insert_category_translations('alliance', 'es', 'Alianza');
            PERFORM insert_category_translations('alliance', 'it', 'Fede nuziale');

            -- Level 2: solitaire
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('solitaire', 'solitaire', 2, l1_id, 'Solitaire')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('solitaire', 'fr', 'Solitaire');
            PERFORM insert_category_translations('solitaire', 'ar', 'سوليتير');
            PERFORM insert_category_translations('solitaire', 'en', 'Solitaire');
            PERFORM insert_category_translations('solitaire', 'de', 'Solitärringe');
            PERFORM insert_category_translations('solitaire', 'es', 'Solitaire');
            PERFORM insert_category_translations('solitaire', 'it', 'Solitaire');

            -- Level 2: chevaliere
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chevaliere', 'chevaliere', 2, l1_id, 'Chevalière')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chevaliere', 'fr', 'Chevalière');
            PERFORM insert_category_translations('chevaliere', 'ar', 'خاتم ختم');
            PERFORM insert_category_translations('chevaliere', 'en', 'Signet ring');
            PERFORM insert_category_translations('chevaliere', 'de', 'Siegelringe');
            PERFORM insert_category_translations('chevaliere', 'es', 'Anillo sello');
            PERFORM insert_category_translations('chevaliere', 'it', 'Anello con sigillo');

            -- Level 2: empilables
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('empilables', 'empilables', 2, l1_id, 'Empilables')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('empilables', 'fr', 'Empilables');
            PERFORM insert_category_translations('empilables', 'ar', 'قابلة للتكديس');
            PERFORM insert_category_translations('empilables', 'en', 'Stackable');
            PERFORM insert_category_translations('empilables', 'de', 'Stapelringe');
            PERFORM insert_category_translations('empilables', 'es', 'Apilables');
            PERFORM insert_category_translations('empilables', 'it', 'Impilabili');

            -- Level 2: midi-bagues
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('midi-bagues', 'midi-bagues', 2, l1_id, 'Midi')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('midi-bagues', 'fr', 'Midi');
            PERFORM insert_category_translations('midi-bagues', 'ar', 'خواتم ميدي');
            PERFORM insert_category_translations('midi-bagues', 'en', 'Midi rings');
            PERFORM insert_category_translations('midi-bagues', 'de', 'Midi-Ringe');
            PERFORM insert_category_translations('midi-bagues', 'es', 'Anillos midi');
            PERFORM insert_category_translations('midi-bagues', 'it', 'Anelli midi');

            -- Level 2: cocktail-bagues
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cocktail-bagues', 'cocktail-bagues', 2, l1_id, 'Cocktail')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cocktail-bagues', 'fr', 'Cocktail');
            PERFORM insert_category_translations('cocktail-bagues', 'ar', 'خواتم كوكتيل');
            PERFORM insert_category_translations('cocktail-bagues', 'en', 'Cocktail rings');
            PERFORM insert_category_translations('cocktail-bagues', 'de', 'Cocktailringe');
            PERFORM insert_category_translations('cocktail-bagues', 'es', 'Anillos de cóctel');
            PERFORM insert_category_translations('cocktail-bagues', 'it', 'Anelli cocktail');

            -- Level 2: fantaisie
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fantaisie', 'fantaisie', 2, l1_id, 'Fantaisie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fantaisie', 'fr', 'Fantaisie');
            PERFORM insert_category_translations('fantaisie', 'ar', 'فانتازيا');
            PERFORM insert_category_translations('fantaisie', 'en', 'Fashion jewelry');
            PERFORM insert_category_translations('fantaisie', 'de', 'Modeschmuck');
            PERFORM insert_category_translations('fantaisie', 'es', 'Bisutería');
            PERFORM insert_category_translations('fantaisie', 'it', 'Fantasia');

            -- Level 2: ethnique
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ethnique', 'ethnique', 2, l1_id, 'Ethnique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ethnique', 'fr', 'Ethnique');
            PERFORM insert_category_translations('ethnique', 'ar', 'عرقي');
            PERFORM insert_category_translations('ethnique', 'en', 'Ethnic');
            PERFORM insert_category_translations('ethnique', 'de', 'Ethno-Schmuck');
            PERFORM insert_category_translations('ethnique', 'es', 'Étnico');
            PERFORM insert_category_translations('ethnique', 'it', 'Etnico');

            -- Level 2: minimaliste
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('minimaliste', 'minimaliste', 2, l1_id, 'Minimaliste')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('minimaliste', 'fr', 'Minimaliste');
            PERFORM insert_category_translations('minimaliste', 'ar', 'بسيط');
            PERFORM insert_category_translations('minimaliste', 'en', 'Minimalist');
            PERFORM insert_category_translations('minimaliste', 'de', 'Minimalistisch');
            PERFORM insert_category_translations('minimaliste', 'es', 'Minimalista');
            PERFORM insert_category_translations('minimaliste', 'it', 'Minimalista');

        -- Level 1: lunettes
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lunettes', 'lunettes', 1, root_id, 'Lunettes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('lunettes', 'fr', 'Lunettes');
        PERFORM insert_category_translations('lunettes', 'ar', 'نظارات');
        PERFORM insert_category_translations('lunettes', 'en', 'Glasses');
        PERFORM insert_category_translations('lunettes', 'de', 'Brillen');
        PERFORM insert_category_translations('lunettes', 'es', 'Gafas');
        PERFORM insert_category_translations('lunettes', 'it', 'Occhiali');

            -- Level 2: aviateur
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('aviateur', 'aviateur', 2, l1_id, 'Aviateur')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('aviateur', 'fr', 'Aviateur');
            PERFORM insert_category_translations('aviateur', 'ar', 'طيار');
            PERFORM insert_category_translations('aviateur', 'en', 'Aviator');
            PERFORM insert_category_translations('aviateur', 'de', 'Pilotenbrille');
            PERFORM insert_category_translations('aviateur', 'es', 'Aviador');
            PERFORM insert_category_translations('aviateur', 'it', 'Aviatore');

            -- Level 2: wayfarer
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('wayfarer', 'wayfarer', 2, l1_id, 'Wayfarer')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('wayfarer', 'fr', 'Wayfarer');
            PERFORM insert_category_translations('wayfarer', 'ar', 'وايفيرر');
            PERFORM insert_category_translations('wayfarer', 'en', 'Wayfarer');
            PERFORM insert_category_translations('wayfarer', 'de', 'Wayfarer');
            PERFORM insert_category_translations('wayfarer', 'es', 'Wayfarer');
            PERFORM insert_category_translations('wayfarer', 'it', 'Wayfarer');

            -- Level 2: cat-eye
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cat-eye', 'cat-eye', 2, l1_id, 'Cat-eye')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cat-eye', 'fr', 'Cat-eye');
            PERFORM insert_category_translations('cat-eye', 'ar', 'عين القطة');
            PERFORM insert_category_translations('cat-eye', 'en', 'Cat-eye');
            PERFORM insert_category_translations('cat-eye', 'de', 'Cat-Eye');
            PERFORM insert_category_translations('cat-eye', 'es', 'Cat-eye');
            PERFORM insert_category_translations('cat-eye', 'it', 'Cat-eye');

            -- Level 2: rondes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('rondes', 'rondes', 2, l1_id, 'Rondes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('rondes', 'fr', 'Rondes');
            PERFORM insert_category_translations('rondes', 'ar', 'مستديرة');
            PERFORM insert_category_translations('rondes', 'en', 'Round');
            PERFORM insert_category_translations('rondes', 'de', 'Runde Brillen');
            PERFORM insert_category_translations('rondes', 'es', 'Redondas');
            PERFORM insert_category_translations('rondes', 'it', 'Tonde');

            -- Level 2: masque-sport
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('masque-sport', 'masque-sport', 2, l1_id, 'Masque sport')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('masque-sport', 'fr', 'Masque sport');
            PERFORM insert_category_translations('masque-sport', 'ar', 'نظارات رياضية');
            PERFORM insert_category_translations('masque-sport', 'en', 'Sport mask');
            PERFORM insert_category_translations('masque-sport', 'de', 'Sportmasken');
            PERFORM insert_category_translations('masque-sport', 'es', 'Máscara deportiva');
            PERFORM insert_category_translations('masque-sport', 'it', 'Maschera sportiva');

            -- Level 2: oversize
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('oversize', 'oversize', 2, l1_id, 'Oversize')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('oversize', 'fr', 'Oversize');
            PERFORM insert_category_translations('oversize', 'ar', 'كبيرة الحجم');
            PERFORM insert_category_translations('oversize', 'en', 'Oversized');
            PERFORM insert_category_translations('oversize', 'de', 'Oversize');
            PERFORM insert_category_translations('oversize', 'es', 'Oversize');
            PERFORM insert_category_translations('oversize', 'it', 'Oversize');

            -- Level 2: polarisees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('polarisees', 'polarisees', 2, l1_id, 'Polarisées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('polarisees', 'fr', 'Polarisées');
            PERFORM insert_category_translations('polarisees', 'ar', 'مستقطبة');
            PERFORM insert_category_translations('polarisees', 'en', 'Polarized');
            PERFORM insert_category_translations('polarisees', 'de', 'Polarisiert');
            PERFORM insert_category_translations('polarisees', 'es', 'Polarizadas');
            PERFORM insert_category_translations('polarisees', 'it', 'Polarizzate');

            -- Level 2: miroir
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('miroir', 'miroir', 2, l1_id, 'Miroir')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('miroir', 'fr', 'Miroir');
            PERFORM insert_category_translations('miroir', 'ar', 'مرآة');
            PERFORM insert_category_translations('miroir', 'en', 'Mirror');
            PERFORM insert_category_translations('miroir', 'de', 'Verspiegelt');
            PERFORM insert_category_translations('miroir', 'es', 'Espejo');
            PERFORM insert_category_translations('miroir', 'it', 'Specchiate');

            -- Level 2: progressives
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('progressives', 'progressives', 2, l1_id, 'Progressives')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('progressives', 'fr', 'Progressives');
            PERFORM insert_category_translations('progressives', 'ar', 'متعددة البؤر');
            PERFORM insert_category_translations('progressives', 'en', 'Progressive');
            PERFORM insert_category_translations('progressives', 'de', 'Gleitsichtbrillen');
            PERFORM insert_category_translations('progressives', 'es', 'Progresivas');
            PERFORM insert_category_translations('progressives', 'it', 'Progressive');

            -- Level 2: lumiere-bleue
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lumiere-bleue', 'lumiere-bleue', 2, l1_id, 'Lumière bleue')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lumiere-bleue', 'fr', 'Lumière bleue');
            PERFORM insert_category_translations('lumiere-bleue', 'ar', 'فلتر الضوء الأزرق');
            PERFORM insert_category_translations('lumiere-bleue', 'en', 'Blue light');
            PERFORM insert_category_translations('lumiere-bleue', 'de', 'Blaulichtfilter');
            PERFORM insert_category_translations('lumiere-bleue', 'es', 'Luz azul');
            PERFORM insert_category_translations('lumiere-bleue', 'it', 'Luce blu');

            -- Level 2: photochromiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('photochromiques', 'photochromiques', 2, l1_id, 'Photochromiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('photochromiques', 'fr', 'Photochromiques');
            PERFORM insert_category_translations('photochromiques', 'ar', 'ضوئية التحول');
            PERFORM insert_category_translations('photochromiques', 'en', 'Photochromic');
            PERFORM insert_category_translations('photochromiques', 'de', 'Selbsttönend');
            PERFORM insert_category_translations('photochromiques', 'es', 'Fotocromáticas');
            PERFORM insert_category_translations('photochromiques', 'it', 'Fotocromatiche');

            -- Level 2: lecture
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lecture', 'lecture', 2, l1_id, 'Lecture')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lecture', 'fr', 'Lecture');
            PERFORM insert_category_translations('lecture', 'ar', 'قراءة');
            PERFORM insert_category_translations('lecture', 'en', 'Reading');
            PERFORM insert_category_translations('lecture', 'de', 'Lesebrillen');
            PERFORM insert_category_translations('lecture', 'es', 'Lectura');
            PERFORM insert_category_translations('lecture', 'it', 'Lettura');

            -- Level 2: pliables
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pliables', 'pliables', 2, l1_id, 'Pliables')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pliables', 'fr', 'Pliables');
            PERFORM insert_category_translations('pliables', 'ar', 'قابلة للطي');
            PERFORM insert_category_translations('pliables', 'en', 'Foldable');
            PERFORM insert_category_translations('pliables', 'de', 'Faltbrillen');
            PERFORM insert_category_translations('pliables', 'es', 'Plegables');
            PERFORM insert_category_translations('pliables', 'it', 'Pieghevoli');

            -- Level 2: etuis-rigides
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('etuis-rigides', 'etuis-rigides', 2, l1_id, 'Étuis rigides')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('etuis-rigides', 'fr', 'Étuis rigides');
            PERFORM insert_category_translations('etuis-rigides', 'ar', 'علب صلبة');
            PERFORM insert_category_translations('etuis-rigides', 'en', 'Hard cases');
            PERFORM insert_category_translations('etuis-rigides', 'de', 'Hartschalenetuis');
            PERFORM insert_category_translations('etuis-rigides', 'es', 'Estuches rígidos');
            PERFORM insert_category_translations('etuis-rigides', 'it', 'Astucci rigidi');

            -- Level 2: pochettes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pochettes', 'pochettes', 2, l1_id, 'Pochettes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pochettes', 'fr', 'Pochettes');
            PERFORM insert_category_translations('pochettes', 'ar', 'أغطية ناعمة');
            PERFORM insert_category_translations('pochettes', 'en', 'Pouches');
            PERFORM insert_category_translations('pochettes', 'de', 'Brillenetuis');
            PERFORM insert_category_translations('pochettes', 'es', 'Fundas');
            PERFORM insert_category_translations('pochettes', 'it', 'Bustine');

            -- Level 2: cordons
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cordons', 'cordons', 2, l1_id, 'Cordons')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cordons', 'fr', 'Cordons');
            PERFORM insert_category_translations('cordons', 'ar', 'أربطة النظارات');
            PERFORM insert_category_translations('cordons', 'en', 'Cords');
            PERFORM insert_category_translations('cordons', 'de', 'Brillenbänder');
            PERFORM insert_category_translations('cordons', 'es', 'Cordones');
            PERFORM insert_category_translations('cordons', 'it', 'Cordini');

            -- Level 2: sprays-nettoyants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sprays-nettoyants', 'sprays-nettoyants', 2, l1_id, 'Sprays nettoyants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sprays-nettoyants', 'fr', 'Sprays nettoyants');
            PERFORM insert_category_translations('sprays-nettoyants', 'ar', 'بخاخات تنظيف');
            PERFORM insert_category_translations('sprays-nettoyants', 'en', 'Cleaning sprays');
            PERFORM insert_category_translations('sprays-nettoyants', 'de', 'Reinigungssprays');
            PERFORM insert_category_translations('sprays-nettoyants', 'es', 'Sprays limpiadores');
            PERFORM insert_category_translations('sprays-nettoyants', 'it', 'Spray pulenti');

        -- Level 1: accessoires-cheveux
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accessoires-cheveux', 'accessoires-cheveux', 1, root_id, 'Accessoires Cheveux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('accessoires-cheveux', 'fr', 'Accessoires Cheveux');
        PERFORM insert_category_translations('accessoires-cheveux', 'ar', 'إكسسوارات الشعر');
        PERFORM insert_category_translations('accessoires-cheveux', 'en', 'Hair Accessories');
        PERFORM insert_category_translations('accessoires-cheveux', 'de', 'Haaraccessoires');
        PERFORM insert_category_translations('accessoires-cheveux', 'es', 'Accesorios de cabello');
        PERFORM insert_category_translations('accessoires-cheveux', 'it', 'Accessori per Capelli');

            -- Level 2: chouchous
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chouchous', 'chouchous', 2, l1_id, 'Chouchous')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chouchous', 'fr', 'Chouchous');
            PERFORM insert_category_translations('chouchous', 'ar', 'شو شو');
            PERFORM insert_category_translations('chouchous', 'en', 'Scrunchies');
            PERFORM insert_category_translations('chouchous', 'de', 'Scrunchies');
            PERFORM insert_category_translations('chouchous', 'es', 'Scrunchies');
            PERFORM insert_category_translations('chouchous', 'it', 'Scrunchie');

            -- Level 2: elastiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('elastiques', 'elastiques', 2, l1_id, 'Élastiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('elastiques', 'fr', 'Élastiques');
            PERFORM insert_category_translations('elastiques', 'ar', 'أربطة شعر');
            PERFORM insert_category_translations('elastiques', 'en', 'Elastics');
            PERFORM insert_category_translations('elastiques', 'de', 'Haargummis');
            PERFORM insert_category_translations('elastiques', 'es', 'Gomas');
            PERFORM insert_category_translations('elastiques', 'it', 'Elastici');

            -- Level 2: spirales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('spirales', 'spirales', 2, l1_id, 'Spirales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('spirales', 'fr', 'Spirales');
            PERFORM insert_category_translations('spirales', 'ar', 'أربطة حلزونية');
            PERFORM insert_category_translations('spirales', 'en', 'Spiral hair ties');
            PERFORM insert_category_translations('spirales', 'de', 'Spiralgummis');
            PERFORM insert_category_translations('spirales', 'es', 'Gomas espirales');
            PERFORM insert_category_translations('spirales', 'it', 'Elastici a spirale');

            -- Level 2: barrettes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('barrettes', 'barrettes', 2, l1_id, 'Barrettes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('barrettes', 'fr', 'Barrettes');
            PERFORM insert_category_translations('barrettes', 'ar', 'مشابك');
            PERFORM insert_category_translations('barrettes', 'en', 'Barrettes');
            PERFORM insert_category_translations('barrettes', 'de', 'Haarspangen');
            PERFORM insert_category_translations('barrettes', 'es', 'Pasadores');
            PERFORM insert_category_translations('barrettes', 'it', 'Mollette');

            -- Level 2: pinces-crocodile
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pinces-crocodile', 'pinces-crocodile', 2, l1_id, 'Pinces crocodile')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pinces-crocodile', 'fr', 'Pinces crocodile');
            PERFORM insert_category_translations('pinces-crocodile', 'ar', 'مشابك تمساح');
            PERFORM insert_category_translations('pinces-crocodile', 'en', 'Crocodile clips');
            PERFORM insert_category_translations('pinces-crocodile', 'de', 'Krokodilklemmen');
            PERFORM insert_category_translations('pinces-crocodile', 'es', 'Pinzas cocodrilo');
            PERFORM insert_category_translations('pinces-crocodile', 'it', 'Pinze coccodrillo');

            -- Level 2: pinces-crabes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pinces-crabes', 'pinces-crabes', 2, l1_id, 'Pinces crabes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pinces-crabes', 'fr', 'Pinces crabes');
            PERFORM insert_category_translations('pinces-crabes', 'ar', 'مشابك مخلب');
            PERFORM insert_category_translations('pinces-crabes', 'en', 'Claw clips');
            PERFORM insert_category_translations('pinces-crabes', 'de', 'Haarkrebse');
            PERFORM insert_category_translations('pinces-crabes', 'es', 'Pinzas de garra');
            PERFORM insert_category_translations('pinces-crabes', 'it', 'Pinze a granchio');

            -- Level 2: bobby-pins
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bobby-pins', 'bobby-pins', 2, l1_id, 'Bobby pins')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bobby-pins', 'fr', 'Bobby pins');
            PERFORM insert_category_translations('bobby-pins', 'ar', 'دبابيس شعر');
            PERFORM insert_category_translations('bobby-pins', 'en', 'Bobby pins');
            PERFORM insert_category_translations('bobby-pins', 'de', 'Haarklammern');
            PERFORM insert_category_translations('bobby-pins', 'es', 'Horquillas');
            PERFORM insert_category_translations('bobby-pins', 'it', 'Forcine');

            -- Level 2: bandeaux-larges
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bandeaux-larges', 'bandeaux-larges', 2, l1_id, 'Bandeaux larges')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bandeaux-larges', 'fr', 'Bandeaux larges');
            PERFORM insert_category_translations('bandeaux-larges', 'ar', 'عصابات عريضة');
            PERFORM insert_category_translations('bandeaux-larges', 'en', 'Wide headbands');
            PERFORM insert_category_translations('bandeaux-larges', 'de', 'Breite Stirnbänder');
            PERFORM insert_category_translations('bandeaux-larges', 'es', 'Diademas anchas');
            PERFORM insert_category_translations('bandeaux-larges', 'it', 'Fasce larghe');

            -- Level 2: serre-tetes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('serre-tetes', 'serre-tetes', 2, l1_id, 'Serre-têtes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('serre-tetes', 'fr', 'Serre-têtes');
            PERFORM insert_category_translations('serre-tetes', 'ar', 'أطواق رأس');
            PERFORM insert_category_translations('serre-tetes', 'en', 'Headbands');
            PERFORM insert_category_translations('serre-tetes', 'de', 'Haarreifen');
            PERFORM insert_category_translations('serre-tetes', 'es', 'Diademas');
            PERFORM insert_category_translations('serre-tetes', 'it', 'Cerchietti');

            -- Level 2: sport
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sport', 'sport', 2, l1_id, 'Sport')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sport', 'fr', 'Sport');
            PERFORM insert_category_translations('sport', 'ar', 'رياضة');
            PERFORM insert_category_translations('sport', 'en', 'Sport');
            PERFORM insert_category_translations('sport', 'de', 'Sport-Haarbänder');
            PERFORM insert_category_translations('sport', 'es', 'Deporte');
            PERFORM insert_category_translations('sport', 'it', 'Sport');

            -- Level 2: velours
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('velours', 'velours', 2, l1_id, 'Velours')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('velours', 'fr', 'Velours');
            PERFORM insert_category_translations('velours', 'ar', 'مخمل');
            PERFORM insert_category_translations('velours', 'en', 'Velvet');
            PERFORM insert_category_translations('velours', 'de', 'Samt');
            PERFORM insert_category_translations('velours', 'es', 'Terciopelo');
            PERFORM insert_category_translations('velours', 'it', 'Velluto');

            -- Level 2: perles-cheveux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('perles-cheveux', 'perles-cheveux', 2, l1_id, 'Perles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('perles-cheveux', 'fr', 'Perles');
            PERFORM insert_category_translations('perles-cheveux', 'ar', 'خرز للشعر');
            PERFORM insert_category_translations('perles-cheveux', 'en', 'Pearls');
            PERFORM insert_category_translations('perles-cheveux', 'de', 'Perlen');
            PERFORM insert_category_translations('perles-cheveux', 'es', 'Perlas');
            PERFORM insert_category_translations('perles-cheveux', 'it', 'Perle');

            -- Level 2: peignes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('peignes', 'peignes', 2, l1_id, 'Peignes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('peignes', 'fr', 'Peignes');
            PERFORM insert_category_translations('peignes', 'ar', 'أمشاط');
            PERFORM insert_category_translations('peignes', 'en', 'Combs');
            PERFORM insert_category_translations('peignes', 'de', 'Haarkämme');
            PERFORM insert_category_translations('peignes', 'es', 'Peines');
            PERFORM insert_category_translations('peignes', 'it', 'Pettini');

            -- Level 2: epingles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('epingles', 'epingles', 2, l1_id, 'Épingles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('epingles', 'fr', 'Épingles');
            PERFORM insert_category_translations('epingles', 'ar', 'دبابيس');
            PERFORM insert_category_translations('epingles', 'en', 'Pins');
            PERFORM insert_category_translations('epingles', 'de', 'Haarnadeln');
            PERFORM insert_category_translations('epingles', 'es', 'Alfileres');
            PERFORM insert_category_translations('epingles', 'it', 'Spille');

            -- Level 2: pics
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pics', 'pics', 2, l1_id, 'Pics')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pics', 'fr', 'Pics');
            PERFORM insert_category_translations('pics', 'ar', 'أعواد شعر');
            PERFORM insert_category_translations('pics', 'en', 'Hair sticks');
            PERFORM insert_category_translations('pics', 'de', 'Haarstäbe');
            PERFORM insert_category_translations('pics', 'es', 'Palitos para el pelo');
            PERFORM insert_category_translations('pics', 'it', 'Bacchette per capelli');

            -- Level 2: bigoudis
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bigoudis', 'bigoudis', 2, l1_id, 'Bigoudis')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bigoudis', 'fr', 'Bigoudis');
            PERFORM insert_category_translations('bigoudis', 'ar', 'بكرات شعر');
            PERFORM insert_category_translations('bigoudis', 'en', 'Curlers');
            PERFORM insert_category_translations('bigoudis', 'de', 'Lockenwickler');
            PERFORM insert_category_translations('bigoudis', 'es', 'Rulos');
            PERFORM insert_category_translations('bigoudis', 'it', 'Bigodini');

            -- Level 2: filets
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('filets', 'filets', 2, l1_id, 'Filets')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('filets', 'fr', 'Filets');
            PERFORM insert_category_translations('filets', 'ar', 'شبكات شعر');
            PERFORM insert_category_translations('filets', 'en', 'Hair nets');
            PERFORM insert_category_translations('filets', 'de', 'Haarnetze');
            PERFORM insert_category_translations('filets', 'es', 'Redes para el pelo');
            PERFORM insert_category_translations('filets', 'it', 'Retine per capelli');

        -- Level 1: ceintures-bretelles
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ceintures-bretelles', 'ceintures-bretelles', 1, root_id, 'Ceintures & Bretelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('ceintures-bretelles', 'fr', 'Ceintures & Bretelles');
        PERFORM insert_category_translations('ceintures-bretelles', 'ar', 'أحزمة وحمالات');
        PERFORM insert_category_translations('ceintures-bretelles', 'en', 'Belts & Suspenders');
        PERFORM insert_category_translations('ceintures-bretelles', 'de', 'Gürtel & Hosenträger');
        PERFORM insert_category_translations('ceintures-bretelles', 'es', 'Cinturones y Tirantes');
        PERFORM insert_category_translations('ceintures-bretelles', 'it', 'Cinture e Bretelle');

            -- Level 2: cuir-classique
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cuir-classique', 'cuir-classique', 2, l1_id, 'Cuir classique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cuir-classique', 'fr', 'Cuir classique');
            PERFORM insert_category_translations('cuir-classique', 'ar', 'جلد كلاسيكي');
            PERFORM insert_category_translations('cuir-classique', 'en', 'Classic leather');
            PERFORM insert_category_translations('cuir-classique', 'de', 'Klassisches Leder');
            PERFORM insert_category_translations('cuir-classique', 'es', 'Cuero clásico');
            PERFORM insert_category_translations('cuir-classique', 'it', 'Pelle classica');

            -- Level 2: cuir-tresse
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cuir-tresse', 'cuir-tresse', 2, l1_id, 'Cuir tressé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cuir-tresse', 'fr', 'Cuir tressé');
            PERFORM insert_category_translations('cuir-tresse', 'ar', 'جلد مضفر');
            PERFORM insert_category_translations('cuir-tresse', 'en', 'Braided leather');
            PERFORM insert_category_translations('cuir-tresse', 'de', 'Geflochtenes Leder');
            PERFORM insert_category_translations('cuir-tresse', 'es', 'Cuero trenzado');
            PERFORM insert_category_translations('cuir-tresse', 'it', 'Pelle intrecciata');

            -- Level 2: cuir-grain
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cuir-grain', 'cuir-grain', 2, l1_id, 'Cuir grainé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cuir-grain', 'fr', 'Cuir grainé');
            PERFORM insert_category_translations('cuir-grain', 'ar', 'جلد محبب');
            PERFORM insert_category_translations('cuir-grain', 'en', 'Grained leather');
            PERFORM insert_category_translations('cuir-grain', 'de', 'Genarbtes Leder');
            PERFORM insert_category_translations('cuir-grain', 'es', 'Cuero granulado');
            PERFORM insert_category_translations('cuir-grain', 'it', 'Pelle granulata');

            -- Level 2: automatique-ceintures
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('automatique-ceintures', 'automatique-ceintures', 2, l1_id, 'Automatique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('automatique-ceintures', 'fr', 'Automatique');
            PERFORM insert_category_translations('automatique-ceintures', 'ar', 'إبزيم تلقائي');
            PERFORM insert_category_translations('automatique-ceintures', 'en', 'Automatic buckle');
            PERFORM insert_category_translations('automatique-ceintures', 'de', 'Automatik-Schnalle');
            PERFORM insert_category_translations('automatique-ceintures', 'es', 'Hebilla automática');
            PERFORM insert_category_translations('automatique-ceintures', 'it', 'Fibbia automatica');

            -- Level 2: reversible
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('reversible', 'reversible', 2, l1_id, 'Réversible')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('reversible', 'fr', 'Réversible');
            PERFORM insert_category_translations('reversible', 'ar', 'قابل للعكس');
            PERFORM insert_category_translations('reversible', 'en', 'Reversible');
            PERFORM insert_category_translations('reversible', 'de', 'Wendegürtel');
            PERFORM insert_category_translations('reversible', 'es', 'Reversible');
            PERFORM insert_category_translations('reversible', 'it', 'Reversibile');

            -- Level 2: toile
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('toile', 'toile', 2, l1_id, 'Toile')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('toile', 'fr', 'Toile');
            PERFORM insert_category_translations('toile', 'ar', 'قماش');
            PERFORM insert_category_translations('toile', 'en', 'Canvas');
            PERFORM insert_category_translations('toile', 'de', 'Stoffgürtel');
            PERFORM insert_category_translations('toile', 'es', 'Lona');
            PERFORM insert_category_translations('toile', 'it', 'Tela');

            -- Level 2: elastique
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('elastique', 'elastique', 2, l1_id, 'Élastique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('elastique', 'fr', 'Élastique');
            PERFORM insert_category_translations('elastique', 'ar', 'مطاطي');
            PERFORM insert_category_translations('elastique', 'en', 'Elastic');
            PERFORM insert_category_translations('elastique', 'de', 'Elastisch');
            PERFORM insert_category_translations('elastique', 'es', 'Elástico');
            PERFORM insert_category_translations('elastique', 'it', 'Elastico');

            -- Level 2: sangle-militaire
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sangle-militaire', 'sangle-militaire', 2, l1_id, 'Sangle militaire')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sangle-militaire', 'fr', 'Sangle militaire');
            PERFORM insert_category_translations('sangle-militaire', 'ar', 'حزام عسكري');
            PERFORM insert_category_translations('sangle-militaire', 'en', 'Military webbing');
            PERFORM insert_category_translations('sangle-militaire', 'de', 'Militärgürtel');
            PERFORM insert_category_translations('sangle-militaire', 'es', 'Correa militar');
            PERFORM insert_category_translations('sangle-militaire', 'it', 'Cinghia militare');

            -- Level 2: d-ring
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('d-ring', 'd-ring', 2, l1_id, 'D-ring')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('d-ring', 'fr', 'D-ring');
            PERFORM insert_category_translations('d-ring', 'ar', 'حلقة D');
            PERFORM insert_category_translations('d-ring', 'en', 'D-ring');
            PERFORM insert_category_translations('d-ring', 'de', 'D-Ring');
            PERFORM insert_category_translations('d-ring', 'es', 'D-ring');
            PERFORM insert_category_translations('d-ring', 'it', 'D-ring');

            -- Level 2: createur
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('createur', 'createur', 2, l1_id, 'Créateur')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('createur', 'fr', 'Créateur');
            PERFORM insert_category_translations('createur', 'ar', 'مصمم');
            PERFORM insert_category_translations('createur', 'en', 'Designer');
            PERFORM insert_category_translations('createur', 'de', 'Designer');
            PERFORM insert_category_translations('createur', 'es', 'Diseñador');
            PERFORM insert_category_translations('createur', 'it', 'Designer');

            -- Level 2: logo
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('logo', 'logo', 2, l1_id, 'Logo')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('logo', 'fr', 'Logo');
            PERFORM insert_category_translations('logo', 'ar', 'شعار');
            PERFORM insert_category_translations('logo', 'en', 'Logo');
            PERFORM insert_category_translations('logo', 'de', 'Logo-Gürtel');
            PERFORM insert_category_translations('logo', 'es', 'Logo');
            PERFORM insert_category_translations('logo', 'it', 'Logo');

            -- Level 2: chaine
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chaine', 'chaine', 2, l1_id, 'Chaîne')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chaine', 'fr', 'Chaîne');
            PERFORM insert_category_translations('chaine', 'ar', 'سلسلة');
            PERFORM insert_category_translations('chaine', 'en', 'Chain');
            PERFORM insert_category_translations('chaine', 'de', 'Kettengürtel');
            PERFORM insert_category_translations('chaine', 'es', 'Cadena');
            PERFORM insert_category_translations('chaine', 'it', 'Catena');

            -- Level 2: obi
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('obi', 'obi', 2, l1_id, 'Obi')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('obi', 'fr', 'Obi');
            PERFORM insert_category_translations('obi', 'ar', 'أوبي');
            PERFORM insert_category_translations('obi', 'en', 'Obi');
            PERFORM insert_category_translations('obi', 'de', 'Obi-Gürtel');
            PERFORM insert_category_translations('obi', 'es', 'Obi');
            PERFORM insert_category_translations('obi', 'it', 'Obi');

            -- Level 2: bretelles-y
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bretelles-y', 'bretelles-y', 2, l1_id, 'Bretelles Y')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bretelles-y', 'fr', 'Bretelles Y');
            PERFORM insert_category_translations('bretelles-y', 'ar', 'حمالات Y');
            PERFORM insert_category_translations('bretelles-y', 'en', 'Y-back suspenders');
            PERFORM insert_category_translations('bretelles-y', 'de', 'Y-Hosenträger');
            PERFORM insert_category_translations('bretelles-y', 'es', 'Tirantes en Y');
            PERFORM insert_category_translations('bretelles-y', 'it', 'Bretelle a Y');

            -- Level 2: bretelles-x
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bretelles-x', 'bretelles-x', 2, l1_id, 'Bretelles X')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bretelles-x', 'fr', 'Bretelles X');
            PERFORM insert_category_translations('bretelles-x', 'ar', 'حمالات X');
            PERFORM insert_category_translations('bretelles-x', 'en', 'X-back suspenders');
            PERFORM insert_category_translations('bretelles-x', 'de', 'X-Hosenträger');
            PERFORM insert_category_translations('bretelles-x', 'es', 'Tirantes en X');
            PERFORM insert_category_translations('bretelles-x', 'it', 'Bretelle a X');

            -- Level 2: clips-bretelles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('clips-bretelles', 'clips-bretelles', 2, l1_id, 'Clips')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('clips-bretelles', 'fr', 'Clips');
            PERFORM insert_category_translations('clips-bretelles', 'ar', 'مشابك');
            PERFORM insert_category_translations('clips-bretelles', 'en', 'Clips');
            PERFORM insert_category_translations('clips-bretelles', 'de', 'Clips');
            PERFORM insert_category_translations('clips-bretelles', 'es', 'Clips');
            PERFORM insert_category_translations('clips-bretelles', 'it', 'Clip');

            -- Level 2: boutons-bretelles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('boutons-bretelles', 'boutons-bretelles', 2, l1_id, 'Boutons')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('boutons-bretelles', 'fr', 'Boutons');
            PERFORM insert_category_translations('boutons-bretelles', 'ar', 'أزرار');
            PERFORM insert_category_translations('boutons-bretelles', 'en', 'Buttons');
            PERFORM insert_category_translations('boutons-bretelles', 'de', 'Knöpfe');
            PERFORM insert_category_translations('boutons-bretelles', 'es', 'Botones');
            PERFORM insert_category_translations('boutons-bretelles', 'it', 'Bottoni');

            -- Level 2: smoking
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('smoking', 'smoking', 2, l1_id, 'Smoking')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('smoking', 'fr', 'Smoking');
            PERFORM insert_category_translations('smoking', 'ar', 'سموكن');
            PERFORM insert_category_translations('smoking', 'en', 'Tuxedo');
            PERFORM insert_category_translations('smoking', 'de', 'Smoking-Gürtel');
            PERFORM insert_category_translations('smoking', 'es', 'Esmoquin');
            PERFORM insert_category_translations('smoking', 'it', 'Smoking');

        -- Level 1: chapeaux-casquettes
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chapeaux-casquettes', 'chapeaux-casquettes', 1, root_id, 'Chapeaux & Casquettes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('chapeaux-casquettes', 'fr', 'Chapeaux & Casquettes');
        PERFORM insert_category_translations('chapeaux-casquettes', 'ar', 'قبعات وكابات');
        PERFORM insert_category_translations('chapeaux-casquettes', 'en', 'Hats & Caps');
        PERFORM insert_category_translations('chapeaux-casquettes', 'de', 'Hüte & Mützen');
        PERFORM insert_category_translations('chapeaux-casquettes', 'es', 'Sombreros y Gorras');
        PERFORM insert_category_translations('chapeaux-casquettes', 'it', 'Cappelli e Berretti');

            -- Level 2: baseball
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('baseball', 'baseball', 2, l1_id, 'Baseball')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('baseball', 'fr', 'Baseball');
            PERFORM insert_category_translations('baseball', 'ar', 'بيسبول');
            PERFORM insert_category_translations('baseball', 'en', 'Baseball');
            PERFORM insert_category_translations('baseball', 'de', 'Baseball-Cap');
            PERFORM insert_category_translations('baseball', 'es', 'Béisbol');
            PERFORM insert_category_translations('baseball', 'it', 'Baseball');

            -- Level 2: snapback
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('snapback', 'snapback', 2, l1_id, 'Snapback')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('snapback', 'fr', 'Snapback');
            PERFORM insert_category_translations('snapback', 'ar', 'سناب باك');
            PERFORM insert_category_translations('snapback', 'en', 'Snapback');
            PERFORM insert_category_translations('snapback', 'de', 'Snapback');
            PERFORM insert_category_translations('snapback', 'es', 'Snapback');
            PERFORM insert_category_translations('snapback', 'it', 'Snapback');

            -- Level 2: trucker
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('trucker', 'trucker', 2, l1_id, 'Trucker')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('trucker', 'fr', 'Trucker');
            PERFORM insert_category_translations('trucker', 'ar', 'تراكر');
            PERFORM insert_category_translations('trucker', 'en', 'Trucker');
            PERFORM insert_category_translations('trucker', 'de', 'Trucker-Cap');
            PERFORM insert_category_translations('trucker', 'es', 'Trucker');
            PERFORM insert_category_translations('trucker', 'it', 'Trucker');

            -- Level 2: dad-hat
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('dad-hat', 'dad-hat', 2, l1_id, 'Dad hat')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('dad-hat', 'fr', 'Dad hat');
            PERFORM insert_category_translations('dad-hat', 'ar', 'قبعة الأب');
            PERFORM insert_category_translations('dad-hat', 'en', 'Dad hat');
            PERFORM insert_category_translations('dad-hat', 'de', 'Dad Hat');
            PERFORM insert_category_translations('dad-hat', 'es', 'Gorra de papá');
            PERFORM insert_category_translations('dad-hat', 'it', 'Dad hat');

            -- Level 2: militaire
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('militaire', 'militaire', 2, l1_id, 'Militaire')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('militaire', 'fr', 'Militaire');
            PERFORM insert_category_translations('militaire', 'ar', 'عسكرية');
            PERFORM insert_category_translations('militaire', 'en', 'Military');
            PERFORM insert_category_translations('militaire', 'de', 'Militärmütze');
            PERFORM insert_category_translations('militaire', 'es', 'Militar');
            PERFORM insert_category_translations('militaire', 'it', 'Militare');

            -- Level 2: visiere
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('visiere', 'visiere', 2, l1_id, 'Visière')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('visiere', 'fr', 'Visière');
            PERFORM insert_category_translations('visiere', 'ar', 'واقية');
            PERFORM insert_category_translations('visiere', 'en', 'Visor');
            PERFORM insert_category_translations('visiere', 'de', 'Visier');
            PERFORM insert_category_translations('visiere', 'es', 'Visera');
            PERFORM insert_category_translations('visiere', 'it', 'Visiera');

            -- Level 2: bonnets-coteles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bonnets-coteles', 'bonnets-coteles', 2, l1_id, 'Bonnets côtelés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bonnets-coteles', 'fr', 'Bonnets côtelés');
            PERFORM insert_category_translations('bonnets-coteles', 'ar', 'قبعات مضلعة');
            PERFORM insert_category_translations('bonnets-coteles', 'en', 'Ribbed beanies');
            PERFORM insert_category_translations('bonnets-coteles', 'de', 'Rippstrickmützen');
            PERFORM insert_category_translations('bonnets-coteles', 'es', 'Gorros de canalé');
            PERFORM insert_category_translations('bonnets-coteles', 'it', 'Berretti a coste');

            -- Level 2: pompon
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pompon', 'pompon', 2, l1_id, 'Pompon')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pompon', 'fr', 'Pompon');
            PERFORM insert_category_translations('pompon', 'ar', 'بوم بوم');
            PERFORM insert_category_translations('pompon', 'en', 'Pom-pom');
            PERFORM insert_category_translations('pompon', 'de', 'Bommelmütze');
            PERFORM insert_category_translations('pompon', 'es', 'Pompón');
            PERFORM insert_category_translations('pompon', 'it', 'Pompon');

            -- Level 2: slouchy
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('slouchy', 'slouchy', 2, l1_id, 'Slouchy')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('slouchy', 'fr', 'Slouchy');
            PERFORM insert_category_translations('slouchy', 'ar', 'فضفاض');
            PERFORM insert_category_translations('slouchy', 'en', 'Slouchy');
            PERFORM insert_category_translations('slouchy', 'de', 'Beanie (Slouchy)');
            PERFORM insert_category_translations('slouchy', 'es', 'Holgado');
            PERFORM insert_category_translations('slouchy', 'it', 'Slouchy');

            -- Level 2: beanie
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('beanie', 'beanie', 2, l1_id, 'Beanie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('beanie', 'fr', 'Beanie');
            PERFORM insert_category_translations('beanie', 'ar', 'بيني');
            PERFORM insert_category_translations('beanie', 'en', 'Beanie');
            PERFORM insert_category_translations('beanie', 'de', 'Beanie');
            PERFORM insert_category_translations('beanie', 'es', 'Gorro');
            PERFORM insert_category_translations('beanie', 'it', 'Beanie');

            -- Level 2: cagoule
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cagoule', 'cagoule', 2, l1_id, 'Cagoule')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cagoule', 'fr', 'Cagoule');
            PERFORM insert_category_translations('cagoule', 'ar', 'بالاكلافا');
            PERFORM insert_category_translations('cagoule', 'en', 'Balaclava');
            PERFORM insert_category_translations('cagoule', 'de', 'Sturmhaube');
            PERFORM insert_category_translations('cagoule', 'es', 'Pasamontañas');
            PERFORM insert_category_translations('cagoule', 'it', 'Passamontagna');

            -- Level 2: bluetooth
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bluetooth', 'bluetooth', 2, l1_id, 'Bluetooth')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bluetooth', 'fr', 'Bluetooth');
            PERFORM insert_category_translations('bluetooth', 'ar', 'بلوتوث');
            PERFORM insert_category_translations('bluetooth', 'en', 'Bluetooth');
            PERFORM insert_category_translations('bluetooth', 'de', 'Bluetooth-Mütze');
            PERFORM insert_category_translations('bluetooth', 'es', 'Bluetooth');
            PERFORM insert_category_translations('bluetooth', 'it', 'Bluetooth');

            -- Level 2: fedora
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fedora', 'fedora', 2, l1_id, 'Fedora')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fedora', 'fr', 'Fedora');
            PERFORM insert_category_translations('fedora', 'ar', 'فيدورا');
            PERFORM insert_category_translations('fedora', 'en', 'Fedora');
            PERFORM insert_category_translations('fedora', 'de', 'Fedora');
            PERFORM insert_category_translations('fedora', 'es', 'Fedora');
            PERFORM insert_category_translations('fedora', 'it', 'Fedora');

            -- Level 2: panama
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('panama', 'panama', 2, l1_id, 'Panama')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('panama', 'fr', 'Panama');
            PERFORM insert_category_translations('panama', 'ar', 'باناما');
            PERFORM insert_category_translations('panama', 'en', 'Panama');
            PERFORM insert_category_translations('panama', 'de', 'Panamahut');
            PERFORM insert_category_translations('panama', 'es', 'Panamá');
            PERFORM insert_category_translations('panama', 'it', 'Panama');

            -- Level 2: trilby
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('trilby', 'trilby', 2, l1_id, 'Trilby')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('trilby', 'fr', 'Trilby');
            PERFORM insert_category_translations('trilby', 'ar', 'تريلبي');
            PERFORM insert_category_translations('trilby', 'en', 'Trilby');
            PERFORM insert_category_translations('trilby', 'de', 'Trilby');
            PERFORM insert_category_translations('trilby', 'es', 'Trilby');
            PERFORM insert_category_translations('trilby', 'it', 'Trilby');

            -- Level 2: bob
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bob', 'bob', 2, l1_id, 'Bob')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bob', 'fr', 'Bob');
            PERFORM insert_category_translations('bob', 'ar', 'قبعة دلو');
            PERFORM insert_category_translations('bob', 'en', 'Bucket hat');
            PERFORM insert_category_translations('bob', 'de', 'Fischerhut');
            PERFORM insert_category_translations('bob', 'es', 'Sombrero de cubo');
            PERFORM insert_category_translations('bob', 'it', 'Cappello a secchiello');

            -- Level 2: safari
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('safari', 'safari', 2, l1_id, 'Safari')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('safari', 'fr', 'Safari');
            PERFORM insert_category_translations('safari', 'ar', 'سفاري');
            PERFORM insert_category_translations('safari', 'en', 'Safari');
            PERFORM insert_category_translations('safari', 'de', 'Safarihut');
            PERFORM insert_category_translations('safari', 'es', 'Safari');
            PERFORM insert_category_translations('safari', 'it', 'Safari');

            -- Level 2: capeline
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('capeline', 'capeline', 2, l1_id, 'Capeline')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('capeline', 'fr', 'Capeline');
            PERFORM insert_category_translations('capeline', 'ar', 'قبعة واسعة الحافة');
            PERFORM insert_category_translations('capeline', 'en', 'Wide-brim hat');
            PERFORM insert_category_translations('capeline', 'de', 'Schlapphut');
            PERFORM insert_category_translations('capeline', 'es', 'Ala ancha');
            PERFORM insert_category_translations('capeline', 'it', 'Cappello a tesa larga');

            -- Level 2: cowboy
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cowboy', 'cowboy', 2, l1_id, 'Cowboy')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cowboy', 'fr', 'Cowboy');
            PERFORM insert_category_translations('cowboy', 'ar', 'رعاة البقر');
            PERFORM insert_category_translations('cowboy', 'en', 'Cowboy');
            PERFORM insert_category_translations('cowboy', 'de', 'Cowboyhut');
            PERFORM insert_category_translations('cowboy', 'es', 'Vaquero');
            PERFORM insert_category_translations('cowboy', 'it', 'Cowboy');

            -- Level 2: beret
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('beret', 'beret', 2, l1_id, 'Béret basque')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('beret', 'fr', 'Béret basque');
            PERFORM insert_category_translations('beret', 'ar', 'بيريه');
            PERFORM insert_category_translations('beret', 'en', 'Basque beret');
            PERFORM insert_category_translations('beret', 'de', 'Baskenmütze');
            PERFORM insert_category_translations('beret', 'es', 'Boina vasca');
            PERFORM insert_category_translations('beret', 'it', 'Basco');

            -- Level 2: gavroche
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gavroche', 'gavroche', 2, l1_id, 'Gavroche')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gavroche', 'fr', 'Gavroche');
            PERFORM insert_category_translations('gavroche', 'ar', 'قبعة صحفية');
            PERFORM insert_category_translations('gavroche', 'en', 'Newsboy cap');
            PERFORM insert_category_translations('gavroche', 'de', 'Schiebermütze');
            PERFORM insert_category_translations('gavroche', 'es', 'Gorra periodística');
            PERFORM insert_category_translations('gavroche', 'it', 'Berretto newsboy');

            -- Level 2: bibi
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bibi', 'bibi', 2, l1_id, 'Bibi')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bibi', 'fr', 'Bibi');
            PERFORM insert_category_translations('bibi', 'ar', 'بيلبوكس');
            PERFORM insert_category_translations('bibi', 'en', 'Pillbox');
            PERFORM insert_category_translations('bibi', 'de', 'Pillbox');
            PERFORM insert_category_translations('bibi', 'es', 'Pillbox');
            PERFORM insert_category_translations('bibi', 'it', 'Pillbox');

            -- Level 2: fascinator
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fascinator', 'fascinator', 2, l1_id, 'Fascinator')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fascinator', 'fr', 'Fascinator');
            PERFORM insert_category_translations('fascinator', 'ar', 'فاشينيتر');
            PERFORM insert_category_translations('fascinator', 'en', 'Fascinator');
            PERFORM insert_category_translations('fascinator', 'de', 'Fascinator');
            PERFORM insert_category_translations('fascinator', 'es', 'Fascinator');
            PERFORM insert_category_translations('fascinator', 'it', 'Fascinator');

        -- Level 1: echarpes-foulards
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('echarpes-foulards', 'echarpes-foulards', 1, root_id, 'Écharpes & Foulards')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('echarpes-foulards', 'fr', 'Écharpes & Foulards');
        PERFORM insert_category_translations('echarpes-foulards', 'ar', 'أوشحة وفولارات');
        PERFORM insert_category_translations('echarpes-foulards', 'en', 'Scarves & Shawls');
        PERFORM insert_category_translations('echarpes-foulards', 'de', 'Schals & Tücher');
        PERFORM insert_category_translations('echarpes-foulards', 'es', 'Bufandas y Chales');
        PERFORM insert_category_translations('echarpes-foulards', 'it', 'Sciarpe e Foulard');

            -- Level 2: longues
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('longues', 'longues', 2, l1_id, 'Longues')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('longues', 'fr', 'Longues');
            PERFORM insert_category_translations('longues', 'ar', 'طويلة');
            PERFORM insert_category_translations('longues', 'en', 'Long');
            PERFORM insert_category_translations('longues', 'de', 'Lange Schals');
            PERFORM insert_category_translations('longues', 'es', 'Largas');
            PERFORM insert_category_translations('longues', 'it', 'Lunghe');

            -- Level 2: tubes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tubes', 'tubes', 2, l1_id, 'Tubes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tubes', 'fr', 'Tubes');
            PERFORM insert_category_translations('tubes', 'ar', 'أنبوبية');
            PERFORM insert_category_translations('tubes', 'en', 'Tube scarves');
            PERFORM insert_category_translations('tubes', 'de', 'Schlauchschals');
            PERFORM insert_category_translations('tubes', 'es', 'Tubulares');
            PERFORM insert_category_translations('tubes', 'it', 'Tubo');

            -- Level 2: fines
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fines', 'fines', 2, l1_id, 'Fines')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fines', 'fr', 'Fines');
            PERFORM insert_category_translations('fines', 'ar', 'رفيعة');
            PERFORM insert_category_translations('fines', 'en', 'Thin');
            PERFORM insert_category_translations('fines', 'de', 'Feine Schals');
            PERFORM insert_category_translations('fines', 'es', 'Finas');
            PERFORM insert_category_translations('fines', 'it', 'Sottili');

            -- Level 2: epaisses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('epaisses', 'epaisses', 2, l1_id, 'Épaisses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('epaisses', 'fr', 'Épaisses');
            PERFORM insert_category_translations('epaisses', 'ar', 'سميكة');
            PERFORM insert_category_translations('epaisses', 'en', 'Thick');
            PERFORM insert_category_translations('epaisses', 'de', 'Dicke Schals');
            PERFORM insert_category_translations('epaisses', 'es', 'Gruesas');
            PERFORM insert_category_translations('epaisses', 'it', 'Spesse');

            -- Level 2: cachemire
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cachemire', 'cachemire', 2, l1_id, 'Cachemire')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cachemire', 'fr', 'Cachemire');
            PERFORM insert_category_translations('cachemire', 'ar', 'كشمير');
            PERFORM insert_category_translations('cachemire', 'en', 'Cashmere');
            PERFORM insert_category_translations('cachemire', 'de', 'Kaschmir');
            PERFORM insert_category_translations('cachemire', 'es', 'Cachemira');
            PERFORM insert_category_translations('cachemire', 'it', 'Cashmere');

            -- Level 2: laine-merinos
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('laine-merinos', 'laine-merinos', 2, l1_id, 'Laine mérinos')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('laine-merinos', 'fr', 'Laine mérinos');
            PERFORM insert_category_translations('laine-merinos', 'ar', 'صوف ميرينو');
            PERFORM insert_category_translations('laine-merinos', 'en', 'Merino wool');
            PERFORM insert_category_translations('laine-merinos', 'de', 'Merinowolle');
            PERFORM insert_category_translations('laine-merinos', 'es', 'Lana merina');
            PERFORM insert_category_translations('laine-merinos', 'it', 'Lana merino');

            -- Level 2: alpaga
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('alpaga', 'alpaga', 2, l1_id, 'Alpaga')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('alpaga', 'fr', 'Alpaga');
            PERFORM insert_category_translations('alpaga', 'ar', 'ألباكا');
            PERFORM insert_category_translations('alpaga', 'en', 'Alpaca');
            PERFORM insert_category_translations('alpaga', 'de', 'Alpaka');
            PERFORM insert_category_translations('alpaga', 'es', 'Alpaca');
            PERFORM insert_category_translations('alpaga', 'it', 'Alpaca');

            -- Level 2: coton
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('coton', 'coton', 2, l1_id, 'Coton')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('coton', 'fr', 'Coton');
            PERFORM insert_category_translations('coton', 'ar', 'قطن');
            PERFORM insert_category_translations('coton', 'en', 'Cotton');
            PERFORM insert_category_translations('coton', 'de', 'Baumwolle');
            PERFORM insert_category_translations('coton', 'es', 'Algodón');
            PERFORM insert_category_translations('coton', 'it', 'Cotone');

            -- Level 2: franges
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('franges', 'franges', 2, l1_id, 'Franges')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('franges', 'fr', 'Franges');
            PERFORM insert_category_translations('franges', 'ar', 'شرابات');
            PERFORM insert_category_translations('franges', 'en', 'Fringed');
            PERFORM insert_category_translations('franges', 'de', 'Fransen');
            PERFORM insert_category_translations('franges', 'es', 'Con flecos');
            PERFORM insert_category_translations('franges', 'it', 'Frange');

            -- Level 2: pompons
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pompons', 'pompons', 2, l1_id, 'Pompons')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pompons', 'fr', 'Pompons');
            PERFORM insert_category_translations('pompons', 'ar', 'بوم بوم');
            PERFORM insert_category_translations('pompons', 'en', 'Pom-poms');
            PERFORM insert_category_translations('pompons', 'de', 'Bommel');
            PERFORM insert_category_translations('pompons', 'es', 'Pompones');
            PERFORM insert_category_translations('pompons', 'it', 'Pon pon');

            -- Level 2: carres-soie
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('carres-soie', 'carres-soie', 2, l1_id, 'Carrés soie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('carres-soie', 'fr', 'Carrés soie');
            PERFORM insert_category_translations('carres-soie', 'ar', 'مربعات حرير');
            PERFORM insert_category_translations('carres-soie', 'en', 'Silk squares');
            PERFORM insert_category_translations('carres-soie', 'de', 'Seidentücher');
            PERFORM insert_category_translations('carres-soie', 'es', 'Cuadrados de seda');
            PERFORM insert_category_translations('carres-soie', 'it', 'Quadrati di seta');

            -- Level 2: rectangles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('rectangles', 'rectangles', 2, l1_id, 'Rectangles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('rectangles', 'fr', 'Rectangles');
            PERFORM insert_category_translations('rectangles', 'ar', 'مستطيلات');
            PERFORM insert_category_translations('rectangles', 'en', 'Rectangular');
            PERFORM insert_category_translations('rectangles', 'de', 'Rechteckige Tücher');
            PERFORM insert_category_translations('rectangles', 'es', 'Rectangulares');
            PERFORM insert_category_translations('rectangles', 'it', 'Rettangolari');

            -- Level 2: lavalliere
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lavalliere', 'lavalliere', 2, l1_id, 'Lavallière')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lavalliere', 'fr', 'Lavallière');
            PERFORM insert_category_translations('lavalliere', 'ar', 'لافاليير');
            PERFORM insert_category_translations('lavalliere', 'en', 'Ascot tie');
            PERFORM insert_category_translations('lavalliere', 'de', 'Schluppen');
            PERFORM insert_category_translations('lavalliere', 'es', 'Corbata ascot');
            PERFORM insert_category_translations('lavalliere', 'it', 'Ascot');

            -- Level 2: cheveux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cheveux', 'cheveux', 2, l1_id, 'Cheveux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cheveux', 'fr', 'Cheveux');
            PERFORM insert_category_translations('cheveux', 'ar', 'للشعر');
            PERFORM insert_category_translations('cheveux', 'en', 'Hair scarves');
            PERFORM insert_category_translations('cheveux', 'de', 'Haartücher');
            PERFORM insert_category_translations('cheveux', 'es', 'Para cabello');
            PERFORM insert_category_translations('cheveux', 'it', 'Per capelli');

            -- Level 2: imprimes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('imprimes', 'imprimes', 2, l1_id, 'Imprimés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('imprimes', 'fr', 'Imprimés');
            PERFORM insert_category_translations('imprimes', 'ar', 'مطبوعة');
            PERFORM insert_category_translations('imprimes', 'en', 'Printed');
            PERFORM insert_category_translations('imprimes', 'de', 'Bedruckt');
            PERFORM insert_category_translations('imprimes', 'es', 'Estampadas');
            PERFORM insert_category_translations('imprimes', 'it', 'Stampati');

            -- Level 2: chales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chales', 'chales', 2, l1_id, 'Châles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chales', 'fr', 'Châles');
            PERFORM insert_category_translations('chales', 'ar', 'شالات');
            PERFORM insert_category_translations('chales', 'en', 'Shawls');
            PERFORM insert_category_translations('chales', 'de', 'Schals (Breit)');
            PERFORM insert_category_translations('chales', 'es', 'Chales');
            PERFORM insert_category_translations('chales', 'it', 'Scialli');

            -- Level 2: etoles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('etoles', 'etoles', 2, l1_id, 'Étoles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('etoles', 'fr', 'Étoles');
            PERFORM insert_category_translations('etoles', 'ar', 'إيتول');
            PERFORM insert_category_translations('etoles', 'en', 'Stoles');
            PERFORM insert_category_translations('etoles', 'de', 'Stolas');
            PERFORM insert_category_translations('etoles', 'es', 'Estolas');
            PERFORM insert_category_translations('etoles', 'it', 'Stole');

            -- Level 2: poncho
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('poncho', 'poncho', 2, l1_id, 'Poncho')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('poncho', 'fr', 'Poncho');
            PERFORM insert_category_translations('poncho', 'ar', 'بونشو');
            PERFORM insert_category_translations('poncho', 'en', 'Poncho');
            PERFORM insert_category_translations('poncho', 'de', 'Poncho');
            PERFORM insert_category_translations('poncho', 'es', 'Poncho');
            PERFORM insert_category_translations('poncho', 'it', 'Poncho');

            -- Level 2: pashmina
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pashmina', 'pashmina', 2, l1_id, 'Pashmina')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pashmina', 'fr', 'Pashmina');
            PERFORM insert_category_translations('pashmina', 'ar', 'باشمينا');
            PERFORM insert_category_translations('pashmina', 'en', 'Pashmina');
            PERFORM insert_category_translations('pashmina', 'de', 'Pashmina');
            PERFORM insert_category_translations('pashmina', 'es', 'Pashmina');
            PERFORM insert_category_translations('pashmina', 'it', 'Pashmina');

            -- Level 2: snood
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('snood', 'snood', 2, l1_id, 'Snood')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('snood', 'fr', 'Snood');
            PERFORM insert_category_translations('snood', 'ar', 'سنود');
            PERFORM insert_category_translations('snood', 'en', 'Snood');
            PERFORM insert_category_translations('snood', 'de', 'Snood');
            PERFORM insert_category_translations('snood', 'es', 'Cuello');
            PERFORM insert_category_translations('snood', 'it', 'Snood');

            -- Level 2: cache-cou
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cache-cou', 'cache-cou', 2, l1_id, 'Cache-cou')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cache-cou', 'fr', 'Cache-cou');
            PERFORM insert_category_translations('cache-cou', 'ar', 'دفاية رقبة');
            PERFORM insert_category_translations('cache-cou', 'en', 'Neck warmer');
            PERFORM insert_category_translations('cache-cou', 'de', 'Halswärmer');
            PERFORM insert_category_translations('cache-cou', 'es', 'Calentador de cuello');
            PERFORM insert_category_translations('cache-cou', 'it', 'Scaldacollo');

            -- Level 2: polaire
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('polaire', 'polaire', 2, l1_id, 'Polaire')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('polaire', 'fr', 'Polaire');
            PERFORM insert_category_translations('polaire', 'ar', 'فليس');
            PERFORM insert_category_translations('polaire', 'en', 'Fleece');
            PERFORM insert_category_translations('polaire', 'de', 'Fleece');
            PERFORM insert_category_translations('polaire', 'es', 'Polar');
            PERFORM insert_category_translations('polaire', 'it', 'Pile');

        -- Level 1: gants
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gants', 'gants', 1, root_id, 'Gants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('gants', 'fr', 'Gants');
        PERFORM insert_category_translations('gants', 'ar', 'قفازات');
        PERFORM insert_category_translations('gants', 'en', 'Gloves');
        PERFORM insert_category_translations('gants', 'de', 'Handschuhe');
        PERFORM insert_category_translations('gants', 'es', 'Guantes');
        PERFORM insert_category_translations('gants', 'it', 'Guanti');

            -- Level 2: cuir-fourres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cuir-fourres', 'cuir-fourres', 2, l1_id, 'Cuir fourrés')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cuir-fourres', 'fr', 'Cuir fourrés');
            PERFORM insert_category_translations('cuir-fourres', 'ar', 'جلد مبطن');
            PERFORM insert_category_translations('cuir-fourres', 'en', 'Fur-lined leather');
            PERFORM insert_category_translations('cuir-fourres', 'de', 'Gefütterte Lederhandschuhe');
            PERFORM insert_category_translations('cuir-fourres', 'es', 'Cuero forrado');
            PERFORM insert_category_translations('cuir-fourres', 'it', 'Pelle foderata');

            -- Level 2: laine-tricot
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('laine-tricot', 'laine-tricot', 2, l1_id, 'Laine tricot')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('laine-tricot', 'fr', 'Laine tricot');
            PERFORM insert_category_translations('laine-tricot', 'ar', 'صوف محبوك');
            PERFORM insert_category_translations('laine-tricot', 'en', 'Knitted wool');
            PERFORM insert_category_translations('laine-tricot', 'de', 'Strickhandschuhe');
            PERFORM insert_category_translations('laine-tricot', 'es', 'Lana de punto');
            PERFORM insert_category_translations('laine-tricot', 'it', 'Lana lavorata a maglia');

            -- Level 2: ski
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ski', 'ski', 2, l1_id, 'Ski')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ski', 'fr', 'Ski');
            PERFORM insert_category_translations('ski', 'ar', 'تزلج');
            PERFORM insert_category_translations('ski', 'en', 'Ski');
            PERFORM insert_category_translations('ski', 'de', 'Skihandschuhe');
            PERFORM insert_category_translations('ski', 'es', 'Esquí');
            PERFORM insert_category_translations('ski', 'it', 'Sci');

            -- Level 2: moufles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('moufles', 'moufles', 2, l1_id, 'Moufles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('moufles', 'fr', 'Moufles');
            PERFORM insert_category_translations('moufles', 'ar', 'قفازات بدون أصابع');
            PERFORM insert_category_translations('moufles', 'en', 'Mittens');
            PERFORM insert_category_translations('moufles', 'de', 'Fäustlinge');
            PERFORM insert_category_translations('moufles', 'es', 'Manoplas');
            PERFORM insert_category_translations('moufles', 'it', 'Manopole');

            -- Level 2: mitaines
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mitaines', 'mitaines', 2, l1_id, 'Mitaines')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mitaines', 'fr', 'Mitaines');
            PERFORM insert_category_translations('mitaines', 'ar', 'قفازات نصفية');
            PERFORM insert_category_translations('mitaines', 'en', 'Fingerless gloves');
            PERFORM insert_category_translations('mitaines', 'de', 'Fingerlose Handschuhe');
            PERFORM insert_category_translations('mitaines', 'es', 'Guantes sin dedos');
            PERFORM insert_category_translations('mitaines', 'it', 'Guanti senza dita');

            -- Level 2: mi-saison
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mi-saison', 'mi-saison', 2, l1_id, 'Mi-saison')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mi-saison', 'fr', 'Mi-saison');
            PERFORM insert_category_translations('mi-saison', 'ar', 'نصف الموسم');
            PERFORM insert_category_translations('mi-saison', 'en', 'Mid-season');
            PERFORM insert_category_translations('mi-saison', 'de', 'Übergangshandschuhe');
            PERFORM insert_category_translations('mi-saison', 'es', 'Media estación');
            PERFORM insert_category_translations('mi-saison', 'it', 'Mezza stagione');

            -- Level 2: dentelle
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('dentelle', 'dentelle', 2, l1_id, 'Dentelle')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('dentelle', 'fr', 'Dentelle');
            PERFORM insert_category_translations('dentelle', 'ar', 'دانتيل');
            PERFORM insert_category_translations('dentelle', 'en', 'Lace');
            PERFORM insert_category_translations('dentelle', 'de', 'Spitzenhandschuhe');
            PERFORM insert_category_translations('dentelle', 'es', 'Encaje');
            PERFORM insert_category_translations('dentelle', 'it', 'Pizzo');

            -- Level 2: conduite
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('conduite', 'conduite', 2, l1_id, 'Conduite')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('conduite', 'fr', 'Conduite');
            PERFORM insert_category_translations('conduite', 'ar', 'قيادة');
            PERFORM insert_category_translations('conduite', 'en', 'Driving');
            PERFORM insert_category_translations('conduite', 'de', 'Autofahrerhandschuhe');
            PERFORM insert_category_translations('conduite', 'es', 'Conducción');
            PERFORM insert_category_translations('conduite', 'it', 'Guida');

            -- Level 2: tactiles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tactiles', 'tactiles', 2, l1_id, 'Tactiles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tactiles', 'fr', 'Tactiles');
            PERFORM insert_category_translations('tactiles', 'ar', 'تعمل باللمس');
            PERFORM insert_category_translations('tactiles', 'en', 'Touchscreen');
            PERFORM insert_category_translations('tactiles', 'de', 'Touchscreen-Handschuhe');
            PERFORM insert_category_translations('tactiles', 'es', 'Pantalla táctil');
            PERFORM insert_category_translations('tactiles', 'it', 'Touchscreen');

            -- Level 2: chauffants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chauffants', 'chauffants', 2, l1_id, 'Chauffants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chauffants', 'fr', 'Chauffants');
            PERFORM insert_category_translations('chauffants', 'ar', 'حرارية');
            PERFORM insert_category_translations('chauffants', 'en', 'Heated');
            PERFORM insert_category_translations('chauffants', 'de', 'Beheizbare Handschuhe');
            PERFORM insert_category_translations('chauffants', 'es', 'Calefactables');
            PERFORM insert_category_translations('chauffants', 'it', 'Riscaldanti');

        -- Level 1: cravates
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cravates', 'cravates', 1, root_id, 'Cravates')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('cravates', 'fr', 'Cravates');
        PERFORM insert_category_translations('cravates', 'ar', 'ربطات عنق');
        PERFORM insert_category_translations('cravates', 'en', 'Ties');
        PERFORM insert_category_translations('cravates', 'de', 'Krawatten');
        PERFORM insert_category_translations('cravates', 'es', 'Corbatas');
        PERFORM insert_category_translations('cravates', 'it', 'Cravatte');

            -- Level 2: classiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('classiques', 'classiques', 2, l1_id, 'Classiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('classiques', 'fr', 'Classiques');
            PERFORM insert_category_translations('classiques', 'ar', 'كلاسيكية');
            PERFORM insert_category_translations('classiques', 'en', 'Classic');
            PERFORM insert_category_translations('classiques', 'de', 'Klassisch');
            PERFORM insert_category_translations('classiques', 'es', 'Clásicas');
            PERFORM insert_category_translations('classiques', 'it', 'Classiche');

            -- Level 2: slim
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('slim', 'slim', 2, l1_id, 'Slim')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('slim', 'fr', 'Slim');
            PERFORM insert_category_translations('slim', 'ar', 'نحيف');
            PERFORM insert_category_translations('slim', 'en', 'Slim');
            PERFORM insert_category_translations('slim', 'de', 'Schmal');
            PERFORM insert_category_translations('slim', 'es', 'Slim');
            PERFORM insert_category_translations('slim', 'it', 'Slim');

            -- Level 2: skinny
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('skinny', 'skinny', 2, l1_id, 'Skinny')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('skinny', 'fr', 'Skinny');
            PERFORM insert_category_translations('skinny', 'ar', 'نحيف جداً');
            PERFORM insert_category_translations('skinny', 'en', 'Skinny');
            PERFORM insert_category_translations('skinny', 'de', 'Sehr schmal');
            PERFORM insert_category_translations('skinny', 'es', 'Muy estrechas');
            PERFORM insert_category_translations('skinny', 'it', 'Skinny');

            -- Level 2: soie
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soie', 'soie', 2, l1_id, 'Soie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('soie', 'fr', 'Soie');
            PERFORM insert_category_translations('soie', 'ar', 'حرير');
            PERFORM insert_category_translations('soie', 'en', 'Silk');
            PERFORM insert_category_translations('soie', 'de', 'Seide');
            PERFORM insert_category_translations('soie', 'es', 'Seda');
            PERFORM insert_category_translations('soie', 'it', 'Seta');

            -- Level 2: microfibre
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('microfibre', 'microfibre', 2, l1_id, 'Microfibre')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('microfibre', 'fr', 'Microfibre');
            PERFORM insert_category_translations('microfibre', 'ar', 'ميكروفايبر');
            PERFORM insert_category_translations('microfibre', 'en', 'Microfiber');
            PERFORM insert_category_translations('microfibre', 'de', 'Mikrofaser');
            PERFORM insert_category_translations('microfibre', 'es', 'Microfibra');
            PERFORM insert_category_translations('microfibre', 'it', 'Microfibra');

            -- Level 2: laine-tricot-cravate
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('laine-tricot-cravate', 'laine-tricot-cravate', 2, l1_id, 'Laine tricot')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('laine-tricot-cravate', 'fr', 'Laine tricot');
            PERFORM insert_category_translations('laine-tricot-cravate', 'ar', 'صوف محبوك');
            PERFORM insert_category_translations('laine-tricot-cravate', 'en', 'Knitted wool');
            PERFORM insert_category_translations('laine-tricot-cravate', 'de', 'Strickkrawatten');
            PERFORM insert_category_translations('laine-tricot-cravate', 'es', 'Lana de punto');
            PERFORM insert_category_translations('laine-tricot-cravate', 'it', 'Lana lavorata a maglia');

            -- Level 2: pre-nouees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pre-nouees', 'pre-nouees', 2, l1_id, 'Pré-nouées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pre-nouees', 'fr', 'Pré-nouées');
            PERFORM insert_category_translations('pre-nouees', 'ar', 'جاهزة الربط');
            PERFORM insert_category_translations('pre-nouees', 'en', 'Pre-tied');
            PERFORM insert_category_translations('pre-nouees', 'de', 'Vorgebunden');
            PERFORM insert_category_translations('pre-nouees', 'es', 'Preanudadas');
            PERFORM insert_category_translations('pre-nouees', 'it', 'Pre-annodate');

            -- Level 2: rayures
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('rayures', 'rayures', 2, l1_id, 'Rayures')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('rayures', 'fr', 'Rayures');
            PERFORM insert_category_translations('rayures', 'ar', 'مخططة');
            PERFORM insert_category_translations('rayures', 'en', 'Stripes');
            PERFORM insert_category_translations('rayures', 'de', 'Gestreift');
            PERFORM insert_category_translations('rayures', 'es', 'Rayas');
            PERFORM insert_category_translations('rayures', 'it', 'Strisce');

            -- Level 2: pois
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pois', 'pois', 2, l1_id, 'Pois')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pois', 'fr', 'Pois');
            PERFORM insert_category_translations('pois', 'ar', 'نقاط');
            PERFORM insert_category_translations('pois', 'en', 'Polka dots');
            PERFORM insert_category_translations('pois', 'de', 'Gepunktet');
            PERFORM insert_category_translations('pois', 'es', 'Lunares');
            PERFORM insert_category_translations('pois', 'it', 'Pois');

            -- Level 2: carreaux-cravate
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('carreaux-cravate', 'carreaux-cravate', 2, l1_id, 'Carreaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('carreaux-cravate', 'fr', 'Carreaux');
            PERFORM insert_category_translations('carreaux-cravate', 'ar', 'مربعات');
            PERFORM insert_category_translations('carreaux-cravate', 'en', 'Checks');
            PERFORM insert_category_translations('carreaux-cravate', 'de', 'Kariert');
            PERFORM insert_category_translations('carreaux-cravate', 'es', 'Cuadros');
            PERFORM insert_category_translations('carreaux-cravate', 'it', 'Quadri');

            -- Level 2: paisley
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('paisley', 'paisley', 2, l1_id, 'Paisley')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('paisley', 'fr', 'Paisley');
            PERFORM insert_category_translations('paisley', 'ar', 'بيزلي');
            PERFORM insert_category_translations('paisley', 'en', 'Paisley');
            PERFORM insert_category_translations('paisley', 'de', 'Paisley');
            PERFORM insert_category_translations('paisley', 'es', 'Paisley');
            PERFORM insert_category_translations('paisley', 'it', 'Paisley');

            -- Level 2: noeuds-papillon
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('noeuds-papillon', 'noeuds-papillon', 2, l1_id, 'Nœuds papillon')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('noeuds-papillon', 'fr', 'Nœuds papillon');
            PERFORM insert_category_translations('noeuds-papillon', 'ar', 'بابيون');
            PERFORM insert_category_translations('noeuds-papillon', 'en', 'Bow ties');
            PERFORM insert_category_translations('noeuds-papillon', 'de', 'Fliegen');
            PERFORM insert_category_translations('noeuds-papillon', 'es', 'Pajaritas');
            PERFORM insert_category_translations('noeuds-papillon', 'it', 'Papillon');

            -- Level 2: lavallieres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lavallieres', 'lavallieres', 2, l1_id, 'Lavallières')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lavallieres', 'fr', 'Lavallières');
            PERFORM insert_category_translations('lavallieres', 'ar', 'لافاليير');
            PERFORM insert_category_translations('lavallieres', 'en', 'Ascots');
            PERFORM insert_category_translations('lavallieres', 'de', 'Plastrons');
            PERFORM insert_category_translations('lavallieres', 'es', 'Ascots');
            PERFORM insert_category_translations('lavallieres', 'it', 'Ascot');

            -- Level 2: boutons-manchette
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('boutons-manchette', 'boutons-manchette', 2, l1_id, 'Boutons manchette')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('boutons-manchette', 'fr', 'Boutons manchette');
            PERFORM insert_category_translations('boutons-manchette', 'ar', 'أزرار أكمام');
            PERFORM insert_category_translations('boutons-manchette', 'en', 'Cufflinks');
            PERFORM insert_category_translations('boutons-manchette', 'de', 'Manschettenknöpfe');
            PERFORM insert_category_translations('boutons-manchette', 'es', 'Gemelos');
            PERFORM insert_category_translations('boutons-manchette', 'it', 'Gemelli');

            -- Level 2: pinces-cravate
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pinces-cravate', 'pinces-cravate', 2, l1_id, 'Pinces')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pinces-cravate', 'fr', 'Pinces');
            PERFORM insert_category_translations('pinces-cravate', 'ar', 'مشابك ربطة عنق');
            PERFORM insert_category_translations('pinces-cravate', 'en', 'Tie clips');
            PERFORM insert_category_translations('pinces-cravate', 'de', 'Krawattennadeln');
            PERFORM insert_category_translations('pinces-cravate', 'es', 'Clips de corbata');
            PERFORM insert_category_translations('pinces-cravate', 'it', 'Fermacravatta');

            -- Level 2: chaines-cravate
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chaines-cravate', 'chaines-cravate', 2, l1_id, 'Chaînes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chaines-cravate', 'fr', 'Chaînes');
            PERFORM insert_category_translations('chaines-cravate', 'ar', 'سلاسل ربطة عنق');
            PERFORM insert_category_translations('chaines-cravate', 'en', 'Tie chains');
            PERFORM insert_category_translations('chaines-cravate', 'de', 'Krawattenketten');
            PERFORM insert_category_translations('chaines-cravate', 'es', 'Cadenas de corbata');
            PERFORM insert_category_translations('chaines-cravate', 'it', 'Catene per cravatta');

        -- Level 1: divers-mode-accessoires
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('divers-mode-accessoires', 'divers-mode-accessoires', 1, root_id, 'Divers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('divers-mode-accessoires', 'fr', 'Divers');
        PERFORM insert_category_translations('divers-mode-accessoires', 'ar', 'متفرقات');
        PERFORM insert_category_translations('divers-mode-accessoires', 'en', 'Misc');
        PERFORM insert_category_translations('divers-mode-accessoires', 'de', 'Verschiedenes');
        PERFORM insert_category_translations('divers-mode-accessoires', 'es', 'Varios');
        PERFORM insert_category_translations('divers-mode-accessoires', 'it', 'Varie');

            -- Level 2: parapluies-compacts
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('parapluies-compacts', 'parapluies-compacts', 2, l1_id, 'Parapluies compacts')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('parapluies-compacts', 'fr', 'Parapluies compacts');
            PERFORM insert_category_translations('parapluies-compacts', 'ar', 'مظلات صغيرة');
            PERFORM insert_category_translations('parapluies-compacts', 'en', 'Compact umbrellas');
            PERFORM insert_category_translations('parapluies-compacts', 'de', 'Taschenschirme');
            PERFORM insert_category_translations('parapluies-compacts', 'es', 'Paraguas compactos');
            PERFORM insert_category_translations('parapluies-compacts', 'it', 'Ombrelli compatti');

            -- Level 2: parapluies-droits
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('parapluies-droits', 'parapluies-droits', 2, l1_id, 'Parapluies droits')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('parapluies-droits', 'fr', 'Parapluies droits');
            PERFORM insert_category_translations('parapluies-droits', 'ar', 'مظلات مستقيمة');
            PERFORM insert_category_translations('parapluies-droits', 'en', 'Straight umbrellas');
            PERFORM insert_category_translations('parapluies-droits', 'de', 'Stockschirme');
            PERFORM insert_category_translations('parapluies-droits', 'es', 'Paraguas rectos');
            PERFORM insert_category_translations('parapluies-droits', 'it', 'Ombrelli diritti');

            -- Level 2: tempete
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tempete', 'tempete', 2, l1_id, 'Tempête')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tempete', 'fr', 'Tempête');
            PERFORM insert_category_translations('tempete', 'ar', 'مضادة للعواصف');
            PERFORM insert_category_translations('tempete', 'en', 'Storm umbrellas');
            PERFORM insert_category_translations('tempete', 'de', 'Sturmschirme');
            PERFORM insert_category_translations('tempete', 'es', 'Tormenta');
            PERFORM insert_category_translations('tempete', 'it', 'Tempesta');

            -- Level 2: transparents
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('transparents', 'transparents', 2, l1_id, 'Transparents')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('transparents', 'fr', 'Transparents');
            PERFORM insert_category_translations('transparents', 'ar', 'شفافة');
            PERFORM insert_category_translations('transparents', 'en', 'Transparent umbrellas');
            PERFORM insert_category_translations('transparents', 'de', 'Transparente Schirme');
            PERFORM insert_category_translations('transparents', 'es', 'Transparentes');
            PERFORM insert_category_translations('transparents', 'it', 'Trasparenti');

            -- Level 2: golf-parapluies
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('golf-parapluies', 'golf-parapluies', 2, l1_id, 'Golf')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('golf-parapluies', 'fr', 'Golf');
            PERFORM insert_category_translations('golf-parapluies', 'ar', 'مظلات جولف');
            PERFORM insert_category_translations('golf-parapluies', 'en', 'Golf umbrellas');
            PERFORM insert_category_translations('golf-parapluies', 'de', 'Golfschirme');
            PERFORM insert_category_translations('golf-parapluies', 'es', 'Paraguas de golf');
            PERFORM insert_category_translations('golf-parapluies', 'it', 'Ombrelli da golf');

            -- Level 2: ombrelles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ombrelles', 'ombrelles', 2, l1_id, 'Ombrelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ombrelles', 'fr', 'Ombrelles');
            PERFORM insert_category_translations('ombrelles', 'ar', 'مظلات شمسية');
            PERFORM insert_category_translations('ombrelles', 'en', 'Parasols');
            PERFORM insert_category_translations('ombrelles', 'de', 'Sonnenschirme');
            PERFORM insert_category_translations('ombrelles', 'es', 'Sombrillas');
            PERFORM insert_category_translations('ombrelles', 'it', 'Ombrellini');

            -- Level 2: pins
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pins', 'pins', 2, l1_id, 'Pins')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pins', 'fr', 'Pins');
            PERFORM insert_category_translations('pins', 'ar', 'دبابيس');
            PERFORM insert_category_translations('pins', 'en', 'Pins');
            PERFORM insert_category_translations('pins', 'de', 'Pins');
            PERFORM insert_category_translations('pins', 'es', 'Pins');
            PERFORM insert_category_translations('pins', 'it', 'Pin');

            -- Level 2: badges
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('badges', 'badges', 2, l1_id, 'Badges')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('badges', 'fr', 'Badges');
            PERFORM insert_category_translations('badges', 'ar', 'شارات');
            PERFORM insert_category_translations('badges', 'en', 'Badges');
            PERFORM insert_category_translations('badges', 'de', 'Buttons');
            PERFORM insert_category_translations('badges', 'es', 'Insignias');
            PERFORM insert_category_translations('badges', 'it', 'Badge');

            -- Level 2: broches
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('broches', 'broches', 2, l1_id, 'Broches')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('broches', 'fr', 'Broches');
            PERFORM insert_category_translations('broches', 'ar', 'بروشات');
            PERFORM insert_category_translations('broches', 'en', 'Brooches');
            PERFORM insert_category_translations('broches', 'de', 'Broschen');
            PERFORM insert_category_translations('broches', 'es', 'Broches');
            PERFORM insert_category_translations('broches', 'it', 'Spille');

            -- Level 2: boutons
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('boutons', 'boutons', 2, l1_id, 'Boutons')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('boutons', 'fr', 'Boutons');
            PERFORM insert_category_translations('boutons', 'ar', 'أزرار');
            PERFORM insert_category_translations('boutons', 'en', 'Buttons');
            PERFORM insert_category_translations('boutons', 'de', 'Knöpfe');
            PERFORM insert_category_translations('boutons', 'es', 'Botones');
            PERFORM insert_category_translations('boutons', 'it', 'Bottoni');

        -- Level 1: intimes
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('intimes', 'intimes', 1, root_id, 'Intimes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('intimes', 'fr', 'Intimes');
        PERFORM insert_category_translations('intimes', 'ar', 'ملابس داخلية');
        PERFORM insert_category_translations('intimes', 'en', 'Intimates');
        PERFORM insert_category_translations('intimes', 'de', 'Wäsche & Strümpfe');
        PERFORM insert_category_translations('intimes', 'es', 'Íntimos');
        PERFORM insert_category_translations('intimes', 'it', 'Intimo');

            -- Level 2: collants-opaques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('collants-opaques', 'collants-opaques', 2, l1_id, 'Collants opaques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('collants-opaques', 'fr', 'Collants opaques');
            PERFORM insert_category_translations('collants-opaques', 'ar', 'جوارب طويلة معتمة');
            PERFORM insert_category_translations('collants-opaques', 'en', 'Opaque tights');
            PERFORM insert_category_translations('collants-opaques', 'de', 'Blickdichte Strumpfhosen');
            PERFORM insert_category_translations('collants-opaques', 'es', 'Medias opacas');
            PERFORM insert_category_translations('collants-opaques', 'it', 'Collant opachi');

            -- Level 2: collants-transparents
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('collants-transparents', 'collants-transparents', 2, l1_id, 'Collants transparents')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('collants-transparents', 'fr', 'Collants transparents');
            PERFORM insert_category_translations('collants-transparents', 'ar', 'جوارب طويلة شفافة');
            PERFORM insert_category_translations('collants-transparents', 'en', 'Sheer tights');
            PERFORM insert_category_translations('collants-transparents', 'de', 'Transparente Strumpfhosen');
            PERFORM insert_category_translations('collants-transparents', 'es', 'Medias transparentes');
            PERFORM insert_category_translations('collants-transparents', 'it', 'Collant velati');

            -- Level 2: bas-autofixants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bas-autofixants', 'bas-autofixants', 2, l1_id, 'Bas autofixants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bas-autofixants', 'fr', 'Bas autofixants');
            PERFORM insert_category_translations('bas-autofixants', 'ar', 'جوارب ذاتية التثبيت');
            PERFORM insert_category_translations('bas-autofixants', 'en', 'Hold-up stockings');
            PERFORM insert_category_translations('bas-autofixants', 'de', 'Halterlose Strümpfe');
            PERFORM insert_category_translations('bas-autofixants', 'es', 'Medias autoajustables');
            PERFORM insert_category_translations('bas-autofixants', 'it', 'Calze autoreggenti');

            -- Level 2: bas-couture
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bas-couture', 'bas-couture', 2, l1_id, 'Bas couture')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bas-couture', 'fr', 'Bas couture');
            PERFORM insert_category_translations('bas-couture', 'ar', 'جوارب بخياطة');
            PERFORM insert_category_translations('bas-couture', 'en', 'Seamed stockings');
            PERFORM insert_category_translations('bas-couture', 'de', 'Nahtstrümpfe');
            PERFORM insert_category_translations('bas-couture', 'es', 'Medias con costura');
            PERFORM insert_category_translations('bas-couture', 'it', 'Calze con cucitura');

            -- Level 2: resille
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('resille', 'resille', 2, l1_id, 'Résille')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('resille', 'fr', 'Résille');
            PERFORM insert_category_translations('resille', 'ar', 'شبكية');
            PERFORM insert_category_translations('resille', 'en', 'Fishnet');
            PERFORM insert_category_translations('resille', 'de', 'Netzstrümpfe');
            PERFORM insert_category_translations('resille', 'es', 'Rejilla');
            PERFORM insert_category_translations('resille', 'it', 'Rete');

            -- Level 2: maternite
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('maternite', 'maternite', 2, l1_id, 'Maternité')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('maternite', 'fr', 'Maternité');
            PERFORM insert_category_translations('maternite', 'ar', 'أمومة');
            PERFORM insert_category_translations('maternite', 'en', 'Maternity');
            PERFORM insert_category_translations('maternite', 'de', 'Umstandsstrumpfhosen');
            PERFORM insert_category_translations('maternite', 'es', 'Maternidad');
            PERFORM insert_category_translations('maternite', 'it', 'Maternità');

            -- Level 2: gainants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gainants', 'gainants', 2, l1_id, 'Gainants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gainants', 'fr', 'Gainants');
            PERFORM insert_category_translations('gainants', 'ar', 'مشدات');
            PERFORM insert_category_translations('gainants', 'en', 'Shapewear');
            PERFORM insert_category_translations('gainants', 'de', 'Formwäsche');
            PERFORM insert_category_translations('gainants', 'es', 'Fajas');
            PERFORM insert_category_translations('gainants', 'it', 'Modellanti');

            -- Level 2: thermiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('thermiques', 'thermiques', 2, l1_id, 'Thermiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('thermiques', 'fr', 'Thermiques');
            PERFORM insert_category_translations('thermiques', 'ar', 'حرارية');
            PERFORM insert_category_translations('thermiques', 'en', 'Thermal');
            PERFORM insert_category_translations('thermiques', 'de', 'Thermowäsche');
            PERFORM insert_category_translations('thermiques', 'es', 'Térmicas');
            PERFORM insert_category_translations('thermiques', 'it', 'Termici');

            -- Level 2: mi-bas
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mi-bas', 'mi-bas', 2, l1_id, 'Mi-bas')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mi-bas', 'fr', 'Mi-bas');
            PERFORM insert_category_translations('mi-bas', 'ar', 'جوارب نصفية');
            PERFORM insert_category_translations('mi-bas', 'en', 'Knee-highs');
            PERFORM insert_category_translations('mi-bas', 'de', 'Kniestrümpfe');
            PERFORM insert_category_translations('mi-bas', 'es', 'Medias hasta la rodilla');
            PERFORM insert_category_translations('mi-bas', 'it', 'Gambaletti');

            -- Level 2: chaussettes-ville
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chaussettes-ville', 'chaussettes-ville', 2, l1_id, 'Chaussettes ville')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chaussettes-ville', 'fr', 'Chaussettes ville');
            PERFORM insert_category_translations('chaussettes-ville', 'ar', 'جوارب رسمية');
            PERFORM insert_category_translations('chaussettes-ville', 'en', 'Dress socks');
            PERFORM insert_category_translations('chaussettes-ville', 'de', 'Business-Socken');
            PERFORM insert_category_translations('chaussettes-ville', 'es', 'Calcetines de vestir');
            PERFORM insert_category_translations('chaussettes-ville', 'it', 'Calze eleganti');

            -- Level 2: chaussettes-sport
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chaussettes-sport', 'chaussettes-sport', 2, l1_id, 'Chaussettes sport')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chaussettes-sport', 'fr', 'Chaussettes sport');
            PERFORM insert_category_translations('chaussettes-sport', 'ar', 'جوارب رياضية');
            PERFORM insert_category_translations('chaussettes-sport', 'en', 'Sport socks');
            PERFORM insert_category_translations('chaussettes-sport', 'de', 'Sportsocken');
            PERFORM insert_category_translations('chaussettes-sport', 'es', 'Calcetines deportivos');
            PERFORM insert_category_translations('chaussettes-sport', 'it', 'Calze sportive');

            -- Level 2: invisibles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('invisibles', 'invisibles', 2, l1_id, 'Invisibles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('invisibles', 'fr', 'Invisibles');
            PERFORM insert_category_translations('invisibles', 'ar', 'غير مرئية');
            PERFORM insert_category_translations('invisibles', 'en', 'No-show socks');
            PERFORM insert_category_translations('invisibles', 'de', 'Füßlinge');
            PERFORM insert_category_translations('invisibles', 'es', 'Invisible');
            PERFORM insert_category_translations('invisibles', 'it', 'Calze invisibili');

            -- Level 2: fantaisie-intimes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fantaisie-intimes', 'fantaisie-intimes', 2, l1_id, 'Fantaisie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fantaisie-intimes', 'fr', 'Fantaisie');
            PERFORM insert_category_translations('fantaisie-intimes', 'ar', 'مزخرفة');
            PERFORM insert_category_translations('fantaisie-intimes', 'en', 'Patterned');
            PERFORM insert_category_translations('fantaisie-intimes', 'de', 'Motivsocken');
            PERFORM insert_category_translations('fantaisie-intimes', 'es', 'Estampados');
            PERFORM insert_category_translations('fantaisie-intimes', 'it', 'Fantasia');

            -- Level 2: chaudes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chaudes', 'chaudes', 2, l1_id, 'Chaudes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chaudes', 'fr', 'Chaudes');
            PERFORM insert_category_translations('chaudes', 'ar', 'دافئة');
            PERFORM insert_category_translations('chaudes', 'en', 'Warm');
            PERFORM insert_category_translations('chaudes', 'de', 'Warme Socken');
            PERFORM insert_category_translations('chaudes', 'es', 'Cálidos');
            PERFORM insert_category_translations('chaudes', 'it', 'Calde');

            -- Level 2: bambou
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bambou', 'bambou', 2, l1_id, 'Bambou')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bambou', 'fr', 'Bambou');
            PERFORM insert_category_translations('bambou', 'ar', 'خيزران');
            PERFORM insert_category_translations('bambou', 'en', 'Bamboo');
            PERFORM insert_category_translations('bambou', 'de', 'Bambussocken');
            PERFORM insert_category_translations('bambou', 'es', 'Bambú');
            PERFORM insert_category_translations('bambou', 'it', 'Bambù');

            -- Level 2: antiderapantes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('antiderapantes', 'antiderapantes', 2, l1_id, 'Antidérapantes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('antiderapantes', 'fr', 'Antidérapantes');
            PERFORM insert_category_translations('antiderapantes', 'ar', 'مانعة للانزلاق');
            PERFORM insert_category_translations('antiderapantes', 'en', 'Non-slip');
            PERFORM insert_category_translations('antiderapantes', 'de', 'Rutschfeste Socken');
            PERFORM insert_category_translations('antiderapantes', 'es', 'Antideslizantes');
            PERFORM insert_category_translations('antiderapantes', 'it', 'Antiscivolo');

            -- Level 2: porte-jarretelles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('porte-jarretelles', 'porte-jarretelles', 2, l1_id, 'Porte-jarretelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('porte-jarretelles', 'fr', 'Porte-jarretelles');
            PERFORM insert_category_translations('porte-jarretelles', 'ar', 'حمالات جوارب');
            PERFORM insert_category_translations('porte-jarretelles', 'en', 'Garters');
            PERFORM insert_category_translations('porte-jarretelles', 'de', 'Strumpfhalter');
            PERFORM insert_category_translations('porte-jarretelles', 'es', 'Ligas');
            PERFORM insert_category_translations('porte-jarretelles', 'it', 'Reggicalze');

        -- Level 1: entretien-accessoires
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('entretien-accessoires', 'entretien-accessoires', 1, root_id, 'Entretien')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('entretien-accessoires', 'fr', 'Entretien');
        PERFORM insert_category_translations('entretien-accessoires', 'ar', 'العناية');
        PERFORM insert_category_translations('entretien-accessoires', 'en', 'Care');
        PERFORM insert_category_translations('entretien-accessoires', 'de', 'Pflege');
        PERFORM insert_category_translations('entretien-accessoires', 'es', 'Cuidado');
        PERFORM insert_category_translations('entretien-accessoires', 'it', 'Cura');

            -- Level 2: cirage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cirage', 'cirage', 2, l1_id, 'Cirage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cirage', 'fr', 'Cirage');
            PERFORM insert_category_translations('cirage', 'ar', 'ملمع أحذية');
            PERFORM insert_category_translations('cirage', 'en', 'Polish');
            PERFORM insert_category_translations('cirage', 'de', 'Schuhcreme');
            PERFORM insert_category_translations('cirage', 'es', 'Betún');
            PERFORM insert_category_translations('cirage', 'it', 'Lucido');

            -- Level 2: impermeabilisant
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('impermeabilisant', 'impermeabilisant', 2, l1_id, 'Imperméabilisant')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('impermeabilisant', 'fr', 'Imperméabilisant');
            PERFORM insert_category_translations('impermeabilisant', 'ar', 'مقاوم للماء');
            PERFORM insert_category_translations('impermeabilisant', 'en', 'Waterproofing spray');
            PERFORM insert_category_translations('impermeabilisant', 'de', 'Imprägnierspray');
            PERFORM insert_category_translations('impermeabilisant', 'es', 'Spray impermeabilizante');
            PERFORM insert_category_translations('impermeabilisant', 'it', 'Impermeabilizzante');

            -- Level 2: detachant
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('detachant', 'detachant', 2, l1_id, 'Détachant')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('detachant', 'fr', 'Détachant');
            PERFORM insert_category_translations('detachant', 'ar', 'مزيل بقع');
            PERFORM insert_category_translations('detachant', 'en', 'Stain remover');
            PERFORM insert_category_translations('detachant', 'de', 'Fleckenentferner');
            PERFORM insert_category_translations('detachant', 'es', 'Quitamanchas');
            PERFORM insert_category_translations('detachant', 'it', 'Smacchiatore');

            -- Level 2: nettoyant
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('nettoyant', 'nettoyant', 2, l1_id, 'Nettoyant')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('nettoyant', 'fr', 'Nettoyant');
            PERFORM insert_category_translations('nettoyant', 'ar', 'منظف');
            PERFORM insert_category_translations('nettoyant', 'en', 'Cleaner');
            PERFORM insert_category_translations('nettoyant', 'de', 'Reiniger');
            PERFORM insert_category_translations('nettoyant', 'es', 'Limpiador');
            PERFORM insert_category_translations('nettoyant', 'it', 'Detergente');

            -- Level 2: nourrissant
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('nourrissant', 'nourrissant', 2, l1_id, 'Nourrissant')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('nourrissant', 'fr', 'Nourrissant');
            PERFORM insert_category_translations('nourrissant', 'ar', 'مغذي');
            PERFORM insert_category_translations('nourrissant', 'en', 'Conditioner');
            PERFORM insert_category_translations('nourrissant', 'de', 'Pflegemittel');
            PERFORM insert_category_translations('nourrissant', 'es', 'Acondicionador');
            PERFORM insert_category_translations('nourrissant', 'it', 'Nutriente');

            -- Level 2: deodorant
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('deodorant', 'deodorant', 2, l1_id, 'Déodorant')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('deodorant', 'fr', 'Déodorant');
            PERFORM insert_category_translations('deodorant', 'ar', 'مزيل رائحة');
            PERFORM insert_category_translations('deodorant', 'en', 'Deodorizer');
            PERFORM insert_category_translations('deodorant', 'de', 'Schuhdeo');
            PERFORM insert_category_translations('deodorant', 'es', 'Desodorizante');
            PERFORM insert_category_translations('deodorant', 'it', 'Deodorante');

            -- Level 2: boites-bijoux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('boites-bijoux', 'boites-bijoux', 2, l1_id, 'Boîtes bijoux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('boites-bijoux', 'fr', 'Boîtes bijoux');
            PERFORM insert_category_translations('boites-bijoux', 'ar', 'صناديق مجوهرات');
            PERFORM insert_category_translations('boites-bijoux', 'en', 'Jewelry boxes');
            PERFORM insert_category_translations('boites-bijoux', 'de', 'Schmuckkästchen');
            PERFORM insert_category_translations('boites-bijoux', 'es', 'Cajas de joyería');
            PERFORM insert_category_translations('boites-bijoux', 'it', 'Portagioie');

            -- Level 2: presentoirs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('presentoirs', 'presentoirs', 2, l1_id, 'Présentoirs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('presentoirs', 'fr', 'Présentoirs');
            PERFORM insert_category_translations('presentoirs', 'ar', 'حوامل عرض');
            PERFORM insert_category_translations('presentoirs', 'en', 'Displays');
            PERFORM insert_category_translations('presentoirs', 'de', 'Schmuckständer');
            PERFORM insert_category_translations('presentoirs', 'es', 'Expositores');
            PERFORM insert_category_translations('presentoirs', 'it', 'Espositori');

            -- Level 2: housses-vetements
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('housses-vetements', 'housses-vetements', 2, l1_id, 'Housses vêtements')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('housses-vetements', 'fr', 'Housses vêtements');
            PERFORM insert_category_translations('housses-vetements', 'ar', 'أغطية ملابس');
            PERFORM insert_category_translations('housses-vetements', 'en', 'Garment covers');
            PERFORM insert_category_translations('housses-vetements', 'de', 'Kleidersäcke');
            PERFORM insert_category_translations('housses-vetements', 'es', 'Fundas de ropa');
            PERFORM insert_category_translations('housses-vetements', 'it', 'Custodie per abiti');

            -- Level 2: compression
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('compression', 'compression', 2, l1_id, 'Compression')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('compression', 'fr', 'Compression');
            PERFORM insert_category_translations('compression', 'ar', 'ضغط');
            PERFORM insert_category_translations('compression', 'en', 'Compression');
            PERFORM insert_category_translations('compression', 'de', 'Kompressionsbeutel');
            PERFORM insert_category_translations('compression', 'es', 'Compresión');
            PERFORM insert_category_translations('compression', 'it', 'Compressione');

            -- Level 2: embauchoirs-bois
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('embauchoirs-bois', 'embauchoirs-bois', 2, l1_id, 'Embauchoirs bois')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('embauchoirs-bois', 'fr', 'Embauchoirs bois');
            PERFORM insert_category_translations('embauchoirs-bois', 'ar', 'موسعات أحذية خشبية');
            PERFORM insert_category_translations('embauchoirs-bois', 'en', 'Wooden shoe trees');
            PERFORM insert_category_translations('embauchoirs-bois', 'de', 'Schuhspanner (Holz)');
            PERFORM insert_category_translations('embauchoirs-bois', 'es', 'Hormas de madera');
            PERFORM insert_category_translations('embauchoirs-bois', 'it', 'Tendiscarpe in legno');

            -- Level 2: embauchoirs-plastique
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('embauchoirs-plastique', 'embauchoirs-plastique', 2, l1_id, 'Embauchoirs plastique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('embauchoirs-plastique', 'fr', 'Embauchoirs plastique');
            PERFORM insert_category_translations('embauchoirs-plastique', 'ar', 'موسعات أحذية بلاستيكية');
            PERFORM insert_category_translations('embauchoirs-plastique', 'en', 'Plastic shoe trees');
            PERFORM insert_category_translations('embauchoirs-plastique', 'de', 'Schuhspanner (Kunststoff)');
            PERFORM insert_category_translations('embauchoirs-plastique', 'es', 'Hormas de plástico');
            PERFORM insert_category_translations('embauchoirs-plastique', 'it', 'Tendiscarpe in plastica');

            -- Level 2: talonnettes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('talonnettes', 'talonnettes', 2, l1_id, 'Talonnettes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('talonnettes', 'fr', 'Talonnettes');
            PERFORM insert_category_translations('talonnettes', 'ar', 'وسادات كعب');
            PERFORM insert_category_translations('talonnettes', 'en', 'Heel pads');
            PERFORM insert_category_translations('talonnettes', 'de', 'Fersenkissen');
            PERFORM insert_category_translations('talonnettes', 'es', 'Almohadillas de talón');
            PERFORM insert_category_translations('talonnettes', 'it', 'Sottotacchi');

            -- Level 2: semelles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('semelles', 'semelles', 2, l1_id, 'Semelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('semelles', 'fr', 'Semelles');
            PERFORM insert_category_translations('semelles', 'ar', 'نعال');
            PERFORM insert_category_translations('semelles', 'en', 'Insoles');
            PERFORM insert_category_translations('semelles', 'de', 'Einlegesohlen');
            PERFORM insert_category_translations('semelles', 'es', 'Plantillas');
            PERFORM insert_category_translations('semelles', 'it', 'Soletti');

            -- Level 2: lacets
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lacets', 'lacets', 2, l1_id, 'Lacets')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lacets', 'fr', 'Lacets');
            PERFORM insert_category_translations('lacets', 'ar', 'أربطة');
            PERFORM insert_category_translations('lacets', 'en', 'Laces');
            PERFORM insert_category_translations('lacets', 'de', 'Schnürsenkel');
            PERFORM insert_category_translations('lacets', 'es', 'Cordones');
            PERFORM insert_category_translations('lacets', 'it', 'Lacci');

            -- Level 2: chausse-pied
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('chausse-pied', 'chausse-pied', 2, l1_id, 'Chausse-pied')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('chausse-pied', 'fr', 'Chausse-pied');
            PERFORM insert_category_translations('chausse-pied', 'ar', 'ملعقة حذاء');
            PERFORM insert_category_translations('chausse-pied', 'en', 'Shoe horn');
            PERFORM insert_category_translations('chausse-pied', 'de', 'Schuhlöffel');
            PERFORM insert_category_translations('chausse-pied', 'es', 'Calzador');
            PERFORM insert_category_translations('chausse-pied', 'it', 'Calzascarpe');

            -- Level 2: cintres-bois
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cintres-bois', 'cintres-bois', 2, l1_id, 'Cintres bois')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cintres-bois', 'fr', 'Cintres bois');
            PERFORM insert_category_translations('cintres-bois', 'ar', 'علاقات خشبية');
            PERFORM insert_category_translations('cintres-bois', 'en', 'Wooden hangers');
            PERFORM insert_category_translations('cintres-bois', 'de', 'Holzkleiderbügel');
            PERFORM insert_category_translations('cintres-bois', 'es', 'Perchas de madera');
            PERFORM insert_category_translations('cintres-bois', 'it', 'Grucce in legno');

            -- Level 2: cintres-velours
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cintres-velours', 'cintres-velours', 2, l1_id, 'Cintres velours')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cintres-velours', 'fr', 'Cintres velours');
            PERFORM insert_category_translations('cintres-velours', 'ar', 'علاقات مخملية');
            PERFORM insert_category_translations('cintres-velours', 'en', 'Velvet hangers');
            PERFORM insert_category_translations('cintres-velours', 'de', 'Samtkleiderbügel');
            PERFORM insert_category_translations('cintres-velours', 'es', 'Perchas de terciopelo');
            PERFORM insert_category_translations('cintres-velours', 'it', 'Grucce in velluto');

            -- Level 2: cintres-metal
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cintres-metal', 'cintres-metal', 2, l1_id, 'Cintres métal')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cintres-metal', 'fr', 'Cintres métal');
            PERFORM insert_category_translations('cintres-metal', 'ar', 'علاقات معدنية');
            PERFORM insert_category_translations('cintres-metal', 'en', 'Metal hangers');
            PERFORM insert_category_translations('cintres-metal', 'de', 'Metallkleiderbügel');
            PERFORM insert_category_translations('cintres-metal', 'es', 'Perchas de metal');
            PERFORM insert_category_translations('cintres-metal', 'it', 'Grucce in metallo');

            -- Level 2: organiseurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('organiseurs', 'organiseurs', 2, l1_id, 'Organiseurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('organiseurs', 'fr', 'Organiseurs');
            PERFORM insert_category_translations('organiseurs', 'ar', 'منظّمات');
            PERFORM insert_category_translations('organiseurs', 'en', 'Organizers');
            PERFORM insert_category_translations('organiseurs', 'de', 'Organizer');
            PERFORM insert_category_translations('organiseurs', 'es', 'Organizadores');
            PERFORM insert_category_translations('organiseurs', 'it', 'Organizer');

            -- Level 2: sous-vide
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sous-vide', 'sous-vide', 2, l1_id, 'Sous-vide')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sous-vide', 'fr', 'Sous-vide');
            PERFORM insert_category_translations('sous-vide', 'ar', 'أكياس تفريغ الهواء');
            PERFORM insert_category_translations('sous-vide', 'en', 'Vacuum bags');
            PERFORM insert_category_translations('sous-vide', 'de', 'Vakuumbeutel');
            PERFORM insert_category_translations('sous-vide', 'es', 'Bolsas de vacío');
            PERFORM insert_category_translations('sous-vide', 'it', 'Sacchetti sottovuoto');
END $$;