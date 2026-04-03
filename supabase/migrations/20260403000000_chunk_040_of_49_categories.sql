-- ============================================================
-- CHUNK 40/49 — 100 catégories
-- Total: 4836 catégories
-- Exécuter dans l'ordre dans Supabase SQL Editor
-- ============================================================

INSERT INTO public.categories
  (category_uuid, slug, name, parent_id, level, is_active, created_at, updated_at)
VALUES
  SELECT '96a87873-0b64-4b0a-a0c7-ca1b7c165b94'::uuid AS category_uuid, 'produits-apicoles' AS slug, 'produits apicoles' AS name, dc96f689-6f8b-4d38-8e7f-dac21893163a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '5f540b39-dd6a-4891-974e-46b517791e74'::uuid AS category_uuid, 'produits-locaux-huiles-vegetales' AS slug, 'huiles végétales naturelles' AS name, dc96f689-6f8b-4d38-8e7f-dac21893163a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT 'ab35dc9a-7e4f-426a-a7ab-757296191489'::uuid AS category_uuid, 'produits-sahariens' AS slug, 'produits sahariens du terroir' AS name, dc96f689-6f8b-4d38-8e7f-dac21893163a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '68021942-8302-47df-9a92-8a7107472322'::uuid AS category_uuid, 'produits-agricoles' AS slug, 'produits agricoles locaux' AS name, dc96f689-6f8b-4d38-8e7f-dac21893163a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT 'c046bbb1-bdab-43e0-b3e7-6e29f1aac79a'::uuid AS category_uuid, 'conserves-bio' AS slug, 'conserves bio' AS name, dc96f689-6f8b-4d38-8e7f-dac21893163a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT 'c5939b8d-1191-4f58-9983-35a5e34eb036'::uuid AS category_uuid, 'vinaigre-naturel' AS slug, 'vinaigre naturel' AS name, dc96f689-6f8b-4d38-8e7f-dac21893163a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '948aaea9-195c-41ce-a6c9-eb6c65a4ace9'::uuid AS category_uuid, 'caroube' AS slug, 'produits à base de caroube' AS name, dc96f689-6f8b-4d38-8e7f-dac21893163a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT 'bb4bc415-a1a9-41c9-b599-e80370cedcd6'::uuid AS category_uuid, 'sirop-dattes' AS slug, 'sirop de dattes (rob)' AS name, dc96f689-6f8b-4d38-8e7f-dac21893163a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '362d21b0-302f-4d5b-a26e-66d0449fffea'::uuid AS category_uuid, 'gateaux-dattes' AS slug, 'gâteaux de dattes artisanaux' AS name, dc96f689-6f8b-4d38-8e7f-dac21893163a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '46d6786d-937d-4298-98bb-1f8e474e1cfc'::uuid AS category_uuid, 'couscous-regions' AS slug, 'couscous (kabyle, chaoui, constantinois, oranais)' AS name, 932478b2-18d2-43b7-acb6-7c2764031032::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT 'f18bb7d5-4ac6-49fa-8c8e-23a40356f856'::uuid AS category_uuid, 'rechta' AS slug, 'rechta' AS name, 932478b2-18d2-43b7-acb6-7c2764031032::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT 'a2e2b8c3-7f02-461c-a805-25b511672f4c'::uuid AS category_uuid, 'chakhchoukha' AS slug, 'chakhchoukha' AS name, 932478b2-18d2-43b7-acb6-7c2764031032::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '04cb599c-702b-4d1c-911e-09a3f7a20420'::uuid AS category_uuid, 'trid' AS slug, 'trid' AS name, 932478b2-18d2-43b7-acb6-7c2764031032::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT 'd4cb820e-80b6-4725-9746-63c07d1072b7'::uuid AS category_uuid, 'dolma' AS slug, 'dolma' AS name, 932478b2-18d2-43b7-acb6-7c2764031032::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '915c5dc2-3191-4a91-aff2-37799f7480f3'::uuid AS category_uuid, 'tajine-zitoune' AS slug, 'tajine zitoune' AS name, 932478b2-18d2-43b7-acb6-7c2764031032::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '7fdcd826-9aa6-4575-852d-9526afcaf4c8'::uuid AS category_uuid, 'tajine-lahlou' AS slug, 'tajine lahlou' AS name, 932478b2-18d2-43b7-acb6-7c2764031032::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'bcd7d3dc-a3f2-4b08-8bc1-629d693b756a'::uuid AS category_uuid, 'chorba-frik' AS slug, 'chorba frik' AS name, 932478b2-18d2-43b7-acb6-7c2764031032::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '8404f984-d3e6-4d9e-ba5e-ced2eee08739'::uuid AS category_uuid, 'hrira' AS slug, 'hrira' AS name, 932478b2-18d2-43b7-acb6-7c2764031032::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '3c28c63c-293e-4593-bdeb-c96293b60f16'::uuid AS category_uuid, 'lham-lahlou' AS slug, 'lham lahlou' AS name, 932478b2-18d2-43b7-acb6-7c2764031032::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '6a385b5b-5c15-4f09-a7ca-9bfc2b39835a'::uuid AS category_uuid, 'bourek-sale' AS slug, 'bourek' AS name, 932478b2-18d2-43b7-acb6-7c2764031032::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '6b84d4a0-1e5e-4871-8c64-5665646e0fbd'::uuid AS category_uuid, 'mhadjeb' AS slug, 'mhadjeb' AS name, 932478b2-18d2-43b7-acb6-7c2764031032::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'bbc3a109-3c5f-48f3-b7ec-cb769eef7061'::uuid AS category_uuid, 'kesra' AS slug, 'kesra' AS name, 932478b2-18d2-43b7-acb6-7c2764031032::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '7066395d-0269-410f-8b56-0d0e3077b3af'::uuid AS category_uuid, 'baghrir-sale' AS slug, 'baghrir salé' AS name, 932478b2-18d2-43b7-acb6-7c2764031032::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '5eaf58b1-1cc9-4b95-937f-0b570ab39595'::uuid AS category_uuid, 'chtitha-djedj' AS slug, 'chtitha djedj' AS name, 932478b2-18d2-43b7-acb6-7c2764031032::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '1ed2bd53-64e8-43f4-9c2e-5e4f501b3e9a'::uuid AS category_uuid, 'chtitha-kofta' AS slug, 'chtitha kofta' AS name, 932478b2-18d2-43b7-acb6-7c2764031032::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '02b5cd12-01bd-412a-981d-c6df1df1d9d2'::uuid AS category_uuid, 'berkoukes' AS slug, 'berkoukes' AS name, 932478b2-18d2-43b7-acb6-7c2764031032::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '35e3ca13-34e4-4c46-b30a-46388b5ebc78'::uuid AS category_uuid, 'mahjouba' AS slug, 'mahjouba' AS name, 932478b2-18d2-43b7-acb6-7c2764031032::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '58200a39-c9cd-45a9-b131-83e7992df11e'::uuid AS category_uuid, 'seffa' AS slug, 'seffa' AS name, 932478b2-18d2-43b7-acb6-7c2764031032::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '844af6ba-bc49-4271-b6fb-e4b135057c8a'::uuid AS category_uuid, 'plats-sahariens' AS slug, 'plats sahariens' AS name, 932478b2-18d2-43b7-acb6-7c2764031032::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'e59bd227-a34e-4429-83eb-1e5de7387d8b'::uuid AS category_uuid, 'plats-kabyles' AS slug, 'plats kabyles' AS name, 932478b2-18d2-43b7-acb6-7c2764031032::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '89112dc6-9294-4c62-b89c-927638d13cd1'::uuid AS category_uuid, 'plats-chaouis' AS slug, 'plats chaouis' AS name, 932478b2-18d2-43b7-acb6-7c2764031032::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '41673d49-2a0f-4cb4-9717-b697c1c1e1eb'::uuid AS category_uuid, 'plats-oranais' AS slug, 'plats oranais' AS name, 932478b2-18d2-43b7-acb6-7c2764031032::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'a8b97dc5-11bf-4526-a1fb-87e2b105fdb6'::uuid AS category_uuid, 'plats-constantinois' AS slug, 'plats constantinois' AS name, 932478b2-18d2-43b7-acb6-7c2764031032::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '017910ee-16db-4c3f-9f2a-e189493c3dd2'::uuid AS category_uuid, 'grillades' AS slug, 'grillades traditionnelles' AS name, 932478b2-18d2-43b7-acb6-7c2764031032::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'a6270cb0-d529-4968-b2b3-fb2c6c0977e3'::uuid AS category_uuid, 'poissons-algeriens' AS slug, 'poissons façon algérienne' AS name, 932478b2-18d2-43b7-acb6-7c2764031032::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '2e22cf45-bc14-4bac-87d8-1b8c787b387e'::uuid AS category_uuid, 'plats-mijotes' AS slug, 'plats mijotés' AS name, 932478b2-18d2-43b7-acb6-7c2764031032::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'e2d7c2ab-7cbf-4505-b702-905198d5c1f3'::uuid AS category_uuid, 'legumes-terroir' AS slug, 'plats à base de légumes du terroir' AS name, 932478b2-18d2-43b7-acb6-7c2764031032::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '72e67ae3-400d-48d3-859c-a1a338d4350e'::uuid AS category_uuid, 'tajines-regionaux' AS slug, 'tajines régionaux' AS name, 932478b2-18d2-43b7-acb6-7c2764031032::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'e3f8d37c-273d-4955-8104-9f0226b54f3d'::uuid AS category_uuid, 'specialites-familiales' AS slug, 'spécialités familiales traditionnelles' AS name, 932478b2-18d2-43b7-acb6-7c2764031032::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'f104e0a2-1961-47c7-ad24-d1c4d866515d'::uuid AS category_uuid, 'taguella' AS slug, 'taguella (pain touareg)' AS name, 932478b2-18d2-43b7-acb6-7c2764031032::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'd67469ed-4fad-4980-b6ae-430a75bd0c08'::uuid AS category_uuid, 'makroud' AS slug, 'makroud' AS name, 1aa6521a-6aab-41f9-a6ae-c59ee2d274d1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'e3c6092a-5e41-407a-8482-f0dbe063541f'::uuid AS category_uuid, 'baklawa' AS slug, 'baklawa' AS name, 1aa6521a-6aab-41f9-a6ae-c59ee2d274d1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '08831ef4-11ae-47b8-9d1b-a5d7cbb9d1fa'::uuid AS category_uuid, 'kalb-ellouz' AS slug, 'kalb ellouz' AS name, 1aa6521a-6aab-41f9-a6ae-c59ee2d274d1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '2b42e95b-0493-4fcb-88ce-8cb7c2981595'::uuid AS category_uuid, 'dziriette' AS slug, 'dziriette' AS name, 1aa6521a-6aab-41f9-a6ae-c59ee2d274d1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '2a006b9b-999a-49c6-aa28-b84f6cc85d21'::uuid AS category_uuid, 'tcharek-el-ariane' AS slug, 'tcharek el ariane' AS name, 1aa6521a-6aab-41f9-a6ae-c59ee2d274d1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'f5e3c3cf-d724-4b3d-8cb7-1ceb54fadf6a'::uuid AS category_uuid, 'griouech' AS slug, 'griouech' AS name, 1aa6521a-6aab-41f9-a6ae-c59ee2d274d1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'f4be5c0c-6112-4d90-878e-c3c74f14433b'::uuid AS category_uuid, 'samsa' AS slug, 'samsa' AS name, 1aa6521a-6aab-41f9-a6ae-c59ee2d274d1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '57379d51-eeb3-40a0-bd6c-e95c6fda1cc6'::uuid AS category_uuid, 'msemen-sucre' AS slug, 'msemen sucré' AS name, 1aa6521a-6aab-41f9-a6ae-c59ee2d274d1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '97ab9d81-4e88-4226-b60b-4d176418991b'::uuid AS category_uuid, 'baghrir-miel' AS slug, 'baghrir au miel' AS name, 1aa6521a-6aab-41f9-a6ae-c59ee2d274d1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'ca295952-b833-4ce0-8ad5-4b45dbac10e4'::uuid AS category_uuid, 'bourek-hlou' AS slug, 'bourek hlou' AS name, 1aa6521a-6aab-41f9-a6ae-c59ee2d274d1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '0c42d433-daa3-4dff-ae84-de7084636ce3'::uuid AS category_uuid, 'tamina' AS slug, 'tamina' AS name, 1aa6521a-6aab-41f9-a6ae-c59ee2d274d1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '83e5c98d-05b4-42a4-aae1-d700b27e83b3'::uuid AS category_uuid, 'zlabia' AS slug, 'zlabia' AS name, 1aa6521a-6aab-41f9-a6ae-c59ee2d274d1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '966a21e0-b9de-4cfc-9e19-11f250840b92'::uuid AS category_uuid, 'khfaf' AS slug, 'khfaf' AS name, 1aa6521a-6aab-41f9-a6ae-c59ee2d274d1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'e7072362-0676-494e-8e18-b63c6471d9b7'::uuid AS category_uuid, 'mlawi-miel' AS slug, 'mlawi au miel' AS name, 1aa6521a-6aab-41f9-a6ae-c59ee2d274d1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '41e8b0e0-7c67-48bd-8b2b-66c8b877cdbf'::uuid AS category_uuid, 'khobz-el-bey' AS slug, 'khobz el bey' AS name, 1aa6521a-6aab-41f9-a6ae-c59ee2d274d1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '6b7ff9a8-10ce-4560-9e5a-ee23c12c27dd'::uuid AS category_uuid, 'boussou-la-tmessou' AS slug, 'boussou la tmessou' AS name, 1aa6521a-6aab-41f9-a6ae-c59ee2d274d1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '0a8e76a4-5256-44b5-b561-7ce05aecf110'::uuid AS category_uuid, 'mouna-oranaise' AS slug, 'mouna oranaise' AS name, 1aa6521a-6aab-41f9-a6ae-c59ee2d274d1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'da19279c-951d-40b4-9797-d4b07c283c2e'::uuid AS category_uuid, 'mkhabaz' AS slug, 'mkhabaz' AS name, 1aa6521a-6aab-41f9-a6ae-c59ee2d274d1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '43ba7ae3-8db1-4b7f-a41f-64586ec26f26'::uuid AS category_uuid, 'halwat-tabaa' AS slug, 'halwat tabaa' AS name, 1aa6521a-6aab-41f9-a6ae-c59ee2d274d1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'd1030b44-0b7c-4b52-bd45-2f7af55874b6'::uuid AS category_uuid, 'harcha-sucree' AS slug, 'harcha sucrée' AS name, 1aa6521a-6aab-41f9-a6ae-c59ee2d274d1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '375167e0-3d3e-41ea-89dd-e86b375d6a6b'::uuid AS category_uuid, 'kaak-annaba' AS slug, 'kaak annaba' AS name, 1aa6521a-6aab-41f9-a6ae-c59ee2d274d1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '84cabce7-8021-46f3-bc13-2103637a1e15'::uuid AS category_uuid, 'kaak-oranais' AS slug, 'kaak oranais' AS name, 1aa6521a-6aab-41f9-a6ae-c59ee2d274d1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '1043b9a5-909b-4252-b831-52cc1722f9fb'::uuid AS category_uuid, 'gateaux-secs' AS slug, 'gâteaux secs traditionnels' AS name, 1aa6521a-6aab-41f9-a6ae-c59ee2d274d1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '4d38728e-cc46-4e7d-a818-8174bc0223e9'::uuid AS category_uuid, 'gateaux-miel' AS slug, 'gâteaux au miel' AS name, 1aa6521a-6aab-41f9-a6ae-c59ee2d274d1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'ed78353b-75ca-42ee-a886-7f12cde66e52'::uuid AS category_uuid, 'gateaux-amandes' AS slug, 'gâteaux aux amandes' AS name, 1aa6521a-6aab-41f9-a6ae-c59ee2d274d1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '51c5fd48-0763-4cad-a830-47a66f2957ee'::uuid AS category_uuid, 'patisseries-kabyles' AS slug, 'pâtisseries kabyles' AS name, 1aa6521a-6aab-41f9-a6ae-c59ee2d274d1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '5cee759e-a0a4-4932-a9fb-633f37516cc2'::uuid AS category_uuid, 'patisseries-chaouies' AS slug, 'pâtisseries chaouies' AS name, 1aa6521a-6aab-41f9-a6ae-c59ee2d274d1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '0f269896-6f43-45c8-a0ea-bbfed8414dee'::uuid AS category_uuid, 'patisseries-sahariennes' AS slug, 'pâtisseries sahariennes' AS name, 1aa6521a-6aab-41f9-a6ae-c59ee2d274d1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'c17ab897-cf71-4ea0-bacb-43a5bdbe734f'::uuid AS category_uuid, 'kaab-ghzal' AS slug, 'kaab ghzal' AS name, 1aa6521a-6aab-41f9-a6ae-c59ee2d274d1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'c53c723f-97ca-49e8-bab0-03333b944704'::uuid AS category_uuid, 'arayech' AS slug, 'arayech' AS name, 1aa6521a-6aab-41f9-a6ae-c59ee2d274d1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'f333c580-0fa0-43b8-abe8-0c2bc0b4139b'::uuid AS category_uuid, 'bradj' AS slug, 'bradj' AS name, 1aa6521a-6aab-41f9-a6ae-c59ee2d274d1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'e97106d4-e961-4578-9f9d-b3b37164f29e'::uuid AS category_uuid, 'ghribia' AS slug, 'ghribia' AS name, 1aa6521a-6aab-41f9-a6ae-c59ee2d274d1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '80603155-45a8-4db4-97dd-6f5e963b3235'::uuid AS category_uuid, 'sables-artisanaux' AS slug, 'sablés artisanaux' AS name, 1aa6521a-6aab-41f9-a6ae-c59ee2d274d1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'ad4beb35-7f3f-4f7f-89b4-78f536fc7fa3'::uuid AS category_uuid, 'assortiments-festifs' AS slug, 'assortiments festifs traditionnels' AS name, 1aa6521a-6aab-41f9-a6ae-c59ee2d274d1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '8263fb40-5077-4247-9826-c6d5b596062b'::uuid AS category_uuid, 'voyages-tourisme' AS slug, 'Voyages & Tourisme' AS name, NULL::uuid AS parent_id, 1 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '59a90dee-19bb-486d-b388-186f022c531c'::uuid AS category_uuid, 'voyages-decouvertes' AS slug, 'Voyages, Découvertes Touristiques' AS name, 8263fb40-5077-4247-9826-c6d5b596062b::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'ffd534d7-cc54-4be5-a2c8-d45fa9e58545'::uuid AS category_uuid, 'hebergement-sejour' AS slug, 'Hébergement & Séjour' AS name, 8263fb40-5077-4247-9826-c6d5b596062b::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '2de26d37-4fb0-498f-b136-07857c3c6072'::uuid AS category_uuid, 'transport-touristique' AS slug, 'Transport Touristique' AS name, 8263fb40-5077-4247-9826-c6d5b596062b::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'cabb374e-763f-47e3-b0a3-81ee12249b50'::uuid AS category_uuid, 'activites-loisirs-touristiques' AS slug, 'Activités & Loisirs Touristiques' AS name, 8263fb40-5077-4247-9826-c6d5b596062b::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'b0e6fc85-4f91-4f03-bc86-304e2195f3c4'::uuid AS category_uuid, 'tourisme-culturel-historique' AS slug, 'Tourisme Culturel & Historique' AS name, 8263fb40-5077-4247-9826-c6d5b596062b::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '7a81c4ca-f003-4ec2-942c-1774a955d1d7'::uuid AS category_uuid, 'services-assistance-voyageurs' AS slug, 'Services & Assistance aux Voyageurs' AS name, 8263fb40-5077-4247-9826-c6d5b596062b::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '02268560-67bd-4748-b601-35f71dbe3eb9'::uuid AS category_uuid, 'produits-accessoires-voyage' AS slug, 'Produits & Accessoires de Voyage' AS name, 8263fb40-5077-4247-9826-c6d5b596062b::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '71d8abd1-0ebf-470a-a47a-5924755aff19'::uuid AS category_uuid, 'gastronomie-decouvertes-touristiques' AS slug, 'Gastronomie & Découvertes Touristiques' AS name, 8263fb40-5077-4247-9826-c6d5b596062b::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '07ba1d5c-d305-40e2-bfb6-812e7761a6ce'::uuid AS category_uuid, 'agences-de-voyage' AS slug, 'agences de voyage' AS name, 59a90dee-19bb-486d-b388-186f022c531c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '376c107c-99e9-4d35-97ee-069eab6ae115'::uuid AS category_uuid, 'sejours-organises' AS slug, 'séjours organisés' AS name, 59a90dee-19bb-486d-b388-186f022c531c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '65c7fb14-779c-48eb-96d2-c6e52fdc8a88'::uuid AS category_uuid, 'voyages-organises' AS slug, 'voyages organisés' AS name, 59a90dee-19bb-486d-b388-186f022c531c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '739155d7-f2c4-422f-a3a0-658ef4effb65'::uuid AS category_uuid, 'circuits-touristiques' AS slug, 'circuits touristiques' AS name, 59a90dee-19bb-486d-b388-186f022c531c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '138acb11-6423-4c32-b0ef-801c64b78ef2'::uuid AS category_uuid, 'excursions-locales' AS slug, 'excursions locales' AS name, 59a90dee-19bb-486d-b388-186f022c531c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '0c5cd4b0-a81c-4c5d-80cc-b3f57082f541'::uuid AS category_uuid, 'excursions-sahariennes' AS slug, 'excursions sahariennes' AS name, 59a90dee-19bb-486d-b388-186f022c531c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'f2dfb7cc-c70f-4ead-be59-0c212e511bf6'::uuid AS category_uuid, 'randonnees-guidees' AS slug, 'randonnées guidées' AS name, 59a90dee-19bb-486d-b388-186f022c531c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '2e46689e-a736-4437-9a5e-46a819237e59'::uuid AS category_uuid, 'voyages-culturels' AS slug, 'voyages culturels' AS name, 59a90dee-19bb-486d-b388-186f022c531c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '87c5c9b6-4b9c-419c-94d3-109623af55e6'::uuid AS category_uuid, 'voyages-religieux' AS slug, 'voyages religieux' AS name, 59a90dee-19bb-486d-b388-186f022c531c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '33549f4c-e003-4b13-85c5-4bb5a1fc7c2a'::uuid AS category_uuid, 'visites-historiques' AS slug, 'visites historiques' AS name, 59a90dee-19bb-486d-b388-186f022c531c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'b7800b82-db34-497d-bb3d-a4fa37b2f325'::uuid AS category_uuid, 'circuits-archeologiques' AS slug, 'circuits archéologiques' AS name, 59a90dee-19bb-486d-b388-186f022c531c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'd2c018c0-f931-4f49-b652-bf641d960db6'::uuid AS category_uuid, 'tours-en-ville' AS slug, 'tours en ville' AS name, 59a90dee-19bb-486d-b388-186f022c531c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'f16d33b4-cfca-4696-8aaa-515d44988b45'::uuid AS category_uuid, 'city-tours' AS slug, 'city tours' AS name, 59a90dee-19bb-486d-b388-186f022c531c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '404d2f89-2acd-414f-8215-7ca290e48e90'::uuid AS category_uuid, 'tours-gastronomiques' AS slug, 'tours gastronomiques' AS name, 59a90dee-19bb-486d-b388-186f022c531c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '08a92566-d72b-4797-948c-6a22eee8c5a5'::uuid AS category_uuid, 'voyages-en-groupe' AS slug, 'voyages en groupe' AS name, 59a90dee-19bb-486d-b388-186f022c531c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'a064c499-5cf4-44b2-8177-992a6e52a5f2'::uuid AS category_uuid, 'voyages-individuels' AS slug, 'voyages individuels' AS name, 59a90dee-19bb-486d-b388-186f022c531c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'a4e65b2d-e013-479c-9209-3958a979e975'::uuid AS category_uuid, 'voyages-aventure' AS slug, 'voyages d’aventure' AS name, 59a90dee-19bb-486d-b388-186f022c531c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),
  level = EXCLUDED.level,
  category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),
  updated_at = NOW();

-- Lot 40 terminé: 100 entrées
