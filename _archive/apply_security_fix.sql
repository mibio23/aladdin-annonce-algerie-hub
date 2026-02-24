
-- Create get_security_audit_for_profile function
CREATE OR REPLACE FUNCTION public.get_security_audit_for_profile(profile_id uuid)
RETURNS TABLE(
  id uuid,
  user_id uuid,
  session_id text,
  action_type text,
  resource_type text,
  resource_id text,
  metadata jsonb,
  ip_address inet,
  user_agent text,
  created_at timestamp with time zone
)
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = 'public'
AS $$
BEGIN
  RETURN QUERY
  SELECT
    sal.id,
    sal.user_id,
    sal.session_id,
    sal.action_type,
    sal.resource_type,
    sal.resource_id,
    sal.metadata,
    sal.ip_address,
    sal.user_agent,
    sal.created_at
  FROM public.security_audit_log sal
  WHERE sal.user_id = profile_id
  ORDER BY sal.created_at DESC
  LIMIT 100;
END;
$$;

-- Update existing functions to include SET search_path = 'public'
ALTER FUNCTION public.calculate_trending_score(uuid) SET search_path = 'public';
ALTER FUNCTION public.generate_shop_slug(text) SET search_path = 'public';
ALTER FUNCTION public.increment_contact_count(uuid) SET search_path = 'public';
ALTER FUNCTION public.increment_view_count(uuid) SET search_path = 'public';
ALTER FUNCTION public.mask_phone_number(text) SET search_path = 'public';
