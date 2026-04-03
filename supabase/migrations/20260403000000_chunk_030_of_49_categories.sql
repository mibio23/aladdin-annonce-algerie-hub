-- ============================================================
-- CHUNK 30/49 — 100 catégories
-- Total: 4836 catégories
-- Exécuter dans l'ordre dans Supabase SQL Editor
-- ============================================================

INSERT INTO public.categories
  (category_uuid, slug, name, parent_id, level, is_active, created_at, updated_at)
VALUES
  SELECT '0186ae96-2b6c-4136-a0a4-e20e5058cdeb'::uuid AS category_uuid, 'pinceaux-ronds' AS slug, 'Pinceaux ronds' AS name, 4ff16881-635c-44f4-92a4-a7ea2db2a165::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '49915585-fea7-4a44-859d-c2b49166fab3'::uuid AS category_uuid, 'rouleaux-anti-goutte' AS slug, 'Rouleaux anti-goutte' AS name, 4ff16881-635c-44f4-92a4-a7ea2db2a165::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'dcd62e85-22e2-48fa-ba95-d3d81fd9b94e'::uuid AS category_uuid, 'rouleaux-laqueurs' AS slug, 'Rouleaux laqueurs' AS name, 4ff16881-635c-44f4-92a4-a7ea2db2a165::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '8ff151b7-b493-4b97-a6a5-be3c094052a3'::uuid AS category_uuid, 'bacs-a-peinture' AS slug, 'Bacs à peinture' AS name, 4ff16881-635c-44f4-92a4-a7ea2db2a165::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'e60a351c-80f0-4f5f-a942-3c3ae940d93d'::uuid AS category_uuid, 'grilles' AS slug, 'Grilles' AS name, 4ff16881-635c-44f4-92a4-a7ea2db2a165::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '2aa26933-6876-43b4-a998-67c1137c9526'::uuid AS category_uuid, 'abrasifs' AS slug, 'Abrasifs' AS name, 4ff16881-635c-44f4-92a4-a7ea2db2a165::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'a85092af-1336-4335-babc-5069845dc59c'::uuid AS category_uuid, 'papiers-de-verre' AS slug, 'Papiers de verre' AS name, 4ff16881-635c-44f4-92a4-a7ea2db2a165::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'd284d0a2-bb7f-4e10-b4a0-53ac9ec66a9f'::uuid AS category_uuid, 'enduits-de-finition' AS slug, 'Enduits de finition' AS name, 4ff16881-635c-44f4-92a4-a7ea2db2a165::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'a0692994-e767-4b9d-bb00-68a55500534f'::uuid AS category_uuid, 'apprets' AS slug, 'Apprêts' AS name, 4ff16881-635c-44f4-92a4-a7ea2db2a165::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '986d4a11-0148-457e-ac84-525dc9907892'::uuid AS category_uuid, 'baches-de-protection' AS slug, 'Bâches de protection' AS name, 4ff16881-635c-44f4-92a4-a7ea2db2a165::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'e76f7fd9-3094-4f15-871e-d41da735b47b'::uuid AS category_uuid, 'rubans-de-masquage' AS slug, 'Rubans de masquage' AS name, 4ff16881-635c-44f4-92a4-a7ea2db2a165::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'f1bf26d5-ab32-46c9-af27-af52b1e56c16'::uuid AS category_uuid, 'solvants' AS slug, 'Solvants' AS name, 4ff16881-635c-44f4-92a4-a7ea2db2a165::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '49869b69-159a-4f26-a76c-aaae463542d4'::uuid AS category_uuid, 'petits-outils-de-jardin' AS slug, 'Petits outils de jardin' AS name, d19d843c-0746-4db4-b34c-4646e6da70a5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '869ead15-4c24-4376-9bbf-349233622449'::uuid AS category_uuid, 'jardinerie-bricolage-leger-secateurs' AS slug, 'Sécateurs' AS name, d19d843c-0746-4db4-b34c-4646e6da70a5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '23eb950f-dae1-4f5c-9a96-62fad0d7945b'::uuid AS category_uuid, 'elagueurs' AS slug, 'Élagueurs' AS name, d19d843c-0746-4db4-b34c-4646e6da70a5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'aa35020e-ced4-468f-9b3c-c4615890ad5a'::uuid AS category_uuid, 'pulverisateurs' AS slug, 'Pulvérisateurs' AS name, d19d843c-0746-4db4-b34c-4646e6da70a5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '011629a0-29eb-4877-96e5-adb65fbba598'::uuid AS category_uuid, 'jardinerie-bricolage-leger-arrosoirs' AS slug, 'Arrosoirs' AS name, d19d843c-0746-4db4-b34c-4646e6da70a5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '183e0abc-d2e0-4ebf-87fe-fd40805492e7'::uuid AS category_uuid, 'mini-outils-de-plantation' AS slug, 'Mini-outils de plantation' AS name, d19d843c-0746-4db4-b34c-4646e6da70a5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'ec5a5770-6e40-4387-baa0-7a0d08a21bae'::uuid AS category_uuid, 'jardinerie-bricolage-leger-rateaux' AS slug, 'Râteaux' AS name, d19d843c-0746-4db4-b34c-4646e6da70a5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'dfe3ea2f-c72f-4fd3-8b9a-d1d293cd68bc'::uuid AS category_uuid, 'griffes' AS slug, 'Griffes' AS name, d19d843c-0746-4db4-b34c-4646e6da70a5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'f375c23b-063d-4865-8530-7c8481cc3a4b'::uuid AS category_uuid, 'kits-de-reparation-jardin' AS slug, 'Kits de réparation jardin' AS name, d19d843c-0746-4db4-b34c-4646e6da70a5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '109c9dab-fa22-4170-97f2-0e6403f08994'::uuid AS category_uuid, 'gants-de-jardinage' AS slug, 'Gants de jardinage' AS name, d19d843c-0746-4db4-b34c-4646e6da70a5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '1fc7c2d5-e49c-4092-bf81-b9e7fb99682e'::uuid AS category_uuid, 'joints-varies' AS slug, 'Joints variés' AS name, b93bec0b-5603-4a39-bd6d-cf471a387903::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '2024e5d6-0abf-4b2f-932a-68a048aab1cf'::uuid AS category_uuid, 'poignees-diverses' AS slug, 'Poignées diverses' AS name, b93bec0b-5603-4a39-bd6d-cf471a387903::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '8b09e2f6-ab5c-4b36-90ae-33817c7716a0'::uuid AS category_uuid, 'boutons-de-meuble' AS slug, 'Boutons de meuble' AS name, b93bec0b-5603-4a39-bd6d-cf471a387903::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'f63db078-d231-4f7a-93da-8b6af75d0979'::uuid AS category_uuid, 'pieds-de-meubles' AS slug, 'Pieds de meubles' AS name, b93bec0b-5603-4a39-bd6d-cf471a387903::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'e52e5ccd-e29d-40a6-ab24-5c19453d52fb'::uuid AS category_uuid, 'roulettes-de-deplacement' AS slug, 'Roulettes de déplacement' AS name, b93bec0b-5603-4a39-bd6d-cf471a387903::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '487c39e5-17e0-4c62-b0d9-632af7ce77da'::uuid AS category_uuid, 'ressorts' AS slug, 'Ressorts' AS name, b93bec0b-5603-4a39-bd6d-cf471a387903::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '6f28dbe6-73ab-4930-b7c5-dbbdc0d7438b'::uuid AS category_uuid, 'aimants' AS slug, 'Aimants' AS name, b93bec0b-5603-4a39-bd6d-cf471a387903::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '6851c22b-4628-4048-a86e-7f0892456f16'::uuid AS category_uuid, 'patins-anti-derapants' AS slug, 'Patins anti-dérapants' AS name, b93bec0b-5603-4a39-bd6d-cf471a387903::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'c30ac785-b745-4eb9-adda-d1d0adac2128'::uuid AS category_uuid, 'embouts-divers' AS slug, 'Embouts divers' AS name, b93bec0b-5603-4a39-bd6d-cf471a387903::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '3bfc85ba-7df6-44ee-8686-b30b460f11db'::uuid AS category_uuid, 'cales' AS slug, 'Cales' AS name, b93bec0b-5603-4a39-bd6d-cf471a387903::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '23ef6ddf-a7d7-48a2-93df-c30bfe4973d3'::uuid AS category_uuid, 'supports-multi-usages' AS slug, 'Supports multi-usages' AS name, b93bec0b-5603-4a39-bd6d-cf471a387903::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '9c2d7c0f-a24e-471f-a033-593856f08d5d'::uuid AS category_uuid, 'agriculture-agroalimentaire' AS slug, 'Agriculture & Agroalimentaire' AS name, NULL::uuid AS parent_id, 1 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'f18a802d-f62d-4a22-ac40-62577ebddd0a'::uuid AS category_uuid, 'materiel-agricole' AS slug, 'Matériel agricole' AS name, 9c2d7c0f-a24e-471f-a033-593856f08d5d::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'ae9e7f9b-3ad2-4b61-943b-65c54454d051'::uuid AS category_uuid, 'outils-equipements-de-culture' AS slug, 'Outils & équipements de culture' AS name, 9c2d7c0f-a24e-471f-a033-593856f08d5d::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '8d0f7c95-c277-46bb-8243-a6d8d873bf85'::uuid AS category_uuid, 'systemes-irrigation' AS slug, 'Systèmes d’irrigation' AS name, 9c2d7c0f-a24e-471f-a033-593856f08d5d::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '54308de3-76f1-45af-ae7e-e839497563ee'::uuid AS category_uuid, 'semences-plants' AS slug, 'Semences & plants' AS name, 9c2d7c0f-a24e-471f-a033-593856f08d5d::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'c9830006-ff5f-46d0-8761-a3db90dce692'::uuid AS category_uuid, 'engrais-fertilisants' AS slug, 'Engrais & fertilisants' AS name, 9c2d7c0f-a24e-471f-a033-593856f08d5d::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'a423fa2f-39c5-43b8-ad99-c3b18626f7cd'::uuid AS category_uuid, 'produits-phytosanitaires' AS slug, 'Produits phytosanitaires' AS name, 9c2d7c0f-a24e-471f-a033-593856f08d5d::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '7e95cd69-74fa-44cb-aea1-f87fd9495598'::uuid AS category_uuid, 'elevage-soins-animaux' AS slug, 'Élevage & soins des animaux' AS name, 9c2d7c0f-a24e-471f-a033-593856f08d5d::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'ed0313fd-195f-4a31-9156-08e6ac69d981'::uuid AS category_uuid, 'agriculture-agroalimentaire-materiel-elevage' AS slug, 'Matériel d’élevage' AS name, 9c2d7c0f-a24e-471f-a033-593856f08d5d::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'df5b037e-dfc2-46d0-85db-73197ae00fe7'::uuid AS category_uuid, 'produits-agricoles-bruts' AS slug, 'Produits agricoles bruts' AS name, 9c2d7c0f-a24e-471f-a033-593856f08d5d::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'c66cb56b-517a-4dab-ada8-d5946ce7020a'::uuid AS category_uuid, 'produits-agroalimentaires-transformes' AS slug, 'Produits agroalimentaires transformés' AS name, 9c2d7c0f-a24e-471f-a033-593856f08d5d::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '0b2da3ee-a38b-4951-8f77-c78202c43cf4'::uuid AS category_uuid, 'equipements-agroalimentaires' AS slug, 'Équipements agroalimentaires' AS name, 9c2d7c0f-a24e-471f-a033-593856f08d5d::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'c710d6a3-8db5-4793-8139-c9b50b1f50a5'::uuid AS category_uuid, 'serres-solutions-de-culture' AS slug, 'Serres & solutions de culture' AS name, 9c2d7c0f-a24e-471f-a033-593856f08d5d::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '2faff291-ea16-4019-b758-8571bbe56a68'::uuid AS category_uuid, 'amenagement-agricole' AS slug, 'Aménagement agricole' AS name, 9c2d7c0f-a24e-471f-a033-593856f08d5d::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'b2e86950-4ef6-4e52-9cba-e29f30bf2d3d'::uuid AS category_uuid, 'transport-logistique-agricole' AS slug, 'Transport & logistique agricole' AS name, 9c2d7c0f-a24e-471f-a033-593856f08d5d::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'fd82b9d2-c134-4476-b432-a4f533ab86b3'::uuid AS category_uuid, 'equipement-ruchers-apiculture' AS slug, 'Équipement pour ruchers & apiculture' AS name, 9c2d7c0f-a24e-471f-a033-593856f08d5d::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'eabdb085-5c88-4887-a77b-748b754818c0'::uuid AS category_uuid, 'controle-sanitaire-outils-produits' AS slug, 'Outils et produits de contrôle sanitaire' AS name, 9c2d7c0f-a24e-471f-a033-593856f08d5d::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '9569ec90-a69e-4f52-8225-3a62d546b21d'::uuid AS category_uuid, 'accessoires-consommables' AS slug, 'Accessoires & consommables' AS name, 9c2d7c0f-a24e-471f-a033-593856f08d5d::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '4e034a74-1905-4edd-88f7-9910d2d13e97'::uuid AS category_uuid, 'tracteurs-agricoles' AS slug, 'Tracteurs agricoles' AS name, f18a802d-f62d-4a22-ac40-62577ebddd0a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '53e342c4-2173-41eb-b758-24b760c9fdfa'::uuid AS category_uuid, 'micro-tracteurs' AS slug, 'Micro-tracteurs' AS name, f18a802d-f62d-4a22-ac40-62577ebddd0a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '151abb4b-f965-4c4e-b725-2bfbc6bda1a0'::uuid AS category_uuid, 'motoculteurs' AS slug, 'Motoculteurs' AS name, f18a802d-f62d-4a22-ac40-62577ebddd0a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '303d8390-91a1-4dc1-b848-929ac68bc66b'::uuid AS category_uuid, 'moissonneuses-batteuses' AS slug, 'Moissonneuses-batteuses' AS name, f18a802d-f62d-4a22-ac40-62577ebddd0a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'c7f577d3-ab72-439f-9d5d-213f7e458dce'::uuid AS category_uuid, 'charrues' AS slug, 'Charrues' AS name, f18a802d-f62d-4a22-ac40-62577ebddd0a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '7da91bcd-ac90-47a2-a257-87a879095127'::uuid AS category_uuid, 'herses' AS slug, 'Herses' AS name, f18a802d-f62d-4a22-ac40-62577ebddd0a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '7969b94b-60e7-4f72-9d35-0af285169860'::uuid AS category_uuid, 'semoirs' AS slug, 'Semoirs' AS name, f18a802d-f62d-4a22-ac40-62577ebddd0a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '8f59075a-be7d-48be-b36e-27e417f23003'::uuid AS category_uuid, 'pulverisateurs-agricoles' AS slug, 'Pulvérisateurs agricoles' AS name, f18a802d-f62d-4a22-ac40-62577ebddd0a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'b72eb8a4-26f2-4fae-8a5c-1aeb1203437f'::uuid AS category_uuid, 'materiel-agricole-remorques-agricoles' AS slug, 'Remorques agricoles' AS name, f18a802d-f62d-4a22-ac40-62577ebddd0a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '4c383cdf-4ee8-419f-b405-9d4bcc244960'::uuid AS category_uuid, 'broyeurs-agricoles' AS slug, 'Broyeurs' AS name, f18a802d-f62d-4a22-ac40-62577ebddd0a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'dd3cdfb5-ac08-4c8a-9b57-53de87ad1946'::uuid AS category_uuid, 'epandeurs-agricoles' AS slug, 'Épandeurs' AS name, f18a802d-f62d-4a22-ac40-62577ebddd0a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'ef2f5b19-e272-4c93-8b44-b0821d77da52'::uuid AS category_uuid, 'tarieres-mecaniques' AS slug, 'Tarières mécaniques' AS name, f18a802d-f62d-4a22-ac40-62577ebddd0a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '51d3baf5-2a78-4612-af38-932425725183'::uuid AS category_uuid, 'presses-a-balles' AS slug, 'Presses à balles' AS name, f18a802d-f62d-4a22-ac40-62577ebddd0a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '74bd3b78-409e-4ee7-aa8f-8d86305603ce'::uuid AS category_uuid, 'elevateurs-agricoles' AS slug, 'Élévateurs agricoles' AS name, f18a802d-f62d-4a22-ac40-62577ebddd0a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '06ea8a3f-b25a-4d9d-89b9-379aec25cbf1'::uuid AS category_uuid, 'beches' AS slug, 'Bêches' AS name, ae9e7f9b-3ad2-4b61-943b-65c54454d051::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '70c214b3-3271-4775-b8e5-81d2a58bab28'::uuid AS category_uuid, 'pelles' AS slug, 'Pelles' AS name, ae9e7f9b-3ad2-4b61-943b-65c54454d051::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'f5903d4c-8ed6-409e-b8c3-a9f5acd027bb'::uuid AS category_uuid, 'outils-equipements-de-culture-rateaux' AS slug, 'Râteaux' AS name, ae9e7f9b-3ad2-4b61-943b-65c54454d051::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'c9e59a19-8912-4ce8-a21e-9070855d8ff5'::uuid AS category_uuid, 'houes' AS slug, 'Houes' AS name, ae9e7f9b-3ad2-4b61-943b-65c54454d051::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '9583d9eb-9ef4-4835-8f2c-a8de8bb063ea'::uuid AS category_uuid, 'sarcleuses' AS slug, 'Sarcleuses' AS name, ae9e7f9b-3ad2-4b61-943b-65c54454d051::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '8906179c-971e-468b-a6fe-0b58f1978e43'::uuid AS category_uuid, 'binettes' AS slug, 'Binettes' AS name, ae9e7f9b-3ad2-4b61-943b-65c54454d051::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '50b90871-854b-42fc-affd-9fa0834347f2'::uuid AS category_uuid, 'outils-equipements-de-culture-secateurs' AS slug, 'Sécateurs' AS name, ae9e7f9b-3ad2-4b61-943b-65c54454d051::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '574135bd-4297-4178-8df0-7ef3164e3ce1'::uuid AS category_uuid, 'cisailles' AS slug, 'Cisailles' AS name, ae9e7f9b-3ad2-4b61-943b-65c54454d051::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'c4245eaa-9066-462b-ac54-903ded8579a7'::uuid AS category_uuid, 'outils-equipements-de-culture-arrosoirs' AS slug, 'Arrosoirs' AS name, ae9e7f9b-3ad2-4b61-943b-65c54454d051::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '949f3a38-9900-4db0-891a-41ad59a96125'::uuid AS category_uuid, 'pulverisateurs-manuels' AS slug, 'Pulvérisateurs manuels' AS name, ae9e7f9b-3ad2-4b61-943b-65c54454d051::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'd78ea182-2815-4dd0-ace1-c883f859a5d6'::uuid AS category_uuid, 'brouettes' AS slug, 'Brouettes' AS name, ae9e7f9b-3ad2-4b61-943b-65c54454d051::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '35c3131f-dd3f-402a-a0ac-2fbe2bfe3190'::uuid AS category_uuid, 'gants-de-jardin' AS slug, 'Gants de jardin' AS name, ae9e7f9b-3ad2-4b61-943b-65c54454d051::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'bf16a490-d4c7-4cde-9849-4559fe29afbd'::uuid AS category_uuid, 'lames-agricoles' AS slug, 'Lames agricoles' AS name, ae9e7f9b-3ad2-4b61-943b-65c54454d051::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '2bfd6dc3-8dae-4ee6-8225-f6847f3f5304'::uuid AS category_uuid, 'filets-de-recolte' AS slug, 'Filets de récolte' AS name, ae9e7f9b-3ad2-4b61-943b-65c54454d051::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'dc6bda72-b3ca-4414-8b3a-34c6600b10b6'::uuid AS category_uuid, 'tuyaux-d-arrosage' AS slug, 'Tuyaux d’arrosage' AS name, 8d0f7c95-c277-46bb-8243-a6d8d873bf85::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '8863dd1e-1d8a-411e-b24a-638daf542f34'::uuid AS category_uuid, 'goutte-a-goutte' AS slug, 'Systèmes goutte-à-goutte' AS name, 8d0f7c95-c277-46bb-8243-a6d8d873bf85::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '59bb9637-bc81-49bc-a87d-b6e3b5b96196'::uuid AS category_uuid, 'programmateurs-irrigation' AS slug, 'Programmateurs d’irrigation' AS name, 8d0f7c95-c277-46bb-8243-a6d8d873bf85::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'c3b07ba3-e4ad-44b5-aefe-89a6c0513448'::uuid AS category_uuid, 'aspersions' AS slug, 'Aspersions' AS name, 8d0f7c95-c277-46bb-8243-a6d8d873bf85::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'ce7b87ed-05aa-4783-831d-758f281a488a'::uuid AS category_uuid, 'pompes-a-eau' AS slug, 'Pompes à eau' AS name, 8d0f7c95-c277-46bb-8243-a6d8d873bf85::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'de81ab0e-9040-4f6c-82b6-5177db879a11'::uuid AS category_uuid, 'motopompes' AS slug, 'Motopompes' AS name, 8d0f7c95-c277-46bb-8243-a6d8d873bf85::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'ba20c8e4-705d-46fb-b179-3a3c21b9f07c'::uuid AS category_uuid, 'raccords-irrigation' AS slug, 'Raccords d’irrigation' AS name, 8d0f7c95-c277-46bb-8243-a6d8d873bf85::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'fc0e1373-7dc9-4ef4-bdd2-59dbd01d8ca7'::uuid AS category_uuid, 'filtres-d-eau' AS slug, 'Filtres d’eau' AS name, 8d0f7c95-c277-46bb-8243-a6d8d873bf85::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'ca8ab89c-fee8-41c9-860e-b3db55a17e74'::uuid AS category_uuid, 'arroseurs' AS slug, 'Arroseurs' AS name, 8d0f7c95-c277-46bb-8243-a6d8d873bf85::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '6e376572-682f-4848-84bc-bd9ef1797865'::uuid AS category_uuid, 'reservoirs-d-eau' AS slug, 'Réservoirs d’eau' AS name, 8d0f7c95-c277-46bb-8243-a6d8d873bf85::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'b381eb0e-b7cd-4d2e-ae36-94c274490d60'::uuid AS category_uuid, 'semences-potageres' AS slug, 'Semences potagères' AS name, 54308de3-76f1-45af-ae7e-e839497563ee::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'f1cf9ebd-201d-4f34-a3b2-a8ad1ea56f2e'::uuid AS category_uuid, 'semences-cerealieres' AS slug, 'Semences céréalières' AS name, 54308de3-76f1-45af-ae7e-e839497563ee::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '30fc5df1-f978-4195-b32d-24cd31414cd3'::uuid AS category_uuid, 'semences-fourrageres' AS slug, 'Semences fourragères' AS name, 54308de3-76f1-45af-ae7e-e839497563ee::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '3f82951b-bc52-4cc9-8f03-ce3d683d862b'::uuid AS category_uuid, 'plants-de-legumes' AS slug, 'Plants de légumes' AS name, 54308de3-76f1-45af-ae7e-e839497563ee::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '5d87b473-10be-4796-991e-f5d05968e110'::uuid AS category_uuid, 'plants-fruitiers' AS slug, 'Plants fruitiers' AS name, 54308de3-76f1-45af-ae7e-e839497563ee::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'cc05edcb-a0d2-4515-86b5-934f702ee993'::uuid AS category_uuid, 'plants-d-arbres' AS slug, 'Plants d’arbres' AS name, 54308de3-76f1-45af-ae7e-e839497563ee::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '4b7d6e4d-7b6d-4d00-8eb7-0ad9142c97c4'::uuid AS category_uuid, 'graines-biologiques' AS slug, 'Graines biologiques' AS name, 54308de3-76f1-45af-ae7e-e839497563ee::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '145282f5-fac0-41ee-96e0-15a3e79a839d'::uuid AS category_uuid, 'graines-hybrides' AS slug, 'Graines hybrides' AS name, 54308de3-76f1-45af-ae7e-e839497563ee::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '3b52c0ca-602e-4269-b73b-6539e0a65f72'::uuid AS category_uuid, 'bulbes' AS slug, 'Bulbes' AS name, 54308de3-76f1-45af-ae7e-e839497563ee::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'ecfb172c-306f-4472-8991-9aa88002afcc'::uuid AS category_uuid, 'jeunes-pousses' AS slug, 'Jeunes pousses' AS name, 54308de3-76f1-45af-ae7e-e839497563ee::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '853e089b-078e-438b-b9ea-4f0012493315'::uuid AS category_uuid, 'engrais-chimiques' AS slug, 'Engrais chimiques' AS name, c9830006-ff5f-46d0-8761-a3db90dce692::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),
  level = EXCLUDED.level,
  category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),
  updated_at = NOW();

-- Lot 30 terminé: 100 entrées
