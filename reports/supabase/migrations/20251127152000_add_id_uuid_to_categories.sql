ALTER TABLE public.categories
  ADD COLUMN IF NOT EXISTS id_uuid UUID UNIQUE DEFAULT gen_random_uuid();

ALTER TABLE public.categories
  ADD COLUMN IF NOT EXISTS parent_id_uuid UUID;

CREATE UNIQUE INDEX IF NOT EXISTS idx_categories_id_uuid ON public.categories(id_uuid);

CREATE OR REPLACE FUNCTION public.sync_categories_uuid_refs()
RETURNS TRIGGER AS $$
BEGIN
  IF NEW.parent_id_uuid IS NOT NULL AND NEW.parent_id IS NULL THEN
    SELECT id INTO NEW.parent_id FROM public.categories WHERE id_uuid = NEW.parent_id_uuid;
  END IF;
  IF NEW.parent_id IS NOT NULL AND NEW.parent_id_uuid IS NULL THEN
    SELECT id_uuid INTO NEW.parent_id_uuid FROM public.categories WHERE id = NEW.parent_id;
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS sync_categories_uuid_refs_trigger ON public.categories;
CREATE TRIGGER sync_categories_uuid_refs_trigger
  BEFORE INSERT OR UPDATE ON public.categories
  FOR EACH ROW EXECUTE FUNCTION public.sync_categories_uuid_refs();

UPDATE public.categories AS child
SET parent_id_uuid = parent.id_uuid
FROM public.categories AS parent
WHERE child.parent_id = parent.id
  AND child.parent_id_uuid IS NULL;
