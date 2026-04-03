-- ============================================================
-- CHUNK 44/49 — 100 catégories
-- Total: 4836 catégories
-- Exécuter dans l'ordre dans Supabase SQL Editor
-- ============================================================

INSERT INTO public.categories
  (category_uuid, slug, name, parent_id, level, is_active, created_at, updated_at)
VALUES
  SELECT '7b29961d-ab84-4d3c-ba36-fd2ee03c50d7'::uuid AS category_uuid, 'assistants-familiaux' AS slug, 'assistants familiaux' AS name, 8c7c695a-efe0-4f8e-a236-00dddfe0fa3d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'b59d8a85-1f94-448c-bb29-a8bd3acb7526'::uuid AS category_uuid, 'soins-a-domicile' AS slug, 'soins à domicile' AS name, 8c7c695a-efe0-4f8e-a236-00dddfe0fa3d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '65ea773b-b502-482e-8e83-efbbe86562ad'::uuid AS category_uuid, 'accompagnement-personnes-agees' AS slug, 'accompagnement pour personnes âgées' AS name, 8c7c695a-efe0-4f8e-a236-00dddfe0fa3d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '3b76e42f-8d83-4b37-8035-709180fdbcd6'::uuid AS category_uuid, 'cuisiniers' AS slug, 'cuisiniers' AS name, 19501346-5b84-402d-9fb9-1c92843cee96::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '40ca1e23-a441-4993-a18b-721126956fc8'::uuid AS category_uuid, 'hotellerie-restauration-serveurs' AS slug, 'serveurs' AS name, 19501346-5b84-402d-9fb9-1c92843cee96::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '0bcbc49b-9524-4ae7-96d2-51c01ae6409b'::uuid AS category_uuid, 'patissiers' AS slug, 'pâtissiers' AS name, 19501346-5b84-402d-9fb9-1c92843cee96::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '8fb96b26-0587-44c1-a7cb-0e533cf8713a'::uuid AS category_uuid, 'boulangers' AS slug, 'boulangers' AS name, 19501346-5b84-402d-9fb9-1c92843cee96::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '45ec5955-3103-483c-8d0d-af0a8b20869d'::uuid AS category_uuid, 'receptionnistes' AS slug, 'réceptionnistes' AS name, 19501346-5b84-402d-9fb9-1c92843cee96::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'dd9fef61-f829-4545-8db0-3e6f8b7492f6'::uuid AS category_uuid, 'gestion-hoteliere' AS slug, 'gestion hôtelière' AS name, 19501346-5b84-402d-9fb9-1c92843cee96::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '8fe8874c-cac3-4523-a9e9-b5f74812bd23'::uuid AS category_uuid, 'chauffeurs' AS slug, 'chauffeurs' AS name, 4fc24f1e-c8e0-407d-9028-238d2c754ca3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'a2d15df0-d52f-4da9-8dd5-6711e62bfd28'::uuid AS category_uuid, 'livreurs' AS slug, 'livreurs' AS name, 4fc24f1e-c8e0-407d-9028-238d2c754ca3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'a93dea79-f635-4be9-a4b0-8c8db748d4c0'::uuid AS category_uuid, 'caristes' AS slug, 'caristes' AS name, 4fc24f1e-c8e0-407d-9028-238d2c754ca3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '58cf5d48-9b43-4b49-9f25-d6674057dbc8'::uuid AS category_uuid, 'agents-logistiques' AS slug, 'agents logistiques' AS name, 4fc24f1e-c8e0-407d-9028-238d2c754ca3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '5103fccb-a20d-40bb-b9b2-35d2ab08081c'::uuid AS category_uuid, 'manutentionnaires' AS slug, 'manutentionnaires' AS name, 4fc24f1e-c8e0-407d-9028-238d2c754ca3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'e377bbcf-7386-463a-bccc-1bb30434c5fb'::uuid AS category_uuid, 'gestion-stock' AS slug, 'gestion stock' AS name, 4fc24f1e-c8e0-407d-9028-238d2c754ca3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '948e2800-c5f5-4f93-b1f2-76dc55801c9b'::uuid AS category_uuid, 'ouvriers-agricoles' AS slug, 'ouvriers agricoles' AS name, c4dcd524-6af6-4aa1-8d65-a8909186074c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '2119c344-51d9-4a3e-abe8-dbffcc8d285a'::uuid AS category_uuid, 'techniciens-agricoles' AS slug, 'techniciens agricoles' AS name, c4dcd524-6af6-4aa1-8d65-a8909186074c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'e2e452ac-a3c1-400b-8411-0cafe6933679'::uuid AS category_uuid, 'eleveurs' AS slug, 'éleveurs' AS name, c4dcd524-6af6-4aa1-8d65-a8909186074c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'b3aa3a63-d0cf-409f-8f67-b8598f185919'::uuid AS category_uuid, 'specialistes-irrigation' AS slug, 'spécialistes irrigation' AS name, c4dcd524-6af6-4aa1-8d65-a8909186074c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '957c58a6-c2d2-4e3f-8eef-525b794752d3'::uuid AS category_uuid, 'consultations' AS slug, 'consultations' AS name, 864649e7-881f-4132-b873-7779cc61b381::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '6c9c337e-ccb8-48a1-baf5-ec4cc02a5869'::uuid AS category_uuid, 'marches-professionnels' AS slug, 'marchés professionnels' AS name, 864649e7-881f-4132-b873-7779cc61b381::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '7f30cdac-5b1b-485b-8a9d-461f3ba6a89b'::uuid AS category_uuid, 'services-entreprises' AS slug, 'services entreprises' AS name, 864649e7-881f-4132-b873-7779cc61b381::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '1e2e866f-7d2a-4b55-bc8b-e28f9a09f5b5'::uuid AS category_uuid, 'sous-traitance' AS slug, 'sous-traitance' AS name, 864649e7-881f-4132-b873-7779cc61b381::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'b759f71f-9ed5-4f09-a2ca-264edebc4970'::uuid AS category_uuid, 'formations-qualifiantes' AS slug, 'formations qualifiantes' AS name, 758aac57-1284-4983-aa67-1fe24645b8e9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'e508c492-0ca8-4c2b-ba88-b4eb2ee7f254'::uuid AS category_uuid, 'certifications' AS slug, 'certifications' AS name, 758aac57-1284-4983-aa67-1fe24645b8e9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'e5ab98cc-8657-421d-93ec-d817c918e9f8'::uuid AS category_uuid, 'formation-developpement-professionnel-formations-professionnelles' AS slug, 'formations professionnelles' AS name, 758aac57-1284-4983-aa67-1fe24645b8e9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '3720da25-8e86-44e8-a6f7-e54c4dce45a9'::uuid AS category_uuid, 'ateliers-techniques' AS slug, 'ateliers techniques' AS name, 758aac57-1284-4983-aa67-1fe24645b8e9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '520348cc-152e-4b80-82f4-922b1bfa00ec'::uuid AS category_uuid, 'coaching-carriere' AS slug, 'coaching carrière' AS name, 758aac57-1284-4983-aa67-1fe24645b8e9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'd7733758-d66b-4bfe-891d-bb865487ebb7'::uuid AS category_uuid, 'creation-entreprise' AS slug, 'création d’entreprise' AS name, 68cd0b8c-e3af-407d-a868-a0a4301c40f8::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'a152acd4-a655-42f6-a340-3ccac3256673'::uuid AS category_uuid, 'conseils-entrepreneurs' AS slug, 'conseils entrepreneurs' AS name, 68cd0b8c-e3af-407d-a868-a0a4301c40f8::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '94758ad5-d519-4477-9e4a-6606a621c864'::uuid AS category_uuid, 'services-comptables' AS slug, 'services comptables' AS name, 68cd0b8c-e3af-407d-a868-a0a4301c40f8::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '826b297f-1300-46e7-a14c-666184961fcc'::uuid AS category_uuid, 'assistance-juridique' AS slug, 'assistance juridique' AS name, 68cd0b8c-e3af-407d-a868-a0a4301c40f8::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '3a0c2cbf-3344-451c-9130-42e0afa5da00'::uuid AS category_uuid, 'business-plan' AS slug, 'business plan' AS name, 68cd0b8c-e3af-407d-a868-a0a4301c40f8::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '60cb879b-1f2d-4a30-adde-c7dab02fbe41'::uuid AS category_uuid, 'redaction-cv' AS slug, 'rédaction de CV' AS name, 8609b84c-7465-4d26-bb18-11570b414e65::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'ef473ce2-9b68-4f74-af22-8f7f5e990ea4'::uuid AS category_uuid, 'lettres-motivation' AS slug, 'lettres de motivation' AS name, 8609b84c-7465-4d26-bb18-11570b414e65::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '6feb912a-b3dc-445a-9f33-becf07ad0231'::uuid AS category_uuid, 'coaching-entretien' AS slug, 'coaching d’entretien' AS name, 8609b84c-7465-4d26-bb18-11570b414e65::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'dffad802-d8f4-4adc-9db8-8075b7ac9d1f'::uuid AS category_uuid, 'traduction-professionnelle' AS slug, 'traduction professionnelle' AS name, 8609b84c-7465-4d26-bb18-11570b414e65::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '497a0118-56fc-476f-8bd8-a58c9a0a1640'::uuid AS category_uuid, 'optimisation-profil-linkedin' AS slug, 'optimisation profil LinkedIn' AS name, 8609b84c-7465-4d26-bb18-11570b414e65::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '50e80f6e-21a8-4dec-a1b8-11cc2977f111'::uuid AS category_uuid, 'stages-universitaires' AS slug, 'stages universitaires' AS name, 3661039a-9b34-4955-9284-8d311e6f81a4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '5706c85c-8eaf-4fbe-802b-48bad3ef8c4f'::uuid AS category_uuid, 'stages-ete' AS slug, 'stages d’été' AS name, 3661039a-9b34-4955-9284-8d311e6f81a4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'adbddb37-55b4-49ed-965e-b6341ea71166'::uuid AS category_uuid, 'opportunites-etudiants' AS slug, 'opportunités étudiants' AS name, 3661039a-9b34-4955-9284-8d311e6f81a4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '33a4cb7e-fe78-4db7-8e3b-e958ae2a882b'::uuid AS category_uuid, 'programmes-jeunes-diplomes' AS slug, 'programmes jeunes diplômés' AS name, 3661039a-9b34-4955-9284-8d311e6f81a4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'c1db9ad2-7d45-4ff3-8545-216d61df77c5'::uuid AS category_uuid, 'petits-boulots' AS slug, 'petits boulots' AS name, f4027525-267b-4c60-8088-3301630b473f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '0e0d25ba-6270-49f6-82cb-59024a1a4e1e'::uuid AS category_uuid, 'aide-scolaire' AS slug, 'aide scolaire' AS name, f4027525-267b-4c60-8088-3301630b473f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '7fa7b113-428c-4b5c-8594-470c78cf9d82'::uuid AS category_uuid, 'jobs-week-end' AS slug, 'jobs week-end' AS name, f4027525-267b-4c60-8088-3301630b473f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'a08575c1-f929-45e9-bfec-1142044dd0e3'::uuid AS category_uuid, 'travail-soiree' AS slug, 'travail en soirée' AS name, f4027525-267b-4c60-8088-3301630b473f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '14b157c3-6ac6-4f1a-8e95-be7382bdc8c7'::uuid AS category_uuid, 'missions-temporaires' AS slug, 'missions temporaires' AS name, f4027525-267b-4c60-8088-3301630b473f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'f82f7f6e-e9c4-4154-8e07-c5d3adfca896'::uuid AS category_uuid, 'education-loisirs' AS slug, 'Sport, Éducation & Loisirs' AS name, NULL::uuid AS parent_id, 1 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '64db5aa7-2c5a-4afc-85f3-7c61a7e0f6ab'::uuid AS category_uuid, 'cours-formations' AS slug, 'Cours & Formations' AS name, f82f7f6e-e9c4-4154-8e07-c5d3adfca896::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '4714c7f2-d015-490e-bf3b-25a245a9f54e'::uuid AS category_uuid, 'livres-supports-educatifs' AS slug, 'Livres & Supports Éducatifs' AS name, f82f7f6e-e9c4-4154-8e07-c5d3adfca896::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '7ebba089-f714-4ef3-b435-bb85525f1118'::uuid AS category_uuid, 'arts-musique' AS slug, 'Arts & Musique' AS name, f82f7f6e-e9c4-4154-8e07-c5d3adfca896::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '0c92eb52-927d-49ac-ad53-0723919e7bf9'::uuid AS category_uuid, 'sports-loisirs' AS slug, 'Sports & Loisirs' AS name, f82f7f6e-e9c4-4154-8e07-c5d3adfca896::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'ca316d0a-a42f-4864-ab65-d037546095bf'::uuid AS category_uuid, 'enfance-activites-familiales' AS slug, 'Enfance & Activités Familiales' AS name, f82f7f6e-e9c4-4154-8e07-c5d3adfca896::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '2dac322a-8ef0-46f1-8c97-c47cef5cc815'::uuid AS category_uuid, 'clubs-associations' AS slug, 'Clubs & Associations' AS name, f82f7f6e-e9c4-4154-8e07-c5d3adfca896::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'c571a3d9-006e-4411-92a3-52936ef8ecf2'::uuid AS category_uuid, 'cours-formations-cours-particuliers' AS slug, 'cours particuliers' AS name, 64db5aa7-2c5a-4afc-85f3-7c61a7e0f6ab::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'f5efef79-a446-401b-bf7f-144812fc40bf'::uuid AS category_uuid, 'cours-maths' AS slug, 'maths' AS name, NULL::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '4f59f310-ff6b-48cb-869c-f47e355e3ce5'::uuid AS category_uuid, 'cours-sciences' AS slug, 'sciences' AS name, NULL::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '1c6b59a9-6eb5-4316-9906-f5c078422fde'::uuid AS category_uuid, 'cours-langues' AS slug, 'langues' AS name, NULL::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'd6431a08-b8da-44ec-bd32-03cc5dd29b31'::uuid AS category_uuid, 'cours-formations-soutien-scolaire' AS slug, 'soutien scolaire' AS name, 64db5aa7-2c5a-4afc-85f3-7c61a7e0f6ab::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'ee99cbaa-bedf-4603-bccf-cf8fadfe8a89'::uuid AS category_uuid, 'soutien-primaire' AS slug, 'primaire' AS name, NULL::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '8bc91817-beab-4994-9d4b-4d5d4662bbe8'::uuid AS category_uuid, 'soutien-college' AS slug, 'collège' AS name, NULL::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '4b2c3707-0a20-4737-9c86-1be5d7639308'::uuid AS category_uuid, 'soutien-lycee' AS slug, 'lycée' AS name, NULL::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '6f95dd3b-ae7e-4e3c-aa80-9389365ba9ee'::uuid AS category_uuid, 'preparation-examens' AS slug, 'préparation examens (BEM/BAC)' AS name, 64db5aa7-2c5a-4afc-85f3-7c61a7e0f6ab::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '603ab00b-a8f9-4a70-97bd-c982b74cd8ee'::uuid AS category_uuid, 'prep-methodologie' AS slug, 'méthodologie' AS name, 6f95dd3b-ae7e-4e3c-aa80-9389365ba9ee::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '73ac35c1-b474-4346-a7a2-22859cabcab6'::uuid AS category_uuid, 'prep-sujets-corriges' AS slug, 'sujets corrigés' AS name, 6f95dd3b-ae7e-4e3c-aa80-9389365ba9ee::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '557a3302-75f3-45a4-a78f-071ed4f76e17'::uuid AS category_uuid, 'prep-coaching' AS slug, 'coaching' AS name, 6f95dd3b-ae7e-4e3c-aa80-9389365ba9ee::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '674fda90-825a-44d1-8ab9-398aac216ea1'::uuid AS category_uuid, 'cours-formations-formations-professionnelles' AS slug, 'formations professionnelles' AS name, 64db5aa7-2c5a-4afc-85f3-7c61a7e0f6ab::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '3ed0f575-49ae-4ba8-b906-892c2cdfed49'::uuid AS category_uuid, 'form-informatique' AS slug, 'informatique' AS name, NULL::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '2897cc5b-5478-4eb4-8642-f3e320135c0d'::uuid AS category_uuid, 'form-commerce' AS slug, 'commerce' AS name, NULL::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '9f4afced-3817-40c6-9533-42ed4f6eff70'::uuid AS category_uuid, 'form-gestion' AS slug, 'gestion' AS name, NULL::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'd400bb7d-b049-4097-96c2-1af006f5447c'::uuid AS category_uuid, 'ateliers-pedagogiques' AS slug, 'ateliers pédagogiques' AS name, 64db5aa7-2c5a-4afc-85f3-7c61a7e0f6ab::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'f12e33dc-d630-4151-963b-9ce3030c1cad'::uuid AS category_uuid, 'atelier-stem' AS slug, 'STEM' AS name, d400bb7d-b049-4097-96c2-1af006f5447c::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '738521d4-5e46-4e30-8724-95dd8979993b'::uuid AS category_uuid, 'atelier-creativite' AS slug, 'créativité' AS name, d400bb7d-b049-4097-96c2-1af006f5447c::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '011e648a-c5c5-4ab2-93e9-321308628577'::uuid AS category_uuid, 'atelier-remediation' AS slug, 'remédiation' AS name, d400bb7d-b049-4097-96c2-1af006f5447c::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '83e60512-73ca-4ebd-8de9-7ce57f58311b'::uuid AS category_uuid, 'formations-en-ligne' AS slug, 'formations en ligne' AS name, 64db5aa7-2c5a-4afc-85f3-7c61a7e0f6ab::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '4d6d8bcd-f31d-4bbe-8006-95b6a6f44da0'::uuid AS category_uuid, 'online-mooc' AS slug, 'MOOC' AS name, 83e60512-73ca-4ebd-8de9-7ce57f58311b::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '8133e8ae-5fcf-4921-ace4-b305c1266f1b'::uuid AS category_uuid, 'online-certifications' AS slug, 'certifications' AS name, 83e60512-73ca-4ebd-8de9-7ce57f58311b::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '2200fb59-ea43-4fdb-92bc-3224f3b04fde'::uuid AS category_uuid, 'online-tutoriels' AS slug, 'tutoriels' AS name, 83e60512-73ca-4ebd-8de9-7ce57f58311b::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'f7923f1f-1ff1-448b-86b1-b9017dd1c924'::uuid AS category_uuid, 'livres-scolaires' AS slug, 'livres scolaires' AS name, 4714c7f2-d015-490e-bf3b-25a245a9f54e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '6021dd85-a685-4833-ac39-4e83422cde7b'::uuid AS category_uuid, 'livres-primaire' AS slug, 'primaire' AS name, f7923f1f-1ff1-448b-86b1-b9017dd1c924::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'f70f6c82-e926-4820-aedc-fcd4bd6519b5'::uuid AS category_uuid, 'livres-college' AS slug, 'collège' AS name, f7923f1f-1ff1-448b-86b1-b9017dd1c924::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'cf9acdd5-3573-4e2a-9b72-4a64d5e7f271'::uuid AS category_uuid, 'livres-lycee' AS slug, 'lycée' AS name, f7923f1f-1ff1-448b-86b1-b9017dd1c924::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '904bd467-6da8-407d-87da-76e124693eb3'::uuid AS category_uuid, 'manuels-universitaires' AS slug, 'manuels universitaires' AS name, 4714c7f2-d015-490e-bf3b-25a245a9f54e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'a7762422-c264-44ee-bc1a-c71ea5454e48'::uuid AS category_uuid, 'manuels-sciences' AS slug, 'sciences' AS name, 904bd467-6da8-407d-87da-76e124693eb3::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '76676c01-b420-4597-970c-485c60462695'::uuid AS category_uuid, 'manuels-medecine' AS slug, 'médecine' AS name, 904bd467-6da8-407d-87da-76e124693eb3::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'b14b5209-2d10-4332-8ad2-da1ecf3f3c0b'::uuid AS category_uuid, 'manuels-droit' AS slug, 'droit' AS name, 904bd467-6da8-407d-87da-76e124693eb3::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'ed78140b-ba12-468c-ac87-0f704a085337'::uuid AS category_uuid, 'romans' AS slug, 'romans' AS name, 4714c7f2-d015-490e-bf3b-25a245a9f54e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'b7b0fd8e-5b07-44b5-adcb-d2c587469ea6'::uuid AS category_uuid, 'romans-contemporains' AS slug, 'contemporains' AS name, ed78140b-ba12-468c-ac87-0f704a085337::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '84eab677-e101-4ec1-92cf-88c7528f5d87'::uuid AS category_uuid, 'romans-classiques' AS slug, 'classiques' AS name, ed78140b-ba12-468c-ac87-0f704a085337::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '6d05f143-2bf5-49c7-87c0-586d07533b87'::uuid AS category_uuid, 'romans-jeunesse' AS slug, 'jeunesse' AS name, ed78140b-ba12-468c-ac87-0f704a085337::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '47ab7deb-bddf-4801-b890-2077286ade2e'::uuid AS category_uuid, 'bd-mangas' AS slug, 'BD & mangas' AS name, 4714c7f2-d015-490e-bf3b-25a245a9f54e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '4e89b7f2-4fa7-46e1-9f51-dda05b7c6213'::uuid AS category_uuid, 'bd-franco-belge' AS slug, 'BD franco-belge' AS name, 47ab7deb-bddf-4801-b890-2077286ade2e::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT '3392157c-e3d4-4e84-982a-b27ff89f50c7'::uuid AS category_uuid, 'mangas' AS slug, 'mangas' AS name, 47ab7deb-bddf-4801-b890-2077286ade2e::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'fca875c0-a7d5-43e7-bca4-bd7dcfb5f0e5'::uuid AS category_uuid, 'comics' AS slug, 'comics' AS name, 47ab7deb-bddf-4801-b890-2077286ade2e::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'a857009a-fa7b-4a70-a6ee-7bc19678204e'::uuid AS category_uuid, 'encyclopedies' AS slug, 'encyclopédies' AS name, 4714c7f2-d015-490e-bf3b-25a245a9f54e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'aa0f6018-6f97-4883-90e6-a84717342ca4'::uuid AS category_uuid, 'encyclopedies-generalistes' AS slug, 'généralistes' AS name, a857009a-fa7b-4a70-a6ee-7bc19678204e::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'ab3c7600-a503-4155-a029-e0002b31e2b1'::uuid AS category_uuid, 'encyclopedies-specialisees' AS slug, 'spécialisées' AS name, a857009a-fa7b-4a70-a6ee-7bc19678204e::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'dd918ed9-96f7-4e92-b6f1-72a85275274f'::uuid AS category_uuid, 'encyclopedies-enfants' AS slug, 'enfants' AS name, a857009a-fa7b-4a70-a6ee-7bc19678204e::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'dfec520a-5f64-43a5-a7fb-3618aa556fb7'::uuid AS category_uuid, 'documents-pedagogiques' AS slug, 'documents pédagogiques' AS name, 4714c7f2-d015-490e-bf3b-25a245a9f54e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
  UNION ALL
  SELECT 'a2366538-5074-4c64-8bd8-291f34238c86'::uuid AS category_uuid, 'docs-fiches' AS slug, 'fiches' AS name, dfec520a-5f64-43a5-a7fb-3618aa556fb7::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.895Z' AS created_at, '2026-04-03T10:15:31.895Z' AS updated_at
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),
  level = EXCLUDED.level,
  category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),
  updated_at = NOW();

-- Lot 44 terminé: 100 entrées
