-- Migration BTP, Engins & Construction - Toutes les langues
-- Catégorie principale et sous-catégories pour AR, FR, EN, ES, DE, IT

-- ARABE
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES ('btp-engins-construction', 'البناء، الآليات والإنشاءات', 'btp-engins-construction', NULL, 0, 'ar');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('engins-de-chantier', 'معدات وآليات البناء', 'engins-de-chantier', 'btp-engins-construction', 1, 'ar'),
('vehicules-transport-materiaux', 'مركبات ونقل المواد', 'vehicules-transport-materiaux', 'btp-engins-construction', 1, 'ar'),
('materiel-de-construction', 'معدات البناء', 'materiel-de-construction', 'btp-engins-construction', 1, 'ar'),
('materiaux-de-construction', 'مواد البناء', 'materiaux-de-construction', 'btp-engins-construction', 1, 'ar'),
('quincaillerie-fixations', 'العدد والمثبتات', 'quincaillerie-fixations', 'btp-engins-construction', 1, 'ar'),
('equipements-electriques-plomberie', 'كهرباء وسباكة', 'equipements-electriques-plomberie', 'btp-engins-construction', 1, 'ar'),
('outils-equipements-professionnels', 'أدوات ومعدات مهنية', 'outils-equipements-professionnels', 'btp-engins-construction', 1, 'ar'),
('securite-protection', 'السلامة ومعدات الوقاية', 'securite-protection', 'btp-engins-construction', 1, 'ar'),
('construction-modulaire-structures', 'إنشاءات معيارية وهياكل', 'construction-modulaire-structures', 'btp-engins-construction', 1, 'ar'),
('location-materiel-btp', 'تأجير معدات البناء', 'location-materiel-btp', 'btp-engins-construction', 1, 'ar'),
('services-lies-au-btp', 'خدمات البناء', 'services-lies-au-btp', 'btp-engins-construction', 1, 'ar');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('pelles-hydrauliques', 'حفارات هيدروليكية', 'pelles-hydrauliques', 'engins-de-chantier', 2, 'ar'),
('mini-pelles', 'حفارات صغيرة', 'mini-pelles', 'engins-de-chantier', 2, 'ar'),
('chargeuses', 'جرافات', 'chargeuses', 'engins-de-chantier', 2, 'ar'),
('bulldozers', 'بلدوزرات', 'bulldozers', 'engins-de-chantier', 2, 'ar'),
('niveleuses', 'ممهدات طرق', 'niveleuses', 'engins-de-chantier', 2, 'ar'),
('tractopelles', 'لودر حفار', 'tractopelles', 'engins-de-chantier', 2, 'ar'),
('compacteurs', 'مدحلات', 'compacteurs', 'engins-de-chantier', 2, 'ar'),
('rouleaux-compresseurs', 'مداحل أسطوانية', 'rouleaux-compresseurs', 'engins-de-chantier', 2, 'ar'),
('dumpers', 'دامبرات', 'dumpers', 'engins-de-chantier', 2, 'ar'),
('camions-bennes', 'شاحنات قلابة', 'camions-bennes', 'engins-de-chantier', 2, 'ar'),
('grues-mobiles', 'رافعات متنقلة', 'grues-mobiles', 'engins-de-chantier', 2, 'ar'),
('grues-a-tour', 'رافعات برجية', 'grues-a-tour', 'engins-de-chantier', 2, 'ar'),
('chariots-telescopiques', 'مناولات تلسكوبية', 'chariots-telescopiques', 'engins-de-chantier', 2, 'ar'),
('nacelles-elevatrices', 'منصات رفع', 'nacelles-elevatrices', 'engins-de-chantier', 2, 'ar'),
('foreuses', 'معدات حفر', 'foreuses', 'engins-de-chantier', 2, 'ar'),
('retrochargeuses', 'لودر حفار', 'retrochargeuses', 'engins-de-chantier', 2, 'ar');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('camions-de-chantier', 'شاحنات موقع البناء', 'camions-de-chantier', 'vehicules-transport-materiaux', 2, 'ar'),
('camions-malaxeurs-toupies-beton', 'شاحنات خلاط خرسانة', 'camions-malaxeurs-toupies-beton', 'vehicules-transport-materiaux', 2, 'ar'),
('camions-porte-engins', 'شاحنات ناقلة معدات', 'camions-porte-engins', 'vehicules-transport-materiaux', 2, 'ar'),
('remorques-de-chantier', 'مقطورات الموقع', 'remorques-de-chantier', 'vehicules-transport-materiaux', 2, 'ar'),
('vehicules-utilitaires', 'مركبات تجارية', 'vehicules-utilitaires', 'vehicules-transport-materiaux', 2, 'ar'),
('pick-ups', 'بيك أب', 'pick-ups', 'vehicules-transport-materiaux', 2, 'ar'),
('fourgons', 'فانات', 'fourgons', 'vehicules-transport-materiaux', 2, 'ar');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('betonnieres', 'خلاطات خرسانة', 'betonnieres', 'materiel-de-construction', 2, 'ar'),
('vibrateurs-beton', 'هزازات الخرسانة', 'vibrateurs-beton', 'materiel-de-construction', 2, 'ar'),
('pompes-a-beton', 'مضخات الخرسانة', 'pompes-a-beton', 'materiel-de-construction', 2, 'ar'),
('coffrages', 'قوالب صب', 'coffrages', 'materiel-de-construction', 2, 'ar'),
('etais', 'دعامات', 'etais', 'materiel-de-construction', 2, 'ar'),
('echafaudages', 'سقالات', 'echafaudages', 'materiel-de-construction', 2, 'ar'),
('echelles', 'سلالم', 'echelles', 'materiel-de-construction', 2, 'ar'),
('outils-pneumatiques', 'أدوات هوائية', 'outils-pneumatiques', 'materiel-de-construction', 2, 'ar'),
('marteaux-piqueurs', 'مطارق هدم', 'marteaux-piqueurs', 'materiel-de-construction', 2, 'ar'),
('scies-de-chantier', 'مناشير موقع البناء', 'scies-de-chantier', 'materiel-de-construction', 2, 'ar'),
('groupes-electrogenes', 'مولدات كهرباء', 'groupes-electrogenes', 'materiel-de-construction', 2, 'ar'),
('compresseurs', 'ضواغط', 'compresseurs', 'materiel-de-construction', 2, 'ar'),
('lasers-niveaux', 'أجهزة ليزر ومستويات', 'lasers-niveaux', 'materiel-de-construction', 2, 'ar');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('ciment', 'أسمنت', 'ciment', 'materiaux-de-construction', 2, 'ar'),
('beton-pret-a-lemploi', 'خرسانة جاهزة', 'beton-pret-a-lemploi', 'materiaux-de-construction', 2, 'ar'),
('sable-gravier', 'رمل وحصى', 'sable-gravier', 'materiaux-de-construction', 2, 'ar'),
('briques-blocs', 'طوب وبلوكات', 'briques-blocs', 'materiaux-de-construction', 2, 'ar'),
('parpaings', 'بلوك خرسانة', 'parpaings', 'materiaux-de-construction', 2, 'ar'),
('pierres-naturelles', 'حجر طبيعي', 'pierres-naturelles', 'materiaux-de-construction', 2, 'ar'),
('bois-de-construction', 'خشب بناء', 'bois-de-construction', 'materiaux-de-construction', 2, 'ar'),
('tuiles-toitures', 'قرميد وأسقف', 'tuiles-toitures', 'materiaux-de-construction', 2, 'ar'),
('plaques-de-platre', 'ألواح جبس', 'plaques-de-platre', 'materiaux-de-construction', 2, 'ar'),
('isolants', 'مواد عازلة', 'isolants', 'materiaux-de-construction', 2, 'ar'),
('peintures-enduits', 'دهانات وطلاءات', 'peintures-enduits', 'materiaux-de-construction', 2, 'ar'),
('revetements-sols-murs', 'أرضيات وكسوات جدران', 'revetements-sols-murs', 'materiaux-de-construction', 2, 'ar');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('vis-boulons', 'مسامير وصواميل', 'vis-boulons', 'quincaillerie-fixations', 2, 'ar'),
('chevilles', 'مراسي تثبيت', 'chevilles', 'quincaillerie-fixations', 2, 'ar'),
('clous', 'مسامير', 'clous', 'quincaillerie-fixations', 2, 'ar'),
('equerres', 'زوايا تثبيت', 'equerres', 'quincaillerie-fixations', 2, 'ar'),
('charniere', 'مفصلات', 'charniere', 'quincaillerie-fixations', 2, 'ar'),
('serrures', 'أقفال', 'serrures', 'quincaillerie-fixations', 2, 'ar'),
('cadenas', 'أقفال معلّقة', 'cadenas', 'quincaillerie-fixations', 2, 'ar'),
('colles-mastics', 'مواد لاصقة ومانعات تسرب', 'colles-mastics', 'quincaillerie-fixations', 2, 'ar'),
('rubans-adhesifs', 'أشرطة لاصقة', 'rubans-adhesifs', 'quincaillerie-fixations', 2, 'ar'),
('joints-silicone', 'حشوات وسيليكون', 'joints-silicone', 'quincaillerie-fixations', 2, 'ar');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('cables-electriques', 'كابلات كهربائية', 'cables-electriques', 'equipements-electriques-plomberie', 2, 'ar'),
('interrupteurs-prises', 'مفاتيح ومقابس', 'interrupteurs-prises', 'equipements-electriques-plomberie', 2, 'ar'),
('disjoncteurs', 'قواطع كهربائية', 'disjoncteurs', 'equipements-electriques-plomberie', 2, 'ar'),
('tableaux-electriques', 'لوحات كهربائية', 'tableaux-electriques', 'equipements-electriques-plomberie', 2, 'ar'),
('eclairage-chantier', 'إنارة موقع البناء', 'eclairage-chantier', 'equipements-electriques-plomberie', 2, 'ar'),
('tuyaux-raccords', 'أنابيب ووصلات', 'tuyaux-raccords', 'equipements-electriques-plomberie', 2, 'ar'),
('robinets', 'صنابير', 'robinets', 'equipements-electriques-plomberie', 2, 'ar'),
('compteurs-eau', 'عدادات مياه', 'compteurs-eau', 'equipements-electriques-plomberie', 2, 'ar'),
('pompes', 'مضخات', 'pompes', 'equipements-electriques-plomberie', 2, 'ar'),
('chauffe-eau', 'سخانات مياه', 'chauffe-eau', 'equipements-electriques-plomberie', 2, 'ar'),
('sanitaires', 'مرافق صحية', 'sanitaires', 'equipements-electriques-plomberie', 2, 'ar');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('outils-manuels', 'أدوات يدوية (مطارق، مفاتيح، مفكات، مستويات)', 'outils-manuels', 'outils-equipements-professionnels', 2, 'ar'),
('outils-de-mesure', 'أدوات قياس', 'outils-de-mesure', 'outils-equipements-professionnels', 2, 'ar'),
('mallettes-coffrets', 'حقائب وصناديق أدوات', 'mallettes-coffrets', 'outils-equipements-professionnels', 2, 'ar'),
('outils-diamantes', 'أدوات ماسيّة', 'outils-diamantes', 'outils-equipements-professionnels', 2, 'ar'),
('meuleuses', 'جلاخات', 'meuleuses', 'outils-equipements-professionnels', 2, 'ar'),
('perforateurs', 'مطارق دوارة', 'perforateurs', 'outils-equipements-professionnels', 2, 'ar'),
('perceuses', 'مثاقب', 'perceuses', 'outils-equipements-professionnels', 2, 'ar'),
('scies-circulaires', 'مناشير دائرية', 'scies-circulaires', 'outils-equipements-professionnels', 2, 'ar'),
('ponceuses', 'أجهزة صنفرة', 'ponceuses', 'outils-equipements-professionnels', 2, 'ar'),
('lasers-rotatifs', 'ليزر دوّار', 'lasers-rotatifs', 'outils-equipements-professionnels', 2, 'ar');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('casques-de-chantier', 'خوذات أمان', 'casques-de-chantier', 'securite-protection', 2, 'ar'),
('gilets-haute-visibilite', 'سترات عالية الرؤية', 'gilets-haute-visibilite', 'securite-protection', 2, 'ar'),
('chaussures-de-securite', 'أحذية أمان', 'chaussures-de-securite', 'securite-protection', 2, 'ar'),
('gants-de-protection', 'قفازات حماية', 'gants-de-protection', 'securite-protection', 2, 'ar'),
('lunettes', 'نظارات واقية', 'lunettes', 'securite-protection', 2, 'ar'),
('masques-anti-poussiere', 'أقنعة مضادة للغبار', 'masques-anti-poussiere', 'securite-protection', 2, 'ar'),
('harnais-de-securite', 'أحزمة أمان', 'harnais-de-securite', 'securite-protection', 2, 'ar'),
('filets-de-protection', 'شبكات أمان', 'filets-de-protection', 'securite-protection', 2, 'ar'),
('barrieres-de-chantier', 'حواجز موقع البناء', 'barrieres-de-chantier', 'securite-protection', 2, 'ar');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('bungalows-bases-vie', 'مساكن موقع', 'bungalows-bases-vie', 'construction-modulaire-structures', 2, 'ar'),
('conteneurs-amenages', 'حاويات مجهّزة', 'conteneurs-amenages', 'construction-modulaire-structures', 2, 'ar'),
('cabanes-abris', 'أكواخ وملاجئ', 'cabanes-abris', 'construction-modulaire-structures', 2, 'ar'),
('hangars-metalliques', 'مستودعات معدنية', 'hangars-metalliques', 'construction-modulaire-structures', 2, 'ar'),
('structures-prefabriquees', 'هياكل مسبقة الصنع', 'structures-prefabriquees', 'construction-modulaire-structures', 2, 'ar'),
('serres-couvertures-industrielles', 'بيوت زجاجية وأغطية صناعية', 'serres-couvertures-industrielles', 'construction-modulaire-structures', 2, 'ar');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('location-d-engins', 'تأجير الآليات (حفارات، منصات، شاحنات)', 'location-d-engins', 'location-materiel-btp', 2, 'ar'),
('location-d-outillage', 'تأجير الأدوات', 'location-d-outillage', 'location-materiel-btp', 2, 'ar'),
('location-coffrage-echafaudage', 'تأجير القوالب والسقالات', 'location-coffrage-echafaudage', 'location-materiel-btp', 2, 'ar'),
('location-groupes-electrogenes', 'تأجير المولدات', 'location-groupes-electrogenes', 'location-materiel-btp', 2, 'ar'),
('location-bungalows', 'تأجير مساكن الموقع', 'location-bungalows', 'location-materiel-btp', 2, 'ar');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('travaux-publics', 'أشغال عامة', 'travaux-publics', 'services-lies-au-btp', 2, 'ar'),
('terrassement', 'أعمال حفر وردم', 'terrassement', 'services-lies-au-btp', 2, 'ar'),
('demolition', 'هدم', 'demolition', 'services-lies-au-btp', 2, 'ar'),
('maconnerie', 'أعمال بناء', 'maconnerie', 'services-lies-au-btp', 2, 'ar'),
('plomberie', 'سباكة', 'plomberie', 'services-lies-au-btp', 2, 'ar'),
('electricite', 'كهرباء', 'electricite', 'services-lies-au-btp', 2, 'ar'),
('menuiserie', 'نجارة', 'menuiserie', 'services-lies-au-btp', 2, 'ar'),
('charpente', 'هياكل خشبية', 'charpente', 'services-lies-au-btp', 2, 'ar'),
('peinture-finition', 'دهان & تشطيب', 'peinture-finition', 'services-lies-au-btp', 2, 'ar'),
('architecture-ingenierie', 'هندسة معمارية & هندسة', 'architecture-ingenierie', 'services-lies-au-btp', 2, 'ar'),
('topographie', 'مسح طبوغرافي', 'topographie', 'services-lies-au-btp', 2, 'ar');

