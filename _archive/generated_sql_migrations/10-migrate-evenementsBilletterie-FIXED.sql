-- Migration: Événements & Billetterie (Generated Recursive)
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

    -- Level 0: evenements-billetterie
    INSERT INTO categories (id, slug, level, name)
    VALUES ('evenements-billetterie', 'evenements-billetterie', 0, 'Événements & Billetterie')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 0, name = EXCLUDED.name
    RETURNING id INTO root_id;
    PERFORM insert_category_translations('evenements-billetterie', 'fr', 'Événements & Billetterie');
    PERFORM insert_category_translations('evenements-billetterie', 'ar', 'الفعاليات والتذاكر');
    PERFORM insert_category_translations('evenements-billetterie', 'en', 'Events & Ticketing');
    PERFORM insert_category_translations('evenements-billetterie', 'de', 'Veranstaltungen & Tickets');
    PERFORM insert_category_translations('evenements-billetterie', 'es', 'Eventos y Entradas');
    PERFORM insert_category_translations('evenements-billetterie', 'it', 'Eventi & Biglietteria');

        -- Level 1: concerts-spectacles
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('concerts-spectacles', 'concerts-spectacles', 1, root_id, 'Concerts & Spectacles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('concerts-spectacles', 'fr', 'Concerts & Spectacles');
        PERFORM insert_category_translations('concerts-spectacles', 'ar', 'حفلات وعروض');
        PERFORM insert_category_translations('concerts-spectacles', 'en', 'Concerts & Shows');
        PERFORM insert_category_translations('concerts-spectacles', 'de', 'Konzerte & Shows');
        PERFORM insert_category_translations('concerts-spectacles', 'es', 'Conciertos y Espectáculos');
        PERFORM insert_category_translations('concerts-spectacles', 'it', 'Concerti & Spettacoli');

            -- Level 2: concerts-live
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('concerts-live', 'concerts-live', 2, l1_id, 'concerts live')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('concerts-live', 'fr', 'concerts live');
            PERFORM insert_category_translations('concerts-live', 'ar', 'حفلات مباشرة');
            PERFORM insert_category_translations('concerts-live', 'en', 'live concerts');
            PERFORM insert_category_translations('concerts-live', 'de', 'Live-Konzerte');
            PERFORM insert_category_translations('concerts-live', 'es', 'conciertos en vivo');
            PERFORM insert_category_translations('concerts-live', 'it', 'concerti live');

            -- Level 2: festivals-musicaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('festivals-musicaux', 'festivals-musicaux', 2, l1_id, 'festivals musicaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('festivals-musicaux', 'fr', 'festivals musicaux');
            PERFORM insert_category_translations('festivals-musicaux', 'ar', 'مهرجانات موسيقية');
            PERFORM insert_category_translations('festivals-musicaux', 'en', 'music festivals');
            PERFORM insert_category_translations('festivals-musicaux', 'de', 'Musikfestivals');
            PERFORM insert_category_translations('festivals-musicaux', 'es', 'festivales de música');
            PERFORM insert_category_translations('festivals-musicaux', 'it', 'festival musicali');

            -- Level 2: spectacles-humoristiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('spectacles-humoristiques', 'spectacles-humoristiques', 2, l1_id, 'spectacles humoristiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('spectacles-humoristiques', 'fr', 'spectacles humoristiques');
            PERFORM insert_category_translations('spectacles-humoristiques', 'ar', 'عروض كوميدية');
            PERFORM insert_category_translations('spectacles-humoristiques', 'en', 'comedy shows');
            PERFORM insert_category_translations('spectacles-humoristiques', 'de', 'Comedyshows');
            PERFORM insert_category_translations('spectacles-humoristiques', 'es', 'espectáculos de comedia');
            PERFORM insert_category_translations('spectacles-humoristiques', 'it', 'spettacoli comici');

            -- Level 2: one-man-show
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('one-man-show', 'one-man-show', 2, l1_id, 'one-man-show')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('one-man-show', 'fr', 'one-man-show');
            PERFORM insert_category_translations('one-man-show', 'ar', 'عرض فردي');
            PERFORM insert_category_translations('one-man-show', 'en', 'one-man show');
            PERFORM insert_category_translations('one-man-show', 'de', 'Soloshow');
            PERFORM insert_category_translations('one-man-show', 'es', 'monólogos');
            PERFORM insert_category_translations('one-man-show', 'it', 'one-man show');

            -- Level 2: comedies-musicales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('comedies-musicales', 'comedies-musicales', 2, l1_id, 'comédies musicales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('comedies-musicales', 'fr', 'comédies musicales');
            PERFORM insert_category_translations('comedies-musicales', 'ar', 'كوميديا موسيقية');
            PERFORM insert_category_translations('comedies-musicales', 'en', 'musicals');
            PERFORM insert_category_translations('comedies-musicales', 'de', 'Musicals');
            PERFORM insert_category_translations('comedies-musicales', 'es', 'musicales');
            PERFORM insert_category_translations('comedies-musicales', 'it', 'musical');

            -- Level 2: soirees-artistiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soirees-artistiques', 'soirees-artistiques', 2, l1_id, 'soirées artistiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('soirees-artistiques', 'fr', 'soirées artistiques');
            PERFORM insert_category_translations('soirees-artistiques', 'ar', 'أمسيات فنية');
            PERFORM insert_category_translations('soirees-artistiques', 'en', 'art nights');
            PERFORM insert_category_translations('soirees-artistiques', 'de', 'Kunstabende');
            PERFORM insert_category_translations('soirees-artistiques', 'es', 'noches artísticas');
            PERFORM insert_category_translations('soirees-artistiques', 'it', 'serate artistiche');

            -- Level 2: performances-culturelles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('performances-culturelles', 'performances-culturelles', 2, l1_id, 'performances culturelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('performances-culturelles', 'fr', 'performances culturelles');
            PERFORM insert_category_translations('performances-culturelles', 'ar', 'عروض ثقافية');
            PERFORM insert_category_translations('performances-culturelles', 'en', 'cultural performances');
            PERFORM insert_category_translations('performances-culturelles', 'de', 'Kulturelle Aufführungen');
            PERFORM insert_category_translations('performances-culturelles', 'es', 'actuaciones culturales');
            PERFORM insert_category_translations('performances-culturelles', 'it', 'performance culturali');

            -- Level 2: recitals
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('recitals', 'recitals', 2, l1_id, 'récitals')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('recitals', 'fr', 'récitals');
            PERFORM insert_category_translations('recitals', 'ar', 'ريسيطال');
            PERFORM insert_category_translations('recitals', 'en', 'recitals');
            PERFORM insert_category_translations('recitals', 'de', 'Rezitals');
            PERFORM insert_category_translations('recitals', 'es', 'recitales');
            PERFORM insert_category_translations('recitals', 'it', 'recital');

        -- Level 1: evenements-sportifs
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('evenements-sportifs', 'evenements-sportifs', 1, root_id, 'Événements Sportifs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('evenements-sportifs', 'fr', 'Événements Sportifs');
        PERFORM insert_category_translations('evenements-sportifs', 'ar', 'فعاليات رياضية');
        PERFORM insert_category_translations('evenements-sportifs', 'en', 'Sports Events');
        PERFORM insert_category_translations('evenements-sportifs', 'de', 'Sportveranstaltungen');
        PERFORM insert_category_translations('evenements-sportifs', 'es', 'Eventos Deportivos');
        PERFORM insert_category_translations('evenements-sportifs', 'it', 'Eventi Sportivi');

            -- Level 2: matchs-football
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('matchs-football', 'matchs-football', 2, l1_id, 'matchs de football')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('matchs-football', 'fr', 'matchs de football');
            PERFORM insert_category_translations('matchs-football', 'ar', 'مباريات كرة قدم');
            PERFORM insert_category_translations('matchs-football', 'en', 'football matches');
            PERFORM insert_category_translations('matchs-football', 'de', 'Fußballspiele');
            PERFORM insert_category_translations('matchs-football', 'es', 'partidos de fútbol');
            PERFORM insert_category_translations('matchs-football', 'it', 'partite di calcio');

            -- Level 2: competitions-sportives
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('competitions-sportives', 'competitions-sportives', 2, l1_id, 'compétitions sportives')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('competitions-sportives', 'fr', 'compétitions sportives');
            PERFORM insert_category_translations('competitions-sportives', 'ar', 'مسابقات رياضية');
            PERFORM insert_category_translations('competitions-sportives', 'en', 'sport competitions');
            PERFORM insert_category_translations('competitions-sportives', 'de', 'Sportwettbewerbe');
            PERFORM insert_category_translations('competitions-sportives', 'es', 'competiciones deportivas');
            PERFORM insert_category_translations('competitions-sportives', 'it', 'competizioni sportive');

            -- Level 2: tournois
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('tournois', 'tournois', 2, l1_id, 'tournois')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('tournois', 'fr', 'tournois');
            PERFORM insert_category_translations('tournois', 'ar', 'بطولات');
            PERFORM insert_category_translations('tournois', 'en', 'tournaments');
            PERFORM insert_category_translations('tournois', 'de', 'Turniere');
            PERFORM insert_category_translations('tournois', 'es', 'torneos');
            PERFORM insert_category_translations('tournois', 'it', 'tornei');

            -- Level 2: sports-mecaniques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('sports-mecaniques', 'sports-mecaniques', 2, l1_id, 'sports mécaniques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('sports-mecaniques', 'fr', 'sports mécaniques');
            PERFORM insert_category_translations('sports-mecaniques', 'ar', 'رياضات ميكانيكية');
            PERFORM insert_category_translations('sports-mecaniques', 'en', 'motor sports');
            PERFORM insert_category_translations('sports-mecaniques', 'de', 'Motorsport');
            PERFORM insert_category_translations('sports-mecaniques', 'es', 'deportes de motor');
            PERFORM insert_category_translations('sports-mecaniques', 'it', 'sport motoristici');

            -- Level 2: arts-martiaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('arts-martiaux', 'arts-martiaux', 2, l1_id, 'arts martiaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('arts-martiaux', 'fr', 'arts martiaux');
            PERFORM insert_category_translations('arts-martiaux', 'ar', 'فنون قتالية');
            PERFORM insert_category_translations('arts-martiaux', 'en', 'martial arts');
            PERFORM insert_category_translations('arts-martiaux', 'de', 'Kampfsport');
            PERFORM insert_category_translations('arts-martiaux', 'es', 'artes marciales');
            PERFORM insert_category_translations('arts-martiaux', 'it', 'arti marziali');

            -- Level 2: marathons
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('marathons', 'marathons', 2, l1_id, 'marathons')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('marathons', 'fr', 'marathons');
            PERFORM insert_category_translations('marathons', 'ar', 'ماراثونات');
            PERFORM insert_category_translations('marathons', 'en', 'marathons');
            PERFORM insert_category_translations('marathons', 'de', 'Marathons');
            PERFORM insert_category_translations('marathons', 'es', 'maratones');
            PERFORM insert_category_translations('marathons', 'it', 'maratone');

            -- Level 2: evenements-e-sport
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('evenements-e-sport', 'evenements-e-sport', 2, l1_id, 'événements e-sport')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('evenements-e-sport', 'fr', 'événements e-sport');
            PERFORM insert_category_translations('evenements-e-sport', 'ar', 'فعاليات الرياضات الإلكترونية');
            PERFORM insert_category_translations('evenements-e-sport', 'en', 'e-sport events');
            PERFORM insert_category_translations('evenements-e-sport', 'de', 'E-Sport-Events');
            PERFORM insert_category_translations('evenements-e-sport', 'es', 'eventos de e-sports');
            PERFORM insert_category_translations('evenements-e-sport', 'it', 'eventi e-sport');

        -- Level 1: cinema-avant-premieres
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cinema-avant-premieres', 'cinema-avant-premieres', 1, root_id, 'Cinéma & Avant-premières')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('cinema-avant-premieres', 'fr', 'Cinéma & Avant-premières');
        PERFORM insert_category_translations('cinema-avant-premieres', 'ar', 'سينما وعروض أولى');
        PERFORM insert_category_translations('cinema-avant-premieres', 'en', 'Cinema & Premieres');
        PERFORM insert_category_translations('cinema-avant-premieres', 'de', 'Kino & Premieren');
        PERFORM insert_category_translations('cinema-avant-premieres', 'es', 'Cine y Estrenos');
        PERFORM insert_category_translations('cinema-avant-premieres', 'it', 'Cinema & Anteprime');

            -- Level 2: billets-cinema
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('billets-cinema', 'billets-cinema', 2, l1_id, 'billets cinéma')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('billets-cinema', 'fr', 'billets cinéma');
            PERFORM insert_category_translations('billets-cinema', 'ar', 'تذاكر سينما');
            PERFORM insert_category_translations('billets-cinema', 'en', 'cinema tickets');
            PERFORM insert_category_translations('billets-cinema', 'de', 'Kinokarten');
            PERFORM insert_category_translations('billets-cinema', 'es', 'entradas de cine');
            PERFORM insert_category_translations('billets-cinema', 'it', 'biglietti cinema');

            -- Level 2: projections-speciales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('projections-speciales', 'projections-speciales', 2, l1_id, 'projections spéciales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('projections-speciales', 'fr', 'projections spéciales');
            PERFORM insert_category_translations('projections-speciales', 'ar', 'عروض خاصة');
            PERFORM insert_category_translations('projections-speciales', 'en', 'special screenings');
            PERFORM insert_category_translations('projections-speciales', 'de', 'Sondervorführungen');
            PERFORM insert_category_translations('projections-speciales', 'es', 'proyecciones especiales');
            PERFORM insert_category_translations('projections-speciales', 'it', 'proiezioni speciali');

            -- Level 2: avant-premieres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('avant-premieres', 'avant-premieres', 2, l1_id, 'avant-premières')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('avant-premieres', 'fr', 'avant-premières');
            PERFORM insert_category_translations('avant-premieres', 'ar', 'عروض أولى');
            PERFORM insert_category_translations('avant-premieres', 'en', 'premieres');
            PERFORM insert_category_translations('avant-premieres', 'de', 'Premieren');
            PERFORM insert_category_translations('avant-premieres', 'es', 'estrenos');
            PERFORM insert_category_translations('avant-premieres', 'it', 'anteprime');

            -- Level 2: festivals-film
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('festivals-film', 'festivals-film', 2, l1_id, 'festivals du film')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('festivals-film', 'fr', 'festivals du film');
            PERFORM insert_category_translations('festivals-film', 'ar', 'مهرجانات الفيلم');
            PERFORM insert_category_translations('festivals-film', 'en', 'film festivals');
            PERFORM insert_category_translations('festivals-film', 'de', 'Filmfestivals');
            PERFORM insert_category_translations('festivals-film', 'es', 'festivales de cine');
            PERFORM insert_category_translations('festivals-film', 'it', 'festival del cinema');

            -- Level 2: seances-vip
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('seances-vip', 'seances-vip', 2, l1_id, 'séances VIP')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('seances-vip', 'fr', 'séances VIP');
            PERFORM insert_category_translations('seances-vip', 'ar', 'جلسات كبار الشخصيات');
            PERFORM insert_category_translations('seances-vip', 'en', 'VIP sessions');
            PERFORM insert_category_translations('seances-vip', 'de', 'VIP-Vorstellungen');
            PERFORM insert_category_translations('seances-vip', 'es', 'sesiones VIP');
            PERFORM insert_category_translations('seances-vip', 'it', 'sessioni VIP');

        -- Level 1: theatre-arts-sceniques
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('theatre-arts-sceniques', 'theatre-arts-sceniques', 1, root_id, 'Théâtre & Arts Scéniques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('theatre-arts-sceniques', 'fr', 'Théâtre & Arts Scéniques');
        PERFORM insert_category_translations('theatre-arts-sceniques', 'ar', 'مسرح وفنون استعراضية');
        PERFORM insert_category_translations('theatre-arts-sceniques', 'en', 'Theatre & Performing Arts');
        PERFORM insert_category_translations('theatre-arts-sceniques', 'de', 'Theater & Darstellende Künste');
        PERFORM insert_category_translations('theatre-arts-sceniques', 'es', 'Teatro y Artes Escénicas');
        PERFORM insert_category_translations('theatre-arts-sceniques', 'it', 'Teatro & Arti Performative');

            -- Level 2: pieces-theatre
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pieces-theatre', 'pieces-theatre', 2, l1_id, 'pièces de théâtre')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pieces-theatre', 'fr', 'pièces de théâtre');
            PERFORM insert_category_translations('pieces-theatre', 'ar', 'مسرحيات');
            PERFORM insert_category_translations('pieces-theatre', 'en', 'plays');
            PERFORM insert_category_translations('pieces-theatre', 'de', 'Stücke');
            PERFORM insert_category_translations('pieces-theatre', 'es', 'obras de teatro');
            PERFORM insert_category_translations('pieces-theatre', 'it', 'spettacoli teatrali');

            -- Level 2: operas
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('operas', 'operas', 2, l1_id, 'opéras')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('operas', 'fr', 'opéras');
            PERFORM insert_category_translations('operas', 'ar', 'أوبرا');
            PERFORM insert_category_translations('operas', 'en', 'operas');
            PERFORM insert_category_translations('operas', 'de', 'Opern');
            PERFORM insert_category_translations('operas', 'es', 'óperas');
            PERFORM insert_category_translations('operas', 'it', 'opere');

            -- Level 2: ballets
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ballets', 'ballets', 2, l1_id, 'ballets')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ballets', 'fr', 'ballets');
            PERFORM insert_category_translations('ballets', 'ar', 'باليه');
            PERFORM insert_category_translations('ballets', 'en', 'ballets');
            PERFORM insert_category_translations('ballets', 'de', 'Ballette');
            PERFORM insert_category_translations('ballets', 'es', 'ballets');
            PERFORM insert_category_translations('ballets', 'it', 'balletti');

            -- Level 2: danse-contemporaine
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('danse-contemporaine', 'danse-contemporaine', 2, l1_id, 'danse contemporaine')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('danse-contemporaine', 'fr', 'danse contemporaine');
            PERFORM insert_category_translations('danse-contemporaine', 'ar', 'رقص معاصر');
            PERFORM insert_category_translations('danse-contemporaine', 'en', 'contemporary dance');
            PERFORM insert_category_translations('danse-contemporaine', 'de', 'Zeitgenössischer Tanz');
            PERFORM insert_category_translations('danse-contemporaine', 'es', 'danza contemporánea');
            PERFORM insert_category_translations('danse-contemporaine', 'it', 'danza contemporanea');

            -- Level 2: representations-culturelles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('representations-culturelles', 'representations-culturelles', 2, l1_id, 'représentations culturelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('representations-culturelles', 'fr', 'représentations culturelles');
            PERFORM insert_category_translations('representations-culturelles', 'ar', 'عروض ثقافية');
            PERFORM insert_category_translations('representations-culturelles', 'en', 'cultural shows');
            PERFORM insert_category_translations('representations-culturelles', 'de', 'Kulturelle Aufführungen');
            PERFORM insert_category_translations('representations-culturelles', 'es', 'representaciones culturales');
            PERFORM insert_category_translations('representations-culturelles', 'it', 'rappresentazioni culturali');

        -- Level 1: conferences-formations
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('conferences-formations', 'conferences-formations', 1, root_id, 'Conférences & Formations')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('conferences-formations', 'fr', 'Conférences & Formations');
        PERFORM insert_category_translations('conferences-formations', 'ar', 'مؤتمرات وتكوينات');
        PERFORM insert_category_translations('conferences-formations', 'en', 'Conferences & Training');
        PERFORM insert_category_translations('conferences-formations', 'de', 'Konferenzen & Schulungen');
        PERFORM insert_category_translations('conferences-formations', 'es', 'Conferencias y Formación');
        PERFORM insert_category_translations('conferences-formations', 'it', 'Conferenze & Formazione');

            -- Level 2: conferences-professionnelles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('conferences-professionnelles', 'conferences-professionnelles', 2, l1_id, 'conférences professionnelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('conferences-professionnelles', 'fr', 'conférences professionnelles');
            PERFORM insert_category_translations('conferences-professionnelles', 'ar', 'مؤتمرات مهنية');
            PERFORM insert_category_translations('conferences-professionnelles', 'en', 'professional conferences');
            PERFORM insert_category_translations('conferences-professionnelles', 'de', 'Fachkonferenzen');
            PERFORM insert_category_translations('conferences-professionnelles', 'es', 'conferencias profesionales');
            PERFORM insert_category_translations('conferences-professionnelles', 'it', 'conferenze professionali');

            -- Level 2: seminaires
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('seminaires', 'seminaires', 2, l1_id, 'séminaires')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('seminaires', 'fr', 'séminaires');
            PERFORM insert_category_translations('seminaires', 'ar', 'ندوات');
            PERFORM insert_category_translations('seminaires', 'en', 'seminars');
            PERFORM insert_category_translations('seminaires', 'de', 'Seminare');
            PERFORM insert_category_translations('seminaires', 'es', 'seminarios');
            PERFORM insert_category_translations('seminaires', 'it', 'seminari');

            -- Level 2: formations
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('formations', 'formations', 2, l1_id, 'formations')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('formations', 'fr', 'formations');
            PERFORM insert_category_translations('formations', 'ar', 'تكوينات');
            PERFORM insert_category_translations('formations', 'en', 'training');
            PERFORM insert_category_translations('formations', 'de', 'Schulungen');
            PERFORM insert_category_translations('formations', 'es', 'formaciones');
            PERFORM insert_category_translations('formations', 'it', 'formazioni');

            -- Level 2: ateliers-pratiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ateliers-pratiques', 'ateliers-pratiques', 2, l1_id, 'ateliers pratiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ateliers-pratiques', 'fr', 'ateliers pratiques');
            PERFORM insert_category_translations('ateliers-pratiques', 'ar', 'ورشات عملية');
            PERFORM insert_category_translations('ateliers-pratiques', 'en', 'practical workshops');
            PERFORM insert_category_translations('ateliers-pratiques', 'de', 'Praxis-Workshops');
            PERFORM insert_category_translations('ateliers-pratiques', 'es', 'talleres prácticos');
            PERFORM insert_category_translations('ateliers-pratiques', 'it', 'laboratori pratici');

            -- Level 2: masterclass
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('masterclass', 'masterclass', 2, l1_id, 'masterclass')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('masterclass', 'fr', 'masterclass');
            PERFORM insert_category_translations('masterclass', 'ar', 'ماستر كلاس');
            PERFORM insert_category_translations('masterclass', 'en', 'masterclasses');
            PERFORM insert_category_translations('masterclass', 'de', 'Masterclasses');
            PERFORM insert_category_translations('masterclass', 'es', 'masterclass');
            PERFORM insert_category_translations('masterclass', 'it', 'masterclass');

            -- Level 2: salons
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('salons', 'salons', 2, l1_id, 'salons')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('salons', 'fr', 'salons');
            PERFORM insert_category_translations('salons', 'ar', 'معارض');
            PERFORM insert_category_translations('salons', 'en', 'trade fairs');
            PERFORM insert_category_translations('salons', 'de', 'Messen');
            PERFORM insert_category_translations('salons', 'es', 'ferias');
            PERFORM insert_category_translations('salons', 'it', 'fiere');

        -- Level 1: festivals-fetes
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('festivals-fetes', 'festivals-fetes', 1, root_id, 'Festivals & Fêtes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('festivals-fetes', 'fr', 'Festivals & Fêtes');
        PERFORM insert_category_translations('festivals-fetes', 'ar', 'مهرجانات واحتفالات');
        PERFORM insert_category_translations('festivals-fetes', 'en', 'Festivals & Celebrations');
        PERFORM insert_category_translations('festivals-fetes', 'de', 'Festivals & Feiern');
        PERFORM insert_category_translations('festivals-fetes', 'es', 'Festivales y Fiestas');
        PERFORM insert_category_translations('festivals-fetes', 'it', 'Festival & Feste');

            -- Level 2: festivals-culturels
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('festivals-culturels', 'festivals-culturels', 2, l1_id, 'festivals culturels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('festivals-culturels', 'fr', 'festivals culturels');
            PERFORM insert_category_translations('festivals-culturels', 'ar', 'مهرجانات ثقافية');
            PERFORM insert_category_translations('festivals-culturels', 'en', 'cultural festivals');
            PERFORM insert_category_translations('festivals-culturels', 'de', 'Kulturelle Festivals');
            PERFORM insert_category_translations('festivals-culturels', 'es', 'festivales culturales');
            PERFORM insert_category_translations('festivals-culturels', 'it', 'festival culturali');

            -- Level 2: fetes-locales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fetes-locales', 'fetes-locales', 2, l1_id, 'fêtes locales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fetes-locales', 'fr', 'fêtes locales');
            PERFORM insert_category_translations('fetes-locales', 'ar', 'حفلات محلية');
            PERFORM insert_category_translations('fetes-locales', 'en', 'local festivities');
            PERFORM insert_category_translations('fetes-locales', 'de', 'Lokale Feste');
            PERFORM insert_category_translations('fetes-locales', 'es', 'fiestas locales');
            PERFORM insert_category_translations('fetes-locales', 'it', 'feste locali');

            -- Level 2: evenements-traditionnels
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('evenements-traditionnels', 'evenements-traditionnels', 2, l1_id, 'événements traditionnels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('evenements-traditionnels', 'fr', 'événements traditionnels');
            PERFORM insert_category_translations('evenements-traditionnels', 'ar', 'فعاليات تقليدية');
            PERFORM insert_category_translations('evenements-traditionnels', 'en', 'traditional events');
            PERFORM insert_category_translations('evenements-traditionnels', 'de', 'Traditionelle Veranstaltungen');
            PERFORM insert_category_translations('evenements-traditionnels', 'es', 'eventos tradicionales');
            PERFORM insert_category_translations('evenements-traditionnels', 'it', 'eventi tradizionali');

            -- Level 2: carnavals
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('carnavals', 'carnavals', 2, l1_id, 'carnavals')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('carnavals', 'fr', 'carnavals');
            PERFORM insert_category_translations('carnavals', 'ar', 'كرنفالات');
            PERFORM insert_category_translations('carnavals', 'en', 'carnivals');
            PERFORM insert_category_translations('carnavals', 'de', 'Karnevals');
            PERFORM insert_category_translations('carnavals', 'es', 'carnavales');
            PERFORM insert_category_translations('carnavals', 'it', 'carnevali');

            -- Level 2: celebrations-nationales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('celebrations-nationales', 'celebrations-nationales', 2, l1_id, 'célébrations nationales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('celebrations-nationales', 'fr', 'célébrations nationales');
            PERFORM insert_category_translations('celebrations-nationales', 'ar', 'احتفالات وطنية');
            PERFORM insert_category_translations('celebrations-nationales', 'en', 'national celebrations');
            PERFORM insert_category_translations('celebrations-nationales', 'de', 'Nationale Feierlichkeiten');
            PERFORM insert_category_translations('celebrations-nationales', 'es', 'celebraciones nacionales');
            PERFORM insert_category_translations('celebrations-nationales', 'it', 'celebrazioni nazionali');

        -- Level 1: parcs-loisirs
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('parcs-loisirs', 'parcs-loisirs', 1, root_id, 'Parcs & Loisirs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('parcs-loisirs', 'fr', 'Parcs & Loisirs');
        PERFORM insert_category_translations('parcs-loisirs', 'ar', 'منتزهات وترفيه');
        PERFORM insert_category_translations('parcs-loisirs', 'en', 'Parks & Leisure');
        PERFORM insert_category_translations('parcs-loisirs', 'de', 'Parks & Freizeit');
        PERFORM insert_category_translations('parcs-loisirs', 'es', 'Parques y Ocio');
        PERFORM insert_category_translations('parcs-loisirs', 'it', 'Parchi & Tempo Libero');

            -- Level 2: parcs-attraction
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('parcs-attraction', 'parcs-attraction', 2, l1_id, 'billets parcs d’attraction')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('parcs-attraction', 'fr', 'billets parcs d’attraction');
            PERFORM insert_category_translations('parcs-attraction', 'ar', 'تذاكر ملاهي');
            PERFORM insert_category_translations('parcs-attraction', 'en', 'theme park tickets');
            PERFORM insert_category_translations('parcs-attraction', 'de', 'Freizeitpark-Tickets');
            PERFORM insert_category_translations('parcs-attraction', 'es', 'entradas a parques de atracciones');
            PERFORM insert_category_translations('parcs-attraction', 'it', 'biglietti parchi divertimento');

            -- Level 2: parcs-aquatiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('parcs-aquatiques', 'parcs-aquatiques', 2, l1_id, 'parcs aquatiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('parcs-aquatiques', 'fr', 'parcs aquatiques');
            PERFORM insert_category_translations('parcs-aquatiques', 'ar', 'منتزهات مائية');
            PERFORM insert_category_translations('parcs-aquatiques', 'en', 'water parks');
            PERFORM insert_category_translations('parcs-aquatiques', 'de', 'Wasserparks');
            PERFORM insert_category_translations('parcs-aquatiques', 'es', 'parques acuáticos');
            PERFORM insert_category_translations('parcs-aquatiques', 'it', 'parchi acquatici');

            -- Level 2: jardins-zoologiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('jardins-zoologiques', 'jardins-zoologiques', 2, l1_id, 'jardins zoologiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('jardins-zoologiques', 'fr', 'jardins zoologiques');
            PERFORM insert_category_translations('jardins-zoologiques', 'ar', 'حدائق حيوان');
            PERFORM insert_category_translations('jardins-zoologiques', 'en', 'zoos');
            PERFORM insert_category_translations('jardins-zoologiques', 'de', 'Zoos');
            PERFORM insert_category_translations('jardins-zoologiques', 'es', 'zoos');
            PERFORM insert_category_translations('jardins-zoologiques', 'it', 'zoo');

            -- Level 2: circuits-decouvertes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('circuits-decouvertes', 'circuits-decouvertes', 2, l1_id, 'circuits découvertes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('circuits-decouvertes', 'fr', 'circuits découvertes');
            PERFORM insert_category_translations('circuits-decouvertes', 'ar', 'جولات اكتشاف');
            PERFORM insert_category_translations('circuits-decouvertes', 'en', 'discovery circuits');
            PERFORM insert_category_translations('circuits-decouvertes', 'de', 'Entdeckungsrouten');
            PERFORM insert_category_translations('circuits-decouvertes', 'es', 'circuitos de descubrimiento');
            PERFORM insert_category_translations('circuits-decouvertes', 'it', 'percorsi di scoperta');

            -- Level 2: activites-loisirs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('activites-loisirs', 'activites-loisirs', 2, l1_id, 'activités de loisirs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('activites-loisirs', 'fr', 'activités de loisirs');
            PERFORM insert_category_translations('activites-loisirs', 'ar', 'أنشطة ترفيهية');
            PERFORM insert_category_translations('activites-loisirs', 'en', 'leisure activities');
            PERFORM insert_category_translations('activites-loisirs', 'de', 'Freizeitaktivitäten');
            PERFORM insert_category_translations('activites-loisirs', 'es', 'actividades de ocio');
            PERFORM insert_category_translations('activites-loisirs', 'it', 'attività ricreative');

        -- Level 1: evenements-familiaux
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('evenements-familiaux', 'evenements-familiaux', 1, root_id, 'Événements Familiaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('evenements-familiaux', 'fr', 'Événements Familiaux');
        PERFORM insert_category_translations('evenements-familiaux', 'ar', 'فعاليات عائلية');
        PERFORM insert_category_translations('evenements-familiaux', 'en', 'Family Events');
        PERFORM insert_category_translations('evenements-familiaux', 'de', 'Familienveranstaltungen');
        PERFORM insert_category_translations('evenements-familiaux', 'es', 'Eventos Familiares');
        PERFORM insert_category_translations('evenements-familiaux', 'it', 'Eventi Familiari');

            -- Level 2: spectacles-enfants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('spectacles-enfants', 'spectacles-enfants', 2, l1_id, 'spectacles pour enfants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('spectacles-enfants', 'fr', 'spectacles pour enfants');
            PERFORM insert_category_translations('spectacles-enfants', 'ar', 'عروض للأطفال');
            PERFORM insert_category_translations('spectacles-enfants', 'en', 'children shows');
            PERFORM insert_category_translations('spectacles-enfants', 'de', 'Kinderaufführungen');
            PERFORM insert_category_translations('spectacles-enfants', 'es', 'espectáculos para niños');
            PERFORM insert_category_translations('spectacles-enfants', 'it', 'spettacoli per bambini');

            -- Level 2: animations
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('animations', 'animations', 2, l1_id, 'animations')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('animations', 'fr', 'animations');
            PERFORM insert_category_translations('animations', 'ar', 'تنشيطات');
            PERFORM insert_category_translations('animations', 'en', 'animations');
            PERFORM insert_category_translations('animations', 'de', 'Animationen');
            PERFORM insert_category_translations('animations', 'es', 'animaciones');
            PERFORM insert_category_translations('animations', 'it', 'animazioni');

            -- Level 2: ateliers-creatifs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ateliers-creatifs', 'ateliers-creatifs', 2, l1_id, 'ateliers créatifs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ateliers-creatifs', 'fr', 'ateliers créatifs');
            PERFORM insert_category_translations('ateliers-creatifs', 'ar', 'ورشات إبداعية');
            PERFORM insert_category_translations('ateliers-creatifs', 'en', 'creative workshops');
            PERFORM insert_category_translations('ateliers-creatifs', 'de', 'Kreativ-Workshops');
            PERFORM insert_category_translations('ateliers-creatifs', 'es', 'talleres creativos');
            PERFORM insert_category_translations('ateliers-creatifs', 'it', 'laboratori creativi');

            -- Level 2: evenements-educatifs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('evenements-educatifs', 'evenements-educatifs', 2, l1_id, 'événements éducatifs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('evenements-educatifs', 'fr', 'événements éducatifs');
            PERFORM insert_category_translations('evenements-educatifs', 'ar', 'فعاليات تعليمية');
            PERFORM insert_category_translations('evenements-educatifs', 'en', 'educational events');
            PERFORM insert_category_translations('evenements-educatifs', 'de', 'Bildungsveranstaltungen');
            PERFORM insert_category_translations('evenements-educatifs', 'es', 'eventos educativos');
            PERFORM insert_category_translations('evenements-educatifs', 'it', 'eventi educativi');

            -- Level 2: shows-interactifs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('shows-interactifs', 'shows-interactifs', 2, l1_id, 'shows interactifs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('shows-interactifs', 'fr', 'shows interactifs');
            PERFORM insert_category_translations('shows-interactifs', 'ar', 'عروض تفاعلية');
            PERFORM insert_category_translations('shows-interactifs', 'en', 'interactive shows');
            PERFORM insert_category_translations('shows-interactifs', 'de', 'Interaktive Shows');
            PERFORM insert_category_translations('shows-interactifs', 'es', 'shows interactivos');
            PERFORM insert_category_translations('shows-interactifs', 'it', 'show interattivi');

        -- Level 1: gala-receptions
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gala-receptions', 'gala-receptions', 1, root_id, 'Gala & Réceptions')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('gala-receptions', 'fr', 'Gala & Réceptions');
        PERFORM insert_category_translations('gala-receptions', 'ar', 'حفلات راقية واستقبالات');
        PERFORM insert_category_translations('gala-receptions', 'en', 'Gala & Receptions');
        PERFORM insert_category_translations('gala-receptions', 'de', 'Gala & Empfänge');
        PERFORM insert_category_translations('gala-receptions', 'es', 'Gala y Recepciones');
        PERFORM insert_category_translations('gala-receptions', 'it', 'Gala & Ricevimenti');

            -- Level 2: soirees-gala
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soirees-gala', 'soirees-gala', 2, l1_id, 'soirées gala')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('soirees-gala', 'fr', 'soirées gala');
            PERFORM insert_category_translations('soirees-gala', 'ar', 'أمسيات غالا');
            PERFORM insert_category_translations('soirees-gala', 'en', 'gala nights');
            PERFORM insert_category_translations('soirees-gala', 'de', 'Galaabende');
            PERFORM insert_category_translations('soirees-gala', 'es', 'noches de gala');
            PERFORM insert_category_translations('soirees-gala', 'it', 'serate di gala');

            -- Level 2: diners-caritatifs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('diners-caritatifs', 'diners-caritatifs', 2, l1_id, 'dîners caritatifs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('diners-caritatifs', 'fr', 'dîners caritatifs');
            PERFORM insert_category_translations('diners-caritatifs', 'ar', 'عشاء خيري');
            PERFORM insert_category_translations('diners-caritatifs', 'en', 'charity dinners');
            PERFORM insert_category_translations('diners-caritatifs', 'de', 'Wohltätigkeitsdinner');
            PERFORM insert_category_translations('diners-caritatifs', 'es', 'cenas benéficas');
            PERFORM insert_category_translations('diners-caritatifs', 'it', 'cene di beneficenza');

            -- Level 2: evenements-vip
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('evenements-vip', 'evenements-vip', 2, l1_id, 'événements VIP')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('evenements-vip', 'fr', 'événements VIP');
            PERFORM insert_category_translations('evenements-vip', 'ar', 'فعاليات لكبار الشخصيات');
            PERFORM insert_category_translations('evenements-vip', 'en', 'VIP events');
            PERFORM insert_category_translations('evenements-vip', 'de', 'VIP-Veranstaltungen');
            PERFORM insert_category_translations('evenements-vip', 'es', 'eventos VIP');
            PERFORM insert_category_translations('evenements-vip', 'it', 'eventi VIP');

            -- Level 2: soirees-privees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soirees-privees', 'soirees-privees', 2, l1_id, 'soirées privées')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('soirees-privees', 'fr', 'soirées privées');
            PERFORM insert_category_translations('soirees-privees', 'ar', 'سهرات خاصة');
            PERFORM insert_category_translations('soirees-privees', 'en', 'private parties');
            PERFORM insert_category_translations('soirees-privees', 'de', 'Private Partys');
            PERFORM insert_category_translations('soirees-privees', 'es', 'fiestas privadas');
            PERFORM insert_category_translations('soirees-privees', 'it', 'feste private');

            -- Level 2: evenements-prestige
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('evenements-prestige', 'evenements-prestige', 2, l1_id, 'événements de prestige')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('evenements-prestige', 'fr', 'événements de prestige');
            PERFORM insert_category_translations('evenements-prestige', 'ar', 'فعاليات فاخرة');
            PERFORM insert_category_translations('evenements-prestige', 'en', 'prestige events');
            PERFORM insert_category_translations('evenements-prestige', 'de', 'Prestige-Events');
            PERFORM insert_category_translations('evenements-prestige', 'es', 'eventos de prestigio');
            PERFORM insert_category_translations('evenements-prestige', 'it', 'eventi di prestigio');

        -- Level 1: salons-expositions
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('salons-expositions', 'salons-expositions', 1, root_id, 'Salons & Expositions')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('salons-expositions', 'fr', 'Salons & Expositions');
        PERFORM insert_category_translations('salons-expositions', 'ar', 'معارض وملتقيات');
        PERFORM insert_category_translations('salons-expositions', 'en', 'Trade Shows & Exhibitions');
        PERFORM insert_category_translations('salons-expositions', 'de', 'Messen & Ausstellungen');
        PERFORM insert_category_translations('salons-expositions', 'es', 'Ferias y Exposiciones');
        PERFORM insert_category_translations('salons-expositions', 'it', 'Fiere & Esposizioni');

            -- Level 2: salons-professionnels
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('salons-professionnels', 'salons-professionnels', 2, l1_id, 'salons professionnels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('salons-professionnels', 'fr', 'salons professionnels');
            PERFORM insert_category_translations('salons-professionnels', 'ar', 'ملتقيات مهنية');
            PERFORM insert_category_translations('salons-professionnels', 'en', 'professional trade shows');
            PERFORM insert_category_translations('salons-professionnels', 'de', 'Fachmessen');
            PERFORM insert_category_translations('salons-professionnels', 'es', 'ferias profesionales');
            PERFORM insert_category_translations('salons-professionnels', 'it', 'fiere professionali');

            -- Level 2: foires-commerciales
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('foires-commerciales', 'foires-commerciales', 2, l1_id, 'foires commerciales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('foires-commerciales', 'fr', 'foires commerciales');
            PERFORM insert_category_translations('foires-commerciales', 'ar', 'معارض تجارية');
            PERFORM insert_category_translations('foires-commerciales', 'en', 'commercial fairs');
            PERFORM insert_category_translations('foires-commerciales', 'de', 'Handelsmessen');
            PERFORM insert_category_translations('foires-commerciales', 'es', 'ferias comerciales');
            PERFORM insert_category_translations('foires-commerciales', 'it', 'fiere commerciali');

            -- Level 2: expositions-artistiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('expositions-artistiques', 'expositions-artistiques', 2, l1_id, 'expositions artistiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('expositions-artistiques', 'fr', 'expositions artistiques');
            PERFORM insert_category_translations('expositions-artistiques', 'ar', 'معارض فنية');
            PERFORM insert_category_translations('expositions-artistiques', 'en', 'art exhibitions');
            PERFORM insert_category_translations('expositions-artistiques', 'de', 'Kunstausstellungen');
            PERFORM insert_category_translations('expositions-artistiques', 'es', 'exposiciones artísticas');
            PERFORM insert_category_translations('expositions-artistiques', 'it', 'mostre d''arte');

            -- Level 2: expositions-scientifiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('expositions-scientifiques', 'expositions-scientifiques', 2, l1_id, 'expositions scientifiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('expositions-scientifiques', 'fr', 'expositions scientifiques');
            PERFORM insert_category_translations('expositions-scientifiques', 'ar', 'معارض علمية');
            PERFORM insert_category_translations('expositions-scientifiques', 'en', 'scientific exhibitions');
            PERFORM insert_category_translations('expositions-scientifiques', 'de', 'Wissenschaftliche Ausstellungen');
            PERFORM insert_category_translations('expositions-scientifiques', 'es', 'exposiciones científicas');
            PERFORM insert_category_translations('expositions-scientifiques', 'it', 'mostre scientifiche');

        -- Level 1: billetterie-transport
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('billetterie-transport', 'billetterie-transport', 1, root_id, 'Billetterie de Transport')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('billetterie-transport', 'fr', 'Billetterie de Transport');
        PERFORM insert_category_translations('billetterie-transport', 'ar', 'تذاكر النقل');
        PERFORM insert_category_translations('billetterie-transport', 'en', 'Transport Ticketing');
        PERFORM insert_category_translations('billetterie-transport', 'de', 'Ticketing für Verkehrsmittel');
        PERFORM insert_category_translations('billetterie-transport', 'es', 'Billetes de Transporte');
        PERFORM insert_category_translations('billetterie-transport', 'it', 'Biglietteria Trasporti');

            -- Level 2: billets-autocar
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('billets-autocar', 'billets-autocar', 2, l1_id, 'billets d’autocar')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('billets-autocar', 'fr', 'billets d’autocar');
            PERFORM insert_category_translations('billets-autocar', 'ar', 'تذاكر حافلات');
            PERFORM insert_category_translations('billets-autocar', 'en', 'coach tickets');
            PERFORM insert_category_translations('billets-autocar', 'de', 'Fernbus-Tickets');
            PERFORM insert_category_translations('billets-autocar', 'es', 'billetes de autocar');
            PERFORM insert_category_translations('billets-autocar', 'it', 'biglietti autobus');

            -- Level 2: billets-train
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('billets-train', 'billets-train', 2, l1_id, 'billets de train')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('billets-train', 'fr', 'billets de train');
            PERFORM insert_category_translations('billets-train', 'ar', 'تذاكر قطار');
            PERFORM insert_category_translations('billets-train', 'en', 'train tickets');
            PERFORM insert_category_translations('billets-train', 'de', 'Zugtickets');
            PERFORM insert_category_translations('billets-train', 'es', 'billetes de tren');
            PERFORM insert_category_translations('billets-train', 'it', 'biglietti treno');

            -- Level 2: billets-ferry
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('billets-ferry', 'billets-ferry', 2, l1_id, 'billets de ferry')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('billets-ferry', 'fr', 'billets de ferry');
            PERFORM insert_category_translations('billets-ferry', 'ar', 'تذاكر عبّارة');
            PERFORM insert_category_translations('billets-ferry', 'en', 'ferry tickets');
            PERFORM insert_category_translations('billets-ferry', 'de', 'Fährtickets');
            PERFORM insert_category_translations('billets-ferry', 'es', 'billetes de ferry');
            PERFORM insert_category_translations('billets-ferry', 'it', 'biglietti traghetto');

            -- Level 2: traversees-maritimes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('traversees-maritimes', 'traversees-maritimes', 2, l1_id, 'traversées maritimes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('traversees-maritimes', 'fr', 'traversées maritimes');
            PERFORM insert_category_translations('traversees-maritimes', 'ar', 'رحلات بحرية');
            PERFORM insert_category_translations('traversees-maritimes', 'en', 'sea crossings');
            PERFORM insert_category_translations('traversees-maritimes', 'de', 'Seefahrten');
            PERFORM insert_category_translations('traversees-maritimes', 'es', 'travesías marítimas');
            PERFORM insert_category_translations('traversees-maritimes', 'it', 'traversate marittime');

            -- Level 2: bus-interwilayas
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bus-interwilayas', 'bus-interwilayas', 2, l1_id, 'bus interwilayas')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bus-interwilayas', 'fr', 'bus interwilayas');
            PERFORM insert_category_translations('bus-interwilayas', 'ar', 'حافلات بين الولايات');
            PERFORM insert_category_translations('bus-interwilayas', 'en', 'inter-wilaya buses');
            PERFORM insert_category_translations('bus-interwilayas', 'de', 'Überlandbusse');
            PERFORM insert_category_translations('bus-interwilayas', 'es', 'autobuses interwilayas');
            PERFORM insert_category_translations('bus-interwilayas', 'it', 'autobus interprovinciali');

            -- Level 2: billets-touristiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('billets-touristiques', 'billets-touristiques', 2, l1_id, 'billets touristiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('billets-touristiques', 'fr', 'billets touristiques');
            PERFORM insert_category_translations('billets-touristiques', 'ar', 'تذاكر سياحية');
            PERFORM insert_category_translations('billets-touristiques', 'en', 'tourist tickets');
            PERFORM insert_category_translations('billets-touristiques', 'de', 'Touristentickets');
            PERFORM insert_category_translations('billets-touristiques', 'es', 'billetes turísticos');
            PERFORM insert_category_translations('billets-touristiques', 'it', 'biglietti turistici');

        -- Level 1: evenements-religieux-traditionnels
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('evenements-religieux-traditionnels', 'evenements-religieux-traditionnels', 1, root_id, 'Événements Religieux & Traditionnels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('evenements-religieux-traditionnels', 'fr', 'Événements Religieux & Traditionnels');
        PERFORM insert_category_translations('evenements-religieux-traditionnels', 'ar', 'فعاليات دينية وتقليدية');
        PERFORM insert_category_translations('evenements-religieux-traditionnels', 'en', 'Religious & Traditional Events');
        PERFORM insert_category_translations('evenements-religieux-traditionnels', 'de', 'Religiöse & Traditionelle Veranstaltungen');
        PERFORM insert_category_translations('evenements-religieux-traditionnels', 'es', 'Eventos Religiosos y Tradicionales');
        PERFORM insert_category_translations('evenements-religieux-traditionnels', 'it', 'Eventi Religiosi & Tradizionali');

            -- Level 2: mawlid
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('mawlid', 'mawlid', 2, l1_id, 'mawlid')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('mawlid', 'fr', 'mawlid');
            PERFORM insert_category_translations('mawlid', 'ar', 'المولد النبوي');
            PERFORM insert_category_translations('mawlid', 'en', 'Mawlid');
            PERFORM insert_category_translations('mawlid', 'de', 'Mawlid');
            PERFORM insert_category_translations('mawlid', 'es', 'mawlid');
            PERFORM insert_category_translations('mawlid', 'it', 'Mawlid');

            -- Level 2: fetes-religieuses
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('fetes-religieuses', 'fetes-religieuses', 2, l1_id, 'fêtes religieuses')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('fetes-religieuses', 'fr', 'fêtes religieuses');
            PERFORM insert_category_translations('fetes-religieuses', 'ar', 'أعياد دينية');
            PERFORM insert_category_translations('fetes-religieuses', 'en', 'religious festivals');
            PERFORM insert_category_translations('fetes-religieuses', 'de', 'Religiöse Feste');
            PERFORM insert_category_translations('fetes-religieuses', 'es', 'fiestas religiosas');
            PERFORM insert_category_translations('fetes-religieuses', 'it', 'feste religiose');

            -- Level 2: rassemblements-culturels
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('rassemblements-culturels', 'rassemblements-culturels', 2, l1_id, 'rassemblements culturels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('rassemblements-culturels', 'fr', 'rassemblements culturels');
            PERFORM insert_category_translations('rassemblements-culturels', 'ar', 'تجمعات ثقافية');
            PERFORM insert_category_translations('rassemblements-culturels', 'en', 'cultural gatherings');
            PERFORM insert_category_translations('rassemblements-culturels', 'de', 'Kulturelle Treffen');
            PERFORM insert_category_translations('rassemblements-culturels', 'es', 'encuentros culturales');
            PERFORM insert_category_translations('rassemblements-culturels', 'it', 'raduni culturali');

            -- Level 2: ceremonies-traditionnelles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ceremonies-traditionnelles', 'ceremonies-traditionnelles', 2, l1_id, 'cérémonies traditionnelles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ceremonies-traditionnelles', 'fr', 'cérémonies traditionnelles');
            PERFORM insert_category_translations('ceremonies-traditionnelles', 'ar', 'مراسم تقليدية');
            PERFORM insert_category_translations('ceremonies-traditionnelles', 'en', 'traditional ceremonies');
            PERFORM insert_category_translations('ceremonies-traditionnelles', 'de', 'Traditionelle Zeremonien');
            PERFORM insert_category_translations('ceremonies-traditionnelles', 'es', 'ceremonias tradicionales');
            PERFORM insert_category_translations('ceremonies-traditionnelles', 'it', 'cerimonie tradizionali');

        -- Level 1: services-evenementiels
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('services-evenementiels', 'services-evenementiels', 1, root_id, 'Services Événementiels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('services-evenementiels', 'fr', 'Services Événementiels');
        PERFORM insert_category_translations('services-evenementiels', 'ar', 'خدمات تنظيم الفعاليات');
        PERFORM insert_category_translations('services-evenementiels', 'en', 'Event Services');
        PERFORM insert_category_translations('services-evenementiels', 'de', 'Event-Dienstleistungen');
        PERFORM insert_category_translations('services-evenementiels', 'es', 'Servicios de Eventos');
        PERFORM insert_category_translations('services-evenementiels', 'it', 'Servizi Eventi');

            -- Level 2: organisation-evenements
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('organisation-evenements', 'organisation-evenements', 2, l1_id, 'organisation événements')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('organisation-evenements', 'fr', 'organisation événements');
            PERFORM insert_category_translations('organisation-evenements', 'ar', 'تنظيم فعاليات');
            PERFORM insert_category_translations('organisation-evenements', 'en', 'event organization');
            PERFORM insert_category_translations('organisation-evenements', 'de', 'Eventorganisation');
            PERFORM insert_category_translations('organisation-evenements', 'es', 'organización de eventos');
            PERFORM insert_category_translations('organisation-evenements', 'it', 'organizzazione eventi');

            -- Level 2: location-sono
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('location-sono', 'location-sono', 2, l1_id, 'location sono')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('location-sono', 'fr', 'location sono');
            PERFORM insert_category_translations('location-sono', 'ar', 'كراء أجهزة الصوت');
            PERFORM insert_category_translations('location-sono', 'en', 'sound system rental');
            PERFORM insert_category_translations('location-sono', 'de', 'Tonanlagenverleih');
            PERFORM insert_category_translations('location-sono', 'es', 'alquiler de sonido');
            PERFORM insert_category_translations('location-sono', 'it', 'noleggio impianto audio');

            -- Level 2: eclairage
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('eclairage', 'eclairage', 2, l1_id, 'éclairage')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('eclairage', 'fr', 'éclairage');
            PERFORM insert_category_translations('eclairage', 'ar', 'إضاءة');
            PERFORM insert_category_translations('eclairage', 'en', 'lighting');
            PERFORM insert_category_translations('eclairage', 'de', 'Beleuchtung');
            PERFORM insert_category_translations('eclairage', 'es', 'iluminación');
            PERFORM insert_category_translations('eclairage', 'it', 'illuminazione');

            -- Level 2: decoration-evenementielle
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('decoration-evenementielle', 'decoration-evenementielle', 2, l1_id, 'décoration événementielle')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('decoration-evenementielle', 'fr', 'décoration événementielle');
            PERFORM insert_category_translations('decoration-evenementielle', 'ar', 'زينة الفعاليات');
            PERFORM insert_category_translations('decoration-evenementielle', 'en', 'event decoration');
            PERFORM insert_category_translations('decoration-evenementielle', 'de', 'Eventdekoration');
            PERFORM insert_category_translations('decoration-evenementielle', 'es', 'decoración de eventos');
            PERFORM insert_category_translations('decoration-evenementielle', 'it', 'decorazione eventi');

            -- Level 2: photographes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('photographes', 'photographes', 2, l1_id, 'photographes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('photographes', 'fr', 'photographes');
            PERFORM insert_category_translations('photographes', 'ar', 'مصوّرون');
            PERFORM insert_category_translations('photographes', 'en', 'photographers');
            PERFORM insert_category_translations('photographes', 'de', 'Fotografen');
            PERFORM insert_category_translations('photographes', 'es', 'fotógrafos');
            PERFORM insert_category_translations('photographes', 'it', 'fotografi');

            -- Level 2: videastes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('videastes', 'videastes', 2, l1_id, 'vidéastes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('videastes', 'fr', 'vidéastes');
            PERFORM insert_category_translations('videastes', 'ar', 'مصوّرو فيديو');
            PERFORM insert_category_translations('videastes', 'en', 'videographers');
            PERFORM insert_category_translations('videastes', 'de', 'Videografen');
            PERFORM insert_category_translations('videastes', 'es', 'videógrafos');
            PERFORM insert_category_translations('videastes', 'it', 'videomaker');

            -- Level 2: animateurs
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('animateurs', 'animateurs', 2, l1_id, 'animateurs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('animateurs', 'fr', 'animateurs');
            PERFORM insert_category_translations('animateurs', 'ar', 'منشّطون');
            PERFORM insert_category_translations('animateurs', 'en', 'hosts & presenters');
            PERFORM insert_category_translations('animateurs', 'de', 'Moderatoren');
            PERFORM insert_category_translations('animateurs', 'es', 'animadores');
            PERFORM insert_category_translations('animateurs', 'it', 'animatori');

        -- Level 1: packages-offres-speciales
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('packages-offres-speciales', 'packages-offres-speciales', 1, root_id, 'Packages & Offres Spéciales')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('packages-offres-speciales', 'fr', 'Packages & Offres Spéciales');
        PERFORM insert_category_translations('packages-offres-speciales', 'ar', 'باقات وعروض خاصة');
        PERFORM insert_category_translations('packages-offres-speciales', 'en', 'Packages & Special Offers');
        PERFORM insert_category_translations('packages-offres-speciales', 'de', 'Pakete & Sonderangebote');
        PERFORM insert_category_translations('packages-offres-speciales', 'es', 'Paquetes y Ofertas Especiales');
        PERFORM insert_category_translations('packages-offres-speciales', 'it', 'Pacchetti & Offerte Speciali');

            -- Level 2: packs-fetes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('packs-fetes', 'packs-fetes', 2, l1_id, 'packs fêtes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('packs-fetes', 'fr', 'packs fêtes');
            PERFORM insert_category_translations('packs-fetes', 'ar', 'باقات حفلات');
            PERFORM insert_category_translations('packs-fetes', 'en', 'party packs');
            PERFORM insert_category_translations('packs-fetes', 'de', 'Party-Pakete');
            PERFORM insert_category_translations('packs-fetes', 'es', 'packs de fiestas');
            PERFORM insert_category_translations('packs-fetes', 'it', 'pacchetti feste');

            -- Level 2: acces-vip
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('acces-vip', 'acces-vip', 2, l1_id, 'accès VIP')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('acces-vip', 'fr', 'accès VIP');
            PERFORM insert_category_translations('acces-vip', 'ar', 'دخول كبار الشخصيات');
            PERFORM insert_category_translations('acces-vip', 'en', 'VIP access');
            PERFORM insert_category_translations('acces-vip', 'de', 'VIP-Zugang');
            PERFORM insert_category_translations('acces-vip', 'es', 'acceso VIP');
            PERFORM insert_category_translations('acces-vip', 'it', 'accesso VIP');

            -- Level 2: pass-multi-evenements
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('pass-multi-evenements', 'pass-multi-evenements', 2, l1_id, 'pass multi-événements')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('pass-multi-evenements', 'fr', 'pass multi-événements');
            PERFORM insert_category_translations('pass-multi-evenements', 'ar', 'بطاقات متعددة الفعاليات');
            PERFORM insert_category_translations('pass-multi-evenements', 'en', 'multi-event passes');
            PERFORM insert_category_translations('pass-multi-evenements', 'de', 'Multi-Event-Pässe');
            PERFORM insert_category_translations('pass-multi-evenements', 'es', 'pases multi-evento');
            PERFORM insert_category_translations('pass-multi-evenements', 'it', 'pass multi-evento');

            -- Level 2: offres-saisonnieres
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('offres-saisonnieres', 'offres-saisonnieres', 2, l1_id, 'offres saisonnières')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('offres-saisonnieres', 'fr', 'offres saisonnières');
            PERFORM insert_category_translations('offres-saisonnieres', 'ar', 'عروض موسمية');
            PERFORM insert_category_translations('offres-saisonnieres', 'en', 'seasonal offers');
            PERFORM insert_category_translations('offres-saisonnieres', 'de', 'Saisonangebote');
            PERFORM insert_category_translations('offres-saisonnieres', 'es', 'ofertas de temporada');
            PERFORM insert_category_translations('offres-saisonnieres', 'it', 'offerte stagionali');

            -- Level 2: promotions
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('promotions', 'promotions', 2, l1_id, 'promotions')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('promotions', 'fr', 'promotions');
            PERFORM insert_category_translations('promotions', 'ar', 'تخفيضات');
            PERFORM insert_category_translations('promotions', 'en', 'promotions');
            PERFORM insert_category_translations('promotions', 'de', 'Aktionen');
            PERFORM insert_category_translations('promotions', 'es', 'promociones');
            PERFORM insert_category_translations('promotions', 'it', 'promozioni');
END $$;