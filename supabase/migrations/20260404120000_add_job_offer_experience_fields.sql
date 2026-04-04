-- Add professional job offer experience and service fields
-- Safe to run multiple times thanks to IF NOT EXISTS

alter table if exists public.professional_job_offers
  add column if not exists is_graduate boolean default false,
  add column if not exists home_service boolean default false,
  add column if not exists years_experience integer,
  add column if not exists experience_level text;

-- Optionally constrain experience_level to allowed values
do $$
begin
  if not exists (
    select 1
    from information_schema.check_constraints
    where constraint_name = 'professional_job_offers_experience_level_chk'
  ) then
    alter table public.professional_job_offers
      add constraint professional_job_offers_experience_level_chk
      check (experience_level is null or experience_level in ('beginner','intermediate','confirmed','expert'));
  end if;
end $$;

comment on column public.professional_job_offers.is_graduate is 'Diplômé/Certifié';
comment on column public.professional_job_offers.home_service is 'Déplacement à domicile possible';
comment on column public.professional_job_offers.years_experience is 'Nombre d''années d''expérience';
comment on column public.professional_job_offers.experience_level is 'Niveau: beginner | intermediate | confirmed | expert';

