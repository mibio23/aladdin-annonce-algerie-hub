-- Create real_estate_details table
CREATE TABLE IF NOT EXISTS public.real_estate_details (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    announcement_id UUID REFERENCES public.announcements(id) ON DELETE CASCADE,
    property_type TEXT, -- Appartement, Maison, Terrain, etc.
    surface NUMERIC, -- Surface in m2
    rooms INTEGER, -- Nombre de pièces
    bedrooms INTEGER, -- Nombre de chambres
    bathrooms INTEGER, -- Nombre de salles de bain
    floor INTEGER, -- Etage
    total_floors INTEGER, -- Nombre d'étages total
    furnished BOOLEAN DEFAULT false, -- Meublé
    parking BOOLEAN DEFAULT false, -- Stationnement
    garage BOOLEAN DEFAULT false, -- Garage
    garden BOOLEAN DEFAULT false, -- Jardin
    pool BOOLEAN DEFAULT false, -- Piscine
    elevator BOOLEAN DEFAULT false, -- Ascenseur
    balcony BOOLEAN DEFAULT false, -- Balcon
    terrace BOOLEAN DEFAULT false, -- Terrasse
    view_type TEXT, -- Vue (Mer, Montagne, Ville, etc.)
    facades INTEGER, -- Nombre de façades
    zoning TEXT, -- Urbain, Agricole, etc. (for Terrains)
    with_permit BOOLEAN DEFAULT false, -- Avec permis de construire
    papers TEXT[], -- Papiers (Acte, Livret foncier, etc.)
    payment_period TEXT, -- Mensuel, Annuel (for Locations)
    specifications TEXT[], -- Additional specs
    created_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now()) NOT NULL
);

-- Enable RLS
ALTER TABLE public.real_estate_details ENABLE ROW LEVEL SECURITY;

-- Create policies
DROP POLICY IF EXISTS "Public profiles can view real_estate_details" ON public.real_estate_details;
DROP POLICY IF EXISTS "Users can insert their own real_estate_details" ON public.real_estate_details;
DROP POLICY IF EXISTS "Users can update their own real_estate_details" ON public.real_estate_details;
DROP POLICY IF EXISTS "Users can delete their own real_estate_details" ON public.real_estate_details;

CREATE POLICY "Public profiles can view real_estate_details" ON public.real_estate_details
    FOR SELECT USING (true);

CREATE POLICY "Users can insert their own real_estate_details" ON public.real_estate_details
    FOR INSERT WITH CHECK (
        EXISTS (
            SELECT 1 FROM public.announcements
            WHERE id = real_estate_details.announcement_id
            AND user_id = auth.uid()
        )
    );

CREATE POLICY "Users can update their own real_estate_details" ON public.real_estate_details
    FOR UPDATE USING (
        EXISTS (
            SELECT 1 FROM public.announcements
            WHERE id = real_estate_details.announcement_id
            AND user_id = auth.uid()
        )
    );

CREATE POLICY "Users can delete their own real_estate_details" ON public.real_estate_details
    FOR DELETE USING (
        EXISTS (
            SELECT 1 FROM public.announcements
            WHERE id = real_estate_details.announcement_id
            AND user_id = auth.uid()
        )
    );
