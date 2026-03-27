BEGIN;

CREATE SEQUENCE IF NOT EXISTS public.global_listing_number_seq;

ALTER TABLE public.announcements
ADD COLUMN IF NOT EXISTS global_listing_number bigint;

ALTER TABLE public.shops
ADD COLUMN IF NOT EXISTS global_listing_number bigint;

ALTER TABLE public.professional_job_offers
ADD COLUMN IF NOT EXISTS global_listing_number bigint;

WITH all_rows AS (
  SELECT 'announcements'::text AS src, 1 AS src_order, a.id AS id, a.created_at AS created_at
  FROM public.announcements a
  UNION ALL
  SELECT 'shops'::text AS src, 2 AS src_order, s.id AS id, s.created_at AS created_at
  FROM public.shops s
  UNION ALL
  SELECT 'professional_job_offers'::text AS src, 3 AS src_order, p.id AS id, p.created_at AS created_at
  FROM public.professional_job_offers p
),
ordered AS (
  SELECT src, id, row_number() OVER (ORDER BY created_at, src_order, id) AS rn
  FROM all_rows
)
UPDATE public.announcements a
SET global_listing_number = o.rn
FROM ordered o
WHERE o.src = 'announcements'
  AND o.id = a.id
  AND a.global_listing_number IS NULL;

WITH all_rows AS (
  SELECT 'announcements'::text AS src, 1 AS src_order, a.id AS id, a.created_at AS created_at
  FROM public.announcements a
  UNION ALL
  SELECT 'shops'::text AS src, 2 AS src_order, s.id AS id, s.created_at AS created_at
  FROM public.shops s
  UNION ALL
  SELECT 'professional_job_offers'::text AS src, 3 AS src_order, p.id AS id, p.created_at AS created_at
  FROM public.professional_job_offers p
),
ordered AS (
  SELECT src, id, row_number() OVER (ORDER BY created_at, src_order, id) AS rn
  FROM all_rows
)
UPDATE public.shops s
SET global_listing_number = o.rn
FROM ordered o
WHERE o.src = 'shops'
  AND o.id = s.id
  AND s.global_listing_number IS NULL;

WITH all_rows AS (
  SELECT 'announcements'::text AS src, 1 AS src_order, a.id AS id, a.created_at AS created_at
  FROM public.announcements a
  UNION ALL
  SELECT 'shops'::text AS src, 2 AS src_order, s.id AS id, s.created_at AS created_at
  FROM public.shops s
  UNION ALL
  SELECT 'professional_job_offers'::text AS src, 3 AS src_order, p.id AS id, p.created_at AS created_at
  FROM public.professional_job_offers p
),
ordered AS (
  SELECT src, id, row_number() OVER (ORDER BY created_at, src_order, id) AS rn
  FROM all_rows
)
UPDATE public.professional_job_offers p
SET global_listing_number = o.rn
FROM ordered o
WHERE o.src = 'professional_job_offers'
  AND o.id = p.id
  AND p.global_listing_number IS NULL;

DO $$
BEGIN
  IF EXISTS (
    SELECT 1
    FROM information_schema.columns
    WHERE table_schema = 'public'
      AND table_name = 'announcements'
      AND column_name = 'global_announcement_number'
  ) THEN
    EXECUTE 'UPDATE public.announcements SET global_announcement_number = global_listing_number WHERE global_listing_number IS NOT NULL';
    EXECUTE 'ALTER TABLE public.announcements ALTER COLUMN global_announcement_number DROP DEFAULT';
  END IF;
END
$$;

SELECT setval(
  'public.global_listing_number_seq',
  (
    SELECT COALESCE(MAX(x), 0)
    FROM (
      SELECT MAX(global_listing_number) AS x FROM public.announcements
      UNION ALL
      SELECT MAX(global_listing_number) AS x FROM public.shops
      UNION ALL
      SELECT MAX(global_listing_number) AS x FROM public.professional_job_offers
    ) m
  ),
  true
);

ALTER TABLE public.announcements
ALTER COLUMN global_listing_number SET DEFAULT nextval('public.global_listing_number_seq');

ALTER TABLE public.shops
ALTER COLUMN global_listing_number SET DEFAULT nextval('public.global_listing_number_seq');

