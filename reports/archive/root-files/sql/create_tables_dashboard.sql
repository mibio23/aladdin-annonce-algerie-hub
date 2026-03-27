-- Script SQL complet pour créer les tables fonctionnelles
-- À copier-coller dans le dashboard Supabase

-- ÉTAPE 1: Créer la table des favoris professionnels (pro_favorites)
CREATE TABLE IF NOT EXISTS public.pro_favorites (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
    pro_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW() NOT NULL,
    UNIQUE(user_id, pro_id)
);

-- Activer RLS pour la sécurité
ALTER TABLE public.pro_favorites ENABLE ROW LEVEL SECURITY;

-- Politiques RLS pour les favoris professionnels
CREATE POLICY "Les utilisateurs peuvent voir leurs favoris pros" ON public.pro_favorites
    FOR SELECT USING (auth.uid() = user_id);
    
CREATE POLICY "Les utilisateurs peuvent créer leurs favoris pros" ON public.pro_favorites
    FOR INSERT WITH CHECK (auth.uid() = user_id);
    
CREATE POLICY "Les utilisateurs peuvent supprimer leurs favoris pros" ON public.pro_favorites
    FOR DELETE USING (auth.uid() = user_id);

-- ÉTAPE 2: Vérifier si la table shops existe et ajouter le compteur d'abonnés
DO $$
BEGIN
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'shops') THEN
        -- Ajouter la colonne compteur d'abonnés (followers_count)
        ALTER TABLE public.shops 
        ADD COLUMN IF NOT EXISTS followers_count INTEGER DEFAULT 0 NOT NULL;
        
        RAISE NOTICE '✅ Colonne followers_count ajoutée à la table shops';
    ELSE
        RAISE NOTICE '⚠️ La table shops n''existe pas encore';
    END IF;
END $$;

-- ÉTAPE 3: Créer la fonction de mise à jour du compteur
CREATE OR REPLACE FUNCTION update_shop_followers_count()
RETURNS TRIGGER AS $$
BEGIN
    IF TG_OP = 'INSERT' THEN
        UPDATE public.shops SET followers_count = followers_count + 1 WHERE id = NEW.pro_id;
        RETURN NEW;
    ELSIF TG_OP = 'DELETE' THEN
        UPDATE public.shops SET followers_count = followers_count - 1 WHERE id = OLD.pro_id;
        RETURN OLD;
    END IF;
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;

-- ÉTAPE 4: Créer le trigger
DROP TRIGGER IF EXISTS update_shop_followers ON public.pro_favorites;
CREATE TRIGGER update_shop_followers
    AFTER INSERT OR DELETE ON public.pro_favorites
    FOR EACH ROW EXECUTE FUNCTION update_shop_followers_count();

-- Vérification finale
SELECT '✅ Table favoris professionnels (pro_favorites) créée' as status
WHERE EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'pro_favorites');

SELECT '✅ Colonne compteur d''abonnés (followers_count) ajoutée' as status
WHERE EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema = 'public' AND table_name = 'shops' AND column_name = 'followers_count');