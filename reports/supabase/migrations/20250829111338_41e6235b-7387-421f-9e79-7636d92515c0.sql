-- Critical Security Fixes Migration

-- 1. Fix RLS policies for profiles table (Critical PII Protection)
DROP POLICY IF EXISTS "Users can view their own profile" ON public.profiles;
DROP POLICY IF EXISTS "Users can update their own profile" ON public.profiles;
DROP POLICY IF EXISTS "Users can insert their own profile" ON public.profiles;

-- Create security definer function to safely get current user ID
CREATE OR REPLACE FUNCTION public.get_current_user_id()
RETURNS UUID
LANGUAGE SQL
SECURITY DEFINER
SET search_path = 'public'
AS $$
  SELECT auth.uid();
$$;

-- Enhanced RLS policies with multi-layer validation
CREATE POLICY "Users can view own profile with session validation" 
ON public.profiles 
FOR SELECT 
USING (
  auth.uid() IS NOT NULL 
  AND user_id = public.get_current_user_id()
  AND NOT profile_locked
);

CREATE POLICY "Users can update own profile with validation" 
ON public.profiles 
FOR UPDATE 
USING (
  auth.uid() IS NOT NULL 
  AND user_id = public.get_current_user_id()
  AND NOT profile_locked
)
WITH CHECK (
  auth.uid() IS NOT NULL 
  AND user_id = public.get_current_user_id()
);

CREATE POLICY "Users can insert own profile" 
ON public.profiles 
FOR INSERT 
WITH CHECK (
  auth.uid() IS NOT NULL 
  AND user_id = public.get_current_user_id()
);

-- 2. Fix database functions security (Critical)
CREATE OR REPLACE FUNCTION public.mask_phone_number(phone_number text)
RETURNS text
LANGUAGE plpgsql
IMMUTABLE 
SECURITY DEFINER
SET search_path = 'public'
AS $$
BEGIN
  IF phone_number IS NULL OR LENGTH(phone_number) < 4 THEN
    RETURN phone_number;
  END IF;
  
  -- Mask middle digits, show first 2 and last 2
  RETURN SUBSTRING(phone_number FROM 1 FOR 2) || 
         REPEAT('*', LENGTH(phone_number) - 4) || 
         RIGHT(phone_number, 2);
END;
$$;

CREATE OR REPLACE FUNCTION public.get_public_profile_data(profile_user_id uuid)
RETURNS TABLE(
  id uuid, 
  user_id uuid, 
  display_name text, 
  avatar_url text, 
  bio text, 
  location text, 
  profession text, 
  created_at timestamp with time zone
)
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = 'public'
AS $$
DECLARE
  has_display_name boolean;
  has_nickname boolean;
  has_first_name boolean;
  has_last_name boolean;
  has_avatar_url boolean;
  has_bio boolean;
  has_location boolean;
  has_profession boolean;
  display_expr text;
  avatar_expr text;
  bio_expr text;
  location_expr text;
  profession_expr text;
  sql text;
BEGIN
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'profiles' AND column_name = 'display_name'
  ) INTO has_display_name;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'profiles' AND column_name = 'nickname'
  ) INTO has_nickname;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'profiles' AND column_name = 'first_name'
  ) INTO has_first_name;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'profiles' AND column_name = 'last_name'
  ) INTO has_last_name;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'profiles' AND column_name = 'avatar_url'
  ) INTO has_avatar_url;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'profiles' AND column_name = 'bio'
  ) INTO has_bio;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'profiles' AND column_name = 'location'
  ) INTO has_location;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'profiles' AND column_name = 'profession'
  ) INTO has_profession;

  IF has_display_name THEN
    display_expr := 'p.display_name';
  ELSIF has_nickname THEN
    display_expr := 'p.nickname';
  ELSIF has_first_name OR has_last_name THEN
    display_expr := 'trim(coalesce(p.first_name, '''') || '' '' || coalesce(p.last_name, ''''))';
  ELSE
    display_expr := 'NULL::text';
  END IF;

  avatar_expr := CASE WHEN has_avatar_url THEN 'p.avatar_url' ELSE 'NULL::text' END;
  bio_expr := CASE WHEN has_bio THEN 'p.bio' ELSE 'NULL::text' END;
  location_expr := CASE WHEN has_location THEN 'p.location' ELSE 'NULL::text' END;
  profession_expr := CASE WHEN has_profession THEN 'p.profession' ELSE 'NULL::text' END;

  sql := format(
    'SELECT p.id, p.user_id, %s AS display_name, %s AS avatar_url, %s AS bio, %s AS location, %s AS profession, p.created_at FROM public.profiles p WHERE p.user_id = $1 AND NOT COALESCE(p.profile_locked, false)',
    display_expr, avatar_expr, bio_expr, location_expr, profession_expr
  );

  RETURN QUERY EXECUTE sql USING profile_user_id;
END;
$$;

-- 3. Fix all other functions to use proper security definer
CREATE OR REPLACE FUNCTION public.sanitize_search_query(query_text text)
RETURNS text
LANGUAGE plpgsql
IMMUTABLE 
SECURITY DEFINER
SET search_path = 'public'
AS $$
BEGIN
  -- Enhanced XSS protection
  query_text := regexp_replace(query_text, '<[^>]*>', '', 'gi');
  query_text := regexp_replace(query_text, 'javascript:', '', 'gi');
  query_text := regexp_replace(query_text, 'data:', '', 'gi');
  query_text := regexp_replace(query_text, 'vbscript:', '', 'gi');
  query_text := regexp_replace(query_text, 'on\w+\s*=', '', 'gi');
  
  -- Limit length
  IF LENGTH(query_text) > 200 THEN
    query_text := LEFT(query_text, 200) || '...';
  END IF;
  
  RETURN query_text;