ALTER TABLE public.professional_job_offers
ALTER COLUMN global_listing_number SET DEFAULT nextval('public.global_listing_number_seq');

ALTER TABLE public.announcements
ALTER COLUMN global_listing_number SET NOT NULL;

ALTER TABLE public.shops
ALTER COLUMN global_listing_number SET NOT NULL;

ALTER TABLE public.professional_job_offers
ALTER COLUMN global_listing_number SET NOT NULL;

CREATE INDEX IF NOT EXISTS idx_announcements_global_listing_number
ON public.announcements (global_listing_number);

CREATE INDEX IF NOT EXISTS idx_shops_global_listing_number
ON public.shops (global_listing_number);

CREATE INDEX IF NOT EXISTS idx_professional_job_offers_global_listing_number
ON public.professional_job_offers (global_listing_number);

CREATE OR REPLACE FUNCTION public.sync_announcement_global_numbers()
RETURNS trigger
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
BEGIN
  IF NEW.global_listing_number IS NULL THEN
    NEW.global_listing_number := nextval('public.global_listing_number_seq');
  END IF;

  IF EXISTS (
    SELECT 1
    FROM information_schema.columns
    WHERE table_schema = 'public'
      AND table_name = 'announcements'
      AND column_name = 'global_announcement_number'
  ) THEN
    IF NEW.global_announcement_number IS NULL THEN
      NEW.global_announcement_number := NEW.global_listing_number;
    END IF;
  END IF;

  RETURN NEW;
END;
$$;

DROP TRIGGER IF EXISTS trg_sync_announcement_global_numbers ON public.announcements;
CREATE TRIGGER trg_sync_announcement_global_numbers
BEFORE INSERT ON public.announcements
FOR EACH ROW
EXECUTE FUNCTION public.sync_announcement_global_numbers();

CREATE OR REPLACE FUNCTION public.get_global_listing_total()
RETURNS bigint
LANGUAGE sql
SECURITY DEFINER
SET search_path = public
AS $$
  SELECT COALESCE(
    (
      SELECT MAX(x)
      FROM (
        SELECT MAX(global_listing_number) AS x FROM public.announcements
        UNION ALL
        SELECT MAX(global_listing_number) AS x FROM public.shops
        UNION ALL
        SELECT MAX(global_listing_number) AS x FROM public.professional_job_offers
      ) t
    ),
    0
  );
$$;

GRANT EXECUTE ON FUNCTION public.get_global_listing_total() TO anon, authenticated;

CREATE OR REPLACE VIEW public.announcements_public
WITH (security_invoker = true)
AS
SELECT
  a.id,
  a.title,
  a.description,
  a.price,
  a.location,
  a.image_url,
  a.image_urls,
  a.category_id,
  a.created_at,
  a.updated_at,
  a.expires_at,
  a.keywords,
  a.type,
  a.condition,
  a.status,
  a.is_urgent,
  a.urgent_message,
  a.view_count,
  a.shop_name,
  a.shop_id,
  a.shop_logo_url,
  NULL::text AS phone_number,
  (a.phone_number IS NOT NULL) AS has_contact_info,
  a.global_announcement_number,
  a.global_listing_number
FROM public.announcements a
WHERE a.status = 'active';

GRANT SELECT ON public.announcements_public TO anon, authenticated;

CREATE OR REPLACE VIEW public.announcements_safe
WITH (security_invoker = true)
AS
SELECT
  a.id,
  a.title,
  a.description,
  a.price,
  a.location,
  a.image_url,
  a.image_urls,
  a.category_id,
  a.user_id,
  a.created_at,
  a.updated_at,
  a.expires_at,
  a.keywords,
  a.type,
  a.condition,
  a.status,
  a.is_urgent,
  a.urgent_message,
  a.view_count,
  a.shop_name,
  a.shop_id,
  a.shop_logo_url,
  a.contact_count,
  NULL::text as phone_number,
  CASE
    WHEN a.phone_number IS NOT NULL THEN '**********'
    ELSE NULL
  END as phone_number_masked,
  a.global_announcement_number,
  a.global_listing_number
FROM public.announcements a
WHERE a.status = 'active';

GRANT SELECT ON public.announcements_safe TO anon, authenticated;

COMMIT;
