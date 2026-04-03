-- ============================================================
-- CHUNK 11/49 — 100 catégories
-- Total: 4836 catégories
-- Exécuter dans l'ordre dans Supabase SQL Editor
-- ============================================================

INSERT INTO public.categories
  (category_uuid, slug, name, parent_id, level, is_active, created_at, updated_at)
VALUES
  SELECT '136ec3df-1225-4e2f-b0b4-21bd4e86b3fa'::uuid AS category_uuid, 'colles-mastics' AS slug, 'Colles & mastics' AS name, 0df01a91-c70d-4576-b8cf-e0da397fc16e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '626b12c2-98e8-4233-8413-356188750bef'::uuid AS category_uuid, 'rubans-adhesifs' AS slug, 'Rubans adhésifs' AS name, 0df01a91-c70d-4576-b8cf-e0da397fc16e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'c2d2205d-aa5d-4034-a79f-59c71fdb9947'::uuid AS category_uuid, 'joints-silicone' AS slug, 'Joints & silicone' AS name, 0df01a91-c70d-4576-b8cf-e0da397fc16e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'fe2e202b-1e51-4cae-89c3-cccb1559de4f'::uuid AS category_uuid, 'cables-electriques' AS slug, 'Câbles électriques' AS name, 6a56cb71-7d23-4935-9c60-d595831afdff::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '08a41759-f6eb-4bc6-9ed5-833e09edbe1f'::uuid AS category_uuid, 'interrupteurs-prises' AS slug, 'Interrupteurs & prises' AS name, 6a56cb71-7d23-4935-9c60-d595831afdff::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'ba252674-0111-4c91-8198-8ea63e5f08fc'::uuid AS category_uuid, 'equipements-electriques-plomberie-disjoncteurs' AS slug, 'Disjoncteurs' AS name, 6a56cb71-7d23-4935-9c60-d595831afdff::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'b9d1f0ba-5e5e-4e6e-8c7b-5cdc0e5c7771'::uuid AS category_uuid, 'equipements-electriques-plomberie-tableaux-electriques' AS slug, 'Tableaux électriques' AS name, 6a56cb71-7d23-4935-9c60-d595831afdff::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'd35f23a0-b0dd-4538-93b9-3ca96d694c4d'::uuid AS category_uuid, 'eclairage-chantier' AS slug, 'Éclairage chantier' AS name, 6a56cb71-7d23-4935-9c60-d595831afdff::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'e24782f5-624f-4823-83d4-c950ac02972a'::uuid AS category_uuid, 'tuyaux-raccords' AS slug, 'Tuyaux & raccords' AS name, 6a56cb71-7d23-4935-9c60-d595831afdff::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '9854bb51-b997-4ae7-a10e-9e02c9ec4359'::uuid AS category_uuid, 'equipements-electriques-plomberie-robinets' AS slug, 'Robinetterie' AS name, 6a56cb71-7d23-4935-9c60-d595831afdff::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '7acb2782-b321-43bd-89e2-54a4709024f9'::uuid AS category_uuid, 'compteurs-eau' AS slug, 'Compteurs d’eau' AS name, 6a56cb71-7d23-4935-9c60-d595831afdff::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '0a44c1c7-bf23-4d89-a0cd-6675d94afaf8'::uuid AS category_uuid, 'pompes' AS slug, 'Pompes' AS name, 6a56cb71-7d23-4935-9c60-d595831afdff::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '4f329848-3b8a-4d89-87a1-c7a2186e160f'::uuid AS category_uuid, 'chauffe-eau' AS slug, 'Chauffe-eau' AS name, 6a56cb71-7d23-4935-9c60-d595831afdff::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '479780a6-fe51-44f3-8a1e-5f1f471e3dd3'::uuid AS category_uuid, 'sanitaires' AS slug, 'Sanitaires' AS name, 6a56cb71-7d23-4935-9c60-d595831afdff::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'ebc70029-7dbb-4868-a855-7a25749fb503'::uuid AS category_uuid, 'outils-equipements-professionnels-outils-manuels' AS slug, 'Outils manuels (marteaux, clés, tournevis, niveaux)' AS name, 8babc4e0-fd73-4f46-8839-3fcf7ae9f0f4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '94ef9f3a-d4a7-4a31-803a-8b6b86f1e0fb'::uuid AS category_uuid, 'outils-de-mesure' AS slug, 'Outils de mesure' AS name, 8babc4e0-fd73-4f46-8839-3fcf7ae9f0f4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '7db93754-e9af-413d-a6c2-1369f11d7c11'::uuid AS category_uuid, 'mallettes-coffrets' AS slug, 'Mallettes & coffrets' AS name, 8babc4e0-fd73-4f46-8839-3fcf7ae9f0f4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'e6afae5f-75a0-490f-a735-fc5a4d6c3ba8'::uuid AS category_uuid, 'outils-diamantes' AS slug, 'Outils diamantés' AS name, 8babc4e0-fd73-4f46-8839-3fcf7ae9f0f4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '56806a44-16bf-4f97-bc52-4d4925face3d'::uuid AS category_uuid, 'outils-equipements-professionnels-meuleuses' AS slug, 'Meuleuses' AS name, 8babc4e0-fd73-4f46-8839-3fcf7ae9f0f4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'a12269cb-e5ee-481c-9830-b7b08a0f6874'::uuid AS category_uuid, 'perforateurs' AS slug, 'Perforateurs' AS name, 8babc4e0-fd73-4f46-8839-3fcf7ae9f0f4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '921673fd-6d4d-479d-b439-069b796d9392'::uuid AS category_uuid, 'outils-equipements-professionnels-perceuses' AS slug, 'Perceuses' AS name, 8babc4e0-fd73-4f46-8839-3fcf7ae9f0f4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '7a06468e-b31c-4aae-a234-69a19c0441c3'::uuid AS category_uuid, 'outils-equipements-professionnels-scies-circulaires' AS slug, 'Scies circulaires' AS name, 8babc4e0-fd73-4f46-8839-3fcf7ae9f0f4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '4bf58ba2-dbba-42ae-810a-6f598547657e'::uuid AS category_uuid, 'ponceuses' AS slug, 'Ponceuses' AS name, 8babc4e0-fd73-4f46-8839-3fcf7ae9f0f4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'f62a1503-4ec0-41c0-a35e-81c53cf3ccf6'::uuid AS category_uuid, 'lasers-rotatifs' AS slug, 'Lasers rotatifs' AS name, 8babc4e0-fd73-4f46-8839-3fcf7ae9f0f4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'c8b4f71b-0b92-4776-892b-10eb4ba4f5dd'::uuid AS category_uuid, 'securite-protection-casques-de-chantier' AS slug, 'Casques de chantier' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '927d3aba-e0db-4b4b-83e8-c5f736da3999'::uuid AS category_uuid, 'gilets-haute-visibilite' AS slug, 'Gilets haute visibilité' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '943e9744-1cdd-4835-af4b-8f19dd63037c'::uuid AS category_uuid, 'securite-protection-chaussures-de-securite' AS slug, 'Chaussures de sécurité' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '3bdb8275-1708-44fc-91f6-0ce1635b93c0'::uuid AS category_uuid, 'securite-protection-gants-de-protection' AS slug, 'Gants de protection' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'c1daf145-d585-4711-a7c6-8d931c578240'::uuid AS category_uuid, 'securite-protection-lunettes' AS slug, 'Lunettes' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'b338717e-330d-47c9-b87e-b26333d374cc'::uuid AS category_uuid, 'securite-protection-masques-anti-poussiere' AS slug, 'Masques anti-poussière' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '908e5608-4da8-4b7a-bfdc-50fb97e6511e'::uuid AS category_uuid, 'securite-protection-harnais-de-securite' AS slug, 'Harnais de sécurité' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'b62f4690-6efb-4f7c-9e65-6c828de30d1b'::uuid AS category_uuid, 'filets-de-protection' AS slug, 'Filets de protection' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '9e793b34-03fd-46c8-8008-0270a94cdab3'::uuid AS category_uuid, 'barrieres-de-chantier' AS slug, 'Barrières de chantier' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '9a388581-b0d3-4073-aa8b-88cc43f831e7'::uuid AS category_uuid, 'bungalows-bases-vie' AS slug, 'Bungalows & bases-vie' AS name, 773a5975-3a85-4a79-b5bc-5c8393d3ca32::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'b5a3f902-36cf-4250-b84c-42c275b37575'::uuid AS category_uuid, 'conteneurs-amenages' AS slug, 'Conteneurs aménagés' AS name, 773a5975-3a85-4a79-b5bc-5c8393d3ca32::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '7274b1e8-3103-4b72-8796-e1bf774acfda'::uuid AS category_uuid, 'cabanes-abris' AS slug, 'Cabanes & abris' AS name, 773a5975-3a85-4a79-b5bc-5c8393d3ca32::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'ac316884-1197-421e-8c07-09bea3aa4988'::uuid AS category_uuid, 'hangars-metalliques' AS slug, 'Hangars métalliques' AS name, 773a5975-3a85-4a79-b5bc-5c8393d3ca32::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'b505ea0a-10bb-430f-9f17-dd812a8e4504'::uuid AS category_uuid, 'structures-prefabriquees' AS slug, 'Structures préfabriquées' AS name, 773a5975-3a85-4a79-b5bc-5c8393d3ca32::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '82b664e0-cecf-4c98-b083-bd1df23e4976'::uuid AS category_uuid, 'serres-couvertures-industrielles' AS slug, 'Serres & couvertures industrielles' AS name, 773a5975-3a85-4a79-b5bc-5c8393d3ca32::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '9a56e492-6a47-4102-b0c6-f7f73b9a1dea'::uuid AS category_uuid, 'location-d-engins' AS slug, 'Location d’engins (pelles, nacelles, camions)' AS name, 3bb1874f-2b71-4a81-930f-d4611eab9d02::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '5876ee6f-795e-4dc1-8885-32eacfdcf664'::uuid AS category_uuid, 'location-d-outillage' AS slug, 'Location d’outillage' AS name, 3bb1874f-2b71-4a81-930f-d4611eab9d02::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '103e7946-55e9-448d-a57b-1f70fc7b4c84'::uuid AS category_uuid, 'location-coffrage-echafaudage' AS slug, 'Location de coffrage & échafaudage' AS name, 3bb1874f-2b71-4a81-930f-d4611eab9d02::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'f90c8839-1b42-4c82-8a16-51962bbd0816'::uuid AS category_uuid, 'location-groupes-electrogenes' AS slug, 'Location de groupes électrogènes' AS name, 3bb1874f-2b71-4a81-930f-d4611eab9d02::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'dc628b80-594e-4b69-89ee-fd88080fbe86'::uuid AS category_uuid, 'location-bungalows' AS slug, 'Location de bungalows' AS name, 3bb1874f-2b71-4a81-930f-d4611eab9d02::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '5b7a945f-908b-4b38-a181-889db2dfe637'::uuid AS category_uuid, 'travaux-publics' AS slug, 'Travaux publics' AS name, 8e6a4920-f990-4966-92f9-cced9f4eeedf::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '92df2e3f-9661-4468-8cdb-37a247012302'::uuid AS category_uuid, 'terrassement' AS slug, 'Terrassement' AS name, 8e6a4920-f990-4966-92f9-cced9f4eeedf::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '1f8c9aaa-abf0-4ae7-8e13-c86027a7767f'::uuid AS category_uuid, 'demolition' AS slug, 'Démolition' AS name, 8e6a4920-f990-4966-92f9-cced9f4eeedf::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '92f9b6da-60f2-4962-9050-dfe48b1071d2'::uuid AS category_uuid, 'maconnerie' AS slug, 'Maçonnerie' AS name, 8e6a4920-f990-4966-92f9-cced9f4eeedf::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'b4fade30-e0a0-412f-b185-7b1cc5e6f4cb'::uuid AS category_uuid, 'services-lies-au-btp-plomberie' AS slug, 'Plomberie' AS name, 8e6a4920-f990-4966-92f9-cced9f4eeedf::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '928c8ad2-eb07-4f9c-a687-bca43df140df'::uuid AS category_uuid, 'services-lies-au-btp-electricite' AS slug, 'Électricité' AS name, 8e6a4920-f990-4966-92f9-cced9f4eeedf::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '6b65179f-0abb-489f-ab38-98f0c5c785e8'::uuid AS category_uuid, 'menuiserie' AS slug, 'Menuiserie' AS name, 8e6a4920-f990-4966-92f9-cced9f4eeedf::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '8c6b4d5a-bf8b-4859-bb14-9166dd071cd2'::uuid AS category_uuid, 'charpente' AS slug, 'Charpente' AS name, 8e6a4920-f990-4966-92f9-cced9f4eeedf::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '94bd2a53-8586-4df2-90c2-561f7ffc5f7c'::uuid AS category_uuid, 'peinture-finition' AS slug, 'Peinture & finition' AS name, 8e6a4920-f990-4966-92f9-cced9f4eeedf::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '51d46a44-f43e-4cf7-b920-942cb86b2818'::uuid AS category_uuid, 'architecture-ingenierie' AS slug, 'Architecture & ingénierie' AS name, 8e6a4920-f990-4966-92f9-cced9f4eeedf::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '609e91bb-414b-4b1d-a408-64411576e3af'::uuid AS category_uuid, 'topographie' AS slug, 'Topographie' AS name, 8e6a4920-f990-4966-92f9-cced9f4eeedf::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '2df6aabe-b460-41f5-8d54-f96ec8fc3b15'::uuid AS category_uuid, 'mode-accessoires' AS slug, 'Vêtement Homme, Femme & sous-vêtement' AS name, NULL::uuid AS parent_id, 1 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '35328278-c679-420f-a468-deeead7f5ac9'::uuid AS category_uuid, 'vetements-homme' AS slug, 'Vêtements Homme' AS name, 2df6aabe-b460-41f5-8d54-f96ec8fc3b15::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'a6278265-1305-44df-9521-434c19933e7d'::uuid AS category_uuid, 'marques-vetements-homme' AS slug, 'Marques vêtements homme' AS name, 2df6aabe-b460-41f5-8d54-f96ec8fc3b15::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '65b55628-bc66-4865-a707-43fbae7d083b'::uuid AS category_uuid, 'accessoires-homme' AS slug, 'Accessoires Homme' AS name, 2df6aabe-b460-41f5-8d54-f96ec8fc3b15::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'a3772910-a498-4df5-a619-ea7e748de655'::uuid AS category_uuid, 'vetements-femme' AS slug, 'Vêtements Femme' AS name, 2df6aabe-b460-41f5-8d54-f96ec8fc3b15::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'cd81d788-0832-4370-a646-5fa3168ed4b3'::uuid AS category_uuid, 'marques-vetements-femme' AS slug, 'Marques vêtements femme' AS name, 2df6aabe-b460-41f5-8d54-f96ec8fc3b15::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '2fcdbcb6-d84f-488d-bf91-8c650182f7f4'::uuid AS category_uuid, 'accessoires-femme' AS slug, 'Accessoires Femme' AS name, 2df6aabe-b460-41f5-8d54-f96ec8fc3b15::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'd8812b3d-37cc-4ef3-a539-9a11bfcf6194'::uuid AS category_uuid, 'sous-vetements-homme' AS slug, 'Sous‑vêtements Homme' AS name, 2df6aabe-b460-41f5-8d54-f96ec8fc3b15::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '6a869971-5486-4d48-a61f-dd8180992276'::uuid AS category_uuid, 'lingerie-femme' AS slug, 'Lingerie Femme' AS name, 2df6aabe-b460-41f5-8d54-f96ec8fc3b15::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '9dff04fa-b432-4668-b2bb-481bed80420c'::uuid AS category_uuid, 'nuit-interieur' AS slug, 'Nuit & intérieur' AS name, 2df6aabe-b460-41f5-8d54-f96ec8fc3b15::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'f6ab0f75-683f-4920-9783-8d8231c6da59'::uuid AS category_uuid, 'sous-vetements-techniques' AS slug, 'Sous‑vêtements techniques' AS name, 2df6aabe-b460-41f5-8d54-f96ec8fc3b15::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '6587af2d-7cf3-44dd-a084-0b737da9934f'::uuid AS category_uuid, 'chaussures-homme-femme' AS slug, 'Chaussures (Homme & Femme)' AS name, 2df6aabe-b460-41f5-8d54-f96ec8fc3b15::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'cec618f9-5878-4389-be37-e1753531b57b'::uuid AS category_uuid, 'mode-saisonniere' AS slug, 'Mode saisonnière' AS name, 2df6aabe-b460-41f5-8d54-f96ec8fc3b15::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '349fef75-ca2f-4ef1-aa92-3205b6a3f71c'::uuid AS category_uuid, 't-shirts' AS slug, 'T‑shirts' AS name, 35328278-c679-420f-a468-deeead7f5ac9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '6ef4193e-da58-4fb7-aa48-ffc58b2a69ca'::uuid AS category_uuid, 'basiques' AS slug, 'Basiques' AS name, 349fef75-ca2f-4ef1-aa92-3205b6a3f71c::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'f3fa9bfa-0133-4056-afe7-0a8d6f3ef314'::uuid AS category_uuid, 't-shirts-imprimes' AS slug, 'Imprimés' AS name, 349fef75-ca2f-4ef1-aa92-3205b6a3f71c::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'ec6ea2fb-cb34-484d-9fbf-5396941580fe'::uuid AS category_uuid, 't-shirts-oversize' AS slug, 'Oversize' AS name, 349fef75-ca2f-4ef1-aa92-3205b6a3f71c::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '97f59940-0f28-4ad2-af07-eec3d48f1220'::uuid AS category_uuid, 'techniques' AS slug, 'Techniques' AS name, 349fef75-ca2f-4ef1-aa92-3205b6a3f71c::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'eec48f12-b7f3-4380-bcde-ee1f0bff467f'::uuid AS category_uuid, 'polos' AS slug, 'Polos' AS name, 35328278-c679-420f-a468-deeead7f5ac9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '1c884935-94b8-46b1-bc71-d164a99a138c'::uuid AS category_uuid, 'manches-courtes' AS slug, 'Manches courtes' AS name, eec48f12-b7f3-4380-bcde-ee1f0bff467f::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '03ff064f-4c65-407f-a8d0-154c9ba9e7d8'::uuid AS category_uuid, 'manches-longues' AS slug, 'Manches longues' AS name, eec48f12-b7f3-4380-bcde-ee1f0bff467f::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '3d5a67b8-4cc0-450b-a236-ee070fab5600'::uuid AS category_uuid, 'polos-sport' AS slug, 'Sport' AS name, eec48f12-b7f3-4380-bcde-ee1f0bff467f::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '0fd1d8bc-57e9-486e-ac21-5275adb2da70'::uuid AS category_uuid, 'chemises' AS slug, 'Chemises' AS name, 35328278-c679-420f-a468-deeead7f5ac9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '7e0e90ba-e3b8-4fa9-ac85-c6a4562b46c2'::uuid AS category_uuid, 'chemises-classiques' AS slug, 'Classiques' AS name, 0fd1d8bc-57e9-486e-ac21-5275adb2da70::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'c39c1edb-ee83-4abc-8f4b-1385f420677f'::uuid AS category_uuid, 'chemises-slim' AS slug, 'Slim' AS name, 0fd1d8bc-57e9-486e-ac21-5275adb2da70::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'ccea4c27-574f-4244-8466-6d39d5ee9ea5'::uuid AS category_uuid, 'decontractees' AS slug, 'Décontractées' AS name, 0fd1d8bc-57e9-486e-ac21-5275adb2da70::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '6b5101fd-47d4-4c51-a2a9-4b82e67f042f'::uuid AS category_uuid, 'carreaux' AS slug, 'Carreaux' AS name, 0fd1d8bc-57e9-486e-ac21-5275adb2da70::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '2abf9873-1e99-47e3-a997-d4b0f2e9555d'::uuid AS category_uuid, 'chemises-denim' AS slug, 'Denim' AS name, 0fd1d8bc-57e9-486e-ac21-5275adb2da70::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '8eb10b2d-c155-4904-bc27-aa8dbfaab02f'::uuid AS category_uuid, 'habillees' AS slug, 'Habillées' AS name, 0fd1d8bc-57e9-486e-ac21-5275adb2da70::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'ff51a8b0-0085-4a6c-9c69-3eb82b09486a'::uuid AS category_uuid, 'pulls-gilets' AS slug, 'Pulls & gilets' AS name, 35328278-c679-420f-a468-deeead7f5ac9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'fc76d9bc-e7c3-4b9b-94b8-c726b57170b4'::uuid AS category_uuid, 'maille-fine' AS slug, 'Maille fine' AS name, ff51a8b0-0085-4a6c-9c69-3eb82b09486a::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '9a1f746a-1849-4e0e-bd1a-8bcc21cf6f1f'::uuid AS category_uuid, 'pulls-gilets-laine' AS slug, 'Laine' AS name, ff51a8b0-0085-4a6c-9c69-3eb82b09486a::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '4d3c1e46-ec39-4dc4-9f27-ce4a21fa29fc'::uuid AS category_uuid, 'col-rond' AS slug, 'Col rond' AS name, ff51a8b0-0085-4a6c-9c69-3eb82b09486a::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '8e3b1037-2b8d-493f-aab6-b0330e9c25f8'::uuid AS category_uuid, 'col-v' AS slug, 'Col V' AS name, ff51a8b0-0085-4a6c-9c69-3eb82b09486a::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'bf43bc40-f287-4baf-b4ff-61a989e890a3'::uuid AS category_uuid, 'pulls-gilets-col-roule' AS slug, 'Col roulé' AS name, ff51a8b0-0085-4a6c-9c69-3eb82b09486a::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '3e38237c-7ace-43e1-acc9-96060830c667'::uuid AS category_uuid, 'pulls-gilets-cardigan' AS slug, 'Cardigan' AS name, ff51a8b0-0085-4a6c-9c69-3eb82b09486a::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '40fa2460-8cbf-4654-899b-b254018e984d'::uuid AS category_uuid, 'sweats-hoodies' AS slug, 'Sweats & hoodies' AS name, 35328278-c679-420f-a468-deeead7f5ac9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '8b613e82-9257-4793-ad96-b98ee1f7d12a'::uuid AS category_uuid, 'a-capuche' AS slug, 'À capuche' AS name, 40fa2460-8cbf-4654-899b-b254018e984d::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '44c2bd0b-89ad-4b7a-ad0d-7293030bc54b'::uuid AS category_uuid, 'zippes' AS slug, 'Zippés' AS name, 40fa2460-8cbf-4654-899b-b254018e984d::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '88ffadc9-7f94-4983-966a-121cdbe891d8'::uuid AS category_uuid, 'sweats-hoodies-oversize' AS slug, 'Oversize' AS name, 40fa2460-8cbf-4654-899b-b254018e984d::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'c3211ba9-6dfb-4cf2-826a-c21821c003c5'::uuid AS category_uuid, 'sportifs' AS slug, 'Sportifs' AS name, 40fa2460-8cbf-4654-899b-b254018e984d::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '0c14392f-c1f4-493a-b19e-16955e580903'::uuid AS category_uuid, 'vetements-homme-debardeurs' AS slug, 'Débardeurs' AS name, 35328278-c679-420f-a468-deeead7f5ac9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'c4ed6480-f393-4a75-b283-47a4f49e0ab5'::uuid AS category_uuid, 'vetements-homme-jeans' AS slug, 'Jeans' AS name, 35328278-c679-420f-a468-deeead7f5ac9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '1cd67852-76a3-4bc0-89e4-76cfd00be198'::uuid AS category_uuid, 'jeans-slim' AS slug, 'Slim' AS name, NULL::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'bc6cdeb8-73da-4f70-a404-3d88bf33be70'::uuid AS category_uuid, 'straight' AS slug, 'Droit' AS name, NULL::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),
  level = EXCLUDED.level,
  category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),
  updated_at = NOW();

-- Lot 11 terminé: 100 entrées
