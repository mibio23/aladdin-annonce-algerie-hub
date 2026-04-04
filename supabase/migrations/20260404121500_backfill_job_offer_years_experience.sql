-- Backfill years_experience from experience_level for existing rows
update public.professional_job_offers
set years_experience = case experience_level
  when 'beginner' then 1
  when 'intermediate' then 3
  when 'confirmed' then 7
  when 'expert' then 12
  else years_experience
end
where years_experience is null;

-- Ensure booleans are not null
update public.professional_job_offers
set is_graduate = coalesce(is_graduate, false),
    home_service = coalesce(home_service, false);

