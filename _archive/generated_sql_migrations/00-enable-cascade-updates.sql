BEGIN;

-- Permettre la mise à jour des IDs (UUID -> Text) sans casser les liens
-- Announcements
ALTER TABLE public.announcements DROP CONSTRAINT IF EXISTS fk_announcements_category;
ALTER TABLE public.announcements ADD CONSTRAINT fk_announcements_category 
    FOREIGN KEY (category_id) REFERENCES public.categories(id) ON UPDATE CASCADE ON DELETE SET NULL;

-- Categories (Parent)
ALTER TABLE public.categories DROP CONSTRAINT IF EXISTS categories_parent_id_fkey;
ALTER TABLE public.categories ADD CONSTRAINT categories_parent_id_fkey 
    FOREIGN KEY (parent_id) REFERENCES public.categories(id) ON UPDATE CASCADE ON DELETE SET NULL;

-- Translations
ALTER TABLE public.category_translations DROP CONSTRAINT IF EXISTS category_translations_category_id_fkey;
ALTER TABLE public.category_translations ADD CONSTRAINT category_translations_category_id_fkey 
    FOREIGN KEY (category_id) REFERENCES public.categories(id) ON UPDATE CASCADE ON DELETE CASCADE;

-- Images
ALTER TABLE IF EXISTS public.category_images DROP CONSTRAINT IF EXISTS category_images_category_id_fkey;
ALTER TABLE IF EXISTS public.category_images ADD CONSTRAINT category_images_category_id_fkey 
    FOREIGN KEY (category_id) REFERENCES public.categories(id) ON UPDATE CASCADE ON DELETE CASCADE;

-- Tags
ALTER TABLE IF EXISTS public.category_tags DROP CONSTRAINT IF EXISTS category_tags_category_id_fkey;
ALTER TABLE IF EXISTS public.category_tags ADD CONSTRAINT category_tags_category_id_fkey 
    FOREIGN KEY (category_id) REFERENCES public.categories(id) ON UPDATE CASCADE ON DELETE CASCADE;

COMMIT;
