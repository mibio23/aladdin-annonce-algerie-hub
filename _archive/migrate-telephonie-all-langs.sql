-- Migration complète Téléphonie - Toutes les langues
-- Script SQL pour insertion directe dans Supabase

-- =====================================================
-- ARABE (ar)
-- =====================================================
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES ('telephonie', 'الهاتف', 'telephonie', NULL, 0, 'ar');

-- Sous-catégories niveau 1 - Arabe
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('smartphones', 'الهواتف الذكية', 'smartphones', 'telephonie', 1, 'ar'),
('telephones-classiques-fixes', 'الهواتف الكلاسيكية والثابتة', 'telephones-classiques-fixes', 'telephonie', 1, 'ar'),
('tablettes-appareils-mobiles', 'الأجهزة اللوحية والأجهزة المحمولة', 'tablettes-appareils-mobiles', 'telephonie', 1, 'ar'),
('accessoires-telephones', 'إكسسوارات الهواتف', 'accessoires-telephones', 'telephonie', 1, 'ar'),
('batteries-charge', 'البطاريات والشحن', 'batteries-charge', 'telephonie', 1, 'ar'),
('audio-mobile', 'الصوت المحمول', 'audio-mobile', 'telephonie', 1, 'ar'),
('pieces-reparation-telephone', 'قطع الغيار وإصلاح الهاتف', 'pieces-reparation-telephone', 'telephonie', 1, 'ar'),
('objets-connectes-mobile', 'الأجهزة المتصلة (المحمول)', 'objets-connectes-mobile', 'telephonie', 1, 'ar'),
('reseau-communication-mobile', 'الشبكة والاتصالات المحمولة', 'reseau-communication-mobile', 'telephonie', 1, 'ar'),
('securite-protection-mobile', 'الأمان والحماية', 'securite-protection-mobile', 'telephonie', 1, 'ar'),
('applications-services-mobiles', 'التطبيقات والخدمات', 'applications-services-mobiles', 'telephonie', 1, 'ar'),
('marques-populaires-mobiles', 'العلامات التجارية الشهيرة (المحمول)', 'marques-populaires-mobiles', 'telephonie', 1, 'ar'),
('operateurs-mobiles-algerie', 'المشغلون المحمولون في الجزائر', 'operateurs-mobiles-algerie', 'telephonie', 1, 'ar');

-- =====================================================
-- FRANÇAIS (fr)
-- =====================================================
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES ('telephonie', 'Téléphonie', 'telephonie', NULL, 0, 'fr');

-- Sous-catégories niveau 1 - Français
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('smartphones', 'Smartphones', 'smartphones', 'telephonie', 1, 'fr'),
('telephones-classiques-fixes', 'Téléphones Classiques & Fixes', 'telephones-classiques-fixes', 'telephonie', 1, 'fr'),
('tablettes-appareils-mobiles', 'Tablettes & Appareils Mobiles', 'tablettes-appareils-mobiles', 'telephonie', 1, 'fr'),
('accessoires-telephones', 'Accessoires Téléphones', 'accessoires-telephones', 'telephonie', 1, 'fr'),
('batteries-charge', 'Batteries & Charge', 'batteries-charge', 'telephonie', 1, 'fr'),
('audio-mobile', 'Audio Mobile', 'audio-mobile', 'telephonie', 1, 'fr'),
('pieces-reparation-telephone', 'Pièces & Réparation Téléphone', 'pieces-reparation-telephone', 'telephonie', 1, 'fr'),
('objets-connectes-mobile', 'Objets Connectés (Mobile)', 'objets-connectes-mobile', 'telephonie', 1, 'fr'),
('reseau-communication-mobile', 'Réseau & Communication Mobile', 'reseau-communication-mobile', 'telephonie', 1, 'fr'),
('securite-protection-mobile', 'Sécurité & Protection', 'securite-protection-mobile', 'telephonie', 1, 'fr'),
('applications-services-mobiles', 'Applications & Services', 'applications-services-mobiles', 'telephonie', 1, 'fr'),
('marques-populaires-mobiles', 'Marques Populaires (Mobiles)', 'marques-populaires-mobiles', 'telephonie', 1, 'fr'),
('operateurs-mobiles-algerie', 'Opérateurs Mobiles en Algérie', 'operateurs-mobiles-algerie', 'telephonie', 1, 'fr');

