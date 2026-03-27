
-- Ajout des colonnes de contexte pour les conversations
-- Cela permet de distinguer si une conversation concerne une annonce, une boutique ou une offre d'emploi

DO $$ 
BEGIN 
    -- Ajouter la colonne subject_type si elle n'existe pas
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'conversations' AND column_name = 'subject_type') THEN
        ALTER TABLE public.conversations ADD COLUMN subject_type TEXT;
        -- Ajouter une contrainte de vérification pour les types valides
        ALTER TABLE public.conversations ADD CONSTRAINT conversations_subject_type_check CHECK (subject_type IN ('ad', 'shop', 'job_offer'));
    END IF;

    -- Ajouter la colonne subject_id si elle n'existe pas
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name = 'conversations' AND column_name = 'subject_id') THEN
        ALTER TABLE public.conversations ADD COLUMN subject_id UUID;
    END IF;
END $$;

-- Créer un index pour optimiser les recherches par sujet
CREATE INDEX IF NOT EXISTS idx_conversations_subject ON public.conversations(subject_type, subject_id);
