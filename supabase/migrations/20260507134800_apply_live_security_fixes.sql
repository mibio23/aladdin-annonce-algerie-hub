-- ============================================================
-- MIGRATION : Apply Live Security Fixes via Management API
-- Date      : 2026-05-07
-- Applied   : Directly to live DB via Supabase Management API
-- Issues    : E3, E4, W2, W3, W7 (anon revoke on SECURITY DEFINER)
-- ============================================================

-- ─────────────────────────────────────────────────────────────
-- E3 : animal_details — Restrict to announcement owners only
-- ─────────────────────────────────────────────────────────────
DROP POLICY IF EXISTS "Authenticated users can manage animal details" ON public.animal_details;
DROP POLICY IF EXISTS "Anyone can insert animal_details" ON public.animal_details;
DROP POLICY IF EXISTS "Owners can manage animal_details" ON public.animal_details;
DROP POLICY IF EXISTS "Everyone can view animal_details" ON public.animal_details;

CREATE POLICY "Everyone can view animal_details"
  ON public.animal_details FOR SELECT USING (true);

CREATE POLICY "Owners can manage animal_details"
  ON public.animal_details FOR ALL TO authenticated
  USING (EXISTS (
    SELECT 1 FROM public.announcements a
    WHERE a.id = animal_details.announcement_id AND a.user_id = auth.uid()
  ))
  WITH CHECK (EXISTS (
    SELECT 1 FROM public.announcements a
    WHERE a.id = animal_details.announcement_id AND a.user_id = auth.uid()
  ));

-- ─────────────────────────────────────────────────────────────
-- E4 : Premium protection function + trigger
-- ─────────────────────────────────────────────────────────────
CREATE OR REPLACE FUNCTION check_premium_fields_on_update()
RETURNS TRIGGER LANGUAGE plpgsql SECURITY DEFINER SET search_path = public AS
$body$
DECLARE is_admin BOOLEAN;
BEGIN
  SELECT EXISTS (
    SELECT 1 FROM profiles WHERE id = auth.uid() AND role = 'admin'
  ) INTO is_admin;
  IF NOT is_admin THEN
    IF NEW.is_featured IS DISTINCT FROM OLD.is_featured THEN
      RAISE EXCEPTION 'PREMIUM_FIELD_PROTECTED' USING ERRCODE = 'insufficient_privilege';
    END IF;
    IF NEW.premium_end_at IS DISTINCT FROM OLD.premium_end_at THEN
      RAISE EXCEPTION 'PREMIUM_END_PROTECTED' USING ERRCODE = 'insufficient_privilege';
    END IF;
    IF NEW.status IS DISTINCT FROM OLD.status AND NEW.status IN ('premium','featured','verified') THEN
      RAISE EXCEPTION 'PREMIUM_STATUS_PROTECTED' USING ERRCODE = 'insufficient_privilege';
    END IF;
  END IF;
  RETURN NEW;
END;
$body$;

DROP TRIGGER IF EXISTS tg_check_premium_fields ON announcements;
CREATE TRIGGER tg_check_premium_fields
  BEFORE UPDATE ON announcements
  FOR EACH ROW EXECUTE FUNCTION check_premium_fields_on_update();

-- E4 - Revoke anon access on the trigger function
REVOKE ALL ON FUNCTION public.check_premium_fields_on_update() FROM anon, authenticated, public;

-- E4 - announcements UPDATE policies
DROP POLICY IF EXISTS "Users can update own announcements" ON announcements;
DROP POLICY IF EXISTS "announcements_update_own" ON announcements;
DROP POLICY IF EXISTS "announcements_owner_update" ON announcements;
DROP POLICY IF EXISTS "announcements_admin_update" ON announcements;

CREATE POLICY "announcements_owner_update" ON announcements
  FOR UPDATE USING (auth.uid() = user_id) WITH CHECK (auth.uid() = user_id);

CREATE POLICY "announcements_admin_update" ON announcements
  FOR UPDATE USING (EXISTS (
    SELECT 1 FROM user_roles ur
    WHERE ur.user_id = auth.uid() AND ur.role = 'admin' AND ur.is_active = true
  ));

