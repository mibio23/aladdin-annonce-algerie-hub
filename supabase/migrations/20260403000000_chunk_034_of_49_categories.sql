-- ============================================================
-- CHUNK 34/49 — 100 catégories
-- Total: 4836 catégories
-- Exécuter dans l'ordre dans Supabase SQL Editor
-- ============================================================

INSERT INTO public.categories
  (category_uuid, slug, name, parent_id, level, is_active, created_at, updated_at)
VALUES
  SELECT '9fffaf5e-6ae0-4277-911a-ca190b2e557e'::uuid AS category_uuid, 'solvants-laboratoire' AS slug, 'Solvants de Laboratoire' AS name, 73891b4a-2c50-4a73-b44c-f62e30e4399c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'b2980870-7597-4fee-bea4-e29d4052f8f3'::uuid AS category_uuid, 'gants-nitrile' AS slug, 'Gants Nitrile' AS name, 594c627e-cfc8-4892-b41d-f8c70fafb706::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '40cb76e7-9493-474e-b7dd-4cbe0ad64363'::uuid AS category_uuid, 'lunettes-protection' AS slug, 'Lunettes' AS name, 594c627e-cfc8-4892-b41d-f8c70fafb706::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '98c073c7-37b2-4ae3-8dec-d7b8b3360593'::uuid AS category_uuid, 'masques-respiratoires' AS slug, 'Masques Respiratoires' AS name, 594c627e-cfc8-4892-b41d-f8c70fafb706::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '2c84104e-6bd1-4849-bc82-e8b49ed328c1'::uuid AS category_uuid, 'combinaisons-anti-chimiques' AS slug, 'Combinaisons Anti-chimiques' AS name, 594c627e-cfc8-4892-b41d-f8c70fafb706::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '5f155614-8da5-40d8-9351-6b95d1f1a618'::uuid AS category_uuid, 'protections-faciales' AS slug, 'Protections Faciales' AS name, 594c627e-cfc8-4892-b41d-f8c70fafb706::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '510feab3-ba45-4e88-b4e4-5ae4687603c1'::uuid AS category_uuid, 'chaussures-anti-produits-corrosifs' AS slug, 'Chaussures Anti-produits Corrosifs' AS name, 594c627e-cfc8-4892-b41d-f8c70fafb706::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '1fcf78d0-d318-4b2c-a4ad-c2f9068685b6'::uuid AS category_uuid, 'bidons' AS slug, 'Bidons' AS name, f17a918e-2afb-4b09-9fde-81a4507bfa9a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '8bc386d9-409d-4497-9b17-7f3acea21271'::uuid AS category_uuid, 'flacons-resistants' AS slug, 'Flacons Résistants' AS name, f17a918e-2afb-4b09-9fde-81a4507bfa9a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '4792f329-9fcb-4d38-b95f-8b780896959e'::uuid AS category_uuid, 'bouteilles-securisees' AS slug, 'Bouteilles Sécurisées' AS name, f17a918e-2afb-4b09-9fde-81a4507bfa9a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'a9875b37-3f51-4a6c-9385-021b2d260f32'::uuid AS category_uuid, 'contenants-anti-corrosifs' AS slug, 'Contenants Anti-corrosifs' AS name, f17a918e-2afb-4b09-9fde-81a4507bfa9a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'f3c25950-9cec-4b91-bc67-1ed37b6d31a9'::uuid AS category_uuid, 'cuves' AS slug, 'Cuves' AS name, f17a918e-2afb-4b09-9fde-81a4507bfa9a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '9597d846-344d-4ca1-898b-6c2c99c91e3f'::uuid AS category_uuid, 'petits-contenants-dosage' AS slug, 'Petits Contenants Dosage' AS name, f17a918e-2afb-4b09-9fde-81a4507bfa9a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '3808b1d9-6516-43ed-bf90-66d92a37e8df'::uuid AS category_uuid, 'savons-industriels' AS slug, 'Savons Industriels' AS name, d629abdc-9f72-4711-9904-3296f5e44171::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '4ecdbb8e-b217-4e7d-a066-7023aa383fda'::uuid AS category_uuid, 'desinfectants-pro' AS slug, 'Désinfectants Pro' AS name, d629abdc-9f72-4711-9904-3296f5e44171::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '742b9830-2d7b-431f-b5d3-d2b620f2477c'::uuid AS category_uuid, 'nettoyants-sols-hopitaux' AS slug, 'Nettoyants Sols Hôpitaux' AS name, d629abdc-9f72-4711-9904-3296f5e44171::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '7a8b22c8-5b6f-4776-893c-f8007d8ad861'::uuid AS category_uuid, 'produits-haccp' AS slug, 'Produits HACCP' AS name, d629abdc-9f72-4711-9904-3296f5e44171::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '198de32e-a548-4e64-809e-017eac2ab421'::uuid AS category_uuid, 'detergents-alimentaires' AS slug, 'Détergents Alimentaires' AS name, d629abdc-9f72-4711-9904-3296f5e44171::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'c2f3a87a-3fe9-49f4-9308-d833bf621aeb'::uuid AS category_uuid, 'soins-hypoallergeniques' AS slug, 'Soins Hypoallergéniques' AS name, 1d12d4a9-0a9f-423f-8af4-13424042f6e1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'e7cfebef-2e7a-4744-94cd-ff3022b4ee2b'::uuid AS category_uuid, 'cosmetiques-specialises-cremes-medicales' AS slug, 'Crèmes Médicales' AS name, 1d12d4a9-0a9f-423f-8af4-13424042f6e1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'e46dcb67-8d23-48f6-b6c9-0b2fe4ec7c61'::uuid AS category_uuid, 'soins-dermatologiques-specialises' AS slug, 'Soins Dermatologiques Spécialisés' AS name, 1d12d4a9-0a9f-423f-8af4-13424042f6e1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'be284f4a-77d9-48f0-b3e2-2ea777324174'::uuid AS category_uuid, 'cremes-cicatrisantes' AS slug, 'Crèmes Cicatrisantes' AS name, 1d12d4a9-0a9f-423f-8af4-13424042f6e1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'ec0c5a76-b44e-46f4-9075-3d21681cba2d'::uuid AS category_uuid, 'protections-cutanees-medicales' AS slug, 'Protections Cutanées Médicales' AS name, 1d12d4a9-0a9f-423f-8af4-13424042f6e1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '30299039-13f3-4104-99c9-e7ec16ac88b1'::uuid AS category_uuid, 'sante-beaute' AS slug, 'Santé & Beauté' AS name, NULL::uuid AS parent_id, 1 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'c4e1d776-c6b9-4339-90d4-b3a26c66d74e'::uuid AS category_uuid, 'sante-beaute-soins-visage' AS slug, 'Soins du visage' AS name, 30299039-13f3-4104-99c9-e7ec16ac88b1::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '91fe05c4-8ef0-4dbe-90f2-3e133e6cad92'::uuid AS category_uuid, 'sante-beaute-soins-corps' AS slug, 'Soins du corps' AS name, 30299039-13f3-4104-99c9-e7ec16ac88b1::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'b96e8c34-69c0-4b77-8ce9-b9072305edd6'::uuid AS category_uuid, 'sante-beaute-hygiene-corporelle' AS slug, 'Hygiène corporelle' AS name, 30299039-13f3-4104-99c9-e7ec16ac88b1::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'd3cb687b-83f9-4613-a6c9-ed86aef879e6'::uuid AS category_uuid, 'sante-beaute-soins-capillaires' AS slug, 'Soins capillaires' AS name, 30299039-13f3-4104-99c9-e7ec16ac88b1::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '200ce015-2047-4a7c-b213-f931e925b905'::uuid AS category_uuid, 'coiffure-styling' AS slug, 'Coiffure & Styling' AS name, 30299039-13f3-4104-99c9-e7ec16ac88b1::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '4f9a001e-fa36-4a25-8310-6d4221d14add'::uuid AS category_uuid, 'parfums-fragrances' AS slug, 'Parfums & fragrances' AS name, 30299039-13f3-4104-99c9-e7ec16ac88b1::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '6a6648d2-d208-4912-9574-b08317aa169d'::uuid AS category_uuid, 'maquillage' AS slug, 'Maquillage' AS name, 30299039-13f3-4104-99c9-e7ec16ac88b1::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '2c4a73a0-d6b9-4deb-b862-9e9117208571'::uuid AS category_uuid, 'accessoires-beaute' AS slug, 'Accessoires beauté' AS name, 30299039-13f3-4104-99c9-e7ec16ac88b1::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '4118b55c-cc28-47bc-b5d7-fd2e75069b6f'::uuid AS category_uuid, 'manucure-pedicure' AS slug, 'Manucure & pédicure' AS name, 30299039-13f3-4104-99c9-e7ec16ac88b1::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '853d1fe7-52f9-41b7-910f-b6f59052ea28'::uuid AS category_uuid, 'sante-beaute-produits-solaires' AS slug, 'Produits solaires' AS name, 30299039-13f3-4104-99c9-e7ec16ac88b1::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '3b7bc272-c6c1-421b-82d7-c963e1afa023'::uuid AS category_uuid, 'beaute-naturelle-bio' AS slug, 'Beauté naturelle & bio' AS name, 30299039-13f3-4104-99c9-e7ec16ac88b1::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'bb010e15-48b9-440e-ba1b-ad68f59f98b9'::uuid AS category_uuid, 'sante-beaute-aromatherapie' AS slug, 'Aromathérapie' AS name, 30299039-13f3-4104-99c9-e7ec16ac88b1::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '5866ab6b-1651-4fa3-b51c-4359fde4457b'::uuid AS category_uuid, 'sante-beaute-phytotherapie' AS slug, 'Phytothérapie' AS name, 30299039-13f3-4104-99c9-e7ec16ac88b1::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '1de0a0bb-8576-4046-91c1-b9b2f42a121e'::uuid AS category_uuid, 'sante-generale' AS slug, 'Santé générale' AS name, 30299039-13f3-4104-99c9-e7ec16ac88b1::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '03171ebf-373a-45c0-8cc4-af934ab13a85'::uuid AS category_uuid, 'medicaments-sans-ordonnance' AS slug, 'Médicaments sans ordonnance' AS name, 30299039-13f3-4104-99c9-e7ec16ac88b1::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '5c2d45ad-ea99-4758-b4ab-10222b3f4890'::uuid AS category_uuid, 'sante-beaute-premiers-secours' AS slug, 'Premiers secours' AS name, 30299039-13f3-4104-99c9-e7ec16ac88b1::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '4ba7113c-c5e3-41be-9523-a0fbe3f85bed'::uuid AS category_uuid, 'sante-beaute-materiel-medical-leger' AS slug, 'Matériel médical léger' AS name, 30299039-13f3-4104-99c9-e7ec16ac88b1::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'deee9333-759e-47ad-9f95-ac657b67ea6e'::uuid AS category_uuid, 'hygiene-bucco-dentaire' AS slug, 'Hygiène bucco-dentaire' AS name, 30299039-13f3-4104-99c9-e7ec16ac88b1::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '4ad36ca8-75e0-4b80-a57d-457a07737d73'::uuid AS category_uuid, 'sante-beaute-hygiene-feminine' AS slug, 'Hygiène féminine' AS name, 30299039-13f3-4104-99c9-e7ec16ac88b1::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '2bd9fc07-3922-4969-98fa-eabb7ffb269f'::uuid AS category_uuid, 'sante-beaute-hygiene-masculine' AS slug, 'Hygiène masculine' AS name, 30299039-13f3-4104-99c9-e7ec16ac88b1::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '88ec40a6-d7a1-4437-9554-6d3e6fe96d22'::uuid AS category_uuid, 'materiel-esthetique-pro' AS slug, 'Matériel esthétique professionnel' AS name, 30299039-13f3-4104-99c9-e7ec16ac88b1::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '38b0bc28-2b54-44a3-bc02-2c21f8e6a4d2'::uuid AS category_uuid, 'epilation' AS slug, 'Épilation' AS name, 30299039-13f3-4104-99c9-e7ec16ac88b1::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '1a2d9aa8-77e4-4c27-9f28-74e8d09d8736'::uuid AS category_uuid, 'massage-bien-etre' AS slug, 'Produits de massage & bien-être' AS name, 30299039-13f3-4104-99c9-e7ec16ac88b1::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'd04a80b9-5e90-44da-8552-4aaa25e01185'::uuid AS category_uuid, 'beaute-du-regard' AS slug, 'Beauté du regard' AS name, 30299039-13f3-4104-99c9-e7ec16ac88b1::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '87db7e82-258b-4ffc-a4e8-a02cdb50a947'::uuid AS category_uuid, 'produits-spa-domicile' AS slug, 'Produits spa à domicile' AS name, 30299039-13f3-4104-99c9-e7ec16ac88b1::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '746c2e3f-cab2-43b7-a7ba-3b3ea5486157'::uuid AS category_uuid, 'dermatologie-specialisee' AS slug, 'Produits dermatologiques spécialisés' AS name, 30299039-13f3-4104-99c9-e7ec16ac88b1::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '1f98ef24-1a27-4df3-a649-bcf99b27c8bb'::uuid AS category_uuid, 'nutrition-beaute' AS slug, 'Nutrition beauté' AS name, 30299039-13f3-4104-99c9-e7ec16ac88b1::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '0ca1b753-12fd-4de9-a5c2-7876b71aa26d'::uuid AS category_uuid, 'accessoires-salle-de-bain' AS slug, 'Accessoires salle de bain' AS name, 30299039-13f3-4104-99c9-e7ec16ac88b1::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'cac756c8-67ce-4ef0-b885-f97a51fede70'::uuid AS category_uuid, 'sante-beaute-blanchiment-dentaire' AS slug, 'Produits blanchiment dentaire' AS name, 30299039-13f3-4104-99c9-e7ec16ac88b1::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '37631040-ee88-464f-9d91-3ea5363195e1'::uuid AS category_uuid, 'soins-visage-cremes-hydratantes' AS slug, 'Crèmes hydratantes' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '7a52275c-ff29-489d-8b53-6a5ec8bc26c0'::uuid AS category_uuid, 'soins-visage-cremes-anti-age' AS slug, 'Crèmes anti-âge' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'ac2a5fdc-cec4-4e62-8ad2-29742e2d5a3a'::uuid AS category_uuid, 'soins-visage-serums' AS slug, 'Sérums' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'd83fa271-7455-4d93-9427-67c9a592bbc0'::uuid AS category_uuid, 'soins-visage-soins-anti-acne' AS slug, 'Soins anti-acné' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '3e2f9a8d-3a32-48da-a47d-f3ed024f6de8'::uuid AS category_uuid, 'masques' AS slug, 'Masques' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '059babec-9214-4622-a928-40aa61c96751'::uuid AS category_uuid, 'soins-visage-exfoliants' AS slug, 'Exfoliants' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '72eea578-a05e-45a8-a537-059329ba5d19'::uuid AS category_uuid, 'nettoyants-visage' AS slug, 'Nettoyants visage' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '7665afd0-f068-4421-bfff-ebc73c308d15'::uuid AS category_uuid, 'toniques' AS slug, 'Toniques' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'bcb28f2b-bb63-4a1d-8b3c-3420ed15fc25'::uuid AS category_uuid, 'soins-visage-soins-anti-taches' AS slug, 'Soins anti-taches' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'a792f137-5764-4efa-ad91-03f05d6a7da9'::uuid AS category_uuid, 'cremes-contour-yeux' AS slug, 'Crèmes contour des yeux' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '1ace715a-26ad-4d46-a6bf-bc3d45133178'::uuid AS category_uuid, 'patchs-yeux' AS slug, 'Patchs yeux' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '3ea853cf-82c5-4d5d-83c1-bb939087c12a'::uuid AS category_uuid, 'soins-corps-laits-corporels' AS slug, 'Laits corporels' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '600e8286-3cdb-402d-a5e9-6ddd3be32eac'::uuid AS category_uuid, 'soins-corps-cremes-nourrissantes' AS slug, 'Crèmes nourrissantes' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '2525c9b3-b8bb-4844-8109-73e6c6f6325c'::uuid AS category_uuid, 'gommages-corps' AS slug, 'Gommages corps' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '5af01106-f2f1-4f4b-b958-2e654e565408'::uuid AS category_uuid, 'huiles-corporelles' AS slug, 'Huiles corporelles' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'b6128102-8b26-49bb-8b0f-51d1a7ce11ef'::uuid AS category_uuid, 'gels-minceur' AS slug, 'Gels minceur' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '83301867-cfca-4792-905b-0ead207926ff'::uuid AS category_uuid, 'soins-corps-soins-anti-vergetures' AS slug, 'Soins anti-vergetures' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '730f55ff-8c23-4b45-9f01-8d197e0d3f89'::uuid AS category_uuid, 'soins-corps-soins-raffermissants' AS slug, 'Soins raffermissants' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'eb938a73-dbb9-4ba5-95de-1bcd1bc1e434'::uuid AS category_uuid, 'lotions-parfumees' AS slug, 'Lotions corporelles parfumées' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '6fbc0ddc-057c-4176-9ad4-a82edc639cbf'::uuid AS category_uuid, 'hygiene-corporelle-gels-douche' AS slug, 'Gels douche' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '7043f563-1630-4ce9-9157-195c6f87d8d8'::uuid AS category_uuid, 'savons-solides' AS slug, 'Savons solides' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '45cb3dbe-c6b9-49d0-9521-2f504d47907e'::uuid AS category_uuid, 'savons-liquides' AS slug, 'Savons liquides' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '9cd03bcc-0ca1-41ae-83cc-bf9b6d936701'::uuid AS category_uuid, 'hygiene-corporelle-deodorants' AS slug, 'Déodorants' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '62d82bcf-4207-4c4b-bae6-bad8d2a8ab10'::uuid AS category_uuid, 'hygiene-corporelle-lingettes' AS slug, 'Lingettes' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'dbc0f80e-82a8-4a37-bb40-41ec6721ecc7'::uuid AS category_uuid, 'hygiene-corporelle-soins-intimes' AS slug, 'Soins intimes' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '1fd6d5af-01c3-4f49-9d92-c59ab145022d'::uuid AS category_uuid, 'bains-moussants' AS slug, 'Bains moussants' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'f4b7488e-9be5-45cd-8eaa-41c322cb6ab7'::uuid AS category_uuid, 'sels-de-bain' AS slug, 'Sels de bain' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '68af4a7f-9535-4ba2-a71a-bf91d7b319fe'::uuid AS category_uuid, 'huiles-de-bain' AS slug, 'Huiles de bain' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '3a9739ed-ae4e-4b68-a6db-9ffd51a5f4b8'::uuid AS category_uuid, 'soins-capillaires-shampoings' AS slug, 'Shampoings' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'cb0c02d6-8032-41f8-b682-dde852e493db'::uuid AS category_uuid, 'soins-capillaires-apres-shampoings' AS slug, 'Après-shampoings' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '1c491c23-36a2-43fe-942a-eccf70e45630'::uuid AS category_uuid, 'soins-capillaires-masques-capillaires' AS slug, 'Masques capillaires' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'e3b4c623-ed8e-4160-bc14-acbbe25d63cf'::uuid AS category_uuid, 'soins-capillaires-serums-capillaires' AS slug, 'Sérums capillaires' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'eac98f0e-c78e-4804-aaeb-e5289e94b4b0'::uuid AS category_uuid, 'soins-capillaires-soins-keratine' AS slug, 'Soins kératine' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'aff73af9-3b2b-467e-877a-a26a847aaf25'::uuid AS category_uuid, 'soins-capillaires-huiles-capillaires' AS slug, 'Huiles capillaires' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'e67fc239-2064-4063-b09c-3f1f604fa0fd'::uuid AS category_uuid, 'soins-antichute' AS slug, 'Soins antichute' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'd121c1a9-12e0-41b0-a220-48b0235acaf1'::uuid AS category_uuid, 'soins-capillaires-shampoings-medicaux' AS slug, 'Shampoings médicaux' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '9845cd83-c060-41ba-a33c-07e9137ce23d'::uuid AS category_uuid, 'produits-coiffants' AS slug, 'Produits coiffants' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'cc41b592-4435-4b4f-a552-8d8c12e09f57'::uuid AS category_uuid, 'fers-a-lisser' AS slug, 'Fers à lisser' AS name, 200ce015-2047-4a7c-b213-f931e925b905::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '47b4482c-2e6f-45a4-84be-80a409b17160'::uuid AS category_uuid, 'coiffure-styling-seche-cheveux' AS slug, 'Sèche-cheveux' AS name, 200ce015-2047-4a7c-b213-f931e925b905::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '849ba6b6-4df7-4776-be62-61492218f0c7'::uuid AS category_uuid, 'coiffure-styling-tondeuses' AS slug, 'Tondeuses' AS name, 200ce015-2047-4a7c-b213-f931e925b905::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '5f4b411e-0707-475f-9304-3847b2e63945'::uuid AS category_uuid, 'brosses-chauffantes' AS slug, 'Brosses chauffantes' AS name, 200ce015-2047-4a7c-b213-f931e925b905::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'dc968638-9c0e-4ea4-abb2-5c4c0b83b265'::uuid AS category_uuid, 'coiffure-styling-bigoudis' AS slug, 'Bigoudis' AS name, 200ce015-2047-4a7c-b213-f931e925b905::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'b4fd9d26-4009-404d-b426-eff52feee01f'::uuid AS category_uuid, 'coiffure-styling-peignes' AS slug, 'Peignes' AS name, 200ce015-2047-4a7c-b213-f931e925b905::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '80ec7309-75bb-4dac-a177-5568d354f360'::uuid AS category_uuid, 'brosses-professionnelles' AS slug, 'Brosses professionnelles' AS name, 200ce015-2047-4a7c-b213-f931e925b905::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT 'e7ea2d88-f579-421c-88bc-579e299c8282'::uuid AS category_uuid, 'sprays-coiffants' AS slug, 'Sprays coiffants' AS name, 200ce015-2047-4a7c-b213-f931e925b905::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '12d2a358-9dc2-44a5-9e9c-69cc1f0df4ec'::uuid AS category_uuid, 'mousses-volume' AS slug, 'Mousses volume' AS name, 200ce015-2047-4a7c-b213-f931e925b905::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
  UNION ALL
  SELECT '9c460cd7-60f5-4497-969c-8f2e0eaa118e'::uuid AS category_uuid, 'gels' AS slug, 'Gels' AS name, 200ce015-2047-4a7c-b213-f931e925b905::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.889Z' AS created_at, '2026-04-03T10:15:31.889Z' AS updated_at
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),
  level = EXCLUDED.level,
  category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),
  updated_at = NOW();

-- Lot 34 terminé: 100 entrées
