-- Script de vérification de la migration

-- 1. Compter le nombre total de catégories
SELECT 'Total Catégories' as verif, count(*) as nombre FROM categories;

-- 2. Compter le nombre total de traductions
SELECT 'Total Traductions' as verif, count(*) as nombre FROM category_translations;

-- 3. Vérifier le nombre de catégories racines (niveau 0) - devrait être autour de 29
SELECT 'Catégories Racines' as verif, count(*) as nombre FROM categories WHERE level = 0;

-- 4. Vérifier s'il y a des catégories orphelines (parent qui n'existe pas) - devrait être 0
SELECT 'Orphelins (Erreur)' as verif, count(*) as nombre 
FROM categories 
WHERE parent_id IS NOT NULL 
AND parent_id NOT IN (SELECT id FROM categories);

-- 5. Lister les 29 catégories principales pour confirmer qu'elles sont toutes là
SELECT id, slug, level FROM categories WHERE level = 0 ORDER BY id;

-- 6. Vérifier un exemple complet (Agriculture) avec ses traductions
SELECT 
    c.id, 
    c.slug, 
    count(ct.language_code) as nb_traductions 
FROM categories c 
LEFT JOIN category_translations ct ON c.id = ct.category_id 
WHERE c.id = 'agriculture-agroalimentaire'
GROUP BY c.id, c.slug;
