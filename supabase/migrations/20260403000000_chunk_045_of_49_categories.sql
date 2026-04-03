-- ============================================================
-- CHUNK 45/49 — 100 catégories
-- Total: 4836 catégories
-- Exécuter dans l'ordre dans Supabase SQL Editor
-- ============================================================

INSERT INTO public.categories
  (category_uuid, slug, name, parent_id, level, is_active, created_at, updated_at)
VALUES
  SELECT '42509de1-ba27-4aa3-9584-bb0e6d732aa7'::uuid AS category_uuid, 'docs-exercices' AS slug, 'exercices' AS name, dfec520a-5f64-43a5-a7fb-3618aa556fb7::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'efa8b5c7-2d53-4454-abe1-3a7dafa93b16'::uuid AS category_uuid, 'docs-cours' AS slug, 'cours' AS name, dfec520a-5f64-43a5-a7fb-3618aa556fb7::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'dee766cc-682f-496f-8a74-3293aecc573d'::uuid AS category_uuid, 'arts-musique-instruments-musique' AS slug, 'instruments de musique' AS name, 7ebba089-f714-4ef3-b435-bb85525f1118::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '52e809b9-b2b8-4a61-bf4f-7a633abaabd4'::uuid AS category_uuid, 'guitare' AS slug, 'guitare' AS name, NULL::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '31d9ce9a-28ff-4448-9c5d-9a95f9bf0e07'::uuid AS category_uuid, 'piano' AS slug, 'piano' AS name, NULL::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '6397137b-2938-400a-949f-ee1816dd6824'::uuid AS category_uuid, 'percussion' AS slug, 'percussion' AS name, NULL::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '50f3ced3-ef82-4499-92b8-f9cbb513a9c9'::uuid AS category_uuid, 'cours-chant' AS slug, 'cours de chant' AS name, 7ebba089-f714-4ef3-b435-bb85525f1118::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'e46f34da-8ee1-4da8-8795-eda70dad50c2'::uuid AS category_uuid, 'chant-debutant' AS slug, 'débutant' AS name, 50f3ced3-ef82-4499-92b8-f9cbb513a9c9::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'a9d0b4e4-b62c-44b0-aa34-e79b5faa1b59'::uuid AS category_uuid, 'chant-avance' AS slug, 'avancé' AS name, 50f3ced3-ef82-4499-92b8-f9cbb513a9c9::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'bc9783da-48ef-46a9-bc46-0421121d502a'::uuid AS category_uuid, 'chant-chorale' AS slug, 'chorale' AS name, 50f3ced3-ef82-4499-92b8-f9cbb513a9c9::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '90fccaf6-7a0e-426e-b940-d6cc2ccf2dd0'::uuid AS category_uuid, 'peinture-dessin' AS slug, 'peinture & dessin' AS name, 7ebba089-f714-4ef3-b435-bb85525f1118::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '282357b1-2ad7-47db-8c90-d9f0fd250807'::uuid AS category_uuid, 'aquarelle' AS slug, 'aquarelle' AS name, 90fccaf6-7a0e-426e-b940-d6cc2ccf2dd0::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '4e840ab8-1ce7-4b7c-b8ef-07625d5e2680'::uuid AS category_uuid, 'peinture-huile' AS slug, 'huile' AS name, 90fccaf6-7a0e-426e-b940-d6cc2ccf2dd0::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '94370874-af48-4f28-b1d5-da2070511202'::uuid AS category_uuid, 'croquis' AS slug, 'croquis' AS name, 90fccaf6-7a0e-426e-b940-d6cc2ccf2dd0::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '2ddc10ee-4b05-4d5e-945d-39d4e7ab7fe2'::uuid AS category_uuid, 'materiel-artistique' AS slug, 'matériel artistique' AS name, 7ebba089-f714-4ef3-b435-bb85525f1118::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'd0ff4e50-6cd3-47ec-b1a3-0bd2b082c48e'::uuid AS category_uuid, 'pinceaux' AS slug, 'pinceaux' AS name, 2ddc10ee-4b05-4d5e-945d-39d4e7ab7fe2::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'a65967ab-5c79-4db5-9494-29b225bf2539'::uuid AS category_uuid, 'toiles' AS slug, 'toiles' AS name, 2ddc10ee-4b05-4d5e-945d-39d4e7ab7fe2::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'ff7ffd1a-d8c7-4f80-bd7a-0e9764d8cd7e'::uuid AS category_uuid, 'pigments' AS slug, 'pigments' AS name, 2ddc10ee-4b05-4d5e-945d-39d4e7ab7fe2::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '57c6aaf8-856a-43a3-9031-1b0ac6f1095c'::uuid AS category_uuid, 'arts-musique-ateliers-creatifs' AS slug, 'ateliers créatifs' AS name, 7ebba089-f714-4ef3-b435-bb85525f1118::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '701b89e4-ee72-4696-90a7-b82b1cdd5579'::uuid AS category_uuid, 'poterie' AS slug, 'poterie' AS name, NULL::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '2afb65ad-a9cf-41a2-a025-5691a4b54b75'::uuid AS category_uuid, 'artisanat-creatif' AS slug, 'artisanat' AS name, NULL::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'a2d5ce45-ee48-496e-82b3-f2865e5b994c'::uuid AS category_uuid, 'mosaique' AS slug, 'mosaïque' AS name, NULL::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '4bca4558-2dae-4d98-88e5-67432428c6fe'::uuid AS category_uuid, 'oeuvres-art' AS slug, 'œuvres d’art' AS name, 7ebba089-f714-4ef3-b435-bb85525f1118::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'afdda534-e9af-4278-945e-ccc60ea5fbc8'::uuid AS category_uuid, 'oeuvres-art-tableaux' AS slug, 'tableaux' AS name, 4bca4558-2dae-4d98-88e5-67432428c6fe::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'c94e6b17-745b-4c10-9d7a-b6e207d37f68'::uuid AS category_uuid, 'oeuvres-art-sculptures' AS slug, 'sculptures' AS name, 4bca4558-2dae-4d98-88e5-67432428c6fe::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '90e89f89-0f59-45e3-b745-fd71a7fcf3cd'::uuid AS category_uuid, 'photographies' AS slug, 'photos' AS name, 4bca4558-2dae-4d98-88e5-67432428c6fe::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'ba2c6717-0df7-41c3-a2be-c8abaa567225'::uuid AS category_uuid, 'equipements-sportifs' AS slug, 'équipements sportifs' AS name, 0c92eb52-927d-49ac-ad53-0723919e7bf9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '78653999-0c5a-43b3-ab39-7303a00cfd48'::uuid AS category_uuid, 'sport-football' AS slug, 'football' AS name, ba2c6717-0df7-41c3-a2be-c8abaa567225::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '525129de-fbf1-4e2e-8193-95267b7c6041'::uuid AS category_uuid, 'sport-fitness' AS slug, 'fitness' AS name, ba2c6717-0df7-41c3-a2be-c8abaa567225::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'f19d1e00-3b47-4d8d-ae81-a24a0db4a51e'::uuid AS category_uuid, 'sport-cyclisme' AS slug, 'cyclisme' AS name, ba2c6717-0df7-41c3-a2be-c8abaa567225::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '69f45a7f-870c-4c4b-af02-db2a9f557e1f'::uuid AS category_uuid, 'salles-de-sport' AS slug, 'salles de sport' AS name, 0c92eb52-927d-49ac-ad53-0723919e7bf9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '628d8ee4-c316-4b21-b9b8-1139ab60e2d0'::uuid AS category_uuid, 'salle-abonnements' AS slug, 'abonnements' AS name, 69f45a7f-870c-4c4b-af02-db2a9f557e1f::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '66358798-ec30-4df8-ae5e-d73ed66da92f'::uuid AS category_uuid, 'salle-coaching' AS slug, 'coaching' AS name, 69f45a7f-870c-4c4b-af02-db2a9f557e1f::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '79c5d46b-1029-4b46-be9e-30d8e88edc99'::uuid AS category_uuid, 'salle-cours-collectifs' AS slug, 'cours collectifs' AS name, 69f45a7f-870c-4c4b-af02-db2a9f557e1f::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '4cacbf51-c7b6-4114-8820-9642b78bdfb0'::uuid AS category_uuid, 'cours-danse-arts-martiaux' AS slug, 'cours de danse & arts martiaux' AS name, 0c92eb52-927d-49ac-ad53-0723919e7bf9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '5f4c559e-68b0-4b1c-af4a-15344e243aa0'::uuid AS category_uuid, 'danse-orientale' AS slug, 'danse orientale' AS name, 4cacbf51-c7b6-4114-8820-9642b78bdfb0::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '7a59e9b6-fbb3-4aaf-938b-8299f9f397df'::uuid AS category_uuid, 'hip-hop' AS slug, 'hip-hop' AS name, 4cacbf51-c7b6-4114-8820-9642b78bdfb0::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'eedc965f-c368-4426-b85b-459c5a21dcbc'::uuid AS category_uuid, 'karate' AS slug, 'karaté' AS name, 4cacbf51-c7b6-4114-8820-9642b78bdfb0::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'd298a7eb-8f07-4081-b37a-8fbd4a754b8a'::uuid AS category_uuid, 'activites-outdoor' AS slug, 'activités outdoor' AS name, 0c92eb52-927d-49ac-ad53-0723919e7bf9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '2b07750f-00d7-4ab8-a7e7-eff7ea062a21'::uuid AS category_uuid, 'randonnee' AS slug, 'randonnée' AS name, d298a7eb-8f07-4081-b37a-8fbd4a754b8a::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '48effa22-4faa-4768-86b0-aee4c6311587'::uuid AS category_uuid, 'activites-outdoor-escalade' AS slug, 'escalade' AS name, d298a7eb-8f07-4081-b37a-8fbd4a754b8a::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'd9b759c3-b26f-4472-bf47-af46a3a52ea6'::uuid AS category_uuid, 'vtt' AS slug, 'VTT' AS name, d298a7eb-8f07-4081-b37a-8fbd4a754b8a::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '119d7fe7-3af8-47d2-aaf9-b64136f69ae7'::uuid AS category_uuid, 'camping-randonnee' AS slug, 'camping & randonnée' AS name, 0c92eb52-927d-49ac-ad53-0723919e7bf9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '1cfae0ce-ce5d-4332-a458-bc9131adbd66'::uuid AS category_uuid, 'tentes' AS slug, 'tentes' AS name, 119d7fe7-3af8-47d2-aaf9-b64136f69ae7::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'bd951559-a36f-46a0-8cb8-b602aee38b8a'::uuid AS category_uuid, 'sacs-de-couchage' AS slug, 'sacs de couchage' AS name, 119d7fe7-3af8-47d2-aaf9-b64136f69ae7::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '34825e86-33a5-4bb1-ba33-eafa67d545a3'::uuid AS category_uuid, 'accessoires-camping' AS slug, 'accessoires' AS name, 119d7fe7-3af8-47d2-aaf9-b64136f69ae7::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '94cf8688-c718-452c-9a28-5584fbbc1ae5'::uuid AS category_uuid, 'jeux-de-societe' AS slug, 'jeux de société' AS name, 0c92eb52-927d-49ac-ad53-0723919e7bf9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'd6cb1f6b-8dfc-4618-a477-468e5327f573'::uuid AS category_uuid, 'jeux-strategie' AS slug, 'stratégie' AS name, 94cf8688-c718-452c-9a28-5584fbbc1ae5::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'd23ea06a-41f0-437f-9bcc-fbd79968b0aa'::uuid AS category_uuid, 'jeux-famille' AS slug, 'famille' AS name, 94cf8688-c718-452c-9a28-5584fbbc1ae5::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '54801888-7f06-4285-a22a-d2d27df3233d'::uuid AS category_uuid, 'jeux-cartes' AS slug, 'cartes' AS name, 94cf8688-c718-452c-9a28-5584fbbc1ae5::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'ad623435-0979-43d1-bff9-d5215d6887d0'::uuid AS category_uuid, 'jouets-educatifs' AS slug, 'jouets éducatifs' AS name, ca316d0a-a42f-4864-ab65-d037546095bf::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '92c47fde-e298-455b-aff6-d9aee812c7c1'::uuid AS category_uuid, 'jouets-montessori' AS slug, 'Montessori' AS name, ad623435-0979-43d1-bff9-d5215d6887d0::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'c81bd923-7550-436c-bbb3-6aa6c1aaad09'::uuid AS category_uuid, 'jouets-puzzles' AS slug, 'puzzles' AS name, ad623435-0979-43d1-bff9-d5215d6887d0::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '511d7db9-7b85-4514-9586-c5241b109442'::uuid AS category_uuid, 'jouets-sciences' AS slug, 'sciences' AS name, ad623435-0979-43d1-bff9-d5215d6887d0::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'e7b0c841-54b9-483d-85cc-3cae008df6e5'::uuid AS category_uuid, 'jeux-eveil' AS slug, 'jeux d’éveil' AS name, ca316d0a-a42f-4864-ab65-d037546095bf::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'c8230392-2fc9-4b9a-9791-0819725c9136'::uuid AS category_uuid, 'eveil-0-12' AS slug, '0-12 mois' AS name, e7b0c841-54b9-483d-85cc-3cae008df6e5::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '8a445298-ba75-47c7-a079-c6c6c3ce968b'::uuid AS category_uuid, 'eveil-1-3' AS slug, '1-3 ans' AS name, e7b0c841-54b9-483d-85cc-3cae008df6e5::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '8bf96d16-342d-404b-9aa5-265897162524'::uuid AS category_uuid, 'eveil-3-6' AS slug, '3-6 ans' AS name, e7b0c841-54b9-483d-85cc-3cae008df6e5::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '375cc40f-847a-43ac-afe6-327bfdfde69c'::uuid AS category_uuid, 'activites-parascolaires' AS slug, 'activités parascolaires' AS name, ca316d0a-a42f-4864-ab65-d037546095bf::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '70104307-350d-4a83-9d6b-f7b987fbb001'::uuid AS category_uuid, 'parascolaire-clubs' AS slug, 'clubs scolaires' AS name, 375cc40f-847a-43ac-afe6-327bfdfde69c::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '4ecf5a41-8662-426b-9801-9fc92cca3dd3'::uuid AS category_uuid, 'parascolaire-sport' AS slug, 'sport' AS name, 375cc40f-847a-43ac-afe6-327bfdfde69c::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '33dba44c-fbca-432e-9168-0b85af663d48'::uuid AS category_uuid, 'parascolaire-arts' AS slug, 'arts' AS name, 375cc40f-847a-43ac-afe6-327bfdfde69c::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '2492e023-d69f-47ea-a4d4-a3020845f838'::uuid AS category_uuid, 'ateliers-enfants' AS slug, 'ateliers pour enfants' AS name, ca316d0a-a42f-4864-ab65-d037546095bf::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '4816be5f-975c-4a7e-b3a4-27b262b02fbb'::uuid AS category_uuid, 'enfants-robotique' AS slug, 'robotique' AS name, 2492e023-d69f-47ea-a4d4-a3020845f838::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'c3801876-abb5-4798-a7ec-5586f3106b54'::uuid AS category_uuid, 'enfants-coding' AS slug, 'coding' AS name, 2492e023-d69f-47ea-a4d4-a3020845f838::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '707839bd-5e57-4808-a2d2-eae969f6373e'::uuid AS category_uuid, 'enfants-cuisine' AS slug, 'cuisine' AS name, 2492e023-d69f-47ea-a4d4-a3020845f838::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '2ca4a809-ac0c-4f00-a0f5-2c6bacbce2d8'::uuid AS category_uuid, 'animations-anniversaire' AS slug, 'animations d’anniversaire' AS name, ca316d0a-a42f-4864-ab65-d037546095bf::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'c78fc9a4-2d32-4f76-b573-ff894aacb6a6'::uuid AS category_uuid, 'anniv-clowns' AS slug, 'clowns' AS name, 2ca4a809-ac0c-4f00-a0f5-2c6bacbce2d8::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'f48ffa6e-57bd-45c7-a875-cfe6a581dae2'::uuid AS category_uuid, 'anniv-magiciens' AS slug, 'magiciens' AS name, 2ca4a809-ac0c-4f00-a0f5-2c6bacbce2d8::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'd3d3c93f-0519-47f7-8426-0a400427df46'::uuid AS category_uuid, 'anniv-decorations' AS slug, 'décorations' AS name, 2ca4a809-ac0c-4f00-a0f5-2c6bacbce2d8::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'b63152c3-91e1-4086-839b-e44048ebce5a'::uuid AS category_uuid, 'colonies-vacances' AS slug, 'colonies de vacances' AS name, ca316d0a-a42f-4864-ab65-d037546095bf::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '57611e25-b9fe-4ed6-8089-fbedd5129864'::uuid AS category_uuid, 'colonies-mer' AS slug, 'mer' AS name, b63152c3-91e1-4086-839b-e44048ebce5a::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '24aad4b4-46dc-4e7d-b33f-24f08e9c65fb'::uuid AS category_uuid, 'colonies-montagne' AS slug, 'montagne' AS name, b63152c3-91e1-4086-839b-e44048ebce5a::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '44583769-db33-48ba-be9c-3182d43fde93'::uuid AS category_uuid, 'colonies-culture' AS slug, 'culture' AS name, b63152c3-91e1-4086-839b-e44048ebce5a::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '7b32f783-3f3e-4aec-a9ad-49d02c5d390d'::uuid AS category_uuid, 'clubs-sportifs' AS slug, 'clubs sportifs' AS name, 2dac322a-8ef0-46f1-8c97-c47cef5cc815::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '11da41d8-ce83-4b69-9696-ab2455f3684d'::uuid AS category_uuid, 'club-football' AS slug, 'football' AS name, 7b32f783-3f3e-4aec-a9ad-49d02c5d390d::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '680572cd-f203-4acf-9759-20da95bd6a19'::uuid AS category_uuid, 'club-judo' AS slug, 'judo' AS name, 7b32f783-3f3e-4aec-a9ad-49d02c5d390d::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '090a183a-1ecf-4a2b-a960-69f572f84b3d'::uuid AS category_uuid, 'club-natation' AS slug, 'natation' AS name, 7b32f783-3f3e-4aec-a9ad-49d02c5d390d::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'c7b913c4-c59e-4797-9f14-2c1d5851ba3b'::uuid AS category_uuid, 'associations-culturelles' AS slug, 'associations culturelles' AS name, 2dac322a-8ef0-46f1-8c97-c47cef5cc815::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '716e1c1b-abb6-4652-bbd2-085be211ede7'::uuid AS category_uuid, 'asso-musique' AS slug, 'musique' AS name, c7b913c4-c59e-4797-9f14-2c1d5851ba3b::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'e2c181ae-4f6a-4dfa-9a26-2c8c35129d5b'::uuid AS category_uuid, 'asso-theatre' AS slug, 'théâtre' AS name, c7b913c4-c59e-4797-9f14-2c1d5851ba3b::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'a657bc6d-886b-4856-875e-3c311beb36a4'::uuid AS category_uuid, 'asso-patrimoine' AS slug, 'patrimoine' AS name, c7b913c4-c59e-4797-9f14-2c1d5851ba3b::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'dea6dc3f-0503-4f3c-bffe-6fa7a99055c0'::uuid AS category_uuid, 'ateliers-communautaires' AS slug, 'ateliers communautaires' AS name, 2dac322a-8ef0-46f1-8c97-c47cef5cc815::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '7247bdd6-f0e3-4665-852f-80b73a05e90b'::uuid AS category_uuid, 'comm-solidarite' AS slug, 'solidarité' AS name, dea6dc3f-0503-4f3c-bffe-6fa7a99055c0::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '3a268bf4-922c-4081-845e-e2bcdc321973'::uuid AS category_uuid, 'comm-environnement' AS slug, 'environnement' AS name, dea6dc3f-0503-4f3c-bffe-6fa7a99055c0::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'bc1f4fba-726d-4e72-b162-e9a914e91c76'::uuid AS category_uuid, 'comm-insertion' AS slug, 'insertion' AS name, dea6dc3f-0503-4f3c-bffe-6fa7a99055c0::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'd75af4cc-39e2-4aed-b680-40b3e128d680'::uuid AS category_uuid, 'clubs-lecture' AS slug, 'clubs de lecture' AS name, 2dac322a-8ef0-46f1-8c97-c47cef5cc815::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '3652b935-7817-46f5-9db7-658bec299599'::uuid AS category_uuid, 'lecture-adultes' AS slug, 'adultes' AS name, d75af4cc-39e2-4aed-b680-40b3e128d680::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '665fb643-ecba-43e3-b8de-30f7a855c314'::uuid AS category_uuid, 'lecture-jeunesse' AS slug, 'jeunesse' AS name, d75af4cc-39e2-4aed-b680-40b3e128d680::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '56126f27-28dc-4b5b-a625-827e4616284a'::uuid AS category_uuid, 'lecture-thematiques' AS slug, 'thématiques' AS name, d75af4cc-39e2-4aed-b680-40b3e128d680::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '3422a57c-1d80-469b-9186-5b017ddbbf40'::uuid AS category_uuid, 'clubs-associations-evenements-educatifs' AS slug, 'événements éducatifs' AS name, 2dac322a-8ef0-46f1-8c97-c47cef5cc815::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '8583bbbc-c075-45fc-b7ca-3aeeac3ad953'::uuid AS category_uuid, 'edu-conferences' AS slug, 'conférences' AS name, NULL::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '0c560243-a052-456a-b9d3-82740738b9a2'::uuid AS category_uuid, 'edu-salons' AS slug, 'salons' AS name, NULL::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'c2843172-d15f-4139-8257-cf409a5de4da'::uuid AS category_uuid, 'edu-forums' AS slug, 'forums' AS name, NULL::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '42dca8a2-3746-4430-bd32-ef2617649bac'::uuid AS category_uuid, 'conferences' AS slug, 'conférences' AS name, 2dac322a-8ef0-46f1-8c97-c47cef5cc815::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '4c05a49b-7ba1-4aec-aa3c-9aff0ab01401'::uuid AS category_uuid, 'conf-academiques' AS slug, 'académiques' AS name, 42dca8a2-3746-4430-bd32-ef2617649bac::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'f32155b1-663e-4044-9052-d075e05b663d'::uuid AS category_uuid, 'conf-professionnelles' AS slug, 'professionnelles' AS name, 42dca8a2-3746-4430-bd32-ef2617649bac::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'ee502150-4f7c-46e8-b7d1-1f419564c305'::uuid AS category_uuid, 'conf-grand-public' AS slug, 'grand public' AS name, 42dca8a2-3746-4430-bd32-ef2617649bac::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'ec946b75-3586-4973-9b22-8047a65eaf7c'::uuid AS category_uuid, 'animaux-accessoires' AS slug, 'Animales & Accessoires' AS name, NULL::uuid AS parent_id, 1 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '67edc970-f88a-4cc2-9ace-6d020d39665e'::uuid AS category_uuid, 'animaux-domestiques' AS slug, 'Animaux Domestiques' AS name, ec946b75-3586-4973-9b22-8047a65eaf7c::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),
  level = EXCLUDED.level,
  category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),
  updated_at = NOW();

-- Lot 45 terminé: 100 entrées
