-- Script SQL complet pour créer les tables fonctionnelles
-- À exécuter directement dans le dashboard Supabase

-- 1. Créer la table des favoris professionnels (pro_favorites)
CREATE TABLE IF NOT EXISTS public.pro_favorites (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
    pro_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW() NOT NULL,
    UNIQUE(user_id, pro_id)
);

-- Activer RLS pour la sécurité
ALTER TABLE public.pro_favorites ENABLE ROW LEVEL SECURITY;

-- Créer des politiques RLS pour sécuriser l'accès
CREATE POLICY "Les utilisateurs peuvent voir leurs propres favoris pros" ON public.pro_favorites
    FOR SELECT USING (auth.uid() = user_id);
    
CREATE POLICY "Les utilisateurs peuvent créer leurs propres favoris pros" ON public.pro_favorites
    FOR INSERT WITH CHECK (auth.uid() = user_id);
    
CREATE POLICY "Les utilisateurs peuvent supprimer leurs propres favoris pros" ON public.pro_favorites
    FOR DELETE USING (auth.uid() = user_id);

-- 2. Ajouter le compteur d'abonnés (followers_count) à la table shops
-- Note: Cette commande nécessite que la table shops existe déjà
ALTER TABLE public.shops 
ADD COLUMN IF NOT EXISTS followers_count INTEGER DEFAULT 0 NOT NULL;

-- 3. Créer la fonction et le trigger pour mettre à jour automatiquement le compteur
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

-- Créer le trigger
DROP TRIGGER IF EXISTS update_shop_followers ON public.pro_favorites;
CREATE TRIGGER update_shop_followers
    AFTER INSERT OR DELETE ON public.pro_favorites
    FOR EACH ROW EXECUTE FUNCTION update_shop_followers_count();

-- 4. Vérification finale
SELECT table_name FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'pro_favorites';
SELECT column_name FROM information_schema.columns WHERE table_schema = 'public' AND table_name = 'shops' AND column_name = 'followers_count';