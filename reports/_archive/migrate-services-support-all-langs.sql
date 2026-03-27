-- =====================================================
-- MIGRATION DES CATEGORIES : SERVICES & SUPPORT
-- =====================================================
-- Ce fichier migre la structure complète des catégories pour Services & Support
-- Niveaux : 0 (principal) → 1 (sous-catégories) → 2 (sous-sous-catégories)
-- Langues : fr, ar, es, de, en, it
-- =====================================================

-- =====================================================
-- NIVEAU 0 : Services & Support (FR)
-- =====================================================
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-support', 'Services & Support', 'services-support', NULL, 0, 'fr');

-- =====================================================
-- NIVEAU 1 : Services techniques (FR)
-- =====================================================
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-techniques', 'Services techniques', 'services-techniques', 'services-support', 1, 'fr');

-- =====================================================
-- NIVEAU 2 : Niveau 2 pour Services techniques (FR)
-- =====================================================
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('depannage-informatique', 'Dépannage informatique', 'depannage-informatique', 'services-techniques', 2, 'fr'),
('reparation-telephones', 'Réparation téléphones', 'reparation-telephones', 'services-techniques', 2, 'fr'),
('reparation-electromenager', 'Réparation électroménager', 'reparation-electromenager', 'services-techniques', 2, 'fr'),
('installation-logiciels', 'Installation logiciels', 'installation-logiciels', 'services-techniques', 2, 'fr'),
('configuration-reseaux', 'Configuration réseaux', 'configuration-reseaux', 'services-techniques', 2, 'fr'),
('maintenance-preventive', 'Maintenance préventive', 'maintenance-preventive', 'services-techniques', 2, 'fr'),
('services-depannage-urgent', 'Services dépannage urgent', 'services-depannage-urgent', 'services-techniques', 2, 'fr'),
('conseils-techniques', 'Conseils techniques', 'conseils-techniques', 'services-techniques', 2, 'fr'),
('formation-technologie', 'Formation technologie', 'formation-technologie', 'services-techniques', 2, 'fr');

-- =====================================================
-- NIVEAU 1 : Services administratifs (FR)
-- =====================================================
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-administratifs', 'Services administratifs', 'services-administratifs', 'services-support', 1, 'fr');

-- =====================================================
-- NIVEAU 2 : Niveau 2 pour Services administratifs (FR)
-- =====================================================
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-traduction', 'Services traduction', 'services-traduction', 'services-administratifs', 2, 'fr'),
('services-secretariat', 'Services secrétariat', 'services-secretariat', 'services-administratifs', 2, 'fr'),
('services-comptabilite', 'Services comptabilité', 'services-comptabilite', 'services-administratifs', 2, 'fr'),
('conseils-juridiques', 'Conseils juridiques', 'conseils-juridiques', 'services-administratifs', 2, 'fr'),
('services-creation-entreprise', 'Création d\'entreprise', 'services-creation-entreprise', 'services-administratifs', 2, 'fr'),
('services-demarches-administratives', 'Démarches administratives', 'services-demarches-administratives', 'services-administratifs', 2, 'fr');

-- =====================================================
-- NIVEAU 1 : Services ménagers (FR)
-- =====================================================
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-menagers', 'Services ménagers', 'services-menagers', 'services-support', 1, 'fr');

-- =====================================================
-- NIVEAU 2 : Niveau 2 pour Services ménagers (FR)
-- =====================================================
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('menage-repassage', 'Ménage & repassage', 'menage-repassage', 'services-menagers', 2, 'fr'),
('services-cuisine', 'Services cuisine', 'services-cuisine', 'services-menagers', 2, 'fr'),
('services-jardinage', 'Services jardinage', 'services-jardinage', 'services-menagers', 2, 'fr'),
('services-bricolage', 'Services bricolage', 'services-bricolage', 'services-menagers', 2, 'fr'),
('services-gardiennage', 'Services gardiennage', 'services-gardiennage', 'services-menagers', 2, 'fr'),
('services-demenagement', 'Services déménagement', 'services-demenagement', 'services-menagers', 2, 'fr');

-- =====================================================
-- NIVEAU 1 : Services livraison (FR)
-- =====================================================
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-livraison', 'Services livraison', 'services-livraison', 'services-support', 1, 'fr');

-- =====================================================
-- NIVEAU 2 : Niveau 2 pour Services livraison (FR)
-- =====================================================
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('livraison-domicile', 'Livraison à domicile', 'livraison-domicile', 'services-livraison', 2, 'fr'),
('services-colis', 'Services colis', 'services-colis', 'services-livraison', 2, 'fr'),
('services-courses', 'Services courses', 'services-courses', 'services-livraison', 2, 'fr'),
('transport-marchandises', 'Transport marchandises', 'transport-marchandises', 'services-livraison', 2, 'fr'),
('services-deplacement-professionnels', 'Déplacements professionnels', 'services-deplacement-professionnels', 'services-livraison', 2, 'fr'),
('services-navette', 'Services navette', 'services-navette', 'services-livraison', 2, 'fr');

