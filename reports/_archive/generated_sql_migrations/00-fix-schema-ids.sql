-- CORRECTION DU SCHÉMA DE LA BASE DE DONNÉES (VERSION COMPLÈTE)
-- Ce script modifie le type de la colonne 'id' de BIGINT vers TEXT pour correspondre aux fichiers TypeScript.
-- Il gère les dépendances (Vues, Clés étrangères) pour éviter les erreurs.

BEGIN;

-- 1. Supprimer la vue qui dépend des colonnes
-- On utilise DROP et non CREATE OR REPLACE pour éviter l'erreur "cannot drop columns from view"
DROP VIEW IF EXISTS categories_with_translations;
-- Supprimer aussi la vue publique des annonces si elle existe
DROP VIEW IF EXISTS announcements_public;
-- Et la vue announcements_safe
DROP VIEW IF EXISTS announcements_safe;

-- 2. Désactiver temporairement les contraintes de clé étrangère
ALTER TABLE public.announcements DROP CONSTRAINT IF EXISTS fk_announcements_category;
ALTER TABLE public.categories DROP CONSTRAINT IF EXISTS categories_parent_id_fkey;
-- Il faut aussi gérer la table des traductions qui pointe vers categories
ALTER TABLE public.category_translations DROP CONSTRAINT IF EXISTS category_translations_category_id_fkey;
-- Et aussi la table des images de catégories si elle existe
ALTER TABLE IF EXISTS public.category_images DROP CONSTRAINT IF EXISTS category_images_category_id_fkey;
-- Et la table des tags de catégories (category_tags)
ALTER TABLE IF EXISTS public.category_tags DROP CONSTRAINT IF EXISTS category_tags_category_id_fkey;

-- 3. Modifier la table categories
-- Supprimer la contrainte d'identité (auto-increment) si elle existe
ALTER TABLE public.categories ALTER COLUMN id DROP IDENTITY IF EXISTS;
-- Supprimer la valeur par défaut (sequence)
ALTER TABLE public.categories ALTER COLUMN id DROP DEFAULT;

-- Convertir les colonnes ID en TEXT
ALTER TABLE public.categories ALTER COLUMN id TYPE TEXT USING id::TEXT;
ALTER TABLE public.categories ALTER COLUMN parent_id TYPE TEXT USING parent_id::TEXT;

-- 4. Modifier la table announcements (qui référence categories)
ALTER TABLE public.announcements ALTER COLUMN category_id TYPE TEXT USING category_id::TEXT;
-- Et la table des traductions
ALTER TABLE public.category_translations ALTER COLUMN category_id TYPE TEXT USING category_id::TEXT;
-- Et la table des images
ALTER TABLE IF EXISTS public.category_images ALTER COLUMN category_id TYPE TEXT USING category_id::TEXT;
-- Et la table des tags
ALTER TABLE IF EXISTS public.category_tags ALTER COLUMN category_id TYPE TEXT USING category_id::TEXT;

-- 5. Rétablir les contraintes
-- On nettoie d'abord les annonces orphelines (qui pointent vers des catégories inexistantes)
DELETE FROM public.announcements WHERE category_id NOT IN (SELECT id FROM public.categories);

ALTER TABLE public.announcements 
    ADD CONSTRAINT fk_announcements_category 
    FOREIGN KEY (category_id) REFERENCES public.categories(id);

ALTER TABLE public.category_translations
    ADD CONSTRAINT category_translations_category_id_fkey
    FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;

ALTER TABLE IF EXISTS public.category_images
    ADD CONSTRAINT category_images_category_id_fkey
    FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;

ALTER TABLE IF EXISTS public.category_tags
    ADD CONSTRAINT category_tags_category_id_fkey
    FOREIGN KEY (category_id) REFERENCES public.categories(id) ON DELETE CASCADE;

ALTER TABLE public.categories
    ADD CONSTRAINT categories_parent_id_fkey
    FOREIGN KEY (parent_id) REFERENCES public.categories(id);

-- 6. Recréer la vue categories_with_translations
CREATE VIEW categories_with_translations AS
SELECT 
    c.id,
    c.name,
    c.slug,
    c.parent_id,
    c.level,
    c.icon,
    c.created_at,
    c.updated_at,
    COALESCE(
        jsonb_object_agg(ct.language_code, ct.name) FILTER (WHERE ct.language_code IS NOT NULL),
        '{}'::jsonb
    ) as translations
FROM categories c
LEFT JOIN category_translations ct ON c.id = ct.category_id
GROUP BY c.id;

-- 7. Recréer la vue announcements_public (version simplifiée pour éviter les erreurs)
CREATE VIEW announcements_public AS
SELECT 
    a.id,
    a.title,
    a.description,
    a.price,
    a.currency,
    a.location,
    a.wilaya,
    a.commune,
    a.category_id,
    c.name as category_name,
    c.slug as category_slug,
    a.subcategory_id,
    a.user_id,
    a.status,
    a.is_urgent,
    a.is_featured,
    a.view_count,
    a.created_at,
    a.updated_at,
    a.expires_at
FROM announcements a
LEFT JOIN categories c ON a.category_id = c.id
WHERE a.status = 'active';

-- 8. Recréer la vue announcements_safe (version simplifiée)
CREATE VIEW announcements_safe AS
SELECT 
    a.id,
    a.title,
    a.description,
    a.price,
    a.currency,
    a.location,
    a.wilaya,
    a.commune,
    a.category_id,
    a.subcategory_id,
    a.user_id,
    a.status,
    a.is_urgent,
    a.is_featured,
    a.view_count,
    a.created_at,
    a.updated_at,
    a.expires_at,
    a.image_url,
    a.image_urls
FROM announcements a
WHERE a.status = 'active';

COMMIT;
