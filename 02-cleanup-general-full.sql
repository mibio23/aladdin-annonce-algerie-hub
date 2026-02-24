-- Script de nettoyage général complet (RÉCURSIF et SÛR)
-- Ce script nettoie les doublons, les orphelins et les incohérences dans la base de données

-- 1. Nettoyage des traductions orphelines (référençant des catégories inexistantes)
DELETE FROM category_translations
WHERE category_id NOT IN (SELECT id FROM categories);

-- 2. Correction des parent_id invalides (orphelins hiérarchiques)
-- Si un parent n'existe pas, on met le parent_id à NULL (devient une racine) ou on supprime selon la logique métier.
-- Ici, on choisit de les mettre à la racine pour ne pas perdre de données, sauf si c'est explicitement voulu autrement.
UPDATE categories
SET parent_id = NULL
WHERE parent_id IS NOT NULL AND parent_id NOT IN (SELECT id FROM categories);

-- 3. Détection et suppression des doublons de slugs (sensible à la casse vs non-sensible)
-- On garde la version en minuscules si possible, ou la plus récente.

CREATE TEMP TABLE duplicate_slugs AS
SELECT lower(slug) as clean_slug, count(*) as cnt
FROM categories
GROUP BY lower(slug)
HAVING count(*) > 1;

-- Pour chaque doublon, on garde celui qui est en 'snake_case' ou minuscule préférentiellement,
-- ou celui qui a le plus de dépendances (sous-catégories, annonces).

-- (Approche simplifiée : on garde le plus récent et on migre les dépendances)
-- Note: C'est complexe car les IDs sont des TEXT (slugs). Si on a 'Telephonie' et 'telephonie', ce sont deux IDs différents.
-- Il faut migrer les références de 'Telephonie' vers 'telephonie' avant de supprimer 'Telephonie'.

DO $$
DECLARE
    r RECORD;
    target_slug TEXT;
    bad_slug TEXT;
BEGIN
    FOR r IN SELECT clean_slug FROM duplicate_slugs LOOP
        -- Trouver le "bon" slug (celui en minuscule s'il existe, sinon le premier créé)
        SELECT id INTO target_slug FROM categories WHERE lower(slug) = r.clean_slug ORDER BY slug = r.clean_slug DESC, created_at ASC LIMIT 1;
        
        -- Trouver les "mauvais" slugs
        FOR bad_slug IN SELECT id FROM categories WHERE lower(slug) = r.clean_slug AND id != target_slug LOOP
            
            -- Migrer les sous-catégories
            UPDATE categories SET parent_id = target_slug WHERE parent_id = bad_slug;
            
            -- Migrer les annonces (table announcements)
            UPDATE announcements SET category_id = target_slug WHERE category_id = bad_slug;
            
            -- Migrer les traductions
            -- Attention: on ne peut pas avoir deux traductions pour la même langue sur la target.
            -- On supprime les traductions de la bad_slug si elles existent déjà sur target_slug
            DELETE FROM category_translations 
            WHERE category_id = bad_slug 
            AND language_code IN (SELECT language_code FROM category_translations WHERE category_id = target_slug);
            
            -- Pour les langues restantes, on met à jour l'ID
            UPDATE category_translations SET category_id = target_slug WHERE category_id = bad_slug;
            
            -- Supprimer la mauvaise catégorie
            DELETE FROM categories WHERE id = bad_slug;
            
            RAISE NOTICE 'Fusionné % vers %', bad_slug, target_slug;
        END LOOP;
    END LOOP;
END $$;

-- 4. Nettoyage final des doublons stricts (même ID exact, impossible avec PK, mais bon pour la forme si pas de PK)
-- La table categories a id comme PK, donc pas de doublons exacts d'ID possibles.

-- 5. Vérification de la contrainte de clé étrangère
-- S'assurer que toutes les annonces pointent vers des catégories existantes
DELETE FROM announcements
WHERE category_id IS NOT NULL AND category_id NOT IN (SELECT id FROM categories);

-- 6. Nettoyage des images orphelines (si table séparée)
-- (Pas de table category_images standard mentionnée, souvent inclus dans categories ou storage)

-- Fin du script