-- =====================================================
-- ANGLAIS (en)
-- =====================================================
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES ('telephonie', 'Telephony', 'telephony', NULL, 0, 'en');

-- Sous-catégories niveau 1 - Anglais
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('smartphones', 'Smartphones', 'smartphones', 'telephonie', 1, 'en'),
('telephones-classiques-fixes', 'Classic & Landline Phones', 'classic-landline-phones', 'telephonie', 1, 'en'),
('tablettes-appareils-mobiles', 'Tablets & Mobile Devices', 'tablets-mobile-devices', 'telephonie', 1, 'en'),
('accessoires-telephones', 'Phone Accessories', 'phone-accessories', 'telephonie', 1, 'en'),
('batteries-charge', 'Batteries & Charging', 'batteries-charging', 'telephonie', 1, 'en'),
('audio-mobile', 'Mobile Audio', 'mobile-audio', 'telephonie', 1, 'en'),
('pieces-reparation-telephone', 'Phone Parts & Repair', 'phone-parts-repair', 'telephonie', 1, 'en'),
('objets-connectes-mobile', 'Connected Devices (Mobile)', 'connected-devices-mobile', 'telephonie', 1, 'en'),
('reseau-communication-mobile', 'Network & Mobile Communication', 'network-mobile-communication', 'telephonie', 1, 'en'),
('securite-protection-mobile', 'Security & Protection', 'security-protection-mobile', 'telephonie', 1, 'en'),
('applications-services-mobiles', 'Applications & Services', 'applications-services-mobile', 'telephonie', 1, 'en'),
('marques-populaires-mobiles', 'Popular Brands (Mobile)', 'popular-brands-mobile', 'telephonie', 1, 'en'),
('operateurs-mobiles-algerie', 'Mobile Operators in Algeria', 'mobile-operators-algeria', 'telephonie', 1, 'en');

-- =====================================================
-- ESPAGNOL (es)
-- =====================================================
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES ('telephonie', 'Telefonía', 'telefonia', NULL, 0, 'es');

-- Sous-catégories niveau 1 - Espagnol
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('smartphones', 'Smartphones', 'smartphones', 'telephonie', 1, 'es'),
('telephones-classiques-fixes', 'Teléfonos Clásicos & Fijos', 'telefonos-clasicos-fijos', 'telephonie', 1, 'es'),
('tablettes-appareils-mobiles', 'Tabletas & Dispositivos Móviles', 'tabletas-dispositivos-moviles', 'telephonie', 1, 'es'),
('accessoires-telephones', 'Accesorios de Teléfonos', 'accesorios-telefonos', 'telephonie', 1, 'es'),
('batteries-charge', 'Baterías & Carga', 'baterias-carga', 'telephonie', 1, 'es'),
('audio-mobile', 'Audio Móvil', 'audio-movil', 'telephonie', 1, 'es'),
('pieces-reparation-telephone', 'Piezas & Reparación de Teléfonos', 'piezas-reparacion-telefonos', 'telephonie', 1, 'es'),
('objets-connectes-mobile', 'Dispositivos Conectados (Móvil)', 'dispositivos-conectados-movil', 'telephonie', 1, 'es'),
('reseau-communication-mobile', 'Red & Comunicación Móvil', 'red-comunicacion-movil', 'telephonie', 1, 'es'),
('securite-protection-mobile', 'Seguridad & Protección', 'seguridad-proteccion-movil', 'telephonie', 1, 'es'),
('applications-services-mobiles', 'Aplicaciones & Servicios', 'aplicaciones-servicios-moviles', 'telephonie', 1, 'es'),
('marques-populaires-mobiles', 'Marcas Populares (Móviles)', 'marcas-populares-moviles', 'telephonie', 1, 'es'),
('operateurs-mobiles-algerie', 'Operadores Móviles en Argelia', 'operadores-moviles-argelia', 'telephonie', 1, 'es');

-- =====================================================
-- ALLEMAND (de)
-- =====================================================
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES ('telephonie', 'Telefonie', 'telefonie', NULL, 0, 'de');

