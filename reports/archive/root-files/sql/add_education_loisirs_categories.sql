-- Migration pour ajouter la catégorie 'Sport, Éducation & Loisirs' et ses sous-catégories dans Supabase

-- Insertion de la catégorie principale
INSERT INTO public.categories (id, name, slug, parent_id, level, icon, description, is_active, display_order)
VALUES (
  'education-loisirs',
  'Sport, Éducation & Loisirs',
  'education-loisirs',
  NULL,
  1,
  'BookOpen',
  'Catégorie regroupant les cours, formations, livres, sports, arts et loisirs',
  true,
  8
) ON CONFLICT (id) DO NOTHING;

-- Insertion des sous-catégories niveau 2
INSERT INTO public.categories (id, name, slug, parent_id, level, icon, description, is_active, display_order) VALUES
('cours-formations', 'Cours & Formations', 'cours-formations', 'education-loisirs', 2, 'GraduationCap', 'Cours particuliers, soutien scolaire et formations', true, 1),
('livres-supports-educatifs', 'Livres & Supports Éducatifs', 'livres-supports-educatifs', 'education-loisirs', 2, 'BookOpen', 'Livres scolaires, manuels et documents pédagogiques', true, 2),
('arts-musique', 'Arts & Musique', 'arts-musique', 'education-loisirs', 2, 'Music', 'Instruments, cours d''art et matériel artistique', true, 3),
('sports-loisirs', 'Sports & Loisirs', 'sports-loisirs', 'education-loisirs', 2, 'Dumbbell', 'Équipements sportifs et activités de loisirs', true, 4),
('jeux-de-societe', 'Jeux de Société', 'jeux-de-societe', 'education-loisirs', 2, 'Gamepad', 'Jeux de société et puzzles', true, 5),
('enfance-activites-familiales', 'Enfance & Activités Familiales', 'enfance-activites-familiales', 'education-loisirs', 2, 'Baby', 'Jouets, jeux éducatifs et activités pour enfants', true, 6)
ON CONFLICT (id) DO NOTHING;

-- Insertion des sous-catégories niveau 3 pour "Cours & Formations"
INSERT INTO public.categories (id, name, slug, parent_id, level, icon, description, is_active, display_order) VALUES
('cours-particuliers', 'Cours Particuliers', 'cours-particuliers', 'cours-formations', 3, 'User', 'Cours individuels dans toutes les matières', true, 1),
('soutien-scolaire', 'Soutien Scolaire', 'soutien-scolaire', 'cours-formations', 3, 'HelpCircle', 'Aide aux devoirs et renforcement scolaire', true, 2),
('preparation-examens', 'Préparation Examens', 'preparation-examens', 'cours-formations', 3, 'Target', 'Préparation BEM, BAC et examens universitaires', true, 3),
('formations-professionnelles', 'Formations Professionnelles', 'formations-professionnelles', 'cours-formations', 3, 'Briefcase', 'Formations métiers et développement professionnel', true, 4),
('ateliers-pedagogiques', 'Ateliers Pédagogiques', 'ateliers-pedagogiques', 'cours-formations', 3, 'Users', 'Ateliers collectifs et pédagogiques', true, 5),
('formations-en-ligne', 'Formations en Ligne', 'formations-en-ligne', 'cours-formations', 3, 'Globe', 'Cours et formations à distance', true, 6)
ON CONFLICT (id) DO NOTHING;

-- Insertion des sous-catégories niveau 3 pour "Livres & Supports Éducatifs"
INSERT INTO public.categories (id, name, slug, parent_id, level, icon, description, is_active, display_order) VALUES
('livres-scolaires', 'Livres Scolaires', 'livres-scolaires', 'livres-supports-educatifs', 3, 'Book', 'Manuels scolaires pour tous les niveaux', true, 1),
('manuels-universitaires', 'Manuels Universitaires', 'manuels-universitaires', 'livres-supports-educatifs', 3, 'University', 'Livres universitaires et scientifiques', true, 2),
('romans', 'Romans', 'romans', 'livres-supports-educatifs', 3, 'BookOpen', 'Romans et littérature', true, 3),
('bd-mangas', 'BD & Mangas', 'bd-mangas', 'livres-supports-educatifs', 3, 'BookCopy', 'Bandes dessinées et mangas', true, 4),
('encyclopedies', 'Encyclopédies', 'encyclopedies', 'livres-supports-educatifs', 3, 'Library', 'Ouvrages de référence et encyclopédies', true, 5),
('documents-pedagogiques', 'Documents Pédagogiques', 'documents-pedagogiques', 'livres-supports-educatifs', 3, 'FileText', 'Supports pédagogiques et documents éducatifs', true, 6)
ON CONFLICT (id) DO NOTHING;

