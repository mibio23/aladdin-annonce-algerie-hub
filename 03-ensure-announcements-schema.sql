
-- Script complet pour corriger le schéma de la table announcements
-- Ce script doit être exécuté dans l'éditeur SQL de Supabase

BEGIN;

-- 1. Ajout des colonnes manquantes
ALTER TABLE public.announcements ADD COLUMN IF NOT EXISTS premium_end_at TIMESTAMPTZ;
ALTER TABLE public.announcements ADD COLUMN IF NOT EXISTS type TEXT DEFAULT 'normal';
ALTER TABLE public.announcements ADD COLUMN IF NOT EXISTS subcategory_id TEXT;
ALTER TABLE public.announcements ADD COLUMN IF NOT EXISTS condition TEXT;
ALTER TABLE public.announcements ADD COLUMN IF NOT EXISTS wilaya TEXT;
ALTER TABLE public.announcements ADD COLUMN IF NOT EXISTS commune TEXT;
ALTER TABLE public.announcements ADD COLUMN IF NOT EXISTS phone_number TEXT;
ALTER TABLE public.announcements ADD COLUMN IF NOT EXISTS is_urgent BOOLEAN DEFAULT false;
ALTER TABLE public.announcements ADD COLUMN IF NOT EXISTS currency TEXT DEFAULT 'DZD';
ALTER TABLE public.announcements ADD COLUMN IF NOT EXISTS view_count INTEGER DEFAULT 0;
ALTER TABLE public.announcements ADD COLUMN IF NOT EXISTS contact_count INTEGER DEFAULT 0;
ALTER TABLE public.announcements ADD COLUMN IF NOT EXISTS status TEXT DEFAULT 'pending';

-- 2. Correction des types des colonnes IDs (UUID -> TEXT)
-- Pour category_id
DO $$
BEGIN
    IF EXISTS (
        SELECT 1 
        FROM information_schema.columns 
        WHERE table_name = 'announcements' 
        AND column_name = 'category_id' 
        AND data_type = 'uuid'
    ) THEN
        -- On supprime d'abord la contrainte de clé étrangère
        ALTER TABLE announcements DROP CONSTRAINT IF EXISTS announcements_category_id_fkey;
        
        -- On change le type
        ALTER TABLE announcements ALTER COLUMN category_id TYPE TEXT USING category_id::text;
        
        -- On remet la contrainte vers categories(id) qui doit être TEXT
        ALTER TABLE announcements 
        ADD CONSTRAINT announcements_category_id_fkey 
        FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE SET NULL;
    END IF;
END $$;

-- Pour subcategory_id
DO $$
BEGIN
    IF EXISTS (
        SELECT 1 
        FROM information_schema.columns 
        WHERE table_name = 'announcements' 
        AND column_name = 'subcategory_id' 
        AND data_type = 'uuid'
    ) THEN
        ALTER TABLE announcements DROP CONSTRAINT IF EXISTS announcements_subcategory_id_fkey;
        ALTER TABLE announcements ALTER COLUMN subcategory_id TYPE TEXT USING subcategory_id::text;
        ALTER TABLE announcements 
        ADD CONSTRAINT announcements_subcategory_id_fkey 
        FOREIGN KEY (subcategory_id) REFERENCES categories(id) ON DELETE SET NULL;
    END IF;
END $$;

COMMIT;
