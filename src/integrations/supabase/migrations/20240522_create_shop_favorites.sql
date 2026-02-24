-- Create shop_favorites table
create table if not exists public.shop_favorites (
  id uuid default gen_random_uuid() primary key,
  user_id uuid references auth.users(id) on delete cascade not null,
  shop_id uuid references public.shops(id) on delete cascade not null,
  created_at timestamp with time zone default timezone('utc'::text, now()) not null,
  unique(user_id, shop_id)
);

-- Enable RLS
alter table public.shop_favorites enable row level security;

-- Policies for shop_favorites
create policy "Users can view their own shop favorites"
  on public.shop_favorites for select
  using (auth.uid() = user_id);

create policy "Users can insert their own shop favorites"
  on public.shop_favorites for insert
  with check (auth.uid() = user_id);

create policy "Users can delete their own shop favorites"
  on public.shop_favorites for delete
  using (auth.uid() = user_id);

-- Create pro_favorites table (anticipation)
create table if not exists public.pro_favorites (
  id uuid default gen_random_uuid() primary key,
  user_id uuid references auth.users(id) on delete cascade not null,
  pro_id uuid not null, -- Assuming pro_id will link to a pros table or profiles
  created_at timestamp with time zone default timezone('utc'::text, now()) not null,
  unique(user_id, pro_id)
);

-- Enable RLS
alter table public.pro_favorites enable row level security;

-- Policies for pro_favorites
create policy "Users can view their own pro favorites"
  on public.pro_favorites for select
  using (auth.uid() = user_id);

create policy "Users can insert their own pro favorites"
  on public.pro_favorites for insert
  with check (auth.uid() = user_id);

create policy "Users can delete their own pro favorites"
  on public.pro_favorites for delete
  using (auth.uid() = user_id);
