
-- ==============================================================================
-- SCRIPT DE CORRECTION DES PERMISSIONS (RLS) ET TABLES MANQUANTES
-- ==============================================================================
-- INSTRUCTIONS:
-- 1. Copiez tout le contenu de ce fichier
-- 2. Allez dans le Dashboard Supabase > SQL Editor
-- 3. Collez et cliquez sur "Run"
-- ==============================================================================

-- 1. Table user_presence (pour le tracker en ligne)
CREATE TABLE IF NOT EXISTS public.user_presence (
  user_id UUID PRIMARY KEY REFERENCES auth.users(id),
  is_online BOOLEAN DEFAULT false,
  last_seen_at TIMESTAMPTZ DEFAULT now()
);

-- Activer la sécurité (RLS)
ALTER TABLE public.user_presence ENABLE ROW LEVEL SECURITY;

-- Politiques pour user_presence
DROP POLICY IF EXISTS "Users can manage their own presence" ON public.user_presence;
CREATE POLICY "Users can manage their own presence"
ON public.user_presence
FOR ALL
TO authenticated
USING ( auth.uid() = user_id )
WITH CHECK ( auth.uid() = user_id );

DROP POLICY IF EXISTS "Anyone can view presence" ON public.user_presence;
CREATE POLICY "Anyone can view presence"
ON public.user_presence
FOR SELECT
USING ( true );

-- 2. Permissions pour le bucket 'job-offer-images'
-- Note: Le bucket a déjà été créé par le script précédent, mais il manque les droits d'accès.

-- Lecture publique
DROP POLICY IF EXISTS "Public Access job-offer-images" ON storage.objects;
CREATE POLICY "Public Access job-offer-images"
ON storage.objects FOR SELECT
USING ( bucket_id = 'job-offer-images' );

-- Upload pour les utilisateurs connectés
DROP POLICY IF EXISTS "Auth Upload job-offer-images" ON storage.objects;
CREATE POLICY "Auth Upload job-offer-images"
ON storage.objects FOR INSERT
TO authenticated
WITH CHECK ( bucket_id = 'job-offer-images' );

-- Modification/Suppression de ses propres fichiers
DROP POLICY IF EXISTS "Auth Manage job-offer-images" ON storage.objects;
CREATE POLICY "Auth Manage job-offer-images"
ON storage.objects FOR ALL
TO authenticated
USING ( bucket_id = 'job-offer-images' AND owner = auth.uid() )
WITH CHECK ( bucket_id = 'job-offer-images' AND owner = auth.uid() );

-- 3. Permissions pour le bucket 'announcement-images' (Sécurité)
DROP POLICY IF EXISTS "Public Access announcement-images" ON storage.objects;
CREATE POLICY "Public Access announcement-images"
ON storage.objects FOR SELECT
USING ( bucket_id = 'announcement-images' );

DROP POLICY IF EXISTS "Auth Upload announcement-images" ON storage.objects;
CREATE POLICY "Auth Upload announcement-images"
ON storage.objects FOR INSERT
TO authenticated
WITH CHECK ( bucket_id = 'announcement-images' );

DROP POLICY IF EXISTS "Auth Manage announcement-images" ON storage.objects;
CREATE POLICY "Auth Manage announcement-images"
ON storage.objects FOR ALL
TO authenticated
USING ( bucket_id = 'announcement-images' AND owner = auth.uid() )
WITH CHECK ( bucket_id = 'announcement-images' AND owner = auth.uid() );
