-- Migration Gastronomie & Alimentation - Toutes les langues
-- NIVEAU 0 : Gastronomie & Alimentation (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('gastronomie-alimentation', 'Gastronomie & Alimentation', 'gastronomie-alimentation', NULL, 0, 'fr');

-- NIVEAU 1 : Produits alimentaires (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('produits-alimentaires', 'Produits alimentaires', 'produits-alimentaires', 'gastronomie-alimentation', 1, 'fr');

-- NIVEAU 1 : Produits gastronomiques (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('produits-gastronomiques', 'Produits gastronomiques', 'produits-gastronomiques', 'gastronomie-alimentation', 1, 'fr');

-- NIVEAU 2 : Niveau 2 pour Produits alimentaires (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('fruits-legumes', 'Fruits & légumes', 'fruits-legumes', 'produits-alimentaires', 2, 'fr'),
('viandes', 'Viandes', 'viandes', 'produits-alimentaires', 2, 'fr'),
('poissons', 'Poissons', 'poissons', 'produits-alimentaires', 2, 'fr'),
('produits-laitiers-alimentation', 'Produits laitiers', 'produits-laitiers-alimentation', 'produits-alimentaires', 2, 'fr'),
('pains-viennoiseries', 'Pains & viennoiseries', 'pains-viennoiseries', 'produits-alimentaires', 2, 'fr'),
('pates-riz-cereales', 'Pâtes, riz & céréales', 'pates-riz-cereales', 'produits-alimentaires', 2, 'fr'),
('epices-condiments-alimentation', 'Épices & condiments', 'epices-condiments-alimentation', 'produits-alimentaires', 2, 'fr'),
('huiles-vinaigres', 'Huiles & vinaigres', 'huiles-vinaigres', 'produits-alimentaires', 2, 'fr'),
('confitures-miels', 'Confitures & miels', 'confitures-miels', 'produits-alimentaires', 2, 'fr'),
('chocolats-bonbons', 'Chocolats & bonbons', 'chocolats-bonbons', 'produits-alimentaires', 2, 'fr');

-- NIVEAU 2 : Niveau 2 pour Produits gastronomiques (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('specialites-regionales', 'Spécialités régionales', 'specialites-regionales', 'produits-gastronomiques', 2, 'fr'),
('produits-artisanaux', 'Produits artisanaux', 'produits-artisanaux', 'produits-gastronomiques', 2, 'fr'),
('produits-bio-gastronomie', 'Produits bio', 'produits-bio-gastronomie', 'produits-gastronomiques', 2, 'fr'),
('produits-du-terroir', 'Produits du terroir', 'produits-du-terroir', 'produits-gastronomiques', 2, 'fr'),
('specialites-de-noel', 'Spécialités de Noël', 'specialites-de-noel', 'produits-gastronomiques', 2, 'fr'),
('specialites-ramadan', 'Spécialités Ramadan', 'specialites-ramadan', 'produits-gastronomiques', 2, 'fr'),
('plats-prepared-gastronomie', 'Plats préparés', 'plats-prepared-gastronomie', 'produits-gastronomiques', 2, 'fr'),
('sauces-gastronomiques', 'Sauces gastronomiques', 'sauces-gastronomiques', 'produits-gastronomiques', 2, 'fr'),
('desserts-gastronomiques', 'Desserts gastronomiques', 'desserts-gastronomiques', 'produits-gastronomiques', 2, 'fr');

-- NIVEAU 0 : Gastronomie & Alimentation (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('gastronomie-alimentation', 'الطهي والتغذية', 'gastronomie-alimentation', NULL, 0, 'ar');

-- NIVEAU 1 : Produits alimentaires (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('produits-alimentaires', 'المنتجات الغذائية', 'produits-alimentaires', 'gastronomie-alimentation', 1, 'ar');

-- NIVEAU 1 : Produits gastronomiques (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('produits-gastronomiques', 'المنتجات الغذائية الراقية', 'produits-gastronomiques', 'gastronomie-alimentation', 1, 'ar');

-- NIVEAU 2 : Niveau 2 pour Produits alimentaires (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('fruits-legumes', 'الفواكه والخضروات', 'fruits-legumes', 'produits-alimentaires', 2, 'ar'),
('viandes', 'اللحوم', 'viandes', 'produits-alimentaires', 2, 'ar'),
('poissons', 'الأسماك', 'poissons', 'produits-alimentaires', 2, 'ar'),
('produits-laitiers-alimentation', 'المنتجات الألبان', 'produits-laitiers-alimentation', 'produits-alimentaires', 2, 'ar'),
('pains-viennoiseries', 'الخبز والمعجنات', 'pains-viennoiseries', 'produits-alimentaires', 2, 'ar'),
('pates-riz-cereales', 'المعكرونة والأرز والحبوب', 'pates-riz-cereales', 'produits-alimentaires', 2, 'ar'),
('epices-condiments-alimentation', 'التوابل والبهارات', 'epices-condiments-alimentation', 'produits-alimentaires', 2, 'ar'),
('huiles-vinaigres', 'الزيوت والخل', 'huiles-vinaigres', 'produits-alimentaires', 2, 'ar'),
('confitures-miels', 'المربيات والعسل', 'confitures-miels', 'produits-alimentaires', 2, 'ar'),
('chocolats-bonbons', 'الشوكولاتة والحلوى', 'chocolats-bonbons', 'produits-alimentaires', 2, 'ar');

-- NIVEAU 2 : Niveau 2 pour Produits gastronomiques (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('specialites-regionales', 'الأطباق الإقليمية', 'specialites-regionales', 'produits-gastronomiques', 2, 'ar'),
('produits-artisanaux', 'المنتجات الحرفية', 'produits-artisanaux', 'produits-gastronomiques', 2, 'ar'),
('produits-bio-gastronomie', 'المنتجات العضوية', 'produits-bio-gastronomie', 'produits-gastronomiques', 2, 'ar'),
('produits-du-terroir', 'منتجات المنطقة', 'produits-du-terroir', 'produits-gastronomiques', 2, 'ar'),
('specialites-de-noel', 'أطباق عيد الميلاد', 'specialites-de-noel', 'produits-gastronomiques', 2, 'ar'),
('specialites-ramadan', 'أطباق رمضان', 'specialites-ramadan', 'produits-gastronomiques', 2, 'ar'),
('plats-prepared-gastronomie', 'الأطباق الجاهزة', 'plats-prepared-gastronomie', 'produits-gastronomiques', 2, 'ar'),
('sauces-gastronomiques', 'الصلصات الغذائية', 'sauces-gastronomiques', 'produits-gastronomiques', 2, 'ar'),
('desserts-gastronomiques', 'حلويات غذائية', 'desserts-gastronomiques', 'produits-gastronomiques', 2, 'ar');

-- NIVEAU 0 : Gastronomie & Alimentation (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('gastronomie-alimentation', 'Gastronomía y Alimentación', 'gastronomie-alimentation', NULL, 0, 'es');

-- NIVEAU 1 : Produits alimentaires (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('produits-alimentaires', 'Productos alimenticios', 'produits-alimentaires', 'gastronomie-alimentation', 1, 'es');

-- NIVEAU 1 : Produits gastronomiques (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('produits-gastronomiques', 'Productos gastronómicos', 'produits-gastronomiques', 'gastronomie-alimentation', 1, 'es');

-- NIVEAU 2 : Niveau 2 pour Produits alimentaires (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('fruits-legumes', 'Frutas y verduras', 'fruits-legumes', 'produits-alimentaires', 2, 'es'),
('viandes', 'Carnes', 'viandes', 'produits-alimentaires', 2, 'es'),
('poissons', 'Pescados', 'poissons', 'produits-alimentaires', 2, 'es'),
('produits-laitiers-alimentation', 'Productos lácteos', 'produits-laitiers-alimentation', 'produits-alimentaires', 2, 'es'),
('pains-viennoiseries', 'Panes y bollería', 'pains-viennoiseries', 'produits-alimentaires', 2, 'es'),
('pates-riz-cereales', 'Pastas, arroz y cereales', 'pates-riz-cereales', 'produits-alimentaires', 2, 'es'),
('epices-condiments-alimentation', 'Especias y condimentos', 'epices-condiments-alimentation', 'produits-alimentaires', 2, 'es'),
('huiles-vinaigres', 'Aceites y vinagres', 'huiles-vinaigres', 'produits-alimentaires', 2, 'es'),
('confitures-miels', 'Mermeladas y mieles', 'confitures-miels', 'produits-alimentaires', 2, 'es'),
('chocolats-bonbons', 'Chocolates y caramelos', 'chocolats-bonbons', 'produits-alimentaires', 2, 'es');

-- NIVEAU 2 : Niveau 2 pour Produits gastronomiques (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('specialites-regionales', 'Especialidades regionales', 'specialites-regionales', 'produits-gastronomiques', 2, 'es'),
('produits-artisanaux', 'Productos artesanales', 'produits-artisanaux', 'produits-gastronomiques', 2, 'es'),
('produits-bio-gastronomie', 'Productos ecológicos', 'produits-bio-gastronomie', 'produits-gastronomiques', 2, 'es'),
('produits-du-terroir', 'Productos del terruño', 'produits-du-terroir', 'produits-gastronomiques', 2, 'es'),
('specialites-de-noel', 'Especialidades de Navidad', 'specialites-de-noel', 'produits-gastronomiques', 2, 'es'),
('specialites-ramadan', 'Especialidades de Ramadán', 'specialites-ramadan', 'produits-gastronomiques', 2, 'es'),
('plats-prepared-gastronomie', 'Platos preparados', 'plats-prepared-gastronomie', 'produits-gastronomiques', 2, 'es'),
('sauces-gastronomiques', 'Salsas gastronómicas', 'sauces-gastronomiques', 'produits-gastronomiques', 2, 'es'),
('desserts-gastronomiques', 'Postres gastronómicos', 'desserts-gastronomiques', 'produits-gastronomiques', 2, 'es');

-- NIVEAU 0 : Gastronomie & Alimentation (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('gastronomie-alimentation', 'Gastronomie & Ernährung', 'gastronomie-alimentation', NULL, 0, 'de');

-- NIVEAU 1 : Produits alimentaires (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('produits-alimentaires', 'Lebensmittelprodukte', 'produits-alimentaires', 'gastronomie-alimentation', 1, 'de');

-- NIVEAU 1 : Produits gastronomiques (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('produits-gastronomiques', 'Gastronomische Produkte', 'produits-gastronomiques', 'gastronomie-alimentation', 1, 'de');

-- NIVEAU 2 : Niveau 2 pour Produits alimentaires (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('fruits-legumes', 'Obst & Gemüse', 'fruits-legumes', 'produits-alimentaires', 2, 'de'),
('viandes', 'Fleisch', 'viandes', 'produits-alimentaires', 2, 'de'),
('poissons', 'Fisch', 'poissons', 'produits-alimentaires', 2, 'de'),
('produits-laitiers-alimentation', 'Milchprodukte', 'produits-laitiers-alimentation', 'produits-alimentaires', 2, 'de'),
('pains-viennoiseries', 'Brote & Gebäck', 'pains-viennoiseries', 'produits-alimentaires', 2, 'de'),
('pates-riz-cereales', 'Nudeln, Reis & Getreide', 'pates-riz-cereales', 'produits-alimentaires', 2, 'de'),
('epices-condiments-alimentation', 'Gewürze & Kondimente', 'epices-condiments-alimentation', 'produits-alimentaires', 2, 'de'),
('huiles-vinaigres', 'Öle & Essige', 'huiles-vinaigres', 'produits-alimentaires', 2, 'de'),
('confitures-miels', 'Marmeladen & Honige', 'confitures-miels', 'produits-alimentaires', 2, 'de'),
('chocolats-bonbons', 'Schokoladen & Bonbons', 'chocolats-bonbons', 'produits-alimentaires', 2, 'de');

-- NIVEAU 2 : Niveau 2 pour Produits gastronomiques (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('specialites-regionales', 'Regionale Spezialitäten', 'specialites-regionales', 'produits-gastronomiques', 2, 'de'),
('produits-artisanaux', 'Handgemachte Produkte', 'produits-artisanaux', 'produits-gastronomiques', 2, 'de'),
('produits-bio-gastronomie', 'Bio-Produkte', 'produits-bio-gastronomie', 'produits-gastronomiques', 2, 'de'),
('produits-du-terroir', 'Produkte der Region', 'produits-du-terroir', 'produits-gastronomiques', 2, 'de'),
('specialites-de-noel', 'Weihnachtsspezialitäten', 'specialites-de-noel', 'produits-gastronomiques', 2, 'de'),
('specialites-ramadan', 'Ramadan-Spezialitäten', 'specialites-ramadan', 'produits-gastronomiques', 2, 'de'),
('plats-prepared-gastronomie', 'Fertiggerichte', 'plats-prepared-gastronomie', 'produits-gastronomiques', 2, 'de'),
('sauces-gastronomiques', 'Gastronomische Saucen', 'sauces-gastronomiques', 'produits-gastronomiques', 2, 'de'),
('desserts-gastronomiques', 'Gastronomische Desserts', 'desserts-gastronomiques', 'produits-gastronomiques', 2, 'de');

-- NIVEAU 0 : Gastronomie & Alimentation (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('gastronomie-alimentation', 'Gastronomy & Food', 'gastronomie-alimentation', NULL, 0, 'en');

-- NIVEAU 1 : Produits alimentaires (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('produits-alimentaires', 'Food Products', 'produits-alimentaires', 'gastronomie-alimentation', 1, 'en');

-- NIVEAU 1 : Produits gastronomiques (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('produits-gastronomiques', 'Gastronomic Products', 'produits-gastronomiques', 'gastronomie-alimentation', 1, 'en');

-- NIVEAU 2 : Niveau 2 pour Produits alimentaires (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('fruits-legumes', 'Fruits & Vegetables', 'fruits-legumes', 'produits-alimentaires', 2, 'en'),
('viandes', 'Meats', 'viandes', 'produits-alimentaires', 2, 'en'),
('poissons', 'Fish', 'poissons', 'produits-alimentaires', 2, 'en'),
('produits-laitiers-alimentation', 'Dairy Products', 'produits-laitiers-alimentation', 'produits-alimentaires', 2, 'en'),
('pains-viennoiseries', 'Breads & Pastries', 'pains-viennoiseries', 'produits-alimentaires', 2, 'en'),
('pates-riz-cereales', 'Pasta, Rice & Cereals', 'pates-riz-cereales', 'produits-alimentaires', 2, 'en'),
('epices-condiments-alimentation', 'Spices & Condiments', 'epices-condiments-alimentation', 'produits-alimentaires', 2, 'en'),
('huiles-vinaigres', 'Oils & Vinegars', 'huiles-vinaigres', 'produits-alimentaires', 2, 'en'),
('confitures-miels', 'Jams & Honeys', 'confitures-miels', 'produits-alimentaires', 2, 'en'),
('chocolats-bonbons', 'Chocolates & Candies', 'chocolats-bonbons', 'produits-alimentaires', 2, 'en');

-- NIVEAU 2 : Niveau 2 pour Produits gastronomiques (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('specialites-regionales', 'Regional Specialties', 'specialites-regionales', 'produits-gastronomiques', 2, 'en'),
('produits-artisanaux', 'Artisanal Products', 'produits-artisanaux', 'produits-gastronomiques', 2, 'en'),
('produits-bio-gastronomie', 'Organic Products', 'produits-bio-gastronomie', 'produits-gastronomiques', 2, 'en'),
('produits-du-terroir', 'Local Products', 'produits-du-terroir', 'produits-gastronomiques', 2, 'en'),
('specialites-de-noel', 'Christmas Specialties', 'specialites-de-noel', 'produits-gastronomiques', 2, 'en'),
('specialites-ramadan', 'Ramadan Specialties', 'specialites-ramadan', 'produits-gastronomiques', 2, 'en'),
('plats-prepared-gastronomie', 'Prepared Dishes', 'plats-prepared-gastronomie', 'produits-gastronomiques', 2, 'en'),
('sauces-gastronomiques', 'Gastronomic Sauces', 'sauces-gastronomiques', 'produits-gastronomiques', 2, 'en'),
('desserts-gastronomiques', 'Gastronomic Desserts', 'desserts-gastronomiques', 'produits-gastronomiques', 2, 'en');

-- NIVEAU 0 : Gastronomie & Alimentation (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('gastronomie-alimentation', 'Gastronomia & Alimentazione', 'gastronomie-alimentation', NULL, 0, 'it');

-- NIVEAU 1 : Produits alimentaires (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('produits-alimentaires', 'Prodotti alimentari', 'produits-alimentaires', 'gastronomie-alimentation', 1, 'it');

-- NIVEAU 1 : Produits gastronomiques (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('produits-gastronomiques', 'Prodotti gastronomici', 'produits-gastronomiques', 'gastronomie-alimentation', 1, 'it');

-- NIVEAU 2 : Niveau 2 pour Produits alimentaires (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('fruits-legumes', 'Frutta e verdura', 'fruits-legumes', 'produits-alimentaires', 2, 'it'),
('viandes', 'Carni', 'viandes', 'produits-alimentaires', 2, 'it'),
('poissons', 'Pesce', 'poissons', 'produits-alimentaires', 2, 'it'),
('produits-laitiers-alimentation', 'Prodotti lattiero-caseari', 'produits-laitiers-alimentation', 'produits-alimentaires', 2, 'it'),
('pains-viennoiseries', 'Pane e pasticceria', 'pains-viennoiseries', 'produits-alimentaires', 2, 'it'),
('pates-riz-cereales', 'Pasta, riso e cereali', 'pates-riz-cereales', 'produits-alimentaires', 2, 'it'),
('epices-condiments-alimentation', 'Spezie e condimenti', 'epices-condiments-alimentation', 'produits-alimentaires', 2, 'it'),
('huiles-vinaigres', 'Oli e aceti', 'huiles-vinaigres', 'produits-alimentaires', 2, 'it'),
('confitures-miels', 'Marmellate e mieli', 'confitures-miels', 'produits-alimentaires', 2, 'it'),
('chocolats-bonbons', 'Cioccolatini e caramelle', 'chocolats-bonbons', 'produits-alimentaires', 2, 'it');

-- NIVEAU 2 : Niveau 2 pour Produits gastronomiques (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('specialites-regionales', 'Specialità regionali', 'specialites-regionales', 'produits-gastronomiques', 2, 'it'),
('produits-artisanaux', 'Prodotti artigianali', 'produits-artisanaux', 'produits-gastronomiques', 2, 'it'),
('produits-bio-gastronomie', 'Prodotti biologici', 'produits-bio-gastronomie', 'produits-gastronomiques', 2, 'it'),
('produits-du-terroir', 'Prodotti del territorio', 'produits-du-terroir', 'produits-gastronomiques', 2, 'it'),
('specialites-de-noel', 'Specialità di Natale', 'specialites-de-noel', 'produits-gastronomiques', 2, 'it'),
('specialites-ramadan', 'Specialità di Ramadan', 'specialites-ramadan', 'produits-gastronomiques', 2, 'it'),
('plats-prepared-gastronomie', 'Piatti preparati', 'plats-prepared-gastronomie', 'produits-gastronomiques', 2, 'it'),
('sauces-gastronomiques', 'Salse gastronomiche', 'sauces-gastronomiques', 'produits-gastronomiques', 2, 'it'),
('desserts-gastronomiques', 'Dolci gastronomici', 'desserts-gastronomiques', 'produits-gastronomiques', 2, 'it');