-- ─────────────────────────────────────────────────────────────
-- W2 : search_queries — Restrict to own records
-- ─────────────────────────────────────────────────────────────
DROP POLICY IF EXISTS "Anyone can read search_queries" ON search_queries;
DROP POLICY IF EXISTS "Users can read own search_queries" ON search_queries;
DROP POLICY IF EXISTS "Admins can read all search_queries" ON search_queries;

DO $wrap$
BEGIN
  IF to_regclass('public.search_queries') IS NOT NULL THEN
    EXECUTE $p$
      CREATE POLICY "Users can read own search_queries" ON search_queries
        FOR SELECT TO authenticated
        USING (user_session_id = auth.uid()::text)
    $p$;
    EXECUTE $p$
      CREATE POLICY "Admins can read all search_queries" ON search_queries
        FOR SELECT TO authenticated
        USING (EXISTS (
          SELECT 1 FROM user_roles ur
          WHERE ur.user_id = auth.uid() AND ur.role = 'admin' AND ur.is_active = true
        ))
    $p$;
  END IF;
END $wrap$;

-- ─────────────────────────────────────────────────────────────
-- W3 : notification_campaigns — Admin only
-- ─────────────────────────────────────────────────────────────
DO $wrap$
BEGIN
  IF to_regclass('public.notification_campaigns') IS NOT NULL THEN
    EXECUTE $p$DROP POLICY IF EXISTS "Users can view their own campaigns" ON notification_campaigns$p$;
    EXECUTE $p$DROP POLICY IF EXISTS "Users can create campaigns" ON notification_campaigns$p$;
    EXECUTE $p$DROP POLICY IF EXISTS "Users can update their own campaigns" ON notification_campaigns$p$;
    EXECUTE $p$DROP POLICY IF EXISTS "Users can delete their own campaigns" ON notification_campaigns$p$;
    EXECUTE $p$DROP POLICY IF EXISTS "Admins can manage notification_campaigns" ON notification_campaigns$p$;
    EXECUTE $p$
      CREATE POLICY "Admins can manage notification_campaigns" ON notification_campaigns
      FOR ALL TO authenticated
      USING (EXISTS (
        SELECT 1 FROM user_roles ur
        WHERE ur.user_id = auth.uid() AND ur.role = 'admin' AND ur.is_active = true
      ))
      WITH CHECK (EXISTS (
        SELECT 1 FROM user_roles ur
        WHERE ur.user_id = auth.uid() AND ur.role = 'admin' AND ur.is_active = true
      ))
    $p$;
  END IF;
END $wrap$;

-- ─────────────────────────────────────────────────────────────
-- W7 : Revoke anon access on SECURITY DEFINER functions
-- ─────────────────────────────────────────────────────────────
REVOKE ALL ON FUNCTION public.check_job_offer_limit() FROM anon, authenticated, public;
REVOKE ALL ON FUNCTION public.check_shop_limit() FROM anon, authenticated, public;
REVOKE ALL ON FUNCTION public.user_owns_announcement(uuid) FROM anon, authenticated, public;

-- ─────────────────────────────────────────────────────────────
-- W10/W11 : GraphQL — Must be disabled via Supabase Dashboard
-- Dashboard → Settings → API → Toggle off GraphQL endpoint
-- ─────────────────────────────────────────────────────────────
-- Cannot be done via SQL. Action required in Dashboard.

-- ─────────────────────────────────────────────────────────────
-- SUMMARY
-- ─────────────────────────────────────────────────────────────
-- ✅ E3: animal_details - Owners-only write access applied
-- ✅ E4: Premium fields trigger + owner/admin UPDATE policies
-- ✅ W2: search_queries - Users see only their own records
-- ✅ W3: notification_campaigns - Admin-only management
-- ✅ W7: anon REVOKED on check_job_offer_limit, check_shop_limit,
--         user_owns_announcement, check_premium_fields_on_update
-- ⚠️  W10/W11: GraphQL still open - Dashboard action required
-- ℹ️  W4: shops contact info visible by everyone - INTENTIONAL (marketplace)
