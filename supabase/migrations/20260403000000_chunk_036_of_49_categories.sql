-- ============================================================
-- CHUNK 36/49 — 100 catégories
-- Total: 4836 catégories
-- Exécuter dans l'ordre dans Supabase SQL Editor
-- ============================================================

INSERT INTO public.categories
  (category_uuid, slug, name, parent_id, level, is_active, created_at, updated_at)
VALUES
  SELECT 'd69c7e1c-fb7f-4476-8342-383410bae7c6'::uuid AS category_uuid, 'brosses-a-dents' AS slug, 'Brosses à dents' AS name, deee9333-759e-47ad-9f95-ac657b67ea6e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '6ece09f3-d842-438d-8698-e2ab03344892'::uuid AS category_uuid, 'fils-dentaires' AS slug, 'Fils dentaires' AS name, deee9333-759e-47ad-9f95-ac657b67ea6e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '5370b745-8295-443d-8417-915a79ae095f'::uuid AS category_uuid, 'hygiene-bucco-dentaire-blanchiment-dentaire' AS slug, 'Blanchiment dentaire' AS name, deee9333-759e-47ad-9f95-ac657b67ea6e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'e6f3dc5a-7dcc-45a6-a550-c105864db22d'::uuid AS category_uuid, 'kits-orthodontiques' AS slug, 'Kits orthodontiques' AS name, deee9333-759e-47ad-9f95-ac657b67ea6e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '4c3f8cee-9d91-44d6-8d2f-c397d7c74894'::uuid AS category_uuid, 'hygiene-feminine-serviettes' AS slug, 'Serviettes' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '684729d8-7281-4fbe-aae4-c44d881a1765'::uuid AS category_uuid, 'hygiene-feminine-tampons' AS slug, 'Tampons' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'd0053ca6-143d-4361-a395-6ba21161f058'::uuid AS category_uuid, 'hygiene-feminine-coupes-menstruelles' AS slug, 'Coupes menstruelles' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '8c29a94d-9a4b-4d22-b0e6-163d86cacebe'::uuid AS category_uuid, 'hygiene-feminine-gels-intimes' AS slug, 'Gels intimes' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '7ede35fd-53f8-47ae-992b-31805ef6041f'::uuid AS category_uuid, 'soins-post-partum' AS slug, 'Soins post-partum' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'cb1a7a59-27c8-46ef-b078-396e04ecabda'::uuid AS category_uuid, 'protections-urinaires' AS slug, 'Protections urinaires' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'b84831fe-dd17-48fb-b601-89bb12c86562'::uuid AS category_uuid, 'hygiene-masculine-soins-barbe' AS slug, 'Soins barbe' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '7b3fe6c9-c5f9-415c-a5aa-2f97399bb3e9'::uuid AS category_uuid, 'mousses-a-raser' AS slug, 'Mousses à raser' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '41c3ff96-44fe-42f5-a6ee-23bcb425b793'::uuid AS category_uuid, 'gels-de-rasage' AS slug, 'Gels de rasage' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '61f8a16c-1723-4265-9287-b3cc57b82675'::uuid AS category_uuid, 'hygiene-masculine-huiles-barbe' AS slug, 'Huiles barbe' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '44e37468-a571-4830-ac06-56363ad0b3ed'::uuid AS category_uuid, 'hygiene-masculine-lotions-apres-rasage' AS slug, 'Lotions après-rasage' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'c3755fc9-c0fe-4781-b050-86150d41fce0'::uuid AS category_uuid, 'hygiene-masculine-soins-visage-homme' AS slug, 'Soins visage homme' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '98f6ad2a-485d-4eae-871e-7c303e25b0c6'::uuid AS category_uuid, 'appareils-led' AS slug, 'Appareils LED' AS name, 88ec40a6-d7a1-4437-9554-6d3e6fe96d22::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'ad0c6ad8-ca85-4b50-a17f-58ed19a0899a'::uuid AS category_uuid, 'appareils-massage-visage' AS slug, 'Appareils massage visage' AS name, 88ec40a6-d7a1-4437-9554-6d3e6fe96d22::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '05666457-806c-4e63-86e7-029c84f080bc'::uuid AS category_uuid, 'microdermabrasion' AS slug, 'Microdermabrasion' AS name, 88ec40a6-d7a1-4437-9554-6d3e6fe96d22::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '9d50e6d3-062c-4c5c-8674-a9ce66a8a56e'::uuid AS category_uuid, 'epilateurs-pro' AS slug, 'Épilateurs pro' AS name, 88ec40a6-d7a1-4437-9554-6d3e6fe96d22::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '415053f8-2df8-4c1b-b80f-e283e7a5d95d'::uuid AS category_uuid, 'lits-esthetique' AS slug, 'Lits esthétique' AS name, 88ec40a6-d7a1-4437-9554-6d3e6fe96d22::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'fbb50318-b0d3-463a-8126-6ba3fc3f8d86'::uuid AS category_uuid, 'materiel-esthetique-pro-tabourets' AS slug, 'Tabourets' AS name, 88ec40a6-d7a1-4437-9554-6d3e6fe96d22::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '89d05abe-51a7-425a-bf2f-cd674ab0865b'::uuid AS category_uuid, 'sterilisateurs-uv' AS slug, 'Stérilisateurs UV' AS name, 88ec40a6-d7a1-4437-9554-6d3e6fe96d22::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '0e3daace-11c2-425f-bb5c-a0203b85631c'::uuid AS category_uuid, 'cire-chaude' AS slug, 'Cire chaude' AS name, 38b0bc28-2b54-44a3-bc02-2c21f8e6a4d2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '000adac5-9ccf-41c2-a4f1-064ad2c50e2f'::uuid AS category_uuid, 'cire-froide' AS slug, 'Cire froide' AS name, 38b0bc28-2b54-44a3-bc02-2c21f8e6a4d2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'b9f0c313-82f8-4631-a559-24cd742ada1d'::uuid AS category_uuid, 'epilation-bandes' AS slug, 'Bandes' AS name, 38b0bc28-2b54-44a3-bc02-2c21f8e6a4d2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '69ce40c5-8e2c-4bbc-bc7c-c7590d9a4036'::uuid AS category_uuid, 'epilateurs-electriques' AS slug, 'Épilateurs électriques' AS name, 38b0bc28-2b54-44a3-bc02-2c21f8e6a4d2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '61189ff3-fdf0-40cc-9c1e-f48176ec2478'::uuid AS category_uuid, 'cremes-depilatoires' AS slug, 'Crèmes dépilatoires' AS name, 38b0bc28-2b54-44a3-bc02-2c21f8e6a4d2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'bc821225-8f38-4da0-8649-ef1d254edc11'::uuid AS category_uuid, 'kits-de-cire' AS slug, 'Kits de cire' AS name, 38b0bc28-2b54-44a3-bc02-2c21f8e6a4d2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '4179031f-3140-487b-a93f-e621520aaaca'::uuid AS category_uuid, 'massage-bien-etre-huiles-massage' AS slug, 'Huiles' AS name, 1a2d9aa8-77e4-4c27-9f28-74e8d09d8736::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '0ed43be5-931d-4a5b-a79c-23d698c89deb'::uuid AS category_uuid, 'cremes-chauffantes' AS slug, 'Crèmes chauffantes' AS name, 1a2d9aa8-77e4-4c27-9f28-74e8d09d8736::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '0c6cfd8a-41c7-4194-8b66-4a59401c25dd'::uuid AS category_uuid, 'balles-massage' AS slug, 'Balles de massage' AS name, 1a2d9aa8-77e4-4c27-9f28-74e8d09d8736::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '11be16e6-a216-4ffe-9036-b9e2fbd82101'::uuid AS category_uuid, 'appareils-anti-douleur' AS slug, 'Appareils anti-douleur' AS name, 1a2d9aa8-77e4-4c27-9f28-74e8d09d8736::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '96d15f0e-c83a-46da-ae8d-cb038f4342ca'::uuid AS category_uuid, 'masseurs-electriques' AS slug, 'Masseurs électriques' AS name, 1a2d9aa8-77e4-4c27-9f28-74e8d09d8736::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '8ef8a4a1-0138-4a8f-bc61-ffae8709bac0'::uuid AS category_uuid, 'extensions-de-cils' AS slug, 'Extensions de cils' AS name, d04a80b9-5e90-44da-8552-4aaa25e01185::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '83484abc-7991-4d39-8e63-756010aa3662'::uuid AS category_uuid, 'colles-pour-cils' AS slug, 'Colles pour cils' AS name, d04a80b9-5e90-44da-8552-4aaa25e01185::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '4820ec6f-687d-42a9-9b74-f072f61be489'::uuid AS category_uuid, 'serums-cils' AS slug, 'Sérums cils' AS name, d04a80b9-5e90-44da-8552-4aaa25e01185::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'f716c2a1-77eb-46d5-bbd0-92a1db21d8e3'::uuid AS category_uuid, 'faux-cils' AS slug, 'Faux cils' AS name, d04a80b9-5e90-44da-8552-4aaa25e01185::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '805e780e-01be-4ad8-b3cd-561cb0ef6e81'::uuid AS category_uuid, 'kits-professionnels' AS slug, 'Kits professionnels' AS name, d04a80b9-5e90-44da-8552-4aaa25e01185::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '7a1c4864-cb99-4486-aa31-91ff67503bd6'::uuid AS category_uuid, 'diffuseurs-huiles' AS slug, 'Diffuseurs huiles' AS name, 87db7e82-258b-4ffc-a4e8-a02cdb50a947::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'f67eb2a3-4cbc-4449-b49f-336a204136e9'::uuid AS category_uuid, 'bougies-parfumees' AS slug, 'Bougies parfumées' AS name, 87db7e82-258b-4ffc-a4e8-a02cdb50a947::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '4fa1cd19-dcfa-4a64-ac7f-7bc4544357f8'::uuid AS category_uuid, 'sels-de-bain-spa' AS slug, 'Sels de bain' AS name, 87db7e82-258b-4ffc-a4e8-a02cdb50a947::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '5fb5f9e7-7e27-4bda-bfa7-54c4c89fa52d'::uuid AS category_uuid, 'gommages-spa' AS slug, 'Gommages spa' AS name, 87db7e82-258b-4ffc-a4e8-a02cdb50a947::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '18018709-2c8f-4dbb-9f47-304545e253c3'::uuid AS category_uuid, 'soins-relaxants' AS slug, 'Soins relaxants' AS name, 87db7e82-258b-4ffc-a4e8-a02cdb50a947::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'bbf21b92-e059-4aac-9639-91281dd489ca'::uuid AS category_uuid, 'dermatologie-specialisee-cremes-medicales' AS slug, 'Crèmes médicales' AS name, 746c2e3f-cab2-43b7-a7ba-3b3ea5486157::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'c3459b50-4354-469d-9905-e7986a350764'::uuid AS category_uuid, 'peaux-sensibles' AS slug, 'Soins pour peaux sensibles' AS name, 746c2e3f-cab2-43b7-a7ba-3b3ea5486157::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '1b1d42da-fb8a-446a-9413-08b56c7d8b91'::uuid AS category_uuid, 'produits-hypoallergenique' AS slug, 'Produits hypoallergéniques' AS name, 746c2e3f-cab2-43b7-a7ba-3b3ea5486157::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'ae45d20e-dcbb-4b6b-a784-8b9bd77f96b5'::uuid AS category_uuid, 'traitements-non-prescrits' AS slug, 'Traitements dermatologiques non prescrits' AS name, 746c2e3f-cab2-43b7-a7ba-3b3ea5486157::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '8aeeef5d-f753-4bd9-a757-cdb3079cf598'::uuid AS category_uuid, 'collagene' AS slug, 'Collagène' AS name, 1f98ef24-1a27-4df3-a649-bcf99b27c8bb::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'db3bcb61-77a8-4ee1-8e27-debe5f9eb1ab'::uuid AS category_uuid, 'acide-hyaluronique' AS slug, 'Acide hyaluronique' AS name, 1f98ef24-1a27-4df3-a649-bcf99b27c8bb::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '619984f8-db71-4190-bf11-7f615d14fdd3'::uuid AS category_uuid, 'complements-peau-ongles-cheveux' AS slug, 'Compléments peau/ongles/cheveux' AS name, 1f98ef24-1a27-4df3-a649-bcf99b27c8bb::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '1c65da11-07fc-4e87-ac18-57481bdee2ce'::uuid AS category_uuid, 'gummies-beaute' AS slug, 'Gummies beauté' AS name, 1f98ef24-1a27-4df3-a649-bcf99b27c8bb::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '67cf7dca-aab3-453a-8715-2566aeac6289'::uuid AS category_uuid, 'porte-savons' AS slug, 'Porte-savons' AS name, 0ca1b753-12fd-4de9-a5c2-7876b71aa26d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '5f512ff9-caa0-4b3e-ae67-f58519ebf792'::uuid AS category_uuid, 'rangements-cosmetiques' AS slug, 'Rangements cosmétiques' AS name, 0ca1b753-12fd-4de9-a5c2-7876b71aa26d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'aa64bc59-b79c-4e4d-8ce8-5a2c1b510425'::uuid AS category_uuid, 'organisateurs' AS slug, 'Organisateurs' AS name, 0ca1b753-12fd-4de9-a5c2-7876b71aa26d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '8fc3585f-6ad6-46d0-879b-255e5b2d9063'::uuid AS category_uuid, 'flacons-rechargeables' AS slug, 'Flacons rechargeables' AS name, 0ca1b753-12fd-4de9-a5c2-7876b71aa26d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '832cf09c-484b-4983-a090-3953749f95cc'::uuid AS category_uuid, 'distributeurs' AS slug, 'Distributeurs' AS name, 0ca1b753-12fd-4de9-a5c2-7876b71aa26d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '1f94ebb2-9177-4737-9aa6-670a701f7f2d'::uuid AS category_uuid, 'strips-blanchissants' AS slug, 'Strips blanchissants' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '0eddda58-87f6-4f22-91bf-f10e29c01e27'::uuid AS category_uuid, 'gels-blanchissants' AS slug, 'Gels blanchissants' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '5a9b0003-0b83-43b7-9f32-14ce924e6c9a'::uuid AS category_uuid, 'kits-led' AS slug, 'Kits LED' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'b1552f76-5c4c-4013-bf3d-b5fe65d8bfda'::uuid AS category_uuid, 'mousses-blanchissantes' AS slug, 'Mousses blanchissantes' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '37dc4448-70fd-4fb8-ba49-3865f3e204d4'::uuid AS category_uuid, 'gastronomie-alimentation' AS slug, 'Gastronomie & Alimentation' AS name, NULL::uuid AS parent_id, 1 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '79a7d925-d83b-4a3b-b28e-01991dba2197'::uuid AS category_uuid, 'epicerie-salee' AS slug, 'Épicerie salée' AS name, 37dc4448-70fd-4fb8-ba49-3865f3e204d4::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '92173df4-ff49-4227-99cd-384dd0a75496'::uuid AS category_uuid, 'epicerie-sucree' AS slug, 'Épicerie sucrée' AS name, 37dc4448-70fd-4fb8-ba49-3865f3e204d4::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'cd0c4195-6e0f-4c9c-8fd7-18dc62c2357b'::uuid AS category_uuid, 'conserves-boites' AS slug, 'Conserves & produits en boîte' AS name, 37dc4448-70fd-4fb8-ba49-3865f3e204d4::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '7630593d-fb16-472b-b1e4-140766a6e406'::uuid AS category_uuid, 'produits-frais' AS slug, 'Produits frais' AS name, 37dc4448-70fd-4fb8-ba49-3865f3e204d4::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '02f657fa-ba42-4c05-8340-fb0247378861'::uuid AS category_uuid, 'produits-surgeles' AS slug, 'Produits surgelés' AS name, 37dc4448-70fd-4fb8-ba49-3865f3e204d4::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'ecc1ebb3-819c-47ec-b95d-25b94d5a47e7'::uuid AS category_uuid, 'viandes-volailles' AS slug, 'Viandes & volailles' AS name, 37dc4448-70fd-4fb8-ba49-3865f3e204d4::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'ec6f1854-7a4b-4a81-80b3-d9455e5e00bc'::uuid AS category_uuid, 'poissons-fruits-de-mer' AS slug, 'Poissons & fruits de mer' AS name, 37dc4448-70fd-4fb8-ba49-3865f3e204d4::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'b676079a-c3f9-4422-8b00-baeaa117185c'::uuid AS category_uuid, 'fruits-legumes' AS slug, 'Fruits & légumes' AS name, 37dc4448-70fd-4fb8-ba49-3865f3e204d4::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '218843ce-f4ce-442b-899d-946692eda7a2'::uuid AS category_uuid, 'boulangerie-patisserie' AS slug, 'Boulangerie & pâtisserie' AS name, 37dc4448-70fd-4fb8-ba49-3865f3e204d4::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'e0e50da5-32b2-493a-a705-5a65be5aca56'::uuid AS category_uuid, 'gastronomie-alimentation-produits-laitiers' AS slug, 'Produits laitiers' AS name, 37dc4448-70fd-4fb8-ba49-3865f3e204d4::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'acb4ab3b-10dc-450c-a14c-98e4cb2322ce'::uuid AS category_uuid, 'huiles-condiments' AS slug, 'Huiles & condiments' AS name, 37dc4448-70fd-4fb8-ba49-3865f3e204d4::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'c5d936c7-4c9f-4882-99b0-797e260f7df7'::uuid AS category_uuid, 'epices-assaisonnements' AS slug, 'Épices & assaisonnements' AS name, 37dc4448-70fd-4fb8-ba49-3865f3e204d4::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '4c3495cb-82c8-4ae0-b476-d7feed8b5122'::uuid AS category_uuid, 'boissons' AS slug, 'Boissons' AS name, 37dc4448-70fd-4fb8-ba49-3865f3e204d4::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'bab19e33-cd6e-4da7-a449-611152c02f66'::uuid AS category_uuid, 'cafe-the' AS slug, 'Café & thé' AS name, 37dc4448-70fd-4fb8-ba49-3865f3e204d4::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'feddb160-9d72-4b19-b440-60aa124fba1c'::uuid AS category_uuid, 'produits-bio-naturels' AS slug, 'Produits bio & naturels' AS name, 37dc4448-70fd-4fb8-ba49-3865f3e204d4::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'd4e190a4-0d57-4ed0-bdab-54c4199b7232'::uuid AS category_uuid, 'produits-orientaux-traditionnels' AS slug, 'Produits orientaux & traditionnels' AS name, 37dc4448-70fd-4fb8-ba49-3865f3e204d4::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '1b0458a6-17d8-4621-bc1a-29505179a6a2'::uuid AS category_uuid, 'snacks-aperitifs' AS slug, 'Snacks & apéritifs' AS name, 37dc4448-70fd-4fb8-ba49-3865f3e204d4::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'ed344d25-0451-4a29-85db-80a42ea8635d'::uuid AS category_uuid, 'cuisine-internationale' AS slug, 'Produits pour cuisine internationale' AS name, 37dc4448-70fd-4fb8-ba49-3865f3e204d4::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '2173bcc7-4020-4359-8644-19aaa4dc74db'::uuid AS category_uuid, 'produits-halal' AS slug, 'Produits halal' AS name, 37dc4448-70fd-4fb8-ba49-3865f3e204d4::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'e6fa0fa9-a5d2-4ed7-970c-c7ec4b430100'::uuid AS category_uuid, 'nutrition-sportive' AS slug, 'Nutrition sportive' AS name, 37dc4448-70fd-4fb8-ba49-3865f3e204d4::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '27122f7e-1023-4cab-9d1b-4c611c4760a6'::uuid AS category_uuid, 'dietetique-sante' AS slug, 'Diététique & santé' AS name, 37dc4448-70fd-4fb8-ba49-3865f3e204d4::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'fa0d1403-2466-49ed-837c-34ebe110d5ee'::uuid AS category_uuid, 'produits-patisserie' AS slug, 'Produits pour pâtisserie' AS name, 37dc4448-70fd-4fb8-ba49-3865f3e204d4::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '7f12dc02-a817-4576-9cd1-fad2ca9f2924'::uuid AS category_uuid, 'produits-cuisine' AS slug, 'Produits pour cuisine' AS name, 37dc4448-70fd-4fb8-ba49-3865f3e204d4::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '531520f5-fcb3-4971-a580-6668339e0458'::uuid AS category_uuid, 'gourmandises-douceurs' AS slug, 'Gourmandises & douceurs' AS name, 37dc4448-70fd-4fb8-ba49-3865f3e204d4::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '71342045-f9b8-40e2-a0bc-6c2bc7cf4b1a'::uuid AS category_uuid, 'gastronomie-alimentation-produits-bebe' AS slug, 'Produits pour bébé' AS name, 37dc4448-70fd-4fb8-ba49-3865f3e204d4::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'eec8b2dd-a757-4056-867c-71f297e55f27'::uuid AS category_uuid, 'eaux-hydratation' AS slug, 'Eaux & hydratation' AS name, 37dc4448-70fd-4fb8-ba49-3865f3e204d4::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '00721b11-2cd0-48f8-9695-6f08f6c2bc4e'::uuid AS category_uuid, 'accessoires-culinaires' AS slug, 'Accessoires culinaires' AS name, 37dc4448-70fd-4fb8-ba49-3865f3e204d4::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'ed5056f5-58f6-4fd4-8c4d-e178bdfd5fca'::uuid AS category_uuid, 'pates' AS slug, 'pâtes' AS name, 79a7d925-d83b-4a3b-b28e-01991dba2197::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'cd96a93a-01c3-4a28-a986-bcc81ebb2438'::uuid AS category_uuid, 'riz' AS slug, 'riz' AS name, 79a7d925-d83b-4a3b-b28e-01991dba2197::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '8f5a5f79-3beb-42be-beb1-84afc1751af2'::uuid AS category_uuid, 'epicerie-salee-semoule' AS slug, 'semoule' AS name, 79a7d925-d83b-4a3b-b28e-01991dba2197::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '3394c80e-ea92-4021-b4b5-f4bb3cc80d70'::uuid AS category_uuid, 'epicerie-salee-couscous' AS slug, 'couscous' AS name, 79a7d925-d83b-4a3b-b28e-01991dba2197::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '95f86dc5-ede1-4f73-9516-7e1190754568'::uuid AS category_uuid, 'lentilles' AS slug, 'lentilles' AS name, 79a7d925-d83b-4a3b-b28e-01991dba2197::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '67762beb-baa1-48db-9dd6-a2d4de20e762'::uuid AS category_uuid, 'pois-chiches' AS slug, 'pois chiches' AS name, 79a7d925-d83b-4a3b-b28e-01991dba2197::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'b21e7655-f0cf-4ed4-8eb9-813349f6002d'::uuid AS category_uuid, 'haricots-secs' AS slug, 'haricots secs' AS name, 79a7d925-d83b-4a3b-b28e-01991dba2197::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'cf314e89-27f2-41a6-861a-f567edf4a98b'::uuid AS category_uuid, 'farines' AS slug, 'farines' AS name, 79a7d925-d83b-4a3b-b28e-01991dba2197::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT 'f23c0e2d-18e0-45f6-a96d-24275a75b1dc'::uuid AS category_uuid, 'boulghour' AS slug, 'boulghour' AS name, 79a7d925-d83b-4a3b-b28e-01991dba2197::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '0e21c98e-0025-4f4b-a6fe-4d96ea48ae0d'::uuid AS category_uuid, 'cereales' AS slug, 'céréales' AS name, 79a7d925-d83b-4a3b-b28e-01991dba2197::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
  UNION ALL
  SELECT '7b165999-68e8-4cd5-a9e7-cea8d7043936'::uuid AS category_uuid, 'conserves-salees' AS slug, 'conserves salées' AS name, 79a7d925-d83b-4a3b-b28e-01991dba2197::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.890Z' AS created_at, '2026-04-03T10:15:31.890Z' AS updated_at
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),
  level = EXCLUDED.level,
  category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),
  updated_at = NOW();

-- Lot 36 terminé: 100 entrées
