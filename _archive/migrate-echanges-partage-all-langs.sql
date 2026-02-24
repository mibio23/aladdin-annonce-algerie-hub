-- =====================================================
-- MIGRATION DES CATEGORIES : ÉCHANGES & PARTAGE
-- =====================================================
-- Ce fichier migre la structure complète des catégories pour Échanges & Partage
-- Niveaux : 0 (principal) → 1 (sous-catégories) → 2 (sous-sous-catégories)
-- Langues : fr, ar, es, de, en, it
-- =====================================================

-- =====================================================
-- NIVEAU 0 : Échanges & Partage (FR)
-- =====================================================
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('echanges-partage', 'Échanges & Partage', 'echanges-partage', NULL, 0, 'fr');

-- =====================================================
-- NIVEAU 1 : Échanges de biens (FR)
-- =====================================================
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('echanges-biens', 'Échanges de biens', 'echanges-biens', 'echanges-partage', 1, 'fr');

-- =====================================================
-- NIVEAU 2 : Niveau 2 pour Échanges de biens (FR)
-- =====================================================
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('troc-objets', 'Troc d\'objets', 'troc-objets', 'echanges-biens', 2, 'fr'),
('echange-livres', 'Échange de livres', 'echange-livres', 'echanges-biens', 2, 'fr'),
('echange-vetements', 'Échange de vêtements', 'echange-vetements', 'echanges-biens', 2, 'fr'),
('echange-electronique', 'Échange électronique', 'echange-electronique', 'echanges-biens', 2, 'fr'),
('echange-mobilier', 'Échange mobilier', 'echange-mobilier', 'echanges-biens', 2, 'fr'),
('echange-vehicules', 'Échange véhicules', 'echange-vehicules', 'echanges-biens', 2, 'fr');

-- =====================================================
-- NIVEAU 1 : Partage de services (FR)
-- =====================================================
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('partage-services', 'Partage de services', 'partage-services', 'echanges-partage', 1, 'fr');

-- =====================================================
-- NIVEAU 2 : Niveau 2 pour Partage de services (FR)
-- =====================================================
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('covoiturage', 'Covoiturage', 'covoiturage', 'partage-services', 2, 'fr'),
('co-location', 'Co-location', 'co-location', 'partage-services', 2, 'fr'),
('partage-bureaux', 'Partage de bureaux', 'partage-bureaux', 'partage-services', 2, 'fr'),
('services-collaboratifs', 'Services collaboratifs', 'services-collaboratifs', 'partage-services', 2, 'fr'),
('partage-competences', 'Partage de compétences', 'partage-competences', 'partage-services', 2, 'fr'),
('partage-ressources', 'Partage de ressources', 'partage-ressources', 'partage-services', 2, 'fr');

-- =====================================================
-- NIVEAU 1 : Dons (FR)
-- =====================================================
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('donations', 'Dons', 'donations', 'echanges-partage', 1, 'fr');

-- =====================================================
-- NIVEAU 2 : Niveau 2 pour Dons (FR)
-- =====================================================
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('don-objets', 'Don d\'objets', 'don-objets', 'donations', 2, 'fr'),
('don-vetements', 'Don de vêtements', 'don-vetements', 'donations', 2, 'fr'),
('don-meubles', 'Don de meubles', 'don-meubles', 'donations', 2, 'fr'),
('don-electronique', 'Don électronique', 'don-electronique', 'donations', 2, 'fr'),
('don-livres', 'Don de livres', 'don-livres', 'donations', 2, 'fr'),
('don-alimentaire', 'Don alimentaire', 'don-alimentaire', 'donations', 2, 'fr');

-- =====================================================
-- ANGLAIS (EN)
-- =====================================================

