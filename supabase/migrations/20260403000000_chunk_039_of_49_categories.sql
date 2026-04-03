-- ============================================================
-- CHUNK 39/49 — 100 catégories
-- Total: 4836 catégories
-- Exécuter dans l'ordre dans Supabase SQL Editor
-- ============================================================

INSERT INTO public.categories
  (category_uuid, slug, name, parent_id, level, is_active, created_at, updated_at)
VALUES
  SELECT '83218e4c-6d0b-43b6-996f-d8e9c9cfb112'::uuid AS category_uuid, 'poterie-traditionnelle' AS slug, 'poterie traditionnelle' AS name, b153d766-a977-456c-8690-7b9c5b80d4b5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '401389fa-7220-41af-a163-3e64ed215452'::uuid AS category_uuid, 'poterie-kabyle' AS slug, 'poterie kabyle' AS name, b153d766-a977-456c-8690-7b9c5b80d4b5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '467d215a-8dcf-487a-b08e-f2e9cc6a5b9e'::uuid AS category_uuid, 'poterie-chaouie' AS slug, 'poterie chaouie' AS name, b153d766-a977-456c-8690-7b9c5b80d4b5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT 'ad3c70cd-1f8e-4099-8487-222b7760ee8b'::uuid AS category_uuid, 'ceramiques-decoratives' AS slug, 'céramiques décoratives' AS name, b153d766-a977-456c-8690-7b9c5b80d4b5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '8a8d5731-1b36-456e-9e91-dc67b68139ca'::uuid AS category_uuid, 'mozabite' AS slug, 'artisanat mozabite' AS name, 4148a9bd-bddb-48a4-9146-7a629d74add1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT 'a26d074f-d6c9-4015-bf32-89cce94a7b49'::uuid AS category_uuid, 'touareg' AS slug, 'artisanat touareg' AS name, 4148a9bd-bddb-48a4-9146-7a629d74add1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '39c9f021-9e46-440a-8dbd-39db595364eb'::uuid AS category_uuid, 'berbere' AS slug, 'artisanat berbère' AS name, 4148a9bd-bddb-48a4-9146-7a629d74add1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT 'ec956bfb-aa2c-408a-9db2-66b9fb4c4bca'::uuid AS category_uuid, 'tissage-traditionnel' AS slug, 'tissage traditionnel' AS name, b259310a-a1ad-4ce7-9c52-50cda26a452f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT 'bceda559-e519-4f0f-a95d-59d93b7f46a7'::uuid AS category_uuid, 'tissage-kabyle' AS slug, 'tissage kabyle' AS name, b259310a-a1ad-4ce7-9c52-50cda26a452f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '37282798-3721-4e30-9647-e9c431a8a84b'::uuid AS category_uuid, 'tapis-kilims' AS slug, 'tapis & kilims' AS name, b259310a-a1ad-4ce7-9c52-50cda26a452f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '92ec352c-1272-4aa0-8e37-3a904f56a0de'::uuid AS category_uuid, 'tapis-chaouis' AS slug, 'tapis chaouis' AS name, b259310a-a1ad-4ce7-9c52-50cda26a452f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT 'e6c43acf-c94a-4ee3-827b-2ff03b7441f7'::uuid AS category_uuid, 'tapis-mozabites' AS slug, 'tapis mozabites' AS name, b259310a-a1ad-4ce7-9c52-50cda26a452f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT 'c84ba57d-be7d-4c0e-b915-73f65d544d1b'::uuid AS category_uuid, 'tissages-sahariens' AS slug, 'tissages sahariens' AS name, b259310a-a1ad-4ce7-9c52-50cda26a452f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '0e71bff6-e6a7-451f-a823-1beef141c241'::uuid AS category_uuid, 'accessoires-tisses' AS slug, 'accessoires tissés' AS name, b259310a-a1ad-4ce7-9c52-50cda26a452f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '8eba4edc-baf0-44df-878b-d2544f8dc15a'::uuid AS category_uuid, 'bijoux-argent' AS slug, 'bijoux en argent' AS name, 4bd3bb38-3b32-4892-852f-d720d2ed9915::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '968fb39c-73ba-4400-832d-8b68a80a5f96'::uuid AS category_uuid, 'bijoux-kabyles' AS slug, 'bijoux kabyles' AS name, 4bd3bb38-3b32-4892-852f-d720d2ed9915::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT 'c1c92a7f-3f37-4b83-981e-3b8e0b5e6fc7'::uuid AS category_uuid, 'bijoux-touareg' AS slug, 'bijoux touareg' AS name, 4bd3bb38-3b32-4892-852f-d720d2ed9915::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT 'afa051f0-39ab-461f-8d28-4853255961b8'::uuid AS category_uuid, 'croix-agadez' AS slug, 'croix d’Agadez (tanaghelt)' AS name, 4bd3bb38-3b32-4892-852f-d720d2ed9915::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '9db1e0de-d46d-4d7e-af97-72d955f78df2'::uuid AS category_uuid, 'talhakimt' AS slug, 'Talhakimt' AS name, 4bd3bb38-3b32-4892-852f-d720d2ed9915::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '2efdb586-8f15-4500-bf86-1c5a3f4b0bc5'::uuid AS category_uuid, 'objets-cuivre' AS slug, 'objets en cuivre' AS name, 4bd3bb38-3b32-4892-852f-d720d2ed9915::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '51c3ac15-380c-4744-b1c3-49b571246182'::uuid AS category_uuid, 'broderie-vetements-karakou' AS slug, 'karakou' AS name, f86a750d-005c-4858-8c0c-0af625ea436d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '55cc1949-0ae1-4587-808e-aa931e4ad19c'::uuid AS category_uuid, 'broderie-vetements-gandoura' AS slug, 'gandoura' AS name, f86a750d-005c-4858-8c0c-0af625ea436d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT 'f3f4b935-05ec-4343-a1a6-95eef43aa942'::uuid AS category_uuid, 'burnous' AS slug, 'burnous' AS name, f86a750d-005c-4858-8c0c-0af625ea436d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '81552edb-33a8-4bee-b2ca-f9934ee62d0b'::uuid AS category_uuid, 'blousa' AS slug, 'blousa' AS name, f86a750d-005c-4858-8c0c-0af625ea436d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '9e75e55b-e896-4e14-916c-593ff5a599e0'::uuid AS category_uuid, 'tenue-kabyle' AS slug, 'tenue kabyle' AS name, f86a750d-005c-4858-8c0c-0af625ea436d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '430dc04c-9e0c-4245-bd60-64692bacf000'::uuid AS category_uuid, 'tenue-chaouie' AS slug, 'tenue chaouie' AS name, f86a750d-005c-4858-8c0c-0af625ea436d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '33a02fad-f7dd-416f-b5e8-54845783e154'::uuid AS category_uuid, 'tenues-targuies' AS slug, 'tenues targuies' AS name, f86a750d-005c-4858-8c0c-0af625ea436d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT 'bed5ed72-ac51-4c44-8a1e-6fdfd869fe90'::uuid AS category_uuid, 'gandoura-saharienne' AS slug, 'gandoura saharienne' AS name, f86a750d-005c-4858-8c0c-0af625ea436d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '66aef4da-5c8e-47a7-a3d0-48c4750a8cd1'::uuid AS category_uuid, 'broderies-artisanales' AS slug, 'broderies artisanales' AS name, f86a750d-005c-4858-8c0c-0af625ea436d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '163035d0-9918-4b01-8889-752bd4bf3aef'::uuid AS category_uuid, 'confection-sur-mesure' AS slug, 'confection sur mesure' AS name, f86a750d-005c-4858-8c0c-0af625ea436d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '985c7191-d186-43b6-b9f0-3bf42288baa6'::uuid AS category_uuid, 'babouches' AS slug, 'babouches' AS name, 96e32efa-6739-4e82-8fe9-b92bbd965c4e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '59fbfd46-4b78-4799-aca9-7cc3f4c29929'::uuid AS category_uuid, 'sandales-artisanales' AS slug, 'sandales artisanales' AS name, 96e32efa-6739-4e82-8fe9-b92bbd965c4e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '1b6ef5db-e516-4bef-8aa0-e25858b58361'::uuid AS category_uuid, 'articles-cuir' AS slug, 'articles en cuir' AS name, 96e32efa-6739-4e82-8fe9-b92bbd965c4e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '66b3c0b2-4a70-4378-930f-26c751b3e671'::uuid AS category_uuid, 'maroquinerie-artisanale' AS slug, 'maroquinerie artisanale' AS name, 96e32efa-6739-4e82-8fe9-b92bbd965c4e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.891Z' AS created_at, '2026-04-03T10:15:31.891Z' AS updated_at
  UNION ALL
  SELECT '68957bb4-b6d5-444b-b574-28d9209bb263'::uuid AS category_uuid, 'objets-bois' AS slug, 'objets en bois' AS name, 18028b49-cef4-4b40-962d-a9a646eecdbd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '86a10a0d-550d-432b-89d5-9f8b79261d41'::uuid AS category_uuid, 'sculpture-bois' AS slug, 'sculpture sur bois' AS name, 18028b49-cef4-4b40-962d-a9a646eecdbd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT 'e797f2a3-cc30-4001-ae4a-daf0f61bbe8b'::uuid AS category_uuid, 'lampes-artisanales' AS slug, 'lampes artisanales' AS name, 18028b49-cef4-4b40-962d-a9a646eecdbd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '58204d50-fb3c-49e0-a011-15ed82fcb1c8'::uuid AS category_uuid, 'coffres-anciens' AS slug, 'coffres anciens' AS name, 18028b49-cef4-4b40-962d-a9a646eecdbd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '84bb2d08-13d7-4d68-9b88-854afcf8b2cc'::uuid AS category_uuid, 'mobilier-traditionnel' AS slug, 'mobilier traditionnel' AS name, 18028b49-cef4-4b40-962d-a9a646eecdbd::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '7bf76042-97f3-424e-866a-9065a7e8db40'::uuid AS category_uuid, 'vannerie' AS slug, 'vannerie' AS name, 3924570e-6190-48b5-8e82-d5edd08d01d7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '95a1da9d-04e2-4f70-8cf3-a5888e127cdb'::uuid AS category_uuid, 'vannerie-fibres-paniers-tresses' AS slug, 'paniers tressés' AS name, 3924570e-6190-48b5-8e82-d5edd08d01d7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '770db4b6-eeeb-4bf4-aba5-c33143eaac01'::uuid AS category_uuid, 'nattes-traditionnelles' AS slug, 'nattes traditionnelles' AS name, 3924570e-6190-48b5-8e82-d5edd08d01d7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '768522c8-8591-4ab2-9c22-1e7acc1cece3'::uuid AS category_uuid, 'objets-alfa-palmier' AS slug, 'objets en alfa & palmier' AS name, 3924570e-6190-48b5-8e82-d5edd08d01d7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT 'b74dbce7-55b9-4e57-a99b-aeeb93a5e554'::uuid AS category_uuid, 'decorations-murales' AS slug, 'décorations murales traditionnelles' AS name, b5d21933-6fef-4b00-ae15-985107f991af::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '97a64771-c481-4ea6-9610-82219d2cc01e'::uuid AS category_uuid, 'objets-decoratifs-berberes' AS slug, 'objets décoratifs berbères' AS name, b5d21933-6fef-4b00-ae15-985107f991af::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '6fbc5ad8-2f2f-4cc1-bcb2-d14de24c0325'::uuid AS category_uuid, 'tableaux-traditionnels' AS slug, 'tableaux traditionnels' AS name, b5d21933-6fef-4b00-ae15-985107f991af::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '720afb26-5e2f-458f-b5c3-91a2d1cef8f7'::uuid AS category_uuid, 'calligraphie-artistique' AS slug, 'calligraphie artistique' AS name, b5d21933-6fef-4b00-ae15-985107f991af::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT 'fe5f5d6b-396b-46b1-a512-4d21fd065567'::uuid AS category_uuid, 'calligraphie-tifinagh' AS slug, 'calligraphie tifinagh' AS name, b5d21933-6fef-4b00-ae15-985107f991af::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '38c03ad2-b09d-4416-8935-7fe239e52ecf'::uuid AS category_uuid, 'souvenirs-touristes' AS slug, 'souvenirs pour touristes' AS name, b5d21933-6fef-4b00-ae15-985107f991af::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT 'ff2edeb0-8ebd-4b7e-92f0-4becef51ddea'::uuid AS category_uuid, 'artisanat-contemporain' AS slug, 'artisanat contemporain inspiré du patrimoine' AS name, b5d21933-6fef-4b00-ae15-985107f991af::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '93dde541-03cd-4290-9928-70e77e4c30db'::uuid AS category_uuid, 'bendir' AS slug, 'bendir' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '15c27ba0-a3ba-4dc7-a76a-c17cf6e0a78e'::uuid AS category_uuid, 'goumbri' AS slug, 'goumbri' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT 'ef408319-f5b8-4df4-900f-3e49c2825ea2'::uuid AS category_uuid, 'gasba' AS slug, 'gasba' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '59cd7a51-9035-4d00-9a72-0f0636a42b09'::uuid AS category_uuid, 'karkabou' AS slug, 'karkabou' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '9003ed8e-f019-4b62-ba60-11d2a0c8e47a'::uuid AS category_uuid, 'imzad' AS slug, 'imzad' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '27581019-19df-4f17-a8ea-23ebec94ee33'::uuid AS category_uuid, 'huile-olive-artisanale' AS slug, 'huile d’olive' AS name, 9334e0d0-3634-4e85-9e9a-456fbccc7475::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '49189736-3dfa-4821-a13a-2a34f5b814e2'::uuid AS category_uuid, 'henne' AS slug, 'henné' AS name, 9334e0d0-3634-4e85-9e9a-456fbccc7475::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '31b68822-84fb-497f-a35e-ddc85469a61c'::uuid AS category_uuid, 'savon-artisanal' AS slug, 'savon artisanal' AS name, 9334e0d0-3634-4e85-9e9a-456fbccc7475::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '1b53b4cf-3608-43ee-9f5f-8add1684ed7b'::uuid AS category_uuid, 'encens' AS slug, 'encens' AS name, 9334e0d0-3634-4e85-9e9a-456fbccc7475::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '89a82019-0830-42cb-8dd6-c7462bedd6e7'::uuid AS category_uuid, 'melasse' AS slug, 'mélasse' AS name, 9334e0d0-3634-4e85-9e9a-456fbccc7475::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '5d89b33f-7f5b-47d3-a7a8-85f4b448d686'::uuid AS category_uuid, 'objets-culturels' AS slug, 'objets culturels' AS name, 3348ad70-6cd7-4965-88c3-c925c631337e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT 'bcb47f56-e805-475d-8c52-ff6f12b0e892'::uuid AS category_uuid, 'henne-artistique' AS slug, 'henné artistique' AS name, 78dc13c2-496b-49ec-b164-51b570cb1dff::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '193ca13b-5703-4d37-b58a-bb587e6612f7'::uuid AS category_uuid, 'tatouage-traditionnel' AS slug, 'tatouage traditionnel' AS name, 78dc13c2-496b-49ec-b164-51b570cb1dff::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT 'd3220f80-9dcb-4981-9b71-8b544a1b378e'::uuid AS category_uuid, 'trousseau-mariage' AS slug, 'préparation du trousseau de mariage (cheddat)' AS name, 78dc13c2-496b-49ec-b164-51b570cb1dff::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '9d147243-7762-49c8-abe1-387529c85bf0'::uuid AS category_uuid, 'location-tenues' AS slug, 'location de tenues traditionnelles' AS name, 78dc13c2-496b-49ec-b164-51b570cb1dff::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '0563dff0-682b-4a79-bbb9-5371ab23d38d'::uuid AS category_uuid, 'services-coutumes-ceremonies-traditionnelles' AS slug, 'préparation de cérémonies traditionnelles' AS name, 78dc13c2-496b-49ec-b164-51b570cb1dff::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT 'e13c125a-1abe-4fb1-814b-d35292d41df2'::uuid AS category_uuid, 'musique-folklorique' AS slug, 'musique folklorique (chaoui, kabyle, targui, gnawa)' AS name, 78dc13c2-496b-49ec-b164-51b570cb1dff::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '5bec7134-8eb9-4603-a952-6e5f7273f985'::uuid AS category_uuid, 'danse-traditionnelle' AS slug, 'danse traditionnelle' AS name, 78dc13c2-496b-49ec-b164-51b570cb1dff::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '761fb169-b5c7-4dcf-a853-c4bbbfdf9fe4'::uuid AS category_uuid, 'patisserie-traditionnelle-services' AS slug, 'services de pâtisserie traditionnelle' AS name, 78dc13c2-496b-49ec-b164-51b570cb1dff::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '47f00af1-1b47-44d3-9489-69f23981aec7'::uuid AS category_uuid, 'decoration-fetes' AS slug, 'décoration traditionnelle pour fêtes et mariages' AS name, 78dc13c2-496b-49ec-b164-51b570cb1dff::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT 'eac0c71e-876f-4e1c-9072-33909faf38ce'::uuid AS category_uuid, 'repas-traditionnels' AS slug, 'préparation de repas traditionnels' AS name, 78dc13c2-496b-49ec-b164-51b570cb1dff::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '82f594cc-2e81-46ff-b949-52ecac9f520c'::uuid AS category_uuid, 'organisation-mariages' AS slug, 'organisation de mariages traditionnels algériens' AS name, 78dc13c2-496b-49ec-b164-51b570cb1dff::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT 'efd50f8b-8d8a-43e7-94c3-b0846a25ee29'::uuid AS category_uuid, 'accessoires-fetes' AS slug, 'fourniture d’accessoires de fêtes' AS name, 78dc13c2-496b-49ec-b164-51b570cb1dff::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT 'dcbecac1-f061-429d-af0f-a4cd05e3b7cb'::uuid AS category_uuid, 'broderie-personnalisee' AS slug, 'broderie personnalisée' AS name, 78dc13c2-496b-49ec-b164-51b570cb1dff::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT 'a0c45c9f-1b74-455b-a3d7-a9e8cba35750'::uuid AS category_uuid, 'couture-artisanale' AS slug, 'couture artisanale' AS name, 78dc13c2-496b-49ec-b164-51b570cb1dff::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '75074188-44fd-47d4-b7c8-01b2b46731b6'::uuid AS category_uuid, 'cadeaux-personnalises' AS slug, 'fabrication de cadeaux personnalisés' AS name, 78dc13c2-496b-49ec-b164-51b570cb1dff::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '9e206da1-962a-43e0-8de6-845fb6830883'::uuid AS category_uuid, 'ateliers-apprentissage' AS slug, 'ateliers d’apprentissage (poterie, tissage, gravure)' AS name, 78dc13c2-496b-49ec-b164-51b570cb1dff::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '85446edf-f792-4221-b05f-a546e0aba14c'::uuid AS category_uuid, 'transmission-coutumes' AS slug, 'transmission des coutumes locales' AS name, 78dc13c2-496b-49ec-b164-51b570cb1dff::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '23ede769-e6d2-4987-8312-c6f1f50a8660'::uuid AS category_uuid, 'initiation-arts' AS slug, 'initiation aux arts traditionnels' AS name, 78dc13c2-496b-49ec-b164-51b570cb1dff::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT 'e316c029-e0d0-4832-bec9-447388e89048'::uuid AS category_uuid, 'ceremonies-religieuses' AS slug, 'préparation cérémonies religieuses et culturelles' AS name, 78dc13c2-496b-49ec-b164-51b570cb1dff::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '90690153-4821-445e-9b8e-2fb4ff9f924f'::uuid AS category_uuid, 'huile-olive-terroir' AS slug, 'huile d’olive du terroir' AS name, dc96f689-6f8b-4d38-8e7f-dac21893163a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT 'f4c72992-9585-4c96-b4a3-b4ce9153a47e'::uuid AS category_uuid, 'dattes-deglet-nour' AS slug, 'dattes Deglet Nour' AS name, dc96f689-6f8b-4d38-8e7f-dac21893163a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '3ce0e3a0-24fa-4780-8a7d-f0785dba6bcf'::uuid AS category_uuid, 'dattes-fourrees' AS slug, 'dattes fourrées artisanales' AS name, dc96f689-6f8b-4d38-8e7f-dac21893163a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT 'e536b0cb-6de2-4c7f-8f78-9c4ccbe75062'::uuid AS category_uuid, 'miel-naturel' AS slug, 'miel naturel' AS name, dc96f689-6f8b-4d38-8e7f-dac21893163a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT 'de946f1b-c14e-4e12-9120-3190582fc330'::uuid AS category_uuid, 'couscous-traditionnel' AS slug, 'couscous traditionnel' AS name, dc96f689-6f8b-4d38-8e7f-dac21893163a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '639aa112-27c8-48ab-b10d-c706f9446163'::uuid AS category_uuid, 'semoule-artisanale' AS slug, 'semoule artisanale' AS name, dc96f689-6f8b-4d38-8e7f-dac21893163a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT 'a3e2188c-458f-4384-9f1c-bb5a6cd90ab6'::uuid AS category_uuid, 'epices-locales' AS slug, 'épices locales' AS name, dc96f689-6f8b-4d38-8e7f-dac21893163a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '70ecde30-7954-4e50-bf8f-2dd25ffc88ba'::uuid AS category_uuid, 'olives-artisanales' AS slug, 'olives artisanales' AS name, dc96f689-6f8b-4d38-8e7f-dac21893163a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT 'fece1cd7-0369-4d1c-a053-459c4168e742'::uuid AS category_uuid, 'conserves-traditionnelles' AS slug, 'conserves traditionnelles' AS name, dc96f689-6f8b-4d38-8e7f-dac21893163a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT 'fadca445-306e-40ac-babe-b5ac2fdc36a8'::uuid AS category_uuid, 'harissa-maison' AS slug, 'harissa maison' AS name, dc96f689-6f8b-4d38-8e7f-dac21893163a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '6f409ffd-2b65-4eba-944a-7f057208c42a'::uuid AS category_uuid, 'produits-locaux-fromages-locaux' AS slug, 'fromages locaux' AS name, dc96f689-6f8b-4d38-8e7f-dac21893163a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '2a4e1276-36bb-4915-aeb5-3c345c875458'::uuid AS category_uuid, 'smen' AS slug, 'beurre traditionnel (smen)' AS name, dc96f689-6f8b-4d38-8e7f-dac21893163a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '46cccf30-6a6d-4ace-ae7e-8ddcf8e74d87'::uuid AS category_uuid, 'confitures-artisanales' AS slug, 'confitures artisanales' AS name, dc96f689-6f8b-4d38-8e7f-dac21893163a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '4efe4174-ea07-407d-b9aa-973f408b29f8'::uuid AS category_uuid, 'produits-locaux-fruits-secs' AS slug, 'fruits secs' AS name, dc96f689-6f8b-4d38-8e7f-dac21893163a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '2b4ac27b-bb07-465f-8bec-4b99c3d506c8'::uuid AS category_uuid, 'produits-locaux-plantes-medicinales' AS slug, 'plantes médicinales' AS name, dc96f689-6f8b-4d38-8e7f-dac21893163a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '58ee094e-ea57-4e1e-8247-38f56d99fb4d'::uuid AS category_uuid, 'produits-locaux-herbes-aromatiques' AS slug, 'herbes aromatiques' AS name, dc96f689-6f8b-4d38-8e7f-dac21893163a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '225c975a-94db-49c1-9824-c0cbe2498bbb'::uuid AS category_uuid, 'the-saharien' AS slug, 'thé saharien' AS name, dc96f689-6f8b-4d38-8e7f-dac21893163a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '4f151b23-72b4-4eb9-8026-dab31d949d26'::uuid AS category_uuid, 'cafe-algerien' AS slug, 'café algérien' AS name, dc96f689-6f8b-4d38-8e7f-dac21893163a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT 'bacc6c5a-eb2a-4b57-8e0b-e85db14b6f54'::uuid AS category_uuid, 'farine-traditionnelle' AS slug, 'farine traditionnelle' AS name, dc96f689-6f8b-4d38-8e7f-dac21893163a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
  UNION ALL
  SELECT '0dd3f220-88e6-433a-ab66-c2526e2801d1'::uuid AS category_uuid, 'pates-artisanales' AS slug, 'pâtes artisanales' AS name, dc96f689-6f8b-4d38-8e7f-dac21893163a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.892Z' AS created_at, '2026-04-03T10:15:31.892Z' AS updated_at
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),
  level = EXCLUDED.level,
  category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),
  updated_at = NOW();

-- Lot 39 terminé: 100 entrées
