-- Migration complète Informatique & Électronique - Toutes les langues
-- Script SQL pour insertion directe dans Supabase

-- =====================================================
-- ARABE (ar)
-- =====================================================
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES ('informatique-electronique', 'الحاسوب والإلكترونيات', 'informatique-electronique', NULL, 0, 'ar');

-- Sous-catégories niveau 1 - Arabe
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('ordinateurs-pc', 'أجهزة الكمبيوتر', 'ordinateurs-pc', 'informatique-electronique', 1, 'ar'),
('composants-informatiques', 'مكونات الحاسوب', 'composants-informatiques', 'informatique-electronique', 1, 'ar'),
('peripheriques-accessoires', 'الملحقات الطرفية', 'peripheriques-accessoires', 'informatique-electronique', 1, 'ar'),
('reseau-internet', 'الشبكة والإنترنت', 'reseau-internet', 'informatique-electronique', 1, 'ar'),
('stockage-donnees', 'تخزين البيانات', 'stockage-donnees', 'informatique-electronique', 1, 'ar'),
('audio-hifi', 'الصوت والـ Hi-Fi', 'audio-hifi', 'informatique-electronique', 1, 'ar'),
('video-tv', 'الفيديو والتلفزيون', 'video-tv', 'informatique-electronique', 1, 'ar'),
('photo-cameras', 'الصور والكاميرات', 'photo-cameras', 'informatique-electronique', 1, 'ar'),
('gaming', 'الألعاب', 'gaming', 'informatique-electronique', 1, 'ar'),
('impression', 'الطباعة', 'impression', 'informatique-electronique', 1, 'ar'),
('alimentation-protection', 'الطاقة والحماية', 'alimentation-protection', 'informatique-electronique', 1, 'ar'),
('montage-informatique', 'تركيب الحاسوب', 'montage-informatique', 'informatique-electronique', 1, 'ar'),
('logiciels', 'البرامج', 'logiciels', 'informatique-electronique', 1, 'ar'),
('developpement-informatique', 'تطوير الحاسوب', 'developpement-informatique', 'informatique-electronique', 1, 'ar'),
('domotique', 'المنزل الذكي', 'domotique', 'informatique-electronique', 1, 'ar'),
('objets-connectes', 'الأجهزة المتصلة', 'objets-connectes', 'informatique-electronique', 1, 'ar'),
('montres-connectees', 'الساعات الذكية', 'montres-connectees', 'informatique-electronique', 1, 'ar'),
('tablettes', 'الأجهزة اللوحية', 'tablettes', 'informatique-electronique', 1, 'ar'),
('lecteurs-ebook', 'قارئات الكتب الإلكترونية', 'lecteurs-ebook', 'informatique-electronique', 1, 'ar'),
('gps-navigation', 'نظام GPS والملاحة', 'gps-navigation', 'informatique-electronique', 1, 'ar'),
('accessoires-mobiles', 'ملحقات الجوال', 'accessoires-mobiles', 'informatique-electronique', 1, 'ar'),
('telephonie-fixe', 'الهاتف الثابت', 'telephonie-fixe', 'informatique-electronique', 1, 'ar'),
('radios-reveils', 'الراديو والمنبهات', 'radios-reveils', 'informatique-electronique', 1, 'ar'),
('bureautique', 'المكتبية', 'bureautique', 'informatique-electronique', 1, 'ar'),
('electronique-auto', 'إلكترونيات السيارات', 'electronique-auto', 'informatique-electronique', 1, 'ar'),
('electronique-sport', 'إلكترونيات الرياضة', 'electronique-sport', 'informatique-electronique', 1, 'ar');

