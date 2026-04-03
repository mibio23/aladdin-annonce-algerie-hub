-- ============================================================
-- CHUNK 15/49 — 100 catégories
-- Total: 4836 catégories
-- Exécuter dans l'ordre dans Supabase SQL Editor
-- ============================================================

INSERT INTO public.categories
  (category_uuid, slug, name, parent_id, level, is_active, created_at, updated_at)
VALUES
  SELECT '577ada88-471a-46bb-9b92-9f3c7c50452f'::uuid AS category_uuid, 'tommee-tippee' AS slug, 'Tommee Tippee' AS name, 9afa56c8-7442-408f-9478-381946548530::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '4e3ad857-93bb-480f-b5fc-47423398984c'::uuid AS category_uuid, 'dr-browns' AS slug, 'Dr. Brown' AS name, 9afa56c8-7442-408f-9478-381946548530::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '0ce1bff2-ebe7-4061-bea0-14fbb1e7ca1c'::uuid AS category_uuid, 'mam' AS slug, 'MAM' AS name, 9afa56c8-7442-408f-9478-381946548530::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '0847aff4-ff43-4530-b0c7-ae8ac4e6634c'::uuid AS category_uuid, 'marques-biberons-nuk' AS slug, 'NUK' AS name, 9afa56c8-7442-408f-9478-381946548530::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '795f149a-a589-4f62-ae11-b81d37ca5309'::uuid AS category_uuid, 'baignoires-bebe' AS slug, 'Baignoires bébé' AS name, 9979a688-cab4-4a55-bd7e-ab526dfd0691::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '1ae236b0-e777-40ab-99b8-882d7ad810dc'::uuid AS category_uuid, 'trousse-de-soin' AS slug, 'Trousse de soin' AS name, 9979a688-cab4-4a55-bd7e-ab526dfd0691::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'fd2245bf-e384-4159-8455-451765dd1fd8'::uuid AS category_uuid, 'thermometres-bebe' AS slug, 'Thermomètres bébé' AS name, 9979a688-cab4-4a55-bd7e-ab526dfd0691::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'f03d7860-859c-4052-939d-c6b421528424'::uuid AS category_uuid, 'soins-peau-bebe' AS slug, 'Soins peau bébé' AS name, 9979a688-cab4-4a55-bd7e-ab526dfd0691::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '1b3c0bcb-3ac2-49e3-9e94-0ff3113211f1'::uuid AS category_uuid, 'marques-soins-bebe' AS slug, 'Marques soins bébé' AS name, 9979a688-cab4-4a55-bd7e-ab526dfd0691::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'ce7218c2-5a9c-4a1d-ab52-55fbe2163103'::uuid AS category_uuid, 'mustela' AS slug, 'Mustela' AS name, 1b3c0bcb-3ac2-49e3-9e94-0ff3113211f1::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '1c3148e5-f527-4dc0-ae3d-868ed122ad9f'::uuid AS category_uuid, 'biolane' AS slug, 'Biolane' AS name, 1b3c0bcb-3ac2-49e3-9e94-0ff3113211f1::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'bd2e1dc2-f3a9-496e-951d-6112c610f830'::uuid AS category_uuid, 'weleda' AS slug, 'Weleda' AS name, 1b3c0bcb-3ac2-49e3-9e94-0ff3113211f1::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '8c868571-661f-4f0e-bed7-d361829507ba'::uuid AS category_uuid, 'sanosan' AS slug, 'Sanosan' AS name, 1b3c0bcb-3ac2-49e3-9e94-0ff3113211f1::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '891f2f1f-713a-4d7b-b871-1dfe166a5934'::uuid AS category_uuid, 'couches-jetables' AS slug, 'Couches jetables' AS name, d9847ceb-3827-4d2d-9b30-57dc90567ecd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '3832b0a8-6abd-420a-959a-35bb3021ab2d'::uuid AS category_uuid, 'couches-lavables' AS slug, 'Couches lavables' AS name, d9847ceb-3827-4d2d-9b30-57dc90567ecd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'ca93bb7e-16d9-41fc-bdfd-8c35f0511381'::uuid AS category_uuid, 'couches-toilette-lingettes-bebe' AS slug, 'Lingettes bébé' AS name, d9847ceb-3827-4d2d-9b30-57dc90567ecd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '51717e13-ac6d-43dc-9c87-b7140f3f8e98'::uuid AS category_uuid, 'tables-a-langer' AS slug, 'Tables à langer' AS name, d9847ceb-3827-4d2d-9b30-57dc90567ecd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '6e17032e-1c67-4d2a-8103-a2a8f37e7cbc'::uuid AS category_uuid, 'matelas-a-langer' AS slug, 'Matelas à langer' AS name, d9847ceb-3827-4d2d-9b30-57dc90567ecd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '726eee10-de64-47e5-aeaa-43e420ab60e2'::uuid AS category_uuid, 'marques-couches' AS slug, 'Marques couches' AS name, d9847ceb-3827-4d2d-9b30-57dc90567ecd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'f98c6adb-e576-417c-b014-bff249e06a60'::uuid AS category_uuid, 'pampers' AS slug, 'Pampers' AS name, 726eee10-de64-47e5-aeaa-43e420ab60e2::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '768bc4f6-823c-4d56-9ac7-427c94a34c1a'::uuid AS category_uuid, 'huggies' AS slug, 'Huggies' AS name, 726eee10-de64-47e5-aeaa-43e420ab60e2::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'a9c08474-140d-40c9-b3b2-0b1a8a851659'::uuid AS category_uuid, 'dodot' AS slug, 'Dodot' AS name, 726eee10-de64-47e5-aeaa-43e420ab60e2::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '9a459009-fad6-4c20-ac84-37a19fd4528c'::uuid AS category_uuid, 'libero' AS slug, 'Libero' AS name, 726eee10-de64-47e5-aeaa-43e420ab60e2::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '51fb7077-f9bf-42f3-aaf7-a7600a10c172'::uuid AS category_uuid, 'moltex' AS slug, 'Moltex' AS name, 726eee10-de64-47e5-aeaa-43e420ab60e2::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'eb5e6bd6-2394-4059-8bf3-b2f8be8ae9b7'::uuid AS category_uuid, 'tapis-eveil' AS slug, 'Tapis d' AS name, 759ed54a-8e1e-4aca-a7f0-dcd23aead3d6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '61691ecc-ef98-4f23-9c23-768625e21839'::uuid AS category_uuid, 'hochets' AS slug, 'Hochets' AS name, 759ed54a-8e1e-4aca-a7f0-dcd23aead3d6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '9ddc015f-b5bb-4cbf-971b-7cf68a64257b'::uuid AS category_uuid, 'jouets-de-bain' AS slug, 'Jouets de bain' AS name, 759ed54a-8e1e-4aca-a7f0-dcd23aead3d6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '309e0bf6-42df-4ded-9c45-b6945729bdbb'::uuid AS category_uuid, 'mobiles-lits' AS slug, 'Mobiles de lit' AS name, 759ed54a-8e1e-4aca-a7f0-dcd23aead3d6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '7e5103d3-e687-4971-8985-7254fefe22ad'::uuid AS category_uuid, 'livres-bebe' AS slug, 'Livres bébé' AS name, 759ed54a-8e1e-4aca-a7f0-dcd23aead3d6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'b97aabcf-3668-4934-9eed-23126572c8b2'::uuid AS category_uuid, 'marques-jouets-bebe' AS slug, 'Marques jouets bébé' AS name, 759ed54a-8e1e-4aca-a7f0-dcd23aead3d6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '7eb193ad-eacb-42a9-8621-02626b957b4a'::uuid AS category_uuid, 'fisher-price' AS slug, 'Fisher-Price' AS name, b97aabcf-3668-4934-9eed-23126572c8b2::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '8c3b710a-a45a-49e8-994c-6e7a1e5987e4'::uuid AS category_uuid, 'marques-jouets-bebe-vtech' AS slug, 'VTech' AS name, b97aabcf-3668-4934-9eed-23126572c8b2::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '7d081cf7-37b1-477c-9c67-54ec479fe2c9'::uuid AS category_uuid, 'little-tikes' AS slug, 'Little Tikes' AS name, b97aabcf-3668-4934-9eed-23126572c8b2::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'e8ab38b5-f622-4928-9e8a-36a9eae16649'::uuid AS category_uuid, 'lamaze' AS slug, 'Lamaze' AS name, b97aabcf-3668-4934-9eed-23126572c8b2::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'ccf0d4bd-30e1-4f7f-a145-084dfdbd7f33'::uuid AS category_uuid, 'barrieres-securite' AS slug, 'Barrières de sécurité' AS name, 0e07f949-50f1-46c4-8eb4-604e439c2ec2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '1e12adb1-86e0-4a8c-8897-6567b33a48c1'::uuid AS category_uuid, 'babyphones' AS slug, 'Babyphones' AS name, 0e07f949-50f1-46c4-8eb4-604e439c2ec2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '980b86f4-2a18-4363-9372-9289d797599b'::uuid AS category_uuid, 'veilleuses' AS slug, 'Veilleuses' AS name, 0e07f949-50f1-46c4-8eb4-604e439c2ec2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'c06c7e0b-1ad2-4b05-b465-a7fa5360ebfa'::uuid AS category_uuid, 'caches-prises' AS slug, 'Caches-prises' AS name, 0e07f949-50f1-46c4-8eb4-604e439c2ec2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'af770ca5-c452-48b3-ab16-e0eb81bd6e0c'::uuid AS category_uuid, 'harnais-bebe' AS slug, 'Harnais bébé' AS name, 0e07f949-50f1-46c4-8eb4-604e439c2ec2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'c7518323-8d6a-43d6-be42-1bb5e5352a56'::uuid AS category_uuid, 'marques-babyphones' AS slug, 'Marques babyphones' AS name, 0e07f949-50f1-46c4-8eb4-604e439c2ec2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'fe783727-a439-4f00-b84e-a23cd70f0474'::uuid AS category_uuid, 'marques-babyphones-philips-avent' AS slug, 'Philips Avent' AS name, c7518323-8d6a-43d6-be42-1bb5e5352a56::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'c99511fc-7a91-4522-9005-e0b1c6e453d3'::uuid AS category_uuid, 'marques-babyphones-vtech' AS slug, 'VTech' AS name, c7518323-8d6a-43d6-be42-1bb5e5352a56::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '17260a1f-6736-4d5d-bc57-c45008161e34'::uuid AS category_uuid, 'marques-babyphones-motorola' AS slug, 'Motorola' AS name, c7518323-8d6a-43d6-be42-1bb5e5352a56::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '24b82fbb-9139-43ff-87ca-d2475c2be4c1'::uuid AS category_uuid, 'marques-babyphones-nuk' AS slug, 'NUK' AS name, c7518323-8d6a-43d6-be42-1bb5e5352a56::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '35fe003b-a8e8-4924-a701-2dde15cfe7f6'::uuid AS category_uuid, 'parures-lit-bebe' AS slug, 'Parures de lit bébé' AS name, 76d054c3-b5a6-408a-998c-bf6773b6c263::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '248bff49-3a50-43fd-b0b8-3465860f2be1'::uuid AS category_uuid, 'rideaux-chambre-bebe' AS slug, 'Rideaux chambre bébé' AS name, 76d054c3-b5a6-408a-998c-bf6773b6c263::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '39e32849-bb4b-40d0-bc53-0264ee9a52ac'::uuid AS category_uuid, 'luminaires-chambre-bebe' AS slug, 'Luminaires chambre bébé' AS name, 76d054c3-b5a6-408a-998c-bf6773b6c263::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '0d057f21-484f-4110-9054-37f97844d190'::uuid AS category_uuid, 'rangements-chambre-bebe' AS slug, 'Rangements chambre bébé' AS name, 76d054c3-b5a6-408a-998c-bf6773b6c263::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'a1987396-1d4e-49a9-bdc1-03bd4ef8c8cb'::uuid AS category_uuid, 'stickers-muraux-bebe' AS slug, 'Stickers muraux bébé' AS name, 76d054c3-b5a6-408a-998c-bf6773b6c263::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '46d6c559-83c9-4877-bd3f-ba24fb91431c'::uuid AS category_uuid, 'echarpes-de-portage' AS slug, 'Écharpes de portage' AS name, fbfd0e8b-986a-4e53-a889-8bcdd6a35bf1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '8e32ae50-aeb6-472f-8263-4ee9c6f1bf7d'::uuid AS category_uuid, 'porte-bebes-preformes' AS slug, 'Porte-bébés préformés' AS name, fbfd0e8b-986a-4e53-a889-8bcdd6a35bf1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'fe54a249-6c18-404b-acb8-1a1993b80d2a'::uuid AS category_uuid, 'mei-tai' AS slug, 'Mei Tai' AS name, fbfd0e8b-986a-4e53-a889-8bcdd6a35bf1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '70fe4f25-d2e0-4aaf-9d16-8081ff719341'::uuid AS category_uuid, 'slings' AS slug, 'Slings' AS name, fbfd0e8b-986a-4e53-a889-8bcdd6a35bf1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'e5b953ae-2e33-462f-aebe-336fdca053f4'::uuid AS category_uuid, 'marques-porte-bebes' AS slug, 'Marques porte-bébés' AS name, fbfd0e8b-986a-4e53-a889-8bcdd6a35bf1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '28275217-5281-440b-ba55-109a39ff989e'::uuid AS category_uuid, 'marques-porte-bebes-babybjorn' AS slug, 'BabyBjörn' AS name, e5b953ae-2e33-462f-aebe-336fdca053f4::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'e58017b6-9c18-4808-8c35-ae42fc60321d'::uuid AS category_uuid, 'ergobaby' AS slug, 'Ergobaby' AS name, e5b953ae-2e33-462f-aebe-336fdca053f4::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '9b6e9257-b15c-43fa-9d71-a85873bf51e4'::uuid AS category_uuid, 'manduca' AS slug, 'Manduca' AS name, e5b953ae-2e33-462f-aebe-336fdca053f4::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '5461bbb8-c2c5-4619-83a0-b227c02a4415'::uuid AS category_uuid, 'boba' AS slug, 'Boba' AS name, e5b953ae-2e33-462f-aebe-336fdca053f4::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '5cf4fe11-5c5f-47e8-a3e2-36c99021a96c'::uuid AS category_uuid, 'sacs-classiques' AS slug, 'Sacs classiques' AS name, 6495c5d0-6ee3-4e9c-ae31-6415f4e9e393::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'a5b32c70-c81d-4db2-8783-e87494112a92'::uuid AS category_uuid, 'sacs-a-dos-a-langer' AS slug, 'Sacs à dos à langer' AS name, 6495c5d0-6ee3-4e9c-ae31-6415f4e9e393::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '29ec2f9b-941e-4cf6-8bc5-4d7293ff035e'::uuid AS category_uuid, 'accessoires-sac-a-langer' AS slug, 'Accessoires sac à langer' AS name, 6495c5d0-6ee3-4e9c-ae31-6415f4e9e393::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '27b01b61-128d-4ce1-b282-fc58d673307a'::uuid AS category_uuid, 'organiseurs-poussette' AS slug, 'Organiseurs poussette' AS name, 6495c5d0-6ee3-4e9c-ae31-6415f4e9e393::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'b87f89d9-1556-4f30-8d51-72230137e390'::uuid AS category_uuid, 'marques-sacs-a-langer' AS slug, 'Marques sacs à langer' AS name, 6495c5d0-6ee3-4e9c-ae31-6415f4e9e393::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '1ef2652c-068f-4599-a412-200db0855c54'::uuid AS category_uuid, 'skip-hop' AS slug, 'Skip Hop' AS name, b87f89d9-1556-4f30-8d51-72230137e390::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'b2fc3caf-fa84-45f9-9159-60c5f9bdfc78'::uuid AS category_uuid, 'lassig' AS slug, 'Lässig' AS name, b87f89d9-1556-4f30-8d51-72230137e390::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '422d8804-c0b6-456d-8dd8-feece31ed5ac'::uuid AS category_uuid, 'babymoov' AS slug, 'Babymoov' AS name, b87f89d9-1556-4f30-8d51-72230137e390::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'c60312a7-0887-436f-b3bd-e819bc282a86'::uuid AS category_uuid, 'storksak' AS slug, 'Storksak' AS name, b87f89d9-1556-4f30-8d51-72230137e390::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'c0abd619-83b5-4256-b8b4-321cdb85cffe'::uuid AS category_uuid, 'mode-et-accessoires' AS slug, 'Mode & Accessoires' AS name, NULL::uuid AS parent_id, 1 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'd8dd4dd8-f46e-40f2-8baf-a433f72f5ec8'::uuid AS category_uuid, 'chaussures' AS slug, 'Chaussures' AS name, c0abd619-83b5-4256-b8b4-321cdb85cffe::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '1a49898a-6022-43e7-8413-caad2801ac05'::uuid AS category_uuid, 'bijoux-montres' AS slug, 'Bijoux & Montres' AS name, c0abd619-83b5-4256-b8b4-321cdb85cffe::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'e91a126c-f6a6-4dee-b20f-9aeeef212955'::uuid AS category_uuid, 'mode-et-accessoires-lunettes' AS slug, 'Lunettes' AS name, c0abd619-83b5-4256-b8b4-321cdb85cffe::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '845960fa-e866-4b1c-be2a-46f5d8b3b9a4'::uuid AS category_uuid, 'mode-et-accessoires-accessoires-cheveux' AS slug, 'Accessoires Cheveux' AS name, c0abd619-83b5-4256-b8b4-321cdb85cffe::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'c8846249-e9e2-45f9-add8-e58c86ee85aa'::uuid AS category_uuid, 'ceintures-bretelles' AS slug, 'Ceintures & Bretelles' AS name, c0abd619-83b5-4256-b8b4-321cdb85cffe::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '5cc18430-873c-4a61-a544-1ce3230dc800'::uuid AS category_uuid, 'mode-et-accessoires-chapeaux-casquettes' AS slug, 'Chapeaux & Casquettes' AS name, c0abd619-83b5-4256-b8b4-321cdb85cffe::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '643cde28-5ab8-4099-add7-af4d8ce901ac'::uuid AS category_uuid, 'echarpes-foulards' AS slug, 'Écharpes & Foulards' AS name, c0abd619-83b5-4256-b8b4-321cdb85cffe::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '8f06ea3e-bed8-416a-bf6a-a22a5b284270'::uuid AS category_uuid, 'mode-et-accessoires-gants' AS slug, 'Gants' AS name, c0abd619-83b5-4256-b8b4-321cdb85cffe::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'a2f9e840-ad54-4a7b-8f35-7811537c7f6a'::uuid AS category_uuid, 'cravates' AS slug, 'Cravates' AS name, c0abd619-83b5-4256-b8b4-321cdb85cffe::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '14e9a682-bcdb-4da0-997f-864c858dbbb4'::uuid AS category_uuid, 'divers-mode-accessoires' AS slug, 'Divers' AS name, c0abd619-83b5-4256-b8b4-321cdb85cffe::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '0654f607-67b9-4a83-9778-b20fb62e8804'::uuid AS category_uuid, 'intimes' AS slug, 'Intimes' AS name, c0abd619-83b5-4256-b8b4-321cdb85cffe::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '4074b0bc-6561-46c7-ab3b-920117b0bb5f'::uuid AS category_uuid, 'entretien-accessoires' AS slug, 'Entretien' AS name, c0abd619-83b5-4256-b8b4-321cdb85cffe::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '1c7de1b9-fd16-491c-bca1-a801dbc5c125'::uuid AS category_uuid, 'chaussures-baskets' AS slug, 'Baskets' AS name, d8dd4dd8-f46e-40f2-8baf-a433f72f5ec8::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '27628eea-512c-4900-a9fa-4079f521beae'::uuid AS category_uuid, 'sneakers' AS slug, 'Sneakers' AS name, d8dd4dd8-f46e-40f2-8baf-a433f72f5ec8::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'b4fad9e4-591e-415f-9fb3-b6204d2a8036'::uuid AS category_uuid, 'chaussures-running' AS slug, 'Running' AS name, d8dd4dd8-f46e-40f2-8baf-a433f72f5ec8::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '60b43fad-4f7b-43c6-98e4-007297e5afab'::uuid AS category_uuid, 'lifestyle' AS slug, 'Lifestyle' AS name, d8dd4dd8-f46e-40f2-8baf-a433f72f5ec8::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'dcf4691b-2cf5-404b-b8bd-a130b2db4564'::uuid AS category_uuid, 'montantes' AS slug, 'Montantes' AS name, d8dd4dd8-f46e-40f2-8baf-a433f72f5ec8::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '30956e9a-423d-4121-b110-5bbb745eb5d9'::uuid AS category_uuid, 'basses' AS slug, 'Basses' AS name, d8dd4dd8-f46e-40f2-8baf-a433f72f5ec8::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '659c75ac-aec9-4b71-ba64-c1eb84844b42'::uuid AS category_uuid, 'slip-on' AS slug, 'Slip-on' AS name, d8dd4dd8-f46e-40f2-8baf-a433f72f5ec8::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '5a18f248-492f-4ac1-b5ca-1ac1459ade4a'::uuid AS category_uuid, 'derbies' AS slug, 'Derbies' AS name, d8dd4dd8-f46e-40f2-8baf-a433f72f5ec8::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'a5476a92-485c-4a2e-9919-25087722255b'::uuid AS category_uuid, 'richelieu' AS slug, 'Richelieu' AS name, d8dd4dd8-f46e-40f2-8baf-a433f72f5ec8::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'c7facb3b-c635-4272-bfdb-7adcc6f2f649'::uuid AS category_uuid, 'chaussures-mocassins' AS slug, 'Mocassins' AS name, d8dd4dd8-f46e-40f2-8baf-a433f72f5ec8::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '33fb5b34-15ab-4278-b773-2aab4b05373f'::uuid AS category_uuid, 'chaussures-escarpins' AS slug, 'Escarpins' AS name, d8dd4dd8-f46e-40f2-8baf-a433f72f5ec8::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '67ac5fd1-ff76-438d-a1e3-bd7cb297af75'::uuid AS category_uuid, 'chaussures-ballerines' AS slug, 'Ballerines' AS name, d8dd4dd8-f46e-40f2-8baf-a433f72f5ec8::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'dbf5560b-9d3b-49eb-93a2-53ab168c1627'::uuid AS category_uuid, 'salomes' AS slug, 'Salomés' AS name, d8dd4dd8-f46e-40f2-8baf-a433f72f5ec8::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'c8445442-9ba0-4c7b-ba1e-c259e0187f47'::uuid AS category_uuid, 'mules' AS slug, 'Mules' AS name, d8dd4dd8-f46e-40f2-8baf-a433f72f5ec8::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'd59f3259-ca73-4447-b5c2-88b6f1c1218b'::uuid AS category_uuid, 'chelsea' AS slug, 'Chelsea' AS name, d8dd4dd8-f46e-40f2-8baf-a433f72f5ec8::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'b895d761-617b-4072-8a00-65498e317e31'::uuid AS category_uuid, 'monk' AS slug, 'Monk' AS name, d8dd4dd8-f46e-40f2-8baf-a433f72f5ec8::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '714722a1-7644-43e4-9eb6-f1f839e4d3d2'::uuid AS category_uuid, 'bottes' AS slug, 'Bottes' AS name, d8dd4dd8-f46e-40f2-8baf-a433f72f5ec8::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '2eb4bd1f-8439-40c4-bb63-d0b3aa7c1b16'::uuid AS category_uuid, 'bottines' AS slug, 'Bottines' AS name, d8dd4dd8-f46e-40f2-8baf-a433f72f5ec8::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '92204cb4-d731-41ac-9b7b-4a58926d78ab'::uuid AS category_uuid, 'cuissardes' AS slug, 'Cuissardes' AS name, d8dd4dd8-f46e-40f2-8baf-a433f72f5ec8::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '5fe1ff67-9fbd-4ea3-b6ff-6a38d1f6daa2'::uuid AS category_uuid, 'cavalieres' AS slug, 'Cavalières' AS name, d8dd4dd8-f46e-40f2-8baf-a433f72f5ec8::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),
  level = EXCLUDED.level,
  category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),
  updated_at = NOW();

-- Lot 15 terminé: 100 entrées
