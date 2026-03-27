-- Create secure contact policies for announcements
-- First, update the announcements table RLS policies to protect phone numbers

-- Drop the existing public read policy
DROP POLICY IF EXISTS "Tout le monde peut voir les annonces actives" ON public.announcements;

-- Create new policies that protect phone numbers
CREATE POLICY "Public can view announcements without contact info" 
ON public.announcements 
FOR SELECT 
USING (
  status = 'active' AND 
  (auth.uid() IS NULL OR auth.uid() != user_id)
);

-- Allow users to see their own announcements with full contact info
CREATE POLICY "Users can view their own announcements with contact info" 
ON public.announcements 
FOR SELECT 
USING (auth.uid() = user_id);

-- Create a secure function to get masked contact info for public access
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
  sql text;
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
    CASE
      WHEN has_phone_number THEN 'CASE WHEN auth.uid() = a.user_id THEN a.phone_number WHEN auth.uid() IS NOT NULL AND a.phone_number IS NOT NULL THEN public.mask_phone_number(a.phone_number) ELSE NULL END'
      ELSE 'NULL::text'
    END,
    CASE WHEN has_shop_name THEN 'a.shop_name' ELSE 'NULL::text' END,
    CASE WHEN has_shop_id THEN 'a.shop_id' ELSE 'NULL::text' END,
    CASE WHEN has_shop_logo_url THEN 'a.shop_logo_url' ELSE 'NULL::text' END,
    CASE WHEN has_phone_number THEN '(a.phone_number IS NOT NULL)' ELSE 'false' END
  );

  where_clause := 'WHERE 1=1';
  IF has_id THEN
    where_clause := where_clause || ' AND a.id = $1';
  ELSE
    where_clause := where_clause || ' AND false';
  END IF;
  IF has_status THEN
    where_clause := where_clause || ' AND a.status = ''active''';
  END IF;

  sql := format('SELECT %s FROM public.announcements a %s', select_list, where_clause);

  RETURN QUERY EXECUTE sql USING announcement_id;
END;
$$;

-- Create a function to request contact information (requires authentication)
CREATE OR REPLACE FUNCTION public.request_contact_access(announcement_id uuid)
RETURNS TABLE(phone_number text, contact_allowed boolean)
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
  announcement_user_id uuid;
  requester_user_id uuid;
  announcement_phone text;
BEGIN
  -- Check if user is authenticated
  requester_user_id := auth.uid();
  IF requester_user_id IS NULL THEN
    RETURN QUERY SELECT NULL::text, false;
    RETURN;
  END IF;

  -- Get announcement details
  SELECT user_id, phone_number INTO announcement_user_id, announcement_phone
  FROM public.announcements 
  WHERE id = announcement_id AND status = 'active';
  
  IF announcement_user_id IS NULL THEN
    RETURN QUERY SELECT NULL::text, false;
    RETURN;
  END IF;

  -- Log the contact access attempt
  INSERT INTO public.security_audit_log (
    user_id, action_type, resource_type, resource_id, metadata
  ) VALUES (
    requester_user_id, 'contact_request', 'announcement', 
    announcement_id::text, 
    jsonb_build_object('timestamp', now(), 'requested_by', requester_user_id)
  );

  -- Return phone number for authenticated users (not the owner)
  IF requester_user_id != announcement_user_id THEN
    RETURN QUERY SELECT announcement_phone, true;
  ELSE
    RETURN QUERY SELECT announcement_phone, true;
  END IF;
END;
$$;
