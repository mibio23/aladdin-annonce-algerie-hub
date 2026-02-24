-- NIVEAU 0 : Image, Son & Équipement Musique (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('image-son-equipement-musique', 'Image, Son & Équipement Musique', 'image-son-equipement-musique', NULL, 0, 'fr');

-- NIVEAU 1 : Télévisions (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('televisions', 'Télévisions', 'televisions', 'image-son-equipement-musique', 1, 'fr');

-- NIVEAU 2 : Téléviseurs (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('televiseurs', 'Téléviseurs', 'televiseurs', 'televisions', 2, 'fr');

-- NIVEAU 3 : TV LED, TV OLED, TV QLED, etc. (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('tv-led', 'TV LED', 'tv-led', 'televiseurs', 3, 'fr'),
('tv-oled', 'TV OLED', 'tv-oled', 'televiseurs', 3, 'fr'),
('tv-qled', 'TV QLED', 'tv-qled', 'televiseurs', 3, 'fr'),
('tv-4k', 'TV 4K', 'tv-4k', 'televiseurs', 3, 'fr'),
('tv-8k', 'TV 8K', 'tv-8k', 'televiseurs', 3, 'fr'),
('tv-smart', 'TV Smart', 'tv-smart', 'televiseurs', 3, 'fr'),
('tv-curves', 'TV Curves', 'tv-curves', 'televiseurs', 3, 'fr'),
('tv-taille-petite', 'TV Petite taille', 'tv-taille-petite', 'televiseurs', 3, 'fr'),
('tv-taille-moyenne', 'TV Taille moyenne', 'tv-taille-moyenne', 'televiseurs', 3, 'fr'),
('tv-taille-grande', 'TV Grande taille', 'tv-taille-grande', 'televiseurs', 3, 'fr');

-- NIVEAU 2 : Accessoires TV (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('accessoires-tv', 'Accessoires TV', 'accessoires-tv', 'televisions', 2, 'fr');

-- NIVEAU 3 : Supports TV, Antennes TV, Câbles HDMI, etc. (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('supports-tv', 'Supports TV', 'supports-tv', 'accessoires-tv', 3, 'fr'),
('antennes-tv', 'Antennes TV', 'antennes-tv', 'accessoires-tv', 3, 'fr'),
('cables-hdmi', 'Câbles HDMI', 'cables-hdmi', 'accessoires-tv', 3, 'fr'),
('decodeurs-tnt', 'Décodeurs TNT', 'decodeurs-tnt', 'accessoires-tv', 3, 'fr'),
('box-android-tv', 'Box Android TV', 'box-android-tv', 'accessoires-tv', 3, 'fr'),
('barres-son', 'Barres de son', 'barres-son', 'accessoires-tv', 3, 'fr'),
('home-cinema', 'Home cinéma', 'home-cinema', 'accessoires-tv', 3, 'fr'),
('video-projecteurs', 'Vidéo-projecteurs', 'video-projecteurs', 'accessoires-tv', 3, 'fr');

-- NIVEAU 1 : Audio Hi-Fi (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('audio-hifi', 'Audio Hi-Fi', 'audio-hifi', 'image-son-equipement-musique', 1, 'fr');

-- NIVEAU 2 : Enceintes (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('enceintes', 'Enceintes', 'enceintes', 'audio-hifi', 2, 'fr');

-- NIVEAU 3 : Enceintes Bluetooth, Enceintes Wi-Fi, etc. (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('enceintes-bluetooth', 'Enceintes Bluetooth', 'enceintes-bluetooth', 'enceintes', 3, 'fr'),
('enceintes-wifi', 'Enceintes Wi-Fi', 'enceintes-wifi', 'enceintes', 3, 'fr'),
('enceintes-filaires', 'Enceintes filaires', 'enceintes-filaires', 'enceintes', 3, 'fr'),
('enceintes-sans-fil', 'Enceintes sans fil', 'enceintes-sans-fil', 'enceintes', 3, 'fr'),
('enceintes-portables', 'Enceintes portables', 'enceintes-portables', 'enceintes', 3, 'fr'),
('enceintes-enceintes', 'Enceintes d\'enceintes', 'enceintes-enceintes', 'enceintes', 3, 'fr'),
('enceintes-bibliotheque', 'Enceintes bibliothèque', 'enceintes-bibliotheque', 'enceintes', 3, 'fr'),
('enceintes-colonne', 'Enceintes colonne', 'enceintes-colonne', 'enceintes', 3, 'fr'),
('enceintes-enceintes-sur-pied', 'Enceintes sur pied', 'enceintes-enceintes-sur-pied', 'enceintes', 3, 'fr'),
('subwoofers', 'Subwoofers', 'subwoofers', 'enceintes', 3, 'fr');

-- NIVEAU 2 : Casques audio (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('casques-audio', 'Casques audio', 'casques-audio', 'audio-hifi', 2, 'fr');

-- NIVEAU 3 : Casques Bluetooth, Casques filaires, etc. (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('casques-bluetooth', 'Casques Bluetooth', 'casques-bluetooth', 'casques-audio', 3, 'fr'),
('casques-filaires', 'Casques filaires', 'casques-filaires', 'casques-audio', 3, 'fr'),
('casques-sans-fil', 'Casques sans fil', 'casques-sans-fil', 'casques-audio', 3, 'fr'),
('casques-reduction-bruit', 'Casques réduction de bruit', 'casques-reduction-bruit', 'casques-audio', 3, 'fr'),
('casques-audio-hifi', 'Casques audio Hi-Fi', 'casques-audio-hifi', 'casques-audio', 3, 'fr'),
('casques-gaming', 'Casques gaming', 'casques-gaming', 'casques-audio', 3, 'fr'),
('casques-sport', 'Casques sport', 'casques-sport', 'casques-audio', 3, 'fr'),
('casques-audio-pour-enfants', 'Casques audio pour enfants', 'casques-audio-pour-enfants', 'casques-audio', 3, 'fr');

-- NIVEAU 2 : Platines & Lecteurs (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('platines-lecteurs', 'Platines & Lecteurs', 'platines-lecteurs', 'audio-hifi', 2, 'fr');

-- NIVEAU 3 : Platines vinyle, Lecteurs CD, etc. (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('platines-vinyle', 'Platines vinyle', 'platines-vinyle', 'platines-lecteurs', 3, 'fr'),
('lecteurs-cd', 'Lecteurs CD', 'lecteurs-cd', 'platines-lecteurs', 3, 'fr'),
('lecteurs-dvd', 'Lecteurs DVD', 'lecteurs-dvd', 'platines-lecteurs', 3, 'fr'),
('lecteurs-blu-ray', 'Lecteurs Blu-ray', 'lecteurs-blu-ray', 'platines-lecteurs', 3, 'fr'),
('lecteurs-reseau', 'Lecteurs réseau', 'lecteurs-reseau', 'platines-lecteurs', 3, 'fr'),
('lecteurs-usb', 'Lecteurs USB', 'lecteurs-usb', 'platines-lecteurs', 3, 'fr'),
('tuners-radio', 'Tuners radio', 'tuners-radio', 'platines-lecteurs', 3, 'fr'),
('lecteurs-multimedias', 'Lecteurs multimédias', 'lecteurs-multimedias', 'platines-lecteurs', 3, 'fr');

-- NIVEAU 2 : Amplificateurs & Récepteurs (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('amplificateurs-recepteurs', 'Amplificateurs & Récepteurs', 'amplificateurs-recepteurs', 'audio-hifi', 2, 'fr');

-- NIVEAU 3 : Amplificateurs stéréo, Récepteurs AV, etc. (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('amplificateurs-stereo', 'Amplificateurs stéréo', 'amplificateurs-stereo', 'amplificateurs-recepteurs', 3, 'fr'),
('recepteurs-av', 'Récepteurs AV', 'recepteurs-av', 'amplificateurs-recepteurs', 3, 'fr'),
('amplificateurs-home-cinema', 'Amplificateurs home cinéma', 'amplificateurs-home-cinema', 'amplificateurs-recepteurs', 3, 'fr'),
('amplificateurs-integrés', 'Amplificateurs intégrés', 'amplificateurs-integrés', 'amplificateurs-recepteurs', 3, 'fr'),
('amplificateurs-de-puissance', 'Amplificateurs de puissance', 'amplificateurs-de-puissance', 'amplificateurs-recepteurs', 3, 'fr'),
('pre-amplificateurs', 'Pré-amplificateurs', 'pre-amplificateurs', 'amplificateurs-recepteurs', 3, 'fr'),
('recepteurs-radio', 'Récepteurs radio', 'recepteurs-radio', 'amplificateurs-recepteurs', 3, 'fr'),
('tuners', 'Tuners', 'tuners', 'amplificateurs-recepteurs', 3, 'fr');

-- NIVEAU 0 : Image, Son & Équipement Musique (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('image-son-equipement-musique', 'الصورة والصوت وموسيقى المعدات', 'image-son-equipement-musique', NULL, 0, 'ar');

-- NIVEAU 1 : Télévisions (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('televisions', 'التلفزيونات', 'televisions', 'image-son-equipement-musique', 1, 'ar');

-- NIVEAU 2 : Téléviseurs (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('televiseurs', 'أجهزة التلفاز', 'televiseurs', 'televisions', 2, 'ar');

-- NIVEAU 3 : TV LED, TV OLED, TV QLED, etc. (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('tv-led', 'تلفزيون LED', 'tv-led', 'televiseurs', 3, 'ar'),
('tv-oled', 'تلفزيون OLED', 'tv-oled', 'televiseurs', 3, 'ar'),
('tv-qled', 'تلفزيون QLED', 'tv-qled', 'televiseurs', 3, 'ar'),
('tv-4k', 'تلفزيون 4K', 'tv-4k', 'televiseurs', 3, 'ar'),
('tv-8k', 'تلفزيون 8K', 'tv-8k', 'televiseurs', 3, 'ar'),
('tv-smart', 'تلفزيون ذكي', 'tv-smart', 'televiseurs', 3, 'ar'),
('tv-curves', 'تلفزيون منحني', 'tv-curves', 'televiseurs', 3, 'ar'),
('tv-taille-petite', 'تلفزيون صغير الحجم', 'tv-taille-petite', 'televiseurs', 3, 'ar'),
('tv-taille-moyenne', 'تلفزيون متوسط الحجم', 'tv-taille-moyenne', 'televiseurs', 3, 'ar'),
('tv-taille-grande', 'تلفزيون كبير الحجم', 'tv-taille-grande', 'televiseurs', 3, 'ar');

-- NIVEAU 2 : Accessoires TV (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('accessoires-tv', 'ملحقات التلفزيون', 'accessoires-tv', 'televisions', 2, 'ar');

-- NIVEAU 3 : Supports TV, Antennes TV, Câbles HDMI, etc. (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('supports-tv', 'دعامات التلفزيون', 'supports-tv', 'accessoires-tv', 3, 'ar'),
('antennes-tv', 'هوائيات التلفزيون', 'antennes-tv', 'accessoires-tv', 3, 'ar'),
('cables-hdmi', 'كابلات HDMI', 'cables-hdmi', 'accessoires-tv', 3, 'ar'),
('decodeurs-tnt', 'مشفرات TNT', 'decodeurs-tnt', 'accessoires-tv', 3, 'ar'),
('box-android-tv', 'صناديق Android TV', 'box-android-tv', 'accessoires-tv', 3, 'ar'),
('barres-son', 'قضبان الصوت', 'barres-son', 'accessoires-tv', 3, 'ar'),
('home-cinema', 'سينما منزلية', 'home-cinema', 'accessoires-tv', 3, 'ar'),
('video-projecteurs', 'جهاز عرض فيديو', 'video-projecteurs', 'accessoires-tv', 3, 'ar');

-- NIVEAU 1 : Audio Hi-Fi (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('audio-hifi', 'صوت هاي فاي', 'audio-hifi', 'image-son-equipement-musique', 1, 'ar');

-- NIVEAU 2 : Enceintes (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('enceintes', 'مكبرات الصوت', 'enceintes', 'audio-hifi', 2, 'ar');

-- NIVEAU 3 : Enceintes Bluetooth, Enceintes Wi-Fi, etc. (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('enceintes-bluetooth', 'مكبرات صوت بلوتوث', 'enceintes-bluetooth', 'enceintes', 3, 'ar'),
('enceintes-wifi', 'مكبرات صوت واي فاي', 'enceintes-wifi', 'enceintes', 3, 'ar'),
('enceintes-filaires', 'مكبرات صوت سلكية', 'enceintes-filaires', 'enceintes', 3, 'ar'),
('enceintes-sans-fil', 'مكبرات صوت لاسلكية', 'enceintes-sans-fil', 'enceintes', 3, 'ar'),
('enceintes-portables', 'مكبرات صوت محمولة', 'enceintes-portables', 'enceintes', 3, 'ar'),
('enceintes-enceintes', 'مكبرات مكبرات الصوت', 'enceintes-enceintes', 'enceintes', 3, 'ar'),
('enceintes-bibliotheque', 'مكبرات صوت مكتبة', 'enceintes-bibliotheque', 'enceintes', 3, 'ar'),
('enceintes-colonne', 'مكبرات صوت عمودية', 'enceintes-colonne', 'enceintes', 3, 'ar'),
('enceintes-enceintes-sur-pied', 'مكبرات صوت على قاعدة', 'enceintes-enceintes-sur-pied', 'enceintes', 3, 'ar'),
('subwoofers', 'مكبرات صوت منخفضة', 'subwoofers', 'enceintes', 3, 'ar');

-- NIVEAU 2 : Casques audio (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('casques-audio', 'سماعات رأس', 'casques-audio', 'audio-hifi', 2, 'ar');

-- NIVEAU 3 : Casques Bluetooth, Casques filaires, etc. (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('casques-bluetooth', 'سماعات رأس بلوتوث', 'casques-bluetooth', 'casques-audio', 3, 'ar'),
('casques-filaires', 'سماعات رأس سلكية', 'casques-filaires', 'casques-audio', 3, 'ar'),
('casques-sans-fil', 'سماعات رأس لاسلكية', 'casques-sans-fil', 'casques-audio', 3, 'ar'),
('casques-reduction-bruit', 'سماعات تقليل الضوضاء', 'casques-reduction-bruit', 'casques-audio', 3, 'ar'),
('casques-audio-hifi', 'سماعات رأس صوت هاي فاي', 'casques-audio-hifi', 'casques-audio', 3, 'ar'),
('casques-gaming', 'سماعات رأس ألعاب', 'casques-gaming', 'casques-audio', 3, 'ar'),
('casques-sport', 'سماعات رأس رياضية', 'casques-sport', 'casques-audio', 3, 'ar'),
('casques-audio-pour-enfants', 'سماعات رأس أطفال', 'casques-audio-pour-enfants', 'casques-audio', 3, 'ar');

-- NIVEAU 2 : Platines & Lecteurs (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('platines-lecteurs', 'مشغلات ومشغلات', 'platines-lecteurs', 'audio-hifi', 2, 'ar');

-- NIVEAU 3 : Platines vinyle, Lecteurs CD, etc. (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('platines-vinyle', 'مشغلات فينيل', 'platines-vinyle', 'platines-lecteurs', 3, 'ar'),
('lecteurs-cd', 'مشغلات CD', 'lecteurs-cd', 'platines-lecteurs', 3, 'ar'),
('lecteurs-dvd', 'مشغلات DVD', 'lecteurs-dvd', 'platines-lecteurs', 3, 'ar'),
('lecteurs-blu-ray', 'مشغلات Blu-ray', 'lecteurs-blu-ray', 'platines-lecteurs', 3, 'ar'),
('lecteurs-reseau', 'مشغلات شبكة', 'lecteurs-reseau', 'platines-lecteurs', 3, 'ar'),
('lecteurs-usb', 'مشغلات USB', 'lecteurs-usb', 'platines-lecteurs', 3, 'ar'),
('tuners-radio', 'مضبوطات الراديو', 'tuners-radio', 'platines-lecteurs', 3, 'ar'),
('lecteurs-multimedias', 'مشغلات الوسائط المتعددة', 'lecteurs-multimedias', 'platines-lecteurs', 3, 'ar');

-- NIVEAU 2 : Amplificateurs & Récepteurs (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('amplificateurs-recepteurs', 'مضخمات ومستقبلات', 'amplificateurs-recepteurs', 'audio-hifi', 2, 'ar');

-- NIVEAU 3 : Amplificateurs stéréo, Récepteurs AV, etc. (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('amplificateurs-stereo', 'مضخمات ستيريو', 'amplificateurs-stereo', 'amplificateurs-recepteurs', 3, 'ar'),
('recepteurs-av', 'مستقبلات AV', 'recepteurs-av', 'amplificateurs-recepteurs', 3, 'ar'),
('amplificateurs-home-cinema', 'مضخمات سينما منزلية', 'amplificateurs-home-cinema', 'amplificateurs-recepteurs', 3, 'ar'),
('amplificateurs-integrés', 'مضخمات متكاملة', 'amplificateurs-integrés', 'amplificateurs-recepteurs', 3, 'ar'),
('amplificateurs-de-puissance', 'مضخمات قوة', 'amplificateurs-de-puissance', 'amplificateurs-recepteurs', 3, 'ar'),
('pre-amplificateurs', 'مضخمات مسبقة', 'pre-amplificateurs', 'amplificateurs-recepteurs', 3, 'ar'),
('recepteurs-radio', 'مستقبلات راديو', 'recepteurs-radio', 'amplificateurs-recepteurs', 3, 'ar'),
('tuners', 'مضبوطات', 'tuners', 'amplificateurs-recepteurs', 3, 'ar');

-- NIVEAU 0 : Image, Son & Équipement Musique (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('image-son-equipement-musique', 'Imagen, Sonido y Equipamiento Musical', 'image-son-equipement-musique', NULL, 0, 'es');

-- NIVEAU 1 : Télévisions (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('televisions', 'Televisiones', 'televisions', 'image-son-equipement-musique', 1, 'es');

-- NIVEAU 2 : Téléviseurs (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('televiseurs', 'Televisores', 'televiseurs', 'televisions', 2, 'es');

-- NIVEAU 3 : TV LED, TV OLED, TV QLED, etc. (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('tv-led', 'TV LED', 'tv-led', 'televiseurs', 3, 'es'),
('tv-oled', 'TV OLED', 'tv-oled', 'televiseurs', 3, 'es'),
('tv-qled', 'TV QLED', 'tv-qled', 'televiseurs', 3, 'es'),
('tv-4k', 'TV 4K', 'tv-4k', 'televiseurs', 3, 'es'),
('tv-8k', 'TV 8K', 'tv-8k', 'televiseurs', 3, 'es'),
('tv-smart', 'TV Smart', 'tv-smart', 'televiseurs', 3, 'es'),
('tv-curves', 'TV Curvas', 'tv-curves', 'televiseurs', 3, 'es'),
('tv-taille-petite', 'TV Tamaño pequeño', 'tv-taille-petite', 'televiseurs', 3, 'es'),
('tv-taille-moyenne', 'TV Tamaño medio', 'tv-taille-moyenne', 'televiseurs', 3, 'es'),
('tv-taille-grande', 'TV Tamaño grande', 'tv-taille-grande', 'televiseurs', 3, 'es');

-- NIVEAU 2 : Accessoires TV (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('accessoires-tv', 'Accesorios TV', 'accessoires-tv', 'televisions', 2, 'es');

-- NIVEAU 3 : Supports TV, Antennes TV, Câbles HDMI, etc. (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('supports-tv', 'Soportes TV', 'supports-tv', 'accessoires-tv', 3, 'es'),
('antennes-tv', 'Antenas TV', 'antennes-tv', 'accessoires-tv', 3, 'es'),
('cables-hdmi', 'Cables HDMI', 'cables-hdmi', 'accessoires-tv', 3, 'es'),
('decodeurs-tnt', 'Decodificadores TNT', 'decodeurs-tnt', 'accessoires-tv', 3, 'es'),
('box-android-tv', 'Box Android TV', 'box-android-tv', 'accessoires-tv', 3, 'es'),
('barres-son', 'Barras de sonido', 'barres-son', 'accessoires-tv', 3, 'es'),
('home-cinema', 'Cine en casa', 'home-cinema', 'accessoires-tv', 3, 'es'),
('video-projecteurs', 'Videoproyectores', 'video-projecteurs', 'accessoires-tv', 3, 'es');

-- NIVEAU 1 : Audio Hi-Fi (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('audio-hifi', 'Audio Hi-Fi', 'audio-hifi', 'image-son-equipement-musique', 1, 'es');

-- NIVEAU 2 : Enceintes (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('enceintes', 'Altavoces', 'enceintes', 'audio-hifi', 2, 'es');

-- NIVEAU 3 : Enceintes Bluetooth, Enceintes Wi-Fi, etc. (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('enceintes-bluetooth', 'Altavoces Bluetooth', 'enceintes-bluetooth', 'enceintes', 3, 'es'),
('enceintes-wifi', 'Altavoces Wi-Fi', 'enceintes-wifi', 'enceintes', 3, 'es'),
('enceintes-filaires', 'Altavoces cableados', 'enceintes-filaires', 'enceintes', 3, 'es'),
('enceintes-sans-fil', 'Altavoces inalámbricos', 'enceintes-sans-fil', 'enceintes', 3, 'es'),
('enceintes-portables', 'Altavoces portátiles', 'enceintes-portables', 'enceintes', 3, 'es'),
('enceintes-enceintes', 'Altavoces de altavoces', 'enceintes-enceintes', 'enceintes', 3, 'es'),
('enceintes-bibliotheque', 'Altavoces de estantería', 'enceintes-bibliotheque', 'enceintes', 3, 'es'),
('enceintes-colonne', 'Altavoces de columna', 'enceintes-colonne', 'enceintes', 3, 'es'),
('enceintes-enceintes-sur-pied', 'Altavoces de pie', 'enceintes-enceintes-sur-pied', 'enceintes', 3, 'es'),
('subwoofers', 'Subwoofers', 'subwoofers', 'enceintes', 3, 'es');

-- NIVEAU 2 : Casques audio (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('casques-audio', 'Auriculares', 'casques-audio', 'audio-hifi', 2, 'es');

-- NIVEAU 3 : Casques Bluetooth, Casques filaires, etc. (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('casques-bluetooth', 'Auriculares Bluetooth', 'casques-bluetooth', 'casques-audio', 3, 'es'),
('casques-filaires', 'Auriculares cableados', 'casques-filaires', 'casques-audio', 3, 'es'),
('casques-sans-fil', 'Auriculares inalámbricos', 'casques-sans-fil', 'casques-audio', 3, 'es'),
('casques-reduction-bruit', 'Auriculares reducción de ruido', 'casques-reduction-bruit', 'casques-audio', 3, 'es'),
('casques-audio-hifi', 'Auriculares audio Hi-Fi', 'casques-audio-hifi', 'casques-audio', 3, 'es'),
('casques-gaming', 'Auriculares gaming', 'casques-gaming', 'casques-audio', 3, 'es'),
('casques-sport', 'Auriculares deportivos', 'casques-sport', 'casques-audio', 3, 'es'),
('casques-audio-pour-enfants', 'Auriculares para niños', 'casques-audio-pour-enfants', 'casques-audio', 3, 'es');

-- NIVEAU 2 : Platines & Lecteurs (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('platines-lecteurs', 'Platines y Reproductores', 'platines-lecteurs', 'audio-hifi', 2, 'es');

-- NIVEAU 3 : Platines vinyle, Lecteurs CD, etc. (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('platines-vinyle', 'Platines vinilo', 'platines-vinyle', 'platines-lecteurs', 3, 'es'),
('lecteurs-cd', 'Reproductores CD', 'lecteurs-cd', 'platines-lecteurs', 3, 'es'),
('lecteurs-dvd', 'Reproductores DVD', 'lecteurs-dvd', 'platines-lecteurs', 3, 'es'),
('lecteurs-blu-ray', 'Reproductores Blu-ray', 'lecteurs-blu-ray', 'platines-lecteurs', 3, 'es'),
('lecteurs-reseau', 'Reproductores de red', 'lecteurs-reseau', 'platines-lecteurs', 3, 'es'),
('lecteurs-usb', 'Reproductores USB', 'lecteurs-usb', 'platines-lecteurs', 3, 'es'),
('tuners-radio', 'Sintonizadores radio', 'tuners-radio', 'platines-lecteurs', 3, 'es'),
('lecteurs-multimedias', 'Reproductores multimedia', 'lecteurs-multimedias', 'platines-lecteurs', 3, 'es');

-- NIVEAU 2 : Amplificateurs & Récepteurs (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('amplificateurs-recepteurs', 'Amplificadores y Receptores', 'amplificateurs-recepteurs', 'audio-hifi', 2, 'es');

-- NIVEAU 3 : Amplificateurs stéréo, Récepteurs AV, etc. (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('amplificateurs-stereo', 'Amplificadores estéreo', 'amplificateurs-stereo', 'amplificateurs-recepteurs', 3, 'es'),
('recepteurs-av', 'Receptores AV', 'recepteurs-av', 'amplificateurs-recepteurs', 3, 'es'),
('amplificateurs-home-cinema', 'Amplificadores cine en casa', 'amplificateurs-home-cinema', 'amplificateurs-recepteurs', 3, 'es'),
('amplificateurs-integrés', 'Amplificadores integrados', 'amplificateurs-integrés', 'amplificateurs-recepteurs', 3, 'es'),
('amplificateurs-de-puissance', 'Amplificadores de potencia', 'amplificateurs-de-puissance', 'amplificateurs-recepteurs', 3, 'es'),
('pre-amplificateurs', 'Preamplificadores', 'pre-amplificateurs', 'amplificateurs-recepteurs', 3, 'es'),
('recepteurs-radio', 'Receptores radio', 'recepteurs-radio', 'amplificateurs-recepteurs', 3, 'es'),
('tuners', 'Sintonizadores', 'tuners', 'amplificateurs-recepteurs', 3, 'es');

-- NIVEAU 0 : Image, Son & Équipement Musique (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('image-son-equipement-musique', 'Bild, Ton & Musikausrüstung', 'image-son-equipement-musique', NULL, 0, 'de');

-- NIVEAU 1 : Télévisions (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('televisions', 'Fernseher', 'televisions', 'image-son-equipement-musique', 1, 'de');

-- NIVEAU 2 : Téléviseurs (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('televiseurs', 'Fernsehgeräte', 'televiseurs', 'televisions', 2, 'de');

-- NIVEAU 3 : TV LED, TV OLED, TV QLED, etc. (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('tv-led', 'TV LED', 'tv-led', 'televiseurs', 3, 'de'),
('tv-oled', 'TV OLED', 'tv-oled', 'televiseurs', 3, 'de'),
('tv-qled', 'TV QLED', 'tv-qled', 'televiseurs', 3, 'de'),
('tv-4k', 'TV 4K', 'tv-4k', 'televiseurs', 3, 'de'),
('tv-8k', 'TV 8K', 'tv-8k', 'televiseurs', 3, 'de'),
('tv-smart', 'TV Smart', 'tv-smart', 'televiseurs', 3, 'de'),
('tv-curves', 'TV Curved', 'tv-curves', 'televiseurs', 3, 'de'),
('tv-taille-petite', 'TV Kleine Größe', 'tv-taille-petite', 'televiseurs', 3, 'de'),
('tv-taille-moyenne', 'TV Mittlere Größe', 'tv-taille-moyenne', 'televiseurs', 3, 'de'),
('tv-taille-grande', 'TV Große Größe', 'tv-taille-grande', 'televiseurs', 3, 'de');

-- NIVEAU 2 : Accessoires TV (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('accessoires-tv', 'TV-Zubehör', 'accessoires-tv', 'televisions', 2, 'de');

-- NIVEAU 3 : Supports TV, Antennes TV, Câbles HDMI, etc. (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('supports-tv', 'TV-Halterungen', 'supports-tv', 'accessoires-tv', 3, 'de'),
('antennes-tv', 'TV-Antennen', 'antennes-tv', 'accessoires-tv', 3, 'de'),
('cables-hdmi', 'HDMI-Kabel', 'cables-hdmi', 'accessoires-tv', 3, 'de'),
('decodeurs-tnt', 'TNT-Decoder', 'decodeurs-tnt', 'accessoires-tv', 3, 'de'),
('box-android-tv', 'Android TV-Boxen', 'box-android-tv', 'accessoires-tv', 3, 'de'),
('barres-son', 'Soundbars', 'barres-son', 'accessoires-tv', 3, 'de'),
('home-cinema', 'Heimkino', 'home-cinema', 'accessoires-tv', 3, 'de'),
('video-projecteurs', 'Videoprojektoren', 'video-projecteurs', 'accessoires-tv', 3, 'de');

-- NIVEAU 1 : Audio Hi-Fi (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('audio-hifi', 'Hi-Fi-Audio', 'audio-hifi', 'image-son-equipement-musique', 1, 'de');

-- NIVEAU 2 : Enceintes (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('enceintes', 'Lautsprecher', 'enceintes', 'audio-hifi', 2, 'de');

-- NIVEAU 3 : Enceintes Bluetooth, Enceintes Wi-Fi, etc. (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('enceintes-bluetooth', 'Bluetooth-Lautsprecher', 'enceintes-bluetooth', 'enceintes', 3, 'de'),
('enceintes-wifi', 'Wi-Fi-Lautsprecher', 'enceintes-wifi', 'enceintes', 3, 'de'),
('enceintes-filaires', 'Kabelgebundene Lautsprecher', 'enceintes-filaires', 'enceintes', 3, 'de'),
('enceintes-sans-fil', 'Kabellose Lautsprecher', 'enceintes-sans-fil', 'enceintes', 3, 'de'),
('enceintes-portables', 'Portable Lautsprecher', 'enceintes-portables', 'enceintes', 3, 'de'),
('enceintes-enceintes', 'Lautsprecher-Lautsprecher', 'enceintes-enceintes', 'enceintes', 3, 'de'),
('enceintes-bibliotheque', 'Bücherregal-Lautsprecher', 'enceintes-bibliotheque', 'enceintes', 3, 'de'),
('enceintes-colonne', 'Säulenlautsprecher', 'enceintes-colonne', 'enceintes', 3, 'de'),
('enceintes-enceintes-sur-pied', 'Ständerlautsprecher', 'enceintes-enceintes-sur-pied', 'enceintes', 3, 'de'),
('subwoofers', 'Subwoofer', 'subwoofers', 'enceintes', 3, 'de');

-- NIVEAU 2 : Casques audio (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('casques-audio', 'Kopfhörer', 'casques-audio', 'audio-hifi', 2, 'de');

-- NIVEAU 3 : Casques Bluetooth, Casques filaires, etc. (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('casques-bluetooth', 'Bluetooth-Kopfhörer', 'casques-bluetooth', 'casques-audio', 3, 'de'),
('casques-filaires', 'Kabelgebundene Kopfhörer', 'casques-filaires', 'casques-audio', 3, 'de'),
('casques-sans-fil', 'Kabellose Kopfhörer', 'casques-sans-fil', 'casques-audio', 3, 'de'),
('casques-reduction-bruit', 'Geräuschunterdrückende Kopfhörer', 'casques-reduction-bruit', 'casques-audio', 3, 'de'),
('casques-audio-hifi', 'Hi-Fi-Kopfhörer', 'casques-audio-hifi', 'casques-audio', 3, 'de'),
('casques-gaming', 'Gaming-Kopfhörer', 'casques-gaming', 'casques-audio', 3, 'de'),
('casques-sport', 'Sport-Kopfhörer', 'casques-sport', 'casques-audio', 3, 'de'),
('casques-audio-pour-enfants', 'Kinderkopfhörer', 'casques-audio-pour-enfants', 'casques-audio', 3, 'de');

-- NIVEAU 2 : Platines & Lecteurs (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('platines-lecteurs', 'Plattenspieler & Player', 'platines-lecteurs', 'audio-hifi', 2, 'de');

-- NIVEAU 3 : Platines vinyle, Lecteurs CD, etc. (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('platines-vinyle', 'Plattenspieler', 'platines-vinyle', 'platines-lecteurs', 3, 'de'),
('lecteurs-cd', 'CD-Player', 'lecteurs-cd', 'platines-lecteurs', 3, 'de'),
('lecteurs-dvd', 'DVD-Player', 'lecteurs-dvd', 'platines-lecteurs', 3, 'de'),
('lecteurs-blu-ray', 'Blu-ray-Player', 'lecteurs-blu-ray', 'platines-lecteurs', 3, 'de'),
('lecteurs-reseau', 'Netzwerkplayer', 'lecteurs-reseau', 'platines-lecteurs', 3, 'de'),
('lecteurs-usb', 'USB-Player', 'lecteurs-usb', 'platines-lecteurs', 3, 'de'),
('tuners-radio', 'Radio-Tuner', 'tuners-radio', 'platines-lecteurs', 3, 'de'),
('lecteurs-multimedias', 'Multimedia-Player', 'lecteurs-multimedias', 'platines-lecteurs', 3, 'de');

-- NIVEAU 2 : Amplificateurs & Récepteurs (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('amplificateurs-recepteurs', 'Verstärker & Empfänger', 'amplificateurs-recepteurs', 'audio-hifi', 2, 'de');

-- NIVEAU 3 : Amplificateurs stéréo, Récepteurs AV, etc. (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('amplificateurs-stereo', 'Stereo-Verstärker', 'amplificateurs-stereo', 'amplificateurs-recepteurs', 3, 'de'),
('recepteurs-av', 'AV-Empfänger', 'recepteurs-av', 'amplificateurs-recepteurs', 3, 'de'),
('amplificateurs-home-cinema', 'Heimkino-Verstärker', 'amplificateurs-home-cinema', 'amplificateurs-recepteurs', 3, 'de'),
('amplificateurs-integrés', 'Integrierte Verstärker', 'amplificateurs-integrés', 'amplificateurs-recepteurs', 3, 'de'),
('amplificateurs-de-puissance', 'Leistungsverstärker', 'amplificateurs-de-puissance', 'amplificateurs-recepteurs', 3, 'de'),
('pre-amplificateurs', 'Vorverstärker', 'pre-amplificateurs', 'amplificateurs-recepteurs', 3, 'de'),
('recepteurs-radio', 'Radio-Empfänger', 'recepteurs-radio', 'amplificateurs-recepteurs', 3, 'de'),
('tuners', 'Tuner', 'tuners', 'amplificateurs-recepteurs', 3, 'de');

-- NIVEAU 0 : Image, Son & Équipement Musique (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('image-son-equipement-musique', 'Image, Sound & Music Equipment', 'image-son-equipement-musique', NULL, 0, 'en');

-- NIVEAU 1 : Télévisions (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('televisions', 'Televisions', 'televisions', 'image-son-equipement-musique', 1, 'en');

-- NIVEAU 2 : Téléviseurs (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('televiseurs', 'Television Sets', 'televiseurs', 'televisions', 2, 'en');

-- NIVEAU 3 : TV LED, TV OLED, TV QLED, etc. (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('tv-led', 'LED TV', 'tv-led', 'televiseurs', 3, 'en'),
('tv-oled', 'OLED TV', 'tv-oled', 'televiseurs', 3, 'en'),
('tv-qled', 'QLED TV', 'tv-qled', 'televiseurs', 3, 'en'),
('tv-4k', '4K TV', 'tv-4k', 'televiseurs', 3, 'en'),
('tv-8k', '8K TV', 'tv-8k', 'televiseurs', 3, 'en'),
('tv-smart', 'Smart TV', 'tv-smart', 'televiseurs', 3, 'en'),
('tv-curves', 'Curved TV', 'tv-curves', 'televiseurs', 3, 'en'),
('tv-taille-petite', 'Small Size TV', 'tv-taille-petite', 'televiseurs', 3, 'en'),
('tv-taille-moyenne', 'Medium Size TV', 'tv-taille-moyenne', 'televiseurs', 3, 'en'),
('tv-taille-grande', 'Large Size TV', 'tv-taille-grande', 'televiseurs', 3, 'en');

-- NIVEAU 2 : Accessoires TV (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('accessoires-tv', 'TV Accessories', 'accessoires-tv', 'televisions', 2, 'en');

-- NIVEAU 3 : Supports TV, Antennes TV, Câbles HDMI, etc. (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('supports-tv', 'TV Mounts', 'supports-tv', 'accessoires-tv', 3, 'en'),
('antennes-tv', 'TV Antennas', 'antennes-tv', 'accessoires-tv', 3, 'en'),
('cables-hdmi', 'HDMI Cables', 'cables-hdmi', 'accessoires-tv', 3, 'en'),
('decodeurs-tnt', 'TNT Decoders', 'decodeurs-tnt', 'accessoires-tv', 3, 'en'),
('box-android-tv', 'Android TV Boxes', 'box-android-tv', 'accessoires-tv', 3, 'en'),
('barres-son', 'Soundbars', 'barres-son', 'accessoires-tv', 3, 'en'),
('home-cinema', 'Home Cinema', 'home-cinema', 'accessoires-tv', 3, 'en'),
('video-projecteurs', 'Video Projectors', 'video-projecteurs', 'accessoires-tv', 3, 'en');

-- NIVEAU 1 : Audio Hi-Fi (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('audio-hifi', 'Hi-Fi Audio', 'audio-hifi', 'image-son-equipement-musique', 1, 'en');

-- NIVEAU 2 : Enceintes (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('enceintes', 'Speakers', 'enceintes', 'audio-hifi', 2, 'en');

-- NIVEAU 3 : Enceintes Bluetooth, Enceintes Wi-Fi, etc. (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('enceintes-bluetooth', 'Bluetooth Speakers', 'enceintes-bluetooth', 'enceintes', 3, 'en'),
('enceintes-wifi', 'Wi-Fi Speakers', 'enceintes-wifi', 'enceintes', 3, 'en'),
('enceintes-filaires', 'Wired Speakers', 'enceintes-filaires', 'enceintes', 3, 'en'),
('enceintes-sans-fil', 'Wireless Speakers', 'enceintes-sans-fil', 'enceintes', 3, 'en'),
('enceintes-portables', 'Portable Speakers', 'enceintes-portables', 'enceintes', 3, 'en'),
('enceintes-enceintes', 'Speaker Speakers', 'enceintes-enceintes', 'enceintes', 3, 'en'),
('enceintes-bibliotheque', 'Bookshelf Speakers', 'enceintes-bibliotheque', 'enceintes', 3, 'en'),
('enceintes-colonne', 'Floorstanding Speakers', 'enceintes-colonne', 'enceintes', 3, 'en'),
('enceintes-enceintes-sur-pied', 'Stand-mounted Speakers', 'enceintes-enceintes-sur-pied', 'enceintes', 3, 'en'),
('subwoofers', 'Subwoofers', 'subwoofers', 'enceintes', 3, 'en');

-- NIVEAU 2 : Casques audio (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('casques-audio', 'Headphones', 'casques-audio', 'audio-hifi', 2, 'en');

-- NIVEAU 3 : Casques Bluetooth, Casques filaires, etc. (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('casques-bluetooth', 'Bluetooth Headphones', 'casques-bluetooth', 'casques-audio', 3, 'en'),
('casques-filaires', 'Wired Headphones', 'casques-filaires', 'casques-audio', 3, 'en'),
('casques-sans-fil', 'Wireless Headphones', 'casques-sans-fil', 'casques-audio', 3, 'en'),
('casques-reduction-bruit', 'Noise Cancelling Headphones', 'casques-reduction-bruit', 'casques-audio', 3, 'en'),
('casques-audio-hifi', 'Hi-Fi Audio Headphones', 'casques-audio-hifi', 'casques-audio', 3, 'en'),
('casques-gaming', 'Gaming Headphones', 'casques-gaming', 'casques-audio', 3, 'en'),
('casques-sport', 'Sports Headphones', 'casques-sport', 'casques-audio', 3, 'en'),
('casques-audio-pour-enfants', 'Children Audio Headphones', 'casques-audio-pour-enfants', 'casques-audio', 3, 'en');

-- NIVEAU 2 : Platines & Lecteurs (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('platines-lecteurs', 'Turntables & Players', 'platines-lecteurs', 'audio-hifi', 2, 'en');

-- NIVEAU 3 : Platines vinyle, Lecteurs CD, etc. (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('platines-vinyle', 'Vinyl Turntables', 'platines-vinyle', 'platines-lecteurs', 3, 'en'),
('lecteurs-cd', 'CD Players', 'lecteurs-cd', 'platines-lecteurs', 3, 'en'),
('lecteurs-dvd', 'DVD Players', 'lecteurs-dvd', 'platines-lecteurs', 3, 'en'),
('lecteurs-blu-ray', 'Blu-ray Players', 'lecteurs-blu-ray', 'platines-lecteurs', 3, 'en'),
('lecteurs-reseau', 'Network Players', 'lecteurs-reseau', 'platines-lecteurs', 3, 'en'),
('lecteurs-usb', 'USB Players', 'lecteurs-usb', 'platines-lecteurs', 3, 'en'),
('tuners-radio', 'Radio Tuners', 'tuners-radio', 'platines-lecteurs', 3, 'en'),
('lecteurs-multimedias', 'Multimedia Players', 'lecteurs-multimedias', 'platines-lecteurs', 3, 'en');

-- NIVEAU 2 : Amplificateurs & Récepteurs (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('amplificateurs-recepteurs', 'Amplifiers & Receivers', 'amplificateurs-recepteurs', 'audio-hifi', 2, 'en');

-- NIVEAU 3 : Amplificateurs stéréo, Récepteurs AV, etc. (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('amplificateurs-stereo', 'Stereo Amplifiers', 'amplificateurs-stereo', 'amplificateurs-recepteurs', 3, 'en'),
('recepteurs-av', 'AV Receivers', 'recepteurs-av', 'amplificateurs-recepteurs', 3, 'en'),
('amplificateurs-home-cinema', 'Home Cinema Amplifiers', 'amplificateurs-home-cinema', 'amplificateurs-recepteurs', 3, 'en'),
('amplificateurs-integrés', 'Integrated Amplifiers', 'amplificateurs-integrés', 'amplificateurs-recepteurs', 3, 'en'),
('amplificateurs-de-puissance', 'Power Amplifiers', 'amplificateurs-de-puissance', 'amplificateurs-recepteurs', 3, 'en'),
('pre-amplificateurs', 'Preamplifiers', 'pre-amplificateurs', 'amplificateurs-recepteurs', 3, 'en'),
('recepteurs-radio', 'Radio Receivers', 'recepteurs-radio', 'amplificateurs-recepteurs', 3, 'en'),
('tuners', 'Tuners', 'tuners', 'amplificateurs-recepteurs', 3, 'en');

-- NIVEAU 0 : Image, Son & Équipement Musique (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('image-son-equipement-musique', 'Immagine, Suono e Attrezzatura Musicale', 'image-son-equipement-musique', NULL, 0, 'it');

-- NIVEAU 1 : Télévisions (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('televisions', 'Televisioni', 'televisions', 'image-son-equipement-musique', 1, 'it');

-- NIVEAU 2 : Téléviseurs (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('televiseurs', 'Televisori', 'televiseurs', 'televisions', 2, 'it');

-- NIVEAU 3 : TV LED, TV OLED, TV QLED, etc. (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('tv-led', 'TV LED', 'tv-led', 'televiseurs', 3, 'it'),
('tv-oled', 'TV OLED', 'tv-oled', 'televiseurs', 3, 'it'),
('tv-qled', 'TV QLED', 'tv-qled', 'televiseurs', 3, 'it'),
('tv-4k', 'TV 4K', 'tv-4k', 'televiseurs', 3, 'it'),
('tv-8k', 'TV 8K', 'tv-8k', 'televiseurs', 3, 'it'),
('tv-smart', 'TV Smart', 'tv-smart', 'televiseurs', 3, 'it'),
('tv-curves', 'TV Curve', 'tv-curves', 'televiseurs', 3, 'it'),
('tv-taille-petite', 'TV Taglia piccola', 'tv-taille-petite', 'televiseurs', 3, 'it'),
('tv-taille-moyenne', 'TV Taglia media', 'tv-taille-moyenne', 'televiseurs', 3, 'it'),
('tv-taille-grande', 'TV Taglia grande', 'tv-taille-grande', 'televiseurs', 3, 'it');

-- NIVEAU 2 : Accessoires TV (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('accessoires-tv', 'Accessori TV', 'accessoires-tv', 'televisions', 2, 'it');

-- NIVEAU 3 : Supports TV, Antennes TV, Câbles HDMI, etc. (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('supports-tv', 'Supporti TV', 'supports-tv', 'accessoires-tv', 3, 'it'),
('antennes-tv', 'Antenne TV', 'antennes-tv', 'accessoires-tv', 3, 'it'),
('cables-hdmi', 'Cavi HDMI', 'cables-hdmi', 'accessoires-tv', 3, 'it'),
('decodeurs-tnt', 'Decoder TNT', 'decodeurs-tnt', 'accessoires-tv', 3, 'it'),
('box-android-tv', 'Box Android TV', 'box-android-tv', 'accessoires-tv', 3, 'it'),
('barres-son', 'Barre sonore', 'barres-son', 'accessoires-tv', 3, 'it'),
('home-cinema', 'Home cinema', 'home-cinema', 'accessoires-tv', 3, 'it'),
('video-projecteurs', 'Videoproiettori', 'video-projecteurs', 'accessoires-tv', 3, 'it');

-- NIVEAU 1 : Audio Hi-Fi (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('audio-hifi', 'Audio Hi-Fi', 'audio-hifi', 'image-son-equipement-musique', 1, 'it');

-- NIVEAU 2 : Enceintes (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('enceintes', 'Altoparlanti', 'enceintes', 'audio-hifi', 2, 'it');

-- NIVEAU 3 : Enceintes Bluetooth, Enceintes Wi-Fi, etc. (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('enceintes-bluetooth', 'Altoparlanti Bluetooth', 'enceintes-bluetooth', 'enceintes', 3, 'it'),
('enceintes-wifi', 'Altoparlanti Wi-Fi', 'enceintes-wifi', 'enceintes', 3, 'it'),
('enceintes-filaires', 'Altoparlanti cablati', 'enceintes-filaires', 'enceintes', 3, 'it'),
('enceintes-sans-fil', 'Altoparlanti wireless', 'enceintes-sans-fil', 'enceintes', 3, 'it'),
('enceintes-portables', 'Altoparlanti portatili', 'enceintes-portables', 'enceintes', 3, 'it'),
('enceintes-enceintes', 'Altoparlanti altoparlanti', 'enceintes-enceintes', 'enceintes', 3, 'it'),
('enceintes-bibliotheque', 'Altoparlanti da scaffale', 'enceintes-bibliotheque', 'enceintes', 3, 'it'),
('enceintes-colonne', 'Altoparlanti da colonna', 'enceintes-colonne', 'enceintes', 3, 'it'),
('enceintes-enceintes-sur-pied', 'Altoparlanti su stand', 'enceintes-enceintes-sur-pied', 'enceintes', 3, 'it'),
('subwoofers', 'Subwoofer', 'subwoofers', 'enceintes', 3, 'it');

-- NIVEAU 2 : Casques audio (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('casques-audio', 'Cuffie', 'casques-audio', 'audio-hifi', 2, 'it');

-- NIVEAU 3 : Casques Bluetooth, Casques filaires, etc. (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('casques-bluetooth', 'Cuffie Bluetooth', 'casques-bluetooth', 'casques-audio', 3, 'it'),
('casques-filaires', 'Cuffie cablate', 'casques-filaires', 'casques-audio', 3, 'it'),
('casques-sans-fil', 'Cuffie wireless', 'casques-sans-fil', 'casques-audio', 3, 'it'),
('casques-reduction-bruit', 'Cuffie riduzione rumore', 'casques-reduction-bruit', 'casques-audio', 3, 'it'),
('casques-audio-hifi', 'Cuffie audio Hi-Fi', 'casques-audio-hifi', 'casques-audio', 3, 'it'),
('casques-gaming', 'Cuffie gaming', 'casques-gaming', 'casques-audio', 3, 'it'),
('casques-sport', 'Cuffie sport', 'casques-sport', 'casques-audio', 3, 'it'),
('casques-audio-pour-enfants', 'Cuffie audio per bambini', 'casques-audio-pour-enfants', 'casques-audio', 3, 'it');

-- NIVEAU 2 : Platines & Lecteurs (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('platines-lecteurs', 'Platine e Lettori', 'platines-lecteurs', 'audio-hifi', 2, 'it');

-- NIVEAU 3 : Platines vinyle, Lecteurs CD, etc. (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('platines-vinyle', 'Platine vinile', 'platines-vinyle', 'platines-lecteurs', 3, 'it'),
('lecteurs-cd', 'Lettori CD', 'lecteurs-cd', 'platines-lecteurs', 3, 'it'),
('lecteurs-dvd', 'Lettori DVD', 'lecteurs-dvd', 'platines-lecteurs', 3, 'it'),
('lecteurs-blu-ray', 'Lettori Blu-ray', 'lecteurs-blu-ray', 'platines-lecteurs', 3, 'it'),
('lecteurs-reseau', 'Lettori di rete', 'lecteurs-reseau', 'platines-lecteurs', 3, 'it'),
('lecteurs-usb', 'Lettori USB', 'lecteurs-usb', 'platines-lecteurs', 3, 'it'),
('tuners-radio', 'Sintonizzatori radio', 'tuners-radio', 'platines-lecteurs', 3, 'it'),
('lecteurs-multimedias', 'Lettori multimediali', 'lecteurs-multimedias', 'platines-lecteurs', 3, 'it');

-- NIVEAU 2 : Amplificateurs & Récepteurs (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('amplificateurs-recepteurs', 'Amplificatori e Ricevitori', 'amplificateurs-recepteurs', 'audio-hifi', 2, 'it');

-- NIVEAU 3 : Amplificateurs stéréo, Récepteurs AV, etc. (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('amplificateurs-stereo', 'Amplificatori stereo', 'amplificateurs-stereo', 'ampl