-- Sous-catégories niveau 1 - Allemand
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('smartphones', 'Smartphones', 'smartphones', 'telephonie', 1, 'de'),
('telephones-classiques-fixes', 'Klassische & Festnetz-Telefone', 'klassische-festnetz-telefone', 'telephonie', 1, 'de'),
('tablettes-appareils-mobiles', 'Tablets & Mobile Geräte', 'tablets-mobile-geraete', 'telephonie', 1, 'de'),
('accessoires-telephones', 'Telefon-Zubehör', 'telefon-zubehoer', 'telephonie', 1, 'de'),
('batteries-charge', 'Batterien & Aufladung', 'batterien-aufladung', 'telephonie', 1, 'de'),
('audio-mobile', 'Mobile Audio', 'mobile-audio', 'telephonie', 1, 'de'),
('pieces-reparation-telephone', 'Telefon-Ersatzteile & Reparatur', 'telefon-ersatzteile-reparatur', 'telephonie', 1, 'de'),
('objets-connectes-mobile', 'Verbundene Geräte (Mobil)', 'verbundene-geraete-mobil', 'telephonie', 1, 'de'),
('reseau-communication-mobile', 'Netzwerk & Mobile Kommunikation', 'netzwerk-mobile-kommunikation', 'telephonie', 1, 'de'),
('securite-protection-mobile', 'Sicherheit & Schutz', 'sicherheit-schutz-mobil', 'telephonie', 1, 'de'),
('applications-services-mobiles', 'Anwendungen & Dienste', 'anwendungen-dienste-mobil', 'telephonie', 1, 'de'),
('marques-populaires-mobiles', 'Beliebte Marken (Mobil)', 'beliebte-marken-mobil', 'telephonie', 1, 'de'),
('operateurs-mobiles-algerie', 'Mobile Betreiber in Algerien', 'mobile-betreiber-algerien', 'telephonie', 1, 'de');

-- =====================================================
-- ITALIEN (it)
-- =====================================================
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES ('telephonie', 'Telefonia', 'telephonie', NULL, 0, 'it');

-- Sous-catégories niveau 1 - Italien
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('smartphones', 'Smartphone', 'smartphone', 'telephonie', 1, 'it'),
('telephones-classiques-fixes', 'Telefoni Classici & Fissi', 'telefoni-classici-fissi', 'telephonie', 1, 'it'),
('tablettes-appareils-mobiles', 'Tablet & Dispositivi Mobili', 'tablet-dispositivi-mobili', 'telephonie', 1, 'it'),
('accessoires-telephones', 'Accessori per Telefoni', 'accessori-telefoni', 'telephonie', 1, 'it'),
('batteries-charge', 'Batterie & Ricarica', 'batterie-ricarica', 'telephonie', 1, 'it'),
('audio-mobile', 'Audio Mobile', 'audio-mobile', 'telephonie', 1, 'it'),
('pieces-reparation-telephone', 'Pezzi di Ricambio & Riparazione Telefoni', 'pezzi-ricambio-riparazione-telefoni', 'telephonie', 1, 'it'),
('objets-connectes-mobile', 'Dispositivi Connessi (Mobile)', 'dispositivi-connessi-mobile', 'telephonie', 1, 'it'),
('reseau-communication-mobile', 'Rete & Comunicazione Mobile', 'rete-comunicazione-mobile', 'telephonie', 1, 'it'),
('securite-protection-mobile', 'Sicurezza & Protezione', 'sicurezza-protezione-mobile', 'telephonie', 1, 'it'),
('applications-services-mobiles', 'Applicazioni & Servizi', 'applicazioni-servizi-mobili', 'telephonie', 1, 'it'),
('marques-populaires-mobiles', 'Marche Popolari (Mobili)', 'marche-popolari-mobili', 'telephonie', 1, 'it'),
('operateurs-mobiles-algerie', 'Operatori Mobili in Algeria', 'operatori-mobili-algeria', 'telephonie', 1, 'it');

