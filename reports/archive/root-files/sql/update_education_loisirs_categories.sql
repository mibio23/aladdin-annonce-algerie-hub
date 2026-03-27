-- Script de mise à jour des catégories "Sport, Éducation & Loisirs" dans Supabase
-- À exécuter dans l'éditeur SQL de Supabase

DO $$
DECLARE
    root_id UUID;
    l2_id UUID;
BEGIN
    -- 1. Récupérer ou créer la catégorie racine "Sport, Éducation & Loisirs"
    INSERT INTO categories (name, slug, icon, sort_order)
    VALUES ('Sport, Éducation & Loisirs', 'education-loisirs', 'book-open', 8)
    ON CONFLICT (slug) DO UPDATE SET name = EXCLUDED.name
    RETURNING id INTO root_id;

    -- Traductions racine (Français)
    INSERT INTO category_translations (category_id, language_code, name)
    VALUES (root_id, 'fr', 'Sport, Éducation & Loisirs')
    ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;


    -- =============================================
    -- 1. Cours & Formations
    -- =============================================
    INSERT INTO categories (parent_id, name, slug, sort_order)
    VALUES (root_id, 'Cours & Formations', 'cours-formations', 1)
    ON CONFLICT (slug) DO UPDATE SET parent_id = root_id
    RETURNING id INTO l2_id;

    -- Sous-catégories
    INSERT INTO categories (parent_id, name, slug) VALUES
    (l2_id, 'Cours particuliers', 'cours-particuliers'),
    (l2_id, 'Soutien scolaire', 'soutien-scolaire'),
    (l2_id, 'Préparation examens (BEM/BAC)', 'preparation-examens'),
    (l2_id, 'Formations professionnelles', 'formations-professionnelles'),
    (l2_id, 'Ateliers pédagogiques', 'ateliers-pedagogiques'),
    (l2_id, 'Formations en ligne', 'formations-en-ligne')
    ON CONFLICT (slug) DO UPDATE SET parent_id = l2_id;


    -- =============================================
    -- 2. Livres & Supports Éducatifs
    -- =============================================
    INSERT INTO categories (parent_id, name, slug, sort_order)
    VALUES (root_id, 'Livres & Supports Éducatifs', 'livres-supports-educatifs', 2)
    ON CONFLICT (slug) DO UPDATE SET parent_id = root_id
    RETURNING id INTO l2_id;

    -- Sous-catégories
    INSERT INTO categories (parent_id, name, slug) VALUES
    (l2_id, 'Livres scolaires', 'livres-scolaires'),
    (l2_id, 'Manuels universitaires', 'manuels-universitaires'),
    (l2_id, 'Romans', 'romans'),
    (l2_id, 'BD & Mangas', 'bd-mangas'),
    (l2_id, 'Encyclopédies', 'encyclopedies'),
    (l2_id, 'Documents pédagogiques', 'documents-pedagogiques')
    ON CONFLICT (slug) DO UPDATE SET parent_id = l2_id;


    -- =============================================
    -- 3. Arts & Musique
    -- =============================================
    INSERT INTO categories (parent_id, name, slug, sort_order)
    VALUES (root_id, 'Arts & Musique', 'arts-musique', 3)
    ON CONFLICT (slug) DO UPDATE SET parent_id = root_id
    RETURNING id INTO l2_id;

    -- Sous-catégories
    INSERT INTO categories (parent_id, name, slug) VALUES
    (l2_id, 'Instruments de musique', 'instruments-musique'),
    (l2_id, 'Cours de chant', 'cours-chant'),
    (l2_id, 'Peinture & Dessin', 'peinture-dessin'),
    (l2_id, 'Matériel artistique', 'materiel-artistique'),
    (l2_id, 'Ateliers créatifs', 'ateliers-creatifs'),
    (l2_id, 'Œuvres d''art', 'oeuvres-art')
    ON CONFLICT (slug) DO UPDATE SET parent_id = l2_id;


    -- =============================================
    -- 4. Sports & Loisirs
    -- =============================================
    INSERT INTO categories (parent_id, name, slug, sort_order)
    VALUES (root_id, 'Sports & Loisirs', 'sports-loisirs', 4)
    ON CONFLICT (slug) DO UPDATE SET parent_id = root_id
    RETURNING id INTO l2_id;

    -- Sous-catégories
    INSERT INTO categories (parent_id, name, slug) VALUES
    (l2_id, 'Équipements sportifs', 'equipements-sportifs'),
    (l2_id, 'Salles de sport', 'salles-de-sport'),
    (l2_id, 'Cours de danse & arts martiaux', 'cours-danse-arts-martiaux'),
    (l2_id, 'Activités outdoor', 'activites-outdoor'),
    (l2_id, 'Camping & Randonnée', 'camping-randonnee'),
    (l2_id, 'Jeux de société', 'jeux-de-societe')
    ON CONFLICT (slug) DO UPDATE SET parent_id = l2_id;


    -- =============================================
    -- 5. Enfance & Activités Familiales
    -- =============================================
    INSERT INTO categories (parent_id, name, slug, sort_order)
    VALUES (root_id, 'Enfance & Activités Familiales', 'enfance-activites-familiales', 5)
    ON CONFLICT (slug) DO UPDATE SET parent_id = root_id
    RETURNING id INTO l2_id;

    -- Sous-catégories
    INSERT INTO categories (parent_id, name, slug) VALUES
    (l2_id, 'Jouets éducatifs', 'jouets-educatifs'),
    (l2_id, 'Jeux d''éveil', 'jeux-eveil'),
    (l2_id, 'Activités parascolaires', 'activites-parascolaires'),
    (l2_id, 'Ateliers pour enfants', 'ateliers-enfants'),
    (l2_id, 'Animations d''anniversaire', 'animations-anniversaire'),
    (l2_id, 'Colonies de vacances', 'colonies-vacances')
    ON CONFLICT (slug) DO UPDATE SET parent_id = l2_id;


    -- =============================================
    -- 6. Clubs & Associations
    -- =============================================
    INSERT INTO categories (parent_id, name, slug, sort_order)
    VALUES (root_id, 'Clubs & Associations', 'clubs-associations', 6)
    ON CONFLICT (slug) DO UPDATE SET parent_id = root_id
    RETURNING id INTO l2_id;

    -- Sous-catégories
    INSERT INTO categories (parent_id, name, slug) VALUES
    (l2_id, 'Clubs sportifs', 'clubs-sportifs'),
    (l2_id, 'Associations culturelles', 'associations-culturelles'),
    (l2_id, 'Ateliers communautaires', 'ateliers-communautaires'),
    (l2_id, 'Clubs de lecture', 'clubs-lecture'),
    (l2_id, 'Événements éducatifs', 'evenements-educatifs'),
    (l2_id, 'Conférences', 'conferences')
    ON CONFLICT (slug) DO UPDATE SET parent_id = l2_id;

END $$;
