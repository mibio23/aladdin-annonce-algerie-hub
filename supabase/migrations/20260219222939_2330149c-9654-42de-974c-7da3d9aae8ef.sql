
-- ============================================================
-- MIGRATION CRITIQUE : Colonnes manquantes + Vues + Sécurité
-- ============================================================

-- 1. Colonnes manquantes dans announcements
ALTER TABLE public.announcements
  ADD COLUMN IF NOT EXISTS location TEXT,
  ADD COLUMN IF NOT EXISTS image_url TEXT,
  ADD COLUMN IF NOT EXISTS image_urls TEXT[],
  ADD COLUMN IF NOT EXISTS is_featured BOOLEAN DEFAULT false,
  ADD COLUMN IF NOT EXISTS shop_id TEXT,
  ADD COLUMN IF NOT EXISTS shop_name TEXT,
  ADD COLUMN IF NOT EXISTS shop_logo_url TEXT,
  ADD COLUMN IF NOT EXISTS keywords TEXT[],
  ADD COLUMN IF NOT EXISTS type TEXT DEFAULT 'sale',
  ADD COLUMN IF NOT EXISTS urgent_message TEXT,
  ADD COLUMN IF NOT EXISTS search_vector TSVECTOR,
  ADD COLUMN IF NOT EXISTS subcategory_id TEXT,
  ADD COLUMN IF NOT EXISTS brand TEXT,
  ADD COLUMN IF NOT EXISTS model TEXT,
  ADD COLUMN IF NOT EXISTS color TEXT,
  ADD COLUMN IF NOT EXISTS dimensions TEXT,
  ADD COLUMN IF NOT EXISTS weight_info TEXT,
  ADD COLUMN IF NOT EXISTS purchase_year INTEGER,
  ADD COLUMN IF NOT EXISTS has_invoice BOOLEAN DEFAULT false,
  ADD COLUMN IF NOT EXISTS warranty_duration TEXT,
  ADD COLUMN IF NOT EXISTS included_accessories TEXT[],
  ADD COLUMN IF NOT EXISTS selling_reason TEXT,
  ADD COLUMN IF NOT EXISTS cash_discount NUMERIC,
  ADD COLUMN IF NOT EXISTS exchange_possible BOOLEAN DEFAULT false,
  ADD COLUMN IF NOT EXISTS original_price NUMERIC,
  ADD COLUMN IF NOT EXISTS product_video TEXT,
  ADD COLUMN IF NOT EXISTS detail_photos TEXT[],
  ADD COLUMN IF NOT EXISTS documentation TEXT[],
  ADD COLUMN IF NOT EXISTS latitude DOUBLE PRECISION,
  ADD COLUMN IF NOT EXISTS longitude DOUBLE PRECISION,
  ADD COLUMN IF NOT EXISTS service_type TEXT,
  ADD COLUMN IF NOT EXISTS service_availability TEXT,
  ADD COLUMN IF NOT EXISTS service_experience INTEGER,
  ADD COLUMN IF NOT EXISTS service_price_model TEXT,
  ADD COLUMN IF NOT EXISTS service_location_type TEXT,
  ADD COLUMN IF NOT EXISTS finance_service_type TEXT,
  ADD COLUMN IF NOT EXISTS finance_currency TEXT,
  ADD COLUMN IF NOT EXISTS finance_amount NUMERIC,
  ADD COLUMN IF NOT EXISTS finance_exchange_rate NUMERIC,
  ADD COLUMN IF NOT EXISTS finance_payment_methods TEXT[],
  ADD COLUMN IF NOT EXISTS animal_species TEXT,
  ADD COLUMN IF NOT EXISTS animal_breed TEXT,
  ADD COLUMN IF NOT EXISTS animal_age INTEGER,
  ADD COLUMN IF NOT EXISTS animal_age_unit TEXT DEFAULT 'months',
  ADD COLUMN IF NOT EXISTS animal_gender TEXT,
  ADD COLUMN IF NOT EXISTS animal_vaccinated BOOLEAN DEFAULT false,
  ADD COLUMN IF NOT EXISTS animal_dewormed BOOLEAN DEFAULT false,
  ADD COLUMN IF NOT EXISTS animal_pedigree BOOLEAN DEFAULT false,
  ADD COLUMN IF NOT EXISTS animal_sterilized BOOLEAN DEFAULT false,
  ADD COLUMN IF NOT EXISTS exchange_type TEXT,
  ADD COLUMN IF NOT EXISTS exchange_offered TEXT,
  ADD COLUMN IF NOT EXISTS exchange_wanted TEXT,
  ADD COLUMN IF NOT EXISTS exchange_condition TEXT,
  ADD COLUMN IF NOT EXISTS exchange_value NUMERIC;

-- Sync location from wilaya for existing rows
UPDATE public.announcements SET location = wilaya WHERE location IS NULL AND wilaya IS NOT NULL;

-- Trigger to keep location in sync
CREATE OR REPLACE FUNCTION public.sync_location_from_wilaya()
RETURNS TRIGGER AS $$
BEGIN
  IF NEW.location IS NULL AND NEW.wilaya IS NOT NULL THEN
    NEW.location := NEW.wilaya;
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS sync_location_trigger ON public.announcements;
CREATE TRIGGER sync_location_trigger
  BEFORE INSERT OR UPDATE ON public.announcements
  FOR EACH ROW EXECUTE FUNCTION public.sync_location_from_wilaya();

