-- ============================================================
-- CHUNK 43/49 — 100 catégories
-- Total: 4836 catégories
-- Exécuter dans l'ordre dans Supabase SQL Editor
-- ============================================================

INSERT INTO public.categories
  (category_uuid, slug, name, parent_id, level, is_active, created_at, updated_at)
VALUES
  SELECT '5364ab7f-8e19-4c8f-9c42-696ee68a024e'::uuid AS category_uuid, 'fetes-religieuses' AS slug, 'fêtes religieuses' AS name, 66f65609-25be-4ef2-bc3d-8e8b56076a45::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '8ca16d19-e67c-4caa-bf07-17fc57fd2b22'::uuid AS category_uuid, 'rassemblements-culturels' AS slug, 'rassemblements culturels' AS name, 66f65609-25be-4ef2-bc3d-8e8b56076a45::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '4d4cec09-a54d-4ce4-89fd-499ceb6e2951'::uuid AS category_uuid, 'evenements-religieux-traditionnels-ceremonies-traditionnelles' AS slug, 'cérémonies traditionnelles' AS name, 66f65609-25be-4ef2-bc3d-8e8b56076a45::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'f12e5104-822f-4601-8d8e-df5f76c9d0e3'::uuid AS category_uuid, 'organisation-evenements' AS slug, 'organisation événements' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'e0596c76-d04e-4daf-86ad-17454cffbd07'::uuid AS category_uuid, 'location-sono' AS slug, 'location sono' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'e380480e-7b9a-4900-9272-6a3f5e39b6fa'::uuid AS category_uuid, 'services-evenementiels-eclairage' AS slug, 'éclairage' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '3718841e-81f7-4a8c-810a-178998c360e6'::uuid AS category_uuid, 'decoration-evenementielle' AS slug, 'décoration événementielle' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'f01c551c-a4ec-4007-8c73-e73b785a027c'::uuid AS category_uuid, 'photographes' AS slug, 'photographes' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '1f52cd80-0765-4264-8910-d9252427cb99'::uuid AS category_uuid, 'videastes' AS slug, 'vidéastes' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '48ffc99b-71f8-4276-9afd-7c80c1a29e82'::uuid AS category_uuid, 'animateurs' AS slug, 'animateurs' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '5b3de63b-a518-4bcd-9348-7610738312f5'::uuid AS category_uuid, 'packs-fetes' AS slug, 'packs fêtes' AS name, fb3d8907-34ee-4fe5-a8fa-a350d8a88e31::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'bb67a618-8e88-404e-928e-313c942f9f86'::uuid AS category_uuid, 'acces-vip' AS slug, 'accès VIP' AS name, fb3d8907-34ee-4fe5-a8fa-a350d8a88e31::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '2ff406c1-6865-43c2-b54e-6ea555c69249'::uuid AS category_uuid, 'pass-multi-evenements' AS slug, 'pass multi-événements' AS name, fb3d8907-34ee-4fe5-a8fa-a350d8a88e31::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '31defb44-53c8-4bbb-8fe5-2e40d022c834'::uuid AS category_uuid, 'offres-saisonnieres' AS slug, 'offres saisonnières' AS name, fb3d8907-34ee-4fe5-a8fa-a350d8a88e31::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'f55eea61-3ea9-4aea-a367-866c21d1091e'::uuid AS category_uuid, 'promotions' AS slug, 'promotions' AS name, fb3d8907-34ee-4fe5-a8fa-a350d8a88e31::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'b007d02a-94e1-4855-a7cc-17c70373469f'::uuid AS category_uuid, 'emploi-carriere' AS slug, 'Emploi & Carrière' AS name, NULL::uuid AS parent_id, 1 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '71f9920c-5072-4cb6-9c99-f2de2a73058b'::uuid AS category_uuid, 'offres-emploi' AS slug, 'Offres d’Emploi' AS name, b007d02a-94e1-4855-a7cc-17c70373469f::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '058bcbdb-dc1f-40b1-8773-ca5e8e2e539d'::uuid AS category_uuid, 'secteurs-professionnels' AS slug, 'Secteurs Professionnels' AS name, b007d02a-94e1-4855-a7cc-17c70373469f::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '35db2699-864d-4053-b55a-af2f88a32c5c'::uuid AS category_uuid, 'metiers-qualifies-techniques' AS slug, 'Métiers Qualifiés & Techniques' AS name, b007d02a-94e1-4855-a7cc-17c70373469f::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '806d9baf-5b16-48e2-a25f-21620cb1de3a'::uuid AS category_uuid, 'metiers-du-digital' AS slug, 'Métiers du Digital' AS name, b007d02a-94e1-4855-a7cc-17c70373469f::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '8b964b58-8539-4ca7-91b8-1fa31b32aec4'::uuid AS category_uuid, 'metiers-de-la-sante' AS slug, 'Métiers de la Santé' AS name, b007d02a-94e1-4855-a7cc-17c70373469f::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '7e0e493d-687b-4009-ad34-68e3136a76cf'::uuid AS category_uuid, 'metiers-de-leducation' AS slug, 'Métiers de l’Éducation' AS name, b007d02a-94e1-4855-a7cc-17c70373469f::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '8c7c695a-efe0-4f8e-a236-00dddfe0fa3d'::uuid AS category_uuid, 'services-aide-a-la-personne' AS slug, 'Services & Aide à la Personne' AS name, b007d02a-94e1-4855-a7cc-17c70373469f::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '19501346-5b84-402d-9fb9-1c92843cee96'::uuid AS category_uuid, 'hotellerie-restauration' AS slug, 'Hôtellerie & Restauration' AS name, b007d02a-94e1-4855-a7cc-17c70373469f::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '4fc24f1e-c8e0-407d-9028-238d2c754ca3'::uuid AS category_uuid, 'transport-logistique' AS slug, 'Transport & Logistique' AS name, b007d02a-94e1-4855-a7cc-17c70373469f::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'c4dcd524-6af6-4aa1-8d65-a8909186074c'::uuid AS category_uuid, 'agriculture-elevage' AS slug, 'Agriculture & Élevage' AS name, b007d02a-94e1-4855-a7cc-17c70373469f::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '864649e7-881f-4132-b873-7779cc61b381'::uuid AS category_uuid, 'appels-offres-marches-publics' AS slug, 'Appels d’Offres & Marchés Publics' AS name, b007d02a-94e1-4855-a7cc-17c70373469f::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '758aac57-1284-4983-aa67-1fe24645b8e9'::uuid AS category_uuid, 'formation-developpement-professionnel' AS slug, 'Formation & Développement Professionnel' AS name, b007d02a-94e1-4855-a7cc-17c70373469f::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '68cd0b8c-e3af-407d-a868-a0a4301c40f8'::uuid AS category_uuid, 'entrepreneuriat-business' AS slug, 'Entrepreneuriat & Business' AS name, b007d02a-94e1-4855-a7cc-17c70373469f::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '8609b84c-7465-4d26-bb18-11570b414e65'::uuid AS category_uuid, 'cv-services-recrutement' AS slug, 'CV & Services Recrutement' AS name, b007d02a-94e1-4855-a7cc-17c70373469f::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '3661039a-9b34-4955-9284-8d311e6f81a4'::uuid AS category_uuid, 'stages-opportunites-jeunes' AS slug, 'Stages & Opportunités Jeunes' AS name, b007d02a-94e1-4855-a7cc-17c70373469f::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'f4027525-267b-4c60-8088-3301630b473f'::uuid AS category_uuid, 'job-temps-partiel-etudiant' AS slug, 'Job à Temps Partiel & Étudiant' AS name, b007d02a-94e1-4855-a7cc-17c70373469f::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '9f0b8104-050e-4e56-b0f7-6d20afeef7f6'::uuid AS category_uuid, 'cdi' AS slug, 'CDI' AS name, 71f9920c-5072-4cb6-9c99-f2de2a73058b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '7eef489a-f216-433c-89f2-b9f3d553ccd0'::uuid AS category_uuid, 'cdd' AS slug, 'CDD' AS name, 71f9920c-5072-4cb6-9c99-f2de2a73058b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '537a2d60-f756-44bb-b581-2693868ed6cc'::uuid AS category_uuid, 'temps-plein' AS slug, 'temps plein' AS name, 71f9920c-5072-4cb6-9c99-f2de2a73058b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '66e1766c-1115-4906-baaf-da274f65ff4d'::uuid AS category_uuid, 'temps-partiel' AS slug, 'temps partiel' AS name, 71f9920c-5072-4cb6-9c99-f2de2a73058b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '2c9ad8c9-dff7-4a8b-a9ee-6e8ab6273383'::uuid AS category_uuid, 'emplois-saisonniers' AS slug, 'emplois saisonniers' AS name, 71f9920c-5072-4cb6-9c99-f2de2a73058b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'e8659a67-1e6f-410f-990f-8eb0a5e91596'::uuid AS category_uuid, 'interim' AS slug, 'intérim' AS name, 71f9920c-5072-4cb6-9c99-f2de2a73058b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'd53463a1-1d48-48ac-811b-d2e5c2240c11'::uuid AS category_uuid, 'stages' AS slug, 'stages' AS name, 71f9920c-5072-4cb6-9c99-f2de2a73058b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'f91448f1-4a32-44ee-9f53-49b63735306f'::uuid AS category_uuid, 'apprentissage' AS slug, 'apprentissage' AS name, 71f9920c-5072-4cb6-9c99-f2de2a73058b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'dfea1cab-3538-4566-96b3-20d980b15e52'::uuid AS category_uuid, 'freelance' AS slug, 'freelance' AS name, 71f9920c-5072-4cb6-9c99-f2de2a73058b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '444fb95f-05f3-459d-81ac-a468412d9f92'::uuid AS category_uuid, 'teletravail' AS slug, 'télétravail' AS name, 71f9920c-5072-4cb6-9c99-f2de2a73058b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '39f18e40-3f76-4ff4-8e02-aca9bb11feb5'::uuid AS category_uuid, 'missions-ponctuelles' AS slug, 'missions ponctuelles' AS name, 71f9920c-5072-4cb6-9c99-f2de2a73058b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '6e11580a-c93f-4e3c-900f-2db608cea2f4'::uuid AS category_uuid, 'administratif' AS slug, 'administratif' AS name, 058bcbdb-dc1f-40b1-8773-ca5e8e2e539d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '8933e583-7260-4ea5-9caf-94a266c4bd2a'::uuid AS category_uuid, 'commerce' AS slug, 'commerce' AS name, 058bcbdb-dc1f-40b1-8773-ca5e8e2e539d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '3db40a43-2d6c-449f-aad8-24ea9f1acffb'::uuid AS category_uuid, 'ventes' AS slug, 'ventes' AS name, 058bcbdb-dc1f-40b1-8773-ca5e8e2e539d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'd06429b2-fdbd-455f-bdf8-fd7deba457e8'::uuid AS category_uuid, 'marketing' AS slug, 'marketing' AS name, 058bcbdb-dc1f-40b1-8773-ca5e8e2e539d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '0fa15248-9257-4431-8ba1-27a5502e91d2'::uuid AS category_uuid, 'communication' AS slug, 'communication' AS name, 058bcbdb-dc1f-40b1-8773-ca5e8e2e539d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'a8ca51e8-7f0b-4b61-9f82-d0279a6011cd'::uuid AS category_uuid, 'informatique' AS slug, 'informatique' AS name, 058bcbdb-dc1f-40b1-8773-ca5e8e2e539d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'fb221614-7ee9-4eae-8049-3fc610d681f7'::uuid AS category_uuid, 'telecommunications' AS slug, 'télécommunications' AS name, 058bcbdb-dc1f-40b1-8773-ca5e8e2e539d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '545cab2a-d691-4555-a8b5-aaffdfab1e0e'::uuid AS category_uuid, 'sante' AS slug, 'santé' AS name, 058bcbdb-dc1f-40b1-8773-ca5e8e2e539d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '7f0803b0-7bde-4383-9260-d27b75c7e106'::uuid AS category_uuid, 'paramedical' AS slug, 'paramédical' AS name, 058bcbdb-dc1f-40b1-8773-ca5e8e2e539d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '01a58503-9f04-42e0-af5f-8d54899275c0'::uuid AS category_uuid, 'industrie' AS slug, 'industrie' AS name, 058bcbdb-dc1f-40b1-8773-ca5e8e2e539d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '96e41d67-cb79-4230-ae87-b0a724d8c67a'::uuid AS category_uuid, 'construction' AS slug, 'construction' AS name, 058bcbdb-dc1f-40b1-8773-ca5e8e2e539d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'f5bffb01-2859-4cb4-b929-2035e67019c3'::uuid AS category_uuid, 'secteurs-professionnels-transport' AS slug, 'transport' AS name, 058bcbdb-dc1f-40b1-8773-ca5e8e2e539d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '68ace1dd-09a0-43e5-b673-23d0b515b79f'::uuid AS category_uuid, 'logistique' AS slug, 'logistique' AS name, 058bcbdb-dc1f-40b1-8773-ca5e8e2e539d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'ef2d8ff8-2ecd-4425-9035-9a5fed11eac8'::uuid AS category_uuid, 'hotellerie' AS slug, 'hôtellerie' AS name, 058bcbdb-dc1f-40b1-8773-ca5e8e2e539d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'a8601558-6629-48ff-b154-c551ef3cf5dd'::uuid AS category_uuid, 'restauration' AS slug, 'restauration' AS name, 058bcbdb-dc1f-40b1-8773-ca5e8e2e539d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'b7e2f442-a34b-485a-8a70-f3f16868ea71'::uuid AS category_uuid, 'finance' AS slug, 'finance' AS name, 058bcbdb-dc1f-40b1-8773-ca5e8e2e539d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '96a7e038-0d3f-4dbe-9310-cd5d780dca64'::uuid AS category_uuid, 'comptabilite' AS slug, 'comptabilité' AS name, 058bcbdb-dc1f-40b1-8773-ca5e8e2e539d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '8bb6b3b5-2ade-462f-a572-fa2348fc5e42'::uuid AS category_uuid, 'banque' AS slug, 'banque' AS name, 058bcbdb-dc1f-40b1-8773-ca5e8e2e539d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'b1a3f3c7-c6cf-441d-90cc-c74120344e55'::uuid AS category_uuid, 'assurance' AS slug, 'assurance' AS name, 058bcbdb-dc1f-40b1-8773-ca5e8e2e539d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'ac2d1757-162c-4cfe-b81e-874b9bc6c5ed'::uuid AS category_uuid, 'education' AS slug, 'éducation' AS name, 058bcbdb-dc1f-40b1-8773-ca5e8e2e539d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '90fc1cdc-9eec-4c8b-bd11-578a71345810'::uuid AS category_uuid, 'formation' AS slug, 'formation' AS name, 058bcbdb-dc1f-40b1-8773-ca5e8e2e539d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '8f0cd559-ed5b-4515-baf6-bb777c4a1be8'::uuid AS category_uuid, 'agriculture' AS slug, 'agriculture' AS name, 058bcbdb-dc1f-40b1-8773-ca5e8e2e539d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '1e8b9f2c-7bc3-4441-8bcb-7442a5a89ef6'::uuid AS category_uuid, 'environnement' AS slug, 'environnement' AS name, 058bcbdb-dc1f-40b1-8773-ca5e8e2e539d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'a5befa2d-9538-4e9f-a964-5b3384640287'::uuid AS category_uuid, 'securite' AS slug, 'sécurité' AS name, 058bcbdb-dc1f-40b1-8773-ca5e8e2e539d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '6f7ac967-a445-44e2-93e5-3d2008fdaadb'::uuid AS category_uuid, 'services-publics' AS slug, 'services publics' AS name, 058bcbdb-dc1f-40b1-8773-ca5e8e2e539d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'fe620698-7dac-4a4f-8411-c60738e08bee'::uuid AS category_uuid, 'artisanat' AS slug, 'artisanat' AS name, 058bcbdb-dc1f-40b1-8773-ca5e8e2e539d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'ef64b321-c8bb-40bd-aceb-e918ef453453'::uuid AS category_uuid, 'electriciens' AS slug, 'électriciens' AS name, 35db2699-864d-4053-b55a-af2f88a32c5c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '66c9188c-9192-4a0a-8b58-d0422d8d4e89'::uuid AS category_uuid, 'plombiers' AS slug, 'plombiers' AS name, 35db2699-864d-4053-b55a-af2f88a32c5c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'bffc4692-fa1f-4c90-b17a-668f0019d878'::uuid AS category_uuid, 'mecaniciens' AS slug, 'mécaniciens' AS name, 35db2699-864d-4053-b55a-af2f88a32c5c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '548405a1-2c46-4f6a-ae12-0943efa68c8c'::uuid AS category_uuid, 'charpentiers' AS slug, 'charpentiers' AS name, 35db2699-864d-4053-b55a-af2f88a32c5c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '9d438ec5-8e55-4b92-b297-a1458c2b58a7'::uuid AS category_uuid, 'soudeurs' AS slug, 'soudeurs' AS name, 35db2699-864d-4053-b55a-af2f88a32c5c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '208ede24-8175-4793-b9b5-7b46de828345'::uuid AS category_uuid, 'techniciens-reseaux' AS slug, 'techniciens réseaux' AS name, 35db2699-864d-4053-b55a-af2f88a32c5c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '895530ef-9dcf-474d-a360-a6d593030442'::uuid AS category_uuid, 'techniciens-maintenance' AS slug, 'techniciens maintenance' AS name, 35db2699-864d-4053-b55a-af2f88a32c5c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'acb78d3f-8ed4-413f-a153-63f0456bed61'::uuid AS category_uuid, 'chauffagistes' AS slug, 'chauffagistes' AS name, 35db2699-864d-4053-b55a-af2f88a32c5c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '975ea81a-01e2-44a2-aeaf-e480fa4b7232'::uuid AS category_uuid, 'menuisiers' AS slug, 'menuisiers' AS name, 35db2699-864d-4053-b55a-af2f88a32c5c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'c2403b42-dc31-4c9a-8411-c81dd7aa81e5'::uuid AS category_uuid, 'artisans-specialises' AS slug, 'artisans spécialisés' AS name, 35db2699-864d-4053-b55a-af2f88a32c5c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '332b7fc6-204e-4807-99c0-a932efa9cf38'::uuid AS category_uuid, 'developpeurs-web' AS slug, 'développeurs web' AS name, 806d9baf-5b16-48e2-a25f-21620cb1de3a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '2b7caf13-69db-41fb-b997-e0423bcade71'::uuid AS category_uuid, 'designers-graphiques' AS slug, 'designers graphiques' AS name, 806d9baf-5b16-48e2-a25f-21620cb1de3a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'f9557e0e-d839-4672-bd5f-5f55528af677'::uuid AS category_uuid, 'community-managers' AS slug, 'community managers' AS name, 806d9baf-5b16-48e2-a25f-21620cb1de3a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'e1293a2f-0ccc-45cc-85a5-0811b8641463'::uuid AS category_uuid, 'specialistes-seo' AS slug, 'spécialistes SEO' AS name, 806d9baf-5b16-48e2-a25f-21620cb1de3a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'c7d0e74f-cbbb-49e0-b1bb-cd417e4226d8'::uuid AS category_uuid, 'data-analysts' AS slug, 'data analysts' AS name, 806d9baf-5b16-48e2-a25f-21620cb1de3a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'eafdcb93-aed8-41f6-a9eb-be301a797f1f'::uuid AS category_uuid, 'ingenieurs-ia' AS slug, 'ingénieurs IA' AS name, 806d9baf-5b16-48e2-a25f-21620cb1de3a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'a982b9ca-d955-4b20-b965-b31db94d27a3'::uuid AS category_uuid, 'administrateurs-systemes' AS slug, 'administrateurs systèmes' AS name, 806d9baf-5b16-48e2-a25f-21620cb1de3a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '6e3e3721-6489-4d55-b841-fcd2c3996564'::uuid AS category_uuid, 'medecins' AS slug, 'médecins' AS name, 8b964b58-8539-4ca7-91b8-1fa31b32aec4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'f48e8418-6915-4904-b545-cf0c3b54d2a7'::uuid AS category_uuid, 'infirmiers' AS slug, 'infirmiers' AS name, 8b964b58-8539-4ca7-91b8-1fa31b32aec4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '01b68e8e-2af3-4752-aa85-643a825fb1b9'::uuid AS category_uuid, 'pharmaciens' AS slug, 'pharmaciens' AS name, 8b964b58-8539-4ca7-91b8-1fa31b32aec4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '01afc38e-0014-4087-9c16-59f858713c8b'::uuid AS category_uuid, 'techniciens-laboratoire' AS slug, 'techniciens de laboratoire' AS name, 8b964b58-8539-4ca7-91b8-1fa31b32aec4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'aed492bf-0556-4dde-94e7-5497c54d6490'::uuid AS category_uuid, 'sages-femmes' AS slug, 'sages-femmes' AS name, 8b964b58-8539-4ca7-91b8-1fa31b32aec4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '59326cc1-6f42-4c22-8f3c-d12400511b92'::uuid AS category_uuid, 'aides-soignants' AS slug, 'aides-soignants' AS name, 8b964b58-8539-4ca7-91b8-1fa31b32aec4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '4f0027a1-a906-40e3-b11a-f1c80262c8ce'::uuid AS category_uuid, 'specialistes-reeducation' AS slug, 'spécialistes rééducation' AS name, 8b964b58-8539-4ca7-91b8-1fa31b32aec4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '67cc8568-7b25-4d9a-9d81-552cc50bfe44'::uuid AS category_uuid, 'enseignants' AS slug, 'enseignants' AS name, 7e0e493d-687b-4009-ad34-68e3136a76cf::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '2d5e4485-6916-4010-a1e1-8590839f74c8'::uuid AS category_uuid, 'educateurs' AS slug, 'éducateurs' AS name, 7e0e493d-687b-4009-ad34-68e3136a76cf::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '84fe484e-a4ec-4d2e-8c96-46291de49a19'::uuid AS category_uuid, 'formateurs' AS slug, 'formateurs' AS name, 7e0e493d-687b-4009-ad34-68e3136a76cf::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '6dd3918b-c64b-45af-8601-b071bd5fffd3'::uuid AS category_uuid, 'moniteurs' AS slug, 'moniteurs' AS name, 7e0e493d-687b-4009-ad34-68e3136a76cf::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'a50875ef-4cde-41c5-88b0-e64c03121da2'::uuid AS category_uuid, 'assistants-pedagogiques' AS slug, 'assistants pédagogiques' AS name, 7e0e493d-687b-4009-ad34-68e3136a76cf::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '4d092d38-6d70-4d7b-81f9-1c702fc57fd6'::uuid AS category_uuid, 'garde-denfants' AS slug, 'garde d’enfants' AS name, 8c7c695a-efe0-4f8e-a236-00dddfe0fa3d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'd787aa4d-43ca-41cf-9526-cd5fccfcd7a2'::uuid AS category_uuid, 'aide-menageres' AS slug, 'aide-ménagères' AS name, 8c7c695a-efe0-4f8e-a236-00dddfe0fa3d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),
  level = EXCLUDED.level,
  category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),
  updated_at = NOW();

-- Lot 43 terminé: 100 entrées
