-- VÉRIFICATION COMPLÈTE ET DÉTAILLÉE DE LA MIGRATION

-- 1. STATISTIQUES GLOBALES
SELECT 
    'GLOBAL STATS' as type,
    (SELECT COUNT(*) FROM categories) as total_categories,
    (SELECT COUNT(*) FROM category_translations) as total_translations,
    (SELECT COUNT(*) FROM categories WHERE parent_id IS NULL OR level = 0) as total_root_categories,
    (SELECT MAX(level) FROM categories) as max_depth;

-- 2. DISTRIBUTION PAR NIVEAU (Combien de catégories par profondeur)
SELECT 
    level as niveau_profondeur, 
    COUNT(*) as nombre_categories 
FROM categories 
GROUP BY level 
ORDER BY level;

-- 3. VÉRIFICATION DE L'INTÉGRITÉ (TOUT DOIT ÊTRE À 0)
SELECT 
    'INTEGRITY CHECKS' as check_type,
    (SELECT COUNT(*) FROM categories WHERE parent_id IS NOT NULL AND parent_id NOT IN (SELECT id FROM categories)) as orphelins_erreur,
    (SELECT COUNT(*) FROM categories c WHERE NOT EXISTS (SELECT 1 FROM category_translations t WHERE t.category_id = c.id)) as sans_traduction_erreur;

-- 4. COUVERTURE DES LANGUES (Combien de traductions par langue)
SELECT 
    language_code,
    COUNT(*) as nombre_traductions
FROM category_translations
GROUP BY language_code
ORDER BY nombre_traductions DESC;

-- 5. DÉTAIL PAR CATÉGORIE RACINE (Top niveau)
-- Affiche chaque catégorie principale avec le nombre de ses sous-catégories directes
SELECT 
    c.slug as slug_racine,
    c.name as nom_racine,
    (SELECT COUNT(*) FROM categories sub WHERE sub.parent_id = c.id) as enfants_directs,
    CASE WHEN EXISTS (SELECT 1 FROM category_translations t WHERE t.category_id = c.id AND language_code = 'fr') THEN 'OK' ELSE 'MISSING' END as trad_fr,
    CASE WHEN EXISTS (SELECT 1 FROM category_translations t WHERE t.category_id = c.id AND language_code = 'ar') THEN 'OK' ELSE 'MISSING' END as trad_ar
FROM categories c
WHERE c.level = 0
ORDER BY c.slug;
