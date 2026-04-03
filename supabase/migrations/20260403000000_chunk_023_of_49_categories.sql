-- ============================================================
-- CHUNK 23/49 — 100 catégories
-- Total: 4836 catégories
-- Exécuter dans l'ordre dans Supabase SQL Editor
-- ============================================================

INSERT INTO public.categories
  (category_uuid, slug, name, parent_id, level, is_active, created_at, updated_at)
VALUES
  SELECT '44f5e386-4dfc-4b3f-916c-83221d384c14'::uuid AS category_uuid, 'tabourets-chaises-hautes-chaises-hautes' AS slug, 'Chaises hautes' AS name, d84e725b-0a18-43ed-986f-fc7ff8383ef7::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'b00e1bcd-b033-4ada-9a16-5e343e22655e'::uuid AS category_uuid, 'meubles-cuisine-modulaires' AS slug, 'Meubles cuisine modulaires' AS name, 4aa04cc9-73f5-4bfc-9cae-fec8b25c33b6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '494cf100-d598-470e-ac75-587611f7e13c'::uuid AS category_uuid, 'plans-de-travail' AS slug, 'Plans de travail' AS name, 4aa04cc9-73f5-4bfc-9cae-fec8b25c33b6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'de14e83c-1789-46cd-9181-0bd47919c2de'::uuid AS category_uuid, 'ilots-dessertes-cuisine' AS slug, 'Îlots & dessertes cuisine' AS name, 4aa04cc9-73f5-4bfc-9cae-fec8b25c33b6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '772c33d3-fa6a-4338-b207-844bc914ed45'::uuid AS category_uuid, 'ilots' AS slug, 'Îlots' AS name, de14e83c-1789-46cd-9181-0bd47919c2de::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '7ffdf75b-c163-4707-b239-cb41e82d5587'::uuid AS category_uuid, 'dessertes' AS slug, 'Dessertes' AS name, de14e83c-1789-46cd-9181-0bd47919c2de::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'bc2bb02a-8eba-4f8c-9740-b7528971224f'::uuid AS category_uuid, 'rangement-cuisine' AS slug, 'Rangement cuisine' AS name, 4aa04cc9-73f5-4bfc-9cae-fec8b25c33b6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '859f4a11-6047-42b2-b389-b4f380f32cf0'::uuid AS category_uuid, 'chariots-dessertes-roulettes' AS slug, 'Chariots & desserte à roulettes' AS name, 4aa04cc9-73f5-4bfc-9cae-fec8b25c33b6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '072e97f0-04dd-4c01-9b83-bc99adb1514e'::uuid AS category_uuid, 'chariots' AS slug, 'Chariots' AS name, 859f4a11-6047-42b2-b389-b4f380f32cf0::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'c05ecde3-ddc0-4da1-a2eb-ca10bd84d46e'::uuid AS category_uuid, 'dessertes-a-roulettes' AS slug, 'Dessertes à roulettes' AS name, 859f4a11-6047-42b2-b389-b4f380f32cf0::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '1b6f50f0-ad41-4e1b-a142-6d27328b8377'::uuid AS category_uuid, 'tabourets-cuisine' AS slug, 'Tabourets cuisine' AS name, 4aa04cc9-73f5-4bfc-9cae-fec8b25c33b6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '12bf2ad4-d9f7-47dc-8484-efadc4137232'::uuid AS category_uuid, 'racks-epices-etageres-murales' AS slug, 'Racks épices & étagères murales' AS name, 4aa04cc9-73f5-4bfc-9cae-fec8b25c33b6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '82561bec-9bd9-4373-bba6-31363ce0aa26'::uuid AS category_uuid, 'racks-epices' AS slug, 'Racks épices' AS name, 12bf2ad4-d9f7-47dc-8484-efadc4137232::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '47672e25-4c73-453e-9342-82cd618ebee9'::uuid AS category_uuid, 'etageres-murales' AS slug, 'Étagères murales' AS name, 12bf2ad4-d9f7-47dc-8484-efadc4137232::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '4dcf63fa-059d-458e-a276-d2c86edde735'::uuid AS category_uuid, 'bureaux-classiques' AS slug, 'Bureaux classiques' AS name, 141601a5-241d-4446-afd5-86484c7e4dd3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'e7098f41-740f-4cc7-8252-d4142128ecaa'::uuid AS category_uuid, 'bureaux-gaming' AS slug, 'Bureaux gaming' AS name, 141601a5-241d-4446-afd5-86484c7e4dd3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '54f4aa13-3d78-4de7-8165-22883f53623e'::uuid AS category_uuid, 'chaises-bureau-ergonomiques' AS slug, 'Chaises de bureau ergonomiques' AS name, 141601a5-241d-4446-afd5-86484c7e4dd3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '687dbe08-8e22-4b97-8945-76c970fc473e'::uuid AS category_uuid, 'caissons-rangements' AS slug, 'Caissons & rangements' AS name, 141601a5-241d-4446-afd5-86484c7e4dd3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'ca3f6a17-c0f4-4923-a71e-6e124f1e3673'::uuid AS category_uuid, 'caissons' AS slug, 'Caissons' AS name, 687dbe08-8e22-4b97-8945-76c970fc473e::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '965ac8c5-0209-4fdb-bf9f-ed3786a00708'::uuid AS category_uuid, 'caissons-rangements-rangements' AS slug, 'Rangements' AS name, 687dbe08-8e22-4b97-8945-76c970fc473e::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '3c708f06-e27e-40ac-a3e9-3f38f24ef95c'::uuid AS category_uuid, 'bibliotheques-pro' AS slug, 'Bibliothèques pro' AS name, 141601a5-241d-4446-afd5-86484c7e4dd3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '2263a694-ba15-4684-ad50-992fe39392b8'::uuid AS category_uuid, 'support-ecrans-accessoires-bureau' AS slug, 'Support écrans & accessoires bureau' AS name, 141601a5-241d-4446-afd5-86484c7e4dd3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '42520752-3bf2-4759-96f0-c460a1ea6f37'::uuid AS category_uuid, 'support-ecrans' AS slug, 'Support écrans' AS name, 2263a694-ba15-4684-ad50-992fe39392b8::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '6fd192b9-20a1-4fbb-8a0a-faa55422fc4f'::uuid AS category_uuid, 'accessoires-bureau' AS slug, 'Accessoires bureau' AS name, 2263a694-ba15-4684-ad50-992fe39392b8::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'f1da6ae0-6c2a-4ae9-b674-3cda04288761'::uuid AS category_uuid, 'tables-dessin-architecte' AS slug, 'Tables dessin & architecte' AS name, 141601a5-241d-4446-afd5-86484c7e4dd3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'e0c7a7e4-363d-48dd-8b50-548af1782bc9'::uuid AS category_uuid, 'meubles-sous-vasques' AS slug, 'Meubles sous-vasques' AS name, 902903ab-8faa-4b8c-af36-a345781decc2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '4ab7340d-c77b-4e3d-a43a-873248833967'::uuid AS category_uuid, 'colonnes-rangements-bain' AS slug, 'Colonnes & rangements' AS name, 902903ab-8faa-4b8c-af36-a345781decc2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '8f39ec56-818a-4bf1-b8db-2a2934285d82'::uuid AS category_uuid, 'colonnes' AS slug, 'Colonnes' AS name, 4ab7340d-c77b-4e3d-a43a-873248833967::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'cfefd75a-50fc-42e2-bd72-34df6d172668'::uuid AS category_uuid, 'colonnes-rangements-bain-rangements' AS slug, 'Rangements' AS name, 4ab7340d-c77b-4e3d-a43a-873248833967::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '454abe6a-845a-4c95-995e-48e326132d91'::uuid AS category_uuid, 'etageres-murales-bain' AS slug, 'Étagères murales' AS name, 902903ab-8faa-4b8c-af36-a345781decc2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'c19f82f2-dbeb-4125-8af9-ee8e7b91db1f'::uuid AS category_uuid, 'armoires-miroir' AS slug, 'Armoires miroir' AS name, 902903ab-8faa-4b8c-af36-a345781decc2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'c668cfcd-a511-46d2-b516-675a0d87729d'::uuid AS category_uuid, 'bancs-tabourets-bain' AS slug, 'Bancs & tabourets bain' AS name, 902903ab-8faa-4b8c-af36-a345781decc2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'e316c4d7-3fe7-477f-8aa6-916bbb30b2c9'::uuid AS category_uuid, 'bancs' AS slug, 'Bancs' AS name, c668cfcd-a511-46d2-b516-675a0d87729d::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '8e6427a1-0105-44d7-95b4-410f60520f38'::uuid AS category_uuid, 'bancs-tabourets-bain-tabourets' AS slug, 'Tabourets' AS name, c668cfcd-a511-46d2-b516-675a0d87729d::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '66222917-c838-40d5-bcdf-2baa599b2fbc'::uuid AS category_uuid, 'paniers-linge' AS slug, 'Paniers linge' AS name, 902903ab-8faa-4b8c-af36-a345781decc2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'ad6c5515-eb2e-467a-9075-c98794790383'::uuid AS category_uuid, 'porte-serviettes' AS slug, 'Porte-serviettes' AS name, 902903ab-8faa-4b8c-af36-a345781decc2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '880e62b7-6daa-4fc7-a351-d4d62d87efff'::uuid AS category_uuid, 'accessoires-bain' AS slug, 'Accessoires bain' AS name, 902903ab-8faa-4b8c-af36-a345781decc2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '5f05ec6f-5ab0-44ea-a23a-d7330fad8633'::uuid AS category_uuid, 'salons-de-jardin' AS slug, 'Salons de jardin' AS name, a2560621-3944-491a-a0e0-fbb40f84fc17::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'c7173e44-d4cc-4593-879d-d45e532a19dc'::uuid AS category_uuid, 'resine' AS slug, 'Résine' AS name, 5f05ec6f-5ab0-44ea-a23a-d7330fad8633::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '42db5df3-18a0-4496-bb66-7249883b4d1f'::uuid AS category_uuid, 'salons-de-jardin-aluminium' AS slug, 'Aluminium' AS name, 5f05ec6f-5ab0-44ea-a23a-d7330fad8633::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'ddcbec35-dfc6-4886-ba8d-be6d548c19e5'::uuid AS category_uuid, 'salons-de-jardin-bois' AS slug, 'Bois' AS name, 5f05ec6f-5ab0-44ea-a23a-d7330fad8633::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '54f35bd3-3431-429a-bd1c-431f8139f859'::uuid AS category_uuid, 'tables-chaises-exterieures' AS slug, 'Tables & chaises extérieures' AS name, a2560621-3944-491a-a0e0-fbb40f84fc17::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'cd08c6b6-2680-43ea-81ee-168e4fa0f58c'::uuid AS category_uuid, 'tables' AS slug, 'Tables' AS name, 54f35bd3-3431-429a-bd1c-431f8139f859::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'ac501bb7-577f-4930-b5cc-70af56267dac'::uuid AS category_uuid, 'tables-chaises-exterieures-chaises' AS slug, 'Chaises' AS name, 54f35bd3-3431-429a-bd1c-431f8139f859::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '8757e07e-3073-4f57-8874-1170e7510034'::uuid AS category_uuid, 'transats-bains-de-soleil' AS slug, 'Transats & bains de soleil' AS name, a2560621-3944-491a-a0e0-fbb40f84fc17::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '7d85b41f-0f8b-467f-95bc-6a8b6943a99d'::uuid AS category_uuid, 'transats' AS slug, 'Transats' AS name, 8757e07e-3073-4f57-8874-1170e7510034::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '8f1d310c-1c1a-48c2-b600-4c8a124eb44b'::uuid AS category_uuid, 'bains-de-soleil' AS slug, 'Bains de soleil' AS name, 8757e07e-3073-4f57-8874-1170e7510034::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'ffb0658b-56e3-4967-aa5b-c477c0cbc877'::uuid AS category_uuid, 'hamacs-balancelles' AS slug, 'Hamacs & balancelles' AS name, a2560621-3944-491a-a0e0-fbb40f84fc17::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '13ad9e92-2a4b-40b3-9dcb-53a40f02c1f7'::uuid AS category_uuid, 'hamacs' AS slug, 'Hamacs' AS name, ffb0658b-56e3-4967-aa5b-c477c0cbc877::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '3208b9cd-f841-452c-9cd1-3466cdcb3e60'::uuid AS category_uuid, 'balancelles' AS slug, 'Balancelles' AS name, ffb0658b-56e3-4967-aa5b-c477c0cbc877::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '2b8f915b-e965-4660-8216-9440e8f0601e'::uuid AS category_uuid, 'pergolas' AS slug, 'Pergolas' AS name, a2560621-3944-491a-a0e0-fbb40f84fc17::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'ed6fc064-50b9-4e75-bc3f-34358317de93'::uuid AS category_uuid, 'mobilier-exterieur-jardin-parasols' AS slug, 'Parasols' AS name, a2560621-3944-491a-a0e0-fbb40f84fc17::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '1a69ec97-cac0-467b-b024-ef01fc9434a9'::uuid AS category_uuid, 'coffres-rangement-exterieur' AS slug, 'Coffres de rangement extérieur' AS name, a2560621-3944-491a-a0e0-fbb40f84fc17::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '114122e3-6f38-416e-bf3f-e00862d193a2'::uuid AS category_uuid, 'barbecue-cuisine-exterieure' AS slug, 'Barbecue & cuisine d’extérieur' AS name, a2560621-3944-491a-a0e0-fbb40f84fc17::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '8bd52d1f-ab66-4c16-9f63-999ce603a63d'::uuid AS category_uuid, 'barbecue' AS slug, 'Barbecue' AS name, 114122e3-6f38-416e-bf3f-e00862d193a2::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'ea7cd4bf-cce2-4300-b99b-998b72959bcd'::uuid AS category_uuid, 'cuisine-exterieure' AS slug, 'Cuisine d’extérieur' AS name, 114122e3-6f38-416e-bf3f-e00862d193a2::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'd6f9a6f2-d5f1-4488-9766-4bf52394fab4'::uuid AS category_uuid, 'decoration-murale-tableaux' AS slug, 'Tableaux' AS name, ecc1b446-e293-4b1c-a2d4-5123905deb80::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '9debb787-857d-44ac-91cf-01280104b5ea'::uuid AS category_uuid, 'abstraits' AS slug, 'Abstraits' AS name, NULL::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'ced5dfb1-c220-49d3-8b24-a9a123ac9208'::uuid AS category_uuid, 'tableaux-modernes' AS slug, 'Modernes' AS name, NULL::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'd8d4967b-fb79-4a66-9ba3-e25957fae540'::uuid AS category_uuid, 'islamiques' AS slug, 'Islamiques' AS name, NULL::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'b154323a-9d9d-47cc-9ac8-d67711bf76b2'::uuid AS category_uuid, 'affiches-posters' AS slug, 'Affiches & posters' AS name, ecc1b446-e293-4b1c-a2d4-5123905deb80::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '90721903-9203-49d1-ac71-16d9a3558f64'::uuid AS category_uuid, 'affiches' AS slug, 'Affiches' AS name, b154323a-9d9d-47cc-9ac8-d67711bf76b2::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'bff233e3-9823-4dac-a6f4-16e529941c96'::uuid AS category_uuid, 'affiches-posters-posters' AS slug, 'Posters' AS name, b154323a-9d9d-47cc-9ac8-d67711bf76b2::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'b3029eb9-04b6-47c8-ba18-c57521dd5a2e'::uuid AS category_uuid, 'miroirs-decoratifs' AS slug, 'Miroirs décoratifs' AS name, ecc1b446-e293-4b1c-a2d4-5123905deb80::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '23b45727-8161-4c42-bf4b-396320e26bdd'::uuid AS category_uuid, 'horloges-murales' AS slug, 'Horloges murales' AS name, ecc1b446-e293-4b1c-a2d4-5123905deb80::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '44b45841-4ec9-4e59-93b2-6a798d8bf501'::uuid AS category_uuid, 'decoration-murale-stickers-muraux' AS slug, 'Stickers muraux' AS name, ecc1b446-e293-4b1c-a2d4-5123905deb80::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'ff23460e-88fa-4a54-99b6-72690b920eaa'::uuid AS category_uuid, 'decorations-metal' AS slug, 'Décorations en métal' AS name, ecc1b446-e293-4b1c-a2d4-5123905deb80::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '32005835-4480-45b2-af61-499c6ac79fae'::uuid AS category_uuid, 'panneaux-muraux-3d' AS slug, 'Panneaux muraux 3D' AS name, ecc1b446-e293-4b1c-a2d4-5123905deb80::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '2a8e9459-9631-4d87-b7be-aea3f90acaea'::uuid AS category_uuid, 'tapisseries-toiles-imprimees' AS slug, 'Tapisseries & toiles imprimées' AS name, ecc1b446-e293-4b1c-a2d4-5123905deb80::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '65cb2509-89c6-424d-ad52-4aadf1a814e2'::uuid AS category_uuid, 'tapisseries' AS slug, 'Tapisseries' AS name, 2a8e9459-9631-4d87-b7be-aea3f90acaea::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '7782f1f1-f909-40bc-9389-9cfa63af69d9'::uuid AS category_uuid, 'toiles-imprimees' AS slug, 'Toiles imprimées' AS name, 2a8e9459-9631-4d87-b7be-aea3f90acaea::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '0be91864-08f5-41ca-863c-c2fd1082d276'::uuid AS category_uuid, 'lampes-de-table' AS slug, 'Lampes de table' AS name, cf757a38-13f2-4b94-96a9-7389dee9f2b2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'ee623e43-05be-4e54-910a-2dd7759d19f8'::uuid AS category_uuid, 'lampadaires' AS slug, 'Lampadaires' AS name, cf757a38-13f2-4b94-96a9-7389dee9f2b2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '70bfe529-e405-4189-91c9-bd40ad7b1b69'::uuid AS category_uuid, 'suspensions-lustres' AS slug, 'Suspensions & lustres' AS name, cf757a38-13f2-4b94-96a9-7389dee9f2b2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '0bb96298-c7c0-4f26-84c5-ffffadd2c919'::uuid AS category_uuid, 'suspensions' AS slug, 'Suspensions' AS name, 70bfe529-e405-4189-91c9-bd40ad7b1b69::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'cf1c621e-2e8b-4b4c-ae67-14efba6f7e5f'::uuid AS category_uuid, 'lustres' AS slug, 'Lustres' AS name, 70bfe529-e405-4189-91c9-bd40ad7b1b69::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '80464d60-f518-4d73-90da-2abdfbb134b9'::uuid AS category_uuid, 'appliques-murales' AS slug, 'Appliques murales' AS name, cf757a38-13f2-4b94-96a9-7389dee9f2b2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'b1b89da5-2e68-41cb-bdab-28fd3ee75575'::uuid AS category_uuid, 'luminaires-led' AS slug, 'Luminaires LED' AS name, cf757a38-13f2-4b94-96a9-7389dee9f2b2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '3f445089-3dfb-4510-a320-a420d72dcf87'::uuid AS category_uuid, 'lampes-de-bureau' AS slug, 'Lampes de bureau' AS name, cf757a38-13f2-4b94-96a9-7389dee9f2b2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'fb31042d-57fe-4159-974f-3eab12c922d4'::uuid AS category_uuid, 'guirlandes-lumineuses' AS slug, 'Guirlandes lumineuses' AS name, cf757a38-13f2-4b94-96a9-7389dee9f2b2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '5c079271-62c5-4930-a9ca-6e3d52dd1f0d'::uuid AS category_uuid, 'rubans-led' AS slug, 'Rubans LED' AS name, cf757a38-13f2-4b94-96a9-7389dee9f2b2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '08b89f9b-36a1-4ca6-b0ba-baeb70139027'::uuid AS category_uuid, 'luminaires-eclairage-eclairage-exterieur' AS slug, 'Éclairage extérieur' AS name, cf757a38-13f2-4b94-96a9-7389dee9f2b2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '1f54adfd-04f0-478e-beae-05cea8272e80'::uuid AS category_uuid, 'tapis-textiles-maison-tapis' AS slug, 'Tapis' AS name, adfb7695-39b7-44d2-9596-45090059d283::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '9b9ad97c-824b-4148-a705-c14b5a395bc2'::uuid AS category_uuid, 'salon' AS slug, 'Salon' AS name, NULL::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '51117f51-2891-4399-b208-f98371b59445'::uuid AS category_uuid, 'chambre' AS slug, 'Chambre' AS name, NULL::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'aa254b5c-ef4e-4f6f-916b-894464755d55'::uuid AS category_uuid, 'tapis-orientaux' AS slug, 'Orientaux' AS name, NULL::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '5f41e298-8975-4b68-9c33-6a7614449182'::uuid AS category_uuid, 'tapis-modernes' AS slug, 'Modernes' AS name, NULL::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'f3fb1fc9-e847-41f6-954c-0e1b155ca5f0'::uuid AS category_uuid, 'tapis-textiles-maison-rideaux-voilages' AS slug, 'Rideaux & voilages' AS name, adfb7695-39b7-44d2-9596-45090059d283::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'f7c0adbd-b6e2-470d-a131-60e03ce9be9e'::uuid AS category_uuid, 'rideaux' AS slug, 'Rideaux' AS name, NULL::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'bda957a5-9c6d-4a9f-bc9b-6bb0db4ae06d'::uuid AS category_uuid, 'voilages' AS slug, 'Voilages' AS name, NULL::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'f3253001-bba1-4bcb-9636-8df77f610905'::uuid AS category_uuid, 'stores' AS slug, 'Stores' AS name, adfb7695-39b7-44d2-9596-45090059d283::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '641a36bd-7824-4c6a-8b95-4ee8e22c1d33'::uuid AS category_uuid, 'rouleaux' AS slug, 'Rouleaux' AS name, f3253001-bba1-4bcb-9636-8df77f610905::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '82a20a5b-9627-4c61-84ee-7b78d5eed71a'::uuid AS category_uuid, 'venitiens' AS slug, 'Vénitiens' AS name, f3253001-bba1-4bcb-9636-8df77f610905::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '7eca83fe-572f-4540-a838-3ac9dc18ef9c'::uuid AS category_uuid, 'stores-bambou' AS slug, 'Bambou' AS name, f3253001-bba1-4bcb-9636-8df77f610905::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '92a32953-7c48-42c2-98c6-21b1fa6787dd'::uuid AS category_uuid, 'coussins-housses' AS slug, 'Coussins & housses' AS name, adfb7695-39b7-44d2-9596-45090059d283::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'f7cf935f-b576-4a82-b1a3-b8a06e5c9e52'::uuid AS category_uuid, 'coussins-housses-coussins' AS slug, 'Coussins' AS name, 92a32953-7c48-42c2-98c6-21b1fa6787dd::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '6571ce86-7893-4df5-8d8c-a56ab5f8d28b'::uuid AS category_uuid, 'coussins-housses-housses' AS slug, 'Housses' AS name, 92a32953-7c48-42c2-98c6-21b1fa6787dd::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'e9d4e586-5d4d-4fa7-ada9-be3c04282ee2'::uuid AS category_uuid, 'jetes-plaids' AS slug, 'Jetés & plaids' AS name, adfb7695-39b7-44d2-9596-45090059d283::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '2bbd7804-d1e7-4ceb-a2d8-6327d28608fb'::uuid AS category_uuid, 'jetes' AS slug, 'Jetés' AS name, e9d4e586-5d4d-4fa7-ada9-be3c04282ee2::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '116b6499-628f-4bfd-9eb8-7452e9902ed2'::uuid AS category_uuid, 'plaids' AS slug, 'Plaids' AS name, e9d4e586-5d4d-4fa7-ada9-be3c04282ee2::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),
  level = EXCLUDED.level,
  category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),
  updated_at = NOW();

-- Lot 23 terminé: 100 entrées
