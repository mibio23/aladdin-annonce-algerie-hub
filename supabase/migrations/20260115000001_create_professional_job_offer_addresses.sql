CREATE TABLE IF NOT EXISTS public.professional_job_offer_addresses (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  job_offer_id UUID REFERENCES public.professional_job_offers(id) ON DELETE CASCADE NOT NULL UNIQUE,
  address TEXT NOT NULL,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

ALTER TABLE public.professional_job_offer_addresses ENABLE ROW LEVEL SECURITY;

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1
    FROM pg_policies
    WHERE schemaname = 'public'
      AND tablename = 'professional_job_offer_addresses'
      AND policyname = 'Job offer addresses are viewable by everyone'
  ) THEN
    EXECUTE 'CREATE POLICY "Job offer addresses are viewable by everyone"
      ON public.professional_job_offer_addresses
      FOR SELECT
      USING (true)';
  END IF;
END
$$;

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1
    FROM pg_policies
    WHERE schemaname = 'public'
      AND tablename = 'professional_job_offer_addresses'
      AND policyname = 'Users can insert their own job offer address'
  ) THEN
    EXECUTE 'CREATE POLICY "Users can insert their own job offer address"
      ON public.professional_job_offer_addresses
      FOR INSERT
      WITH CHECK (
        auth.uid() = (
          SELECT user_id FROM public.professional_job_offers WHERE id = job_offer_id
        )
      )';
  END IF;
END
$$;

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1
    FROM pg_policies
    WHERE schemaname = 'public'
      AND tablename = 'professional_job_offer_addresses'
      AND policyname = 'Users can update their own job offer address'
  ) THEN
    EXECUTE 'CREATE POLICY "Users can update their own job offer address"
      ON public.professional_job_offer_addresses
      FOR UPDATE
      USING (
        auth.uid() = (
          SELECT user_id FROM public.professional_job_offers WHERE id = job_offer_id
        )
      )
      WITH CHECK (
        auth.uid() = (
          SELECT user_id FROM public.professional_job_offers WHERE id = job_offer_id
        )
      )';
  END IF;
END
$$;

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1
    FROM pg_policies
    WHERE schemaname = 'public'
      AND tablename = 'professional_job_offer_addresses'
      AND policyname = 'Users can delete their own job offer address'
  ) THEN
    EXECUTE 'CREATE POLICY "Users can delete their own job offer address"
      ON public.professional_job_offer_addresses
      FOR DELETE
      USING (
        auth.uid() = (
          SELECT user_id FROM public.professional_job_offers WHERE id = job_offer_id
        )
      )';
  END IF;
END
$$;

CREATE INDEX IF NOT EXISTS idx_professional_job_offer_addresses_job_offer_id
ON public.professional_job_offer_addresses(job_offer_id);
