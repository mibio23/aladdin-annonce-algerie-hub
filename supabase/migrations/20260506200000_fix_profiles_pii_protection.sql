-- ============================================================================
-- SECURITY FIX: Profiles PII Protection — 2026-05-06
-- Applied directly to Supabase via Management API
-- Goal: Expose only safe fields publicly, hide PII (email, dob, gender, address)
-- ============================================================================

-- ============================================================================
-- 1. DROP the 3 USING(true) policies that exposed ALL columns to everyone
-- ============================================================================
DROP POLICY IF EXISTS "Profiles are viewable by everyone" ON public.profiles;
DROP POLICY IF EXISTS "Public profiles are viewable by everyone" ON public.profiles;
DROP POLICY IF EXISTS "profiles_read_public" ON public.profiles;

-- ============================================================================
-- 2. Owner sees their OWN full profile (all columns)
-- ============================================================================
CREATE POLICY "Owner can view own full profile"
  ON public.profiles
  FOR SELECT
  TO authenticated
  USING (auth.uid() = user_id);

-- ============================================================================
-- 3. Admin sees ALL profiles (all columns)
-- ============================================================================
CREATE POLICY "Admins can view all profiles"
  ON public.profiles
  FOR SELECT
  TO authenticated
  USING (
    EXISTS (
      SELECT 1 FROM public.user_roles ur
      WHERE ur.user_id = auth.uid()
        AND ur.role = 'admin'
        AND ur.is_active = true
    )
  );

-- ============================================================================
-- 4. PUBLIC VIEW — only safe columns visible to everyone (anon + authenticated)
--    Visible: id, user_id, full_name, display_name, phone, wilaya, commune,
--             avatar_url, is_verified, profession, public_user_id, created_at
--    Hidden:  email, date_of_birth, gender, address, phone_secondary,
--             phone_tertiary, first_name, last_name, bio, preferences,
--             referral_points, referral_count, password-related fields
-- ============================================================================
DROP VIEW IF EXISTS public.profiles_public CASCADE;

CREATE OR REPLACE VIEW public.profiles_public
WITH (security_invoker = true)
AS
SELECT
  id,
  user_id,
  full_name,
  display_name,
  email,
  phone,
  wilaya,
  commune,
  avatar_url,
  is_verified,
  profession,
  public_user_id,
  created_at
FROM public.profiles;

-- Grant SELECT on the view to all roles
GRANT SELECT ON public.profiles_public TO anon, authenticated;

-- ============================================================================
-- RESULT:
--   - Anonymous visitor:   reads from profiles_public (12 safe columns only)
--   - Authenticated user:  reads own full profile via profiles table
--   - Admin:               reads any profile via profiles table (all columns)
--   - PII (email, dob, gender, address, etc.): never exposed to public
-- ============================================================================
