ALTER TABLE public.categories ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.category_translations ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Anon can manage categories" ON public.categories;
DROP POLICY IF EXISTS "Only admins can insert categories" ON public.categories;
DROP POLICY IF EXISTS "Only admins can update categories" ON public.categories;
DROP POLICY IF EXISTS "Admins can manage categories" ON public.categories;
DROP POLICY IF EXISTS "Everyone can view active categories" ON public.categories;
DROP POLICY IF EXISTS "Categories are viewable by everyone" ON public.categories;
DROP POLICY IF EXISTS "Authenticated users can view all categories" ON public.categories;
DROP POLICY IF EXISTS "Allow anon users to delete categories" ON public.categories;
DROP POLICY IF EXISTS "Allow anon users to insert categories" ON public.categories;
DROP POLICY IF EXISTS "Public categories are viewable by everyone" ON public.categories;

CREATE POLICY "Categories are viewable by everyone"
ON public.categories
FOR SELECT
USING (is_active = true);

CREATE POLICY "Admins can manage categories"
ON public.categories
FOR ALL
TO authenticated
USING (
  EXISTS (
    SELECT 1
    FROM public.user_roles ur
    WHERE ur.user_id = auth.uid()
      AND ur.role = 'admin'
      AND ur.is_active = true
  )
)
WITH CHECK (
  EXISTS (
    SELECT 1
    FROM public.user_roles ur
    WHERE ur.user_id = auth.uid()
      AND ur.role = 'admin'
      AND ur.is_active = true
  )
);

DROP POLICY IF EXISTS "Anon can manage category_translations" ON public.category_translations;
DROP POLICY IF EXISTS "Authenticated can manage category_translations" ON public.category_translations;
DROP POLICY IF EXISTS "Category translations are viewable by everyone" ON public.category_translations;
DROP POLICY IF EXISTS "Admins can manage category_translations" ON public.category_translations;
DROP POLICY IF EXISTS "Allow public insert translations" ON public.category_translations;
DROP POLICY IF EXISTS "Allow public update translations" ON public.category_translations;

CREATE POLICY "Category translations are viewable by everyone"
ON public.category_translations
FOR SELECT
USING (true);

CREATE POLICY "Admins can manage category_translations"
ON public.category_translations
FOR ALL
TO authenticated
USING (
  EXISTS (
    SELECT 1
    FROM public.user_roles ur
    WHERE ur.user_id = auth.uid()
      AND ur.role = 'admin'
      AND ur.is_active = true
  )
)
WITH CHECK (
  EXISTS (
    SELECT 1
    FROM public.user_roles ur
    WHERE ur.user_id = auth.uid()
      AND ur.role = 'admin'
      AND ur.is_active = true
  )
);
