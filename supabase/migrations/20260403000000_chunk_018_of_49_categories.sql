-- ============================================================
-- CHUNK 18/49 — 100 catégories
-- Total: 4836 catégories
-- Exécuter dans l'ordre dans Supabase SQL Editor
-- ============================================================

INSERT INTO public.categories
  (category_uuid, slug, name, parent_id, level, is_active, created_at, updated_at)
VALUES
  SELECT '70489b8a-e4b9-4d81-85fb-22436aee694e'::uuid AS category_uuid, 'resille' AS slug, 'Résille' AS name, 0654f607-67b9-4a83-9778-b20fb62e8804::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '11862304-eed4-4965-96f0-537b83bf36e0'::uuid AS category_uuid, 'maternite' AS slug, 'Maternité' AS name, 0654f607-67b9-4a83-9778-b20fb62e8804::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '8b5f9799-4bbe-432c-bfdb-d2fb0fa49501'::uuid AS category_uuid, 'gainants' AS slug, 'Gainants' AS name, 0654f607-67b9-4a83-9778-b20fb62e8804::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'f8360847-968f-481e-afe2-11c399617920'::uuid AS category_uuid, 'thermiques' AS slug, 'Thermiques' AS name, 0654f607-67b9-4a83-9778-b20fb62e8804::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '32696e04-726b-453e-b477-57c0966d4383'::uuid AS category_uuid, 'mi-bas' AS slug, 'Mi-bas' AS name, 0654f607-67b9-4a83-9778-b20fb62e8804::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '442634f2-84ac-4acc-81d2-b21768abf345'::uuid AS category_uuid, 'chaussettes-ville' AS slug, 'Chaussettes ville' AS name, 0654f607-67b9-4a83-9778-b20fb62e8804::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'd0d7a38c-080c-4bb1-8fae-65de46d487da'::uuid AS category_uuid, 'chaussettes-sport' AS slug, 'Chaussettes sport' AS name, 0654f607-67b9-4a83-9778-b20fb62e8804::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'a51a2042-cb5c-4104-b935-51300e95b6ae'::uuid AS category_uuid, 'invisibles' AS slug, 'Invisibles' AS name, 0654f607-67b9-4a83-9778-b20fb62e8804::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '8884f3ed-f4e5-4d00-9186-9512adb5f328'::uuid AS category_uuid, 'fantaisie-intimes' AS slug, 'Fantaisie' AS name, 0654f607-67b9-4a83-9778-b20fb62e8804::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '304a8114-33ff-4673-90fc-d3071ef0a5bd'::uuid AS category_uuid, 'chaudes' AS slug, 'Chaudes' AS name, 0654f607-67b9-4a83-9778-b20fb62e8804::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '10e37aee-3a43-46c6-aabe-d34e6916049a'::uuid AS category_uuid, 'intimes-bambou' AS slug, 'Bambou' AS name, 0654f607-67b9-4a83-9778-b20fb62e8804::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'bfb18962-860b-4fb0-a296-7ed6b03d2f6c'::uuid AS category_uuid, 'antiderapantes' AS slug, 'Antidérapantes' AS name, 0654f607-67b9-4a83-9778-b20fb62e8804::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'd25230a5-a01c-4a5a-9f96-bce18d61b2db'::uuid AS category_uuid, 'porte-jarretelles' AS slug, 'Porte-jarretelles' AS name, 0654f607-67b9-4a83-9778-b20fb62e8804::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '139b99f6-c38f-4d2f-a921-51a088d69262'::uuid AS category_uuid, 'cirage' AS slug, 'Cirage' AS name, 4074b0bc-6561-46c7-ab3b-920117b0bb5f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'daae0338-fd72-4ea4-aac6-de03c7a42833'::uuid AS category_uuid, 'impermeabilisant' AS slug, 'Imperméabilisant' AS name, 4074b0bc-6561-46c7-ab3b-920117b0bb5f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '420d14cc-4176-4034-ba8c-c40dd46374c0'::uuid AS category_uuid, 'detachant' AS slug, 'Détachant' AS name, 4074b0bc-6561-46c7-ab3b-920117b0bb5f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'e4967d1e-1f60-4188-b8b4-f7367598c95a'::uuid AS category_uuid, 'nettoyant' AS slug, 'Nettoyant' AS name, 4074b0bc-6561-46c7-ab3b-920117b0bb5f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '7146dc39-60b0-46c7-b14e-cf31547ceef4'::uuid AS category_uuid, 'nourrissant' AS slug, 'Nourrissant' AS name, 4074b0bc-6561-46c7-ab3b-920117b0bb5f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '123dea69-97fa-44b3-a1e8-f6e39e5d35c2'::uuid AS category_uuid, 'deodorant' AS slug, 'Déodorant' AS name, 4074b0bc-6561-46c7-ab3b-920117b0bb5f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '707607cd-b69c-437f-a0a6-f7ff8139da51'::uuid AS category_uuid, 'boites-bijoux' AS slug, 'Boîtes bijoux' AS name, 4074b0bc-6561-46c7-ab3b-920117b0bb5f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '6fde2bce-ec7b-4f4f-a381-ad4131ba0f37'::uuid AS category_uuid, 'presentoirs' AS slug, 'Présentoirs' AS name, 4074b0bc-6561-46c7-ab3b-920117b0bb5f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '95042c96-975e-47e8-9c2d-42e48c9b42d2'::uuid AS category_uuid, 'housses-vetements' AS slug, 'Housses vêtements' AS name, 4074b0bc-6561-46c7-ab3b-920117b0bb5f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'bff127a4-9716-427c-a3cd-924961090b12'::uuid AS category_uuid, 'compression' AS slug, 'Compression' AS name, 4074b0bc-6561-46c7-ab3b-920117b0bb5f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'c126820d-00e2-4b67-96b6-c02c5b5510e9'::uuid AS category_uuid, 'embauchoirs-bois' AS slug, 'Embauchoirs bois' AS name, 4074b0bc-6561-46c7-ab3b-920117b0bb5f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '459e7a97-ea49-4d77-8759-c5ebda02b781'::uuid AS category_uuid, 'embauchoirs-plastique' AS slug, 'Embauchoirs plastique' AS name, 4074b0bc-6561-46c7-ab3b-920117b0bb5f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '54194aa6-d45a-4c61-8b32-fa0cac763689'::uuid AS category_uuid, 'talonnettes' AS slug, 'Talonnettes' AS name, 4074b0bc-6561-46c7-ab3b-920117b0bb5f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '6372fc15-4533-465e-914d-2b891df87bc4'::uuid AS category_uuid, 'semelles' AS slug, 'Semelles' AS name, 4074b0bc-6561-46c7-ab3b-920117b0bb5f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'd429b258-c39f-477a-ad02-9173cd7f6302'::uuid AS category_uuid, 'lacets' AS slug, 'Lacets' AS name, 4074b0bc-6561-46c7-ab3b-920117b0bb5f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'b85cf9a1-9d71-4a67-b765-47d40741e7af'::uuid AS category_uuid, 'chausse-pied' AS slug, 'Chausse-pied' AS name, 4074b0bc-6561-46c7-ab3b-920117b0bb5f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'b0dfa333-d6c1-48fe-9bee-0225439be4f0'::uuid AS category_uuid, 'cintres-bois' AS slug, 'Cintres bois' AS name, 4074b0bc-6561-46c7-ab3b-920117b0bb5f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '1a0fbca3-22fc-4e3a-af19-51015a4c6a17'::uuid AS category_uuid, 'cintres-velours' AS slug, 'Cintres velours' AS name, 4074b0bc-6561-46c7-ab3b-920117b0bb5f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'f0535cf9-6c4b-4c7e-9cf5-35d23fa96c74'::uuid AS category_uuid, 'cintres-metal' AS slug, 'Cintres métal' AS name, 4074b0bc-6561-46c7-ab3b-920117b0bb5f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'ca38476a-141e-4b25-8573-f93af1b47abb'::uuid AS category_uuid, 'entretien-accessoires-organiseurs' AS slug, 'Organiseurs' AS name, 4074b0bc-6561-46c7-ab3b-920117b0bb5f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '87e4ec37-837c-499a-8bca-3521b9f2e0f8'::uuid AS category_uuid, 'sous-vide' AS slug, 'Sous-vide' AS name, 4074b0bc-6561-46c7-ab3b-920117b0bb5f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '3019f150-d897-47c7-b52c-a8c0c33d3162'::uuid AS category_uuid, 'sacs-et-bagages' AS slug, 'Sacs & Bagages' AS name, NULL::uuid AS parent_id, 1 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'f0267b86-e931-4c67-9742-2e0817619f6e'::uuid AS category_uuid, 'sacs-a-main' AS slug, 'Sacs à main (femme & unisexe)' AS name, 3019f150-d897-47c7-b52c-a8c0c33d3162::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '6dc149e2-a210-474f-b965-faacaa266c53'::uuid AS category_uuid, 'sacs-a-dos' AS slug, 'Sacs à dos' AS name, 3019f150-d897-47c7-b52c-a8c0c33d3162::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'd01e688b-5018-48c0-a889-6c54becacae6'::uuid AS category_uuid, 'sacs-voyage-week-end' AS slug, 'Sacs Voyage & Week-end' AS name, 3019f150-d897-47c7-b52c-a8c0c33d3162::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '29e174af-b1c2-467d-8db4-93caa16da614'::uuid AS category_uuid, 'valises-bagages' AS slug, 'Valises & Bagages' AS name, 3019f150-d897-47c7-b52c-a8c0c33d3162::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'a32b5660-3837-45d5-bb4d-af910a29ea8a'::uuid AS category_uuid, 'maroquinerie' AS slug, 'Maroquinerie' AS name, 3019f150-d897-47c7-b52c-a8c0c33d3162::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'e3b09dae-c700-424b-bf07-2941efc3315a'::uuid AS category_uuid, 'sacs-professionnels' AS slug, 'Sacs Professionnels' AS name, 3019f150-d897-47c7-b52c-a8c0c33d3162::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '3a81eadb-d3be-4561-87a7-1a781ca866b4'::uuid AS category_uuid, 'sacs-tech-mobilite' AS slug, 'Sacs Tech & Mobilité' AS name, 3019f150-d897-47c7-b52c-a8c0c33d3162::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '7ce8245d-9d7b-4d7d-8d92-17c3dbc7f922'::uuid AS category_uuid, 'sacs-de-sport' AS slug, 'Sacs de Sport' AS name, 3019f150-d897-47c7-b52c-a8c0c33d3162::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'e41376ac-80da-4892-9c7c-4cf07a534dbe'::uuid AS category_uuid, 'sacs-enfants' AS slug, 'Sacs Enfants' AS name, 3019f150-d897-47c7-b52c-a8c0c33d3162::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'e5c88f2c-5459-4c8e-bfd5-836773852a76'::uuid AS category_uuid, 'sacs-specialises' AS slug, 'Sacs Spécialisés' AS name, 3019f150-d897-47c7-b52c-a8c0c33d3162::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'aed7577b-d7ef-40fb-b3c4-760f9e6df664'::uuid AS category_uuid, 'bagagerie-professionnelle-voyage' AS slug, 'Bagagerie Professionnelle & Voyage' AS name, 3019f150-d897-47c7-b52c-a8c0c33d3162::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '448116cc-3d2c-4a4f-9c3b-5cfac8c5cc55'::uuid AS category_uuid, 'housses-protections' AS slug, 'Housses & Protections' AS name, 3019f150-d897-47c7-b52c-a8c0c33d3162::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '80ffbdde-ceee-4d02-9f36-f3f0e625ab69'::uuid AS category_uuid, 'accessoires-bagagerie' AS slug, 'Accessoires Bagagerie' AS name, 3019f150-d897-47c7-b52c-a8c0c33d3162::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '4c05cba0-c5e9-4073-af53-78ee55c70960'::uuid AS category_uuid, 'sacs-mode-luxe' AS slug, 'Sacs Mode & Luxe' AS name, 3019f150-d897-47c7-b52c-a8c0c33d3162::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'e0d3550f-2848-4a85-ae0c-bef334924232'::uuid AS category_uuid, 'sacs-artisanaux-locaux' AS slug, 'Sacs Artisanaux & Locaux' AS name, 3019f150-d897-47c7-b52c-a8c0c33d3162::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '54598672-c01e-4991-a1d5-83fa8149eeb4'::uuid AS category_uuid, 'materiaux-fabrication' AS slug, 'Matériaux & Types de fabrication' AS name, 3019f150-d897-47c7-b52c-a8c0c33d3162::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '4d8248d5-b081-4774-b387-b2ab0e46475f'::uuid AS category_uuid, 'segments-usages' AS slug, 'Segments & Usages' AS name, 3019f150-d897-47c7-b52c-a8c0c33d3162::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '4fd2d67f-d7ab-4e3d-b4d1-995608b33ef8'::uuid AS category_uuid, 'cabas-grand' AS slug, 'Cabas grand' AS name, f0267b86-e931-4c67-9742-2e0817619f6e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '0d8fc418-1627-4b5e-93e9-c71c3b48d9a4'::uuid AS category_uuid, 'cabas-moyen' AS slug, 'Cabas moyen' AS name, f0267b86-e931-4c67-9742-2e0817619f6e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'dda69f7f-a338-49a3-935d-8188ae49043c'::uuid AS category_uuid, 'cabas-rigide' AS slug, 'Cabas rigide' AS name, f0267b86-e931-4c67-9742-2e0817619f6e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'cad2ece6-f372-43df-8a8b-0fdd1fd38672'::uuid AS category_uuid, 'cabas-souple' AS slug, 'Cabas souple' AS name, f0267b86-e931-4c67-9742-2e0817619f6e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '5c26b089-0d12-415c-b053-3ab14ff7c8a8'::uuid AS category_uuid, 'bandouliere-mini' AS slug, 'Sacs bandoulière mini' AS name, f0267b86-e931-4c67-9742-2e0817619f6e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '2d293ef0-b147-414d-a9c2-7ffcbc79cc6a'::uuid AS category_uuid, 'bandouliere-moyen' AS slug, 'Sacs bandoulière moyen' AS name, f0267b86-e931-4c67-9742-2e0817619f6e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '72990a22-ee3e-4c6a-911e-7a5ac5d32255'::uuid AS category_uuid, 'bandouliere-matelasse' AS slug, 'Sacs bandoulière matelassé' AS name, f0267b86-e931-4c67-9742-2e0817619f6e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '025487a3-70ec-4f22-8133-a1eac8f1826a'::uuid AS category_uuid, 'bandouliere-sport' AS slug, 'Sacs bandoulière sport' AS name, f0267b86-e931-4c67-9742-2e0817619f6e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'e4a09868-7944-41d1-b954-4fd1aaf50edb'::uuid AS category_uuid, 'sacs-seau' AS slug, 'Sacs seau' AS name, f0267b86-e931-4c67-9742-2e0817619f6e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'f6de0fc0-29a5-4e73-8258-2b02ad62aee9'::uuid AS category_uuid, 'sacs-tote' AS slug, 'Sacs tote' AS name, f0267b86-e931-4c67-9742-2e0817619f6e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'e1dac57e-134b-4ca2-9e4d-6bf906856d46'::uuid AS category_uuid, 'sacs-hobo' AS slug, 'Sacs hobo' AS name, f0267b86-e931-4c67-9742-2e0817619f6e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '07774809-63b5-445f-b1f6-c391cf694bc1'::uuid AS category_uuid, 'sacs-bowling' AS slug, 'Sacs bowling' AS name, f0267b86-e931-4c67-9742-2e0817619f6e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '24b749f9-67b0-41fa-8781-777b5299f3ce'::uuid AS category_uuid, 'pochettes-soiree' AS slug, 'Pochettes soirée' AS name, f0267b86-e931-4c67-9742-2e0817619f6e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'd2fc15f6-06a6-49d3-9ac9-8708e41f4dc7'::uuid AS category_uuid, 'pochettes-mariage' AS slug, 'Pochettes mariage' AS name, f0267b86-e931-4c67-9742-2e0817619f6e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '3fa4ac03-2e22-4946-960d-e12bd0513801'::uuid AS category_uuid, 'pochettes-minimalistes' AS slug, 'Pochettes minimalistes' AS name, f0267b86-e931-4c67-9742-2e0817619f6e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'a3a4b3fd-5b7a-4e5d-99d0-a251d345136d'::uuid AS category_uuid, 'mini-bags-ville' AS slug, 'Mini-bags ville' AS name, f0267b86-e931-4c67-9742-2e0817619f6e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '53389fcc-ba1c-45bd-a8f4-5f9a1d10875d'::uuid AS category_uuid, 'mini-bags-luxe' AS slug, 'Mini-bags luxe' AS name, f0267b86-e931-4c67-9742-2e0817619f6e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '0a611bd7-101c-45d0-965f-5a67b3bdc90f'::uuid AS category_uuid, 'sacs-demi-lune' AS slug, 'Sacs demi-lune' AS name, f0267b86-e931-4c67-9742-2e0817619f6e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'f50717f6-2222-4548-ad3c-456b0acf94af'::uuid AS category_uuid, 'sacs-en-cuir-veritable' AS slug, 'Sacs en cuir véritable' AS name, f0267b86-e931-4c67-9742-2e0817619f6e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '48562d33-7a20-4104-ade4-cb4808eb50c0'::uuid AS category_uuid, 'sacs-en-cuir-synthetique' AS slug, 'Sacs en cuir synthétique' AS name, f0267b86-e931-4c67-9742-2e0817619f6e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'f9b45684-1dd9-4eb8-bdb3-a5fb4d5f6e8a'::uuid AS category_uuid, 'sacs-en-cuir-artisanal' AS slug, 'Sacs en cuir artisanal' AS name, f0267b86-e931-4c67-9742-2e0817619f6e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '2d1ef021-76b0-4246-9415-b2611321ef4a'::uuid AS category_uuid, 'sacs-en-toile-tissu' AS slug, 'Sacs en toile & tissu' AS name, f0267b86-e931-4c67-9742-2e0817619f6e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '0616b51d-38ab-4e59-bb9b-aa79a96e4eee'::uuid AS category_uuid, 'urbains' AS slug, 'Sacs à dos urbains' AS name, 6dc149e2-a210-474f-b965-faacaa266c53::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '77521d97-495b-4009-9dc9-4e21b8977e7a'::uuid AS category_uuid, 'antivol' AS slug, 'Sacs à dos antivol' AS name, 6dc149e2-a210-474f-b965-faacaa266c53::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '74b32fab-22b9-4184-8534-b86fa6498ba9'::uuid AS category_uuid, 'business-porte-pc' AS slug, 'Sacs à dos business (porte-PC)' AS name, 6dc149e2-a210-474f-b965-faacaa266c53::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'a492fa8a-f749-4e47-bbb9-1e26d3f1efc4'::uuid AS category_uuid, 'sacs-a-dos-sport' AS slug, 'Sacs à dos sport' AS name, 6dc149e2-a210-474f-b965-faacaa266c53::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '41ceb409-a22a-4d54-99ec-e7dd0ffa6987'::uuid AS category_uuid, 'randonnee-20l' AS slug, 'Randonnée & trekking 20L' AS name, 6dc149e2-a210-474f-b965-faacaa266c53::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'ff30f720-91b1-4a31-9bae-08ce140ebb71'::uuid AS category_uuid, 'randonnee-30l' AS slug, 'Randonnée & trekking 30L' AS name, 6dc149e2-a210-474f-b965-faacaa266c53::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'b57fe749-6d57-43ad-97fe-0705fbad4f6f'::uuid AS category_uuid, 'randonnee-50l-plus' AS slug, 'Randonnée & trekking 50L+' AS name, 6dc149e2-a210-474f-b965-faacaa266c53::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '0cd24934-01d2-43ec-b11f-2806ba16961c'::uuid AS category_uuid, 'tactiques-militaires' AS slug, 'Sacs tactiques & militaires' AS name, 6dc149e2-a210-474f-b965-faacaa266c53::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '4cd78892-6686-43f6-b716-91e08ad9ff18'::uuid AS category_uuid, 'scolaires-enfant-ado' AS slug, 'Sacs à dos scolaires (enfant/ado)' AS name, 6dc149e2-a210-474f-b965-faacaa266c53::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'b58a3012-c678-4a80-bd9c-ae4967b467d4'::uuid AS category_uuid, 'minimalistes' AS slug, 'Sacs à dos minimalistes' AS name, 6dc149e2-a210-474f-b965-faacaa266c53::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'a33d4219-2b82-4e30-b579-2296ac794503'::uuid AS category_uuid, 'voyage-cabine' AS slug, 'Sacs à dos voyage cabine' AS name, 6dc149e2-a210-474f-b965-faacaa266c53::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '337e8c8d-1059-48f7-86d4-d5512903213b'::uuid AS category_uuid, 'voyage-souples' AS slug, 'Sacs de voyage souples' AS name, d01e688b-5018-48c0-a889-6c54becacae6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '4aece28e-89f6-495e-a231-cff4e5af9e3a'::uuid AS category_uuid, 'voyage-semi-rigides' AS slug, 'Sacs de voyage semi-rigides' AS name, d01e688b-5018-48c0-a889-6c54becacae6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'f5ed2f80-c152-4d19-90e3-9d927e7f2f3f'::uuid AS category_uuid, 'duffle-bags' AS slug, 'Duffle bags' AS name, d01e688b-5018-48c0-a889-6c54becacae6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '0b59793d-71e2-454e-ad42-881db165552e'::uuid AS category_uuid, 'polochon' AS slug, 'Sacs polochon' AS name, d01e688b-5018-48c0-a889-6c54becacae6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'dc77f169-8e6f-4b79-837f-d84e73da22e0'::uuid AS category_uuid, 'week-end' AS slug, 'Sacs week-end' AS name, d01e688b-5018-48c0-a889-6c54becacae6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'bfe1a33c-c7ec-4b03-b0fb-dd1f771db1e9'::uuid AS category_uuid, 'sacs-voyage-week-end-pliables' AS slug, 'Sacs pliables' AS name, d01e688b-5018-48c0-a889-6c54becacae6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '6aadaa07-dc78-4da8-83f9-e87f2dd0b45b'::uuid AS category_uuid, 'transport-longue-distance' AS slug, 'Sacs transport longue distance' AS name, d01e688b-5018-48c0-a889-6c54becacae6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '8394a349-d2b7-4320-9334-1a17c9f83111'::uuid AS category_uuid, 'multi-poches' AS slug, 'Sacs multi-poches' AS name, d01e688b-5018-48c0-a889-6c54becacae6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '3e03dce8-22bb-4a78-91a3-fde6df28b2fe'::uuid AS category_uuid, 'compartiment-chaussures' AS slug, 'Sacs avec compartiment chaussures' AS name, d01e688b-5018-48c0-a889-6c54becacae6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'd9f21039-8bbe-4f85-9c61-09a9d58e3de7'::uuid AS category_uuid, 'cabine-rigides' AS slug, 'Valises cabine rigides' AS name, 29e174af-b1c2-467d-8db4-93caa16da614::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '97053209-a2af-4b73-b6cb-3f73c2ed82bf'::uuid AS category_uuid, 'cabine-souples' AS slug, 'Valises cabine souples' AS name, 29e174af-b1c2-467d-8db4-93caa16da614::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'e6fd5df0-a63e-446b-9b38-1f10f4e83ca9'::uuid AS category_uuid, 'cabine-extensibles' AS slug, 'Valises cabine extensibles' AS name, 29e174af-b1c2-467d-8db4-93caa16da614::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'e3ba0cd8-1604-42b1-a6fa-45317dd8440f'::uuid AS category_uuid, 'valises-medium' AS slug, 'Valises médium' AS name, 29e174af-b1c2-467d-8db4-93caa16da614::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '25e89ca7-d004-4918-8cba-507d9b7cf5d7'::uuid AS category_uuid, 'valises-grandes' AS slug, 'Valises grandes tailles' AS name, 29e174af-b1c2-467d-8db4-93caa16da614::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '0342f10c-91d4-4982-8f54-2cec3259ec27'::uuid AS category_uuid, 'valises-aluminium' AS slug, 'Valises aluminium' AS name, 29e174af-b1c2-467d-8db4-93caa16da614::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),
  level = EXCLUDED.level,
  category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),
  updated_at = NOW();

-- Lot 18 terminé: 100 entrées
