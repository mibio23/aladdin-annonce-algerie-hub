-- Script pour ajouter les colonnes manquantes à la table 'shops'
-- Exécutez ce script dans l'éditeur SQL de Supabase

DO $$
BEGIN
    -- Informations de base
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'shops' AND column_name = 'name') THEN
        ALTER TABLE shops ADD COLUMN name text;
    END IF;
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'shops' AND column_name = 'description') THEN
        ALTER TABLE shops ADD COLUMN description text;
    END IF;
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'shops' AND column_name = 'wilaya') THEN
        ALTER TABLE shops ADD COLUMN wilaya text;
    END IF;
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'shops' AND column_name = 'commune') THEN
        ALTER TABLE shops ADD COLUMN commune text;
    END IF;
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'shops' AND column_name = 'shop_status') THEN
        ALTER TABLE shops ADD COLUMN shop_status text;
    END IF;

    -- Coordonnées et Contact
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'shops' AND column_name = 'phone_numbers') THEN
        ALTER TABLE shops ADD COLUMN phone_numbers text[];
    END IF;
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'shops' AND column_name = 'landline_phone') THEN
        ALTER TABLE shops ADD COLUMN landline_phone text;
    END IF;
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'shops' AND column_name = 'secondary_email') THEN
        ALTER TABLE shops ADD COLUMN secondary_email text;
    END IF;
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'shops' AND column_name = 'whatsapp_number') THEN
        ALTER TABLE shops ADD COLUMN whatsapp_number text;
    END IF;
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'shops' AND column_name = 'website') THEN
        ALTER TABLE shops ADD COLUMN website text;
    END IF;
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'shops' AND column_name = 'social_media') THEN
        ALTER TABLE shops ADD COLUMN social_media jsonb;
    END IF;

    -- Médias
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'shops' AND column_name = 'logo_url') THEN
        ALTER TABLE shops ADD COLUMN logo_url text;
    END IF;
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'shops' AND column_name = 'banner_url') THEN
        ALTER TABLE shops ADD COLUMN banner_url text;
    END IF;
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'shops' AND column_name = 'product_image_urls') THEN
        ALTER TABLE shops ADD COLUMN product_image_urls text[];
    END IF;
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'shops' AND column_name = 'product_video_urls') THEN
        ALTER TABLE shops ADD COLUMN product_video_urls text[];
    END IF;
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'shops' AND column_name = 'presentation_video') THEN
        ALTER TABLE shops ADD COLUMN presentation_video text;
    END IF;
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'shops' AND column_name = 'interior_photos') THEN
        ALTER TABLE shops ADD COLUMN interior_photos text[];
    END IF;
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'shops' AND column_name = 'catalog_pdf') THEN
        ALTER TABLE shops ADD COLUMN catalog_pdf text;
    END IF;
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'shops' AND column_name = 'useful_links') THEN
        ALTER TABLE shops ADD COLUMN useful_links text[];
    END IF;

    -- Indicateurs d'état
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'shops' AND column_name = 'is_online') THEN
        ALTER TABLE shops ADD COLUMN is_online boolean DEFAULT false;
    END IF;
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'shops' AND column_name = 'is_physical') THEN
        ALTER TABLE shops ADD COLUMN is_physical boolean DEFAULT false;
    END IF;
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'shops' AND column_name = 'is_verified') THEN
        ALTER TABLE shops ADD COLUMN is_verified boolean DEFAULT false;
    END IF;

    -- Localisation avancée
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'shops' AND column_name = 'address') THEN
        ALTER TABLE shops ADD COLUMN address text;
    END IF;
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'shops' AND column_name = 'postal_code') THEN
        ALTER TABLE shops ADD COLUMN postal_code text;
    END IF;
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'shops' AND column_name = 'gps_coordinates') THEN
        ALTER TABLE shops ADD COLUMN gps_coordinates jsonb;
    END IF;
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'shops' AND column_name = 'landmark') THEN
        ALTER TABLE shops ADD COLUMN landmark text;
    END IF;
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'shops' AND column_name = 'opening_hours') THEN
        ALTER TABLE shops ADD COLUMN opening_hours jsonb;
    END IF;

    -- Catégorisation et Détails
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'shops' AND column_name = 'main_category') THEN
        ALTER TABLE shops ADD COLUMN main_category text;
    END IF;
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'shops' AND column_name = 'subcategories') THEN
        ALTER TABLE shops ADD COLUMN subcategories text[];
    END IF;
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'shops' AND column_name = 'keywords') THEN
        ALTER TABLE shops ADD COLUMN keywords text[];
    END IF;
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'shops' AND column_name = 'brands_distributed') THEN
        ALTER TABLE shops ADD COLUMN brands_distributed text[];
    END IF;

    -- Services et Options
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'shops' AND column_name = 'delivery_options') THEN
        ALTER TABLE shops ADD COLUMN delivery_options jsonb;
    END IF;
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'shops' AND column_name = 'payment_methods') THEN
        ALTER TABLE shops ADD COLUMN payment_methods jsonb;
    END IF;
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'shops' AND column_name = 'warranty_info') THEN
        ALTER TABLE shops ADD COLUMN warranty_info text;
    END IF;
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'shops' AND column_name = 'after_sales_service') THEN
        ALTER TABLE shops ADD COLUMN after_sales_service text;
    END IF;

    -- Statistiques
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'shops' AND column_name = 'view_count') THEN
        ALTER TABLE shops ADD COLUMN view_count integer DEFAULT 0;
    END IF;
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'shops' AND column_name = 'shop_number') THEN
        ALTER TABLE shops ADD COLUMN shop_number integer; 
    END IF;

END $$;
