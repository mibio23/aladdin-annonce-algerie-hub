-- NIVEAU 0 : Mobilier & Décoration (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('mobilier-et-decoration', 'Mobilier & Décoration', 'mobilier-et-decoration', NULL, 0, 'fr');

-- NIVEAU 1 : Mobilier intérieur (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('mobilier-interieur', 'Mobilier intérieur', 'mobilier-interieur', 'mobilier-et-decoration', 1, 'fr');

-- NIVEAU 2 : Meubles de salon (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('meubles-salon', 'Meubles de salon', 'meubles-salon', 'mobilier-interieur', 2, 'fr');

-- NIVEAU 3 : Canapés, Fauteuils, Tables basses, etc. (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('canapes', 'Canapés', 'canapes', 'meubles-salon', 3, 'fr'),
('fauteuils', 'Fauteuils', 'fauteuils', 'meubles-salon', 3, 'fr'),
('tables-basses', 'Tables basses', 'tables-basses', 'meubles-salon', 3, 'fr'),
('rangements-salon', 'Rangements salon', 'rangements-salon', 'meubles-salon', 3, 'fr'),
('tablettes-murales', 'Tablettes murales', 'tablettes-murales', 'meubles-salon', 3, 'fr');

-- NIVEAU 2 : Meubles de chambre (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('meubles-chambre', 'Meubles de chambre', 'meubles-chambre', 'mobilier-interieur', 2, 'fr');

-- NIVEAU 3 : Lits, Tables de chevet, Armoires, etc. (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('lits', 'Lits', 'lits', 'meubles-chambre', 3, 'fr'),
('tables-chevet', 'Tables de chevet', 'tables-chevet', 'meubles-chambre', 3, 'fr'),
('armoires-chambre', 'Armoires chambre', 'armoires-chambre', 'meubles-chambre', 3, 'fr'),
('commodes', 'Commodes', 'commodes', 'meubles-chambre', 3, 'fr'),
('coiffeuses', 'Coiffeuses', 'coiffeuses', 'meubles-chambre', 3, 'fr'),
('literie', 'Literie', 'literie', 'meubles-chambre', 3, 'fr');

-- NIVEAU 2 : Meubles de cuisine (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('meubles-cuisine', 'Meubles de cuisine', 'meubles-cuisine', 'mobilier-interieur', 2, 'fr');

-- NIVEAU 3 : Tables cuisine, Chaises cuisine, Rangements cuisine, etc. (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('tables-cuisine', 'Tables cuisine', 'tables-cuisine', 'meubles-cuisine', 3, 'fr'),
('chaises-cuisine', 'Chaises cuisine', 'chaises-cuisine', 'meubles-cuisine', 3, 'fr'),
('rangements-cuisine', 'Rangements cuisine', 'rangements-cuisine', 'meubles-cuisine', 3, 'fr'),
('buffets', 'Buffets', 'buffets', 'meubles-cuisine', 3, 'fr'),
('vaisseliers', 'Vaisseliers', 'vaisseliers', 'meubles-cuisine', 3, 'fr');

-- NIVEAU 2 : Meubles de salle de bain (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('meubles-salle-bain', 'Meubles salle de bain', 'meubles-salle-bain', 'mobilier-interieur', 2, 'fr');

-- NIVEAU 3 : Meubles lavabo, Rangements salle bain, Miroirs, etc. (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('meubles-lavabo', 'Meubles lavabo', 'meubles-lavabo', 'meubles-salle-bain', 3, 'fr'),
('rangements-salle-bain', 'Rangements salle bain', 'rangements-salle-bain', 'meubles-salle-bain', 3, 'fr'),
('miroirs', 'Miroirs', 'miroirs', 'meubles-salle-bain', 3, 'fr'),
('armoires-toilette', 'Armoires toilette', 'armoires-toilette', 'meubles-salle-bain', 3, 'fr');

-- NIVEAU 1 : Décoration intérieure (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('decoration-interieure', 'Décoration intérieure', 'decoration-interieure', 'mobilier-et-decoration', 1, 'fr');

-- NIVEAU 2 : Décoration murale (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('decoration-murale', 'Décoration murale', 'decoration-murale', 'decoration-interieure', 2, 'fr');

-- NIVEAU 3 : Tableaux, Cadres, Miroirs décoratifs, etc. (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('tableaux', 'Tableaux', 'tableaux', 'decoration-murale', 3, 'fr'),
('cadres', 'Cadres', 'cadres', 'decoration-murale', 3, 'fr'),
('miroirs-decoratifs', 'Miroirs décoratifs', 'miroirs-decoratifs', 'decoration-murale', 3, 'fr'),
('decors-muraux', 'Décors muraux', 'decors-muraux', 'decoration-murale', 3, 'fr'),
('autocollants-muraux', 'Autocollants muraux', 'autocollants-muraux', 'decoration-murale', 3, 'fr');

-- NIVEAU 2 : Luminaires (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('luminaires', 'Luminaires', 'luminaires', 'decoration-interieure', 2, 'fr');

-- NIVEAU 3 : Lampes, Abat-jour, Suspensions, etc. (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('lampes', 'Lampes', 'lampes', 'luminaires', 3, 'fr'),
('abat-jour', 'Abat-jour', 'abat-jour', 'luminaires', 3, 'fr'),
('suspensions', 'Suspensions', 'suspensions', 'luminaires', 3, 'fr'),
('plafonniers', 'Plafonniers', 'plafonniers', 'luminaires', 3, 'fr'),
('spots', 'Spots', 'spots', 'luminaires', 3, 'fr'),
('lampadaires', 'Lampadaires', 'lampadaires', 'luminaires', 3, 'fr');

-- NIVEAU 2 : Textiles décoratifs (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('textiles-decoratifs', 'Textiles décoratifs', 'textiles-decoratifs', 'decoration-interieure', 2, 'fr');

-- NIVEAU 3 : Rideaux, Voilages, Coussins, etc. (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('rideaux', 'Rideaux', 'rideaux', 'textiles-decoratifs', 3, 'fr'),
('voilages', 'Voilages', 'voilages', 'textiles-decoratifs', 3, 'fr'),
('coussins', 'Coussins', 'coussins', 'textiles-decoratifs', 3, 'fr'),
('couvertures-deco', 'Couvertures déco', 'couvertures-deco', 'textiles-decoratifs', 3, 'fr'),
('tapis', 'Tapis', 'tapis', 'textiles-decoratifs', 3, 'fr');

-- NIVEAU 0 : Mobilier & Décoration (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('mobilier-et-decoration', 'الأثاث والديكور', 'mobilier-et-decoration', NULL, 0, 'ar');

-- NIVEAU 1 : Mobilier intérieur (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('mobilier-interieur', 'الأثاث الداخلي', 'mobilier-interieur', 'mobilier-et-decoration', 1, 'ar');

-- NIVEAU 2 : Meubles de salon (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('meubles-salon', 'أثاث الصالون', 'meubles-salon', 'mobilier-interieur', 2, 'ar');

-- NIVEAU 3 : Canapés, Fauteuils, Tables basses, etc. (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('canapes', 'الأرائك', 'canapes', 'meubles-salon', 3, 'ar'),
('fauteuils', 'الكراسي المريحة', 'fauteuils', 'meubles-salon', 3, 'ar'),
('tables-basses', 'الطاولات المنخفضة', 'tables-basses', 'meubles-salon', 3, 'ar'),
('rangements-salon', 'ترتيب الصالون', 'rangements-salon', 'meubles-salon', 3, 'ar'),
('tablettes-murales', 'الأرفف الجدارية', 'tablettes-murales', 'meubles-salon', 3, 'ar');

-- NIVEAU 2 : Meubles de chambre (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('meubles-chambre', 'أثاث الغرفة', 'meubles-chambre', 'mobilier-interieur', 2, 'ar');

-- NIVEAU 3 : Lits, Tables de chevet, Armoires, etc. (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('lits', 'الأسِرّة', 'lits', 'meubles-chambre', 3, 'ar'),
('tables-chevet', 'طاولات السرير الجانبية', 'tables-chevet', 'meubles-chambre', 3, 'ar'),
('armoires-chambre', 'خزائن الغرفة', 'armoires-chambre', 'meubles-chambre', 3, 'ar'),
('commodes', 'الخزائن المعلقة', 'commodes', 'meubles-chambre', 3, 'ar'),
('coiffeuses', 'طاولات التزيين', 'coiffeuses', 'meubles-chambre', 3, 'ar'),
('literie', 'الفرش', 'literie', 'meubles-chambre', 3, 'ar');

-- NIVEAU 2 : Meubles de cuisine (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('meubles-cuisine', 'أثاث المطبخ', 'meubles-cuisine', 'mobilier-interieur', 2, 'ar');

-- NIVEAU 3 : Tables cuisine, Chaises cuisine, Rangements cuisine, etc. (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('tables-cuisine', 'طاولات المطبخ', 'tables-cuisine', 'meubles-cuisine', 3, 'ar'),
('chaises-cuisine', 'كراسي المطبخ', 'chaises-cuisine', 'meubles-cuisine', 3, 'ar'),
('rangements-cuisine', 'ترتيب المطبخ', 'rangements-cuisine', 'meubles-cuisine', 3, 'ar'),
('buffets', 'البوفيهات', 'buffets', 'meubles-cuisine', 3, 'ar'),
('vaisseliers', 'خزائن الأطباق', 'vaisseliers', 'meubles-cuisine', 3, 'ar');

-- NIVEAU 2 : Meubles de salle de bain (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('meubles-salle-bain', 'أثاث حمام', 'meubles-salle-bain', 'mobilier-interieur', 2, 'ar');

-- NIVEAU 3 : Meubles lavabo, Rangements salle bain, Miroirs, etc. (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('meubles-lavabo', 'أثاث الحوض', 'meubles-lavabo', 'meubles-salle-bain', 3, 'ar'),
('rangements-salle-bain', 'ترتيب حمام', 'rangements-salle-bain', 'meubles-salle-bain', 3, 'ar'),
('miroirs', 'المرايا', 'miroirs', 'meubles-salle-bain', 3, 'ar'),
('armoires-toilette', 'خزائن التزيين', 'armoires-toilette', 'meubles-salle-bain', 3, 'ar');

-- NIVEAU 1 : Décoration intérieure (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('decoration-interieure', 'الديكور الداخلي', 'decoration-interieure', 'mobilier-et-decoration', 1, 'ar');

-- NIVEAU 2 : Décoration murale (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('decoration-murale', 'الديكور الجداري', 'decoration-murale', 'decoration-interieure', 2, 'ar');

-- NIVEAU 3 : Tableaux, Cadres, Miroirs décoratifs, etc. (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('tableaux', 'اللوحات', 'tableaux', 'decoration-murale', 3, 'ar'),
('cadres', 'الإطارات', 'cadres', 'decoration-murale', 3, 'ar'),
('miroirs-decoratifs', 'المرايا الزخرفية', 'miroirs-decoratifs', 'decoration-murale', 3, 'ar'),
('decors-muraux', 'الزخارف الجدارية', 'decors-muraux', 'decoration-murale', 3, 'ar'),
('autocollants-muraux', 'الملصقات الجدارية', 'autocollants-muraux', 'decoration-murale', 3, 'ar');

-- NIVEAU 2 : Luminaires (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('luminaires', 'الإضاءة', 'luminaires', 'decoration-interieure', 2, 'ar');

-- NIVEAU 3 : Lampes, Abat-jour, Suspensions, etc. (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('lampes', 'المصابيح', 'lampes', 'luminaires', 3, 'ar'),
('abat-jour', 'أباجورات', 'abat-jour', 'luminaires', 3, 'ar'),
('suspensions', 'الثريات المعلقة', 'suspensions', 'luminaires', 3, 'ar'),
('plafonniers', 'الثريات السقفية', 'plafonniers', 'luminaires', 3, 'ar'),
('spots', 'السبوتات', 'spots', 'luminaires', 3, 'ar'),
('lampadaires', 'المصابيح الأرضية', 'lampadaires', 'luminaires', 3, 'ar');

-- NIVEAU 2 : Textiles décoratifs (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('textiles-decoratifs', 'المنسوجات الزخرفية', 'textiles-decoratifs', 'decoration-interieure', 2, 'ar');

-- NIVEAU 3 : Rideaux, Voilages, Coussins, etc. (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('rideaux', 'الستائر', 'rideaux', 'textiles-decoratifs', 3, 'ar'),
('voilages', 'البراقع', 'voilages', 'textiles-decoratifs', 3, 'ar'),
('coussins', 'الوسائد', 'coussins', 'textiles-decoratifs', 3, 'ar'),
('couvertures-deco', 'البطانيات الزخرفية', 'couvertures-deco', 'textiles-decoratifs', 3, 'ar'),
('tapis', 'السجاد', 'tapis', 'textiles-decoratifs', 3, 'ar');

-- NIVEAU 0 : Mobilier & Décoration (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('mobilier-et-decoration', 'Mobiliario y Decoración', 'mobilier-et-decoration', NULL, 0, 'es');

-- NIVEAU 1 : Mobilier intérieur (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('mobilier-interieur', 'Mobiliario interior', 'mobilier-interieur', 'mobilier-et-decoration', 1, 'es');

-- NIVEAU 2 : Meubles de salon (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('meubles-salon', 'Muebles de salón', 'meubles-salon', 'mobilier-interieur', 2, 'es');

-- NIVEAU 3 : Canapés, Fauteuils, Tables basses, etc. (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('canapes', 'Sofás', 'canapes', 'meubles-salon', 3, 'es'),
('fauteuils', 'Sillones', 'fauteuils', 'meubles-salon', 3, 'es'),
('tables-basses', 'Mesas bajas', 'tables-basses', 'meubles-salon', 3, 'es'),
('rangements-salon', 'Organización salón', 'rangements-salon', 'meubles-salon', 3, 'es'),
('tablettes-murales', 'Estanterías murales', 'tablettes-murales', 'meubles-salon', 3, 'es');

-- NIVEAU 2 : Meubles de chambre (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('meubles-chambre', 'Muebles de dormitorio', 'meubles-chambre', 'mobilier-interieur', 2, 'es');

-- NIVEAU 3 : Lits, Tables de chevet, Armoires, etc. (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('lits', 'Camas', 'lits', 'meubles-chambre', 3, 'es'),
('tables-chevet', 'Mesitas de noche', 'tables-chevet', 'meubles-chambre', 3, 'es'),
('armoires-chambre', 'Armarios dormitorio', 'armoires-chambre', 'meubles-chambre', 3, 'es'),
('commodes', 'Cómodas', 'commodes', 'meubles-chambre', 3, 'es'),
('coiffeuses', 'Tocadores', 'coiffeuses', 'meubles-chambre', 3, 'es'),
('literie', 'Ropa de cama', 'literie', 'meubles-chambre', 3, 'es');

-- NIVEAU 2 : Meubles de cuisine (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('meubles-cuisine', 'Muebles de cocina', 'meubles-cuisine', 'mobilier-interieur', 2, 'es');

-- NIVEAU 3 : Tables cuisine, Chaises cuisine, Rangements cuisine, etc. (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('tables-cuisine', 'Mesas cocina', 'tables-cuisine', 'meubles-cuisine', 3, 'es'),
('chaises-cuisine', 'Sillas cocina', 'chaises-cuisine', 'meubles-cuisine', 3, 'es'),
('rangements-cuisine', 'Organización cocina', 'rangements-cuisine', 'meubles-cuisine', 3, 'es'),
('buffets', 'Bufés', 'buffets', 'meubles-cuisine', 3, 'es'),
('vaisseliers', 'Vajilleros', 'vaisseliers', 'meubles-cuisine', 3, 'es');

-- NIVEAU 2 : Meubles de salle de bain (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('meubles-salle-bain', 'Muebles de baño', 'meubles-salle-bain', 'mobilier-interieur', 2, 'es');

-- NIVEAU 3 : Meubles lavabo, Rangements salle bain, Miroirs, etc. (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('meubles-lavabo', 'Muebles lavabo', 'meubles-lavabo', 'meubles-salle-bain', 3, 'es'),
('rangements-salle-bain', 'Organización baño', 'rangements-salle-bain', 'meubles-salle-bain', 3, 'es'),
('miroirs', 'Espejos', 'miroirs', 'meubles-salle-bain', 3, 'es'),
('armoires-toilette', 'Armarios tocador', 'armoires-toilette', 'meubles-salle-bain', 3, 'es');

-- NIVEAU 1 : Décoration intérieure (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('decoration-interieure', 'Decoración interior', 'decoration-interieure', 'mobilier-et-decoration', 1, 'es');

-- NIVEAU 2 : Décoration murale (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('decoration-murale', 'Decoración mural', 'decoration-murale', 'decoration-interieure', 2, 'es');

-- NIVEAU 3 : Tableaux, Cadres, Miroirs décoratifs, etc. (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('tableaux', 'Cuadros', 'tableaux', 'decoration-murale', 3, 'es'),
('cadres', 'Marcos', 'cadres', 'decoration-murale', 3, 'es'),
('miroirs-decoratifs', 'Espejos decorativos', 'miroirs-decoratifs', 'decoration-murale', 3, 'es'),
('decors-muraux', 'Decoraciones murales', 'decors-muraux', 'decoration-murale', 3, 'es'),
('autocollants-muraux', 'Pegatinas murales', 'autocollants-muraux', 'decoration-murale', 3, 'es');

-- NIVEAU 2 : Luminaires (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('luminaires', 'Luminarias', 'luminaires', 'decoration-interieure', 2, 'es');

-- NIVEAU 3 : Lampes, Abat-jour, Suspensions, etc. (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('lampes', 'Lámparas', 'lampes', 'luminaires', 3, 'es'),
('abat-jour', 'Pantallas', 'abat-jour', 'luminaires', 3, 'es'),
('suspensions', 'Suspensiones', 'suspensions', 'luminaires', 3, 'es'),
('plafonniers', 'Plafones', 'plafonniers', 'luminaires', 3, 'es'),
('spots', 'Focos', 'spots', 'luminaires', 3, 'es'),
('lampadaires', 'Lámparas de pie', 'lampadaires', 'luminaires', 3, 'es');

-- NIVEAU 2 : Textiles décoratifs (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('textiles-decoratifs', 'Textiles decorativos', 'textiles-decoratifs', 'decoration-interieure', 2, 'es');

-- NIVEAU 3 : Rideaux, Voilages, Coussins, etc. (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('rideaux', 'Cortinas', 'rideaux', 'textiles-decoratifs', 3, 'es'),
('voilages', 'Visillos', 'voilages', 'textiles-decoratifs', 3, 'es'),
('coussins', 'Cojines', 'coussins', 'textiles-decoratifs', 3, 'es'),
('couvertures-deco', 'Mantas deco', 'couvertures-deco', 'textiles-decoratifs', 3, 'es'),
('tapis', 'Alfombras', 'tapis', 'textiles-decoratifs', 3, 'es');

-- NIVEAU 0 : Mobilier & Décoration (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('mobilier-et-decoration', 'Möbel & Dekoration', 'mobilier-et-decoration', NULL, 0, 'de');

-- NIVEAU 1 : Mobilier intérieur (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('mobilier-interieur', 'Innenmöbel', 'mobilier-interieur', 'mobilier-et-decoration', 1, 'de');

-- NIVEAU 2 : Meubles de salon (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('meubles-salon', 'Wohnzimmermöbel', 'meubles-salon', 'mobilier-interieur', 2, 'de');

-- NIVEAU 3 : Canapés, Fauteuils, Tables basses, etc. (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('canapes', 'Sofas', 'canapes', 'meubles-salon', 3, 'de'),
('fauteuils', 'Sessel', 'fauteuils', 'meubles-salon', 3, 'de'),
('tables-basses', 'Couchtische', 'tables-basses', 'meubles-salon', 3, 'de'),
('rangements-salon', 'Wohnzimmeraufbewahrung', 'rangements-salon', 'meubles-salon', 3, 'de'),
('tablettes-murales', 'Wandregale', 'tablettes-murales', 'meubles-salon', 3, 'de');

-- NIVEAU 2 : Meubles de chambre (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('meubles-chambre', 'Schlafzimmermöbel', 'meubles-chambre', 'mobilier-interieur', 2, 'de');

-- NIVEAU 3 : Lits, Tables de chevet, Armoires, etc. (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('lits', 'Betten', 'lits', 'meubles-chambre', 3, 'de'),
('tables-chevet', 'Nachttische', 'tables-chevet', 'meubles-chambre', 3, 'de'),
('armoires-chambre', 'Schlafzimmerschränke', 'armoires-chambre', 'meubles-chambre', 3, 'de'),
('commodes', 'Kommoden', 'commodes', 'meubles-chambre', 3, 'de'),
('coiffeuses', 'Schminktische', 'coiffeuses', 'meubles-chambre', 3, 'de'),
('literie', 'Bettwäsche', 'literie', 'meubles-chambre', 3, 'de');

-- NIVEAU 2 : Meubles de cuisine (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('meubles-cuisine', 'Küchenmöbel', 'meubles-cuisine', 'mobilier-interieur', 2, 'de');

-- NIVEAU 3 : Tables cuisine, Chaises cuisine, Rangements cuisine, etc. (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('tables-cuisine', 'Küchentische', 'tables-cuisine', 'meubles-cuisine', 3, 'de'),
('chaises-cuisine', 'Küchenstühle', 'chaises-cuisine', 'meubles-cuisine', 3, 'de'),
('rangements-cuisine', 'Küchenaufbewahrung', 'rangements-cuisine', 'meubles-cuisine', 3, 'de'),
('buffets', 'Buffets', 'buffets', 'meubles-cuisine', 3, 'de'),
('vaisseliers', 'Geschirrschränke', 'vaisseliers', 'meubles-cuisine', 3, 'de');

-- NIVEAU 2 : Meubles de salle de bain (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('meubles-salle-bain', 'Badezimmermöbel', 'meubles-salle-bain', 'mobilier-interieur', 2, 'de');

-- NIVEAU 3 : Meubles lavabo, Rangements salle bain, Miroirs, etc. (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('meubles-lavabo', 'Waschbeckenmöbel', 'meubles-lavabo', 'meubles-salle-bain', 3, 'de'),
('rangements-salle-bain', 'Badezimmeraufbewahrung', 'rangements-salle-bain', 'meubles-salle-bain', 3, 'de'),
('miroirs', 'Spiegel', 'miroirs', 'meubles-salle-bain', 3, 'de'),
('armoires-toilette', 'Toilettenschränke', 'armoires-toilette', 'meubles-salle-bain', 3, 'de');

-- NIVEAU 1 : Décoration intérieure (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('decoration-interieure', 'Innendekoration', 'decoration-interieure', 'mobilier-et-decoration', 1, 'de');

-- NIVEAU 2 : Décoration murale (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('decoration-murale', 'Wanddekoration', 'decoration-murale', 'decoration-interieure', 2, 'de');

-- NIVEAU 3 : Tableaux, Cadres, Miroirs décoratifs, etc. (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('tableaux', 'Bilder', 'tableaux', 'decoration-murale', 3, 'de'),
('cadres', 'Rahmen', 'cadres', 'decoration-murale', 3, 'de'),
('miroirs-decoratifs', 'Dekorative Spiegel', 'miroirs-decoratifs', 'decoration-murale', 3, 'de'),
('decors-muraux', 'Wanddekore', 'decors-muraux', 'decoration-murale', 3, 'de'),
('autocollants-muraux', 'Wandaufkleber', 'autocollants-muraux', 'decoration-murale', 3, 'de');

-- NIVEAU 2 : Luminaires (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('luminaires', 'Leuchten', 'luminaires', 'decoration-interieure', 2, 'de');

-- NIVEAU 3 : Lampes, Abat-jour, Suspensions, etc. (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('lampes', 'Lampen', 'lampes', 'luminaires', 3, 'de'),
('abat-jour', 'Lampenschirme', 'abat-jour', 'luminaires', 3, 'de'),
('suspensions', 'Hängelampen', 'suspensions', 'luminaires', 3, 'de'),
('plafonniers', 'Deckenleuchten', 'plafonniers', 'luminaires', 3, 'de'),
('spots', 'Spots', 'spots', 'luminaires', 3, 'de'),
('lampadaires', 'Stehlampen', 'lampadaires', 'luminaires', 3, 'de');

-- NIVEAU 2 : Textiles décoratifs (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('textiles-decoratifs', 'Dekorative Textilien', 'textiles-decoratifs', 'decoration-interieure', 2, 'de');

-- NIVEAU 3 : Rideaux, Voilages, Coussins, etc. (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('rideaux', 'Vorhänge', 'rideaux', 'textiles-decoratifs', 3, 'de'),
('voilages', 'Gardinen', 'voilages', 'textiles-decoratifs', 3, 'de'),
('coussins', 'Kissen', 'coussins', 'textiles-decoratifs', 3, 'de'),
('couvertures-deco', 'Dekorative Decken', 'couvertures-deco', 'textiles-decoratifs', 3, 'de'),
('tapis', 'Teppiche', 'tapis', 'textiles-decoratifs', 3, 'de');

-- NIVEAU 0 : Mobilier & Décoration (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('mobilier-et-decoration', 'Furniture & Decoration', 'mobilier-et-decoration', NULL, 0, 'en');

-- NIVEAU 1 : Mobilier intérieur (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('mobilier-interieur', 'Interior Furniture', 'mobilier-interieur', 'mobilier-et-decoration', 1, 'en');

-- NIVEAU 2 : Meubles de salon (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('meubles-salon', 'Living Room Furniture', 'meubles-salon', 'mobilier-interieur', 2, 'en');

-- NIVEAU 3 : Canapés, Fauteuils, Tables basses, etc. (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('canapes', 'Sofas', 'canapes', 'meubles-salon', 3, 'en'),
('fauteuils', 'Armchairs', 'fauteuils', 'meubles-salon', 3, 'en'),
('tables-basses', 'Coffee Tables', 'tables-basses', 'meubles-salon', 3, 'en'),
('rangements-salon', 'Living Room Storage', 'rangements-salon', 'meubles-salon', 3, 'en'),
('tablettes-murales', 'Wall Shelves', 'tablettes-murales', 'meubles-salon', 3, 'en');

-- NIVEAU 2 : Meubles de chambre (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('meubles-chambre', 'Bedroom Furniture', 'meubles-chambre', 'mobilier-interieur', 2, 'en');

-- NIVEAU 3 : Lits, Tables de chevet, Armoires, etc. (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('lits', 'Beds', 'lits', 'meubles-chambre', 3, 'en'),
('tables-chevet', 'Nightstands', 'tables-chevet', 'meubles-chambre', 3, 'en'),
('armoires-chambre', 'Bedroom Wardrobes', 'armoires-chambre', 'meubles-chambre', 3, 'en'),
('commodes', 'Dressers', 'commodes', 'meubles-chambre', 3, 'en'),
('coiffeuses', 'Vanity Tables', 'coiffeuses', 'meubles-chambre', 3, 'en'),
('literie', 'Bedding', 'literie', 'meubles-chambre', 3, 'en');

-- NIVEAU 2 : Meubles de cuisine (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('meubles-cuisine', 'Kitchen Furniture', 'meubles-cuisine', 'mobilier-interieur', 2, 'en');

-- NIVEAU 3 : Tables cuisine, Chaises cuisine, Rangements cuisine, etc. (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('tables-cuisine', 'Kitchen Tables', 'tables-cuisine', 'meubles-cuisine', 3, 'en'),
('chaises-cuisine', 'Kitchen Chairs', 'chaises-cuisine', 'meubles-cuisine', 3, 'en'),
('rangements-cuisine', 'Kitchen Storage', 'rangements-cuisine', 'meubles-cuisine', 3, 'en'),
('buffets', 'Buffets', 'buffets', 'meubles-cuisine', 3, 'en'),
('vaisseliers', 'China Cabinets', 'vaisseliers', 'meubles-cuisine', 3, 'en');

-- NIVEAU 2 : Meubles de salle de bain (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('meubles-salle-bain', 'Bathroom Furniture', 'meubles-salle-bain', 'mobilier-interieur', 2, 'en');

-- NIVEAU 3 : Meubles lavabo, Rangements salle bain, Miroirs, etc. (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('meubles-lavabo', 'Sink Furniture', 'meubles-lavabo', 'meubles-salle-bain', 3, 'en'),
('rangements-salle-bain', 'Bathroom Storage', 'rangements-salle-bain', 'meubles-salle-bain', 3, 'en'),
('miroirs', 'Mirrors', 'miroirs', 'meubles-salle-bain', 3, 'en'),
('armoires-toilette', 'Vanity Cabinets', 'armoires-toilette', 'meubles-salle-bain', 3, 'en');

-- NIVEAU 1 : Décoration intérieure (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('decoration-interieure', 'Interior Decoration', 'decoration-interieure', 'mobilier-et-decoration', 1, 'en');

-- NIVEAU 2 : Décoration murale (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('decoration-murale', 'Wall Decoration', 'decoration-murale', 'decoration-interieure', 2, 'en');

-- NIVEAU 3 : Tableaux, Cadres, Miroirs décoratifs, etc. (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('tableaux', 'Paintings', 'tableaux', 'decoration-murale', 3, 'en'),
('cadres', 'Frames', 'cadres', 'decoration-murale', 3, 'en'),
('miroirs-decoratifs', 'Decorative Mirrors', 'miroirs-decoratifs', 'decoration-murale', 3, 'en'),
('decors-muraux', 'Wall Decorations', 'decors-muraux', 'decoration-murale', 3, 'en'),
('autocollants-muraux', 'Wall Stickers', 'autocollants-muraux', 'decoration-murale', 3, 'en');

-- NIVEAU 2 : Luminaires (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('luminaires', 'Lighting', 'luminaires', 'decoration-interieure', 2, 'en');

-- NIVEAU 3 : Lampes, Abat-jour, Suspensions, etc. (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('lampes', 'Lamps', 'lampes', 'luminaires', 3, 'en'),
('abat-jour', 'Lampshades', 'abat-jour', 'luminaires', 3, 'en'),
('suspensions', 'Pendant Lights', 'suspensions', 'luminaires', 3, 'en'),
('plafonniers', 'Ceiling Lights', 'plafonniers', 'luminaires', 3, 'en'),
('spots', 'Spotlights', 'spots', 'luminaires', 3, 'en'),
('lampadaires', 'Floor Lamps', 'lampadaires', 'luminaires', 3, 'en');

-- NIVEAU 2 : Textiles décoratifs (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('textiles-decoratifs', 'Decorative Textiles', 'textiles-decoratifs', 'decoration-interieure', 2, 'en');

-- NIVEAU 3 : Rideaux, Voilages, Coussins, etc. (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('rideaux', 'Curtains', 'rideaux', 'textiles-decoratifs', 3, 'en'),
('voilages', 'Sheer Curtains', 'voilages', 'textiles-decoratifs', 3, 'en'),
('coussins', 'Cushions', 'coussins', 'textiles-decoratifs', 3, 'en'),
('couvertures-deco', 'Decorative Blankets', 'couvertures-deco', 'textiles-decoratifs', 3, 'en'),
('tapis', 'Rugs', 'tapis', 'textiles-decoratifs', 3, 'en');

-- NIVEAU 0 : Mobilier & Décoration (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('mobilier-et-decoration', 'Mobili e Decorazione', 'mobilier-et-decoration', NULL, 0, 'it');

-- NIVEAU 1 : Mobilier intérieur (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('mobilier-interieur', 'Mobili interni', 'mobilier-interieur', 'mobilier-et-decoration', 1, 'it');

-- NIVEAU 2 : Meubles de salon (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('meubles-salon', 'Mobili soggiorno', 'meubles-salon', 'mobilier-interieur', 2, 'it');

-- NIVEAU 3 : Canapés, Fauteuils, Tables basses, etc. (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('canapes', 'Divani', 'canapes', 'meubles-salon', 3, 'it'),
('fauteuils', 'Poltrone', 'fauteuils', 'meubles-salon', 3, 'it'),
('tables-basses', 'Tavolini', 'tables-basses', 'meubles-salon', 3, 'it'),
('rangements-salon', 'Organizzazione soggiorno', 'rangements-salon', 'meubles-salon', 3, 'it'),
('tablettes-murales', 'Mensole murali', 'tablettes-murales', 'meubles-salon', 3, 'it');

-- NIVEAU 2 : Meubles de chambre (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('meubles-chambre', 'Mobili camera da letto', 'meubles-chambre', 'mobilier-interieur', 2, 'it');

-- NIVEAU 3 : Lits, Tables de chevet, Armoires, etc. (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('lits', 'Letti', 'lits', 'meubles-chambre', 3, 'it'),
('tables-chevet', 'Comodini', 'tables-chevet', 'meubles-chambre', 3, 'it'),
('armoires-chambre', 'Armadi camera', 'armoires-chambre', 'meubles-chambre', 3, 'it'),
('commodes', 'Cassettiere', 'commodes', 'meubles-chambre', 3, 'it'),
('coiffeuses', 'Tavoli da toeletta', 'coiffeuses', 'meubles-chambre', 3, 'it'),
('literie', 'Biancheria da letto', 'literie', 'meubles-chambre', 3, 'it');

-- NIVEAU 2 : Meubles de cuisine (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('meubles-cuisine', 'Mobili cucina', 'meubles-cuisine', 'mobilier-interieur', 2, 'it');

-- NIVEAU 3 : Tables cuisine, Chaises cuisine, Rangements cuisine, etc. (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('tables-cuisine', 'Tavoli cucina', 'tables-cuisine', 'meubles-cuisine', 3, 'it'),
('chaises-cuisine', 'Sedie cucina', 'chaises-cuisine', 'meubles-cuisine', 3, 'it'),
('rangements-cuisine', 'Organizzazione cucina', 'rangements-cuisine', 'meubles-cuisine', 3, 'it'),
('buffets', 'Buffet', 'buffets', 'meubles-cuisine', 3, 'it'),
('vaisseliers', 'Credenze', 'vaisseliers', 'meubles-cuisine', 3, 'it');

-- NIVEAU 2 : Meubles de salle de bain (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('meubles-salle-bain', 'Mobili bagno', 'meubles-salle-bain', 'mobilier-interieur', 2, 'it');

-- NIVEAU 3 : Meubles lavabo, Rangements salle bain, Miroirs, etc. (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('meubles-lavabo', 'Mobili lavabo', 'meubles-lavabo', 'meubles-salle-bain', 3, 'it'),
('rangements-salle-bain', 'Organizzazione bagno', 'rangements-salle-bain', 'meubles-salle-bain', 3, 'it'),
('miroirs', 'Specchi', 'miroirs', 'meubles-salle-bain', 3, 'it'),
('armoires-toilette', 'Armadi da toeletta', 'armoires-toilette', 'meubles-salle-bain', 3, 'it');

-- NIVEAU 1 : Décoration intérieure (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('decoration-interieure', 'Decorazione interni', 'decoration-interieure', 'mobilier-et-decoration', 1, 'it');

-- NIVEAU 2 : Décoration murale (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('decoration-murale', 'Decorazione murale', 'decoration-murale', 'decoration-interieure', 2, 'it');

-- NIVEAU 3 : Tableaux, Cadres, Miroirs décoratifs, etc. (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('tableaux', 'Quadri', 'tableaux', 'decoration-murale', 3, 'it'),
('cadres', 'Cornici', 'cadres', 'decoration-murale', 3, 'it'),
('miroirs-decoratifs', 'Specchi decorativi', 'miroirs-decoratifs', 'decoration-murale', 3, 'it'),
('decors-muraux', 'Decorazioni murali', 'decors-muraux', 'decoration-murale', 3, 'it'),
('autocollants-muraux', 'Adesivi murali', 'autocollants-muraux', 'decoration-murale', 3, 'it');

-- NIVEAU 2 : Luminaires (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('luminaires', 'Illuminazione', 'luminaires', 'decoration-interieure', 2, 'it');

-- NIVEAU 3 : Lampes, Abat-jour, Suspensions, etc. (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('lampes', 'Lampade', 'lampes', 'luminaires', 3, 'it'),
('abat-jour', 'Paralumi', 'abat-jour', 'luminaires', 3, 'it'),
('suspensions', 'Sospensioni', 'suspensions', 'luminaires', 3, 'it'),
('plafonniers', 'Plafoniere', 'plafonniers', 'luminaires', 3, 'it'),
('spots', 'Faretti', 'spots', 'luminaires', 3, 'it'),
('lampadaires', 'Lampade da terra', 'lampadaires', 'luminaires', 3, 'it');

-- NIVEAU 2 : Textiles décoratifs (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('textiles-decoratifs', 'Tessuti decorativi', 'textiles-decoratifs', 'decoration-interieure', 2, 'it');

-- NIVEAU 3 : Rideaux, Voilages, Coussins, etc. (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('rideaux', 'Tende', 'rideaux', 'textiles-decoratifs', 3, 'it'),
('voilages', 'Tende voile', 'voilages', 'textiles-decoratifs', 3, 'it'),
('coussins', 'Cuscini', 'coussins', 'textiles-decoratifs', 3, 'it'),
('couvertures-deco', 'Coperte decorative', 'couvertures-deco', 'textiles-decoratifs', 3, 'it'),
('tapis', 'Tappeti', 'tapis', 'textiles-decoratifs', 3, 'it');