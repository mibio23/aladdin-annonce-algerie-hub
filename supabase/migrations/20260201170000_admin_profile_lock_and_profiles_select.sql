DROP POLICY IF EXISTS "profiles_admin_select" ON public.profiles;
CREATE POLICY "profiles_admin_select"
ON public.profiles
FOR SELECT
TO authenticated
USING (
  EXISTS (
    SELECT 1
    FROM public.user_roles ur
    WHERE ur.user_id = auth.uid()
      AND ur.role IN ('admin', 'moderator')
      AND ur.is_active = true
  )
);

CREATE OR REPLACE FUNCTION public.prevent_profile_lock_bypass()
RETURNS TRIGGER
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path TO 'public'
AS $$
DECLARE
  caller_is_moderator boolean;
BEGIN
  IF OLD.profile_locked IS DISTINCT FROM NEW.profile_locked THEN
    SELECT EXISTS (
      SELECT 1
      FROM public.user_roles ur
      WHERE ur.user_id = auth.uid()
        AND ur.role IN ('admin', 'moderator')
        AND ur.is_active = true
    ) INTO caller_is_moderator;

    IF NOT caller_is_moderator THEN
      INSERT INTO public.security_audit_log (
        user_id, action_type, resource_type, resource_id, metadata
      ) VALUES (
        auth.uid(), 'unauthorized_lock_attempt', 'profile',
        NEW.id::text, jsonb_build_object('attempted_by', auth.uid())
      );

      RAISE EXCEPTION 'Unauthorized attempt to modify profile lock status';
    END IF;
  END IF;

  RETURN NEW;
END;
$$;

CREATE OR REPLACE FUNCTION public.admin_set_profile_locked(
  p_profile_id uuid,
  p_locked boolean,
  p_reason text DEFAULT NULL,
  p_note text DEFAULT NULL,
  p_session_id text DEFAULT NULL
)
RETURNS TABLE (
  id uuid,
  profile_locked boolean
)
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path TO 'public'
AS $$
DECLARE
  caller_is_moderator boolean;
  previous_locked boolean;
  target_user_id uuid;
BEGIN
  SELECT EXISTS (
    SELECT 1
    FROM public.user_roles ur
    WHERE ur.user_id = auth.uid()
      AND ur.role IN ('admin', 'moderator')
      AND ur.is_active = true
  ) INTO caller_is_moderator;

  IF NOT caller_is_moderator THEN
    RAISE EXCEPTION 'Unauthorized: admin or moderator role required';
  END IF;

  SELECT p.user_id, p.profile_locked
  INTO target_user_id, previous_locked
  FROM public.profiles p
  WHERE p.id = p_profile_id;

  IF NOT FOUND THEN
    RAISE EXCEPTION 'Profile not found';
  END IF;

  UPDATE public.profiles
  SET profile_locked = p_locked,
      updated_at = now()
  WHERE id = p_profile_id;

  PERFORM public.log_security_event(
    auth.uid(),
    COALESCE(p_session_id, current_setting('app.current_session_id', true), ''),
    CASE WHEN p_locked THEN 'account_suspended' ELSE 'account_reactivated' END,
    'profile',
    p_profile_id::text,
    jsonb_build_object(
      'previous_locked', previous_locked,
      'profile_id', p_profile_id,
      'target_user_id', target_user_id,
      'reason', p_reason,
      'note', p_note,
      'timestamp', now()
    )
  );

  RETURN QUERY
  SELECT p_profile_id, p_locked;
END;
$$;
