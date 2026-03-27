-- Add subject_type and subject_id to conversations table
ALTER TABLE public.conversations 
ADD COLUMN IF NOT EXISTS subject_type TEXT CHECK (subject_type IN ('ad', 'shop', 'job_offer')),
ADD COLUMN IF NOT EXISTS subject_id UUID;

-- Create index for faster lookups
CREATE INDEX IF NOT EXISTS idx_conversations_subject ON public.conversations(subject_type, subject_id);

-- Update RLS policies to allow access if you are a participant (already covers it usually, but good to check)
-- The existing policies check participant_1_id or participant_2_id, which is sufficient.
