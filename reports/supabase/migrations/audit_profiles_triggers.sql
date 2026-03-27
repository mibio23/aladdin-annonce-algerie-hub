
-- Script d'audit des triggers sur la table profiles
-- Ce script liste tous les triggers actifs et leur fonction associée

SELECT 
    trigger_name,
    event_manipulation AS event,
    action_timing AS timing,
    action_statement AS function_definition
FROM 
    information_schema.triggers 
WHERE 
    event_object_table = 'profiles'
ORDER BY 
    trigger_name;

-- Pour voir le code source des fonctions PL/pgSQL
SELECT 
    p.proname AS function_name,
    pg_get_functiondef(p.oid) AS function_source
FROM 
    pg_proc p
    JOIN pg_namespace n ON p.pronamespace = n.oid
WHERE 
    n.nspname = 'public'
    AND p.proname LIKE '%profile%'
ORDER BY 
    p.proname;
