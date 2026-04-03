-- ============================================================
-- CHUNK 33/49 — 100 catégories
-- Total: 4836 catégories
-- Exécuter dans l'ordre dans Supabase SQL Editor
-- ============================================================

INSERT INTO public.categories
  (category_uuid, slug, name, parent_id, level, is_active, created_at, updated_at)
VALUES
  SELECT 'bf0a9108-f41b-46a3-aa00-83cbf9f064b2'::uuid AS category_uuid, 'laits-infantiles' AS slug, 'Laits Infantiles' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'f6a48e09-096c-4e9b-aa77-8a4d4233f708'::uuid AS category_uuid, 'soins-corps-bebe' AS slug, 'Soins Corps Bébé' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '31c6b846-8387-4f06-871c-1ecaf45d1980'::uuid AS category_uuid, 'produits-bebe-lingettes-bebe' AS slug, 'Lingettes' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '54a2571a-095a-4518-8802-58f463717104'::uuid AS category_uuid, 'gels-lavants-bebe' AS slug, 'Gels Lavants' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '9b7589a8-935a-466c-8849-6cd3f8f7bee7'::uuid AS category_uuid, 'cremes-protectrices-bebe' AS slug, 'Crèmes Protectrices' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'c0cac544-0369-4b5f-9da7-07b4ce0bfa7b'::uuid AS category_uuid, 'accessoires-hygiene-bebe' AS slug, 'Accessoires d' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '6abbb5ca-ba1a-4ba1-987a-a798f67a8cf2'::uuid AS category_uuid, 'huiles-bebe' AS slug, 'Huiles' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'd97ca489-075e-4114-b5fc-6ddd92367461'::uuid AS category_uuid, 'poudres-bebe' AS slug, 'Poudres Bébés' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'bb583de0-6266-47f9-a47f-4522af961eb7'::uuid AS category_uuid, 'soins-erytheme-fessier' AS slug, 'Soins Érythème Fessier' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '22f1d781-6f6b-4664-8bce-b0da976bb283'::uuid AS category_uuid, 'premiers-secours-pansements' AS slug, 'Pansements' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'cb1f3403-92fb-4089-b4c8-59645ca69c52'::uuid AS category_uuid, 'premiers-secours-compresses' AS slug, 'Compresses' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'f1fa36c7-ecf4-436f-ac04-dabcd39e86c5'::uuid AS category_uuid, 'premiers-secours-bandes' AS slug, 'Bandes' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'f6fee479-b125-470c-96e3-dd4e768e13ba'::uuid AS category_uuid, 'premiers-secours-antiseptiques' AS slug, 'Antiseptiques' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '433ec50c-020e-4194-bb5c-40b69b9208f4'::uuid AS category_uuid, 'premiers-secours-solutions-iodees' AS slug, 'Solutions Iodées' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'bbde1d02-3f37-4864-9f82-bb74bd95c343'::uuid AS category_uuid, 'desinfectants' AS slug, 'Désinfectants' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '9e94dc76-6e5c-43cc-a165-230288c6dac9'::uuid AS category_uuid, 'trousses-secours' AS slug, 'Trousses de Secours' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '6819ba13-818f-4b21-9d37-76300fef5e9f'::uuid AS category_uuid, 'sutures-adhesives' AS slug, 'Sutures Adhésives' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '4690b223-65c9-49c0-8145-bd2b2df77be1'::uuid AS category_uuid, 'premiers-secours-sprays-cicatrisants' AS slug, 'Sprays Cicatrisants' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '8897be48-5878-4692-868d-b86ef638b33b'::uuid AS category_uuid, 'materiel-medical-leger-tensiometres' AS slug, 'Tensiomètres' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'e0c86797-3ea4-4433-95f7-2d60b3018524'::uuid AS category_uuid, 'materiel-medical-leger-thermometres' AS slug, 'Thermomètres' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'bd319183-e31f-4bae-bcb8-a302f84f16f3'::uuid AS category_uuid, 'materiel-medical-leger-oxymetres' AS slug, 'Oxymètres' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'd421e914-74cd-4d46-8b25-1add34593ea7'::uuid AS category_uuid, 'materiel-medical-leger-glucometres' AS slug, 'Glucomètres' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'd5e50ed5-bf09-4d1e-8ae1-714f72e71f01'::uuid AS category_uuid, 'materiel-medical-leger-nebuliseurs' AS slug, 'Nébuliseurs' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '7fd3cd67-9478-4730-9677-1cbe349da1fd'::uuid AS category_uuid, 'materiel-medical-leger-tests-rapides' AS slug, 'Tests Rapides (glycémie, grossesse…)' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '095759fb-87a5-4ea8-bb12-d5ecdff57b97'::uuid AS category_uuid, 'aerosols' AS slug, 'Aérosols' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '84341ddd-b198-448c-bb7c-37ed575c020f'::uuid AS category_uuid, 'pulverisateurs-medicaux' AS slug, 'Pulvérisateurs Médicaux' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '2604ae03-2a0a-4f76-8f2d-97c9101aafb4'::uuid AS category_uuid, 'produits-solaires-cremes-spf' AS slug, 'Crèmes SPF' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '2d2f6982-49e3-4a20-87c8-0d0bf7040606'::uuid AS category_uuid, 'produits-solaires-sprays-solaires' AS slug, 'Sprays Solaires' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '30042d21-e555-4ea9-8060-1b59f8cae5c9'::uuid AS category_uuid, 'cremes-teintees' AS slug, 'Crèmes Teintées' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '2bc180bb-8444-4f8b-bcdc-c23b01edf729'::uuid AS category_uuid, 'produits-solaires-protections-enfants' AS slug, 'Protections Enfants' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'd649b00d-ca22-410f-ac09-f890b2d03fc8'::uuid AS category_uuid, 'soins-apres-soleil' AS slug, 'Soins Après-soleil' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'ec86d09c-473c-4829-8939-17dbf494e4c4'::uuid AS category_uuid, 'produits-solaires-huiles-solaires' AS slug, 'Huiles Solaires' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'da618a75-a376-40e1-a6f1-4652a1f78709'::uuid AS category_uuid, 'sticks-spf' AS slug, 'Sticks SPF' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '5ce1363c-fd66-493f-a4d6-6b61cdc2ec47'::uuid AS category_uuid, 'phytotherapie-extraits-naturels' AS slug, 'Extraits Naturels' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '5d8f4b9e-1231-4f1b-8da4-5f651d4d035a'::uuid AS category_uuid, 'phytotherapie-plantes-medicinales' AS slug, 'Plantes Médicinales' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '5c197033-d771-45b8-b9d4-b07c01de72f0'::uuid AS category_uuid, 'tisanes-therapeutiques' AS slug, 'Tisanes Thérapeutiques' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '7000eb2f-d507-4c1c-b133-6761b36bc9b9'::uuid AS category_uuid, 'gelules-naturelles' AS slug, 'Gélules Naturelles' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '56805f22-3a10-4691-a51c-80f18c2a478e'::uuid AS category_uuid, 'poudres-plantes' AS slug, 'Poudres de Plantes' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '865a7ed0-fd0e-4486-aa55-79ba4395f409'::uuid AS category_uuid, 'macerats' AS slug, 'Macérats' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '4d12b11c-1559-4b4d-b95f-bce678806620'::uuid AS category_uuid, 'aromatherapie-diffuseurs' AS slug, 'Diffuseurs' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '67b4af8c-56d8-4f0f-bbd6-ba9e0230c6ef'::uuid AS category_uuid, 'huiles-essentielles-pures' AS slug, 'Huiles Essentielles Pures' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '2e6860c1-2af3-4b3f-8300-ad786c8e5171'::uuid AS category_uuid, 'melanges-therapeutiques' AS slug, 'Mélanges Thérapeutiques' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'b5749bd8-6b20-408a-b736-807fa56e72ff'::uuid AS category_uuid, 'brumes-aromatiques' AS slug, 'Brumes Aromatiques' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '8f0d5e13-17bb-4042-adaa-0d82582f4925'::uuid AS category_uuid, 'synergies-huiles' AS slug, 'Synergies d' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '65b6e5e9-da28-4a97-9b5e-f21bed5cef03'::uuid AS category_uuid, 'roll-on-bien-etre' AS slug, 'Roll-on Bien-être' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'ebb16d43-40d6-4fc8-b930-7cab9f54248e'::uuid AS category_uuid, 'produits-dietetiques-proteines' AS slug, 'Protéines' AS name, bb633ae9-4f16-47c6-ab79-fdb1e35a7f9b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '06d422fb-a109-4a1d-895f-4f49e71617ec'::uuid AS category_uuid, 'produits-dietetiques-gainers' AS slug, 'Gainers' AS name, bb633ae9-4f16-47c6-ab79-fdb1e35a7f9b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '8aab3b14-42c4-4fe5-b880-b23177426576'::uuid AS category_uuid, 'bruleurs-graisse' AS slug, 'Brûleurs de Graisse' AS name, bb633ae9-4f16-47c6-ab79-fdb1e35a7f9b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'c92072e5-ced4-475a-8ba8-fc99dc8d20ee'::uuid AS category_uuid, 'substituts-repas' AS slug, 'Substituts de Repas' AS name, bb633ae9-4f16-47c6-ab79-fdb1e35a7f9b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '83eaae8c-5181-4651-beb4-02621076f229'::uuid AS category_uuid, 'produits-dietetiques-produits-detox' AS slug, 'Produits Détox' AS name, bb633ae9-4f16-47c6-ab79-fdb1e35a7f9b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'aa8b538a-0057-48a3-95bc-9251851dd9f5'::uuid AS category_uuid, 'produits-dietetiques-boissons-energetiques' AS slug, 'Boissons Énergétiques' AS name, bb633ae9-4f16-47c6-ab79-fdb1e35a7f9b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'fa837a9b-0975-48a2-b43d-520f8ea6560b'::uuid AS category_uuid, 'fibres-nutritionnelles' AS slug, 'Fibres Nutritionnelles' AS name, bb633ae9-4f16-47c6-ab79-fdb1e35a7f9b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '6ba771c1-fae9-443a-bfa2-d280c7d8b40c'::uuid AS category_uuid, 'super-aliments' AS slug, 'Super-aliments' AS name, bb633ae9-4f16-47c6-ab79-fdb1e35a7f9b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '0c202b15-a430-4da7-b197-67d0fabd34b2'::uuid AS category_uuid, 'gels-hydroalcooliques' AS slug, 'Gels Hydroalcooliques' AS name, cc1b97d2-951e-4c20-8ec9-2254a3306056::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '894b835a-200b-4d2e-90a8-e24db829cc5d'::uuid AS category_uuid, 'sprays-desinfectants' AS slug, 'Sprays Désinfectants' AS name, cc1b97d2-951e-4c20-8ec9-2254a3306056::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'f30b298e-4825-4fc0-981b-8fc2c00d2244'::uuid AS category_uuid, 'lingettes-virucides' AS slug, 'Lingettes Virucides' AS name, cc1b97d2-951e-4c20-8ec9-2254a3306056::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'bb90a2cc-1057-414b-9088-d933296ec907'::uuid AS category_uuid, 'solutions-antiseptiques-pro' AS slug, 'Solutions Antiseptiques Pro' AS name, cc1b97d2-951e-4c20-8ec9-2254a3306056::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '6288cbc3-a4f6-4762-80b3-a494626c342a'::uuid AS category_uuid, 'desinfectants-surfaces' AS slug, 'Désinfectants pour Surfaces' AS name, cc1b97d2-951e-4c20-8ec9-2254a3306056::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'fe75f5c7-ebcd-4d09-ba75-d7f1ae03e490'::uuid AS category_uuid, 'detergents-multi-usages' AS slug, 'Détergents Multi-usages' AS name, 6cb2b40c-ea92-4d1e-93aa-506107bc06d1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '0322a0f6-d2ca-40e4-ba1b-373a712d0fb8'::uuid AS category_uuid, 'degraissants' AS slug, 'Dégraissants' AS name, 6cb2b40c-ea92-4d1e-93aa-506107bc06d1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '59daff01-9662-4960-8ac7-80214133cea1'::uuid AS category_uuid, 'desodorisants' AS slug, 'Désodorisants' AS name, 6cb2b40c-ea92-4d1e-93aa-506107bc06d1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '9ec574bf-90c4-4b64-b79a-e0b6eb267f8e'::uuid AS category_uuid, 'nettoyants-sanitaires' AS slug, 'Nettoyants Sanitaires' AS name, 6cb2b40c-ea92-4d1e-93aa-506107bc06d1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '320f58f7-7f00-43cd-b9e9-559b39b35383'::uuid AS category_uuid, 'nettoyants-vitres' AS slug, 'Nettoyants Vitres' AS name, 6cb2b40c-ea92-4d1e-93aa-506107bc06d1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'ed573ba9-9ab0-4de0-a984-a0413e51e945'::uuid AS category_uuid, 'anticalcaire' AS slug, 'Anticalcaire' AS name, 6cb2b40c-ea92-4d1e-93aa-506107bc06d1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '3b472303-3d8b-4291-aab2-336eb1c22ee5'::uuid AS category_uuid, 'decapants' AS slug, 'Décapants' AS name, fd4c0464-d91d-44b7-aa80-0dabe418e1d6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'c3db32ac-daa4-46e9-b4d1-328904f99e21'::uuid AS category_uuid, 'solvants-professionnels' AS slug, 'Solvants Professionnels' AS name, fd4c0464-d91d-44b7-aa80-0dabe418e1d6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '30c68f7e-edfa-439e-9256-24dc7b91afc5'::uuid AS category_uuid, 'agents-degraissants-puissants' AS slug, 'Agents Dégraissants Puissants' AS name, fd4c0464-d91d-44b7-aa80-0dabe418e1d6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'f67a22ee-0f09-4dc1-93a8-1a6300d76715'::uuid AS category_uuid, 'nettoyants-machines' AS slug, 'Nettoyants pour Machines' AS name, fd4c0464-d91d-44b7-aa80-0dabe418e1d6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'd7828221-fa0b-4ecc-b0ba-b87382a29f68'::uuid AS category_uuid, 'detartrants-industriels' AS slug, 'Détartrants Industriels' AS name, fd4c0464-d91d-44b7-aa80-0dabe418e1d6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '1532e575-9343-469e-87ad-9ac45a160e55'::uuid AS category_uuid, 'peintures-chimiques' AS slug, 'Peintures Chimiques' AS name, ae6d704b-4d06-4472-86f3-6abf0b74d00b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '1685a965-25f0-4f44-988f-77ec5beffd39'::uuid AS category_uuid, 'resines' AS slug, 'Résines' AS name, ae6d704b-4d06-4472-86f3-6abf0b74d00b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '6a6e158b-7eb9-470d-8c65-7d8fe8e91c4b'::uuid AS category_uuid, 'diluants' AS slug, 'Diluants' AS name, ae6d704b-4d06-4472-86f3-6abf0b74d00b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '99bce709-5c31-43b0-828b-569d2a93f947'::uuid AS category_uuid, 'acetone' AS slug, 'Acétone' AS name, ae6d704b-4d06-4472-86f3-6abf0b74d00b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '25e4a7f9-25fd-4822-97ea-fef59e123d69'::uuid AS category_uuid, 'white-spirit' AS slug, 'White-spirit' AS name, ae6d704b-4d06-4472-86f3-6abf0b74d00b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'be4e36ad-1ffc-44a8-88cc-dc275216bfe2'::uuid AS category_uuid, 'vernis-techniques' AS slug, 'Vernis Techniques' AS name, ae6d704b-4d06-4472-86f3-6abf0b74d00b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'dac70437-47ba-444e-88fd-77685a35c09d'::uuid AS category_uuid, 'durcisseurs' AS slug, 'Durcisseurs' AS name, ae6d704b-4d06-4472-86f3-6abf0b74d00b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'd29eb01c-c9c6-476e-8fba-09ab10e881db'::uuid AS category_uuid, 'solvants-specialises' AS slug, 'Solvants Spécialisés' AS name, ae6d704b-4d06-4472-86f3-6abf0b74d00b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '4429b300-3e0c-43ca-9f7a-f6a0d1cba90d'::uuid AS category_uuid, 'chlore' AS slug, 'Chlore' AS name, 929612c0-64b7-4ba7-b95e-0872a6871553::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '870298bf-7838-4b94-96a5-4ec1f6cc18a7'::uuid AS category_uuid, 'ph-plus' AS slug, 'pH+' AS name, 929612c0-64b7-4ba7-b95e-0872a6871553::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '9bbfce49-9dc7-4e76-a66c-71c863b1402f'::uuid AS category_uuid, 'ph-moins' AS slug, 'pH-' AS name, 929612c0-64b7-4ba7-b95e-0872a6871553::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '90626e9a-1bab-4038-a4a8-a613f3ab1b3e'::uuid AS category_uuid, 'floculants' AS slug, 'Floculants' AS name, 929612c0-64b7-4ba7-b95e-0872a6871553::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'dc3080c9-d5ae-4f60-bcc7-2a1c1fb80beb'::uuid AS category_uuid, 'algicides' AS slug, 'Algicides' AS name, 929612c0-64b7-4ba7-b95e-0872a6871553::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'f8d6a47a-25f3-4278-8820-893b4b4509e7'::uuid AS category_uuid, 'produits-piscine-stabilisateurs' AS slug, 'Stabilisateurs' AS name, 929612c0-64b7-4ba7-b95e-0872a6871553::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'a16634ea-ca56-4838-b47c-e76708e488ba'::uuid AS category_uuid, 'kits-analyse-eau' AS slug, 'Kits Analyse Eau' AS name, 929612c0-64b7-4ba7-b95e-0872a6871553::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'e1d90cba-1f53-408e-978f-f229e69fbca8'::uuid AS category_uuid, 'clarifiants' AS slug, 'Clarifiants' AS name, 929612c0-64b7-4ba7-b95e-0872a6871553::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'eb95e84b-e59c-4d66-9b29-fa7d3cd94414'::uuid AS category_uuid, 'produits-hivernage' AS slug, 'Produits Hivernage' AS name, 929612c0-64b7-4ba7-b95e-0872a6871553::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '78232570-8067-4f70-924b-6431c3d28adf'::uuid AS category_uuid, 'engrais-npk' AS slug, 'Engrais NPK' AS name, 0a8f5fe4-76e1-4a26-89e5-a5b3df21335f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '7c40ca41-fd81-429c-a69e-05eeb0c39665'::uuid AS category_uuid, 'pesticides' AS slug, 'Pesticides' AS name, 0a8f5fe4-76e1-4a26-89e5-a5b3df21335f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'b6270ce3-4e59-46f2-8b27-fdfca5fc8d34'::uuid AS category_uuid, 'produits-agricoles-chimiques-herbicides' AS slug, 'Herbicides' AS name, 0a8f5fe4-76e1-4a26-89e5-a5b3df21335f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '3d504e45-7581-455a-9158-8cc739a13ba2'::uuid AS category_uuid, 'produits-agricoles-chimiques-fongicides' AS slug, 'Fongicides' AS name, 0a8f5fe4-76e1-4a26-89e5-a5b3df21335f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '3b611f0d-2a6f-4608-b195-36031db7feb1'::uuid AS category_uuid, 'stimulateurs-croissance' AS slug, 'Stimulateurs de Croissance' AS name, 0a8f5fe4-76e1-4a26-89e5-a5b3df21335f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'c553ac22-598d-488d-bf80-9657fa4939d3'::uuid AS category_uuid, 'regulateurs' AS slug, 'Régulateurs' AS name, 0a8f5fe4-76e1-4a26-89e5-a5b3df21335f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '777869ad-7470-43e3-8856-1175d56b0880'::uuid AS category_uuid, 'adjuvants-agricoles' AS slug, 'Adjuvants Agricoles' AS name, 0a8f5fe4-76e1-4a26-89e5-a5b3df21335f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'ac63ada7-b170-465b-92c5-f9ddae960591'::uuid AS category_uuid, 'reactifs-chimiques' AS slug, 'Réactifs Chimiques' AS name, 73891b4a-2c50-4a73-b44c-f62e30e4399c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '448f31dc-f1f7-420c-b668-62ed1bed0272'::uuid AS category_uuid, 'solutions-tampons' AS slug, 'Solutions Tampons' AS name, 73891b4a-2c50-4a73-b44c-f62e30e4399c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '5b27e3eb-ffe7-479e-8ffc-92980e8c74eb'::uuid AS category_uuid, 'alcools' AS slug, 'Alcools' AS name, 73891b4a-2c50-4a73-b44c-f62e30e4399c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '345a85e5-50de-4e72-a327-8cff3bb09274'::uuid AS category_uuid, 'gels-specifiques' AS slug, 'Gels Spécifiques' AS name, 73891b4a-2c50-4a73-b44c-f62e30e4399c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '219e600b-97d6-4234-818f-78e909e07ee9'::uuid AS category_uuid, 'kits-analyse' AS slug, 'Kits d' AS name, 73891b4a-2c50-4a73-b44c-f62e30e4399c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '7dbc2ce7-3d5a-4b66-a083-9a431cb21431'::uuid AS category_uuid, 'acides' AS slug, 'Acides' AS name, 73891b4a-2c50-4a73-b44c-f62e30e4399c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '9a2d6519-dd45-4c6a-9a38-05d6ee970c58'::uuid AS category_uuid, 'bases' AS slug, 'Bases' AS name, 73891b4a-2c50-4a73-b44c-f62e30e4399c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),
  level = EXCLUDED.level,
  category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),
  updated_at = NOW();

-- Lot 33 terminé: 100 entrées