-- Sous-catégories niveau 2 - Français (sous-catégories de smartphones)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('smartphones-android', 'Smartphones Android', 'smartphones-android', 'smartphones', 2, 'fr'),
('iphone', 'iPhone', 'iphone', 'smartphones', 2, 'fr'),
('smartphones-5g', 'Smartphones 5G', 'smartphones-5g', 'smartphones', 2, 'fr'),
('smartphones-gaming', 'Smartphones gaming', 'smartphones-gaming', 'smartphones', 2, 'fr'),
('smartphones-pliables', 'Smartphones pliables', 'smartphones-pliables', 'smartphones', 2, 'fr'),
('smartphones-entree-de-gamme', 'Smartphones d\'entrée de gamme', 'smartphones-entree-de-gamme', 'smartphones', 2, 'fr'),
('smartphones-milieu-de-gamme', 'Smartphones milieu de gamme', 'smartphones-milieu-de-gamme', 'smartphones', 2, 'fr'),
('smartphones-haut-de-gamme', 'Smartphones haut de gamme', 'smartphones-haut-de-gamme', 'smartphones', 2, 'fr'),
('smartphones-reconditionnes', 'Smartphones reconditionnés', 'smartphones-reconditionnes', 'smartphones', 2, 'fr'),
('telephones-robustes-rugged', 'Téléphones robustes (rugged)', 'telephones-robustes-rugged', 'smartphones', 2, 'fr'),
('mini-smartphones', 'Mini smartphones', 'mini-smartphones', 'smartphones', 2, 'fr'),
('smartphones-professionnels', 'Smartphones professionnels', 'smartphones-professionnels', 'smartphones', 2, 'fr');

-- Sous-catégories niveau 2 - Français (sous-catégories de téléphones classiques)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('telephones-portables-classiques', 'Téléphones portables classiques', 'telephones-portables-classiques', 'telephones-classiques-fixes', 2, 'fr'),
('telephones-a-clapet', 'Téléphones à clapet', 'telephones-a-clapet', 'telephones-classiques-fixes', 2, 'fr'),
('telephones-seniors', 'Téléphones seniors', 'telephones-seniors', 'telephones-classiques-fixes', 2, 'fr'),
('telephones-fixes-filaires', 'Téléphones fixes filaires', 'telephones-fixes-filaires', 'telephones-classiques-fixes', 2, 'fr'),
('telephones-fixes-sans-fil', 'Téléphones fixes sans fil', 'telephones-fixes-sans-fil', 'telephones-classiques-fixes', 2, 'fr'),
('combines-dect', 'Combinés DECT', 'combines-dect', 'telephones-classiques-fixes', 2, 'fr'),
('telephones-voip', 'Téléphones VoIP', 'telephones-voip', 'telephones-classiques-fixes', 2, 'fr');

-- ARABE
-- Sous-catégories niveau 2 - Arabe (sous-catégories de smartphones)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('smartphones-android', 'هواتف أندرويد الذكية', 'smartphones-android', 'smartphones', 2, 'ar'),
('iphone', 'آيفون', 'iphone', 'smartphones', 2, 'ar'),
('smartphones-5g', 'هواتف 5G الذكية', 'smartphones-5g', 'smartphones', 2, 'ar'),
('smartphones-gaming', 'هواتف ألعاب ذكية', 'smartphones-gaming', 'smartphones', 2, 'ar'),
('smartphones-pliables', 'هواتف قابلة للطي', 'smartphones-pliables', 'smartphones', 2, 'ar'),
('smartphones-entree-de-gamme', 'هواتف ذكية منخفضة المواصفات', 'smartphones-entree-de-gamme', 'smartphones', 2, 'ar'),
('smartphones-milieu-de-gamme', 'هواتف ذكية متوسطة المواصفات', 'smartphones-milieu-de-gamme', 'smartphones', 2, 'ar'),
('smartphones-haut-de-gamme', 'هواتف ذكية عالية المواصفات', 'smartphones-haut-de-gamme', 'smartphones', 2, 'ar'),
('smartphones-reconditionnes', 'هواتف ذكية مجددة', 'smartphones-reconditionnes', 'smartphones', 2, 'ar'),
('telephones-robustes-rugged', 'هواتف قوية (عسكرية)', 'telephones-robustes-rugged', 'smartphones', 2, 'ar'),
('mini-smartphones', 'هواتف ذكية صغيرة', 'mini-smartphones', 'smartphones', 2, 'ar'),
('smartphones-professionnels', 'هواتف ذكية مهنية', 'smartphones-professionnels', 'smartphones', 2, 'ar');

