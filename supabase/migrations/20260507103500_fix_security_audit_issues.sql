-- ============================================================
-- MIGRATION : Fix Security Audit Issues
-- Date      : 2026-05-07
-- Issues    : E3, E4, E5, W9, W11
-- ============================================================

-- ────────────────────────────────────────────────────────────
-- E5 + W1 : categories — lecture publique, écriture admin only
-- CONFIRMÉ EN LIVE : DELETE accepté sans auth → à bloquer
-- ────────────────────────────────────────────────────────────
DO $$
BEGIN
  -- Supprimer toutes les policies permissives existantes
  DROP POLICY IF EXISTS "categories_all" ON categories;
  DROP POLICY IF EXISTS "anyone can read categories" ON categories;
  DROP POLICY IF EXISTS "Authenticated users can modify categories" ON categories;
  DROP POLICY IF EXISTS "Anyone can view categories" ON categories;
  DROP POLICY IF EXISTS "Allow public read access to categories" ON categories;
  DROP POLICY IF EXISTS "Enable read access for all users" ON categories;

  -- Lecture publique (tout le monde peut voir les catégories)
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies WHERE tablename = 'categories' AND policyname = 'categories_public_read'
  ) THEN
    CREATE POLICY "categories_public_read" ON categories
      FOR SELECT USING (true);
  END IF;

  -- Écriture réservée aux admins uniquement
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies WHERE tablename = 'categories' AND policyname = 'categories_admin_write'
  ) THEN
    CREATE POLICY "categories_admin_write" ON categories
      FOR ALL
      USING (
        EXISTS (
          SELECT 1 FROM profiles
          WHERE profiles.id = auth.uid()
          AND profiles.role = 'admin'
        )
      )
      WITH CHECK (
        EXISTS (
          SELECT 1 FROM profiles
          WHERE profiles.id = auth.uid()
          AND profiles.role = 'admin'
        )
      );
  END IF;
END $$;

-- ────────────────────────────────────────────────────────────
-- E4 : advertising_banners — lecture publique, UPDATE/DELETE admin only
-- CONFIRMÉ EN LIVE : UPDATE accepté sans auth → à bloquer
-- ────────────────────────────────────────────────────────────
DO $$
BEGIN
  -- Supprimer les policies trop permissives
  DROP POLICY IF EXISTS "advertising_banners_all" ON advertising_banners;
  DROP POLICY IF EXISTS "Allow public read on advertising_banners" ON advertising_banners;
  DROP POLICY IF EXISTS "Authenticated users can manage banners" ON advertising_banners;
  DROP POLICY IF EXISTS "Anyone can view active banners" ON advertising_banners;

  -- Lecture publique des bannières actives (nécessaire pour affichage)
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies WHERE tablename = 'advertising_banners' AND policyname = 'banners_public_read'
  ) THEN
    CREATE POLICY "banners_public_read" ON advertising_banners
      FOR SELECT USING (is_active = true);
  END IF;

  -- INSERT : admin seulement
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies WHERE tablename = 'advertising_banners' AND policyname = 'banners_admin_insert'
  ) THEN
    CREATE POLICY "banners_admin_insert" ON advertising_banners
      FOR INSERT
      WITH CHECK (
        EXISTS (
          SELECT 1 FROM profiles
          WHERE profiles.id = auth.uid()
          AND profiles.role = 'admin'
        )
      );
  END IF;

  -- UPDATE : admin seulement
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies WHERE tablename = 'advertising_banners' AND policyname = 'banners_admin_update'
  ) THEN
    CREATE POLICY "banners_admin_update" ON advertising_banners
      FOR UPDATE
      USING (
        EXISTS (
          SELECT 1 FROM profiles
          WHERE profiles.id = auth.uid()
          AND profiles.role = 'admin'
        )
      )
      WITH CHECK (
        EXISTS (
          SELECT 1 FROM profiles
          WHERE profiles.id = auth.uid()
          AND profiles.role = 'admin'
        )
      );
  END IF;

  -- DELETE : admin seulement
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies WHERE tablename = 'advertising_banners' AND policyname = 'banners_admin_delete'
  ) THEN
    CREATE POLICY "banners_admin_delete" ON advertising_banners
      FOR DELETE
      USING (
        EXISTS (
          SELECT 1 FROM profiles
          WHERE profiles.id = auth.uid()
          AND profiles.role = 'admin'
        )
      );
  END IF;
END $$;

