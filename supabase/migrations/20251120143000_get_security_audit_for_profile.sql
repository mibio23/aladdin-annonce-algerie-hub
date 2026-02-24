-- Secure read access to security audit logs for admin/moderator
-- Provides moderation history for a given profile

CREATE OR REPLACE FUNCTION public.get_security_audit_for_profile(
  p_profile_id uuid,
  p_limit integer DEFAULT 50
)
RETURNS TABLE (
  id uuid,
  created_at timestamp with time zone,
  action_type text,
  resource_type text,
  resource_id text,
  metadata jsonb,
  user_id uuid,
  session_id text
)
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = 'public'
AS $$
DECLARE
  caller_is_admin boolean;
  target_user_id uuid;
BEGIN
  -- Determine caller admin/moderator rights
  SELECT EXISTS (
    SELECT 1 FROM public.user_roles
    WHERE user_id = auth.uid()
      AND is_active = true
      AND role IN ('admin','moderator')
  ) INTO caller_is_admin;

  IF NOT caller_is_admin THEN
    RAISE EXCEPTION 'Unauthorized: admin or moderator role required';
  END IF;

  -- Resolve target auth.user_id from profile id
  SELECT user_id INTO target_user_id FROM public.profiles WHERE id = p_profile_id;

  RETURN QUERY
  SELECT l.id, l.created_at, l.action_type, l.resource_type, l.resource_id, l.metadata, l.user_id, l.session_id
  FROM public.security_audit_log AS l
  WHERE (
      l.resource_type = 'profile' AND l.resource_id = p_profile_id::text
    )
    OR (
      l.resource_id = target_user_id::text
    )
    OR (
      l.metadata ? 'profile_id' AND (l.metadata->>'profile_id')::uuid = p_profile_id
    )
    OR (
      l.metadata ? 'target_user_id' AND (l.metadata->>'target_user_id')::uuid = target_user_id
    )
  ORDER BY l.created_at DESC
  LIMIT p_limit;
END;
$$;

COMMENT ON FUNCTION public.get_security_audit_for_profile(uuid, integer)
IS 'Returns moderation/security audit log entries for a given profile id (admin/moderator only).';