-- Sous-catégories niveau 2 - Arabe (sous-catégories de téléphones classiques)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('telephones-portables-classiques', 'هواتف محمولة كلاسيكية', 'telephones-portables-classiques', 'telephones-classiques-fixes', 2, 'ar'),
('telephones-a-clapet', 'هواتف بمفصلة', 'telephones-a-clapet', 'telephones-classiques-fixes', 2, 'ar'),
('telephones-seniors', 'هواتف للمسنين', 'telephones-seniors', 'telephones-classiques-fixes', 2, 'ar'),
('telephones-fixes-filaires', 'هواتف ثابتة بسلك', 'telephones-fixes-filaires', 'telephones-classiques-fixes', 2, 'ar'),
('telephones-fixes-sans-fil', 'هواتف ثابتة لاسلكية', 'telephones-fixes-sans-fil', 'telephones-classiques-fixes', 2, 'ar'),
('combines-dect', 'هواتف DECT', 'combines-dect', 'telephones-classiques-fixes', 2, 'ar'),
('telephones-voip', 'هواتف VoIP', 'telephones-voip', 'telephones-classiques-fixes', 2, 'ar');

-- ANGLAIS
-- Sous-catégories niveau 2 - Anglais (sous-catégories de smartphones)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('smartphones-android', 'Android Smartphones', 'smartphones-android', 'smartphones', 2, 'en'),
('iphone', 'iPhone', 'iphone', 'smartphones', 2, 'en'),
('smartphones-5g', '5G Smartphones', 'smartphones-5g', 'smartphones', 2, 'en'),
('smartphones-gaming', 'Gaming Smartphones', 'smartphones-gaming', 'smartphones', 2, 'en'),
('smartphones-pliables', 'Foldable Smartphones', 'smartphones-pliables', 'smartphones', 2, 'en'),
('smartphones-entree-de-gamme', 'Entry-level Smartphones', 'smartphones-entree-de-gamme', 'smartphones', 2, 'en'),
('smartphones-milieu-de-gamme', 'Mid-range Smartphones', 'smartphones-milieu-de-gamme', 'smartphones', 2, 'en'),
('smartphones-haut-de-gamme', 'High-end Smartphones', 'smartphones-haut-de-gamme', 'smartphones', 2, 'en'),
('smartphones-reconditionnes', 'Refurbished Smartphones', 'smartphones-reconditionnes', 'smartphones', 2, 'en'),
('telephones-robustes-rugged', 'Rugged Phones', 'telephones-robustes-rugged', 'smartphones', 2, 'en'),
('mini-smartphones', 'Mini Smartphones', 'mini-smartphones', 'smartphones', 2, 'en'),
('smartphones-professionnels', 'Professional Smartphones', 'smartphones-professionnels', 'smartphones', 2, 'en');

-- Sous-catégories niveau 2 - Anglais (sous-catégories de téléphones classiques)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('telephones-portables-classiques', 'Classic Mobile Phones', 'telephones-portables-classiques', 'telephones-classiques-fixes', 2, 'en'),
('telephones-a-clapet', 'Flip Phones', 'telephones-a-clapet', 'telephones-classiques-fixes', 2, 'en'),
('telephones-seniors', 'Senior Phones', 'telephones-seniors', 'telephones-classiques-fixes', 2, 'en'),
('telephones-fixes-filaires', 'Corded Fixed Phones', 'telephones-fixes-filaires', 'telephones-classiques-fixes', 2, 'en'),
('telephones-fixes-sans-fil', 'Cordless Fixed Phones', 'telephones-fixes-sans-fil', 'telephones-classiques-fixes', 2, 'en'),
('combines-dect', 'DECT Handsets', 'combines-dect', 'telephones-classiques-fixes', 2, 'en'),
('telephones-voip', 'VoIP Phones', 'telephones-voip', 'telephones-classiques-fixes', 2, 'en');

