-- Migration to add is_active and expires_at columns to professional_job_offers
ALTER TABLE public.professional_job_offers 
ADD COLUMN IF NOT EXISTS is_active BOOLEAN DEFAULT true,
ADD COLUMN IF NOT EXISTS expires_at TIMESTAMPTZ;
