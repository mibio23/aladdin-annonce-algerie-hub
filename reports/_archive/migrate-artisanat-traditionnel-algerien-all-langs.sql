-- Migration Artisanat Traditionnel Algérien - Toutes les langues
-- NIVEAU 0 : Artisanat Traditionnel Algérien (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('artisanat-traditionnel-algerien', 'Artisanat Traditionnel Algérien', 'artisanat-traditionnel-algerien', NULL, 0, 'fr');

-- NIVEAU 1 : Poteries & Céramiques (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('poteries-ceramiques', 'Poteries & Céramiques', 'poteries-ceramiques', 'artisanat-traditionnel-algerien', 1, 'fr');

-- NIVEAU 1 : Textiles artisanaux (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('textiles-artisanaux', 'Textiles artisanaux', 'textiles-artisanaux', 'artisanat-traditionnel-algerien', 1, 'fr');

-- NIVEAU 2 : Niveau 2 pour Poteries & Céramiques (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jarres-algeriennes', 'Jarres algériennes', 'jarres-algeriennes', 'poteries-ceramiques', 2, 'fr'),
('plats-en-terre', 'Plats en terre', 'plats-en-terre', 'poteries-ceramiques', 2, 'fr'),
('coupes-decoration', 'Coupes décoratives', 'coupes-decoration', 'poteries-ceramiques', 2, 'fr'),
('vases-en-terre-cuite', 'Vases en terre cuite', 'vases-en-terre-cuite', 'poteries-ceramiques', 2, 'fr'),
('poteries-berberes', 'Poteries berbères', 'poteries-berberes', 'poteries-ceramiques', 2, 'fr'),
('ceramiques-kabyles', 'Céramiques kabyles', 'ceramiques-kabyles', 'poteries-ceramiques', 2, 'fr'),
('poteries-sahariennes', 'Poteries sahariennes', 'poteries-sahariennes', 'poteries-ceramiques', 2, 'fr'),
('plats-a-couscous', 'Plats à couscous', 'plats-a-couscous', 'poteries-ceramiques', 2, 'fr'),
('tagines-algeriens', 'Tagines algériens', 'tagines-algeriens', 'poteries-ceramiques', 2, 'fr'),
('poteries-tunisiennes', 'Poteries tunisiennes', 'poteries-tunisiennes', 'poteries-ceramiques', 2, 'fr');

-- NIVEAU 2 : Niveau 2 pour Textiles artisanaux (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('tapis-algeriens', 'Tapis algériens', 'tapis-algeriens', 'textiles-artisanaux', 2, 'fr'),
('tapis-berberes', 'Tapis berbères', 'tapis-berberes', 'textiles-artisanaux', 2, 'fr'),
('tapis-kabyles', 'Tapis kabyles', 'tapis-kabyles', 'textiles-artisanaux', 2, 'fr'),
('couvertures-algeriennes', 'Couvertures algériennes', 'couvertures-algeriennes', 'textiles-artisanaux', 2, 'fr'),
('broderies-algeriennes', 'Broderies algériennes', 'broderies-algeriennes', 'textiles-artisanaux', 2, 'fr'),
('tissages-artisanaux', 'Tissages artisanaux', 'tissages-artisanaux', 'textiles-artisanaux', 2, 'fr'),
('vetements-traditionnels', 'Vêtements traditionnels', 'vetements-traditionnels', 'textiles-artisanaux', 2, 'fr'),
('accessoires-textiles', 'Accessoires textiles', 'accessoires-textiles', 'textiles-artisanaux', 2, 'fr'),
('laine-algerienne', 'Laine algérienne', 'laine-algerienne', 'textiles-artisanaux', 2, 'fr'),
('coton-algerien', 'Coton algérien', 'coton-algerien', 'textiles-artisanaux', 2, 'fr');

-- NIVEAU 0 : Artisanat Traditionnel Algérien (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('artisanat-traditionnel-algerien', 'الحرف التقليدية الجزائرية', 'artisanat-traditionnel-algerien', NULL, 0, 'ar');

-- NIVEAU 1 : Poteries & Céramiques (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('poteries-ceramiques', 'الفخار والسيراميك', 'poteries-ceramiques', 'artisanat-traditionnel-algerien', 1, 'ar');

-- NIVEAU 1 : Textiles artisanaux (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('textiles-artisanaux', 'المنسوجات الحرفية', 'textiles-artisanaux', 'artisanat-traditionnel-algerien', 1, 'ar');

-- NIVEAU 2 : Niveau 2 pour Poteries & Céramiques (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jarres-algeriennes', 'الجرار الجزائرية', 'jarres-algeriennes', 'poteries-ceramiques', 2, 'ar'),
('plats-en-terre', 'الأطباق الطينية', 'plats-en-terre', 'poteries-ceramiques', 2, 'ar'),
('coupes-decoration', 'أوعية الزينة', 'coupes-decoration', 'poteries-ceramiques', 2, 'ar'),
('vases-en-terre-cuite', 'الزهوريات الطينية', 'vases-en-terre-cuite', 'poteries-ceramiques', 2, 'ar'),
('poteries-berberes', 'الفخار البربري', 'poteries-berberes', 'poteries-ceramiques', 2, 'ar'),
('ceramiques-kabyles', 'السيراميك القبائلي', 'ceramiques-kabyles', 'poteries-ceramiques', 2, 'ar'),
('poteries-sahariennes', 'الفخار الصحراوي', 'poteries-sahariennes', 'poteries-ceramiques', 2, 'ar'),
('plats-a-couscous', 'أواني الكسكس', 'plats-a-couscous', 'poteries-ceramiques', 2, 'ar'),
('tagines-algeriens', 'الطاجن الجزائري', 'tagines-algeriens', 'poteries-ceramiques', 2, 'ar'),
('poteries-tunisiennes', 'الفخار التونسي', 'poteries-tunisiennes', 'poteries-ceramiques', 2, 'ar');

-- NIVEAU 2 : Niveau 2 pour Textiles artisanaux (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('tapis-algeriens', 'السجاد الجزائري', 'tapis-algeriens', 'textiles-artisanaux', 2, 'ar'),
('tapis-berberes', 'السجاد البربري', 'tapis-berberes', 'textiles-artisanaux', 2, 'ar'),
('tapis-kabyles', 'السجاد القبائلي', 'tapis-kabyles', 'textiles-artisanaux', 2, 'ar'),
('couvertures-algeriennes', 'البطانيات الجزائرية', 'couvertures-algeriennes', 'textiles-artisanaux', 2, 'ar'),
('broderies-algeriennes', 'التطريز الجزائري', 'broderies-algeriennes', 'textiles-artisanaux', 2, 'ar'),
('tissages-artisanaux', 'الأنسجة الحرفية', 'tissages-artisanaux', 'textiles-artisanaux', 2, 'ar'),
('vetements-traditionnels', 'الملابس التقليدية', 'vetements-traditionnels', 'textiles-artisanaux', 2, 'ar'),
('accessoires-textiles', 'الإكسسوارات النسيجية', 'accessoires-textiles', 'textiles-artisanaux', 2, 'ar'),
('laine-algerienne', 'الصوف الجزائري', 'laine-algerienne', 'textiles-artisanaux', 2, 'ar'),
('coton-algerien', 'القطن الجزائري', 'coton-algerien', 'textiles-artisanaux', 2, 'ar');

-- NIVEAU 0 : Artisanat Traditionnel Algérien (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('artisanat-traditionnel-algerien', 'Artesanía Tradicional Argelina', 'artisanat-traditionnel-algerien', NULL, 0, 'es');

-- NIVEAU 1 : Poteries & Céramiques (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('poteries-ceramiques', 'Alfarería y Cerámica', 'poteries-ceramiques', 'artisanat-traditionnel-algerien', 1, 'es');

-- NIVEAU 1 : Textiles artisanaux (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('textiles-artisanaux', 'Textiles artesanales', 'textiles-artisanaux', 'artisanat-traditionnel-algerien', 1, 'es');

-- NIVEAU 2 : Niveau 2 pour Poteries & Céramiques (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jarres-algeriennes', 'Jarrones argelinos', 'jarres-algeriennes', 'poteries-ceramiques', 2, 'es'),
('plats-en-terre', 'Platos de barro', 'plats-en-terre', 'poteries-ceramiques', 2, 'es'),
('coupes-decoration', 'Copas decorativas', 'coupes-decoration', 'poteries-ceramiques', 2, 'es'),
('vases-en-terre-cuite', 'Jarrones de barro cocido', 'vases-en-terre-cuite', 'poteries-ceramiques', 2, 'es'),
('poteries-berberes', 'Alfarería bereber', 'poteries-berberes', 'poteries-ceramiques', 2, 'es'),
('ceramiques-kabyles', 'Cerámicas cabilas', 'ceramiques-kabyles', 'poteries-ceramiques', 2, 'es'),
('poteries-sahariennes', 'Alfarería del Sáhara', 'poteries-sahariennes', 'poteries-ceramiques', 2, 'es'),
('plats-a-couscous', 'Platos para cuscús', 'plats-a-couscous', 'poteries-ceramiques', 2, 'es'),
('tagines-algeriens', 'Tayines argelinos', 'tagines-algeriens', 'poteries-ceramiques', 2, 'es'),
('poteries-tunisiennes', 'Alfarería tunecina', 'poteries-tunisiennes', 'poteries-ceramiques', 2, 'es');

-- NIVEAU 2 : Niveau 2 pour Textiles artisanaux (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('tapis-algeriens', 'Alfombras argelinas', 'tapis-algeriens', 'textiles-artisanaux', 2, 'es'),
('tapis-berberes', 'Alfombras bereberes', 'tapis-berberes', 'textiles-artisanaux', 2, 'es'),
('tapis-kabyles', 'Alfombras cabilas', 'tapis-kabyles', 'textiles-artisanaux', 2, 'es'),
('couvertures-algeriennes', 'Mantas argelinas', 'couvertures-algeriennes', 'textiles-artisanaux', 2, 'es'),
('broderies-algeriennes', 'Bordados argelinos', 'broderies-algeriennes', 'textiles-artisanaux', 2, 'es'),
('tissages-artisanaux', 'Tejidos artesanales', 'tissages-artisanaux', 'textiles-artisanaux', 2, 'es'),
('vetements-traditionnels', 'Ropa tradicional', 'vetements-traditionnels', 'textiles-artisanaux', 2, 'es'),
('accessoires-textiles', 'Accesorios textiles', 'accessoires-textiles', 'textiles-artisanaux', 2, 'es'),
('laine-algerienne', 'Lana argelina', 'laine-algerienne', 'textiles-artisanaux', 2, 'es'),
('coton-algerien', 'Algodón argelino', 'coton-algerien', 'textiles-artisanaux', 2, 'es');

-- NIVEAU 0 : Artisanat Traditionnel Algérien (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('artisanat-traditionnel-algerien', 'Algerische traditionelle Handwerkskunst', 'artisanat-traditionnel-algerien', NULL, 0, 'de');

-- NIVEAU 1 : Poteries & Céramiques (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('poteries-ceramiques', 'Töpferei & Keramik', 'poteries-ceramiques', 'artisanat-traditionnel-algerien', 1, 'de');

-- NIVEAU 1 : Textiles artisanaux (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('textiles-artisanaux', 'Handgewebte Textilien', 'textiles-artisanaux', 'artisanat-traditionnel-algerien', 1, 'de');

-- NIVEAU 2 : Niveau 2 pour Poteries & Céramiques (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jarres-algeriennes', 'Algerische Krüge', 'jarres-algeriennes', 'poteries-ceramiques', 2, 'de'),
('plats-en-terre', 'Tonteller', 'plats-en-terre', 'poteries-ceramiques', 2, 'de'),
('coupes-decoration', 'Dekorative Schalen', 'coupes-decoration', 'poteries-ceramiques', 2, 'de'),
('vases-en-terre-cuite', 'Tongefäße', 'vases-en-terre-cuite', 'poteries-ceramiques', 2, 'de'),
('poteries-berberes', 'Berber-Töpferei', 'poteries-berberes', 'poteries-ceramiques', 2, 'de'),
('ceramiques-kabyles', 'Kabylische Keramik', 'ceramiques-kabyles', 'poteries-ceramiques', 2, 'de'),
('poteries-sahariennes', 'Sahara-Töpferei', 'poteries-sahariennes', 'poteries-ceramiques', 2, 'de'),
('plats-a-couscous', 'Couscous-Tonteller', 'plats-a-couscous', 'poteries-ceramiques', 2, 'de'),
('tagines-algeriens', 'Algerische Tajines', 'tagines-algeriens', 'poteries-ceramiques', 2, 'de'),
('poteries-tunisiennes', 'Tunesische Töpferei', 'poteries-tunisiennes', 'poteries-ceramiques', 2, 'de');

-- NIVEAU 2 : Niveau 2 pour Textiles artisanaux (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('tapis-algeriens', 'Algerische Teppiche', 'tapis-algeriens', 'textiles-artisanaux', 2, 'de'),
('tapis-berberes', 'Berber-Teppiche', 'tapis-berberes', 'textiles-artisanaux', 2, 'de'),
('tapis-kabyles', 'Kabylische Teppiche', 'tapis-kabyles', 'textiles-artisanaux', 2, 'de'),
('couvertures-algeriennes', 'Algerische Decken', 'couvertures-algeriennes', 'textiles-artisanaux', 2, 'de'),
('broderies-algeriennes', 'Algerische Stickereien', 'broderies-algeriennes', 'textiles-artisanaux', 2, 'de'),
('tissages-artisanaux', 'Handgewebte Textilien', 'tissages-artisanaux', 'textiles-artisanaux', 2, 'de'),
('vetements-traditionnels', 'Traditionelle Kleidung', 'vetements-traditionnels', 'textiles-artisanaux', 2, 'de'),
('accessoires-textiles', 'Textil-Accessoires', 'accessoires-textiles', 'textiles-artisanaux', 2, 'de'),
('laine-algerienne', 'Algerische Wolle', 'laine-algerienne', 'textiles-artisanaux', 2, 'de'),
('coton-algerien', 'Algerische Baumwolle', 'coton-algerien', 'textiles-artisanaux', 2, 'de');

-- NIVEAU 0 : Artisanat Traditionnel Algérien (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('artisanat-traditionnel-algerien', 'Traditional Algerian Crafts', 'artisanat-traditionnel-algerien', NULL, 0, 'en');

-- NIVEAU 1 : Poteries & Céramiques (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('poteries-ceramiques', 'Pottery & Ceramics', 'poteries-ceramiques', 'artisanat-traditionnel-algerien', 1, 'en');

-- NIVEAU 1 : Textiles artisanaux (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('textiles-artisanaux', 'Artisanal Textiles', 'textiles-artisanaux', 'artisanat-traditionnel-algerien', 1, 'en');

-- NIVEAU 2 : Niveau 2 pour Poteries & Céramiques (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jarres-algeriennes', 'Algerian Jars', 'jarres-algeriennes', 'poteries-ceramiques', 2, 'en'),
('plats-en-terre', 'Clay Dishes', 'plats-en-terre', 'poteries-ceramiques', 2, 'en'),
('coupes-decoration', 'Decorative Bowls', 'coupes-decoration', 'poteries-ceramiques', 2, 'en'),
('vases-en-terre-cuite', 'Terracotta Vases', 'vases-en-terre-cuite', 'poteries-ceramiques', 2, 'en'),
('poteries-berberes', 'Berber Pottery', 'poteries-berberes', 'poteries-ceramiques', 2, 'en'),
('ceramiques-kabyles', 'Kabyle Ceramics', 'ceramiques-kabyles', 'poteries-ceramiques', 2, 'en'),
('poteries-sahariennes', 'Saharan Pottery', 'poteries-sahariennes', 'poteries-ceramiques', 2, 'en'),
('plats-a-couscous', 'Couscous Dishes', 'plats-a-couscous', 'poteries-ceramiques', 2, 'en'),
('tagines-algeriens', 'Algerian Tagines', 'tagines-algeriens', 'poteries-ceramiques', 2, 'en'),
('poteries-tunisiennes', 'Tunisian Pottery', 'poteries-tunisiennes', 'poteries-ceramiques', 2, 'en');

-- NIVEAU 2 : Niveau 2 pour Textiles artisanaux (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('tapis-algeriens', 'Algerian Carpets', 'tapis-algeriens', 'textiles-artisanaux', 2, 'en'),
('tapis-berberes', 'Berber Carpets', 'tapis-berberes', 'textiles-artisanaux', 2, 'en'),
('tapis-kabyles', 'Kabyle Carpets', 'tapis-kabyles', 'textiles-artisanaux', 2, 'en'),
('couvertures-algeriennes', 'Algerian Blankets', 'couvertures-algeriennes', 'textiles-artisanaux', 2, 'en'),
('broderies-algeriennes', 'Algerian Embroidery', 'broderies-algeriennes', 'textiles-artisanaux', 2, 'en'),
('tissages-artisanaux', 'Artisan Weaving', 'tissages-artisanaux', 'textiles-artisanaux', 2, 'en'),
('vetements-traditionnels', 'Traditional Clothing', 'vetements-traditionnels', 'textiles-artisanaux', 2, 'en'),
('accessoires-textiles', 'Textile Accessories', 'accessoires-textiles', 'textiles-artisanaux', 2, 'en'),
('laine-algerienne', 'Algerian Wool', 'laine-algerienne', 'textiles-artisanaux', 2, 'en'),
('coton-algerien', 'Algerian Cotton', 'coton-algerien', 'textiles-artisanaux', 2, 'en');

-- NIVEAU 0 : Artisanat Traditionnel Algérien (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('artisanat-traditionnel-algerien', 'Artigianato Tradizionale Algerino', 'artisanat-traditionnel-algerien', NULL, 0, 'it');

-- NIVEAU 1 : Poteries & Céramiques (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('poteries-ceramiques', 'Ceramiche & Terracotta', 'poteries-ceramiques', 'artisanat-traditionnel-algerien', 1, 'it');

-- NIVEAU 1 : Textiles artisanaux (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('textiles-artisanaux', 'Tessuti artigianali', 'textiles-artisanaux', 'artisanat-traditionnel-algerien', 1, 'it');

-- NIVEAU 2 : Niveau 2 pour Poteries & Céramiques (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jarres-algeriennes', 'Giare algerine', 'jarres-algeriennes', 'poteries-ceramiques', 2, 'it'),
('plats-en-terre', 'Piatti in terracotta', 'plats-en-terre', 'poteries-ceramiques', 2, 'it'),
('coupes-decoration', 'Coppe decorative', 'coupes-decoration', 'poteries-ceramiques', 2, 'it'),
('vases-en-terre-cuite', 'Vasi in terracotta', 'vases-en-terre-cuite', 'poteries-ceramiques', 2, 'it'),
('poteries-berberes', 'Ceramiche berbere', 'poteries-berberes', 'poteries-ceramiques', 2, 'it'),
('ceramiques-kabyles', 'Ceramiche cabile', 'ceramiques-kabyles', 'poteries-ceramiques', 2, 'it'),
('poteries-sahariennes', 'Ceramiche del Sahara', 'poteries-sahariennes', 'poteries-ceramiques', 2, 'it'),
('plats-a-couscous', 'Piatti per couscous', 'plats-a-couscous', 'poteries-ceramiques', 2, 'it'),
('tagines-algeriens', 'Tajine algerini', 'tagines-algeriens', 'poteries-ceramiques', 2, 'it'),
('poteries-tunisiennes', 'Ceramiche tunisine', 'poteries-tunisiennes', 'poteries-ceramiques', 2, 'it');

-- NIVEAU 2 : Niveau 2 pour Textiles artisanaux (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('tapis-algeriens', 'Tappeti algerini', 'tapis-algeriens', 'textiles-artisanaux', 2, 'it'),
('tapis-berberes', 'Tappeti berberi', 'tapis-berberes', 'textiles-artisanaux', 2, 'it'),
('tapis-kabyles', 'Tappeti cabili', 'tapis-kabyles', 'textiles-artisanaux', 2, 'it'),
('couvertures-algeriennes', 'Coperte algerine', 'couvertures-algeriennes', 'textiles-artisanaux', 2, 'it'),
('broderies-algeriennes', 'Ricami algerini', 'broderies-algeriennes', 'textiles-artisanaux', 2, 'it'),
('tissages-artisanaux', 'Tessuti artigianali', 'tissages-artisanaux', 'textiles-artisanaux', 2, 'it'),
('vetements-traditionnels', 'Vestiti tradizionali', 'vetements-traditionnels', 'textiles-artisanaux', 2, 'it'),
('accessoires-textiles', 'Accessori tessili', 'accessoires-textiles', 'textiles-artisanaux', 2, 'it'),
('laine-algerienne', 'Lana algerina', 'laine-algerienne', 'textiles-artisanaux', 2, 'it'),
('coton-algerien', 'Cotone algerino', 'coton-algerien', 'textiles-artisanaux', 2, 'it');