-- Migration pour ajouter les tables et colonnes manquantes
-- Date: 2026-02-11

-- 1. Créer la table pro_favorites
CREATE TABLE IF NOT EXISTS public.pro_favorites (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
    pro_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW() NOT NULL,
    UNIQUE(user_id, pro_id)
);

-- 2. Ajouter la colonne followers_count à la table shops
ALTER TABLE public.shops 
ADD COLUMN IF NOT EXISTS followers_count INTEGER DEFAULT 0 NOT NULL;

-- 3. Créer les politiques RLS pour pro_favorites
ALTER TABLE public.pro_favorites ENABLE ROW LEVEL SECURITY;

-- Politique pour permettre aux utilisateurs de voir leurs propres favoris
CREATE POLICY "Users can view their own pro favorites" ON public.pro_favorites
    FOR SELECT USING (auth.uid() = user_id);

-- Politique pour permettre aux utilisateurs d'ajouter des favoris
CREATE POLICY "Users can create their own pro favorites" ON public.pro_favorites
    FOR INSERT WITH CHECK (auth.uid() = user_id);

-- Politique pour permettre aux utilisateurs de supprimer leurs favoris
CREATE POLICY "Users can delete their own pro favorites" ON public.pro_favorites
    FOR DELETE USING (auth.uid() = user_id);

-- 4. Créer des index pour améliorer les performances
CREATE INDEX IF NOT EXISTS idx_pro_favorites_user_id ON public.pro_favorites(user_id);
CREATE INDEX IF NOT EXISTS idx_pro_favorites_pro_id ON public.pro_favorites(pro_id);
CREATE INDEX IF NOT EXISTS idx_shops_followers_count ON public.shops(followers_count);

-- 5. Fonction pour mettre à jour followers_count automatiquement
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

-- 6. Créer le trigger pour followers_count
DROP TRIGGER IF EXISTS update_shop_followers_count_trigger ON public.pro_favorites;
CREATE TRIGGER update_shop_followers_count_trigger
    AFTER INSERT OR DELETE ON public.pro_favorites
    FOR EACH ROW EXECUTE FUNCTION update_shop_followers_count();

-- 7. Mettre à jour followers_count pour les shops existants
UPDATE public.shops 
SET followers_count = COALESCE(
    (SELECT COUNT(*) FROM public.pro_favorites WHERE pro_id = shops.id), 0
);