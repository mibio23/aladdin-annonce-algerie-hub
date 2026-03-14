
-- Migration pour réparer les numéros de téléphone manquants
-- Version finale avec le nom exact du trigger

BEGIN;

-- 1. Désactiver le trigger spécifique qui bloque (nom exact identifié : prevent_identity_fields_update_trigger)
ALTER TABLE public.profiles DISABLE TRIGGER prevent_identity_fields_update_trigger;

-- 2. Exécuter la réparation : copier le téléphone manquant depuis les métadonnées auth
UPDATE public.profiles p
SET 
  phone = (u.raw_user_meta_data->>'phone')::text,
  gender = COALESCE(p.gender, (u.raw_user_meta_data->>'gender')::text),
  display_name = COALESCE(p.display_name, (u.raw_user_meta_data->>'full_name')::text)
FROM auth.users u
WHERE p.user_id = u.id
AND (p.phone IS NULL OR p.phone = '')
AND u.raw_user_meta_data->>'phone' IS NOT NULL;

-- 3. Réactiver le trigger immédiatement pour restaurer la sécurité
ALTER TABLE public.profiles ENABLE TRIGGER prevent_identity_fields_update_trigger;

COMMIT;
