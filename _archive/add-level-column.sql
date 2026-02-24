-- Script SQL pour ajouter la colonne level à la table categories
-- À exécuter dans le tableau de bord Supabase (SQL Editor)

-- Vérifier si la colonne level existe déjà
DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 
        FROM information_schema.columns 
        WHERE table_name = 'categories' 
        AND column_name = 'level'
    ) THEN
        -- Ajouter la colonne level
        ALTER TABLE categories 
        ADD COLUMN level INTEGER NOT NULL DEFAULT 0;
        
        RAISE NOTICE 'Colonne level ajoutée avec succès';
    ELSE
        RAISE NOTICE 'La colonne level existe déjà';
    END IF;
END
$$;

-- Vérifier la structure actuelle de la table
SELECT column_name, data_type, is_nullable, column_default 
FROM information_schema.columns 
WHERE table_name = 'categories' 
ORDER BY ordinal_position;