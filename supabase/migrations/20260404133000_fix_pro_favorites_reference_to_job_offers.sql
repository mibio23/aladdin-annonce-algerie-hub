do $$
declare
  constraint_name text;
begin
  for constraint_name in
    select tc.constraint_name
    from information_schema.table_constraints tc
    join information_schema.key_column_usage kcu
      on tc.constraint_name = kcu.constraint_name
     and tc.table_schema = kcu.table_schema
    where tc.table_schema = 'public'
      and tc.table_name = 'pro_favorites'
      and tc.constraint_type = 'FOREIGN KEY'
      and kcu.column_name = 'pro_id'
  loop
    execute format('alter table public.pro_favorites drop constraint if exists %I', constraint_name);
  end loop;
end $$;

delete from public.pro_favorites pf
where not exists (
  select 1
  from public.professional_job_offers pjo
  where pjo.id = pf.pro_id
);

alter table public.pro_favorites
  add constraint pro_favorites_pro_id_fkey
  foreign key (pro_id)
  references public.professional_job_offers(id)
  on delete cascade;

create index if not exists idx_pro_favorites_user_pro
  on public.pro_favorites(user_id, pro_id);