-- FRANÇAIS
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES ('btp-engins-construction', 'BTP, Engins & Construction', 'btp-engins-construction', NULL, 0, 'fr');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('engins-de-chantier', 'Engins de chantier', 'engins-de-chantier', 'btp-engins-construction', 1, 'fr'),
('vehicules-transport-materiaux', 'Véhicules & transport de matériaux', 'vehicules-transport-materiaux', 'btp-engins-construction', 1, 'fr'),
('materiel-de-construction', 'Matériel de construction', 'materiel-de-construction', 'btp-engins-construction', 1, 'fr'),
('materiaux-de-construction', 'Matériaux de construction', 'materiaux-de-construction', 'btp-engins-construction', 1, 'fr'),
('quincaillerie-fixations', 'Quincaillerie & fixations', 'quincaillerie-fixations', 'btp-engins-construction', 1, 'fr'),
('equipements-electriques-plomberie', 'Équipements électriques & plomberie', 'equipements-electriques-plomberie', 'btp-engins-construction', 1, 'fr'),
('outils-equipements-professionnels', 'Outils & équipements professionnels', 'outils-equipements-professionnels', 'btp-engins-construction', 1, 'fr'),
('securite-protection', 'Équipements de sécurité & protection', 'securite-protection', 'btp-engins-construction', 1, 'fr'),
('construction-modulaire-structures', 'Construction modulaire & structures', 'construction-modulaire-structures', 'btp-engins-construction', 1, 'fr'),
('location-materiel-btp', 'Location de matériel BTP', 'location-materiel-btp', 'btp-engins-construction', 1, 'fr'),
('services-lies-au-btp', 'Services liés au BTP', 'services-lies-au-btp', 'btp-engins-construction', 1, 'fr');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('pelles-hydrauliques', 'Pelles hydrauliques', 'pelles-hydrauliques', 'engins-de-chantier', 2, 'fr'),
('mini-pelles', 'Mini-pelles', 'mini-pelles', 'engins-de-chantier', 2, 'fr'),
('chargeuses', 'Chargeuses', 'chargeuses', 'engins-de-chantier', 2, 'fr'),
('bulldozers', 'Bulldozers', 'bulldozers', 'engins-de-chantier', 2, 'fr'),
('niveleuses', 'Niveleuses', 'niveleuses', 'engins-de-chantier', 2, 'fr'),
('tractopelles', 'Tractopelles', 'tractopelles', 'engins-de-chantier', 2, 'fr'),
('compacteurs', 'Compacteurs', 'compacteurs', 'engins-de-chantier', 2, 'fr'),
('rouleaux-compresseurs', 'Rouleaux compresseurs', 'rouleaux-compresseurs', 'engins-de-chantier', 2, 'fr'),
('dumpers', 'Dumpers', 'dumpers', 'engins-de-chantier', 2, 'fr'),
('camions-bennes', 'Camions-bennes', 'camions-bennes', 'engins-de-chantier', 2, 'fr'),
('grues-mobiles', 'Grues mobiles', 'grues-mobiles', 'engins-de-chantier', 2, 'fr'),
('grues-a-tour', 'Grues à tour', 'grues-a-tour', 'engins-de-chantier', 2, 'fr'),
('chariots-telescopiques', 'Chariots télescopiques', 'chariots-telescopiques', 'engins-de-chantier', 2, 'fr'),
('nacelles-elevatrices', 'Nacelles élévatrices', 'nacelles-elevatrices', 'engins-de-chantier', 2, 'fr'),
('foreuses', 'Foreuses', 'foreuses', 'engins-de-chantier', 2, 'fr'),
('retrochargeuses', 'Rétrochargeuses', 'retrochargeuses', 'engins-de-chantier', 2, 'fr');