-- NIVEAU 0 : Échanges & Partage (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('echanges-partage', 'Exchanges & Sharing', 'echanges-partage', NULL, 0, 'en');

-- NIVEAU 1 : Échanges de biens (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('echanges-biens', 'Goods Exchange', 'echanges-biens', 'echanges-partage', 1, 'en');

-- NIVEAU 2 : Niveau 2 pour Échanges de biens (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('troc-objets', 'Barter Objects', 'troc-objets', 'echanges-biens', 2, 'en'),
('echange-livres', 'Book Exchange', 'echange-livres', 'echanges-biens', 2, 'en'),
('echange-vetements', 'Clothing Exchange', 'echange-vetements', 'echanges-biens', 2, 'en'),
('echange-electronique', 'Electronics Exchange', 'echange-electronique', 'echanges-biens', 2, 'en'),
('echange-mobilier', 'Furniture Exchange', 'echange-mobilier', 'echanges-biens', 2, 'en'),
('echange-vehicules', 'Vehicle Exchange', 'echange-vehicules', 'echanges-biens', 2, 'en');

-- NIVEAU 1 : Partage de services (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('partage-services', 'Service Sharing', 'partage-services', 'echanges-partage', 1, 'en');

-- NIVEAU 2 : Niveau 2 pour Partage de services (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('covoiturage', 'Carpooling', 'covoiturage', 'partage-services', 2, 'en'),
('co-location', 'Co-location', 'co-location', 'partage-services', 2, 'en'),
('partage-bureaux', 'Office Sharing', 'partage-bureaux', 'partage-services', 2, 'en'),
('services-collaboratifs', 'Collaborative Services', 'services-collaboratifs', 'partage-services', 2, 'en'),
('partage-competences', 'Skills Sharing', 'partage-competences', 'partage-services', 2, 'en'),
('partage-ressources', 'Resource Sharing', 'partage-ressources', 'partage-services', 2, 'en');

-- NIVEAU 1 : Dons (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('donations', 'Donations', 'donations', 'echanges-partage', 1, 'en');

-- NIVEAU 2 : Niveau 2 pour Dons (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('don-objets', 'Object Donations', 'don-objets', 'donations', 2, 'en'),
('don-vetements', 'Clothing Donations', 'don-vetements', 'donations', 2, 'en'),
('don-meubles', 'Furniture Donations', 'don-meubles', 'donations', 2, 'en'),
('don-electronique', 'Electronics Donations', 'don-electronique', 'donations', 2, 'en'),
('don-livres', 'Book Donations', 'don-livres', 'donations', 2, 'en'),
('don-alimentaire', 'Food Donations', 'don-alimentaire', 'donations', 2, 'en');

-- =====================================================
-- ARABE (AR)
-- =====================================================

-- NIVEAU 0 : Échanges & Partage (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('echanges-partage', 'المبادلات والمشاركة', 'echanges-partage', NULL, 0, 'ar');

-- NIVEAU 1 : Échanges de biens (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('echanges-biens', 'مبادلة السلع', 'echanges-biens', 'echanges-partage', 1, 'ar');

-- NIVEAU 2 : Niveau 2 pour Échanges de biens (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('troc-objets', 'مقايضة الأشياء', 'troc-objets', 'echanges-biens', 2, 'ar'),
('echange-livres', 'مبادلة الكتب', 'echange-livres', 'echanges-biens', 2, 'ar'),
('echange-vetements', 'مبادلة الملابس', 'echange-vetements', 'echanges-biens', 2, 'ar'),
('echange-electronique', 'مبادلة الإلكترونيات', 'echange-electronique', 'echanges-biens', 2, 'ar'),
('echange-mobilier', 'مبادلة الأثاث', 'echange-mobilier', 'echanges-biens', 2, 'ar'),
('echange-vehicules', 'مبادلة المركبات', 'echange-vehicules', 'echanges-biens', 2, 'ar');

-- NIVEAU 1 : Partage de services (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('partage-services', 'مشاركة الخدمات', 'partage-services', 'echanges-partage', 1, 'ar');

-- NIVEAU 2 : Niveau 2 pour Partage de services (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('covoiturage', 'نقل مشترك', 'covoiturage', 'partage-services', 2, 'ar'),
('co-location', 'سكن مشترك', 'co-location', 'partage-services', 2, 'ar'),
('partage-bureaux', 'مشاركة المكاتب', 'partage-bureaux', 'partage-services', 2, 'ar'),
('services-collaboratifs', 'خدمات تعاونية', 'services-collaboratifs', 'partage-services', 2, 'ar'),
('partage-competences', 'مشاركة المهارات', 'partage-competences', 'partage-services', 2, 'ar'),
('partage-ressources', 'مشاركة الموارد', 'partage-ressources', 'partage-services', 2, 'ar');

-- NIVEAU 1 : Dons (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('donations', 'التبرعات', 'donations', 'echanges-partage', 1, 'ar');

-- NIVEAU 2 : Niveau 2 pour Dons (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('don-objets', 'تبرع الأشياء', 'don-objets', 'donations', 2, 'ar'),
('don-vetements', 'تبرع الملابس', 'don-vetements', 'donations', 2, 'ar'),
('don-meubles', 'تبرع الأثاث', 'don-meubles', 'donations', 2, 'ar'),
('don-electronique', 'تبرع الإلكترونيات', 'don-electronique', 'donations', 2, 'ar'),
('don-livres', 'تبرع الكتب', 'don-livres', 'donations', 2, 'ar'),
('don-alimentaire', 'تبرع المواد الغذائية', 'don-alimentaire', 'donations', 2, 'ar');

-- =====================================================
-- ESPAGNOL (ES)
-- =====================================================

-- NIVEAU 0 : Échanges & Partage (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('echanges-partage', 'Intercambios y Compartir', 'echanges-partage', NULL, 0, 'es');

-- NIVEAU 1 : Échanges de biens (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('echanges-biens', 'Intercambio de Bienes', 'echanges-biens', 'echanges-partage', 1, 'es');

-- NIVEAU 2 : Niveau 2 pour Échanges de biens (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('troc-objets', 'Trueque de Objetos', 'troc-objets', 'echanges-biens', 2, 'es'),
('echange-livres', 'Intercambio de Libros', 'echange-livres', 'echanges-biens', 2, 'es'),
('echange-vetements', 'Intercambio de Ropa', 'echange-vetements', 'echanges-biens', 2, 'es'),
('echange-electronique', 'Intercambio de Electrónica', 'echange-electronique', 'echanges-biens', 2, 'es'),
('echange-mobilier', 'Intercambio de Muebles', 'echange-mobilier', 'echanges-biens', 2, 'es'),
('echange-vehicules', 'Intercambio de Vehículos', 'echange-vehicules', 'echanges-biens', 2, 'es');

-- NIVEAU 1 : Partage de services (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('partage-services', 'Compartir Servicios', 'partage-services', 'echanges-partage', 1, 'es');

-- NIVEAU 2 : Niveau 2 pour Partage de services (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('covoiturage', 'Compartir Coche', 'covoiturage', 'partage-services', 2, 'es'),
('co-location', 'Co-alojamiento', 'co-location', 'partage-services', 2, 'es'),
('partage-bureaux', 'Compartir Oficinas', 'partage-bureaux', 'partage-services', 2, 'es'),
('services-collaboratifs', 'Servicios Colaborativos', 'services-collaboratifs', 'partage-services', 2, 'es'),
('partage-competences', 'Compartir Habilidades', 'partage-competences', 'partage-services', 2, 'es'),
('partage-ressources', 'Compartir Recursos', 'partage-ressources', 'partage-services', 2, 'es');

-- NIVEAU 1 : Dons (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('donations', 'Donaciones', 'donations', 'echanges-partage', 1, 'es');

-- NIVEAU 2 : Niveau 2 pour Dons (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('don-objets', 'Donación de Objetos', 'don-objets', 'donations', 2, 'es'),
('don-vetements', 'Donación de Ropa', 'don-vetements', 'donations', 2, 'es'),
('don-meubles', 'Donación de Muebles', 'don-meubles', 'donations', 2, 'es'),
('don-electronique', 'Donación de Electrónica', 'don-electronique', 'donations', 2, 'es'),
('don-livres', 'Donación de Libros', 'don-livres', 'donations', 2, 'es'),
('don-alimentaire', 'Donación de Alimentos', 'don-alimentaire', 'donations', 2, 'es');

-- =====================================================
-- ALLEMAND (DE)
-- =====================================================

-- NIVEAU 0 : Échanges & Partage (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('echanges-partage', 'Austausch & Teilen', 'echanges-partage', NULL, 0, 'de');

-- NIVEAU 1 : Échanges de biens (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('echanges-biens', 'Güteraustausch', 'echanges-biens', 'echanges-partage', 1, 'de');

-- NIVEAU 2 : Niveau 2 pour Échanges de biens (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('troc-objets', 'Tausch von Gegenständen', 'troc-objets', 'echanges-biens', 2, 'de'),
('echange-livres', 'Bücheraustausch', 'echange-livres', 'echanges-biens', 2, 'de'),
('echange-vetements', 'Kleidungsaustausch', 'echange-vetements', 'echanges-biens', 2, 'de'),
('echange-electronique', 'Elektronikaustausch', 'echange-electronique', 'echanges-biens', 2, 'de'),
('echange-mobilier', 'Möbelaustausch', 'echange-mobilier', 'echanges-biens', 2, 'de'),
('echange-vehicules', 'Fahrzeugaustausch', 'echange-vehicules', 'echanges-biens', 2, 'de');

-- NIVEAU 1 : Partage de services (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('partage-services', 'Dienstleistungsteilen', 'partage-services', 'echanges-partage', 1, 'de');

-- NIVEAU 2 : Niveau 2 pour Partage de services (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('covoiturage', 'Fahrgemeinschaft', 'covoiturage', 'partage-services', 2, 'de'),
('co-location', 'Co-Wohnen', 'co-location', 'partage-services', 2, 'de'),
('partage-bureaux', 'Büroteilen', 'partage-bureaux', 'partage-services', 2, 'de'),
('services-collaboratifs', 'Kollaborative Dienstleistungen', 'services-collaboratifs', 'partage-services', 2, 'de'),
('partage-competences', 'Fähigkeitenteilen', 'partage-competences', 'partage-services', 2, 'de'),
('partage-ressources', 'Ressourcenteilen', 'partage-ressources', 'partage-services', 2, 'de');

-- NIVEAU 1 : Dons (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('donations', 'Spenden', 'donations', 'echanges-partage', 1, 'de');

-- NIVEAU 2 : Niveau 2 pour Dons (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('don-objets', 'Gegenstandsspenden', 'don-objets', 'donations', 2, 'de'),
('don-vetements', 'Kleiderspenden', 'don-vetements', 'donations', 2, 'de'),
('don-meubles', 'Möbelspenden', 'don-meubles', 'donations', 2, 'de'),
('don-electronique', 'Elektronikspenden', 'don-electronique', 'donations', 2, 'de'),
('don-livres', 'Bücherspenden', 'don-livres', 'donations', 2, 'de'),
('don-alimentaire', 'Lebensmittelspenden', 'don-alimentaire', 'donations', 2, 'de');

-- =====================================================
-- ITALIEN (IT)
-- =====================================================

-- NIVEAU 0 : Échanges & Partage (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('echanges-partage', 'Scambi e Condivisione', 'echanges-partage', NULL, 0, 'it');

-- NIVEAU 1 : Échanges de biens (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('echanges-biens', 'Scambio di Beni', 'echanges-biens', 'echanges-partage', 1, 'it');

-- NIVEAU 2 : Niveau 2 pour Échanges de biens (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('troc-objets', 'Baratto di Oggetti', 'troc-objets', 'echanges-biens', 2, 'it'),
('echange-livres', 'Scambio di Libri', 'echange-livres', 'echanges-biens', 2, 'it'),
('echange-vetements', 'Scambio di Vestiti', 'echange-vetements', 'echanges-biens', 2, 'it'),
('echange-electronique', 'Scambio di Elettronica', 'echange-electronique', 'echanges-biens', 2, 'it'),
('echange-mobilier', 'Scambio di Mobili', 'echange-mobilier', 'echanges-biens', 2, 'it'),
('echange-vehicules', 'Scambio di Veicoli', 'echange-vehicules', 'echanges-biens', 2, 'it');

-- NIVEAU 1 : Partage de services (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('partage-services', 'Condivisione di Servizi', 'partage-services', 'echanges-partage', 1, 'it');

-- NIVEAU 2 : Niveau 2 pour Partage de services (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('covoiturage', 'Car Sharing', 'covoiturage', 'partage-services', 2, 'it'),
('co-location', 'Co-alloggio', 'co-location', 'partage-services', 2, 'it'),
('partage-bureaux', 'Condivisione di Uffici', 'partage-bureaux', 'partage-services', 2, 'it'),
('services-collaboratifs', 'Servizi Collaborativi', 'services-collaboratifs', 'partage-services', 2, 'it'),
('partage-competences', 'Condivisione di Competenze', 'partage-competences', 'partage-services', 2, 'it'),
('partage-ressources', 'Condivisione di Risorse', 'partage-ressources', 'partage-services', 2, 'it');

-- NIVEAU 1 : Dons (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('donations', 'Donazioni', 'donations', 'echanges-partage', 1, 'it');

-- NIVEAU 2 : Niveau 2 pour Dons (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('don-objets', 'Donazione di Oggetti', 'don-objets', 'donations', 2, 'it'),
('don-vetements', 'Donazione di Vestiti', 'don-vetements', 'donations', 2, 'it'),
('don-meubles', 'Donazione di Mobili', 'don-meubles', 'donations', 2, 'it'),
('don-electronique', 'Donazione di Elettronica', 'don-electronique', 'donations', 2, 'it'),
('don-livres', 'Donazione di Libri', 'don-livres', 'donations', 2, 'it'),
('don-alimentaire', 'Donazione di Alimenti', 'don-alimentaire', 'donations', 2, 'it');