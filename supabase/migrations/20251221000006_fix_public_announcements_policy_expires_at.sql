BEGIN;

DROP POLICY IF EXISTS "Public can view active announcements" ON public.announcements;
DROP POLICY IF EXISTS "Everyone can view active announcements" ON public.announcements;

CREATE POLICY "Public can view active announcements"
ON public.announcements
FOR SELECT
TO public
USING (
  status = 'active'
  AND (expires_at IS NULL OR expires_at > now())
);

COMMIT;
