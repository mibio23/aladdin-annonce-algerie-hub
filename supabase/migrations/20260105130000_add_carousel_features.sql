
-- Ajout des colonnes pour la personnalisation avancée des slides
ALTER TABLE public.hero_carousel_slides
ADD COLUMN IF NOT EXISTS font_size text DEFAULT 'medium', -- 'small', 'medium', 'large', 'xl'
ADD COLUMN IF NOT EXISTS font_family text DEFAULT 'Inter', -- 'Inter', 'Playfair Display', 'Roboto', 'Montserrat', 'Courier New'
ADD COLUMN IF NOT EXISTS animation_type text DEFAULT 'fade-up', -- 'fade-up', 'slide-left', 'zoom', 'typewriter'
ADD COLUMN IF NOT EXISTS end_at timestamp with time zone; -- Date de fin de publication (NULL = illimité)

-- Commentaire pour la documentation
COMMENT ON COLUMN public.hero_carousel_slides.font_size IS 'Taille de la police (small, medium, large, xl)';
COMMENT ON COLUMN public.hero_carousel_slides.font_family IS 'Police de caractères';
COMMENT ON COLUMN public.hero_carousel_slides.animation_type IS 'Type d''animation du texte';
COMMENT ON COLUMN public.hero_carousel_slides.end_at IS 'Date et heure de fin de publication';
