
-- Create vehicle_details table
CREATE TABLE IF NOT EXISTS public.vehicle_details (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    announcement_id UUID REFERENCES public.announcements(id) ON DELETE CASCADE,
    brand TEXT,
    model TEXT,
    version TEXT,
    registration_date DATE,
    mileage INTEGER,
    fuel_type TEXT,
    fiscal_power TEXT,
    gearbox TEXT,
    equipment TEXT[],
    technical_control BOOLEAN,
    grey_card_crossed BOOLEAN,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT timezone('utc'::text, now()) NOT NULL
);

-- Enable RLS
ALTER TABLE public.vehicle_details ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Public profiles can view vehicle details" ON public.vehicle_details;
DROP POLICY IF EXISTS "Users can insert their own vehicle details" ON public.vehicle_details;
DROP POLICY IF EXISTS "Users can update their own vehicle details" ON public.vehicle_details;
DROP POLICY IF EXISTS "Users can delete their own vehicle details" ON public.vehicle_details;

CREATE POLICY "Public profiles can view vehicle details" ON public.vehicle_details
    FOR SELECT USING (true);

CREATE POLICY "Users can insert their own vehicle details" ON public.vehicle_details
    FOR INSERT WITH CHECK (
        EXISTS (
            SELECT 1 FROM public.announcements
            WHERE id = vehicle_details.announcement_id
            AND user_id = auth.uid()
        )
    );

CREATE POLICY "Users can update their own vehicle details" ON public.vehicle_details
    FOR UPDATE USING (
        EXISTS (
            SELECT 1 FROM public.announcements
            WHERE id = vehicle_details.announcement_id
            AND user_id = auth.uid()
        )
    );

CREATE POLICY "Users can delete their own vehicle details" ON public.vehicle_details
    FOR DELETE USING (
        EXISTS (
            SELECT 1 FROM public.announcements
            WHERE id = vehicle_details.announcement_id
            AND user_id = auth.uid()
        )
    );
