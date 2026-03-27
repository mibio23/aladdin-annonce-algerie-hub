ALTER TABLE public.category_translations
  DROP CONSTRAINT IF EXISTS category_translations_lang_check;

ALTER TABLE public.category_translations
  ADD CONSTRAINT category_translations_lang_check CHECK (language_code IN ('fr','ar','en','de','es','it'));

INSERT INTO public.category_translations (category_id, language_code, name, description)
SELECT c.id, 'it',
  CASE c.slug
    WHEN 'informatique-tech' THEN 'Informatica & Tech'
    WHEN 'telephonie-mobile' THEN 'Telefonia & Mobile'
    WHEN 'telephonie' THEN 'Telefonia'
    WHEN 'informatique' THEN 'Informatica'
    WHEN 'maison-mobilier' THEN 'Casa & Arredo'
    WHEN 'vehicules' THEN 'Veicoli'
    WHEN 'immobilier' THEN 'Immobiliare'
    ELSE c.slug
  END,
  c.description
FROM public.categories c
WHERE c.slug IN ('informatique-tech','telephonie-mobile','telephonie','informatique','maison-mobilier','vehicules','immobilier')
ON CONFLICT (category_id, language_code) DO NOTHING;
