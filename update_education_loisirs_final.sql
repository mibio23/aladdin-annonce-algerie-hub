-- Script FINAL pour la catégorie "Sport, Éducation & Loisirs"
-- Ce script active les cadrans de détails (attributs) pour toutes les sous-catégories.

-- 1. Cours & Formations
UPDATE categories SET attributes = '{
  "mode": ["en_ligne", "presentiel", "domicile"],
  "level": ["primaire", "cem", "lycee", "universitaire", "adulte"],
  "type": ["soutien_scolaire", "langues", "musique", "informatique"]
}'::jsonb WHERE slug = 'cours-formations';

UPDATE categories SET attributes = '{
  "subject": ["maths", "physique", "sciences", "arabe", "francais", "anglais", "philosophie", "histoire_geo", "economie", "gestion", "autre"],
  "level": ["primaire", "cem", "lycee", "universitaire"],
  "mode": ["presentiel", "en_ligne", "domicile"]
}'::jsonb WHERE slug = 'cours-particuliers';

UPDATE categories SET attributes = '{
  "subject": ["maths", "physique", "sciences", "arabe", "francais", "anglais", "autre"],
  "level": ["primaire", "cem", "lycee"],
  "mode": ["presentiel", "en_ligne"]
}'::jsonb WHERE slug = 'soutien-scolaire';

UPDATE categories SET attributes = '{
  "subject": ["maths", "physique", "sciences", "arabe", "francais", "anglais", "autre"],
  "level": ["cem", "lycee"],
  "mode": ["presentiel", "en_ligne"]
}'::jsonb WHERE slug = 'preparation-examens';

UPDATE categories SET attributes = '{
  "domain": ["informatique", "commerce", "gestion", "marketing", "design", "autre"],
  "mode": ["presentiel", "en_ligne"],
  "duration": ["1_semaine", "1_mois", "trimestriel"]
}'::jsonb WHERE slug = 'formations-professionnelles';

UPDATE categories SET attributes = '{
  "topic": ["science", "technologie", "art", "langues"],
  "age_group": ["6-12", "12-18", "adultes"],
  "mode": ["presentiel", "en_ligne"]
}'::jsonb WHERE slug = 'ateliers-pedagogiques';

UPDATE categories SET attributes = '{
  "domain": ["informatique", "langues", "business", "developpement_personnel"],
  "level": ["debutant", "intermediaire", "avance"],
  "price_type": ["gratuit", "payant"]
}'::jsonb WHERE slug = 'formations-en-ligne';

-- 2. Livres & Supports Éducatifs
UPDATE categories SET attributes = '{
  "condition": ["neuf", "bon_etat", "etat_moyen"],
  "language": ["arabe", "francais", "anglais"],
  "genre": ["scolaire", "roman", "bd", "scientifique"]
}'::jsonb WHERE slug = 'livres-supports-educatifs';

UPDATE categories SET attributes = '{
  "level": ["primaire", "cem", "lycee"],
  "subject": ["maths", "sciences", "arabe", "francais", "anglais", "autre"],
  "condition": ["neuf", "bon_etat", "occasion"]
}'::jsonb WHERE slug = 'livres-scolaires';

UPDATE categories SET attributes = '{
  "domain": ["sciences", "medecine", "droit", "economie", "technologie", "autre"],
  "condition": ["neuf", "bon_etat", "occasion"],
  "language": ["francais", "arabe", "anglais"]
}'::jsonb WHERE slug = 'manuels-universitaires';

UPDATE categories SET attributes = '{
  "genre": ["roman", "thriller", "sf", "biographie", "autre"],
  "language": ["arabe", "francais", "anglais", "autre"],
  "condition": ["neuf", "bon_etat", "occasion"]
}'::jsonb WHERE slug = 'romans';

UPDATE categories SET attributes = '{
  "genre": ["shonen", "shojo", "seinen", "comics", "bd_europeenne"],
  "language": ["francais", "anglais", "arabe"],
  "condition": ["neuf", "bon_etat", "occasion"]
}'::jsonb WHERE slug = 'bd-mangas';

UPDATE categories SET attributes = '{
  "topic": ["general", "science", "histoire", "nature", "art"],
  "audience": ["enfants", "adultes", "etudiants"],
  "condition": ["neuf", "bon_etat", "occasion"]
}'::jsonb WHERE slug = 'encyclopedies';

UPDATE categories SET attributes = '{
  "type": ["fiche_revision", "exercice", "examen_corrige", "cours_resume"],
  "level": ["primaire", "cem", "lycee", "universitaire"],
  "subject": ["maths", "physique", "arabe", "francais", "autre"]
}'::jsonb WHERE slug = 'documents-pedagogiques';

