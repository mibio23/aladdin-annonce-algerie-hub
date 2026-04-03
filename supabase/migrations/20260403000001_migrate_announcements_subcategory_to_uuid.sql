-- ============================================================
-- MIGRATION : Converter announcements.subcategory_id slug → UUID
-- Généré automatiquement le 2026-04-03T08:04:11.750Z
-- ============================================================

-- Ce script converts existing announcements.subcategory_id (slug text)
-- to use category_uuid via the newly populated categories table.
-- Run AFTER the categories migration above.

-- Vérification avant migration
SELECT
  COUNT(*) FILTER (WHERE subcategory_id IS NOT NULL AND subcategory_id != '') AS avec_slug,
  COUNT(*) FILTER (WHERE subcategory_uuid IS NOT NULL) AS avec_uuid,
  COUNT(*) FILTER (WHERE subcategory_id IS NOT NULL AND subcategory_id != '' AND subcategory_uuid IS NULL) AS a_convertir
FROM public.announcements;

-- Conversion slug → UUID pour les annonces existantes
UPDATE public.announcements a
SET subcategory_uuid = c.category_uuid
FROM public.categories c
WHERE a.subcategory_id = c.slug
  AND a.subcategory_uuid IS NULL
  AND a.subcategory_id IS NOT NULL
  AND a.subcategory_id != '';

-- Vérification après migration
SELECT
  COUNT(*) FILTER (WHERE subcategory_id IS NOT NULL AND subcategory_id != '') AS restant_avec_slug,
  COUNT(*) FILTER (WHERE subcategory_uuid IS NOT NULL) AS avec_uuid,
  COUNT(*) FILTER (WHERE subcategory_id IS NOT NULL AND subcategory_id != '' AND subcategory_uuid IS NULL) AS non_converti
FROM public.announcements;

-- Annonces non converties (slug introuvable dans categories)
-- Ces cas doivent être traités manuellement
SELECT id, title, subcategory_id, category_id
FROM public.announcements
WHERE subcategory_id IS NOT NULL
  AND subcategory_id != ''
  AND subcategory_uuid IS NULL
ORDER BY created_at DESC;

-- Nettoyage optionnel : une fois TOUTES les annonces converties,
-- vous pouvez DROP la colonne subcategory_id si vous êtes sûr
-- que plus aucune ancienne данные ne reste
-- ALTER TABLE public.announcements DROP COLUMN IF EXISTS subcategory_id;

-- IMPORTANT : Gardez subcategory_id en l'état pour l'instant
-- car les URLs du site utilisent les slugs.
-- La colonne subcategory_uuid est un champ technique de référence.
-- Une future étape de refonte d'URL pourra remplacer
-- les slugs par des UUIDs ou une autre clé stable.

