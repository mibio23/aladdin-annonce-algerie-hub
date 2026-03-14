
-- Correction de la récursion infinie dans les politiques RLS de la table profiles
-- Problème : Les politiques sur profiles vérifient user_roles, qui peut vérifier profiles (boucle).
-- Solution : Utiliser une fonction SECURITY DEFINER pour vérifier le rôle admin sans déclencher les RLS.

-- 1. Créer une fonction sécurisée pour vérifier le rôle admin
CREATE OR REPLACE FUNCTION public.is_admin()
RETURNS boolean
LANGUAGE sql
SECURITY DEFINER -- Exécute avec les droits du créateur, contourne les RLS
SET search_path = public
STABLE
AS $$
  SELECT EXISTS (
    SELECT 1
    FROM public.user_roles ur
    WHERE ur.user_id = auth.uid()
      AND ur.role IN ('admin', 'moderator')
  );
$$;

-- 2. Supprimer les politiques problématiques existantes sur profiles
-- On supprime large pour être sûr de nettoyer les anciennes versions qui bouclent
DROP POLICY IF EXISTS "profiles_admin_select" ON public.profiles;
DROP POLICY IF EXISTS "Users can update own profile" ON public.profiles;
DROP POLICY IF EXISTS "Admins can update any profile" ON public.profiles;
DROP POLICY IF EXISTS "Public profiles are viewable by everyone" ON public.profiles;
DROP POLICY IF EXISTS "Users can insert their own profile" ON public.profiles;
DROP POLICY IF EXISTS "Admins can delete any profile" ON public.profiles;

-- 3. Recréer les politiques saines

-- Tout le monde peut voir les profils (lecture publique)
CREATE POLICY "Public profiles are viewable by everyone"
ON public.profiles FOR SELECT
USING (true);

-- L'utilisateur peut créer son propre profil
CREATE POLICY "Users can insert their own profile"
ON public.profiles FOR INSERT
WITH CHECK (auth.uid() = user_id);

-- L'utilisateur peut mettre à jour son propre profil
CREATE POLICY "Users can update own profile"
ON public.profiles FOR UPDATE
USING (auth.uid() = user_id);

-- Les admins peuvent tout mettre à jour (via fonction sécurisée)
CREATE POLICY "Admins can update any profile"
ON public.profiles FOR UPDATE
USING (public.is_admin());

-- Les admins peuvent tout supprimer
CREATE POLICY "Admins can delete any profile"
ON public.profiles FOR DELETE
USING (public.is_admin());
