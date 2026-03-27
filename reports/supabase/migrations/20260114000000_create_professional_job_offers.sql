CREATE TABLE IF NOT EXISTS public.professional_job_offers (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  user_id UUID REFERENCES auth.users(id) ON DELETE CASCADE NOT NULL,
  title TEXT NOT NULL,
  description TEXT,
  profession TEXT NOT NULL,
  specialty TEXT,
  experience_level TEXT,
  availability TEXT,
  salary NUMERIC,
  currency TEXT,
  phone_numbers TEXT[],
  email TEXT,
  wilaya TEXT,
  commune TEXT,
  location TEXT,
  logo_url TEXT,
  images TEXT[],
  is_graduate BOOLEAN,
  home_service BOOLEAN,
  is_urgent BOOLEAN,
  is_active BOOLEAN NOT NULL DEFAULT true,
  expires_at TIMESTAMPTZ,
  view_count INTEGER NOT NULL DEFAULT 0,
  global_listing_number BIGINT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

ALTER TABLE public.professional_job_offers ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Professional job offers are viewable by everyone"
  ON public.professional_job_offers
  FOR SELECT
  USING (true);

CREATE POLICY "Users can insert their own professional job offers"
  ON public.professional_job_offers
  FOR INSERT
  WITH CHECK (auth.uid() = user_id);

CREATE POLICY "Users can update their own professional job offers"
  ON public.professional_job_offers
  FOR UPDATE
  USING (auth.uid() = user_id);

CREATE POLICY "Users can delete their own professional job offers"
  ON public.professional_job_offers
  FOR DELETE
  USING (auth.uid() = user_id);

CREATE INDEX IF NOT EXISTS idx_professional_job_offers_user_id
  ON public.professional_job_offers(user_id);

CREATE INDEX IF NOT EXISTS idx_professional_job_offers_is_active
  ON public.professional_job_offers(is_active);

DROP TRIGGER IF EXISTS update_professional_job_offers_updated_at ON public.professional_job_offers;
CREATE TRIGGER update_professional_job_offers_updated_at
  BEFORE UPDATE ON public.professional_job_offers
  FOR EACH ROW
  EXECUTE FUNCTION public.update_updated_at_column();
