-- ============================================================
-- CHUNK 29/49 — 100 catégories
-- Total: 4836 catégories
-- Exécuter dans l'ordre dans Supabase SQL Editor
-- ============================================================

INSERT INTO public.categories
  (category_uuid, slug, name, parent_id, level, is_active, created_at, updated_at)
VALUES
  SELECT '17592d3d-4e06-435a-9ac1-ebd4933e8c03'::uuid AS category_uuid, 'chaines-renforcees' AS slug, 'Chaînes renforcées' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '3bdb8275-1708-44fc-91f6-0ce1635b93c0'::uuid AS category_uuid, 'securite-protection-gants-de-protection' AS slug, 'Gants de protection' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'd52ad4d4-8648-4ef5-846b-bb0c1c7a1e1e'::uuid AS category_uuid, 'gants-anti-coupure' AS slug, 'Gants anti-coupure' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'd98627fa-ebff-4591-8afe-73c1615a6767'::uuid AS category_uuid, 'lunettes-de-securite' AS slug, 'Lunettes de sécurité' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '639b0894-a298-4a4e-9d86-3c09636cb3b7'::uuid AS category_uuid, 'visieres' AS slug, 'Visières' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'c8b4f71b-0b92-4776-892b-10eb4ba4f5dd'::uuid AS category_uuid, 'securite-protection-casques-de-chantier' AS slug, 'Casques de chantier' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '943e9744-1cdd-4835-af4b-8f19dd63037c'::uuid AS category_uuid, 'securite-protection-chaussures-de-securite' AS slug, 'Chaussures de sécurité' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'acd178ae-e178-439b-bfb5-e27bf6a82281'::uuid AS category_uuid, 'genouilleres' AS slug, 'Genouillères' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'b338717e-330d-47c9-b87e-b26333d374cc'::uuid AS category_uuid, 'securite-protection-masques-anti-poussiere' AS slug, 'Masques anti-poussière' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '908e5608-4da8-4b7a-bfdc-50fb97e6511e'::uuid AS category_uuid, 'securite-protection-harnais-de-securite' AS slug, 'Harnais de sécurité' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'd0bf3ce6-7e72-48c5-9e9f-1c087f789819'::uuid AS category_uuid, 'materiel-de-plomberie-robinets' AS slug, 'Robinets' AS name, 7512c13c-f028-4673-9fac-95e4ebd4a8bd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'a3ba2aa2-2e2a-4464-84f0-f57d0c8b475c'::uuid AS category_uuid, 'mitigeurs' AS slug, 'Mitigeurs' AS name, 7512c13c-f028-4673-9fac-95e4ebd4a8bd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'e9a48711-09ca-47ba-bfe3-a09cb92af6df'::uuid AS category_uuid, 'flexibles' AS slug, 'Flexibles' AS name, 7512c13c-f028-4673-9fac-95e4ebd4a8bd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'ab525e3f-1889-46c8-be78-8a223d667c34'::uuid AS category_uuid, 'raccords-pvc' AS slug, 'Raccords PVC' AS name, 7512c13c-f028-4673-9fac-95e4ebd4a8bd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '5853d51d-de3f-4932-81c4-a30e9b4aaec8'::uuid AS category_uuid, 'raccords-multicouches' AS slug, 'Raccords multicouches' AS name, 7512c13c-f028-4673-9fac-95e4ebd4a8bd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '231436ed-f4ee-429d-9e64-b7efdbf10417'::uuid AS category_uuid, 'raccords-laiton' AS slug, 'Raccords laiton' AS name, 7512c13c-f028-4673-9fac-95e4ebd4a8bd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'f8c476d3-2899-410e-83f6-0d30b67f222c'::uuid AS category_uuid, 'tuyaux-pvc' AS slug, 'Tuyaux PVC' AS name, 7512c13c-f028-4673-9fac-95e4ebd4a8bd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '5b596dba-61f2-4a45-be9f-3be63b246586'::uuid AS category_uuid, 'tuyaux-per' AS slug, 'Tuyaux PER' AS name, 7512c13c-f028-4673-9fac-95e4ebd4a8bd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '606b8df6-f180-451b-b299-d0d8dc8bc529'::uuid AS category_uuid, 'siphons' AS slug, 'Siphons' AS name, 7512c13c-f028-4673-9fac-95e4ebd4a8bd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '94dc9413-ea04-4b96-91aa-cdb8f3d54ae2'::uuid AS category_uuid, 'joints-fibre' AS slug, 'Joints fibre' AS name, 7512c13c-f028-4673-9fac-95e4ebd4a8bd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '262c320e-7a24-4e5d-94c6-349eb2885050'::uuid AS category_uuid, 'joints-caoutchouc' AS slug, 'Joints caoutchouc' AS name, 7512c13c-f028-4673-9fac-95e4ebd4a8bd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'e24f8c34-8d79-4225-999b-2d5560db0bdc'::uuid AS category_uuid, 'colliers-de-serrage' AS slug, 'Colliers de serrage' AS name, 7512c13c-f028-4673-9fac-95e4ebd4a8bd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '6304b127-26a7-4b42-a19f-f3905b045859'::uuid AS category_uuid, 'vannes-d-arret' AS slug, 'Vannes d’arrêt' AS name, 7512c13c-f028-4673-9fac-95e4ebd4a8bd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '5f488037-6af5-44b8-bab5-926a2141c6e6'::uuid AS category_uuid, 'bondes' AS slug, 'Bondes' AS name, 7512c13c-f028-4673-9fac-95e4ebd4a8bd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'd5521c79-75cd-4582-b230-8fe5f34af213'::uuid AS category_uuid, 'filtres-anti-calcaire' AS slug, 'Filtres anti-calcaire' AS name, 7512c13c-f028-4673-9fac-95e4ebd4a8bd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'c2bc46e8-7487-440c-8211-8214a5be705d'::uuid AS category_uuid, 'tubes-devacuation' AS slug, 'Tubes d’évacuation' AS name, 7512c13c-f028-4673-9fac-95e4ebd4a8bd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'bef71f31-4366-46d3-a272-2d09556bf0f4'::uuid AS category_uuid, 'coudes' AS slug, 'Coudes' AS name, 7512c13c-f028-4673-9fac-95e4ebd4a8bd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'aa3a319a-f008-4298-814e-0c7a5f9a12e2'::uuid AS category_uuid, 'tes' AS slug, 'Tés' AS name, 7512c13c-f028-4673-9fac-95e4ebd4a8bd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '53daab2a-0ed2-4699-b435-2a7887f5a62c'::uuid AS category_uuid, 'reductions' AS slug, 'Réductions' AS name, 7512c13c-f028-4673-9fac-95e4ebd4a8bd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'e722ae48-fdba-4c8c-b74a-d49c5893d9a7'::uuid AS category_uuid, 'prises-murales' AS slug, 'Prises murales' AS name, 55abb76e-f6b8-43ea-9d17-c248b20e9cb9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '1b1a3bbc-cc0e-4c67-9e11-d2c0bf6487a2'::uuid AS category_uuid, 'prises-renforcees' AS slug, 'Prises renforcées' AS name, 55abb76e-f6b8-43ea-9d17-c248b20e9cb9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'e6df1f07-45fe-49b6-977e-6041e90425b0'::uuid AS category_uuid, 'interrupteurs-simples' AS slug, 'Interrupteurs simples' AS name, 55abb76e-f6b8-43ea-9d17-c248b20e9cb9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '7c37a7fb-7f06-4b7e-981a-24484643d25a'::uuid AS category_uuid, 'interrupteurs-va-et-vient' AS slug, 'Interrupteurs va-et-vient' AS name, 55abb76e-f6b8-43ea-9d17-c248b20e9cb9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '000b3fb3-1ad0-44e5-9f21-07da396e2036'::uuid AS category_uuid, 'interrupteurs-automatiques' AS slug, 'Interrupteurs automatiques' AS name, 55abb76e-f6b8-43ea-9d17-c248b20e9cb9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '1e1b588c-f8aa-4d09-964f-f844e658feea'::uuid AS category_uuid, 'cables-electriques-rigides' AS slug, 'Câbles électriques rigides' AS name, 55abb76e-f6b8-43ea-9d17-c248b20e9cb9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '555c6a7f-b83a-4344-8fe5-3bfc34a29ece'::uuid AS category_uuid, 'cables-souples' AS slug, 'Câbles souples' AS name, 55abb76e-f6b8-43ea-9d17-c248b20e9cb9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'b55987d2-fee8-42e7-aa68-04b90ed0d55e'::uuid AS category_uuid, 'gaines-isolantes' AS slug, 'Gaines isolantes' AS name, 55abb76e-f6b8-43ea-9d17-c248b20e9cb9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'dd7c8080-7e66-4ef7-a6a0-ab3aa51c91d6'::uuid AS category_uuid, 'gaines-icta' AS slug, 'Gaines ICTA' AS name, 55abb76e-f6b8-43ea-9d17-c248b20e9cb9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'ba3e8f8f-49cb-49ca-acb2-b4182780ac97'::uuid AS category_uuid, 'materiel-electrique-disjoncteurs' AS slug, 'Disjoncteurs' AS name, 55abb76e-f6b8-43ea-9d17-c248b20e9cb9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'ecacc63f-1636-4eb7-a50b-e13e1f1bd8c3'::uuid AS category_uuid, 'materiel-electrique-tableaux-electriques' AS slug, 'Tableaux électriques' AS name, 55abb76e-f6b8-43ea-9d17-c248b20e9cb9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '9389a78a-b382-453b-b541-383815ea1063'::uuid AS category_uuid, 'materiel-electrique-coffrets' AS slug, 'Coffrets' AS name, 55abb76e-f6b8-43ea-9d17-c248b20e9cb9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '0cad2bab-2003-4ef8-8356-2e7786cdb55f'::uuid AS category_uuid, 'transformateurs' AS slug, 'Transformateurs' AS name, 55abb76e-f6b8-43ea-9d17-c248b20e9cb9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '53e2aec3-9bae-4846-bd77-84d7b40e2adf'::uuid AS category_uuid, 'multiprises' AS slug, 'Multiprises' AS name, 55abb76e-f6b8-43ea-9d17-c248b20e9cb9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '52775146-21eb-40cf-81f2-02e6e3a8a71b'::uuid AS category_uuid, 'rallonges' AS slug, 'Rallonges' AS name, 55abb76e-f6b8-43ea-9d17-c248b20e9cb9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '8d5b6c70-02ed-4b67-82cb-bd45c403ce83'::uuid AS category_uuid, 'connecteurs-rapides' AS slug, 'Connecteurs rapides' AS name, 55abb76e-f6b8-43ea-9d17-c248b20e9cb9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'e97ccc25-8d42-4b1f-b93d-51b2bb1aabd0'::uuid AS category_uuid, 'dominos' AS slug, 'Dominos' AS name, 55abb76e-f6b8-43ea-9d17-c248b20e9cb9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'f37fda27-6e7a-4b60-bcfa-031225596d4b'::uuid AS category_uuid, 'goulottes-murales' AS slug, 'Goulottes murales' AS name, 55abb76e-f6b8-43ea-9d17-c248b20e9cb9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'f2acf860-928c-46a6-a2c6-b4118152ad0d'::uuid AS category_uuid, 'colles-fortes' AS slug, 'Colles fortes' AS name, cf507d8e-da22-4999-b6d8-f03c0185f28e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '1de7345b-da6c-4ba2-ba9f-dd10daadf24f'::uuid AS category_uuid, 'colles-universelles' AS slug, 'Colles universelles' AS name, cf507d8e-da22-4999-b6d8-f03c0185f28e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '80dc7d5a-b122-4c27-9585-01a071daf82b'::uuid AS category_uuid, 'colles-pvc' AS slug, 'Colles PVC' AS name, cf507d8e-da22-4999-b6d8-f03c0185f28e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '023abac8-a3fa-4763-a4a2-64ff92aa81b4'::uuid AS category_uuid, 'colles-a-bois' AS slug, 'Colles à bois' AS name, cf507d8e-da22-4999-b6d8-f03c0185f28e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '3d4922e2-a3dd-4050-8f8e-2108927c23b5'::uuid AS category_uuid, 'epoxy' AS slug, 'Epoxy' AS name, cf507d8e-da22-4999-b6d8-f03c0185f28e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '424a295e-8b21-43cf-b229-ebb1806bfea7'::uuid AS category_uuid, 'silicone' AS slug, 'Silicone' AS name, cf507d8e-da22-4999-b6d8-f03c0185f28e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'cb8f1a4b-b149-4498-b20b-b30c4df8b00f'::uuid AS category_uuid, 'mastic' AS slug, 'Mastic' AS name, cf507d8e-da22-4999-b6d8-f03c0185f28e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'eea310be-239c-49c4-85b1-a63fe2b81a9a'::uuid AS category_uuid, 'adhesifs-double-face' AS slug, 'Adhésifs double face' AS name, cf507d8e-da22-4999-b6d8-f03c0185f28e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'bdb714c9-1273-4210-a7b4-db77acdfa49c'::uuid AS category_uuid, 'ruban-isolant' AS slug, 'Ruban isolant' AS name, cf507d8e-da22-4999-b6d8-f03c0185f28e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '2c87f60c-32e6-493a-a846-38fca2f6cf72'::uuid AS category_uuid, 'ruban-toile' AS slug, 'Ruban toilé' AS name, cf507d8e-da22-4999-b6d8-f03c0185f28e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '1a642aeb-a3b5-4bc4-beb8-12a431f65482'::uuid AS category_uuid, 'ruban-arme' AS slug, 'Ruban armé' AS name, cf507d8e-da22-4999-b6d8-f03c0185f28e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '5bae23e5-2aac-4adf-ade0-762349e74603'::uuid AS category_uuid, 'ruban-de-masquage' AS slug, 'Ruban de masquage' AS name, cf507d8e-da22-4999-b6d8-f03c0185f28e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '183155e7-52a6-4284-beb4-c73aa2a6019b'::uuid AS category_uuid, 'colles-de-montage' AS slug, 'Colles de montage' AS name, cf507d8e-da22-4999-b6d8-f03c0185f28e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '99e8a0e3-7bcc-40d6-aa06-7ca120c36585'::uuid AS category_uuid, 'fers-a-souder' AS slug, 'Fers à souder' AS name, 4dd3cfa2-e412-49d6-beeb-34ab53ac54c5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '6213fbdd-830d-47c2-8cfc-9a19814de177'::uuid AS category_uuid, 'stations-de-soudure' AS slug, 'Stations de soudure' AS name, 4dd3cfa2-e412-49d6-beeb-34ab53ac54c5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '84733372-d1ec-48b7-82a3-3a535af08157'::uuid AS category_uuid, 'etain' AS slug, 'Étain' AS name, 4dd3cfa2-e412-49d6-beeb-34ab53ac54c5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'd3ee38a2-9a21-4c6b-ad53-2f7ae9c91d16'::uuid AS category_uuid, 'chalumeaux-gaz' AS slug, 'Chalumeaux gaz' AS name, 4dd3cfa2-e412-49d6-beeb-34ab53ac54c5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '95a20c2d-966e-4520-a5b3-9603a644483b'::uuid AS category_uuid, 'baguettes-de-soudure' AS slug, 'Baguettes de soudure' AS name, 4dd3cfa2-e412-49d6-beeb-34ab53ac54c5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '8cce647d-b5d7-48d0-993d-fa8677fa1918'::uuid AS category_uuid, 'baguettes-de-brasage' AS slug, 'Baguettes de brasage' AS name, 4dd3cfa2-e412-49d6-beeb-34ab53ac54c5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '038a8d0c-110a-42f1-9562-dc7aac1ecb38'::uuid AS category_uuid, 'masques-de-soudure' AS slug, 'Masques de soudure' AS name, 4dd3cfa2-e412-49d6-beeb-34ab53ac54c5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '2c01624a-9861-4123-95e8-5e800f4b22fb'::uuid AS category_uuid, 'visieres-de-protection' AS slug, 'Visières de protection' AS name, 4dd3cfa2-e412-49d6-beeb-34ab53ac54c5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '19129829-18c2-40b5-9749-9a0aa9280da6'::uuid AS category_uuid, 'flux-decapants' AS slug, 'Flux décapants' AS name, 4dd3cfa2-e412-49d6-beeb-34ab53ac54c5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'a69abd51-5759-49e4-992f-c67156b3ef5f'::uuid AS category_uuid, 'metres-ruban' AS slug, 'Mètres ruban' AS name, c40c6b5e-f82c-4ef5-b62b-76f823168628::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '2f60e8cd-6147-470f-ad96-d56a8fb56917'::uuid AS category_uuid, 'metres-laser' AS slug, 'Mètres laser' AS name, c40c6b5e-f82c-4ef5-b62b-76f823168628::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '4f285c5c-12ae-428d-9a1b-d3a110fe5edb'::uuid AS category_uuid, 'telemetres-laser' AS slug, 'Télémètres laser' AS name, c40c6b5e-f82c-4ef5-b62b-76f823168628::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '265406d2-add9-44cd-96be-5df76709139e'::uuid AS category_uuid, 'niveaux-laser' AS slug, 'Niveaux laser' AS name, c40c6b5e-f82c-4ef5-b62b-76f823168628::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'd2be2b53-b506-4965-9317-b35c7aa68a16'::uuid AS category_uuid, 'outillage-de-mesure-niveaux-a-bulle' AS slug, 'Niveaux à bulle' AS name, c40c6b5e-f82c-4ef5-b62b-76f823168628::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'ae7f589b-b6c3-4117-9316-1da834ae2d2a'::uuid AS category_uuid, 'equerres-metalliques' AS slug, 'Équerres métalliques' AS name, c40c6b5e-f82c-4ef5-b62b-76f823168628::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '196ebb8f-d48d-495e-bade-11294bad7ce2'::uuid AS category_uuid, 'rapporteurs' AS slug, 'Rapporteurs' AS name, c40c6b5e-f82c-4ef5-b62b-76f823168628::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '9e819490-3909-43d8-ae3e-6f9fa4b53627'::uuid AS category_uuid, 'pieds-a-coulisse' AS slug, 'Pieds à coulisse' AS name, c40c6b5e-f82c-4ef5-b62b-76f823168628::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '48cc72f9-bf03-4d5c-ac27-d120b620d38a'::uuid AS category_uuid, 'detecteurs-de-cables' AS slug, 'Détecteurs de câbles' AS name, c40c6b5e-f82c-4ef5-b62b-76f823168628::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '196f31de-6492-4076-93ab-978a65f0b44d'::uuid AS category_uuid, 'detecteurs-de-metaux' AS slug, 'Détecteurs de métaux' AS name, c40c6b5e-f82c-4ef5-b62b-76f823168628::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '8328acb2-b762-4849-8fe4-7408167e4f12'::uuid AS category_uuid, 'boites-a-outils' AS slug, 'Boîtes à outils' AS name, c744a033-d55f-40a6-8612-034673def56b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '7e486fc3-039d-44f4-bbf7-3a679c1a6679'::uuid AS category_uuid, 'boites-compartimentees' AS slug, 'Boîtes compartimentées' AS name, c744a033-d55f-40a6-8612-034673def56b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '0c93d827-651a-45a5-86ce-ff2e825f8ff0'::uuid AS category_uuid, 'caisses-metalliques' AS slug, 'Caisses métalliques' AS name, c744a033-d55f-40a6-8612-034673def56b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'c2d5cb8d-e1e2-4aa0-8097-2c8226442dfe'::uuid AS category_uuid, 'rangements-organisation-organiseurs' AS slug, 'Organiseurs' AS name, c744a033-d55f-40a6-8612-034673def56b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'f000dc69-d565-43a6-86a3-6d5cf374f247'::uuid AS category_uuid, 'valises-de-rangement' AS slug, 'Valises de rangement' AS name, c744a033-d55f-40a6-8612-034673def56b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'aa6b4168-5bcc-4892-bdbb-e1ca7ac17133'::uuid AS category_uuid, 'chariots-de-manutention' AS slug, 'Chariots de manutention' AS name, c744a033-d55f-40a6-8612-034673def56b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'd1b7c14d-c07e-41af-83a4-098a6e0d4de1'::uuid AS category_uuid, 'etagieres-metalliques' AS slug, 'Étagères métalliques' AS name, c744a033-d55f-40a6-8612-034673def56b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '95d5eca4-bc11-4c09-9a42-94f831915881'::uuid AS category_uuid, 'coffres-de-chantier' AS slug, 'Coffres de chantier' AS name, c744a033-d55f-40a6-8612-034673def56b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'f223d491-54fd-4a05-913a-ba70e95bb6e6'::uuid AS category_uuid, 'supports-muraux' AS slug, 'Supports muraux' AS name, c744a033-d55f-40a6-8612-034673def56b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '1c4b6a92-a1b3-491f-8f80-17a60fd839ab'::uuid AS category_uuid, 'barres-metalliques' AS slug, 'Barres métalliques' AS name, c9aba546-48b3-4881-9a15-5653e2b62cb2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '345d06e4-d08d-4531-b84f-6ed23ee75d09'::uuid AS category_uuid, 'barres-dacier' AS slug, 'Barres d’acier' AS name, c9aba546-48b3-4881-9a15-5653e2b62cb2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'd42ea304-8490-41a3-8338-adb14a040494'::uuid AS category_uuid, 'profils-aluminium' AS slug, 'Profilés aluminium' AS name, c9aba546-48b3-4881-9a15-5653e2b62cb2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '5c7f54a8-bdf7-4147-9374-72e8f4b68b01'::uuid AS category_uuid, 'profils-inox' AS slug, 'Profilés inox' AS name, c9aba546-48b3-4881-9a15-5653e2b62cb2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'ddf884a6-d7c5-463e-919e-9fdb12a926c5'::uuid AS category_uuid, 'grillages-soudes' AS slug, 'Grillages soudés' AS name, c9aba546-48b3-4881-9a15-5653e2b62cb2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'b61c2ec4-07dc-4442-b2ac-26c65dcdc241'::uuid AS category_uuid, 'panneaux-grillages' AS slug, 'Panneaux grillagés' AS name, c9aba546-48b3-4881-9a15-5653e2b62cb2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'df93eefa-75fc-49b4-ab30-3cfa2f2cab3b'::uuid AS category_uuid, 'chaines-metalliques' AS slug, 'Chaînes métalliques' AS name, c9aba546-48b3-4881-9a15-5653e2b62cb2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'a36e26e8-515c-4c6d-873e-c45355e5e26c'::uuid AS category_uuid, 'cables-acier' AS slug, 'Câbles acier' AS name, c9aba546-48b3-4881-9a15-5653e2b62cb2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '0483cfcb-204f-4d8c-b60e-60b0028426fe'::uuid AS category_uuid, 'tendeurs' AS slug, 'Tendeurs' AS name, c9aba546-48b3-4881-9a15-5653e2b62cb2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '3253db40-e241-48c4-861e-a783e423e9bd'::uuid AS category_uuid, 'cornieres' AS slug, 'Cornières' AS name, c9aba546-48b3-4881-9a15-5653e2b62cb2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'e4e48620-9047-43fb-9a43-c673ea17521c'::uuid AS category_uuid, 'tubes-metalliques' AS slug, 'Tubes métalliques' AS name, c9aba546-48b3-4881-9a15-5653e2b62cb2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '06ffd4c4-fbbc-4692-98a1-be6e6944090f'::uuid AS category_uuid, 'pinceaux-plats' AS slug, 'Pinceaux plats' AS name, 4ff16881-635c-44f4-92a4-a7ea2db2a165::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),
  level = EXCLUDED.level,
  category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),
  updated_at = NOW();

-- Lot 29 terminé: 100 entrées
