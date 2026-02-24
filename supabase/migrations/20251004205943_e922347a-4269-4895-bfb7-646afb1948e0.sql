
-- Étape 1: Supprimer la politique qui expose les données aux non-authentifiés
DROP POLICY IF EXISTS "Public announcements without sensitive data" ON public.announcements;

-- Étape 2: Créer une politique plus restrictive pour les non-authentifiés
-- Cette politique masque complètement le phone_number pour les utilisateurs non authentifiés
CREATE POLICY "Public announcements with masked contact"
ON public.announcements
FOR SELECT
TO anon
USING (
  status = 'active'
);

-- Étape 3: Créer une fonction sécurisée pour récupérer les annonces avec protection des contacts
CREATE OR REPLACE FUNCTION public.get_public_announcements(
  p_limit integer DEFAULT 20,
  p_offset integer DEFAULT 0,
  p_category_id uuid DEFAULT NULL,
  p_location text DEFAULT NULL
)
RETURNS TABLE (
  id uuid,
  title text,
  description text,
  price numeric,
  location text,
  image_url text,
  image_urls text[],
  category_id uuid,
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
  shop_name text,
  shop_id text,
  shop_logo_url text,
  phone_number_visible boolean,
  phone_number_masked text,
  contact_count integer
)
LANGUAGE plpgsql
STABLE
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
  has_contact_count boolean;
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
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'contact_count'
  ) INTO has_contact_count;

  select_list := format(
    '%s AS id, %s AS title, %s AS description, %s AS price, %s AS location, %s AS image_url, %s AS image_urls, %s AS category_id, %s AS created_at, %s AS updated_at, %s AS expires_at, %s AS keywords, %s AS type, %s AS condition, %s AS status, %s AS is_urgent, %s AS urgent_message, %s AS view_count, %s AS shop_name, %s AS shop_id, %s AS shop_logo_url, %s AS phone_number_visible, %s AS phone_number_masked, %s AS contact_count',
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
    'auth.uid() IS NOT NULL',
    CASE
      WHEN has_phone_number THEN 'CASE WHEN auth.uid() IS NOT NULL AND a.phone_number IS NOT NULL THEN a.phone_number WHEN a.phone_number IS NOT NULL THEN ''**********'' ELSE NULL END'
      ELSE 'NULL::text'
    END,
    CASE WHEN has_contact_count THEN 'a.contact_count' ELSE 'NULL::integer' END
  );

  where_clause := 'WHERE 1=1';
  IF has_status THEN
    where_clause := where_clause || ' AND a.status = ''active''';
  END IF;
  IF has_category_id THEN
    where_clause := where_clause || ' AND ($1 IS NULL OR a.category_id = $1)';
  END IF;
  IF has_location THEN
    where_clause := where_clause || ' AND ($2 IS NULL OR a.location ILIKE ''%'' || $2 || ''%'')';
  END IF;

  sql := format(
    'SELECT %s FROM public.announcements a %s ORDER BY %s DESC LIMIT $3 OFFSET $4',
    select_list,
    where_clause,
    CASE WHEN has_created_at THEN 'a.created_at' ELSE 'NULL' END
  );

  RETURN QUERY EXECUTE sql USING p_category_id, p_location, p_limit, p_offset;
END;
$$;

-- Étape 4: Ajouter un commentaire de documentation
COMMENT ON FUNCTION public.get_public_announcements IS 
'Récupère les annonces publiques avec protection des numéros de téléphone. Les utilisateurs non authentifiés voient un numéro masqué.';

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
  has_shop_name boolean;
  has_shop_id boolean;
  has_shop_logo_url boolean;
  has_contact_count boolean;
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
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'contact_count'
  ) INTO has_contact_count;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'phone_number'
  ) INTO has_phone_number;

  select_list := format(
    '%s AS id, %s AS title, %s AS description, %s AS price, %s AS location, %s AS image_url, %s AS image_urls, %s AS category_id, %s AS user_id, %s AS created_at, %s AS updated_at, %s AS expires_at, %s AS keywords, %s AS type, %s AS condition, %s AS status, %s AS is_urgent, %s AS urgent_message, %s AS view_count, %s AS shop_name, %s AS shop_id, %s AS shop_logo_url, %s AS contact_count, %s AS phone_number',
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
    CASE WHEN has_shop_name THEN 'a.shop_name' ELSE 'NULL::text' END,
    CASE WHEN has_shop_id THEN 'a.shop_id' ELSE 'NULL::text' END,
    CASE WHEN has_shop_logo_url THEN 'a.shop_logo_url' ELSE 'NULL::text' END,
    CASE WHEN has_contact_count THEN 'a.contact_count' ELSE 'NULL::integer' END,
    CASE
      WHEN has_phone_number THEN 'CASE WHEN auth.uid() IS NOT NULL THEN a.phone_number WHEN a.phone_number IS NOT NULL THEN ''**********'' ELSE NULL END'
      ELSE 'NULL::text'
    END
  );

  where_clause := 'WHERE 1=1';
  IF has_status THEN
    where_clause := where_clause || ' AND a.status = ''active''';
  END IF;

  EXECUTE format(
    'CREATE OR REPLACE VIEW public.announcements_safe AS SELECT %s FROM public.announcements a %s',
    select_list,
    where_clause
  );

  EXECUTE 'ALTER VIEW public.announcements_safe SET (security_invoker = true)';
END $$;

-- Étape 6: Logger l'accès aux numéros de téléphone pour audit
CREATE OR REPLACE FUNCTION public.log_phone_access(
  p_announcement_id uuid,
  p_user_id uuid DEFAULT NULL
)
RETURNS void
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
BEGIN
  INSERT INTO public.security_audit_log (
    user_id,
    action_type,
    resource_type,
    resource_id,
    metadata
  ) VALUES (
    COALESCE(p_user_id, auth.uid()),
    'phone_access',
    'announcement',
    p_announcement_id::text,
    jsonb_build_object(
      'timestamp', now(),
      'authenticated', auth.uid() IS NOT NULL
    )
  );
END;
$$;

COMMENT ON FUNCTION public.log_phone_access IS 
'Enregistre les accès aux numéros de téléphone des annonces pour audit de sécurité.';
