-- Script pour corriger l'erreur "schema 'net' does not exist"
-- Cette erreur survient lorsqu'un trigger tente d'utiliser l'extension pg_net qui n'est pas activée.

BEGIN;

-- 1. Tenter d'activer l'extension pg_net (si les droits le permettent)
DO $$
BEGIN
    CREATE EXTENSION IF NOT EXISTS pg_net SCHEMA extensions;
EXCEPTION WHEN OTHERS THEN
    RAISE NOTICE 'Impossible d''activer pg_net (manque de droits probablement). Continuation vers le nettoyage des triggers...';
END $$;

-- 2. Identifier et supprimer les triggers problématiques sur la table announcements
-- Nous cherchons les triggers qui appellent des fonctions utilisant le schéma "net" ou des requêtes http
DO $$
DECLARE
    t_rec RECORD;
    func_src TEXT;
    dropped_count INTEGER := 0;
BEGIN
    RAISE NOTICE 'Analyse des triggers sur la table announcements...';
    
    FOR t_rec IN 
        SELECT 
            tg.tgname as trigger_name, 
            p.proname as function_name, 
            p.prosrc as function_source
        FROM pg_trigger tg
        JOIN pg_class c ON tg.tgrelid = c.oid
        JOIN pg_proc p ON tg.tgfoid = p.oid
        WHERE c.relname = 'announcements'
        AND NOT tg.tgisinternal
    LOOP
        -- Vérifier si le code de la fonction contient des références à 'net.' ou 'http'
        IF t_rec.function_source ILIKE '%net.%' OR t_rec.function_source ILIKE '%http_%' OR t_rec.function_source ILIKE '%curl%' THEN
            RAISE NOTICE 'Trigger suspect trouvé: % (appelle la fonction %)', t_rec.trigger_name, t_rec.function_name;
            
            -- Suppression du trigger
            EXECUTE 'DROP TRIGGER IF EXISTS ' || quote_ident(t_rec.trigger_name) || ' ON announcements';
            RAISE NOTICE 'Trigger % supprimé avec succès.', t_rec.trigger_name;
            dropped_count := dropped_count + 1;
        END IF;
    END LOOP;

    RAISE NOTICE 'Nettoyage terminé. % triggers supprimés.', dropped_count;
END $$;

COMMIT;
