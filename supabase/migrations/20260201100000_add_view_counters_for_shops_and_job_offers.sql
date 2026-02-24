ALTER TABLE public.shops
ADD COLUMN IF NOT EXISTS view_count integer NOT NULL DEFAULT 0;

ALTER TABLE public.professional_job_offers
ADD COLUMN IF NOT EXISTS view_count integer NOT NULL DEFAULT 0;

CREATE OR REPLACE FUNCTION public.increment_shop_view_count(shop_uuid uuid)
RETURNS void
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
BEGIN
  UPDATE public.shops
  SET view_count = COALESCE(view_count, 0) + 1
  WHERE id = shop_uuid;
END;
$$;

CREATE OR REPLACE FUNCTION public.increment_professional_job_offer_view_count(job_offer_uuid uuid)
RETURNS void
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
BEGIN
  UPDATE public.professional_job_offers
  SET view_count = COALESCE(view_count, 0) + 1
  WHERE id = job_offer_uuid;
END;
$$;

GRANT EXECUTE ON FUNCTION public.increment_shop_view_count(uuid) TO anon, authenticated;
GRANT EXECUTE ON FUNCTION public.increment_professional_job_offer_view_count(uuid) TO anon, authenticated;
