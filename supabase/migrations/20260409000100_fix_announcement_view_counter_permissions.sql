create or replace function public.increment_view_count(announcement_uuid uuid)
returns void
language plpgsql
security definer
set search_path = public
as $$
begin
  update public.announcements
  set view_count = coalesce(view_count, 0) + 1
  where id = announcement_uuid;
end;
$$;

grant execute on function public.increment_view_count(uuid) to anon, authenticated;
