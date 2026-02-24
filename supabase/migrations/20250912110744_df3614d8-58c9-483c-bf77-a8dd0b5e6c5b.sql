-- Fix the security definer view issue
DROP VIEW IF EXISTS public.announcements_public;

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
    '%s AS id, %s AS title, %s AS description, %s AS price, %s AS location, %s AS image_url, %s AS image_urls, %s AS category_id, %s AS created_at, %s AS updated_at, %s AS expires_at, %s AS keywords, %s AS type, %s AS condition, %s AS status, %s AS is_urgent, %s AS urgent_message, %s AS view_count, %s AS shop_name, %s AS shop_id, %s AS shop_logo_url, %s AS has_contact_info',
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
    CASE WHEN has_phone_number THEN '(a.phone_number IS NOT NULL)' ELSE 'false' END
  );

  where_clause := '';
  IF has_status THEN
    where_clause := 'WHERE a.status = ''active''';
  END IF;

  EXECUTE format(
    'CREATE VIEW public.announcements_public AS SELECT %s FROM public.announcements a %s',
    select_list,
    where_clause
  );
END $$;
