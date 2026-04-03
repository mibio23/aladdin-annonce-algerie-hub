-- ============================================================
-- CHUNK 19/49 — 100 catégories
-- Total: 4836 catégories
-- Exécuter dans l'ordre dans Supabase SQL Editor
-- ============================================================

INSERT INTO public.categories
  (category_uuid, slug, name, parent_id, level, is_active, created_at, updated_at)
VALUES
  SELECT '21b15936-7d33-4600-bd2e-66cab151d181'::uuid AS category_uuid, 'sets-valises' AS slug, 'Sets de valises' AS name, 29e174af-b1c2-467d-8db4-93caa16da614::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '217fc54b-1803-4258-8eae-3ab42f1bd285'::uuid AS category_uuid, 'valises-enfants' AS slug, 'Valises enfants' AS name, 29e174af-b1c2-467d-8db4-93caa16da614::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '82f2e47e-abf9-4af5-a878-f480be01b67b'::uuid AS category_uuid, 'valises-connectees' AS slug, 'Valises connectées' AS name, 29e174af-b1c2-467d-8db4-93caa16da614::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '22c0f968-ca03-4d40-b984-8d2871047415'::uuid AS category_uuid, 'valises-professionnelles' AS slug, 'Valises professionnelles' AS name, 29e174af-b1c2-467d-8db4-93caa16da614::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'd86618a4-2364-4ae5-b7c7-2facd77090c4'::uuid AS category_uuid, 'bagages-certifies-iata' AS slug, 'Bagages certifiés IATA' AS name, 29e174af-b1c2-467d-8db4-93caa16da614::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '4e136f31-c1bc-41b5-8ffe-b532c75e875f'::uuid AS category_uuid, 'valises-securisees-tsa' AS slug, 'Valises sécurisées TSA' AS name, 29e174af-b1c2-467d-8db4-93caa16da614::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'b0585625-0c4d-4e40-811b-4440ae2dd409'::uuid AS category_uuid, 'portefeuilles-zippe' AS slug, 'Portefeuilles zippé' AS name, a32b5660-3837-45d5-bb4d-af910a29ea8a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '8ba9f86d-617b-4f08-aa45-8883623bf6a7'::uuid AS category_uuid, 'portefeuilles-pliable' AS slug, 'Portefeuilles pliable' AS name, a32b5660-3837-45d5-bb4d-af910a29ea8a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '3df34e3a-5e35-4ae2-91d2-9d8d27691e3c'::uuid AS category_uuid, 'portefeuilles-compact' AS slug, 'Portefeuilles compact' AS name, a32b5660-3837-45d5-bb4d-af910a29ea8a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '78dda41a-92c6-4182-9c07-c7273101248c'::uuid AS category_uuid, 'porte-cartes-metal' AS slug, 'Porte-cartes métal' AS name, a32b5660-3837-45d5-bb4d-af910a29ea8a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '3cb87cbe-6a5c-400c-a208-3c076bbc3568'::uuid AS category_uuid, 'porte-cartes-cuir' AS slug, 'Porte-cartes cuir' AS name, a32b5660-3837-45d5-bb4d-af910a29ea8a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'b16c499e-e53e-4024-abff-849011d17155'::uuid AS category_uuid, 'porte-cartes-rfid' AS slug, 'Porte-cartes RFID' AS name, a32b5660-3837-45d5-bb4d-af910a29ea8a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '9bddf9f3-0829-4d74-9af4-d22a474d3617'::uuid AS category_uuid, 'maroquinerie-porte-monnaie' AS slug, 'Porte-monnaie' AS name, a32b5660-3837-45d5-bb4d-af910a29ea8a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'e6e1937c-ea02-45e0-8de9-bee1b35abd8c'::uuid AS category_uuid, 'etuis-pochettes-passeport' AS slug, 'Étuis passeport' AS name, a32b5660-3837-45d5-bb4d-af910a29ea8a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '632d4d03-e18a-447d-90c8-aed2c99422f1'::uuid AS category_uuid, 'etuis-documents' AS slug, 'Étuis documents' AS name, a32b5660-3837-45d5-bb4d-af910a29ea8a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'a7fd9f78-0409-47d8-92e0-fa6a059653d5'::uuid AS category_uuid, 'etuis-billets' AS slug, 'Étuis billets' AS name, a32b5660-3837-45d5-bb4d-af910a29ea8a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '68537813-90df-4e6a-bc95-2d3feff31d26'::uuid AS category_uuid, 'mini-sacs-cuir' AS slug, 'Mini sacs cuir' AS name, a32b5660-3837-45d5-bb4d-af910a29ea8a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'bad87593-bc71-4f6f-8528-f6e4e0ced92e'::uuid AS category_uuid, 'accessoires-luxe' AS slug, 'Accessoires luxe' AS name, a32b5660-3837-45d5-bb4d-af910a29ea8a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '6cb4cf93-3457-434d-9348-1defab3c5e34'::uuid AS category_uuid, 'petite-maroquinerie-artisanale' AS slug, 'Petite maroquinerie artisanale' AS name, a32b5660-3837-45d5-bb4d-af910a29ea8a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '1585e6f4-d39c-44a4-a47d-29bd1f09bae4'::uuid AS category_uuid, 'porte-ordinateur-13' AS slug, 'Sacs porte-ordinateur 13\' AS name, e3b09dae-c700-424b-bf07-2941efc3315a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '39c4f14b-e500-4e9f-92fe-1e1aecd6eb60'::uuid AS category_uuid, 'porte-ordinateur-15' AS slug, 'Sacs porte-ordinateur 15\' AS name, e3b09dae-c700-424b-bf07-2941efc3315a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '21ff23ed-ec8a-434d-8324-8d5060aaa95b'::uuid AS category_uuid, 'porte-ordinateur-17' AS slug, 'Sacs porte-ordinateur 17\' AS name, e3b09dae-c700-424b-bf07-2941efc3315a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '539382f5-d1d9-40c0-b710-eb2cd5b71747'::uuid AS category_uuid, 'sacs-business' AS slug, 'Sacs business' AS name, e3b09dae-c700-424b-bf07-2941efc3315a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '2fe73ee4-4400-4744-ad68-4dc9e2e1ddf9'::uuid AS category_uuid, 'sacs-documents' AS slug, 'Sacs documents' AS name, e3b09dae-c700-424b-bf07-2941efc3315a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '8192633c-3abf-48a5-b1fe-4349c50e799a'::uuid AS category_uuid, 'serviettes-attaches-case' AS slug, 'Serviettes & attachés-case' AS name, e3b09dae-c700-424b-bf07-2941efc3315a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'c9bfd765-1e92-4024-9c21-cab7f4c86112'::uuid AS category_uuid, 'sacs-infirmiers-paramedicaux' AS slug, 'Sacs infirmiers/paramédicaux' AS name, e3b09dae-c700-424b-bf07-2941efc3315a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '7eddd6ee-bec0-4e67-9756-d75cbc20cff0'::uuid AS category_uuid, 'sacs-architectes-artistes-tubes' AS slug, 'Sacs architectes & artistes (tubes)' AS name, e3b09dae-c700-424b-bf07-2941efc3315a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'e234062e-ed4d-4405-9474-0bcb0aa10270'::uuid AS category_uuid, 'sacs-portfolios-a3-a2' AS slug, 'Portfolios A3/A2' AS name, e3b09dae-c700-424b-bf07-2941efc3315a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '9aa62630-aaa3-45a7-9dec-2de1d3681757'::uuid AS category_uuid, 'sacs-techniciens-outils' AS slug, 'Sacs techniciens & outils' AS name, e3b09dae-c700-424b-bf07-2941efc3315a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '00e1c031-e5a9-4662-9948-7bf0d276b53a'::uuid AS category_uuid, 'sacs-livraison-coursiers' AS slug, 'Sacs livraison & coursiers' AS name, e3b09dae-c700-424b-bf07-2941efc3315a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '0584882e-6a1f-4c7e-8399-04e76db20577'::uuid AS category_uuid, 'etuis-laptop' AS slug, 'Étuis laptop' AS name, 3a81eadb-d3be-4561-87a7-1a781ca866b4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '4f42643e-8635-458d-83eb-d1ff5cc69915'::uuid AS category_uuid, 'housses-tablettes' AS slug, 'Housses tablettes' AS name, 3a81eadb-d3be-4561-87a7-1a781ca866b4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'cafac2f0-6891-4d34-bafd-18eebc4a587b'::uuid AS category_uuid, 'housses-disques-durs' AS slug, 'Housses disques durs' AS name, 3a81eadb-d3be-4561-87a7-1a781ca866b4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'b3c7fefa-07cd-4426-b777-e407fb4f2c0a'::uuid AS category_uuid, 'sacs-photo-reflex' AS slug, 'Sacs photo reflex' AS name, 3a81eadb-d3be-4561-87a7-1a781ca866b4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '177e1956-b1e7-446d-a68d-60673b922ce0'::uuid AS category_uuid, 'sacs-photo-mirrorless' AS slug, 'Sacs photo mirrorless' AS name, 3a81eadb-d3be-4561-87a7-1a781ca866b4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '8afea4a4-0253-4130-b47c-e5035af60d0a'::uuid AS category_uuid, 'sacs-drone' AS slug, 'Sacs drones' AS name, 3a81eadb-d3be-4561-87a7-1a781ca866b4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '1b50d8d0-9e3f-4505-8eaf-b6cfb99af832'::uuid AS category_uuid, 'sacs-camera-video' AS slug, 'Sacs caméras & accessoires vidéo' AS name, 3a81eadb-d3be-4561-87a7-1a781ca866b4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'c4193bc0-b97e-46ad-9a3d-b392f8f7bbb6'::uuid AS category_uuid, 'sacs-gamers-console' AS slug, 'Sacs gamers & console' AS name, 3a81eadb-d3be-4561-87a7-1a781ca866b4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '8a5a71b9-b13a-4824-a356-0a933eb1862e'::uuid AS category_uuid, 'sacs-anti-choc' AS slug, 'Sacs anti-choc' AS name, 3a81eadb-d3be-4561-87a7-1a781ca866b4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '26e89886-993b-43b1-a2bb-0d6fb3c2c4f5'::uuid AS category_uuid, 'sacs-connectes' AS slug, 'Sacs connectés' AS name, 3a81eadb-d3be-4561-87a7-1a781ca866b4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '8f3971b4-a94f-4b8e-8a56-f52eb117ace4'::uuid AS category_uuid, 'sacs-gym' AS slug, 'Sacs gym' AS name, 7ce8245d-9d7b-4d7d-8d92-17c3dbc7f922::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '47736d8e-5d14-4c31-89ef-947719b41f78'::uuid AS category_uuid, 'sacs-fitness' AS slug, 'Sacs fitness' AS name, 7ce8245d-9d7b-4d7d-8d92-17c3dbc7f922::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '807be9ed-dc3d-4faf-b3bf-3cca4a63f7b7'::uuid AS category_uuid, 'sacs-football' AS slug, 'Sacs football' AS name, 7ce8245d-9d7b-4d7d-8d92-17c3dbc7f922::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '6978f5b0-3cf8-4ec2-96b3-f6155d043811'::uuid AS category_uuid, 'sacs-arts-martiaux' AS slug, 'Sacs arts martiaux (compartiment gants)' AS name, 7ce8245d-9d7b-4d7d-8d92-17c3dbc7f922::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'b86812aa-579a-468a-b4de-20e2d91ecc11'::uuid AS category_uuid, 'sacs-natation' AS slug, 'Sacs natation (résistants à l’eau)' AS name, 7ce8245d-9d7b-4d7d-8d92-17c3dbc7f922::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '27186f19-9a77-49c4-979d-aff333185b1e'::uuid AS category_uuid, 'sacs-tennis-1-raquette' AS slug, 'Sacs tennis 1 raquette' AS name, 7ce8245d-9d7b-4d7d-8d92-17c3dbc7f922::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '6b66d262-c8e6-43d0-9a42-6a70774f71ba'::uuid AS category_uuid, 'sacs-tennis-multi-raquettes' AS slug, 'Sacs tennis multi-raquettes' AS name, 7ce8245d-9d7b-4d7d-8d92-17c3dbc7f922::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '5b2be017-b1cc-47f1-a3bc-b14ccef66242'::uuid AS category_uuid, 'sacs-tactiques-militaires-sport' AS slug, 'Sacs tactiques militaires' AS name, 7ce8245d-9d7b-4d7d-8d92-17c3dbc7f922::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'c798b1e1-64e4-4b44-9db8-3352c055836f'::uuid AS category_uuid, 'sacs-tir-airsoft' AS slug, 'Sacs de tir & airsoft' AS name, 7ce8245d-9d7b-4d7d-8d92-17c3dbc7f922::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'cb6c6991-b253-444b-ac1a-8cd770f4e779'::uuid AS category_uuid, 'sacs-a-dos-bebe' AS slug, 'Sacs à dos bébé' AS name, e41376ac-80da-4892-9c7c-4cf07a534dbe::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '1af65706-7bcc-4a6b-bd3b-6eceb6b1aba8'::uuid AS category_uuid, 'sacs-creche' AS slug, 'Sacs crèche' AS name, e41376ac-80da-4892-9c7c-4cf07a534dbe::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'd83c5dd7-67c9-46ab-805a-33c0cb22d91c'::uuid AS category_uuid, 'cartables' AS slug, 'Cartables' AS name, e41376ac-80da-4892-9c7c-4cf07a534dbe::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '723f8add-cf8f-4e34-966a-e11c4dfe02e8'::uuid AS category_uuid, 'sacs-a-roulettes-scolaire' AS slug, 'Sacs à roulettes scolaire' AS name, e41376ac-80da-4892-9c7c-4cf07a534dbe::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'ff41990b-46b0-40de-b50b-e98520c45711'::uuid AS category_uuid, 'sacs-a-gouter' AS slug, 'Sacs à goûter' AS name, e41376ac-80da-4892-9c7c-4cf07a534dbe::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'e426d657-247f-47fd-a75c-390cef1ad586'::uuid AS category_uuid, 'sacs-enfant-licence' AS slug, 'Sacs enfant personnage/licence' AS name, e41376ac-80da-4892-9c7c-4cf07a534dbe::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '7f414674-86e0-4fb3-b3a3-fe9eaba244d0'::uuid AS category_uuid, 'sacs-activites' AS slug, 'Sacs d' AS name, e41376ac-80da-4892-9c7c-4cf07a534dbe::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '1a572801-fbca-49cb-abc5-4c7c5a8e1e9d'::uuid AS category_uuid, 'sacs-anti-perte' AS slug, 'Sacs anti-perte' AS name, e41376ac-80da-4892-9c7c-4cf07a534dbe::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '6f476066-0122-451c-914c-fd88a515e52c'::uuid AS category_uuid, 'isothermes-repas' AS slug, 'Sacs isothermes repas' AS name, e5c88f2c-5459-4c8e-bfd5-836773852a76::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'b9674890-ead2-4426-bfa4-76f53b9bbdf1'::uuid AS category_uuid, 'isothermes-pique-nique' AS slug, 'Sacs isothermes pique-nique' AS name, e5c88f2c-5459-4c8e-bfd5-836773852a76::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'fe4bf9a9-0ac7-41aa-a37a-3c615a26b57a'::uuid AS category_uuid, 'isothermes-medicaments' AS slug, 'Sacs isothermes médicaments' AS name, e5c88f2c-5459-4c8e-bfd5-836773852a76::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '572c9217-88a9-4d0c-a32c-4c9fdb10fc75'::uuid AS category_uuid, 'sacs-specialises-photo-video' AS slug, 'Sacs photo & vidéo' AS name, e5c88f2c-5459-4c8e-bfd5-836773852a76::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '19e93cfa-511c-4c25-9fb7-f94d3c0e9fdc'::uuid AS category_uuid, 'sacs-specialises-drones' AS slug, 'Sacs drones' AS name, e5c88f2c-5459-4c8e-bfd5-836773852a76::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '393de2bc-6d00-4fdf-b304-7f8ac02fe06b'::uuid AS category_uuid, 'peche-chasse' AS slug, 'Sacs de pêche & chasse' AS name, e5c88f2c-5459-4c8e-bfd5-836773852a76::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '1652497c-b59b-4ac1-92c9-3f0ac1b4c8f2'::uuid AS category_uuid, 'trekking-hydratation' AS slug, 'Sacs trekking hydratation' AS name, e5c88f2c-5459-4c8e-bfd5-836773852a76::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'a47fb843-dee0-4c9c-b526-ce667d40604e'::uuid AS category_uuid, 'moto-cuir' AS slug, 'Sacs moto cuir' AS name, e5c88f2c-5459-4c8e-bfd5-836773852a76::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'ad7dfb0b-f6e5-45f9-be0a-c160e1d17ef4'::uuid AS category_uuid, 'moto-textile' AS slug, 'Sacs moto textile' AS name, e5c88f2c-5459-4c8e-bfd5-836773852a76::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'a152b3fc-1380-4a9e-aa48-0f6fd4d095f1'::uuid AS category_uuid, 'sacoches-velo-avant' AS slug, 'Sacoches vélo avant' AS name, e5c88f2c-5459-4c8e-bfd5-836773852a76::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '2768fedb-523f-43ff-98fc-52ba35d36093'::uuid AS category_uuid, 'sacoches-velo-arriere' AS slug, 'Sacoches vélo arrière' AS name, e5c88f2c-5459-4c8e-bfd5-836773852a76::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'e0689c73-5ed1-42a2-9034-81af390320a0'::uuid AS category_uuid, 'sacoches-velo-cadre' AS slug, 'Sacoches vélo cadre' AS name, e5c88f2c-5459-4c8e-bfd5-836773852a76::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '12531aed-a3fc-4dd0-a522-bf6f52dba283'::uuid AS category_uuid, 'sacs-specialises-plongee' AS slug, 'Sacs de plongée' AS name, e5c88f2c-5459-4c8e-bfd5-836773852a76::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'de28b80a-2f9a-4c1a-b145-e9e513ebde5d'::uuid AS category_uuid, 'equipement-btp' AS slug, 'Sacs équipement BTP' AS name, e5c88f2c-5459-4c8e-bfd5-836773852a76::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'b999f1f4-0b55-4810-b94c-313125b2b368'::uuid AS category_uuid, 'instruments-musicaux' AS slug, 'Sacs pour instruments musicaux' AS name, e5c88f2c-5459-4c8e-bfd5-836773852a76::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '56061337-e832-4942-b2cf-99b62621f363'::uuid AS category_uuid, 'medicaux-urgences' AS slug, 'Sacs médicaux/urgences' AS name, e5c88f2c-5459-4c8e-bfd5-836773852a76::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'c97c3e0e-60d7-473b-a2b5-088ff8144e26'::uuid AS category_uuid, 'cabine-pro' AS slug, 'Sacs cabine pro' AS name, aed7577b-d7ef-40fb-b3c4-760f9e6df664::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '017f5ad4-c1a1-4051-8f26-8781426ad3ce'::uuid AS category_uuid, 'pilotes' AS slug, 'Sacs pilotes' AS name, aed7577b-d7ef-40fb-b3c4-760f9e6df664::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'e2ba6ae5-4bd3-4fa6-a6e3-432243d5d527'::uuid AS category_uuid, 'trolley-medical' AS slug, 'Trolley médical' AS name, aed7577b-d7ef-40fb-b3c4-760f9e6df664::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'db721faa-9e8a-48d1-a0c4-65dbdb01ccff'::uuid AS category_uuid, 'echantillons-commerciaux' AS slug, 'Bagages échantillons commerciaux' AS name, aed7577b-d7ef-40fb-b3c4-760f9e6df664::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'd56d3c39-0667-4a27-a4d1-6252727fa56d'::uuid AS category_uuid, 'trolley-cabine-organisation' AS slug, 'Trolley cabine organisation multi-poches' AS name, aed7577b-d7ef-40fb-b3c4-760f9e6df664::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '70ff806c-5600-4d5f-af2b-ed1f12c26ecb'::uuid AS category_uuid, 'triangulaires-specifiques' AS slug, 'Sacs triangulaires transport spécifiques' AS name, aed7577b-d7ef-40fb-b3c4-760f9e6df664::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '29e721f8-d809-42d7-bb54-6d4978e22ea3'::uuid AS category_uuid, 'housses-valises' AS slug, 'Housses valises' AS name, 448116cc-3d2c-4a4f-9c3b-5cfac8c5cc55::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '3984b0b4-99dd-4e90-8d93-3bb5f91ca4a3'::uuid AS category_uuid, 'housses-vetements-costumes' AS slug, 'Housses vêtements & costumes' AS name, 448116cc-3d2c-4a4f-9c3b-5cfac8c5cc55::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '517fc200-67f9-4480-bfbb-750f0f1e18e1'::uuid AS category_uuid, 'housses-chaussures' AS slug, 'Housses chaussures' AS name, 448116cc-3d2c-4a4f-9c3b-5cfac8c5cc55::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '0d7b59d7-56bc-496a-a019-c1cb7aa6a670'::uuid AS category_uuid, 'housses-sacs-a-main' AS slug, 'Housses sacs à main' AS name, 448116cc-3d2c-4a4f-9c3b-5cfac8c5cc55::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '25e2de11-1164-41a8-8a0a-ce6ae5aefee0'::uuid AS category_uuid, 'sangles-valise' AS slug, 'Sangles valise' AS name, 448116cc-3d2c-4a4f-9c3b-5cfac8c5cc55::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'f3d966cb-298c-456b-ada8-9067d0d377fc'::uuid AS category_uuid, 'etiquettes-bagages' AS slug, 'Étiquettes bagages' AS name, 448116cc-3d2c-4a4f-9c3b-5cfac8c5cc55::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'e4000138-30d4-4cca-a713-971e3b90280a'::uuid AS category_uuid, 'filets-organiseurs' AS slug, 'Filets & organiseurs' AS name, 448116cc-3d2c-4a4f-9c3b-5cfac8c5cc55::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '81de7ce3-21ce-42fb-9c3c-0d40731deeb8'::uuid AS category_uuid, 'cubes-rangement' AS slug, 'Cubes de rangement' AS name, 448116cc-3d2c-4a4f-9c3b-5cfac8c5cc55::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'adb95295-847d-496c-afd0-23e8b1cc2cd2'::uuid AS category_uuid, 'filets-voiture' AS slug, 'Filets voiture' AS name, 448116cc-3d2c-4a4f-9c3b-5cfac8c5cc55::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '04a6ea5f-3dd0-4023-b029-cc1c4304bd23'::uuid AS category_uuid, 'protections-anti-pluie' AS slug, 'Protections anti-pluie' AS name, 448116cc-3d2c-4a4f-9c3b-5cfac8c5cc55::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'dc515f6b-1eba-437e-9a28-2a65019081fa'::uuid AS category_uuid, 'cadenas-tsa' AS slug, 'Cadenas TSA' AS name, 80ffbdde-ceee-4d02-9f36-f3f0e625ab69::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'c78d742d-0adb-4dc7-84cd-3643846cf9e3'::uuid AS category_uuid, 'ceintures-valise' AS slug, 'Ceintures valise' AS name, 80ffbdde-ceee-4d02-9f36-f3f0e625ab69::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'cf033648-f065-4b6e-8f5d-9469c643fb01'::uuid AS category_uuid, 'porte-passeport' AS slug, 'Porte-passeport' AS name, 80ffbdde-ceee-4d02-9f36-f3f0e625ab69::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '90c0cac9-a7d2-45c2-a47c-6cd784f0372c'::uuid AS category_uuid, 'porte-billets' AS slug, 'Porte-billets' AS name, 80ffbdde-ceee-4d02-9f36-f3f0e625ab69::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'ed6f7908-c949-4950-9fa9-e6c6ae4825a2'::uuid AS category_uuid, 'porte-etiquettes' AS slug, 'Porte-étiquettes' AS name, 80ffbdde-ceee-4d02-9f36-f3f0e625ab69::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'aa31ee4d-1267-4397-b789-aebd9cf4f97c'::uuid AS category_uuid, 'kits-voyage-bouteilles' AS slug, 'Kits de voyage (bouteilles avion)' AS name, 80ffbdde-ceee-4d02-9f36-f3f0e625ab69::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'bc14aa4f-514d-4411-a385-b9b56d80ca3c'::uuid AS category_uuid, 'kits-voyage-oreillers' AS slug, 'Kits de voyage (oreillers)' AS name, 80ffbdde-ceee-4d02-9f36-f3f0e625ab69::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'bb2525ab-bed4-46cd-a3ca-0da3e41bca80'::uuid AS category_uuid, 'kits-voyage-masques' AS slug, 'Kits de voyage (masques sommeil)' AS name, 80ffbdde-ceee-4d02-9f36-f3f0e625ab69::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '83226ccc-f204-4e88-a912-ed2c62db251a'::uuid AS category_uuid, 'organiseurs-electroniques' AS slug, 'Organiseurs électroniques' AS name, 80ffbdde-ceee-4d02-9f36-f3f0e625ab69::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'ad6c9ec2-a735-4baf-8523-54da4ae34519'::uuid AS category_uuid, 'pese-bagage' AS slug, 'Pèse-bagage' AS name, 80ffbdde-ceee-4d02-9f36-f3f0e625ab69::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '6f3b62a3-400e-4acb-8107-171344606a78'::uuid AS category_uuid, 'sangles-renfort' AS slug, 'Sangles de renfort' AS name, 80ffbdde-ceee-4d02-9f36-f3f0e625ab69::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),
  level = EXCLUDED.level,
  category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),
  updated_at = NOW();

-- Lot 19 terminé: 100 entrées
