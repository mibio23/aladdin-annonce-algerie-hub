-- ============================================================
-- CHUNK 9/49 — 100 catégories
-- Total: 4836 catégories
-- Exécuter dans l'ordre dans Supabase SQL Editor
-- ============================================================

INSERT INTO public.categories
  (category_uuid, slug, name, parent_id, level, is_active, created_at, updated_at)
VALUES
  SELECT 'd44a8387-ef2d-479b-acaa-58b30e9a155c'::uuid AS category_uuid, 'chaussures-de-cyclisme' AS slug, 'Chaussures de cyclisme' AS name, f7d3f5cd-5b68-4f4b-8ce8-78da8d5f55b5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '9db9555b-89f1-4727-a6a0-875935dd4d88'::uuid AS category_uuid, 'protections-genouilleres-coudieres' AS slug, 'Protections (genouillères, coudières)' AS name, f7d3f5cd-5b68-4f4b-8ce8-78da8d5f55b5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '3cfeda73-6223-48a4-a32d-1eeb29b73918'::uuid AS category_uuid, 'gilets-reflechissants' AS slug, 'Gilets réfléchissants' AS name, f7d3f5cd-5b68-4f4b-8ce8-78da8d5f55b5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '301ffc7c-7030-4fae-a1ad-4bf41ba71092'::uuid AS category_uuid, 'sacs-a-dos-velo' AS slug, 'Sacs à dos vélo' AS name, f7d3f5cd-5b68-4f4b-8ce8-78da8d5f55b5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'cc3cb287-f12c-4611-a9b8-05084eb3aa08'::uuid AS category_uuid, 'gourdes-porte-gourdes' AS slug, 'Gourdes & porte-gourdes' AS name, f7d3f5cd-5b68-4f4b-8ce8-78da8d5f55b5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'df6ecfd5-009b-43f7-aac3-7c6f47757edf'::uuid AS category_uuid, 'roues-pneus' AS slug, 'Roues & pneus' AS name, 1d76bcf8-869a-426c-a484-d9553c341f2c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '4e1b83a4-ad82-4eef-8d7b-8def0eec395b'::uuid AS category_uuid, 'chambres-a-air' AS slug, 'Chambres à air' AS name, 1d76bcf8-869a-426c-a484-d9553c341f2c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '04a0796c-8d1a-476b-be1c-f7d5e6eaa4f1'::uuid AS category_uuid, 'freins-patins-disques' AS slug, 'Freins (patins, disques)' AS name, 1d76bcf8-869a-426c-a484-d9553c341f2c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '25859f4d-9890-441e-a2d2-e9c983475d02'::uuid AS category_uuid, 'derailleurs' AS slug, 'Dérailleurs' AS name, 1d76bcf8-869a-426c-a484-d9553c341f2c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '4311c517-8372-4dfa-b8ec-290d2a03d493'::uuid AS category_uuid, 'chaines-cassettes' AS slug, 'Chaînes & cassettes' AS name, 1d76bcf8-869a-426c-a484-d9553c341f2c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '954a6c5c-6d32-46f8-a8ca-d2286e6f41a5'::uuid AS category_uuid, 'pedales' AS slug, 'Pédales' AS name, 1d76bcf8-869a-426c-a484-d9553c341f2c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '1d3295d2-014d-4bbe-b58c-fbdd39b5e234'::uuid AS category_uuid, 'selles-tiges-de-selle' AS slug, 'Selles & tiges de selle' AS name, 1d76bcf8-869a-426c-a484-d9553c341f2c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '3ffd1ab8-a668-4280-91b0-5a0356f37de8'::uuid AS category_uuid, 'guidons-poignees' AS slug, 'Guidons & poignées' AS name, 1d76bcf8-869a-426c-a484-d9553c341f2c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'bb457c54-9c26-46d9-ab2a-e9ba343b9150'::uuid AS category_uuid, 'pedaliers' AS slug, 'Pédaliers' AS name, 1d76bcf8-869a-426c-a484-d9553c341f2c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '709d400f-5d72-4c62-b44c-96cfd28fafae'::uuid AS category_uuid, 'suspensions-fourches' AS slug, 'Suspensions & fourches' AS name, 1d76bcf8-869a-426c-a484-d9553c341f2c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '1bafc48a-97c5-4c29-b084-28d09514171b'::uuid AS category_uuid, 'cadres-kits-cadres' AS slug, 'Cadres & kits-cadres' AS name, 1d76bcf8-869a-426c-a484-d9553c341f2c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '4b671715-423d-42d4-b185-659f96c65191'::uuid AS category_uuid, 'eclairages-avant-arriere' AS slug, 'Éclairages (avant/arrière)' AS name, 87d22dae-8bb3-4278-96ab-57035d69f7c4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '5076297e-0fa9-4510-81a9-146ea7df0338'::uuid AS category_uuid, 'sonnettes-klaxons' AS slug, 'Sonnettes & klaxons' AS name, 87d22dae-8bb3-4278-96ab-57035d69f7c4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '94d97f0a-d083-4196-ab7d-c52c21f4fc3a'::uuid AS category_uuid, 'accessoires-velos-retroviseurs' AS slug, 'Rétroviseurs' AS name, 87d22dae-8bb3-4278-96ab-57035d69f7c4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '10dea684-a334-4e40-9c71-6c5faeddaf0f'::uuid AS category_uuid, 'bequilles' AS slug, 'Béquilles' AS name, 87d22dae-8bb3-4278-96ab-57035d69f7c4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '620aa50b-dad5-4941-ad8f-dbec90697f0f'::uuid AS category_uuid, 'porte-bagages' AS slug, 'Porte-bagages' AS name, 87d22dae-8bb3-4278-96ab-57035d69f7c4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '47acb674-259f-44da-8657-2b78c5520f77'::uuid AS category_uuid, 'paniers-sacs' AS slug, 'Paniers & sacs' AS name, 87d22dae-8bb3-4278-96ab-57035d69f7c4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'df35279d-7358-4e40-bd89-d7ff2a632d64'::uuid AS category_uuid, 'garde-boue' AS slug, 'Garde-boue' AS name, 87d22dae-8bb3-4278-96ab-57035d69f7c4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'f52f9b35-aa69-4279-ba9a-41d645f161a6'::uuid AS category_uuid, 'antivols' AS slug, 'Antivols' AS name, 87d22dae-8bb3-4278-96ab-57035d69f7c4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'f483815b-5bed-499d-baae-dbfc1153e3e8'::uuid AS category_uuid, 'compteurs-gps-velo' AS slug, 'Compteurs & GPS vélo' AS name, 87d22dae-8bb3-4278-96ab-57035d69f7c4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '6768bbbb-2047-475b-b638-c41307171ba4'::uuid AS category_uuid, 'supports-smartphone' AS slug, 'Supports smartphone' AS name, 87d22dae-8bb3-4278-96ab-57035d69f7c4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '431d9ae1-8170-4602-a0fa-efa5e4ea78e0'::uuid AS category_uuid, 'pompes-a-main' AS slug, 'Pompes à main' AS name, 87d22dae-8bb3-4278-96ab-57035d69f7c4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '54892b6b-a806-4704-a30c-cca50cc8a939'::uuid AS category_uuid, 'porte-enfants' AS slug, 'Porte-enfants' AS name, 87d22dae-8bb3-4278-96ab-57035d69f7c4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '09561ff9-e8fd-4fcc-98a8-2cd9cb26a7b2'::uuid AS category_uuid, 'kits-de-reparation' AS slug, 'Kits de réparation' AS name, e77aac0f-5493-4ff6-9a5c-3caeda2536bc::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'b7e13b89-0f86-4a23-8e38-3329c9499cd5'::uuid AS category_uuid, 'pompes-a-pied' AS slug, 'Pompes à pied' AS name, e77aac0f-5493-4ff6-9a5c-3caeda2536bc::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'bbf9abeb-256e-4eb8-ac7d-bdf9a6e1f120'::uuid AS category_uuid, 'outils-entretien-demonte-pneus' AS slug, 'Démonte-pneus' AS name, e77aac0f-5493-4ff6-9a5c-3caeda2536bc::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '878449ab-1410-46c4-a5f7-f697ed643d77'::uuid AS category_uuid, 'lubrifiants-nettoyants' AS slug, 'Lubrifiants & nettoyants' AS name, e77aac0f-5493-4ff6-9a5c-3caeda2536bc::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '1481a6cb-e418-456f-a167-a6c964b9c72c'::uuid AS category_uuid, 'cles-multi-outils-velo' AS slug, 'Clés & multi-outils vélo' AS name, e77aac0f-5493-4ff6-9a5c-3caeda2536bc::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'bab708f0-9f49-4202-8f9d-3fcea6c9f5b2'::uuid AS category_uuid, 'supports-de-reparation' AS slug, 'Supports de réparation' AS name, e77aac0f-5493-4ff6-9a5c-3caeda2536bc::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '82cc024c-bbe1-4e1d-b7ea-b3dda6779b28'::uuid AS category_uuid, 'brosses-dentretien' AS slug, 'Brosses d’entretien' AS name, e77aac0f-5493-4ff6-9a5c-3caeda2536bc::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'f807b7d8-1f4a-467c-b154-444a9d314c00'::uuid AS category_uuid, 'supports-muraux-velo' AS slug, 'Supports muraux vélo' AS name, 8c63a840-5193-4b39-a126-7f7e3e44a060::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '9329cce3-1a2f-4c68-852a-ea29b77517f4'::uuid AS category_uuid, 'crochets-racks' AS slug, 'Crochets & racks' AS name, 8c63a840-5193-4b39-a126-7f7e3e44a060::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '052a7613-7ee8-49b9-99a0-128a42c9e6df'::uuid AS category_uuid, 'housses-de-transport-velo' AS slug, 'Housses de transport vélo' AS name, 8c63a840-5193-4b39-a126-7f7e3e44a060::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '7205f6a9-f160-4b9a-9847-bd5de2a258a2'::uuid AS category_uuid, 'porte-velos-voiture' AS slug, 'Porte-vélos voiture (coffre, toit, attelage)' AS name, 8c63a840-5193-4b39-a126-7f7e3e44a060::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'a472f564-fa17-4c00-974d-55f7c10b568f'::uuid AS category_uuid, 'cardiofrequencemetres' AS slug, 'Cardiofréquencemètres' AS name, 8fe1cdb9-e085-4200-aaa9-9e075c1c667e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'a2c709d7-4f54-4382-a88b-d9468747911a'::uuid AS category_uuid, 'capteurs-de-puissance' AS slug, 'Capteurs de puissance' AS name, 8fe1cdb9-e085-4200-aaa9-9e075c1c667e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '2ce3ca78-9937-496b-adb8-875676f3db6b'::uuid AS category_uuid, 'montres-sport' AS slug, 'Montres sport' AS name, 8fe1cdb9-e085-4200-aaa9-9e075c1c667e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '52b2b0cb-8d7b-4e61-ab2d-758a46bd971e'::uuid AS category_uuid, 'vetements-de-pluie-coupe-vent' AS slug, 'Vêtements de pluie & coupe-vent' AS name, 8fe1cdb9-e085-4200-aaa9-9e075c1c667e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '24549a8e-c4bc-4bd8-9f61-2748198a3e23'::uuid AS category_uuid, 'accessoires-de-performance' AS slug, 'Accessoires de performance (aérodynamique, optimisation poids)' AS name, 8fe1cdb9-e085-4200-aaa9-9e075c1c667e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'dcbb435c-c2a7-4a54-891e-d40aa303aec4'::uuid AS category_uuid, 'nautisme' AS slug, 'Nautisme & Bateaux' AS name, NULL::uuid AS parent_id, 1 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '2a96d401-3c7a-49fd-bbc7-fe9c5ce99673'::uuid AS category_uuid, 'types-de-bateaux' AS slug, 'Types de bateaux' AS name, dcbb435c-c2a7-4a54-891e-d40aa303aec4::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '01d9ace0-b5a9-4ad9-bcde-47303a0d3015'::uuid AS category_uuid, 'moteurs-propulsion' AS slug, 'Moteurs & propulsion' AS name, dcbb435c-c2a7-4a54-891e-d40aa303aec4::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '06e5ffbf-ed99-44dc-8dd5-a73d137719d3'::uuid AS category_uuid, 'equipements-de-navigation' AS slug, 'Équipements de navigation' AS name, dcbb435c-c2a7-4a54-891e-d40aa303aec4::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '04c941fc-eb66-4c43-9dc6-e41a7fa08bad'::uuid AS category_uuid, 'securite-sauvetage' AS slug, 'Sécurité & sauvetage' AS name, dcbb435c-c2a7-4a54-891e-d40aa303aec4::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '4cd434c8-0bcd-4f9c-9630-351d831eea7f'::uuid AS category_uuid, 'accastillage-pieces-detachees' AS slug, 'Accastillage & pièces détachées' AS name, dcbb435c-c2a7-4a54-891e-d40aa303aec4::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'a050345f-bd0d-419c-b723-5307a9bff5c5'::uuid AS category_uuid, 'confort-amenagement-interieur' AS slug, 'Confort & aménagement intérieur' AS name, dcbb435c-c2a7-4a54-891e-d40aa303aec4::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '98a33a74-8aab-4e31-a074-567679f01546'::uuid AS category_uuid, 'accessoires-entretien' AS slug, 'Accessoires & entretien' AS name, dcbb435c-c2a7-4a54-891e-d40aa303aec4::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '2b09a805-6443-49c8-963c-31d96ea84258'::uuid AS category_uuid, 'transport-stockage' AS slug, 'Transport & stockage' AS name, dcbb435c-c2a7-4a54-891e-d40aa303aec4::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'ecea090f-f0aa-49d6-91fd-6dc8ca396d90'::uuid AS category_uuid, 'sports-nautiques-associes' AS slug, 'Sports nautiques associés' AS name, dcbb435c-c2a7-4a54-891e-d40aa303aec4::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '5f125d9e-2389-4115-a929-925ee910fb87'::uuid AS category_uuid, 'bateaux-a-moteur' AS slug, 'Bateaux à moteur' AS name, 2a96d401-3c7a-49fd-bbc7-fe9c5ce99673::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '3886b3d2-a0b2-402d-b1ec-fac6dc2eebe4'::uuid AS category_uuid, 'voiliers' AS slug, 'Voiliers' AS name, 2a96d401-3c7a-49fd-bbc7-fe9c5ce99673::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '1582490b-1b6f-4655-a79c-235d721b3f82'::uuid AS category_uuid, 'yachts' AS slug, 'Yachts' AS name, 2a96d401-3c7a-49fd-bbc7-fe9c5ce99673::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '5453e7bf-75a3-42e2-9421-30c6587ffa09'::uuid AS category_uuid, 'semi-rigides' AS slug, 'Semi-rigides' AS name, 2a96d401-3c7a-49fd-bbc7-fe9c5ce99673::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '65918022-faee-4d21-a1d6-fda151a83eca'::uuid AS category_uuid, 'zodiacs-pneumatiques' AS slug, 'Zodiacs & pneumatiques' AS name, 2a96d401-3c7a-49fd-bbc7-fe9c5ce99673::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'd110a448-fe11-459f-8cf8-c19ec74a980e'::uuid AS category_uuid, 'jet-skis-scooters-mer' AS slug, 'Jet-skis & scooters des mers' AS name, 2a96d401-3c7a-49fd-bbc7-fe9c5ce99673::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'a54eeae5-0dd9-4628-8287-3dc651051804'::uuid AS category_uuid, 'barques-chaloupes' AS slug, 'Barques & chaloupes' AS name, 2a96d401-3c7a-49fd-bbc7-fe9c5ce99673::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'a5738145-46a3-45a1-bc2b-6997b47438c5'::uuid AS category_uuid, 'kayaks' AS slug, 'Kayaks' AS name, 2a96d401-3c7a-49fd-bbc7-fe9c5ce99673::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '2dfa7d40-d058-458e-8721-f4af5a18ebf2'::uuid AS category_uuid, 'canoes' AS slug, 'Canoës' AS name, 2a96d401-3c7a-49fd-bbc7-fe9c5ce99673::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '8784eef0-e6a7-43a6-9acc-5126d8f8fe8e'::uuid AS category_uuid, 'bateaux-de-peche' AS slug, 'Bateaux de pêche' AS name, 2a96d401-3c7a-49fd-bbc7-fe9c5ce99673::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'ecea2a90-1625-460f-a044-96aba120632f'::uuid AS category_uuid, 'pedalos' AS slug, 'Pédalos' AS name, 2a96d401-3c7a-49fd-bbc7-fe9c5ce99673::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'd724e802-c654-4092-85a5-197c3280be20'::uuid AS category_uuid, 'catamarans' AS slug, 'Catamarans' AS name, 2a96d401-3c7a-49fd-bbc7-fe9c5ce99673::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'e095539b-840c-45ff-b524-dac428eeb287'::uuid AS category_uuid, 'planches-a-voile-windsurf' AS slug, 'Planches à voile & windsurf' AS name, 2a96d401-3c7a-49fd-bbc7-fe9c5ce99673::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'c9e09728-f460-438d-9f3f-8335a8658c44'::uuid AS category_uuid, 'moteurs-hors-bord' AS slug, 'Moteurs hors-bord' AS name, 01d9ace0-b5a9-4ad9-bcde-47303a0d3015::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '057d901c-80f5-4e76-b6a3-a2880208920d'::uuid AS category_uuid, 'moteurs-in-bord' AS slug, 'Moteurs in-bord' AS name, 01d9ace0-b5a9-4ad9-bcde-47303a0d3015::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '0eac0c8e-c684-4f3e-8751-9e9455cd3cbd'::uuid AS category_uuid, 'moteurs-electriques' AS slug, 'Moteurs électriques' AS name, 01d9ace0-b5a9-4ad9-bcde-47303a0d3015::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '738966b7-d88c-42c8-bd60-ca721afbea16'::uuid AS category_uuid, 'helices' AS slug, 'Hélices' AS name, 01d9ace0-b5a9-4ad9-bcde-47303a0d3015::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'ba78eb02-d53f-4591-98cf-ae4592b1c100'::uuid AS category_uuid, 'propulsion-auxiliaire' AS slug, 'Systèmes de propulsion auxiliaire' AS name, 01d9ace0-b5a9-4ad9-bcde-47303a0d3015::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '8bc64cab-4ed5-421b-b0eb-f173c1875221'::uuid AS category_uuid, 'batteries-marine' AS slug, 'Batteries marine' AS name, 01d9ace0-b5a9-4ad9-bcde-47303a0d3015::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '22842e5e-1a4c-4090-88a5-21a3be56596c'::uuid AS category_uuid, 'reservoirs-carburant-nautique' AS slug, 'Réservoirs & carburant nautique' AS name, 01d9ace0-b5a9-4ad9-bcde-47303a0d3015::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'c03468f9-74bf-4b13-ae83-b93a1b10a8e4'::uuid AS category_uuid, 'gps-nautiques' AS slug, 'GPS nautiques' AS name, 06e5ffbf-ed99-44dc-8dd5-a73d137719d3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'de949fde-a7d9-4cc6-b2ae-57ccd4a584e5'::uuid AS category_uuid, 'sondeurs-echosondeurs' AS slug, 'Sondeurs & échosondeurs' AS name, 06e5ffbf-ed99-44dc-8dd5-a73d137719d3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '5df1ae7a-9a26-44bf-a826-13f7d198e5e6'::uuid AS category_uuid, 'radars' AS slug, 'Radars' AS name, 06e5ffbf-ed99-44dc-8dd5-a73d137719d3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '0f980a7c-fb70-454b-bf10-06e273cc7ce1'::uuid AS category_uuid, 'cartes-instruments-marins' AS slug, 'Cartes & instruments marins' AS name, 06e5ffbf-ed99-44dc-8dd5-a73d137719d3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'ffc5f0dc-3012-4ec9-b211-3b7837963adf'::uuid AS category_uuid, 'compas' AS slug, 'Compas' AS name, 06e5ffbf-ed99-44dc-8dd5-a73d137719d3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '14a7a1c1-d928-4829-8405-be347ecd0be9'::uuid AS category_uuid, 'pilotes-automatiques' AS slug, 'Pilotes automatiques' AS name, 06e5ffbf-ed99-44dc-8dd5-a73d137719d3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '3b80efef-0fb3-49ac-865a-144851f3acf6'::uuid AS category_uuid, 'radios-vhf' AS slug, 'Radios VHF' AS name, 06e5ffbf-ed99-44dc-8dd5-a73d137719d3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '65a31e2e-1b72-420e-b975-bb8344b90999'::uuid AS category_uuid, 'traceurs-de-cartes' AS slug, 'Traceurs de cartes' AS name, 06e5ffbf-ed99-44dc-8dd5-a73d137719d3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '70450560-0610-4a7e-8488-5b52f77d7417'::uuid AS category_uuid, 'jumelles-marines' AS slug, 'Jumelles marines' AS name, 06e5ffbf-ed99-44dc-8dd5-a73d137719d3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '1e06b314-821f-4ec9-8ff2-e3f4ab6867c5'::uuid AS category_uuid, 'gilets-de-sauvetage' AS slug, 'Gilets de sauvetage' AS name, 04c941fc-eb66-4c43-9dc6-e41a7fa08bad::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'ab91df55-588f-428a-82e4-43e4da6273ce'::uuid AS category_uuid, 'bouees' AS slug, 'Bouées' AS name, 04c941fc-eb66-4c43-9dc6-e41a7fa08bad::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'cea30d3b-6abb-42d0-b319-17217b85275a'::uuid AS category_uuid, 'harnais-lignes-de-vie' AS slug, 'Harnais & lignes de vie' AS name, 04c941fc-eb66-4c43-9dc6-e41a7fa08bad::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '7078cbc8-c002-4a34-8ad5-63a69ce1db07'::uuid AS category_uuid, 'extincteurs-marine' AS slug, 'Extincteurs marine' AS name, 04c941fc-eb66-4c43-9dc6-e41a7fa08bad::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '2635dec7-a3e9-417f-940d-11cb9287fa03'::uuid AS category_uuid, 'trousses-de-secours' AS slug, 'Trousses de secours' AS name, 04c941fc-eb66-4c43-9dc6-e41a7fa08bad::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '3ec7471e-06ae-485b-920d-78b253b75ee9'::uuid AS category_uuid, 'fusees-signalisations' AS slug, 'Fusées & signalisations' AS name, 04c941fc-eb66-4c43-9dc6-e41a7fa08bad::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '2ea305b0-363e-4be9-b0ad-7ae28e0f0183'::uuid AS category_uuid, 'kits-d-urgence' AS slug, 'Kits d’urgence' AS name, 04c941fc-eb66-4c43-9dc6-e41a7fa08bad::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'c99f8d3f-a61d-42cb-a5b9-a07476d0e323'::uuid AS category_uuid, 'pompes-de-cale' AS slug, 'Pompes de cale' AS name, 04c941fc-eb66-4c43-9dc6-e41a7fa08bad::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '563752e9-ca25-4a6e-a590-a0dd3ffd58d5'::uuid AS category_uuid, 'accastillage-pieces-detachees-cordages' AS slug, 'Cordages' AS name, 4cd434c8-0bcd-4f9c-9630-351d831eea7f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '86488878-e6b3-4036-be55-c6db70ecd6cc'::uuid AS category_uuid, 'amarres' AS slug, 'Amarres' AS name, 4cd434c8-0bcd-4f9c-9630-351d831eea7f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '9073473e-616d-4b8d-8024-840eecd7f1ac'::uuid AS category_uuid, 'ancres-chaines' AS slug, 'Ancres & chaînes' AS name, 4cd434c8-0bcd-4f9c-9630-351d831eea7f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '3df46098-eeb3-48bb-9439-673178c286c7'::uuid AS category_uuid, 'poulies' AS slug, 'Poulies' AS name, 4cd434c8-0bcd-4f9c-9630-351d831eea7f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '52bf48fc-b2d6-4efa-aa2e-9f0215d52e09'::uuid AS category_uuid, 'taquets' AS slug, 'Taquets' AS name, 4cd434c8-0bcd-4f9c-9630-351d831eea7f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'f8155c33-bdcc-4209-814b-53cc7f3e45c5'::uuid AS category_uuid, 'mousquetons' AS slug, 'Mousquetons' AS name, 4cd434c8-0bcd-4f9c-9630-351d831eea7f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'ee22c7a5-a9d4-46d5-bec5-0d14c260fd0f'::uuid AS category_uuid, 'winchs' AS slug, 'Winchs' AS name, 4cd434c8-0bcd-4f9c-9630-351d831eea7f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'f8587010-8ecb-46e4-aab9-7c78964f18f6'::uuid AS category_uuid, 'voiles-greements' AS slug, 'Voiles & gréements' AS name, 4cd434c8-0bcd-4f9c-9630-351d831eea7f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'cc7be740-4ce9-4ea4-a8be-e0becc0f091f'::uuid AS category_uuid, 'chandeliers-balcons' AS slug, 'Chandeliers & balcons' AS name, 4cd434c8-0bcd-4f9c-9630-351d831eea7f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),
  level = EXCLUDED.level,
  category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),
  updated_at = NOW();

-- Lot 9 terminé: 100 entrées
