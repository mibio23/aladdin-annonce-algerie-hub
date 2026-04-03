-- ============================================================
-- CHUNK 35/49 — 100 catégories
-- Total: 4836 catégories
-- Exécuter dans l'ordre dans Supabase SQL Editor
-- ============================================================

INSERT INTO public.categories
  (category_uuid, slug, name, parent_id, level, is_active, created_at, updated_at)
VALUES
  SELECT '859c9b25-53b5-4d90-8c77-3e719dfa4199'::uuid AS category_uuid, 'parfums-homme' AS slug, 'Parfums homme' AS name, 4f9a001e-fa36-4a25-8310-6d4221d14add::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'e0b8cb0b-52d9-4a78-a1a1-39296e47e8ed'::uuid AS category_uuid, 'parfums-femme' AS slug, 'Parfums femme' AS name, 4f9a001e-fa36-4a25-8310-6d4221d14add::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'd0ee5d31-0eb1-4fcc-a1af-5b8f10d94eff'::uuid AS category_uuid, 'eaux-de-toilette' AS slug, 'Eaux de toilette' AS name, 4f9a001e-fa36-4a25-8310-6d4221d14add::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '29a03600-9d6f-4aa8-bce0-4a55b5561948'::uuid AS category_uuid, 'eaux-de-parfum' AS slug, 'Eaux de parfum' AS name, 4f9a001e-fa36-4a25-8310-6d4221d14add::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'd1ca9c65-5443-43bd-924a-7c06d90b7ace'::uuid AS category_uuid, 'brumes-corporelles' AS slug, 'Brumes corporelles' AS name, 4f9a001e-fa36-4a25-8310-6d4221d14add::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'e73ebe13-a026-4a7d-8160-29ca07fab0c3'::uuid AS category_uuid, 'parfums-orientaux' AS slug, 'Parfums orientaux' AS name, 4f9a001e-fa36-4a25-8310-6d4221d14add::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'b1f520ac-bc1f-43ec-ad11-a0e37c5352f7'::uuid AS category_uuid, 'parfums-de-luxe' AS slug, 'Parfums de luxe' AS name, 4f9a001e-fa36-4a25-8310-6d4221d14add::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'db81cd28-ee42-43b8-b6ee-4ffe80f74b10'::uuid AS category_uuid, 'coffrets-parfum' AS slug, 'Coffrets parfum' AS name, 4f9a001e-fa36-4a25-8310-6d4221d14add::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '177656f8-7672-4cfb-9e98-29e7acc318b1'::uuid AS category_uuid, 'fonds-de-teint' AS slug, 'Fonds de teint' AS name, 6a6648d2-d208-4912-9574-b08317aa169d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '2f7b93cb-52b4-44a5-945c-f26438717404'::uuid AS category_uuid, 'poudres' AS slug, 'Poudres' AS name, 6a6648d2-d208-4912-9574-b08317aa169d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '9475eeb2-c825-47de-a639-c8dcf92d0764'::uuid AS category_uuid, 'anticernes' AS slug, 'Anticernes' AS name, 6a6648d2-d208-4912-9574-b08317aa169d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '26ba4b67-36fd-4a28-aefc-cbf344c8d2b4'::uuid AS category_uuid, 'blush' AS slug, 'Blush' AS name, 6a6648d2-d208-4912-9574-b08317aa169d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '7c85607e-aa1a-4e7a-941d-afcc12523229'::uuid AS category_uuid, 'highlighters' AS slug, 'Highlighters' AS name, 6a6648d2-d208-4912-9574-b08317aa169d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '4275a41f-3216-471f-bb43-50af264e1119'::uuid AS category_uuid, 'palettes-yeux' AS slug, 'Palettes yeux' AS name, 6a6648d2-d208-4912-9574-b08317aa169d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '4c4505cc-0a02-49b2-b92e-01510ac8d389'::uuid AS category_uuid, 'mascaras' AS slug, 'Mascaras' AS name, 6a6648d2-d208-4912-9574-b08317aa169d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'beff29d6-f4ef-4eb8-a159-f37ad604b0ea'::uuid AS category_uuid, 'eyeliners' AS slug, 'Eyeliners' AS name, 6a6648d2-d208-4912-9574-b08317aa169d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '0e5530f1-67ee-4f38-9731-5bf907f89c29'::uuid AS category_uuid, 'crayons-levres' AS slug, 'Crayons lèvres' AS name, 6a6648d2-d208-4912-9574-b08317aa169d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '74bda6aa-8551-4711-b378-2ae97462d673'::uuid AS category_uuid, 'rouges-a-levres' AS slug, 'Rouges à lèvres' AS name, 6a6648d2-d208-4912-9574-b08317aa169d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'c3728dd3-4f33-44a4-8a17-35b8f3d102ed'::uuid AS category_uuid, 'gloss' AS slug, 'Gloss' AS name, 6a6648d2-d208-4912-9574-b08317aa169d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '4edf9603-4c56-4e61-afd1-8f263f14c4cc'::uuid AS category_uuid, 'fixateurs-makeup' AS slug, 'Fixateurs makeup' AS name, 6a6648d2-d208-4912-9574-b08317aa169d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '7ae5a259-9594-4d0c-90a3-26bc9515b5a8'::uuid AS category_uuid, 'pinceaux-maquillage' AS slug, 'Pinceaux maquillage' AS name, 2c4a73a0-d6b9-4deb-b862-9e9117208571::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'eb68dee3-daa0-417e-9f51-b3ab0fed1a9e'::uuid AS category_uuid, 'beauty-blenders' AS slug, 'Beauty blenders' AS name, 2c4a73a0-d6b9-4deb-b862-9e9117208571::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '0c2b517f-b622-48ae-84c6-c9b1923e5636'::uuid AS category_uuid, 'accessoires-beaute-miroirs' AS slug, 'Miroirs' AS name, 2c4a73a0-d6b9-4deb-b862-9e9117208571::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '5660f0db-97e5-4ed4-9fa1-194f61ae6a10'::uuid AS category_uuid, 'trousses-beaute' AS slug, 'Trousses beauté' AS name, 2c4a73a0-d6b9-4deb-b862-9e9117208571::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '1472d2d8-48f3-45cb-8241-343ed11fe924'::uuid AS category_uuid, 'eponges-de-bain' AS slug, 'Éponges de bain' AS name, 2c4a73a0-d6b9-4deb-b862-9e9117208571::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'b1507a31-b360-49cc-b92e-6a936060af39'::uuid AS category_uuid, 'gants-exfoliants' AS slug, 'Gants exfoliants' AS name, 2c4a73a0-d6b9-4deb-b862-9e9117208571::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '364f35fd-da08-484a-b9e9-7c99b8aaf7ee'::uuid AS category_uuid, 'accessoires-beaute-limes' AS slug, 'Limes' AS name, 2c4a73a0-d6b9-4deb-b862-9e9117208571::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'f15697b7-bcce-4478-b25c-f0b6344a847e'::uuid AS category_uuid, 'coupe-ongles' AS slug, 'Coupe-ongles' AS name, 2c4a73a0-d6b9-4deb-b862-9e9117208571::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '0a0b9c4a-ce27-48b7-a561-2cbe9bfb502e'::uuid AS category_uuid, 'pinces-a-epiler' AS slug, 'Pinces à épiler' AS name, 2c4a73a0-d6b9-4deb-b862-9e9117208571::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'a196cc39-5b39-4999-9ca9-f0cfb1d02fc7'::uuid AS category_uuid, 'vernis' AS slug, 'Vernis' AS name, 4118b55c-cc28-47bc-b5d7-fd2e75069b6f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'c0192ffa-7415-4a9e-9a9b-37882648ef4f'::uuid AS category_uuid, 'vernis-semi-permanent' AS slug, 'Vernis semi-permanent' AS name, 4118b55c-cc28-47bc-b5d7-fd2e75069b6f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '77d8c1c8-504f-41c1-8686-8a09cc841d81'::uuid AS category_uuid, 'gels-uv' AS slug, 'Gels UV' AS name, 4118b55c-cc28-47bc-b5d7-fd2e75069b6f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '2754ff6c-05ab-4314-b2f1-adbf2d7d2bb9'::uuid AS category_uuid, 'lampes-uv' AS slug, 'Lampes UV' AS name, 4118b55c-cc28-47bc-b5d7-fd2e75069b6f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '7ae5ed41-2448-4b03-9e1e-c1992434fc89'::uuid AS category_uuid, 'kits-manucure' AS slug, 'Kits manucure' AS name, 4118b55c-cc28-47bc-b5d7-fd2e75069b6f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'e0a67909-e4af-401b-a66c-0ad1c0593831'::uuid AS category_uuid, 'dissolvants' AS slug, 'Dissolvants' AS name, 4118b55c-cc28-47bc-b5d7-fd2e75069b6f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'cb9a07de-43fa-4bb5-929f-b5da9a2ac40e'::uuid AS category_uuid, 'soins-des-ongles' AS slug, 'Soins des ongles' AS name, 4118b55c-cc28-47bc-b5d7-fd2e75069b6f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '0e3a6bf7-c55b-4ce2-b7aa-d226cd66f5d6'::uuid AS category_uuid, 'faux-ongles' AS slug, 'Faux ongles' AS name, 4118b55c-cc28-47bc-b5d7-fd2e75069b6f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '1a1090fb-77bc-4b9a-b4ca-20a3878ed498'::uuid AS category_uuid, 'colle-pour-nails' AS slug, 'Colle pour nails' AS name, 4118b55c-cc28-47bc-b5d7-fd2e75069b6f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'f4823aa3-6ddc-461d-af14-c01b4cd2099c'::uuid AS category_uuid, 'outils-pro' AS slug, 'Outils pro' AS name, 4118b55c-cc28-47bc-b5d7-fd2e75069b6f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '2604ae03-2a0a-4f76-8f2d-97c9101aafb4'::uuid AS category_uuid, 'produits-solaires-cremes-spf' AS slug, 'Crèmes SPF' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '2d2f6982-49e3-4a20-87c8-0d0bf7040606'::uuid AS category_uuid, 'produits-solaires-sprays-solaires' AS slug, 'Sprays' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'ec86d09c-473c-4829-8939-17dbf494e4c4'::uuid AS category_uuid, 'produits-solaires-huiles-solaires' AS slug, 'Huiles solaires' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '2bc180bb-8444-4f8b-bcdc-c23b01edf729'::uuid AS category_uuid, 'produits-solaires-protections-enfants' AS slug, 'Protections enfants' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'c8699b40-0557-4ef4-9bbf-7050cbd69c5d'::uuid AS category_uuid, 'sticks-solaires' AS slug, 'Sticks solaires' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '9de6412f-2856-4d7d-ac62-8b0b5efc5be5'::uuid AS category_uuid, 'apres-soleil' AS slug, 'Après-soleil' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '80eae343-e632-4fe8-8905-13c20c510c4f'::uuid AS category_uuid, 'cremes-teintees-spf' AS slug, 'Crèmes teintées SPF' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'f939efb1-3390-49f8-92cb-3607509a81cf'::uuid AS category_uuid, 'beaute-naturelle-bio-huiles-naturelles' AS slug, 'Huiles naturelles' AS name, 3b7bc272-c6c1-421b-82d7-c963e1afa023::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '7439ffc5-fe11-4a1d-a385-ce0d86502cc0'::uuid AS category_uuid, 'beurres-vegetaux' AS slug, 'Beurres végétaux' AS name, 3b7bc272-c6c1-421b-82d7-c963e1afa023::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '5b8ec199-d348-4413-a4cb-84ac39541315'::uuid AS category_uuid, 'eau-florale' AS slug, 'Eau florale' AS name, 3b7bc272-c6c1-421b-82d7-c963e1afa023::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'bcd132ae-1610-4de1-9e7a-9191d10ea6d0'::uuid AS category_uuid, 'hydrolats' AS slug, 'Hydrolats' AS name, 3b7bc272-c6c1-421b-82d7-c963e1afa023::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '49333987-991d-4971-9766-71d8785c6eb7'::uuid AS category_uuid, 'savons-artisanaux' AS slug, 'Savons artisanaux' AS name, 3b7bc272-c6c1-421b-82d7-c963e1afa023::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'ab576273-b1ff-4374-8576-d83e5a2a5341'::uuid AS category_uuid, 'cosmetiques-bio' AS slug, 'Cosmétiques bio' AS name, 3b7bc272-c6c1-421b-82d7-c963e1afa023::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'd0a3aef7-eddc-4682-ab4e-98f55607ce87'::uuid AS category_uuid, 'soins-solides' AS slug, 'Soins solides' AS name, 3b7bc272-c6c1-421b-82d7-c963e1afa023::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '6f062f0b-408c-4eb7-9875-93288f6dcbd2'::uuid AS category_uuid, 'produits-vegan' AS slug, 'Produits vegan' AS name, 3b7bc272-c6c1-421b-82d7-c963e1afa023::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '947da3d7-6fd7-4c28-a3e5-a6082288eaba'::uuid AS category_uuid, 'aromatherapie-huiles-essentielles' AS slug, 'Huiles essentielles' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '4d12b11c-1559-4b4d-b95f-bce678806620'::uuid AS category_uuid, 'aromatherapie-diffuseurs' AS slug, 'Diffuseurs' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'fe2ebab2-03a0-466d-8b0d-5dad76bae3f5'::uuid AS category_uuid, 'synergies-bien-etre' AS slug, 'Synergies bien-être' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'c004c2c6-6781-4c6a-9ef3-c9edcb2d1060'::uuid AS category_uuid, 'roll-on-relaxants' AS slug, 'Roll-on relaxants' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'aa7e7d41-8f22-4a8d-8468-6a1fb349929d'::uuid AS category_uuid, 'brumes-parfumees' AS slug, 'Brumes parfumées' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '58d0af34-68a0-4969-9f73-595233fec2d5'::uuid AS category_uuid, 'huiles-massage-relaxantes' AS slug, 'Huiles de massage relaxantes' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '5d8f4b9e-1231-4f1b-8da4-5f651d4d035a'::uuid AS category_uuid, 'phytotherapie-plantes-medicinales' AS slug, 'Plantes médicinales' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '5ce1363c-fd66-493f-a4d6-6b61cdc2ec47'::uuid AS category_uuid, 'phytotherapie-extraits-naturels' AS slug, 'Extraits naturels' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '117037b4-e1d8-4aeb-af40-782a0cb8d5a0'::uuid AS category_uuid, 'tisanes-sante' AS slug, 'Tisanes santé' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'e6331bed-7058-443d-9519-a8aaea7fd2ec'::uuid AS category_uuid, 'complements-naturels' AS slug, 'Compléments naturels' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'abb0e80e-225e-4e0d-bf4d-b562c9652bac'::uuid AS category_uuid, 'poudres-de-plantes' AS slug, 'Poudres de plantes' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'a2ccb20a-ba69-459f-8f9c-c0853324962d'::uuid AS category_uuid, 'gelules-phytotherapie' AS slug, 'Gélules phytothérapie' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'aec7d7f2-c090-4411-b95c-9c3ce4dff32d'::uuid AS category_uuid, 'sante-generale-vitamines' AS slug, 'Vitamines' AS name, 1de0a0bb-8576-4046-91c1-b9b2f42a121e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '2c565e15-b14a-466a-964f-9423d2c88a91'::uuid AS category_uuid, 'sante-generale-complements-alimentaires' AS slug, 'Compléments alimentaires' AS name, 1de0a0bb-8576-4046-91c1-b9b2f42a121e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '0f14d2a2-2a22-4412-b989-d8f1bcd5ea5a'::uuid AS category_uuid, 'sante-generale-mineraux' AS slug, 'Minéraux' AS name, 1de0a0bb-8576-4046-91c1-b9b2f42a121e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '8d31bd43-8a12-44d0-a84b-5e9d99b0253c'::uuid AS category_uuid, 'sante-generale-probiotiques' AS slug, 'Probiotiques' AS name, 1de0a0bb-8576-4046-91c1-b9b2f42a121e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'a4889e50-ac4f-4abe-aa75-447107b243a8'::uuid AS category_uuid, 'sante-generale-produits-immunite' AS slug, 'Produits immunité' AS name, 1de0a0bb-8576-4046-91c1-b9b2f42a121e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '48d42501-076f-412d-8a4b-5f5b28195a87'::uuid AS category_uuid, 'antioxydants' AS slug, 'Antioxydants' AS name, 1de0a0bb-8576-4046-91c1-b9b2f42a121e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'd9594880-f34a-4dc5-8c79-800fb6965c40'::uuid AS category_uuid, 'sante-generale-omega-3' AS slug, 'Oméga-3' AS name, 1de0a0bb-8576-4046-91c1-b9b2f42a121e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '8eee7acf-5a23-4260-aa35-582e5fcfeff6'::uuid AS category_uuid, 'sante-generale-produits-detox' AS slug, 'Produits détox' AS name, 1de0a0bb-8576-4046-91c1-b9b2f42a121e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '1a7f7715-2229-4297-9f1f-879a18f5e530'::uuid AS category_uuid, 'sante-generale-supplements-sportifs' AS slug, 'Suppléments sportifs' AS name, 1de0a0bb-8576-4046-91c1-b9b2f42a121e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'c3c3ac94-2437-4a48-8eb9-0feb82d8551b'::uuid AS category_uuid, 'antalgiques' AS slug, 'Antalgiques' AS name, 03171ebf-373a-45c0-8cc4-af934ab13a85::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'a97f30fe-e4e9-4507-9e7c-75d26e215ce8'::uuid AS category_uuid, 'produits-orl' AS slug, 'Produits ORL' AS name, 03171ebf-373a-45c0-8cc4-af934ab13a85::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '7ea98932-e92d-4152-9912-ee8e3b5d2d05'::uuid AS category_uuid, 'digestifs' AS slug, 'Digestifs' AS name, 03171ebf-373a-45c0-8cc4-af934ab13a85::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'c6c4f97e-52af-4c6a-98d5-e6428ea518c9'::uuid AS category_uuid, 'anti-acides' AS slug, 'Anti-acides' AS name, 03171ebf-373a-45c0-8cc4-af934ab13a85::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '1c016c86-ac0d-4586-99c2-d665d85acefb'::uuid AS category_uuid, 'medicaments-sans-ordonnance-sirops' AS slug, 'Sirops' AS name, 03171ebf-373a-45c0-8cc4-af934ab13a85::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '74a59dae-6be8-4bcf-942e-a712215831b4'::uuid AS category_uuid, 'pastilles' AS slug, 'Pastilles' AS name, 03171ebf-373a-45c0-8cc4-af934ab13a85::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '071fedc2-09af-41f8-825f-5918fb068573'::uuid AS category_uuid, 'antihistaminiques' AS slug, 'Antihistaminiques' AS name, 03171ebf-373a-45c0-8cc4-af934ab13a85::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '917cf8d8-de24-41c5-bedf-5478562d397c'::uuid AS category_uuid, 'rhume' AS slug, 'Produits contre le rhume' AS name, 03171ebf-373a-45c0-8cc4-af934ab13a85::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '22f1d781-6f6b-4664-8bce-b0da976bb283'::uuid AS category_uuid, 'premiers-secours-pansements' AS slug, 'Pansements' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'f1fa36c7-ecf4-436f-ac04-dabcd39e86c5'::uuid AS category_uuid, 'premiers-secours-bandes' AS slug, 'Bandes' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'cb1f3403-92fb-4089-b4c8-59645ca69c52'::uuid AS category_uuid, 'premiers-secours-compresses' AS slug, 'Compresses' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'f6fee479-b125-470c-96e3-dd4e768e13ba'::uuid AS category_uuid, 'premiers-secours-antiseptiques' AS slug, 'Antiseptiques' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '433ec50c-020e-4194-bb5c-40b69b9208f4'::uuid AS category_uuid, 'premiers-secours-solutions-iodees' AS slug, 'Solutions iodées' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '4690b223-65c9-49c0-8145-bd2b2df77be1'::uuid AS category_uuid, 'premiers-secours-sprays-cicatrisants' AS slug, 'Sprays cicatrisants' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '11730340-15fe-48e1-b887-41a15a63eb51'::uuid AS category_uuid, 'trousses-premiers-secours' AS slug, 'Trousses de premiers secours' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '8897be48-5878-4692-868d-b86ef638b33b'::uuid AS category_uuid, 'materiel-medical-leger-tensiometres' AS slug, 'Tensiomètres' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'e0c86797-3ea4-4433-95f7-2d60b3018524'::uuid AS category_uuid, 'materiel-medical-leger-thermometres' AS slug, 'Thermomètres' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'd421e914-74cd-4d46-8b25-1add34593ea7'::uuid AS category_uuid, 'materiel-medical-leger-glucometres' AS slug, 'Glucomètres' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'bd319183-e31f-4bae-bcb8-a302f84f16f3'::uuid AS category_uuid, 'materiel-medical-leger-oxymetres' AS slug, 'Oxymètres' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'd5e50ed5-bf09-4d1e-8ae1-714f72e71f01'::uuid AS category_uuid, 'materiel-medical-leger-nebuliseurs' AS slug, 'Nébuliseurs' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '7fd3cd67-9478-4730-9677-1cbe349da1fd'::uuid AS category_uuid, 'materiel-medical-leger-tests-rapides' AS slug, 'Tests rapides' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'ced71880-1b34-49d2-8ac4-1f6edea7c07e'::uuid AS category_uuid, 'coussins-chauffants' AS slug, 'Coussins chauffants' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '09547b77-5730-4c14-86ea-079101108323'::uuid AS category_uuid, 'ceintures-lombaires' AS slug, 'Ceintures lombaires' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'fd689058-4ac5-468e-8feb-e7f364385397'::uuid AS category_uuid, 'hygiene-bucco-dentaire-dentifrices' AS slug, 'Dentifrices' AS name, deee9333-759e-47ad-9f95-ac657b67ea6e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '8b9b1191-2d06-4f3c-a16e-6c8b00fb4908'::uuid AS category_uuid, 'bains-de-bouche' AS slug, 'Bains de bouche' AS name, deee9333-759e-47ad-9f95-ac657b67ea6e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),
  level = EXCLUDED.level,
  category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),
  updated_at = NOW();

-- Lot 35 terminé: 100 entrées
