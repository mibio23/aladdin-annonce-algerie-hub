-- Create table for user drafts (auto-save functionality)
CREATE TABLE IF NOT EXISTS public.user_drafts (
  id UUID NOT NULL DEFAULT gen_random_uuid() PRIMARY KEY,
  user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  draft_key TEXT NOT NULL,
  draft_data JSONB NOT NULL,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  UNIQUE(user_id, draft_key)
);

-- Enable RLS
ALTER TABLE public.user_drafts ENABLE ROW LEVEL SECURITY;

-- RLS Policies
DROP POLICY IF EXISTS "Users can view their own drafts" ON public.user_drafts;
DROP POLICY IF EXISTS "Users can insert their own drafts" ON public.user_drafts;
DROP POLICY IF EXISTS "Users can update their own drafts" ON public.user_drafts;
DROP POLICY IF EXISTS "Users can delete their own drafts" ON public.user_drafts;

CREATE POLICY "Users can view their own drafts" 
  ON public.user_drafts 
  FOR SELECT 
  TO authenticated
  USING (auth.uid() = user_id);

CREATE POLICY "Users can insert their own drafts" 
  ON public.user_drafts 
  FOR INSERT 
  TO authenticated
  WITH CHECK (auth.uid() = user_id);

CREATE POLICY "Users can update their own drafts" 
  ON public.user_drafts 
  FOR UPDATE 
  TO authenticated
  USING (auth.uid() = user_id)
  WITH CHECK (auth.uid() = user_id);

CREATE POLICY "Users can delete their own drafts" 
  ON public.user_drafts 
  FOR DELETE 
  TO authenticated
  USING (auth.uid() = user_id);

-- Indexes for performance
CREATE INDEX IF NOT EXISTS idx_user_drafts_user_id ON public.user_drafts(user_id);
CREATE INDEX IF NOT EXISTS idx_user_drafts_key ON public.user_drafts(draft_key);
CREATE INDEX IF NOT EXISTS idx_user_drafts_updated_at ON public.user_drafts(updated_at DESC);

-- Function to update updated_at timestamp
CREATE OR REPLACE FUNCTION public.update_user_drafts_updated_at()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = now();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Trigger for updated_at
DROP TRIGGER IF EXISTS update_user_drafts_updated_at ON public.user_drafts;
CREATE TRIGGER update_user_drafts_updated_at
  BEFORE UPDATE ON public.user_drafts
  FOR EACH ROW
  EXECUTE FUNCTION public.update_user_drafts_updated_at();
