-- Migration Santé & Beauté - Toutes les langues
-- NIVEAU 0 : Santé & Beauté (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('sante-beaute', 'Santé & Beauté', 'sante-beaute', NULL, 0, 'fr');

-- NIVEAU 1 : Soins du corps (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('soins-corps', 'Soins du corps', 'soins-corps', 'sante-beaute', 1, 'fr');

-- NIVEAU 1 : Soins du visage (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('soins-visage', 'Soins du visage', 'soins-visage', 'sante-beaute', 1, 'fr');

-- NIVEAU 2 : Niveau 2 pour Soins du corps (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('cremes-corps', 'Crèmes corps', 'cremes-corps', 'soins-corps', 2, 'fr'),
('laits-corps', 'Laits corps', 'laits-corps', 'soins-corps', 2, 'fr'),
('gels-douche', 'Gels douche', 'gels-douche', 'soins-corps', 2, 'fr'),
('savons', 'Savons', 'savons', 'soins-corps', 2, 'fr'),
('desodorants', 'Déodorants', 'desodorants', 'soins-corps', 2, 'fr'),
('produits-rasage', 'Produits de rasage', 'produits-rasage', 'soins-corps', 2, 'fr'),
('produits-epilation', 'Produits d\'épilation', 'produits-epilation', 'soins-corps', 2, 'fr'),
('huiles-massage', 'Huiles de massage', 'huiles-massage', 'soins-corps', 2, 'fr'),
('produits-solaires-corps', 'Produits solaires corps', 'produits-solaires-corps', 'soins-corps', 2, 'fr'),
('produits-minceur-corps', 'Produits minceur corps', 'produits-minceur-corps', 'soins-corps', 2, 'fr');

-- NIVEAU 2 : Niveau 2 pour Soins du visage (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('nettoyants-visage', 'Nettoyants visage', 'nettoyants-visage', 'soins-visage', 2, 'fr'),
('cremes-jour', 'Crèmes de jour', 'cremes-jour', 'soins-visage', 2, 'fr'),
('cremes-nuit', 'Crèmes de nuit', 'cremes-nuit', 'soins-visage', 2, 'fr'),
('serums', 'Sérums', 'serums', 'soins-visage', 2, 'fr'),
('masques-visage', 'Masques visage', 'masques-visage', 'soins-visage', 2, 'fr'),
('gommages-visage', 'Gommages visage', 'gommages-visage', 'soins-visage', 2, 'fr'),
('contour-yeux', 'Contour des yeux', 'contour-yeux', 'soins-visage', 2, 'fr'),
('produits-anti-age', 'Produits anti-âge', 'produits-anti-age', 'soins-visage', 2, 'fr'),
('produits-hydratants', 'Produits hydratants', 'produits-hydratants', 'soins-visage', 2, 'fr'),
('produits-matifiants', 'Produits matifiants', 'produits-matifiants', 'soins-visage', 2, 'fr');

-- NIVEAU 0 : Santé & Beauté (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('sante-beaute', 'الصحة والجمال', 'sante-beaute', NULL, 0, 'ar');

-- NIVEAU 1 : Soins du corps (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('soins-corps', 'عناية الجسم', 'soins-corps', 'sante-beaute', 1, 'ar');

-- NIVEAU 1 : Soins du visage (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('soins-visage', 'عناية الوجه', 'soins-visage', 'sante-beaute', 1, 'ar');

-- NIVEAU 2 : Niveau 2 pour Soins du corps (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('cremes-corps', 'كريمات الجسم', 'cremes-corps', 'soins-corps', 2, 'ar'),
('laits-corps', 'حليب الجسم', 'laits-corps', 'soins-corps', 2, 'ar'),
('gels-douche', 'جل الاستحمام', 'gels-douche', 'soins-corps', 2, 'ar'),
('savons', 'صابون', 'savons', 'soins-corps', 2, 'ar'),
('desodorants', 'مزيلات العرق', 'desodorants', 'soins-corps', 2, 'ar'),
('produits-rasage', 'منتجات الحلاقة', 'produits-rasage', 'soins-corps', 2, 'ar'),
('produits-epilation', 'منتجات إزالة الشعر', 'produits-epilation', 'soins-corps', 2, 'ar'),
('huiles-massage', 'زيوت التدليك', 'huiles-massage', 'soins-corps', 2, 'ar'),
('produits-solaires-corps', 'منتجات شمسية للجسم', 'produits-solaires-corps', 'soins-corps', 2, 'ar'),
('produits-minceur-corps', 'منتجات تخسيس الجسم', 'produits-minceur-corps', 'soins-corps', 2, 'ar');

-- NIVEAU 2 : Niveau 2 pour Soins du visage (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('nettoyants-visage', 'منظفات الوجه', 'nettoyants-visage', 'soins-visage', 2, 'ar'),
('cremes-jour', 'كريمات النهار', 'cremes-jour', 'soins-visage', 2, 'ar'),
('cremes-nuit', 'كريمات الليل', 'cremes-nuit', 'soins-visage', 2, 'ar'),
('serums', 'سيروم', 'serums', 'soins-visage', 2, 'ar'),
('masques-visage', 'أقنعة الوجه', 'masques-visage', 'soins-visage', 2, 'ar'),
('gommages-visage', 'مقشرات الوجه', 'gommages-visage', 'soins-visage', 2, 'ar'),
('contour-yeux', 'محيط العين', 'contour-yeux', 'soins-visage', 2, 'ar'),
('produits-anti-age', 'منتجات مكافحة الشيخوخة', 'produits-anti-age', 'soins-visage', 2, 'ar'),
('produits-hydratants', 'منتجات مرطبة', 'produits-hydratants', 'soins-visage', 2, 'ar'),
('produits-matifiants', 'منتجات ماطفة', 'produits-matifiants', 'soins-visage', 2, 'ar');

-- NIVEAU 0 : Santé & Beauté (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('sante-beaute', 'Salud y Belleza', 'sante-beaute', NULL, 0, 'es');

-- NIVEAU 1 : Soins du corps (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('soins-corps', 'Cuidado corporal', 'soins-corps', 'sante-beaute', 1, 'es');

-- NIVEAU 1 : Soins du visage (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('soins-visage', 'Cuidado facial', 'soins-visage', 'sante-beaute', 1, 'es');

-- NIVEAU 2 : Niveau 2 pour Soins du corps (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('cremes-corps', 'Cremas corporales', 'cremes-corps', 'soins-corps', 2, 'es'),
('laits-corps', 'Leches corporales', 'laits-corps', 'soins-corps', 2, 'es'),
('gels-douche', 'Geles de ducha', 'gels-douche', 'soins-corps', 2, 'es'),
('savons', 'Jabones', 'savons', 'soins-corps', 2, 'es'),
('desodorants', 'Desodorantes', 'desodorants', 'soins-corps', 2, 'es'),
('produits-rasage', 'Productos de afeitado', 'produits-rasage', 'soins-corps', 2, 'es'),
('produits-epilation', 'Productos de depilación', 'produits-epilation', 'soins-corps', 2, 'es'),
('huiles-massage', 'Aceites de masaje', 'huiles-massage', 'soins-corps', 2, 'es'),
('produits-solaires-corps', 'Productos solares corporales', 'produits-solaires-corps', 'soins-corps', 2, 'es'),
('produits-minceur-corps', 'Productos adelgazantes corporales', 'produits-minceur-corps', 'soins-corps', 2, 'es');

-- NIVEAU 2 : Niveau 2 pour Soins du visage (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('nettoyants-visage', 'Limpiadores faciales', 'nettoyants-visage', 'soins-visage', 2, 'es'),
('cremes-jour', 'Cremas de día', 'cremes-jour', 'soins-visage', 2, 'es'),
('cremes-nuit', 'Cremas de noche', 'cremes-nuit', 'soins-visage', 2, 'es'),
('serums', 'Sérum', 'serums', 'soins-visage', 2, 'es'),
('masques-visage', 'Máscaras faciales', 'masques-visage', 'soins-visage', 2, 'es'),
('gommages-visage', 'Exfoliantes faciales', 'gommages-visage', 'soins-visage', 2, 'es'),
('contour-yeux', 'Contorno de ojos', 'contour-yeux', 'soins-visage', 2, 'es'),
('produits-anti-age', 'Productos antienvejecimiento', 'produits-anti-age', 'soins-visage', 2, 'es'),
('produits-hydratants', 'Productos hidratantes', 'produits-hydratants', 'soins-visage', 2, 'es'),
('produits-matifiants', 'Productos matificantes', 'produits-matifiants', 'soins-visage', 2, 'es');

-- NIVEAU 0 : Santé & Beauté (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('sante-beaute', 'Gesundheit & Schönheit', 'sante-beaute', NULL, 0, 'de');

-- NIVEAU 1 : Soins du corps (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('soins-corps', 'Körperpflege', 'soins-corps', 'sante-beaute', 1, 'de');

-- NIVEAU 1 : Soins du visage (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('soins-visage', 'Gesichtspflege', 'soins-visage', 'sante-beaute', 1, 'de');

-- NIVEAU 2 : Niveau 2 pour Soins du corps (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('cremes-corps', 'Körpercremes', 'cremes-corps', 'soins-corps', 2, 'de'),
('laits-corps', 'Körpermilch', 'laits-corps', 'soins-corps', 2, 'de'),
('gels-douche', 'Duschgele', 'gels-douche', 'soins-corps', 2, 'de'),
('savons', 'Seifen', 'savons', 'soins-corps', 2, 'de'),
('desodorants', 'Deodorants', 'desodorants', 'soins-corps', 2, 'de'),
('produits-rasage', 'Rasierprodukte', 'produits-rasage', 'soins-corps', 2, 'de'),
('produits-epilation', 'Enthaarungsprodukte', 'produits-epilation', 'soins-corps', 2, 'de'),
('huiles-massage', 'Massageöle', 'huiles-massage', 'soins-corps', 2, 'de'),
('produits-solaires-corps', 'Körper-Sonnenprodukte', 'produits-solaires-corps', 'soins-corps', 2, 'de'),
('produits-minceur-corps', 'Körper-Schlankheitsprodukte', 'produits-minceur-corps', 'soins-corps', 2, 'de');

-- NIVEAU 2 : Niveau 2 pour Soins du visage (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('nettoyants-visage', 'Gesichtsreiniger', 'nettoyants-visage', 'soins-visage', 2, 'de'),
('cremes-jour', 'Tagescremes', 'cremes-jour', 'soins-visage', 2, 'de'),
('cremes-nuit', 'Nachtcremes', 'cremes-nuit', 'soins-visage', 2, 'de'),
('serums', 'Seren', 'serums', 'soins-visage', 2, 'de'),
('masques-visage', 'Gesichtsmasken', 'masques-visage', 'soins-visage', 2, 'de'),
('gommages-visage', 'Gesichtspeelings', 'gommages-visage', 'soins-visage', 2, 'de'),
('contour-yeux', 'Augenkontur', 'contour-yeux', 'soins-visage', 2, 'de'),
('produits-anti-age', 'Anti-Aging-Produkte', 'produits-anti-age', 'soins-visage', 2, 'de'),
('produits-hydratants', 'Feuchtigkeitsspendende Produkte', 'produits-hydratants', 'soins-visage', 2, 'de'),
('produits-matifiants', 'Mattierende Produkte', 'produits-matifiants', 'soins-visage', 2, 'de');

-- NIVEAU 0 : Santé & Beauté (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('sante-beaute', 'Health & Beauty', 'sante-beaute', NULL, 0, 'en');

-- NIVEAU 1 : Soins du corps (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('soins-corps', 'Body Care', 'soins-corps', 'sante-beaute', 1, 'en');

-- NIVEAU 1 : Soins du visage (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('soins-visage', 'Facial Care', 'soins-visage', 'sante-beaute', 1, 'en');

-- NIVEAU 2 : Niveau 2 pour Soins du corps (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('cremes-corps', 'Body Creams', 'cremes-corps', 'soins-corps', 2, 'en'),
('laits-corps', 'Body Lotions', 'laits-corps', 'soins-corps', 2, 'en'),
('gels-douche', 'Shower Gels', 'gels-douche', 'soins-corps', 2, 'en'),
('savons', 'Soaps', 'savons', 'soins-corps', 2, 'en'),
('desodorants', 'Deodorants', 'desodorants', 'soins-corps', 2, 'en'),
('produits-rasage', 'Shaving Products', 'produits-rasage', 'soins-corps', 2, 'en'),
('produits-epilation', 'Hair Removal Products', 'produits-epilation', 'soins-corps', 2, 'en'),
('huiles-massage', 'Massage Oils', 'huiles-massage', 'soins-corps', 2, 'en'),
('produits-solaires-corps', 'Body Sun Products', 'produits-solaires-corps', 'soins-corps', 2, 'en'),
('produits-minceur-corps', 'Body Slimming Products', 'produits-minceur-corps', 'soins-corps', 2, 'en');

-- NIVEAU 2 : Niveau 2 pour Soins du visage (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('nettoyants-visage', 'Facial Cleansers', 'nettoyants-visage', 'soins-visage', 2, 'en'),
('cremes-jour', 'Day Creams', 'cremes-jour', 'soins-visage', 2, 'en'),
('cremes-nuit', 'Night Creams', 'cremes-nuit', 'soins-visage', 2, 'en'),
('serums', 'Serums', 'serums', 'soins-visage', 2, 'en'),
('masques-visage', 'Face Masks', 'masques-visage', 'soins-visage', 2, 'en'),
('gommages-visage', 'Facial Scrubs', 'gommages-visage', 'soins-visage', 2, 'en'),
('contour-yeux', 'Eye Contour', 'contour-yeux', 'soins-visage', 2, 'en'),
('produits-anti-age', 'Anti-Aging Products', 'produits-anti-age', 'soins-visage', 2, 'en'),
('produits-hydratants', 'Moisturizing Products', 'produits-hydratants', 'soins-visage', 2, 'en'),
('produits-matifiants', 'Mattifying Products', 'produits-matifiants', 'soins-visage', 2, 'en');

-- NIVEAU 0 : Santé & Beauté (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('sante-beaute', 'Salute e Bellezza', 'sante-beaute', NULL, 0, 'it');

-- NIVEAU 1 : Soins du corps (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('soins-corps', 'Cura del corpo', 'soins-corps', 'sante-beaute', 1, 'it');

-- NIVEAU 1 : Soins du visage (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('soins-visage', 'Cura del viso', 'soins-visage', 'sante-beaute', 1, 'it');

-- NIVEAU 2 : Niveau 2 pour Soins du corps (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('cremes-corps', 'Creme corpo', 'cremes-corps', 'soins-corps', 2, 'it'),
('laits-corps', 'Latte corpo', 'laits-corps', 'soins-corps', 2, 'it'),
('gels-douche', 'Gel doccia', 'gels-douche', 'soins-corps', 2, 'it'),
('savons', 'Saponi', 'savons', 'soins-corps', 2, 'it'),
('desodorants', 'Deodoranti', 'desodorants', 'soins-corps', 2, 'it'),
('produits-rasage', 'Prodotti da barba', 'produits-rasage', 'soins-corps', 2, 'it'),
('produits-epilation', 'Prodotti per depilazione', 'produits-epilation', 'soins-corps', 2, 'it'),
('huiles-massage', 'Oli da massaggio', 'huiles-massage', 'soins-corps', 2, 'it'),
('produits-solaires-corps', 'Prodotti solari corpo', 'produits-solaires-corps', 'soins-corps', 2, 'it'),
('produits-minceur-corps', 'Prodotti dimagranti corpo', 'produits-minceur-corps', 'soins-corps', 2, 'it');

-- NIVEAU 2 : Niveau 2 pour Soins du visage (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('nettoyants-visage', 'Detergenti viso', 'nettoyants-visage', 'soins-visage', 2, 'it'),
('cremes-jour', 'Creme giorno', 'cremes-jour', 'soins-visage', 2, 'it'),
('cremes-nuit', 'Creme notte', 'cremes-nuit', 'soins-visage', 2, 'it'),
('serums', 'Sieri', 'serums', 'soins-visage', 2, 'it'),
('masques-visage', 'Maschere viso', 'masques-visage', 'soins-visage', 2, 'it'),
('gommages-visage', 'Scrub viso', 'gommages-visage', 'soins-visage', 2, 'it'),
('contour-yeux', 'Contorno occhi', 'contour-yeux', 'soins-visage', 2, 'it'),
('produits-anti-age', 'Prodotti anti-età', 'produits-anti-age', 'soins-visage', 2, 'it'),
('produits-hydratants', 'Prodotti idratanti', 'produits-hydratants', 'soins-visage', 2, 'it'),
('produits-matifiants', 'Prodotti opacizzanti', 'produits-matifiants', 'soins-visage', 2, 'it');