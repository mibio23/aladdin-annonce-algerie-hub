-- Correction CRITIQUE: Ajouter les permissions de lecture manquantes
-- Ces GRANT sont nécessaires pour que le site se charge correctement

-- Permissions pour les bannières publicitaires
DO $$
BEGIN
  IF to_regclass('public.advertising_banners') IS NOT NULL THEN
    EXECUTE 'GRANT SELECT ON public.advertising_banners TO anon, authenticated';
  END IF;
  IF to_regclass('public.advertising_banner_translations') IS NOT NULL THEN
    EXECUTE 'GRANT SELECT ON public.advertising_banner_translations TO anon, authenticated';
  END IF;
  IF to_regclass('public.announcements') IS NOT NULL THEN
    EXECUTE 'GRANT SELECT ON public.announcements TO anon, authenticated';
  END IF;
  IF to_regclass('public.categories') IS NOT NULL THEN
    EXECUTE 'GRANT SELECT ON public.categories TO anon, authenticated';
  END IF;
  IF to_regclass('public.shops') IS NOT NULL THEN
    EXECUTE 'GRANT SELECT ON public.shops TO anon, authenticated';
  END IF;
  IF to_regclass('public.shop_translations') IS NOT NULL THEN
    EXECUTE 'GRANT SELECT ON public.shop_translations TO anon, authenticated';
  END IF;
  IF to_regclass('public.shop_images') IS NOT NULL THEN
    EXECUTE 'GRANT SELECT ON public.shop_images TO anon, authenticated';
  END IF;
END $$;