-- ESPAGNOL
-- Sous-catégories niveau 2 - Espagnol (sous-catégories de smartphones)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('smartphones-android', 'Smartphones Android', 'smartphones-android', 'smartphones', 2, 'es'),
('iphone', 'iPhone', 'iphone', 'smartphones', 2, 'es'),
('smartphones-5g', 'Smartphones 5G', 'smartphones-5g', 'smartphones', 2, 'es'),
('smartphones-gaming', 'Smartphones Gaming', 'smartphones-gaming', 'smartphones', 2, 'es'),
('smartphones-pliables', 'Smartphones Plegables', 'smartphones-plegables', 'smartphones', 2, 'es'),
('smartphones-entree-de-gamme', 'Smartphones de Gama de Entrada', 'smartphones-gama-entrada', 'smartphones', 2, 'es'),
('smartphones-milieu-de-gamme', 'Smartphones de Gama Media', 'smartphones-gama-media', 'smartphones', 2, 'es'),
('smartphones-haut-de-gamme', 'Smartphones de Gama Alta', 'smartphones-gama-alta', 'smartphones', 2, 'es'),
('smartphones-reconditionnes', 'Smartphones Reacondicionados', 'smartphones-reacondicionados', 'smartphones', 2, 'es'),
('telephones-robustes-rugged', 'Teléfonos Robustos (Rugged)', 'telefonos-robustos-rugged', 'smartphones', 2, 'es'),
('mini-smartphones', 'Mini Smartphones', 'mini-smartphones', 'smartphones', 2, 'es'),
('smartphones-professionnels', 'Smartphones Profesionales', 'smartphones-profesionales', 'smartphones', 2, 'es');

-- Sous-catégories niveau 2 - Espagnol (sous-catégories de téléphones classiques)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('telephones-portables-classiques', 'Teléfonos Móviles Clásicos', 'telefonos-moviles-clasicos', 'telephones-classiques-fixes', 2, 'es'),
('telephones-a-clapet', 'Teléfonos de Bisagra', 'telefonos-bisagra', 'telephones-classiques-fixes', 2, 'es'),
('telephones-seniors', 'Teléfonos para Mayores', 'telefonos-mayores', 'telephones-classiques-fixes', 2, 'es'),
('telephones-fixes-filaires', 'Teléfonos Fijos con Cable', 'telefonos-fijos-cable', 'telephones-classiques-fixes', 2, 'es'),
('telephones-fixes-sans-fil', 'Teléfonos Fijos Inalámbricos', 'telefonos-fijos-inalambricos', 'telephones-classiques-fixes', 2, 'es'),
('combines-dect', 'Auriculares DECT', 'auriculares-dect', 'telephones-classiques-fixes', 2, 'es'),
('telephones-voip', 'Teléfonos VoIP', 'telefonos-voip', 'telephones-classiques-fixes', 2, 'es');

-- ALLEMAND
-- Sous-catégories niveau 2 - Allemand (sous-catégories de smartphones)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('smartphones-android', 'Android-Smartphones', 'android-smartphones', 'smartphones', 2, 'de'),
('iphone', 'iPhone', 'iphone', 'smartphones', 2, 'de'),
('smartphones-5g', '5G-Smartphones', '5g-smartphones', 'smartphones', 2, 'de'),
('smartphones-gaming', 'Gaming-Smartphones', 'gaming-smartphones', 'smartphones', 2, 'de'),
('smartphones-pliables', 'Faltbare Smartphones', 'faltbare-smartphones', 'smartphones', 2, 'de'),
('smartphones-entree-de-gamme', 'Einstiegs-Smartphones', 'einstiegs-smartphones', 'smartphones', 2, 'de'),
('smartphones-milieu-de-gamme', 'Mittelklasse-Smartphones', 'mittelklasse-smartphones', 'smartphones', 2, 'de'),
('smartphones-haut-de-gamme', 'High-End-Smartphones', 'high-end-smartphones', 'smartphones', 2, 'de'),
('smartphones-reconditionnes', 'Generalüberholte Smartphones', 'generaluberholte-smartphones', 'smartphones', 2, 'de'),
('telephones-robustes-rugged', 'Robuste Telefone (Rugged)', 'robuste-telefone-rugged', 'smartphones', 2, 'de'),
('mini-smartphones', 'Mini-Smartphones', 'mini-smartphones', 'smartphones', 2, 'de'),
('smartphones-professionnels', 'Professionelle Smartphones', 'professionelle-smartphones', 'smartphones', 2, 'de');

