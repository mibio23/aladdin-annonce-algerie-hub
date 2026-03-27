-- Create image storage bucket for announcements
INSERT INTO storage.buckets (id, name, public, allowed_mime_types) 
VALUES (
  'announcement-images', 
  'announcement-images', 
  true,
  ARRAY['image/jpeg', 'image/png', 'image/webp', 'image/gif']
) ON CONFLICT (id) DO NOTHING;

-- Create RLS policies for announcement images
DROP POLICY IF EXISTS "Public Access" ON storage.objects;
DROP POLICY IF EXISTS "Authenticated users can upload images" ON storage.objects;
DROP POLICY IF EXISTS "Users can update their own images" ON storage.objects;
DROP POLICY IF EXISTS "Users can delete their own images" ON storage.objects;

CREATE POLICY "Public Access"
ON storage.objects FOR SELECT
USING (bucket_id = 'announcement-images');

CREATE POLICY "Authenticated users can upload images"
ON storage.objects FOR INSERT
WITH CHECK (
  bucket_id = 'announcement-images' 
  AND auth.role() = 'authenticated'
);

CREATE POLICY "Users can update their own images"
ON storage.objects FOR UPDATE
USING (
  bucket_id = 'announcement-images' 
  AND auth.uid()::text = (storage.foldername(name))[1]
);

CREATE POLICY "Users can delete their own images"
ON storage.objects FOR DELETE
USING (
  bucket_id = 'announcement-images' 
  AND auth.uid()::text = (storage.foldername(name))[1]
);

-- Create profile avatars bucket
INSERT INTO storage.buckets (id, name, public, allowed_mime_types) 
VALUES (
  'avatars', 
  'avatars', 
  true,
  ARRAY['image/jpeg', 'image/png', 'image/webp']
) ON CONFLICT (id) DO NOTHING;

-- Create RLS policies for avatars
DROP POLICY IF EXISTS "Avatar images are publicly accessible" ON storage.objects;
DROP POLICY IF EXISTS "Users can upload their avatar" ON storage.objects;
DROP POLICY IF EXISTS "Users can update their avatar" ON storage.objects;
DROP POLICY IF EXISTS "Users can delete their avatar" ON storage.objects;

CREATE POLICY "Avatar images are publicly accessible"
ON storage.objects FOR SELECT
USING (bucket_id = 'avatars');

CREATE POLICY "Users can upload their avatar"
ON storage.objects FOR INSERT
WITH CHECK (
  bucket_id = 'avatars' 
  AND auth.uid()::text = (storage.foldername(name))[1]
);

CREATE POLICY "Users can update their avatar"
ON storage.objects FOR UPDATE
USING (
  bucket_id = 'avatars' 
  AND auth.uid()::text = (storage.foldername(name))[1]
);

CREATE POLICY "Users can delete their avatar"
ON storage.objects FOR DELETE
USING (
  bucket_id = 'avatars' 
  AND auth.uid()::text = (storage.foldername(name))[1]
);
