insert into storage.buckets (id, name, public)
values ('shop-content', 'shop-content', true)
on conflict (id) do nothing;

drop policy if exists "Shop content is publicly readable" on storage.objects;
drop policy if exists "Authenticated users can upload shop content" on storage.objects;
drop policy if exists "Users can update their own shop content" on storage.objects;
drop policy if exists "Users can delete their own shop content" on storage.objects;

create policy "Shop content is publicly readable"
on storage.objects
for select
using (bucket_id = 'shop-content');

create policy "Authenticated users can upload shop content"
on storage.objects
for insert
with check (
  bucket_id = 'shop-content'
  and auth.uid() is not null
  and auth.uid()::text = (storage.foldername(name))[1]
);

create policy "Users can update their own shop content"
on storage.objects
for update
using (
  bucket_id = 'shop-content'
  and auth.uid()::text = (storage.foldername(name))[1]
);

create policy "Users can delete their own shop content"
on storage.objects
for delete
using (
  bucket_id = 'shop-content'
  and auth.uid()::text = (storage.foldername(name))[1]
);
