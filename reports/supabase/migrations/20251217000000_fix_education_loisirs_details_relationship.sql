DO $$
DECLARE
  announcements_id_udt text;
  details_announcement_id_udt text;
  details_count bigint;
  table_exists boolean;
BEGIN
  SELECT to_regclass('public.education_loisirs_details') IS NOT NULL INTO table_exists;
  IF NOT table_exists THEN
    RETURN;
  END IF;

  SELECT udt_name
  INTO announcements_id_udt
  FROM information_schema.columns
  WHERE table_schema = 'public'
    AND table_name = 'announcements'
    AND column_name = 'id';

  SELECT udt_name
  INTO details_announcement_id_udt
  FROM information_schema.columns
  WHERE table_schema = 'public'
    AND table_name = 'education_loisirs_details'
    AND column_name = 'announcement_id';

  IF announcements_id_udt IS NULL THEN
    RETURN;
  END IF;

  EXECUTE 'SELECT count(*) FROM public.education_loisirs_details' INTO details_count;

  IF details_announcement_id_udt IS NULL THEN
    IF details_count = 0 THEN
      EXECUTE format(
        'ALTER TABLE public.education_loisirs_details ADD COLUMN announcement_id %I NOT NULL',
        announcements_id_udt
      );
    ELSE
      EXECUTE format(
        'ALTER TABLE public.education_loisirs_details ADD COLUMN announcement_id %I',
        announcements_id_udt
      );
    END IF;

    details_announcement_id_udt := announcements_id_udt;
  END IF;

  IF announcements_id_udt <> details_announcement_id_udt AND details_count = 0 THEN
    EXECUTE format(
      'ALTER TABLE public.education_loisirs_details ALTER COLUMN announcement_id TYPE %I USING announcement_id::%I',
      announcements_id_udt,
      announcements_id_udt
    );
  END IF;

  IF NOT EXISTS (
    SELECT 1
    FROM pg_constraint c
    JOIN pg_class r ON r.oid = c.conrelid
    JOIN pg_namespace n ON n.oid = r.relnamespace
    WHERE n.nspname = 'public'
      AND r.relname = 'education_loisirs_details'
      AND c.conname = 'education_loisirs_details_announcement_id_fkey'
  ) THEN
    EXECUTE 'ALTER TABLE public.education_loisirs_details ADD CONSTRAINT education_loisirs_details_announcement_id_fkey FOREIGN KEY (announcement_id) REFERENCES public.announcements(id) ON DELETE CASCADE';
  END IF;

  EXECUTE 'CREATE UNIQUE INDEX IF NOT EXISTS education_loisirs_details_announcement_id_key ON public.education_loisirs_details(announcement_id)';
END $$;

NOTIFY pgrst, 'reload schema';
