BEGIN;

ALTER TABLE public.announcements
ADD COLUMN IF NOT EXISTS deleted_at timestamptz;

CREATE INDEX IF NOT EXISTS idx_announcements_deleted_at
ON public.announcements (deleted_at)
WHERE deleted_at IS NOT NULL;

CREATE OR REPLACE FUNCTION public.purge_deleted_announcements()
RETURNS void
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path TO 'public'
AS $$
BEGIN
  DELETE FROM public.announcements
  WHERE status = 'deleted'
    AND shop_id IS NULL
    AND deleted_at IS NOT NULL
    AND deleted_at < now() - INTERVAL '30 days';
END;
$$;

COMMIT;

NOTIFY pgrst, 'reload schema';
