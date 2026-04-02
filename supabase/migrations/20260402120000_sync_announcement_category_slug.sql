CREATE OR REPLACE FUNCTION public.sync_announcement_category_slug()
RETURNS TRIGGER AS $$
BEGIN
  IF NEW.category_id IS NULL THEN
    NEW.category_slug := NULL;
    RETURN NEW;
  END IF;

  SELECT c.slug
  INTO NEW.category_slug
  FROM public.categories c
  WHERE c.id = NEW.category_id
  LIMIT 1;

  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS sync_announcement_category_slug_trigger ON public.announcements;
CREATE TRIGGER sync_announcement_category_slug_trigger
  BEFORE INSERT OR UPDATE OF category_id, category_slug ON public.announcements
  FOR EACH ROW
  EXECUTE FUNCTION public.sync_announcement_category_slug();
