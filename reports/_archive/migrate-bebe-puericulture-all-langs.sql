-- SQL migration for Bébé & Puériculture category with all 6 languages
-- 3-level hierarchy: main category → subcategories → sub-subcategories

-- =====================================================
-- FRENCH (fr)
-- =====================================================

-- Main category
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES ('bebe-puericulture', 'Bébé & Puériculture', 'bebe-puericulture', NULL, 0, 'fr');

-- Level 1 subcategories
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('vetements-bebe', 'Vêtements bébé', 'vetements-bebe', 'bebe-puericulture', 1, 'fr'),
('chaussures-bebe', 'Chaussures bébé', 'chaussures-bebe', 'bebe-puericulture', 1, 'fr'),
('poussettes-landaus', 'Poussettes & landaus', 'poussettes-landaus', 'bebe-puericulture', 1, 'fr'),
('sieges-auto-bebe', 'Sièges auto bébé', 'sieges-auto-bebe', 'bebe-puericulture', 1, 'fr'),
('lits-berceaux-bebe', 'Lits & berceaux bébé', 'lits-berceaux-bebe', 'bebe-puericulture', 1, 'fr');

-- Level 2 sub-subcategories
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
-- Vêtements bébé subcategories
('bodies-pyjamas', 'Bodies & pyjamas', 'bodies-pyjamas', 'vetements-bebe', 2, 'fr'),
('ensembles-bebe', 'Ensembles', 'ensembles-bebe', 'vetements-bebe', 2, 'fr'),
('grenouilleres', 'Grenouillères', 'grenouilleres', 'vetements-bebe', 2, 'fr'),
('gigoteuses-turbulettes', 'Gigoteuses & turbulettes', 'gigoteuses-turbulettes', 'vetements-bebe', 2, 'fr'),
('manteaux-combinaisons', 'Manteaux & combinaisons', 'manteaux-combinaisons', 'vetements-bebe', 2, 'fr'),

-- Chaussures bébé subcategories
('chaussons-naissance', 'Chaussons de naissance', 'chaussons-naissance', 'chaussures-bebe', 2, 'fr'),
('sandales-bebe', 'Sandales', 'sandales-bebe', 'chaussures-bebe', 2, 'fr'),
('baskets-bebe', 'Baskets', 'baskets-bebe', 'chaussures-bebe', 2, 'fr'),
('bottines-bebe', 'Bottines', 'bottines-bebe', 'chaussures-bebe', 2, 'fr'),

-- Poussettes & landaus subcategories
('poussettes-canne', 'Poussettes canne', 'poussettes-canne', 'poussettes-landaus', 2, 'fr'),
('poussettes-3-roues', 'Poussettes 3 roues', 'poussettes-3-roues', 'poussettes-landaus', 2, 'fr'),
('landeaux', 'Landeaux', 'landeaux', 'poussettes-landaus', 2, 'fr'),
('travel-system', 'Travel system', 'travel-system', 'poussettes-landaus', 2, 'fr'),
('accessoires-poussette', 'Accessoires poussette', 'accessoires-poussette', 'poussettes-landaus', 2, 'fr'),
('marques-poussettes', 'Marques poussettes', 'marques-poussettes', 'poussettes-landaus', 2, 'fr'),

-- Sièges auto bébé subcategories
('cosy-groupe-0', 'Cosy groupe 0', 'cosy-groupe-0', 'sieges-auto-bebe', 2, 'fr'),
('siege-auto-groupe-0-1', 'Siège auto groupe 0/1', 'siege-auto-groupe-0-1', 'sieges-auto-bebe', 2, 'fr'),
('siege-auto-groupe-1-2-3', 'Siège auto groupe 1/2/3', 'siege-auto-groupe-1-2-3', 'sieges-auto-bebe', 2, 'fr'),
('bases-isofix', 'Bases ISOFIX', 'bases-isofix', 'sieges-auto-bebe', 2, 'fr'),
('marques-sieges-auto', 'Marques sièges auto', 'marques-sieges-auto', 'sieges-auto-bebe', 2, 'fr'),

-- Lits & berceaux bébé subcategories
('berceaux', 'Berceaux', 'berceaux', 'lits-berceaux-bebe', 2, 'fr'),
('lits-parapluie', 'Lits parapluie', 'lits-parapluie', 'lits-berceaux-bebe', 2, 'fr'),
('lits-evolutifs', 'Lits évolutifs', 'lits-evolutifs', 'lits-berceaux-bebe', 2, 'fr'),
('matelas-bebe', 'Matelas bébé', 'matelas-bebe', 'lits-berceaux-bebe', 2, 'fr'),
('marques-lits-berceaux', 'Marques lits berceaux', 'marques-lits-berceaux', 'lits-berceaux-bebe', 2, 'fr');

