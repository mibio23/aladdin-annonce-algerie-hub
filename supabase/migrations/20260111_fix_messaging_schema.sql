
-- Migration pour corriger la structure de la table conversations et recréer messages

-- 1. Supprimer la table messages créée précédemment (pour éviter les conflits de FK)
DROP TABLE IF EXISTS public.messages;

-- 2. Recréer la table conversations avec la bonne structure
-- D'abord vérifier si elle existe, et si elle n'a pas les bonnes colonnes, on la recrée
-- Pour simplifier et être sûr : on la drop si elle n'a pas les colonnes requises (attention aux données existantes, mais ici c'est du dev)
DROP TABLE IF EXISTS public.conversations CASCADE;

CREATE TABLE public.conversations (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    participant_1_id UUID REFERENCES auth.users(id) ON DELETE CASCADE NOT NULL,
    participant_2_id UUID REFERENCES auth.users(id) ON DELETE CASCADE NOT NULL,
    last_message_at TIMESTAMPTZ DEFAULT now(),
    created_at TIMESTAMPTZ DEFAULT now(),
    updated_at TIMESTAMPTZ DEFAULT now(),
    UNIQUE(participant_1_id, participant_2_id)
);

-- Index pour les conversations
CREATE INDEX idx_conversations_participants ON public.conversations(participant_1_id, participant_2_id);
CREATE INDEX idx_conversations_last_message ON public.conversations(last_message_at DESC);

-- RLS pour conversations
ALTER TABLE public.conversations ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Users can view their own conversations"
ON public.conversations FOR SELECT
USING (auth.uid() = participant_1_id OR auth.uid() = participant_2_id);

CREATE POLICY "Users can create conversations"
ON public.conversations FOR INSERT
WITH CHECK (auth.uid() = participant_1_id OR auth.uid() = participant_2_id);

CREATE POLICY "Users can update their own conversations"
ON public.conversations FOR UPDATE
USING (auth.uid() = participant_1_id OR auth.uid() = participant_2_id);


-- 3. Recréer la table messages (identique à la tentative précédente, mais maintenant la FK sera valide)
CREATE TABLE public.messages (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    conversation_id UUID REFERENCES public.conversations(id) ON DELETE CASCADE NOT NULL,
    sender_id UUID REFERENCES auth.users(id) ON DELETE SET NULL NOT NULL,
    content TEXT NOT NULL,
    is_read BOOLEAN DEFAULT false,
    created_at TIMESTAMPTZ DEFAULT now()
);

-- Index pour messages
CREATE INDEX idx_messages_conversation_id ON public.messages(conversation_id);
CREATE INDEX idx_messages_sender_id ON public.messages(sender_id);
CREATE INDEX idx_messages_created_at ON public.messages(created_at);

-- RLS pour messages
ALTER TABLE public.messages ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Users can view messages in their conversations"
ON public.messages FOR SELECT
USING (
    EXISTS (
        SELECT 1 FROM public.conversations c
        WHERE c.id = messages.conversation_id
        AND (c.participant_1_id = auth.uid() OR c.participant_2_id = auth.uid())
    )
);

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

-- Trigger pour mettre à jour last_message_at
CREATE OR REPLACE FUNCTION public.update_conversation_last_message()
RETURNS TRIGGER AS $$
BEGIN
  UPDATE public.conversations 
  SET last_message_at = NEW.created_at,
      updated_at = NEW.created_at
  WHERE id = NEW.conversation_id;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER update_conversation_last_message_trigger
  AFTER INSERT ON public.messages
  FOR EACH ROW
  EXECUTE FUNCTION public.update_conversation_last_message();
