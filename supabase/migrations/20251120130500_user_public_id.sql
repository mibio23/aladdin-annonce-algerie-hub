CREATE SEQUENCE IF NOT EXISTS public.user_public_id_seq START 1 INCREMENT 1;
ALTER TABLE public.profiles
  ADD COLUMN IF NOT EXISTS public_user_id bigint;
ALTER TABLE public.profiles
  ALTER COLUMN public_user_id SET DEFAULT nextval('public.user_public_id_seq');
DO $$ BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_constraint 
    WHERE conname = 'profiles_public_user_id_key'
  ) THEN
    ALTER TABLE public.profiles ADD CONSTRAINT profiles_public_user_id_key UNIQUE (public_user_id);
  END IF;
END $$;
WITH ordered AS (
  SELECT id FROM public.profiles WHERE public_user_id IS NULL ORDER BY created_at ASC
), assigned AS (
  SELECT id, nextval('public.user_public_id_seq') AS new_public_id FROM ordered
)
UPDATE public.profiles p
SET public_user_id = a.new_public_id
FROM assigned a
WHERE p.id = a.id;
CREATE OR REPLACE FUNCTION public.prevent_public_user_id_update()
RETURNS TRIGGER
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path TO 'public'
AS $$
BEGIN
  IF OLD.public_user_id IS DISTINCT FROM NEW.public_user_id THEN
    INSERT INTO public.security_audit_log (
      user_id, action_type, resource_type, resource_id, metadata
    ) VALUES (
      auth.uid(), 'public_user_id_update_blocked', 'profile', COALESCE(NEW.id, OLD.id)::text,
      jsonb_build_object('attempted_new_id', NEW.public_user_id, 'original_id', OLD.public_user_id, 'timestamp', now())
    );
    RAISE EXCEPTION 'Modification de l\'ID public utilisateur interdite';
  END IF;
  RETURN NEW;
END;
$$;
DROP TRIGGER IF EXISTS prevent_public_user_id_update_trigger ON public.profiles;
CREATE TRIGGER prevent_public_user_id_update_trigger
  BEFORE UPDATE ON public.profiles
  FOR EACH ROW
  EXECUTE FUNCTION public.prevent_public_user_id_update();
CREATE OR REPLACE FUNCTION public.handle_new_user()
RETURNS TRIGGER
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path TO 'public'
AS $$
BEGIN
  INSERT INTO public.profiles (user_id, email, full_name, first_name, last_name, public_user_id)
  VALUES (
    NEW.id,
    NEW.email,
    COALESCE(NEW.raw_user_meta_data->>'full_name', NEW.email),
    COALESCE(NEW.raw_user_meta_data->>'first_name', ''),
    COALESCE(NEW.raw_user_meta_data->>'last_name', ''),
    nextval('public.user_public_id_seq')
  );
  RETURN NEW;
END;
$$;