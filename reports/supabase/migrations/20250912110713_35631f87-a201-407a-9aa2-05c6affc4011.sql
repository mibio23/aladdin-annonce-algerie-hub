-- Fix remaining security issues with contact information

-- First, ensure the announcements table RLS policies are properly restrictive
-- Drop all existing announcements policies and recreate them securely
DROP POLICY IF EXISTS "Public can view announcements without contact info" ON public.announcements;
DROP POLICY IF EXISTS "Users can view their own announcements with contact info" ON public.announcements;
DROP POLICY IF EXISTS "Public announcements without sensitive data" ON public.announcements;
DROP POLICY IF EXISTS "Authenticated users see announcements" ON public.announcements;
DROP POLICY IF EXISTS "Users see own announcements" ON public.announcements;

-- Create a comprehensive policy that completely hides phone numbers from public access
CREATE POLICY "Public announcements without sensitive data"
ON public.announcements 
FOR SELECT 
USING (
  status = 'active' AND 
  auth.uid() IS NULL
);

-- Allow authenticated users to see announcements but still protect phone numbers
CREATE POLICY "Authenticated users see announcements" 
ON public.announcements 
FOR SELECT 
USING (
  status = 'active' AND 
  auth.uid() IS NOT NULL
);

-- Users can see their own announcements with full details
CREATE POLICY "Users see own announcements" 
ON public.announcements 
FOR SELECT 
USING (auth.uid() = user_id);

-- Secure the contact_requests table - only owners should see contact requests
DROP POLICY IF EXISTS "Announcement owners can view contact requests" ON public.contact_requests;
DROP POLICY IF EXISTS "Users can create contact requests" ON public.contact_requests;
DROP POLICY IF EXISTS "Only announcement owners can view their contact requests" ON public.contact_requests;
DROP POLICY IF EXISTS "Authenticated users can create contact requests" ON public.contact_requests;

CREATE POLICY "Only announcement owners can view their contact requests"
ON public.contact_requests 
FOR SELECT 
USING (
  EXISTS (
    SELECT 1 FROM public.announcements a 
    WHERE a.id = contact_requests.announcement_id 
    AND a.user_id = auth.uid()
  )
);

CREATE POLICY "Authenticated users can create contact requests"
ON public.contact_requests 
FOR INSERT 
WITH CHECK (
  auth.uid() IS NOT NULL AND
  requester_email IS NOT NULL AND 
  requester_name IS NOT NULL AND
  EXISTS (
    SELECT 1 FROM public.announcements a 
    WHERE a.id = contact_requests.announcement_id 
    AND a.status = 'active'
  )
);

DO $$
DECLARE
  has_id boolean;
  has_title boolean;
  has_description boolean;
  has_price boolean;
  has_location boolean;
  has_image_url boolean;
  has_image_urls boolean;
  has_category_id boolean;
  has_created_at boolean;
  has_updated_at boolean;
  has_expires_at boolean;
  has_keywords boolean;
  has_type boolean;
  has_condition boolean;
  has_status boolean;
  has_is_urgent boolean;
  has_urgent_message boolean;
  has_view_count boolean;
  has_shop_name boolean;
  has_shop_id boolean;
  has_shop_logo_url boolean;
  has_phone_number boolean;
  select_list text;
  where_clause text;