-- 3. Arts & Musique
UPDATE categories SET attributes = '{
  "category_type": ["instruments", "cours", "art", "materiel", "ateliers"]
}'::jsonb WHERE slug = 'arts-musique';

UPDATE categories SET attributes = '{
  "instrument_type": ["guitare", "piano", "percussion", "violon", "instruments_vent", "accessoires", "autre"],
  "condition": ["neuf", "bon_etat", "occasion"],
  "brand": ["yamaha", "roland", "fender", "ibanez", "autre"]
}'::jsonb WHERE slug = 'instruments-musique';

UPDATE categories SET attributes = '{
  "skill_level": ["debutant", "intermediaire", "avance", "professionnel"],
  "format": ["individuel", "groupe", "en_ligne", "presentiel"]
}'::jsonb WHERE slug = 'cours-chant';

UPDATE categories SET attributes = '{
  "technique": ["huile", "aquarelle", "acrylique", "crayon", "charbon", "autre"],
  "brand": ["faber_castell", "winsor_newton", "autre"],
  "condition": ["neuf", "bon_etat"]
}'::jsonb WHERE slug = 'peinture-dessin';

UPDATE categories SET attributes = '{
  "type": ["pinceaux", "toiles", "pigments", "chevalet", "papier"],
  "brand": ["canson", "pebeo", "autre"],
  "condition": ["neuf", "bon_etat"]
}'::jsonb WHERE slug = 'materiel-artistique';

UPDATE categories SET attributes = '{
  "activity_type": ["poterie", "artisanat", "mosaique", "couture", "bijoux"],
  "age_group": ["enfants", "adultes", "tout_public"],
  "format": ["atelier", "stage", "cours_hebdo"]
}'::jsonb WHERE slug = 'ateliers-creatifs';

UPDATE categories SET attributes = '{
  "style": ["moderne", "classique", "abstrait", "contemporain"],
  "type": ["tableau", "sculpture", "photo", "dessin"],
  "price_type": ["fixe", "negociable"]
}'::jsonb WHERE slug = 'oeuvres-art';

-- 4. Sports & Loisirs
UPDATE categories SET attributes = '{
  "item_type": ["equipement", "vetement", "accessoire"],
  "sport_type": ["football", "fitness", "randonnee", "combat"]
}'::jsonb WHERE slug = 'sports-loisirs';

UPDATE categories SET attributes = '{
  "sport_type": ["football", "fitness", "cyclisme", "combat", "randonnee", "autre"],
  "condition": ["neuf", "bon_etat", "occasion"],
  "brand": ["nike", "adidas", "decathlon", "puma", "autre"]
}'::jsonb WHERE slug = 'equipements-sportifs';

UPDATE categories SET attributes = '{
  "subscription_type": ["mensuel", "trimestriel", "semestriel", "annuel", "seance"],
  "access_type": ["hommes", "femmes", "mixte"]
}'::jsonb WHERE slug = 'salles-de-sport';

UPDATE categories SET attributes = '{
  "activity_type": ["danse", "karate", "judo", "boxe", "yoga"],
  "level": ["debutant", "intermediaire", "avance"],
  "audience": ["enfants", "adultes", "femmes_uniquement"]
}'::jsonb WHERE slug = 'cours-danse-arts-martiaux';

UPDATE categories SET attributes = '{
  "activity_type": ["randonnee", "escalade", "vtt", "kayak"],
  "difficulty": ["facile", "moyen", "difficile"],
  "duration": ["demi_journee", "journee", "weekend"]
}'::jsonb WHERE slug = 'activites-outdoor';

UPDATE categories SET attributes = '{
  "item_type": ["tente", "sac_couchage", "sac_a_dos", "chaussures", "accessoire"],
  "brand": ["quechua", "thenorthface", "columbia", "autre"],
  "condition": ["neuf", "bon_etat", "occasion"]
}'::jsonb WHERE slug = 'camping-randonnee';

UPDATE categories SET attributes = '{
  "type": ["strategie", "ambiance", "educatif", "cartes", "plateau"],
  "players_count": ["1_joueur", "2_joueurs", "multi_joueurs"],
  "age_group": ["enfants", "adultes", "famille"],
  "condition": ["neuf", "bon_etat", "occasion"]
}'::jsonb WHERE slug = 'jeux-de-societe';

-- 5. Enfance & Activités Familiales
UPDATE categories SET attributes = '{
  "activity_type": ["jouets", "eveil", "parascolaire", "ateliers", "anniversaire", "colonies"]
}'::jsonb WHERE slug = 'enfance-activites-familiales';

UPDATE categories SET attributes = '{
  "age_group": ["0-3", "3-6", "6-12", "12+"],
  "material": ["bois", "plastique", "tissu", "mixte"]
}'::jsonb WHERE slug = 'jouets-educatifs';