-- =====================================================
-- NIVEAU 1 : Services événementiels (FR)
-- =====================================================
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-evenementiels', 'Services événementiels', 'services-evenementiels', 'services-support', 1, 'fr');

-- =====================================================
-- NIVEAU 2 : Niveau 2 pour Services événementiels (FR)
-- =====================================================
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('organisation-evenements', 'Organisation événements', 'organisation-evenements', 'services-evenementiels', 2, 'fr'),
('services-catering', 'Services catering', 'services-catering', 'services-evenementiels', 2, 'fr'),
('location-materiel-evenements', 'Location matériel', 'location-materiel-evenements', 'services-evenementiels', 2, 'fr'),
('services-animation', 'Services animation', 'services-animation', 'services-evenementiels', 2, 'fr'),
('services-photographie', 'Services photographie', 'services-photographie', 'services-evenementiels', 2, 'fr'),
('services-video', 'Services vidéo', 'services-video', 'services-evenementiels', 2, 'fr');

-- =====================================================
-- ANGLAIS (EN)
-- =====================================================

-- NIVEAU 0 : Services & Support (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-support', 'Services & Support', 'services-support', NULL, 0, 'en');

-- NIVEAU 1 : Services techniques (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-techniques', 'Technical Services', 'services-techniques', 'services-support', 1, 'en');

-- NIVEAU 2 : Niveau 2 pour Services techniques (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('depannage-informatique', 'Computer Troubleshooting', 'depannage-informatique', 'services-techniques', 2, 'en'),
('reparation-telephones', 'Phone Repair', 'reparation-telephones', 'services-techniques', 2, 'en'),
('reparation-electromenager', 'Appliance Repair', 'reparation-electromenager', 'services-techniques', 2, 'en'),
('installation-logiciels', 'Software Installation', 'installation-logiciels', 'services-techniques', 2, 'en'),
('configuration-reseaux', 'Network Configuration', 'configuration-reseaux', 'services-techniques', 2, 'en'),
('maintenance-preventive', 'Preventive Maintenance', 'maintenance-preventive', 'services-techniques', 2, 'en'),
('services-depannage-urgent', 'Emergency Repair Services', 'services-depannage-urgent', 'services-techniques', 2, 'en'),
('conseils-techniques', 'Technical Advice', 'conseils-techniques', 'services-techniques', 2, 'en'),
('formation-technologie', 'Technology Training', 'formation-technologie', 'services-techniques', 2, 'en');

-- NIVEAU 1 : Services administratifs (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-administratifs', 'Administrative Services', 'services-administratifs', 'services-support', 1, 'en');

-- NIVEAU 2 : Niveau 2 pour Services administratifs (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-traduction', 'Translation Services', 'services-traduction', 'services-administratifs', 2, 'en'),
('services-secretariat', 'Secretarial Services', 'services-secretariat', 'services-administratifs', 2, 'en'),
('services-comptabilite', 'Accounting Services', 'services-comptabilite', 'services-administratifs', 2, 'en'),
('conseils-juridiques', 'Legal Advice', 'conseils-juridiques', 'services-administratifs', 2, 'en'),
('services-creation-entreprise', 'Business Creation', 'services-creation-entreprise', 'services-administratifs', 2, 'en'),
('services-demarches-administratives', 'Administrative Procedures', 'services-demarches-administratives', 'services-administratifs', 2, 'en');

-- NIVEAU 1 : Services ménagers (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-menagers', 'Household Services', 'services-menagers', 'services-support', 1, 'en');

-- NIVEAU 2 : Niveau 2 pour Services ménagers (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('menage-repassage', 'Cleaning & Ironing', 'menage-repassage', 'services-menagers', 2, 'en'),
('services-cuisine', 'Cooking Services', 'services-cuisine', 'services-menagers', 2, 'en'),
('services-jardinage', 'Gardening Services', 'services-jardinage', 'services-menagers', 2, 'en'),
('services-bricolage', 'Handyman Services', 'services-bricolage', 'services-menagers', 2, 'en'),
('services-gardiennage', 'House Sitting Services', 'services-gardiennage', 'services-menagers', 2, 'en'),
('services-demenagement', 'Moving Services', 'services-demenagement', 'services-menagers', 2, 'en');

-- NIVEAU 1 : Services livraison (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-livraison', 'Delivery Services', 'services-livraison', 'services-support', 1, 'en');

-- NIVEAU 2 : Niveau 2 pour Services livraison (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('livraison-domicile', 'Home Delivery', 'livraison-domicile', 'services-livraison', 2, 'en'),
('services-colis', 'Parcel Services', 'services-colis', 'services-livraison', 2, 'en'),
('services-courses', 'Grocery Services', 'services-courses', 'services-livraison', 2, 'en'),
('transport-marchandises', 'Goods Transport', 'transport-marchandises', 'services-livraison', 2, 'en'),
('services-deplacement-professionnels', 'Professional Travel', 'services-deplacement-professionnels', 'services-livraison', 2, 'en'),
('services-navette', 'Shuttle Services', 'services-navette', 'services-livraison', 2, 'en');

-- NIVEAU 1 : Services événementiels (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-evenementiels', 'Event Services', 'services-evenementiels', 'services-support', 1, 'en');

-- NIVEAU 2 : Niveau 2 pour Services événementiels (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('organisation-evenements', 'Event Organization', 'organisation-evenements', 'services-evenementiels', 2, 'en'),
('services-catering', 'Catering Services', 'services-catering', 'services-evenementiels', 2, 'en'),
('location-materiel-evenements', 'Equipment Rental', 'location-materiel-evenements', 'services-evenementiels', 2, 'en'),
('services-animation', 'Entertainment Services', 'services-animation', 'services-evenementiels', 2, 'en'),
('services-photographie', 'Photography Services', 'services-photographie', 'services-evenementiels', 2, 'en'),
('services-video', 'Video Services', 'services-video', 'services-evenementiels', 2, 'en');

-- =====================================================
-- ARABE (AR)
-- =====================================================

-- NIVEAU 0 : Services & Support (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-support', 'الخدمات والدعم', 'services-support', NULL, 0, 'ar');

-- NIVEAU 1 : Services techniques (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-techniques', 'الخدمات التقنية', 'services-techniques', 'services-support', 1, 'ar');

-- NIVEAU 2 : Niveau 2 pour Services techniques (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('depannage-informatique', 'صيانة الكمبيوتر', 'depannage-informatique', 'services-techniques', 2, 'ar'),
('reparation-telephones', 'إصلاح الهواتف', 'reparation-telephones', 'services-techniques', 2, 'ar'),
('reparation-electromenager', 'إصلاح الأجهزة المنزلية', 'reparation-electromenager', 'services-techniques', 2, 'ar'),
('installation-logiciels', 'تركيب البرامج', 'installation-logiciels', 'services-techniques', 2, 'ar'),
('configuration-reseaux', 'إعداد الشبكات', 'configuration-reseaux', 'services-techniques', 2, 'ar'),
('maintenance-preventive', 'الصيانة الوقائية', 'maintenance-preventive', 'services-techniques', 2, 'ar'),
('services-depannage-urgent', 'خدمات الإصلاح الطارئة', 'services-depannage-urgent', 'services-techniques', 2, 'ar'),
('conseils-techniques', 'المشورة التقنية', 'conseils-techniques', 'services-techniques', 2, 'ar'),
('formation-technologie', 'التدريب التكنولوجي', 'formation-technologie', 'services-techniques', 2, 'ar');

-- NIVEAU 1 : Services administratifs (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-administratifs', 'الخدمات الإدارية', 'services-administratifs', 'services-support', 1, 'ar');

-- NIVEAU 2 : Niveau 2 pour Services administratifs (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-traduction', 'خدمات الترجمة', 'services-traduction', 'services-administratifs', 2, 'ar'),
('services-secretariat', 'خدمات السكرتارية', 'services-secretariat', 'services-administratifs', 2, 'ar'),
('services-comptabilite', 'خدمات المحاسبة', 'services-comptabilite', 'services-administratifs', 2, 'ar'),
('conseils-juridiques', 'المشورة القانونية', 'conseils-juridiques', 'services-administratifs', 2, 'ar'),
('services-creation-entreprise', 'إنشاء الشركات', 'services-creation-entreprise', 'services-administratifs', 2, 'ar'),
('services-demarches-administratives', 'الإجراءات الإدارية', 'services-demarches-administratives', 'services-administratifs', 2, 'ar');

-- NIVEAU 1 : Services ménagers (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-menagers', 'الخدمات المنزلية', 'services-menagers', 'services-support', 1, 'ar');

-- NIVEAU 2 : Niveau 2 pour Services ménagers (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('menage-repassage', 'التنظيف والكي', 'menage-repassage', 'services-menagers', 2, 'ar'),
('services-cuisine', 'خدمات الطبخ', 'services-cuisine', 'services-menagers', 2, 'ar'),
('services-jardinage', 'خدمات الحدائق', 'services-jardinage', 'services-menagers', 2, 'ar'),
('services-bricolage', 'خدمات الأعمال اليدوية', 'services-bricolage', 'services-menagers', 2, 'ar'),
('services-gardiennage', 'خدمات الحراسة', 'services-gardiennage', 'services-menagers', 2, 'ar'),
('services-demenagement', 'خدمات النقل', 'services-demenagement', 'services-menagers', 2, 'ar');

-- NIVEAU 1 : Services livraison (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-livraison', 'خدمات التوصيل', 'services-livraison', 'services-support', 1, 'ar');

-- NIVEAU 2 : Niveau 2 pour Services livraison (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('livraison-domicile', 'التوصيل للمنازل', 'livraison-domicile', 'services-livraison', 2, 'ar'),
('services-colis', 'خدمات الطرود', 'services-colis', 'services-livraison', 2, 'ar'),
('services-courses', 'خدمات التسوق', 'services-courses', 'services-livraison', 2, 'ar'),
('transport-marchandises', 'نقل البضائع', 'transport-marchandises', 'services-livraison', 2, 'ar'),
('services-deplacement-professionnels', 'السفر المهني', 'services-deplacement-professionnels', 'services-livraison', 2, 'ar'),
('services-navette', 'خدمات النقل المنتظم', 'services-navette', 'services-livraison', 2, 'ar');

-- NIVEAU 1 : Services événementiels (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-evenementiels', 'خدمات المناسبات', 'services-evenementiels', 'services-support', 1, 'ar');

-- NIVEAU 2 : Niveau 2 pour Services événementiels (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('organisation-evenements', 'تنظيم المناسبات', 'organisation-evenements', 'services-evenementiels', 2, 'ar'),
('services-catering', 'خدمات التموين', 'services-catering', 'services-evenementiels', 2, 'ar'),
('location-materiel-evenements', 'تأجير المعدات', 'location-materiel-evenements', 'services-evenementiels', 2, 'ar'),
('services-animation', 'خدمات الترفيه', 'services-animation', 'services-evenementiels', 2, 'ar'),
('services-photographie', 'خدمات التصوير', 'services-photographie', 'services-evenementiels', 2, 'ar'),
('services-video', 'خدمات الفيديو', 'services-video', 'services-evenementiels', 2, 'ar');

-- =====================================================
-- ITALIEN (IT)
-- =====================================================
-- NIVEAU 0 : Services & Support (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-support', 'Servizi e Assistenza', 'services-support', NULL, 0, 'it');

-- =====================================================
-- NIVEAU 1 : Services techniques (IT)
-- =====================================================
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-techniques', 'Servizi tecnici', 'services-techniques', 'services-support', 1, 'it');

-- =====================================================
-- NIVEAU 2 : Niveau 2 pour Services techniques (IT)
-- =====================================================
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('depannage-informatique', 'Assistenza informatica', 'depannage-informatique', 'services-techniques', 2, 'it'),
('depannage-electromenager', 'Assistenza elettrodomestici', 'depannage-electromenager', 'services-techniques', 2, 'it'),
('reparation-automobile', 'Riparazione auto', 'reparation-automobile', 'services-techniques', 2, 'it'),
('reparation-telephonie', 'Riparazione telefonia', 'reparation-telephonie', 'services-techniques', 2, 'it'),
('installation-electrique', 'Installazione elettrica', 'installation-electrique', 'services-techniques', 2, 'it'),
('plomberie', 'Idraulica', 'plomberie', 'services-techniques', 2, 'it'),
('menuiserie', 'Falegnameria', 'menuiserie', 'services-techniques', 2, 'it'),
('serrurerie', 'Fabbro', 'serrurerie', 'services-techniques', 2, 'it');

-- =====================================================
-- NIVEAU 1 : Services administratifs (IT)
-- =====================================================
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-administratifs', 'Servizi amministrativi', 'services-administratifs', 'services-support', 1, 'it');

-- =====================================================
-- NIVEAU 2 : Niveau 2 pour Services administratifs (IT)
-- =====================================================
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('assistance-juridique', 'Assistenza legale', 'assistance-juridique', 'services-administratifs', 2, 'it'),
('assistance-comptable', 'Assistenza contabile', 'assistance-comptable', 'services-administratifs', 2, 'it'),
('creation-entreprise', 'Creazione impresa', 'creation-entreprise', 'services-administratifs', 2, 'it'),
('declaration-impots', 'Dichiarazione tasse', 'declaration-impots', 'services-administratifs', 2, 'it'),
('traduction-document', 'Traduzione documenti', 'traduction-document', 'services-administratifs', 2, 'it'),
('secretariat-medical', 'Segreteria medica', 'secretariat-medical', 'services-administratifs', 2, 'it');

-- =====================================================
-- NIVEAU 1 : Services à la personne (IT)
-- =====================================================
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-personne', 'Servizi alla persona', 'services-personne', 'services-support', 1, 'it');

-- =====================================================
-- NIVEAU 2 : Niveau 2 pour Services à la personne (IT)
-- =====================================================
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('cours-particuliers', 'Lezioni private', 'cours-particuliers', 'services-personne', 2, 'it'),
('garde-enfants', 'Baby-sitting', 'garde-enfants', 'services-personne', 2, 'it'),
('aide-menagere', 'Aiuto domestico', 'aide-menagere', 'services-personne', 2, 'it'),
('assistance-personnes-agees', 'Assistenza anziani', 'assistance-personnes-agees', 'services-personne', 2, 'it'),
('coiffure-domicile', 'Parrucchiere a domicilio', 'coiffure-domicile', 'services-personne', 2, 'it'),
('estheticienne-domicile', 'Estetista a domicilio', 'estheticienne-domicile', 'services-personne', 2, 'it'),
('cuisine-domicile', 'Chef a domicilio', 'cuisine-domicile', 'services-personne', 2, 'it'),
('jardinage', 'Giardinaggio', 'jardinage', 'services-personne', 2, 'it'),
('demenagement', 'Trasloco', 'demenagement', 'services-personne', 2, 'it'),
('concierge', 'Portinaio', 'concierge', 'services-personne', 2, 'it');

-- =====================================================
-- NIVEAU 1 : Services événementiels (IT)
-- =====================================================
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-evenementiels', 'Servizi per eventi', 'services-evenementiels', 'services-support', 1, 'it');

-- =====================================================
-- NIVEAU 2 : Niveau 2 pour Services événementiels (IT)
-- =====================================================
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('organisation-mariage', 'Organizzazione matrimoni', 'organisation-mariage', 'services-evenementiels', 2, 'it'),
('animation-evenement', 'Animazione eventi', 'animation-evenement', 'services-evenementiels', 2, 'it'),
('photographie-evenement', 'Fotografia eventi', 'photographie-evenement', 'services-evenementiels', 2, 'it'),
('location-materiel-fete', 'Noleggio materiale feste', 'location-materiel-fete', 'services-evenementiels', 2, 'it'),
('traiteur-evenement', 'Catering eventi', 'traiteur-evenement', 'services-evenementiels', 2, 'it'),
('decoration-evenement', 'Decorazione eventi', 'decoration-evenement', 'services-evenementiels', 2, 'it');

-- =====================================================
-- NIVEAU 1 : Services numériques et web (IT)
-- =====================================================
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-numeriques', 'Servizi digitali e web', 'services-numeriques', 'services-support', 1, 'it');

-- =====================================================
-- NIVEAU 2 : Niveau 2 pour Services numériques et web (IT)
-- =====================================================
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('creation-site-web', 'Creazione siti web', 'creation-site-web', 'services-numeriques', 2, 'it'),
('referencement-seo', 'Posizionamento SEO', 'referencement-seo', 'services-numeriques', 2, 'it'),
('community-management', 'Social media management', 'community-management', 'services-numeriques', 2, 'it'),
('developpement-appli', 'Sviluppo app', 'developpement-appli', 'services-numeriques', 2, 'it'),
('graphisme-design', 'Grafica e design', 'graphisme-design', 'services-numeriques', 2, 'it'),
('redaction-contenu', 'Scrittura contenuti', 'redaction-contenu', 'services-numeriques', 2, 'it'),
('photographie-produit', 'Fotografia prodotti', 'photographie-produit', 'services-numeriques', 2, 'it'),
('marketing-digital', 'Marketing digitale', 'marketing-digital', 'services-numeriques', 2, 'it'),
('hebergement-web', 'Hosting web', 'hebergement-web', 'services-numeriques', 2, 'it'),
('maintenance-site', 'Manutenzione siti', 'maintenance-site', 'services-numeriques', 2, 'it');

-- =====================================================
-- ESPAGNOL (ES)
-- =====================================================

-- NIVEAU 0 : Services & Support (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-support', 'Servicios y Soporte', 'services-support', NULL, 0, 'es');

-- NIVEAU 1 : Services techniques (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-techniques', 'Servicios Técnicos', 'services-techniques', 'services-support', 1, 'es');

-- NIVEAU 2 : Niveau 2 pour Services techniques (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('depannage-informatique', 'Reparación de Computadoras', 'depannage-informatique', 'services-techniques', 2, 'es'),
('reparation-telephones', 'Reparación de Teléfonos', 'reparation-telephones', 'services-techniques', 2, 'es'),
('reparation-electromenager', 'Reparación de Electrodomésticos', 'reparation-electromenager', 'services-techniques', 2, 'es'),
('installation-logiciels', 'Instalación de Software', 'installation-logiciels', 'services-techniques', 2, 'es'),
('configuration-reseaux', 'Configuración de Redes', 'configuration-reseaux', 'services-techniques', 2, 'es'),
('maintenance-preventive', 'Mantenimiento Preventivo', 'maintenance-preventive', 'services-techniques', 2, 'es'),
('services-depannage-urgent', 'Servicios de Reparación de Urgencia', 'services-depannage-urgent', 'services-techniques', 2, 'es'),
('conseils-techniques', 'Asesoramiento Técnico', 'conseils-techniques', 'services-techniques', 2, 'es'),
('formation-technologie', 'Formación en Tecnología', 'formation-technologie', 'services-techniques', 2, 'es');

-- NIVEAU 1 : Services administratifs (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-administratifs', 'Servicios Administrativos', 'services-administratifs', 'services-support', 1, 'es');

-- NIVEAU 2 : Niveau 2 pour Services administratifs (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-traduction', 'Servicios de Traducción', 'services-traduction', 'services-administratifs', 2, 'es'),
('services-secretariat', 'Servicios de Secretariado', 'services-secretariat', 'services-administratifs', 2, 'es'),
('services-comptabilite', 'Servicios de Contabilidad', 'services-comptabilite', 'services-administratifs', 2, 'es'),
('conseils-juridiques', 'Asesoramiento Jurídico', 'conseils-juridiques', 'services-administratifs', 2, 'es'),
('services-creation-entreprise', 'Creación de Empresas', 'services-creation-entreprise', 'services-administratifs', 2, 'es'),
('services-demarches-administratives', 'Trámites Administrativos', 'services-demarches-administratives', 'services-administratifs', 2, 'es');

-- NIVEAU 1 : Services ménagers (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-menagers', 'Servicios Domésticos', 'services-menagers', 'services-support', 1, 'es');

-- NIVEAU 2 : Niveau 2 pour Services ménagers (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('menage-repassage', 'Limpieza y Planchado', 'menage-repassage', 'services-menagers', 2, 'es'),
('services-cuisine', 'Servicios de Cocina', 'services-cuisine', 'services-menagers', 2, 'es'),
('services-jardinage', 'Servicios de Jardinería', 'services-jardinage', 'services-menagers', 2, 'es'),
('services-bricolage', 'Servicios de Bricolaje', 'services-bricolage', 'services-menagers', 2, 'es'),
('services-gardiennage', 'Servicios de Cuidado de Casa', 'services-gardiennage', 'services-menagers', 2, 'es'),
('services-demenagement', 'Servicios de Mudanza', 'services-demenagement', 'services-menagers', 2, 'es');

-- NIVEAU 1 : Services livraison (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-livraison', 'Servicios de Entrega', 'services-livraison', 'services-support', 1, 'es');

-- NIVEAU 2 : Niveau 2 pour Services livraison (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('livraison-domicile', 'Entrega a Domicilio', 'livraison-domicile', 'services-livraison', 2, 'es'),
('services-colis', 'Servicios de Paquetería', 'services-colis', 'services-livraison', 2, 'es'),
('services-courses', 'Servicios de Compras', 'services-courses', 'services-livraison', 2, 'es'),
('transport-marchandises', 'Transporte de Mercancías', 'transport-marchandises', 'services-livraison', 2, 'es'),
('services-deplacement-professionnels', 'Viajes Profesionales', 'services-deplacement-professionnels', 'services-livraison', 2, 'es'),
('services-navette', 'Servicios de Transporte', 'services-navette', 'services-livraison', 2, 'es');

-- NIVEAU 1 : Services événementiels (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-evenementiels', 'Servicios de Eventos', 'services-evenementiels', 'services-support', 1, 'es');

-- NIVEAU 2 : Niveau 2 pour Services événementiels (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('organisation-evenements', 'Organización de Eventos', 'organisation-evenements', 'services-evenementiels', 2, 'es'),
('services-catering', 'Servicios de Catering', 'services-catering', 'services-evenementiels', 2, 'es'),
('location-materiel-evenements', 'Alquiler de Equipos', 'location-materiel-evenements', 'services-evenementiels', 2, 'es'),
('services-animation', 'Servicios de Animación', 'services-animation', 'services-evenementiels', 2, 'es'),
('services-photographie', 'Servicios de Fotografía', 'services-photographie', 'services-evenementiels', 2, 'es'),
('services-video', 'Servicios de Vídeo', 'services-video', 'services-evenementiels', 2, 'es');

-- =====================================================
-- ALLEMAND (DE)
-- =====================================================

-- NIVEAU 0 : Services & Support (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-support', 'Dienstleistungen & Support', 'services-support', NULL, 0, 'de');

-- NIVEAU 1 : Services techniques (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-techniques', 'Technische Dienstleistungen', 'services-techniques', 'services-support', 1, 'de');

-- NIVEAU 2 : Niveau 2 pour Services techniques (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('depannage-informatique', 'Computer-Reparatur', 'depannage-informatique', 'services-techniques', 2, 'de'),
('reparation-telephones', 'Handy-Reparatur', 'reparation-telephones', 'services-techniques', 2, 'de'),
('reparation-electromenager', 'Haushaltsgeräte-Reparatur', 'reparation-electromenager', 'services-techniques', 2, 'de'),
('installation-logiciels', 'Software-Installation', 'installation-logiciels', 'services-techniques', 2, 'de'),
('configuration-reseaux', 'Netzwerkkonfiguration', 'configuration-reseaux', 'services-techniques', 2, 'de'),
('maintenance-preventive', 'Präventive Wartung', 'maintenance-preventive', 'services-techniques', 2, 'de'),
('services-depannage-urgent', 'Notfall-Reparaturdienste', 'services-depannage-urgent', 'services-techniques', 2, 'de'),
('conseils-techniques', 'Technische Beratung', 'conseils-techniques', 'services-techniques', 2, 'de'),
('formation-technologie', 'Technologie-Schulung', 'formation-technologie', 'services-techniques', 2, 'de');

-- NIVEAU 1 : Services administratifs (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-administratifs', 'Verwaltungsdienstleistungen', 'services-administratifs', 'services-support', 1, 'de');

-- NIVEAU 2 : Niveau 2 pour Services administratifs (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-traduction', 'Übersetzungsdienste', 'services-traduction', 'services-administratifs', 2, 'de'),
('services-secretariat', 'Sekretariatsdienste', 'services-secretariat', 'services-administratifs', 2, 'de'),
('services-comptabilite', 'Buchhaltungsdienste', 'services-comptabilite', 'services-administratifs', 2, 'de'),
('conseils-juridiques', 'Rechtsberatung', 'conseils-juridiques', 'services-administratifs', 2, 'de'),
('services-creation-entreprise', 'Unternehmensgründung', 'services-creation-entreprise', 'services-administratifs', 2, 'de'),
('services-demarches-administratives', 'Verwaltungsverfahren', 'services-demarches-administratives', 'services-administratifs', 2, 'de');

-- NIVEAU 1 : Services ménagers (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-menagers', 'Haushaltsdienste', 'services-menagers', 'services-support', 1, 'de');

-- NIVEAU 2 : Niveau 2 pour Services ménagers (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('menage-repassage', 'Reinigung & Bügeln', 'menage-repassage', 'services-menagers', 2, 'de'),
('services-cuisine', 'Kochdienste', 'services-cuisine', 'services-menagers', 2, 'de'),
('services-jardinage', 'Gartenbaudienste', 'services-jardinage', 'services-menagers', 2, 'de'),
('services-bricolage', 'Handwerkerdienste', 'services-bricolage', 'services-menagers', 2, 'de'),
('services-gardiennage', 'Haussitter-Dienste', 'services-gardiennage', 'services-menagers', 2, 'de'),
('services-demenagement', 'Umzugsdienste', 'services-demenagement', 'services-menagers', 2, 'de');

-- NIVEAU 1 : Services livraison (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-livraison', 'Lieferdienste', 'services-livraison', 'services-support', 1, 'de');

-- NIVEAU 2 : Niveau 2 pour Services livraison (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('livraison-domicile', 'Hauslieferung', 'livraison-domicile', 'services-livraison', 2, 'de'),
('services-colis', 'Paketdienste', 'services-colis', 'services-livraison', 2, 'de'),
('services-courses', 'Einkaufsdienste', 'services-courses', 'services-livraison', 2, 'de'),
('transport-marchandises', 'Warentransport', 'transport-marchandises', 'services-livraison', 2, 'de'),
('services-deplacement-professionnels', 'Geschäftsreisen', 'services-deplacement-professionnels', 'services-livraison', 2, 'de'),
('services-navette', 'Shuttle-Dienste', 'services-navette', 'services-livraison', 2, 'de');

-- NIVEAU 1 : Services événementiels (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-evenementiels', 'Veranstaltungsdienste', 'services-evenementiels', 'services-support', 1, 'de');

-- NIVEAU 2 : Niveau 2 pour Services événementiels (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('organisation-evenements', 'Veranstaltungsorganisation', 'organisation-evenements', 'services-evenementiels', 2, 'de'),
('services-catering', 'Catering-Dienste', 'services-catering', 'services-evenementiels', 2, 'de'),
('location-materiel-evenements', 'Geräteverleih', 'location-materiel-evenements', 'services-evenementiels', 2, 'de'),
('services-animation', 'Unterhaltungsdienste', 'services-animation', 'services-evenementiels', 2, 'de'),
('services-photographie', 'Fotografiedienste', 'services-photographie', 'services-evenementiels', 2, 'de'),
('services-video', 'Videodienste', 'services-video', 'services-evenementiels', 2, 'de');

-- =====================================================
-- ITALIEN (IT)
-- =====================================================

-- NIVEAU 0 : Services & Support (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-support', 'Servizi e Supporto', 'services-support', NULL, 0, 'it');

-- NIVEAU 1 : Services techniques (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-techniques', 'Servizi Tecnici', 'services-techniques', 'services-support', 1, 'it');

-- NIVEAU 2 : Niveau 2 pour Services techniques (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('depannage-informatique', 'Riparazione Computer', 'depannage-informatique', 'services-techniques', 2, 'it'),
('reparation-telephones', 'Riparazione Telefoni', 'reparation-telephones', 'services-techniques', 2, 'it'),
('reparation-electromenager', 'Riparazione Elettrodomestici', 'reparation-electromenager', 'services-techniques', 2, 'it'),
('installation-logiciels', 'Installazione Software', 'installation-logiciels', 'services-techniques', 2, 'it'),
('configuration-reseaux', 'Configurazione Reti', 'configuration-reseaux', 'services-techniques', 2, 'it'),
('maintenance-preventive', 'Manutenzione Preventiva', 'maintenance-preventive', 'services-techniques', 2, 'it'),
('services-depannage-urgent', 'Servizi di Riparazione di Emergenza', 'services-depannage-urgent', 'services-techniques', 2, 'it'),
('conseils-techniques', 'Consulenza Tecnica', 'conseils-techniques', 'services-techniques', 2, 'it'),
('formation-technologie', 'Formazione Tecnologica', 'formation-technologie', 'services-techniques', 2, 'it');

-- NIVEAU 1 : Services administratifs (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-administratifs', 'Servizi Amministrativi', 'services-administratifs', 'services-support', 1, 'it');

-- NIVEAU 2 : Niveau 2 pour Services administratifs (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-traduction', 'Servizi di Traduzione', 'services-traduction', 'services-administratifs', 2, 'it'),
('services-secretariat', 'Servizi di Segreteria', 'services-secretariat', 'services-administratifs', 2, 'it'),
('services-comptabilite', 'Servizi di Contabilità', 'services-comptabilite', 'services-administratifs', 2, 'it'),
('conseils-juridiques', 'Consulenza Legale', 'conseils-juridiques', 'services-administratifs', 2, 'it'),
('services-creation-entreprise', 'Creazione di Aziende', 'services-creation-entreprise', 'services-administratifs', 2, 'it'),
('services-demarches-administratives', 'Procedure Amministrative', 'services-demarches-administratives', 'services-administratifs', 2, 'it');

-- NIVEAU 1 : Services ménagers (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-menagers', 'Servizi Domestici', 'services-menagers', 'services-support', 1, 'it');

-- NIVEAU 2 : Niveau 2 pour Services ménagers (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('menage-repassage', 'Pulizia e Stiratura', 'menage-repassage', 'services-menagers', 2, 'it'),
('services-cuisine', 'Servizi di Cucina', 'services-cuisine', 'services-menagers', 2, 'it'),
('services-jardinage', 'Servizi di Giardinaggio', 'services-jardinage', 'services-menagers', 2, 'it'),
('services-bricolage', 'Servizi di Fai-da-Te', 'services-bricolage', 'services-menagers', 2, 'it'),
('services-gardiennage', 'Servizi di Custodia della Casa', 'services-gardiennage', 'services-menagers', 2, 'it'),
('services-demenagement', 'Servizi di Trasloco', 'services-demenagement', 'services-menagers', 2, 'it');

-- NIVEAU 1 : Services livraison (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-livraison', 'Servizi di Consegna', 'services-livraison', 'services-support', 1, 'it');

-- NIVEAU 2 : Niveau 2 pour Services livraison (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('livraison-domicile', 'Consegna a Domicilio', 'livraison-domicile', 'services-livraison', 2, 'it'),
('services-colis', 'Servizi di Pacchi', 'services-colis', 'services-livraison', 2, 'it'),
('services-courses', 'Servizi di Spesa', 'services-courses', 'services-livraison', 2, 'it'),
('transport-marchandises', 'Transporto Merci', 'transport-marchandises', 'services-livraison', 2, 'it'),
('services-deplacement-professionnels', 'Viaggi di Lavoro', 'services-deplacement-professionnels', 'services-livraison', 2, 'it'),
('services-navette', 'Servizi di Navetta', 'services-navette', 'services-livraison', 2, 'it');

-- NIVEAU 1 : Services événementiels (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-evenementiels', 'Servizi per Eventi', 'services-evenementiels', 'services-support', 1, 'it');

-- NIVEAU 2 : Niveau 2 pour Services événementiels (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('organisation-evenements', 'Organizzazione di Eventi', 'organisation-evenements', 'services-evenementiels', 2, 'it'),
('services-catering', 'Servizi di Catering', 'services-catering', 'services-evenementiels', 2, 'it'),
('location-materiel-evenements', 'Noleggio Attrezzature', 'location-materiel-evenements', 'services-evenementiels', 2, 'it'),
('services-animation', 'Servizi di Animazione', 'services-animation', 'services-evenementiels', 2, 'it'),
('services-photographie', 'Servizi di Fotografia', 'services-photographie', 'services-evenementiels', 2, 'it'),
('services-video', 'Servizi Video', 'services-video', 'services-evenementiels', 2, 'it');