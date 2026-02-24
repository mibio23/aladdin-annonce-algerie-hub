-- Correction du schéma et des fonctions pour la base de données
-- Objectif : Assurer que les colonnes nécessaires existent et que la fonction retourne les bons types (UUID).

BEGIN;

-- 1. Assurer l'existence des colonnes manquantes (basé sur le schéma de référence et les migrations récentes)
DO $$ 
BEGIN
    -- Ajouter 'icon' si elle n'existe pas (remplace icon_name)
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name='categories' AND column_name='icon') THEN
        ALTER TABLE public.categories ADD COLUMN icon TEXT;
    END IF;

    -- Ajouter 'sort_order' si elle n'existe pas
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name='categories' AND column_name='sort_order') THEN
        ALTER TABLE public.categories ADD COLUMN sort_order INTEGER DEFAULT 0;
    END IF;

    -- Ajouter 'is_featured' si elle n'existe pas
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name='categories' AND column_name='is_featured') THEN
        ALTER TABLE public.categories ADD COLUMN is_featured BOOLEAN DEFAULT false;
    END IF;

    -- Ajouter 'is_active' si elle n'existe pas
    IF NOT EXISTS (SELECT 1 FROM information_schema.columns WHERE table_name='categories' AND column_name='is_active') THEN
        ALTER TABLE public.categories ADD COLUMN is_active BOOLEAN DEFAULT true;
    END IF;
END $$;

-- 2. Recréation de la vue categories_with_translations avec les bonnes colonnes
DROP VIEW IF EXISTS public.categories_with_translations CASCADE;

CREATE OR REPLACE VIEW public.categories_with_translations AS
SELECT 
    c.id,
    c.slug,
    c.parent_id,
    c.level,
    c.sort_order, 
    c.is_active, 
    c.is_featured, 
    c.description,
    c.created_at,
    c.updated_at,
    c.icon, -- Utilisation de 'icon' et non 'icon_name'
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
    c.id, c.slug, c.parent_id, c.level, c.sort_order, c.is_active, c.is_featured, c.description, c.created_at, c.updated_at, c.icon,
    ct.name, ct.description, ct.meta_title, ct.meta_description, ct.language_code, 
    ci.image_url, ci.alt_text;

-- 3. Recréation de la fonction helper avec types BIGINT (Adapté à votre DB qui retourne des BIGINT)
DROP FUNCTION IF EXISTS public.get_categories_by_language(text);

CREATE OR REPLACE FUNCTION public.get_categories_by_language(lang_code TEXT DEFAULT 'fr')
RETURNS TABLE (
    id BIGINT,          -- Retourne BIGINT car la table utilise BIGINT
    slug TEXT,
    parent_id BIGINT,   -- Retourne BIGINT
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
        c.id, 
        c.slug, 
        c.parent_id, 
        c.level, 
        c.sort_order, 
        c.is_active, 
        c.is_featured, 
        c.description, 
        c.created_at, 
        c.updated_at, 
        c.name, 
        c.translated_description, 
        c.meta_title, 
        c.meta_description_text, 
        c.language_code, 
        c.image_url, 
        c.alt_text, 
        c.tags
    FROM public.categories_with_translations c
    WHERE c.language_code = get_categories_by_language.lang_code
    AND c.is_active = true
    ORDER BY c.level, c.sort_order, c.name;
END;
$$ LANGUAGE plpgsql;

COMMIT;

-- 4. Vérification
SELECT count(*) as verification_count FROM get_categories_by_language('fr');
