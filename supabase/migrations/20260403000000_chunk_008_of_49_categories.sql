-- ============================================================
-- CHUNK 8/49 — 100 catégories
-- Total: 4836 catégories
-- Exécuter dans l'ordre dans Supabase SQL Editor
-- ============================================================

INSERT INTO public.categories
  (category_uuid, slug, name, parent_id, level, is_active, created_at, updated_at)
VALUES
  SELECT 'f1b583d5-943f-421b-92eb-b4cf7bbc0a93'::uuid AS category_uuid, 'gants-moto' AS slug, 'Gants moto' AS name, a4b5e56b-aefd-41b8-9429-41fb4028956f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'be60ef60-5737-4008-ae9d-872511953cc2'::uuid AS category_uuid, 'bottes-chaussures' AS slug, 'Bottes & chaussures' AS name, a4b5e56b-aefd-41b8-9429-41fb4028956f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '7ca82e61-858f-4771-bcec-9c9545fe13ea'::uuid AS category_uuid, 'protections-moto' AS slug, 'Protections (dorsales, genouillères)' AS name, a4b5e56b-aefd-41b8-9429-41fb4028956f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '67157401-e6a3-42e0-a676-7b05ad47310f'::uuid AS category_uuid, 'valises-top-cases' AS slug, 'Valises & top cases' AS name, a4b5e56b-aefd-41b8-9429-41fb4028956f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'e4373455-cff8-4105-8008-0fee151eee19'::uuid AS category_uuid, 'pots-echappement-moto' AS slug, 'Pots d’échappement moto' AS name, a4b5e56b-aefd-41b8-9429-41fb4028956f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '520d1368-842d-423f-abe5-4964f3a7542a'::uuid AS category_uuid, 'kits-chaine' AS slug, 'Kits chaîne' AS name, a4b5e56b-aefd-41b8-9429-41fb4028956f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '82ec4d89-e4f8-48af-bfe7-bf89bcd61aa7'::uuid AS category_uuid, 'batteries-moto' AS slug, 'Batteries moto' AS name, a4b5e56b-aefd-41b8-9429-41fb4028956f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '30b1e9c6-2ec0-46d7-9f42-b1eb4fd20349'::uuid AS category_uuid, 'pneus-moto' AS slug, 'Pneus moto' AS name, a4b5e56b-aefd-41b8-9429-41fb4028956f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '93474c7e-a55a-4b83-9e1a-f16a849bb089'::uuid AS category_uuid, 'guidons' AS slug, 'Guidons' AS name, a4b5e56b-aefd-41b8-9429-41fb4028956f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '21e63db3-772d-4aef-907d-8b8bd4d57141'::uuid AS category_uuid, 'leviers' AS slug, 'Leviers' AS name, a4b5e56b-aefd-41b8-9429-41fb4028956f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '2101550e-a8a2-478d-ba69-f5ba490e9b52'::uuid AS category_uuid, 'pieces-accessoires-moto-retroviseurs' AS slug, 'Rétroviseurs' AS name, a4b5e56b-aefd-41b8-9429-41fb4028956f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '4638e74d-c3af-4666-a665-f40b7977aef7'::uuid AS category_uuid, 'pieces-moteur-moto' AS slug, 'Pièces moteur moto' AS name, a4b5e56b-aefd-41b8-9429-41fb4028956f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '6cd18165-9b53-4d8d-b8a1-b23b51768a5a'::uuid AS category_uuid, 'huile-moto' AS slug, 'Huile moto' AS name, a4b5e56b-aefd-41b8-9429-41fb4028956f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'b2489d21-7385-41ab-befe-dfcd975c96a9'::uuid AS category_uuid, 'pieces-accessoires-moto-kits-reparation' AS slug, 'Kits de réparation' AS name, a4b5e56b-aefd-41b8-9429-41fb4028956f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '10ef633b-380b-4e24-8861-9feea6f66aaf'::uuid AS category_uuid, 'remorques-utilitaires' AS slug, 'Remorques utilitaires' AS name, 1c002ef1-476b-4c58-9e0e-b95ca125560d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '29cebb45-bf40-4f43-875e-983bc7ea2516'::uuid AS category_uuid, 'remorques-porte-voitures' AS slug, 'Remorques porte-voitures' AS name, 1c002ef1-476b-4c58-9e0e-b95ca125560d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'dbabd208-9244-4780-a202-3680dab71a75'::uuid AS category_uuid, 'remorques-bagageres' AS slug, 'Remorques bagagères' AS name, 1c002ef1-476b-4c58-9e0e-b95ca125560d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '6798e5cb-cc02-44ad-b2d7-cfad92c71d49'::uuid AS category_uuid, 'remorques-betail' AS slug, 'Remorques bétail' AS name, 1c002ef1-476b-4c58-9e0e-b95ca125560d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '82b8a925-022f-4296-8b76-17f539fce9d3'::uuid AS category_uuid, 'remorques-frigorifiques' AS slug, 'Remorques frigorifiques' AS name, 1c002ef1-476b-4c58-9e0e-b95ca125560d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'a167cb64-53ad-4e74-9a1c-a34751fce20a'::uuid AS category_uuid, 'remorques-attelages-remorques-agricoles' AS slug, 'Remorques agricoles' AS name, 1c002ef1-476b-4c58-9e0e-b95ca125560d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'd02e7f1e-1dea-481d-a16b-5d02cc4bdf00'::uuid AS category_uuid, 'attelages' AS slug, 'Attelages' AS name, 1c002ef1-476b-4c58-9e0e-b95ca125560d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '7ccc2fa5-c477-4560-a66e-0bed333f74c4'::uuid AS category_uuid, 'barres-remorquage' AS slug, 'Barres de remorquage' AS name, 1c002ef1-476b-4c58-9e0e-b95ca125560d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'aed2864a-4eab-43a4-a6b1-2605ba67eec6'::uuid AS category_uuid, 'porte-motos' AS slug, 'Porte-motos' AS name, 1c002ef1-476b-4c58-9e0e-b95ca125560d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '023557ac-225b-4cc5-b92c-533e54776aab'::uuid AS category_uuid, 'porte-velos' AS slug, 'Porte-vélos' AS name, 1c002ef1-476b-4c58-9e0e-b95ca125560d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '18f6646c-a247-4ed4-a976-7e3686d25092'::uuid AS category_uuid, 'valises-diagnostic-auto' AS slug, 'Valises de diagnostic auto' AS name, 66ce16da-33f2-47b0-95c1-51b513dee0db::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '427ae492-15dd-457f-a928-15b896b0967e'::uuid AS category_uuid, 'lecteurs-obd2' AS slug, 'Lecteurs OBD2' AS name, 66ce16da-33f2-47b0-95c1-51b513dee0db::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '758d15f5-1a56-415e-b354-7c93ae33f3e9'::uuid AS category_uuid, 'ponts-elevateurs' AS slug, 'Ponts élévateurs' AS name, 66ce16da-33f2-47b0-95c1-51b513dee0db::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'f79e75ea-bf9b-4a68-b970-64299210c419'::uuid AS category_uuid, 'diagnostic-atelier-compresseurs' AS slug, 'Compresseurs' AS name, 66ce16da-33f2-47b0-95c1-51b513dee0db::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'f10b782f-7406-4c51-a1f1-251d24825452'::uuid AS category_uuid, 'crics-hydrauliques' AS slug, 'Crics hydrauliques' AS name, 66ce16da-33f2-47b0-95c1-51b513dee0db::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '9eb03c0f-afad-4ce1-adb4-c9b813734cdd'::uuid AS category_uuid, 'outils-mecaniques' AS slug, 'Outils mécaniques' AS name, 66ce16da-33f2-47b0-95c1-51b513dee0db::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'a982bca7-c316-4020-a4dc-6a43244706db'::uuid AS category_uuid, 'chargeurs-batterie' AS slug, 'Chargeurs de batterie' AS name, 66ce16da-33f2-47b0-95c1-51b513dee0db::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '12a5da78-f046-4918-a1c7-f694e9dc8426'::uuid AS category_uuid, 'boosters' AS slug, 'Boosters' AS name, 66ce16da-33f2-47b0-95c1-51b513dee0db::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'db77e45b-f654-4d76-8bb8-117513dab565'::uuid AS category_uuid, 'stations-climatisation' AS slug, 'Stations de climatisation' AS name, 66ce16da-33f2-47b0-95c1-51b513dee0db::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '9bab56be-9f8e-47cd-ad6c-e4052cc70e46'::uuid AS category_uuid, 'diagnostic-atelier-demonte-pneus' AS slug, 'Démonte-pneus' AS name, 66ce16da-33f2-47b0-95c1-51b513dee0db::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '4e0627f6-a186-453b-b2f4-942626ec3810'::uuid AS category_uuid, 'equilibreuses' AS slug, 'Équilibreuses' AS name, 66ce16da-33f2-47b0-95c1-51b513dee0db::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '0c9452e5-0e00-4f3d-be1e-65a748570f4d'::uuid AS category_uuid, 'outils-specialises-moto' AS slug, 'Outils spécialisés moto' AS name, 66ce16da-33f2-47b0-95c1-51b513dee0db::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '4a677ed5-3b5f-4905-811b-7adaec9df2f4'::uuid AS category_uuid, 'bornes-recharge' AS slug, 'Bornes de recharge' AS name, 635341e3-98e0-410f-a4ca-5072f45f9b3a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '5f469ecc-1c60-42cb-8e66-b04066e9c681'::uuid AS category_uuid, 'stations-recharge-domestiques' AS slug, 'Stations de recharge domestiques' AS name, 635341e3-98e0-410f-a4ca-5072f45f9b3a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '42370a96-623b-4604-bb4e-8b285827b3b6'::uuid AS category_uuid, 'adaptateurs-voitures-electriques' AS slug, 'Adaptateurs pour voitures électriques' AS name, 635341e3-98e0-410f-a4ca-5072f45f9b3a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '5170089d-5264-4392-9365-353aaf8dbcf3'::uuid AS category_uuid, 'jerricans' AS slug, 'Jerricans' AS name, 635341e3-98e0-410f-a4ca-5072f45f9b3a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '5bebb180-8e20-42ba-a9d6-ac4e14cd1f58'::uuid AS category_uuid, 'additifs-carburant' AS slug, 'Additifs carburant' AS name, 635341e3-98e0-410f-a4ca-5072f45f9b3a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '565f9557-557f-4c7d-aa3f-b8314341b978'::uuid AS category_uuid, 'reparation-auto' AS slug, 'Réparation auto' AS name, b4c3ffc5-ea60-4c2f-9572-5c7caefee2af::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'ce926f85-8453-4c82-b669-4be0a1405761'::uuid AS category_uuid, 'reparation-moto' AS slug, 'Réparation moto' AS name, b4c3ffc5-ea60-4c2f-9572-5c7caefee2af::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '234e9b9f-d1c5-42a7-94c6-9cb510dcd0a7'::uuid AS category_uuid, 'entretien-vidange' AS slug, 'Entretien & vidange' AS name, b4c3ffc5-ea60-4c2f-9572-5c7caefee2af::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '9c34023e-5827-409b-a48b-58463d467b88'::uuid AS category_uuid, 'lavage-automobile' AS slug, 'Lavage automobile' AS name, b4c3ffc5-ea60-4c2f-9572-5c7caefee2af::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'dbdc06cb-c04c-434e-8113-5bdf8b9f2022'::uuid AS category_uuid, 'depannage' AS slug, 'Dépannage' AS name, b4c3ffc5-ea60-4c2f-9572-5c7caefee2af::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'a61ed881-b6ef-43ed-b7b9-1b280046f3e1'::uuid AS category_uuid, 'remorquage' AS slug, 'Remorquage' AS name, b4c3ffc5-ea60-4c2f-9572-5c7caefee2af::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '2dbc1f35-600f-4fd7-8881-4f059bbcf7d2'::uuid AS category_uuid, 'reprogrammation-moteur' AS slug, 'Reprogrammation moteur' AS name, b4c3ffc5-ea60-4c2f-9572-5c7caefee2af::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'f2a96558-88e9-430e-8049-719910cb7494'::uuid AS category_uuid, 'installation-accessoires' AS slug, 'Installation accessoires' AS name, b4c3ffc5-ea60-4c2f-9572-5c7caefee2af::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'aba7a6f2-3df6-44c6-a547-cbed9a73b338'::uuid AS category_uuid, 'renovation-phares' AS slug, 'Rénovation phares' AS name, b4c3ffc5-ea60-4c2f-9572-5c7caefee2af::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '685d3b0e-33c2-4881-96f1-4964ff0efc47'::uuid AS category_uuid, 'remplacement-pare-brise' AS slug, 'Remplacement pare-brise' AS name, b4c3ffc5-ea60-4c2f-9572-5c7caefee2af::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'ada18646-e41e-4d45-9037-85ca2aa3b2d2'::uuid AS category_uuid, 'renault' AS slug, 'Renault' AS name, 791cf892-3632-4b67-bcab-8051d97dcd62::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'affa6dcc-afdc-4fa2-8db6-2c13e41c6d06'::uuid AS category_uuid, 'peugeot' AS slug, 'Peugeot' AS name, 791cf892-3632-4b67-bcab-8051d97dcd62::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '7ac132f7-2a3b-4cf6-9dac-ba3fec491753'::uuid AS category_uuid, 'citroen' AS slug, 'Citroën' AS name, 791cf892-3632-4b67-bcab-8051d97dcd62::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '1edf8378-a8f8-462a-9a17-4c88ec5454a2'::uuid AS category_uuid, 'dacia' AS slug, 'Dacia' AS name, 791cf892-3632-4b67-bcab-8051d97dcd62::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '0c6bffc6-e55a-4de1-b044-c07ff59b4ada'::uuid AS category_uuid, 'volkswagen' AS slug, 'Volkswagen' AS name, 791cf892-3632-4b67-bcab-8051d97dcd62::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '61789428-9b3a-4b86-bcef-da06ae55e470'::uuid AS category_uuid, 'audi' AS slug, 'Audi' AS name, 791cf892-3632-4b67-bcab-8051d97dcd62::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '8c29bf65-2581-4730-bb33-30b7c9d6831e'::uuid AS category_uuid, 'bmw' AS slug, 'BMW' AS name, 791cf892-3632-4b67-bcab-8051d97dcd62::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '05634095-0533-4b7f-8643-2455aed8f5c1'::uuid AS category_uuid, 'mercedes' AS slug, 'Mercedes' AS name, 791cf892-3632-4b67-bcab-8051d97dcd62::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'f006756d-e8bf-4025-b23d-00d7b84d8cb5'::uuid AS category_uuid, 'toyota' AS slug, 'Toyota' AS name, 791cf892-3632-4b67-bcab-8051d97dcd62::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'f344da3b-1f32-42c9-bf6d-ea2400f1d142'::uuid AS category_uuid, 'kia' AS slug, 'Kia' AS name, 791cf892-3632-4b67-bcab-8051d97dcd62::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'fdce037b-9b72-4521-8b24-89c9739a8489'::uuid AS category_uuid, 'hyundai' AS slug, 'Hyundai' AS name, 791cf892-3632-4b67-bcab-8051d97dcd62::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'e6a868d0-7783-42b4-afdd-e2b2aa7935e8'::uuid AS category_uuid, 'ford' AS slug, 'Ford' AS name, 791cf892-3632-4b67-bcab-8051d97dcd62::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '65040f30-1cfb-4f19-92bd-5cf60c1ff360'::uuid AS category_uuid, 'nissan' AS slug, 'Nissan' AS name, 791cf892-3632-4b67-bcab-8051d97dcd62::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '61cc664f-3a78-4546-8b80-c8f777df04b6'::uuid AS category_uuid, 'fiat' AS slug, 'Fiat' AS name, 791cf892-3632-4b67-bcab-8051d97dcd62::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '9b4b1c83-c55e-4135-be25-8c93ddc533a0'::uuid AS category_uuid, 'honda' AS slug, 'Honda' AS name, 791cf892-3632-4b67-bcab-8051d97dcd62::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'cf3ecef9-c918-4fbe-8531-5b9c80077be8'::uuid AS category_uuid, 'marques-populaires-vehicules-yamaha' AS slug, 'Yamaha' AS name, 791cf892-3632-4b67-bcab-8051d97dcd62::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '8467c671-225c-43f1-8d83-9bbdb001819d'::uuid AS category_uuid, 'suzuki' AS slug, 'Suzuki' AS name, 791cf892-3632-4b67-bcab-8051d97dcd62::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '3378ad88-75d5-49cf-b283-465ef04b684e'::uuid AS category_uuid, 'piaggio' AS slug, 'Piaggio' AS name, 791cf892-3632-4b67-bcab-8051d97dcd62::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'ede06db9-9891-4082-b944-4dc14f73af95'::uuid AS category_uuid, 'ducati' AS slug, 'Ducati' AS name, 791cf892-3632-4b67-bcab-8051d97dcd62::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '80579458-57b8-4bcb-a891-0bbdcd9a0d68'::uuid AS category_uuid, 'ktm' AS slug, 'KTM' AS name, 791cf892-3632-4b67-bcab-8051d97dcd62::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '1180e78c-de25-4ef3-9213-ca04f73848dd'::uuid AS category_uuid, 'scania' AS slug, 'Scania' AS name, 791cf892-3632-4b67-bcab-8051d97dcd62::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '94b705a9-1ab5-4b8a-8950-75d648b0a130'::uuid AS category_uuid, 'volvo-trucks' AS slug, 'Volvo Trucks' AS name, 791cf892-3632-4b67-bcab-8051d97dcd62::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '7831f8eb-e8df-4aa2-969a-61625005a5dd'::uuid AS category_uuid, 'man' AS slug, 'MAN' AS name, 791cf892-3632-4b67-bcab-8051d97dcd62::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '6af60afb-8a4f-4d7c-b494-d071eac4518e'::uuid AS category_uuid, 'iveco' AS slug, 'Iveco' AS name, 791cf892-3632-4b67-bcab-8051d97dcd62::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'e8906759-6a49-481e-833e-0f87f24a60bf'::uuid AS category_uuid, 'velo-cyclisme-equipements' AS slug, 'Vélo, Cyclisme & Équipements' AS name, NULL::uuid AS parent_id, 1 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'a2fba42c-341b-4eb4-af67-69f4211a4929'::uuid AS category_uuid, 'types-de-velos' AS slug, 'Types de vélos' AS name, e8906759-6a49-481e-833e-0f87f24a60bf::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'f7d3f5cd-5b68-4f4b-8ce8-78da8d5f55b5'::uuid AS category_uuid, 'equipements-cyclistes' AS slug, 'Équipements cyclistes' AS name, e8906759-6a49-481e-833e-0f87f24a60bf::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '1d76bcf8-869a-426c-a484-d9553c341f2c'::uuid AS category_uuid, 'composants-pieces-detachees' AS slug, 'Composants & pièces détachées' AS name, e8906759-6a49-481e-833e-0f87f24a60bf::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '87d22dae-8bb3-4278-96ab-57035d69f7c4'::uuid AS category_uuid, 'accessoires-velos' AS slug, 'Accessoires vélos' AS name, e8906759-6a49-481e-833e-0f87f24a60bf::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'e77aac0f-5493-4ff6-9a5c-3caeda2536bc'::uuid AS category_uuid, 'outils-entretien' AS slug, 'Outils & entretien' AS name, e8906759-6a49-481e-833e-0f87f24a60bf::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '8c63a840-5193-4b39-a126-7f7e3e44a060'::uuid AS category_uuid, 'rangement-transport' AS slug, 'Rangement & transport' AS name, e8906759-6a49-481e-833e-0f87f24a60bf::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '8fe1cdb9-e085-4200-aaa9-9e075c1c667e'::uuid AS category_uuid, 'equipements-sportifs-cyclisme' AS slug, 'Équipements sportifs liés au cyclisme' AS name, e8906759-6a49-481e-833e-0f87f24a60bf::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '6b0972e4-406e-411c-a20e-3dc18506253a'::uuid AS category_uuid, 'velos-de-route' AS slug, 'Vélos de route' AS name, a2fba42c-341b-4eb4-af67-69f4211a4929::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '784b80bd-37d0-463e-b84e-b44f17581431'::uuid AS category_uuid, 'velos-de-montagne-vtt' AS slug, 'Vélos de montagne (VTT)' AS name, a2fba42c-341b-4eb4-af67-69f4211a4929::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '7074f04d-3b53-4526-bb90-308c05fa8137'::uuid AS category_uuid, 'velos-hybrides' AS slug, 'Vélos hybrides' AS name, a2fba42c-341b-4eb4-af67-69f4211a4929::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '1c29bc08-ab32-49a3-adac-81557d3700da'::uuid AS category_uuid, 'velos-gravel' AS slug, 'Vélos gravel' AS name, a2fba42c-341b-4eb4-af67-69f4211a4929::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '73361b31-1aae-45de-a0bd-0019ee6ef5d7'::uuid AS category_uuid, 'velos-de-ville' AS slug, 'Vélos de ville' AS name, a2fba42c-341b-4eb4-af67-69f4211a4929::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '96e56bdd-680f-4faa-a764-e6e65ff4ad42'::uuid AS category_uuid, 'velos-pliants' AS slug, 'Vélos pliants' AS name, a2fba42c-341b-4eb4-af67-69f4211a4929::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '560d2fac-cfef-4abc-9874-803de51cfc2d'::uuid AS category_uuid, 'velos-bmx' AS slug, 'Vélos BMX' AS name, a2fba42c-341b-4eb4-af67-69f4211a4929::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '7c780811-c33a-4194-a347-fde1d8faae18'::uuid AS category_uuid, 'velos-electriques-vae' AS slug, 'Vélos électriques (VAE)' AS name, a2fba42c-341b-4eb4-af67-69f4211a4929::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'a8cc5512-b4de-43ac-b14d-ffc0f6e477bf'::uuid AS category_uuid, 'velos-cargo' AS slug, 'Vélos cargo' AS name, a2fba42c-341b-4eb4-af67-69f4211a4929::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'ce084d7a-cb16-4e79-981d-551e58e25498'::uuid AS category_uuid, 'tandems' AS slug, 'Tandems' AS name, a2fba42c-341b-4eb4-af67-69f4211a4929::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'd60970ef-d926-465a-a705-485571316690'::uuid AS category_uuid, 'velos-enfants' AS slug, 'Vélos enfants' AS name, a2fba42c-341b-4eb4-af67-69f4211a4929::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'e27b588b-82ea-4997-a303-dacef21d67b8'::uuid AS category_uuid, 'draisiennes' AS slug, 'Draisiennes' AS name, a2fba42c-341b-4eb4-af67-69f4211a4929::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'f0566b85-fe05-4c69-8e17-8231032c6b0d'::uuid AS category_uuid, 'casques' AS slug, 'Casques' AS name, f7d3f5cd-5b68-4f4b-8ce8-78da8d5f55b5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'c5334966-085d-4304-9e2d-aab544bd6bf0'::uuid AS category_uuid, 'equipements-cyclistes-gants' AS slug, 'Gants' AS name, f7d3f5cd-5b68-4f4b-8ce8-78da8d5f55b5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '8a35f94f-4de9-4640-8352-c71013735dc1'::uuid AS category_uuid, 'lunettes-de-cyclisme' AS slug, 'Lunettes de cyclisme' AS name, f7d3f5cd-5b68-4f4b-8ce8-78da8d5f55b5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'f6e67b96-3c38-4b1d-b0db-dcf883cc3cd9'::uuid AS category_uuid, 'maillots' AS slug, 'Maillots' AS name, f7d3f5cd-5b68-4f4b-8ce8-78da8d5f55b5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '7eb49dff-5d65-436a-ae65-f087f7a6d83e'::uuid AS category_uuid, 'cuissards' AS slug, 'Cuissards' AS name, f7d3f5cd-5b68-4f4b-8ce8-78da8d5f55b5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),
  level = EXCLUDED.level,
  category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),
  updated_at = NOW();

-- Lot 8 terminé: 100 entrées
