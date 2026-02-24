ALTER TABLE public.profiles
  ADD COLUMN IF NOT EXISTS referral_points INTEGER NOT NULL DEFAULT 0,
  ADD COLUMN IF NOT EXISTS referral_count INTEGER NOT NULL DEFAULT 0;

ALTER TABLE public.profiles
  ADD CONSTRAINT profiles_referral_points_non_negative CHECK (referral_points >= 0);

ALTER TABLE public.profiles
  ADD CONSTRAINT profiles_referral_count_non_negative CHECK (referral_count >= 0);

