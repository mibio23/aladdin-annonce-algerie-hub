-- Script de correction pour ajouter la contrainte UNIQUE sur la colonne 'slug'
-- Nécessaire pour que les scripts de migration avec "ON CONFLICT (slug)" fonctionnent.

-- 1. Supprimer les doublons de slugs s'il y en a (en gardant l'ID le plus petit)
-- Cela évite l'erreur "could not create unique index" si des doublons existent déjà.
DELETE FROM public.categories
WHERE id IN (
    SELECT id
    FROM (
        SELECT id,
               ROW_NUMBER() OVER (PARTITION BY slug ORDER BY id) as rnum
        FROM public.categories
        WHERE slug IS NOT NULL
    ) t
    WHERE t.rnum > 1
);

-- 2. Ajouter la contrainte UNIQUE sur la colonne slug
DO $$
BEGIN
    -- Vérifie si la contrainte existe déjà pour éviter une erreur
    IF NOT EXISTS (
        SELECT 1 
        FROM pg_constraint 
        WHERE conname = 'categories_slug_key'
    ) THEN
        ALTER TABLE public.categories ADD CONSTRAINT categories_slug_key UNIQUE (slug);
    END IF;
END $$;
