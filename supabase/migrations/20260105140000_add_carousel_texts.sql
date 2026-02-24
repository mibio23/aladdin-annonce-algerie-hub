-- Add multiple text lines and text position columns to hero_carousel_slides
ALTER TABLE public.hero_carousel_slides
ADD COLUMN IF NOT EXISTS text_2 text,
ADD COLUMN IF NOT EXISTS text_3 text,
ADD COLUMN IF NOT EXISTS text_4 text,
ADD COLUMN IF NOT EXISTS text_5 text,
ADD COLUMN IF NOT EXISTS text_position text DEFAULT 'center'; -- 'center', 'bottom_left' (French), 'bottom_right' (Arabic)

-- Update comment
COMMENT ON COLUMN public.hero_carousel_slides.text_position IS 'Position du texte: center (défaut), bottom_left (Français/Gauche), bottom_right (Arabe/Droite)';
