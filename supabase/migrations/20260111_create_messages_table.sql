
-- Create messages table if it doesn't exist
CREATE TABLE IF NOT EXISTS public.messages (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    conversation_id UUID REFERENCES public.conversations(id) ON DELETE CASCADE NOT NULL,
    sender_id UUID REFERENCES auth.users(id) ON DELETE SET NULL NOT NULL,
    content TEXT NOT NULL,
    is_read BOOLEAN DEFAULT false,
    created_at TIMESTAMPTZ DEFAULT now()
);

-- Add indexes
CREATE INDEX IF NOT EXISTS idx_messages_conversation_id ON public.messages(conversation_id);
CREATE INDEX IF NOT EXISTS idx_messages_sender_id ON public.messages(sender_id);
CREATE INDEX IF NOT EXISTS idx_messages_created_at ON public.messages(created_at);

-- Enable RLS
ALTER TABLE public.messages ENABLE ROW LEVEL SECURITY;

-- Policies for messages

-- Users can view messages in conversations they are part of
DROP POLICY IF EXISTS "Users can view messages in their conversations" ON public.messages;
CREATE POLICY "Users can view messages in their conversations"
ON public.messages FOR SELECT
USING (
    EXISTS (
        SELECT 1 FROM public.conversations c
        WHERE c.id = messages.conversation_id
        AND (c.participant_1_id = auth.uid() OR c.participant_2_id = auth.uid())
    )
);

-- Users can insert messages in conversations they are part of
DROP POLICY IF EXISTS "Users can insert messages in their conversations" ON public.messages;
CREATE POLICY "Users can insert messages in their conversations"
ON public.messages FOR INSERT
WITH CHECK (
    auth.uid() = sender_id AND
    EXISTS (
        SELECT 1 FROM public.conversations c
        WHERE c.id = conversation_id
        AND (c.participant_1_id = auth.uid() OR c.participant_2_id = auth.uid())
    )
);

-- Policy for checking conversations existence (ensuring we can query it)
-- This might be redundant if conversations table already has policies, but good to ensure.
-- We won't touch conversations policies here to avoid conflicts, assuming they exist.