-- Insertion des sous-catégories niveau 3 pour "Arts & Musique"
INSERT INTO public.categories (id, name, slug, parent_id, level, icon, description, is_active, display_order) VALUES
('instruments-musique', 'Instruments de Musique', 'instruments-musique', 'arts-musique', 3, 'Music', 'Instruments neufs et d''occasion', true, 1),
('cours-chant', 'Cours de Chant', 'cours-chant', 'arts-musique', 3, 'Mic', 'Cours de chant et vocalises', true, 2),
('peinture-dessin', 'Peinture & Dessin', 'peinture-dessin', 'arts-musique', 3, 'Palette', 'Cours et matériel de peinture/dessin', true, 3),
('materiel-artistique', 'Matériel Artistique', 'materiel-artistique', 'arts-musique', 3, 'Brush', 'Matériel pour artistes', true, 4),
('ateliers-creatifs', 'Ateliers Créatifs', 'ateliers-creatifs', 'arts-musique', 3, 'Sparkles', 'Ateliers créatifs et manuels', true, 5),
('oeuvres-art', 'Œuvres d''Art', 'oeuvres-art', 'arts-musique', 3, 'Image', 'Peintures, sculptures et art décoratif', true, 6)
ON CONFLICT (id) DO NOTHING;

-- Insertion des sous-catégories niveau 3 pour "Sports & Loisirs"
INSERT INTO public.categories (id, name, slug, parent_id, level, icon, description, is_active, display_order) VALUES
('equipements-sportifs', 'Équipements Sportifs', 'equipements-sportifs', 'sports-loisirs', 3, 'Dumbbell', 'Matériel et équipements de sport', true, 1),
('salles-de-sport', 'Salles de Sport', 'salles-de-sport', 'sports-loisirs', 3, 'Home', 'Abonnements salles de sport et fitness', true, 2),
('cours-danse-arts-martiaux', 'Cours Danse & Arts Martiaux', 'cours-danse-arts-martiaux', 'sports-loisirs', 3, 'User', 'Cours de danse, karaté, judo...', true, 3),
('activites-outdoor', 'Activités Outdoor', 'activites-outdoor', 'sports-loisirs', 3, 'Mountain', 'Randonnée, escalade, sports outdoor', true, 4),
('camping-randonnee', 'Camping & Randonnée', 'camping-randonnee', 'sports-loisirs', 3, 'Tent', 'Matériel de camping et randonnée', true, 5)
ON CONFLICT (id) DO NOTHING;

-- Insertion des sous-catégories niveau 3 pour "Enfance & Activités Familiales"
INSERT INTO public.categories (id, name, slug, parent_id, level, icon, description, is_active, display_order) VALUES
('jouets-educatifs', 'Jouets Éducatifs', 'jouets-educatifs', 'enfance-activites-familiales', 3, 'Puzzle', 'Jouets éducatifs et pédagogiques', true, 1),
('jeux-eveil', 'Jeux d''Éveil', 'jeux-eveil', 'enfance-activites-familiales', 3, 'Heart', 'Jeux pour bébés et tout-petits', true, 2),
('activites-parascolaires', 'Activités Parascolaires', 'activites-parascolaires', 'enfance-activites-familiales', 3, 'Calendar', 'Activités extrascolaires', true, 3),
('ateliers-enfants', 'Ateliers Enfants', 'ateliers-enfants', 'enfance-activites-familiales', 3, 'Paintbrush', 'Ateliers créatifs pour enfants', true, 4),
('animations-anniversaire', 'Animations Anniversaire', 'animations-anniversaire', 'enfance-activites-familiales', 3, 'Cake', 'Organisation d''anniversaires', true, 5),
('colonies-vacances', 'Colonies de Vacances', 'colonies-vacances', 'enfance-activites-familiales', 3, 'Sun', 'Séjours et colonies pour enfants', true, 6)
ON CONFLICT (id) DO NOTHING;

