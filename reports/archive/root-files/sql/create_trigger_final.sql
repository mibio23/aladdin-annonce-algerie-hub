-- SCRIPT FINAL : Créer le trigger pour le compteur automatique

-- ÉTAPE 1: Créer la fonction de mise à jour du compteur d'abonnés
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

-- ÉTAPE 2: Créer le trigger pour le compteur automatique
DROP TRIGGER IF EXISTS update_shop_followers ON public.pro_favorites;
CREATE TRIGGER update_shop_followers
    AFTER INSERT OR DELETE ON public.pro_favorites
    FOR EACH ROW EXECUTE FUNCTION update_shop_followers_count();

-- ÉTAPE 3: Message de confirmation
DO $$
BEGIN
    RAISE NOTICE '✅ Trigger de comptage automatique créé';
    RAISE NOTICE '✅ Le compteur d''abonnés se mettra à jour automatiquement';
END $$;