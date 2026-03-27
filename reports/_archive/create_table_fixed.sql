-- SQL avec colonne renommée pour éviter le conflit
CREATE TABLE IF NOT EXISTS categories (
    id TEXT NOT NULL,
    name TEXT NOT NULL,
    slug TEXT NOT NULL,
    parent_id TEXT,
    level INTEGER NOT NULL DEFAULT 0,
    lang TEXT NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Index pour améliorer les performances
CREATE INDEX IF NOT EXISTS idx_categories_lang ON categories(lang);
CREATE INDEX IF NOT EXISTS idx_categories_level ON categories(level);
CREATE INDEX IF NOT EXISTS idx_categories_parent ON categories(parent_id);
CREATE INDEX IF NOT EXISTS idx_categories_slug ON categories(slug);
CREATE INDEX IF NOT EXISTS idx_categories_id_lang ON categories(id, lang);