CREATE OR REPLACE FUNCTION public.prevent_identity_fields_update()
RETURNS TRIGGER
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path TO 'public'
AS $$
BEGIN
  IF (
    OLD.first_name IS DISTINCT FROM NEW.first_name OR
    OLD.last_name IS DISTINCT FROM NEW.last_name OR
    OLD.gender IS DISTINCT FROM NEW.gender OR
    OLD.phone IS DISTINCT FROM NEW.phone
  ) THEN
    INSERT INTO public.security_audit_log (
      user_id, action_type, resource_type, resource_id, metadata
    ) VALUES (
      auth.uid(),
      'identity_fields_update_blocked',
      'profile',
      COALESCE(NEW.id, OLD.id)::text,
      jsonb_build_object(
        'attempted_changes', jsonb_build_object(
          'first_name', NEW.first_name,
          'last_name', NEW.last_name,
          'gender', NEW.gender,
          'phone', NEW.phone
        ),
        'original_values', jsonb_build_object(
          'first_name', OLD.first_name,
          'last_name', OLD.last_name,
          'gender', OLD.gender,
          'phone', OLD.phone
        ),
        'timestamp', now()
      )
    );

    RAISE EXCEPTION 'Modification des champs d''identité interdite';
  END IF;

  RETURN NEW;
END;
$$;

DROP TRIGGER IF EXISTS prevent_identity_fields_update_trigger ON public.profiles;
CREATE TRIGGER prevent_identity_fields_update_trigger
  BEFORE UPDATE ON public.profiles
  FOR EACH ROW
  EXECUTE FUNCTION public.prevent_identity_fields_update();