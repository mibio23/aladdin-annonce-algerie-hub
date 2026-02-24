BEGIN;

DROP POLICY IF EXISTS "Authenticated users can view active announcements" ON public.announcements;

CREATE POLICY "Authenticated users can view active announcements"
ON public.announcements
FOR SELECT
TO authenticated
USING (status = 'active');

COMMIT;
