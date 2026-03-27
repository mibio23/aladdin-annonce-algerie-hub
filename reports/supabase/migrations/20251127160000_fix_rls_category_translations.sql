
-- Enable RLS on category_translations if not already enabled
ALTER TABLE public.category_translations ENABLE ROW LEVEL SECURITY;

-- Allow anon (public) to insert/update category_translations
-- This is required for the migration script to populate translations
CREATE POLICY "Anon can manage category_translations"
ON public.category_translations
FOR ALL
TO anon
USING (true)
WITH CHECK (true);

-- Allow authenticated users as well
CREATE POLICY "Authenticated can manage category_translations"
ON public.category_translations
FOR ALL
TO authenticated
USING (true)
WITH CHECK (true);
