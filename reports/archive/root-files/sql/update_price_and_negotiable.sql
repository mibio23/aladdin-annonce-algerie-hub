-- 1. Augmenter considérablement la taille de la colonne prix (jusqu'à 100 milliards et plus)
-- NUMERIC(25, 2) permet jusqu'à 10^23, ce qui est largement suffisant pour 100 milliards (10^11)
ALTER TABLE announcements ALTER COLUMN price TYPE numeric(25, 2);

-- 2. S'assurer que la colonne is_negotiable existe
ALTER TABLE announcements ADD COLUMN IF NOT EXISTS is_negotiable BOOLEAN DEFAULT false;

-- 3. Mettre à jour les politiques de sécurité si nécessaire (généralement pas nécessaire pour un simple ajout de colonne si RLS est déjà configuré)
