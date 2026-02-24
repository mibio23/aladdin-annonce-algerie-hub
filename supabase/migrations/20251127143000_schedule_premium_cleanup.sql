-- Schedule daily premium cleanup using pg_cron if available
DO $$
BEGIN
  BEGIN
    PERFORM cron.schedule('daily-premium-cleanup', '0 3 * * *', $$
      UPDATE public.announcements
      SET type = 'normal'
      WHERE type = 'premium'
        AND premium_end_at IS NOT NULL
        AND premium_end_at < now();
    $$);
  EXCEPTION
    WHEN undefined_function THEN
      NULL;
  END;
END $$;
