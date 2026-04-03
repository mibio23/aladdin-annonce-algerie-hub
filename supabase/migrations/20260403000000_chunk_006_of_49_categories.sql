-- ============================================================
-- CHUNK 6/49 — 100 catégories
-- Total: 4836 catégories
-- Exécuter dans l'ordre dans Supabase SQL Editor
-- ============================================================

INSERT INTO public.categories
  (category_uuid, slug, name, parent_id, level, is_active, created_at, updated_at)
VALUES
  SELECT '303d6dab-e8d7-4285-b92b-2f96f3a57c95'::uuid AS category_uuid, 'imprimantes-jet-encre' AS slug, 'Imprimantes jet d’encre' AS name, 9e494024-3085-4285-8102-d9564f79b767::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '9b07155b-4b17-4ac2-a924-4af2dc528df1'::uuid AS category_uuid, 'photocopieurs' AS slug, 'Photocopieurs' AS name, 9e494024-3085-4285-8102-d9564f79b767::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '703ed9c3-d191-48a9-9bc8-78cf5eeb99df'::uuid AS category_uuid, 'scanners-pro' AS slug, 'Scanners' AS name, 9e494024-3085-4285-8102-d9564f79b767::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'bfb4980b-f170-4d3a-a5ae-23c55fde7800'::uuid AS category_uuid, 'fax' AS slug, 'Fax' AS name, 9e494024-3085-4285-8102-d9564f79b767::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '18547aa6-bd2a-480e-a8ac-c1787011f56c'::uuid AS category_uuid, 'multifonctions' AS slug, 'Imprimantes multifonctions' AS name, 9e494024-3085-4285-8102-d9564f79b767::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '303caa08-0e4b-4c54-93de-9c7847caed1a'::uuid AS category_uuid, 'cartouches-encre' AS slug, 'Cartouches d’encre' AS name, 9e494024-3085-4285-8102-d9564f79b767::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'b19aa712-59b2-4d56-8efc-9bb911687942'::uuid AS category_uuid, 'toners' AS slug, 'Toners' AS name, 9e494024-3085-4285-8102-d9564f79b767::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '714cfc5d-b8f9-4969-a281-79f53bda5943'::uuid AS category_uuid, 'plastifieuses' AS slug, 'Plastifieuses' AS name, 9e494024-3085-4285-8102-d9564f79b767::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '3a5d6d9b-7991-405f-8153-695f5851c637'::uuid AS category_uuid, 'destructeurs-documents' AS slug, 'Destructeurs de documents' AS name, 9e494024-3085-4285-8102-d9564f79b767::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'acc5e583-a51d-4669-b207-dadb391fea1d'::uuid AS category_uuid, 'videoprojecteurs-pro' AS slug, 'Vidéoprojecteurs professionnels' AS name, 9e494024-3085-4285-8102-d9564f79b767::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'd6f0c564-2da5-440c-81e4-73ef94e2d4f8'::uuid AS category_uuid, 'tableaux-blancs' AS slug, 'Tableaux blancs' AS name, 9e494024-3085-4285-8102-d9564f79b767::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'fa2592ff-4d94-4226-aaf2-751bcec0374e'::uuid AS category_uuid, 'equipements-conference' AS slug, 'Équipements de conférence' AS name, 9e494024-3085-4285-8102-d9564f79b767::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '9618b46e-2e88-42e6-b366-d6d50243eea1'::uuid AS category_uuid, 'electronique-gadgets-montres-connectees' AS slug, 'Montres connectées' AS name, 461ad438-e786-49b9-a056-52abb0250181::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '5460784d-81d5-4992-9ed1-1561cf28c21f'::uuid AS category_uuid, 'electronique-gadgets-bracelets-connectes' AS slug, 'Bracelets connectés' AS name, 461ad438-e786-49b9-a056-52abb0250181::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'bd5be342-0dfb-4af0-a91f-966145d6edb0'::uuid AS category_uuid, 'lunettes-intelligentes' AS slug, 'Lunettes intelligentes' AS name, 461ad438-e786-49b9-a056-52abb0250181::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '9f1587fe-34d7-4e03-99c0-b5977081dfc3'::uuid AS category_uuid, 'electronique-gadgets-action-cams' AS slug, 'Action cams' AS name, 461ad438-e786-49b9-a056-52abb0250181::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '89b94289-1914-4446-a4a5-1fceac80a152'::uuid AS category_uuid, 'electronique-gadgets-drones' AS slug, 'Drones' AS name, 461ad438-e786-49b9-a056-52abb0250181::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '42c925eb-2a1c-401e-a392-86a92da7d32b'::uuid AS category_uuid, 'electronique-gadgets-mini-projecteurs' AS slug, 'Mini projecteurs' AS name, 461ad438-e786-49b9-a056-52abb0250181::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '1f877f2c-c658-4a33-a078-c5256df974d8'::uuid AS category_uuid, 'casques-vr' AS slug, 'Casques VR' AS name, 461ad438-e786-49b9-a056-52abb0250181::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '40f8ef7b-92b5-4f69-abd4-ab1bf6eb85d2'::uuid AS category_uuid, 'dispositifs-ar' AS slug, 'Dispositifs AR' AS name, 461ad438-e786-49b9-a056-52abb0250181::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '16aac3aa-de3e-4d21-9553-97ab70357ba5'::uuid AS category_uuid, 'liseuses' AS slug, 'Liseuses électroniques' AS name, 461ad438-e786-49b9-a056-52abb0250181::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '34daec30-967f-4478-869a-ea2019592165'::uuid AS category_uuid, 'radios' AS slug, 'Radios' AS name, 461ad438-e786-49b9-a056-52abb0250181::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '2f2079ee-5466-4f5a-a1cd-c8d8f683f3f2'::uuid AS category_uuid, 'talkie-walkies' AS slug, 'Talkie‑walkies' AS name, 461ad438-e786-49b9-a056-52abb0250181::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '5b1fed46-c4f8-4fa7-afd7-2aacd9acdc4d'::uuid AS category_uuid, 'gps-portables' AS slug, 'GPS portables' AS name, 461ad438-e786-49b9-a056-52abb0250181::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '0fd01bf8-ecce-411b-b1e1-66e666bab49e'::uuid AS category_uuid, 'stylos-numeriques' AS slug, 'Stylos numériques' AS name, 461ad438-e786-49b9-a056-52abb0250181::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'ac07d7db-4304-4f35-bc72-87fd8b7c5666'::uuid AS category_uuid, 'maison-intelligente-ampoules-connectees' AS slug, 'Ampoules connectées' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'c024a93a-5a40-411e-9213-fa3a91ea8881'::uuid AS category_uuid, 'bandes-led' AS slug, 'Bandes LED' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '306a9eb1-626a-49c4-810c-f4a6d601a105'::uuid AS category_uuid, 'maison-intelligente-prises-intelligentes' AS slug, 'Prises intelligentes' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '2d6597f0-46a0-4767-9571-7e9e6b121131'::uuid AS category_uuid, 'cameras-securite' AS slug, 'Caméras de sécurité' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'ad286cd7-8eff-4bf8-9e57-6fa380c5e37a'::uuid AS category_uuid, 'cameras-ip' AS slug, 'Caméras IP' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '97d51124-5938-4aed-9031-c314e13f5a68'::uuid AS category_uuid, 'systemes-alarme' AS slug, 'Systèmes d’alarme' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'e6b2f755-3fed-4e85-87f7-28eed3be0ce4'::uuid AS category_uuid, 'serrures-connectees' AS slug, 'Serrures connectées' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '7f9c5abd-0194-46cb-84db-e709c9bd77c7'::uuid AS category_uuid, 'thermostats' AS slug, 'Thermostats' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'c8bf9ace-0b34-41d9-9bf0-698da1afb146'::uuid AS category_uuid, 'maison-intelligente-capteurs' AS slug, 'Capteurs' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'eac53467-0615-4972-abde-497afc3422f2'::uuid AS category_uuid, 'mouvement' AS slug, 'Mouvement' AS name, NULL::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '56379b4b-9cdf-4270-8422-8d7e735c03c5'::uuid AS category_uuid, 'fumee' AS slug, 'Fumée' AS name, NULL::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'bded2a95-ec60-4b37-bc74-5c64f81efc99'::uuid AS category_uuid, 'fuite-eau' AS slug, 'Fuite d’eau' AS name, NULL::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'd5f669a6-2e81-4bae-bb57-f91f2416e1d6'::uuid AS category_uuid, 'interrupteurs-intelligents' AS slug, 'Interrupteurs intelligents' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '919ba203-1e0f-4008-983a-a4841492a479'::uuid AS category_uuid, 'assistants-vocaux' AS slug, 'Assistants vocaux' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'b842d8ea-0192-4253-b330-e1160597c275'::uuid AS category_uuid, 'sonnettes-video' AS slug, 'Sonnettes vidéo' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'a97c7041-179d-4044-ac66-080f3ac09684'::uuid AS category_uuid, 'televiseurs-led' AS slug, 'Téléviseurs LED' AS name, 1a2156bc-386f-4cc3-bf29-01ef00a0cb92::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '98893580-db68-4b35-ade4-3cad20c74120'::uuid AS category_uuid, 'televiseurs-oled' AS slug, 'Téléviseurs OLED' AS name, 1a2156bc-386f-4cc3-bf29-01ef00a0cb92::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '9e94e259-0650-41ac-849f-f15188e33261'::uuid AS category_uuid, 'qled' AS slug, 'QLED' AS name, 1a2156bc-386f-4cc3-bf29-01ef00a0cb92::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '9f0cdfe1-ee97-47c4-b601-15ff06f3d1f8'::uuid AS category_uuid, 'smart-tv' AS slug, 'Smart TV' AS name, 1a2156bc-386f-4cc3-bf29-01ef00a0cb92::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'f3480dc5-be1b-4ddc-8ce9-b108e724b227'::uuid AS category_uuid, 'android-tv' AS slug, 'Android TV' AS name, 1a2156bc-386f-4cc3-bf29-01ef00a0cb92::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '880ca406-471d-4462-8739-0c7ca0ceed9f'::uuid AS category_uuid, 'recepteurs-tv' AS slug, 'Récepteurs TV' AS name, 1a2156bc-386f-4cc3-bf29-01ef00a0cb92::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '24bfdea2-8f4a-4c98-839e-127ec8fc7708'::uuid AS category_uuid, 'decodeurs-satellites' AS slug, 'Décodeurs satellites' AS name, 1a2156bc-386f-4cc3-bf29-01ef00a0cb92::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '64aeeccf-de97-4d9a-97be-71fa14f626cf'::uuid AS category_uuid, 'box-tv-multimedia' AS slug, 'Box TV et multimédia' AS name, 1a2156bc-386f-4cc3-bf29-01ef00a0cb92::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '13f0f96d-2a28-4598-98d7-efec46e38182'::uuid AS category_uuid, 'lecteurs-multimedias' AS slug, 'Lecteurs multimédias' AS name, 1a2156bc-386f-4cc3-bf29-01ef00a0cb92::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '2509bc9b-ae88-4ae5-bcd8-19d92ea6a0d6'::uuid AS category_uuid, 'tv-divertissement-barres-de-son' AS slug, 'Barres de son' AS name, 1a2156bc-386f-4cc3-bf29-01ef00a0cb92::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'c818ccf0-f3d4-49b0-82cf-b9fceced1dae'::uuid AS category_uuid, 'home-cinema' AS slug, 'Home cinéma' AS name, 1a2156bc-386f-4cc3-bf29-01ef00a0cb92::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'bc2aea14-0cdd-423b-8f04-7db5ea7710d9'::uuid AS category_uuid, 'lecteurs-blu-ray' AS slug, 'Lecteurs Blu‑ray' AS name, 1a2156bc-386f-4cc3-bf29-01ef00a0cb92::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'ec184d52-dfb7-4510-ba2f-39e22fdb11b0'::uuid AS category_uuid, 'chargeurs' AS slug, 'Chargeurs' AS name, 815c4b25-4a94-4d4c-9315-301d2a076027::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '08a37f17-b8e0-4833-a5ba-27e17b9d6211'::uuid AS category_uuid, 'chargeurs-rapides' AS slug, 'Chargeurs rapides' AS name, 815c4b25-4a94-4d4c-9315-301d2a076027::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'ed829ecb-c25c-4d57-ac15-6a0e4747b40a'::uuid AS category_uuid, 'accessoires-mobiles-powerbanks' AS slug, 'Powerbanks' AS name, 815c4b25-4a94-4d4c-9315-301d2a076027::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '8fb62401-7d0a-4397-9747-bba4be245f1e'::uuid AS category_uuid, 'cables-adaptateurs' AS slug, 'Câbles et adaptateurs' AS name, 815c4b25-4a94-4d4c-9315-301d2a076027::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'b3f476dc-9454-4fff-8273-5598429ecc54'::uuid AS category_uuid, 'accessoires-mobiles-chargeurs-sans-fil' AS slug, 'Chargeurs sans fil' AS name, 815c4b25-4a94-4d4c-9315-301d2a076027::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '742ca047-f85a-4d4b-ac40-667d1fe4bdbe'::uuid AS category_uuid, 'accessoires-mobiles-chargeurs-voiture' AS slug, 'Chargeurs voiture' AS name, 815c4b25-4a94-4d4c-9315-301d2a076027::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'a1aac57d-03c4-45ad-89e3-92834c2be896'::uuid AS category_uuid, 'hubs-usb' AS slug, 'Hubs USB' AS name, 815c4b25-4a94-4d4c-9315-301d2a076027::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '60e21c53-0adf-4056-9f22-c2d7a8786612'::uuid AS category_uuid, 'accessoires-mobiles-protections-ecran' AS slug, 'Protections d’écran' AS name, 815c4b25-4a94-4d4c-9315-301d2a076027::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '0e40448a-0803-43be-812f-4e6dd465efe3'::uuid AS category_uuid, 'claviers-tablettes' AS slug, 'Claviers pour tablettes' AS name, 815c4b25-4a94-4d4c-9315-301d2a076027::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '2bc82d03-6749-4961-a63b-bc7825a42ed8'::uuid AS category_uuid, 'stylets-tactiles' AS slug, 'Stylets tactiles' AS name, 815c4b25-4a94-4d4c-9315-301d2a076027::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '3563501a-9064-4fc4-bef1-d1595d2aaf9f'::uuid AS category_uuid, 'stations-accueil-mobiles' AS slug, 'Stations d’accueil' AS name, 815c4b25-4a94-4d4c-9315-301d2a076027::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '2d74f439-d21a-45fa-8437-55202315e0a6'::uuid AS category_uuid, 'informatique-professionnelle-serveurs' AS slug, 'Serveurs' AS name, b827616f-0175-475c-81ff-04d4479ab8a0::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'e0fcee1e-d4ed-4d7d-867d-5e9c59fb0287'::uuid AS category_uuid, 'baies-serveurs' AS slug, 'Baies de serveurs' AS name, b827616f-0175-475c-81ff-04d4479ab8a0::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'd0b58b8e-f89a-4a20-9f00-b4ffb9a22937'::uuid AS category_uuid, 'nas' AS slug, 'NAS' AS name, b827616f-0175-475c-81ff-04d4479ab8a0::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '82a2b54b-f532-4f08-9427-2412d74e3102'::uuid AS category_uuid, 'onduleurs-ups' AS slug, 'Onduleurs UPS' AS name, b827616f-0175-475c-81ff-04d4479ab8a0::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '2a625803-2520-4622-b74e-1aaa4df0a799'::uuid AS category_uuid, 'switches-professionnels' AS slug, 'Switches professionnels' AS name, b827616f-0175-475c-81ff-04d4479ab8a0::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '8530a5a0-9809-4ec4-84cf-18ae82c8ef50'::uuid AS category_uuid, 'pare-feux-reseau' AS slug, 'Pare‑feux réseau' AS name, b827616f-0175-475c-81ff-04d4479ab8a0::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '9a0f098a-7796-4e97-a2ae-cbd447e0927a'::uuid AS category_uuid, 'equipements-cloud' AS slug, 'Équipements cloud' AS name, b827616f-0175-475c-81ff-04d4479ab8a0::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '6054138a-9daa-4d51-a5f2-76d461490a94'::uuid AS category_uuid, 'appliances-sauvegarde' AS slug, 'Appliances de sauvegarde' AS name, b827616f-0175-475c-81ff-04d4479ab8a0::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'd57cf019-4efe-47d3-830f-c830b2eb0913'::uuid AS category_uuid, 'dispositifs-biometriques' AS slug, 'Dispositifs biométriques' AS name, b827616f-0175-475c-81ff-04d4479ab8a0::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '6ab203fe-c2a4-47de-ad89-1ae11d3519e3'::uuid AS category_uuid, 'systemes-conference-haut-de-gamme' AS slug, 'Systèmes de conférence haut de gamme' AS name, b827616f-0175-475c-81ff-04d4479ab8a0::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'd3f53607-3880-405f-987a-8ca695b7b57a'::uuid AS category_uuid, 'capteurs-electroniques' AS slug, 'Capteurs électroniques' AS name, b0077d97-d7de-42de-88bc-79d83f4a0e5e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'd8871831-d6c0-4ac7-92de-98042d13ea5f'::uuid AS category_uuid, 'resistances' AS slug, 'Résistances' AS name, b0077d97-d7de-42de-88bc-79d83f4a0e5e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '7430adeb-1a2c-4ab0-abd6-f74088ebeed7'::uuid AS category_uuid, 'condensateurs' AS slug, 'Condensateurs' AS name, b0077d97-d7de-42de-88bc-79d83f4a0e5e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'ba3e3275-5232-444d-be0a-b758b9d7c5e1'::uuid AS category_uuid, 'diodes' AS slug, 'Diodes' AS name, b0077d97-d7de-42de-88bc-79d83f4a0e5e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '3eb63267-78b5-4ceb-b60a-c9a9e70041c4'::uuid AS category_uuid, 'transistors' AS slug, 'Transistors' AS name, b0077d97-d7de-42de-88bc-79d83f4a0e5e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'c896db6f-23f3-41d8-8e9f-068df2f5706b'::uuid AS category_uuid, 'microcontroleurs' AS slug, 'Microcontrôleurs' AS name, b0077d97-d7de-42de-88bc-79d83f4a0e5e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'de2b2851-1a53-4299-a426-fd9f1d9c7e7c'::uuid AS category_uuid, 'cartes-arduino' AS slug, 'Cartes Arduino' AS name, b0077d97-d7de-42de-88bc-79d83f4a0e5e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '5648a3a7-57a2-42ef-9c1b-500c364a861c'::uuid AS category_uuid, 'raspberry-pi' AS slug, 'Raspberry Pi' AS name, b0077d97-d7de-42de-88bc-79d83f4a0e5e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'efe5fe27-9f17-471f-b0e8-df4fdd21b86b'::uuid AS category_uuid, 'breadboards' AS slug, 'Breadboards' AS name, b0077d97-d7de-42de-88bc-79d83f4a0e5e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '0bc8f284-1f51-4686-a6fe-8ef2f7695b5b'::uuid AS category_uuid, 'stations-soudage' AS slug, 'Stations de soudage' AS name, b0077d97-d7de-42de-88bc-79d83f4a0e5e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '9c96056c-3321-424c-a91c-cfad025b46f4'::uuid AS category_uuid, 'multimetres' AS slug, 'Multimètres' AS name, b0077d97-d7de-42de-88bc-79d83f4a0e5e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '0da49963-a3a7-413e-9b5a-bf1b0ae070c5'::uuid AS category_uuid, 'outils-reparation' AS slug, 'Outils de réparation' AS name, b0077d97-d7de-42de-88bc-79d83f4a0e5e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'bec78ac5-47f2-4fce-9595-1cd54f24be69'::uuid AS category_uuid, 'cables-connecteurs' AS slug, 'Câbles & connecteurs' AS name, b0077d97-d7de-42de-88bc-79d83f4a0e5e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '8a0d3a63-bcb8-43db-962a-4bce529b00fa'::uuid AS category_uuid, 'testeurs-electroniques' AS slug, 'Testeurs électroniques' AS name, b0077d97-d7de-42de-88bc-79d83f4a0e5e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '4abef68e-0f4c-4a19-8156-773c08a853a8'::uuid AS category_uuid, 'cameras-thermiques' AS slug, 'Caméras thermiques' AS name, b0077d97-d7de-42de-88bc-79d83f4a0e5e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'b72970d0-0620-4efc-9a39-e5210255b305'::uuid AS category_uuid, 'marques-populaires-apple' AS slug, 'Apple' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'cb7acc5d-2509-42b3-ad37-9877eb2c2058'::uuid AS category_uuid, 'dell' AS slug, 'Dell' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '25abe2e0-b5c2-4426-9147-9937047a0f89'::uuid AS category_uuid, 'hp' AS slug, 'HP' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'f72cbe43-7614-4b11-b2f9-1150de88b464'::uuid AS category_uuid, 'marques-populaires-lenovo' AS slug, 'Lenovo' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '1f70c41d-2afb-4695-9ff8-ebc76e43b8ea'::uuid AS category_uuid, 'marques-populaires-asus' AS slug, 'Asus' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '20b04495-8fe9-49aa-939d-e17a5f9e6c02'::uuid AS category_uuid, 'acer' AS slug, 'Acer' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '8f032d65-aea5-4f86-888b-d9eae89639f8'::uuid AS category_uuid, 'msi' AS slug, 'MSI' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '5c85d2dd-20cc-464e-b999-9946f2bee2ad'::uuid AS category_uuid, 'razer' AS slug, 'Razer' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT '8807644e-1faa-4600-9264-5ec933dc6edc'::uuid AS category_uuid, 'marques-populaires-samsung' AS slug, 'Samsung' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'bd9deb58-eb90-4a4e-ac73-01a249ee0c3b'::uuid AS category_uuid, 'marques-populaires-huawei' AS slug, 'Huawei' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'c3ba38b5-eebd-4e2e-a966-427421aa34e3'::uuid AS category_uuid, 'marques-populaires-xiaomi' AS slug, 'Xiaomi' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
  UNION ALL
  SELECT 'd872782f-898c-46b4-b560-3da9b139b5a9'::uuid AS category_uuid, 'marques-populaires-lg' AS slug, 'LG' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.875Z' AS created_at, '2026-04-03T10:15:31.875Z' AS updated_at
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),
  level = EXCLUDED.level,
  category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),
  updated_at = NOW();

-- Lot 6 terminé: 100 entrées
