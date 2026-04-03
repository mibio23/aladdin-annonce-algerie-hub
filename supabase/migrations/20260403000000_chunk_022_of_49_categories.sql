-- ============================================================
-- CHUNK 22/49 — 100 catégories
-- Total: 4836 catégories
-- Exécuter dans l'ordre dans Supabase SQL Editor
-- ============================================================

INSERT INTO public.categories
  (category_uuid, slug, name, parent_id, level, is_active, created_at, updated_at)
VALUES
  SELECT '77855650-4e01-4e7d-a7f8-051cb5edbe64'::uuid AS category_uuid, 'mini-fers-vapeur' AS slug, 'Mini fers à vapeur' AS name, c5fda5fb-8ee9-4bd9-b0b3-4d2749bc8558::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '38ebee7c-f244-4ade-a806-0e03c72ff343'::uuid AS category_uuid, 'appareils-camping' AS slug, 'Petits appareils de camping' AS name, c5fda5fb-8ee9-4bd9-b0b3-4d2749bc8558::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'e617d989-9a07-4609-9aa5-d1198c6500a2'::uuid AS category_uuid, 'parafoudres' AS slug, 'Parafoudres' AS name, 553f0e8e-90fe-47c5-8851-7bb18d1a0b77::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'a320d32f-9fbc-4c6d-98aa-14a7d2972b79'::uuid AS category_uuid, 'multiprises-intelligentes' AS slug, 'Multiprises intelligentes' AS name, 553f0e8e-90fe-47c5-8851-7bb18d1a0b77::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '9968dbda-6eaa-4a04-889e-e73d08b45d73'::uuid AS category_uuid, 'regulateurs-tension' AS slug, 'Régulateurs de tension' AS name, 553f0e8e-90fe-47c5-8851-7bb18d1a0b77::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'f5f0449b-d9d7-433b-8d15-78f25f2c54ba'::uuid AS category_uuid, 'onduleurs-domestiques' AS slug, 'Onduleurs domestiques' AS name, 553f0e8e-90fe-47c5-8851-7bb18d1a0b77::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '8807644e-1faa-4600-9264-5ec933dc6edc'::uuid AS category_uuid, 'marques-populaires-samsung' AS slug, 'Samsung' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'd872782f-898c-46b4-b560-3da9b139b5a9'::uuid AS category_uuid, 'marques-populaires-lg' AS slug, 'LG' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '6fac66c5-04ef-4641-8d29-9f3154f691e0'::uuid AS category_uuid, 'marques-populaires-beko' AS slug, 'Beko' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'e9230770-b3e9-4ea3-b6d3-dec621d176b3'::uuid AS category_uuid, 'marques-populaires-bosch' AS slug, 'Bosch' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '8f284504-d0be-4179-a1f0-48e1bbfca1c6'::uuid AS category_uuid, 'siemens' AS slug, 'Siemens' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'c8e4127d-f7e6-4ec9-8ba8-52cc5c8e4fa8'::uuid AS category_uuid, 'marques-populaires-whirlpool' AS slug, 'Whirlpool' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '6a00f475-98e4-4adf-b699-335933bd137d'::uuid AS category_uuid, 'brandt' AS slug, 'Brandt' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '79ced0eb-82ea-4c10-a652-14838a867643'::uuid AS category_uuid, 'kenwood' AS slug, 'Kenwood' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'ba348e67-9996-4756-b813-c99a6e8f45f7'::uuid AS category_uuid, 'marques-populaires-moulinex' AS slug, 'Moulinex' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '835b18e7-5adc-4c7d-8de2-9cf8453528e9'::uuid AS category_uuid, 'philips' AS slug, 'Philips' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'e3a8038a-4c4d-48ee-89cc-d5680e9a3eb8'::uuid AS category_uuid, 'hisense' AS slug, 'Hisense' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '3eb5cf8e-f32e-40a9-a6d1-7588bdf69867'::uuid AS category_uuid, 'haier' AS slug, 'Haier' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '2c4d9d4d-334f-4953-a3b3-f3ef9843b8ea'::uuid AS category_uuid, 'candy' AS slug, 'Candy' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'e0dfb848-62a5-4e74-9e38-aff984059112'::uuid AS category_uuid, 'indesit' AS slug, 'Indesit' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'd572eb10-0679-4fcd-b51a-f4df17eeae99'::uuid AS category_uuid, 'midea' AS slug, 'Midea' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '63d6a16f-1852-48e6-b812-766e048a1def'::uuid AS category_uuid, 'delonghi' AS slug, 'Delonghi' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '6cc97138-eaa7-4d3b-9bea-4171c548db3d'::uuid AS category_uuid, 'severin' AS slug, 'Severin' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '6c4ec193-2271-46b2-be6b-232c67ea07f8'::uuid AS category_uuid, 'rowenta' AS slug, 'Rowenta' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '4cafa4ef-9d81-49e2-809d-69b74e1a42a3'::uuid AS category_uuid, 'appareils-menagers-classiques' AS slug, 'Appareils ménagers classiques' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'fcea16c5-1eaf-4a20-afc6-3013527efc7a'::uuid AS category_uuid, 'appareils-professionnels' AS slug, 'Appareils professionnels' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '50037fc2-5f44-40d3-bc97-4e00358dd6d0'::uuid AS category_uuid, 'appareils-petites-cuisines' AS slug, 'Appareils pour petites cuisines' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '1bfb6db5-03a9-46ef-9283-b4370aefa31b'::uuid AS category_uuid, 'appareils-energetiques-a-plus-plus' AS slug, 'Appareils énergétiques bas & A++' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '4c6a2683-4eb6-4149-b313-558bbce412ce'::uuid AS category_uuid, 'appareils-connectes-smart-home' AS slug, 'Appareils connectés smart-home' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '8c2e83ca-8901-406c-9586-f7c1535ae8b1'::uuid AS category_uuid, 'appareils-economiques-compacts' AS slug, 'Appareils économiques & compacts' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '3b293d17-c161-463f-beb7-3be78e8f0abb'::uuid AS category_uuid, 'mobilier-et-decoration' AS slug, 'Mobilier & Décoration' AS name, NULL::uuid AS parent_id, 1 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '35be1c32-038a-4928-8af1-2c72b3dec379'::uuid AS category_uuid, 'mobilier-salon-sejour' AS slug, 'Mobilier Salon & Séjour' AS name, 3b293d17-c161-463f-beb7-3be78e8f0abb::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'a676fe67-44ba-4918-8ee0-cd04d5f6d717'::uuid AS category_uuid, 'mobilier-chambre' AS slug, 'Mobilier Chambre' AS name, 3b293d17-c161-463f-beb7-3be78e8f0abb::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '8005c3c9-84e4-4d7d-a82b-17687570fdea'::uuid AS category_uuid, 'mobilier-salle-a-manger' AS slug, 'Mobilier Salle à Manger' AS name, 3b293d17-c161-463f-beb7-3be78e8f0abb::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '4aa04cc9-73f5-4bfc-9cae-fec8b25c33b6'::uuid AS category_uuid, 'mobilier-cuisine' AS slug, 'Mobilier Cuisine' AS name, 3b293d17-c161-463f-beb7-3be78e8f0abb::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '141601a5-241d-4446-afd5-86484c7e4dd3'::uuid AS category_uuid, 'mobilier-bureau' AS slug, 'Mobilier Bureau' AS name, 3b293d17-c161-463f-beb7-3be78e8f0abb::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '902903ab-8faa-4b8c-af36-a345781decc2'::uuid AS category_uuid, 'mobilier-salle-de-bain' AS slug, 'Mobilier Salle de Bain' AS name, 3b293d17-c161-463f-beb7-3be78e8f0abb::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'a2560621-3944-491a-a0e0-fbb40f84fc17'::uuid AS category_uuid, 'mobilier-exterieur-jardin' AS slug, 'Mobilier Extérieur & Jardin' AS name, 3b293d17-c161-463f-beb7-3be78e8f0abb::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'ecc1b446-e293-4b1c-a2d4-5123905deb80'::uuid AS category_uuid, 'decoration-murale' AS slug, 'Décoration Murale' AS name, 3b293d17-c161-463f-beb7-3be78e8f0abb::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'cf757a38-13f2-4b94-96a9-7389dee9f2b2'::uuid AS category_uuid, 'luminaires-eclairage' AS slug, 'Luminaires & Éclairage' AS name, 3b293d17-c161-463f-beb7-3be78e8f0abb::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'adfb7695-39b7-44d2-9596-45090059d283'::uuid AS category_uuid, 'tapis-textiles-maison' AS slug, 'Tapis & Textiles Maison' AS name, 3b293d17-c161-463f-beb7-3be78e8f0abb::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '198e7765-808a-4eb8-88bd-aaca76272fb0'::uuid AS category_uuid, 'decoration-art-maison' AS slug, 'Décoration & Art de Maison' AS name, 3b293d17-c161-463f-beb7-3be78e8f0abb::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '0690fff4-853d-4819-b6d4-36d13b1bc7cc'::uuid AS category_uuid, 'rangement-organisation' AS slug, 'Rangement & Organisation' AS name, 3b293d17-c161-463f-beb7-3be78e8f0abb::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'f428b4da-c1a7-4a16-b689-2e8dd4a7789e'::uuid AS category_uuid, 'mobilier-et-decoration-maison-intelligente' AS slug, 'Maison Intelligente (Smart Home)' AS name, 3b293d17-c161-463f-beb7-3be78e8f0abb::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '89abc231-b6fb-4a2b-ba36-f911e4a9dabd'::uuid AS category_uuid, 'decoration-vegetale-plantes' AS slug, 'Décoration Végétale & Plantes' AS name, 3b293d17-c161-463f-beb7-3be78e8f0abb::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'fd9370c1-1fb6-4721-899a-8b8c99fac57b'::uuid AS category_uuid, 'decoration-enfant-bebe' AS slug, 'Décoration Enfant & Bébé' AS name, 3b293d17-c161-463f-beb7-3be78e8f0abb::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '41d989b4-81d5-44ae-83df-66bfff8f1876'::uuid AS category_uuid, 'styles-decoratifs' AS slug, 'Styles Décoratifs' AS name, 3b293d17-c161-463f-beb7-3be78e8f0abb::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '7c1078da-d2e2-4c44-a9c6-78ae52229267'::uuid AS category_uuid, 'materiaux' AS slug, 'Matériaux' AS name, 3b293d17-c161-463f-beb7-3be78e8f0abb::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'f0cae2cc-54c3-4449-aed2-746028ac9d0c'::uuid AS category_uuid, 'accessoires-maison' AS slug, 'Accessoires de Maison' AS name, 3b293d17-c161-463f-beb7-3be78e8f0abb::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '6ecf55a1-23c4-4060-aa23-41334c1743c0'::uuid AS category_uuid, 'objets-artisanaux-locaux' AS slug, 'Objets Artisanaux & Locaux' AS name, 3b293d17-c161-463f-beb7-3be78e8f0abb::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'f0d02ba9-8e84-4e88-bd54-a9a70a9c88d5'::uuid AS category_uuid, 'canapes' AS slug, 'Canapés' AS name, 35be1c32-038a-4928-8af1-2c72b3dec379::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'f9b92b13-7f37-46e5-9483-903077d30b46'::uuid AS category_uuid, 'angle' AS slug, 'Angle' AS name, f0d02ba9-8e84-4e88-bd54-a9a70a9c88d5::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'bff034d3-d662-4acd-9236-13a8e7554ff5'::uuid AS category_uuid, 'droit' AS slug, 'Droit' AS name, f0d02ba9-8e84-4e88-bd54-a9a70a9c88d5::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '86f4d01e-aa3c-4895-af42-4b13581cb213'::uuid AS category_uuid, 'convertible' AS slug, 'Convertible' AS name, f0d02ba9-8e84-4e88-bd54-a9a70a9c88d5::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '7e9913ec-d8cb-4406-8a3b-1de33dc47a2b'::uuid AS category_uuid, 'modulaires' AS slug, 'Modulaires' AS name, f0d02ba9-8e84-4e88-bd54-a9a70a9c88d5::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '7a38175f-f96a-4616-999c-047d51cd7235'::uuid AS category_uuid, 'fauteuils-poufs' AS slug, 'Fauteuils & poufs' AS name, 35be1c32-038a-4928-8af1-2c72b3dec379::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '156dccf2-8831-45fd-8acd-4e34acaa1dd4'::uuid AS category_uuid, 'fauteuils-poufs-fauteuils' AS slug, 'Fauteuils' AS name, 7a38175f-f96a-4616-999c-047d51cd7235::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'f17e8dec-4fe5-4947-afc5-3050311e00a0'::uuid AS category_uuid, 'fauteuils-poufs-poufs' AS slug, 'Poufs' AS name, 7a38175f-f96a-4616-999c-047d51cd7235::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '051935b4-c0c8-4717-ad89-36ed0b5c70ab'::uuid AS category_uuid, 'tables-basses' AS slug, 'Tables basses' AS name, 35be1c32-038a-4928-8af1-2c72b3dec379::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'fc7f5416-89ca-4623-a942-5c5a83241cca'::uuid AS category_uuid, 'tables-basses-bois' AS slug, 'Bois' AS name, 051935b4-c0c8-4717-ad89-36ed0b5c70ab::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '25011697-2d0d-4b53-a81c-0287ba91f490'::uuid AS category_uuid, 'tables-basses-verre' AS slug, 'Verre' AS name, 051935b4-c0c8-4717-ad89-36ed0b5c70ab::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '801d1782-544b-4710-a76a-028083eadb9a'::uuid AS category_uuid, 'tables-basses-metal' AS slug, 'Métal' AS name, 051935b4-c0c8-4717-ad89-36ed0b5c70ab::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '8f876490-69d8-45f5-a52a-180146020ad1'::uuid AS category_uuid, 'mobilier-salon-sejour-meubles-tv' AS slug, 'Meubles TV' AS name, 35be1c32-038a-4928-8af1-2c72b3dec379::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '6c0a80f3-4b01-4fec-9cc7-37697b2599b3'::uuid AS category_uuid, 'etageres-bibliotheques' AS slug, 'Étagères & bibliothèques' AS name, 35be1c32-038a-4928-8af1-2c72b3dec379::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '51bb44e9-9882-4219-af1d-dc3d3de0048f'::uuid AS category_uuid, 'meubles-rangement' AS slug, 'Meubles de rangement' AS name, 35be1c32-038a-4928-8af1-2c72b3dec379::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '8735ae4d-7edc-41de-9015-1aff0559cc16'::uuid AS category_uuid, 'consoles-entree' AS slug, 'Consoles d’entrée' AS name, 35be1c32-038a-4928-8af1-2c72b3dec379::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'f230b628-3900-47bd-911e-555d7d0b7f58'::uuid AS category_uuid, 'banquettes' AS slug, 'Banquettes' AS name, 35be1c32-038a-4928-8af1-2c72b3dec379::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '92b55290-32fe-4b33-83b2-628d669d6b9d'::uuid AS category_uuid, 'paravents' AS slug, 'Paravents' AS name, 35be1c32-038a-4928-8af1-2c72b3dec379::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'd7642aff-3d32-4398-891a-724c9321ac7f'::uuid AS category_uuid, 'tables-d-appoint' AS slug, 'Tables d’appoint' AS name, 35be1c32-038a-4928-8af1-2c72b3dec379::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '914de7b1-59ec-41d4-9c12-f17d70ef1010'::uuid AS category_uuid, 'lits' AS slug, 'Lits' AS name, a676fe67-44ba-4918-8ee0-cd04d5f6d717::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '6c62a9c6-1571-4c04-ac6d-c044b6d81fdf'::uuid AS category_uuid, 'simple' AS slug, 'Simple' AS name, 914de7b1-59ec-41d4-9c12-f17d70ef1010::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'd1ba1925-e559-4174-94bc-fd31fe23944d'::uuid AS category_uuid, 'double' AS slug, 'Double' AS name, 914de7b1-59ec-41d4-9c12-f17d70ef1010::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'ace836ca-b566-45b4-ba02-5688eed91f5b'::uuid AS category_uuid, 'king' AS slug, 'King' AS name, 914de7b1-59ec-41d4-9c12-f17d70ef1010::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '61a49610-0808-4e5e-9e39-92342fafdeb9'::uuid AS category_uuid, 'coffre' AS slug, 'Coffre' AS name, 914de7b1-59ec-41d4-9c12-f17d70ef1010::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '9625898b-0e6b-4603-9686-996a8faae4fc'::uuid AS category_uuid, 'sommier-matelas' AS slug, 'Sommier & matelas' AS name, a676fe67-44ba-4918-8ee0-cd04d5f6d717::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'bd5e208f-aadf-4b18-9ca9-25fdccb2f28d'::uuid AS category_uuid, 'sommier' AS slug, 'Sommier' AS name, 9625898b-0e6b-4603-9686-996a8faae4fc::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'c920cd8c-2fd7-42aa-916f-622d6ec2d2a5'::uuid AS category_uuid, 'matelas' AS slug, 'Matelas' AS name, 9625898b-0e6b-4603-9686-996a8faae4fc::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'f324ba2b-0547-4a48-a796-368c02cf3b52'::uuid AS category_uuid, 'tables-de-chevet' AS slug, 'Tables de chevet' AS name, a676fe67-44ba-4918-8ee0-cd04d5f6d717::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '2f89e47e-45e6-49a4-bfe8-1ea25a8a77a8'::uuid AS category_uuid, 'armoires-penderies' AS slug, 'Armoires & penderies' AS name, a676fe67-44ba-4918-8ee0-cd04d5f6d717::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '24df0365-4b1e-4362-9861-769d7931faf6'::uuid AS category_uuid, 'armoires-penderies-armoires' AS slug, 'Armoires' AS name, 2f89e47e-45e6-49a4-bfe8-1ea25a8a77a8::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'f58d8c7b-d9e6-4710-8ef8-7e3d12a0f86b'::uuid AS category_uuid, 'penderies' AS slug, 'Penderies' AS name, 2f89e47e-45e6-49a4-bfe8-1ea25a8a77a8::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'f2351caa-e79b-45cd-a532-21eaeedc076c'::uuid AS category_uuid, 'commode' AS slug, 'Commode' AS name, a676fe67-44ba-4918-8ee0-cd04d5f6d717::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'dc0a0eaa-ea83-4737-9db4-b6d16982e1fc'::uuid AS category_uuid, 'coiffeuses' AS slug, 'Coiffeuses' AS name, a676fe67-44ba-4918-8ee0-cd04d5f6d717::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'eaf41bf7-9f51-4a28-bb13-1deb27b83ee8'::uuid AS category_uuid, 'bancs-de-lit' AS slug, 'Bancs de lit' AS name, a676fe67-44ba-4918-8ee0-cd04d5f6d717::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'a444b908-f035-4b81-a265-735b3587517b'::uuid AS category_uuid, 'tetes-de-lit' AS slug, 'Têtes de lit' AS name, a676fe67-44ba-4918-8ee0-cd04d5f6d717::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '3a9719a4-11c9-4c15-af90-f03b2c97dce6'::uuid AS category_uuid, 'rangement-chaussures' AS slug, 'Rangement chaussures' AS name, a676fe67-44ba-4918-8ee0-cd04d5f6d717::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '1173b48a-2b27-4502-a427-a6d332e52e56'::uuid AS category_uuid, 'tables-a-manger' AS slug, 'Tables à manger' AS name, 8005c3c9-84e4-4d7d-a82b-17687570fdea::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '3cd478e6-bf4a-4012-963b-aa6d767c0d29'::uuid AS category_uuid, 'tables-a-manger-bois' AS slug, 'Bois' AS name, 1173b48a-2b27-4502-a427-a6d332e52e56::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '67b372e2-9c17-4c57-a57d-e93f35d7ca4d'::uuid AS category_uuid, 'extensibles' AS slug, 'Extensibles' AS name, 1173b48a-2b27-4502-a427-a6d332e52e56::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '59704eee-17cf-4d88-baba-f18032ea6390'::uuid AS category_uuid, 'tables-a-manger-verre' AS slug, 'Verre' AS name, 1173b48a-2b27-4502-a427-a6d332e52e56::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '26ee0199-57c0-4365-83aa-ccdb29c63c20'::uuid AS category_uuid, 'chaises-fauteuils-salle-a-manger' AS slug, 'Chaises & fauteuils de salle à manger' AS name, 8005c3c9-84e4-4d7d-a82b-17687570fdea::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'ebf81e67-7f71-413f-845d-25cfc81230dd'::uuid AS category_uuid, 'chaises-fauteuils-salle-a-manger-chaises' AS slug, 'Chaises' AS name, 26ee0199-57c0-4365-83aa-ccdb29c63c20::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '681129a6-0ffa-4bf9-a146-431c8e9c5be9'::uuid AS category_uuid, 'chaises-fauteuils-salle-a-manger-fauteuils' AS slug, 'Fauteuils' AS name, 26ee0199-57c0-4365-83aa-ccdb29c63c20::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '7eeaed55-2c1b-48ad-9ddf-a647d1d96077'::uuid AS category_uuid, 'buffets-bahuts' AS slug, 'Buffets & bahuts' AS name, 8005c3c9-84e4-4d7d-a82b-17687570fdea::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'c3745613-0892-45c3-9009-d1230cc4c1f7'::uuid AS category_uuid, 'buffets' AS slug, 'Buffets' AS name, 7eeaed55-2c1b-48ad-9ddf-a647d1d96077::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '773a928d-c8d3-45d2-bda0-821f5f30b09d'::uuid AS category_uuid, 'bahuts' AS slug, 'Bahuts' AS name, 7eeaed55-2c1b-48ad-9ddf-a647d1d96077::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '6cf339d1-5c63-4cfc-9c4c-0a92e6492da6'::uuid AS category_uuid, 'vaisseliers' AS slug, 'Vaisseliers' AS name, 8005c3c9-84e4-4d7d-a82b-17687570fdea::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT '6bc41958-a5f4-4d46-968e-2770956a3614'::uuid AS category_uuid, 'meubles-bar' AS slug, 'Meubles bar' AS name, 8005c3c9-84e4-4d7d-a82b-17687570fdea::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'd84e725b-0a18-43ed-986f-fc7ff8383ef7'::uuid AS category_uuid, 'tabourets-chaises-hautes' AS slug, 'Tabourets & chaises hautes' AS name, 8005c3c9-84e4-4d7d-a82b-17687570fdea::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
  UNION ALL
  SELECT 'cc1ece5c-0838-49a9-98b3-ada238993e3c'::uuid AS category_uuid, 'tabourets-chaises-hautes-tabourets' AS slug, 'Tabourets' AS name, d84e725b-0a18-43ed-986f-fc7ff8383ef7::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.883Z' AS created_at, '2026-04-03T10:15:31.883Z' AS updated_at
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),
  level = EXCLUDED.level,
  category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),
  updated_at = NOW();

-- Lot 22 terminé: 100 entrées
