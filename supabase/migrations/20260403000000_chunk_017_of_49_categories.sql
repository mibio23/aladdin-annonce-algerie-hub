-- ============================================================
-- CHUNK 17/49 — 100 catégories
-- Total: 4836 catégories
-- Exécuter dans l'ordre dans Supabase SQL Editor
-- ============================================================

INSERT INTO public.categories
  (category_uuid, slug, name, parent_id, level, is_active, created_at, updated_at)
VALUES
  SELECT '9867b7be-886a-4e28-aeca-a183e421c8ed'::uuid AS category_uuid, 'automatique-ceintures' AS slug, 'Automatique' AS name, c8846249-e9e2-45f9-add8-e58c86ee85aa::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '5a69ba9a-2c1a-4ebf-9113-d7e78656161c'::uuid AS category_uuid, 'reversible' AS slug, 'Réversible' AS name, c8846249-e9e2-45f9-add8-e58c86ee85aa::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'ff950866-b205-4195-9689-5d8c6010b91c'::uuid AS category_uuid, 'ceintures-bretelles-toile' AS slug, 'Toile' AS name, c8846249-e9e2-45f9-add8-e58c86ee85aa::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '0acad6ca-bfdc-46a6-8e9a-fc56c95fdc65'::uuid AS category_uuid, 'elastique' AS slug, 'Élastique' AS name, c8846249-e9e2-45f9-add8-e58c86ee85aa::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '0483b3b4-f6be-4e7d-8a3f-6c96508ae448'::uuid AS category_uuid, 'sangle-militaire' AS slug, 'Sangle militaire' AS name, c8846249-e9e2-45f9-add8-e58c86ee85aa::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'a6689c25-038d-4db2-9b66-39e6f5188c7f'::uuid AS category_uuid, 'd-ring' AS slug, 'D-ring' AS name, c8846249-e9e2-45f9-add8-e58c86ee85aa::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'ebacec31-7941-4a6e-997f-4d70fa81deee'::uuid AS category_uuid, 'createur' AS slug, 'Créateur' AS name, c8846249-e9e2-45f9-add8-e58c86ee85aa::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '0325d685-3ba6-4a9f-8c36-ecd1313cd722'::uuid AS category_uuid, 'logo' AS slug, 'Logo' AS name, c8846249-e9e2-45f9-add8-e58c86ee85aa::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '9a390b8f-75df-481a-bcf9-a821a0ad5549'::uuid AS category_uuid, 'chaine' AS slug, 'Chaîne' AS name, c8846249-e9e2-45f9-add8-e58c86ee85aa::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '3df57f5c-807a-46bf-aa27-53218815b223'::uuid AS category_uuid, 'obi' AS slug, 'Obi' AS name, c8846249-e9e2-45f9-add8-e58c86ee85aa::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '946254bb-304f-4624-908b-177d89d41d38'::uuid AS category_uuid, 'bretelles-y' AS slug, 'Bretelles Y' AS name, c8846249-e9e2-45f9-add8-e58c86ee85aa::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'c0b87d54-330f-46bf-8a6f-ef289e897f8e'::uuid AS category_uuid, 'bretelles-x' AS slug, 'Bretelles X' AS name, c8846249-e9e2-45f9-add8-e58c86ee85aa::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'cc89c48f-1931-40e8-8d06-c87932d69268'::uuid AS category_uuid, 'clips-bretelles' AS slug, 'Clips' AS name, c8846249-e9e2-45f9-add8-e58c86ee85aa::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '6f62cbce-2ad2-45e0-b926-a066255ddc5c'::uuid AS category_uuid, 'boutons-bretelles' AS slug, 'Boutons' AS name, c8846249-e9e2-45f9-add8-e58c86ee85aa::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '1cfb9503-2386-47f4-ad54-03784fdf4639'::uuid AS category_uuid, 'smoking' AS slug, 'Smoking' AS name, c8846249-e9e2-45f9-add8-e58c86ee85aa::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '61aed2f9-7c18-4155-a815-495988da0b82'::uuid AS category_uuid, 'baseball' AS slug, 'Baseball' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '927afd79-d997-4566-b07a-b1c9335ad85c'::uuid AS category_uuid, 'snapback' AS slug, 'Snapback' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '411c2ea5-e060-4a1f-bd20-0df1a2f9e40e'::uuid AS category_uuid, 'trucker' AS slug, 'Trucker' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '248e3537-0a29-45e8-b833-63eb983e45e4'::uuid AS category_uuid, 'dad-hat' AS slug, 'Dad hat' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'cd4fa658-3de5-43c8-a4f4-f67ff62a986d'::uuid AS category_uuid, 'militaire' AS slug, 'Militaire' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '7fce5cc7-af6c-45d6-8586-816e6bbcd90c'::uuid AS category_uuid, 'visiere' AS slug, 'Visière' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'bbd29232-7855-483c-8489-1d461bb5ce52'::uuid AS category_uuid, 'bonnets-coteles' AS slug, 'Bonnets côtelés' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'f1f50fc4-8b14-434c-a85c-6e5fc4660a1d'::uuid AS category_uuid, 'pompon' AS slug, 'Pompon' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '526f2276-199e-40af-ab4b-d459af63ce89'::uuid AS category_uuid, 'slouchy' AS slug, 'Slouchy' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'f1e25d02-4941-4094-a98f-579e0811fba6'::uuid AS category_uuid, 'beanie' AS slug, 'Beanie' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '6d4c7375-0560-4d57-a36d-10a6f713dfbf'::uuid AS category_uuid, 'cagoule' AS slug, 'Cagoule' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'c4e7e19a-47fb-4707-8f66-af198e822b50'::uuid AS category_uuid, 'bluetooth' AS slug, 'Bluetooth' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '09316a13-47a0-4fb7-be55-eeb9cde782e5'::uuid AS category_uuid, 'fedora' AS slug, 'Fedora' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '55e42238-feee-459d-839e-358504bb105a'::uuid AS category_uuid, 'panama' AS slug, 'Panama' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '8b319c95-ad79-4f8e-98b3-2d2b095c4fbb'::uuid AS category_uuid, 'trilby' AS slug, 'Trilby' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'f660dde8-74d2-4304-9710-c2968e757486'::uuid AS category_uuid, 'bob' AS slug, 'Bob' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '78bc9731-71ed-461f-ac02-f6966533fbc6'::uuid AS category_uuid, 'safari' AS slug, 'Safari' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'f9a7b443-4c3c-4e29-9f63-dcb0a91b4f03'::uuid AS category_uuid, 'capeline' AS slug, 'Capeline' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '16774b8e-2fb8-47ed-ad02-5c0777c94afd'::uuid AS category_uuid, 'cowboy' AS slug, 'Cowboy' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '1164c13d-57ef-4e51-8ad1-70ea4189ba31'::uuid AS category_uuid, 'beret' AS slug, 'Béret basque' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '52705543-0088-49ab-9153-fe97e4e6fcb0'::uuid AS category_uuid, 'gavroche' AS slug, 'Gavroche' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '47df69bb-6c55-4599-963b-93da8417cb53'::uuid AS category_uuid, 'bibi' AS slug, 'Bibi' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '9556c08c-4b33-458e-b177-e9cbf55678a9'::uuid AS category_uuid, 'fascinator' AS slug, 'Fascinator' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'f793e1d4-5d00-4d14-a8d9-4f521d730519'::uuid AS category_uuid, 'echarpes-foulards-longues' AS slug, 'Longues' AS name, 643cde28-5ab8-4099-add7-af4d8ce901ac::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '30b145c4-1a6d-41b0-b0e8-66e8791153f1'::uuid AS category_uuid, 'tubes' AS slug, 'Tubes' AS name, 643cde28-5ab8-4099-add7-af4d8ce901ac::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '1ba9af5e-5579-4a2e-ad1b-0a75c84ff339'::uuid AS category_uuid, 'fines' AS slug, 'Fines' AS name, 643cde28-5ab8-4099-add7-af4d8ce901ac::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'a603a43e-1562-4665-93b1-d8694bbbd472'::uuid AS category_uuid, 'epaisses' AS slug, 'Épaisses' AS name, 643cde28-5ab8-4099-add7-af4d8ce901ac::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '82f87451-9ccd-4ef8-90fd-4260a03a24aa'::uuid AS category_uuid, 'cachemire' AS slug, 'Cachemire' AS name, 643cde28-5ab8-4099-add7-af4d8ce901ac::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'e048524a-d34d-48b0-89b7-a290b9866194'::uuid AS category_uuid, 'laine-merinos' AS slug, 'Laine mérinos' AS name, 643cde28-5ab8-4099-add7-af4d8ce901ac::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '5eb23271-ff96-4b2b-bc5d-de954a834d52'::uuid AS category_uuid, 'alpaga' AS slug, 'Alpaga' AS name, 643cde28-5ab8-4099-add7-af4d8ce901ac::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '9741c590-cc8d-4f40-8ec7-249f0d976013'::uuid AS category_uuid, 'echarpes-foulards-coton' AS slug, 'Coton' AS name, 643cde28-5ab8-4099-add7-af4d8ce901ac::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'dc529a49-3acc-4b0c-92bf-5b31b79f2737'::uuid AS category_uuid, 'franges' AS slug, 'Franges' AS name, 643cde28-5ab8-4099-add7-af4d8ce901ac::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'b4541697-7a6b-4def-bbe3-4e75e2ab8ce1'::uuid AS category_uuid, 'pompons' AS slug, 'Pompons' AS name, 643cde28-5ab8-4099-add7-af4d8ce901ac::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'e99c0c82-0a58-4b41-82fc-0488f843fd67'::uuid AS category_uuid, 'carres-soie' AS slug, 'Carrés soie' AS name, 643cde28-5ab8-4099-add7-af4d8ce901ac::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '1d2ac2a7-6c97-418d-bf92-e89ada24d48f'::uuid AS category_uuid, 'rectangles' AS slug, 'Rectangles' AS name, 643cde28-5ab8-4099-add7-af4d8ce901ac::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'da9c31c7-aa48-467d-8fe5-4608e4078dfc'::uuid AS category_uuid, 'lavalliere' AS slug, 'Lavallière' AS name, 643cde28-5ab8-4099-add7-af4d8ce901ac::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '5552b06a-a9e4-4c79-9f0e-a02af15d7271'::uuid AS category_uuid, 'cheveux' AS slug, 'Cheveux' AS name, 643cde28-5ab8-4099-add7-af4d8ce901ac::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '6f57c3ab-d8d0-42f7-94af-b587c9d16531'::uuid AS category_uuid, 'echarpes-foulards-imprimes' AS slug, 'Imprimés' AS name, 643cde28-5ab8-4099-add7-af4d8ce901ac::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '155fd5b6-6ed5-46f1-b0ab-080ace862bd1'::uuid AS category_uuid, 'chales' AS slug, 'Châles' AS name, 643cde28-5ab8-4099-add7-af4d8ce901ac::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '76a53993-136d-48ec-9460-73e845b4f58b'::uuid AS category_uuid, 'etoles' AS slug, 'Étoles' AS name, 643cde28-5ab8-4099-add7-af4d8ce901ac::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '63ea1016-7e69-4bea-9fbe-f58ef5572924'::uuid AS category_uuid, 'poncho' AS slug, 'Poncho' AS name, 643cde28-5ab8-4099-add7-af4d8ce901ac::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '935b9376-9806-4349-9db2-5c70c98c37b7'::uuid AS category_uuid, 'pashmina' AS slug, 'Pashmina' AS name, 643cde28-5ab8-4099-add7-af4d8ce901ac::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '290b43b2-bf8c-4f3c-8e39-313e04db86e5'::uuid AS category_uuid, 'snood' AS slug, 'Snood' AS name, 643cde28-5ab8-4099-add7-af4d8ce901ac::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '9bb18654-d302-4cf2-8776-ba42ed11528e'::uuid AS category_uuid, 'cache-cou' AS slug, 'Cache-cou' AS name, 643cde28-5ab8-4099-add7-af4d8ce901ac::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '19a679ef-b877-4727-af29-027d2547beb7'::uuid AS category_uuid, 'polaire' AS slug, 'Polaire' AS name, 643cde28-5ab8-4099-add7-af4d8ce901ac::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'bed2cd8d-0cca-4263-8e41-3e70733a1cca'::uuid AS category_uuid, 'cuir-fourres' AS slug, 'Cuir fourrés' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '1cc74057-b75d-46bb-92e1-ce5885151d4f'::uuid AS category_uuid, 'laine-tricot' AS slug, 'Laine tricot' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'aaac3e13-a35e-45a4-b4aa-04682c3e1094'::uuid AS category_uuid, 'ski' AS slug, 'Ski' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'cb7729a5-ec3b-48c5-b6a5-3a52b355fd8b'::uuid AS category_uuid, 'moufles' AS slug, 'Moufles' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '0b5fec08-e245-4bc8-9f83-42bc7ff59457'::uuid AS category_uuid, 'mitaines' AS slug, 'Mitaines' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '9b0f12e9-4d50-4496-94f0-73a33799cffc'::uuid AS category_uuid, 'mi-saison' AS slug, 'Mi-saison' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'ff7541ba-2c53-4f84-9f52-8e7186e3dbb2'::uuid AS category_uuid, 'gants-dentelle' AS slug, 'Dentelle' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'e13c2fb2-32f2-4511-b581-6fc85eead9ef'::uuid AS category_uuid, 'conduite' AS slug, 'Conduite' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '138b5a55-d325-4a81-9df1-a5513692777e'::uuid AS category_uuid, 'tactiles' AS slug, 'Tactiles' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '8a70961e-c487-48ee-866d-430c883d1822'::uuid AS category_uuid, 'chauffants' AS slug, 'Chauffants' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '13839cdf-a7ac-404e-bb11-1beab32fabce'::uuid AS category_uuid, 'cravates-classiques' AS slug, 'Classiques' AS name, a2f9e840-ad54-4a7b-8f35-7811537c7f6a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '5395b411-6da8-4465-8d7a-636889789ab4'::uuid AS category_uuid, 'cravates-slim' AS slug, 'Slim' AS name, a2f9e840-ad54-4a7b-8f35-7811537c7f6a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'e67802c0-289b-45ef-b76e-0c9d53f9c572'::uuid AS category_uuid, 'cravates-skinny' AS slug, 'Skinny' AS name, a2f9e840-ad54-4a7b-8f35-7811537c7f6a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '8e44fa6e-a130-471c-adad-38998c01596a'::uuid AS category_uuid, 'soie' AS slug, 'Soie' AS name, a2f9e840-ad54-4a7b-8f35-7811537c7f6a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'b8ea0543-0b98-4d1e-8392-9753c343a55b'::uuid AS category_uuid, 'cravates-microfibre' AS slug, 'Microfibre' AS name, a2f9e840-ad54-4a7b-8f35-7811537c7f6a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '0ded1727-df2e-4f6d-9b8b-555bfbcacf7f'::uuid AS category_uuid, 'laine-tricot-cravate' AS slug, 'Laine tricot' AS name, a2f9e840-ad54-4a7b-8f35-7811537c7f6a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '2536097a-861a-4e6e-8618-cf384e4e01f5'::uuid AS category_uuid, 'pre-nouees' AS slug, 'Pré-nouées' AS name, a2f9e840-ad54-4a7b-8f35-7811537c7f6a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'e8a28bb1-17a8-464f-bca1-59fbe5798c02'::uuid AS category_uuid, 'rayures' AS slug, 'Rayures' AS name, a2f9e840-ad54-4a7b-8f35-7811537c7f6a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '27d1de45-4a32-437a-88c6-de10696cd903'::uuid AS category_uuid, 'pois' AS slug, 'Pois' AS name, a2f9e840-ad54-4a7b-8f35-7811537c7f6a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '37f8e609-46a4-42fc-a28f-9b1080cf45d8'::uuid AS category_uuid, 'carreaux-cravate' AS slug, 'Carreaux' AS name, a2f9e840-ad54-4a7b-8f35-7811537c7f6a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'd29cb238-d3e6-41c6-a59d-c08c0b48a823'::uuid AS category_uuid, 'paisley' AS slug, 'Paisley' AS name, a2f9e840-ad54-4a7b-8f35-7811537c7f6a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '61e1a981-34cb-4046-804a-ecadaeeb809e'::uuid AS category_uuid, 'noeuds-papillon' AS slug, 'Nœuds papillon' AS name, a2f9e840-ad54-4a7b-8f35-7811537c7f6a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '214e28c6-b296-4a91-b597-cdbb65a02d2e'::uuid AS category_uuid, 'lavallieres' AS slug, 'Lavallières' AS name, a2f9e840-ad54-4a7b-8f35-7811537c7f6a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'ef0d5386-0f08-4398-b205-8c61b915726e'::uuid AS category_uuid, 'boutons-manchette' AS slug, 'Boutons manchette' AS name, a2f9e840-ad54-4a7b-8f35-7811537c7f6a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '7c56e990-46a0-4483-8d0f-c25f9e8a9757'::uuid AS category_uuid, 'pinces-cravate' AS slug, 'Pinces' AS name, a2f9e840-ad54-4a7b-8f35-7811537c7f6a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'c1b6b591-8e2b-4578-9794-31f87a1bf870'::uuid AS category_uuid, 'chaines-cravate' AS slug, 'Chaînes' AS name, a2f9e840-ad54-4a7b-8f35-7811537c7f6a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '4c391fd8-f3df-4714-b4bf-b2ce34da5273'::uuid AS category_uuid, 'parapluies-compacts' AS slug, 'Parapluies compacts' AS name, 14e9a682-bcdb-4da0-997f-864c858dbbb4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'd5ca7a8f-54dd-46a2-a665-d2e9c49e9689'::uuid AS category_uuid, 'parapluies-droits' AS slug, 'Parapluies droits' AS name, 14e9a682-bcdb-4da0-997f-864c858dbbb4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '4adf9f2c-c700-4e06-bb93-050db9eef1d7'::uuid AS category_uuid, 'tempete' AS slug, 'Tempête' AS name, 14e9a682-bcdb-4da0-997f-864c858dbbb4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '4d8aaa66-1c95-4085-b105-50c72d4140fb'::uuid AS category_uuid, 'transparents' AS slug, 'Transparents' AS name, 14e9a682-bcdb-4da0-997f-864c858dbbb4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'e6932a9f-fcf5-46fe-be24-84ad090698c4'::uuid AS category_uuid, 'golf-parapluies' AS slug, 'Golf' AS name, 14e9a682-bcdb-4da0-997f-864c858dbbb4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'f6247b9d-61ba-4725-a66c-0c5d74bf0276'::uuid AS category_uuid, 'ombrelles' AS slug, 'Ombrelles' AS name, 14e9a682-bcdb-4da0-997f-864c858dbbb4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'aa3b37ab-ae2a-422c-946a-1a8b724011b4'::uuid AS category_uuid, 'pins' AS slug, 'Pins' AS name, 14e9a682-bcdb-4da0-997f-864c858dbbb4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '4c2db3bd-70b4-4bb2-a0e8-7ed2e1bcbf13'::uuid AS category_uuid, 'badges' AS slug, 'Badges' AS name, 14e9a682-bcdb-4da0-997f-864c858dbbb4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '55806edd-6918-4a02-9bfc-843513f7d472'::uuid AS category_uuid, 'broches' AS slug, 'Broches' AS name, 14e9a682-bcdb-4da0-997f-864c858dbbb4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'b160ac2e-4d67-4b7e-b4e4-0ee9d5087855'::uuid AS category_uuid, 'boutons' AS slug, 'Boutons' AS name, 14e9a682-bcdb-4da0-997f-864c858dbbb4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '7989dd2d-c307-4da7-89fb-9d829d971eb4'::uuid AS category_uuid, 'collants-opaques' AS slug, 'Collants opaques' AS name, 0654f607-67b9-4a83-9778-b20fb62e8804::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '93706785-7d44-4eef-a195-ee2d1fcf8157'::uuid AS category_uuid, 'collants-transparents' AS slug, 'Collants transparents' AS name, 0654f607-67b9-4a83-9778-b20fb62e8804::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '94e39b4b-e1f9-4528-b62e-e7fc1bf245ab'::uuid AS category_uuid, 'bas-autofixants' AS slug, 'Bas autofixants' AS name, 0654f607-67b9-4a83-9778-b20fb62e8804::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'c3d07cef-3471-4231-aece-ae585fb5f3b9'::uuid AS category_uuid, 'bas-couture' AS slug, 'Bas couture' AS name, 0654f607-67b9-4a83-9778-b20fb62e8804::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),
  level = EXCLUDED.level,
  category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),
  updated_at = NOW();

-- Lot 17 terminé: 100 entrées
