-- 1. Supprimer les vues dépendantes (c'est nécessaire pour modifier le type de colonne)
DROP VIEW IF EXISTS public.announcements_safe CASCADE;
DROP VIEW IF EXISTS public.announcements_public CASCADE;

-- 2. Augmenter la taille du prix (Supporte > 100 Milliards)
-- On utilise ALTER COLUMN TYPE qui convertira les données existantes
ALTER TABLE announcements ALTER COLUMN price TYPE numeric(25, 2);

-- 3. Ajouter l'option "Prix à négocier" si elle n'existe pas déjà
ALTER TABLE announcements ADD COLUMN IF NOT EXISTS is_negotiable BOOLEAN DEFAULT false;

-- 4. Recréer la vue announcements_public (version simple sans security definer pour éviter les erreurs)
CREATE VIEW public.announcements_public AS
SELECT 
  id,
  title,
  description,
  price,
  location,
  image_url,
  image_urls,
  category_id,
  created_at,
  updated_at,
  expires_at,
  keywords,
  type,
  condition,
  status,
  is_urgent,
  urgent_message,
  view_count,
  shop_name,
  shop_id,
  shop_logo_url,
  NULL::text as phone_number, -- Toujours NULL pour la vue publique par sécurité
  (phone_number IS NOT NULL) as has_contact_info
FROM public.announcements 
WHERE status = 'active';

GRANT SELECT ON public.announcements_public TO anon, authenticated;

-- 5. Recréer la vue announcements_safe (version complète avec security invoker)
CREATE VIEW public.announcements_safe
WITH (security_invoker = true)
AS
SELECT 
  a.id,
  a.title,
  a.description,
  a.price,
  a.location,
  a.image_url,
  a.image_urls,
  a.category_id,
  a.user_id,
  a.created_at,
  a.updated_at,
  a.expires_at,
  a.keywords,
  a.type,
  a.condition,
  a.status,
  a.is_urgent,
  a.is_negotiable, -- Ajout du champ is_negotiable
  a.urgent_message,
  a.view_count,
  a.shop_name,
  a.shop_id,
  a.shop_logo_url,
  a.contact_count,
  a.wilaya,
  a.commune,
  a.currency,
  a.premium_end_at,
  -- Masquer automatiquement le numéro selon l'authentification
  CASE 
    WHEN auth.uid() IS NOT NULL THEN a.phone_number
    WHEN a.phone_number IS NOT NULL THEN '**********'
    ELSE NULL
  END as phone_number
FROM public.announcements a
WHERE a.status = 'active';

GRANT SELECT ON public.announcements_safe TO anon, authenticated;
