-- Create shop_reviews table for 5-star ratings
create table if not exists public.shop_reviews (
  id uuid default gen_random_uuid() primary key,
  shop_id uuid references public.shops(id) on delete cascade not null,
  user_id uuid references auth.users(id) on delete cascade not null,
  rating integer check (rating >= 1 and rating <= 5) not null,
  created_at timestamp with time zone default timezone('utc'::text, now()) not null,
  unique(shop_id, user_id) -- Ensure one vote per user per shop
);

-- Enable RLS
alter table public.shop_reviews enable row level security;

-- Policies
create policy "Users can read all reviews"
  on public.shop_reviews for select
  using (true);

create policy "Users can insert their own reviews"
  on public.shop_reviews for insert
  with check (auth.uid() = user_id);

create policy "Users can update their own reviews"
  on public.shop_reviews for update
  using (auth.uid() = user_id);

-- Function to update shop rating stats automatically
create or replace function public.handle_new_shop_rating()
returns trigger as $$
begin
  update public.shops
  set 
    rating = (
      select avg(rating)::numeric(2,1) 
      from public.shop_reviews 
      where shop_id = coalesce(new.shop_id, old.shop_id)
    ),
    review_count = (
      select count(*) 
      from public.shop_reviews 
      where shop_id = coalesce(new.shop_id, old.shop_id)
    )
  where id = coalesce(new.shop_id, old.shop_id);
  return new;
end;
$$ language plpgsql security definer;

-- Trigger to run the function on insert/update/delete
create trigger on_shop_review_change
  after insert or update or delete on public.shop_reviews
  for each row execute procedure public.handle_new_shop_rating();
