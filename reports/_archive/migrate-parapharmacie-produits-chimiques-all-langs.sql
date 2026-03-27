-- NIVEAU 0 : Parapharmacie & Produits Chimiques (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('parapharmacie-produits-chimiques', 'Parapharmacie & Produits Chimiques', 'parapharmacie-produits-chimiques', NULL, 0, 'fr');

-- NIVEAU 1 : Produits parapharmaceutiques (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('produits-parapharmaceutiques', 'Produits parapharmaceutiques', 'produits-parapharmaceutiques', 'parapharmacie-produits-chimiques', 1, 'fr');

-- NIVEAU 2 : Produits chimiques industriels (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('produits-chimiques-industriels', 'Produits chimiques industriels', 'produits-chimiques-industriels', 'parapharmacie-produits-chimiques', 1, 'fr');

-- NIVEAU 3 : Niveau 3 pour Produits parapharmaceutiques (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('complements-alimentaires', 'Compléments alimentaires', 'complements-alimentaires', 'produits-parapharmaceutiques', 2, 'fr'),
('vitamines', 'Vitamines', 'vitamines', 'produits-parapharmaceutiques', 2, 'fr'),
('mineraux', 'Minéraux', 'mineraux', 'produits-parapharmaceutiques', 2, 'fr'),
('probiotiques', 'Probiotiques', 'probiotiques', 'produits-parapharmaceutiques', 2, 'fr'),
('produits-minceur', 'Produits minceur', 'produits-minceur', 'produits-parapharmaceutiques', 2, 'fr'),
('produits-solaires', 'Produits solaires', 'produits-solaires', 'produits-parapharmaceutiques', 2, 'fr'),
('produits-insectifuges', 'Produits insectifuges', 'produits-insectifuges', 'produits-parapharmaceutiques', 2, 'fr'),
('pansements', 'Pansements', 'pansements', 'produits-parapharmaceutiques', 2, 'fr'),
('desinfectants', 'Désinfectants', 'desinfectants', 'produits-parapharmaceutiques', 2, 'fr'),
('test-diagnostiques', 'Tests diagnostiques', 'test-diagnostiques', 'produits-parapharmaceutiques', 2, 'fr');

-- NIVEAU 3 : Niveau 3 pour Produits chimiques industriels (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('acides-industriels', 'Acides industriels', 'acides-industriels', 'produits-chimiques-industriels', 2, 'fr'),
('solvants', 'Solvants', 'solvants', 'produits-chimiques-industriels', 2, 'fr'),
('peintures-industrielles', 'Peintures industrielles', 'peintures-industrielles', 'produits-chimiques-industriels', 2, 'fr'),
('resines', 'Résines', 'resines', 'produits-chimiques-industriels', 2, 'fr'),
('colles-industrielles', 'Colles industrielles', 'colles-industrielles', 'produits-chimiques-industriels', 2, 'fr'),
('engrais-chimiques', 'Engrais chimiques', 'engrais-chimiques', 'produits-chimiques-industriels', 2, 'fr'),
('pesticides', 'Pesticides', 'pesticides', 'produits-chimiques-industriels', 2, 'fr'),
('herbicides', 'Herbicides', 'herbicides', 'produits-chimiques-industriels', 2, 'fr'),
('nettoyants-industriels', 'Nettoyants industriels', 'nettoyants-industriels', 'produits-chimiques-industriels', 2, 'fr'),
('lubrifiants-industriels', 'Lubrifiants industriels', 'lubrifiants-industriels', 'produits-chimiques-industriels', 2, 'fr');

-- NIVEAU 0 : Parapharmacie & Produits Chimiques (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('parapharmacie-produits-chimiques', 'الأدوية الموازية والمنتجات الكيميائية', 'parapharmacie-produits-chimiques', NULL, 0, 'ar');

-- NIVEAU 1 : Produits parapharmaceutiques (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('produits-parapharmaceutiques', 'منتجات دوائية موازية', 'produits-parapharmaceutiques', 'parapharmacie-produits-chimiques', 1, 'ar');

-- NIVEAU 2 : Produits chimiques industriels (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('produits-chimiques-industriels', 'منتجات كيميائية صناعية', 'produits-chimiques-industriels', 'parapharmacie-produits-chimiques', 1, 'ar');

-- NIVEAU 3 : Niveau 3 pour Produits parapharmaceutiques (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('complements-alimentaires', 'مكملات غذائية', 'complements-alimentaires', 'produits-parapharmaceutiques', 2, 'ar'),
('vitamines', 'فيتامينات', 'vitamines', 'produits-parapharmaceutiques', 2, 'ar'),
('mineraux', 'معادن', 'mineraux', 'produits-parapharmaceutiques', 2, 'ar'),
('probiotiques', 'بروبيوتيك', 'probiotiques', 'produits-parapharmaceutiques', 2, 'ar'),
('produits-minceur', 'منتجات تخسيس', 'produits-minceur', 'produits-parapharmaceutiques', 2, 'ar'),
('produits-solaires', 'منتجات شمسية', 'produits-solaires', 'produits-parapharmaceutiques', 2, 'ar'),
('produits-insectifuges', 'منتجات طاردة للحشرات', 'produits-insectifuges', 'produits-parapharmaceutiques', 2, 'ar'),
('pansements', 'ضمادات', 'pansements', 'produits-parapharmaceutiques', 2, 'ar'),
('desinfectants', 'مطهرات', 'desinfectants', 'produits-parapharmaceutiques', 2, 'ar'),
('test-diagnostiques', 'اختبارات تشخيصية', 'test-diagnostiques', 'produits-parapharmaceutiques', 2, 'ar');

-- NIVEAU 3 : Niveau 3 pour Produits chimiques industriels (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('acides-industriels', 'أحماض صناعية', 'acides-industriels', 'produits-chimiques-industriels', 2, 'ar'),
('solvants', 'مذيبات', 'solvants', 'produits-chimiques-industriels', 2, 'ar'),
('peintures-industrielles', 'دهانات صناعية', 'peintures-industrielles', 'produits-chimiques-industriels', 2, 'ar'),
('resines', 'راتنجات', 'resines', 'produits-chimiques-industriels', 2, 'ar'),
('colles-industrielles', 'غراء صناعي', 'colles-industrielles', 'produits-chimiques-industriels', 2, 'ar'),
('engrais-chimiques', 'أسمدة كيميائية', 'engrais-chimiques', 'produits-chimiques-industriels', 2, 'ar'),
('pesticides', 'مبيدات حشرية', 'pesticides', 'produits-chimiques-industriels', 2, 'ar'),
('herbicides', 'مبيدات أعشاب', 'herbicides', 'produits-chimiques-industriels', 2, 'ar'),
('nettoyants-industriels', 'منظفات صناعية', 'nettoyants-industriels', 'produits-chimiques-industriels', 2, 'ar'),
('lubrifiants-industriels', 'زيوت تشحيم صناعية', 'lubrifiants-industriels', 'produits-chimiques-industriels', 2, 'ar');

-- NIVEAU 0 : Parapharmacie & Produits Chimiques (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('parapharmacie-produits-chimiques', 'Parafarmacia y Productos Químicos', 'parapharmacie-produits-chimiques', NULL, 0, 'es');

-- NIVEAU 1 : Produits parapharmaceutiques (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('produits-parapharmaceutiques', 'Productos parafarmacéuticos', 'produits-parapharmaceutiques', 'parapharmacie-produits-chimiques', 1, 'es');

-- NIVEAU 2 : Produits chimiques industriels (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('produits-chimiques-industriels', 'Productos químicos industriales', 'produits-chimiques-industriels', 'parapharmacie-produits-chimiques', 1, 'es');

-- NIVEAU 3 : Niveau 3 pour Produits parapharmaceutiques (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('complements-alimentaires', 'Complementos alimenticios', 'complements-alimentaires', 'produits-parapharmaceutiques', 2, 'es'),
('vitamines', 'Vitaminas', 'vitamines', 'produits-parapharmaceutiques', 2, 'es'),
('mineraux', 'Minerales', 'mineraux', 'produits-parapharmaceutiques', 2, 'es'),
('probiotiques', 'Probióticos', 'probiotiques', 'produits-parapharmaceutiques', 2, 'es'),
('produits-minceur', 'Productos adelgazantes', 'produits-minceur', 'produits-parapharmaceutiques', 2, 'es'),
('produits-solaires', 'Productos solares', 'produits-solaires', 'produits-parapharmaceutiques', 2, 'es'),
('produits-insectifuges', 'Productos repelentes de insectos', 'produits-insectifuges', 'produits-parapharmaceutiques', 2, 'es'),
('pansements', 'Vendajes', 'pansements', 'produits-parapharmaceutiques', 2, 'es'),
('desinfectants', 'Desinfectantes', 'desinfectants', 'produits-parapharmaceutiques', 2, 'es'),
('test-diagnostiques', 'Pruebas diagnósticas', 'test-diagnostiques', 'produits-parapharmaceutiques', 2, 'es');

-- NIVEAU 3 : Niveau 3 pour Produits chimiques industriels (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('acides-industriels', 'Ácidos industriales', 'acides-industriels', 'produits-chimiques-industriels', 2, 'es'),
('solvants', 'Disolventes', 'solvants', 'produits-chimiques-industriels', 2, 'es'),
('peintures-industrielles', 'Pinturas industriales', 'peintures-industrielles', 'produits-chimiques-industriels', 2, 'es'),
('resines', 'Resinas', 'resines', 'produits-chimiques-industriels', 2, 'es'),
('colles-industrielles', 'Adhesivos industriales', 'colles-industrielles', 'produits-chimiques-industriels', 2, 'es'),
('engrais-chimiques', 'Fertilizantes químicos', 'engrais-chimiques', 'produits-chimiques-industriels', 2, 'es'),
('pesticides', 'Pesticidas', 'pesticides', 'produits-chimiques-industriels', 2, 'es'),
('herbicides', 'Herbicidas', 'herbicides', 'produits-chimiques-industriels', 2, 'es'),
('nettoyants-industriels', 'Limpiadores industriales', 'nettoyants-industriels', 'produits-chimiques-industriels', 2, 'es'),
('lubrifiants-industriels', 'Lubricantes industriales', 'lubrifiants-industriels', 'produits-chimiques-industriels', 2, 'es');

-- NIVEAU 0 : Parapharmacie & Produits Chimiques (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('parapharmacie-produits-chimiques', 'Parapharmazie und Chemische Produkte', 'parapharmacie-produits-chimiques', NULL, 0, 'de');

-- NIVEAU 1 : Produits parapharmaceutiques (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('produits-parapharmaceutiques', 'Parapharmazeutische Produkte', 'produits-parapharmaceutiques', 'parapharmacie-produits-chimiques', 1, 'de');

-- NIVEAU 2 : Produits chimiques industriels (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('produits-chimiques-industriels', 'Industrielle chemische Produkte', 'produits-chimiques-industriels', 'parapharmacie-produits-chimiques', 1, 'de');

-- NIVEAU 3 : Niveau 3 pour Produits parapharmaceutiques (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('complements-alimentaires', 'Nahrungsergänzungsmittel', 'complements-alimentaires', 'produits-parapharmaceutiques', 2, 'de'),
('vitamines', 'Vitamine', 'vitamines', 'produits-parapharmaceutiques', 2, 'de'),
('mineraux', 'Mineralien', 'mineraux', 'produits-parapharmaceutiques', 2, 'de'),
('probiotiques', 'Probiotika', 'probiotiques', 'produits-parapharmaceutiques', 2, 'de'),
('produits-minceur', 'Schlankheitsprodukte', 'produits-minceur', 'produits-parapharmaceutiques', 2, 'de'),
('produits-solaires', 'Sonnenprodukte', 'produits-solaires', 'produits-parapharmaceutiques', 2, 'de'),
('produits-insectifuges', 'Insektenabwehrprodukte', 'produits-insectifuges', 'produits-parapharmaceutiques', 2, 'de'),
('pansements', 'Verbände', 'pansements', 'produits-parapharmaceutiques', 2, 'de'),
('desinfectants', 'Desinfektionsmittel', 'desinfectants', 'produits-parapharmaceutiques', 2, 'de'),
('test-diagnostiques', 'Diagnostische Tests', 'test-diagnostiques', 'produits-parapharmaceutiques', 2, 'de');

-- NIVEAU 3 : Niveau 3 pour Produits chimiques industriels (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('acides-industriels', 'Industrielle Säuren', 'acides-industriels', 'produits-chimiques-industriels', 2, 'de'),
('solvants', 'Lösungsmittel', 'solvants', 'produits-chimiques-industriels', 2, 'de'),
('peintures-industrielles', 'Industrielle Farben', 'peintures-industrielles', 'produits-chimiques-industriels', 2, 'de'),
('resines', 'Harze', 'resines', 'produits-chimiques-industriels', 2, 'de'),
('colles-industrielles', 'Industrielle Klebstoffe', 'colles-industrielles', 'produits-chimiques-industriels', 2, 'de'),
('engrais-chimiques', 'Chemische Düngemittel', 'engrais-chimiques', 'produits-chimiques-industriels', 2, 'de'),
('pesticides', 'Pestizide', 'pesticides', 'produits-chimiques-industriels', 2, 'de'),
('herbicides', 'Herbizide', 'herbicides', 'produits-chimiques-industriels', 2, 'de'),
('nettoyants-industriels', 'Industrielle Reiniger', 'nettoyants-industriels', 'produits-chimiques-industriels', 2, 'de'),
('lubrifiants-industriels', 'Industrielle Schmiermittel', 'lubrifiants-industriels', 'produits-chimiques-industriels', 2, 'de');

-- NIVEAU 0 : Parapharmacie & Produits Chimiques (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('parapharmacie-produits-chimiques', 'Parapharmacy & Chemical Products', 'parapharmacie-produits-chimiques', NULL, 0, 'en');

-- NIVEAU 1 : Produits parapharmaceutiques (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('produits-parapharmaceutiques', 'Parapharmaceutical Products', 'produits-parapharmaceutiques', 'parapharmacie-produits-chimiques', 1, 'en');

-- NIVEAU 2 : Produits chimiques industriels (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('produits-chimiques-industriels', 'Industrial Chemical Products', 'produits-chimiques-industriels', 'parapharmacie-produits-chimiques', 1, 'en');

-- NIVEAU 3 : Niveau 3 pour Produits parapharmaceutiques (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('complements-alimentaires', 'Food Supplements', 'complements-alimentaires', 'produits-parapharmaceutiques', 2, 'en'),
('vitamines', 'Vitamins', 'vitamines', 'produits-parapharmaceutiques', 2, 'en'),
('mineraux', 'Minerals', 'mineraux', 'produits-parapharmaceutiques', 2, 'en'),
('probiotiques', 'Probiotics', 'probiotiques', 'produits-parapharmaceutiques', 2, 'en'),
('produits-minceur', 'Slimming Products', 'produits-minceur', 'produits-parapharmaceutiques', 2, 'en'),
('produits-solaires', 'Solar Products', 'produits-solaires', 'produits-parapharmaceutiques', 2, 'en'),
('produits-insectifuges', 'Insect Repellent Products', 'produits-insectifuges', 'produits-parapharmaceutiques', 2, 'en'),
('pansements', 'Dressings', 'pansements', 'produits-parapharmaceutiques', 2, 'en'),
('desinfectants', 'Disinfectants', 'desinfectants', 'produits-parapharmaceutiques', 2, 'en'),
('test-diagnostiques', 'Diagnostic Tests', 'test-diagnostiques', 'produits-parapharmaceutiques', 2, 'en');

-- NIVEAU 3 : Niveau 3 pour Produits chimiques industriels (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('acides-industriels', 'Industrial Acids', 'acides-industriels', 'produits-chimiques-industriels', 2, 'en'),
('solvants', 'Solvents', 'solvants', 'produits-chimiques-industriels', 2, 'en'),
('peintures-industrielles', 'Industrial Paints', 'peintures-industrielles', 'produits-chimiques-industriels', 2, 'en'),
('resines', 'Resins', 'resines', 'produits-chimiques-industriels', 2, 'en'),
('colles-industrielles', 'Industrial Glues', 'colles-industrielles', 'produits-chimiques-industriels', 2, 'en'),
('engrais-chimiques', 'Chemical Fertilizers', 'engrais-chimiques', 'produits-chimiques-industriels', 2, 'en'),
('pesticides', 'Pesticides', 'pesticides', 'produits-chimiques-industriels', 2, 'en'),
('herbicides', 'Herbicides', 'herbicides', 'produits-chimiques-industriels', 2, 'en'),
('nettoyants-industriels', 'Industrial Cleaners', 'nettoyants-industriels', 'produits-chimiques-industriels', 2, 'en'),
('lubrifiants-industriels', 'Industrial Lubricants', 'lubrifiants-industriels', 'produits-chimiques-industriels', 2, 'en');

-- NIVEAU 0 : Parapharmacie & Produits Chimiques (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('parapharmacie-produits-chimiques', 'Parafarmacia e Prodotti Chimici', 'parapharmacie-produits-chimiques', NULL, 0, 'it');

-- NIVEAU 1 : Produits parapharmaceutiques (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('produits-parapharmaceutiques', 'Prodotti parafarmaceutici', 'produits-parapharmaceutiques', 'parapharmacie-produits-chimiques', 1, 'it');

-- NIVEAU 2 : Produits chimiques industriels (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('produits-chimiques-industriels', 'Prodotti chimici industriali', 'produits-chimiques-industriels', 'parapharmacie-produits-chimiques', 1, 'it');

-- NIVEAU 3 : Niveau 3 pour Produits parapharmaceutiques (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('complements-alimentaires', 'Integratori alimentari', 'complements-alimentaires', 'produits-parapharmaceutiques', 2, 'it'),
('vitamines', 'Vitamine', 'vitamines', 'produits-parapharmaceutiques', 2, 'it'),
('mineraux', 'Minerali', 'mineraux', 'produits-parapharmaceutiques', 2, 'it'),
('probiotiques', 'Probiotici', 'probiotiques', 'produits-parapharmaceutiques', 2, 'it'),
('produits-minceur', 'Prodotti dimagranti', 'produits-minceur', 'produits-parapharmaceutiques', 2, 'it'),
('produits-solaires', 'Prodotti solari', 'produits-solaires', 'produits-parapharmaceutiques', 2, 'it'),
('produits-insectifuges', 'Prodotti repellenti per insetti', 'produits-insectifuges', 'produits-parapharmaceutiques', 2, 'it'),
('pansements', 'Bendaggi', 'pansements', 'produits-parapharmaceutiques', 2, 'it'),
('desinfectants', 'Disinfettanti', 'desinfectants', 'produits-parapharmaceutiques', 2, 'it'),
('test-diagnostiques', 'Test diagnostici', 'test-diagnostiques', 'produits-parapharmaceutiques', 2, 'it');

-- NIVEAU 3 : Niveau 3 pour Produits chimiques industriels (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('acides-industriels', 'Acidi industriali', 'acides-industriels', 'produits-chimiques-industriels', 2, 'it'),
('solvants', 'Solventi', 'solvants', 'produits-chimiques-industriels', 2, 'it'),
('peintures-industrielles', 'Vernici industriali', 'peintures-industrielles', 'produits-chimiques-industriels', 2, 'it'),
('resines', 'Resine', 'resines', 'produits-chimiques-industriels', 2, 'it'),
('colles-industrielles', 'Colla industriale', 'colles-industrielles', 'produits-chimiques-industriels', 2, 'it'),
('engrais-chimiques', 'Fertilizzanti chimici', 'engrais-chimiques', 'produits-chimiques-industriels', 2, 'it'),
('pesticides', 'Pesticidi', 'pesticides', 'produits-chimiques-industriels', 2, 'it'),
('herbicides', 'Erbicidi', 'herbicides', 'produits-chimiques-industriels', 2, 'it'),
('nettoyants-industriels', 'Detergenti industriali', 'nettoyants-industriels', 'produits-chimiques-industriels', 2, 'it'),
('lubrifiants-industriels', 'Lubrificanti industriali', 'lubrifiants-industriels', 'produits-chimiques-industriels', 2, 'it');