END;
$$;

-- 4. Enhanced business contacts security
DROP POLICY IF EXISTS "Public contacts are viewable by everyone" ON public.business_contacts;
DROP POLICY IF EXISTS "Authenticated users can view contacts requiring auth" ON public.business_contacts;

CREATE POLICY "Public contacts viewable with rate limiting" 
ON public.business_contacts 
FOR SELECT 
USING (
  is_public = true 
  AND public.rate_limit_contact_access(
    COALESCE(current_setting('app.current_session_id', true), 'anonymous'), 
    contact_type
  )
);

CREATE POLICY "Authenticated users can view auth-required contacts" 
ON public.business_contacts 
FOR SELECT 
USING (
  auth.uid() IS NOT NULL 
  AND requires_auth = true
  AND public.rate_limit_contact_access(
    COALESCE(current_setting('app.current_session_id', true), auth.uid()::text), 
    contact_type
  )
);

-- 5. Create secure profile access function with masking
CREATE OR REPLACE FUNCTION public.get_masked_profile_contact(profile_user_id uuid)
RETURNS TABLE(
  display_name text,
  phone_masked text,
  location text,
  profession text
)
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = 'public'
AS $$
DECLARE
  has_display_name boolean;
  has_nickname boolean;
  has_first_name boolean;
  has_last_name boolean;
  has_phone boolean;
  has_phone_secondary boolean;
  has_location boolean;
  has_profession boolean;
  display_expr text;
  phone_expr text;
  location_expr text;
  profession_expr text;
  sql text;
BEGIN
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'profiles' AND column_name = 'display_name'
  ) INTO has_display_name;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'profiles' AND column_name = 'nickname'
  ) INTO has_nickname;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'profiles' AND column_name = 'first_name'
  ) INTO has_first_name;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'profiles' AND column_name = 'last_name'
  ) INTO has_last_name;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'profiles' AND column_name = 'phone'
  ) INTO has_phone;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'profiles' AND column_name = 'phone_secondary'
  ) INTO has_phone_secondary;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'profiles' AND column_name = 'location'
  ) INTO has_location;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'profiles' AND column_name = 'profession'
  ) INTO has_profession;

  IF has_display_name THEN
    display_expr := 'p.display_name';
  ELSIF has_nickname THEN
    display_expr := 'p.nickname';
  ELSIF has_first_name OR has_last_name THEN
    display_expr := 'trim(coalesce(p.first_name, '''') || '' '' || coalesce(p.last_name, ''''))';
  ELSE
    display_expr := 'NULL::text';
  END IF;

  IF has_phone THEN
    phone_expr := 'p.phone';
  ELSIF has_phone_secondary THEN
    phone_expr := 'p.phone_secondary';
  ELSE
    phone_expr := 'NULL::text';
  END IF;

  location_expr := CASE WHEN has_location THEN 'p.location' ELSE 'NULL::text' END;
  profession_expr := CASE WHEN has_profession THEN 'p.profession' ELSE 'NULL::text' END;

  sql := format(
    'SELECT %s AS display_name, public.mask_phone_number(%s) AS phone_masked, %s AS location, %s AS profession FROM public.profiles p WHERE p.user_id = $1 AND NOT COALESCE(p.profile_locked, false)',
    display_expr, phone_expr, location_expr, profession_expr
  );

  RETURN QUERY EXECUTE sql USING profile_user_id;
END;
$$;

-- 6. Enhanced security audit logging
CREATE OR REPLACE FUNCTION public.log_security_event(
  p_user_id uuid, 
  p_session_id text, 
  p_action_type text, 
  p_resource_type text, 
  p_resource_id text DEFAULT NULL, 
  p_metadata jsonb DEFAULT '{}'
)
RETURNS void
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = 'public'
AS $$
DECLARE
  client_ip inet;
BEGIN
  -- Get client IP safely
  BEGIN
    client_ip := inet(current_setting('request.headers', true)::json->>'x-forwarded-for');
  EXCEPTION WHEN others THEN
    client_ip := NULL;
  END;

  INSERT INTO public.security_audit_log (
    user_id, session_id, action_type, resource_type, 
    resource_id, metadata, ip_address
  ) VALUES (
    p_user_id, p_session_id, p_action_type, p_resource_type,
    p_resource_id, p_metadata, client_ip
  );
END;
$$;

-- 7. Create data retention policy enforcement function
CREATE OR REPLACE FUNCTION public.enforce_data_retention()
RETURNS void
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = 'public'
AS $$
BEGIN
  -- Delete old behavioral data older than 6 months for privacy
  DELETE FROM public.behavioral_learning 
  WHERE created_at < now() - INTERVAL '6 months';
  
  -- Delete old search queries older than 3 months
  DELETE FROM public.search_queries 
  WHERE created_at < now() - INTERVAL '3 months';
  
  -- Delete old conversation memory older than 1 month
  DELETE FROM public.conversation_memory 
  WHERE created_at < now() - INTERVAL '1 month';
  
  -- Log retention enforcement
  INSERT INTO public.security_audit_log (
    action_type, resource_type, metadata
  ) VALUES (
    'data_retention_enforced', 'system', 
    jsonb_build_object('retention_date', now())
  );
END;
$$;
