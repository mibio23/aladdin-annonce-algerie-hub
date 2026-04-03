-- ============================================================
-- CHUNK 37/49 — 100 catégories
-- Total: 4836 catégories
-- Exécuter dans l'ordre dans Supabase SQL Editor
-- ============================================================

INSERT INTO public.categories
  (category_uuid, slug, name, parent_id, level, is_active, created_at, updated_at)
VALUES
  SELECT 'ed4790ae-4519-4b63-b93f-9fa46492ff44'::uuid AS category_uuid, 'sauces-salees' AS slug, 'sauces salées' AS name, 79a7d925-d83b-4a3b-b28e-01991dba2197::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '445ba97b-7909-4c71-9571-f3f645f8ee48'::uuid AS category_uuid, 'sucre' AS slug, 'sucre' AS name, 92173df4-ff49-4227-99cd-384dd0a75496::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'aa910f7f-b022-411a-8b36-e6cb91ab7a8c'::uuid AS category_uuid, 'epicerie-sucree-miel' AS slug, 'miel' AS name, 92173df4-ff49-4227-99cd-384dd0a75496::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'e791a294-b11d-47ae-ab55-85ea01fa320d'::uuid AS category_uuid, 'epicerie-sucree-confitures' AS slug, 'confitures' AS name, 92173df4-ff49-4227-99cd-384dd0a75496::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '76f3b473-b050-460e-9880-dbcf39f5518c'::uuid AS category_uuid, 'pate-a-tartiner' AS slug, 'pâte à tartiner' AS name, 92173df4-ff49-4227-99cd-384dd0a75496::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '03965896-6b51-4911-b4f1-aa3a5af72329'::uuid AS category_uuid, 'biscuits' AS slug, 'biscuits' AS name, 92173df4-ff49-4227-99cd-384dd0a75496::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '1f044919-8724-4496-b689-eed7565633c6'::uuid AS category_uuid, 'gateaux' AS slug, 'gâteaux' AS name, 92173df4-ff49-4227-99cd-384dd0a75496::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '73c76623-4cc0-4bad-8f8a-0497782bfb3a'::uuid AS category_uuid, 'cereales-sucrees' AS slug, 'céréales sucrées' AS name, 92173df4-ff49-4227-99cd-384dd0a75496::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'a46cf922-05c7-4481-9ef4-f2cb8d16eb02'::uuid AS category_uuid, 'epicerie-sucree-sirops' AS slug, 'sirops' AS name, 92173df4-ff49-4227-99cd-384dd0a75496::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '60db721b-9f92-4d47-a3ef-d5aaf82ade6e'::uuid AS category_uuid, 'desserts-instantanes' AS slug, 'desserts instantanés' AS name, 92173df4-ff49-4227-99cd-384dd0a75496::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '55e7f887-4821-41a4-8a15-4e8e208bfb5b'::uuid AS category_uuid, 'thon' AS slug, 'thon' AS name, cd0c4195-6e0f-4c9c-8fd7-18dc62c2357b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '29115750-e428-4e6b-a485-4850c36db2d8'::uuid AS category_uuid, 'sardines' AS slug, 'sardines' AS name, cd0c4195-6e0f-4c9c-8fd7-18dc62c2357b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'bca56da5-1692-4475-93c2-f443c17cc352'::uuid AS category_uuid, 'maquereaux' AS slug, 'maquereaux' AS name, cd0c4195-6e0f-4c9c-8fd7-18dc62c2357b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'f79ee140-4d58-46f1-9114-0b04c0f14853'::uuid AS category_uuid, 'mais' AS slug, 'maïs' AS name, cd0c4195-6e0f-4c9c-8fd7-18dc62c2357b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '61830b98-9d5a-4b43-a5d9-7beae40f3fae'::uuid AS category_uuid, 'petits-pois' AS slug, 'petits pois' AS name, cd0c4195-6e0f-4c9c-8fd7-18dc62c2357b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'a058139f-2a62-4008-94b4-b20d30a09ddb'::uuid AS category_uuid, 'haricots' AS slug, 'haricots' AS name, cd0c4195-6e0f-4c9c-8fd7-18dc62c2357b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '89db5550-5a4b-4393-b550-5346227b3465'::uuid AS category_uuid, 'tomates-pelees' AS slug, 'tomates pelées' AS name, cd0c4195-6e0f-4c9c-8fd7-18dc62c2357b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '4641a1ff-69a5-4f56-bb80-ab741175ba99'::uuid AS category_uuid, 'sauces-conserve' AS slug, 'sauces en conserve' AS name, cd0c4195-6e0f-4c9c-8fd7-18dc62c2357b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'caa9ae30-4cab-418a-b3e3-96abc59b4aa4'::uuid AS category_uuid, 'plats-prepares' AS slug, 'plats préparés' AS name, cd0c4195-6e0f-4c9c-8fd7-18dc62c2357b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '7622f16f-9271-4a6e-9c5d-7217b37eb979'::uuid AS category_uuid, 'yaourts' AS slug, 'yaourts' AS name, 7630593d-fb16-472b-b1e4-140766a6e406::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '0f6b9a97-c7f7-4a0a-822a-d812a9919d15'::uuid AS category_uuid, 'fromages-frais' AS slug, 'fromages frais' AS name, 7630593d-fb16-472b-b1e4-140766a6e406::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'eeb00e7d-4d21-40c7-b2bd-ced9e4dc6c0d'::uuid AS category_uuid, 'lait' AS slug, 'lait' AS name, 7630593d-fb16-472b-b1e4-140766a6e406::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '93e47038-4bac-40e7-a6d8-81010a7ef544'::uuid AS category_uuid, 'beurre' AS slug, 'beurre' AS name, 7630593d-fb16-472b-b1e4-140766a6e406::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'adc274db-0ec8-48c7-b79e-e94db146c7b8'::uuid AS category_uuid, 'creme' AS slug, 'crème' AS name, 7630593d-fb16-472b-b1e4-140766a6e406::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '0b1c6be2-3ac7-41e5-a96f-de2d0ddde7b2'::uuid AS category_uuid, 'oeufs' AS slug, 'œufs' AS name, 7630593d-fb16-472b-b1e4-140766a6e406::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '4b005197-6c15-446e-bcf7-fdc47bf626a5'::uuid AS category_uuid, 'jus-frais' AS slug, 'jus frais' AS name, 7630593d-fb16-472b-b1e4-140766a6e406::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'b65b6fef-6ba3-4543-bdfd-744f649e70b2'::uuid AS category_uuid, 'charcuterie-frais' AS slug, 'charcuterie' AS name, 7630593d-fb16-472b-b1e4-140766a6e406::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'a44aa8af-79ae-4804-8a92-0844a3f247c2'::uuid AS category_uuid, 'produits-traiteurs' AS slug, 'produits traiteurs' AS name, 7630593d-fb16-472b-b1e4-140766a6e406::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'e2259e65-5ae2-4bed-b263-955f8020e1de'::uuid AS category_uuid, 'legumes-surgeles' AS slug, 'légumes surgelés' AS name, 02f657fa-ba42-4c05-8340-fb0247378861::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '0130fef5-93e1-419d-88ca-552be8eeebd9'::uuid AS category_uuid, 'viandes-surgeles' AS slug, 'viandes' AS name, 02f657fa-ba42-4c05-8340-fb0247378861::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'b131d72b-215c-489f-9582-f5e6508d1487'::uuid AS category_uuid, 'poissons-surgeles' AS slug, 'poissons' AS name, 02f657fa-ba42-4c05-8340-fb0247378861::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '93e697f2-c641-448f-b5cc-ef07e0fa09d2'::uuid AS category_uuid, 'fruits-surgeles' AS slug, 'fruits' AS name, 02f657fa-ba42-4c05-8340-fb0247378861::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'd935b5b6-5624-4d9d-96e6-743f2cfa9b93'::uuid AS category_uuid, 'pizzas-surgeles' AS slug, 'pizzas' AS name, 02f657fa-ba42-4c05-8340-fb0247378861::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '5306e416-7e72-4971-abbd-b648f3212240'::uuid AS category_uuid, 'nuggets' AS slug, 'nuggets' AS name, 02f657fa-ba42-4c05-8340-fb0247378861::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '2b538607-9253-4222-b6bf-f95db39023c9'::uuid AS category_uuid, 'patisseries-surgeles' AS slug, 'pâtisseries' AS name, 02f657fa-ba42-4c05-8340-fb0247378861::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '44b57716-c26c-4b4f-9e30-27d264b6784d'::uuid AS category_uuid, 'glaces' AS slug, 'glaces' AS name, 02f657fa-ba42-4c05-8340-fb0247378861::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '9d5394ba-0bc3-4a4f-a7db-2b857ff4b904'::uuid AS category_uuid, 'viande-rouge' AS slug, 'viande rouge' AS name, ecc1ebb3-819c-47ec-b95d-25b94d5a47e7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '722fa9f6-e760-42ad-acea-3c9bcd7686ac'::uuid AS category_uuid, 'viande-blanche' AS slug, 'viande blanche' AS name, ecc1ebb3-819c-47ec-b95d-25b94d5a47e7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '59b5f6bc-d193-42a2-8bea-af30d84642f5'::uuid AS category_uuid, 'volaille' AS slug, 'volaille' AS name, ecc1ebb3-819c-47ec-b95d-25b94d5a47e7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'fb6492e8-b8ff-4425-b11c-807f6fb15231'::uuid AS category_uuid, 'dinde' AS slug, 'dinde' AS name, ecc1ebb3-819c-47ec-b95d-25b94d5a47e7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '40661b66-1b0a-4280-b9c8-dd9004d74655'::uuid AS category_uuid, 'merguez' AS slug, 'merguez' AS name, ecc1ebb3-819c-47ec-b95d-25b94d5a47e7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '714d4a47-3354-4704-92db-72bea008af70'::uuid AS category_uuid, 'charcuterie' AS slug, 'charcuterie' AS name, ecc1ebb3-819c-47ec-b95d-25b94d5a47e7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'dab9970b-759a-41e5-a6a1-368a97449ed7'::uuid AS category_uuid, 'abats' AS slug, 'abats' AS name, ecc1ebb3-819c-47ec-b95d-25b94d5a47e7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '87cb69e4-2857-4e79-9685-633b7c97021f'::uuid AS category_uuid, 'viandes-marinees' AS slug, 'viandes marinées' AS name, ecc1ebb3-819c-47ec-b95d-25b94d5a47e7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'f3e3e417-a81f-47b5-9c3c-71c58bc5ee36'::uuid AS category_uuid, 'poissons-frais' AS slug, 'poissons frais' AS name, ec6f1854-7a4b-4a81-80b3-d9455e5e00bc::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '14708a1d-1a70-4ac0-8444-05db2d8881e7'::uuid AS category_uuid, 'poissons-congeles' AS slug, 'poissons congelés' AS name, ec6f1854-7a4b-4a81-80b3-d9455e5e00bc::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'd1630072-562b-4f98-9ee1-933d1d597961'::uuid AS category_uuid, 'crustaces' AS slug, 'crustacés' AS name, ec6f1854-7a4b-4a81-80b3-d9455e5e00bc::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '756f3191-f75a-40f0-8b81-1b8bd96e5609'::uuid AS category_uuid, 'mollusques' AS slug, 'mollusques' AS name, ec6f1854-7a4b-4a81-80b3-d9455e5e00bc::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'ddda25be-7b89-4e6b-b79b-673c97e23715'::uuid AS category_uuid, 'fruits-de-mer-prepares' AS slug, 'fruits de mer préparés' AS name, ec6f1854-7a4b-4a81-80b3-d9455e5e00bc::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '3d2e2e22-6e67-4bbf-9785-d54269a472f3'::uuid AS category_uuid, 'saumon' AS slug, 'saumon' AS name, ec6f1854-7a4b-4a81-80b3-d9455e5e00bc::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '97fd9d96-7a17-4cb0-9597-9ba2f900ecb4'::uuid AS category_uuid, 'thon-poisson' AS slug, 'thon' AS name, ec6f1854-7a4b-4a81-80b3-d9455e5e00bc::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '19509273-12b7-47a8-9f81-a329da881601'::uuid AS category_uuid, 'fruits-frais' AS slug, 'fruits frais' AS name, b676079a-c3f9-4422-8b00-baeaa117185c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'a471ce80-9285-4c23-b7c0-6db3e94cac58'::uuid AS category_uuid, 'fruits-legumes-legumes-frais' AS slug, 'légumes frais' AS name, b676079a-c3f9-4422-8b00-baeaa117185c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'bab4f882-6425-4a8b-8e49-339ca4769ef6'::uuid AS category_uuid, 'fruits-legumes-fruits-secs' AS slug, 'fruits secs' AS name, b676079a-c3f9-4422-8b00-baeaa117185c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '152a2a4f-e4db-4b38-ba8b-020a149c76a9'::uuid AS category_uuid, 'fruits-deshydrates' AS slug, 'fruits déshydratés' AS name, b676079a-c3f9-4422-8b00-baeaa117185c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'edb04652-b233-4b81-86d1-69954f3ad113'::uuid AS category_uuid, 'legumes-bio' AS slug, 'légumes biologiques' AS name, b676079a-c3f9-4422-8b00-baeaa117185c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '83fc749a-2e16-4900-8d6f-b5dc66a81d40'::uuid AS category_uuid, 'produits-de-saison' AS slug, 'produits de saison' AS name, b676079a-c3f9-4422-8b00-baeaa117185c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'ff4b10c3-f018-4212-b092-64b4b55487bd'::uuid AS category_uuid, 'pains' AS slug, 'pains' AS name, 218843ce-f4ce-442b-899d-946692eda7a2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'c3d3754a-afc0-472b-97e9-cac51375362e'::uuid AS category_uuid, 'boulangerie-patisserie-baguettes' AS slug, 'baguettes' AS name, 218843ce-f4ce-442b-899d-946692eda7a2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '20ec603b-5b57-4f6c-b103-f13c645890ac'::uuid AS category_uuid, 'croissants' AS slug, 'croissants' AS name, 218843ce-f4ce-442b-899d-946692eda7a2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '3a7d3270-d66d-4c01-bce7-0a67fe54afab'::uuid AS category_uuid, 'brioches' AS slug, 'brioches' AS name, 218843ce-f4ce-442b-899d-946692eda7a2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '9b9a1917-a700-498d-b6d1-3a9e3b287b8f'::uuid AS category_uuid, 'patisseries-locales' AS slug, 'pâtisseries locales' AS name, 218843ce-f4ce-442b-899d-946692eda7a2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '03ba59f2-c8e0-480b-9546-217b39d1b170'::uuid AS category_uuid, 'gateaux-patisserie' AS slug, 'gâteaux' AS name, 218843ce-f4ce-442b-899d-946692eda7a2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '84c16e39-4e80-4fe3-9efd-036d4d146cfe'::uuid AS category_uuid, 'biscuits-artisanaux' AS slug, 'biscuits artisanaux' AS name, 218843ce-f4ce-442b-899d-946692eda7a2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'c4d37fcd-e585-463c-85c3-4e6fe3f5fb39'::uuid AS category_uuid, 'viennoiseries' AS slug, 'viennoiseries' AS name, 218843ce-f4ce-442b-899d-946692eda7a2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '9d8e0cbc-d262-48e2-91bf-71b367982c5e'::uuid AS category_uuid, 'lait-produit' AS slug, 'lait' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '2394fb71-966d-4007-a868-07ac0d44fb81'::uuid AS category_uuid, 'fromage' AS slug, 'fromage' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '5373c20e-a7a0-40c7-b343-7e139197812c'::uuid AS category_uuid, 'yaourt' AS slug, 'yaourt' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'f014f189-97e3-4c70-9c4a-eb74bb35b500'::uuid AS category_uuid, 'creme-fraiche' AS slug, 'crème fraîche' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '2583a84b-db05-42c3-9134-743a8001f6b9'::uuid AS category_uuid, 'beurre-produit' AS slug, 'beurre' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '35b119ab-868c-436a-ab37-087bedaa5728'::uuid AS category_uuid, 'produits-laitiers-fromages-locaux' AS slug, 'fromages locaux' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'f2abf693-cfaa-462a-87be-a27f1581a5ae'::uuid AS category_uuid, 'fromages-europeens' AS slug, 'fromages européens' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '94fbc8fa-6937-4887-b843-e969b64f6512'::uuid AS category_uuid, 'huile-olive' AS slug, 'huile d’olive' AS name, acb4ab3b-10dc-450c-a14c-98e4cb2322ce::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'e26f3752-cb05-4250-8cbd-51c56d7c8e0e'::uuid AS category_uuid, 'huile-tournesol' AS slug, 'huile de tournesol' AS name, acb4ab3b-10dc-450c-a14c-98e4cb2322ce::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'a81f6698-d353-472b-b868-4ff5ace905b1'::uuid AS category_uuid, 'vinaigre' AS slug, 'vinaigre' AS name, acb4ab3b-10dc-450c-a14c-98e4cb2322ce::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '2f0d86d9-f0d6-4f8b-9c18-ad35533d5b8f'::uuid AS category_uuid, 'moutarde' AS slug, 'moutarde' AS name, acb4ab3b-10dc-450c-a14c-98e4cb2322ce::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '51182175-2fc6-47c9-96dd-f936c1edfc12'::uuid AS category_uuid, 'mayonnaise' AS slug, 'mayonnaise' AS name, acb4ab3b-10dc-450c-a14c-98e4cb2322ce::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'd9074c5d-eb97-49ba-8d72-31f2ad2177dc'::uuid AS category_uuid, 'sauces-condiments' AS slug, 'sauces' AS name, acb4ab3b-10dc-450c-a14c-98e4cb2322ce::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '7f3c04ff-aaed-48f5-b447-a30feeb591b8'::uuid AS category_uuid, 'epices-condiments' AS slug, 'épices' AS name, acb4ab3b-10dc-450c-a14c-98e4cb2322ce::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'f52efda3-cf11-47a7-818d-40abbd6811e9'::uuid AS category_uuid, 'herbes' AS slug, 'herbes' AS name, acb4ab3b-10dc-450c-a14c-98e4cb2322ce::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '4858683e-9db8-4add-99df-4d6f9193c440'::uuid AS category_uuid, 'aromates' AS slug, 'aromates' AS name, acb4ab3b-10dc-450c-a14c-98e4cb2322ce::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'a91cc277-2493-4908-b80d-27597477e686'::uuid AS category_uuid, 'bouillons' AS slug, 'bouillons' AS name, acb4ab3b-10dc-450c-a14c-98e4cb2322ce::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '4565448e-945c-4b4d-8bef-b4229bd26495'::uuid AS category_uuid, 'sel' AS slug, 'sel' AS name, c5d936c7-4c9f-4882-99b0-797e260f7df7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '4a57924a-96f8-4657-9650-dddcda232d52'::uuid AS category_uuid, 'poivre' AS slug, 'poivre' AS name, c5d936c7-4c9f-4882-99b0-797e260f7df7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '65c7d51e-e907-4c90-a9f7-c6357a9df6be'::uuid AS category_uuid, 'paprika' AS slug, 'paprika' AS name, c5d936c7-4c9f-4882-99b0-797e260f7df7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'd1342e9e-a719-45ed-9102-f7a95518ba73'::uuid AS category_uuid, 'cumin' AS slug, 'cumin' AS name, c5d936c7-4c9f-4882-99b0-797e260f7df7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'a19a36b6-6687-47dc-8147-433bd63c2576'::uuid AS category_uuid, 'curcuma' AS slug, 'curcuma' AS name, c5d936c7-4c9f-4882-99b0-797e260f7df7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '85dc2cea-1bce-4131-afa5-87763989634a'::uuid AS category_uuid, 'epices-orientales' AS slug, 'épices orientales' AS name, c5d936c7-4c9f-4882-99b0-797e260f7df7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'ce585fad-2a6d-4478-be1d-90246d552629'::uuid AS category_uuid, 'melanges-prets' AS slug, 'mélanges prêts' AS name, c5d936c7-4c9f-4882-99b0-797e260f7df7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '78c1610c-49eb-46f5-a7df-767f5f1ab4c7'::uuid AS category_uuid, 'assaisonnements-barbecue' AS slug, 'assaisonnements barbecue' AS name, c5d936c7-4c9f-4882-99b0-797e260f7df7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '0db94464-7b2a-49a1-b462-48b67dc040a8'::uuid AS category_uuid, 'eaux-minerales' AS slug, 'eaux minérales' AS name, 4c3495cb-82c8-4ae0-b476-d7feed8b5122::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '65244d0d-b191-4192-96e4-eb19b771b07a'::uuid AS category_uuid, 'boissons-gazeuses' AS slug, 'boissons gazeuses' AS name, 4c3495cb-82c8-4ae0-b476-d7feed8b5122::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '52cc6778-43cd-4c52-8eee-e837a7374be1'::uuid AS category_uuid, 'jus' AS slug, 'jus' AS name, 4c3495cb-82c8-4ae0-b476-d7feed8b5122::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '6e6c689c-46dc-4b7a-9576-18dd58fffaba'::uuid AS category_uuid, 'boissons-boissons-energetiques' AS slug, 'boissons énergétiques' AS name, 4c3495cb-82c8-4ae0-b476-d7feed8b5122::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '6b202f2f-4ca0-4278-b5ef-6d53dad0304a'::uuid AS category_uuid, 'thes-glaces' AS slug, 'thés glacés' AS name, 4c3495cb-82c8-4ae0-b476-d7feed8b5122::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '7233abc6-137a-416f-9cb2-145c334a2b9d'::uuid AS category_uuid, 'infusions-pretes-a-boire' AS slug, 'infusions prêtes à boire' AS name, 4c3495cb-82c8-4ae0-b476-d7feed8b5122::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '79e69125-1ca1-4ee7-b976-11e92ed9696d'::uuid AS category_uuid, 'cafe-moulu' AS slug, 'café moulu' AS name, bab19e33-cd6e-4da7-a449-611152c02f66::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '457cc4ee-d763-4b90-87ba-6a05e659d329'::uuid AS category_uuid, 'cafe-en-grains' AS slug, 'café en grains' AS name, bab19e33-cd6e-4da7-a449-611152c02f66::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'ca05711f-d25d-4c75-b574-044f0b68d123'::uuid AS category_uuid, 'cafe-the-capsules' AS slug, 'capsules' AS name, bab19e33-cd6e-4da7-a449-611152c02f66::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'e59f3da5-c31b-4ace-8bfa-3ea9ddc60217'::uuid AS category_uuid, 'cafe-instantane' AS slug, 'café instantané' AS name, bab19e33-cd6e-4da7-a449-611152c02f66::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),
  level = EXCLUDED.level,
  category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),
  updated_at = NOW();

-- Lot 37 terminé: 100 entrées