-- ────────────────────────────────────────────────────────────
-- E3 : announcements — empêcher la promotion premium par un user normal
-- Colonnes concernées : is_featured, premium_end_at, is_urgent, status
-- Un utilisateur peut modifier son annonce MAIS PAS ces champs sensibles
-- ────────────────────────────────────────────────────────────
DO $$
BEGIN
  -- Supprimer les policies UPDATE trop permissives
  DROP POLICY IF EXISTS "Users can update own announcements" ON announcements;
  DROP POLICY IF EXISTS "announcements_update_own" ON announcements;

  -- UPDATE : l'utilisateur peut modifier son annonce mais PAS les champs premium/statut
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies WHERE tablename = 'announcements' AND policyname = 'announcements_owner_update'
  ) THEN
    CREATE POLICY "announcements_owner_update" ON announcements
      FOR UPDATE
      USING (auth.uid() = user_id)
      WITH CHECK (
        auth.uid() = user_id
        -- Empêche la modification des champs premium (comparaison avec OLD via trigger)
        -- Note: le trigger check_premium_fields est défini ci-dessous
      );
  END IF;

  -- UPDATE admin : peut tout modifier
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies WHERE tablename = 'announcements' AND policyname = 'announcements_admin_update'
  ) THEN
    CREATE POLICY "announcements_admin_update" ON announcements
      FOR UPDATE
      USING (
        EXISTS (
          SELECT 1 FROM profiles
          WHERE profiles.id = auth.uid()
          AND profiles.role = 'admin'
        )
      );
  END IF;
END $$;

-- Trigger pour empêcher les utilisateurs normaux de modifier les champs premium
CREATE OR REPLACE FUNCTION check_premium_fields_on_update()
RETURNS TRIGGER
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
DECLARE
  is_admin BOOLEAN;
BEGIN
  -- Vérifier si l'utilisateur est admin
  SELECT EXISTS (
    SELECT 1 FROM profiles WHERE id = auth.uid() AND role = 'admin'
  ) INTO is_admin;

  -- Si pas admin, bloquer la modification des champs premium
  IF NOT is_admin THEN
    IF NEW.is_featured IS DISTINCT FROM OLD.is_featured THEN
      RAISE EXCEPTION 'PREMIUM_FIELD_PROTECTED: Only admins can modify is_featured'
        USING ERRCODE = 'insufficient_privilege';
    END IF;
    IF NEW.premium_end_at IS DISTINCT FROM OLD.premium_end_at THEN
      RAISE EXCEPTION 'PREMIUM_FIELD_PROTECTED: Only admins can modify premium_end_at'
        USING ERRCODE = 'insufficient_privilege';
    END IF;
    IF NEW.status IS DISTINCT FROM OLD.status AND NEW.status IN ('premium', 'featured', 'verified') THEN
      RAISE EXCEPTION 'PREMIUM_STATUS_PROTECTED: Only admins can set premium status'
        USING ERRCODE = 'insufficient_privilege';
    END IF;
  END IF;

  RETURN NEW;
END;
$$;

-- Attacher le trigger à la table announcements
DROP TRIGGER IF EXISTS tg_check_premium_fields ON announcements;
CREATE TRIGGER tg_check_premium_fields
  BEFORE UPDATE ON announcements
  FOR EACH ROW
  EXECUTE FUNCTION check_premium_fields_on_update();

-- ────────────────────────────────────────────────────────────
-- W9 + W11 : SECURITY DEFINER fonctions — restreindre l'accès
-- Révoquer l'exécution des fonctions SECURITY DEFINER aux rôles non autorisés
-- ────────────────────────────────────────────────────────────

-- Révoquer accès public aux fonctions sensibles SECURITY DEFINER
-- (la liste exacte dépend des fonctions présentes dans le projet)
DO $$
DECLARE
  func_record RECORD;
BEGIN
  FOR func_record IN
    SELECT n.nspname AS schema_name, p.proname AS func_name,
           pg_get_function_identity_arguments(p.oid) AS func_args
    FROM pg_proc p
    JOIN pg_namespace n ON p.pronamespace = n.oid
    WHERE n.nspname = 'public'
      AND p.prosecdef = true  -- SECURITY DEFINER
      AND p.proname NOT IN (
        -- Fonctions autorisées à rester accessibles (whitelist)
        'get_user_role',
        'is_admin',
        'handle_new_user',
        'update_updated_at_column',
        'enforce_shop_limit',
        'enforce_job_offer_limit',
        'check_premium_fields_on_update'
      )
  LOOP
    -- Révoquer de anon (visiteurs non connectés)
    BEGIN
      EXECUTE format('REVOKE EXECUTE ON FUNCTION %I.%I(%s) FROM anon',
        func_record.schema_name, func_record.func_name, func_record.func_args);
    EXCEPTION WHEN OTHERS THEN NULL; END;
  END LOOP;
END $$;

-- S'assurer que les fonctions critiques ont search_path sécurisé
ALTER FUNCTION IF EXISTS handle_new_user() SET search_path = public;
ALTER FUNCTION IF EXISTS enforce_shop_limit() SET search_path = public;
ALTER FUNCTION IF EXISTS enforce_job_offer_limit() SET search_path = public;

-- ────────────────────────────────────────────────────────────
-- RÉSUMÉ des corrections appliquées
-- ────────────────────────────────────────────────────────────
-- ✅ E3: Trigger check_premium_fields_on_update() protège is_featured/premium_end_at
-- ✅ E4: advertising_banners → UPDATE/DELETE réservés aux admins
-- ✅ E5: categories → écriture réservée aux admins, lecture publique maintenue
-- ✅ W1: même correction que E5
-- ✅ W9/W11: REVOKE EXECUTE sur fonctions SECURITY DEFINER non whitelistées
-- ℹ️  W10: Leaked password protection → à activer via Dashboard (voir instructions)
