-- Script mis à jour pour créer UNIQUEMENT les tables manquantes
-- Basé sur votre vérification, les tables suivantes manquent :
-- 1. animals_details (Animaux & Accessoires)
-- 2. finance_details (Finance & Monnaie)
-- 3. service_details (Services & Support)
-- 4. exchange_details (Échanges & Partage)
--
-- Note: gaming_details et appliances_details existent déjà, donc on ne les recrée pas.

-- 1. Animaux & Accessoires
CREATE TABLE IF NOT EXISTS public.animals_details (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    announcement_id UUID REFERENCES public.announcements(id) ON DELETE CASCADE NOT NULL,
    species TEXT, -- Espèce (Chien, Chat...)
    breed TEXT,   -- Race
    age TEXT,
    gender TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW()
);
ALTER TABLE public.animals_details ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Animals details viewable by everyone" ON public.animals_details FOR SELECT USING (true);
CREATE POLICY "Users can insert own animals details" ON public.animals_details FOR INSERT WITH CHECK (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

-- 2. Finance & Monnaie Fiduciaire
CREATE TABLE IF NOT EXISTS public.finance_details (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    announcement_id UUID REFERENCES public.announcements(id) ON DELETE CASCADE NOT NULL,
    service_type TEXT, -- Change, Crypto...
    currency_from TEXT,
    currency_to TEXT,
    amount NUMERIC,
    created_at TIMESTAMPTZ DEFAULT NOW()
);
ALTER TABLE public.finance_details ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Finance details viewable by everyone" ON public.finance_details FOR SELECT USING (true);
CREATE POLICY "Users can insert own finance details" ON public.finance_details FOR INSERT WITH CHECK (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

-- 3. Services & Support
CREATE TABLE IF NOT EXISTS public.service_details (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    announcement_id UUID REFERENCES public.announcements(id) ON DELETE CASCADE NOT NULL,
    service_type TEXT,
    availability TEXT,
    experience_years INTEGER,
    hourly_rate NUMERIC,
    created_at TIMESTAMPTZ DEFAULT NOW()
);
ALTER TABLE public.service_details ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Service details viewable by everyone" ON public.service_details FOR SELECT USING (true);
CREATE POLICY "Users can insert own service details" ON public.service_details FOR INSERT WITH CHECK (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

-- 4. Échanges & Partage
CREATE TABLE IF NOT EXISTS public.exchange_details (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    announcement_id UUID REFERENCES public.announcements(id) ON DELETE CASCADE NOT NULL,
    exchange_type TEXT, -- Bien, Service
    item_offered TEXT,
    item_wanted TEXT,
    condition TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW()
);
ALTER TABLE public.exchange_details ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Exchange details viewable by everyone" ON public.exchange_details FOR SELECT USING (true);
CREATE POLICY "Users can insert own exchange details" ON public.exchange_details FOR INSERT WITH CHECK (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

CREATE TABLE IF NOT EXISTS public.professional_job_offers (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    user_id UUID REFERENCES auth.users(id) ON DELETE CASCADE NOT NULL,
    title TEXT NOT NULL,
    description TEXT,
    profession TEXT NOT NULL,
    specialty TEXT,
    experience_level TEXT,
    availability TEXT,
    salary NUMERIC,
    currency TEXT,
    phone_numbers TEXT[],
    email TEXT,
    wilaya TEXT,
    commune TEXT,
    location TEXT,
    logo_url TEXT,
    images TEXT[],
    is_graduate BOOLEAN,
    home_service BOOLEAN,
    is_urgent BOOLEAN,
    is_active BOOLEAN NOT NULL DEFAULT true,
    expires_at TIMESTAMPTZ,
    view_count INTEGER NOT NULL DEFAULT 0,
    global_listing_number BIGINT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
ALTER TABLE public.professional_job_offers ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Professional job offers are viewable by everyone" ON public.professional_job_offers FOR SELECT USING (true);
CREATE POLICY "Users can insert their own professional job offers" ON public.professional_job_offers FOR INSERT WITH CHECK (auth.uid() = user_id);
CREATE POLICY "Users can update their own professional job offers" ON public.professional_job_offers FOR UPDATE USING (auth.uid() = user_id);
CREATE POLICY "Users can delete their own professional job offers" ON public.professional_job_offers FOR DELETE USING (auth.uid() = user_id);
CREATE TRIGGER update_professional_job_offers_updated_at
BEFORE UPDATE ON public.professional_job_offers
FOR EACH ROW
EXECUTE FUNCTION public.update_updated_at_column();

CREATE TABLE IF NOT EXISTS public.baby_details (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    announcement_id UUID REFERENCES public.announcements(id) ON DELETE CASCADE,
    type TEXT,
    size TEXT,
    brand TEXT,
    condition_detail TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW()
);
ALTER TABLE public.baby_details ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Baby details viewable by everyone" ON public.baby_details FOR SELECT USING (true);
CREATE POLICY "Users can insert own baby details" ON public.baby_details FOR INSERT WITH CHECK (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

CREATE TABLE IF NOT EXISTS public.fashion_details (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    announcement_id UUID REFERENCES public.announcements(id) ON DELETE CASCADE,
    clothing_type TEXT,
    size TEXT,
    gender TEXT,
    material TEXT,
    brand TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW()
);
ALTER TABLE public.fashion_details ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Fashion details viewable by everyone" ON public.fashion_details FOR SELECT USING (true);
CREATE POLICY "Users can insert own fashion details" ON public.fashion_details FOR INSERT WITH CHECK (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

CREATE TABLE IF NOT EXISTS public.bags_details (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    announcement_id UUID REFERENCES public.announcements(id) ON DELETE CASCADE,
    type TEXT,
    material TEXT,
    brand TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW()
);
ALTER TABLE public.bags_details ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Bags details viewable by everyone" ON public.bags_details FOR SELECT USING (true);
CREATE POLICY "Users can insert own bags details" ON public.bags_details FOR INSERT WITH CHECK (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

CREATE TABLE IF NOT EXISTS public.appliances_details (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    announcement_id UUID REFERENCES public.announcements(id) ON DELETE CASCADE,
    type TEXT,
    brand TEXT,
    energy_class TEXT,
    condition_detail TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW()
);
ALTER TABLE public.appliances_details ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Appliances details viewable by everyone" ON public.appliances_details FOR SELECT USING (true);
CREATE POLICY "Users can insert own appliances details" ON public.appliances_details FOR INSERT WITH CHECK (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

CREATE TABLE IF NOT EXISTS public.multimedia_details (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    announcement_id UUID REFERENCES public.announcements(id) ON DELETE CASCADE,
    device_type TEXT,
    brand TEXT,
    technology TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW()
);
ALTER TABLE public.multimedia_details ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Multimedia details viewable by everyone" ON public.multimedia_details FOR SELECT USING (true);
CREATE POLICY "Users can insert own multimedia details" ON public.multimedia_details FOR INSERT WITH CHECK (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

CREATE TABLE IF NOT EXISTS public.gaming_details (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    announcement_id UUID REFERENCES public.announcements(id) ON DELETE CASCADE,
    product_type TEXT,
    platform TEXT,
    genre TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW()
);
ALTER TABLE public.gaming_details ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Gaming details viewable by everyone" ON public.gaming_details FOR SELECT USING (true);
CREATE POLICY "Users can insert own gaming details" ON public.gaming_details FOR INSERT WITH CHECK (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

CREATE TABLE IF NOT EXISTS public.hardware_details (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    announcement_id UUID REFERENCES public.announcements(id) ON DELETE CASCADE,
    type TEXT,
    brand TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW()
);
ALTER TABLE public.hardware_details ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Hardware details viewable by everyone" ON public.hardware_details FOR SELECT USING (true);
CREATE POLICY "Users can insert own hardware details" ON public.hardware_details FOR INSERT WITH CHECK (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

CREATE TABLE IF NOT EXISTS public.agriculture_details (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    announcement_id UUID REFERENCES public.announcements(id) ON DELETE CASCADE,
    type TEXT,
    origin TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW()
);
ALTER TABLE public.agriculture_details ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Agriculture details viewable by everyone" ON public.agriculture_details FOR SELECT USING (true);
CREATE POLICY "Users can insert own agriculture details" ON public.agriculture_details FOR INSERT WITH CHECK (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

CREATE TABLE IF NOT EXISTS public.parapharmacy_details (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    announcement_id UUID REFERENCES public.announcements(id) ON DELETE CASCADE,
    type TEXT,
    brand TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW()
);
ALTER TABLE public.parapharmacy_details ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Parapharmacy details viewable by everyone" ON public.parapharmacy_details FOR SELECT USING (true);
CREATE POLICY "Users can insert own parapharmacy details" ON public.parapharmacy_details FOR INSERT WITH CHECK (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

CREATE TABLE IF NOT EXISTS public.beauty_details (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    announcement_id UUID REFERENCES public.announcements(id) ON DELETE CASCADE,
    type TEXT,
    brand TEXT,
    gender TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW()
);
ALTER TABLE public.beauty_details ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Beauty details viewable by everyone" ON public.beauty_details FOR SELECT USING (true);
CREATE POLICY "Users can insert own beauty details" ON public.beauty_details FOR INSERT WITH CHECK (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

CREATE TABLE IF NOT EXISTS public.gastronomy_details (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    announcement_id UUID REFERENCES public.announcements(id) ON DELETE CASCADE,
    type TEXT,
    origin TEXT,
    diet TEXT,
    unit TEXT,
    order_mode TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW()
);
ALTER TABLE public.gastronomy_details ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Gastronomy details viewable by everyone" ON public.gastronomy_details FOR SELECT USING (true);
CREATE POLICY "Users can insert own gastronomy details" ON public.gastronomy_details FOR INSERT WITH CHECK (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

CREATE TABLE IF NOT EXISTS public.crafts_details (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    announcement_id UUID REFERENCES public.announcements(id) ON DELETE CASCADE,
    type TEXT,
    material TEXT,
    origin TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW()
);
ALTER TABLE public.crafts_details ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Crafts details viewable by everyone" ON public.crafts_details FOR SELECT USING (true);
CREATE POLICY "Users can insert own crafts details" ON public.crafts_details FOR INSERT WITH CHECK (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

CREATE TABLE IF NOT EXISTS public.travel_details (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    announcement_id UUID REFERENCES public.announcements(id) ON DELETE CASCADE NOT NULL,
    travel_type TEXT,
    destination TEXT,
    services TEXT[],
    amenities TEXT[],
    stars INTEGER,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
ALTER TABLE public.travel_details ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Travel details viewable by everyone" ON public.travel_details FOR SELECT USING (true);
CREATE POLICY "Users can insert own travel details" ON public.travel_details FOR INSERT WITH CHECK (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

CREATE TABLE IF NOT EXISTS public.event_details (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    announcement_id UUID REFERENCES public.announcements(id) ON DELETE CASCADE NOT NULL,
    event_type TEXT,
    format TEXT,
    access_type TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
ALTER TABLE public.event_details ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Event details viewable by everyone" ON public.event_details FOR SELECT USING (true);
CREATE POLICY "Users can insert own event details" ON public.event_details FOR INSERT WITH CHECK (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

CREATE TABLE IF NOT EXISTS public.job_details (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    announcement_id UUID REFERENCES public.announcements(id) ON DELETE CASCADE NOT NULL,
    job_type TEXT,
    contract_type TEXT,
    experience_level TEXT,
    work_regime TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
ALTER TABLE public.job_details ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Job details viewable by everyone" ON public.job_details FOR SELECT USING (true);
CREATE POLICY "Users can insert own job details" ON public.job_details FOR INSERT WITH CHECK (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

ALTER TABLE public.real_estate_details
ADD COLUMN IF NOT EXISTS capacity INTEGER;

ALTER TABLE public.multimedia_details
ADD COLUMN IF NOT EXISTS device_type TEXT;

ALTER TABLE public.multimedia_details
ADD COLUMN IF NOT EXISTS technology TEXT;

ALTER TABLE public.job_details
ADD COLUMN IF NOT EXISTS job_type TEXT;

ALTER TABLE public.job_details
ADD COLUMN IF NOT EXISTS contract_type TEXT;

ALTER TABLE public.job_details
ADD COLUMN IF NOT EXISTS experience_level TEXT;

ALTER TABLE public.job_details
ADD COLUMN IF NOT EXISTS work_regime TEXT;

ALTER TABLE public.announcements
ADD COLUMN IF NOT EXISTS price NUMERIC;

DO $$
DECLARE
    id_type TEXT;
    has_is_active BOOLEAN;
    has_categories BOOLEAN;
BEGIN
    SELECT EXISTS (
        SELECT 1
        FROM information_schema.tables
        WHERE table_schema = 'public'
          AND table_name = 'categories'
    ) INTO has_categories;

    IF NOT has_categories THEN
        RETURN;
    END IF;

    SELECT data_type INTO id_type
    FROM information_schema.columns
    WHERE table_schema = 'public'
      AND table_name = 'categories'
      AND column_name = 'id';

    SELECT EXISTS (
        SELECT 1
        FROM information_schema.columns
        WHERE table_schema = 'public'
          AND table_name = 'categories'
          AND column_name = 'is_active'
    ) INTO has_is_active;

    IF id_type = 'uuid' THEN
        IF has_is_active THEN
            EXECUTE $sql$
                INSERT INTO public.categories (name, slug, is_active)
                VALUES
                    ('Immobilier & Maison', 'immobilier-maison', true),
                    ('Téléphonie', 'telephonie', true),
                    ('Informatique & Électronique', 'informatique-electronique', true),
                    ('Services & Support', 'services-support', true),
                    ('Échanges & Partage', 'echanges-partage', true),
                    ('Finance', 'finance', true),
                    ('Éducation & Loisirs', 'education-loisirs', true),
                    ('Emploi & Carrière', 'emploi-carriere', true),
                    ('Événements & Billetterie', 'evenements-billetterie', true),
                    ('Voyages & Tourisme', 'voyages-tourisme', true),
                    ('Artisanat Traditionnel Algérien', 'artisanat-traditionnel-algerien', true),
                    ('Gastronomie & Alimentation', 'gastronomie-alimentation', true),
                    ('Santé & Beauté', 'sante-beaute', true),
                    ('Parapharmacie & Produits Chimiques', 'parapharmacie-produit-chimique', true),
                    ('Quincaillerie Générale', 'quincaillerie-generale', true),
                    ('Jeux Vidéo & Consoles', 'jeux-video-consoles', true),
                    ('Image, Son & Équipement Musique', 'image-son-equipement-musique', true),
                    ('Mobilier & Décoration', 'mobilier-et-decoration', true),
                    ('Nautisme & Bateaux', 'nautisme', true),
                    ('Vélo, Cyclisme & Équipements', 'velo-cyclisme-equipements', true),
                    ('Vêtement Homme/Femme & Sous-vêtement', 'mode-accessoires', true),
                    ('Sacs & Bagages', 'sacs-et-bagages', true),
                    ('Électroménager', 'electromenager', true),
                    ('Bébé & Puériculture', 'bebe-puericulture', true),
                    ('BTP, Engins & Construction', 'btp-engins-construction', true),
                    ('Animaux & Accessoires', 'animaux-accessoires', true),
                    ('Mode & Accessoires', 'mode-et-accessoires', true),
                    ('Véhicules & Équipements', 'vehicules-equipements', true),
                    ('Agriculture & Agroalimentaire', 'agriculture-agroalimentaire', true)
                ON CONFLICT (slug) DO NOTHING
            $sql$;
        ELSE
            EXECUTE $sql$
                INSERT INTO public.categories (name, slug)
                VALUES
                    ('Immobilier & Maison', 'immobilier-maison'),
                    ('Téléphonie', 'telephonie'),
                    ('Informatique & Électronique', 'informatique-electronique'),
                    ('Services & Support', 'services-support'),
                    ('Échanges & Partage', 'echanges-partage'),
                    ('Finance', 'finance'),
                    ('Éducation & Loisirs', 'education-loisirs'),
                    ('Emploi & Carrière', 'emploi-carriere'),
                    ('Événements & Billetterie', 'evenements-billetterie'),
                    ('Voyages & Tourisme', 'voyages-tourisme'),
                    ('Artisanat Traditionnel Algérien', 'artisanat-traditionnel-algerien'),
                    ('Gastronomie & Alimentation', 'gastronomie-alimentation'),
                    ('Santé & Beauté', 'sante-beaute'),
                    ('Parapharmacie & Produits Chimiques', 'parapharmacie-produit-chimique'),
                    ('Quincaillerie Générale', 'quincaillerie-generale'),
                    ('Jeux Vidéo & Consoles', 'jeux-video-consoles'),
                    ('Image, Son & Équipement Musique', 'image-son-equipement-musique'),
                    ('Mobilier & Décoration', 'mobilier-et-decoration'),
                    ('Nautisme & Bateaux', 'nautisme'),
                    ('Vélo, Cyclisme & Équipements', 'velo-cyclisme-equipements'),
                    ('Vêtement Homme/Femme & Sous-vêtement', 'mode-accessoires'),
                    ('Sacs & Bagages', 'sacs-et-bagages'),
                    ('Électroménager', 'electromenager'),
                    ('Bébé & Puériculture', 'bebe-puericulture'),
                    ('BTP, Engins & Construction', 'btp-engins-construction'),
                    ('Animaux & Accessoires', 'animaux-accessoires'),
                    ('Mode & Accessoires', 'mode-et-accessoires'),
                    ('Véhicules & Équipements', 'vehicules-equipements'),
                    ('Agriculture & Agroalimentaire', 'agriculture-agroalimentaire')
                ON CONFLICT (slug) DO NOTHING
            $sql$;
        END IF;
    ELSE
        IF has_is_active THEN
            EXECUTE $sql$
                INSERT INTO public.categories (id, name, slug, is_active)
                VALUES
                    ('immobilier-maison', 'Immobilier & Maison', 'immobilier-maison', true),
                    ('telephonie', 'Téléphonie', 'telephonie', true),
                    ('informatique-electronique', 'Informatique & Électronique', 'informatique-electronique', true),
                    ('services-support', 'Services & Support', 'services-support', true),
                    ('echanges-partage', 'Échanges & Partage', 'echanges-partage', true),
                    ('finance', 'Finance', 'finance', true),
                    ('education-loisirs', 'Éducation & Loisirs', 'education-loisirs', true),
                    ('emploi-carriere', 'Emploi & Carrière', 'emploi-carriere', true),
                    ('evenements-billetterie', 'Événements & Billetterie', 'evenements-billetterie', true),
                    ('voyages-tourisme', 'Voyages & Tourisme', 'voyages-tourisme', true),
                    ('artisanat-traditionnel-algerien', 'Artisanat Traditionnel Algérien', 'artisanat-traditionnel-algerien', true),
                    ('gastronomie-alimentation', 'Gastronomie & Alimentation', 'gastronomie-alimentation', true),
                    ('sante-beaute', 'Santé & Beauté', 'sante-beaute', true),
                    ('parapharmacie-produit-chimique', 'Parapharmacie & Produits Chimiques', 'parapharmacie-produit-chimique', true),
                    ('quincaillerie-generale', 'Quincaillerie Générale', 'quincaillerie-generale', true),
                    ('jeux-video-consoles', 'Jeux Vidéo & Consoles', 'jeux-video-consoles', true),
                    ('image-son-equipement-musique', 'Image, Son & Équipement Musique', 'image-son-equipement-musique', true),
                    ('mobilier-et-decoration', 'Mobilier & Décoration', 'mobilier-et-decoration', true),
                    ('nautisme', 'Nautisme & Bateaux', 'nautisme', true),
                    ('velo-cyclisme-equipements', 'Vélo, Cyclisme & Équipements', 'velo-cyclisme-equipements', true),
                    ('mode-accessoires', 'Vêtement Homme/Femme & Sous-vêtement', 'mode-accessoires', true),
                    ('sacs-et-bagages', 'Sacs & Bagages', 'sacs-et-bagages', true),
                    ('electromenager', 'Électroménager', 'electromenager', true),
                    ('bebe-puericulture', 'Bébé & Puériculture', 'bebe-puericulture', true),
                    ('btp-engins-construction', 'BTP, Engins & Construction', 'btp-engins-construction', true),
                    ('animaux-accessoires', 'Animaux & Accessoires', 'animaux-accessoires', true),
                    ('mode-et-accessoires', 'Mode & Accessoires', 'mode-et-accessoires', true),
                    ('vehicules-equipements', 'Véhicules & Équipements', 'vehicules-equipements', true),
                    ('agriculture-agroalimentaire', 'Agriculture & Agroalimentaire', 'agriculture-agroalimentaire', true)
                ON CONFLICT (id) DO NOTHING
            $sql$;
        ELSE
            EXECUTE $sql$
                INSERT INTO public.categories (id, name, slug)
                VALUES
                    ('immobilier-maison', 'Immobilier & Maison', 'immobilier-maison'),
                    ('telephonie', 'Téléphonie', 'telephonie'),
                    ('informatique-electronique', 'Informatique & Électronique', 'informatique-electronique'),
                    ('services-support', 'Services & Support', 'services-support'),
                    ('echanges-partage', 'Échanges & Partage', 'echanges-partage'),
                    ('finance', 'Finance', 'finance'),
                    ('education-loisirs', 'Éducation & Loisirs', 'education-loisirs'),
                    ('emploi-carriere', 'Emploi & Carrière', 'emploi-carriere'),
                    ('evenements-billetterie', 'Événements & Billetterie', 'evenements-billetterie'),
                    ('voyages-tourisme', 'Voyages & Tourisme', 'voyages-tourisme'),
                    ('artisanat-traditionnel-algerien', 'Artisanat Traditionnel Algérien', 'artisanat-traditionnel-algerien'),
                    ('gastronomie-alimentation', 'Gastronomie & Alimentation', 'gastronomie-alimentation'),
                    ('sante-beaute', 'Santé & Beauté', 'sante-beaute'),
                    ('parapharmacie-produit-chimique', 'Parapharmacie & Produits Chimiques', 'parapharmacie-produit-chimique'),
                    ('quincaillerie-generale', 'Quincaillerie Générale', 'quincaillerie-generale'),
                    ('jeux-video-consoles', 'Jeux Vidéo & Consoles', 'jeux-video-consoles'),
                    ('image-son-equipement-musique', 'Image, Son & Équipement Musique', 'image-son-equipement-musique'),
                    ('mobilier-et-decoration', 'Mobilier & Décoration', 'mobilier-et-decoration'),
                    ('nautisme', 'Nautisme & Bateaux', 'nautisme'),
                    ('velo-cyclisme-equipements', 'Vélo, Cyclisme & Équipements', 'velo-cyclisme-equipements'),
                    ('mode-accessoires', 'Vêtement Homme/Femme & Sous-vêtement', 'mode-accessoires'),
                    ('sacs-et-bagages', 'Sacs & Bagages', 'sacs-et-bagages'),
                    ('electromenager', 'Électroménager', 'electromenager'),
                    ('bebe-puericulture', 'Bébé & Puériculture', 'bebe-puericulture'),
                    ('btp-engins-construction', 'BTP, Engins & Construction', 'btp-engins-construction'),
                    ('animaux-accessoires', 'Animaux & Accessoires', 'animaux-accessoires'),
                    ('mode-et-accessoires', 'Mode & Accessoires', 'mode-et-accessoires'),
                    ('vehicules-equipements', 'Véhicules & Équipements', 'vehicules-equipements'),
                    ('agriculture-agroalimentaire', 'Agriculture & Agroalimentaire', 'agriculture-agroalimentaire')
                ON CONFLICT (id) DO NOTHING
            $sql$;
        END IF;
    END IF;
END $$;

DO $$
BEGIN
    IF EXISTS (
        SELECT 1
        FROM information_schema.tables
        WHERE table_schema = 'public'
          AND table_name = 'category_translations'
    ) THEN
        WITH seed AS (
            SELECT * FROM (VALUES
                ('immobilier-maison', 'Immobilier & Maison'),
                ('telephonie', 'Téléphonie'),
                ('informatique-electronique', 'Informatique & Électronique'),
                ('services-support', 'Services & Support'),
                ('echanges-partage', 'Échanges & Partage'),
                ('finance', 'Finance'),
                ('education-loisirs', 'Éducation & Loisirs'),
                ('emploi-carriere', 'Emploi & Carrière'),
                ('evenements-billetterie', 'Événements & Billetterie'),
                ('voyages-tourisme', 'Voyages & Tourisme'),
                ('artisanat-traditionnel-algerien', 'Artisanat Traditionnel Algérien'),
                ('gastronomie-alimentation', 'Gastronomie & Alimentation'),
                ('sante-beaute', 'Santé & Beauté'),
                ('parapharmacie-produit-chimique', 'Parapharmacie & Produits Chimiques'),
                ('quincaillerie-generale', 'Quincaillerie Générale'),
                ('jeux-video-consoles', 'Jeux Vidéo & Consoles'),
                ('image-son-equipement-musique', 'Image, Son & Équipement Musique'),
                ('mobilier-et-decoration', 'Mobilier & Décoration'),
                ('nautisme', 'Nautisme & Bateaux'),
                ('velo-cyclisme-equipements', 'Vélo, Cyclisme & Équipements'),
                ('mode-accessoires', 'Vêtement Homme/Femme & Sous-vêtement'),
                ('sacs-et-bagages', 'Sacs & Bagages'),
                ('electromenager', 'Électroménager'),
                ('bebe-puericulture', 'Bébé & Puériculture'),
                ('btp-engins-construction', 'BTP, Engins & Construction'),
                ('animaux-accessoires', 'Animaux & Accessoires'),
                ('mode-et-accessoires', 'Mode & Accessoires'),
                ('vehicules-equipements', 'Véhicules & Équipements'),
                ('agriculture-agroalimentaire', 'Agriculture & Agroalimentaire')
            ) AS s(slug, name)
        ),
        langs AS (
            SELECT language_code
            FROM (VALUES ('ar'), ('en'), ('es'), ('de'), ('it')) AS l(language_code)
            WHERE language_code <> 'it'
               OR EXISTS (
                    SELECT 1
                    FROM pg_constraint
                    WHERE conname = 'category_translations_lang_check'
                      AND pg_get_constraintdef(oid) LIKE '%''it''%'
                )
        )
        INSERT INTO public.category_translations (category_id, language_code, name)
        SELECT c.id, l.language_code, s.name
        FROM seed s
        JOIN public.categories c ON c.slug = s.slug
        CROSS JOIN langs l
        ON CONFLICT (category_id, language_code) DO NOTHING;
    END IF;
END $$;
