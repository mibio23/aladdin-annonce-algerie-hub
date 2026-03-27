-- Fix critical security vulnerability in profiles table RLS policies
-- Replace custom function dependency with direct auth.uid() calls for better security

-- Drop ALL existing policies on profiles table
DROP POLICY IF EXISTS "Users can insert own profile" ON public.profiles;
DROP POLICY IF EXISTS "Users can update own profile with validation" ON public.profiles;  
DROP POLICY IF EXISTS "Users can view own profile with session validation" ON public.profiles;
DROP POLICY IF EXISTS "Secure profile insertion" ON public.profiles;
DROP POLICY IF EXISTS "Secure profile viewing" ON public.profiles;
DROP POLICY IF EXISTS "Secure profile updates" ON public.profiles;
DROP POLICY IF EXISTS "Secure profile deletion" ON public.profiles;
DROP POLICY IF EXISTS "profiles_secure_insert" ON public.profiles;
DROP POLICY IF EXISTS "profiles_secure_select" ON public.profiles;
DROP POLICY IF EXISTS "profiles_secure_update" ON public.profiles;
DROP POLICY IF EXISTS "profiles_secure_delete" ON public.profiles;

-- Create NEW secure RLS policies using direct auth.uid() instead of custom functions
-- This prevents potential bypass through function manipulation

-- Policy 1: Secure profile insertion with validation
DO $$
BEGIN
  IF EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'profiles' AND column_name = 'display_name'
  ) THEN
    EXECUTE $policy$
      CREATE POLICY "profiles_secure_insert"
      ON public.profiles
      FOR INSERT
      TO authenticated
      WITH CHECK (
        auth.uid() IS NOT NULL 
        AND user_id = auth.uid()
        AND validate_user_input(COALESCE(display_name, ''), 100)
        AND validate_user_input(COALESCE(bio, ''), 500)
        AND validate_user_input(COALESCE(first_name, ''), 50)
        AND validate_user_input(COALESCE(last_name, ''), 50)
      )
    $policy$;
  ELSE
    EXECUTE $policy$
      CREATE POLICY "profiles_secure_insert"
      ON public.profiles
      FOR INSERT
      TO authenticated
      WITH CHECK (
        auth.uid() IS NOT NULL 
        AND user_id = auth.uid()
        AND validate_user_input(COALESCE(bio, ''), 500)
        AND validate_user_input(COALESCE(first_name, ''), 50)
        AND validate_user_input(COALESCE(last_name, ''), 50)
      )
    $policy$;
  END IF;
END $$;

-- Policy 2: Secure profile viewing - users can only see their own data
CREATE POLICY "profiles_secure_select"
ON public.profiles
FOR SELECT
TO authenticated
USING (
  auth.uid() IS NOT NULL 
  AND user_id = auth.uid()
  AND NOT COALESCE(profile_locked, false)
);

-- Policy 3: Secure profile updates with enhanced validation
DO $$
BEGIN
  IF EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'profiles' AND column_name = 'display_name'
  ) THEN
    EXECUTE $policy$
      CREATE POLICY "profiles_secure_update" 
      ON public.profiles
      FOR UPDATE
      TO authenticated
      USING (
        auth.uid() IS NOT NULL 
        AND user_id = auth.uid()
        AND NOT COALESCE(profile_locked, false)
      )
      WITH CHECK (
        auth.uid() IS NOT NULL 
        AND user_id = auth.uid()
        AND validate_user_input(COALESCE(display_name, ''), 100)
        AND validate_user_input(COALESCE(bio, ''), 500)
        AND validate_user_input(COALESCE(first_name, ''), 50)
        AND validate_user_input(COALESCE(last_name, ''), 50)
        AND user_id = auth.uid()
      )
    $policy$;
  ELSE
    EXECUTE $policy$
      CREATE POLICY "profiles_secure_update" 
      ON public.profiles
      FOR UPDATE
      TO authenticated
      USING (
        auth.uid() IS NOT NULL 
        AND user_id = auth.uid()
        AND NOT COALESCE(profile_locked, false)
      )
      WITH CHECK (
        auth.uid() IS NOT NULL 
        AND user_id = auth.uid()
        AND validate_user_input(COALESCE(bio, ''), 500)
        AND validate_user_input(COALESCE(first_name, ''), 50)
        AND validate_user_input(COALESCE(last_name, ''), 50)
        AND user_id = auth.uid()
      )
    $policy$;
  END IF;
