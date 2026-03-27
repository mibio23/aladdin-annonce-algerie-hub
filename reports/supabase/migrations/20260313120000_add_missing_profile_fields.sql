
-- Migration pour ajouter les colonnes manquantes au profil
-- Basé sur l'audit du 2026-03-13

ALTER TABLE public.profiles 
ADD COLUMN IF NOT EXISTS display_name TEXT,
ADD COLUMN IF NOT EXISTS phone_secondary TEXT,
ADD COLUMN IF NOT EXISTS phone_tertiary TEXT,
ADD COLUMN IF NOT EXISTS address TEXT,
ADD COLUMN IF NOT EXISTS commune TEXT,
ADD COLUMN IF NOT EXISTS wilaya TEXT;

-- Mettre à jour display_name avec full_name si vide
UPDATE public.profiles 
SET display_name = full_name 
WHERE display_name IS NULL AND full_name IS NOT NULL;
