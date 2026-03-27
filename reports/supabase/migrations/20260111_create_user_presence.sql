-- Create user_presence table to track user online status
CREATE TABLE IF NOT EXISTS public.user_presence (
    user_id UUID PRIMARY KEY REFERENCES auth.users(id) ON DELETE CASCADE,
    last_seen_at TIMESTAMPTZ DEFAULT now(),
    is_online BOOLEAN DEFAULT false,
    created_at TIMESTAMPTZ DEFAULT now(),
    updated_at TIMESTAMPTZ DEFAULT now()
);

-- Enable RLS
ALTER TABLE public.user_presence ENABLE ROW LEVEL SECURITY;

-- Policies (Drop first to avoid "already exists" error)
DROP POLICY IF EXISTS "Presence viewable by everyone" ON public.user_presence;
CREATE POLICY "Presence viewable by everyone" 
ON public.user_presence FOR SELECT 
USING (true);

DROP POLICY IF EXISTS "Users can update their own presence" ON public.user_presence;
CREATE POLICY "Users can update their own presence" 
ON public.user_presence FOR INSERT 
WITH CHECK (auth.uid() = user_id);

DROP POLICY IF EXISTS "Users can update their own presence record" ON public.user_presence;
CREATE POLICY "Users can update their own presence record" 
ON public.user_presence FOR UPDATE 
USING (auth.uid() = user_id);

-- Trigger for updated_at
CREATE OR REPLACE FUNCTION public.update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = now();
    RETURN NEW;
END;
$$ language 'plpgsql';

DROP TRIGGER IF EXISTS update_user_presence_updated_at ON public.user_presence;
CREATE TRIGGER update_user_presence_updated_at
BEFORE UPDATE ON public.user_presence
FOR EACH ROW
EXECUTE FUNCTION public.update_updated_at_column();

-- Function to handle new user presence initialization
CREATE OR REPLACE FUNCTION public.handle_new_user_presence()
RETURNS TRIGGER
LANGUAGE plpgsql
SECURITY DEFINER
AS $$
BEGIN
  INSERT INTO public.user_presence (user_id, is_online, last_seen_at)
  VALUES (NEW.id, true, now())
  ON CONFLICT (user_id) DO NOTHING;
  RETURN NEW;
END;
$$;