END $$;

-- Policy 4: Secure deletion - users can only delete their own profiles  
CREATE POLICY "profiles_secure_delete"
ON public.profiles
FOR DELETE
TO authenticated
USING (
  auth.uid() IS NOT NULL 
  AND user_id = auth.uid()
  AND NOT COALESCE(profile_locked, false)
);

-- Create function to safely get masked profile data
CREATE OR REPLACE FUNCTION public.get_safe_profile_data(profile_user_id uuid)
RETURNS TABLE(
  id uuid,
  display_name text,
  avatar_url text,
  bio text,
  location text,
  profession text,
  created_at timestamp with time zone
)
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path TO 'public'
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
    'SELECT p.id, %s AS display_name, %s AS avatar_url, %s AS bio, %s AS location, %s AS profession, p.created_at FROM public.profiles p WHERE p.user_id = $1 AND NOT COALESCE(p.profile_locked, false) AND p.user_id = auth.uid()',
    display_expr, avatar_expr, bio_expr, location_expr, profession_expr
  );

  RETURN QUERY EXECUTE sql USING profile_user_id;
END;
$$;

-- Prevent unauthorized profile_locked modifications
CREATE OR REPLACE FUNCTION public.prevent_profile_lock_bypass()
RETURNS TRIGGER
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path TO 'public'
AS $$
BEGIN
  -- Only allow profile_locked changes from system operations
  IF OLD.profile_locked IS DISTINCT FROM NEW.profile_locked THEN
    -- Log security attempt
    INSERT INTO public.security_audit_log (
      user_id, action_type, resource_type, resource_id, metadata
    ) VALUES (
      auth.uid(), 'unauthorized_lock_attempt', 'profile', 
      NEW.id::text, jsonb_build_object('attempted_by', auth.uid())
    );
    
    RAISE EXCEPTION 'Unauthorized attempt to modify profile lock status';
  END IF;
  
  RETURN NEW;
END;
$$;

-- Apply security trigger for profile lock protection
DROP TRIGGER IF EXISTS prevent_profile_lock_bypass_trigger ON public.profiles;
CREATE TRIGGER prevent_profile_lock_bypass_trigger
  BEFORE UPDATE ON public.profiles
  FOR EACH ROW
  EXECUTE FUNCTION public.prevent_profile_lock_bypass();

-- Log profile modifications for security auditing
CREATE OR REPLACE FUNCTION public.log_profile_modifications()
RETURNS TRIGGER
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path TO 'public'
AS $$
BEGIN
  -- Log profile modifications for security monitoring
  INSERT INTO public.security_audit_log (
    user_id, action_type, resource_type, resource_id, metadata
  ) VALUES (
    auth.uid(), 
    CASE TG_OP
      WHEN 'INSERT' THEN 'profile_created'
      WHEN 'UPDATE' THEN 'profile_updated'  
      WHEN 'DELETE' THEN 'profile_deleted'
    END,
    'profile', 
    COALESCE(NEW.id, OLD.id)::text, 
    jsonb_build_object(
      'operation', TG_OP,
      'timestamp', now(),
      'sensitive_data_modified', CASE 
        WHEN TG_OP = 'UPDATE' THEN 
          CASE WHEN (OLD.phone IS DISTINCT FROM NEW.phone OR 
                    OLD.address IS DISTINCT FROM NEW.address OR
                    OLD.date_of_birth IS DISTINCT FROM NEW.date_of_birth)
          THEN true ELSE false END
        ELSE false
      END
    )
  );
  
  RETURN COALESCE(NEW, OLD);
END;
$$;

-- Apply modification logging trigger
DROP TRIGGER IF EXISTS log_profile_modifications_trigger ON public.profiles;
CREATE TRIGGER log_profile_modifications_trigger
  AFTER INSERT OR UPDATE OR DELETE ON public.profiles
  FOR EACH ROW
  EXECUTE FUNCTION public.log_profile_modifications();
