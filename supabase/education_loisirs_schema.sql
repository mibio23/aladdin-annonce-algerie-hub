-- Script SQL pour l'implémentation manuelle de la catégorie "Sport, Éducation & Loisirs"
-- Ce script crée les tables nécessaires et insère les données avec la structure JSONB pour les attributs dynamiques.

-- 1. Activer l'extension UUID si nécessaire
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- 2. Création des tables (si elles n'existent pas déjà)

-- Table des catégories principales
CREATE TABLE IF NOT EXISTS public.categories (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    slug TEXT NOT NULL UNIQUE,
    icon_name TEXT, -- Nom de l'icône Lucide (ex: 'BookOpen')
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Table des traductions des catégories
CREATE TABLE IF NOT EXISTS public.category_translations (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    category_id UUID NOT NULL REFERENCES public.categories(id) ON DELETE CASCADE,
    language_code TEXT NOT NULL, -- 'fr', 'en', 'ar', etc.
    name TEXT NOT NULL,
    UNIQUE(category_id, language_code)
);

-- Table des sous-catégories (structure imbriquée)
CREATE TABLE IF NOT EXISTS public.subcategories (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    parent_id UUID REFERENCES public.subcategories(id) ON DELETE CASCADE, -- Référence à soi-même pour l'imbrication
    category_id UUID REFERENCES public.categories(id) ON DELETE CASCADE, -- Référence à la catégorie racine
    slug TEXT NOT NULL,
    attributes_schema JSONB DEFAULT '{}'::jsonb, -- Stocke les filtres dynamiques : { "mode": ["online", "offline"] }
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Table des traductions des sous-catégories
CREATE TABLE IF NOT EXISTS public.subcategory_translations (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    subcategory_id UUID NOT NULL REFERENCES public.subcategories(id) ON DELETE CASCADE,
    language_code TEXT NOT NULL,
    name TEXT NOT NULL,
    UNIQUE(subcategory_id, language_code)
);

-- Index pour la performance
CREATE INDEX IF NOT EXISTS idx_category_translations_lang ON public.category_translations(language_code);
CREATE INDEX IF NOT EXISTS idx_subcategory_translations_lang ON public.subcategory_translations(language_code);
CREATE INDEX IF NOT EXISTS idx_subcategories_parent ON public.subcategories(parent_id);
CREATE INDEX IF NOT EXISTS idx_subcategories_category ON public.subcategories(category_id);

-- Politiques de sécurité (RLS) - Lecture publique
ALTER TABLE public.categories ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.category_translations ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.subcategories ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.subcategory_translations ENABLE ROW LEVEL SECURITY;

DO $$
BEGIN
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE tablename = 'categories' AND policyname = 'Allow public read access on categories') THEN
        CREATE POLICY "Allow public read access on categories" ON public.categories FOR SELECT USING (true);
    END IF;
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE tablename = 'category_translations' AND policyname = 'Allow public read access on category_translations') THEN
        CREATE POLICY "Allow public read access on category_translations" ON public.category_translations FOR SELECT USING (true);
    END IF;
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE tablename = 'subcategories' AND policyname = 'Allow public read access on subcategories') THEN
        CREATE POLICY "Allow public read access on subcategories" ON public.subcategories FOR SELECT USING (true);
    END IF;
    IF NOT EXISTS (SELECT 1 FROM pg_policies WHERE tablename = 'subcategory_translations' AND policyname = 'Allow public read access on subcategory_translations') THEN
        CREATE POLICY "Allow public read access on subcategory_translations" ON public.subcategory_translations FOR SELECT USING (true);
    END IF;
END $$;

-- 3. Insertion des données pour "Sport, Éducation & Loisirs"
DO $$
DECLARE
    cat_id UUID;
    sub_cours_id UUID;
    sub_livres_id UUID;
    sub_sports_id UUID;