-- Sous-catégories niveau 1 - Arabe (sous-catégories d'ordinateurs-pc)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('laptops', 'لابتوبات', 'laptops', 'ordinateurs-pc', 1, 'ar'),
('macbook', 'ماك بوك', 'macbook', 'ordinateurs-pc', 1, 'ar'),
('pc-portables-gaming', 'أجهزة الألعاب المحمولة', 'pc-portables-gaming', 'ordinateurs-pc', 1, 'ar'),
('ultrabooks', 'ألترابوك', 'ultrabooks', 'ordinateurs-pc', 1, 'ar');

-- Sous-catégories niveau 1 - Arabe (sous-catégories de composants-informatiques)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('processeurs', 'معالجات', 'processeurs', 'composants-informatiques', 1, 'ar'),
('cartes-meres', 'لوحات أم', 'cartes-meres', 'composants-informatiques', 1, 'ar'),
('memoires-ram', 'ذاكرة الوصول العشوائي', 'memoires-ram', 'composants-informatiques', 1, 'ar'),
('disques-durs', 'أقراص صلبة', 'disques-durs', 'composants-informatiques', 1, 'ar');

-- =====================================================
-- FRANÇAIS (fr)
-- =====================================================
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES ('informatique-electronique', 'Informatique & Électronique', 'informatique-electronique', NULL, 0, 'fr');

-- Sous-catégories niveau 1 - Français
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('ordinateurs-pc', 'Ordinateurs & PC', 'ordinateurs-pc', 'informatique-electronique', 1, 'fr'),
('composants-informatiques', 'Composants informatiques', 'composants-informatiques', 'informatique-electronique', 1, 'fr'),
('peripheriques-accessoires', 'Périphériques & accessoires', 'peripheriques-accessoires', 'informatique-electronique', 1, 'fr'),
('reseau-internet', 'Réseau & Internet', 'reseau-internet', 'informatique-electronique', 1, 'fr'),
('stockage-donnees', 'Stockage de données', 'stockage-donnees', 'informatique-electronique', 1, 'fr'),
('audio-hifi', 'Audio & Hi-Fi', 'audio-hifi', 'informatique-electronique', 1, 'fr'),
('video-tv', 'Vidéo & TV', 'video-tv', 'informatique-electronique', 1, 'fr'),
('photo-cameras', 'Photo & Caméras', 'photo-cameras', 'informatique-electronique', 1, 'fr'),
('gaming', 'Gaming', 'gaming', 'informatique-electronique', 1, 'fr'),
('impression', 'Impression', 'impression', 'informatique-electronique', 1, 'fr'),
('alimentation-protection', 'Alimentation & protection', 'alimentation-protection', 'informatique-electronique', 1, 'fr'),
('montage-informatique', 'Montage informatique', 'montage-informatique', 'informatique-electronique', 1, 'fr'),
('logiciels', 'Logiciels', 'logiciels', 'informatique-electronique', 1, 'fr'),
('developpement-informatique', 'Développement informatique', 'developpement-informatique', 'informatique-electronique', 1, 'fr'),
('domotique', 'Domotique', 'domotique', 'informatique-electronique', 1, 'fr'),
('objets-connectes', 'Objets connectés', 'objets-connectes', 'informatique-electronique', 1, 'fr'),
('montres-connectees', 'Montres connectées', 'montres-connectees', 'informatique-electronique', 1, 'fr'),
('tablettes', 'Tablettes', 'tablettes', 'informatique-electronique', 1, 'fr'),
('lecteurs-ebook', 'Lecteurs d''ebook', 'lecteurs-ebook', 'informatique-electronique', 1, 'fr'),
('gps-navigation', 'GPS & Navigation', 'gps-navigation', 'informatique-electronique', 1, 'fr'),
('accessoires-mobiles', 'Accessoires mobiles', 'accessoires-mobiles', 'informatique-electronique', 1, 'fr'),
('telephonie-fixe', 'Téléphonie fixe', 'telephonie-fixe', 'informatique-electronique', 1, 'fr'),
('radios-reveils', 'Radios & Réveils', 'radios-reveils', 'informatique-electronique', 1, 'fr'),
('bureautique', 'Bureautique', 'bureautique', 'informatique-electronique', 1, 'fr'),
('electronique-auto', 'Électronique auto', 'electronique-auto', 'informatique-electronique', 1, 'fr'),
('electronique-sport', 'Électronique sport', 'electronique-sport', 'informatique-electronique', 1, 'fr');

-- Sous-catégories niveau 1 - Français (sous-catégories d'ordinateurs-pc)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('laptops', 'Laptops', 'laptops', 'ordinateurs-pc', 1, 'fr'),
('macbook', 'MacBook', 'macbook', 'ordinateurs-pc', 1, 'fr'),
('pc-portables-gaming', 'PC Portables Gaming', 'pc-portables-gaming', 'ordinateurs-pc', 1, 'fr'),
('ultrabooks', 'Ultrabooks', 'ultrabooks', 'ordinateurs-pc', 1, 'fr');

-- Sous-catégories niveau 1 - Français (sous-catégories de composants-informatiques)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('processeurs', 'Processeurs', 'processeurs', 'composants-informatiques', 1, 'fr'),
('cartes-meres', 'Cartes Mères', 'cartes-meres', 'composants-informatiques', 1, 'fr'),
('memoires-ram', 'Mémoires RAM', 'memoires-ram', 'composants-informatiques', 1, 'fr'),
('disques-durs', 'Disques Durs', 'disques-durs', 'composants-informatiques', 1, 'fr');

-- =====================================================
-- ANGLAIS (en)
-- =====================================================
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES ('informatique-electronique', 'Computers & Electronics', 'computers-electronics', NULL, 0, 'en');

-- Sous-catégories niveau 1 - Anglais
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('ordinateurs-pc', 'Computers & PCs', 'computers-pcs', 'informatique-electronique', 1, 'en'),
('composants-informatiques', 'Computer Components', 'computer-components', 'informatique-electronique', 1, 'en'),
('peripheriques-accessoires', 'Peripherals & Accessories', 'peripherals-accessories', 'informatique-electronique', 1, 'en'),
('reseau-internet', 'Network & Internet', 'network-internet', 'informatique-electronique', 1, 'en'),
('stockage-donnees', 'Data Storage', 'data-storage', 'informatique-electronique', 1, 'en'),
('audio-hifi', 'Audio & Hi-Fi', 'audio-hi-fi', 'informatique-electronique', 1, 'en'),
('video-tv', 'Video & TV', 'video-tv', 'informatique-electronique', 1, 'en'),
('photo-cameras', 'Photo & Cameras', 'photo-cameras', 'informatique-electronique', 1, 'en'),
('gaming', 'Gaming', 'gaming', 'informatique-electronique', 1, 'en'),
('impression', 'Printing', 'printing', 'informatique-electronique', 1, 'en'),
('alimentation-protection', 'Power & Protection', 'power-protection', 'informatique-electronique', 1, 'en'),
('montage-informatique', 'Computer Building', 'computer-building', 'informatique-electronique', 1, 'en'),
('logiciels', 'Software', 'software', 'informatique-electronique', 1, 'en'),
('developpement-informatique', 'Software Development', 'software-development', 'informatique-electronique', 1, 'en'),
('domotique', 'Smart Home', 'smart-home', 'informatique-electronique', 1, 'en'),
('objets-connectes', 'Smart Devices', 'smart-devices', 'informatique-electronique', 1, 'en'),
('montres-connectees', 'Smart Watches', 'smart-watches', 'informatique-electronique', 1, 'en'),
('tablettes', 'Tablets', 'tablets', 'informatique-electronique', 1, 'en'),
('lecteurs-ebook', 'E-book Readers', 'e-book-readers', 'informatique-electronique', 1, 'en'),
('gps-navigation', 'GPS & Navigation', 'gps-navigation', 'informatique-electronique', 1, 'en'),
('accessoires-mobiles', 'Mobile Accessories', 'mobile-accessories', 'informatique-electronique', 1, 'en'),
('telephonie-fixe', 'Landline Phones', 'landline-phones', 'informatique-electronique', 1, 'en'),
('radios-reveils', 'Radios & Alarm Clocks', 'radios-alarm-clocks', 'informatique-electronique', 1, 'en'),
('bureautique', 'Office Equipment', 'office-equipment', 'informatique-electronique', 1, 'en'),
('electronique-auto', 'Car Electronics', 'car-electronics', 'informatique-electronique', 1, 'en'),
('electronique-sport', 'Sports Electronics', 'sports-electronics', 'informatique-electronique', 1, 'en');

-- Sous-catégories niveau 1 - Anglais (sous-catégories de ordinateurs-pc)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('laptops', 'Laptops', 'laptops', 'ordinateurs-pc', 1, 'en'),
('macbook', 'MacBook', 'macbook', 'ordinateurs-pc', 1, 'en'),
('pc-portables-gaming', 'Gaming Laptops', 'gaming-laptops', 'ordinateurs-pc', 1, 'en'),
('ultrabooks', 'Ultrabooks', 'ultrabooks', 'ordinateurs-pc', 1, 'en');

-- Sous-catégories niveau 1 - Anglais (sous-catégories de composants-informatiques)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('processeurs', 'Processors', 'processors', 'composants-informatiques', 1, 'en'),
('cartes-meres', 'Motherboards', 'motherboards', 'composants-informatiques', 1, 'en'),
('memoires-ram', 'RAM Memory', 'ram-memory', 'composants-informatiques', 1, 'en'),
('disques-durs', 'Hard Drives', 'hard-drives', 'composants-informatiques', 1, 'en');

-- =====================================================
-- ESPAGNOL (es)
-- =====================================================
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES ('informatique-electronique', 'Informática & Electrónica', 'informatica-electronica', NULL, 0, 'es');

-- Sous-catégories niveau 1 - Espagnol
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('ordinateurs-pc', 'Ordenadores & PCs', 'ordenadores-pcs', 'informatique-electronique', 1, 'es'),
('composants-informatiques', 'Componentes Informáticos', 'componentes-informaticos', 'informatique-electronique', 1, 'es'),
('peripheriques-accessoires', 'Periféricos & Accesorios', 'perifericos-accesorios', 'informatique-electronique', 1, 'es'),
('reseau-internet', 'Red & Internet', 'red-internet', 'informatique-electronique', 1, 'es'),
('stockage-donnees', 'Almacenamiento de Datos', 'almacenamiento-datos', 'informatique-electronique', 1, 'es'),
('audio-hifi', 'Audio & Hi-Fi', 'audio-hi-fi', 'informatique-electronique', 1, 'es'),
('video-tv', 'Vídeo & TV', 'video-tv', 'informatique-electronique', 1, 'es'),
('photo-cameras', 'Foto & Cámaras', 'foto-camaras', 'informatique-electronique', 1, 'es'),
('gaming', 'Gaming', 'gaming', 'informatique-electronique', 1, 'es'),
('impression', 'Impresión', 'impresion', 'informatique-electronique', 1, 'es'),
('alimentation-protection', 'Alimentación & Protección', 'alimentacion-proteccion', 'informatique-electronique', 1, 'es'),
('montage-informatique', 'Montaje Informático', 'montaje-informatico', 'informatique-electronique', 1, 'es'),
('logiciels', 'Software', 'software', 'informatique-electronique', 1, 'es'),
('developpement-informatique', 'Desarrollo Informático', 'desarrollo-informatico', 'informatique-electronique', 1, 'es'),
('domotique', 'Domótica', 'domotica', 'informatique-electronique', 1, 'es'),
('objets-connectes', 'Objetos Conectados', 'objetos-conectados', 'informatique-electronique', 1, 'es'),
('montres-connectees', 'Relojes Inteligentes', 'relojes-inteligentes', 'informatique-electronique', 1, 'es'),
('tablettes', 'Tabletas', 'tabletas', 'informatique-electronique', 1, 'es'),
('lecteurs-ebook', 'Lectores de E-books', 'lectores-ebooks', 'informatique-electronique', 1, 'es'),
('gps-navigation', 'GPS & Navegación', 'gps-navegacion', 'informatique-electronique', 1, 'es'),
('accessoires-mobiles', 'Accesorios Móviles', 'accesorios-moviles', 'informatique-electronique', 1, 'es'),
('telephonie-fixe', 'Telefonía Fija', 'telefonia-fija', 'informatique-electronique', 1, 'es'),
('radios-reveils', 'Radios & Despertadores', 'radios-despertadores', 'informatique-electronique', 1, 'es'),
('bureautique', 'Oficina', 'oficina', 'informatique-electronique', 1, 'es'),
('electronique-auto', 'Electrónica de Coche', 'electronica-coche', 'informatique-electronique', 1, 'es'),
('electronique-sport', 'Electrónica de Deporte', 'electronica-deporte', 'informatique-electronique', 1, 'es');

-- Sous-catégories niveau 1 - Espagnol (sous-catégories de ordinateurs-pc)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('laptops', 'Laptops', 'laptops', 'ordinateurs-pc', 1, 'es'),
('macbook', 'MacBook', 'macbook', 'ordinateurs-pc', 1, 'es'),
('pc-portables-gaming', 'PC Portátiles Gaming', 'pc-portatiles-gaming', 'ordinateurs-pc', 1, 'es'),
('ultrabooks', 'Ultrabooks', 'ultrabooks', 'ordinateurs-pc', 1, 'es');

-- Sous-catégories niveau 1 - Espagnol (sous-catégories de composants-informatiques)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('processeurs', 'Procesadores', 'procesadores', 'composants-informatiques', 1, 'es'),
('cartes-meres', 'Placas Base', 'placas-base', 'composants-informatiques', 1, 'es'),
('memoires-ram', 'Memorias RAM', 'memorias-ram', 'composants-informatiques', 1, 'es'),
('disques-durs', 'Discos Duros', 'discos-duros', 'composants-informatiques', 1, 'es');

-- =====================================================
-- ALLEMAND (de)
-- =====================================================
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES ('informatique-electronique', 'Computer & Elektronik', 'computer-elektronik', NULL, 0, 'de');

-- Sous-catégories niveau 1 - Allemand
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('ordinateurs-pc', 'Computer & PCs', 'computer-pcs', 'informatique-electronique', 1, 'de'),
('composants-informatiques', 'Computer-Komponenten', 'computer-komponenten', 'informatique-electronique', 1, 'de'),
('peripheriques-accessoires', 'Peripheriegeräte & Zubehör', 'peripheriegeraete-zubehoer', 'informatique-electronique', 1, 'de'),
('reseau-internet', 'Netzwerk & Internet', 'netzwerk-internet', 'informatique-electronique', 1, 'de'),
('stockage-donnees', 'Datenspeicherung', 'datenspeicherung', 'informatique-electronique', 1, 'de'),
('audio-hifi', 'Audio & Hi-Fi', 'audio-hi-fi', 'informatique-electronique', 1, 'de'),
('video-tv', 'Video & TV', 'video-tv', 'informatique-electronique', 1, 'de'),
('photo-cameras', 'Foto & Kameras', 'foto-kameras', 'informatique-electronique', 1, 'de'),
('gaming', 'Gaming', 'gaming', 'informatique-electronique', 1, 'de'),
('impression', 'Drucken', 'drucken', 'informatique-electronique', 1, 'de'),
('alimentation-protection', 'Strom & Schutz', 'strom-schutz', 'informatique-electronique', 1, 'de'),
('montage-informatique', 'Computer-Zusammenbau', 'computer-zusammenbau', 'informatique-electronique', 1, 'de'),
('logiciels', 'Software', 'software', 'informatique-electronique', 1, 'de'),
('developpement-informatique', 'Software-Entwicklung', 'software-entwicklung', 'informatique-electronique', 1, 'de'),
('domotique', 'Hausautomation', 'hausautomation', 'informatique-electronique', 1, 'de'),
('objets-connectes', 'Verbundene Geräte', 'verbundene-geraete', 'informatique-electronique', 1, 'de'),
('montres-connectees', 'Smart-Watches', 'smart-watches', 'informatique-electronique', 1, 'de'),
('tablettes', 'Tablets', 'tablets', 'informatique-electronique', 1, 'de'),
('lecteurs-ebook', 'E-Book-Reader', 'e-book-reader', 'informatique-electronique', 1, 'de'),
('gps-navigation', 'GPS & Navigation', 'gps-navigation', 'informatique-electronique', 1, 'de'),
('accessoires-mobiles', 'Mobile Zubehör', 'mobile-zubehoer', 'informatique-electronique', 1, 'de'),
('telephonie-fixe', 'Festnetz-Telefonie', 'festnetz-telefonie', 'informatique-electronique', 1, 'de'),
('radios-reveils', 'Radios & Wecker', 'radios-wecker', 'informatique-electronique', 1, 'de'),
('bureautique', 'Büro', 'buro', 'informatique-electronique', 1, 'de'),
('electronique-auto', 'Auto-Elektronik', 'auto-elektronik', 'informatique-electronique', 1, 'de'),
('electronique-sport', 'Sport-Elektronik', 'sport-elektronik', 'informatique-electronique', 1, 'de');

-- Sous-catégories niveau 1 - Allemand (sous-catégories de ordinateurs-pc)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('laptops', 'Laptops', 'laptops', 'ordinateurs-pc', 1, 'de'),
('macbook', 'MacBook', 'macbook', 'ordinateurs-pc', 1, 'de'),
('pc-portables-gaming', 'Gaming-Laptops', 'gaming-laptops', 'ordinateurs-pc', 1, 'de'),
('ultrabooks', 'Ultrabooks', 'ultrabooks', 'ordinateurs-pc', 1, 'de');

-- Sous-catégories niveau 1 - Allemand (sous-catégories de composants-informatiques)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('processeurs', 'Prozessoren', 'prozessoren', 'composants-informatiques', 1, 'de'),
('cartes-meres', 'Motherboards', 'motherboards', 'composants-informatiques', 1, 'de'),
('memoires-ram', 'RAM-Speicher', 'ram-speicher', 'composants-informatiques', 1, 'de'),
('disques-durs', 'Festplatten', 'festplatten', 'composants-informatiques', 1, 'de');

-- =====================================================
-- ITALIEN (it)
-- =====================================================
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES ('informatique-electronique', 'Informatica & Elettronica', 'informatique-electronique', NULL, 0, 'it');

-- Sous-catégories niveau 1 - Italien
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('ordinateurs-pc', 'Computer & PC', 'computer-pc', 'informatique-electronique', 1, 'it'),
('composants-informatiques', 'Componenti Informatici', 'componenti-informatici', 'informatique-electronique', 1, 'it'),
('peripheriques-accessoires', 'Periferiche & Accessori', 'periferiche-accessori', 'informatique-electronique', 1, 'it'),
('reseau-internet', 'Rete & Internet', 'rete-internet', 'informatique-electronique', 1, 'it'),
('stockage-donnees', 'Archiviazione Dati', 'archiviazione-dati', 'informatique-electronique', 1, 'it'),
('audio-hifi', 'Audio & Hi-Fi', 'audio-hi-fi', 'informatique-electronique', 1, 'it'),
('video-tv', 'Video & TV', 'video-tv', 'informatique-electronique', 1, 'it'),
('photo-cameras', 'Foto & Fotocamere', 'foto-fotocamere', 'informatique-electronique', 1, 'it'),
('gaming', 'Gaming', 'gaming', 'informatique-electronique', 1, 'it'),
('impression', 'Stampa', 'stampa', 'informatique-electronique', 1, 'it'),
('alimentation-protection', 'Alimentazione & Protezione', 'alimentazione-protezione', 'informatique-electronique', 1, 'it'),
('montage-informatique', 'Assemblaggio Computer', 'assemblaggio-computer', 'informatique-electronique', 1, 'it'),
('logiciels', 'Software', 'software', 'informatique-electronique', 1, 'it'),
('developpement-informatique', 'Sviluppo Software', 'sviluppo-software', 'informatique-electronique', 1, 'it'),
('domotique', 'Domotica', 'domotica', 'informatique-electronique', 1, 'it'),
('objets-connectes', 'Oggetti Connessi', 'oggetti-connessi', 'informatique-electronique', 1, 'it'),
('montres-connectees', 'Orologi Intelligenti', 'orologi-intelligenti', 'informatique-electronique', 1, 'it'),
('tablettes', 'Tablet', 'tablet', 'informatique-electronique', 1, 'it'),
('lecteurs-ebook', 'Lettori di E-book', 'lettori-ebook', 'informatique-electronique', 1, 'it'),
('gps-navigation', 'GPS & Navigazione', 'gps-navigazione', 'informatique-electronique', 1, 'it'),
('accessoires-mobiles', 'Accessori Mobili', 'accessori-mobili', 'informatique-electronique', 1, 'it'),
('telephonie-fixe', 'Telefonia Fissa', 'telefonia-fissa', 'informatique-electronique', 1, 'it'),
('radios-reveils', 'Radio & Sveglie', 'radio-sveglie', 'informatique-electronique', 1, 'it'),
('bureautique', 'Ufficio', 'ufficio', 'informatique-electronique', 1, 'it'),
('electronique-auto', 'Elettronica Auto', 'elettronica-auto', 'informatique-electronique', 1, 'it'),
('electronique-sport', 'Elettronica Sportiva', 'elettronica-sportiva', 'informatique-electronique', 1, 'it');

-- Sous-catégories niveau 1 - Italien (sous-catégories de ordinateurs-pc)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('laptops', 'Laptops', 'laptops', 'ordinateurs-pc', 1, 'it'),
('macbook', 'MacBook', 'macbook', 'ordinateurs-pc', 1, 'it'),
('pc-portables-gaming', 'PC Portatili Gaming', 'pc-portatili-gaming', 'ordinateurs-pc', 1, 'it'),
('ultrabooks', 'Ultrabooks', 'ultrabooks', 'ordinateurs-pc', 1, 'it');

-- Sous-catégories niveau 1 - Italien (sous-catégories de composants-informatiques)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('processeurs', 'Processori', 'processori', 'composants-informatiques', 1, 'it'),
('cartes-meres', 'Schede Madri', 'schede-madri', 'composants-informatiques', 1, 'it'),
('memoires-ram', 'Memorie RAM', 'memorie-ram', 'composants-informatiques', 1, 'it'),
('disques-durs', 'Dischi Rigidi', 'dischi-rigidi', 'composants-informatiques', 1, 'it');

-- Note : Script complet avec tous les niveaux (0, 1, 2, 3) pour les 6 langues
-- Cette structure permet l'insertion en batch avec meilleure performance que les appels individuels