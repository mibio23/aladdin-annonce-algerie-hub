-- ============================================================
-- CHUNK 7/49 — 100 catégories
-- Total: 4836 catégories
-- Exécuter dans l'ordre dans Supabase SQL Editor
-- ============================================================

INSERT INTO public.categories
  (category_uuid, slug, name, parent_id, level, is_active, created_at, updated_at)
VALUES
  SELECT '6ac7f2d9-d8da-4890-a856-b8aa5a66eae7'::uuid AS category_uuid, 'toshiba' AS slug, 'Toshiba' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'f28444ea-f9d4-49a9-bfa4-4c6dc6d86cdd'::uuid AS category_uuid, 'western-digital' AS slug, 'Western Digital' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '58db6842-6be2-4173-a3b1-03d01fb45a6f'::uuid AS category_uuid, 'seagate' AS slug, 'Seagate' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '04bb4d8e-ec6c-4926-93f7-fe6e79d1acf1'::uuid AS category_uuid, 'kingston' AS slug, 'Kingston' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'e5b8405b-dcd0-4ed6-bc93-7e303e95cde6'::uuid AS category_uuid, 'corsair' AS slug, 'Corsair' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '51f91b53-2fc5-4548-9024-1bc81e6e401c'::uuid AS category_uuid, 'gigabyte' AS slug, 'Gigabyte' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '2101378f-fd2c-4a8b-8b5a-5083a12bbbe9'::uuid AS category_uuid, 'asus-rog' AS slug, 'Asus ROG' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '69844a89-d208-4872-b704-05ed39689ec1'::uuid AS category_uuid, 'nvidia' AS slug, 'NVIDIA' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '897b5b09-c1ac-4a71-9ad7-25a9b15c69b1'::uuid AS category_uuid, 'amd' AS slug, 'AMD' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'c2d6a172-83e5-4852-9788-450fd65a723b'::uuid AS category_uuid, 'marques-populaires-jbl' AS slug, 'JBL' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '541fd008-c93f-4fdf-8932-eede3e2ea761'::uuid AS category_uuid, 'logitech' AS slug, 'Logitech' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '3c8b7594-e153-4e48-9b21-09393df3cd02'::uuid AS category_uuid, 'steelseries' AS slug, 'SteelSeries' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '28e248e5-cff9-49d3-b3d4-68e78d89fc50'::uuid AS category_uuid, 'tp-link' AS slug, 'TP‑Link' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '1d10ed03-6120-48b1-b4e7-b4342f1aa60e'::uuid AS category_uuid, 'netgear' AS slug, 'Netgear' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '399e00cd-32cc-4093-90d0-84b09f0a5ec3'::uuid AS category_uuid, 'ubiquiti' AS slug, 'Ubiquiti' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'bb19b58a-2ec9-4dc9-979d-4e2d96a1d008'::uuid AS category_uuid, 'vehicules-equipements' AS slug, 'Véhicules, Camions, Motos & Équipements' AS name, NULL::uuid AS parent_id, 1 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'dcfc5f94-969f-414b-8089-75e022b8158a'::uuid AS category_uuid, 'voitures-vehicules-legers' AS slug, 'Voitures & Véhicules Légers' AS name, bb19b58a-2ec9-4dc9-979d-4e2d96a1d008::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '0385f154-f5c0-4aa8-9d33-42cfc8d5a1ca'::uuid AS category_uuid, 'camions-vehicules-professionnels' AS slug, 'Camions & Véhicules Professionnels' AS name, bb19b58a-2ec9-4dc9-979d-4e2d96a1d008::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '9430a779-631b-4814-b41d-499cda250cfe'::uuid AS category_uuid, 'motos-cyclomoteurs' AS slug, 'Motos & Cyclomoteurs' AS name, bb19b58a-2ec9-4dc9-979d-4e2d96a1d008::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '8e5d3e9a-7777-4be0-8c10-c0e276f1684a'::uuid AS category_uuid, 'velos-motorises-mobilite' AS slug, 'Vélos Motorisés & Mobilité' AS name, bb19b58a-2ec9-4dc9-979d-4e2d96a1d008::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '6111e345-3de0-4783-85bc-4c750b02fea5'::uuid AS category_uuid, 'equipements-accessoires-auto' AS slug, 'Équipement & Accessoires Auto' AS name, bb19b58a-2ec9-4dc9-979d-4e2d96a1d008::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'a4b5e56b-aefd-41b8-9429-41fb4028956f'::uuid AS category_uuid, 'pieces-accessoires-moto' AS slug, 'Pièces & Accessoires Moto' AS name, bb19b58a-2ec9-4dc9-979d-4e2d96a1d008::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '1c002ef1-476b-4c58-9e0e-b95ca125560d'::uuid AS category_uuid, 'remorques-attelages' AS slug, 'Remorques & Attelages' AS name, bb19b58a-2ec9-4dc9-979d-4e2d96a1d008::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '66ce16da-33f2-47b0-95c1-51b513dee0db'::uuid AS category_uuid, 'diagnostic-atelier' AS slug, 'Équipement de Diagnostic & Atelier' AS name, bb19b58a-2ec9-4dc9-979d-4e2d96a1d008::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '635341e3-98e0-410f-a4ca-5072f45f9b3a'::uuid AS category_uuid, 'carburants-energie' AS slug, 'Carburants & Énergie' AS name, bb19b58a-2ec9-4dc9-979d-4e2d96a1d008::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'b4c3ffc5-ea60-4c2f-9572-5c7caefee2af'::uuid AS category_uuid, 'services-assistance' AS slug, 'Services & Assistance' AS name, bb19b58a-2ec9-4dc9-979d-4e2d96a1d008::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '791cf892-3632-4b67-bcab-8051d97dcd62'::uuid AS category_uuid, 'marques-populaires-vehicules' AS slug, 'Marques Populaires (SEO Boost)' AS name, bb19b58a-2ec9-4dc9-979d-4e2d96a1d008::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'f73f3165-e8a1-4698-8800-a3006a8120fe'::uuid AS category_uuid, 'voitures-citadines' AS slug, 'Voitures citadines' AS name, dcfc5f94-969f-414b-8089-75e022b8158a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '741f437e-c071-45f5-a66c-33817e369e9d'::uuid AS category_uuid, 'berlines' AS slug, 'Berlines' AS name, dcfc5f94-969f-414b-8089-75e022b8158a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'b45bd67c-1dce-4dfc-9af3-63aabbb43446'::uuid AS category_uuid, 'compactes' AS slug, 'Compactes' AS name, dcfc5f94-969f-414b-8089-75e022b8158a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '9bfeacb5-823e-45c1-8157-64dae0868d61'::uuid AS category_uuid, 'suv' AS slug, 'SUV' AS name, dcfc5f94-969f-414b-8089-75e022b8158a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '03eab6de-5ea4-44e8-a99d-d0ee46dbce0d'::uuid AS category_uuid, 'crossovers' AS slug, 'Crossovers' AS name, dcfc5f94-969f-414b-8089-75e022b8158a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '1f5027c4-c225-44fc-bfd5-3cc6ab0c6f0d'::uuid AS category_uuid, '4x4' AS slug, '4x4' AS name, dcfc5f94-969f-414b-8089-75e022b8158a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '12355319-72eb-41ec-91b6-bdda3351df61'::uuid AS category_uuid, 'coupes' AS slug, 'Coupés' AS name, dcfc5f94-969f-414b-8089-75e022b8158a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'a734ee84-d6da-45d5-a97f-9c1b7e3dfa25'::uuid AS category_uuid, 'cabriolets' AS slug, 'Cabriolets' AS name, dcfc5f94-969f-414b-8089-75e022b8158a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '3e12552c-3987-434f-8ce0-a402d97feea1'::uuid AS category_uuid, 'breaks' AS slug, 'Breaks' AS name, dcfc5f94-969f-414b-8089-75e022b8158a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '55f517d4-dbb3-4eff-bb0c-e4380233f13a'::uuid AS category_uuid, 'voitures-familiales' AS slug, 'Voitures familiales' AS name, dcfc5f94-969f-414b-8089-75e022b8158a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'f0c8a15f-0249-4c4b-ae4c-b576f0e59d07'::uuid AS category_uuid, 'vehicules-utilitaires-legers' AS slug, 'Véhicules utilitaires légers' AS name, dcfc5f94-969f-414b-8089-75e022b8158a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '6f064937-e792-424c-99ee-86358fb711e0'::uuid AS category_uuid, 'vans' AS slug, 'Vans' AS name, dcfc5f94-969f-414b-8089-75e022b8158a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '6fd41807-9a45-4319-9ada-58500dc17b80'::uuid AS category_uuid, 'voitures-hybrides' AS slug, 'Voitures hybrides' AS name, dcfc5f94-969f-414b-8089-75e022b8158a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'c422d53b-8490-4292-905c-62aa6e3e2be1'::uuid AS category_uuid, 'voitures-electriques' AS slug, 'Voitures électriques' AS name, dcfc5f94-969f-414b-8089-75e022b8158a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'e26cfa93-8a6f-40c6-bde1-52c52a8d97ca'::uuid AS category_uuid, 'voitures-sportives' AS slug, 'Voitures sportives' AS name, dcfc5f94-969f-414b-8089-75e022b8158a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'fc768067-3949-4dae-bd05-03d479a30c1e'::uuid AS category_uuid, 'voitures-anciennes-collection' AS slug, 'Voitures anciennes & de collection' AS name, dcfc5f94-969f-414b-8089-75e022b8158a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '24620c30-04a4-4636-a4c1-fd3030393abf'::uuid AS category_uuid, 'voitures-reconditionnees' AS slug, 'Voitures reconditionnées' AS name, dcfc5f94-969f-414b-8089-75e022b8158a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '01e0297b-ace8-41bd-b1a1-8bb135ad6e5d'::uuid AS category_uuid, 'camions-legers' AS slug, 'Camions légers' AS name, 0385f154-f5c0-4aa8-9d33-42cfc8d5a1ca::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '9f2f4a3c-a340-47d6-ac78-2f7dedddc35b'::uuid AS category_uuid, 'poids-lourds' AS slug, 'Poids lourds' AS name, 0385f154-f5c0-4aa8-9d33-42cfc8d5a1ca::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '8dbe469e-c487-4edb-9c44-140751adbc45'::uuid AS category_uuid, 'semi-remorques' AS slug, 'Semi-remorques' AS name, 0385f154-f5c0-4aa8-9d33-42cfc8d5a1ca::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '8b2d1620-f826-48f5-aaa7-302dd0bedab6'::uuid AS category_uuid, 'tracteurs-routiers' AS slug, 'Tracteurs routiers' AS name, 0385f154-f5c0-4aa8-9d33-42cfc8d5a1ca::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '8a5d55b9-51e8-461b-811e-c1f5b218ab9b'::uuid AS category_uuid, 'camions-vehicules-professionnels-camions-bennes' AS slug, 'Camions-bennes' AS name, 0385f154-f5c0-4aa8-9d33-42cfc8d5a1ca::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '8996c8d9-3874-4806-be0b-450383ca4a6d'::uuid AS category_uuid, 'camions-frigorifiques' AS slug, 'Camions frigorifiques' AS name, 0385f154-f5c0-4aa8-9d33-42cfc8d5a1ca::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'a196b818-c5f7-4a0f-9909-00c60d8291e5'::uuid AS category_uuid, 'camions-plateaux' AS slug, 'Camions plateaux' AS name, 0385f154-f5c0-4aa8-9d33-42cfc8d5a1ca::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'ba4054e1-50e8-4cde-8925-97be0417958e'::uuid AS category_uuid, 'fourgons-professionnels' AS slug, 'Fourgons professionnels' AS name, 0385f154-f5c0-4aa8-9d33-42cfc8d5a1ca::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '0c008f7c-e3ab-405e-982b-51653a77ca6d'::uuid AS category_uuid, 'fourgonnettes' AS slug, 'Fourgonnettes' AS name, 0385f154-f5c0-4aa8-9d33-42cfc8d5a1ca::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'd8f5ad00-b3ee-4457-bba8-6e1f67e86ac8'::uuid AS category_uuid, 'minibus' AS slug, 'Minibus' AS name, 0385f154-f5c0-4aa8-9d33-42cfc8d5a1ca::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '60ce1bf5-9a72-48a2-965d-c99a6aab6ec8'::uuid AS category_uuid, 'bus' AS slug, 'Bus' AS name, 0385f154-f5c0-4aa8-9d33-42cfc8d5a1ca::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '1585b38d-8c4e-4624-8ae1-66fd32eff616'::uuid AS category_uuid, 'vehicules-de-chantier' AS slug, 'Véhicules de chantier' AS name, 0385f154-f5c0-4aa8-9d33-42cfc8d5a1ca::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '05b57dcc-c5df-4b08-bb3e-2d5bdc3a6089'::uuid AS category_uuid, 'depanneuses' AS slug, 'Dépanneuses' AS name, 0385f154-f5c0-4aa8-9d33-42cfc8d5a1ca::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'ffd442cb-0b96-4fe8-99c1-511df08f25d9'::uuid AS category_uuid, 'vehicules-toles' AS slug, 'Véhicules tôlés' AS name, 0385f154-f5c0-4aa8-9d33-42cfc8d5a1ca::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '4a907cfa-1a47-4dc6-9100-50b7a6c48c62'::uuid AS category_uuid, 'motos-sportives' AS slug, 'Motos sportives' AS name, 9430a779-631b-4814-b41d-499cda250cfe::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '82809913-0878-4191-8219-eda0adb2b249'::uuid AS category_uuid, 'motos-roadster' AS slug, 'Motos roadster' AS name, 9430a779-631b-4814-b41d-499cda250cfe::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '9271c408-3c88-438c-806f-f5836ef2ffb8'::uuid AS category_uuid, 'motos-touring' AS slug, 'Motos touring' AS name, 9430a779-631b-4814-b41d-499cda250cfe::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '22f60321-7373-4b2f-81c1-82d2ef42cac9'::uuid AS category_uuid, 'motos-enduro' AS slug, 'Motos enduro' AS name, 9430a779-631b-4814-b41d-499cda250cfe::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '6c86d9eb-6fef-4676-98fe-b756e5cbb7b4'::uuid AS category_uuid, 'motos-trail' AS slug, 'Motos trail' AS name, 9430a779-631b-4814-b41d-499cda250cfe::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'a4c66b4d-8abc-449a-bb59-55a422dc2905'::uuid AS category_uuid, 'motos-cross' AS slug, 'Motos cross' AS name, 9430a779-631b-4814-b41d-499cda250cfe::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '881da74b-212e-4b2a-bd23-48a6ea9e90f1'::uuid AS category_uuid, 'motos-custom' AS slug, 'Motos custom' AS name, 9430a779-631b-4814-b41d-499cda250cfe::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'd672b552-47d2-4d61-b5ff-206bcca5e4fd'::uuid AS category_uuid, 'scooters-50cc' AS slug, 'Scooters 50cc' AS name, 9430a779-631b-4814-b41d-499cda250cfe::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'dc9c78fc-6319-4449-bd25-38c779a5af08'::uuid AS category_uuid, 'scooters-125cc' AS slug, 'Scooters 125cc' AS name, 9430a779-631b-4814-b41d-499cda250cfe::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'cbfa0bc2-25cf-411c-a17c-780f1ecfbcea'::uuid AS category_uuid, 'maxi-scooters' AS slug, 'Maxi-scooters' AS name, 9430a779-631b-4814-b41d-499cda250cfe::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'e71a8330-afb4-4927-b963-4451bf9aee16'::uuid AS category_uuid, 'mobylettes' AS slug, 'Mobylettes' AS name, 9430a779-631b-4814-b41d-499cda250cfe::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'be4f0149-3b13-4c40-bb2b-333a2a891d81'::uuid AS category_uuid, 'quads-atv' AS slug, 'Quads & ATV' AS name, 9430a779-631b-4814-b41d-499cda250cfe::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '72df51e3-6fd7-496c-90bd-37f04df3d779'::uuid AS category_uuid, 'tricycles-motorises' AS slug, 'Tricycles motorisés' AS name, 9430a779-631b-4814-b41d-499cda250cfe::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '185b0ec1-5212-42d8-8e8b-6ada1c98d84d'::uuid AS category_uuid, 'motos-electriques' AS slug, 'Motos électriques' AS name, 9430a779-631b-4814-b41d-499cda250cfe::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '13492956-519e-4cfd-9361-822543b97869'::uuid AS category_uuid, 'velos-electriques-rapides' AS slug, 'Vélos électriques rapides' AS name, 8e5d3e9a-7777-4be0-8c10-c0e276f1684a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '45bd5c74-a8f0-449b-860a-181bc864eb4b'::uuid AS category_uuid, 'trottinettes-electriques' AS slug, 'Trottinettes électriques' AS name, 8e5d3e9a-7777-4be0-8c10-c0e276f1684a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '6b00f605-81d8-452d-9972-73918fc3b2d1'::uuid AS category_uuid, 'gyropodes' AS slug, 'Gyropodes' AS name, 8e5d3e9a-7777-4be0-8c10-c0e276f1684a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'f70c9806-b185-4282-9166-022e79939792'::uuid AS category_uuid, 'monoroues-electriques' AS slug, 'Monoroues électriques' AS name, 8e5d3e9a-7777-4be0-8c10-c0e276f1684a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'bfe0f418-c837-4298-b62a-5ce74ac64507'::uuid AS category_uuid, 'cyclomoteurs-legers-electriques' AS slug, 'Cyclomoteurs légers électriques' AS name, 8e5d3e9a-7777-4be0-8c10-c0e276f1684a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '04063504-0544-4eff-8734-cfa3eb8e98a0'::uuid AS category_uuid, 'pneus' AS slug, 'Pneus' AS name, 6111e345-3de0-4783-85bc-4c750b02fea5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '586dc837-62c7-43a7-9b00-4fb0573f8e20'::uuid AS category_uuid, 'jantes' AS slug, 'Jantes' AS name, 6111e345-3de0-4783-85bc-4c750b02fea5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'b1ab5d0a-82ef-44f1-9a91-3e9ed2fadedf'::uuid AS category_uuid, 'equipements-accessoires-auto-batteries' AS slug, 'Batteries' AS name, 6111e345-3de0-4783-85bc-4c750b02fea5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '577f0246-8077-423b-8005-4a3af78ba4a2'::uuid AS category_uuid, 'filtres' AS slug, 'Filtres' AS name, 6111e345-3de0-4783-85bc-4c750b02fea5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'f5e84946-69c9-4803-9e24-939db96f1311'::uuid AS category_uuid, 'huiles-lubrifiants' AS slug, 'Huiles & lubrifiants' AS name, 6111e345-3de0-4783-85bc-4c750b02fea5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '413dd3a0-ab18-4bd9-b506-4f1e92a5c0d1'::uuid AS category_uuid, 'plaquettes-frein' AS slug, 'Plaquettes de frein' AS name, 6111e345-3de0-4783-85bc-4c750b02fea5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'b9724e9b-7901-444b-aff7-90f36983aace'::uuid AS category_uuid, 'disques-frein' AS slug, 'Disques de frein' AS name, 6111e345-3de0-4783-85bc-4c750b02fea5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '50bf86b4-bb05-4a80-9bb9-bd47d9a2676b'::uuid AS category_uuid, 'amortisseurs' AS slug, 'Amortisseurs' AS name, 6111e345-3de0-4783-85bc-4c750b02fea5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '07253e53-8a9a-4b97-89b9-e5c97a0bb16b'::uuid AS category_uuid, 'courroies' AS slug, 'Courroies' AS name, 6111e345-3de0-4783-85bc-4c750b02fea5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '538f6331-0f14-40dd-9b68-c46193c98cc2'::uuid AS category_uuid, 'embrayages' AS slug, 'Embrayages' AS name, 6111e345-3de0-4783-85bc-4c750b02fea5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '45595cd4-bca9-49bf-8532-00724cc2d5df'::uuid AS category_uuid, 'equipements-accessoires-auto-bougies' AS slug, 'Bougies' AS name, 6111e345-3de0-4783-85bc-4c750b02fea5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'b7cc6f55-b361-420b-ae62-7c244b1f2239'::uuid AS category_uuid, 'echappements' AS slug, 'Échappements' AS name, 6111e345-3de0-4783-85bc-4c750b02fea5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '0c70be35-f36b-4793-ac9e-8fbe6823e30f'::uuid AS category_uuid, 'pieces-moteur' AS slug, 'Pièces moteur' AS name, 6111e345-3de0-4783-85bc-4c750b02fea5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '41d2a96d-315b-4f3d-b587-3df9a29fb477'::uuid AS category_uuid, 'kits-distribution' AS slug, 'Kits de distribution' AS name, 6111e345-3de0-4783-85bc-4c750b02fea5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'de690e44-d846-46a7-bf51-90d0ac07d107'::uuid AS category_uuid, 'accessoires-interieurs' AS slug, 'Accessoires intérieurs' AS name, 6111e345-3de0-4783-85bc-4c750b02fea5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'ecca7894-daa4-44e0-86a5-6e9eaf57cbaa'::uuid AS category_uuid, 'housses-sieges' AS slug, 'Housses de sièges' AS name, 6111e345-3de0-4783-85bc-4c750b02fea5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '4c1e5a68-e9c1-4e98-895a-bc7f0243a4f4'::uuid AS category_uuid, 'equipements-accessoires-auto-tapis' AS slug, 'Tapis' AS name, 6111e345-3de0-4783-85bc-4c750b02fea5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '5f6cd495-ada4-4100-98ec-dccf43ccf5df'::uuid AS category_uuid, 'gps' AS slug, 'GPS' AS name, 6111e345-3de0-4783-85bc-4c750b02fea5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'ee55c884-13bd-4316-a4d7-d6630ed35719'::uuid AS category_uuid, 'cameras-embarquees' AS slug, 'Caméras embarquées' AS name, 6111e345-3de0-4783-85bc-4c750b02fea5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'ce7486e1-2800-403b-8ee1-71e37ee9d2c9'::uuid AS category_uuid, 'alarmes-auto' AS slug, 'Alarmes auto' AS name, 6111e345-3de0-4783-85bc-4c750b02fea5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '64051934-b7c2-4595-aed9-bbe2d1d222ca'::uuid AS category_uuid, 'equipements-accessoires-auto-kits-mains-libres' AS slug, 'Kits mains-libres' AS name, 6111e345-3de0-4783-85bc-4c750b02fea5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'b313568a-4c52-4d41-91ae-a3a46966f949'::uuid AS category_uuid, 'casques-moto' AS slug, 'Casques moto' AS name, a4b5e56b-aefd-41b8-9429-41fb4028956f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '9ef15ba1-b59a-4bda-bc59-9cb72c140b01'::uuid AS category_uuid, 'blousons-moto' AS slug, 'Blousons moto' AS name, a4b5e56b-aefd-41b8-9429-41fb4028956f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),
  level = EXCLUDED.level,
  category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),
  updated_at = NOW();

-- Lot 7 terminé: 100 entrées
