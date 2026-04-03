-- ============================================================
-- CHUNK 21/49 — 100 catégories
-- Total: 4836 catégories
-- Exécuter dans l'ordre dans Supabase SQL Editor
-- ============================================================

INSERT INTO public.categories
  (category_uuid, slug, name, parent_id, level, is_active, created_at, updated_at)
VALUES
  SELECT 'ea551145-6ce5-40df-809d-13c84b791cb7'::uuid AS category_uuid, 'machines-sous-vide' AS slug, 'Machines sous-vide' AS name, 4368e290-3680-49e1-b6f8-c829584000ee::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT 'cb74e4f5-8191-4c1d-8c46-02d81a114a01'::uuid AS category_uuid, 'chauffe-plats' AS slug, 'Chauffe-plats' AS name, 4368e290-3680-49e1-b6f8-c829584000ee::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT 'b4a102e6-c6cc-4118-9ae2-d913c74ed140'::uuid AS category_uuid, 'mixeurs' AS slug, 'Mixeurs' AS name, 844fb534-3e04-4688-9a8c-56651abb45c3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '7ccd48b0-131f-413b-b420-6dbc2c48b0cb'::uuid AS category_uuid, 'blenders' AS slug, 'Blenders' AS name, 844fb534-3e04-4688-9a8c-56651abb45c3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '6ab9b9cb-a6bf-4d67-94d3-71f341a94439'::uuid AS category_uuid, 'robots-cuiseurs' AS slug, 'Robots cuiseurs' AS name, 844fb534-3e04-4688-9a8c-56651abb45c3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT 'b8cb1d65-1f82-4a75-adeb-d3cfc44e1918'::uuid AS category_uuid, 'robots-patissier' AS slug, 'Robots pâtissier' AS name, 844fb534-3e04-4688-9a8c-56651abb45c3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT 'a0fc302a-0378-4476-b6c6-43c4e9783e6b'::uuid AS category_uuid, 'extracteurs-jus' AS slug, 'Extracteurs de jus' AS name, 844fb534-3e04-4688-9a8c-56651abb45c3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT 'c50994ed-8362-431d-849c-71a0f5451cd2'::uuid AS category_uuid, 'centrifugeuses' AS slug, 'Centrifugeuses' AS name, 844fb534-3e04-4688-9a8c-56651abb45c3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '98dbbf10-5a75-42fc-8233-a785cd35c5ef'::uuid AS category_uuid, 'batteurs' AS slug, 'Batteurs' AS name, 844fb534-3e04-4688-9a8c-56651abb45c3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT 'b8be8a3d-c28e-4976-8532-defed06c2d3a'::uuid AS category_uuid, 'hachoirs' AS slug, 'Hachoirs' AS name, 844fb534-3e04-4688-9a8c-56651abb45c3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '2c197996-c392-465f-ba36-4bafae899ab4'::uuid AS category_uuid, 'grill-panini' AS slug, 'Grill & panini makers' AS name, 844fb534-3e04-4688-9a8c-56651abb45c3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '7e3b1384-8476-4a5a-9e61-22134ab83256'::uuid AS category_uuid, 'gaufriers' AS slug, 'Gaufriers' AS name, 844fb534-3e04-4688-9a8c-56651abb45c3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT 'ea82af6b-b752-4872-b4a8-9b41109fba26'::uuid AS category_uuid, 'crepieres' AS slug, 'Crêpières' AS name, 844fb534-3e04-4688-9a8c-56651abb45c3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT 'fbe33401-cdaa-41f0-93c0-75971ea2e70a'::uuid AS category_uuid, 'cuiseurs-vapeur' AS slug, 'Cuiseurs vapeur' AS name, 844fb534-3e04-4688-9a8c-56651abb45c3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '1a66a8e8-f8c1-4e73-a161-8b9b0180e04a'::uuid AS category_uuid, 'cuiseurs-riz' AS slug, 'Cuiseurs riz' AS name, 844fb534-3e04-4688-9a8c-56651abb45c3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT 'baa34a0b-b24a-489c-9876-d9ce02a85e5c'::uuid AS category_uuid, 'moulins-cafe' AS slug, 'Moulins à café' AS name, 844fb534-3e04-4688-9a8c-56651abb45c3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '88772a82-d77e-402b-8ec5-5d820a98c39a'::uuid AS category_uuid, 'cafetieres' AS slug, 'Cafetières' AS name, 844fb534-3e04-4688-9a8c-56651abb45c3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT 'f401bfe3-a50b-4ccd-8d6e-748f3f39d836'::uuid AS category_uuid, 'expresso' AS slug, 'Expresso' AS name, 88772a82-d77e-402b-8ec5-5d820a98c39a::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '8f868436-0b49-4b4c-9af6-c33bed51d6bd'::uuid AS category_uuid, 'filtre' AS slug, 'Filtre' AS name, 88772a82-d77e-402b-8ec5-5d820a98c39a::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '491e6cbd-f801-4288-a8a6-ff9801bffc4b'::uuid AS category_uuid, 'cafetieres-capsules' AS slug, 'Capsules' AS name, 88772a82-d77e-402b-8ec5-5d820a98c39a::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '71c11efc-a82a-431a-8d7a-82374c9d79a8'::uuid AS category_uuid, 'bouilloires' AS slug, 'Bouilloires' AS name, 844fb534-3e04-4688-9a8c-56651abb45c3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT 'c26c7cf8-169c-450d-8b41-c7a526fa19b6'::uuid AS category_uuid, 'grille-pain' AS slug, 'Grille-pain' AS name, 844fb534-3e04-4688-9a8c-56651abb45c3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '128674d1-7895-443b-9e9e-c2b299d9342e'::uuid AS category_uuid, 'machines-sandwich' AS slug, 'Machines à sandwich' AS name, 844fb534-3e04-4688-9a8c-56651abb45c3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT 'd0596b40-09a4-4593-b394-49c8e12e41dc'::uuid AS category_uuid, 'fondue-raclette' AS slug, 'Appareils à fondue & raclette' AS name, 844fb534-3e04-4688-9a8c-56651abb45c3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT 'c3d43385-0c06-4889-ad77-bc24a6bfa0d7'::uuid AS category_uuid, 'aspirateurs-traineaux' AS slug, 'Aspirateurs traîneaux' AS name, c2fe12ec-c2fa-4eb9-9cbf-caf307afb04b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '50eaa768-b095-4db6-a742-bf789e0ed8ad'::uuid AS category_uuid, 'aspirateurs-balais' AS slug, 'Aspirateurs balais' AS name, c2fe12ec-c2fa-4eb9-9cbf-caf307afb04b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT 'c76ae63c-d782-4360-b264-78c72013d74b'::uuid AS category_uuid, 'aspirateurs-robot' AS slug, 'Aspirateurs robot' AS name, c2fe12ec-c2fa-4eb9-9cbf-caf307afb04b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '2a4dfbca-2985-4e4b-876c-388d2f546760'::uuid AS category_uuid, 'aspirateurs-eau-poussiere' AS slug, 'Aspirateurs eau & poussière' AS name, c2fe12ec-c2fa-4eb9-9cbf-caf307afb04b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT 'c6e06b7a-2077-4e13-adc6-cce1a764e26d'::uuid AS category_uuid, 'nettoyeurs-vapeur' AS slug, 'Nettoyeurs vapeurs' AS name, c2fe12ec-c2fa-4eb9-9cbf-caf307afb04b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT 'ee573ce1-3600-48b3-9eb4-0026029b1c8d'::uuid AS category_uuid, 'nettoyeurs-haute-pression' AS slug, 'Nettoyeurs haute pression domestiques' AS name, c2fe12ec-c2fa-4eb9-9cbf-caf307afb04b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT 'a92b1163-cbc8-450d-9683-f5ba7c82faea'::uuid AS category_uuid, 'balais-electriques' AS slug, 'Balais électriques' AS name, c2fe12ec-c2fa-4eb9-9cbf-caf307afb04b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT 'fcd22a9a-2370-4e4e-b906-e6e0989f3676'::uuid AS category_uuid, 'nettoyeurs-vitres' AS slug, 'Nettoyeurs de vitres' AS name, c2fe12ec-c2fa-4eb9-9cbf-caf307afb04b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT 'b23f88b8-2825-4681-aa4d-7d475411a3b6'::uuid AS category_uuid, 'purificateurs-air' AS slug, 'Purificateurs d’air' AS name, c2fe12ec-c2fa-4eb9-9cbf-caf307afb04b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '99c7a2cb-53db-4807-a92f-b44757a339b4'::uuid AS category_uuid, 'deshumidificateurs' AS slug, 'Déshumidificateurs' AS name, c2fe12ec-c2fa-4eb9-9cbf-caf307afb04b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '48462c32-2e88-424a-a64b-62070c120d6f'::uuid AS category_uuid, 'humidificateurs' AS slug, 'Humidificateurs' AS name, c2fe12ec-c2fa-4eb9-9cbf-caf307afb04b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '2015106d-7fcb-4316-874f-99ae984824c2'::uuid AS category_uuid, 'climatiseurs-split' AS slug, 'Climatiseurs split' AS name, 9f603d9b-2096-45d3-bb06-7cd7abedb8d9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT 'ec6bc8f4-6030-40f0-857a-fece2d748323'::uuid AS category_uuid, 'climatiseurs-mobiles' AS slug, 'Climatiseurs mobiles' AS name, 9f603d9b-2096-45d3-bb06-7cd7abedb8d9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '4051de75-bef8-4aa4-851d-79b5c5751270'::uuid AS category_uuid, 'ventilateurs' AS slug, 'Ventilateurs' AS name, 9f603d9b-2096-45d3-bb06-7cd7abedb8d9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT 'b2e1f6be-56bb-4ae5-aefa-c6df360b3730'::uuid AS category_uuid, 'tour' AS slug, 'Tour' AS name, 4051de75-bef8-4aa4-851d-79b5c5751270::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '3d521288-80ff-4e58-aabd-4ac06dee4cbd'::uuid AS category_uuid, 'mural' AS slug, 'Mural' AS name, 4051de75-bef8-4aa4-851d-79b5c5751270::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '11840008-e698-4310-8001-0407b0b9b42d'::uuid AS category_uuid, 'de-table' AS slug, 'De table' AS name, 4051de75-bef8-4aa4-851d-79b5c5751270::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '8154b01b-0625-453c-8287-b61b45a7a80f'::uuid AS category_uuid, 'radiateurs-electriques' AS slug, 'Radiateurs électriques' AS name, 9f603d9b-2096-45d3-bb06-7cd7abedb8d9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '13b2c373-92f3-4071-8d85-4619c9541fcc'::uuid AS category_uuid, 'chauffages-soufflants' AS slug, 'Chauffages soufflants' AS name, 9f603d9b-2096-45d3-bb06-7cd7abedb8d9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT 'fa50f244-8d57-4630-90d7-e0be189a9c53'::uuid AS category_uuid, 'chauffages-gaz' AS slug, 'Chauffages à gaz' AS name, 9f603d9b-2096-45d3-bb06-7cd7abedb8d9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT 'ed87fdcd-2d55-48e3-9304-af4484bfb210'::uuid AS category_uuid, 'poeles-petrole' AS slug, 'Poêles à pétrole' AS name, 9f603d9b-2096-45d3-bb06-7cd7abedb8d9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT 'e586ed02-5e0d-4add-84e3-af14cc45ecff'::uuid AS category_uuid, 'chauffe-eau-electriques' AS slug, 'Chauffe-eau électriques' AS name, 9f603d9b-2096-45d3-bb06-7cd7abedb8d9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '63cceac6-de15-4b40-93c9-39b15e3ecb76'::uuid AS category_uuid, 'chauffe-eau-gaz' AS slug, 'Chauffe-eau gaz' AS name, 9f603d9b-2096-45d3-bb06-7cd7abedb8d9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '33cb8f40-c7db-4f71-a8eb-022cccdd3956'::uuid AS category_uuid, 'chauffage-solaire-domestique' AS slug, 'Chauffage solaire domestique' AS name, 9f603d9b-2096-45d3-bb06-7cd7abedb8d9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '4af8a59f-1d58-457d-be8c-2923c73f0ed7'::uuid AS category_uuid, 'defroisseurs-vapeur' AS slug, 'Défroisseurs vapeur' AS name, 9f603d9b-2096-45d3-bb06-7cd7abedb8d9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '0c4b5fe9-6736-478a-a298-e0eaecdfe006'::uuid AS category_uuid, 'electromenager-salle-de-bain-seche-cheveux' AS slug, 'Sèche-cheveux' AS name, 2b09fa7a-c359-415d-86a9-b2c97a302736::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '72e17c49-da1a-4f9c-8ac7-d3e5cda8d288'::uuid AS category_uuid, 'lisseurs-boucleurs' AS slug, 'Lisseurs & boucleurs' AS name, 2b09fa7a-c359-415d-86a9-b2c97a302736::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '2d6b829e-2dab-4588-8d08-16c88f1ad33d'::uuid AS category_uuid, 'tondeuses-rasoirs' AS slug, 'Tondeuses & rasoirs électriques' AS name, 2b09fa7a-c359-415d-86a9-b2c97a302736::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT 'f7ee370b-c974-4e38-b797-6e8cb294bbe0'::uuid AS category_uuid, 'epilateurs' AS slug, 'Épilateurs' AS name, 2b09fa7a-c359-415d-86a9-b2c97a302736::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '5e126acc-e118-43ec-ad2f-0f2e27e97f8a'::uuid AS category_uuid, 'brosse-visage' AS slug, 'Brosse visage électrique' AS name, 2b09fa7a-c359-415d-86a9-b2c97a302736::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT 'df09637e-678f-4de9-b250-c15ec67e1ab8'::uuid AS category_uuid, 'miroirs-lumineux' AS slug, 'Miroirs lumineux' AS name, 2b09fa7a-c359-415d-86a9-b2c97a302736::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '68cda3a1-36a8-4f60-8cba-3b7c84b4097e'::uuid AS category_uuid, 'sterilisateurs-desinfecteurs' AS slug, 'Stérilisateurs & désinfecteurs' AS name, 2b09fa7a-c359-415d-86a9-b2c97a302736::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '3f9a6f52-5ac7-40e3-9670-0fa7c7f0a6cf'::uuid AS category_uuid, 'filtres-eau' AS slug, 'Filtres à eau' AS name, 15b09361-0f9b-4396-8e97-6a7b31712475::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT 'ea7ff59b-0e1c-4e82-b2e6-2db715829c50'::uuid AS category_uuid, 'purificateurs-eau' AS slug, 'Purificateurs' AS name, 15b09361-0f9b-4396-8e97-6a7b31712475::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '8b37f278-2b72-41e4-9db6-beccca6dd282'::uuid AS category_uuid, 'traitement-eau-fontaines-eau' AS slug, 'Fontaines à eau' AS name, 15b09361-0f9b-4396-8e97-6a7b31712475::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '7a18f21c-4737-4144-b97e-c389597bb934'::uuid AS category_uuid, 'distributeurs-eau-chaude-froide' AS slug, 'Distributeurs eau chaude/froide' AS name, 15b09361-0f9b-4396-8e97-6a7b31712475::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT 'b646094a-9ae0-48b3-8b4b-38efbfcb1ad2'::uuid AS category_uuid, 'osmose-inverse' AS slug, 'Appareils osmose inverse' AS name, 15b09361-0f9b-4396-8e97-6a7b31712475::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '8b9c887b-f877-4cca-8d5f-fd8ecc483538'::uuid AS category_uuid, 'machines-pain' AS slug, 'Machines à pain' AS name, 059043e3-ea7c-4636-aba3-ba42d33fa2c2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '73299559-00e5-4a8c-a226-d02ea1d71f4f'::uuid AS category_uuid, 'machines-pates' AS slug, 'Machines à pâtes' AS name, 059043e3-ea7c-4636-aba3-ba42d33fa2c2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT 'd645e953-9b5d-4ae9-86e4-dc70c27411a2'::uuid AS category_uuid, 'machines-glace' AS slug, 'Machines à glace' AS name, 059043e3-ea7c-4636-aba3-ba42d33fa2c2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '53405a62-d37e-4c70-9451-9ba13584c617'::uuid AS category_uuid, 'hot-dog' AS slug, 'Appareils à hot-dog' AS name, 059043e3-ea7c-4636-aba3-ba42d33fa2c2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '9a5478c5-f487-4fd1-b035-6805209062e2'::uuid AS category_uuid, 'sorbetieres' AS slug, 'Sorbetières' AS name, 059043e3-ea7c-4636-aba3-ba42d33fa2c2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '9c3937f7-18f5-4d4c-a2d5-4ec5b32ffb6d'::uuid AS category_uuid, 'deshydrateurs-alimentaires' AS slug, 'Déshydrateurs alimentaires' AS name, 059043e3-ea7c-4636-aba3-ba42d33fa2c2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '99c02eba-8eac-41bb-8560-180e7dc87102'::uuid AS category_uuid, 'fumoir' AS slug, 'Appareils fumoir' AS name, 059043e3-ea7c-4636-aba3-ba42d33fa2c2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '922d18bd-ecf7-4955-91ed-bdbb96a8a332'::uuid AS category_uuid, 'plateaux-chauffants' AS slug, 'Plateaux chauffants électriques' AS name, 059043e3-ea7c-4636-aba3-ba42d33fa2c2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '0ba1512b-9610-43f1-8013-4eed1e604bce'::uuid AS category_uuid, 'armoires-refrigerees' AS slug, 'Armoires réfrigérées' AS name, 4fa2441e-d631-4e39-a5ce-9bd58a02f54e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT 'da56cd40-a9a8-4b42-9bda-41f71c85f68c'::uuid AS category_uuid, 'congelateurs-pro' AS slug, 'Congélateurs pro' AS name, 4fa2441e-d631-4e39-a5ce-9bd58a02f54e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '8bb6cdde-d289-4386-87dd-ee88fdcc2dcd'::uuid AS category_uuid, 'vitrines-refrigerees' AS slug, 'Vitrines réfrigérées' AS name, 4fa2441e-d631-4e39-a5ce-9bd58a02f54e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'dc65243a-c111-42b5-b184-f67ea97046aa'::uuid AS category_uuid, 'comptoirs-froids' AS slug, 'Comptoirs froids' AS name, 4fa2441e-d631-4e39-a5ce-9bd58a02f54e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'efb20219-8068-45b7-93fa-852d20ff7a1e'::uuid AS category_uuid, 'machines-glacons' AS slug, 'Machines à glaçons' AS name, 4fa2441e-d631-4e39-a5ce-9bd58a02f54e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '2687d444-b813-4197-85d7-1148246cbcae'::uuid AS category_uuid, 'cellules-refroidissement' AS slug, 'Cellules de refroidissement' AS name, 4fa2441e-d631-4e39-a5ce-9bd58a02f54e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'badae2ed-2b40-42e0-906f-05c118626840'::uuid AS category_uuid, 'fours-pro' AS slug, 'Fours pro' AS name, c5dcdef5-f543-4fd6-9000-77789e649aa9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'a69f096a-5096-4c80-a7f2-5fc6d6e668c5'::uuid AS category_uuid, 'pizza' AS slug, 'Pizza' AS name, badae2ed-2b40-42e0-906f-05c118626840::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '7641739c-31ed-4302-9486-d49d982795ba'::uuid AS category_uuid, 'pain' AS slug, 'Pain' AS name, badae2ed-2b40-42e0-906f-05c118626840::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '6e032b48-ab76-4fbb-af98-71e0a539776c'::uuid AS category_uuid, 'convection' AS slug, 'Convection' AS name, badae2ed-2b40-42e0-906f-05c118626840::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'f7af42df-c5d6-43fd-8577-2a2fcf3f4b23'::uuid AS category_uuid, 'plaques-gaz-pro' AS slug, 'Plaques gaz pro' AS name, c5dcdef5-f543-4fd6-9000-77789e649aa9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'bef150a0-0dfe-4eca-b122-e548fb275afd'::uuid AS category_uuid, 'grillades-planchas' AS slug, 'Grillades & planchas' AS name, c5dcdef5-f543-4fd6-9000-77789e649aa9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'e4d54375-e869-4c1a-ac76-5d362f81d6d6'::uuid AS category_uuid, 'marmites-electriques' AS slug, 'Marmites électriques' AS name, c5dcdef5-f543-4fd6-9000-77789e649aa9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '3770a9bf-1d67-4549-9d44-1da6538f51f0'::uuid AS category_uuid, 'friteuses-pro' AS slug, 'Friteuses professionnelles' AS name, c5dcdef5-f543-4fd6-9000-77789e649aa9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'b4b9e873-3a95-4a98-afe9-a525dcc55eff'::uuid AS category_uuid, 'bain-maries' AS slug, 'Bain-maries' AS name, c5dcdef5-f543-4fd6-9000-77789e649aa9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '9efd34a4-8499-42da-ab31-8a4e3829f662'::uuid AS category_uuid, 'filtres-aspirateurs' AS slug, 'Filtres aspirateurs' AS name, 90c7121d-0413-45c2-859b-87bb69f72a94::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '3cc1e72e-63bd-430d-961c-39b70eaedcf3'::uuid AS category_uuid, 'filtres-frigos' AS slug, 'Filtres frigos' AS name, 90c7121d-0413-45c2-859b-87bb69f72a94::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '3b497f11-d98e-4358-88e3-7490bcdfadc3'::uuid AS category_uuid, 'bacs-legumes' AS slug, 'Bacs à légumes' AS name, 90c7121d-0413-45c2-859b-87bb69f72a94::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '2820ac8e-bb2a-4f9e-a634-a903845e424c'::uuid AS category_uuid, 'bouteilles-cartouches-gaz' AS slug, 'Bouteilles & cartouches gaz' AS name, 90c7121d-0413-45c2-859b-87bb69f72a94::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'e73f7b81-4614-4e1e-b86c-9b680bdbe5a4'::uuid AS category_uuid, 'tuyaux-arrivee-evacuation' AS slug, 'Tuyaux d' AS name, 90c7121d-0413-45c2-859b-87bb69f72a94::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '2128eaca-5e5e-4e68-9144-3248cfc0b0b3'::uuid AS category_uuid, 'poignees-boutons' AS slug, 'Poignées & boutons' AS name, 90c7121d-0413-45c2-859b-87bb69f72a94::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'ff42dd75-8485-4783-8365-2ff810ed81ec'::uuid AS category_uuid, 'plateaux-micro-ondes' AS slug, 'Plateaux micro-ondes' AS name, 90c7121d-0413-45c2-859b-87bb69f72a94::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '9e186da5-6399-4480-8766-8d7572490aea'::uuid AS category_uuid, 'batteries-cuisine-compatibles' AS slug, 'Batteries de cuisine compatibles appareils' AS name, 90c7121d-0413-45c2-859b-87bb69f72a94::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '487dd824-87a4-4238-91d7-9662ca54d965'::uuid AS category_uuid, 'grilles-plaques' AS slug, 'Grilles & plaques' AS name, 90c7121d-0413-45c2-859b-87bb69f72a94::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '8f4ee0bf-9098-4cb0-8180-77a4b577c97c'::uuid AS category_uuid, 'accessoires-robot-cuisine' AS slug, 'Accessoires robot cuisine' AS name, 90c7121d-0413-45c2-859b-87bb69f72a94::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '8cf4656b-06de-4ffc-8fd7-d2c0e6681c92'::uuid AS category_uuid, 'lames-de-coupe' AS slug, 'Lames de coupe' AS name, 90c7121d-0413-45c2-859b-87bb69f72a94::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '52214a55-4542-4901-bd80-c3cebdfdd97a'::uuid AS category_uuid, 'pieces-chauffe-eau' AS slug, 'Pièces chauffe-eau' AS name, 90c7121d-0413-45c2-859b-87bb69f72a94::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '147d8607-1bcf-4cc2-bae3-06f6b72d8719'::uuid AS category_uuid, 'mini-glacieres-electriques' AS slug, 'Mini glaçières électriques' AS name, c5fda5fb-8ee9-4bd9-b0b3-4d2749bc8558::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'ea368a5d-de82-4bba-a714-b4354a06ffb6'::uuid AS category_uuid, 'mini-cuiseurs' AS slug, 'Mini cuiseurs' AS name, c5fda5fb-8ee9-4bd9-b0b3-4d2749bc8558::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '2f37911a-878f-4234-b6f2-2ac88cbeeefb'::uuid AS category_uuid, 'appareils-portables-batterie' AS slug, 'Appareils portables à batterie' AS name, c5fda5fb-8ee9-4bd9-b0b3-4d2749bc8558::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '3190bfe1-35f8-4db2-b9f7-73c45de4697b'::uuid AS category_uuid, 'mini-ventilateurs' AS slug, 'Mini ventilateurs' AS name, c5fda5fb-8ee9-4bd9-b0b3-4d2749bc8558::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),
  level = EXCLUDED.level,
  category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),
  updated_at = NOW();

-- Lot 21 terminé: 100 entrées
