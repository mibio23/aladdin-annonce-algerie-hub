-- Script de création des tables pour les nouvelles catégories
-- À exécuter dans l'éditeur SQL de Supabase

-- 1. Table pour Voyages & Tourisme
CREATE TABLE IF NOT EXISTS public.travel_details (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    announcement_id UUID REFERENCES public.announcements(id) ON DELETE CASCADE NOT NULL,
    travel_type TEXT,
    destination TEXT,
    services TEXT[], -- Tableau de chaînes pour les services
    amenities TEXT[], -- Tableau de chaînes pour les équipements (inclut 'livret_famille' etc)
    stars INTEGER, -- Nombre d'étoiles (1-5)
    created_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now()) NOT NULL
);

-- 2. Table pour Événements & Billetterie
CREATE TABLE IF NOT EXISTS public.event_details (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    announcement_id UUID REFERENCES public.announcements(id) ON DELETE CASCADE NOT NULL,
    event_type TEXT,
    format TEXT,
    access_type TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now()) NOT NULL
);

-- 3. Table pour Emploi & Carrière
CREATE TABLE IF NOT EXISTS public.job_details (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    announcement_id UUID REFERENCES public.announcements(id) ON DELETE CASCADE NOT NULL,
    job_type TEXT,
    contract_type TEXT,
    experience_level TEXT,
    work_regime TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now()) NOT NULL
);

-- Activation de la sécurité RLS (Row Level Security)
ALTER TABLE public.travel_details ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.event_details ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.job_details ENABLE ROW LEVEL SECURITY;

-- Politiques de sécurité (RLS Policies)

-- Voyages & Tourisme
CREATE POLICY "Travel details viewable by everyone" 
ON public.travel_details FOR SELECT 
USING (true);

CREATE POLICY "Users can insert travel details" 
ON public.travel_details FOR INSERT 
WITH CHECK (auth.role() = 'authenticated');

CREATE POLICY "Users can update own travel details" 
ON public.travel_details FOR UPDATE 
USING (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

CREATE POLICY "Users can delete own travel details" 
ON public.travel_details FOR DELETE 
USING (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

-- Événements
CREATE POLICY "Event details viewable by everyone" 
ON public.event_details FOR SELECT 
USING (true);

CREATE POLICY "Users can insert event details" 
ON public.event_details FOR INSERT 
WITH CHECK (auth.role() = 'authenticated');

CREATE POLICY "Users can update own event details" 
ON public.event_details FOR UPDATE 
USING (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

CREATE POLICY "Users can delete own event details" 
ON public.event_details FOR DELETE 
USING (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

-- Emploi
CREATE POLICY "Job details viewable by everyone" 
ON public.job_details FOR SELECT 
USING (true);

CREATE POLICY "Users can insert job details" 
ON public.job_details FOR INSERT 
WITH CHECK (auth.role() = 'authenticated');

CREATE POLICY "Users can update own job details" 
ON public.job_details FOR UPDATE 
USING (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

CREATE POLICY "Users can delete own job details" 
ON public.job_details FOR DELETE 
USING (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));
