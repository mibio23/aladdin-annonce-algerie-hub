-- SCRIPT POUR LA TABLE FAVORIS PROFESSIONNELS ET LE TRIGGER

-- ÉTAPE 1: Créer la table favoris professionnels (pro_favorites)
CREATE TABLE IF NOT EXISTS public.pro_favorites (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
    pro_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW() NOT NULL,
    UNIQUE(user_id, pro_id)
);

-- ÉTAPE 2: Activer RLS pour la sécurité
ALTER TABLE public.pro_favorites ENABLE ROW LEVEL SECURITY;

-- ÉTAPE 3: Créer les politiques RLS pour les favoris professionnels
CREATE POLICY "Les utilisateurs peuvent voir leurs favoris pros" ON public.pro_favorites
    FOR SELECT USING (auth.uid() = user_id);
    
CREATE POLICY "Les utilisateurs peuvent créer leurs favoris pros" ON public.pro_favorites
    FOR INSERT WITH CHECK (auth.uid() = user_id);
    
CREATE POLICY "Les utilisateurs peuvent supprimer leurs favoris pros" ON public.pro_favorites
    FOR DELETE USING (auth.uid() = user_id);

-- ÉTAPE 4: Créer la fonction de mise à jour du compteur d'abonnés
CREATE OR REPLACE FUNCTION update_shop_followers_count()
RETURNS TRIGGER AS $$
BEGIN
    IF TG_OP = 'INSERT' THEN
        UPDATE public.shops SET followers_count = followers_count + 1 WHERE user_id = NEW.pro_id;
        RETURN NEW;
    ELSIF TG_OP = 'DELETE' THEN
        UPDATE public.shops SET followers_count = followers_count - 1 WHERE user_id = OLD.pro_id;
        RETURN OLD;
    END IF;
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;

-- ÉTAPE 5: Créer le trigger pour le compteur automatique
DROP TRIGGER IF EXISTS update_shop_followers ON public.pro_favorites;
CREATE TRIGGER update_shop_followers
    AFTER INSERT OR DELETE ON public.pro_favorites
    FOR EACH ROW EXECUTE FUNCTION update_shop_followers_count();

-- ÉTAPE 6: Message de confirmation
DO $$
BEGIN
    RAISE NOTICE '✅ Table favoris professionnels (pro_favorites) créée';
    RAISE NOTICE '✅ Sécurité RLS configurée';
    RAISE NOTICE '✅ Trigger de comptage automatique activé';
END $$;