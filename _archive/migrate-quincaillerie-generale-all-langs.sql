-- NIVEAU 0 : Quincaillerie Générale (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('quincaillerie-generale', 'Quincaillerie Générale', 'quincaillerie-generale', NULL, 0, 'fr');

-- NIVEAU 1 : Outils à main (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('outils-maine', 'Outils à main', 'outils-maine', 'quincaillerie-generale', 1, 'fr');

-- NIVEAU 2 : Quincaillerie du bâtiment (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('quincaillerie-batiment', 'Quincaillerie du bâtiment', 'quincaillerie-batiment', 'quincaillerie-generale', 1, 'fr');

-- NIVEAU 3 : Niveau 3 pour Outils à main (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('marteaux', 'Marteaux', 'marteaux', 'outils-maine', 2, 'fr'),
('tournevis', 'Tournevis', 'tournevis', 'outils-maine', 2, 'fr'),
('cles', 'Clés', 'cles', 'outils-maine', 2, 'fr'),
('pinces', 'Pinces', 'pinces', 'outils-maine', 2, 'fr'),
('scies-maine', 'Scies à main', 'scies-maine', 'outils-maine', 2, 'fr'),
('ciseaux-tole', 'Ciseaux à tôle', 'ciseaux-tole', 'outils-maine', 2, 'fr'),
('niveaux', 'Niveaux', 'niveaux', 'outils-maine', 2, 'fr'),
('metres-rubans', 'Mètres rubans', 'metres-rubans', 'outils-maine', 2, 'fr'),
('couteaux-outils', 'Couteaux & outils', 'couteaux-outils', 'outils-maine', 2, 'fr'),
('faucilles', 'Faucilles', 'faucilles', 'outils-maine', 2, 'fr');

-- NIVEAU 3 : Niveau 3 pour Quincaillerie du bâtiment (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('vis', 'Vis', 'vis', 'quincaillerie-batiment', 2, 'fr'),
('boulons', 'Boulons', 'boulons', 'quincaillerie-batiment', 2, 'fr'),
('ecrous', 'Écrous', 'ecrous', 'quincaillerie-batiment', 2, 'fr'),
('rondelles', 'Rondelles', 'rondelles', 'quincaillerie-batiment', 2, 'fr'),
('chevilles', 'Chevilles', 'chevilles', 'quincaillerie-batiment', 2, 'fr'),
('clous', 'Clous', 'clous', 'quincaillerie-batiment', 2, 'fr'),
('pointes', 'Pointes', 'pointes', 'quincaillerie-batiment', 2, 'fr'),
('agrafees', 'Agrafées', 'agrafees', 'quincaillerie-batiment', 2, 'fr'),
('charnieres', 'Charnières', 'charnieres', 'quincaillerie-batiment', 2, 'fr'),
('serrures', 'Serrures', 'serrures', 'quincaillerie-batiment', 2, 'fr');

-- NIVEAU 0 : Quincaillerie Générale (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('quincaillerie-generale', 'أدوات وعدد عامة', 'quincaillerie-generale', NULL, 0, 'ar');

-- NIVEAU 1 : Outils à main (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('outils-maine', 'أدوات يدوية', 'outils-maine', 'quincaillerie-generale', 1, 'ar');

-- NIVEAU 2 : Quincaillerie du bâtiment (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('quincaillerie-batiment', 'عدد البناء', 'quincaillerie-batiment', 'quincaillerie-generale', 1, 'ar');

-- NIVEAU 3 : Niveau 3 pour Outils à main (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('marteaux', 'مطارق', 'marteaux', 'outils-maine', 2, 'ar'),
('tournevis', 'براغي', 'tournevis', 'outils-maine', 2, 'ar'),
('cles', 'مفاتيح', 'cles', 'outils-maine', 2, 'ar'),
('pinces', 'كماشات', 'pinces', 'outils-maine', 2, 'ar'),
('scies-maine', 'مناشير يدوية', 'scies-maine', 'outils-maine', 2, 'ar'),
('ciseaux-tole', 'مقصات للصفائح', 'ciseaux-tole', 'outils-maine', 2, 'ar'),
('niveaux', 'مستويات', 'niveaux', 'outils-maine', 2, 'ar'),
('metres-rubans', 'أشرطة القياس', 'metres-rubans', 'outils-maine', 2, 'ar'),
('couteaux-outils', 'سكاكين وأدوات', 'couteaux-outils', 'outils-maine', 2, 'ar'),
('faucilles', 'مناجل', 'faucilles', 'outils-maine', 2, 'ar');

-- NIVEAU 3 : Niveau 3 pour Quincaillerie du bâtiment (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('vis', 'براغي', 'vis', 'quincaillerie-batiment', 2, 'ar'),
('boulons', 'صواميل', 'boulons', 'quincaillerie-batiment', 2, 'ar'),
('ecrous', 'صواميل', 'ecrous', 'quincaillerie-batiment', 2, 'ar'),
('rondelles', 'حلقات', 'rondelles', 'quincaillerie-batiment', 2, 'ar'),
('chevilles', 'قواطع', 'chevilles', 'quincaillerie-batiment', 2, 'ar'),
('clous', 'مسامير', 'clous', 'quincaillerie-batiment', 2, 'ar'),
('pointes', 'نقاط', 'pointes', 'quincaillerie-batiment', 2, 'ar'),
('agrafees', 'دبابيس', 'agrafees', 'quincaillerie-batiment', 2, 'ar'),
('charnieres', 'مفصلات', 'charnieres', 'quincaillerie-batiment', 2, 'ar'),
('serrures', 'أقفال', 'serrures', 'quincaillerie-batiment', 2, 'ar');

-- NIVEAU 0 : Quincaillerie Générale (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('quincaillerie-generale', 'Ferretería General', 'quincaillerie-generale', NULL, 0, 'es');

-- NIVEAU 1 : Outils à main (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('outils-maine', 'Herramientas manuales', 'outils-maine', 'quincaillerie-generale', 1, 'es');

-- NIVEAU 2 : Quincaillerie du bâtiment (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('quincaillerie-batiment', 'Ferretería de construcción', 'quincaillerie-batiment', 'quincaillerie-generale', 1, 'es');

-- NIVEAU 3 : Niveau 3 pour Outils à main (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('marteaux', 'Martillos', 'marteaux', 'outils-maine', 2, 'es'),
('tournevis', 'Destornilladores', 'tournevis', 'outils-maine', 2, 'es'),
('cles', 'Llaves', 'cles', 'outils-maine', 2, 'es'),
('pinces', 'Pinzas', 'pinces', 'outils-maine', 2, 'es'),
('scies-maine', 'Sierras manuales', 'scies-maine', 'outils-maine', 2, 'es'),
('ciseaux-tole', 'Tijeras para chapa', 'ciseaux-tole', 'outils-maine', 2, 'es'),
('niveaux', 'Niveles', 'niveaux', 'outils-maine', 2, 'es'),
('metres-rubans', 'Cintas métricas', 'metres-rubans', 'outils-maine', 2, 'es'),
('couteaux-outils', 'Cuchillos y herramientas', 'couteaux-outils', 'outils-maine', 2, 'es'),
('faucilles', 'Hoces', 'faucilles', 'outils-maine', 2, 'es');

-- NIVEAU 3 : Niveau 3 pour Quincaillerie du bâtiment (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('vis', 'Tornillos', 'vis', 'quincaillerie-batiment', 2, 'es'),
('boulons', 'Pernos', 'boulons', 'quincaillerie-batiment', 2, 'es'),
('ecrous', 'Tuercas', 'ecrous', 'quincaillerie-batiment', 2, 'es'),
('rondelles', 'Arandelas', 'rondelles', 'quincaillerie-batiment', 2, 'es'),
('chevilles', 'Anclajes', 'chevilles', 'quincaillerie-batiment', 2, 'es'),
('clous', 'Clavos', 'clous', 'quincaillerie-batiment', 2, 'es'),
('pointes', 'Puntas', 'pointes', 'quincaillerie-batiment', 2, 'es'),
('agrafees', 'Grapas', 'agrafees', 'quincaillerie-batiment', 2, 'es'),
('charnieres', 'Bisagras', 'charnieres', 'quincaillerie-batiment', 2, 'es'),
('serrures', 'Cerraduras', 'serrures', 'quincaillerie-batiment', 2, 'es');

-- NIVEAU 0 : Quincaillerie Générale (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('quincaillerie-generale', 'Allgemeine Eisenwaren', 'quincaillerie-generale', NULL, 0, 'de');

-- NIVEAU 1 : Outils à main (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('outils-maine', 'Handwerkzeuge', 'outils-maine', 'quincaillerie-generale', 1, 'de');

-- NIVEAU 2 : Quincaillerie du bâtiment (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('quincaillerie-batiment', 'Baubeschläge', 'quincaillerie-batiment', 'quincaillerie-generale', 1, 'de');

-- NIVEAU 3 : Niveau 3 pour Outils à main (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('marteaux', 'Hämmer', 'marteaux', 'outils-maine', 2, 'de'),
('tournevis', 'Schraubendreher', 'tournevis', 'outils-maine', 2, 'de'),
('cles', 'Schlüssel', 'cles', 'outils-maine', 2, 'de'),
('pinces', 'Zangen', 'pinces', 'outils-maine', 2, 'de'),
('scies-maine', 'Handsägen', 'scies-maine', 'outils-maine', 2, 'de'),
('ciseaux-tole', 'Blechscheren', 'ciseaux-tole', 'outils-maine', 2, 'de'),
('niveaux', 'Wasserwaagen', 'niveaux', 'outils-maine', 2, 'de'),
('metres-rubans', 'Maßbänder', 'metres-rubans', 'outils-maine', 2, 'de'),
('couteaux-outils', 'Messer & Werkzeuge', 'couteaux-outils', 'outils-maine', 2, 'de'),
('faucilles', 'Sicheln', 'faucilles', 'outils-maine', 2, 'de');

-- NIVEAU 3 : Niveau 3 pour Quincaillerie du bâtiment (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('vis', 'Schrauben', 'vis', 'quincaillerie-batiment', 2, 'de'),
('boulons', 'Bolzen', 'boulons', 'quincaillerie-batiment', 2, 'de'),
('ecrous', 'Muttern', 'ecrous', 'quincaillerie-batiment', 2, 'de'),
('rondelles', 'Unterlegscheiben', 'rondelles', 'quincaillerie-batiment', 2, 'de'),
('chevilles', 'Dübel', 'chevilles', 'quincaillerie-batiment', 2, 'de'),
('clous', 'Nägel', 'clous', 'quincaillerie-batiment', 2, 'de'),
('pointes', 'Spitzen', 'pointes', 'quincaillerie-batiment', 2, 'de'),
('agrafees', 'Klammern', 'agrafees', 'quincaillerie-batiment', 2, 'de'),
('charnieres', 'Scharniere', 'charnieres', 'quincaillerie-batiment', 2, 'de'),
('serrures', 'Schlösser', 'serrures', 'quincaillerie-batiment', 2, 'de');

-- NIVEAU 0 : Quincaillerie Générale (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('quincaillerie-generale', 'General Hardware', 'quincaillerie-generale', NULL, 0, 'en');

-- NIVEAU 1 : Outils à main (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('outils-maine', 'Hand Tools', 'outils-maine', 'quincaillerie-generale', 1, 'en');

-- NIVEAU 2 : Quincaillerie du bâtiment (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('quincaillerie-batiment', 'Building Hardware', 'quincaillerie-batiment', 'quincaillerie-generale', 1, 'en');

-- NIVEAU 3 : Niveau 3 pour Outils à main (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('marteaux', 'Hammers', 'marteaux', 'outils-maine', 2, 'en'),
('tournevis', 'Screwdrivers', 'tournevis', 'outils-maine', 2, 'en'),
('cles', 'Wrenches', 'cles', 'outils-maine', 2, 'en'),
('pinces', 'Pliers', 'pinces', 'outils-maine', 2, 'en'),
('scies-maine', 'Hand Saws', 'scies-maine', 'outils-maine', 2, 'en'),
('ciseaux-tole', 'Tin Snips', 'ciseaux-tole', 'outils-maine', 2, 'en'),
('niveaux', 'Levels', 'niveaux', 'outils-maine', 2, 'en'),
('metres-rubans', 'Tape Measures', 'metres-rubans', 'outils-maine', 2, 'en'),
('couteaux-outils', 'Knives & Tools', 'couteaux-outils', 'outils-maine', 2, 'en'),
('faucilles', 'Sickles', 'faucilles', 'outils-maine', 2, 'en');

-- NIVEAU 3 : Niveau 3 pour Quincaillerie du bâtiment (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('vis', 'Screws', 'vis', 'quincaillerie-batiment', 2, 'en'),
('boulons', 'Bolts', 'boulons', 'quincaillerie-batiment', 2, 'en'),
('ecrous', 'Nuts', 'ecrous', 'quincaillerie-batiment', 2, 'en'),
('rondelles', 'Washers', 'rondelles', 'quincaillerie-batiment', 2, 'en'),
('chevilles', 'Anchors', 'chevilles', 'quincaillerie-batiment', 2, 'en'),
('clous', 'Nails', 'clous', 'quincaillerie-batiment', 2, 'en'),
('pointes', 'Points', 'pointes', 'quincaillerie-batiment', 2, 'en'),
('agrafees', 'Staples', 'agrafees', 'quincaillerie-batiment', 2, 'en'),
('charnieres', 'Hinges', 'charnieres', 'quincaillerie-batiment', 2, 'en'),
('serrures', 'Locks', 'serrures', 'quincaillerie-batiment', 2, 'en');

-- NIVEAU 0 : Quincaillerie Générale (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('quincaillerie-generale', 'Ferramenta Generale', 'quincaillerie-generale', NULL, 0, 'it');

-- NIVEAU 1 : Outils à main (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('outils-maine', 'Utensili manuali', 'outils-maine', 'quincaillerie-generale', 1, 'it');

-- NIVEAU 2 : Quincaillerie du bâtiment (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('quincaillerie-batiment', 'Ferramenta da costruzione', 'quincaillerie-batiment', 'quincaillerie-generale', 1, 'it');

-- NIVEAU 3 : Niveau 3 pour Outils à main (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('marteaux', 'Martelli', 'marteaux', 'outils-maine', 2, 'it'),
('tournevis', 'Cacciaviti', 'tournevis', 'outils-maine', 2, 'it'),
('cles', 'Chiavi', 'cles', 'outils-maine', 2, 'it'),
('pinces', 'Pinze', 'pinces', 'outils-maine', 2, 'it'),
('scies-maine', 'Seghe manuali', 'scies-maine', 'outils-maine', 2, 'it'),
('ciseaux-tole', 'Forbici per lamiera', 'ciseaux-tole', 'outils-maine', 2, 'it'),
('niveaux', 'Livelli', 'niveaux', 'outils-maine', 2, 'it'),
('metres-rubans', 'Nastri metrici', 'metres-rubans', 'outils-maine', 2, 'it'),
('couteaux-outils', 'Coltelli e utensili', 'couteaux-outils', 'outils-maine', 2, 'it'),
('faucilles', 'Falci', 'faucilles', 'outils-maine', 2, 'it');

-- NIVEAU 3 : Niveau 3 pour Quincaillerie du bâtiment (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('vis', 'Viti', 'vis', 'quincaillerie-batiment', 2, 'it'),
('boulons', 'Bulloni', 'boulons', 'quincaillerie-batiment', 2, 'it'),
('ecrous', 'Dadi', 'ecrous', 'quincaillerie-batiment', 2, 'it'),
('rondelles', 'Rondelle', 'rondelles', 'quincaillerie-batiment', 2, 'it'),
('chevilles', 'Tasselli', 'chevilles', 'quincaillerie-batiment', 2, 'it'),
('clous', 'Chiodi', 'clous', 'quincaillerie-batiment', 2, 'it'),
('pointes', 'Punte', 'pointes', 'quincaillerie-batiment', 2, 'it'),
('agrafees', 'Graffette', 'agrafees', 'quincaillerie-batiment', 2, 'it'),
('charnieres', 'Cerniere', 'charnieres', 'quincaillerie-batiment', 2, 'it'),
('serrures', 'Serrature', 'serrures', 'quincaillerie-batiment', 2, 'it');