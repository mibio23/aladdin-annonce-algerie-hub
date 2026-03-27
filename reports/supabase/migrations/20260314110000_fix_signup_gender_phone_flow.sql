BEGIN;

ALTER TABLE public.profiles
  ALTER COLUMN gender DROP DEFAULT;

CREATE OR REPLACE FUNCTION public.handle_new_user()
RETURNS TRIGGER
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path TO 'public'
AS $$
DECLARE
  meta_gender text;
  normalized_gender text;
  meta_phone text;
  meta_first_name text;
  meta_last_name text;
  meta_full_name text;
BEGIN
  meta_gender := lower(trim(coalesce(NEW.raw_user_meta_data->>'gender', '')));
  normalized_gender := CASE
    WHEN meta_gender IN ('homme', 'femme') THEN meta_gender
    ELSE NULL
  END;

  meta_phone := NULLIF(trim(coalesce(NEW.raw_user_meta_data->>'phone', '')), '');
  meta_first_name := NULLIF(trim(coalesce(NEW.raw_user_meta_data->>'first_name', '')), '');
  meta_last_name := NULLIF(trim(coalesce(NEW.raw_user_meta_data->>'last_name', '')), '');
  meta_full_name := NULLIF(trim(coalesce(NEW.raw_user_meta_data->>'full_name', '')), '');

  INSERT INTO public.profiles (
    user_id,
    email,
    full_name,
    first_name,
    last_name,
    display_name,
    phone,
    gender,
    public_user_id
  )
  VALUES (
    NEW.id,
    NEW.email,
    COALESCE(meta_full_name, NEW.email),
    meta_first_name,
    meta_last_name,
    meta_full_name,
    meta_phone,
    normalized_gender,
    nextval('public.user_public_id_seq')
  )
  ON CONFLICT (user_id) DO UPDATE
  SET
    email = COALESCE(public.profiles.email, EXCLUDED.email),
    full_name = COALESCE(public.profiles.full_name, EXCLUDED.full_name),
    first_name = COALESCE(public.profiles.first_name, EXCLUDED.first_name),
    last_name = COALESCE(public.profiles.last_name, EXCLUDED.last_name),
    display_name = COALESCE(public.profiles.display_name, EXCLUDED.display_name),
    phone = COALESCE(public.profiles.phone, EXCLUDED.phone),
    gender = COALESCE(public.profiles.gender, EXCLUDED.gender),
    updated_at = now();

  RETURN NEW;
END;
$$;

ALTER TABLE public.profiles DISABLE TRIGGER prevent_identity_fields_update_trigger;

UPDATE public.profiles p
SET
  phone = COALESCE(NULLIF(trim(p.phone), ''), NULLIF(trim(u.raw_user_meta_data->>'phone'), '')),
  gender = COALESCE(
    p.gender,
    CASE
      WHEN lower(trim(coalesce(u.raw_user_meta_data->>'gender', ''))) IN ('homme', 'femme')
        THEN lower(trim(u.raw_user_meta_data->>'gender'))
      ELSE NULL
    END
  ),
  display_name = COALESCE(NULLIF(trim(p.display_name), ''), NULLIF(trim(u.raw_user_meta_data->>'full_name'), ''))
FROM auth.users u
WHERE p.user_id = u.id
  AND (
    p.phone IS NULL OR trim(p.phone) = '' OR
    p.gender IS NULL OR
    p.display_name IS NULL OR trim(p.display_name) = ''
  );

ALTER TABLE public.profiles ENABLE TRIGGER prevent_identity_fields_update_trigger;

COMMIT;
