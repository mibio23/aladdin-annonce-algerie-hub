-- ============================================================
-- CHUNK 27/49 — 100 catégories
-- Total: 4836 catégories
-- Exécuter dans l'ordre dans Supabase SQL Editor
-- ============================================================

INSERT INTO public.categories
  (category_uuid, slug, name, parent_id, level, is_active, created_at, updated_at)
VALUES
  SELECT '4fa8a6e4-bc52-495f-872d-1ddf403a8303'::uuid AS category_uuid, 'cartes-abonnements' AS slug, 'Cartes & abonnements' AS name, 665a3873-3612-44a7-b016-962c4f55f06c::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '9c9489ec-9c36-4376-9035-80e95ef56ef9'::uuid AS category_uuid, 'streaming-capture-video' AS slug, 'Streaming & capture vidéo' AS name, 665a3873-3612-44a7-b016-962c4f55f06c::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'b5919e72-662d-46f1-be19-b88995804712'::uuid AS category_uuid, 'merchandising-gaming' AS slug, 'Merchandising gaming' AS name, 665a3873-3612-44a7-b016-962c4f55f06c::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'e2880343-b4b2-42e6-9d67-220e2fd9949e'::uuid AS category_uuid, 'playstation' AS slug, 'PlayStation' AS name, f4158431-0af9-40cd-ba6d-4dd32fd95809::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '76bd1e17-6381-4c75-bb5b-dd4f26dbcd4f'::uuid AS category_uuid, 'xbox' AS slug, 'Xbox' AS name, f4158431-0af9-40cd-ba6d-4dd32fd95809::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'b9f85282-01d8-4161-8581-81965c2c70da'::uuid AS category_uuid, 'nintendo-switch' AS slug, 'Nintendo Switch' AS name, f4158431-0af9-40cd-ba6d-4dd32fd95809::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'acdb080e-b6a5-45c3-a1b0-0d8d2f852943'::uuid AS category_uuid, 'atari' AS slug, 'Atari' AS name, f4158431-0af9-40cd-ba6d-4dd32fd95809::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '3383dea9-a9f2-4f04-a6aa-7120669a6afe'::uuid AS category_uuid, 'sega' AS slug, 'Sega' AS name, f4158431-0af9-40cd-ba6d-4dd32fd95809::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'd4e7e596-5d4c-4407-8fe5-75e2bcc40471'::uuid AS category_uuid, 'autres-consoles-retro' AS slug, 'Autres consoles rétro' AS name, f4158431-0af9-40cd-ba6d-4dd32fd95809::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '08eb0141-7d80-4a92-9c44-df8599e5d8d2'::uuid AS category_uuid, 'accessoires-consoles-de-salon' AS slug, 'Accessoires consoles de salon' AS name, f4158431-0af9-40cd-ba6d-4dd32fd95809::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'd74026d8-afcb-4fb2-9079-ad35657ebfac'::uuid AS category_uuid, 'manettes' AS slug, 'Manettes' AS name, 08eb0141-7d80-4a92-9c44-df8599e5d8d2::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '922a24b4-3606-44c0-aceb-b113a4af13af'::uuid AS category_uuid, 'accessoires-consoles-de-salon-cables-hdmi' AS slug, 'Câbles HDMI' AS name, 08eb0141-7d80-4a92-9c44-df8599e5d8d2::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '14f3d43c-effd-4ac2-bfea-63b994d8d5aa'::uuid AS category_uuid, 'alimentations' AS slug, 'Alimentations' AS name, 08eb0141-7d80-4a92-9c44-df8599e5d8d2::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '7a9164ca-d59a-4afc-9abf-1c4a0aee51e2'::uuid AS category_uuid, 'stations-de-charge' AS slug, 'Stations de charge' AS name, 08eb0141-7d80-4a92-9c44-df8599e5d8d2::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '6996d052-1e1d-485e-bc30-734dce933e53'::uuid AS category_uuid, 'telecommandes-multimedia' AS slug, 'Télécommandes multimédia' AS name, 08eb0141-7d80-4a92-9c44-df8599e5d8d2::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'df062636-8380-4ba3-8c32-70ea6ecb4953'::uuid AS category_uuid, 'nintendo-switch-lite' AS slug, 'Nintendo Switch Lite' AS name, c2140154-2990-4698-8c20-b8297e02d5ce::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'c873724f-16b5-472f-957c-a0899288d091'::uuid AS category_uuid, 'nintendo-3ds-2ds' AS slug, 'Nintendo 3DS/2DS' AS name, c2140154-2990-4698-8c20-b8297e02d5ce::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '8c7ecff0-e451-4e91-8188-0c66034416b0'::uuid AS category_uuid, 'psp' AS slug, 'PSP' AS name, c2140154-2990-4698-8c20-b8297e02d5ce::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'a2b8d131-acb2-4efe-9c01-ad0d56a01dce'::uuid AS category_uuid, 'ps-vita' AS slug, 'PS Vita' AS name, c2140154-2990-4698-8c20-b8297e02d5ce::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '87303db6-6f9a-426f-bb06-487c0ebcdb4b'::uuid AS category_uuid, 'consoles-retro-portables' AS slug, 'Consoles rétro portables' AS name, c2140154-2990-4698-8c20-b8297e02d5ce::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '9b495e10-dd80-4a7d-a71b-d301ad82f04e'::uuid AS category_uuid, 'consoles-android' AS slug, 'Consoles Android' AS name, c2140154-2990-4698-8c20-b8297e02d5ce::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '6c83477a-9dc7-4951-b338-3f15125f4d0d'::uuid AS category_uuid, 'accessoires-consoles-portables' AS slug, 'Accessoires consoles portables' AS name, c2140154-2990-4698-8c20-b8297e02d5ce::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '25097aa3-25aa-4fbb-86b0-d59b9a3832f4'::uuid AS category_uuid, 'accessoires-consoles-portables-housses' AS slug, 'Housses' AS name, 6c83477a-9dc7-4951-b338-3f15125f4d0d::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'a412e18b-ffc6-4889-9fb1-9f278fa7ab0d'::uuid AS category_uuid, 'accessoires-consoles-portables-batteries' AS slug, 'Batteries' AS name, 6c83477a-9dc7-4951-b338-3f15125f4d0d::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'ac79422f-85ca-4d92-acd5-691c85ba2112'::uuid AS category_uuid, 'accessoires-consoles-portables-protections-ecran' AS slug, 'Protections d’écran' AS name, 6c83477a-9dc7-4951-b338-3f15125f4d0d::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '2ec3c845-482d-4d99-a16f-c461768fa10b'::uuid AS category_uuid, 'ps5' AS slug, 'PS5' AS name, c897c786-a012-4be1-a5ac-a40958e19c10::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'c8d0a7e9-3207-4123-a253-c241ad72d275'::uuid AS category_uuid, 'ps4' AS slug, 'PS4' AS name, c897c786-a012-4be1-a5ac-a40958e19c10::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'b892f164-7e4c-4612-b367-3deb1b88c80a'::uuid AS category_uuid, 'ps3' AS slug, 'PS3' AS name, c897c786-a012-4be1-a5ac-a40958e19c10::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '40c8edb6-8f82-42fa-9b5a-1b8246984149'::uuid AS category_uuid, 'ps2' AS slug, 'PS2' AS name, c897c786-a012-4be1-a5ac-a40958e19c10::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'f6aa9d8e-aa48-4670-a1e8-c63936c48241'::uuid AS category_uuid, 'ps1' AS slug, 'PS1' AS name, c897c786-a012-4be1-a5ac-a40958e19c10::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'ef95c848-b404-4835-9bfe-68062bc91b5e'::uuid AS category_uuid, 'editions-limitees' AS slug, 'Éditions limitées' AS name, c897c786-a012-4be1-a5ac-a40958e19c10::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '02d76243-f3e8-41eb-850f-ca9c40ec472e'::uuid AS category_uuid, 'jeux-neufs' AS slug, 'Jeux neufs' AS name, c897c786-a012-4be1-a5ac-a40958e19c10::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'ebfe8fba-c3a5-4ed8-8a0b-63336d040f59'::uuid AS category_uuid, 'jeux-occasion' AS slug, 'Jeux d’occasion' AS name, c897c786-a012-4be1-a5ac-a40958e19c10::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'e7d1848d-7a23-484f-8b01-5ea75793aaab'::uuid AS category_uuid, 'xbox-series-xs' AS slug, 'Xbox Series X|S' AS name, 72228892-6790-4233-989f-99daaeb4cac5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '1030192d-c5eb-4e80-bc1e-874b19b4613b'::uuid AS category_uuid, 'xbox-one' AS slug, 'Xbox One' AS name, 72228892-6790-4233-989f-99daaeb4cac5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'cb89e072-f98d-4ace-a8b8-d8a044d55302'::uuid AS category_uuid, 'xbox-360' AS slug, 'Xbox 360' AS name, 72228892-6790-4233-989f-99daaeb4cac5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '457aa5a4-a0a4-4b6f-bdd1-af516df653fe'::uuid AS category_uuid, 'editions-collector' AS slug, 'Éditions collector' AS name, 72228892-6790-4233-989f-99daaeb4cac5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '743d73e0-57db-4fe6-84db-f1fd9abdbb21'::uuid AS category_uuid, 'jeux-neufs-xbox' AS slug, 'Jeux neufs' AS name, 72228892-6790-4233-989f-99daaeb4cac5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '6ccd265c-9780-4378-8dff-be66ecd154d8'::uuid AS category_uuid, 'jeux-occasion-xbox' AS slug, 'Jeux d’occasion' AS name, 72228892-6790-4233-989f-99daaeb4cac5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '9421de91-c962-4bbb-bd3e-5da71927696f'::uuid AS category_uuid, 'switch-jeux' AS slug, 'Switch' AS name, a81c858d-757e-455a-83ed-78137a6cc548::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '7ddee3a3-5b38-4c7f-bf72-0dde62963fa9'::uuid AS category_uuid, 'wii-u' AS slug, 'Wii U' AS name, a81c858d-757e-455a-83ed-78137a6cc548::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '4ed57c4e-420e-4b3b-8451-b861c90a06e0'::uuid AS category_uuid, 'wii' AS slug, 'Wii' AS name, a81c858d-757e-455a-83ed-78137a6cc548::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '11d6d41f-9fbc-4523-93c1-c2c8fc1a6bb9'::uuid AS category_uuid, 'gamecube' AS slug, 'GameCube' AS name, a81c858d-757e-455a-83ed-78137a6cc548::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'd325ae11-5bf5-405f-a726-971a789d3e81'::uuid AS category_uuid, '3ds-2ds-jeux' AS slug, '3DS/2DS' AS name, a81c858d-757e-455a-83ed-78137a6cc548::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '1e94ce6c-d290-4854-8036-6101623d8e5e'::uuid AS category_uuid, 'jeux-retro-nintendo' AS slug, 'Jeux rétro Nintendo' AS name, a81c858d-757e-455a-83ed-78137a6cc548::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'a7ea2d36-90ec-4861-8a7d-03251a20c8df'::uuid AS category_uuid, 'jeux-physiques' AS slug, 'Jeux physiques' AS name, e79a3f5a-1c6f-42b8-b147-73d6ea204a40::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'e52ee547-ae0c-45cc-939c-bfb724e8d5fb'::uuid AS category_uuid, 'jeux-steam' AS slug, 'Jeux Steam' AS name, e79a3f5a-1c6f-42b8-b147-73d6ea204a40::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'ac12f037-32e8-4e6a-8f7a-bf1d7c3e571e'::uuid AS category_uuid, 'jeux-epic-games' AS slug, 'Jeux Epic Games' AS name, e79a3f5a-1c6f-42b8-b147-73d6ea204a40::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'b8f27df1-acde-48bf-ae2a-274a188dd462'::uuid AS category_uuid, 'jeux-blizzard' AS slug, 'Jeux Blizzard' AS name, e79a3f5a-1c6f-42b8-b147-73d6ea204a40::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '19bfd3d8-fbf0-457e-a351-90a15e2d20c2'::uuid AS category_uuid, 'comptes-gaming' AS slug, 'Comptes gaming' AS name, e79a3f5a-1c6f-42b8-b147-73d6ea204a40::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'd82e9dfd-0bf2-48ed-a437-7fb0a2d4c1bb'::uuid AS category_uuid, 'cartouches-nes' AS slug, 'Cartouches NES' AS name, f58ed181-f2ca-4e26-94b8-0e24b6abb75f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '18bbfb89-144d-4303-951a-d609bb26155c'::uuid AS category_uuid, 'cartouches-snes' AS slug, 'Cartouches SNES' AS name, f58ed181-f2ca-4e26-94b8-0e24b6abb75f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '1d7cc302-d6ac-4a6d-bed8-339f7b7f3337'::uuid AS category_uuid, 'sega-retro' AS slug, 'Sega' AS name, f58ed181-f2ca-4e26-94b8-0e24b6abb75f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '8becbc66-ad06-4420-9dc9-a620240124f8'::uuid AS category_uuid, 'gameboy' AS slug, 'GameBoy' AS name, f58ed181-f2ca-4e26-94b8-0e24b6abb75f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'ef587dfc-c866-4311-8dba-48253ea752a3'::uuid AS category_uuid, 'atari-retro' AS slug, 'Atari' AS name, f58ed181-f2ca-4e26-94b8-0e24b6abb75f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'cd17e93a-641c-43d9-bc73-c03130a69b0e'::uuid AS category_uuid, 'neo-geo' AS slug, 'Neo‑Geo' AS name, f58ed181-f2ca-4e26-94b8-0e24b6abb75f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '6c45cd6d-7415-4044-bc39-9d469f7f0bfc'::uuid AS category_uuid, 'editions-rares' AS slug, 'Éditions rares' AS name, f58ed181-f2ca-4e26-94b8-0e24b6abb75f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'a9b756e0-2ccd-47fe-b626-58c8ba734402'::uuid AS category_uuid, 'objets-collectors' AS slug, 'Objets collectors' AS name, f58ed181-f2ca-4e26-94b8-0e24b6abb75f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '38ad5c11-495c-4e09-9647-ad4361c2b116'::uuid AS category_uuid, 'figurines-collector' AS slug, 'Figurines' AS name, a9b756e0-2ccd-47fe-b626-58c8ba734402::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '8e4025c4-3871-46b5-9e6e-b505b9ea44c4'::uuid AS category_uuid, 'ost' AS slug, 'OST' AS name, a9b756e0-2ccd-47fe-b626-58c8ba734402::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '3deea412-4f67-4f22-b463-0c1b89bce0ee'::uuid AS category_uuid, 'artbooks' AS slug, 'Artbooks' AS name, a9b756e0-2ccd-47fe-b626-58c8ba734402::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'dd9a989b-e4a6-429b-857c-7406e1399a01'::uuid AS category_uuid, 'manettes-gaming' AS slug, 'Manettes' AS name, 6d10bfdc-a581-4e4a-b1da-cf015a9fd566::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '4bcfcb21-21b0-43fb-93ff-69b074125c59'::uuid AS category_uuid, 'accessoires-gaming-casques-gaming' AS slug, 'Casques gaming' AS name, 6d10bfdc-a581-4e4a-b1da-cf015a9fd566::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'f5e6af4c-6d46-4a47-8be1-14a3a35c96d6'::uuid AS category_uuid, 'tapis-rgb' AS slug, 'Tapis RGB' AS name, 6d10bfdc-a581-4e4a-b1da-cf015a9fd566::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'f6d6a789-5bb7-4521-9c32-73c6c0c8d348'::uuid AS category_uuid, 'accessoires-gaming-claviers-gaming' AS slug, 'Claviers gaming' AS name, 6d10bfdc-a581-4e4a-b1da-cf015a9fd566::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'e4b04fea-2808-4a3b-820f-b32e62c3371d'::uuid AS category_uuid, 'accessoires-gaming-souris-gaming' AS slug, 'Souris gaming' AS name, 6d10bfdc-a581-4e4a-b1da-cf015a9fd566::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '12541c3c-d57d-47d8-ad2b-51b8e0e2dbc3'::uuid AS category_uuid, 'volants-pedaliers' AS slug, 'Volants & pédaliers' AS name, 6d10bfdc-a581-4e4a-b1da-cf015a9fd566::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '2dabb9af-ad94-4357-8f3b-d7a04e0f31dc'::uuid AS category_uuid, 'joysticks' AS slug, 'Joysticks' AS name, 6d10bfdc-a581-4e4a-b1da-cf015a9fd566::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '1971ae4f-94ac-47f4-a107-90c7ec4e1c5e'::uuid AS category_uuid, 'flight-sticks' AS slug, 'Flight sticks' AS name, 6d10bfdc-a581-4e4a-b1da-cf015a9fd566::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'ff758903-e564-4738-986e-ee233860606c'::uuid AS category_uuid, 'ps-vr' AS slug, 'PS VR' AS name, 964de3a7-ec71-48fd-ace6-5d19eaba81eb::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '0a9c5fea-0b9c-499d-a3e1-11fbfabf3240'::uuid AS category_uuid, 'oculus-quest' AS slug, 'Oculus Quest' AS name, 964de3a7-ec71-48fd-ace6-5d19eaba81eb::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '15d24600-c2ba-40bb-8a63-d1b5f48c69f6'::uuid AS category_uuid, 'htc-vive' AS slug, 'HTC Vive' AS name, 964de3a7-ec71-48fd-ace6-5d19eaba81eb::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'b7198414-be74-4ffb-b010-79b4cbb88c4d'::uuid AS category_uuid, 'accessoires-vr' AS slug, 'Accessoires VR' AS name, 964de3a7-ec71-48fd-ace6-5d19eaba81eb::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'bf6352a7-af41-46da-83a4-5ebf16a0a973'::uuid AS category_uuid, 'accessoires-vr-capteurs' AS slug, 'Capteurs' AS name, b7198414-be74-4ffb-b010-79b4cbb88c4d::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '3b5962cc-89ea-43e8-8d7b-8be44fa3ac12'::uuid AS category_uuid, 'accessoires-vr-sangles' AS slug, 'Sangles' AS name, b7198414-be74-4ffb-b010-79b4cbb88c4d::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '26a2eadd-b060-42f9-89e3-0dfe100308b9'::uuid AS category_uuid, 'accessoires-vr-adaptateurs' AS slug, 'Adaptateurs' AS name, b7198414-be74-4ffb-b010-79b4cbb88c4d::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'ea83f2a6-8ede-4290-8b7d-50f2f518afb3'::uuid AS category_uuid, 'ecrans-gaming' AS slug, 'Écrans gaming' AS name, 8cc9061e-17db-40c1-bd36-b1effbbd60bd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '1a7d5e3d-3026-4f42-9e10-f2c1ae129650'::uuid AS category_uuid, 'chaises-gaming' AS slug, 'Chaises gaming' AS name, 8cc9061e-17db-40c1-bd36-b1effbbd60bd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '1f18b8ab-fc5f-4574-b006-2726dae15ee3'::uuid AS category_uuid, 'bureaux-gamer' AS slug, 'Bureaux gamer' AS name, 8cc9061e-17db-40c1-bd36-b1effbbd60bd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'f968df84-8200-4a0b-a020-f7a50128222f'::uuid AS category_uuid, 'composants-e-sport-cartes-graphiques' AS slug, 'Cartes graphiques' AS name, 8cc9061e-17db-40c1-bd36-b1effbbd60bd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'aa25c856-63de-4f7e-8600-e2fbab8eb2a8'::uuid AS category_uuid, 'ram' AS slug, 'RAM' AS name, 8cc9061e-17db-40c1-bd36-b1effbbd60bd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '78734857-0060-45e1-b0ec-2161280f5aba'::uuid AS category_uuid, 'composants-e-sport-ssd' AS slug, 'SSD' AS name, 8cc9061e-17db-40c1-bd36-b1effbbd60bd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '06e03c20-5228-4736-8498-7a699a3db882'::uuid AS category_uuid, 'refroidissement' AS slug, 'Refroidissement' AS name, 8cc9061e-17db-40c1-bd36-b1effbbd60bd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'b49ecd90-b593-4170-abe8-33bdd6a55a55'::uuid AS category_uuid, 'ps-plus' AS slug, 'PS Plus' AS name, 4fa8a6e4-bc52-495f-872d-1ddf403a8303::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '5da05f24-9cad-4dac-9ccd-a6b35813072d'::uuid AS category_uuid, 'xbox-game-pass' AS slug, 'Xbox Game Pass' AS name, 4fa8a6e4-bc52-495f-872d-1ddf403a8303::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'b49710fb-7783-4a9e-b025-1caf25353e0e'::uuid AS category_uuid, 'nintendo-online' AS slug, 'Nintendo Online' AS name, 4fa8a6e4-bc52-495f-872d-1ddf403a8303::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '4345dcc8-422c-4da3-bb20-7b457b9bb99b'::uuid AS category_uuid, 'cartes-prepayees' AS slug, 'Cartes prépayées' AS name, 4fa8a6e4-bc52-495f-872d-1ddf403a8303::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'b54604b5-3a10-411c-bf5b-1fbd502838ae'::uuid AS category_uuid, 'playstation-store' AS slug, 'PlayStation Store' AS name, 4345dcc8-422c-4da3-bb20-7b457b9bb99b::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '025ded96-15c6-4212-8089-d7c5de7b27c7'::uuid AS category_uuid, 'xbox-live' AS slug, 'Xbox Live' AS name, 4345dcc8-422c-4da3-bb20-7b457b9bb99b::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'b12ebe04-e6f7-44e9-b5fc-3bbeea22b004'::uuid AS category_uuid, 'steam' AS slug, 'Steam' AS name, 4345dcc8-422c-4da3-bb20-7b457b9bb99b::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '76a0ffb0-faca-43dd-a551-8baf7f12cec8'::uuid AS category_uuid, 'cartes-acquisition' AS slug, 'Cartes d’acquisition' AS name, 9c9489ec-9c36-4376-9035-80e95ef56ef9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '5dffa557-adff-447c-a40d-24252e2033fa'::uuid AS category_uuid, 'elgato' AS slug, 'Elgato' AS name, 76a0ffb0-faca-43dd-a551-8baf7f12cec8::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '0c98f363-cde4-4c6b-bab1-5d9feb8ed16b'::uuid AS category_uuid, 'avermedia' AS slug, 'AverMedia' AS name, 76a0ffb0-faca-43dd-a551-8baf7f12cec8::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'f055cd40-4ab6-4c02-98f9-5e9be0f08039'::uuid AS category_uuid, 'streaming-capture-video-cameras-streaming' AS slug, 'Caméras streaming' AS name, 9c9489ec-9c36-4376-9035-80e95ef56ef9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '62089ae9-c495-4770-b031-c3592748cf6a'::uuid AS category_uuid, 'micros-professionnels' AS slug, 'Micros professionnels' AS name, 9c9489ec-9c36-4376-9035-80e95ef56ef9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '5cd025a0-5b7d-4ff0-99c1-ea7134f9d88e'::uuid AS category_uuid, 'streaming-capture-video-eclairage' AS slug, 'Éclairage' AS name, 9c9489ec-9c36-4376-9035-80e95ef56ef9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '697e9baa-0ba6-4d3c-8336-0b2d4adf81d2'::uuid AS category_uuid, 'fonds-verts' AS slug, 'Fonds verts' AS name, 9c9489ec-9c36-4376-9035-80e95ef56ef9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '9b03433c-ea95-44e1-814f-15d8d6c6ca2e'::uuid AS category_uuid, 'figurines' AS slug, 'Figurines' AS name, b5919e72-662d-46f1-be19-b88995804712::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '52ff17fa-af58-4eee-b89f-ecca91b5e5ee'::uuid AS category_uuid, 'merchandising-gaming-posters' AS slug, 'Posters' AS name, b5919e72-662d-46f1-be19-b88995804712::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'e1d79eea-6a6d-4977-9553-14ea6d94e150'::uuid AS category_uuid, 'vetements-gaming' AS slug, 'Vêtements gaming' AS name, b5919e72-662d-46f1-be19-b88995804712::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),
  level = EXCLUDED.level,
  category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),
  updated_at = NOW();

-- Lot 27 terminé: 100 entrées
