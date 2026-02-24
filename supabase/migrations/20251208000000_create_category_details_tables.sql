-- Create computer_details table
CREATE TABLE IF NOT EXISTS public.computer_details (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    announcement_id UUID REFERENCES public.announcements(id) ON DELETE CASCADE NOT NULL,
    processor TEXT,
    ram TEXT,
    storage TEXT,
    screen_size TEXT,
    graphics_card TEXT,
    os TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- Create phone_details table
CREATE TABLE IF NOT EXISTS public.phone_details (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    announcement_id UUID REFERENCES public.announcements(id) ON DELETE CASCADE NOT NULL,
    brand TEXT,
    model TEXT,
    storage TEXT,
    ram TEXT,
    screen_size TEXT,
    os TEXT,
    color TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- Create home_furniture_details table
CREATE TABLE IF NOT EXISTS public.home_furniture_details (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    announcement_id UUID REFERENCES public.announcements(id) ON DELETE CASCADE NOT NULL,
    material TEXT,
    type TEXT,
    color TEXT,
    dimensions TEXT,
    weight TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- Enable RLS
ALTER TABLE public.computer_details ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.phone_details ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.home_furniture_details ENABLE ROW LEVEL SECURITY;

-- Create policies (viewable by everyone, editable by owner)
-- Computer Details
CREATE POLICY "Computer details are viewable by everyone" 
ON public.computer_details FOR SELECT 
USING (true);

CREATE POLICY "Users can insert their own computer details" 
ON public.computer_details FOR INSERT 
WITH CHECK (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

CREATE POLICY "Users can update their own computer details" 
ON public.computer_details FOR UPDATE 
USING (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

CREATE POLICY "Users can delete their own computer details" 
ON public.computer_details FOR DELETE 
USING (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

-- Phone Details
CREATE POLICY "Phone details are viewable by everyone" 
ON public.phone_details FOR SELECT 
USING (true);

CREATE POLICY "Users can insert their own phone details" 
ON public.phone_details FOR INSERT 
WITH CHECK (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

CREATE POLICY "Users can update their own phone details" 
ON public.phone_details FOR UPDATE 
USING (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

CREATE POLICY "Users can delete their own phone details" 
ON public.phone_details FOR DELETE 
USING (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

-- Home Furniture Details
CREATE POLICY "Furniture details are viewable by everyone" 
ON public.home_furniture_details FOR SELECT 
USING (true);

CREATE POLICY "Users can insert their own furniture details" 
ON public.home_furniture_details FOR INSERT 
WITH CHECK (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

CREATE POLICY "Users can update their own furniture details" 
ON public.home_furniture_details FOR UPDATE 
USING (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

CREATE POLICY "Users can delete their own furniture details" 
ON public.home_furniture_details FOR DELETE 
USING (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));

-- Create indexes for better performance
CREATE INDEX IF NOT EXISTS idx_computer_details_announcement_id ON public.computer_details(announcement_id);
CREATE INDEX IF NOT EXISTS idx_phone_details_announcement_id ON public.phone_details(announcement_id);
CREATE INDEX IF NOT EXISTS idx_home_furniture_details_announcement_id ON public.home_furniture_details(announcement_id);
