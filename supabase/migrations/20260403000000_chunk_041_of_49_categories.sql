-- ============================================================
-- CHUNK 41/49 — 100 catégories
-- Total: 4836 catégories
-- Exécuter dans l'ordre dans Supabase SQL Editor
-- ============================================================

INSERT INTO public.categories
  (category_uuid, slug, name, parent_id, level, is_active, created_at, updated_at)
VALUES
  SELECT 'fdb5a8c6-5700-452c-bd86-0ed34097d5da'::uuid AS category_uuid, 'trekking' AS slug, 'trekking' AS name, 59a90dee-19bb-486d-b388-186f022c531c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '2439c345-cd34-4973-8e40-413be525fc05'::uuid AS category_uuid, 'expeditions-sahariennes' AS slug, 'expéditions sahariennes' AS name, 59a90dee-19bb-486d-b388-186f022c531c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '4b23aa0b-7de9-4702-a195-d5559dacbc04'::uuid AS category_uuid, 'circuits-4x4' AS slug, 'circuits en 4x4' AS name, 59a90dee-19bb-486d-b388-186f022c531c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'c36d053b-0d93-4044-b657-705be3527d5d'::uuid AS category_uuid, 'bivouacs-sahariens' AS slug, 'bivouacs sahariens' AS name, 59a90dee-19bb-486d-b388-186f022c531c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'ec8dc520-5bbb-4f8c-a9ff-0bf22eca5adb'::uuid AS category_uuid, 'camping-touristique' AS slug, 'camping touristique' AS name, 59a90dee-19bb-486d-b388-186f022c531c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'f7082dac-3563-4a6d-a5d4-dbdbc2127980'::uuid AS category_uuid, 'hebergement-insolite' AS slug, 'hébergement insolite' AS name, 59a90dee-19bb-486d-b388-186f022c531c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '5a9d0960-d094-4349-8d68-4f5ea624f21a'::uuid AS category_uuid, 'tourisme-rural' AS slug, 'tourisme rural' AS name, 59a90dee-19bb-486d-b388-186f022c531c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '8fb05dfc-4d60-4be6-b03d-288c26cac2b6'::uuid AS category_uuid, 'tourisme-ecologique' AS slug, 'tourisme écologique' AS name, 59a90dee-19bb-486d-b388-186f022c531c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '3b84ef86-6b37-41e2-92fe-895993a37a3f'::uuid AS category_uuid, 'ecotourisme' AS slug, 'écotourisme' AS name, 59a90dee-19bb-486d-b388-186f022c531c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '5ef572a7-20df-41a6-a4a6-57fc9d7b6790'::uuid AS category_uuid, 'tourisme-saharien' AS slug, 'tourisme saharien' AS name, 59a90dee-19bb-486d-b388-186f022c531c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'db514672-53e6-4c27-a1a8-b998c40400e9'::uuid AS category_uuid, 'tourisme-cotier' AS slug, 'tourisme côtier' AS name, 59a90dee-19bb-486d-b388-186f022c531c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '8977bb09-5f64-4a2f-a79b-cc42ba66331b'::uuid AS category_uuid, 'tourisme-montagnard' AS slug, 'tourisme montagnard' AS name, 59a90dee-19bb-486d-b388-186f022c531c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'e007301d-5d08-4fab-99b6-755d5065e586'::uuid AS category_uuid, 'circuits-nature' AS slug, 'circuits en nature' AS name, 59a90dee-19bb-486d-b388-186f022c531c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '61c6b3d9-26fc-491c-8bec-648215b5fd52'::uuid AS category_uuid, 'visites-guidees' AS slug, 'visites guidées' AS name, 59a90dee-19bb-486d-b388-186f022c531c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'ddce6633-8ac3-4357-ac5d-9570294b633b'::uuid AS category_uuid, 'excursions-en-mer' AS slug, 'excursions en mer' AS name, 59a90dee-19bb-486d-b388-186f022c531c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '2319564b-b3eb-4cdc-8848-543d51f627b0'::uuid AS category_uuid, 'sorties-bateau' AS slug, 'sorties en bateau' AS name, 59a90dee-19bb-486d-b388-186f022c531c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '2759aa94-59d4-4f3d-940c-27a0c13ed94a'::uuid AS category_uuid, 'croisieres-locales' AS slug, 'croisières locales' AS name, 59a90dee-19bb-486d-b388-186f022c531c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'b21cd538-f06a-4b2d-9dfd-40067100cbe7'::uuid AS category_uuid, 'croisieres-mediterraneennes' AS slug, 'croisières méditerranéennes' AS name, 59a90dee-19bb-486d-b388-186f022c531c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '151213cc-3d91-4b6a-b706-4e3605168689'::uuid AS category_uuid, 'hotels' AS slug, 'hôtels' AS name, ffd534d7-cc54-4be5-a2c8-d45fa9e58545::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '8b6cf0ce-e1f4-4520-b75a-cbf184cbbfda'::uuid AS category_uuid, 'hotels-luxe' AS slug, 'hôtels de luxe' AS name, ffd534d7-cc54-4be5-a2c8-d45fa9e58545::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '4cd082fe-748b-481d-a7ba-b94a3ebfc662'::uuid AS category_uuid, 'hotels-economiques' AS slug, 'hôtels économiques' AS name, ffd534d7-cc54-4be5-a2c8-d45fa9e58545::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'dd4d4cb4-a8fa-4db0-87c0-6a9218c4acb5'::uuid AS category_uuid, 'auberges' AS slug, 'auberges' AS name, ffd534d7-cc54-4be5-a2c8-d45fa9e58545::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'c86a8a8d-00d4-4994-82bb-acf1d8142f86'::uuid AS category_uuid, 'maisons-hotes' AS slug, 'maisons d’hôtes' AS name, ffd534d7-cc54-4be5-a2c8-d45fa9e58545::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '7aa5a15f-489a-4950-8601-c479d6c6e01b'::uuid AS category_uuid, 'gites-touristiques' AS slug, 'gîtes touristiques' AS name, ffd534d7-cc54-4be5-a2c8-d45fa9e58545::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '605ce0d0-96a5-481a-99e5-f88af45e9c10'::uuid AS category_uuid, 'residences-vacances' AS slug, 'résidences de vacances' AS name, ffd534d7-cc54-4be5-a2c8-d45fa9e58545::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'd8a16929-47a0-4ec1-a6e0-74f5497015e9'::uuid AS category_uuid, 'appartements-meubles' AS slug, 'appartements meublés' AS name, ffd534d7-cc54-4be5-a2c8-d45fa9e58545::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '3c6ea2fe-a0b5-4e94-9754-47644b3483fe'::uuid AS category_uuid, 'hebergement-sejour-locations-saisonnieres' AS slug, 'locations saisonnières' AS name, ffd534d7-cc54-4be5-a2c8-d45fa9e58545::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '64c58ce9-a886-4699-a274-83d044203ef5'::uuid AS category_uuid, 'bungalows' AS slug, 'bungalows' AS name, ffd534d7-cc54-4be5-a2c8-d45fa9e58545::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '63ebf8eb-0f96-475b-af52-59969991bcf0'::uuid AS category_uuid, 'campings' AS slug, 'campings' AS name, ffd534d7-cc54-4be5-a2c8-d45fa9e58545::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '7bbe7279-22bf-4c47-853d-bc6bd2272316'::uuid AS category_uuid, 'campements-sahariens' AS slug, 'campements sahariens' AS name, ffd534d7-cc54-4be5-a2c8-d45fa9e58545::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'cfd1d6e7-12cf-4a31-b871-0184eae82483'::uuid AS category_uuid, 'hebergements-traditionnels' AS slug, 'hébergements traditionnels' AS name, ffd534d7-cc54-4be5-a2c8-d45fa9e58545::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'f531eb1d-8863-4801-875d-74c5b00967de'::uuid AS category_uuid, 'hebergements-familiaux' AS slug, 'hébergements familiaux' AS name, ffd534d7-cc54-4be5-a2c8-d45fa9e58545::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'b7730bb3-f1c2-4743-9ef2-16b88612b7ae'::uuid AS category_uuid, 'locations-chez-habitant' AS slug, 'locations chez l’habitant' AS name, ffd534d7-cc54-4be5-a2c8-d45fa9e58545::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'c04f9db5-cc45-4409-94ae-910b8a3b6cdf'::uuid AS category_uuid, 'chambres-hotes' AS slug, 'chambres d’hôtes' AS name, ffd534d7-cc54-4be5-a2c8-d45fa9e58545::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'c5aef327-ff6a-4d56-ba3c-029e923a462d'::uuid AS category_uuid, 'locations-voitures' AS slug, 'locations de voitures' AS name, 2de26d37-4fb0-498f-b136-07857c3c6072::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '15d12c02-949d-49e7-9d49-667a75a3599c'::uuid AS category_uuid, 'locations-4x4' AS slug, 'locations de 4x4' AS name, 2de26d37-4fb0-498f-b136-07857c3c6072::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '7dfdea0c-ba49-4083-93ab-cb83a0bad62a'::uuid AS category_uuid, 'locations-motos' AS slug, 'locations de motos' AS name, 2de26d37-4fb0-498f-b136-07857c3c6072::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'c8609f57-fedf-4539-bead-9895039ece45'::uuid AS category_uuid, 'locations-quads' AS slug, 'locations de quads' AS name, 2de26d37-4fb0-498f-b136-07857c3c6072::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '0de68f70-8f71-4152-9ac6-fd891d94e839'::uuid AS category_uuid, 'transport-prive' AS slug, 'transport touristique privé' AS name, 2de26d37-4fb0-498f-b136-07857c3c6072::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '815ece37-2ca7-4e36-909a-ca12ec9b621e'::uuid AS category_uuid, 'navettes-aeroport' AS slug, 'navettes aéroport' AS name, 2de26d37-4fb0-498f-b136-07857c3c6072::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'e8168464-ab23-4905-84e3-cd502b914971'::uuid AS category_uuid, 'transferts-intervilles' AS slug, 'transferts inter-villes' AS name, 2de26d37-4fb0-498f-b136-07857c3c6072::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '9b4c6337-e515-42fb-b1c1-ad4292c43292'::uuid AS category_uuid, 'chauffeurs-prives' AS slug, 'chauffeurs privés' AS name, 2de26d37-4fb0-498f-b136-07857c3c6072::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'd9610fc2-e779-4958-b9f8-80b4bd603757'::uuid AS category_uuid, 'bus-touristiques' AS slug, 'bus touristiques' AS name, 2de26d37-4fb0-498f-b136-07857c3c6072::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'b6b79f15-a513-490e-8b0a-ed56a1f3afda'::uuid AS category_uuid, 'minibus-voyage' AS slug, 'minibus de voyage' AS name, 2de26d37-4fb0-498f-b136-07857c3c6072::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'f372dc8b-92b5-4e1e-89a8-b84e5fba911c'::uuid AS category_uuid, 'taxis-touristiques' AS slug, 'taxis touristiques' AS name, 2de26d37-4fb0-498f-b136-07857c3c6072::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '24edb685-d71f-4068-a0d2-701ba4091634'::uuid AS category_uuid, 'location-velos' AS slug, 'location de vélos' AS name, 2de26d37-4fb0-498f-b136-07857c3c6072::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'd03ffba8-ba44-4736-b6b3-af9788bc2448'::uuid AS category_uuid, 'location-trottinettes' AS slug, 'location de trottinettes' AS name, 2de26d37-4fb0-498f-b136-07857c3c6072::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '663b7b0d-5576-4763-b33e-f3302af0925d'::uuid AS category_uuid, 'bateaux-touristiques' AS slug, 'bateaux touristiques' AS name, 2de26d37-4fb0-498f-b136-07857c3c6072::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'd8395a6f-5569-44c6-9db0-4b1c8d03bbdd'::uuid AS category_uuid, 'sports-aventure' AS slug, 'sports d’aventure' AS name, cabb374e-763f-47e3-b0a3-81ee12249b50::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'c8705868-3e1b-4858-82bb-86e7d09a82cc'::uuid AS category_uuid, 'activites-loisirs-touristiques-escalade' AS slug, 'escalade' AS name, cabb374e-763f-47e3-b0a3-81ee12249b50::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'a3d10eff-9bdc-4210-b57a-249b6b18393d'::uuid AS category_uuid, 'parapente' AS slug, 'parapente' AS name, cabb374e-763f-47e3-b0a3-81ee12249b50::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'f6f991bb-8dd1-4ed7-9433-4738d6bcffe3'::uuid AS category_uuid, 'activites-loisirs-touristiques-plongee' AS slug, 'plongée sous-marine' AS name, cabb374e-763f-47e3-b0a3-81ee12249b50::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'ac16f437-fed0-4241-82a4-f7bc6bff9485'::uuid AS category_uuid, 'snorkeling' AS slug, 'snorkeling' AS name, cabb374e-763f-47e3-b0a3-81ee12249b50::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'aebc14e9-8013-4b66-9896-91acf77ce8e9'::uuid AS category_uuid, 'sports-nautiques' AS slug, 'sports nautiques' AS name, cabb374e-763f-47e3-b0a3-81ee12249b50::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '352ed3d3-5a82-4eb5-a8a4-f86d5941b526'::uuid AS category_uuid, 'jet-ski' AS slug, 'jet-ski' AS name, cabb374e-763f-47e3-b0a3-81ee12249b50::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '0633241b-7e7b-4de2-947c-aa8560579074'::uuid AS category_uuid, 'kayak' AS slug, 'kayak' AS name, cabb374e-763f-47e3-b0a3-81ee12249b50::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'eccf0de0-c88d-462f-906c-1d3d5bc4738b'::uuid AS category_uuid, 'paddle' AS slug, 'paddle' AS name, cabb374e-763f-47e3-b0a3-81ee12249b50::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'e16cc480-d93c-4584-96bf-dfd718973042'::uuid AS category_uuid, 'randonnees-pedestres' AS slug, 'randonnées pédestres' AS name, cabb374e-763f-47e3-b0a3-81ee12249b50::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '0605f2bd-10a3-4972-bc78-eae26ffc6693'::uuid AS category_uuid, 'randonnees-equestres' AS slug, 'randonnées équestres' AS name, cabb374e-763f-47e3-b0a3-81ee12249b50::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'd4002483-d69e-4dd9-b71b-2de8f033361d'::uuid AS category_uuid, 'equitation' AS slug, 'équitation' AS name, cabb374e-763f-47e3-b0a3-81ee12249b50::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'df77569f-6bbd-4e3f-a3f7-ddea1c87a3e6'::uuid AS category_uuid, 'parcs-naturels' AS slug, 'visites de parcs naturels' AS name, cabb374e-763f-47e3-b0a3-81ee12249b50::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'cd4cbe88-5518-4dfa-81a6-9eeb70630044'::uuid AS category_uuid, 'safaris-sahariens' AS slug, 'safaris sahariens' AS name, cabb374e-763f-47e3-b0a3-81ee12249b50::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '9372a132-002a-4af1-ba4d-6dd9c612de93'::uuid AS category_uuid, 'observation-etoiles' AS slug, 'observation des étoiles' AS name, cabb374e-763f-47e3-b0a3-81ee12249b50::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'fe176670-ad1a-4f9d-a300-a33ec2c2ee28'::uuid AS category_uuid, 'photographie-touristique' AS slug, 'photographie touristique' AS name, cabb374e-763f-47e3-b0a3-81ee12249b50::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '5618cf92-0f36-41dd-99df-5f9c6db474a6'::uuid AS category_uuid, 'circuits-gastronomiques' AS slug, 'circuits gastronomiques' AS name, cabb374e-763f-47e3-b0a3-81ee12249b50::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '30ca1fd9-2965-4ff7-ae6e-9c2fad1cf647'::uuid AS category_uuid, 'ateliers-cuisine-locale' AS slug, 'ateliers de cuisine locale' AS name, cabb374e-763f-47e3-b0a3-81ee12249b50::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'fabd06a8-1dac-4ea5-ad78-8604d48996d4'::uuid AS category_uuid, 'spas-bien-etre' AS slug, 'spas & bien-être' AS name, cabb374e-763f-47e3-b0a3-81ee12249b50::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '11dea51f-eb2f-46e3-b90c-4054519f63e4'::uuid AS category_uuid, 'thalassotherapie' AS slug, 'thalassothérapie' AS name, cabb374e-763f-47e3-b0a3-81ee12249b50::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '547eb2e0-907e-4f60-b585-0934c1a4f763'::uuid AS category_uuid, 'hammam-traditionnel' AS slug, 'hammam traditionnel' AS name, cabb374e-763f-47e3-b0a3-81ee12249b50::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '33262503-89bc-49e0-990f-915fb669c71f'::uuid AS category_uuid, 'musees' AS slug, 'visites de musées' AS name, b0e6fc85-4f91-4f03-bc86-304e2195f3c4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '7da1934b-dcd9-4705-969e-65bed2efdb1b'::uuid AS category_uuid, 'sites-archeologiques' AS slug, 'sites archéologiques' AS name, b0e6fc85-4f91-4f03-bc86-304e2195f3c4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '3544d24a-2ea1-4d61-8a93-3bc8aa0fc8a0'::uuid AS category_uuid, 'monuments-historiques' AS slug, 'monuments historiques' AS name, b0e6fc85-4f91-4f03-bc86-304e2195f3c4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '1f4e435e-141e-4c09-9eb2-a87b006c482e'::uuid AS category_uuid, 'patrimoine-unesco' AS slug, 'patrimoine UNESCO' AS name, b0e6fc85-4f91-4f03-bc86-304e2195f3c4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '21ce3658-cc32-4bdd-a501-4b614c137cfa'::uuid AS category_uuid, 'casbahs' AS slug, 'casbahs' AS name, b0e6fc85-4f91-4f03-bc86-304e2195f3c4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '82cbd80c-f238-46a8-af5e-0ac87fce3742'::uuid AS category_uuid, 'ksour' AS slug, 'ksour' AS name, b0e6fc85-4f91-4f03-bc86-304e2195f3c4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'abf923d1-6bec-4f91-9596-7571c4f6e852'::uuid AS category_uuid, 'oasis-sahariennes' AS slug, 'oasis sahariennes' AS name, b0e6fc85-4f91-4f03-bc86-304e2195f3c4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '01eafc14-8660-4d0f-812d-a5ae1ff45aac'::uuid AS category_uuid, 'villages-traditionnels' AS slug, 'villages traditionnels' AS name, b0e6fc85-4f91-4f03-bc86-304e2195f3c4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '06d3b11e-7372-498b-b880-9ceb8b3c14db'::uuid AS category_uuid, 'mausolees' AS slug, 'mausolées' AS name, b0e6fc85-4f91-4f03-bc86-304e2195f3c4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'b0ed4675-a045-4004-83dd-8a002d019a1e'::uuid AS category_uuid, 'mosquees-historiques' AS slug, 'mosquées historiques' AS name, b0e6fc85-4f91-4f03-bc86-304e2195f3c4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'fa359763-016c-441e-8a86-0a81052ac67f'::uuid AS category_uuid, 'medinas-anciennes' AS slug, 'médinas anciennes' AS name, b0e6fc85-4f91-4f03-bc86-304e2195f3c4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '59473a58-0eb9-451c-8dc4-6e6327f44fc0'::uuid AS category_uuid, 'circuits-artisanat' AS slug, 'circuits artisanat' AS name, b0e6fc85-4f91-4f03-bc86-304e2195f3c4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '56c1d452-4636-41c6-9a0e-91cd1a705b00'::uuid AS category_uuid, 'circuits-patrimoine' AS slug, 'circuits du patrimoine' AS name, b0e6fc85-4f91-4f03-bc86-304e2195f3c4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'a0357d77-a000-459c-8a1c-665d0f7df53b'::uuid AS category_uuid, 'tourisme-culturel-historique-festivals-culturels' AS slug, 'festivals culturels' AS name, b0e6fc85-4f91-4f03-bc86-304e2195f3c4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'f7c5c4d6-4fe5-47d7-9593-9461d2aa6fdf'::uuid AS category_uuid, 'evenements-folkloriques' AS slug, 'événements folkloriques' AS name, b0e6fc85-4f91-4f03-bc86-304e2195f3c4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'd9c38fce-1d3f-4d55-8436-e80eebd57ca5'::uuid AS category_uuid, 'guides-touristiques' AS slug, 'guides touristiques' AS name, 7a81c4ca-f003-4ec2-942c-1774a955d1d7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'c79b4333-b698-4cdd-b8fb-51f6b7d43547'::uuid AS category_uuid, 'interpretes' AS slug, 'interprètes' AS name, 7a81c4ca-f003-4ec2-942c-1774a955d1d7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '8ee7e976-0902-43fc-8165-7833329a7a4e'::uuid AS category_uuid, 'services-traduction' AS slug, 'services de traduction' AS name, 7a81c4ca-f003-4ec2-942c-1774a955d1d7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '3f6c639f-a718-40d3-9c2a-643ae4d9b619'::uuid AS category_uuid, 'assurance-voyage' AS slug, 'assurance voyage' AS name, 7a81c4ca-f003-4ec2-942c-1774a955d1d7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '8fb92758-108f-40e1-964f-50e0837647f2'::uuid AS category_uuid, 'conseils-voyage' AS slug, 'conseils de voyage' AS name, 7a81c4ca-f003-4ec2-942c-1774a955d1d7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '0edc9c0e-0c3a-4c69-b4c0-c46ca4239b60'::uuid AS category_uuid, 'formalites-visas' AS slug, 'formalités & visas' AS name, 7a81c4ca-f003-4ec2-942c-1774a955d1d7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'ccdf0e08-8406-4dea-bf90-50c5d792bb2a'::uuid AS category_uuid, 'preparation-itineraires' AS slug, 'préparation d’itinéraires' AS name, 7a81c4ca-f003-4ec2-942c-1774a955d1d7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '01150c62-17c7-47f0-90e9-ce65ac20122d'::uuid AS category_uuid, 'organisation-sejours-sur-mesure' AS slug, 'organisation de séjours sur mesure' AS name, 7a81c4ca-f003-4ec2-942c-1774a955d1d7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '6dc9e986-b2f4-424e-a247-81acf8b6ccaa'::uuid AS category_uuid, 'reservation-hotels' AS slug, 'réservation d’hôtels' AS name, 7a81c4ca-f003-4ec2-942c-1774a955d1d7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '772afd3f-0b15-43f6-93d5-793b95c8eea0'::uuid AS category_uuid, 'reservation-billets' AS slug, 'réservation de billets' AS name, 7a81c4ca-f003-4ec2-942c-1774a955d1d7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'c9cf4be7-adb3-4182-a8d3-5ed97bd4cf0f'::uuid AS category_uuid, 'services-vip' AS slug, 'services VIP' AS name, 7a81c4ca-f003-4ec2-942c-1774a955d1d7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '23b78127-8fce-42a0-a115-aa4afc42e2d8'::uuid AS category_uuid, 'location-materiel-voyage' AS slug, 'location de matériel de voyage' AS name, 7a81c4ca-f003-4ec2-942c-1774a955d1d7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '9fac0d14-9db6-459b-84ab-b913c0c0609b'::uuid AS category_uuid, 'transferts-urgents' AS slug, 'transferts urgents' AS name, 7a81c4ca-f003-4ec2-942c-1774a955d1d7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'd1a7e4bc-2976-4531-9594-76d3333fc618'::uuid AS category_uuid, 'aide-touristes-etrangers' AS slug, 'aide aux touristes étrangers' AS name, 7a81c4ca-f003-4ec2-942c-1774a955d1d7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'c0e5126f-197c-4fa4-981c-0dddf07764fb'::uuid AS category_uuid, 'valises' AS slug, 'valises' AS name, 02268560-67bd-4748-b601-35f71dbe3eb9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '007c8062-664c-4f24-88f4-1f951ae1b6d6'::uuid AS category_uuid, 'sacs-voyage' AS slug, 'sacs de voyage' AS name, 02268560-67bd-4748-b601-35f71dbe3eb9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),
  level = EXCLUDED.level,
  category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),
  updated_at = NOW();

-- Lot 41 terminé: 100 entrées