-- Full-text search trigger
CREATE OR REPLACE FUNCTION public.update_announcement_search_vector_safe()
RETURNS TRIGGER AS $$
BEGIN
  NEW.search_vector := to_tsvector('french',
    COALESCE(NEW.title, '') || ' ' ||
    COALESCE(NEW.description, '') || ' ' ||
    COALESCE(NEW.wilaya, '') || ' ' ||
    COALESCE(NEW.location, '') || ' ' ||
    COALESCE(array_to_string(NEW.keywords, ' '), '')
  );
  RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER SET search_path TO 'public';

DROP TRIGGER IF EXISTS update_search_vector_trigger ON public.announcements;
CREATE TRIGGER update_search_vector_trigger
  BEFORE INSERT OR UPDATE ON public.announcements
  FOR EACH ROW EXECUTE FUNCTION public.update_announcement_search_vector_safe();

-- 2. Colonnes manquantes dans shops
ALTER TABLE public.shops
  ADD COLUMN IF NOT EXISTS rating NUMERIC(2,1) DEFAULT 0,
  ADD COLUMN IF NOT EXISTS review_count INTEGER DEFAULT 0,
  ADD COLUMN IF NOT EXISTS email TEXT;

-- Add slug to shops if missing
DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'shops' AND column_name = 'slug'
  ) THEN
    ALTER TABLE public.shops ADD COLUMN slug TEXT;
    UPDATE public.shops SET slug = lower(regexp_replace(name, '[^a-zA-Z0-9]', '-', 'g')) || '-' || substr(id::text, 1, 8) WHERE slug IS NULL;
  END IF;
END $$;

-- 3. Reconstruire la vue announcements_public
DROP VIEW IF EXISTS public.announcements_public CASCADE;
CREATE OR REPLACE VIEW public.announcements_public
WITH (security_invoker = true) AS
SELECT
  a.id,
  a.title,
  a.description,
  a.price,
  a.currency,
  COALESCE(a.location, a.wilaya) AS location,
  a.image_url,
  a.image_urls,
  a.images,
  a.category_id,
  a.subcategory_id,
  a.category_slug,
  a.wilaya,
  a.commune,
  a.address,
  a.phone_number,
  a.is_urgent,
  a.urgent_message,
  a.is_featured,
  a.is_negotiable,
  a.delivery_available,
  a.delivery_areas,
  a.delivery_fees,
  a.view_count,
  a.contact_count,
  a.status,
  a.shop_name,
  a.shop_id,
  a.shop_logo_url,
  a.keywords,
  a.type,
  a.attributes,
  a.condition,
  a.brand,
  a.model,
  a.color,
  a.created_at,
  a.updated_at,
  a.expires_at,
  a.global_listing_number,
  a.global_announcement_number,
  a.premium_end_at,
  a.user_id,
  (a.phone_number IS NOT NULL) AS has_contact_info
FROM public.announcements a
WHERE a.status IN ('active', 'pending')
  AND (a.deleted_at IS NULL OR a.deleted_at > now())
  AND (a.expires_at IS NULL OR a.expires_at > now());

-- 4. Reconstruire la vue announcements_safe (sans téléphone)
DROP VIEW IF EXISTS public.announcements_safe CASCADE;
CREATE OR REPLACE VIEW public.announcements_safe
WITH (security_invoker = true) AS
SELECT
  a.id,
  a.title,
  a.description,
  a.price,
  a.currency,
  COALESCE(a.location, a.wilaya) AS location,
  a.image_url,
  a.image_urls,
  a.images,
  a.category_id,
  a.subcategory_id,
  a.category_slug,
  a.wilaya,
  a.commune,
  a.address,
  a.is_urgent,
  a.urgent_message,
  a.is_featured,
  a.is_negotiable,
  a.delivery_available,
  a.delivery_areas,
  a.delivery_fees,
  a.view_count,
  a.contact_count,
  a.status,
  a.shop_name,
  a.shop_id,
  a.shop_logo_url,
  a.keywords,
  a.type,
  a.attributes,
  a.condition,
  a.brand,
  a.model,
  a.color,
  a.created_at,
  a.updated_at,
  a.expires_at,
  a.global_listing_number,
  a.global_announcement_number,
  a.premium_end_at,
  a.user_id,
  '****' AS phone_number_masked,
  (a.phone_number IS NOT NULL) AS has_contact_info
FROM public.announcements a
WHERE a.status = 'active'
  AND (a.deleted_at IS NULL OR a.deleted_at > now())
  AND (a.expires_at IS NULL OR a.expires_at > now());

-- 5. Nettoyer les policies RLS dupliquées sur announcements
DROP POLICY IF EXISTS "Users can delete their own announcements" ON public.announcements;
DROP POLICY IF EXISTS "Users can update their own announcements" ON public.announcements;
DROP POLICY IF EXISTS "Users can insert own announcements" ON public.announcements;
DROP POLICY IF EXISTS "Authenticated users can view active announcements" ON public.announcements;
DROP POLICY IF EXISTS "Public can view active announcements" ON public.announcements;
DROP POLICY IF EXISTS "Users see own announcements" ON public.announcements;
DROP POLICY IF EXISTS "Admins can manage all announcements" ON public.announcements;

-- 6. Nettoyer les doublons du carousel hero
DELETE FROM public.hero_carousel_slides
WHERE id NOT IN (
  SELECT DISTINCT ON (title, carousel_id) id
  FROM public.hero_carousel_slides
  ORDER BY title, carousel_id, created_at ASC
);

-- 7. Ajouter les traductions françaises manquantes pour les catégories
INSERT INTO public.category_translations (category_id, language_code, name)
SELECT c.id, 'fr', c.name
FROM public.categories c
WHERE NOT EXISTS (
  SELECT 1 FROM public.category_translations ct
  WHERE ct.category_id = c.id AND ct.language_code = 'fr'
)
ON CONFLICT (category_id, language_code) DO NOTHING;
