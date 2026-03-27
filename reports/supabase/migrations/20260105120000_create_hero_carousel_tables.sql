-- Create tables for Hero Carousels (1 and 2)

create table if not exists public.hero_carousel_settings (
    id uuid not null default gen_random_uuid(),
    carousel_id integer not null, -- 1 or 2
    interval_ms integer not null default 3500,
    created_at timestamp with time zone not null default now(),
    updated_at timestamp with time zone not null default now(),
    constraint hero_carousel_settings_pkey primary key (id),
    constraint hero_carousel_settings_carousel_id_key unique (carousel_id)
);

create table if not exists public.hero_carousel_slides (
    id uuid not null default gen_random_uuid(),
    carousel_id integer not null, -- 1 or 2
    image_url text not null,
    title text,
    text_style text not null default 'normal', -- 'normal', 'gradient', 'neon'
    text_color text, -- hex or specific css value
    display_order integer not null default 0,
    is_active boolean not null default true,
    created_at timestamp with time zone not null default now(),
    updated_at timestamp with time zone not null default now(),
    constraint hero_carousel_slides_pkey primary key (id)
);

-- Enable RLS
alter table public.hero_carousel_settings enable row level security;
alter table public.hero_carousel_slides enable row level security;

-- Policies
create policy "Public hero_carousel_settings are viewable by everyone."
    on public.hero_carousel_settings for select
    using (true);

create policy "Public hero_carousel_slides are viewable by everyone."
    on public.hero_carousel_slides for select
    using (true);

create policy "Authenticated users can manage hero_carousel_settings"
    on public.hero_carousel_settings for all
    using (auth.role() = 'authenticated');

create policy "Authenticated users can manage hero_carousel_slides"
    on public.hero_carousel_slides for all
    using (auth.role() = 'authenticated');

-- Seed data for Carousel 1
insert into public.hero_carousel_settings (carousel_id, interval_ms) values (1, 3500) on conflict do nothing;
insert into public.hero_carousel_slides (carousel_id, image_url, title, display_order, text_style) values
(1, 'https://images.unsplash.com/photo-1581091226825-a6a2a5aee158', 'Intelligence Artificielle', 1, 'normal'),
(1, 'https://images.unsplash.com/photo-1485827404703-89b55fcc595e', 'Robots Avancés', 2, 'normal'),
(1, 'https://images.unsplash.com/photo-1526374965328-7f61d4dc18c5', 'Futur Numérique', 3, 'normal');

-- Seed data for Carousel 2
insert into public.hero_carousel_settings (carousel_id, interval_ms) values (2, 3500) on conflict do nothing;
insert into public.hero_carousel_slides (carousel_id, image_url, title, display_order, text_style) values
(2, 'https://images.unsplash.com/photo-1486312338219-ce68d2c6f44d', 'Développement Web', 1, 'normal'),
(2, 'https://images.unsplash.com/photo-1649972904349-6e44c42644a7', 'Solutions Mobiles', 2, 'normal'),
(2, 'https://images.unsplash.com/photo-1581090464777-f3220bbe1b8b', 'Innovation Tech', 3, 'normal');
