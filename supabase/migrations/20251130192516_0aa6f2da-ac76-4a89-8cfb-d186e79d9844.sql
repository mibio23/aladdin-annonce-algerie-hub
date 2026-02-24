-- Remplir les id_uuid manquants pour toutes les catégories existantes
UPDATE categories 
SET id_uuid = gen_random_uuid()
WHERE id_uuid IS NULL;

-- Créer un trigger pour auto-générer les UUID lors de l'insertion de nouvelles catégories
CREATE OR REPLACE FUNCTION auto_generate_category_uuid()
RETURNS TRIGGER AS $$
BEGIN
  IF NEW.id_uuid IS NULL THEN
    NEW.id_uuid := gen_random_uuid();
  END IF;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Supprimer le trigger s'il existe déjà
DROP TRIGGER IF EXISTS trigger_auto_generate_category_uuid ON categories;

-- Créer le trigger
CREATE TRIGGER trigger_auto_generate_category_uuid
  BEFORE INSERT ON categories
  FOR EACH ROW
  EXECUTE FUNCTION auto_generate_category_uuid();