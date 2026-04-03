-- ============================================================
-- CHUNK 13/49 — 100 catégories
-- Total: 4836 catégories
-- Exécuter dans l'ordre dans Supabase SQL Editor
-- ============================================================

INSERT INTO public.categories
  (category_uuid, slug, name, parent_id, level, is_active, created_at, updated_at)
VALUES
  SELECT 'e5dd4925-b6b9-4aab-a265-db5cbaee90e7'::uuid AS category_uuid, 'boyfriend' AS slug, 'Boyfriend' AS name, 4f03df64-b5d8-4b70-9fb1-750d426df80f::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'a9019c8c-7b3f-4068-8dcf-23754fe4e606'::uuid AS category_uuid, 'jeans-femme-skinny' AS slug, 'Skinny' AS name, 4f03df64-b5d8-4b70-9fb1-750d426df80f::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'ca01a181-e77c-4e9a-b5c2-20e7d5338643'::uuid AS category_uuid, 'pantalons-femme' AS slug, 'Pantalons' AS name, a3772910-a498-4df5-a619-ea7e748de655::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'a1898f7b-e5b4-4a44-a8b8-eba268c88498'::uuid AS category_uuid, 'tailleur' AS slug, 'Tailleur' AS name, ca01a181-e77c-4e9a-b5c2-20e7d5338643::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '59b524d3-c94e-4fd2-917f-c8d5ac7d16c2'::uuid AS category_uuid, 'palazzo' AS slug, 'Palazzo' AS name, ca01a181-e77c-4e9a-b5c2-20e7d5338643::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '801ca4ca-19da-4df9-b8c0-da83483652d7'::uuid AS category_uuid, 'pantalons-femme-cargo' AS slug, 'Cargo' AS name, ca01a181-e77c-4e9a-b5c2-20e7d5338643::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '4c200949-84f4-4453-bfbd-fc2de064fd48'::uuid AS category_uuid, 'legging' AS slug, 'Legging' AS name, ca01a181-e77c-4e9a-b5c2-20e7d5338643::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'b411e879-a550-4480-be94-e3ba1b6c83c9'::uuid AS category_uuid, 'pantalons-femme-jogging' AS slug, 'Jogging' AS name, ca01a181-e77c-4e9a-b5c2-20e7d5338643::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '45e26032-04e0-4ab3-b405-543e6d353a6f'::uuid AS category_uuid, 'collants-leggings-thermiques' AS slug, 'Collants & leggings thermiques' AS name, a3772910-a498-4df5-a619-ea7e748de655::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '956f97db-8f66-4a79-b0cd-3367be5baf63'::uuid AS category_uuid, 'vestes-femme' AS slug, 'Vestes' AS name, a3772910-a498-4df5-a619-ea7e748de655::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'e5dfb9a0-4d5a-41ab-beb1-0cef79957e74'::uuid AS category_uuid, 'blazer' AS slug, 'Blazer' AS name, 956f97db-8f66-4a79-b0cd-3367be5baf63::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'e11f586a-4c90-4d1a-95a0-0a0e8e120e29'::uuid AS category_uuid, 'vestes-femme-cuir' AS slug, 'Cuir' AS name, 956f97db-8f66-4a79-b0cd-3367be5baf63::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'f065ff68-64a9-4cea-84ae-82e583274ef7'::uuid AS category_uuid, 'vestes-femme-denim' AS slug, 'Denim' AS name, 956f97db-8f66-4a79-b0cd-3367be5baf63::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'd289d52d-7d59-4210-b85f-e5d5c06e645d'::uuid AS category_uuid, 'blousons-femme' AS slug, 'Blousons' AS name, a3772910-a498-4df5-a619-ea7e748de655::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '6711c7c3-d902-4121-8ae7-519455bf3557'::uuid AS category_uuid, 'biker' AS slug, 'Biker' AS name, d289d52d-7d59-4210-b85f-e5d5c06e645d::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'd9e1459b-e88c-4df6-9991-ca8090cac880'::uuid AS category_uuid, 'blousons-femme-bomber' AS slug, 'Bomber' AS name, d289d52d-7d59-4210-b85f-e5d5c06e645d::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'd8744d3e-59f1-48fe-a597-147622cc1ca4'::uuid AS category_uuid, 'manteaux-femme' AS slug, 'Manteaux' AS name, a3772910-a498-4df5-a619-ea7e748de655::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'b1a6d615-2664-4b83-bf43-93f15d581acc'::uuid AS category_uuid, 'manteaux-femme-laine' AS slug, 'Laine' AS name, d8744d3e-59f1-48fe-a597-147622cc1ca4::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'fcf92ce0-f85b-4a71-8192-91937e6c2260'::uuid AS category_uuid, 'manteaux-femme-trench' AS slug, 'Trench' AS name, d8744d3e-59f1-48fe-a597-147622cc1ca4::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '8de3ef5e-8a3a-48cc-8e5c-00a9e20db71b'::uuid AS category_uuid, 'manteaux-femme-oversize' AS slug, 'Oversize' AS name, d8744d3e-59f1-48fe-a597-147622cc1ca4::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '39879809-0a3d-4581-add6-10f61ed35637'::uuid AS category_uuid, 'doudounes-femme' AS slug, 'Doudounes' AS name, a3772910-a498-4df5-a619-ea7e748de655::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '28719c23-3d2c-468d-b45d-9c7a2925de66'::uuid AS category_uuid, 'capes-ponchos' AS slug, 'Capes & ponchos' AS name, a3772910-a498-4df5-a619-ea7e748de655::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '8f4b637f-8016-450c-8302-9614511f94ed'::uuid AS category_uuid, 'mode-chic' AS slug, 'Mode chic' AS name, a3772910-a498-4df5-a619-ea7e748de655::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '06e919e1-a968-4a54-9258-09b3cbe180fb'::uuid AS category_uuid, 'mode-streetwear' AS slug, 'Mode streetwear' AS name, a3772910-a498-4df5-a619-ea7e748de655::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '60693f54-b898-4493-9f7d-3b0a1ea59b92'::uuid AS category_uuid, 'sportwear-femme' AS slug, 'Sportwear' AS name, a3772910-a498-4df5-a619-ea7e748de655::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '6b943189-c4ca-411d-bdb4-50480a64b7d5'::uuid AS category_uuid, 'yoga' AS slug, 'Yoga' AS name, 60693f54-b898-4493-9f7d-3b0a1ea59b92::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '883fb847-ba01-412f-9ab6-bf08ee72456d'::uuid AS category_uuid, 'sportwear-femme-running' AS slug, 'Running' AS name, 60693f54-b898-4493-9f7d-3b0a1ea59b92::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'd220d1a6-1d88-47dd-93a8-ca3ee10afd7b'::uuid AS category_uuid, 'sportwear-femme-fitness' AS slug, 'Fitness' AS name, 60693f54-b898-4493-9f7d-3b0a1ea59b92::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '60056c71-0f46-4214-aa85-db790842d22f'::uuid AS category_uuid, 'beachwear' AS slug, 'Beachwear' AS name, a3772910-a498-4df5-a619-ea7e748de655::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'b692204e-57f1-46f8-af0b-24a9ba634f8a'::uuid AS category_uuid, 'mode-traditionnelle-femme' AS slug, 'Mode traditionnelle' AS name, a3772910-a498-4df5-a619-ea7e748de655::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'bb0f1bbe-a56c-449a-81ed-ae4c15ec7ff0'::uuid AS category_uuid, 'abaya' AS slug, 'Abaya' AS name, b692204e-57f1-46f8-af0b-24a9ba634f8a::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'bc721ae3-63c0-4baf-ae31-a5046c5148f2'::uuid AS category_uuid, 'caftan' AS slug, 'Caftan' AS name, b692204e-57f1-46f8-af0b-24a9ba634f8a::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '21469fde-eadb-4d16-9465-8777ec54f029'::uuid AS category_uuid, 'mode-traditionnelle-femme-karakou' AS slug, 'Karakou' AS name, b692204e-57f1-46f8-af0b-24a9ba634f8a::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '2f8646f9-7079-4408-82f4-49409352308a'::uuid AS category_uuid, 'marques-vetements-femme-zara' AS slug, 'Zara' AS name, cd81d788-0832-4370-a646-5fa3168ed4b3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '483bca1a-b508-4d29-b2e1-9eb01ff2de82'::uuid AS category_uuid, 'marques-vetements-femme-hm' AS slug, 'H&M' AS name, cd81d788-0832-4370-a646-5fa3168ed4b3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '8715f9df-678b-423f-918f-cd77278637f2'::uuid AS category_uuid, 'marques-vetements-femme-mango' AS slug, 'Mango' AS name, cd81d788-0832-4370-a646-5fa3168ed4b3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'caf2b53c-f3d6-4a16-9d07-3af36f510801'::uuid AS category_uuid, 'stradivarius' AS slug, 'Stradivarius' AS name, cd81d788-0832-4370-a646-5fa3168ed4b3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'de368dfa-b38e-4fcf-916a-fe21364d1896'::uuid AS category_uuid, 'marques-vetements-femme-bershka' AS slug, 'Bershka' AS name, cd81d788-0832-4370-a646-5fa3168ed4b3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'b80dbdb1-398f-453e-b524-8b3c0f16825c'::uuid AS category_uuid, 'marques-vetements-femme-pull-bear' AS slug, 'Pull&Bear' AS name, cd81d788-0832-4370-a646-5fa3168ed4b3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '8f3d73bf-11ba-452d-9756-a8a30692f84f'::uuid AS category_uuid, 'marques-vetements-femme-uniqlo' AS slug, 'Uniqlo' AS name, cd81d788-0832-4370-a646-5fa3168ed4b3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '7715fa0c-e6e2-488e-9c6e-037ae3c5a103'::uuid AS category_uuid, 'marques-vetements-femme-guess' AS slug, 'Guess' AS name, cd81d788-0832-4370-a646-5fa3168ed4b3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'b500b7eb-b0a9-4f2b-8225-26ed06dba650'::uuid AS category_uuid, 'marques-vetements-femme-calvin-klein' AS slug, 'Calvin Klein' AS name, cd81d788-0832-4370-a646-5fa3168ed4b3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '6664827d-3f83-4140-8f54-511318a169e2'::uuid AS category_uuid, 'marques-vetements-femme-tommy-hilfiger' AS slug, 'Tommy Hilfiger' AS name, cd81d788-0832-4370-a646-5fa3168ed4b3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '285b6b15-2876-4ebe-b2b5-2507cd7bae4b'::uuid AS category_uuid, 'marques-vetements-femme-lacoste' AS slug, 'Lacoste' AS name, cd81d788-0832-4370-a646-5fa3168ed4b3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'c615c625-4005-4ca2-99c1-3dd943509eb5'::uuid AS category_uuid, 'marques-vetements-femme-nike' AS slug, 'Nike' AS name, cd81d788-0832-4370-a646-5fa3168ed4b3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'e8c1ecb2-deef-4b73-a54c-7e5873bcb654'::uuid AS category_uuid, 'marques-vetements-femme-adidas' AS slug, 'Adidas' AS name, cd81d788-0832-4370-a646-5fa3168ed4b3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '8ba86f40-6fb7-4e7b-8ab0-4118d640348b'::uuid AS category_uuid, 'marques-vetements-femme-puma' AS slug, 'Puma' AS name, cd81d788-0832-4370-a646-5fa3168ed4b3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '96b831bf-8351-4771-b82c-c0075f3d78ca'::uuid AS category_uuid, 'sacs-main' AS slug, 'Sacs à main' AS name, 2fcdbcb6-d84f-488d-bf91-8c650182f7f4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'a48441a0-c894-43ae-b2b7-b36aa1dcb0f2'::uuid AS category_uuid, 'sacs-bandouliere' AS slug, 'Sacs bandoulière' AS name, 2fcdbcb6-d84f-488d-bf91-8c650182f7f4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '4a8a9b42-7aa1-4535-bc9a-fe339d411f86'::uuid AS category_uuid, 'accessoires-femme-pochettes' AS slug, 'Pochettes' AS name, 2fcdbcb6-d84f-488d-bf91-8c650182f7f4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '871589f4-0941-4387-bace-1afcea650c8d'::uuid AS category_uuid, 'accessoires-femme-porte-monnaie' AS slug, 'Porte‑monnaie' AS name, 2fcdbcb6-d84f-488d-bf91-8c650182f7f4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '49077025-86d2-40d8-a2a0-22635b4e1bab'::uuid AS category_uuid, 'bijoux' AS slug, 'Bijoux' AS name, 2fcdbcb6-d84f-488d-bf91-8c650182f7f4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '1ada19a8-adc7-4dce-ae1d-b55182781683'::uuid AS category_uuid, 'accessoires-femme-ceintures' AS slug, 'Ceintures' AS name, 2fcdbcb6-d84f-488d-bf91-8c650182f7f4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'ec3ed550-893f-43de-8bf2-032b084149a9'::uuid AS category_uuid, 'foulards-echarpes' AS slug, 'Foulards & écharpes' AS name, 2fcdbcb6-d84f-488d-bf91-8c650182f7f4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '762b7a22-4c38-4177-975e-4dd9be5e4efb'::uuid AS category_uuid, 'accessoires-femme-accessoires-cheveux' AS slug, 'Accessoires cheveux' AS name, 2fcdbcb6-d84f-488d-bf91-8c650182f7f4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '0e1ebc58-4aec-465e-b461-01fe68d565a6'::uuid AS category_uuid, 'lunettes-soleil-femme' AS slug, 'Lunettes de soleil' AS name, 2fcdbcb6-d84f-488d-bf91-8c650182f7f4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'cb981da0-28df-4f7f-b477-e5355134ebf2'::uuid AS category_uuid, 'montres-femme' AS slug, 'Montres' AS name, 2fcdbcb6-d84f-488d-bf91-8c650182f7f4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '09d3924b-7ba6-4595-b6e9-3003828b94c6'::uuid AS category_uuid, 'boxers' AS slug, 'Boxers' AS name, d8812b3d-37cc-4ef3-a539-9a11bfcf6194::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'bf509fbd-b70e-4c54-a81e-202e9abbc307'::uuid AS category_uuid, 'boxers-coton' AS slug, 'Coton' AS name, 09d3924b-7ba6-4595-b6e9-3003828b94c6::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '32ff1355-e2ad-42f2-95d5-90336fb72f72'::uuid AS category_uuid, 'boxers-microfibre' AS slug, 'Microfibre' AS name, 09d3924b-7ba6-4595-b6e9-3003828b94c6::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '3ec68826-bc92-4bdb-b912-54d2d4758667'::uuid AS category_uuid, 'boxers-sport' AS slug, 'Sport' AS name, 09d3924b-7ba6-4595-b6e9-3003828b94c6::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'f55819f1-10fd-4871-91fd-388410da91e3'::uuid AS category_uuid, 'slips' AS slug, 'Slips' AS name, d8812b3d-37cc-4ef3-a539-9a11bfcf6194::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '046adbd1-7ec0-415a-8998-64eda722a614'::uuid AS category_uuid, 'slips-classiques' AS slug, 'Classiques' AS name, f55819f1-10fd-4871-91fd-388410da91e3::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '4eaa4fd8-86c6-44ab-89e6-397a381173f0'::uuid AS category_uuid, 'taille-haute' AS slug, 'Taille haute' AS name, f55819f1-10fd-4871-91fd-388410da91e3::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'ea5694ad-cd8a-4156-afbc-6dcca42e502b'::uuid AS category_uuid, 'echancres' AS slug, 'Échancrés' AS name, f55819f1-10fd-4871-91fd-388410da91e3::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '94f0395b-6dcc-452f-a160-859042ded167'::uuid AS category_uuid, 'calecons' AS slug, 'Caleçons' AS name, d8812b3d-37cc-4ef3-a539-9a11bfcf6194::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '270ad2c3-2594-440b-9fc3-8b5b39a0841d'::uuid AS category_uuid, 'debardeurs-sous-maillots-thermiques' AS slug, 'Débardeurs & sous‑maillots thermiques' AS name, d8812b3d-37cc-4ef3-a539-9a11bfcf6194::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '7816e32b-b695-436e-bdf7-056667123290'::uuid AS category_uuid, 'soutiens-gorge' AS slug, 'Soutiens‑gorge' AS name, 6a869971-5486-4d48-a61f-dd8180992276::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '81d33787-b4db-4c16-be04-2639592d7213'::uuid AS category_uuid, 'push-up' AS slug, 'Push‑up' AS name, 7816e32b-b695-436e-bdf7-056667123290::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'dc3e6a6b-4eaa-4de0-9df7-c90294382ca2'::uuid AS category_uuid, 'maintien' AS slug, 'Maintien' AS name, 7816e32b-b695-436e-bdf7-056667123290::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '08552afa-5ed7-4d8f-a1ae-24f4f42ffb17'::uuid AS category_uuid, 'balconnet' AS slug, 'Balconnet' AS name, 7816e32b-b695-436e-bdf7-056667123290::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '65f7f8d9-612d-4042-bb81-292f6dbfc886'::uuid AS category_uuid, 'sans-armatures' AS slug, 'Sans armatures' AS name, 7816e32b-b695-436e-bdf7-056667123290::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'e890e313-acd2-445b-be33-136bdf2d5771'::uuid AS category_uuid, 'soutiens-gorge-sport' AS slug, 'Sport' AS name, 7816e32b-b695-436e-bdf7-056667123290::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '55ca20ef-6610-4790-ab5d-264c389d97d1'::uuid AS category_uuid, 'culottes' AS slug, 'Culottes' AS name, 6a869971-5486-4d48-a61f-dd8180992276::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '5f517889-d867-44cc-97a9-d24801f93c33'::uuid AS category_uuid, 'culottes-classiques' AS slug, 'Classiques' AS name, 55ca20ef-6610-4790-ab5d-264c389d97d1::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'd2777adb-5518-4ec1-94d9-908f89b7153a'::uuid AS category_uuid, 'tailles-hautes' AS slug, 'Tailles hautes' AS name, 55ca20ef-6610-4790-ab5d-264c389d97d1::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '43d66682-47ae-4e2a-8976-068af9b58047'::uuid AS category_uuid, 'tanga' AS slug, 'Tanga' AS name, 55ca20ef-6610-4790-ab5d-264c389d97d1::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '9924fa27-c0fc-49ae-a9fd-191739f03987'::uuid AS category_uuid, 'string' AS slug, 'String' AS name, 55ca20ef-6610-4790-ab5d-264c389d97d1::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '642330ce-7090-48ce-9e83-b7e4eabbf4d1'::uuid AS category_uuid, 'ensembles-lingerie' AS slug, 'Ensembles lingerie' AS name, 6a869971-5486-4d48-a61f-dd8180992276::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '9d72c5ac-0a9b-46b3-945e-f8e9ef8eeab0'::uuid AS category_uuid, 'body-combinaisons' AS slug, 'Body & combinaisons' AS name, 6a869971-5486-4d48-a61f-dd8180992276::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '6b2184bf-0e6f-41b7-a313-4809c5a3b269'::uuid AS category_uuid, 'guepieres' AS slug, 'Guêpières' AS name, 6a869971-5486-4d48-a61f-dd8180992276::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'ae42242f-98c3-4de8-a158-bd73fa79c4d5'::uuid AS category_uuid, 'lingerie-sculptante' AS slug, 'Lingerie sculptante' AS name, 6a869971-5486-4d48-a61f-dd8180992276::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '6f51d0e2-b8c0-469c-819c-91f57cf61c73'::uuid AS category_uuid, 'lingerie-sexy-dentelle' AS slug, 'Lingerie sexy & dentelle' AS name, 6a869971-5486-4d48-a61f-dd8180992276::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '1f81e13e-8cc4-45a7-85cd-8b1852a23eec'::uuid AS category_uuid, 'pyjamas-homme-femme' AS slug, 'Pyjamas homme & femme' AS name, 9dff04fa-b432-4668-b2bb-481bed80420c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '18637535-90a8-47ba-8f81-daaaaddfd9c6'::uuid AS category_uuid, 'nuisettes' AS slug, 'Nuisettes' AS name, 9dff04fa-b432-4668-b2bb-481bed80420c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '9fe39d04-249f-4c85-9b17-7b8d62dbba5d'::uuid AS category_uuid, 'deshabilles' AS slug, 'Déshabillés' AS name, 9dff04fa-b432-4668-b2bb-481bed80420c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '3ff450e5-c4f3-4f4b-927e-6d12677f3f28'::uuid AS category_uuid, 'peignoirs' AS slug, 'Peignoirs' AS name, 9dff04fa-b432-4668-b2bb-481bed80420c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '9fe435b4-83ad-4c29-b12d-76aa850885e5'::uuid AS category_uuid, 'robes-de-chambre' AS slug, 'Robes de chambre' AS name, 9dff04fa-b432-4668-b2bb-481bed80420c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '0198f81b-7c7f-4d87-9126-bddec48c9968'::uuid AS category_uuid, 'homewear' AS slug, 'Homewear' AS name, 9dff04fa-b432-4668-b2bb-481bed80420c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'f0732e1b-a030-4fa4-9ca8-e5af71d584cd'::uuid AS category_uuid, 'sous-vetements-thermiques' AS slug, 'Sous‑vêtements thermiques' AS name, f6ab0f75-683f-4920-9783-8d8231c6da59::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '1b296934-a613-42a8-ba7f-14a195bca1d0'::uuid AS category_uuid, 'sous-couches-sport' AS slug, 'Sous‑couches sport' AS name, f6ab0f75-683f-4920-9783-8d8231c6da59::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '64745ab6-6b56-4163-a2f4-3721f08e7021'::uuid AS category_uuid, 'chaussettes-techniques-compression' AS slug, 'Chaussettes techniques & compression' AS name, f6ab0f75-683f-4920-9783-8d8231c6da59::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'f7eb21e5-47ac-45da-89ec-b64b9f2e5385'::uuid AS category_uuid, 'chaussures-habillees' AS slug, 'Chaussures habillées' AS name, 6587af2d-7cf3-44dd-a084-0b737da9934f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'cf3114b6-3557-4b7d-9ce4-454559f1a8d0'::uuid AS category_uuid, 'chaussures-homme-femme-mocassins' AS slug, 'Mocassins' AS name, 6587af2d-7cf3-44dd-a084-0b737da9934f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'fd5e1f33-b1a9-45f9-9f21-abf6568ae5fc'::uuid AS category_uuid, 'chaussures-de-ville' AS slug, 'Chaussures de ville' AS name, 6587af2d-7cf3-44dd-a084-0b737da9934f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '68ce28cb-3894-4adc-88cf-ac69abb5c797'::uuid AS category_uuid, 'chaussures-homme-femme-baskets' AS slug, 'Baskets' AS name, 6587af2d-7cf3-44dd-a084-0b737da9934f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'e01c26a8-2330-44ff-8bb3-38e2c4ccaae2'::uuid AS category_uuid, 'mode' AS slug, 'Mode' AS name, NULL::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '5f8e1d63-40a6-4d19-b803-d50e3bf81b41'::uuid AS category_uuid, 'baskets-running' AS slug, 'Running' AS name, NULL::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT '407287bb-cc6e-4a5f-a993-31a7a15ea7d2'::uuid AS category_uuid, 'training' AS slug, 'Training' AS name, NULL::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
  UNION ALL
  SELECT 'b127535f-f6c4-40c8-a0be-1ea62408c271'::uuid AS category_uuid, 'sandales-tongs' AS slug, 'Sandales & tongs' AS name, 6587af2d-7cf3-44dd-a084-0b737da9934f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.878Z' AS created_at, '2026-04-03T10:15:31.878Z' AS updated_at
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),
  level = EXCLUDED.level,
  category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),
  updated_at = NOW();

-- Lot 13 terminé: 100 entrées
