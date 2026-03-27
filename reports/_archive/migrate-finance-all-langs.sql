-- =====================================================
-- FINANCE, MONNAIE & FIDUCIAIRE - MIGRATION MULTILINGUE
-- =====================================================

-- NIVEAU 0 : Finance (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('finance', 'Finance', 'finance', NULL, 0, 'fr');

-- NIVEAU 1 : Services bancaires (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-bancaires', 'Services bancaires', 'services-bancaires', 'finance', 1, 'fr');

-- NIVEAU 1 : Services financiers (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-financiers', 'Services financiers', 'services-financiers', 'finance', 1, 'fr');

-- NIVEAU 2 : Niveau 2 pour Services bancaires (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('comptes-courants', 'Comptes courants', 'comptes-courants', 'services-bancaires', 2, 'fr'),
('comptes-epargne', 'Comptes épargne', 'comptes-epargne', 'services-bancaires', 2, 'fr'),
('cartes-bancaires', 'Cartes bancaires', 'cartes-bancaires', 'services-bancaires', 2, 'fr'),
('credits-personnels', 'Crédits personnels', 'credits-personnels', 'services-bancaires', 2, 'fr'),
('credits-immobiliers', 'Crédits immobiliers', 'credits-immobiliers', 'services-bancaires', 2, 'fr'),
('assurances-vie', 'Assurances vie', 'assurances-vie', 'services-bancaires', 2, 'fr'),
('assurances-automobile', 'Assurances automobile', 'assurances-automobile', 'services-bancaires', 2, 'fr'),
('assurances-habitation', 'Assurances habitation', 'assurances-habitation', 'services-bancaires', 2, 'fr'),
('placements-financiers', 'Placements financiers', 'placements-financiers', 'services-bancaires', 2, 'fr'),
('services-investissement', 'Services investissement', 'services-investissement', 'services-bancaires', 2, 'fr');

-- NIVEAU 2 : Niveau 2 pour Services financiers (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('transferts-argent', 'Transferts d\'argent', 'transferts-argent', 'services-financiers', 2, 'fr'),
('change-devises', 'Change de devises', 'change-devises', 'services-financiers', 2, 'fr'),
('services-western-union', 'Services Western Union', 'services-western-union', 'services-financiers', 2, 'fr'),
('services-moneygram', 'Services MoneyGram', 'services-moneygram', 'services-financiers', 2, 'fr'),
('paiements-internationaux', 'Paiements internationaux', 'paiements-internationaux', 'services-financiers', 2, 'fr'),
('services-paiement-mobile', 'Services paiement mobile', 'services-paiement-mobile', 'services-financiers', 2, 'fr'),
('conseils-financiers', 'Conseils financiers', 'conseils-financiers', 'services-financiers', 2, 'fr'),
('gestion-patrimoine', 'Gestion de patrimoine', 'gestion-patrimoine', 'services-financiers', 2, 'fr');

-- =====================================================

-- NIVEAU 0 : Finance (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('finance', 'Finance', 'finance', NULL, 0, 'en');

-- NIVEAU 1 : Services bancaires (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-bancaires', 'Banking Services', 'services-bancaires', 'finance', 1, 'en');

-- NIVEAU 1 : Services financiers (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-financiers', 'Financial Services', 'services-financiers', 'finance', 1, 'en');

-- NIVEAU 2 : Niveau 2 pour Services bancaires (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('comptes-courants', 'Current Accounts', 'comptes-courants', 'services-bancaires', 2, 'en'),
('comptes-epargne', 'Savings Accounts', 'comptes-epargne', 'services-bancaires', 2, 'en'),
('cartes-bancaires', 'Bank Cards', 'cartes-bancaires', 'services-bancaires', 2, 'en'),
('credits-personnels', 'Personal Loans', 'credits-personnels', 'services-bancaires', 2, 'en'),
('credits-immobiliers', 'Mortgage Loans', 'credits-immobiliers', 'services-bancaires', 2, 'en'),
('assurances-vie', 'Life Insurance', 'assurances-vie', 'services-bancaires', 2, 'en'),
('assurances-automobile', 'Auto Insurance', 'assurances-automobile', 'services-bancaires', 2, 'en'),
('assurances-habitation', 'Home Insurance', 'assurances-habitation', 'services-bancaires', 2, 'en'),
('placements-financiers', 'Financial Investments', 'placements-financiers', 'services-bancaires', 2, 'en'),
('services-investissement', 'Investment Services', 'services-investissement', 'services-bancaires', 2, 'en');

-- NIVEAU 2 : Niveau 2 pour Services financiers (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('transferts-argent', 'Money Transfers', 'transferts-argent', 'services-financiers', 2, 'en'),
('change-devises', 'Currency Exchange', 'change-devises', 'services-financiers', 2, 'en'),
('services-western-union', 'Western Union Services', 'services-western-union', 'services-financiers', 2, 'en'),
('services-moneygram', 'MoneyGram Services', 'services-moneygram', 'services-financiers', 2, 'en'),
('paiements-internationaux', 'International Payments', 'paiements-internationaux', 'services-financiers', 2, 'en'),
('services-paiement-mobile', 'Mobile Payment Services', 'services-paiement-mobile', 'services-financiers', 2, 'en'),
('conseils-financiers', 'Financial Advice', 'conseils-financiers', 'services-financiers', 2, 'en'),
('gestion-patrimoine', 'Wealth Management', 'gestion-patrimoine', 'services-financiers', 2, 'en');

-- =====================================================

-- NIVEAU 0 : Finance (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('finance', 'المالية', 'finance', NULL, 0, 'ar');

-- NIVEAU 1 : Services bancaires (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-bancaires', 'الخدمات المصرفية', 'services-bancaires', 'finance', 1, 'ar');

-- NIVEAU 1 : Services financiers (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-financiers', 'الخدمات المالية', 'services-financiers', 'finance', 1, 'ar');

-- NIVEAU 2 : Niveau 2 pour Services bancaires (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('comptes-courants', 'الحسابات الجارية', 'comptes-courants', 'services-bancaires', 2, 'ar'),
('comptes-epargne', 'حسابات التوفير', 'comptes-epargne', 'services-bancaires', 2, 'ar'),
('cartes-bancaires', 'البطاقات المصرفية', 'cartes-bancaires', 'services-bancaires', 2, 'ar'),
('credits-personnels', 'القروض الشخصية', 'credits-personnels', 'services-bancaires', 2, 'ar'),
('credits-immobiliers', 'القروض العقارية', 'credits-immobiliers', 'services-bancaires', 2, 'ar'),
('assurances-vie', 'تأمين الحياة', 'assurances-vie', 'services-bancaires', 2, 'ar'),
('assurances-automobile', 'تأمين السيارات', 'assurances-automobile', 'services-bancaires', 2, 'ar'),
('assurances-habitation', 'تأمين السكن', 'assurances-habitation', 'services-bancaires', 2, 'ar'),
('placements-financiers', 'الاستثمارات المالية', 'placements-financiers', 'services-bancaires', 2, 'ar'),
('services-investissement', 'خدمات الاستثمار', 'services-investissement', 'services-bancaires', 2, 'ar');

-- NIVEAU 2 : Niveau 2 pour Services financiers (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('transferts-argent', 'تحويلات الأموال', 'transferts-argent', 'services-financiers', 2, 'ar'),
('change-devises', 'صرف العملات', 'change-devises', 'services-financiers', 2, 'ar'),
('services-western-union', 'خدمات ويسترن يونيون', 'services-western-union', 'services-financiers', 2, 'ar'),
('services-moneygram', 'خدمات موني جرام', 'services-moneygram', 'services-financiers', 2, 'ar'),
('paiements-internationaux', 'المدفوعات الدولية', 'paiements-internationaux', 'services-financiers', 2, 'ar'),
('services-paiement-mobile', 'خدمات الدفع المتنقل', 'services-paiement-mobile', 'services-financiers', 2, 'ar'),
('conseils-financiers', 'المشورة المالية', 'conseils-financiers', 'services-financiers', 2, 'ar'),
('gestion-patrimoine', 'إدارة الثروات', 'gestion-patrimoine', 'services-financiers', 2, 'ar');

-- =====================================================

-- NIVEAU 0 : Finance (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('finance', 'Finanzen', 'finance', NULL, 0, 'de');

-- NIVEAU 1 : Services bancaires (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-bancaires', 'Bankdienstleistungen', 'services-bancaires', 'finance', 1, 'de');

-- NIVEAU 1 : Services financiers (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-financiers', 'Finanzdienstleistungen', 'services-financiers', 'finance', 1, 'de');

-- NIVEAU 2 : Niveau 2 pour Services bancaires (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('comptes-courants', 'Girokonten', 'comptes-courants', 'services-bancaires', 2, 'de'),
('comptes-epargne', 'Sparkonten', 'comptes-epargne', 'services-bancaires', 2, 'de'),
('cartes-bancaires', 'Bankkarten', 'cartes-bancaires', 'services-bancaires', 2, 'de'),
('credits-personnels', 'Persönliche Darlehen', 'credits-personnels', 'services-bancaires', 2, 'de'),
('credits-immobiliers', 'Hypothekendarlehen', 'credits-immobiliers', 'services-bancaires', 2, 'de'),
('assurances-vie', 'Lebensversicherung', 'assurances-vie', 'services-bancaires', 2, 'de'),
('assurances-automobile', 'Autoversicherung', 'assurances-automobile', 'services-bancaires', 2, 'de'),
('assurances-habitation', 'Wohnversicherung', 'assurances-habitation', 'services-bancaires', 2, 'de'),
('placements-financiers', 'Finanzanlagen', 'placements-financiers', 'services-bancaires', 2, 'de'),
('services-investissement', 'Investitionsdienstleistungen', 'services-investissement', 'services-bancaires', 2, 'de');

-- NIVEAU 2 : Niveau 2 pour Services financiers (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('transferts-argent', 'Geldüberweisungen', 'transferts-argent', 'services-financiers', 2, 'de'),
('change-devises', 'Währungsumtausch', 'change-devises', 'services-financiers', 2, 'de'),
('services-western-union', 'Western Union Dienste', 'services-western-union', 'services-financiers', 2, 'de'),
('services-moneygram', 'MoneyGram Dienste', 'services-moneygram', 'services-financiers', 2, 'de'),
('paiements-internationaux', 'Internationale Zahlungen', 'paiements-internationaux', 'services-financiers', 2, 'de'),
('services-paiement-mobile', 'Mobile Zahlungsdienste', 'services-paiement-mobile', 'services-financiers', 2, 'de'),
('conseils-financiers', 'Finanzberatung', 'conseils-financiers', 'services-financiers', 2, 'de'),
('gestion-patrimoine', 'Vermögensverwaltung', 'gestion-patrimoine', 'services-financiers', 2, 'de');

-- =====================================================

-- NIVEAU 0 : Finance (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('finance', 'Finanzas', 'finance', NULL, 0, 'es');

-- NIVEAU 1 : Services bancaires (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-bancaires', 'Servicios Bancarios', 'services-bancaires', 'finance', 1, 'es');

-- NIVEAU 1 : Services financiers (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-financiers', 'Servicios Financieros', 'services-financiers', 'finance', 1, 'es');

-- NIVEAU 2 : Niveau 2 pour Services bancaires (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('comptes-courants', 'Cuentas Corrientes', 'comptes-courants', 'services-bancaires', 2, 'es'),
('comptes-epargne', 'Cuentas de Ahorro', 'comptes-epargne', 'services-bancaires', 2, 'es'),
('cartes-bancaires', 'Tarjetas Bancarias', 'cartes-bancaires', 'services-bancaires', 2, 'es'),
('credits-personnels', 'Préstamos Personales', 'credits-personnels', 'services-bancaires', 2, 'es'),
('credits-immobiliers', 'Préstamos Hipotecarios', 'credits-immobiliers', 'services-bancaires', 2, 'es'),
('assurances-vie', 'Seguro de Vida', 'assurances-vie', 'services-bancaires', 2, 'es'),
('assurances-automobile', 'Seguro de Auto', 'assurances-automobile', 'services-bancaires', 2, 'es'),
('assurances-habitation', 'Seguro de Hogar', 'assurances-habitation', 'services-bancaires', 2, 'es'),
('placements-financiers', 'Inversiones Financieras', 'placements-financiers', 'services-bancaires', 2, 'es'),
('services-investissement', 'Servicios de Inversión', 'services-investissement', 'services-bancaires', 2, 'es');

-- NIVEAU 2 : Niveau 2 pour Services financiers (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('transferts-argent', 'Transferencias de Dinero', 'transferts-argent', 'services-financiers', 2, 'es'),
('change-devises', 'Cambio de Divisas', 'change-devises', 'services-financiers', 2, 'es'),
('services-western-union', 'Servicios Western Union', 'services-western-union', 'services-financiers', 2, 'es'),
('services-moneygram', 'Servicios MoneyGram', 'services-moneygram', 'services-financiers', 2, 'es'),
('paiements-internationaux', 'Pagos Internacionales', 'paiements-internationaux', 'services-financiers', 2, 'es'),
('services-paiement-mobile', 'Servicios de Pago Móvil', 'services-paiement-mobile', 'services-financiers', 2, 'es'),
('conseils-financiers', 'Asesoramiento Financiero', 'conseils-financiers', 'services-financiers', 2, 'es'),
('gestion-patrimoine', 'Gestión de Patrimonio', 'gestion-patrimoine', 'services-financiers', 2, 'es');

-- =====================================================

-- NIVEAU 0 : Finance (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('finance', 'Finanza', 'finance', NULL, 0, 'it');

-- NIVEAU 1 : Services bancaires (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-bancaires', 'Servizi Bancari', 'services-bancaires', 'finance', 1, 'it');

-- NIVEAU 1 : Services financiers (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-financiers', 'Servizi Finanziari', 'services-financiers', 'finance', 1, 'it');

-- NIVEAU 2 : Niveau 2 pour Services bancaires (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('comptes-courants', 'Conti Correnti', 'comptes-courants', 'services-bancaires', 2, 'it'),
('comptes-epargne', 'Conti di Risparmio', 'comptes-epargne', 'services-bancaires', 2, 'it'),
('cartes-bancaires', 'Carte Bancarie', 'cartes-bancaires', 'services-bancaires', 2, 'it'),
('credits-personnels', 'Prestiti Personali', 'credits-personnels', 'services-bancaires', 2, 'it'),
('credits-immobiliers', 'Mutui', 'credits-immobiliers', 'services-bancaires', 2, 'it'),
('assurances-vie', 'Assicurazione sulla Vita', 'assurances-vie', 'services-bancaires', 2, 'it'),
('assurances-automobile', 'Assicurazione Auto', 'assurances-automobile', 'services-bancaires', 2, 'it'),
('assurances-habitation', 'Assicurazione Casa', 'assurances-habitation', 'services-bancaires', 2, 'it'),
('placements-financiers', 'Investimenti Finanziari', 'placements-financiers', 'services-bancaires', 2, 'it'),
('services-investissement', 'Servizi di Investimento', 'services-investissement', 'services-bancaires', 2, 'it');

-- NIVEAU 2 : Niveau 2 pour Services financiers (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('transferts-argent', 'Trasferimenti di Denaro', 'transferts-argent', 'services-financiers', 2, 'it'),
('change-devises', 'Cambio Valuta', 'change-devises', 'services-financiers', 2, 'it'),
('services-western-union', 'Servizi Western Union', 'services-western-union', 'services-financiers', 2, 'it'),
('services-moneygram', 'Servizi MoneyGram', 'services-moneygram', 'services-financiers', 2, 'it'),
('paiements-internationaux', 'Pagamenti Internazionali', 'paiements-internationaux', 'services-financiers', 2, 'it'),
('services-paiement-mobile', 'Servizi di Pagamento Mobile', 'services-paiement-mobile', 'services-financiers', 2, 'it'),
('conseils-financiers', 'Consulenza Finanziaria', 'conseils-financiers', 'services-financiers', 2, 'it'),
('gestion-patrimoine', 'Gestione Patrimoniale', 'gestion-patrimoine', 'services-financiers', 2, 'it');