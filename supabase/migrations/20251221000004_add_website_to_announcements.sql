BEGIN;

ALTER TABLE public.announcements
ADD COLUMN IF NOT EXISTS website text;

COMMIT;
