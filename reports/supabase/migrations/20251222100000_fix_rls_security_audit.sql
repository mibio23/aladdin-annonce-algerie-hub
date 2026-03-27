DO $$
BEGIN
  IF to_regclass('public.webhook_logs') IS NOT NULL THEN
    EXECUTE 'DROP POLICY IF EXISTS "Admins can view webhook logs" ON public.webhook_logs';
    EXECUTE 'DROP POLICY IF EXISTS "Service role can manage webhook logs" ON public.webhook_logs';

    EXECUTE $pol$
      CREATE POLICY "Admins can view webhook logs"
      ON public.webhook_logs
      FOR SELECT
      TO authenticated
      USING (
        EXISTS (
          SELECT 1
          FROM public.user_roles ur
          WHERE ur.user_id = auth.uid()
            AND ur.role = 'admin'
            AND ur.is_active = true
        )
      )
    $pol$;

    EXECUTE $pol$
      CREATE POLICY "Service role can manage webhook logs"
      ON public.webhook_logs
      FOR ALL
      TO service_role
      USING (true)
      WITH CHECK (true)
    $pol$;
  END IF;
END $$;

DO $$
BEGIN
  IF to_regclass('public.notification_delivery_log') IS NOT NULL THEN
    EXECUTE 'DROP POLICY IF EXISTS "System can manage delivery logs" ON public.notification_delivery_log';
    EXECUTE 'DROP POLICY IF EXISTS "Admins can view delivery logs" ON public.notification_delivery_log';
    EXECUTE 'DROP POLICY IF EXISTS "Service role can manage delivery logs" ON public.notification_delivery_log';

    EXECUTE $pol$
      CREATE POLICY "Admins can view delivery logs"
      ON public.notification_delivery_log
      FOR SELECT
      TO authenticated
      USING (
        EXISTS (
          SELECT 1
          FROM public.user_roles ur
          WHERE ur.user_id = auth.uid()
            AND ur.role = 'admin'
            AND ur.is_active = true
        )
      )
    $pol$;

    EXECUTE $pol$
      CREATE POLICY "Service role can manage delivery logs"
      ON public.notification_delivery_log
      FOR ALL
      TO service_role
      USING (true)
      WITH CHECK (true)
    $pol$;
  END IF;
END $$;

DO $$
BEGIN
  IF to_regclass('public.notifications') IS NOT NULL THEN
    EXECUTE 'DROP POLICY IF EXISTS "System can create notifications" ON public.notifications';
    EXECUTE 'DROP POLICY IF EXISTS "Admins can create notifications" ON public.notifications';
    EXECUTE 'DROP POLICY IF EXISTS "Service role can manage notifications" ON public.notifications';

    EXECUTE $pol$
      CREATE POLICY "Admins can create notifications"
      ON public.notifications
      FOR INSERT
      TO authenticated
      WITH CHECK (
        EXISTS (
          SELECT 1
          FROM public.user_roles ur
          WHERE ur.user_id = auth.uid()
            AND ur.role = 'admin'
            AND ur.is_active = true
        )
      )
    $pol$;

    EXECUTE $pol$
      CREATE POLICY "Service role can manage notifications"
      ON public.notifications
      FOR ALL
      TO service_role
      USING (true)
      WITH CHECK (true)
    $pol$;
  END IF;
END $$;

DO $$
BEGIN
  IF to_regclass('public.advertising_banners') IS NOT NULL THEN
    EXECUTE 'DROP POLICY IF EXISTS "Authenticated users can view all banners" ON public.advertising_banners';
    EXECUTE 'DROP POLICY IF EXISTS "Authenticated users can create banners" ON public.advertising_banners';
    EXECUTE 'DROP POLICY IF EXISTS "Authenticated users can update banners" ON public.advertising_banners';
    EXECUTE 'DROP POLICY IF EXISTS "Authenticated users can delete banners" ON public.advertising_banners';
    EXECUTE 'DROP POLICY IF EXISTS "Only creators can manage banners" ON public.advertising_banners';
    EXECUTE 'DROP POLICY IF EXISTS "Admins can manage banners" ON public.advertising_banners';

    EXECUTE $pol$
      CREATE POLICY "Admins can manage banners"
      ON public.advertising_banners
      FOR ALL
      TO authenticated
      USING (
        EXISTS (
          SELECT 1
          FROM public.user_roles ur
          WHERE ur.user_id = auth.uid()
            AND ur.role = 'admin'
            AND ur.is_active = true
        )
      )
      WITH CHECK (
        EXISTS (
          SELECT 1
          FROM public.user_roles ur
          WHERE ur.user_id = auth.uid()
            AND ur.role = 'admin'
            AND ur.is_active = true
        )
      )
    $pol$;
  END IF;
