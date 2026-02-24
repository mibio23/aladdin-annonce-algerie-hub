-- Migration: Services & Support (Generated Recursive)
-- Handles arbitrary depth and 6 languages

DO $$
DECLARE
    root_id TEXT;
    l1_id TEXT;
    l2_id TEXT;
    l3_id TEXT;
    l4_id TEXT;
    l5_id TEXT;
    l6_id TEXT;
    l7_id TEXT;
    l8_id TEXT;
    l9_id TEXT;
    l10_id TEXT;
BEGIN

    -- Level 0: services-support
    INSERT INTO categories (id, slug, level, name)
    VALUES ('services-support', 'services-support', 0, 'Services & Support')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 0, name = EXCLUDED.name
    RETURNING id INTO root_id;
    PERFORM insert_category_translations('services-support', 'fr', 'Services & Support');
    PERFORM insert_category_translations('services-support', 'ar', 'الخدمات والدعم');
    PERFORM insert_category_translations('services-support', 'en', 'Services & Support');
    PERFORM insert_category_translations('services-support', 'de', 'Dienstleistungen & Support');
    PERFORM insert_category_translations('services-support', 'es', 'Servicios y Soporte');
    PERFORM insert_category_translations('services-support', 'it', 'Servizi e Supporto');

        -- Level 1: services-informatiques
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('services-informatiques', 'services-informatiques', 1, root_id, 'Services Informatiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('services-informatiques', 'fr', 'Services Informatiques');
        PERFORM insert_category_translations('services-informatiques', 'ar', 'خدمات الحاسوب');
        PERFORM insert_category_translations('services-informatiques', 'en', 'IT Services');
        PERFORM insert_category_translations('services-informatiques', 'de', 'IT-Dienstleistungen');
        PERFORM insert_category_translations('services-informatiques', 'es', 'Servicios Informáticos');
        PERFORM insert_category_translations('services-informatiques', 'it', 'Servizi Informatici');

            -- Level 2: depannage-pc
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('depannage-pc', 'depannage-pc', 2, l1_id, 'Dépannage PC')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('depannage-pc', 'fr', 'Dépannage PC');
            PERFORM insert_category_translations('depannage-pc', 'ar', 'إصلاح أجهزة الكمبيوتر');
            PERFORM insert_category_translations('depannage-pc', 'en', 'PC Repair');
            PERFORM insert_category_translations('depannage-pc', 'de', 'PC-Reparatur');
            PERFORM insert_category_translations('depannage-pc', 'es', 'Reparación de PC');
            PERFORM insert_category_translations('depannage-pc', 'it', 'Riparazione PC');

            -- Level 2: maintenance-reseau
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('maintenance-reseau', 'maintenance-reseau', 2, l1_id, 'Maintenance Réseau')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('maintenance-reseau', 'fr', 'Maintenance Réseau');
            PERFORM insert_category_translations('maintenance-reseau', 'ar', 'صيانة الشبكات');
            PERFORM insert_category_translations('maintenance-reseau', 'en', 'Network Maintenance');
            PERFORM insert_category_translations('maintenance-reseau', 'de', 'Netzwerkwartung');
            PERFORM insert_category_translations('maintenance-reseau', 'es', 'Mantenimiento de Red');
            PERFORM insert_category_translations('maintenance-reseau', 'it', 'Manutenzione Rete');

            -- Level 2: installation-logiciels
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('installation-logiciels', 'installation-logiciels', 2, l1_id, 'Installation Logiciels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('installation-logiciels', 'fr', 'Installation Logiciels');
            PERFORM insert_category_translations('installation-logiciels', 'ar', 'تثبيت البرامج');
            PERFORM insert_category_translations('installation-logiciels', 'en', 'Software Installation');
            PERFORM insert_category_translations('installation-logiciels', 'de', 'Software-Installation');
            PERFORM insert_category_translations('installation-logiciels', 'es', 'Instalación de Software');
            PERFORM insert_category_translations('installation-logiciels', 'it', 'Installazione Software');

            -- Level 2: recuperation-donnees
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('recuperation-donnees', 'recuperation-donnees', 2, l1_id, 'Récupération Données')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('recuperation-donnees', 'fr', 'Récupération Données');
            PERFORM insert_category_translations('recuperation-donnees', 'ar', 'استعادة البيانات');
            PERFORM insert_category_translations('recuperation-donnees', 'en', 'Data Recovery');
            PERFORM insert_category_translations('recuperation-donnees', 'de', 'Datenrettung');
            PERFORM insert_category_translations('recuperation-donnees', 'es', 'Recuperación de Datos');
            PERFORM insert_category_translations('recuperation-donnees', 'it', 'Recupero Dati');

            -- Level 2: securite-informatique
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('securite-informatique', 'securite-informatique', 2, l1_id, 'Sécurité Informatique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('securite-informatique', 'fr', 'Sécurité Informatique');
            PERFORM insert_category_translations('securite-informatique', 'ar', 'الأمن السيبراني');
            PERFORM insert_category_translations('securite-informatique', 'en', 'IT Security');
            PERFORM insert_category_translations('securite-informatique', 'de', 'IT-Sicherheit');
            PERFORM insert_category_translations('securite-informatique', 'es', 'Seguridad Informática');
            PERFORM insert_category_translations('securite-informatique', 'it', 'Sicurezza Informatica');

            -- Level 2: configuration-systeme
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('configuration-systeme', 'configuration-systeme', 2, l1_id, 'Configuration Système')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('configuration-systeme', 'fr', 'Configuration Système');
            PERFORM insert_category_translations('configuration-systeme', 'ar', 'تكوين النظام');
            PERFORM insert_category_translations('configuration-systeme', 'en', 'System Configuration');
            PERFORM insert_category_translations('configuration-systeme', 'de', 'Systemkonfiguration');
            PERFORM insert_category_translations('configuration-systeme', 'es', 'Configuración del Sistema');
            PERFORM insert_category_translations('configuration-systeme', 'it', 'Configurazione Sistema');

            -- Level 2: assistance-ligne
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('assistance-ligne', 'assistance-ligne', 2, l1_id, 'Assistance en Ligne')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('assistance-ligne', 'fr', 'Assistance en Ligne');
            PERFORM insert_category_translations('assistance-ligne', 'ar', 'دعم عبر الإنترنت');
            PERFORM insert_category_translations('assistance-ligne', 'en', 'Online Support');
            PERFORM insert_category_translations('assistance-ligne', 'de', 'Online-Support');
            PERFORM insert_category_translations('assistance-ligne', 'es', 'Asistencia en Línea');
            PERFORM insert_category_translations('assistance-ligne', 'it', 'Assistenza Online');

            -- Level 2: optimisation-ordinateur
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('optimisation-ordinateur', 'optimisation-ordinateur', 2, l1_id, 'Optimisation Ordinateur')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('optimisation-ordinateur', 'fr', 'Optimisation Ordinateur');
            PERFORM insert_category_translations('optimisation-ordinateur', 'ar', 'تحسين أداء الكمبيوتر');
            PERFORM insert_category_translations('optimisation-ordinateur', 'en', 'Computer Optimization');
            PERFORM insert_category_translations('optimisation-ordinateur', 'de', 'Computeroptimierung');
            PERFORM insert_category_translations('optimisation-ordinateur', 'es', 'Optimización de Ordenador');
            PERFORM insert_category_translations('optimisation-ordinateur', 'it', 'Ottimizzazione Computer');

        -- Level 1: services-telecom
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('services-telecom', 'services-telecom', 1, root_id, 'Services Télécom')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('services-telecom', 'fr', 'Services Télécom');
        PERFORM insert_category_translations('services-telecom', 'ar', 'خدمات الاتصالات');
        PERFORM insert_category_translations('services-telecom', 'en', 'Telecom Services');
        PERFORM insert_category_translations('services-telecom', 'de', 'Telekommunikationsdienste');
        PERFORM insert_category_translations('services-telecom', 'es', 'Servicios de Telecomunicaciones');
        PERFORM insert_category_translations('services-telecom', 'it', 'Servizi Telecom');

            -- Level 2: installation-modem
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('installation-modem', 'installation-modem', 2, l1_id, 'Installation Modem')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('installation-modem', 'fr', 'Installation Modem');
            PERFORM insert_category_translations('installation-modem', 'ar', 'تركيب المودم');
            PERFORM insert_category_translations('installation-modem', 'en', 'Modem Installation');
            PERFORM insert_category_translations('installation-modem', 'de', 'Modem-Installation');
            PERFORM insert_category_translations('installation-modem', 'es', 'Instalación de Módem');
            PERFORM insert_category_translations('installation-modem', 'it', 'Installazione Modem');

            -- Level 2: configuration-routeur
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('configuration-routeur', 'configuration-routeur', 2, l1_id, 'Configuration Routeur')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('configuration-routeur', 'fr', 'Configuration Routeur');
            PERFORM insert_category_translations('configuration-routeur', 'ar', 'إعداد الراوتر');
            PERFORM insert_category_translations('configuration-routeur', 'en', 'Router Configuration');
            PERFORM insert_category_translations('configuration-routeur', 'de', 'Router-Konfiguration');
            PERFORM insert_category_translations('configuration-routeur', 'es', 'Configuración de Router');
            PERFORM insert_category_translations('configuration-routeur', 'it', 'Configurazione Router');

            -- Level 2: reparation-telephone
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('reparation-telephone', 'reparation-telephone', 2, l1_id, 'Réparation Téléphone')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('reparation-telephone', 'fr', 'Réparation Téléphone');
            PERFORM insert_category_translations('reparation-telephone', 'ar', 'تصليح الهواتف');
            PERFORM insert_category_translations('reparation-telephone', 'en', 'Phone Repair');
            PERFORM insert_category_translations('reparation-telephone', 'de', 'Telefonreparatur');
            PERFORM insert_category_translations('reparation-telephone', 'es', 'Reparación de Teléfono');
            PERFORM insert_category_translations('reparation-telephone', 'it', 'Riparazione Telefono');

            -- Level 2: debloquage-mobile
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('debloquage-mobile', 'debloquage-mobile', 2, l1_id, 'Déblocage Mobile')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('debloquage-mobile', 'fr', 'Déblocage Mobile');
            PERFORM insert_category_translations('debloquage-mobile', 'ar', 'فك تشفير الهواتف');
            PERFORM insert_category_translations('debloquage-mobile', 'en', 'Mobile Unlocking');
            PERFORM insert_category_translations('debloquage-mobile', 'de', 'Handy-Entsperrung');
            PERFORM insert_category_translations('debloquage-mobile', 'es', 'Desbloqueo de Móvil');
            PERFORM insert_category_translations('debloquage-mobile', 'it', 'Sblocco Cellulare');

            -- Level 2: optimisation-internet
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('optimisation-internet', 'optimisation-internet', 2, l1_id, 'Optimisation Internet')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('optimisation-internet', 'fr', 'Optimisation Internet');
            PERFORM insert_category_translations('optimisation-internet', 'ar', 'تحسين الإنترنت');
            PERFORM insert_category_translations('optimisation-internet', 'en', 'Internet Optimization');
            PERFORM insert_category_translations('optimisation-internet', 'de', 'Internetoptimierung');
            PERFORM insert_category_translations('optimisation-internet', 'es', 'Optimización de Internet');
            PERFORM insert_category_translations('optimisation-internet', 'it', 'Ottimizzazione Internet');

            -- Level 2: parametrage-apn
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('parametrage-apn', 'parametrage-apn', 2, l1_id, 'Paramétrage APN')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('parametrage-apn', 'fr', 'Paramétrage APN');
            PERFORM insert_category_translations('parametrage-apn', 'ar', 'إعدادات APN');
            PERFORM insert_category_translations('parametrage-apn', 'en', 'APN Settings');
            PERFORM insert_category_translations('parametrage-apn', 'de', 'APN-Einstellungen');
            PERFORM insert_category_translations('parametrage-apn', 'es', 'Configuración APN');
            PERFORM insert_category_translations('parametrage-apn', 'it', 'Configurazione APN');

        -- Level 1: services-electromenager
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('services-electromenager', 'services-electromenager', 1, root_id, 'Services Électroménager')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('services-electromenager', 'fr', 'Services Électroménager');
        PERFORM insert_category_translations('services-electromenager', 'ar', 'خدمات الأجهزة المنزلية');
        PERFORM insert_category_translations('services-electromenager', 'en', 'Appliance Services');
        PERFORM insert_category_translations('services-electromenager', 'de', 'Haushaltsgeräteservice');
        PERFORM insert_category_translations('services-electromenager', 'es', 'Servicios de Electrodomésticos');
        PERFORM insert_category_translations('services-electromenager', 'it', 'Servizi Elettrodomestici');

            -- Level 2: reparation-machines
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('reparation-machines', 'reparation-machines', 2, l1_id, 'Réparation Machines')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('reparation-machines', 'fr', 'Réparation Machines');
            PERFORM insert_category_translations('reparation-machines', 'ar', 'إصلاح الآلات');
            PERFORM insert_category_translations('reparation-machines', 'en', 'Machine Repair');
            PERFORM insert_category_translations('reparation-machines', 'de', 'Maschinenreparatur');
            PERFORM insert_category_translations('reparation-machines', 'es', 'Reparación de Máquinas');
            PERFORM insert_category_translations('reparation-machines', 'it', 'Riparazione Macchine');

            -- Level 2: installation-electromenager
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('installation-electromenager', 'installation-electromenager', 2, l1_id, 'Installation Électroménager')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('installation-electromenager', 'fr', 'Installation Électroménager');
            PERFORM insert_category_translations('installation-electromenager', 'ar', 'تركيب الأجهزة');
            PERFORM insert_category_translations('installation-electromenager', 'en', 'Appliance Installation');
            PERFORM insert_category_translations('installation-electromenager', 'de', 'Geräteinstallation');
            PERFORM insert_category_translations('installation-electromenager', 'es', 'Instalación de Electrodomésticos');
            PERFORM insert_category_translations('installation-electromenager', 'it', 'Installazione Elettrodomestici');

            -- Level 2: maintenance-appareils
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('maintenance-appareils', 'maintenance-appareils', 2, l1_id, 'Maintenance Appareils')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('maintenance-appareils', 'fr', 'Maintenance Appareils');
            PERFORM insert_category_translations('maintenance-appareils', 'ar', 'صيانة الأجهزة');
            PERFORM insert_category_translations('maintenance-appareils', 'en', 'Device Maintenance');
            PERFORM insert_category_translations('maintenance-appareils', 'de', 'Gerätewartung');
            PERFORM insert_category_translations('maintenance-appareils', 'es', 'Mantenimiento de Aparatos');
            PERFORM insert_category_translations('maintenance-appareils', 'it', 'Manutenzione Dispositivi');

            -- Level 2: depannage-urgent
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('depannage-urgent', 'depannage-urgent-electromenager', 2, l1_id, 'Dépannage Urgent')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('depannage-urgent', 'fr', 'Dépannage Urgent');
            PERFORM insert_category_translations('depannage-urgent', 'ar', 'إصلاح طارئ');
            PERFORM insert_category_translations('depannage-urgent', 'en', 'Urgent Repair');
            PERFORM insert_category_translations('depannage-urgent', 'de', 'Notfallreparatur');
            PERFORM insert_category_translations('depannage-urgent', 'es', 'Reparación Urgente');
            PERFORM insert_category_translations('depannage-urgent', 'it', 'Riparazione Urgente');

            -- Level 2: diagnostic-panne
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('diagnostic-panne', 'diagnostic-panne', 2, l1_id, 'Diagnostic Panne')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('diagnostic-panne', 'fr', 'Diagnostic Panne');
            PERFORM insert_category_translations('diagnostic-panne', 'ar', 'تشخيص الأعطال');
            PERFORM insert_category_translations('diagnostic-panne', 'en', 'Breakdown Diagnosis');
            PERFORM insert_category_translations('diagnostic-panne', 'de', 'Fehlerdiagnose');
            PERFORM insert_category_translations('diagnostic-panne', 'es', 'Diagnóstico de Averías');
            PERFORM insert_category_translations('diagnostic-panne', 'it', 'Diagnostica Guasti');

        -- Level 1: services-maison
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('services-maison', 'services-maison', 1, root_id, 'Services Maison')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('services-maison', 'fr', 'Services Maison');
        PERFORM insert_category_translations('services-maison', 'ar', 'خدمات منزلية');
        PERFORM insert_category_translations('services-maison', 'en', 'Home Services');
        PERFORM insert_category_translations('services-maison', 'de', 'Haushaltsdienste');
        PERFORM insert_category_translations('services-maison', 'es', 'Servicios del Hogar');
        PERFORM insert_category_translations('services-maison', 'it', 'Servizi Domestici');

            -- Level 2: nettoyage-maison
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('nettoyage-maison', 'nettoyage-maison', 2, l1_id, 'Nettoyage Maison')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('nettoyage-maison', 'fr', 'Nettoyage Maison');
            PERFORM insert_category_translations('nettoyage-maison', 'ar', 'تنظيف المنازل');
            PERFORM insert_category_translations('nettoyage-maison', 'en', 'Home Cleaning');
            PERFORM insert_category_translations('nettoyage-maison', 'de', 'Hausreinigung');
            PERFORM insert_category_translations('nettoyage-maison', 'es', 'Limpieza del Hogar');
            PERFORM insert_category_translations('nettoyage-maison', 'it', 'Pulizia Casa');

            -- Level 2: menage-pro
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('menage-pro', 'menage-pro', 2, l1_id, 'Ménage Pro')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('menage-pro', 'fr', 'Ménage Pro');
            PERFORM insert_category_translations('menage-pro', 'ar', 'تنظيف احترافي');
            PERFORM insert_category_translations('menage-pro', 'en', 'Pro Cleaning');
            PERFORM insert_category_translations('menage-pro', 'de', 'Professionelle Reinigung');
            PERFORM insert_category_translations('menage-pro', 'es', 'Limpieza Profesional');
            PERFORM insert_category_translations('menage-pro', 'it', 'Pulizie Professionali');

            -- Level 2: repassage-domicile
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('repassage-domicile', 'repassage-domicile', 2, l1_id, 'Repassage Domicile')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('repassage-domicile', 'fr', 'Repassage Domicile');
            PERFORM insert_category_translations('repassage-domicile', 'ar', 'كي الملابس في المنزل');
            PERFORM insert_category_translations('repassage-domicile', 'en', 'Home Ironing');
            PERFORM insert_category_translations('repassage-domicile', 'de', 'Bügeln zu Hause');
            PERFORM insert_category_translations('repassage-domicile', 'es', 'Planchado a Domicilio');
            PERFORM insert_category_translations('repassage-domicile', 'it', 'Stiratura a Domicilio');

            -- Level 2: entretien-jardin
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('entretien-jardin', 'entretien-jardin', 2, l1_id, 'Entretien Jardin')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('entretien-jardin', 'fr', 'Entretien Jardin');
            PERFORM insert_category_translations('entretien-jardin', 'ar', 'العناية بالحدائق');
            PERFORM insert_category_translations('entretien-jardin', 'en', 'Garden Maintenance');
            PERFORM insert_category_translations('entretien-jardin', 'de', 'Gartenpflege');
            PERFORM insert_category_translations('entretien-jardin', 'es', 'Mantenimiento de Jardín');
            PERFORM insert_category_translations('entretien-jardin', 'it', 'Giardinaggio');

            -- Level 2: desinfection-locaux
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('desinfection-locaux', 'desinfection-locaux', 2, l1_id, 'Désinfection Locaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('desinfection-locaux', 'fr', 'Désinfection Locaux');
            PERFORM insert_category_translations('desinfection-locaux', 'ar', 'تطهير الأماكن');
            PERFORM insert_category_translations('desinfection-locaux', 'en', 'Premises Disinfection');
            PERFORM insert_category_translations('desinfection-locaux', 'de', 'Raumdesinfektion');
            PERFORM insert_category_translations('desinfection-locaux', 'es', 'Desinfección de Locales');
            PERFORM insert_category_translations('desinfection-locaux', 'it', 'Disinfezione Locali');

            -- Level 2: gestion-dechets
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gestion-dechets', 'gestion-dechets', 2, l1_id, 'Gestion Déchets')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gestion-dechets', 'fr', 'Gestion Déchets');
            PERFORM insert_category_translations('gestion-dechets', 'ar', 'إدارة النفايات');
            PERFORM insert_category_translations('gestion-dechets', 'en', 'Waste Management');
            PERFORM insert_category_translations('gestion-dechets', 'de', 'Abfallmanagement');
            PERFORM insert_category_translations('gestion-dechets', 'es', 'Gestión de Residuos');
            PERFORM insert_category_translations('gestion-dechets', 'it', 'Gestione Rifiuti');

            -- Level 2: maintenance-maison
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('maintenance-maison', 'maintenance-maison', 2, l1_id, 'Maintenance Maison')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('maintenance-maison', 'fr', 'Maintenance Maison');
            PERFORM insert_category_translations('maintenance-maison', 'ar', 'صيانة المنزل');
            PERFORM insert_category_translations('maintenance-maison', 'en', 'Home Maintenance');
            PERFORM insert_category_translations('maintenance-maison', 'de', 'Hausinstandhaltung');
            PERFORM insert_category_translations('maintenance-maison', 'es', 'Mantenimiento del Hogar');
            PERFORM insert_category_translations('maintenance-maison', 'it', 'Manutenzione Casa');

        -- Level 1: services-artisanaux
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('services-artisanaux', 'services-artisanaux', 1, root_id, 'Services Artisanaux')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('services-artisanaux', 'fr', 'Services Artisanaux');
        PERFORM insert_category_translations('services-artisanaux', 'ar', 'خدمات حرفية');
        PERFORM insert_category_translations('services-artisanaux', 'en', 'Craft Services');
        PERFORM insert_category_translations('services-artisanaux', 'de', 'Handwerksdienste');
        PERFORM insert_category_translations('services-artisanaux', 'es', 'Servicios Artesanales');
        PERFORM insert_category_translations('services-artisanaux', 'it', 'Servizi Artigianali');

            -- Level 2: plomberie-rapide
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('plomberie-rapide', 'plomberie-rapide', 2, l1_id, 'Plomberie Rapide')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('plomberie-rapide', 'fr', 'Plomberie Rapide');
            PERFORM insert_category_translations('plomberie-rapide', 'ar', 'سباكة سريعة');
            PERFORM insert_category_translations('plomberie-rapide', 'en', 'Quick Plumbing');
            PERFORM insert_category_translations('plomberie-rapide', 'de', 'Schnelle Klempnerei');
            PERFORM insert_category_translations('plomberie-rapide', 'es', 'Fontanería Rápida');
            PERFORM insert_category_translations('plomberie-rapide', 'it', 'Idraulica Rapida');

            -- Level 2: electricite-maison
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('electricite-maison', 'electricite-maison', 2, l1_id, 'Électricité Maison')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('electricite-maison', 'fr', 'Électricité Maison');
            PERFORM insert_category_translations('electricite-maison', 'ar', 'كهرباء منزلية');
            PERFORM insert_category_translations('electricite-maison', 'en', 'Home Electricity');
            PERFORM insert_category_translations('electricite-maison', 'de', 'Hauselektrik');
            PERFORM insert_category_translations('electricite-maison', 'es', 'Electricidad del Hogar');
            PERFORM insert_category_translations('electricite-maison', 'it', 'Elettricità Casa');

            -- Level 2: reparation-meubles
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('reparation-meubles', 'reparation-meubles', 2, l1_id, 'Réparation Meubles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('reparation-meubles', 'fr', 'Réparation Meubles');
            PERFORM insert_category_translations('reparation-meubles', 'ar', 'إصلاح الأثاث');
            PERFORM insert_category_translations('reparation-meubles', 'en', 'Furniture Repair');
            PERFORM insert_category_translations('reparation-meubles', 'de', 'Möbelreparatur');
            PERFORM insert_category_translations('reparation-meubles', 'es', 'Reparación de Muebles');
            PERFORM insert_category_translations('reparation-meubles', 'it', 'Riparazione Mobili');

            -- Level 2: peinture-batiment
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('peinture-batiment', 'peinture-batiment', 2, l1_id, 'Peinture Bâtiment')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('peinture-batiment', 'fr', 'Peinture Bâtiment');
            PERFORM insert_category_translations('peinture-batiment', 'ar', 'دهان المباني');
            PERFORM insert_category_translations('peinture-batiment', 'en', 'Building Painting');
            PERFORM insert_category_translations('peinture-batiment', 'de', 'Gebäudemalerei');
            PERFORM insert_category_translations('peinture-batiment', 'es', 'Pintura de Edificios');
            PERFORM insert_category_translations('peinture-batiment', 'it', 'Tinteggiatura Edifici');

            -- Level 2: menuiserie-bois
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('menuiserie-bois', 'menuiserie-bois', 2, l1_id, 'Menuiserie Bois')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('menuiserie-bois', 'fr', 'Menuiserie Bois');
            PERFORM insert_category_translations('menuiserie-bois', 'ar', 'نجارة');
            PERFORM insert_category_translations('menuiserie-bois', 'en', 'Wood Carpentry');
            PERFORM insert_category_translations('menuiserie-bois', 'de', 'Holzarbeiten');
            PERFORM insert_category_translations('menuiserie-bois', 'es', 'Carpintería de Madera');
            PERFORM insert_category_translations('menuiserie-bois', 'it', 'Falegnameria');

            -- Level 2: travaux-divers
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('travaux-divers', 'travaux-divers', 2, l1_id, 'Travaux Divers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('travaux-divers', 'fr', 'Travaux Divers');
            PERFORM insert_category_translations('travaux-divers', 'ar', 'أعمال متنوعة');
            PERFORM insert_category_translations('travaux-divers', 'en', 'Various Works');
            PERFORM insert_category_translations('travaux-divers', 'de', 'Verschiedene Arbeiten');
            PERFORM insert_category_translations('travaux-divers', 'es', 'Trabajos Diversos');
            PERFORM insert_category_translations('travaux-divers', 'it', 'Lavori Vari');

            -- Level 2: bricolage-domicile
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('bricolage-domicile', 'bricolage-domicile', 2, l1_id, 'Bricolage Domicile')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('bricolage-domicile', 'fr', 'Bricolage Domicile');
            PERFORM insert_category_translations('bricolage-domicile', 'ar', 'أعمال يدوية منزلية');
            PERFORM insert_category_translations('bricolage-domicile', 'en', 'Home DIY');
            PERFORM insert_category_translations('bricolage-domicile', 'de', 'Heimwerken');
            PERFORM insert_category_translations('bricolage-domicile', 'es', 'Bricolaje a Domicilio');
            PERFORM insert_category_translations('bricolage-domicile', 'it', 'Fai da Te a Domicilio');

        -- Level 1: transport-livraison
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('transport-livraison', 'transport-livraison', 1, root_id, 'Transport & Livraison')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('transport-livraison', 'fr', 'Transport & Livraison');
        PERFORM insert_category_translations('transport-livraison', 'ar', 'نقل وتوصيل');
        PERFORM insert_category_translations('transport-livraison', 'en', 'Transport & Delivery');
        PERFORM insert_category_translations('transport-livraison', 'de', 'Transport & Lieferung');
        PERFORM insert_category_translations('transport-livraison', 'es', 'Transporte y Entrega');
        PERFORM insert_category_translations('transport-livraison', 'it', 'Trasporti e Consegne');

            -- Level 2: livraison-colis
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('livraison-colis', 'livraison-colis', 2, l1_id, 'Livraison Colis')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('livraison-colis', 'fr', 'Livraison Colis');
            PERFORM insert_category_translations('livraison-colis', 'ar', 'توصيل الطرود');
            PERFORM insert_category_translations('livraison-colis', 'en', 'Parcel Delivery');
            PERFORM insert_category_translations('livraison-colis', 'de', 'Paketlieferung');
            PERFORM insert_category_translations('livraison-colis', 'es', 'Entrega de Paquetes');
            PERFORM insert_category_translations('livraison-colis', 'it', 'Consegna Pacchi');

            -- Level 2: taxi-prive
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('taxi-prive', 'taxi-prive', 2, l1_id, 'Taxi Privé')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('taxi-prive', 'fr', 'Taxi Privé');
            PERFORM insert_category_translations('taxi-prive', 'ar', 'تاكسي خاص');
            PERFORM insert_category_translations('taxi-prive', 'en', 'Private Taxi');
            PERFORM insert_category_translations('taxi-prive', 'de', 'Privattaxi');
            PERFORM insert_category_translations('taxi-prive', 'es', 'Taxi Privado');
            PERFORM insert_category_translations('taxi-prive', 'it', 'Taxi Privato');

            -- Level 2: transport-marchandises
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('transport-marchandises', 'transport-marchandises', 2, l1_id, 'Transport Marchandises')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('transport-marchandises', 'fr', 'Transport Marchandises');
            PERFORM insert_category_translations('transport-marchandises', 'ar', 'نقل البضائع');
            PERFORM insert_category_translations('transport-marchandises', 'en', 'Goods Transport');
            PERFORM insert_category_translations('transport-marchandises', 'de', 'Gütertransport');
            PERFORM insert_category_translations('transport-marchandises', 'es', 'Transporte de Mercancías');
            PERFORM insert_category_translations('transport-marchandises', 'it', 'Trasporto Merci');

            -- Level 2: demenagement-rapide
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('demenagement-rapide', 'demenagement-rapide', 2, l1_id, 'Déménagement Rapide')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('demenagement-rapide', 'fr', 'Déménagement Rapide');
            PERFORM insert_category_translations('demenagement-rapide', 'ar', 'ترحيل سريع');
            PERFORM insert_category_translations('demenagement-rapide', 'en', 'Quick Moving');
            PERFORM insert_category_translations('demenagement-rapide', 'de', 'Schneller Umzug');
            PERFORM insert_category_translations('demenagement-rapide', 'es', 'Mudanza Rápida');
            PERFORM insert_category_translations('demenagement-rapide', 'it', 'Trasloco Rapido');

            -- Level 2: courses-express
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('courses-express', 'courses-express', 2, l1_id, 'Courses Express')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('courses-express', 'fr', 'Courses Express');
            PERFORM insert_category_translations('courses-express', 'ar', 'مشاوير سريعة');
            PERFORM insert_category_translations('courses-express', 'en', 'Express Errands');
            PERFORM insert_category_translations('courses-express', 'de', 'Expressfahrten');
            PERFORM insert_category_translations('courses-express', 'es', 'Envíos Exprés');
            PERFORM insert_category_translations('courses-express', 'it', 'Commissioni Veloci');

            -- Level 2: location-utilitaire
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('location-utilitaire', 'location-utilitaire', 2, l1_id, 'Location Utilitaire')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('location-utilitaire', 'fr', 'Location Utilitaire');
            PERFORM insert_category_translations('location-utilitaire', 'ar', 'تأجير شاحنات');
            PERFORM insert_category_translations('location-utilitaire', 'en', 'Utility Rental');
            PERFORM insert_category_translations('location-utilitaire', 'de', 'Nutzfahrzeugvermietung');
            PERFORM insert_category_translations('location-utilitaire', 'es', 'Alquiler de Vehículos Utilitarios');
            PERFORM insert_category_translations('location-utilitaire', 'it', 'Noleggio Furgoni');

        -- Level 1: services-administratifs
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('services-administratifs', 'services-administratifs', 1, root_id, 'Services Administratifs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('services-administratifs', 'fr', 'Services Administratifs');
        PERFORM insert_category_translations('services-administratifs', 'ar', 'خدمات إدارية');
        PERFORM insert_category_translations('services-administratifs', 'en', 'Administrative Services');
        PERFORM insert_category_translations('services-administratifs', 'de', 'Verwaltungsdienste');
        PERFORM insert_category_translations('services-administratifs', 'es', 'Servicios Administrativos');
        PERFORM insert_category_translations('services-administratifs', 'it', 'Servizi Amministrativi');

            -- Level 2: redaction-documents
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('redaction-documents', 'redaction-documents', 2, l1_id, 'Rédaction Documents')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('redaction-documents', 'fr', 'Rédaction Documents');
            PERFORM insert_category_translations('redaction-documents', 'ar', 'كتابة الوثائق');
            PERFORM insert_category_translations('redaction-documents', 'en', 'Document Writing');
            PERFORM insert_category_translations('redaction-documents', 'de', 'Dokumentenerstellung');
            PERFORM insert_category_translations('redaction-documents', 'es', 'Redacción de Documentos');
            PERFORM insert_category_translations('redaction-documents', 'it', 'Redazione Documenti');

            -- Level 2: traduction-pro
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('traduction-pro', 'traduction-pro', 2, l1_id, 'Traduction Pro')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('traduction-pro', 'fr', 'Traduction Pro');
            PERFORM insert_category_translations('traduction-pro', 'ar', 'ترجمة احترافية');
            PERFORM insert_category_translations('traduction-pro', 'en', 'Pro Translation');
            PERFORM insert_category_translations('traduction-pro', 'de', 'Professionelle Übersetzung');
            PERFORM insert_category_translations('traduction-pro', 'es', 'Traducción Profesional');
            PERFORM insert_category_translations('traduction-pro', 'it', 'Traduzione Professionale');

            -- Level 2: impression-pro
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('impression-pro', 'impression-pro', 2, l1_id, 'Impression Pro')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('impression-pro', 'fr', 'Impression Pro');
            PERFORM insert_category_translations('impression-pro', 'ar', 'طباعة احترافية');
            PERFORM insert_category_translations('impression-pro', 'en', 'Pro Printing');
            PERFORM insert_category_translations('impression-pro', 'de', 'Professioneller Druck');
            PERFORM insert_category_translations('impression-pro', 'es', 'Impresión Profesional');
            PERFORM insert_category_translations('impression-pro', 'it', 'Stampa Professionale');

            -- Level 2: numerisation-documents
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('numerisation-documents', 'numerisation-documents', 2, l1_id, 'Numérisation Documents')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('numerisation-documents', 'fr', 'Numérisation Documents');
            PERFORM insert_category_translations('numerisation-documents', 'ar', 'رقمنة الوثائق');
            PERFORM insert_category_translations('numerisation-documents', 'en', 'Document Digitization');
            PERFORM insert_category_translations('numerisation-documents', 'de', 'Dokumentendigitalisierung');
            PERFORM insert_category_translations('numerisation-documents', 'es', 'Digitalización de Documentos');
            PERFORM insert_category_translations('numerisation-documents', 'it', 'Digitalizzazione Documenti');

            -- Level 2: assistance-dossiers
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('assistance-dossiers', 'assistance-dossiers', 2, l1_id, 'Assistance Dossiers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('assistance-dossiers', 'fr', 'Assistance Dossiers');
            PERFORM insert_category_translations('assistance-dossiers', 'ar', 'مساعدة في الملفات');
            PERFORM insert_category_translations('assistance-dossiers', 'en', 'File Assistance');
            PERFORM insert_category_translations('assistance-dossiers', 'de', 'Aktenhilfe');
            PERFORM insert_category_translations('assistance-dossiers', 'es', 'Asistencia en Expedientes');
            PERFORM insert_category_translations('assistance-dossiers', 'it', 'Assistenza Pratiche');

            -- Level 2: creation-cv
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('creation-cv', 'creation-cv', 2, l1_id, 'Création CV')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('creation-cv', 'fr', 'Création CV');
            PERFORM insert_category_translations('creation-cv', 'ar', 'إنشاء سيرة ذاتية');
            PERFORM insert_category_translations('creation-cv', 'en', 'CV Creation');
            PERFORM insert_category_translations('creation-cv', 'de', 'Lebenslauferstellung');
            PERFORM insert_category_translations('creation-cv', 'es', 'Creación de CV');
            PERFORM insert_category_translations('creation-cv', 'it', 'Creazione CV');

        -- Level 1: support-business
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('support-business', 'support-business', 1, root_id, 'Support Business')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('support-business', 'fr', 'Support Business');
        PERFORM insert_category_translations('support-business', 'ar', 'دعم الأعمال');
        PERFORM insert_category_translations('support-business', 'en', 'Business Support');
        PERFORM insert_category_translations('support-business', 'de', 'Unternehmensunterstützung');
        PERFORM insert_category_translations('support-business', 'es', 'Soporte Empresarial');
        PERFORM insert_category_translations('support-business', 'it', 'Supporto Aziendale');

            -- Level 2: gestion-clients
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gestion-clients', 'gestion-clients', 2, l1_id, 'Gestion Clients')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gestion-clients', 'fr', 'Gestion Clients');
            PERFORM insert_category_translations('gestion-clients', 'ar', 'إدارة العملاء');
            PERFORM insert_category_translations('gestion-clients', 'en', 'Customer Management');
            PERFORM insert_category_translations('gestion-clients', 'de', 'Kundenmanagement');
            PERFORM insert_category_translations('gestion-clients', 'es', 'Gestión de Clientes');
            PERFORM insert_category_translations('gestion-clients', 'it', 'Gestione Clienti');

            -- Level 2: assistance-commerciale
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('assistance-commerciale', 'assistance-commerciale', 2, l1_id, 'Assistance Commerciale')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('assistance-commerciale', 'fr', 'Assistance Commerciale');
            PERFORM insert_category_translations('assistance-commerciale', 'ar', 'مساعدة تجارية');
            PERFORM insert_category_translations('assistance-commerciale', 'en', 'Commercial Assistance');
            PERFORM insert_category_translations('assistance-commerciale', 'de', 'Vertriebsunterstützung');
            PERFORM insert_category_translations('assistance-commerciale', 'es', 'Asistencia Comercial');
            PERFORM insert_category_translations('assistance-commerciale', 'it', 'Assistenza Commerciale');

            -- Level 2: creation-devis
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('creation-devis', 'creation-devis', 2, l1_id, 'Création Devis')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('creation-devis', 'fr', 'Création Devis');
            PERFORM insert_category_translations('creation-devis', 'ar', 'إنشاء فواتير');
            PERFORM insert_category_translations('creation-devis', 'en', 'Quote Creation');
            PERFORM insert_category_translations('creation-devis', 'de', 'Angebotserstellung');
            PERFORM insert_category_translations('creation-devis', 'es', 'Creación de Presupuestos');
            PERFORM insert_category_translations('creation-devis', 'it', 'Creazione Preventivi');

            -- Level 2: service-comptable
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('service-comptable', 'service-comptable', 2, l1_id, 'Service Comptable')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('service-comptable', 'fr', 'Service Comptable');
            PERFORM insert_category_translations('service-comptable', 'ar', 'خدمات محاسبة');
            PERFORM insert_category_translations('service-comptable', 'en', 'Accounting Service');
            PERFORM insert_category_translations('service-comptable', 'de', 'Buchhaltungsservice');
            PERFORM insert_category_translations('service-comptable', 'es', 'Servicio Contable');
            PERFORM insert_category_translations('service-comptable', 'it', 'Servizio Contabilità');

            -- Level 2: conseils-gestion
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('conseils-gestion', 'conseils-gestion', 2, l1_id, 'Conseils Gestion')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('conseils-gestion', 'fr', 'Conseils Gestion');
            PERFORM insert_category_translations('conseils-gestion', 'ar', 'استشارات إدارية');
            PERFORM insert_category_translations('conseils-gestion', 'en', 'Management Advice');
            PERFORM insert_category_translations('conseils-gestion', 'de', 'Managementberatung');
            PERFORM insert_category_translations('conseils-gestion', 'es', 'Asesoramiento de Gestión');
            PERFORM insert_category_translations('conseils-gestion', 'it', 'Consulenza Gestionale');

            -- Level 2: audits-internes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('audits-internes', 'audits-internes', 2, l1_id, 'Audits Internes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('audits-internes', 'fr', 'Audits Internes');
            PERFORM insert_category_translations('audits-internes', 'ar', 'تدقيق داخلي');
            PERFORM insert_category_translations('audits-internes', 'en', 'Internal Audits');
            PERFORM insert_category_translations('audits-internes', 'de', 'Interne Audits');
            PERFORM insert_category_translations('audits-internes', 'es', 'Auditorías Internas');
            PERFORM insert_category_translations('audits-internes', 'it', 'Audit Interni');

            -- Level 2: support-marketing
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('support-marketing', 'support-marketing', 2, l1_id, 'Support Marketing')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('support-marketing', 'fr', 'Support Marketing');
            PERFORM insert_category_translations('support-marketing', 'ar', 'دعم تسويقي');
            PERFORM insert_category_translations('support-marketing', 'en', 'Marketing Support');
            PERFORM insert_category_translations('support-marketing', 'de', 'Marketingunterstützung');
            PERFORM insert_category_translations('support-marketing', 'es', 'Soporte de Marketing');
            PERFORM insert_category_translations('support-marketing', 'it', 'Supporto Marketing');

        -- Level 1: services-formation
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('services-formation', 'services-formation', 1, root_id, 'Services Formation')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('services-formation', 'fr', 'Services Formation');
        PERFORM insert_category_translations('services-formation', 'ar', 'خدمات التدريب');
        PERFORM insert_category_translations('services-formation', 'en', 'Training Services');
        PERFORM insert_category_translations('services-formation', 'de', 'Bildungsdienste');
        PERFORM insert_category_translations('services-formation', 'es', 'Servicios de Formación');
        PERFORM insert_category_translations('services-formation', 'it', 'Servizi Formazione');

            -- Level 2: cours-particuliers
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('cours-particuliers', 'cours-particuliers', 2, l1_id, 'Cours Particuliers')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('cours-particuliers', 'fr', 'Cours Particuliers');
            PERFORM insert_category_translations('cours-particuliers', 'ar', 'دروس خصوصية');
            PERFORM insert_category_translations('cours-particuliers', 'en', 'Private Lessons');
            PERFORM insert_category_translations('cours-particuliers', 'de', 'Privatunterricht');
            PERFORM insert_category_translations('cours-particuliers', 'es', 'Clases Particulares');
            PERFORM insert_category_translations('cours-particuliers', 'it', 'Lezioni Private');

            -- Level 2: formation-pro
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('formation-pro', 'formation-pro', 2, l1_id, 'Formation Pro')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('formation-pro', 'fr', 'Formation Pro');
            PERFORM insert_category_translations('formation-pro', 'ar', 'تدريب مهني');
            PERFORM insert_category_translations('formation-pro', 'en', 'Pro Training');
            PERFORM insert_category_translations('formation-pro', 'de', 'Berufsausbildung');
            PERFORM insert_category_translations('formation-pro', 'es', 'Formación Profesional');
            PERFORM insert_category_translations('formation-pro', 'it', 'Formazione Professionale');

            -- Level 2: soutien-scolaire
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soutien-scolaire', 'soutien-scolaire', 2, l1_id, 'Soutien Scolaire')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('soutien-scolaire', 'fr', 'Soutien Scolaire');
            PERFORM insert_category_translations('soutien-scolaire', 'ar', 'دعم مدرسي');
            PERFORM insert_category_translations('soutien-scolaire', 'en', 'School Support');
            PERFORM insert_category_translations('soutien-scolaire', 'de', 'Nachhilfe');
            PERFORM insert_category_translations('soutien-scolaire', 'es', 'Apoyo Escolar');
            PERFORM insert_category_translations('soutien-scolaire', 'it', 'Ripetizioni Scolastiche');

            -- Level 2: ateliers-pratiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('ateliers-pratiques', 'ateliers-pratiques', 2, l1_id, 'Ateliers Pratiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('ateliers-pratiques', 'fr', 'Ateliers Pratiques');
            PERFORM insert_category_translations('ateliers-pratiques', 'ar', 'ورش عمل تطبيقية');
            PERFORM insert_category_translations('ateliers-pratiques', 'en', 'Practical Workshops');
            PERFORM insert_category_translations('ateliers-pratiques', 'de', 'Praktische Workshops');
            PERFORM insert_category_translations('ateliers-pratiques', 'es', 'Talleres Prácticos');
            PERFORM insert_category_translations('ateliers-pratiques', 'it', 'Workshop Pratici');

            -- Level 2: coaching-personnel
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('coaching-personnel', 'coaching-personnel', 2, l1_id, 'Coaching Personnel')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('coaching-personnel', 'fr', 'Coaching Personnel');
            PERFORM insert_category_translations('coaching-personnel', 'ar', 'تدريب شخصي');
            PERFORM insert_category_translations('coaching-personnel', 'en', 'Personal Coaching');
            PERFORM insert_category_translations('coaching-personnel', 'de', 'Personal Coaching');
            PERFORM insert_category_translations('coaching-personnel', 'es', 'Coaching Personal');
            PERFORM insert_category_translations('coaching-personnel', 'it', 'Coaching Personale');

            -- Level 2: developpement-personnel
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('developpement-personnel', 'developpement-personnel', 2, l1_id, 'Développement Personnel')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('developpement-personnel', 'fr', 'Développement Personnel');
            PERFORM insert_category_translations('developpement-personnel', 'ar', 'تطوير الذات');
            PERFORM insert_category_translations('developpement-personnel', 'en', 'Personal Development');
            PERFORM insert_category_translations('developpement-personnel', 'de', 'Persönlichkeitsentwicklung');
            PERFORM insert_category_translations('developpement-personnel', 'es', 'Desarrollo Personal');
            PERFORM insert_category_translations('developpement-personnel', 'it', 'Sviluppo Personale');

        -- Level 1: services-evenementiels
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('services-evenementiels', 'services-evenementiels', 1, root_id, 'Services Événementiels')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('services-evenementiels', 'fr', 'Services Événementiels');
        PERFORM insert_category_translations('services-evenementiels', 'ar', 'خدمات المناسبات');
        PERFORM insert_category_translations('services-evenementiels', 'en', 'Event Services');
        PERFORM insert_category_translations('services-evenementiels', 'de', 'Event-Dienstleistungen');
        PERFORM insert_category_translations('services-evenementiels', 'es', 'Servicios de Eventos');
        PERFORM insert_category_translations('services-evenementiels', 'it', 'Servizi Eventi');

            -- Level 2: organisation-fetes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('organisation-fetes', 'organisation-fetes', 2, l1_id, 'Organisation Fêtes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('organisation-fetes', 'fr', 'Organisation Fêtes');
            PERFORM insert_category_translations('organisation-fetes', 'ar', 'تنظيم حفلات');
            PERFORM insert_category_translations('organisation-fetes', 'en', 'Party Organization');
            PERFORM insert_category_translations('organisation-fetes', 'de', 'Partyorganisation');
            PERFORM insert_category_translations('organisation-fetes', 'es', 'Organización de Fiestas');
            PERFORM insert_category_translations('organisation-fetes', 'it', 'Organizzazione Feste');

            -- Level 2: decoration-evenement
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('decoration-evenement', 'decoration-evenement', 2, l1_id, 'Décoration Événement')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('decoration-evenement', 'fr', 'Décoration Événement');
            PERFORM insert_category_translations('decoration-evenement', 'ar', 'زينة المناسبات');
            PERFORM insert_category_translations('decoration-evenement', 'en', 'Event Decoration');
            PERFORM insert_category_translations('decoration-evenement', 'de', 'Eventdekoration');
            PERFORM insert_category_translations('decoration-evenement', 'es', 'Decoración de Eventos');
            PERFORM insert_category_translations('decoration-evenement', 'it', 'Decorazione Eventi');

            -- Level 2: location-materiel
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('location-materiel', 'location-materiel', 2, l1_id, 'Location Matériel')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('location-materiel', 'fr', 'Location Matériel');
            PERFORM insert_category_translations('location-materiel', 'ar', 'تأجير معدات');
            PERFORM insert_category_translations('location-materiel', 'en', 'Equipment Rental');
            PERFORM insert_category_translations('location-materiel', 'de', 'Materialvermietung');
            PERFORM insert_category_translations('location-materiel', 'es', 'Alquiler de Material');
            PERFORM insert_category_translations('location-materiel', 'it', 'Noleggio Attrezzature');

            -- Level 2: animation-soiree
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('animation-soiree', 'animation-soiree', 2, l1_id, 'Animation Soirée')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('animation-soiree', 'fr', 'Animation Soirée');
            PERFORM insert_category_translations('animation-soiree', 'ar', 'تنشيط سهرات');
            PERFORM insert_category_translations('animation-soiree', 'en', 'Party Animation');
            PERFORM insert_category_translations('animation-soiree', 'de', 'Abendunterhaltung');
            PERFORM insert_category_translations('animation-soiree', 'es', 'Animación de Veladas');
            PERFORM insert_category_translations('animation-soiree', 'it', 'Animazione Serate');

            -- Level 2: gestion-invitations
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('gestion-invitations', 'gestion-invitations', 2, l1_id, 'Gestion Invitations')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('gestion-invitations', 'fr', 'Gestion Invitations');
            PERFORM insert_category_translations('gestion-invitations', 'ar', 'إدارة الدعوات');
            PERFORM insert_category_translations('gestion-invitations', 'en', 'Invitation Management');
            PERFORM insert_category_translations('gestion-invitations', 'de', 'Einladungsmanagement');
            PERFORM insert_category_translations('gestion-invitations', 'es', 'Gestión de Invitaciones');
            PERFORM insert_category_translations('gestion-invitations', 'it', 'Gestione Inviti');

        -- Level 1: services-sante-bienetre
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('services-sante-bienetre', 'services-sante-bienetre', 1, root_id, 'Services Santé & Bien-être')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('services-sante-bienetre', 'fr', 'Services Santé & Bien-être');
        PERFORM insert_category_translations('services-sante-bienetre', 'ar', 'خدمات الصحة والرفاهية');
        PERFORM insert_category_translations('services-sante-bienetre', 'en', 'Health & Wellness Services');
        PERFORM insert_category_translations('services-sante-bienetre', 'de', 'Gesundheits- & Wellnessdienste');
        PERFORM insert_category_translations('services-sante-bienetre', 'es', 'Servicios de Salud y Bienestar');
        PERFORM insert_category_translations('services-sante-bienetre', 'it', 'Servizi Salute e Benessere');

            -- Level 2: massage-bienetre
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('massage-bienetre', 'massage-bienetre', 2, l1_id, 'Massage Bien-être')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('massage-bienetre', 'fr', 'Massage Bien-être');
            PERFORM insert_category_translations('massage-bienetre', 'ar', 'تدليك واسترخاء');
            PERFORM insert_category_translations('massage-bienetre', 'en', 'Wellness Massage');
            PERFORM insert_category_translations('massage-bienetre', 'de', 'Wellness-Massage');
            PERFORM insert_category_translations('massage-bienetre', 'es', 'Masaje de Bienestar');
            PERFORM insert_category_translations('massage-bienetre', 'it', 'Massaggio Benessere');

            -- Level 2: soins-esthetiques
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soins-esthetiques', 'soins-esthetiques', 2, l1_id, 'Soins Esthétiques')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('soins-esthetiques', 'fr', 'Soins Esthétiques');
            PERFORM insert_category_translations('soins-esthetiques', 'ar', 'عناية تجميلية');
            PERFORM insert_category_translations('soins-esthetiques', 'en', 'Aesthetic Care');
            PERFORM insert_category_translations('soins-esthetiques', 'de', 'Ästhetische Pflege');
            PERFORM insert_category_translations('soins-esthetiques', 'es', 'Cuidados Estéticos');
            PERFORM insert_category_translations('soins-esthetiques', 'it', 'Trattamenti Estetici');

            -- Level 2: coaching-sportif
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('coaching-sportif', 'coaching-sportif', 2, l1_id, 'Coaching Sportif')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('coaching-sportif', 'fr', 'Coaching Sportif');
            PERFORM insert_category_translations('coaching-sportif', 'ar', 'تدريب رياضي');
            PERFORM insert_category_translations('coaching-sportif', 'en', 'Sports Coaching');
            PERFORM insert_category_translations('coaching-sportif', 'de', 'Sport-Coaching');
            PERFORM insert_category_translations('coaching-sportif', 'es', 'Coaching Deportivo');
            PERFORM insert_category_translations('coaching-sportif', 'it', 'Personal Trainer');

            -- Level 2: dietetique-personnalisee
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('dietetique-personnalisee', 'dietetique-personnalisee', 2, l1_id, 'Diététique Personnalisée')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('dietetique-personnalisee', 'fr', 'Diététique Personnalisée');
            PERFORM insert_category_translations('dietetique-personnalisee', 'ar', 'تغذية مخصصة');
            PERFORM insert_category_translations('dietetique-personnalisee', 'en', 'Personalized Dietetics');
            PERFORM insert_category_translations('dietetique-personnalisee', 'de', 'Personalisierte Diätetik');
            PERFORM insert_category_translations('dietetique-personnalisee', 'es', 'Dietética Personalizada');
            PERFORM insert_category_translations('dietetique-personnalisee', 'it', 'Dietetica Personalizzata');

            -- Level 2: suivi-bienetre
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('suivi-bienetre', 'suivi-bienetre', 2, l1_id, 'Suivi Bien-être')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('suivi-bienetre', 'fr', 'Suivi Bien-être');
            PERFORM insert_category_translations('suivi-bienetre', 'ar', 'متابعة صحية');
            PERFORM insert_category_translations('suivi-bienetre', 'en', 'Wellness Monitoring');
            PERFORM insert_category_translations('suivi-bienetre', 'de', 'Wellness-Überwachung');
            PERFORM insert_category_translations('suivi-bienetre', 'es', 'Seguimiento de Bienestar');
            PERFORM insert_category_translations('suivi-bienetre', 'it', 'Monitoraggio Benessere');

        -- Level 1: aide-personne
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('aide-personne', 'aide-personne', 1, root_id, 'Aide à la Personne')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('aide-personne', 'fr', 'Aide à la Personne');
        PERFORM insert_category_translations('aide-personne', 'ar', 'مساعدة شخصية');
        PERFORM insert_category_translations('aide-personne', 'en', 'Personal Assistance');
        PERFORM insert_category_translations('aide-personne', 'de', 'Personenbetreuung');
        PERFORM insert_category_translations('aide-personne', 'es', 'Ayuda a la Persona');
        PERFORM insert_category_translations('aide-personne', 'it', 'Assistenza alla Persona');

            -- Level 2: garde-enfants
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('garde-enfants', 'garde-enfants', 2, l1_id, 'Garde Enfants')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('garde-enfants', 'fr', 'Garde Enfants');
            PERFORM insert_category_translations('garde-enfants', 'ar', 'رعاية الأطفال');
            PERFORM insert_category_translations('garde-enfants', 'en', 'Childcare');
            PERFORM insert_category_translations('garde-enfants', 'de', 'Kinderbetreuung');
            PERFORM insert_category_translations('garde-enfants', 'es', 'Cuidado de Niños');
            PERFORM insert_category_translations('garde-enfants', 'it', 'Baby Sitter');

            -- Level 2: assistance-personnes
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('assistance-personnes', 'assistance-personnes', 2, l1_id, 'Assistance Personnes')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('assistance-personnes', 'fr', 'Assistance Personnes');
            PERFORM insert_category_translations('assistance-personnes', 'ar', 'مساعدة الأشخاص');
            PERFORM insert_category_translations('assistance-personnes', 'en', 'Person Assistance');
            PERFORM insert_category_translations('assistance-personnes', 'de', 'Personenassistenz');
            PERFORM insert_category_translations('assistance-personnes', 'es', 'Asistencia a Personas');
            PERFORM insert_category_translations('assistance-personnes', 'it', 'Assistenza Persone');

            -- Level 2: aide-domicile
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('aide-domicile', 'aide-domicile', 2, l1_id, 'Aide Domicile')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('aide-domicile', 'fr', 'Aide Domicile');
            PERFORM insert_category_translations('aide-domicile', 'ar', 'مساعدة منزلية');
            PERFORM insert_category_translations('aide-domicile', 'en', 'Home Help');
            PERFORM insert_category_translations('aide-domicile', 'de', 'Haushaltshilfe');
            PERFORM insert_category_translations('aide-domicile', 'es', 'Ayuda a Domicilio');
            PERFORM insert_category_translations('aide-domicile', 'it', 'Aiuto Domestico');

            -- Level 2: accompagnement-senior
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('accompagnement-senior', 'accompagnement-senior', 2, l1_id, 'Accompagnement Senior')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('accompagnement-senior', 'fr', 'Accompagnement Senior');
            PERFORM insert_category_translations('accompagnement-senior', 'ar', 'مرافقة كبار السن');
            PERFORM insert_category_translations('accompagnement-senior', 'en', 'Senior Accompaniment');
            PERFORM insert_category_translations('accompagnement-senior', 'de', 'Seniorenbegleitung');
            PERFORM insert_category_translations('accompagnement-senior', 'es', 'Acompañamiento a Mayores');
            PERFORM insert_category_translations('accompagnement-senior', 'it', 'Accompagnamento Anziani');

            -- Level 2: soutien-mobilite
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('soutien-mobilite', 'soutien-mobilite', 2, l1_id, 'Soutien Mobilité')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('soutien-mobilite', 'fr', 'Soutien Mobilité');
            PERFORM insert_category_translations('soutien-mobilite', 'ar', 'دعم التنقل');
            PERFORM insert_category_translations('soutien-mobilite', 'en', 'Mobility Support');
            PERFORM insert_category_translations('soutien-mobilite', 'de', 'Mobilitätsunterstützung');
            PERFORM insert_category_translations('soutien-mobilite', 'es', 'Apoyo a la Movilidad');
            PERFORM insert_category_translations('soutien-mobilite', 'it', 'Supporto Mobilità');

        -- Level 1: services-automobiles
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('services-automobiles', 'services-automobiles', 1, root_id, 'Services Automobiles')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('services-automobiles', 'fr', 'Services Automobiles');
        PERFORM insert_category_translations('services-automobiles', 'ar', 'خدمات السيارات');
        PERFORM insert_category_translations('services-automobiles', 'en', 'Automotive Services');
        PERFORM insert_category_translations('services-automobiles', 'de', 'Kfz-Dienstleistungen');
        PERFORM insert_category_translations('services-automobiles', 'es', 'Servicios de Automoción');
        PERFORM insert_category_translations('services-automobiles', 'it', 'Servizi Automobilistici');

            -- Level 2: lavage-auto
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('lavage-auto', 'lavage-auto', 2, l1_id, 'Lavage Auto')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('lavage-auto', 'fr', 'Lavage Auto');
            PERFORM insert_category_translations('lavage-auto', 'ar', 'غسيل سيارات');
            PERFORM insert_category_translations('lavage-auto', 'en', 'Car Wash');
            PERFORM insert_category_translations('lavage-auto', 'de', 'Autowäsche');
            PERFORM insert_category_translations('lavage-auto', 'es', 'Lavado de Coches');
            PERFORM insert_category_translations('lavage-auto', 'it', 'Lavaggio Auto');

            -- Level 2: vidange-rapide
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('vidange-rapide', 'vidange-rapide', 2, l1_id, 'Vidange Rapide')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('vidange-rapide', 'fr', 'Vidange Rapide');
            PERFORM insert_category_translations('vidange-rapide', 'ar', 'تغيير زيت سريع');
            PERFORM insert_category_translations('vidange-rapide', 'en', 'Quick Oil Change');
            PERFORM insert_category_translations('vidange-rapide', 'de', 'Schneller Ölwechsel');
            PERFORM insert_category_translations('vidange-rapide', 'es', 'Cambio de Aceite Rápido');
            PERFORM insert_category_translations('vidange-rapide', 'it', 'Cambio Olio Rapido');

            -- Level 2: diagnostic-auto
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('diagnostic-auto', 'diagnostic-auto', 2, l1_id, 'Diagnostic Auto')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('diagnostic-auto', 'fr', 'Diagnostic Auto');
            PERFORM insert_category_translations('diagnostic-auto', 'ar', 'فحص السيارات');
            PERFORM insert_category_translations('diagnostic-auto', 'en', 'Car Diagnosis');
            PERFORM insert_category_translations('diagnostic-auto', 'de', 'Fahrzeugdiagnose');
            PERFORM insert_category_translations('diagnostic-auto', 'es', 'Diagnóstico de Automóvil');
            PERFORM insert_category_translations('diagnostic-auto', 'it', 'Diagnosi Auto');

            -- Level 2: assistance-route
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('assistance-route', 'assistance-route', 2, l1_id, 'Assistance Route')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('assistance-route', 'fr', 'Assistance Route');
            PERFORM insert_category_translations('assistance-route', 'ar', 'مساعدة على الطريق');
            PERFORM insert_category_translations('assistance-route', 'en', 'Roadside Assistance');
            PERFORM insert_category_translations('assistance-route', 'de', 'Pannenhilfe');
            PERFORM insert_category_translations('assistance-route', 'es', 'Asistencia en Carretera');
            PERFORM insert_category_translations('assistance-route', 'it', 'Soccorso Stradale');

            -- Level 2: entretien-moteur
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('entretien-moteur', 'entretien-moteur', 2, l1_id, 'Entretien Moteur')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('entretien-moteur', 'fr', 'Entretien Moteur');
            PERFORM insert_category_translations('entretien-moteur', 'ar', 'صيانة المحرك');
            PERFORM insert_category_translations('entretien-moteur', 'en', 'Engine Maintenance');
            PERFORM insert_category_translations('entretien-moteur', 'de', 'Motorwartung');
            PERFORM insert_category_translations('entretien-moteur', 'es', 'Mantenimiento del Motor');
            PERFORM insert_category_translations('entretien-moteur', 'it', 'Manutenzione Motore');

            -- Level 2: reparation-pneus
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('reparation-pneus', 'reparation-pneus', 2, l1_id, 'Réparation Pneus')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('reparation-pneus', 'fr', 'Réparation Pneus');
            PERFORM insert_category_translations('reparation-pneus', 'ar', 'إصلاح الإطارات');
            PERFORM insert_category_translations('reparation-pneus', 'en', 'Tire Repair');
            PERFORM insert_category_translations('reparation-pneus', 'de', 'Reifenreparatur');
            PERFORM insert_category_translations('reparation-pneus', 'es', 'Reparación de Neumáticos');
            PERFORM insert_category_translations('reparation-pneus', 'it', 'Riparazione Pneumatici');

        -- Level 1: services-creatifs
        INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('services-creatifs', 'services-creatifs', 1, root_id, 'Services Créatifs')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 1, parent_id = root_id, name = EXCLUDED.name
        RETURNING id INTO l1_id;
        PERFORM insert_category_translations('services-creatifs', 'fr', 'Services Créatifs');
        PERFORM insert_category_translations('services-creatifs', 'ar', 'خدمات إبداعية');
        PERFORM insert_category_translations('services-creatifs', 'en', 'Creative Services');
        PERFORM insert_category_translations('services-creatifs', 'de', 'Kreative Dienstleistungen');
        PERFORM insert_category_translations('services-creatifs', 'es', 'Servicios Creativos');
        PERFORM insert_category_translations('services-creatifs', 'it', 'Servizi Creativi');

            -- Level 2: design-graphique
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('design-graphique', 'design-graphique', 2, l1_id, 'Design Graphique')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('design-graphique', 'fr', 'Design Graphique');
            PERFORM insert_category_translations('design-graphique', 'ar', 'تصميم جرافيك');
            PERFORM insert_category_translations('design-graphique', 'en', 'Graphic Design');
            PERFORM insert_category_translations('design-graphique', 'de', 'Grafikdesign');
            PERFORM insert_category_translations('design-graphique', 'es', 'Diseño Gráfico');
            PERFORM insert_category_translations('design-graphique', 'it', 'Graphic Design');

            -- Level 2: creation-logo
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('creation-logo', 'creation-logo', 2, l1_id, 'Création Logo')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('creation-logo', 'fr', 'Création Logo');
            PERFORM insert_category_translations('creation-logo', 'ar', 'تصميم شعار');
            PERFORM insert_category_translations('creation-logo', 'en', 'Logo Creation');
            PERFORM insert_category_translations('creation-logo', 'de', 'Logoerstellung');
            PERFORM insert_category_translations('creation-logo', 'es', 'Creación de Logotipo');
            PERFORM insert_category_translations('creation-logo', 'it', 'Creazione Logo');

            -- Level 2: montage-video
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('montage-video', 'montage-video', 2, l1_id, 'Montage Vidéo')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('montage-video', 'fr', 'Montage Vidéo');
            PERFORM insert_category_translations('montage-video', 'ar', 'مونتاج فيديو');
            PERFORM insert_category_translations('montage-video', 'en', 'Video Editing');
            PERFORM insert_category_translations('montage-video', 'de', 'Videoschnitt');
            PERFORM insert_category_translations('montage-video', 'es', 'Edición de Video');
            PERFORM insert_category_translations('montage-video', 'it', 'Montaggio Video');

            -- Level 2: retouche-photo
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('retouche-photo', 'retouche-photo', 2, l1_id, 'Retouche Photo')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('retouche-photo', 'fr', 'Retouche Photo');
            PERFORM insert_category_translations('retouche-photo', 'ar', 'تعديل صور');
            PERFORM insert_category_translations('retouche-photo', 'en', 'Photo Retouching');
            PERFORM insert_category_translations('retouche-photo', 'de', 'Fotoretusche');
            PERFORM insert_category_translations('retouche-photo', 'es', 'Retoque Fotográfico');
            PERFORM insert_category_translations('retouche-photo', 'it', 'Fotoritocco');

            -- Level 2: creation-contenu
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('creation-contenu', 'creation-contenu', 2, l1_id, 'Création Contenu')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('creation-contenu', 'fr', 'Création Contenu');
            PERFORM insert_category_translations('creation-contenu', 'ar', 'إنشاء محتوى');
            PERFORM insert_category_translations('creation-contenu', 'en', 'Content Creation');
            PERFORM insert_category_translations('creation-contenu', 'de', 'Content-Erstellung');
            PERFORM insert_category_translations('creation-contenu', 'es', 'Creación de Contenido');
            PERFORM insert_category_translations('creation-contenu', 'it', 'Creazione Contenuti');

            -- Level 2: impression-3d
            INSERT INTO categories (id, slug, level, parent_id, name)
    VALUES ('impression-3d', 'impression-3d', 2, l1_id, 'Impression 3D')
    ON CONFLICT (slug) DO UPDATE SET id = EXCLUDED.id, level = 2, parent_id = l1_id, name = EXCLUDED.name
            RETURNING id INTO l2_id;
            PERFORM insert_category_translations('impression-3d', 'fr', 'Impression 3D');
            PERFORM insert_category_translations('impression-3d', 'ar', 'طباعة ثلاثية الأبعاد');
            PERFORM insert_category_translations('impression-3d', 'en', '3D Printing');
            PERFORM insert_category_translations('impression-3d', 'de', '3D-Druck');
            PERFORM insert_category_translations('impression-3d', 'es', 'Impresión 3D');
            PERFORM insert_category_translations('impression-3d', 'it', 'Stampa 3D');
END $$;