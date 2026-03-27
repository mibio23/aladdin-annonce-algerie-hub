-- Script pour créer les tables de détails manquantes (Sécurité: IF NOT EXISTS)
-- Ce script complète les tables qui n'étaient pas dans les migrations précédentes.

-- 1. Électroménager
CREATE TABLE IF NOT EXISTS public.appliance_details (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    announcement_id UUID REFERENCES public.announcements(id) ON DELETE CASCADE NOT NULL,
    type TEXT,
    brand TEXT,
    condition TEXT,
    energy_class TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW()
);
ALTER TABLE public.appliance_details ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Appliance details viewable by everyone" ON public.appliance_details FOR SELECT USING (true);
CREATE POLICY "Users can insert own appliance details" ON public.appliance_details FOR INSERT WITH CHECK (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

-- 2. Jeux Vidéo & Consoles
CREATE TABLE IF NOT EXISTS public.videogame_details (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    announcement_id UUID REFERENCES public.announcements(id) ON DELETE CASCADE NOT NULL,
    platform TEXT,
    type TEXT, -- Console, Jeu, Accessoire
    condition TEXT,
    game_genre TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW()
);
ALTER TABLE public.videogame_details ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Videogame details viewable by everyone" ON public.videogame_details FOR SELECT USING (true);
CREATE POLICY "Users can insert own videogame details" ON public.videogame_details FOR INSERT WITH CHECK (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

-- 3. Image & Son
CREATE TABLE IF NOT EXISTS public.multimedia_details (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    announcement_id UUID REFERENCES public.announcements(id) ON DELETE CASCADE NOT NULL,
    type TEXT, -- TV, Appareil Photo, etc.
    brand TEXT,
    model TEXT,
    condition TEXT,
    resolution TEXT, -- Pour TV/Caméras
    created_at TIMESTAMPTZ DEFAULT NOW()
);
ALTER TABLE public.multimedia_details ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Multimedia details viewable by everyone" ON public.multimedia_details FOR SELECT USING (true);
CREATE POLICY "Users can insert own multimedia details" ON public.multimedia_details FOR INSERT WITH CHECK (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

-- 4. Agriculture
CREATE TABLE IF NOT EXISTS public.agriculture_details (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    announcement_id UUID REFERENCES public.announcements(id) ON DELETE CASCADE NOT NULL,
    type TEXT, -- Matériel, Semences, Animaux
    condition TEXT,
    quantity TEXT,
    origin TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW()
);
ALTER TABLE public.agriculture_details ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Agriculture details viewable by everyone" ON public.agriculture_details FOR SELECT USING (true);
CREATE POLICY "Users can insert own agriculture details" ON public.agriculture_details FOR INSERT WITH CHECK (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

-- 5. Services
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