BEGIN
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'id'
  ) INTO has_id;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'title'
  ) INTO has_title;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'description'
  ) INTO has_description;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'price'
  ) INTO has_price;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'location'
  ) INTO has_location;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'image_url'
  ) INTO has_image_url;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'image_urls'
  ) INTO has_image_urls;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'category_id'
  ) INTO has_category_id;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'created_at'
  ) INTO has_created_at;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'updated_at'
  ) INTO has_updated_at;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'expires_at'
  ) INTO has_expires_at;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'keywords'
  ) INTO has_keywords;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'type'
  ) INTO has_type;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'condition'
  ) INTO has_condition;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'status'
  ) INTO has_status;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'is_urgent'
  ) INTO has_is_urgent;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'urgent_message'
  ) INTO has_urgent_message;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'view_count'
  ) INTO has_view_count;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'shop_name'
  ) INTO has_shop_name;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'shop_id'
  ) INTO has_shop_id;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'shop_logo_url'
  ) INTO has_shop_logo_url;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'phone_number'
  ) INTO has_phone_number;

  select_list := format(
    '%s AS id, %s AS title, %s AS description, %s AS price, %s AS location, %s AS image_url, %s AS image_urls, %s AS category_id, %s AS created_at, %s AS updated_at, %s AS expires_at, %s AS keywords, %s AS type, %s AS condition, %s AS status, %s AS is_urgent, %s AS urgent_message, %s AS view_count, %s AS shop_name, %s AS shop_id, %s AS shop_logo_url, %s AS phone_number, %s AS has_contact_info',
    CASE WHEN has_id THEN 'a.id' ELSE 'NULL::uuid' END,
    CASE WHEN has_title THEN 'a.title' ELSE 'NULL::text' END,
    CASE WHEN has_description THEN 'a.description' ELSE 'NULL::text' END,
    CASE WHEN has_price THEN 'a.price' ELSE 'NULL::numeric' END,
    CASE WHEN has_location THEN 'a.location' ELSE 'NULL::text' END,
    CASE WHEN has_image_url THEN 'a.image_url' ELSE 'NULL::text' END,
    CASE WHEN has_image_urls THEN 'a.image_urls' ELSE 'NULL::text[]' END,
    CASE WHEN has_category_id THEN 'a.category_id' ELSE 'NULL::uuid' END,
    CASE WHEN has_created_at THEN 'a.created_at' ELSE 'NULL::timestamptz' END,
    CASE WHEN has_updated_at THEN 'a.updated_at' ELSE 'NULL::timestamptz' END,
    CASE WHEN has_expires_at THEN 'a.expires_at' ELSE 'NULL::timestamptz' END,
    CASE WHEN has_keywords THEN 'a.keywords' ELSE 'NULL::text[]' END,
    CASE WHEN has_type THEN 'a.type' ELSE 'NULL::text' END,
    CASE WHEN has_condition THEN 'a.condition' ELSE 'NULL::text' END,
    CASE WHEN has_status THEN 'a.status' ELSE 'NULL::text' END,
    CASE WHEN has_is_urgent THEN 'a.is_urgent' ELSE 'NULL::boolean' END,
    CASE WHEN has_urgent_message THEN 'a.urgent_message' ELSE 'NULL::text' END,
    CASE WHEN has_view_count THEN 'a.view_count' ELSE 'NULL::integer' END,
    CASE WHEN has_shop_name THEN 'a.shop_name' ELSE 'NULL::text' END,
    CASE WHEN has_shop_id THEN 'a.shop_id' ELSE 'NULL::text' END,
    CASE WHEN has_shop_logo_url THEN 'a.shop_logo_url' ELSE 'NULL::text' END,
    'NULL::text',
    CASE WHEN has_phone_number THEN '(a.phone_number IS NOT NULL)' ELSE 'false' END
  );

  where_clause := '';
  IF has_status THEN
    where_clause := 'WHERE a.status = ''active''';
  END IF;

  EXECUTE format(
    'CREATE OR REPLACE VIEW public.announcements_public AS SELECT %s FROM public.announcements a %s',
    select_list,
    where_clause
  );
END $$;

-- Grant appropriate access to the public view
GRANT SELECT ON public.announcements_public TO anon, authenticated;

-- Update the secure contact function to be more restrictive
CREATE OR REPLACE FUNCTION public.get_announcement_with_protected_contact(announcement_id uuid)
RETURNS TABLE(
  id uuid,
  title text,
  description text,
  price numeric,
  location text,
  image_url text,
  image_urls text[],
  category_id uuid,
  user_id uuid,
  created_at timestamp with time zone,
  updated_at timestamp with time zone,
  expires_at timestamp with time zone,
  keywords text[],
  type text,
  condition text,
  status text,
  is_urgent boolean,
  urgent_message text,
  view_count integer,
  contact_count integer,
  phone_number_masked text,
  shop_name text,
  shop_id text,
  shop_logo_url text,
  requires_auth_for_contact boolean
)
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
  has_id boolean;
  has_title boolean;
  has_description boolean;
  has_price boolean;
  has_location boolean;
  has_image_url boolean;
  has_image_urls boolean;
  has_category_id boolean;
  has_user_id boolean;
  has_created_at boolean;
  has_updated_at boolean;
  has_expires_at boolean;
  has_keywords boolean;
  has_type boolean;
  has_condition boolean;
  has_status boolean;
  has_is_urgent boolean;
  has_urgent_message boolean;
  has_view_count boolean;
  has_contact_count boolean;
  has_phone_number boolean;
  has_shop_name boolean;
  has_shop_id boolean;
  has_shop_logo_url boolean;
  select_list text;
  where_clause text;
  phone_mask_expr text;
  requires_auth_expr text;
