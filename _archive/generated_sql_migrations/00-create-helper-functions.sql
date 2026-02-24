-- Fonction pour insérer des traductions de catégories (Version compatible TEXT ID)
CREATE OR REPLACE FUNCTION insert_category_translations(
    p_category_id TEXT,
    p_language_code TEXT,
    p_name TEXT
) RETURNS VOID AS $$
BEGIN
    INSERT INTO category_translations (category_id, language_code, name)
    VALUES (p_category_id, p_language_code, p_name)
    ON CONFLICT (category_id, language_code) 
    DO UPDATE SET name = EXCLUDED.name;
END;
$$ LANGUAGE plpgsql;
