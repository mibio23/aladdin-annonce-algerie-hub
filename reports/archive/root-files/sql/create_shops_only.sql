-- SCRIPT FINAL : Créer uniquement la table shops avec followers_count

-- ÉTAPE 1: Créer la table commerces (shops) avec la colonne followers_count
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
    -- NOTRE COLONNE FONCTIONNELLE : compteur d'abonnés
    followers_count INTEGER DEFAULT 0 NOT NULL,
    created_at TIMESTAMPTZ DEFAULT now(),
    updated_at TIMESTAMPTZ DEFAULT now()
);

-- ÉTAPE 2: Activer RLS pour la sécurité
ALTER TABLE public.shops ENABLE ROW LEVEL SECURITY;

-- ÉTAPE 3: Créer les politiques de sécurité (avec IF NOT EXISTS)
DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE tablename = 'shops' AND policyname = 'Shops are viewable by everyone') THEN
        CREATE POLICY "Shops are viewable by everyone" 
        ON public.shops FOR SELECT 
        USING (true);
    END IF;
    
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE tablename = 'shops' AND policyname = 'Users can create their own shop') THEN
        CREATE POLICY "Users can create their own shop" 
        ON public.shops FOR INSERT 
        WITH CHECK (auth.uid() = user_id);
    END IF;
    
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE tablename = 'shops' AND policyname = 'Owners can update their own shop') THEN
        CREATE POLICY "Owners can update their own shop" 
        ON public.shops FOR UPDATE 
        USING (auth.uid() = user_id);
    END IF;
    
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE tablename = 'shops' AND policyname = 'Owners can delete their own shop') THEN
        CREATE POLICY "Owners can delete their own shop" 
        ON public.shops FOR DELETE 
        USING (auth.uid() = user_id);
    END IF;
END $$;

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

-- ÉTAPE 6: Message de confirmation
DO $$
BEGIN
    RAISE NOTICE '✅ Table commerces (shops) créée avec succès';
    RAISE NOTICE '✅ Colonne compteur d''abonnés (followers_count) ajoutée';
    RAISE NOTICE '✅ Sécurité RLS configurée';
    RAISE NOTICE '✅ Triggers configurés';
END $$;