END $$;

DO $$
BEGIN
  IF to_regclass('public.advertising_banner_translations') IS NOT NULL THEN
    EXECUTE 'DROP POLICY IF EXISTS "Authenticated users can manage banner translations" ON public.advertising_banner_translations';
    EXECUTE 'DROP POLICY IF EXISTS "Admins can manage banner translations" ON public.advertising_banner_translations';

    EXECUTE $pol$
      CREATE POLICY "Admins can manage banner translations"
      ON public.advertising_banner_translations
      FOR ALL
      TO authenticated
      USING (
        EXISTS (
          SELECT 1
          FROM public.user_roles ur
          WHERE ur.user_id = auth.uid()
            AND ur.role = 'admin'
            AND ur.is_active = true
        )
      )
      WITH CHECK (
        EXISTS (
          SELECT 1
          FROM public.user_roles ur
          WHERE ur.user_id = auth.uid()
            AND ur.role = 'admin'
            AND ur.is_active = true
        )
      )
    $pol$;
  END IF;
END $$;

DO $$
BEGIN
  IF to_regclass('storage.objects') IS NOT NULL THEN
    EXECUTE 'DROP POLICY IF EXISTS "Anyone can view banner images" ON storage.objects';
    EXECUTE 'DROP POLICY IF EXISTS "Banner images are publicly accessible" ON storage.objects';
    EXECUTE 'DROP POLICY IF EXISTS "Authenticated users can upload banner images" ON storage.objects';
    EXECUTE 'DROP POLICY IF EXISTS "Authenticated users can update banner images" ON storage.objects';
    EXECUTE 'DROP POLICY IF EXISTS "Authenticated users can delete banner images" ON storage.objects';
    EXECUTE 'DROP POLICY IF EXISTS "Admins can manage banner images" ON storage.objects';
    EXECUTE 'DROP POLICY IF EXISTS "Public can view banner images" ON storage.objects';
    EXECUTE 'DROP POLICY IF EXISTS "Admins can upload banner images" ON storage.objects';
    EXECUTE 'DROP POLICY IF EXISTS "Admins can update banner images" ON storage.objects';
    EXECUTE 'DROP POLICY IF EXISTS "Admins can delete banner images" ON storage.objects';
    EXECUTE 'DROP POLICY IF EXISTS "Service role can manage banner images" ON storage.objects';

    EXECUTE $pol$
      CREATE POLICY "Public can view banner images"
      ON storage.objects
      FOR SELECT
      USING (bucket_id = 'banner-images')
    $pol$;

    EXECUTE $pol$
      CREATE POLICY "Admins can upload banner images"
      ON storage.objects
      FOR INSERT
      TO authenticated
      WITH CHECK (
        bucket_id = 'banner-images'
        AND EXISTS (
          SELECT 1
          FROM public.user_roles ur
          WHERE ur.user_id = auth.uid()
            AND ur.role = 'admin'
            AND ur.is_active = true
        )
      )
    $pol$;

    EXECUTE $pol$
      CREATE POLICY "Admins can update banner images"
      ON storage.objects
      FOR UPDATE
      TO authenticated
      USING (
        bucket_id = 'banner-images'
        AND EXISTS (
          SELECT 1
          FROM public.user_roles ur
          WHERE ur.user_id = auth.uid()
            AND ur.role = 'admin'
            AND ur.is_active = true
        )
      )
      WITH CHECK (
        bucket_id = 'banner-images'
        AND EXISTS (
          SELECT 1
          FROM public.user_roles ur
          WHERE ur.user_id = auth.uid()
            AND ur.role = 'admin'
            AND ur.is_active = true
        )
      )
    $pol$;

    EXECUTE $pol$
      CREATE POLICY "Admins can delete banner images"
      ON storage.objects
      FOR DELETE
      TO authenticated
      USING (
        bucket_id = 'banner-images'
        AND EXISTS (
          SELECT 1
          FROM public.user_roles ur
          WHERE ur.user_id = auth.uid()
            AND ur.role = 'admin'
            AND ur.is_active = true
        )
      )
    $pol$;

    EXECUTE $pol$
      CREATE POLICY "Service role can manage banner images"
      ON storage.objects
      FOR ALL
      TO service_role
      USING (bucket_id = 'banner-images')
      WITH CHECK (bucket_id = 'banner-images')
    $pol$;
  END IF;
END $$;