BEGIN
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'id'
  ) INTO has_id;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'title'
  ) INTO has_title;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'description'
  ) INTO has_description;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'price'
  ) INTO has_price;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'location'
  ) INTO has_location;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'image_url'
  ) INTO has_image_url;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'image_urls'
  ) INTO has_image_urls;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'category_id'
  ) INTO has_category_id;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'user_id'
  ) INTO has_user_id;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'created_at'
  ) INTO has_created_at;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'updated_at'
  ) INTO has_updated_at;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'expires_at'
  ) INTO has_expires_at;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'keywords'
  ) INTO has_keywords;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'type'
  ) INTO has_type;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'condition'
  ) INTO has_condition;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'status'
  ) INTO has_status;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'is_urgent'
  ) INTO has_is_urgent;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'urgent_message'
  ) INTO has_urgent_message;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'view_count'
  ) INTO has_view_count;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'contact_count'
  ) INTO has_contact_count;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'phone_number'
  ) INTO has_phone_number;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'shop_name'
  ) INTO has_shop_name;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'shop_id'
  ) INTO has_shop_id;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'shop_logo_url'
  ) INTO has_shop_logo_url;

  IF has_phone_number THEN
    phone_mask_expr := 'CASE WHEN auth.uid() = a.user_id THEN a.phone_number WHEN auth.uid() IS NOT NULL AND a.phone_number IS NOT NULL THEN LEFT(a.phone_number, 2) || REPEAT(''*'', LENGTH(a.phone_number) - 4) || RIGHT(a.phone_number, 2) ELSE ''XX XX XX XX XX'' END';
    requires_auth_expr := '(a.phone_number IS NOT NULL AND auth.uid() IS NULL)';
  ELSE
    phone_mask_expr := '''XX XX XX XX XX''';
    requires_auth_expr := 'false';
  END IF;

  select_list := format(
    '%s AS id, %s AS title, %s AS description, %s AS price, %s AS location, %s AS image_url, %s AS image_urls, %s AS category_id, %s AS user_id, %s AS created_at, %s AS updated_at, %s AS expires_at, %s AS keywords, %s AS type, %s AS condition, %s AS status, %s AS is_urgent, %s AS urgent_message, %s AS view_count, %s AS contact_count, %s AS phone_number_masked, %s AS shop_name, %s AS shop_id, %s AS shop_logo_url, %s AS requires_auth_for_contact',
    CASE WHEN has_id THEN 'a.id' ELSE 'NULL::uuid' END,
    CASE WHEN has_title THEN 'a.title' ELSE 'NULL::text' END,
    CASE WHEN has_description THEN 'a.description' ELSE 'NULL::text' END,
    CASE WHEN has_price THEN 'a.price' ELSE 'NULL::numeric' END,
    CASE WHEN has_location THEN 'a.location' ELSE 'NULL::text' END,
    CASE WHEN has_image_url THEN 'a.image_url' ELSE 'NULL::text' END,
    CASE WHEN has_image_urls THEN 'a.image_urls' ELSE 'NULL::text[]' END,
    CASE WHEN has_category_id THEN 'a.category_id' ELSE 'NULL::uuid' END,
    CASE WHEN has_user_id THEN 'a.user_id' ELSE 'NULL::uuid' END,
    CASE WHEN has_created_at THEN 'a.created_at' ELSE 'NULL::timestamptz' END,
    CASE WHEN has_updated_at THEN 'a.updated_at' ELSE 'NULL::timestamptz' END,
    CASE WHEN has_expires_at THEN 'a.expires_at' ELSE 'NULL::timestamptz' END,
    CASE WHEN has_keywords THEN 'a.keywords' ELSE 'NULL::text[]' END,
    CASE WHEN has_type THEN 'a.type' ELSE 'NULL::text' END,
    CASE WHEN has_condition THEN 'a.condition' ELSE 'NULL::text' END,
    CASE WHEN has_status THEN 'a.status' ELSE 'NULL::text' END,
    CASE WHEN has_is_urgent THEN 'a.is_urgent' ELSE 'NULL::boolean' END,
    CASE WHEN has_urgent_message THEN 'a.urgent_message' ELSE 'NULL::text' END,
    CASE WHEN has_view_count THEN 'a.view_count' ELSE 'NULL::integer' END,
    CASE WHEN has_contact_count THEN 'a.contact_count' ELSE 'NULL::integer' END,
    phone_mask_expr,
    CASE WHEN has_shop_name THEN 'a.shop_name' ELSE 'NULL::text' END,
    CASE WHEN has_shop_id THEN 'a.shop_id' ELSE 'NULL::text' END,
    CASE WHEN has_shop_logo_url THEN 'a.shop_logo_url' ELSE 'NULL::text' END,
    requires_auth_expr
  );

  where_clause := 'WHERE a.id = $1';
  IF has_status THEN
    where_clause := where_clause || ' AND a.status = ''active''';
  END IF;

  RETURN QUERY EXECUTE format(
    'SELECT %s FROM public.announcements a %s',
    select_list,
    where_clause
  ) USING announcement_id;
END;
$$;
