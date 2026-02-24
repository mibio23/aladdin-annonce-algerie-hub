-- Ajout d'un numéro d'ordre général pour les boutiques (shop_number)
BEGIN;

-- 1. Création de la séquence pour l'incrémentation automatique
CREATE SEQUENCE IF NOT EXISTS public.shops_shop_number_seq;

-- 2. Ajout de la colonne shop_number
ALTER TABLE public.shops
ADD COLUMN IF NOT EXISTS shop_number bigint;

-- 3. Remplissage des numéros pour les boutiques existantes (si il y en a déjà)
WITH ordered_shops AS (
  SELECT id, row_number() OVER (ORDER BY created_at, id) AS rn
  FROM public.shops
  WHERE shop_number IS NULL
)
UPDATE public.shops s
SET shop_number = ordered_shops.rn
FROM ordered_shops
WHERE s.id = ordered_shops.id;

-- 4. Définir la valeur actuelle de la séquence pour les futurs inserts
SELECT setval(
  'public.shops_shop_number_seq',
  (SELECT COALESCE(MAX(shop_number), 0) FROM public.shops),
  true
);

-- 5. Rendre la colonne obligatoire et lui assigner la séquence par défaut
ALTER TABLE public.shops
ALTER COLUMN shop_number SET DEFAULT nextval('public.shops_shop_number_seq'),
ALTER COLUMN shop_number SET NOT NULL;

-- 6. Ajouter une contrainte d'unicité pour éviter les doublons
CREATE UNIQUE INDEX IF NOT EXISTS shops_shop_number_key
ON public.shops (shop_number);

COMMIT;
