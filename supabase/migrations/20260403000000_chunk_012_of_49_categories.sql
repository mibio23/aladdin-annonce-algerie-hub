-- ============================================================
-- CHUNK 12/49 — 100 catégories
-- Total: 4836 catégories
-- Exécuter dans l'ordre dans Supabase SQL Editor
-- ============================================================

INSERT INTO public.categories
  (category_uuid, slug, name, parent_id, level, is_active, created_at, updated_at)
VALUES
  SELECT 'b7441585-7ea0-4ea9-988d-fd430a592da4'::uuid AS category_uuid, 'tapered' AS slug, 'Fuselé' AS name, NULL::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'b311c6ea-0ec0-4753-8b0b-8b5bc8ef0d76'::uuid AS category_uuid, 'jeans-skinny' AS slug, 'Skinny' AS name, NULL::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '6b24ed66-2acf-4dea-95d8-6fbc745d3e8e'::uuid AS category_uuid, 'bootcut' AS slug, 'Bootcut' AS name, NULL::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'c3a8c66d-95e0-42a0-bfa2-dc4f6be70926'::uuid AS category_uuid, 'pantalons' AS slug, 'Pantalons' AS name, 35328278-c679-420f-a468-deeead7f5ac9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '0d539432-78a2-4a9a-88af-3a97b3422835'::uuid AS category_uuid, 'chino' AS slug, 'Chino' AS name, c3a8c66d-95e0-42a0-bfa2-dc4f6be70926::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '6d32d4eb-13a5-404d-9f95-32b2120a8af0'::uuid AS category_uuid, 'costume' AS slug, 'Costume' AS name, c3a8c66d-95e0-42a0-bfa2-dc4f6be70926::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '0e85df9e-3d8d-4cfe-b290-d1fed2a09928'::uuid AS category_uuid, 'pantalons-cargo' AS slug, 'Cargo' AS name, c3a8c66d-95e0-42a0-bfa2-dc4f6be70926::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'c491592e-7e65-472f-9a83-eb3f8dc60288'::uuid AS category_uuid, 'pantalons-jogging' AS slug, 'Jogging' AS name, c3a8c66d-95e0-42a0-bfa2-dc4f6be70926::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '17a5959a-45ef-4b55-b933-c4be00544cee'::uuid AS category_uuid, 'urbain' AS slug, 'Urbain' AS name, c3a8c66d-95e0-42a0-bfa2-dc4f6be70926::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '6fbc079f-9a05-45a2-b700-6c3b1582628f'::uuid AS category_uuid, 'vetements-homme-shorts' AS slug, 'Shorts' AS name, 35328278-c679-420f-a468-deeead7f5ac9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'bab1df35-2c2d-474e-ae8f-af3b842c6d8a'::uuid AS category_uuid, 'shorts-jeans' AS slug, 'Jeans' AS name, NULL::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '0409172b-dff9-4b4d-a54d-07b05acdf5ec'::uuid AS category_uuid, 'shorts-sport' AS slug, 'Sport' AS name, NULL::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '8a244334-3284-4d91-9a98-d15ecccda340'::uuid AS category_uuid, 'shorts-cargo' AS slug, 'Cargo' AS name, NULL::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '9b25f642-a397-4fb8-b161-a4b1ca3e40e2'::uuid AS category_uuid, 'bermudas' AS slug, 'Bermudas' AS name, NULL::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '54a45338-9a02-4e9c-a2e2-87c2b64bbea4'::uuid AS category_uuid, 'survetements' AS slug, 'Survêtements' AS name, 35328278-c679-420f-a468-deeead7f5ac9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'e7312e1d-4c58-439d-b2db-54acc56783a1'::uuid AS category_uuid, 'vestes-legeres' AS slug, 'Vestes légères' AS name, 35328278-c679-420f-a468-deeead7f5ac9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'b8c682b0-efb0-43f3-b730-25dc301ebdda'::uuid AS category_uuid, 'jean' AS slug, 'Jean' AS name, e7312e1d-4c58-439d-b2db-54acc56783a1::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '4daee24e-a7f8-4cce-b859-143885c8e712'::uuid AS category_uuid, 'vestes-legeres-cuir' AS slug, 'Cuir' AS name, e7312e1d-4c58-439d-b2db-54acc56783a1::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '96a5dfc9-b196-4e8f-8edc-95af7541c814'::uuid AS category_uuid, 'vestes-legeres-bomber' AS slug, 'Bomber' AS name, e7312e1d-4c58-439d-b2db-54acc56783a1::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '7553f248-e662-4a96-958f-a0a01d2b8e16'::uuid AS category_uuid, 'harrington' AS slug, 'Harrington' AS name, e7312e1d-4c58-439d-b2db-54acc56783a1::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '291dcd00-3993-4f23-a3af-d90e2ba366f5'::uuid AS category_uuid, 'blousons' AS slug, 'Blousons' AS name, 35328278-c679-420f-a468-deeead7f5ac9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '5d6be46b-188c-4482-8231-0687ecef5ddc'::uuid AS category_uuid, 'teddy' AS slug, 'Teddy' AS name, 291dcd00-3993-4f23-a3af-d90e2ba366f5::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'a8802fdb-8fd9-46a9-a754-5e52c77158a0'::uuid AS category_uuid, 'pilote' AS slug, 'Pilote' AS name, 291dcd00-3993-4f23-a3af-d90e2ba366f5::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '3260c3f9-7e02-42d2-906b-9f7165d77141'::uuid AS category_uuid, 'manteaux' AS slug, 'Manteaux' AS name, 35328278-c679-420f-a468-deeead7f5ac9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'b9993e04-6dfd-4ee2-bca0-86ef2b7e5b27'::uuid AS category_uuid, 'manteaux-laine' AS slug, 'Laine' AS name, 3260c3f9-7e02-42d2-906b-9f7165d77141::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'caa87611-8129-4e9b-8a7e-89d0dda2dc1c'::uuid AS category_uuid, 'manteaux-trench' AS slug, 'Trench' AS name, 3260c3f9-7e02-42d2-906b-9f7165d77141::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '205d1d40-14ee-42cf-a407-c931d84c23f5'::uuid AS category_uuid, 'pardessus' AS slug, 'Pardessus' AS name, 3260c3f9-7e02-42d2-906b-9f7165d77141::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '621ec0b9-39c8-4a81-8687-dc74e3c19b34'::uuid AS category_uuid, 'manteaux-doudounes' AS slug, 'Doudounes' AS name, 3260c3f9-7e02-42d2-906b-9f7165d77141::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '023bc2dc-f9f7-47c1-96cc-c8bb82051563'::uuid AS category_uuid, 'parkas-coupe-vent' AS slug, 'Parkas & coupe‑vent' AS name, 35328278-c679-420f-a468-deeead7f5ac9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '97816b51-552d-40cf-8659-15ffb0b18e53'::uuid AS category_uuid, 'vestes-de-travail' AS slug, 'Vestes de travail' AS name, 35328278-c679-420f-a468-deeead7f5ac9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '9595e056-38d0-4724-900e-cbf7dc6b77a8'::uuid AS category_uuid, 'costumes-smokings' AS slug, 'Costumes & smokings' AS name, 35328278-c679-420f-a468-deeead7f5ac9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '7489fa73-6bea-4223-81c5-0eb86de63ec1'::uuid AS category_uuid, 'tenues-business' AS slug, 'Tenues business' AS name, 35328278-c679-420f-a468-deeead7f5ac9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'b317e22b-f133-4ced-88b4-e3f32a8f4afc'::uuid AS category_uuid, 'mode-urbaine' AS slug, 'Mode urbaine' AS name, 35328278-c679-420f-a468-deeead7f5ac9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '6e4e02c2-4cbb-4530-9e17-7e8e9331b387'::uuid AS category_uuid, 'sportwear' AS slug, 'Sportwear' AS name, 35328278-c679-420f-a468-deeead7f5ac9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '7a3ad010-4d3f-4c02-bf7f-625b8b8e9be5'::uuid AS category_uuid, 'tenues-outdoor' AS slug, 'Tenues outdoor' AS name, 35328278-c679-420f-a468-deeead7f5ac9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'e37ab981-f0b9-47b2-a25f-48568946d96d'::uuid AS category_uuid, 'vetements-traditionnels-homme' AS slug, 'Vêtements traditionnels' AS name, 35328278-c679-420f-a468-deeead7f5ac9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'fc715c32-aefe-4eda-adf5-185db86f2323'::uuid AS category_uuid, 'vetements-traditionnels-homme-gandoura' AS slug, 'Gandoura' AS name, e37ab981-f0b9-47b2-a25f-48568946d96d::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '4fe02dc3-c5a1-4422-a7ae-a9bc6a3d7e89'::uuid AS category_uuid, 'qamis' AS slug, 'Qamis' AS name, e37ab981-f0b9-47b2-a25f-48568946d96d::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '8e504180-df2c-4441-b77f-84059c65d317'::uuid AS category_uuid, 'marques-vetements-homme-nike' AS slug, 'Nike' AS name, a6278265-1305-44df-9521-434c19933e7d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'aea33cd1-e027-4817-ac07-cf719e250a4d'::uuid AS category_uuid, 'marques-vetements-homme-adidas' AS slug, 'Adidas' AS name, a6278265-1305-44df-9521-434c19933e7d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '6482ea6a-bc04-439a-b6fd-0f1dd26fa5b7'::uuid AS category_uuid, 'marques-vetements-homme-puma' AS slug, 'Puma' AS name, a6278265-1305-44df-9521-434c19933e7d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '389b378e-e9ad-491c-9d2c-24e7fad1a3b2'::uuid AS category_uuid, 'marques-vetements-homme-lacoste' AS slug, 'Lacoste' AS name, a6278265-1305-44df-9521-434c19933e7d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '5b86a853-ff8a-41f5-bc84-411b67368467'::uuid AS category_uuid, 'marques-vetements-homme-tommy-hilfiger' AS slug, 'Tommy Hilfiger' AS name, a6278265-1305-44df-9521-434c19933e7d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'f47f3990-6313-44b1-a98a-8d3b7f51fa4e'::uuid AS category_uuid, 'marques-vetements-homme-calvin-klein' AS slug, 'Calvin Klein' AS name, a6278265-1305-44df-9521-434c19933e7d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '7599f337-d490-45fc-93a4-08ef536082d2'::uuid AS category_uuid, 'levis' AS slug, 'Levi' AS name, a6278265-1305-44df-9521-434c19933e7d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '33c224af-00a3-40be-92e3-d0052857479b'::uuid AS category_uuid, 'marques-vetements-homme-zara' AS slug, 'Zara' AS name, a6278265-1305-44df-9521-434c19933e7d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '7ca7f2f6-225c-46ab-a524-c0c0dad3d1e1'::uuid AS category_uuid, 'marques-vetements-homme-hm' AS slug, 'H&M' AS name, a6278265-1305-44df-9521-434c19933e7d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '9816b05e-3ce6-4840-9943-d47c79de5720'::uuid AS category_uuid, 'marques-vetements-homme-bershka' AS slug, 'Bershka' AS name, a6278265-1305-44df-9521-434c19933e7d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'e331c1ea-05c1-41e3-8302-31525daadcff'::uuid AS category_uuid, 'marques-vetements-homme-pull-bear' AS slug, 'Pull&Bear' AS name, a6278265-1305-44df-9521-434c19933e7d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '31234e7a-8b60-4c6c-bce2-e7fe0f91204b'::uuid AS category_uuid, 'marques-vetements-homme-uniqlo' AS slug, 'Uniqlo' AS name, a6278265-1305-44df-9521-434c19933e7d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '94f9c9ec-d60a-4ae4-9a52-fd7bbf1111e9'::uuid AS category_uuid, 'marques-vetements-homme-guess' AS slug, 'Guess' AS name, a6278265-1305-44df-9521-434c19933e7d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '1dd40f76-bb4e-4e95-9796-c1cd5cfd22fd'::uuid AS category_uuid, 'marques-vetements-homme-mango' AS slug, 'Mango' AS name, a6278265-1305-44df-9521-434c19933e7d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'd9e93e60-1cda-475d-90ea-5c758b032274'::uuid AS category_uuid, 'accessoires-homme-ceintures' AS slug, 'Ceintures' AS name, 65b55628-bc66-4865-a707-43fbae7d083b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '7bb1a34d-f796-411b-b59f-be07e07fe7b5'::uuid AS category_uuid, 'cravates-noeuds-papillon' AS slug, 'Cravates & nœuds papillon' AS name, 65b55628-bc66-4865-a707-43fbae7d083b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'c3a7b332-3616-4322-8df1-e4e1ef7a880d'::uuid AS category_uuid, 'accessoires-homme-chapeaux-casquettes' AS slug, 'Chapeaux & casquettes' AS name, 65b55628-bc66-4865-a707-43fbae7d083b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '284316a6-a3d0-4550-8964-ef4cd9a65d3e'::uuid AS category_uuid, 'gants-echarpes' AS slug, 'Gants & écharpes' AS name, 65b55628-bc66-4865-a707-43fbae7d083b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'da23624f-dc28-4d41-b249-c1ba8135dc96'::uuid AS category_uuid, 'lunettes-soleil' AS slug, 'Lunettes de soleil' AS name, 65b55628-bc66-4865-a707-43fbae7d083b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '3d5c3b5b-a6a6-4601-a9cb-4f1205d639db'::uuid AS category_uuid, 'montres' AS slug, 'Montres' AS name, 65b55628-bc66-4865-a707-43fbae7d083b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '914f6abf-ff5b-49c5-bb34-0f7c243d2463'::uuid AS category_uuid, 'bijoux-homme' AS slug, 'Bijoux homme' AS name, 65b55628-bc66-4865-a707-43fbae7d083b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '089a349d-999c-48cd-a7c4-3916538d3119'::uuid AS category_uuid, 'portefeuilles' AS slug, 'Portefeuilles' AS name, 65b55628-bc66-4865-a707-43fbae7d083b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'd902343b-2d46-4971-ba3f-64e3128b18d3'::uuid AS category_uuid, 'porte-cartes' AS slug, 'Porte‑cartes' AS name, 65b55628-bc66-4865-a707-43fbae7d083b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '7291f6ef-4184-48e7-aa14-668de676fe0d'::uuid AS category_uuid, 'sacoches-besaces' AS slug, 'Sacoches & besaces' AS name, 65b55628-bc66-4865-a707-43fbae7d083b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '829948f1-a094-4171-b336-9c2c396f31ea'::uuid AS category_uuid, 'tops-t-shirts' AS slug, 'Tops & T‑shirts' AS name, a3772910-a498-4df5-a619-ea7e748de655::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '4a45b660-db68-43cd-bc1f-181b40b42df3'::uuid AS category_uuid, 'basique' AS slug, 'Basique' AS name, 829948f1-a094-4171-b336-9c2c396f31ea::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'dce8f9ce-8a9a-4dd3-ba85-a553be59663a'::uuid AS category_uuid, 'crop-top' AS slug, 'Crop top' AS name, 829948f1-a094-4171-b336-9c2c396f31ea::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '91c47393-f011-4694-8211-473e4b319562'::uuid AS category_uuid, 'tops-t-shirts-dentelle' AS slug, 'Dentelle' AS name, 829948f1-a094-4171-b336-9c2c396f31ea::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '09439b19-8990-4314-afbc-cf237bb56c19'::uuid AS category_uuid, 'chemisiers-blouses' AS slug, 'Chemisiers & blouses' AS name, a3772910-a498-4df5-a619-ea7e748de655::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'c8cb8726-adfa-4e1a-8310-bf5eccf53ac4'::uuid AS category_uuid, 'habilles' AS slug, 'Habillés' AS name, 09439b19-8990-4314-afbc-cf237bb56c19::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '89a7c508-d694-4a3a-961a-3ff56a3f6a67'::uuid AS category_uuid, 'satin' AS slug, 'Satin' AS name, 09439b19-8990-4314-afbc-cf237bb56c19::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'b54dc6d1-8c14-4156-b21c-c92f170f2ee4'::uuid AS category_uuid, 'chemisiers-blouses-oversize' AS slug, 'Oversize' AS name, 09439b19-8990-4314-afbc-cf237bb56c19::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '004282a1-2187-444e-8ba2-11ad2aee6d07'::uuid AS category_uuid, 'fleuris' AS slug, 'Fleuris' AS name, 09439b19-8990-4314-afbc-cf237bb56c19::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'e4c55dd2-14c5-45da-9878-a8de9ca16068'::uuid AS category_uuid, 'pulls-gilets-femme' AS slug, 'Pulls & gilets' AS name, a3772910-a498-4df5-a619-ea7e748de655::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '47ae8b5f-e0d0-4413-9a7f-dad87f8b0001'::uuid AS category_uuid, 'gros-tricot' AS slug, 'Gros tricot' AS name, e4c55dd2-14c5-45da-9878-a8de9ca16068::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '5d86910a-cf45-49a1-a0e0-73fc56fde927'::uuid AS category_uuid, 'pulls-gilets-femme-cardigan' AS slug, 'Cardigan' AS name, e4c55dd2-14c5-45da-9878-a8de9ca16068::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '6e0431ef-9393-4eb0-9955-6e03b31c86b5'::uuid AS category_uuid, 'pulls-gilets-femme-col-roule' AS slug, 'Col roulé' AS name, e4c55dd2-14c5-45da-9878-a8de9ca16068::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'e1fd08da-f980-4d03-93b0-964029701132'::uuid AS category_uuid, 'sweats-hoodies-femme' AS slug, 'Sweats & hoodies' AS name, a3772910-a498-4df5-a619-ea7e748de655::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '19115c9c-1052-4ad5-a0f9-0fb7cb420c39'::uuid AS category_uuid, 'unis' AS slug, 'Unis' AS name, e1fd08da-f980-4d03-93b0-964029701132::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '99db94b3-c8c4-44b0-99e7-b08887ab6355'::uuid AS category_uuid, 'sweats-hoodies-femme-imprimes' AS slug, 'Imprimés' AS name, e1fd08da-f980-4d03-93b0-964029701132::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'b301135f-9e32-4e49-b904-26454eebe888'::uuid AS category_uuid, 'sweats-hoodies-femme-oversize' AS slug, 'Oversize' AS name, e1fd08da-f980-4d03-93b0-964029701132::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'f4674c79-8609-4661-a31b-a5efc453ee85'::uuid AS category_uuid, 'debardeurs-bustiers' AS slug, 'Débardeurs & bustiers' AS name, a3772910-a498-4df5-a619-ea7e748de655::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '18aa9077-8944-48a9-b35a-fa972b670709'::uuid AS category_uuid, 'robes' AS slug, 'Robes' AS name, a3772910-a498-4df5-a619-ea7e748de655::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '09299bdb-126f-4ebd-b826-409cbd39ee7c'::uuid AS category_uuid, 'robes-courtes' AS slug, 'Courtes' AS name, 18aa9077-8944-48a9-b35a-fa972b670709::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '4fda29c2-5ebc-4eef-9160-05e4b4f39469'::uuid AS category_uuid, 'midi' AS slug, 'Midi' AS name, 18aa9077-8944-48a9-b35a-fa972b670709::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'b81ffabc-40fa-4f22-aea0-a6ca21490e7a'::uuid AS category_uuid, 'robes-longues' AS slug, 'Longues' AS name, 18aa9077-8944-48a9-b35a-fa972b670709::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '775bc294-3328-4078-b3ef-5c20fe2ab31f'::uuid AS category_uuid, 'soiree' AS slug, 'Soirée' AS name, 18aa9077-8944-48a9-b35a-fa972b670709::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '3625558d-6c61-4cd5-873d-c41d5f785399'::uuid AS category_uuid, 'cocktail' AS slug, 'Cocktail' AS name, 18aa9077-8944-48a9-b35a-fa972b670709::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'a6e42b0e-050d-49b5-84b2-0a86a2b190be'::uuid AS category_uuid, 'moulantes' AS slug, 'Moulantes' AS name, 18aa9077-8944-48a9-b35a-fa972b670709::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '8c36208d-011b-4391-b64a-5e8826a3064b'::uuid AS category_uuid, 'robes-evenements' AS slug, 'Robes événements' AS name, a3772910-a498-4df5-a619-ea7e748de655::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '2db1e581-88ad-4cb8-99f6-0a770f5f151e'::uuid AS category_uuid, 'mariage' AS slug, 'Mariage' AS name, 8c36208d-011b-4391-b64a-5e8826a3064b::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'ae1a9ab1-cf06-4107-bcd7-ac495cd5ff15'::uuid AS category_uuid, 'fetes' AS slug, 'Fêtes' AS name, 8c36208d-011b-4391-b64a-5e8826a3064b::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '2a6acc76-70fc-4c08-9dbf-1263d4d3c3b2'::uuid AS category_uuid, 'jupes' AS slug, 'Jupes' AS name, a3772910-a498-4df5-a619-ea7e748de655::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '5da3584d-5130-4a0f-bea1-66082d1316c6'::uuid AS category_uuid, 'jupes-courtes' AS slug, 'Courtes' AS name, 2a6acc76-70fc-4c08-9dbf-1263d4d3c3b2::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'ba1b49bd-1ae5-4d79-ba5e-8ff8bf3fb8d1'::uuid AS category_uuid, 'plissees' AS slug, 'Plissées' AS name, 2a6acc76-70fc-4c08-9dbf-1263d4d3c3b2::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '1b23b012-ca48-4043-a1d5-e328696d38c0'::uuid AS category_uuid, 'jupes-jeans' AS slug, 'Jeans' AS name, 2a6acc76-70fc-4c08-9dbf-1263d4d3c3b2::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '7398da4c-4a76-4301-b852-53674361db73'::uuid AS category_uuid, 'crayon' AS slug, 'Crayon' AS name, 2a6acc76-70fc-4c08-9dbf-1263d4d3c3b2::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '720b2106-1c40-4ff4-9477-b5627165ca36'::uuid AS category_uuid, 'jupes-longues' AS slug, 'Longues' AS name, 2a6acc76-70fc-4c08-9dbf-1263d4d3c3b2::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '4f03df64-b5d8-4b70-9fb1-750d426df80f'::uuid AS category_uuid, 'jeans-femme' AS slug, 'Jeans femme' AS name, a3772910-a498-4df5-a619-ea7e748de655::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'dff65a83-014a-4218-a002-ebf04d251789'::uuid AS category_uuid, 'jeans-femme-slim' AS slug, 'Slim' AS name, 4f03df64-b5d8-4b70-9fb1-750d426df80f::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'c3f0d83c-bfaf-4014-ac84-87ea8ab6f105'::uuid AS category_uuid, 'mom' AS slug, 'Mom' AS name, 4f03df64-b5d8-4b70-9fb1-750d426df80f::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '7d256f61-3f14-45bb-bf1b-0601be85b204'::uuid AS category_uuid, 'flare' AS slug, 'Flare' AS name, 4f03df64-b5d8-4b70-9fb1-750d426df80f::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),
  level = EXCLUDED.level,
  category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),
  updated_at = NOW();

-- Lot 12 terminé: 100 entrées
