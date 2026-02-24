-- Migration Événements & Billetterie - Toutes les langues
-- NIVEAU 0 : Événements & Billetterie (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('evenements-billetterie', 'Événements & Billetterie', 'evenements-billetterie', NULL, 0, 'fr');

-- NIVEAU 1 : Événements culturels (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('evenements-culturels', 'Événements culturels', 'evenements-culturels', 'evenements-billetterie', 1, 'fr');

-- NIVEAU 1 : Événements sportifs (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('evenements-sportifs', 'Événements sportifs', 'evenements-sportifs', 'evenements-billetterie', 1, 'fr');

-- NIVEAU 2 : Niveau 2 pour Événements culturels (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('concerts', 'Concerts', 'concerts', 'evenements-culturels', 2, 'fr'),
('festivals', 'Festivals', 'festivals', 'evenements-culturels', 2, 'fr'),
('spectacles', 'Spectacles', 'spectacles', 'evenements-culturels', 2, 'fr'),
('theatre', 'Théâtre', 'theatre', 'evenements-culturels', 2, 'fr'),
('comedies-musicales', 'Comédies musicales', 'comedies-musicales', 'evenements-culturels', 2, 'fr'),
('expositions', 'Expositions', 'expositions', 'evenements-culturels', 2, 'fr'),
('musees', 'Musées', 'musees', 'evenements-culturels', 2, 'fr'),
('conferences', 'Conférences', 'conferences', 'evenements-culturels', 2, 'fr'),
('ateliers-culturels', 'Ateliers culturels', 'ateliers-culturels', 'evenements-culturels', 2, 'fr'),
('evenements-literaires', 'Événements littéraires', 'evenements-literaires', 'evenements-culturels', 2, 'fr');

-- NIVEAU 2 : Niveau 2 pour Événements sportifs (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('matchs-football', 'Matchs de football', 'matchs-football', 'evenements-sportifs', 2, 'fr'),
('matchs-basketball', 'Matchs de basketball', 'matchs-basketball', 'evenements-sportifs', 2, 'fr'),
('matchs-handball', 'Matchs de handball', 'matchs-handball', 'evenements-sportifs', 2, 'fr'),
('matchs-volleyball', 'Matchs de volleyball', 'matchs-volleyball', 'evenements-sportifs', 2, 'fr'),
('competitions-athletisme', 'Compétitions d\'athlétisme', 'competitions-athletisme', 'evenements-sportifs', 2, 'fr'),
('tournois-sportifs', 'Tournois sportifs', 'tournois-sportifs', 'evenements-sportifs', 2, 'fr'),
('marathons', 'Marathons', 'marathons', 'evenements-sportifs', 2, 'fr'),
('courses-cyclistes', 'Courses cyclistes', 'courses-cyclistes', 'evenements-sportifs', 2, 'fr'),
('competitions-equestres', 'Compétitions équestres', 'competitions-equestres', 'evenements-sportifs', 2, 'fr');

-- NIVEAU 0 : Événements & Billetterie (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('evenements-billetterie', 'الفعاليات والتذاكر', 'evenements-billetterie', NULL, 0, 'ar');

-- NIVEAU 1 : Événements culturels (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('evenements-culturels', 'الفعاليات الثقافية', 'evenements-culturels', 'evenements-billetterie', 1, 'ar');

-- NIVEAU 1 : Événements sportifs (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('evenements-sportifs', 'الفعاليات الرياضية', 'evenements-sportifs', 'evenements-billetterie', 1, 'ar');

-- NIVEAU 2 : Niveau 2 pour Événements culturels (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('concerts', 'الحفلات الموسيقية', 'concerts', 'evenements-culturels', 2, 'ar'),
('festivals', 'المهرجانات', 'festivals', 'evenements-culturels', 2, 'ar'),
('spectacles', 'العروض', 'spectacles', 'evenements-culturels', 2, 'ar'),
('theatre', 'المسرح', 'theatre', 'evenements-culturels', 2, 'ar'),
('comedies-musicales', 'الكوميديا الموسيقية', 'comedies-musicales', 'evenements-culturels', 2, 'ar'),
('expositions', 'المعارض', 'expositions', 'evenements-culturels', 2, 'ar'),
('musees', 'المتاحف', 'musees', 'evenements-culturels', 2, 'ar'),
('conferences', 'المؤتمرات', 'conferences', 'evenements-culturels', 2, 'ar'),
('ateliers-culturels', 'ورش العمل الثقافية', 'ateliers-culturels', 'evenements-culturels', 2, 'ar'),
('evenements-literaires', 'الفعاليات الأدبية', 'evenements-literaires', 'evenements-culturels', 2, 'ar');

-- NIVEAU 2 : Niveau 2 pour Événements sportifs (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('matchs-football', 'مباريات كرة القدم', 'matchs-football', 'evenements-sportifs', 2, 'ar'),
('matchs-basketball', 'مباريات كرة السلة', 'matchs-basketball', 'evenements-sportifs', 2, 'ar'),
('matchs-handball', 'مباريات كرة اليد', 'matchs-handball', 'evenements-sportifs', 2, 'ar'),
('matchs-volleyball', 'مباريات الكرة الطائرة', 'matchs-volleyball', 'evenements-sportifs', 2, 'ar'),
('competitions-athletisme', 'مسابقات ألعاب القوى', 'competitions-athletisme', 'evenements-sportifs', 2, 'ar'),
('tournois-sportifs', 'البطولات الرياضية', 'tournois-sportifs', 'evenements-sportifs', 2, 'ar'),
('marathons', 'الماراثونات', 'marathons', 'evenements-sportifs', 2, 'ar'),
('courses-cyclistes', 'سباقات الدراجات', 'courses-cyclistes', 'evenements-sportifs', 2, 'ar'),
('competitions-equestres', 'المسابقات الفروسية', 'competitions-equestres', 'evenements-sportifs', 2, 'ar');

-- NIVEAU 0 : Événements & Billetterie (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('evenements-billetterie', 'Eventos y Entradas', 'evenements-billetterie', NULL, 0, 'es');

-- NIVEAU 1 : Événements culturels (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('evenements-culturels', 'Eventos culturales', 'evenements-culturels', 'evenements-billetterie', 1, 'es');

-- NIVEAU 1 : Événements sportifs (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('evenements-sportifs', 'Eventos deportivos', 'evenements-sportifs', 'evenements-billetterie', 1, 'es');

-- NIVEAU 2 : Niveau 2 pour Événements culturels (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('concerts', 'Conciertos', 'concerts', 'evenements-culturels', 2, 'es'),
('festivals', 'Festivales', 'festivals', 'evenements-culturels', 2, 'es'),
('spectacles', 'Espectáculos', 'spectacles', 'evenements-culturels', 2, 'es'),
('theatre', 'Teatro', 'theatre', 'evenements-culturels', 2, 'es'),
('comedies-musicales', 'Comedias musicales', 'comedies-musicales', 'evenements-culturels', 2, 'es'),
('expositions', 'Exposiciones', 'expositions', 'evenements-culturels', 2, 'es'),
('musees', 'Museos', 'musees', 'evenements-culturels', 2, 'es'),
('conferences', 'Conferencias', 'conferences', 'evenements-culturels', 2, 'es'),
('ateliers-culturels', 'Talleres culturales', 'ateliers-culturels', 'evenements-culturels', 2, 'es'),
('evenements-literaires', 'Eventos literarios', 'evenements-literaires', 'evenements-culturels', 2, 'es');

-- NIVEAU 2 : Niveau 2 pour Événements sportifs (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('matchs-football', 'Partidos de fútbol', 'matchs-football', 'evenements-sportifs', 2, 'es'),
('matchs-basketball', 'Partidos de baloncesto', 'matchs-basketball', 'evenements-sportifs', 2, 'es'),
('matchs-handball', 'Partidos de balonmano', 'matchs-handball', 'evenements-sportifs', 2, 'es'),
('matchs-volleyball', 'Partidos de voleibol', 'matchs-volleyball', 'evenements-sportifs', 2, 'es'),
('competitions-athletisme', 'Competiciones de atletismo', 'competitions-athletisme', 'evenements-sportifs', 2, 'es'),
('tournois-sportifs', 'Torneos deportivos', 'tournois-sportifs', 'evenements-sportifs', 2, 'es'),
('marathons', 'Maratones', 'marathons', 'evenements-sportifs', 2, 'es'),
('courses-cyclistes', 'Carreras ciclistas', 'courses-cyclistes', 'evenements-sportifs', 2, 'es'),
('competitions-equestres', 'Competiciones ecuestres', 'competitions-equestres', 'evenements-sportifs', 2, 'es');

-- NIVEAU 0 : Événements & Billetterie (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('evenements-billetterie', 'Veranstaltungen & Tickets', 'evenements-billetterie', NULL, 0, 'de');

-- NIVEAU 1 : Événements culturels (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('evenements-culturels', 'Kulturelle Veranstaltungen', 'evenements-culturels', 'evenements-billetterie', 1, 'de');

-- NIVEAU 1 : Événements sportifs (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('evenements-sportifs', 'Sportveranstaltungen', 'evenements-sportifs', 'evenements-billetterie', 1, 'de');

-- NIVEAU 2 : Niveau 2 pour Événements culturels (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('concerts', 'Konzerte', 'concerts', 'evenements-culturels', 2, 'de'),
('festivals', 'Festivals', 'festivals', 'evenements-culturels', 2, 'de'),
('spectacles', 'Shows', 'spectacles', 'evenements-culturels', 2, 'de'),
('theatre', 'Theater', 'theatre', 'evenements-culturels', 2, 'de'),
('comedies-musicales', 'Musicals', 'comedies-musicales', 'evenements-culturels', 2, 'de'),
('expositions', 'Ausstellungen', 'expositions', 'evenements-culturels', 2, 'de'),
('musees', 'Museen', 'musees', 'evenements-culturels', 2, 'de'),
('conferences', 'Konferenzen', 'conferences', 'evenements-culturels', 2, 'de'),
('ateliers-culturels', 'Kulturelle Workshops', 'ateliers-culturels', 'evenements-culturels', 2, 'de'),
('evenements-literaires', 'Literarische Veranstaltungen', 'evenements-literaires', 'evenements-culturels', 2, 'de');

-- NIVEAU 2 : Niveau 2 pour Événements sportifs (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('matchs-football', 'Fußballspiele', 'matchs-football', 'evenements-sportifs', 2, 'de'),
('matchs-basketball', 'Basketballspiele', 'matchs-basketball', 'evenements-sportifs', 2, 'de'),
('matchs-handball', 'Handballspiele', 'matchs-handball', 'evenements-sportifs', 2, 'de'),
('matchs-volleyball', 'Volleyballspiele', 'matchs-volleyball', 'evenements-sportifs', 2, 'de'),
('competitions-athletisme', 'Leichtathletik-Wettbewerbe', 'competitions-athletisme', 'evenements-sportifs', 2, 'de'),
('tournois-sportifs', 'Sportturniere', 'tournois-sportifs', 'evenements-sportifs', 2, 'de'),
('marathons', 'Marathons', 'marathons', 'evenements-sportifs', 2, 'de'),
('courses-cyclistes', 'Radrennen', 'courses-cyclistes', 'evenements-sportifs', 2, 'de'),
('competitions-equestres', 'Reitwettbewerbe', 'competitions-equestres', 'evenements-sportifs', 2, 'de');

-- NIVEAU 0 : Événements & Billetterie (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('evenements-billetterie', 'Events & Ticketing', 'evenements-billetterie', NULL, 0, 'en');

-- NIVEAU 1 : Événements culturels (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('evenements-culturels', 'Cultural Events', 'evenements-culturels', 'evenements-billetterie', 1, 'en');

-- NIVEAU 1 : Événements sportifs (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('evenements-sportifs', 'Sporting Events', 'evenements-sportifs', 'evenements-billetterie', 1, 'en');

-- NIVEAU 2 : Niveau 2 pour Événements culturels (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('concerts', 'Concerts', 'concerts', 'evenements-culturels', 2, 'en'),
('festivals', 'Festivals', 'festivals', 'evenements-culturels', 2, 'en'),
('spectacles', 'Shows', 'spectacles', 'evenements-culturels', 2, 'en'),
('theatre', 'Theatre', 'theatre', 'evenements-culturels', 2, 'en'),
('comedies-musicales', 'Musical Comedies', 'comedies-musicales', 'evenements-culturels', 2, 'en'),
('expositions', 'Exhibitions', 'expositions', 'evenements-culturels', 2, 'en'),
('musees', 'Museums', 'musees', 'evenements-culturels', 2, 'en'),
('conferences', 'Conferences', 'conferences', 'evenements-culturels', 2, 'en'),
('ateliers-culturels', 'Cultural Workshops', 'ateliers-culturels', 'evenements-culturels', 2, 'en'),
('evenements-literaires', 'Literary Events', 'evenements-literaires', 'evenements-culturels', 2, 'en');

-- NIVEAU 2 : Niveau 2 pour Événements sportifs (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('matchs-football', 'Football Matches', 'matchs-football', 'evenements-sportifs', 2, 'en'),
('matchs-basketball', 'Basketball Matches', 'matchs-basketball', 'evenements-sportifs', 2, 'en'),
('matchs-handball', 'Handball Matches', 'matchs-handball', 'evenements-sportifs', 2, 'en'),
('matchs-volleyball', 'Volleyball Matches', 'matchs-volleyball', 'evenements-sportifs', 2, 'en'),
('competitions-athletisme', 'Athletics Competitions', 'competitions-athletisme', 'evenements-sportifs', 2, 'en'),
('tournois-sportifs', 'Sports Tournaments', 'tournois-sportifs', 'evenements-sportifs', 2, 'en'),
('marathons', 'Marathons', 'marathons', 'evenements-sportifs', 2, 'en'),
('courses-cyclistes', 'Cycling Races', 'courses-cyclistes', 'evenements-sportifs', 2, 'en'),
('competitions-equestres', 'Equestrian Competitions', 'competitions-equestres', 'evenements-sportifs', 2, 'en');

-- NIVEAU 0 : Événements & Billetterie (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('evenements-billetterie', 'Eventi e Biglietti', 'evenements-billetterie', NULL, 0, 'it');

-- NIVEAU 1 : Événements culturels (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('evenements-culturels', 'Eventi culturali', 'evenements-culturels', 'evenements-billetterie', 1, 'it');

-- NIVEAU 1 : Événements sportifs (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('evenements-sportifs', 'Eventi sportivi', 'evenements-sportifs', 'evenements-billetterie', 1, 'it');

-- NIVEAU 2 : Niveau 2 pour Événements culturels (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('concerts', 'Concerti', 'concerts', 'evenements-culturels', 2, 'it'),
('festivals', 'Festival', 'festivals', 'evenements-culturels', 2, 'it'),
('spectacles', 'Spettacoli', 'spectacles', 'evenements-culturels', 2, 'it'),
('theatre', 'Teatro', 'theatre', 'evenements-culturels', 2, 'it'),
('comedies-musicales', 'Commedie musicali', 'comedies-musicales', 'evenements-culturels', 2, 'it'),
('expositions', 'Esposizioni', 'expositions', 'evenements-culturels', 2, 'it'),
('musees', 'Musei', 'musees', 'evenements-culturels', 2, 'it'),
('conferences', 'Conferenze', 'conferences', 'evenements-culturels', 2, 'it'),
('ateliers-culturels', 'Laboratori culturali', 'ateliers-culturels', 'evenements-culturels', 2, 'it'),
('evenements-literaires', 'Eventi letterari', 'evenements-literaires', 'evenements-culturels', 2, 'it');

-- NIVEAU 2 : Niveau 2 pour Événements sportifs (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('matchs-football', 'Partite di calcio', 'matchs-football', 'evenements-sportifs', 2, 'it'),
('matchs-basketball', 'Partite di pallacanestro', 'matchs-basketball', 'evenements-sportifs', 2, 'it'),
('matchs-handball', 'Partite di pallamano', 'matchs-handball', 'evenements-sportifs', 2, 'it'),
('matchs-volleyball', 'Partite di pallavolo', 'matchs-volleyball', 'evenements-sportifs', 2, 'it'),
('competitions-athletisme', 'Competizioni di atletica', 'competitions-athletisme', 'evenements-sportifs', 2, 'it'),
('tournois-sportifs', 'Tornei sportivi', 'tournois-sportifs', 'evenements-sportifs', 2, 'it'),
('marathons', 'Maratone', 'marathons', 'evenements-sportifs', 2, 'it'),
('courses-cyclistes', 'Gare ciclistiche', 'courses-cyclistes', 'evenements-sportifs', 2, 'it'),
('competitions-equestres', 'Competizioni equestri', 'competitions-equestres', 'evenements-sportifs', 2, 'it');