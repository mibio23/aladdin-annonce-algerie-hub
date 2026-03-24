-- Augmenter la précision de la colonne price pour supporter de plus grands montants (jusqu'à 10^18)
-- Actuellement NUMERIC(10, 2) limite à 99,999,999.99
ALTER TABLE announcements ALTER COLUMN price TYPE numeric(20, 2);
