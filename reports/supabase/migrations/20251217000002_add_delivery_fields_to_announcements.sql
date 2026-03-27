ALTER TABLE public.announcements
  ADD COLUMN IF NOT EXISTS delivery_available BOOLEAN DEFAULT false,
  ADD COLUMN IF NOT EXISTS delivery_areas TEXT[],
  ADD COLUMN IF NOT EXISTS delivery_fees NUMERIC(12, 2),
  ADD COLUMN IF NOT EXISTS delivery_location_name TEXT,
  ADD COLUMN IF NOT EXISTS packaging_info TEXT,
  ADD COLUMN IF NOT EXISTS availability_date DATE;
