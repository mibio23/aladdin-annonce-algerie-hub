
-- Allow anon (public) to insert/update/delete categories
-- This is required for the migration script to update existing categories
CREATE POLICY "Anon can manage categories"
ON public.categories
FOR ALL
TO anon
USING (true)
WITH CHECK (true);
