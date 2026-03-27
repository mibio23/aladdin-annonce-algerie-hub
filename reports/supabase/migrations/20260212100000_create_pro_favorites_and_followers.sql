-- Migration pour créer les tables de gestion des favoris professionnels
-- Cette migration crée : 
-- 1. La table pro_favorites pour stocker les favoris des utilisateurs vers les professionnels
-- 2. La colonne followers_count dans shops pour compter les abonnés

-- Table des favoris professionnels
CREATE TABLE IF NOT EXISTS public.pro_favorites (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
    pro_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW() NOT NULL,
    UNIQUE(user_id, pro_id)
);

-- Colonne pour compter les abonnés dans les shops
ALTER TABLE public.shops 
ADD COLUMN IF NOT EXISTS followers_count INTEGER DEFAULT 0 NOT NULL;

-- Sécurité : activer RLS
ALTER TABLE public.pro_favorites ENABLE ROW LEVEL SECURITY;

-- Politiques de sécurité
CREATE POLICY "Users can view their own pro favorites" ON public.pro_favorites
    FOR SELECT USING (auth.uid() = user_id);

CREATE POLICY "Users can create their own pro favorites" ON public.pro_favorites
    FOR INSERT WITH CHECK (auth.uid() = user_id);

CREATE POLICY "Users can delete their own pro favorites" ON public.pro_favorites
    FOR DELETE USING (auth.uid() = user_id);

-- Index pour performances
CREATE INDEX IF NOT EXISTS idx_pro_favorites_user_id ON public.pro_favorites(user_id);
CREATE INDEX IF NOT EXISTS idx_pro_favorites_pro_id ON public.pro_favorites(pro_id);
CREATE INDEX IF NOT EXISTS idx_shops_followers_count ON public.shops(followers_count);

-- Fonction de mise à jour automatique du compteur
CREATE OR REPLACE FUNCTION update_shop_followers_count()
RETURNS TRIGGER AS $$
BEGIN
    IF TG_OP = 'INSERT' THEN
        UPDATE public.shops 
        SET followers_count = followers_count + 1 
        WHERE id = NEW.pro_id;
        RETURN NEW;
    ELSIF TG_OP = 'DELETE' THEN
        UPDATE public.shops 
        SET followers_count = followers_count - 1 
        WHERE id = OLD.pro_id AND followers_count > 0;
        RETURN OLD;
    END IF;
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;

-- Trigger pour la mise à jour automatique
DROP TRIGGER IF EXISTS update_shop_followers_count_trigger ON public.pro_favorites;
CREATE TRIGGER update_shop_followers_count_trigger
    AFTER INSERT OR DELETE ON public.pro_favorites
    FOR EACH ROW EXECUTE FUNCTION update_shop_followers_count();

-- Initialiser le compteur pour les shops existants
UPDATE public.shops 
SET followers_count = COALESCE(
    (SELECT COUNT(*) FROM public.pro_favorites WHERE pro_id = shops.id), 0
);