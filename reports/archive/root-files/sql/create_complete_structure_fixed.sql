-- SCRIPT COMPLET CORRIGÉ : Créer la structure de base + les tables fonctionnelles

-- ÉTAPE 1: Créer la table commerces (shops) si elle n'existe pas
CREATE TABLE IF NOT EXISTS public.shops (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    name TEXT NOT NULL,
    description TEXT,
    wilaya TEXT NOT NULL,
    commune TEXT,
    shop_status TEXT,
    phone_numbers TEXT[],
    landline_phone TEXT,
    logo_url TEXT,
    banner_url TEXT,
    product_image_urls TEXT[],
    product_video_urls TEXT[],
    is_online BOOLEAN DEFAULT false,
    is_physical BOOLEAN DEFAULT false,
    is_verified BOOLEAN DEFAULT false,
    user_id UUID REFERENCES auth.users(id) ON DELETE CASCADE NOT NULL,
    address TEXT,
    postal_code TEXT,
    gps_coordinates JSONB DEFAULT '{"lat": 0, "lng": 0}'::jsonb,
    opening_hours JSONB DEFAULT '{}'::jsonb,
    landmark TEXT,
    website TEXT,
    social_media JSONB DEFAULT '{}'::jsonb,
    secondary_email TEXT,
    whatsapp_number TEXT,
    main_category TEXT,
    subcategories TEXT[],
    keywords TEXT[],
    brands_distributed TEXT[],
    delivery_options JSONB DEFAULT '{}'::jsonb,
    payment_methods JSONB DEFAULT '{}'::jsonb,
    warranty_info TEXT,
    after_sales_service TEXT,
    presentation_video TEXT,
    interior_photos TEXT[],
    catalog_pdf TEXT,
    useful_links TEXT[],
    view_count INTEGER DEFAULT 0,
    -- AJOUT DE NOTRE COLONNE FONCTIONNELLE
    followers_count INTEGER DEFAULT 0 NOT NULL,
    created_at TIMESTAMPTZ DEFAULT now(),
    updated_at TIMESTAMPTZ DEFAULT now()
);

-- ÉTAPE 2: Activer RLS pour shops
ALTER TABLE public.shops ENABLE ROW LEVEL SECURITY;

-- ÉTAPE 3: Créer les politiques pour shops
CREATE POLICY "Shops are viewable by everyone" 
ON public.shops FOR SELECT 
USING (true);

CREATE POLICY "Users can create their own shop" 
ON public.shops FOR INSERT 
WITH CHECK (auth.uid() = user_id);

CREATE POLICY "Owners can update their own shop" 
ON public.shops FOR UPDATE 
USING (auth.uid() = user_id);

CREATE POLICY "Owners can delete their own shop" 
ON public.shops FOR DELETE 
USING (auth.uid() = user_id);

-- ÉTAPE 4: Créer la fonction pour updated_at
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = now();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- ÉTAPE 5: Créer le trigger pour updated_at
DROP TRIGGER IF EXISTS update_shops_updated_at ON public.shops;
CREATE TRIGGER update_shops_updated_at
    BEFORE UPDATE ON public.shops
    FOR EACH ROW
    EXECUTE FUNCTION update_updated_at_column();

-- ÉTAPE 6: Créer la table favoris professionnels (pro_favorites)
CREATE TABLE IF NOT EXISTS public.pro_favorites (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
    pro_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW() NOT NULL,
    UNIQUE(user_id, pro_id)
);

-- ÉTAPE 7: Activer RLS pour pro_favorites
ALTER TABLE public.pro_favorites ENABLE ROW LEVEL SECURITY;

-- ÉTAPE 8: Créer les politiques RLS pour pro_favorites
CREATE POLICY "Les utilisateurs peuvent voir leurs favoris pros" ON public.pro_favorites
    FOR SELECT USING (auth.uid() = user_id);
    
CREATE POLICY "Les utilisateurs peuvent créer leurs favoris pros" ON public.pro_favorites
    FOR INSERT WITH CHECK (auth.uid() = user_id);
    
CREATE POLICY "Les utilisateurs peuvent supprimer leurs favoris pros" ON public.pro_favorites
    FOR DELETE USING (auth.uid() = user_id);

-- ÉTAPE 9: Créer la fonction de mise à jour du compteur d'abonnés
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

-- ÉTAPE 10: Créer le trigger pour le compteur
DROP TRIGGER IF EXISTS update_shop_followers ON public.pro_favorites;
CREATE TRIGGER update_shop_followers
    AFTER INSERT OR DELETE ON public.pro_favorites
    FOR EACH ROW EXECUTE FUNCTION update_shop_followers_count();

-- VÉRIFICATION FINALE (corrigée)
DO $$
BEGIN
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'shops') THEN
        RAISE NOTICE '✅ Table commerces (shops) créée';
    END IF;
    
    IF EXISTS (SELECT 1 FROM information_schema.columns WHERE table_schema = 'public' AND table_name = 'shops' AND column_name = 'followers_count') THEN
        RAISE NOTICE '✅ Colonne compteur d''abonnés (followers_count) ajoutée';
    END IF;
    
    IF EXISTS (SELECT 1 FROM information_schema.tables WHERE table_schema = 'public' AND table_name = 'pro_favorites') THEN
        RAISE NOTICE '✅ Table favoris professionnels (pro_favorites) créée';
    END IF;
    
    RAISE NOTICE '✅ Triggers et sécurité configurés';
END $$;