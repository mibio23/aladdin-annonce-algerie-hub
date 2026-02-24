-- Add followers_count column to shops table
alter table public.shops add column if not exists followers_count integer default 0;

-- Function to update shop followers count automatically
create or replace function public.handle_shop_followers_count()
returns trigger as $$
begin
  if (TG_OP = 'INSERT') then
    update public.shops
    set followers_count = followers_count + 1
    where id = new.shop_id;
    return new;
  elsif (TG_OP = 'DELETE') then
    update public.shops
    set followers_count = followers_count - 1
    where id = old.shop_id;
    return old;
  end if;
  return null;
end;
$$ language plpgsql security definer;

-- Trigger to run the function on insert/delete in shop_favorites
drop trigger if exists on_shop_favorite_change on public.shop_favorites;
create trigger on_shop_favorite_change
  after insert or delete on public.shop_favorites
  for each row execute procedure public.handle_shop_followers_count();

-- Recalculate initial counts (in case there are existing favorites)
update public.shops s
set followers_count = (
  select count(*)
  from public.shop_favorites sf
  where sf.shop_id = s.id
);
