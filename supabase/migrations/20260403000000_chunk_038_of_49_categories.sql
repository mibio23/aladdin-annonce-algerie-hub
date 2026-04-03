-- ============================================================
-- CHUNK 38/49 — 100 catégories
-- Total: 4836 catégories
-- Exécuter dans l'ordre dans Supabase SQL Editor
-- ============================================================

INSERT INTO public.categories
  (category_uuid, slug, name, parent_id, level, is_active, created_at, updated_at)
VALUES
  SELECT 'e3548953-28f6-4782-b11b-ad3fa3a2227f'::uuid AS category_uuid, 'thes-verts' AS slug, 'thés verts' AS name, bab19e33-cd6e-4da7-a449-611152c02f66::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '753d20a9-9497-4e25-810f-e117a37fe619'::uuid AS category_uuid, 'thes-noirs' AS slug, 'thés noirs' AS name, bab19e33-cd6e-4da7-a449-611152c02f66::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '99f9b73f-3f50-4308-8e94-225d0f7b450f'::uuid AS category_uuid, 'infusions' AS slug, 'infusions' AS name, bab19e33-cd6e-4da7-a449-611152c02f66::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'dee22f9d-7a16-4dd3-8b2b-02c9f744259d'::uuid AS category_uuid, 'tisanes' AS slug, 'tisanes' AS name, bab19e33-cd6e-4da7-a449-611152c02f66::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '9fa70291-e341-492e-a403-524224313145'::uuid AS category_uuid, 'accessoires-cafe-the' AS slug, 'accessoires café/thé' AS name, bab19e33-cd6e-4da7-a449-611152c02f66::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '744b53fd-e358-4db5-86bf-be2cac97ada4'::uuid AS category_uuid, 'aliments-bio' AS slug, 'aliments bio' AS name, feddb160-9d72-4b19-b440-60aa124fba1c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'df9e9671-5969-485e-84b5-92aa63450aa9'::uuid AS category_uuid, 'graines' AS slug, 'graines' AS name, feddb160-9d72-4b19-b440-60aa124fba1c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'd1111182-5752-4a62-a14b-8e70ba1218a9'::uuid AS category_uuid, 'superfoods' AS slug, 'superfoods' AS name, feddb160-9d72-4b19-b440-60aa124fba1c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '6547a95a-53a1-49ec-9481-9cf3ed7b71a2'::uuid AS category_uuid, 'farines-bio' AS slug, 'farines bio' AS name, feddb160-9d72-4b19-b440-60aa124fba1c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '09b4d8cb-276e-4711-9bb2-36059a02b25b'::uuid AS category_uuid, 'produits-bio-naturels-huiles-naturelles' AS slug, 'huiles naturelles' AS name, feddb160-9d72-4b19-b440-60aa124fba1c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '77ac7747-550b-4a90-a97f-658df1e8b85f'::uuid AS category_uuid, 'produits-sans-additifs' AS slug, 'produits naturels sans additifs' AS name, feddb160-9d72-4b19-b440-60aa124fba1c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '1be9209b-1c01-4f52-a382-b8cf66e81495'::uuid AS category_uuid, 'patisseries-orientales' AS slug, 'pâtisseries orientales' AS name, d4e190a4-0d57-4ed0-bdab-54c4199b7232::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'cbc98868-d5d9-4d52-8836-4dc03817cb82'::uuid AS category_uuid, 'produits-orientaux-traditionnels-dattes' AS slug, 'dattes' AS name, d4e190a4-0d57-4ed0-bdab-54c4199b7232::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT 'a3a0e348-6ea6-4ed4-b282-add4c303b441'::uuid AS category_uuid, 'semoule-speciale' AS slug, 'semoule spéciale' AS name, d4e190a4-0d57-4ed0-bdab-54c4199b7232::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '4075f5f7-a8ee-4def-8457-53092de80b24'::uuid AS category_uuid, 'epices-orientales-trad' AS slug, 'épices orientales' AS name, d4e190a4-0d57-4ed0-bdab-54c4199b7232::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '7c609fe3-982a-49bf-9cd4-4d324e3e7418'::uuid AS category_uuid, 'couscous-artisanal' AS slug, 'couscous artisanal' AS name, d4e190a4-0d57-4ed0-bdab-54c4199b7232::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT 'd480c8f7-6a4e-456a-ad8f-28071fbad818'::uuid AS category_uuid, 'produits-ramadan' AS slug, 'produits Ramadan' AS name, d4e190a4-0d57-4ed0-bdab-54c4199b7232::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT 'a4933100-ab84-429a-87dd-e3e4a8215fdc'::uuid AS category_uuid, 'chips' AS slug, 'chips' AS name, 1b0458a6-17d8-4621-bc1a-29505179a6a2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '40010f27-5839-417e-a562-9a33e20bbd0a'::uuid AS category_uuid, 'biscuits-sales' AS slug, 'biscuits salés' AS name, 1b0458a6-17d8-4621-bc1a-29505179a6a2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '620694bf-a70c-4f4a-8214-09920e18096c'::uuid AS category_uuid, 'cacahuetes' AS slug, 'cacahuètes' AS name, 1b0458a6-17d8-4621-bc1a-29505179a6a2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '605dd88c-6807-401f-9d0b-135f6e1e56ea'::uuid AS category_uuid, 'amandes' AS slug, 'amandes' AS name, 1b0458a6-17d8-4621-bc1a-29505179a6a2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '6f84fe1f-e439-4db9-b58e-116be70541e9'::uuid AS category_uuid, 'pistaches' AS slug, 'pistaches' AS name, 1b0458a6-17d8-4621-bc1a-29505179a6a2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '846e50b8-7fe8-4917-82a5-f23d373de177'::uuid AS category_uuid, 'noix-de-cajou' AS slug, 'noix de cajou' AS name, 1b0458a6-17d8-4621-bc1a-29505179a6a2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '3e4bc2b3-d800-4494-8925-a042589a0227'::uuid AS category_uuid, 'popcorn' AS slug, 'popcorn' AS name, 1b0458a6-17d8-4621-bc1a-29505179a6a2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '752ff682-f65f-43cd-bb89-f783643e0ec3'::uuid AS category_uuid, 'olives-assaisonnees' AS slug, 'olives assaisonnées' AS name, 1b0458a6-17d8-4621-bc1a-29505179a6a2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '7e2f21c6-f9d5-4d66-b873-81b688001b2a'::uuid AS category_uuid, 'produits-asiatiques' AS slug, 'produits asiatiques' AS name, ed344d25-0451-4a29-85db-80a42ea8635d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT 'ded24d3e-31da-4765-8c78-9d07d3e10c3e'::uuid AS category_uuid, 'produits-turcs' AS slug, 'produits turcs' AS name, ed344d25-0451-4a29-85db-80a42ea8635d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT 'ce6c0da5-04f4-4f15-a7b8-04c4d9fa1f1c'::uuid AS category_uuid, 'produits-indiens' AS slug, 'produits indiens' AS name, ed344d25-0451-4a29-85db-80a42ea8635d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '18cfc645-4060-4967-a55b-f28aba8bc77d'::uuid AS category_uuid, 'sauces-internationales' AS slug, 'sauces internationales' AS name, ed344d25-0451-4a29-85db-80a42ea8635d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT 'd65ed8a3-cd2e-4056-9135-f376965c47cd'::uuid AS category_uuid, 'nouilles-asiatiques' AS slug, 'nouilles asiatiques' AS name, ed344d25-0451-4a29-85db-80a42ea8635d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT 'f5e9298f-3cfb-474d-8ac0-9753af382d34'::uuid AS category_uuid, 'charcuterie-halal' AS slug, 'charcuterie halal' AS name, 2173bcc7-4020-4359-8644-19aaa4dc74db::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '97fd1642-ad41-450a-ac7d-981825072a8a'::uuid AS category_uuid, 'viandes-halal' AS slug, 'viandes halal' AS name, 2173bcc7-4020-4359-8644-19aaa4dc74db::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '535f4fd6-d730-4837-97c5-1937d6a7a812'::uuid AS category_uuid, 'snacks-halal' AS slug, 'snacks halal' AS name, 2173bcc7-4020-4359-8644-19aaa4dc74db::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT 'e458abd5-ec65-41c1-88d2-a8833d64b71a'::uuid AS category_uuid, 'plats-prepares-halal' AS slug, 'plats préparés halal' AS name, 2173bcc7-4020-4359-8644-19aaa4dc74db::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT 'fe6f2e3b-5815-4e03-a408-641c66297fea'::uuid AS category_uuid, 'surgeles-halal' AS slug, 'surgelés halal' AS name, 2173bcc7-4020-4359-8644-19aaa4dc74db::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT 'ec1fe202-36d0-4db5-820b-8d8e94570431'::uuid AS category_uuid, 'nutrition-sportive-proteines' AS slug, 'protéines' AS name, e6fa0fa9-a5d2-4ed7-970c-c7ec4b430100::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '4be47bfc-2b1d-499e-87fd-c983d2047dee'::uuid AS category_uuid, 'nutrition-sportive-gainers' AS slug, 'gainers' AS name, e6fa0fa9-a5d2-4ed7-970c-c7ec4b430100::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT 'cc4adb20-ad8b-4097-acfc-bca19437e19f'::uuid AS category_uuid, 'creatine' AS slug, 'creatine' AS name, e6fa0fa9-a5d2-4ed7-970c-c7ec4b430100::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '5f1beb13-9505-4c95-81d0-d9129093bd6b'::uuid AS category_uuid, 'aminoacides' AS slug, 'aminoacides' AS name, e6fa0fa9-a5d2-4ed7-970c-c7ec4b430100::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '612e04c5-0e1d-4a06-aba0-bdf47319dbdb'::uuid AS category_uuid, 'bars-proteinees' AS slug, 'bars protéinées' AS name, e6fa0fa9-a5d2-4ed7-970c-c7ec4b430100::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT 'cca29ae5-8c5b-43f1-aea4-ac1e89b1c902'::uuid AS category_uuid, 'boissons-isotoniques' AS slug, 'boissons isotoniques' AS name, e6fa0fa9-a5d2-4ed7-970c-c7ec4b430100::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '0b93dce2-7836-454e-9396-aceaedd37b23'::uuid AS category_uuid, 'meal-replacement' AS slug, 'meal-replacement' AS name, e6fa0fa9-a5d2-4ed7-970c-c7ec4b430100::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '20f8417a-64d9-4cde-83de-8f5617dd820e'::uuid AS category_uuid, 'sans-sucre' AS slug, 'produits sans sucre' AS name, 27122f7e-1023-4cab-9d1b-4c611c4760a6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT 'eded3e67-f237-4ab6-94f7-823267eda73e'::uuid AS category_uuid, 'sans-gluten' AS slug, 'produits sans gluten' AS name, 27122f7e-1023-4cab-9d1b-4c611c4760a6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '03bb6c8e-d4ac-416a-b1df-51b156ab33b9'::uuid AS category_uuid, 'sans-lactose' AS slug, 'produits sans lactose' AS name, 27122f7e-1023-4cab-9d1b-4c611c4760a6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '88733107-5368-4c3b-b904-8d0aba3662bd'::uuid AS category_uuid, 'faible-calories' AS slug, 'aliments faibles en calories' AS name, 27122f7e-1023-4cab-9d1b-4c611c4760a6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT 'a139c0b5-b8a4-4721-9f01-08cae28af003'::uuid AS category_uuid, 'thes-detox' AS slug, 'thés detox' AS name, 27122f7e-1023-4cab-9d1b-4c611c4760a6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '0e95652a-b4b0-4139-b496-ee295392d4a6'::uuid AS category_uuid, 'dietetique-sante-complements-alimentaires' AS slug, 'compléments alimentaires' AS name, 27122f7e-1023-4cab-9d1b-4c611c4760a6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '681be9e3-4f40-475c-99e6-ece65318732f'::uuid AS category_uuid, 'chocolat' AS slug, 'chocolat' AS name, fa0d1403-2466-49ed-837c-34ebe110d5ee::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '8bf9b380-2e71-426d-a339-80f047fd4845'::uuid AS category_uuid, 'levure' AS slug, 'levure' AS name, fa0d1403-2466-49ed-837c-34ebe110d5ee::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '284bef0a-6d94-4f58-8443-eeb95917ae38'::uuid AS category_uuid, 'cacao' AS slug, 'cacao' AS name, fa0d1403-2466-49ed-837c-34ebe110d5ee::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '0d3bb324-e239-470b-be7d-781230e6c8f3'::uuid AS category_uuid, 'aromes' AS slug, 'arômes' AS name, fa0d1403-2466-49ed-837c-34ebe110d5ee::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '10a0bcff-c363-4b60-ba72-b0d23cd42a44'::uuid AS category_uuid, 'colorants' AS slug, 'colorants' AS name, fa0d1403-2466-49ed-837c-34ebe110d5ee::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '9ef89a3f-eb51-4d62-bc3d-f6441b69f253'::uuid AS category_uuid, 'decorations-patisserie' AS slug, 'décorations pâtissières' AS name, fa0d1403-2466-49ed-837c-34ebe110d5ee::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT 'cf9b1053-2828-4567-9e37-a09b98155df2'::uuid AS category_uuid, 'ustensiles-patisserie' AS slug, 'ustensiles pâtisserie' AS name, fa0d1403-2466-49ed-837c-34ebe110d5ee::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT 'ff17952d-a649-4f8a-9b6d-ee7b00ba9e31'::uuid AS category_uuid, 'sauces-soja' AS slug, 'sauces soja' AS name, 7f12dc02-a817-4576-9cd1-fad2ca9f2924::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT 'bc2491d8-c6ce-4b88-a2c0-ed5aaccf2afa'::uuid AS category_uuid, 'sauces-piquantes' AS slug, 'sauces piquantes' AS name, 7f12dc02-a817-4576-9cd1-fad2ca9f2924::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT 'a1a3af4a-75ad-493d-9039-5d5fe2ef48b6'::uuid AS category_uuid, 'ketchup' AS slug, 'ketchup' AS name, 7f12dc02-a817-4576-9cd1-fad2ca9f2924::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '9c22a11a-3118-44a6-bb80-5b0df6f79b08'::uuid AS category_uuid, 'moutarde-cuisine' AS slug, 'moutarde' AS name, 7f12dc02-a817-4576-9cd1-fad2ca9f2924::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT 'a4e74210-364f-4c42-ab57-717d4428aa84'::uuid AS category_uuid, 'marinade' AS slug, 'marinade' AS name, 7f12dc02-a817-4576-9cd1-fad2ca9f2924::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '8c60653f-2849-44ef-9dfd-18cc8d76838f'::uuid AS category_uuid, 'bouillons-cuisine' AS slug, 'bouillons' AS name, 7f12dc02-a817-4576-9cd1-fad2ca9f2924::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT 'eba09d5a-336a-4304-9336-f83d7bd71218'::uuid AS category_uuid, 'aides-de-cuisine' AS slug, 'aides de cuisine' AS name, 7f12dc02-a817-4576-9cd1-fad2ca9f2924::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '5ba0669c-1f88-4654-b853-99e2cd3791e3'::uuid AS category_uuid, 'chocolats' AS slug, 'chocolats' AS name, 531520f5-fcb3-4971-a580-6668339e0458::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '7c1e52db-9ed8-478c-8ec1-25e60cb56ef9'::uuid AS category_uuid, 'bonbons' AS slug, 'bonbons' AS name, 531520f5-fcb3-4971-a580-6668339e0458::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT 'ef9e0561-42c7-4a03-b99a-df859f5835ad'::uuid AS category_uuid, 'dragees' AS slug, 'dragées' AS name, 531520f5-fcb3-4971-a580-6668339e0458::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '22e825fd-16f8-4e74-8ad9-734d166bf802'::uuid AS category_uuid, 'fruits-confits' AS slug, 'fruits confits' AS name, 531520f5-fcb3-4971-a580-6668339e0458::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '28fa912a-bd22-4a06-8080-94afcfebf91a'::uuid AS category_uuid, 'patisserie-fine' AS slug, 'pâtisserie fine' AS name, 531520f5-fcb3-4971-a580-6668339e0458::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '6c2828e2-e6e4-4bac-b4cb-96cd53d676e1'::uuid AS category_uuid, 'coffrets-cadeaux' AS slug, 'coffrets cadeaux' AS name, 531520f5-fcb3-4971-a580-6668339e0458::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '33db7670-6bbf-4751-b286-c9e3e0397616'::uuid AS category_uuid, 'lait-infantile' AS slug, 'lait infantile' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '7bd6e94f-1830-4a48-9bb9-4efa407ab38f'::uuid AS category_uuid, 'petits-pots' AS slug, 'petits pots' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT 'a07da3fe-d3b4-48cc-b221-0528138ca512'::uuid AS category_uuid, 'compotes' AS slug, 'compotes' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '08571e65-81d4-42e8-a814-98107b8abf5e'::uuid AS category_uuid, 'biscuits-bebe' AS slug, 'biscuits bébé' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT 'f2dc1bc3-23c6-4585-8679-e2721c1f8205'::uuid AS category_uuid, 'cereales-bebe' AS slug, 'céréales bébé' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '87e761fb-5ac5-4c9f-8d16-1a0624adccdf'::uuid AS category_uuid, 'yaourts-bebe' AS slug, 'yaourts bébé' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT 'd59e2387-3291-41bf-94e4-18dee7b40363'::uuid AS category_uuid, 'eau-plate' AS slug, 'eau plate' AS name, eec8b2dd-a757-4056-867c-71f297e55f27::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT 'cea48c75-1ddd-44ce-a1eb-e1b7fa891a72'::uuid AS category_uuid, 'eau-gazeuse' AS slug, 'eau gazeuse' AS name, eec8b2dd-a757-4056-867c-71f297e55f27::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '3a64d45f-1033-4801-b6b3-1d1fe76be844'::uuid AS category_uuid, 'eau-aromatisee' AS slug, 'eau aromatisée' AS name, eec8b2dd-a757-4056-867c-71f297e55f27::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '233ae939-c02c-4604-990b-4e13a064e14c'::uuid AS category_uuid, 'packs-famille' AS slug, 'packs famille' AS name, eec8b2dd-a757-4056-867c-71f297e55f27::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '0363fce4-e331-412a-8121-248dc35161bd'::uuid AS category_uuid, 'bouteilles-sport' AS slug, 'bouteilles sport' AS name, eec8b2dd-a757-4056-867c-71f297e55f27::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '751e2a08-96fc-426f-b48a-871512ca7bc6'::uuid AS category_uuid, 'boites-alimentaire' AS slug, 'boîtes alimentaire' AS name, 00721b11-2cd0-48f8-9695-6f08f6c2bc4e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '55183733-2ad8-4035-960c-264c7498fad7'::uuid AS category_uuid, 'contenants-hermetiques' AS slug, 'contenants hermétiques' AS name, 00721b11-2cd0-48f8-9695-6f08f6c2bc4e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT 'f4f4a345-47a3-4c93-a3b8-043eb57c3d23'::uuid AS category_uuid, 'sacs-congelation' AS slug, 'sacs congélation' AS name, 00721b11-2cd0-48f8-9695-6f08f6c2bc4e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '4012caa2-cff8-4ff8-8481-37c91799388a'::uuid AS category_uuid, 'accessoires-de-cuisine' AS slug, 'accessoires de cuisine' AS name, 00721b11-2cd0-48f8-9695-6f08f6c2bc4e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '39ca2fe6-92fb-4cd7-94fb-5411956ce6f8'::uuid AS category_uuid, 'artisanat-traditionnel-algerien' AS slug, 'Artisanat Traditionnel Algérien' AS name, NULL::uuid AS parent_id, 1 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT 'b153d766-a977-456c-8690-7b9c5b80d4b5'::uuid AS category_uuid, 'poterie-ceramique' AS slug, 'Poterie & céramique' AS name, 39ca2fe6-92fb-4cd7-94fb-5411956ce6f8::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '4148a9bd-bddb-48a4-9146-7a629d74add1'::uuid AS category_uuid, 'artisanats-regionaux' AS slug, 'Artisanats régionaux' AS name, 39ca2fe6-92fb-4cd7-94fb-5411956ce6f8::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT 'b259310a-a1ad-4ce7-9c52-50cda26a452f'::uuid AS category_uuid, 'tissage-tapis' AS slug, 'Tissage & tapis' AS name, 39ca2fe6-92fb-4cd7-94fb-5411956ce6f8::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '4bd3bb38-3b32-4892-852f-d720d2ed9915'::uuid AS category_uuid, 'bijoux-metaux' AS slug, 'Bijoux & métaux' AS name, 39ca2fe6-92fb-4cd7-94fb-5411956ce6f8::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT 'f86a750d-005c-4858-8c0c-0af625ea436d'::uuid AS category_uuid, 'broderie-vetements' AS slug, 'Broderie & vêtements traditionnels' AS name, 39ca2fe6-92fb-4cd7-94fb-5411956ce6f8::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '96e32efa-6739-4e82-8fe9-b92bbd965c4e'::uuid AS category_uuid, 'cuir-maroquinerie' AS slug, 'Cuir & maroquinerie' AS name, 39ca2fe6-92fb-4cd7-94fb-5411956ce6f8::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '18028b49-cef4-4b40-962d-a9a646eecdbd'::uuid AS category_uuid, 'bois-sculpture' AS slug, 'Bois & sculpture' AS name, 39ca2fe6-92fb-4cd7-94fb-5411956ce6f8::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '3924570e-6190-48b5-8e82-d5edd08d01d7'::uuid AS category_uuid, 'vannerie-fibres' AS slug, 'Vannerie & fibres naturelles' AS name, 39ca2fe6-92fb-4cd7-94fb-5411956ce6f8::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT 'b5d21933-6fef-4b00-ae15-985107f991af'::uuid AS category_uuid, 'decoration-berbere' AS slug, 'Décoration & objets berbères' AS name, 39ca2fe6-92fb-4cd7-94fb-5411956ce6f8::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '03537014-403d-43c1-89bc-cc37a4a1278f'::uuid AS category_uuid, 'artisanat-traditionnel-algerien-instruments-musique' AS slug, 'Instruments de musique artisanaux' AS name, 39ca2fe6-92fb-4cd7-94fb-5411956ce6f8::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '9334e0d0-3634-4e85-9e9a-456fbccc7475'::uuid AS category_uuid, 'produits-naturels' AS slug, 'Produits naturels artisanaux' AS name, 39ca2fe6-92fb-4cd7-94fb-5411956ce6f8::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '3348ad70-6cd7-4965-88c3-c925c631337e'::uuid AS category_uuid, 'articles-culturels' AS slug, 'Articles culturels & patrimoniaux' AS name, 39ca2fe6-92fb-4cd7-94fb-5411956ce6f8::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '78dc13c2-496b-49ec-b164-51b570cb1dff'::uuid AS category_uuid, 'services-coutumes' AS slug, 'Services & coutumes traditionnelles' AS name, 39ca2fe6-92fb-4cd7-94fb-5411956ce6f8::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT 'dc96f689-6f8b-4d38-8e7f-dac21893163a'::uuid AS category_uuid, 'produits-locaux' AS slug, 'Produits locaux algériens' AS name, 39ca2fe6-92fb-4cd7-94fb-5411956ce6f8::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '932478b2-18d2-43b7-acb6-7c2764031032'::uuid AS category_uuid, 'plats-traditionnels' AS slug, 'Plats traditionnels algériens' AS name, 39ca2fe6-92fb-4cd7-94fb-5411956ce6f8::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '1aa6521a-6aab-41f9-a6ae-c59ee2d274d1'::uuid AS category_uuid, 'patisseries-traditionnelles' AS slug, 'Pâtisseries traditionnelles algériennes' AS name, 39ca2fe6-92fb-4cd7-94fb-5411956ce6f8::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),
  level = EXCLUDED.level,
  category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),
  updated_at = NOW();

-- Lot 38 terminé: 100 entrées
