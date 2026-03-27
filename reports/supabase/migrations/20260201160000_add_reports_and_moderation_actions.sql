BEGIN;

CREATE TABLE IF NOT EXISTS public.reports (
  id uuid NOT NULL DEFAULT gen_random_uuid() PRIMARY KEY,
  reporter_user_id uuid NULL REFERENCES auth.users(id) ON DELETE SET NULL,
  client_session_id text NOT NULL,
  target_type text NOT NULL CHECK (target_type IN ('announcement', 'shop', 'job_offer')),
  target_id uuid NOT NULL,
  target_global_number bigint NULL,
  target_owner_user_id uuid NULL REFERENCES auth.users(id) ON DELETE SET NULL,
  target_title text NULL,
  target_wilaya text NULL,
  reason text NOT NULL,
  details text NULL,
  status text NOT NULL DEFAULT 'new' CHECK (status IN ('new', 'in_progress', 'resolved', 'rejected')),
  assigned_to uuid NULL REFERENCES auth.users(id) ON DELETE SET NULL,
  created_at timestamptz NOT NULL DEFAULT now(),
  created_date date NOT NULL DEFAULT (now() AT TIME ZONE 'utc')::date,
  resolved_at timestamptz NULL,
  resolved_by uuid NULL REFERENCES auth.users(id) ON DELETE SET NULL,
  resolution_note text NULL
);

CREATE INDEX IF NOT EXISTS idx_reports_created_at ON public.reports (created_at DESC);
CREATE INDEX IF NOT EXISTS idx_reports_status ON public.reports (status, created_at DESC);
CREATE INDEX IF NOT EXISTS idx_reports_target_global_number ON public.reports (target_global_number);
CREATE INDEX IF NOT EXISTS idx_reports_target_owner ON public.reports (target_owner_user_id, created_at DESC);
CREATE INDEX IF NOT EXISTS idx_reports_target ON public.reports (target_type, target_id);

CREATE UNIQUE INDEX IF NOT EXISTS uq_reports_reporter_target_day
ON public.reports (reporter_user_id, target_type, target_id, created_date)
WHERE reporter_user_id IS NOT NULL;

ALTER TABLE public.reports ENABLE ROW LEVEL SECURITY;

CREATE OR REPLACE FUNCTION public.rate_limit_reports(p_client_session_id text)
RETURNS boolean
LANGUAGE plpgsql
VOLATILE SECURITY DEFINER
SET search_path = 'public'
AS $$
DECLARE
  recent_count integer;
BEGIN
  IF NOT public.validate_search_session(p_client_session_id) THEN
    RETURN false;
  END IF;

  SELECT COUNT(*) INTO recent_count
  FROM public.reports r
  WHERE r.client_session_id = p_client_session_id
    AND r.created_at > now() - INTERVAL '10 minutes';

  RETURN recent_count < 5;
END;
$$;

GRANT EXECUTE ON FUNCTION public.rate_limit_reports(text) TO anon, authenticated;

DROP POLICY IF EXISTS "Reports insert validated" ON public.reports;
CREATE POLICY "Reports insert validated"
ON public.reports
FOR INSERT
TO anon, authenticated
WITH CHECK (
  public.validate_search_session(client_session_id)
  AND public.rate_limit_reports(client_session_id)
  AND length(reason) <= 100
  AND (details IS NULL OR length(details) <= 2000)
  AND (
    (auth.uid() IS NULL AND reporter_user_id IS NULL)
    OR (auth.uid() IS NOT NULL AND reporter_user_id = auth.uid())
  )
);

DROP POLICY IF EXISTS "Moderators can view reports" ON public.reports;
CREATE POLICY "Moderators can view reports"
ON public.reports
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

DROP POLICY IF EXISTS "Moderators can update reports" ON public.reports;
CREATE POLICY "Moderators can update reports"
ON public.reports
FOR UPDATE
TO authenticated
USING (
  EXISTS (
    SELECT 1
    FROM public.user_roles ur
    WHERE ur.user_id = auth.uid()
      AND ur.role IN ('admin', 'moderator')
      AND ur.is_active = true
  )
)
WITH CHECK (
  EXISTS (
    SELECT 1
    FROM public.user_roles ur
    WHERE ur.user_id = auth.uid()
      AND ur.role IN ('admin', 'moderator')
      AND ur.is_active = true
  )
);

