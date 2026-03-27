-- Correction de la vue et de la fonction manquante
-- VERSION 6 : Adaptation ultime (types UUID/BIGINT)
-- L'erreur "operator does not exist: uuid = bigint" indique que vos ID sont des BIGINT (ou INT8) et non des UUID.
-- Je modifie donc tous les types ID pour correspondre à votre base de données.

BEGIN;

-- 1. Nettoyage
DROP VIEW IF EXISTS public.categories_with_translations CASCADE;
DROP FUNCTION IF EXISTS public.get_categories_by_language(text);

-- 2. Recréation de la vue adaptée au schéma minimal et aux types BIGINT
CREATE OR REPLACE VIEW public.categories_with_translations AS
SELECT 
    c.id,
    c.slug,
    c.parent_id,
    c.level,
    0 as sort_order, 
    c.is_active, 
    false as is_featured, 
    c.description,
    c.created_at,
    c.updated_at,
    ct.name,
    ct.description as translated_description,
    ct.meta_title,
    ct.meta_description as meta_description_text,
    ct.language_code,
    ci.image_url,
    ci.alt_text,
    COALESCE(
        array_agg(ctg.tag ORDER BY ctg.tag) FILTER (WHERE ctg.tag IS NOT NULL),
        ARRAY[]::text[]
    ) as tags
FROM public.categories c
LEFT JOIN public.category_translations ct ON c.id = ct.category_id
LEFT JOIN public.category_images ci ON c.id = ci.category_id AND ci.image_type = 'main'
LEFT JOIN public.category_tags ctg ON c.id = ctg.category_id
GROUP BY 
    c.id, c.slug, c.parent_id, c.level, c.is_active, c.description, c.created_at, c.updated_at,
    ct.name, ct.description, ct.meta_title, ct.meta_description, ct.language_code, 
    ci.image_url, ci.alt_text;

-- 3. Recréation de la fonction helper avec types génériques pour éviter les conflits
-- On utilise 'bigint' pour les ID au lieu de 'uuid'
CREATE OR REPLACE FUNCTION public.get_categories_by_language(lang_code TEXT DEFAULT 'fr')
RETURNS TABLE (
    id BIGINT,          -- Changé de UUID à BIGINT
    slug TEXT,
    parent_id BIGINT,   -- Changé de UUID à BIGINT
    level INTEGER,
    sort_order INTEGER,
    is_active BOOLEAN,
    is_featured BOOLEAN,
    description TEXT,
    created_at TIMESTAMP WITH TIME ZONE,
    updated_at TIMESTAMP WITH TIME ZONE,
    name TEXT,
    translated_description TEXT,
    meta_title TEXT,
    meta_description_text TEXT,
    language_code TEXT,
    image_url TEXT,
    alt_text TEXT,
    tags TEXT[]
) AS $$
BEGIN
    RETURN QUERY
    SELECT 
        id::BIGINT, 
        slug, 
        parent_id::BIGINT, 
        level, 
        sort_order, 
        is_active, 
        is_featured, 
        description, 
        created_at, 
        updated_at, 
        name, 
        translated_description, 
        meta_title, 
        meta_description_text, 
        language_code, 
        image_url, 
        alt_text, 
        tags
    FROM public.categories_with_translations
    WHERE language_code = get_categories_by_language.lang_code
    AND is_active = true
    ORDER BY level, sort_order, name;
END;
$$ LANGUAGE plpgsql;

COMMIT;

-- 4. Vérification immédiate
SELECT * FROM get_categories_by_language('ar') 
WHERE slug = 'agriculture-agroalimentaire' OR parent_id IN (SELECT id FROM categories WHERE slug = 'agriculture-agroalimentaire')
LIMIT 10;
