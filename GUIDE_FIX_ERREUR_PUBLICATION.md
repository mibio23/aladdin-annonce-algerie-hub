# Guide de Correction de l'Erreur de Publication (Erreur 400 / Schema Error)

L'erreur que vous rencontrez dans la console (`Could not find the 'premium_end_at' column...`) indique que votre base de données Supabase n'est pas synchronisée avec le code de l'application. La table `announcements` manque de certaines colonnes nécessaires.

## Solution

Pour corriger ce problème, vous devez mettre à jour la structure de votre base de données.

### Étape 1 : Récupérer le script SQL

Un script complet de correction a été créé à la racine du projet : `03-ensure-announcements-schema.sql`.

### Étape 2 : Exécuter le script dans Supabase

1. Connectez-vous à votre tableau de bord Supabase (https://app.supabase.com).
2. Sélectionnez votre projet (`smsvybphkdxzvgawzoru`).
3. Allez dans l'**Éditeur SQL** (icône terminal sur la gauche).
4. Cliquez sur **"New Query"**.
5. Copiez-collez le contenu du fichier `03-ensure-announcements-schema.sql` (ci-dessous) dans l'éditeur.
6. Cliquez sur **"Run"** (bouton vert).

### Contenu du script (`03-ensure-announcements-schema.sql`)

```sql
-- Script complet pour corriger le schéma de la table announcements
-- Ce script doit être exécuté dans l'éditeur SQL de Supabase

BEGIN;

-- 1. Ajout des colonnes manquantes
ALTER TABLE public.announcements ADD COLUMN IF NOT EXISTS premium_end_at TIMESTAMPTZ;
ALTER TABLE public.announcements ADD COLUMN IF NOT EXISTS type TEXT DEFAULT 'normal';
ALTER TABLE public.announcements ADD COLUMN IF NOT EXISTS subcategory_id TEXT;
ALTER TABLE public.announcements ADD COLUMN IF NOT EXISTS condition TEXT;
ALTER TABLE public.announcements ADD COLUMN IF NOT EXISTS wilaya TEXT;
ALTER TABLE public.announcements ADD COLUMN IF NOT EXISTS commune TEXT;
ALTER TABLE public.announcements ADD COLUMN IF NOT EXISTS phone_number TEXT;
ALTER TABLE public.announcements ADD COLUMN IF NOT EXISTS is_urgent BOOLEAN DEFAULT false;
ALTER TABLE public.announcements ADD COLUMN IF NOT EXISTS currency TEXT DEFAULT 'DZD';
ALTER TABLE public.announcements ADD COLUMN IF NOT EXISTS view_count INTEGER DEFAULT 0;
ALTER TABLE public.announcements ADD COLUMN IF NOT EXISTS contact_count INTEGER DEFAULT 0;
ALTER TABLE public.announcements ADD COLUMN IF NOT EXISTS status TEXT DEFAULT 'pending';

-- 2. Correction des types des colonnes IDs (UUID -> TEXT)
-- Pour category_id
DO $$
BEGIN
    IF EXISTS (
        SELECT 1 
        FROM information_schema.columns 
        WHERE table_name = 'announcements' 
        AND column_name = 'category_id' 
        AND data_type = 'uuid'
    ) THEN
        ALTER TABLE announcements DROP CONSTRAINT IF EXISTS announcements_category_id_fkey;
        ALTER TABLE announcements ALTER COLUMN category_id TYPE TEXT USING category_id::text;
        ALTER TABLE announcements 
        ADD CONSTRAINT announcements_category_id_fkey 
        FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE SET NULL;
    END IF;
END $$;

-- Pour subcategory_id
DO $$
BEGIN
    IF EXISTS (
        SELECT 1 
        FROM information_schema.columns 
        WHERE table_name = 'announcements' 
        AND column_name = 'subcategory_id' 
        AND data_type = 'uuid'
    ) THEN
        ALTER TABLE announcements DROP CONSTRAINT IF EXISTS announcements_subcategory_id_fkey;
        ALTER TABLE announcements ALTER COLUMN subcategory_id TYPE TEXT USING subcategory_id::text;
        ALTER TABLE announcements 
        ADD CONSTRAINT announcements_subcategory_id_fkey 
        FOREIGN KEY (subcategory_id) REFERENCES categories(id) ON DELETE SET NULL;
    END IF;
END $$;

COMMIT;
```

### Étape 3 : Vérifier

Une fois le script exécuté, retournez sur votre application et essayez de publier une annonce à nouveau. L'erreur devrait avoir disparu.
