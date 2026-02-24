-- Migration pour augmenter la limite de prix à 100 milliards
-- La limite actuelle NUMERIC(12,2) permet jusqu'à 99,999,999,999.99
-- Pour 100 milliards (100,000,000,000), nous devons passer à NUMERIC(14,2)

ALTER TABLE public.announcements 
ALTER COLUMN price TYPE NUMERIC(14, 2);

-- Vérification de la modification
COMMENT ON COLUMN public.announcements.price IS 'Prix de l\'annonce, maximum 100 milliards DZD';