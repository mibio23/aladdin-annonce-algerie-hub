
-- Corriger les traductions pour la catégorie education-loisirs avec "Sport" inclus
UPDATE category_translations 
SET name = 'Sport, Bildung & Freizeit'
WHERE category_id = 'education-loisirs' AND language_code = 'de';

UPDATE category_translations 
SET name = 'Deporte, Educación y Ocio'
WHERE category_id = 'education-loisirs' AND language_code = 'es';

UPDATE category_translations 
SET name = 'Sport, Éducation & Loisirs'
WHERE category_id = 'education-loisirs' AND language_code = 'fr';

UPDATE category_translations 
SET name = 'Sport, Education & Leisure'
WHERE category_id = 'education-loisirs' AND language_code = 'en';

UPDATE category_translations 
SET name = 'الرياضة والتعليم والترفيه'
WHERE category_id = 'education-loisirs' AND language_code = 'ar';

UPDATE category_translations 
SET name = 'Sport, Educazione & Tempo Libero'
WHERE category_id = 'education-loisirs' AND language_code = 'it';

-- Mettre à jour aussi le nom dans la table categories principale
UPDATE categories 
SET name = 'Sport, Éducation & Loisirs'
WHERE id = 'education-loisirs' OR slug = 'education-loisirs';
