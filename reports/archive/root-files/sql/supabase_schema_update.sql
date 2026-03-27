-- Add columns for Animals & Accessories
ALTER TABLE announcements 
ADD COLUMN IF NOT EXISTS animal_species text,
ADD COLUMN IF NOT EXISTS animal_breed text,
ADD COLUMN IF NOT EXISTS animal_age integer,
ADD COLUMN IF NOT EXISTS animal_age_unit text DEFAULT 'months', -- 'months' or 'years'
ADD COLUMN IF NOT EXISTS animal_gender text, -- 'male', 'female', 'pair'
ADD COLUMN IF NOT EXISTS animal_vaccinated boolean DEFAULT false,
ADD COLUMN IF NOT EXISTS animal_dewormed boolean DEFAULT false,
ADD COLUMN IF NOT EXISTS animal_pedigree boolean DEFAULT false,
ADD COLUMN IF NOT EXISTS animal_sterilized boolean DEFAULT false;

-- Add columns for Finance & Fiat Money
ALTER TABLE announcements
ADD COLUMN IF NOT EXISTS finance_service_type text, -- 'exchange', 'investment', 'consulting'
ADD COLUMN IF NOT EXISTS finance_currency text,
ADD COLUMN IF NOT EXISTS finance_amount numeric,
ADD COLUMN IF NOT EXISTS finance_exchange_rate numeric,
ADD COLUMN IF NOT EXISTS finance_payment_methods text[]; -- Array of payment methods

-- Add columns for Services & Support
ALTER TABLE announcements
ADD COLUMN IF NOT EXISTS service_type text,
ADD COLUMN IF NOT EXISTS service_availability text, -- '24/7', 'weekends', 'business_hours'
ADD COLUMN IF NOT EXISTS service_experience integer, -- Years of experience
ADD COLUMN IF NOT EXISTS service_price_model text, -- 'fixed', 'hourly', 'quote'
ADD COLUMN IF NOT EXISTS service_location_type text; -- 'remote', 'onsite', 'hybrid'

-- Add columns for Exchange & Sharing
ALTER TABLE announcements
ADD COLUMN IF NOT EXISTS exchange_type text, -- 'product', 'service', 'skill'
ADD COLUMN IF NOT EXISTS exchange_offered text, -- What is offered
ADD COLUMN IF NOT EXISTS exchange_wanted text, -- What is wanted
ADD COLUMN IF NOT EXISTS exchange_condition text, -- Condition of item if applicable
ADD COLUMN IF NOT EXISTS exchange_value numeric; -- Estimated value

-- Create indexes for commonly filtered fields
CREATE INDEX IF NOT EXISTS idx_announcements_animal_species ON announcements(animal_species);
CREATE INDEX IF NOT EXISTS idx_announcements_service_type ON announcements(service_type);
CREATE INDEX IF NOT EXISTS idx_announcements_finance_service_type ON announcements(finance_service_type);
CREATE INDEX IF NOT EXISTS idx_announcements_exchange_type ON announcements(exchange_type);
