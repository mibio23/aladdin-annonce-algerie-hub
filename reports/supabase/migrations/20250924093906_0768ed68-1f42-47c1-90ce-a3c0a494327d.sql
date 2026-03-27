-- Fix Supabase security issues detected by linter

DO $$
DECLARE
  func_record record;
BEGIN
  FOR func_record IN
    SELECT unnest(ARRAY[
      'public.update_search_updated_at_column()',
      'public.rate_limit_contact_access(text, text)',
      'public.normalize_search_query(text)',
      'public.clean_search_query_trigger()',
      'public.request_contact_access(uuid)',
      'public.get_announcement_with_protected_contact(uuid)',
      'public.rate_limit_search_queries(text)',
      'public.validate_search_session(text)',
      'public.sanitize_search_query(text)',
      'public.validate_user_input(text, integer)',
      'public.validate_password_strength(text)',
      'public.get_search_statistics(integer)',
      'public.update_announcement_search_vector()',
      'public.update_updated_at_column()',
      'public.generate_shop_slug(text)',
      'public.auto_generate_shop_slug()',
      'public.cleanup_old_tracking_data()',
      'public.log_security_event(uuid, text, text, text, text, jsonb)',
      'public.enforce_data_retention()',
      'public.set_current_session(text)',
      'public.get_current_user_id()',
      'public.mask_phone_number(text)',
      'public.get_public_profile_data(uuid)',
      'public.get_masked_profile_contact(uuid)',
      'public.get_current_session()',
      'public.calculate_trending_score(uuid)',
      'public.get_safe_profile_data(uuid)',
      'public.prevent_profile_lock_bypass()',
      'public.log_profile_modifications()',
      'public.secure_profile_monitoring()'
    ]) AS signature
  LOOP
    IF EXISTS (
      SELECT 1
      FROM pg_proc p
      JOIN pg_namespace n ON n.oid = p.pronamespace
      WHERE format('%I.%I(%s)', n.nspname, p.proname, pg_get_function_identity_arguments(p.oid)) = func_record.signature
    ) THEN
      EXECUTE format('ALTER FUNCTION %s SET search_path = ''public''', func_record.signature);
    END IF;
  END LOOP;
END $$;

DO $$
BEGIN
  IF EXISTS (SELECT 1 FROM pg_extension WHERE extname = 'pg_trgm') THEN
    EXECUTE 'COMMENT ON EXTENSION pg_trgm IS ''Extension should be moved to extensions schema by Supabase support''';
  END IF;
  IF EXISTS (SELECT 1 FROM pg_extension WHERE extname = 'unaccent') THEN
    EXECUTE 'COMMENT ON EXTENSION unaccent IS ''Extension should be moved to extensions schema by Supabase support''';
  END IF;
END $$;

-- Add security audit trigger for all profile operations
DROP TRIGGER IF EXISTS secure_profile_monitoring_trigger ON public.profiles;
CREATE TRIGGER secure_profile_monitoring_trigger
  BEFORE INSERT OR UPDATE ON public.profiles
  FOR EACH ROW EXECUTE FUNCTION public.secure_profile_monitoring();

-- Ensure RLS is enabled on critical tables
ALTER TABLE IF EXISTS public.profiles ENABLE ROW LEVEL SECURITY;
ALTER TABLE IF EXISTS public.announcements ENABLE ROW LEVEL SECURITY;
ALTER TABLE IF EXISTS public.search_queries ENABLE ROW LEVEL SECURITY;
ALTER TABLE IF EXISTS public.security_audit_log ENABLE ROW LEVEL SECURITY;
