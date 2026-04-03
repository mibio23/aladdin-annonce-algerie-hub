-- ============================================================
-- CHUNK 14/49 — 100 catégories
-- Total: 4836 catégories
-- Exécuter dans l'ordre dans Supabase SQL Editor
-- ============================================================

INSERT INTO public.categories
  (category_uuid, slug, name, parent_id, level, is_active, created_at, updated_at)
VALUES
  SELECT '64007e42-b916-4add-9daf-a3a984996f8e'::uuid AS category_uuid, 'bottes-bottines' AS slug, 'Bottes & bottines' AS name, 6587af2d-7cf3-44dd-a084-0b737da9934f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '89dae539-17dd-4484-83ee-2caca464762b'::uuid AS category_uuid, 'chaussures-homme-femme-escarpins' AS slug, 'Escarpins' AS name, 6587af2d-7cf3-44dd-a084-0b737da9934f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '3c73ef0a-faeb-4395-b626-5f9a57f09ede'::uuid AS category_uuid, 'chaussures-homme-femme-ballerines' AS slug, 'Ballerines' AS name, 6587af2d-7cf3-44dd-a084-0b737da9934f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'ae8cdac4-5036-41bd-b278-39d64c8cf558'::uuid AS category_uuid, 'chaussures-de-sport' AS slug, 'Chaussures de sport' AS name, 6587af2d-7cf3-44dd-a084-0b737da9934f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '45406747-96c4-469d-ba44-1c552c88a22a'::uuid AS category_uuid, 'chaussures-de-travail-securite' AS slug, 'Chaussures de travail & sécurité' AS name, 6587af2d-7cf3-44dd-a084-0b737da9934f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '3139d610-0939-4351-bdbd-846da82a12f0'::uuid AS category_uuid, 'chaussures-orthopediques-femme' AS slug, 'Chaussures orthopédiques femme' AS name, 6587af2d-7cf3-44dd-a084-0b737da9934f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'cda4ce61-8add-40fe-bb75-fae1eb5ba844'::uuid AS category_uuid, 'vetements-ete' AS slug, 'Vêtements été' AS name, cec618f9-5878-4389-be37-e1753531b57b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'd7fa9384-6e14-4708-b129-abff1bcb8434'::uuid AS category_uuid, 'vetements-ete-shorts' AS slug, 'Shorts' AS name, cda4ce61-8add-40fe-bb75-fae1eb5ba844::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '1aa689bb-bf3b-4380-8244-ef0a398053a6'::uuid AS category_uuid, 'vetements-ete-debardeurs' AS slug, 'Débardeurs' AS name, cda4ce61-8add-40fe-bb75-fae1eb5ba844::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '6c56f8cd-8960-4021-b86c-105fcc9372de'::uuid AS category_uuid, 'robes-legeres' AS slug, 'Robes légères' AS name, cda4ce61-8add-40fe-bb75-fae1eb5ba844::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'd73515e5-6bef-40f1-8af8-23806250f823'::uuid AS category_uuid, 'maillots-de-bain' AS slug, 'Maillots de bain' AS name, cda4ce61-8add-40fe-bb75-fae1eb5ba844::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'c9c75903-2040-464a-9745-a17f6b89bf3b'::uuid AS category_uuid, 'pareos' AS slug, 'Paréos' AS name, cda4ce61-8add-40fe-bb75-fae1eb5ba844::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'da5a611b-e988-4f33-8213-01c7299c0a9d'::uuid AS category_uuid, 'vetements-hiver' AS slug, 'Vêtements hiver' AS name, cec618f9-5878-4389-be37-e1753531b57b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '102b9a7a-a7e6-4a94-a56b-24c043c5e30d'::uuid AS category_uuid, 'vetements-hiver-doudounes' AS slug, 'Doudounes' AS name, da5a611b-e988-4f33-8213-01c7299c0a9d::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '2ca07304-e250-4881-b293-58a922dd7a1f'::uuid AS category_uuid, 'parkas' AS slug, 'Parkas' AS name, da5a611b-e988-4f33-8213-01c7299c0a9d::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'b9993e04-6dfd-4ee2-bca0-86ef2b7e5b27'::uuid AS category_uuid, 'manteaux-laine' AS slug, 'Manteaux laine' AS name, da5a611b-e988-4f33-8213-01c7299c0a9d::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'dbef8fff-422a-4682-bb5a-f275f975bbca'::uuid AS category_uuid, 'pulls-epais' AS slug, 'Pulls épais' AS name, da5a611b-e988-4f33-8213-01c7299c0a9d::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'ebcd1f8f-ff54-4a9b-8076-c05f27bc8723'::uuid AS category_uuid, 'vetements-hiver-gants' AS slug, 'Gants' AS name, da5a611b-e988-4f33-8213-01c7299c0a9d::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '888e7876-92ce-4e9f-8c54-164af74d0011'::uuid AS category_uuid, 'bonnets' AS slug, 'Bonnets' AS name, da5a611b-e988-4f33-8213-01c7299c0a9d::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '83dd47e3-3c5c-4827-b570-b0ffbe04ec38'::uuid AS category_uuid, 'pluie-exterieur' AS slug, 'Pluie & extérieur' AS name, cec618f9-5878-4389-be37-e1753531b57b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '40eb050b-91d9-4e48-aae0-a981ee32c891'::uuid AS category_uuid, 'impermeables' AS slug, 'Imperméables' AS name, 83dd47e3-3c5c-4827-b570-b0ffbe04ec38::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '4ac23c5f-c563-4340-a0c0-e748962bb864'::uuid AS category_uuid, 'coupe-vent' AS slug, 'Coupe‑vent' AS name, 83dd47e3-3c5c-4827-b570-b0ffbe04ec38::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'f0c33a3a-0dea-4cfc-a721-23ad54060ed6'::uuid AS category_uuid, 'ponchos' AS slug, 'Ponchos' AS name, 83dd47e3-3c5c-4827-b570-b0ffbe04ec38::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '230339cc-e4ac-4dc5-818a-aee9a5e8de16'::uuid AS category_uuid, 'bottes-pluie' AS slug, 'Bottes de pluie' AS name, 83dd47e3-3c5c-4827-b570-b0ffbe04ec38::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '74ab75e5-a74f-4848-bfc1-2914e9344203'::uuid AS category_uuid, 'bebe-puericulture' AS slug, 'Bébé & Puériculture' AS name, NULL::uuid AS parent_id, 1 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'da0271c1-e452-4766-9ba0-620e13aea249'::uuid AS category_uuid, 'vetements-bebe' AS slug, 'Vêtements bébé' AS name, 74ab75e5-a74f-4848-bfc1-2914e9344203::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '058247b5-fd96-4487-9bd0-59b00972bc2c'::uuid AS category_uuid, 'chaussures-bebe' AS slug, 'Chaussures bébé' AS name, 74ab75e5-a74f-4848-bfc1-2914e9344203::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'a28729be-256b-42fa-a700-e45fa996e2a6'::uuid AS category_uuid, 'poussettes-landaus' AS slug, 'Poussettes & landaus' AS name, 74ab75e5-a74f-4848-bfc1-2914e9344203::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '4fc4f5f5-7ad4-4978-b6d2-21654ab8bd02'::uuid AS category_uuid, 'sieges-auto-bebe' AS slug, 'Sièges auto bébé' AS name, 74ab75e5-a74f-4848-bfc1-2914e9344203::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'e5aa0a1b-3007-497a-9d27-f14fa743480d'::uuid AS category_uuid, 'lits-berceaux-bebe' AS slug, 'Lits & berceaux' AS name, 74ab75e5-a74f-4848-bfc1-2914e9344203::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '2c568fe5-3ddd-49d5-b386-3472fab48e73'::uuid AS category_uuid, 'chaises-hautes-repas' AS slug, 'Chaises hautes & repas' AS name, 74ab75e5-a74f-4848-bfc1-2914e9344203::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '6a3241fe-6eb4-4033-b0e1-2ac011f4c14d'::uuid AS category_uuid, 'allaitement-biberons' AS slug, 'Allaitement & biberons' AS name, 74ab75e5-a74f-4848-bfc1-2914e9344203::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '9979a688-cab4-4a55-bd7e-ab526dfd0691'::uuid AS category_uuid, 'soins-hygiene-bebe' AS slug, 'Soins & hygiène' AS name, 74ab75e5-a74f-4848-bfc1-2914e9344203::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'd9847ceb-3827-4d2d-9b30-57dc90567ecd'::uuid AS category_uuid, 'couches-toilette' AS slug, 'Couches & change' AS name, 74ab75e5-a74f-4848-bfc1-2914e9344203::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '759ed54a-8e1e-4aca-a7f0-dcd23aead3d6'::uuid AS category_uuid, 'jouets-bebe-eveil' AS slug, 'Jouets & éveil' AS name, 74ab75e5-a74f-4848-bfc1-2914e9344203::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '0e07f949-50f1-46c4-8eb4-604e439c2ec2'::uuid AS category_uuid, 'securite-bebe' AS slug, 'Sécurité bébé' AS name, 74ab75e5-a74f-4848-bfc1-2914e9344203::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '76d054c3-b5a6-408a-998c-bf6773b6c263'::uuid AS category_uuid, 'chambre-bebe-deco' AS slug, 'Chambre bébé & déco' AS name, 74ab75e5-a74f-4848-bfc1-2914e9344203::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'fbfd0e8b-986a-4e53-a889-8bcdd6a35bf1'::uuid AS category_uuid, 'porte-bebes-echarpes' AS slug, 'Porte-bébés & écharpes' AS name, 74ab75e5-a74f-4848-bfc1-2914e9344203::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '6495c5d0-6ee3-4e9c-ae31-6415f4e9e393'::uuid AS category_uuid, 'sacs-a-langer' AS slug, 'Sacs à langer' AS name, 74ab75e5-a74f-4848-bfc1-2914e9344203::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '7abad20e-a603-4ae4-8ba6-e54d6fbfde26'::uuid AS category_uuid, 'bodies-pyjamas' AS slug, 'Bodies & pyjamas' AS name, da0271c1-e452-4766-9ba0-620e13aea249::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '95c3cd95-f8c5-441a-b8a5-a09a73de0b47'::uuid AS category_uuid, 'ensembles-bebe' AS slug, 'Ensembles' AS name, da0271c1-e452-4766-9ba0-620e13aea249::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '77cd58d3-1864-4cd9-9891-1523dfbc6164'::uuid AS category_uuid, 'grenouilleres' AS slug, 'Grenouillères' AS name, da0271c1-e452-4766-9ba0-620e13aea249::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'fb67edcb-0bcf-4e12-b8c4-399f3fd66f96'::uuid AS category_uuid, 'gigoteuses-turbulettes' AS slug, 'Gigoteuses & turbulettes' AS name, da0271c1-e452-4766-9ba0-620e13aea249::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'c130d248-6573-4554-9d12-cb19a8171a8d'::uuid AS category_uuid, 'manteaux-combinaisons' AS slug, 'Manteaux & combinaisons' AS name, da0271c1-e452-4766-9ba0-620e13aea249::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '8038ff3e-3c7e-4fe5-9692-6ee9acbc506c'::uuid AS category_uuid, 'chaussons-naissance' AS slug, 'Chaussons naissance' AS name, 058247b5-fd96-4487-9bd0-59b00972bc2c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '9cde0dd7-c1d2-4f75-a4a9-d2334b7455e8'::uuid AS category_uuid, 'sandales-bebe' AS slug, 'Sandales bébé' AS name, 058247b5-fd96-4487-9bd0-59b00972bc2c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '858e4133-7a9a-4a60-ac1b-d50fc49ccbfd'::uuid AS category_uuid, 'baskets-bebe' AS slug, 'Baskets bébé' AS name, 058247b5-fd96-4487-9bd0-59b00972bc2c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '181e610f-365d-4671-97b2-00c1ea6a2552'::uuid AS category_uuid, 'bottines-bebe' AS slug, 'Bottines bébé' AS name, 058247b5-fd96-4487-9bd0-59b00972bc2c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '780486a7-b6d8-477d-8265-e535d937fdbe'::uuid AS category_uuid, 'poussettes-canne' AS slug, 'Poussettes canne' AS name, a28729be-256b-42fa-a700-e45fa996e2a6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '33861f38-37c4-480c-8679-f700d2a506cc'::uuid AS category_uuid, 'poussettes-3-roues' AS slug, 'Poussettes 3 roues' AS name, a28729be-256b-42fa-a700-e45fa996e2a6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '69fbec73-3269-4510-9275-55e9f342bf02'::uuid AS category_uuid, 'landeaux' AS slug, 'Landeaux' AS name, a28729be-256b-42fa-a700-e45fa996e2a6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '99de408f-ca09-4200-adaa-584edee3b5f4'::uuid AS category_uuid, 'travel-system' AS slug, 'Travel system' AS name, a28729be-256b-42fa-a700-e45fa996e2a6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '882ecd14-2797-43cd-989a-0eacee7738ef'::uuid AS category_uuid, 'accessoires-poussette' AS slug, 'Accessoires poussette' AS name, a28729be-256b-42fa-a700-e45fa996e2a6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '36f32cc2-70f3-430e-a6a3-1ae48551ca82'::uuid AS category_uuid, 'marques-poussettes' AS slug, 'Marques poussettes' AS name, a28729be-256b-42fa-a700-e45fa996e2a6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '8c3b31f1-dc67-4e5e-8b9b-fffee6899ff7'::uuid AS category_uuid, 'bugaboo' AS slug, 'Bugaboo' AS name, 36f32cc2-70f3-430e-a6a3-1ae48551ca82::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '227ccc84-16c0-4d42-9b3c-bb6bbc98ade9'::uuid AS category_uuid, 'marques-poussettes-cybex' AS slug, 'Cybex' AS name, 36f32cc2-70f3-430e-a6a3-1ae48551ca82::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '50f89806-3644-4b46-8b9f-ca78f9fbe642'::uuid AS category_uuid, 'marques-poussettes-maxi-cosi' AS slug, 'Maxi-Cosi' AS name, 36f32cc2-70f3-430e-a6a3-1ae48551ca82::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'd1442e03-b895-48ca-a95d-7fe13e83dda6'::uuid AS category_uuid, 'marques-poussettes-chicco' AS slug, 'Chicco' AS name, 36f32cc2-70f3-430e-a6a3-1ae48551ca82::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '977fe56b-e526-4f7c-9227-f975d71f085b'::uuid AS category_uuid, 'marques-poussettes-stokke' AS slug, 'Stokke' AS name, 36f32cc2-70f3-430e-a6a3-1ae48551ca82::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'fff5527a-3272-4f14-b322-5a33b51626e7'::uuid AS category_uuid, 'marques-poussettes-joie' AS slug, 'Joie' AS name, 36f32cc2-70f3-430e-a6a3-1ae48551ca82::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '06d204dc-c494-4768-8c74-4b6b77880093'::uuid AS category_uuid, 'marques-poussettes-peg-perego' AS slug, 'Peg-Perego' AS name, 36f32cc2-70f3-430e-a6a3-1ae48551ca82::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'a0e5a153-d61a-4a6c-a597-cef5fa34b8dd'::uuid AS category_uuid, 'marques-poussettes-nuna' AS slug, 'Nuna' AS name, 36f32cc2-70f3-430e-a6a3-1ae48551ca82::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '18e63609-5fa2-4b51-9e67-06189f2a1c51'::uuid AS category_uuid, 'graco' AS slug, 'Graco' AS name, 36f32cc2-70f3-430e-a6a3-1ae48551ca82::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'c6c1285d-35af-4039-bce8-04800b482da0'::uuid AS category_uuid, 'marques-poussettes-britax' AS slug, 'Britax' AS name, 36f32cc2-70f3-430e-a6a3-1ae48551ca82::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'e2e04adc-9fea-4609-b0a7-5a9d566c5165'::uuid AS category_uuid, 'cosy-groupe-0' AS slug, 'Cosy groupe 0' AS name, 4fc4f5f5-7ad4-4978-b6d2-21654ab8bd02::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'e3a96ed1-368a-4289-ba64-0a2d478d1a99'::uuid AS category_uuid, 'siege-auto-groupe-0-1' AS slug, 'Siège auto groupe 0/1' AS name, 4fc4f5f5-7ad4-4978-b6d2-21654ab8bd02::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'f69ee804-46da-41c3-bc58-e7edbc771658'::uuid AS category_uuid, 'siege-auto-groupe-1-2-3' AS slug, 'Siège auto groupe 1/2/3' AS name, 4fc4f5f5-7ad4-4978-b6d2-21654ab8bd02::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '464f366a-d805-4b9b-934f-dd74847bc9cd'::uuid AS category_uuid, 'bases-isofix' AS slug, 'Bases ISOFIX' AS name, 4fc4f5f5-7ad4-4978-b6d2-21654ab8bd02::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '6fc7c2bf-a885-43b7-80c0-5ebc95bf3d94'::uuid AS category_uuid, 'marques-sieges-auto' AS slug, 'Marques sièges auto' AS name, 4fc4f5f5-7ad4-4978-b6d2-21654ab8bd02::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'e2b09c1a-6355-4b9d-9a52-bb286888ddb6'::uuid AS category_uuid, 'marques-sieges-auto-maxi-cosi' AS slug, 'Maxi-Cosi' AS name, 6fc7c2bf-a885-43b7-80c0-5ebc95bf3d94::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '6ae497ea-e874-41f3-bbaf-f56b492607bd'::uuid AS category_uuid, 'marques-sieges-auto-cybex' AS slug, 'Cybex' AS name, 6fc7c2bf-a885-43b7-80c0-5ebc95bf3d94::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'fc95a07a-2f45-4a10-8ad8-3fa31d5a0c07'::uuid AS category_uuid, 'marques-sieges-auto-britax' AS slug, 'Britax' AS name, 6fc7c2bf-a885-43b7-80c0-5ebc95bf3d94::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'b8730c78-2203-4cd0-bd4d-c557daf8dce9'::uuid AS category_uuid, 'marques-sieges-auto-nuna' AS slug, 'Nuna' AS name, 6fc7c2bf-a885-43b7-80c0-5ebc95bf3d94::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '354fb632-b358-4330-9815-c0b20d626ae1'::uuid AS category_uuid, 'marques-sieges-auto-joie' AS slug, 'Joie' AS name, 6fc7c2bf-a885-43b7-80c0-5ebc95bf3d94::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '024e2b85-3be8-4550-b82d-6cd988201d31'::uuid AS category_uuid, 'marques-sieges-auto-chicco' AS slug, 'Chicco' AS name, 6fc7c2bf-a885-43b7-80c0-5ebc95bf3d94::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'bae439da-262c-4ce9-b2aa-ccd17d0cd94d'::uuid AS category_uuid, 'berceaux' AS slug, 'Berceaux' AS name, e5aa0a1b-3007-497a-9d27-f14fa743480d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'e1a44e94-c5b3-412d-afd8-0c52fa91fb30'::uuid AS category_uuid, 'lits-parapluie' AS slug, 'Lits parapluie' AS name, e5aa0a1b-3007-497a-9d27-f14fa743480d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'd061d763-9fea-40a4-804a-fe4f7b349cd7'::uuid AS category_uuid, 'lits-evolutifs' AS slug, 'Lits évolutifs' AS name, e5aa0a1b-3007-497a-9d27-f14fa743480d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '42c731b7-1dca-490b-b6b8-7dc104e3d83b'::uuid AS category_uuid, 'matelas-bebe' AS slug, 'Matelas bébé' AS name, e5aa0a1b-3007-497a-9d27-f14fa743480d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '413959ca-9a27-407b-9a6d-efdff260eb31'::uuid AS category_uuid, 'marques-lits-berceaux' AS slug, 'Marques lits & berceaux' AS name, e5aa0a1b-3007-497a-9d27-f14fa743480d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'b0f7abc3-7f0d-4c01-8ecd-c98e7c5256f1'::uuid AS category_uuid, 'marques-lits-berceaux-stokke' AS slug, 'Stokke' AS name, 413959ca-9a27-407b-9a6d-efdff260eb31::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '66b31ca6-1a49-45cf-8868-6435840b859d'::uuid AS category_uuid, 'marques-lits-berceaux-ikea' AS slug, 'IKEA' AS name, 413959ca-9a27-407b-9a6d-efdff260eb31::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '984f7c05-8c7f-4806-85f5-c59bace179ee'::uuid AS category_uuid, 'marques-lits-berceaux-chicco' AS slug, 'Chicco' AS name, 413959ca-9a27-407b-9a6d-efdff260eb31::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'a7372439-0c54-4f11-b4d6-a722223952bb'::uuid AS category_uuid, 'marques-lits-berceaux-babybjorn' AS slug, 'BabyBjörn' AS name, 413959ca-9a27-407b-9a6d-efdff260eb31::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'e9f5fe7f-337c-4e74-aae7-0fa86bf4d6cd'::uuid AS category_uuid, 'chaises-hautes-repas-chaises-hautes' AS slug, 'Chaises hautes' AS name, 2c568fe5-3ddd-49d5-b386-3472fab48e73::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '0a0da5b5-9e00-49fb-9814-936c6e962dbc'::uuid AS category_uuid, 'rehausseurs' AS slug, 'Réhausseurs' AS name, 2c568fe5-3ddd-49d5-b386-3472fab48e73::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'b39e0e7f-c00a-46e3-a41e-238c8a2a1991'::uuid AS category_uuid, 'vaisselle-bebe' AS slug, 'Vaisselle bébé' AS name, 2c568fe5-3ddd-49d5-b386-3472fab48e73::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'e6730f35-30b5-43c9-906e-1c1d7aa5ba8d'::uuid AS category_uuid, 'bavoirs' AS slug, 'Bavoirs' AS name, 2c568fe5-3ddd-49d5-b386-3472fab48e73::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '833cdac6-32dc-4bf7-b056-8df0b538b438'::uuid AS category_uuid, 'marques-chaises-hautes' AS slug, 'Marques chaises hautes' AS name, 2c568fe5-3ddd-49d5-b386-3472fab48e73::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '9535678d-0298-4e25-925a-08813698cfbb'::uuid AS category_uuid, 'marques-chaises-hautes-stokke' AS slug, 'Stokke' AS name, 833cdac6-32dc-4bf7-b056-8df0b538b438::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '6904da13-976e-44f5-9273-a95b02a7d082'::uuid AS category_uuid, 'marques-chaises-hautes-peg-perego' AS slug, 'Peg-Perego' AS name, 833cdac6-32dc-4bf7-b056-8df0b538b438::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'e45bfb98-7746-478a-80ee-fce1cf4e631c'::uuid AS category_uuid, 'marques-chaises-hautes-joie' AS slug, 'Joie' AS name, 833cdac6-32dc-4bf7-b056-8df0b538b438::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '64b1be26-440d-456f-a1aa-db42ef15ca82'::uuid AS category_uuid, 'marques-chaises-hautes-ikea' AS slug, 'IKEA' AS name, 833cdac6-32dc-4bf7-b056-8df0b538b438::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '89a50262-5d62-4abd-93e0-3bfc37a9ce32'::uuid AS category_uuid, 'tire-lait' AS slug, 'Tire-lait' AS name, 6a3241fe-6eb4-4033-b0e1-2ac011f4c14d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '81c09c0e-ef26-48c9-87f9-da570b2bd381'::uuid AS category_uuid, 'coussin-allaitement' AS slug, 'Coussin d' AS name, 6a3241fe-6eb4-4033-b0e1-2ac011f4c14d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'd70ce180-9ba7-4123-b1ed-12fc9f5ce88a'::uuid AS category_uuid, 'biberons-tetines' AS slug, 'Biberons & tétines' AS name, 6a3241fe-6eb4-4033-b0e1-2ac011f4c14d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '66a31274-504b-4246-b06e-fb531d5aee60'::uuid AS category_uuid, 'chauffe-biberons' AS slug, 'Chauffe-biberons' AS name, 6a3241fe-6eb4-4033-b0e1-2ac011f4c14d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '48f77edb-c161-45a2-b09a-cefb5e2826c5'::uuid AS category_uuid, 'sterilisation' AS slug, 'Stérilisation' AS name, 6a3241fe-6eb4-4033-b0e1-2ac011f4c14d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '9afa56c8-7442-408f-9478-381946548530'::uuid AS category_uuid, 'marques-biberons' AS slug, 'Marques biberons' AS name, 6a3241fe-6eb4-4033-b0e1-2ac011f4c14d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'a218fb75-f6dd-4997-8f74-97faabd10955'::uuid AS category_uuid, 'marques-biberons-philips-avent' AS slug, 'Philips Avent' AS name, 9afa56c8-7442-408f-9478-381946548530::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),
  level = EXCLUDED.level,
  category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),
  updated_at = NOW();

-- Lot 14 terminé: 100 entrées