-- NIVEAU 3 : Engins de construction (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('bulldozers', 'Bulldozers', 'bulldozers', 'engins-de-chantier', 3, 'fr'),
('pelleteuses', 'Pelleteuses', 'pelleteuses', 'engins-de-chantier', 3, 'fr'),
('chargeuses', 'Chargeuses', 'chargeuses', 'engins-de-chantier', 3, 'fr'),
('niveleuses', 'Niveleuses', 'niveleuses', 'engins-de-chantier', 3, 'fr'),
('compacteurs', 'Compacteurs', 'compacteurs', 'engins-de-chantier', 3, 'fr'),
('grues', 'Grues', 'grues', 'engins-de-chantier', 3, 'fr'),
('grues-mobiles', 'Grues mobiles', 'grues-mobiles', 'engins-de-chantier', 3, 'fr'),
('grues-a-tour', 'Grues à tour', 'grues-a-tour', 'engins-de-chantier', 3, 'fr'),
('betonnieres', 'Bétonnières', 'betonnieres', 'engins-de-chantier', 3, 'fr'),
('pompees-a-beton', 'Pompes à béton', 'pompees-a-beton', 'engins-de-chantier', 3, 'fr'),
('chariots-elevateurs', 'Chariots élévateurs', 'chariots-elevateurs', 'engins-de-chantier', 3, 'fr');

-- NIVEAU 3 : Matériels BTP (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('beton', 'Béton', 'beton', 'materiaux-de-construction', 3, 'fr'),
('ciment', 'Ciment', 'ciment', 'materiaux-de-construction', 3, 'fr'),
('acier-de-construction', 'Acier de construction', 'acier-de-construction', 'materiaux-de-construction', 3, 'fr'),
('bois-de-charpente', 'Bois de charpente', 'bois-de-charpente', 'materiaux-de-construction', 3, 'fr'),
('carreaux-ceramiques', 'Carreaux céramiques', 'carreaux-ceramiques', 'materiaux-de-construction', 3, 'fr'),
('tuiles', 'Tuiles', 'tuiles', 'materiaux-de-construction', 3, 'fr'),
('ardoises', 'Ardoises', 'ardoises', 'materiaux-de-construction', 3, 'fr'),
('parpaings', 'Parpaings', 'parpaings', 'materiaux-de-construction', 3, 'fr'),
('briques', 'Briques', 'briques', 'materiaux-de-construction', 3, 'fr'),
('platre', 'Plâtre', 'platre', 'materiaux-de-construction', 3, 'fr');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('camions-de-chantier', 'Camions de chantier', 'camions-de-chantier', 'vehicules-transport-materiaux', 2, 'fr'),
('camions-malaxeurs-toupies-beton', 'Camions malaxeurs (toupies béton)', 'camions-malaxeurs-toupies-beton', 'vehicules-transport-materiaux', 2, 'fr'),
('camions-porte-engins', 'Camions porte-engins', 'camions-porte-engins', 'vehicules-transport-materiaux', 2, 'fr'),
('remorques-de-chantier', 'Remorques de chantier', 'remorques-de-chantier', 'vehicules-transport-materiaux', 2, 'fr'),
('vehicules-utilitaires', 'Véhicules utilitaires', 'vehicules-utilitaires', 'vehicules-transport-materiaux', 2, 'fr'),
('pick-ups', 'Pick-ups', 'pick-ups', 'vehicules-transport-materiaux', 2, 'fr'),
('fourgons', 'Fourgons', 'fourgons', 'vehicules-transport-materiaux', 2, 'fr');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('betonnieres', 'Bétonnières', 'betonnieres', 'materiel-de-construction', 2, 'fr'),
('vibrateurs-beton', 'Vibrateurs béton', 'vibrateurs-beton', 'materiel-de-construction', 2, 'fr'),
('pompes-a-beton', 'Pompes à béton', 'pompes-a-beton', 'materiel-de-construction', 2, 'fr'),
('coffrages', 'Coffrages', 'coffrages', 'materiel-de-construction', 2, 'fr'),
('etais', 'Étais', 'etais', 'materiel-de-construction', 2, 'fr'),
('echafaudages', 'Échafaudages', 'echafaudages', 'materiel-de-construction', 2, 'fr'),
('echelles', 'Échelles', 'echelles', 'materiel-de-construction', 2, 'fr'),
('outils-pneumatiques', 'Outils pneumatiques', 'outils-pneumatiques', 'materiel-de-construction', 2, 'fr'),
('marteaux-piqueurs', 'Marteaux-piqueurs', 'marteaux-piqueurs', 'materiel-de-construction', 2, 'fr'),
('scies-de-chantier', 'Scies de chantier', 'scies-de-chantier', 'materiel-de-construction', 2, 'fr'),
('groupes-electrogenes', 'Groupes électrogènes', 'groupes-electrogenes', 'materiel-de-construction', 2, 'fr'),
('compresseurs', 'Compresseurs', 'compresseurs', 'materiel-de-construction', 2, 'fr'),
('lasers-niveaux', 'Lasers & niveaux', 'lasers-niveaux', 'materiel-de-construction', 2, 'fr');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('ciment', 'Ciment', 'ciment', 'materiaux-de-construction', 2, 'fr'),
('beton-pret-a-lemploi', 'Béton prêt à l’emploi', 'beton-pret-a-lemploi', 'materiaux-de-construction', 2, 'fr'),
('sable-gravier', 'Sable & gravier', 'sable-gravier', 'materiaux-de-construction', 2, 'fr'),
('briques-blocs', 'Briques & blocs', 'briques-blocs', 'materiaux-de-construction', 2, 'fr'),
('parpaings', 'Parpaings', 'parpaings', 'materiaux-de-construction', 2, 'fr'),
('pierres-naturelles', 'Pierres naturelles', 'pierres-naturelles', 'materiaux-de-construction', 2, 'fr'),
('bois-de-construction', 'Bois de construction', 'bois-de-construction', 'materiaux-de-construction', 2, 'fr'),
('tuiles-toitures', 'Tuiles & toitures', 'tuiles-toitures', 'materiaux-de-construction', 2, 'fr'),
('plaques-de-platre', 'Plaques de plâtre', 'plaques-de-platre', 'materiaux-de-construction', 2, 'fr'),
('isolants', 'Isolants', 'isolants', 'materiaux-de-construction', 2, 'fr'),
('peintures-enduits', 'Peintures & enduits', 'peintures-enduits', 'materiaux-de-construction', 2, 'fr'),
('revetements-sols-murs', 'Revêtements sols & murs', 'revetements-sols-murs', 'materiaux-de-construction', 2, 'fr');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('vis-boulons', 'Vis & boulons', 'vis-boulons', 'quincaillerie-fixations', 2, 'fr'),
('chevilles', 'Chevilles', 'chevilles', 'quincaillerie-fixations', 2, 'fr'),
('clous', 'Clous', 'clous', 'quincaillerie-fixations', 2, 'fr'),
('equerres', 'Équerres', 'equerres', 'quincaillerie-fixations', 2, 'fr'),
('charniere', 'Charnières', 'charniere', 'quincaillerie-fixations', 2, 'fr'),
('serrures', 'Serrures', 'serrures', 'quincaillerie-fixations', 2, 'fr'),
('cadenas', 'Cadenas', 'cadenas', 'quincaillerie-fixations', 2, 'fr'),
('colles-mastics', 'Colles & mastics', 'colles-mastics', 'quincaillerie-fixations', 2, 'fr'),
('rubans-adhesifs', 'Rubans adhésifs', 'rubans-adhesifs', 'quincaillerie-fixations', 2, 'fr'),
('joints-silicone', 'Joints & silicone', 'joints-silicone', 'quincaillerie-fixations', 2, 'fr');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('cables-electriques', 'Câbles électriques', 'cables-electriques', 'equipements-electriques-plomberie', 2, 'fr'),
('interrupteurs-prises', 'Interrupteurs & prises', 'interrupteurs-prises', 'equipements-electriques-plomberie', 2, 'fr'),
('disjoncteurs', 'Disjoncteurs', 'disjoncteurs', 'equipements-electriques-plomberie', 2, 'fr'),
('tableaux-electriques', 'Tableaux électriques', 'tableaux-electriques', 'equipements-electriques-plomberie', 2, 'fr'),
('eclairage-chantier', 'Éclairage chantier', 'eclairage-chantier', 'equipements-electriques-plomberie', 2, 'fr'),
('tuyaux-raccords', 'Tuyaux & raccords', 'tuyaux-raccords', 'equipements-electriques-plomberie', 2, 'fr'),
('robinets', 'Robinetterie', 'robinets', 'equipements-electriques-plomberie', 2, 'fr'),
('compteurs-eau', 'Compteurs d’eau', 'compteurs-eau', 'equipements-electriques-plomberie', 2, 'fr'),
('pompes', 'Pompes', 'pompes', 'equipements-electriques-plomberie', 2, 'fr'),
('chauffe-eau', 'Chauffe-eau', 'chauffe-eau', 'equipements-electriques-plomberie', 2, 'fr'),
('sanitaires', 'Sanitaires', 'sanitaires', 'equipements-electriques-plomberie', 2, 'fr');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('outils-manuels', 'Outils manuels (marteaux, clés, tournevis, niveaux)', 'outils-manuels', 'outils-equipements-professionnels', 2, 'fr'),
('outils-de-mesure', 'Outils de mesure', 'outils-de-mesure', 'outils-equipements-professionnels', 2, 'fr'),
('mallettes-coffrets', 'Mallettes & coffrets', 'mallettes-coffrets', 'outils-equipements-professionnels', 2, 'fr'),
('outils-diamantes', 'Outils diamantés', 'outils-diamantes', 'outils-equipements-professionnels', 2, 'fr'),
('meuleuses', 'Meuleuses', 'meuleuses', 'outils-equipements-professionnels', 2, 'fr'),
('perforateurs', 'Perforateurs', 'perforateurs', 'outils-equipements-professionnels', 2, 'fr'),
('perceuses', 'Perceuses', 'perceuses', 'outils-equipements-professionnels', 2, 'fr'),
('scies-circulaires', 'Scies circulaires', 'scies-circulaires', 'outils-equipements-professionnels', 2, 'fr'),
('ponceuses', 'Ponceuses', 'ponceuses', 'outils-equipements-professionnels', 2, 'fr'),
('lasers-rotatifs', 'Lasers rotatifs', 'lasers-rotatifs', 'outils-equipements-professionnels', 2, 'fr');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('casques-de-chantier', 'Casques de chantier', 'casques-de-chantier', 'securite-protection', 2, 'fr'),
('gilets-haute-visibilite', 'Gilets haute visibilité', 'gilets-haute-visibilite', 'securite-protection', 2, 'fr'),
('chaussures-de-securite', 'Chaussures de sécurité', 'chaussures-de-securite', 'securite-protection', 2, 'fr'),
('gants-de-protection', 'Gants de protection', 'gants-de-protection', 'securite-protection', 2, 'fr'),
('lunettes', 'Lunettes', 'lunettes', 'securite-protection', 2, 'fr'),
('masques-anti-poussiere', 'Masques anti-poussière', 'masques-anti-poussiere', 'securite-protection', 2, 'fr'),
('harnais-de-securite', 'Harnais de sécurité', 'harnais-de-securite', 'securite-protection', 2, 'fr'),
('filets-de-protection', 'Filets de protection', 'filets-de-protection', 'securite-protection', 2, 'fr'),
('barrieres-de-chantier', 'Barrières de chantier', 'barrieres-de-chantier', 'securite-protection', 2, 'fr');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('bungalows-bases-vie', 'Bungalows & bases-vie', 'bungalows-bases-vie', 'construction-modulaire-structures', 2, 'fr'),
('conteneurs-amenages', 'Conteneurs aménagés', 'conteneurs-amenages', 'construction-modulaire-structures', 2, 'fr'),
('cabanes-abris', 'Cabanes & abris', 'cabanes-abris', 'construction-modulaire-structures', 2, 'fr'),
('hangars-metalliques', 'Hangars métalliques', 'hangars-metalliques', 'construction-modulaire-structures', 2, 'fr'),
('structures-prefabriquees', 'Structures préfabriquées', 'structures-prefabriquees', 'construction-modulaire-structures', 2, 'fr'),
('serres-couvertures-industrielles', 'Serres & couvertures industrielles', 'serres-couvertures-industrielles', 'construction-modulaire-structures', 2, 'fr');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('location-d-engins', 'Location d’engins (pelles, nacelles, camions)', 'location-d-engins', 'location-materiel-btp', 2, 'fr'),
('location-d-outillage', 'Location d’outillage', 'location-d-outillage', 'location-materiel-btp', 2, 'fr'),
('location-coffrage-echafaudage', 'Location de coffrage & échafaudage', 'location-coffrage-echafaudage', 'location-materiel-btp', 2, 'fr'),
('location-groupes-electrogenes', 'Location de groupes électrogènes', 'location-groupes-electrogenes', 'location-materiel-btp', 2, 'fr'),
('location-bungalows', 'Location de bungalows', 'location-bungalows', 'location-materiel-btp', 2, 'fr');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('travaux-publics', 'Travaux publics', 'travaux-publics', 'services-lies-au-btp', 2, 'fr'),
('terrassement', 'Terrassement', 'terrassement', 'services-lies-au-btp', 2, 'fr'),
('demolition', 'Démolition', 'demolition', 'services-lies-au-btp', 2, 'fr'),
('maconnerie', 'Maçonnerie', 'maconnerie', 'services-lies-au-btp', 2, 'fr'),
('plomberie', 'Plomberie', 'plomberie', 'services-lies-au-btp', 2, 'fr'),
('electricite', 'Électricité', 'electricite', 'services-lies-au-btp', 2, 'fr'),
('menuiserie', 'Menuiserie', 'menuiserie', 'services-lies-au-btp', 2, 'fr'),
('charpente', 'Charpente', 'charpente', 'services-lies-au-btp', 2, 'fr'),
('peinture-finition', 'Peinture & finition', 'peinture-finition', 'services-lies-au-btp', 2, 'fr'),
('architecture-ingenierie', 'Architecture & ingénierie', 'architecture-ingenierie', 'services-lies-au-btp', 2, 'fr'),
('topographie', 'Topographie', 'topographie', 'services-lies-au-btp', 2, 'fr');

-- ENGLISH
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES ('btp-engins-construction', 'Construction, Heavy Equipment & Machinery', 'btp-engins-construction', NULL, 0, 'en');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('engins-de-chantier', 'Construction machinery', 'engins-de-chantier', 'btp-engins-construction', 1, 'en'),
('vehicules-transport-materiaux', 'Vehicles & material transport', 'vehicules-transport-materiaux', 'btp-engins-construction', 1, 'en'),
('materiel-de-construction', 'Construction equipment', 'materiel-de-construction', 'btp-engins-construction', 1, 'en'),
('materiaux-de-construction', 'Construction materials', 'materiaux-de-construction', 'btp-engins-construction', 1, 'en'),
('quincaillerie-fixations', 'Hardware & fasteners', 'quincaillerie-fixations', 'btp-engins-construction', 1, 'en'),
('equipements-electriques-plomberie', 'Electrical & plumbing', 'equipements-electriques-plomberie', 'btp-engins-construction', 1, 'en'),
('outils-equipements-professionnels', 'Tools & professional equipment', 'outils-equipements-professionnels', 'btp-engins-construction', 1, 'en'),
('securite-protection', 'Safety & PPE', 'securite-protection', 'btp-engins-construction', 1, 'en'),
('construction-modulaire-structures', 'Modular construction & structures', 'construction-modulaire-structures', 'btp-engins-construction', 1, 'en'),
('location-materiel-btp', 'Construction equipment rental', 'location-materiel-btp', 'btp-engins-construction', 1, 'en'),
('services-lies-au-btp', 'Construction services', 'services-lies-au-btp', 'btp-engins-construction', 1, 'en');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('pelles-hydrauliques', 'Hydraulic excavators', 'pelles-hydrauliques', 'engins-de-chantier', 2, 'en'),
('mini-pelles', 'Mini excavators', 'mini-pelles', 'engins-de-chantier', 2, 'en'),
('chargeuses', 'Loaders', 'chargeuses', 'engins-de-chantier', 2, 'en'),
('bulldozers', 'Bulldozers', 'bulldozers', 'engins-de-chantier', 2, 'en'),
('niveleuses', 'Motor graders', 'niveleuses', 'engins-de-chantier', 2, 'en'),
('tractopelles', 'Backhoe loaders', 'tractopelles', 'engins-de-chantier', 2, 'en'),
('compacteurs', 'Compactors', 'compacteurs', 'engins-de-chantier', 2, 'en'),
('rouleaux-compresseurs', 'Road rollers', 'rouleaux-compresseurs', 'engins-de-chantier', 2, 'en'),
('dumpers', 'Dumpers', 'dumpers', 'engins-de-chantier', 2, 'en'),
('camions-bennes', 'Dump trucks', 'camions-bennes', 'engins-de-chantier', 2, 'en'),
('grues-mobiles', 'Mobile cranes', 'grues-mobiles', 'engins-de-chantier', 2, 'en'),
('grues-a-tour', 'Tower cranes', 'grues-a-tour', 'engins-de-chantier', 2, 'en'),
('chariots-telescopiques', 'Telehandlers', 'chariots-telescopiques', 'engins-de-chantier', 2, 'en'),
('nacelles-elevatrices', 'Aerial work platforms', 'nacelles-elevatrices', 'engins-de-chantier', 2, 'en'),
('foreuses', 'Drilling rigs', 'foreuses', 'engins-de-chantier', 2, 'en'),
('retrochargeuses', 'Backhoe loaders', 'retrochargeuses', 'engins-de-chantier', 2, 'en');

-- NIVEAU 3 : Engins de construction (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('bulldozers', 'Bulldozers', 'bulldozers', 'engins-de-chantier', 3, 'en'),
('pelleteuses', 'Excavators', 'pelleteuses', 'engins-de-chantier', 3, 'en'),
('chargeuses', 'Loaders', 'chargeuses', 'engins-de-chantier', 3, 'en'),
('niveleuses', 'Graders', 'niveleuses', 'engins-de-chantier', 3, 'en'),
('compacteurs', 'Compactors', 'compacteurs', 'engins-de-chantier', 3, 'en'),
('grues', 'Cranes', 'grues', 'engins-de-chantier', 3, 'en'),
('grues-mobiles', 'Mobile cranes', 'grues-mobiles', 'engins-de-chantier', 3, 'en'),
('grues-a-tour', 'Tower cranes', 'grues-a-tour', 'engins-de-chantier', 3, 'en'),
('betonnieres', 'Concrete mixers', 'betonnieres', 'engins-de-chantier', 3, 'en'),
('pompees-a-beton', 'Concrete pumps', 'pompees-a-beton', 'engins-de-chantier', 3, 'en'),
('chariots-elevateurs', 'Forklifts', 'chariots-elevateurs', 'engins-de-chantier', 3, 'en');

-- NIVEAU 3 : Matériels BTP (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('beton', 'Concrete', 'beton', 'materiaux-de-construction', 3, 'en'),
('ciment', 'Cement', 'ciment', 'materiaux-de-construction', 3, 'en'),
('acier-de-construction', 'Construction steel', 'acier-de-construction', 'materiaux-de-construction', 3, 'en'),
('bois-de-charpente', 'Timber framing', 'bois-de-charpente', 'materiaux-de-construction', 3, 'en'),
('carreaux-ceramiques', 'Ceramic tiles', 'carreaux-ceramiques', 'materiaux-de-construction', 3, 'en'),
('tuiles', 'Tiles', 'tuiles', 'materiaux-de-construction', 3, 'en'),
('ardoises', 'Slate', 'ardoises', 'materiaux-de-construction', 3, 'en'),
('parpaings', 'Concrete blocks', 'parpaings', 'materiaux-de-construction', 3, 'en'),
('briques', 'Bricks', 'briques', 'materiaux-de-construction', 3, 'en'),
('platre', 'Plaster', 'platre', 'materiaux-de-construction', 3, 'en');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('camions-de-chantier', 'Construction trucks', 'camions-de-chantier', 'vehicules-transport-materiaux', 2, 'en'),
('camions-malaxeurs-toupies-beton', 'Concrete mixer trucks', 'camions-malaxeurs-toupies-beton', 'vehicules-transport-materiaux', 2, 'en'),
('camions-porte-engins', 'Lowboy/haul trucks', 'camions-porte-engins', 'vehicules-transport-materiaux', 2, 'en'),
('remorques-de-chantier', 'Construction trailers', 'remorques-de-chantier', 'vehicules-transport-materiaux', 2, 'en'),
('vehicules-utilitaires', 'Utility vehicles', 'vehicules-utilitaires', 'vehicules-transport-materiaux', 2, 'en'),
('pick-ups', 'Pick‑ups', 'pick-ups', 'vehicules-transport-materiaux', 2, 'en'),
('fourgons', 'Vans', 'fourgons', 'vehicules-transport-materiaux', 2, 'en');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('betonnieres', 'Concrete mixers', 'betonnieres', 'materiel-de-construction', 2, 'en'),
('vibrateurs-beton', 'Concrete vibrators', 'vibrateurs-beton', 'materiel-de-construction', 2, 'en'),
('pompes-a-beton', 'Concrete pumps', 'pompes-a-beton', 'materiel-de-construction', 2, 'en'),
('coffrages', 'Formwork', 'coffrages', 'materiel-de-construction', 2, 'en'),
('etais', 'Props & shoring', 'etais', 'materiel-de-construction', 2, 'en'),
('echafaudages', 'Scaffolding', 'echafaudages', 'materiel-de-construction', 2, 'en'),
('echelles', 'Ladders', 'echelles', 'materiel-de-construction', 2, 'en'),
('outils-pneumatiques', 'Pneumatic tools', 'outils-pneumatiques', 'materiel-de-construction', 2, 'en'),
('marteaux-piqueurs', 'Jackhammers', 'marteaux-piqueurs', 'materiel-de-construction', 2, 'en'),
('scies-de-chantier', 'Jobsite saws', 'scies-de-chantier', 'materiel-de-construction', 2, 'en'),
('groupes-electrogenes', 'Generators', 'groupes-electrogenes', 'materiel-de-construction', 2, 'en'),
('compresseurs', 'Compressors', 'compresseurs', 'materiel-de-construction', 2, 'en'),
('lasers-niveaux', 'Lasers & levels', 'lasers-niveaux', 'materiel-de-construction', 2, 'en');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('ciment', 'Cement', 'ciment', 'materiaux-de-construction', 2, 'en'),
('beton-pret-a-lemploi', 'Ready‑mix concrete', 'beton-pret-a-lemploi', 'materiaux-de-construction', 2, 'en'),
('sable-gravier', 'Sand & gravel', 'sable-gravier', 'materiaux-de-construction', 2, 'en'),
('briques-blocs', 'Bricks & blocks', 'briques-blocs', 'materiaux-de-construction', 2, 'en'),
('parpaings', 'Concrete blocks', 'parpaings', 'materiaux-de-construction', 2, 'en'),
('pierres-naturelles', 'Natural stone', 'pierres-naturelles', 'materiaux-de-construction', 2, 'en'),
('bois-de-construction', 'Construction lumber', 'bois-de-construction', 'materiaux-de-construction', 2, 'en'),
('tuiles-toitures', 'Tiles & roofing', 'tuiles-toitures', 'materiaux-de-construction', 2, 'en'),
('plaques-de-platre', 'Drywall & plasterboard', 'plaques-de-platre', 'materiaux-de-construction', 2, 'en'),
('isolants', 'Insulation', 'isolants', 'materiaux-de-construction', 2, 'en'),
('peintures-enduits', 'Paints & renders', 'peintures-enduits', 'materiaux-de-construction', 2, 'en'),
('revetements-sols-murs', 'Floor & wall coverings', 'revetements-sols-murs', 'materiaux-de-construction', 2, 'en');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('vis-boulons', 'Screws & bolts', 'vis-boulons', 'quincaillerie-fixations', 2, 'en'),
('chevilles', 'Anchors', 'chevilles', 'quincaillerie-fixations', 2, 'en'),
('clous', 'Nails', 'clous', 'quincaillerie-fixations', 2, 'en'),
('equerres', 'Brackets', 'equerres', 'quincaillerie-fixations', 2, 'en'),
('charniere', 'Hinges', 'charniere', 'quincaillerie-fixations', 2, 'en'),
('serrures', 'Locks', 'serrures', 'quincaillerie-fixations', 2, 'en'),
('cadenas', 'Padlocks', 'cadenas', 'quincaillerie-fixations', 2, 'en'),
('colles-mastics', 'Adhesives & sealants', 'colles-mastics', 'quincaillerie-fixations', 2, 'en'),
('rubans-adhesifs', 'Tapes', 'rubans-adhesifs', 'quincaillerie-fixations', 2, 'en'),
('joints-silicone', 'Gaskets & silicone', 'joints-silicone', 'quincaillerie-fixations', 2, 'en');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('cables-electriques', 'Electrical cables', 'cables-electriques', 'equipements-electriques-plomberie', 2, 'en'),
('interrupteurs-prises', 'Switches & outlets', 'interrupteurs-prises', 'equipements-electriques-plomberie', 2, 'en'),
('disjoncteurs', 'Breakers', 'disjoncteurs', 'equipements-electriques-plomberie', 2, 'en'),
('tableaux-electriques', 'Panels', 'tableaux-electriques', 'equipements-electriques-plomberie', 2, 'en'),
('eclairage-chantier', 'Jobsite lighting', 'eclairage-chantier', 'equipements-electriques-plomberie', 2, 'en'),
('tuyaux-raccords', 'Pipes & fittings', 'tuyaux-raccords', 'equipements-electriques-plomberie', 2, 'en'),
('robinets', 'Faucets', 'robinets', 'equipements-electriques-plomberie', 2, 'en'),
('compteurs-eau', 'Water meters', 'compteurs-eau', 'equipements-electriques-plomberie', 2, 'en'),
('pompes', 'Pumps', 'pompes', 'equipements-electriques-plomberie', 2, 'en'),
('chauffe-eau', 'Water heaters', 'chauffe-eau', 'equipements-electriques-plomberie', 2, 'en'),
('sanitaires', 'Sanitary ware', 'sanitaires', 'equipements-electriques-plomberie', 2, 'en');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('outils-manuels', 'Hand tools (hammers, wrenches, screwdrivers, levels)', 'outils-manuels', 'outils-equipements-professionnels', 2, 'en'),
('outils-de-mesure', 'Measuring tools', 'outils-de-mesure', 'outils-equipements-professionnels', 2, 'en'),
('mallettes-coffrets', 'Toolboxes & cases', 'mallettes-coffrets', 'outils-equipements-professionnels', 2, 'en'),
('outils-diamantes', 'Diamond tools', 'outils-diamantes', 'outils-equipements-professionnels', 2, 'en'),
('meuleuses', 'Grinders', 'meuleuses', 'outils-equipements-professionnels', 2, 'en'),
('perforateurs', 'Rotary hammers', 'perforateurs', 'outils-equipements-professionnels', 2, 'en'),
('perceuses', 'Drills', 'perceuses', 'outils-equipements-professionnels', 2, 'en'),
('scies-circulaires', 'Circular saws', 'scies-circulaires', 'outils-equipements-professionnels', 2, 'en'),
('ponceuses', 'Sanders', 'ponceuses', 'outils-equipements-professionnels', 2, 'en'),
('lasers-rotatifs', 'Rotary lasers', 'lasers-rotatifs', 'outils-equipements-professionnels', 2, 'en');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('casques-de-chantier', 'Hard hats', 'casques-de-chantier', 'securite-protection', 2, 'en'),
('gilets-haute-visibilite', 'High‑visibility vests', 'gilets-haute-visibilite', 'securite-protection', 2, 'en'),
('chaussures-de-securite', 'Safety shoes', 'chaussures-de-securite', 'securite-protection', 2, 'en'),
('gants-de-protection', 'Protective gloves', 'gants-de-protection', 'securite-protection', 2, 'en'),
('lunettes', 'Safety glasses', 'lunettes', 'securite-protection', 2, 'en'),
('masques-anti-poussiere', 'Dust masks', 'masques-anti-poussiere', 'securite-protection', 2, 'en'),
('harnais-de-securite', 'Safety harnesses', 'harnais-de-securite', 'securite-protection', 2, 'en'),
('filets-de-protection', 'Safety nets', 'filets-de-protection', 'securite-protection', 2, 'en'),
('barrieres-de-chantier', 'Site barriers', 'barrieres-de-chantier', 'securite-protection', 2, 'en');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('bungalows-bases-vie', 'Site cabins', 'bungalows-bases-vie', 'construction-modulaire-structures', 2, 'en'),
('conteneurs-amenages', 'Converted containers', 'conteneurs-amenages', 'construction-modulaire-structures', 2, 'en'),
('cabanes-abris', 'Sheds & shelters', 'cabanes-abris', 'construction-modulaire-structures', 2, 'en'),
('hangars-metalliques', 'Metal sheds', 'hangars-metalliques', 'construction-modulaire-structures', 2, 'en'),
('structures-prefabriquees', 'Prefabricated structures', 'structures-prefabriquees', 'construction-modulaire-structures', 2, 'en'),
('serres-couvertures-industrielles', 'Greenhouses & industrial covers', 'serres-couvertures-industrielles', 'construction-modulaire-structures', 2, 'en');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('location-d-engins', 'Equipment rental (excavators, lifts, trucks)', 'location-d-engins', 'location-materiel-btp', 2, 'en'),
('location-d-outillage', 'Tool rental', 'location-d-outillage', 'location-materiel-btp', 2, 'en'),
('location-coffrage-echafaudage', 'Formwork & scaffolding rental', 'location-coffrage-echafaudage', 'location-materiel-btp', 2, 'en'),
('location-groupes-electrogenes', 'Generator rental', 'location-groupes-electrogenes', 'location-materiel-btp', 2, 'en'),
('location-bungalows', 'Cabin rental', 'location-bungalows', 'location-materiel-btp', 2, 'en');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('travaux-publics', 'Public works', 'travaux-publics', 'services-lies-au-btp', 2, 'en'),
('terrassement', 'Earthworks', 'terrassement', 'services-lies-au-btp', 2, 'en'),
('demolition', 'Demolition', 'demolition', 'services-lies-au-btp', 2, 'en'),
('maconnerie', 'Masonry', 'maconnerie', 'services-lies-au-btp', 2, 'en'),
('plomberie', 'Plumbing', 'plomberie', 'services-lies-au-btp', 2, 'en'),
('electricite', 'Electrical', 'electricite', 'services-lies-au-btp', 2, 'en'),
('menuiserie', 'Carpentry', 'menuiserie', 'services-lies-au-btp', 2, 'en'),
('charpente', 'Timber framing', 'charpente', 'services-lies-au-btp', 2, 'en'),
('peinture-finition', 'Painting & finishing', 'peinture-finition', 'services-lies-au-btp', 2, 'en'),
('architecture-ingenierie', 'Architecture & engineering', 'architecture-ingenierie', 'services-lies-au-btp', 2, 'en'),
('topographie', 'Surveying', 'topographie', 'services-lies-au-btp', 2, 'en');

-- ESPAÑOL
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES ('btp-engins-construction', 'Construcción, Maquinaria & Equipos Pesados', 'btp-engins-construction', NULL, 0, 'es');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('engins-de-chantier', 'Maquinaria de construcción', 'engins-de-chantier', 'btp-engins-construction', 1, 'es'),
('vehicules-transport-materiaux', 'Vehículos & transporte de materiales', 'vehicules-transport-materiaux', 'btp-engins-construction', 1, 'es'),
('materiel-de-construction', 'Equipos de construcción', 'materiel-de-construction', 'btp-engins-construction', 1, 'es'),
('materiaux-de-construction', 'Materiales de construcción', 'materiaux-de-construction', 'btp-engins-construction', 1, 'es'),
('quincaillerie-fixations', 'Ferretería & fijaciones', 'quincaillerie-fixations', 'btp-engins-construction', 1, 'es'),
('equipements-electriques-plomberie', 'Eléctrico & fontanería', 'equipements-electriques-plomberie', 'btp-engins-construction', 1, 'es'),
('outils-equipements-professionnels', 'Herramientas & equipos profesionales', 'outils-equipements-professionnels', 'btp-engins-construction', 1, 'es'),
('securite-protection', 'Seguridad & EPP', 'securite-protection', 'btp-engins-construction', 1, 'es'),
('construction-modulaire-structures', 'Construcción modular & estructuras', 'construction-modulaire-structures', 'btp-engins-construction', 1, 'es'),
('location-materiel-btp', 'Alquiler de equipos de construcción', 'location-materiel-btp', 'btp-engins-construction', 1, 'es'),
('services-lies-au-btp', 'Servicios de construcción', 'services-lies-au-btp', 'btp-engins-construction', 1, 'es');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('pelles-hydrauliques', 'Excavadoras hidráulicas', 'pelles-hydrauliques', 'engins-de-chantier', 2, 'es'),
('mini-pelles', 'Miniexcavadoras', 'mini-pelles', 'engins-de-chantier', 2, 'es'),
('chargeuses', 'Cargadoras', 'chargeuses', 'engins-de-chantier', 2, 'es'),
('bulldozers', 'Bulldozers', 'bulldozers', 'engins-de-chantier', 2, 'es'),
('niveleuses', 'Motoniveladoras', 'niveleuses', 'engins-de-chantier', 2, 'es'),
('tractopelles', 'Retroexcavadoras', 'tractopelles', 'engins-de-chantier', 2, 'es'),
('compacteurs', 'Compactadoras', 'compacteurs', 'engins-de-chantier', 2, 'es'),
('rouleaux-compresseurs', 'Rodillos compactadores', 'rouleaux-compresseurs', 'engins-de-chantier', 2, 'es'),
('dumpers', 'Dumpers', 'dumpers', 'engins-de-chantier', 2, 'es'),
('camions-bennes', 'Camiones volquete', 'camions-bennes', 'engins-de-chantier', 2, 'es'),
('grues-mobiles', 'Grúas móviles', 'grues-mobiles', 'engins-de-chantier', 2, 'es'),
('grues-a-tour', 'Grúas torre', 'grues-a-tour', 'engins-de-chantier', 2, 'es'),
('chariots-telescopiques', 'Manipuladores telescópicos', 'chariots-telescopiques', 'engins-de-chantier', 2, 'es'),
('nacelles-elevatrices', 'Plataformas elevadoras', 'nacelles-elevatrices', 'engins-de-chantier', 2, 'es'),
('foreuses', 'Perforadoras', 'foreuses', 'engins-de-chantier', 2, 'es'),
('retrochargeuses', 'Retroexcavadoras', 'retrochargeuses', 'engins-de-chantier', 2, 'es');

-- NIVEAU 3 : Engins de construction (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('bulldozers', 'Bulldozers', 'bulldozers', 'engins-de-chantier', 3, 'es'),
('pelleteuses', 'Excavadoras', 'pelleteuses', 'engins-de-chantier', 3, 'es'),
('chargeuses', 'Cargadoras', 'chargeuses', 'engins-de-chantier', 3, 'es'),
('niveleuses', 'Niveladoras', 'niveleuses', 'engins-de-chantier', 3, 'es'),
('compacteurs', 'Compactadores', 'compacteurs', 'engins-de-chantier', 3, 'es'),
('grues', 'Grúas', 'grues', 'engins-de-chantier', 3, 'es'),
('grues-mobiles', 'Grúas móviles', 'grues-mobiles', 'engins-de-chantier', 3, 'es'),
('grues-a-tour', 'Grúas torre', 'grues-a-tour', 'engins-de-chantier', 3, 'es'),
('betonnieres', 'Hormigoneras', 'betonnieres', 'engins-de-chantier', 3, 'es'),
('pompees-a-beton', 'Bombas de hormigón', 'pompees-a-beton', 'engins-de-chantier', 3, 'es'),
('chariots-elevateurs', 'Carretillas elevadoras', 'chariots-elevateurs', 'engins-de-chantier', 3, 'es');

-- NIVEAU 3 : Matériels BTP (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('beton', 'Hormigón', 'beton', 'materiaux-de-construction', 3, 'es'),
('ciment', 'Cemento', 'ciment', 'materiaux-de-construction', 3, 'es'),
('acier-de-construction', 'Acero de construcción', 'acier-de-construction', 'materiaux-de-construction', 3, 'es'),
('bois-de-charpente', 'Madera de estructura', 'bois-de-charpente', 'materiaux-de-construction', 3, 'es'),
('carreaux-ceramiques', 'Azulejos cerámicos', 'carreaux-ceramiques', 'materiaux-de-construction', 3, 'es'),
('tuiles', 'Tejas', 'tuiles', 'materiaux-de-construction', 3, 'es'),
('ardoises', 'Pizarras', 'ardoises', 'materiaux-de-construction', 3, 'es'),
('parpaings', 'Bloques de hormigón', 'parpaings', 'materiaux-de-construction', 3, 'es'),
('briques', 'Ladrillos', 'briques', 'materiaux-de-construction', 3, 'es'),
('platre', 'Yeso', 'platre', 'materiaux-de-construction', 3, 'es');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('camions-de-chantier', 'Camiones de obra', 'camions-de-chantier', 'vehicules-transport-materiaux', 2, 'es'),
('camions-malaxeurs-toupies-beton', 'Camiones hormigonera', 'camions-malaxeurs-toupies-beton', 'vehicules-transport-materiaux', 2, 'es'),
('camions-porte-engins', 'Camiones porta‑equipos', 'camions-porte-engins', 'vehicules-transport-materiaux', 2, 'es'),
('remorques-de-chantier', 'Remolques de obra', 'remorques-de-chantier', 'vehicules-transport-materiaux', 2, 'es'),
('vehicules-utilitaires', 'Vehículos comerciales', 'vehicules-utilitaires', 'vehicules-transport-materiaux', 2, 'es'),
('pick-ups', 'Pick‑ups', 'pick-ups', 'vehicules-transport-materiaux', 2, 'es'),
('fourgons', 'Furgonetas', 'fourgons', 'vehicules-transport-materiaux', 2, 'es');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('betonnieres', 'Mezcladoras de concreto', 'betonnieres', 'materiel-de-construction', 2, 'es'),
('vibrateurs-beton', 'Vibradores de hormigón', 'vibrateurs-beton', 'materiel-de-construction', 2, 'es'),
('pompes-a-beton', 'Bombas de hormigón', 'pompes-a-beton', 'materiel-de-construction', 2, 'es'),
('coffrages', 'Encofrados', 'coffrages', 'materiel-de-construction', 2, 'es'),
('etais', 'Puntales', 'etais', 'materiel-de-construction', 2, 'es'),
('echafaudages', 'Andamios', 'echafaudages', 'materiel-de-construction', 2, 'es'),
('echelles', 'Escaleras', 'echelles', 'materiel-de-construction', 2, 'es'),
('outils-pneumatiques', 'Herramientas neumáticas', 'outils-pneumatiques', 'materiel-de-construction', 2, 'es'),
('marteaux-piqueurs', 'Martillos neumáticos', 'marteaux-piqueurs', 'materiel-de-construction', 2, 'es'),
('scies-de-chantier', 'Sierras de obra', 'scies-de-chantier', 'materiel-de-construction', 2, 'es'),
('groupes-electrogenes', 'Generadores', 'groupes-electrogenes', 'materiel-de-construction', 2, 'es'),
('compresseurs', 'Compresores', 'compresseurs', 'materiel-de-construction', 2, 'es'),
('lasers-niveaux', 'Láseres & niveles', 'lasers-niveaux', 'materiel-de-construction', 2, 'es');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('ciment', 'Cemento', 'ciment', 'materiaux-de-construction', 2, 'es'),
('beton-pret-a-lemploi', 'Hormigón premezclado', 'beton-pret-a-lemploi', 'materiaux-de-construction', 2, 'es'),
('sable-gravier', 'Arena & grava', 'sable-gravier', 'materiaux-de-construction', 2, 'es'),
('briques-blocs', 'Ladrillos & bloques', 'briques-blocs', 'materiaux-de-construction', 2, 'es'),
('parpaings', 'Bloques de concreto', 'parpaings', 'materiaux-de-construction', 2, 'es'),
('pierres-naturelles', 'Piedra natural', 'pierres-naturelles', 'materiaux-de-construction', 2, 'es'),
('bois-de-construction', 'Madera de construcción', 'bois-de-construction', 'materiaux-de-construction', 2, 'es'),
('tuiles-toitures', 'Tejas & cubiertas', 'tuiles-toitures', 'materiaux-de-construction', 2, 'es'),
('plaques-de-platre', 'Placas de yeso', 'plaques-de-platre', 'materiaux-de-construction', 2, 'es'),
('isolants', 'Aislantes', 'isolants', 'materiaux-de-construction', 2, 'es'),
('peintures-enduits', 'Pinturas & revestimientos', 'peintures-enduits', 'materiaux-de-construction', 2, 'es'),
('revetements-sols-murs', 'Revestimientos de suelos & paredes', 'revetements-sols-murs', 'materiaux-de-construction', 2, 'es');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('vis-boulons', 'Tornillos & pernos', 'vis-boulons', 'quincaillerie-fixations', 2, 'es'),
('chevilles', 'Tacos', 'chevilles', 'quincaillerie-fixations', 2, 'es'),
('clous', 'Clavos', 'clous', 'quincaillerie-fixations', 2, 'es'),
('equerres', 'Escuadras', 'equerres', 'quincaillerie-fixations', 2, 'es'),
('charniere', 'Bisagras', 'charniere', 'quincaillerie-fixations', 2, 'es'),
('serrures', 'Cerraduras', 'serrures', 'quincaillerie-fixations', 2, 'es'),
('cadenas', 'Candados', 'cadenas', 'quincaillerie-fixations', 2, 'es'),
('colles-mastics', 'Adhesivos & selladores', 'colles-mastics', 'quincaillerie-fixations', 2, 'es'),
('rubans-adhesifs', 'Cintas adhesivas', 'rubans-adhesifs', 'quincaillerie-fixations', 2, 'es'),
('joints-silicone', 'Juntas & silicona', 'joints-silicone', 'quincaillerie-fixations', 2, 'es');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('cables-electriques', 'Cables eléctricos', 'cables-electriques', 'equipements-electriques-plomberie', 2, 'es'),
('interrupteurs-prises', 'Interruptores & tomas', 'interrupteurs-prises', 'equipements-electriques-plomberie', 2, 'es'),
('disjoncteurs', 'Interruptores automáticos', 'disjoncteurs', 'equipements-electriques-plomberie', 2, 'es'),
('tableaux-electriques', 'Cuadros eléctricos', 'tableaux-electriques', 'equipements-electriques-plomberie', 2, 'es'),
('eclairage-chantier', 'Iluminación de obra', 'eclairage-chantier', 'equipements-electriques-plomberie', 2, 'es'),
('tuyaux-raccords', 'Tubos & accesorios', 'tuyaux-raccords', 'equipements-electriques-plomberie', 2, 'es'),
('robinets', 'Grifería', 'robinets', 'equipements-electriques-plomberie', 2, 'es'),
('compteurs-eau', 'Contadores de agua', 'compteurs-eau', 'equipements-electriques-plomberie', 2, 'es'),
('pompes', 'Bombas', 'pompes', 'equipements-electriques-plomberie', 2, 'es'),
('chauffe-eau', 'Calentadores de agua', 'chauffe-eau', 'equipements-electriques-plomberie', 2, 'es'),
('sanitaires', 'Sanitarios', 'sanitaires', 'equipements-electriques-plomberie', 2, 'es');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('outils-manuels', 'Herramientas manuales (martillos, llaves, destornilladores, niveles)', 'outils-manuels', 'outils-equipements-professionnels', 2, 'es'),
('outils-de-mesure', 'Instrumentos de medición', 'outils-de-mesure', 'outils-equipements-professionnels', 2, 'es'),
('mallettes-coffrets', 'Maletines & estuches', 'mallettes-coffrets', 'outils-equipements-professionnels', 2, 'es'),
('outils-diamantes', 'Herramientas diamantadas', 'outils-diamantes', 'outils-equipements-professionnels', 2, 'es'),
('meuleuses', 'Amoladoras', 'meuleuses', 'outils-equipements-professionnels', 2, 'es'),
('perforateurs', 'Martillos perforadores', 'perforateurs', 'outils-equipements-professionnels', 2, 'es'),
('perceuses', 'Taladros', 'perceuses', 'outils-equipements-professionnels', 2, 'es'),
('scies-circulaires', 'Sierras circulares', 'scies-circulaires', 'outils-equipements-professionnels', 2, 'es'),
('ponceuses', 'Lijadoras', 'ponceuses', 'outils-equipements-professionnels', 2, 'es'),
('lasers-rotatifs', 'Láseres rotativos', 'lasers-rotatifs', 'outils-equipements-professionnels', 2, 'es');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('casques-de-chantier', 'Cascos de seguridad', 'casques-de-chantier', 'securite-protection', 2, 'es'),
('gilets-haute-visibilite', 'Chalecos de alta visibilidad', 'gilets-haute-visibilite', 'securite-protection', 2, 'es'),
('chaussures-de-securite', 'Calzado de seguridad', 'chaussures-de-securite', 'securite-protection', 2, 'es'),
('gants-de-protection', 'Guantes de protección', 'gants-de-protection', 'securite-protection', 2, 'es'),
('lunettes', 'Gafas de seguridad', 'lunettes', 'securite-protection', 2, 'es'),
('masques-anti-poussiere', 'Mascarillas antipolvo', 'masques-anti-poussiere', 'securite-protection', 2, 'es'),
('harnais-de-securite', 'Arneses de seguridad', 'harnais-de-securite', 'securite-protection', 2, 'es'),
('filets-de-protection', 'Redes de seguridad', 'filets-de-protection', 'securite-protection', 2, 'es'),
('barrieres-de-chantier', 'Barreras de obra', 'barrieres-de-chantier', 'securite-protection', 2, 'es');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('bungalows-bases-vie', 'Casetas de obra', 'bungalows-bases-vie', 'construction-modulaire-structures', 2, 'es'),
('conteneurs-amenages', 'Contenedores acondicionados', 'conteneurs-amenages', 'construction-modulaire-structures', 2, 'es'),
('cabanes-abris', 'Cabañas & refugios', 'cabanes-abris', 'construction-modulaire-structures', 2, 'es'),
('hangars-metalliques', 'Naves metálicas', 'hangars-metalliques', 'construction-modulaire-structures', 2, 'es'),
('structures-prefabriquees', 'Estructuras prefabricadas', 'structures-prefabriquees', 'construction-modulaire-structures', 2, 'es'),
('serres-couvertures-industrielles', 'Invernaderos & coberturas industriales', 'serres-couvertures-industrielles', 'construction-modulaire-structures', 2, 'es');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('location-d-engins', 'Alquiler de maquinaria (excavadoras, plataformas, camiones)', 'location-d-engins', 'location-materiel-btp', 2, 'es'),
('location-d-outillage', 'Alquiler de herramientas', 'location-d-outillage', 'location-materiel-btp', 2, 'es'),
('location-coffrage-echafaudage', 'Alquiler de encofrado & andamio', 'location-coffrage-echafaudage', 'location-materiel-btp', 2, 'es'),
('location-groupes-electrogenes', 'Alquiler de generadores', 'location-groupes-electrogenes', 'location-materiel-btp', 2, 'es'),
('location-bungalows', 'Alquiler de casetas', 'location-bungalows', 'location-materiel-btp', 2, 'es');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('travaux-publics', 'Obras públicas', 'travaux-publics', 'services-lies-au-btp', 2, 'es'),
('terrassement', 'Movimiento de tierras', 'terrassement', 'services-lies-au-btp', 2, 'es'),
('demolition', 'Demolición', 'demolition', 'services-lies-au-btp', 2, 'es'),
('maconnerie', 'Albañilería', 'maconnerie', 'services-lies-au-btp', 2, 'es'),
('plomberie', 'Fontanería', 'plomberie', 'services-lies-au-btp', 2, 'es'),
('electricite', 'Electricidad', 'electricite', 'services-lies-au-btp', 2, 'es'),
('menuiserie', 'Carpintería', 'menuiserie', 'services-lies-au-btp', 2, 'es'),
('charpente', 'Estructuras de madera', 'charpente', 'services-lies-au-btp', 2, 'es'),
('peinture-finition', 'Pintura & acabado', 'peinture-finition', 'services-lies-au-btp', 2, 'es'),
('architecture-ingenierie', 'Arquitectura & ingeniería', 'architecture-ingenierie', 'services-lies-au-btp', 2, 'es'),
('topographie', 'Topografía', 'topographie', 'services-lies-au-btp', 2, 'es');

-- DEUTSCH
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES ('btp-engins-construction', 'Bau, Baumaschinen & Konstruktion', 'btp-engins-construction', NULL, 0, 'de');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('engins-de-chantier', 'Baumaschinen', 'engins-de-chantier', 'btp-engins-construction', 1, 'de'),
('vehicules-transport-materiaux', 'Fahrzeuge & Materialtransport', 'vehicules-transport-materiaux', 'btp-engins-construction', 1, 'de'),
('materiel-de-construction', 'Bauausrüstung', 'materiel-de-construction', 'btp-engins-construction', 1, 'de'),
('materiaux-de-construction', 'Baustoffe', 'materiaux-de-construction', 'btp-engins-construction', 1, 'de'),
('quincaillerie-fixations', 'Beschläge & Befestigungen', 'quincaillerie-fixations', 'btp-engins-construction', 1, 'de'),
('equipements-electriques-plomberie', 'Elektro & Sanitär', 'equipements-electriques-plomberie', 'btp-engins-construction', 1, 'de'),
('outils-equipements-professionnels', 'Werkzeuge & Profi-Ausrüstung', 'outils-equipements-professionnels', 'btp-engins-construction', 1, 'de'),
('securite-protection', 'Sicherheit & PSA', 'securite-protection', 'btp-engins-construction', 1, 'de'),
('construction-modulaire-structures', 'Modulbau & Strukturen', 'construction-modulaire-structures', 'btp-engins-construction', 1, 'de'),
('location-materiel-btp', 'Vermietung von Baugeräten', 'location-materiel-btp', 'btp-engins-construction', 1, 'de'),
('services-lies-au-btp', 'Bau-Dienstleistungen', 'services-lies-au-btp', 'btp-engins-construction', 1, 'de');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('pelles-hydrauliques', 'Hydraulikbagger', 'pelles-hydrauliques', 'engins-de-chantier', 2, 'de'),
('mini-pelles', 'Minibagger', 'mini-pelles', 'engins-de-chantier', 2, 'de'),
('chargeuses', 'Radlader', 'chargeuses', 'engins-de-chantier', 2, 'de'),
('bulldozers', 'Planierraupen', 'bulldozers', 'engins-de-chantier', 2, 'de'),
('niveleuses', 'Grader', 'niveleuses', 'engins-de-chantier', 2, 'de'),
('tractopelles', 'Baggerlader', 'tractopelles', 'engins-de-chantier', 2, 'de'),
('compacteurs', 'Verdichter', 'compacteurs', 'engins-de-chantier', 2, 'de'),
('rouleaux-compresseurs', 'Walzen', 'rouleaux-compresseurs', 'engins-de-chantier', 2, 'de'),
('dumpers', 'Muldenkipper', 'dumpers', 'engins-de-chantier', 2, 'de'),
('camions-bennes', 'Kipper-Lkw', 'camions-bennes', 'engins-de-chantier', 2, 'de'),
('grues-mobiles', 'Mobilkrane', 'grues-mobiles', 'engins-de-chantier', 2, 'de'),
('grues-a-tour', 'Turmkrane', 'grues-a-tour', 'engins-de-chantier', 2, 'de'),
('chariots-telescopiques', 'Teleskopstapler', 'chariots-telescopiques', 'engins-de-chantier', 2, 'de'),
('nacelles-elevatrices', 'Arbeitsbühnen', 'nacelles-elevatrices', 'engins-de-chantier', 2, 'de'),
('foreuses', 'Bohrgeräte', 'foreuses', 'engins-de-chantier', 2, 'de'),
('retrochargeuses', 'Baggerlader', 'retrochargeuses', 'engins-de-chantier', 2, 'de');

-- NIVEAU 3 : Engins de construction (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('bulldozers', 'Bulldozer', 'bulldozers', 'engins-de-chantier', 3, 'de'),
('pelleteuses', 'Bagger', 'pelleteuses', 'engins-de-chantier', 3, 'de'),
('chargeuses', 'Lader', 'chargeuses', 'engins-de-chantier', 3, 'de'),
('niveleuses', 'Grader', 'niveleuses', 'engins-de-chantier', 3, 'de'),
('compacteurs', 'Verdichter', 'compacteurs', 'engins-de-chantier', 3, 'de'),
('grues', 'Krane', 'grues', 'engins-de-chantier', 3, 'de'),
('grues-mobiles', 'Mobilkrane', 'grues-mobiles', 'engins-de-chantier', 3, 'de'),
('grues-a-tour', 'Turmkrane', 'grues-a-tour', 'engins-de-chantier', 3, 'de'),
('betonnieres', 'Betonmischer', 'betonnieres', 'engins-de-chantier', 3, 'de'),
('pompees-a-beton', 'Betonpumpen', 'pompees-a-beton', 'engins-de-chantier', 3, 'de'),
('chariots-elevateurs', 'Gabelstapler', 'chariots-elevateurs', 'engins-de-chantier', 3, 'de');

-- NIVEAU 3 : Matériels BTP (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('beton', 'Beton', 'beton', 'materiaux-de-construction', 3, 'de'),
('ciment', 'Zement', 'ciment', 'materiaux-de-construction', 3, 'de'),
('acier-de-construction', 'Bau-Stahl', 'acier-de-construction', 'materiaux-de-construction', 3, 'de'),
('bois-de-charpente', 'Konstruktions-Holz', 'bois-de-charpente', 'materiaux-de-construction', 3, 'de'),
('carreaux-ceramiques', 'Keramik-Fliesen', 'carreaux-ceramiques', 'materiaux-de-construction', 3, 'de'),
('tuiles', 'Dachziegel', 'tuiles', 'materiaux-de-construction', 3, 'de'),
('ardoises', 'Schiefer', 'ardoises', 'materiaux-de-construction', 3, 'de'),
('parpaings', 'Beton-Blöcke', 'parpaings', 'materiaux-de-construction', 3, 'de'),
('briques', 'Ziegel', 'briques', 'materiaux-de-construction', 3, 'de'),
('platre', 'Gips', 'platre', 'materiaux-de-construction', 3, 'de');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('camions-de-chantier', 'Baustellen-Lkw', 'camions-de-chantier', 'vehicules-transport-materiaux', 2, 'de'),
('camions-malaxeurs-toupies-beton', 'Betonmischer-Lkw', 'camions-malaxeurs-toupies-beton', 'vehicules-transport-materiaux', 2, 'de'),
('camions-porte-engins', 'Tieflader-Lkw', 'camions-porte-engins', 'vehicules-transport-materiaux', 2, 'de'),
('remorques-de-chantier', 'Baustellenanhänger', 'remorques-de-chantier', 'vehicules-transport-materiaux', 2, 'de'),
('vehicules-utilitaires', 'Nutzfahrzeuge', 'vehicules-utilitaires', 'vehicules-transport-materiaux', 2, 'de'),
('pick-ups', 'Pick-ups', 'pick-ups', 'vehicules-transport-materiaux', 2, 'de'),
('fourgons', 'Transporter', 'fourgons', 'vehicules-transport-materiaux', 2, 'de');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('betonnieres', 'Betonmischer', 'betonnieres', 'materiel-de-construction', 2, 'de'),
('vibrateurs-beton', 'Betonvibratoren', 'vibrateurs-beton', 'materiel-de-construction', 2, 'de'),
('pompes-a-beton', 'Betonpumpen', 'pompes-a-beton', 'materiel-de-construction', 2, 'de'),
('coffrages', 'Schalungen', 'coffrages', 'materiel-de-construction', 2, 'de'),
('etais', 'Stützen', 'etais', 'materiel-de-construction', 2, 'de'),
('echafaudages', 'Gerüste', 'echafaudages', 'materiel-de-construction', 2, 'de'),
('echelles', 'Leitern', 'echelles', 'materiel-de-construction', 2, 'de'),
('outils-pneumatiques', 'Druckluftwerkzeuge', 'outils-pneumatiques', 'materiel-de-construction', 2, 'de'),
('marteaux-piqueurs', 'Presslufthämmer', 'marteaux-piqueurs', 'materiel-de-construction', 2, 'de'),
('scies-de-chantier', 'Baustellensägen', 'scies-de-chantier', 'materiel-de-construction', 2, 'de'),
('groupes-electrogenes', 'Generatoren', 'groupes-electrogenes', 'materiel-de-construction', 2, 'de'),
('compresseurs', 'Kompressoren', 'compresseurs', 'materiel-de-construction', 2, 'de'),
('lasers-niveaux', 'Laser & Nivelliergeräte', 'lasers-niveaux', 'materiel-de-construction', 2, 'de');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('ciment', 'Zement', 'ciment', 'materiaux-de-construction', 2, 'de'),
('beton-pret-a-lemploi', 'Fertigbeton', 'beton-pret-a-lemploi', 'materiaux-de-construction', 2, 'de'),
('sable-gravier', 'Sand & Kies', 'sable-gravier', 'materiaux-de-construction', 2, 'de'),
('briques-blocs', 'Ziegel & Blöcke', 'briques-blocs', 'materiaux-de-construction', 2, 'de'),
('parpaings', 'Betonsteine', 'parpaings', 'materiaux-de-construction', 2, 'de'),
('pierres-naturelles', 'Naturstein', 'pierres-naturelles', 'materiaux-de-construction', 2, 'de'),
('bois-de-construction', 'Bauholz', 'bois-de-construction', 'materiaux-de-construction', 2, 'de'),
('tuiles-toitures', 'Dachziegel & Dach', 'tuiles-toitures', 'materiaux-de-construction', 2, 'de'),
('plaques-de-platre', 'Gipskartonplatten', 'plaques-de-platre', 'materiaux-de-construction', 2, 'de'),
('isolants', 'Dämmstoffe', 'isolants', 'materiaux-de-construction', 2, 'de'),
('peintures-enduits', 'Farben & Putze', 'peintures-enduits', 'materiaux-de-construction', 2, 'de'),
('revetements-sols-murs', 'Boden- & Wandbeläge', 'revetements-sols-murs', 'materiaux-de-construction', 2, 'de');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('vis-boulons', 'Schrauben & Bolzen', 'vis-boulons', 'quincaillerie-fixations', 2, 'de'),
('chevilles', 'Dübel', 'chevilles', 'quincaillerie-fixations', 2, 'de'),
('clous', 'Nägel', 'clous', 'quincaillerie-fixations', 2, 'de'),
('equerres', 'Winkelverbinder', 'equerres', 'quincaillerie-fixations', 2, 'de'),
('charniere', 'Scharniere', 'charniere', 'quincaillerie-fixations', 2, 'de'),
('serrures', 'Schlösser', 'serrures', 'quincaillerie-fixations', 2, 'de'),
('cadenas', 'Vorhängeschlösser', 'cadenas', 'quincaillerie-fixations', 2, 'de'),
('colles-mastics', 'Klebstoffe & Dichtmassen', 'colles-mastics', 'quincaillerie-fixations', 2, 'de'),
('rubans-adhesifs', 'Klebebänder', 'rubans-adhesifs', 'quincaillerie-fixations', 2, 'de'),
('joints-silicone', 'Dichtungen & Silikon', 'joints-silicone', 'quincaillerie-fixations', 2, 'de');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('cables-electriques', 'Elektrokabel', 'cables-electriques', 'equipements-electriques-plomberie', 2, 'de'),
('interrupteurs-prises', 'Schalter & Steckdosen', 'interrupteurs-prises', 'equipements-electriques-plomberie', 2, 'de'),
('disjoncteurs', 'Leitungsschutzschalter', 'disjoncteurs', 'equipements-electriques-plomberie', 2, 'de'),
('tableaux-electriques', 'Verteilerkästen', 'tableaux-electriques', 'equipements-electriques-plomberie', 2, 'de'),
('eclairage-chantier', 'Baustellenbeleuchtung', 'eclairage-chantier', 'equipements-electriques-plomberie', 2, 'de'),
('tuyaux-raccords', 'Rohre & Fittings', 'tuyaux-raccords', 'equipements-electriques-plomberie', 2, 'de'),
('robinets', 'Armaturen', 'robinets', 'equipements-electriques-plomberie', 2, 'de'),
('compteurs-eau', 'Wasserzähler', 'compteurs-eau', 'equipements-electriques-plomberie', 2, 'de'),
('pompes', 'Pumpen', 'pompes', 'equipements-electriques-plomberie', 2, 'de'),
('chauffe-eau', 'Warmwasserbereiter', 'chauffe-eau', 'equipements-electriques-plomberie', 2, 'de'),
('sanitaires', 'Sanitäreinrichtungen', 'sanitaires', 'equipements-electriques-plomberie', 2, 'de');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('outils-manuels', 'Handwerkzeuge (Hämmer, Schlüssel, Schraubendreher, Wasserwaagen)', 'outils-manuels', 'outils-equipements-professionnels', 2, 'de'),
('outils-de-mesure', 'Messwerkzeuge', 'outils-de-mesure', 'outils-equipements-professionnels', 2, 'de'),
('mallettes-coffrets', 'Koffer & Kästen', 'mallettes-coffrets', 'outils-equipements-professionnels', 2, 'de'),
('outils-diamantes', 'Diamantwerkzeuge', 'outils-diamantes', 'outils-equipements-professionnels', 2, 'de'),
('meuleuses', 'Schleifmaschinen', 'meuleuses', 'outils-equipements-professionnels', 2, 'de'),
('perforateurs', 'Bohrhämmer', 'perforateurs', 'outils-equipements-professionnels', 2, 'de'),
('perceuses', 'Bohrmaschinen', 'perceuses', 'outils-equipements-professionnels', 2, 'de'),
('scies-circulaires', 'Kreissägen', 'scies-circulaires', 'outils-equipements-professionnels', 2, 'de'),
('ponceuses', 'Schleifmaschinen', 'ponceuses', 'outils-equipements-professionnels', 2, 'de'),
('lasers-rotatifs', 'Rotationslaser', 'lasers-rotatifs', 'outils-equipements-professionnels', 2, 'de');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('casques-de-chantier', 'Schutzhelme', 'casques-de-chantier', 'securite-protection', 2, 'de'),
('gilets-haute-visibilite', 'Warnwesten', 'gilets-haute-visibilite', 'securite-protection', 2, 'de'),
('chaussures-de-securite', 'Sicherheitsschuhe', 'chaussures-de-securite', 'securite-protection', 2, 'de'),
('gants-de-protection', 'Schutzhandschuhe', 'gants-de-protection', 'securite-protection', 2, 'de'),
('lunettes', 'Schutzbrillen', 'lunettes', 'securite-protection', 2, 'de'),
('masques-anti-poussiere', 'Staubmasken', 'masques-anti-poussiere', 'securite-protection', 2, 'de'),
('harnais-de-securite', 'Sicherheitsgurte', 'harnais-de-securite', 'securite-protection', 2, 'de'),
('filets-de-protection', 'Schutznetze', 'filets-de-protection', 'securite-protection', 2, 'de'),
('barrieres-de-chantier', 'Baustellenabsperrungen', 'barrieres-de-chantier', 'securite-protection', 2, 'de');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('bungalows-bases-vie', 'Baubüros', 'bungalows-bases-vie', 'construction-modulaire-structures', 2, 'de'),
('conteneurs-amenages', 'Ausgebaute Container', 'conteneurs-amenages', 'construction-modulaire-structures', 2, 'de'),
('cabanes-abris', 'Schuppen & Unterstände', 'cabanes-abris', 'construction-modulaire-structures', 2, 'de'),
('hangars-metalliques', 'Metallhallen', 'hangars-metalliques', 'construction-modulaire-structures', 2, 'de'),
('structures-prefabriquees', 'Fertigteile-Strukturen', 'structures-prefabriquees', 'construction-modulaire-structures', 2, 'de'),
('serres-couvertures-industrielles', 'Gewächshäuser & Industrieabdeckungen', 'serres-couvertures-industrielles', 'construction-modulaire-structures', 2, 'de');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('location-d-engins', 'Gerätevermietung (Bagger, Bühnen, Lkw)', 'location-d-engins', 'location-materiel-btp', 2, 'de'),
('location-d-outillage', 'Werkzeugvermietung', 'location-d-outillage', 'location-materiel-btp', 2, 'de'),
('location-coffrage-echafaudage', 'Schalungs- & Gerüstvermietung', 'location-coffrage-echafaudage', 'location-materiel-btp', 2, 'de'),
('location-groupes-electrogenes', 'Generatorvermietung', 'location-groupes-electrogenes', 'location-materiel-btp', 2, 'de'),
('location-bungalows', 'Baubüro‑Vermietung', 'location-bungalows', 'location-materiel-btp', 2, 'de');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('travaux-publics', 'Öffentliche Bauarbeiten', 'travaux-publics', 'services-lies-au-btp', 2, 'de'),
('terrassement', 'Erdarbeiten', 'terrassement', 'services-lies-au-btp', 2, 'de'),
('demolition', 'Abriss', 'demolition', 'services-lies-au-btp', 2, 'de'),
('maconnerie', 'Mauerarbeiten', 'maconnerie', 'services-lies-au-btp', 2, 'de'),
('plomberie', 'Sanitär', 'plomberie', 'services-lies-au-btp', 2, 'de'),
('electricite', 'Elektroarbeiten', 'electricite', 'services-lies-au-btp', 2, 'de'),
('menuiserie', 'Tischlerei', 'menuiserie', 'services-lies-au-btp', 2, 'de'),
('charpente', 'Holzbau', 'charpente', 'services-lies-au-btp', 2, 'de'),
('peinture-finition', 'Malerarbeiten & Finish', 'peinture-finition', 'services-lies-au-btp', 2, 'de'),
('architecture-ingenierie', 'Architektur & Ingenieurwesen', 'architecture-ingenierie', 'services-lies-au-btp', 2, 'de'),
('topographie', 'Vermessung', 'topographie', 'services-lies-au-btp', 2, 'de');

-- ITALIANO
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES ('btp-engins-construction', 'Edilizia, Macchinari & Costruzioni', 'btp-engins-construction', NULL, 0, 'it');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('engins-de-chantier', 'Macchinari da cantiere', 'engins-de-chantier', 'btp-engins-construction', 1, 'it'),
('vehicules-transport-materiaux', 'Veicoli & trasporto materiali', 'vehicules-transport-materiaux', 'btp-engins-construction', 1, 'it'),
('materiel-de-construction', 'Attrezzature da costruzione', 'materiel-de-construction', 'btp-engins-construction', 1, 'it'),
('materiaux-de-construction', 'Materiali da costruzione', 'materiaux-de-construction', 'btp-engins-construction', 1, 'it'),
('quincaillerie-fixations', 'Ferramenta & fissaggi', 'quincaillerie-fixations', 'btp-engins-construction', 1, 'it'),
('equipements-electriques-plomberie', 'Elettrico & idraulica', 'equipements-electriques-plomberie', 'btp-engins-construction', 1, 'it'),
('outils-equipements-professionnels', 'Utensili & attrezzature professionali', 'outils-equipements-professionnels', 'btp-engins-construction', 1, 'it'),
('securite-protection', 'Sicurezza & DPI', 'securite-protection', 'btp-engins-construction', 1, 'it'),
('construction-modulaire-structures', 'Costruzioni modulari & strutture', 'construction-modulaire-structures', 'btp-engins-construction', 1, 'it'),
('location-materiel-btp', 'Noleggio attrezzature edili', 'location-materiel-btp', 'btp-engins-construction', 1, 'it'),
('services-lies-au-btp', 'Servizi per l’edilizia', 'services-lies-au-btp', 'btp-engins-construction', 1, 'it');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('pelles-hydrauliques', 'Escavatori idraulici', 'pelles-hydrauliques', 'engins-de-chantier', 2, 'it'),
('mini-pelles', 'Mini‑escavatori', 'mini-pelles', 'engins-de-chantier', 2, 'it'),
('chargeuses', 'Pale caricatrici', 'chargeuses', 'engins-de-chantier', 2, 'it'),
('bulldozers', 'Bulldozer', 'bulldozers', 'engins-de-chantier', 2, 'it'),
('niveleuses', 'Livellatrici', 'niveleuses', 'engins-de-chantier', 2, 'it'),
('tractopelles', 'Terne', 'tractopelles', 'engins-de-chantier', 2, 'it'),
('compacteurs', 'Compattatori', 'compacteurs', 'engins-de-chantier', 2, 'it'),
('rouleaux-compresseurs', 'Rulli compattatori', 'rouleaux-compresseurs', 'engins-de-chantier', 2, 'it'),
('dumpers', 'Dumpers', 'dumpers', 'engins-de-chantier', 2, 'it'),
('camions-bennes', 'Autocarri ribaltabili', 'camions-bennes', 'engins-de-chantier', 2, 'it'),
('grues-mobiles', 'Autogru', 'grues-mobiles', 'engins-de-chantier', 2, 'it'),
('grues-a-tour', 'Gru a torre', 'grues-a-tour', 'engins-de-chantier', 2, 'it'),
('chariots-telescopiques', 'Sollevatori telescopici', 'chariots-telescopiques', 'engins-de-chantier', 2, 'it'),
('nacelles-elevatrices', 'Piattaforme aeree', 'nacelles-elevatrices', 'engins-de-chantier', 2, 'it'),
('foreuses', 'Perforatrici', 'foreuses', 'engins-de-chantier', 2, 'it'),
('retrochargeuses', 'Terne', 'retrochargeuses', 'engins-de-chantier', 2, 'it');

-- NIVEAU 3 : Engins de construction (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('bulldozers', 'Bulldozer', 'bulldozers', 'engins-de-chantier', 3, 'it'),
('pelleteuses', 'Escavatori', 'pelleteuses', 'engins-de-chantier', 3, 'it'),
('chargeuses', 'Caricatori', 'chargeuses', 'engins-de-chantier', 3, 'it'),
('niveleuses', 'Livellatrici', 'niveleuses', 'engins-de-chantier', 3, 'it'),
('compacteurs', 'Compattatori', 'compacteurs', 'engins-de-chantier', 3, 'it'),
('grues', 'Grù', 'grues', 'engins-de-chantier', 3, 'it'),
('grues-mobiles', 'Grù mobili', 'grues-mobiles', 'engins-de-chantier', 3, 'it'),
('grues-a-tour', 'Grù a torre', 'grues-a-tour', 'engins-de-chantier', 3, 'it'),
('betonnieres', 'Betoniere', 'betonnieres', 'engins-de-chantier', 3, 'it'),
('pompees-a-beton', 'Pompe per calcestruzzo', 'pompees-a-beton', 'engins-de-chantier', 3, 'it'),
('chariots-elevateurs', 'Carrelli elevatori', 'chariots-elevateurs', 'engins-de-chantier', 3, 'it');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('camions-de-chantier', 'Autocarri da cantiere', 'camions-de-chantier', 'vehicules-transport-materiaux', 2, 'it'),
('camions-malaxeurs-toupies-beton', 'Autobetoniere', 'camions-malaxeurs-toupies-beton', 'vehicules-transport-materiaux', 2, 'it'),
('camions-porte-engins', 'Autocarri porta‑mezzi', 'camions-porte-engins', 'vehicules-transport-materiaux', 2, 'it'),
('remorques-de-chantier', 'Rimorchi da cantiere', 'remorques-de-chantier', 'vehicules-transport-materiaux', 2, 'it'),
('vehicules-utilitaires', 'Veicoli commerciali', 'vehicules-utilitaires', 'vehicules-transport-materiaux', 2, 'it'),
('pick-ups', 'Pick‑up', 'pick-ups', 'vehicules-transport-materiaux', 2, 'it'),
('fourgons', 'Furgoni', 'fourgons', 'vehicules-transport-materiaux', 2, 'it');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('betonnieres', 'Betoniere', 'betonnieres', 'materiel-de-construction', 2, 'it'),
('vibrateurs-beton', 'Vibratori per calcestruzzo', 'vibrateurs-beton', 'materiel-de-construction', 2, 'it'),
('pompes-a-beton', 'Pompe per calcestruzzo', 'pompes-a-beton', 'materiel-de-construction', 2, 'it'),
('coffrages', 'Casseri', 'coffrages', 'materiel-de-construction', 2, 'it'),
('etais', 'Puntelli', 'etais', 'materiel-de-construction', 2, 'it'),
('echafaudages', 'Ponteggi', 'echafaudages', 'materiel-de-construction', 2, 'it'),
('echelles', 'Scale', 'echelles', 'materiel-de-construction', 2, 'it'),
('outils-pneumatiques', 'Utensili pneumatici', 'outils-pneumatiques', 'materiel-de-construction', 2, 'it'),
('marteaux-piqueurs', 'Martelli demolitori', 'marteaux-piqueurs', 'materiel-de-construction', 2, 'it'),
('scies-de-chantier', 'Seghe da cantiere', 'scies-de-chantier', 'materiel-de-construction', 2, 'it'),
('groupes-electrogenes', 'Generatori', 'groupes-electrogenes', 'materiel-de-construction', 2, 'it'),
('compresseurs', 'Compressori', 'compresseurs', 'materiel-de-construction', 2, 'it'),
('lasers-niveaux', 'Laser & livelli', 'lasers-niveaux', 'materiel-de-construction', 2, 'it');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('ciment', 'Cemento', 'ciment', 'materiaux-de-construction', 2, 'it'),
('beton-pret-a-lemploi', 'Calcestruzzo preconfezionato', 'beton-pret-a-lemploi', 'materiaux-de-construction', 2, 'it'),
('sable-gravier', 'Sabbia & ghiaia', 'sable-gravier', 'materiaux-de-construction', 2, 'it'),
('briques-blocs', 'Mattoni & blocchi', 'briques-blocs', 'materiaux-de-construction', 2, 'it'),
('parpaings', 'Blocchi di cemento', 'parpaings', 'materiaux-de-construction', 2, 'it'),
('pierres-naturelles', 'Pietra naturale', 'pierres-naturelles', 'materiaux-de-construction', 2, 'it'),
('bois-de-construction', 'Legname da costruzione', 'bois-de-construction', 'materiaux-de-construction', 2, 'it'),
('tuiles-toitures', 'Tegole & coperture', 'tuiles-toitures', 'materiaux-de-construction', 2, 'it'),
('plaques-de-platre', 'Cartongesso', 'plaques-de-platre', 'materiaux-de-construction', 2, 'it'),
('isolants', 'Isolanti', 'isolants', 'materiaux-de-construction', 2, 'it'),
('peintures-enduits', 'Vernici & intonaci', 'peintures-enduits', 'materiaux-de-construction', 2, 'it'),
('revetements-sols-murs', 'Rivestimenti per pavimenti & pareti', 'revetements-sols-murs', 'materiaux-de-construction', 2, 'it');

-- NIVEAU 3 : Matériaux de construction (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('beton', 'Calcestruzzo', 'beton', 'materiaux-de-construction', 3, 'it'),
('ciment', 'Cemento', 'ciment', 'materiaux-de-construction', 3, 'it'),
('acier-de-construction', 'Acciaio da costruzione', 'acier-de-construction', 'materiaux-de-construction', 3, 'it'),
('bois-de-charpente', 'Legno da carpenteria', 'bois-de-charpente', 'materiaux-de-construction', 3, 'it'),
('carreaux-ceramiques', 'Piastrelle ceramiche', 'carreaux-ceramiques', 'materiaux-de-construction', 3, 'it'),
('tuiles', 'Tegole', 'tuiles', 'materiaux-de-construction', 3, 'it'),
('ardoises', 'Ardesie', 'ardoises', 'materiaux-de-construction', 3, 'it'),
('parpaings', 'Blocchi di cemento', 'parpaings', 'materiaux-de-construction', 3, 'it'),
('briques', 'Mattoni', 'briques', 'materiaux-de-construction', 3, 'it'),
('platre', 'Gesso', 'platre', 'materiaux-de-construction', 3, 'it');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('vis-boulons', 'Viti & bulloni', 'vis-boulons', 'quincaillerie-fixations', 2, 'it'),
('chevilles', 'Tasselli', 'chevilles', 'quincaillerie-fixations', 2, 'it'),
('clous', 'Chiodi', 'clous', 'quincaillerie-fixations', 2, 'it'),
('equerres', 'Staffette', 'equerres', 'quincaillerie-fixations', 2, 'it'),
('charniere', 'Cerniere', 'charniere', 'quincaillerie-fixations', 2, 'it'),
('serrures', 'Serrature', 'serrures', 'quincaillerie-fixations', 2, 'it'),
('cadenas', 'Lucchetti', 'cadenas', 'quincaillerie-fixations', 2, 'it'),
('colles-mastics', 'Adesivi & sigillanti', 'colles-mastics', 'quincaillerie-fixations', 2, 'it'),
('rubans-adhesifs', 'Nastri adesivi', 'rubans-adhesifs', 'quincaillerie-fixations', 2, 'it'),
('joints-silicone', 'Guarnizioni & silicone', 'joints-silicone', 'quincaillerie-fixations', 2, 'it');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('cables-electriques', 'Cavi elettrici', 'cables-electriques', 'equipements-electriques-plomberie', 2, 'it'),
('interrupteurs-prises', 'Interruttori & prese', 'interrupteurs-prises', 'equipements-electriques-plomberie', 2, 'it'),
('disjoncteurs', 'Interruttori automatici', 'disjoncteurs', 'equipements-electriques-plomberie', 2, 'it'),
('tableaux-electriques', 'Quadri elettrici', 'tableaux-electriques', 'equipements-electriques-plomberie', 2, 'it'),
('eclairage-chantier', 'Illuminazione da cantiere', 'eclairage-chantier', 'equipements-electriques-plomberie', 2, 'it'),
('tuyaux-raccords', 'Tubi & raccordi', 'tuyaux-raccords', 'equipements-electriques-plomberie', 2, 'it'),
('robinets', 'Rubinetteria', 'robinets', 'equipements-electriques-plomberie', 2, 'it'),
('compteurs-eau', 'Contatori dell’acqua', 'compteurs-eau', 'equipements-electriques-plomberie', 2, 'it'),
('pompes', 'Pompe', 'pompes', 'equipements-electriques-plomberie', 2, 'it'),
('chauffe-eau', 'Scaldacqua', 'chauffe-eau', 'equipements-electriques-plomberie', 2, 'it'),
('sanitaires', 'Sanitari', 'sanitaires', 'equipements-electriques-plomberie', 2, 'it');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('outils-manuels', 'Utensili manuali (martelli, chiavi, cacciaviti, livelli)', 'outils-manuels', 'outils-equipements-professionnels', 2, 'it'),
('outils-de-mesure', 'Strumenti di misura', 'outils-de-mesure', 'outils-equipements-professionnels', 2, 'it'),
('mallettes-coffrets', 'Valigette & assortimenti', 'mallettes-coffrets', 'outils-equipements-professionnels', 2, 'it'),
('outils-diamantes', 'Utensili diamantati', 'outils-diamantes', 'outils-equipements-professionnels', 2, 'it'),
('meuleuses', 'Smerigliatrici', 'meuleuses', 'outils-equipements-professionnels', 2, 'it'),
('perforateurs', 'Martelli perforatori', 'perforateurs', 'outils-equipements-professionnels', 2, 'it'),
('perceuses', 'Trapani', 'perceuses', 'outils-equipements-professionnels', 2, 'it'),
('scies-circulaires', 'Seghe circolari', 'scies-circulaires', 'outils-equipements-professionnels', 2, 'it'),
('ponceuses', 'Levigatrici', 'ponceuses', 'outils-equipements-professionnels', 2, 'it'),
('lasers-rotatifs', 'Laser rotativi', 'lasers-rotatifs', 'outils-equipements-professionnels', 2, 'it');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('casques-de-chantier', 'Caschi da cantiere', 'casques-de-chantier', 'securite-protection', 2, 'it'),
('gilets-haute-visibilite', 'Gilet ad alta visibilità', 'gilets-haute-visibilite', 'securite-protection', 2, 'it'),
('chaussures-de-securite', 'Scarpe antinfortunistiche', 'chaussures-de-securite', 'securite-protection', 2, 'it'),
('gants-de-protection', 'Guanti di protezione', 'gants-de-protection', 'securite-protection', 2, 'it'),
('lunettes', 'Occhiali protettivi', 'lunettes', 'securite-protection', 2, 'it'),
('masques-anti-poussiere', 'Mascherine antipolvere', 'masques-anti-poussiere', 'securite-protection', 2, 'it'),
('harnais-de-securite', 'Imbracature di sicurezza', 'harnais-de-securite', 'securite-protection', 2, 'it'),
('filets-de-protection', 'Reti di sicurezza', 'filets-de-protection', 'securite-protection', 2, 'it'),
('barrieres-de-chantier', 'Barriere di cantiere', 'barrieres-de-chantier', 'securite-protection', 2, 'it');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('bungalows-bases-vie', 'Baracche di cantiere', 'bungalows-bases-vie', 'construction-modulaire-structures', 2, 'it'),
('conteneurs-amenages', 'Container attrezzati', 'conteneurs-amenages', 'construction-modulaire-structures', 2, 'it'),
('cabanes-abris', 'Capanni & rifugi', 'cabanes-abris', 'construction-modulaire-structures', 2, 'it'),
('hangars-metalliques', 'Capannoni metallici', 'hangars-metalliques', 'construction-modulaire-structures', 2, 'it'),
('structures-prefabriquees', 'Strutture prefabbricate', 'structures-prefabriquees', 'construction-modulaire-structures', 2, 'it'),
('serres-couvertures-industrielles', 'Serre & coperture industriali', 'serres-couvertures-industrielles', 'construction-modulaire-structures', 2, 'it');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('location-d-engins', 'Noleggio macchinari (escavatori, piattaforme, camion)', 'location-d-engins', 'location-materiel-btp', 2, 'it'),
('location-d-outillage', 'Noleggio utensili', 'location-d-outillage', 'location-materiel-btp', 2, 'it'),
('location-coffrage-echafaudage', 'Noleggio casseri & ponteggi', 'location-coffrage-echafaudage', 'location-materiel-btp', 2, 'it'),
('location-groupes-electrogenes', 'Noleggio generatori', 'location-groupes-electrogenes', 'location-materiel-btp', 2, 'it'),
('location-bungalows', 'Noleggio baracche', 'location-bungalows', 'location-materiel-btp', 2, 'it');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('travaux-publics', 'Lavori pubblici', 'travaux-publics', 'services-lies-au-btp', 2, 'it'),
('terrassement', 'Movimento terra', 'terrassement', 'services-lies-au-btp', 2, 'it'),
('demolition', 'Demolizione', 'demolition', 'services-lies-au-btp', 2, 'it'),
('maconnerie', 'Muratura', 'maconnerie', 'services-lies-au-btp', 2, 'it'),
('plomberie', 'Idraulica', 'plomberie', 'services-lies-au-btp', 2, 'it'),
('electricite', 'Elettricità', 'electricite', 'services-lies-au-btp', 2, 'it'),
('menuiserie', 'Falegnameria', 'menuiserie', 'services-lies-au-btp', 2, 'it'),
('charpente', 'Strutture in legno', 'charpente', 'services-lies-au-btp', 2, 'it'),
('peinture-finition', 'Verniciatura & finitura', 'peinture-finition', 'services-lies-au-btp', 2, 'it'),
('architecture-ingenierie', 'Architettura & ingegneria', 'architecture-ingenierie', 'services-lies-au-btp', 2, 'it');

-- NIVEAU 3 : Engins de construction
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('bulldozers', 'بلدوزرات', 'bulldozers', 'engins-de-chantier', 3, 'ar'),
('pelleteuses', 'حفارات', 'pelleteuses', 'engins-de-chantier', 3, 'ar'),
('chargeuses', 'جرافات', 'chargeuses', 'engins-de-chantier', 3, 'ar'),
('niveleuses', 'ممهدات طرق', 'niveleuses', 'engins-de-chantier', 3, 'ar'),
('compacteurs', 'مدحلات', 'compacteurs', 'engins-de-chantier', 3, 'ar'),
('grues', 'رافعات', 'grues', 'engins-de-chantier', 3, 'ar'),
('grues-mobiles', 'رافعات متنقلة', 'grues-mobiles', 'engins-de-chantier', 3, 'ar'),
('grues-a-tour', 'رافعات برجية', 'grues-a-tour', 'engins-de-chantier', 3, 'ar'),
('betonnieres', 'خلاطات خرسانة', 'betonnieres', 'engins-de-chantier', 3, 'ar'),
('pompees-a-beton', 'مضخات الخرسانة', 'pompees-a-beton', 'engins-de-chantier', 3, 'ar'),
('chariots-elevateurs', 'رافعات شوكية', 'chariots-elevateurs', 'engins-de-chantier', 3, 'ar');

-- NIVEAU 3 : Matériels BTP
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('beton', 'خرسانة', 'beton', 'materiaux-de-construction', 3, 'ar'),
('ciment', 'أسمنت', 'ciment', 'materiaux-de-construction', 3, 'ar'),
('acier-de-construction', 'فولاذ إنشائي', 'acier-de-construction', 'materiaux-de-construction', 3, 'ar'),
('bois-de-charpente', 'خشب تسقيف', 'bois-de-charpente', 'materiaux-de-construction', 3, 'ar'),
('carreaux-ceramiques', 'بلاط سيراميك', 'carreaux-ceramiques', 'materiaux-de-construction', 3, 'ar'),
('tuiles', 'قرميد', 'tuiles', 'materiaux-de-construction', 3, 'ar'),
('ardoises', 'أردواز', 'ardoises', 'materiaux-de-construction', 3, 'ar'),
('parpaings', 'بلوك خرسانة', 'parpaings', 'materiaux-de-construction', 3, 'ar'),
('briques', 'طوب', 'briques', 'materiaux-de-construction', 3, 'ar'),
('platre', 'جبس', 'platre', 'materiaux-de-construction', 3, 'ar');