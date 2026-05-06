-- ============================================================================
-- SECURITY FIX MIGRATION — 2026-05-06 19:00
-- Applied directly to Supabase via Management API
-- Fixes remaining Security Advisor issues (excluding profiles PII — handled separately)
-- ============================================================================

-- ============================================================================
-- 1. CATEGORIES: Remove policy that allowed all authenticated users to manage
-- ============================================================================
DROP POLICY IF EXISTS "Admins can manage all categories" ON public.categories;

-- ============================================================================
-- 2. EVENT/JOB/TRAVEL DETAILS: Remove old permissive INSERT policies
--    (old policies allowed any authenticated user to insert for any announcement)
-- ============================================================================
DROP POLICY IF EXISTS "Users can insert event details" ON public.event_details;
DROP POLICY IF EXISTS "Users can insert job details" ON public.job_details;
DROP POLICY IF EXISTS "Users can insert travel details" ON public.travel_details;

-- ============================================================================
-- 3. ANNOUNCEMENT_VIEWS: Remove broad SELECT exposing IP/user_agent
--    Also remove duplicate INSERT policies
-- ============================================================================
DROP POLICY IF EXISTS "Allow users to read views" ON public.announcement_views;
DROP POLICY IF EXISTS "Allow authenticated users to insert views" ON public.announcement_views;
DROP POLICY IF EXISTS "Public can insert views" ON public.announcement_views;
DROP POLICY IF EXISTS "Owners can see views on their announcements" ON public.announcement_views;

-- New secure SELECT: only owners see their announcement stats
CREATE POLICY "Owners can view their announcement stats"
  ON public.announcement_views
  FOR SELECT
  TO authenticated
  USING (
    EXISTS (
      SELECT 1 FROM public.announcements a
      WHERE a.id = announcement_views.announcement_id
        AND a.user_id = auth.uid()
    )
  );

-- ============================================================================
-- 4. BUSINESS_CONTACTS: Remove USING(true) that exposed all contacts
-- ============================================================================
DROP POLICY IF EXISTS "All contacts viewable by everyone" ON public.business_contacts;

-- ============================================================================
-- 5. CONTACT_REQUESTS: Replace anonymous-friendly INSERT with auth-required
-- ============================================================================
DROP POLICY IF EXISTS "Users can create contact requests" ON public.contact_requests;

CREATE POLICY "Authenticated users must be logged in for contact requests"
  ON public.contact_requests
  FOR INSERT
  TO authenticated
  WITH CHECK (
    auth.uid() IS NOT NULL
    AND requester_email IS NOT NULL
    AND requester_name IS NOT NULL
    AND EXISTS (
      SELECT 1 FROM public.announcements a
      WHERE a.id = contact_requests.announcement_id
        AND a.status = 'active'
    )
  );

-- ============================================================================
-- 6. USER_PRIVACY_CONSENTS: Remove session_id OR bypass
-- ============================================================================
DROP POLICY IF EXISTS "Users manage own consents" ON public.user_privacy_consents;

CREATE POLICY "Users manage only their own consents"
  ON public.user_privacy_consents
  FOR ALL
  TO authenticated
  USING (user_id = auth.uid())
  WITH CHECK (user_id = auth.uid());

-- ============================================================================
-- 7. SITE_SETTINGS: Remove USING(true) SELECT (keep filtered version)
-- ============================================================================
DROP POLICY IF EXISTS "Public can read site settings" ON public.site_settings;
-- "Public can view active settings" (USING is_active = true) is kept ✓

-- ============================================================================
-- 8. HERO CAROUSEL: Remove USING(true) duplicates
-- ============================================================================
DROP POLICY IF EXISTS "Public hero_carousel_settings are viewable by everyone." ON public.hero_carousel_settings;
DROP POLICY IF EXISTS "Public hero_carousel_slides are viewable by everyone." ON public.hero_carousel_slides;
-- "Public can view carousel settings" (kept) ✓
-- "Public can view active slides" (USING is_active = true, kept) ✓

-- ============================================================================
-- 9. ANNOUNCEMENTS: Replace broad authenticated SELECT with clean policy
-- ============================================================================
DROP POLICY IF EXISTS "Authenticated users can view full announcement details" ON public.announcements;

CREATE POLICY "Authenticated users can view active announcements"
  ON public.announcements
  FOR SELECT
  TO authenticated
  USING (
    status = 'active'
    AND (expires_at IS NULL OR expires_at > now())
  );

-- ============================================================================
-- 10. STORAGE: Make avatars, banners, shop-content readable by ALL (including anon)
-- ============================================================================
DROP POLICY IF EXISTS "Avatar images are publicly accessible" ON storage.objects;
DROP POLICY IF EXISTS "Banner images are publicly accessible" ON storage.objects;
DROP POLICY IF EXISTS "Shop content is publicly readable" ON storage.objects;

CREATE POLICY "Avatar images are publicly accessible"
  ON storage.objects FOR SELECT
  USING (bucket_id = 'avatars');

CREATE POLICY "Banner images are publicly accessible"
  ON storage.objects FOR SELECT
  USING (bucket_id = 'banner-images');

CREATE POLICY "Shop content is publicly readable"
  ON storage.objects FOR SELECT
  USING (bucket_id = 'shop-content');

-- ============================================================================
-- 11. GRAPHQL: Revoke public access
-- ============================================================================
REVOKE ALL ON SCHEMA graphql FROM anon, authenticated, public;
REVOKE ALL ON ALL FUNCTIONS IN SCHEMA graphql FROM anon, authenticated, public;
REVOKE ALL ON SCHEMA graphql_public FROM anon, authenticated, public;
REVOKE ALL ON ALL FUNCTIONS IN SCHEMA graphql_public FROM anon, authenticated, public;

-- ============================================================================
-- NOTE: Auth config changes applied via Management API (not SQL):
--   - password_min_length: 8 (was 6)
--   - password_required_characters: lowercase + uppercase + digits
--   - mailer_secure_email_change_enabled: true
--   - Edge functions secured with verify_jwt:true:
--     smart-search-engine, conversational-search, monthly-cleanup, purge-deleted-announcements
-- ============================================================================

-- ============================================================================
-- NOTE: Leaked Password Protection (HIBP) requires Pro Plan — not applied
-- ============================================================================

-- ============================================================================
-- NOTE: Profiles PII (phone, email, date_of_birth) — INTENTIONALLY DEFERRED
--   Will be handled separately per user instructions
-- ============================================================================