BEGIN
    -- Vérifier si la catégorie existe déjà pour éviter les doublons
    SELECT id INTO cat_id FROM public.categories WHERE slug = 'education-loisirs';
    
    IF cat_id IS NULL THEN
        -- Insertion de la catégorie parente
        INSERT INTO public.categories (slug, icon_name)
        VALUES ('education-loisirs', 'BookOpen')
        RETURNING id INTO cat_id;

        -- Traductions de la catégorie parente
        INSERT INTO public.category_translations (category_id, language_code, name) VALUES
        (cat_id, 'fr', 'Sport, Éducation & Loisirs'),
        (cat_id, 'en', 'Sport, Education & Leisure'),
        (cat_id, 'ar', 'الرياضة، التعليم والترفيه'),
        (cat_id, 'es', 'Deporte, Educación y Ocio'),
        (cat_id, 'de', 'Sport, Bildung & Freizeit'),
        (cat_id, 'it', 'Sport, Istruzione e Tempo Libero');

        -- Insertion Sous-catégorie : Cours & Formations (avec attributs)
        INSERT INTO public.subcategories (category_id, slug, attributes_schema)
        VALUES (cat_id, 'cours-formations', '{
            "mode": ["en_ligne", "presentiel", "domicile"],
            "level": ["primaire", "cem", "lycee", "universitaire", "adulte"],
            "type": ["soutien_scolaire", "langues", "musique", "informatique"]
        }'::jsonb)
        RETURNING id INTO sub_cours_id;

        -- Traductions Sous-catégorie Cours
        INSERT INTO public.subcategory_translations (subcategory_id, language_code, name) VALUES
        (sub_cours_id, 'fr', 'Cours & Formations'),
        (sub_cours_id, 'en', 'Courses & Training'),
        (sub_cours_id, 'ar', 'دروس وتدريب'),
        (sub_cours_id, 'es', 'Cursos y Formación'),
        (sub_cours_id, 'de', 'Kurse & Schulungen'),
        (sub_cours_id, 'it', 'Corsi e Formazione');

        -- Insertion Sous-catégorie : Livres & Supports (avec attributs)
        INSERT INTO public.subcategories (category_id, slug, attributes_schema)
        VALUES (cat_id, 'livres-supports-educatifs', '{
            "condition": ["neuf", "bon_etat", "etat_moyen"],
            "language": ["arabe", "francais", "anglais"],
            "genre": ["scolaire", "roman", "bd", "scientifique"]
        }'::jsonb)
        RETURNING id INTO sub_livres_id;

        -- Traductions Sous-catégorie Livres
        INSERT INTO public.subcategory_translations (subcategory_id, language_code, name) VALUES
        (sub_livres_id, 'fr', 'Livres & Supports Éducatifs'),
        (sub_livres_id, 'en', 'Books & Educational Materials'),
        (sub_livres_id, 'ar', 'كتب ومواد تعليمية'),
        (sub_livres_id, 'es', 'Libros y Material Educativo'),
        (sub_livres_id, 'de', 'Bücher & Lehrmaterialien'),
        (sub_livres_id, 'it', 'Libri e Materiali Didattici');

        -- Insertion Sous-catégorie : Sports & Loisirs (avec attributs)
        INSERT INTO public.subcategories (category_id, slug, attributes_schema)
        VALUES (cat_id, 'sports-loisirs', '{
            "item_type": ["equipement", "vetement", "accessoire"],
            "sport_type": ["football", "fitness", "randonnee", "combat"]
        }'::jsonb)
        RETURNING id INTO sub_sports_id;

        -- Traductions Sous-catégorie Sports
        INSERT INTO public.subcategory_translations (subcategory_id, language_code, name) VALUES
        (sub_sports_id, 'fr', 'Sports & Loisirs'),
        (sub_sports_id, 'en', 'Sports & Leisure'),
        (sub_sports_id, 'ar', 'الرياضة والترفيه'),
        (sub_sports_id, 'es', 'Deportes y Ocio'),
        (sub_sports_id, 'de', 'Sport & Freizeit'),
        (sub_sports_id, 'it', 'Sport e Tempo Libero');
        
        -- Note: Vous pouvez ajouter les sous-sous-catégories ici en utilisant les IDs récupérés (sub_cours_id, etc.) comme parent_id
    END IF;
END $$;