CREATE OR REPLACE FUNCTION public.log_report_created()
RETURNS trigger
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = 'public'
AS $$
BEGIN
  PERFORM public.log_security_event(
    auth.uid(),
    NEW.client_session_id,
    'report_created',
    'report',
    NEW.id::text,
    jsonb_build_object(
      'reporter_user_id', NEW.reporter_user_id,
      'target_type', NEW.target_type,
      'target_id', NEW.target_id,
      'target_global_number', NEW.target_global_number,
      'target_owner_user_id', NEW.target_owner_user_id,
      'reason', NEW.reason
    )
  );

  RETURN NEW;
END;
$$;

DROP TRIGGER IF EXISTS trg_log_report_created ON public.reports;
CREATE TRIGGER trg_log_report_created
AFTER INSERT ON public.reports
FOR EACH ROW
EXECUTE FUNCTION public.log_report_created();

CREATE OR REPLACE FUNCTION public.log_report_status_change()
RETURNS trigger
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = 'public'
AS $$
BEGIN
  IF OLD.status IS DISTINCT FROM NEW.status THEN
    PERFORM public.log_security_event(
      auth.uid(),
      NEW.client_session_id,
      'report_status_changed',
      'report',
      NEW.id::text,
      jsonb_build_object(
        'from', OLD.status,
        'to', NEW.status,
        'resolved_by', NEW.resolved_by,
        'assigned_to', NEW.assigned_to
      )
    );
  END IF;

  RETURN NEW;
END;
$$;

DROP TRIGGER IF EXISTS trg_log_report_status_change ON public.reports;
CREATE TRIGGER trg_log_report_status_change
AFTER UPDATE ON public.reports
FOR EACH ROW
EXECUTE FUNCTION public.log_report_status_change();

CREATE TABLE IF NOT EXISTS public.moderation_actions (
  id uuid NOT NULL DEFAULT gen_random_uuid() PRIMARY KEY,
  user_id uuid NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  action_type text NOT NULL CHECK (action_type IN ('warn', 'suspend', 'ban', 'unban')),
  reason text NOT NULL,
  evidence_links text[] NULL,
  admin_id uuid NOT NULL REFERENCES auth.users(id) ON DELETE RESTRICT,
  created_at timestamptz NOT NULL DEFAULT now(),
  expires_at timestamptz NULL
);

CREATE INDEX IF NOT EXISTS idx_moderation_actions_user_id ON public.moderation_actions (user_id, created_at DESC);
CREATE INDEX IF NOT EXISTS idx_moderation_actions_admin_id ON public.moderation_actions (admin_id, created_at DESC);
CREATE INDEX IF NOT EXISTS idx_moderation_actions_action_type ON public.moderation_actions (action_type, created_at DESC);

ALTER TABLE public.moderation_actions ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Moderators can view moderation actions" ON public.moderation_actions;
CREATE POLICY "Moderators can view moderation actions"
ON public.moderation_actions
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

DROP POLICY IF EXISTS "Moderators can create moderation actions" ON public.moderation_actions;
CREATE POLICY "Moderators can create moderation actions"
ON public.moderation_actions
FOR INSERT
TO authenticated
WITH CHECK (
  admin_id = auth.uid()
  AND EXISTS (
    SELECT 1
    FROM public.user_roles ur
    WHERE ur.user_id = auth.uid()
      AND ur.role IN ('admin', 'moderator')
      AND ur.is_active = true
  )
);

CREATE OR REPLACE FUNCTION public.log_moderation_action_created()
RETURNS trigger
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = 'public'
AS $$
BEGIN
  PERFORM public.log_security_event(
    NEW.admin_id,
    COALESCE(current_setting('app.current_session_id', true), ''),
    'moderation_action_created',
    'moderation_action',
    NEW.id::text,
    jsonb_build_object(
      'action_type', NEW.action_type,
      'target_user_id', NEW.user_id,
      'expires_at', NEW.expires_at
    )
  );

  RETURN NEW;
END;
$$;

DROP TRIGGER IF EXISTS trg_log_moderation_action_created ON public.moderation_actions;
CREATE TRIGGER trg_log_moderation_action_created
AFTER INSERT ON public.moderation_actions
FOR EACH ROW
EXECUTE FUNCTION public.log_moderation_action_created();

COMMIT;
