-- SCRIPT DE NETTOYAGE GÉNÉRAL COMPLET ET RÉCURSIF
-- Supprime toutes les catégories invalides et leurs descendants de manière sûre

BEGIN;

WITH RECURSIVE categories_to_delete AS (
    -- 1. CAS DE BASE : Les catégories explicitement invalides (Racines du mal)
    SELECT id, slug
    FROM categories
    WHERE 
        -- A. Doublons CamelCase connus (Explicite pour sécurité)
        slug IN (
            'agricultureAgroalimentaire', 'animauxAccessoires', 'artisanatTraditionnelAlgerien',
            'bebePuericulture', 'btpEnginsConstruction', 'echangesPartage', 'educationLoisirs',
            'emploiCarriere', 'evenementsBilletterie', 'gastronomieAlimentation',
            'imageSonEquipementMusique', 'immobilierMaison', 'informatiqueElectronique',
            'jeuxVideoConsoles', 'mobilierEtDecoration', 'modeEtAccessoires',
            'parapharmacieProduitChimique', 'quincaillerieGenerale', 'sacsEtBagages',
            'santeBeaute', 'servicesSupport', 'vehiculesEquipements', 'veloCyclismeEquipements',
            'vetementHommeFemmeSousVetement', 'voyagesTourisme'
        )
        OR
        -- B. Patterns de langues étrangères et fantômes (Anglais, Allemand, Espagnol, Italien, etc.)
        slug LIKE 'immobili-casa-%' OR
        slug LIKE 'immobilien-wohnen-%' OR
        slug LIKE 'immobilier-maison-%-fr' OR
        slug LIKE 'inmobiliaria-vivienda-%' OR
        slug LIKE 'algeria-telecom%' OR
        slug LIKE 'computer-elektronik%' OR
        slug LIKE 'informatica-electronica%' OR
        slug LIKE 'instrumentos-veterinarios%' OR
        slug LIKE 'lager-services%' OR
        slug LIKE 'misc-finan%' OR
        slug LIKE 'parafarmacia-%' OR
        slug LIKE 'parapharmacy-%' OR
        slug LIKE 'parapharmazie-%' OR
        slug LIKE 'divers-finance%' OR
        slug LIKE 'equipement-pature%' OR
        slug LIKE 'real-estate-housing-%' OR
        slug LIKE 'services-stockage' OR
        slug LIKE 'servicios-almacenamiento' OR
        slug LIKE 'servizi-immagazzinamento' OR
        slug LIKE 'sonstige-finanzen' OR
        slug LIKE 'storage-services' OR
        slug LIKE 'strumenti-veterinari' OR
        slug LIKE 'telecommunications-%' OR
        slug LIKE 'telecomunicaciones-%' OR
        slug LIKE 'telecomunicazioni-%' OR
        slug LIKE 'telekommunikation-%' OR
        slug LIKE 'telefonia' OR
        slug LIKE 'telefonie' OR
        slug LIKE 'telephonie-%-fr' OR
        slug LIKE 'telephonie-fr' OR
        slug LIKE 'telephony' OR
        slug LIKE 'tieraerztliche-instrumente' OR
        slug LIKE 'varie-finanze' OR
        slug LIKE 'veterinary-instruments' OR
        slug LIKE 'computers-electronics%' OR
        slug LIKE 'finanza%' OR
        slug LIKE 'finanzen%' OR
        slug LIKE 'finanzas%' OR
        slug = 'immobilier-maison-fr' OR
        slug = 'telekommunikation'
        OR
        -- C. Slugs invalides (Non-ASCII, majuscules, espaces, underscore, etc.)
        -- Un slug valide ne doit contenir que a-z, 0-9 et -
        -- Cela capture aussi les CamelCase non listés et les caractères arabes/chinois
        slug ~ '[^a-z0-9-]'

    UNION
    
    -- 2. ÉTAPE RÉCURSIVE : Les enfants de ces catégories
    -- Si une catégorie est marquée pour suppression, tous ses enfants le sont aussi
    SELECT c.id, c.slug
    FROM categories c
    INNER JOIN categories_to_delete cd ON c.parent_id = cd.id
)
-- Suppression finale de toutes les catégories identifiées
DELETE FROM categories
WHERE id IN (SELECT id FROM categories_to_delete);

COMMIT;

-- VÉRIFICATION FINALE APRÈS NETTOYAGE
SELECT 
    'RESUME' as info,
    (SELECT COUNT(*) FROM categories) as total_restant,
    (SELECT COUNT(*) FROM categories WHERE level = 0) as racines_restantes;

SELECT slug, name FROM categories WHERE level = 0 ORDER BY slug;