-- Création de la table des détails pour Sport, Éducation & Loisirs
CREATE TABLE IF NOT EXISTS public.education_loisirs_details (
  id UUID NOT NULL DEFAULT gen_random_uuid() PRIMARY KEY,
  announcement_id UUID NOT NULL REFERENCES public.announcements(id) ON DELETE CASCADE,
  education_subject TEXT,
  education_level TEXT,
  education_mode TEXT,
  sport_type TEXT,
  sport_brand TEXT,
  sport_condition TEXT,
  art_type TEXT,
  art_material TEXT,
  book_type TEXT,
  book_language TEXT,
  book_condition TEXT,
  game_type TEXT,
  game_players TEXT,
  toy_age_group TEXT,
  toy_material TEXT,
  club_association_type TEXT,
  club_activity_type TEXT,
  club_sport_type TEXT,
  club_age_group TEXT,
  club_audience TEXT,
  club_theme TEXT,
  club_format TEXT,
  club_genre TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Création d'un index pour améliorer les performances
CREATE INDEX IF NOT EXISTS idx_education_loisirs_details_announcement_id ON public.education_loisirs_details(announcement_id);

-- Ajout d'une contrainte unique pour éviter les doublons
ALTER TABLE public.education_loisirs_details 
ADD CONSTRAINT IF NOT EXISTS unique_education_loisirs_details_announcement_id 
UNIQUE (announcement_id);

-- Activation de RLS
ALTER TABLE public.education_loisirs_details ENABLE ROW LEVEL SECURITY;

DO $$
BEGIN
  CREATE POLICY "Education loisirs details are viewable by everyone"
  ON public.education_loisirs_details FOR SELECT USING (true);
EXCEPTION WHEN duplicate_object THEN
  NULL;
END $$;

DO $$
BEGIN
  CREATE POLICY "Users can insert their own education loisirs details"
  ON public.education_loisirs_details FOR INSERT
  WITH CHECK (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));
EXCEPTION WHEN duplicate_object THEN
  NULL;
END $$;

DO $$
BEGIN
  CREATE POLICY "Users can update their own education loisirs details"
  ON public.education_loisirs_details FOR UPDATE
  USING (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));
EXCEPTION WHEN duplicate_object THEN
  NULL;
END $$;

DO $$
BEGIN
  CREATE POLICY "Users can delete their own education loisirs details"
  ON public.education_loisirs_details FOR DELETE
  USING (auth.uid() = (SELECT user_id FROM public.announcements WHERE id = announcement_id));
EXCEPTION WHEN duplicate_object THEN
  NULL;
END $$;

-- Commentaires sur la table
COMMENT ON TABLE public.education_loisirs_details IS 'Table contenant les détails spécifiques aux annonces de la catégorie Sport, Éducation & Loisirs';
COMMENT ON COLUMN public.education_loisirs_details.education_subject IS 'Matière enseignée (maths, physique, etc.)';
COMMENT ON COLUMN public.education_loisirs_details.education_level IS 'Niveau d\'enseignement (primaire, collège, etc.)';
COMMENT ON COLUMN public.education_loisirs_details.education_mode IS 'Mode d\'enseignement (présentiel, en ligne, hybride)';
COMMENT ON COLUMN public.education_loisirs_details.sport_type IS 'Type de sport';
COMMENT ON COLUMN public.education_loisirs_details.sport_brand IS 'Marque du matériel sportif';
COMMENT ON COLUMN public.education_loisirs_details.sport_condition IS 'État du matériel sportif';
COMMENT ON COLUMN public.education_loisirs_details.art_type IS 'Type d\'art (musique, peinture, etc.)';
COMMENT ON COLUMN public.education_loisirs_details.art_material IS 'Matériel artistique';
COMMENT ON COLUMN public.education_loisirs_details.book_type IS 'Type de livre';
COMMENT ON COLUMN public.education_loisirs_details.book_language IS 'Langue du livre';
COMMENT ON COLUMN public.education_loisirs_details.book_condition IS 'État du livre';
COMMENT ON COLUMN public.education_loisirs_details.game_type IS 'Type de jeu';
COMMENT ON COLUMN public.education_loisirs_details.game_players IS 'Nombre de joueurs';
COMMENT ON COLUMN public.education_loisirs_details.toy_age_group IS 'Tranche d\'âge pour les jouets';
COMMENT ON COLUMN public.education_loisirs_details.toy_material IS 'Matériau des jouets';
COMMENT ON COLUMN public.education_loisirs_details.club_association_type IS 'Type de club ou association';
COMMENT ON COLUMN public.education_loisirs_details.club_activity_type IS 'Type d\'activité proposée';
COMMENT ON COLUMN public.education_loisirs_details.club_sport_type IS 'Type de sport (si club sportif)';
COMMENT ON COLUMN public.education_loisirs_details.club_age_group IS 'Tranche d\'âge ciblée';
COMMENT ON COLUMN public.education_loisirs_details.club_audience IS 'Public ciblé';
COMMENT ON COLUMN public.education_loisirs_details.club_theme IS 'Thème (culture, caritatif, etc.)';
COMMENT ON COLUMN public.education_loisirs_details.club_format IS 'Format (présentiel, en ligne, etc.)';
COMMENT ON COLUMN public.education_loisirs_details.club_genre IS 'Genre (si applicable)';
