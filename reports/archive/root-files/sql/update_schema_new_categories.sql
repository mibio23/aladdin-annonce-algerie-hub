-- Migration pour ajouter les colonnes des nouvelles catégories (Animaux, Finance, Services, Échanges)

-- 1. Animaux & Accessoires
ALTER TABLE announcements ADD COLUMN IF NOT EXISTS animal_species TEXT;
ALTER TABLE announcements ADD COLUMN IF NOT EXISTS animal_breed TEXT;
ALTER TABLE announcements ADD COLUMN IF NOT EXISTS animal_age INTEGER;
ALTER TABLE announcements ADD COLUMN IF NOT EXISTS animal_age_unit TEXT DEFAULT 'months'; -- 'months' or 'years'
ALTER TABLE announcements ADD COLUMN IF NOT EXISTS animal_gender TEXT; -- 'male', 'female', 'pair'
ALTER TABLE announcements ADD COLUMN IF NOT EXISTS animal_vaccinated BOOLEAN DEFAULT false;
ALTER TABLE announcements ADD COLUMN IF NOT EXISTS animal_dewormed BOOLEAN DEFAULT false;
ALTER TABLE announcements ADD COLUMN IF NOT EXISTS animal_pedigree BOOLEAN DEFAULT false;
ALTER TABLE announcements ADD COLUMN IF NOT EXISTS animal_sterilized BOOLEAN DEFAULT false;

-- 2. Finance & Monnaie Fiduciaire
ALTER TABLE announcements ADD COLUMN IF NOT EXISTS finance_service_type TEXT;
ALTER TABLE announcements ADD COLUMN IF NOT EXISTS finance_currency TEXT;
ALTER TABLE announcements ADD COLUMN IF NOT EXISTS finance_amount NUMERIC;
ALTER TABLE announcements ADD COLUMN IF NOT EXISTS finance_exchange_rate NUMERIC;
ALTER TABLE announcements ADD COLUMN IF NOT EXISTS finance_payment_methods TEXT[]; -- Array of strings

-- 3. Services & Support
ALTER TABLE announcements ADD COLUMN IF NOT EXISTS service_type TEXT;
ALTER TABLE announcements ADD COLUMN IF NOT EXISTS service_availability TEXT;
ALTER TABLE announcements ADD COLUMN IF NOT EXISTS service_experience INTEGER; -- Years of experience
ALTER TABLE announcements ADD COLUMN IF NOT EXISTS service_price_model TEXT; -- 'fixed', 'hourly', 'quote'
ALTER TABLE announcements ADD COLUMN IF NOT EXISTS service_location_type TEXT; -- 'remote', 'on_site', 'both'

-- 4. Échanges & Partage
ALTER TABLE announcements ADD COLUMN IF NOT EXISTS exchange_type TEXT; -- 'definitive', 'temporary'
ALTER TABLE announcements ADD COLUMN IF NOT EXISTS exchange_offered TEXT;
ALTER TABLE announcements ADD COLUMN IF NOT EXISTS exchange_wanted TEXT;
ALTER TABLE announcements ADD COLUMN IF NOT EXISTS exchange_condition TEXT;
ALTER TABLE announcements ADD COLUMN IF NOT EXISTS exchange_value NUMERIC;

-- Ajout d'index pour optimiser les recherches sur ces nouveaux champs
CREATE INDEX IF NOT EXISTS idx_announcements_animal_species ON announcements(animal_species);
CREATE INDEX IF NOT EXISTS idx_announcements_finance_service_type ON announcements(finance_service_type);
CREATE INDEX IF NOT EXISTS idx_announcements_service_type ON announcements(service_type);
CREATE INDEX IF NOT EXISTS idx_announcements_exchange_type ON announcements(exchange_type);

-- Commentaire de confirmation
-- Les colonnes ont été ajoutées pour supporter les formulaires frontend des nouvelles catégories.
