-- ============================================================
-- CHUNK 31/49 — 100 catégories
-- Total: 4836 catégories
-- Exécuter dans l'ordre dans Supabase SQL Editor
-- ============================================================

INSERT INTO public.categories
  (category_uuid, slug, name, parent_id, level, is_active, created_at, updated_at)
VALUES
  SELECT '1429bf33-4cb1-4e6d-8909-97046c9c7680'::uuid AS category_uuid, 'engrais-organiques' AS slug, 'Engrais organiques' AS name, c9830006-ff5f-46d0-8761-a3db90dce692::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '668480c9-9cae-410b-9054-25b148d3ab58'::uuid AS category_uuid, 'compost' AS slug, 'Compost' AS name, c9830006-ff5f-46d0-8761-a3db90dce692::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '04290d28-4cbb-47d0-9663-52628d11b60d'::uuid AS category_uuid, 'fumiers' AS slug, 'Fumiers' AS name, c9830006-ff5f-46d0-8761-a3db90dce692::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '3c228664-36e0-40c5-9f57-435834258218'::uuid AS category_uuid, 'amendements-calcaires' AS slug, 'Amendements calcaires' AS name, c9830006-ff5f-46d0-8761-a3db90dce692::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '11957851-dd53-4d2c-8184-eda992587c32'::uuid AS category_uuid, 'stimulateurs-de-croissance' AS slug, 'Stimulateurs de croissance' AS name, c9830006-ff5f-46d0-8761-a3db90dce692::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '52025265-f018-428e-a320-309ba89364cb'::uuid AS category_uuid, 'terreaux' AS slug, 'Terreaux' AS name, c9830006-ff5f-46d0-8761-a3db90dce692::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'ddd55b60-80ec-4285-99a9-6914a5a3e8bb'::uuid AS category_uuid, 'substrats-agricoles' AS slug, 'Substrats agricoles' AS name, c9830006-ff5f-46d0-8761-a3db90dce692::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '7a736fcc-ec3b-4028-a6e1-c0d341a04d78'::uuid AS category_uuid, 'additifs-nutritifs' AS slug, 'Additifs nutritifs' AS name, c9830006-ff5f-46d0-8761-a3db90dce692::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'f6c308fe-c8b0-4664-89f6-044ef059cd90'::uuid AS category_uuid, 'insecticides-agricoles' AS slug, 'Insecticides agricoles' AS name, a423fa2f-39c5-43b8-ad99-c3b18626f7cd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'f3c70c1d-d37f-4c17-aa54-ce4c241bf6a0'::uuid AS category_uuid, 'produits-phytosanitaires-fongicides' AS slug, 'Fongicides' AS name, a423fa2f-39c5-43b8-ad99-c3b18626f7cd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '4209afa3-9036-42f1-8d5c-fd722a5455b6'::uuid AS category_uuid, 'produits-phytosanitaires-herbicides' AS slug, 'Herbicides' AS name, a423fa2f-39c5-43b8-ad99-c3b18626f7cd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '7ab88005-351c-4d39-b462-58abc638eed7'::uuid AS category_uuid, 'traitements-biologiques' AS slug, 'Traitements biologiques' AS name, a423fa2f-39c5-43b8-ad99-c3b18626f7cd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '555ed894-5bf7-4b8b-88a2-c593af6d1952'::uuid AS category_uuid, 'repulsifs-naturels' AS slug, 'Répulsifs naturels' AS name, a423fa2f-39c5-43b8-ad99-c3b18626f7cd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '36ff1810-da4c-44f8-acc5-4cd919392f06'::uuid AS category_uuid, 'pieges-anti-nuisibles' AS slug, 'Pièges anti-nuisibles' AS name, a423fa2f-39c5-43b8-ad99-c3b18626f7cd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'b131ff7e-e2e0-4b7e-809a-a1e2c4c5f89a'::uuid AS category_uuid, 'protections-pour-cultures' AS slug, 'Protections pour cultures' AS name, a423fa2f-39c5-43b8-ad99-c3b18626f7cd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '69cc89d8-5594-42ed-8079-360ae4aa6974'::uuid AS category_uuid, 'aliments-pour-betail' AS slug, 'Aliments pour bétail' AS name, 7e95cd69-74fa-44cb-aea1-f87fd9495598::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '07d49af9-dfdd-4da9-92d8-6f0b54ed7b4e'::uuid AS category_uuid, 'aliments-pour-volailles' AS slug, 'Aliments pour volailles' AS name, 7e95cd69-74fa-44cb-aea1-f87fd9495598::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '727e9979-6e0d-414c-83f5-2b5141daa655'::uuid AS category_uuid, 'aliments-pour-ovins-caprins' AS slug, 'Aliments pour ovins & caprins' AS name, 7e95cd69-74fa-44cb-aea1-f87fd9495598::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '60837f0e-e885-4cfc-b464-f26b37bd98de'::uuid AS category_uuid, 'complements-nutritionnels' AS slug, 'Compléments nutritionnels' AS name, 7e95cd69-74fa-44cb-aea1-f87fd9495598::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '187b3b1a-42a5-4aee-a41d-815ff45a38d1'::uuid AS category_uuid, 'elevage-soins-animaux-produits-veterinaires' AS slug, 'Produits vétérinaires' AS name, 7e95cd69-74fa-44cb-aea1-f87fd9495598::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '6bda6a5d-b04f-4685-b501-e42bc5fd218b'::uuid AS category_uuid, 'mangeoires' AS slug, 'Mangeoires' AS name, 7e95cd69-74fa-44cb-aea1-f87fd9495598::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '59dd90cd-82df-41c6-b995-783e5ca05f31'::uuid AS category_uuid, 'abreuvoirs' AS slug, 'Abreuvoirs' AS name, 7e95cd69-74fa-44cb-aea1-f87fd9495598::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '170fe849-15e4-46e7-8279-7b7b67b4c084'::uuid AS category_uuid, 'clotures-electriques' AS slug, 'Clôtures électriques' AS name, 7e95cd69-74fa-44cb-aea1-f87fd9495598::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '62200d42-5bf1-4b26-98cb-e2dce317abf2'::uuid AS category_uuid, 'parcs-cages' AS slug, 'Parcs & cages' AS name, 7e95cd69-74fa-44cb-aea1-f87fd9495598::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'e61e24b9-b11d-4270-ba59-6fbdb28e00d2'::uuid AS category_uuid, 'elevage-soins-animaux-couveuses' AS slug, 'Couveuses' AS name, 7e95cd69-74fa-44cb-aea1-f87fd9495598::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '827a9e60-9af0-49e7-b8d6-b34c81b10255'::uuid AS category_uuid, 'nichoirs' AS slug, 'Nichoirs' AS name, 7e95cd69-74fa-44cb-aea1-f87fd9495598::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'b0333cff-33a9-4790-90ec-c44ab8db45c8'::uuid AS category_uuid, 'equipements-de-traite' AS slug, 'Équipements de traite' AS name, 7e95cd69-74fa-44cb-aea1-f87fd9495598::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'b9ac9b7c-d104-4289-9bf0-436fcd054478'::uuid AS category_uuid, 'tondeuses-animales' AS slug, 'Tondeuses animales' AS name, 7e95cd69-74fa-44cb-aea1-f87fd9495598::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '810661dd-5819-4f36-8990-17afd48bb2de'::uuid AS category_uuid, 'machines-a-traire' AS slug, 'Machines à traire' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'e20b7fb5-d639-46f3-be74-10a94431ca71'::uuid AS category_uuid, 'tanks-a-lait' AS slug, 'Tanks à lait' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'aa3d3c37-55ce-430c-a0d3-b03b64b8fba5'::uuid AS category_uuid, 'broyeurs-a-grains' AS slug, 'Broyeurs à grains' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '95cd7b19-2cfa-40f4-bf93-3db50ead531a'::uuid AS category_uuid, 'distributeurs-automatiques-d-aliments' AS slug, 'Distributeurs automatiques d’aliments' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '3cda70b1-431c-429c-a605-8db8f1718857'::uuid AS category_uuid, 'enrubanneuses' AS slug, 'Enrubanneuses' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '32423a5a-7c4b-4752-8b48-6292ee48c85c'::uuid AS category_uuid, 'systemes-de-ventilation-elevage' AS slug, 'Systèmes de ventilation d’élevage' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '6768432c-cfc2-4b8e-b438-96cbf9b202ed'::uuid AS category_uuid, 'tapis-d-elevage' AS slug, 'Tapis d’élevage' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '432cf54a-588c-4ef0-b86b-b39cc0b5de0b'::uuid AS category_uuid, 'abris-metalliques' AS slug, 'Abris métalliques' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '12659df1-cc1b-4c54-870c-5d981ec3e0bd'::uuid AS category_uuid, 'cereales-ble-orge-mais' AS slug, 'Céréales (blé, orge, maïs)' AS name, df5b037e-dfc2-46d0-85db-73197ae00fe7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'a3fd26d8-b658-43f9-8cee-4ec5b6fa3e7d'::uuid AS category_uuid, 'produits-agricoles-bruts-legumes-frais' AS slug, 'Légumes frais' AS name, df5b037e-dfc2-46d0-85db-73197ae00fe7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '8c4ca8d3-365a-4871-9ee2-d265fc2a8d7d'::uuid AS category_uuid, 'fruits-de-saison' AS slug, 'Fruits de saison' AS name, df5b037e-dfc2-46d0-85db-73197ae00fe7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '7e5940dc-4a9c-4619-b59a-3f1ae9d41c31'::uuid AS category_uuid, 'produits-agricoles-bruts-herbes-aromatiques' AS slug, 'Herbes aromatiques' AS name, df5b037e-dfc2-46d0-85db-73197ae00fe7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '6b0b9366-2bd0-4a3f-abbe-a8ccd4cfafc4'::uuid AS category_uuid, 'produits-agricoles-bruts-plantes-medicinales' AS slug, 'Plantes médicinales' AS name, df5b037e-dfc2-46d0-85db-73197ae00fe7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '8495f21c-5e19-41dd-9eb1-135b87acf25c'::uuid AS category_uuid, 'fourrage' AS slug, 'Fourrage' AS name, df5b037e-dfc2-46d0-85db-73197ae00fe7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'c56a8a39-c86b-4f34-b6af-dd2534968598'::uuid AS category_uuid, 'foin' AS slug, 'Foin' AS name, df5b037e-dfc2-46d0-85db-73197ae00fe7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '0a1eb91e-dd3b-42b4-88a2-cfb1b6c0720c'::uuid AS category_uuid, 'luzerne' AS slug, 'Luzerne' AS name, df5b037e-dfc2-46d0-85db-73197ae00fe7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'e1ed08d3-a2b7-4b69-974a-2edbec57b211'::uuid AS category_uuid, 'paille' AS slug, 'Paille' AS name, df5b037e-dfc2-46d0-85db-73197ae00fe7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '96f904a5-6ba9-45d2-a71b-2f2bb07aee58'::uuid AS category_uuid, 'farine' AS slug, 'Farine' AS name, c66cb56b-517a-4dab-ada8-d5946ce7020a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'd160a525-d1e6-4d5b-aed1-4ae7c3259066'::uuid AS category_uuid, 'produits-agroalimentaires-transformes-couscous' AS slug, 'Couscous' AS name, c66cb56b-517a-4dab-ada8-d5946ce7020a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '43e20068-ac85-4739-a74b-6aa8991366a6'::uuid AS category_uuid, 'produits-agroalimentaires-transformes-semoule' AS slug, 'Semoule' AS name, c66cb56b-517a-4dab-ada8-d5946ce7020a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '28f9d27c-9169-48d2-b0a1-7a353368f1c7'::uuid AS category_uuid, 'huile-d-olive' AS slug, 'Huile d’olive' AS name, c66cb56b-517a-4dab-ada8-d5946ce7020a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '830e93c7-a77c-4396-9f14-e923e3830104'::uuid AS category_uuid, 'produits-agroalimentaires-transformes-huiles-vegetales' AS slug, 'Huiles végétales' AS name, c66cb56b-517a-4dab-ada8-d5946ce7020a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '0f8137bf-504a-46c7-8a6d-9855b5a19b4e'::uuid AS category_uuid, 'conserves' AS slug, 'Conserves' AS name, c66cb56b-517a-4dab-ada8-d5946ce7020a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '342cab36-ef35-44d7-b9f7-92c91b9e695e'::uuid AS category_uuid, 'produits-agroalimentaires-transformes-confitures' AS slug, 'Confitures' AS name, c66cb56b-517a-4dab-ada8-d5946ce7020a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '9d10d428-709f-4167-8d46-07effcfe32e6'::uuid AS category_uuid, 'produits-agroalimentaires-transformes-produits-laitiers' AS slug, 'Produits laitiers' AS name, c66cb56b-517a-4dab-ada8-d5946ce7020a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'd796cbc9-b468-4783-8eea-b8cd9bd1d0fd'::uuid AS category_uuid, 'fromages' AS slug, 'Fromages' AS name, c66cb56b-517a-4dab-ada8-d5946ce7020a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '1cc84dfa-e48a-484e-ab1c-d7d4478075d0'::uuid AS category_uuid, 'produits-agroalimentaires-transformes-miel' AS slug, 'Miel' AS name, c66cb56b-517a-4dab-ada8-d5946ce7020a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '3485ae5e-c7bb-4f45-ac4e-105b61293357'::uuid AS category_uuid, 'produits-agroalimentaires-transformes-dattes' AS slug, 'Dattes' AS name, c66cb56b-517a-4dab-ada8-d5946ce7020a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '43dbf18a-f536-45e6-95f7-1f76e84bef72'::uuid AS category_uuid, 'produits-secs' AS slug, 'Produits secs' AS name, c66cb56b-517a-4dab-ada8-d5946ce7020a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '7406137d-0f94-45f8-b05c-9c9f9f6190aa'::uuid AS category_uuid, 'legumineuses' AS slug, 'Légumineuses' AS name, c66cb56b-517a-4dab-ada8-d5946ce7020a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'ddc5d1b4-c98a-422a-9976-066277e3f1bc'::uuid AS category_uuid, 'moulins-agro' AS slug, 'Moulins' AS name, 0b2da3ee-a38b-4951-8f77-c78202c43cf4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '02a92354-bca6-448f-86ba-245d756996f2'::uuid AS category_uuid, 'concasseurs' AS slug, 'Concasseurs' AS name, 0b2da3ee-a38b-4951-8f77-c78202c43cf4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'ca8c5604-8299-46e0-869b-1bf080dca853'::uuid AS category_uuid, 'presses-a-huile' AS slug, 'Presses à huile' AS name, 0b2da3ee-a38b-4951-8f77-c78202c43cf4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '537bdac0-ca5c-45c4-b66b-debcf35c692e'::uuid AS category_uuid, 'petrins' AS slug, 'Pétrins' AS name, 0b2da3ee-a38b-4951-8f77-c78202c43cf4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'd890268a-63e0-444a-b869-5e6f5d53ee1f'::uuid AS category_uuid, 'machines-d-emballage' AS slug, 'Machines d’emballage' AS name, 0b2da3ee-a38b-4951-8f77-c78202c43cf4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'b26ecc1d-fd8a-47e5-9e06-6cef86784bec'::uuid AS category_uuid, 'pasteurisateurs' AS slug, 'Pasteurisateurs' AS name, 0b2da3ee-a38b-4951-8f77-c78202c43cf4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '7713f13d-7e36-4c86-892c-4d30919a8654'::uuid AS category_uuid, 'machines-de-transformation' AS slug, 'Machines de transformation alimentaire' AS name, 0b2da3ee-a38b-4951-8f77-c78202c43cf4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'f32f7c3e-6e96-414c-854f-50c4cfcbeecb'::uuid AS category_uuid, 'sterilisateurs' AS slug, 'Stérilisateurs' AS name, 0b2da3ee-a38b-4951-8f77-c78202c43cf4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'ed5a144b-0c99-4cb1-984b-e032b16e83a1'::uuid AS category_uuid, 'broyeurs-alimentaires' AS slug, 'Broyeurs alimentaires' AS name, 0b2da3ee-a38b-4951-8f77-c78202c43cf4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'f04ee7d2-51e9-4725-ac40-4f282c4e3262'::uuid AS category_uuid, 'serres-tunnel' AS slug, 'Serres tunnel' AS name, c710d6a3-8db5-4793-8139-c9b50b1f50a5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '1ac8015f-a0a1-4216-986e-cab22d76b219'::uuid AS category_uuid, 'serres-metalliques' AS slug, 'Serres métalliques' AS name, c710d6a3-8db5-4793-8139-c9b50b1f50a5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '3ce2da32-17c3-478d-b1c4-d2211fc3b940'::uuid AS category_uuid, 'baches-de-serre' AS slug, 'Bâches de serre' AS name, c710d6a3-8db5-4793-8139-c9b50b1f50a5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '5ced1e84-087e-4761-b187-9f01f26ca882'::uuid AS category_uuid, 'systemes-hydroponiques' AS slug, 'Systèmes hydroponiques' AS name, c710d6a3-8db5-4793-8139-c9b50b1f50a5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '7d344987-2ca7-4919-9d61-f0fc092659aa'::uuid AS category_uuid, 'systemes-aquaponiques' AS slug, 'Systèmes aquaponiques' AS name, c710d6a3-8db5-4793-8139-c9b50b1f50a5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'a08f7544-f4e0-47ed-a7ec-6067fdef2ede'::uuid AS category_uuid, 'lampes-horticoles' AS slug, 'Lampes horticoles' AS name, c710d6a3-8db5-4793-8139-c9b50b1f50a5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'e5dc4a7a-ae7c-43b8-b66a-86d33eadc701'::uuid AS category_uuid, 'tables-de-culture' AS slug, 'Tables de culture' AS name, c710d6a3-8db5-4793-8139-c9b50b1f50a5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '2a1eecb8-193d-45db-a6e5-07ac60984de7'::uuid AS category_uuid, 'capteurs-d-humidite' AS slug, 'Capteurs d’humidité' AS name, c710d6a3-8db5-4793-8139-c9b50b1f50a5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '743177fa-4425-47f7-94b1-f987a34cc0e2'::uuid AS category_uuid, 'clotures-metalliques' AS slug, 'Clôtures métalliques' AS name, 2faff291-ea16-4019-b758-8571bbe56a68::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '42f9dafc-1b60-41c9-b5d2-9952abd82112'::uuid AS category_uuid, 'grillages' AS slug, 'Grillages' AS name, 2faff291-ea16-4019-b758-8571bbe56a68::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '23f6200b-3dde-4a7e-97ee-6b6a9ab5906a'::uuid AS category_uuid, 'baches-agricoles' AS slug, 'Bâches agricoles' AS name, 2faff291-ea16-4019-b758-8571bbe56a68::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '01307df8-fb87-4c6d-b0af-c1b341638812'::uuid AS category_uuid, 'filets-d-ombrage' AS slug, 'Filets d’ombrage' AS name, 2faff291-ea16-4019-b758-8571bbe56a68::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '9a1d73b0-ac6b-4f29-94bb-2c8dd13af3e6'::uuid AS category_uuid, 'paillages' AS slug, 'Paillages' AS name, 2faff291-ea16-4019-b758-8571bbe56a68::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'efefd2a8-1d6c-4cb2-b54d-636ca9293c67'::uuid AS category_uuid, 'tuteurs' AS slug, 'Tuteurs' AS name, 2faff291-ea16-4019-b758-8571bbe56a68::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'a395fa88-dd59-4f84-bbea-710ff4c75e55'::uuid AS category_uuid, 'piquets' AS slug, 'Piquets' AS name, 2faff291-ea16-4019-b758-8571bbe56a68::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'e923f453-cbaf-453b-bc3e-86db756eaa72'::uuid AS category_uuid, 'abris-agricoles' AS slug, 'Abris agricoles' AS name, 2faff291-ea16-4019-b758-8571bbe56a68::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'a475866e-659f-44e9-8abf-2ad685ef9bc7'::uuid AS category_uuid, 'hangars-demontables' AS slug, 'Hangars démontables' AS name, 2faff291-ea16-4019-b758-8571bbe56a68::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'd7d3fd01-43eb-483c-a260-1bfea80f5103'::uuid AS category_uuid, 'sacs-de-stockage' AS slug, 'Sacs de stockage' AS name, b2e86950-4ef6-4e52-9cba-e29f30bf2d3d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '0cce328f-8003-4ff0-b1bd-1bbb349732e5'::uuid AS category_uuid, 'big-bags' AS slug, 'Big-bags' AS name, b2e86950-4ef6-4e52-9cba-e29f30bf2d3d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '6d4652a0-27f8-43ec-a882-0e1d9f10ccdb'::uuid AS category_uuid, 'caisses-de-recolte' AS slug, 'Caisses de récolte' AS name, b2e86950-4ef6-4e52-9cba-e29f30bf2d3d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '4e6909e5-7a46-4c25-b7a6-dfade45d8a78'::uuid AS category_uuid, 'palettes' AS slug, 'Palettes' AS name, b2e86950-4ef6-4e52-9cba-e29f30bf2d3d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '37b3bf12-9fa5-4ee7-ab34-5806f66c87b5'::uuid AS category_uuid, 'conteneurs' AS slug, 'Conteneurs' AS name, b2e86950-4ef6-4e52-9cba-e29f30bf2d3d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '2ae8292e-e2dc-4523-856d-248fa24e19c4'::uuid AS category_uuid, 'charrettes-agricoles' AS slug, 'Charrettes agricoles' AS name, b2e86950-4ef6-4e52-9cba-e29f30bf2d3d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '55e76122-dc85-4476-9382-e1e2a9f186b7'::uuid AS category_uuid, 'bennes-basculantes' AS slug, 'Bennes basculantes' AS name, b2e86950-4ef6-4e52-9cba-e29f30bf2d3d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '3120d612-e4dc-4a16-b50e-0d05581807b1'::uuid AS category_uuid, 'ruches' AS slug, 'Ruches' AS name, fd82b9d2-c134-4476-b432-a4f533ab86b3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'a7b86ae9-e5d1-48f1-bc43-b82785ad4ec5'::uuid AS category_uuid, 'cadres-de-ruche' AS slug, 'Cadres de ruche' AS name, fd82b9d2-c134-4476-b432-a4f533ab86b3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '8a3891d9-39c9-4101-bca1-82ef0466dfb8'::uuid AS category_uuid, 'cire-gaufree' AS slug, 'Cire gaufrée' AS name, fd82b9d2-c134-4476-b432-a4f533ab86b3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '36dc478e-33ef-409e-885d-3d51b455517f'::uuid AS category_uuid, 'enfumoirs' AS slug, 'Enfumoirs' AS name, fd82b9d2-c134-4476-b432-a4f533ab86b3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '044df1c7-930a-44f7-a966-91e26af80fdf'::uuid AS category_uuid, 'extracteurs-de-miel' AS slug, 'Extracteurs de miel' AS name, fd82b9d2-c134-4476-b432-a4f533ab86b3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '4107208f-982f-475e-a801-bce2cfa12697'::uuid AS category_uuid, 'equipements-apiculteurs' AS slug, 'Équipements pour apiculteurs' AS name, fd82b9d2-c134-4476-b432-a4f533ab86b3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'e82d3b03-ffc8-4bdc-9162-0a8e40beb183'::uuid AS category_uuid, 'pieges-a-essaims' AS slug, 'Pièges à essaims' AS name, fd82b9d2-c134-4476-b432-a4f533ab86b3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '981d267a-7070-44d5-8074-5c9dd3c87f69'::uuid AS category_uuid, 'desinfectants-agricoles' AS slug, 'Désinfectants agricoles' AS name, eabdb085-5c88-4887-a77b-748b754818c0::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'cebbbf4e-b935-4fd8-9ce0-31619cc33622'::uuid AS category_uuid, 'pulverisateurs-sanitaires' AS slug, 'Pulvérisateurs sanitaires' AS name, eabdb085-5c88-4887-a77b-748b754818c0::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),
  level = EXCLUDED.level,
  category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),
  updated_at = NOW();

-- Lot 31 terminé: 100 entrées
