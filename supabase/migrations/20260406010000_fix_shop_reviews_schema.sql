alter table public.shops
  add column if not exists rating numeric(3,2) default 0,
  add column if not exists review_count integer default 0;

alter table public.shop_reviews
  add column if not exists comment text,
  add column if not exists updated_at timestamp with time zone default timezone('utc'::text, now()) not null;

create unique index if not exists shop_reviews_shop_id_user_id_idx
  on public.shop_reviews (shop_id, user_id);

create or replace function public.handle_new_shop_rating()
returns trigger as $$
begin
  update public.shops
  set
    rating = coalesce((
      select avg(rating)::numeric(3,2)
      from public.shop_reviews
      where shop_id = coalesce(new.shop_id, old.shop_id)
    ), 0),
    review_count = coalesce((
      select count(*)
      from public.shop_reviews
      where shop_id = coalesce(new.shop_id, old.shop_id)
    ), 0)
  where id = coalesce(new.shop_id, old.shop_id);

  return coalesce(new, old);
end;
$$ language plpgsql security definer;

drop trigger if exists on_shop_review_change on public.shop_reviews;
create trigger on_shop_review_change
  after insert or update or delete on public.shop_reviews
  for each row execute procedure public.handle_new_shop_rating();

update public.shops s
set
  rating = coalesce(agg.rating, 0),
  review_count = coalesce(agg.review_count, 0)
from (
  select
    shop_id,
    avg(rating)::numeric(3,2) as rating,
    count(*)::integer as review_count
  from public.shop_reviews
  group by shop_id
) agg
where s.id = agg.shop_id;
