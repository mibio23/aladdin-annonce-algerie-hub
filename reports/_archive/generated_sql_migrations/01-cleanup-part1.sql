-- SCRIPT DE NETTOYAGE PARTIE 1 (Basé sur votre analyse)

BEGIN;

-- 1. Supprimer les doublons CamelCase (qui sont vides et ont été créés par erreur)
-- Ces catégories n'ont pas d'enfants (0 enfants_directs) et sont des doublons des versions avec tirets.
DELETE FROM categories WHERE slug IN (
    'agricultureAgroalimentaire',
    'animauxAccessoires',
    'artisanatTraditionnelAlgerien',
    'bebePuericulture',
    'btpEnginsConstruction',
    'echangesPartage',
    'educationLoisirs',
    'emploiCarriere',
    'evenementsBilletterie',
    'gastronomieAlimentation',
    'imageSonEquipementMusique'
);

-- 2. Supprimer les catégories "fantômes" vides (0 enfants) issues probablement de mauvaises traductions
-- Elles n'ont pas de traduction FR/AR et 0 enfants.
DELETE FROM categories WHERE slug IN (
    'algeria-telecom',
    'computer-elektronik',
    'divers-finance',
    'equipement-pature',
    'immobili-casa-affitto-immobili-appartamenti-affitto-it',
    'immobili-casa-affitto-immobili-camere-affitto-it',
    'immobili-casa-affitto-immobili-case-affitto-it',
    'immobili-casa-affitto-immobili-condivisione-appartamento-it',
    'immobili-casa-affitto-immobili-monolocali-affitto-it',
    'immobili-casa-vendita-immobili-appartamenti-vendita-it',
    'immobili-casa-vendita-immobili-case-vendita-it',
    'immobili-casa-vendita-immobili-proprieta-commerciali-vendita-it',
    'immobili-casa-vendita-immobili-terreni-vendita-it',
    'immobili-casa-vendita-immobili-uffici-vendita-it'
);

COMMIT;

-- 3. Vérification des catégories suspectes AVEC enfants (Ne pas supprimer tout de suite)
-- Nous devons voir ce qu'il y a dedans avant de décider.
SELECT id, slug, name, level, (SELECT count(*) FROM categories c2 WHERE c2.parent_id = c.id) as enfants 
FROM categories c
WHERE slug IN (
    'computers-electronics',
    'finanza',
    'finanzas',
    'finanzen',
    'immobili-casa-affitto-immobili-it',
    'immobili-casa-it',
    'immobili-casa-vendita-immobili-it'
);
