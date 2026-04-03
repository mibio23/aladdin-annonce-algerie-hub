-- ============================================================
-- CHUNK 46/49 — 100 catégories
-- Total: 4836 catégories
-- Exécuter dans l'ordre dans Supabase SQL Editor
-- ============================================================

INSERT INTO public.categories
  (category_uuid, slug, name, parent_id, level, is_active, created_at, updated_at)
VALUES
  SELECT 'dca63aec-0851-4e8f-98de-46c68ba34032'::uuid AS category_uuid, 'animaux-elevage' AS slug, 'Animaux d' AS name, ec946b75-3586-4973-9b22-8047a65eaf7c::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'b50e665a-9120-4d1a-b6fa-5c4cb2f59084'::uuid AS category_uuid, 'nourriture-soins' AS slug, 'Nourriture & Soins Animaliers' AS name, ec946b75-3586-4973-9b22-8047a65eaf7c::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'dc683caa-83a3-4fbf-92f9-24b89d332391'::uuid AS category_uuid, 'accessoires-equipements' AS slug, 'Accessoires & Équipements' AS name, ec946b75-3586-4973-9b22-8047a65eaf7c::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'a45b264b-c06c-470e-98e3-a9c50c4aeb8e'::uuid AS category_uuid, 'elevage-reproduction' AS slug, 'Élevage & Reproduction' AS name, ec946b75-3586-4973-9b22-8047a65eaf7c::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'd9ac88f7-9fd3-492d-bfb9-4691e6d929bb'::uuid AS category_uuid, 'services-animaliers' AS slug, 'Services Animaliers' AS name, ec946b75-3586-4973-9b22-8047a65eaf7c::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'd9fa9da5-9fc1-45d2-b853-a0ea04b801ef'::uuid AS category_uuid, 'produits-exterieurs' AS slug, 'Produits & Accessoires Extérieurs' AS name, ec946b75-3586-4973-9b22-8047a65eaf7c::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '6f8b43f1-77c2-4e1f-8e99-37e80717925f'::uuid AS category_uuid, 'chiens' AS slug, 'Chiens' AS name, 67edc970-f88a-4cc2-9ace-6d020d39665e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '562e5811-4d85-4f67-884b-7503714d1346'::uuid AS category_uuid, 'chiots-races' AS slug, 'chiots de race' AS name, 6f8b43f1-77c2-4e1f-8e99-37e80717925f::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '5678d6d7-1031-4f62-82cc-b96530ab1fd7'::uuid AS category_uuid, 'chiens-adultes' AS slug, 'chiens adultes' AS name, 6f8b43f1-77c2-4e1f-8e99-37e80717925f::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '55531d3b-1908-4787-860a-51fd5d3882e0'::uuid AS category_uuid, 'chiens-dresses' AS slug, 'chiens dressés' AS name, 6f8b43f1-77c2-4e1f-8e99-37e80717925f::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '528a9dee-c933-4a9e-8ff6-b2357fdbfdef'::uuid AS category_uuid, 'chats' AS slug, 'Chats' AS name, 67edc970-f88a-4cc2-9ace-6d020d39665e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '86bac480-7166-42fd-a8cc-44a6da6bd1f5'::uuid AS category_uuid, 'chatons-races' AS slug, 'chatons de race' AS name, 528a9dee-c933-4a9e-8ff6-b2357fdbfdef::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '8fa6ed3f-b5a3-49aa-a823-7ea969302b79'::uuid AS category_uuid, 'chats-adultes' AS slug, 'chats adultes' AS name, 528a9dee-c933-4a9e-8ff6-b2357fdbfdef::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'b0bcc60e-cb09-4417-9e98-2a3e013eaf5f'::uuid AS category_uuid, 'oiseaux' AS slug, 'oiseaux' AS name, 67edc970-f88a-4cc2-9ace-6d020d39665e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'e1cddc07-48f3-448e-a203-8c94b296abb5'::uuid AS category_uuid, 'oiseaux-rares' AS slug, 'oiseaux rares' AS name, b0bcc60e-cb09-4417-9e98-2a3e013eaf5f::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'e452a3b1-43df-4999-a235-ba156a436aaf'::uuid AS category_uuid, 'canaris' AS slug, 'canaris' AS name, b0bcc60e-cb09-4417-9e98-2a3e013eaf5f::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '192c9d1e-0ca0-4566-9ad0-267db3a34e96'::uuid AS category_uuid, 'poissons' AS slug, 'poissons' AS name, 67edc970-f88a-4cc2-9ace-6d020d39665e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'ad716cdd-9532-4fd7-8457-8a6892dfe051'::uuid AS category_uuid, 'poissons-aquarium' AS slug, 'poissons d' AS name, 192c9d1e-0ca0-4566-9ad0-267db3a34e96::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'c9a077bb-993e-4b04-a07e-3ae23f6ff457'::uuid AS category_uuid, 'rongeurs' AS slug, 'rongeurs' AS name, 67edc970-f88a-4cc2-9ace-6d020d39665e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '0cf4c289-fa77-4621-8568-618da6a8c7f2'::uuid AS category_uuid, 'lapins' AS slug, 'lapins' AS name, c9a077bb-993e-4b04-a07e-3ae23f6ff457::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '44583172-98ac-48dc-a38b-b148c9942ed4'::uuid AS category_uuid, 'hamsters' AS slug, 'hamsters' AS name, c9a077bb-993e-4b04-a07e-3ae23f6ff457::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '9795ad39-f085-4319-a578-dda3d62f86db'::uuid AS category_uuid, 'reptiles' AS slug, 'reptiles' AS name, 67edc970-f88a-4cc2-9ace-6d020d39665e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '4580b636-f87b-4e54-8c04-a63c98fb95d5'::uuid AS category_uuid, 'tortues' AS slug, 'tortues' AS name, 9795ad39-f085-4319-a578-dda3d62f86db::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '5b3ba461-c5f4-42d1-befc-94b0884437fe'::uuid AS category_uuid, 'ovins' AS slug, 'ovins' AS name, dca63aec-0851-4e8f-98de-46c68ba34032::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '0d92e34c-c3cf-462b-9541-d006a2645825'::uuid AS category_uuid, 'bovins' AS slug, 'bovins' AS name, dca63aec-0851-4e8f-98de-46c68ba34032::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '30599795-8613-4ea9-abfd-51beea26340b'::uuid AS category_uuid, 'caprins' AS slug, 'caprins' AS name, dca63aec-0851-4e8f-98de-46c68ba34032::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '57778eb6-9d30-41d8-8057-57f82a276d06'::uuid AS category_uuid, 'volailles' AS slug, 'volailles' AS name, dca63aec-0851-4e8f-98de-46c68ba34032::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '78278224-5a59-4731-b6f2-43cdb4ce6935'::uuid AS category_uuid, 'equides' AS slug, 'équidés' AS name, dca63aec-0851-4e8f-98de-46c68ba34032::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '8c21f29c-f734-414c-8d98-e31ff5c24f5b'::uuid AS category_uuid, 'alimentation-chiens-chats' AS slug, 'Alimentation Chiens & Chats' AS name, b50e665a-9120-4d1a-b6fa-5c4cb2f59084::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '96059487-347d-4c9a-bb0c-17a4c2fe807a'::uuid AS category_uuid, 'croquettes' AS slug, 'croquettes' AS name, 8c21f29c-f734-414c-8d98-e31ff5c24f5b::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'bca410a0-ee25-48c4-a8a5-4dc5dad752f4'::uuid AS category_uuid, 'patees' AS slug, 'pâtées' AS name, 8c21f29c-f734-414c-8d98-e31ff5c24f5b::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '6f42cc6a-58a1-4ca6-bc4e-ea07556953b6'::uuid AS category_uuid, 'friandises' AS slug, 'friandises' AS name, 8c21f29c-f734-414c-8d98-e31ff5c24f5b::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '607dced4-390d-4767-b519-e072a3e55391'::uuid AS category_uuid, 'alimentation-oiseaux' AS slug, 'Alimentation Oiseaux' AS name, b50e665a-9120-4d1a-b6fa-5c4cb2f59084::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '3b4c6c31-f01d-4b92-a3d6-cc0da8b6cbf0'::uuid AS category_uuid, 'melanges-oiseaux' AS slug, 'mélanges pour oiseaux' AS name, 607dced4-390d-4767-b519-e072a3e55391::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '24a60194-4b38-4d72-afc0-7b5eaa1a35cb'::uuid AS category_uuid, 'alimentation-poissons' AS slug, 'Alimentation Poissons' AS name, b50e665a-9120-4d1a-b6fa-5c4cb2f59084::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '914a8c64-1192-412e-acbf-0f32c3ae5498'::uuid AS category_uuid, 'aliments-poissons' AS slug, 'aliments pour poissons' AS name, 24a60194-4b38-4d72-afc0-7b5eaa1a35cb::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '4a81a623-3119-4c8c-b4a4-ffe06b44a3a1'::uuid AS category_uuid, 'soins-hygiene' AS slug, 'Soins & Hygiène' AS name, b50e665a-9120-4d1a-b6fa-5c4cb2f59084::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '10a58064-fd99-4ee9-bad8-6f60f0c59574'::uuid AS category_uuid, 'produits-hygiene' AS slug, 'produits d' AS name, 4a81a623-3119-4c8c-b4a4-ffe06b44a3a1::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'c7de5865-89bd-4bd4-9b2a-529bd2a878f1'::uuid AS category_uuid, 'soins-hygiene-shampoings' AS slug, 'shampoings' AS name, 4a81a623-3119-4c8c-b4a4-ffe06b44a3a1::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '23ff00b0-3dae-438b-afd6-4b0660636772'::uuid AS category_uuid, 'antiparasitaires' AS slug, 'antiparasitaires' AS name, 4a81a623-3119-4c8c-b4a4-ffe06b44a3a1::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '5cef7eab-352a-42a6-b407-39c4b7b23aaa'::uuid AS category_uuid, 'anti-tiques' AS slug, 'anti-tiques' AS name, 4a81a623-3119-4c8c-b4a4-ffe06b44a3a1::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '721edb4f-591a-41c2-8fe8-b20b8d60a46a'::uuid AS category_uuid, 'soins-hygiene-produits-veterinaires' AS slug, 'produits vétérinaires' AS name, 4a81a623-3119-4c8c-b4a4-ffe06b44a3a1::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'cf5cd489-9968-42d9-b41f-0511a92803f9'::uuid AS category_uuid, 'nourriture-soins-complements-alimentaires' AS slug, 'Compléments Alimentaires' AS name, b50e665a-9120-4d1a-b6fa-5c4cb2f59084::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '441d0e04-7091-4350-aaeb-a62a7dc6913c'::uuid AS category_uuid, 'complements-alimentaires-vitamines' AS slug, 'vitamines' AS name, NULL::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '2dc0c48e-4d4c-4111-809a-6141e051bed6'::uuid AS category_uuid, 'accessoires-promenade' AS slug, 'Accessoires de Promenade' AS name, dc683caa-83a3-4fbf-92f9-24b89d332391::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '05db376c-ca29-41e8-8d22-2a82ec3e86df'::uuid AS category_uuid, 'laisses' AS slug, 'laisses' AS name, 2dc0c48e-4d4c-4111-809a-6141e051bed6::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'd04f2dd8-2ac6-4ee2-ba66-cd3f5c8559ac'::uuid AS category_uuid, 'colliers' AS slug, 'colliers' AS name, 2dc0c48e-4d4c-4111-809a-6141e051bed6::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '56dde8fd-333a-485e-af75-bcad45e483b8'::uuid AS category_uuid, 'harnais' AS slug, 'harnais' AS name, 2dc0c48e-4d4c-4111-809a-6141e051bed6::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '5dcfc3a2-8180-45a9-ad2a-78e0da80e690'::uuid AS category_uuid, 'habitats' AS slug, 'Habitats' AS name, dc683caa-83a3-4fbf-92f9-24b89d332391::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '58ed94a0-6108-40bd-9b49-3c34b5eaebdc'::uuid AS category_uuid, 'cages' AS slug, 'cages' AS name, 5dcfc3a2-8180-45a9-ad2a-78e0da80e690::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'd70180ab-ed5e-4634-a48f-20ee0d03e1dc'::uuid AS category_uuid, 'volières' AS slug, 'volières' AS name, 5dcfc3a2-8180-45a9-ad2a-78e0da80e690::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '0523b2c7-e10e-48cd-8cc4-79107cd2d96b'::uuid AS category_uuid, 'niches' AS slug, 'niches' AS name, 5dcfc3a2-8180-45a9-ad2a-78e0da80e690::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '9af28f30-d1f8-42b4-97f9-4f840aeb0ac9'::uuid AS category_uuid, 'aquariums' AS slug, 'aquariums' AS name, 5dcfc3a2-8180-45a9-ad2a-78e0da80e690::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'bd94ac89-669c-44ca-ab37-e74cc167c8e6'::uuid AS category_uuid, 'habitats-terrariums' AS slug, 'terrariums' AS name, 5dcfc3a2-8180-45a9-ad2a-78e0da80e690::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '600788a7-426f-4d4a-910b-2eab694b8eae'::uuid AS category_uuid, 'confort-dodo' AS slug, 'Confort & Dodo' AS name, dc683caa-83a3-4fbf-92f9-24b89d332391::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'df486f3a-7c0b-4899-a4fc-c3b665339b67'::uuid AS category_uuid, 'confort-dodo-paniers' AS slug, 'paniers' AS name, 600788a7-426f-4d4a-910b-2eab694b8eae::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '162570c2-391b-4d16-933e-a4256ebf556f'::uuid AS category_uuid, 'confort-dodo-coussins' AS slug, 'coussins' AS name, 600788a7-426f-4d4a-910b-2eab694b8eae::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '7b0e9bdb-a9bf-42c8-af52-2a72daaf0beb'::uuid AS category_uuid, 'arbres-chat' AS slug, 'arbres à chat' AS name, 600788a7-426f-4d4a-910b-2eab694b8eae::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '18f5c723-421c-49f8-b64f-87d0cbada98f'::uuid AS category_uuid, 'alimentation-accessoires' AS slug, 'Alimentation & Accessoires' AS name, dc683caa-83a3-4fbf-92f9-24b89d332391::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '7870c815-eca1-46a9-985f-75ad7a70014a'::uuid AS category_uuid, 'gamelles' AS slug, 'gamelles' AS name, 18f5c723-421c-49f8-b64f-87d0cbada98f::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'fe04ed80-6699-4889-84b6-29ff28ae1760'::uuid AS category_uuid, 'distributeurs-auto' AS slug, 'distributeurs automatiques' AS name, 18f5c723-421c-49f8-b64f-87d0cbada98f::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'ba351699-07ef-4521-a549-23a1edb371d8'::uuid AS category_uuid, 'alimentation-accessoires-fontaines-eau' AS slug, 'fontaines d' AS name, 18f5c723-421c-49f8-b64f-87d0cbada98f::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'd1a5b0e5-11a3-4c63-ac51-cda886558f81'::uuid AS category_uuid, 'litières-hygiene' AS slug, 'Litières & Hygiène' AS name, dc683caa-83a3-4fbf-92f9-24b89d332391::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '42f6f5ab-b462-40a5-b97f-b689a5d0e4e2'::uuid AS category_uuid, 'litières' AS slug, 'litières' AS name, d1a5b0e5-11a3-4c63-ac51-cda886558f81::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '0a4c24bf-5169-4945-85e4-4c373831040b'::uuid AS category_uuid, 'bacs-litiere' AS slug, 'bacs à litière' AS name, d1a5b0e5-11a3-4c63-ac51-cda886558f81::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'b88a5ac4-2759-45a9-8801-e21f95e7812e'::uuid AS category_uuid, 'jouets-loisirs' AS slug, 'Jouets & Loisirs' AS name, dc683caa-83a3-4fbf-92f9-24b89d332391::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '10b12dcd-72ed-4603-888f-8348d73cae86'::uuid AS category_uuid, 'jouets' AS slug, 'jouets' AS name, b88a5ac4-2759-45a9-8801-e21f95e7812e::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'ed68a3e2-7400-4527-beb4-370e182a5bed'::uuid AS category_uuid, 'accessoires-equipements-transport' AS slug, 'Transport' AS name, dc683caa-83a3-4fbf-92f9-24b89d332391::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '2598187f-f59d-4092-860a-6b547eeca7a1'::uuid AS category_uuid, 'paniers-transport' AS slug, 'paniers de transport' AS name, NULL::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'b3fef20a-d5c0-49d1-9269-9fc2b749eece'::uuid AS category_uuid, 'elevage-reproduction-materiel-elevage' AS slug, 'Matériel d' AS name, a45b264b-c06c-470e-98e3-a9c50c4aeb8e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'd7d0f226-3c33-4ac0-9214-d224ed7be91a'::uuid AS category_uuid, 'incubateurs' AS slug, 'incubateurs' AS name, NULL::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '5bfb1a3d-78df-4e95-a699-21aeb5d2aaca'::uuid AS category_uuid, 'materiel-elevage-couveuses' AS slug, 'couveuses' AS name, NULL::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '09f70e0c-aeff-4f4f-af60-cff2f0771b86'::uuid AS category_uuid, 'cages-elevage' AS slug, 'cages d' AS name, NULL::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'f910f98c-5e77-4138-8c03-bbcb27911da3'::uuid AS category_uuid, 'accessoires-reproduction' AS slug, 'Accessoires de Reproduction' AS name, a45b264b-c06c-470e-98e3-a9c50c4aeb8e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '913a2e09-2bdb-491b-b160-136e7cd125c6'::uuid AS category_uuid, 'accessoires-accouplement' AS slug, 'accessoires d' AS name, f910f98c-5e77-4138-8c03-bbcb27911da3::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'e271643f-e348-4ccc-bcb5-36ca1cf1b941'::uuid AS category_uuid, 'reproducteurs-selectionnes' AS slug, 'Reproducteurs Sélectionnés' AS name, a45b264b-c06c-470e-98e3-a9c50c4aeb8e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '5d2c46dc-6acc-482b-ab4b-9c05ee39ed75'::uuid AS category_uuid, 'reproducteurs' AS slug, 'reproducteurs sélectionnés' AS name, e271643f-e348-4ccc-bcb5-36ca1cf1b941::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '5ba87145-179f-4ec7-9aa2-2c290c4fcf8a'::uuid AS category_uuid, 'jeunes-animaux' AS slug, 'Jeunes Animaux' AS name, a45b264b-c06c-470e-98e3-a9c50c4aeb8e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'ce212ac2-c2de-4ef6-b8f7-5b4ad6e3354d'::uuid AS category_uuid, 'poussins' AS slug, 'poussins' AS name, 5ba87145-179f-4ec7-9aa2-2c290c4fcf8a::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '1aaf86ba-e02f-4b41-839d-768ad711f519'::uuid AS category_uuid, 'agneaux' AS slug, 'agneaux' AS name, 5ba87145-179f-4ec7-9aa2-2c290c4fcf8a::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'cd94fe97-7a48-4e76-a5ca-971fb817fc73'::uuid AS category_uuid, 'chevreaux' AS slug, 'chevreaux' AS name, 5ba87145-179f-4ec7-9aa2-2c290c4fcf8a::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '7b6cd0ff-8c81-4835-95b0-68a989a260e6'::uuid AS category_uuid, 'services-elevage' AS slug, 'Services d' AS name, a45b264b-c06c-470e-98e3-a9c50c4aeb8e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '57b2c0e1-ca71-47ab-bd8d-951a2d6f369f'::uuid AS category_uuid, 'assistance-elevage' AS slug, 'services d' AS name, 7b6cd0ff-8c81-4835-95b0-68a989a260e6::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'cad8f222-35d3-4fdd-8936-55ca26188c21'::uuid AS category_uuid, 'conseils-specialises' AS slug, 'conseils spécialisés' AS name, 7b6cd0ff-8c81-4835-95b0-68a989a260e6::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '820b836f-5b98-416f-9bc1-4b19581e5ac6'::uuid AS category_uuid, 'genetique-selection' AS slug, 'génétique & sélection' AS name, 7b6cd0ff-8c81-4835-95b0-68a989a260e6::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '47c9ffbb-2c4e-412b-ad0f-2b48e22f062b'::uuid AS category_uuid, 'toilettage' AS slug, 'Toilettage' AS name, d9ac88f7-9fd3-492d-bfb9-4691e6d929bb::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '05b04dfb-4d12-4670-89e6-8029e57ad0a3'::uuid AS category_uuid, 'toilettage-chiens' AS slug, 'toilettage chiens' AS name, 47c9ffbb-2c4e-412b-ad0f-2b48e22f062b::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '30b2aa7c-5792-4e36-9cb4-c5a99c262c8b'::uuid AS category_uuid, 'toilettage-chats' AS slug, 'toilettage chats' AS name, 47c9ffbb-2c4e-412b-ad0f-2b48e22f062b::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '9561c109-ceef-4493-bcd5-f13bec146af8'::uuid AS category_uuid, 'dressage-education' AS slug, 'Dressage & Éducation' AS name, d9ac88f7-9fd3-492d-bfb9-4691e6d929bb::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '39a18259-37cc-4bdd-a9aa-b94d135b2936'::uuid AS category_uuid, 'dressage-canin' AS slug, 'dressage canin' AS name, 9561c109-ceef-4493-bcd5-f13bec146af8::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'da5bcb10-f25d-4304-96c4-e0325466e498'::uuid AS category_uuid, 'education-canine' AS slug, 'éducation canine' AS name, 9561c109-ceef-4493-bcd5-f13bec146af8::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'a2d71ba7-6bc1-4e61-a5c7-957b4952ff8c'::uuid AS category_uuid, 'pension-garde' AS slug, 'Pension & Garde' AS name, d9ac88f7-9fd3-492d-bfb9-4691e6d929bb::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'b28d2b74-d4b6-447d-93be-04569a42cac4'::uuid AS category_uuid, 'pension-animaux' AS slug, 'pension & garde d' AS name, a2d71ba7-6bc1-4e61-a5c7-957b4952ff8c::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'eb1220b2-6083-4523-84f6-305a6a254dad'::uuid AS category_uuid, 'promenades-soins' AS slug, 'Promenades & Soins' AS name, d9ac88f7-9fd3-492d-bfb9-4691e6d929bb::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '1a6cc89d-108c-43a3-b88d-790c4557ef7a'::uuid AS category_uuid, 'promenades' AS slug, 'promenades' AS name, eb1220b2-6083-4523-84f6-305a6a254dad::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '55254431-187b-45d2-8f14-498fca9f0ba1'::uuid AS category_uuid, 'soins-domicile' AS slug, 'soins à domicile' AS name, eb1220b2-6083-4523-84f6-305a6a254dad::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '1b8c39c2-09ff-4903-a8ba-3fa074dbb497'::uuid AS category_uuid, 'comportement-adoption' AS slug, 'Comportement & Adoption' AS name, d9ac88f7-9fd3-492d-bfb9-4691e6d929bb::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'c6318aa6-6fd3-4851-bd18-e13c1c634543'::uuid AS category_uuid, 'consultation-comportementaliste' AS slug, 'consultation comportementaliste' AS name, 1b8c39c2-09ff-4903-a8ba-3fa074dbb497::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'fb6a96fc-f27b-4723-9427-3d035e6c4c2f'::uuid AS category_uuid, 'adoption' AS slug, 'adoption' AS name, 1b8c39c2-09ff-4903-a8ba-3fa074dbb497::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'adceb422-c65c-47d4-a54b-171236d3721e'::uuid AS category_uuid, 'services-speciaux' AS slug, 'Services Spéciaux' AS name, d9ac88f7-9fd3-492d-bfb9-4691e6d929bb::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),
  level = EXCLUDED.level,
  category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),
  updated_at = NOW();

-- Lot 46 terminé: 100 entrées
