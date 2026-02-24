const { createClient } = require('@supabase/supabase-js');
require('dotenv').config();

const supabase = createClient(
  process.env.VITE_SUPABASE_URL,
  process.env.VITE_SUPABASE_ANON_KEY
);

const sqlScript = `
-- Créer la table pro_favorites (favoris professionnels)
CREATE TABLE IF NOT EXISTS public.pro_favorites (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
    pro_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW() NOT NULL,
    UNIQUE(user_id, pro_id)
);

-- Ajouter la colonne followers_count (compteur d'abonnés) à la table shops
ALTER TABLE public.shops 
ADD COLUMN IF NOT EXISTS followers_count INTEGER DEFAULT 0 NOT NULL;

-- Politiques RLS pour pro_favorites (sécurité au niveau ligne)
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

-- Index pour améliorer les performances
CREATE INDEX IF NOT EXISTS idx_pro_favorites_user_id ON public.pro_favorites(user_id);
CREATE INDEX IF NOT EXISTS idx_pro_favorites_pro_id ON public.pro_favorites(pro_id);
CREATE INDEX IF NOT EXISTS idx_shops_followers_count ON public.shops(followers_count);

-- Fonction pour mettre à jour automatiquement le compteur d'abonnés
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

-- Trigger pour followers_count (mise à jour automatique)
DROP TRIGGER IF EXISTS update_shop_followers_count_trigger ON public.pro_favorites;
CREATE TRIGGER update_shop_followers_count_trigger
    AFTER INSERT OR DELETE ON public.pro_favorites
    FOR EACH ROW EXECUTE FUNCTION update_shop_followers_count();

-- Mettre à jour le compteur pour les shops existants
UPDATE public.shops 
SET followers_count = COALESCE(
    (SELECT COUNT(*) FROM public.pro_favorites WHERE pro_id = shops.id), 0
);
`;

async function executeSQL() {
  try {
    // Exécuter le script SQL
    const { error } = await supabase.rpc('exec_sql', { sql: sqlScript });
    
    if (error) {
      console.error('Erreur lors de l\'exécution du SQL:', error);
    } else {
      console.log('✅ Tables créées avec succès!');
      console.log('- Table pro_favorites créée');
      console.log('- Colonne followers_count ajoutée à shops');
      console.log('- RLS policies configurées');
      console.log('- Trigger followers_count activé');
    }
  } catch (err) {
    console.error('Erreur:', err);
  }
}

executeSQL();