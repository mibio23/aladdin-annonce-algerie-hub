-- 1. Création de la table pour les détails Vélos
CREATE TABLE IF NOT EXISTS public.bike_details (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    announcement_id UUID REFERENCES public.announcements(id) ON DELETE CASCADE NOT NULL,
    type TEXT,
    frame_size TEXT,
    wheel_size TEXT,
    frame_material TEXT,
    brand TEXT,
    model TEXT,
    electric BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- 2. Création de la table pour les détails Bateaux
CREATE TABLE IF NOT EXISTS public.boat_details (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    announcement_id UUID REFERENCES public.announcements(id) ON DELETE CASCADE NOT NULL,
    type TEXT,
    length NUMERIC,
    width NUMERIC,
    motor_type TEXT,
    motor_power INTEGER,
    hours INTEGER,
    cabin BOOLEAN DEFAULT FALSE,
    brand TEXT,
    model TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- 3. Création de la table pour les détails Engins BTP
CREATE TABLE IF NOT EXISTS public.construction_details (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    announcement_id UUID REFERENCES public.announcements(id) ON DELETE CASCADE NOT NULL,
    type TEXT,
    hours INTEGER,
    power INTEGER,
    weight NUMERIC,
    brand TEXT,
    model TEXT,
    year INTEGER,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- 4. Création de la table pour les détails Vêtements
CREATE TABLE IF NOT EXISTS public.clothing_details (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    announcement_id UUID REFERENCES public.announcements(id) ON DELETE CASCADE NOT NULL,
    type TEXT,
    size TEXT,
    material TEXT,
    gender TEXT,
    brand TEXT,
    condition TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- 5. Activation de RLS
ALTER TABLE public.bike_details ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.boat_details ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.construction_details ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.clothing_details ENABLE ROW LEVEL SECURITY;

-- 6. Création des politiques RLS

-- Bike Details
CREATE POLICY "Bike details are viewable by everyone" 
ON public.bike_details FOR SELECT USING (true);

CREATE POLICY "Users can insert their own bike details" 
ON public.bike_details FOR INSERT 
WITH CHECK (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

CREATE POLICY "Users can update their own bike details" 
ON public.bike_details FOR UPDATE 
USING (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

CREATE POLICY "Users can delete their own bike details" 
ON public.bike_details FOR DELETE 
USING (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

-- Boat Details
CREATE POLICY "Boat details are viewable by everyone" 
ON public.boat_details FOR SELECT USING (true);

CREATE POLICY "Users can insert their own boat details" 
ON public.boat_details FOR INSERT 
WITH CHECK (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

CREATE POLICY "Users can update their own boat details" 
ON public.boat_details FOR UPDATE 
USING (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

CREATE POLICY "Users can delete their own boat details" 
ON public.boat_details FOR DELETE 
USING (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

-- Construction Details
CREATE POLICY "Construction details are viewable by everyone" 
ON public.construction_details FOR SELECT USING (true);

CREATE POLICY "Users can insert their own construction details" 
ON public.construction_details FOR INSERT 
WITH CHECK (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

CREATE POLICY "Users can update their own construction details" 
ON public.construction_details FOR UPDATE 
USING (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

CREATE POLICY "Users can delete their own construction details" 
ON public.construction_details FOR DELETE 
USING (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

-- Clothing Details
CREATE POLICY "Clothing details are viewable by everyone" 
ON public.clothing_details FOR SELECT USING (true);

CREATE POLICY "Users can insert their own clothing details" 
ON public.clothing_details FOR INSERT 
WITH CHECK (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

CREATE POLICY "Users can update their own clothing details" 
ON public.clothing_details FOR UPDATE 
USING (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

CREATE POLICY "Users can delete their own clothing details" 
ON public.clothing_details FOR DELETE 
USING (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

-- 7. Création des index pour la performance
CREATE INDEX IF NOT EXISTS idx_bike_details_announcement_id ON public.bike_details(announcement_id);
CREATE INDEX IF NOT EXISTS idx_boat_details_announcement_id ON public.boat_details(announcement_id);
CREATE INDEX IF NOT EXISTS idx_construction_details_announcement_id ON public.construction_details(announcement_id);
CREATE INDEX IF NOT EXISTS idx_clothing_details_announcement_id ON public.clothing_details(announcement_id);

-- 8. Création de la table pour les détails Sport, Éducation & Loisirs
CREATE TABLE IF NOT EXISTS public.education_loisirs_details (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    announcement_id UUID REFERENCES public.announcements(id) ON DELETE CASCADE NOT NULL,
    education_subject TEXT,
    education_level TEXT,
    education_mode TEXT,
    sport_type TEXT,
    sport_brand TEXT,
    sport_condition TEXT,
    art_type TEXT,
    art_material TEXT,
    book_type TEXT,
    book_language TEXT,
    book_condition TEXT,
    game_type TEXT,
    game_players TEXT,
    toy_age_group TEXT,
    toy_material TEXT,
    club_association_type TEXT,
    club_activity_type TEXT,
    club_sport_type TEXT,
    club_age_group TEXT,
    club_audience TEXT,
    club_theme TEXT,
    club_format TEXT,
    club_genre TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

ALTER TABLE public.education_loisirs_details ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Education loisirs details are viewable by everyone" 
ON public.education_loisirs_details FOR SELECT USING (true);

CREATE POLICY "Users can insert their own education loisirs details" 
ON public.education_loisirs_details FOR INSERT 
WITH CHECK (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

CREATE POLICY "Users can update their own education loisirs details" 
ON public.education_loisirs_details FOR UPDATE 
USING (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

CREATE POLICY "Users can delete their own education loisirs details" 
ON public.education_loisirs_details FOR DELETE 
USING (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

CREATE INDEX IF NOT EXISTS idx_education_loisirs_details_announcement_id ON public.education_loisirs_details(announcement_id);

CREATE UNIQUE INDEX IF NOT EXISTS unique_education_loisirs_details_announcement_id
ON public.education_loisirs_details(announcement_id);
