-- Vérification rapide du compteur de vues (RPC + lecture + restauration)
-- Usage:
-- 1) Remplacez la valeur de target_announcement ci-dessous par un UUID réel d'annonce
-- 2) Exécutez ce script dans Supabase SQL Editor
-- 3) Vérifiez les NOTICE affichées

-- Contrôles structurels: fonction, mode security definer, privilèges d'exécution
select
  p.proname as function_name,
  p.prosecdef as is_security_definer
from pg_proc p
join pg_namespace n on n.oid = p.pronamespace
where n.nspname = 'public'
  and p.proname = 'increment_view_count';

select
  has_function_privilege('anon', 'public.increment_view_count(uuid)', 'EXECUTE') as anon_can_execute,
  has_function_privilege('authenticated', 'public.increment_view_count(uuid)', 'EXECUTE') as authenticated_can_execute;

do $$
declare
  target_announcement uuid := '00000000-0000-0000-0000-000000000000';
  before_count integer;
  after_count integer;
begin
  if target_announcement = '00000000-0000-0000-0000-000000000000'::uuid then
    raise exception 'Remplacez target_announcement par un UUID réel avant exécution.';
  end if;

  select view_count
  into before_count
  from public.announcements
  where id = target_announcement;

  if before_count is null then
    raise exception 'Annonce introuvable: %', target_announcement;
  end if;

  perform public.increment_view_count(target_announcement);

  select view_count
  into after_count
  from public.announcements
  where id = target_announcement;

  raise notice 'Annonce: %', target_announcement;
  raise notice 'Avant RPC: %', before_count;
  raise notice 'Après RPC: %', after_count;
  raise notice 'Différence: %', (after_count - before_count);

  if after_count <> before_count + 1 then
    raise exception 'Échec test compteur: attendu %, obtenu %', before_count + 1, after_count;
  end if;

  -- Restauration pour garder les stats de prod inchangées
  update public.announcements
  set view_count = before_count
  where id = target_announcement;

  raise notice 'Restauration effectuée: view_count remis à %', before_count;
  raise notice 'Test OK.';
end
$$;