-- NIVEAU 3 : Vêtements bébé (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('corporals-0-3-mois', 'Corporals 0-3 mois', 'corporals-0-3-mois', 'vetements-bebe', 3, 'fr'),
('corporals-3-6-mois', 'Corporals 3-6 mois', 'corporals-3-6-mois', 'vetements-bebe', 3, 'fr'),
('corporals-6-12-mois', 'Corporals 6-12 mois', 'corporals-6-12-mois', 'vetements-bebe', 3, 'fr'),
('corporals-12-24-mois', 'Corporals 12-24 mois', 'corporals-12-24-mois', 'vetements-bebe', 3, 'fr'),
('corporals-2-3-ans', 'Corporals 2-3 ans', 'corporals-2-3-ans', 'vetements-bebe', 3, 'fr'),
('corporals-3-4-ans', 'Corporals 3-4 ans', 'corporals-3-4-ans', 'vetements-bebe', 3, 'fr');

-- NIVEAU 3 : Puériculture (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('poussettes', 'Poussettes', 'poussettes', 'puericulture', 3, 'fr'),
('sieges-auto', 'Sièges auto', 'sieges-auto', 'puericulture', 3, 'fr'),
('lits-bebe', 'Lits bébé', 'lits-bebe', 'puericulture', 3, 'fr'),
('chaises-hautes', 'Chaises hautes', 'chaises-hautes', 'puericulture', 3, 'fr'),
('table-a-langer', 'Table à langer', 'table-a-langer', 'puericulture', 3, 'fr'),
('portes-bebe', 'Portes-bébé', 'portes-bebe', 'puericulture', 3, 'fr'),
('moniteurs-bebe', 'Moniteurs bébé', 'moniteurs-bebe', 'puericulture', 3, 'fr'),
('thermometres-bebe', 'Thermomètres bébé', 'thermometres-bebe', 'puericulture', 3, 'fr'),
('biberons', 'Biberons', 'biberons', 'puericulture', 3, 'fr'),
('sterilisateurs', 'Stérilisateurs', 'sterilisateurs', 'puericulture', 3, 'fr');

-- =====================================================
-- ENGLISH (en)
-- =====================================================

-- Main category
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES ('bebe-puericulture', 'Baby & Nursery', 'bebe-puericulture', NULL, 0, 'en');

-- Level 1 subcategories
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('vetements-bebe', 'Baby clothes', 'vetements-bebe', 'bebe-puericulture', 1, 'en'),
('chaussures-bebe', 'Baby shoes', 'chaussures-bebe', 'bebe-puericulture', 1, 'en'),
('poussettes-landaus', 'Strollers & prams', 'poussettes-landaus', 'bebe-puericulture', 1, 'en'),
('sieges-auto-bebe', 'Car seats', 'sieges-auto-bebe', 'bebe-puericulture', 1, 'en'),
('lits-berceaux-bebe', 'Cribs & cradles', 'lits-berceaux-bebe', 'bebe-puericulture', 1, 'en');

-- Level 2 sub-subcategories
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
-- Baby clothes subcategories
('bodies-pyjamas', 'Bodysuits & pajamas', 'bodies-pyjamas', 'vetements-bebe', 2, 'en'),
('ensembles-bebe', 'Outfits', 'ensembles-bebe', 'vetements-bebe', 2, 'en'),
('grenouilleres', 'Onesies', 'grenouilleres', 'vetements-bebe', 2, 'en'),
('gigoteuses-turbulettes', 'Sleep sacks & wearable blankets', 'gigoteuses-turbulettes', 'vetements-bebe', 2, 'en'),
('manteaux-combinaisons', 'Coats & snowsuits', 'manteaux-combinaisons', 'vetements-bebe', 2, 'en'),

-- Baby shoes subcategories
('chaussons-naissance', 'Newborn booties', 'chaussons-naissance', 'chaussures-bebe', 2, 'en'),
('sandales-bebe', 'Sandals', 'sandales-bebe', 'chaussures-bebe', 2, 'en'),
('baskets-bebe', 'Sneakers', 'baskets-bebe', 'chaussures-bebe', 2, 'en'),
('bottines-bebe', 'Booties', 'bottines-bebe', 'chaussures-bebe', 2, 'en'),

-- Strollers & prams subcategories
('poussettes-canne', 'Umbrella strollers', 'poussettes-canne', 'poussettes-landaus', 2, 'en'),
('poussettes-3-roues', '3-wheel strollers', 'poussettes-3-roues', 'poussettes-landaus', 2, 'en'),
('landeaux', 'Prams', 'landeaux', 'poussettes-landaus', 2, 'en'),
('travel-system', 'Travel system', 'travel-system', 'poussettes-landaus', 2, 'en'),
('accessoires-poussette', 'Stroller accessories', 'accessoires-poussette', 'poussettes-landaus', 2, 'en'),
('marques-poussettes', 'Stroller brands', 'marques-poussettes', 'poussettes-landaus', 2, 'en'),

-- Car seats subcategories
('cosy-groupe-0', 'Infant carriers group 0', 'cosy-groupe-0', 'sieges-auto-bebe', 2, 'en'),
('siege-auto-groupe-0-1', 'Car seats group 0/1', 'siege-auto-groupe-0-1', 'sieges-auto-bebe', 2, 'en'),
('siege-auto-groupe-1-2-3', 'Car seats group 1/2/3', 'siege-auto-groupe-1-2-3', 'sieges-auto-bebe', 2, 'en'),
('bases-isofix', 'ISOFIX bases', 'bases-isofix', 'sieges-auto-bebe', 2, 'en'),
('marques-sieges-auto', 'Car seat brands', 'marques-sieges-auto', 'sieges-auto-bebe', 2, 'en'),

-- Cribs & cradles subcategories
('berceaux', 'Cradles', 'berceaux', 'lits-berceaux-bebe', 2, 'en'),
('lits-parapluie', 'Travel cribs', 'lits-parapluie', 'lits-berceaux-bebe', 2, 'en'),
('lits-evolutifs', 'Convertible cribs', 'lits-evolutifs', 'lits-berceaux-bebe', 2, 'en'),
('matelas-bebe', 'Baby mattresses', 'matelas-bebe', 'lits-berceaux-bebe', 2, 'en'),
('marques-lits-berceaux', 'Crib & cradle brands', 'marques-lits-berceaux', 'lits-berceaux-bebe', 2, 'en');

-- NIVEAU 3 : Vêtements bébé (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('corporals-0-3-mois', 'Corporals 0-3 months', 'corporals-0-3-mois', 'vetements-bebe', 3, 'en'),
('corporals-3-6-mois', 'Corporals 3-6 months', 'corporals-3-6-mois', 'vetements-bebe', 3, 'en'),
('corporals-6-12-mois', 'Corporals 6-12 months', 'corporals-6-12-mois', 'vetements-bebe', 3, 'en'),
('corporals-12-24-mois', 'Corporals 12-24 months', 'corporals-12-24-mois', 'vetements-bebe', 3, 'en'),
('corporals-2-3-ans', 'Corporals 2-3 years', 'corporals-2-3-ans', 'vetements-bebe', 3, 'en'),
('corporals-3-4-ans', 'Corporals 3-4 years', 'corporals-3-4-ans', 'vetements-bebe', 3, 'en');

-- NIVEAU 3 : Puériculture (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('poussettes', 'Strollers', 'poussettes', 'puericulture', 3, 'en'),
('sieges-auto', 'Car seats', 'sieges-auto', 'puericulture', 3, 'en'),
('lits-bebe', 'Baby beds', 'lits-bebe', 'puericulture', 3, 'en'),
('chaises-hautes', 'High chairs', 'chaises-hautes', 'puericulture', 3, 'en'),
('table-a-langer', 'Changing table', 'table-a-langer', 'puericulture', 3, 'en'),
('portes-bebe', 'Baby gates', 'portes-bebe', 'puericulture', 3, 'en'),
('moniteurs-bebe', 'Baby monitors', 'moniteurs-bebe', 'puericulture', 3, 'en'),
('thermometres-bebe', 'Baby thermometers', 'thermometres-bebe', 'puericulture', 3, 'en'),
('biberons', 'Baby bottles', 'biberons', 'puericulture', 3, 'en'),
('sterilisateurs', 'Sterilizers', 'sterilisateurs', 'puericulture', 3, 'en');

-- =====================================================
-- SPANISH (es)
-- =====================================================

-- Main category
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES ('bebe-puericulture', 'Bebé y Puericultura', 'bebe-puericulture', NULL, 0, 'es');

-- Level 1 subcategories
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('vetements-bebe', 'Ropa de bebé', 'vetements-bebe', 'bebe-puericulture', 1, 'es'),
('chaussures-bebe', 'Zapatos de bebé', 'chaussures-bebe', 'bebe-puericulture', 1, 'es'),
('poussettes-landaus', 'Carritos & cochecitos', 'poussettes-landaus', 'bebe-puericulture', 1, 'es'),
('sieges-auto-bebe', 'Sillas de coche', 'sieges-auto-bebe', 'bebe-puericulture', 1, 'es'),
('lits-berceaux-bebe', 'Cunas & moisés', 'lits-berceaux-bebe', 'bebe-puericulture', 1, 'es');

-- Level 2 sub-subcategories
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
-- Ropa de bebé subcategories
('bodies-pyjamas', 'Bodies y pijamas', 'bodies-pyjamas', 'vetements-bebe', 2, 'es'),
('ensembles-bebe', 'Conjuntos', 'ensembles-bebe', 'vetements-bebe', 2, 'es'),
('grenouilleres', 'Enteritos', 'grenouilleres', 'vetements-bebe', 2, 'es'),
('gigoteuses-turbulettes', 'Sacos de dormir', 'gigoteuses-turbulettes', 'vetements-bebe', 2, 'es'),
('manteaux-combinaisons', 'Abrigos y monos', 'manteaux-combinaisons', 'vetements-bebe', 2, 'es'),

-- Zapatos de bebé subcategories
('chaussons-naissance', 'Zapatitos de recién nacido', 'chaussons-naissance', 'chaussures-bebe', 2, 'es'),
('sandales-bebe', 'Sandalias', 'sandales-bebe', 'chaussures-bebe', 2, 'es'),
('baskets-bebe', 'Zapatillas', 'baskets-bebe', 'chaussures-bebe', 2, 'es'),
('bottines-bebe', 'Botitas', 'bottines-bebe', 'chaussures-bebe', 2, 'es'),

-- Carritos & cochecitos subcategories
('poussettes-canne', 'Cochecitos tipo bastón', 'poussettes-canne', 'poussettes-landaus', 2, 'es'),
('poussettes-3-roues', 'Cochecitos de 3 ruedas', 'poussettes-3-roues', 'poussettes-landaus', 2, 'es'),
('landeaux', 'Carritos/landós', 'landeaux', 'poussettes-landaus', 2, 'es'),
('travel-system', 'Travel system', 'travel-system', 'poussettes-landaus', 2, 'es'),
('accessoires-poussette', 'Accesorios para cochecito', 'accessoires-poussette', 'poussettes-landaus', 2, 'es'),
('marques-poussettes', 'Marcas de carritos', 'marques-poussettes', 'poussettes-landaus', 2, 'es'),

-- Sillas de coche subcategories
('cosy-groupe-0', 'Huevitos grupo 0', 'cosy-groupe-0', 'sieges-auto-bebe', 2, 'es'),
('siege-auto-groupe-0-1', 'Sillas grupo 0/1', 'siege-auto-groupe-0-1', 'sieges-auto-bebe', 2, 'es'),
('siege-auto-groupe-1-2-3', 'Sillas grupo 1/2/3', 'siege-auto-groupe-1-2-3', 'sieges-auto-bebe', 2, 'es'),
('bases-isofix', 'Bases ISOFIX', 'bases-isofix', 'sieges-auto-bebe', 2, 'es'),
('marques-sieges-auto', 'Marcas de sillas de coche', 'marques-sieges-auto', 'sieges-auto-bebe', 2, 'es'),

-- Cunas & moisés subcategories
('berceaux', 'Mecedoras/cunas', 'berceaux', 'lits-berceaux-bebe', 2, 'es'),
('lits-parapluie', 'Cunas de viaje', 'lits-parapluie', 'lits-berceaux-bebe', 2, 'es'),
('lits-evolutifs', 'Cunas evolutivas', 'lits-evolutifs', 'lits-berceaux-bebe', 2, 'es'),
('matelas-bebe', 'Colchones bebé', 'matelas-bebe', 'lits-berceaux-bebe', 2, 'es'),
('marques-lits-berceaux', 'Marcas de cunas y moisés', 'marques-lits-berceaux', 'lits-berceaux-bebe', 2, 'es');

-- NIVEAU 3 : Vêtements bébé (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('corporals-0-3-mois', 'Corporals 0-3 meses', 'corporals-0-3-mois', 'vetements-bebe', 3, 'es'),
('corporals-3-6-mois', 'Corporals 3-6 meses', 'corporals-3-6-mois', 'vetements-bebe', 3, 'es'),
('corporals-6-12-mois', 'Corporals 6-12 meses', 'corporals-6-12-mois', 'vetements-bebe', 3, 'es'),
('corporals-12-24-mois', 'Corporals 12-24 meses', 'corporals-12-24-mois', 'vetements-bebe', 3, 'es'),
('corporals-2-3-ans', 'Corporals 2-3 años', 'corporals-2-3-ans', 'vetements-bebe', 3, 'es'),
('corporals-3-4-ans', 'Corporals 3-4 años', 'corporals-3-4-ans', 'vetements-bebe', 3, 'es');

-- NIVEAU 3 : Puériculture (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('poussettes', 'Cochecitos', 'poussettes', 'puericulture', 3, 'es'),
('sieges-auto', 'Asientos de coche', 'sieges-auto', 'puericulture', 3, 'es'),
('lits-bebe', 'Camas de bebé', 'lits-bebe', 'puericulture', 3, 'es'),
('chaises-hautes', 'Tronas', 'chaises-hautes', 'puericulture', 3, 'es'),
('table-a-langer', 'Cambiadores', 'table-a-langer', 'puericulture', 3, 'es'),
('portes-bebe', 'Barreras para bebés', 'portes-bebe', 'puericulture', 3, 'es'),
('moniteurs-bebe', 'Monitores de bebé', 'moniteurs-bebe', 'puericulture', 3, 'es'),
('thermometres-bebe', 'Termómetros para bebés', 'thermometres-bebe', 'puericulture', 3, 'es'),
('biberons', 'Biberones', 'biberons', 'puericulture', 3, 'es'),
('sterilisateurs', 'Esterilizadores', 'sterilisateurs', 'puericulture', 3, 'es');

-- =====================================================
-- GERMAN (de)
-- =====================================================

-- Main category
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES ('bebe-puericulture', 'Baby & Kinderpflege', 'bebe-puericulture', NULL, 0, 'de');

-- Level 1 subcategories
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('vetements-bebe', 'Babykleidung', 'vetements-bebe', 'bebe-puericulture', 1, 'de'),
('chaussures-bebe', 'Babyschuhe', 'chaussures-bebe', 'bebe-puericulture', 1, 'de'),
('poussettes-landaus', 'Kinderwagen & Buggys', 'poussettes-landaus', 'bebe-puericulture', 1, 'de'),
('sieges-auto-bebe', 'Kindersitze', 'sieges-auto-bebe', 'bebe-puericulture', 1, 'de'),
('lits-berceaux-bebe', 'Babybetten & Wiegen', 'lits-berceaux-bebe', 'bebe-puericulture', 1, 'de');

-- Level 2 sub-subcategories
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
-- Babykleidung subcategories
('bodies-pyjamas', 'Bodies & Schlafanzüge', 'bodies-pyjamas', 'vetements-bebe', 2, 'de'),
('ensembles-bebe', 'Outfits', 'ensembles-bebe', 'vetements-bebe', 2, 'de'),
('grenouilleres', 'Strampler', 'grenouilleres', 'vetements-bebe', 2, 'de'),
('gigoteuses-turbulettes', 'Schlafsäcke', 'gigoteuses-turbulettes', 'vetements-bebe', 2, 'de'),
('manteaux-combinaisons', 'Mäntel & Overall', 'manteaux-combinaisons', 'vetements-bebe', 2, 'de'),

-- Babyschuhe subcategories
('chaussons-naissance', 'Erstlingsschuhe', 'chaussons-naissance', 'chaussures-bebe', 2, 'de'),
('sandales-bebe', 'Sandalen', 'sandales-bebe', 'chaussures-bebe', 2, 'de'),
('baskets-bebe', 'Sneaker', 'baskets-bebe', 'chaussures-bebe', 2, 'de'),
('bottines-bebe', 'Stiefelchen', 'bottines-bebe', 'chaussures-bebe', 2, 'de'),

-- Kinderwagen & Buggys subcategories
('poussettes-canne', 'Buggy', 'poussettes-canne', 'poussettes-landaus', 2, 'de'),
('poussettes-3-roues', 'Kinderwagen (3 Räder)', 'poussettes-3-roues', 'poussettes-landaus', 2, 'de'),
('landeaux', 'Kinderwagen/Prams', 'landeaux', 'poussettes-landaus', 2, 'de'),
('travel-system', 'Reisesysteme', 'travel-system', 'poussettes-landaus', 2, 'de'),
('accessoires-poussette', 'Kinderwagen-Zubehör', 'accessoires-poussette', 'poussettes-landaus', 2, 'de'),
('marques-poussettes', 'Kinderwagen-Marken', 'marques-poussettes', 'poussettes-landaus', 2, 'de'),

-- Kindersitze subcategories
('cosy-groupe-0', 'Babyschale Gruppe 0', 'cosy-groupe-0', 'sieges-auto-bebe', 2, 'de'),
('siege-auto-groupe-0-1', 'Kindersitz Gruppe 0/1', 'siege-auto-groupe-0-1', 'sieges-auto-bebe', 2, 'de'),
('siege-auto-groupe-1-2-3', 'Kindersitz Gruppe 1/2/3', 'siege-auto-groupe-1-2-3', 'sieges-auto-bebe', 2, 'de'),
('bases-isofix', 'ISOFIX-Basen', 'bases-isofix', 'sieges-auto-bebe', 2, 'de'),
('marques-sieges-auto', 'Kindersitz-Marken', 'marques-sieges-auto', 'sieges-auto-bebe', 2, 'de'),

-- Babybetten & Wiegen subcategories
('berceaux', 'Wiegen', 'berceaux', 'lits-berceaux-bebe', 2, 'de'),
('lits-parapluie', 'Reisebetten', 'lits-parapluie', 'lits-berceaux-bebe', 2, 'de'),
('lits-evolutifs', 'Mitwachsende Betten', 'lits-evolutifs', 'lits-berceaux-bebe', 2, 'de'),
('matelas-bebe', 'Baby-Matratzen', 'matelas-bebe', 'lits-berceaux-bebe', 2, 'de'),
('marques-lits-berceaux', 'Marken Babybetten & Wiegen', 'marques-lits-berceaux', 'lits-berceaux-bebe', 2, 'de');

-- NIVEAU 3 : Vêtements bébé (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('corporals-0-3-mois', 'Corporals 0-3 Monate', 'corporals-0-3-mois', 'vetements-bebe', 3, 'de'),
('corporals-3-6-mois', 'Corporals 3-6 Monate', 'corporals-3-6-mois', 'vetements-bebe', 3, 'de'),
('corporals-6-12-mois', 'Corporals 6-12 Monate', 'corporals-6-12-mois', 'vetements-bebe', 3, 'de'),
('corporals-12-24-mois', 'Corporals 12-24 Monate', 'corporals-12-24-mois', 'vetements-bebe', 3, 'de'),
('corporals-2-3-ans', 'Corporals 2-3 Jahre', 'corporals-2-3-ans', 'vetements-bebe', 3, 'de'),
('corporals-3-4-ans', 'Corporals 3-4 Jahre', 'corporals-3-4-ans', 'vetements-bebe', 3, 'de');

-- NIVEAU 3 : Puériculture (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('poussettes', 'Kinderwagen', 'poussettes', 'puericulture', 3, 'de'),
('sieges-auto', 'Autositz', 'sieges-auto', 'puericulture', 3, 'de'),
('lits-bebe', 'Babybetten', 'lits-bebe', 'puericulture', 3, 'de'),
('chaises-hautes', 'Hochstühle', 'chaises-hautes', 'puericulture', 3, 'de'),
('table-a-langer', 'Wickeltisch', 'table-a-langer', 'puericulture', 3, 'de'),
('portes-bebe', 'Babytore', 'portes-bebe', 'puericulture', 3, 'de'),
('moniteurs-bebe', 'Babyfone', 'moniteurs-bebe', 'puericulture', 3, 'de'),
('thermometres-bebe', 'Babythermometer', 'thermometres-bebe', 'puericulture', 3, 'de'),
('biberons', 'Babyflaschen', 'biberons', 'puericulture', 3, 'de'),
('sterilisateurs', 'Sterilisatoren', 'sterilisateurs', 'puericulture', 3, 'de');

-- =====================================================
-- ITALIAN (it)
-- =====================================================

-- Main category
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES ('bebe-puericulture', 'Bebè & Prima Infanzia', 'bebe-puericulture', NULL, 0, 'it');

-- Level 1 subcategories
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('vetements-bebe', 'Abbigliamento neonato', 'vetements-bebe', 'bebe-puericulture', 1, 'it'),
('chaussures-bebe', 'Scarpe neonato', 'chaussures-bebe', 'bebe-puericulture', 1, 'it'),
('poussettes-landaus', 'Passeggini & carrozzine', 'poussettes-landaus', 'bebe-puericulture', 1, 'it'),
('sieges-auto-bebe', 'Seggiolini auto', 'sieges-auto-bebe', 'bebe-puericulture', 1, 'it'),
('lits-berceaux-bebe', 'Culle & lettini', 'lits-berceaux-bebe', 'bebe-puericulture', 1, 'it');

-- Level 2 sub-subcategories
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
-- Abbigliamento neonato subcategories
('bodies-pyjamas', 'Body e pigiami', 'bodies-pyjamas', 'vetements-bebe', 2, 'it'),
('ensembles-bebe', 'Completi', 'ensembles-bebe', 'vetements-bebe', 2, 'it'),
('grenouilleres', 'Tutine', 'grenouilleres', 'vetements-bebe', 2, 'it'),
('gigoteuses-turbulettes', 'Sacchi nanna', 'gigoteuses-turbulettes', 'vetements-bebe', 2, 'it'),
('manteaux-combinaisons', 'Cappotti & tute invernali', 'manteaux-combinaisons', 'vetements-bebe', 2, 'it'),

-- Scarpe neonato subcategories
('chaussons-naissance', 'Scarpine neonato', 'chaussons-naissance', 'chaussures-bebe', 2, 'it'),
('sandales-bebe', 'Sandali', 'sandales-bebe', 'chaussures-bebe', 2, 'it'),
('baskets-bebe', 'Sneakers', 'baskets-bebe', 'chaussures-bebe', 2, 'it'),
('bottines-bebe', 'Stivaletti', 'bottines-bebe', 'chaussures-bebe', 2, 'it'),

-- Passeggini & carrozzine subcategories
('poussettes-canne', 'Passeggini a ombrello', 'poussettes-canne', 'poussettes-landaus', 2, 'it'),
('poussettes-3-roues', 'Passeggini a 3 ruote', 'poussettes-3-roues', 'poussettes-landaus', 2, 'it'),
('landeaux', 'Carrozzine', 'landeaux', 'poussettes-landaus', 2, 'it'),
('travel-system', 'Travel system', 'travel-system', 'poussettes-landaus', 2, 'it'),
('accessoires-poussette', 'Accessori passeggino', 'accessoires-poussette', 'poussettes-landaus', 2, 'it'),
('marques-poussettes', 'Marche passeggini', 'marques-poussettes', 'poussettes-landaus', 2, 'it'),

-- Seggiolini auto subcategories
('cosy-groupe-0', 'Ovetto gruppo 0', 'cosy-groupe-0', 'sieges-auto-bebe', 2, 'it'),
('siege-auto-groupe-0-1', 'Seggiolini gruppo 0/1', 'siege-auto-groupe-0-1', 'sieges-auto-bebe', 2, 'it'),
('siege-auto-groupe-1-2-3', 'Seggiolini gruppo 1/2/3', 'siege-auto-groupe-1-2-3', 'sieges-auto-bebe', 2, 'it'),
('bases-isofix', 'Basi ISOFIX', 'bases-isofix', 'sieges-auto-bebe', 2, 'it'),
('marques-sieges-auto', 'Marche seggiolini auto', 'marques-sieges-auto', 'sieges-auto-bebe', 2, 'it'),

-- Culle & lettini subcategories
('berceaux', 'Culle', 'berceaux', 'lits-berceaux-bebe', 2, 'it'),
('lits-parapluie', 'Lettini da viaggio', 'lits-parapluie', 'lits-berceaux-bebe', 2, 'it'),
('lits-evolutifs', 'Lettini evolutivi', 'lits-evolutifs', 'lits-berceaux-bebe', 2, 'it'),
('matelas-bebe', 'Materassi bebè', 'matelas-bebe', 'lits-berceaux-bebe', 2, 'it'),
('marques-lits-berceaux', 'Marche culle & lettini', 'marques-lits-berceaux', 'lits-berceaux-bebe', 2, 'it');

-- NIVEAU 3 : Vêtements bébé (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('corporals-0-3-mois', 'Corporals 0-3 mesi', 'corporals-0-3-mois', 'vetements-bebe', 3, 'it'),
('corporals-3-6-mois', 'Corporals 3-6 mesi', 'corporals-3-6-mois', 'vetements-bebe', 3, 'it'),
('corporals-6-12-mois', 'Corporals 6-12 mesi', 'corporals-6-12-mois', 'vetements-bebe', 3, 'it'),
('corporals-12-24-mois', 'Corporals 12-24 mesi', 'corporals-12-24-mois', 'vetements-bebe', 3, 'it'),
('corporals-2-3-ans', 'Corporals 2-3 anni', 'corporals-2-3-ans', 'vetements-bebe', 3, 'it'),
('corporals-3-4-ans', 'Corporals 3-4 anni', 'corporals-3-4-ans', 'vetements-bebe', 3, 'it');

-- NIVEAU 3 : Puériculture (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('poussettes', 'Passeggini', 'poussettes', 'puericulture', 3, 'it'),
('sieges-auto', 'Seggiolini auto', 'sieges-auto', 'puericulture', 3, 'it'),
('lits-bebe', 'Lettini', 'lits-bebe', 'puericulture', 3, 'it'),
('chaises-hautes', 'Seggioloni', 'chaises-hautes', 'puericulture', 3, 'it'),
('table-a-langer', 'Cambiatori', 'table-a-langer', 'puericulture', 3, 'it'),
('portes-bebe', 'Barriere per bambini', 'portes-bebe', 'puericulture', 3, 'it'),
('moniteurs-bebe', 'Monitor per bambini', 'moniteurs-bebe', 'puericulture', 3, 'it'),
('thermometres-bebe', 'Termometri per bambini', 'thermometres-bebe', 'puericulture', 3, 'it'),
('biberons', 'Biberon', 'biberons', 'puericulture', 3, 'it'),
('sterilisateurs', 'Sterilizzatori', 'sterilisateurs', 'puericulture', 3, 'it');

-- =====================================================
-- ARABIC (ar)
-- =====================================================

-- Main category
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES ('bebe-puericulture', 'مستلزمات الأطفال والرضاعة', 'bebe-puericulture', NULL, 0, 'ar');

-- Level 1 subcategories
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('vetements-bebe', 'ملابس الرضع', 'vetements-bebe', 'bebe-puericulture', 1, 'ar'),
('chaussures-bebe', 'أحذية الرضع', 'chaussures-bebe', 'bebe-puericulture', 1, 'ar'),
('poussettes-landaus', 'عربات الأطفال وعربات الدفع', 'poussettes-landaus', 'bebe-puericulture', 1, 'ar'),
('sieges-auto-bebe', 'مقاعد السيارة للرضع', 'sieges-auto-bebe', 'bebe-puericulture', 1, 'ar'),
('lits-berceaux-bebe', 'أسرة الرضع ومهودهم', 'lits-berceaux-bebe', 'bebe-puericulture', 1, 'ar');

-- Level 2 sub-subcategories
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
-- ملابس الرضع subcategories
('bodies-pyjamas', 'بودي وبيجامات', 'bodies-pyjamas', 'vetements-bebe', 2, 'ar'),
('ensembles-bebe', 'طقم ملابس', 'ensembles-bebe', 'vetements-bebe', 2, 'ar'),
('grenouilleres', 'أوفرولات', 'grenouilleres', 'vetements-bebe', 2, 'ar'),
('gigoteuses-turbulettes', 'أكياس نوم للرضع', 'gigoteuses-turbulettes', 'vetements-bebe', 2, 'ar'),
('manteaux-combinaisons', 'معاطف وبدلات شتوية', 'manteaux-combinaisons', 'vetements-bebe', 2, 'ar'),

-- أحذية الرضع subcategories
('chaussons-naissance', 'شرابات المواليد', 'chaussons-naissance', 'chaussures-bebe', 2, 'ar'),
('sandales-bebe', 'صنادل', 'sandales-bebe', 'chaussures-bebe', 2, 'ar'),
('baskets-bebe', 'أحذية رياضية', 'baskets-bebe', 'chaussures-bebe', 2, 'ar'),
('bottines-bebe', 'أحذية قصيرة', 'bottines-bebe', 'chaussures-bebe', 2, 'ar'),

-- عربات الأطفال وعربات الدفع subcategories
('poussettes-canne', 'عربات الأطفال من النوع العصا', 'poussettes-canne', 'poussettes-landaus', 2, 'ar'),
('poussettes-3-roues', 'عربات الأطفال بثلاث عجلات', 'poussettes-3-roues', 'poussettes-landaus', 2, 'ar'),
('landeaux', 'عربات الأطفال التقليدية', 'landeaux', 'poussettes-landaus', 2, 'ar'),
('travel-system', 'نظام السفر', 'travel-system', 'poussettes-landaus', 2, 'ar'),
('accessoires-poussette', 'إكسسوارات عربات الأطفال', 'accessoires-poussette', 'poussettes-landaus', 2, 'ar'),
('marques-poussettes', 'ماركات عربات الأطفال', 'marques-poussettes', 'poussettes-landaus', 2, 'ar'),

-- مقاعد السيارة للرضع subcategories
('cosy-groupe-0', 'مقاعد الرضع مجموعة 0', 'cosy-groupe-0', 'sieges-auto-bebe', 2, 'ar'),
('siege-auto-groupe-0-1', 'مقاعد السيارة مجموعة 0/1', 'siege-auto-groupe-0-1', 'sieges-auto-bebe', 2, 'ar'),
('siege-auto-groupe-1-2-3', 'مقاعد السيارة مجموعة 1/2/3', 'siege-auto-groupe-1-2-3', 'sieges-auto-bebe', 2, 'ar'),
('bases-isofix', 'قواعد ISOFIX', 'bases-isofix', 'sieges-auto-bebe', 2, 'ar'),
('marques-sieges-auto', 'ماركات مقاعد السيارة', 'marques-sieges-auto', 'sieges-auto-bebe', 2, 'ar'),

-- أسرة الرضع ومهودهم subcategories
('berceaux', 'مهود الرضع', 'berceaux', 'lits-berceaux-bebe', 2, 'ar'),
('lits-parapluie', 'أسرة قابلة للطي', 'lits-parapluie', 'lits-berceaux-bebe', 2, 'ar'),
('lits-evolutifs', 'أسرة قابلة للتطور', 'lits-evolutifs', 'lits-berceaux-bebe', 2, 'ar'),
('matelas-bebe', 'مراتب الرضع', 'matelas-bebe', 'lits-berceaux-bebe', 2, 'ar'),
('marques-lits-berceaux', 'ماركات الأسرة والمهود', 'marques-lits-berceaux', 'lits-berceaux-bebe', 2, 'ar');

-- NIVEAU 3 : Vêtements bébé (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('corporals-0-3-mois', 'كوربورالز 0-3 أشهر', 'corporals-0-3-mois', 'vetements-bebe', 3, 'ar'),
('corporals-3-6-mois', 'كوربورالز 3-6 أشهر', 'corporals-3-6-mois', 'vetements-bebe', 3, 'ar'),
('corporals-6-12-mois', 'كوربورالز 6-12 شهر', 'corporals-6-12-mois', 'vetements-bebe', 3, 'ar'),
('corporals-12-24-mois', 'كوربورالز 12-24 شهر', 'corporals-12-24-mois', 'vetements-bebe', 3, 'ar'),
('corporals-2-3-ans', 'كوربورالز 2-3 سنوات', 'corporals-2-3-ans', 'vetements-bebe', 3, 'ar'),
('corporals-3-4-ans', 'كوربورالز 3-4 سنوات', 'corporals-3-4-ans', 'vetements-bebe', 3, 'ar');

-- NIVEAU 3 : Puériculture (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('poussettes', 'عربات الأطفال', 'poussettes', 'puericulture', 3, 'ar'),
('sieges-auto', 'مقاعد السيارة', 'sieges-auto', 'puericulture', 3, 'ar'),
('lits-bebe', 'أسرة الأطفال', 'lits-bebe', 'puericulture', 3, 'ar'),
('chaises-hautes', 'كراسي مرتفعة', 'chaises-hautes', 'puericulture', 3, 'ar'),
('table-a-langer', 'طاولة تغيير الحفاضات', 'table-a-langer', 'puericulture', 3, 'ar'),
('portes-bebe', 'بوابات الأطفال', 'portes-bebe', 'puericulture', 3, 'ar'),
('moniteurs-bebe', 'مراقبات الأطفال', 'moniteurs-bebe', 'puericulture', 3, 'ar'),
('thermometres-bebe', 'ترمومترات الأطفال', 'thermometres-bebe', 'puericulture', 3, 'ar'),
('biberons', 'زجاجات الرضاعة', 'biberons', 'puericulture', 3, 'ar'),
('sterilisateurs', 'معقمات', 'sterilisateurs', 'puericulture', 3, 'ar');

-- *** End Patch