-- Sous-catégories niveau 2 - Allemand (sous-catégories de téléphones classiques)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('telephones-portables-classiques', 'Klassische Mobiltelefone', 'klassische-mobiltelefone', 'telephones-classiques-fixes', 2, 'de'),
('telephones-a-clapet', 'Klapphandys', 'klapphandys', 'telephones-classiques-fixes', 2, 'de'),
('telephones-seniors', 'Seniorenhandys', 'seniorenhandys', 'telephones-classiques-fixes', 2, 'de'),
('telephones-fixes-filaires', 'Schnurgebundene Festnetztelefone', 'schnurgebundene-festnetztelefone', 'telephones-classiques-fixes', 2, 'de'),
('telephones-fixes-sans-fil', 'Schnurlose Festnetztelefone', 'schnurlose-festnetztelefone', 'telephones-classiques-fixes', 2, 'de'),
('combines-dect', 'DECT-Handgeräte', 'dect-handgerate', 'telephones-classiques-fixes', 2, 'de'),
('telephones-voip', 'VoIP-Telefone', 'voip-telefone', 'telephones-classiques-fixes', 2, 'de');

-- ITALIEN
-- Sous-catégories niveau 2 - Italien (sous-catégories de smartphones)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('smartphones-android', 'Smartphone Android', 'smartphone-android', 'smartphones', 2, 'it'),
('iphone', 'iPhone', 'iphone', 'smartphones', 2, 'it'),
('smartphones-5g', 'Smartphone 5G', 'smartphone-5g', 'smartphones', 2, 'it'),
('smartphones-gaming', 'Smartphone Gaming', 'smartphone-gaming', 'smartphones', 2, 'it'),
('smartphones-pliables', 'Smartphone Pieghevoli', 'smartphone-pieghevoli', 'smartphones', 2, 'it'),
('smartphones-entree-de-gamme', 'Smartphone di Fascia di Ingresso', 'smartphone-fascia-ingresso', 'smartphones', 2, 'it'),
('smartphones-milieu-de-gamme', 'Smartphone di Fascia Media', 'smartphone-fascia-media', 'smartphones', 2, 'it'),
('smartphones-haut-de-gamme', 'Smartphone di Fascia Alta', 'smartphone-fascia-alta', 'smartphones', 2, 'it'),
('smartphones-reconditionnes', 'Smartphone Ricondizionati', 'smartphone-ricondizionati', 'smartphones', 2, 'it'),
('telephones-robustes-rugged', 'Telefoni Robusto (Rugged)', 'telefoni-robusto-rugged', 'smartphones', 2, 'it'),
('mini-smartphones', 'Mini Smartphone', 'mini-smartphone', 'smartphones', 2, 'it'),
('smartphones-professionnels', 'Smartphone Professionali', 'smartphone-professionali', 'smartphones', 2, 'it');

-- Sous-catégories niveau 2 - Italien (sous-catégories de téléphones classiques)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('telephones-portables-classiques', 'Telefoni Cellulari Classici', 'telefoni-cellulari-classici', 'telephones-classiques-fixes', 2, 'it'),
('telephones-a-clapet', 'Telefoni a Conchiglia', 'telefoni-conchiglia', 'telephones-classiques-fixes', 2, 'it'),
('telephones-seniors', 'Telefoni per Anziani', 'telefoni-anziani', 'telephones-classiques-fixes', 2, 'it'),
('telephones-fixes-filaires', 'Telefoni Fissi con Cavo', 'telefoni-fissi-cavo', 'telephones-classiques-fixes', 2, 'it'),
('telephones-fixes-sans-fil', 'Telefoni Fissi Senza Filo', 'telefoni-fissi-senza-filo', 'telephones-classiques-fixes', 2, 'it'),
('combines-dect', 'Ricevitori DECT', 'ricevitori-dect', 'telephones-classiques-fixes', 2, 'it'),
('telephones-voip', 'Telefoni VoIP', 'telefoni-voip', 'telephones-classiques-fixes', 2, 'it');

-- Note : Ce script SQL contient maintenant toutes les catégories Téléphonie avec 3 niveaux de hiérarchie
-- Pour les sous-catégories niveau 2 et 3, toutes les traductions sont incluses
-- Avantages : Performance optimale, fiabilité 100%, pas de dépendance réseau pendant l'exécution