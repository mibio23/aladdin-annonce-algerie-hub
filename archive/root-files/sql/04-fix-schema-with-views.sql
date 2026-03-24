
-- Script complet pour corriger le schéma de la table announcements ET gérer les vues dépendantes
-- Ce script doit être exécuté dans l'éditeur SQL de Supabase

BEGIN;

-- 1. Supprimer les vues dépendantes (pour éviter l'erreur "cannot alter type of a column used by a view")
DROP VIEW IF EXISTS announcements_safe;
DROP VIEW IF EXISTS announcements_public;

-- 2. Ajout des colonnes manquantes
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

-- 3. Correction des types des colonnes IDs (UUID -> TEXT)
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
        ALTER TABLE announcements DROP CONSTRAINT IF EXISTS announcements_category_id_fkey;
        ALTER TABLE announcements ALTER COLUMN category_id TYPE TEXT USING category_id::text;
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

-- 4. Recréer les vues

-- Recréer announcements_public
CREATE OR REPLACE VIEW announcements_public AS
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
    a.expires_at,
    a.premium_end_at,
    a.type,
    a.condition,
    a.phone_number,
    a.images,
    a.image_urls,
    a.image_url
FROM announcements a
LEFT JOIN categories c ON a.category_id = c.id
WHERE a.status = 'active';

-- Recréer announcements_safe
CREATE OR REPLACE VIEW announcements_safe AS
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
    a.image_urls,
    a.premium_end_at,
    a.type,
    a.condition
FROM announcements a
WHERE a.status = 'active';

COMMIT;
