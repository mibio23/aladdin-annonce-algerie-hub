ALTER TABLE public.announcements
  ADD COLUMN IF NOT EXISTS premium_end_at TIMESTAMPTZ;

