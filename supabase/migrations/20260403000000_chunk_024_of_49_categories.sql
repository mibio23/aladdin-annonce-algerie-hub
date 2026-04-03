-- ============================================================
-- CHUNK 24/49 — 100 catégories
-- Total: 4836 catégories
-- Exécuter dans l'ordre dans Supabase SQL Editor
-- ============================================================

INSERT INTO public.categories
  (category_uuid, slug, name, parent_id, level, is_active, created_at, updated_at)
VALUES
  SELECT 'ff998f54-a117-432b-8355-7d42363dd1ed'::uuid AS category_uuid, 'linge-de-lit' AS slug, 'Linge de lit' AS name, adfb7695-39b7-44d2-9596-45090059d283::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '3b5b7a60-73ba-4d8d-922f-62fa209e64df'::uuid AS category_uuid, 'linge-de-bain' AS slug, 'Linge de bain' AS name, adfb7695-39b7-44d2-9596-45090059d283::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '41692075-bf8a-4472-9f5b-08680ccad5b3'::uuid AS category_uuid, 'nappes-textiles-cuisine' AS slug, 'Nappes & textiles cuisine' AS name, adfb7695-39b7-44d2-9596-45090059d283::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '131e389f-449c-475e-8ecf-9a7c51f29dfd'::uuid AS category_uuid, 'nappes' AS slug, 'Nappes' AS name, 41692075-bf8a-4472-9f5b-08680ccad5b3::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'd61dea77-a342-4c22-95b8-d5c871b06180'::uuid AS category_uuid, 'textiles-cuisine' AS slug, 'Textiles cuisine' AS name, 41692075-bf8a-4472-9f5b-08680ccad5b3::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'a2d7de85-b1d9-4487-83d0-21a661350ccd'::uuid AS category_uuid, 'vases-pots-decoratifs' AS slug, 'Vases & pots décoratifs' AS name, 198e7765-808a-4eb8-88bd-aaca76272fb0::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '60225383-a43b-450c-bf45-867ca4bbf2f1'::uuid AS category_uuid, 'vases' AS slug, 'Vases' AS name, a2d7de85-b1d9-4487-83d0-21a661350ccd::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '45801b2b-d228-4928-acb7-a79405e577c9'::uuid AS category_uuid, 'pots' AS slug, 'Pots' AS name, a2d7de85-b1d9-4487-83d0-21a661350ccd::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'eba960d8-89b6-4d54-80fb-eac1def341fc'::uuid AS category_uuid, 'bougies-photophores' AS slug, 'Bougies & photophores' AS name, 198e7765-808a-4eb8-88bd-aaca76272fb0::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'e45b97c2-53e4-44bf-9a06-1ee22d2d046a'::uuid AS category_uuid, 'bougies-photophores-bougies' AS slug, 'Bougies' AS name, eba960d8-89b6-4d54-80fb-eac1def341fc::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'f0e0d617-daac-42b0-a358-429abf693a24'::uuid AS category_uuid, 'photophores' AS slug, 'Photophores' AS name, eba960d8-89b6-4d54-80fb-eac1def341fc::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '3d2a890a-7c83-443b-b00c-7de4400b8bb9'::uuid AS category_uuid, 'sculptures-statuettes' AS slug, 'Sculptures & statuettes' AS name, 198e7765-808a-4eb8-88bd-aaca76272fb0::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'bd2d521f-8583-42bc-a7e2-41691282625b'::uuid AS category_uuid, 'sculptures-statuettes-sculptures' AS slug, 'Sculptures' AS name, 3d2a890a-7c83-443b-b00c-7de4400b8bb9::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'f5a3f39c-1a99-45e5-9cdb-5d920121e664'::uuid AS category_uuid, 'statuettes' AS slug, 'Statuettes' AS name, 3d2a890a-7c83-443b-b00c-7de4400b8bb9::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'b5edb5e9-d3c5-467d-bfc5-4980d6f81f0a'::uuid AS category_uuid, 'articles-artisanaux' AS slug, 'Articles artisanaux' AS name, 198e7765-808a-4eb8-88bd-aaca76272fb0::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '35e5bb8e-b1f9-41b4-a813-8a8f4968a31a'::uuid AS category_uuid, 'objets-decoratifs' AS slug, 'Objets décoratifs' AS name, 198e7765-808a-4eb8-88bd-aaca76272fb0::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '1a6e6374-15e5-4f08-a195-0f7214beae88'::uuid AS category_uuid, 'objets-decoratifs-bois' AS slug, 'Bois' AS name, 35e5bb8e-b1f9-41b4-a813-8a8f4968a31a::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'a23b3329-f01d-4b50-bf64-daff14354464'::uuid AS category_uuid, 'objets-decoratifs-metal' AS slug, 'Métal' AS name, 35e5bb8e-b1f9-41b4-a813-8a8f4968a31a::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '1702ed71-c1de-4905-b43d-175bdd024f6f'::uuid AS category_uuid, 'objets-decoratifs-verre' AS slug, 'Verre' AS name, 35e5bb8e-b1f9-41b4-a813-8a8f4968a31a::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'ac196b04-c5b4-482e-bf7e-090acdec5a00'::uuid AS category_uuid, 'plateaux-decoratifs' AS slug, 'Plateaux décoratifs' AS name, 198e7765-808a-4eb8-88bd-aaca76272fb0::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '97470f75-82bf-4260-9a10-9caca4332e16'::uuid AS category_uuid, 'coffrets-boites' AS slug, 'Coffrets & boîtes' AS name, 198e7765-808a-4eb8-88bd-aaca76272fb0::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '70fbf110-788e-4507-85df-0fb0893ebfca'::uuid AS category_uuid, 'coffrets-boites-coffrets' AS slug, 'Coffrets' AS name, 97470f75-82bf-4260-9a10-9caca4332e16::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '3e752fef-8b6d-4c88-9b39-54085ee0f16b'::uuid AS category_uuid, 'coffrets-boites-boites' AS slug, 'Boîtes' AS name, 97470f75-82bf-4260-9a10-9caca4332e16::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '95810de3-0e80-42f6-8466-fd4acab97da3'::uuid AS category_uuid, 'boites-paniers' AS slug, 'Boîtes & paniers' AS name, 0690fff4-853d-4819-b6d4-36d13b1bc7cc::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '28a60d58-deb4-472a-b211-950409e84ef3'::uuid AS category_uuid, 'boites-paniers-boites' AS slug, 'Boîtes' AS name, 95810de3-0e80-42f6-8466-fd4acab97da3::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '01a226ce-63d6-4354-8ef3-813466da4f62'::uuid AS category_uuid, 'boites-paniers-paniers' AS slug, 'Paniers' AS name, 95810de3-0e80-42f6-8466-fd4acab97da3::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'ae88c2a8-050b-4d76-88d6-eff0d9732997'::uuid AS category_uuid, 'organiseurs-tiroirs' AS slug, 'Organiseurs tiroirs' AS name, 0690fff4-853d-4819-b6d4-36d13b1bc7cc::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '38610164-0014-45b6-8d2c-220a9ce757e5'::uuid AS category_uuid, 'etageres-modulaires' AS slug, 'Étagères modulaires' AS name, 0690fff4-853d-4819-b6d4-36d13b1bc7cc::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'aa47db62-665e-4c4f-ba92-9a947e42476f'::uuid AS category_uuid, 'meubles-rangement-materiaux' AS slug, 'Meubles de rangement plastique/bois/métal' AS name, 0690fff4-853d-4819-b6d4-36d13b1bc7cc::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '852f140f-ef9b-423d-b9df-bcb5b42b6c8e'::uuid AS category_uuid, 'plastique' AS slug, 'Plastique' AS name, aa47db62-665e-4c4f-ba92-9a947e42476f::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'fd88e6dc-7582-446b-8f66-b26839c3bd92'::uuid AS category_uuid, 'meubles-rangement-materiaux-bois' AS slug, 'Bois' AS name, aa47db62-665e-4c4f-ba92-9a947e42476f::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '5f687110-44ad-4bb3-828c-36e1c1ac8959'::uuid AS category_uuid, 'meubles-rangement-materiaux-metal' AS slug, 'Métal' AS name, aa47db62-665e-4c4f-ba92-9a947e42476f::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '3c5c83e5-2d8e-4e22-85ac-6edd6e218f55'::uuid AS category_uuid, 'portemanteaux' AS slug, 'Portemanteaux' AS name, 0690fff4-853d-4819-b6d4-36d13b1bc7cc::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'd77f0200-add9-4a7f-9d01-ab63712cccab'::uuid AS category_uuid, 'pateres-crochets' AS slug, 'Patères & crochets' AS name, 0690fff4-853d-4819-b6d4-36d13b1bc7cc::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '71d31db0-476e-4857-b6fb-de6fb3411c45'::uuid AS category_uuid, 'pateres' AS slug, 'Patères' AS name, d77f0200-add9-4a7f-9d01-ab63712cccab::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '7bd0d59e-d50a-48cf-bf59-18906e8c5d5f'::uuid AS category_uuid, 'crochets' AS slug, 'Crochets' AS name, d77f0200-add9-4a7f-9d01-ab63712cccab::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '0fe7aea7-b365-47c9-943b-c8e5ee8f2922'::uuid AS category_uuid, 'armoires-pliables' AS slug, 'Armoires pliables' AS name, 0690fff4-853d-4819-b6d4-36d13b1bc7cc::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'd60a66c8-cb2c-4c15-a6cb-a264b812a024'::uuid AS category_uuid, 'rayonnages' AS slug, 'Rayonnages' AS name, 0690fff4-853d-4819-b6d4-36d13b1bc7cc::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'ac07d7db-4304-4f35-bc72-87fd8b7c5666'::uuid AS category_uuid, 'maison-intelligente-ampoules-connectees' AS slug, 'Ampoules connectées' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '306a9eb1-626a-49c4-810c-f4a6d601a105'::uuid AS category_uuid, 'maison-intelligente-prises-intelligentes' AS slug, 'Prises intelligentes' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '3af06521-cb82-4259-be01-332445f819a6'::uuid AS category_uuid, 'capteurs-detecteurs' AS slug, 'Capteurs & détecteurs' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'd19bba97-8a36-4e40-9d0b-c275a72b7bd7'::uuid AS category_uuid, 'capteurs-detecteurs-capteurs' AS slug, 'Capteurs' AS name, 3af06521-cb82-4259-be01-332445f819a6::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '8cabacb3-b50a-4c9d-aae8-3891ed759212'::uuid AS category_uuid, 'detecteurs' AS slug, 'Détecteurs' AS name, 3af06521-cb82-4259-be01-332445f819a6::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'e02c07f4-53c7-468f-bd1b-133c07424a0a'::uuid AS category_uuid, 'commandes-distance' AS slug, 'Commandes à distance' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'b1165387-e3b1-46bd-98e4-7435b160650a'::uuid AS category_uuid, 'gadgets-domotiques-decoratifs' AS slug, 'Gadgets domotiques décoratifs' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '17306989-084b-4e98-9915-15847ae4c196'::uuid AS category_uuid, 'plantes-naturelles' AS slug, 'Plantes naturelles' AS name, 89abc231-b6fb-4a2b-ba36-f911e4a9dabd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '8b563769-ef2f-4401-a4f0-5903d5eda865'::uuid AS category_uuid, 'plantes-artificielles' AS slug, 'Plantes artificielles' AS name, 89abc231-b6fb-4a2b-ba36-f911e4a9dabd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '6638d86b-6cc7-4d31-88e0-ccc342791760'::uuid AS category_uuid, 'pots-de-fleurs' AS slug, 'Pots de fleurs' AS name, 89abc231-b6fb-4a2b-ba36-f911e4a9dabd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '522229a9-e96d-4f7c-9608-6424c6320328'::uuid AS category_uuid, 'jardinieres' AS slug, 'Jardinières' AS name, 89abc231-b6fb-4a2b-ba36-f911e4a9dabd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'a59fcc8c-b693-4ea3-abc9-c88ca5b2a950'::uuid AS category_uuid, 'support-plantes' AS slug, 'Support plantes' AS name, 89abc231-b6fb-4a2b-ba36-f911e4a9dabd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '93eefcaa-5899-472b-a7a0-be9a0e8fd96a'::uuid AS category_uuid, 'decoration-vegetale-plantes-terrariums' AS slug, 'Terrariums' AS name, 89abc231-b6fb-4a2b-ba36-f911e4a9dabd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'ad357fec-325f-4378-86f4-7b79ba92645e'::uuid AS category_uuid, 'decoration-botanique' AS slug, 'Décoration botanique' AS name, 89abc231-b6fb-4a2b-ba36-f911e4a9dabd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'f4d050fb-9680-4c05-83a8-71637ea1eb21'::uuid AS category_uuid, 'mobilier-chambre-enfant' AS slug, 'Mobilier chambre enfant' AS name, fd9370c1-1fb6-4721-899a-8b8c99fac57b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'f6d81548-4638-47b7-89b5-00660f677db8'::uuid AS category_uuid, 'luminaires-enfant' AS slug, 'Luminaires enfant' AS name, fd9370c1-1fb6-4721-899a-8b8c99fac57b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '68f1a34e-0782-4045-af41-7ebc2afd0f14'::uuid AS category_uuid, 'stickers-posters-enfant' AS slug, 'Stickers & posters enfant' AS name, fd9370c1-1fb6-4721-899a-8b8c99fac57b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '5b25ccc5-1a3c-4ee6-8900-87473c366267'::uuid AS category_uuid, 'stickers-enfant' AS slug, 'Stickers enfant' AS name, 68f1a34e-0782-4045-af41-7ebc2afd0f14::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'd2065960-c97b-4ab1-a4f3-bb1ae9415090'::uuid AS category_uuid, 'posters-enfant' AS slug, 'Posters enfant' AS name, 68f1a34e-0782-4045-af41-7ebc2afd0f14::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '39c5d89c-e8f4-4e9f-8646-d5e2bd568ebe'::uuid AS category_uuid, 'rangements-jouets' AS slug, 'Rangements jouets' AS name, fd9370c1-1fb6-4721-899a-8b8c99fac57b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'ad293c2f-195b-4d28-994d-ab8740c9d6c3'::uuid AS category_uuid, 'petits-fauteuils-poufs' AS slug, 'Petits fauteuils & poufs' AS name, fd9370c1-1fb6-4721-899a-8b8c99fac57b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '44dcec2b-2b6c-46e6-a0cf-eb7f9cb71a8f'::uuid AS category_uuid, 'petits-fauteuils' AS slug, 'Petits fauteuils' AS name, ad293c2f-195b-4d28-994d-ab8740c9d6c3::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '41f3afa3-eca7-46f0-8626-9aabf15daec0'::uuid AS category_uuid, 'petits-fauteuils-poufs-poufs' AS slug, 'Poufs' AS name, ad293c2f-195b-4d28-994d-ab8740c9d6c3::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '943eb28d-303b-497c-b5b8-216f4e764810'::uuid AS category_uuid, 'scandinave' AS slug, 'Scandinave' AS name, 41d989b4-81d5-44ae-83df-66bfff8f1876::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '8e9c17be-8e9f-4a5c-a185-0c83fa97d747'::uuid AS category_uuid, 'moderne' AS slug, 'Moderne' AS name, 41d989b4-81d5-44ae-83df-66bfff8f1876::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '6ffd1952-d43f-4b8a-933f-1615c4e4345e'::uuid AS category_uuid, 'styles-decoratifs-minimaliste' AS slug, 'Minimaliste' AS name, 41d989b4-81d5-44ae-83df-66bfff8f1876::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '7860ad3f-5761-4de6-820a-158ac1576a5e'::uuid AS category_uuid, 'industriel' AS slug, 'Industriel' AS name, 41d989b4-81d5-44ae-83df-66bfff8f1876::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '10b8ff01-1628-4a82-90a9-f54811a12c29'::uuid AS category_uuid, 'boheme' AS slug, 'Bohème' AS name, 41d989b4-81d5-44ae-83df-66bfff8f1876::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '22afd975-e908-4c19-93e5-24c98a50d833'::uuid AS category_uuid, 'vintage' AS slug, 'Vintage' AS name, 41d989b4-81d5-44ae-83df-66bfff8f1876::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '498b8214-d987-4ea4-96fb-21bd00c05bc3'::uuid AS category_uuid, 'art-deco' AS slug, 'Art déco' AS name, 41d989b4-81d5-44ae-83df-66bfff8f1876::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'f171a39c-1c83-4156-ab24-7f7a8a323574'::uuid AS category_uuid, 'rustique-campagne' AS slug, 'Rustique & campagne' AS name, 41d989b4-81d5-44ae-83df-66bfff8f1876::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '2b13ed78-624b-448d-b72f-9fb1da986b17'::uuid AS category_uuid, 'oriental-marocain' AS slug, 'Oriental & marocain' AS name, 41d989b4-81d5-44ae-83df-66bfff8f1876::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '55892d34-11ef-4c98-90d8-7a1ee90104b0'::uuid AS category_uuid, 'contemporain' AS slug, 'Contemporain' AS name, 41d989b4-81d5-44ae-83df-66bfff8f1876::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'b0572f6f-2f03-4ee2-a27d-6c9e5d632292'::uuid AS category_uuid, 'classique' AS slug, 'Classique' AS name, 41d989b4-81d5-44ae-83df-66bfff8f1876::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'bfc87cef-5f9d-4177-bd2f-76d5d899002e'::uuid AS category_uuid, 'luxe-premium' AS slug, 'Luxe & premium' AS name, 41d989b4-81d5-44ae-83df-66bfff8f1876::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'a9054fc5-e758-4c87-8f69-b12e9ae50a4e'::uuid AS category_uuid, 'bois-massif' AS slug, 'Bois massif' AS name, 7c1078da-d2e2-4c44-a9c6-78ae52229267::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '74edb621-55c3-4eb1-90d6-0ca00a55add4'::uuid AS category_uuid, 'mdf' AS slug, 'MDF' AS name, 7c1078da-d2e2-4c44-a9c6-78ae52229267::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '3e6cb3e8-7cdb-4ece-a804-1cbef907413e'::uuid AS category_uuid, 'materiaux-metal' AS slug, 'Métal' AS name, 7c1078da-d2e2-4c44-a9c6-78ae52229267::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'eb9d9caa-da5d-43c3-b58b-5783270f947d'::uuid AS category_uuid, 'materiaux-aluminium' AS slug, 'Aluminium' AS name, 7c1078da-d2e2-4c44-a9c6-78ae52229267::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '83d4aa2a-1b9a-4b06-a876-b6d0913fe0a1'::uuid AS category_uuid, 'materiaux-verre' AS slug, 'Verre' AS name, 7c1078da-d2e2-4c44-a9c6-78ae52229267::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '1722e92b-8d8e-497d-bd5b-b1922053fc88'::uuid AS category_uuid, 'rotin' AS slug, 'Rotin' AS name, 7c1078da-d2e2-4c44-a9c6-78ae52229267::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '22215b32-98eb-46ad-aed5-1cd1ebccd7c5'::uuid AS category_uuid, 'materiaux-bambou' AS slug, 'Bambou' AS name, 7c1078da-d2e2-4c44-a9c6-78ae52229267::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '5e69fad9-7ec1-4cc5-8a65-47a1586fd785'::uuid AS category_uuid, 'resine-tressee' AS slug, 'Résine tressée' AS name, 7c1078da-d2e2-4c44-a9c6-78ae52229267::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '9ce6b346-23b9-4e1e-bbeb-ca5104c27651'::uuid AS category_uuid, 'marbre' AS slug, 'Marbre' AS name, 7c1078da-d2e2-4c44-a9c6-78ae52229267::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'a4b98922-6f8f-4c49-aee3-be272c65626f'::uuid AS category_uuid, 'ceramique' AS slug, 'Céramique' AS name, 7c1078da-d2e2-4c44-a9c6-78ae52229267::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '6790f030-ae2d-4ff7-b563-1872900db10a'::uuid AS category_uuid, 'tissu' AS slug, 'Tissu' AS name, 7c1078da-d2e2-4c44-a9c6-78ae52229267::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '71665e22-5bff-4f31-b379-edd16b386602'::uuid AS category_uuid, 'materiaux-velours' AS slug, 'Velours' AS name, 7c1078da-d2e2-4c44-a9c6-78ae52229267::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'cad76425-a58f-4e72-8585-1fd22be1ccee'::uuid AS category_uuid, 'cuir-simili' AS slug, 'Cuir & simili' AS name, 7c1078da-d2e2-4c44-a9c6-78ae52229267::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '1b1e16d9-506c-4882-b495-ce54b3c7dd3f'::uuid AS category_uuid, 'cuir-simili-cuir' AS slug, 'Cuir' AS name, cad76425-a58f-4e72-8585-1fd22be1ccee::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '7413f8cf-3d72-4c67-96a7-16d4fa28fa86'::uuid AS category_uuid, 'simili' AS slug, 'Simili' AS name, cad76425-a58f-4e72-8585-1fd22be1ccee::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '765fdc34-ab5d-4b5a-96cb-e398c82f3829'::uuid AS category_uuid, 'beton-decoratif' AS slug, 'Béton décoratif' AS name, 7c1078da-d2e2-4c44-a9c6-78ae52229267::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '29374fe9-372f-490f-a32f-7a7743c322e3'::uuid AS category_uuid, 'horloges-reveils' AS slug, 'Horloges & réveils' AS name, f0cae2cc-54c3-4449-aed2-746028ac9d0c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'eea735b4-740c-439e-8b72-b01544ec7198'::uuid AS category_uuid, 'horloges-reveils-horloges' AS slug, 'Horloges' AS name, 29374fe9-372f-490f-a32f-7a7743c322e3::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'da58d30c-6244-4f66-962e-e377af08e4b5'::uuid AS category_uuid, 'reveils' AS slug, 'Réveils' AS name, 29374fe9-372f-490f-a32f-7a7743c322e3::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '579524f6-2149-44c5-91e1-effab446436c'::uuid AS category_uuid, 'cadres-photo' AS slug, 'Cadres photo' AS name, f0cae2cc-54c3-4449-aed2-746028ac9d0c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '66f0ee12-bd9a-4c23-be1f-d79202a598d8'::uuid AS category_uuid, 'parfums-interieur' AS slug, 'Parfums d’intérieur' AS name, f0cae2cc-54c3-4449-aed2-746028ac9d0c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '2409b2cd-3f14-41c5-a666-9cbd61978007'::uuid AS category_uuid, 'fontaines-decoratives' AS slug, 'Fontaines décoratives' AS name, f0cae2cc-54c3-4449-aed2-746028ac9d0c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '70116cb5-8b2d-4e15-b71a-8ef7203d6759'::uuid AS category_uuid, 'distributeurs-savon-design' AS slug, 'Distributeurs savon design' AS name, f0cae2cc-54c3-4449-aed2-746028ac9d0c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'c91c4430-e287-4d7b-990f-2bc3d5be1c07'::uuid AS category_uuid, 'cintres-porte-accessoires' AS slug, 'Cintres & porte-accessoires' AS name, f0cae2cc-54c3-4449-aed2-746028ac9d0c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'f5b87faf-4ae2-4853-a385-e2cd4493521c'::uuid AS category_uuid, 'cintres' AS slug, 'Cintres' AS name, c91c4430-e287-4d7b-990f-2bc3d5be1c07::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '0764c5eb-f88f-4924-a829-c49522772f85'::uuid AS category_uuid, 'porte-accessoires' AS slug, 'Porte-accessoires' AS name, c91c4430-e287-4d7b-990f-2bc3d5be1c07::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'a2ea2c07-65bf-4e08-8639-9f2d61ecc383'::uuid AS category_uuid, 'accessoires-cheminee' AS slug, 'Accessoires cheminée' AS name, f0cae2cc-54c3-4449-aed2-746028ac9d0c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),
  level = EXCLUDED.level,
  category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),
  updated_at = NOW();

-- Lot 24 terminé: 100 entrées
