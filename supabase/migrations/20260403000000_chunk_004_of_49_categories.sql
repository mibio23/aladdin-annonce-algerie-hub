-- ============================================================
-- CHUNK 4/49 — 100 catégories
-- Total: 4836 catégories
-- Exécuter dans l'ordre dans Supabase SQL Editor
-- ============================================================

INSERT INTO public.categories
  (category_uuid, slug, name, parent_id, level, is_active, created_at, updated_at)
VALUES
  SELECT '1f7dafb2-7daa-4b98-8b2c-9a0d349b5e10'::uuid AS category_uuid, 'informatique-electronique-objets-connectes-mobile' AS slug, 'Objets Connectés (Mobile)' AS name, 344dd817-d318-4e9e-b4af-acdfc41f90e6::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT 'f8e184aa-23dd-4f90-b386-e690aff943d6'::uuid AS category_uuid, 'informatique-electronique-reseau-communication-mobile' AS slug, 'Réseau & Communication Mobile' AS name, 344dd817-d318-4e9e-b4af-acdfc41f90e6::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '4faf76a7-e14e-441c-887e-f8f809f146c7'::uuid AS category_uuid, 'informatique-electronique-securite-protection' AS slug, 'Sécurité & Protection' AS name, 344dd817-d318-4e9e-b4af-acdfc41f90e6::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT 'f5922bc5-31b8-437b-bf79-a8f01b1fd321'::uuid AS category_uuid, 'informatique-electronique-applications-services' AS slug, 'Applications & Services' AS name, 344dd817-d318-4e9e-b4af-acdfc41f90e6::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '92930568-cf33-4e5f-8a11-7259b8aac3ad'::uuid AS category_uuid, 'informatique-electronique-marques-populaires-mobiles' AS slug, 'Marques Populaires (Mobiles)' AS name, 344dd817-d318-4e9e-b4af-acdfc41f90e6::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '288d804d-d339-49e1-b945-c41ce33b73c7'::uuid AS category_uuid, 'informatique-electronique-operateurs-mobiles-algerie' AS slug, 'Opérateurs Mobiles en Algérie' AS name, 344dd817-d318-4e9e-b4af-acdfc41f90e6::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '35c1092e-5e69-4abb-b637-be494f0aab74'::uuid AS category_uuid, 'composants-informatiques' AS slug, 'Composants Informatiques' AS name, 344dd817-d318-4e9e-b4af-acdfc41f90e6::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT 'cb23182a-6953-43a2-a615-d08c62e82ca2'::uuid AS category_uuid, 'peripheriques-pc' AS slug, 'Périphériques PC' AS name, 344dd817-d318-4e9e-b4af-acdfc41f90e6::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT 'd0139b9e-768a-4818-8fec-ef9464c9f96a'::uuid AS category_uuid, 'reseau-internet' AS slug, 'Réseau & Internet' AS name, 344dd817-d318-4e9e-b4af-acdfc41f90e6::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '9e494024-3085-4285-8102-d9564f79b767'::uuid AS category_uuid, 'equipement-bureau' AS slug, 'Équipement de Bureau' AS name, 344dd817-d318-4e9e-b4af-acdfc41f90e6::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '461ad438-e786-49b9-a056-52abb0250181'::uuid AS category_uuid, 'electronique-gadgets' AS slug, 'Électronique & Gadgets' AS name, 344dd817-d318-4e9e-b4af-acdfc41f90e6::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT 'a470b01a-24f8-4195-af98-d25e349eca61'::uuid AS category_uuid, 'informatique-electronique-maison-intelligente' AS slug, 'Maison Intelligente & Domotique' AS name, 344dd817-d318-4e9e-b4af-acdfc41f90e6::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '1a2156bc-386f-4cc3-bf29-01ef00a0cb92'::uuid AS category_uuid, 'tv-divertissement' AS slug, 'TV & Divertissement' AS name, 344dd817-d318-4e9e-b4af-acdfc41f90e6::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '815c4b25-4a94-4d4c-9315-301d2a076027'::uuid AS category_uuid, 'accessoires-mobiles' AS slug, 'Accessoires Mobiles (Électronique)' AS name, 344dd817-d318-4e9e-b4af-acdfc41f90e6::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT 'b827616f-0175-475c-81ff-04d4479ab8a0'::uuid AS category_uuid, 'informatique-professionnelle' AS slug, 'Informatique Professionnelle' AS name, 344dd817-d318-4e9e-b4af-acdfc41f90e6::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT 'b0077d97-d7de-42de-88bc-79d83f4a0e5e'::uuid AS category_uuid, 'composants-electroniques-outils' AS slug, 'Composants Électroniques & Outils de Réparation' AS name, 344dd817-d318-4e9e-b4af-acdfc41f90e6::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '6db1d8ec-f381-4b8f-b1c1-fd5229b87dd7'::uuid AS category_uuid, 'informatique-electronique-marques-populaires' AS slug, 'Marques Populaires' AS name, 344dd817-d318-4e9e-b4af-acdfc41f90e6::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '5dae8b11-7414-4425-a05c-94eaba54ad4a'::uuid AS category_uuid, 'pc-de-bureau' AS slug, 'PC de bureau' AS name, 315e0f3b-5fe2-448d-b3fd-9c81a6da4f23::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT 'b5a07de1-b180-4ce6-91e1-f0a165398f93'::uuid AS category_uuid, 'pc-gaming' AS slug, 'PC gaming' AS name, 315e0f3b-5fe2-448d-b3fd-9c81a6da4f23::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT 'af9cc3c2-4aaf-448a-9004-978ddbbae587'::uuid AS category_uuid, 'pc-professionnels' AS slug, 'PC professionnels' AS name, 315e0f3b-5fe2-448d-b3fd-9c81a6da4f23::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT 'c12a1b14-6630-420d-9c83-77dace964137'::uuid AS category_uuid, 'mini-pc' AS slug, 'Mini PC' AS name, 315e0f3b-5fe2-448d-b3fd-9c81a6da4f23::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '2bad9c72-b7ff-4236-93a7-f5fda33600ac'::uuid AS category_uuid, 'pc-tout-en-un' AS slug, 'PC tout-en-un' AS name, 315e0f3b-5fe2-448d-b3fd-9c81a6da4f23::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '9ac8f1c6-0538-46ed-a371-2955a83fa47a'::uuid AS category_uuid, 'ordinateurs-portables' AS slug, 'Ordinateurs portables' AS name, 315e0f3b-5fe2-448d-b3fd-9c81a6da4f23::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '9636bb29-5f87-4205-9932-82ba43a8bf75'::uuid AS category_uuid, 'ultrabooks' AS slug, 'Ultrabooks' AS name, 315e0f3b-5fe2-448d-b3fd-9c81a6da4f23::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '07cef83b-c645-4db4-b9e9-0a77ba199418'::uuid AS category_uuid, 'laptops-professionnels' AS slug, 'Laptops professionnels' AS name, 315e0f3b-5fe2-448d-b3fd-9c81a6da4f23::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'f8616b2d-4f24-4651-accc-3ffaf299ecb2'::uuid AS category_uuid, 'laptops-gaming' AS slug, 'Laptops gaming' AS name, 315e0f3b-5fe2-448d-b3fd-9c81a6da4f23::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '513f0024-e6e8-4569-925b-07d6843efbb5'::uuid AS category_uuid, 'laptops-etudiants' AS slug, 'Laptops étudiants' AS name, 315e0f3b-5fe2-448d-b3fd-9c81a6da4f23::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'b9d6e6c0-1668-4eb4-b2fb-cc156d684ce4'::uuid AS category_uuid, 'macbook' AS slug, 'MacBook' AS name, 315e0f3b-5fe2-448d-b3fd-9c81a6da4f23::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'e9312dcc-3d70-45db-a4e4-a88b888490b2'::uuid AS category_uuid, 'chromebook' AS slug, 'Chromebook' AS name, 315e0f3b-5fe2-448d-b3fd-9c81a6da4f23::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '70aacb94-c99c-4fdf-b6ac-3e4c3d1e1688'::uuid AS category_uuid, 'stations-travail-portables' AS slug, 'Stations de travail portables' AS name, 315e0f3b-5fe2-448d-b3fd-9c81a6da4f23::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '6d0cacd5-985f-4251-8a34-6204c1d6f6b9'::uuid AS category_uuid, 'pc-reconditionnes' AS slug, 'PC reconditionnés' AS name, 315e0f3b-5fe2-448d-b3fd-9c81a6da4f23::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '50650f52-2e24-4997-b23b-5a12ac7215c4'::uuid AS category_uuid, 'smartphones-smartphones-android' AS slug, 'Smartphones Android' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '150e7d17-2927-4a72-b213-c37601f30c02'::uuid AS category_uuid, 'smartphones-iphone' AS slug, 'iPhone' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'cc6ac45d-3a79-4ff3-9f40-6bffd69c4a88'::uuid AS category_uuid, 'smartphones-smartphones-5g' AS slug, 'Smartphones 5G' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '1010646d-bb71-4cc6-8f36-3f2784b8062a'::uuid AS category_uuid, 'smartphones-smartphones-gaming' AS slug, 'Smartphones gaming' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '5d4d6134-88dd-4d42-9e77-04da36b6bc10'::uuid AS category_uuid, 'smartphones-smartphones-pliables' AS slug, 'Smartphones pliables' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '0d5a6107-9bff-429e-8a48-38512211f31c'::uuid AS category_uuid, 'smartphones-smartphones-entree-de-gamme' AS slug, 'Smartphones d’entrée de gamme' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '9767bd87-adb5-4d92-b0e8-7d480e1a459b'::uuid AS category_uuid, 'smartphones-smartphones-milieu-de-gamme' AS slug, 'Smartphones milieu de gamme' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'de16d9d6-b8a2-4a17-b791-2009be91b56e'::uuid AS category_uuid, 'smartphones-smartphones-haut-de-gamme' AS slug, 'Smartphones haut de gamme' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'b39101a1-d74c-4b66-bac6-661ac472e70b'::uuid AS category_uuid, 'smartphones-smartphones-reconditionnes' AS slug, 'Smartphones reconditionnés' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'dcf9884a-ecbe-4478-b9f6-a28600d548d5'::uuid AS category_uuid, 'smartphones-telephones-robustes-rugged' AS slug, 'Téléphones robustes (rugged)' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '4e4b6957-5a99-490d-8f6f-64128787c3c4'::uuid AS category_uuid, 'smartphones-mini-smartphones' AS slug, 'Mini smartphones' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '324b05b9-97cf-4979-8f0d-80e7245823d7'::uuid AS category_uuid, 'smartphones-smartphones-professionnels' AS slug, 'Smartphones professionnels' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '2625d755-7818-4732-98bc-e3255c70b299'::uuid AS category_uuid, 'telephones-classiques-fixes-telephones-portables-classiques' AS slug, 'Téléphones portables classiques' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'e08786e2-3fe6-4a6f-bbdb-ac3e65c10579'::uuid AS category_uuid, 'telephones-classiques-fixes-telephones-a-clapet' AS slug, 'Téléphones à clapet' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'c1b8eeeb-8b55-4ad0-8e22-2bd581f98086'::uuid AS category_uuid, 'telephones-classiques-fixes-telephones-seniors' AS slug, 'Téléphones seniors' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '96678125-9dd6-46a8-bba2-a4b4aa394893'::uuid AS category_uuid, 'telephones-classiques-fixes-telephones-fixes-filaires' AS slug, 'Téléphones fixes filaires' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'f6ac0864-4ea7-4c37-b26a-1aa03d623b8b'::uuid AS category_uuid, 'telephones-classiques-fixes-telephones-fixes-sans-fil' AS slug, 'Téléphones fixes sans fil' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'd2e7fda7-a603-4880-b3f9-89f0132a249f'::uuid AS category_uuid, 'telephones-classiques-fixes-combines-dect' AS slug, 'Combinés DECT' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'bfa0c0f0-670a-446c-88b2-47cd6921e22d'::uuid AS category_uuid, 'telephones-classiques-fixes-telephones-voip' AS slug, 'Téléphones VoIP' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '96ba2e59-6c99-4379-a7de-87319b2cacf1'::uuid AS category_uuid, 'tablettes-appareils-mobiles-tablettes-android' AS slug, 'Tablettes Android' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'd12729b7-5242-4d9a-a1a3-d0fc8eff5eb7'::uuid AS category_uuid, 'tablettes-appareils-mobiles-ipad' AS slug, 'iPad' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '28d58950-51cf-4f23-b100-37b3cf643463'::uuid AS category_uuid, 'tablettes-appareils-mobiles-tablettes-graphiques' AS slug, 'Tablettes graphiques' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '27ee4922-26bf-4eae-b62a-e69c1f6196d4'::uuid AS category_uuid, 'tablettes-appareils-mobiles-tablettes-enfants' AS slug, 'Tablettes enfants' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '7db10c4a-098b-4271-8d6a-07d4554ff69a'::uuid AS category_uuid, 'tablettes-appareils-mobiles-liseuses-electroniques' AS slug, 'Liseuses électroniques' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '7b237c0e-5726-41e1-8040-56d73c71d135'::uuid AS category_uuid, 'tablettes-appareils-mobiles-phablettes' AS slug, 'Phablettes' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '1f9c4cc4-daa1-44c0-aa2d-8d1600f93408'::uuid AS category_uuid, 'tablettes-appareils-mobiles-mini-tablettes' AS slug, 'Mini tablettes' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'bf43fcd1-196e-4398-a27d-c068b6a13fb7'::uuid AS category_uuid, 'tablettes-appareils-mobiles-tablettes-professionnelles' AS slug, 'Tablettes professionnelles' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '151554c1-e0a7-4701-bae7-3ba2b7e1b2a4'::uuid AS category_uuid, 'accessoires-telephones-coques-protection' AS slug, 'Coques de protection' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'f6b274ce-5e47-4e12-bbd1-aad63488b610'::uuid AS category_uuid, 'accessoires-telephones-housses' AS slug, 'Housses' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '9a470a65-1b42-46bf-bb94-c273a3454cb2'::uuid AS category_uuid, 'accessoires-telephones-etuis' AS slug, 'Étuis' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '3c01a444-519d-4f64-9d38-ef1c094a4a23'::uuid AS category_uuid, 'accessoires-telephones-bumpers' AS slug, 'Bumpers' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'acb150f3-1915-4269-bc10-403968c4c3c4'::uuid AS category_uuid, 'accessoires-telephones-vitres-protections-ecran' AS slug, 'Vitres & protections d’écran' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'b618f67c-632a-41fd-a436-5263f7b45b1c'::uuid AS category_uuid, 'accessoires-telephones-supports-telephones' AS slug, 'Supports téléphones' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'e1123fe5-928b-4e90-9b7e-9d0c12ee774b'::uuid AS category_uuid, 'accessoires-telephones-supports-voiture' AS slug, 'Supports voiture' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '256261f1-e79d-4ae0-aa09-b81712260eca'::uuid AS category_uuid, 'accessoires-telephones-stylos-tactiles' AS slug, 'Stylos tactiles' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '4d771a1a-472a-419e-be8a-5dcc24ca9d8d'::uuid AS category_uuid, 'accessoires-telephones-anneaux-grips' AS slug, 'Anneaux & grips' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '4403385d-d4cc-4df5-942b-27c5fb8c9e7e'::uuid AS category_uuid, 'accessoires-telephones-pochettes-impermeables' AS slug, 'Pochettes imperméables' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '6c3a2261-2c25-43a2-a76e-b00c3747e0c5'::uuid AS category_uuid, 'batteries-charge-chargeurs-standard' AS slug, 'Chargeurs standard' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'e4e3b9f6-daea-41d6-9f32-c48372f76472'::uuid AS category_uuid, 'batteries-charge-chargeurs-rapides-fast-quick' AS slug, 'Chargeurs rapides (Fast Charge, Quick Charge)' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '8b5b9fe2-4e8b-48b7-9317-5f2535dd4b49'::uuid AS category_uuid, 'batteries-charge-chargeurs-sans-fil' AS slug, 'Chargeurs sans fil' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '972ad89c-e232-42df-bb6d-48005617425b'::uuid AS category_uuid, 'batteries-charge-stations-recharge' AS slug, 'Stations de recharge' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '5242d0a7-2b79-4566-aff1-87293ecec0b0'::uuid AS category_uuid, 'batteries-charge-powerbanks' AS slug, 'Powerbanks' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '45155a5a-61eb-4004-9026-44551830a9b2'::uuid AS category_uuid, 'batteries-charge-batteries-externes-haute-capacite' AS slug, 'Batteries externes haute capacité' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'e20ca584-e33a-4dbf-a8c5-295b5af1ed44'::uuid AS category_uuid, 'batteries-charge-cables-usb' AS slug, 'Câbles USB (Type‑C, Lightning, Micro‑USB)' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '40663a48-57b9-4de4-9676-360565744561'::uuid AS category_uuid, 'batteries-charge-adaptateurs-secteur' AS slug, 'Adaptateurs secteur' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '7276eb55-21e9-4d90-a251-2a4324514b6f'::uuid AS category_uuid, 'batteries-charge-chargeurs-voiture' AS slug, 'Chargeurs voiture' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '9e876e1a-40f4-4917-8d6e-444283ef92e6'::uuid AS category_uuid, 'batteries-charge-hubs-usb-multiprises-intelligentes' AS slug, 'Hubs USB & multiprises intelligentes' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '187dcbd8-5f6e-4b9d-a5c3-00285d0cc9e6'::uuid AS category_uuid, 'audio-mobile-ecouteurs-filaires' AS slug, 'Écouteurs filaires' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '2d811975-da69-4078-9414-e150f5a88896'::uuid AS category_uuid, 'audio-mobile-ecouteurs-bluetooth' AS slug, 'Écouteurs Bluetooth' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '95db8856-84f5-459f-b450-37a45a785257'::uuid AS category_uuid, 'audio-mobile-airpods' AS slug, 'AirPods' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'e81c7422-f1c1-46e9-8abc-1c471f2130f0'::uuid AS category_uuid, 'audio-mobile-casques-sans-fil' AS slug, 'Casques sans fil' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '353812b5-d0d2-471a-b313-8f3f60bedc64'::uuid AS category_uuid, 'audio-mobile-casques-filaires' AS slug, 'Casques filaires' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '233c0766-ac57-4048-89c5-b9be7af65b8c'::uuid AS category_uuid, 'audio-mobile-enceintes-bluetooth' AS slug, 'Enceintes Bluetooth' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'ad3c09d3-b633-4f77-95f6-4a04142dade9'::uuid AS category_uuid, 'audio-mobile-kits-mains-libres' AS slug, 'Kits mains‑libres' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'ed4ca6cd-f20e-4e3d-be9b-8c48572bae01'::uuid AS category_uuid, 'audio-mobile-micros-mobiles' AS slug, 'Micros mobiles' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '80ef9199-dae5-4c40-abdb-153e1b5b4456'::uuid AS category_uuid, 'audio-mobile-adaptateurs-audio' AS slug, 'Adaptateurs audio' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'dd5d02ab-36b1-4a1a-b528-1b5c7e4a92d3'::uuid AS category_uuid, 'pieces-reparation-telephone-ecrans-lcd-oled' AS slug, 'Écrans LCD et OLED' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '70e04fa5-21de-4fa1-b8f8-9c99e1a7c5fa'::uuid AS category_uuid, 'pieces-reparation-telephone-batteries-internes' AS slug, 'Batteries internes' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '95305ad0-3fa8-4319-a01b-a1d1e062946b'::uuid AS category_uuid, 'pieces-reparation-telephone-connecteurs-charge' AS slug, 'Connecteurs de charge' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'e250e2e1-b7c4-481a-80b1-1d19b654676e'::uuid AS category_uuid, 'pieces-reparation-telephone-nappes-circuits' AS slug, 'Nappes et circuits' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '54c83399-aa7f-4f1b-93c4-9a409f52064b'::uuid AS category_uuid, 'pieces-reparation-telephone-cameras-avant-arriere' AS slug, 'Caméras avant/arrière' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '784dc3ee-0ee9-4408-927c-9a83bec3d695'::uuid AS category_uuid, 'pieces-reparation-telephone-chassis-coques-arriere' AS slug, 'Châssis et coques arrière' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'd689b244-7438-4417-b4ea-bc416ecf8084'::uuid AS category_uuid, 'pieces-reparation-telephone-boutons-flex' AS slug, 'Boutons & flex' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '0f4d590b-075c-472a-91f7-65320860c637'::uuid AS category_uuid, 'pieces-reparation-telephone-haut-parleurs-micros' AS slug, 'Haut‑parleurs & micros' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '6f1afb7d-fac9-4edb-a88f-051cb10eb344'::uuid AS category_uuid, 'pieces-reparation-telephone-vitres-arriere' AS slug, 'Vitres arrière' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '7feaa6c2-bb6c-45ae-acb9-2da0d2592a57'::uuid AS category_uuid, 'pieces-reparation-telephone-kits-reparation' AS slug, 'Kits de réparation' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '3cd4d9c3-bf23-49f4-a3d6-39b65162cb70'::uuid AS category_uuid, 'pieces-reparation-telephone-outils-demontage' AS slug, 'Outils de démontage' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '5492f0b7-0675-47c0-af5e-ca431b69d01b'::uuid AS category_uuid, 'pieces-reparation-telephone-stations-soudure' AS slug, 'Stations de soudure' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '0b7e371d-be44-4ad7-92f8-c5bb2070487d'::uuid AS category_uuid, 'pieces-reparation-telephone-ecrans-reconditionnes' AS slug, 'Écrans reconditionnés' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),
  level = EXCLUDED.level,
  category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),
  updated_at = NOW();

-- Lot 4 terminé: 100 entrées
