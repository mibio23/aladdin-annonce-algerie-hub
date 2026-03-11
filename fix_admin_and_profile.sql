-- ==========================================
-- 1. CORRECTION RLS POUR LA TABLE user_roles
-- ==========================================

-- S'assurer que RLS est activé
ALTER TABLE public.user_roles ENABLE ROW LEVEL SECURITY;

-- Supprimer les anciennes politiques pour éviter les conflits
DROP POLICY IF EXISTS "Users can view their own roles" ON public.user_roles;
DROP POLICY IF EXISTS "Admins can view all roles" ON public.user_roles;
DROP POLICY IF EXISTS "Admins can manage roles" ON public.user_roles;
DROP POLICY IF EXISTS "user_roles_read_own" ON public.user_roles;
DROP POLICY IF EXISTS "user_roles_admin_all" ON public.user_roles;

-- Politique : Un utilisateur peut voir son propre rôle
CREATE POLICY "user_roles_read_own"
ON public.user_roles
FOR SELECT
TO authenticated
USING (auth.uid() = user_id);

-- Politique : Un administrateur peut tout voir
CREATE POLICY "user_roles_admin_all"
ON public.user_roles
FOR ALL
TO authenticated
USING (
  EXISTS (
    SELECT 1 FROM public.user_roles
    WHERE user_id = auth.uid()
    AND role = 'admin'
  )
);

-- ========================================
-- 2. CORRECTION RLS POUR LA TABLE profiles
-- ========================================

-- S'assurer que RLS est activé
ALTER TABLE public.profiles ENABLE ROW LEVEL SECURITY;

-- Supprimer les anciennes politiques
DROP POLICY IF EXISTS "Users can view their own profile" ON public.profiles;
DROP POLICY IF EXISTS "Users can update their own profile" ON public.profiles;
DROP POLICY IF EXISTS "Users can insert their own profile" ON public.profiles;
DROP POLICY IF EXISTS "profiles_read_own" ON public.profiles;
DROP POLICY IF EXISTS "profiles_update_own" ON public.profiles;
DROP POLICY IF EXISTS "profiles_insert_own" ON public.profiles;
DROP POLICY IF EXISTS "Public profiles are viewable by everyone" ON public.profiles;

-- Politique : Tout le monde peut voir les profils (nécessaire pour afficher les vendeurs, etc.)
CREATE POLICY "profiles_read_public"
ON public.profiles
FOR SELECT
TO authenticated, anon
USING (true);

-- Politique : Un utilisateur peut modifier SON propre profil
CREATE POLICY "profiles_update_own"
ON public.profiles
FOR UPDATE
TO authenticated
USING (auth.uid() = user_id);

-- Politique : Un utilisateur peut créer SON propre profil
CREATE POLICY "profiles_insert_own"
ON public.profiles
FOR INSERT
TO authenticated
WITH CHECK (auth.uid() = user_id);

-- ========================================================
-- 3. CRÉATION DU PROFIL MANQUANT POUR L'UTILISATEUR CIBLE
-- ========================================================

DO $$
DECLARE
    target_user_id UUID := 'ba70424b-45b1-45db-936d-467e37b261d8'; -- ID de info18shopworld@gmail.com
    target_email TEXT := 'info18shopworld@gmail.com';
BEGIN
    -- Vérifier si le profil existe déjà
    IF NOT EXISTS (SELECT 1 FROM public.profiles WHERE user_id = target_user_id) THEN
        -- Insérer le profil manquant
        INSERT INTO public.profiles (
            id, -- On génère un nouvel ID pour le profil
            user_id,
            email,
            full_name,
            first_name,
            last_name,
            created_at,
            updated_at
        ) VALUES (
            gen_random_uuid(),
            target_user_id,
            target_email,
            'Info Shop World', -- Nom par défaut
            'Info',
            'Shop World',
            now(),
            now()
        );
        RAISE NOTICE 'Profil créé pour %', target_email;
    ELSE
        RAISE NOTICE 'Le profil existe déjà pour %', target_email;
    END IF;
END $$;
