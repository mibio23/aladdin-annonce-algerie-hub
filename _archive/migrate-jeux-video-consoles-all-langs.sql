-- NIVEAU 0 : Jeux Vidéo & Consoles (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-video-consoles', 'Jeux Vidéo & Consoles', 'jeux-video-consoles', NULL, 0, 'fr');

-- NIVEAU 1 : Consoles de jeux (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('consoles-de-jeux', 'Consoles de jeux', 'consoles-de-jeux', 'jeux-video-consoles', 1, 'fr');

-- NIVEAU 2 : Consoles de salon (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('consoles-salon', 'Consoles de salon', 'consoles-salon', 'consoles-de-jeux', 2, 'fr');

-- NIVEAU 3 : PlayStation, Xbox, Nintendo Switch, etc. (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('playstation-5', 'PlayStation 5', 'playstation-5', 'consoles-salon', 3, 'fr'),
('playstation-4', 'PlayStation 4', 'playstation-4', 'consoles-salon', 3, 'fr'),
('xbox-series-x', 'Xbox Series X', 'xbox-series-x', 'consoles-salon', 3, 'fr'),
('xbox-series-s', 'Xbox Series S', 'xbox-series-s', 'consoles-salon', 3, 'fr'),
('xbox-one', 'Xbox One', 'xbox-one', 'consoles-salon', 3, 'fr'),
('nintendo-switch', 'Nintendo Switch', 'nintendo-switch', 'consoles-salon', 3, 'fr'),
('nintendo-switch-oled', 'Nintendo Switch OLED', 'nintendo-switch-oled', 'consoles-salon', 3, 'fr'),
('nintendo-switch-lite', 'Nintendo Switch Lite', 'nintendo-switch-lite', 'consoles-salon', 3, 'fr');

-- NIVEAU 2 : Consoles portables (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('consoles-portables', 'Consoles portables', 'consoles-portables', 'consoles-de-jeux', 2, 'fr');

-- NIVEAU 3 : Nintendo 3DS, PlayStation Vita, etc. (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('nintendo-3ds', 'Nintendo 3DS', 'nintendo-3ds', 'consoles-portables', 3, 'fr'),
('nintendo-2ds', 'Nintendo 2DS', 'nintendo-2ds', 'consoles-portables', 3, 'fr'),
('playstation-vita', 'PlayStation Vita', 'playstation-vita', 'consoles-portables', 3, 'fr'),
('consoles-retro-portables', 'Consoles rétro portables', 'consoles-retro-portables', 'consoles-portables', 3, 'fr');

-- NIVEAU 2 : Accessoires consoles (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('accessoires-consoles', 'Accessoires consoles', 'accessoires-consoles', 'consoles-de-jeux', 2, 'fr');

-- NIVEAU 3 : Manettes, Volants, Casques gaming, etc. (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('manettes', 'Manettes', 'manettes', 'accessoires-consoles', 3, 'fr'),
('manettes-ps5', 'Manettes PS5', 'manettes-ps5', 'accessoires-consoles', 3, 'fr'),
('manettes-ps4', 'Manettes PS4', 'manettes-ps4', 'accessoires-consoles', 3, 'fr'),
('manettes-xbox', 'Manettes Xbox', 'manettes-xbox', 'accessoires-consoles', 3, 'fr'),
('manettes-switch', 'Manettes Switch', 'manettes-switch', 'accessoires-consoles', 3, 'fr'),
('volants-gaming', 'Volants gaming', 'volants-gaming', 'accessoires-consoles', 3, 'fr'),
('casques-gaming-consoles', 'Casques gaming consoles', 'casques-gaming-consoles', 'accessoires-consoles', 3, 'fr'),
('chargeurs-consoles', 'Chargeurs consoles', 'chargeurs-consoles', 'accessoires-consoles', 3, 'fr'),
('supports-manettes', 'Supports manettes', 'supports-manettes', 'accessoires-consoles', 3, 'fr'),
('etuis-consoles', 'Étuis consoles', 'etuis-consoles', 'accessoires-consoles', 3, 'fr');

-- NIVEAU 1 : Jeux vidéo (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-video', 'Jeux vidéo', 'jeux-video', 'jeux-video-consoles', 1, 'fr');

-- NIVEAU 2 : Jeux PlayStation (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-playstation', 'Jeux PlayStation', 'jeux-playstation', 'jeux-video', 2, 'fr');

-- NIVEAU 3 : Jeux PS5, Jeux PS4, etc. (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-ps5', 'Jeux PS5', 'jeux-ps5', 'jeux-playstation', 3, 'fr'),
('jeux-ps4', 'Jeux PS4', 'jeux-ps4', 'jeux-playstation', 3, 'fr'),
('jeux-ps3', 'Jeux PS3', 'jeux-ps3', 'jeux-playstation', 3, 'fr'),
('jeux-ps-vita', 'Jeux PS Vita', 'jeux-ps-vita', 'jeux-playstation', 3, 'fr'),
('jeux-psp', 'Jeux PSP', 'jeux-psp', 'jeux-playstation', 3, 'fr');

-- NIVEAU 2 : Jeux Xbox (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-xbox', 'Jeux Xbox', 'jeux-xbox', 'jeux-video', 2, 'fr');

-- NIVEAU 3 : Jeux Xbox Series, Jeux Xbox One, etc. (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-xbox-series', 'Jeux Xbox Series', 'jeux-xbox-series', 'jeux-xbox', 3, 'fr'),
('jeux-xbox-one', 'Jeux Xbox One', 'jeux-xbox-one', 'jeux-xbox', 3, 'fr'),
('jeux-xbox-360', 'Jeux Xbox 360', 'jeux-xbox-360', 'jeux-xbox', 3, 'fr');

-- NIVEAU 2 : Jeux Nintendo (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-nintendo', 'Jeux Nintendo', 'jeux-nintendo', 'jeux-video', 2, 'fr');

-- NIVEAU 3 : Jeux Switch, Jeux 3DS, etc. (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-switch', 'Jeux Switch', 'jeux-switch', 'jeux-nintendo', 3, 'fr'),
('jeux-3ds', 'Jeux 3DS', 'jeux-3ds', 'jeux-nintendo', 3, 'fr'),
('jeux-ds', 'Jeux DS', 'jeux-ds', 'jeux-nintendo', 3, 'fr'),
('jeux-wii-u', 'Jeux Wii U', 'jeux-wii-u', 'jeux-nintendo', 3, 'fr'),
('jeux-wii', 'Jeux Wii', 'jeux-wii', 'jeux-nintendo', 3, 'fr');

-- NIVEAU 2 : Jeux PC (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-pc', 'Jeux PC', 'jeux-pc', 'jeux-video', 2, 'fr');

-- NIVEAU 3 : Jeux Steam, Jeux Epic Games, etc. (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-steam', 'Jeux Steam', 'jeux-steam', 'jeux-pc', 3, 'fr'),
('jeux-epic-games', 'Jeux Epic Games', 'jeux-epic-games', 'jeux-pc', 3, 'fr'),
('jeux-battle-net', 'Jeux Battle.net', 'jeux-battle-net', 'jeux-pc', 3, 'fr'),
('jeux-origin', 'Jeux Origin', 'jeux-origin', 'jeux-pc', 3, 'fr'),
('jeux-uplay', 'Jeux Uplay', 'jeux-uplay', 'jeux-pc', 3, 'fr'),
('jeux-gog', 'Jeux GOG', 'jeux-gog', 'jeux-pc', 3, 'fr'),
('jeux-microsoft-store', 'Jeux Microsoft Store', 'jeux-microsoft-store', 'jeux-pc', 3, 'fr');

-- NIVEAU 0 : Jeux Vidéo & Consoles (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-video-consoles', 'ألعاب الفيديو والوحدات', 'jeux-video-consoles', NULL, 0, 'ar');

-- NIVEAU 1 : Consoles de jeux (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('consoles-de-jeux', 'وحدات الألعاب', 'consoles-de-jeux', 'jeux-video-consoles', 1, 'ar');

-- NIVEAU 2 : Consoles de salon (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('consoles-salon', 'وحدات غرفة الجلوس', 'consoles-salon', 'consoles-de-jeux', 2, 'ar');

-- NIVEAU 3 : PlayStation, Xbox, Nintendo Switch, etc. (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('playstation-5', 'بلاي ستيشن 5', 'playstation-5', 'consoles-salon', 3, 'ar'),
('playstation-4', 'بلاي ستيشن 4', 'playstation-4', 'consoles-salon', 3, 'ar'),
('xbox-series-x', 'إكس بوكس سيريس X', 'xbox-series-x', 'consoles-salon', 3, 'ar'),
('xbox-series-s', 'إكس بوكس سيريس S', 'xbox-series-s', 'consoles-salon', 3, 'ar'),
('xbox-one', 'إكس بوكس وان', 'xbox-one', 'consoles-salon', 3, 'ar'),
('nintendo-switch', 'نينتندو سويتش', 'nintendo-switch', 'consoles-salon', 3, 'ar'),
('nintendo-switch-oled', 'نينتندو سويتش OLED', 'nintendo-switch-oled', 'consoles-salon', 3, 'ar'),
('nintendo-switch-lite', 'نينتندو سويتش لايت', 'nintendo-switch-lite', 'consoles-salon', 3, 'ar');

-- NIVEAU 2 : Consoles portables (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('consoles-portables', 'وحدات محمولة', 'consoles-portables', 'consoles-de-jeux', 2, 'ar');

-- NIVEAU 3 : Nintendo 3DS, PlayStation Vita, etc. (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('nintendo-3ds', 'نينتندو 3DS', 'nintendo-3ds', 'consoles-portables', 3, 'ar'),
('nintendo-2ds', 'نينتندو 2DS', 'nintendo-2ds', 'consoles-portables', 3, 'ar'),
('playstation-vita', 'بلاي ستيشن فيتا', 'playstation-vita', 'consoles-portables', 3, 'ar'),
('consoles-retro-portables', 'وحدات محمولة ريترو', 'consoles-retro-portables', 'consoles-portables', 3, 'ar');

-- NIVEAU 2 : Accessoires consoles (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('accessoires-consoles', 'ملحقات الوحدات', 'accessoires-consoles', 'consoles-de-jeux', 2, 'ar');

-- NIVEAU 3 : Manettes, Volants, Casques gaming, etc. (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('manettes', 'أذرع التحكم', 'manettes', 'accessoires-consoles', 3, 'ar'),
('manettes-ps5', 'أذرع تحكم PS5', 'manettes-ps5', 'accessoires-consoles', 3, 'ar'),
('manettes-ps4', 'أذرع تحكم PS4', 'manettes-ps4', 'accessoires-consoles', 3, 'ar'),
('manettes-xbox', 'أذرع تحكم إكس بوكس', 'manettes-xbox', 'accessoires-consoles', 3, 'ar'),
('manettes-switch', 'أذرع تحكم سويتش', 'manettes-switch', 'accessoires-consoles', 3, 'ar'),
('volants-gaming', 'عجلات قيادة الألعاب', 'volants-gaming', 'accessoires-consoles', 3, 'ar'),
('casques-gaming-consoles', 'سماعات رأس ألعاب الوحدات', 'casques-gaming-consoles', 'accessoires-consoles', 3, 'ar'),
('chargeurs-consoles', 'شواحن الوحدات', 'chargeurs-consoles', 'accessoires-consoles', 3, 'ar'),
('supports-manettes', 'دعامات أذرع التحكم', 'supports-manettes', 'accessoires-consoles', 3, 'ar'),
('etuis-consoles', 'أغلفة الوحدات', 'etuis-consoles', 'accessoires-consoles', 3, 'ar');

-- NIVEAU 1 : Jeux vidéo (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-video', 'ألعاب الفيديو', 'jeux-video', 'jeux-video-consoles', 1, 'ar');

-- NIVEAU 2 : Jeux PlayStation (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-playstation', 'ألعاب بلاي ستيشن', 'jeux-playstation', 'jeux-video', 2, 'ar');

-- NIVEAU 3 : Jeux PS5, Jeux PS4, etc. (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-ps5', 'ألعاب PS5', 'jeux-ps5', 'jeux-playstation', 3, 'ar'),
('jeux-ps4', 'ألعاب PS4', 'jeux-ps4', 'jeux-playstation', 3, 'ar'),
('jeux-ps3', 'ألعاب PS3', 'jeux-ps3', 'jeux-playstation', 3, 'ar'),
('jeux-ps-vita', 'ألعاب PS فيتا', 'jeux-ps-vita', 'jeux-playstation', 3, 'ar'),
('jeux-psp', 'ألعاب PSP', 'jeux-psp', 'jeux-playstation', 3, 'ar');

-- NIVEAU 2 : Jeux Xbox (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-xbox', 'ألعاب إكس بوكس', 'jeux-xbox', 'jeux-video', 2, 'ar');

-- NIVEAU 3 : Jeux Xbox Series, Jeux Xbox One, etc. (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-xbox-series', 'ألعاب إكس بوكس سيريس', 'jeux-xbox-series', 'jeux-xbox', 3, 'ar'),
('jeux-xbox-one', 'ألعاب إكس بوكس وان', 'jeux-xbox-one', 'jeux-xbox', 3, 'ar'),
('jeux-xbox-360', 'ألعاب إكس بوكس 360', 'jeux-xbox-360', 'jeux-xbox', 3, 'ar');

-- NIVEAU 2 : Jeux Nintendo (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-nintendo', 'ألعاب نينتندو', 'jeux-nintendo', 'jeux-video', 2, 'ar');

-- NIVEAU 3 : Jeux Switch, Jeux 3DS, etc. (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-switch', 'ألعاب سويتش', 'jeux-switch', 'jeux-nintendo', 3, 'ar'),
('jeux-3ds', 'ألعاب 3DS', 'jeux-3ds', 'jeux-nintendo', 3, 'ar'),
('jeux-ds', 'ألعاب DS', 'jeux-ds', 'jeux-nintendo', 3, 'ar'),
('jeux-wii-u', 'ألعاب Wii U', 'jeux-wii-u', 'jeux-nintendo', 3, 'ar'),
('jeux-wii', 'ألعاب Wii', 'jeux-wii', 'jeux-nintendo', 3, 'ar');

-- NIVEAU 2 : Jeux PC (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-pc', 'ألعاب الكمبيوتر', 'jeux-pc', 'jeux-video', 2, 'ar');

-- NIVEAU 3 : Jeux Steam, Jeux Epic Games, etc. (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-steam', 'ألعاب ستيم', 'jeux-steam', 'jeux-pc', 3, 'ar'),
('jeux-epic-games', 'ألعاب إيبيك غيمز', 'jeux-epic-games', 'jeux-pc', 3, 'ar'),
('jeux-battle-net', 'ألعاب باتل.نت', 'jeux-battle-net', 'jeux-pc', 3, 'ar'),
('jeux-origin', 'ألعاب أوريجين', 'jeux-origin', 'jeux-pc', 3, 'ar'),
('jeux-uplay', 'ألعاب يوبلاي', 'jeux-uplay', 'jeux-pc', 3, 'ar'),
('jeux-gog', 'ألعاب GOG', 'jeux-gog', 'jeux-pc', 3, 'ar'),
('jeux-microsoft-store', 'ألعاب متجر مايكروسوفت', 'jeux-microsoft-store', 'jeux-pc', 3, 'ar');

-- NIVEAU 0 : Jeux Vidéo & Consoles (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-video-consoles', 'Videojuegos y Consolas', 'jeux-video-consoles', NULL, 0, 'es');

-- NIVEAU 1 : Consoles de jeux (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('consoles-de-jeux', 'Consolas de juegos', 'consoles-de-jeux', 'jeux-video-consoles', 1, 'es');

-- NIVEAU 2 : Consoles de salon (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('consoles-salon', 'Consolas de salón', 'consoles-salon', 'consoles-de-jeux', 2, 'es');

-- NIVEAU 3 : PlayStation, Xbox, Nintendo Switch, etc. (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('playstation-5', 'PlayStation 5', 'playstation-5', 'consoles-salon', 3, 'es'),
('playstation-4', 'PlayStation 4', 'playstation-4', 'consoles-salon', 3, 'es'),
('xbox-series-x', 'Xbox Series X', 'xbox-series-x', 'consoles-salon', 3, 'es'),
('xbox-series-s', 'Xbox Series S', 'xbox-series-s', 'consoles-salon', 3, 'es'),
('xbox-one', 'Xbox One', 'xbox-one', 'consoles-salon', 3, 'es'),
('nintendo-switch', 'Nintendo Switch', 'nintendo-switch', 'consoles-salon', 3, 'es'),
('nintendo-switch-oled', 'Nintendo Switch OLED', 'nintendo-switch-oled', 'consoles-salon', 3, 'es'),
('nintendo-switch-lite', 'Nintendo Switch Lite', 'nintendo-switch-lite', 'consoles-salon', 3, 'es');

-- NIVEAU 2 : Consoles portables (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('consoles-portables', 'Consolas portátiles', 'consoles-portables', 'consoles-de-jeux', 2, 'es');

-- NIVEAU 3 : Nintendo 3DS, PlayStation Vita, etc. (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('nintendo-3ds', 'Nintendo 3DS', 'nintendo-3ds', 'consoles-portables', 3, 'es'),
('nintendo-2ds', 'Nintendo 2DS', 'nintendo-2ds', 'consoles-portables', 3, 'es'),
('playstation-vita', 'PlayStation Vita', 'playstation-vita', 'consoles-portables', 3, 'es'),
('consoles-retro-portables', 'Consolas retro portátiles', 'consoles-retro-portables', 'consoles-portables', 3, 'es');

-- NIVEAU 2 : Accessoires consoles (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('accessoires-consoles', 'Accesorios consolas', 'accessoires-consoles', 'consoles-de-jeux', 2, 'es');

-- NIVEAU 3 : Manettes, Volants, Casques gaming, etc. (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('manettes', 'Mandos', 'manettes', 'accessoires-consoles', 3, 'es'),
('manettes-ps5', 'Mandos PS5', 'manettes-ps5', 'accessoires-consoles', 3, 'es'),
('manettes-ps4', 'Mandos PS4', 'manettes-ps4', 'accessoires-consoles', 3, 'es'),
('manettes-xbox', 'Mandos Xbox', 'manettes-xbox', 'accessoires-consoles', 3, 'es'),
('manettes-switch', 'Mandos Switch', 'manettes-switch', 'accessoires-consoles', 3, 'es'),
('volants-gaming', 'Volantes gaming', 'volants-gaming', 'accessoires-consoles', 3, 'es'),
('casques-gaming-consoles', 'Auriculares gaming consolas', 'casques-gaming-consoles', 'accessoires-consoles', 3, 'es'),
('chargeurs-consoles', 'Cargadores consolas', 'chargeurs-consoles', 'accessoires-consoles', 3, 'es'),
('supports-manettes', 'Soportes mandos', 'supports-manettes', 'accessoires-consoles', 3, 'es'),
('etuis-consoles', 'Fundas consolas', 'etuis-consoles', 'accessoires-consoles', 3, 'es');

-- NIVEAU 1 : Jeux vidéo (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-video', 'Videojuegos', 'jeux-video', 'jeux-video-consoles', 1, 'es');

-- NIVEAU 2 : Jeux PlayStation (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-playstation', 'Juegos PlayStation', 'jeux-playstation', 'jeux-video', 2, 'es');

-- NIVEAU 3 : Jeux PS5, Jeux PS4, etc. (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-ps5', 'Juegos PS5', 'jeux-ps5', 'jeux-playstation', 3, 'es'),
('jeux-ps4', 'Juegos PS4', 'jeux-ps4', 'jeux-playstation', 3, 'es'),
('jeux-ps3', 'Juegos PS3', 'jeux-ps3', 'jeux-playstation', 3, 'es'),
('jeux-ps-vita', 'Juegos PS Vita', 'jeux-ps-vita', 'jeux-playstation', 3, 'es'),
('jeux-psp', 'Juegos PSP', 'jeux-psp', 'jeux-playstation', 3, 'es');

-- NIVEAU 2 : Jeux Xbox (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-xbox', 'Juegos Xbox', 'jeux-xbox', 'jeux-video', 2, 'es');

-- NIVEAU 3 : Jeux Xbox Series, Jeux Xbox One, etc. (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-xbox-series', 'Juegos Xbox Series', 'jeux-xbox-series', 'jeux-xbox', 3, 'es'),
('jeux-xbox-one', 'Juegos Xbox One', 'jeux-xbox-one', 'jeux-xbox', 3, 'es'),
('jeux-xbox-360', 'Juegos Xbox 360', 'jeux-xbox-360', 'jeux-xbox', 3, 'es');

-- NIVEAU 2 : Jeux Nintendo (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-nintendo', 'Juegos Nintendo', 'jeux-nintendo', 'jeux-video', 2, 'es');

-- NIVEAU 3 : Jeux Switch, Jeux 3DS, etc. (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-switch', 'Juegos Switch', 'jeux-switch', 'jeux-nintendo', 3, 'es'),
('jeux-3ds', 'Juegos 3DS', 'jeux-3ds', 'jeux-nintendo', 3, 'es'),
('jeux-ds', 'Juegos DS', 'jeux-ds', 'jeux-nintendo', 3, 'es'),
('jeux-wii-u', 'Juegos Wii U', 'jeux-wii-u', 'jeux-nintendo', 3, 'es'),
('jeux-wii', 'Juegos Wii', 'jeux-wii', 'jeux-nintendo', 3, 'es');

-- NIVEAU 2 : Jeux PC (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-pc', 'Juegos PC', 'jeux-pc', 'jeux-video', 2, 'es');

-- NIVEAU 3 : Jeux Steam, Jeux Epic Games, etc. (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-steam', 'Juegos Steam', 'jeux-steam', 'jeux-pc', 3, 'es'),
('jeux-epic-games', 'Juegos Epic Games', 'jeux-epic-games', 'jeux-pc', 3, 'es'),
('jeux-battle-net', 'Juegos Battle.net', 'jeux-battle-net', 'jeux-pc', 3, 'es'),
('jeux-origin', 'Juegos Origin', 'jeux-origin', 'jeux-pc', 3, 'es'),
('jeux-uplay', 'Juegos Uplay', 'jeux-uplay', 'jeux-pc', 3, 'es'),
('jeux-gog', 'Juegos GOG', 'jeux-gog', 'jeux-pc', 3, 'es'),
('jeux-microsoft-store', 'Juegos Microsoft Store', 'jeux-microsoft-store', 'jeux-pc', 3, 'es');

-- NIVEAU 0 : Jeux Vidéo & Consoles (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-video-consoles', 'Videospiele & Konsolen', 'jeux-video-consoles', NULL, 0, 'de');

-- NIVEAU 1 : Consoles de jeux (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('consoles-de-jeux', 'Spielkonsolen', 'consoles-de-jeux', 'jeux-video-consoles', 1, 'de');

-- NIVEAU 2 : Consoles de salon (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('consoles-salon', 'Heimkonsolen', 'consoles-salon', 'consoles-de-jeux', 2, 'de');

-- NIVEAU 3 : PlayStation, Xbox, Nintendo Switch, etc. (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('playstation-5', 'PlayStation 5', 'playstation-5', 'consoles-salon', 3, 'de'),
('playstation-4', 'PlayStation 4', 'playstation-4', 'consoles-salon', 3, 'de'),
('xbox-series-x', 'Xbox Series X', 'xbox-series-x', 'consoles-salon', 3, 'de'),
('xbox-series-s', 'Xbox Series S', 'xbox-series-s', 'consoles-salon', 3, 'de'),
('xbox-one', 'Xbox One', 'xbox-one', 'consoles-salon', 3, 'de'),
('nintendo-switch', 'Nintendo Switch', 'nintendo-switch', 'consoles-salon', 3, 'de'),
('nintendo-switch-oled', 'Nintendo Switch OLED', 'nintendo-switch-oled', 'consoles-salon', 3, 'de'),
('nintendo-switch-lite', 'Nintendo Switch Lite', 'nintendo-switch-lite', 'consoles-salon', 3, 'de');

-- NIVEAU 2 : Consoles portables (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('consoles-portables', 'Portable Konsolen', 'consoles-portables', 'consoles-de-jeux', 2, 'de');

-- NIVEAU 3 : Nintendo 3DS, PlayStation Vita, etc. (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('nintendo-3ds', 'Nintendo 3DS', 'nintendo-3ds', 'consoles-portables', 3, 'de'),
('nintendo-2ds', 'Nintendo 2DS', 'nintendo-2ds', 'consoles-portables', 3, 'de'),
('playstation-vita', 'PlayStation Vita', 'playstation-vita', 'consoles-portables', 3, 'de'),
('consoles-retro-portables', 'Retro Portable Konsolen', 'consoles-retro-portables', 'consoles-portables', 3, 'de');

-- NIVEAU 2 : Accessoires consoles (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('accessoires-consoles', 'Konsolen-Zubehör', 'accessoires-consoles', 'consoles-de-jeux', 2, 'de');

-- NIVEAU 3 : Manettes, Volants, Casques gaming, etc. (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('manettes', 'Controller', 'manettes', 'accessoires-consoles', 3, 'de'),
('manettes-ps5', 'PS5 Controller', 'manettes-ps5', 'accessoires-consoles', 3, 'de'),
('manettes-ps4', 'PS4 Controller', 'manettes-ps4', 'accessoires-consoles', 3, 'de'),
('manettes-xbox', 'Xbox Controller', 'manettes-xbox', 'accessoires-consoles', 3, 'de'),
('manettes-switch', 'Switch Controller', 'manettes-switch', 'accessoires-consoles', 3, 'de'),
('volants-gaming', 'Gaming-Lenkräder', 'volants-gaming', 'accessoires-consoles', 3, 'de'),
('casques-gaming-consoles', 'Gaming-Kopfhörer Konsolen', 'casques-gaming-consoles', 'accessoires-consoles', 3, 'de'),
('chargeurs-consoles', 'Konsolen-Ladegeräte', 'chargeurs-consoles', 'accessoires-consoles', 3, 'de'),
('supports-manettes', 'Controller-Halterungen', 'supports-manettes', 'accessoires-consoles', 3, 'de'),
('etuis-consoles', 'Konsolen-Hüllen', 'etuis-consoles', 'accessoires-consoles', 3, 'de');

-- NIVEAU 1 : Jeux vidéo (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-video', 'Videospiele', 'jeux-video', 'jeux-video-consoles', 1, 'de');

-- NIVEAU 2 : Jeux PlayStation (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-playstation', 'PlayStation-Spiele', 'jeux-playstation', 'jeux-video', 2, 'de');

-- NIVEAU 3 : Jeux PS5, Jeux PS4, etc. (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-ps5', 'PS5-Spiele', 'jeux-ps5', 'jeux-playstation', 3, 'de'),
('jeux-ps4', 'PS4-Spiele', 'jeux-ps4', 'jeux-playstation', 3, 'de'),
('jeux-ps3', 'PS3-Spiele', 'jeux-ps3', 'jeux-playstation', 3, 'de'),
('jeux-ps-vita', 'PS Vita-Spiele', 'jeux-ps-vita', 'jeux-playstation', 3, 'de'),
('jeux-psp', 'PSP-Spiele', 'jeux-psp', 'jeux-playstation', 3, 'de');

-- NIVEAU 2 : Jeux Xbox (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-xbox', 'Xbox-Spiele', 'jeux-xbox', 'jeux-video', 2, 'de');

-- NIVEAU 3 : Jeux Xbox Series, Jeux Xbox One, etc. (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-xbox-series', 'Xbox Series-Spiele', 'jeux-xbox-series', 'jeux-xbox', 3, 'de'),
('jeux-xbox-one', 'Xbox One-Spiele', 'jeux-xbox-one', 'jeux-xbox', 3, 'de'),
('jeux-xbox-360', 'Xbox 360-Spiele', 'jeux-xbox-360', 'jeux-xbox', 3, 'de');

-- NIVEAU 2 : Jeux Nintendo (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-nintendo', 'Nintendo-Spiele', 'jeux-nintendo', 'jeux-video', 2, 'de');

-- NIVEAU 3 : Jeux Switch, Jeux 3DS, etc. (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-switch', 'Switch-Spiele', 'jeux-switch', 'jeux-nintendo', 3, 'de'),
('jeux-3ds', '3DS-Spiele', 'jeux-3ds', 'jeux-nintendo', 3, 'de'),
('jeux-ds', 'DS-Spiele', 'jeux-ds', 'jeux-nintendo', 3, 'de'),
('jeux-wii-u', 'Wii U-Spiele', 'jeux-wii-u', 'jeux-nintendo', 3, 'de'),
('jeux-wii', 'Wii-Spiele', 'jeux-wii', 'jeux-nintendo', 3, 'de');

-- NIVEAU 2 : Jeux PC (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-pc', 'PC-Spiele', 'jeux-pc', 'jeux-video', 2, 'de');

-- NIVEAU 3 : Jeux Steam, Jeux Epic Games, etc. (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-steam', 'Steam-Spiele', 'jeux-steam', 'jeux-pc', 3, 'de'),
('jeux-epic-games', 'Epic Games-Spiele', 'jeux-epic-games', 'jeux-pc', 3, 'de'),
('jeux-battle-net', 'Battle.net-Spiele', 'jeux-battle-net', 'jeux-pc', 3, 'de'),
('jeux-origin', 'Origin-Spiele', 'jeux-origin', 'jeux-pc', 3, 'de'),
('jeux-uplay', 'Uplay-Spiele', 'jeux-uplay', 'jeux-pc', 3, 'de'),
('jeux-gog', 'GOG-Spiele', 'jeux-gog', 'jeux-pc', 3, 'de'),
('jeux-microsoft-store', 'Microsoft Store-Spiele', 'jeux-microsoft-store', 'jeux-pc', 3, 'de');

-- NIVEAU 0 : Jeux Vidéo & Consoles (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-video-consoles', 'Video Games & Consoles', 'jeux-video-consoles', NULL, 0, 'en');

-- NIVEAU 1 : Consoles de jeux (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('consoles-de-jeux', 'Gaming Consoles', 'consoles-de-jeux', 'jeux-video-consoles', 1, 'en');

-- NIVEAU 2 : Consoles de salon (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('consoles-salon', 'Home Consoles', 'consoles-salon', 'consoles-de-jeux', 2, 'en');

-- NIVEAU 3 : PlayStation, Xbox, Nintendo Switch, etc. (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('playstation-5', 'PlayStation 5', 'playstation-5', 'consoles-salon', 3, 'en'),
('playstation-4', 'PlayStation 4', 'playstation-4', 'consoles-salon', 3, 'en'),
('xbox-series-x', 'Xbox Series X', 'xbox-series-x', 'consoles-salon', 3, 'en'),
('xbox-series-s', 'Xbox Series S', 'xbox-series-s', 'consoles-salon', 3, 'en'),
('xbox-one', 'Xbox One', 'xbox-one', 'consoles-salon', 3, 'en'),
('nintendo-switch', 'Nintendo Switch', 'nintendo-switch', 'consoles-salon', 3, 'en'),
('nintendo-switch-oled', 'Nintendo Switch OLED', 'nintendo-switch-oled', 'consoles-salon', 3, 'en'),
('nintendo-switch-lite', 'Nintendo Switch Lite', 'nintendo-switch-lite', 'consoles-salon', 3, 'en');

-- NIVEAU 2 : Consoles portables (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('consoles-portables', 'Portable Consoles', 'consoles-portables', 'consoles-de-jeux', 2, 'en');

-- NIVEAU 3 : Nintendo 3DS, PlayStation Vita, etc. (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('nintendo-3ds', 'Nintendo 3DS', 'nintendo-3ds', 'consoles-portables', 3, 'en'),
('nintendo-2ds', 'Nintendo 2DS', 'nintendo-2ds', 'consoles-portables', 3, 'en'),
('playstation-vita', 'PlayStation Vita', 'playstation-vita', 'consoles-portables', 3, 'en'),
('consoles-retro-portables', 'Retro Portable Consoles', 'consoles-retro-portables', 'consoles-portables', 3, 'en');

-- NIVEAU 2 : Accessoires consoles (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('accessoires-consoles', 'Console Accessories', 'accessoires-consoles', 'consoles-de-jeux', 2, 'en');

-- NIVEAU 3 : Manettes, Volants, Casques gaming, etc. (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('manettes', 'Controllers', 'manettes', 'accessoires-consoles', 3, 'en'),
('manettes-ps5', 'PS5 Controllers', 'manettes-ps5', 'accessoires-consoles', 3, 'en'),
('manettes-ps4', 'PS4 Controllers', 'manettes-ps4', 'accessoires-consoles', 3, 'en'),
('manettes-xbox', 'Xbox Controllers', 'manettes-xbox', 'accessoires-consoles', 3, 'en'),
('manettes-switch', 'Switch Controllers', 'manettes-switch', 'accessoires-consoles', 3, 'en'),
('volants-gaming', 'Gaming Wheels', 'volants-gaming', 'accessoires-consoles', 3, 'en'),
('casques-gaming-consoles', 'Gaming Headsets Consoles', 'casques-gaming-consoles', 'accessoires-consoles', 3, 'en'),
('chargeurs-consoles', 'Console Chargers', 'chargeurs-consoles', 'accessoires-consoles', 3, 'en'),
('supports-manettes', 'Controller Stands', 'supports-manettes', 'accessoires-consoles', 3, 'en'),
('etuis-consoles', 'Console Cases', 'etuis-consoles', 'accessoires-consoles', 3, 'en');

-- NIVEAU 1 : Jeux vidéo (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-video', 'Video Games', 'jeux-video', 'jeux-video-consoles', 1, 'en');

-- NIVEAU 2 : Jeux PlayStation (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-playstation', 'PlayStation Games', 'jeux-playstation', 'jeux-video', 2, 'en');

-- NIVEAU 3 : Jeux PS5, Jeux PS4, etc. (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-ps5', 'PS5 Games', 'jeux-ps5', 'jeux-playstation', 3, 'en'),
('jeux-ps4', 'PS4 Games', 'jeux-ps4', 'jeux-playstation', 3, 'en'),
('jeux-ps3', 'PS3 Games', 'jeux-ps3', 'jeux-playstation', 3, 'en'),
('jeux-ps-vita', 'PS Vita Games', 'jeux-ps-vita', 'jeux-playstation', 3, 'en'),
('jeux-psp', 'PSP Games', 'jeux-psp', 'jeux-playstation', 3, 'en');

-- NIVEAU 2 : Jeux Xbox (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-xbox', 'Xbox Games', 'jeux-xbox', 'jeux-video', 2, 'en');

-- NIVEAU 3 : Jeux Xbox Series, Jeux Xbox One, etc. (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-xbox-series', 'Xbox Series Games', 'jeux-xbox-series', 'jeux-xbox', 3, 'en'),
('jeux-xbox-one', 'Xbox One Games', 'jeux-xbox-one', 'jeux-xbox', 3, 'en'),
('jeux-xbox-360', 'Xbox 360 Games', 'jeux-xbox-360', 'jeux-xbox', 3, 'en');

-- NIVEAU 2 : Jeux Nintendo (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-nintendo', 'Nintendo Games', 'jeux-nintendo', 'jeux-video', 2, 'en');

-- NIVEAU 3 : Jeux Switch, Jeux 3DS, etc. (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-switch', 'Switch Games', 'jeux-switch', 'jeux-nintendo', 3, 'en'),
('jeux-3ds', '3DS Games', 'jeux-3ds', 'jeux-nintendo', 3, 'en'),
('jeux-ds', 'DS Games', 'jeux-ds', 'jeux-nintendo', 3, 'en'),
('jeux-wii-u', 'Wii U Games', 'jeux-wii-u', 'jeux-nintendo', 3, 'en'),
('jeux-wii', 'Wii Games', 'jeux-wii', 'jeux-nintendo', 3, 'en');

-- NIVEAU 2 : Jeux PC (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-pc', 'PC Games', 'jeux-pc', 'jeux-video', 2, 'en');

-- NIVEAU 3 : Jeux Steam, Jeux Epic Games, etc. (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-steam', 'Steam Games', 'jeux-steam', 'jeux-pc', 3, 'en'),
('jeux-epic-games', 'Epic Games', 'jeux-epic-games', 'jeux-pc', 3, 'en'),
('jeux-battle-net', 'Battle.net Games', 'jeux-battle-net', 'jeux-pc', 3, 'en'),
('jeux-origin', 'Origin Games', 'jeux-origin', 'jeux-pc', 3, 'en'),
('jeux-uplay', 'Uplay Games', 'jeux-uplay', 'jeux-pc', 3, 'en'),
('jeux-gog', 'GOG Games', 'jeux-gog', 'jeux-pc', 3, 'en'),
('jeux-microsoft-store', 'Microsoft Store Games', 'jeux-microsoft-store', 'jeux-pc', 3, 'en');

-- NIVEAU 0 : Jeux Vidéo & Consoles (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-video-consoles', 'Videogiochi e Console', 'jeux-video-consoles', NULL, 0, 'it');

-- NIVEAU 1 : Consoles de jeux (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('consoles-de-jeux', 'Console di giochi', 'consoles-de-jeux', 'jeux-video-consoles', 1, 'it');

-- NIVEAU 2 : Consoles de salon (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('consoles-salon', 'Console da salotto', 'consoles-salon', 'consoles-de-jeux', 2, 'it');

-- NIVEAU 3 : PlayStation, Xbox, Nintendo Switch, etc. (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('playstation-5', 'PlayStation 5', 'playstation-5', 'consoles-salon', 3, 'it'),
('playstation-4', 'PlayStation 4', 'playstation-4', 'consoles-salon', 3, 'it'),
('xbox-series-x', 'Xbox Series X', 'xbox-series-x', 'consoles-salon', 3, 'it'),
('xbox-series-s', 'Xbox Series S', 'xbox-series-s', 'consoles-salon', 3, 'it'),
('xbox-one', 'Xbox One', 'xbox-one', 'consoles-salon', 3, 'it'),
('nintendo-switch', 'Nintendo Switch', 'nintendo-switch', 'consoles-salon', 3, 'it'),
('nintendo-switch-oled', 'Nintendo Switch OLED', 'nintendo-switch-oled', 'consoles-salon', 3, 'it'),
('nintendo-switch-lite', 'Nintendo Switch Lite', 'nintendo-switch-lite', 'consoles-salon', 3, 'it');

-- NIVEAU 2 : Consoles portables (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('consoles-portables', 'Console portatili', 'consoles-portables', 'consoles-de-jeux', 2, 'it');

-- NIVEAU 3 : Nintendo 3DS, PlayStation Vita, etc. (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('nintendo-3ds', 'Nintendo 3DS', 'nintendo-3ds', 'consoles-portables', 3, 'it'),
('nintendo-2ds', 'Nintendo 2DS', 'nintendo-2ds', 'consoles-portables', 3, 'it'),
('playstation-vita', 'PlayStation Vita', 'playstation-vita', 'consoles-portables', 3, 'it'),
('consoles-retro-portables', 'Console retro portatili', 'consoles-retro-portables', 'consoles-portables', 3, 'it');

-- NIVEAU 2 : Accessoires consoles (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('accessoires-consoles', 'Accessori console', 'accessoires-consoles', 'consoles-de-jeux', 2, 'it');

-- NIVEAU 3 : Manettes, Volants, Casques gaming, etc. (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('manettes', 'Controller', 'manettes', 'accessoires-consoles', 3, 'it'),
('manettes-ps5', 'Controller PS5', 'manettes-ps5', 'accessoires-consoles', 3, 'it'),
('manettes-ps4', 'Controller PS4', 'manettes-ps4', 'accessoires-consoles', 3, 'it'),
('manettes-xbox', 'Controller Xbox', 'manettes-xbox', 'accessoires-consoles', 3, 'it'),
('manettes-switch', 'Controller Switch', 'manettes-switch', 'accessoires-consoles', 3, 'it'),
('volants-gaming', 'Volanti gaming', 'volants-gaming', 'accessoires-consoles', 3, 'it'),
('casques-gaming-consoles', 'Cuffie gaming console', 'casques-gaming-consoles', 'accessoires-consoles', 3, 'it'),
('chargeurs-consoles', 'Caricatori console', 'chargeurs-consoles', 'accessoires-consoles', 3, 'it'),
('supports-manettes', 'Supporti controller', 'supports-manettes', 'accessoires-consoles', 3, 'it'),
('etuis-consoles', 'Custodie console', 'etuis-consoles', 'accessoires-consoles', 3, 'it');

-- NIVEAU 1 : Jeux vidéo (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-video', 'Videogiochi', 'jeux-video', 'jeux-video-consoles', 1, 'it');

-- NIVEAU 2 : Jeux PlayStation (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-playstation', 'Giochi PlayStation', 'jeux-playstation', 'jeux-video', 2, 'it');

-- NIVEAU 3 : Jeux PS5, Jeux PS4, etc. (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-ps5', 'Giochi PS5', 'jeux-ps5', 'jeux-playstation', 3, 'it'),
('jeux-ps4', 'Giochi PS4', 'jeux-ps4', 'jeux-playstation', 3, 'it'),
('jeux-ps3', 'Giochi PS3', 'jeux-ps3', 'jeux-playstation', 3, 'it'),
('jeux-ps-vita', 'Giochi PS Vita', 'jeux-ps-vita', 'jeux-playstation', 3, 'it'),
('jeux-psp', 'Giochi PSP', 'jeux-psp', 'jeux-playstation', 3, 'it');

-- NIVEAU 2 : Jeux Xbox (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-xbox', 'Giochi Xbox', 'jeux-xbox', 'jeux-video', 2, 'it');

-- NIVEAU 3 : Jeux Xbox Series, Jeux Xbox One, etc. (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-xbox-series', 'Giochi Xbox Series', 'jeux-xbox-series', 'jeux-xbox', 3, 'it'),
('jeux-xbox-one', 'Giochi Xbox One', 'jeux-xbox-one', 'jeux-xbox', 3, 'it'),
('jeux-xbox-360', 'Giochi Xbox 360', 'jeux-xbox-360', 'jeux-xbox', 3, 'it');

-- NIVEAU 2 : Jeux Nintendo (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-nintendo', 'Giochi Nintendo', 'jeux-nintendo', 'jeux-video', 2, 'it');

-- NIVEAU 3 : Jeux Switch, Jeux 3DS, etc. (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-switch', 'Giochi Switch', 'jeux-switch', 'jeux-nintendo', 3, 'it'),
('jeux-3ds', 'Giochi 3DS', 'jeux-3ds', 'jeux-nintendo', 3, 'it'),
('jeux-ds', 'Giochi DS', 'jeux-ds', 'jeux-nintendo', 3, 'it'),
('jeux-wii-u', 'Giochi Wii U', 'jeux-wii-u', 'jeux-nintendo', 3, 'it'),
('jeux-wii', 'Giochi Wii', 'jeux-wii', 'jeux-nintendo', 3, 'it');

-- NIVEAU 2 : Jeux PC (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-pc', 'Giochi PC', 'jeux-pc', 'jeux-video', 2, 'it');

-- NIVEAU 3 : Jeux Steam, Jeux Epic Games, etc. (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('jeux-steam', 'Giochi Steam', 'jeux-steam', 'jeux-pc', 3, 'it'),
('jeux-epic-games', 'Giochi Epic Games', 'jeux-epic-games', 'jeux-pc', 3, 'it'),
('jeux-battle-net', 'Giochi Battle.net', 'jeux-battle-net', 'jeux-pc', 3, 'it'),
('jeux-origin', 'Giochi Origin', 'jeux-origin', 'jeux-pc', 3, 'it'),
('jeux-uplay', 'Giochi Uplay', 'jeux-uplay', 'jeux-pc', 3, 'it'),
('jeux-gog', 'Giochi GOG', 'jeux-gog', 'jeux-pc', 3, 'it'),
('jeux-microsoft-store', 'Giochi Microsoft Store', 'jeux-microsoft-store', 'jeux-pc', 3, 'it');